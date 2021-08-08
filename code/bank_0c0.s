; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0c0", ROMX[$4000], BANK[$c0]

	halt                                             ; $4000: $76
	ld   h, a                                        ; $4001: $67
	ld   h, a                                        ; $4002: $67
	ld   a, b                                        ; $4003: $78
	sbc  c                                           ; $4004: $99
	xor  d                                           ; $4005: $aa
	sbc  d                                           ; $4006: $9a
	xor  c                                           ; $4007: $a9
	sbc  c                                           ; $4008: $99
	add  a                                           ; $4009: $87
	ld   [hl], a                                     ; $400a: $77
	halt                                             ; $400b: $76
	halt                                             ; $400c: $76
	ld   [hl], a                                     ; $400d: $77
	adc  b                                           ; $400e: $88
	sbc  d                                           ; $400f: $9a
	sbc  c                                           ; $4010: $99
	sbc  d                                           ; $4011: $9a
	xor  c                                           ; $4012: $a9
	adc  b                                           ; $4013: $88
	add  a                                           ; $4014: $87
	ld   [hl], a                                     ; $4015: $77
	ld   h, a                                        ; $4016: $67
	halt                                             ; $4017: $76
	ld   a, b                                        ; $4018: $78
	adc  b                                           ; $4019: $88
	sbc  d                                           ; $401a: $9a
	xor  c                                           ; $401b: $a9
	xor  c                                           ; $401c: $a9
	sbc  c                                           ; $401d: $99
	adc  b                                           ; $401e: $88
	ld   [hl], a                                     ; $401f: $77
	halt                                             ; $4020: $76
	ld   [hl], a                                     ; $4021: $77
	ld   h, a                                        ; $4022: $67
	adc  b                                           ; $4023: $88
	sbc  d                                           ; $4024: $9a
	xor  c                                           ; $4025: $a9
	sbc  c                                           ; $4026: $99
	sbc  c                                           ; $4027: $99
	sbc  b                                           ; $4028: $98
	add  a                                           ; $4029: $87
	ld   h, a                                        ; $402a: $67
	ld   h, a                                        ; $402b: $67
	ld   [hl], a                                     ; $402c: $77
	ld   a, b                                        ; $402d: $78
	sbc  b                                           ; $402e: $98
	sbc  d                                           ; $402f: $9a
	sbc  d                                           ; $4030: $9a
	sbc  b                                           ; $4031: $98
	sbc  b                                           ; $4032: $98
	ld   a, b                                        ; $4033: $78
	ld   h, a                                        ; $4034: $67
	halt                                             ; $4035: $76
	ld   [hl], a                                     ; $4036: $77
	ld   [hl], a                                     ; $4037: $77
	adc  b                                           ; $4038: $88
	sbc  e                                           ; $4039: $9b
	xor  d                                           ; $403a: $aa
	sbc  c                                           ; $403b: $99
	sbc  b                                           ; $403c: $98
	add  a                                           ; $403d: $87
	add  l                                           ; $403e: $85
	ld   [hl], a                                     ; $403f: $77
	ld   h, a                                        ; $4040: $67
	ld   [hl], a                                     ; $4041: $77
	ld   a, d                                        ; $4042: $7a
	adc  c                                           ; $4043: $89
	cp   c                                           ; $4044: $b9
	xor  c                                           ; $4045: $a9
	sbc  b                                           ; $4046: $98
	add  a                                           ; $4047: $87
	halt                                             ; $4048: $76
	ld   d, a                                        ; $4049: $57
	ld   d, [hl]                                     ; $404a: $56
	ld   [hl], a                                     ; $404b: $77
	ld   a, c                                        ; $404c: $79
	xor  c                                           ; $404d: $a9
	cp   d                                           ; $404e: $ba
	sbc  e                                           ; $404f: $9b
	sbc  c                                           ; $4050: $99
	ld   [hl], a                                     ; $4051: $77
	ld   h, a                                        ; $4052: $67
	ld   b, a                                        ; $4053: $47
	ld   h, l                                        ; $4054: $65
	ld   [hl], a                                     ; $4055: $77
	add  a                                           ; $4056: $87
	xor  b                                           ; $4057: $a8
	xor  h                                           ; $4058: $ac
	xor  e                                           ; $4059: $ab
	xor  c                                           ; $405a: $a9
	ld   [hl], a                                     ; $405b: $77
	ld   h, a                                        ; $405c: $67
	ld   b, [hl]                                     ; $405d: $46
	ld   h, h                                        ; $405e: $64
	add  [hl]                                        ; $405f: $86
	sub  a                                           ; $4060: $97
	xor  c                                           ; $4061: $a9
	sbc  h                                           ; $4062: $9c
	xor  e                                           ; $4063: $ab
	sbc  c                                           ; $4064: $99
	ld   [hl], a                                     ; $4065: $77
	ld   h, a                                        ; $4066: $67
	ld   d, l                                        ; $4067: $55
	ld   [hl], e                                     ; $4068: $73
	halt                                             ; $4069: $76
	adc  b                                           ; $406a: $88
	sbc  e                                           ; $406b: $9b
	sbc  l                                           ; $406c: $9d
	xor  e                                           ; $406d: $ab
	xor  c                                           ; $406e: $a9
	halt                                             ; $406f: $76
	ld   h, [hl]                                     ; $4070: $66
	ld   d, e                                        ; $4071: $53
	add  e                                           ; $4072: $83
	ld   [hl], a                                     ; $4073: $77
	ld   a, c                                        ; $4074: $79
	sbc  h                                           ; $4075: $9c
	sbc  l                                           ; $4076: $9d
	cp   d                                           ; $4077: $ba
	xor  c                                           ; $4078: $a9
	add  [hl]                                        ; $4079: $86
	ld   h, l                                        ; $407a: $65
	ld   h, d                                        ; $407b: $62
	add  h                                           ; $407c: $84
	ld   e, b                                        ; $407d: $58
	ld   a, d                                        ; $407e: $7a
	adc  l                                           ; $407f: $8d
	adc  l                                           ; $4080: $8d
	jp   z, $85b8                                    ; $4081: $ca $b8 $85

	ld   h, l                                        ; $4084: $65
	ld   h, d                                        ; $4085: $62
	ld   [hl], l                                     ; $4086: $75
	ld   c, c                                        ; $4087: $49
	ld   l, d                                        ; $4088: $6a
	adc  l                                           ; $4089: $8d
	xor  h                                           ; $408a: $ac
	reti                                             ; $408b: $d9


	ret                                              ; $408c: $c9


	add  l                                           ; $408d: $85
	ld   h, l                                        ; $408e: $65
	ld   h, d                                        ; $408f: $62
	ld   h, l                                        ; $4090: $65
	ld   c, d                                        ; $4091: $4a
	ld   l, e                                        ; $4092: $6b
	adc  l                                           ; $4093: $8d
	xor  h                                           ; $4094: $ac
	add  sp, -$27                                    ; $4095: $e8 $d9
	add  l                                           ; $4097: $85
	ld   d, l                                        ; $4098: $55
	ld   d, d                                        ; $4099: $52
	ld   h, [hl]                                     ; $409a: $66
	ld   a, [hl-]                                    ; $409b: $3a
	ld   l, d                                        ; $409c: $6a
	sbc  l                                           ; $409d: $9d
	xor  e                                           ; $409e: $ab
	jp   hl                                          ; $409f: $e9


	ret  z                                           ; $40a0: $c8

	sub  l                                           ; $40a1: $95
	ld   b, l                                        ; $40a2: $45
	ld   b, d                                        ; $40a3: $42
	ld   h, l                                        ; $40a4: $65
	ld   c, d                                        ; $40a5: $4a
	ld   l, e                                        ; $40a6: $6b
	adc  l                                           ; $40a7: $8d
	xor  e                                           ; $40a8: $ab
	ld   sp, hl                                      ; $40a9: $f9
	rst  $10                                         ; $40aa: $d7
	add  h                                           ; $40ab: $84
	ld   b, l                                        ; $40ac: $45
	ld   b, d                                        ; $40ad: $42
	ld   [hl], h                                     ; $40ae: $74
	ld   e, e                                        ; $40af: $5b
	ld   a, e                                        ; $40b0: $7b
	sbc  a                                           ; $40b1: $9f
	sbc  l                                           ; $40b2: $9d
	add  sp, -$3a                                    ; $40b3: $e8 $c6
	add  e                                           ; $40b5: $83
	ld   b, l                                        ; $40b6: $45
	inc  sp                                          ; $40b7: $33
	ld   [hl], h                                     ; $40b8: $74
	ld   l, d                                        ; $40b9: $6a
	ld   a, h                                        ; $40ba: $7c
	sbc  a                                           ; $40bb: $9f
	adc  a                                           ; $40bc: $8f
	ret  z                                           ; $40bd: $c8

	add  $72                                         ; $40be: $c6 $72
	ld   d, h                                        ; $40c0: $54

jr_0c0_40c1:
	inc  hl                                          ; $40c1: $23
	add  e                                           ; $40c2: $83
	adc  d                                           ; $40c3: $8a
	sbc  h                                           ; $40c4: $9c
	xor  a                                           ; $40c5: $af
	adc  a                                           ; $40c6: $8f
	xor  d                                           ; $40c7: $aa
	or   l                                           ; $40c8: $b5
	ld   [hl], d                                     ; $40c9: $72
	ld   d, e                                        ; $40ca: $53
	dec  h                                           ; $40cb: $25
	ld   [hl], e                                     ; $40cc: $73
	cp   c                                           ; $40cd: $b9
	xor  h                                           ; $40ce: $ac
	adc  $9f                                         ; $40cf: $ce $9f
	adc  e                                           ; $40d1: $8b
	sub  l                                           ; $40d2: $95
	ld   d, c                                        ; $40d3: $51
	ld   h, d                                        ; $40d4: $62
	daa                                              ; $40d5: $27
	ld   d, h                                        ; $40d6: $54
	or   a                                           ; $40d7: $b7
	set  3, h                                        ; $40d8: $cb $dc
	xor  a                                           ; $40da: $af
	ld   l, h                                        ; $40db: $6c
	ld   h, [hl]                                     ; $40dc: $66
	ld   [hl-], a                                    ; $40dd: $32
	ld   h, c                                        ; $40de: $61
	jr   c, @+$49                                    ; $40df: $38 $47

	cp   b                                           ; $40e1: $b8
	jp   c, $ecf9                                    ; $40e2: $da $f9 $ec

	ld   a, h                                        ; $40e5: $7c
	ld   b, a                                        ; $40e6: $47
	inc  d                                           ; $40e7: $14
	ld   b, c                                        ; $40e8: $41
	ld   d, a                                        ; $40e9: $57
	dec  sp                                          ; $40ea: $3b
	sbc  d                                           ; $40eb: $9a
	call z, $f8e8                                    ; $40ec: $cc $e8 $f8
	cp   d                                           ; $40ef: $ba
	ld   b, [hl]                                     ; $40f0: $46
	rla                                              ; $40f1: $17
	ld   [hl+], a                                    ; $40f2: $22
	add  h                                           ; $40f3: $84
	ld   l, h                                        ; $40f4: $6c
	adc  l                                           ; $40f5: $8d
	cp   [hl]                                        ; $40f6: $be
	cp   e                                           ; $40f7: $bb
	or   $c5                                         ; $40f8: $f6 $c5
	ld   d, d                                        ; $40fa: $52
	ld   [hl], $17                                   ; $40fb: $36 $17
	ld   [hl], e                                     ; $40fd: $73
	cp   c                                           ; $40fe: $b9
	cp   h                                           ; $40ff: $bc
	adc  $9f                                         ; $4100: $ce $9f
	sbc  d                                           ; $4102: $9a
	sub  e                                           ; $4103: $93
	ld   d, c                                        ; $4104: $51
	ld   [hl], c                                     ; $4105: $71
	ld   a, [hl+]                                    ; $4106: $2a
	jr   z, jr_0c0_40c1                              ; $4107: $28 $b8

	db   $db                                         ; $4109: $db
	db   $eb                                         ; $410a: $eb
	adc  $6d                                         ; $410b: $ce $6d
	ld   b, l                                        ; $410d: $45
	inc  d                                           ; $410e: $14
	ld   d, c                                        ; $410f: $51
	and  l                                           ; $4110: $a5
	ld   c, l                                        ; $4111: $4d
	ld   a, h                                        ; $4112: $7c
	call c, $f7da                                    ; $4113: $dc $da $f7
	rst  ToBoot                                         ; $4116: $c7
	inc  [hl]                                        ; $4117: $34
	rla                                              ; $4118: $17
	dec  d                                           ; $4119: $15
	sub  d                                           ; $411a: $92
	jp   z, $bead                                    ; $411b: $ca $ad $be

	xor  a                                           ; $411e: $af
	sbc  b                                           ; $411f: $98
	and  d                                           ; $4120: $a2
	ld   d, c                                        ; $4121: $51
	ld   [hl], c                                     ; $4122: $71
	inc  l                                           ; $4123: $2c
	dec  de                                          ; $4124: $1b
	rst  ToBoot                                         ; $4125: $c7
	ld   [$eceb], a                                  ; $4126: $ea $eb $ec
	ld   a, h                                        ; $4129: $7c
	inc  [hl]                                        ; $412a: $34
	dec  d                                           ; $412b: $15
	ld   sp, $7db2                                   ; $412c: $31 $b2 $7d
	ld   l, a                                        ; $412f: $6f
	cp   [hl]                                        ; $4130: $be
	cp   h                                           ; $4131: $bc
	and  $d5                                         ; $4132: $e6 $d5
	ld   b, d                                        ; $4134: $42
	dec  [hl]                                        ; $4135: $35
	dec  de                                          ; $4136: $1b
	ld   b, h                                        ; $4137: $44
	or   $dc                                         ; $4138: $f6 $dc
	db   $dd                                         ; $413a: $dd
	xor  a                                           ; $413b: $af
	ld   l, h                                        ; $413c: $6c
	ld   h, d                                        ; $413d: $62
	inc  sp                                          ; $413e: $33
	ld   d, c                                        ; $413f: $51
	and  l                                           ; $4140: $a5
	ccf                                              ; $4141: $3f
	ld   l, l                                        ; $4142: $6d
	call $f7da                                       ; $4143: $cd $da $f7
	add  $23                                         ; $4146: $c6 $23
	dec  [hl]                                        ; $4148: $35
	dec  de                                          ; $4149: $1b
	ld   d, e                                        ; $414a: $53
	or   $dd                                         ; $414b: $f6 $dd
	adc  $af                                         ; $414d: $ce $af
	ld   a, e                                        ; $414f: $7b
	ld   [hl], d                                     ; $4150: $72
	inc  sp                                          ; $4151: $33
	ld   d, c                                        ; $4152: $51
	or   h                                           ; $4153: $b4
	ccf                                              ; $4154: $3f
	ld   l, l                                        ; $4155: $6d
	call c, $e7da                                    ; $4156: $dc $da $e7
	and  a                                           ; $4159: $a7
	inc  hl                                          ; $415a: $23
	ld   b, e                                        ; $415b: $43
	inc  e                                           ; $415c: $1c
	dec  [hl]                                        ; $415d: $35
	push af                                          ; $415e: $f5
	db   $ec                                         ; $415f: $ec
	call c, Call_0c0_6cce                            ; $4160: $dc $ce $6c
	ld   d, d                                        ; $4163: $52
	dec  h                                           ; $4164: $25
	ld   de, $9ed1                                   ; $4165: $11 $d1 $9e
	ld   e, a                                        ; $4168: $5f
	adc  $bd                                         ; $4169: $ce $bd
	add  $b3                                         ; $416b: $c6 $b3
	inc  hl                                          ; $416d: $23
	ld   h, c                                        ; $416e: $61
	dec  a                                           ; $416f: $3d
	ld   e, $c7                                      ; $4170: $1e $c7
	ld   a, [$fafa]                                  ; $4172: $fa $fa $fa
	adc  d                                           ; $4175: $8a
	inc  de                                          ; $4176: $13
	ld   h, $18                                      ; $4177: $26 $18
	sub  c                                           ; $4179: $91
	rst  $30                                         ; $417a: $f7
	cp   a                                           ; $417b: $bf
	cp   a                                           ; $417c: $bf
	xor  a                                           ; $417d: $af
	ld   a, d                                        ; $417e: $7a
	sub  c                                           ; $417f: $91
	inc  [hl]                                        ; $4180: $34
	ld   hl, $4fd2                                   ; $4181: $21 $d2 $4f
	ld   c, a                                        ; $4184: $4f
	call c, $d6dc                                    ; $4185: $dc $dc $d6
	call nz, Call_0c0_5113                           ; $4188: $c4 $13 $51
	dec  a                                           ; $418b: $3d
	rra                                              ; $418c: $1f
	add  $fb                                         ; $418d: $c6 $fb
	db   $ec                                         ; $418f: $ec
	ld   [$118a], a                                  ; $4190: $ea $8a $11
	ld   b, e                                        ; $4193: $43
	dec  de                                          ; $4194: $1b
	ld   b, c                                        ; $4195: $41
	push af                                          ; $4196: $f5
	rst  JumpTable                                         ; $4197: $df
	cp   [hl]                                        ; $4198: $be
	adc  $6b                                         ; $4199: $ce $6b
	ld   d, c                                        ; $419b: $51
	ld   b, l                                        ; $419c: $45
	inc  de                                          ; $419d: $13
	pop  de                                          ; $419e: $d1
	sbc  $5f                                         ; $419f: $de $5f
	cp   [hl]                                        ; $41a1: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41a2: $cf
	xor  c                                           ; $41a3: $a9
	and  c                                           ; $41a4: $a1
	dec  d                                           ; $41a5: $15
	ld   de, $2fc3                                   ; $41a6: $11 $c3 $2f
	ld   c, [hl]                                     ; $41a9: $4e
	ei                                               ; $41aa: $fb
	db   $dd                                         ; $41ab: $dd
	sub  $b4                                         ; $41ac: $d6 $b4
	inc  d                                           ; $41ae: $14
	ld   d, c                                        ; $41af: $51
	ld   e, e                                        ; $41b0: $5b
	rra                                              ; $41b1: $1f
	or   [hl]                                        ; $41b2: $b6
	db   $fc                                         ; $41b3: $fc
	db   $dd                                         ; $41b4: $dd
	ld   hl, sp-$68                                  ; $41b5: $f8 $98
	ld   [de], a                                     ; $41b7: $12
	ld   h, c                                        ; $41b8: $61
	ld   e, $17                                      ; $41b9: $1e $17
	di                                               ; $41bb: $f3
	rst  $38                                         ; $41bc: $ff
	db   $dd                                         ; $41bd: $dd
	ei                                               ; $41be: $fb
	ld   a, e                                        ; $41bf: $7b
	ld   de, $1b53                                   ; $41c0: $11 $53 $1b
	ld   h, c                                        ; $41c3: $61
	or   $af                                         ; $41c4: $f6 $af
	cp   l                                           ; $41c6: $bd
	xor  $6b                                         ; $41c7: $ee $6b
	ld   d, c                                        ; $41c9: $51
	ld   b, l                                        ; $41ca: $45
	inc  d                                           ; $41cb: $14
	pop  bc                                          ; $41cc: $c1
	db   $fd                                         ; $41cd: $fd
	ld   e, a                                        ; $41ce: $5f
	db   $dd                                         ; $41cf: $dd
	rst  JumpTable                                         ; $41d0: $df
	adc  c                                           ; $41d1: $89
	sub  c                                           ; $41d2: $91
	ld   d, $11                                      ; $41d3: $16 $11
	pop  af                                          ; $41d5: $f1
	ld   e, a                                        ; $41d6: $5f
	ccf                                              ; $41d7: $3f
	ei                                               ; $41d8: $fb
	rst  $28                                         ; $41d9: $ef
	rst  ToBoot                                         ; $41da: $c7
	or   c                                           ; $41db: $b1
	dec  d                                           ; $41dc: $15
	ld   sp, $1fb6                                   ; $41dd: $31 $b6 $1f
	ld   a, c                                        ; $41e0: $79
	db   $fc                                         ; $41e1: $fc
	adc  $e6                                         ; $41e2: $ce $e6
	or   [hl]                                        ; $41e4: $b6
	inc  de                                          ; $41e5: $13
	ld   d, c                                        ; $41e6: $51
	dec  e                                           ; $41e7: $1d
	inc  e                                           ; $41e8: $1c
	db   $f4                                         ; $41e9: $f4
	cp   $cd                                         ; $41ea: $fe $cd
	ld   a, [$118b]                                  ; $41ec: $fa $8b $11
	ld   h, c                                        ; $41ef: $61
	inc  e                                           ; $41f0: $1c
	ld   sp, $cff5                                   ; $41f1: $31 $f5 $cf
	cp   l                                           ; $41f4: $bd
	db   $ed                                         ; $41f5: $ed
	ld   l, e                                        ; $41f6: $6b
	ld   d, c                                        ; $41f7: $51
	ld   b, l                                        ; $41f8: $45
	dec  d                                           ; $41f9: $15
	pop  bc                                          ; $41fa: $c1
	db   $fd                                         ; $41fb: $fd
	ld   e, a                                        ; $41fc: $5f
	db   $dd                                         ; $41fd: $dd
	rst  JumpTable                                         ; $41fe: $df
	adc  d                                           ; $41ff: $8a
	sub  c                                           ; $4200: $91
	ld   d, $11                                      ; $4201: $16 $11
	pop  de                                          ; $4203: $d1
	ld   c, a                                        ; $4204: $4f
	ld   c, [hl]                                     ; $4205: $4e
	db   $fc                                         ; $4206: $fc
	sbc  $c7                                         ; $4207: $de $c7
	jp   $4115                                       ; $4209: $c3 $15 $41


	ld   a, d                                        ; $420c: $7a
	rra                                              ; $420d: $1f
	and  a                                           ; $420e: $a7
	db   $fc                                         ; $420f: $fc
	db   $dd                                         ; $4210: $dd
	ld   hl, sp-$67                                  ; $4211: $f8 $99
	ld   [de], a                                     ; $4213: $12
	ld   h, c                                        ; $4214: $61
	dec  e                                           ; $4215: $1d
	dec  d                                           ; $4216: $15
	db   $f4                                         ; $4217: $f4
	rst  $38                                         ; $4218: $ff
	cp   [hl]                                        ; $4219: $be
	db   $ed                                         ; $421a: $ed
	ld   a, e                                        ; $421b: $7b
	ld   sp, $1753                                   ; $421c: $31 $53 $17
	add  c                                           ; $421f: $81
	ld   a, [$be7f]                                  ; $4220: $fa $7f $be
	rst  $28                                         ; $4223: $ef
	adc  d                                           ; $4224: $8a
	sub  c                                           ; $4225: $91
	ld   [hl], $11                                   ; $4226: $36 $11
	pop  bc                                          ; $4228: $c1
	ld   l, a                                        ; $4229: $6f
	ld   c, a                                        ; $422a: $4f
	ei                                               ; $422b: $fb
	xor  $c7                                         ; $422c: $ee $c7
	or   e                                           ; $422e: $b3
	dec  d                                           ; $422f: $15
	ld   sp, $1f78                                   ; $4230: $31 $78 $1f
	sub  a                                           ; $4233: $97
	db   $fc                                         ; $4234: $fc
	sbc  $f9                                         ; $4235: $de $f9
	cp   b                                           ; $4237: $b8
	inc  de                                          ; $4238: $13
	ld   h, c                                        ; $4239: $61
	dec  e                                           ; $423a: $1d
	ld   d, $f3                                      ; $423b: $16 $f3
	cp   $be                                         ; $423d: $fe $be
	db   $ed                                         ; $423f: $ed
	adc  h                                           ; $4240: $8c
	ld   hl, $1753                                   ; $4241: $21 $53 $17
	add  c                                           ; $4244: $81
	ld   sp, hl                                      ; $4245: $f9
	ld   a, a                                        ; $4246: $7f
	cp   a                                           ; $4247: $bf
	rst  JumpTable                                         ; $4248: $df
	adc  d                                           ; $4249: $8a
	sub  c                                           ; $424a: $91
	ld   b, l                                        ; $424b: $45
	ld   de, $7fb1                                   ; $424c: $11 $b1 $7f
	ccf                                              ; $424f: $3f
	db   $dd                                         ; $4250: $dd
	sbc  $c8                                         ; $4251: $de $c8
	jp   nz, $2116                                   ; $4253: $c2 $16 $21

	sub  l                                           ; $4256: $95
	rra                                              ; $4257: $1f
	ld   l, d                                        ; $4258: $6a
	db   $fc                                         ; $4259: $fc
	db   $ed                                         ; $425a: $ed
	ld   hl, sp-$39                                  ; $425b: $f8 $c7
	dec  d                                           ; $425d: $15
	ld   d, c                                        ; $425e: $51
	dec  hl                                          ; $425f: $2b

jr_0c0_4260:
	dec  de                                          ; $4260: $1b
	call nc, $edfc                                   ; $4261: $d4 $fc $ed
	ld   a, [$139c]                                  ; $4264: $fa $9c $13
	ld   h, c                                        ; $4267: $61
	dec  de                                          ; $4268: $1b
	ld   [de], a                                     ; $4269: $12
	db   $f4                                         ; $426a: $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $426b: $cf
	adc  $fe                                         ; $426c: $ce $fe
	sbc  l                                           ; $426e: $9d
	ld   d, c                                        ; $426f: $51
	ld   h, h                                        ; $4270: $64
	dec  d                                           ; $4271: $15
	ld   [hl], c                                     ; $4272: $71
	add  sp, $7f                                     ; $4273: $e8 $7f
	adc  $df                                         ; $4275: $ce $df
	sbc  e                                           ; $4277: $9b
	sub  c                                           ; $4278: $91
	ld   d, l                                        ; $4279: $55
	ld   de, $6ca1                                   ; $427a: $11 $a1 $6c
	ld   a, $dd                                      ; $427d: $3e $dd
	rst  JumpTable                                         ; $427f: $df
	jp   z, $46c3                                    ; $4280: $ca $c3 $46

	ld   sp, $1e83                                   ; $4283: $31 $83 $1e

Jump_0c0_4286:
	ld   c, d                                        ; $4286: $4a
	db   $ec                                         ; $4287: $ec
	db   $ed                                         ; $4288: $ed
	ld   a, [$26e7]                                  ; $4289: $fa $e7 $26
	ld   d, c                                        ; $428c: $51
	jr   c, jr_0c0_42a8                              ; $428d: $38 $19

	add  l                                           ; $428f: $85
	db   $db                                         ; $4290: $db
	call c, $ccfb                                    ; $4291: $dc $fb $cc
	dec  [hl]                                        ; $4294: $35
	ld   h, d                                        ; $4295: $62
	add  hl, de                                      ; $4296: $19
	ld   [de], a                                     ; $4297: $12
	jp   $ccbb                                       ; $4298: $c3 $bb $cc


	rst  $38                                         ; $429b: $ff
	xor  [hl]                                        ; $429c: $ae
	ld   h, h                                        ; $429d: $64
	ld   [hl], h                                     ; $429e: $74
	dec  d                                           ; $429f: $15
	ld   d, c                                        ; $42a0: $51
	or   l                                           ; $42a1: $b5
	ld   l, l                                        ; $42a2: $6d
	cp   l                                           ; $42a3: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42a4: $cf
	xor  [hl]                                        ; $42a5: $ae
	or   h                                           ; $42a6: $b4

Call_0c0_42a7:
	halt                                             ; $42a7: $76

jr_0c0_42a8:
	ld   de, $5981                                   ; $42a8: $11 $81 $59
	dec  sp                                          ; $42ab: $3b
	xor  h                                           ; $42ac: $ac
	cp   a                                           ; $42ad: $bf
	set  4, [hl]                                     ; $42ae: $cb $e6
	ld   [hl], a                                     ; $42b0: $77
	ld   d, c                                        ; $42b1: $51
	ld   [hl], h                                     ; $42b2: $74
	dec  de                                          ; $42b3: $1b
	jr   c, jr_0c0_4260                              ; $42b4: $38 $aa

	call $eafa                                       ; $42b6: $cd $fa $ea
	ld   h, a                                        ; $42b9: $67
	ld   h, e                                        ; $42ba: $63
	add  hl, hl                                      ; $42bb: $29
	ld   d, $73                                      ; $42bc: $16 $73
	cp   c                                           ; $42be: $b9
	jp   z, $ddfc                                    ; $42bf: $ca $fc $dd

	ld   l, b                                        ; $42c2: $68
	halt                                             ; $42c3: $76
	rla                                              ; $42c4: $17
	ld   sp, $79a2                                   ; $42c5: $31 $a2 $79
	xor  d                                           ; $42c8: $aa
	adc  $af                                         ; $42c9: $ce $af
	sbc  b                                           ; $42cb: $98
	add  a                                           ; $42cc: $87
	ld   b, e                                        ; $42cd: $43
	add  c                                           ; $42ce: $81
	ld   h, l                                        ; $42cf: $65
	add  hl, sp                                      ; $42d0: $39
	adc  d                                           ; $42d1: $8a
	xor  a                                           ; $42d2: $af
	cp   l                                           ; $42d3: $bd
	ret  c                                           ; $42d4: $d8

	sub  a                                           ; $42d5: $97
	add  d                                           ; $42d6: $82
	add  h                                           ; $42d7: $84
	add  hl, de                                      ; $42d8: $19
	daa                                              ; $42d9: $27
	ld   a, c                                        ; $42da: $79
	xor  h                                           ; $42db: $ac
	db   $eb                                         ; $42dc: $eb
	ld   [$9598], a                                  ; $42dd: $ea $98 $95
	ld   c, c                                        ; $42e0: $49
	ld   d, $53                                      ; $42e1: $16 $53
	ld   [hl], a                                     ; $42e3: $77
	sbc  b                                           ; $42e4: $98
	db   $eb                                         ; $42e5: $eb
	call c, $8989                                    ; $42e6: $dc $89 $89
	jr   c, jr_0c0_433d                              ; $42e9: $38 $52

	add  d                                           ; $42eb: $82
	ld   h, [hl]                                     ; $42ec: $66
	adc  c                                           ; $42ed: $89
	xor  h                                           ; $42ee: $ac
	xor  [hl]                                        ; $42ef: $ae
	xor  d                                           ; $42f0: $aa
	sbc  c                                           ; $42f1: $99
	ld   [hl], l                                     ; $42f2: $75
	and  c                                           ; $42f3: $a1
	ld   [hl], l                                     ; $42f4: $75
	ld   b, a                                        ; $42f5: $47
	ld   l, b                                        ; $42f6: $68
	adc  h                                           ; $42f7: $8c
	xor  l                                           ; $42f8: $ad
	ret                                              ; $42f9: $c9


	sbc  b                                           ; $42fa: $98
	sub  l                                           ; $42fb: $95
	and  l                                           ; $42fc: $a5
	ld   b, a                                        ; $42fd: $47
	ld   [hl], $67                                   ; $42fe: $36 $67
	adc  d                                           ; $4300: $8a
	cp   d                                           ; $4301: $ba
	reti                                             ; $4302: $d9


	xor  b                                           ; $4303: $a8
	and  [hl]                                        ; $4304: $a6
	adc  b                                           ; $4305: $88
	scf                                              ; $4306: $37
	ld   b, l                                        ; $4307: $45
	ld   h, a                                        ; $4308: $67
	adc  c                                           ; $4309: $89
	xor  c                                           ; $430a: $a9
	jp   z, $a899                                    ; $430b: $ca $99 $a8

	ld   a, c                                        ; $430e: $79
	ld   b, a                                        ; $430f: $47
	ld   d, l                                        ; $4310: $55
	halt                                             ; $4311: $76
	ld   a, b                                        ; $4312: $78
	xor  d                                           ; $4313: $aa
	cp   d                                           ; $4314: $ba
	xor  c                                           ; $4315: $a9
	sbc  c                                           ; $4316: $99
	ld   a, c                                        ; $4317: $79
	ld   d, a                                        ; $4318: $57
	ld   h, l                                        ; $4319: $65
	halt                                             ; $431a: $76
	ld   a, b                                        ; $431b: $78
	xor  c                                           ; $431c: $a9
	xor  d                                           ; $431d: $aa
	sbc  d                                           ; $431e: $9a
	xor  b                                           ; $431f: $a8
	ld   a, c                                        ; $4320: $79
	ld   d, a                                        ; $4321: $57
	ld   h, [hl]                                     ; $4322: $66
	halt                                             ; $4323: $76
	add  a                                           ; $4324: $87
	sbc  b                                           ; $4325: $98
	xor  d                                           ; $4326: $aa
	sbc  d                                           ; $4327: $9a
	sbc  b                                           ; $4328: $98
	ld   a, b                                        ; $4329: $78
	ld   d, a                                        ; $432a: $57
	ld   h, [hl]                                     ; $432b: $66
	ld   [hl], a                                     ; $432c: $77
	add  a                                           ; $432d: $87
	xor  b                                           ; $432e: $a8
	xor  b                                           ; $432f: $a8
	adc  c                                           ; $4330: $89
	sbc  b                                           ; $4331: $98
	add  a                                           ; $4332: $87
	ld   h, a                                        ; $4333: $67
	ld   h, a                                        ; $4334: $67
	ld   a, b                                        ; $4335: $78
	ld   a, c                                        ; $4336: $79
	adc  b                                           ; $4337: $88
	sbc  c                                           ; $4338: $99
	sbc  c                                           ; $4339: $99
	adc  b                                           ; $433a: $88
	add  a                                           ; $433b: $87
	add  [hl]                                        ; $433c: $86

jr_0c0_433d:
	ld   [hl], a                                     ; $433d: $77
	ld   a, b                                        ; $433e: $78
	adc  b                                           ; $433f: $88
	adc  c                                           ; $4340: $89
	adc  c                                           ; $4341: $89
	adc  b                                           ; $4342: $88
	sub  a                                           ; $4343: $97
	ld   [hl], a                                     ; $4344: $77
	ld   [hl], a                                     ; $4345: $77
	ld   [hl], a                                     ; $4346: $77
	ld   a, c                                        ; $4347: $79
	adc  c                                           ; $4348: $89
	adc  c                                           ; $4349: $89
	adc  b                                           ; $434a: $88
	add  a                                           ; $434b: $87
	add  a                                           ; $434c: $87
	ld   [hl], a                                     ; $434d: $77
	ld   [hl], a                                     ; $434e: $77
	ld   a, b                                        ; $434f: $78
	adc  b                                           ; $4350: $88
	adc  b                                           ; $4351: $88
	adc  b                                           ; $4352: $88
	sbc  b                                           ; $4353: $98
	add  a                                           ; $4354: $87
	ld   [hl], a                                     ; $4355: $77
	ld   [hl], a                                     ; $4356: $77
	ld   a, b                                        ; $4357: $78
	adc  c                                           ; $4358: $89
	adc  b                                           ; $4359: $88
	adc  b                                           ; $435a: $88
	sbc  b                                           ; $435b: $98
	add  a                                           ; $435c: $87
	ld   [hl], a                                     ; $435d: $77
	ld   [hl], a                                     ; $435e: $77
	ld   a, b                                        ; $435f: $78
	adc  b                                           ; $4360: $88
	adc  b                                           ; $4361: $88
	adc  c                                           ; $4362: $89
	adc  b                                           ; $4363: $88
	add  a                                           ; $4364: $87
	ld   [hl], a                                     ; $4365: $77
	ld   a, b                                        ; $4366: $78
	adc  b                                           ; $4367: $88
	sbc  b                                           ; $4368: $98
	sbc  c                                           ; $4369: $99
	adc  b                                           ; $436a: $88
	adc  b                                           ; $436b: $88
	add  a                                           ; $436c: $87
	ld   [hl], a                                     ; $436d: $77
	ld   a, b                                        ; $436e: $78
	adc  b                                           ; $436f: $88
	sbc  c                                           ; $4370: $99
	sbc  c                                           ; $4371: $99
	sbc  b                                           ; $4372: $98
	adc  b                                           ; $4373: $88
	add  a                                           ; $4374: $87

Jump_0c0_4375:
	add  a                                           ; $4375: $87
	adc  b                                           ; $4376: $88
	adc  b                                           ; $4377: $88
	adc  b                                           ; $4378: $88
	sbc  b                                           ; $4379: $98
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

Jump_0c0_4385:
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

Call_0c0_4394:
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

Call_0c0_43a7:
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

Jump_0c0_4475:
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

Jump_0c0_4485:
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
	adc  c                                           ; $4495: $89
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
	add  a                                           ; $44c7: $87
	adc  b                                           ; $44c8: $88
	adc  b                                           ; $44c9: $88
	adc  b                                           ; $44ca: $88
	adc  c                                           ; $44cb: $89
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
	sbc  b                                           ; $44d9: $98
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
	sbc  b                                           ; $44f2: $98
	adc  b                                           ; $44f3: $88
	adc  b                                           ; $44f4: $88
	adc  b                                           ; $44f5: $88
	sbc  b                                           ; $44f6: $98
	adc  b                                           ; $44f7: $88
	adc  b                                           ; $44f8: $88
	adc  b                                           ; $44f9: $88
	ld   a, b                                        ; $44fa: $78
	sub  a                                           ; $44fb: $97
	sbc  b                                           ; $44fc: $98
	sbc  b                                           ; $44fd: $98
	adc  b                                           ; $44fe: $88
	sbc  c                                           ; $44ff: $99
	ld   a, b                                        ; $4500: $78
	adc  b                                           ; $4501: $88
	adc  b                                           ; $4502: $88
	adc  b                                           ; $4503: $88
	sbc  b                                           ; $4504: $98
	adc  b                                           ; $4505: $88
	adc  b                                           ; $4506: $88
	adc  c                                           ; $4507: $89
	adc  b                                           ; $4508: $88
	adc  b                                           ; $4509: $88
	adc  c                                           ; $450a: $89
	adc  b                                           ; $450b: $88
	sbc  b                                           ; $450c: $98
	adc  b                                           ; $450d: $88
	sbc  b                                           ; $450e: $98
	adc  b                                           ; $450f: $88
	adc  b                                           ; $4510: $88
	sub  a                                           ; $4511: $97
	adc  c                                           ; $4512: $89
	adc  b                                           ; $4513: $88
	adc  c                                           ; $4514: $89
	adc  b                                           ; $4515: $88
	adc  c                                           ; $4516: $89
	adc  b                                           ; $4517: $88
	adc  c                                           ; $4518: $89
	adc  b                                           ; $4519: $88
	sbc  b                                           ; $451a: $98
	adc  b                                           ; $451b: $88
	adc  b                                           ; $451c: $88
	adc  c                                           ; $451d: $89
	adc  c                                           ; $451e: $89
	ld   a, c                                        ; $451f: $79
	ld   a, b                                        ; $4520: $78
	sub  a                                           ; $4521: $97
	sbc  b                                           ; $4522: $98
	sbc  b                                           ; $4523: $98
	sbc  b                                           ; $4524: $98
	ld   a, c                                        ; $4525: $79
	adc  c                                           ; $4526: $89
	adc  b                                           ; $4527: $88
	add  a                                           ; $4528: $87
	adc  b                                           ; $4529: $88
	ld   [hl], a                                     ; $452a: $77
	add  a                                           ; $452b: $87
	ld   a, b                                        ; $452c: $78
	ld   a, b                                        ; $452d: $78
	sbc  c                                           ; $452e: $99
	sbc  b                                           ; $452f: $98
	adc  b                                           ; $4530: $88
	ld   [hl], a                                     ; $4531: $77
	halt                                             ; $4532: $76
	ld   [hl], a                                     ; $4533: $77
	ld   [hl], a                                     ; $4534: $77
	sbc  c                                           ; $4535: $99
	xor  e                                           ; $4536: $ab
	xor  c                                           ; $4537: $a9
	sub  a                                           ; $4538: $97
	ld   h, a                                        ; $4539: $67
	halt                                             ; $453a: $76
	ld   [hl], a                                     ; $453b: $77
	ld   a, c                                        ; $453c: $79
	xor  c                                           ; $453d: $a9
	cp   d                                           ; $453e: $ba
	xor  b                                           ; $453f: $a8
	add  [hl]                                        ; $4540: $86
	ld   h, a                                        ; $4541: $67
	ld   d, [hl]                                     ; $4542: $56
	ld   h, [hl]                                     ; $4543: $66
	sbc  d                                           ; $4544: $9a
	cp   e                                           ; $4545: $bb
	jp   z, Jump_0c0_5698                            ; $4546: $ca $98 $56

	ld   d, h                                        ; $4549: $54
	ld   h, h                                        ; $454a: $64
	ld   e, c                                        ; $454b: $59
	xor  d                                           ; $454c: $aa
	call $95bb                                       ; $454d: $cd $bb $95
	ld   d, l                                        ; $4550: $55
	inc  [hl]                                        ; $4551: $34
	ld   b, h                                        ; $4552: $44
	ld   a, e                                        ; $4553: $7b
	cp   h                                           ; $4554: $bc
	db   $fd                                         ; $4555: $fd
	cp   e                                           ; $4556: $bb
	ld   [hl], h                                     ; $4557: $74
	ld   b, e                                        ; $4558: $43
	inc  hl                                          ; $4559: $23
	dec  [hl]                                        ; $455a: $35
	adc  h                                           ; $455b: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $455c: $cf
	cp   $d9                                         ; $455d: $fe $d9
	ld   h, e                                        ; $455f: $63
	ld   sp, $2711                                   ; $4560: $31 $11 $27
	sbc  [hl]                                        ; $4563: $9e
	rst  $28                                         ; $4564: $ef
	rst  $38                                         ; $4565: $ff
	add  sp, $52                                     ; $4566: $e8 $52
	ld   de, $2711                                   ; $4568: $11 $11 $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $456b: $cf
	rst  $38                                         ; $456c: $ff
	rst  $38                                         ; $456d: $ff
	ret  c                                           ; $456e: $d8

	ld   [hl-], a                                    ; $456f: $32
	ld   de, $3611                                   ; $4570: $11 $11 $36
	rst  $28                                         ; $4573: $ef
	rst  $38                                         ; $4574: $ff
	rst  $38                                         ; $4575: $ff
	ret  c                                           ; $4576: $d8

	ld   hl, $1111                                   ; $4577: $21 $11 $11
	daa                                              ; $457a: $27
	rst  JumpTable                                         ; $457b: $df
	rst  $38                                         ; $457c: $ff
	rst  $38                                         ; $457d: $ff
	ld   hl, sp+$11                                  ; $457e: $f8 $11
	ld   de, $1611                                   ; $4580: $11 $11 $16
	rst  $28                                         ; $4583: $ef
	rst  $38                                         ; $4584: $ff
	rst  $38                                         ; $4585: $ff
	ld   a, [$1121]                                  ; $4586: $fa $21 $11
	ld   de, $df16                                   ; $4589: $11 $16 $df
	rst  $38                                         ; $458c: $ff
	rst  $38                                         ; $458d: $ff
	ei                                               ; $458e: $fb
	ld   b, c                                        ; $458f: $41
	ld   de, $1611                                   ; $4590: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4593: $cf
	rst  $38                                         ; $4594: $ff
	rst  $38                                         ; $4595: $ff
	ei                                               ; $4596: $fb
	ld   d, c                                        ; $4597: $51
	ld   de, $1711                                   ; $4598: $11 $11 $17
	rst  JumpTable                                         ; $459b: $df
	rst  $38                                         ; $459c: $ff
	rst  $38                                         ; $459d: $ff
	ei                                               ; $459e: $fb
	ld   b, c                                        ; $459f: $41
	ld   de, $1711                                   ; $45a0: $11 $11 $17
	rst  $38                                         ; $45a3: $ff
	rst  $38                                         ; $45a4: $ff
	rst  $38                                         ; $45a5: $ff
	ei                                               ; $45a6: $fb
	ld   sp, $1111                                   ; $45a7: $31 $11 $11
	rla                                              ; $45aa: $17
	rst  $38                                         ; $45ab: $ff
	rst  $38                                         ; $45ac: $ff
	rst  $38                                         ; $45ad: $ff
	ld   a, [$1131]                                  ; $45ae: $fa $31 $11
	ld   de, $ff18                                   ; $45b1: $11 $18 $ff
	rst  $38                                         ; $45b4: $ff
	rst  $38                                         ; $45b5: $ff
	ld   a, [$1131]                                  ; $45b6: $fa $31 $11
	ld   de, $ff18                                   ; $45b9: $11 $18 $ff
	rst  $38                                         ; $45bc: $ff
	db   $fd                                         ; $45bd: $fd
	ld   a, [$1121]                                  ; $45be: $fa $21 $11
	ld   de, $ff1a                                   ; $45c1: $11 $1a $ff
	rst  $38                                         ; $45c4: $ff
	ei                                               ; $45c5: $fb
	add  sp, $11                                     ; $45c6: $e8 $11
	ld   de, $1e11                                   ; $45c8: $11 $11 $1e
	rst  $38                                         ; $45cb: $ff
	rst  $38                                         ; $45cc: $ff
	ld   a, [$11d4]                                  ; $45cd: $fa $d4 $11
	ld   de, $4f11                                   ; $45d0: $11 $11 $4f
	rst  $38                                         ; $45d3: $ff
	rst  $38                                         ; $45d4: $ff
	ld   sp, hl                                      ; $45d5: $f9
	pop  bc                                          ; $45d6: $c1
	ld   de, $3111                                   ; $45d7: $11 $11 $31
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45da: $cf
	rst  $38                                         ; $45db: $ff
	rst  $38                                         ; $45dc: $ff
	sbc  d                                           ; $45dd: $9a
	ld   [hl], c                                     ; $45de: $71
	ld   de, $2611                                   ; $45df: $11 $11 $26
	rst  $38                                         ; $45e2: $ff
	rst  $38                                         ; $45e3: $ff
	rst  $38                                         ; $45e4: $ff
	ld   l, d                                        ; $45e5: $6a
	ld   de, $1211                                   ; $45e6: $11 $11 $12
	ld   a, a                                        ; $45e9: $7f
	rst  $38                                         ; $45ea: $ff
	rst  $38                                         ; $45eb: $ff
	rst  $30                                         ; $45ec: $f7
	add  c                                           ; $45ed: $81
	ld   de, $4411                                   ; $45ee: $11 $11 $44
	rst  $38                                         ; $45f1: $ff
	rst  $38                                         ; $45f2: $ff
	rst  $38                                         ; $45f3: $ff
	ld   d, a                                        ; $45f4: $57
	ld   d, c                                        ; $45f5: $51
	ld   de, $5f14                                   ; $45f6: $11 $14 $5f
	rst  $38                                         ; $45f9: $ff
	rst  $38                                         ; $45fa: $ff
	or   $65                                         ; $45fb: $f6 $65
	ld   de, $5611                                   ; $45fd: $11 $11 $56
	rst  $38                                         ; $4600: $ff
	rst  $38                                         ; $4601: $ff
	rst  $38                                         ; $4602: $ff
	halt                                             ; $4603: $76
	ld   h, c                                        ; $4604: $61
	ld   de, $8c15                                   ; $4605: $11 $15 $8c
	rst  $38                                         ; $4608: $ff
	rst  $38                                         ; $4609: $ff
	ld   sp, hl                                      ; $460a: $f9
	add  hl, sp                                      ; $460b: $39
	ld   de, $5811                                   ; $460c: $11 $11 $58
	xor  a                                           ; $460f: $af
	rst  $38                                         ; $4610: $ff

Jump_0c0_4611:
	rst  $38                                         ; $4611: $ff
	pop  de                                          ; $4612: $d1
	and  e                                           ; $4613: $a3
	ld   de, $7a11                                   ; $4614: $11 $11 $7a
	rst  $38                                         ; $4617: $ff
	rst  $38                                         ; $4618: $ff
	rst  $38                                         ; $4619: $ff
	ld   d, a                                        ; $461a: $57
	add  c                                           ; $461b: $81
	ld   de, $ba13                                   ; $461c: $11 $13 $ba
	rst  $38                                         ; $461f: $ff
	rst  $38                                         ; $4620: $ff
	db   $fd                                         ; $4621: $fd
	jr   c, jr_0c0_4665                              ; $4622: $38 $41

	ld   de, $ab16                                   ; $4624: $11 $16 $ab
	rst  $38                                         ; $4627: $ff
	rst  $28                                         ; $4628: $ef
	ld   a, [$3139]                                  ; $4629: $fa $39 $31
	ld   de, $ac16                                   ; $462c: $11 $16 $ac
	rst  $38                                         ; $462f: $ff
	rst  $38                                         ; $4630: $ff
	ld   a, [$2148]                                  ; $4631: $fa $48 $21
	ld   de, $ba16                                   ; $4634: $11 $16 $ba
	rst  $38                                         ; $4637: $ff
	cp   $fd                                         ; $4638: $fe $fd
	ld   c, c                                        ; $463a: $49
	ld   d, c                                        ; $463b: $51
	ld   de, $ba11                                   ; $463c: $11 $11 $ba
	rst  $38                                         ; $463f: $ff
	rst  $38                                         ; $4640: $ff
	rst  $38                                         ; $4641: $ff
	ld   h, l                                        ; $4642: $65
	ld   [hl], c                                     ; $4643: $71
	ld   de, $7b11                                   ; $4644: $11 $11 $7b
	cp   a                                           ; $4647: $bf
	rst  $38                                         ; $4648: $ff
	rst  $38                                         ; $4649: $ff
	call nc, $1174                                   ; $464a: $d4 $74 $11
	ld   de, $be0b                                   ; $464d: $11 $0b $be
	rst  $38                                         ; $4650: $ff
	db   $fd                                         ; $4651: $fd
	ld   hl, sp+$47                                  ; $4652: $f8 $47
	ld   hl, $1311                                   ; $4654: $21 $11 $13
	jp   z, $ffff                                    ; $4657: $ca $ff $ff

	adc  $65                                         ; $465a: $ce $65
	ld   h, d                                        ; $465c: $62
	ld   de, $3b11                                   ; $465d: $11 $11 $3b
	xor  [hl]                                        ; $4660: $ae
	rst  $38                                         ; $4661: $ff
	cp   $e8                                         ; $4662: $fe $e8
	ld   b, l                                        ; $4664: $45

jr_0c0_4665:
	ld   sp, $1111                                   ; $4665: $31 $11 $11
	cp   h                                           ; $4668: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4669: $cf
	rst  $38                                         ; $466a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $466b: $cf
	and  e                                           ; $466c: $a3
	ld   h, l                                        ; $466d: $65
	ld   de, $1811                                   ; $466e: $11 $11 $18
	db   $eb                                         ; $4671: $eb
	rst  $28                                         ; $4672: $ef
	ei                                               ; $4673: $fb
	sbc  $64                                         ; $4674: $de $64
	ld   [hl], e                                     ; $4676: $73
	ld   de, $5c11                                   ; $4677: $11 $11 $5c
	call $dcff                                       ; $467a: $cd $ff $dc
	reti                                             ; $467d: $d9


	ld   h, a                                        ; $467e: $67
	ld   sp, $1111                                   ; $467f: $31 $11 $11
	adc  h                                           ; $4682: $8c
	cp   a                                           ; $4683: $bf

Call_0c0_4684:
	rst  $38                                         ; $4684: $ff
	call z, Call_0c0_65d6                            ; $4685: $cc $d6 $65
	ld   sp, $1211                                   ; $4688: $31 $11 $12
	adc  h                                           ; $468b: $8c
	rst  $28                                         ; $468c: $ef
	rst  $38                                         ; $468d: $ff
	call Call_0c0_55a6                               ; $468e: $cd $a6 $55
	ld   sp, $1411                                   ; $4691: $31 $11 $14
	cp   l                                           ; $4694: $bd
	rst  $28                                         ; $4695: $ef
	rst  $38                                         ; $4696: $ff
	call Call_0c0_6496                               ; $4697: $cd $96 $64
	ld   sp, $1511                                   ; $469a: $31 $11 $15
	xor  l                                           ; $469d: $ad
	rst  $28                                         ; $469e: $ef
	rst  $38                                         ; $469f: $ff
	cp   h                                           ; $46a0: $bc
	sub  l                                           ; $46a1: $95
	ld   d, h                                        ; $46a2: $54
	ld   hl, $2314                                   ; $46a3: $21 $14 $23
	xor  h                                           ; $46a6: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46a7: $cf
	rst  $38                                         ; $46a8: $ff
	xor  e                                           ; $46a9: $ab
	or   [hl]                                        ; $46aa: $b6
	ld   b, h                                        ; $46ab: $44
	ld   sp, $3213                                   ; $46ac: $31 $13 $32
	xor  l                                           ; $46af: $ad
	cp   a                                           ; $46b0: $bf
	rst  $38                                         ; $46b1: $ff
	cp   h                                           ; $46b2: $bc
	or   [hl]                                        ; $46b3: $b6
	ld   h, l                                        ; $46b4: $65
	ld   sp, $2313                                   ; $46b5: $31 $13 $23
	adc  l                                           ; $46b8: $8d
	adc  $ff                                         ; $46b9: $ce $ff
	cp   h                                           ; $46bb: $bc
	rst  ToBoot                                         ; $46bc: $c7
	ld   d, l                                        ; $46bd: $55
	ld   sp, $3212                                   ; $46be: $31 $12 $32
	ld   l, l                                        ; $46c1: $6d
	sbc  $ff                                         ; $46c2: $de $ff
	jp   hl                                          ; $46c4: $e9


	and  a                                           ; $46c5: $a7
	ld   d, h                                        ; $46c6: $54
	ld   b, e                                        ; $46c7: $43
	inc  de                                          ; $46c8: $13
	ld   b, d                                        ; $46c9: $42
	ld   a, [hl-]                                    ; $46ca: $3a
	jp   z, $e9ff                                    ; $46cb: $ca $ff $e9

	jp   z, Jump_0c0_6546                            ; $46ce: $ca $46 $65

	ld   de, $2731                                   ; $46d1: $11 $31 $27
	db   $db                                         ; $46d4: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46d5: $cf
	ei                                               ; $46d6: $fb
	xor  e                                           ; $46d7: $ab
	or   l                                           ; $46d8: $b5
	ld   h, [hl]                                     ; $46d9: $66
	ld   hl, $1314                                   ; $46da: $21 $14 $13
	call z, $fecf                                    ; $46dd: $cc $cf $fe
	xor  h                                           ; $46e0: $ac
	sub  a                                           ; $46e1: $97
	halt                                             ; $46e2: $76
	ld   d, d                                        ; $46e3: $52
	ld   [de], a                                     ; $46e4: $12
	ld   [hl+], a                                    ; $46e5: $22
	ld   l, h                                        ; $46e6: $6c
	adc  $ff                                         ; $46e7: $ce $ff
	cp   c                                           ; $46e9: $b9
	xor  b                                           ; $46ea: $a8
	ld   [hl], a                                     ; $46eb: $77
	ld   h, h                                        ; $46ec: $64
	ld   [de], a                                     ; $46ed: $12
	inc  hl                                          ; $46ee: $23
	ld   c, c                                        ; $46ef: $49
	call c, $dbff                                    ; $46f0: $dc $ff $db
	sbc  e                                           ; $46f3: $9b
	ld   [hl], a                                     ; $46f4: $77
	add  l                                           ; $46f5: $85
	ld   [hl-], a                                    ; $46f6: $32
	ld   [de], a                                     ; $46f7: $12
	dec  [hl]                                        ; $46f8: $35
	sbc  h                                           ; $46f9: $9c
	adc  $fd                                         ; $46fa: $ce $fd
	sbc  d                                           ; $46fc: $9a
	cp   c                                           ; $46fd: $b9
	adc  b                                           ; $46fe: $88
	ld   [hl], d                                     ; $46ff: $72
	ld   [de], a                                     ; $4700: $12
	inc  sp                                          ; $4701: $33
	ld   c, d                                        ; $4702: $4a
	db   $ec                                         ; $4703: $ec
	rst  JumpTable                                         ; $4704: $df
	reti                                             ; $4705: $d9


	xor  h                                           ; $4706: $ac
	add  a                                           ; $4707: $87
	add  [hl]                                        ; $4708: $86
	ld   hl, $3523                                   ; $4709: $21 $23 $35
	sbc  h                                           ; $470c: $9c
	db   $dd                                         ; $470d: $dd
	xor  $98                                         ; $470e: $ee $98
	xor  b                                           ; $4710: $a8
	ld   [hl], a                                     ; $4711: $77
	add  l                                           ; $4712: $85
	ld   [hl+], a                                    ; $4713: $22
	dec  [hl]                                        ; $4714: $35
	ld   b, [hl]                                     ; $4715: $46
	cp   [hl]                                        ; $4716: $be
	cp   l                                           ; $4717: $bd
	ld   [$a88a], a                                  ; $4718: $ea $8a $a8
	adc  b                                           ; $471b: $88
	ld   h, h                                        ; $471c: $64
	ld   [hl+], a                                    ; $471d: $22
	ld   b, e                                        ; $471e: $43
	ld   e, c                                        ; $471f: $59
	call $c9cd                                       ; $4720: $cd $cd $c9
	sbc  d                                           ; $4723: $9a
	and  a                                           ; $4724: $a7
	ld   a, c                                        ; $4725: $79
	ld   d, e                                        ; $4726: $53
	inc  hl                                          ; $4727: $23
	inc  sp                                          ; $4728: $33
	ld   l, l                                        ; $4729: $6d
	jp   hl                                          ; $472a: $e9


	db   $dd                                         ; $472b: $dd
	xor  b                                           ; $472c: $a8
	cp   d                                           ; $472d: $ba
	ld   a, c                                        ; $472e: $79
	sub  [hl]                                        ; $472f: $96
	ld   [hl-], a                                    ; $4730: $32
	inc  hl                                          ; $4731: $23
	inc  [hl]                                        ; $4732: $34
	sbc  l                                           ; $4733: $9d
	call c, $99ed                                    ; $4734: $dc $ed $99
	cp   c                                           ; $4737: $b9
	ld   a, b                                        ; $4738: $78
	add  l                                           ; $4739: $85
	ld   [hl-], a                                    ; $473a: $32
	inc  [hl]                                        ; $473b: $34
	ld   b, h                                        ; $473c: $44
	xor  [hl]                                        ; $473d: $ae
	sbc  h                                           ; $473e: $9c
	db   $ec                                         ; $473f: $ec
	adc  c                                           ; $4740: $89
	ret  z                                           ; $4741: $c8

	adc  b                                           ; $4742: $88
	add  [hl]                                        ; $4743: $86
	inc  hl                                          ; $4744: $23
	ld   b, h                                        ; $4745: $44
	dec  [hl]                                        ; $4746: $35
	xor  h                                           ; $4747: $ac
	cp   h                                           ; $4748: $bc
	db   $ec                                         ; $4749: $ec
	sbc  d                                           ; $474a: $9a
	ret                                              ; $474b: $c9


	adc  c                                           ; $474c: $89
	ld   [hl], h                                     ; $474d: $74
	ld   [hl-], a                                    ; $474e: $32
	inc  hl                                          ; $474f: $23
	ld   b, l                                        ; $4750: $45
	xor  [hl]                                        ; $4751: $ae
	call z, $aaec                                    ; $4752: $cc $ec $aa
	cp   b                                           ; $4755: $b8
	adc  b                                           ; $4756: $88
	ld   [hl], l                                     ; $4757: $75
	inc  sp                                          ; $4758: $33
	inc  [hl]                                        ; $4759: $34
	ld   d, [hl]                                     ; $475a: $56
	xor  l                                           ; $475b: $ad
	xor  h                                           ; $475c: $ac
	db   $ed                                         ; $475d: $ed
	adc  d                                           ; $475e: $8a
	ret  z                                           ; $475f: $c8

	adc  c                                           ; $4760: $89
	sub  l                                           ; $4761: $95
	inc  sp                                          ; $4762: $33
	inc  [hl]                                        ; $4763: $34
	ld   b, l                                        ; $4764: $45
	adc  h                                           ; $4765: $8c
	xor  e                                           ; $4766: $ab
	db   $fc                                         ; $4767: $fc
	sbc  d                                           ; $4768: $9a
	ret  z                                           ; $4769: $c8

	adc  b                                           ; $476a: $88
	add  [hl]                                        ; $476b: $86
	inc  [hl]                                        ; $476c: $34
	inc  sp                                          ; $476d: $33
	ld   b, l                                        ; $476e: $45
	ld   a, e                                        ; $476f: $7b
	cp   d                                           ; $4770: $ba
	sbc  $99                                         ; $4771: $de $99
	cp   c                                           ; $4773: $b9
	adc  b                                           ; $4774: $88
	and  a                                           ; $4775: $a7
	ld   d, h                                        ; $4776: $54
	inc  [hl]                                        ; $4777: $34
	ld   b, h                                        ; $4778: $44
	ld   e, e                                        ; $4779: $5b
	ret                                              ; $477a: $c9


	call $bbb7                                       ; $477b: $cd $b7 $bb
	ld   a, c                                        ; $477e: $79
	adc  b                                           ; $477f: $88
	ld   b, h                                        ; $4780: $44
	ld   d, d                                        ; $4781: $52
	ld   b, l                                        ; $4782: $45
	ld   d, [hl]                                     ; $4783: $56
	cp   e                                           ; $4784: $bb
	xor  [hl]                                        ; $4785: $ae
	ld   [$a79c], a                                  ; $4786: $ea $9c $a7
	sbc  c                                           ; $4789: $99
	ld   [hl], h                                     ; $478a: $74
	ld   d, h                                        ; $478b: $54
	inc  hl                                          ; $478c: $23
	ld   d, [hl]                                     ; $478d: $56
	adc  e                                           ; $478e: $8b
	call z, $99dc                                    ; $478f: $cc $dc $99
	xor  c                                           ; $4792: $a9
	ld   [hl], a                                     ; $4793: $77
	sub  l                                           ; $4794: $95
	ld   b, l                                        ; $4795: $45
	ld   b, h                                        ; $4796: $44
	ld   d, a                                        ; $4797: $57
	ld   e, d                                        ; $4798: $5a
	jp   z, $b9cc                                    ; $4799: $ca $cc $b9

	xor  d                                           ; $479c: $aa
	ld   a, b                                        ; $479d: $78
	adc  b                                           ; $479e: $88
	ld   h, l                                        ; $479f: $65
	ld   h, h                                        ; $47a0: $64
	ld   d, l                                        ; $47a1: $55
	ld   h, a                                        ; $47a2: $67
	xor  e                                           ; $47a3: $ab
	adc  h                                           ; $47a4: $8c
	jp   z, $a78a                                    ; $47a5: $ca $8a $a7

	sbc  c                                           ; $47a8: $99
	add  l                                           ; $47a9: $85
	ld   h, a                                        ; $47aa: $67
	ld   b, l                                        ; $47ab: $45
	ld   h, [hl]                                     ; $47ac: $66
	ld   e, c                                        ; $47ad: $59
	cp   b                                           ; $47ae: $b8
	xor  e                                           ; $47af: $ab
	cp   c                                           ; $47b0: $b9
	xor  d                                           ; $47b1: $aa
	adc  b                                           ; $47b2: $88
	adc  b                                           ; $47b3: $88
	ld   h, [hl]                                     ; $47b4: $66
	ld   [hl], l                                     ; $47b5: $75
	ld   d, [hl]                                     ; $47b6: $56
	ld   h, l                                        ; $47b7: $65
	adc  d                                           ; $47b8: $8a
	adc  c                                           ; $47b9: $89
	cp   d                                           ; $47ba: $ba
	sbc  d                                           ; $47bb: $9a
	and  a                                           ; $47bc: $a7
	adc  b                                           ; $47bd: $88
	add  a                                           ; $47be: $87
	ld   [hl], a                                     ; $47bf: $77
	ld   h, [hl]                                     ; $47c0: $66
	ld   h, [hl]                                     ; $47c1: $66
	ld   d, [hl]                                     ; $47c2: $56
	cp   c                                           ; $47c3: $b9
	adc  e                                           ; $47c4: $8b
	cp   c                                           ; $47c5: $b9
	adc  e                                           ; $47c6: $8b
	sub  a                                           ; $47c7: $97
	sbc  c                                           ; $47c8: $99
	add  [hl]                                        ; $47c9: $86
	add  a                                           ; $47ca: $87
	ld   h, [hl]                                     ; $47cb: $66
	ld   [hl], a                                     ; $47cc: $77
	ld   l, b                                        ; $47cd: $68
	xor  c                                           ; $47ce: $a9
	adc  c                                           ; $47cf: $89
	xor  c                                           ; $47d0: $a9
	sbc  d                                           ; $47d1: $9a
	add  a                                           ; $47d2: $87
	ld   a, b                                        ; $47d3: $78
	ld   [hl], a                                     ; $47d4: $77
	sbc  b                                           ; $47d5: $98
	ld   [hl], a                                     ; $47d6: $77
	add  a                                           ; $47d7: $87
	ld   a, b                                        ; $47d8: $78
	sbc  b                                           ; $47d9: $98
	ld   a, b                                        ; $47da: $78
	sub  a                                           ; $47db: $97
	ld   a, b                                        ; $47dc: $78
	add  a                                           ; $47dd: $87
	adc  c                                           ; $47de: $89
	adc  b                                           ; $47df: $88
	adc  b                                           ; $47e0: $88
	adc  b                                           ; $47e1: $88
	sbc  b                                           ; $47e2: $98
	add  a                                           ; $47e3: $87
	adc  b                                           ; $47e4: $88
	ld   [hl], a                                     ; $47e5: $77
	add  a                                           ; $47e6: $87
	ld   a, b                                        ; $47e7: $78
	add  a                                           ; $47e8: $87
	adc  b                                           ; $47e9: $88
	adc  b                                           ; $47ea: $88
	sbc  c                                           ; $47eb: $99
	sbc  c                                           ; $47ec: $99
	sbc  b                                           ; $47ed: $98
	sbc  b                                           ; $47ee: $98
	ld   [hl], a                                     ; $47ef: $77
	ld   [hl], a                                     ; $47f0: $77
	ld   [hl], a                                     ; $47f1: $77
	ld   [hl], a                                     ; $47f2: $77
	ld   a, b                                        ; $47f3: $78
	adc  c                                           ; $47f4: $89
	sbc  b                                           ; $47f5: $98
	adc  c                                           ; $47f6: $89
	sbc  c                                           ; $47f7: $99
	sbc  c                                           ; $47f8: $99
	adc  c                                           ; $47f9: $89
	adc  b                                           ; $47fa: $88
	ld   [hl], a                                     ; $47fb: $77
	ld   [hl], a                                     ; $47fc: $77
	ld   [hl], a                                     ; $47fd: $77
	ld   [hl], a                                     ; $47fe: $77
	ld   [hl], a                                     ; $47ff: $77
	ld   a, b                                        ; $4800: $78
	adc  c                                           ; $4801: $89
	adc  c                                           ; $4802: $89
	sbc  c                                           ; $4803: $99
	sbc  c                                           ; $4804: $99
	sbc  b                                           ; $4805: $98
	adc  b                                           ; $4806: $88
	add  a                                           ; $4807: $87
	ld   [hl], a                                     ; $4808: $77
	ld   h, a                                        ; $4809: $67
	ld   [hl], a                                     ; $480a: $77
	ld   a, b                                        ; $480b: $78
	adc  c                                           ; $480c: $89
	adc  c                                           ; $480d: $89
	sbc  c                                           ; $480e: $99
	xor  d                                           ; $480f: $aa
	sbc  c                                           ; $4810: $99
	adc  c                                           ; $4811: $89
	add  a                                           ; $4812: $87
	ld   [hl], a                                     ; $4813: $77
	ld   [hl], a                                     ; $4814: $77
	ld   [hl], a                                     ; $4815: $77
	ld   [hl], a                                     ; $4816: $77
	ld   a, b                                        ; $4817: $78
	adc  b                                           ; $4818: $88
	sbc  b                                           ; $4819: $98
	sbc  c                                           ; $481a: $99
	xor  c                                           ; $481b: $a9
	sbc  b                                           ; $481c: $98
	adc  b                                           ; $481d: $88
	ld   [hl], a                                     ; $481e: $77
	ld   [hl], a                                     ; $481f: $77
	ld   [hl], a                                     ; $4820: $77
	halt                                             ; $4821: $76
	ld   [hl], a                                     ; $4822: $77
	ld   a, b                                        ; $4823: $78
	adc  c                                           ; $4824: $89
	adc  c                                           ; $4825: $89
	sbc  d                                           ; $4826: $9a
	xor  d                                           ; $4827: $aa
	xor  c                                           ; $4828: $a9
	adc  c                                           ; $4829: $89
	adc  b                                           ; $482a: $88
	ld   [hl], a                                     ; $482b: $77
	halt                                             ; $482c: $76
	ld   h, [hl]                                     ; $482d: $66
	ld   [hl], a                                     ; $482e: $77
	ld   [hl], a                                     ; $482f: $77
	adc  b                                           ; $4830: $88
	sbc  c                                           ; $4831: $99
	sbc  d                                           ; $4832: $9a
	xor  d                                           ; $4833: $aa
	sbc  c                                           ; $4834: $99
	sbc  b                                           ; $4835: $98
	add  a                                           ; $4836: $87
	ld   [hl], a                                     ; $4837: $77
	ld   h, [hl]                                     ; $4838: $66
	ld   h, [hl]                                     ; $4839: $66
	ld   [hl], a                                     ; $483a: $77
	ld   [hl], a                                     ; $483b: $77
	adc  c                                           ; $483c: $89
	adc  c                                           ; $483d: $89
	xor  d                                           ; $483e: $aa
	sbc  d                                           ; $483f: $9a
	xor  c                                           ; $4840: $a9
	adc  c                                           ; $4841: $89
	adc  b                                           ; $4842: $88
	add  a                                           ; $4843: $87
	ld   [hl], a                                     ; $4844: $77
	ld   h, [hl]                                     ; $4845: $66
	ld   [hl], a                                     ; $4846: $77
	ld   [hl], a                                     ; $4847: $77
	ld   a, b                                        ; $4848: $78
	adc  b                                           ; $4849: $88
	sbc  d                                           ; $484a: $9a
	xor  c                                           ; $484b: $a9
	xor  c                                           ; $484c: $a9
	sbc  b                                           ; $484d: $98
	sbc  b                                           ; $484e: $98
	ld   [hl], a                                     ; $484f: $77
	ld   h, [hl]                                     ; $4850: $66
	ld   h, [hl]                                     ; $4851: $66
	ld   h, [hl]                                     ; $4852: $66
	ld   [hl], a                                     ; $4853: $77
	adc  b                                           ; $4854: $88
	adc  c                                           ; $4855: $89
	sbc  d                                           ; $4856: $9a
	xor  d                                           ; $4857: $aa
	xor  c                                           ; $4858: $a9
	sbc  c                                           ; $4859: $99
	sbc  b                                           ; $485a: $98
	ld   [hl], a                                     ; $485b: $77
	halt                                             ; $485c: $76
	ld   h, [hl]                                     ; $485d: $66
	ld   h, [hl]                                     ; $485e: $66
	ld   [hl], a                                     ; $485f: $77
	adc  b                                           ; $4860: $88
	sbc  c                                           ; $4861: $99
	sbc  d                                           ; $4862: $9a
	sbc  c                                           ; $4863: $99
	sbc  d                                           ; $4864: $9a
	sbc  c                                           ; $4865: $99
	sbc  b                                           ; $4866: $98
	ld   [hl], a                                     ; $4867: $77
	halt                                             ; $4868: $76
	ld   h, [hl]                                     ; $4869: $66
	ld   h, [hl]                                     ; $486a: $66
	ld   [hl], a                                     ; $486b: $77
	ld   a, b                                        ; $486c: $78
	sbc  b                                           ; $486d: $98
	sbc  c                                           ; $486e: $99
	sbc  d                                           ; $486f: $9a
	xor  d                                           ; $4870: $aa
	xor  c                                           ; $4871: $a9
	adc  b                                           ; $4872: $88
	add  a                                           ; $4873: $87
	halt                                             ; $4874: $76
	ld   h, [hl]                                     ; $4875: $66
	ld   h, [hl]                                     ; $4876: $66
	ld   h, a                                        ; $4877: $67
	ld   a, b                                        ; $4878: $78
	adc  c                                           ; $4879: $89
	adc  c                                           ; $487a: $89
	xor  c                                           ; $487b: $a9
	xor  d                                           ; $487c: $aa
	sbc  d                                           ; $487d: $9a
	sbc  c                                           ; $487e: $99
	add  a                                           ; $487f: $87
	ld   [hl], a                                     ; $4880: $77
	ld   h, [hl]                                     ; $4881: $66
	ld   h, [hl]                                     ; $4882: $66
	ld   h, [hl]                                     ; $4883: $66
	ld   [hl], a                                     ; $4884: $77
	adc  b                                           ; $4885: $88
	sbc  c                                           ; $4886: $99
	sbc  c                                           ; $4887: $99
	xor  d                                           ; $4888: $aa
	xor  c                                           ; $4889: $a9
	xor  c                                           ; $488a: $a9
	sbc  b                                           ; $488b: $98
	ld   [hl], a                                     ; $488c: $77
	ld   h, [hl]                                     ; $488d: $66
	ld   h, [hl]                                     ; $488e: $66
	ld   h, [hl]                                     ; $488f: $66
	ld   h, a                                        ; $4890: $67
	ld   a, b                                        ; $4891: $78
	sbc  b                                           ; $4892: $98
	sbc  d                                           ; $4893: $9a
	sbc  d                                           ; $4894: $9a
	xor  d                                           ; $4895: $aa
	xor  d                                           ; $4896: $aa
	sbc  c                                           ; $4897: $99
	add  a                                           ; $4898: $87
	halt                                             ; $4899: $76
	ld   h, [hl]                                     ; $489a: $66
	ld   h, [hl]                                     ; $489b: $66
	ld   h, a                                        ; $489c: $67
	ld   a, b                                        ; $489d: $78
	adc  c                                           ; $489e: $89
	adc  c                                           ; $489f: $89
	sbc  d                                           ; $48a0: $9a
	xor  d                                           ; $48a1: $aa
	xor  c                                           ; $48a2: $a9
	xor  c                                           ; $48a3: $a9
	add  a                                           ; $48a4: $87
	halt                                             ; $48a5: $76
	ld   h, [hl]                                     ; $48a6: $66
	ld   h, [hl]                                     ; $48a7: $66
	ld   h, [hl]                                     ; $48a8: $66
	ld   [hl], a                                     ; $48a9: $77
	adc  b                                           ; $48aa: $88
	adc  c                                           ; $48ab: $89
	sbc  c                                           ; $48ac: $99
	sbc  d                                           ; $48ad: $9a
	xor  d                                           ; $48ae: $aa
	xor  c                                           ; $48af: $a9
	sbc  c                                           ; $48b0: $99
	add  a                                           ; $48b1: $87
	halt                                             ; $48b2: $76
	ld   h, [hl]                                     ; $48b3: $66
	ld   h, [hl]                                     ; $48b4: $66
	ld   h, a                                        ; $48b5: $67
	ld   [hl], a                                     ; $48b6: $77
	adc  c                                           ; $48b7: $89
	adc  c                                           ; $48b8: $89
	sbc  d                                           ; $48b9: $9a
	xor  e                                           ; $48ba: $ab
	xor  d                                           ; $48bb: $aa
	sbc  c                                           ; $48bc: $99
	sub  a                                           ; $48bd: $97
	halt                                             ; $48be: $76
	ld   h, [hl]                                     ; $48bf: $66
	ld   h, [hl]                                     ; $48c0: $66
	ld   h, [hl]                                     ; $48c1: $66
	ld   h, a                                        ; $48c2: $67
	ld   a, b                                        ; $48c3: $78
	sbc  b                                           ; $48c4: $98
	sbc  c                                           ; $48c5: $99
	xor  d                                           ; $48c6: $aa
	cp   e                                           ; $48c7: $bb
	xor  d                                           ; $48c8: $aa
	xor  b                                           ; $48c9: $a8
	add  a                                           ; $48ca: $87
	halt                                             ; $48cb: $76
	ld   h, [hl]                                     ; $48cc: $66
	ld   h, [hl]                                     ; $48cd: $66
	ld   h, [hl]                                     ; $48ce: $66
	ld   [hl], a                                     ; $48cf: $77
	adc  c                                           ; $48d0: $89
	sbc  c                                           ; $48d1: $99
	sbc  d                                           ; $48d2: $9a
	xor  e                                           ; $48d3: $ab
	cp   d                                           ; $48d4: $ba
	xor  d                                           ; $48d5: $aa
	sbc  b                                           ; $48d6: $98
	ld   [hl], a                                     ; $48d7: $77
	ld   h, [hl]                                     ; $48d8: $66
	ld   d, [hl]                                     ; $48d9: $56
	ld   h, [hl]                                     ; $48da: $66
	ld   h, a                                        ; $48db: $67
	ld   [hl], a                                     ; $48dc: $77
	adc  c                                           ; $48dd: $89
	sbc  d                                           ; $48de: $9a
	xor  d                                           ; $48df: $aa
	xor  e                                           ; $48e0: $ab
	cp   d                                           ; $48e1: $ba
	xor  d                                           ; $48e2: $aa
	adc  b                                           ; $48e3: $88
	halt                                             ; $48e4: $76
	ld   h, [hl]                                     ; $48e5: $66
	ld   h, l                                        ; $48e6: $65
	ld   d, [hl]                                     ; $48e7: $56
	ld   h, a                                        ; $48e8: $67
	ld   a, b                                        ; $48e9: $78
	sbc  b                                           ; $48ea: $98
	sbc  c                                           ; $48eb: $99
	xor  e                                           ; $48ec: $ab
	xor  d                                           ; $48ed: $aa
	cp   d                                           ; $48ee: $ba
	sbc  c                                           ; $48ef: $99
	sub  a                                           ; $48f0: $97
	halt                                             ; $48f1: $76
	ld   h, [hl]                                     ; $48f2: $66
	ld   d, l                                        ; $48f3: $55
	ld   h, [hl]                                     ; $48f4: $66
	ld   h, a                                        ; $48f5: $67
	ld   a, b                                        ; $48f6: $78
	sbc  c                                           ; $48f7: $99
	xor  c                                           ; $48f8: $a9
	xor  e                                           ; $48f9: $ab
	cp   e                                           ; $48fa: $bb
	cp   d                                           ; $48fb: $ba
	xor  c                                           ; $48fc: $a9
	add  a                                           ; $48fd: $87
	ld   h, [hl]                                     ; $48fe: $66
	ld   d, l                                        ; $48ff: $55
	ld   d, l                                        ; $4900: $55
	ld   h, [hl]                                     ; $4901: $66
	ld   [hl], a                                     ; $4902: $77
	adc  b                                           ; $4903: $88
	adc  c                                           ; $4904: $89
	sbc  d                                           ; $4905: $9a
	xor  e                                           ; $4906: $ab
	xor  d                                           ; $4907: $aa
	cp   d                                           ; $4908: $ba
	xor  b                                           ; $4909: $a8
	add  a                                           ; $490a: $87
	ld   h, [hl]                                     ; $490b: $66
	ld   d, l                                        ; $490c: $55
	ld   d, l                                        ; $490d: $55
	ld   h, [hl]                                     ; $490e: $66
	ld   h, a                                        ; $490f: $67
	ld   a, b                                        ; $4910: $78
	sbc  c                                           ; $4911: $99
	xor  d                                           ; $4912: $aa
	xor  e                                           ; $4913: $ab
	xor  d                                           ; $4914: $aa
	cp   d                                           ; $4915: $ba
	sbc  b                                           ; $4916: $98
	add  a                                           ; $4917: $87
	ld   h, [hl]                                     ; $4918: $66
	ld   d, l                                        ; $4919: $55
	ld   d, l                                        ; $491a: $55
	ld   h, [hl]                                     ; $491b: $66
	ld   [hl], a                                     ; $491c: $77
	adc  b                                           ; $491d: $88
	adc  c                                           ; $491e: $89
	sbc  d                                           ; $491f: $9a
	xor  e                                           ; $4920: $ab
	xor  d                                           ; $4921: $aa
	xor  e                                           ; $4922: $ab
	sbc  c                                           ; $4923: $99
	add  a                                           ; $4924: $87
	ld   h, [hl]                                     ; $4925: $66
	ld   d, l                                        ; $4926: $55
	ld   d, l                                        ; $4927: $55
	ld   d, [hl]                                     ; $4928: $56
	ld   h, a                                        ; $4929: $67
	ld   a, b                                        ; $492a: $78
	sbc  c                                           ; $492b: $99
	xor  d                                           ; $492c: $aa
	xor  d                                           ; $492d: $aa
	cp   e                                           ; $492e: $bb
	cp   e                                           ; $492f: $bb
	xor  c                                           ; $4930: $a9
	add  a                                           ; $4931: $87
	ld   h, [hl]                                     ; $4932: $66
	ld   d, l                                        ; $4933: $55
	ld   d, l                                        ; $4934: $55
	ld   d, [hl]                                     ; $4935: $56
	ld   h, a                                        ; $4936: $67
	ld   a, b                                        ; $4937: $78
	sbc  c                                           ; $4938: $99
	xor  d                                           ; $4939: $aa
	xor  e                                           ; $493a: $ab
	xor  d                                           ; $493b: $aa
	cp   d                                           ; $493c: $ba
	xor  c                                           ; $493d: $a9
	add  a                                           ; $493e: $87
	ld   h, [hl]                                     ; $493f: $66
	ld   d, l                                        ; $4940: $55
	ld   d, l                                        ; $4941: $55
	ld   d, l                                        ; $4942: $55
	ld   h, a                                        ; $4943: $67
	ld   a, b                                        ; $4944: $78
	adc  b                                           ; $4945: $88
	sbc  c                                           ; $4946: $99
	xor  e                                           ; $4947: $ab
	cp   e                                           ; $4948: $bb
	cp   e                                           ; $4949: $bb
	cp   c                                           ; $494a: $b9
	add  a                                           ; $494b: $87
	ld   h, [hl]                                     ; $494c: $66
	ld   d, l                                        ; $494d: $55
	ld   d, l                                        ; $494e: $55
	ld   d, l                                        ; $494f: $55
	ld   h, [hl]                                     ; $4950: $66
	ld   [hl], a                                     ; $4951: $77
	adc  c                                           ; $4952: $89
	sbc  d                                           ; $4953: $9a
	xor  d                                           ; $4954: $aa
	xor  e                                           ; $4955: $ab
	cp   e                                           ; $4956: $bb
	xor  d                                           ; $4957: $aa
	sbc  b                                           ; $4958: $98
	halt                                             ; $4959: $76
	ld   h, l                                        ; $495a: $65
	ld   d, l                                        ; $495b: $55
	ld   d, l                                        ; $495c: $55
	ld   d, [hl]                                     ; $495d: $56
	ld   [hl], a                                     ; $495e: $77
	adc  c                                           ; $495f: $89
	adc  c                                           ; $4960: $89
	sbc  d                                           ; $4961: $9a
	cp   e                                           ; $4962: $bb
	cp   e                                           ; $4963: $bb
	cp   d                                           ; $4964: $ba
	xor  c                                           ; $4965: $a9
	add  a                                           ; $4966: $87
	ld   h, l                                        ; $4967: $65
	ld   d, l                                        ; $4968: $55
	ld   d, l                                        ; $4969: $55
	ld   d, l                                        ; $496a: $55
	ld   h, [hl]                                     ; $496b: $66
	ld   a, b                                        ; $496c: $78
	adc  b                                           ; $496d: $88
	sbc  d                                           ; $496e: $9a
	xor  d                                           ; $496f: $aa
	cp   e                                           ; $4970: $bb
	cp   e                                           ; $4971: $bb
	xor  d                                           ; $4972: $aa
	sub  a                                           ; $4973: $97
	ld   h, [hl]                                     ; $4974: $66
	ld   d, l                                        ; $4975: $55
	ld   d, l                                        ; $4976: $55
	ld   d, l                                        ; $4977: $55
	ld   h, [hl]                                     ; $4978: $66
	ld   [hl], a                                     ; $4979: $77
	adc  b                                           ; $497a: $88
	adc  c                                           ; $497b: $89
	sbc  d                                           ; $497c: $9a
	xor  e                                           ; $497d: $ab
	cp   e                                           ; $497e: $bb
	cp   e                                           ; $497f: $bb
	sbc  b                                           ; $4980: $98
	halt                                             ; $4981: $76
	ld   h, l                                        ; $4982: $65
	ld   d, l                                        ; $4983: $55
	ld   h, l                                        ; $4984: $65
	ld   d, [hl]                                     ; $4985: $56
	ld   h, a                                        ; $4986: $67
	ld   a, b                                        ; $4987: $78
	sbc  b                                           ; $4988: $98
	sbc  c                                           ; $4989: $99
	xor  d                                           ; $498a: $aa
	cp   e                                           ; $498b: $bb
	cp   e                                           ; $498c: $bb
	cp   c                                           ; $498d: $b9
	add  a                                           ; $498e: $87
	ld   h, [hl]                                     ; $498f: $66
	ld   d, l                                        ; $4990: $55
	ld   d, l                                        ; $4991: $55
	ld   d, l                                        ; $4992: $55
	ld   h, [hl]                                     ; $4993: $66
	ld   [hl], a                                     ; $4994: $77
	adc  c                                           ; $4995: $89
	adc  d                                           ; $4996: $8a
	xor  d                                           ; $4997: $aa
	cp   e                                           ; $4998: $bb
	cp   h                                           ; $4999: $bc
	jp   z, $86a9                                    ; $499a: $ca $a9 $86

	ld   d, l                                        ; $499d: $55
	ld   d, l                                        ; $499e: $55
	ld   d, [hl]                                     ; $499f: $56
	ld   d, [hl]                                     ; $49a0: $56
	ld   h, [hl]                                     ; $49a1: $66
	ld   a, b                                        ; $49a2: $78
	sbc  c                                           ; $49a3: $99
	xor  d                                           ; $49a4: $aa
	xor  e                                           ; $49a5: $ab
	xor  e                                           ; $49a6: $ab
	call z, $a8bb                                    ; $49a7: $cc $bb $a8
	halt                                             ; $49aa: $76
	ld   d, l                                        ; $49ab: $55
	ld   d, l                                        ; $49ac: $55
	ld   d, l                                        ; $49ad: $55
	ld   d, [hl]                                     ; $49ae: $56
	ld   h, a                                        ; $49af: $67
	adc  b                                           ; $49b0: $88
	sbc  b                                           ; $49b1: $98
	xor  c                                           ; $49b2: $a9
	xor  d                                           ; $49b3: $aa
	cp   h                                           ; $49b4: $bc
	call z, $97aa                                    ; $49b5: $cc $aa $97
	ld   h, l                                        ; $49b8: $65
	ld   d, h                                        ; $49b9: $54
	ld   d, l                                        ; $49ba: $55
	ld   h, l                                        ; $49bb: $65
	ld   h, [hl]                                     ; $49bc: $66
	ld   [hl], a                                     ; $49bd: $77
	adc  b                                           ; $49be: $88
	sbc  c                                           ; $49bf: $99
	xor  c                                           ; $49c0: $a9
	xor  d                                           ; $49c1: $aa
	cp   h                                           ; $49c2: $bc
	call z, $87ba                                    ; $49c3: $cc $ba $87
	ld   h, l                                        ; $49c6: $65
	ld   d, h                                        ; $49c7: $54
	ld   d, l                                        ; $49c8: $55
	ld   h, l                                        ; $49c9: $65
	ld   h, [hl]                                     ; $49ca: $66
	ld   a, b                                        ; $49cb: $78
	adc  c                                           ; $49cc: $89
	sbc  c                                           ; $49cd: $99
	xor  c                                           ; $49ce: $a9
	xor  d                                           ; $49cf: $aa
	cp   h                                           ; $49d0: $bc
	res  5, c                                        ; $49d1: $cb $a9
	add  [hl]                                        ; $49d3: $86
	ld   d, l                                        ; $49d4: $55
	ld   b, h                                        ; $49d5: $44
	ld   d, l                                        ; $49d6: $55
	ld   h, [hl]                                     ; $49d7: $66
	ld   h, [hl]                                     ; $49d8: $66
	ld   a, b                                        ; $49d9: $78
	adc  c                                           ; $49da: $89
	sbc  c                                           ; $49db: $99
	xor  c                                           ; $49dc: $a9
	xor  d                                           ; $49dd: $aa
	call z, $b9bc                                    ; $49de: $cc $bc $b9
	add  [hl]                                        ; $49e1: $86
	ld   d, l                                        ; $49e2: $55
	ld   b, h                                        ; $49e3: $44
	ld   d, l                                        ; $49e4: $55
	ld   h, [hl]                                     ; $49e5: $66
	ld   h, [hl]                                     ; $49e6: $66
	ld   a, b                                        ; $49e7: $78
	adc  b                                           ; $49e8: $88
	adc  c                                           ; $49e9: $89
	xor  c                                           ; $49ea: $a9
	cp   e                                           ; $49eb: $bb
	cp   h                                           ; $49ec: $bc
	call z, $87ba                                    ; $49ed: $cc $ba $87
	ld   d, h                                        ; $49f0: $54
	ld   d, h                                        ; $49f1: $54
	ld   d, l                                        ; $49f2: $55
	ld   d, [hl]                                     ; $49f3: $56
	ld   h, a                                        ; $49f4: $67
	ld   l, c                                        ; $49f5: $69
	adc  b                                           ; $49f6: $88
	sbc  b                                           ; $49f7: $98
	sbc  d                                           ; $49f8: $9a
	cp   d                                           ; $49f9: $ba
	cp   h                                           ; $49fa: $bc
	cp   e                                           ; $49fb: $bb
	cp   d                                           ; $49fc: $ba
	sub  a                                           ; $49fd: $97
	ld   h, h                                        ; $49fe: $64
	ld   d, h                                        ; $49ff: $54
	ld   b, l                                        ; $4a00: $45
	ld   d, [hl]                                     ; $4a01: $56
	ld   h, [hl]                                     ; $4a02: $66
	ld   [hl], a                                     ; $4a03: $77
	adc  b                                           ; $4a04: $88
	sbc  c                                           ; $4a05: $99
	sbc  d                                           ; $4a06: $9a
	sbc  d                                           ; $4a07: $9a
	cp   h                                           ; $4a08: $bc
	res  7, e                                        ; $4a09: $cb $bb
	sbc  c                                           ; $4a0b: $99
	ld   h, l                                        ; $4a0c: $65
	ld   b, l                                        ; $4a0d: $45
	ld   b, h                                        ; $4a0e: $44
	ld   h, l                                        ; $4a0f: $65
	ld   d, [hl]                                     ; $4a10: $56
	ld   [hl], a                                     ; $4a11: $77
	ld   a, c                                        ; $4a12: $79
	adc  c                                           ; $4a13: $89
	xor  d                                           ; $4a14: $aa
	sbc  d                                           ; $4a15: $9a
	xor  e                                           ; $4a16: $ab
	cp   e                                           ; $4a17: $bb
	res  7, d                                        ; $4a18: $cb $ba
	halt                                             ; $4a1a: $76
	ld   d, h                                        ; $4a1b: $54
	ld   b, h                                        ; $4a1c: $44
	ld   d, l                                        ; $4a1d: $55
	ld   d, [hl]                                     ; $4a1e: $56
	ld   h, a                                        ; $4a1f: $67
	ld   a, b                                        ; $4a20: $78
	adc  c                                           ; $4a21: $89
	xor  b                                           ; $4a22: $a8
	xor  c                                           ; $4a23: $a9
	xor  d                                           ; $4a24: $aa
	cp   h                                           ; $4a25: $bc
	cp   e                                           ; $4a26: $bb
	cp   d                                           ; $4a27: $ba
	xor  b                                           ; $4a28: $a8
	ld   h, h                                        ; $4a29: $64
	ld   b, h                                        ; $4a2a: $44
	dec  [hl]                                        ; $4a2b: $35
	ld   h, l                                        ; $4a2c: $65
	ld   h, a                                        ; $4a2d: $67
	ld   [hl], a                                     ; $4a2e: $77
	adc  b                                           ; $4a2f: $88
	adc  c                                           ; $4a30: $89
	xor  c                                           ; $4a31: $a9
	sbc  e                                           ; $4a32: $9b
	xor  e                                           ; $4a33: $ab
	cp   e                                           ; $4a34: $bb
	res  5, c                                        ; $4a35: $cb $a9
	sub  [hl]                                        ; $4a37: $96
	ld   b, h                                        ; $4a38: $44
	ld   b, e                                        ; $4a39: $43
	ld   b, [hl]                                     ; $4a3a: $46
	ld   d, [hl]                                     ; $4a3b: $56
	ld   [hl], a                                     ; $4a3c: $77
	ld   a, b                                        ; $4a3d: $78
	adc  b                                           ; $4a3e: $88
	sbc  c                                           ; $4a3f: $99
	adc  c                                           ; $4a40: $89
	xor  d                                           ; $4a41: $aa
	cp   e                                           ; $4a42: $bb
	res  7, d                                        ; $4a43: $cb $ba
	xor  b                                           ; $4a45: $a8
	ld   h, h                                        ; $4a46: $64
	ld   b, h                                        ; $4a47: $44
	inc  [hl]                                        ; $4a48: $34
	ld   h, [hl]                                     ; $4a49: $66
	ld   h, a                                        ; $4a4a: $67
	add  a                                           ; $4a4b: $87
	adc  b                                           ; $4a4c: $88
	adc  b                                           ; $4a4d: $88
	sbc  c                                           ; $4a4e: $99
	sbc  c                                           ; $4a4f: $99
	xor  e                                           ; $4a50: $ab
	call z, $b9bc                                    ; $4a51: $cc $bc $b9
	add  a                                           ; $4a54: $87
	ld   d, h                                        ; $4a55: $54
	ld   b, h                                        ; $4a56: $44
	dec  [hl]                                        ; $4a57: $35
	ld   h, [hl]                                     ; $4a58: $66
	ld   [hl], a                                     ; $4a59: $77
	adc  b                                           ; $4a5a: $88
	sbc  b                                           ; $4a5b: $98
	adc  b                                           ; $4a5c: $88
	adc  c                                           ; $4a5d: $89
	xor  c                                           ; $4a5e: $a9
	cp   h                                           ; $4a5f: $bc
	set  1, e                                        ; $4a60: $cb $cb
	xor  d                                           ; $4a62: $aa
	ld   [hl], l                                     ; $4a63: $75
	ld   b, h                                        ; $4a64: $44
	ld   b, e                                        ; $4a65: $43
	ld   d, [hl]                                     ; $4a66: $56
	ld   h, [hl]                                     ; $4a67: $66
	adc  b                                           ; $4a68: $88
	ld   a, b                                        ; $4a69: $78
	sbc  b                                           ; $4a6a: $98
	adc  d                                           ; $4a6b: $8a
	adc  b                                           ; $4a6c: $88
	xor  d                                           ; $4a6d: $aa
	xor  h                                           ; $4a6e: $ac
	call z, $98bb                                    ; $4a6f: $cc $bb $98
	ld   h, h                                        ; $4a72: $64
	inc  [hl]                                        ; $4a73: $34
	inc  sp                                          ; $4a74: $33
	ld   d, [hl]                                     ; $4a75: $56
	ld   h, a                                        ; $4a76: $67
	adc  b                                           ; $4a77: $88
	adc  c                                           ; $4a78: $89
	adc  b                                           ; $4a79: $88
	sbc  d                                           ; $4a7a: $9a
	sbc  d                                           ; $4a7b: $9a
	cp   d                                           ; $4a7c: $ba
	cp   h                                           ; $4a7d: $bc
	res  7, d                                        ; $4a7e: $cb $ba
	sub  a                                           ; $4a80: $97
	ld   d, d                                        ; $4a81: $52
	inc  [hl]                                        ; $4a82: $34
	inc  [hl]                                        ; $4a83: $34
	ld   h, [hl]                                     ; $4a84: $66
	ld   a, c                                        ; $4a85: $79
	sbc  b                                           ; $4a86: $98
	sbc  b                                           ; $4a87: $98
	adc  b                                           ; $4a88: $88
	sbc  b                                           ; $4a89: $98
	adc  c                                           ; $4a8a: $89
	xor  d                                           ; $4a8b: $aa
	cp   h                                           ; $4a8c: $bc
	res  7, c                                        ; $4a8d: $cb $b9
	add  [hl]                                        ; $4a8f: $86
	ld   b, d                                        ; $4a90: $42
	inc  [hl]                                        ; $4a91: $34
	dec  [hl]                                        ; $4a92: $35
	ld   [hl], a                                     ; $4a93: $77
	ld   a, b                                        ; $4a94: $78
	sbc  b                                           ; $4a95: $98
	sbc  b                                           ; $4a96: $98
	adc  c                                           ; $4a97: $89
	xor  b                                           ; $4a98: $a8
	adc  e                                           ; $4a99: $8b
	cp   e                                           ; $4a9a: $bb
	call z, $a9cc                                    ; $4a9b: $cc $cc $a9
	halt                                             ; $4a9e: $76
	ld   [hl-], a                                    ; $4a9f: $32
	inc  sp                                          ; $4aa0: $33
	ld   [hl], $77                                   ; $4aa1: $36 $77
	adc  d                                           ; $4aa3: $8a
	sbc  c                                           ; $4aa4: $99
	adc  b                                           ; $4aa5: $88
	ld   a, b                                        ; $4aa6: $78
	sbc  b                                           ; $4aa7: $98
	xor  e                                           ; $4aa8: $ab
	cp   e                                           ; $4aa9: $bb
	call c, $b8cb                                    ; $4aaa: $dc $cb $b8
	ld   [hl], l                                     ; $4aad: $75
	ld   hl, $3634                                   ; $4aae: $21 $34 $36
	adc  b                                           ; $4ab1: $88
	adc  c                                           ; $4ab2: $89
	sub  a                                           ; $4ab3: $97
	sbc  c                                           ; $4ab4: $99
	adc  b                                           ; $4ab5: $88
	xor  c                                           ; $4ab6: $a9
	sbc  e                                           ; $4ab7: $9b
	cp   e                                           ; $4ab8: $bb
	call z, $b9cc                                    ; $4ab9: $cc $cc $b9
	ld   h, h                                        ; $4abc: $64
	ld   hl, $4624                                   ; $4abd: $21 $24 $46
	adc  b                                           ; $4ac0: $88
	adc  c                                           ; $4ac1: $89
	sbc  b                                           ; $4ac2: $98
	adc  c                                           ; $4ac3: $89
	adc  b                                           ; $4ac4: $88
	sbc  c                                           ; $4ac5: $99
	sbc  c                                           ; $4ac6: $99
	xor  e                                           ; $4ac7: $ab
	call z, $b8dc                                    ; $4ac8: $cc $dc $b8
	ld   h, h                                        ; $4acb: $64
	ld   hl, $5624                                   ; $4acc: $21 $24 $56
	adc  c                                           ; $4acf: $89
	adc  c                                           ; $4ad0: $89
	xor  c                                           ; $4ad1: $a9
	adc  b                                           ; $4ad2: $88
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  c                                           ; $4ad5: $89
	cp   h                                           ; $4ad6: $bc
	cp   l                                           ; $4ad7: $bd
	call z, Call_0c0_64a8                            ; $4ad8: $cc $a8 $64
	ld   hl, $5614                                   ; $4adb: $21 $14 $56
	adc  c                                           ; $4ade: $89
	adc  d                                           ; $4adf: $8a
	xor  b                                           ; $4ae0: $a8
	ld   a, b                                        ; $4ae1: $78
	add  a                                           ; $4ae2: $87
	adc  c                                           ; $4ae3: $89
	sbc  c                                           ; $4ae4: $99
	xor  e                                           ; $4ae5: $ab
	call $b9dc                                       ; $4ae6: $cd $dc $b9
	ld   h, l                                        ; $4ae9: $65
	ld   sp, $4613                                   ; $4aea: $31 $13 $46
	sbc  d                                           ; $4aed: $9a
	sbc  c                                           ; $4aee: $99
	sbc  b                                           ; $4aef: $98
	ld   a, b                                        ; $4af0: $78
	add  a                                           ; $4af1: $87
	ld   a, c                                        ; $4af2: $79
	sbc  c                                           ; $4af3: $99
	xor  e                                           ; $4af4: $ab
	call $caec                                       ; $4af5: $cd $ec $ca
	ld   [hl], l                                     ; $4af8: $75
	ld   sp, $5612                                   ; $4af9: $31 $12 $56
	ld   a, c                                        ; $4afc: $79
	xor  c                                           ; $4afd: $a9
	sbc  d                                           ; $4afe: $9a
	add  a                                           ; $4aff: $87
	add  a                                           ; $4b00: $87
	ld   a, b                                        ; $4b01: $78
	sbc  b                                           ; $4b02: $98
	sbc  e                                           ; $4b03: $9b
	cp   e                                           ; $4b04: $bb
	db   $dd                                         ; $4b05: $dd
	jp   z, Jump_0c0_4286                            ; $4b06: $ca $86 $42

	ld   de, $7936                                   ; $4b09: $11 $36 $79
	xor  e                                           ; $4b0c: $ab
	sbc  c                                           ; $4b0d: $99
	add  a                                           ; $4b0e: $87
	ld   [hl], a                                     ; $4b0f: $77
	add  a                                           ; $4b10: $87
	adc  c                                           ; $4b11: $89
	adc  d                                           ; $4b12: $8a
	cp   h                                           ; $4b13: $bc
	sbc  $db                                         ; $4b14: $de $db
	and  a                                           ; $4b16: $a7
	ld   d, e                                        ; $4b17: $53
	ld   de, $7815                                   ; $4b18: $11 $15 $78
	sbc  e                                           ; $4b1b: $9b
	sbc  c                                           ; $4b1c: $99
	sbc  b                                           ; $4b1d: $98
	ld   h, a                                        ; $4b1e: $67
	add  a                                           ; $4b1f: $87
	ld   a, b                                        ; $4b20: $78
	sbc  b                                           ; $4b21: $98
	xor  h                                           ; $4b22: $ac
	db   $dd                                         ; $4b23: $dd
	db   $dd                                         ; $4b24: $dd
	cp   b                                           ; $4b25: $b8
	ld   h, h                                        ; $4b26: $64
	ld   hl, $6912                                   ; $4b27: $21 $12 $69
	sbc  d                                           ; $4b2a: $9a
	cp   c                                           ; $4b2b: $b9
	adc  b                                           ; $4b2c: $88
	halt                                             ; $4b2d: $76
	ld   a, b                                        ; $4b2e: $78
	ld   [hl], a                                     ; $4b2f: $77
	sbc  c                                           ; $4b30: $99
	adc  d                                           ; $4b31: $8a
	db   $dd                                         ; $4b32: $dd
	xor  $da                                         ; $4b33: $ee $da
	ld   [hl], l                                     ; $4b35: $75
	ld   hl, $4711                                   ; $4b36: $21 $11 $47
	adc  d                                           ; $4b39: $8a
	jp   z, $9799                                    ; $4b3a: $ca $99 $97

	ld   a, b                                        ; $4b3d: $78
	ld   [hl], a                                     ; $4b3e: $77
	adc  b                                           ; $4b3f: $88
	sbc  c                                           ; $4b40: $99
	cp   h                                           ; $4b41: $bc
	xor  $dc                                         ; $4b42: $ee $dc
	sub  [hl]                                        ; $4b44: $96
	ld   b, d                                        ; $4b45: $42
	ld   de, $8915                                   ; $4b46: $11 $15 $89
	cp   e                                           ; $4b49: $bb
	sbc  b                                           ; $4b4a: $98
	adc  b                                           ; $4b4b: $88
	ld   [hl], a                                     ; $4b4c: $77
	sub  a                                           ; $4b4d: $97
	ld   a, b                                        ; $4b4e: $78
	sbc  b                                           ; $4b4f: $98
	sbc  e                                           ; $4b50: $9b
	sbc  $dd                                         ; $4b51: $de $dd
	cp   b                                           ; $4b53: $b8
	ld   d, h                                        ; $4b54: $54
	ld   hl, $6812                                   ; $4b55: $21 $12 $68
	xor  d                                           ; $4b58: $aa
	cp   d                                           ; $4b59: $ba
	adc  c                                           ; $4b5a: $89
	adc  b                                           ; $4b5b: $88
	ld   a, b                                        ; $4b5c: $78
	add  [hl]                                        ; $4b5d: $86
	ld   a, c                                        ; $4b5e: $79
	sbc  d                                           ; $4b5f: $9a
	call $dbde                                       ; $4b60: $cd $de $db
	ld   [hl], l                                     ; $4b63: $75
	ld   b, e                                        ; $4b64: $43
	ld   de, $9927                                   ; $4b65: $11 $27 $99
	cp   h                                           ; $4b68: $bc
	sub  a                                           ; $4b69: $97
	adc  b                                           ; $4b6a: $88
	add  a                                           ; $4b6b: $87
	add  a                                           ; $4b6c: $87
	ld   l, b                                        ; $4b6d: $68
	adc  c                                           ; $4b6e: $89
	sbc  h                                           ; $4b6f: $9c
	db   $dd                                         ; $4b70: $dd
	call c, Call_0c0_43a7                            ; $4b71: $dc $a7 $43
	ld   hl, $7a12                                   ; $4b74: $21 $12 $7a
	xor  e                                           ; $4b77: $ab
	cp   b                                           ; $4b78: $b8
	ld   a, c                                        ; $4b79: $79
	xor  c                                           ; $4b7a: $a9
	ld   a, b                                        ; $4b7b: $78
	halt                                             ; $4b7c: $76
	ld   a, b                                        ; $4b7d: $78
	adc  d                                           ; $4b7e: $8a
	adc  $dd                                         ; $4b7f: $ce $dd
	jp   z, $3374                                    ; $4b81: $ca $74 $33

	ld   de, $aa38                                   ; $4b84: $11 $38 $aa
	cp   d                                           ; $4b87: $ba
	adc  b                                           ; $4b88: $88
	adc  c                                           ; $4b89: $89
	sub  a                                           ; $4b8a: $97
	ld   [hl], a                                     ; $4b8b: $77
	ld   [hl], a                                     ; $4b8c: $77
	sbc  d                                           ; $4b8d: $9a
	xor  h                                           ; $4b8e: $ac
	xor  $cb                                         ; $4b8f: $ee $cb
	sub  [hl]                                        ; $4b91: $96
	ld   b, h                                        ; $4b92: $44
	ld   sp, $9a14                                   ; $4b93: $31 $14 $9a
	call z, $8997                                    ; $4b96: $cc $97 $89
	sbc  c                                           ; $4b99: $99
	add  a                                           ; $4b9a: $87
	ld   h, [hl]                                     ; $4b9b: $66
	ld   a, c                                        ; $4b9c: $79
	xor  d                                           ; $4b9d: $aa
	sbc  $ec                                         ; $4b9e: $de $ec
	xor  b                                           ; $4ba0: $a8
	ld   d, e                                        ; $4ba1: $53
	ld   [hl-], a                                    ; $4ba2: $32
	ld   de, $ca59                                   ; $4ba3: $11 $59 $ca
	cp   c                                           ; $4ba6: $b9
	ld   a, b                                        ; $4ba7: $78
	xor  d                                           ; $4ba8: $aa
	add  a                                           ; $4ba9: $87
	halt                                             ; $4baa: $76
	ld   l, b                                        ; $4bab: $68
	sbc  e                                           ; $4bac: $9b
	cp   l                                           ; $4bad: $bd
	call c, $85ca                                    ; $4bae: $dc $ca $85
	inc  sp                                          ; $4bb1: $33
	ld   hl, $ac15                                   ; $4bb2: $21 $15 $ac
	call z, $8a97                                    ; $4bb5: $cc $97 $8a
	xor  b                                           ; $4bb8: $a8
	add  [hl]                                        ; $4bb9: $86
	ld   h, [hl]                                     ; $4bba: $66
	ld   a, d                                        ; $4bbb: $7a
	cp   h                                           ; $4bbc: $bc
	sbc  $db                                         ; $4bbd: $de $db
	sub  [hl]                                        ; $4bbf: $96
	inc  sp                                          ; $4bc0: $33
	ld   sp, $9a14                                   ; $4bc1: $31 $14 $9a
	cp   e                                           ; $4bc4: $bb
	sub  a                                           ; $4bc5: $97
	adc  c                                           ; $4bc6: $89
	xor  c                                           ; $4bc7: $a9
	sbc  b                                           ; $4bc8: $98
	ld   h, [hl]                                     ; $4bc9: $66
	ld   a, b                                        ; $4bca: $78
	sbc  e                                           ; $4bcb: $9b
	db   $dd                                         ; $4bcc: $dd
	res  3, b                                        ; $4bcd: $cb $98
	ld   d, e                                        ; $4bcf: $53
	ld   sp, $6911                                   ; $4bd0: $31 $11 $69
	cp   l                                           ; $4bd3: $bd
	cp   b                                           ; $4bd4: $b8
	ld   l, c                                        ; $4bd5: $69
	sbc  d                                           ; $4bd6: $9a
	sbc  c                                           ; $4bd7: $99
	halt                                             ; $4bd8: $76
	ld   h, a                                        ; $4bd9: $67
	sbc  e                                           ; $4bda: $9b
	cp   [hl]                                        ; $4bdb: $be
	db   $ec                                         ; $4bdc: $ec
	cp   b                                           ; $4bdd: $b8
	ld   h, h                                        ; $4bde: $64
	ld   b, e                                        ; $4bdf: $43
	ld   de, $ab38                                   ; $4be0: $11 $38 $ab
	jp   c, $8977                                    ; $4be3: $da $77 $89

	sbc  d                                           ; $4be6: $9a
	sub  a                                           ; $4be7: $97
	ld   h, [hl]                                     ; $4be8: $66
	adc  c                                           ; $4be9: $89
	xor  h                                           ; $4bea: $ac
	db   $ed                                         ; $4beb: $ed
	cp   d                                           ; $4bec: $ba
	ld   [hl], h                                     ; $4bed: $74
	inc  hl                                          ; $4bee: $23
	ld   hl, $9b16                                   ; $4bef: $21 $16 $9b
	res  1, b                                        ; $4bf2: $cb $88
	sbc  b                                           ; $4bf4: $98
	sbc  c                                           ; $4bf5: $99
	add  a                                           ; $4bf6: $87
	halt                                             ; $4bf7: $76
	ld   a, b                                        ; $4bf8: $78
	sbc  h                                           ; $4bf9: $9c
	db   $dd                                         ; $4bfa: $dd
	jp   z, Jump_0c0_4485                            ; $4bfb: $ca $85 $44

	ld   sp, $8b13                                   ; $4bfe: $31 $13 $8b
	adc  $b7                                         ; $4c01: $ce $b7
	adc  b                                           ; $4c03: $88
	xor  d                                           ; $4c04: $aa
	sbc  b                                           ; $4c05: $98
	ld   [hl], a                                     ; $4c06: $77
	ld   a, b                                        ; $4c07: $78
	xor  e                                           ; $4c08: $ab
	call z, $97db                                    ; $4c09: $cc $db $97
	ld   [hl-], a                                    ; $4c0c: $32
	ld   hl, $9a13                                   ; $4c0d: $21 $13 $9a
	xor  l                                           ; $4c10: $ad
	and  a                                           ; $4c11: $a7
	adc  c                                           ; $4c12: $89
	adc  c                                           ; $4c13: $89
	cp   b                                           ; $4c14: $b8
	ld   [hl], a                                     ; $4c15: $77
	ld   h, a                                        ; $4c16: $67
	sbc  d                                           ; $4c17: $9a
	adc  $db                                         ; $4c18: $ce $db
	and  a                                           ; $4c1a: $a7
	ld   b, d                                        ; $4c1b: $42
	ld   hl, $7912                                   ; $4c1c: $21 $12 $79
	call z, $98b8                                    ; $4c1f: $cc $b8 $98
	sbc  d                                           ; $4c22: $9a
	sbc  b                                           ; $4c23: $98
	ld   [hl], a                                     ; $4c24: $77
	ld   [hl], a                                     ; $4c25: $77
	adc  d                                           ; $4c26: $8a
	call z, $a7cc                                    ; $4c27: $cc $cc $a7
	ld   d, e                                        ; $4c2a: $53
	ld   hl, $6a11                                   ; $4c2b: $21 $11 $6a
	cp   [hl]                                        ; $4c2e: $be
	ret  c                                           ; $4c2f: $d8

	ld   a, b                                        ; $4c30: $78
	sbc  c                                           ; $4c31: $99
	sbc  d                                           ; $4c32: $9a
	adc  b                                           ; $4c33: $88
	ld   [hl], a                                     ; $4c34: $77
	adc  c                                           ; $4c35: $89
	cp   h                                           ; $4c36: $bc
	db   $dd                                         ; $4c37: $dd
	xor  c                                           ; $4c38: $a9
	ld   d, e                                        ; $4c39: $53
	ld   hl, $6a11                                   ; $4c3a: $21 $11 $6a
	sbc  $d9                                         ; $4c3d: $de $d9
	adc  c                                           ; $4c3f: $89
	sbc  c                                           ; $4c40: $99
	xor  c                                           ; $4c41: $a9
	sub  a                                           ; $4c42: $97
	ld   [hl], a                                     ; $4c43: $77
	adc  c                                           ; $4c44: $89
	cp   h                                           ; $4c45: $bc
	db   $dd                                         ; $4c46: $dd
	ret  z                                           ; $4c47: $c8

	ld   d, d                                        ; $4c48: $52
	ld   hl, $6a11                                   ; $4c49: $21 $11 $6a
	cp   l                                           ; $4c4c: $bd
	jp   c, $8998                                    ; $4c4d: $da $98 $89

	xor  d                                           ; $4c50: $aa
	sbc  b                                           ; $4c51: $98
	ld   [hl], a                                     ; $4c52: $77
	adc  c                                           ; $4c53: $89
	xor  h                                           ; $4c54: $ac
	db   $dd                                         ; $4c55: $dd
	ret                                              ; $4c56: $c9


	ld   d, d                                        ; $4c57: $52
	ld   hl, $5911                                   ; $4c58: $21 $11 $59
	adc  $da                                         ; $4c5b: $ce $da
	sbc  c                                           ; $4c5d: $99
	sbc  c                                           ; $4c5e: $99
	sbc  d                                           ; $4c5f: $9a
	adc  b                                           ; $4c60: $88
	ld   [hl], a                                     ; $4c61: $77
	adc  c                                           ; $4c62: $89
	xor  h                                           ; $4c63: $ac
	call z, $52ca                                    ; $4c64: $cc $ca $52
	ld   de, $5911                                   ; $4c67: $11 $11 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c6a: $cf
	res  5, c                                        ; $4c6b: $cb $a9
	adc  c                                           ; $4c6d: $89
	sbc  c                                           ; $4c6e: $99
	sbc  c                                           ; $4c6f: $99
	adc  b                                           ; $4c70: $88
	ld   a, b                                        ; $4c71: $78
	sbc  h                                           ; $4c72: $9c
	call c, Call_0c0_52b8                            ; $4c73: $dc $b8 $52
	ld   de, $7912                                   ; $4c76: $11 $12 $79
	xor  $bb                                         ; $4c79: $ee $bb
	xor  c                                           ; $4c7b: $a9
	sbc  c                                           ; $4c7c: $99
	sbc  c                                           ; $4c7d: $99
	sbc  c                                           ; $4c7e: $99
	sbc  b                                           ; $4c7f: $98
	adc  c                                           ; $4c80: $89
	xor  e                                           ; $4c81: $ab
	db   $db                                         ; $4c82: $db
	cp   b                                           ; $4c83: $b8
	ld   b, d                                        ; $4c84: $42
	ld   de, $7b14                                   ; $4c85: $11 $14 $7b
	db   $dd                                         ; $4c88: $dd
	call z, $89ba                                    ; $4c89: $cc $ba $89
	adc  c                                           ; $4c8c: $89
	sbc  c                                           ; $4c8d: $99
	adc  b                                           ; $4c8e: $88
	adc  c                                           ; $4c8f: $89
	cp   h                                           ; $4c90: $bc
	res  4, a                                        ; $4c91: $cb $a7
	ld   [hl-], a                                    ; $4c93: $32
	ld   de, $7b05                                   ; $4c94: $11 $05 $7b
	db   $ec                                         ; $4c97: $ec
	call z, $99ba                                    ; $4c98: $cc $ba $99
	sbc  b                                           ; $4c9b: $98
	adc  b                                           ; $4c9c: $88
	adc  c                                           ; $4c9d: $89
	sbc  c                                           ; $4c9e: $99
	cp   e                                           ; $4c9f: $bb
	cp   e                                           ; $4ca0: $bb
	sub  l                                           ; $4ca1: $95
	ld   sp, $2511                                   ; $4ca2: $31 $11 $25
	sbc  h                                           ; $4ca5: $9c
	call c, $b9cd                                    ; $4ca6: $dc $cd $b9
	sbc  c                                           ; $4ca9: $99
	adc  b                                           ; $4caa: $88
	adc  c                                           ; $4cab: $89
	sbc  c                                           ; $4cac: $99
	xor  d                                           ; $4cad: $aa
	xor  d                                           ; $4cae: $aa
	cp   c                                           ; $4caf: $b9
	ld   [hl], l                                     ; $4cb0: $75
	ld   hl, $4511                                   ; $4cb1: $21 $11 $45
	cp   l                                           ; $4cb4: $bd
	db   $dd                                         ; $4cb5: $dd
	call c, $87ba                                    ; $4cb6: $dc $ba $87
	ld   a, b                                        ; $4cb9: $78
	adc  c                                           ; $4cba: $89
	xor  c                                           ; $4cbb: $a9
	xor  e                                           ; $4cbc: $ab
	cp   e                                           ; $4cbd: $bb
	xor  b                                           ; $4cbe: $a8
	ld   d, e                                        ; $4cbf: $53
	ld   de, $4913                                   ; $4cc0: $11 $13 $49
	cp   l                                           ; $4cc3: $bd
	db   $dd                                         ; $4cc4: $dd
	db   $ec                                         ; $4cc5: $ec
	xor  d                                           ; $4cc6: $aa
	add  a                                           ; $4cc7: $87
	ld   a, b                                        ; $4cc8: $78
	adc  b                                           ; $4cc9: $88
	sbc  c                                           ; $4cca: $99
	xor  d                                           ; $4ccb: $aa
	xor  c                                           ; $4ccc: $a9
	halt                                             ; $4ccd: $76
	ld   b, c                                        ; $4cce: $41
	ld   de, $7c34                                   ; $4ccf: $11 $34 $7c
	cp   h                                           ; $4cd2: $bc
	cp   $ca                                         ; $4cd3: $fe $ca
	xor  b                                           ; $4cd5: $a8
	ld   a, b                                        ; $4cd6: $78
	ld   [hl], a                                     ; $4cd7: $77
	sbc  c                                           ; $4cd8: $99
	sbc  d                                           ; $4cd9: $9a
	xor  d                                           ; $4cda: $aa
	sub  a                                           ; $4cdb: $97
	ld   h, h                                        ; $4cdc: $64
	ld   de, $4713                                   ; $4cdd: $11 $13 $47
	xor  e                                           ; $4ce0: $ab
	call $bbed                                       ; $4ce1: $cd $ed $bb
	add  a                                           ; $4ce4: $87
	ld   [hl], a                                     ; $4ce5: $77
	ld   a, b                                        ; $4ce6: $78
	sbc  c                                           ; $4ce7: $99
	xor  c                                           ; $4ce8: $a9
	xor  c                                           ; $4ce9: $a9
	halt                                             ; $4cea: $76
	ld   b, c                                        ; $4ceb: $41
	inc  de                                          ; $4cec: $13
	inc  [hl]                                        ; $4ced: $34
	ld   a, c                                        ; $4cee: $79
	xor  e                                           ; $4cef: $ab
	xor  $db                                         ; $4cf0: $ee $db
	cp   c                                           ; $4cf2: $b9
	adc  b                                           ; $4cf3: $88
	ld   [hl], a                                     ; $4cf4: $77
	adc  b                                           ; $4cf5: $88
	sbc  d                                           ; $4cf6: $9a
	xor  c                                           ; $4cf7: $a9
	add  a                                           ; $4cf8: $87
	ld   h, h                                        ; $4cf9: $64
	ld   hl, $5734                                   ; $4cfa: $21 $34 $57
	sbc  d                                           ; $4cfd: $9a
	call z, $cbdc                                    ; $4cfe: $cc $dc $cb
	xor  c                                           ; $4d01: $a9
	add  a                                           ; $4d02: $87
	ld   [hl], a                                     ; $4d03: $77
	adc  b                                           ; $4d04: $88
	sbc  c                                           ; $4d05: $99
	sbc  b                                           ; $4d06: $98
	halt                                             ; $4d07: $76
	ld   d, e                                        ; $4d08: $53
	inc  [hl]                                        ; $4d09: $34
	ld   b, l                                        ; $4d0a: $45
	ld   [hl], a                                     ; $4d0b: $77
	sbc  e                                           ; $4d0c: $9b
	call z, $b9cc                                    ; $4d0d: $cc $cc $b9
	sbc  c                                           ; $4d10: $99
	ld   [hl], a                                     ; $4d11: $77
	ld   a, b                                        ; $4d12: $78
	adc  c                                           ; $4d13: $89
	adc  c                                           ; $4d14: $89
	add  a                                           ; $4d15: $87
	ld   h, l                                        ; $4d16: $65
	ld   b, h                                        ; $4d17: $44
	ld   d, h                                        ; $4d18: $54
	ld   h, a                                        ; $4d19: $67
	ld   a, b                                        ; $4d1a: $78
	sbc  d                                           ; $4d1b: $9a
	cp   e                                           ; $4d1c: $bb
	cp   e                                           ; $4d1d: $bb
	xor  c                                           ; $4d1e: $a9
	adc  b                                           ; $4d1f: $88
	add  a                                           ; $4d20: $87
	adc  b                                           ; $4d21: $88
	adc  c                                           ; $4d22: $89
	sbc  b                                           ; $4d23: $98
	ld   [hl], a                                     ; $4d24: $77
	ld   h, l                                        ; $4d25: $65
	ld   d, [hl]                                     ; $4d26: $56
	ld   d, l                                        ; $4d27: $55
	ld   [hl], a                                     ; $4d28: $77
	ld   a, c                                        ; $4d29: $79
	xor  d                                           ; $4d2a: $aa
	xor  e                                           ; $4d2b: $ab
	xor  c                                           ; $4d2c: $a9
	xor  c                                           ; $4d2d: $a9
	adc  b                                           ; $4d2e: $88
	add  a                                           ; $4d2f: $87
	adc  b                                           ; $4d30: $88
	adc  b                                           ; $4d31: $88
	add  a                                           ; $4d32: $87
	ld   [hl], a                                     ; $4d33: $77
	halt                                             ; $4d34: $76
	ld   h, [hl]                                     ; $4d35: $66
	ld   h, [hl]                                     ; $4d36: $66
	ld   [hl], a                                     ; $4d37: $77
	adc  c                                           ; $4d38: $89
	sbc  c                                           ; $4d39: $99
	xor  d                                           ; $4d3a: $aa
	xor  c                                           ; $4d3b: $a9
	xor  b                                           ; $4d3c: $a8
	sbc  b                                           ; $4d3d: $98
	adc  b                                           ; $4d3e: $88
	adc  b                                           ; $4d3f: $88
	adc  b                                           ; $4d40: $88
	adc  b                                           ; $4d41: $88
	ld   [hl], a                                     ; $4d42: $77
	halt                                             ; $4d43: $76
	ld   h, a                                        ; $4d44: $67
	ld   h, [hl]                                     ; $4d45: $66
	add  a                                           ; $4d46: $87
	ld   a, b                                        ; $4d47: $78
	adc  b                                           ; $4d48: $88
	xor  d                                           ; $4d49: $aa
	xor  c                                           ; $4d4a: $a9
	sbc  b                                           ; $4d4b: $98
	sbc  c                                           ; $4d4c: $99
	adc  b                                           ; $4d4d: $88
	adc  b                                           ; $4d4e: $88
	adc  b                                           ; $4d4f: $88
	adc  b                                           ; $4d50: $88
	add  a                                           ; $4d51: $87
	ld   [hl], a                                     ; $4d52: $77
	ld   [hl], a                                     ; $4d53: $77
	ld   [hl], a                                     ; $4d54: $77
	ld   [hl], a                                     ; $4d55: $77
	ld   a, b                                        ; $4d56: $78
	sbc  c                                           ; $4d57: $99
	adc  c                                           ; $4d58: $89
	sbc  c                                           ; $4d59: $99
	sbc  c                                           ; $4d5a: $99
	sbc  b                                           ; $4d5b: $98
	adc  b                                           ; $4d5c: $88
	sbc  b                                           ; $4d5d: $98
	adc  c                                           ; $4d5e: $89
	sbc  b                                           ; $4d5f: $98
	adc  b                                           ; $4d60: $88
	ld   a, b                                        ; $4d61: $78
	ld   [hl], a                                     ; $4d62: $77
	ld   [hl], a                                     ; $4d63: $77
	ld   [hl], a                                     ; $4d64: $77
	ld   a, b                                        ; $4d65: $78
	adc  b                                           ; $4d66: $88
	sbc  c                                           ; $4d67: $99
	adc  b                                           ; $4d68: $88
	sbc  b                                           ; $4d69: $98
	adc  c                                           ; $4d6a: $89
	sbc  b                                           ; $4d6b: $98
	adc  b                                           ; $4d6c: $88
	sbc  c                                           ; $4d6d: $99
	sbc  c                                           ; $4d6e: $99
	adc  b                                           ; $4d6f: $88
	adc  b                                           ; $4d70: $88
	ld   [hl], a                                     ; $4d71: $77
	ld   [hl], a                                     ; $4d72: $77
	ld   [hl], a                                     ; $4d73: $77
	add  a                                           ; $4d74: $87
	adc  b                                           ; $4d75: $88
	adc  b                                           ; $4d76: $88
	sbc  b                                           ; $4d77: $98
	adc  b                                           ; $4d78: $88
	sbc  b                                           ; $4d79: $98
	sbc  c                                           ; $4d7a: $99
	adc  b                                           ; $4d7b: $88
	sbc  c                                           ; $4d7c: $99
	sbc  c                                           ; $4d7d: $99
	sbc  c                                           ; $4d7e: $99
	sub  a                                           ; $4d7f: $97
	adc  b                                           ; $4d80: $88
	ld   [hl], a                                     ; $4d81: $77
	ld   [hl], a                                     ; $4d82: $77
	ld   a, b                                        ; $4d83: $78
	ld   [hl], a                                     ; $4d84: $77
	adc  b                                           ; $4d85: $88
	adc  b                                           ; $4d86: $88
	adc  b                                           ; $4d87: $88
	adc  b                                           ; $4d88: $88
	adc  b                                           ; $4d89: $88
	sbc  c                                           ; $4d8a: $99
	sbc  c                                           ; $4d8b: $99
	sbc  b                                           ; $4d8c: $98
	adc  b                                           ; $4d8d: $88
	adc  b                                           ; $4d8e: $88
	ld   [hl], a                                     ; $4d8f: $77
	add  a                                           ; $4d90: $87
	ld   a, b                                        ; $4d91: $78
	ld   [hl], a                                     ; $4d92: $77
	adc  b                                           ; $4d93: $88
	ld   a, b                                        ; $4d94: $78
	adc  b                                           ; $4d95: $88
	adc  b                                           ; $4d96: $88
	adc  b                                           ; $4d97: $88
	sbc  b                                           ; $4d98: $98
	adc  c                                           ; $4d99: $89
	adc  b                                           ; $4d9a: $88
	sbc  c                                           ; $4d9b: $99
	sbc  b                                           ; $4d9c: $98
	adc  b                                           ; $4d9d: $88
	add  a                                           ; $4d9e: $87
	ld   a, b                                        ; $4d9f: $78
	add  a                                           ; $4da0: $87
	adc  b                                           ; $4da1: $88
	ld   a, b                                        ; $4da2: $78
	adc  b                                           ; $4da3: $88
	adc  b                                           ; $4da4: $88
	adc  b                                           ; $4da5: $88
	adc  b                                           ; $4da6: $88
	adc  b                                           ; $4da7: $88
	sbc  c                                           ; $4da8: $99
	adc  b                                           ; $4da9: $88
	sbc  b                                           ; $4daa: $98
	sbc  c                                           ; $4dab: $99
	adc  b                                           ; $4dac: $88
	adc  b                                           ; $4dad: $88
	adc  b                                           ; $4dae: $88
	adc  b                                           ; $4daf: $88
	adc  b                                           ; $4db0: $88
	adc  b                                           ; $4db1: $88
	adc  b                                           ; $4db2: $88
	adc  b                                           ; $4db3: $88
	adc  b                                           ; $4db4: $88
	ld   a, b                                        ; $4db5: $78
	adc  b                                           ; $4db6: $88
	adc  c                                           ; $4db7: $89
	sbc  c                                           ; $4db8: $99
	sbc  c                                           ; $4db9: $99
	sbc  b                                           ; $4dba: $98
	adc  b                                           ; $4dbb: $88
	adc  b                                           ; $4dbc: $88
	adc  c                                           ; $4dbd: $89
	adc  b                                           ; $4dbe: $88
	sbc  b                                           ; $4dbf: $98
	adc  c                                           ; $4dc0: $89
	adc  b                                           ; $4dc1: $88
	add  a                                           ; $4dc2: $87
	adc  b                                           ; $4dc3: $88
	ld   a, b                                        ; $4dc4: $78
	adc  b                                           ; $4dc5: $88
	adc  b                                           ; $4dc6: $88
	adc  c                                           ; $4dc7: $89
	adc  b                                           ; $4dc8: $88
	sbc  c                                           ; $4dc9: $99
	adc  b                                           ; $4dca: $88
	adc  b                                           ; $4dcb: $88
	adc  b                                           ; $4dcc: $88
	sbc  b                                           ; $4dcd: $98
	adc  b                                           ; $4dce: $88
	ld   a, b                                        ; $4dcf: $78
	adc  b                                           ; $4dd0: $88
	adc  b                                           ; $4dd1: $88
	ld   a, b                                        ; $4dd2: $78
	adc  b                                           ; $4dd3: $88
	adc  b                                           ; $4dd4: $88
	sbc  b                                           ; $4dd5: $98
	adc  c                                           ; $4dd6: $89
	adc  b                                           ; $4dd7: $88
	sbc  b                                           ; $4dd8: $98
	adc  c                                           ; $4dd9: $89
	adc  b                                           ; $4dda: $88
	adc  b                                           ; $4ddb: $88
	adc  b                                           ; $4ddc: $88
	adc  b                                           ; $4ddd: $88
	adc  b                                           ; $4dde: $88
	add  a                                           ; $4ddf: $87
	adc  b                                           ; $4de0: $88
	ld   a, b                                        ; $4de1: $78
	adc  b                                           ; $4de2: $88
	adc  b                                           ; $4de3: $88
	adc  b                                           ; $4de4: $88
	adc  b                                           ; $4de5: $88
	adc  b                                           ; $4de6: $88
	sbc  b                                           ; $4de7: $98
	adc  c                                           ; $4de8: $89
	adc  b                                           ; $4de9: $88
	adc  b                                           ; $4dea: $88
	adc  b                                           ; $4deb: $88
	adc  b                                           ; $4dec: $88
	adc  b                                           ; $4ded: $88
	adc  b                                           ; $4dee: $88
	ld   a, b                                        ; $4def: $78
	add  a                                           ; $4df0: $87
	adc  b                                           ; $4df1: $88
	adc  c                                           ; $4df2: $89
	sbc  b                                           ; $4df3: $98
	adc  c                                           ; $4df4: $89
	adc  b                                           ; $4df5: $88
	adc  b                                           ; $4df6: $88
	adc  b                                           ; $4df7: $88
	adc  b                                           ; $4df8: $88
	sub  a                                           ; $4df9: $97
	ld   a, b                                        ; $4dfa: $78
	ld   [hl], a                                     ; $4dfb: $77
	ld   [hl], a                                     ; $4dfc: $77
	ld   [hl], a                                     ; $4dfd: $77
	ld   [hl], a                                     ; $4dfe: $77
	adc  b                                           ; $4dff: $88
	adc  b                                           ; $4e00: $88
	sbc  b                                           ; $4e01: $98
	sbc  c                                           ; $4e02: $99
	adc  c                                           ; $4e03: $89
	sbc  c                                           ; $4e04: $99
	sbc  b                                           ; $4e05: $98
	adc  b                                           ; $4e06: $88
	sub  a                                           ; $4e07: $97
	ld   [hl], a                                     ; $4e08: $77
	halt                                             ; $4e09: $76
	ld   [hl], a                                     ; $4e0a: $77
	ld   h, a                                        ; $4e0b: $67
	ld   [hl], a                                     ; $4e0c: $77
	adc  c                                           ; $4e0d: $89
	adc  c                                           ; $4e0e: $89
	xor  d                                           ; $4e0f: $aa
	sbc  d                                           ; $4e10: $9a
	sbc  d                                           ; $4e11: $9a
	sbc  c                                           ; $4e12: $99
	sbc  b                                           ; $4e13: $98
	adc  b                                           ; $4e14: $88
	ld   [hl], a                                     ; $4e15: $77
	ld   h, [hl]                                     ; $4e16: $66
	ld   h, [hl]                                     ; $4e17: $66
	halt                                             ; $4e18: $76
	ld   h, a                                        ; $4e19: $67
	ld   a, c                                        ; $4e1a: $79
	sbc  c                                           ; $4e1b: $99
	xor  d                                           ; $4e1c: $aa
	xor  e                                           ; $4e1d: $ab
	xor  d                                           ; $4e1e: $aa
	xor  c                                           ; $4e1f: $a9
	sbc  c                                           ; $4e20: $99
	ld   a, b                                        ; $4e21: $78
	halt                                             ; $4e22: $76
	ld   h, [hl]                                     ; $4e23: $66
	ld   d, l                                        ; $4e24: $55
	ld   h, l                                        ; $4e25: $65
	ld   h, a                                        ; $4e26: $67
	ld   a, b                                        ; $4e27: $78
	adc  d                                           ; $4e28: $8a
	cp   d                                           ; $4e29: $ba
	cp   h                                           ; $4e2a: $bc
	cp   e                                           ; $4e2b: $bb
	cp   c                                           ; $4e2c: $b9
	sbc  b                                           ; $4e2d: $98
	adc  b                                           ; $4e2e: $88
	halt                                             ; $4e2f: $76
	ld   d, h                                        ; $4e30: $54
	inc  [hl]                                        ; $4e31: $34
	ld   d, h                                        ; $4e32: $54
	ld   d, a                                        ; $4e33: $57
	ld   l, b                                        ; $4e34: $68
	xor  d                                           ; $4e35: $aa
	call z, $cbcd                                    ; $4e36: $cc $cd $cb
	cp   c                                           ; $4e39: $b9
	sbc  b                                           ; $4e3a: $98
	ld   [hl], a                                     ; $4e3b: $77
	ld   h, l                                        ; $4e3c: $65
	ld   b, e                                        ; $4e3d: $43
	inc  h                                           ; $4e3e: $24
	ld   b, e                                        ; $4e3f: $43
	halt                                             ; $4e40: $76
	ld   a, e                                        ; $4e41: $7b
	xor  h                                           ; $4e42: $ac
	db   $ed                                         ; $4e43: $ed
	db   $dd                                         ; $4e44: $dd
	cp   e                                           ; $4e45: $bb
	xor  c                                           ; $4e46: $a9
	adc  b                                           ; $4e47: $88
	halt                                             ; $4e48: $76
	ld   d, h                                        ; $4e49: $54
	ld   hl, $3643                                   ; $4e4a: $21 $43 $36
	ld   h, [hl]                                     ; $4e4d: $66
	xor  e                                           ; $4e4e: $ab
	call $dcdd                                       ; $4e4f: $cd $dd $dc
	res  3, b                                        ; $4e52: $cb $98
	ld   [hl], a                                     ; $4e54: $77
	ld   [hl], l                                     ; $4e55: $75
	ld   b, d                                        ; $4e56: $42
	inc  de                                          ; $4e57: $13
	ld   [hl-], a                                    ; $4e58: $32
	halt                                             ; $4e59: $76
	ld   l, e                                        ; $4e5a: $6b
	cp   h                                           ; $4e5b: $bc
	db   $fd                                         ; $4e5c: $fd
	xor  $bb                                         ; $4e5d: $ee $bb
	cp   b                                           ; $4e5f: $b8
	add  a                                           ; $4e60: $87
	halt                                             ; $4e61: $76
	ld   d, e                                        ; $4e62: $53
	ld   de, $4742                                   ; $4e63: $11 $42 $47
	ld   e, c                                        ; $4e66: $59
	cp   e                                           ; $4e67: $bb
	xor  $ce                                         ; $4e68: $ee $ce
	db   $db                                         ; $4e6a: $db
	jp   z, Jump_0c0_7698                            ; $4e6b: $ca $98 $76

	ld   h, h                                        ; $4e6e: $64
	ld   de, $1624                                   ; $4e6f: $11 $24 $16
	add  l                                           ; $4e72: $85
	cp   l                                           ; $4e73: $bd
	cp   a                                           ; $4e74: $bf
	db   $ed                                         ; $4e75: $ed
	db   $ec                                         ; $4e76: $ec
	xor  d                                           ; $4e77: $aa
	sbc  b                                           ; $4e78: $98
	ld   [hl], a                                     ; $4e79: $77
	ld   h, l                                        ; $4e7a: $65
	ld   hl, $2314                                   ; $4e7b: $21 $14 $23
	sub  l                                           ; $4e7e: $95
	adc  [hl]                                        ; $4e7f: $8e
	call $edfd                                       ; $4e80: $cd $fd $ed
	xor  d                                           ; $4e83: $aa
	adc  b                                           ; $4e84: $88
	ld   [hl], a                                     ; $4e85: $77
	ld   h, l                                        ; $4e86: $65
	ld   sp, $3213                                   ; $4e87: $31 $13 $32
	sub  [hl]                                        ; $4e8a: $96
	ld   a, [hl]                                     ; $4e8b: $7e
	adc  $fd                                         ; $4e8c: $ce $fd
	sbc  $aa                                         ; $4e8e: $de $aa
	sub  a                                           ; $4e90: $97
	ld   [hl], a                                     ; $4e91: $77
	ld   h, l                                        ; $4e92: $65
	ld   sp, $4213                                   ; $4e93: $31 $13 $42
	sbc  b                                           ; $4e96: $98
	ld   l, [hl]                                     ; $4e97: $6e
	db   $dd                                         ; $4e98: $dd
	cp   $dd                                         ; $4e99: $fe $dd
	xor  d                                           ; $4e9b: $aa
	add  a                                           ; $4e9c: $87
	ld   [hl], a                                     ; $4e9d: $77
	ld   h, l                                        ; $4e9e: $65
	ld   hl, $2314                                   ; $4e9f: $21 $14 $23
	sub  [hl]                                        ; $4ea2: $96
	sbc  [hl]                                        ; $4ea3: $9e
	sbc  $fe                                         ; $4ea4: $de $fe
	call z, $97a9                                    ; $4ea6: $cc $a9 $97
	ld   [hl], a                                     ; $4ea9: $77
	ld   h, h                                        ; $4eaa: $64
	ld   de, $2414                                   ; $4eab: $11 $14 $24
	and  [hl]                                        ; $4eae: $a6
	xor  a                                           ; $4eaf: $af
	rst  JumpTable                                         ; $4eb0: $df
	cp   $cc                                         ; $4eb1: $fe $cc
	sbc  c                                           ; $4eb3: $99
	sub  a                                           ; $4eb4: $97
	ld   h, [hl]                                     ; $4eb5: $66
	ld   d, e                                        ; $4eb6: $53
	ld   de, $2834                                   ; $4eb7: $11 $34 $28
	sub  [hl]                                        ; $4eba: $96
	rst  JumpTable                                         ; $4ebb: $df
	rst  $28                                         ; $4ebc: $ef
	db   $fc                                         ; $4ebd: $fc
	res  3, b                                        ; $4ebe: $cb $98
	ld   [hl], a                                     ; $4ec0: $77
	ld   h, [hl]                                     ; $4ec1: $66
	ld   b, c                                        ; $4ec2: $41
	ld   de, $4b52                                   ; $4ec3: $11 $52 $4b
	ld   l, c                                        ; $4ec6: $69
	cp   $df                                         ; $4ec7: $fe $df
	db   $db                                         ; $4ec9: $db
	ret                                              ; $4eca: $c9


	adc  b                                           ; $4ecb: $88
	halt                                             ; $4ecc: $76
	ld   h, l                                        ; $4ecd: $65
	ld   sp, $3314                                   ; $4ece: $31 $14 $33
	and  a                                           ; $4ed1: $a7
	ld   a, a                                        ; $4ed2: $7f
	db   $ec                                         ; $4ed3: $ec
	rst  $38                                         ; $4ed4: $ff
	xor  h                                           ; $4ed5: $ac
	cp   b                                           ; $4ed6: $b8
	sub  a                                           ; $4ed7: $97
	ld   h, [hl]                                     ; $4ed8: $66
	ld   d, e                                        ; $4ed9: $53
	ld   de, $2b43                                   ; $4eda: $11 $43 $2b
	ld   [hl], a                                     ; $4edd: $77
	rst  $38                                         ; $4ede: $ff
	rst  JumpTable                                         ; $4edf: $df
	ld   a, [$78cb]                                  ; $4ee0: $fa $cb $78
	add  [hl]                                        ; $4ee3: $86
	ld   d, l                                        ; $4ee4: $55
	ld   hl, $2415                                   ; $4ee5: $21 $15 $24
	rst  ToBoot                                         ; $4ee8: $c7
	adc  a                                           ; $4ee9: $8f
	db   $fc                                         ; $4eea: $fc
	rst  $38                                         ; $4eeb: $ff
	sbc  h                                           ; $4eec: $9c
	or   a                                           ; $4eed: $b7
	adc  b                                           ; $4eee: $88
	ld   h, l                                        ; $4eef: $65
	ld   d, c                                        ; $4ef0: $51
	inc  de                                          ; $4ef1: $13
	ld   d, c                                        ; $4ef2: $51
	ld   a, e                                        ; $4ef3: $7b
	ld   l, e                                        ; $4ef4: $6b
	db   $fd                                         ; $4ef5: $fd
	rst  JumpTable                                         ; $4ef6: $df
	jp   z, Jump_0c0_68c9                            ; $4ef7: $ca $c9 $68

	ld   [hl], l                                     ; $4efa: $75
	ld   d, e                                        ; $4efb: $53
	ld   de, $4b63                                   ; $4efc: $11 $63 $4b
	adc  c                                           ; $4eff: $89
	rst  $38                                         ; $4f00: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f01: $cf
	jp   hl                                          ; $4f02: $e9


	cp   d                                           ; $4f03: $ba
	ld   l, b                                        ; $4f04: $68
	ld   [hl], l                                     ; $4f05: $75
	ld   d, h                                        ; $4f06: $54
	ld   de, $3945                                   ; $4f07: $11 $45 $39
	or   a                                           ; $4f0a: $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f0b: $cf
	call $9bfa                                       ; $4f0c: $cd $fa $9b
	halt                                             ; $4f0f: $76
	sub  [hl]                                        ; $4f10: $96
	ld   b, l                                        ; $4f11: $45
	ld   bc, $3846                                   ; $4f12: $01 $46 $38
	cp   b                                           ; $4f15: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f16: $cf
	call c, $9cfa                                    ; $4f17: $dc $fa $9c
	add  [hl]                                        ; $4f1a: $86
	add  a                                           ; $4f1b: $87
	ld   b, h                                        ; $4f1c: $44
	ld   hl, $3737                                   ; $4f1d: $21 $37 $37
	ret  z                                           ; $4f20: $c8

	cp   a                                           ; $4f21: $bf
	db   $eb                                         ; $4f22: $eb
	ei                                               ; $4f23: $fb
	adc  h                                           ; $4f24: $8c
	sub  [hl]                                        ; $4f25: $96
	ld   [hl], a                                     ; $4f26: $77
	ld   b, h                                        ; $4f27: $44
	ld   hl, $4727                                   ; $4f28: $21 $27 $47
	ret                                              ; $4f2b: $c9


	xor  a                                           ; $4f2c: $af
	db   $fc                                         ; $4f2d: $fc
	db   $ed                                         ; $4f2e: $ed
	adc  e                                           ; $4f2f: $8b
	sub  l                                           ; $4f30: $95
	ld   h, [hl]                                     ; $4f31: $66
	inc  sp                                          ; $4f32: $33
	ld   de, $5837                                   ; $4f33: $11 $37 $58
	cp   d                                           ; $4f36: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f37: $cf
	db   $fc                                         ; $4f38: $fc
	db   $eb                                         ; $4f39: $eb
	adc  d                                           ; $4f3a: $8a
	halt                                             ; $4f3b: $76
	ld   h, [hl]                                     ; $4f3c: $66
	ld   [hl-], a                                    ; $4f3d: $32
	ld   de, $5947                                   ; $4f3e: $11 $47 $59
	cp   d                                           ; $4f41: $ba
	rst  $28                                         ; $4f42: $ef
	call c, $9afa                                    ; $4f43: $dc $fa $9a
	halt                                             ; $4f46: $76
	ld   h, l                                        ; $4f47: $65
	ld   [hl+], a                                    ; $4f48: $22
	ld   de, $6b66                                   ; $4f49: $11 $66 $6b
	cp   d                                           ; $4f4c: $ba
	rst  $38                                         ; $4f4d: $ff
	adc  $d9                                         ; $4f4e: $ce $d9
	sbc  d                                           ; $4f50: $9a
	halt                                             ; $4f51: $76
	ld   h, h                                        ; $4f52: $64
	ld   de, $6512                                   ; $4f53: $11 $12 $65
	adc  h                                           ; $4f56: $8c
	xor  l                                           ; $4f57: $ad
	rst  $38                                         ; $4f58: $ff
	adc  $c9                                         ; $4f59: $ce $c9
	xor  b                                           ; $4f5b: $a8
	ld   h, [hl]                                     ; $4f5c: $66
	ld   d, d                                        ; $4f5d: $52
	ld   de, $6514                                   ; $4f5e: $11 $14 $65
	xor  e                                           ; $4f61: $ab
	cp   [hl]                                        ; $4f62: $be
	cp   $de                                         ; $4f63: $fe $de
	xor  d                                           ; $4f65: $aa
	sub  a                                           ; $4f66: $97
	ld   h, l                                        ; $4f67: $65
	ld   b, c                                        ; $4f68: $41
	ld   de, $5725                                   ; $4f69: $11 $25 $57
	xor  e                                           ; $4f6c: $ab
	rst  JumpTable                                         ; $4f6d: $df
	db   $fd                                         ; $4f6e: $fd
	db   $ec                                         ; $4f6f: $ec
	xor  d                                           ; $4f70: $aa
	add  a                                           ; $4f71: $87
	ld   d, l                                        ; $4f72: $55
	ld   hl, $4411                                   ; $4f73: $21 $11 $44
	ld   e, c                                        ; $4f76: $59
	sbc  e                                           ; $4f77: $9b
	rst  $28                                         ; $4f78: $ef
	xor  $eb                                         ; $4f79: $ee $eb
	ret                                              ; $4f7b: $c9


	add  [hl]                                        ; $4f7c: $86
	ld   d, h                                        ; $4f7d: $54
	ld   de, $4513                                   ; $4f7e: $11 $13 $45
	adc  c                                           ; $4f81: $89
	cp   h                                           ; $4f82: $bc
	db   $fd                                         ; $4f83: $fd
	sbc  $cc                                         ; $4f84: $de $cc
	cp   c                                           ; $4f86: $b9
	halt                                             ; $4f87: $76
	ld   d, d                                        ; $4f88: $52
	ld   de, $4614                                   ; $4f89: $11 $14 $46
	sbc  c                                           ; $4f8c: $99
	cp   l                                           ; $4f8d: $bd
	db   $dd                                         ; $4f8e: $dd
	db   $ec                                         ; $4f8f: $ec
	call z, Call_0c0_7699                            ; $4f90: $cc $99 $76
	ld   b, e                                        ; $4f93: $43
	ld   hl, $5745                                   ; $4f94: $21 $45 $57
	adc  c                                           ; $4f97: $89
	cp   h                                           ; $4f98: $bc
	call c, $badb                                    ; $4f99: $dc $db $ba
	sbc  b                                           ; $4f9c: $98
	ld   h, [hl]                                     ; $4f9d: $66
	ld   b, h                                        ; $4f9e: $44
	inc  [hl]                                        ; $4f9f: $34
	ld   d, [hl]                                     ; $4fa0: $56
	ld   h, a                                        ; $4fa1: $67
	sbc  c                                           ; $4fa2: $99
	sbc  d                                           ; $4fa3: $9a
	cp   d                                           ; $4fa4: $ba
	xor  d                                           ; $4fa5: $aa
	sbc  c                                           ; $4fa6: $99
	adc  b                                           ; $4fa7: $88
	ld   [hl], a                                     ; $4fa8: $77
	ld   [hl], a                                     ; $4fa9: $77
	ld   [hl], a                                     ; $4faa: $77
	ld   a, b                                        ; $4fab: $78
	adc  b                                           ; $4fac: $88
	add  a                                           ; $4fad: $87
	ld   [hl], a                                     ; $4fae: $77
	ld   [hl], a                                     ; $4faf: $77
	ld   a, b                                        ; $4fb0: $78
	adc  b                                           ; $4fb1: $88
	adc  c                                           ; $4fb2: $89
	sbc  c                                           ; $4fb3: $99
	sbc  c                                           ; $4fb4: $99
	sbc  c                                           ; $4fb5: $99
	sbc  b                                           ; $4fb6: $98
	sbc  b                                           ; $4fb7: $98
	ld   [hl], a                                     ; $4fb8: $77
	halt                                             ; $4fb9: $76
	ld   h, [hl]                                     ; $4fba: $66
	ld   [hl], a                                     ; $4fbb: $77
	ld   a, b                                        ; $4fbc: $78
	adc  c                                           ; $4fbd: $89
	adc  b                                           ; $4fbe: $88
	sbc  c                                           ; $4fbf: $99
	sbc  c                                           ; $4fc0: $99
	adc  b                                           ; $4fc1: $88
	sbc  b                                           ; $4fc2: $98
	adc  b                                           ; $4fc3: $88
	ld   [hl], a                                     ; $4fc4: $77
	ld   [hl], a                                     ; $4fc5: $77
	ld   [hl], a                                     ; $4fc6: $77
	ld   [hl], a                                     ; $4fc7: $77
	adc  b                                           ; $4fc8: $88
	adc  b                                           ; $4fc9: $88
	sbc  c                                           ; $4fca: $99
	adc  b                                           ; $4fcb: $88
	sbc  c                                           ; $4fcc: $99
	sbc  b                                           ; $4fcd: $98
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
	sbc  b                                           ; $4fe6: $98
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
	sbc  b                                           ; $4ff2: $98
	adc  b                                           ; $4ff3: $88
	adc  b                                           ; $4ff4: $88
	adc  b                                           ; $4ff5: $88
	adc  b                                           ; $4ff6: $88
	adc  b                                           ; $4ff7: $88
	adc  b                                           ; $4ff8: $88
	adc  b                                           ; $4ff9: $88
	adc  b                                           ; $4ffa: $88
	adc  b                                           ; $4ffb: $88
	adc  c                                           ; $4ffc: $89
	sbc  b                                           ; $4ffd: $98
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

Call_0c0_5113:
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

Call_0c0_5175:
	adc  b                                           ; $5175: $88
	adc  b                                           ; $5176: $88

Jump_0c0_5177:
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
	adc  c                                           ; $518a: $89
	adc  b                                           ; $518b: $88
	adc  b                                           ; $518c: $88
	adc  b                                           ; $518d: $88
	adc  b                                           ; $518e: $88
	sbc  b                                           ; $518f: $98
	adc  b                                           ; $5190: $88
	sbc  c                                           ; $5191: $99
	adc  b                                           ; $5192: $88
	adc  b                                           ; $5193: $88
	adc  b                                           ; $5194: $88
	adc  c                                           ; $5195: $89
	adc  b                                           ; $5196: $88
	sbc  b                                           ; $5197: $98
	ld   a, b                                        ; $5198: $78
	adc  b                                           ; $5199: $88
	add  a                                           ; $519a: $87
	ld   a, b                                        ; $519b: $78
	adc  b                                           ; $519c: $88
	adc  b                                           ; $519d: $88
	ld   a, b                                        ; $519e: $78
	ld   [hl], a                                     ; $519f: $77
	adc  b                                           ; $51a0: $88
	adc  b                                           ; $51a1: $88
	adc  b                                           ; $51a2: $88
	ld   [hl], a                                     ; $51a3: $77
	ld   h, [hl]                                     ; $51a4: $66
	ld   h, a                                        ; $51a5: $67
	ld   [hl], a                                     ; $51a6: $77
	adc  c                                           ; $51a7: $89
	xor  e                                           ; $51a8: $ab
	cp   e                                           ; $51a9: $bb
	cp   d                                           ; $51aa: $ba
	add  a                                           ; $51ab: $87
	ld   b, c                                        ; $51ac: $41
	jr   c, @+$17                                    ; $51ad: $38 $15

	sbc  b                                           ; $51af: $98
	cp   c                                           ; $51b0: $b9
	db   $fc                                         ; $51b1: $fc
	xor  l                                           ; $51b2: $ad
	ld   a, c                                        ; $51b3: $79
	ld   d, h                                        ; $51b4: $54
	ld   b, h                                        ; $51b5: $44
	ld   h, a                                        ; $51b6: $67
	sbc  h                                           ; $51b7: $9c
	call z, $94ba                                    ; $51b8: $cc $ba $94
	ld   [hl-], a                                    ; $51bb: $32
	ld   b, c                                        ; $51bc: $41
	ld   c, b                                        ; $51bd: $48
	adc  e                                           ; $51be: $8b
	rst  JumpTable                                         ; $51bf: $df
	xor  $ea                                         ; $51c0: $ee $ea
	sub  l                                           ; $51c2: $95
	ld   sp, $f111                                   ; $51c3: $31 $11 $f1
	ld   a, a                                        ; $51c6: $7f
	rst  $38                                         ; $51c7: $ff
	ld   c, a                                        ; $51c8: $4f
	sub  c                                           ; $51c9: $91
	call nc, Call_0c0_6b31                           ; $51ca: $d4 $31 $6b
	ld   l, c                                        ; $51cd: $69
	rst  $38                                         ; $51ce: $ff
	jp   c, $11e8                                    ; $51cf: $da $e8 $11

jr_0c0_51d2:
	ld   d, $22                                      ; $51d2: $16 $22
	rst  $38                                         ; $51d4: $ff
	ei                                               ; $51d5: $fb
	rst  $38                                         ; $51d6: $ff
	dec  h                                           ; $51d7: $25
	sub  [hl]                                        ; $51d8: $96
	inc  hl                                          ; $51d9: $23
	or   l                                           ; $51da: $b5
	ld   l, d                                        ; $51db: $6a
	and  e                                           ; $51dc: $a3
	ld   c, a                                        ; $51dd: $4f
	ld   d, e                                        ; $51de: $53
	cp   h                                           ; $51df: $bc
	and  l                                           ; $51e0: $a5
	cp   $6b                                         ; $51e1: $fe $6b
	cp   c                                           ; $51e3: $b9
	dec  [hl]                                        ; $51e4: $35
	ld   b, c                                        ; $51e5: $41
	dec  de                                          ; $51e6: $1b
	pop  af                                          ; $51e7: $f1
	rst  $38                                         ; $51e8: $ff
	push af                                          ; $51e9: $f5
	rra                                              ; $51ea: $1f
	ld   de, $919c                                   ; $51eb: $11 $9c $91
	rst  $38                                         ; $51ee: $ff
	ld   h, [hl]                                     ; $51ef: $66
	xor  b                                           ; $51f0: $a8
	ld   de, $931f                                   ; $51f1: $11 $1f $93
	rst  $38                                         ; $51f4: $ff
	or   h                                           ; $51f5: $b4
	cp   a                                           ; $51f6: $bf
	jr   jr_0c0_51d2                                 ; $51f7: $18 $d9

	ld   e, c                                        ; $51f9: $59
	db   $f4                                         ; $51fa: $f4
	inc  h                                           ; $51fb: $24
	ld   de, $7ff6                                   ; $51fc: $11 $f6 $7f
	sbc  $5f                                         ; $51ff: $de $5f
	and  c                                           ; $5201: $a1
	or   a                                           ; $5202: $b7
	and  [hl]                                        ; $5203: $a6
	ld   a, b                                        ; $5204: $78
	ld   de, $b11f                                   ; $5205: $11 $1f $b1
	rst  $38                                         ; $5208: $ff
	pop  bc                                          ; $5209: $c1
	rst  $38                                         ; $520a: $ff
	rla                                              ; $520b: $17
	rst  $38                                         ; $520c: $ff
	dec  h                                           ; $520d: $25
	pop  af                                          ; $520e: $f1
	ld   de, rAUD1LEN                                   ; $520f: $11 $11 $ff
	ld   a, a                                        ; $5212: $7f
	db   $ec                                         ; $5213: $ec
	ld   b, d                                        ; $5214: $42
	pop  hl                                          ; $5215: $e1
	ld   a, h                                        ; $5216: $7c
	cp   l                                           ; $5217: $bd
	ld   l, l                                        ; $5218: $6d
	ld   b, c                                        ; $5219: $41
	ld   de, $4d8f                                   ; $521a: $11 $8f $4d
	db   $fd                                         ; $521d: $fd
	ld   [hl], c                                     ; $521e: $71
	db   $f4                                         ; $521f: $f4
	rra                                              ; $5220: $1f
	adc  $4c                                         ; $5221: $ce $4c
	pop  bc                                          ; $5223: $c1
	ld   de, $793f                                   ; $5224: $11 $3f $79
	rst  $38                                         ; $5227: $ff
	add  c                                           ; $5228: $81
	call c, $ee1d                                    ; $5229: $dc $1d $ee
	ld   a, b                                        ; $522c: $78
	pop  hl                                          ; $522d: $e1
	ld   de, $c41f                                   ; $522e: $11 $1f $c4
	rst  $38                                         ; $5231: $ff
	add  c                                           ; $5232: $81
	sbc  a                                           ; $5233: $9f
	add  hl, de                                      ; $5234: $19
	rst  $38                                         ; $5235: $ff
	add  [hl]                                        ; $5236: $86
	pop  de                                          ; $5237: $d1
	ld   de, $f31f                                   ; $5238: $11 $1f $f3
	rst  $38                                         ; $523b: $ff
	ld   [hl], c                                     ; $523c: $71
	ld   c, a                                        ; $523d: $4f
	dec  d                                           ; $523e: $15
	rst  $38                                         ; $523f: $ff
	or   h                                           ; $5240: $b4
	jp   nz, $1f11                                   ; $5241: $c2 $11 $1f

	di                                               ; $5244: $f3
	rst  $38                                         ; $5245: $ff
	sub  c                                           ; $5246: $91
	rra                                              ; $5247: $1f
	inc  de                                          ; $5248: $13
	rst  $38                                         ; $5249: $ff
	or   e                                           ; $524a: $b3
	and  d                                           ; $524b: $a2
	ld   de, $f41f                                   ; $524c: $11 $1f $f4
	rst  $38                                         ; $524f: $ff
	add  c                                           ; $5250: $81
	cpl                                              ; $5251: $2f
	dec  d                                           ; $5252: $15
	rst  $38                                         ; $5253: $ff
	and  e                                           ; $5254: $a3
	and  c                                           ; $5255: $a1
	ld   de, $f71f                                   ; $5256: $11 $1f $f7
	rst  $38                                         ; $5259: $ff
	ld   h, c                                        ; $525a: $61
	adc  a                                           ; $525b: $8f
	ld   a, [de]                                     ; $525c: $1a
	rst  $38                                         ; $525d: $ff
	ld   [hl], d                                     ; $525e: $72
	sub  c                                           ; $525f: $91
	ld   de, $7fcf                                   ; $5260: $11 $cf $7f
	db   $fd                                         ; $5263: $fd
	ld   hl, $1ff6                                   ; $5264: $21 $f6 $1f
	rst  $38                                         ; $5267: $ff
	dec  h                                           ; $5268: $25
	ld   d, c                                        ; $5269: $51
	ld   de, $5fff                                   ; $526a: $11 $ff $5f
	or   $14                                         ; $526d: $f6 $14
	pop  af                                          ; $526f: $f1
	ld   l, a                                        ; $5270: $6f
	rst  $30                                         ; $5271: $f7
	rla                                              ; $5272: $17
	ld   de, $f71f                                   ; $5273: $11 $1f $f7
	rst  $38                                         ; $5276: $ff
	pop  bc                                          ; $5277: $c1
	rra                                              ; $5278: $1f
	ld   b, c                                        ; $5279: $41
	rst  $38                                         ; $527a: $ff
	or   c                                           ; $527b: $b1
	ld   d, c                                        ; $527c: $51
	ld   de, $8fef                                   ; $527d: $11 $ef $8f
	db   $fc                                         ; $5280: $fc
	ld   hl, $1ff8                                   ; $5281: $21 $f8 $1f
	ei                                               ; $5284: $fb
	inc  de                                          ; $5285: $13
	ld   de, $fb1d                                   ; $5286: $11 $1d $fb
	rst  JumpTable                                         ; $5289: $df
	db   $d3                                         ; $528a: $d3
	ld   e, $91                                      ; $528b: $1e $91
	rst  $38                                         ; $528d: $ff
	pop  bc                                          ; $528e: $c1
	ld   [hl+], a                                    ; $528f: $22
	ld   de, $eb9f                                   ; $5290: $11 $9f $eb
	db   $fd                                         ; $5293: $fd
	ld   d, c                                        ; $5294: $51
	cp   l                                           ; $5295: $bd
	ld   e, $fd                                      ; $5296: $1e $fd
	ld   de, $1721                                   ; $5298: $11 $21 $17
	rst  $38                                         ; $529b: $ff
	xor  a                                           ; $529c: $af
	call nc, $e11a                                   ; $529d: $d4 $1a $e1
	rst  $38                                         ; $52a0: $ff
	or   c                                           ; $52a1: $b1
	ld   de, $bf11                                   ; $52a2: $11 $11 $bf
	ei                                               ; $52a5: $fb
	ei                                               ; $52a6: $fb
	ld   hl, $1fcf                                   ; $52a7: $21 $cf $1f
	ld   hl, sp+$11                                  ; $52aa: $f8 $11
	ld   de, $ff1d                                   ; $52ac: $11 $1d $ff
	cp   a                                           ; $52af: $bf
	add  c                                           ; $52b0: $81
	dec  de                                          ; $52b1: $1b
	di                                               ; $52b2: $f3
	rst  $38                                         ; $52b3: $ff
	add  c                                           ; $52b4: $81
	ld   de, $df11                                   ; $52b5: $11 $11 $df

Call_0c0_52b8:
	ei                                               ; $52b8: $fb
	rst  $30                                         ; $52b9: $f7
	ld   de, $3fcf                                   ; $52ba: $11 $cf $3f
	ld   hl, sp+$11                                  ; $52bd: $f8 $11
	ld   bc, $ff1e                                   ; $52bf: $01 $1e $ff
	rst  $28                                         ; $52c2: $ef
	add  c                                           ; $52c3: $81
	dec  e                                           ; $52c4: $1d
	db   $d3                                         ; $52c5: $d3
	rst  $38                                         ; $52c6: $ff
	ld   [hl], c                                     ; $52c7: $71
	ld   [de], a                                     ; $52c8: $12
	ld   de, $fbaf                                   ; $52c9: $11 $af $fb
	ld   hl, sp+$11                                  ; $52cc: $f8 $11
	rst  JumpTable                                         ; $52ce: $df
	cpl                                              ; $52cf: $2f
	ld   hl, sp+$11                                  ; $52d0: $f8 $11
	ld   b, c                                        ; $52d2: $41
	rla                                              ; $52d3: $17
	rst  $38                                         ; $52d4: $ff
	xor  a                                           ; $52d5: $af
	sub  d                                           ; $52d6: $92
	ld   a, [de]                                     ; $52d7: $1a
	ldh  a, [c]                                      ; $52d8: $f2
	rst  JumpTable                                         ; $52d9: $df
	or   c                                           ; $52da: $b1
	ld   d, $11                                      ; $52db: $16 $11
	cpl                                              ; $52dd: $2f
	ld   hl, sp-$05                                  ; $52de: $f8 $fb
	ld   b, c                                        ; $52e0: $41
	cpl                                              ; $52e1: $2f
	ld   e, d                                        ; $52e2: $5a
	db   $fc                                         ; $52e3: $fc
	ld   b, c                                        ; $52e4: $41
	ld   h, c                                        ; $52e5: $61
	ld   de, $bdff                                   ; $52e6: $11 $ff $bd
	or   $11                                         ; $52e9: $f6 $11
	cp   $4f                                         ; $52eb: $fe $4f
	ld   sp, hl                                      ; $52ed: $f9
	ld   [de], a                                     ; $52ee: $12
	ld   h, c                                        ; $52ef: $61
	ld   [de], a                                     ; $52f0: $12
	rst  $38                                         ; $52f1: $ff
	ld   a, a                                        ; $52f2: $7f
	and  h                                           ; $52f3: $a4
	inc  de                                          ; $52f4: $13
	or   $af                                         ; $52f5: $f6 $af
	call nc, $3116                                   ; $52f7: $d4 $16 $31
	inc  e                                           ; $52fa: $1c
	cp   $af                                         ; $52fb: $fe $af
	ld   h, c                                        ; $52fd: $61
	rra                                              ; $52fe: $1f
	pop  af                                          ; $52ff: $f1
	rst  $38                                         ; $5300: $ff
	or   c                                           ; $5301: $b1
	rla                                              ; $5302: $17
	ld   de, $f71f                                   ; $5303: $11 $1f $f7
	db   $fc                                         ; $5306: $fc
	ld   b, c                                        ; $5307: $41
	rra                                              ; $5308: $1f
	add  [hl]                                        ; $5309: $86
	cp   $61                                         ; $530a: $fe $61
	ld   b, h                                        ; $530c: $44
	ld   de, $f97f                                   ; $530d: $11 $7f $f9
	ld   hl, sp+$21                                  ; $5310: $f8 $21
	xor  a                                           ; $5312: $af
	ld   e, $fb                                      ; $5313: $1e $fb
	ld   de, $1171                                   ; $5315: $11 $71 $11
	rst  $38                                         ; $5318: $ff
	sbc  [hl]                                        ; $5319: $9e
	push af                                          ; $531a: $f5
	ld   de, $3ffc                                   ; $531b: $11 $fc $3f
	jp   hl                                          ; $531e: $e9


	inc  de                                          ; $531f: $13
	ld   d, c                                        ; $5320: $51
	dec  d                                           ; $5321: $15
	rst  $38                                         ; $5322: $ff
	sbc  a                                           ; $5323: $9f
	or   e                                           ; $5324: $b3
	add  hl, de                                      ; $5325: $19
	pop  af                                          ; $5326: $f1
	rst  JumpTable                                         ; $5327: $df
	jp   nz, $1117                                   ; $5328: $c2 $17 $11

	rra                                              ; $532b: $1f
	ld   hl, sp-$01                                  ; $532c: $f8 $ff
	ld   d, c                                        ; $532e: $51
	rra                                              ; $532f: $1f
	ld   h, h                                        ; $5330: $64
	db   $fd                                         ; $5331: $fd
	ld   [hl], c                                     ; $5332: $71
	ld   d, d                                        ; $5333: $52
	ld   de, $bddf                                   ; $5334: $11 $df $bd
	ld   hl, sp+$11                                  ; $5337: $f8 $11
	db   $fd                                         ; $5339: $fd
	rra                                              ; $533a: $1f
	ld   [$5112], a                                  ; $533b: $ea $12 $51
	dec  d                                           ; $533e: $15
	rst  $38                                         ; $533f: $ff
	xor  a                                           ; $5340: $af
	call nz, $f11b                                   ; $5341: $c4 $1b $f1
	rst  $28                                         ; $5344: $ef
	and  e                                           ; $5345: $a3
	rla                                              ; $5346: $17
	ld   de, $f71f                                   ; $5347: $11 $1f $f7
	rst  $38                                         ; $534a: $ff
	ld   h, c                                        ; $534b: $61
	ld   c, a                                        ; $534c: $4f
	rla                                              ; $534d: $17
	ei                                               ; $534e: $fb
	ld   h, c                                        ; $534f: $61
	ld   h, c                                        ; $5350: $61
	ld   de, $7fff                                   ; $5351: $11 $ff $7f
	ld   hl, sp+$13                                  ; $5354: $f8 $13
	pop  af                                          ; $5356: $f1
	ld   l, a                                        ; $5357: $6f
	or   [hl]                                        ; $5358: $b6
	ld   d, $11                                      ; $5359: $16 $11
	rra                                              ; $535b: $1f
	rst  $30                                         ; $535c: $f7
	rst  $38                                         ; $535d: $ff
	sub  d                                           ; $535e: $92
	cpl                                              ; $535f: $2f
	inc  [hl]                                        ; $5360: $34
	ld   a, [$5172]                                  ; $5361: $fa $72 $51
	ld   de, $7fff                                   ; $5364: $11 $ff $7f
	ld   a, [$f134]                                  ; $5367: $fa $34 $f1
	ld   a, a                                        ; $536a: $7f
	and  l                                           ; $536b: $a5
	ld   b, e                                        ; $536c: $43
	ld   de, $ad6f                                   ; $536d: $11 $6f $ad
	db   $fd                                         ; $5370: $fd
	sub  e                                           ; $5371: $93
	xor  d                                           ; $5372: $aa
	inc  e                                           ; $5373: $1c
	push af                                          ; $5374: $f5
	ld   d, e                                        ; $5375: $53
	ld   de, $d81f                                   ; $5376: $11 $1f $d8
	rst  $38                                         ; $5379: $ff
	and  l                                           ; $537a: $a5
	ld   a, l                                        ; $537b: $7d
	add  hl, de                                      ; $537c: $19
	push hl                                          ; $537d: $e5
	ld   d, e                                        ; $537e: $53
	ld   de, $e71f                                   ; $537f: $11 $1f $e7
	rst  $38                                         ; $5382: $ff
	sbc  b                                           ; $5383: $98
	ld   a, l                                        ; $5384: $7d
	ld   d, $e4                                      ; $5385: $16 $e4

jr_0c0_5387:
	ld   b, h                                        ; $5387: $44

Jump_0c0_5388:
	ld   de, $d71f                                   ; $5388: $11 $1f $d7
	rst  $38                                         ; $538b: $ff
	sbc  c                                           ; $538c: $99
	sbc  e                                           ; $538d: $9b
	ld   d, $d3                                      ; $538e: $16 $d3
	ld   b, h                                        ; $5390: $44
	ld   de, $f61f                                   ; $5391: $11 $1f $f6
	rst  $38                                         ; $5394: $ff
	sbc  e                                           ; $5395: $9b
	adc  h                                           ; $5396: $8c
	dec  h                                           ; $5397: $25
	db   $d3                                         ; $5398: $d3
	inc  [hl]                                        ; $5399: $34
	ld   de, $e51f                                   ; $539a: $11 $1f $e5
	rst  $38                                         ; $539d: $ff
	adc  e                                           ; $539e: $8b
	sbc  h                                           ; $539f: $9c
	dec  h                                           ; $53a0: $25
	ldh  [c], a                                      ; $53a1: $e2
	dec  [hl]                                        ; $53a2: $35
	ld   de, $f61f                                   ; $53a3: $11 $1f $f6
	rst  $38                                         ; $53a6: $ff
	ld   a, d                                        ; $53a7: $7a
	xor  e                                           ; $53a8: $ab
	dec  [hl]                                        ; $53a9: $35
	db   $e3                                         ; $53aa: $e3
	dec  h                                           ; $53ab: $25
	ld   de, $e61f                                   ; $53ac: $11 $1f $e6
	rst  $38                                         ; $53af: $ff
	ld   a, d                                        ; $53b0: $7a
	sbc  e                                           ; $53b1: $9b
	ld   h, $d2                                      ; $53b2: $26 $d2
	dec  [hl]                                        ; $53b4: $35
	ld   de, $d61f                                   ; $53b5: $11 $1f $d6
	rst  $38                                         ; $53b8: $ff
	adc  e                                           ; $53b9: $8b
	xor  d                                           ; $53ba: $aa
	ld   h, $d2                                      ; $53bb: $26 $d2
	ld   [hl], $11                                   ; $53bd: $36 $11
	cpl                                              ; $53bf: $2f
	add  $ff                                         ; $53c0: $c6 $ff
	adc  h                                           ; $53c2: $8c
	xor  d                                           ; $53c3: $aa
	jr   jr_0c0_5387                                 ; $53c4: $18 $c1

	ld   d, [hl]                                     ; $53c6: $56
	ld   de, $a63f                                   ; $53c7: $11 $3f $a6
	rst  $38                                         ; $53ca: $ff
	adc  h                                           ; $53cb: $8c
	ret                                              ; $53cc: $c9


	rla                                              ; $53cd: $17
	or   c                                           ; $53ce: $b1
	ld   b, [hl]                                     ; $53cf: $46
	ld   de, $785f                                   ; $53d0: $11 $5f $78
	cp   $8e                                         ; $53d3: $fe $8e
	cp   c                                           ; $53d5: $b9
	ld   a, [de]                                     ; $53d6: $1a
	sub  c                                           ; $53d7: $91
	ld   h, l                                        ; $53d8: $65
	ld   de, $5a7f                                   ; $53d9: $11 $7f $5a
	ei                                               ; $53dc: $fb
	adc  [hl]                                        ; $53dd: $8e
	rst  ToBoot                                         ; $53de: $c7
	inc  e                                           ; $53df: $1c
	add  c                                           ; $53e0: $81
	ld   h, h                                        ; $53e1: $64
	ld   de, $3eaf                                   ; $53e2: $11 $af $3e
	ld   sp, hl                                      ; $53e5: $f9
	xor  [hl]                                        ; $53e6: $ae
	push bc                                          ; $53e7: $c5
	inc  l                                           ; $53e8: $2c
	ld   d, c                                        ; $53e9: $51
	ld   [hl], d                                     ; $53ea: $72
	ld   de, $2fce                                   ; $53eb: $11 $ce $2f
	rst  $30                                         ; $53ee: $f7
	cp   a                                           ; $53ef: $bf
	or   h                                           ; $53f0: $b4
	ld   e, l                                        ; $53f1: $5d
	ld   sp, $1271                                   ; $53f2: $31 $71 $12
	ld   a, [$f64f]                                  ; $53f5: $fa $4f $f6
	sbc  $82                                         ; $53f8: $de $82
	sbc  d                                           ; $53fa: $9a
	inc  de                                          ; $53fb: $13
	ld   [hl], c                                     ; $53fc: $71
	dec  d                                           ; $53fd: $15
	rst  $30                                         ; $53fe: $f7
	ld   a, a                                        ; $53ff: $7f
	rst  $30                                         ; $5400: $f7
	xor  $72                                         ; $5401: $ee $72
	xor  b                                           ; $5403: $a8
	inc  d                                           ; $5404: $14
	ld   h, c                                        ; $5405: $61
	ld   a, [de]                                     ; $5406: $1a
	db   $e3                                         ; $5407: $e3
	rst  $28                                         ; $5408: $ef
	xor  e                                           ; $5409: $ab
	db   $fc                                         ; $540a: $fc
	ld   b, l                                        ; $540b: $45
	call nz, $3117                                   ; $540c: $c4 $17 $31
	ld   e, $c2                                      ; $540f: $1e $c2

Call_0c0_5411:
	rst  $38                                         ; $5411: $ff
	ld   l, l                                        ; $5412: $6d
	ld   sp, hl                                      ; $5413: $f9
	scf                                              ; $5414: $37
	or   d                                           ; $5415: $b2
	daa                                              ; $5416: $27
	ld   de, $743f                                   ; $5417: $11 $3f $74
	rst  $38                                         ; $541a: $ff
	ld   l, a                                        ; $541b: $6f
	rst  $20                                         ; $541c: $e7
	ld   a, [hl-]                                    ; $541d: $3a
	add  c                                           ; $541e: $81
	ld   b, [hl]                                     ; $541f: $46
	ld   de, $3b8f                                   ; $5420: $11 $8f $3b
	ld   a, [$c48f]                                  ; $5423: $fa $8f $c4
	ld   e, e                                        ; $5426: $5b
	ld   d, c                                        ; $5427: $51
	ld   h, h                                        ; $5428: $64
	ld   de, $1fdc                                   ; $5429: $11 $dc $1f
	push af                                          ; $542c: $f5
	rst  $28                                         ; $542d: $ef
	and  e                                           ; $542e: $a3
	adc  e                                           ; $542f: $8b
	ld   [de], a                                     ; $5430: $12
	ld   [hl], c                                     ; $5431: $71
	dec  d                                           ; $5432: $15
	push af                                          ; $5433: $f5
	ld   l, a                                        ; $5434: $6f
	or   $fe                                         ; $5435: $f6 $fe
	ld   h, h                                        ; $5437: $64
	and  a                                           ; $5438: $a7
	dec  d                                           ; $5439: $15
	ld   h, c                                        ; $543a: $61
	dec  de                                          ; $543b: $1b
	pop  de                                          ; $543c: $d1
	rst  JumpTable                                         ; $543d: $df
	adc  d                                           ; $543e: $8a
	db   $fc                                         ; $543f: $fc
	ld   b, a                                        ; $5440: $47
	or   e                                           ; $5441: $b3
	ld   d, $21                                      ; $5442: $16 $21
	cpl                                              ; $5444: $2f
	ld   h, e                                        ; $5445: $63
	rst  $38                                         ; $5446: $ff
	ld   e, a                                        ; $5447: $5f
	rst  $30                                         ; $5448: $f7
	ld   c, d                                        ; $5449: $4a
	ld   [hl], c                                     ; $544a: $71
	ld   b, [hl]                                     ; $544b: $46
	ld   de, $2cae                                   ; $544c: $11 $ae $2c
	ld   sp, hl                                      ; $544f: $f9
	xor  a                                           ; $5450: $af
	or   l                                           ; $5451: $b5
	ld   a, d                                        ; $5452: $7a
	ld   b, c                                        ; $5453: $41
	ld   h, e                                        ; $5454: $63
	ld   de, $2ff6                                   ; $5455: $11 $f6 $2f
	or   $ff                                         ; $5458: $f6 $ff
	ld   [hl], l                                     ; $545a: $75
	sbc  b                                           ; $545b: $98
	inc  de                                          ; $545c: $13
	ld   h, c                                        ; $545d: $61
	ld   a, [de]                                     ; $545e: $1a
	pop  de                                          ; $545f: $d1
	rst  $28                                         ; $5460: $ef
	ld   a, l                                        ; $5461: $7d
	ld   a, [$9467]                                  ; $5462: $fa $67 $94
	ld   d, $21                                      ; $5465: $16 $21
	ld   a, $35                                      ; $5467: $3e $35
	cp   $7f                                         ; $5469: $fe $7f
	rst  $20                                         ; $546b: $e7
	ld   a, c                                        ; $546c: $79
	ld   h, c                                        ; $546d: $61
	dec  [hl]                                        ; $546e: $35
	ld   de, $1fc9                                   ; $546f: $11 $c9 $1f
	or   $ff                                         ; $5472: $f6 $ff
	add  a                                           ; $5474: $87
	adc  b                                           ; $5475: $88
	ld   sp, $1751                                   ; $5476: $31 $51 $17
	pop  hl                                          ; $5479: $e1
	xor  a                                           ; $547a: $af
	sbc  e                                           ; $547b: $9b
	ei                                               ; $547c: $fb
	ld   a, c                                        ; $547d: $79
	add  l                                           ; $547e: $85
	inc  hl                                          ; $547f: $23
	ld   sp, $452f                                   ; $5480: $31 $2f $45
	db   $fc                                         ; $5483: $fc
	sbc  a                                           ; $5484: $9f
	add  sp, -$78                                    ; $5485: $e8 $88
	ld   h, e                                        ; $5487: $63
	inc  h                                           ; $5488: $24
	ld   de, $2fc8                                   ; $5489: $11 $c8 $2f
	or   $ff                                         ; $548c: $f6 $ff
	adc  c                                           ; $548e: $89
	sub  [hl]                                        ; $548f: $96
	ld   b, c                                        ; $5490: $41
	ld   sp, $a11b                                   ; $5491: $31 $1b $a1
	rst  $38                                         ; $5494: $ff
	ld   a, a                                        ; $5495: $7f
	ld   sp, hl                                      ; $5496: $f9
	adc  c                                           ; $5497: $89
	ld   h, l                                        ; $5498: $65
	ld   [hl+], a                                    ; $5499: $22
	ld   de, $1e7c                                   ; $549a: $11 $7c $1e
	ld   hl, sp-$21                                  ; $549d: $f8 $df
	xor  c                                           ; $549f: $a9
	sub  a                                           ; $54a0: $97
	ld   h, d                                        ; $54a1: $62
	ld   [de], a                                     ; $54a2: $12
	dec  d                                           ; $54a3: $15
	jp   nz, $accf                                   ; $54a4: $c2 $cf $ac

	db   $fc                                         ; $54a7: $fc
	sbc  c                                           ; $54a8: $99
	halt                                             ; $54a9: $76
	ld   sp, $3c21                                   ; $54aa: $31 $21 $3c
	ld   c, c                                        ; $54ad: $49
	ei                                               ; $54ae: $fb
	cp   a                                           ; $54af: $bf
	reti                                             ; $54b0: $d9


	add  [hl]                                        ; $54b1: $86
	ld   h, l                                        ; $54b2: $65
	ld   de, $c512                                   ; $54b3: $11 $12 $c5
	ld   a, a                                        ; $54b6: $7f
	db   $eb                                         ; $54b7: $eb
	cp   $b9                                         ; $54b8: $fe $b9
	ld   h, [hl]                                     ; $54ba: $66
	ld   h, c                                        ; $54bb: $61
	ld   de, $583c                                   ; $54bc: $11 $3c $58
	cp   $df                                         ; $54bf: $fe $df
	db   $db                                         ; $54c1: $db
	and  l                                           ; $54c2: $a5
	ld   d, [hl]                                     ; $54c3: $56
	ld   de, $c613                                   ; $54c4: $11 $13 $c6
	adc  a                                           ; $54c7: $8f
	rst  $28                                         ; $54c8: $ef
	db   $eb                                         ; $54c9: $eb
	xor  e                                           ; $54ca: $ab
	ld   h, l                                        ; $54cb: $65
	ld   d, c                                        ; $54cc: $51
	ld   de, $7a3b                                   ; $54cd: $11 $3b $7a
	db   $ed                                         ; $54d0: $ed
	rst  $38                                         ; $54d1: $ff
	cp   e                                           ; $54d2: $bb
	sub  [hl]                                        ; $54d3: $96
	ld   h, l                                        ; $54d4: $65
	ld   de, $a912                                   ; $54d5: $11 $12 $a9
	cp   [hl]                                        ; $54d8: $be
	rst  JumpTable                                         ; $54d9: $df
	db   $fc                                         ; $54da: $fc
	cp   c                                           ; $54db: $b9
	ld   h, [hl]                                     ; $54dc: $66
	ld   d, c                                        ; $54dd: $51
	ld   de, $ac29                                   ; $54de: $11 $29 $ac
	call c, $dcef                                    ; $54e1: $dc $ef $dc
	add  l                                           ; $54e4: $85
	ld   h, l                                        ; $54e5: $65
	ld   hl, $8b13                                   ; $54e6: $21 $13 $8b
	db   $fd                                         ; $54e9: $fd
	cp   l                                           ; $54ea: $bd
	xor  $d8                                         ; $54eb: $ee $d8
	ld   d, l                                        ; $54ed: $55
	ld   b, d                                        ; $54ee: $42
	ld   de, $9e36                                   ; $54ef: $11 $36 $9e
	call c, $dddd                                    ; $54f2: $dc $dd $dd
	sub  [hl]                                        ; $54f5: $96
	ld   d, e                                        ; $54f6: $53
	ld   de, $6914                                   ; $54f7: $11 $14 $69
	db   $dd                                         ; $54fa: $dd
	call $c9dd                                       ; $54fb: $cd $dd $c9
	halt                                             ; $54fe: $76
	ld   [hl-], a                                    ; $54ff: $32
	ld   de, $9c46                                   ; $5500: $11 $46 $9c
	cp   l                                           ; $5503: $bd
	call c, $a8dd                                    ; $5504: $dc $dd $a8
	ld   h, e                                        ; $5507: $63
	ld   hl, $5814                                   ; $5508: $21 $14 $58
	cp   e                                           ; $550b: $bb
	cp   h                                           ; $550c: $bc
	call z, $87db                                    ; $550d: $cc $db $87
	ld   d, e                                        ; $5510: $53
	ld   hl, $8b45                                   ; $5511: $21 $45 $8b
	xor  e                                           ; $5514: $ab
	cp   d                                           ; $5515: $ba
	cp   h                                           ; $5516: $bc
	xor  d                                           ; $5517: $aa
	sub  [hl]                                        ; $5518: $96
	ld   d, h                                        ; $5519: $54
	inc  [hl]                                        ; $551a: $34
	ld   h, a                                        ; $551b: $67
	sbc  c                                           ; $551c: $99
	adc  c                                           ; $551d: $89
	xor  d                                           ; $551e: $aa
	cp   d                                           ; $551f: $ba
	xor  d                                           ; $5520: $aa
	add  a                                           ; $5521: $87
	ld   h, l                                        ; $5522: $65
	ld   d, [hl]                                     ; $5523: $56
	ld   [hl], a                                     ; $5524: $77
	add  a                                           ; $5525: $87
	ld   a, b                                        ; $5526: $78
	adc  c                                           ; $5527: $89
	cp   d                                           ; $5528: $ba
	xor  d                                           ; $5529: $aa
	adc  b                                           ; $552a: $88
	halt                                             ; $552b: $76
	ld   h, a                                        ; $552c: $67
	ld   h, a                                        ; $552d: $67
	halt                                             ; $552e: $76
	halt                                             ; $552f: $76
	ld   a, c                                        ; $5530: $79
	xor  d                                           ; $5531: $aa
	cp   e                                           ; $5532: $bb
	xor  c                                           ; $5533: $a9
	sub  a                                           ; $5534: $97
	ld   [hl], a                                     ; $5535: $77
	ld   h, a                                        ; $5536: $67
	ld   h, [hl]                                     ; $5537: $66
	ld   h, [hl]                                     ; $5538: $66
	ld   a, b                                        ; $5539: $78
	xor  e                                           ; $553a: $ab
	xor  e                                           ; $553b: $ab
	sbc  c                                           ; $553c: $99
	add  a                                           ; $553d: $87
	ld   [hl], a                                     ; $553e: $77
	ld   h, a                                        ; $553f: $67
	ld   h, [hl]                                     ; $5540: $66
	ld   h, [hl]                                     ; $5541: $66
	ld   a, c                                        ; $5542: $79
	xor  e                                           ; $5543: $ab
	xor  d                                           ; $5544: $aa
	xor  c                                           ; $5545: $a9
	sbc  b                                           ; $5546: $98
	add  a                                           ; $5547: $87
	ld   [hl], a                                     ; $5548: $77
	ld   h, [hl]                                     ; $5549: $66
	ld   d, l                                        ; $554a: $55
	ld   a, b                                        ; $554b: $78
	xor  e                                           ; $554c: $ab
	cp   e                                           ; $554d: $bb
	xor  c                                           ; $554e: $a9
	adc  b                                           ; $554f: $88
	ld   [hl], a                                     ; $5550: $77
	ld   [hl], a                                     ; $5551: $77
	ld   h, [hl]                                     ; $5552: $66
	ld   d, [hl]                                     ; $5553: $56
	ld   l, b                                        ; $5554: $68
	xor  d                                           ; $5555: $aa
	cp   d                                           ; $5556: $ba
	xor  d                                           ; $5557: $aa
	sbc  b                                           ; $5558: $98
	add  a                                           ; $5559: $87
	ld   [hl], a                                     ; $555a: $77
	ld   h, l                                        ; $555b: $65
	ld   d, l                                        ; $555c: $55
	ld   l, b                                        ; $555d: $68
	xor  d                                           ; $555e: $aa
	xor  e                                           ; $555f: $ab
	sbc  c                                           ; $5560: $99
	sbc  b                                           ; $5561: $98
	add  a                                           ; $5562: $87
	ld   [hl], a                                     ; $5563: $77
	ld   h, l                                        ; $5564: $65
	ld   d, l                                        ; $5565: $55
	ld   l, b                                        ; $5566: $68
	sbc  d                                           ; $5567: $9a
	xor  e                                           ; $5568: $ab
	xor  c                                           ; $5569: $a9
	sbc  c                                           ; $556a: $99
	add  a                                           ; $556b: $87
	ld   [hl], a                                     ; $556c: $77
	ld   h, l                                        ; $556d: $65
	ld   d, l                                        ; $556e: $55
	ld   h, a                                        ; $556f: $67
	sbc  d                                           ; $5570: $9a
	cp   e                                           ; $5571: $bb
	xor  c                                           ; $5572: $a9
	sbc  b                                           ; $5573: $98
	adc  b                                           ; $5574: $88
	ld   [hl], a                                     ; $5575: $77
	ld   h, l                                        ; $5576: $65
	ld   d, l                                        ; $5577: $55
	ld   d, a                                        ; $5578: $57
	adc  c                                           ; $5579: $89
	cp   e                                           ; $557a: $bb
	xor  d                                           ; $557b: $aa
	sbc  c                                           ; $557c: $99
	adc  b                                           ; $557d: $88
	ld   [hl], a                                     ; $557e: $77
	halt                                             ; $557f: $76
	ld   d, l                                        ; $5580: $55
	ld   d, a                                        ; $5581: $57
	sbc  d                                           ; $5582: $9a
	cp   e                                           ; $5583: $bb
	xor  d                                           ; $5584: $aa
	sbc  c                                           ; $5585: $99
	sbc  c                                           ; $5586: $99
	add  a                                           ; $5587: $87
	halt                                             ; $5588: $76
	ld   d, l                                        ; $5589: $55
	ld   d, [hl]                                     ; $558a: $56
	adc  c                                           ; $558b: $89
	xor  e                                           ; $558c: $ab
	xor  d                                           ; $558d: $aa
	sbc  c                                           ; $558e: $99
	adc  c                                           ; $558f: $89
	add  a                                           ; $5590: $87
	halt                                             ; $5591: $76
	ld   d, l                                        ; $5592: $55
	ld   d, [hl]                                     ; $5593: $56
	ld   a, c                                        ; $5594: $79
	xor  e                                           ; $5595: $ab
	xor  d                                           ; $5596: $aa
	sbc  d                                           ; $5597: $9a
	sbc  b                                           ; $5598: $98
	add  a                                           ; $5599: $87
	ld   [hl], a                                     ; $559a: $77
	ld   d, l                                        ; $559b: $55
	ld   d, l                                        ; $559c: $55
	ld   a, b                                        ; $559d: $78
	sbc  d                                           ; $559e: $9a
	xor  d                                           ; $559f: $aa
	sbc  d                                           ; $55a0: $9a
	sbc  b                                           ; $55a1: $98
	sbc  b                                           ; $55a2: $98
	ld   [hl], a                                     ; $55a3: $77
	ld   h, l                                        ; $55a4: $65
	ld   d, l                                        ; $55a5: $55

Call_0c0_55a6:
	ld   l, b                                        ; $55a6: $68

Call_0c0_55a7:
	sbc  d                                           ; $55a7: $9a
	xor  d                                           ; $55a8: $aa
	sbc  c                                           ; $55a9: $99
	sbc  b                                           ; $55aa: $98
	sbc  b                                           ; $55ab: $98
	add  a                                           ; $55ac: $87
	ld   h, l                                        ; $55ad: $65
	ld   d, l                                        ; $55ae: $55
	ld   l, b                                        ; $55af: $68
	sbc  d                                           ; $55b0: $9a
	xor  c                                           ; $55b1: $a9
	xor  c                                           ; $55b2: $a9
	xor  c                                           ; $55b3: $a9
	adc  c                                           ; $55b4: $89
	adc  b                                           ; $55b5: $88
	halt                                             ; $55b6: $76
	ld   d, l                                        ; $55b7: $55
	ld   d, a                                        ; $55b8: $57
	sbc  d                                           ; $55b9: $9a
	xor  d                                           ; $55ba: $aa
	sbc  d                                           ; $55bb: $9a
	xor  c                                           ; $55bc: $a9
	adc  b                                           ; $55bd: $88
	adc  b                                           ; $55be: $88
	halt                                             ; $55bf: $76
	ld   d, l                                        ; $55c0: $55
	ld   d, [hl]                                     ; $55c1: $56
	adc  c                                           ; $55c2: $89
	xor  c                                           ; $55c3: $a9
	xor  d                                           ; $55c4: $aa
	xor  d                                           ; $55c5: $aa
	sbc  b                                           ; $55c6: $98
	sbc  b                                           ; $55c7: $98
	add  [hl]                                        ; $55c8: $86
	ld   d, l                                        ; $55c9: $55
	ld   d, [hl]                                     ; $55ca: $56
	ld   a, c                                        ; $55cb: $79
	sbc  c                                           ; $55cc: $99
	xor  d                                           ; $55cd: $aa
	xor  d                                           ; $55ce: $aa
	sbc  c                                           ; $55cf: $99
	adc  c                                           ; $55d0: $89
	add  a                                           ; $55d1: $87
	ld   h, l                                        ; $55d2: $65
	ld   d, l                                        ; $55d3: $55
	ld   a, c                                        ; $55d4: $79
	xor  d                                           ; $55d5: $aa
	sbc  d                                           ; $55d6: $9a
	xor  d                                           ; $55d7: $aa
	xor  c                                           ; $55d8: $a9
	sbc  b                                           ; $55d9: $98
	sbc  b                                           ; $55da: $98
	ld   h, l                                        ; $55db: $65
	ld   d, l                                        ; $55dc: $55
	ld   l, b                                        ; $55dd: $68
	sbc  d                                           ; $55de: $9a
	sbc  c                                           ; $55df: $99
	sbc  d                                           ; $55e0: $9a
	xor  c                                           ; $55e1: $a9
	sbc  c                                           ; $55e2: $99
	sbc  c                                           ; $55e3: $99
	halt                                             ; $55e4: $76
	ld   d, l                                        ; $55e5: $55
	ld   h, a                                        ; $55e6: $67
	adc  c                                           ; $55e7: $89
	sbc  c                                           ; $55e8: $99
	sbc  d                                           ; $55e9: $9a
	sbc  c                                           ; $55ea: $99
	sbc  c                                           ; $55eb: $99
	sbc  b                                           ; $55ec: $98
	halt                                             ; $55ed: $76
	ld   d, h                                        ; $55ee: $54
	ld   d, a                                        ; $55ef: $57
	adc  c                                           ; $55f0: $89
	sbc  c                                           ; $55f1: $99
	sbc  c                                           ; $55f2: $99
	xor  c                                           ; $55f3: $a9
	sbc  c                                           ; $55f4: $99
	sbc  c                                           ; $55f5: $99
	add  [hl]                                        ; $55f6: $86
	ld   d, h                                        ; $55f7: $54
	ld   d, a                                        ; $55f8: $57
	adc  c                                           ; $55f9: $89
	sbc  b                                           ; $55fa: $98
	sbc  c                                           ; $55fb: $99
	sbc  d                                           ; $55fc: $9a
	sbc  c                                           ; $55fd: $99
	sbc  c                                           ; $55fe: $99
	add  a                                           ; $55ff: $87
	ld   d, h                                        ; $5600: $54
	ld   d, [hl]                                     ; $5601: $56
	ld   a, b                                        ; $5602: $78
	sbc  c                                           ; $5603: $99
	adc  c                                           ; $5604: $89
	xor  c                                           ; $5605: $a9
	sbc  d                                           ; $5606: $9a
	xor  d                                           ; $5607: $aa
	sub  a                                           ; $5608: $97
	ld   d, h                                        ; $5609: $54
	ld   b, [hl]                                     ; $560a: $46
	ld   a, c                                        ; $560b: $79
	adc  c                                           ; $560c: $89
	sbc  c                                           ; $560d: $99
	xor  c                                           ; $560e: $a9
	sbc  c                                           ; $560f: $99
	sbc  d                                           ; $5610: $9a
	xor  b                                           ; $5611: $a8
	ld   h, l                                        ; $5612: $65
	ld   b, l                                        ; $5613: $45
	ld   a, b                                        ; $5614: $78
	adc  c                                           ; $5615: $89
	adc  b                                           ; $5616: $88
	sbc  c                                           ; $5617: $99
	xor  c                                           ; $5618: $a9
	xor  c                                           ; $5619: $a9
	sbc  c                                           ; $561a: $99
	ld   h, l                                        ; $561b: $65
	ld   b, l                                        ; $561c: $45
	ld   a, b                                        ; $561d: $78
	adc  c                                           ; $561e: $89
	adc  b                                           ; $561f: $88
	sbc  c                                           ; $5620: $99
	xor  c                                           ; $5621: $a9
	sbc  c                                           ; $5622: $99
	xor  c                                           ; $5623: $a9
	ld   [hl], l                                     ; $5624: $75
	ld   b, l                                        ; $5625: $45
	ld   a, b                                        ; $5626: $78
	adc  c                                           ; $5627: $89
	adc  c                                           ; $5628: $89
	sbc  d                                           ; $5629: $9a
	xor  c                                           ; $562a: $a9
	sbc  c                                           ; $562b: $99
	xor  d                                           ; $562c: $aa
	ld   [hl], l                                     ; $562d: $75
	ld   b, l                                        ; $562e: $45
	ld   l, b                                        ; $562f: $68
	sbc  c                                           ; $5630: $99
	adc  b                                           ; $5631: $88
	adc  c                                           ; $5632: $89
	xor  c                                           ; $5633: $a9
	sbc  c                                           ; $5634: $99
	xor  d                                           ; $5635: $aa
	add  [hl]                                        ; $5636: $86
	ld   b, h                                        ; $5637: $44
	ld   h, a                                        ; $5638: $67
	sbc  c                                           ; $5639: $99
	adc  b                                           ; $563a: $88
	sbc  c                                           ; $563b: $99
	xor  c                                           ; $563c: $a9
	sbc  c                                           ; $563d: $99
	xor  d                                           ; $563e: $aa
	sub  [hl]                                        ; $563f: $96
	ld   d, h                                        ; $5640: $54
	ld   h, a                                        ; $5641: $67
	sbc  c                                           ; $5642: $99
	add  a                                           ; $5643: $87
	adc  c                                           ; $5644: $89
	sbc  c                                           ; $5645: $99
	sbc  c                                           ; $5646: $99
	xor  e                                           ; $5647: $ab
	add  [hl]                                        ; $5648: $86
	ld   d, h                                        ; $5649: $54
	ld   h, a                                        ; $564a: $67
	sbc  c                                           ; $564b: $99
	add  a                                           ; $564c: $87
	adc  b                                           ; $564d: $88
	sbc  c                                           ; $564e: $99
	sbc  c                                           ; $564f: $99
	cp   d                                           ; $5650: $ba
	sub  [hl]                                        ; $5651: $96
	ld   d, h                                        ; $5652: $54
	ld   h, a                                        ; $5653: $67
	sbc  c                                           ; $5654: $99
	add  a                                           ; $5655: $87
	adc  c                                           ; $5656: $89
	sbc  c                                           ; $5657: $99
	sbc  c                                           ; $5658: $99
	cp   d                                           ; $5659: $ba
	sub  a                                           ; $565a: $97
	ld   d, h                                        ; $565b: $54
	ld   h, a                                        ; $565c: $67
	adc  c                                           ; $565d: $89
	add  a                                           ; $565e: $87
	adc  c                                           ; $565f: $89
	sbc  b                                           ; $5660: $98
	adc  c                                           ; $5661: $89
	cp   e                                           ; $5662: $bb
	and  a                                           ; $5663: $a7
	ld   d, h                                        ; $5664: $54
	ld   h, a                                        ; $5665: $67
	adc  c                                           ; $5666: $89
	add  a                                           ; $5667: $87
	adc  c                                           ; $5668: $89
	adc  b                                           ; $5669: $88
	adc  c                                           ; $566a: $89
	cp   e                                           ; $566b: $bb
	sub  a                                           ; $566c: $97
	ld   d, h                                        ; $566d: $54
	ld   h, a                                        ; $566e: $67
	sbc  c                                           ; $566f: $99
	add  a                                           ; $5670: $87
	ld   a, b                                        ; $5671: $78
	adc  c                                           ; $5672: $89
	adc  c                                           ; $5673: $89
	xor  e                                           ; $5674: $ab
	and  [hl]                                        ; $5675: $a6
	ld   d, h                                        ; $5676: $54

Call_0c0_5677:
	ld   l, b                                        ; $5677: $68
	sbc  c                                           ; $5678: $99
	add  a                                           ; $5679: $87
	adc  b                                           ; $567a: $88
	ld   [hl], a                                     ; $567b: $77
	ld   a, c                                        ; $567c: $79
	sbc  e                                           ; $567d: $9b
	and  a                                           ; $567e: $a7
	ld   d, l                                        ; $567f: $55
	ld   a, d                                        ; $5680: $7a
	cp   e                                           ; $5681: $bb
	xor  b                                           ; $5682: $a8
	add  a                                           ; $5683: $87
	ld   d, h                                        ; $5684: $54
	ld   d, a                                        ; $5685: $57
	sbc  d                                           ; $5686: $9a
	sub  a                                           ; $5687: $97
	ld   h, a                                        ; $5688: $67
	xor  h                                           ; $5689: $ac
	db   $db                                         ; $568a: $db
	sbc  b                                           ; $568b: $98
	ld   h, h                                        ; $568c: $64
	ld   hl, $ab36                                   ; $568d: $21 $36 $ab
	xor  b                                           ; $5690: $a8
	sbc  e                                           ; $5691: $9b
	xor  $da                                         ; $5692: $ee $da
	halt                                             ; $5694: $76
	ld   sp, $4911                                   ; $5695: $31 $11 $49

Jump_0c0_5698:
	db   $dd                                         ; $5698: $dd
	cp   d                                           ; $5699: $ba
	xor  l                                           ; $569a: $ad
	db   $fd                                         ; $569b: $fd
	and  [hl]                                        ; $569c: $a6
	ld   b, e                                        ; $569d: $43
	ld   de, $9f14                                   ; $569e: $11 $14 $9f
	cp   $b9                                         ; $56a1: $fe $b9
	call Call_0c0_64c9                               ; $56a3: $cd $c9 $64
	ld   sp, $3911                                   ; $56a6: $31 $11 $39
	rst  $38                                         ; $56a9: $ff
	db   $fc                                         ; $56aa: $fc
	adc  b                                           ; $56ab: $88
	cp   h                                           ; $56ac: $bc
	and  a                                           ; $56ad: $a7
	ld   d, h                                        ; $56ae: $54
	ld   hl, $8e11                                   ; $56af: $21 $11 $8e
	rst  $38                                         ; $56b2: $ff
	ret  z                                           ; $56b3: $c8

	ld   a, c                                        ; $56b4: $79
	jp   z, Jump_0c0_4385                            ; $56b5: $ca $85 $43

	ld   de, $ef16                                   ; $56b8: $11 $16 $ef
	cp   $96                                         ; $56bb: $fe $96
	adc  d                                           ; $56bd: $8a
	cp   d                                           ; $56be: $ba
	ld   h, l                                        ; $56bf: $65
	ld   b, d                                        ; $56c0: $42
	ld   de, $ff4c                                   ; $56c1: $11 $4c $ff
	ld   sp, hl                                      ; $56c4: $f9
	ld   b, l                                        ; $56c5: $45
	sbc  e                                           ; $56c6: $9b
	cp   c                                           ; $56c7: $b9
	ld   h, h                                        ; $56c8: $64
	ld   hl, $af11                                   ; $56c9: $21 $11 $af
	rst  $38                                         ; $56cc: $ff
	and  h                                           ; $56cd: $a4
	daa                                              ; $56ce: $27
	cp   h                                           ; $56cf: $bc
	or   a                                           ; $56d0: $b7
	ld   h, e                                        ; $56d1: $63
	ld   de, $ff17                                   ; $56d2: $11 $17 $ff
	db   $fd                                         ; $56d5: $fd
	ld   b, c                                        ; $56d6: $41
	ld   c, e                                        ; $56d7: $4b
	db   $ed                                         ; $56d8: $ed
	sub  a                                           ; $56d9: $97
	ld   b, c                                        ; $56da: $41
	ld   de, $ff4f                                   ; $56db: $11 $4f $ff
	push hl                                          ; $56de: $e5
	ld   de, $fc9e                                   ; $56df: $11 $9e $fc
	ld   [hl], e                                     ; $56e2: $73
	ld   de, $ef11                                   ; $56e3: $11 $11 $ef
	rst  $38                                         ; $56e6: $ff
	ld   h, c                                        ; $56e7: $61
	rla                                              ; $56e8: $17
	rst  $38                                         ; $56e9: $ff
	ld   sp, hl                                      ; $56ea: $f9
	ld   sp, $1c11                                   ; $56eb: $31 $11 $1c
	rst  $38                                         ; $56ee: $ff
	rst  $30                                         ; $56ef: $f7
	ld   de, $ff5e                                   ; $56f0: $11 $5e $ff
	sub  e                                           ; $56f3: $93
	ld   de, $bf11                                   ; $56f4: $11 $11 $bf
	rst  $38                                         ; $56f7: $ff
	ld   [hl], c                                     ; $56f8: $71
	inc  d                                           ; $56f9: $14
	rst  $28                                         ; $56fa: $ef
	ld   a, [$1131]                                  ; $56fb: $fa $31 $11
	ld   a, [de]                                     ; $56fe: $1a
	rst  $38                                         ; $56ff: $ff
	ld   hl, sp+$11                                  ; $5700: $f8 $11
	dec  l                                           ; $5702: $2d
	rst  $38                                         ; $5703: $ff
	jp   $1111                                       ; $5704: $c3 $11 $11


	xor  a                                           ; $5707: $af
	rst  $38                                         ; $5708: $ff
	sub  c                                           ; $5709: $91
	ld   de, $fedf                                   ; $570a: $11 $df $fe
	ld   b, c                                        ; $570d: $41
	ld   de, $ff17                                   ; $570e: $11 $17 $ff
	db   $fc                                         ; $5711: $fc
	ld   de, $ff1a                                   ; $5712: $11 $1a $ff
	push af                                          ; $5715: $f5
	ld   de, $6f11                                   ; $5716: $11 $11 $6f
	rst  $38                                         ; $5719: $ff
	ldh  [c], a                                      ; $571a: $e2
	ld   de, $ff9f                                   ; $571b: $11 $9f $ff
	ld   [hl], c                                     ; $571e: $71
	ld   de, $df13                                   ; $571f: $11 $13 $df
	rst  $38                                         ; $5722: $ff
	ld   h, c                                        ; $5723: $61
	inc  d                                           ; $5724: $14
	rst  $38                                         ; $5725: $ff
	ld   a, [$1111]                                  ; $5726: $fa $11 $11
	dec  de                                          ; $5729: $1b
	rst  $38                                         ; $572a: $ff
	ld   sp, hl                                      ; $572b: $f9
	ld   de, $ff1f                                   ; $572c: $11 $1f $ff
	ldh  [c], a                                      ; $572f: $e2
	ld   de, $9f11                                   ; $5730: $11 $11 $9f
	rst  $38                                         ; $5733: $ff
	pop  bc                                          ; $5734: $c1
	ld   de, $ffbf                                   ; $5735: $11 $bf $ff
	ld   b, c                                        ; $5738: $41
	ld   de, $ef15                                   ; $5739: $11 $15 $ef
	rst  $38                                         ; $573c: $ff
	ld   b, c                                        ; $573d: $41
	ld   d, $ff                                      ; $573e: $16 $ff
	ld   hl, sp+$11                                  ; $5740: $f8 $11
	ld   de, $ff3c                                   ; $5742: $11 $3c $ff
	rst  $30                                         ; $5745: $f7
	ld   de, $ff1f                                   ; $5746: $11 $1f $ff
	pop  de                                          ; $5749: $d1
	ld   de, $8f11                                   ; $574a: $11 $11 $8f
	rst  $38                                         ; $574d: $ff
	pop  bc                                          ; $574e: $c1
	ld   de, $ffbf                                   ; $574f: $11 $bf $ff
	ld   sp, $1511                                   ; $5752: $31 $11 $15
	rst  $28                                         ; $5755: $ef
	rst  $38                                         ; $5756: $ff
	ld   b, c                                        ; $5757: $41
	ld   d, $ff                                      ; $5758: $16 $ff
	rst  $30                                         ; $575a: $f7
	ld   de, $2b11                                   ; $575b: $11 $11 $2b
	rst  $38                                         ; $575e: $ff
	ld   hl, sp+$11                                  ; $575f: $f8 $11
	rra                                              ; $5761: $1f
	rst  $38                                         ; $5762: $ff
	pop  bc                                          ; $5763: $c1
	ld   de, $8f11                                   ; $5764: $11 $11 $8f
	rst  $38                                         ; $5767: $ff
	pop  bc                                          ; $5768: $c1
	ld   de, $ffdf                                   ; $5769: $11 $df $ff
	ld   de, $1611                                   ; $576c: $11 $11 $16
	rst  $38                                         ; $576f: $ff
	cp   $11                                         ; $5770: $fe $11
	ld   a, [de]                                     ; $5772: $1a
	rst  $38                                         ; $5773: $ff
	di                                               ; $5774: $f3
	ld   de, $5e11                                   ; $5775: $11 $11 $5e
	rst  $38                                         ; $5778: $ff
	ldh  a, [c]                                      ; $5779: $f2
	ld   de, $ff9f                                   ; $577a: $11 $9f $ff
	ld   b, c                                        ; $577d: $41
	ld   de, $ef13                                   ; $577e: $11 $13 $ef
	rst  $38                                         ; $5781: $ff
	ld   sp, $ff17                                   ; $5782: $31 $17 $ff
	db   $f4                                         ; $5785: $f4
	ld   de, $3d11                                   ; $5786: $11 $11 $3d
	rst  $38                                         ; $5789: $ff
	di                                               ; $578a: $f3
	ld   de, $ff8f                                   ; $578b: $11 $8f $ff
	ld   b, c                                        ; $578e: $41
	ld   de, $ef13                                   ; $578f: $11 $13 $ef
	rst  $38                                         ; $5792: $ff
	ld   hl, $ff19                                   ; $5793: $21 $19 $ff
	di                                               ; $5796: $f3
	ld   de, $5f11                                   ; $5797: $11 $11 $5f
	rst  $38                                         ; $579a: $ff
	pop  de                                          ; $579b: $d1
	ld   de, $feef                                   ; $579c: $11 $ef $fe
	ld   de, $1711                                   ; $579f: $11 $11 $17
	rst  $38                                         ; $57a2: $ff
	ld   sp, hl                                      ; $57a3: $f9
	ld   de, $ff3f                                   ; $57a4: $11 $3f $ff
	sub  c                                           ; $57a7: $91
	ld   de, $ef11                                   ; $57a8: $11 $11 $ef
	rst  $38                                         ; $57ab: $ff
	ld   sp, $ff1d                                   ; $57ac: $31 $1d $ff
	call nz, $1111                                   ; $57af: $c4 $11 $11
	sbc  a                                           ; $57b2: $9f
	rst  $38                                         ; $57b3: $ff
	ld   [hl], c                                     ; $57b4: $71
	add  hl, de                                      ; $57b5: $19
	rst  $38                                         ; $57b6: $ff
	or   $31                                         ; $57b7: $f6 $31
	ld   de, $ff3f                                   ; $57b9: $11 $3f $ff
	and  c                                           ; $57bc: $a1
	rla                                              ; $57bd: $17
	rst  $38                                         ; $57be: $ff
	rst  $30                                         ; $57bf: $f7
	ld   b, c                                        ; $57c0: $41
	ld   de, $ff1d                                   ; $57c1: $11 $1d $ff
	jp   $ff15                                       ; $57c4: $c3 $15 $ff


	rst  $30                                         ; $57c7: $f7
	ld   b, e                                        ; $57c8: $43
	ld   de, $ff1b                                   ; $57c9: $11 $1b $ff
	call nc, $ff15                                   ; $57cc: $d4 $15 $ff
	rst  $20                                         ; $57cf: $e7
	ld   b, h                                        ; $57d0: $44
	ld   de, $ff1a                                   ; $57d1: $11 $1a $ff
	call nc, $ff15                                   ; $57d4: $d4 $15 $ff
	add  sp, $66                                     ; $57d7: $e8 $66
	ld   de, $ff19                                   ; $57d9: $11 $19 $ff
	call nc, $fe25                                   ; $57dc: $d4 $25 $fe
	reti                                             ; $57df: $d9


	ld   a, b                                        ; $57e0: $78
	ld   de, $ff17                                   ; $57e1: $11 $17 $ff
	call nc, $fe46                                   ; $57e4: $d4 $46 $fe
	xor  c                                           ; $57e7: $a9
	ld   a, c                                        ; $57e8: $79
	ld   sp, rAUD1HIGH                                   ; $57e9: $31 $14 $ff
	db   $f4                                         ; $57ec: $f4
	ld   d, a                                        ; $57ed: $57
	db   $fd                                         ; $57ee: $fd
	sbc  c                                           ; $57ef: $99
	ld   a, c                                        ; $57f0: $79
	ld   sp, rAUD1LOW                                   ; $57f1: $31 $13 $ff
	db   $f4                                         ; $57f4: $f4
	ld   a, b                                        ; $57f5: $78
	db   $ed                                         ; $57f6: $ed
	adc  d                                           ; $57f7: $8a
	ld   a, e                                        ; $57f8: $7b
	ld   d, c                                        ; $57f9: $51
	ld   [de], a                                     ; $57fa: $12
	rst  $38                                         ; $57fb: $ff
	db   $f4                                         ; $57fc: $f4
	adc  e                                           ; $57fd: $8b
	db   $ec                                         ; $57fe: $ec
	ld   a, c                                        ; $57ff: $79
	adc  d                                           ; $5800: $8a
	ld   h, c                                        ; $5801: $61
	ld   de, $f5ff                                   ; $5802: $11 $ff $f5
	sbc  e                                           ; $5805: $9b
	call z, $896a                                    ; $5806: $cc $6a $89
	ld   h, c                                        ; $5809: $61
	ld   de, $f6ef                                   ; $580a: $11 $ef $f6
	adc  [hl]                                        ; $580d: $8e
	call z, $9a6a                                    ; $580e: $cc $6a $9a
	ld   [hl], c                                     ; $5811: $71
	ld   de, $f7bf                                   ; $5812: $11 $bf $f7
	adc  a                                           ; $5815: $8f
	call c, $a969                                    ; $5816: $dc $69 $a9
	sub  c                                           ; $5819: $91
	ld   de, $f96d                                   ; $581a: $11 $6d $f9
	ld   a, a                                        ; $581d: $7f
	db   $dd                                         ; $581e: $dd
	add  a                                           ; $581f: $87
	ret  z                                           ; $5820: $c8

	sub  e                                           ; $5821: $93
	ld   de, $ec3c                                   ; $5822: $11 $3c $ec
	ld   l, l                                        ; $5825: $6d
	cp   $a6                                         ; $5826: $fe $a6
	cp   c                                           ; $5828: $b9
	sub  h                                           ; $5829: $94
	ld   de, $cd1a                                   ; $582a: $11 $1a $cd
	ld   l, d                                        ; $582d: $6a
	cp   $c6                                         ; $582e: $fe $c6
	cp   d                                           ; $5830: $ba
	add  [hl]                                        ; $5831: $86
	ld   hl, $ab16                                   ; $5832: $21 $16 $ab
	add  a                                           ; $5835: $87
	xor  $e8                                         ; $5836: $ee $e8
	sbc  e                                           ; $5838: $9b
	add  a                                           ; $5839: $87
	ld   [hl-], a                                    ; $583a: $32
	inc  de                                          ; $583b: $13
	ld   a, d                                        ; $583c: $7a
	sub  [hl]                                        ; $583d: $96
	cp   l                                           ; $583e: $bd
	db   $eb                                         ; $583f: $eb
	sbc  e                                           ; $5840: $9b
	sbc  b                                           ; $5841: $98
	ld   h, h                                        ; $5842: $64
	ld   [hl-], a                                    ; $5843: $32
	ld   h, a                                        ; $5844: $67
	sub  a                                           ; $5845: $97
	ld   a, d                                        ; $5846: $7a
	xor  h                                           ; $5847: $ac
	sbc  c                                           ; $5848: $99
	xor  c                                           ; $5849: $a9
	sub  a                                           ; $584a: $97
	ld   [hl], l                                     ; $584b: $75
	ld   h, a                                        ; $584c: $67
	adc  b                                           ; $584d: $88
	ld   h, a                                        ; $584e: $67
	adc  c                                           ; $584f: $89
	sbc  b                                           ; $5850: $98
	sbc  c                                           ; $5851: $99
	sbc  c                                           ; $5852: $99
	adc  b                                           ; $5853: $88
	ld   [hl], a                                     ; $5854: $77
	sbc  b                                           ; $5855: $98
	add  a                                           ; $5856: $87
	ld   [hl], a                                     ; $5857: $77
	ld   [hl], a                                     ; $5858: $77
	ld   [hl], a                                     ; $5859: $77
	adc  d                                           ; $585a: $8a
	sbc  c                                           ; $585b: $99
	sbc  b                                           ; $585c: $98
	sbc  c                                           ; $585d: $99
	sbc  b                                           ; $585e: $98
	halt                                             ; $585f: $76
	ld   h, [hl]                                     ; $5860: $66
	ld   h, [hl]                                     ; $5861: $66
	ld   a, b                                        ; $5862: $78
	xor  d                                           ; $5863: $aa
	sbc  b                                           ; $5864: $98
	adc  c                                           ; $5865: $89
	sbc  d                                           ; $5866: $9a
	xor  b                                           ; $5867: $a8
	ld   h, [hl]                                     ; $5868: $66
	ld   h, [hl]                                     ; $5869: $66
	ld   h, [hl]                                     ; $586a: $66
	ld   a, c                                        ; $586b: $79
	sbc  c                                           ; $586c: $99
	adc  c                                           ; $586d: $89
	sbc  d                                           ; $586e: $9a
	cp   c                                           ; $586f: $b9
	sub  a                                           ; $5870: $97
	ld   h, [hl]                                     ; $5871: $66
	ld   h, [hl]                                     ; $5872: $66
	ld   h, a                                        ; $5873: $67
	adc  c                                           ; $5874: $89
	sbc  b                                           ; $5875: $98
	sbc  d                                           ; $5876: $9a
	xor  e                                           ; $5877: $ab
	xor  c                                           ; $5878: $a9
	halt                                             ; $5879: $76
	ld   h, [hl]                                     ; $587a: $66
	ld   h, [hl]                                     ; $587b: $66
	ld   l, b                                        ; $587c: $68
	sbc  c                                           ; $587d: $99
	adc  c                                           ; $587e: $89
	sbc  d                                           ; $587f: $9a
	xor  d                                           ; $5880: $aa
	sub  a                                           ; $5881: $97
	ld   h, [hl]                                     ; $5882: $66
	ld   h, [hl]                                     ; $5883: $66
	ld   h, [hl]                                     ; $5884: $66
	ld   a, b                                        ; $5885: $78
	sbc  c                                           ; $5886: $99
	sbc  c                                           ; $5887: $99
	xor  d                                           ; $5888: $aa
	xor  d                                           ; $5889: $aa
	sub  a                                           ; $588a: $97
	ld   h, [hl]                                     ; $588b: $66
	ld   h, a                                        ; $588c: $67
	ld   h, a                                        ; $588d: $67
	ld   a, c                                        ; $588e: $79
	sbc  c                                           ; $588f: $99
	sbc  d                                           ; $5890: $9a
	xor  d                                           ; $5891: $aa
	sbc  c                                           ; $5892: $99
	halt                                             ; $5893: $76
	ld   h, [hl]                                     ; $5894: $66
	ld   [hl], a                                     ; $5895: $77
	ld   h, a                                        ; $5896: $67
	adc  b                                           ; $5897: $88
	adc  c                                           ; $5898: $89
	sbc  d                                           ; $5899: $9a
	xor  d                                           ; $589a: $aa
	sbc  b                                           ; $589b: $98
	halt                                             ; $589c: $76
	ld   h, [hl]                                     ; $589d: $66
	ld   [hl], a                                     ; $589e: $77
	ld   h, a                                        ; $589f: $67
	adc  b                                           ; $58a0: $88
	sbc  d                                           ; $58a1: $9a
	xor  d                                           ; $58a2: $aa
	xor  d                                           ; $58a3: $aa
	sbc  b                                           ; $58a4: $98
	ld   h, [hl]                                     ; $58a5: $66
	ld   h, a                                        ; $58a6: $67
	halt                                             ; $58a7: $76
	ld   h, a                                        ; $58a8: $67
	sbc  c                                           ; $58a9: $99
	sbc  c                                           ; $58aa: $99
	xor  d                                           ; $58ab: $aa
	sbc  c                                           ; $58ac: $99
	sub  a                                           ; $58ad: $97
	ld   [hl], a                                     ; $58ae: $77
	ld   [hl], a                                     ; $58af: $77
	ld   h, [hl]                                     ; $58b0: $66
	ld   h, a                                        ; $58b1: $67
	adc  c                                           ; $58b2: $89
	sbc  d                                           ; $58b3: $9a
	xor  c                                           ; $58b4: $a9
	sbc  c                                           ; $58b5: $99
	sub  a                                           ; $58b6: $97
	halt                                             ; $58b7: $76
	halt                                             ; $58b8: $76
	ld   h, [hl]                                     ; $58b9: $66
	ld   l, b                                        ; $58ba: $68
	sbc  c                                           ; $58bb: $99
	sbc  d                                           ; $58bc: $9a
	xor  d                                           ; $58bd: $aa
	xor  c                                           ; $58be: $a9
	sub  a                                           ; $58bf: $97
	ld   h, [hl]                                     ; $58c0: $66
	halt                                             ; $58c1: $76
	ld   d, [hl]                                     ; $58c2: $56
	ld   a, b                                        ; $58c3: $78
	sbc  c                                           ; $58c4: $99
	xor  c                                           ; $58c5: $a9
	sbc  c                                           ; $58c6: $99
	sbc  c                                           ; $58c7: $99
	add  a                                           ; $58c8: $87
	ld   h, a                                        ; $58c9: $67
	ld   h, [hl]                                     ; $58ca: $66
	ld   d, [hl]                                     ; $58cb: $56
	adc  c                                           ; $58cc: $89
	sbc  c                                           ; $58cd: $99
	sbc  d                                           ; $58ce: $9a
	xor  c                                           ; $58cf: $a9
	xor  b                                           ; $58d0: $a8
	ld   [hl], a                                     ; $58d1: $77
	ld   h, [hl]                                     ; $58d2: $66
	ld   h, [hl]                                     ; $58d3: $66
	ld   h, a                                        ; $58d4: $67
	adc  b                                           ; $58d5: $88
	sbc  d                                           ; $58d6: $9a
	xor  d                                           ; $58d7: $aa
	sbc  c                                           ; $58d8: $99
	xor  b                                           ; $58d9: $a8
	halt                                             ; $58da: $76
	ld   h, [hl]                                     ; $58db: $66
	ld   h, [hl]                                     ; $58dc: $66
	ld   h, a                                        ; $58dd: $67
	adc  c                                           ; $58de: $89
	sbc  c                                           ; $58df: $99
	xor  d                                           ; $58e0: $aa
	xor  c                                           ; $58e1: $a9
	sbc  b                                           ; $58e2: $98
	halt                                             ; $58e3: $76
	ld   h, [hl]                                     ; $58e4: $66
	ld   h, l                                        ; $58e5: $65
	ld   l, b                                        ; $58e6: $68
	sbc  c                                           ; $58e7: $99
	sbc  c                                           ; $58e8: $99
	xor  d                                           ; $58e9: $aa
	sbc  d                                           ; $58ea: $9a
	sbc  b                                           ; $58eb: $98
	halt                                             ; $58ec: $76
	ld   h, [hl]                                     ; $58ed: $66
	ld   h, [hl]                                     ; $58ee: $66
	ld   a, b                                        ; $58ef: $78
	adc  c                                           ; $58f0: $89
	xor  d                                           ; $58f1: $aa
	xor  c                                           ; $58f2: $a9
	sbc  d                                           ; $58f3: $9a
	add  a                                           ; $58f4: $87
	ld   h, [hl]                                     ; $58f5: $66
	ld   h, [hl]                                     ; $58f6: $66
	ld   h, [hl]                                     ; $58f7: $66
	ld   a, b                                        ; $58f8: $78
	sbc  c                                           ; $58f9: $99
	xor  d                                           ; $58fa: $aa
	sbc  c                                           ; $58fb: $99
	sbc  d                                           ; $58fc: $9a
	add  a                                           ; $58fd: $87
	ld   h, [hl]                                     ; $58fe: $66
	ld   h, [hl]                                     ; $58ff: $66
	ld   h, [hl]                                     ; $5900: $66
	ld   a, b                                        ; $5901: $78
	sbc  b                                           ; $5902: $98
	xor  d                                           ; $5903: $aa
	xor  c                                           ; $5904: $a9
	sbc  c                                           ; $5905: $99
	add  a                                           ; $5906: $87
	ld   h, [hl]                                     ; $5907: $66
	ld   h, [hl]                                     ; $5908: $66
	ld   h, [hl]                                     ; $5909: $66
	adc  c                                           ; $590a: $89
	adc  c                                           ; $590b: $89
	sbc  d                                           ; $590c: $9a
	sbc  c                                           ; $590d: $99
	xor  c                                           ; $590e: $a9
	ld   [hl], a                                     ; $590f: $77
	ld   h, [hl]                                     ; $5910: $66
	ld   h, [hl]                                     ; $5911: $66
	ld   h, a                                        ; $5912: $67
	adc  b                                           ; $5913: $88
	adc  c                                           ; $5914: $89
	sbc  c                                           ; $5915: $99
	sbc  c                                           ; $5916: $99
	xor  c                                           ; $5917: $a9
	halt                                             ; $5918: $76
	ld   h, [hl]                                     ; $5919: $66
	ld   h, [hl]                                     ; $591a: $66
	ld   h, a                                        ; $591b: $67
	adc  b                                           ; $591c: $88
	adc  c                                           ; $591d: $89
	sbc  c                                           ; $591e: $99
	xor  c                                           ; $591f: $a9
	sbc  b                                           ; $5920: $98
	halt                                             ; $5921: $76
	ld   h, [hl]                                     ; $5922: $66
	ld   h, [hl]                                     ; $5923: $66
	ld   h, a                                        ; $5924: $67
	sbc  b                                           ; $5925: $98
	adc  d                                           ; $5926: $8a
	sbc  d                                           ; $5927: $9a
	sbc  d                                           ; $5928: $9a
	sbc  b                                           ; $5929: $98
	halt                                             ; $592a: $76
	ld   h, [hl]                                     ; $592b: $66
	ld   h, [hl]                                     ; $592c: $66
	ld   h, a                                        ; $592d: $67
	adc  b                                           ; $592e: $88
	sbc  c                                           ; $592f: $99
	sbc  c                                           ; $5930: $99
	sbc  d                                           ; $5931: $9a
	add  a                                           ; $5932: $87
	halt                                             ; $5933: $76
	ld   h, [hl]                                     ; $5934: $66
	ld   h, [hl]                                     ; $5935: $66
	ld   a, b                                        ; $5936: $78
	adc  b                                           ; $5937: $88
	sbc  c                                           ; $5938: $99
	sbc  d                                           ; $5939: $9a
	sbc  c                                           ; $593a: $99
	sub  a                                           ; $593b: $97
	halt                                             ; $593c: $76
	ld   h, [hl]                                     ; $593d: $66
	ld   h, [hl]                                     ; $593e: $66
	ld   a, c                                        ; $593f: $79
	sbc  b                                           ; $5940: $98
	xor  c                                           ; $5941: $a9
	xor  d                                           ; $5942: $aa
	sbc  c                                           ; $5943: $99
	add  a                                           ; $5944: $87
	ld   h, [hl]                                     ; $5945: $66
	ld   h, [hl]                                     ; $5946: $66
	ld   h, [hl]                                     ; $5947: $66
	ld   a, b                                        ; $5948: $78
	sbc  c                                           ; $5949: $99
	xor  c                                           ; $594a: $a9
	xor  d                                           ; $594b: $aa
	xor  b                                           ; $594c: $a8
	ld   [hl], a                                     ; $594d: $77
	ld   h, [hl]                                     ; $594e: $66
	ld   h, [hl]                                     ; $594f: $66
	ld   h, a                                        ; $5950: $67
	adc  c                                           ; $5951: $89
	sbc  c                                           ; $5952: $99
	sbc  d                                           ; $5953: $9a
	sbc  c                                           ; $5954: $99
	sbc  b                                           ; $5955: $98
	ld   h, a                                        ; $5956: $67
	ld   [hl], a                                     ; $5957: $77
	ld   h, [hl]                                     ; $5958: $66
	adc  c                                           ; $5959: $89
	xor  c                                           ; $595a: $a9
	sbc  b                                           ; $595b: $98
	ld   a, b                                        ; $595c: $78
	sbc  b                                           ; $595d: $98
	add  l                                           ; $595e: $85
	ld   a, b                                        ; $595f: $78
	ld   a, b                                        ; $5960: $78
	ld   a, d                                        ; $5961: $7a
	cp   c                                           ; $5962: $b9
	sbc  b                                           ; $5963: $98
	sub  l                                           ; $5964: $95
	ld   c, b                                        ; $5965: $48
	adc  b                                           ; $5966: $88
	ld   d, l                                        ; $5967: $55
	xor  c                                           ; $5968: $a9
	sbc  c                                           ; $5969: $99
	xor  l                                           ; $596a: $ad
	xor  d                                           ; $596b: $aa
	halt                                             ; $596c: $76
	ld   hl, $9667                                   ; $596d: $21 $67 $96
	ld   l, l                                        ; $5970: $6d
	call z, $eabc                                    ; $5971: $cc $bc $ea
	add  l                                           ; $5974: $85
	ld   hl, $8918                                   ; $5975: $21 $18 $89
	ld   e, h                                        ; $5978: $5c
	db   $fc                                         ; $5979: $fc
	ret                                              ; $597a: $c9


	ei                                               ; $597b: $fb
	halt                                             ; $597c: $76
	ld   hl, $9a17                                   ; $597d: $21 $17 $9a
	ld   l, c                                        ; $5980: $69
	db   $fc                                         ; $5981: $fc
	cp   b                                           ; $5982: $b8
	db   $dd                                         ; $5983: $dd
	ld   h, a                                        ; $5984: $67
	ld   b, c                                        ; $5985: $41
	ld   [de], a                                     ; $5986: $12
	cp   d                                           ; $5987: $ba
	and  l                                           ; $5988: $a5
	rst  $38                                         ; $5989: $ff
	xor  c                                           ; $598a: $a9
	sbc  a                                           ; $598b: $9f
	add  a                                           ; $598c: $87
	ld   h, d                                        ; $598d: $62
	ld   de, $c7aa                                   ; $598e: $11 $aa $c7
	xor  a                                           ; $5991: $af
	xor  d                                           ; $5992: $aa
	ld   e, h                                        ; $5993: $5c
	rst  $30                                         ; $5994: $f7
	sub  h                                           ; $5995: $94
	ld   de, $bd1c                                   ; $5996: $11 $1c $bd
	ld   c, a                                        ; $5999: $4f
	ld   hl, sp-$7b                                  ; $599a: $f8 $85
	ei                                               ; $599c: $fb
	adc  b                                           ; $599d: $88
	ld   sp, $be15                                   ; $599e: $31 $15 $be
	or   l                                           ; $59a1: $b5
	db   $fd                                         ; $59a2: $fd
	sub  l                                           ; $59a3: $95
	ld   l, a                                        ; $59a4: $6f
	sbc  d                                           ; $59a5: $9a
	ld   d, d                                        ; $59a6: $52
	ld   de, $f7ab                                   ; $59a7: $11 $ab $f7
	sbc  a                                           ; $59aa: $9f
	sbc  b                                           ; $59ab: $98
	dec  hl                                          ; $59ac: $2b
	ld   a, [$01b3]                                  ; $59ad: $fa $b3 $01
	dec  e                                           ; $59b0: $1d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59b1: $cf
	ld   e, a                                        ; $59b2: $5f
	rst  $30                                         ; $59b3: $f7
	ld   [hl], d                                     ; $59b4: $72
	db   $ed                                         ; $59b5: $ed
	sbc  d                                           ; $59b6: $9a
	ld   sp, $ee11                                   ; $59b7: $31 $11 $ee
	db   $f4                                         ; $59ba: $f4
	rst  $38                                         ; $59bb: $ff
	ld   [hl], l                                     ; $59bc: $75
	cpl                                              ; $59bd: $2f
	res  2, c                                        ; $59be: $cb $91
	ld   de, $fc6e                                   ; $59c0: $11 $6e $fc
	ld   l, a                                        ; $59c3: $6f
	or   a                                           ; $59c4: $b7
	dec  [hl]                                        ; $59c5: $35
	db   $fc                                         ; $59c6: $fc
	and  $11                                         ; $59c7: $e6 $11
	dec  de                                          ; $59c9: $1b
	rst  $28                                         ; $59ca: $ef
	sbc  d                                           ; $59cb: $9a
	ld   sp, hl                                      ; $59cc: $f9
	ld   h, c                                        ; $59cd: $61
	sbc  a                                           ; $59ce: $9f
	call $1131                                       ; $59cf: $cd $31 $11
	rst  $28                                         ; $59d2: $ef
	or   $ef                                         ; $59d3: $f6 $ef
	ld   h, [hl]                                     ; $59d5: $66
	dec  e                                           ; $59d6: $1d
	rst  $38                                         ; $59d7: $ff
	jp   nz, $1e11                                   ; $59d8: $c2 $11 $1e

	rst  $38                                         ; $59db: $ff
	ld   l, a                                        ; $59dc: $6f
	sub  $32                                         ; $59dd: $d6 $32
	cp   $f8                                         ; $59df: $fe $f8
	ld   de, $ff18                                   ; $59e1: $11 $18 $ff
	ret  c                                           ; $59e4: $d8

	rst  $30                                         ; $59e5: $f7
	ld   h, d                                        ; $59e6: $62
	adc  a                                           ; $59e7: $8f
	rst  $28                                         ; $59e8: $ef
	ld   b, c                                        ; $59e9: $41
	ld   de, $f8df                                   ; $59ea: $11 $df $f8
	rst  JumpTable                                         ; $59ed: $df
	ld   h, l                                        ; $59ee: $65
	dec  e                                           ; $59ef: $1d
	rst  $38                                         ; $59f0: $ff
	pop  bc                                          ; $59f1: $c1
	ld   de, $ff4f                                   ; $59f2: $11 $4f $ff
	ld   l, a                                        ; $59f5: $6f
	and  l                                           ; $59f6: $a5
	ld   [hl], $fe                                   ; $59f7: $36 $fe
	push af                                          ; $59f9: $f5
	ld   de, $ff1c                                   ; $59fa: $11 $1c $ff
	sbc  d                                           ; $59fd: $9a
	push hl                                          ; $59fe: $e5
	ld   h, d                                        ; $59ff: $62
	rst  JumpTable                                         ; $5a00: $df
	db   $fc                                         ; $5a01: $fc
	ld   de, $ff16                                   ; $5a02: $11 $16 $ff
	and  $e8                                         ; $5a05: $e6 $e8
	ld   h, h                                        ; $5a07: $64
	ld   a, a                                        ; $5a08: $7f
	cp   $21                                         ; $5a09: $fe $21
	ld   de, $f6ff                                   ; $5a0b: $11 $ff $f6
	cp   e                                           ; $5a0e: $bb
	ld   d, [hl]                                     ; $5a0f: $56
	ld   e, a                                        ; $5a10: $5f
	rst  $38                                         ; $5a11: $ff
	ld   h, c                                        ; $5a12: $61
	ld   de, $f9df                                   ; $5a13: $11 $df $f9
	adc  h                                           ; $5a16: $8c
	ld   h, a                                        ; $5a17: $67
	ld   e, l                                        ; $5a18: $5d
	rst  $38                                         ; $5a19: $ff
	sub  c                                           ; $5a1a: $91
	ld   de, $fbbf                                   ; $5a1b: $11 $bf $fb
	ld   l, e                                        ; $5a1e: $6b
	ld   a, b                                        ; $5a1f: $78
	ld   l, h                                        ; $5a20: $6c
	rst  $38                                         ; $5a21: $ff
	and  c                                           ; $5a22: $a1
	ld   de, $fc8f                                   ; $5a23: $11 $8f $fc
	ld   c, b                                        ; $5a26: $48
	ld   a, d                                        ; $5a27: $7a
	adc  e                                           ; $5a28: $8b
	cp   $b1                                         ; $5a29: $fe $b1
	ld   de, $fe7f                                   ; $5a2b: $11 $7f $fe
	scf                                              ; $5a2e: $37
	ld   l, e                                        ; $5a2f: $6b
	xor  e                                           ; $5a30: $ab
	db   $dd                                         ; $5a31: $dd
	and  c                                           ; $5a32: $a1
	ld   de, $fe7f                                   ; $5a33: $11 $7f $fe
	inc  [hl]                                        ; $5a36: $34
	ld   l, h                                        ; $5a37: $6c
	cp   h                                           ; $5a38: $bc
	call $1191                                       ; $5a39: $cd $91 $11
	adc  a                                           ; $5a3c: $8f
	db   $fc                                         ; $5a3d: $fc
	inc  hl                                          ; $5a3e: $23
	ld   e, [hl]                                     ; $5a3f: $5e
	adc  $bb                                         ; $5a40: $ce $bb
	sub  c                                           ; $5a42: $91
	ld   de, $fdaf                                   ; $5a43: $11 $af $fd
	ld   de, $ff5f                                   ; $5a46: $11 $5f $ff
	xor  c                                           ; $5a49: $a9
	ld   [hl], c                                     ; $5a4a: $71
	ld   de, $fbcf                                   ; $5a4b: $11 $cf $fb
	ld   de, $ff6f                                   ; $5a4e: $11 $6f $ff
	xor  b                                           ; $5a51: $a8
	ld   sp, rAUD1LEN                                   ; $5a52: $31 $11 $ff
	ld   sp, hl                                      ; $5a55: $f9
	ld   de, $ff9f                                   ; $5a56: $11 $9f $ff
	add  [hl]                                        ; $5a59: $86
	ld   de, rAUD1LEN                                   ; $5a5a: $11 $11 $ff
	rst  $30                                         ; $5a5d: $f7
	ld   de, $febf                                   ; $5a5e: $11 $bf $fe
	ld   h, e                                        ; $5a61: $63
	ld   de, $ff17                                   ; $5a62: $11 $17 $ff
	or   $11                                         ; $5a65: $f6 $11
	rst  $28                                         ; $5a67: $ef
	ei                                               ; $5a68: $fb
	ld   d, c                                        ; $5a69: $51
	ld   de, $ff1c                                   ; $5a6a: $11 $1c $ff
	db   $d3                                         ; $5a6d: $d3
	dec  d                                           ; $5a6e: $15
	rst  $38                                         ; $5a6f: $ff
	ld   hl, sp+$31                                  ; $5a70: $f8 $31
	ld   de, $ff4f                                   ; $5a72: $11 $4f $ff
	sub  c                                           ; $5a75: $91
	add  hl, de                                      ; $5a76: $19
	rst  $38                                         ; $5a77: $ff
	rst  $30                                         ; $5a78: $f7
	ld   de, $bf11                                   ; $5a79: $11 $11 $bf
	cp   $51                                         ; $5a7c: $fe $51
	dec  a                                           ; $5a7e: $3d
	rst  $38                                         ; $5a7f: $ff
	or   l                                           ; $5a80: $b5
	ld   de, $ef12                                   ; $5a81: $11 $12 $ef
	ei                                               ; $5a84: $fb
	ld   hl, $ff8f                                   ; $5a85: $21 $8f $ff
	ld   h, c                                        ; $5a88: $61
	ld   de, $ff1a                                   ; $5a89: $11 $1a $ff
	and  $14                                         ; $5a8c: $e6 $14
	rst  JumpTable                                         ; $5a8e: $df
	ld   a, [$1141]                                  ; $5a8f: $fa $41 $11
	ld   e, a                                        ; $5a92: $5f
	rst  $38                                         ; $5a93: $ff
	sub  c                                           ; $5a94: $91
	ld   a, [de]                                     ; $5a95: $1a
	rst  $38                                         ; $5a96: $ff
	push hl                                          ; $5a97: $e5
	ld   de, $cf11                                   ; $5a98: $11 $11 $cf
	db   $fd                                         ; $5a9b: $fd
	ld   b, c                                        ; $5a9c: $41
	ld   a, [hl]                                     ; $5a9d: $7e
	rst  $38                                         ; $5a9e: $ff
	add  d                                           ; $5a9f: $82
	ld   de, $ff18                                   ; $5aa0: $11 $18 $ff
	rst  $30                                         ; $5aa3: $f7
	inc  de                                          ; $5aa4: $13
	rst  JumpTable                                         ; $5aa5: $df
	ei                                               ; $5aa6: $fb
	ld   sp, $5f11                                   ; $5aa7: $31 $11 $5f
	rst  $38                                         ; $5aaa: $ff
	sub  d                                           ; $5aab: $92
	add  hl, hl                                      ; $5aac: $29
	rst  $38                                         ; $5aad: $ff
	and  $11                                         ; $5aae: $e6 $11
	ld   de, $fccf                                   ; $5ab0: $11 $cf $fc
	ld   d, c                                        ; $5ab3: $51
	ld   a, [hl]                                     ; $5ab4: $7e
	rst  $38                                         ; $5ab5: $ff
	add  d                                           ; $5ab6: $82
	ld   de, $ff18                                   ; $5ab7: $11 $18 $ff
	rst  $20                                         ; $5aba: $e7
	ld   h, $df                                      ; $5abb: $26 $df
	ld   sp, hl                                      ; $5abd: $f9
	ld   sp, $7f11                                   ; $5abe: $31 $11 $7f
	rst  $38                                         ; $5ac1: $ff
	sub  e                                           ; $5ac2: $93
	ld   e, h                                        ; $5ac3: $5c
	rst  $38                                         ; $5ac4: $ff
	or   h                                           ; $5ac5: $b4
	ld   de, $df14                                   ; $5ac6: $11 $14 $df
	ei                                               ; $5ac9: $fb
	ld   d, h                                        ; $5aca: $54
	xor  a                                           ; $5acb: $af
	db   $fd                                         ; $5acc: $fd
	ld   h, c                                        ; $5acd: $61
	ld   de, $ff2b                                   ; $5ace: $11 $2b $ff
	sub  $49                                         ; $5ad1: $d6 $49
	rst  $28                                         ; $5ad3: $ef
	rst  $20                                         ; $5ad4: $e7
	ld   de, $9f11                                   ; $5ad5: $11 $11 $9f
	db   $fd                                         ; $5ad8: $fd
	add  l                                           ; $5ad9: $85
	sbc  l                                           ; $5ada: $9d
	cp   $93                                         ; $5adb: $fe $93
	ld   de, $ef17                                   ; $5add: $11 $17 $ef
	ld   a, [$cf58]                                  ; $5ae0: $fa $58 $cf
	jp   hl                                          ; $5ae3: $e9


	ld   b, c                                        ; $5ae4: $41
	ld   de, $fe5c                                   ; $5ae5: $11 $5c $fe
	and  [hl]                                        ; $5ae8: $a6
	ld   a, h                                        ; $5ae9: $7c
	cp   $95                                         ; $5aea: $fe $95
	ld   de, $ae13                                   ; $5aec: $11 $13 $ae
	db   $ec                                         ; $5aef: $ec
	add  a                                           ; $5af0: $87
	cp   [hl]                                        ; $5af1: $be
	ei                                               ; $5af2: $fb
	ld   [hl], c                                     ; $5af3: $71
	ld   de, $df18                                   ; $5af4: $11 $18 $df
	ret                                              ; $5af7: $c9


	ld   a, d                                        ; $5af8: $7a
	rst  $28                                         ; $5af9: $ef
	ret  z                                           ; $5afa: $c8

	ld   sp, $6b11                                   ; $5afb: $31 $11 $6b
	db   $fd                                         ; $5afe: $fd
	and  a                                           ; $5aff: $a7
	xor  l                                           ; $5b00: $ad
	db   $fd                                         ; $5b01: $fd
	sub  l                                           ; $5b02: $95
	ld   de, $ae14                                   ; $5b03: $11 $14 $ae
	jp   z, $cf7a                                    ; $5b06: $ca $7a $cf

	jp   hl                                          ; $5b09: $e9


	ld   h, c                                        ; $5b0a: $61
	ld   de, $dd27                                   ; $5b0b: $11 $27 $dd
	cp   b                                           ; $5b0e: $b8
	adc  h                                           ; $5b0f: $8c
	rst  $38                                         ; $5b10: $ff
	and  a                                           ; $5b11: $a7
	ld   sp, $5a11                                   ; $5b12: $31 $11 $5a
	db   $db                                         ; $5b15: $db
	sbc  c                                           ; $5b16: $99
	adc  $fb                                         ; $5b17: $ce $fb
	sub  h                                           ; $5b19: $94
	ld   bc, $8c14                                   ; $5b1a: $01 $14 $8c
	jp   z, $df8a                                    ; $5b1d: $ca $8a $df

	jp   c, $1152                                    ; $5b20: $da $52 $11

	ld   [hl], $ba                                   ; $5b23: $36 $ba
	jp   z, $fead                                    ; $5b25: $ca $ad $fe

	and  a                                           ; $5b28: $a7
	ld   sp, $4811                                   ; $5b29: $31 $11 $48
	xor  d                                           ; $5b2c: $aa
	xor  c                                           ; $5b2d: $a9
	adc  $ec                                         ; $5b2e: $ce $ec
	sub  l                                           ; $5b30: $95
	ld   hl, $6913                                   ; $5b31: $21 $13 $69
	sbc  e                                           ; $5b34: $9b
	sbc  e                                           ; $5b35: $9b
	sbc  $ca                                         ; $5b36: $de $ca
	ld   [hl], h                                     ; $5b38: $74
	ld   hl, $8824                                   ; $5b39: $21 $24 $88
	xor  c                                           ; $5b3c: $a9
	xor  l                                           ; $5b3d: $ad
	cp   $b8                                         ; $5b3e: $fe $b8
	ld   h, h                                        ; $5b40: $64
	ld   de, $8935                                   ; $5b41: $11 $35 $89
	xor  c                                           ; $5b44: $a9
	call $97ed                                       ; $5b45: $cd $ed $97
	ld   d, e                                        ; $5b48: $53
	ld   [de], a                                     ; $5b49: $12
	ld   [hl], $79                                   ; $5b4a: $36 $79
	xor  e                                           ; $5b4c: $ab
	rst  JumpTable                                         ; $5b4d: $df
	db   $eb                                         ; $5b4e: $eb
	add  [hl]                                        ; $5b4f: $86
	ld   d, e                                        ; $5b50: $53
	inc  hl                                          ; $5b51: $23
	ld   b, [hl]                                     ; $5b52: $46
	ld   a, c                                        ; $5b53: $79
	xor  h                                           ; $5b54: $ac
	rst  JumpTable                                         ; $5b55: $df
	jp   c, Jump_0c0_4375                            ; $5b56: $da $75 $43

	inc  sp                                          ; $5b59: $33
	ld   d, [hl]                                     ; $5b5a: $56
	adc  c                                           ; $5b5b: $89
	xor  h                                           ; $5b5c: $ac
	sbc  $c9                                         ; $5b5d: $de $c9
	ld   [hl], l                                     ; $5b5f: $75
	ld   b, e                                        ; $5b60: $43
	inc  [hl]                                        ; $5b61: $34
	ld   d, [hl]                                     ; $5b62: $56
	adc  d                                           ; $5b63: $8a
	call $b9dd                                       ; $5b64: $cd $dd $b9
	ld   [hl], l                                     ; $5b67: $75
	ld   b, e                                        ; $5b68: $43
	inc  [hl]                                        ; $5b69: $34
	ld   d, [hl]                                     ; $5b6a: $56
	adc  d                                           ; $5b6b: $8a
	cp   l                                           ; $5b6c: $bd
	db   $ec                                         ; $5b6d: $ec
	xor  c                                           ; $5b6e: $a9
	ld   h, l                                        ; $5b6f: $65
	ld   b, e                                        ; $5b70: $43
	inc  [hl]                                        ; $5b71: $34
	ld   d, a                                        ; $5b72: $57
	sbc  e                                           ; $5b73: $9b
	call $b8dc                                       ; $5b74: $cd $dc $b8
	ld   h, l                                        ; $5b77: $65
	ld   b, e                                        ; $5b78: $43
	inc  [hl]                                        ; $5b79: $34
	ld   d, a                                        ; $5b7a: $57
	xor  e                                           ; $5b7b: $ab
	cp   l                                           ; $5b7c: $bd
	call c, Call_0c0_55a7                            ; $5b7d: $dc $a7 $55
	ld   b, h                                        ; $5b80: $44
	ld   b, h                                        ; $5b81: $44
	ld   d, a                                        ; $5b82: $57
	xor  d                                           ; $5b83: $aa
	call $97dd                                       ; $5b84: $cd $dd $97
	ld   d, l                                        ; $5b87: $55
	ld   d, h                                        ; $5b88: $54
	ld   b, h                                        ; $5b89: $44
	ld   d, a                                        ; $5b8a: $57
	sbc  d                                           ; $5b8b: $9a
	adc  $ed                                         ; $5b8c: $ce $ed
	sub  [hl]                                        ; $5b8e: $96
	ld   b, l                                        ; $5b8f: $45
	ld   d, l                                        ; $5b90: $55
	ld   b, e                                        ; $5b91: $43
	ld   e, b                                        ; $5b92: $58
	xor  e                                           ; $5b93: $ab
	call $95ec                                       ; $5b94: $cd $ec $95
	ld   b, l                                        ; $5b97: $45
	ld   h, l                                        ; $5b98: $65
	ld   b, e                                        ; $5b99: $43
	ld   e, b                                        ; $5b9a: $58
	xor  e                                           ; $5b9b: $ab
	call $84ec                                       ; $5b9c: $cd $ec $84
	dec  [hl]                                        ; $5b9f: $35
	halt                                             ; $5ba0: $76
	ld   b, e                                        ; $5ba1: $43
	ld   e, b                                        ; $5ba2: $58
	cp   h                                           ; $5ba3: $bc
	call Call_0c0_74dc                               ; $5ba4: $cd $dc $74
	ld   b, [hl]                                     ; $5ba7: $46
	halt                                             ; $5ba8: $76
	ld   [hl-], a                                    ; $5ba9: $32
	ld   e, c                                        ; $5baa: $59
	cp   h                                           ; $5bab: $bc
	adc  $db                                         ; $5bac: $ce $db
	ld   h, e                                        ; $5bae: $63
	ld   b, [hl]                                     ; $5baf: $46
	ld   [hl], l                                     ; $5bb0: $75
	ld   [hl-], a                                    ; $5bb1: $32
	ld   e, c                                        ; $5bb2: $59
	call z, $eaee                                    ; $5bb3: $cc $ee $ea
	ld   h, e                                        ; $5bb6: $63
	ld   b, a                                        ; $5bb7: $47
	ld   [hl], l                                     ; $5bb8: $75
	ld   [hl+], a                                    ; $5bb9: $22
	ld   l, d                                        ; $5bba: $6a
	call $d9ed                                       ; $5bbb: $cd $ed $d9
	ld   d, e                                        ; $5bbe: $53
	ld   b, a                                        ; $5bbf: $47
	ld   [hl], h                                     ; $5bc0: $74
	ld   [de], a                                     ; $5bc1: $12
	ld   l, e                                        ; $5bc2: $6b
	sbc  $dd                                         ; $5bc3: $de $dd
	reti                                             ; $5bc5: $d9


	ld   d, e                                        ; $5bc6: $53
	ld   d, a                                        ; $5bc7: $57
	ld   [hl], e                                     ; $5bc8: $73
	inc  de                                          ; $5bc9: $13
	ld   a, h                                        ; $5bca: $7c
	db   $dd                                         ; $5bcb: $dd
	db   $dd                                         ; $5bcc: $dd
	ret  z                                           ; $5bcd: $c8

	ld   b, e                                        ; $5bce: $43
	ld   d, a                                        ; $5bcf: $57
	ld   h, d                                        ; $5bd0: $62
	inc  d                                           ; $5bd1: $14
	adc  h                                           ; $5bd2: $8c
	sbc  $ee                                         ; $5bd3: $de $ee
	or   a                                           ; $5bd5: $b7
	inc  sp                                          ; $5bd6: $33
	ld   h, a                                        ; $5bd7: $67
	ld   d, c                                        ; $5bd8: $51
	dec  d                                           ; $5bd9: $15
	xor  [hl]                                        ; $5bda: $ae
	xor  $ee                                         ; $5bdb: $ee $ee
	and  [hl]                                        ; $5bdd: $a6
	inc  sp                                          ; $5bde: $33
	ld   h, [hl]                                     ; $5bdf: $66
	ld   b, c                                        ; $5be0: $41
	ld   d, $be                                      ; $5be1: $16 $be
	rst  $38                                         ; $5be3: $ff
	db   $ed                                         ; $5be4: $ed
	sub  l                                           ; $5be5: $95
	inc  h                                           ; $5be6: $24
	ld   h, [hl]                                     ; $5be7: $66
	ld   sp, $df27                                   ; $5be8: $31 $27 $df
	xor  $ed                                         ; $5beb: $ee $ed
	sub  h                                           ; $5bed: $94
	inc  h                                           ; $5bee: $24
	ld   h, l                                        ; $5bef: $65
	ld   hl, $df48                                   ; $5bf0: $21 $48 $df
	rst  $38                                         ; $5bf3: $ff
	db   $fc                                         ; $5bf4: $fc
	ld   [hl], e                                     ; $5bf5: $73
	dec  h                                           ; $5bf6: $25
	ld   h, h                                        ; $5bf7: $64
	ld   de, $ef5a                                   ; $5bf8: $11 $5a $ef
	rst  $38                                         ; $5bfb: $ff
	ld   a, [$3552]                                  ; $5bfc: $fa $52 $35
	ld   d, d                                        ; $5bff: $52
	ld   de, $ff7b                                   ; $5c00: $11 $7b $ff
	rst  $38                                         ; $5c03: $ff
	ld   a, [$3642]                                  ; $5c04: $fa $42 $36
	ld   b, c                                        ; $5c07: $41
	inc  de                                          ; $5c08: $13
	sbc  l                                           ; $5c09: $9d
	rst  $38                                         ; $5c0a: $ff
	rst  $38                                         ; $5c0b: $ff
	ret  c                                           ; $5c0c: $d8

	ld   [hl+], a                                    ; $5c0d: $22
	ld   b, l                                        ; $5c0e: $45
	ld   sp, $ae14                                   ; $5c0f: $31 $14 $ae
	rst  $38                                         ; $5c12: $ff
	rst  $38                                         ; $5c13: $ff
	add  $22                                         ; $5c14: $c6 $22
	ld   b, h                                        ; $5c16: $44
	ld   hl, $bf16                                   ; $5c17: $21 $16 $bf
	rst  $38                                         ; $5c1a: $ff
	rst  $38                                         ; $5c1b: $ff
	and  h                                           ; $5c1c: $a4
	inc  hl                                          ; $5c1d: $23
	ld   b, e                                        ; $5c1e: $43
	ld   de, $bf18                                   ; $5c1f: $11 $18 $bf
	rst  $38                                         ; $5c22: $ff
	cp   $92                                         ; $5c23: $fe $92
	inc  hl                                          ; $5c25: $23
	ld   b, d                                        ; $5c26: $42
	ld   de, $cf3a                                   ; $5c27: $11 $3a $cf
	rst  $38                                         ; $5c2a: $ff
	cp   $72                                         ; $5c2b: $fe $72
	inc  hl                                          ; $5c2d: $23
	ld   b, c                                        ; $5c2e: $41
	ld   de, $df5a                                   ; $5c2f: $11 $5a $df
	rst  $38                                         ; $5c32: $ff
	db   $fc                                         ; $5c33: $fc
	ld   d, d                                        ; $5c34: $52
	inc  [hl]                                        ; $5c35: $34
	ld   hl, $7c11                                   ; $5c36: $21 $11 $7c
	rst  $38                                         ; $5c39: $ff
	rst  $38                                         ; $5c3a: $ff
	ei                                               ; $5c3b: $fb
	ld   b, d                                        ; $5c3c: $42
	ld   b, e                                        ; $5c3d: $43
	ld   de, $bd13                                   ; $5c3e: $11 $13 $bd
	rst  $38                                         ; $5c41: $ff
	rst  $38                                         ; $5c42: $ff
	ld   hl, sp+$33                                  ; $5c43: $f8 $33
	ld   b, d                                        ; $5c45: $42
	ld   de, $bd14                                   ; $5c46: $11 $14 $bd
	rst  $38                                         ; $5c49: $ff
	rst  $38                                         ; $5c4a: $ff
	rst  $10                                         ; $5c4b: $d7
	inc  [hl]                                        ; $5c4c: $34
	ld   b, c                                        ; $5c4d: $41
	ld   de, $bc17                                   ; $5c4e: $11 $17 $bc
	rst  $28                                         ; $5c51: $ef
	rst  $38                                         ; $5c52: $ff
	add  $35                                         ; $5c53: $c6 $35
	ld   b, c                                        ; $5c55: $41
	ld   de, $cc28                                   ; $5c56: $11 $28 $cc
	rst  $28                                         ; $5c59: $ef
	rst  $38                                         ; $5c5a: $ff
	add  $46                                         ; $5c5b: $c6 $46
	ld   b, c                                        ; $5c5d: $41
	ld   de, $bc38                                   ; $5c5e: $11 $38 $bc
	rst  $38                                         ; $5c61: $ff
	rst  $38                                         ; $5c62: $ff
	add  $46                                         ; $5c63: $c6 $46
	ld   b, c                                        ; $5c65: $41
	ld   de, $cc29                                   ; $5c66: $11 $29 $cc
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	and  a                                           ; $5c6b: $a7
	ld   d, a                                        ; $5c6c: $57
	ld   b, c                                        ; $5c6d: $41
	ld   de, $bb38                                   ; $5c6e: $11 $38 $bb
	rst  $28                                         ; $5c71: $ef
	rst  $38                                         ; $5c72: $ff
	ret  z                                           ; $5c73: $c8

	ld   h, [hl]                                     ; $5c74: $66
	ld   b, c                                        ; $5c75: $41
	ld   de, $9b16                                   ; $5c76: $11 $16 $9b
	rst  $28                                         ; $5c79: $ef
	rst  $38                                         ; $5c7a: $ff
	jp   c, Jump_0c0_5177                            ; $5c7b: $da $77 $51

	ld   de, $7a14                                   ; $5c7e: $11 $14 $7a
	rst  JumpTable                                         ; $5c81: $df
	rst  $38                                         ; $5c82: $ff
	ld   a, [$7488]                                  ; $5c83: $fa $88 $74
	ld   de, $5811                                   ; $5c86: $11 $11 $58
	cp   [hl]                                        ; $5c89: $be
	rst  $38                                         ; $5c8a: $ff
	db   $fd                                         ; $5c8b: $fd
	xor  b                                           ; $5c8c: $a8
	halt                                             ; $5c8d: $76
	ld   sp, $1511                                   ; $5c8e: $31 $11 $15
	sbc  h                                           ; $5c91: $9c
	rst  $38                                         ; $5c92: $ff
	rst  $38                                         ; $5c93: $ff
	jp   z, Jump_0c0_5388                            ; $5c94: $ca $88 $53

	ld   de, $5911                                   ; $5c97: $11 $11 $59
	rst  JumpTable                                         ; $5c9a: $df
	rst  $38                                         ; $5c9b: $ff
	db   $fc                                         ; $5c9c: $fc
	xor  d                                           ; $5c9d: $aa
	sub  l                                           ; $5c9e: $95
	ld   hl, $1611                                   ; $5c9f: $21 $11 $16
	sbc  l                                           ; $5ca2: $9d
	rst  $38                                         ; $5ca3: $ff
	cp   $b9                                         ; $5ca4: $fe $b9
	xor  d                                           ; $5ca6: $aa
	ld   h, e                                        ; $5ca7: $63
	ld   de, $6811                                   ; $5ca8: $11 $11 $68
	cp   a                                           ; $5cab: $bf
	rst  $38                                         ; $5cac: $ff
	db   $eb                                         ; $5cad: $eb
	xor  d                                           ; $5cae: $aa
	add  [hl]                                        ; $5caf: $86
	ld   b, d                                        ; $5cb0: $42
	ld   de, $7a15                                   ; $5cb1: $11 $15 $7a
	rst  JumpTable                                         ; $5cb4: $df
	rst  $38                                         ; $5cb5: $ff
	reti                                             ; $5cb6: $d9


	sbc  c                                           ; $5cb7: $99
	ld   [hl], l                                     ; $5cb8: $75
	ld   hl, $2711                                   ; $5cb9: $21 $11 $27
	adc  d                                           ; $5cbc: $8a
	rst  JumpTable                                         ; $5cbd: $df
	db   $fd                                         ; $5cbe: $fd
	xor  c                                           ; $5cbf: $a9
	cp   c                                           ; $5cc0: $b9
	ld   [hl], e                                     ; $5cc1: $73
	ld   [hl+], a                                    ; $5cc2: $22
	ld   de, $8b37                                   ; $5cc3: $11 $37 $8b
	rst  JumpTable                                         ; $5cc6: $df
	db   $fc                                         ; $5cc7: $fc
	sbc  c                                           ; $5cc8: $99
	xor  c                                           ; $5cc9: $a9
	ld   [hl], e                                     ; $5cca: $73
	ld   hl, $4811                                   ; $5ccb: $21 $11 $48
	adc  e                                           ; $5cce: $8b
	rst  $28                                         ; $5ccf: $ef
	db   $fc                                         ; $5cd0: $fc
	sbc  c                                           ; $5cd1: $99
	xor  c                                           ; $5cd2: $a9
	ld   h, e                                        ; $5cd3: $63
	ld   hl, $5a11                                   ; $5cd4: $21 $11 $5a
	xor  c                                           ; $5cd7: $a9
	cp   a                                           ; $5cd8: $bf
	db   $fd                                         ; $5cd9: $fd
	xor  d                                           ; $5cda: $aa
	xor  c                                           ; $5cdb: $a9
	ld   h, e                                        ; $5cdc: $63
	ld   [hl-], a                                    ; $5cdd: $32
	ld   de, $9948                                   ; $5cde: $11 $48 $99
	cp   a                                           ; $5ce1: $bf
	db   $fd                                         ; $5ce2: $fd
	xor  b                                           ; $5ce3: $a8
	cp   d                                           ; $5ce4: $ba
	add  e                                           ; $5ce5: $83
	inc  sp                                          ; $5ce6: $33
	ld   de, $8928                                   ; $5ce7: $11 $28 $89
	xor  a                                           ; $5cea: $af
	cp   $a8                                         ; $5ceb: $fe $a8
	sbc  e                                           ; $5ced: $9b
	and  [hl]                                        ; $5cee: $a6
	ld   [hl-], a                                    ; $5cef: $32
	ld   de, $9916                                   ; $5cf0: $11 $16 $99
	sbc  [hl]                                        ; $5cf3: $9e
	rst  $38                                         ; $5cf4: $ff
	cp   b                                           ; $5cf5: $b8
	xor  d                                           ; $5cf6: $aa
	sub  [hl]                                        ; $5cf7: $96
	ld   b, h                                        ; $5cf8: $44
	ld   hl, $9913                                   ; $5cf9: $21 $13 $99
	sbc  h                                           ; $5cfc: $9c
	rst  $38                                         ; $5cfd: $ff
	ret                                              ; $5cfe: $c9


	xor  d                                           ; $5cff: $aa
	cp   c                                           ; $5d00: $b9
	ld   d, e                                        ; $5d01: $53
	ld   hl, $7812                                   ; $5d02: $21 $12 $78
	sbc  d                                           ; $5d05: $9a
	rst  $38                                         ; $5d06: $ff
	reti                                             ; $5d07: $d9


	adc  l                                           ; $5d08: $8d
	reti                                             ; $5d09: $d9


	ld   b, d                                        ; $5d0a: $42
	ld   b, d                                        ; $5d0b: $42
	ld   de, $8769                                   ; $5d0c: $11 $69 $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d0f: $cf
	ei                                               ; $5d10: $fb
	adc  e                                           ; $5d11: $8b
	db   $ec                                         ; $5d12: $ec
	ld   d, c                                        ; $5d13: $51
	inc  h                                           ; $5d14: $24
	ld   hl, $9728                                   ; $5d15: $21 $28 $97
	sbc  a                                           ; $5d18: $9f
	rst  $38                                         ; $5d19: $ff
	sbc  c                                           ; $5d1a: $99
	call c, $3573                                    ; $5d1b: $dc $73 $35
	ld   d, c                                        ; $5d1e: $51
	inc  d                                           ; $5d1f: $14
	xor  d                                           ; $5d20: $aa
	adc  h                                           ; $5d21: $8c
	rst  $38                                         ; $5d22: $ff
	and  [hl]                                        ; $5d23: $a6
	rst  JumpTable                                         ; $5d24: $df
	call nc, Call_0c0_5411                           ; $5d25: $d4 $11 $54
	ld   de, $977b                                   ; $5d28: $11 $7b $97
	cp   a                                           ; $5d2b: $bf
	ld   a, [$da8b]                                  ; $5d2c: $fa $8b $da
	ld   [hl-], a                                    ; $5d2f: $32
	ld   d, [hl]                                     ; $5d30: $56
	ld   sp, $c82a                                   ; $5d31: $31 $2a $c8
	ld   l, h                                        ; $5d34: $6c
	rst  $38                                         ; $5d35: $ff
	sub  a                                           ; $5d36: $97
	adc  $94                                         ; $5d37: $ce $94
	dec  h                                           ; $5d39: $25
	ld   h, c                                        ; $5d3a: $61
	inc  d                                           ; $5d3b: $14
	xor  d                                           ; $5d3c: $aa
	ld   e, b                                        ; $5d3d: $58
	rst  $38                                         ; $5d3e: $ff
	ret  c                                           ; $5d3f: $d8

	xor  l                                           ; $5d40: $ad
	add  $35                                         ; $5d41: $c6 $35
	ld   h, e                                        ; $5d43: $63
	ld   de, $a66c                                   ; $5d44: $11 $6c $a6
	ld   a, [hl]                                     ; $5d47: $7e
	db   $fd                                         ; $5d48: $fd
	sbc  d                                           ; $5d49: $9a
	call $2672                                       ; $5d4a: $cd $72 $26
	ld   d, c                                        ; $5d4d: $51
	dec  d                                           ; $5d4e: $15
	cp   c                                           ; $5d4f: $b9
	ld   l, e                                        ; $5d50: $6b
	rst  $38                                         ; $5d51: $ff
	xor  d                                           ; $5d52: $aa
	rst  $28                                         ; $5d53: $ef
	sub  c                                           ; $5d54: $91
	daa                                              ; $5d55: $27
	add  d                                           ; $5d56: $82
	ld   de, $958e                                   ; $5d57: $11 $8e $95
	sbc  a                                           ; $5d5a: $9f
	ld   sp, hl                                      ; $5d5b: $f9
	ld   a, [hl]                                     ; $5d5c: $7e
	ld   sp, hl                                      ; $5d5d: $f9
	ld   [bc], a                                     ; $5d5e: $02
	ld   l, b                                        ; $5d5f: $68
	ld   sp, $a618                                   ; $5d60: $31 $18 $a6
	ld   l, l                                        ; $5d63: $6d
	cp   $9b                                         ; $5d64: $fe $9b
	db   $fd                                         ; $5d66: $fd
	ld   d, c                                        ; $5d67: $51
	ld   c, b                                        ; $5d68: $48
	ld   [hl], c                                     ; $5d69: $71
	ld   de, $a6ad                                   ; $5d6a: $11 $ad $a6
	cp   a                                           ; $5d6d: $bf

jr_0c0_5d6e:
	ld   [$c4ef], a                                  ; $5d6e: $ea $ef $c4
	inc  d                                           ; $5d71: $14
	and  a                                           ; $5d72: $a7
	ld   de, $a839                                   ; $5d73: $11 $39 $a8
	ld   a, d                                        ; $5d76: $7a
	rst  $38                                         ; $5d77: $ff
	call z, $41eb                                    ; $5d78: $cc $eb $41
	ld   e, e                                        ; $5d7b: $5b
	sub  c                                           ; $5d7c: $91
	ld   [de], a                                     ; $5d7d: $12
	sbc  h                                           ; $5d7e: $9c
	add  [hl]                                        ; $5d7f: $86
	xor  a                                           ; $5d80: $af
	ld   a, [$c5be]                                  ; $5d81: $fa $be $c5
	dec  [hl]                                        ; $5d84: $35
	add  [hl]                                        ; $5d85: $86
	ld   de, $c819                                   ; $5d86: $11 $19 $c8
	ld   a, l                                        ; $5d89: $7d
	db   $fd                                         ; $5d8a: $fd
	adc  d                                           ; $5d8b: $8a
	rst  $38                                         ; $5d8c: $ff
	add  c                                           ; $5d8d: $81
	rla                                              ; $5d8e: $17
	add  c                                           ; $5d8f: $81
	ld   [de], a                                     ; $5d90: $12
	sbc  e                                           ; $5d91: $9b
	halt                                             ; $5d92: $76
	rst  JumpTable                                         ; $5d93: $df
	jp   hl                                          ; $5d94: $e9


	cp   a                                           ; $5d95: $bf
	push de                                          ; $5d96: $d5
	inc  de                                          ; $5d97: $13
	adc  b                                           ; $5d98: $88
	ld   de, wResetSaveDataReturnSubstate                                   ; $5d99: $11 $18 $c9
	ld   l, e                                        ; $5d9c: $6b
	rst  $38                                         ; $5d9d: $ff
	xor  e                                           ; $5d9e: $ab
	jp   c, Jump_0c0_6a51                            ; $5d9f: $da $51 $6a

	sub  c                                           ; $5da2: $91
	ld   de, $967c                                   ; $5da3: $11 $7c $96
	xor  a                                           ; $5da6: $af
	ei                                               ; $5da7: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da8: $cf
	push hl                                          ; $5da9: $e5
	inc  d                                           ; $5daa: $14
	sbc  c                                           ; $5dab: $99
	ld   hl, $d918                                   ; $5dac: $21 $18 $d9
	ld   c, e                                        ; $5daf: $4b
	rst  $38                                         ; $5db0: $ff
	xor  d                                           ; $5db1: $aa
	rst  $38                                         ; $5db2: $ff
	ld   h, c                                        ; $5db3: $61
	add  hl, de                                      ; $5db4: $19
	sub  h                                           ; $5db5: $94
	ld   de, $a65a                                   ; $5db6: $11 $5a $a6
	adc  a                                           ; $5db9: $8f
	ei                                               ; $5dba: $fb
	cp   a                                           ; $5dbb: $bf
	and  $11                                         ; $5dbc: $e6 $11
	adc  e                                           ; $5dbe: $8b
	ld   d, c                                        ; $5dbf: $51
	inc  d                                           ; $5dc0: $14
	adc  e                                           ; $5dc1: $8b
	adc  d                                           ; $5dc2: $8a
	cp   $bb                                         ; $5dc3: $fe $bb
	rst  $38                                         ; $5dc5: $ff
	ld   [hl], c                                     ; $5dc6: $71
	jr   jr_0c0_5d6e                                 ; $5dc7: $18 $a5

	ld   de, $a816                                   ; $5dc9: $11 $16 $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dcc: $cf
	rst  $30                                         ; $5dcd: $f7
	adc  a                                           ; $5dce: $8f
	ld   hl, sp+$11                                  ; $5dcf: $f8 $11
	sbc  c                                           ; $5dd1: $99
	ld   h, c                                        ; $5dd2: $61
	ld   de, $a75d                                   ; $5dd3: $11 $5d $a7
	rst  JumpTable                                         ; $5dd6: $df
	and  [hl]                                        ; $5dd7: $a6
	rst  $28                                         ; $5dd8: $ef
	push hl                                          ; $5dd9: $e5
	ld   de, $4178                                   ; $5dda: $11 $78 $41
	inc  h                                           ; $5ddd: $24
	sub  a                                           ; $5dde: $97
	adc  a                                           ; $5ddf: $8f
	ei                                               ; $5de0: $fb
	ld   l, l                                        ; $5de1: $6d
	ei                                               ; $5de2: $fb
	ld   h, c                                        ; $5de3: $61
	dec  h                                           ; $5de4: $25
	ld   h, h                                        ; $5de5: $64
	inc  sp                                          ; $5de6: $33
	add  hl, sp                                      ; $5de7: $39
	sub  a                                           ; $5de8: $97
	xor  a                                           ; $5de9: $af
	ei                                               ; $5dea: $fb
	rst  JumpTable                                         ; $5deb: $df
	add  $12                                         ; $5dec: $c6 $12
	adc  e                                           ; $5dee: $8b
	ld   h, c                                        ; $5def: $61
	inc  de                                          ; $5df0: $13
	sbc  d                                           ; $5df1: $9a
	ld   a, d                                        ; $5df2: $7a
	rst  $38                                         ; $5df3: $ff
	xor  c                                           ; $5df4: $a9
	db   $fd                                         ; $5df5: $fd
	sub  d                                           ; $5df6: $92
	ld   d, $85                                      ; $5df7: $16 $85
	ld   de, $a618                                   ; $5df9: $11 $18 $a6
	adc  a                                           ; $5dfc: $8f
	ld   a, [$f9bf]                                  ; $5dfd: $fa $bf $f9
	ld   sp, $8726                                   ; $5e00: $31 $26 $87
	ld   hl, $ca19                                   ; $5e03: $21 $19 $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e06: $cf
	ld   sp, hl                                      ; $5e07: $f9
	cp   [hl]                                        ; $5e08: $be
	add  sp, $01                                     ; $5e09: $e8 $01
	ld   c, b                                        ; $5e0b: $48
	ld   b, e                                        ; $5e0c: $43
	ld   [de], a                                     ; $5e0d: $12
	adc  b                                           ; $5e0e: $88
	sbc  l                                           ; $5e0f: $9d
	cp   $8c                                         ; $5e10: $fe $8c
	db   $fd                                         ; $5e12: $fd
	ld   d, c                                        ; $5e13: $51
	ld   b, l                                        ; $5e14: $45
	ld   d, l                                        ; $5e15: $55
	ld   b, e                                        ; $5e16: $43
	dec  d                                           ; $5e17: $15
	sbc  c                                           ; $5e18: $99
	sbc  [hl]                                        ; $5e19: $9e
	db   $fc                                         ; $5e1a: $fc
	xor  a                                           ; $5e1b: $af
	rst  $30                                         ; $5e1c: $f7
	ld   de, $6468                                   ; $5e1d: $11 $68 $64
	ld   b, c                                        ; $5e20: $41
	jr   @-$45                                       ; $5e21: $18 $b9

	rst  JumpTable                                         ; $5e23: $df
	ld   [$94fe], a                                  ; $5e24: $ea $fe $94
	inc  de                                          ; $5e27: $13
	ld   a, b                                        ; $5e28: $78
	ld   d, c                                        ; $5e29: $51
	ld   [de], a                                     ; $5e2a: $12
	adc  c                                           ; $5e2b: $89
	adc  h                                           ; $5e2c: $8c
	rst  $38                                         ; $5e2d: $ff
	sbc  b                                           ; $5e2e: $98
	call z, Call_0c0_4394                            ; $5e2f: $cc $94 $43
	ld   d, e                                        ; $5e32: $53
	ld   [de], a                                     ; $5e33: $12
	ld   c, c                                        ; $5e34: $49
	sub  a                                           ; $5e35: $97
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e36: $cf
	push hl                                          ; $5e37: $e5
	cp   a                                           ; $5e38: $bf
	and  $14                                         ; $5e39: $e6 $14
	ld   d, e                                        ; $5e3b: $53
	ld   b, l                                        ; $5e3c: $45
	ld   b, d                                        ; $5e3d: $42
	ld   l, b                                        ; $5e3e: $68
	ld   a, d                                        ; $5e3f: $7a
	xor  $be                                         ; $5e40: $ee $be
	db   $fc                                         ; $5e42: $fc
	ld   h, e                                        ; $5e43: $63
	ld   [hl+], a                                    ; $5e44: $22
	ld   c, b                                        ; $5e45: $48
	ld   h, e                                        ; $5e46: $63
	ld   [de], a                                     ; $5e47: $12
	add  a                                           ; $5e48: $87
	ld   a, l                                        ; $5e49: $7d
	rst  $38                                         ; $5e4a: $ff
	cp   [hl]                                        ; $5e4b: $be
	rst  $10                                         ; $5e4c: $d7
	inc  hl                                          ; $5e4d: $23
	ld   [hl], a                                     ; $5e4e: $77
	ld   [hl], d                                     ; $5e4f: $72
	ld   de, $b93a                                   ; $5e50: $11 $3a $b9
	cp   a                                           ; $5e53: $bf
	ld   sp, hl                                      ; $5e54: $f9
	cp   a                                           ; $5e55: $bf
	ret  c                                           ; $5e56: $d8

	ld   [hl-], a                                    ; $5e57: $32
	dec  h                                           ; $5e58: $25
	ld   h, d                                        ; $5e59: $62
	ld   [hl+], a                                    ; $5e5a: $22
	sbc  c                                           ; $5e5b: $99
	ld   l, d                                        ; $5e5c: $6a
	rst  $28                                         ; $5e5d: $ef
	xor  [hl]                                        ; $5e5e: $ae
	db   $fd                                         ; $5e5f: $fd
	ld   d, c                                        ; $5e60: $51
	inc  hl                                          ; $5e61: $23
	ld   l, d                                        ; $5e62: $6a
	ld   d, c                                        ; $5e63: $51
	inc  de                                          ; $5e64: $13
	cp   c                                           ; $5e65: $b9
	sbc  l                                           ; $5e66: $9d
	rst  $38                                         ; $5e67: $ff
	cp   [hl]                                        ; $5e68: $be
	rst  ToBoot                                         ; $5e69: $c7
	inc  h                                           ; $5e6a: $24
	ld   [hl], h                                     ; $5e6b: $74
	ld   h, h                                        ; $5e6c: $64
	inc  sp                                          ; $5e6d: $33
	daa                                              ; $5e6e: $27
	adc  c                                           ; $5e6f: $89
	cp   a                                           ; $5e70: $bf
	ei                                               ; $5e71: $fb
	adc  $95                                         ; $5e72: $ce $95
	dec  [hl]                                        ; $5e74: $35
	ld   b, l                                        ; $5e75: $45
	ld   [hl], h                                     ; $5e76: $74
	ld   hl, $6869                                   ; $5e77: $21 $69 $68
	rst  $38                                         ; $5e7a: $ff
	reti                                             ; $5e7b: $d9


	cp   $83                                         ; $5e7c: $fe $83
	dec  d                                           ; $5e7e: $15
	ld   d, a                                        ; $5e7f: $57
	ld   d, e                                        ; $5e80: $53
	inc  de                                          ; $5e81: $13
	xor  c                                           ; $5e82: $a9
	ld   a, e                                        ; $5e83: $7b
	cp   $ae                                         ; $5e84: $fe $ae
	ei                                               ; $5e86: $fb
	ld   b, c                                        ; $5e87: $41
	inc  [hl]                                        ; $5e88: $34
	ld   d, l                                        ; $5e89: $55
	ld   h, h                                        ; $5e8a: $64
	dec  d                                           ; $5e8b: $15
	add  a                                           ; $5e8c: $87
	xor  a                                           ; $5e8d: $af
	db   $fd                                         ; $5e8e: $fd
	cp   [hl]                                        ; $5e8f: $be
	add  $15                                         ; $5e90: $c6 $15
	ld   d, [hl]                                     ; $5e92: $56
	ld   [hl], l                                     ; $5e93: $75
	ld   hl, $a62a                                   ; $5e94: $21 $2a $a6
	xor  a                                           ; $5e97: $af
	ld   hl, sp-$42                                  ; $5e98: $f8 $be
	and  l                                           ; $5e9a: $a5
	ld   l, e                                        ; $5e9b: $6b
	ld   h, d                                        ; $5e9c: $62
	inc  h                                           ; $5e9d: $24
	ld   hl, $b95a                                   ; $5e9e: $21 $5a $b9
	cp   a                                           ; $5ea1: $bf
	db   $ec                                         ; $5ea2: $ec
	db   $ed                                         ; $5ea3: $ed
	and  e                                           ; $5ea4: $a3
	dec  h                                           ; $5ea5: $25
	ld   h, [hl]                                     ; $5ea6: $66
	ld   b, h                                        ; $5ea7: $44
	ld   de, $9b69                                   ; $5ea8: $11 $69 $9b
	db   $ed                                         ; $5eab: $ed
	xor  a                                           ; $5eac: $af
	ei                                               ; $5ead: $fb
	ld   [hl-], a                                    ; $5eae: $32
	ld   d, h                                        ; $5eaf: $54
	ld   l, d                                        ; $5eb0: $6a
	ld   h, c                                        ; $5eb1: $61
	inc  de                                          ; $5eb2: $13
	cp   d                                           ; $5eb3: $ba
	sbc  [hl]                                        ; $5eb4: $9e
	cp   $ad                                         ; $5eb5: $fe $ad
	ld   [$5452], a                                  ; $5eb7: $ea $52 $54
	ld   h, [hl]                                     ; $5eba: $66
	ld   b, d                                        ; $5ebb: $42
	rla                                              ; $5ebc: $17
	and  a                                           ; $5ebd: $a7
	sbc  [hl]                                        ; $5ebe: $9e
	cp   $cf                                         ; $5ebf: $fe $cf
	add  sp, $22                                     ; $5ec1: $e8 $22
	ld   d, h                                        ; $5ec3: $54
	add  a                                           ; $5ec4: $87
	ld   b, c                                        ; $5ec5: $41

jr_0c0_5ec6:
	ld   d, $78                                      ; $5ec6: $16 $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ec8: $cf
	ld   [$d8cf], a                                  ; $5ec9: $ea $cf $d8
	ld   b, [hl]                                     ; $5ecc: $46
	ld   [hl-], a                                    ; $5ecd: $32
	ld   d, a                                        ; $5ece: $57
	ld   sp, $b918                                   ; $5ecf: $31 $18 $b9
	rst  JumpTable                                         ; $5ed2: $df
	rst  $30                                         ; $5ed3: $f7
	sbc  a                                           ; $5ed4: $9f
	push bc                                          ; $5ed5: $c5
	ld   e, b                                        ; $5ed6: $58
	ld   b, e                                        ; $5ed7: $43
	ld   b, h                                        ; $5ed8: $44
	ld   hl, $b75c                                   ; $5ed9: $21 $5c $b7
	rst  JumpTable                                         ; $5edc: $df
	ret  c                                           ; $5edd: $d8

	rst  $38                                         ; $5ede: $ff
	sub  d                                           ; $5edf: $92
	add  hl, hl                                      ; $5ee0: $29
	ld   d, h                                        ; $5ee1: $54
	ld   h, [hl]                                     ; $5ee2: $66
	ld   hl, $955c                                   ; $5ee3: $21 $5c $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ee6: $cf
	jp   hl                                          ; $5ee7: $e9


	rst  $38                                         ; $5ee8: $ff
	and  d                                           ; $5ee9: $a2
	ld   [hl], $57                                   ; $5eea: $36 $57
	ld   h, l                                        ; $5eec: $65
	ld   de, $986a                                   ; $5eed: $11 $6a $98
	rst  $38                                         ; $5ef0: $ff
	jp   z, $a4ff                                    ; $5ef1: $ca $ff $a4

	ld   b, l                                        ; $5ef4: $45
	ld   b, l                                        ; $5ef5: $45
	ld   h, l                                        ; $5ef6: $65
	ld   bc, $867c                                   ; $5ef7: $01 $7c $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5efa: $cf
	jp   z, $81ff                                    ; $5efb: $ca $ff $81

	ld   d, $47                                      ; $5efe: $16 $47
	add  a                                           ; $5f00: $87
	ld   de, $a74b                                   ; $5f01: $11 $4b $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f04: $cf
	ld   [$95dd], a                                  ; $5f05: $ea $dd $95
	ld   e, c                                        ; $5f08: $59
	ld   d, l                                        ; $5f09: $55
	ld   d, h                                        ; $5f0a: $54
	ld   de, $a76e                                   ; $5f0b: $11 $6e $a7
	xor  [hl]                                        ; $5f0e: $ae
	db   $eb                                         ; $5f0f: $eb
	db   $fd                                         ; $5f10: $fd
	and  l                                           ; $5f11: $a5
	scf                                              ; $5f12: $37
	ld   b, [hl]                                     ; $5f13: $46
	ld   b, l                                        ; $5f14: $45
	ld   de, $c759                                   ; $5f15: $11 $59 $c7
	cp   a                                           ; $5f18: $bf
	ld   a, [$a7ad]                                  ; $5f19: $fa $ad $a7
	ld   l, c                                        ; $5f1c: $69
	ld   h, h                                        ; $5f1d: $64
	inc  sp                                          ; $5f1e: $33

jr_0c0_5f1f:
	ld   sp, $c64b                                   ; $5f1f: $31 $4b $c6
	adc  [hl]                                        ; $5f22: $8e
	db   $fc                                         ; $5f23: $fc
	cp   l                                           ; $5f24: $bd
	jp   c, $3344                                    ; $5f25: $da $44 $33

	ld   d, [hl]                                     ; $5f28: $56
	ld   d, d                                        ; $5f29: $52
	scf                                              ; $5f2a: $37
	sub  [hl]                                        ; $5f2b: $96
	sbc  a                                           ; $5f2c: $9f
	db   $fc                                         ; $5f2d: $fc
	adc  [hl]                                        ; $5f2e: $8e
	rst  $20                                         ; $5f2f: $e7
	jr   z, jr_0c0_5ec6                              ; $5f30: $28 $94

	ld   d, [hl]                                     ; $5f32: $56
	ld   d, c                                        ; $5f33: $51
	jr   jr_0c0_5f1f                                 ; $5f34: $18 $e9

	ld   e, l                                        ; $5f36: $5d
	db   $fd                                         ; $5f37: $fd
	ld   l, h                                        ; $5f38: $6c
	db   $ec                                         ; $5f39: $ec
	halt                                             ; $5f3a: $76
	ld   [hl], d                                     ; $5f3b: $72
	inc  h                                           ; $5f3c: $24
	add  h                                           ; $5f3d: $84
	inc  d                                           ; $5f3e: $14
	cp   e                                           ; $5f3f: $bb
	ld   c, b                                        ; $5f40: $48
	rst  $28                                         ; $5f41: $ef
	db   $db                                         ; $5f42: $db
	ret  c                                           ; $5f43: $d8

	ld   b, e                                        ; $5f44: $43
	sbc  b                                           ; $5f45: $98
	ld   d, a                                        ; $5f46: $57
	ld   h, e                                        ; $5f47: $63
	ld   de, $898d                                   ; $5f48: $11 $8d $89
	rst  $38                                         ; $5f4b: $ff
	sbc  c                                           ; $5f4c: $99
	rst  $38                                         ; $5f4d: $ff
	ld   d, d                                        ; $5f4e: $52
	ld   a, b                                        ; $5f4f: $78
	dec  [hl]                                        ; $5f50: $35
	halt                                             ; $5f51: $76
	inc  de                                          ; $5f52: $13
	ld   a, h                                        ; $5f53: $7c
	sub  l                                           ; $5f54: $95
	xor  [hl]                                        ; $5f55: $ae
	jp   c, $b4df                                    ; $5f56: $da $df $b4

	ld   h, $56                                      ; $5f59: $26 $56
	ld   a, b                                        ; $5f5b: $78
	ld   b, c                                        ; $5f5c: $41
	scf                                              ; $5f5d: $37
	sub  a                                           ; $5f5e: $97
	xor  [hl]                                        ; $5f5f: $ae
	jp   z, $d7bf                                    ; $5f60: $ca $bf $d7

	inc  [hl]                                        ; $5f63: $34
	ld   h, l                                        ; $5f64: $65
	ld   l, b                                        ; $5f65: $68
	ld   d, c                                        ; $5f66: $51
	ld   h, $b8                                      ; $5f67: $26 $b8
	ld   e, d                                        ; $5f69: $5a
	cp   $ae                                         ; $5f6a: $fe $ae
	ei                                               ; $5f6c: $fb
	ld   sp, $6767                                   ; $5f6d: $31 $67 $67
	add  e                                           ; $5f70: $83
	ld   de, $598c                                   ; $5f71: $11 $8c $59
	rst  $38                                         ; $5f74: $ff
	xor  c                                           ; $5f75: $a9
	db   $fc                                         ; $5f76: $fc
	ld   h, e                                        ; $5f77: $63
	adc  d                                           ; $5f78: $8a
	ld   b, h                                        ; $5f79: $44
	halt                                             ; $5f7a: $76
	ld   de, $957b                                   ; $5f7b: $11 $7b $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f7e: $cf
	rst  ToBoot                                         ; $5f7f: $c7
	rst  JumpTable                                         ; $5f80: $df
	call nz, $3148                                   ; $5f81: $c4 $48 $31
	ld   a, e                                        ; $5f84: $7b
	ld   d, c                                        ; $5f85: $51
	ld   c, d                                        ; $5f86: $4a
	and  e                                           ; $5f87: $a3
	ld   e, l                                        ; $5f88: $5d
	cp   $de                                         ; $5f89: $fe $de
	or   [hl]                                        ; $5f8b: $b6
	ld   b, a                                        ; $5f8c: $47
	sub  [hl]                                        ; $5f8d: $96
	ld   a, b                                        ; $5f8e: $78
	ld   h, c                                        ; $5f8f: $61
	ld   [de], a                                     ; $5f90: $12
	adc  e                                           ; $5f91: $8b
	adc  d                                           ; $5f92: $8a
	db   $dd                                         ; $5f93: $dd
	adc  d                                           ; $5f94: $8a
	cp   $85                                         ; $5f95: $fe $85
	halt                                             ; $5f97: $76
	inc  [hl]                                        ; $5f98: $34
	sbc  b                                           ; $5f99: $98
	ld   [hl+], a                                    ; $5f9a: $22
	ld   e, c                                        ; $5f9b: $59
	sub  [hl]                                        ; $5f9c: $96
	ld   a, [hl]                                     ; $5f9d: $7e
	ld   sp, hl                                      ; $5f9e: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f9f: $cf
	or   $26                                         ; $5fa0: $f6 $26
	add  [hl]                                        ; $5fa2: $86
	ld   e, d                                        ; $5fa3: $5a
	add  c                                           ; $5fa4: $81
	inc  d                                           ; $5fa5: $14
	sbc  b                                           ; $5fa6: $98
	ld   l, e                                        ; $5fa7: $6b
	cp   $9a                                         ; $5fa8: $fe $9a
	db   $fc                                         ; $5faa: $fc
	ld   [hl], l                                     ; $5fab: $75
	add  a                                           ; $5fac: $87
	inc  h                                           ; $5fad: $24
	sbc  b                                           ; $5fae: $98
	inc  sp                                          ; $5faf: $33
	ld   l, c                                        ; $5fb0: $69
	ld   h, h                                        ; $5fb1: $64
	sbc  [hl]                                        ; $5fb2: $9e
	jp   z, $b6fe                                    ; $5fb3: $ca $fe $b6

	ld   e, b                                        ; $5fb6: $58
	ld   [hl], h                                     ; $5fb7: $74
	ld   l, d                                        ; $5fb8: $6a
	ld   d, c                                        ; $5fb9: $51
	dec  d                                           ; $5fba: $15
	add  a                                           ; $5fbb: $87
	ld   l, e                                        ; $5fbc: $6b
	cp   $bf                                         ; $5fbd: $fe $bf
	jp   hl                                          ; $5fbf: $e9


	ld   b, [hl]                                     ; $5fc0: $46
	sub  a                                           ; $5fc1: $97
	ld   d, [hl]                                     ; $5fc2: $56
	ld   [hl], h                                     ; $5fc3: $74
	ld   [de], a                                     ; $5fc4: $12
	ld   l, d                                        ; $5fc5: $6a
	add  a                                           ; $5fc6: $87
	adc  $b8                                         ; $5fc7: $ce $b8
	rst  JumpTable                                         ; $5fc9: $df
	or   l                                           ; $5fca: $b5
	ld   l, b                                        ; $5fcb: $68
	ld   b, e                                        ; $5fcc: $43
	ld   l, d                                        ; $5fcd: $6a
	ld   h, d                                        ; $5fce: $62
	ld   b, [hl]                                     ; $5fcf: $46
	ld   h, l                                        ; $5fd0: $65
	adc  e                                           ; $5fd1: $8b
	cp   h                                           ; $5fd2: $bc
	cp   l                                           ; $5fd3: $bd
	db   $eb                                         ; $5fd4: $eb
	halt                                             ; $5fd5: $76
	add  [hl]                                        ; $5fd6: $86
	ld   h, [hl]                                     ; $5fd7: $66
	add  [hl]                                        ; $5fd8: $86
	ld   [hl+], a                                    ; $5fd9: $22
	ld   c, c                                        ; $5fda: $49
	add  [hl]                                        ; $5fdb: $86
	sbc  h                                           ; $5fdc: $9c
	jp   z, $eadf                                    ; $5fdd: $ca $df $ea

	ld   h, a                                        ; $5fe0: $67
	ld   h, h                                        ; $5fe1: $64
	ld   e, c                                        ; $5fe2: $59
	add  e                                           ; $5fe3: $83
	inc  hl                                          ; $5fe4: $23
	ld   d, l                                        ; $5fe5: $55
	ld   a, e                                        ; $5fe6: $7b
	db   $dd                                         ; $5fe7: $dd
	call $86dc                                       ; $5fe8: $cd $dc $86
	ld   a, c                                        ; $5feb: $79
	halt                                             ; $5fec: $76
	ld   [hl], a                                     ; $5fed: $77
	ld   sp, $9837                                   ; $5fee: $31 $37 $98
	ld   a, c                                        ; $5ff1: $79
	cp   d                                           ; $5ff2: $ba
	cp   a                                           ; $5ff3: $bf
	db   $fc                                         ; $5ff4: $fc
	halt                                             ; $5ff5: $76
	add  l                                           ; $5ff6: $85
	ld   [hl], $96                                   ; $5ff7: $36 $96
	inc  de                                          ; $5ff9: $13
	ld   h, [hl]                                     ; $5ffa: $66
	ld   b, a                                        ; $5ffb: $47
	xor  l                                           ; $5ffc: $ad
	call c, $97ee                                    ; $5ffd: $dc $ee $97
	ld   [hl], a                                     ; $6000: $77
	ld   [hl], a                                     ; $6001: $77
	ld   h, a                                        ; $6002: $67
	ld   [hl], h                                     ; $6003: $74
	inc  hl                                          ; $6004: $23
	ld   d, a                                        ; $6005: $57
	ld   [hl], a                                     ; $6006: $77
	sbc  [hl]                                        ; $6007: $9e
	call c, $c7ed                                    ; $6008: $dc $ed $c7
	ld   l, b                                        ; $600b: $68
	halt                                             ; $600c: $76
	ld   e, b                                        ; $600d: $58
	ld   d, c                                        ; $600e: $51
	inc  d                                           ; $600f: $14
	ld   h, [hl]                                     ; $6010: $66
	adc  d                                           ; $6011: $8a
	cp   e                                           ; $6012: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6013: $cf
	ei                                               ; $6014: $fb
	add  a                                           ; $6015: $87
	halt                                             ; $6016: $76
	ld   h, a                                        ; $6017: $67
	halt                                             ; $6018: $76
	ld   sp, $7746                                   ; $6019: $31 $46 $77
	sbc  d                                           ; $601c: $9a
	res  7, [hl]                                     ; $601d: $cb $be
	jp   c, $9689                                    ; $601f: $da $89 $96

	ld   d, [hl]                                     ; $6022: $56
	ld   [hl], l                                     ; $6023: $75
	ld   [hl+], a                                    ; $6024: $22
	ld   d, l                                        ; $6025: $55
	ld   h, a                                        ; $6026: $67
	sbc  l                                           ; $6027: $9d
	call z, $c8de                                    ; $6028: $cc $de $c8
	add  a                                           ; $602b: $87
	halt                                             ; $602c: $76
	ld   h, a                                        ; $602d: $67
	ld   [hl], l                                     ; $602e: $75
	inc  h                                           ; $602f: $24
	ld   b, l                                        ; $6030: $45
	ld   h, [hl]                                     ; $6031: $66
	adc  e                                           ; $6032: $8b
	call c, $b9ff                                    ; $6033: $dc $ff $b9
	ld   a, b                                        ; $6036: $78
	ld   [hl], a                                     ; $6037: $77
	ld   h, a                                        ; $6038: $67
	ld   [hl], h                                     ; $6039: $74
	ld   [hl+], a                                    ; $603a: $22
	ld   b, l                                        ; $603b: $45
	ld   [hl], a                                     ; $603c: $77
	cp   [hl]                                        ; $603d: $be
	jp   z, $b9dd                                    ; $603e: $ca $dd $b9

	adc  c                                           ; $6041: $89
	add  a                                           ; $6042: $87
	ld   d, [hl]                                     ; $6043: $56
	ld   h, h                                        ; $6044: $64
	inc  h                                           ; $6045: $24
	ld   h, [hl]                                     ; $6046: $66
	ld   a, b                                        ; $6047: $78
	xor  d                                           ; $6048: $aa
	xor  h                                           ; $6049: $ac
	call z, $88bb                                    ; $604a: $cc $bb $88
	add  [hl]                                        ; $604d: $86
	ld   d, [hl]                                     ; $604e: $56
	ld   [hl], l                                     ; $604f: $75
	inc  sp                                          ; $6050: $33
	ld   d, [hl]                                     ; $6051: $56
	ld   [hl], a                                     ; $6052: $77
	adc  d                                           ; $6053: $8a
	cp   e                                           ; $6054: $bb
	call $98b9                                       ; $6055: $cd $b9 $98
	add  a                                           ; $6058: $87
	ld   h, a                                        ; $6059: $67
	halt                                             ; $605a: $76
	inc  [hl]                                        ; $605b: $34
	ld   d, [hl]                                     ; $605c: $56
	ld   h, a                                        ; $605d: $67
	adc  c                                           ; $605e: $89
	xor  e                                           ; $605f: $ab
	xor  h                                           ; $6060: $ac
	cp   d                                           ; $6061: $ba
	xor  b                                           ; $6062: $a8
	sub  a                                           ; $6063: $97
	halt                                             ; $6064: $76
	ld   [hl], a                                     ; $6065: $77
	ld   d, h                                        ; $6066: $54
	ld   d, [hl]                                     ; $6067: $56
	ld   h, [hl]                                     ; $6068: $66
	ld   a, b                                        ; $6069: $78
	xor  d                                           ; $606a: $aa
	sbc  d                                           ; $606b: $9a
	cp   c                                           ; $606c: $b9
	sbc  c                                           ; $606d: $99
	xor  c                                           ; $606e: $a9
	ld   [hl], a                                     ; $606f: $77
	ld   a, b                                        ; $6070: $78
	ld   h, [hl]                                     ; $6071: $66
	ld   h, [hl]                                     ; $6072: $66
	ld   h, a                                        ; $6073: $67
	sub  a                                           ; $6074: $97
	ld   a, b                                        ; $6075: $78
	xor  c                                           ; $6076: $a9
	xor  d                                           ; $6077: $aa
	sbc  d                                           ; $6078: $9a
	xor  c                                           ; $6079: $a9
	sbc  c                                           ; $607a: $99
	ld   [hl], a                                     ; $607b: $77
	add  a                                           ; $607c: $87
	halt                                             ; $607d: $76
	ld   h, [hl]                                     ; $607e: $66
	adc  c                                           ; $607f: $89
	ld   h, a                                        ; $6080: $67
	adc  c                                           ; $6081: $89
	sbc  c                                           ; $6082: $99
	sbc  c                                           ; $6083: $99
	sbc  c                                           ; $6084: $99
	sbc  c                                           ; $6085: $99
	add  a                                           ; $6086: $87
	adc  b                                           ; $6087: $88
	ld   [hl], a                                     ; $6088: $77
	ld   [hl], a                                     ; $6089: $77
	ld   [hl], a                                     ; $608a: $77
	add  a                                           ; $608b: $87
	ld   h, [hl]                                     ; $608c: $66
	adc  b                                           ; $608d: $88
	sbc  c                                           ; $608e: $99
	sbc  c                                           ; $608f: $99
	sbc  c                                           ; $6090: $99
	sbc  c                                           ; $6091: $99
	xor  c                                           ; $6092: $a9
	adc  c                                           ; $6093: $89
	sub  a                                           ; $6094: $97
	ld   h, a                                        ; $6095: $67
	ld   [hl], a                                     ; $6096: $77
	adc  b                                           ; $6097: $88
	ld   [hl], a                                     ; $6098: $77
	ld   a, c                                        ; $6099: $79
	sbc  b                                           ; $609a: $98
	adc  d                                           ; $609b: $8a
	sbc  b                                           ; $609c: $98
	sbc  c                                           ; $609d: $99
	xor  c                                           ; $609e: $a9
	sbc  c                                           ; $609f: $99
	add  a                                           ; $60a0: $87
	ld   [hl], a                                     ; $60a1: $77
	ld   h, [hl]                                     ; $60a2: $66
	ld   a, b                                        ; $60a3: $78
	halt                                             ; $60a4: $76
	ld   a, c                                        ; $60a5: $79
	adc  b                                           ; $60a6: $88
	adc  c                                           ; $60a7: $89
	sbc  b                                           ; $60a8: $98
	sbc  d                                           ; $60a9: $9a
	xor  c                                           ; $60aa: $a9
	sbc  c                                           ; $60ab: $99
	add  a                                           ; $60ac: $87
	ld   h, [hl]                                     ; $60ad: $66
	halt                                             ; $60ae: $76
	ld   [hl], a                                     ; $60af: $77
	halt                                             ; $60b0: $76
	ld   a, b                                        ; $60b1: $78
	sbc  c                                           ; $60b2: $99
	adc  c                                           ; $60b3: $89
	xor  c                                           ; $60b4: $a9
	sbc  c                                           ; $60b5: $99
	sbc  c                                           ; $60b6: $99
	sbc  b                                           ; $60b7: $98
	ld   [hl], a                                     ; $60b8: $77
	halt                                             ; $60b9: $76
	ld   h, [hl]                                     ; $60ba: $66
	ld   l, b                                        ; $60bb: $68
	halt                                             ; $60bc: $76
	ld   l, b                                        ; $60bd: $68
	sbc  b                                           ; $60be: $98
	sbc  c                                           ; $60bf: $99
	xor  c                                           ; $60c0: $a9
	sbc  d                                           ; $60c1: $9a
	xor  c                                           ; $60c2: $a9
	adc  c                                           ; $60c3: $89
	sub  a                                           ; $60c4: $97
	ld   h, [hl]                                     ; $60c5: $66
	ld   h, [hl]                                     ; $60c6: $66
	ld   h, a                                        ; $60c7: $67
	add  a                                           ; $60c8: $87
	ld   d, a                                        ; $60c9: $57
	xor  c                                           ; $60ca: $a9
	ld   a, b                                        ; $60cb: $78
	xor  c                                           ; $60cc: $a9
	adc  c                                           ; $60cd: $89
	cp   c                                           ; $60ce: $b9
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	ld   h, [hl]                                     ; $60d1: $66
	ld   h, [hl]                                     ; $60d2: $66
	ld   h, a                                        ; $60d3: $67
	add  a                                           ; $60d4: $87
	ld   h, [hl]                                     ; $60d5: $66
	sbc  c                                           ; $60d6: $99
	sbc  b                                           ; $60d7: $98
	xor  d                                           ; $60d8: $aa
	sbc  c                                           ; $60d9: $99
	xor  c                                           ; $60da: $a9
	adc  b                                           ; $60db: $88
	adc  b                                           ; $60dc: $88
	halt                                             ; $60dd: $76
	ld   h, [hl]                                     ; $60de: $66
	ld   [hl], a                                     ; $60df: $77
	add  a                                           ; $60e0: $87
	ld   h, a                                        ; $60e1: $67
	sbc  b                                           ; $60e2: $98
	sbc  c                                           ; $60e3: $99
	xor  c                                           ; $60e4: $a9
	sbc  c                                           ; $60e5: $99
	xor  c                                           ; $60e6: $a9
	sbc  b                                           ; $60e7: $98
	adc  b                                           ; $60e8: $88
	ld   [hl], a                                     ; $60e9: $77
	ld   h, [hl]                                     ; $60ea: $66
	halt                                             ; $60eb: $76
	ld   [hl], a                                     ; $60ec: $77
	ld   h, [hl]                                     ; $60ed: $66
	sbc  c                                           ; $60ee: $99
	adc  c                                           ; $60ef: $89
	xor  c                                           ; $60f0: $a9
	sbc  d                                           ; $60f1: $9a
	sbc  d                                           ; $60f2: $9a
	xor  c                                           ; $60f3: $a9
	adc  c                                           ; $60f4: $89
	halt                                             ; $60f5: $76
	ld   d, l                                        ; $60f6: $55
	ld   h, [hl]                                     ; $60f7: $66
	ld   [hl], a                                     ; $60f8: $77
	ld   h, [hl]                                     ; $60f9: $66
	adc  d                                           ; $60fa: $8a
	xor  c                                           ; $60fb: $a9
	xor  d                                           ; $60fc: $aa
	xor  c                                           ; $60fd: $a9
	xor  d                                           ; $60fe: $aa
	and  a                                           ; $60ff: $a7
	ld   a, b                                        ; $6100: $78
	ld   h, l                                        ; $6101: $65
	ld   h, h                                        ; $6102: $64
	ld   b, [hl]                                     ; $6103: $46
	ld   h, a                                        ; $6104: $67
	ld   l, b                                        ; $6105: $68
	adc  e                                           ; $6106: $8b
	jp   z, $a9cb                                    ; $6107: $ca $cb $a9

	sbc  c                                           ; $610a: $99
	add  a                                           ; $610b: $87
	ld   h, a                                        ; $610c: $67
	ld   h, h                                        ; $610d: $64
	dec  [hl]                                        ; $610e: $35
	ld   h, l                                        ; $610f: $65
	add  [hl]                                        ; $6110: $86
	ld   a, b                                        ; $6111: $78
	cp   e                                           ; $6112: $bb
	sbc  h                                           ; $6113: $9c
	cp   c                                           ; $6114: $b9
	sbc  c                                           ; $6115: $99
	xor  b                                           ; $6116: $a8
	ld   [hl], a                                     ; $6117: $77
	halt                                             ; $6118: $76
	inc  sp                                          ; $6119: $33
	ld   d, h                                        ; $611a: $54
	ld   d, a                                        ; $611b: $57
	ld   l, b                                        ; $611c: $68
	xor  h                                           ; $611d: $ac
	jp   z, $a9cc                                    ; $611e: $ca $cc $a9

	sbc  d                                           ; $6121: $9a
	ld   [hl], a                                     ; $6122: $77
	ld   a, b                                        ; $6123: $78
	ld   d, e                                        ; $6124: $53
	inc  [hl]                                        ; $6125: $34
	ld   d, l                                        ; $6126: $55
	ld   a, c                                        ; $6127: $79
	adc  c                                           ; $6128: $89
	call z, $cabc                                    ; $6129: $cc $bc $ca
	sbc  d                                           ; $612c: $9a
	sbc  b                                           ; $612d: $98
	halt                                             ; $612e: $76
	ld   [hl], l                                     ; $612f: $75
	ld   [hl-], a                                    ; $6130: $32
	ld   b, h                                        ; $6131: $44
	ld   h, a                                        ; $6132: $67
	ld   l, c                                        ; $6133: $69
	cp   l                                           ; $6134: $bd
	cp   h                                           ; $6135: $bc
	db   $db                                         ; $6136: $db
	xor  c                                           ; $6137: $a9
	sbc  b                                           ; $6138: $98
	ld   h, [hl]                                     ; $6139: $66
	halt                                             ; $613a: $76
	ld   [hl-], a                                    ; $613b: $32
	inc  [hl]                                        ; $613c: $34
	ld   d, [hl]                                     ; $613d: $56
	ld   a, b                                        ; $613e: $78
	cp   h                                           ; $613f: $bc
	call z, $9adb                                    ; $6140: $cc $db $9a
	sbc  c                                           ; $6143: $99
	add  a                                           ; $6144: $87
	ld   h, [hl]                                     ; $6145: $66
	ld   d, d                                        ; $6146: $52
	inc  hl                                          ; $6147: $23
	ld   d, [hl]                                     ; $6148: $56
	ld   h, [hl]                                     ; $6149: $66
	xor  h                                           ; $614a: $ac
	call z, $b9de                                    ; $614b: $cc $de $b9
	sbc  d                                           ; $614e: $9a
	sub  [hl]                                        ; $614f: $96
	ld   h, a                                        ; $6150: $67
	ld   h, d                                        ; $6151: $62
	ld   [de], a                                     ; $6152: $12
	dec  [hl]                                        ; $6153: $35
	ld   [hl], a                                     ; $6154: $77
	sbc  h                                           ; $6155: $9c
	xor  $ce                                         ; $6156: $ee $ce
	ret                                              ; $6158: $c9


	adc  c                                           ; $6159: $89
	or   a                                           ; $615a: $b7
	ld   h, [hl]                                     ; $615b: $66
	ld   [hl], e                                     ; $615c: $73
	ld   [de], a                                     ; $615d: $12
	dec  [hl]                                        ; $615e: $35
	ld   a, b                                        ; $615f: $78
	ld   a, h                                        ; $6160: $7c
	sbc  $dd                                         ; $6161: $de $dd
	db   $db                                         ; $6163: $db
	adc  b                                           ; $6164: $88
	sbc  b                                           ; $6165: $98
	ld   h, l                                        ; $6166: $65
	ld   h, h                                        ; $6167: $64
	ld   hl, $7724                                   ; $6168: $21 $24 $77
	ld   a, l                                        ; $616b: $7d
	rst  $28                                         ; $616c: $ef
	cp   l                                           ; $616d: $bd
	ld   [$a898], a                                  ; $616e: $ea $98 $a8
	ld   h, l                                        ; $6171: $65
	ld   d, h                                        ; $6172: $54
	ld   de, $7825                                   ; $6173: $11 $25 $78
	ld   l, h                                        ; $6176: $6c
	rst  $28                                         ; $6177: $ef
	set  5, d                                        ; $6178: $cb $ea
	xor  b                                           ; $617a: $a8
	sbc  d                                           ; $617b: $9a
	ld   h, l                                        ; $617c: $65
	ld   d, l                                        ; $617d: $55
	ld   hl, $7814                                   ; $617e: $21 $14 $78
	ld   l, e                                        ; $6181: $6b
	xor  $cb                                         ; $6182: $ee $cb
	ei                                               ; $6184: $fb
	sbc  b                                           ; $6185: $98
	sbc  d                                           ; $6186: $9a
	ld   h, l                                        ; $6187: $65
	ld   d, [hl]                                     ; $6188: $56
	ld   sp, $6823                                   ; $6189: $31 $23 $68
	ld   e, d                                        ; $618c: $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $618d: $cf
	db   $db                                         ; $618e: $db
	ld   a, [$9ba8]                                  ; $618f: $fa $a8 $9b
	ld   h, [hl]                                     ; $6192: $66
	ld   d, [hl]                                     ; $6193: $56
	ld   sp, $5823                                   ; $6194: $31 $23 $58
	ld   a, c                                        ; $6197: $79
	adc  $ea                                         ; $6198: $ce $ea
	db   $ed                                         ; $619a: $ed
	xor  b                                           ; $619b: $a8
	adc  e                                           ; $619c: $8b
	halt                                             ; $619d: $76
	ld   d, l                                        ; $619e: $55
	ld   b, c                                        ; $619f: $41
	inc  de                                          ; $61a0: $13
	ld   c, b                                        ; $61a1: $48
	ld   a, c                                        ; $61a2: $79
	db   $dd                                         ; $61a3: $dd
	db   $fc                                         ; $61a4: $fc
	db   $ed                                         ; $61a5: $ed
	adc  d                                           ; $61a6: $8a
	adc  d                                           ; $61a7: $8a
	add  [hl]                                        ; $61a8: $86
	ld   h, [hl]                                     ; $61a9: $66
	ld   b, c                                        ; $61aa: $41
	inc  hl                                          ; $61ab: $23
	ld   b, a                                        ; $61ac: $47
	adc  b                                           ; $61ad: $88
	call z, $bcfa                                    ; $61ae: $cc $fa $bc
	adc  c                                           ; $61b1: $89
	ld   a, e                                        ; $61b2: $7b
	add  [hl]                                        ; $61b3: $86
	ld   h, l                                        ; $61b4: $65
	ld   h, e                                        ; $61b5: $63
	inc  [hl]                                        ; $61b6: $34
	ld   e, b                                        ; $61b7: $58
	add  [hl]                                        ; $61b8: $86
	xor  e                                           ; $61b9: $ab
	db   $fc                                         ; $61ba: $fc
	xor  [hl]                                        ; $61bb: $ae
	sbc  c                                           ; $61bc: $99
	ld   a, c                                        ; $61bd: $79
	sub  a                                           ; $61be: $97
	ld   h, l                                        ; $61bf: $65
	ld   h, e                                        ; $61c0: $63
	inc  hl                                          ; $61c1: $23
	ld   b, l                                        ; $61c2: $45
	add  a                                           ; $61c3: $87
	cp   h                                           ; $61c4: $bc
	xor  $9c                                         ; $61c5: $ee $9c
	sbc  c                                           ; $61c7: $99
	add  a                                           ; $61c8: $87
	sub  a                                           ; $61c9: $97
	halt                                             ; $61ca: $76
	ld   h, h                                        ; $61cb: $64
	inc  hl                                          ; $61cc: $23
	ld   b, a                                        ; $61cd: $47
	xor  b                                           ; $61ce: $a8
	adc  h                                           ; $61cf: $8c
	db   $dd                                         ; $61d0: $dd
	sbc  e                                           ; $61d1: $9b
	jp   z, $c887                                    ; $61d2: $ca $87 $c8

	ld   h, l                                        ; $61d5: $65
	ld   h, [hl]                                     ; $61d6: $66
	inc  hl                                          ; $61d7: $23
	ld   b, [hl]                                     ; $61d8: $46
	adc  b                                           ; $61d9: $88

Call_0c0_61da:
	adc  d                                           ; $61da: $8a
	adc  $ba                                         ; $61db: $ce $ba
	ret                                              ; $61dd: $c9


	sub  a                                           ; $61de: $97
	sbc  d                                           ; $61df: $9a
	halt                                             ; $61e0: $76
	ld   d, [hl]                                     ; $61e1: $56
	ld   b, e                                        ; $61e2: $43
	inc  [hl]                                        ; $61e3: $34
	ld   a, b                                        ; $61e4: $78
	ld   a, d                                        ; $61e5: $7a
	rst  JumpTable                                         ; $61e6: $df
	cp   d                                           ; $61e7: $ba
	jp   z, $9a96                                    ; $61e8: $ca $96 $9a

	halt                                             ; $61eb: $76
	ld   d, a                                        ; $61ec: $57
	ld   d, e                                        ; $61ed: $53
	dec  [hl]                                        ; $61ee: $35
	ld   l, b                                        ; $61ef: $68
	ld   a, c                                        ; $61f0: $79
	set  3, d                                        ; $61f1: $cb $da
	cp   e                                           ; $61f3: $bb
	sbc  c                                           ; $61f4: $99
	adc  d                                           ; $61f5: $8a
	add  [hl]                                        ; $61f6: $86
	ld   h, [hl]                                     ; $61f7: $66
	ld   h, h                                        ; $61f8: $64
	ld   b, l                                        ; $61f9: $45
	ld   e, b                                        ; $61fa: $58
	add  a                                           ; $61fb: $87
	xor  h                                           ; $61fc: $ac
	db   $db                                         ; $61fd: $db
	sbc  h                                           ; $61fe: $9c
	sbc  b                                           ; $61ff: $98
	ld   a, d                                        ; $6200: $7a
	and  a                                           ; $6201: $a7
	halt                                             ; $6202: $76
	ld   [hl], l                                     ; $6203: $75
	inc  [hl]                                        ; $6204: $34
	ld   b, [hl]                                     ; $6205: $46
	add  a                                           ; $6206: $87
	sbc  e                                           ; $6207: $9b
	call c, $b99b                                    ; $6208: $dc $9b $b9
	ld   a, b                                        ; $620b: $78
	xor  b                                           ; $620c: $a8
	halt                                             ; $620d: $76
	halt                                             ; $620e: $76
	inc  [hl]                                        ; $620f: $34
	ld   d, l                                        ; $6210: $55
	ld   a, b                                        ; $6211: $78
	adc  d                                           ; $6212: $8a
	xor  l                                           ; $6213: $ad
	cp   d                                           ; $6214: $ba
	cp   c                                           ; $6215: $b9
	sub  a                                           ; $6216: $97
	adc  b                                           ; $6217: $88
	ld   [hl], a                                     ; $6218: $77
	ld   h, [hl]                                     ; $6219: $66
	ld   d, l                                        ; $621a: $55
	ld   d, l                                        ; $621b: $55
	ld   l, c                                        ; $621c: $69
	adc  c                                           ; $621d: $89
	sbc  h                                           ; $621e: $9c
	ret                                              ; $621f: $c9


	sbc  e                                           ; $6220: $9b
	xor  b                                           ; $6221: $a8
	ld   a, c                                        ; $6222: $79
	add  a                                           ; $6223: $87
	ld   h, [hl]                                     ; $6224: $66
	ld   [hl], l                                     ; $6225: $75
	ld   b, l                                        ; $6226: $45
	ld   e, b                                        ; $6227: $58
	add  a                                           ; $6228: $87
	adc  d                                           ; $6229: $8a
	res  3, d                                        ; $622a: $cb $9a
	xor  b                                           ; $622c: $a8
	ld   a, b                                        ; $622d: $78
	cp   c                                           ; $622e: $b9
	ld   h, [hl]                                     ; $622f: $66
	halt                                             ; $6230: $76
	ld   b, h                                        ; $6231: $44
	ld   d, [hl]                                     ; $6232: $56
	ld   [hl], a                                     ; $6233: $77
	sbc  d                                           ; $6234: $9a
	cp   h                                           ; $6235: $bc
	xor  d                                           ; $6236: $aa
	xor  b                                           ; $6237: $a8
	sbc  b                                           ; $6238: $98
	adc  b                                           ; $6239: $88
	add  a                                           ; $623a: $87
	ld   h, [hl]                                     ; $623b: $66
	ld   h, l                                        ; $623c: $65
	ld   d, [hl]                                     ; $623d: $56
	ld   a, b                                        ; $623e: $78
	ld   a, c                                        ; $623f: $79
	sbc  e                                           ; $6240: $9b
	xor  b                                           ; $6241: $a8
	sbc  d                                           ; $6242: $9a
	sbc  b                                           ; $6243: $98
	ld   a, d                                        ; $6244: $7a
	add  a                                           ; $6245: $87
	ld   [hl], a                                     ; $6246: $77
	halt                                             ; $6247: $76
	ld   h, [hl]                                     ; $6248: $66
	ld   h, a                                        ; $6249: $67
	add  a                                           ; $624a: $87
	adc  c                                           ; $624b: $89
	cp   e                                           ; $624c: $bb
	adc  d                                           ; $624d: $8a
	sbc  c                                           ; $624e: $99
	ld   [hl], a                                     ; $624f: $77
	sbc  b                                           ; $6250: $98
	add  [hl]                                        ; $6251: $86
	ld   [hl], a                                     ; $6252: $77
	ld   d, [hl]                                     ; $6253: $56
	ld   d, [hl]                                     ; $6254: $56
	add  a                                           ; $6255: $87
	ld   a, c                                        ; $6256: $79
	sbc  d                                           ; $6257: $9a
	xor  c                                           ; $6258: $a9
	xor  c                                           ; $6259: $a9
	sub  a                                           ; $625a: $97
	sbc  c                                           ; $625b: $99
	adc  b                                           ; $625c: $88
	ld   a, b                                        ; $625d: $78
	ld   h, [hl]                                     ; $625e: $66
	ld   h, [hl]                                     ; $625f: $66
	ld   [hl], a                                     ; $6260: $77
	ld   a, b                                        ; $6261: $78
	sbc  c                                           ; $6262: $99
	xor  d                                           ; $6263: $aa
	sbc  c                                           ; $6264: $99
	sbc  b                                           ; $6265: $98
	adc  c                                           ; $6266: $89
	sbc  b                                           ; $6267: $98
	ld   a, c                                        ; $6268: $79
	add  [hl]                                        ; $6269: $86
	ld   h, [hl]                                     ; $626a: $66
	halt                                             ; $626b: $76
	ld   [hl], a                                     ; $626c: $77
	ld   h, a                                        ; $626d: $67
	sbc  d                                           ; $626e: $9a
	xor  b                                           ; $626f: $a8
	sbc  b                                           ; $6270: $98
	sub  a                                           ; $6271: $97
	adc  c                                           ; $6272: $89
	sbc  c                                           ; $6273: $99
	adc  c                                           ; $6274: $89
	ld   [hl], a                                     ; $6275: $77
	ld   h, [hl]                                     ; $6276: $66
	ld   [hl], a                                     ; $6277: $77
	sub  [hl]                                        ; $6278: $96
	adc  c                                           ; $6279: $89
	xor  c                                           ; $627a: $a9
	ld   a, b                                        ; $627b: $78
	sbc  c                                           ; $627c: $99
	adc  b                                           ; $627d: $88
	xor  c                                           ; $627e: $a9
	adc  b                                           ; $627f: $88
	adc  c                                           ; $6280: $89
	ld   h, a                                        ; $6281: $67
	ld   [hl], a                                     ; $6282: $77
	ld   [hl], a                                     ; $6283: $77
	ld   [hl], a                                     ; $6284: $77
	adc  b                                           ; $6285: $88
	adc  c                                           ; $6286: $89
	sbc  c                                           ; $6287: $99
	adc  b                                           ; $6288: $88
	sbc  b                                           ; $6289: $98
	adc  b                                           ; $628a: $88
	xor  c                                           ; $628b: $a9
	sub  a                                           ; $628c: $97
	ld   a, b                                        ; $628d: $78
	ld   h, a                                        ; $628e: $67
	ld   a, b                                        ; $628f: $78
	halt                                             ; $6290: $76
	ld   [hl], a                                     ; $6291: $77
	adc  b                                           ; $6292: $88
	ld   a, c                                        ; $6293: $79
	sbc  c                                           ; $6294: $99
	sbc  b                                           ; $6295: $98
	sbc  b                                           ; $6296: $98
	sbc  b                                           ; $6297: $98
	sbc  b                                           ; $6298: $98
	ld   a, b                                        ; $6299: $78
	ld   [hl], a                                     ; $629a: $77
	ld   [hl], a                                     ; $629b: $77
	halt                                             ; $629c: $76
	ld   [hl], a                                     ; $629d: $77
	adc  c                                           ; $629e: $89
	ld   a, b                                        ; $629f: $78
	adc  c                                           ; $62a0: $89
	adc  b                                           ; $62a1: $88
	sbc  c                                           ; $62a2: $99
	xor  c                                           ; $62a3: $a9
	sbc  c                                           ; $62a4: $99
	adc  b                                           ; $62a5: $88
	ld   a, b                                        ; $62a6: $78
	add  a                                           ; $62a7: $87
	adc  b                                           ; $62a8: $88
	add  a                                           ; $62a9: $87
	ld   h, a                                        ; $62aa: $67
	ld   a, b                                        ; $62ab: $78
	ld   [hl], a                                     ; $62ac: $77
	adc  b                                           ; $62ad: $88
	sbc  b                                           ; $62ae: $98
	sbc  c                                           ; $62af: $99
	adc  b                                           ; $62b0: $88
	sbc  c                                           ; $62b1: $99
	sub  a                                           ; $62b2: $97
	adc  b                                           ; $62b3: $88
	add  a                                           ; $62b4: $87
	ld   a, b                                        ; $62b5: $78
	ld   [hl], a                                     ; $62b6: $77
	ld   [hl], a                                     ; $62b7: $77
	ld   a, b                                        ; $62b8: $78
	adc  b                                           ; $62b9: $88
	adc  c                                           ; $62ba: $89
	adc  c                                           ; $62bb: $89
	adc  c                                           ; $62bc: $89
	adc  c                                           ; $62bd: $89
	sbc  b                                           ; $62be: $98
	adc  c                                           ; $62bf: $89
	adc  b                                           ; $62c0: $88
	adc  b                                           ; $62c1: $88
	adc  b                                           ; $62c2: $88
	add  a                                           ; $62c3: $87
	ld   [hl], a                                     ; $62c4: $77
	adc  b                                           ; $62c5: $88
	ld   a, b                                        ; $62c6: $78
	adc  b                                           ; $62c7: $88
	adc  b                                           ; $62c8: $88
	adc  b                                           ; $62c9: $88
	sbc  b                                           ; $62ca: $98
	adc  b                                           ; $62cb: $88
	adc  c                                           ; $62cc: $89
	adc  b                                           ; $62cd: $88
	adc  b                                           ; $62ce: $88
	sbc  b                                           ; $62cf: $98
	adc  b                                           ; $62d0: $88
	adc  b                                           ; $62d1: $88
	adc  b                                           ; $62d2: $88
	adc  b                                           ; $62d3: $88
	adc  b                                           ; $62d4: $88
	adc  b                                           ; $62d5: $88
	adc  b                                           ; $62d6: $88
	adc  b                                           ; $62d7: $88
	adc  b                                           ; $62d8: $88
	sbc  c                                           ; $62d9: $99
	adc  b                                           ; $62da: $88
	adc  b                                           ; $62db: $88
	sbc  c                                           ; $62dc: $99
	adc  b                                           ; $62dd: $88
	adc  b                                           ; $62de: $88
	add  a                                           ; $62df: $87
	adc  b                                           ; $62e0: $88
	adc  b                                           ; $62e1: $88
	ld   a, b                                        ; $62e2: $78
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	adc  b                                           ; $62e5: $88
	adc  b                                           ; $62e6: $88
	adc  c                                           ; $62e7: $89
	sbc  c                                           ; $62e8: $99
	sbc  b                                           ; $62e9: $98
	adc  b                                           ; $62ea: $88
	sbc  b                                           ; $62eb: $98
	adc  b                                           ; $62ec: $88
	adc  b                                           ; $62ed: $88
	adc  b                                           ; $62ee: $88
	add  a                                           ; $62ef: $87
	adc  b                                           ; $62f0: $88
	adc  b                                           ; $62f1: $88
	adc  b                                           ; $62f2: $88
	adc  b                                           ; $62f3: $88
	adc  c                                           ; $62f4: $89
	sbc  b                                           ; $62f5: $98
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
	ld   a, b                                        ; $6308: $78
	adc  b                                           ; $6309: $88
	adc  b                                           ; $630a: $88
	adc  b                                           ; $630b: $88
	adc  b                                           ; $630c: $88
	adc  b                                           ; $630d: $88
	adc  b                                           ; $630e: $88
	adc  b                                           ; $630f: $88
	adc  b                                           ; $6310: $88
	adc  c                                           ; $6311: $89
	adc  b                                           ; $6312: $88
	adc  b                                           ; $6313: $88
	adc  b                                           ; $6314: $88
	adc  b                                           ; $6315: $88
	adc  b                                           ; $6316: $88
	adc  b                                           ; $6317: $88
	adc  b                                           ; $6318: $88
	ld   [hl], a                                     ; $6319: $77
	ld   [hl], a                                     ; $631a: $77
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
	ld   [hl], a                                     ; $6329: $77
	ld   a, b                                        ; $632a: $78
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
	sbc  b                                           ; $633f: $98
	adc  b                                           ; $6340: $88
	adc  b                                           ; $6341: $88
	adc  b                                           ; $6342: $88
	adc  b                                           ; $6343: $88
	ld   a, b                                        ; $6344: $78
	ld   a, b                                        ; $6345: $78
	add  a                                           ; $6346: $87
	adc  b                                           ; $6347: $88
	adc  b                                           ; $6348: $88
	adc  c                                           ; $6349: $89
	sbc  c                                           ; $634a: $99
	sbc  c                                           ; $634b: $99
	sbc  b                                           ; $634c: $98
	sbc  b                                           ; $634d: $98
	adc  b                                           ; $634e: $88
	adc  b                                           ; $634f: $88
	ld   [hl], a                                     ; $6350: $77
	ld   [hl], a                                     ; $6351: $77
	ld   [hl], a                                     ; $6352: $77
	ld   a, b                                        ; $6353: $78
	adc  c                                           ; $6354: $89
	adc  c                                           ; $6355: $89
	adc  b                                           ; $6356: $88
	sbc  c                                           ; $6357: $99
	sbc  b                                           ; $6358: $98
	sbc  b                                           ; $6359: $98
	adc  c                                           ; $635a: $89
	adc  b                                           ; $635b: $88
	adc  b                                           ; $635c: $88
	adc  b                                           ; $635d: $88
	adc  b                                           ; $635e: $88
	ld   [hl], a                                     ; $635f: $77
	ld   [hl], a                                     ; $6360: $77
	ld   a, b                                        ; $6361: $78
	adc  b                                           ; $6362: $88
	adc  b                                           ; $6363: $88
	adc  b                                           ; $6364: $88
	sbc  b                                           ; $6365: $98
	adc  c                                           ; $6366: $89
	sbc  b                                           ; $6367: $98
	adc  c                                           ; $6368: $89
	sbc  c                                           ; $6369: $99
	sbc  c                                           ; $636a: $99
	adc  c                                           ; $636b: $89
	ld   [hl], a                                     ; $636c: $77
	ld   [hl], a                                     ; $636d: $77
	ld   [hl], a                                     ; $636e: $77
	ld   [hl], a                                     ; $636f: $77
	adc  b                                           ; $6370: $88
	adc  c                                           ; $6371: $89
	sbc  c                                           ; $6372: $99
	sbc  d                                           ; $6373: $9a
	xor  c                                           ; $6374: $a9
	sbc  c                                           ; $6375: $99
	adc  b                                           ; $6376: $88
	ld   a, b                                        ; $6377: $78
	adc  b                                           ; $6378: $88
	ld   [hl], a                                     ; $6379: $77
	halt                                             ; $637a: $76
	ld   [hl], a                                     ; $637b: $77
	ld   a, b                                        ; $637c: $78
	sbc  b                                           ; $637d: $98
	adc  b                                           ; $637e: $88
	sbc  b                                           ; $637f: $98
	sbc  c                                           ; $6380: $99
	xor  d                                           ; $6381: $aa
	sbc  c                                           ; $6382: $99
	add  a                                           ; $6383: $87
	ld   [hl], a                                     ; $6384: $77
	ld   [hl], a                                     ; $6385: $77
	ld   [hl], a                                     ; $6386: $77
	halt                                             ; $6387: $76
	ld   h, a                                        ; $6388: $67
	adc  b                                           ; $6389: $88
	sbc  b                                           ; $638a: $98
	sbc  c                                           ; $638b: $99
	adc  b                                           ; $638c: $88
	sbc  d                                           ; $638d: $9a
	sbc  d                                           ; $638e: $9a
	xor  c                                           ; $638f: $a9
	sub  a                                           ; $6390: $97
	ld   h, l                                        ; $6391: $65
	ld   d, [hl]                                     ; $6392: $56
	ld   a, b                                        ; $6393: $78
	halt                                             ; $6394: $76
	ld   a, b                                        ; $6395: $78
	sbc  b                                           ; $6396: $98
	ld   [hl], a                                     ; $6397: $77
	sbc  c                                           ; $6398: $99
	sbc  c                                           ; $6399: $99
	xor  d                                           ; $639a: $aa
	xor  d                                           ; $639b: $aa
	xor  b                                           ; $639c: $a8
	ld   [hl], l                                     ; $639d: $75
	ld   b, h                                        ; $639e: $44
	ld   d, [hl]                                     ; $639f: $56
	sbc  b                                           ; $63a0: $98
	ld   [hl], a                                     ; $63a1: $77
	adc  d                                           ; $63a2: $8a
	xor  d                                           ; $63a3: $aa
	add  a                                           ; $63a4: $87
	adc  b                                           ; $63a5: $88
	sbc  c                                           ; $63a6: $99
	sbc  e                                           ; $63a7: $9b
	cp   e                                           ; $63a8: $bb
	xor  b                                           ; $63a9: $a8
	ld   h, h                                        ; $63aa: $64
	ld   b, e                                        ; $63ab: $43
	ld   b, a                                        ; $63ac: $47
	adc  c                                           ; $63ad: $89
	adc  b                                           ; $63ae: $88
	sbc  d                                           ; $63af: $9a
	xor  b                                           ; $63b0: $a8
	add  [hl]                                        ; $63b1: $86
	adc  d                                           ; $63b2: $8a
	xor  d                                           ; $63b3: $aa
	xor  h                                           ; $63b4: $ac
	res  2, [hl]                                     ; $63b5: $cb $96
	ld   d, e                                        ; $63b7: $53
	ld   [hl-], a                                    ; $63b8: $32
	ld   l, b                                        ; $63b9: $68
	sbc  c                                           ; $63ba: $99
	ld   a, c                                        ; $63bb: $79
	xor  d                                           ; $63bc: $aa
	and  a                                           ; $63bd: $a7
	ld   [hl], a                                     ; $63be: $77
	sbc  d                                           ; $63bf: $9a
	xor  d                                           ; $63c0: $aa
	xor  e                                           ; $63c1: $ab
	cp   d                                           ; $63c2: $ba
	ld   [hl], l                                     ; $63c3: $75
	ld   b, e                                        ; $63c4: $43
	inc  [hl]                                        ; $63c5: $34
	ld   a, c                                        ; $63c6: $79
	sbc  c                                           ; $63c7: $99
	sbc  d                                           ; $63c8: $9a
	xor  d                                           ; $63c9: $aa
	adc  b                                           ; $63ca: $88
	adc  b                                           ; $63cb: $88
	sbc  d                                           ; $63cc: $9a
	cp   e                                           ; $63cd: $bb
	cp   e                                           ; $63ce: $bb
	xor  b                                           ; $63cf: $a8
	ld   d, e                                        ; $63d0: $53
	ld   [hl-], a                                    ; $63d1: $32
	ld   b, [hl]                                     ; $63d2: $46
	ld   a, c                                        ; $63d3: $79
	adc  c                                           ; $63d4: $89
	sbc  d                                           ; $63d5: $9a
	sbc  b                                           ; $63d6: $98
	sbc  b                                           ; $63d7: $98
	adc  c                                           ; $63d8: $89
	sbc  d                                           ; $63d9: $9a
	cp   e                                           ; $63da: $bb
	cp   e                                           ; $63db: $bb
	sub  [hl]                                        ; $63dc: $96
	ld   b, e                                        ; $63dd: $43
	inc  h                                           ; $63de: $24
	ld   l, b                                        ; $63df: $68
	xor  b                                           ; $63e0: $a8
	sbc  b                                           ; $63e1: $98
	sbc  c                                           ; $63e2: $99
	adc  b                                           ; $63e3: $88
	adc  b                                           ; $63e4: $88
	adc  b                                           ; $63e5: $88
	xor  e                                           ; $63e6: $ab
	xor  e                                           ; $63e7: $ab
	xor  d                                           ; $63e8: $aa
	ld   [hl], h                                     ; $63e9: $74
	ld   [hl-], a                                    ; $63ea: $32
	dec  [hl]                                        ; $63eb: $35
	adc  c                                           ; $63ec: $89
	sbc  c                                           ; $63ed: $99
	sbc  c                                           ; $63ee: $99
	sbc  c                                           ; $63ef: $99
	ld   a, b                                        ; $63f0: $78
	adc  c                                           ; $63f1: $89
	xor  c                                           ; $63f2: $a9
	cp   d                                           ; $63f3: $ba
	cp   h                                           ; $63f4: $bc
	sbc  c                                           ; $63f5: $99
	ld   d, h                                        ; $63f6: $54
	ld   [hl-], a                                    ; $63f7: $32
	ld   b, [hl]                                     ; $63f8: $46
	xor  e                                           ; $63f9: $ab
	adc  b                                           ; $63fa: $88
	ld   a, b                                        ; $63fb: $78
	xor  b                                           ; $63fc: $a8
	sub  a                                           ; $63fd: $97
	sbc  c                                           ; $63fe: $99
	xor  d                                           ; $63ff: $aa
	xor  e                                           ; $6400: $ab
	xor  d                                           ; $6401: $aa
	sub  a                                           ; $6402: $97
	ld   b, e                                        ; $6403: $43
	inc  sp                                          ; $6404: $33
	ld   e, b                                        ; $6405: $58
	xor  d                                           ; $6406: $aa
	adc  c                                           ; $6407: $89
	sbc  c                                           ; $6408: $99
	add  a                                           ; $6409: $87
	ld   [hl], a                                     ; $640a: $77
	sbc  c                                           ; $640b: $99
	sbc  e                                           ; $640c: $9b
	xor  e                                           ; $640d: $ab
	cp   d                                           ; $640e: $ba
	add  l                                           ; $640f: $85
	inc  sp                                          ; $6410: $33
	dec  [hl]                                        ; $6411: $35
	ld   a, c                                        ; $6412: $79
	sub  a                                           ; $6413: $97
	ld   a, b                                        ; $6414: $78
	xor  e                                           ; $6415: $ab
	sbc  c                                           ; $6416: $99
	ld   a, c                                        ; $6417: $79
	adc  d                                           ; $6418: $8a
	xor  c                                           ; $6419: $a9
	xor  e                                           ; $641a: $ab
	cp   d                                           ; $641b: $ba
	ld   [hl], h                                     ; $641c: $74
	inc  hl                                          ; $641d: $23
	dec  [hl]                                        ; $641e: $35
	adc  c                                           ; $641f: $89
	sub  a                                           ; $6420: $97
	ld   [hl], a                                     ; $6421: $77
	adc  c                                           ; $6422: $89
	adc  b                                           ; $6423: $88
	ld   a, b                                        ; $6424: $78
	sbc  c                                           ; $6425: $99
	xor  d                                           ; $6426: $aa
	cp   e                                           ; $6427: $bb
	xor  c                                           ; $6428: $a9
	ld   h, h                                        ; $6429: $64
	inc  sp                                          ; $642a: $33
	ld   b, [hl]                                     ; $642b: $46
	adc  e                                           ; $642c: $8b
	and  a                                           ; $642d: $a7
	ld   a, b                                        ; $642e: $78
	sbc  b                                           ; $642f: $98
	add  a                                           ; $6430: $87
	adc  c                                           ; $6431: $89
	sbc  d                                           ; $6432: $9a
	xor  d                                           ; $6433: $aa
	cp   e                                           ; $6434: $bb
	cp   b                                           ; $6435: $b8
	ld   b, d                                        ; $6436: $42
	inc  [hl]                                        ; $6437: $34
	ld   h, a                                        ; $6438: $67
	adc  b                                           ; $6439: $88
	ld   a, c                                        ; $643a: $79
	sbc  b                                           ; $643b: $98
	sbc  b                                           ; $643c: $98
	add  a                                           ; $643d: $87
	sbc  c                                           ; $643e: $99
	sbc  d                                           ; $643f: $9a
	xor  e                                           ; $6440: $ab
	call z, Call_0c0_42a7                            ; $6441: $cc $a7 $42
	inc  h                                           ; $6444: $24
	ld   l, b                                        ; $6445: $68
	sbc  c                                           ; $6446: $99
	ld   [hl], a                                     ; $6447: $77
	ld   a, b                                        ; $6448: $78
	xor  d                                           ; $6449: $aa
	sbc  b                                           ; $644a: $98
	adc  b                                           ; $644b: $88
	sbc  d                                           ; $644c: $9a
	xor  e                                           ; $644d: $ab
	cp   h                                           ; $644e: $bc
	and  [hl]                                        ; $644f: $a6
	ld   b, d                                        ; $6450: $42
	dec  [hl]                                        ; $6451: $35
	ld   a, c                                        ; $6452: $79
	sub  a                                           ; $6453: $97
	ld   l, b                                        ; $6454: $68
	sbc  d                                           ; $6455: $9a
	sub  a                                           ; $6456: $97
	adc  b                                           ; $6457: $88
	xor  c                                           ; $6458: $a9
	sbc  c                                           ; $6459: $99
	sbc  d                                           ; $645a: $9a
	cp   e                                           ; $645b: $bb
	sub  [hl]                                        ; $645c: $96
	inc  sp                                          ; $645d: $33
	inc  [hl]                                        ; $645e: $34
	ld   a, c                                        ; $645f: $79
	sub  a                                           ; $6460: $97
	ld   h, a                                        ; $6461: $67
	sbc  d                                           ; $6462: $9a
	sbc  b                                           ; $6463: $98
	ld   [hl], a                                     ; $6464: $77
	sbc  d                                           ; $6465: $9a
	xor  c                                           ; $6466: $a9
	xor  h                                           ; $6467: $ac
	res  0, h                                        ; $6468: $cb $84
	inc  sp                                          ; $646a: $33
	ld   d, [hl]                                     ; $646b: $56
	adc  c                                           ; $646c: $89
	sub  a                                           ; $646d: $97
	ld   l, b                                        ; $646e: $68
	adc  c                                           ; $646f: $89
	sbc  c                                           ; $6470: $99
	sbc  b                                           ; $6471: $98
	sbc  c                                           ; $6472: $99
	xor  d                                           ; $6473: $aa
	cp   e                                           ; $6474: $bb
	cp   d                                           ; $6475: $ba
	ld   [hl], l                                     ; $6476: $75
	inc  sp                                          ; $6477: $33
	dec  [hl]                                        ; $6478: $35
	adc  d                                           ; $6479: $8a
	add  a                                           ; $647a: $87
	ld   [hl], a                                     ; $647b: $77
	sbc  d                                           ; $647c: $9a
	sbc  c                                           ; $647d: $99
	ld   a, b                                        ; $647e: $78
	sbc  d                                           ; $647f: $9a
	xor  d                                           ; $6480: $aa
	xor  e                                           ; $6481: $ab
	jp   z, Jump_0c0_4475                            ; $6482: $ca $75 $44

	ld   d, [hl]                                     ; $6485: $56
	sbc  d                                           ; $6486: $9a
	sub  a                                           ; $6487: $97
	ld   h, a                                        ; $6488: $67
	adc  c                                           ; $6489: $89
	sbc  c                                           ; $648a: $99
	ld   [hl], a                                     ; $648b: $77
	ld   a, d                                        ; $648c: $7a
	xor  d                                           ; $648d: $aa
	xor  e                                           ; $648e: $ab
	cp   d                                           ; $648f: $ba
	ld   h, h                                        ; $6490: $64
	inc  sp                                          ; $6491: $33
	ld   d, a                                        ; $6492: $57
	adc  c                                           ; $6493: $89
	ld   [hl], a                                     ; $6494: $77
	sbc  c                                           ; $6495: $99

Call_0c0_6496:
	sbc  c                                           ; $6496: $99
	add  a                                           ; $6497: $87
	adc  c                                           ; $6498: $89
	sbc  c                                           ; $6499: $99
	sbc  e                                           ; $649a: $9b
	res  7, b                                        ; $649b: $cb $b8
	ld   h, h                                        ; $649d: $64
	ld   b, l                                        ; $649e: $45
	ld   d, a                                        ; $649f: $57
	sbc  c                                           ; $64a0: $99
	ld   [hl], a                                     ; $64a1: $77
	ld   a, b                                        ; $64a2: $78
	adc  c                                           ; $64a3: $89
	sbc  b                                           ; $64a4: $98
	sbc  b                                           ; $64a5: $98
	sbc  c                                           ; $64a6: $99
	cp   e                                           ; $64a7: $bb

Call_0c0_64a8:
	res  4, a                                        ; $64a8: $cb $a7
	ld   d, h                                        ; $64aa: $54
	ld   d, l                                        ; $64ab: $55
	ld   l, b                                        ; $64ac: $68
	sbc  c                                           ; $64ad: $99
	ld   [hl], a                                     ; $64ae: $77
	ld   a, c                                        ; $64af: $79
	sbc  c                                           ; $64b0: $99
	sbc  b                                           ; $64b1: $98
	ld   a, b                                        ; $64b2: $78
	sbc  c                                           ; $64b3: $99
	xor  c                                           ; $64b4: $a9
	xor  c                                           ; $64b5: $a9
	and  [hl]                                        ; $64b6: $a6
	ld   b, h                                        ; $64b7: $44
	ld   d, [hl]                                     ; $64b8: $56
	ld   a, b                                        ; $64b9: $78
	adc  b                                           ; $64ba: $88
	ld   a, b                                        ; $64bb: $78
	xor  c                                           ; $64bc: $a9
	sbc  b                                           ; $64bd: $98
	adc  c                                           ; $64be: $89
	sbc  b                                           ; $64bf: $98
	adc  c                                           ; $64c0: $89
	xor  e                                           ; $64c1: $ab
	ret                                              ; $64c2: $c9


	add  l                                           ; $64c3: $85
	ld   d, l                                        ; $64c4: $55
	ld   h, l                                        ; $64c5: $65
	ld   l, c                                        ; $64c6: $69
	sbc  b                                           ; $64c7: $98
	halt                                             ; $64c8: $76

Call_0c0_64c9:
	ld   a, c                                        ; $64c9: $79
	sbc  c                                           ; $64ca: $99
	sub  [hl]                                        ; $64cb: $96
	ld   l, b                                        ; $64cc: $68
	xor  d                                           ; $64cd: $aa
	xor  d                                           ; $64ce: $aa
	cp   c                                           ; $64cf: $b9
	add  l                                           ; $64d0: $85
	ld   d, l                                        ; $64d1: $55
	ld   h, [hl]                                     ; $64d2: $66
	ld   a, b                                        ; $64d3: $78
	sbc  c                                           ; $64d4: $99
	ld   [hl], a                                     ; $64d5: $77
	adc  b                                           ; $64d6: $88
	sbc  c                                           ; $64d7: $99
	sbc  d                                           ; $64d8: $9a
	xor  c                                           ; $64d9: $a9
	adc  b                                           ; $64da: $88
	adc  c                                           ; $64db: $89
	xor  d                                           ; $64dc: $aa
	add  l                                           ; $64dd: $85
	ld   b, h                                        ; $64de: $44
	ld   b, [hl]                                     ; $64df: $46
	adc  d                                           ; $64e0: $8a
	xor  c                                           ; $64e1: $a9
	ld   h, [hl]                                     ; $64e2: $66
	ld   l, c                                        ; $64e3: $69
	xor  d                                           ; $64e4: $aa
	xor  c                                           ; $64e5: $a9
	sbc  b                                           ; $64e6: $98
	sbc  d                                           ; $64e7: $9a
	cp   e                                           ; $64e8: $bb
	xor  b                                           ; $64e9: $a8
	ld   d, h                                        ; $64ea: $54
	ld   b, l                                        ; $64eb: $45
	ld   h, a                                        ; $64ec: $67
	adc  b                                           ; $64ed: $88
	sbc  b                                           ; $64ee: $98
	sbc  b                                           ; $64ef: $98
	adc  c                                           ; $64f0: $89
	sbc  c                                           ; $64f1: $99
	sbc  c                                           ; $64f2: $99
	sbc  c                                           ; $64f3: $99
	xor  e                                           ; $64f4: $ab
	xor  c                                           ; $64f5: $a9
	halt                                             ; $64f6: $76
	ld   d, l                                        ; $64f7: $55
	ld   h, [hl]                                     ; $64f8: $66
	ld   [hl], a                                     ; $64f9: $77
	adc  b                                           ; $64fa: $88
	add  a                                           ; $64fb: $87
	adc  c                                           ; $64fc: $89
	sbc  d                                           ; $64fd: $9a
	sbc  b                                           ; $64fe: $98
	ld   [hl], a                                     ; $64ff: $77
	sbc  e                                           ; $6500: $9b
	cp   d                                           ; $6501: $ba
	sbc  b                                           ; $6502: $98
	halt                                             ; $6503: $76
	ld   d, l                                        ; $6504: $55
	ld   d, l                                        ; $6505: $55
	ld   l, b                                        ; $6506: $68
	adc  b                                           ; $6507: $88
	ld   [hl], a                                     ; $6508: $77
	adc  c                                           ; $6509: $89
	sbc  d                                           ; $650a: $9a
	sbc  c                                           ; $650b: $99
	adc  c                                           ; $650c: $89
	xor  d                                           ; $650d: $aa
	xor  d                                           ; $650e: $aa
	sbc  b                                           ; $650f: $98
	add  [hl]                                        ; $6510: $86
	ld   d, l                                        ; $6511: $55
	ld   d, [hl]                                     ; $6512: $56
	ld   a, b                                        ; $6513: $78
	add  a                                           ; $6514: $87
	ld   [hl], a                                     ; $6515: $77
	ld   a, c                                        ; $6516: $79
	sbc  d                                           ; $6517: $9a
	sbc  b                                           ; $6518: $98
	ld   a, b                                        ; $6519: $78
	sbc  d                                           ; $651a: $9a
	jp   z, Jump_0c0_65a7                            ; $651b: $ca $a7 $65

	ld   h, [hl]                                     ; $651e: $66
	ld   h, a                                        ; $651f: $67
	ld   a, c                                        ; $6520: $79
	adc  b                                           ; $6521: $88
	halt                                             ; $6522: $76
	ld   h, a                                        ; $6523: $67
	sbc  c                                           ; $6524: $99
	sbc  c                                           ; $6525: $99
	adc  b                                           ; $6526: $88
	sbc  d                                           ; $6527: $9a
	cp   e                                           ; $6528: $bb
	sub  a                                           ; $6529: $97
	halt                                             ; $652a: $76
	ld   d, l                                        ; $652b: $55
	ld   d, [hl]                                     ; $652c: $56
	ld   a, c                                        ; $652d: $79
	sbc  b                                           ; $652e: $98
	halt                                             ; $652f: $76
	ld   a, b                                        ; $6530: $78
	xor  c                                           ; $6531: $a9
	xor  c                                           ; $6532: $a9
	adc  b                                           ; $6533: $88
	adc  c                                           ; $6534: $89
	xor  e                                           ; $6535: $ab
	sbc  b                                           ; $6536: $98
	halt                                             ; $6537: $76
	ld   d, [hl]                                     ; $6538: $56
	ld   h, [hl]                                     ; $6539: $66
	adc  c                                           ; $653a: $89
	add  a                                           ; $653b: $87
	ld   h, [hl]                                     ; $653c: $66
	ld   a, c                                        ; $653d: $79
	xor  d                                           ; $653e: $aa
	sub  a                                           ; $653f: $97
	ld   a, b                                        ; $6540: $78
	sbc  c                                           ; $6541: $99
	sbc  c                                           ; $6542: $99
	sub  a                                           ; $6543: $97
	halt                                             ; $6544: $76
	ld   d, [hl]                                     ; $6545: $56

Jump_0c0_6546:
	ld   h, a                                        ; $6546: $67
	sbc  d                                           ; $6547: $9a
	sbc  c                                           ; $6548: $99
	adc  b                                           ; $6549: $88
	sbc  c                                           ; $654a: $99
	sbc  d                                           ; $654b: $9a
	sbc  b                                           ; $654c: $98
	sbc  c                                           ; $654d: $99
	xor  c                                           ; $654e: $a9
	xor  d                                           ; $654f: $aa
	add  a                                           ; $6550: $87
	ld   h, l                                        ; $6551: $65
	ld   d, [hl]                                     ; $6552: $56
	ld   h, a                                        ; $6553: $67
	adc  b                                           ; $6554: $88
	sub  a                                           ; $6555: $97
	ld   [hl], a                                     ; $6556: $77
	adc  c                                           ; $6557: $89
	xor  c                                           ; $6558: $a9
	adc  b                                           ; $6559: $88
	adc  c                                           ; $655a: $89
	sbc  d                                           ; $655b: $9a
	sbc  c                                           ; $655c: $99
	adc  b                                           ; $655d: $88
	halt                                             ; $655e: $76
	ld   h, [hl]                                     ; $655f: $66
	ld   h, a                                        ; $6560: $67
	sbc  d                                           ; $6561: $9a
	sub  a                                           ; $6562: $97
	ld   a, b                                        ; $6563: $78
	xor  c                                           ; $6564: $a9
	sbc  b                                           ; $6565: $98
	adc  c                                           ; $6566: $89
	sbc  d                                           ; $6567: $9a
	xor  c                                           ; $6568: $a9
	adc  c                                           ; $6569: $89
	adc  b                                           ; $656a: $88
	ld   h, l                                        ; $656b: $65
	ld   d, [hl]                                     ; $656c: $56
	ld   [hl], a                                     ; $656d: $77
	adc  b                                           ; $656e: $88
	add  a                                           ; $656f: $87
	ld   [hl], a                                     ; $6570: $77
	sbc  c                                           ; $6571: $99
	adc  b                                           ; $6572: $88
	adc  b                                           ; $6573: $88
	adc  c                                           ; $6574: $89
	cp   d                                           ; $6575: $ba
	sbc  b                                           ; $6576: $98
	add  a                                           ; $6577: $87
	ld   h, [hl]                                     ; $6578: $66
	ld   h, a                                        ; $6579: $67
	ld   [hl], a                                     ; $657a: $77
	sbc  c                                           ; $657b: $99
	halt                                             ; $657c: $76
	ld   h, a                                        ; $657d: $67
	sbc  c                                           ; $657e: $99
	xor  c                                           ; $657f: $a9
	adc  c                                           ; $6580: $89
	adc  c                                           ; $6581: $89
	xor  d                                           ; $6582: $aa
	xor  d                                           ; $6583: $aa
	add  a                                           ; $6584: $87
	ld   h, l                                        ; $6585: $65
	ld   h, [hl]                                     ; $6586: $66
	ld   h, a                                        ; $6587: $67
	sbc  c                                           ; $6588: $99
	sub  a                                           ; $6589: $97
	ld   [hl], a                                     ; $658a: $77
	sbc  d                                           ; $658b: $9a
	sbc  c                                           ; $658c: $99
	sbc  c                                           ; $658d: $99
	xor  d                                           ; $658e: $aa
	xor  b                                           ; $658f: $a8
	adc  b                                           ; $6590: $88
	add  a                                           ; $6591: $87
	ld   h, [hl]                                     ; $6592: $66
	ld   d, l                                        ; $6593: $55
	ld   d, [hl]                                     ; $6594: $56
	adc  b                                           ; $6595: $88
	sbc  b                                           ; $6596: $98
	ld   [hl], a                                     ; $6597: $77
	ld   a, c                                        ; $6598: $79
	xor  d                                           ; $6599: $aa
	adc  c                                           ; $659a: $89
	sbc  d                                           ; $659b: $9a
	xor  d                                           ; $659c: $aa
	xor  b                                           ; $659d: $a8
	adc  b                                           ; $659e: $88
	halt                                             ; $659f: $76
	ld   h, [hl]                                     ; $65a0: $66
	ld   h, a                                        ; $65a1: $67
	sbc  c                                           ; $65a2: $99
	ld   [hl], a                                     ; $65a3: $77
	ld   a, b                                        ; $65a4: $78
	xor  d                                           ; $65a5: $aa
	sbc  c                                           ; $65a6: $99

Jump_0c0_65a7:
	adc  b                                           ; $65a7: $88
	sbc  c                                           ; $65a8: $99
	xor  c                                           ; $65a9: $a9
	xor  c                                           ; $65aa: $a9
	sub  a                                           ; $65ab: $97
	ld   d, l                                        ; $65ac: $55
	ld   d, [hl]                                     ; $65ad: $56
	ld   [hl], a                                     ; $65ae: $77
	sbc  b                                           ; $65af: $98
	add  a                                           ; $65b0: $87
	ld   [hl], a                                     ; $65b1: $77
	adc  d                                           ; $65b2: $8a
	sbc  c                                           ; $65b3: $99
	adc  b                                           ; $65b4: $88
	sbc  d                                           ; $65b5: $9a
	xor  c                                           ; $65b6: $a9
	sbc  c                                           ; $65b7: $99
	adc  b                                           ; $65b8: $88
	halt                                             ; $65b9: $76
	ld   d, [hl]                                     ; $65ba: $56
	ld   h, a                                        ; $65bb: $67
	adc  c                                           ; $65bc: $89
	sub  a                                           ; $65bd: $97
	ld   h, [hl]                                     ; $65be: $66
	ld   a, c                                        ; $65bf: $79
	xor  d                                           ; $65c0: $aa
	xor  b                                           ; $65c1: $a8
	ld   a, b                                        ; $65c2: $78
	sbc  c                                           ; $65c3: $99
	sbc  c                                           ; $65c4: $99
	sbc  b                                           ; $65c5: $98
	halt                                             ; $65c6: $76
	ld   h, l                                        ; $65c7: $65
	ld   h, a                                        ; $65c8: $67
	sbc  d                                           ; $65c9: $9a
	add  a                                           ; $65ca: $87
	ld   h, [hl]                                     ; $65cb: $66
	ld   a, c                                        ; $65cc: $79
	xor  c                                           ; $65cd: $a9
	sbc  b                                           ; $65ce: $98
	adc  c                                           ; $65cf: $89
	sbc  c                                           ; $65d0: $99
	xor  c                                           ; $65d1: $a9
	sbc  b                                           ; $65d2: $98
	add  a                                           ; $65d3: $87
	ld   h, [hl]                                     ; $65d4: $66
	ld   h, [hl]                                     ; $65d5: $66

Call_0c0_65d6:
	adc  d                                           ; $65d6: $8a
	xor  b                                           ; $65d7: $a8
	ld   h, l                                        ; $65d8: $65
	ld   l, b                                        ; $65d9: $68
	xor  d                                           ; $65da: $aa
	sbc  b                                           ; $65db: $98
	adc  c                                           ; $65dc: $89
	sbc  c                                           ; $65dd: $99
	sbc  c                                           ; $65de: $99
	xor  c                                           ; $65df: $a9
	sub  a                                           ; $65e0: $97
	ld   h, l                                        ; $65e1: $65
	ld   d, [hl]                                     ; $65e2: $56
	adc  d                                           ; $65e3: $8a
	xor  c                                           ; $65e4: $a9
	halt                                             ; $65e5: $76
	ld   h, a                                        ; $65e6: $67
	sbc  d                                           ; $65e7: $9a
	xor  c                                           ; $65e8: $a9
	add  a                                           ; $65e9: $87
	adc  c                                           ; $65ea: $89
	sbc  d                                           ; $65eb: $9a
	xor  d                                           ; $65ec: $aa
	sbc  b                                           ; $65ed: $98
	halt                                             ; $65ee: $76
	ld   d, [hl]                                     ; $65ef: $56
	ld   a, b                                        ; $65f0: $78
	sbc  c                                           ; $65f1: $99
	add  a                                           ; $65f2: $87
	ld   h, a                                        ; $65f3: $67
	adc  d                                           ; $65f4: $8a
	sbc  b                                           ; $65f5: $98
	adc  c                                           ; $65f6: $89
	sbc  c                                           ; $65f7: $99
	sbc  c                                           ; $65f8: $99
	sbc  c                                           ; $65f9: $99
	sbc  c                                           ; $65fa: $99
	halt                                             ; $65fb: $76
	ld   d, l                                        ; $65fc: $55
	ld   h, a                                        ; $65fd: $67
	sbc  c                                           ; $65fe: $99
	sub  a                                           ; $65ff: $97
	ld   h, [hl]                                     ; $6600: $66
	ld   a, c                                        ; $6601: $79
	sbc  d                                           ; $6602: $9a
	adc  c                                           ; $6603: $89
	adc  c                                           ; $6604: $89
	sbc  c                                           ; $6605: $99
	sbc  c                                           ; $6606: $99
	sbc  c                                           ; $6607: $99
	add  [hl]                                        ; $6608: $86
	ld   h, l                                        ; $6609: $65
	ld   h, a                                        ; $660a: $67
	sbc  d                                           ; $660b: $9a
	xor  b                                           ; $660c: $a8
	ld   h, l                                        ; $660d: $65
	ld   l, b                                        ; $660e: $68
	sbc  d                                           ; $660f: $9a
	xor  c                                           ; $6610: $a9
	add  a                                           ; $6611: $87
	adc  b                                           ; $6612: $88
	sbc  d                                           ; $6613: $9a
	sbc  c                                           ; $6614: $99
	sub  a                                           ; $6615: $97
	ld   h, l                                        ; $6616: $65
	ld   d, [hl]                                     ; $6617: $56
	adc  c                                           ; $6618: $89
	xor  b                                           ; $6619: $a8
	ld   h, [hl]                                     ; $661a: $66
	ld   l, b                                        ; $661b: $68
	xor  d                                           ; $661c: $aa
	xor  b                                           ; $661d: $a8
	sbc  b                                           ; $661e: $98
	sbc  b                                           ; $661f: $98
	sbc  c                                           ; $6620: $99
	sbc  d                                           ; $6621: $9a
	xor  c                                           ; $6622: $a9
	halt                                             ; $6623: $76
	ld   d, [hl]                                     ; $6624: $56
	ld   a, c                                        ; $6625: $79
	sbc  d                                           ; $6626: $9a
	add  a                                           ; $6627: $87
	ld   d, l                                        ; $6628: $55
	ld   a, c                                        ; $6629: $79
	cp   d                                           ; $662a: $ba
	sbc  b                                           ; $662b: $98
	adc  b                                           ; $662c: $88
	sbc  c                                           ; $662d: $99
	sbc  c                                           ; $662e: $99
	sbc  b                                           ; $662f: $98
	halt                                             ; $6630: $76
	ld   d, l                                        ; $6631: $55
	ld   d, a                                        ; $6632: $57
	xor  e                                           ; $6633: $ab
	sbc  b                                           ; $6634: $98
	ld   h, [hl]                                     ; $6635: $66
	ld   a, c                                        ; $6636: $79
	xor  d                                           ; $6637: $aa
	sbc  b                                           ; $6638: $98
	sbc  c                                           ; $6639: $99
	adc  b                                           ; $663a: $88
	adc  b                                           ; $663b: $88
	xor  d                                           ; $663c: $aa
	sbc  b                                           ; $663d: $98
	ld   h, l                                        ; $663e: $65
	ld   d, [hl]                                     ; $663f: $56
	ld   a, b                                        ; $6640: $78
	xor  c                                           ; $6641: $a9
	sub  a                                           ; $6642: $97
	ld   h, [hl]                                     ; $6643: $66
	ld   a, c                                        ; $6644: $79
	sbc  d                                           ; $6645: $9a
	sbc  b                                           ; $6646: $98
	adc  b                                           ; $6647: $88
	adc  c                                           ; $6648: $89
	sbc  c                                           ; $6649: $99
	sbc  b                                           ; $664a: $98
	add  [hl]                                        ; $664b: $86
	ld   d, l                                        ; $664c: $55
	ld   d, a                                        ; $664d: $57
	sbc  c                                           ; $664e: $99
	sub  a                                           ; $664f: $97
	ld   h, a                                        ; $6650: $67
	adc  b                                           ; $6651: $88
	sbc  b                                           ; $6652: $98
	sbc  c                                           ; $6653: $99
	sbc  c                                           ; $6654: $99
	sbc  b                                           ; $6655: $98
	adc  c                                           ; $6656: $89
	xor  d                                           ; $6657: $aa
	sub  a                                           ; $6658: $97
	ld   h, l                                        ; $6659: $65
	ld   d, [hl]                                     ; $665a: $56
	ld   a, b                                        ; $665b: $78
	xor  c                                           ; $665c: $a9
	add  a                                           ; $665d: $87
	ld   h, [hl]                                     ; $665e: $66
	ld   a, c                                        ; $665f: $79
	xor  d                                           ; $6660: $aa
	sbc  b                                           ; $6661: $98
	adc  b                                           ; $6662: $88
	adc  c                                           ; $6663: $89
	adc  c                                           ; $6664: $89
	sbc  d                                           ; $6665: $9a
	sub  a                                           ; $6666: $97
	ld   d, h                                        ; $6667: $54
	ld   b, [hl]                                     ; $6668: $46
	adc  c                                           ; $6669: $89
	xor  c                                           ; $666a: $a9
	halt                                             ; $666b: $76
	ld   h, [hl]                                     ; $666c: $66
	adc  c                                           ; $666d: $89
	xor  c                                           ; $666e: $a9
	sbc  c                                           ; $666f: $99
	adc  b                                           ; $6670: $88
	adc  c                                           ; $6671: $89
	sbc  d                                           ; $6672: $9a
	sbc  d                                           ; $6673: $9a
	add  [hl]                                        ; $6674: $86
	ld   d, h                                        ; $6675: $54
	ld   d, a                                        ; $6676: $57
	adc  d                                           ; $6677: $8a
	xor  b                                           ; $6678: $a8
	ld   h, [hl]                                     ; $6679: $66
	ld   l, b                                        ; $667a: $68
	sbc  d                                           ; $667b: $9a
	sbc  c                                           ; $667c: $99
	sbc  c                                           ; $667d: $99
	sbc  b                                           ; $667e: $98
	adc  c                                           ; $667f: $89
	sbc  d                                           ; $6680: $9a
	xor  c                                           ; $6681: $a9
	add  [hl]                                        ; $6682: $86
	ld   d, l                                        ; $6683: $55
	ld   d, a                                        ; $6684: $57
	adc  c                                           ; $6685: $89

Jump_0c0_6686:
	xor  b                                           ; $6686: $a8
	ld   h, [hl]                                     ; $6687: $66
	ld   l, b                                        ; $6688: $68
	xor  c                                           ; $6689: $a9
	xor  b                                           ; $668a: $a8
	adc  b                                           ; $668b: $88
	adc  b                                           ; $668c: $88
	adc  c                                           ; $668d: $89
	sbc  d                                           ; $668e: $9a
	sbc  c                                           ; $668f: $99
	halt                                             ; $6690: $76
	ld   d, l                                        ; $6691: $55
	ld   h, a                                        ; $6692: $67
	sbc  c                                           ; $6693: $99
	sbc  b                                           ; $6694: $98
	ld   h, [hl]                                     ; $6695: $66
	ld   a, b                                        ; $6696: $78
	sbc  d                                           ; $6697: $9a
	sbc  d                                           ; $6698: $9a
	sbc  b                                           ; $6699: $98
	adc  b                                           ; $669a: $88
	adc  c                                           ; $669b: $89
	sbc  d                                           ; $669c: $9a
	xor  b                                           ; $669d: $a8
	add  [hl]                                        ; $669e: $86
	ld   d, l                                        ; $669f: $55
	ld   d, a                                        ; $66a0: $57
	adc  c                                           ; $66a1: $89
	xor  b                                           ; $66a2: $a8
	halt                                             ; $66a3: $76
	ld   [hl], a                                     ; $66a4: $77
	adc  c                                           ; $66a5: $89
	xor  d                                           ; $66a6: $aa
	sbc  b                                           ; $66a7: $98
	adc  b                                           ; $66a8: $88
	adc  b                                           ; $66a9: $88
	sbc  d                                           ; $66aa: $9a
	sbc  c                                           ; $66ab: $99
	add  a                                           ; $66ac: $87
	ld   h, l                                        ; $66ad: $65
	ld   d, [hl]                                     ; $66ae: $56
	adc  c                                           ; $66af: $89
	xor  b                                           ; $66b0: $a8
	add  a                                           ; $66b1: $87
	ld   [hl], a                                     ; $66b2: $77
	adc  c                                           ; $66b3: $89
	xor  c                                           ; $66b4: $a9
	xor  c                                           ; $66b5: $a9
	sbc  b                                           ; $66b6: $98
	adc  b                                           ; $66b7: $88
	adc  c                                           ; $66b8: $89
	xor  c                                           ; $66b9: $a9
	sub  a                                           ; $66ba: $97
	ld   h, l                                        ; $66bb: $65
	ld   d, [hl]                                     ; $66bc: $56
	ld   a, c                                        ; $66bd: $79
	sbc  c                                           ; $66be: $99
	add  a                                           ; $66bf: $87
	ld   h, a                                        ; $66c0: $67
	adc  b                                           ; $66c1: $88
	sbc  d                                           ; $66c2: $9a
	xor  d                                           ; $66c3: $aa
	sbc  b                                           ; $66c4: $98
	add  a                                           ; $66c5: $87
	adc  c                                           ; $66c6: $89
	sbc  d                                           ; $66c7: $9a
	add  a                                           ; $66c8: $87
	ld   h, l                                        ; $66c9: $65
	ld   d, l                                        ; $66ca: $55
	ld   a, b                                        ; $66cb: $78
	sbc  c                                           ; $66cc: $99
	sub  a                                           ; $66cd: $97
	ld   [hl], a                                     ; $66ce: $77
	adc  b                                           ; $66cf: $88
	adc  c                                           ; $66d0: $89
	sbc  c                                           ; $66d1: $99
	xor  c                                           ; $66d2: $a9
	adc  b                                           ; $66d3: $88
	adc  b                                           ; $66d4: $88
	xor  d                                           ; $66d5: $aa
	sbc  b                                           ; $66d6: $98
	halt                                             ; $66d7: $76
	ld   d, l                                        ; $66d8: $55
	ld   h, a                                        ; $66d9: $67
	sbc  c                                           ; $66da: $99
	sbc  b                                           ; $66db: $98
	ld   [hl], a                                     ; $66dc: $77
	ld   a, b                                        ; $66dd: $78
	sbc  b                                           ; $66de: $98
	sbc  c                                           ; $66df: $99
	sbc  c                                           ; $66e0: $99
	adc  b                                           ; $66e1: $88
	adc  b                                           ; $66e2: $88
	adc  d                                           ; $66e3: $8a
	xor  b                                           ; $66e4: $a8
	add  a                                           ; $66e5: $87
	ld   h, l                                        ; $66e6: $65
	ld   h, [hl]                                     ; $66e7: $66
	adc  c                                           ; $66e8: $89
	sbc  b                                           ; $66e9: $98
	add  a                                           ; $66ea: $87
	ld   a, b                                        ; $66eb: $78
	adc  b                                           ; $66ec: $88
	adc  c                                           ; $66ed: $89
	sbc  d                                           ; $66ee: $9a
	xor  c                                           ; $66ef: $a9
	add  a                                           ; $66f0: $87
	ld   a, c                                        ; $66f1: $79
	sbc  c                                           ; $66f2: $99
	add  a                                           ; $66f3: $87
	ld   h, [hl]                                     ; $66f4: $66
	ld   d, [hl]                                     ; $66f5: $56
	ld   a, b                                        ; $66f6: $78
	sbc  c                                           ; $66f7: $99
	adc  b                                           ; $66f8: $88
	ld   [hl], a                                     ; $66f9: $77
	adc  b                                           ; $66fa: $88
	adc  b                                           ; $66fb: $88
	sbc  b                                           ; $66fc: $98
	sbc  d                                           ; $66fd: $9a
	sbc  c                                           ; $66fe: $99
	adc  b                                           ; $66ff: $88
	adc  c                                           ; $6700: $89
	sbc  c                                           ; $6701: $99
	halt                                             ; $6702: $76
	ld   h, l                                        ; $6703: $65
	ld   h, a                                        ; $6704: $67
	adc  c                                           ; $6705: $89
	xor  c                                           ; $6706: $a9
	add  a                                           ; $6707: $87
	ld   [hl], a                                     ; $6708: $77
	adc  b                                           ; $6709: $88
	adc  b                                           ; $670a: $88
	adc  b                                           ; $670b: $88
	sbc  c                                           ; $670c: $99
	adc  b                                           ; $670d: $88
	adc  c                                           ; $670e: $89
	sbc  c                                           ; $670f: $99
	adc  b                                           ; $6710: $88
	halt                                             ; $6711: $76
	ld   h, [hl]                                     ; $6712: $66
	ld   a, b                                        ; $6713: $78
	sbc  d                                           ; $6714: $9a
	sbc  c                                           ; $6715: $99
	ld   [hl], a                                     ; $6716: $77
	ld   a, b                                        ; $6717: $78
	adc  b                                           ; $6718: $88
	adc  b                                           ; $6719: $88
	sbc  b                                           ; $671a: $98
	sbc  b                                           ; $671b: $98
	sbc  b                                           ; $671c: $98
	adc  c                                           ; $671d: $89
	adc  b                                           ; $671e: $88
	add  a                                           ; $671f: $87
	halt                                             ; $6720: $76
	ld   h, [hl]                                     ; $6721: $66
	ld   a, c                                        ; $6722: $79
	sbc  c                                           ; $6723: $99
	sbc  b                                           ; $6724: $98
	ld   [hl], a                                     ; $6725: $77
	adc  b                                           ; $6726: $88
	adc  b                                           ; $6727: $88
	adc  b                                           ; $6728: $88
	adc  b                                           ; $6729: $88
	adc  b                                           ; $672a: $88
	sbc  b                                           ; $672b: $98
	adc  b                                           ; $672c: $88
	sbc  b                                           ; $672d: $98
	add  a                                           ; $672e: $87
	ld   [hl], a                                     ; $672f: $77
	ld   [hl], a                                     ; $6730: $77
	adc  c                                           ; $6731: $89
	adc  b                                           ; $6732: $88
	sbc  b                                           ; $6733: $98
	ld   a, b                                        ; $6734: $78
	adc  b                                           ; $6735: $88
	sbc  b                                           ; $6736: $98
	adc  b                                           ; $6737: $88
	adc  b                                           ; $6738: $88
	sbc  c                                           ; $6739: $99
	sbc  c                                           ; $673a: $99
	sbc  b                                           ; $673b: $98
	adc  b                                           ; $673c: $88
	ld   [hl], a                                     ; $673d: $77
	ld   [hl], a                                     ; $673e: $77
	ld   [hl], a                                     ; $673f: $77
	adc  c                                           ; $6740: $89
	adc  c                                           ; $6741: $89
	adc  b                                           ; $6742: $88
	adc  b                                           ; $6743: $88
	adc  b                                           ; $6744: $88
	adc  b                                           ; $6745: $88
	adc  b                                           ; $6746: $88
	adc  b                                           ; $6747: $88
	adc  b                                           ; $6748: $88
	adc  b                                           ; $6749: $88
	adc  b                                           ; $674a: $88
	adc  b                                           ; $674b: $88
	add  a                                           ; $674c: $87
	ld   [hl], a                                     ; $674d: $77
	ld   a, b                                        ; $674e: $78
	adc  b                                           ; $674f: $88
	sbc  c                                           ; $6750: $99
	adc  b                                           ; $6751: $88
	adc  b                                           ; $6752: $88
	adc  b                                           ; $6753: $88
	adc  b                                           ; $6754: $88
	adc  b                                           ; $6755: $88
	adc  b                                           ; $6756: $88
	adc  b                                           ; $6757: $88
	adc  b                                           ; $6758: $88
	adc  b                                           ; $6759: $88
	adc  b                                           ; $675a: $88
	adc  b                                           ; $675b: $88
	adc  b                                           ; $675c: $88
	adc  b                                           ; $675d: $88
	adc  b                                           ; $675e: $88
	adc  b                                           ; $675f: $88
	adc  b                                           ; $6760: $88
	adc  b                                           ; $6761: $88
	adc  b                                           ; $6762: $88
	adc  b                                           ; $6763: $88
	adc  b                                           ; $6764: $88
	adc  b                                           ; $6765: $88
	adc  b                                           ; $6766: $88
	add  c                                           ; $6767: $81
	ld   de, $1111                                   ; $6768: $11 $11 $11
	ld   de, $1111                                   ; $676b: $11 $11 $11
	ld   de, $1111                                   ; $676e: $11 $11 $11
	ld   de, $4800                                   ; $6771: $11 $00 $48
	ld   de, $1111                                   ; $6774: $11 $11 $11
	ld   de, $1111                                   ; $6777: $11 $11 $11
	ld   de, $1111                                   ; $677a: $11 $11 $11
	ld   de, $5413                                   ; $677d: $11 $13 $54
	ld   d, h                                        ; $6780: $54
	ld   d, h                                        ; $6781: $54
	ld   b, c                                        ; $6782: $41
	rra                                              ; $6783: $1f
	rst  $38                                         ; $6784: $ff
	pop  af                                          ; $6785: $f1
	ld   de, $1811                                   ; $6786: $11 $11 $18
	ld   de, $1c11                                   ; $6789: $11 $11 $1c
	db   $dd                                         ; $678c: $dd
	call z, $c1dd                                    ; $678d: $cc $dd $c1
	ld   de, $1111                                   ; $6790: $11 $11 $11
	ld   de, $1111                                   ; $6793: $11 $11 $11
	ld   de, $1111                                   ; $6796: $11 $11 $11
	ld   de, $1111                                   ; $6799: $11 $11 $11
	ld   de, $5411                                   ; $679c: $11 $11 $54
	ld   b, h                                        ; $679f: $44
	jr   @+$13                                       ; $67a0: $18 $11

	ld   d, h                                        ; $67a2: $54
	ld   d, h                                        ; $67a3: $54
	ld   h, a                                        ; $67a4: $67
	ld   [hl], d                                     ; $67a5: $72
	ld   de, $1111                                   ; $67a6: $11 $11 $11
	ld   de, $1112                                   ; $67a9: $11 $12 $11
	ld   [de], a                                     ; $67ac: $12
	ld   de, $1111                                   ; $67ad: $11 $11 $11
	ld   h, [hl]                                     ; $67b0: $66
	halt                                             ; $67b1: $76
	add  sp, $11                                     ; $67b2: $e8 $11
	adc  b                                           ; $67b4: $88
	adc  b                                           ; $67b5: $88
	adc  b                                           ; $67b6: $88
	adc  b                                           ; $67b7: $88
	adc  b                                           ; $67b8: $88
	adc  b                                           ; $67b9: $88
	adc  b                                           ; $67ba: $88
	adc  c                                           ; $67bb: $89
	add  a                                           ; $67bc: $87
	xor  e                                           ; $67bd: $ab
	cp   c                                           ; $67be: $b9
	sbc  b                                           ; $67bf: $98
	ld   [hl], a                                     ; $67c0: $77
	halt                                             ; $67c1: $76
	adc  b                                           ; $67c2: $88
	halt                                             ; $67c3: $76
	ld   d, a                                        ; $67c4: $57
	ld   [hl], a                                     ; $67c5: $77
	sbc  b                                           ; $67c6: $98
	adc  c                                           ; $67c7: $89
	xor  c                                           ; $67c8: $a9
	adc  b                                           ; $67c9: $88
	adc  b                                           ; $67ca: $88
	adc  c                                           ; $67cb: $89
	sbc  c                                           ; $67cc: $99
	sbc  d                                           ; $67cd: $9a
	xor  b                                           ; $67ce: $a8
	add  a                                           ; $67cf: $87
	ld   a, b                                        ; $67d0: $78
	add  a                                           ; $67d1: $87
	ld   [hl], a                                     ; $67d2: $77
	ld   [hl], a                                     ; $67d3: $77
	ld   a, b                                        ; $67d4: $78
	sbc  c                                           ; $67d5: $99
	sub  a                                           ; $67d6: $97
	ld   [hl], a                                     ; $67d7: $77
	adc  b                                           ; $67d8: $88
	adc  b                                           ; $67d9: $88
	ld   a, b                                        ; $67da: $78
	add  a                                           ; $67db: $87
	adc  b                                           ; $67dc: $88
	ld   a, c                                        ; $67dd: $79
	sub  a                                           ; $67de: $97
	sbc  c                                           ; $67df: $99
	add  a                                           ; $67e0: $87
	adc  b                                           ; $67e1: $88
	ld   [hl], a                                     ; $67e2: $77
	adc  b                                           ; $67e3: $88
	adc  b                                           ; $67e4: $88
	ld   a, b                                        ; $67e5: $78
	adc  b                                           ; $67e6: $88
	adc  b                                           ; $67e7: $88
	adc  b                                           ; $67e8: $88
	ld   a, b                                        ; $67e9: $78
	adc  b                                           ; $67ea: $88
	add  a                                           ; $67eb: $87
	sbc  b                                           ; $67ec: $98
	adc  b                                           ; $67ed: $88
	sbc  b                                           ; $67ee: $98
	sbc  c                                           ; $67ef: $99
	ld   a, b                                        ; $67f0: $78
	adc  b                                           ; $67f1: $88
	adc  c                                           ; $67f2: $89
	adc  b                                           ; $67f3: $88
	adc  b                                           ; $67f4: $88
	sub  a                                           ; $67f5: $97
	adc  b                                           ; $67f6: $88
	adc  b                                           ; $67f7: $88
	adc  c                                           ; $67f8: $89
	ld   a, b                                        ; $67f9: $78
	ld   [hl], a                                     ; $67fa: $77
	add  a                                           ; $67fb: $87
	ld   [hl], a                                     ; $67fc: $77
	adc  b                                           ; $67fd: $88
	ld   a, b                                        ; $67fe: $78
	adc  c                                           ; $67ff: $89
	adc  c                                           ; $6800: $89
	sbc  b                                           ; $6801: $98
	adc  b                                           ; $6802: $88
	adc  c                                           ; $6803: $89
	sub  a                                           ; $6804: $97
	add  a                                           ; $6805: $87
	add  a                                           ; $6806: $87
	ld   a, c                                        ; $6807: $79
	ld   a, b                                        ; $6808: $78
	ld   [hl], a                                     ; $6809: $77
	adc  b                                           ; $680a: $88
	adc  b                                           ; $680b: $88
	adc  b                                           ; $680c: $88
	add  [hl]                                        ; $680d: $86
	add  [hl]                                        ; $680e: $86
	adc  b                                           ; $680f: $88
	sbc  d                                           ; $6810: $9a
	ld   a, d                                        ; $6811: $7a
	ld   [hl], a                                     ; $6812: $77
	xor  b                                           ; $6813: $a8
	adc  c                                           ; $6814: $89
	adc  b                                           ; $6815: $88
	adc  b                                           ; $6816: $88
	ld   a, b                                        ; $6817: $78
	sub  a                                           ; $6818: $97
	ld   [hl], a                                     ; $6819: $77
	ld   [hl], a                                     ; $681a: $77
	add  a                                           ; $681b: $87
	xor  c                                           ; $681c: $a9
	adc  b                                           ; $681d: $88
	ld   a, c                                        ; $681e: $79
	ld   l, b                                        ; $681f: $68
	or   a                                           ; $6820: $b7
	sbc  d                                           ; $6821: $9a
	ld   h, a                                        ; $6822: $67
	adc  c                                           ; $6823: $89
	ld   [hl], a                                     ; $6824: $77
	sub  l                                           ; $6825: $95
	ld   a, c                                        ; $6826: $79
	xor  c                                           ; $6827: $a9
	xor  d                                           ; $6828: $aa
	ld   a, d                                        ; $6829: $7a
	adc  d                                           ; $682a: $8a
	sbc  d                                           ; $682b: $9a
	add  [hl]                                        ; $682c: $86
	sub  l                                           ; $682d: $95
	ld   h, [hl]                                     ; $682e: $66
	ld   a, d                                        ; $682f: $7a
	sub  [hl]                                        ; $6830: $96
	halt                                             ; $6831: $76
	halt                                             ; $6832: $76
	ld   a, b                                        ; $6833: $78
	ld   h, a                                        ; $6834: $67
	ld   h, a                                        ; $6835: $67
	ld   a, c                                        ; $6836: $79
	adc  b                                           ; $6837: $88
	adc  c                                           ; $6838: $89
	cp   b                                           ; $6839: $b8
	ret                                              ; $683a: $c9


	adc  e                                           ; $683b: $8b
	xor  c                                           ; $683c: $a9
	cp   c                                           ; $683d: $b9
	ld   a, b                                        ; $683e: $78
	ld   h, [hl]                                     ; $683f: $66
	ld   [hl], a                                     ; $6840: $77
	ld   b, l                                        ; $6841: $45
	ld   d, l                                        ; $6842: $55
	ld   d, h                                        ; $6843: $54
	ld   h, a                                        ; $6844: $67
	ld   d, a                                        ; $6845: $57
	sbc  c                                           ; $6846: $99
	adc  e                                           ; $6847: $8b
	sbc  c                                           ; $6848: $99
	jp   z, $b9cd                                    ; $6849: $ca $cd $b9

	cp   d                                           ; $684c: $ba
	xor  d                                           ; $684d: $aa
	and  a                                           ; $684e: $a7
	ld   l, c                                        ; $684f: $69
	ld   d, [hl]                                     ; $6850: $56
	ld   d, a                                        ; $6851: $57
	ld   b, l                                        ; $6852: $45
	dec  [hl]                                        ; $6853: $35
	ld   d, d                                        ; $6854: $52
	ld   h, h                                        ; $6855: $64
	ld   [hl], l                                     ; $6856: $75
	add  a                                           ; $6857: $87
	sbc  c                                           ; $6858: $99
	xor  d                                           ; $6859: $aa
	cp   e                                           ; $685a: $bb
	sbc  $9f                                         ; $685b: $de $9f
	xor  [hl]                                        ; $685d: $ae
	sbc  e                                           ; $685e: $9b
	and  [hl]                                        ; $685f: $a6
	jp   $6174                                       ; $6860: $c3 $74 $61


	inc  hl                                          ; $6863: $23
	ld   d, $15                                      ; $6864: $16 $15
	ld   h, $66                                      ; $6866: $26 $66
	ret                                              ; $6868: $c9


	xor  e                                           ; $6869: $ab
	ld   sp, hl                                      ; $686a: $f9
	db   $fd                                         ; $686b: $fd
	cp   a                                           ; $686c: $bf
	cp   [hl]                                        ; $686d: $be
	cp   e                                           ; $686e: $bb
	adc  e                                           ; $686f: $8b
	sbc  b                                           ; $6870: $98
	ld   h, l                                        ; $6871: $65
	dec  [hl]                                        ; $6872: $35
	ld   d, c                                        ; $6873: $51
	ld   d, c                                        ; $6874: $51
	ld   hl, $2834                                   ; $6875: $21 $34 $28
	ld   e, d                                        ; $6878: $5a
	cp   [hl]                                        ; $6879: $be
	xor  a                                           ; $687a: $af
	ei                                               ; $687b: $fb
	cp   $ef                                         ; $687c: $fe $ef
	call z, $879c                                    ; $687e: $cc $9c $87
	add  c                                           ; $6881: $81
	ld   b, e                                        ; $6882: $43
	ld   sp, $1201                                   ; $6883: $31 $01 $12
	inc  d                                           ; $6886: $14
	add  hl, sp                                      ; $6887: $39
	ld   c, e                                        ; $6888: $4b
	call $fefd                                       ; $6889: $cd $fd $fe
	rst  $38                                         ; $688c: $ff
	cp   $dd                                         ; $688d: $fe $dd
	sbc  l                                           ; $688f: $9d
	inc  e                                           ; $6890: $1c
	ld   hl, $3151                                   ; $6891: $21 $51 $31
	ld   de, $1514                                   ; $6894: $11 $14 $15
	ld   d, a                                        ; $6897: $57
	ld   a, [hl]                                     ; $6898: $7e
	cp   $ff                                         ; $6899: $fe $ff
	rst  $38                                         ; $689b: $ff
	rst  $38                                         ; $689c: $ff
	cp   $bc                                         ; $689d: $fe $bc
	halt                                             ; $689f: $76
	ld   b, e                                        ; $68a0: $43
	ld   de, $1111                                   ; $68a1: $11 $11 $11
	ld   de, $3611                                   ; $68a4: $11 $11 $36
	xor  b                                           ; $68a7: $a8
	rst  $28                                         ; $68a8: $ef
	rst  $38                                         ; $68a9: $ff
	rst  $38                                         ; $68aa: $ff
	rst  $38                                         ; $68ab: $ff
	rst  $38                                         ; $68ac: $ff
	call c, Call_0c0_5175                            ; $68ad: $dc $75 $51
	ld   de, $1111                                   ; $68b0: $11 $11 $11
	ld   de, $4711                                   ; $68b3: $11 $11 $47
	ld   l, l                                        ; $68b6: $6d
	rst  $38                                         ; $68b7: $ff
	rst  $38                                         ; $68b8: $ff
	rst  $38                                         ; $68b9: $ff
	rst  $38                                         ; $68ba: $ff
	cp   $fa                                         ; $68bb: $fe $fa
	ld   d, l                                        ; $68bd: $55
	ld   hl, $1111                                   ; $68be: $21 $11 $11
	ld   de, $1111                                   ; $68c1: $11 $11 $11
	ld   e, d                                        ; $68c4: $5a
	sbc  a                                           ; $68c5: $9f
	rst  $38                                         ; $68c6: $ff
	rst  $38                                         ; $68c7: $ff
	rst  $38                                         ; $68c8: $ff

Jump_0c0_68c9:
	rst  $38                                         ; $68c9: $ff
	rst  $38                                         ; $68ca: $ff
	sub  [hl]                                        ; $68cb: $96
	ld   d, c                                        ; $68cc: $51
	ld   de, $1111                                   ; $68cd: $11 $11 $11
	ld   de, $1a11                                   ; $68d0: $11 $11 $1a
	ld   a, l                                        ; $68d3: $7d
	rst  $38                                         ; $68d4: $ff
	rst  $38                                         ; $68d5: $ff
	rst  $38                                         ; $68d6: $ff
	rst  $38                                         ; $68d7: $ff
	rst  $38                                         ; $68d8: $ff
	ld   sp, hl                                      ; $68d9: $f9
	dec  h                                           ; $68da: $25
	ld   de, $1111                                   ; $68db: $11 $11 $11
	ld   de, $1611                                   ; $68de: $11 $11 $16
	ld   l, l                                        ; $68e1: $6d
	rst  $38                                         ; $68e2: $ff
	rst  $38                                         ; $68e3: $ff
	rst  $38                                         ; $68e4: $ff
	rst  $38                                         ; $68e5: $ff
	rst  $38                                         ; $68e6: $ff
	ld   a, [$1141]                                  ; $68e7: $fa $41 $11
	ld   de, $1111                                   ; $68ea: $11 $11 $11
	ld   de, $8f13                                   ; $68ed: $11 $13 $8f
	rst  $38                                         ; $68f0: $ff
	rst  $38                                         ; $68f1: $ff
	rst  $38                                         ; $68f2: $ff
	rst  $38                                         ; $68f3: $ff
	rst  $38                                         ; $68f4: $ff
	db   $fc                                         ; $68f5: $fc
	ld   sp, $1111                                   ; $68f6: $31 $11 $11
	ld   de, $1111                                   ; $68f9: $11 $11 $11
	ld   de, $fffe                                   ; $68fc: $11 $fe $ff
	rst  $38                                         ; $68ff: $ff
	rst  $38                                         ; $6900: $ff
	rst  $38                                         ; $6901: $ff
	rst  $38                                         ; $6902: $ff
	ld   sp, hl                                      ; $6903: $f9
	ld   sp, $1111                                   ; $6904: $31 $11 $11
	ld   de, $1111                                   ; $6907: $11 $11 $11
	inc  de                                          ; $690a: $13
	rst  $28                                         ; $690b: $ef
	rst  $38                                         ; $690c: $ff
	rst  $38                                         ; $690d: $ff
	rst  $38                                         ; $690e: $ff
	rst  $38                                         ; $690f: $ff
	rst  $38                                         ; $6910: $ff
	or   $11                                         ; $6911: $f6 $11
	ld   de, $1111                                   ; $6913: $11 $11 $11
	ld   de, $1a11                                   ; $6916: $11 $11 $1a
	rst  $38                                         ; $6919: $ff
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	rst  $38                                         ; $691c: $ff
	rst  $38                                         ; $691d: $ff
	rst  $38                                         ; $691e: $ff
	db   $d3                                         ; $691f: $d3
	ld   de, $1111                                   ; $6920: $11 $11 $11
	ld   de, $1111                                   ; $6923: $11 $11 $11
	ccf                                              ; $6926: $3f
	rst  $38                                         ; $6927: $ff
	rst  $38                                         ; $6928: $ff
	rst  $38                                         ; $6929: $ff
	rst  $38                                         ; $692a: $ff
	rst  $38                                         ; $692b: $ff
	rst  $38                                         ; $692c: $ff
	ld   [hl], c                                     ; $692d: $71
	ld   de, $1111                                   ; $692e: $11 $11 $11
	ld   de, $1111                                   ; $6931: $11 $11 $11
	rst  $28                                         ; $6934: $ef
	rst  $38                                         ; $6935: $ff
	rst  $38                                         ; $6936: $ff
	rst  $38                                         ; $6937: $ff
	rst  $38                                         ; $6938: $ff
	rst  $38                                         ; $6939: $ff
	ld   hl, sp+$11                                  ; $693a: $f8 $11
	ld   de, $1111                                   ; $693c: $11 $11 $11
	ld   de, $1c11                                   ; $693f: $11 $11 $1c
	rst  $38                                         ; $6942: $ff
	rst  $38                                         ; $6943: $ff
	rst  $38                                         ; $6944: $ff
	rst  $38                                         ; $6945: $ff
	rst  $38                                         ; $6946: $ff
	rst  $38                                         ; $6947: $ff
	sub  c                                           ; $6948: $91
	ld   de, $1111                                   ; $6949: $11 $11 $11
	ld   de, $1111                                   ; $694c: $11 $11 $11
	cp   a                                           ; $694f: $bf
	rst  $38                                         ; $6950: $ff
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	rst  $38                                         ; $6953: $ff
	rst  $38                                         ; $6954: $ff
	ld   sp, hl                                      ; $6955: $f9
	ld   de, $1111                                   ; $6956: $11 $11 $11
	ld   de, $1111                                   ; $6959: $11 $11 $11
	ld   e, $ff                                      ; $695c: $1e $ff
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	rst  $38                                         ; $6960: $ff
	rst  $38                                         ; $6961: $ff
	rst  $38                                         ; $6962: $ff
	and  c                                           ; $6963: $a1
	ld   de, $1111                                   ; $6964: $11 $11 $11
	ld   de, $1111                                   ; $6967: $11 $11 $11
	rst  $38                                         ; $696a: $ff
	rst  $38                                         ; $696b: $ff
	rst  $38                                         ; $696c: $ff
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	rst  $38                                         ; $696f: $ff
	or   $11                                         ; $6970: $f6 $11
	ld   de, $1111                                   ; $6972: $11 $11 $11
	ld   de, $4f11                                   ; $6975: $11 $11 $4f
	rst  $38                                         ; $6978: $ff
	rst  $38                                         ; $6979: $ff
	rst  $38                                         ; $697a: $ff
	rst  $38                                         ; $697b: $ff
	rst  $38                                         ; $697c: $ff
	db   $fd                                         ; $697d: $fd
	ld   hl, $1111                                   ; $697e: $21 $11 $11
	ld   de, $1111                                   ; $6981: $11 $11 $11
	ld   d, $ff                                      ; $6984: $16 $ff
	rst  $38                                         ; $6986: $ff
	rst  $38                                         ; $6987: $ff
	rst  $38                                         ; $6988: $ff
	rst  $38                                         ; $6989: $ff
	rst  $38                                         ; $698a: $ff
	sub  d                                           ; $698b: $92
	ld   de, $1111                                   ; $698c: $11 $11 $11
	ld   de, $1111                                   ; $698f: $11 $11 $11
	xor  a                                           ; $6992: $af
	rst  $38                                         ; $6993: $ff
	rst  $38                                         ; $6994: $ff
	rst  $38                                         ; $6995: $ff
	rst  $38                                         ; $6996: $ff
	rst  $38                                         ; $6997: $ff
	or   $21                                         ; $6998: $f6 $21
	ld   de, $1111                                   ; $699a: $11 $11 $11
	ld   de, $3b11                                   ; $699d: $11 $11 $3b
	rst  $38                                         ; $69a0: $ff
	rst  $38                                         ; $69a1: $ff
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	db   $ec                                         ; $69a5: $ec
	ld   h, c                                        ; $69a6: $61
	ld   de, $1111                                   ; $69a7: $11 $11 $11
	ld   de, $2311                                   ; $69aa: $11 $11 $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69ad: $cf
	rst  $38                                         ; $69ae: $ff
	rst  $38                                         ; $69af: $ff
	rst  $38                                         ; $69b0: $ff
	rst  $38                                         ; $69b1: $ff
	db   $fd                                         ; $69b2: $fd
	or   l                                           ; $69b3: $b5
	ld   de, $1111                                   ; $69b4: $11 $11 $11
	ld   de, $1311                                   ; $69b7: $11 $11 $13
	ld   e, e                                        ; $69ba: $5b
	cp   $ff                                         ; $69bb: $fe $ff
	rst  $38                                         ; $69bd: $ff
	rst  $38                                         ; $69be: $ff
	rst  $38                                         ; $69bf: $ff
	cp   e                                           ; $69c0: $bb
	ld   d, d                                        ; $69c1: $52
	ld   de, $1111                                   ; $69c2: $11 $11 $11
	ld   de, $3513                                   ; $69c5: $11 $13 $35
	xor  [hl]                                        ; $69c8: $ae
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	rst  $38                                         ; $69cb: $ff
	rst  $38                                         ; $69cc: $ff
	ei                                               ; $69cd: $fb
	sbc  d                                           ; $69ce: $9a
	ld   b, d                                        ; $69cf: $42
	ld   de, $1111                                   ; $69d0: $11 $11 $11
	ld   de, $4634                                   ; $69d3: $11 $34 $46
	sbc  h                                           ; $69d6: $9c
	rst  $28                                         ; $69d7: $ef
	rst  $38                                         ; $69d8: $ff
	rst  $38                                         ; $69d9: $ff
	rst  $38                                         ; $69da: $ff
	xor  d                                           ; $69db: $aa
	xor  c                                           ; $69dc: $a9
	ld   h, h                                        ; $69dd: $64
	ld   b, c                                        ; $69de: $41
	ld   de, $1133                                   ; $69df: $11 $33 $11
	ld   b, l                                        ; $69e2: $45
	ld   [hl], $8b                                   ; $69e3: $36 $8b
	cp   h                                           ; $69e5: $bc
	rst  $38                                         ; $69e6: $ff
	xor  $fc                                         ; $69e7: $ee $fc
	xor  e                                           ; $69e9: $ab
	cp   d                                           ; $69ea: $ba
	add  [hl]                                        ; $69eb: $86
	ld   h, l                                        ; $69ec: $65
	ld   b, e                                        ; $69ed: $43
	ld   d, l                                        ; $69ee: $55
	ld   b, d                                        ; $69ef: $42
	ld   b, l                                        ; $69f0: $45
	ld   b, l                                        ; $69f1: $45
	ld   l, b                                        ; $69f2: $68
	adc  c                                           ; $69f3: $89
	xor  h                                           ; $69f4: $ac
	set  1, h                                        ; $69f5: $cb $cc
	cp   c                                           ; $69f7: $b9
	cp   d                                           ; $69f8: $ba
	xor  c                                           ; $69f9: $a9
	sbc  c                                           ; $69fa: $99
	sub  [hl]                                        ; $69fb: $96
	ld   e, b                                        ; $69fc: $58
	ld   h, [hl]                                     ; $69fd: $66
	ld   b, l                                        ; $69fe: $45
	ld   d, l                                        ; $69ff: $55
	ld   b, l                                        ; $6a00: $45
	halt                                             ; $6a01: $76
	ld   [hl], a                                     ; $6a02: $77
	xor  c                                           ; $6a03: $a9
	sbc  c                                           ; $6a04: $99
	cp   e                                           ; $6a05: $bb
	sbc  e                                           ; $6a06: $9b
	xor  d                                           ; $6a07: $aa
	sbc  d                                           ; $6a08: $9a
	xor  e                                           ; $6a09: $ab
	xor  b                                           ; $6a0a: $a8
	add  a                                           ; $6a0b: $87
	ld   [hl], a                                     ; $6a0c: $77
	ld   h, l                                        ; $6a0d: $65
	ld   d, l                                        ; $6a0e: $55
	ld   d, l                                        ; $6a0f: $55
	ld   d, l                                        ; $6a10: $55
	ld   h, [hl]                                     ; $6a11: $66
	ld   [hl], a                                     ; $6a12: $77
	adc  b                                           ; $6a13: $88
	sbc  c                                           ; $6a14: $99
	sbc  d                                           ; $6a15: $9a
	cp   e                                           ; $6a16: $bb
	xor  e                                           ; $6a17: $ab
	jp   z, $99aa                                    ; $6a18: $ca $aa $99

	sub  a                                           ; $6a1b: $97
	halt                                             ; $6a1c: $76
	ld   d, l                                        ; $6a1d: $55
	ld   d, l                                        ; $6a1e: $55
	ld   d, l                                        ; $6a1f: $55
	ld   d, [hl]                                     ; $6a20: $56
	ld   h, [hl]                                     ; $6a21: $66
	ld   [hl], a                                     ; $6a22: $77
	adc  c                                           ; $6a23: $89
	xor  d                                           ; $6a24: $aa
	cp   e                                           ; $6a25: $bb
	xor  e                                           ; $6a26: $ab
	xor  e                                           ; $6a27: $ab
	cp   e                                           ; $6a28: $bb
	xor  d                                           ; $6a29: $aa
	sbc  b                                           ; $6a2a: $98
	add  a                                           ; $6a2b: $87
	ld   h, l                                        ; $6a2c: $65
	ld   d, l                                        ; $6a2d: $55
	ld   d, l                                        ; $6a2e: $55
	ld   h, [hl]                                     ; $6a2f: $66
	ld   h, a                                        ; $6a30: $67
	ld   a, b                                        ; $6a31: $78
	sbc  c                                           ; $6a32: $99
	sbc  c                                           ; $6a33: $99
	sbc  d                                           ; $6a34: $9a
	xor  d                                           ; $6a35: $aa
	xor  c                                           ; $6a36: $a9
	xor  c                                           ; $6a37: $a9
	adc  b                                           ; $6a38: $88
	sbc  b                                           ; $6a39: $98
	ld   [hl], a                                     ; $6a3a: $77
	ld   [hl], a                                     ; $6a3b: $77
	ld   h, [hl]                                     ; $6a3c: $66
	halt                                             ; $6a3d: $76
	ld   [hl], a                                     ; $6a3e: $77
	ld   [hl], a                                     ; $6a3f: $77
	adc  b                                           ; $6a40: $88
	sbc  b                                           ; $6a41: $98
	adc  c                                           ; $6a42: $89
	sbc  c                                           ; $6a43: $99
	sbc  c                                           ; $6a44: $99
	sbc  c                                           ; $6a45: $99
	adc  b                                           ; $6a46: $88
	sbc  b                                           ; $6a47: $98
	add  a                                           ; $6a48: $87
	ld   [hl], a                                     ; $6a49: $77
	ld   [hl], a                                     ; $6a4a: $77
	ld   [hl], a                                     ; $6a4b: $77
	ld   [hl], a                                     ; $6a4c: $77
	ld   a, b                                        ; $6a4d: $78
	adc  b                                           ; $6a4e: $88
	sbc  c                                           ; $6a4f: $99
	sbc  c                                           ; $6a50: $99

Jump_0c0_6a51:
	adc  b                                           ; $6a51: $88
	sbc  b                                           ; $6a52: $98
	adc  b                                           ; $6a53: $88
	adc  b                                           ; $6a54: $88
	adc  b                                           ; $6a55: $88
	ld   a, b                                        ; $6a56: $78
	ld   [hl], a                                     ; $6a57: $77
	ld   [hl], a                                     ; $6a58: $77
	add  a                                           ; $6a59: $87
	adc  b                                           ; $6a5a: $88
	adc  b                                           ; $6a5b: $88
	sbc  c                                           ; $6a5c: $99
	sbc  c                                           ; $6a5d: $99
	adc  c                                           ; $6a5e: $89
	adc  b                                           ; $6a5f: $88
	sbc  c                                           ; $6a60: $99
	adc  b                                           ; $6a61: $88
	adc  b                                           ; $6a62: $88
	ld   [hl], a                                     ; $6a63: $77
	add  a                                           ; $6a64: $87
	ld   [hl], a                                     ; $6a65: $77
	add  a                                           ; $6a66: $87
	ld   a, b                                        ; $6a67: $78
	adc  b                                           ; $6a68: $88
	adc  c                                           ; $6a69: $89
	sbc  c                                           ; $6a6a: $99
	sbc  c                                           ; $6a6b: $99
	adc  c                                           ; $6a6c: $89
	sbc  c                                           ; $6a6d: $99
	sbc  b                                           ; $6a6e: $98
	adc  b                                           ; $6a6f: $88
	adc  b                                           ; $6a70: $88
	adc  b                                           ; $6a71: $88
	add  a                                           ; $6a72: $87
	ld   [hl], a                                     ; $6a73: $77
	ld   a, b                                        ; $6a74: $78
	adc  b                                           ; $6a75: $88
	adc  b                                           ; $6a76: $88
	adc  b                                           ; $6a77: $88
	sbc  c                                           ; $6a78: $99
	sbc  c                                           ; $6a79: $99
	sbc  c                                           ; $6a7a: $99
	sbc  c                                           ; $6a7b: $99
	adc  b                                           ; $6a7c: $88
	adc  b                                           ; $6a7d: $88
	adc  b                                           ; $6a7e: $88
	adc  b                                           ; $6a7f: $88
	add  a                                           ; $6a80: $87
	adc  b                                           ; $6a81: $88
	adc  b                                           ; $6a82: $88
	adc  b                                           ; $6a83: $88
	adc  b                                           ; $6a84: $88
	adc  b                                           ; $6a85: $88
	adc  b                                           ; $6a86: $88
	sbc  c                                           ; $6a87: $99
	sbc  c                                           ; $6a88: $99
	sbc  b                                           ; $6a89: $98
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
	adc  c                                           ; $6a96: $89
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

Call_0c0_6b31:
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
	sbc  c                                           ; $6be3: $99
	adc  b                                           ; $6be4: $88
	adc  b                                           ; $6be5: $88
	adc  b                                           ; $6be6: $88
	adc  b                                           ; $6be7: $88
	adc  b                                           ; $6be8: $88
	adc  b                                           ; $6be9: $88
	sbc  b                                           ; $6bea: $98
	adc  b                                           ; $6beb: $88
	adc  b                                           ; $6bec: $88
	adc  b                                           ; $6bed: $88
	adc  b                                           ; $6bee: $88
	ld   a, b                                        ; $6bef: $78
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
	adc  c                                           ; $6bfd: $89
	adc  b                                           ; $6bfe: $88
	adc  b                                           ; $6bff: $88
	adc  b                                           ; $6c00: $88
	adc  c                                           ; $6c01: $89
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
	adc  c                                           ; $6c10: $89
	add  a                                           ; $6c11: $87
	adc  b                                           ; $6c12: $88
	adc  b                                           ; $6c13: $88
	adc  b                                           ; $6c14: $88
	adc  c                                           ; $6c15: $89
	adc  c                                           ; $6c16: $89
	adc  b                                           ; $6c17: $88
	add  a                                           ; $6c18: $87
	add  a                                           ; $6c19: $87
	sbc  b                                           ; $6c1a: $98
	adc  b                                           ; $6c1b: $88
	adc  b                                           ; $6c1c: $88
	sbc  e                                           ; $6c1d: $9b
	adc  b                                           ; $6c1e: $88
	ld   [hl], a                                     ; $6c1f: $77
	halt                                             ; $6c20: $76
	adc  c                                           ; $6c21: $89
	adc  b                                           ; $6c22: $88
	ld   [hl], a                                     ; $6c23: $77
	adc  b                                           ; $6c24: $88
	add  a                                           ; $6c25: $87
	sbc  c                                           ; $6c26: $99
	adc  c                                           ; $6c27: $89
	ld   a, b                                        ; $6c28: $78
	adc  c                                           ; $6c29: $89
	ld   a, b                                        ; $6c2a: $78
	adc  c                                           ; $6c2b: $89
	add  a                                           ; $6c2c: $87
	adc  b                                           ; $6c2d: $88
	sub  a                                           ; $6c2e: $97
	adc  b                                           ; $6c2f: $88
	adc  b                                           ; $6c30: $88
	adc  b                                           ; $6c31: $88
	ld   a, c                                        ; $6c32: $79
	ld   a, b                                        ; $6c33: $78
	adc  b                                           ; $6c34: $88
	adc  b                                           ; $6c35: $88
	adc  b                                           ; $6c36: $88
	sbc  b                                           ; $6c37: $98
	sub  a                                           ; $6c38: $97
	adc  b                                           ; $6c39: $88
	adc  b                                           ; $6c3a: $88
	sbc  b                                           ; $6c3b: $98
	sbc  c                                           ; $6c3c: $99
	ld   [hl], a                                     ; $6c3d: $77
	ld   a, b                                        ; $6c3e: $78
	sbc  b                                           ; $6c3f: $98
	adc  b                                           ; $6c40: $88
	ld   a, b                                        ; $6c41: $78
	add  a                                           ; $6c42: $87
	ld   [hl], a                                     ; $6c43: $77
	adc  b                                           ; $6c44: $88
	add  a                                           ; $6c45: $87
	adc  c                                           ; $6c46: $89
	adc  c                                           ; $6c47: $89
	adc  c                                           ; $6c48: $89
	sbc  c                                           ; $6c49: $99
	sbc  b                                           ; $6c4a: $98
	sbc  b                                           ; $6c4b: $98
	sub  a                                           ; $6c4c: $97
	ld   [hl], a                                     ; $6c4d: $77
	ld   a, b                                        ; $6c4e: $78
	halt                                             ; $6c4f: $76
	ld   [hl], a                                     ; $6c50: $77
	ld   h, [hl]                                     ; $6c51: $66
	ld   h, a                                        ; $6c52: $67
	adc  b                                           ; $6c53: $88
	sbc  b                                           ; $6c54: $98
	xor  d                                           ; $6c55: $aa
	cp   e                                           ; $6c56: $bb
	cp   h                                           ; $6c57: $bc
	xor  h                                           ; $6c58: $ac
	sbc  b                                           ; $6c59: $98
	sbc  b                                           ; $6c5a: $98
	ld   [hl], l                                     ; $6c5b: $75
	ld   d, e                                        ; $6c5c: $53
	ld   d, e                                        ; $6c5d: $53
	inc  sp                                          ; $6c5e: $33
	ld   b, l                                        ; $6c5f: $45
	ld   h, a                                        ; $6c60: $67
	sbc  d                                           ; $6c61: $9a
	xor  e                                           ; $6c62: $ab
	adc  $ef                                         ; $6c63: $ce $ef
	db   $ed                                         ; $6c65: $ed
	db   $ec                                         ; $6c66: $ec
	cp   b                                           ; $6c67: $b8
	ld   h, l                                        ; $6c68: $65
	ld   d, e                                        ; $6c69: $53
	inc  hl                                          ; $6c6a: $23
	ld   hl, $2422                                   ; $6c6b: $21 $22 $24
	ld   d, [hl]                                     ; $6c6e: $56
	sbc  e                                           ; $6c6f: $9b
	cp   [hl]                                        ; $6c70: $be
	db   $dd                                         ; $6c71: $dd
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	cp   $dc                                         ; $6c74: $fe $dc
	add  a                                           ; $6c76: $87
	ld   h, h                                        ; $6c77: $64
	ld   de, $1111                                   ; $6c78: $11 $11 $11
	ld   de, $5613                                   ; $6c7b: $11 $13 $56
	sbc  a                                           ; $6c7e: $9f
	rst  $38                                         ; $6c7f: $ff
	rst  $38                                         ; $6c80: $ff
	rst  $38                                         ; $6c81: $ff
	rst  $38                                         ; $6c82: $ff
	rst  $28                                         ; $6c83: $ef
	call c, $3173                                    ; $6c84: $dc $73 $31
	ld   de, $1111                                   ; $6c87: $11 $11 $11
	ld   de, $6813                                   ; $6c8a: $11 $13 $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c8d: $cf
	rst  $38                                         ; $6c8e: $ff
	rst  $38                                         ; $6c8f: $ff
	rst  $38                                         ; $6c90: $ff
	rst  $38                                         ; $6c91: $ff
	cp   $fb                                         ; $6c92: $fe $fb
	ld   [hl], a                                     ; $6c94: $77
	ld   d, [hl]                                     ; $6c95: $56
	ld   d, h                                        ; $6c96: $54
	inc  sp                                          ; $6c97: $33
	ld   b, h                                        ; $6c98: $44
	ld   d, h                                        ; $6c99: $54
	ld   d, [hl]                                     ; $6c9a: $56
	ld   a, c                                        ; $6c9b: $79
	sbc  e                                           ; $6c9c: $9b
	call $ccdd                                       ; $6c9d: $cd $dd $cc
	res  5, c                                        ; $6ca0: $cb $a9
	xor  c                                           ; $6ca2: $a9
	sub  a                                           ; $6ca3: $97
	ld   h, l                                        ; $6ca4: $65
	ld   b, e                                        ; $6ca5: $43
	ld   [hl+], a                                    ; $6ca6: $22
	ld   [hl-], a                                    ; $6ca7: $32
	inc  [hl]                                        ; $6ca8: $34
	ld   b, [hl]                                     ; $6ca9: $46
	ld   a, b                                        ; $6caa: $78
	xor  e                                           ; $6cab: $ab
	sbc  $fe                                         ; $6cac: $de $fe
	db   $ed                                         ; $6cae: $ed
	call c, $a8a9                                    ; $6caf: $dc $a9 $a8
	add  a                                           ; $6cb2: $87
	ld   d, h                                        ; $6cb3: $54
	inc  hl                                          ; $6cb4: $23
	ld   de, $2412                                   ; $6cb5: $11 $12 $24
	ld   b, h                                        ; $6cb8: $44
	ld   a, b                                        ; $6cb9: $78
	call z, $ffef                                    ; $6cba: $cc $ef $ff
	xor  $dd                                         ; $6cbd: $ee $dd
	xor  d                                           ; $6cbf: $aa
	sbc  c                                           ; $6cc0: $99
	sbc  b                                           ; $6cc1: $98
	ld   d, e                                        ; $6cc2: $53
	ld   hl, $1111                                   ; $6cc3: $21 $11 $11
	inc  hl                                          ; $6cc6: $23
	ld   b, l                                        ; $6cc7: $45
	ld   e, c                                        ; $6cc8: $59
	cp   [hl]                                        ; $6cc9: $be
	rst  $38                                         ; $6cca: $ff
	rst  $38                                         ; $6ccb: $ff
	cp   $ed                                         ; $6ccc: $fe $ed

Call_0c0_6cce:
	jp   z, $8697                                    ; $6cce: $ca $97 $86

	ld   d, e                                        ; $6cd1: $53
	ld   de, $1111                                   ; $6cd2: $11 $11 $11
	ld   [de], a                                     ; $6cd5: $12
	ld   b, l                                        ; $6cd6: $45
	ld   l, b                                        ; $6cd7: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cd8: $cf
	rst  $38                                         ; $6cd9: $ff
	rst  $38                                         ; $6cda: $ff
	rst  $38                                         ; $6cdb: $ff
	db   $fd                                         ; $6cdc: $fd
	cp   e                                           ; $6cdd: $bb
	sub  a                                           ; $6cde: $97
	ld   h, l                                        ; $6cdf: $65
	ld   b, d                                        ; $6ce0: $42
	ld   de, $1111                                   ; $6ce1: $11 $11 $11
	ld   de, $7a56                                   ; $6ce4: $11 $56 $7a
	rst  JumpTable                                         ; $6ce7: $df
	rst  $38                                         ; $6ce8: $ff
	rst  $38                                         ; $6ce9: $ff
	rst  $38                                         ; $6cea: $ff
	db   $fc                                         ; $6ceb: $fc
	cp   d                                           ; $6cec: $ba
	sbc  b                                           ; $6ced: $98
	ld   h, e                                        ; $6cee: $63
	ld   hl, $1111                                   ; $6cef: $21 $11 $11
	ld   de, $3712                                   ; $6cf2: $11 $12 $37
	xor  l                                           ; $6cf5: $ad
	rst  $38                                         ; $6cf6: $ff
	rst  $38                                         ; $6cf7: $ff
	rst  $38                                         ; $6cf8: $ff
	rst  $38                                         ; $6cf9: $ff
	db   $fc                                         ; $6cfa: $fc
	xor  d                                           ; $6cfb: $aa
	and  a                                           ; $6cfc: $a7
	ld   b, d                                        ; $6cfd: $42
	ld   de, $1111                                   ; $6cfe: $11 $11 $11
	ld   de, $7913                                   ; $6d01: $11 $13 $79
	rst  JumpTable                                         ; $6d04: $df
	rst  $38                                         ; $6d05: $ff
	rst  $38                                         ; $6d06: $ff
	rst  $38                                         ; $6d07: $ff
	rst  $38                                         ; $6d08: $ff
	jp   z, $93ab                                    ; $6d09: $ca $ab $93

	ld   de, $1111                                   ; $6d0c: $11 $11 $11
	ld   de, $6c12                                   ; $6d0f: $11 $12 $6c
	rst  $38                                         ; $6d12: $ff
	rst  $38                                         ; $6d13: $ff
	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	ei                                               ; $6d16: $fb
	sub  a                                           ; $6d17: $97
	add  a                                           ; $6d18: $87
	ld   de, $1111                                   ; $6d19: $11 $11 $11
	ld   de, $ef15                                   ; $6d1c: $11 $15 $ef
	rst  $38                                         ; $6d1f: $ff
	rst  $38                                         ; $6d20: $ff
	rst  $38                                         ; $6d21: $ff
	rst  $38                                         ; $6d22: $ff
	ret                                              ; $6d23: $c9


	ld   h, h                                        ; $6d24: $64
	ld   hl, $1111                                   ; $6d25: $21 $11 $11
	ld   de, $7f12                                   ; $6d28: $11 $12 $7f
	rst  $38                                         ; $6d2b: $ff
	rst  $38                                         ; $6d2c: $ff
	rst  $38                                         ; $6d2d: $ff
	rst  $38                                         ; $6d2e: $ff
	db   $ec                                         ; $6d2f: $ec
	ret                                              ; $6d30: $c9


	ld   h, e                                        ; $6d31: $63
	ld   de, $1111                                   ; $6d32: $11 $11 $11
	ld   de, $af11                                   ; $6d35: $11 $11 $af
	rst  $38                                         ; $6d38: $ff
	rst  $38                                         ; $6d39: $ff
	rst  $38                                         ; $6d3a: $ff
	rst  $38                                         ; $6d3b: $ff
	rst  $38                                         ; $6d3c: $ff
	db   $db                                         ; $6d3d: $db
	sbc  c                                           ; $6d3e: $99
	ld   d, c                                        ; $6d3f: $51
	ld   de, $1111                                   ; $6d40: $11 $11 $11
	ld   de, $ff4c                                   ; $6d43: $11 $4c $ff
	rst  $38                                         ; $6d46: $ff
	rst  $38                                         ; $6d47: $ff
	rst  $38                                         ; $6d48: $ff
	rst  $38                                         ; $6d49: $ff
	jp   hl                                          ; $6d4a: $e9


	adc  e                                           ; $6d4b: $8b
	or   l                                           ; $6d4c: $b5
	ld   de, $1111                                   ; $6d4d: $11 $11 $11
	ld   de, $df15                                   ; $6d50: $11 $15 $df
	rst  $38                                         ; $6d53: $ff
	rst  $38                                         ; $6d54: $ff
	rst  $38                                         ; $6d55: $ff
	cp   $da                                         ; $6d56: $fe $da
	add  a                                           ; $6d58: $87
	ld   [hl], e                                     ; $6d59: $73
	ld   de, $1111                                   ; $6d5a: $11 $11 $11
	ld   de, $ff19                                   ; $6d5d: $11 $19 $ff
	rst  $38                                         ; $6d60: $ff
	rst  $38                                         ; $6d61: $ff
	rst  $38                                         ; $6d62: $ff
	db   $eb                                         ; $6d63: $eb
	res  0, [hl]                                     ; $6d64: $cb $86
	ld   b, c                                        ; $6d66: $41
	ld   de, $1111                                   ; $6d67: $11 $11 $11
	ld   de, $ff38                                   ; $6d6a: $11 $38 $ff
	rst  $38                                         ; $6d6d: $ff
	rst  $38                                         ; $6d6e: $ff
	rst  $38                                         ; $6d6f: $ff
	cp   $db                                         ; $6d70: $fe $db
	cp   b                                           ; $6d72: $b8
	ld   d, d                                        ; $6d73: $52
	ld   de, $1111                                   ; $6d74: $11 $11 $11
	ld   de, $ef14                                   ; $6d77: $11 $14 $ef
	rst  $38                                         ; $6d7a: $ff
	rst  $38                                         ; $6d7b: $ff
	rst  $38                                         ; $6d7c: $ff
	rst  $38                                         ; $6d7d: $ff
	rst  $38                                         ; $6d7e: $ff
	ret                                              ; $6d7f: $c9


	adc  b                                           ; $6d80: $88
	ld   d, c                                        ; $6d81: $51
	ld   de, $1111                                   ; $6d82: $11 $11 $11
	ld   de, $ff2c                                   ; $6d85: $11 $2c $ff
	rst  $38                                         ; $6d88: $ff
	rst  $38                                         ; $6d89: $ff
	rst  $38                                         ; $6d8a: $ff
	rst  $28                                         ; $6d8b: $ef
	db   $fd                                         ; $6d8c: $fd
	sbc  c                                           ; $6d8d: $99
	xor  c                                           ; $6d8e: $a9
	ld   de, $1111                                   ; $6d8f: $11 $11 $11
	ld   de, $5e11                                   ; $6d92: $11 $11 $5e
	rst  $38                                         ; $6d95: $ff
	rst  $38                                         ; $6d96: $ff
	rst  $38                                         ; $6d97: $ff
	cp   $ff                                         ; $6d98: $fe $ff
	ei                                               ; $6d9a: $fb
	ld   a, c                                        ; $6d9b: $79
	sub  l                                           ; $6d9c: $95
	ld   de, $1111                                   ; $6d9d: $11 $11 $11
	ld   de, $9f12                                   ; $6da0: $11 $12 $9f
	rst  $38                                         ; $6da3: $ff
	rst  $38                                         ; $6da4: $ff
	rst  $38                                         ; $6da5: $ff
	rst  $38                                         ; $6da6: $ff
	rst  $38                                         ; $6da7: $ff
	rst  $10                                         ; $6da8: $d7
	ld   a, c                                        ; $6da9: $79
	ld   [hl], c                                     ; $6daa: $71
	ld   de, $1111                                   ; $6dab: $11 $11 $11
	ld   de, $af14                                   ; $6dae: $11 $14 $af
	rst  $38                                         ; $6db1: $ff
	rst  $38                                         ; $6db2: $ff
	rst  $38                                         ; $6db3: $ff
	cp   $ed                                         ; $6db4: $fe $ed
	cp   b                                           ; $6db6: $b8
	adc  c                                           ; $6db7: $89
	ld   d, c                                        ; $6db8: $51
	ld   de, $1111                                   ; $6db9: $11 $11 $11
	ld   de, $ef15                                   ; $6dbc: $11 $15 $ef
	rst  $38                                         ; $6dbf: $ff
	rst  $38                                         ; $6dc0: $ff
	rst  $38                                         ; $6dc1: $ff
	db   $ed                                         ; $6dc2: $ed
	sbc  $c9                                         ; $6dc3: $de $c9
	adc  b                                           ; $6dc5: $88
	ld   h, c                                        ; $6dc6: $61
	ld   de, $1111                                   ; $6dc7: $11 $11 $11
	ld   de, $bf14                                   ; $6dca: $11 $14 $bf
	rst  $38                                         ; $6dcd: $ff
	rst  $38                                         ; $6dce: $ff
	rst  $38                                         ; $6dcf: $ff
	db   $fd                                         ; $6dd0: $fd
	adc  $ec                                         ; $6dd1: $ce $ec
	add  a                                           ; $6dd3: $87
	ld   [hl], l                                     ; $6dd4: $75
	ld   hl, $1111                                   ; $6dd5: $21 $11 $11
	ld   de, $5a11                                   ; $6dd8: $11 $11 $5a
	sbc  $ff                                         ; $6ddb: $de $ff
	rst  $38                                         ; $6ddd: $ff
	rst  $38                                         ; $6dde: $ff
	call c, $c9ef                                    ; $6ddf: $dc $ef $c9
	halt                                             ; $6de2: $76
	ld   h, e                                        ; $6de3: $63
	ld   de, $1111                                   ; $6de4: $11 $11 $11
	ld   de, $5a11                                   ; $6de7: $11 $11 $5a
	sbc  $ff                                         ; $6dea: $de $ff
	rst  $38                                         ; $6dec: $ff
	rst  $38                                         ; $6ded: $ff
	db   $dd                                         ; $6dee: $dd
	db   $ed                                         ; $6def: $ed
	jp   z, Jump_0c0_6686                            ; $6df0: $ca $86 $66

	ld   sp, $1111                                   ; $6df3: $31 $11 $11
	ld   de, $2711                                   ; $6df6: $11 $11 $27
	cp   h                                           ; $6df9: $bc
	rst  $28                                         ; $6dfa: $ef
	rst  $38                                         ; $6dfb: $ff
	rst  $38                                         ; $6dfc: $ff
	db   $fc                                         ; $6dfd: $fc
	call $b9ec                                       ; $6dfe: $cd $ec $b9
	adc  b                                           ; $6e01: $88
	ld   [hl], h                                     ; $6e02: $74
	ld   de, $1111                                   ; $6e03: $11 $11 $11
	ld   de, $5911                                   ; $6e06: $11 $11 $59
	call z, $ffef                                    ; $6e09: $cc $ef $ff
	rst  $38                                         ; $6e0c: $ff
	xor  $ee                                         ; $6e0d: $ee $ee
	db   $eb                                         ; $6e0f: $eb
	cp   d                                           ; $6e10: $ba
	sbc  c                                           ; $6e11: $99
	ld   [hl], h                                     ; $6e12: $74
	ld   de, $1111                                   ; $6e13: $11 $11 $11
	ld   de, $4911                                   ; $6e16: $11 $11 $49
	xor  d                                           ; $6e19: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e1a: $cf
	rst  $38                                         ; $6e1b: $ff
	rst  $38                                         ; $6e1c: $ff
	rst  $38                                         ; $6e1d: $ff
	xor  $cb                                         ; $6e1e: $ee $cb
	sbc  c                                           ; $6e20: $99
	sbc  c                                           ; $6e21: $99
	add  a                                           ; $6e22: $87
	ld   d, l                                        ; $6e23: $55
	ld   h, e                                        ; $6e24: $63
	ld   de, $1111                                   ; $6e25: $11 $11 $11
	ld   de, $ad57                                   ; $6e28: $11 $57 $ad
	rst  $28                                         ; $6e2b: $ef
	rst  $38                                         ; $6e2c: $ff
	rst  $38                                         ; $6e2d: $ff
	rst  $38                                         ; $6e2e: $ff
	db   $db                                         ; $6e2f: $db
	cp   c                                           ; $6e30: $b9
	xor  d                                           ; $6e31: $aa
	xor  c                                           ; $6e32: $a9
	cp   d                                           ; $6e33: $ba
	add  [hl]                                        ; $6e34: $86
	ld   h, l                                        ; $6e35: $65
	ld   sp, $1111                                   ; $6e36: $31 $11 $11
	ld   de, $7925                                   ; $6e39: $11 $25 $79
	call $ffff                                       ; $6e3c: $cd $ff $ff
	rst  $38                                         ; $6e3f: $ff
	db   $db                                         ; $6e40: $db
	call z, $cccd                                    ; $6e41: $cc $cd $cc
	res  5, c                                        ; $6e44: $cb $a9
	add  l                                           ; $6e46: $85
	ld   b, d                                        ; $6e47: $42
	ld   bc, $1111                                   ; $6e48: $01 $11 $11
	ld   de, $8a47                                   ; $6e4b: $11 $47 $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e4e: $cf
	rst  $38                                         ; $6e4f: $ff
	rst  $38                                         ; $6e50: $ff
	rst  $38                                         ; $6e51: $ff
	db   $ed                                         ; $6e52: $ed
	call c, $bccc                                    ; $6e53: $dc $cc $bc
	cp   e                                           ; $6e56: $bb
	xor  b                                           ; $6e57: $a8
	ld   d, h                                        ; $6e58: $54
	ld   [hl-], a                                    ; $6e59: $32
	ld   de, $1111                                   ; $6e5a: $11 $11 $11
	inc  de                                          ; $6e5d: $13
	ld   d, a                                        ; $6e5e: $57
	xor  l                                           ; $6e5f: $ad
	rst  $38                                         ; $6e60: $ff
	rst  $38                                         ; $6e61: $ff
	rst  $38                                         ; $6e62: $ff
	rst  $38                                         ; $6e63: $ff
	call c, $abaa                                    ; $6e64: $dc $aa $ab
	jp   z, $96a9                                    ; $6e67: $ca $a9 $96

	ld   d, h                                        ; $6e6a: $54
	ld   sp, $1111                                   ; $6e6b: $31 $11 $11
	ld   de, $7915                                   ; $6e6e: $11 $15 $79
	adc  $ff                                         ; $6e71: $ce $ff
	rst  $38                                         ; $6e73: $ff
	rst  $38                                         ; $6e74: $ff
	db   $fd                                         ; $6e75: $fd
	cp   d                                           ; $6e76: $ba
	sbc  e                                           ; $6e77: $9b
	xor  e                                           ; $6e78: $ab
	xor  e                                           ; $6e79: $ab
	res  5, c                                        ; $6e7a: $cb $a9
	ld   h, l                                        ; $6e7c: $65
	ld   b, d                                        ; $6e7d: $42
	ld   de, $1111                                   ; $6e7e: $11 $11 $11
	inc  d                                           ; $6e81: $14
	ld   a, c                                        ; $6e82: $79
	cp   l                                           ; $6e83: $bd
	rst  $38                                         ; $6e84: $ff
	rst  $38                                         ; $6e85: $ff
	rst  $38                                         ; $6e86: $ff
	db   $ec                                         ; $6e87: $ec
	cp   h                                           ; $6e88: $bc
	xor  h                                           ; $6e89: $ac
	call c, $dcde                                    ; $6e8a: $dc $de $dc
	ret                                              ; $6e8d: $c9


	ld   h, h                                        ; $6e8e: $64
	ld   hl, $1111                                   ; $6e8f: $21 $11 $11
	ld   de, $8b15                                   ; $6e92: $11 $15 $8b
	adc  $ff                                         ; $6e95: $ce $ff
	rst  $38                                         ; $6e97: $ff
	rst  $38                                         ; $6e98: $ff
	db   $ed                                         ; $6e99: $ed
	call z, $ccbc                                    ; $6e9a: $cc $bc $cc
	sbc  $dd                                         ; $6e9d: $de $dd
	cp   b                                           ; $6e9f: $b8
	ld   d, e                                        ; $6ea0: $53
	ld   de, $1111                                   ; $6ea1: $11 $11 $11
	ld   de, $ad17                                   ; $6ea4: $11 $17 $ad
	rst  $28                                         ; $6ea7: $ef
	rst  $38                                         ; $6ea8: $ff
	rst  $38                                         ; $6ea9: $ff
	cp   $dc                                         ; $6eaa: $fe $dc
	xor  e                                           ; $6eac: $ab
	xor  e                                           ; $6ead: $ab
	sbc  $ef                                         ; $6eae: $de $ef
	db   $fd                                         ; $6eb0: $fd
	ret                                              ; $6eb1: $c9


	ld   d, e                                        ; $6eb2: $53
	ld   de, $1111                                   ; $6eb3: $11 $11 $11
	ld   de, $ef2a                                   ; $6eb6: $11 $2a $ef
	rst  $38                                         ; $6eb9: $ff
	rst  $38                                         ; $6eba: $ff
	db   $fd                                         ; $6ebb: $fd
	res  7, e                                        ; $6ebc: $cb $bb
	sbc  c                                           ; $6ebe: $99
	cp   h                                           ; $6ebf: $bc
	rst  $38                                         ; $6ec0: $ff
	rst  $38                                         ; $6ec1: $ff
	rst  $38                                         ; $6ec2: $ff
	jp   c, $1152                                    ; $6ec3: $da $52 $11

	ld   de, $1111                                   ; $6ec6: $11 $11 $11
	inc  l                                           ; $6ec9: $2c
	rst  $38                                         ; $6eca: $ff
	rst  $38                                         ; $6ecb: $ff
	rst  $38                                         ; $6ecc: $ff
	reti                                             ; $6ecd: $d9


	sbc  c                                           ; $6ece: $99
	cp   e                                           ; $6ecf: $bb
	xor  e                                           ; $6ed0: $ab
	adc  $ff                                         ; $6ed1: $ce $ff
	rst  $38                                         ; $6ed3: $ff
	rst  $38                                         ; $6ed4: $ff
	ld   [$1141], a                                  ; $6ed5: $ea $41 $11
	ld   de, $1111                                   ; $6ed8: $11 $11 $11
	ld   e, [hl]                                     ; $6edb: $5e
	rst  $38                                         ; $6edc: $ff
	rst  $38                                         ; $6edd: $ff
	cp   $84                                         ; $6ede: $fe $84
	ld   l, d                                        ; $6ee0: $6a
	call z, $dfaa                                    ; $6ee1: $cc $aa $df
	rst  $38                                         ; $6ee4: $ff
	rst  $38                                         ; $6ee5: $ff
	rst  $38                                         ; $6ee6: $ff
	ld   sp, hl                                      ; $6ee7: $f9
	ld   sp, $1111                                   ; $6ee8: $31 $11 $11
	ld   de, $af11                                   ; $6eeb: $11 $11 $af
	rst  $38                                         ; $6eee: $ff
	rst  $38                                         ; $6eef: $ff
	ld   a, [$5b31]                                  ; $6ef0: $fa $31 $5b
	rst  $38                                         ; $6ef3: $ff
	call z, $ffff                                    ; $6ef4: $cc $ff $ff
	rst  $38                                         ; $6ef7: $ff
	rst  $38                                         ; $6ef8: $ff
	ld   sp, hl                                      ; $6ef9: $f9
	ld   hl, $1111                                   ; $6efa: $21 $11 $11
	ld   de, $7f11                                   ; $6efd: $11 $11 $7f
	rst  $38                                         ; $6f00: $ff
	rst  $38                                         ; $6f01: $ff
	ld   [$6b31], a                                  ; $6f02: $ea $31 $6b
	rst  $38                                         ; $6f05: $ff
	xor  $ff                                         ; $6f06: $ee $ff
	rst  $38                                         ; $6f08: $ff
	rst  $38                                         ; $6f09: $ff
	rst  $38                                         ; $6f0a: $ff
	ld   sp, hl                                      ; $6f0b: $f9
	ld   hl, $1111                                   ; $6f0c: $21 $11 $11
	ld   de, $8f11                                   ; $6f0f: $11 $11 $8f
	rst  $38                                         ; $6f12: $ff
	rst  $38                                         ; $6f13: $ff
	rst  $10                                         ; $6f14: $d7
	ld   de, $ff5d                                   ; $6f15: $11 $5d $ff
	db   $fd                                         ; $6f18: $fd
	rst  $28                                         ; $6f19: $ef
	rst  $38                                         ; $6f1a: $ff
	rst  $38                                         ; $6f1b: $ff
	rst  $38                                         ; $6f1c: $ff
	ld   a, [$1131]                                  ; $6f1d: $fa $31 $11
	ld   de, $1111                                   ; $6f20: $11 $11 $11
	ld   l, $ff                                      ; $6f23: $2e $ff
	rst  $38                                         ; $6f25: $ff
	jp   hl                                          ; $6f26: $e9


	ld   hl, $ff3c                                   ; $6f27: $21 $3c $ff
	db   $fd                                         ; $6f2a: $fd
	cp   $ff                                         ; $6f2b: $fe $ff
	rst  $38                                         ; $6f2d: $ff
	rst  $38                                         ; $6f2e: $ff
	db   $fc                                         ; $6f2f: $fc
	ld   sp, $1111                                   ; $6f30: $31 $11 $11
	ld   de, $1911                                   ; $6f33: $11 $11 $19
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	reti                                             ; $6f38: $d9


	ld   b, c                                        ; $6f39: $41
	rla                                              ; $6f3a: $17
	rst  $38                                         ; $6f3b: $ff
	rst  $38                                         ; $6f3c: $ff
	cp   h                                           ; $6f3d: $bc
	adc  $ff                                         ; $6f3e: $ce $ff
	rst  $38                                         ; $6f40: $ff
	rst  $38                                         ; $6f41: $ff
	ld   h, c                                        ; $6f42: $61
	ld   de, $1111                                   ; $6f43: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $6f46: $11 $12 $ff
	rst  $38                                         ; $6f49: $ff
	ld   [$1372], a                                  ; $6f4a: $ea $72 $13
	cp   a                                           ; $6f4d: $bf
	rst  $38                                         ; $6f4e: $ff
	ret                                              ; $6f4f: $c9


	xor  h                                           ; $6f50: $ac
	rst  $28                                         ; $6f51: $ef
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	jp   $1111                                       ; $6f54: $c3 $11 $11


	ld   de, $1111                                   ; $6f57: $11 $11 $11
	ld   c, a                                        ; $6f5a: $4f
	rst  $38                                         ; $6f5b: $ff
	db   $fd                                         ; $6f5c: $fd
	and  [hl]                                        ; $6f5d: $a6
	ld   de, $ff0c                                   ; $6f5e: $11 $0c $ff
	ld   sp, hl                                      ; $6f61: $f9
	ld   a, c                                        ; $6f62: $79
	xor  a                                           ; $6f63: $af
	rst  $38                                         ; $6f64: $ff
	rst  $38                                         ; $6f65: $ff
	db   $fc                                         ; $6f66: $fc
	ld   de, $1111                                   ; $6f67: $11 $11 $11
	ld   de, $1111                                   ; $6f6a: $11 $11 $11
	rst  $38                                         ; $6f6d: $ff
	rst  $38                                         ; $6f6e: $ff
	db   $eb                                         ; $6f6f: $eb
	ld   h, c                                        ; $6f70: $61
	ld   de, $ffaf                                   ; $6f71: $11 $af $ff
	or   l                                           ; $6f74: $b5
	ld   e, c                                        ; $6f75: $59
	rst  JumpTable                                         ; $6f76: $df
	rst  $38                                         ; $6f77: $ff
	rst  $38                                         ; $6f78: $ff
	db   $e3                                         ; $6f79: $e3
	ld   de, $5512                                   ; $6f7a: $11 $12 $55
	ld   de, $1311                                   ; $6f7d: $11 $11 $13
	rst  $38                                         ; $6f80: $ff
	rst  $38                                         ; $6f81: $ff
	xor  b                                           ; $6f82: $a8
	ld   d, c                                        ; $6f83: $51
	ld   de, $ffaf                                   ; $6f84: $11 $af $ff
	and  d                                           ; $6f87: $a2
	rla                                              ; $6f88: $17
	rst  $28                                         ; $6f89: $ef
	rst  $38                                         ; $6f8a: $ff
	rst  $38                                         ; $6f8b: $ff
	or   d                                           ; $6f8c: $b2
	ld   de, $8715                                   ; $6f8d: $11 $15 $87
	ld   hl, $1111                                   ; $6f90: $21 $11 $11
	rst  $38                                         ; $6f93: $ff
	rst  $38                                         ; $6f94: $ff
	or   [hl]                                        ; $6f95: $b6
	ld   hl, $af11                                   ; $6f96: $21 $11 $af
	rst  $38                                         ; $6f99: $ff
	pop  de                                          ; $6f9a: $d1
	ld   [de], a                                     ; $6f9b: $12
	xor  a                                           ; $6f9c: $af
	rst  $38                                         ; $6f9d: $ff
	rst  $38                                         ; $6f9e: $ff
	db   $d3                                         ; $6f9f: $d3
	ld   de, $ca16                                   ; $6fa0: $11 $16 $ca
	ld   b, c                                        ; $6fa3: $41
	ld   de, rAUD1LEN                                   ; $6fa4: $11 $11 $ff
	rst  $38                                         ; $6fa7: $ff
	db   $f4                                         ; $6fa8: $f4
	ld   de, $bf12                                   ; $6fa9: $11 $12 $bf
	rst  $38                                         ; $6fac: $ff
	di                                               ; $6fad: $f3
	ld   de, $ff6f                                   ; $6fae: $11 $6f $ff
	rst  $38                                         ; $6fb1: $ff
	or   $11                                         ; $6fb2: $f6 $11
	rla                                              ; $6fb4: $17
	sbc  $81                                         ; $6fb5: $de $81
	ld   de, $9f11                                   ; $6fb7: $11 $11 $9f
	rst  $38                                         ; $6fba: $ff
	rst  $30                                         ; $6fbb: $f7
	ld   de, $7f11                                   ; $6fbc: $11 $11 $7f
	rst  $38                                         ; $6fbf: $ff
	ld   sp, hl                                      ; $6fc0: $f9
	ld   de, $ff1a                                   ; $6fc1: $11 $1a $ff
	rst  $38                                         ; $6fc4: $ff
	db   $fc                                         ; $6fc5: $fc
	ld   b, c                                        ; $6fc6: $41
	dec  d                                           ; $6fc7: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fc8: $cf
	call nc, $1111                                   ; $6fc9: $d4 $11 $11
	ld   e, $ff                                      ; $6fcc: $1e $ff
	rst  $38                                         ; $6fce: $ff
	ld   b, c                                        ; $6fcf: $41
	ld   de, $ff1a                                   ; $6fd0: $11 $1a $ff
	rst  $38                                         ; $6fd3: $ff
	ld   [hl], c                                     ; $6fd4: $71
	ld   de, $ffcf                                   ; $6fd5: $11 $cf $ff
	rst  $38                                         ; $6fd8: $ff
	or   $11                                         ; $6fd9: $f6 $11
	ld   e, a                                        ; $6fdb: $5f
	rst  $38                                         ; $6fdc: $ff
	ld   d, c                                        ; $6fdd: $51
	ld   de, $3f11                                   ; $6fde: $11 $11 $3f
	rst  $38                                         ; $6fe1: $ff
	rst  $30                                         ; $6fe2: $f7
	ld   de, $7f11                                   ; $6fe3: $11 $11 $7f
	rst  $38                                         ; $6fe6: $ff
	rst  $38                                         ; $6fe7: $ff
	ld   b, c                                        ; $6fe8: $41
	inc  d                                           ; $6fe9: $14
	rst  $38                                         ; $6fea: $ff
	rst  $38                                         ; $6feb: $ff
	rst  $38                                         ; $6fec: $ff
	or   l                                           ; $6fed: $b5
	inc  de                                          ; $6fee: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fef: $cf
	ld   a, [$1111]                                  ; $6ff0: $fa $11 $11
	ld   de, $ff7f                                   ; $6ff3: $11 $7f $ff
	pop  af                                          ; $6ff6: $f1
	ld   de, $af13                                   ; $6ff7: $11 $13 $af
	rst  $38                                         ; $6ffa: $ff
	db   $fd                                         ; $6ffb: $fd
	ld   de, $ff16                                   ; $6ffc: $11 $16 $ff
	rst  $38                                         ; $6fff: $ff
	db   $fc                                         ; $7000: $fc
	and  l                                           ; $7001: $a5
	scf                                              ; $7002: $37
	rst  $28                                         ; $7003: $ef
	or   $11                                         ; $7004: $f6 $11
	ld   de, $8f11                                   ; $7006: $11 $11 $8f
	rst  $38                                         ; $7009: $ff
	pop  af                                          ; $700a: $f1
	ld   de, $ef17                                   ; $700b: $11 $17 $ef
	rst  $38                                         ; $700e: $ff
	ld   a, [$1811]                                  ; $700f: $fa $11 $18
	rst  $38                                         ; $7012: $ff
	rst  $38                                         ; $7013: $ff
	db   $eb                                         ; $7014: $eb
	and  [hl]                                        ; $7015: $a6
	ld   e, d                                        ; $7016: $5a
	rst  $38                                         ; $7017: $ff
	push af                                          ; $7018: $f5
	ld   de, $1111                                   ; $7019: $11 $11 $11
	rra                                              ; $701c: $1f
	rst  $38                                         ; $701d: $ff
	ldh  a, [c]                                      ; $701e: $f2
	ld   de, $ef16                                   ; $701f: $11 $16 $ef
	rst  $38                                         ; $7022: $ff
	db   $fc                                         ; $7023: $fc
	ld   b, c                                        ; $7024: $41
	ld   d, $ff                                      ; $7025: $16 $ff
	rst  $38                                         ; $7027: $ff
	call c, Call_0c0_79a9                            ; $7028: $dc $a9 $79
	rst  $38                                         ; $702b: $ff
	ld   sp, hl                                      ; $702c: $f9
	ld   de, $1111                                   ; $702d: $11 $11 $11
	ld   [de], a                                     ; $7030: $12
	rst  $38                                         ; $7031: $ff
	rst  $38                                         ; $7032: $ff
	ld   de, $9e11                                   ; $7033: $11 $11 $9e
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	ld   [hl], c                                     ; $7038: $71
	inc  de                                          ; $7039: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $703a: $cf
	rst  $38                                         ; $703b: $ff
	db   $fc                                         ; $703c: $fc
	and  a                                           ; $703d: $a7
	ld   l, c                                        ; $703e: $69
	rst  JumpTable                                         ; $703f: $df
	cp   $61                                         ; $7040: $fe $61
	ld   de, $1111                                   ; $7042: $11 $11 $11
	rra                                              ; $7045: $1f
	rst  $38                                         ; $7046: $ff
	pop  af                                          ; $7047: $f1
	ld   de, $ff1b                                   ; $7048: $11 $1b $ff
	rst  $38                                         ; $704b: $ff
	push af                                          ; $704c: $f5
	ld   de, $ff5f                                   ; $704d: $11 $5f $ff
	rst  $38                                         ; $7050: $ff
	or   a                                           ; $7051: $b7
	ld   l, b                                        ; $7052: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7053: $cf
	rst  $38                                         ; $7054: $ff
	or   l                                           ; $7055: $b5
	ld   de, $1111                                   ; $7056: $11 $11 $11
	ld   [de], a                                     ; $7059: $12
	rst  $38                                         ; $705a: $ff
	cp   $11                                         ; $705b: $fe $11
	ld   de, $ffbf                                   ; $705d: $11 $bf $ff
	rst  $38                                         ; $7060: $ff
	ld   hl, $ff17                                   ; $7061: $21 $17 $ff
	rst  $38                                         ; $7064: $ff
	ret  c                                           ; $7065: $d8

	ld   h, l                                        ; $7066: $65
	ld   a, [hl]                                     ; $7067: $7e
	rst  $38                                         ; $7068: $ff
	ei                                               ; $7069: $fb
	ld   d, c                                        ; $706a: $51
	ld   de, $1111                                   ; $706b: $11 $11 $11
	dec  de                                          ; $706e: $1b
	rst  $38                                         ; $706f: $ff
	pop  af                                          ; $7070: $f1
	ld   de, $ff19                                   ; $7071: $11 $19 $ff
	rst  $38                                         ; $7074: $ff
	ld   hl, sp+$11                                  ; $7075: $f8 $11
	ccf                                              ; $7077: $3f
	rst  $38                                         ; $7078: $ff
	cp   $96                                         ; $7079: $fe $96
	ld   b, l                                        ; $707b: $45
	xor  a                                           ; $707c: $af
	rst  $38                                         ; $707d: $ff
	push de                                          ; $707e: $d5
	ld   de, $1111                                   ; $707f: $11 $11 $11
	ld   de, $ff1f                                   ; $7082: $11 $1f $ff
	pop  af                                          ; $7085: $f1
	ld   de, $ff1b                                   ; $7086: $11 $1b $ff
	rst  $38                                         ; $7089: $ff
	push af                                          ; $708a: $f5
	ld   de, $ff4f                                   ; $708b: $11 $4f $ff
	ld   sp, hl                                      ; $708e: $f9
	ld   [hl], l                                     ; $708f: $75
	ld   b, l                                        ; $7090: $45
	xor  a                                           ; $7091: $af
	rst  $38                                         ; $7092: $ff
	db   $e3                                         ; $7093: $e3
	ld   de, $1124                                   ; $7094: $11 $24 $11
	ld   de, $ff1b                                   ; $7097: $11 $1b $ff
	pop  af                                          ; $709a: $f1
	ld   de, $ff1b                                   ; $709b: $11 $1b $ff
	rst  $38                                         ; $709e: $ff
	or   $11                                         ; $709f: $f6 $11
	rra                                              ; $70a1: $1f
	rst  $38                                         ; $70a2: $ff
	ld   sp, hl                                      ; $70a3: $f9
	ld   b, e                                        ; $70a4: $43
	inc  h                                           ; $70a5: $24
	sbc  a                                           ; $70a6: $9f
	rst  $38                                         ; $70a7: $ff
	push af                                          ; $70a8: $f5
	ld   bc, $2134                                   ; $70a9: $01 $34 $21
	ld   de, $cf11                                   ; $70ac: $11 $11 $cf
	rst  $38                                         ; $70af: $ff
	ld   de, rAUD1LEN                                   ; $70b0: $11 $11 $ff
	rst  $38                                         ; $70b3: $ff
	rst  $38                                         ; $70b4: $ff
	ld   hl, rAUD1ENV                                   ; $70b5: $21 $12 $ff
	rst  $38                                         ; $70b8: $ff
	ld   h, c                                        ; $70b9: $61
	ld   de, $ff3b                                   ; $70ba: $11 $3b $ff
	db   $fc                                         ; $70bd: $fc
	ld   sp, $6414                                   ; $70be: $31 $14 $64
	ld   de, $1f11                                   ; $70c1: $11 $11 $1f
	rst  $38                                         ; $70c4: $ff
	or   c                                           ; $70c5: $b1
	ld   de, $ff9f                                   ; $70c6: $11 $9f $ff
	rst  $38                                         ; $70c9: $ff
	or   c                                           ; $70ca: $b1
	ld   de, $ff9f                                   ; $70cb: $11 $9f $ff
	ldh  a, [c]                                      ; $70ce: $f2
	ld   de, $ff17                                   ; $70cf: $11 $17 $ff
	rst  $38                                         ; $70d2: $ff
	or   c                                           ; $70d3: $b1
	ld   de, $6159                                   ; $70d4: $11 $59 $61
	ld   de, rAUD1LEN                                   ; $70d7: $11 $11 $ff
	rst  $38                                         ; $70da: $ff
	ld   de, rAUD1HIGH                                   ; $70db: $11 $14 $ff
	rst  $38                                         ; $70de: $ff
	rst  $38                                         ; $70df: $ff
	ld   de, rAUD1LEN                                   ; $70e0: $11 $11 $ff
	rst  $38                                         ; $70e3: $ff
	or   c                                           ; $70e4: $b1
	ld   de, $ff3e                                   ; $70e5: $11 $3e $ff
	cp   $61                                         ; $70e8: $fe $61
	ld   de, $d46d                                   ; $70ea: $11 $6d $d4
	ld   de, rAUD1LEN                                   ; $70ed: $11 $11 $ff
	rst  $38                                         ; $70f0: $ff
	ld   de, $cf11                                   ; $70f1: $11 $11 $cf
	rst  $38                                         ; $70f4: $ff
	rst  $38                                         ; $70f5: $ff
	ld   de, rAUD1LEN                                   ; $70f6: $11 $11 $ff
	rst  $38                                         ; $70f9: $ff
	di                                               ; $70fa: $f3
	ld   de, $ff1b                                   ; $70fb: $11 $1b $ff
	rst  $38                                         ; $70fe: $ff
	ld   h, c                                        ; $70ff: $61
	ld   de, $fc6e                                   ; $7100: $11 $6e $fc
	ld   de, $1f11                                   ; $7103: $11 $11 $1f
	rst  $38                                         ; $7106: $ff
	pop  af                                          ; $7107: $f1
	ld   de, $ff4f                                   ; $7108: $11 $4f $ff
	rst  $38                                         ; $710b: $ff
	pop  de                                          ; $710c: $d1
	ld   de, $ff2f                                   ; $710d: $11 $2f $ff
	rst  $38                                         ; $7110: $ff
	ld   b, c                                        ; $7111: $41
	ld   de, $ffaf                                   ; $7112: $11 $af $ff
	jp   $2811                                       ; $7115: $c3 $11 $28


	rst  $38                                         ; $7118: $ff
	pop  de                                          ; $7119: $d1
	ld   de, rAUD1LEN                                   ; $711a: $11 $11 $ff
	rst  $38                                         ; $711d: $ff
	ld   de, $af11                                   ; $711e: $11 $11 $af
	rst  $38                                         ; $7121: $ff
	rst  $38                                         ; $7122: $ff
	ld   de, $ef11                                   ; $7123: $11 $11 $ef
	rst  $38                                         ; $7126: $ff
	db   $fc                                         ; $7127: $fc
	ld   de, rAUD1LEN                                   ; $7128: $11 $11 $ff
	rst  $38                                         ; $712b: $ff
	add  c                                           ; $712c: $81
	ld   de, $ff5b                                   ; $712d: $11 $5b $ff
	and  c                                           ; $7130: $a1
	ld   de, rAUD1LEN                                   ; $7131: $11 $11 $ff
	cp   $11                                         ; $7134: $fe $11
	inc  d                                           ; $7136: $14
	rst  $28                                         ; $7137: $ef
	rst  $38                                         ; $7138: $ff
	ei                                               ; $7139: $fb
	ld   de, rAUD1LEN                                   ; $713a: $11 $11 $ff
	rst  $38                                         ; $713d: $ff
	or   a                                           ; $713e: $b7
	ld   hl, $ef11                                   ; $713f: $21 $11 $ef
	rst  $38                                         ; $7142: $ff
	ld   sp, $cf16                                   ; $7143: $31 $16 $cf
	rst  $38                                         ; $7146: $ff
	add  c                                           ; $7147: $81
	ld   de, $bf11                                   ; $7148: $11 $11 $bf
	rst  $38                                         ; $714b: $ff
	ld   h, c                                        ; $714c: $61
	ld   de, $ffaf                                   ; $714d: $11 $af $ff
	rst  $38                                         ; $7150: $ff
	ld   de, $8f11                                   ; $7151: $11 $11 $8f
	rst  $38                                         ; $7154: $ff
	push af                                          ; $7155: $f5
	ld   de, $7f11                                   ; $7156: $11 $11 $7f
	rst  $38                                         ; $7159: $ff
	pop  bc                                          ; $715a: $c1
	ld   de, $ffaf                                   ; $715b: $11 $af $ff
	call nc, $1111                                   ; $715e: $d4 $11 $11
	rra                                              ; $7161: $1f
	rst  $38                                         ; $7162: $ff
	pop  af                                          ; $7163: $f1
	ld   de, $ff1f                                   ; $7164: $11 $1f $ff
	rst  $38                                         ; $7167: $ff
	pop  bc                                          ; $7168: $c1
	ld   de, $ff1f                                   ; $7169: $11 $1f $ff
	ei                                               ; $716c: $fb
	ld   de, $5f11                                   ; $716d: $11 $11 $5f
	rst  $38                                         ; $7170: $ff
	rst  $30                                         ; $7171: $f7
	ld   de, $ff1e                                   ; $7172: $11 $1e $ff
	ei                                               ; $7175: $fb
	ld   de, $1111                                   ; $7176: $11 $11 $11
	ccf                                              ; $7179: $3f
	rst  $38                                         ; $717a: $ff
	pop  af                                          ; $717b: $f1
	ld   de, $ff8f                                   ; $717c: $11 $8f $ff
	rst  $38                                         ; $717f: $ff
	ld   hl, $3f11                                   ; $7180: $21 $11 $3f
	rst  $38                                         ; $7183: $ff
	ldh  a, [c]                                      ; $7184: $f2
	ld   de, $df16                                   ; $7185: $11 $16 $df
	rst  $38                                         ; $7188: $ff
	jp   nz, $9f11                                   ; $7189: $c2 $11 $9f

	rst  $38                                         ; $718c: $ff
	push af                                          ; $718d: $f5
	ld   de, $1111                                   ; $718e: $11 $11 $11
	rra                                              ; $7191: $1f
	rst  $38                                         ; $7192: $ff
	pop  hl                                          ; $7193: $e1
	ld   de, $ffbf                                   ; $7194: $11 $bf $ff
	cp   $31                                         ; $7197: $fe $31
	ld   de, $ff4f                                   ; $7199: $11 $4f $ff
	pop  af                                          ; $719c: $f1
	ld   de, $ff16                                   ; $719d: $11 $16 $ff
	rst  $38                                         ; $71a0: $ff
	ld   h, c                                        ; $71a1: $61
	ld   de, $ff8f                                   ; $71a2: $11 $8f $ff
	ld   sp, hl                                      ; $71a5: $f9
	ld   de, $1111                                   ; $71a6: $11 $11 $11
	ld   de, $ff3f                                   ; $71a9: $11 $3f $ff
	ld   de, rAUD1HIGH                                   ; $71ac: $11 $14 $ff
	ei                                               ; $71af: $fb
	xor  e                                           ; $71b0: $ab
	ld   de, rAUD1LEN                                   ; $71b1: $11 $11 $ff
	rst  $38                                         ; $71b4: $ff
	ld   h, c                                        ; $71b5: $61
	ld   de, $ff1e                                   ; $71b6: $11 $1e $ff
	ld   a, [$1711]                                  ; $71b9: $fa $11 $17
	rst  $38                                         ; $71bc: $ff
	rst  $38                                         ; $71bd: $ff
	sub  c                                           ; $71be: $91
	ld   de, $1123                                   ; $71bf: $11 $23 $11
	ld   de, $ffff                                   ; $71c2: $11 $ff $ff
	ld   de, $ff1f                                   ; $71c5: $11 $1f $ff
	ld   sp, hl                                      ; $71c8: $f9
	rst  $30                                         ; $71c9: $f7
	ld   de, rAUD1LOW                                   ; $71ca: $11 $13 $ff
	rst  $38                                         ; $71cd: $ff
	ld   de, $3d11                                   ; $71ce: $11 $11 $3d
	rst  $38                                         ; $71d1: $ff
	or   $11                                         ; $71d2: $f6 $11
	dec  de                                          ; $71d4: $1b
	rst  $38                                         ; $71d5: $ff
	rst  $38                                         ; $71d6: $ff
	add  c                                           ; $71d7: $81
	ld   de, $6147                                   ; $71d8: $11 $47 $61
	ld   de, $ff1f                                   ; $71db: $11 $1f $ff
	and  c                                           ; $71de: $a1
	ld   de, $fdff                                   ; $71df: $11 $ff $fd
	sbc  a                                           ; $71e2: $9f
	ld   d, c                                        ; $71e3: $51
	ld   de, $ff9f                                   ; $71e4: $11 $9f $ff
	or   c                                           ; $71e7: $b1
	ld   de, $bf14                                   ; $71e8: $11 $14 $bf
	rst  $38                                         ; $71eb: $ff
	sub  c                                           ; $71ec: $91
	ld   de, $ffcf                                   ; $71ed: $11 $cf $ff
	ld   [$1151], a                                  ; $71f0: $ea $51 $11
	xor  [hl]                                        ; $71f3: $ae
	ld   h, c                                        ; $71f4: $61
	ld   de, $ff3f                                   ; $71f5: $11 $3f $ff
	ld   de, $ff15                                   ; $71f8: $11 $15 $ff
	ld   a, [$11ff]                                  ; $71fb: $fa $ff $11
	ld   de, $ffff                                   ; $71fe: $11 $ff $ff
	ld   h, c                                        ; $7201: $61
	ld   de, $df14                                   ; $7202: $11 $14 $df
	rst  $38                                         ; $7205: $ff
	or   c                                           ; $7206: $b1
	ld   de, $ff7f                                   ; $7207: $11 $7f $ff
	ld   sp, hl                                      ; $720a: $f9
	ld   b, c                                        ; $720b: $41
	ld   [de], a                                     ; $720c: $12
	sbc  l                                           ; $720d: $9d
	sub  c                                           ; $720e: $91
	ld   de, $ff1f                                   ; $720f: $11 $1f $ff
	pop  af                                          ; $7212: $f1
	ld   de, $ffff                                   ; $7213: $11 $ff $ff
	sbc  a                                           ; $7216: $9f
	sub  c                                           ; $7217: $91
	ld   de, $ff5f                                   ; $7218: $11 $5f $ff
	pop  af                                          ; $721b: $f1
	ld   de, $7f11                                   ; $721c: $11 $11 $7f
	rst  $38                                         ; $721f: $ff
	rst  $30                                         ; $7220: $f7
	ld   de, $ff19                                   ; $7221: $11 $19 $ff
	rst  $38                                         ; $7224: $ff
	sub  c                                           ; $7225: $91
	ld   de, $fc4e                                   ; $7226: $11 $4e $fc
	ld   de, rAUD1LEN                                   ; $7229: $11 $11 $ff
	rst  $38                                         ; $722c: $ff
	ld   de, $ff1c                                   ; $722d: $11 $1c $ff
	ei                                               ; $7230: $fb
	db   $fd                                         ; $7231: $fd
	ld   de, rAUD1LEN                                   ; $7232: $11 $11 $ff
	rst  $38                                         ; $7235: $ff
	ld   de, $1511                                   ; $7236: $11 $11 $15
	rst  $38                                         ; $7239: $ff
	rst  $38                                         ; $723a: $ff
	ld   h, c                                        ; $723b: $61
	ld   [de], a                                     ; $723c: $12
	sbc  a                                           ; $723d: $9f
	rst  $38                                         ; $723e: $ff
	db   $fc                                         ; $723f: $fc
	ld   sp, $9d12                                   ; $7240: $31 $12 $9d
	add  sp, $11                                     ; $7243: $e8 $11
	ld   de, $ffaf                                   ; $7245: $11 $af $ff
	ld   de, $ff17                                   ; $7248: $11 $17 $ff
	ld   a, [$11ff]                                  ; $724b: $fa $ff $11
	ld   de, $ffff                                   ; $724e: $11 $ff $ff
	ld   b, c                                        ; $7251: $41
	ld   de, rAUD1HIGH                                   ; $7252: $11 $14 $ff
	rst  $38                                         ; $7255: $ff
	ld   h, c                                        ; $7256: $61
	ld   de, $ffaf                                   ; $7257: $11 $af $ff
	jp   z, $1261                                    ; $725a: $ca $61 $12

	xor  a                                           ; $725d: $af
	ld   sp, hl                                      ; $725e: $f9
	ld   de, $1f11                                   ; $725f: $11 $11 $1f
	rst  $38                                         ; $7262: $ff
	pop  af                                          ; $7263: $f1
	ld   de, $ffef                                   ; $7264: $11 $ef $ff
	rst  $38                                         ; $7267: $ff
	ld   hl, $6f11                                   ; $7268: $21 $11 $6f
	rst  $38                                         ; $726b: $ff
	pop  af                                          ; $726c: $f1
	ld   de, $df11                                   ; $726d: $11 $11 $df
	rst  $38                                         ; $7270: $ff
	or   c                                           ; $7271: $b1
	ld   de, $ff1f                                   ; $7272: $11 $1f $ff
	ld   sp, hl                                      ; $7275: $f9
	ld   de, $ef12                                   ; $7276: $11 $12 $ef
	rst  $38                                         ; $7279: $ff
	ld   sp, $1111                                   ; $727a: $31 $11 $11
	rra                                              ; $727d: $1f
	rst  $38                                         ; $727e: $ff
	pop  af                                          ; $727f: $f1
	ld   de, $ffef                                   ; $7280: $11 $ef $ff
	ld   a, a                                        ; $7283: $7f
	ld   hl, $1f11                                   ; $7284: $21 $11 $1f
	rst  $38                                         ; $7287: $ff
	pop  af                                          ; $7288: $f1
	ld   de, $ff16                                   ; $7289: $11 $16 $ff
	rst  $38                                         ; $728c: $ff
	pop  de                                          ; $728d: $d1
	ld   de, $ff1f                                   ; $728e: $11 $1f $ff
	cp   $11                                         ; $7291: $fe $11
	ld   de, $ffff                                   ; $7293: $11 $ff $ff
	ld   h, c                                        ; $7296: $61
	ld   de, $1111                                   ; $7297: $11 $11 $11
	rst  $38                                         ; $729a: $ff
	rst  $30                                         ; $729b: $f7
	ld   de, $ff1f                                   ; $729c: $11 $1f $ff
	cp   e                                           ; $729f: $bb
	pop  bc                                          ; $72a0: $c1
	ld   de, $ff1d                                   ; $72a1: $11 $1d $ff
	push af                                          ; $72a4: $f5
	ld   de, $9f11                                   ; $72a5: $11 $11 $9f
	rst  $38                                         ; $72a8: $ff
	db   $f4                                         ; $72a9: $f4
	ld   de, $ff16                                   ; $72aa: $11 $16 $ff
	rst  $38                                         ; $72ad: $ff
	and  c                                           ; $72ae: $a1
	ld   de, $ff2f                                   ; $72af: $11 $2f $ff
	ldh  a, [c]                                      ; $72b2: $f2
	ld   de, $6211                                   ; $72b3: $11 $11 $62
	ld   de, $fcff                                   ; $72b6: $11 $ff $fc
	ld   de, $ff1f                                   ; $72b9: $11 $1f $ff
	ld   d, c                                        ; $72bc: $51
	pop  de                                          ; $72bd: $d1
	ld   de, $ff1c                                   ; $72be: $11 $1c $ff
	db   $f4                                         ; $72c1: $f4
	ld   de, $cf16                                   ; $72c2: $11 $16 $cf
	rst  $38                                         ; $72c5: $ff
	push af                                          ; $72c6: $f5
	ld   de, $ff17                                   ; $72c7: $11 $17 $ff
	rst  $38                                         ; $72ca: $ff
	add  c                                           ; $72cb: $81
	ld   de, $ff6f                                   ; $72cc: $11 $6f $ff
	jp   nc, $1211                                   ; $72cf: $d2 $11 $12

	ld   h, e                                        ; $72d2: $63
	ld   de, $ffff                                   ; $72d3: $11 $ff $ff
	ld   de, $ff1f                                   ; $72d6: $11 $1f $ff
	pop  af                                          ; $72d9: $f1
	or   $21                                         ; $72da: $f6 $21
	ld   de, $ffff                                   ; $72dc: $11 $ff $ff
	ld   de, $9c11                                   ; $72df: $11 $11 $9c
	rst  $38                                         ; $72e2: $ff
	db   $fc                                         ; $72e3: $fc
	ld   sp, $cf11                                   ; $72e4: $31 $11 $cf
	rst  $38                                         ; $72e7: $ff
	db   $ec                                         ; $72e8: $ec
	ld   de, $ff17                                   ; $72e9: $11 $17 $ff
	ld   a, [$1311]                                  ; $72ec: $fa $11 $13
	ld   l, b                                        ; $72ef: $68
	ld   b, c                                        ; $72f0: $41
	ld   de, $feff                                   ; $72f1: $11 $ff $fe
	ld   de, $ff2f                                   ; $72f4: $11 $2f $ff
	add  hl, hl                                      ; $72f7: $29
	di                                               ; $72f8: $f3
	ld   de, $ff19                                   ; $72f9: $11 $19 $ff
	or   $11                                         ; $72fc: $f6 $11
	inc  d                                           ; $72fe: $14
	ld   a, h                                        ; $72ff: $7c
	rst  $38                                         ; $7300: $ff
	ld   a, [$1411]                                  ; $7301: $fa $11 $14
	rst  $38                                         ; $7304: $ff
	db   $fc                                         ; $7305: $fc
	sbc  c                                           ; $7306: $99
	ld   h, l                                        ; $7307: $65
	dec  d                                           ; $7308: $15
	rst  JumpTable                                         ; $7309: $df
	cp   $11                                         ; $730a: $fe $11
	inc  de                                          ; $730c: $13
	call z, $1171                                    ; $730d: $cc $71 $11
	rst  $38                                         ; $7310: $ff
	rst  $38                                         ; $7311: $ff
	ld   de, $ff1e                                   ; $7312: $11 $1e $ff
	pop  af                                          ; $7315: $f1
	ld   hl, sp+$41                                  ; $7316: $f8 $41
	ld   de, $ffff                                   ; $7318: $11 $ff $ff
	ld   de, $7911                                   ; $731b: $11 $11 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $731e: $cf
	cp   $71                                         ; $731f: $fe $71
	ld   de, $ffaf                                   ; $7321: $11 $af $ff
	sbc  c                                           ; $7324: $99
	ld   h, a                                        ; $7325: $67
	ld   d, [hl]                                     ; $7326: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7327: $cf
	rst  $38                                         ; $7328: $ff
	ld   h, c                                        ; $7329: $61
	ld   [de], a                                     ; $732a: $12
	adc  d                                           ; $732b: $8a
	sub  a                                           ; $732c: $97
	ld   bc, rAUD1LEN                                   ; $732d: $01 $11 $ff
	rst  $38                                         ; $7330: $ff
	ld   de, $ff1e                                   ; $7331: $11 $1e $ff
	ld   a, d                                        ; $7334: $7a
	or   $21                                         ; $7335: $f6 $21
	inc  de                                          ; $7337: $13
	rst  $38                                         ; $7338: $ff
	cp   $11                                         ; $7339: $fe $11
	ld   de, $ef49                                   ; $733b: $11 $49 $ef
	cp   $41                                         ; $733e: $fe $41
	ld   de, $ffbf                                   ; $7340: $11 $bf $ff
	ret                                              ; $7343: $c9


	ld   [hl+], a                                    ; $7344: $22
	ld   d, $df                                      ; $7345: $16 $df
	rst  $38                                         ; $7347: $ff
	ld   [hl], d                                     ; $7348: $72
	ld   hl, $cc58                                   ; $7349: $21 $58 $cc
	ld   [hl], c                                     ; $734c: $71
	ld   de, $ff1f                                   ; $734d: $11 $1f $ff
	pop  af                                          ; $7350: $f1
	ld   [de], a                                     ; $7351: $12
	rst  $38                                         ; $7352: $ff
	push af                                          ; $7353: $f5
	sbc  a                                           ; $7354: $9f
	ld   [hl], e                                     ; $7355: $73
	ld   de, $ff5f                                   ; $7356: $11 $5f $ff
	pop  bc                                          ; $7359: $c1
	ld   de, $6e24                                   ; $735a: $11 $24 $6e
	rst  $38                                         ; $735d: $ff
	db   $d3                                         ; $735e: $d3
	ld   de, $ff2b                                   ; $735f: $11 $2b $ff
	db   $fc                                         ; $7362: $fc
	sub  d                                           ; $7363: $92
	ld   [hl+], a                                    ; $7364: $22
	ld   a, a                                        ; $7365: $7f
	rst  $38                                         ; $7366: $ff
	or   h                                           ; $7367: $b4
	ld   [de], a                                     ; $7368: $12
	ld   b, a                                        ; $7369: $47
	cp   e                                           ; $736a: $bb
	and  [hl]                                        ; $736b: $a6
	ld   de, rAUD1LEN                                   ; $736c: $11 $11 $ff
	rst  $38                                         ; $736f: $ff
	ld   de, $ff1c                                   ; $7370: $11 $1c $ff
	ld   l, h                                        ; $7373: $6c
	rst  $30                                         ; $7374: $f7
	ld   b, c                                        ; $7375: $41
	ld   [de], a                                     ; $7376: $12
	rst  $38                                         ; $7377: $ff
	db   $fd                                         ; $7378: $fd
	ld   de, $3711                                   ; $7379: $11 $11 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $737c: $cf
	cp   $51                                         ; $737d: $fe $51
	ld   de, $ffaf                                   ; $737f: $11 $af $ff
	reti                                             ; $7382: $d9


	ld   hl, $df16                                   ; $7383: $21 $16 $df
	rst  $38                                         ; $7386: $ff
	sub  d                                           ; $7387: $92
	ld   de, $dc69                                   ; $7388: $11 $69 $dc
	and  l                                           ; $738b: $a5
	ld   de, $ef11                                   ; $738c: $11 $11 $ef
	rst  $38                                         ; $738f: $ff
	ld   de, $df14                                   ; $7390: $11 $14 $df
	ld   sp, hl                                      ; $7393: $f9
	db   $fc                                         ; $7394: $fc
	ld   d, c                                        ; $7395: $51
	ld   de, $ffbf                                   ; $7396: $11 $bf $ff
	ld   b, c                                        ; $7399: $41
	ld   de, $af35                                   ; $739a: $11 $35 $af
	rst  $38                                         ; $739d: $ff
	and  c                                           ; $739e: $a1
	ld   de, $ff3b                                   ; $739f: $11 $3b $ff
	db   $eb                                         ; $73a2: $eb
	ld   h, e                                        ; $73a3: $63
	ld   de, $ff6d                                   ; $73a4: $11 $6d $ff
	ld   hl, sp+$11                                  ; $73a7: $f8 $11
	daa                                              ; $73a9: $27
	call Call_0c0_61da                               ; $73aa: $cd $da $61
	ld   de, rAUD1LEN                                   ; $73ad: $11 $11 $ff
	rst  $38                                         ; $73b0: $ff
	ld   de, $ff17                                   ; $73b1: $11 $17 $ff
	db   $ec                                         ; $73b4: $ec
	rst  $30                                         ; $73b5: $f7
	ld   sp, $ef13                                   ; $73b6: $31 $13 $ef
	rst  $38                                         ; $73b9: $ff
	ld   sp, $5811                                   ; $73ba: $31 $11 $58
	rst  JumpTable                                         ; $73bd: $df
	db   $fd                                         ; $73be: $fd
	add  c                                           ; $73bf: $81
	ld   de, $ff7e                                   ; $73c0: $11 $7e $ff
	ret                                              ; $73c3: $c9


	ld   d, e                                        ; $73c4: $53
	inc  de                                          ; $73c5: $13
	ld   a, l                                        ; $73c6: $7d
	rst  $38                                         ; $73c7: $ff
	ld   a, [$1641]                                  ; $73c8: $fa $41 $16
	adc  $ea                                         ; $73cb: $ce $ea
	ld   d, d                                        ; $73cd: $52
	ld   de, $5f11                                   ; $73ce: $11 $11 $5f
	rst  $38                                         ; $73d1: $ff
	or   c                                           ; $73d2: $b1
	ld   de, $fb9f                                   ; $73d3: $11 $9f $fb
	xor  e                                           ; $73d6: $ab
	ld   d, h                                        ; $73d7: $54
	ld   de, $ff6f                                   ; $73d8: $11 $6f $ff
	jp   nz, Jump_0c0_4611                           ; $73db: $c2 $11 $46

	sbc  e                                           ; $73de: $9b
	rst  $28                                         ; $73df: $ef
	or   [hl]                                        ; $73e0: $b6
	ld   de, $de38                                   ; $73e1: $11 $38 $de
	jp   c, Jump_0c0_4385                            ; $73e4: $da $85 $43

	ld   e, b                                        ; $73e7: $58
	adc  $c9                                         ; $73e8: $ce $c9
	ld   h, [hl]                                     ; $73ea: $66
	ld   a, d                                        ; $73eb: $7a
	xor  d                                           ; $73ec: $aa
	sbc  c                                           ; $73ed: $99
	xor  c                                           ; $73ee: $a9
	ld   d, h                                        ; $73ef: $54
	ld   d, a                                        ; $73f0: $57
	adc  b                                           ; $73f1: $88
	ld   b, c                                        ; $73f2: $41
	rra                                              ; $73f3: $1f
	rst  $38                                         ; $73f4: $ff
	or   c                                           ; $73f5: $b1
	inc  d                                           ; $73f6: $14
	cp   l                                           ; $73f7: $bd
	rst  $10                                         ; $73f8: $d7
	ld   a, e                                        ; $73f9: $7b
	sbc  b                                           ; $73fa: $98
	ld   hl, $ff5c                                   ; $73fb: $21 $5c $ff
	or   h                                           ; $73fe: $b4
	ld   d, h                                        ; $73ff: $54
	ld   [hl], a                                     ; $7400: $77
	ld   a, b                                        ; $7401: $78
	cp   h                                           ; $7402: $bc
	cp   c                                           ; $7403: $b9
	ld   b, h                                        ; $7404: $44
	ld   e, b                                        ; $7405: $58
	xor  e                                           ; $7406: $ab
	xor  c                                           ; $7407: $a9
	sbc  b                                           ; $7408: $98
	ld   [hl], l                                     ; $7409: $75
	ld   d, [hl]                                     ; $740a: $56
	sbc  d                                           ; $740b: $9a
	cp   c                                           ; $740c: $b9
	add  [hl]                                        ; $740d: $86
	ld   h, [hl]                                     ; $740e: $66
	ld   a, b                                        ; $740f: $78
	xor  e                                           ; $7410: $ab
	call c, $3585                                    ; $7411: $dc $85 $35
	adc  d                                           ; $7414: $8a
	xor  c                                           ; $7415: $a9
	add  a                                           ; $7416: $87
	ld   d, e                                        ; $7417: $53
	inc  de                                          ; $7418: $13
	rst  JumpTable                                         ; $7419: $df
	db   $fc                                         ; $741a: $fc
	ld   de, $ab37                                   ; $741b: $11 $37 $ab
	adc  c                                           ; $741e: $89
	cp   c                                           ; $741f: $b9
	add  h                                           ; $7420: $84
	inc  h                                           ; $7421: $24
	adc  h                                           ; $7422: $8c
	call c, Call_0c0_5677                            ; $7423: $dc $77 $56
	ld   h, [hl]                                     ; $7426: $66
	ld   a, c                                        ; $7427: $79
	cp   h                                           ; $7428: $bc
	and  a                                           ; $7429: $a7
	ld   d, h                                        ; $742a: $54
	ld   l, b                                        ; $742b: $68
	sbc  d                                           ; $742c: $9a
	xor  d                                           ; $742d: $aa
	sub  a                                           ; $742e: $97
	ld   h, [hl]                                     ; $742f: $66
	ld   h, a                                        ; $7430: $67
	sbc  e                                           ; $7431: $9b
	xor  c                                           ; $7432: $a9
	add  a                                           ; $7433: $87
	ld   h, [hl]                                     ; $7434: $66
	ld   a, b                                        ; $7435: $78
	sbc  c                                           ; $7436: $99
	sbc  c                                           ; $7437: $99
	add  a                                           ; $7438: $87
	ld   h, a                                        ; $7439: $67
	ld   a, b                                        ; $743a: $78
	xor  e                                           ; $743b: $ab
	cp   d                                           ; $743c: $ba
	ld   [hl], l                                     ; $743d: $75
	ld   d, [hl]                                     ; $743e: $56
	adc  c                                           ; $743f: $89
	sbc  c                                           ; $7440: $99
	halt                                             ; $7441: $76
	ld   d, e                                        ; $7442: $53
	ld   l, h                                        ; $7443: $6c
	call Call_0c0_4684                               ; $7444: $cd $84 $46
	adc  c                                           ; $7447: $89
	add  a                                           ; $7448: $87
	xor  c                                           ; $7449: $a9
	xor  b                                           ; $744a: $a8
	ld   d, l                                        ; $744b: $55
	ld   l, b                                        ; $744c: $68
	cp   e                                           ; $744d: $bb
	adc  b                                           ; $744e: $88
	ld   [hl], a                                     ; $744f: $77
	ld   [hl], a                                     ; $7450: $77
	ld   [hl], a                                     ; $7451: $77
	sbc  c                                           ; $7452: $99
	xor  b                                           ; $7453: $a8
	halt                                             ; $7454: $76
	ld   h, a                                        ; $7455: $67
	adc  c                                           ; $7456: $89
	adc  b                                           ; $7457: $88
	adc  b                                           ; $7458: $88
	add  a                                           ; $7459: $87
	ld   [hl], a                                     ; $745a: $77
	ld   a, c                                        ; $745b: $79
	sbc  c                                           ; $745c: $99
	adc  b                                           ; $745d: $88
	add  a                                           ; $745e: $87
	ld   [hl], a                                     ; $745f: $77
	adc  b                                           ; $7460: $88
	adc  c                                           ; $7461: $89
	adc  c                                           ; $7462: $89
	add  a                                           ; $7463: $87
	ld   [hl], a                                     ; $7464: $77
	adc  c                                           ; $7465: $89
	sbc  c                                           ; $7466: $99
	sbc  b                                           ; $7467: $98
	add  a                                           ; $7468: $87
	ld   [hl], a                                     ; $7469: $77
	adc  b                                           ; $746a: $88
	sbc  c                                           ; $746b: $99
	sbc  b                                           ; $746c: $98
	adc  b                                           ; $746d: $88
	ld   a, b                                        ; $746e: $78
	adc  b                                           ; $746f: $88
	sbc  c                                           ; $7470: $99
	sbc  c                                           ; $7471: $99
	adc  b                                           ; $7472: $88
	ld   [hl], a                                     ; $7473: $77
	ld   a, b                                        ; $7474: $78
	adc  b                                           ; $7475: $88
	add  a                                           ; $7476: $87
	halt                                             ; $7477: $76
	ld   a, c                                        ; $7478: $79
	xor  d                                           ; $7479: $aa
	add  [hl]                                        ; $747a: $86
	ld   h, a                                        ; $747b: $67
	adc  c                                           ; $747c: $89
	sbc  b                                           ; $747d: $98
	sbc  c                                           ; $747e: $99
	sbc  c                                           ; $747f: $99
	ld   [hl], a                                     ; $7480: $77
	ld   a, b                                        ; $7481: $78
	sbc  d                                           ; $7482: $9a
	adc  b                                           ; $7483: $88
	ld   [hl], a                                     ; $7484: $77
	adc  b                                           ; $7485: $88
	adc  b                                           ; $7486: $88
	adc  c                                           ; $7487: $89
	sbc  b                                           ; $7488: $98
	add  a                                           ; $7489: $87
	ld   [hl], a                                     ; $748a: $77
	adc  b                                           ; $748b: $88
	sbc  c                                           ; $748c: $99
	adc  b                                           ; $748d: $88
	adc  b                                           ; $748e: $88
	add  a                                           ; $748f: $87
	ld   a, b                                        ; $7490: $78
	adc  c                                           ; $7491: $89
	sbc  b                                           ; $7492: $98
	adc  b                                           ; $7493: $88
	adc  b                                           ; $7494: $88
	adc  b                                           ; $7495: $88
	adc  b                                           ; $7496: $88
	sbc  c                                           ; $7497: $99
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
	adc  b                                           ; $74ab: $88
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

Call_0c0_74dc:
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
	adc  b                                           ; $75ca: $88
	adc  b                                           ; $75cb: $88
	adc  b                                           ; $75cc: $88
	adc  b                                           ; $75cd: $88
	adc  b                                           ; $75ce: $88
	adc  b                                           ; $75cf: $88
	adc  b                                           ; $75d0: $88
	adc  b                                           ; $75d1: $88
	adc  b                                           ; $75d2: $88
	adc  b                                           ; $75d3: $88
	adc  b                                           ; $75d4: $88
	adc  b                                           ; $75d5: $88
	adc  b                                           ; $75d6: $88
	adc  b                                           ; $75d7: $88
	adc  b                                           ; $75d8: $88
	adc  b                                           ; $75d9: $88
	adc  b                                           ; $75da: $88
	adc  b                                           ; $75db: $88
	adc  b                                           ; $75dc: $88
	adc  b                                           ; $75dd: $88
	adc  b                                           ; $75de: $88
	adc  b                                           ; $75df: $88
	adc  b                                           ; $75e0: $88
	adc  b                                           ; $75e1: $88
	adc  b                                           ; $75e2: $88
	adc  b                                           ; $75e3: $88
	adc  b                                           ; $75e4: $88
	adc  b                                           ; $75e5: $88
	adc  b                                           ; $75e6: $88
	adc  b                                           ; $75e7: $88
	adc  b                                           ; $75e8: $88
	adc  b                                           ; $75e9: $88
	adc  b                                           ; $75ea: $88
	adc  b                                           ; $75eb: $88
	adc  b                                           ; $75ec: $88
	adc  b                                           ; $75ed: $88
	adc  b                                           ; $75ee: $88
	adc  b                                           ; $75ef: $88
	adc  b                                           ; $75f0: $88
	adc  b                                           ; $75f1: $88
	adc  b                                           ; $75f2: $88
	adc  b                                           ; $75f3: $88
	adc  b                                           ; $75f4: $88
	adc  b                                           ; $75f5: $88
	adc  b                                           ; $75f6: $88
	adc  b                                           ; $75f7: $88
	adc  b                                           ; $75f8: $88
	adc  b                                           ; $75f9: $88
	adc  b                                           ; $75fa: $88
	adc  b                                           ; $75fb: $88
	adc  b                                           ; $75fc: $88
	adc  b                                           ; $75fd: $88
	adc  b                                           ; $75fe: $88
	adc  b                                           ; $75ff: $88
	adc  b                                           ; $7600: $88
	adc  b                                           ; $7601: $88
	adc  b                                           ; $7602: $88
	adc  b                                           ; $7603: $88
	adc  b                                           ; $7604: $88
	adc  b                                           ; $7605: $88
	adc  b                                           ; $7606: $88
	adc  b                                           ; $7607: $88
	adc  b                                           ; $7608: $88
	adc  b                                           ; $7609: $88
	adc  b                                           ; $760a: $88
	adc  b                                           ; $760b: $88
	adc  b                                           ; $760c: $88
	adc  b                                           ; $760d: $88
	adc  b                                           ; $760e: $88
	adc  b                                           ; $760f: $88
	adc  b                                           ; $7610: $88
	adc  b                                           ; $7611: $88
	adc  b                                           ; $7612: $88
	adc  b                                           ; $7613: $88
	adc  b                                           ; $7614: $88
	adc  b                                           ; $7615: $88
	adc  b                                           ; $7616: $88
	adc  b                                           ; $7617: $88
	adc  b                                           ; $7618: $88
	adc  b                                           ; $7619: $88
	adc  b                                           ; $761a: $88
	adc  b                                           ; $761b: $88
	adc  b                                           ; $761c: $88
	adc  b                                           ; $761d: $88
	adc  b                                           ; $761e: $88
	adc  b                                           ; $761f: $88
	adc  b                                           ; $7620: $88
	adc  b                                           ; $7621: $88
	adc  b                                           ; $7622: $88
	adc  b                                           ; $7623: $88
	adc  b                                           ; $7624: $88
	adc  b                                           ; $7625: $88
	adc  b                                           ; $7626: $88
	adc  b                                           ; $7627: $88
	adc  b                                           ; $7628: $88
	adc  b                                           ; $7629: $88
	adc  b                                           ; $762a: $88
	adc  b                                           ; $762b: $88
	adc  b                                           ; $762c: $88
	adc  b                                           ; $762d: $88
	adc  b                                           ; $762e: $88
	adc  b                                           ; $762f: $88
	adc  b                                           ; $7630: $88
	adc  b                                           ; $7631: $88
	adc  b                                           ; $7632: $88
	adc  b                                           ; $7633: $88
	adc  b                                           ; $7634: $88
	adc  b                                           ; $7635: $88
	adc  b                                           ; $7636: $88
	adc  b                                           ; $7637: $88
	adc  b                                           ; $7638: $88
	adc  b                                           ; $7639: $88
	adc  b                                           ; $763a: $88
	adc  b                                           ; $763b: $88
	adc  b                                           ; $763c: $88
	adc  b                                           ; $763d: $88
	adc  b                                           ; $763e: $88
	adc  b                                           ; $763f: $88
	adc  b                                           ; $7640: $88
	adc  b                                           ; $7641: $88
	adc  b                                           ; $7642: $88
	adc  b                                           ; $7643: $88
	adc  b                                           ; $7644: $88
	adc  b                                           ; $7645: $88
	adc  b                                           ; $7646: $88
	adc  b                                           ; $7647: $88
	adc  b                                           ; $7648: $88
	adc  b                                           ; $7649: $88
	adc  b                                           ; $764a: $88
	adc  b                                           ; $764b: $88
	adc  b                                           ; $764c: $88
	adc  b                                           ; $764d: $88
	adc  b                                           ; $764e: $88
	adc  b                                           ; $764f: $88
	adc  b                                           ; $7650: $88
	adc  b                                           ; $7651: $88
	adc  b                                           ; $7652: $88
	adc  b                                           ; $7653: $88
	adc  b                                           ; $7654: $88
	adc  b                                           ; $7655: $88
	adc  b                                           ; $7656: $88
	adc  b                                           ; $7657: $88
	adc  b                                           ; $7658: $88
	adc  b                                           ; $7659: $88
	adc  b                                           ; $765a: $88
	adc  b                                           ; $765b: $88
	adc  b                                           ; $765c: $88
	adc  b                                           ; $765d: $88
	adc  b                                           ; $765e: $88
	adc  b                                           ; $765f: $88
	adc  b                                           ; $7660: $88
	adc  b                                           ; $7661: $88
	adc  b                                           ; $7662: $88
	adc  b                                           ; $7663: $88
	adc  b                                           ; $7664: $88
	adc  b                                           ; $7665: $88
	adc  b                                           ; $7666: $88
	adc  b                                           ; $7667: $88
	adc  b                                           ; $7668: $88
	adc  b                                           ; $7669: $88
	adc  b                                           ; $766a: $88
	adc  b                                           ; $766b: $88
	adc  b                                           ; $766c: $88
	adc  b                                           ; $766d: $88
	adc  b                                           ; $766e: $88
	adc  b                                           ; $766f: $88
	adc  b                                           ; $7670: $88
	adc  b                                           ; $7671: $88
	adc  b                                           ; $7672: $88
	adc  b                                           ; $7673: $88
	adc  b                                           ; $7674: $88
	adc  b                                           ; $7675: $88
	adc  b                                           ; $7676: $88
	adc  b                                           ; $7677: $88
	adc  b                                           ; $7678: $88
	adc  b                                           ; $7679: $88
	adc  b                                           ; $767a: $88
	adc  b                                           ; $767b: $88
	adc  b                                           ; $767c: $88
	adc  b                                           ; $767d: $88
	adc  b                                           ; $767e: $88
	adc  b                                           ; $767f: $88
	adc  b                                           ; $7680: $88
	adc  b                                           ; $7681: $88
	adc  b                                           ; $7682: $88
	adc  b                                           ; $7683: $88
	adc  b                                           ; $7684: $88
	adc  b                                           ; $7685: $88
	adc  b                                           ; $7686: $88
	adc  b                                           ; $7687: $88
	adc  b                                           ; $7688: $88
	adc  b                                           ; $7689: $88
	adc  b                                           ; $768a: $88
	adc  b                                           ; $768b: $88
	adc  b                                           ; $768c: $88
	adc  b                                           ; $768d: $88
	adc  b                                           ; $768e: $88
	adc  b                                           ; $768f: $88
	adc  b                                           ; $7690: $88
	adc  b                                           ; $7691: $88
	adc  b                                           ; $7692: $88
	adc  b                                           ; $7693: $88
	adc  b                                           ; $7694: $88
	adc  b                                           ; $7695: $88
	adc  b                                           ; $7696: $88
	adc  b                                           ; $7697: $88

Jump_0c0_7698:
	adc  b                                           ; $7698: $88

Call_0c0_7699:
	adc  b                                           ; $7699: $88
	adc  b                                           ; $769a: $88
	adc  b                                           ; $769b: $88
	adc  b                                           ; $769c: $88
	adc  b                                           ; $769d: $88
	adc  b                                           ; $769e: $88
	adc  b                                           ; $769f: $88
	adc  b                                           ; $76a0: $88
	adc  b                                           ; $76a1: $88
	adc  b                                           ; $76a2: $88
	adc  b                                           ; $76a3: $88
	adc  b                                           ; $76a4: $88
	adc  b                                           ; $76a5: $88
	adc  b                                           ; $76a6: $88
	adc  b                                           ; $76a7: $88
	adc  b                                           ; $76a8: $88
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  b                                           ; $76ab: $88
	adc  b                                           ; $76ac: $88
	adc  b                                           ; $76ad: $88
	adc  b                                           ; $76ae: $88
	adc  b                                           ; $76af: $88
	adc  b                                           ; $76b0: $88
	adc  b                                           ; $76b1: $88
	adc  b                                           ; $76b2: $88
	adc  b                                           ; $76b3: $88
	adc  b                                           ; $76b4: $88
	adc  b                                           ; $76b5: $88
	adc  b                                           ; $76b6: $88
	adc  b                                           ; $76b7: $88
	adc  b                                           ; $76b8: $88
	adc  b                                           ; $76b9: $88
	adc  b                                           ; $76ba: $88
	adc  b                                           ; $76bb: $88
	adc  b                                           ; $76bc: $88
	adc  b                                           ; $76bd: $88
	adc  b                                           ; $76be: $88
	adc  b                                           ; $76bf: $88
	adc  b                                           ; $76c0: $88
	adc  b                                           ; $76c1: $88
	adc  b                                           ; $76c2: $88
	adc  b                                           ; $76c3: $88
	adc  b                                           ; $76c4: $88
	adc  b                                           ; $76c5: $88
	adc  b                                           ; $76c6: $88
	adc  b                                           ; $76c7: $88
	adc  b                                           ; $76c8: $88
	adc  b                                           ; $76c9: $88
	adc  b                                           ; $76ca: $88
	adc  b                                           ; $76cb: $88
	adc  b                                           ; $76cc: $88
	adc  b                                           ; $76cd: $88
	adc  b                                           ; $76ce: $88
	adc  b                                           ; $76cf: $88
	adc  b                                           ; $76d0: $88
	adc  b                                           ; $76d1: $88
	adc  b                                           ; $76d2: $88
	adc  b                                           ; $76d3: $88
	adc  b                                           ; $76d4: $88
	adc  b                                           ; $76d5: $88
	adc  b                                           ; $76d6: $88
	adc  b                                           ; $76d7: $88
	adc  b                                           ; $76d8: $88
	adc  b                                           ; $76d9: $88
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
	adc  b                                           ; $76f5: $88
	adc  b                                           ; $76f6: $88
	adc  b                                           ; $76f7: $88
	adc  b                                           ; $76f8: $88
	adc  b                                           ; $76f9: $88
	adc  b                                           ; $76fa: $88
	adc  b                                           ; $76fb: $88
	adc  b                                           ; $76fc: $88
	adc  b                                           ; $76fd: $88
	adc  b                                           ; $76fe: $88
	adc  b                                           ; $76ff: $88
	adc  b                                           ; $7700: $88
	adc  b                                           ; $7701: $88
	adc  b                                           ; $7702: $88
	adc  b                                           ; $7703: $88
	adc  b                                           ; $7704: $88
	adc  b                                           ; $7705: $88
	adc  b                                           ; $7706: $88
	adc  b                                           ; $7707: $88
	adc  b                                           ; $7708: $88
	adc  b                                           ; $7709: $88
	adc  b                                           ; $770a: $88
	adc  b                                           ; $770b: $88
	adc  b                                           ; $770c: $88
	adc  b                                           ; $770d: $88
	adc  b                                           ; $770e: $88
	adc  b                                           ; $770f: $88
	adc  b                                           ; $7710: $88
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
	adc  b                                           ; $7722: $88
	adc  b                                           ; $7723: $88
	adc  b                                           ; $7724: $88
	adc  b                                           ; $7725: $88
	adc  b                                           ; $7726: $88
	adc  b                                           ; $7727: $88
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
	adc  b                                           ; $7772: $88
	adc  b                                           ; $7773: $88
	adc  b                                           ; $7774: $88
	adc  b                                           ; $7775: $88
	adc  b                                           ; $7776: $88
	adc  b                                           ; $7777: $88
	adc  b                                           ; $7778: $88
	adc  b                                           ; $7779: $88
	adc  b                                           ; $777a: $88
	adc  b                                           ; $777b: $88
	adc  b                                           ; $777c: $88
	adc  b                                           ; $777d: $88
	adc  b                                           ; $777e: $88
	adc  b                                           ; $777f: $88
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

Call_0c0_79a9:
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
	adc  b                                           ; $79e7: $88
	adc  b                                           ; $79e8: $88
	adc  b                                           ; $79e9: $88
	adc  b                                           ; $79ea: $88
	adc  b                                           ; $79eb: $88
	adc  b                                           ; $79ec: $88
	adc  b                                           ; $79ed: $88
	adc  b                                           ; $79ee: $88
	adc  b                                           ; $79ef: $88
	adc  b                                           ; $79f0: $88
	adc  b                                           ; $79f1: $88
	adc  b                                           ; $79f2: $88
	adc  b                                           ; $79f3: $88
	adc  b                                           ; $79f4: $88
	adc  b                                           ; $79f5: $88
	adc  b                                           ; $79f6: $88
	adc  b                                           ; $79f7: $88
	adc  b                                           ; $79f8: $88
	adc  b                                           ; $79f9: $88
	adc  b                                           ; $79fa: $88
	adc  b                                           ; $79fb: $88
	adc  b                                           ; $79fc: $88
	adc  b                                           ; $79fd: $88
	adc  b                                           ; $79fe: $88
	adc  b                                           ; $79ff: $88
	adc  b                                           ; $7a00: $88
	adc  b                                           ; $7a01: $88
	adc  b                                           ; $7a02: $88
	adc  b                                           ; $7a03: $88
	adc  b                                           ; $7a04: $88
	adc  b                                           ; $7a05: $88
	adc  b                                           ; $7a06: $88
	adc  b                                           ; $7a07: $88
	adc  b                                           ; $7a08: $88
	adc  b                                           ; $7a09: $88
	adc  b                                           ; $7a0a: $88
	adc  b                                           ; $7a0b: $88
	adc  b                                           ; $7a0c: $88
	adc  b                                           ; $7a0d: $88
	adc  b                                           ; $7a0e: $88
	adc  b                                           ; $7a0f: $88
	adc  b                                           ; $7a10: $88
	adc  b                                           ; $7a11: $88
	adc  b                                           ; $7a12: $88
	adc  b                                           ; $7a13: $88
	adc  b                                           ; $7a14: $88
	adc  b                                           ; $7a15: $88
	adc  b                                           ; $7a16: $88
	adc  b                                           ; $7a17: $88
	adc  b                                           ; $7a18: $88
	adc  b                                           ; $7a19: $88
	adc  b                                           ; $7a1a: $88
	adc  b                                           ; $7a1b: $88
	adc  b                                           ; $7a1c: $88
	adc  b                                           ; $7a1d: $88
	adc  b                                           ; $7a1e: $88
	adc  b                                           ; $7a1f: $88
	adc  b                                           ; $7a20: $88
	adc  b                                           ; $7a21: $88
	adc  b                                           ; $7a22: $88
	adc  b                                           ; $7a23: $88
	adc  b                                           ; $7a24: $88
	adc  b                                           ; $7a25: $88
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	adc  b                                           ; $7a32: $88
	adc  b                                           ; $7a33: $88
	adc  b                                           ; $7a34: $88
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	adc  b                                           ; $7a38: $88
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	adc  b                                           ; $7a42: $88
	adc  b                                           ; $7a43: $88
	adc  b                                           ; $7a44: $88
	adc  b                                           ; $7a45: $88
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	adc  b                                           ; $7a54: $88
	adc  b                                           ; $7a55: $88
	adc  b                                           ; $7a56: $88
	adc  b                                           ; $7a57: $88
	adc  b                                           ; $7a58: $88
	adc  b                                           ; $7a59: $88
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	adc  b                                           ; $7a5f: $88
	adc  b                                           ; $7a60: $88
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	adc  b                                           ; $7a64: $88
	adc  b                                           ; $7a65: $88
	adc  b                                           ; $7a66: $88
	adc  b                                           ; $7a67: $88
	adc  b                                           ; $7a68: $88
	adc  b                                           ; $7a69: $88
	adc  b                                           ; $7a6a: $88
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	adc  b                                           ; $7a6d: $88
	adc  b                                           ; $7a6e: $88
	adc  b                                           ; $7a6f: $88
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	adc  b                                           ; $7a74: $88
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	adc  b                                           ; $7a77: $88
	adc  b                                           ; $7a78: $88
	adc  b                                           ; $7a79: $88
	adc  b                                           ; $7a7a: $88
	adc  b                                           ; $7a7b: $88
	adc  b                                           ; $7a7c: $88
	adc  b                                           ; $7a7d: $88
	adc  b                                           ; $7a7e: $88
	adc  b                                           ; $7a7f: $88
	adc  b                                           ; $7a80: $88
	adc  b                                           ; $7a81: $88
	adc  b                                           ; $7a82: $88
	adc  b                                           ; $7a83: $88
	adc  b                                           ; $7a84: $88
	adc  b                                           ; $7a85: $88
	adc  b                                           ; $7a86: $88
	adc  b                                           ; $7a87: $88
	adc  b                                           ; $7a88: $88
	adc  b                                           ; $7a89: $88
	adc  b                                           ; $7a8a: $88
	adc  b                                           ; $7a8b: $88
	adc  b                                           ; $7a8c: $88
	adc  b                                           ; $7a8d: $88
	adc  b                                           ; $7a8e: $88
	adc  b                                           ; $7a8f: $88
	adc  b                                           ; $7a90: $88
	adc  b                                           ; $7a91: $88
	adc  b                                           ; $7a92: $88
	adc  b                                           ; $7a93: $88
	adc  b                                           ; $7a94: $88
	adc  b                                           ; $7a95: $88
	adc  b                                           ; $7a96: $88
	adc  b                                           ; $7a97: $88
	adc  b                                           ; $7a98: $88
	adc  b                                           ; $7a99: $88
	adc  b                                           ; $7a9a: $88
	adc  b                                           ; $7a9b: $88
	adc  b                                           ; $7a9c: $88
	adc  b                                           ; $7a9d: $88
	adc  b                                           ; $7a9e: $88
	adc  b                                           ; $7a9f: $88
	adc  b                                           ; $7aa0: $88
	adc  b                                           ; $7aa1: $88
	adc  b                                           ; $7aa2: $88
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	adc  b                                           ; $7aa6: $88
	adc  b                                           ; $7aa7: $88
	adc  b                                           ; $7aa8: $88
	adc  b                                           ; $7aa9: $88
	adc  b                                           ; $7aaa: $88
	adc  b                                           ; $7aab: $88
	adc  b                                           ; $7aac: $88
	adc  b                                           ; $7aad: $88
	adc  b                                           ; $7aae: $88
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	adc  b                                           ; $7ab1: $88
	adc  b                                           ; $7ab2: $88
	adc  b                                           ; $7ab3: $88
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	adc  b                                           ; $7ab7: $88
	adc  b                                           ; $7ab8: $88
	adc  b                                           ; $7ab9: $88
	adc  b                                           ; $7aba: $88
	adc  b                                           ; $7abb: $88
	adc  b                                           ; $7abc: $88
	adc  b                                           ; $7abd: $88
	adc  b                                           ; $7abe: $88
	adc  b                                           ; $7abf: $88
	adc  b                                           ; $7ac0: $88
	adc  b                                           ; $7ac1: $88
	adc  b                                           ; $7ac2: $88
	adc  b                                           ; $7ac3: $88
	adc  b                                           ; $7ac4: $88
	adc  b                                           ; $7ac5: $88
	adc  b                                           ; $7ac6: $88
	adc  b                                           ; $7ac7: $88
	adc  b                                           ; $7ac8: $88
	adc  b                                           ; $7ac9: $88
	adc  b                                           ; $7aca: $88
	adc  b                                           ; $7acb: $88
	adc  b                                           ; $7acc: $88
	adc  b                                           ; $7acd: $88
	adc  b                                           ; $7ace: $88
	adc  b                                           ; $7acf: $88
	adc  b                                           ; $7ad0: $88
	adc  b                                           ; $7ad1: $88
	adc  b                                           ; $7ad2: $88
	adc  b                                           ; $7ad3: $88
	adc  b                                           ; $7ad4: $88
	adc  b                                           ; $7ad5: $88
	adc  b                                           ; $7ad6: $88
	adc  b                                           ; $7ad7: $88
	adc  b                                           ; $7ad8: $88
	adc  b                                           ; $7ad9: $88
	adc  b                                           ; $7ada: $88
	adc  b                                           ; $7adb: $88
	adc  b                                           ; $7adc: $88
	adc  b                                           ; $7add: $88
	adc  b                                           ; $7ade: $88
	adc  b                                           ; $7adf: $88
	adc  b                                           ; $7ae0: $88
	adc  b                                           ; $7ae1: $88
	adc  b                                           ; $7ae2: $88
	adc  b                                           ; $7ae3: $88
	adc  b                                           ; $7ae4: $88
	adc  b                                           ; $7ae5: $88
	adc  b                                           ; $7ae6: $88
	adc  b                                           ; $7ae7: $88
	adc  b                                           ; $7ae8: $88
	adc  b                                           ; $7ae9: $88
	adc  b                                           ; $7aea: $88
	adc  b                                           ; $7aeb: $88
	adc  b                                           ; $7aec: $88
	adc  b                                           ; $7aed: $88
	adc  b                                           ; $7aee: $88
	adc  b                                           ; $7aef: $88
	adc  b                                           ; $7af0: $88
	adc  b                                           ; $7af1: $88
	adc  b                                           ; $7af2: $88
	adc  b                                           ; $7af3: $88
	adc  b                                           ; $7af4: $88
	adc  b                                           ; $7af5: $88
	adc  b                                           ; $7af6: $88
	adc  b                                           ; $7af7: $88
	adc  b                                           ; $7af8: $88
	adc  b                                           ; $7af9: $88
	adc  b                                           ; $7afa: $88
	adc  b                                           ; $7afb: $88
	adc  b                                           ; $7afc: $88
	adc  b                                           ; $7afd: $88
	adc  b                                           ; $7afe: $88
	adc  b                                           ; $7aff: $88
	adc  b                                           ; $7b00: $88
	adc  b                                           ; $7b01: $88
	adc  b                                           ; $7b02: $88
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	adc  b                                           ; $7b05: $88
	adc  b                                           ; $7b06: $88
	adc  b                                           ; $7b07: $88
	adc  b                                           ; $7b08: $88
	adc  b                                           ; $7b09: $88
	adc  b                                           ; $7b0a: $88
	adc  b                                           ; $7b0b: $88
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	adc  b                                           ; $7b0e: $88
	adc  b                                           ; $7b0f: $88
	adc  b                                           ; $7b10: $88
	adc  b                                           ; $7b11: $88
	adc  b                                           ; $7b12: $88
	adc  b                                           ; $7b13: $88
	adc  b                                           ; $7b14: $88
	adc  b                                           ; $7b15: $88
	adc  b                                           ; $7b16: $88
	adc  b                                           ; $7b17: $88
	adc  b                                           ; $7b18: $88
	adc  b                                           ; $7b19: $88
	adc  b                                           ; $7b1a: $88
	adc  b                                           ; $7b1b: $88
	adc  b                                           ; $7b1c: $88
	adc  b                                           ; $7b1d: $88
	adc  b                                           ; $7b1e: $88
	adc  b                                           ; $7b1f: $88
	adc  b                                           ; $7b20: $88
	adc  b                                           ; $7b21: $88
	adc  b                                           ; $7b22: $88
	adc  b                                           ; $7b23: $88
	adc  b                                           ; $7b24: $88
	adc  b                                           ; $7b25: $88
	adc  b                                           ; $7b26: $88
	adc  b                                           ; $7b27: $88
	adc  b                                           ; $7b28: $88
	adc  b                                           ; $7b29: $88
	adc  b                                           ; $7b2a: $88
	adc  b                                           ; $7b2b: $88
	adc  b                                           ; $7b2c: $88
	adc  b                                           ; $7b2d: $88
	adc  b                                           ; $7b2e: $88
	adc  b                                           ; $7b2f: $88
	adc  b                                           ; $7b30: $88
	adc  b                                           ; $7b31: $88
	adc  b                                           ; $7b32: $88
	adc  b                                           ; $7b33: $88
	adc  b                                           ; $7b34: $88
	adc  b                                           ; $7b35: $88
	adc  b                                           ; $7b36: $88
	adc  b                                           ; $7b37: $88
	adc  b                                           ; $7b38: $88
	adc  b                                           ; $7b39: $88
	adc  b                                           ; $7b3a: $88
	adc  b                                           ; $7b3b: $88
	adc  b                                           ; $7b3c: $88
	adc  b                                           ; $7b3d: $88
	adc  b                                           ; $7b3e: $88
	adc  b                                           ; $7b3f: $88
	adc  b                                           ; $7b40: $88
	adc  b                                           ; $7b41: $88
	adc  b                                           ; $7b42: $88
	adc  b                                           ; $7b43: $88
	adc  b                                           ; $7b44: $88
	adc  b                                           ; $7b45: $88
	adc  b                                           ; $7b46: $88
	adc  b                                           ; $7b47: $88
	adc  b                                           ; $7b48: $88
	adc  b                                           ; $7b49: $88
	adc  b                                           ; $7b4a: $88
	adc  b                                           ; $7b4b: $88
	adc  b                                           ; $7b4c: $88
	adc  b                                           ; $7b4d: $88
	adc  b                                           ; $7b4e: $88
	adc  b                                           ; $7b4f: $88
	adc  b                                           ; $7b50: $88
	adc  b                                           ; $7b51: $88
	adc  b                                           ; $7b52: $88
	adc  b                                           ; $7b53: $88
	adc  b                                           ; $7b54: $88
	adc  b                                           ; $7b55: $88
	adc  b                                           ; $7b56: $88
	adc  b                                           ; $7b57: $88
	adc  b                                           ; $7b58: $88
	adc  b                                           ; $7b59: $88
	adc  b                                           ; $7b5a: $88
	adc  b                                           ; $7b5b: $88
	adc  b                                           ; $7b5c: $88
	adc  b                                           ; $7b5d: $88
	adc  b                                           ; $7b5e: $88
	adc  b                                           ; $7b5f: $88
	adc  b                                           ; $7b60: $88
	adc  b                                           ; $7b61: $88
	adc  b                                           ; $7b62: $88
	adc  b                                           ; $7b63: $88
	adc  b                                           ; $7b64: $88
	adc  b                                           ; $7b65: $88
	adc  b                                           ; $7b66: $88
	adc  b                                           ; $7b67: $88
	adc  b                                           ; $7b68: $88
	adc  b                                           ; $7b69: $88
	adc  b                                           ; $7b6a: $88
	adc  b                                           ; $7b6b: $88
	adc  b                                           ; $7b6c: $88
	adc  b                                           ; $7b6d: $88
	adc  b                                           ; $7b6e: $88
	adc  b                                           ; $7b6f: $88
	adc  b                                           ; $7b70: $88
	adc  b                                           ; $7b71: $88
	adc  b                                           ; $7b72: $88
	adc  b                                           ; $7b73: $88
	adc  b                                           ; $7b74: $88
	adc  b                                           ; $7b75: $88
	adc  b                                           ; $7b76: $88
	adc  b                                           ; $7b77: $88
	adc  b                                           ; $7b78: $88
	adc  b                                           ; $7b79: $88
	adc  b                                           ; $7b7a: $88
	adc  b                                           ; $7b7b: $88
	adc  b                                           ; $7b7c: $88
	adc  b                                           ; $7b7d: $88
	adc  b                                           ; $7b7e: $88
	adc  b                                           ; $7b7f: $88
	adc  b                                           ; $7b80: $88
	adc  b                                           ; $7b81: $88
	adc  b                                           ; $7b82: $88
	adc  b                                           ; $7b83: $88
	adc  b                                           ; $7b84: $88
	adc  b                                           ; $7b85: $88
	adc  b                                           ; $7b86: $88
	adc  b                                           ; $7b87: $88
	adc  b                                           ; $7b88: $88
	adc  b                                           ; $7b89: $88
	adc  b                                           ; $7b8a: $88
	adc  b                                           ; $7b8b: $88
	adc  b                                           ; $7b8c: $88
	adc  b                                           ; $7b8d: $88
	adc  b                                           ; $7b8e: $88
	adc  b                                           ; $7b8f: $88
	adc  b                                           ; $7b90: $88
	adc  b                                           ; $7b91: $88
	adc  b                                           ; $7b92: $88
	adc  b                                           ; $7b93: $88
	adc  b                                           ; $7b94: $88
	adc  b                                           ; $7b95: $88
	adc  b                                           ; $7b96: $88
	adc  b                                           ; $7b97: $88
	adc  b                                           ; $7b98: $88
	adc  b                                           ; $7b99: $88
	adc  b                                           ; $7b9a: $88
	adc  b                                           ; $7b9b: $88
	adc  b                                           ; $7b9c: $88
	adc  b                                           ; $7b9d: $88
	adc  b                                           ; $7b9e: $88
	adc  b                                           ; $7b9f: $88
	adc  b                                           ; $7ba0: $88
	adc  b                                           ; $7ba1: $88
	adc  b                                           ; $7ba2: $88
	adc  b                                           ; $7ba3: $88
	adc  b                                           ; $7ba4: $88
	adc  b                                           ; $7ba5: $88
	adc  b                                           ; $7ba6: $88
	adc  b                                           ; $7ba7: $88
	adc  b                                           ; $7ba8: $88
	adc  b                                           ; $7ba9: $88
	adc  b                                           ; $7baa: $88
	adc  b                                           ; $7bab: $88
	adc  b                                           ; $7bac: $88
	adc  b                                           ; $7bad: $88
	adc  b                                           ; $7bae: $88
	adc  b                                           ; $7baf: $88
	adc  b                                           ; $7bb0: $88
	adc  b                                           ; $7bb1: $88
	adc  b                                           ; $7bb2: $88
	adc  b                                           ; $7bb3: $88
	adc  b                                           ; $7bb4: $88
	adc  b                                           ; $7bb5: $88
	adc  b                                           ; $7bb6: $88
	adc  b                                           ; $7bb7: $88
	adc  b                                           ; $7bb8: $88
	adc  b                                           ; $7bb9: $88
	adc  b                                           ; $7bba: $88
	adc  b                                           ; $7bbb: $88
	adc  b                                           ; $7bbc: $88
	adc  b                                           ; $7bbd: $88
	adc  b                                           ; $7bbe: $88
	adc  b                                           ; $7bbf: $88
	adc  b                                           ; $7bc0: $88
	adc  b                                           ; $7bc1: $88
	adc  b                                           ; $7bc2: $88
	adc  b                                           ; $7bc3: $88
	adc  b                                           ; $7bc4: $88
	adc  b                                           ; $7bc5: $88
	adc  b                                           ; $7bc6: $88
	adc  b                                           ; $7bc7: $88
	adc  b                                           ; $7bc8: $88
	adc  b                                           ; $7bc9: $88
	adc  b                                           ; $7bca: $88
	adc  b                                           ; $7bcb: $88
	adc  b                                           ; $7bcc: $88
	adc  b                                           ; $7bcd: $88
	adc  b                                           ; $7bce: $88
	adc  b                                           ; $7bcf: $88
	adc  b                                           ; $7bd0: $88
	adc  b                                           ; $7bd1: $88
	adc  b                                           ; $7bd2: $88
	adc  b                                           ; $7bd3: $88
	adc  b                                           ; $7bd4: $88
	adc  b                                           ; $7bd5: $88
	adc  b                                           ; $7bd6: $88
	adc  b                                           ; $7bd7: $88
	adc  b                                           ; $7bd8: $88
	adc  b                                           ; $7bd9: $88
	adc  b                                           ; $7bda: $88
	adc  b                                           ; $7bdb: $88
	adc  b                                           ; $7bdc: $88
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	adc  b                                           ; $7bdf: $88
	adc  b                                           ; $7be0: $88
	adc  b                                           ; $7be1: $88
	adc  b                                           ; $7be2: $88
	adc  b                                           ; $7be3: $88
	adc  b                                           ; $7be4: $88
	adc  b                                           ; $7be5: $88
	adc  b                                           ; $7be6: $88
	adc  b                                           ; $7be7: $88
	adc  b                                           ; $7be8: $88
	adc  b                                           ; $7be9: $88
	adc  b                                           ; $7bea: $88
	adc  b                                           ; $7beb: $88
	adc  b                                           ; $7bec: $88
	adc  b                                           ; $7bed: $88
	adc  b                                           ; $7bee: $88
	adc  b                                           ; $7bef: $88
	adc  b                                           ; $7bf0: $88
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	adc  b                                           ; $7bf5: $88
	adc  b                                           ; $7bf6: $88
	adc  b                                           ; $7bf7: $88
	adc  b                                           ; $7bf8: $88
	adc  b                                           ; $7bf9: $88
	adc  b                                           ; $7bfa: $88
	adc  b                                           ; $7bfb: $88
	adc  b                                           ; $7bfc: $88
	adc  b                                           ; $7bfd: $88
	adc  b                                           ; $7bfe: $88
	adc  b                                           ; $7bff: $88
	adc  b                                           ; $7c00: $88
	adc  b                                           ; $7c01: $88
	adc  b                                           ; $7c02: $88
	adc  b                                           ; $7c03: $88
	adc  b                                           ; $7c04: $88
	adc  b                                           ; $7c05: $88
	adc  b                                           ; $7c06: $88
	adc  b                                           ; $7c07: $88
	adc  b                                           ; $7c08: $88
	adc  b                                           ; $7c09: $88
	adc  b                                           ; $7c0a: $88
	adc  b                                           ; $7c0b: $88
	adc  b                                           ; $7c0c: $88
	adc  b                                           ; $7c0d: $88
	adc  b                                           ; $7c0e: $88
	adc  b                                           ; $7c0f: $88
	adc  b                                           ; $7c10: $88
	adc  b                                           ; $7c11: $88
	adc  b                                           ; $7c12: $88
	adc  b                                           ; $7c13: $88
	adc  b                                           ; $7c14: $88
	adc  b                                           ; $7c15: $88
	adc  b                                           ; $7c16: $88
	adc  b                                           ; $7c17: $88
	adc  b                                           ; $7c18: $88
	adc  b                                           ; $7c19: $88
	adc  b                                           ; $7c1a: $88
	adc  b                                           ; $7c1b: $88
	adc  b                                           ; $7c1c: $88
	adc  b                                           ; $7c1d: $88
	adc  b                                           ; $7c1e: $88
	adc  b                                           ; $7c1f: $88
	adc  b                                           ; $7c20: $88
	adc  b                                           ; $7c21: $88
	adc  b                                           ; $7c22: $88
	adc  b                                           ; $7c23: $88
	adc  b                                           ; $7c24: $88
	adc  b                                           ; $7c25: $88
	adc  b                                           ; $7c26: $88
	adc  b                                           ; $7c27: $88
	adc  b                                           ; $7c28: $88
	adc  b                                           ; $7c29: $88
	adc  b                                           ; $7c2a: $88
	adc  b                                           ; $7c2b: $88
	adc  b                                           ; $7c2c: $88
	adc  b                                           ; $7c2d: $88
	adc  b                                           ; $7c2e: $88
	adc  b                                           ; $7c2f: $88
	adc  b                                           ; $7c30: $88
	adc  b                                           ; $7c31: $88
	adc  b                                           ; $7c32: $88
	adc  b                                           ; $7c33: $88
	adc  b                                           ; $7c34: $88
	adc  b                                           ; $7c35: $88
	adc  b                                           ; $7c36: $88
	adc  b                                           ; $7c37: $88
	adc  b                                           ; $7c38: $88
	adc  b                                           ; $7c39: $88
	adc  b                                           ; $7c3a: $88
	adc  b                                           ; $7c3b: $88
	adc  b                                           ; $7c3c: $88
	adc  b                                           ; $7c3d: $88
	adc  b                                           ; $7c3e: $88
	adc  b                                           ; $7c3f: $88
	adc  b                                           ; $7c40: $88
	adc  b                                           ; $7c41: $88
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	adc  b                                           ; $7c45: $88
	adc  b                                           ; $7c46: $88
	adc  b                                           ; $7c47: $88
	adc  b                                           ; $7c48: $88
	adc  b                                           ; $7c49: $88
	adc  b                                           ; $7c4a: $88
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	adc  b                                           ; $7c51: $88
	adc  b                                           ; $7c52: $88
	adc  b                                           ; $7c53: $88
	adc  b                                           ; $7c54: $88
	adc  b                                           ; $7c55: $88
	adc  b                                           ; $7c56: $88
	adc  b                                           ; $7c57: $88
	adc  b                                           ; $7c58: $88
	adc  b                                           ; $7c59: $88
	adc  b                                           ; $7c5a: $88
	adc  b                                           ; $7c5b: $88
	adc  b                                           ; $7c5c: $88
	adc  b                                           ; $7c5d: $88
	adc  b                                           ; $7c5e: $88
	adc  b                                           ; $7c5f: $88
	adc  b                                           ; $7c60: $88
	adc  b                                           ; $7c61: $88
	adc  b                                           ; $7c62: $88
	adc  b                                           ; $7c63: $88
	adc  b                                           ; $7c64: $88
	adc  b                                           ; $7c65: $88
	adc  b                                           ; $7c66: $88
	adc  b                                           ; $7c67: $88
	adc  b                                           ; $7c68: $88
	adc  b                                           ; $7c69: $88
	adc  b                                           ; $7c6a: $88
	adc  b                                           ; $7c6b: $88
	adc  b                                           ; $7c6c: $88
	adc  b                                           ; $7c6d: $88
	adc  b                                           ; $7c6e: $88
	adc  b                                           ; $7c6f: $88
	adc  b                                           ; $7c70: $88
	adc  b                                           ; $7c71: $88
	adc  b                                           ; $7c72: $88
	adc  b                                           ; $7c73: $88
	adc  b                                           ; $7c74: $88
	adc  b                                           ; $7c75: $88
	adc  b                                           ; $7c76: $88
	adc  b                                           ; $7c77: $88
	adc  b                                           ; $7c78: $88
	adc  b                                           ; $7c79: $88
	adc  b                                           ; $7c7a: $88
	adc  b                                           ; $7c7b: $88
	adc  b                                           ; $7c7c: $88
	adc  b                                           ; $7c7d: $88
	adc  b                                           ; $7c7e: $88
	adc  b                                           ; $7c7f: $88
	adc  b                                           ; $7c80: $88
	adc  b                                           ; $7c81: $88
	adc  b                                           ; $7c82: $88
	adc  b                                           ; $7c83: $88
	adc  b                                           ; $7c84: $88
	adc  b                                           ; $7c85: $88
	adc  b                                           ; $7c86: $88
	adc  b                                           ; $7c87: $88
	adc  b                                           ; $7c88: $88
	adc  b                                           ; $7c89: $88
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
	ld   [hl], a                                     ; $7e39: $77
	ld   [hl], a                                     ; $7e3a: $77
	ld   [hl], a                                     ; $7e3b: $77
	ld   [hl], a                                     ; $7e3c: $77
	halt                                             ; $7e3d: $76
	ld   h, [hl]                                     ; $7e3e: $66
	ld   h, [hl]                                     ; $7e3f: $66
	ld   a, b                                        ; $7e40: $78
	sbc  c                                           ; $7e41: $99
	xor  d                                           ; $7e42: $aa
	cp   e                                           ; $7e43: $bb
	call z, $aacb                                    ; $7e44: $cc $cb $aa
	sbc  b                                           ; $7e47: $98
	ld   [hl], a                                     ; $7e48: $77
	ld   [hl], a                                     ; $7e49: $77
	ld   h, l                                        ; $7e4a: $65
	ld   b, d                                        ; $7e4b: $42
	ld   de, $2511                                   ; $7e4c: $11 $11 $25
	sbc  h                                           ; $7e4f: $9c
	xor  $fd                                         ; $7e50: $ee $fd
	call $c8cd                                       ; $7e52: $cd $cd $c8
	ld   d, d                                        ; $7e55: $52
	ld   de, $9c15                                   ; $7e56: $11 $15 $9c
	rst  $38                                         ; $7e59: $ff
	rst  $38                                         ; $7e5a: $ff
	rst  $38                                         ; $7e5b: $ff
	cp   $c9                                         ; $7e5c: $fe $c9
	ld   [hl], l                                     ; $7e5e: $75
	ld   b, h                                        ; $7e5f: $44
	ld   d, l                                        ; $7e60: $55
	ld   sp, $1111                                   ; $7e61: $31 $11 $11
	add  hl, de                                      ; $7e64: $19
	rst  $38                                         ; $7e65: $ff
	rst  $38                                         ; $7e66: $ff
	reti                                             ; $7e67: $d9


	sbc  l                                           ; $7e68: $9d
	xor  $a3                                         ; $7e69: $ee $a3
	ld   de, $af11                                   ; $7e6b: $11 $11 $af
	rst  $38                                         ; $7e6e: $ff
	rst  $38                                         ; $7e6f: $ff
	cp   h                                           ; $7e70: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e71: $cf
	db   $fc                                         ; $7e72: $fc
	ld   [hl], e                                     ; $7e73: $73
	inc  hl                                          ; $7e74: $23
	ld   h, a                                        ; $7e75: $67
	ld   d, c                                        ; $7e76: $51
	ld   de, $1911                                   ; $7e77: $11 $11 $19
	rst  $38                                         ; $7e7a: $ff
	rst  $38                                         ; $7e7b: $ff
	jp   c, $fe9d                                    ; $7e7c: $da $9d $fe

	ld   h, c                                        ; $7e7f: $61
	ld   de, $ff18                                   ; $7e80: $11 $18 $ff
	rst  $38                                         ; $7e83: $ff
	jp   hl                                          ; $7e84: $e9


	sbc  h                                           ; $7e85: $9c
	rst  $38                                         ; $7e86: $ff
	rst  $20                                         ; $7e87: $e7
	ld   hl, $9448                                   ; $7e88: $21 $48 $94
	ld   de, $1111                                   ; $7e8b: $11 $11 $11
	sbc  a                                           ; $7e8e: $9f
	rst  $38                                         ; $7e8f: $ff
	rst  $38                                         ; $7e90: $ff
	ei                                               ; $7e91: $fb
	xor  c                                           ; $7e92: $a9
	ld   b, c                                        ; $7e93: $41
	ld   de, $ff1a                                   ; $7e94: $11 $1a $ff
	rst  $38                                         ; $7e97: $ff
	db   $fd                                         ; $7e98: $fd
	cp   l                                           ; $7e99: $bd
	rst  $38                                         ; $7e9a: $ff
	or   a                                           ; $7e9b: $b7
	ld   d, [hl]                                     ; $7e9c: $56
	xor  e                                           ; $7e9d: $ab
	ld   sp, $1111                                   ; $7e9e: $31 $11 $11
	ld   de, $ffdf                                   ; $7ea1: $11 $df $ff
	rst  $38                                         ; $7ea4: $ff
	jp   $1111                                       ; $7ea5: $c3 $11 $11


	ld   de, $ff8f                                   ; $7ea8: $11 $8f $ff
	rst  $38                                         ; $7eab: $ff
	adc  c                                           ; $7eac: $89
	sbc  [hl]                                        ; $7ead: $9e
	db   $fc                                         ; $7eae: $fc
	sbc  e                                           ; $7eaf: $9b
	call c, $11b1                                    ; $7eb0: $dc $b1 $11
	ld   de, $1f11                                   ; $7eb3: $11 $11 $1f
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	pop  bc                                          ; $7eb8: $c1
	ld   de, $1111                                   ; $7eb9: $11 $11 $11
	ld   a, a                                        ; $7ebc: $7f
	rst  $38                                         ; $7ebd: $ff
	rst  $38                                         ; $7ebe: $ff
	ld   de, $ffaf                                   ; $7ebf: $11 $af $ff
	set  7, [hl]                                     ; $7ec2: $cb $fe
	ld   d, c                                        ; $7ec4: $51
	ld   de, $1111                                   ; $7ec5: $11 $11 $11
	rra                                              ; $7ec8: $1f
	rst  $38                                         ; $7ec9: $ff
	rst  $38                                         ; $7eca: $ff
	ld   de, $1111                                   ; $7ecb: $11 $11 $11
	jr   @+$01                                       ; $7ece: $18 $ff

	rst  $38                                         ; $7ed0: $ff
	sub  c                                           ; $7ed1: $91
	dec  de                                          ; $7ed2: $1b
	rst  $38                                         ; $7ed3: $ff
	db   $fd                                         ; $7ed4: $fd
	rst  JumpTable                                         ; $7ed5: $df
	or   c                                           ; $7ed6: $b1
	ld   de, $1111                                   ; $7ed7: $11 $11 $11
	dec  de                                          ; $7eda: $1b
	rst  $38                                         ; $7edb: $ff
	rst  $38                                         ; $7edc: $ff
	pop  de                                          ; $7edd: $d1
	ld   de, $1111                                   ; $7ede: $11 $11 $11
	rst  $38                                         ; $7ee1: $ff
	rst  $38                                         ; $7ee2: $ff
	or   $12                                         ; $7ee3: $f6 $12
	rst  $28                                         ; $7ee5: $ef
	rst  $38                                         ; $7ee6: $ff
	rst  $28                                         ; $7ee7: $ef
	or   c                                           ; $7ee8: $b1
	ld   de, $1111                                   ; $7ee9: $11 $11 $11
	ld   a, a                                        ; $7eec: $7f
	rst  $38                                         ; $7eed: $ff
	rst  $38                                         ; $7eee: $ff
	ld   de, $1111                                   ; $7eef: $11 $11 $11
	ld   l, a                                        ; $7ef2: $6f
	rst  $38                                         ; $7ef3: $ff
	rst  $38                                         ; $7ef4: $ff
	ld   [hl], h                                     ; $7ef5: $74
	xor  e                                           ; $7ef6: $ab
	call $f5ef                                       ; $7ef7: $cd $ef $f5
	ld   de, $1111                                   ; $7efa: $11 $11 $11
	rra                                              ; $7efd: $1f
	rst  $38                                         ; $7efe: $ff
	rst  $38                                         ; $7eff: $ff
	ld   h, c                                        ; $7f00: $61
	ld   de, $1f11                                   ; $7f01: $11 $11 $1f
	rst  $38                                         ; $7f04: $ff
	rst  $38                                         ; $7f05: $ff
	sub  $68                                         ; $7f06: $d6 $68
	res  3, e                                        ; $7f08: $cb $9b
	and  c                                           ; $7f0a: $a1
	ld   de, $1111                                   ; $7f0b: $11 $11 $11
	rst  JumpTable                                         ; $7f0e: $df
	rst  $38                                         ; $7f0f: $ff
	rst  $38                                         ; $7f10: $ff
	add  c                                           ; $7f11: $81
	ld   de, rAUD1LEN                                   ; $7f12: $11 $11 $ff
	rst  $38                                         ; $7f15: $ff
	db   $fd                                         ; $7f16: $fd
	rst  $38                                         ; $7f17: $ff
	call z, $71b8                                    ; $7f18: $cc $b8 $71
	ld   de, $1111                                   ; $7f1b: $11 $11 $11
	rst  JumpTable                                         ; $7f1e: $df
	rst  $38                                         ; $7f1f: $ff
	cp   $b7                                         ; $7f20: $fe $b7
	ld   de, $ff1c                                   ; $7f22: $11 $1c $ff
	rst  $38                                         ; $7f25: $ff
	ld   l, b                                        ; $7f26: $68
	rst  $38                                         ; $7f27: $ff
	reti                                             ; $7f28: $d9


	ld   sp, $1111                                   ; $7f29: $31 $11 $11
	ld   de, $ff7f                                   ; $7f2c: $11 $7f $ff
	rst  $38                                         ; $7f2f: $ff
	ret  c                                           ; $7f30: $d8

	ld   de, $ff18                                   ; $7f31: $11 $18 $ff
	rst  $38                                         ; $7f34: $ff
	db   $dd                                         ; $7f35: $dd
	ld   h, e                                        ; $7f36: $63
	ld   [hl-], a                                    ; $7f37: $32
	ld   h, h                                        ; $7f38: $64
	ld   de, $1911                                   ; $7f39: $11 $11 $19
	rst  $38                                         ; $7f3c: $ff
	rst  $38                                         ; $7f3d: $ff
	rst  $38                                         ; $7f3e: $ff
	and  c                                           ; $7f3f: $a1
	dec  d                                           ; $7f40: $15
	rst  $38                                         ; $7f41: $ff
	rst  $38                                         ; $7f42: $ff
	cp   $e6                                         ; $7f43: $fe $e6
	ld   de, $1111                                   ; $7f45: $11 $11 $11
	ld   de, $ff1d                                   ; $7f48: $11 $1d $ff
	rst  $38                                         ; $7f4b: $ff
	rst  $38                                         ; $7f4c: $ff
	ld   [hl], c                                     ; $7f4d: $71
	ld   de, $ffef                                   ; $7f4e: $11 $ef $ff
	rst  $38                                         ; $7f51: $ff
	db   $fd                                         ; $7f52: $fd
	ld   sp, $1111                                   ; $7f53: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $7f56: $11 $11 $ff
	rst  $38                                         ; $7f59: $ff
	rst  $38                                         ; $7f5a: $ff
	jp   nz, $cf12                                   ; $7f5b: $c2 $12 $cf

	rst  $38                                         ; $7f5e: $ff
	rst  $38                                         ; $7f5f: $ff
	ei                                               ; $7f60: $fb
	ld   d, d                                        ; $7f61: $52
	ld   de, $1111                                   ; $7f62: $11 $11 $11
	ld   de, $ffff                                   ; $7f65: $11 $ff $ff
	rst  $38                                         ; $7f68: $ff
	pop  af                                          ; $7f69: $f1
	ld   de, $ff6e                                   ; $7f6a: $11 $6e $ff
	rst  $38                                         ; $7f6d: $ff
	rst  $38                                         ; $7f6e: $ff
	sub  h                                           ; $7f6f: $94
	ld   de, $1111                                   ; $7f70: $11 $11 $11
	ld   de, $ff9f                                   ; $7f73: $11 $9f $ff
	rst  $38                                         ; $7f76: $ff
	db   $fd                                         ; $7f77: $fd
	ld   h, d                                        ; $7f78: $62
	ld   b, a                                        ; $7f79: $47
	cp   a                                           ; $7f7a: $bf
	rst  $38                                         ; $7f7b: $ff
	rst  $38                                         ; $7f7c: $ff
	and  h                                           ; $7f7d: $a4
	ld   de, $1111                                   ; $7f7e: $11 $11 $11
	ld   de, $ffff                                   ; $7f81: $11 $ff $ff
	rst  $38                                         ; $7f84: $ff
	or   $15                                         ; $7f85: $f6 $15
	sbc  d                                           ; $7f87: $9a
	call $fcff                                       ; $7f88: $cd $ff $fc
	ld   h, d                                        ; $7f8b: $62
	ld   de, $1111                                   ; $7f8c: $11 $11 $11
	ld   de, $ffff                                   ; $7f8f: $11 $ff $ff
	rst  $38                                         ; $7f92: $ff
	rst  $38                                         ; $7f93: $ff
	sub  [hl]                                        ; $7f94: $96
	ld   l, b                                        ; $7f95: $68
	sbc  e                                           ; $7f96: $9b
	rst  $38                                         ; $7f97: $ff
	and  $11                                         ; $7f98: $e6 $11
	ld   de, $1111                                   ; $7f9a: $11 $11 $11
	ld   c, h                                        ; $7f9d: $4c
	rst  $38                                         ; $7f9e: $ff
	rst  $38                                         ; $7f9f: $ff
	rst  $38                                         ; $7fa0: $ff
	rst  $38                                         ; $7fa1: $ff
	add  sp, $57                                     ; $7fa2: $e8 $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fa4: $cf
	ld   a, [$1161]                                  ; $7fa5: $fa $61 $11
	ld   de, $1211                                   ; $7fa8: $11 $11 $12
	cp   [hl]                                        ; $7fab: $be
	rst  $38                                         ; $7fac: $ff
	rst  $38                                         ; $7fad: $ff
	rst  $38                                         ; $7fae: $ff
	cp   $db                                         ; $7faf: $fe $db
	sbc  d                                           ; $7fb1: $9a
	rst  JumpTable                                         ; $7fb2: $df
	add  $11                                         ; $7fb3: $c6 $11
	ld   de, $1111                                   ; $7fb5: $11 $11 $11
	dec  d                                           ; $7fb8: $15
	xor  a                                           ; $7fb9: $af
	rst  $38                                         ; $7fba: $ff
	rst  $38                                         ; $7fbb: $ff
	rst  $38                                         ; $7fbc: $ff
	rst  $38                                         ; $7fbd: $ff
	db   $db                                         ; $7fbe: $db
	cp   d                                           ; $7fbf: $ba
	cp   e                                           ; $7fc0: $bb
	and  l                                           ; $7fc1: $a5
	ld   de, $1111                                   ; $7fc2: $11 $11 $11
	ld   de, $2444                                   ; $7fc5: $11 $44 $24
	sbc  c                                           ; $7fc8: $99
	xor  e                                           ; $7fc9: $ab
	rst  $38                                         ; $7fca: $ff
	rst  $38                                         ; $7fcb: $ff
	db   $fd                                         ; $7fcc: $fd
	rst  JumpTable                                         ; $7fcd: $df
	db   $db                                         ; $7fce: $db
	xor  h                                           ; $7fcf: $ac
	and  [hl]                                        ; $7fd0: $a6
	ld   b, h                                        ; $7fd1: $44
	ld   [hl], a                                     ; $7fd2: $77
	ld   a, c                                        ; $7fd3: $79
	ld   [hl], a                                     ; $7fd4: $77
	halt                                             ; $7fd5: $76
	ld   sp, $1121                                   ; $7fd6: $31 $21 $11
	ld   [hl+], a                                    ; $7fd9: $22
	ld   b, [hl]                                     ; $7fda: $46
	ld   a, b                                        ; $7fdb: $78
	xor  e                                           ; $7fdc: $ab
	xor  c                                           ; $7fdd: $a9
	sbc  h                                           ; $7fde: $9c
	db   $dd                                         ; $7fdf: $dd
	rst  $28                                         ; $7fe0: $ef
	rst  $38                                         ; $7fe1: $ff
	sbc  $fe                                         ; $7fe2: $de $fe
	sbc  d                                           ; $7fe4: $9a
	db   $db                                         ; $7fe5: $db
	ld   d, l                                        ; $7fe6: $55
	ld   h, l                                        ; $7fe7: $65
	inc  hl                                          ; $7fe8: $23
	ld   [hl-], a                                    ; $7fe9: $32
	ld   [de], a                                     ; $7fea: $12
	ld   hl, $4413                                   ; $7feb: $21 $13 $44
	ld   d, a                                        ; $7fee: $57
	sbc  c                                           ; $7fef: $99
	xor  e                                           ; $7ff0: $ab
	xor  d                                           ; $7ff1: $aa
	cp   l                                           ; $7ff2: $bd
	call c, $dedd                                    ; $7ff3: $dc $dd $de
	db   $ed                                         ; $7ff6: $ed
	cp   e                                           ; $7ff7: $bb
	res  5, b                                        ; $7ff8: $cb $a8
	ld   [hl], a                                     ; $7ffa: $77
	ld   h, [hl]                                     ; $7ffb: $66
	ld   h, [hl]                                     ; $7ffc: $66
	ld   h, [hl]                                     ; $7ffd: $66
	ld   h, l                                        ; $7ffe: $65
	ld   d, l                                        ; $7fff: $55
