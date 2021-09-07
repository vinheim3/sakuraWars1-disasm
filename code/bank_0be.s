; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0be", ROMX[$4000], BANK[$be]

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
	adc  c                                           ; $4034: $89
	adc  b                                           ; $4035: $88
	adc  b                                           ; $4036: $88
	sbc  b                                           ; $4037: $98
	adc  b                                           ; $4038: $88
	adc  b                                           ; $4039: $88
	adc  b                                           ; $403a: $88
	adc  b                                           ; $403b: $88
	adc  b                                           ; $403c: $88
	adc  b                                           ; $403d: $88
	adc  b                                           ; $403e: $88
	sbc  b                                           ; $403f: $98
	adc  c                                           ; $4040: $89
	sbc  c                                           ; $4041: $99
	add  a                                           ; $4042: $87
	adc  b                                           ; $4043: $88
	ld   [hl], a                                     ; $4044: $77
	sbc  c                                           ; $4045: $99
	add  a                                           ; $4046: $87
	ld   a, b                                        ; $4047: $78
	add  a                                           ; $4048: $87
	ld   [hl], a                                     ; $4049: $77
	adc  b                                           ; $404a: $88
	add  a                                           ; $404b: $87
	adc  c                                           ; $404c: $89
	sbc  c                                           ; $404d: $99
	sbc  c                                           ; $404e: $99
	sbc  b                                           ; $404f: $98
	add  a                                           ; $4050: $87
	ld   [hl], a                                     ; $4051: $77
	ld   a, b                                        ; $4052: $78
	add  a                                           ; $4053: $87
	ld   a, b                                        ; $4054: $78
	adc  b                                           ; $4055: $88
	ld   [hl], a                                     ; $4056: $77
	adc  c                                           ; $4057: $89
	sub  [hl]                                        ; $4058: $96
	ld   [hl], a                                     ; $4059: $77
	ld   a, b                                        ; $405a: $78
	add  a                                           ; $405b: $87
	ld   a, b                                        ; $405c: $78
	adc  b                                           ; $405d: $88
	adc  b                                           ; $405e: $88
	adc  c                                           ; $405f: $89
	add  a                                           ; $4060: $87
	adc  b                                           ; $4061: $88
	ld   [hl], a                                     ; $4062: $77
	ld   [hl], a                                     ; $4063: $77
	ld   a, b                                        ; $4064: $78
	ld   a, b                                        ; $4065: $78
	adc  c                                           ; $4066: $89
	adc  c                                           ; $4067: $89
	sbc  c                                           ; $4068: $99
	adc  c                                           ; $4069: $89
	adc  b                                           ; $406a: $88
	adc  b                                           ; $406b: $88
	adc  b                                           ; $406c: $88
	adc  b                                           ; $406d: $88
	add  a                                           ; $406e: $87
	ld   [hl], a                                     ; $406f: $77
	ld   [hl], a                                     ; $4070: $77
	ld   [hl], a                                     ; $4071: $77
	ld   [hl], a                                     ; $4072: $77
	halt                                             ; $4073: $76
	halt                                             ; $4074: $76
	ld   [hl], a                                     ; $4075: $77
	ld   [hl], a                                     ; $4076: $77
	ld   h, a                                        ; $4077: $67
	add  a                                           ; $4078: $87
	sbc  c                                           ; $4079: $99
	sbc  d                                           ; $407a: $9a
	xor  d                                           ; $407b: $aa
	xor  e                                           ; $407c: $ab
	xor  e                                           ; $407d: $ab
	xor  e                                           ; $407e: $ab
	xor  c                                           ; $407f: $a9
	sbc  b                                           ; $4080: $98
	add  a                                           ; $4081: $87
	halt                                             ; $4082: $76
	ld   d, h                                        ; $4083: $54
	ld   de, $1111                                   ; $4084: $11 $11 $11
	dec  sp                                          ; $4087: $3b
	rst  JumpTable                                         ; $4088: $df
	rst  $38                                         ; $4089: $ff
	rst  $38                                         ; $408a: $ff
	sbc  $fb                                         ; $408b: $de $fb
	sub  l                                           ; $408d: $95
	sbc  c                                           ; $408e: $99
	and  l                                           ; $408f: $a5
	ld   l, l                                        ; $4090: $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4091: $cf
	rst  JumpTable                                         ; $4092: $df
	cp   $b4                                         ; $4093: $fe $b4
	ld   de, $1111                                   ; $4095: $11 $11 $11
	inc  e                                           ; $4098: $1c
	cp   a                                           ; $4099: $bf
	rst  $38                                         ; $409a: $ff
	rst  $38                                         ; $409b: $ff
	db   $fd                                         ; $409c: $fd
	pop  hl                                          ; $409d: $e1
	inc  de                                          ; $409e: $13
	ld   h, e                                        ; $409f: $63
	ld   h, l                                        ; $40a0: $65
	ld   e, a                                        ; $40a1: $5f
	rst  JumpTable                                         ; $40a2: $df
	rst  $38                                         ; $40a3: $ff
	rst  $38                                         ; $40a4: $ff
	push de                                          ; $40a5: $d5
	ld   d, c                                        ; $40a6: $51
	ld   de, $1111                                   ; $40a7: $11 $11 $11
	ld   e, $ff                                      ; $40aa: $1e $ff
	rst  $38                                         ; $40ac: $ff
	rst  $38                                         ; $40ad: $ff
	pop  af                                          ; $40ae: $f1
	add  hl, hl                                      ; $40af: $29
	ld   de, $bb5b                                   ; $40b0: $11 $5b $bb
	sbc  d                                           ; $40b3: $9a
	rst  $38                                         ; $40b4: $ff
	rst  $38                                         ; $40b5: $ff
	rst  $38                                         ; $40b6: $ff
	or   a                                           ; $40b7: $b7
	ld   de, $1111                                   ; $40b8: $11 $11 $11
	ld   de, $ff1f                                   ; $40bb: $11 $1f $ff
	rst  $38                                         ; $40be: $ff
	rst  $38                                         ; $40bf: $ff
	pop  af                                          ; $40c0: $f1
	ld   c, c                                        ; $40c1: $49
	ld   [de], a                                     ; $40c2: $12
	ld   l, l                                        ; $40c3: $6d
	bit  5, c                                        ; $40c4: $cb $69
	rst  $38                                         ; $40c6: $ff
	rst  $38                                         ; $40c7: $ff
	rst  $38                                         ; $40c8: $ff
	add  $11                                         ; $40c9: $c6 $11
	ld   de, $1111                                   ; $40cb: $11 $11 $11
	rra                                              ; $40ce: $1f
	rst  $38                                         ; $40cf: $ff
	rst  $38                                         ; $40d0: $ff
	rst  $38                                         ; $40d1: $ff
	ld   d, c                                        ; $40d2: $51
	ld   [hl], d                                     ; $40d3: $72
	ld   [de], a                                     ; $40d4: $12
	cp   a                                           ; $40d5: $bf
	db   $db                                         ; $40d6: $db
	ld   l, a                                        ; $40d7: $6f
	rst  $38                                         ; $40d8: $ff
	rst  $38                                         ; $40d9: $ff
	cp   $91                                         ; $40da: $fe $91
	ld   de, $1111                                   ; $40dc: $11 $11 $11
	ld   de, $ffff                                   ; $40df: $11 $ff $ff
	rst  $38                                         ; $40e2: $ff
	ei                                               ; $40e3: $fb
	ld   de, $6b61                                   ; $40e4: $11 $61 $6b
	rst  $38                                         ; $40e7: $ff
	res  3, a                                        ; $40e8: $cb $9f
	xor  [hl]                                        ; $40ea: $ae
	rst  $38                                         ; $40eb: $ff
	ld   hl, sp+$51                                  ; $40ec: $f8 $51
	ld   de, $1111                                   ; $40ee: $11 $11 $11
	ld   a, [de]                                     ; $40f1: $1a
	rst  $38                                         ; $40f2: $ff
	rst  $38                                         ; $40f3: $ff
	rst  $38                                         ; $40f4: $ff
	pop  hl                                          ; $40f5: $e1
	jr   jr_0be_410f                                 ; $40f6: $18 $17

	xor  [hl]                                        ; $40f8: $ae
	rst  $38                                         ; $40f9: $ff
	add  a                                           ; $40fa: $87
	db   $fc                                         ; $40fb: $fc
	rst  $38                                         ; $40fc: $ff
	rst  $38                                         ; $40fd: $ff
	or   h                                           ; $40fe: $b4
	ld   de, $1111                                   ; $40ff: $11 $11 $11
	ld   de, $ffff                                   ; $4102: $11 $ff $ff
	rst  $38                                         ; $4105: $ff
	ld   sp, hl                                      ; $4106: $f9
	inc  d                                           ; $4107: $14
	and  c                                           ; $4108: $a1
	ld   a, [hl]                                     ; $4109: $7e
	rst  $38                                         ; $410a: $ff
	sub  $bf                                         ; $410b: $d6 $bf
	cp   a                                           ; $410d: $bf
	rst  $38                                         ; $410e: $ff

jr_0be_410f:
	ld   sp, hl                                      ; $410f: $f9
	ld   sp, $1111                                   ; $4110: $31 $11 $11
	ld   de, $ff2f                                   ; $4113: $11 $2f $ff
	rst  $38                                         ; $4116: $ff
	ld   a, [$6321]                                  ; $4117: $fa $21 $63
	adc  e                                           ; $411a: $8b
	rst  $38                                         ; $411b: $ff
	jp   z, $bf9b                                    ; $411c: $ca $9b $bf

	rst  $38                                         ; $411f: $ff
	db   $fc                                         ; $4120: $fc
	ld   [hl], c                                     ; $4121: $71
	ld   de, $1111                                   ; $4122: $11 $11 $11
	rra                                              ; $4125: $1f
	rst  $38                                         ; $4126: $ff
	rst  $38                                         ; $4127: $ff
	rst  $38                                         ; $4128: $ff
	ld   d, c                                        ; $4129: $51
	ld   [hl], a                                     ; $412a: $77
	ld   e, b                                        ; $412b: $58
	rst  $28                                         ; $412c: $ef
	jp   c, wCurrAudChannelTimes5                                    ; $412d: $da $ab $cd

	rst  $28                                         ; $4130: $ef
	db   $fc                                         ; $4131: $fc
	ld   d, c                                        ; $4132: $51
	ld   de, $1111                                   ; $4133: $11 $11 $11
	rra                                              ; $4136: $1f
	cp   $ff                                         ; $4137: $fe $ff
	ei                                               ; $4139: $fb
	ld   [hl+], a                                    ; $413a: $22
	cp   c                                           ; $413b: $b9
	add  hl, sp                                      ; $413c: $39
	rst  $38                                         ; $413d: $ff
	halt                                             ; $413e: $76
	db   $dd                                         ; $413f: $dd
	db   $ed                                         ; $4140: $ed
	rst  $28                                         ; $4141: $ef
	ei                                               ; $4142: $fb
	ld   b, c                                        ; $4143: $41
	ld   de, $1111                                   ; $4144: $11 $11 $11
	rst  $38                                         ; $4147: $ff
	ld   a, a                                        ; $4148: $7f
	rst  $38                                         ; $4149: $ff
	cp   c                                           ; $414a: $b9
	sbc  d                                           ; $414b: $9a
	or   l                                           ; $414c: $b5
	ld   a, a                                        ; $414d: $7f
	rst  $30                                         ; $414e: $f7
	xor  d                                           ; $414f: $aa
	xor  a                                           ; $4150: $af
	call c, $b5ff                                    ; $4151: $dc $ff $b5
	ld   de, $1111                                   ; $4154: $11 $11 $11
	rra                                              ; $4157: $1f
	add  $ff                                         ; $4158: $c6 $ff
	or   $8d                                         ; $415a: $f6 $8d
	or   $1d                                         ; $415c: $f6 $1d
	db   $fc                                         ; $415e: $fc
	dec  sp                                          ; $415f: $3b
	xor  $89                                         ; $4160: $ee $89
	rst  $38                                         ; $4162: $ff
	rst  $30                                         ; $4163: $f7
	ld   b, c                                        ; $4164: $41
	ld   de, $1911                                   ; $4165: $11 $11 $19
	db   $f4                                         ; $4168: $f4
	rst  $38                                         ; $4169: $ff
	rst  $38                                         ; $416a: $ff

jr_0be_416b:
	set  3, b                                        ; $416b: $cb $d8
	ld   l, e                                        ; $416d: $6b
	rst  $28                                         ; $416e: $ef
	jr   jr_0be_416b                                 ; $416f: $18 $fa

	ret                                              ; $4171: $c9


	rst  $38                                         ; $4172: $ff
	xor  c                                           ; $4173: $a9
	ld   hl, $1111                                   ; $4174: $21 $11 $11
	jr   @+$47                                       ; $4177: $18 $45

	rst  $38                                         ; $4179: $ff
	rst  $38                                         ; $417a: $ff

jr_0be_417b:
	db   $eb                                         ; $417b: $eb
	rst  $38                                         ; $417c: $ff
	jr   jr_0be_417b                                 ; $417d: $18 $fc

	and  d                                           ; $417f: $a2
	sbc  d                                           ; $4180: $9a
	db   $fc                                         ; $4181: $fc
	ld   l, a                                        ; $4182: $6f
	db   $fc                                         ; $4183: $fc
	ld   de, $1111                                   ; $4184: $11 $11 $11
	rra                                              ; $4187: $1f
	ld   h, a                                        ; $4188: $67
	rst  $38                                         ; $4189: $ff
	db   $fc                                         ; $418a: $fc
	rst  $38                                         ; $418b: $ff
	db   $e3                                         ; $418c: $e3
	rst  $28                                         ; $418d: $ef
	cp   c                                           ; $418e: $b9
	ld   e, e                                        ; $418f: $5b
	ld   h, a                                        ; $4190: $67
	set  3, l                                        ; $4191: $cb $dd
	ld   h, c                                        ; $4193: $61
	ld   de, $1111                                   ; $4194: $11 $11 $11
	rst  $10                                         ; $4197: $d7
	ld   l, a                                        ; $4198: $6f
	cp   $f7                                         ; $4199: $fe $f7
	ld   e, a                                        ; $419b: $5f
	xor  d                                           ; $419c: $aa
	ei                                               ; $419d: $fb
	ld   hl, sp+$28                                  ; $419e: $f8 $28
	ld   a, [$b35e]                                  ; $41a0: $fa $5e $b3
	ld   de, $1151                                   ; $41a3: $11 $51 $11
	add  e                                           ; $41a6: $83
	cpl                                              ; $41a7: $2f
	rst  $38                                         ; $41a8: $ff
	adc  $ba                                         ; $41a9: $ce $ba
	db   $fc                                         ; $41ab: $fc
	db   $fc                                         ; $41ac: $fc
	ld   e, h                                        ; $41ad: $5c
	push hl                                          ; $41ae: $e5
	ld   l, a                                        ; $41af: $6f
	call nc, Call_0be_5475                           ; $41b0: $d4 $75 $54
	ld   de, $4d11                                   ; $41b3: $11 $11 $4d
	ld   h, $ff                                      ; $41b6: $26 $ff
	ei                                               ; $41b8: $fb
	xor  a                                           ; $41b9: $af
	ld   hl, sp-$34                                  ; $41ba: $f8 $cc
	ld   a, [$7f53]                                  ; $41bc: $fa $53 $7f
	ld   h, a                                        ; $41bf: $67
	ld   l, d                                        ; $41c0: $6a
	or   c                                           ; $41c1: $b1
	ld   de, $3511                                   ; $41c2: $11 $11 $35
	ld   e, e                                        ; $41c5: $5b
	cp   d                                           ; $41c6: $ba
	db   $fd                                         ; $41c7: $fd
	adc  a                                           ; $41c8: $8f
	or   $df                                         ; $41c9: $f6 $df

jr_0be_41cb:
	ei                                               ; $41cb: $fb
	ld   h, $ab                                      ; $41cc: $26 $ab
	ld   [hl], c                                     ; $41ce: $71
	ld   l, l                                        ; $41cf: $6d
	ld   h, c                                        ; $41d0: $61
	ld   [de], a                                     ; $41d1: $12
	inc  de                                          ; $41d2: $13
	ld   b, e                                        ; $41d3: $43
	ld   l, [hl]                                     ; $41d4: $6e
	rst  $10                                         ; $41d5: $d7
	xor  e                                           ; $41d6: $ab
	rst  JumpTable                                         ; $41d7: $df
	xor  l                                           ; $41d8: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41d9: $cf
	di                                               ; $41da: $f3
	xor  c                                           ; $41db: $a9
	add  a                                           ; $41dc: $87
	dec  d                                           ; $41dd: $15
	ld   [hl], h                                     ; $41de: $74
	inc  sp                                          ; $41df: $33
	ld   d, c                                        ; $41e0: $51
	ld   d, $22                                      ; $41e1: $16 $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41e3: $cf
	and  [hl]                                        ; $41e4: $a6
	sbc  [hl]                                        ; $41e5: $9e
	db   $fd                                         ; $41e6: $fd
	ccf                                              ; $41e7: $3f
	pop  af                                          ; $41e8: $f1
	ld   l, l                                        ; $41e9: $6d
	sbc  h                                           ; $41ea: $9c
	ld   b, c                                        ; $41eb: $41
	sbc  d                                           ; $41ec: $9a
	inc  d                                           ; $41ed: $14
	add  h                                           ; $41ee: $84
	ld   [hl-], a                                    ; $41ef: $32
	scf                                              ; $41f0: $37
	adc  b                                           ; $41f1: $88
	add  a                                           ; $41f2: $87
	cp   $59                                         ; $41f3: $fe $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41f5: $cf
	push af                                          ; $41f6: $f5
	rst  $38                                         ; $41f7: $ff
	add  c                                           ; $41f8: $81
	ld   a, h                                        ; $41f9: $7c
	inc  d                                           ; $41fa: $14
	ld   h, $c1                                      ; $41fb: $26 $c1
	ld   a, [hl-]                                    ; $41fd: $3a
	ld   [hl], c                                     ; $41fe: $71
	ld   c, a                                        ; $41ff: $4f
	ld   [hl], l                                     ; $4200: $75
	xor  e                                           ; $4201: $ab
	rst  JumpTable                                         ; $4202: $df
	ld   [hl], l                                     ; $4203: $75
	db   $fd                                         ; $4204: $fd
	xor  h                                           ; $4205: $ac
	adc  e                                           ; $4206: $8b
	push hl                                          ; $4207: $e5
	jr   jr_0be_41cb                                 ; $4208: $18 $c1

	ld   d, h                                        ; $420a: $54
	add  hl, sp                                      ; $420b: $39
	inc  d                                           ; $420c: $14
	sub  l                                           ; $420d: $95
	ld   [hl], a                                     ; $420e: $77
	cp   [hl]                                        ; $420f: $be
	ld   h, h                                        ; $4210: $64
	rst  $38                                         ; $4211: $ff
	ld   hl, $b4ff                                   ; $4212: $21 $ff $b4
	sbc  l                                           ; $4215: $9d
	sub  e                                           ; $4216: $93
	ld   d, $b6                                      ; $4217: $16 $b6
	add  hl, hl                                      ; $4219: $29
	add  c                                           ; $421a: $81
	ld   a, b                                        ; $421b: $78
	ld   b, e                                        ; $421c: $43
	adc  e                                           ; $421d: $8b
	reti                                             ; $421e: $d9


	ld   e, h                                        ; $421f: $5c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4220: $cf
	ld   b, d                                        ; $4221: $42
	rst  $38                                         ; $4222: $ff
	inc  sp                                          ; $4223: $33
	bit  6, c                                        ; $4224: $cb $71
	ld   c, l                                        ; $4226: $4d
	ld   b, l                                        ; $4227: $45
	and  [hl]                                        ; $4228: $a6
	add  hl, hl                                      ; $4229: $29
	sub  [hl]                                        ; $422a: $96
	add  e                                           ; $422b: $83
	ld   a, h                                        ; $422c: $7c
	sub  a                                           ; $422d: $97
	xor  d                                           ; $422e: $aa
	sbc  d                                           ; $422f: $9a
	xor  c                                           ; $4230: $a9
	xor  a                                           ; $4231: $af
	and  h                                           ; $4232: $a4
	ld   h, a                                        ; $4233: $67
	sub  [hl]                                        ; $4234: $96
	ld   h, a                                        ; $4235: $67
	ld   c, b                                        ; $4236: $48
	and  e                                           ; $4237: $a3
	ld   e, e                                        ; $4238: $5b
	and  a                                           ; $4239: $a7
	ld   [hl], h                                     ; $423a: $74
	cp   e                                           ; $423b: $bb
	ld   d, a                                        ; $423c: $57
	sbc  h                                           ; $423d: $9c
	or   a                                           ; $423e: $b7
	ld   e, e                                        ; $423f: $5b
	call nz, $6f99                                   ; $4240: $c4 $99 $6f
	ld   d, l                                        ; $4243: $55
	sub  e                                           ; $4244: $93
	and  [hl]                                        ; $4245: $a6
	sub  l                                           ; $4246: $95
	ld   l, e                                        ; $4247: $6b
	ld   h, a                                        ; $4248: $67
	ld   l, e                                        ; $4249: $6b
	add  a                                           ; $424a: $87
	sub  a                                           ; $424b: $97
	sbc  d                                           ; $424c: $9a
	halt                                             ; $424d: $76
	cp   e                                           ; $424e: $bb
	ld   d, [hl]                                     ; $424f: $56
	ret  z                                           ; $4250: $c8

	ld   h, a                                        ; $4251: $67
	ld   h, a                                        ; $4252: $67
	adc  b                                           ; $4253: $88
	adc  l                                           ; $4254: $8d
	sub  l                                           ; $4255: $95
	xor  e                                           ; $4256: $ab
	ld   d, [hl]                                     ; $4257: $56
	adc  d                                           ; $4258: $8a
	and  a                                           ; $4259: $a7
	ld   l, h                                        ; $425a: $6c
	sub  h                                           ; $425b: $94
	and  [hl]                                        ; $425c: $a6
	adc  c                                           ; $425d: $89
	ld   l, e                                        ; $425e: $6b
	xor  d                                           ; $425f: $aa
	adc  b                                           ; $4260: $88
	sub  a                                           ; $4261: $97
	sub  a                                           ; $4262: $97
	adc  c                                           ; $4263: $89
	adc  d                                           ; $4264: $8a
	sub  a                                           ; $4265: $97
	sbc  b                                           ; $4266: $98
	adc  d                                           ; $4267: $8a
	sub  a                                           ; $4268: $97
	sbc  c                                           ; $4269: $99
	xor  b                                           ; $426a: $a8
	ld   a, c                                        ; $426b: $79
	and  a                                           ; $426c: $a7
	ld   e, c                                        ; $426d: $59
	sub  a                                           ; $426e: $97
	add  a                                           ; $426f: $87
	sub  a                                           ; $4270: $97
	ld   a, b                                        ; $4271: $78
	adc  c                                           ; $4272: $89
	ld   a, b                                        ; $4273: $78
	sbc  b                                           ; $4274: $98
	adc  c                                           ; $4275: $89
	ld   a, d                                        ; $4276: $7a
	ld   [hl], a                                     ; $4277: $77
	sbc  c                                           ; $4278: $99
	add  a                                           ; $4279: $87
	adc  b                                           ; $427a: $88
	add  [hl]                                        ; $427b: $86
	adc  c                                           ; $427c: $89
	sbc  c                                           ; $427d: $99
	ld   a, b                                        ; $427e: $78
	sbc  b                                           ; $427f: $98
	ld   a, c                                        ; $4280: $79
	ld   [hl], a                                     ; $4281: $77
	and  [hl]                                        ; $4282: $a6
	adc  c                                           ; $4283: $89
	ld   a, c                                        ; $4284: $79
	adc  b                                           ; $4285: $88
	sbc  c                                           ; $4286: $99
	xor  b                                           ; $4287: $a8
	and  a                                           ; $4288: $a7
	sbc  b                                           ; $4289: $98
	ld   l, b                                        ; $428a: $68
	add  a                                           ; $428b: $87
	add  a                                           ; $428c: $87
	ld   a, b                                        ; $428d: $78
	adc  b                                           ; $428e: $88
	ld   a, b                                        ; $428f: $78
	adc  c                                           ; $4290: $89
	ld   a, b                                        ; $4291: $78
	adc  b                                           ; $4292: $88
	sbc  b                                           ; $4293: $98
	adc  b                                           ; $4294: $88
	sub  a                                           ; $4295: $97

Jump_0be_4296:
	adc  c                                           ; $4296: $89
	sbc  b                                           ; $4297: $98
	sbc  c                                           ; $4298: $99
	sub  a                                           ; $4299: $97
	ld   [hl], a                                     ; $429a: $77
	ld   a, c                                        ; $429b: $79
	ld   l, c                                        ; $429c: $69
	adc  b                                           ; $429d: $88
	add  a                                           ; $429e: $87
	sbc  b                                           ; $429f: $98
	add  a                                           ; $42a0: $87
	sub  a                                           ; $42a1: $97
	adc  c                                           ; $42a2: $89
	ld   a, b                                        ; $42a3: $78
	adc  b                                           ; $42a4: $88
	ld   l, d                                        ; $42a5: $6a
	ld   a, b                                        ; $42a6: $78
	add  a                                           ; $42a7: $87
	sub  [hl]                                        ; $42a8: $96
	adc  b                                           ; $42a9: $88
	adc  b                                           ; $42aa: $88
	ld   a, b                                        ; $42ab: $78
	ld   a, b                                        ; $42ac: $78
	ld   [hl], a                                     ; $42ad: $77
	adc  b                                           ; $42ae: $88
	ld   a, b                                        ; $42af: $78
	sbc  b                                           ; $42b0: $98
	add  a                                           ; $42b1: $87
	ld   a, b                                        ; $42b2: $78
	add  a                                           ; $42b3: $87
	adc  c                                           ; $42b4: $89
	adc  b                                           ; $42b5: $88
	sbc  b                                           ; $42b6: $98
	ld   a, b                                        ; $42b7: $78
	ld   a, b                                        ; $42b8: $78
	ld   [hl], a                                     ; $42b9: $77
	sbc  b                                           ; $42ba: $98
	ld   [hl], a                                     ; $42bb: $77
	adc  b                                           ; $42bc: $88
	ld   a, b                                        ; $42bd: $78
	ld   a, c                                        ; $42be: $79
	ld   a, b                                        ; $42bf: $78
	sub  a                                           ; $42c0: $97
	and  a                                           ; $42c1: $a7
	adc  b                                           ; $42c2: $88
	ld   [hl], a                                     ; $42c3: $77
	ld   a, b                                        ; $42c4: $78
	add  a                                           ; $42c5: $87
	ld   a, c                                        ; $42c6: $79
	ld   l, b                                        ; $42c7: $68
	adc  b                                           ; $42c8: $88
	add  a                                           ; $42c9: $87
	sub  [hl]                                        ; $42ca: $96
	sub  [hl]                                        ; $42cb: $96
	adc  b                                           ; $42cc: $88
	ld   a, c                                        ; $42cd: $79
	ld   a, b                                        ; $42ce: $78
	ld   a, c                                        ; $42cf: $79
	ld   l, b                                        ; $42d0: $68
	adc  c                                           ; $42d1: $89
	adc  b                                           ; $42d2: $88
	ld   a, c                                        ; $42d3: $79
	sub  [hl]                                        ; $42d4: $96
	sub  a                                           ; $42d5: $97
	adc  b                                           ; $42d6: $88
	ld   a, b                                        ; $42d7: $78
	adc  b                                           ; $42d8: $88
	adc  b                                           ; $42d9: $88
	ld   a, b                                        ; $42da: $78
	ld   a, b                                        ; $42db: $78
	ld   a, b                                        ; $42dc: $78
	ld   [hl], a                                     ; $42dd: $77
	sub  [hl]                                        ; $42de: $96
	sub  a                                           ; $42df: $97
	adc  c                                           ; $42e0: $89
	ld   a, b                                        ; $42e1: $78
	ld   a, b                                        ; $42e2: $78
	ld   a, c                                        ; $42e3: $79
	add  a                                           ; $42e4: $87
	adc  b                                           ; $42e5: $88
	sub  a                                           ; $42e6: $97
	add  a                                           ; $42e7: $87
	sub  a                                           ; $42e8: $97
	ld   a, b                                        ; $42e9: $78
	ld   a, c                                        ; $42ea: $79
	ld   [hl], a                                     ; $42eb: $77
	ld   a, b                                        ; $42ec: $78
	ld   a, b                                        ; $42ed: $78
	add  a                                           ; $42ee: $87
	add  a                                           ; $42ef: $87
	sub  a                                           ; $42f0: $97
	sbc  b                                           ; $42f1: $98
	add  a                                           ; $42f2: $87
	ld   a, b                                        ; $42f3: $78
	ld   a, b                                        ; $42f4: $78
	add  a                                           ; $42f5: $87
	adc  c                                           ; $42f6: $89
	sub  a                                           ; $42f7: $97
	adc  b                                           ; $42f8: $88
	add  a                                           ; $42f9: $87
	adc  b                                           ; $42fa: $88
	ld   [hl], a                                     ; $42fb: $77
	add  a                                           ; $42fc: $87
	sub  a                                           ; $42fd: $97
	ld   a, c                                        ; $42fe: $79
	ld   a, c                                        ; $42ff: $79
	ld   a, b                                        ; $4300: $78
	adc  b                                           ; $4301: $88
	adc  b                                           ; $4302: $88
	adc  b                                           ; $4303: $88
	add  a                                           ; $4304: $87
	adc  b                                           ; $4305: $88
	add  a                                           ; $4306: $87
	sbc  b                                           ; $4307: $98
	ld   a, c                                        ; $4308: $79
	ld   a, c                                        ; $4309: $79
	ld   a, c                                        ; $430a: $79
	ld   [hl], a                                     ; $430b: $77
	add  a                                           ; $430c: $87
	add  a                                           ; $430d: $87
	add  a                                           ; $430e: $87
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	ld   a, b                                        ; $4311: $78
	ld   a, b                                        ; $4312: $78
	ld   a, b                                        ; $4313: $78
	adc  b                                           ; $4314: $88
	add  a                                           ; $4315: $87
	add  a                                           ; $4316: $87
	adc  b                                           ; $4317: $88
	ld   a, b                                        ; $4318: $78
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	ld   a, b                                        ; $431b: $78
	ld   [hl], a                                     ; $431c: $77
	add  a                                           ; $431d: $87
	adc  b                                           ; $431e: $88
	ld   a, c                                        ; $431f: $79
	ld   a, b                                        ; $4320: $78
	ld   l, b                                        ; $4321: $68
	adc  b                                           ; $4322: $88
	add  a                                           ; $4323: $87
	sub  a                                           ; $4324: $97
	and  a                                           ; $4325: $a7
	adc  c                                           ; $4326: $89
	ld   a, b                                        ; $4327: $78
	adc  b                                           ; $4328: $88
	adc  b                                           ; $4329: $88
	ld   a, c                                        ; $432a: $79
	ld   a, b                                        ; $432b: $78
	ld   a, b                                        ; $432c: $78
	sub  a                                           ; $432d: $97
	sbc  b                                           ; $432e: $98
	adc  c                                           ; $432f: $89
	adc  b                                           ; $4330: $88
	ld   a, c                                        ; $4331: $79
	adc  b                                           ; $4332: $88
	ld   [hl], a                                     ; $4333: $77
	sub  a                                           ; $4334: $97
	ld   a, c                                        ; $4335: $79
	ld   a, b                                        ; $4336: $78
	sbc  b                                           ; $4337: $98
	add  a                                           ; $4338: $87
	ld   a, b                                        ; $4339: $78
	sbc  b                                           ; $433a: $98
	ld   a, b                                        ; $433b: $78
	adc  b                                           ; $433c: $88
	ld   a, b                                        ; $433d: $78
	adc  c                                           ; $433e: $89
	ld   a, b                                        ; $433f: $78
	adc  c                                           ; $4340: $89
	add  a                                           ; $4341: $87
	sub  a                                           ; $4342: $97
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	ld   a, b                                        ; $4345: $78
	ld   a, b                                        ; $4346: $78
	adc  b                                           ; $4347: $88
	adc  b                                           ; $4348: $88
	add  a                                           ; $4349: $87
	adc  b                                           ; $434a: $88
	add  a                                           ; $434b: $87
	sbc  b                                           ; $434c: $98
	adc  b                                           ; $434d: $88
	ld   a, c                                        ; $434e: $79
	ld   a, b                                        ; $434f: $78
	add  a                                           ; $4350: $87
	add  a                                           ; $4351: $87
	sbc  c                                           ; $4352: $99
	ld   a, c                                        ; $4353: $79
	ld   a, b                                        ; $4354: $78
	adc  b                                           ; $4355: $88
	add  a                                           ; $4356: $87
	add  a                                           ; $4357: $87
	sub  a                                           ; $4358: $97
	adc  b                                           ; $4359: $88
	ld   a, c                                        ; $435a: $79
	ld   a, c                                        ; $435b: $79
	adc  b                                           ; $435c: $88
	adc  b                                           ; $435d: $88
	add  a                                           ; $435e: $87
	sub  a                                           ; $435f: $97
	adc  c                                           ; $4360: $89
	adc  b                                           ; $4361: $88
	sbc  b                                           ; $4362: $98
	ld   a, c                                        ; $4363: $79
	adc  b                                           ; $4364: $88
	sbc  b                                           ; $4365: $98
	ld   a, b                                        ; $4366: $78
	sub  a                                           ; $4367: $97
	adc  b                                           ; $4368: $88
	adc  b                                           ; $4369: $88
	ld   a, c                                        ; $436a: $79
	adc  b                                           ; $436b: $88
	adc  b                                           ; $436c: $88
	add  a                                           ; $436d: $87
	adc  c                                           ; $436e: $89
	adc  b                                           ; $436f: $88
	add  a                                           ; $4370: $87
	adc  b                                           ; $4371: $88
	ld   a, c                                        ; $4372: $79
	add  a                                           ; $4373: $87
	sbc  c                                           ; $4374: $99
	ld   a, b                                        ; $4375: $78
	sbc  b                                           ; $4376: $98
	ld   a, b                                        ; $4377: $78
	add  a                                           ; $4378: $87
	sub  a                                           ; $4379: $97
	adc  b                                           ; $437a: $88
	ld   a, b                                        ; $437b: $78
	adc  b                                           ; $437c: $88
	add  a                                           ; $437d: $87
	sbc  b                                           ; $437e: $98
	adc  b                                           ; $437f: $88
	ld   a, b                                        ; $4380: $78
	adc  b                                           ; $4381: $88
	adc  b                                           ; $4382: $88
	add  a                                           ; $4383: $87
	add  a                                           ; $4384: $87
	sbc  b                                           ; $4385: $98
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	ld   a, b                                        ; $4388: $78
	ld   a, c                                        ; $4389: $79
	adc  c                                           ; $438a: $89
	ld   a, b                                        ; $438b: $78
	add  a                                           ; $438c: $87
	sub  a                                           ; $438d: $97
	adc  b                                           ; $438e: $88
	adc  b                                           ; $438f: $88
	add  a                                           ; $4390: $87
	ld   a, c                                        ; $4391: $79
	ld   a, b                                        ; $4392: $78
	adc  b                                           ; $4393: $88
	add  a                                           ; $4394: $87
	adc  b                                           ; $4395: $88
	adc  b                                           ; $4396: $88
	sbc  c                                           ; $4397: $99
	ld   a, b                                        ; $4398: $78
	adc  b                                           ; $4399: $88
	adc  c                                           ; $439a: $89
	adc  c                                           ; $439b: $89
	ld   [hl], a                                     ; $439c: $77
	add  a                                           ; $439d: $87
	sub  a                                           ; $439e: $97
	sbc  c                                           ; $439f: $99
	adc  c                                           ; $43a0: $89
	ld   a, b                                        ; $43a1: $78
	sub  a                                           ; $43a2: $97
	adc  b                                           ; $43a3: $88
	sbc  b                                           ; $43a4: $98
	adc  b                                           ; $43a5: $88
	adc  b                                           ; $43a6: $88
	ld   a, c                                        ; $43a7: $79
	ld   a, c                                        ; $43a8: $79
	adc  b                                           ; $43a9: $88
	adc  b                                           ; $43aa: $88
	sub  a                                           ; $43ab: $97
	sbc  b                                           ; $43ac: $98
	sbc  b                                           ; $43ad: $98
	add  a                                           ; $43ae: $87
	and  a                                           ; $43af: $a7
	ld   a, c                                        ; $43b0: $79
	ld   a, c                                        ; $43b1: $79
	ld   l, c                                        ; $43b2: $69
	adc  b                                           ; $43b3: $88
	add  a                                           ; $43b4: $87
	sub  a                                           ; $43b5: $97
	add  a                                           ; $43b6: $87
	sbc  c                                           ; $43b7: $99
	ld   a, c                                        ; $43b8: $79
	ld   a, c                                        ; $43b9: $79
	ld   a, c                                        ; $43ba: $79
	adc  b                                           ; $43bb: $88
	sub  a                                           ; $43bc: $97
	add  a                                           ; $43bd: $87
	sbc  b                                           ; $43be: $98
	adc  b                                           ; $43bf: $88
	add  a                                           ; $43c0: $87
	sbc  c                                           ; $43c1: $99
	ld   a, b                                        ; $43c2: $78
	ld   a, c                                        ; $43c3: $79
	ld   a, b                                        ; $43c4: $78
	sub  a                                           ; $43c5: $97
	and  a                                           ; $43c6: $a7
	adc  b                                           ; $43c7: $88
	adc  b                                           ; $43c8: $88
	ld   a, c                                        ; $43c9: $79
	add  a                                           ; $43ca: $87
	sub  a                                           ; $43cb: $97
	sbc  c                                           ; $43cc: $99
	adc  b                                           ; $43cd: $88
	adc  b                                           ; $43ce: $88
	adc  b                                           ; $43cf: $88
	ld   a, b                                        ; $43d0: $78
	adc  b                                           ; $43d1: $88
	adc  b                                           ; $43d2: $88
	sub  a                                           ; $43d3: $97
	sbc  b                                           ; $43d4: $98
	adc  c                                           ; $43d5: $89
	ld   a, c                                        ; $43d6: $79
	ld   a, c                                        ; $43d7: $79
	adc  b                                           ; $43d8: $88
	sbc  b                                           ; $43d9: $98
	sub  a                                           ; $43da: $97
	sub  a                                           ; $43db: $97
	adc  b                                           ; $43dc: $88
	adc  b                                           ; $43dd: $88
	ld   a, c                                        ; $43de: $79
	ld   a, c                                        ; $43df: $79
	ld   a, c                                        ; $43e0: $79
	adc  c                                           ; $43e1: $89
	add  a                                           ; $43e2: $87
	sub  a                                           ; $43e3: $97
	sub  a                                           ; $43e4: $97
	adc  c                                           ; $43e5: $89
	ld   a, c                                        ; $43e6: $79
	ld   a, b                                        ; $43e7: $78
	add  a                                           ; $43e8: $87
	sbc  b                                           ; $43e9: $98
	adc  c                                           ; $43ea: $89
	ld   l, c                                        ; $43eb: $69
	add  a                                           ; $43ec: $87
	sbc  b                                           ; $43ed: $98
	sbc  b                                           ; $43ee: $98
	sub  a                                           ; $43ef: $97
	sbc  b                                           ; $43f0: $98
	ld   a, d                                        ; $43f1: $7a
	ld   a, c                                        ; $43f2: $79
	ld   a, b                                        ; $43f3: $78
	adc  c                                           ; $43f4: $89
	sub  [hl]                                        ; $43f5: $96
	sub  a                                           ; $43f6: $97
	adc  b                                           ; $43f7: $88
	adc  b                                           ; $43f8: $88
	adc  b                                           ; $43f9: $88
	ld   a, c                                        ; $43fa: $79
	adc  b                                           ; $43fb: $88
	ld   a, b                                        ; $43fc: $78
	adc  c                                           ; $43fd: $89
	sub  a                                           ; $43fe: $97
	sub  a                                           ; $43ff: $97
	adc  b                                           ; $4400: $88
	adc  c                                           ; $4401: $89
	adc  b                                           ; $4402: $88
	ld   a, c                                        ; $4403: $79
	adc  b                                           ; $4404: $88
	adc  b                                           ; $4405: $88
	sub  a                                           ; $4406: $97
	sbc  b                                           ; $4407: $98
	sbc  b                                           ; $4408: $98
	adc  b                                           ; $4409: $88
	adc  b                                           ; $440a: $88
	adc  b                                           ; $440b: $88
	sub  a                                           ; $440c: $97
	adc  b                                           ; $440d: $88
	adc  b                                           ; $440e: $88
	adc  b                                           ; $440f: $88
	ld   a, c                                        ; $4410: $79
	ld   a, b                                        ; $4411: $78
	add  a                                           ; $4412: $87
	and  a                                           ; $4413: $a7
	ld   a, c                                        ; $4414: $79
	sbc  b                                           ; $4415: $98
	adc  c                                           ; $4416: $89
	ld   a, c                                        ; $4417: $79
	ld   l, b                                        ; $4418: $68
	sub  [hl]                                        ; $4419: $96
	sbc  b                                           ; $441a: $98
	adc  b                                           ; $441b: $88
	ld   a, b                                        ; $441c: $78
	add  a                                           ; $441d: $87
	ld   a, b                                        ; $441e: $78
	adc  b                                           ; $441f: $88
	adc  b                                           ; $4420: $88
	sbc  b                                           ; $4421: $98
	sub  a                                           ; $4422: $97
	sbc  b                                           ; $4423: $98
	ld   a, b                                        ; $4424: $78
	ld   a, b                                        ; $4425: $78
	adc  b                                           ; $4426: $88
	ld   a, c                                        ; $4427: $79
	ld   a, b                                        ; $4428: $78
	add  a                                           ; $4429: $87
	sub  [hl]                                        ; $442a: $96
	xor  b                                           ; $442b: $a8
	ld   a, c                                        ; $442c: $79
	ld   a, d                                        ; $442d: $7a
	ld   l, c                                        ; $442e: $69
	add  a                                           ; $442f: $87
	sub  a                                           ; $4430: $97
	add  a                                           ; $4431: $87
	sub  a                                           ; $4432: $97
	ld   a, d                                        ; $4433: $7a
	add  [hl]                                        ; $4434: $86
	adc  e                                           ; $4435: $8b
	sbc  b                                           ; $4436: $98
	ld   a, c                                        ; $4437: $79
	ld   h, a                                        ; $4438: $67
	ld   [hl], a                                     ; $4439: $77
	sub  l                                           ; $443a: $95
	and  a                                           ; $443b: $a7
	ld   a, b                                        ; $443c: $78
	ld   l, d                                        ; $443d: $6a
	ld   a, b                                        ; $443e: $78
	ld   l, b                                        ; $443f: $68
	and  l                                           ; $4440: $a5
	and  a                                           ; $4441: $a7
	adc  b                                           ; $4442: $88
	adc  b                                           ; $4443: $88
	ld   a, c                                        ; $4444: $79
	ld   l, c                                        ; $4445: $69
	add  a                                           ; $4446: $87
	ld   a, b                                        ; $4447: $78
	add  l                                           ; $4448: $85
	or   a                                           ; $4449: $b7
	sub  a                                           ; $444a: $97
	ld   a, c                                        ; $444b: $79
	ld   a, c                                        ; $444c: $79
	ld   c, e                                        ; $444d: $4b
	or   [hl]                                        ; $444e: $b6
	sbc  b                                           ; $444f: $98
	add  l                                           ; $4450: $85
	sub  [hl]                                        ; $4451: $96
	adc  d                                           ; $4452: $8a
	ld   e, c                                        ; $4453: $59
	ld   l, b                                        ; $4454: $68
	ld   l, b                                        ; $4455: $68
	sbc  b                                           ; $4456: $98
	halt                                             ; $4457: $76
	or   a                                           ; $4458: $b7
	sub  a                                           ; $4459: $97
	adc  d                                           ; $445a: $8a
	ld   a, c                                        ; $445b: $79
	ld   a, e                                        ; $445c: $7b
	ld   [hl], a                                     ; $445d: $77
	ld   a, b                                        ; $445e: $78
	add  [hl]                                        ; $445f: $86
	sub  [hl]                                        ; $4460: $96
	add  a                                           ; $4461: $87
	ld   a, b                                        ; $4462: $78
	ld   a, b                                        ; $4463: $78
	adc  c                                           ; $4464: $89
	adc  c                                           ; $4465: $89
	ld   a, b                                        ; $4466: $78
	adc  b                                           ; $4467: $88
	halt                                             ; $4468: $76
	sub  a                                           ; $4469: $97
	add  [hl]                                        ; $446a: $86
	sbc  b                                           ; $446b: $98
	ld   [hl], a                                     ; $446c: $77
	ld   a, c                                        ; $446d: $79
	ld   a, c                                        ; $446e: $79
	ld   l, b                                        ; $446f: $68
	sub  l                                           ; $4470: $95
	sub  a                                           ; $4471: $97
	adc  b                                           ; $4472: $88
	adc  c                                           ; $4473: $89
	ld   l, e                                        ; $4474: $6b
	ld   a, b                                        ; $4475: $78
	add  a                                           ; $4476: $87
	sub  [hl]                                        ; $4477: $96
	sub  a                                           ; $4478: $97
	ld   a, c                                        ; $4479: $79
	ld   a, c                                        ; $447a: $79
	adc  b                                           ; $447b: $88
	ld   l, b                                        ; $447c: $68
	sub  a                                           ; $447d: $97
	ld   a, b                                        ; $447e: $78
	sub  a                                           ; $447f: $97
	sub  a                                           ; $4480: $97
	sbc  c                                           ; $4481: $99
	ld   l, c                                        ; $4482: $69
	ld   a, d                                        ; $4483: $7a
	ld   h, a                                        ; $4484: $67
	and  a                                           ; $4485: $a7
	adc  b                                           ; $4486: $88
	sub  [hl]                                        ; $4487: $96
	sbc  c                                           ; $4488: $99
	ld   a, c                                        ; $4489: $79
	ld   l, c                                        ; $448a: $69
	ld   a, b                                        ; $448b: $78
	ld   [hl], a                                     ; $448c: $77
	and  [hl]                                        ; $448d: $a6
	sbc  b                                           ; $448e: $98
	ld   a, c                                        ; $448f: $79
	add  [hl]                                        ; $4490: $86
	sbc  d                                           ; $4491: $9a
	ld   a, b                                        ; $4492: $78
	adc  c                                           ; $4493: $89
	ld   a, c                                        ; $4494: $79
	ld   a, b                                        ; $4495: $78
	sub  a                                           ; $4496: $97
	adc  b                                           ; $4497: $88
	add  [hl]                                        ; $4498: $86
	sbc  c                                           ; $4499: $99
	ld   a, c                                        ; $449a: $79
	adc  b                                           ; $449b: $88
	ld   a, d                                        ; $449c: $7a
	ld   [hl], a                                     ; $449d: $77
	sub  a                                           ; $449e: $97
	sbc  b                                           ; $449f: $98
	ld   [hl], a                                     ; $44a0: $77
	sbc  b                                           ; $44a1: $98
	ld   l, c                                        ; $44a2: $69
	sub  a                                           ; $44a3: $97
	sub  a                                           ; $44a4: $97
	ld   a, b                                        ; $44a5: $78
	add  a                                           ; $44a6: $87
	sbc  c                                           ; $44a7: $99
	ld   l, b                                        ; $44a8: $68
	sub  a                                           ; $44a9: $97
	sub  a                                           ; $44aa: $97
	adc  b                                           ; $44ab: $88
	ld   a, c                                        ; $44ac: $79
	ld   a, c                                        ; $44ad: $79
	adc  b                                           ; $44ae: $88
	and  a                                           ; $44af: $a7
	add  a                                           ; $44b0: $87
	xor  b                                           ; $44b1: $a8
	ld   a, b                                        ; $44b2: $78
	ld   a, c                                        ; $44b3: $79
	halt                                             ; $44b4: $76
	adc  c                                           ; $44b5: $89
	add  [hl]                                        ; $44b6: $86
	sbc  c                                           ; $44b7: $99
	adc  c                                           ; $44b8: $89
	ld   a, c                                        ; $44b9: $79
	add  a                                           ; $44ba: $87
	ld   a, c                                        ; $44bb: $79
	sub  a                                           ; $44bc: $97
	adc  b                                           ; $44bd: $88
	sub  a                                           ; $44be: $97
	sub  [hl]                                        ; $44bf: $96
	sbc  c                                           ; $44c0: $99
	ld   a, c                                        ; $44c1: $79
	ld   a, c                                        ; $44c2: $79
	ld   [hl], a                                     ; $44c3: $77
	add  a                                           ; $44c4: $87
	sub  a                                           ; $44c5: $97
	adc  c                                           ; $44c6: $89
	adc  c                                           ; $44c7: $89
	adc  b                                           ; $44c8: $88
	adc  b                                           ; $44c9: $88
	sub  a                                           ; $44ca: $97
	xor  b                                           ; $44cb: $a8
	adc  c                                           ; $44cc: $89
	ld   [hl], a                                     ; $44cd: $77
	sbc  c                                           ; $44ce: $99
	ld   c, d                                        ; $44cf: $4a
	add  [hl]                                        ; $44d0: $86
	adc  b                                           ; $44d1: $88
	add  a                                           ; $44d2: $87
	sub  a                                           ; $44d3: $97
	adc  c                                           ; $44d4: $89
	ld   a, c                                        ; $44d5: $79
	and  a                                           ; $44d6: $a7
	ld   a, e                                        ; $44d7: $7b
	add  [hl]                                        ; $44d8: $86
	ld   a, c                                        ; $44d9: $79
	sub  [hl]                                        ; $44da: $96
	ld   a, b                                        ; $44db: $78
	sub  a                                           ; $44dc: $97
	ld   l, b                                        ; $44dd: $68
	and  a                                           ; $44de: $a7
	ld   l, c                                        ; $44df: $69
	sbc  b                                           ; $44e0: $98
	ld   l, c                                        ; $44e1: $69
	sbc  d                                           ; $44e2: $9a
	sub  a                                           ; $44e3: $97
	cp   d                                           ; $44e4: $ba
	ld   a, b                                        ; $44e5: $78
	adc  d                                           ; $44e6: $8a
	sub  [hl]                                        ; $44e7: $96
	adc  c                                           ; $44e8: $89
	add  l                                           ; $44e9: $85
	ld   a, b                                        ; $44ea: $78
	ld   h, a                                        ; $44eb: $67
	ld   h, a                                        ; $44ec: $67
	sbc  b                                           ; $44ed: $98
	ld   a, b                                        ; $44ee: $78
	cp   b                                           ; $44ef: $b8
	adc  h                                           ; $44f0: $8c
	xor  d                                           ; $44f1: $aa
	xor  c                                           ; $44f2: $a9
	xor  d                                           ; $44f3: $aa
	ld   [hl], a                                     ; $44f4: $77
	xor  b                                           ; $44f5: $a8
	ld   d, [hl]                                     ; $44f6: $56
	ld   h, [hl]                                     ; $44f7: $66
	ld   d, l                                        ; $44f8: $55
	ld   h, [hl]                                     ; $44f9: $66
	halt                                             ; $44fa: $76
	ld   a, c                                        ; $44fb: $79
	ld   a, b                                        ; $44fc: $78
	sbc  d                                           ; $44fd: $9a
	sbc  d                                           ; $44fe: $9a
	call z, $cabc                                    ; $44ff: $cc $bc $ca
	sbc  b                                           ; $4502: $98
	sub  [hl]                                        ; $4503: $96
	inc  sp                                          ; $4504: $33
	inc  sp                                          ; $4505: $33
	inc  sp                                          ; $4506: $33
	inc  h                                           ; $4507: $24
	inc  sp                                          ; $4508: $33
	ld   d, a                                        ; $4509: $57
	ld   a, d                                        ; $450a: $7a
	call $ffff                                       ; $450b: $cd $ff $ff
	cp   $ec                                         ; $450e: $fe $ec
	xor  b                                           ; $4510: $a8
	ld   d, d                                        ; $4511: $52
	dec  d                                           ; $4512: $15
	ld   bc, $1131                                   ; $4513: $01 $31 $11
	dec  h                                           ; $4516: $25
	ld   e, c                                        ; $4517: $59
	adc  a                                           ; $4518: $8f
	rst  $38                                         ; $4519: $ff
	rst  $38                                         ; $451a: $ff
	rst  $38                                         ; $451b: $ff
	rst  $38                                         ; $451c: $ff
	ld   hl, sp+$53                                  ; $451d: $f8 $53
	ld   hl, $1111                                   ; $451f: $21 $11 $11
	ld   de, $4311                                   ; $4522: $11 $11 $43
	sbc  d                                           ; $4525: $9a
	rst  $28                                         ; $4526: $ef
	rst  $38                                         ; $4527: $ff
	rst  $38                                         ; $4528: $ff
	rst  $38                                         ; $4529: $ff
	cp   $d5                                         ; $452a: $fe $d5
	ld   h, c                                        ; $452c: $61
	ld   de, $1201                                   ; $452d: $11 $01 $12
	ld   de, $5711                                   ; $4530: $11 $11 $57
	cp   c                                           ; $4533: $b9
	rst  $38                                         ; $4534: $ff
	rst  $38                                         ; $4535: $ff
	rst  $38                                         ; $4536: $ff
	rst  $38                                         ; $4537: $ff
	ld   [$11b6], a                                  ; $4538: $ea $b6 $11
	ld   [de], a                                     ; $453b: $12
	ld   de, $1112                                   ; $453c: $11 $12 $11
	dec  b                                           ; $453f: $05
	ld   l, b                                        ; $4540: $68
	sbc  a                                           ; $4541: $9f
	rst  $38                                         ; $4542: $ff
	rst  $38                                         ; $4543: $ff
	rst  $38                                         ; $4544: $ff
	rst  $38                                         ; $4545: $ff
	db   $ed                                         ; $4546: $ed
	add  h                                           ; $4547: $84
	ld   d, c                                        ; $4548: $51
	ld   de, $1211                                   ; $4549: $11 $11 $12
	ld   de, $7a23                                   ; $454c: $11 $23 $7a
	xor  [hl]                                        ; $454f: $ae
	rst  $38                                         ; $4550: $ff
	rst  $38                                         ; $4551: $ff
	rst  $38                                         ; $4552: $ff
	rst  $38                                         ; $4553: $ff
	call z, $3174                                    ; $4554: $cc $74 $31
	ld   de, $1121                                   ; $4557: $11 $21 $11
	ld   de, $5c34                                   ; $455a: $11 $34 $5c
	xor  h                                           ; $455d: $ac
	rst  $38                                         ; $455e: $ff
	rst  $38                                         ; $455f: $ff
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
	bit  6, e                                        ; $4562: $cb $73
	inc  sp                                          ; $4564: $33
	ld   de, $1121                                   ; $4565: $11 $21 $11
	ld   de, $5b43                                   ; $4568: $11 $43 $5b
	xor  l                                           ; $456b: $ad
	rst  $38                                         ; $456c: $ff
	rst  $38                                         ; $456d: $ff
	rst  $38                                         ; $456e: $ff
	cp   $cc                                         ; $456f: $fe $cc
	halt                                             ; $4571: $76
	ld   d, d                                        ; $4572: $52
	ld   de, $1231                                   ; $4573: $11 $31 $12
	inc  de                                          ; $4576: $13
	inc  hl                                          ; $4577: $23
	ld   l, d                                        ; $4578: $6a
	sbc  c                                           ; $4579: $99
	rst  $38                                         ; $457a: $ff
	rst  $38                                         ; $457b: $ff
	rst  $38                                         ; $457c: $ff
	db   $fd                                         ; $457d: $fd
	cp   [hl]                                        ; $457e: $be
	or   l                                           ; $457f: $b5
	ld   d, [hl]                                     ; $4580: $56
	ld   sp, $3222                                   ; $4581: $31 $22 $32
	ld   [de], a                                     ; $4584: $12

Jump_0be_4585:
	ld   h, d                                        ; $4585: $62
	daa                                              ; $4586: $27
	xor  b                                           ; $4587: $a8
	sbc  l                                           ; $4588: $9d
	xor  $ce                                         ; $4589: $ee $ce
	rst  $38                                         ; $458b: $ff
	call $a4ca                                       ; $458c: $cd $ca $a4
	ld   h, h                                        ; $458f: $64
	inc  sp                                          ; $4590: $33
	ld   b, e                                        ; $4591: $43
	dec  d                                           ; $4592: $15
	ld   [hl-], a                                    ; $4593: $32
	inc  [hl]                                        ; $4594: $34
	halt                                             ; $4595: $76
	adc  d                                           ; $4596: $8a
	call $feeb                                       ; $4597: $cd $eb $fe
	call c, $a9bd                                    ; $459a: $dc $bd $a9
	ld   [hl], a                                     ; $459d: $77
	add  e                                           ; $459e: $83
	inc  [hl]                                        ; $459f: $34
	ld   d, e                                        ; $45a0: $53
	inc  h                                           ; $45a1: $24
	ld   b, l                                        ; $45a2: $45
	inc  sp                                          ; $45a3: $33
	ld   a, c                                        ; $45a4: $79
	sub  [hl]                                        ; $45a5: $96
	cp   a                                           ; $45a6: $bf
	xor  c                                           ; $45a7: $a9
	rst  $28                                         ; $45a8: $ef
	res  7, a                                        ; $45a9: $cb $bf
	or   a                                           ; $45ab: $b7
	sbc  c                                           ; $45ac: $99
	ld   [hl], e                                     ; $45ad: $73
	ld   b, [hl]                                     ; $45ae: $46
	ld   d, h                                        ; $45af: $54
	ld   h, $62                                      ; $45b0: $26 $62
	ld   b, [hl]                                     ; $45b2: $46
	ld   [hl], l                                     ; $45b3: $75
	ld   h, a                                        ; $45b4: $67
	xor  e                                           ; $45b5: $ab
	sbc  d                                           ; $45b6: $9a
	adc  $ab                                         ; $45b7: $ce $ab
	call c, $b89a                                    ; $45b9: $dc $9a $b8
	ld   [hl], a                                     ; $45bc: $77
	halt                                             ; $45bd: $76
	ld   b, h                                        ; $45be: $44
	halt                                             ; $45bf: $76
	dec  [hl]                                        ; $45c0: $35
	ld   [hl], l                                     ; $45c1: $75
	ld   d, l                                        ; $45c2: $55
	ld   l, b                                        ; $45c3: $68
	ld   a, b                                        ; $45c4: $78
	sbc  d                                           ; $45c5: $9a
	xor  d                                           ; $45c6: $aa
	ret  z                                           ; $45c7: $c8

	xor  h                                           ; $45c8: $ac
	sbc  e                                           ; $45c9: $9b
	xor  e                                           ; $45ca: $ab
	sbc  d                                           ; $45cb: $9a
	add  [hl]                                        ; $45cc: $86
	add  [hl]                                        ; $45cd: $86
	ld   [hl], a                                     ; $45ce: $77
	ld   d, a                                        ; $45cf: $57
	ld   [hl], a                                     ; $45d0: $77
	ld   e, c                                        ; $45d1: $59
	ld   h, h                                        ; $45d2: $64
	sub  a                                           ; $45d3: $97
	ld   l, b                                        ; $45d4: $68
	sub  a                                           ; $45d5: $97
	ld   a, d                                        ; $45d6: $7a
	sbc  d                                           ; $45d7: $9a
	ld   a, b                                        ; $45d8: $78
	xor  d                                           ; $45d9: $aa
	add  a                                           ; $45da: $87
	and  a                                           ; $45db: $a7
	sbc  b                                           ; $45dc: $98
	adc  c                                           ; $45dd: $89
	ld   [hl], a                                     ; $45de: $77
	adc  c                                           ; $45df: $89
	ld   l, c                                        ; $45e0: $69
	adc  c                                           ; $45e1: $89
	ld   [hl], a                                     ; $45e2: $77
	sub  a                                           ; $45e3: $97
	add  [hl]                                        ; $45e4: $86
	sub  [hl]                                        ; $45e5: $96
	ld   a, b                                        ; $45e6: $78
	ld   [hl], a                                     ; $45e7: $77
	ld   a, b                                        ; $45e8: $78
	ld   e, d                                        ; $45e9: $5a
	ld   a, c                                        ; $45ea: $79
	and  a                                           ; $45eb: $a7
	sbc  b                                           ; $45ec: $98
	xor  c                                           ; $45ed: $a9
	adc  b                                           ; $45ee: $88
	sbc  c                                           ; $45ef: $99
	sbc  c                                           ; $45f0: $99
	xor  b                                           ; $45f1: $a8
	ld   [hl], a                                     ; $45f2: $77
	adc  c                                           ; $45f3: $89
	ld   l, b                                        ; $45f4: $68
	ld   [hl], a                                     ; $45f5: $77
	add  [hl]                                        ; $45f6: $86
	ld   [hl], a                                     ; $45f7: $77
	adc  b                                           ; $45f8: $88
	ld   h, a                                        ; $45f9: $67
	ld   a, b                                        ; $45fa: $78
	adc  b                                           ; $45fb: $88
	adc  d                                           ; $45fc: $8a
	sbc  b                                           ; $45fd: $98
	sbc  c                                           ; $45fe: $99
	cp   b                                           ; $45ff: $b8
	sbc  b                                           ; $4600: $98
	sbc  c                                           ; $4601: $99
	ld   a, c                                        ; $4602: $79
	ld   a, c                                        ; $4603: $79
	ld   [hl], a                                     ; $4604: $77
	ld   [hl], a                                     ; $4605: $77
	halt                                             ; $4606: $76
	add  [hl]                                        ; $4607: $86
	sbc  b                                           ; $4608: $98
	ld   a, c                                        ; $4609: $79
	ld   a, b                                        ; $460a: $78
	adc  c                                           ; $460b: $89
	sbc  c                                           ; $460c: $99
	ld   a, b                                        ; $460d: $78
	sbc  b                                           ; $460e: $98
	xor  b                                           ; $460f: $a8
	ld   a, b                                        ; $4610: $78
	ld   a, b                                        ; $4611: $78
	ld   a, b                                        ; $4612: $78
	add  [hl]                                        ; $4613: $86
	ld   [hl], a                                     ; $4614: $77
	ld   a, c                                        ; $4615: $79
	ld   a, c                                        ; $4616: $79
	sbc  b                                           ; $4617: $98
	ld   a, c                                        ; $4618: $79
	sbc  c                                           ; $4619: $99
	ld   a, c                                        ; $461a: $79
	xor  b                                           ; $461b: $a8
	sub  [hl]                                        ; $461c: $96
	sbc  b                                           ; $461d: $98
	adc  b                                           ; $461e: $88
	ld   a, c                                        ; $461f: $79
	adc  c                                           ; $4620: $89
	ld   l, b                                        ; $4621: $68
	add  a                                           ; $4622: $87
	ld   [hl], a                                     ; $4623: $77
	add  a                                           ; $4624: $87
	ld   a, b                                        ; $4625: $78
	add  a                                           ; $4626: $87
	adc  b                                           ; $4627: $88
	sbc  c                                           ; $4628: $99
	sbc  b                                           ; $4629: $98
	adc  c                                           ; $462a: $89
	adc  b                                           ; $462b: $88
	adc  d                                           ; $462c: $8a
	ld   a, b                                        ; $462d: $78
	sbc  b                                           ; $462e: $98
	add  a                                           ; $462f: $87
	ld   a, c                                        ; $4630: $79
	add  a                                           ; $4631: $87
	adc  b                                           ; $4632: $88
	adc  b                                           ; $4633: $88
	adc  c                                           ; $4634: $89
	adc  b                                           ; $4635: $88
	ld   a, c                                        ; $4636: $79
	adc  b                                           ; $4637: $88
	adc  b                                           ; $4638: $88
	sbc  b                                           ; $4639: $98
	adc  b                                           ; $463a: $88
	sbc  c                                           ; $463b: $99
	ld   a, b                                        ; $463c: $78
	add  a                                           ; $463d: $87
	ld   [hl], a                                     ; $463e: $77
	add  a                                           ; $463f: $87
	adc  b                                           ; $4640: $88
	adc  c                                           ; $4641: $89
	adc  b                                           ; $4642: $88
	ld   a, b                                        ; $4643: $78
	xor  b                                           ; $4644: $a8
	adc  b                                           ; $4645: $88
	adc  c                                           ; $4646: $89
	sub  a                                           ; $4647: $97
	sbc  b                                           ; $4648: $98
	ld   a, b                                        ; $4649: $78
	ld   a, c                                        ; $464a: $79
	sub  a                                           ; $464b: $97
	adc  b                                           ; $464c: $88
	adc  b                                           ; $464d: $88
	adc  b                                           ; $464e: $88
	adc  b                                           ; $464f: $88
	adc  b                                           ; $4650: $88
	adc  c                                           ; $4651: $89
	sbc  c                                           ; $4652: $99
	adc  b                                           ; $4653: $88
	add  a                                           ; $4654: $87
	sbc  b                                           ; $4655: $98
	adc  b                                           ; $4656: $88
	adc  c                                           ; $4657: $89
	sub  a                                           ; $4658: $97
	ld   a, c                                        ; $4659: $79
	adc  b                                           ; $465a: $88
	ld   a, c                                        ; $465b: $79
	adc  b                                           ; $465c: $88
	ld   a, b                                        ; $465d: $78
	adc  b                                           ; $465e: $88
	adc  b                                           ; $465f: $88
	adc  b                                           ; $4660: $88
	adc  b                                           ; $4661: $88
	add  a                                           ; $4662: $87
	adc  b                                           ; $4663: $88
	sbc  b                                           ; $4664: $98
	ld   a, c                                        ; $4665: $79
	adc  b                                           ; $4666: $88
	adc  b                                           ; $4667: $88
	ld   a, c                                        ; $4668: $79
	add  a                                           ; $4669: $87
	adc  c                                           ; $466a: $89
	sbc  b                                           ; $466b: $98
	adc  b                                           ; $466c: $88
	sbc  b                                           ; $466d: $98
	adc  b                                           ; $466e: $88
	sbc  c                                           ; $466f: $99
	adc  b                                           ; $4670: $88
	adc  c                                           ; $4671: $89
	ld   a, b                                        ; $4672: $78
	sub  a                                           ; $4673: $97
	sub  a                                           ; $4674: $97
	sbc  b                                           ; $4675: $98
	ld   a, c                                        ; $4676: $79
	adc  b                                           ; $4677: $88
	adc  c                                           ; $4678: $89
	sbc  b                                           ; $4679: $98
	adc  b                                           ; $467a: $88
	adc  b                                           ; $467b: $88
	ld   a, b                                        ; $467c: $78
	adc  c                                           ; $467d: $89
	adc  b                                           ; $467e: $88
	adc  b                                           ; $467f: $88
	adc  b                                           ; $4680: $88
	add  a                                           ; $4681: $87
	add  a                                           ; $4682: $87
	adc  c                                           ; $4683: $89
	adc  b                                           ; $4684: $88
	adc  b                                           ; $4685: $88
	adc  b                                           ; $4686: $88
	ld   a, b                                        ; $4687: $78
	sbc  b                                           ; $4688: $98
	ld   a, c                                        ; $4689: $79
	add  a                                           ; $468a: $87
	adc  b                                           ; $468b: $88
	adc  c                                           ; $468c: $89
	sbc  b                                           ; $468d: $98
	adc  b                                           ; $468e: $88
	sbc  b                                           ; $468f: $98
	adc  b                                           ; $4690: $88
	adc  b                                           ; $4691: $88
	ld   a, b                                        ; $4692: $78
	adc  b                                           ; $4693: $88
	add  a                                           ; $4694: $87
	adc  b                                           ; $4695: $88
	adc  c                                           ; $4696: $89
	adc  b                                           ; $4697: $88
	adc  b                                           ; $4698: $88
	sub  a                                           ; $4699: $97
	adc  c                                           ; $469a: $89
	add  a                                           ; $469b: $87
	adc  b                                           ; $469c: $88
	adc  b                                           ; $469d: $88
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	adc  b                                           ; $46a1: $88
	add  a                                           ; $46a2: $87
	ld   a, c                                        ; $46a3: $79
	adc  b                                           ; $46a4: $88
	sbc  b                                           ; $46a5: $98
	ld   [hl], a                                     ; $46a6: $77
	sbc  b                                           ; $46a7: $98
	adc  b                                           ; $46a8: $88
	adc  c                                           ; $46a9: $89
	add  a                                           ; $46aa: $87
	adc  b                                           ; $46ab: $88
	adc  b                                           ; $46ac: $88
	ld   a, b                                        ; $46ad: $78
	ld   [hl], a                                     ; $46ae: $77
	adc  b                                           ; $46af: $88
	adc  b                                           ; $46b0: $88
	sub  a                                           ; $46b1: $97
	adc  b                                           ; $46b2: $88
	ld   a, b                                        ; $46b3: $78
	sbc  b                                           ; $46b4: $98
	ld   a, b                                        ; $46b5: $78
	adc  b                                           ; $46b6: $88
	ld   a, b                                        ; $46b7: $78
	adc  b                                           ; $46b8: $88
	add  a                                           ; $46b9: $87
	adc  b                                           ; $46ba: $88
	adc  b                                           ; $46bb: $88
	ld   a, b                                        ; $46bc: $78
	ld   [hl], a                                     ; $46bd: $77
	ld   a, b                                        ; $46be: $78
	adc  b                                           ; $46bf: $88
	ld   a, b                                        ; $46c0: $78
	ld   [hl], a                                     ; $46c1: $77
	adc  c                                           ; $46c2: $89
	adc  b                                           ; $46c3: $88
	add  a                                           ; $46c4: $87
	adc  b                                           ; $46c5: $88
	ld   a, b                                        ; $46c6: $78
	adc  b                                           ; $46c7: $88
	add  a                                           ; $46c8: $87
	ld   a, b                                        ; $46c9: $78
	adc  b                                           ; $46ca: $88
	ld   [hl], a                                     ; $46cb: $77
	adc  b                                           ; $46cc: $88
	ld   [hl], a                                     ; $46cd: $77
	adc  b                                           ; $46ce: $88
	ld   [hl], a                                     ; $46cf: $77
	ld   a, b                                        ; $46d0: $78
	adc  b                                           ; $46d1: $88
	add  a                                           ; $46d2: $87
	adc  b                                           ; $46d3: $88
	add  a                                           ; $46d4: $87
	ld   a, b                                        ; $46d5: $78
	adc  c                                           ; $46d6: $89
	adc  b                                           ; $46d7: $88
	sub  a                                           ; $46d8: $97
	ld   a, b                                        ; $46d9: $78
	ld   a, b                                        ; $46da: $78
	adc  b                                           ; $46db: $88
	adc  b                                           ; $46dc: $88
	adc  b                                           ; $46dd: $88
	ld   [hl], a                                     ; $46de: $77
	ld   a, b                                        ; $46df: $78
	ld   a, b                                        ; $46e0: $78
	adc  b                                           ; $46e1: $88
	adc  b                                           ; $46e2: $88
	adc  b                                           ; $46e3: $88
	adc  b                                           ; $46e4: $88
	adc  b                                           ; $46e5: $88
	adc  b                                           ; $46e6: $88
	ld   a, b                                        ; $46e7: $78
	add  a                                           ; $46e8: $87
	ld   a, b                                        ; $46e9: $78
	adc  b                                           ; $46ea: $88
	add  a                                           ; $46eb: $87
	adc  b                                           ; $46ec: $88
	adc  b                                           ; $46ed: $88
	ld   a, b                                        ; $46ee: $78
	ld   a, b                                        ; $46ef: $78
	ld   [hl], a                                     ; $46f0: $77
	adc  c                                           ; $46f1: $89
	adc  b                                           ; $46f2: $88
	adc  b                                           ; $46f3: $88
	adc  b                                           ; $46f4: $88
	adc  b                                           ; $46f5: $88
	adc  b                                           ; $46f6: $88
	adc  b                                           ; $46f7: $88
	adc  b                                           ; $46f8: $88
	adc  b                                           ; $46f9: $88
	add  a                                           ; $46fa: $87
	adc  b                                           ; $46fb: $88
	ld   a, b                                        ; $46fc: $78
	adc  b                                           ; $46fd: $88
	adc  b                                           ; $46fe: $88
	adc  b                                           ; $46ff: $88
	adc  b                                           ; $4700: $88
	sub  a                                           ; $4701: $97
	adc  c                                           ; $4702: $89
	adc  b                                           ; $4703: $88
	adc  b                                           ; $4704: $88
	adc  b                                           ; $4705: $88
	ld   [hl], a                                     ; $4706: $77
	adc  b                                           ; $4707: $88
	adc  b                                           ; $4708: $88
	adc  b                                           ; $4709: $88
	adc  b                                           ; $470a: $88
	ld   [hl], a                                     ; $470b: $77
	adc  b                                           ; $470c: $88
	adc  b                                           ; $470d: $88
	adc  b                                           ; $470e: $88
	adc  c                                           ; $470f: $89
	adc  b                                           ; $4710: $88
	adc  b                                           ; $4711: $88
	ld   a, b                                        ; $4712: $78
	sbc  b                                           ; $4713: $98
	sbc  b                                           ; $4714: $98
	ld   a, c                                        ; $4715: $79
	sbc  b                                           ; $4716: $98
	adc  b                                           ; $4717: $88
	adc  b                                           ; $4718: $88
	adc  b                                           ; $4719: $88
	adc  b                                           ; $471a: $88
	ld   a, b                                        ; $471b: $78
	adc  b                                           ; $471c: $88
	adc  b                                           ; $471d: $88
	adc  b                                           ; $471e: $88
	sbc  b                                           ; $471f: $98
	adc  b                                           ; $4720: $88
	sbc  b                                           ; $4721: $98
	adc  c                                           ; $4722: $89
	adc  b                                           ; $4723: $88
	adc  b                                           ; $4724: $88
	ld   a, b                                        ; $4725: $78
	adc  b                                           ; $4726: $88
	ld   a, b                                        ; $4727: $78
	adc  b                                           ; $4728: $88
	add  a                                           ; $4729: $87
	adc  b                                           ; $472a: $88
	adc  b                                           ; $472b: $88
	adc  b                                           ; $472c: $88
	sub  a                                           ; $472d: $97
	adc  b                                           ; $472e: $88
	ld   a, b                                        ; $472f: $78
	sbc  b                                           ; $4730: $98
	sbc  b                                           ; $4731: $98
	sbc  b                                           ; $4732: $98
	adc  b                                           ; $4733: $88
	adc  b                                           ; $4734: $88
	adc  b                                           ; $4735: $88
	adc  b                                           ; $4736: $88
	add  a                                           ; $4737: $87
	adc  c                                           ; $4738: $89
	adc  b                                           ; $4739: $88
	adc  b                                           ; $473a: $88
	adc  b                                           ; $473b: $88
	ld   a, b                                        ; $473c: $78
	adc  b                                           ; $473d: $88
	ld   [hl], a                                     ; $473e: $77
	ld   l, d                                        ; $473f: $6a
	rst  ToBoot                                         ; $4740: $c7
	adc  c                                           ; $4741: $89
	sbc  c                                           ; $4742: $99
	ld   [hl], a                                     ; $4743: $77
	sbc  c                                           ; $4744: $99
	sub  [hl]                                        ; $4745: $96
	ld   a, b                                        ; $4746: $78
	ld   a, b                                        ; $4747: $78
	ld   [hl], a                                     ; $4748: $77
	xor  c                                           ; $4749: $a9
	adc  c                                           ; $474a: $89
	sbc  b                                           ; $474b: $98
	sbc  b                                           ; $474c: $98
	ld   a, c                                        ; $474d: $79
	sbc  b                                           ; $474e: $98
	ld   a, b                                        ; $474f: $78
	ld   a, b                                        ; $4750: $78
	sbc  b                                           ; $4751: $98
	adc  b                                           ; $4752: $88
	adc  c                                           ; $4753: $89
	adc  b                                           ; $4754: $88
	ld   a, b                                        ; $4755: $78
	adc  b                                           ; $4756: $88
	adc  b                                           ; $4757: $88
	adc  b                                           ; $4758: $88
	adc  b                                           ; $4759: $88
	add  a                                           ; $475a: $87
	sbc  c                                           ; $475b: $99
	ld   a, b                                        ; $475c: $78
	sbc  c                                           ; $475d: $99
	sub  a                                           ; $475e: $97
	adc  b                                           ; $475f: $88

jr_0be_4760:
	ld   a, b                                        ; $4760: $78
	adc  b                                           ; $4761: $88
	adc  c                                           ; $4762: $89
	ld   a, b                                        ; $4763: $78
	add  a                                           ; $4764: $87
	sub  a                                           ; $4765: $97
	add  l                                           ; $4766: $85

Call_0be_4767:
	ld   a, a                                        ; $4767: $7f
	sbc  c                                           ; $4768: $99
	rst  ToBoot                                         ; $4769: $c7
	add  a                                           ; $476a: $87
	ld   l, c                                        ; $476b: $69
	cp   c                                           ; $476c: $b9
	ld   h, a                                        ; $476d: $67
	sub  [hl]                                        ; $476e: $96
	ld   h, [hl]                                     ; $476f: $66
	ld   a, c                                        ; $4770: $79
	adc  d                                           ; $4771: $8a
	and  a                                           ; $4772: $a7
	ld   l, b                                        ; $4773: $68
	sbc  c                                           ; $4774: $99
	ld   a, b                                        ; $4775: $78
	sub  [hl]                                        ; $4776: $96
	sub  [hl]                                        ; $4777: $96
	ld   [hl], a                                     ; $4778: $77
	ld   l, d                                        ; $4779: $6a
	sub  a                                           ; $477a: $97
	ld   a, c                                        ; $477b: $79
	adc  b                                           ; $477c: $88
	add  a                                           ; $477d: $87
	sbc  b                                           ; $477e: $98
	sub  a                                           ; $477f: $97
	adc  c                                           ; $4780: $89
	ld   [hl], a                                     ; $4781: $77
	sub  a                                           ; $4782: $97
	ld   a, c                                        ; $4783: $79
	ld   a, c                                        ; $4784: $79
	sub  [hl]                                        ; $4785: $96
	sbc  c                                           ; $4786: $99
	ld   l, c                                        ; $4787: $69
	ld   h, a                                        ; $4788: $67
	and  a                                           ; $4789: $a7
	adc  c                                           ; $478a: $89
	ld   [hl], a                                     ; $478b: $77
	sub  a                                           ; $478c: $97
	ld   [hl], a                                     ; $478d: $77
	add  a                                           ; $478e: $87
	sbc  b                                           ; $478f: $98
	ld   a, c                                        ; $4790: $79
	xor  h                                           ; $4791: $ac
	ld   d, e                                        ; $4792: $53
	adc  b                                           ; $4793: $88
	ld   b, [hl]                                     ; $4794: $46
	adc  h                                           ; $4795: $8c
	ld   hl, sp+$5a                                  ; $4796: $f8 $5a
	or   l                                           ; $4798: $b5
	xor  l                                           ; $4799: $ad
	ld   e, b                                        ; $479a: $58
	sub  h                                           ; $479b: $94
	ld   [hl], a                                     ; $479c: $77
	ld   d, a                                        ; $479d: $57
	and  [hl]                                        ; $479e: $a6
	add  a                                           ; $479f: $87
	adc  b                                           ; $47a0: $88
	ld   a, c                                        ; $47a1: $79
	ld   a, e                                        ; $47a2: $7b
	and  a                                           ; $47a3: $a7
	ld   a, c                                        ; $47a4: $79
	xor  b                                           ; $47a5: $a8
	halt                                             ; $47a6: $76
	ld   a, e                                        ; $47a7: $7b
	add  a                                           ; $47a8: $87
	ld   a, d                                        ; $47a9: $7a
	or   l                                           ; $47aa: $b5
	sbc  e                                           ; $47ab: $9b
	and  a                                           ; $47ac: $a7
	ld   d, a                                        ; $47ad: $57
	ld   c, b                                        ; $47ae: $48
	sbc  c                                           ; $47af: $99
	xor  c                                           ; $47b0: $a9
	ld   a, b                                        ; $47b1: $78
	and  [hl]                                        ; $47b2: $a6
	add  a                                           ; $47b3: $87
	ret  z                                           ; $47b4: $c8

	ld   b, [hl]                                     ; $47b5: $46
	ld   l, d                                        ; $47b6: $6a
	sbc  c                                           ; $47b7: $99
	xor  h                                           ; $47b8: $ac
	call $fd39                                       ; $47b9: $cd $39 $fd
	add  d                                           ; $47bc: $82
	ld   l, c                                        ; $47bd: $69
	sub  e                                           ; $47be: $93
	inc  de                                          ; $47bf: $13
	ld   a, e                                        ; $47c0: $7b
	sub  h                                           ; $47c1: $94
	jr   jr_0be_4760                                 ; $47c2: $18 $9c

	ld   [hl], l                                     ; $47c4: $75
	ld   a, h                                        ; $47c5: $7c
	rst  $10                                         ; $47c6: $d7
	add  l                                           ; $47c7: $85
	xor  d                                           ; $47c8: $aa
	sub  [hl]                                        ; $47c9: $96
	ld   d, [hl]                                     ; $47ca: $56
	ld   a, h                                        ; $47cb: $7c
	halt                                             ; $47cc: $76
	ld   b, [hl]                                     ; $47cd: $46
	sbc  b                                           ; $47ce: $98
	add  h                                           ; $47cf: $84
	adc  d                                           ; $47d0: $8a
	sbc  b                                           ; $47d1: $98
	ld   d, h                                        ; $47d2: $54
	sbc  e                                           ; $47d3: $9b
	ld   h, l                                        ; $47d4: $65
	ld   d, a                                        ; $47d5: $57
	call z, $da58                                    ; $47d6: $cc $58 $da
	cp   d                                           ; $47d9: $ba
	adc  c                                           ; $47da: $89
	xor  c                                           ; $47db: $a9
	ld   [hl], l                                     ; $47dc: $75
	ld   [hl-], a                                    ; $47dd: $32
	ld   h, e                                        ; $47de: $63
	ld   de, $6714                                   ; $47df: $11 $14 $67
	ld   l, b                                        ; $47e2: $68
	cp   [hl]                                        ; $47e3: $be
	rst  $28                                         ; $47e4: $ef
	rst  $38                                         ; $47e5: $ff
	rst  $38                                         ; $47e6: $ff
	db   $dd                                         ; $47e7: $dd
	jp   z, $1174                                    ; $47e8: $ca $74 $11

	ld   de, $1111                                   ; $47eb: $11 $11 $11
	inc  d                                           ; $47ee: $14
	sbc  l                                           ; $47ef: $9d
	rst  $38                                         ; $47f0: $ff
	rst  $38                                         ; $47f1: $ff
	rst  $38                                         ; $47f2: $ff
	rst  $38                                         ; $47f3: $ff
	rst  $38                                         ; $47f4: $ff
	db   $fd                                         ; $47f5: $fd
	sub  h                                           ; $47f6: $94
	ld   de, $1111                                   ; $47f7: $11 $11 $11
	ld   de, $ff1c                                   ; $47fa: $11 $1c $ff
	rst  $38                                         ; $47fd: $ff
	rst  $38                                         ; $47fe: $ff
	rst  $38                                         ; $47ff: $ff
	rst  $38                                         ; $4800: $ff
	rst  $38                                         ; $4801: $ff
	jp   hl                                          ; $4802: $e9


	add  c                                           ; $4803: $81
	ld   de, $1111                                   ; $4804: $11 $11 $11
	ld   d, $5d                                      ; $4807: $16 $5d
	rst  $38                                         ; $4809: $ff
	rst  $38                                         ; $480a: $ff
	rst  $38                                         ; $480b: $ff
	rst  $38                                         ; $480c: $ff
	rst  $38                                         ; $480d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $480e: $cf
	ret  z                                           ; $480f: $c8

	ld   h, d                                        ; $4810: $62
	ld   de, $1111                                   ; $4811: $11 $11 $11
	ld   [de], a                                     ; $4814: $12
	rra                                              ; $4815: $1f
	rst  $38                                         ; $4816: $ff
	rst  $38                                         ; $4817: $ff
	rst  $38                                         ; $4818: $ff
	rst  $38                                         ; $4819: $ff
	rst  $38                                         ; $481a: $ff
	cp   a                                           ; $481b: $bf
	cp   b                                           ; $481c: $b8
	ld   h, c                                        ; $481d: $61
	ld   de, $1111                                   ; $481e: $11 $11 $11
	ld   de, $ffaf                                   ; $4821: $11 $af $ff
	rst  $38                                         ; $4824: $ff
	rst  $38                                         ; $4825: $ff
	rst  $38                                         ; $4826: $ff
	db   $fd                                         ; $4827: $fd
	rst  JumpTable                                         ; $4828: $df
	ret  c                                           ; $4829: $d8

	ld   hl, $1111                                   ; $482a: $21 $11 $11
	ld   de, $df14                                   ; $482d: $11 $14 $df
	rst  $38                                         ; $4830: $ff
	rst  $38                                         ; $4831: $ff
	rst  $38                                         ; $4832: $ff
	rst  $38                                         ; $4833: $ff
	rst  $38                                         ; $4834: $ff
	jp   hl                                          ; $4835: $e9


	sbc  c                                           ; $4836: $99
	ld   d, c                                        ; $4837: $51
	ld   de, $1111                                   ; $4838: $11 $11 $11
	ld   hl, $ffff                                   ; $483b: $21 $ff $ff
	rst  $38                                         ; $483e: $ff
	rst  $38                                         ; $483f: $ff
	cp   a                                           ; $4840: $bf
	db   $fc                                         ; $4841: $fc
	ld   a, [$21d2]                                  ; $4842: $fa $d2 $21
	ld   de, $1111                                   ; $4845: $11 $11 $11
	ld   c, c                                        ; $4848: $49
	rst  $38                                         ; $4849: $ff
	rst  $38                                         ; $484a: $ff
	rst  $38                                         ; $484b: $ff
	rst  $38                                         ; $484c: $ff
	rst  $28                                         ; $484d: $ef
	db   $fd                                         ; $484e: $fd
	ei                                               ; $484f: $fb
	xor  c                                           ; $4850: $a9
	ld   hl, $1111                                   ; $4851: $21 $11 $11
	ld   de, $ef44                                   ; $4854: $11 $44 $ef
	rst  $38                                         ; $4857: $ff
	rst  $38                                         ; $4858: $ff
	rst  $38                                         ; $4859: $ff
	rst  $38                                         ; $485a: $ff
	rst  $28                                         ; $485b: $ef
	db   $fd                                         ; $485c: $fd
	add  $21                                         ; $485d: $c6 $21
	ld   de, $1111                                   ; $485f: $11 $11 $11
	ld   l, c                                        ; $4862: $69
	rst  $38                                         ; $4863: $ff
	rst  $38                                         ; $4864: $ff
	rst  $38                                         ; $4865: $ff
	rst  JumpTable                                         ; $4866: $df
	rst  $38                                         ; $4867: $ff
	db   $fd                                         ; $4868: $fd
	ld   a, [$2158]                                  ; $4869: $fa $58 $21
	ld   de, $1111                                   ; $486c: $11 $11 $11
	ld   [hl], $ff                                   ; $486f: $36 $ff
	rst  $38                                         ; $4871: $ff
	rst  $38                                         ; $4872: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4873: $cf
	rst  $38                                         ; $4874: $ff
	rst  $38                                         ; $4875: $ff
	jp   c, $31b8                                    ; $4876: $da $b8 $31

	ld   de, $1111                                   ; $4879: $11 $11 $11
	ld   h, $ff                                      ; $487c: $26 $ff
	rst  $38                                         ; $487e: $ff
	rst  $38                                         ; $487f: $ff
	rst  $38                                         ; $4880: $ff
	db   $fd                                         ; $4881: $fd
	rst  $38                                         ; $4882: $ff
	rst  $38                                         ; $4883: $ff
	sub  d                                           ; $4884: $92
	ld   de, $1111                                   ; $4885: $11 $11 $11
	ld   de, $ff17                                   ; $4888: $11 $17 $ff
	rst  $38                                         ; $488b: $ff
	rst  $38                                         ; $488c: $ff
	rst  $38                                         ; $488d: $ff
	rst  $38                                         ; $488e: $ff
	rst  $38                                         ; $488f: $ff
	db   $fd                                         ; $4890: $fd
	ld   [hl], a                                     ; $4891: $77
	ld   b, c                                        ; $4892: $41
	ld   de, $1111                                   ; $4893: $11 $11 $11
	inc  de                                          ; $4896: $13
	cp   a                                           ; $4897: $bf
	rst  $38                                         ; $4898: $ff
	rst  $38                                         ; $4899: $ff
	db   $fd                                         ; $489a: $fd
	xor  h                                           ; $489b: $ac
	rst  $38                                         ; $489c: $ff
	rst  $38                                         ; $489d: $ff
	sub  l                                           ; $489e: $95
	ld   [hl+], a                                    ; $489f: $22
	ld   de, $1111                                   ; $48a0: $11 $11 $11
	ld   d, $bf                                      ; $48a3: $16 $bf
	rst  $38                                         ; $48a5: $ff
	rst  $38                                         ; $48a6: $ff
	cp   $c9                                         ; $48a7: $fe $c9
	rst  $38                                         ; $48a9: $ff
	rst  $38                                         ; $48aa: $ff
	sub  a                                           ; $48ab: $97
	ld   de, $1111                                   ; $48ac: $11 $11 $11
	ld   de, $6c14                                   ; $48af: $11 $14 $6c
	rst  $38                                         ; $48b2: $ff
	rst  $38                                         ; $48b3: $ff
	rst  $38                                         ; $48b4: $ff
	db   $db                                         ; $48b5: $db
	cp   a                                           ; $48b6: $bf
	rst  $38                                         ; $48b7: $ff
	rst  $30                                         ; $48b8: $f7
	ld   [hl], d                                     ; $48b9: $72
	ld   de, $1111                                   ; $48ba: $11 $11 $11
	inc  d                                           ; $48bd: $14
	ld   [hl], a                                     ; $48be: $77
	rst  JumpTable                                         ; $48bf: $df
	rst  $38                                         ; $48c0: $ff
	rst  $38                                         ; $48c1: $ff
	db   $ed                                         ; $48c2: $ed
	rst  $38                                         ; $48c3: $ff
	rst  $38                                         ; $48c4: $ff
	rst  $30                                         ; $48c5: $f7
	ld   sp, $1111                                   ; $48c6: $31 $11 $11
	ld   de, $4a11                                   ; $48c9: $11 $11 $4a
	rst  $38                                         ; $48cc: $ff
	rst  $38                                         ; $48cd: $ff
	rst  $38                                         ; $48ce: $ff
	rst  $38                                         ; $48cf: $ff
	call c, $ffff                                    ; $48d0: $dc $ff $ff
	sub  l                                           ; $48d3: $95
	ld   de, $1111                                   ; $48d4: $11 $11 $11
	ld   de, $af15                                   ; $48d7: $11 $15 $af
	rst  $38                                         ; $48da: $ff
	rst  $38                                         ; $48db: $ff
	rst  $38                                         ; $48dc: $ff
	rst  $38                                         ; $48dd: $ff
	rst  $38                                         ; $48de: $ff
	cp   $b9                                         ; $48df: $fe $b9
	ld   b, d                                        ; $48e1: $42
	ld   de, $1111                                   ; $48e2: $11 $11 $11
	ld   de, $df47                                   ; $48e5: $11 $47 $df
	rst  $38                                         ; $48e8: $ff
	rst  $38                                         ; $48e9: $ff
	rst  $38                                         ; $48ea: $ff
	rst  $38                                         ; $48eb: $ff
	rst  $38                                         ; $48ec: $ff
	db   $eb                                         ; $48ed: $eb
	ld   [hl], h                                     ; $48ee: $74
	ld   hl, $1111                                   ; $48ef: $21 $11 $11
	ld   de, $7d14                                   ; $48f2: $11 $14 $7d
	rst  $38                                         ; $48f5: $ff
	rst  $38                                         ; $48f6: $ff
	rst  $38                                         ; $48f7: $ff
	rst  $38                                         ; $48f8: $ff
	rst  $38                                         ; $48f9: $ff
	cp   $ca                                         ; $48fa: $fe $ca
	ld   d, d                                        ; $48fc: $52
	ld   de, $1111                                   ; $48fd: $11 $11 $11
	ld   de, $cf56                                   ; $4900: $11 $56 $cf
	rst  $38                                         ; $4903: $ff
	rst  $38                                         ; $4904: $ff
	rst  $38                                         ; $4905: $ff
	rst  $38                                         ; $4906: $ff
	rst  $38                                         ; $4907: $ff
	call c, Call_0be_52a8                            ; $4908: $dc $a8 $52
	ld   de, $1111                                   ; $490b: $11 $11 $11
	inc  de                                          ; $490e: $13
	ld   c, b                                        ; $490f: $48
	adc  $ff                                         ; $4910: $ce $ff
	cp   $fe                                         ; $4912: $fe $fe
	rst  $28                                         ; $4914: $ef
	rst  $38                                         ; $4915: $ff
	db   $fd                                         ; $4916: $fd
	cp   b                                           ; $4917: $b8
	ld   d, e                                        ; $4918: $53
	ld   de, $1111                                   ; $4919: $11 $11 $11
	inc  de                                          ; $491c: $13
	ld   b, [hl]                                     ; $491d: $46
	sbc  e                                           ; $491e: $9b
	xor  $ec                                         ; $491f: $ee $ec
	sbc  $ef                                         ; $4921: $de $ef
	rst  $38                                         ; $4923: $ff
	cp   $c9                                         ; $4924: $fe $c9
	add  l                                           ; $4926: $85
	ld   hl, $1111                                   ; $4927: $21 $11 $11
	ld   [de], a                                     ; $492a: $12
	ld   b, h                                        ; $492b: $44
	ld   h, a                                        ; $492c: $67
	sbc  c                                           ; $492d: $99
	xor  e                                           ; $492e: $ab
	cp   l                                           ; $492f: $bd
	sbc  $ff                                         ; $4930: $de $ff
	cp   $da                                         ; $4932: $fe $da
	xor  c                                           ; $4934: $a9
	halt                                             ; $4935: $76
	ld   b, d                                        ; $4936: $42
	ld   [hl+], a                                    ; $4937: $22
	ld   hl, $4534                                   ; $4938: $21 $34 $45
	ld   h, l                                        ; $493b: $65
	ld   l, b                                        ; $493c: $68
	sbc  c                                           ; $493d: $99
	xor  h                                           ; $493e: $ac
	sbc  $ee                                         ; $493f: $de $ee
	call c, $baca                                    ; $4941: $dc $ca $ba
	sbc  b                                           ; $4944: $98
	ld   [hl], h                                     ; $4945: $74
	ld   b, h                                        ; $4946: $44
	inc  sp                                          ; $4947: $33
	inc  [hl]                                        ; $4948: $34
	inc  sp                                          ; $4949: $33
	ld   d, l                                        ; $494a: $55
	ld   d, [hl]                                     ; $494b: $56
	ld   a, b                                        ; $494c: $78
	sbc  d                                           ; $494d: $9a
	cp   h                                           ; $494e: $bc
	res  7, h                                        ; $494f: $cb $bc
	call c, $bacb                                    ; $4951: $dc $cb $ba
	sbc  b                                           ; $4954: $98
	ld   d, l                                        ; $4955: $55
	ld   d, h                                        ; $4956: $54
	ld   b, h                                        ; $4957: $44
	ld   b, h                                        ; $4958: $44
	ld   b, l                                        ; $4959: $45
	ld   h, [hl]                                     ; $495a: $66
	ld   h, a                                        ; $495b: $67
	ld   h, a                                        ; $495c: $67
	adc  c                                           ; $495d: $89
	sbc  e                                           ; $495e: $9b
	set  1, l                                        ; $495f: $cb $cd
	call c, $a9ba                                    ; $4961: $dc $ba $a9
	add  a                                           ; $4964: $87
	ld   h, a                                        ; $4965: $67
	ld   h, [hl]                                     ; $4966: $66
	ld   h, l                                        ; $4967: $65
	ld   h, [hl]                                     ; $4968: $66
	ld   h, l                                        ; $4969: $65
	ld   d, l                                        ; $496a: $55
	ld   d, l                                        ; $496b: $55
	ld   h, [hl]                                     ; $496c: $66
	ld   [hl], a                                     ; $496d: $77
	sbc  d                                           ; $496e: $9a
	xor  d                                           ; $496f: $aa
	cp   e                                           ; $4970: $bb
	cp   e                                           ; $4971: $bb
	xor  d                                           ; $4972: $aa
	xor  d                                           ; $4973: $aa
	xor  c                                           ; $4974: $a9
	sbc  c                                           ; $4975: $99
	adc  c                                           ; $4976: $89
	halt                                             ; $4977: $76
	ld   h, [hl]                                     ; $4978: $66
	ld   h, [hl]                                     ; $4979: $66
	ld   h, l                                        ; $497a: $65
	ld   d, l                                        ; $497b: $55
	ld   d, l                                        ; $497c: $55
	ld   d, [hl]                                     ; $497d: $56
	ld   h, a                                        ; $497e: $67
	adc  c                                           ; $497f: $89
	xor  d                                           ; $4980: $aa
	xor  e                                           ; $4981: $ab
	cp   h                                           ; $4982: $bc
	cp   d                                           ; $4983: $ba
	cp   d                                           ; $4984: $ba
	sbc  c                                           ; $4985: $99
	sbc  c                                           ; $4986: $99
	sbc  b                                           ; $4987: $98
	ld   [hl], a                                     ; $4988: $77
	ld   [hl], a                                     ; $4989: $77
	ld   [hl], a                                     ; $498a: $77
	ld   h, l                                        ; $498b: $65
	ld   b, h                                        ; $498c: $44
	ld   b, h                                        ; $498d: $44
	ld   d, [hl]                                     ; $498e: $56
	ld   h, a                                        ; $498f: $67
	sbc  d                                           ; $4990: $9a
	xor  d                                           ; $4991: $aa
	cp   d                                           ; $4992: $ba
	xor  e                                           ; $4993: $ab
	xor  e                                           ; $4994: $ab
	xor  d                                           ; $4995: $aa
	xor  d                                           ; $4996: $aa
	sbc  c                                           ; $4997: $99
	sbc  c                                           ; $4998: $99
	adc  b                                           ; $4999: $88
	ld   [hl], a                                     ; $499a: $77
	halt                                             ; $499b: $76
	ld   h, [hl]                                     ; $499c: $66
	ld   d, h                                        ; $499d: $54
	ld   b, h                                        ; $499e: $44
	ld   d, [hl]                                     ; $499f: $56
	ld   h, a                                        ; $49a0: $67
	ld   a, b                                        ; $49a1: $78
	sbc  d                                           ; $49a2: $9a
	xor  e                                           ; $49a3: $ab
	cp   e                                           ; $49a4: $bb
	res  7, d                                        ; $49a5: $cb $ba
	cp   d                                           ; $49a7: $ba
	xor  d                                           ; $49a8: $aa
	sbc  c                                           ; $49a9: $99
	sbc  b                                           ; $49aa: $98
	ld   [hl], a                                     ; $49ab: $77
	ld   [hl], a                                     ; $49ac: $77
	halt                                             ; $49ad: $76
	ld   d, h                                        ; $49ae: $54
	ld   b, h                                        ; $49af: $44
	ld   b, l                                        ; $49b0: $45
	ld   h, a                                        ; $49b1: $67
	adc  c                                           ; $49b2: $89
	sbc  d                                           ; $49b3: $9a
	cp   e                                           ; $49b4: $bb
	cp   e                                           ; $49b5: $bb
	cp   e                                           ; $49b6: $bb
	xor  e                                           ; $49b7: $ab
	xor  d                                           ; $49b8: $aa
	xor  d                                           ; $49b9: $aa
	sbc  b                                           ; $49ba: $98
	adc  b                                           ; $49bb: $88
	ld   [hl], a                                     ; $49bc: $77
	ld   [hl], a                                     ; $49bd: $77
	ld   [hl], a                                     ; $49be: $77
	ld   h, l                                        ; $49bf: $65
	ld   d, l                                        ; $49c0: $55
	ld   d, l                                        ; $49c1: $55
	ld   h, a                                        ; $49c2: $67
	ld   a, b                                        ; $49c3: $78
	adc  d                                           ; $49c4: $8a
	xor  d                                           ; $49c5: $aa
	xor  d                                           ; $49c6: $aa
	xor  d                                           ; $49c7: $aa
	cp   d                                           ; $49c8: $ba
	sbc  d                                           ; $49c9: $9a
	sbc  c                                           ; $49ca: $99
	sbc  b                                           ; $49cb: $98
	adc  c                                           ; $49cc: $89
	add  a                                           ; $49cd: $87
	adc  b                                           ; $49ce: $88
	ld   [hl], a                                     ; $49cf: $77
	halt                                             ; $49d0: $76
	ld   d, h                                        ; $49d1: $54
	ld   d, l                                        ; $49d2: $55
	ld   d, [hl]                                     ; $49d3: $56
	ld   [hl], a                                     ; $49d4: $77
	adc  b                                           ; $49d5: $88
	sbc  d                                           ; $49d6: $9a
	xor  e                                           ; $49d7: $ab
	xor  d                                           ; $49d8: $aa
	xor  e                                           ; $49d9: $ab
	xor  d                                           ; $49da: $aa
	sbc  c                                           ; $49db: $99
	xor  c                                           ; $49dc: $a9
	sbc  c                                           ; $49dd: $99
	add  a                                           ; $49de: $87
	ld   a, b                                        ; $49df: $78
	ld   [hl], a                                     ; $49e0: $77
	halt                                             ; $49e1: $76
	ld   d, h                                        ; $49e2: $54
	ld   b, h                                        ; $49e3: $44
	ld   d, l                                        ; $49e4: $55
	ld   h, a                                        ; $49e5: $67
	adc  b                                           ; $49e6: $88
	xor  d                                           ; $49e7: $aa
	cp   e                                           ; $49e8: $bb
	cp   e                                           ; $49e9: $bb
	cp   d                                           ; $49ea: $ba
	cp   d                                           ; $49eb: $ba
	xor  c                                           ; $49ec: $a9
	xor  c                                           ; $49ed: $a9
	sbc  b                                           ; $49ee: $98
	halt                                             ; $49ef: $76
	ld   [hl], a                                     ; $49f0: $77
	halt                                             ; $49f1: $76
	ld   h, l                                        ; $49f2: $65
	ld   b, h                                        ; $49f3: $44
	ld   b, h                                        ; $49f4: $44
	ld   d, [hl]                                     ; $49f5: $56
	ld   a, b                                        ; $49f6: $78
	adc  d                                           ; $49f7: $8a
	xor  d                                           ; $49f8: $aa
	res  7, e                                        ; $49f9: $cb $bb
	res  7, d                                        ; $49fb: $cb $ba
	sbc  c                                           ; $49fd: $99
	sbc  b                                           ; $49fe: $98
	ld   [hl], a                                     ; $49ff: $77
	ld   h, [hl]                                     ; $4a00: $66
	ld   [hl], a                                     ; $4a01: $77
	halt                                             ; $4a02: $76
	ld   d, l                                        ; $4a03: $55
	ld   b, h                                        ; $4a04: $44
	ld   b, l                                        ; $4a05: $45
	ld   h, a                                        ; $4a06: $67
	adc  d                                           ; $4a07: $8a
	xor  d                                           ; $4a08: $aa
	set  1, l                                        ; $4a09: $cb $cd
	call z, $99ba                                    ; $4a0b: $cc $ba $99
	sbc  b                                           ; $4a0e: $98
	ld   h, l                                        ; $4a0f: $65
	ld   d, h                                        ; $4a10: $54
	ld   d, a                                        ; $4a11: $57
	ld   h, l                                        ; $4a12: $65
	ld   d, l                                        ; $4a13: $55
	ld   b, e                                        ; $4a14: $43
	ld   b, l                                        ; $4a15: $45
	ld   h, a                                        ; $4a16: $67
	adc  c                                           ; $4a17: $89
	cp   h                                           ; $4a18: $bc
	call $edcd                                       ; $4a19: $cd $cd $ed
	res  5, c                                        ; $4a1c: $cb $a9
	sub  a                                           ; $4a1e: $97
	ld   d, h                                        ; $4a1f: $54
	inc  sp                                          ; $4a20: $33
	ld   d, l                                        ; $4a21: $55
	ld   b, l                                        ; $4a22: $45
	inc  sp                                          ; $4a23: $33
	inc  sp                                          ; $4a24: $33
	ld   d, l                                        ; $4a25: $55
	ld   a, b                                        ; $4a26: $78
	xor  e                                           ; $4a27: $ab
	sbc  $dd                                         ; $4a28: $de $dd
	cp   $dc                                         ; $4a2a: $fe $dc
	call z, $53a7                                    ; $4a2c: $cc $a7 $53
	ld   de, $4325                                   ; $4a2f: $11 $25 $43
	ld   [hl+], a                                    ; $4a32: $22
	inc  sp                                          ; $4a33: $33
	ld   b, h                                        ; $4a34: $44
	ld   l, c                                        ; $4a35: $69
	cp   l                                           ; $4a36: $bd
	sbc  $ff                                         ; $4a37: $de $ff
	rst  $38                                         ; $4a39: $ff
	cp   $db                                         ; $4a3a: $fe $db
	sub  a                                           ; $4a3c: $97
	ld   d, d                                        ; $4a3d: $52
	ld   de, $3114                                   ; $4a3e: $11 $14 $31
	ld   de, $5623                                   ; $4a41: $11 $23 $56
	ld   l, c                                        ; $4a44: $69
	rst  JumpTable                                         ; $4a45: $df
	rst  $38                                         ; $4a46: $ff
	rst  $38                                         ; $4a47: $ff
	rst  $38                                         ; $4a48: $ff
	db   $fd                                         ; $4a49: $fd
	res  2, h                                        ; $4a4a: $cb $94
	ld   de, $1211                                   ; $4a4c: $11 $11 $12
	ld   de, $1311                                   ; $4a4f: $11 $11 $13
	ld   h, a                                        ; $4a52: $67
	sbc  [hl]                                        ; $4a53: $9e
	rst  $38                                         ; $4a54: $ff
	rst  $38                                         ; $4a55: $ff
	rst  $38                                         ; $4a56: $ff
	rst  $38                                         ; $4a57: $ff
	db   $fd                                         ; $4a58: $fd
	reti                                             ; $4a59: $d9


	ld   hl, $1111                                   ; $4a5a: $21 $11 $11
	ld   de, $1111                                   ; $4a5d: $11 $11 $11
	scf                                              ; $4a60: $37
	xor  a                                           ; $4a61: $af
	rst  $38                                         ; $4a62: $ff
	rst  $38                                         ; $4a63: $ff
	rst  $38                                         ; $4a64: $ff
	rst  $38                                         ; $4a65: $ff
	rst  $38                                         ; $4a66: $ff
	jp   z, $1121                                    ; $4a67: $ca $21 $11

	ld   de, $1111                                   ; $4a6a: $11 $11 $11
	ld   de, $ef19                                   ; $4a6d: $11 $19 $ef
	rst  $38                                         ; $4a70: $ff
	rst  $38                                         ; $4a71: $ff
	rst  $38                                         ; $4a72: $ff
	rst  $38                                         ; $4a73: $ff
	rst  $38                                         ; $4a74: $ff
	or   a                                           ; $4a75: $b7
	ld   de, $1111                                   ; $4a76: $11 $11 $11
	ld   de, $1111                                   ; $4a79: $11 $11 $11
	ld   e, $ff                                      ; $4a7c: $1e $ff
	rst  $38                                         ; $4a7e: $ff
	rst  $38                                         ; $4a7f: $ff
	rst  $38                                         ; $4a80: $ff
	rst  $38                                         ; $4a81: $ff
	rst  $38                                         ; $4a82: $ff
	ld   [hl], c                                     ; $4a83: $71
	ld   de, $1111                                   ; $4a84: $11 $11 $11
	ld   de, $1111                                   ; $4a87: $11 $11 $11
	xor  a                                           ; $4a8a: $af
	rst  $38                                         ; $4a8b: $ff
	rst  $38                                         ; $4a8c: $ff
	rst  $38                                         ; $4a8d: $ff
	rst  $38                                         ; $4a8e: $ff
	rst  $38                                         ; $4a8f: $ff
	rst  $30                                         ; $4a90: $f7
	ld   hl, $1111                                   ; $4a91: $21 $11 $11
	ld   de, $1111                                   ; $4a94: $11 $11 $11
	rla                                              ; $4a97: $17
	rst  $38                                         ; $4a98: $ff
	rst  $38                                         ; $4a99: $ff
	rst  $38                                         ; $4a9a: $ff
	rst  $38                                         ; $4a9b: $ff
	rst  $38                                         ; $4a9c: $ff
	rst  $38                                         ; $4a9d: $ff
	sub  h                                           ; $4a9e: $94
	ld   de, $1111                                   ; $4a9f: $11 $11 $11
	ld   de, $1111                                   ; $4aa2: $11 $11 $11
	ld   a, a                                        ; $4aa5: $7f
	rst  $38                                         ; $4aa6: $ff
	rst  $38                                         ; $4aa7: $ff
	rst  $38                                         ; $4aa8: $ff
	rst  $38                                         ; $4aa9: $ff
	rst  $38                                         ; $4aaa: $ff
	ld   a, [$1191]                                  ; $4aab: $fa $91 $11
	ld   de, $1111                                   ; $4aae: $11 $11 $11
	ld   de, $ff1a                                   ; $4ab1: $11 $1a $ff
	rst  $38                                         ; $4ab4: $ff
	rst  $38                                         ; $4ab5: $ff
	rst  $38                                         ; $4ab6: $ff
	rst  $38                                         ; $4ab7: $ff
	rst  $38                                         ; $4ab8: $ff
	db   $eb                                         ; $4ab9: $eb
	ld   de, $1111                                   ; $4aba: $11 $11 $11
	ld   de, $1111                                   ; $4abd: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ac0: $cf
	rst  $38                                         ; $4ac1: $ff
	rst  $38                                         ; $4ac2: $ff
	rst  $38                                         ; $4ac3: $ff
	rst  $38                                         ; $4ac4: $ff
	rst  $38                                         ; $4ac5: $ff
	rst  $38                                         ; $4ac6: $ff
	add  c                                           ; $4ac7: $81
	ld   de, $1111                                   ; $4ac8: $11 $11 $11
	ld   de, $1d11                                   ; $4acb: $11 $11 $1d
	rst  $38                                         ; $4ace: $ff
	rst  $38                                         ; $4acf: $ff
	rst  $38                                         ; $4ad0: $ff
	rst  $38                                         ; $4ad1: $ff
	rst  $38                                         ; $4ad2: $ff
	rst  $38                                         ; $4ad3: $ff
	or   $11                                         ; $4ad4: $f6 $11
	ld   de, $1111                                   ; $4ad6: $11 $11 $11
	ld   de, $df11                                   ; $4ad9: $11 $11 $df
	rst  $38                                         ; $4adc: $ff
	rst  $38                                         ; $4add: $ff
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	rst  $38                                         ; $4ae0: $ff
	rst  $38                                         ; $4ae1: $ff
	ld   sp, $1111                                   ; $4ae2: $31 $11 $11
	ld   de, $1111                                   ; $4ae5: $11 $11 $11
	rra                                              ; $4ae8: $1f
	rst  $38                                         ; $4ae9: $ff
	rst  $38                                         ; $4aea: $ff
	rst  $38                                         ; $4aeb: $ff
	rst  $38                                         ; $4aec: $ff
	rst  $38                                         ; $4aed: $ff
	rst  $38                                         ; $4aee: $ff
	pop  af                                          ; $4aef: $f1
	ld   de, $1111                                   ; $4af0: $11 $11 $11
	ld   de, $1211                                   ; $4af3: $11 $11 $12
	rst  $38                                         ; $4af6: $ff
	rst  $38                                         ; $4af7: $ff
	rst  $38                                         ; $4af8: $ff
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	ei                                               ; $4afc: $fb
	ld   de, $1111                                   ; $4afd: $11 $11 $11
	ld   de, $1111                                   ; $4b00: $11 $11 $11
	ld   l, a                                        ; $4b03: $6f
	rst  $38                                         ; $4b04: $ff
	rst  $38                                         ; $4b05: $ff
	rst  $38                                         ; $4b06: $ff
	rst  $38                                         ; $4b07: $ff
	rst  $38                                         ; $4b08: $ff
	rst  $38                                         ; $4b09: $ff
	ld   d, c                                        ; $4b0a: $51
	ld   de, $1111                                   ; $4b0b: $11 $11 $11
	ld   de, $1a11                                   ; $4b0e: $11 $11 $1a
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	rst  $38                                         ; $4b13: $ff
	rst  $38                                         ; $4b14: $ff
	rst  $38                                         ; $4b15: $ff
	rst  $38                                         ; $4b16: $ff
	pop  af                                          ; $4b17: $f1
	ld   de, $1111                                   ; $4b18: $11 $11 $11
	ld   de, $1111                                   ; $4b1b: $11 $11 $11
	rst  $38                                         ; $4b1e: $ff
	rst  $38                                         ; $4b1f: $ff
	rst  $38                                         ; $4b20: $ff
	rst  $38                                         ; $4b21: $ff
	rst  $38                                         ; $4b22: $ff
	rst  $38                                         ; $4b23: $ff
	ld   a, [$1111]                                  ; $4b24: $fa $11 $11
	ld   de, $1111                                   ; $4b27: $11 $11 $11
	ld   de, $ff6f                                   ; $4b2a: $11 $6f $ff
	rst  $38                                         ; $4b2d: $ff
	rst  $38                                         ; $4b2e: $ff
	rst  $38                                         ; $4b2f: $ff
	rst  $38                                         ; $4b30: $ff
	rst  $38                                         ; $4b31: $ff
	ld   d, c                                        ; $4b32: $51
	ld   de, $1111                                   ; $4b33: $11 $11 $11
	ld   de, $1d11                                   ; $4b36: $11 $11 $1d
	rst  $38                                         ; $4b39: $ff
	rst  $38                                         ; $4b3a: $ff
	rst  $38                                         ; $4b3b: $ff
	rst  $38                                         ; $4b3c: $ff
	rst  $38                                         ; $4b3d: $ff
	rst  $38                                         ; $4b3e: $ff
	or   c                                           ; $4b3f: $b1
	ld   de, $1111                                   ; $4b40: $11 $11 $11
	ld   de, $1411                                   ; $4b43: $11 $11 $14
	rst  $38                                         ; $4b46: $ff
	rst  $38                                         ; $4b47: $ff
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	rst  $38                                         ; $4b4b: $ff
	add  sp, $11                                     ; $4b4c: $e8 $11
	ld   de, $1111                                   ; $4b4e: $11 $11 $11
	ld   de, $af11                                   ; $4b51: $11 $11 $af
	rst  $38                                         ; $4b54: $ff
	rst  $38                                         ; $4b55: $ff
	rst  $38                                         ; $4b56: $ff
	rst  $38                                         ; $4b57: $ff
	rst  $38                                         ; $4b58: $ff
	ei                                               ; $4b59: $fb
	ld   sp, $1111                                   ; $4b5a: $31 $11 $11
	ld   de, $1111                                   ; $4b5d: $11 $11 $11
	ccf                                              ; $4b60: $3f
	rst  $38                                         ; $4b61: $ff
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	rst  $38                                         ; $4b64: $ff
	rst  $38                                         ; $4b65: $ff
	cp   $91                                         ; $4b66: $fe $91
	ld   de, $1111                                   ; $4b68: $11 $11 $11
	ld   de, $1511                                   ; $4b6b: $11 $11 $15
	rst  $38                                         ; $4b6e: $ff
	rst  $38                                         ; $4b6f: $ff
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	rst  $38                                         ; $4b72: $ff
	rst  $38                                         ; $4b73: $ff
	add  $11                                         ; $4b74: $c6 $11
	ld   de, $1111                                   ; $4b76: $11 $11 $11
	ld   de, $8f11                                   ; $4b79: $11 $11 $8f
	rst  $38                                         ; $4b7c: $ff
	rst  $38                                         ; $4b7d: $ff
	rst  $38                                         ; $4b7e: $ff
	rst  $38                                         ; $4b7f: $ff
	rst  $38                                         ; $4b80: $ff
	db   $fc                                         ; $4b81: $fc
	ld   h, c                                        ; $4b82: $61
	ld   de, $1111                                   ; $4b83: $11 $11 $11
	ld   de, $3711                                   ; $4b86: $11 $11 $37
	rst  JumpTable                                         ; $4b89: $df
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	rst  $38                                         ; $4b8c: $ff
	rst  $38                                         ; $4b8d: $ff
	rst  $38                                         ; $4b8e: $ff
	and  [hl]                                        ; $4b8f: $a6
	ld   hl, $1111                                   ; $4b90: $21 $11 $11
	ld   de, $5411                                   ; $4b93: $11 $11 $54
	sbc  c                                           ; $4b96: $99
	rst  JumpTable                                         ; $4b97: $df
	rst  $38                                         ; $4b98: $ff
	rst  $38                                         ; $4b99: $ff
	rst  $38                                         ; $4b9a: $ff
	rst  $38                                         ; $4b9b: $ff
	ei                                               ; $4b9c: $fb
	sub  [hl]                                        ; $4b9d: $96
	ld   [hl], e                                     ; $4b9e: $73
	ld   de, $1111                                   ; $4b9f: $11 $11 $11
	ld   d, e                                        ; $4ba2: $53
	ld   c, b                                        ; $4ba3: $48
	ld   l, c                                        ; $4ba4: $69
	adc  c                                           ; $4ba5: $89
	xor  h                                           ; $4ba6: $ac
	db   $db                                         ; $4ba7: $db
	xor  $da                                         ; $4ba8: $ee $da
	call z, $97aa                                    ; $4baa: $cc $aa $97
	adc  c                                           ; $4bad: $89
	ld   b, a                                        ; $4bae: $47
	ld   h, a                                        ; $4baf: $67
	ld   d, a                                        ; $4bb0: $57
	push bc                                          ; $4bb1: $c5
	sub  [hl]                                        ; $4bb2: $96
	ld   h, [hl]                                     ; $4bb3: $66
	scf                                              ; $4bb4: $37
	scf                                              ; $4bb5: $37
	ld   h, [hl]                                     ; $4bb6: $66
	ld   a, b                                        ; $4bb7: $78
	xor  b                                           ; $4bb8: $a8
	xor  e                                           ; $4bb9: $ab
	ret                                              ; $4bba: $c9


	cp   h                                           ; $4bbb: $bc
	xor  h                                           ; $4bbc: $ac
	xor  e                                           ; $4bbd: $ab
	cp   d                                           ; $4bbe: $ba
	cp   c                                           ; $4bbf: $b9
	sbc  b                                           ; $4bc0: $98
	add  a                                           ; $4bc1: $87
	ld   h, l                                        ; $4bc2: $65
	ld   d, h                                        ; $4bc3: $54
	inc  sp                                          ; $4bc4: $33
	inc  sp                                          ; $4bc5: $33
	ld   d, l                                        ; $4bc6: $55
	ld   d, a                                        ; $4bc7: $57
	adc  c                                           ; $4bc8: $89
	xor  h                                           ; $4bc9: $ac
	cp   l                                           ; $4bca: $bd
	db   $eb                                         ; $4bcb: $eb
	db   $ec                                         ; $4bcc: $ec
	cp   h                                           ; $4bcd: $bc
	xor  e                                           ; $4bce: $ab
	xor  b                                           ; $4bcf: $a8
	sub  a                                           ; $4bd0: $97
	halt                                             ; $4bd1: $76
	ld   d, [hl]                                     ; $4bd2: $56
	ld   d, h                                        ; $4bd3: $54
	ld   b, h                                        ; $4bd4: $44
	ld   b, l                                        ; $4bd5: $45
	ld   b, [hl]                                     ; $4bd6: $46
	ld   h, a                                        ; $4bd7: $67
	adc  c                                           ; $4bd8: $89
	xor  e                                           ; $4bd9: $ab
	cp   d                                           ; $4bda: $ba
	cp   h                                           ; $4bdb: $bc
	cp   e                                           ; $4bdc: $bb
	xor  d                                           ; $4bdd: $aa
	cp   c                                           ; $4bde: $b9
	adc  b                                           ; $4bdf: $88
	sub  [hl]                                        ; $4be0: $96
	adc  b                                           ; $4be1: $88
	ld   h, a                                        ; $4be2: $67
	ld   l, b                                        ; $4be3: $68
	ld   h, [hl]                                     ; $4be4: $66
	ld   h, [hl]                                     ; $4be5: $66
	ld   h, [hl]                                     ; $4be6: $66
	ld   h, [hl]                                     ; $4be7: $66
	ld   [hl], a                                     ; $4be8: $77
	ld   [hl], a                                     ; $4be9: $77
	sbc  c                                           ; $4bea: $99
	sbc  c                                           ; $4beb: $99
	xor  e                                           ; $4bec: $ab
	cp   d                                           ; $4bed: $ba
	xor  d                                           ; $4bee: $aa
	xor  d                                           ; $4bef: $aa
	sbc  d                                           ; $4bf0: $9a
	sbc  b                                           ; $4bf1: $98
	sub  a                                           ; $4bf2: $97
	sub  a                                           ; $4bf3: $97
	ld   h, a                                        ; $4bf4: $67
	ld   h, [hl]                                     ; $4bf5: $66
	ld   b, l                                        ; $4bf6: $45
	ld   h, l                                        ; $4bf7: $65
	ld   b, l                                        ; $4bf8: $45
	ld   d, [hl]                                     ; $4bf9: $56
	ld   h, [hl]                                     ; $4bfa: $66
	adc  c                                           ; $4bfb: $89
	xor  d                                           ; $4bfc: $aa
	xor  e                                           ; $4bfd: $ab
	cp   h                                           ; $4bfe: $bc
	call $9bda                                       ; $4bff: $cd $da $9b
	add  [hl]                                        ; $4c02: $86
	halt                                             ; $4c03: $76
	ld   h, h                                        ; $4c04: $64
	inc  [hl]                                        ; $4c05: $34
	ld   d, h                                        ; $4c06: $54
	inc  h                                           ; $4c07: $24
	ld   d, [hl]                                     ; $4c08: $56
	ld   b, l                                        ; $4c09: $45
	ld   e, c                                        ; $4c0a: $59
	sub  a                                           ; $4c0b: $97
	xor  d                                           ; $4c0c: $aa
	call c, $bdcd                                    ; $4c0d: $dc $cd $bd
	cp   d                                           ; $4c10: $ba
	xor  d                                           ; $4c11: $aa
	add  [hl]                                        ; $4c12: $86
	ld   [hl], l                                     ; $4c13: $75
	ld   d, h                                        ; $4c14: $54
	inc  h                                           ; $4c15: $24
	ld   d, h                                        ; $4c16: $54
	inc  sp                                          ; $4c17: $33
	ld   b, l                                        ; $4c18: $45
	ld   d, l                                        ; $4c19: $55
	ld   [hl], a                                     ; $4c1a: $77
	adc  c                                           ; $4c1b: $89
	xor  h                                           ; $4c1c: $ac
	db   $dd                                         ; $4c1d: $dd
	db   $ed                                         ; $4c1e: $ed
	call $aaca                                       ; $4c1f: $cd $ca $aa
	add  a                                           ; $4c22: $87
	ld   d, [hl]                                     ; $4c23: $56
	ld   b, d                                        ; $4c24: $42
	inc  hl                                          ; $4c25: $23
	ld   b, d                                        ; $4c26: $42
	inc  sp                                          ; $4c27: $33
	ld   d, l                                        ; $4c28: $55
	ld   d, a                                        ; $4c29: $57
	xor  e                                           ; $4c2a: $ab
	sbc  h                                           ; $4c2b: $9c
	rst  $28                                         ; $4c2c: $ef
	cp   $ff                                         ; $4c2d: $fe $ff
	db   $fc                                         ; $4c2f: $fc
	xor  c                                           ; $4c30: $a9
	sub  a                                           ; $4c31: $97
	inc  h                                           ; $4c32: $24
	ld   [hl-], a                                    ; $4c33: $32
	ld   de, $1233                                   ; $4c34: $11 $33 $12
	ld   b, a                                        ; $4c37: $47
	add  a                                           ; $4c38: $87
	ld   a, d                                        ; $4c39: $7a
	db   $fd                                         ; $4c3a: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c3b: $cf
	rst  $38                                         ; $4c3c: $ff
	rst  $38                                         ; $4c3d: $ff
	db   $ed                                         ; $4c3e: $ed
	rst  ToBoot                                         ; $4c3f: $c7
	ld   l, c                                        ; $4c40: $69
	ld   de, $1111                                   ; $4c41: $11 $11 $11
	ld   hl, $6814                                   ; $4c44: $21 $14 $68
	xor  c                                           ; $4c47: $a9
	cp   a                                           ; $4c48: $bf
	rst  $38                                         ; $4c49: $ff
	rst  $38                                         ; $4c4a: $ff
	rst  $38                                         ; $4c4b: $ff
	db   $ed                                         ; $4c4c: $ed
	ei                                               ; $4c4d: $fb
	ld   h, l                                        ; $4c4e: $65
	ld   d, c                                        ; $4c4f: $51
	ld   de, $1111                                   ; $4c50: $11 $11 $11
	ld   de, $ac47                                   ; $4c53: $11 $47 $ac
	db   $dd                                         ; $4c56: $dd
	rst  $38                                         ; $4c57: $ff
	rst  $38                                         ; $4c58: $ff
	rst  $38                                         ; $4c59: $ff
	cp   $dc                                         ; $4c5a: $fe $dc
	sub  e                                           ; $4c5c: $93
	ld   hl, $1111                                   ; $4c5d: $21 $11 $11
	ld   de, $7911                                   ; $4c60: $11 $11 $79
	sbc  $df                                         ; $4c63: $de $df
	rst  $38                                         ; $4c65: $ff
	rst  $38                                         ; $4c66: $ff
	rst  $38                                         ; $4c67: $ff
	cp   $db                                         ; $4c68: $fe $db
	ld   h, c                                        ; $4c6a: $61
	ld   de, $1111                                   ; $4c6b: $11 $11 $11
	ld   de, $ce13                                   ; $4c6e: $11 $13 $ce
	rst  $38                                         ; $4c71: $ff
	rst  $38                                         ; $4c72: $ff
	rst  $38                                         ; $4c73: $ff
	rst  $38                                         ; $4c74: $ff
	rst  $38                                         ; $4c75: $ff
	call c, $1195                                    ; $4c76: $dc $95 $11
	ld   de, $1111                                   ; $4c79: $11 $11 $11
	ld   hl, $ff5f                                   ; $4c7c: $21 $5f $ff
	rst  $38                                         ; $4c7f: $ff
	rst  $38                                         ; $4c80: $ff
	rst  $38                                         ; $4c81: $ff
	rst  $38                                         ; $4c82: $ff
	ei                                               ; $4c83: $fb
	ld   a, b                                        ; $4c84: $78
	ld   sp, $1111                                   ; $4c85: $31 $11 $11
	ld   de, $0c13                                   ; $4c88: $11 $13 $0c
	rst  $38                                         ; $4c8b: $ff
	rst  $38                                         ; $4c8c: $ff
	rst  $38                                         ; $4c8d: $ff
	rst  $38                                         ; $4c8e: $ff
	rst  $38                                         ; $4c8f: $ff
	db   $fc                                         ; $4c90: $fc
	sub  [hl]                                        ; $4c91: $96
	ld   de, $1111                                   ; $4c92: $11 $11 $11
	ld   de, $1915                                   ; $4c95: $11 $15 $19
	rst  $38                                         ; $4c98: $ff
	rst  $38                                         ; $4c99: $ff
	rst  $38                                         ; $4c9a: $ff
	rst  $38                                         ; $4c9b: $ff
	rst  $38                                         ; $4c9c: $ff
	ei                                               ; $4c9d: $fb
	ld   b, a                                        ; $4c9e: $47
	ld   h, c                                        ; $4c9f: $61
	ld   de, $1111                                   ; $4ca0: $11 $11 $11
	rla                                              ; $4ca3: $17
	ld   c, b                                        ; $4ca4: $48
	rst  $38                                         ; $4ca5: $ff
	rst  $38                                         ; $4ca6: $ff
	rst  $38                                         ; $4ca7: $ff
	rst  $38                                         ; $4ca8: $ff
	rst  $38                                         ; $4ca9: $ff
	rst  $38                                         ; $4caa: $ff
	ld   h, d                                        ; $4cab: $62
	ld   hl, $1111                                   ; $4cac: $21 $11 $11
	ld   de, $6c18                                   ; $4caf: $11 $18 $6c
	rst  $38                                         ; $4cb2: $ff
	rst  $38                                         ; $4cb3: $ff
	rst  $38                                         ; $4cb4: $ff
	rst  $38                                         ; $4cb5: $ff
	rst  $38                                         ; $4cb6: $ff
	rst  $38                                         ; $4cb7: $ff
	ld   d, d                                        ; $4cb8: $52
	ld   hl, $1111                                   ; $4cb9: $21 $11 $11
	ld   de, $6b19                                   ; $4cbc: $11 $19 $6b
	rst  $38                                         ; $4cbf: $ff
	rst  $38                                         ; $4cc0: $ff
	rst  $38                                         ; $4cc1: $ff
	rst  $38                                         ; $4cc2: $ff
	rst  $38                                         ; $4cc3: $ff
	cp   $41                                         ; $4cc4: $fe $41
	ld   h, c                                        ; $4cc6: $61
	ld   de, $1111                                   ; $4cc7: $11 $11 $11
	dec  de                                          ; $4cca: $1b
	ld   l, e                                        ; $4ccb: $6b
	rst  $38                                         ; $4ccc: $ff
	rst  $38                                         ; $4ccd: $ff
	rst  $38                                         ; $4cce: $ff
	cp   $ff                                         ; $4ccf: $fe $ff
	db   $fd                                         ; $4cd1: $fd
	ld   b, d                                        ; $4cd2: $42
	ld   b, c                                        ; $4cd3: $41
	ld   de, $1111                                   ; $4cd4: $11 $11 $11
	ld   h, a                                        ; $4cd7: $67
	ld   c, a                                        ; $4cd8: $4f
	rst  $38                                         ; $4cd9: $ff
	rst  $38                                         ; $4cda: $ff
	rst  $38                                         ; $4cdb: $ff
	rst  $38                                         ; $4cdc: $ff
	rst  $38                                         ; $4cdd: $ff
	jp   c, $3182                                    ; $4cde: $da $82 $31

	ld   de, $1111                                   ; $4ce1: $11 $11 $11
	add  [hl]                                        ; $4ce4: $86
	sbc  a                                           ; $4ce5: $9f
	rst  $38                                         ; $4ce6: $ff
	rst  $38                                         ; $4ce7: $ff
	rst  $38                                         ; $4ce8: $ff
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	call $1165                                       ; $4ceb: $cd $65 $11
	ld   de, $1111                                   ; $4cee: $11 $11 $11
	add  e                                           ; $4cf1: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf2: $cf
	rst  $38                                         ; $4cf3: $ff
	rst  $38                                         ; $4cf4: $ff
	rst  JumpTable                                         ; $4cf5: $df
	cp   $ef                                         ; $4cf6: $fe $ef
	ld   a, [$1174]                                  ; $4cf8: $fa $74 $11
	ld   de, $1111                                   ; $4cfb: $11 $11 $11
	sub  $8f                                         ; $4cfe: $d6 $8f
	rst  $38                                         ; $4d00: $ff
	rst  $38                                         ; $4d01: $ff
	rst  $38                                         ; $4d02: $ff
	db   $fd                                         ; $4d03: $fd
	rst  $38                                         ; $4d04: $ff
	ld   hl, sp+$45                                  ; $4d05: $f8 $45
	ld   de, $1111                                   ; $4d07: $11 $11 $11
	rla                                              ; $4d0a: $17
	or   h                                           ; $4d0b: $b4
	xor  a                                           ; $4d0c: $af
	rst  $38                                         ; $4d0d: $ff
	rst  $38                                         ; $4d0e: $ff
	rst  $38                                         ; $4d0f: $ff
	cp   $ff                                         ; $4d10: $fe $ff
	or   $45                                         ; $4d12: $f6 $45
	ld   hl, $1111                                   ; $4d14: $21 $11 $11
	inc  de                                          ; $4d17: $13
	db   $fd                                         ; $4d18: $fd
	ccf                                              ; $4d19: $3f
	rst  $38                                         ; $4d1a: $ff
	ld   [$f4ff], a                                  ; $4d1b: $ea $ff $f4
	rst  $28                                         ; $4d1e: $ef
	ldh  a, [c]                                      ; $4d1f: $f2
	inc  h                                           ; $4d20: $24
	ld   d, c                                        ; $4d21: $51
	ld   de, $1111                                   ; $4d22: $11 $11 $11
	cp   l                                           ; $4d25: $bd
	rst  JumpTable                                         ; $4d26: $df
	rst  $38                                         ; $4d27: $ff
	db   $fc                                         ; $4d28: $fc
	rst  $38                                         ; $4d29: $ff
	cp   $cf                                         ; $4d2a: $fe $cf
	ld   [$1151], a                                  ; $4d2c: $ea $51 $11
	ld   de, $1b11                                   ; $4d2f: $11 $11 $1b
	add  l                                           ; $4d32: $85
	rst  JumpTable                                         ; $4d33: $df
	rst  $38                                         ; $4d34: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d35: $cf
	rst  $38                                         ; $4d36: $ff
	ld   [hl], h                                     ; $4d37: $74
	rst  $38                                         ; $4d38: $ff

jr_0be_4d39:
	and  d                                           ; $4d39: $a2
	scf                                              ; $4d3a: $37
	ld   b, c                                        ; $4d3b: $41
	ld   de, $1711                                   ; $4d3c: $11 $11 $17
	adc  h                                           ; $4d3f: $8c
	rst  $38                                         ; $4d40: $ff
	rst  $38                                         ; $4d41: $ff
	rst  $38                                         ; $4d42: $ff
	rst  $38                                         ; $4d43: $ff
	xor  a                                           ; $4d44: $af
	ei                                               ; $4d45: $fb
	sub  l                                           ; $4d46: $95
	or   $11                                         ; $4d47: $f6 $11
	ld   de, $1e11                                   ; $4d49: $11 $11 $1e
	cp   b                                           ; $4d4c: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d4d: $cf
	rst  $38                                         ; $4d4e: $ff
	rst  $38                                         ; $4d4f: $ff
	rst  $38                                         ; $4d50: $ff
	sbc  $fe                                         ; $4d51: $de $fe
	push af                                          ; $4d53: $f5
	ld   [hl], l                                     ; $4d54: $75
	ld   de, $1111                                   ; $4d55: $11 $11 $11
	jr   jr_0be_4db5                                 ; $4d58: $18 $5b

	db   $fc                                         ; $4d5a: $fc
	rst  $38                                         ; $4d5b: $ff
	rst  $10                                         ; $4d5c: $d7
	rst  $38                                         ; $4d5d: $ff
	ld   l, a                                        ; $4d5e: $6f
	ei                                               ; $4d5f: $fb
	rst  $30                                         ; $4d60: $f7
	ld   d, $11                                      ; $4d61: $16 $11
	ld   de, $1611                                   ; $4d63: $11 $11 $16
	cp   d                                           ; $4d66: $ba
	cp   a                                           ; $4d67: $bf
	db   $fc                                         ; $4d68: $fc
	rst  $38                                         ; $4d69: $ff
	rst  $38                                         ; $4d6a: $ff
	rst  $38                                         ; $4d6b: $ff
	sbc  a                                           ; $4d6c: $9f
	cp   e                                           ; $4d6d: $bb
	add  d                                           ; $4d6e: $82
	ld   de, $1111                                   ; $4d6f: $11 $11 $11
	ld   d, $79                                      ; $4d72: $16 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d74: $cf
	rst  $38                                         ; $4d75: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d76: $cf
	db   $fc                                         ; $4d77: $fc
	rst  $38                                         ; $4d78: $ff
	xor  a                                           ; $4d79: $af
	xor  d                                           ; $4d7a: $aa
	ld   [hl], h                                     ; $4d7b: $74
	ld   de, $1111                                   ; $4d7c: $11 $11 $11
	jr   jr_0be_4d39                                 ; $4d7f: $18 $b8

	ld   c, [hl]                                     ; $4d81: $4e
	rst  $38                                         ; $4d82: $ff
	ld   a, l                                        ; $4d83: $7d
	rst  $38                                         ; $4d84: $ff
	ld   l, d                                        ; $4d85: $6a
	rst  $38                                         ; $4d86: $ff
	ld   a, [hl+]                                    ; $4d87: $2a
	add  $11                                         ; $4d88: $c6 $11
	inc  de                                          ; $4d8a: $13
	ld   de, $d61b                                   ; $4d8b: $11 $1b $d6
	ld   a, [hl+]                                    ; $4d8e: $2a
	rst  $38                                         ; $4d8f: $ff
	ld   a, d                                        ; $4d90: $7a
	rst  $38                                         ; $4d91: $ff
	add  $ff                                         ; $4d92: $c6 $ff
	reti                                             ; $4d94: $d9


	ld   d, h                                        ; $4d95: $54
	ld   d, c                                        ; $4d96: $51
	ld   [de], a                                     ; $4d97: $12
	ld   hl, $d318                                   ; $4d98: $21 $18 $d3
	ld   c, a                                        ; $4d9b: $4f
	rst  $38                                         ; $4d9c: $ff
	ld   l, c                                        ; $4d9d: $69
	rst  $38                                         ; $4d9e: $ff
	xor  b                                           ; $4d9f: $a8
	rst  $38                                         ; $4da0: $ff
	ld   d, e                                        ; $4da1: $53
	rst  ToBoot                                         ; $4da2: $c7
	ld   [hl], c                                     ; $4da3: $71
	dec  d                                           ; $4da4: $15
	ld   hl, $7513                                   ; $4da5: $21 $13 $75
	ld   l, h                                        ; $4da8: $6c
	rst  $28                                         ; $4da9: $ef
	sbc  a                                           ; $4daa: $9f
	cp   $cd                                         ; $4dab: $fe $cd
	db   $fd                                         ; $4dad: $fd
	db   $f4                                         ; $4dae: $f4
	sbc  l                                           ; $4daf: $9d
	ld   de, $4116                                   ; $4db0: $11 $16 $41
	inc  d                                           ; $4db3: $14
	and  a                                           ; $4db4: $a7

jr_0be_4db5:
	jr   z, @+$01                                    ; $4db5: $28 $ff

	and  [hl]                                        ; $4db7: $a6
	rst  $38                                         ; $4db8: $ff
	ld   hl, sp-$61                                  ; $4db9: $f8 $9f
	rst  $20                                         ; $4dbb: $e7
	ld   c, e                                        ; $4dbc: $4b
	and  d                                           ; $4dbd: $a2
	inc  de                                          ; $4dbe: $13
	ld   d, a                                        ; $4dbf: $57
	ld   de, $7578                                   ; $4dc0: $11 $78 $75
	call z, $dd9b                                    ; $4dc3: $cc $9b $dd
	xor  l                                           ; $4dc6: $ad
	ld   a, [$baaa]                                  ; $4dc7: $fa $aa $ba
	ld   h, [hl]                                     ; $4dca: $66
	inc  [hl]                                        ; $4dcb: $34
	ld   d, e                                        ; $4dcc: $53
	inc  [hl]                                        ; $4dcd: $34
	ld   d, a                                        ; $4dce: $57
	halt                                             ; $4dcf: $76
	adc  d                                           ; $4dd0: $8a
	ret                                              ; $4dd1: $c9


	xor  h                                           ; $4dd2: $ac
	xor  e                                           ; $4dd3: $ab
	xor  c                                           ; $4dd4: $a9
	xor  h                                           ; $4dd5: $ac
	add  a                                           ; $4dd6: $87
	adc  c                                           ; $4dd7: $89
	ld   h, l                                        ; $4dd8: $65
	ld   d, [hl]                                     ; $4dd9: $56
	ld   [hl], h                                     ; $4dda: $74
	ld   d, [hl]                                     ; $4ddb: $56
	ld   [hl], a                                     ; $4ddc: $77
	ld   l, b                                        ; $4ddd: $68
	xor  d                                           ; $4dde: $aa
	adc  b                                           ; $4ddf: $88
	xor  c                                           ; $4de0: $a9
	sbc  c                                           ; $4de1: $99
	xor  e                                           ; $4de2: $ab
	adc  c                                           ; $4de3: $89
	sbc  c                                           ; $4de4: $99
	add  [hl]                                        ; $4de5: $86
	halt                                             ; $4de6: $76
	halt                                             ; $4de7: $76
	ld   h, a                                        ; $4de8: $67
	ld   h, a                                        ; $4de9: $67
	add  a                                           ; $4dea: $87
	ld   [hl], a                                     ; $4deb: $77
	sbc  c                                           ; $4dec: $99
	adc  b                                           ; $4ded: $88
	sbc  c                                           ; $4dee: $99
	sbc  c                                           ; $4def: $99
	adc  c                                           ; $4df0: $89
	adc  c                                           ; $4df1: $89
	add  a                                           ; $4df2: $87
	sub  a                                           ; $4df3: $97
	ld   [hl], a                                     ; $4df4: $77
	ld   [hl], a                                     ; $4df5: $77
	ld   a, b                                        ; $4df6: $78
	ld   [hl], a                                     ; $4df7: $77
	ld   [hl], a                                     ; $4df8: $77
	ld   [hl], a                                     ; $4df9: $77
	adc  b                                           ; $4dfa: $88
	add  a                                           ; $4dfb: $87
	adc  b                                           ; $4dfc: $88
	ld   a, b                                        ; $4dfd: $78
	adc  b                                           ; $4dfe: $88
	ld   [hl], a                                     ; $4dff: $77
	adc  b                                           ; $4e00: $88
	adc  b                                           ; $4e01: $88
	adc  b                                           ; $4e02: $88
	adc  b                                           ; $4e03: $88
	sbc  b                                           ; $4e04: $98
	sbc  b                                           ; $4e05: $98
	sbc  b                                           ; $4e06: $98
	sbc  b                                           ; $4e07: $98
	sbc  b                                           ; $4e08: $98
	adc  b                                           ; $4e09: $88
	adc  c                                           ; $4e0a: $89
	adc  b                                           ; $4e0b: $88
	adc  b                                           ; $4e0c: $88
	adc  b                                           ; $4e0d: $88
	adc  b                                           ; $4e0e: $88
	adc  b                                           ; $4e0f: $88
	adc  b                                           ; $4e10: $88
	adc  b                                           ; $4e11: $88
	sbc  c                                           ; $4e12: $99
	adc  b                                           ; $4e13: $88
	adc  b                                           ; $4e14: $88
	adc  b                                           ; $4e15: $88
	sbc  b                                           ; $4e16: $98
	adc  b                                           ; $4e17: $88
	adc  b                                           ; $4e18: $88
	adc  b                                           ; $4e19: $88
	adc  b                                           ; $4e1a: $88
	adc  b                                           ; $4e1b: $88
	adc  b                                           ; $4e1c: $88
	adc  b                                           ; $4e1d: $88
	adc  b                                           ; $4e1e: $88
	adc  b                                           ; $4e1f: $88
	adc  b                                           ; $4e20: $88
	adc  b                                           ; $4e21: $88
	adc  b                                           ; $4e22: $88
	adc  b                                           ; $4e23: $88
	adc  b                                           ; $4e24: $88
	adc  b                                           ; $4e25: $88
	adc  b                                           ; $4e26: $88
	adc  b                                           ; $4e27: $88
	adc  b                                           ; $4e28: $88
	adc  b                                           ; $4e29: $88
	adc  b                                           ; $4e2a: $88
	adc  b                                           ; $4e2b: $88
	adc  b                                           ; $4e2c: $88
	adc  b                                           ; $4e2d: $88
	adc  b                                           ; $4e2e: $88
	adc  b                                           ; $4e2f: $88
	adc  b                                           ; $4e30: $88
	adc  b                                           ; $4e31: $88
	adc  b                                           ; $4e32: $88
	adc  b                                           ; $4e33: $88
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
	adc  b                                           ; $4e3e: $88
	adc  b                                           ; $4e3f: $88
	adc  b                                           ; $4e40: $88
	adc  b                                           ; $4e41: $88
	adc  b                                           ; $4e42: $88
	adc  b                                           ; $4e43: $88
	adc  b                                           ; $4e44: $88
	adc  b                                           ; $4e45: $88
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
	adc  b                                           ; $4e6c: $88
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
	adc  b                                           ; $4e82: $88
	adc  b                                           ; $4e83: $88
	adc  b                                           ; $4e84: $88
	adc  b                                           ; $4e85: $88
	adc  b                                           ; $4e86: $88
	adc  b                                           ; $4e87: $88
	adc  b                                           ; $4e88: $88
	adc  b                                           ; $4e89: $88
	adc  b                                           ; $4e8a: $88
	adc  b                                           ; $4e8b: $88
	adc  b                                           ; $4e8c: $88
	adc  b                                           ; $4e8d: $88
	adc  b                                           ; $4e8e: $88
	adc  b                                           ; $4e8f: $88
	adc  b                                           ; $4e90: $88
	adc  b                                           ; $4e91: $88
	adc  b                                           ; $4e92: $88
	adc  b                                           ; $4e93: $88
	adc  b                                           ; $4e94: $88
	adc  b                                           ; $4e95: $88
	adc  b                                           ; $4e96: $88
	adc  b                                           ; $4e97: $88
	adc  b                                           ; $4e98: $88
	adc  b                                           ; $4e99: $88
	adc  b                                           ; $4e9a: $88
	adc  b                                           ; $4e9b: $88
	adc  b                                           ; $4e9c: $88
	adc  b                                           ; $4e9d: $88
	adc  b                                           ; $4e9e: $88
	adc  b                                           ; $4e9f: $88
	adc  b                                           ; $4ea0: $88
	adc  b                                           ; $4ea1: $88
	adc  b                                           ; $4ea2: $88
	adc  b                                           ; $4ea3: $88
	adc  b                                           ; $4ea4: $88
	adc  b                                           ; $4ea5: $88
	adc  b                                           ; $4ea6: $88
	adc  b                                           ; $4ea7: $88
	adc  b                                           ; $4ea8: $88
	adc  b                                           ; $4ea9: $88
	adc  b                                           ; $4eaa: $88
	adc  b                                           ; $4eab: $88
	adc  b                                           ; $4eac: $88
	adc  b                                           ; $4ead: $88
	adc  b                                           ; $4eae: $88
	adc  b                                           ; $4eaf: $88
	adc  b                                           ; $4eb0: $88
	adc  b                                           ; $4eb1: $88
	adc  b                                           ; $4eb2: $88
	adc  b                                           ; $4eb3: $88
	adc  b                                           ; $4eb4: $88
	adc  b                                           ; $4eb5: $88
	adc  b                                           ; $4eb6: $88
	adc  b                                           ; $4eb7: $88
	adc  b                                           ; $4eb8: $88
	adc  b                                           ; $4eb9: $88
	adc  b                                           ; $4eba: $88
	adc  b                                           ; $4ebb: $88
	adc  b                                           ; $4ebc: $88
	adc  b                                           ; $4ebd: $88
	adc  b                                           ; $4ebe: $88
	adc  b                                           ; $4ebf: $88
	adc  b                                           ; $4ec0: $88
	adc  b                                           ; $4ec1: $88
	adc  b                                           ; $4ec2: $88
	adc  b                                           ; $4ec3: $88
	adc  b                                           ; $4ec4: $88
	adc  b                                           ; $4ec5: $88
	adc  b                                           ; $4ec6: $88
	adc  b                                           ; $4ec7: $88
	adc  b                                           ; $4ec8: $88
	adc  b                                           ; $4ec9: $88
	adc  b                                           ; $4eca: $88
	adc  b                                           ; $4ecb: $88
	adc  b                                           ; $4ecc: $88
	adc  b                                           ; $4ecd: $88
	adc  b                                           ; $4ece: $88
	adc  b                                           ; $4ecf: $88
	adc  b                                           ; $4ed0: $88
	adc  b                                           ; $4ed1: $88
	adc  b                                           ; $4ed2: $88
	adc  b                                           ; $4ed3: $88
	adc  b                                           ; $4ed4: $88
	adc  b                                           ; $4ed5: $88
	adc  b                                           ; $4ed6: $88
	adc  b                                           ; $4ed7: $88
	adc  b                                           ; $4ed8: $88
	adc  b                                           ; $4ed9: $88
	adc  b                                           ; $4eda: $88
	adc  b                                           ; $4edb: $88
	adc  b                                           ; $4edc: $88
	adc  b                                           ; $4edd: $88
	adc  b                                           ; $4ede: $88
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	adc  b                                           ; $4ee1: $88
	adc  b                                           ; $4ee2: $88
	adc  b                                           ; $4ee3: $88
	adc  b                                           ; $4ee4: $88
	adc  b                                           ; $4ee5: $88
	adc  b                                           ; $4ee6: $88
	adc  b                                           ; $4ee7: $88
	adc  b                                           ; $4ee8: $88
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
	sbc  c                                           ; $4f53: $99
	add  a                                           ; $4f54: $87
	adc  c                                           ; $4f55: $89
	adc  b                                           ; $4f56: $88
	adc  b                                           ; $4f57: $88
	adc  c                                           ; $4f58: $89
	adc  b                                           ; $4f59: $88
	adc  c                                           ; $4f5a: $89
	xor  c                                           ; $4f5b: $a9
	sbc  d                                           ; $4f5c: $9a
	xor  c                                           ; $4f5d: $a9
	adc  b                                           ; $4f5e: $88
	sbc  b                                           ; $4f5f: $98
	ld   [hl], a                                     ; $4f60: $77
	ld   a, b                                        ; $4f61: $78
	halt                                             ; $4f62: $76
	ld   h, a                                        ; $4f63: $67
	ld   a, b                                        ; $4f64: $78
	adc  b                                           ; $4f65: $88
	xor  c                                           ; $4f66: $a9
	adc  c                                           ; $4f67: $89
	sbc  b                                           ; $4f68: $98
	adc  b                                           ; $4f69: $88
	adc  c                                           ; $4f6a: $89
	add  [hl]                                        ; $4f6b: $86
	ld   h, [hl]                                     ; $4f6c: $66
	ld   h, a                                        ; $4f6d: $67
	ld   [hl], a                                     ; $4f6e: $77
	ld   [hl], a                                     ; $4f6f: $77
	adc  b                                           ; $4f70: $88
	ld   a, b                                        ; $4f71: $78
	xor  d                                           ; $4f72: $aa
	sbc  b                                           ; $4f73: $98
	adc  b                                           ; $4f74: $88
	ld   [hl], a                                     ; $4f75: $77
	ld   h, [hl]                                     ; $4f76: $66
	halt                                             ; $4f77: $76
	ld   h, [hl]                                     ; $4f78: $66
	ld   [hl], a                                     ; $4f79: $77
	halt                                             ; $4f7a: $76
	ld   a, b                                        ; $4f7b: $78
	sub  a                                           ; $4f7c: $97
	adc  c                                           ; $4f7d: $89
	add  a                                           ; $4f7e: $87
	ld   [hl], a                                     ; $4f7f: $77
	adc  b                                           ; $4f80: $88
	ld   [hl], a                                     ; $4f81: $77
	halt                                             ; $4f82: $76
	ld   a, b                                        ; $4f83: $78
	add  a                                           ; $4f84: $87
	halt                                             ; $4f85: $76
	xor  c                                           ; $4f86: $a9
	ld   h, [hl]                                     ; $4f87: $66
	ld   h, a                                        ; $4f88: $67
	ld   h, a                                        ; $4f89: $67
	ld   d, l                                        ; $4f8a: $55
	ld   a, b                                        ; $4f8b: $78
	ld   [hl], a                                     ; $4f8c: $77
	ld   [hl], a                                     ; $4f8d: $77
	cp   e                                           ; $4f8e: $bb
	sub  [hl]                                        ; $4f8f: $96
	adc  e                                           ; $4f90: $8b
	xor  d                                           ; $4f91: $aa
	ld   l, b                                        ; $4f92: $68
	xor  c                                           ; $4f93: $a9
	or   [hl]                                        ; $4f94: $b6
	ld   e, b                                        ; $4f95: $58
	xor  e                                           ; $4f96: $ab
	ld   d, e                                        ; $4f97: $53
	and  a                                           ; $4f98: $a7
	ld   b, e                                        ; $4f99: $43
	ld   b, [hl]                                     ; $4f9a: $46
	ld   d, l                                        ; $4f9b: $55
	inc  d                                           ; $4f9c: $14
	ld   e, b                                        ; $4f9d: $58
	and  e                                           ; $4f9e: $a3
	ld   l, a                                        ; $4f9f: $6f
	db   $fd                                         ; $4fa0: $fd
	cp   $ff                                         ; $4fa1: $fe $ff
	sbc  $dd                                         ; $4fa3: $de $dd
	db   $fc                                         ; $4fa5: $fc
	ld   [hl], a                                     ; $4fa6: $77
	ld   h, l                                        ; $4fa7: $65
	ld   sp, $1111                                   ; $4fa8: $31 $11 $11
	ld   de, $bf54                                   ; $4fab: $11 $54 $bf
	rst  $38                                         ; $4fae: $ff
	rst  $38                                         ; $4faf: $ff
	rst  $38                                         ; $4fb0: $ff
	ret                                              ; $4fb1: $c9


	ei                                               ; $4fb2: $fb
	rst  $38                                         ; $4fb3: $ff
	xor  e                                           ; $4fb4: $ab
	call Call_0be_4767                               ; $4fb5: $cd $67 $47
	ld   de, $1111                                   ; $4fb8: $11 $11 $11
	ld   b, c                                        ; $4fbb: $41
	rst  JumpTable                                         ; $4fbc: $df
	rst  $38                                         ; $4fbd: $ff
	rst  $38                                         ; $4fbe: $ff
	rst  $38                                         ; $4fbf: $ff
	sbc  b                                           ; $4fc0: $98
	db   $ec                                         ; $4fc1: $ec
	db   $fc                                         ; $4fc2: $fc
	rst  $10                                         ; $4fc3: $d7
	ld   a, c                                        ; $4fc4: $79
	adc  d                                           ; $4fc5: $8a
	adc  d                                           ; $4fc6: $8a
	ld   h, c                                        ; $4fc7: $61
	ld   de, $1211                                   ; $4fc8: $11 $11 $12
	ld   a, [hl]                                     ; $4fcb: $7e
	rst  $38                                         ; $4fcc: $ff
	rst  $38                                         ; $4fcd: $ff
	rst  $38                                         ; $4fce: $ff
	jp   c, $ef9f                                    ; $4fcf: $da $9f $ef

	or   l                                           ; $4fd2: $b5
	halt                                             ; $4fd3: $76
	ld   e, d                                        ; $4fd4: $5a
	xor  c                                           ; $4fd5: $a9
	ld   a, [$1111]                                  ; $4fd6: $fa $11 $11
	ld   de, $ff5e                                   ; $4fd9: $11 $5e $ff
	rst  $38                                         ; $4fdc: $ff
	rst  $38                                         ; $4fdd: $ff
	rst  JumpTable                                         ; $4fde: $df
	rst  $10                                         ; $4fdf: $d7
	xor  d                                           ; $4fe0: $aa
	ei                                               ; $4fe1: $fb
	add  h                                           ; $4fe2: $84
	ld   l, d                                        ; $4fe3: $6a
	cp   e                                           ; $4fe4: $bb
	rst  JumpTable                                         ; $4fe5: $df
	and  c                                           ; $4fe6: $a1
	ld   de, $1411                                   ; $4fe7: $11 $11 $14
	xor  d                                           ; $4fea: $aa
	rst  $38                                         ; $4feb: $ff
	rst  $38                                         ; $4fec: $ff
	rst  $38                                         ; $4fed: $ff
	db   $db                                         ; $4fee: $db
	ld   a, h                                        ; $4fef: $7c
	rst  JumpTable                                         ; $4ff0: $df
	jp   $ae75                                       ; $4ff1: $c3 $75 $ae


	db   $fd                                         ; $4ff4: $fd
	db   $fd                                         ; $4ff5: $fd
	ld   hl, $1111                                   ; $4ff6: $21 $11 $11
	dec  e                                           ; $4ff9: $1d
	xor  a                                           ; $4ffa: $af
	rst  $38                                         ; $4ffb: $ff
	rst  $38                                         ; $4ffc: $ff
	cp   $9a                                         ; $4ffd: $fe $9a
	ld   a, d                                        ; $4fff: $7a
	rst  $38                                         ; $5000: $ff
	ld   h, [hl]                                     ; $5001: $66
	ld   a, e                                        ; $5002: $7b
	cp   a                                           ; $5003: $bf
	rst  $38                                         ; $5004: $ff
	push af                                          ; $5005: $f5
	ld   de, $1111                                   ; $5006: $11 $11 $11
	ld   e, l                                        ; $5009: $5d
	rst  $28                                         ; $500a: $ef
	rst  $38                                         ; $500b: $ff
	rst  $38                                         ; $500c: $ff
	db   $db                                         ; $500d: $db
	db   $d3                                         ; $500e: $d3
	cp   a                                           ; $500f: $bf
	jp   z, $cc48                                    ; $5010: $ca $48 $cc

	rst  $38                                         ; $5013: $ff
	rst  $38                                         ; $5014: $ff
	jp   $1111                                       ; $5015: $c3 $11 $11


	ld   de, $ff9f                                   ; $5018: $11 $9f $ff
	rst  $38                                         ; $501b: $ff
	ei                                               ; $501c: $fb
	adc  b                                           ; $501d: $88
	xor  c                                           ; $501e: $a9
	adc  $e9                                         ; $501f: $ce $e9
	ld   l, c                                        ; $5021: $69
	cp   a                                           ; $5022: $bf
	rst  $28                                         ; $5023: $ef
	rst  $38                                         ; $5024: $ff
	or   e                                           ; $5025: $b3
	ld   de, $1111                                   ; $5026: $11 $11 $11
	ld   a, a                                        ; $5029: $7f
	rst  $38                                         ; $502a: $ff
	rst  $38                                         ; $502b: $ff
	rst  $38                                         ; $502c: $ff
	add  a                                           ; $502d: $87
	push bc                                          ; $502e: $c5
	call z, $8bfe                                    ; $502f: $cc $fe $8b
	ld   a, a                                        ; $5032: $7f
	rst  $38                                         ; $5033: $ff
	rst  $38                                         ; $5034: $ff
	jp   nc, $1111                                   ; $5035: $d2 $11 $11

	ld   de, $ff7f                                   ; $5038: $11 $7f $ff
	rst  $38                                         ; $503b: $ff
	ei                                               ; $503c: $fb
	ld   [hl], e                                     ; $503d: $73
	or   a                                           ; $503e: $b7
	cp   a                                           ; $503f: $bf
	rst  $38                                         ; $5040: $ff
	xor  c                                           ; $5041: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5042: $cf
	rst  $38                                         ; $5043: $ff
	rst  $38                                         ; $5044: $ff
	and  e                                           ; $5045: $a3
	ld   de, $1111                                   ; $5046: $11 $11 $11
	rra                                              ; $5049: $1f
	rst  $38                                         ; $504a: $ff
	rst  $38                                         ; $504b: $ff
	rst  $38                                         ; $504c: $ff
	sub  [hl]                                        ; $504d: $96
	ld   c, b                                        ; $504e: $48
	ld   c, d                                        ; $504f: $4a
	cp   $ff                                         ; $5050: $fe $ff
	rst  $28                                         ; $5052: $ef
	rst  $38                                         ; $5053: $ff
	rst  $38                                         ; $5054: $ff
	rst  ToBoot                                         ; $5055: $c7
	ld   sp, $1111                                   ; $5056: $31 $11 $11
	ld   de, $ffee                                   ; $5059: $11 $ee $ff
	rst  $38                                         ; $505c: $ff
	or   $56                                         ; $505d: $f6 $56
	or   a                                           ; $505f: $b7
	cp   [hl]                                        ; $5060: $be
	rst  $38                                         ; $5061: $ff
	rst  $38                                         ; $5062: $ff
	cp   $dd                                         ; $5063: $fe $dd
	db   $ed                                         ; $5065: $ed
	ld   [hl], c                                     ; $5066: $71
	ld   de, $1111                                   ; $5067: $11 $11 $11
	add  hl, de                                      ; $506a: $19
	rst  $38                                         ; $506b: $ff
	rst  $38                                         ; $506c: $ff
	rst  $38                                         ; $506d: $ff
	halt                                             ; $506e: $76
	ld   [hl], a                                     ; $506f: $77
	ld   a, d                                        ; $5070: $7a
	rst  $38                                         ; $5071: $ff
	rst  $38                                         ; $5072: $ff
	rst  $38                                         ; $5073: $ff
	call c, $e7bc                                    ; $5074: $dc $bc $e7
	ld   h, c                                        ; $5077: $61
	ld   de, $1111                                   ; $5078: $11 $11 $11
	ld   a, [de]                                     ; $507b: $1a
	rst  $38                                         ; $507c: $ff
	rst  $38                                         ; $507d: $ff
	db   $fc                                         ; $507e: $fc
	ld   [hl], a                                     ; $507f: $77
	xor  d                                           ; $5080: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5081: $cf
	rst  $38                                         ; $5082: $ff
	cp   $ec                                         ; $5083: $fe $ec
	sbc  h                                           ; $5085: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5086: $cf
	rst  ToBoot                                         ; $5087: $c7
	ld   b, c                                        ; $5088: $41
	ld   de, $1111                                   ; $5089: $11 $11 $11
	add  hl, de                                      ; $508c: $19
	rst  $38                                         ; $508d: $ff
	rst  $38                                         ; $508e: $ff
	db   $fd                                         ; $508f: $fd
	cp   e                                           ; $5090: $bb
	call c, $efef                                    ; $5091: $dc $ef $ef
	cp   $fd                                         ; $5094: $fe $fd
	cp   e                                           ; $5096: $bb
	cp   e                                           ; $5097: $bb
	add  a                                           ; $5098: $87
	ld   b, c                                        ; $5099: $41
	ld   de, $1111                                   ; $509a: $11 $11 $11
	dec  d                                           ; $509d: $15
	rst  JumpTable                                         ; $509e: $df
	rst  $38                                         ; $509f: $ff
	db   $fd                                         ; $50a0: $fd
	db   $fd                                         ; $50a1: $fd
	rst  $38                                         ; $50a2: $ff
	rst  $38                                         ; $50a3: $ff
	rst  $38                                         ; $50a4: $ff
	db   $ed                                         ; $50a5: $ed
	reti                                             ; $50a6: $d9


	adc  d                                           ; $50a7: $8a
	adc  c                                           ; $50a8: $89
	adc  b                                           ; $50a9: $88
	sub  l                                           ; $50aa: $95
	ld   de, $1111                                   ; $50ab: $11 $11 $11
	ld   de, $ac49                                   ; $50ae: $11 $49 $ac
	jp   z, $ffce                                    ; $50b1: $ca $ce $ff

	rst  $38                                         ; $50b4: $ff
	rst  $38                                         ; $50b5: $ff
	db   $fd                                         ; $50b6: $fd
	jp   z, $9989                                    ; $50b7: $ca $89 $99

	sbc  c                                           ; $50ba: $99
	sbc  c                                           ; $50bb: $99
	ld   [hl], l                                     ; $50bc: $75
	ld   hl, $1111                                   ; $50bd: $21 $11 $11
	inc  h                                           ; $50c0: $24
	ld   d, h                                        ; $50c1: $54
	ld   [hl-], a                                    ; $50c2: $32
	ld   [de], a                                     ; $50c3: $12
	ld   b, a                                        ; $50c4: $47
	xor  h                                           ; $50c5: $ac
	cp   $ff                                         ; $50c6: $fe $ff
	rst  $38                                         ; $50c8: $ff
	rst  $38                                         ; $50c9: $ff
	rst  $38                                         ; $50ca: $ff
	rst  $38                                         ; $50cb: $ff
	rst  $38                                         ; $50cc: $ff
	res  0, l                                        ; $50cd: $cb $85
	ld   sp, $1111                                   ; $50cf: $31 $11 $11
	ld   de, $1111                                   ; $50d2: $11 $11 $11
	ld   de, $7913                                   ; $50d5: $11 $13 $79
	adc  $ff                                         ; $50d8: $ce $ff
	rst  $38                                         ; $50da: $ff
	rst  $38                                         ; $50db: $ff
	rst  $38                                         ; $50dc: $ff
	rst  $38                                         ; $50dd: $ff
	rst  $38                                         ; $50de: $ff
	db   $eb                                         ; $50df: $eb
	add  l                                           ; $50e0: $85
	ld   sp, $1111                                   ; $50e1: $31 $11 $11
	ld   de, $1111                                   ; $50e4: $11 $11 $11
	ld   de, $5711                                   ; $50e7: $11 $11 $57
	cp   [hl]                                        ; $50ea: $be
	rst  $38                                         ; $50eb: $ff
	rst  $38                                         ; $50ec: $ff
	rst  $38                                         ; $50ed: $ff
	rst  $38                                         ; $50ee: $ff
	rst  $38                                         ; $50ef: $ff
	rst  $38                                         ; $50f0: $ff
	cp   $b8                                         ; $50f1: $fe $b8
	ld   h, e                                        ; $50f3: $63
	ld   de, $1111                                   ; $50f4: $11 $11 $11
	ld   de, $1111                                   ; $50f7: $11 $11 $11
	ld   de, $8b16                                   ; $50fa: $11 $16 $8b
	rst  $28                                         ; $50fd: $ef
	rst  $38                                         ; $50fe: $ff
	rst  $38                                         ; $50ff: $ff
	rst  $38                                         ; $5100: $ff
	rst  $38                                         ; $5101: $ff
	rst  $38                                         ; $5102: $ff
	rst  $38                                         ; $5103: $ff
	db   $eb                                         ; $5104: $eb
	sub  [hl]                                        ; $5105: $96
	ld   sp, $1111                                   ; $5106: $31 $11 $11
	ld   de, $1111                                   ; $5109: $11 $11 $11
	ld   de, $4711                                   ; $510c: $11 $11 $47
	xor  l                                           ; $510f: $ad
	rst  $38                                         ; $5110: $ff
	rst  $38                                         ; $5111: $ff
	rst  $38                                         ; $5112: $ff
	rst  $38                                         ; $5113: $ff
	rst  $38                                         ; $5114: $ff
	rst  $38                                         ; $5115: $ff
	rst  $38                                         ; $5116: $ff
	reti                                             ; $5117: $d9


	ld   h, h                                        ; $5118: $64
	ld   hl, $1111                                   ; $5119: $21 $11 $11
	ld   de, $1111                                   ; $511c: $11 $11 $11
	ld   de, $7914                                   ; $511f: $11 $14 $79
	rst  JumpTable                                         ; $5122: $df
	rst  $38                                         ; $5123: $ff
	rst  $38                                         ; $5124: $ff
	rst  $38                                         ; $5125: $ff
	rst  $38                                         ; $5126: $ff
	rst  $38                                         ; $5127: $ff
	rst  $38                                         ; $5128: $ff
	db   $fd                                         ; $5129: $fd
	cp   c                                           ; $512a: $b9
	ld   d, e                                        ; $512b: $53
	ld   de, $1111                                   ; $512c: $11 $11 $11
	ld   de, $1111                                   ; $512f: $11 $11 $11
	ld   de, $7b25                                   ; $5132: $11 $25 $7b
	rst  $28                                         ; $5135: $ef
	rst  $38                                         ; $5136: $ff
	rst  $38                                         ; $5137: $ff
	rst  $38                                         ; $5138: $ff
	rst  $38                                         ; $5139: $ff
	rst  $38                                         ; $513a: $ff
	rst  $38                                         ; $513b: $ff
	db   $ec                                         ; $513c: $ec
	and  a                                           ; $513d: $a7
	ld   b, d                                        ; $513e: $42
	ld   de, $1111                                   ; $513f: $11 $11 $11
	ld   de, $1111                                   ; $5142: $11 $11 $11
	ld   de, $8b36                                   ; $5145: $11 $36 $8b
	rst  $28                                         ; $5148: $ef
	rst  $38                                         ; $5149: $ff
	rst  $38                                         ; $514a: $ff
	rst  $38                                         ; $514b: $ff
	rst  $38                                         ; $514c: $ff
	rst  $38                                         ; $514d: $ff
	rst  $38                                         ; $514e: $ff
	db   $ed                                         ; $514f: $ed
	and  a                                           ; $5150: $a7
	ld   d, e                                        ; $5151: $53
	ld   de, $1111                                   ; $5152: $11 $11 $11
	ld   de, $1111                                   ; $5155: $11 $11 $11
	ld   de, $9c36                                   ; $5158: $11 $36 $9c
	rst  $28                                         ; $515b: $ef
	rst  $38                                         ; $515c: $ff
	rst  $38                                         ; $515d: $ff
	rst  $38                                         ; $515e: $ff
	rst  $38                                         ; $515f: $ff
	rst  $38                                         ; $5160: $ff
	rst  $38                                         ; $5161: $ff
	db   $ed                                         ; $5162: $ed
	and  a                                           ; $5163: $a7
	ld   d, h                                        ; $5164: $54
	ld   hl, $1111                                   ; $5165: $21 $11 $11
	ld   de, $1111                                   ; $5168: $11 $11 $11
	ld   de, $9b35                                   ; $516b: $11 $35 $9b
	rst  $28                                         ; $516e: $ef
	rst  $38                                         ; $516f: $ff
	rst  $38                                         ; $5170: $ff
	rst  $38                                         ; $5171: $ff
	rst  $38                                         ; $5172: $ff
	rst  $38                                         ; $5173: $ff

Jump_0be_5174:
	rst  $38                                         ; $5174: $ff

Jump_0be_5175:
	db   $fd                                         ; $5175: $fd
	cp   b                                           ; $5176: $b8
	ld   h, l                                        ; $5177: $65
	ld   sp, $1111                                   ; $5178: $31 $11 $11
	ld   de, $1111                                   ; $517b: $11 $11 $11
	ld   de, $7b25                                   ; $517e: $11 $25 $7b
	sbc  $ff                                         ; $5181: $de $ff
	rst  $38                                         ; $5183: $ff
	rst  $38                                         ; $5184: $ff
	rst  $38                                         ; $5185: $ff
	rst  $38                                         ; $5186: $ff
	rst  $38                                         ; $5187: $ff
	cp   $db                                         ; $5188: $fe $db
	halt                                             ; $518a: $76
	ld   b, d                                        ; $518b: $42
	ld   de, $1111                                   ; $518c: $11 $11 $11
	ld   de, $1111                                   ; $518f: $11 $11 $11
	inc  b                                           ; $5192: $04
	ld   l, b                                        ; $5193: $68
	cp   l                                           ; $5194: $bd
	rst  $38                                         ; $5195: $ff
	rst  $38                                         ; $5196: $ff
	rst  $38                                         ; $5197: $ff
	rst  $38                                         ; $5198: $ff
	rst  $38                                         ; $5199: $ff
	rst  $38                                         ; $519a: $ff
	rst  $38                                         ; $519b: $ff
	db   $db                                         ; $519c: $db
	sub  a                                           ; $519d: $97
	ld   d, e                                        ; $519e: $53
	ld   hl, $1111                                   ; $519f: $21 $11 $11
	ld   de, $1111                                   ; $51a2: $11 $11 $11
	ld   de, $ac46                                   ; $51a5: $11 $46 $ac
	rst  JumpTable                                         ; $51a8: $df
	rst  $38                                         ; $51a9: $ff
	rst  $38                                         ; $51aa: $ff
	rst  $38                                         ; $51ab: $ff
	rst  $38                                         ; $51ac: $ff
	rst  $38                                         ; $51ad: $ff
	rst  $38                                         ; $51ae: $ff
	db   $ed                                         ; $51af: $ed
	cp   b                                           ; $51b0: $b8
	ld   h, l                                        ; $51b1: $65
	ld   b, d                                        ; $51b2: $42
	ld   de, $1111                                   ; $51b3: $11 $11 $11
	ld   de, $1111                                   ; $51b6: $11 $11 $11
	dec  h                                           ; $51b9: $25
	ld   a, c                                        ; $51ba: $79
	adc  $ff                                         ; $51bb: $ce $ff
	rst  $38                                         ; $51bd: $ff
	rst  $38                                         ; $51be: $ff
	rst  $38                                         ; $51bf: $ff
	rst  $38                                         ; $51c0: $ff
	rst  $38                                         ; $51c1: $ff
	cp   $db                                         ; $51c2: $fe $db
	add  [hl]                                        ; $51c4: $86
	ld   d, h                                        ; $51c5: $54
	ld   hl, $1111                                   ; $51c6: $21 $11 $11
	ld   de, $1111                                   ; $51c9: $11 $11 $11
	inc  de                                          ; $51cc: $13
	ld   d, a                                        ; $51cd: $57
	xor  h                                           ; $51ce: $ac
	sbc  $ff                                         ; $51cf: $de $ff
	rst  $38                                         ; $51d1: $ff
	rst  $38                                         ; $51d2: $ff
	rst  $38                                         ; $51d3: $ff
	rst  $38                                         ; $51d4: $ff
	rst  $38                                         ; $51d5: $ff
	db   $ed                                         ; $51d6: $ed
	xor  b                                           ; $51d7: $a8
	ld   h, l                                        ; $51d8: $65
	ld   b, d                                        ; $51d9: $42
	ld   de, $1111                                   ; $51da: $11 $11 $11
	ld   de, $1111                                   ; $51dd: $11 $11 $11
	dec  [hl]                                        ; $51e0: $35
	ld   a, d                                        ; $51e1: $7a
	adc  $ff                                         ; $51e2: $ce $ff
	rst  $38                                         ; $51e4: $ff
	rst  $38                                         ; $51e5: $ff
	rst  $38                                         ; $51e6: $ff
	rst  $38                                         ; $51e7: $ff
	cp   $fd                                         ; $51e8: $fe $fd
	jp   c, Jump_0be_5386                            ; $51ea: $da $86 $53

	ld   de, $1111                                   ; $51ed: $11 $11 $11
	ld   de, $1111                                   ; $51f0: $11 $11 $11
	scf                                              ; $51f3: $37
	adc  $ff                                         ; $51f4: $ce $ff
	rst  $38                                         ; $51f6: $ff
	cp   $ef                                         ; $51f7: $fe $ef
	rst  $38                                         ; $51f9: $ff
	db   $ed                                         ; $51fa: $ed
	xor  d                                           ; $51fb: $aa
	sbc  b                                           ; $51fc: $98
	sbc  e                                           ; $51fd: $9b

Call_0be_51fe:
	and  a                                           ; $51fe: $a7
	ld   b, d                                        ; $51ff: $42
	ld   de, $1111                                   ; $5200: $11 $11 $11
	ld   [de], a                                     ; $5203: $12
	inc  hl                                          ; $5204: $23
	inc  hl                                          ; $5205: $23
	ld   l, b                                        ; $5206: $68
	rst  JumpTable                                         ; $5207: $df
	rst  $38                                         ; $5208: $ff
	rst  $38                                         ; $5209: $ff
	db   $ec                                         ; $520a: $ec
	db   $dd                                         ; $520b: $dd
	xor  $dc                                         ; $520c: $ee $dc
	sub  a                                           ; $520e: $97
	adc  b                                           ; $520f: $88
	sbc  d                                           ; $5210: $9a
	add  l                                           ; $5211: $85
	ld   hl, $1111                                   ; $5212: $21 $11 $11
	inc  h                                           ; $5215: $24
	ld   h, a                                        ; $5216: $67
	ld   [hl], a                                     ; $5217: $77
	ld   b, [hl]                                     ; $5218: $46
	xor  e                                           ; $5219: $ab
	rst  $38                                         ; $521a: $ff
	rst  $38                                         ; $521b: $ff
	cp   $cc                                         ; $521c: $fe $cc
	jp   z, $a9cc                                    ; $521e: $ca $cc $a9

	ld   h, l                                        ; $5221: $65
	ld   h, [hl]                                     ; $5222: $66
	halt                                             ; $5223: $76
	ld   sp, $1111                                   ; $5224: $31 $11 $11
	inc  de                                          ; $5227: $13
	ld   a, e                                        ; $5228: $7b
	xor  e                                           ; $5229: $ab
	and  a                                           ; $522a: $a7
	ld   a, h                                        ; $522b: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $522c: $cf
	rst  $38                                         ; $522d: $ff
	rst  $38                                         ; $522e: $ff
	db   $eb                                         ; $522f: $eb
	res  7, h                                        ; $5230: $cb $bc
	jp   z, Jump_0be_4585                            ; $5232: $ca $85 $45

	ld   d, [hl]                                     ; $5235: $56
	ld   b, c                                        ; $5236: $41
	ld   de, $1111                                   ; $5237: $11 $11 $11
	ld   l, d                                        ; $523a: $6a
	rst  $38                                         ; $523b: $ff
	call $ff8a                                       ; $523c: $cd $8a $ff
	rst  $38                                         ; $523f: $ff
	rst  $38                                         ; $5240: $ff
	db   $fd                                         ; $5241: $fd
	cp   e                                           ; $5242: $bb
	jp   z, $87ca                                    ; $5243: $ca $ca $87

	ld   d, l                                        ; $5246: $55
	ld   h, l                                        ; $5247: $65
	ld   b, c                                        ; $5248: $41
	ld   de, $1111                                   ; $5249: $11 $11 $11
	jr   c, @+$01                                    ; $524c: $38 $ff

	rst  $38                                         ; $524e: $ff
	cp   d                                           ; $524f: $ba
	rst  $38                                         ; $5250: $ff
	rst  $38                                         ; $5251: $ff
	rst  $38                                         ; $5252: $ff
	rst  $38                                         ; $5253: $ff
	call z, $9bc9                                    ; $5254: $cc $c9 $9b
	sbc  b                                           ; $5257: $98
	ld   [hl], l                                     ; $5258: $75
	ld   d, h                                        ; $5259: $54
	ld   sp, $1111                                   ; $525a: $31 $11 $11
	ld   de, $ff3a                                   ; $525d: $11 $3a $ff
	rst  $38                                         ; $5260: $ff
	jp   z, $ffff                                    ; $5261: $ca $ff $ff

	rst  $38                                         ; $5264: $ff
	rst  $38                                         ; $5265: $ff
	db   $db                                         ; $5266: $db
	ret                                              ; $5267: $c9


	sbc  e                                           ; $5268: $9b
	adc  b                                           ; $5269: $88
	ld   [hl], l                                     ; $526a: $75
	ld   d, h                                        ; $526b: $54
	ld   hl, $1111                                   ; $526c: $21 $11 $11
	ld   de, $ff2a                                   ; $526f: $11 $2a $ff
	rst  $38                                         ; $5272: $ff
	jp   z, $ffff                                    ; $5273: $ca $ff $ff

	rst  $38                                         ; $5276: $ff
	rst  $38                                         ; $5277: $ff
	db   $db                                         ; $5278: $db
	ret                                              ; $5279: $c9


	adc  c                                           ; $527a: $89
	adc  b                                           ; $527b: $88
	halt                                             ; $527c: $76
	ld   d, e                                        ; $527d: $53
	ld   de, $1111                                   ; $527e: $11 $11 $11
	ld   de, $ff3a                                   ; $5281: $11 $3a $ff
	rst  $38                                         ; $5284: $ff
	db   $eb                                         ; $5285: $eb
	rst  $38                                         ; $5286: $ff
	rst  $38                                         ; $5287: $ff
	rst  $38                                         ; $5288: $ff
	rst  $38                                         ; $5289: $ff
	db   $eb                                         ; $528a: $eb
	ret  z                                           ; $528b: $c8

	ld   a, e                                        ; $528c: $7b
	sbc  d                                           ; $528d: $9a
	sub  [hl]                                        ; $528e: $96
	ld   b, d                                        ; $528f: $42
	ld   de, $1111                                   ; $5290: $11 $11 $11
	ld   de, $ff4b                                   ; $5293: $11 $4b $ff
	rst  $28                                         ; $5296: $ef
	db   $ed                                         ; $5297: $ed
	rst  $38                                         ; $5298: $ff
	rst  $38                                         ; $5299: $ff
	rst  $38                                         ; $529a: $ff
	rst  $38                                         ; $529b: $ff
	db   $eb                                         ; $529c: $eb
	and  l                                           ; $529d: $a5
	ld   a, d                                        ; $529e: $7a
	xor  e                                           ; $529f: $ab
	ld   [hl], h                                     ; $52a0: $74
	ld   hl, $1111                                   ; $52a1: $21 $11 $11
	ld   de, $9e11                                   ; $52a4: $11 $11 $9e
	rst  $38                                         ; $52a7: $ff

Call_0be_52a8:
	rst  JumpTable                                         ; $52a8: $df
	rst  $38                                         ; $52a9: $ff
	rst  $38                                         ; $52aa: $ff
	rst  $38                                         ; $52ab: $ff
	rst  $38                                         ; $52ac: $ff
	rst  $38                                         ; $52ad: $ff
	xor  b                                           ; $52ae: $a8
	add  [hl]                                        ; $52af: $86
	xor  e                                           ; $52b0: $ab
	and  a                                           ; $52b1: $a7
	ld   b, h                                        ; $52b2: $44
	inc  [hl]                                        ; $52b3: $34
	ld   de, $1111                                   ; $52b4: $11 $11 $11
	ld   de, $fd9d                                   ; $52b7: $11 $9d $fd
	rst  $38                                         ; $52ba: $ff
	rst  $38                                         ; $52bb: $ff
	rst  $38                                         ; $52bc: $ff
	rst  $38                                         ; $52bd: $ff
	rst  $38                                         ; $52be: $ff
	rst  $38                                         ; $52bf: $ff
	sbc  c                                           ; $52c0: $99
	adc  b                                           ; $52c1: $88
	xor  c                                           ; $52c2: $a9
	sub  l                                           ; $52c3: $95
	ld   d, l                                        ; $52c4: $55
	ld   [hl-], a                                    ; $52c5: $32
	ld   de, $1111                                   ; $52c6: $11 $11 $11
	inc  d                                           ; $52c9: $14

Call_0be_52ca:
	sbc  a                                           ; $52ca: $9f
	db   $fd                                         ; $52cb: $fd
	rst  $38                                         ; $52cc: $ff
	rst  $38                                         ; $52cd: $ff
	rst  $38                                         ; $52ce: $ff
	rst  $38                                         ; $52cf: $ff
	rst  $38                                         ; $52d0: $ff
	ei                                               ; $52d1: $fb
	xor  c                                           ; $52d2: $a9
	ld   a, c                                        ; $52d3: $79
	xor  c                                           ; $52d4: $a9
	ld   [hl], l                                     ; $52d5: $75
	ld   d, l                                        ; $52d6: $55
	ld   sp, $1111                                   ; $52d7: $31 $11 $11
	ld   de, $af15                                   ; $52da: $11 $15 $af
	db   $ed                                         ; $52dd: $ed
	rst  $38                                         ; $52de: $ff
	rst  $38                                         ; $52df: $ff
	rst  $38                                         ; $52e0: $ff
	rst  $38                                         ; $52e1: $ff
	rst  $38                                         ; $52e2: $ff
	ld   a, [$99b9]                                  ; $52e3: $fa $b9 $99
	add  a                                           ; $52e6: $87
	ld   h, [hl]                                     ; $52e7: $66
	ld   d, h                                        ; $52e8: $54
	ld   de, $1111                                   ; $52e9: $11 $11 $11
	ld   de, $cd37                                   ; $52ec: $11 $37 $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ef: $cf
	rst  $38                                         ; $52f0: $ff
	rst  $38                                         ; $52f1: $ff
	rst  $38                                         ; $52f2: $ff
	rst  $38                                         ; $52f3: $ff
	rst  $38                                         ; $52f4: $ff
	call z, $97c8                                    ; $52f5: $cc $c8 $97
	ld   h, [hl]                                     ; $52f8: $66
	ld   h, l                                        ; $52f9: $65
	ld   [hl-], a                                    ; $52fa: $32
	ld   de, $1111                                   ; $52fb: $11 $11 $11
	ld   de, $a968                                   ; $52fe: $11 $68 $a9
	rst  $28                                         ; $5301: $ef
	rst  $38                                         ; $5302: $ff
	rst  $38                                         ; $5303: $ff
	rst  $38                                         ; $5304: $ff
	rst  $38                                         ; $5305: $ff
	rst  $38                                         ; $5306: $ff
	xor  $a8                                         ; $5307: $ee $a8
	halt                                             ; $5309: $76
	ld   h, [hl]                                     ; $530a: $66
	ld   [hl-], a                                    ; $530b: $32
	ld   hl, $1111                                   ; $530c: $21 $11 $11
	ld   de, $7715                                   ; $530f: $11 $15 $77
	ld   l, e                                        ; $5312: $6b
	sbc  $ff                                         ; $5313: $de $ff
	rst  $38                                         ; $5315: $ff
	rst  $38                                         ; $5316: $ff
	rst  $38                                         ; $5317: $ff
	rst  $38                                         ; $5318: $ff
	db   $db                                         ; $5319: $db
	add  a                                           ; $531a: $87
	ld   h, [hl]                                     ; $531b: $66
	ld   h, h                                        ; $531c: $64
	ld   b, h                                        ; $531d: $44
	ld   [hl-], a                                    ; $531e: $32
	ld   de, $1111                                   ; $531f: $11 $11 $11
	ld   b, h                                        ; $5322: $44
	ld   [hl-], a                                    ; $5323: $32
	inc  sp                                          ; $5324: $33
	ld   [hl], $89                                   ; $5325: $36 $89
	sbc  $ef                                         ; $5327: $de $ef
	rst  $38                                         ; $5329: $ff
	rst  $38                                         ; $532a: $ff
	rst  $38                                         ; $532b: $ff
	rst  $38                                         ; $532c: $ff
	db   $ed                                         ; $532d: $ed
	cp   e                                           ; $532e: $bb
	xor  b                                           ; $532f: $a8
	halt                                             ; $5330: $76
	ld   b, e                                        ; $5331: $43
	ld   hl, $1111                                   ; $5332: $21 $11 $11
	ld   de, $1111                                   ; $5335: $11 $11 $11
	inc  de                                          ; $5338: $13
	ld   a, e                                        ; $5339: $7b
	rst  JumpTable                                         ; $533a: $df
	rst  $38                                         ; $533b: $ff
	rst  $38                                         ; $533c: $ff
	rst  $38                                         ; $533d: $ff
	rst  $38                                         ; $533e: $ff
	rst  $38                                         ; $533f: $ff
	cp   $ca                                         ; $5340: $fe $ca
	halt                                             ; $5342: $76
	ld   b, d                                        ; $5343: $42
	ld   de, $1111                                   ; $5344: $11 $11 $11
	ld   de, $1111                                   ; $5347: $11 $11 $11
	ld   [de], a                                     ; $534a: $12
	ld   e, d                                        ; $534b: $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $534c: $cf
	rst  $38                                         ; $534d: $ff
	rst  $38                                         ; $534e: $ff
	rst  $38                                         ; $534f: $ff
	rst  $38                                         ; $5350: $ff
	rst  $38                                         ; $5351: $ff
	rst  $38                                         ; $5352: $ff
	jp   c, Jump_0be_6397                            ; $5353: $da $97 $63

	ld   de, $1111                                   ; $5356: $11 $11 $11
	ld   de, $1111                                   ; $5359: $11 $11 $11
	ld   de, $bd26                                   ; $535c: $11 $26 $bd
	rst  $38                                         ; $535f: $ff
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	rst  $38                                         ; $5362: $ff
	rst  $38                                         ; $5363: $ff
	rst  $38                                         ; $5364: $ff
	db   $ed                                         ; $5365: $ed
	cp   b                                           ; $5366: $b8
	ld   [hl], l                                     ; $5367: $75
	ld   hl, $1111                                   ; $5368: $21 $11 $11
	ld   de, $1111                                   ; $536b: $11 $11 $11
	ld   de, $7c12                                   ; $536e: $11 $12 $7c
	rst  JumpTable                                         ; $5371: $df
	rst  $38                                         ; $5372: $ff
	rst  $38                                         ; $5373: $ff
	rst  $38                                         ; $5374: $ff
	rst  $38                                         ; $5375: $ff
	rst  $38                                         ; $5376: $ff
	cp   $ca                                         ; $5377: $fe $ca
	add  a                                           ; $5379: $87
	ld   d, d                                        ; $537a: $52
	ld   de, $1111                                   ; $537b: $11 $11 $11
	ld   de, $1111                                   ; $537e: $11 $11 $11
	ld   de, $bd39                                   ; $5381: $11 $39 $bd
	rst  $38                                         ; $5384: $ff
	rst  $38                                         ; $5385: $ff

Jump_0be_5386:
	rst  $38                                         ; $5386: $ff
	rst  $38                                         ; $5387: $ff
	rst  $38                                         ; $5388: $ff
	rst  $38                                         ; $5389: $ff
	call c, Call_0be_64a8                            ; $538a: $dc $a8 $64
	ld   hl, $1111                                   ; $538d: $21 $11 $11
	ld   de, $1111                                   ; $5390: $11 $11 $11
	ld   de, $9c14                                   ; $5393: $11 $14 $9c
	rst  JumpTable                                         ; $5396: $df
	rst  $38                                         ; $5397: $ff
	rst  $38                                         ; $5398: $ff
	rst  $38                                         ; $5399: $ff
	rst  $38                                         ; $539a: $ff
	rst  $38                                         ; $539b: $ff
	db   $ec                                         ; $539c: $ec
	cp   c                                           ; $539d: $b9
	halt                                             ; $539e: $76
	ld   b, d                                        ; $539f: $42
	ld   de, $1111                                   ; $53a0: $11 $11 $11
	ld   de, $1111                                   ; $53a3: $11 $11 $11
	ld   de, $cd49                                   ; $53a6: $11 $49 $cd
	rst  $38                                         ; $53a9: $ff
	rst  $38                                         ; $53aa: $ff
	rst  $38                                         ; $53ab: $ff
	rst  $38                                         ; $53ac: $ff
	rst  $38                                         ; $53ad: $ff
	cp   $cb                                         ; $53ae: $fe $cb
	sbc  b                                           ; $53b0: $98
	ld   [hl], h                                     ; $53b1: $74
	ld   hl, $1111                                   ; $53b2: $21 $11 $11
	ld   de, $1111                                   ; $53b5: $11 $11 $11
	ld   de, $9c14                                   ; $53b8: $11 $14 $9c
	rst  $28                                         ; $53bb: $ef
	rst  $38                                         ; $53bc: $ff
	rst  $38                                         ; $53bd: $ff
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	rst  $38                                         ; $53c0: $ff
	db   $ec                                         ; $53c1: $ec
	cp   c                                           ; $53c2: $b9
	add  a                                           ; $53c3: $87
	ld   b, d                                        ; $53c4: $42
	ld   de, $1111                                   ; $53c5: $11 $11 $11
	ld   de, $1111                                   ; $53c8: $11 $11 $11
	ld   de, $cd4a                                   ; $53cb: $11 $4a $cd
	rst  $38                                         ; $53ce: $ff
	rst  $38                                         ; $53cf: $ff
	rst  $38                                         ; $53d0: $ff
	rst  $38                                         ; $53d1: $ff
	rst  $38                                         ; $53d2: $ff
	rst  $38                                         ; $53d3: $ff
	call c, Call_0be_75a8                            ; $53d4: $dc $a8 $75
	ld   hl, $1111                                   ; $53d7: $21 $11 $11
	ld   de, $1111                                   ; $53da: $11 $11 $11
	ld   de, $ac14                                   ; $53dd: $11 $14 $ac
	rst  $28                                         ; $53e0: $ef
	rst  $38                                         ; $53e1: $ff
	rst  $38                                         ; $53e2: $ff
	rst  $38                                         ; $53e3: $ff
	rst  $38                                         ; $53e4: $ff
	rst  $38                                         ; $53e5: $ff
	db   $fc                                         ; $53e6: $fc
	ret                                              ; $53e7: $c9


	add  a                                           ; $53e8: $87
	ld   h, e                                        ; $53e9: $63
	ld   de, $1111                                   ; $53ea: $11 $11 $11
	ld   de, $1111                                   ; $53ed: $11 $11 $11
	ld   de, $cd38                                   ; $53f0: $11 $38 $cd
	rst  $38                                         ; $53f3: $ff
	rst  $38                                         ; $53f4: $ff
	rst  $38                                         ; $53f5: $ff
	rst  $38                                         ; $53f6: $ff
	rst  $38                                         ; $53f7: $ff
	rst  $38                                         ; $53f8: $ff
	call c, $86a8                                    ; $53f9: $dc $a8 $86
	ld   sp, $1111                                   ; $53fc: $31 $11 $11
	ld   de, $1111                                   ; $53ff: $11 $11 $11
	ld   de, $7c13                                   ; $5402: $11 $13 $7c
	rst  JumpTable                                         ; $5405: $df
	rst  $38                                         ; $5406: $ff
	rst  $38                                         ; $5407: $ff
	rst  $38                                         ; $5408: $ff
	rst  $38                                         ; $5409: $ff
	rst  $38                                         ; $540a: $ff
	db   $fd                                         ; $540b: $fd
	jp   z, Jump_0be_7497                            ; $540c: $ca $97 $74

	ld   hl, $1111                                   ; $540f: $21 $11 $11
	ld   de, $1111                                   ; $5412: $11 $11 $11
	ld   de, $ce26                                   ; $5415: $11 $26 $ce
	rst  $38                                         ; $5418: $ff
	rst  $38                                         ; $5419: $ff
	rst  $38                                         ; $541a: $ff
	rst  $38                                         ; $541b: $ff
	rst  $38                                         ; $541c: $ff
	rst  $38                                         ; $541d: $ff
	db   $db                                         ; $541e: $db
	and  [hl]                                        ; $541f: $a6
	ld   [hl+], a                                    ; $5420: $22
	ld   de, $1111                                   ; $5421: $11 $11 $11
	ld   de, $1311                                   ; $5424: $11 $11 $13
	ld   l, c                                        ; $5427: $69
	cp   e                                           ; $5428: $bb
	rst  $38                                         ; $5429: $ff
	rst  $38                                         ; $542a: $ff
	rst  $38                                         ; $542b: $ff
	rst  $38                                         ; $542c: $ff
	rst  $38                                         ; $542d: $ff
	ret  c                                           ; $542e: $d8

	add  a                                           ; $542f: $87
	ld   d, c                                        ; $5430: $51
	ld   de, $1123                                   ; $5431: $11 $23 $11
	ld   de, $1811                                   ; $5434: $11 $11 $18
	xor  b                                           ; $5437: $a8
	xor  e                                           ; $5438: $ab
	rst  $38                                         ; $5439: $ff
	rst  $38                                         ; $543a: $ff
	rst  $38                                         ; $543b: $ff
	rst  $38                                         ; $543c: $ff
	rst  $38                                         ; $543d: $ff
	db   $ec                                         ; $543e: $ec
	res  0, l                                        ; $543f: $cb $85
	ld   h, a                                        ; $5441: $67
	ld   h, l                                        ; $5442: $65
	ld   [hl+], a                                    ; $5443: $22
	ld   b, l                                        ; $5444: $45
	ld   sp, $1111                                   ; $5445: $31 $11 $11
	ld   de, $accc                                   ; $5448: $11 $cc $ac
	rst  JumpTable                                         ; $544b: $df
	rst  $38                                         ; $544c: $ff
	rst  $38                                         ; $544d: $ff
	rst  $38                                         ; $544e: $ff
	rst  $38                                         ; $544f: $ff
	db   $db                                         ; $5450: $db
	xor  h                                           ; $5451: $ac
	rst  ToBoot                                         ; $5452: $c7
	ld   d, a                                        ; $5453: $57
	sbc  b                                           ; $5454: $98
	ld   h, d                                        ; $5455: $62
	inc  hl                                          ; $5456: $23
	ld   sp, $1111                                   ; $5457: $31 $11 $11
	ld   de, $dfde                                   ; $545a: $11 $de $df
	rst  $38                                         ; $545d: $ff
	rst  $38                                         ; $545e: $ff
	rst  $38                                         ; $545f: $ff
	rst  $38                                         ; $5460: $ff
	rst  $38                                         ; $5461: $ff
	jp   z, $b79b                                    ; $5462: $ca $9b $b7

	ld   l, c                                        ; $5465: $69
	cp   c                                           ; $5466: $b9
	ld   [hl], e                                     ; $5467: $73
	inc  [hl]                                        ; $5468: $34
	ld   hl, $1111                                   ; $5469: $21 $11 $11
	ld   de, $ffff                                   ; $546c: $11 $ff $ff
	rst  $38                                         ; $546f: $ff
	rst  $38                                         ; $5470: $ff
	cp   $ff                                         ; $5471: $fe $ff
	rst  $38                                         ; $5473: $ff
	ret                                              ; $5474: $c9


Call_0be_5475:
	ld   a, e                                        ; $5475: $7b

Call_0be_5476:
	jp   z, $bb88                                    ; $5476: $ca $88 $bb

	sub  l                                           ; $5479: $95
	ld   b, d                                        ; $547a: $42
	ld   de, $1111                                   ; $547b: $11 $11 $11
	ld   de, $ffff                                   ; $547e: $11 $ff $ff
	rst  $38                                         ; $5481: $ff
	rst  $38                                         ; $5482: $ff
	call c, $ffef                                    ; $5483: $dc $ef $ff
	rst  ToBoot                                         ; $5486: $c7

Call_0be_5487:
Jump_0be_5487:
	ld   l, e                                        ; $5487: $6b
	res  3, b                                        ; $5488: $cb $98
	cp   h                                           ; $548a: $bc
	and  l                                           ; $548b: $a5
	ld   sp, $1111                                   ; $548c: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $548f: $11 $11 $ff
	rst  $38                                         ; $5492: $ff
	rst  $38                                         ; $5493: $ff
	rst  $38                                         ; $5494: $ff
	jp   z, $ffce                                    ; $5495: $ca $ce $ff

	or   a                                           ; $5498: $b7
	ld   l, e                                        ; $5499: $6b
	db   $dd                                         ; $549a: $dd
	xor  c                                           ; $549b: $a9
	cp   h                                           ; $549c: $bc
	or   a                                           ; $549d: $b7
	ld   sp, $1111                                   ; $549e: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $54a1: $11 $11 $ff
	rst  $38                                         ; $54a4: $ff
	rst  $38                                         ; $54a5: $ff
	rst  $38                                         ; $54a6: $ff
	reti                                             ; $54a7: $d9


	sbc  e                                           ; $54a8: $9b
	rst  $38                                         ; $54a9: $ff
	rst  $10                                         ; $54aa: $d7
	ld   c, d                                        ; $54ab: $4a
	rst  $28                                         ; $54ac: $ef
	reti                                             ; $54ad: $d9


	xor  d                                           ; $54ae: $aa
	xor  b                                           ; $54af: $a8
	ld   sp, $1111                                   ; $54b0: $31 $11 $11
	ld   de, rAUD1LOW                                   ; $54b3: $11 $13 $ff
	rst  $38                                         ; $54b6: $ff
	rst  $28                                         ; $54b7: $ef
	rst  $38                                         ; $54b8: $ff
	jp   hl                                          ; $54b9: $e9


	ld   l, d                                        ; $54ba: $6a
	rst  $38                                         ; $54bb: $ff
	ld   hl, sp+$48                                  ; $54bc: $f8 $48
	rst  $28                                         ; $54be: $ef
	ld   [$9988], a                                  ; $54bf: $ea $88 $99
	ld   b, c                                        ; $54c2: $41
	ld   de, $1111                                   ; $54c3: $11 $11 $11
	dec  d                                           ; $54c6: $15
	rst  $38                                         ; $54c7: $ff
	rst  $38                                         ; $54c8: $ff
	rst  JumpTable                                         ; $54c9: $df
	rst  $38                                         ; $54ca: $ff
	ld   a, [$ff69]                                  ; $54cb: $fa $69 $ff
	ei                                               ; $54ce: $fb
	ld   b, [hl]                                     ; $54cf: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d0: $cf
	db   $fc                                         ; $54d1: $fc
	and  l                                           ; $54d2: $a5
	ld   h, a                                        ; $54d3: $67
	ld   b, c                                        ; $54d4: $41
	ld   de, $1111                                   ; $54d5: $11 $11 $11
	jr   @+$01                                       ; $54d8: $18 $ff

	rst  $38                                         ; $54da: $ff
	rst  $38                                         ; $54db: $ff
	rst  $28                                         ; $54dc: $ef
	ld   a, [$ff89]                                  ; $54dd: $fa $89 $ff
	db   $fd                                         ; $54e0: $fd
	ld   l, b                                        ; $54e1: $68
	cp   a                                           ; $54e2: $bf
	rst  $38                                         ; $54e3: $ff
	and  [hl]                                        ; $54e4: $a6
	ld   b, h                                        ; $54e5: $44
	ld   sp, $1111                                   ; $54e6: $31 $11 $11
	ld   de, $ff1f                                   ; $54e9: $11 $1f $ff
	rst  $38                                         ; $54ec: $ff
	rst  $38                                         ; $54ed: $ff
	rst  JumpTable                                         ; $54ee: $df
	cp   e                                           ; $54ef: $bb
	ld   a, d                                        ; $54f0: $7a
	rst  $38                                         ; $54f1: $ff
	ei                                               ; $54f2: $fb
	ld   a, b                                        ; $54f3: $78
	xor  a                                           ; $54f4: $af
	rst  $38                                         ; $54f5: $ff
	call nz, $2143                                   ; $54f6: $c4 $43 $21
	ld   de, $1111                                   ; $54f9: $11 $11 $11
	rra                                              ; $54fc: $1f
	rst  $38                                         ; $54fd: $ff
	rst  $38                                         ; $54fe: $ff
	db   $fd                                         ; $54ff: $fd
	cp   a                                           ; $5500: $bf
	res  1, d                                        ; $5501: $cb $8a
	rst  $38                                         ; $5503: $ff
	db   $fd                                         ; $5504: $fd
	adc  b                                           ; $5505: $88
	sbc  a                                           ; $5506: $9f
	rst  $38                                         ; $5507: $ff
	or   h                                           ; $5508: $b4
	ld   [hl-], a                                    ; $5509: $32
	ld   de, $1111                                   ; $550a: $11 $11 $11
	ld   de, $ff1f                                   ; $550d: $11 $1f $ff
	rst  $38                                         ; $5510: $ff
	db   $fc                                         ; $5511: $fc
	sbc  $da                                         ; $5512: $de $da
	ld   a, l                                        ; $5514: $7d
	rst  $38                                         ; $5515: $ff
	ei                                               ; $5516: $fb
	ld   [hl], a                                     ; $5517: $77
	xor  l                                           ; $5518: $ad
	rst  $38                                         ; $5519: $ff
	and  h                                           ; $551a: $a4
	ld   hl, $1111                                   ; $551b: $21 $11 $11
	ld   de, $6f11                                   ; $551e: $11 $11 $6f
	rst  $38                                         ; $5521: $ff
	rst  $38                                         ; $5522: $ff
	ld   [$cbde], a                                  ; $5523: $ea $de $cb
	adc  l                                           ; $5526: $8d
	rst  $38                                         ; $5527: $ff
	ei                                               ; $5528: $fb
	add  a                                           ; $5529: $87
	xor  [hl]                                        ; $552a: $ae
	rst  $38                                         ; $552b: $ff
	and  h                                           ; $552c: $a4
	ld   de, $1111                                   ; $552d: $11 $11 $11
	ld   de, $cf11                                   ; $5530: $11 $11 $cf
	rst  $38                                         ; $5533: $ff
	rst  $38                                         ; $5534: $ff
	reti                                             ; $5535: $d9


	rst  $28                                         ; $5536: $ef
	db   $db                                         ; $5537: $db
	sbc  [hl]                                        ; $5538: $9e
	rst  $38                                         ; $5539: $ff
	ld   a, [$8f87]                                  ; $553a: $fa $87 $8f
	rst  $38                                         ; $553d: $ff
	and  e                                           ; $553e: $a3
	ld   de, $1111                                   ; $553f: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5542: $11 $11 $ff
	rst  $38                                         ; $5545: $ff
	rst  $38                                         ; $5546: $ff
	sbc  c                                           ; $5547: $99
	rst  $38                                         ; $5548: $ff
	ld   [$ffad], a                                  ; $5549: $ea $ad $ff
	db   $fc                                         ; $554c: $fc
	add  l                                           ; $554d: $85
	sbc  [hl]                                        ; $554e: $9e
	rst  $38                                         ; $554f: $ff
	sub  e                                           ; $5550: $93
	ld   de, $1111                                   ; $5551: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $5554: $11 $13 $ff
	rst  $38                                         ; $5557: $ff
	db   $fd                                         ; $5558: $fd
	ld   a, [hl]                                     ; $5559: $7e
	rst  $38                                         ; $555a: $ff
	ld   [$ffbd], a                                  ; $555b: $ea $bd $ff
	db   $dd                                         ; $555e: $dd
	ld   [hl], l                                     ; $555f: $75
	cp   [hl]                                        ; $5560: $be
	cp   $82                                         ; $5561: $fe $82
	ld   de, $1111                                   ; $5563: $11 $11 $11
	ld   de, $ff17                                   ; $5566: $11 $17 $ff
	rst  $38                                         ; $5569: $ff
	ld   sp, hl                                      ; $556a: $f9
	ld   a, a                                        ; $556b: $7f
	rst  $38                                         ; $556c: $ff
	ei                                               ; $556d: $fb
	cp   h                                           ; $556e: $bc
	rst  $38                                         ; $556f: $ff
	db   $fc                                         ; $5570: $fc
	ld   d, [hl]                                     ; $5571: $56
	cp   [hl]                                        ; $5572: $be
	db   $fd                                         ; $5573: $fd

Jump_0be_5574:
	ld   [hl], c                                     ; $5574: $71
	ld   de, $1111                                   ; $5575: $11 $11 $11
	ld   de, $ff1b                                   ; $5578: $11 $1b $ff
	rst  $38                                         ; $557b: $ff
	and  $cf                                         ; $557c: $e6 $cf
	rst  $38                                         ; $557e: $ff
	ei                                               ; $557f: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5580: $cf
	rst  $38                                         ; $5581: $ff
	ld   sp, hl                                      ; $5582: $f9
	ld   e, c                                        ; $5583: $59
	cp   a                                           ; $5584: $bf
	ei                                               ; $5585: $fb
	ld   d, c                                        ; $5586: $51
	ld   de, $1111                                   ; $5587: $11 $11 $11
	ld   de, $ff2c                                   ; $558a: $11 $2c $ff
	rst  $38                                         ; $558d: $ff
	xor  b                                           ; $558e: $a8
	rst  $38                                         ; $558f: $ff
	rst  $38                                         ; $5590: $ff
	db   $ec                                         ; $5591: $ec
	rst  JumpTable                                         ; $5592: $df
	rst  $38                                         ; $5593: $ff
	sub  $79                                         ; $5594: $d6 $79

Jump_0be_5596:
	cp   a                                           ; $5596: $bf
	add  sp, $31                                     ; $5597: $e8 $31
	ld   de, $1111                                   ; $5599: $11 $11 $11
	ld   de, $ff5e                                   ; $559c: $11 $5e $ff
	cp   $7c                                         ; $559f: $fe $7c
	rst  $38                                         ; $55a1: $ff
	rst  $38                                         ; $55a2: $ff
	sbc  $ef                                         ; $55a3: $de $ef
	rst  $38                                         ; $55a5: $ff
	sub  a                                           ; $55a6: $97
	adc  c                                           ; $55a7: $89
	call $11b6                                       ; $55a8: $cd $b6 $11
	ld   de, $1111                                   ; $55ab: $11 $11 $11
	ld   de, $ff6e                                   ; $55ae: $11 $6e $ff
	jp   hl                                          ; $55b1: $e9


	sbc  a                                           ; $55b2: $9f
	rst  $38                                         ; $55b3: $ff
	rst  $38                                         ; $55b4: $ff
	rst  $28                                         ; $55b5: $ef
	rst  $38                                         ; $55b6: $ff
	db   $fd                                         ; $55b7: $fd
	adc  b                                           ; $55b8: $88
	adc  d                                           ; $55b9: $8a
	res  0, h                                        ; $55ba: $cb $84
	ld   bc, $1111                                   ; $55bc: $01 $11 $11
	ld   de, $7d11                                   ; $55bf: $11 $11 $7d
	db   $db                                         ; $55c2: $db
	cp   c                                           ; $55c3: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55c4: $cf
	rst  $38                                         ; $55c5: $ff
	rst  $38                                         ; $55c6: $ff
	rst  $38                                         ; $55c7: $ff
	rst  $38                                         ; $55c8: $ff
	ld   a, [$9c88]                                  ; $55c9: $fa $88 $9c
	cp   b                                           ; $55cc: $b8
	ld   d, e                                        ; $55cd: $53
	ld   de, $1111                                   ; $55ce: $11 $11 $11
	ld   de, $6812                                   ; $55d1: $11 $12 $68
	adc  b                                           ; $55d4: $88
	sbc  c                                           ; $55d5: $99
	rst  JumpTable                                         ; $55d6: $df
	rst  $38                                         ; $55d7: $ff
	rst  $38                                         ; $55d8: $ff
	rst  $38                                         ; $55d9: $ff
	rst  $38                                         ; $55da: $ff
	db   $eb                                         ; $55db: $eb
	xor  d                                           ; $55dc: $aa
	xor  d                                           ; $55dd: $aa
	add  [hl]                                        ; $55de: $86
	ld   d, h                                        ; $55df: $54
	ld   b, h                                        ; $55e0: $44
	ld   b, d                                        ; $55e1: $42
	ld   de, $1111                                   ; $55e2: $11 $11 $11
	inc  [hl]                                        ; $55e5: $34
	ld   d, [hl]                                     ; $55e6: $56
	ld   [hl], a                                     ; $55e7: $77
	adc  e                                           ; $55e8: $8b
	adc  $ff                                         ; $55e9: $ce $ff
	rst  $38                                         ; $55eb: $ff
	rst  $38                                         ; $55ec: $ff
	cp   $cc                                         ; $55ed: $fe $cc
	xor  d                                           ; $55ef: $aa
	sbc  b                                           ; $55f0: $98
	halt                                             ; $55f1: $76
	ld   h, l                                        ; $55f2: $65
	ld   b, e                                        ; $55f3: $43
	ld   [hl+], a                                    ; $55f4: $22
	ld   de, $1211                                   ; $55f5: $11 $11 $12
	inc  hl                                          ; $55f8: $23
	ld   b, l                                        ; $55f9: $45
	ld   d, [hl]                                     ; $55fa: $56
	adc  d                                           ; $55fb: $8a
	rst  JumpTable                                         ; $55fc: $df
	rst  $38                                         ; $55fd: $ff
	rst  $38                                         ; $55fe: $ff
	rst  $38                                         ; $55ff: $ff
	db   $fd                                         ; $5600: $fd
	call z, $99cb                                    ; $5601: $cc $cb $99
	ld   [hl], l                                     ; $5604: $75
	ld   b, h                                        ; $5605: $44
	ld   b, h                                        ; $5606: $44
	ld   [hl-], a                                    ; $5607: $32
	ld   de, $1111                                   ; $5608: $11 $11 $11
	ld   [de], a                                     ; $560b: $12
	inc  sp                                          ; $560c: $33
	ld   b, a                                        ; $560d: $47
	adc  d                                           ; $560e: $8a
	rst  JumpTable                                         ; $560f: $df
	rst  $38                                         ; $5610: $ff
	rst  $38                                         ; $5611: $ff
	rst  $38                                         ; $5612: $ff
	rst  $28                                         ; $5613: $ef
	cp   $da                                         ; $5614: $fe $da
	add  a                                           ; $5616: $87
	ld   h, [hl]                                     ; $5617: $66
	ld   h, l                                        ; $5618: $65
	ld   d, h                                        ; $5619: $54
	inc  sp                                          ; $561a: $33
	ld   hl, $1111                                   ; $561b: $21 $11 $11
	ld   [de], a                                     ; $561e: $12
	ld   [hl+], a                                    ; $561f: $22
	dec  [hl]                                        ; $5620: $35
	ld   a, d                                        ; $5621: $7a
	adc  $ff                                         ; $5622: $ce $ff
	rst  $38                                         ; $5624: $ff
	rst  $38                                         ; $5625: $ff
	rst  $38                                         ; $5626: $ff
	cp   $da                                         ; $5627: $fe $da
	sbc  b                                           ; $5629: $98
	halt                                             ; $562a: $76
	ld   h, l                                        ; $562b: $65
	ld   d, h                                        ; $562c: $54
	inc  sp                                          ; $562d: $33
	ld   de, $1111                                   ; $562e: $11 $11 $11
	ld   de, $3522                                   ; $5631: $11 $22 $35
	ld   a, b                                        ; $5634: $78
	cp   l                                           ; $5635: $bd
	rst  $28                                         ; $5636: $ef
	rst  $38                                         ; $5637: $ff
	rst  $38                                         ; $5638: $ff
	rst  $38                                         ; $5639: $ff
	cp   $cb                                         ; $563a: $fe $cb
	sbc  c                                           ; $563c: $99
	ld   [hl], a                                     ; $563d: $77
	ld   h, [hl]                                     ; $563e: $66
	ld   d, l                                        ; $563f: $55
	ld   b, e                                        ; $5640: $43
	ld   sp, $1111                                   ; $5641: $31 $11 $11
	ld   de, $2312                                   ; $5644: $11 $12 $23
	ld   d, a                                        ; $5647: $57
	sbc  h                                           ; $5648: $9c
	rst  JumpTable                                         ; $5649: $df
	rst  $38                                         ; $564a: $ff
	rst  $38                                         ; $564b: $ff
	rst  $38                                         ; $564c: $ff
	rst  $38                                         ; $564d: $ff
	call c, $98ba                                    ; $564e: $dc $ba $98
	ld   [hl], a                                     ; $5651: $77
	ld   h, [hl]                                     ; $5652: $66
	ld   d, h                                        ; $5653: $54
	ld   b, e                                        ; $5654: $43
	ld   hl, $1111                                   ; $5655: $21 $11 $11
	ld   de, $3511                                   ; $5658: $11 $11 $35
	ld   l, c                                        ; $565b: $69
	cp   l                                           ; $565c: $bd
	rst  $38                                         ; $565d: $ff
	rst  $38                                         ; $565e: $ff
	rst  $38                                         ; $565f: $ff
	rst  $38                                         ; $5660: $ff
	rst  $38                                         ; $5661: $ff
	db   $ec                                         ; $5662: $ec
	cp   d                                           ; $5663: $ba
	sbc  b                                           ; $5664: $98
	ld   [hl], a                                     ; $5665: $77
	ld   h, [hl]                                     ; $5666: $66
	ld   d, h                                        ; $5667: $54
	ld   [hl-], a                                    ; $5668: $32
	ld   de, $1111                                   ; $5669: $11 $11 $11
	ld   de, $4623                                   ; $566c: $11 $23 $46
	adc  d                                           ; $566f: $8a
	cp   l                                           ; $5670: $bd
	rst  $28                                         ; $5671: $ef
	rst  $38                                         ; $5672: $ff
	rst  $38                                         ; $5673: $ff
	rst  $38                                         ; $5674: $ff
	cp   $cc                                         ; $5675: $fe $cc
	cp   d                                           ; $5677: $ba
	adc  b                                           ; $5678: $88
	ld   [hl], a                                     ; $5679: $77
	ld   h, l                                        ; $567a: $65
	ld   b, h                                        ; $567b: $44
	ld   [hl-], a                                    ; $567c: $32
	ld   de, $1111                                   ; $567d: $11 $11 $11
	ld   de, $4613                                   ; $5680: $11 $13 $46
	adc  d                                           ; $5683: $8a
	adc  $ff                                         ; $5684: $ce $ff
	rst  $38                                         ; $5686: $ff
	rst  $38                                         ; $5687: $ff
	rst  $38                                         ; $5688: $ff
	xor  $db                                         ; $5689: $ee $db
	xor  d                                           ; $568b: $aa
	sbc  b                                           ; $568c: $98
	ld   [hl], a                                     ; $568d: $77
	ld   h, l                                        ; $568e: $65
	ld   d, h                                        ; $568f: $54
	ld   [hl-], a                                    ; $5690: $32
	ld   de, $1111                                   ; $5691: $11 $11 $11
	ld   de, $4612                                   ; $5694: $11 $12 $46
	adc  d                                           ; $5697: $8a
	cp   [hl]                                        ; $5698: $be
	rst  $38                                         ; $5699: $ff
	rst  $38                                         ; $569a: $ff
	rst  $38                                         ; $569b: $ff
	rst  $38                                         ; $569c: $ff
	cp   $cc                                         ; $569d: $fe $cc
	xor  d                                           ; $569f: $aa
	sbc  c                                           ; $56a0: $99
	add  a                                           ; $56a1: $87
	ld   h, l                                        ; $56a2: $65
	ld   b, h                                        ; $56a3: $44
	ld   [hl-], a                                    ; $56a4: $32
	ld   de, $1111                                   ; $56a5: $11 $11 $11
	ld   de, $4512                                   ; $56a8: $11 $12 $45
	ld   a, d                                        ; $56ab: $7a
	cp   h                                           ; $56ac: $bc
	rst  $38                                         ; $56ad: $ff
	rst  $38                                         ; $56ae: $ff
	rst  $38                                         ; $56af: $ff
	rst  $38                                         ; $56b0: $ff
	call c, $dbcd                                    ; $56b1: $dc $cd $db
	sub  a                                           ; $56b4: $97
	ld   [hl], a                                     ; $56b5: $77
	ld   h, l                                        ; $56b6: $65
	ld   d, h                                        ; $56b7: $54
	ld   b, e                                        ; $56b8: $43
	ld   hl, $1111                                   ; $56b9: $21 $11 $11
	ld   de, $3423                                   ; $56bc: $11 $23 $34
	ld   h, a                                        ; $56bf: $67
	xor  e                                           ; $56c0: $ab
	adc  $ef                                         ; $56c1: $ce $ef
	rst  $38                                         ; $56c3: $ff
	rst  $38                                         ; $56c4: $ff
	rst  $38                                         ; $56c5: $ff
	res  7, h                                        ; $56c6: $cb $bc
	cp   d                                           ; $56c8: $ba
	add  a                                           ; $56c9: $87
	add  a                                           ; $56ca: $87
	ld   h, h                                        ; $56cb: $64
	ld   b, h                                        ; $56cc: $44
	ld   b, d                                        ; $56cd: $42
	ld   de, $1111                                   ; $56ce: $11 $11 $11
	ld   [de], a                                     ; $56d1: $12
	inc  [hl]                                        ; $56d2: $34
	ld   d, [hl]                                     ; $56d3: $56
	adc  d                                           ; $56d4: $8a
	xor  h                                           ; $56d5: $ac
	rst  JumpTable                                         ; $56d6: $df
	rst  $38                                         ; $56d7: $ff
	rst  $38                                         ; $56d8: $ff
	rst  $38                                         ; $56d9: $ff
	xor  $db                                         ; $56da: $ee $db
	cp   d                                           ; $56dc: $ba
	xor  d                                           ; $56dd: $aa
	adc  c                                           ; $56de: $89
	sbc  c                                           ; $56df: $99
	ld   h, e                                        ; $56e0: $63
	inc  hl                                          ; $56e1: $23
	ld   b, d                                        ; $56e2: $42
	ld   de, $1111                                   ; $56e3: $11 $11 $11
	inc  de                                          ; $56e6: $13
	ld   d, [hl]                                     ; $56e7: $56
	ld   l, b                                        ; $56e8: $68
	sbc  e                                           ; $56e9: $9b
	call $ffff                                       ; $56ea: $cd $ff $ff
	rst  $38                                         ; $56ed: $ff
	xor  $cb                                         ; $56ee: $ee $cb
	cp   e                                           ; $56f0: $bb
	cp   e                                           ; $56f1: $bb
	xor  b                                           ; $56f2: $a8
	ld   [hl], a                                     ; $56f3: $77
	ld   [hl], a                                     ; $56f4: $77
	halt                                             ; $56f5: $76
	ld   b, d                                        ; $56f6: $42
	ld   de, $1111                                   ; $56f7: $11 $11 $11
	ld   de, $7936                                   ; $56fa: $11 $36 $79
	set  3, a                                        ; $56fd: $cb $df
	rst  $38                                         ; $56ff: $ff
	rst  $38                                         ; $5700: $ff
	rst  $38                                         ; $5701: $ff
	db   $fd                                         ; $5702: $fd
	call c, $babb                                    ; $5703: $dc $bb $ba
	sbc  d                                           ; $5706: $9a
	sbc  b                                           ; $5707: $98
	ld   [hl], a                                     ; $5708: $77
	ld   h, l                                        ; $5709: $65
	ld   hl, $1111                                   ; $570a: $21 $11 $11
	ld   de, $2952                                   ; $570d: $11 $52 $29
	call $dfec                                       ; $5710: $cd $ec $df
	cp   $ff                                         ; $5713: $fe $ff
	rst  $38                                         ; $5715: $ff
	cp   $dd                                         ; $5716: $fe $dd
	call $a9cb                                       ; $5718: $cd $cb $a9
	add  a                                           ; $571b: $87
	ld   d, l                                        ; $571c: $55
	ld   sp, $1111                                   ; $571d: $31 $11 $11
	ld   de, $4717                                   ; $5720: $11 $17 $47
	rst  $28                                         ; $5723: $ef
	cp   $ed                                         ; $5724: $fe $ed
	xor  $ce                                         ; $5726: $ee $ce
	rst  $38                                         ; $5728: $ff
	rst  $38                                         ; $5729: $ff
	xor  $fc                                         ; $572a: $ee $fc
	db   $dd                                         ; $572c: $dd
	ret                                              ; $572d: $c9


	add  a                                           ; $572e: $87
	ld   h, l                                        ; $572f: $65
	ld   hl, $1111                                   ; $5730: $21 $11 $11
	ld   de, $761a                                   ; $5733: $11 $1a $76
	rst  $38                                         ; $5736: $ff
	cp   $bc                                         ; $5737: $fe $bc
	db   $fc                                         ; $5739: $fc
	cp   [hl]                                        ; $573a: $be
	rst  $38                                         ; $573b: $ff
	rst  $38                                         ; $573c: $ff
	rst  $28                                         ; $573d: $ef
	cp   $fe                                         ; $573e: $fe $fe
	jp   z, Jump_0be_4296                            ; $5740: $ca $96 $42

	ld   de, $1111                                   ; $5743: $11 $11 $11
	ld   de, $6a2b                                   ; $5746: $11 $2b $6a
	rst  $38                                         ; $5749: $ff
	cp   $9a                                         ; $574a: $fe $9a
	jp   z, $ffbf                                    ; $574c: $ca $bf $ff

	rst  $38                                         ; $574f: $ff
	rst  $28                                         ; $5750: $ef
	cp   $dd                                         ; $5751: $fe $dd
	cp   b                                           ; $5753: $b8
	ld   [hl], l                                     ; $5754: $75
	ld   sp, $1111                                   ; $5755: $31 $11 $11
	ld   de, $bc11                                   ; $5758: $11 $11 $bc
	ld   a, l                                        ; $575b: $7d
	rst  $28                                         ; $575c: $ef
	ei                                               ; $575d: $fb
	sbc  b                                           ; $575e: $98
	xor  c                                           ; $575f: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5760: $cf
	rst  $38                                         ; $5761: $ff
	rst  $38                                         ; $5762: $ff
	rst  JumpTable                                         ; $5763: $df
	xor  $ca                                         ; $5764: $ee $ca
	add  a                                           ; $5766: $87
	ld   [hl], h                                     ; $5767: $74
	ld   hl, $1111                                   ; $5768: $21 $11 $11
	ld   de, $f816                                   ; $576b: $11 $16 $f8
	cp   a                                           ; $576e: $bf
	rst  $38                                         ; $576f: $ff
	and  [hl]                                        ; $5770: $a6
	ld   a, d                                        ; $5771: $7a
	xor  e                                           ; $5772: $ab
	rst  $38                                         ; $5773: $ff
	rst  $38                                         ; $5774: $ff
	db   $dd                                         ; $5775: $dd
	xor  $ed                                         ; $5776: $ee $ed
	ld   [$3276], a                                  ; $5778: $ea $76 $32
	ld   de, $1111                                   ; $577b: $11 $11 $11
	ld   de, wOBJPalettes                                   ; $577e: $11 $1e $c3
	rst  $38                                         ; $5781: $ff
	db   $fd                                         ; $5782: $fd
	ld   [hl], a                                     ; $5783: $77
	adc  c                                           ; $5784: $89
	adc  h                                           ; $5785: $8c
	rst  $38                                         ; $5786: $ff
	cp   $ef                                         ; $5787: $fe $ef
	db   $dd                                         ; $5789: $dd
	call z, Call_0be_76d7                            ; $578a: $cc $d7 $76
	ld   [de], a                                     ; $578d: $12
	ld   de, $1111                                   ; $578e: $11 $11 $11
	ld   de, $771f                                   ; $5791: $11 $1f $77
	ei                                               ; $5794: $fb
	rst  $38                                         ; $5795: $ff
	ld   [hl], a                                     ; $5796: $77
	add  a                                           ; $5797: $87
	adc  [hl]                                        ; $5798: $8e
	rst  $38                                         ; $5799: $ff
	rst  $38                                         ; $579a: $ff
	sbc  $db                                         ; $579b: $de $db
	call z, $96a8                                    ; $579d: $cc $a8 $96
	ld   b, c                                        ; $57a0: $41
	ld   de, $1111                                   ; $57a1: $11 $11 $11
	ld   de, $893f                                   ; $57a4: $11 $3f $89
	rst  $38                                         ; $57a7: $ff
	db   $fc                                         ; $57a8: $fc
	ld   d, a                                        ; $57a9: $57
	ld   [hl], a                                     ; $57aa: $77
	sbc  a                                           ; $57ab: $9f
	rst  $38                                         ; $57ac: $ff
	cp   $ed                                         ; $57ad: $fe $ed
	db   $db                                         ; $57af: $db
	sbc  $b8                                         ; $57b0: $de $b8
	ld   b, e                                        ; $57b2: $43
	ld   hl, $1111                                   ; $57b3: $21 $11 $11
	ld   de, $bf11                                   ; $57b6: $11 $11 $bf
	ld   e, d                                        ; $57b9: $5a
	cp   $fc                                         ; $57ba: $fe $fc
	ld   b, e                                        ; $57bc: $43
	and  a                                           ; $57bd: $a7
	cp   a                                           ; $57be: $bf
	rst  $38                                         ; $57bf: $ff
	cp   $cb                                         ; $57c0: $fe $cb
	ld   a, [$88dd]                                  ; $57c2: $fa $dd $88
	ld   d, h                                        ; $57c5: $54
	ld   hl, $1511                                   ; $57c6: $21 $11 $15
	ld   de, $df11                                   ; $57c9: $11 $11 $df
	sbc  [hl]                                        ; $57cc: $9e
	call Call_0be_52ca                               ; $57cd: $cd $ca $52
	adc  d                                           ; $57d0: $8a
	rst  $38                                         ; $57d1: $ff
	rst  $38                                         ; $57d2: $ff
	sbc  $ad                                         ; $57d3: $de $ad
	db   $ed                                         ; $57d5: $ed
	db   $fd                                         ; $57d6: $fd
	add  l                                           ; $57d7: $85
	ld   d, e                                        ; $57d8: $53
	ld   de, $1211                                   ; $57d9: $11 $11 $12
	ld   de, $ec11                                   ; $57dc: $11 $11 $ec
	ld   a, a                                        ; $57df: $7f
	db   $eb                                         ; $57e0: $eb
	jp   $9b37                                       ; $57e1: $c3 $37 $9b


	rst  $38                                         ; $57e4: $ff
	rst  $28                                         ; $57e5: $ef
	db   $fd                                         ; $57e6: $fd
	call z, $fc9e                                    ; $57e7: $cc $9e $fc
	sub  l                                           ; $57ea: $95
	ld   b, e                                        ; $57eb: $43
	ld   de, $4413                                   ; $57ec: $11 $13 $44
	ld   de, $c811                                   ; $57ef: $11 $11 $c8
	cp   a                                           ; $57f2: $bf
	db   $dd                                         ; $57f3: $dd
	or   d                                           ; $57f4: $b2
	ld   h, [hl]                                     ; $57f5: $66
	sbc  [hl]                                        ; $57f6: $9e
	rst  $38                                         ; $57f7: $ff
	rst  $28                                         ; $57f8: $ef
	rst  $28                                         ; $57f9: $ef
	call c, $fcbd                                    ; $57fa: $dc $bd $fc
	sub  [hl]                                        ; $57fd: $96
	ld   de, $2411                                   ; $57fe: $11 $11 $24
	ld   b, c                                        ; $5801: $41
	ld   de, $f616                                   ; $5802: $11 $16 $f6
	xor  [hl]                                        ; $5805: $ae
	rst  $28                                         ; $5806: $ef
	or   h                                           ; $5807: $b4
	inc  d                                           ; $5808: $14
	sbc  l                                           ; $5809: $9d
	rst  $38                                         ; $580a: $ff
	rst  $38                                         ; $580b: $ff
	set  1, [hl]                                     ; $580c: $cb $ce
	call z, $85fc                                    ; $580e: $cc $fc $85
	ld   hl, $1221                                   ; $5811: $21 $21 $12
	ld   h, c                                        ; $5814: $61
	ld   de, $f916                                   ; $5815: $11 $16 $f9
	xor  [hl]                                        ; $5818: $ae
	rst  $38                                         ; $5819: $ff
	ld   de, $d88b                                   ; $581a: $11 $8b $d8
	rst  $38                                         ; $581d: $ff
	rst  $38                                         ; $581e: $ff
	db   $db                                         ; $581f: $db
	cp   e                                           ; $5820: $bb
	rst  JumpTable                                         ; $5821: $df
	jp   z, Jump_0be_5175                            ; $5822: $ca $75 $51

	ld   de, $2124                                   ; $5825: $11 $24 $21
	ld   de, $f517                                   ; $5828: $11 $17 $f5
	rst  JumpTable                                         ; $582b: $df
	cp   $14                                         ; $582c: $fe $14
	ld   c, h                                        ; $582e: $4c
	cp   b                                           ; $582f: $b8
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	reti                                             ; $5832: $d9


	sbc  [hl]                                        ; $5833: $9e
	rst  $38                                         ; $5834: $ff
	jp   c, Jump_0be_6175                            ; $5835: $da $75 $61

	ld   de, $6118                                   ; $5838: $11 $18 $61
	ld   de, $8617                                   ; $583b: $11 $17 $86
	db   $fd                                         ; $583e: $fd
	rst  $28                                         ; $583f: $ef
	ld   [hl-], a                                    ; $5840: $32
	add  hl, hl                                      ; $5841: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5842: $cf
	rst  $38                                         ; $5843: $ff
	db   $fd                                         ; $5844: $fd
	xor  a                                           ; $5845: $af
	db   $fc                                         ; $5846: $fc
	xor  [hl]                                        ; $5847: $ae
	call c, $1195                                    ; $5848: $dc $95 $11
	ld   de, $4137                                   ; $584b: $11 $37 $41
	ld   de, $6517                                   ; $584e: $11 $17 $65
	rst  $38                                         ; $5851: $ff
	xor  b                                           ; $5852: $a8
	ld   l, d                                        ; $5853: $6a
	ld   e, b                                        ; $5854: $58
	sbc  e                                           ; $5855: $9b
	rst  $38                                         ; $5856: $ff
	cp   $cd                                         ; $5857: $fe $cd
	cp   d                                           ; $5859: $ba
	cp   l                                           ; $585a: $bd
	db   $ed                                         ; $585b: $ed
	sub  l                                           ; $585c: $95
	ld   de, $4811                                   ; $585d: $11 $11 $48
	ld   b, c                                        ; $5860: $41
	ld   de, $d51a                                   ; $5861: $11 $1a $d5
	db   $dd                                         ; $5864: $dd
	set  5, d                                        ; $5865: $cb $ea
	jr   @+$81                                       ; $5867: $18 $7f

	rst  $38                                         ; $5869: $ff
	db   $fc                                         ; $586a: $fc
	res  5, a                                        ; $586b: $cb $af
	call z, $86fb                                    ; $586d: $cc $fb $86
	ld   [hl-], a                                    ; $5870: $32
	ld   de, $9116                                   ; $5871: $11 $16 $91
	ld   de, $b417                                   ; $5874: $11 $17 $b4
	db   $dd                                         ; $5877: $dd
	sbc  a                                           ; $5878: $9f
	or   [hl]                                        ; $5879: $b6
	add  hl, de                                      ; $587a: $19
	cp   b                                           ; $587b: $b8
	rst  JumpTable                                         ; $587c: $df
	rst  $38                                         ; $587d: $ff
	ld   sp, hl                                      ; $587e: $f9
	adc  [hl]                                        ; $587f: $8e
	cp   [hl]                                        ; $5880: $be
	jp   z, Jump_0be_7386                            ; $5881: $ca $86 $73

	ld   de, $5115                                   ; $5884: $11 $15 $51
	ld   de, $9112                                   ; $5887: $11 $12 $91
	ld   a, a                                        ; $588a: $7f
	sub  a                                           ; $588b: $97
	bit  3, b                                        ; $588c: $cb $58
	and  l                                           ; $588e: $a5
	rst  $38                                         ; $588f: $ff
	rst  $38                                         ; $5890: $ff
	rst  $38                                         ; $5891: $ff
	adc  h                                           ; $5892: $8c
	cp   e                                           ; $5893: $bb
	db   $fd                                         ; $5894: $fd
	ld   a, c                                        ; $5895: $79
	ld   [hl], c                                     ; $5896: $71
	ld   de, $5128                                   ; $5897: $11 $28 $51
	ld   de, $5811                                   ; $589a: $11 $11 $58
	xor  a                                           ; $589d: $af
	ld   e, c                                        ; $589e: $59
	jp   hl                                          ; $589f: $e9


	ld   [hl], c                                     ; $58a0: $71
	xor  e                                           ; $58a1: $ab
	rst  $38                                         ; $58a2: $ff
	rst  $38                                         ; $58a3: $ff
	sbc  h                                           ; $58a4: $9c
	adc  $db                                         ; $58a5: $ce $db
	db   $fc                                         ; $58a7: $fc
	sub  a                                           ; $58a8: $97
	ld   d, l                                        ; $58a9: $55
	ld   d, c                                        ; $58aa: $51
	inc  d                                           ; $58ab: $14
	sub  [hl]                                        ; $58ac: $96
	ld   de, $3b11                                   ; $58ad: $11 $11 $3b
	ld   c, [hl]                                     ; $58b0: $4e
	ret                                              ; $58b1: $c9


	or   $72                                         ; $58b2: $f6 $72
	rra                                              ; $58b4: $1f
	rst  $28                                         ; $58b5: $ef
	rst  $38                                         ; $58b6: $ff
	add  $cf                                         ; $58b7: $c6 $cf
	xor  a                                           ; $58b9: $af
	cp   l                                           ; $58ba: $bd
	push af                                          ; $58bb: $f5
	ld   h, l                                        ; $58bc: $65
	ld   de, $6514                                   ; $58bd: $11 $14 $65
	ld   b, c                                        ; $58c0: $41
	ld   de, $3f19                                   ; $58c1: $11 $19 $3f
	call nc, Call_0be_51fe                           ; $58c4: $d4 $fe $51
	ld   l, a                                        ; $58c7: $6f
	db   $dd                                         ; $58c8: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58c9: $cf
	rst  $38                                         ; $58ca: $ff
	sub  [hl]                                        ; $58cb: $96
	rst  $38                                         ; $58cc: $ff
	ld   sp, hl                                      ; $58cd: $f9
	ld   a, h                                        ; $58ce: $7c
	sub  [hl]                                        ; $58cf: $96
	ld   de, $b612                                   ; $58d0: $11 $12 $b6
	ld   de, $1b11                                   ; $58d3: $11 $11 $1b
	add  e                                           ; $58d6: $83
	rst  JumpTable                                         ; $58d7: $df
	or   [hl]                                        ; $58d8: $b6
	xor  h                                           ; $58d9: $ac
	ld   sp, $ff4f                                   ; $58da: $31 $4f $ff
	ld   a, [$8bcc]                                  ; $58dd: $fa $cc $8b
	rst  $38                                         ; $58e0: $ff
	jp   z, $21a5                                    ; $58e1: $ca $a5 $21

	ld   de, $6149                                   ; $58e4: $11 $49 $61
	ld   de, $3815                                   ; $58e7: $11 $15 $38
	ei                                               ; $58ea: $fb
	ld   e, a                                        ; $58eb: $5f
	ldh  [c], a                                      ; $58ec: $e2
	ld   a, [de]                                     ; $58ed: $1a
	rst  JumpTable                                         ; $58ee: $df
	cp   $ff                                         ; $58ef: $fe $ff
	ret                                              ; $58f1: $c9


	ld   e, [hl]                                     ; $58f2: $5e
	cp   $f7                                         ; $58f3: $fe $f7
	cp   c                                           ; $58f5: $b9
	ld   de, $6513                                   ; $58f6: $11 $13 $65
	ld   [hl], c                                     ; $58f9: $71
	ld   de, $5711                                   ; $58fa: $11 $11 $57
	rst  $38                                         ; $58fd: $ff
	xor  c                                           ; $58fe: $a9
	add  h                                           ; $58ff: $84
	adc  d                                           ; $5900: $8a
	ld   e, [hl]                                     ; $5901: $5e
	db   $fd                                         ; $5902: $fd
	rst  $38                                         ; $5903: $ff
	ld   a, [$cf9c]                                  ; $5904: $fa $9c $cf
	ld   sp, hl                                      ; $5907: $f9
	ld   d, l                                        ; $5908: $55
	ld   d, d                                        ; $5909: $52
	ld   de, $2177                                   ; $590a: $11 $77 $21
	ld   de, $5316                                   ; $590d: $11 $16 $53
	rst  JumpTable                                         ; $5910: $df
	xor  b                                           ; $5911: $a8
	reti                                             ; $5912: $d9


	ld   c, c                                        ; $5913: $49
	ld   l, e                                        ; $5914: $6b
	rst  $38                                         ; $5915: $ff
	cp   $bd                                         ; $5916: $fe $bd
	xor  [hl]                                        ; $5918: $ae
	db   $ed                                         ; $5919: $ed
	ret  z                                           ; $591a: $c8

	sub  l                                           ; $591b: $95
	ld   h, l                                        ; $591c: $65
	ld   [de], a                                     ; $591d: $12
	dec  h                                           ; $591e: $25
	ld   d, c                                        ; $591f: $51
	ld   de, $8116                                   ; $5920: $11 $16 $81
	ld   e, [hl]                                     ; $5923: $5e
	rst  $38                                         ; $5924: $ff
	and  c                                           ; $5925: $a1
	ld   a, [hl-]                                    ; $5926: $3a
	jp   z, $fcbf                                    ; $5927: $ca $bf $fc

	ld   a, [hl]                                     ; $592a: $7e
	db   $fd                                         ; $592b: $fd
	sbc  l                                           ; $592c: $9d
	call Call_0be_73a6                               ; $592d: $cd $a6 $73
	ld   de, $5528                                   ; $5930: $11 $28 $55
	ld   de, $3311                                   ; $5933: $11 $11 $33
	sbc  l                                           ; $5936: $9d
	ld   a, a                                        ; $5937: $7f
	ld   sp, hl                                      ; $5938: $f9
	ld   b, e                                        ; $5939: $43
	cp   c                                           ; $593a: $b9
	cp   a                                           ; $593b: $bf
	rst  $38                                         ; $593c: $ff
	call $edac                                       ; $593d: $cd $ac $ed
	ld   a, [$54c9]                                  ; $5940: $fa $c9 $54
	inc  h                                           ; $5943: $24
	ld   de, $2151                                   ; $5944: $11 $51 $21
	ld   de, $3b88                                   ; $5947: $11 $88 $3b
	ei                                               ; $594a: $fb
	bit  4, [hl]                                     ; $594b: $cb $66
	ld   d, a                                        ; $594d: $57
	rst  $38                                         ; $594e: $ff
	rst  $38                                         ; $594f: $ff
	cp   $ba                                         ; $5950: $fe $ba
	xor  a                                           ; $5952: $af
	ei                                               ; $5953: $fb
	ld   a, e                                        ; $5954: $7b
	sub  a                                           ; $5955: $97
	ld   de, $8314                                   ; $5956: $11 $14 $83
	ld   de, $2611                                   ; $5959: $11 $11 $26
	ld   e, [hl]                                     ; $595c: $5e
	ld   hl, sp+$57                                  ; $595d: $f8 $57
	db   $dd                                         ; $595f: $dd
	ld   d, e                                        ; $5960: $53
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5961: $cf
	ei                                               ; $5962: $fb
	rst  $28                                         ; $5963: $ef
	ei                                               ; $5964: $fb
	sbc  e                                           ; $5965: $9b
	rst  $38                                         ; $5966: $ff
	sub  a                                           ; $5967: $97
	ld   h, [hl]                                     ; $5968: $66
	ld   b, d                                        ; $5969: $42
	ld   de, $1188                                   ; $596a: $11 $88 $11
	ld   de, $2515                                   ; $596d: $11 $15 $25
	db   $fd                                         ; $5970: $fd
	ld   a, d                                        ; $5971: $7a
	ld   sp, hl                                      ; $5972: $f9
	ld   d, [hl]                                     ; $5973: $56
	ld   l, [hl]                                     ; $5974: $6e
	rst  $38                                         ; $5975: $ff
	rst  $28                                         ; $5976: $ef
	db   $fc                                         ; $5977: $fc
	xor  l                                           ; $5978: $ad
	db   $dd                                         ; $5979: $dd
	cp   c                                           ; $597a: $b9
	sub  [hl]                                        ; $597b: $96
	ld   [hl], h                                     ; $597c: $74
	ld   de, $2115                                   ; $597d: $11 $15 $21
	ld   de, $6117                                   ; $5980: $11 $17 $61
	sbc  a                                           ; $5983: $9f
	add  $ec                                         ; $5984: $c6 $ec
	ld   d, [hl]                                     ; $5986: $56
	sbc  h                                           ; $5987: $9c
	rst  $38                                         ; $5988: $ff
	sbc  $fd                                         ; $5989: $de $fd
	adc  $de                                         ; $598b: $ce $de
	cp   b                                           ; $598d: $b8
	xor  c                                           ; $598e: $a9
	ld   [hl], e                                     ; $598f: $73
	ld   hl, $1113                                   ; $5990: $21 $13 $11
	ld   de, $5312                                   ; $5993: $11 $12 $53
	ld   l, a                                        ; $5996: $6f
	and  a                                           ; $5997: $a7
	db   $fd                                         ; $5998: $fd
	add  a                                           ; $5999: $87
	ld   a, h                                        ; $599a: $7c
	rst  $38                                         ; $599b: $ff
	cp   [hl]                                        ; $599c: $be
	rst  $38                                         ; $599d: $ff
	call z, $c8df                                    ; $599e: $cc $df $c8
	xor  e                                           ; $59a1: $ab
	and  h                                           ; $59a2: $a4
	ld   [hl+], a                                    ; $59a3: $22
	ld   de, $1111                                   ; $59a4: $11 $11 $11
	ld   de, $4a34                                   ; $59a7: $11 $34 $4a
	xor  h                                           ; $59aa: $ac
	jp   c, $b99a                                    ; $59ab: $da $9a $b9

	sbc  [hl]                                        ; $59ae: $9e
	db   $fd                                         ; $59af: $fd
	sbc  $fe                                         ; $59b0: $de $fe
	cp   h                                           ; $59b2: $bc
	rst  $28                                         ; $59b3: $ef
	xor  b                                           ; $59b4: $a8
	xor  d                                           ; $59b5: $aa
	ld   d, d                                        ; $59b6: $52
	ld   de, $1121                                   ; $59b7: $11 $21 $11
	ld   de, $1613                                   ; $59ba: $11 $13 $16
	sbc  d                                           ; $59bd: $9a
	xor  h                                           ; $59be: $ac
	call c, $aba9                                    ; $59bf: $dc $a9 $ab
	rst  $28                                         ; $59c2: $ef
	cp   [hl]                                        ; $59c3: $be
	rst  $38                                         ; $59c4: $ff
	cp   d                                           ; $59c5: $ba
	rst  JumpTable                                         ; $59c6: $df
	ret  z                                           ; $59c7: $c8

	xor  e                                           ; $59c8: $ab
	and  l                                           ; $59c9: $a5
	ld   [hl-], a                                    ; $59ca: $32
	ld   [hl+], a                                    ; $59cb: $22
	ld   de, $1111                                   ; $59cc: $11 $11 $11
	ld   b, c                                        ; $59cf: $41
	add  hl, sp                                      ; $59d0: $39
	sbc  b                                           ; $59d1: $98
	adc  $dc                                         ; $59d2: $ce $dc
	sbc  d                                           ; $59d4: $9a
	rst  $38                                         ; $59d5: $ff
	call $bbff                                       ; $59d6: $cd $ff $bb
	adc  $d9                                         ; $59d9: $ce $d9
	sbc  e                                           ; $59db: $9b
	ret  z                                           ; $59dc: $c8

	ld   [hl], a                                     ; $59dd: $77
	ld   b, c                                        ; $59de: $41
	inc  d                                           ; $59df: $14
	ld   de, $1311                                   ; $59e0: $11 $11 $13
	ld   de, $668a                                   ; $59e3: $11 $8a $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59e6: $cf
	cp   c                                           ; $59e7: $b9
	rst  JumpTable                                         ; $59e8: $df
	db   $ec                                         ; $59e9: $ec
	sbc  $fc                                         ; $59ea: $de $fc
	sbc  h                                           ; $59ec: $9c
	db   $eb                                         ; $59ed: $eb
	sbc  c                                           ; $59ee: $99
	xor  e                                           ; $59ef: $ab
	add  a                                           ; $59f0: $87
	ld   a, b                                        ; $59f1: $78
	ld   d, e                                        ; $59f2: $53
	ld   b, l                                        ; $59f3: $45
	ld   [hl+], a                                    ; $59f4: $22
	ld   de, $2113                                   ; $59f5: $11 $13 $21
	inc  [hl]                                        ; $59f8: $34
	ld   h, [hl]                                     ; $59f9: $66
	ld   a, c                                        ; $59fa: $79
	sbc  c                                           ; $59fb: $99
	xor  h                                           ; $59fc: $ac
	call z, $ddcc                                    ; $59fd: $cc $cc $dd
	db   $db                                         ; $5a00: $db
	cp   h                                           ; $5a01: $bc
	cp   e                                           ; $5a02: $bb
	xor  e                                           ; $5a03: $ab
	cp   c                                           ; $5a04: $b9
	xor  d                                           ; $5a05: $aa
	adc  c                                           ; $5a06: $89
	sbc  b                                           ; $5a07: $98
	add  a                                           ; $5a08: $87
	halt                                             ; $5a09: $76
	ld   d, l                                        ; $5a0a: $55
	ld   d, h                                        ; $5a0b: $54
	ld   b, h                                        ; $5a0c: $44
	inc  [hl]                                        ; $5a0d: $34
	ld   b, l                                        ; $5a0e: $45
	ld   b, h                                        ; $5a0f: $44
	ld   h, [hl]                                     ; $5a10: $66
	ld   a, b                                        ; $5a11: $78
	sbc  c                                           ; $5a12: $99
	xor  h                                           ; $5a13: $ac
	set  1, l                                        ; $5a14: $cb $cd
	db   $dd                                         ; $5a16: $dd
	db   $dd                                         ; $5a17: $dd
	call $aacb                                       ; $5a18: $cd $cb $aa
	sbc  c                                           ; $5a1b: $99
	adc  b                                           ; $5a1c: $88
	ld   [hl], a                                     ; $5a1d: $77
	ld   h, [hl]                                     ; $5a1e: $66
	ld   h, [hl]                                     ; $5a1f: $66
	ld   h, [hl]                                     ; $5a20: $66
	ld   h, [hl]                                     ; $5a21: $66
	ld   h, [hl]                                     ; $5a22: $66
	ld   d, l                                        ; $5a23: $55
	ld   h, l                                        ; $5a24: $65
	ld   h, [hl]                                     ; $5a25: $66
	ld   h, [hl]                                     ; $5a26: $66
	ld   h, [hl]                                     ; $5a27: $66
	ld   h, a                                        ; $5a28: $67
	ld   a, b                                        ; $5a29: $78
	adc  c                                           ; $5a2a: $89
	sbc  e                                           ; $5a2b: $9b
	xor  d                                           ; $5a2c: $aa
	xor  d                                           ; $5a2d: $aa
	cp   e                                           ; $5a2e: $bb
	xor  d                                           ; $5a2f: $aa
	cp   e                                           ; $5a30: $bb
	xor  d                                           ; $5a31: $aa
	sbc  c                                           ; $5a32: $99
	adc  b                                           ; $5a33: $88
	add  a                                           ; $5a34: $87
	ld   [hl], a                                     ; $5a35: $77
	halt                                             ; $5a36: $76
	ld   h, a                                        ; $5a37: $67
	ld   h, [hl]                                     ; $5a38: $66
	ld   h, a                                        ; $5a39: $67
	halt                                             ; $5a3a: $76
	ld   h, [hl]                                     ; $5a3b: $66
	ld   h, [hl]                                     ; $5a3c: $66
	ld   h, a                                        ; $5a3d: $67
	ld   h, [hl]                                     ; $5a3e: $66
	ld   h, [hl]                                     ; $5a3f: $66
	ld   h, [hl]                                     ; $5a40: $66
	ld   [hl], a                                     ; $5a41: $77
	ld   [hl], a                                     ; $5a42: $77
	ld   a, b                                        ; $5a43: $78
	adc  c                                           ; $5a44: $89
	adc  c                                           ; $5a45: $89
	sbc  c                                           ; $5a46: $99
	xor  e                                           ; $5a47: $ab
	jp   z, $89aa                                    ; $5a48: $ca $aa $89

	adc  c                                           ; $5a4b: $89
	sbc  b                                           ; $5a4c: $98
	sbc  b                                           ; $5a4d: $98
	adc  b                                           ; $5a4e: $88
	ld   [hl], a                                     ; $5a4f: $77
	ld   a, b                                        ; $5a50: $78
	adc  b                                           ; $5a51: $88
	adc  b                                           ; $5a52: $88
	ld   [hl], a                                     ; $5a53: $77
	ld   [hl], a                                     ; $5a54: $77
	ld   [hl], a                                     ; $5a55: $77
	ld   [hl], a                                     ; $5a56: $77
	ld   h, [hl]                                     ; $5a57: $66
	ld   h, l                                        ; $5a58: $65
	ld   h, [hl]                                     ; $5a59: $66
	ld   h, a                                        ; $5a5a: $67
	ld   [hl], a                                     ; $5a5b: $77
	ld   [hl], a                                     ; $5a5c: $77
	ld   a, c                                        ; $5a5d: $79
	sbc  c                                           ; $5a5e: $99
	sbc  c                                           ; $5a5f: $99
	xor  d                                           ; $5a60: $aa
	xor  c                                           ; $5a61: $a9
	xor  d                                           ; $5a62: $aa
	sbc  c                                           ; $5a63: $99
	sbc  d                                           ; $5a64: $9a
	xor  c                                           ; $5a65: $a9
	sbc  c                                           ; $5a66: $99
	adc  c                                           ; $5a67: $89
	adc  b                                           ; $5a68: $88
	adc  b                                           ; $5a69: $88
	add  a                                           ; $5a6a: $87
	ld   [hl], a                                     ; $5a6b: $77
	ld   h, [hl]                                     ; $5a6c: $66
	ld   h, [hl]                                     ; $5a6d: $66
	ld   h, l                                        ; $5a6e: $65
	ld   d, l                                        ; $5a6f: $55
	ld   d, l                                        ; $5a70: $55
	ld   d, l                                        ; $5a71: $55
	ld   h, [hl]                                     ; $5a72: $66
	ld   h, [hl]                                     ; $5a73: $66
	ld   a, b                                        ; $5a74: $78
	adc  d                                           ; $5a75: $8a
	xor  c                                           ; $5a76: $a9
	sbc  d                                           ; $5a77: $9a
	cp   d                                           ; $5a78: $ba
	cp   d                                           ; $5a79: $ba
	cp   e                                           ; $5a7a: $bb
	xor  c                                           ; $5a7b: $a9
	sbc  c                                           ; $5a7c: $99
	xor  c                                           ; $5a7d: $a9
	sbc  b                                           ; $5a7e: $98
	sbc  c                                           ; $5a7f: $99
	adc  b                                           ; $5a80: $88
	adc  b                                           ; $5a81: $88
	add  a                                           ; $5a82: $87
	ld   h, a                                        ; $5a83: $67
	ld   [hl], a                                     ; $5a84: $77
	ld   h, [hl]                                     ; $5a85: $66
	ld   h, [hl]                                     ; $5a86: $66
	ld   h, [hl]                                     ; $5a87: $66
	ld   h, [hl]                                     ; $5a88: $66
	ld   d, h                                        ; $5a89: $54
	ld   d, l                                        ; $5a8a: $55
	ld   h, [hl]                                     ; $5a8b: $66
	ld   h, a                                        ; $5a8c: $67
	ld   [hl], a                                     ; $5a8d: $77
	ld   a, b                                        ; $5a8e: $78
	xor  d                                           ; $5a8f: $aa
	xor  e                                           ; $5a90: $ab
	cp   h                                           ; $5a91: $bc
	call z, $bbcd                                    ; $5a92: $cc $cd $bb
	jp   c, $a8aa                                    ; $5a95: $da $aa $a8

	adc  b                                           ; $5a98: $88
	ld   [hl], a                                     ; $5a99: $77
	ld   h, l                                        ; $5a9a: $65
	ld   d, [hl]                                     ; $5a9b: $56
	ld   d, l                                        ; $5a9c: $55
	ld   b, h                                        ; $5a9d: $44
	ld   b, e                                        ; $5a9e: $43
	ld   b, e                                        ; $5a9f: $43
	inc  sp                                          ; $5aa0: $33
	inc  sp                                          ; $5aa1: $33
	ld   b, l                                        ; $5aa2: $45
	ld   h, a                                        ; $5aa3: $67
	adc  c                                           ; $5aa4: $89
	sbc  h                                           ; $5aa5: $9c
	call c, $fdde                                    ; $5aa6: $dc $de $fd
	db   $ed                                         ; $5aa9: $ed
	call z, $babb                                    ; $5aaa: $cc $bb $ba
	add  a                                           ; $5aad: $87
	sub  a                                           ; $5aae: $97
	ld   [hl], a                                     ; $5aaf: $77
	ld   d, l                                        ; $5ab0: $55
	ld   d, l                                        ; $5ab1: $55
	inc  sp                                          ; $5ab2: $33
	ld   sp, $1222                                   ; $5ab3: $31 $22 $12
	inc  sp                                          ; $5ab6: $33
	inc  h                                           ; $5ab7: $24
	ld   h, a                                        ; $5ab8: $67
	adc  d                                           ; $5ab9: $8a
	call $ffef                                       ; $5aba: $cd $ef $ff
	rst  $38                                         ; $5abd: $ff
	cp   $dc                                         ; $5abe: $fe $dc
	cp   e                                           ; $5ac0: $bb
	sbc  b                                           ; $5ac1: $98
	ld   [hl], a                                     ; $5ac2: $77
	halt                                             ; $5ac3: $76
	ld   d, l                                        ; $5ac4: $55
	ld   d, e                                        ; $5ac5: $53
	ld   [hl-], a                                    ; $5ac6: $32
	ld   de, $1112                                   ; $5ac7: $11 $12 $11
	inc  sp                                          ; $5aca: $33
	ld   [hl+], a                                    ; $5acb: $22
	ld   h, a                                        ; $5acc: $67
	ld   a, c                                        ; $5acd: $79
	adc  $ff                                         ; $5ace: $ce $ff
	rst  $38                                         ; $5ad0: $ff
	rst  $38                                         ; $5ad1: $ff
	rst  $38                                         ; $5ad2: $ff
	db   $fc                                         ; $5ad3: $fc
	res  3, b                                        ; $5ad4: $cb $98
	ld   [hl], a                                     ; $5ad6: $77
	ld   h, l                                        ; $5ad7: $65
	ld   b, l                                        ; $5ad8: $45
	ld   b, d                                        ; $5ad9: $42
	ld   [hl+], a                                    ; $5ada: $22
	ld   de, $1112                                   ; $5adb: $11 $12 $11
	inc  hl                                          ; $5ade: $23
	ld   [hl+], a                                    ; $5adf: $22
	ld   h, a                                        ; $5ae0: $67
	adc  d                                           ; $5ae1: $8a
	rst  JumpTable                                         ; $5ae2: $df
	rst  $38                                         ; $5ae3: $ff
	rst  $38                                         ; $5ae4: $ff
	rst  $38                                         ; $5ae5: $ff
	rst  $38                                         ; $5ae6: $ff
	db   $fc                                         ; $5ae7: $fc
	res  2, a                                        ; $5ae8: $cb $97
	ld   h, [hl]                                     ; $5aea: $66
	ld   d, h                                        ; $5aeb: $54
	inc  sp                                          ; $5aec: $33
	ld   de, $1111                                   ; $5aed: $11 $11 $11
	ld   hl, $2113                                   ; $5af0: $21 $13 $21
	ld   h, $77                                      ; $5af3: $26 $77
	cp   l                                           ; $5af5: $bd
	rst  $38                                         ; $5af6: $ff
	rst  $38                                         ; $5af7: $ff
	rst  $38                                         ; $5af8: $ff
	rst  $38                                         ; $5af9: $ff
	rst  $38                                         ; $5afa: $ff
	sbc  $b7                                         ; $5afb: $de $b7
	halt                                             ; $5afd: $76
	ld   d, h                                        ; $5afe: $54
	inc  sp                                          ; $5aff: $33
	ld   hl, $1111                                   ; $5b00: $21 $11 $11
	ld   de, $3111                                   ; $5b03: $11 $11 $31
	dec  d                                           ; $5b06: $15
	ld   h, l                                        ; $5b07: $65
	xor  l                                           ; $5b08: $ad
	rst  $38                                         ; $5b09: $ff
	rst  $38                                         ; $5b0a: $ff
	rst  $38                                         ; $5b0b: $ff
	rst  $38                                         ; $5b0c: $ff
	rst  $38                                         ; $5b0d: $ff
	rst  $38                                         ; $5b0e: $ff
	ret  c                                           ; $5b0f: $d8

	add  a                                           ; $5b10: $87
	ld   d, h                                        ; $5b11: $54
	ld   b, e                                        ; $5b12: $43
	ld   de, $1111                                   ; $5b13: $11 $11 $11
	ld   de, $2112                                   ; $5b16: $11 $12 $21
	dec  d                                           ; $5b19: $15
	ld   d, l                                        ; $5b1a: $55
	sbc  l                                           ; $5b1b: $9d
	rst  $38                                         ; $5b1c: $ff
	rst  $38                                         ; $5b1d: $ff
	rst  $38                                         ; $5b1e: $ff
	rst  $38                                         ; $5b1f: $ff
	rst  $38                                         ; $5b20: $ff
	rst  $38                                         ; $5b21: $ff
	cp   c                                           ; $5b22: $b9
	sub  a                                           ; $5b23: $97
	ld   d, h                                        ; $5b24: $54
	ld   b, e                                        ; $5b25: $43
	ld   de, $1111                                   ; $5b26: $11 $11 $11
	ld   de, $1113                                   ; $5b29: $11 $13 $11
	dec  h                                           ; $5b2c: $25
	ld   b, [hl]                                     ; $5b2d: $46
	cp   h                                           ; $5b2e: $bc
	rst  $38                                         ; $5b2f: $ff
	rst  $38                                         ; $5b30: $ff
	rst  $38                                         ; $5b31: $ff
	rst  $38                                         ; $5b32: $ff
	rst  $38                                         ; $5b33: $ff
	cp   $b9                                         ; $5b34: $fe $b9
	add  [hl]                                        ; $5b36: $86
	ld   d, h                                        ; $5b37: $54
	ld   [hl-], a                                    ; $5b38: $32
	ld   de, $1111                                   ; $5b39: $11 $11 $11
	ld   de, $1122                                   ; $5b3c: $11 $22 $11
	ld   b, h                                        ; $5b3f: $44
	ld   c, c                                        ; $5b40: $49
	db   $dd                                         ; $5b41: $dd
	rst  $38                                         ; $5b42: $ff
	rst  $38                                         ; $5b43: $ff
	rst  $38                                         ; $5b44: $ff
	rst  $38                                         ; $5b45: $ff
	rst  $38                                         ; $5b46: $ff
	ei                                               ; $5b47: $fb
	sbc  c                                           ; $5b48: $99
	ld   h, h                                        ; $5b49: $64
	ld   d, h                                        ; $5b4a: $54
	ld   hl, $1111                                   ; $5b4b: $21 $11 $11
	ld   de, $3111                                   ; $5b4e: $11 $11 $31
	inc  de                                          ; $5b51: $13
	ld   b, h                                        ; $5b52: $44
	adc  e                                           ; $5b53: $8b
	rst  $28                                         ; $5b54: $ef
	rst  $38                                         ; $5b55: $ff
	rst  $38                                         ; $5b56: $ff
	rst  $38                                         ; $5b57: $ff
	rst  $38                                         ; $5b58: $ff
	rst  $38                                         ; $5b59: $ff
	jp   z, Jump_0be_5596                            ; $5b5a: $ca $96 $55

	inc  sp                                          ; $5b5d: $33
	ld   de, $1111                                   ; $5b5e: $11 $11 $11
	ld   de, $1122                                   ; $5b61: $11 $22 $11
	inc  [hl]                                        ; $5b64: $34
	ld   e, b                                        ; $5b65: $58
	cp   [hl]                                        ; $5b66: $be
	rst  $38                                         ; $5b67: $ff
	rst  $38                                         ; $5b68: $ff
	rst  $38                                         ; $5b69: $ff
	rst  $38                                         ; $5b6a: $ff
	rst  $38                                         ; $5b6b: $ff
	db   $eb                                         ; $5b6c: $eb
	cp   c                                           ; $5b6d: $b9
	ld   h, l                                        ; $5b6e: $65
	ld   d, e                                        ; $5b6f: $53
	ld   sp, $1111                                   ; $5b70: $31 $11 $11
	ld   de, $2111                                   ; $5b73: $11 $11 $21
	inc  de                                          ; $5b76: $13
	inc  [hl]                                        ; $5b77: $34
	adc  d                                           ; $5b78: $8a
	rst  JumpTable                                         ; $5b79: $df
	rst  $38                                         ; $5b7a: $ff
	rst  $38                                         ; $5b7b: $ff
	rst  $38                                         ; $5b7c: $ff
	rst  $38                                         ; $5b7d: $ff
	rst  $38                                         ; $5b7e: $ff
	res  2, a                                        ; $5b7f: $cb $97
	ld   d, l                                        ; $5b81: $55
	ld   [hl-], a                                    ; $5b82: $32
	ld   de, $1111                                   ; $5b83: $11 $11 $11
	ld   de, $1121                                   ; $5b86: $11 $21 $11
	inc  sp                                          ; $5b89: $33
	ld   e, c                                        ; $5b8a: $59
	cp   [hl]                                        ; $5b8b: $be
	rst  $38                                         ; $5b8c: $ff
	rst  $38                                         ; $5b8d: $ff
	rst  $38                                         ; $5b8e: $ff
	rst  $38                                         ; $5b8f: $ff
	rst  $38                                         ; $5b90: $ff
	db   $ec                                         ; $5b91: $ec
	cp   b                                           ; $5b92: $b8
	ld   [hl], l                                     ; $5b93: $75
	ld   b, e                                        ; $5b94: $43
	ld   hl, $1111                                   ; $5b95: $21 $11 $11
	ld   de, $1112                                   ; $5b98: $11 $12 $11
	ld   [hl+], a                                    ; $5b9b: $22
	dec  [hl]                                        ; $5b9c: $35
	sbc  e                                           ; $5b9d: $9b
	rst  $28                                         ; $5b9e: $ef
	rst  $38                                         ; $5b9f: $ff
	rst  $38                                         ; $5ba0: $ff
	rst  $38                                         ; $5ba1: $ff
	rst  $38                                         ; $5ba2: $ff
	rst  $38                                         ; $5ba3: $ff
	call c, Call_0be_5487                            ; $5ba4: $dc $87 $54
	ld   sp, $1111                                   ; $5ba7: $31 $11 $11
	ld   de, $2111                                   ; $5baa: $11 $11 $21
	ld   [de], a                                     ; $5bad: $12
	inc  de                                          ; $5bae: $13
	ld   l, c                                        ; $5baf: $69
	adc  $ff                                         ; $5bb0: $ce $ff
	rst  $38                                         ; $5bb2: $ff
	rst  $38                                         ; $5bb3: $ff
	rst  $38                                         ; $5bb4: $ff
	rst  $38                                         ; $5bb5: $ff
	db   $fd                                         ; $5bb6: $fd
	cp   c                                           ; $5bb7: $b9
	ld   [hl], l                                     ; $5bb8: $75
	ld   b, d                                        ; $5bb9: $42
	ld   de, $1111                                   ; $5bba: $11 $11 $11
	ld   de, $1111                                   ; $5bbd: $11 $11 $11
	ld   hl, $ac47                                   ; $5bc0: $21 $47 $ac
	rst  $38                                         ; $5bc3: $ff
	rst  $38                                         ; $5bc4: $ff
	rst  $38                                         ; $5bc5: $ff
	rst  $38                                         ; $5bc6: $ff
	rst  $38                                         ; $5bc7: $ff
	rst  $38                                         ; $5bc8: $ff
	db   $db                                         ; $5bc9: $db
	add  [hl]                                        ; $5bca: $86
	ld   d, h                                        ; $5bcb: $54
	ld   hl, $1111                                   ; $5bcc: $21 $11 $11
	ld   de, $1111                                   ; $5bcf: $11 $11 $11
	ld   [de], a                                     ; $5bd2: $12
	inc  h                                           ; $5bd3: $24
	ld   a, e                                        ; $5bd4: $7b
	sbc  $ff                                         ; $5bd5: $de $ff
	rst  $38                                         ; $5bd7: $ff
	rst  $38                                         ; $5bd8: $ff
	rst  $38                                         ; $5bd9: $ff
	rst  $38                                         ; $5bda: $ff
	db   $ed                                         ; $5bdb: $ed
	cp   b                                           ; $5bdc: $b8
	ld   h, l                                        ; $5bdd: $65
	ld   b, d                                        ; $5bde: $42
	ld   de, $1111                                   ; $5bdf: $11 $11 $11
	ld   de, $1101                                   ; $5be2: $11 $01 $11
	ld   [de], a                                     ; $5be5: $12
	ld   b, a                                        ; $5be6: $47
	cp   l                                           ; $5be7: $bd
	rst  $38                                         ; $5be8: $ff
	rst  $38                                         ; $5be9: $ff
	rst  $38                                         ; $5bea: $ff
	rst  $38                                         ; $5beb: $ff
	rst  $38                                         ; $5bec: $ff
	db   $fd                                         ; $5bed: $fd
	db   $db                                         ; $5bee: $db
	halt                                             ; $5bef: $76
	ld   d, h                                        ; $5bf0: $54
	ld   hl, $1111                                   ; $5bf1: $21 $11 $11
	ld   de, $1111                                   ; $5bf4: $11 $11 $11
	ld   [bc], a                                     ; $5bf7: $02
	dec  [hl]                                        ; $5bf8: $35
	ld   a, d                                        ; $5bf9: $7a
	sbc  $ff                                         ; $5bfa: $de $ff
	rst  $38                                         ; $5bfc: $ff
	rst  $38                                         ; $5bfd: $ff
	rst  $38                                         ; $5bfe: $ff
	rst  $38                                         ; $5bff: $ff
	db   $eb                                         ; $5c00: $eb
	xor  c                                           ; $5c01: $a9
	ld   h, l                                        ; $5c02: $65
	ld   b, d                                        ; $5c03: $42
	ld   de, $1111                                   ; $5c04: $11 $11 $11
	ld   de, $1111                                   ; $5c07: $11 $11 $11
	inc  hl                                          ; $5c0a: $23
	ld   b, a                                        ; $5c0b: $47
	xor  h                                           ; $5c0c: $ac
	rst  $38                                         ; $5c0d: $ff
	rst  $38                                         ; $5c0e: $ff
	rst  $38                                         ; $5c0f: $ff
	rst  $38                                         ; $5c10: $ff
	rst  $38                                         ; $5c11: $ff
	rst  $38                                         ; $5c12: $ff
	res  2, [hl]                                     ; $5c13: $cb $96
	ld   d, h                                        ; $5c15: $54
	ld   hl, $1111                                   ; $5c16: $21 $11 $11
	ld   de, $1111                                   ; $5c19: $11 $11 $11
	ld   de, $6935                                   ; $5c1c: $11 $35 $69
	sbc  $ff                                         ; $5c1f: $de $ff
	rst  $38                                         ; $5c21: $ff
	rst  $38                                         ; $5c22: $ff
	rst  $38                                         ; $5c23: $ff
	rst  $38                                         ; $5c24: $ff
	db   $ed                                         ; $5c25: $ed
	cp   c                                           ; $5c26: $b9
	ld   [hl], l                                     ; $5c27: $75
	ld   b, e                                        ; $5c28: $43
	ld   hl, $1111                                   ; $5c29: $21 $11 $11
	ld   de, $1111                                   ; $5c2c: $11 $11 $11
	ld   [de], a                                     ; $5c2f: $12
	ld   b, [hl]                                     ; $5c30: $46
	adc  d                                           ; $5c31: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c32: $cf
	rst  $38                                         ; $5c33: $ff
	rst  $38                                         ; $5c34: $ff
	rst  $38                                         ; $5c35: $ff
	rst  $38                                         ; $5c36: $ff
	cp   $db                                         ; $5c37: $fe $db
	sbc  b                                           ; $5c39: $98
	ld   [hl], a                                     ; $5c3a: $77
	ld   h, l                                        ; $5c3b: $65
	ld   b, h                                        ; $5c3c: $44
	ld   [hl-], a                                    ; $5c3d: $32
	ld   de, $1111                                   ; $5c3e: $11 $11 $11
	ld   de, $3411                                   ; $5c41: $11 $11 $34
	ld   l, c                                        ; $5c44: $69
	cp   h                                           ; $5c45: $bc
	rst  $38                                         ; $5c46: $ff
	rst  $38                                         ; $5c47: $ff
	rst  $38                                         ; $5c48: $ff
	rst  $38                                         ; $5c49: $ff
	cp   $dc                                         ; $5c4a: $fe $dc
	cp   d                                           ; $5c4c: $ba
	xor  b                                           ; $5c4d: $a8
	add  a                                           ; $5c4e: $87
	ld   h, [hl]                                     ; $5c4f: $66
	ld   d, h                                        ; $5c50: $54
	ld   [hl-], a                                    ; $5c51: $32
	ld   de, $1111                                   ; $5c52: $11 $11 $11
	ld   de, $4512                                   ; $5c55: $11 $12 $45
	ld   a, d                                        ; $5c58: $7a
	call $ffef                                       ; $5c59: $cd $ef $ff
	rst  $38                                         ; $5c5c: $ff
	rst  $38                                         ; $5c5d: $ff
	rst  $38                                         ; $5c5e: $ff
	xor  $cb                                         ; $5c5f: $ee $cb
	cp   d                                           ; $5c61: $ba
	sbc  b                                           ; $5c62: $98
	ld   [hl], l                                     ; $5c63: $75
	ld   b, e                                        ; $5c64: $43
	ld   de, $1111                                   ; $5c65: $11 $11 $11
	ld   de, $1211                                   ; $5c68: $11 $11 $12
	ld   b, [hl]                                     ; $5c6b: $46
	adc  c                                           ; $5c6c: $89
	cp   [hl]                                        ; $5c6d: $be
	rst  $28                                         ; $5c6e: $ef
	rst  $38                                         ; $5c6f: $ff
	rst  $38                                         ; $5c70: $ff
	rst  $38                                         ; $5c71: $ff
	rst  $38                                         ; $5c72: $ff
	cp   $dc                                         ; $5c73: $fe $dc
	cp   c                                           ; $5c75: $b9
	sub  a                                           ; $5c76: $97
	ld   h, h                                        ; $5c77: $64
	ld   [hl-], a                                    ; $5c78: $32
	ld   de, $1111                                   ; $5c79: $11 $11 $11
	ld   de, $1311                                   ; $5c7c: $11 $11 $13
	ld   b, [hl]                                     ; $5c7f: $46
	adc  d                                           ; $5c80: $8a
	sbc  $ff                                         ; $5c81: $de $ff
	rst  $38                                         ; $5c83: $ff
	rst  $38                                         ; $5c84: $ff
	rst  $38                                         ; $5c85: $ff
	rst  $38                                         ; $5c86: $ff
	cp   $dc                                         ; $5c87: $fe $dc
	cp   d                                           ; $5c89: $ba
	add  [hl]                                        ; $5c8a: $86
	ld   d, h                                        ; $5c8b: $54
	ld   hl, $1111                                   ; $5c8c: $21 $11 $11
	ld   de, $1111                                   ; $5c8f: $11 $11 $11
	inc  de                                          ; $5c92: $13
	ld   b, [hl]                                     ; $5c93: $46
	sbc  d                                           ; $5c94: $9a
	rst  JumpTable                                         ; $5c95: $df
	rst  $38                                         ; $5c96: $ff
	rst  $38                                         ; $5c97: $ff
	rst  $38                                         ; $5c98: $ff
	rst  $38                                         ; $5c99: $ff
	rst  $38                                         ; $5c9a: $ff
	rst  $38                                         ; $5c9b: $ff
	db   $ec                                         ; $5c9c: $ec
	cp   c                                           ; $5c9d: $b9
	add  [hl]                                        ; $5c9e: $86
	ld   d, h                                        ; $5c9f: $54
	ld   hl, $1111                                   ; $5ca0: $21 $11 $11
	ld   de, $1111                                   ; $5ca3: $11 $11 $11
	inc  de                                          ; $5ca6: $13
	ld   b, [hl]                                     ; $5ca7: $46
	adc  d                                           ; $5ca8: $8a
	adc  $ff                                         ; $5ca9: $ce $ff
	rst  $38                                         ; $5cab: $ff
	rst  $38                                         ; $5cac: $ff
	rst  $38                                         ; $5cad: $ff
	rst  $38                                         ; $5cae: $ff
	cp   $dd                                         ; $5caf: $fe $dd
	cp   d                                           ; $5cb1: $ba
	add  [hl]                                        ; $5cb2: $86
	ld   d, h                                        ; $5cb3: $54
	ld   hl, $1111                                   ; $5cb4: $21 $11 $11
	ld   de, $1111                                   ; $5cb7: $11 $11 $11
	ld   [de], a                                     ; $5cba: $12
	ld   b, [hl]                                     ; $5cbb: $46
	adc  d                                           ; $5cbc: $8a
	adc  $ff                                         ; $5cbd: $ce $ff
	rst  $38                                         ; $5cbf: $ff
	rst  $38                                         ; $5cc0: $ff
	rst  $38                                         ; $5cc1: $ff
	rst  $38                                         ; $5cc2: $ff
	rst  $38                                         ; $5cc3: $ff
	db   $ec                                         ; $5cc4: $ec
	jp   z, Jump_0be_5487                            ; $5cc5: $ca $87 $54

	ld   sp, $1111                                   ; $5cc8: $31 $11 $11
	ld   de, $1111                                   ; $5ccb: $11 $11 $11
	ld   [de], a                                     ; $5cce: $12
	dec  [hl]                                        ; $5ccf: $35
	ld   a, d                                        ; $5cd0: $7a
	cp   l                                           ; $5cd1: $bd
	rst  $38                                         ; $5cd2: $ff
	rst  $38                                         ; $5cd3: $ff
	rst  $38                                         ; $5cd4: $ff
	rst  $38                                         ; $5cd5: $ff
	rst  $38                                         ; $5cd6: $ff
	rst  $38                                         ; $5cd7: $ff
	db   $fd                                         ; $5cd8: $fd
	res  2, a                                        ; $5cd9: $cb $97
	ld   h, l                                        ; $5cdb: $65
	ld   [hl-], a                                    ; $5cdc: $32
	ld   de, $1111                                   ; $5cdd: $11 $11 $11
	ld   de, $1111                                   ; $5ce0: $11 $11 $11
	inc  [hl]                                        ; $5ce3: $34
	ld   l, b                                        ; $5ce4: $68
	cp   h                                           ; $5ce5: $bc
	rst  $28                                         ; $5ce6: $ef
	rst  $38                                         ; $5ce7: $ff
	rst  $38                                         ; $5ce8: $ff
	rst  $38                                         ; $5ce9: $ff
	rst  $38                                         ; $5cea: $ff
	rst  $38                                         ; $5ceb: $ff
	db   $fd                                         ; $5cec: $fd
	db   $db                                         ; $5ced: $db
	sbc  b                                           ; $5cee: $98
	ld   h, l                                        ; $5cef: $65
	ld   b, d                                        ; $5cf0: $42
	ld   de, $1111                                   ; $5cf1: $11 $11 $11
	ld   de, $1111                                   ; $5cf4: $11 $11 $11
	inc  de                                          ; $5cf7: $13
	ld   d, a                                        ; $5cf8: $57
	sbc  e                                           ; $5cf9: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cfa: $cf
	rst  $38                                         ; $5cfb: $ff
	rst  $38                                         ; $5cfc: $ff
	rst  $38                                         ; $5cfd: $ff
	rst  $38                                         ; $5cfe: $ff
	rst  $38                                         ; $5cff: $ff
	rst  $38                                         ; $5d00: $ff
	db   $ec                                         ; $5d01: $ec
	xor  c                                           ; $5d02: $a9
	add  [hl]                                        ; $5d03: $86
	ld   d, e                                        ; $5d04: $53
	ld   hl, $1111                                   ; $5d05: $21 $11 $11
	ld   de, $1111                                   ; $5d08: $11 $11 $11
	ld   [de], a                                     ; $5d0b: $12
	dec  [hl]                                        ; $5d0c: $35
	ld   a, c                                        ; $5d0d: $79
	cp   h                                           ; $5d0e: $bc
	rst  $28                                         ; $5d0f: $ef
	rst  $38                                         ; $5d10: $ff
	rst  $38                                         ; $5d11: $ff
	rst  $38                                         ; $5d12: $ff
	rst  $38                                         ; $5d13: $ff
	rst  $38                                         ; $5d14: $ff
	cp   $ca                                         ; $5d15: $fe $ca
	sub  a                                           ; $5d17: $97
	ld   h, l                                        ; $5d18: $65
	ld   b, d                                        ; $5d19: $42
	ld   de, $1111                                   ; $5d1a: $11 $11 $11
	ld   de, $1111                                   ; $5d1d: $11 $11 $11
	inc  hl                                          ; $5d20: $23
	ld   d, a                                        ; $5d21: $57
	sbc  e                                           ; $5d22: $9b
	adc  $ff                                         ; $5d23: $ce $ff
	rst  $38                                         ; $5d25: $ff
	rst  $38                                         ; $5d26: $ff
	rst  $38                                         ; $5d27: $ff
	rst  $38                                         ; $5d28: $ff
	rst  $38                                         ; $5d29: $ff
	db   $ec                                         ; $5d2a: $ec
	xor  c                                           ; $5d2b: $a9
	halt                                             ; $5d2c: $76
	ld   d, h                                        ; $5d2d: $54
	ld   hl, $1111                                   ; $5d2e: $21 $11 $11
	ld   de, $1111                                   ; $5d31: $11 $11 $11
	ld   [de], a                                     ; $5d34: $12
	dec  [hl]                                        ; $5d35: $35
	ld   a, c                                        ; $5d36: $79
	cp   l                                           ; $5d37: $bd
	rst  $28                                         ; $5d38: $ef
	rst  $38                                         ; $5d39: $ff
	rst  $38                                         ; $5d3a: $ff
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	rst  $38                                         ; $5d3d: $ff
	cp   $ca                                         ; $5d3e: $fe $ca
	sub  a                                           ; $5d40: $97
	ld   h, l                                        ; $5d41: $65
	ld   b, d                                        ; $5d42: $42
	ld   de, $1111                                   ; $5d43: $11 $11 $11
	ld   de, $1111                                   ; $5d46: $11 $11 $11
	inc  h                                           ; $5d49: $24
	ld   d, a                                        ; $5d4a: $57
	sbc  e                                           ; $5d4b: $9b
	rst  JumpTable                                         ; $5d4c: $df
	rst  $38                                         ; $5d4d: $ff
	rst  $38                                         ; $5d4e: $ff
	rst  $38                                         ; $5d4f: $ff
	rst  $38                                         ; $5d50: $ff
	rst  $38                                         ; $5d51: $ff
	cp   $cb                                         ; $5d52: $fe $cb
	sub  [hl]                                        ; $5d54: $96
	ld   d, h                                        ; $5d55: $54
	ld   sp, $1111                                   ; $5d56: $31 $11 $11
	ld   de, $1111                                   ; $5d59: $11 $11 $11
	inc  hl                                          ; $5d5c: $23
	ld   d, a                                        ; $5d5d: $57
	sbc  e                                           ; $5d5e: $9b
	call $ffff                                       ; $5d5f: $cd $ff $ff
	rst  $38                                         ; $5d62: $ff
	rst  $38                                         ; $5d63: $ff
	cp   $dc                                         ; $5d64: $fe $dc
	res  5, c                                        ; $5d66: $cb $a9
	add  [hl]                                        ; $5d68: $86
	ld   b, e                                        ; $5d69: $43
	ld   [hl-], a                                    ; $5d6a: $32
	ld   de, $1111                                   ; $5d6b: $11 $11 $11
	ld   de, $4612                                   ; $5d6e: $11 $12 $46
	sbc  e                                           ; $5d71: $9b
	call $ffef                                       ; $5d72: $cd $ef $ff
	rst  $38                                         ; $5d75: $ff
	rst  $38                                         ; $5d76: $ff
	rst  $28                                         ; $5d77: $ef
	db   $dd                                         ; $5d78: $dd
	cp   d                                           ; $5d79: $ba
	adc  b                                           ; $5d7a: $88
	add  a                                           ; $5d7b: $87
	ld   d, e                                        ; $5d7c: $53
	ld   de, $1111                                   ; $5d7d: $11 $11 $11
	ld   de, $3412                                   ; $5d80: $11 $12 $34
	ld   d, [hl]                                     ; $5d83: $56
	sbc  e                                           ; $5d84: $9b
	call z, $efcd                                    ; $5d85: $cc $cd $ef
	rst  $38                                         ; $5d88: $ff
	rst  $38                                         ; $5d89: $ff
	cp   $ec                                         ; $5d8a: $fe $ec
	jp   z, $97a9                                    ; $5d8c: $ca $a9 $97

	ld   d, e                                        ; $5d8f: $53
	ld   bc, $1111                                   ; $5d90: $01 $11 $11
	ld   de, $5624                                   ; $5d93: $11 $24 $56
	ld   e, c                                        ; $5d96: $59
	call $bbdb                                       ; $5d97: $cd $db $bb
	rst  $28                                         ; $5d9a: $ef
	db   $ed                                         ; $5d9b: $ed
	db   $dd                                         ; $5d9c: $dd
	rst  $28                                         ; $5d9d: $ef
	db   $ec                                         ; $5d9e: $ec
	res  3, b                                        ; $5d9f: $cb $98
	halt                                             ; $5da1: $76
	ld   d, e                                        ; $5da2: $53
	ld   de, $1111                                   ; $5da3: $11 $11 $11
	ld   de, $8867                                   ; $5da6: $11 $67 $88
	adc  e                                           ; $5da9: $8b
	call z, $bbba                                    ; $5daa: $cc $ba $bb
	xor  $ed                                         ; $5dad: $ee $ed
	sbc  $fe                                         ; $5daf: $de $fe
	db   $db                                         ; $5db1: $db
	cp   d                                           ; $5db2: $ba
	xor  c                                           ; $5db3: $a9
	ld   h, l                                        ; $5db4: $65
	ld   b, c                                        ; $5db5: $41
	ld   de, $1111                                   ; $5db6: $11 $11 $11
	rla                                              ; $5db9: $17
	sub  a                                           ; $5dba: $97
	adc  b                                           ; $5dbb: $88
	xor  [hl]                                        ; $5dbc: $ae
	jp   c, $ceab                                    ; $5dbd: $da $ab $ce

	db   $ec                                         ; $5dc0: $ec
	xor  $ef                                         ; $5dc1: $ee $ef
	db   $db                                         ; $5dc3: $db
	call Call_0be_66d9                               ; $5dc4: $cd $d9 $66
	ld   h, h                                        ; $5dc7: $64
	ld   de, $1111                                   ; $5dc8: $11 $11 $11
	ld   de, $a86c                                   ; $5dcb: $11 $6c $a8
	sbc  e                                           ; $5dce: $9b
	rst  $28                                         ; $5dcf: $ef
	or   [hl]                                        ; $5dd0: $b6
	sbc  h                                           ; $5dd1: $9c
	rst  JumpTable                                         ; $5dd2: $df
	sbc  $ff                                         ; $5dd3: $de $ff
	call c, $dcbc                                    ; $5dd5: $dc $bc $dc
	add  [hl]                                        ; $5dd8: $86
	ld   d, h                                        ; $5dd9: $54
	ld   b, c                                        ; $5dda: $41
	ld   de, $1122                                   ; $5ddb: $11 $22 $11
	rla                                              ; $5dde: $17
	add  sp, $78                                     ; $5ddf: $e8 $78
	xor  [hl]                                        ; $5de1: $ae
	db   $eb                                         ; $5de2: $eb
	adc  d                                           ; $5de3: $8a
	set  1, h                                        ; $5de4: $cb $cc
	rst  $28                                         ; $5de6: $ef
	rst  $38                                         ; $5de7: $ff
	cp   $cb                                         ; $5de8: $fe $cb
	add  a                                           ; $5dea: $87
	ld   h, l                                        ; $5deb: $65
	ld   d, e                                        ; $5dec: $53
	ld   de, $1112                                   ; $5ded: $11 $12 $11
	ld   de, $799b                                   ; $5df0: $11 $9b $79
	adc  c                                           ; $5df3: $89
	db   $ec                                         ; $5df4: $ec
	sbc  c                                           ; $5df5: $99
	sbc  e                                           ; $5df6: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5df7: $cf
	xor  $ff                                         ; $5df8: $ee $ff
	db   $fd                                         ; $5dfa: $fd
	cp   e                                           ; $5dfb: $bb
	jp   c, Jump_0be_5574                            ; $5dfc: $da $74 $55

	ld   sp, $2111                                   ; $5dff: $31 $11 $21
	ld   de, $a74c                                   ; $5e02: $11 $4c $a7
	sub  a                                           ; $5e05: $97
	rst  JumpTable                                         ; $5e06: $df
	sbc  b                                           ; $5e07: $98
	cp   e                                           ; $5e08: $bb
	cp   h                                           ; $5e09: $bc
	cp   h                                           ; $5e0a: $bc
	rst  $38                                         ; $5e0b: $ff
	db   $ed                                         ; $5e0c: $ed
	xor  $ca                                         ; $5e0d: $ee $ca
	ld   h, l                                        ; $5e0f: $65
	ld   h, [hl]                                     ; $5e10: $66
	ld   de, $2111                                   ; $5e11: $11 $11 $21
	ld   de, wMainConvoReturnState                                   ; $5e14: $11 $29 $cb
	xor  b                                           ; $5e17: $a8
	sbc  l                                           ; $5e18: $9d
	cp   b                                           ; $5e19: $b8
	sbc  d                                           ; $5e1a: $9a
	adc  d                                           ; $5e1b: $8a
	xor  $ff                                         ; $5e1c: $ee $ff
	rst  $28                                         ; $5e1e: $ef
	call c, $97a9                                    ; $5e1f: $dc $a9 $97
	ld   d, e                                        ; $5e22: $53
	ld   de, $1111                                   ; $5e23: $11 $11 $11
	ld   de, wNapOrTrainReturnState                                   ; $5e26: $11 $4c $ca
	add  a                                           ; $5e29: $87
	xor  a                                           ; $5e2a: $af
	jp   z, $9c77                                    ; $5e2b: $ca $77 $9c

	db   $ed                                         ; $5e2e: $ed
	rst  $38                                         ; $5e2f: $ff
	cp   $aa                                         ; $5e30: $fe $aa
	bit  6, h                                        ; $5e32: $cb $74
	inc  [hl]                                        ; $5e34: $34
	ld   sp, $3111                                   ; $5e35: $31 $11 $31
	ld   de, $a87d                                   ; $5e38: $11 $7d $a8
	cp   a                                           ; $5e3b: $bf
	rst  $30                                         ; $5e3c: $f7
	ld   d, l                                        ; $5e3d: $55
	ld   a, d                                        ; $5e3e: $7a
	xor  l                                           ; $5e3f: $ad
	rst  $38                                         ; $5e40: $ff
	db   $fc                                         ; $5e41: $fc
	jp   z, $96ca                                    ; $5e42: $ca $ca $96

	add  a                                           ; $5e45: $87
	ld   hl, $1111                                   ; $5e46: $21 $11 $11
	ld   [de], a                                     ; $5e49: $12
	ld   b, a                                        ; $5e4a: $47
	jp   z, $997a                                    ; $5e4b: $ca $7a $99

	jp   z, $988a                                    ; $5e4e: $ca $8a $98

	adc  $ff                                         ; $5e51: $ce $ff
	call c, $97fe                                    ; $5e53: $dc $fe $97
	sub  h                                           ; $5e56: $94
	ld   [hl+], a                                    ; $5e57: $22
	ld   de, $2211                                   ; $5e58: $11 $11 $22
	ld   sp, $bb6a                                   ; $5e5b: $31 $6a $bb
	xor  d                                           ; $5e5e: $aa
	sbc  e                                           ; $5e5f: $9b
	push bc                                          ; $5e60: $c5
	ld   l, b                                        ; $5e61: $68
	adc  $de                                         ; $5e62: $ce $de
	rst  $38                                         ; $5e64: $ff
	rst  $10                                         ; $5e65: $d7
	ld   l, b                                        ; $5e66: $68
	xor  d                                           ; $5e67: $aa
	ld   d, c                                        ; $5e68: $51
	ld   [hl-], a                                    ; $5e69: $32
	ld   de, $4211                                   ; $5e6a: $11 $11 $42
	ld   h, $ad                                      ; $5e6d: $26 $ad
	cp   c                                           ; $5e6f: $b9
	ld   e, b                                        ; $5e70: $58
	ret  z                                           ; $5e71: $c8

	sbc  c                                           ; $5e72: $99
	xor  l                                           ; $5e73: $ad
	db   $eb                                         ; $5e74: $eb
	rst  JumpTable                                         ; $5e75: $df
	db   $fc                                         ; $5e76: $fc
	xor  e                                           ; $5e77: $ab
	xor  b                                           ; $5e78: $a8
	ld   b, c                                        ; $5e79: $41
	inc  d                                           ; $5e7a: $14
	ld   b, d                                        ; $5e7b: $42
	ld   de, $1534                                   ; $5e7c: $11 $34 $15
	db   $eb                                         ; $5e7f: $eb
	adc  h                                           ; $5e80: $8c
	adc  c                                           ; $5e81: $89
	cp   b                                           ; $5e82: $b8
	dec  sp                                          ; $5e83: $3b
	ei                                               ; $5e84: $fb
	db   $fc                                         ; $5e85: $fc
	rst  JumpTable                                         ; $5e86: $df
	ret                                              ; $5e87: $c9


	call z, Call_0be_5476                            ; $5e88: $cc $76 $54
	ld   sp, $2123                                   ; $5e8b: $31 $23 $21
	dec  d                                           ; $5e8e: $15
	add  [hl]                                        ; $5e8f: $86
	sbc  d                                           ; $5e90: $9a
	ret                                              ; $5e91: $c9


	ld   b, [hl]                                     ; $5e92: $46
	db   $dd                                         ; $5e93: $dd
	ld   [hl], l                                     ; $5e94: $75
	xor  a                                           ; $5e95: $af
	db   $eb                                         ; $5e96: $eb
	rst  $38                                         ; $5e97: $ff
	cp   $67                                         ; $5e98: $fe $67
	xor  b                                           ; $5e9a: $a8
	ld   hl, $8324                                   ; $5e9b: $21 $24 $83
	inc  hl                                          ; $5e9e: $23
	dec  h                                           ; $5e9f: $25
	ld   l, d                                        ; $5ea0: $6a
	sbc  b                                           ; $5ea1: $98
	xor  d                                           ; $5ea2: $aa
	ld   h, h                                        ; $5ea3: $64
	call $de9a                                       ; $5ea4: $cd $9a $de
	db   $fd                                         ; $5ea7: $fd
	sbc  e                                           ; $5ea8: $9b
	db   $db                                         ; $5ea9: $db
	ld   [hl], a                                     ; $5eaa: $77
	sub  [hl]                                        ; $5eab: $96
	ld   b, e                                        ; $5eac: $43
	inc  d                                           ; $5ead: $14
	ld   b, e                                        ; $5eae: $43
	ld   b, [hl]                                     ; $5eaf: $46
	and  a                                           ; $5eb0: $a7
	ld   e, c                                        ; $5eb1: $59
	sbc  c                                           ; $5eb2: $99
	add  [hl]                                        ; $5eb3: $86
	xor  c                                           ; $5eb4: $a9
	ld   l, e                                        ; $5eb5: $6b
	jp   hl                                          ; $5eb6: $e9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eb7: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eb8: $cf
	and  l                                           ; $5eb9: $a5
	xor  e                                           ; $5eba: $ab
	add  e                                           ; $5ebb: $83
	ld   d, $75                                      ; $5ebc: $16 $75
	inc  h                                           ; $5ebe: $24
	add  l                                           ; $5ebf: $85
	ld   sp, $74be                                   ; $5ec0: $31 $be $74
	sbc  [hl]                                        ; $5ec3: $9e
	push bc                                          ; $5ec4: $c5
	ld   c, b                                        ; $5ec5: $48
	call c, $ff79                                    ; $5ec6: $dc $79 $ff
	push bc                                          ; $5ec9: $c5
	ld   a, d                                        ; $5eca: $7a
	and  h                                           ; $5ecb: $a4
	dec  d                                           ; $5ecc: $15
	add  a                                           ; $5ecd: $87
	inc  sp                                          ; $5ece: $33
	adc  d                                           ; $5ecf: $8a
	ld   [hl], d                                     ; $5ed0: $72
	ld   c, b                                        ; $5ed1: $48
	call z, $9d65                                    ; $5ed2: $cc $65 $9d
	and  h                                           ; $5ed5: $a4
	ld   l, [hl]                                     ; $5ed6: $6e
	ei                                               ; $5ed7: $fb
	adc  c                                           ; $5ed8: $89
	db   $dd                                         ; $5ed9: $dd
	ld   b, c                                        ; $5eda: $41
	ld   l, c                                        ; $5edb: $69
	sub  l                                           ; $5edc: $95
	ld   d, $a7                                      ; $5edd: $16 $a7
	ld   h, l                                        ; $5edf: $65
	ld   e, d                                        ; $5ee0: $5a
	and  [hl]                                        ; $5ee1: $a6
	adc  b                                           ; $5ee2: $88
	adc  e                                           ; $5ee3: $8b
	and  h                                           ; $5ee4: $a4
	ld   a, h                                        ; $5ee5: $7c
	cp   c                                           ; $5ee6: $b9
	xor  h                                           ; $5ee7: $ac
	db   $ed                                         ; $5ee8: $ed
	ld   h, a                                        ; $5ee9: $67
	ld   h, [hl]                                     ; $5eea: $66
	ld   h, l                                        ; $5eeb: $65
	ld   [hl], a                                     ; $5eec: $77
	ld   h, h                                        ; $5eed: $64
	add  a                                           ; $5eee: $87
	ld   h, [hl]                                     ; $5eef: $66
	ld   h, a                                        ; $5ef0: $67
	xor  c                                           ; $5ef1: $a9
	ld   l, c                                        ; $5ef2: $69
	sbc  c                                           ; $5ef3: $99
	ld   h, l                                        ; $5ef4: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ef5: $cf
	xor  b                                           ; $5ef6: $a8
	cp   e                                           ; $5ef7: $bb
	xor  c                                           ; $5ef8: $a9
	add  a                                           ; $5ef9: $87
	add  [hl]                                        ; $5efa: $86
	ld   b, a                                        ; $5efb: $47
	add  a                                           ; $5efc: $87
	ld   h, e                                        ; $5efd: $63
	ld   d, a                                        ; $5efe: $57
	adc  c                                           ; $5eff: $89
	ld   d, a                                        ; $5f00: $57
	sub  [hl]                                        ; $5f01: $96
	ld   l, b                                        ; $5f02: $68
	sbc  b                                           ; $5f03: $98
	cp   b                                           ; $5f04: $b8
	ld   a, h                                        ; $5f05: $7c
	db   $db                                         ; $5f06: $db
	and  a                                           ; $5f07: $a7
	ld   e, b                                        ; $5f08: $58
	or   a                                           ; $5f09: $b7
	ld   l, c                                        ; $5f0a: $69
	add  a                                           ; $5f0b: $87
	ld   b, l                                        ; $5f0c: $45
	ld   l, c                                        ; $5f0d: $69
	halt                                             ; $5f0e: $76
	ld   d, l                                        ; $5f0f: $55
	ret  z                                           ; $5f10: $c8

	add  [hl]                                        ; $5f11: $86
	ld   l, c                                        ; $5f12: $69
	sbc  e                                           ; $5f13: $9b
	ld   a, d                                        ; $5f14: $7a
	cp   d                                           ; $5f15: $ba
	sub  [hl]                                        ; $5f16: $96
	adc  h                                           ; $5f17: $8c
	cp   b                                           ; $5f18: $b8
	ld   h, a                                        ; $5f19: $67
	sub  a                                           ; $5f1a: $97
	ld   b, [hl]                                     ; $5f1b: $46
	ld   h, [hl]                                     ; $5f1c: $66
	xor  c                                           ; $5f1d: $a9
	ld   h, [hl]                                     ; $5f1e: $66
	ld   e, b                                        ; $5f1f: $58
	or   e                                           ; $5f20: $b3
	ld   e, h                                        ; $5f21: $5c
	or   h                                           ; $5f22: $b4
	ld   c, b                                        ; $5f23: $48
	cp   a                                           ; $5f24: $bf
	ld   h, l                                        ; $5f25: $65
	ret                                              ; $5f26: $c9


	adc  c                                           ; $5f27: $89
	sub  l                                           ; $5f28: $95
	swap [hl]                                        ; $5f29: $cb $36
	ld   l, d                                        ; $5f2b: $6a
	sub  e                                           ; $5f2c: $93
	ld   e, c                                        ; $5f2d: $59
	xor  b                                           ; $5f2e: $a8
	ld   e, c                                        ; $5f2f: $59
	and  [hl]                                        ; $5f30: $a6
	ld   a, c                                        ; $5f31: $79
	sub  [hl]                                        ; $5f32: $96
	adc  c                                           ; $5f33: $89
	adc  d                                           ; $5f34: $8a
	sbc  c                                           ; $5f35: $99
	halt                                             ; $5f36: $76
	add  a                                           ; $5f37: $87
	sbc  c                                           ; $5f38: $99
	ld   l, b                                        ; $5f39: $68
	xor  b                                           ; $5f3a: $a8
	ld   d, [hl]                                     ; $5f3b: $56
	adc  c                                           ; $5f3c: $89
	add  h                                           ; $5f3d: $84
	ld   l, h                                        ; $5f3e: $6c
	sub  a                                           ; $5f3f: $97
	scf                                              ; $5f40: $37
	cp   b                                           ; $5f41: $b8
	ld   a, b                                        ; $5f42: $78
	reti                                             ; $5f43: $d9


	ld   d, l                                        ; $5f44: $55
	adc  l                                           ; $5f45: $8d
	and  [hl]                                        ; $5f46: $a6
	ld   a, b                                        ; $5f47: $78
	ld   l, c                                        ; $5f48: $69
	ld   a, c                                        ; $5f49: $79
	xor  c                                           ; $5f4a: $a9
	sub  a                                           ; $5f4b: $97
	ld   d, a                                        ; $5f4c: $57
	rst  ToBoot                                         ; $5f4d: $c7
	ld   d, a                                        ; $5f4e: $57
	sbc  e                                           ; $5f4f: $9b
	add  [hl]                                        ; $5f50: $86
	ld   e, b                                        ; $5f51: $58
	and  a                                           ; $5f52: $a7
	sbc  d                                           ; $5f53: $9a
	sbc  c                                           ; $5f54: $99
	ld   d, [hl]                                     ; $5f55: $56
	ld   a, e                                        ; $5f56: $7b
	sub  l                                           ; $5f57: $95
	and  a                                           ; $5f58: $a7
	ld   [hl], l                                     ; $5f59: $75
	ld   a, h                                        ; $5f5a: $7c
	add  l                                           ; $5f5b: $85
	adc  d                                           ; $5f5c: $8a
	cp   c                                           ; $5f5d: $b9
	ld   [hl], a                                     ; $5f5e: $77
	adc  d                                           ; $5f5f: $8a
	adc  b                                           ; $5f60: $88
	ld   a, c                                        ; $5f61: $79
	sub  l                                           ; $5f62: $95
	ld   a, d                                        ; $5f63: $7a
	add  [hl]                                        ; $5f64: $86
	ld   a, b                                        ; $5f65: $78
	adc  c                                           ; $5f66: $89
	ld   h, a                                        ; $5f67: $67
	xor  b                                           ; $5f68: $a8
	halt                                             ; $5f69: $76
	adc  e                                           ; $5f6a: $8b
	ld   a, b                                        ; $5f6b: $78
	sub  a                                           ; $5f6c: $97
	adc  b                                           ; $5f6d: $88
	sbc  b                                           ; $5f6e: $98
	ld   [hl], a                                     ; $5f6f: $77
	sub  a                                           ; $5f70: $97
	ld   l, c                                        ; $5f71: $69
	xor  c                                           ; $5f72: $a9
	ld   h, a                                        ; $5f73: $67
	sbc  c                                           ; $5f74: $99
	add  [hl]                                        ; $5f75: $86
	adc  c                                           ; $5f76: $89
	ld   [hl], a                                     ; $5f77: $77
	adc  d                                           ; $5f78: $8a
	sub  [hl]                                        ; $5f79: $96
	ld   [hl], a                                     ; $5f7a: $77
	sbc  d                                           ; $5f7b: $9a
	ld   a, b                                        ; $5f7c: $78
	sbc  b                                           ; $5f7d: $98
	add  h                                           ; $5f7e: $84
	adc  e                                           ; $5f7f: $8b
	adc  b                                           ; $5f80: $88
	ld   a, c                                        ; $5f81: $79
	xor  b                                           ; $5f82: $a8
	ld   e, b                                        ; $5f83: $58
	or   a                                           ; $5f84: $b7
	ld   a, b                                        ; $5f85: $78
	xor  b                                           ; $5f86: $a8
	ld   e, b                                        ; $5f87: $58
	and  a                                           ; $5f88: $a7
	ld   h, a                                        ; $5f89: $67
	add  a                                           ; $5f8a: $87
	ld   a, b                                        ; $5f8b: $78
	xor  d                                           ; $5f8c: $aa
	ld   l, c                                        ; $5f8d: $69
	add  a                                           ; $5f8e: $87
	sbc  b                                           ; $5f8f: $98
	add  a                                           ; $5f90: $87
	sub  [hl]                                        ; $5f91: $96
	ld   a, c                                        ; $5f92: $79
	adc  c                                           ; $5f93: $89
	ld   h, a                                        ; $5f94: $67
	and  a                                           ; $5f95: $a7
	ld   l, b                                        ; $5f96: $68
	sbc  c                                           ; $5f97: $99
	adc  b                                           ; $5f98: $88
	ld   a, d                                        ; $5f99: $7a
	add  a                                           ; $5f9a: $87
	adc  c                                           ; $5f9b: $89
	sub  [hl]                                        ; $5f9c: $96
	sbc  c                                           ; $5f9d: $99
	ld   [hl], a                                     ; $5f9e: $77
	ld   l, b                                        ; $5f9f: $68
	and  a                                           ; $5fa0: $a7
	ld   a, d                                        ; $5fa1: $7a
	add  a                                           ; $5fa2: $87
	and  [hl]                                        ; $5fa3: $a6
	ld   a, c                                        ; $5fa4: $79
	ld   a, c                                        ; $5fa5: $79
	ld   d, a                                        ; $5fa6: $57
	sbc  c                                           ; $5fa7: $99
	sub  l                                           ; $5fa8: $95
	sbc  e                                           ; $5fa9: $9b
	halt                                             ; $5faa: $76
	adc  b                                           ; $5fab: $88
	sub  a                                           ; $5fac: $97
	ld   a, d                                        ; $5fad: $7a
	sub  [hl]                                        ; $5fae: $96
	ld   l, b                                        ; $5faf: $68
	ld   l, c                                        ; $5fb0: $69
	add  a                                           ; $5fb1: $87
	sbc  d                                           ; $5fb2: $9a
	ld   a, d                                        ; $5fb3: $7a
	or   [hl]                                        ; $5fb4: $b6
	xor  c                                           ; $5fb5: $a9
	sbc  c                                           ; $5fb6: $99
	sub  a                                           ; $5fb7: $97
	sbc  c                                           ; $5fb8: $99
	ld   a, b                                        ; $5fb9: $78
	ld   l, b                                        ; $5fba: $68
	adc  b                                           ; $5fbb: $88
	sbc  b                                           ; $5fbc: $98
	adc  d                                           ; $5fbd: $8a
	ld   a, c                                        ; $5fbe: $79
	cp   c                                           ; $5fbf: $b9
	xor  d                                           ; $5fc0: $aa
	ld   l, b                                        ; $5fc1: $68
	add  $8b                                         ; $5fc2: $c6 $8b
	add  a                                           ; $5fc4: $87
	and  [hl]                                        ; $5fc5: $a6
	xor  d                                           ; $5fc6: $aa
	ld   e, d                                        ; $5fc7: $5a
	ld   a, c                                        ; $5fc8: $79
	ld   a, c                                        ; $5fc9: $79
	adc  b                                           ; $5fca: $88
	sub  a                                           ; $5fcb: $97
	xor  b                                           ; $5fcc: $a8
	add  a                                           ; $5fcd: $87
	sbc  d                                           ; $5fce: $9a
	sbc  b                                           ; $5fcf: $98
	sub  a                                           ; $5fd0: $97
	adc  b                                           ; $5fd1: $88
	ld   a, c                                        ; $5fd2: $79
	adc  c                                           ; $5fd3: $89
	add  a                                           ; $5fd4: $87
	adc  c                                           ; $5fd5: $89
	ld   [hl], a                                     ; $5fd6: $77
	adc  c                                           ; $5fd7: $89
	add  a                                           ; $5fd8: $87
	sbc  b                                           ; $5fd9: $98
	sub  a                                           ; $5fda: $97
	ld   a, d                                        ; $5fdb: $7a
	ld   a, c                                        ; $5fdc: $79
	adc  b                                           ; $5fdd: $88
	adc  b                                           ; $5fde: $88
	ld   [hl], a                                     ; $5fdf: $77
	sub  a                                           ; $5fe0: $97
	adc  b                                           ; $5fe1: $88
	adc  b                                           ; $5fe2: $88
	add  a                                           ; $5fe3: $87
	sbc  b                                           ; $5fe4: $98
	ld   a, c                                        ; $5fe5: $79
	ld   a, b                                        ; $5fe6: $78
	add  [hl]                                        ; $5fe7: $86
	sub  a                                           ; $5fe8: $97
	ld   a, b                                        ; $5fe9: $78
	ld   a, b                                        ; $5fea: $78
	adc  b                                           ; $5feb: $88
	ld   a, b                                        ; $5fec: $78
	sub  a                                           ; $5fed: $97
	sub  [hl]                                        ; $5fee: $96
	adc  b                                           ; $5fef: $88
	add  a                                           ; $5ff0: $87
	sub  a                                           ; $5ff1: $97
	ld   a, d                                        ; $5ff2: $7a
	ld   l, b                                        ; $5ff3: $68
	sub  a                                           ; $5ff4: $97
	adc  b                                           ; $5ff5: $88
	ld   a, b                                        ; $5ff6: $78
	sub  a                                           ; $5ff7: $97
	sbc  c                                           ; $5ff8: $99
	ld   a, b                                        ; $5ff9: $78
	add  [hl]                                        ; $5ffa: $86
	adc  b                                           ; $5ffb: $88
	ld   a, b                                        ; $5ffc: $78
	add  a                                           ; $5ffd: $87
	ld   [hl], a                                     ; $5ffe: $77
	add  a                                           ; $5fff: $87
	sbc  b                                           ; $6000: $98
	ld   a, b                                        ; $6001: $78
	ld   [hl], a                                     ; $6002: $77
	ld   a, b                                        ; $6003: $78
	adc  b                                           ; $6004: $88
	ld   [hl], a                                     ; $6005: $77
	adc  b                                           ; $6006: $88
	ld   [hl], a                                     ; $6007: $77
	adc  b                                           ; $6008: $88
	ld   a, b                                        ; $6009: $78
	ld   a, c                                        ; $600a: $79
	sub  [hl]                                        ; $600b: $96
	sub  a                                           ; $600c: $97
	adc  b                                           ; $600d: $88
	ld   a, c                                        ; $600e: $79
	ld   a, b                                        ; $600f: $78
	ld   l, b                                        ; $6010: $68
	add  a                                           ; $6011: $87
	sub  a                                           ; $6012: $97
	adc  b                                           ; $6013: $88
	ld   [hl], a                                     ; $6014: $77
	adc  b                                           ; $6015: $88
	add  [hl]                                        ; $6016: $86
	add  a                                           ; $6017: $87
	adc  b                                           ; $6018: $88
	ld   a, b                                        ; $6019: $78
	ld   [hl], a                                     ; $601a: $77
	ld   a, b                                        ; $601b: $78
	add  a                                           ; $601c: $87
	sub  a                                           ; $601d: $97
	add  a                                           ; $601e: $87
	sub  a                                           ; $601f: $97
	adc  b                                           ; $6020: $88
	ld   [hl], a                                     ; $6021: $77
	add  a                                           ; $6022: $87
	ld   a, b                                        ; $6023: $78
	ld   [hl], a                                     ; $6024: $77
	adc  b                                           ; $6025: $88
	ld   a, b                                        ; $6026: $78
	ld   [hl], a                                     ; $6027: $77
	sub  a                                           ; $6028: $97
	ld   a, b                                        ; $6029: $78
	ld   [hl], a                                     ; $602a: $77
	add  [hl]                                        ; $602b: $86
	adc  c                                           ; $602c: $89
	ld   l, c                                        ; $602d: $69
	ld   [hl], a                                     ; $602e: $77
	adc  b                                           ; $602f: $88
	ld   a, c                                        ; $6030: $79
	add  a                                           ; $6031: $87
	add  a                                           ; $6032: $87
	add  a                                           ; $6033: $87
	add  [hl]                                        ; $6034: $86
	adc  b                                           ; $6035: $88
	ld   a, b                                        ; $6036: $78
	ld   a, b                                        ; $6037: $78
	ld   [hl], a                                     ; $6038: $77
	sub  a                                           ; $6039: $97
	add  a                                           ; $603a: $87
	adc  b                                           ; $603b: $88
	ld   a, b                                        ; $603c: $78
	add  a                                           ; $603d: $87
	sub  a                                           ; $603e: $97
	ld   a, c                                        ; $603f: $79
	ld   a, b                                        ; $6040: $78
	ld   a, b                                        ; $6041: $78
	adc  b                                           ; $6042: $88
	add  a                                           ; $6043: $87
	sub  a                                           ; $6044: $97
	add  a                                           ; $6045: $87
	adc  c                                           ; $6046: $89
	ld   [hl], a                                     ; $6047: $77
	add  a                                           ; $6048: $87
	adc  c                                           ; $6049: $89
	adc  b                                           ; $604a: $88
	adc  b                                           ; $604b: $88
	ld   a, c                                        ; $604c: $79
	ld   a, b                                        ; $604d: $78
	add  a                                           ; $604e: $87
	add  a                                           ; $604f: $87
	adc  b                                           ; $6050: $88
	ld   a, c                                        ; $6051: $79
	adc  b                                           ; $6052: $88
	adc  b                                           ; $6053: $88
	add  a                                           ; $6054: $87
	add  a                                           ; $6055: $87
	adc  b                                           ; $6056: $88
	adc  b                                           ; $6057: $88
	ld   a, b                                        ; $6058: $78
	add  a                                           ; $6059: $87
	adc  b                                           ; $605a: $88
	ld   a, c                                        ; $605b: $79
	ld   a, b                                        ; $605c: $78
	add  a                                           ; $605d: $87
	adc  b                                           ; $605e: $88
	sub  a                                           ; $605f: $97
	sbc  b                                           ; $6060: $98
	ld   a, c                                        ; $6061: $79
	ld   a, b                                        ; $6062: $78
	sbc  b                                           ; $6063: $98
	sbc  b                                           ; $6064: $98
	ld   a, b                                        ; $6065: $78
	sub  a                                           ; $6066: $97
	adc  b                                           ; $6067: $88
	ld   a, b                                        ; $6068: $78
	adc  c                                           ; $6069: $89
	adc  c                                           ; $606a: $89
	ld   a, c                                        ; $606b: $79
	adc  b                                           ; $606c: $88
	ld   a, b                                        ; $606d: $78
	add  a                                           ; $606e: $87
	sub  a                                           ; $606f: $97
	adc  b                                           ; $6070: $88
	adc  b                                           ; $6071: $88
	ld   a, c                                        ; $6072: $79
	ld   a, c                                        ; $6073: $79
	adc  b                                           ; $6074: $88
	adc  b                                           ; $6075: $88
	ld   a, c                                        ; $6076: $79
	add  a                                           ; $6077: $87
	sbc  b                                           ; $6078: $98
	add  a                                           ; $6079: $87
	adc  c                                           ; $607a: $89
	adc  b                                           ; $607b: $88
	ld   a, c                                        ; $607c: $79
	add  a                                           ; $607d: $87
	sub  a                                           ; $607e: $97
	adc  b                                           ; $607f: $88
	ld   a, c                                        ; $6080: $79
	sub  a                                           ; $6081: $97
	add  a                                           ; $6082: $87
	adc  b                                           ; $6083: $88
	add  a                                           ; $6084: $87
	sub  a                                           ; $6085: $97
	ld   a, c                                        ; $6086: $79
	ld   a, c                                        ; $6087: $79
	adc  b                                           ; $6088: $88
	sbc  b                                           ; $6089: $98
	adc  c                                           ; $608a: $89
	ld   a, c                                        ; $608b: $79
	sub  [hl]                                        ; $608c: $96
	sbc  b                                           ; $608d: $98
	ld   a, c                                        ; $608e: $79
	ld   a, c                                        ; $608f: $79
	sbc  b                                           ; $6090: $98
	adc  c                                           ; $6091: $89
	adc  c                                           ; $6092: $89
	sub  [hl]                                        ; $6093: $96
	xor  b                                           ; $6094: $a8
	sbc  c                                           ; $6095: $99
	adc  c                                           ; $6096: $89
	adc  b                                           ; $6097: $88
	ld   a, d                                        ; $6098: $7a
	ld   l, c                                        ; $6099: $69
	sub  a                                           ; $609a: $97
	sub  a                                           ; $609b: $97
	adc  c                                           ; $609c: $89
	add  a                                           ; $609d: $87
	sbc  b                                           ; $609e: $98
	sbc  b                                           ; $609f: $98
	adc  b                                           ; $60a0: $88
	sbc  c                                           ; $60a1: $99
	ld   a, b                                        ; $60a2: $78
	adc  b                                           ; $60a3: $88
	add  a                                           ; $60a4: $87
	adc  c                                           ; $60a5: $89
	adc  c                                           ; $60a6: $89
	ld   a, d                                        ; $60a7: $7a
	ld   a, c                                        ; $60a8: $79
	sbc  b                                           ; $60a9: $98
	adc  b                                           ; $60aa: $88
	sbc  b                                           ; $60ab: $98
	adc  b                                           ; $60ac: $88
	ld   a, b                                        ; $60ad: $78
	sbc  b                                           ; $60ae: $98
	sbc  c                                           ; $60af: $99
	sbc  b                                           ; $60b0: $98
	adc  b                                           ; $60b1: $88
	sbc  b                                           ; $60b2: $98
	add  a                                           ; $60b3: $87
	sbc  c                                           ; $60b4: $99
	adc  b                                           ; $60b5: $88
	ld   a, b                                        ; $60b6: $78
	sbc  b                                           ; $60b7: $98
	adc  c                                           ; $60b8: $89
	adc  c                                           ; $60b9: $89
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	sub  a                                           ; $60bc: $97
	xor  b                                           ; $60bd: $a8
	adc  b                                           ; $60be: $88
	ld   a, c                                        ; $60bf: $79
	and  a                                           ; $60c0: $a7
	sbc  c                                           ; $60c1: $99
	ld   a, c                                        ; $60c2: $79
	ld   a, c                                        ; $60c3: $79
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	sub  a                                           ; $60c6: $97
	adc  b                                           ; $60c7: $88
	sbc  c                                           ; $60c8: $99
	ld   a, c                                        ; $60c9: $79
	adc  b                                           ; $60ca: $88
	sbc  b                                           ; $60cb: $98
	adc  c                                           ; $60cc: $89
	ld   a, b                                        ; $60cd: $78
	sub  a                                           ; $60ce: $97
	adc  b                                           ; $60cf: $88
	ld   a, b                                        ; $60d0: $78
	sub  [hl]                                        ; $60d1: $96
	sbc  c                                           ; $60d2: $99
	ld   a, c                                        ; $60d3: $79
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	ld   a, b                                        ; $60d6: $78
	add  a                                           ; $60d7: $87
	add  a                                           ; $60d8: $87
	sub  a                                           ; $60d9: $97
	adc  c                                           ; $60da: $89
	adc  c                                           ; $60db: $89
	ld   a, c                                        ; $60dc: $79
	ld   a, c                                        ; $60dd: $79
	add  a                                           ; $60de: $87
	adc  b                                           ; $60df: $88
	add  a                                           ; $60e0: $87
	adc  b                                           ; $60e1: $88
	adc  c                                           ; $60e2: $89
	add  a                                           ; $60e3: $87
	and  a                                           ; $60e4: $a7
	adc  c                                           ; $60e5: $89
	ld   a, c                                        ; $60e6: $79
	ld   a, c                                        ; $60e7: $79
	adc  b                                           ; $60e8: $88
	sub  a                                           ; $60e9: $97
	adc  b                                           ; $60ea: $88
	ld   a, b                                        ; $60eb: $78
	sub  a                                           ; $60ec: $97
	ld   a, c                                        ; $60ed: $79
	adc  b                                           ; $60ee: $88
	adc  b                                           ; $60ef: $88
	ld   a, c                                        ; $60f0: $79
	ld   a, b                                        ; $60f1: $78
	sbc  b                                           ; $60f2: $98
	sub  a                                           ; $60f3: $97
	sub  a                                           ; $60f4: $97
	sub  a                                           ; $60f5: $97
	adc  c                                           ; $60f6: $89
	adc  c                                           ; $60f7: $89
	ld   a, b                                        ; $60f8: $78
	ld   a, b                                        ; $60f9: $78
	ld   a, b                                        ; $60fa: $78
	ld   a, d                                        ; $60fb: $7a
	add  a                                           ; $60fc: $87
	add  a                                           ; $60fd: $87
	sub  [hl]                                        ; $60fe: $96
	and  [hl]                                        ; $60ff: $a6
	sbc  b                                           ; $6100: $98
	adc  c                                           ; $6101: $89
	ld   a, c                                        ; $6102: $79
	ld   a, d                                        ; $6103: $7a
	ld   e, e                                        ; $6104: $5b
	ld   l, c                                        ; $6105: $69
	ld   [hl], a                                     ; $6106: $77
	sub  [hl]                                        ; $6107: $96
	sub  [hl]                                        ; $6108: $96
	and  l                                           ; $6109: $a5
	and  a                                           ; $610a: $a7
	sbc  b                                           ; $610b: $98
	ld   l, c                                        ; $610c: $69
	ld   l, e                                        ; $610d: $6b
	ld   l, c                                        ; $610e: $69
	add  [hl]                                        ; $610f: $86
	and  [hl]                                        ; $6110: $a6
	adc  c                                           ; $6111: $89
	ld   a, b                                        ; $6112: $78
	add  a                                           ; $6113: $87
	sbc  b                                           ; $6114: $98
	ld   a, c                                        ; $6115: $79
	ld   [hl], a                                     ; $6116: $77
	and  [hl]                                        ; $6117: $a6
	sbc  b                                           ; $6118: $98
	ld   a, b                                        ; $6119: $78
	adc  b                                           ; $611a: $88
	ld   a, c                                        ; $611b: $79
	ld   a, c                                        ; $611c: $79
	ld   l, b                                        ; $611d: $68
	and  [hl]                                        ; $611e: $a6
	and  [hl]                                        ; $611f: $a6
	and  a                                           ; $6120: $a7
	adc  b                                           ; $6121: $88
	adc  b                                           ; $6122: $88
	ld   a, c                                        ; $6123: $79
	ld   l, c                                        ; $6124: $69
	add  a                                           ; $6125: $87
	adc  b                                           ; $6126: $88
	ld   a, c                                        ; $6127: $79
	add  a                                           ; $6128: $87
	sub  a                                           ; $6129: $97
	sub  a                                           ; $612a: $97
	sub  a                                           ; $612b: $97
	sub  a                                           ; $612c: $97
	adc  b                                           ; $612d: $88
	ld   a, c                                        ; $612e: $79
	ld   l, c                                        ; $612f: $69
	add  a                                           ; $6130: $87
	sub  a                                           ; $6131: $97
	adc  c                                           ; $6132: $89
	add  a                                           ; $6133: $87
	adc  b                                           ; $6134: $88
	sbc  c                                           ; $6135: $99
	ld   a, c                                        ; $6136: $79
	ld   a, b                                        ; $6137: $78
	sub  a                                           ; $6138: $97
	and  a                                           ; $6139: $a7
	sbc  b                                           ; $613a: $98
	adc  c                                           ; $613b: $89
	ld   a, e                                        ; $613c: $7b
	ld   l, c                                        ; $613d: $69
	add  a                                           ; $613e: $87
	sub  a                                           ; $613f: $97
	adc  b                                           ; $6140: $88
	sbc  b                                           ; $6141: $98
	add  a                                           ; $6142: $87
	sub  a                                           ; $6143: $97
	adc  b                                           ; $6144: $88
	adc  b                                           ; $6145: $88
	adc  b                                           ; $6146: $88
	ld   a, c                                        ; $6147: $79
	ld   a, c                                        ; $6148: $79
	sub  a                                           ; $6149: $97
	sub  a                                           ; $614a: $97
	sub  a                                           ; $614b: $97
	sub  a                                           ; $614c: $97
	sbc  b                                           ; $614d: $98
	ld   a, b                                        ; $614e: $78
	ld   l, c                                        ; $614f: $69
	ld   a, c                                        ; $6150: $79
	ld   a, b                                        ; $6151: $78
	sub  [hl]                                        ; $6152: $96
	sub  a                                           ; $6153: $97
	sbc  b                                           ; $6154: $98
	ld   a, c                                        ; $6155: $79
	ld   a, c                                        ; $6156: $79
	sub  a                                           ; $6157: $97
	and  a                                           ; $6158: $a7
	adc  d                                           ; $6159: $8a
	ld   l, d                                        ; $615a: $6a
	ld   l, d                                        ; $615b: $6a
	add  a                                           ; $615c: $87
	and  [hl]                                        ; $615d: $a6
	or   [hl]                                        ; $615e: $b6
	sbc  b                                           ; $615f: $98
	ld   a, d                                        ; $6160: $7a
	ld   a, b                                        ; $6161: $78
	adc  b                                           ; $6162: $88
	adc  b                                           ; $6163: $88
	adc  c                                           ; $6164: $89
	adc  b                                           ; $6165: $88
	adc  b                                           ; $6166: $88
	add  a                                           ; $6167: $87
	sub  a                                           ; $6168: $97
	sbc  b                                           ; $6169: $98
	adc  b                                           ; $616a: $88
	adc  b                                           ; $616b: $88
	adc  b                                           ; $616c: $88
	adc  b                                           ; $616d: $88
	adc  c                                           ; $616e: $89
	adc  b                                           ; $616f: $88
	adc  b                                           ; $6170: $88
	ld   [hl], a                                     ; $6171: $77
	sub  a                                           ; $6172: $97
	adc  b                                           ; $6173: $88
	ld   a, d                                        ; $6174: $7a

Jump_0be_6175:
	ld   l, b                                        ; $6175: $68
	add  a                                           ; $6176: $87
	sbc  b                                           ; $6177: $98
	sbc  b                                           ; $6178: $98
	add  a                                           ; $6179: $87
	adc  b                                           ; $617a: $88
	adc  b                                           ; $617b: $88
	adc  b                                           ; $617c: $88
	adc  c                                           ; $617d: $89
	ld   a, b                                        ; $617e: $78
	add  a                                           ; $617f: $87
	sub  a                                           ; $6180: $97
	adc  c                                           ; $6181: $89
	adc  b                                           ; $6182: $88
	sbc  b                                           ; $6183: $98
	sbc  b                                           ; $6184: $98
	ld   a, c                                        ; $6185: $79
	adc  b                                           ; $6186: $88
	adc  b                                           ; $6187: $88
	add  a                                           ; $6188: $87
	sbc  b                                           ; $6189: $98
	ld   a, b                                        ; $618a: $78
	adc  b                                           ; $618b: $88
	adc  b                                           ; $618c: $88
	adc  b                                           ; $618d: $88
	adc  b                                           ; $618e: $88
	adc  c                                           ; $618f: $89
	ld   a, b                                        ; $6190: $78
	add  a                                           ; $6191: $87
	sub  a                                           ; $6192: $97
	sbc  b                                           ; $6193: $98
	adc  b                                           ; $6194: $88
	ld   a, c                                        ; $6195: $79
	ld   a, c                                        ; $6196: $79
	ld   a, b                                        ; $6197: $78
	add  [hl]                                        ; $6198: $86
	sub  a                                           ; $6199: $97
	adc  b                                           ; $619a: $88
	adc  b                                           ; $619b: $88
	ld   a, c                                        ; $619c: $79
	ld   a, b                                        ; $619d: $78
	sbc  b                                           ; $619e: $98
	add  a                                           ; $619f: $87
	add  a                                           ; $61a0: $87
	adc  b                                           ; $61a1: $88
	add  a                                           ; $61a2: $87
	sbc  b                                           ; $61a3: $98
	adc  b                                           ; $61a4: $88
	ld   a, c                                        ; $61a5: $79
	ld   a, c                                        ; $61a6: $79
	ld   a, b                                        ; $61a7: $78
	add  a                                           ; $61a8: $87
	add  a                                           ; $61a9: $87
	add  a                                           ; $61aa: $87
	adc  b                                           ; $61ab: $88
	add  a                                           ; $61ac: $87
	sub  a                                           ; $61ad: $97
	sbc  b                                           ; $61ae: $98
	ld   a, b                                        ; $61af: $78
	ld   a, c                                        ; $61b0: $79
	ld   a, b                                        ; $61b1: $78
	ld   a, b                                        ; $61b2: $78
	add  a                                           ; $61b3: $87
	sub  a                                           ; $61b4: $97
	sub  a                                           ; $61b5: $97
	sub  a                                           ; $61b6: $97
	sub  a                                           ; $61b7: $97
	adc  b                                           ; $61b8: $88
	ld   a, b                                        ; $61b9: $78
	ld   a, b                                        ; $61ba: $78
	ld   a, c                                        ; $61bb: $79
	ld   a, b                                        ; $61bc: $78
	adc  b                                           ; $61bd: $88
	adc  b                                           ; $61be: $88
	add  a                                           ; $61bf: $87
	add  a                                           ; $61c0: $87
	add  a                                           ; $61c1: $87
	adc  b                                           ; $61c2: $88
	ld   a, b                                        ; $61c3: $78
	ld   a, b                                        ; $61c4: $78
	ld   a, b                                        ; $61c5: $78
	adc  b                                           ; $61c6: $88
	ld   [hl], a                                     ; $61c7: $77
	sub  a                                           ; $61c8: $97
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
	ld   a, b                                        ; $61d3: $78
	add  a                                           ; $61d4: $87
	adc  b                                           ; $61d5: $88
	ld   a, c                                        ; $61d6: $79
	ld   a, b                                        ; $61d7: $78
	adc  b                                           ; $61d8: $88
	add  a                                           ; $61d9: $87
	sub  a                                           ; $61da: $97
	sub  a                                           ; $61db: $97
	ld   a, b                                        ; $61dc: $78
	adc  b                                           ; $61dd: $88
	adc  b                                           ; $61de: $88
	adc  b                                           ; $61df: $88
	adc  b                                           ; $61e0: $88
	adc  b                                           ; $61e1: $88
	adc  b                                           ; $61e2: $88
	adc  b                                           ; $61e3: $88
	ld   a, b                                        ; $61e4: $78
	adc  b                                           ; $61e5: $88
	adc  b                                           ; $61e6: $88
	sub  a                                           ; $61e7: $97
	sub  a                                           ; $61e8: $97
	adc  c                                           ; $61e9: $89
	ld   a, b                                        ; $61ea: $78
	ld   a, b                                        ; $61eb: $78
	adc  b                                           ; $61ec: $88
	add  a                                           ; $61ed: $87
	sub  a                                           ; $61ee: $97
	adc  b                                           ; $61ef: $88
	ld   a, b                                        ; $61f0: $78
	adc  b                                           ; $61f1: $88
	adc  b                                           ; $61f2: $88
	ld   a, b                                        ; $61f3: $78
	adc  b                                           ; $61f4: $88
	adc  b                                           ; $61f5: $88
	ld   a, b                                        ; $61f6: $78
	add  a                                           ; $61f7: $87
	adc  b                                           ; $61f8: $88
	adc  b                                           ; $61f9: $88
	adc  b                                           ; $61fa: $88
	adc  b                                           ; $61fb: $88
	adc  b                                           ; $61fc: $88
	ld   a, b                                        ; $61fd: $78
	adc  b                                           ; $61fe: $88
	add  a                                           ; $61ff: $87
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
	ld   a, b                                        ; $621b: $78
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
	adc  c                                           ; $627b: $89
	sbc  c                                           ; $627c: $99
	adc  b                                           ; $627d: $88
	adc  b                                           ; $627e: $88
	adc  b                                           ; $627f: $88
	adc  b                                           ; $6280: $88
	sbc  b                                           ; $6281: $98
	adc  b                                           ; $6282: $88
	sbc  b                                           ; $6283: $98
	adc  b                                           ; $6284: $88
	adc  b                                           ; $6285: $88
	sbc  b                                           ; $6286: $98
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

Jump_0be_6397:
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
	sbc  b                                           ; $63c1: $98
	xor  e                                           ; $63c2: $ab
	or   a                                           ; $63c3: $b7
	ld   [hl], a                                     ; $63c4: $77
	ld   [hl], a                                     ; $63c5: $77
	ld   [hl], a                                     ; $63c6: $77
	ld   [hl], a                                     ; $63c7: $77
	ld   [hl], a                                     ; $63c8: $77
	ld   a, c                                        ; $63c9: $79
	adc  c                                           ; $63ca: $89
	sbc  c                                           ; $63cb: $99
	sbc  b                                           ; $63cc: $98
	sbc  b                                           ; $63cd: $98
	sbc  c                                           ; $63ce: $99
	adc  b                                           ; $63cf: $88
	sbc  h                                           ; $63d0: $9c
	db   $ed                                         ; $63d1: $ed
	or   [hl]                                        ; $63d2: $b6
	ld   d, [hl]                                     ; $63d3: $56
	ld   l, b                                        ; $63d4: $68
	sbc  h                                           ; $63d5: $9c
	db   $fc                                         ; $63d6: $fc
	ld   h, [hl]                                     ; $63d7: $66
	sbc  c                                           ; $63d8: $99
	ld   d, h                                        ; $63d9: $54
	ld   a, e                                        ; $63da: $7b
	and  l                                           ; $63db: $a5
	ld   d, a                                        ; $63dc: $57
	ld   [hl], a                                     ; $63dd: $77
	ld   h, a                                        ; $63de: $67
	adc  e                                           ; $63df: $8b
	sbc  b                                           ; $63e0: $98
	xor  h                                           ; $63e1: $ac
	and  [hl]                                        ; $63e2: $a6
	ld   h, a                                        ; $63e3: $67
	sbc  c                                           ; $63e4: $99
	cp   d                                           ; $63e5: $ba
	ld   h, [hl]                                     ; $63e6: $66
	ld   [hl], l                                     ; $63e7: $75
	ld   b, [hl]                                     ; $63e8: $46
	ld   a, b                                        ; $63e9: $78
	ld   d, l                                        ; $63ea: $55
	ld   h, a                                        ; $63eb: $67
	ld   h, l                                        ; $63ec: $65
	ld   l, b                                        ; $63ed: $68
	sbc  b                                           ; $63ee: $98
	ld   a, b                                        ; $63ef: $78
	adc  b                                           ; $63f0: $88
	halt                                             ; $63f1: $76
	ld   a, b                                        ; $63f2: $78
	halt                                             ; $63f3: $76
	ld   h, [hl]                                     ; $63f4: $66
	ld   h, [hl]                                     ; $63f5: $66
	ld   h, [hl]                                     ; $63f6: $66
	ld   h, a                                        ; $63f7: $67
	ld   a, b                                        ; $63f8: $78
	sbc  b                                           ; $63f9: $98
	sbc  c                                           ; $63fa: $99
	sbc  c                                           ; $63fb: $99
	adc  c                                           ; $63fc: $89
	sbc  c                                           ; $63fd: $99
	halt                                             ; $63fe: $76
	ld   h, a                                        ; $63ff: $67
	ld   h, [hl]                                     ; $6400: $66
	ld   d, a                                        ; $6401: $57
	ld   [hl], a                                     ; $6402: $77
	ld   [hl], a                                     ; $6403: $77
	sbc  c                                           ; $6404: $99
	adc  b                                           ; $6405: $88
	ld   a, c                                        ; $6406: $79
	sub  a                                           ; $6407: $97
	add  a                                           ; $6408: $87
	add  a                                           ; $6409: $87
	ld   h, a                                        ; $640a: $67
	ld   [hl], a                                     ; $640b: $77
	ld   a, b                                        ; $640c: $78
	ld   a, b                                        ; $640d: $78
	add  a                                           ; $640e: $87
	adc  c                                           ; $640f: $89
	sbc  c                                           ; $6410: $99
	sbc  b                                           ; $6411: $98
	adc  b                                           ; $6412: $88
	add  [hl]                                        ; $6413: $86
	sbc  b                                           ; $6414: $98
	ld   [hl], a                                     ; $6415: $77
	sub  a                                           ; $6416: $97
	sbc  c                                           ; $6417: $99
	ld   l, c                                        ; $6418: $69
	and  a                                           ; $6419: $a7
	ld   a, b                                        ; $641a: $78
	ld   a, b                                        ; $641b: $78
	add  [hl]                                        ; $641c: $86
	add  a                                           ; $641d: $87
	ld   a, b                                        ; $641e: $78
	add  a                                           ; $641f: $87
	adc  c                                           ; $6420: $89
	adc  c                                           ; $6421: $89
	adc  b                                           ; $6422: $88
	sbc  c                                           ; $6423: $99
	sbc  c                                           ; $6424: $99
	sbc  c                                           ; $6425: $99
	sbc  b                                           ; $6426: $98
	adc  c                                           ; $6427: $89
	cp   c                                           ; $6428: $b9
	ld   a, c                                        ; $6429: $79
	xor  c                                           ; $642a: $a9
	sub  a                                           ; $642b: $97
	ld   l, e                                        ; $642c: $6b
	sub  a                                           ; $642d: $97
	adc  c                                           ; $642e: $89
	halt                                             ; $642f: $76
	ld   l, b                                        ; $6430: $68
	and  [hl]                                        ; $6431: $a6
	ld   a, c                                        ; $6432: $79
	add  a                                           ; $6433: $87
	add  [hl]                                        ; $6434: $86
	adc  d                                           ; $6435: $8a
	ld   d, [hl]                                     ; $6436: $56
	adc  d                                           ; $6437: $8a
	add  a                                           ; $6438: $87
	adc  e                                           ; $6439: $8b
	sub  a                                           ; $643a: $97
	xor  d                                           ; $643b: $aa
	jp   z, $b8aa                                    ; $643c: $ca $aa $b8

	adc  h                                           ; $643f: $8c
	rst  ToBoot                                         ; $6440: $c7
	adc  c                                           ; $6441: $89
	sbc  b                                           ; $6442: $98
	ld   e, c                                        ; $6443: $59
	sbc  b                                           ; $6444: $98
	ld   d, [hl]                                     ; $6445: $56
	adc  b                                           ; $6446: $88
	add  h                                           ; $6447: $84
	scf                                              ; $6448: $37
	ld   [hl], l                                     ; $6449: $75
	inc  [hl]                                        ; $644a: $34
	ld   [hl], a                                     ; $644b: $77
	inc  h                                           ; $644c: $24
	sbc  b                                           ; $644d: $98
	adc  c                                           ; $644e: $89
	sbc  [hl]                                        ; $644f: $9e
	cp   b                                           ; $6450: $b8
	rst  JumpTable                                         ; $6451: $df
	xor  c                                           ; $6452: $a9
	ld   a, [$9edc]                                  ; $6453: $fa $dc $9e
	add  $7e                                         ; $6456: $c6 $7e
	add  [hl]                                        ; $6458: $86
	sub  [hl]                                        ; $6459: $96
	add  l                                           ; $645a: $85
	inc  de                                          ; $645b: $13
	ld   h, c                                        ; $645c: $61
	ld   de, $1111                                   ; $645d: $11 $11 $11
	ld   d, [hl]                                     ; $6460: $56
	sub  [hl]                                        ; $6461: $96
	xor  a                                           ; $6462: $af
	db   $dd                                         ; $6463: $dd
	db   $fd                                         ; $6464: $fd
	xor  a                                           ; $6465: $af
	xor  $e9                                         ; $6466: $ee $e9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6468: $cf
	and  a                                           ; $6469: $a7
	xor  h                                           ; $646a: $ac
	db   $db                                         ; $646b: $db
	ld   l, c                                        ; $646c: $69
	cp   c                                           ; $646d: $b9
	ld   sp, $1123                                   ; $646e: $31 $23 $11
	ld   de, $2311                                   ; $6471: $11 $11 $23
	jr   c, @-$20                                    ; $6474: $38 $de

	cp   [hl]                                        ; $6476: $be
	db   $fc                                         ; $6477: $fc
	sbc  d                                           ; $6478: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6479: $cf
	rst  $30                                         ; $647a: $f7
	cp   a                                           ; $647b: $bf
	ld   [$ebad], a                                  ; $647c: $ea $ad $eb
	ld   a, h                                        ; $647f: $7c
	reti                                             ; $6480: $d9


	ld   [hl], e                                     ; $6481: $73
	ld   de, $1111                                   ; $6482: $11 $11 $11
	ld   de, $2213                                   ; $6485: $11 $13 $22
	sbc  l                                           ; $6488: $9d
	xor  e                                           ; $6489: $ab
	db   $fc                                         ; $648a: $fc
	db   $eb                                         ; $648b: $eb
	ld   a, [hl]                                     ; $648c: $7e
	db   $eb                                         ; $648d: $eb
	xor  l                                           ; $648e: $ad
	rst  $38                                         ; $648f: $ff
	cp   e                                           ; $6490: $bb
	cp   $a9                                         ; $6491: $fe $a9
	cp   h                                           ; $6493: $bc
	and  h                                           ; $6494: $a4
	inc  sp                                          ; $6495: $33
	ld   de, $1111                                   ; $6496: $11 $11 $11
	ld   de, $1774                                   ; $6499: $11 $74 $17
	ret                                              ; $649c: $c9


	and  a                                           ; $649d: $a7
	rst  JumpTable                                         ; $649e: $df
	sub  l                                           ; $649f: $95
	call $cdcd                                       ; $64a0: $cd $cd $cd
	db   $fc                                         ; $64a3: $fc
	sbc  [hl]                                        ; $64a4: $9e
	sbc  $d8                                         ; $64a5: $de $d8
	sbc  e                                           ; $64a7: $9b

Call_0be_64a8:
	ld   [hl], e                                     ; $64a8: $73
	ld   hl, $1112                                   ; $64a9: $21 $12 $11
	ld   de, $7511                                   ; $64ac: $11 $11 $75
	ld   h, $9d                                      ; $64af: $26 $9d
	db   $fc                                         ; $64b1: $fc
	sbc  [hl]                                        ; $64b2: $9e
	and  l                                           ; $64b3: $a5
	cp   a                                           ; $64b4: $bf
	call $fdec                                       ; $64b5: $cd $ec $fd
	xor  [hl]                                        ; $64b8: $ae
	db   $eb                                         ; $64b9: $eb
	cp   c                                           ; $64ba: $b9
	ld   a, e                                        ; $64bb: $7b
	ld   b, c                                        ; $64bc: $41
	inc  de                                          ; $64bd: $13
	ld   de, $1111                                   ; $64be: $11 $11 $11
	dec  d                                           ; $64c1: $15
	ld   b, d                                        ; $64c2: $42
	sbc  d                                           ; $64c3: $9a
	cp   e                                           ; $64c4: $bb
	cp   h                                           ; $64c5: $bc
	or   a                                           ; $64c6: $b7
	adc  a                                           ; $64c7: $8f
	ld   sp, hl                                      ; $64c8: $f9
	xor  a                                           ; $64c9: $af
	rst  $28                                         ; $64ca: $ef
	xor  d                                           ; $64cb: $aa
	cp   $a5                                         ; $64cc: $fe $a5
	cp   h                                           ; $64ce: $bc
	and  c                                           ; $64cf: $a1
	ld   [de], a                                     ; $64d0: $12
	ld   [hl+], a                                    ; $64d1: $22
	ld   [de], a                                     ; $64d2: $12
	ld   sp, $4611                                   ; $64d3: $31 $11 $46
	ld   l, d                                        ; $64d6: $6a
	or   a                                           ; $64d7: $b7
	xor  l                                           ; $64d8: $ad
	jp   c, $cc7b                                    ; $64d9: $da $7b $cc

	cp   e                                           ; $64dc: $bb
	rst  $38                                         ; $64dd: $ff
	ret  z                                           ; $64de: $c8

	xor  $f9                                         ; $64df: $ee $f9
	ld   a, h                                        ; $64e1: $7c
	sub  a                                           ; $64e2: $97
	ld   [de], a                                     ; $64e3: $12
	ld   b, h                                        ; $64e4: $44
	ld   de, $1131                                   ; $64e5: $11 $31 $11
	ld   b, l                                        ; $64e8: $45
	rla                                              ; $64e9: $17
	sub  [hl]                                        ; $64ea: $96
	xor  h                                           ; $64eb: $ac
	jp   z, $ff4a                                    ; $64ec: $ca $4a $ff

	jp   c, $ebce                                    ; $64ef: $da $ce $eb

	cp   a                                           ; $64f2: $bf
	db   $fc                                         ; $64f3: $fc
	ld   a, b                                        ; $64f4: $78
	bit  0, c                                        ; $64f5: $cb $41
	inc  sp                                          ; $64f7: $33
	ld   h, c                                        ; $64f8: $61
	inc  d                                           ; $64f9: $14
	ld   de, $5215                                   ; $64fa: $11 $15 $52
	xor  [hl]                                        ; $64fd: $ae
	ld   e, c                                        ; $64fe: $59
	ld   a, [$de78]                                  ; $64ff: $fa $78 $de
	cp   e                                           ; $6502: $bb
	db   $dd                                         ; $6503: $dd
	adc  $bd                                         ; $6504: $ce $bd
	db   $dd                                         ; $6506: $dd
	cp   d                                           ; $6507: $ba
	cp   c                                           ; $6508: $b9
	ld   [hl], h                                     ; $6509: $74
	ld   de, $1453                                   ; $650a: $11 $53 $14
	ld   sp, $5511                                   ; $650d: $31 $11 $55
	ld   l, c                                        ; $6510: $69
	cp   e                                           ; $6511: $bb
	adc  e                                           ; $6512: $8b
	xor  d                                           ; $6513: $aa
	ld   [hl], a                                     ; $6514: $77
	rst  $38                                         ; $6515: $ff
	call z, $abdd                                    ; $6516: $cc $dd $ab
	xor  [hl]                                        ; $6519: $ae
	db   $fc                                         ; $651a: $fc
	ld   a, c                                        ; $651b: $79
	or   l                                           ; $651c: $b5
	ld   de, $4324                                   ; $651d: $11 $24 $43
	ld   [de], a                                     ; $6520: $12
	ld   de, $6d55                                   ; $6521: $11 $55 $6d
	and  l                                           ; $6524: $a5
	rst  $38                                         ; $6525: $ff
	ld   e, d                                        ; $6526: $5a
	ld   a, c                                        ; $6527: $79
	db   $fc                                         ; $6528: $fc
	cp   h                                           ; $6529: $bc
	call c, $cfcc                                    ; $652a: $dc $cc $cf
	db   $db                                         ; $652d: $db
	add  a                                           ; $652e: $87
	add  l                                           ; $652f: $85
	inc  de                                          ; $6530: $13
	ld   [hl-], a                                    ; $6531: $32
	ld   [hl-], a                                    ; $6532: $32
	ld   [de], a                                     ; $6533: $12
	dec  d                                           ; $6534: $15
	ld   h, c                                        ; $6535: $61
	ld   l, l                                        ; $6536: $6d
	ret                                              ; $6537: $c9


	xor  h                                           ; $6538: $ac
	rst  $10                                         ; $6539: $d7
	ld   a, [de]                                     ; $653a: $1a
	rst  $38                                         ; $653b: $ff
	reti                                             ; $653c: $d9


	rst  $38                                         ; $653d: $ff
	xor  b                                           ; $653e: $a8
	xor  [hl]                                        ; $653f: $ae
	ld   a, [$a55a]                                  ; $6540: $fa $5a $a5
	ld   de, $4156                                   ; $6543: $11 $56 $41
	inc  d                                           ; $6546: $14
	ld   hl, $bb16                                   ; $6547: $21 $16 $bb
	ld   c, e                                        ; $654a: $4b
	di                                               ; $654b: $f3
	sbc  $2e                                         ; $654c: $de $2e
	ld   sp, hl                                      ; $654e: $f9
	rst  $38                                         ; $654f: $ff
	adc  h                                           ; $6550: $8c
	cp   d                                           ; $6551: $ba
	db   $fd                                         ; $6552: $fd
	sbc  e                                           ; $6553: $9b
	sub  [hl]                                        ; $6554: $96
	ld   h, c                                        ; $6555: $61
	ld   [hl], $32                                   ; $6556: $36 $32
	ld   [hl+], a                                    ; $6558: $22
	ld   d, l                                        ; $6559: $55
	inc  de                                          ; $655a: $13
	rla                                              ; $655b: $17
	push de                                          ; $655c: $d5
	db   $fd                                         ; $655d: $fd
	dec  a                                           ; $655e: $3d
	push hl                                          ; $655f: $e5
	ld   l, l                                        ; $6560: $6d
	rst  $28                                         ; $6561: $ef
	and  [hl]                                        ; $6562: $a6
	rst  $38                                         ; $6563: $ff
	adc  c                                           ; $6564: $89
	cp   a                                           ; $6565: $bf
	or   h                                           ; $6566: $b4
	ld   e, c                                        ; $6567: $59
	ld   d, c                                        ; $6568: $51
	inc  h                                           ; $6569: $24
	ld   [hl], h                                     ; $656a: $74
	inc  de                                          ; $656b: $13
	inc  sp                                          ; $656c: $33
	ld   h, $77                                      ; $656d: $26 $77
	cp   b                                           ; $656f: $b8
	ld   l, l                                        ; $6570: $6d
	rst  $10                                         ; $6571: $d7
	ld   a, c                                        ; $6572: $79
	ld   a, a                                        ; $6573: $7f
	ei                                               ; $6574: $fb
	adc  $b9                                         ; $6575: $ce $b9
	xor  b                                           ; $6577: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6578: $cf
	sub  [hl]                                        ; $6579: $96
	inc  sp                                          ; $657a: $33
	inc  [hl]                                        ; $657b: $34
	ld   d, e                                        ; $657c: $53
	ld   d, h                                        ; $657d: $54
	ld   [hl-], a                                    ; $657e: $32
	ld   d, $66                                      ; $657f: $16 $66
	or   l                                           ; $6581: $b5
	cp   d                                           ; $6582: $ba
	ld   c, h                                        ; $6583: $4c
	cp   d                                           ; $6584: $ba
	ret                                              ; $6585: $c9


	xor  [hl]                                        ; $6586: $ae
	ret                                              ; $6587: $c9


	ld   a, a                                        ; $6588: $7f
	rst  $30                                         ; $6589: $f7
	ld   e, h                                        ; $658a: $5c
	sbc  h                                           ; $658b: $9c
	ld   d, c                                        ; $658c: $51
	ld   c, d                                        ; $658d: $4a
	ld   d, c                                        ; $658e: $51
	ld   h, h                                        ; $658f: $64
	ld   d, l                                        ; $6590: $55
	ld   de, $6746                                   ; $6591: $11 $46 $67
	call z, $bc66                                    ; $6594: $cc $66 $bc
	or   [hl]                                        ; $6597: $b6
	ld   l, a                                        ; $6598: $6f
	ld   a, [$ffaa]                                  ; $6599: $fa $aa $ff
	ld   d, $ec                                      ; $659c: $16 $ec
	and  d                                           ; $659e: $a2
	add  hl, de                                      ; $659f: $19
	ld   d, h                                        ; $65a0: $54
	ld   d, d                                        ; $65a1: $52
	ld   d, [hl]                                     ; $65a2: $56
	ld   [hl+], a                                    ; $65a3: $22
	ld   d, a                                        ; $65a4: $57
	ld   h, [hl]                                     ; $65a5: $66
	cp   b                                           ; $65a6: $b8
	sbc  c                                           ; $65a7: $99
	ld   l, c                                        ; $65a8: $69
	db   $db                                         ; $65a9: $db
	ld   c, e                                        ; $65aa: $4b
	ld   a, [$fa1f]                                  ; $65ab: $fa $1f $fa
	add  [hl]                                        ; $65ae: $86
	cp   l                                           ; $65af: $bd
	dec  h                                           ; $65b0: $25
	and  a                                           ; $65b1: $a7
	ld   b, e                                        ; $65b2: $43
	halt                                             ; $65b3: $76
	ld   [hl-], a                                    ; $65b4: $32
	ld   h, h                                        ; $65b5: $64
	ld   c, c                                        ; $65b6: $49
	ld   e, d                                        ; $65b7: $5a
	or   h                                           ; $65b8: $b4
	dec  sp                                          ; $65b9: $3b
	ld   hl, sp+$1c                                  ; $65ba: $f8 $1c
	rst  $38                                         ; $65bc: $ff
	ld   [hl], c                                     ; $65bd: $71
	rst  $38                                         ; $65be: $ff
	ld   b, e                                        ; $65bf: $43
	rst  $38                                         ; $65c0: $ff
	ld   [hl], l                                     ; $65c1: $75
	ld   a, d                                        ; $65c2: $7a
	ld   h, c                                        ; $65c3: $61
	inc  a                                           ; $65c4: $3c
	or   c                                           ; $65c5: $b1
	ld   d, a                                        ; $65c6: $57
	inc  sp                                          ; $65c7: $33
	ld   d, a                                        ; $65c8: $57
	xor  d                                           ; $65c9: $aa
	inc  sp                                          ; $65ca: $33
	xor  [hl]                                        ; $65cb: $ae
	and  a                                           ; $65cc: $a7
	halt                                             ; $65cd: $76
	sbc  $b5                                         ; $65ce: $de $b5
	sbc  a                                           ; $65d0: $9f
	or   d                                           ; $65d1: $b2
	ld   a, a                                        ; $65d2: $7f
	ld   hl, sp+$11                                  ; $65d3: $f8 $11
	cp   e                                           ; $65d5: $bb
	ld   [hl], e                                     ; $65d6: $73
	ld   c, d                                        ; $65d7: $4a
	ld   [hl], a                                     ; $65d8: $77
	ld   hl, $a379                                   ; $65d9: $21 $79 $a3
	dec  a                                           ; $65dc: $3d
	or   a                                           ; $65dd: $b7
	sub  [hl]                                        ; $65de: $96
	ld   l, a                                        ; $65df: $6f
	db   $e4                                         ; $65e0: $e4
	cp   a                                           ; $65e1: $bf
	sbc  d                                           ; $65e2: $9a
	ld   c, d                                        ; $65e3: $4a
	ld   hl, sp+$76                                  ; $65e4: $f8 $76
	sbc  b                                           ; $65e6: $98
	ld   [hl+], a                                    ; $65e7: $22
	xor  l                                           ; $65e8: $ad
	ld   [hl], $79                                   ; $65e9: $36 $79
	ld   h, c                                        ; $65eb: $61
	ld   e, b                                        ; $65ec: $58
	sub  $36                                         ; $65ed: $d6 $36
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65ef: $cf
	ld   [hl], c                                     ; $65f0: $71
	ld   e, a                                        ; $65f1: $5f
	rst  $30                                         ; $65f2: $f7
	ld   l, $fc                                      ; $65f3: $2e $fc
	ld   d, $aa                                      ; $65f5: $16 $aa
	ld   [$ba22], a                                  ; $65f7: $ea $22 $ba
	add  h                                           ; $65fa: $84
	dec  hl                                          ; $65fb: $2b

jr_0be_65fc:
	sub  e                                           ; $65fc: $93
	jr   z, @-$18                                    ; $65fd: $28 $e6

	inc  sp                                          ; $65ff: $33
	cp   e                                           ; $6600: $bb
	dec  sp                                          ; $6601: $3b
	ld   l, e                                        ; $6602: $6b
	pop  hl                                          ; $6603: $e1
	cp   a                                           ; $6604: $bf
	add  h                                           ; $6605: $84
	xor  a                                           ; $6606: $af
	ld   a, b                                        ; $6607: $78
	xor  d                                           ; $6608: $aa
	call nz, Call_0be_7646                           ; $6609: $c4 $46 $76
	ld   l, h                                        ; $660c: $6c
	ld   h, l                                        ; $660d: $65
	ld   [hl], d                                     ; $660e: $72
	ld   e, b                                        ; $660f: $58
	sbc  b                                           ; $6610: $98
	sub  [hl]                                        ; $6611: $96
	ld   c, c                                        ; $6612: $49
	ld   e, a                                        ; $6613: $5f
	add  c                                           ; $6614: $81
	ret  z                                           ; $6615: $c8

	ld   sp, hl                                      ; $6616: $f9
	rra                                              ; $6617: $1f
	ei                                               ; $6618: $fb
	ld   a, [de]                                     ; $6619: $1a
	xor  c                                           ; $661a: $a9
	pop  bc                                          ; $661b: $c1
	xor  b                                           ; $661c: $a8
	ld   [hl], h                                     ; $661d: $74
	ld   a, e                                        ; $661e: $7b
	jr   z, jr_0be_6659                              ; $661f: $28 $38

	ld   h, l                                        ; $6621: $65
	push de                                          ; $6622: $d5
	and  d                                           ; $6623: $a2
	ld   c, e                                        ; $6624: $4b
	ld   a, b                                        ; $6625: $78
	ld   a, [hl]                                     ; $6626: $7e
	cp   c                                           ; $6627: $b9
	add  c                                           ; $6628: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6629: $cf
	sub  [hl]                                        ; $662a: $96
	ld   a, e                                        ; $662b: $7b
	add  l                                           ; $662c: $85
	ret  c                                           ; $662d: $d8

	scf                                              ; $662e: $37
	ld   c, d                                        ; $662f: $4a
	add  a                                           ; $6630: $87
	xor  [hl]                                        ; $6631: $ae
	ld   b, c                                        ; $6632: $41
	ld   [hl], e                                     ; $6633: $73
	ld   a, e                                        ; $6634: $7b
	cp   d                                           ; $6635: $ba
	ld   d, [hl]                                     ; $6636: $56
	ld   c, c                                        ; $6637: $49
	ldh  [c], a                                      ; $6638: $e2
	ld   e, a                                        ; $6639: $5f
	xor  h                                           ; $663a: $ac
	or   d                                           ; $663b: $b2
	ld   a, h                                        ; $663c: $7c
	and  l                                           ; $663d: $a5
	ld   c, h                                        ; $663e: $4c
	cp   h                                           ; $663f: $bc
	ld   [hl], c                                     ; $6640: $71
	and  [hl]                                        ; $6641: $a6
	and  a                                           ; $6642: $a7
	add  hl, de                                      ; $6643: $19
	jp   c, $9924                                    ; $6644: $da $24 $99

	sub  h                                           ; $6647: $94
	adc  d                                           ; $6648: $8a
	ld   a, h                                        ; $6649: $7c
	and  [hl]                                        ; $664a: $a6
	ld   d, l                                        ; $664b: $55
	sbc  a                                           ; $664c: $9f
	ld   [hl], c                                     ; $664d: $71
	cp   [hl]                                        ; $664e: $be
	push bc                                          ; $664f: $c5
	ld   d, $ff                                      ; $6650: $16 $ff
	ld   de, $63cf                                   ; $6652: $11 $cf $63
	ld   d, $db                                      ; $6655: $16 $db
	inc  sp                                          ; $6657: $33
	xor  h                                           ; $6658: $ac

jr_0be_6659:
	pop  hl                                          ; $6659: $e1
	rra                                              ; $665a: $1f
	rst  ToBoot                                         ; $665b: $c7
	ld   [hl], a                                     ; $665c: $77
	sbc  c                                           ; $665d: $99
	ld   e, b                                        ; $665e: $58
	jp   c, $9795                                    ; $665f: $da $95 $97

	ld   e, e                                        ; $6662: $5b
	xor  c                                           ; $6663: $a9
	jr   c, jr_0be_65fc                              ; $6664: $38 $96

	and  l                                           ; $6666: $a5
	xor  c                                           ; $6667: $a9
	daa                                              ; $6668: $27
	xor  [hl]                                        ; $6669: $ae
	ld   h, d                                        ; $666a: $62
	add  a                                           ; $666b: $87
	or   [hl]                                        ; $666c: $b6
	ld   e, l                                        ; $666d: $5d
	ld   [$bd14], a                                  ; $666e: $ea $14 $bd
	jp   $898a                                       ; $6671: $c3 $8a $89


	ld   c, b                                        ; $6674: $48
	sbc  h                                           ; $6675: $9c
	ld   [hl], e                                     ; $6676: $73
	and  a                                           ; $6677: $a7
	xor  d                                           ; $6678: $aa
	inc  hl                                          ; $6679: $23
	xor  e                                           ; $667a: $ab
	ld   l, c                                        ; $667b: $69
	sub  [hl]                                        ; $667c: $96
	sub  a                                           ; $667d: $97
	ld   l, b                                        ; $667e: $68
	sbc  d                                           ; $667f: $9a
	sbc  b                                           ; $6680: $98
	dec  hl                                          ; $6681: $2b
	db   $d3                                         ; $6682: $d3
	xor  b                                           ; $6683: $a8
	rst  $10                                         ; $6684: $d7
	ld   a, [de]                                     ; $6685: $1a
	cp   a                                           ; $6686: $bf
	ld   d, l                                        ; $6687: $55
	or   [hl]                                        ; $6688: $b6
	add  l                                           ; $6689: $85
	sub  a                                           ; $668a: $97
	ld   h, [hl]                                     ; $668b: $66
	ld   l, a                                        ; $668c: $6f

jr_0be_668d:
	or   h                                           ; $668d: $b4
	ld   b, h                                        ; $668e: $44
	call c, $ca49                                    ; $668f: $dc $49 $ca
	ld   h, [hl]                                     ; $6692: $66
	ld   e, d                                        ; $6693: $5a
	or   [hl]                                        ; $6694: $b6
	sbc  b                                           ; $6695: $98
	xor  b                                           ; $6696: $a8
	ld   b, [hl]                                     ; $6697: $46
	xor  h                                           ; $6698: $ac
	rla                                              ; $6699: $17
	ld   hl, sp+$72                                  ; $669a: $f8 $72
	ld   a, h                                        ; $669c: $7c
	sub  a                                           ; $669d: $97
	ld   c, d                                        ; $669e: $4a
	ld   a, e                                        ; $669f: $7b
	jp   nz, $8a88                                   ; $66a0: $c2 $88 $8a

	ld   h, a                                        ; $66a3: $67
	adc  e                                           ; $66a4: $8b
	ld   h, [hl]                                     ; $66a5: $66
	add  [hl]                                        ; $66a6: $86
	adc  e                                           ; $66a7: $8b
	sub  l                                           ; $66a8: $95
	ld   a, [hl]                                     ; $66a9: $7e
	or   l                                           ; $66aa: $b5
	ld   b, a                                        ; $66ab: $47
	or   a                                           ; $66ac: $b7
	xor  c                                           ; $66ad: $a9
	sbc  d                                           ; $66ae: $9a
	ld   [hl], h                                     ; $66af: $74
	ld   a, [hl+]                                    ; $66b0: $2a
	bit  6, l                                        ; $66b1: $cb $75
	sbc  e                                           ; $66b3: $9b
	ld   h, e                                        ; $66b4: $63
	sbc  c                                           ; $66b5: $99
	and  a                                           ; $66b6: $a7
	ld   a, [hl]                                     ; $66b7: $7e
	or   [hl]                                        ; $66b8: $b6
	inc  sp                                          ; $66b9: $33
	cp   h                                           ; $66ba: $bc
	sub  a                                           ; $66bb: $97
	cp   e                                           ; $66bc: $bb
	ld   h, l                                        ; $66bd: $65
	ld   c, d                                        ; $66be: $4a
	xor  b                                           ; $66bf: $a8
	sub  [hl]                                        ; $66c0: $96
	rst  $20                                         ; $66c1: $e7
	ld   l, b                                        ; $66c2: $68
	ld   e, b                                        ; $66c3: $58
	ld   a, d                                        ; $66c4: $7a
	add  l                                           ; $66c5: $85
	add  $67                                         ; $66c6: $c6 $67
	adc  e                                           ; $66c8: $8b
	ld   e, b                                        ; $66c9: $58
	sbc  b                                           ; $66ca: $98
	sub  [hl]                                        ; $66cb: $96
	sbc  b                                           ; $66cc: $98
	ld   l, c                                        ; $66cd: $69
	xor  c                                           ; $66ce: $a9
	ld   e, b                                        ; $66cf: $58
	xor  b                                           ; $66d0: $a8
	and  l                                           ; $66d1: $a5
	sbc  c                                           ; $66d2: $99
	ld   d, h                                        ; $66d3: $54
	xor  a                                           ; $66d4: $af
	sub  a                                           ; $66d5: $97
	ld   e, c                                        ; $66d6: $59
	ld   [hl], h                                     ; $66d7: $74
	ld   a, d                                        ; $66d8: $7a

Call_0be_66d9:
	or   [hl]                                        ; $66d9: $b6
	xor  b                                           ; $66da: $a8
	ld   e, l                                        ; $66db: $5d
	add  h                                           ; $66dc: $84
	ld   [hl], h                                     ; $66dd: $74
	xor  l                                           ; $66de: $ad
	ld   d, h                                        ; $66df: $54
	ld   a, [hl]                                     ; $66e0: $7e
	ld   [hl], d                                     ; $66e1: $72
	sbc  d                                           ; $66e2: $9a
	rst  $20                                         ; $66e3: $e7
	jr   c, jr_0be_668d                              ; $66e4: $38 $a7

	scf                                              ; $66e6: $37
	cp   b                                           ; $66e7: $b8
	and  [hl]                                        ; $66e8: $a6
	ld   e, b                                        ; $66e9: $58
	ld   a, h                                        ; $66ea: $7c
	add  [hl]                                        ; $66eb: $86
	ld   [hl], a                                     ; $66ec: $77
	cp   c                                           ; $66ed: $b9
	ld   d, l                                        ; $66ee: $55
	sbc  d                                           ; $66ef: $9a
	ld   d, l                                        ; $66f0: $55
	sbc  d                                           ; $66f1: $9a
	ret                                              ; $66f2: $c9


	ld   h, [hl]                                     ; $66f3: $66
	ld   h, [hl]                                     ; $66f4: $66
	sbc  h                                           ; $66f5: $9c
	ld   [hl], l                                     ; $66f6: $75
	xor  d                                           ; $66f7: $aa
	sub  [hl]                                        ; $66f8: $96
	ld   c, c                                        ; $66f9: $49
	and  l                                           ; $66fa: $a5
	ld   b, a                                        ; $66fb: $47
	db   $ec                                         ; $66fc: $ec
	ld   d, e                                        ; $66fd: $53
	ld   l, c                                        ; $66fe: $69
	adc  b                                           ; $66ff: $88
	ld   e, c                                        ; $6700: $59
	ret                                              ; $6701: $c9


	ld   [hl], e                                     ; $6702: $73
	ld   l, b                                        ; $6703: $68
	xor  c                                           ; $6704: $a9
	adc  b                                           ; $6705: $88
	adc  d                                           ; $6706: $8a
	ld   [hl], e                                     ; $6707: $73
	ld   e, e                                        ; $6708: $5b
	and  l                                           ; $6709: $a5
	ld   e, b                                        ; $670a: $58
	db   $ec                                         ; $670b: $ec
	ld   d, d                                        ; $670c: $52
	ld   e, e                                        ; $670d: $5b
	sbc  c                                           ; $670e: $99
	adc  c                                           ; $670f: $89
	and  a                                           ; $6710: $a7
	ld   b, h                                        ; $6711: $44
	cp   e                                           ; $6712: $bb
	ld   e, c                                        ; $6713: $59
	ld   a, c                                        ; $6714: $79
	sub  a                                           ; $6715: $97
	ld   h, l                                        ; $6716: $65
	ld   a, b                                        ; $6717: $78
	cp   b                                           ; $6718: $b8
	ld   a, e                                        ; $6719: $7b
	sub  [hl]                                        ; $671a: $96
	ld   b, h                                        ; $671b: $44
	cp   h                                           ; $671c: $bc
	sub  [hl]                                        ; $671d: $96
	ld   e, d                                        ; $671e: $5a
	add  [hl]                                        ; $671f: $86
	ld   l, b                                        ; $6720: $68
	and  a                                           ; $6721: $a7
	add  [hl]                                        ; $6722: $86
	sbc  e                                           ; $6723: $9b
	add  [hl]                                        ; $6724: $86
	ld   l, h                                        ; $6725: $6c
	or   a                                           ; $6726: $b7
	ld   d, e                                        ; $6727: $53
	adc  h                                           ; $6728: $8c
	add  [hl]                                        ; $6729: $86
	ld   a, d                                        ; $672a: $7a
	sub  a                                           ; $672b: $97
	ld   b, [hl]                                     ; $672c: $46
	cp   d                                           ; $672d: $ba
	ld   d, a                                        ; $672e: $57
	adc  c                                           ; $672f: $89
	cp   b                                           ; $6730: $b8
	ld   b, [hl]                                     ; $6731: $46
	cp   c                                           ; $6732: $b9
	sub  [hl]                                        ; $6733: $96
	ld   l, d                                        ; $6734: $6a
	ld   [hl], a                                     ; $6735: $77
	ld   h, a                                        ; $6736: $67
	rst  ToBoot                                         ; $6737: $c7
	ld   a, b                                        ; $6738: $78
	ld   a, e                                        ; $6739: $7b
	ld   [hl], a                                     ; $673a: $77
	xor  b                                           ; $673b: $a8
	ld   [hl], a                                     ; $673c: $77
	sbc  d                                           ; $673d: $9a
	sub  [hl]                                        ; $673e: $96
	ld   [hl], a                                     ; $673f: $77
	ld   h, [hl]                                     ; $6740: $66
	ld   a, d                                        ; $6741: $7a
	and  a                                           ; $6742: $a7
	ld   a, b                                        ; $6743: $78
	adc  b                                           ; $6744: $88
	sub  l                                           ; $6745: $95
	adc  d                                           ; $6746: $8a
	sbc  c                                           ; $6747: $99
	ld   [hl], a                                     ; $6748: $77
	add  a                                           ; $6749: $87
	adc  c                                           ; $674a: $89
	sbc  b                                           ; $674b: $98
	add  a                                           ; $674c: $87
	ld   a, b                                        ; $674d: $78
	add  l                                           ; $674e: $85
	adc  c                                           ; $674f: $89
	sbc  c                                           ; $6750: $99
	ld   a, c                                        ; $6751: $79
	adc  b                                           ; $6752: $88
	ld   d, h                                        ; $6753: $54
	xor  e                                           ; $6754: $ab
	and  [hl]                                        ; $6755: $a6
	ld   a, c                                        ; $6756: $79
	xor  b                                           ; $6757: $a8
	ld   d, a                                        ; $6758: $57
	xor  c                                           ; $6759: $a9
	add  a                                           ; $675a: $87
	adc  d                                           ; $675b: $8a
	sub  a                                           ; $675c: $97
	ld   [hl], a                                     ; $675d: $77
	add  a                                           ; $675e: $87
	ld   a, b                                        ; $675f: $78
	sbc  b                                           ; $6760: $98
	add  a                                           ; $6761: $87
	adc  d                                           ; $6762: $8a
	add  a                                           ; $6763: $87
	ld   a, b                                        ; $6764: $78
	sbc  c                                           ; $6765: $99
	ld   a, c                                        ; $6766: $79
	adc  b                                           ; $6767: $88
	sub  a                                           ; $6768: $97
	ld   a, c                                        ; $6769: $79
	sub  a                                           ; $676a: $97
	ld   a, c                                        ; $676b: $79
	sbc  c                                           ; $676c: $99
	add  a                                           ; $676d: $87
	xor  b                                           ; $676e: $a8
	ld   [hl], a                                     ; $676f: $77
	adc  c                                           ; $6770: $89
	ld   [hl], a                                     ; $6771: $77
	ld   h, a                                        ; $6772: $67
	ret                                              ; $6773: $c9


	ld   l, b                                        ; $6774: $68
	adc  b                                           ; $6775: $88
	add  a                                           ; $6776: $87
	sbc  c                                           ; $6777: $99
	sub  a                                           ; $6778: $97
	sbc  b                                           ; $6779: $98
	adc  b                                           ; $677a: $88
	adc  d                                           ; $677b: $8a
	sub  a                                           ; $677c: $97
	add  a                                           ; $677d: $87
	adc  b                                           ; $677e: $88
	ld   [hl], a                                     ; $677f: $77
	sbc  d                                           ; $6780: $9a
	adc  b                                           ; $6781: $88
	sub  a                                           ; $6782: $97
	sbc  b                                           ; $6783: $98
	adc  b                                           ; $6784: $88
	adc  d                                           ; $6785: $8a
	adc  b                                           ; $6786: $88
	sub  a                                           ; $6787: $97
	ld   a, b                                        ; $6788: $78
	ld   [hl], a                                     ; $6789: $77
	adc  b                                           ; $678a: $88
	sbc  c                                           ; $678b: $99
	adc  d                                           ; $678c: $8a
	sub  a                                           ; $678d: $97
	halt                                             ; $678e: $76
	ld   a, c                                        ; $678f: $79
	cp   d                                           ; $6790: $ba
	adc  d                                           ; $6791: $8a
	add  a                                           ; $6792: $87
	halt                                             ; $6793: $76
	adc  d                                           ; $6794: $8a
	add  a                                           ; $6795: $87
	adc  b                                           ; $6796: $88
	sbc  c                                           ; $6797: $99
	ld   [hl], a                                     ; $6798: $77
	adc  b                                           ; $6799: $88
	sbc  b                                           ; $679a: $98
	adc  c                                           ; $679b: $89
	add  [hl]                                        ; $679c: $86
	ld   a, c                                        ; $679d: $79
	ld   a, c                                        ; $679e: $79
	adc  b                                           ; $679f: $88
	xor  c                                           ; $67a0: $a9
	ld   [hl], a                                     ; $67a1: $77
	ld   [hl], a                                     ; $67a2: $77
	adc  b                                           ; $67a3: $88
	sbc  c                                           ; $67a4: $99
	adc  b                                           ; $67a5: $88
	ld   a, b                                        ; $67a6: $78
	sbc  b                                           ; $67a7: $98
	sbc  c                                           ; $67a8: $99
	adc  b                                           ; $67a9: $88
	ld   [hl], a                                     ; $67aa: $77
	sbc  b                                           ; $67ab: $98
	add  a                                           ; $67ac: $87
	ld   a, c                                        ; $67ad: $79
	add  a                                           ; $67ae: $87
	ld   a, c                                        ; $67af: $79
	xor  c                                           ; $67b0: $a9
	sbc  b                                           ; $67b1: $98
	sbc  b                                           ; $67b2: $98
	halt                                             ; $67b3: $76
	ld   [hl], a                                     ; $67b4: $77
	adc  c                                           ; $67b5: $89
	ld   [hl], a                                     ; $67b6: $77
	adc  b                                           ; $67b7: $88
	sub  a                                           ; $67b8: $97
	ld   a, c                                        ; $67b9: $79
	sbc  b                                           ; $67ba: $98
	adc  b                                           ; $67bb: $88
	adc  c                                           ; $67bc: $89
	add  a                                           ; $67bd: $87
	adc  b                                           ; $67be: $88
	adc  d                                           ; $67bf: $8a
	xor  c                                           ; $67c0: $a9
	ld   [hl], a                                     ; $67c1: $77
	adc  b                                           ; $67c2: $88
	halt                                             ; $67c3: $76
	sbc  c                                           ; $67c4: $99
	xor  b                                           ; $67c5: $a8
	ld   a, b                                        ; $67c6: $78
	adc  c                                           ; $67c7: $89
	ld   [hl], a                                     ; $67c8: $77
	adc  c                                           ; $67c9: $89
	sub  a                                           ; $67ca: $97
	adc  b                                           ; $67cb: $88
	adc  b                                           ; $67cc: $88
	ld   [hl], a                                     ; $67cd: $77
	ld   a, c                                        ; $67ce: $79
	xor  c                                           ; $67cf: $a9
	sbc  c                                           ; $67d0: $99
	sbc  c                                           ; $67d1: $99
	halt                                             ; $67d2: $76
	ld   a, c                                        ; $67d3: $79
	adc  b                                           ; $67d4: $88
	adc  b                                           ; $67d5: $88
	adc  b                                           ; $67d6: $88
	ld   [hl], a                                     ; $67d7: $77
	ld   a, c                                        ; $67d8: $79
	adc  c                                           ; $67d9: $89
	sbc  b                                           ; $67da: $98
	adc  b                                           ; $67db: $88
	add  a                                           ; $67dc: $87
	ld   a, b                                        ; $67dd: $78
	sbc  d                                           ; $67de: $9a
	adc  b                                           ; $67df: $88
	adc  c                                           ; $67e0: $89
	add  a                                           ; $67e1: $87
	ld   [hl], a                                     ; $67e2: $77
	adc  b                                           ; $67e3: $88
	sbc  c                                           ; $67e4: $99
	ld   a, b                                        ; $67e5: $78
	adc  b                                           ; $67e6: $88
	ld   [hl], a                                     ; $67e7: $77
	sbc  d                                           ; $67e8: $9a
	adc  b                                           ; $67e9: $88
	ld   a, c                                        ; $67ea: $79
	adc  b                                           ; $67eb: $88
	ld   [hl], a                                     ; $67ec: $77
	adc  b                                           ; $67ed: $88
	sbc  b                                           ; $67ee: $98
	ld   a, c                                        ; $67ef: $79
	adc  b                                           ; $67f0: $88
	ld   [hl], a                                     ; $67f1: $77
	adc  b                                           ; $67f2: $88
	adc  b                                           ; $67f3: $88
	adc  b                                           ; $67f4: $88
	adc  c                                           ; $67f5: $89
	ld   [hl], a                                     ; $67f6: $77
	adc  c                                           ; $67f7: $89
	sbc  b                                           ; $67f8: $98
	adc  b                                           ; $67f9: $88
	adc  b                                           ; $67fa: $88
	ld   a, b                                        ; $67fb: $78
	sbc  b                                           ; $67fc: $98
	sbc  b                                           ; $67fd: $98
	ld   [hl], a                                     ; $67fe: $77
	adc  b                                           ; $67ff: $88
	adc  b                                           ; $6800: $88
	adc  b                                           ; $6801: $88
	sbc  b                                           ; $6802: $98
	adc  b                                           ; $6803: $88
	sbc  c                                           ; $6804: $99
	adc  b                                           ; $6805: $88
	adc  c                                           ; $6806: $89
	sbc  b                                           ; $6807: $98
	ld   a, b                                        ; $6808: $78
	adc  b                                           ; $6809: $88
	sbc  b                                           ; $680a: $98
	adc  b                                           ; $680b: $88
	adc  b                                           ; $680c: $88
	adc  b                                           ; $680d: $88
	adc  b                                           ; $680e: $88
	adc  b                                           ; $680f: $88
	add  a                                           ; $6810: $87
	adc  b                                           ; $6811: $88
	adc  b                                           ; $6812: $88
	adc  c                                           ; $6813: $89
	sbc  b                                           ; $6814: $98
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
	ld   de, $1111                                   ; $6829: $11 $11 $11
	ld   de, $1111                                   ; $682c: $11 $11 $11
	ld   de, $1111                                   ; $682f: $11 $11 $11
	ld   de, $1111                                   ; $6832: $11 $11 $11
	ld   de, $1111                                   ; $6835: $11 $11 $11
	ld   de, $1111                                   ; $6838: $11 $11 $11
	ld   de, $1111                                   ; $683b: $11 $11 $11
	ld   de, $1111                                   ; $683e: $11 $11 $11
	ld   de, $1111                                   ; $6841: $11 $11 $11
	ld   de, $1111                                   ; $6844: $11 $11 $11
	ld   de, $1111                                   ; $6847: $11 $11 $11
	ld   de, $1111                                   ; $684a: $11 $11 $11
	ld   de, $1111                                   ; $684d: $11 $11 $11
	ld   de, $1111                                   ; $6850: $11 $11 $11
	ld   de, $1111                                   ; $6853: $11 $11 $11
	ld   de, $1111                                   ; $6856: $11 $11 $11
	ld   de, $4800                                   ; $6859: $11 $00 $48
	ld   de, $1111                                   ; $685c: $11 $11 $11
	ld   de, $1111                                   ; $685f: $11 $11 $11
	ld   de, $1111                                   ; $6862: $11 $11 $11
	ld   de, $5413                                   ; $6865: $11 $13 $54
	ld   d, h                                        ; $6868: $54
	ld   d, h                                        ; $6869: $54
	ld   b, c                                        ; $686a: $41
	rra                                              ; $686b: $1f
	rst  $38                                         ; $686c: $ff
	pop  af                                          ; $686d: $f1
	ld   de, $1811                                   ; $686e: $11 $11 $18
	pop  af                                          ; $6871: $f1
	ld   de, $dd1c                                   ; $6872: $11 $1c $dd
	cp   h                                           ; $6875: $bc
	db   $dd                                         ; $6876: $dd
	or   c                                           ; $6877: $b1
	ld   de, $1111                                   ; $6878: $11 $11 $11
	ld   de, $1111                                   ; $687b: $11 $11 $11
	ld   de, $1111                                   ; $687e: $11 $11 $11
	ld   de, $1111                                   ; $6881: $11 $11 $11
	ld   de, $5411                                   ; $6884: $11 $11 $54
	ld   b, h                                        ; $6887: $44
	ld   hl, sp+$11                                  ; $6888: $f8 $11
	ld   d, h                                        ; $688a: $54
	ld   d, h                                        ; $688b: $54
	ld   h, a                                        ; $688c: $67
	ld   [hl], d                                     ; $688d: $72
	ld   de, $1111                                   ; $688e: $11 $11 $11
	ld   de, $1112                                   ; $6891: $11 $12 $11
	ld   [de], a                                     ; $6894: $12
	ld   de, $1111                                   ; $6895: $11 $11 $11
	ld   h, [hl]                                     ; $6898: $66
	halt                                             ; $6899: $76
	ret  c                                           ; $689a: $d8

	ld   de, $8888                                   ; $689b: $11 $88 $88
	adc  b                                           ; $689e: $88
	adc  b                                           ; $689f: $88
	adc  b                                           ; $68a0: $88
	sbc  c                                           ; $68a1: $99
	sbc  c                                           ; $68a2: $99
	sbc  c                                           ; $68a3: $99
	sbc  c                                           ; $68a4: $99
	sbc  c                                           ; $68a5: $99
	sbc  c                                           ; $68a6: $99
	sbc  c                                           ; $68a7: $99
	sbc  c                                           ; $68a8: $99
	sbc  b                                           ; $68a9: $98
	adc  b                                           ; $68aa: $88
	adc  b                                           ; $68ab: $88
	adc  b                                           ; $68ac: $88
	ld   [hl], a                                     ; $68ad: $77
	ld   [hl], a                                     ; $68ae: $77
	ld   [hl], a                                     ; $68af: $77
	ld   [hl], a                                     ; $68b0: $77
	ld   [hl], a                                     ; $68b1: $77
	ld   [hl], a                                     ; $68b2: $77
	ld   [hl], a                                     ; $68b3: $77
	ld   [hl], a                                     ; $68b4: $77
	ld   h, a                                        ; $68b5: $67
	ld   [hl], a                                     ; $68b6: $77
	ld   [hl], a                                     ; $68b7: $77
	ld   [hl], a                                     ; $68b8: $77
	ld   [hl], a                                     ; $68b9: $77
	ld   a, b                                        ; $68ba: $78
	adc  b                                           ; $68bb: $88
	sbc  c                                           ; $68bc: $99
	sbc  d                                           ; $68bd: $9a
	sbc  d                                           ; $68be: $9a
	xor  e                                           ; $68bf: $ab
	cp   d                                           ; $68c0: $ba
	xor  e                                           ; $68c1: $ab
	cp   e                                           ; $68c2: $bb
	xor  d                                           ; $68c3: $aa
	cp   e                                           ; $68c4: $bb
	xor  d                                           ; $68c5: $aa
	sbc  d                                           ; $68c6: $9a
	sbc  b                                           ; $68c7: $98
	sbc  b                                           ; $68c8: $98
	add  a                                           ; $68c9: $87
	ld   [hl], a                                     ; $68ca: $77
	ld   h, [hl]                                     ; $68cb: $66
	ld   h, l                                        ; $68cc: $65
	ld   d, l                                        ; $68cd: $55
	ld   b, h                                        ; $68ce: $44
	ld   b, e                                        ; $68cf: $43
	inc  sp                                          ; $68d0: $33
	ld   [hl+], a                                    ; $68d1: $22
	inc  sp                                          ; $68d2: $33
	ld   b, h                                        ; $68d3: $44
	ld   d, [hl]                                     ; $68d4: $56

Call_0be_68d5:
	ld   h, a                                        ; $68d5: $67
	adc  c                                           ; $68d6: $89
	sbc  c                                           ; $68d7: $99
	xor  e                                           ; $68d8: $ab
	xor  e                                           ; $68d9: $ab
	call z, $cdbc                                    ; $68da: $cc $bc $cd
	db   $dd                                         ; $68dd: $dd
	call c, $cccc                                    ; $68de: $dc $cc $cc
	call $bbcb                                       ; $68e1: $cd $cb $bb
	xor  c                                           ; $68e4: $a9
	sbc  b                                           ; $68e5: $98
	add  a                                           ; $68e6: $87
	halt                                             ; $68e7: $76
	ld   h, l                                        ; $68e8: $65
	ld   d, l                                        ; $68e9: $55
	ld   b, h                                        ; $68ea: $44
	inc  sp                                          ; $68eb: $33
	ld   [hl+], a                                    ; $68ec: $22
	ld   de, $1211                                   ; $68ed: $11 $11 $12
	inc  hl                                          ; $68f0: $23
	ld   b, l                                        ; $68f1: $45
	ld   h, [hl]                                     ; $68f2: $66
	ld   a, b                                        ; $68f3: $78
	adc  c                                           ; $68f4: $89
	sbc  d                                           ; $68f5: $9a
	cp   d                                           ; $68f6: $ba
	cp   e                                           ; $68f7: $bb
	set  1, h                                        ; $68f8: $cb $cc
	call z, $cccc                                    ; $68fa: $cc $cc $cc
	call z, $cccc                                    ; $68fd: $cc $cc $cc
	cp   h                                           ; $6900: $bc
	cp   e                                           ; $6901: $bb
	cp   d                                           ; $6902: $ba
	xor  c                                           ; $6903: $a9
	sbc  b                                           ; $6904: $98
	ld   [hl], a                                     ; $6905: $77
	ld   h, [hl]                                     ; $6906: $66
	ld   h, l                                        ; $6907: $65
	ld   d, h                                        ; $6908: $54
	ld   b, e                                        ; $6909: $43
	ld   [hl-], a                                    ; $690a: $32
	ld   de, $1111                                   ; $690b: $11 $11 $11
	inc  hl                                          ; $690e: $23
	ld   b, l                                        ; $690f: $45
	ld   d, [hl]                                     ; $6910: $56
	ld   a, b                                        ; $6911: $78
	adc  b                                           ; $6912: $88
	sbc  c                                           ; $6913: $99
	xor  d                                           ; $6914: $aa
	cp   e                                           ; $6915: $bb
	cp   e                                           ; $6916: $bb
	cp   h                                           ; $6917: $bc
	call z, $ccdc                                    ; $6918: $cc $dc $cc
	db   $dd                                         ; $691b: $dd
	db   $dd                                         ; $691c: $dd
	call $cbcd                                       ; $691d: $cd $cd $cb
	jp   z, $99aa                                    ; $6920: $ca $aa $99

	add  a                                           ; $6923: $87
	ld   h, [hl]                                     ; $6924: $66
	ld   d, l                                        ; $6925: $55
	ld   b, e                                        ; $6926: $43
	ld   [hl-], a                                    ; $6927: $32
	ld   hl, $1111                                   ; $6928: $21 $11 $11
	ld   de, $3423                                   ; $692b: $11 $23 $34
	ld   d, [hl]                                     ; $692e: $56
	ld   a, b                                        ; $692f: $78
	adc  c                                           ; $6930: $89
	sbc  d                                           ; $6931: $9a
	cp   d                                           ; $6932: $ba
	cp   e                                           ; $6933: $bb
	call z, $dddc                                    ; $6934: $cc $dc $dd
	db   $dd                                         ; $6937: $dd
	sbc  $dd                                         ; $6938: $de $dd
	db   $dd                                         ; $693a: $dd
	db   $dd                                         ; $693b: $dd
	call c, $bacb                                    ; $693c: $dc $cb $ba
	xor  b                                           ; $693f: $a8
	add  a                                           ; $6940: $87
	halt                                             ; $6941: $76
	ld   d, l                                        ; $6942: $55
	ld   b, e                                        ; $6943: $43
	ld   [hl-], a                                    ; $6944: $32
	ld   hl, $1111                                   ; $6945: $21 $11 $11
	ld   de, $2311                                   ; $6948: $11 $11 $23
	ld   b, l                                        ; $694b: $45
	ld   h, a                                        ; $694c: $67
	adc  c                                           ; $694d: $89
	sbc  c                                           ; $694e: $99
	cp   e                                           ; $694f: $bb
	cp   h                                           ; $6950: $bc
	call $ddcd                                       ; $6951: $cd $cd $dd
	sbc  $dd                                         ; $6954: $de $dd
	rst  $28                                         ; $6956: $ef
	rst  $28                                         ; $6957: $ef
	xor  $ed                                         ; $6958: $ee $ed
	call c, $a9ca                                    ; $695a: $dc $ca $a9
	sbc  b                                           ; $695d: $98
	halt                                             ; $695e: $76
	ld   d, l                                        ; $695f: $55
	ld   b, e                                        ; $6960: $43
	ld   [hl-], a                                    ; $6961: $32
	ld   hl, $1111                                   ; $6962: $21 $11 $11
	ld   de, $1111                                   ; $6965: $11 $11 $11
	inc  [hl]                                        ; $6968: $34
	ld   b, l                                        ; $6969: $45
	ld   a, b                                        ; $696a: $78
	sbc  c                                           ; $696b: $99
	sbc  d                                           ; $696c: $9a
	cp   h                                           ; $696d: $bc
	cp   h                                           ; $696e: $bc
	call $eede                                       ; $696f: $cd $de $ee
	xor  $ef                                         ; $6972: $ee $ef
	rst  $38                                         ; $6974: $ff
	cp   $fe                                         ; $6975: $fe $fe
	call c, $bacb                                    ; $6977: $dc $cb $ba
	adc  b                                           ; $697a: $88
	halt                                             ; $697b: $76
	ld   d, l                                        ; $697c: $55
	ld   b, e                                        ; $697d: $43
	ld   [hl-], a                                    ; $697e: $32
	ld   hl, $1111                                   ; $697f: $21 $11 $11
	ld   de, $1111                                   ; $6982: $11 $11 $11
	inc  de                                          ; $6985: $13
	ld   b, l                                        ; $6986: $45
	ld   h, a                                        ; $6987: $67
	adc  b                                           ; $6988: $88
	sbc  d                                           ; $6989: $9a
	cp   h                                           ; $698a: $bc
	cp   h                                           ; $698b: $bc
	db   $dd                                         ; $698c: $dd
	rst  JumpTable                                         ; $698d: $df
	db   $fc                                         ; $698e: $fc
	rst  $38                                         ; $698f: $ff
	rst  $28                                         ; $6990: $ef
	rst  $38                                         ; $6991: $ff
	xor  $ff                                         ; $6992: $ee $ff
	db   $ed                                         ; $6994: $ed
	db   $db                                         ; $6995: $db
	call Call_0be_68d5                               ; $6996: $cd $d5 $68
	ld   [hl], $33                                   ; $6999: $36 $33
	ld   [de], a                                     ; $699b: $12
	ld   hl, $1111                                   ; $699c: $21 $11 $11
	ld   de, $1111                                   ; $699f: $11 $11 $11
	inc  bc                                          ; $69a2: $03
	ld   b, l                                        ; $69a3: $45
	ld   e, b                                        ; $69a4: $58
	sbc  d                                           ; $69a5: $9a
	xor  e                                           ; $69a6: $ab
	call $eddd                                       ; $69a7: $cd $dd $ed
	cp   $ce                                         ; $69aa: $fe $ce
	rst  $38                                         ; $69ac: $ff
	cp   [hl]                                        ; $69ad: $be
	rst  $38                                         ; $69ae: $ff
	rst  JumpTable                                         ; $69af: $df
	rst  $38                                         ; $69b0: $ff
	db   $ec                                         ; $69b1: $ec
	ld   [$7aca], a                                  ; $69b2: $ea $ca $7a
	ld   [hl], a                                     ; $69b5: $77
	ld   d, l                                        ; $69b6: $55
	ld   d, d                                        ; $69b7: $52
	ld   b, d                                        ; $69b8: $42
	ld   de, $1111                                   ; $69b9: $11 $11 $11
	ld   de, $1111                                   ; $69bc: $11 $11 $11
	inc  hl                                          ; $69bf: $23
	ld   b, l                                        ; $69c0: $45
	ld   h, a                                        ; $69c1: $67
	xor  d                                           ; $69c2: $aa
	cp   h                                           ; $69c3: $bc
	adc  $cd                                         ; $69c4: $ce $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69c6: $cf
	cp   $fe                                         ; $69c7: $fe $fe
	db   $fd                                         ; $69c9: $fd
	rst  JumpTable                                         ; $69ca: $df
	rst  JumpTable                                         ; $69cb: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69cc: $cf
	cp   $fc                                         ; $69cd: $fe $fc
	rst  $20                                         ; $69cf: $e7
	rst  $30                                         ; $69d0: $f7
	sbc  l                                           ; $69d1: $9d
	ld   a, [hl+]                                    ; $69d2: $2a
	ld   b, c                                        ; $69d3: $41
	ld   h, c                                        ; $69d4: $61
	ld   de, $1111                                   ; $69d5: $11 $11 $11
	ld   de, $2111                                   ; $69d8: $11 $11 $21
	ld   de, $5824                                   ; $69db: $11 $24 $58
	ld   a, d                                        ; $69de: $7a
	ei                                               ; $69df: $fb
	cp   [hl]                                        ; $69e0: $be
	rst  $38                                         ; $69e1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e2: $cf
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	db   $fd                                         ; $69e5: $fd
	cp   $ef                                         ; $69e6: $fe $ef
	rst  $38                                         ; $69e8: $ff
	rst  $38                                         ; $69e9: $ff
	rst  $38                                         ; $69ea: $ff
	adc  a                                           ; $69eb: $8f
	sub  a                                           ; $69ec: $97
	and  e                                           ; $69ed: $a3
	ld   h, d                                        ; $69ee: $62
	ld   b, h                                        ; $69ef: $44
	ld   de, $1121                                   ; $69f0: $11 $21 $11
	ld   de, $1111                                   ; $69f3: $11 $11 $11
	ld   de, $7711                                   ; $69f6: $11 $11 $77
	ld   a, c                                        ; $69f9: $79
	rst  JumpTable                                         ; $69fa: $df
	rst  $28                                         ; $69fb: $ef
	rst  $38                                         ; $69fc: $ff
	rst  $38                                         ; $69fd: $ff
	rst  $38                                         ; $69fe: $ff
	rst  $38                                         ; $69ff: $ff
	cp   $ff                                         ; $6a00: $fe $ff
	sbc  $fd                                         ; $6a02: $de $fd
	db   $fc                                         ; $6a04: $fc
	db   $ed                                         ; $6a05: $ed
	xor  [hl]                                        ; $6a06: $ae
	ld   a, c                                        ; $6a07: $79
	or   [hl]                                        ; $6a08: $b6
	ld   h, h                                        ; $6a09: $64
	ld   h, h                                        ; $6a0a: $64
	ld   de, $1111                                   ; $6a0b: $11 $11 $11
	ld   de, $1111                                   ; $6a0e: $11 $11 $11
	ld   de, $5613                                   ; $6a11: $11 $13 $56
	xor  e                                           ; $6a14: $ab
	rst  $28                                         ; $6a15: $ef
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	rst  $38                                         ; $6a18: $ff
	rst  $38                                         ; $6a19: $ff
	rst  $38                                         ; $6a1a: $ff
	rst  $38                                         ; $6a1b: $ff
	rst  $38                                         ; $6a1c: $ff
	db   $ed                                         ; $6a1d: $ed
	db   $fd                                         ; $6a1e: $fd
	db   $eb                                         ; $6a1f: $eb
	xor  [hl]                                        ; $6a20: $ae
	xor  e                                           ; $6a21: $ab
	ld   a, [hl-]                                    ; $6a22: $3a
	sub  e                                           ; $6a23: $93
	ld   b, c                                        ; $6a24: $41
	ld   d, c                                        ; $6a25: $51
	ld   de, $1111                                   ; $6a26: $11 $11 $11
	ld   de, $1111                                   ; $6a29: $11 $11 $11
	ld   d, $29                                      ; $6a2c: $16 $29
	jp   z, $ffff                                    ; $6a2e: $ca $ff $ff

	rst  $38                                         ; $6a31: $ff
	rst  $38                                         ; $6a32: $ff
	rst  $38                                         ; $6a33: $ff
	rst  $38                                         ; $6a34: $ff
	rst  $38                                         ; $6a35: $ff
	cp   $cf                                         ; $6a36: $fe $cf
	call c, $dbc9                                    ; $6a38: $dc $c9 $db
	ld   [hl], a                                     ; $6a3b: $77
	ld   l, d                                        ; $6a3c: $6a
	ld   hl, $1131                                   ; $6a3d: $21 $31 $11
	ld   de, $1111                                   ; $6a40: $11 $11 $11
	ld   de, $1111                                   ; $6a43: $11 $11 $11
	ld   b, a                                        ; $6a46: $47
	cp   [hl]                                        ; $6a47: $be
	rst  $38                                         ; $6a48: $ff
	rst  $38                                         ; $6a49: $ff
	rst  $38                                         ; $6a4a: $ff
	rst  $38                                         ; $6a4b: $ff
	rst  $38                                         ; $6a4c: $ff
	rst  $38                                         ; $6a4d: $ff
	rst  $38                                         ; $6a4e: $ff
	db   $fd                                         ; $6a4f: $fd
	call c, Call_0be_79aa                            ; $6a50: $dc $aa $79
	and  [hl]                                        ; $6a53: $a6
	ld   e, b                                        ; $6a54: $58
	ld   [hl], d                                     ; $6a55: $72
	ld   [hl-], a                                    ; $6a56: $32
	ld   de, $1111                                   ; $6a57: $11 $11 $11
	ld   de, $1111                                   ; $6a5a: $11 $11 $11
	ld   de, $9b16                                   ; $6a5d: $11 $16 $9b
	rst  JumpTable                                         ; $6a60: $df
	rst  $38                                         ; $6a61: $ff
	rst  $38                                         ; $6a62: $ff
	rst  $38                                         ; $6a63: $ff
	rst  $38                                         ; $6a64: $ff
	rst  $38                                         ; $6a65: $ff
	rst  $38                                         ; $6a66: $ff
	rst  $38                                         ; $6a67: $ff
	db   $eb                                         ; $6a68: $eb
	add  a                                           ; $6a69: $87
	add  h                                           ; $6a6a: $84
	ld   d, h                                        ; $6a6b: $54
	ld   d, [hl]                                     ; $6a6c: $56
	inc  [hl]                                        ; $6a6d: $34
	ld   sp, $1111                                   ; $6a6e: $31 $11 $11
	ld   de, $1111                                   ; $6a71: $11 $11 $11
	ld   de, $1511                                   ; $6a74: $11 $11 $15
	xor  h                                           ; $6a77: $ac
	rst  JumpTable                                         ; $6a78: $df
	rst  $38                                         ; $6a79: $ff
	rst  $38                                         ; $6a7a: $ff
	rst  $38                                         ; $6a7b: $ff
	rst  $38                                         ; $6a7c: $ff
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	rst  $38                                         ; $6a7f: $ff
	ld   a, [$8476]                                  ; $6a80: $fa $76 $84
	inc  de                                          ; $6a83: $13
	ld   [hl-], a                                    ; $6a84: $32
	ld   de, $1111                                   ; $6a85: $11 $11 $11
	ld   de, $1111                                   ; $6a88: $11 $11 $11
	ld   de, $1111                                   ; $6a8b: $11 $11 $11
	ld   l, d                                        ; $6a8e: $6a
	cp   a                                           ; $6a8f: $bf
	rst  $38                                         ; $6a90: $ff
	rst  $38                                         ; $6a91: $ff
	rst  $38                                         ; $6a92: $ff
	rst  $38                                         ; $6a93: $ff
	rst  $38                                         ; $6a94: $ff
	rst  $38                                         ; $6a95: $ff
	rst  $38                                         ; $6a96: $ff
	db   $fd                                         ; $6a97: $fd
	or   a                                           ; $6a98: $b7
	ld   d, [hl]                                     ; $6a99: $56
	ld   sp, $1115                                   ; $6a9a: $31 $15 $11
	ld   hl, $1111                                   ; $6a9d: $21 $11 $11
	ld   de, $1111                                   ; $6aa0: $11 $11 $11
	ld   de, $1711                                   ; $6aa3: $11 $11 $17
	cp   e                                           ; $6aa6: $bb
	rst  $38                                         ; $6aa7: $ff
	rst  $38                                         ; $6aa8: $ff
	rst  $38                                         ; $6aa9: $ff
	rst  $38                                         ; $6aaa: $ff
	rst  $38                                         ; $6aab: $ff
	rst  $38                                         ; $6aac: $ff
	rst  $38                                         ; $6aad: $ff
	rst  $38                                         ; $6aae: $ff
	reti                                             ; $6aaf: $d9


	halt                                             ; $6ab0: $76
	ld   h, c                                        ; $6ab1: $61
	inc  de                                          ; $6ab2: $13
	ld   hl, $1111                                   ; $6ab3: $21 $11 $11
	ld   de, $1111                                   ; $6ab6: $11 $11 $11
	ld   de, $1111                                   ; $6ab9: $11 $11 $11
	ld   de, $ef7d                                   ; $6abc: $11 $7d $ef
	rst  $38                                         ; $6abf: $ff
	rst  $38                                         ; $6ac0: $ff
	rst  $38                                         ; $6ac1: $ff
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	rst  $38                                         ; $6ac4: $ff
	rst  $38                                         ; $6ac5: $ff
	db   $fc                                         ; $6ac6: $fc
	sub  l                                           ; $6ac7: $95
	inc  [hl]                                        ; $6ac8: $34
	ld   de, $1101                                   ; $6ac9: $11 $01 $11
	ld   de, $1111                                   ; $6acc: $11 $11 $11
	ld   de, $1111                                   ; $6acf: $11 $11 $11
	ld   de, $6911                                   ; $6ad2: $11 $11 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ad5: $cf
	rst  $38                                         ; $6ad6: $ff
	rst  $38                                         ; $6ad7: $ff
	rst  $38                                         ; $6ad8: $ff
	rst  $38                                         ; $6ad9: $ff
	rst  $38                                         ; $6ada: $ff
	rst  $38                                         ; $6adb: $ff
	rst  $38                                         ; $6adc: $ff
	db   $fd                                         ; $6add: $fd
	sbc  b                                           ; $6ade: $98
	ld   d, h                                        ; $6adf: $54
	ld   sp, $1113                                   ; $6ae0: $31 $13 $11
	ld   de, $1111                                   ; $6ae3: $11 $11 $11
	ld   de, $1111                                   ; $6ae6: $11 $11 $11
	ld   de, $2811                                   ; $6ae9: $11 $11 $28
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aec: $cf
	rst  $38                                         ; $6aed: $ff
	rst  $38                                         ; $6aee: $ff
	rst  $38                                         ; $6aef: $ff
	rst  $38                                         ; $6af0: $ff
	rst  $38                                         ; $6af1: $ff
	rst  $38                                         ; $6af2: $ff
	rst  $38                                         ; $6af3: $ff
	rst  $38                                         ; $6af4: $ff
	add  $55                                         ; $6af5: $c6 $55
	ld   b, c                                        ; $6af7: $41
	inc  hl                                          ; $6af8: $23
	ld   de, $1111                                   ; $6af9: $11 $11 $11
	ld   de, $1111                                   ; $6afc: $11 $11 $11
	ld   de, $1111                                   ; $6aff: $11 $11 $11
	inc  de                                          ; $6b02: $13
	adc  $ff                                         ; $6b03: $ce $ff
	rst  $38                                         ; $6b05: $ff
	rst  $38                                         ; $6b06: $ff
	rst  $38                                         ; $6b07: $ff
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	rst  $38                                         ; $6b0a: $ff
	rst  $28                                         ; $6b0b: $ef
	rst  $20                                         ; $6b0c: $e7
	ld   h, h                                        ; $6b0d: $64
	inc  sp                                          ; $6b0e: $33
	ld   hl, $1112                                   ; $6b0f: $21 $12 $11
	ld   de, $1111                                   ; $6b12: $11 $11 $11
	ld   de, $1111                                   ; $6b15: $11 $11 $11
	ld   de, $3a11                                   ; $6b18: $11 $11 $3a
	rst  $28                                         ; $6b1b: $ef
	rst  $38                                         ; $6b1c: $ff
	rst  $38                                         ; $6b1d: $ff
	rst  $38                                         ; $6b1e: $ff
	rst  $38                                         ; $6b1f: $ff
	rst  $38                                         ; $6b20: $ff
	rst  $38                                         ; $6b21: $ff
	rst  $38                                         ; $6b22: $ff
	db   $fc                                         ; $6b23: $fc
	add  a                                           ; $6b24: $87
	ld   b, e                                        ; $6b25: $43
	ld   b, c                                        ; $6b26: $41
	ld   hl, $1113                                   ; $6b27: $21 $13 $11
	ld   de, $1111                                   ; $6b2a: $11 $11 $11
	ld   de, $1111                                   ; $6b2d: $11 $11 $11
	ld   de, $7b13                                   ; $6b30: $11 $13 $7b
	rst  $38                                         ; $6b33: $ff
	rst  $38                                         ; $6b34: $ff
	rst  $38                                         ; $6b35: $ff
	rst  $38                                         ; $6b36: $ff
	rst  $38                                         ; $6b37: $ff
	rst  $38                                         ; $6b38: $ff
	rst  $38                                         ; $6b39: $ff
	rst  $38                                         ; $6b3a: $ff
	ret                                              ; $6b3b: $c9


	sub  [hl]                                        ; $6b3c: $96
	ld   b, l                                        ; $6b3d: $45
	ld   d, e                                        ; $6b3e: $53
	ld   b, e                                        ; $6b3f: $43
	inc  sp                                          ; $6b40: $33
	ld   [de], a                                     ; $6b41: $12
	ld   de, $1111                                   ; $6b42: $11 $11 $11
	ld   de, $1111                                   ; $6b45: $11 $11 $11
	ld   de, $5b11                                   ; $6b48: $11 $11 $5b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b4b: $cf
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	rst  $38                                         ; $6b4e: $ff
	rst  $38                                         ; $6b4f: $ff
	rst  $38                                         ; $6b50: $ff
	rst  $38                                         ; $6b51: $ff
	rst  $38                                         ; $6b52: $ff
	jp   c, $86a8                                    ; $6b53: $da $a8 $86

	add  [hl]                                        ; $6b56: $86
	ld   e, b                                        ; $6b57: $58
	dec  [hl]                                        ; $6b58: $35
	ld   [hl-], a                                    ; $6b59: $32
	ld   hl, $1111                                   ; $6b5a: $21 $11 $11
	ld   de, $1111                                   ; $6b5d: $11 $11 $11
	ld   de, $1211                                   ; $6b60: $11 $11 $12
	adc  e                                           ; $6b63: $8b
	xor  a                                           ; $6b64: $af
	rst  $38                                         ; $6b65: $ff
	rst  $38                                         ; $6b66: $ff
	rst  $38                                         ; $6b67: $ff
	rst  $38                                         ; $6b68: $ff
	rst  $38                                         ; $6b69: $ff
	rst  $38                                         ; $6b6a: $ff
	rst  $38                                         ; $6b6b: $ff
	rst  JumpTable                                         ; $6b6c: $df
	cp   l                                           ; $6b6d: $bd
	cp   b                                           ; $6b6e: $b8
	sub  $a8                                         ; $6b6f: $d6 $a8
	ld   e, b                                        ; $6b71: $58
	dec  [hl]                                        ; $6b72: $35
	ld   [hl-], a                                    ; $6b73: $32
	ld   de, $1111                                   ; $6b74: $11 $11 $11
	ld   de, $1111                                   ; $6b77: $11 $11 $11
	ld   de, $2411                                   ; $6b7a: $11 $11 $24
	adc  c                                           ; $6b7d: $89
	cp   [hl]                                        ; $6b7e: $be
	rst  $38                                         ; $6b7f: $ff
	rst  $38                                         ; $6b80: $ff
	rst  $38                                         ; $6b81: $ff
	rst  $38                                         ; $6b82: $ff
	rst  $38                                         ; $6b83: $ff
	rst  $38                                         ; $6b84: $ff
	rst  $38                                         ; $6b85: $ff
	cp   $ff                                         ; $6b86: $fe $ff
	cp   h                                           ; $6b88: $bc
	xor  e                                           ; $6b89: $ab
	and  a                                           ; $6b8a: $a7
	sub  [hl]                                        ; $6b8b: $96
	ld   h, [hl]                                     ; $6b8c: $66
	ld   d, d                                        ; $6b8d: $52
	inc  sp                                          ; $6b8e: $33
	ld   [de], a                                     ; $6b8f: $12
	ld   de, $1111                                   ; $6b90: $11 $11 $11
	ld   de, $1111                                   ; $6b93: $11 $11 $11
	inc  de                                          ; $6b96: $13
	inc  hl                                          ; $6b97: $23
	ld   d, [hl]                                     ; $6b98: $56
	sbc  b                                           ; $6b99: $98
	xor  h                                           ; $6b9a: $ac
	rst  $28                                         ; $6b9b: $ef
	rst  $28                                         ; $6b9c: $ef
	rst  $38                                         ; $6b9d: $ff
	rst  $38                                         ; $6b9e: $ff
	rst  $38                                         ; $6b9f: $ff
	rst  $38                                         ; $6ba0: $ff
	rst  $38                                         ; $6ba1: $ff
	rst  $38                                         ; $6ba2: $ff
	sbc  $bd                                         ; $6ba3: $de $bd
	cp   d                                           ; $6ba5: $ba
	sbc  d                                           ; $6ba6: $9a
	and  a                                           ; $6ba7: $a7
	halt                                             ; $6ba8: $76
	ld   h, l                                        ; $6ba9: $65
	ld   d, h                                        ; $6baa: $54
	ld   b, h                                        ; $6bab: $44
	inc  [hl]                                        ; $6bac: $34
	ld   [hl+], a                                    ; $6bad: $22
	ld   b, d                                        ; $6bae: $42
	ld   [hl-], a                                    ; $6baf: $32
	ld   [hl-], a                                    ; $6bb0: $32
	inc  [hl]                                        ; $6bb1: $34
	dec  d                                           ; $6bb2: $15
	inc  d                                           ; $6bb3: $14
	inc  h                                           ; $6bb4: $24
	ld   b, e                                        ; $6bb5: $43
	ld   h, l                                        ; $6bb6: $65
	add  a                                           ; $6bb7: $87
	sbc  c                                           ; $6bb8: $99
	xor  d                                           ; $6bb9: $aa
	cp   h                                           ; $6bba: $bc
	call z, $ddcd                                    ; $6bbb: $cc $cd $dd
	call $cddd                                       ; $6bbe: $cd $dd $cd
	set  1, e                                        ; $6bc1: $cb $cb
	jp   c, $aaaa                                    ; $6bc3: $da $aa $aa

	sbc  c                                           ; $6bc6: $99
	sbc  b                                           ; $6bc7: $98
	add  a                                           ; $6bc8: $87
	add  [hl]                                        ; $6bc9: $86
	halt                                             ; $6bca: $76
	ld   h, [hl]                                     ; $6bcb: $66
	ld   d, [hl]                                     ; $6bcc: $56
	ld   d, [hl]                                     ; $6bcd: $56
	ld   d, [hl]                                     ; $6bce: $56
	ld   d, l                                        ; $6bcf: $55
	ld   d, l                                        ; $6bd0: $55
	ld   d, l                                        ; $6bd1: $55
	ld   d, h                                        ; $6bd2: $54
	ld   d, h                                        ; $6bd3: $54
	ld   b, h                                        ; $6bd4: $44
	ld   b, h                                        ; $6bd5: $44
	ld   b, h                                        ; $6bd6: $44
	ld   d, l                                        ; $6bd7: $55
	ld   h, [hl]                                     ; $6bd8: $66
	ld   [hl], a                                     ; $6bd9: $77
	ld   a, c                                        ; $6bda: $79
	sbc  c                                           ; $6bdb: $99
	sbc  d                                           ; $6bdc: $9a
	cp   e                                           ; $6bdd: $bb
	cp   e                                           ; $6bde: $bb
	set  1, h                                        ; $6bdf: $cb $cc
	cp   h                                           ; $6be1: $bc
	call z, $bbcb                                    ; $6be2: $cc $cb $bb
	cp   h                                           ; $6be5: $bc
	cp   d                                           ; $6be6: $ba
	xor  c                                           ; $6be7: $a9
	sbc  c                                           ; $6be8: $99
	sbc  b                                           ; $6be9: $98
	adc  b                                           ; $6bea: $88
	ld   [hl], a                                     ; $6beb: $77
	ld   h, [hl]                                     ; $6bec: $66
	ld   h, [hl]                                     ; $6bed: $66
	ld   h, [hl]                                     ; $6bee: $66
	ld   h, [hl]                                     ; $6bef: $66
	ld   h, [hl]                                     ; $6bf0: $66
	ld   h, [hl]                                     ; $6bf1: $66
	ld   h, [hl]                                     ; $6bf2: $66
	ld   h, [hl]                                     ; $6bf3: $66
	ld   h, [hl]                                     ; $6bf4: $66
	halt                                             ; $6bf5: $76
	ld   h, a                                        ; $6bf6: $67
	ld   [hl], a                                     ; $6bf7: $77
	ld   h, a                                        ; $6bf8: $67
	ld   h, a                                        ; $6bf9: $67
	ld   [hl], a                                     ; $6bfa: $77
	ld   [hl], a                                     ; $6bfb: $77
	ld   [hl], a                                     ; $6bfc: $77
	ld   [hl], a                                     ; $6bfd: $77
	adc  b                                           ; $6bfe: $88
	adc  b                                           ; $6bff: $88
	adc  c                                           ; $6c00: $89
	adc  c                                           ; $6c01: $89
	sbc  c                                           ; $6c02: $99
	sbc  c                                           ; $6c03: $99
	adc  c                                           ; $6c04: $89
	adc  b                                           ; $6c05: $88
	sbc  b                                           ; $6c06: $98
	adc  b                                           ; $6c07: $88
	sbc  b                                           ; $6c08: $98
	sbc  b                                           ; $6c09: $98
	adc  c                                           ; $6c0a: $89
	sbc  c                                           ; $6c0b: $99
	sbc  c                                           ; $6c0c: $99
	sbc  c                                           ; $6c0d: $99
	adc  c                                           ; $6c0e: $89
	sbc  c                                           ; $6c0f: $99
	sbc  b                                           ; $6c10: $98
	sbc  b                                           ; $6c11: $98
	adc  c                                           ; $6c12: $89
	adc  c                                           ; $6c13: $89
	sbc  c                                           ; $6c14: $99
	adc  b                                           ; $6c15: $88
	adc  b                                           ; $6c16: $88
	add  a                                           ; $6c17: $87
	ld   [hl], a                                     ; $6c18: $77
	ld   [hl], a                                     ; $6c19: $77
	ld   [hl], a                                     ; $6c1a: $77
	ld   [hl], a                                     ; $6c1b: $77
	ld   [hl], a                                     ; $6c1c: $77
	halt                                             ; $6c1d: $76
	ld   h, [hl]                                     ; $6c1e: $66
	ld   h, [hl]                                     ; $6c1f: $66
	ld   h, [hl]                                     ; $6c20: $66
	ld   h, [hl]                                     ; $6c21: $66
	ld   h, a                                        ; $6c22: $67
	ld   h, a                                        ; $6c23: $67
	ld   [hl], a                                     ; $6c24: $77
	ld   [hl], a                                     ; $6c25: $77
	ld   [hl], a                                     ; $6c26: $77
	ld   [hl], a                                     ; $6c27: $77
	ld   [hl], a                                     ; $6c28: $77
	ld   [hl], a                                     ; $6c29: $77
	adc  b                                           ; $6c2a: $88
	adc  b                                           ; $6c2b: $88
	adc  c                                           ; $6c2c: $89
	sbc  b                                           ; $6c2d: $98
	adc  b                                           ; $6c2e: $88
	adc  c                                           ; $6c2f: $89
	sbc  c                                           ; $6c30: $99
	sbc  c                                           ; $6c31: $99
	sbc  c                                           ; $6c32: $99
	sbc  c                                           ; $6c33: $99
	sbc  c                                           ; $6c34: $99
	sbc  b                                           ; $6c35: $98
	adc  b                                           ; $6c36: $88
	adc  c                                           ; $6c37: $89
	sbc  c                                           ; $6c38: $99
	sbc  b                                           ; $6c39: $98
	adc  b                                           ; $6c3a: $88
	adc  b                                           ; $6c3b: $88
	adc  b                                           ; $6c3c: $88
	adc  b                                           ; $6c3d: $88
	add  a                                           ; $6c3e: $87
	ld   [hl], a                                     ; $6c3f: $77
	ld   [hl], a                                     ; $6c40: $77
	ld   [hl], a                                     ; $6c41: $77
	ld   [hl], a                                     ; $6c42: $77
	ld   [hl], a                                     ; $6c43: $77
	ld   [hl], a                                     ; $6c44: $77
	ld   [hl], a                                     ; $6c45: $77
	ld   a, b                                        ; $6c46: $78
	ld   a, b                                        ; $6c47: $78
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
	sbc  b                                           ; $6c61: $98
	sbc  b                                           ; $6c62: $98
	adc  c                                           ; $6c63: $89
	adc  c                                           ; $6c64: $89
	adc  b                                           ; $6c65: $88
	adc  b                                           ; $6c66: $88
	adc  b                                           ; $6c67: $88
	sbc  b                                           ; $6c68: $98
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
	adc  c                                           ; $6c7c: $89
	adc  b                                           ; $6c7d: $88
	sbc  b                                           ; $6c7e: $98
	adc  c                                           ; $6c7f: $89
	sbc  b                                           ; $6c80: $98
	sbc  c                                           ; $6c81: $99
	sbc  b                                           ; $6c82: $98
	sbc  c                                           ; $6c83: $99
	sbc  b                                           ; $6c84: $98
	adc  c                                           ; $6c85: $89
	sbc  b                                           ; $6c86: $98
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
	adc  c                                           ; $6c96: $89
	adc  c                                           ; $6c97: $89
	adc  b                                           ; $6c98: $88
	sbc  b                                           ; $6c99: $98
	sbc  c                                           ; $6c9a: $99
	adc  c                                           ; $6c9b: $89
	adc  b                                           ; $6c9c: $88
	adc  b                                           ; $6c9d: $88
	sbc  b                                           ; $6c9e: $98
	sbc  b                                           ; $6c9f: $98
	sbc  b                                           ; $6ca0: $98
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
	sbc  b                                           ; $6cb2: $98
	sbc  b                                           ; $6cb3: $98
	adc  b                                           ; $6cb4: $88
	adc  c                                           ; $6cb5: $89
	adc  c                                           ; $6cb6: $89
	adc  b                                           ; $6cb7: $88
	adc  c                                           ; $6cb8: $89
	adc  b                                           ; $6cb9: $88
	sbc  b                                           ; $6cba: $98
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
	sbc  b                                           ; $6cc6: $98
	adc  c                                           ; $6cc7: $89
	adc  b                                           ; $6cc8: $88
	adc  b                                           ; $6cc9: $88
	sbc  b                                           ; $6cca: $98
	sbc  b                                           ; $6ccb: $98
	adc  c                                           ; $6ccc: $89
	adc  b                                           ; $6ccd: $88
	adc  b                                           ; $6cce: $88
	adc  b                                           ; $6ccf: $88
	adc  b                                           ; $6cd0: $88
	adc  b                                           ; $6cd1: $88
	add  a                                           ; $6cd2: $87
	adc  b                                           ; $6cd3: $88
	adc  b                                           ; $6cd4: $88
	ld   a, c                                        ; $6cd5: $79
	ld   a, c                                        ; $6cd6: $79
	adc  b                                           ; $6cd7: $88
	sbc  b                                           ; $6cd8: $98
	adc  b                                           ; $6cd9: $88
	adc  b                                           ; $6cda: $88
	adc  b                                           ; $6cdb: $88
	adc  c                                           ; $6cdc: $89
	ld   a, b                                        ; $6cdd: $78
	adc  b                                           ; $6cde: $88
	adc  b                                           ; $6cdf: $88
	adc  b                                           ; $6ce0: $88
	sbc  b                                           ; $6ce1: $98
	adc  b                                           ; $6ce2: $88
	adc  b                                           ; $6ce3: $88
	adc  b                                           ; $6ce4: $88
	adc  c                                           ; $6ce5: $89
	adc  b                                           ; $6ce6: $88
	adc  b                                           ; $6ce7: $88
	adc  b                                           ; $6ce8: $88
	adc  b                                           ; $6ce9: $88
	add  a                                           ; $6cea: $87
	adc  b                                           ; $6ceb: $88
	add  a                                           ; $6cec: $87
	adc  b                                           ; $6ced: $88
	adc  d                                           ; $6cee: $8a
	add  a                                           ; $6cef: $87
	adc  c                                           ; $6cf0: $89
	sbc  b                                           ; $6cf1: $98
	add  a                                           ; $6cf2: $87
	adc  b                                           ; $6cf3: $88
	adc  b                                           ; $6cf4: $88
	adc  b                                           ; $6cf5: $88
	adc  b                                           ; $6cf6: $88
	sub  a                                           ; $6cf7: $97
	adc  b                                           ; $6cf8: $88
	sbc  c                                           ; $6cf9: $99
	adc  b                                           ; $6cfa: $88
	sbc  b                                           ; $6cfb: $98
	adc  b                                           ; $6cfc: $88
	adc  b                                           ; $6cfd: $88
	adc  b                                           ; $6cfe: $88
	adc  b                                           ; $6cff: $88
	adc  b                                           ; $6d00: $88
	adc  b                                           ; $6d01: $88
	adc  b                                           ; $6d02: $88
	add  a                                           ; $6d03: $87
	ld   a, b                                        ; $6d04: $78
	adc  b                                           ; $6d05: $88
	adc  b                                           ; $6d06: $88
	ld   a, b                                        ; $6d07: $78
	adc  b                                           ; $6d08: $88
	adc  b                                           ; $6d09: $88
	ld   a, b                                        ; $6d0a: $78
	add  a                                           ; $6d0b: $87
	adc  b                                           ; $6d0c: $88
	adc  b                                           ; $6d0d: $88
	ld   a, b                                        ; $6d0e: $78
	adc  b                                           ; $6d0f: $88
	adc  b                                           ; $6d10: $88
	adc  b                                           ; $6d11: $88
	adc  b                                           ; $6d12: $88
	adc  b                                           ; $6d13: $88
	adc  b                                           ; $6d14: $88
	add  a                                           ; $6d15: $87
	adc  b                                           ; $6d16: $88
	adc  c                                           ; $6d17: $89
	ld   a, b                                        ; $6d18: $78
	adc  b                                           ; $6d19: $88
	ld   a, b                                        ; $6d1a: $78
	adc  b                                           ; $6d1b: $88
	sbc  b                                           ; $6d1c: $98
	ld   a, b                                        ; $6d1d: $78
	add  a                                           ; $6d1e: $87
	add  a                                           ; $6d1f: $87
	adc  b                                           ; $6d20: $88
	adc  b                                           ; $6d21: $88
	adc  b                                           ; $6d22: $88
	ld   a, b                                        ; $6d23: $78
	adc  b                                           ; $6d24: $88
	adc  b                                           ; $6d25: $88
	ld   [hl], a                                     ; $6d26: $77
	adc  c                                           ; $6d27: $89
	adc  b                                           ; $6d28: $88
	add  a                                           ; $6d29: $87
	adc  b                                           ; $6d2a: $88
	adc  b                                           ; $6d2b: $88
	adc  b                                           ; $6d2c: $88
	adc  b                                           ; $6d2d: $88
	ld   a, b                                        ; $6d2e: $78
	adc  b                                           ; $6d2f: $88
	sbc  b                                           ; $6d30: $98
	adc  b                                           ; $6d31: $88
	adc  c                                           ; $6d32: $89
	sbc  b                                           ; $6d33: $98
	add  a                                           ; $6d34: $87
	adc  c                                           ; $6d35: $89
	adc  c                                           ; $6d36: $89
	adc  c                                           ; $6d37: $89
	add  a                                           ; $6d38: $87
	adc  c                                           ; $6d39: $89
	adc  b                                           ; $6d3a: $88
	ld   a, b                                        ; $6d3b: $78
	sub  a                                           ; $6d3c: $97
	sbc  b                                           ; $6d3d: $98
	add  a                                           ; $6d3e: $87
	adc  c                                           ; $6d3f: $89
	adc  c                                           ; $6d40: $89
	adc  c                                           ; $6d41: $89
	ld   h, a                                        ; $6d42: $67
	adc  e                                           ; $6d43: $8b
	add  [hl]                                        ; $6d44: $86
	add  a                                           ; $6d45: $87
	and  a                                           ; $6d46: $a7
	add  a                                           ; $6d47: $87
	adc  b                                           ; $6d48: $88
	ld   a, b                                        ; $6d49: $78
	ld   a, c                                        ; $6d4a: $79
	ld   a, c                                        ; $6d4b: $79
	add  a                                           ; $6d4c: $87
	ld   [hl], a                                     ; $6d4d: $77
	adc  b                                           ; $6d4e: $88
	adc  b                                           ; $6d4f: $88
	ld   a, b                                        ; $6d50: $78
	adc  b                                           ; $6d51: $88
	sbc  c                                           ; $6d52: $99
	xor  b                                           ; $6d53: $a8
	ld   l, b                                        ; $6d54: $68
	cp   e                                           ; $6d55: $bb
	add  a                                           ; $6d56: $87
	sub  a                                           ; $6d57: $97
	sub  a                                           ; $6d58: $97
	ld   [hl], a                                     ; $6d59: $77
	ld   a, b                                        ; $6d5a: $78
	ld   l, c                                        ; $6d5b: $69
	ld   [hl], a                                     ; $6d5c: $77
	adc  b                                           ; $6d5d: $88
	xor  b                                           ; $6d5e: $a8
	ld   a, b                                        ; $6d5f: $78
	adc  b                                           ; $6d60: $88
	sbc  c                                           ; $6d61: $99
	adc  c                                           ; $6d62: $89
	sbc  b                                           ; $6d63: $98
	sbc  c                                           ; $6d64: $99
	adc  c                                           ; $6d65: $89
	sbc  c                                           ; $6d66: $99
	ld   a, b                                        ; $6d67: $78
	ld   a, b                                        ; $6d68: $78
	adc  b                                           ; $6d69: $88
	adc  b                                           ; $6d6a: $88
	ld   [hl], a                                     ; $6d6b: $77
	adc  c                                           ; $6d6c: $89
	adc  c                                           ; $6d6d: $89
	ld   [hl], a                                     ; $6d6e: $77
	adc  b                                           ; $6d6f: $88
	sub  a                                           ; $6d70: $97
	sub  a                                           ; $6d71: $97
	adc  c                                           ; $6d72: $89
	halt                                             ; $6d73: $76
	sbc  d                                           ; $6d74: $9a
	adc  c                                           ; $6d75: $89
	ld   [hl], a                                     ; $6d76: $77
	sbc  c                                           ; $6d77: $99
	xor  b                                           ; $6d78: $a8
	ld   [hl], a                                     ; $6d79: $77
	sub  a                                           ; $6d7a: $97
	add  a                                           ; $6d7b: $87
	ld   a, b                                        ; $6d7c: $78
	ld   a, c                                        ; $6d7d: $79
	add  a                                           ; $6d7e: $87
	add  a                                           ; $6d7f: $87
	ld   a, d                                        ; $6d80: $7a
	sbc  b                                           ; $6d81: $98
	add  a                                           ; $6d82: $87
	sbc  c                                           ; $6d83: $99
	adc  c                                           ; $6d84: $89
	ld   a, b                                        ; $6d85: $78
	ld   [hl], a                                     ; $6d86: $77
	add  a                                           ; $6d87: $87
	adc  b                                           ; $6d88: $88
	sbc  b                                           ; $6d89: $98
	add  a                                           ; $6d8a: $87
	adc  c                                           ; $6d8b: $89
	adc  b                                           ; $6d8c: $88
	ld   l, b                                        ; $6d8d: $68
	adc  b                                           ; $6d8e: $88
	sub  a                                           ; $6d8f: $97
	xor  b                                           ; $6d90: $a8
	xor  b                                           ; $6d91: $a8
	ld   a, b                                        ; $6d92: $78
	ld   a, b                                        ; $6d93: $78
	adc  d                                           ; $6d94: $8a
	ld   l, b                                        ; $6d95: $68
	sub  a                                           ; $6d96: $97
	add  a                                           ; $6d97: $87
	sbc  b                                           ; $6d98: $98
	adc  b                                           ; $6d99: $88
	ld   a, c                                        ; $6d9a: $79
	ld   l, b                                        ; $6d9b: $68
	sbc  b                                           ; $6d9c: $98
	sub  a                                           ; $6d9d: $97
	sbc  b                                           ; $6d9e: $98
	adc  b                                           ; $6d9f: $88
	ld   a, c                                        ; $6da0: $79
	sbc  c                                           ; $6da1: $99
	adc  b                                           ; $6da2: $88
	sub  a                                           ; $6da3: $97
	adc  b                                           ; $6da4: $88
	add  a                                           ; $6da5: $87
	ld   a, c                                        ; $6da6: $79
	adc  b                                           ; $6da7: $88
	ld   a, b                                        ; $6da8: $78
	sbc  d                                           ; $6da9: $9a
	sbc  b                                           ; $6daa: $98
	sub  [hl]                                        ; $6dab: $96
	ld   [hl], a                                     ; $6dac: $77
	sbc  c                                           ; $6dad: $99
	ld   a, c                                        ; $6dae: $79
	ld   [hl], a                                     ; $6daf: $77
	sub  a                                           ; $6db0: $97
	adc  b                                           ; $6db1: $88
	ld   a, c                                        ; $6db2: $79
	add  a                                           ; $6db3: $87
	ld   a, b                                        ; $6db4: $78
	sbc  c                                           ; $6db5: $99
	adc  b                                           ; $6db6: $88
	adc  b                                           ; $6db7: $88
	adc  b                                           ; $6db8: $88
	ld   [hl], a                                     ; $6db9: $77
	ld   a, b                                        ; $6dba: $78
	sub  a                                           ; $6dbb: $97
	adc  c                                           ; $6dbc: $89
	adc  c                                           ; $6dbd: $89
	add  a                                           ; $6dbe: $87
	sub  a                                           ; $6dbf: $97
	sbc  b                                           ; $6dc0: $98
	ld   a, b                                        ; $6dc1: $78
	ld   a, b                                        ; $6dc2: $78
	sub  a                                           ; $6dc3: $97
	adc  b                                           ; $6dc4: $88
	sbc  b                                           ; $6dc5: $98
	adc  b                                           ; $6dc6: $88
	ld   l, c                                        ; $6dc7: $69
	add  a                                           ; $6dc8: $87
	ld   l, b                                        ; $6dc9: $68
	ld   [hl], a                                     ; $6dca: $77
	sub  [hl]                                        ; $6dcb: $96
	ld   [hl], l                                     ; $6dcc: $75
	add  a                                           ; $6dcd: $87
	ld   a, c                                        ; $6dce: $79
	ld   l, b                                        ; $6dcf: $68
	ld   [hl], a                                     ; $6dd0: $77
	ld   a, b                                        ; $6dd1: $78
	xor  b                                           ; $6dd2: $a8
	ld   [hl], a                                     ; $6dd3: $77
	adc  b                                           ; $6dd4: $88
	ld   a, b                                        ; $6dd5: $78
	adc  b                                           ; $6dd6: $88
	sbc  d                                           ; $6dd7: $9a
	ld   a, c                                        ; $6dd8: $79
	sub  a                                           ; $6dd9: $97
	and  a                                           ; $6dda: $a7
	sbc  b                                           ; $6ddb: $98
	adc  c                                           ; $6ddc: $89
	sbc  c                                           ; $6ddd: $99
	adc  c                                           ; $6dde: $89
	sbc  d                                           ; $6ddf: $9a
	ld   [hl], a                                     ; $6de0: $77
	adc  d                                           ; $6de1: $8a
	add  a                                           ; $6de2: $87
	adc  b                                           ; $6de3: $88
	halt                                             ; $6de4: $76
	sub  a                                           ; $6de5: $97
	ld   d, [hl]                                     ; $6de6: $56
	ld   h, [hl]                                     ; $6de7: $66
	ld   h, h                                        ; $6de8: $64
	ld   h, [hl]                                     ; $6de9: $66
	ld   d, l                                        ; $6dea: $55
	ld   d, h                                        ; $6deb: $54
	ld   d, l                                        ; $6dec: $55
	ld   d, [hl]                                     ; $6ded: $56
	ld   d, [hl]                                     ; $6dee: $56
	ld   d, [hl]                                     ; $6def: $56
	ld   [hl], a                                     ; $6df0: $77
	sbc  c                                           ; $6df1: $99
	xor  e                                           ; $6df2: $ab
	call z, $dece                                    ; $6df3: $cc $ce $de
	sbc  $fe                                         ; $6df6: $de $fe
	call z, $cbfc                                    ; $6df8: $cc $fc $cb
	cp   d                                           ; $6dfb: $ba
	cp   d                                           ; $6dfc: $ba
	adc  b                                           ; $6dfd: $88
	ld   [hl], l                                     ; $6dfe: $75
	ld   h, [hl]                                     ; $6dff: $66
	inc  sp                                          ; $6e00: $33
	ld   b, e                                        ; $6e01: $43
	ld   [hl+], a                                    ; $6e02: $22
	ld   de, $3211                                   ; $6e03: $11 $11 $32
	ld   bc, $6613                                   ; $6e06: $01 $13 $66
	ld   d, l                                        ; $6e09: $55
	ld   a, e                                        ; $6e0a: $7b
	cp   [hl]                                        ; $6e0b: $be
	call z, $ffde                                    ; $6e0c: $cc $de $ff
	xor  $ff                                         ; $6e0f: $ee $ff
	rst  $38                                         ; $6e11: $ff
	cp   $ec                                         ; $6e12: $fe $ec
	sbc  $cb                                         ; $6e14: $de $cb
	cp   b                                           ; $6e16: $b8
	adc  b                                           ; $6e17: $88
	add  [hl]                                        ; $6e18: $86
	ld   b, e                                        ; $6e19: $43
	inc  [hl]                                        ; $6e1a: $34
	ld   hl, $1111                                   ; $6e1b: $21 $11 $11
	ld   de, $1111                                   ; $6e1e: $11 $11 $11
	ld   [hl], $56                                   ; $6e21: $36 $56
	ld   l, d                                        ; $6e23: $6a
	xor  $ed                                         ; $6e24: $ee $ed
	rst  $28                                         ; $6e26: $ef
	rst  $38                                         ; $6e27: $ff
	rst  $38                                         ; $6e28: $ff
	rst  $38                                         ; $6e29: $ff
	rst  $38                                         ; $6e2a: $ff
	rst  $38                                         ; $6e2b: $ff
	db   $ed                                         ; $6e2c: $ed
	rst  JumpTable                                         ; $6e2d: $df
	call c, $a9aa                                    ; $6e2e: $dc $aa $a9
	and  a                                           ; $6e31: $a7
	ld   d, e                                        ; $6e32: $53
	ld   hl, $1111                                   ; $6e33: $21 $11 $11
	ld   de, $1111                                   ; $6e36: $11 $11 $11
	ld   de, $7616                                   ; $6e39: $11 $16 $76
	ld   e, d                                        ; $6e3c: $5a
	rst  $38                                         ; $6e3d: $ff
	rst  $38                                         ; $6e3e: $ff
	rst  $38                                         ; $6e3f: $ff
	rst  $38                                         ; $6e40: $ff
	rst  $38                                         ; $6e41: $ff
	xor  $ff                                         ; $6e42: $ee $ff
	rst  $38                                         ; $6e44: $ff
	call c, $dcdf                                    ; $6e45: $dc $df $dc
	ret                                              ; $6e48: $c9


	sbc  d                                           ; $6e49: $9a
	rst  ToBoot                                         ; $6e4a: $c7
	ld   b, d                                        ; $6e4b: $42
	ld   de, $1111                                   ; $6e4c: $11 $11 $11
	ld   de, $1111                                   ; $6e4f: $11 $11 $11
	ld   de, $986a                                   ; $6e52: $11 $6a $98
	adc  a                                           ; $6e55: $8f
	rst  $38                                         ; $6e56: $ff
	rst  $38                                         ; $6e57: $ff
	rst  $38                                         ; $6e58: $ff
	rst  $38                                         ; $6e59: $ff
	db   $fc                                         ; $6e5a: $fc
	xor  l                                           ; $6e5b: $ad
	rst  $38                                         ; $6e5c: $ff
	ld   [$ff9c], a                                  ; $6e5d: $ea $9c $ff
	res  7, e                                        ; $6e60: $cb $bb
	call z, $2196                                    ; $6e62: $cc $96 $21
	ld   de, $1111                                   ; $6e65: $11 $11 $11
	ld   de, $1111                                   ; $6e68: $11 $11 $11
	dec  d                                           ; $6e6b: $15
	db   $db                                         ; $6e6c: $db
	cp   d                                           ; $6e6d: $ba
	rst  $38                                         ; $6e6e: $ff
	rst  $38                                         ; $6e6f: $ff
	rst  $38                                         ; $6e70: $ff
	rst  $38                                         ; $6e71: $ff
	rst  $38                                         ; $6e72: $ff
	reti                                             ; $6e73: $d9


	xor  h                                           ; $6e74: $ac
	rst  $38                                         ; $6e75: $ff
	add  l                                           ; $6e76: $85
	sbc  l                                           ; $6e77: $9d
	cp   $ca                                         ; $6e78: $fe $ca
	ld   a, h                                        ; $6e7a: $7c
	db   $fc                                         ; $6e7b: $fc
	ld   d, c                                        ; $6e7c: $51
	ld   de, $1111                                   ; $6e7d: $11 $11 $11
	ld   de, $1111                                   ; $6e80: $11 $11 $11
	ld   de, $fbcf                                   ; $6e83: $11 $cf $fb
	rst  $38                                         ; $6e86: $ff
	rst  $38                                         ; $6e87: $ff
	rst  $38                                         ; $6e88: $ff
	rst  $38                                         ; $6e89: $ff
	rst  $38                                         ; $6e8a: $ff
	ld   a, [$bd68]                                  ; $6e8b: $fa $68 $bd
	push bc                                          ; $6e8e: $c5
	ld   e, b                                        ; $6e8f: $58
	rst  $28                                         ; $6e90: $ef
	db   $fd                                         ; $6e91: $fd
	adc  c                                           ; $6e92: $89
	sbc  $91                                         ; $6e93: $de $91
	ld   de, $1111                                   ; $6e95: $11 $11 $11
	ld   de, $1111                                   ; $6e98: $11 $11 $11
	ld   de, $ff8f                                   ; $6e9b: $11 $8f $ff
	rst  $38                                         ; $6e9e: $ff
	rst  $38                                         ; $6e9f: $ff
	rst  $38                                         ; $6ea0: $ff
	rst  $38                                         ; $6ea1: $ff
	rst  $38                                         ; $6ea2: $ff
	ei                                               ; $6ea3: $fb
	ld   b, h                                        ; $6ea4: $44
	ld   a, d                                        ; $6ea5: $7a
	jp   hl                                          ; $6ea6: $e9


	ld   h, a                                        ; $6ea7: $67
	cp   a                                           ; $6ea8: $bf
	rst  $38                                         ; $6ea9: $ff
	cp   b                                           ; $6eaa: $b8
	xor  h                                           ; $6eab: $ac
	or   h                                           ; $6eac: $b4
	ld   de, $1111                                   ; $6ead: $11 $11 $11
	ld   de, $1111                                   ; $6eb0: $11 $11 $11
	ld   de, $ff7f                                   ; $6eb3: $11 $7f $ff
	rst  $38                                         ; $6eb6: $ff
	rst  $38                                         ; $6eb7: $ff
	rst  $38                                         ; $6eb8: $ff
	rst  $38                                         ; $6eb9: $ff
	rst  $38                                         ; $6eba: $ff
	ld   sp, hl                                      ; $6ebb: $f9
	ld   b, c                                        ; $6ebc: $41
	ld   c, b                                        ; $6ebd: $48
	db   $db                                         ; $6ebe: $db
	adc  c                                           ; $6ebf: $89
	cp   a                                           ; $6ec0: $bf
	rst  $38                                         ; $6ec1: $ff
	db   $eb                                         ; $6ec2: $eb
	cp   e                                           ; $6ec3: $bb
	or   l                                           ; $6ec4: $b5
	ld   de, $1111                                   ; $6ec5: $11 $11 $11
	ld   de, $1111                                   ; $6ec8: $11 $11 $11
	inc  de                                          ; $6ecb: $13
	ld   a, a                                        ; $6ecc: $7f
	rst  $38                                         ; $6ecd: $ff
	rst  $38                                         ; $6ece: $ff
	rst  $38                                         ; $6ecf: $ff
	rst  $38                                         ; $6ed0: $ff
	rst  $38                                         ; $6ed1: $ff
	sbc  $d7                                         ; $6ed2: $de $d7
	ld   sp, $be26                                   ; $6ed4: $31 $26 $be
	cp   d                                           ; $6ed7: $ba
	rst  JumpTable                                         ; $6ed8: $df
	rst  $38                                         ; $6ed9: $ff
	db   $fd                                         ; $6eda: $fd
	xor  e                                           ; $6edb: $ab
	or   a                                           ; $6edc: $b7
	ld   de, $1111                                   ; $6edd: $11 $11 $11
	ld   de, $1111                                   ; $6ee0: $11 $11 $11
	inc  d                                           ; $6ee3: $14
	ld   a, a                                        ; $6ee4: $7f
	rst  $38                                         ; $6ee5: $ff
	rst  $38                                         ; $6ee6: $ff
	rst  $38                                         ; $6ee7: $ff
	rst  $38                                         ; $6ee8: $ff
	rst  $38                                         ; $6ee9: $ff
	adc  b                                           ; $6eea: $88
	and  [hl]                                        ; $6eeb: $a6
	ld   hl, $8f12                                   ; $6eec: $21 $12 $8f
	cp   $ff                                         ; $6eef: $fe $ff
	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	cp   b                                           ; $6ef3: $b8
	sub  a                                           ; $6ef4: $97
	ld   sp, $1111                                   ; $6ef5: $31 $11 $11
	ld   de, $1111                                   ; $6ef8: $11 $11 $11
	inc  de                                          ; $6efb: $13
	adc  h                                           ; $6efc: $8c
	rst  $38                                         ; $6efd: $ff
	rst  $38                                         ; $6efe: $ff
	rst  $38                                         ; $6eff: $ff
	rst  $38                                         ; $6f00: $ff
	rst  $38                                         ; $6f01: $ff
	and  l                                           ; $6f02: $a5
	ld   b, l                                        ; $6f03: $45
	ld   b, c                                        ; $6f04: $41
	ld   de, $ff5c                                   ; $6f05: $11 $5c $ff
	rst  $38                                         ; $6f08: $ff
	rst  $38                                         ; $6f09: $ff
	rst  $38                                         ; $6f0a: $ff
	ld   a, [$3155]                                  ; $6f0b: $fa $55 $31
	ld   de, $1111                                   ; $6f0e: $11 $11 $11
	ld   de, $1111                                   ; $6f11: $11 $11 $11
	adc  l                                           ; $6f14: $8d
	rst  $38                                         ; $6f15: $ff
	rst  $38                                         ; $6f16: $ff
	rst  $38                                         ; $6f17: $ff
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	db   $e4                                         ; $6f1a: $e4
	ld   [hl+], a                                    ; $6f1b: $22
	ld   bc, $3612                                   ; $6f1c: $01 $12 $36
	rst  $38                                         ; $6f1f: $ff
	rst  $38                                         ; $6f20: $ff
	rst  $38                                         ; $6f21: $ff
	rst  $38                                         ; $6f22: $ff
	rst  $38                                         ; $6f23: $ff
	and  [hl]                                        ; $6f24: $a6
	ld   hl, $1111                                   ; $6f25: $21 $11 $11
	ld   de, $1111                                   ; $6f28: $11 $11 $11
	ld   de, $ef59                                   ; $6f2b: $11 $59 $ef

jr_0be_6f2e:
	rst  $38                                         ; $6f2e: $ff
	rst  $38                                         ; $6f2f: $ff
	rst  $38                                         ; $6f30: $ff
	rst  $38                                         ; $6f31: $ff
	cp   $41                                         ; $6f32: $fe $41
	ld   de, $5512                                   ; $6f34: $11 $12 $55

jr_0be_6f37:
	ld   l, [hl]                                     ; $6f37: $6e
	rst  $38                                         ; $6f38: $ff
	rst  $38                                         ; $6f39: $ff
	rst  $38                                         ; $6f3a: $ff
	rst  $38                                         ; $6f3b: $ff
	db   $fd                                         ; $6f3c: $fd
	ld   [hl], c                                     ; $6f3d: $71
	ld   de, $1111                                   ; $6f3e: $11 $11 $11
	ld   de, $1111                                   ; $6f41: $11 $11 $11
	inc  d                                           ; $6f44: $14
	cp   [hl]                                        ; $6f45: $be
	rst  $38                                         ; $6f46: $ff
	rst  $38                                         ; $6f47: $ff
	rst  $38                                         ; $6f48: $ff
	rst  $38                                         ; $6f49: $ff
	rst  $38                                         ; $6f4a: $ff
	ret  z                                           ; $6f4b: $c8

	ld   de, $1411                                   ; $6f4c: $11 $11 $14
	ld   a, e                                        ; $6f4f: $7b
	rst  JumpTable                                         ; $6f50: $df
	rst  $38                                         ; $6f51: $ff
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	rst  $38                                         ; $6f54: $ff
	reti                                             ; $6f55: $d9


	ld   b, c                                        ; $6f56: $41
	ld   de, $1111                                   ; $6f57: $11 $11 $11
	ld   de, $1111                                   ; $6f5a: $11 $11 $11
	jr   c, jr_0be_6f2e                              ; $6f5d: $38 $cf

	rst  $38                                         ; $6f5f: $ff
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	rst  $38                                         ; $6f62: $ff
	ei                                               ; $6f63: $fb
	ld   [hl], l                                     ; $6f64: $75
	ld   hl, $2911                                   ; $6f65: $21 $11 $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f68: $cf
	rst  $38                                         ; $6f69: $ff
	rst  $38                                         ; $6f6a: $ff
	rst  $38                                         ; $6f6b: $ff
	rst  $38                                         ; $6f6c: $ff
	res  2, [hl]                                     ; $6f6d: $cb $96
	ld   b, c                                        ; $6f6f: $41
	ld   de, $1111                                   ; $6f70: $11 $11 $11
	ld   de, $1111                                   ; $6f73: $11 $11 $11
	jr   jr_0be_6f37                                 ; $6f76: $18 $bf

	rst  $38                                         ; $6f78: $ff
	rst  $38                                         ; $6f79: $ff
	rst  $38                                         ; $6f7a: $ff
	rst  $38                                         ; $6f7b: $ff
	jp   c, Jump_0be_5174                            ; $6f7c: $da $74 $51

	ld   de, $df18                                   ; $6f7f: $11 $18 $df
	rst  $38                                         ; $6f82: $ff
	rst  $38                                         ; $6f83: $ff
	rst  $38                                         ; $6f84: $ff
	rst  $38                                         ; $6f85: $ff
	or   l                                           ; $6f86: $b5
	ld   d, l                                        ; $6f87: $55
	ld   d, e                                        ; $6f88: $53
	ld   de, $1111                                   ; $6f89: $11 $11 $11
	ld   de, $1111                                   ; $6f8c: $11 $11 $11
	ld   de, $ff7b                                   ; $6f8f: $11 $7b $ff
	rst  $38                                         ; $6f92: $ff
	rst  $38                                         ; $6f93: $ff
	rst  $38                                         ; $6f94: $ff
	ld   a, [$1464]                                  ; $6f95: $fa $64 $14
	ld   de, $9f12                                   ; $6f98: $11 $12 $9f
	rst  $38                                         ; $6f9b: $ff
	rst  $38                                         ; $6f9c: $ff
	rst  $38                                         ; $6f9d: $ff
	rst  $38                                         ; $6f9e: $ff
	ld   sp, hl                                      ; $6f9f: $f9
	ld   hl, $6634                                   ; $6fa0: $21 $34 $66
	inc  sp                                          ; $6fa3: $33
	inc  [hl]                                        ; $6fa4: $34
	ld   hl, $1111                                   ; $6fa5: $21 $11 $11
	ld   de, $ae11                                   ; $6fa8: $11 $11 $ae
	rst  $38                                         ; $6fab: $ff
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	rst  $38                                         ; $6fae: $ff
	push hl                                          ; $6faf: $e5
	ld   de, $1111                                   ; $6fb0: $11 $11 $11
	jr   c, @+$01                                    ; $6fb3: $38 $ff

	rst  $38                                         ; $6fb5: $ff
	rst  $38                                         ; $6fb6: $ff
	rst  $38                                         ; $6fb7: $ff
	db   $fd                                         ; $6fb8: $fd
	sub  e                                           ; $6fb9: $93
	ld   de, $aa26                                   ; $6fba: $11 $26 $aa
	cp   d                                           ; $6fbd: $ba
	sbc  c                                           ; $6fbe: $99
	ld   d, c                                        ; $6fbf: $51
	ld   de, $1111                                   ; $6fc0: $11 $11 $11
	ld   de, $ff6f                                   ; $6fc3: $11 $6f $ff
	rst  $38                                         ; $6fc6: $ff
	rst  $38                                         ; $6fc7: $ff
	rst  $38                                         ; $6fc8: $ff
	and  d                                           ; $6fc9: $a2
	ld   de, $1111                                   ; $6fca: $11 $11 $11
	ld   e, d                                        ; $6fcd: $5a
	rst  $38                                         ; $6fce: $ff
	rst  $38                                         ; $6fcf: $ff
	rst  $38                                         ; $6fd0: $ff
	ld   a, [$3196]                                  ; $6fd1: $fa $96 $31
	ld   de, $ff39                                   ; $6fd4: $11 $39 $ff
	rst  $38                                         ; $6fd7: $ff
	db   $ed                                         ; $6fd8: $ed
	sub  h                                           ; $6fd9: $94
	ld   de, $1111                                   ; $6fda: $11 $11 $11
	ld   de, $ff16                                   ; $6fdd: $11 $16 $ff
	rst  $38                                         ; $6fe0: $ff
	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	pop  af                                          ; $6fe3: $f1
	ld   de, $1711                                   ; $6fe4: $11 $11 $17
	xor  l                                           ; $6fe7: $ad
	rst  $38                                         ; $6fe8: $ff
	rst  $38                                         ; $6fe9: $ff
	rst  $38                                         ; $6fea: $ff
	push hl                                          ; $6feb: $e5
	ld   de, $1311                                   ; $6fec: $11 $11 $13
	ld   e, e                                        ; $6fef: $5b
	rst  $38                                         ; $6ff0: $ff
	rst  $38                                         ; $6ff1: $ff
	rst  $38                                         ; $6ff2: $ff
	rst  ToBoot                                         ; $6ff3: $c7
	ld   de, $1111                                   ; $6ff4: $11 $11 $11
	ld   de, $1411                                   ; $6ff7: $11 $11 $14
	rst  $38                                         ; $6ffa: $ff
	rst  $38                                         ; $6ffb: $ff
	rst  $38                                         ; $6ffc: $ff
	rst  $38                                         ; $6ffd: $ff
	pop  bc                                          ; $6ffe: $c1
	ld   de, $3f11                                   ; $6fff: $11 $11 $3f
	rst  $38                                         ; $7002: $ff
	rst  $38                                         ; $7003: $ff
	rst  $38                                         ; $7004: $ff
	rst  $38                                         ; $7005: $ff
	ld   h, c                                        ; $7006: $61
	ld   de, $9e11                                   ; $7007: $11 $11 $9e
	rst  $38                                         ; $700a: $ff
	rst  $38                                         ; $700b: $ff
	rst  $38                                         ; $700c: $ff
	db   $fd                                         ; $700d: $fd
	ld   d, d                                        ; $700e: $52
	ld   de, $1111                                   ; $700f: $11 $11 $11
	ld   de, $1111                                   ; $7012: $11 $11 $11
	ld   e, $ff                                      ; $7015: $1e $ff
	rst  $38                                         ; $7017: $ff
	ld   a, [$71ac]                                  ; $7018: $fa $ac $71
	ld   de, $ff16                                   ; $701b: $11 $16 $ff
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	cp   $c7                                         ; $7020: $fe $c7
	ld   de, $4a11                                   ; $7022: $11 $11 $4a
	rst  $28                                         ; $7025: $ef
	rst  $38                                         ; $7026: $ff
	rst  $38                                         ; $7027: $ff
	rst  $38                                         ; $7028: $ff
	rst  ToBoot                                         ; $7029: $c7
	ld   d, e                                        ; $702a: $53
	ld   de, $1111                                   ; $702b: $11 $11 $11
	ld   de, $1111                                   ; $702e: $11 $11 $11
	inc  d                                           ; $7031: $14
	rst  $38                                         ; $7032: $ff
	rst  $38                                         ; $7033: $ff
	cp   $ad                                         ; $7034: $fe $ad
	or   c                                           ; $7036: $b1
	ld   de, $cf14                                   ; $7037: $11 $14 $cf
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	rst  $38                                         ; $703c: $ff
	ret  z                                           ; $703d: $c8

	ld   hl, $4912                                   ; $703e: $21 $12 $49
	rst  JumpTable                                         ; $7041: $df
	rst  $38                                         ; $7042: $ff
	rst  $38                                         ; $7043: $ff
	rst  $38                                         ; $7044: $ff
	reti                                             ; $7045: $d9


	ld   h, h                                        ; $7046: $64
	ld   hl, $1111                                   ; $7047: $21 $11 $11
	ld   de, $1111                                   ; $704a: $11 $11 $11
	ld   de, $ff1f                                   ; $704d: $11 $1f $ff
	rst  $38                                         ; $7050: $ff
	res  7, l                                        ; $7051: $cb $bd
	ld   hl, $4c11                                   ; $7053: $21 $11 $4c
	rst  $38                                         ; $7056: $ff
	rst  $38                                         ; $7057: $ff
	rst  $38                                         ; $7058: $ff
	db   $fc                                         ; $7059: $fc
	add  d                                           ; $705a: $82
	ld   de, $9b36                                   ; $705b: $11 $36 $9b
	rst  $28                                         ; $705e: $ef
	rst  $38                                         ; $705f: $ff
	rst  $38                                         ; $7060: $ff
	ei                                               ; $7061: $fb
	sub  a                                           ; $7062: $97
	ld   d, e                                        ; $7063: $53
	ld   de, $1111                                   ; $7064: $11 $11 $11
	ld   de, $1111                                   ; $7067: $11 $11 $11
	ld   de, $ff1e                                   ; $706a: $11 $1e $ff
	rst  $38                                         ; $706d: $ff
	db   $eb                                         ; $706e: $eb
	cp   e                                           ; $706f: $bb
	ld   hl, $6e11                                   ; $7070: $21 $11 $6e
	rst  $38                                         ; $7073: $ff
	rst  $38                                         ; $7074: $ff
	rst  $38                                         ; $7075: $ff
	call c, $1181                                    ; $7076: $dc $81 $11
	ld   e, c                                        ; $7079: $59
	adc  $ff                                         ; $707a: $ce $ff
	rst  $38                                         ; $707c: $ff
	rst  $38                                         ; $707d: $ff
	reti                                             ; $707e: $d9


	ld   h, [hl]                                     ; $707f: $66
	ld   h, l                                        ; $7080: $65
	ld   b, e                                        ; $7081: $43
	ld   b, h                                        ; $7082: $44
	inc  [hl]                                        ; $7083: $34
	ld   hl, $1111                                   ; $7084: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $7087: $11 $11 $ff
	rst  $38                                         ; $708a: $ff
	rst  $38                                         ; $708b: $ff
	ret                                              ; $708c: $c9


	and  c                                           ; $708d: $a1
	ld   de, $ef18                                   ; $708e: $11 $18 $ef
	rst  $38                                         ; $7091: $ff
	rst  $38                                         ; $7092: $ff
	db   $ec                                         ; $7093: $ec
	sub  a                                           ; $7094: $97
	ld   hl, $cd37                                   ; $7095: $21 $37 $cd
	db   $dd                                         ; $7098: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7099: $cf
	rst  $38                                         ; $709a: $ff
	db   $fd                                         ; $709b: $fd
	sub  [hl]                                        ; $709c: $96
	ld   l, b                                        ; $709d: $68
	sub  a                                           ; $709e: $97
	ld   h, a                                        ; $709f: $67
	ld   d, h                                        ; $70a0: $54
	ld   d, e                                        ; $70a1: $53

jr_0be_70a2:
	ld   de, $1111                                   ; $70a2: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $70a5: $11 $11 $ff
	rst  $38                                         ; $70a8: $ff
	db   $fd                                         ; $70a9: $fd
	add  l                                           ; $70aa: $85
	ld   h, c                                        ; $70ab: $61
	ld   de, $ff2b                                   ; $70ac: $11 $2b $ff
	rst  $38                                         ; $70af: $ff
	rst  $38                                         ; $70b0: $ff
	cp   d                                           ; $70b1: $ba
	ld   [hl], h                                     ; $70b2: $74
	ld   de, $df38                                   ; $70b3: $11 $38 $df
	db   $ed                                         ; $70b6: $ed
	adc  $ff                                         ; $70b7: $ce $ff
	db   $fc                                         ; $70b9: $fc
	sub  a                                           ; $70ba: $97
	ld   a, b                                        ; $70bb: $78
	xor  c                                           ; $70bc: $a9
	halt                                             ; $70bd: $76
	ld   d, h                                        ; $70be: $54
	ld   d, h                                        ; $70bf: $54
	ld   hl, $1111                                   ; $70c0: $21 $11 $11
	ld   de, $4f11                                   ; $70c3: $11 $11 $4f
	rst  $38                                         ; $70c6: $ff
	rst  $38                                         ; $70c7: $ff
	and  [hl]                                        ; $70c8: $a6
	ld   h, [hl]                                     ; $70c9: $66
	ld   de, $ef16                                   ; $70ca: $11 $16 $ef
	rst  $38                                         ; $70cd: $ff
	db   $fc                                         ; $70ce: $fc
	xor  d                                           ; $70cf: $aa
	sub  a                                           ; $70d0: $97
	ld   d, d                                        ; $70d1: $52
	jr   c, jr_0be_70a2                              ; $70d2: $38 $ce

	cp   $aa                                         ; $70d4: $fe $aa
	cp   h                                           ; $70d6: $bc
	res  5, c                                        ; $70d7: $cb $a9
	sbc  c                                           ; $70d9: $99
	cp   e                                           ; $70da: $bb
	cp   c                                           ; $70db: $b9
	halt                                             ; $70dc: $76
	ld   d, h                                        ; $70dd: $54
	ld   sp, $1111                                   ; $70de: $31 $11 $11
	ld   de, $1111                                   ; $70e1: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70e4: $cf
	rst  $38                                         ; $70e5: $ff
	ld   a, [$6454]                                  ; $70e6: $fa $54 $64
	ld   de, $ff4b                                   ; $70e9: $11 $4b $ff
	rst  $38                                         ; $70ec: $ff
	cp   c                                           ; $70ed: $b9
	xor  c                                           ; $70ee: $a9
	add  a                                           ; $70ef: $87
	ld   b, e                                        ; $70f0: $43
	ld   a, d                                        ; $70f1: $7a
	rst  $28                                         ; $70f2: $ef
	db   $ed                                         ; $70f3: $ed
	sbc  c                                           ; $70f4: $99
	cp   e                                           ; $70f5: $bb
	res  5, d                                        ; $70f6: $cb $aa
	sbc  e                                           ; $70f8: $9b
	res  2, a                                        ; $70f9: $cb $97
	ld   h, l                                        ; $70fb: $65
	ld   d, l                                        ; $70fc: $55
	ld   [hl-], a                                    ; $70fd: $32
	ld   de, $1111                                   ; $70fe: $11 $11 $11
	ld   de, $df11                                   ; $7101: $11 $11 $df
	rst  $38                                         ; $7104: $ff
	ld   a, [$7364]                                  ; $7105: $fa $64 $73
	ld   [de], a                                     ; $7108: $12
	ld   a, h                                        ; $7109: $7c
	rst  $38                                         ; $710a: $ff
	rst  $38                                         ; $710b: $ff
	res  5, d                                        ; $710c: $cb $aa
	adc  b                                           ; $710e: $88
	ld   b, e                                        ; $710f: $43
	sbc  e                                           ; $7110: $9b
	sbc  $cc                                         ; $7111: $de $cc
	sbc  d                                           ; $7113: $9a
	cp   e                                           ; $7114: $bb
	xor  d                                           ; $7115: $aa
	xor  d                                           ; $7116: $aa
	cp   h                                           ; $7117: $bc
	cp   e                                           ; $7118: $bb
	xor  b                                           ; $7119: $a8
	ld   [hl], l                                     ; $711a: $75
	ld   d, l                                        ; $711b: $55
	ld   b, d                                        ; $711c: $42
	ld   de, $1111                                   ; $711d: $11 $11 $11
	ld   de, $5f11                                   ; $7120: $11 $11 $5f
	rst  $38                                         ; $7123: $ff
	ei                                               ; $7124: $fb
	ld   h, e                                        ; $7125: $63
	ld   [hl], a                                     ; $7126: $77
	inc  sp                                          ; $7127: $33
	ld   e, e                                        ; $7128: $5b
	rst  $38                                         ; $7129: $ff
	rst  $38                                         ; $712a: $ff
	xor  c                                           ; $712b: $a9
	xor  c                                           ; $712c: $a9
	sbc  c                                           ; $712d: $99
	ld   d, h                                        ; $712e: $54
	ld   a, d                                        ; $712f: $7a
	db   $ec                                         ; $7130: $ec
	call c, $a89a                                    ; $7131: $dc $9a $a8
	sbc  c                                           ; $7134: $99
	cp   h                                           ; $7135: $bc
	adc  $cb                                         ; $7136: $ce $cb
	sbc  b                                           ; $7138: $98
	halt                                             ; $7139: $76
	ld   d, l                                        ; $713a: $55
	ld   b, d                                        ; $713b: $42
	ld   [hl-], a                                    ; $713c: $32
	ld   de, $1111                                   ; $713d: $11 $11 $11
	ld   de, $ff1c                                   ; $7140: $11 $1c $ff
	cp   $b5                                         ; $7143: $fe $b5
	ld   b, a                                        ; $7145: $47
	ld   b, c                                        ; $7146: $41
	daa                                              ; $7147: $27
	rst  $28                                         ; $7148: $ef
	rst  $38                                         ; $7149: $ff
	reti                                             ; $714a: $d9


	xor  e                                           ; $714b: $ab
	xor  c                                           ; $714c: $a9
	ld   h, l                                        ; $714d: $65
	ld   l, d                                        ; $714e: $6a
	call $b8cb                                       ; $714f: $cd $cb $b8
	xor  e                                           ; $7152: $ab
	sbc  d                                           ; $7153: $9a
	cp   e                                           ; $7154: $bb
	cp   h                                           ; $7155: $bc
	cp   h                                           ; $7156: $bc
	sbc  b                                           ; $7157: $98
	add  [hl]                                        ; $7158: $86
	ld   b, [hl]                                     ; $7159: $46
	ld   d, h                                        ; $715a: $54
	ld   b, e                                        ; $715b: $43
	ld   de, $1111                                   ; $715c: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $715f: $11 $14 $ff
	rst  $38                                         ; $7162: $ff
	rst  ToBoot                                         ; $7163: $c7
	inc  [hl]                                        ; $7164: $34
	ld   h, c                                        ; $7165: $61
	dec  d                                           ; $7166: $15
	cp   a                                           ; $7167: $bf
	rst  $38                                         ; $7168: $ff
	ld   a, [$b99a]                                  ; $7169: $fa $9a $b9
	add  [hl]                                        ; $716c: $86
	ld   d, a                                        ; $716d: $57
	call z, $badb                                    ; $716e: $cc $db $ba
	sbc  h                                           ; $7171: $9c
	xor  d                                           ; $7172: $aa
	xor  c                                           ; $7173: $a9
	cp   d                                           ; $7174: $ba
	res  5, d                                        ; $7175: $cb $aa
	sub  a                                           ; $7177: $97
	ld   [hl], l                                     ; $7178: $75
	ld   d, h                                        ; $7179: $54
	inc  sp                                          ; $717a: $33
	ld   hl, $1111                                   ; $717b: $21 $11 $11
	ld   de, $2f11                                   ; $717e: $11 $11 $2f
	rst  $38                                         ; $7181: $ff
	db   $fc                                         ; $7182: $fc
	add  h                                           ; $7183: $84
	ld   b, l                                        ; $7184: $45
	ld   [hl+], a                                    ; $7185: $22
	ld   l, h                                        ; $7186: $6c
	rst  $38                                         ; $7187: $ff
	cp   $b9                                         ; $7188: $fe $b9
	sbc  c                                           ; $718a: $99
	sub  a                                           ; $718b: $97
	ld   [hl], a                                     ; $718c: $77
	adc  e                                           ; $718d: $8b
	call c, $9adb                                    ; $718e: $dc $db $9a
	xor  e                                           ; $7191: $ab
	sbc  c                                           ; $7192: $99
	xor  d                                           ; $7193: $aa
	xor  h                                           ; $7194: $ac
	cp   c                                           ; $7195: $b9
	adc  c                                           ; $7196: $89
	sbc  b                                           ; $7197: $98
	ld   [hl], l                                     ; $7198: $75
	ld   b, h                                        ; $7199: $44
	inc  sp                                          ; $719a: $33
	ld   de, $1111                                   ; $719b: $11 $11 $11
	ld   de, $df11                                   ; $719e: $11 $11 $df
	rst  $38                                         ; $71a1: $ff
	ld   sp, hl                                      ; $71a2: $f9
	ld   d, h                                        ; $71a3: $54
	ld   d, e                                        ; $71a4: $53
	ld   b, a                                        ; $71a5: $47
	xor  [hl]                                        ; $71a6: $ae
	rst  $38                                         ; $71a7: $ff
	ei                                               ; $71a8: $fb
	xor  d                                           ; $71a9: $aa
	sbc  c                                           ; $71aa: $99
	xor  c                                           ; $71ab: $a9
	ld   a, b                                        ; $71ac: $78
	cp   e                                           ; $71ad: $bb
	xor  h                                           ; $71ae: $ac
	xor  d                                           ; $71af: $aa
	cp   d                                           ; $71b0: $ba
	call z, $98ab                                    ; $71b1: $cc $ab $98
	cp   e                                           ; $71b4: $bb
	xor  d                                           ; $71b5: $aa
	xor  c                                           ; $71b6: $a9
	sub  a                                           ; $71b7: $97
	ld   h, l                                        ; $71b8: $65
	inc  [hl]                                        ; $71b9: $34
	ld   d, e                                        ; $71ba: $53
	ld   de, $1111                                   ; $71bb: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $71be: $11 $13 $ff
	rst  $38                                         ; $71c1: $ff
	cp   c                                           ; $71c2: $b9
	ld   h, [hl]                                     ; $71c3: $66
	ld   h, d                                        ; $71c4: $62
	daa                                              ; $71c5: $27
	rst  JumpTable                                         ; $71c6: $df
	rst  $38                                         ; $71c7: $ff
	call c, $a7aa                                    ; $71c8: $dc $aa $a7
	ld   [hl], a                                     ; $71cb: $77
	ld   a, h                                        ; $71cc: $7c
	call z, $99ca                                    ; $71cd: $cc $ca $99
	sbc  e                                           ; $71d0: $9b
	sbc  d                                           ; $71d1: $9a
	call z, $b9bb                                    ; $71d2: $cc $bb $b9
	adc  c                                           ; $71d5: $89
	xor  c                                           ; $71d6: $a9
	add  a                                           ; $71d7: $87
	ld   d, h                                        ; $71d8: $54
	ld   h, l                                        ; $71d9: $65
	inc  sp                                          ; $71da: $33
	ld   de, $1101                                   ; $71db: $11 $01 $11
	ld   de, $ef11                                   ; $71de: $11 $11 $ef
	rst  $38                                         ; $71e1: $ff
	rst  $10                                         ; $71e2: $d7
	ld   h, a                                        ; $71e3: $67
	ld   d, e                                        ; $71e4: $53
	inc  h                                           ; $71e5: $24
	rst  JumpTable                                         ; $71e6: $df
	rst  $38                                         ; $71e7: $ff
	db   $db                                         ; $71e8: $db
	xor  c                                           ; $71e9: $a9
	sbc  d                                           ; $71ea: $9a
	adc  b                                           ; $71eb: $88
	sbc  e                                           ; $71ec: $9b
	call $a799                                       ; $71ed: $cd $99 $a7
	xor  e                                           ; $71f0: $ab
	res  5, e                                        ; $71f1: $cb $ab
	res  5, c                                        ; $71f3: $cb $a9
	ld   [hl], a                                     ; $71f5: $77
	adc  c                                           ; $71f6: $89
	cp   d                                           ; $71f7: $ba
	ld   [hl], a                                     ; $71f8: $77
	ld   b, e                                        ; $71f9: $43
	ld   [hl-], a                                    ; $71fa: $32
	ld   [hl+], a                                    ; $71fb: $22
	ld   de, $1111                                   ; $71fc: $11 $11 $11
	ld   de, $ff6d                                   ; $71ff: $11 $6d $ff
	db   $fd                                         ; $7202: $fd
	add  l                                           ; $7203: $85
	ld   h, e                                        ; $7204: $63
	ld   [hl], $9d                                   ; $7205: $36 $9d
	rst  $38                                         ; $7207: $ff
	cp   $b9                                         ; $7208: $fe $b9
	ld   [hl], a                                     ; $720a: $77
	adc  d                                           ; $720b: $8a
	xor  e                                           ; $720c: $ab
	call z, $99d9                                    ; $720d: $cc $d9 $99
	ld   a, d                                        ; $7210: $7a
	res  7, h                                        ; $7211: $cb $bc
	jp   z, Jump_0be_7798                            ; $7213: $ca $98 $77

	sbc  e                                           ; $7216: $9b
	sbc  c                                           ; $7217: $99
	add  a                                           ; $7218: $87
	ld   h, l                                        ; $7219: $65
	ld   d, e                                        ; $721a: $53
	inc  de                                          ; $721b: $13
	ld   sp, $1111                                   ; $721c: $31 $11 $11
	ld   de, $cf11                                   ; $721f: $11 $11 $cf
	rst  $38                                         ; $7222: $ff
	jp   hl                                          ; $7223: $e9


	ld   d, l                                        ; $7224: $55
	ld   h, l                                        ; $7225: $65
	ld   e, c                                        ; $7226: $59
	cp   l                                           ; $7227: $bd
	rst  $38                                         ; $7228: $ff
	db   $fc                                         ; $7229: $fc
	adc  b                                           ; $722a: $88
	ld   a, b                                        ; $722b: $78
	xor  d                                           ; $722c: $aa
	xor  d                                           ; $722d: $aa
	call c, $98aa                                    ; $722e: $dc $aa $98
	sbc  e                                           ; $7231: $9b
	call c, $a7cb                                    ; $7232: $dc $cb $a7
	sbc  b                                           ; $7235: $98
	adc  d                                           ; $7236: $8a
	cp   e                                           ; $7237: $bb
	sbc  c                                           ; $7238: $99
	add  l                                           ; $7239: $85
	ld   b, h                                        ; $723a: $44
	ld   [hl-], a                                    ; $723b: $32
	ld   [hl+], a                                    ; $723c: $22
	ld   sp, $1111                                   ; $723d: $31 $11 $11
	ld   de, $ef18                                   ; $7240: $11 $18 $ef
	rst  $38                                         ; $7243: $ff
	and  h                                           ; $7244: $a4
	ld   e, b                                        ; $7245: $58
	ld   h, a                                        ; $7246: $67
	adc  e                                           ; $7247: $8b
	rst  $38                                         ; $7248: $ff
	rst  $38                                         ; $7249: $ff
	xor  b                                           ; $724a: $a8
	ld   a, b                                        ; $724b: $78
	sbc  e                                           ; $724c: $9b
	cp   d                                           ; $724d: $ba
	res  7, d                                        ; $724e: $cb $ba
	sbc  b                                           ; $7250: $98
	adc  c                                           ; $7251: $89
	call z, $bacc                                    ; $7252: $cc $cc $ba
	sub  a                                           ; $7255: $97
	sbc  d                                           ; $7256: $9a
	ld   a, d                                        ; $7257: $7a
	xor  b                                           ; $7258: $a8
	sbc  b                                           ; $7259: $98
	ld   d, h                                        ; $725a: $54
	ld   b, l                                        ; $725b: $45
	ld   b, e                                        ; $725c: $43
	ld   hl, $1112                                   ; $725d: $21 $12 $11
	ld   de, $7d11                                   ; $7260: $11 $11 $7d
	db   $fd                                         ; $7263: $fd
	cp   d                                           ; $7264: $ba
	ld   a, d                                        ; $7265: $7a
	sub  [hl]                                        ; $7266: $96
	ld   h, [hl]                                     ; $7267: $66
	xor  [hl]                                        ; $7268: $ae
	rst  $38                                         ; $7269: $ff
	jp   c, $aaaa                                    ; $726a: $da $aa $aa

	xor  d                                           ; $726d: $aa
	cp   d                                           ; $726e: $ba
	cp   e                                           ; $726f: $bb
	sbc  d                                           ; $7270: $9a
	xor  b                                           ; $7271: $a8
	xor  e                                           ; $7272: $ab
	xor  e                                           ; $7273: $ab
	cp   d                                           ; $7274: $ba
	xor  c                                           ; $7275: $a9
	xor  c                                           ; $7276: $a9
	adc  e                                           ; $7277: $8b
	sub  a                                           ; $7278: $97
	add  a                                           ; $7279: $87
	ld   h, a                                        ; $727a: $67
	ld   h, l                                        ; $727b: $65
	ld   h, h                                        ; $727c: $64
	ld   b, e                                        ; $727d: $43
	inc  de                                          ; $727e: $13
	ld   hl, $1111                                   ; $727f: $21 $11 $11
	inc  sp                                          ; $7282: $33
	adc  c                                           ; $7283: $89
	sbc  h                                           ; $7284: $9c
	xor  d                                           ; $7285: $aa
	sub  a                                           ; $7286: $97
	sub  a                                           ; $7287: $97
	ld   a, h                                        ; $7288: $7c
	cp   h                                           ; $7289: $bc
	db   $db                                         ; $728a: $db
	call z, $99bc                                    ; $728b: $cc $bc $99
	xor  d                                           ; $728e: $aa
	cp   h                                           ; $728f: $bc
	sbc  c                                           ; $7290: $99
	sbc  b                                           ; $7291: $98
	cp   h                                           ; $7292: $bc
	xor  e                                           ; $7293: $ab
	xor  b                                           ; $7294: $a8
	cp   d                                           ; $7295: $ba
	sbc  d                                           ; $7296: $9a
	adc  c                                           ; $7297: $89
	sub  a                                           ; $7298: $97
	adc  b                                           ; $7299: $88
	adc  b                                           ; $729a: $88
	halt                                             ; $729b: $76
	ld   h, [hl]                                     ; $729c: $66
	ld   d, h                                        ; $729d: $54
	inc  [hl]                                        ; $729e: $34
	ld   [hl-], a                                    ; $729f: $32
	ld   d, c                                        ; $72a0: $51
	ld   de, $2512                                   ; $72a1: $11 $12 $25
	xor  c                                           ; $72a4: $a9
	cp   h                                           ; $72a5: $bc
	and  a                                           ; $72a6: $a7
	ld   a, b                                        ; $72a7: $78
	ld   l, b                                        ; $72a8: $68
	xor  e                                           ; $72a9: $ab
	call z, $bceb                                    ; $72aa: $cc $eb $bc
	sbc  c                                           ; $72ad: $99
	sbc  c                                           ; $72ae: $99
	cp   h                                           ; $72af: $bc
	res  1, c                                        ; $72b0: $cb $89
	sbc  b                                           ; $72b2: $98
	xor  d                                           ; $72b3: $aa
	xor  d                                           ; $72b4: $aa
	sbc  e                                           ; $72b5: $9b
	xor  b                                           ; $72b6: $a8
	sbc  b                                           ; $72b7: $98
	adc  c                                           ; $72b8: $89
	sbc  d                                           ; $72b9: $9a
	adc  b                                           ; $72ba: $88
	ld   h, l                                        ; $72bb: $65
	ld   h, [hl]                                     ; $72bc: $66
	ld   d, a                                        ; $72bd: $57
	ld   h, h                                        ; $72be: $64
	ld   h, l                                        ; $72bf: $65
	ld   b, e                                        ; $72c0: $43
	inc  sp                                          ; $72c1: $33
	ld   de, $4712                                   ; $72c2: $11 $12 $47
	sbc  c                                           ; $72c5: $99
	xor  d                                           ; $72c6: $aa
	sbc  c                                           ; $72c7: $99
	sub  a                                           ; $72c8: $97
	ld   h, a                                        ; $72c9: $67
	adc  c                                           ; $72ca: $89
	cp   l                                           ; $72cb: $bd
	call c, $abac                                    ; $72cc: $dc $ac $ab
	cp   c                                           ; $72cf: $b9
	xor  d                                           ; $72d0: $aa
	sbc  h                                           ; $72d1: $9c
	xor  b                                           ; $72d2: $a8
	xor  b                                           ; $72d3: $a8
	sbc  h                                           ; $72d4: $9c
	xor  d                                           ; $72d5: $aa
	cp   d                                           ; $72d6: $ba
	cp   b                                           ; $72d7: $b8
	ld   a, c                                        ; $72d8: $79
	ld   l, c                                        ; $72d9: $69
	xor  c                                           ; $72da: $a9
	xor  b                                           ; $72db: $a8
	ld   [hl], a                                     ; $72dc: $77
	ld   h, l                                        ; $72dd: $65
	ld   h, l                                        ; $72de: $65
	ld   h, [hl]                                     ; $72df: $66
	ld   h, a                                        ; $72e0: $67
	ld   h, h                                        ; $72e1: $64
	ld   [hl-], a                                    ; $72e2: $32
	inc  [hl]                                        ; $72e3: $34
	ld   de, $7b35                                   ; $72e4: $11 $35 $7b
	xor  c                                           ; $72e7: $a9
	sub  a                                           ; $72e8: $97
	sbc  b                                           ; $72e9: $98
	ld   l, b                                        ; $72ea: $68
	ld   l, c                                        ; $72eb: $69
	jp   z, $9dcc                                    ; $72ec: $ca $cc $9d

	xor  c                                           ; $72ef: $a9
	cp   d                                           ; $72f0: $ba
	xor  e                                           ; $72f1: $ab
	xor  e                                           ; $72f2: $ab
	xor  c                                           ; $72f3: $a9
	cp   b                                           ; $72f4: $b8
	adc  d                                           ; $72f5: $8a
	adc  c                                           ; $72f6: $89
	cp   b                                           ; $72f7: $b8
	xor  d                                           ; $72f8: $aa
	adc  c                                           ; $72f9: $89
	ld   [hl], a                                     ; $72fa: $77
	sub  a                                           ; $72fb: $97
	sbc  c                                           ; $72fc: $99
	ld   a, b                                        ; $72fd: $78
	ld   h, a                                        ; $72fe: $67
	add  a                                           ; $72ff: $87
	add  [hl]                                        ; $7300: $86
	ld   b, l                                        ; $7301: $45
	ld   d, [hl]                                     ; $7302: $56
	ld   h, h                                        ; $7303: $64
	ld   b, l                                        ; $7304: $45
	ld   [hl-], a                                    ; $7305: $32
	ld   b, h                                        ; $7306: $44
	ld   b, a                                        ; $7307: $47
	adc  c                                           ; $7308: $89
	add  a                                           ; $7309: $87
	add  a                                           ; $730a: $87
	ld   a, b                                        ; $730b: $78
	sbc  c                                           ; $730c: $99
	ld   a, h                                        ; $730d: $7c
	cp   d                                           ; $730e: $ba
	ret                                              ; $730f: $c9


	sbc  d                                           ; $7310: $9a
	xor  e                                           ; $7311: $ab
	cp   c                                           ; $7312: $b9
	sbc  c                                           ; $7313: $99
	adc  e                                           ; $7314: $8b
	sbc  d                                           ; $7315: $9a
	cp   c                                           ; $7316: $b9
	sbc  e                                           ; $7317: $9b
	sbc  c                                           ; $7318: $99
	ld   [hl], a                                     ; $7319: $77
	sbc  c                                           ; $731a: $99
	xor  b                                           ; $731b: $a8
	adc  c                                           ; $731c: $89
	ld   a, c                                        ; $731d: $79
	sbc  b                                           ; $731e: $98
	adc  b                                           ; $731f: $88
	add  a                                           ; $7320: $87
	ld   h, [hl]                                     ; $7321: $66
	ld   h, l                                        ; $7322: $65
	ld   d, [hl]                                     ; $7323: $56
	ld   h, [hl]                                     ; $7324: $66
	ld   h, l                                        ; $7325: $65
	ld   d, h                                        ; $7326: $54
	ld   b, l                                        ; $7327: $45
	ld   d, [hl]                                     ; $7328: $56
	ld   [hl], a                                     ; $7329: $77
	ld   h, a                                        ; $732a: $67
	add  a                                           ; $732b: $87
	ld   h, a                                        ; $732c: $67
	adc  d                                           ; $732d: $8a
	adc  c                                           ; $732e: $89
	sub  a                                           ; $732f: $97
	adc  e                                           ; $7330: $8b
	xor  c                                           ; $7331: $a9
	sbc  c                                           ; $7332: $99
	cp   e                                           ; $7333: $bb
	sbc  d                                           ; $7334: $9a
	adc  d                                           ; $7335: $8a
	xor  c                                           ; $7336: $a9
	xor  c                                           ; $7337: $a9
	sbc  c                                           ; $7338: $99
	sbc  c                                           ; $7339: $99
	adc  c                                           ; $733a: $89
	sbc  d                                           ; $733b: $9a
	sbc  c                                           ; $733c: $99
	adc  b                                           ; $733d: $88
	sbc  b                                           ; $733e: $98
	sub  a                                           ; $733f: $97
	sbc  b                                           ; $7340: $98
	ld   a, b                                        ; $7341: $78
	halt                                             ; $7342: $76
	ld   h, l                                        ; $7343: $65
	ld   h, [hl]                                     ; $7344: $66
	ld   a, b                                        ; $7345: $78
	ld   h, [hl]                                     ; $7346: $66
	ld   h, [hl]                                     ; $7347: $66
	halt                                             ; $7348: $76
	ld   d, h                                        ; $7349: $54
	ld   d, a                                        ; $734a: $57
	ld   d, l                                        ; $734b: $55
	ld   h, a                                        ; $734c: $67
	adc  c                                           ; $734d: $89
	sub  [hl]                                        ; $734e: $96
	sub  a                                           ; $734f: $97
	adc  c                                           ; $7350: $89
	ld   l, d                                        ; $7351: $6a
	xor  d                                           ; $7352: $aa
	ret                                              ; $7353: $c9


	sbc  b                                           ; $7354: $98
	adc  h                                           ; $7355: $8c
	ret                                              ; $7356: $c9


	xor  b                                           ; $7357: $a8
	adc  e                                           ; $7358: $8b
	cp   d                                           ; $7359: $ba
	ld   [hl], a                                     ; $735a: $77
	sbc  c                                           ; $735b: $99
	xor  e                                           ; $735c: $ab
	add  a                                           ; $735d: $87
	adc  b                                           ; $735e: $88
	sbc  c                                           ; $735f: $99
	sbc  b                                           ; $7360: $98
	ld   a, d                                        ; $7361: $7a
	sub  [hl]                                        ; $7362: $96
	adc  b                                           ; $7363: $88
	ld   h, a                                        ; $7364: $67
	ld   [hl], a                                     ; $7365: $77
	ld   h, [hl]                                     ; $7366: $66
	add  a                                           ; $7367: $87
	ld   [hl], a                                     ; $7368: $77
	ld   d, l                                        ; $7369: $55
	add  a                                           ; $736a: $87
	ld   h, l                                        ; $736b: $65
	ld   b, [hl]                                     ; $736c: $46
	adc  b                                           ; $736d: $88
	add  [hl]                                        ; $736e: $86
	ld   h, a                                        ; $736f: $67
	ld   a, c                                        ; $7370: $79
	add  l                                           ; $7371: $85
	ld   a, d                                        ; $7372: $7a
	sbc  c                                           ; $7373: $99
	sub  a                                           ; $7374: $97
	ld   a, d                                        ; $7375: $7a
	or   a                                           ; $7376: $b7
	ld   a, d                                        ; $7377: $7a
	sbc  d                                           ; $7378: $9a
	xor  b                                           ; $7379: $a8
	adc  c                                           ; $737a: $89
	cp   b                                           ; $737b: $b8
	adc  d                                           ; $737c: $8a
	ld   a, b                                        ; $737d: $78
	xor  c                                           ; $737e: $a9
	sbc  b                                           ; $737f: $98
	xor  c                                           ; $7380: $a9
	ld   a, c                                        ; $7381: $79
	ld   [hl], a                                     ; $7382: $77
	adc  b                                           ; $7383: $88
	adc  c                                           ; $7384: $89
	add  a                                           ; $7385: $87

Jump_0be_7386:
	ld   [hl], a                                     ; $7386: $77
	add  a                                           ; $7387: $87
	ld   [hl], a                                     ; $7388: $77
	ld   d, a                                        ; $7389: $57
	sub  a                                           ; $738a: $97
	halt                                             ; $738b: $76
	ld   h, [hl]                                     ; $738c: $66
	ld   l, c                                        ; $738d: $69
	halt                                             ; $738e: $76
	add  a                                           ; $738f: $87
	ld   [hl], a                                     ; $7390: $77
	ld   a, c                                        ; $7391: $79
	add  a                                           ; $7392: $87
	ld   [hl], a                                     ; $7393: $77
	sbc  b                                           ; $7394: $98
	ld   a, d                                        ; $7395: $7a
	adc  c                                           ; $7396: $89
	and  a                                           ; $7397: $a7
	ld   a, c                                        ; $7398: $79
	sbc  c                                           ; $7399: $99
	sbc  b                                           ; $739a: $98
	adc  b                                           ; $739b: $88
	xor  d                                           ; $739c: $aa
	adc  b                                           ; $739d: $88
	adc  b                                           ; $739e: $88
	xor  c                                           ; $739f: $a9
	sbc  c                                           ; $73a0: $99
	sbc  b                                           ; $73a1: $98
	adc  b                                           ; $73a2: $88
	sbc  b                                           ; $73a3: $98
	adc  b                                           ; $73a4: $88
	adc  b                                           ; $73a5: $88

Call_0be_73a6:
	adc  b                                           ; $73a6: $88
	adc  c                                           ; $73a7: $89
	sub  a                                           ; $73a8: $97
	ld   a, b                                        ; $73a9: $78
	ld   a, b                                        ; $73aa: $78
	sbc  b                                           ; $73ab: $98
	halt                                             ; $73ac: $76
	ld   [hl], a                                     ; $73ad: $77
	ld   a, b                                        ; $73ae: $78
	ld   h, [hl]                                     ; $73af: $66
	ld   [hl], a                                     ; $73b0: $77
	ld   a, c                                        ; $73b1: $79
	halt                                             ; $73b2: $76
	ld   h, a                                        ; $73b3: $67
	sbc  b                                           ; $73b4: $98
	add  a                                           ; $73b5: $87
	ld   l, b                                        ; $73b6: $68
	ld   a, c                                        ; $73b7: $79
	add  a                                           ; $73b8: $87
	adc  b                                           ; $73b9: $88
	adc  c                                           ; $73ba: $89
	adc  b                                           ; $73bb: $88
	ld   a, b                                        ; $73bc: $78
	adc  c                                           ; $73bd: $89
	sbc  c                                           ; $73be: $99
	adc  b                                           ; $73bf: $88
	adc  c                                           ; $73c0: $89
	adc  c                                           ; $73c1: $89
	sbc  b                                           ; $73c2: $98
	adc  b                                           ; $73c3: $88
	ld   a, b                                        ; $73c4: $78
	adc  b                                           ; $73c5: $88
	sbc  b                                           ; $73c6: $98
	ld   [hl], a                                     ; $73c7: $77
	sbc  d                                           ; $73c8: $9a
	add  a                                           ; $73c9: $87
	add  a                                           ; $73ca: $87
	adc  c                                           ; $73cb: $89
	adc  b                                           ; $73cc: $88
	ld   a, b                                        ; $73cd: $78
	adc  c                                           ; $73ce: $89
	add  a                                           ; $73cf: $87
	ld   [hl], a                                     ; $73d0: $77
	ld   a, b                                        ; $73d1: $78
	ld   a, b                                        ; $73d2: $78
	add  a                                           ; $73d3: $87
	add  a                                           ; $73d4: $87
	ld   [hl], a                                     ; $73d5: $77
	ld   [hl], a                                     ; $73d6: $77
	sbc  b                                           ; $73d7: $98
	ld   [hl], a                                     ; $73d8: $77
	ld   a, b                                        ; $73d9: $78
	sbc  c                                           ; $73da: $99
	ld   [hl], a                                     ; $73db: $77
	adc  c                                           ; $73dc: $89
	adc  b                                           ; $73dd: $88
	ld   [hl], a                                     ; $73de: $77
	adc  c                                           ; $73df: $89
	sub  a                                           ; $73e0: $97
	ld   [hl], a                                     ; $73e1: $77
	ld   a, c                                        ; $73e2: $79
	sbc  c                                           ; $73e3: $99
	add  a                                           ; $73e4: $87
	adc  c                                           ; $73e5: $89
	sbc  c                                           ; $73e6: $99
	ld   [hl], a                                     ; $73e7: $77
	adc  b                                           ; $73e8: $88
	sbc  c                                           ; $73e9: $99
	adc  b                                           ; $73ea: $88
	adc  b                                           ; $73eb: $88
	sub  a                                           ; $73ec: $97
	adc  c                                           ; $73ed: $89
	sbc  c                                           ; $73ee: $99
	sub  a                                           ; $73ef: $97
	adc  c                                           ; $73f0: $89
	sbc  c                                           ; $73f1: $99
	add  a                                           ; $73f2: $87
	ld   a, b                                        ; $73f3: $78
	sbc  b                                           ; $73f4: $98
	ld   [hl], a                                     ; $73f5: $77
	ld   a, b                                        ; $73f6: $78
	add  a                                           ; $73f7: $87
	ld   [hl], a                                     ; $73f8: $77
	ld   a, b                                        ; $73f9: $78
	ld   [hl], a                                     ; $73fa: $77
	ld   [hl], a                                     ; $73fb: $77
	adc  b                                           ; $73fc: $88
	ld   a, b                                        ; $73fd: $78
	adc  b                                           ; $73fe: $88
	sbc  b                                           ; $73ff: $98
	add  a                                           ; $7400: $87
	ld   a, b                                        ; $7401: $78
	adc  b                                           ; $7402: $88
	sbc  b                                           ; $7403: $98
	sbc  b                                           ; $7404: $98
	sbc  c                                           ; $7405: $99
	add  a                                           ; $7406: $87
	ld   a, c                                        ; $7407: $79
	sbc  b                                           ; $7408: $98
	add  a                                           ; $7409: $87
	adc  b                                           ; $740a: $88
	sbc  c                                           ; $740b: $99
	adc  c                                           ; $740c: $89
	adc  c                                           ; $740d: $89
	adc  b                                           ; $740e: $88
	adc  b                                           ; $740f: $88
	sbc  c                                           ; $7410: $99
	adc  c                                           ; $7411: $89
	ld   a, b                                        ; $7412: $78
	sbc  b                                           ; $7413: $98
	add  a                                           ; $7414: $87
	adc  b                                           ; $7415: $88
	adc  c                                           ; $7416: $89
	add  a                                           ; $7417: $87
	add  a                                           ; $7418: $87
	adc  b                                           ; $7419: $88
	adc  c                                           ; $741a: $89
	adc  b                                           ; $741b: $88
	add  a                                           ; $741c: $87
	ld   a, c                                        ; $741d: $79
	adc  b                                           ; $741e: $88
	add  a                                           ; $741f: $87
	adc  b                                           ; $7420: $88
	adc  c                                           ; $7421: $89
	adc  b                                           ; $7422: $88
	add  a                                           ; $7423: $87
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	adc  b                                           ; $7426: $88
	adc  b                                           ; $7427: $88
	sbc  b                                           ; $7428: $98
	adc  b                                           ; $7429: $88
	adc  c                                           ; $742a: $89
	adc  b                                           ; $742b: $88
	adc  b                                           ; $742c: $88
	adc  b                                           ; $742d: $88
	sbc  b                                           ; $742e: $98
	adc  b                                           ; $742f: $88
	sbc  c                                           ; $7430: $99
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

Jump_0be_7497:
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

Call_0be_75a8:
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

Call_0be_7646:
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
	adc  b                                           ; $7698: $88
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

Call_0be_76d7:
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

Jump_0be_7798:
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
	adc  b                                           ; $79a9: $88

Call_0be_79aa:
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
	adc  b                                           ; $7e7f: $88
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
	adc  b                                           ; $7e8a: $88
	adc  b                                           ; $7e8b: $88
	adc  b                                           ; $7e8c: $88
	adc  b                                           ; $7e8d: $88
	adc  b                                           ; $7e8e: $88
	adc  b                                           ; $7e8f: $88
	adc  b                                           ; $7e90: $88
	adc  b                                           ; $7e91: $88
	adc  b                                           ; $7e92: $88
	adc  b                                           ; $7e93: $88
	adc  b                                           ; $7e94: $88
	adc  b                                           ; $7e95: $88
	adc  b                                           ; $7e96: $88
	adc  b                                           ; $7e97: $88
	adc  b                                           ; $7e98: $88
	adc  b                                           ; $7e99: $88
	adc  b                                           ; $7e9a: $88
	adc  b                                           ; $7e9b: $88
	adc  b                                           ; $7e9c: $88
	adc  b                                           ; $7e9d: $88
	adc  b                                           ; $7e9e: $88
	adc  b                                           ; $7e9f: $88
	adc  b                                           ; $7ea0: $88
	adc  b                                           ; $7ea1: $88
	adc  b                                           ; $7ea2: $88
	adc  b                                           ; $7ea3: $88
	adc  b                                           ; $7ea4: $88
	adc  b                                           ; $7ea5: $88
	adc  b                                           ; $7ea6: $88
	adc  b                                           ; $7ea7: $88
	adc  b                                           ; $7ea8: $88
	adc  b                                           ; $7ea9: $88
	adc  b                                           ; $7eaa: $88
	adc  b                                           ; $7eab: $88
	adc  b                                           ; $7eac: $88
	adc  b                                           ; $7ead: $88
	adc  b                                           ; $7eae: $88
	adc  b                                           ; $7eaf: $88
	adc  b                                           ; $7eb0: $88
	adc  b                                           ; $7eb1: $88
	adc  b                                           ; $7eb2: $88
	adc  b                                           ; $7eb3: $88
	adc  b                                           ; $7eb4: $88
	adc  b                                           ; $7eb5: $88
	adc  b                                           ; $7eb6: $88
	adc  b                                           ; $7eb7: $88
	adc  b                                           ; $7eb8: $88
	adc  b                                           ; $7eb9: $88
	adc  b                                           ; $7eba: $88
	adc  b                                           ; $7ebb: $88
	adc  b                                           ; $7ebc: $88
	adc  b                                           ; $7ebd: $88
	adc  b                                           ; $7ebe: $88
	adc  b                                           ; $7ebf: $88
	adc  b                                           ; $7ec0: $88
	adc  b                                           ; $7ec1: $88
	adc  b                                           ; $7ec2: $88
	adc  b                                           ; $7ec3: $88
	adc  b                                           ; $7ec4: $88
	adc  b                                           ; $7ec5: $88
	adc  b                                           ; $7ec6: $88
	adc  b                                           ; $7ec7: $88
	adc  b                                           ; $7ec8: $88
	adc  b                                           ; $7ec9: $88
	adc  b                                           ; $7eca: $88
	adc  b                                           ; $7ecb: $88
	adc  b                                           ; $7ecc: $88
	adc  b                                           ; $7ecd: $88
	adc  b                                           ; $7ece: $88
	adc  b                                           ; $7ecf: $88
	adc  b                                           ; $7ed0: $88
	adc  b                                           ; $7ed1: $88
	adc  b                                           ; $7ed2: $88
	adc  b                                           ; $7ed3: $88
	adc  b                                           ; $7ed4: $88
	adc  b                                           ; $7ed5: $88
	adc  b                                           ; $7ed6: $88
	adc  b                                           ; $7ed7: $88
	adc  b                                           ; $7ed8: $88
	adc  b                                           ; $7ed9: $88
	adc  b                                           ; $7eda: $88
	adc  b                                           ; $7edb: $88
	adc  b                                           ; $7edc: $88
	adc  b                                           ; $7edd: $88
	adc  b                                           ; $7ede: $88
	adc  b                                           ; $7edf: $88
	adc  b                                           ; $7ee0: $88
	adc  b                                           ; $7ee1: $88
	adc  b                                           ; $7ee2: $88
	adc  b                                           ; $7ee3: $88
	adc  b                                           ; $7ee4: $88
	adc  b                                           ; $7ee5: $88
	adc  b                                           ; $7ee6: $88
	adc  b                                           ; $7ee7: $88
	adc  b                                           ; $7ee8: $88
	adc  b                                           ; $7ee9: $88
	adc  b                                           ; $7eea: $88
	adc  b                                           ; $7eeb: $88
	adc  b                                           ; $7eec: $88
	adc  b                                           ; $7eed: $88
	adc  b                                           ; $7eee: $88
	adc  b                                           ; $7eef: $88
	adc  b                                           ; $7ef0: $88
	adc  b                                           ; $7ef1: $88
	adc  b                                           ; $7ef2: $88
	adc  b                                           ; $7ef3: $88
	adc  b                                           ; $7ef4: $88
	adc  b                                           ; $7ef5: $88
	adc  b                                           ; $7ef6: $88
	adc  b                                           ; $7ef7: $88
	adc  b                                           ; $7ef8: $88
	adc  b                                           ; $7ef9: $88
	adc  b                                           ; $7efa: $88
	adc  b                                           ; $7efb: $88
	adc  b                                           ; $7efc: $88
	adc  b                                           ; $7efd: $88
	adc  b                                           ; $7efe: $88
	adc  b                                           ; $7eff: $88
	adc  b                                           ; $7f00: $88
	adc  b                                           ; $7f01: $88
	adc  b                                           ; $7f02: $88
	adc  b                                           ; $7f03: $88
	adc  b                                           ; $7f04: $88
	adc  b                                           ; $7f05: $88
	adc  b                                           ; $7f06: $88
	adc  b                                           ; $7f07: $88
	adc  b                                           ; $7f08: $88
	adc  b                                           ; $7f09: $88
	adc  b                                           ; $7f0a: $88
	adc  b                                           ; $7f0b: $88
	adc  b                                           ; $7f0c: $88
	adc  b                                           ; $7f0d: $88
	adc  b                                           ; $7f0e: $88
	adc  b                                           ; $7f0f: $88
	adc  b                                           ; $7f10: $88
	adc  b                                           ; $7f11: $88
	adc  b                                           ; $7f12: $88
	adc  b                                           ; $7f13: $88
	adc  b                                           ; $7f14: $88
	adc  b                                           ; $7f15: $88
	adc  b                                           ; $7f16: $88
	adc  b                                           ; $7f17: $88
	adc  b                                           ; $7f18: $88
	adc  b                                           ; $7f19: $88
	adc  b                                           ; $7f1a: $88
	adc  b                                           ; $7f1b: $88
	adc  b                                           ; $7f1c: $88
	adc  b                                           ; $7f1d: $88
	adc  b                                           ; $7f1e: $88
	adc  b                                           ; $7f1f: $88
	adc  b                                           ; $7f20: $88
	adc  b                                           ; $7f21: $88
	adc  b                                           ; $7f22: $88
	adc  b                                           ; $7f23: $88
	adc  b                                           ; $7f24: $88
	adc  b                                           ; $7f25: $88
	adc  b                                           ; $7f26: $88
	adc  b                                           ; $7f27: $88
	adc  b                                           ; $7f28: $88
	adc  b                                           ; $7f29: $88
	adc  b                                           ; $7f2a: $88
	adc  b                                           ; $7f2b: $88
	adc  b                                           ; $7f2c: $88
	adc  b                                           ; $7f2d: $88
	adc  b                                           ; $7f2e: $88
	adc  b                                           ; $7f2f: $88
	adc  b                                           ; $7f30: $88
	adc  b                                           ; $7f31: $88
	adc  b                                           ; $7f32: $88
	adc  b                                           ; $7f33: $88
	adc  b                                           ; $7f34: $88
	adc  b                                           ; $7f35: $88
	adc  b                                           ; $7f36: $88
	adc  b                                           ; $7f37: $88
	adc  b                                           ; $7f38: $88
	adc  b                                           ; $7f39: $88
	adc  b                                           ; $7f3a: $88
	adc  b                                           ; $7f3b: $88
	adc  b                                           ; $7f3c: $88
	adc  b                                           ; $7f3d: $88
	adc  b                                           ; $7f3e: $88
	adc  b                                           ; $7f3f: $88
	adc  b                                           ; $7f40: $88
	adc  b                                           ; $7f41: $88
	adc  b                                           ; $7f42: $88
	adc  b                                           ; $7f43: $88
	adc  b                                           ; $7f44: $88
	adc  b                                           ; $7f45: $88
	adc  b                                           ; $7f46: $88
	adc  b                                           ; $7f47: $88
	adc  b                                           ; $7f48: $88
	adc  b                                           ; $7f49: $88
	adc  b                                           ; $7f4a: $88
	adc  b                                           ; $7f4b: $88
	adc  b                                           ; $7f4c: $88
	adc  b                                           ; $7f4d: $88
	adc  b                                           ; $7f4e: $88
	adc  b                                           ; $7f4f: $88
	adc  b                                           ; $7f50: $88
	adc  b                                           ; $7f51: $88
	adc  b                                           ; $7f52: $88
	adc  b                                           ; $7f53: $88
	adc  b                                           ; $7f54: $88
	adc  b                                           ; $7f55: $88
	adc  b                                           ; $7f56: $88
	adc  b                                           ; $7f57: $88
	adc  b                                           ; $7f58: $88
	adc  b                                           ; $7f59: $88
	adc  b                                           ; $7f5a: $88
	adc  b                                           ; $7f5b: $88
	adc  b                                           ; $7f5c: $88
	adc  b                                           ; $7f5d: $88
	adc  b                                           ; $7f5e: $88
	adc  b                                           ; $7f5f: $88
	adc  b                                           ; $7f60: $88
	adc  b                                           ; $7f61: $88
	adc  b                                           ; $7f62: $88
	adc  b                                           ; $7f63: $88
	adc  b                                           ; $7f64: $88
	adc  b                                           ; $7f65: $88
	adc  b                                           ; $7f66: $88
	adc  b                                           ; $7f67: $88
	adc  b                                           ; $7f68: $88
	adc  b                                           ; $7f69: $88
	adc  b                                           ; $7f6a: $88
	adc  b                                           ; $7f6b: $88
	adc  b                                           ; $7f6c: $88
	adc  b                                           ; $7f6d: $88
	adc  b                                           ; $7f6e: $88
	adc  b                                           ; $7f6f: $88
	adc  b                                           ; $7f70: $88
	adc  b                                           ; $7f71: $88
	adc  b                                           ; $7f72: $88
	adc  b                                           ; $7f73: $88
	adc  b                                           ; $7f74: $88
	adc  b                                           ; $7f75: $88
	adc  b                                           ; $7f76: $88
	adc  b                                           ; $7f77: $88
	adc  b                                           ; $7f78: $88
	adc  b                                           ; $7f79: $88
	adc  b                                           ; $7f7a: $88
	adc  b                                           ; $7f7b: $88
	adc  b                                           ; $7f7c: $88
	adc  b                                           ; $7f7d: $88
	adc  b                                           ; $7f7e: $88
	adc  b                                           ; $7f7f: $88
	adc  b                                           ; $7f80: $88
	adc  b                                           ; $7f81: $88
	adc  b                                           ; $7f82: $88
	adc  b                                           ; $7f83: $88
	adc  b                                           ; $7f84: $88
	adc  b                                           ; $7f85: $88
	adc  b                                           ; $7f86: $88
	adc  b                                           ; $7f87: $88
	adc  b                                           ; $7f88: $88
	adc  b                                           ; $7f89: $88
	adc  b                                           ; $7f8a: $88
	adc  b                                           ; $7f8b: $88
	adc  b                                           ; $7f8c: $88
	adc  b                                           ; $7f8d: $88
	adc  b                                           ; $7f8e: $88
	adc  b                                           ; $7f8f: $88
	adc  b                                           ; $7f90: $88
	adc  b                                           ; $7f91: $88
	adc  b                                           ; $7f92: $88
	adc  b                                           ; $7f93: $88
	adc  b                                           ; $7f94: $88
	adc  b                                           ; $7f95: $88
	adc  b                                           ; $7f96: $88
	adc  b                                           ; $7f97: $88
	adc  b                                           ; $7f98: $88
	adc  b                                           ; $7f99: $88
	adc  b                                           ; $7f9a: $88
	adc  b                                           ; $7f9b: $88
	adc  b                                           ; $7f9c: $88
	adc  b                                           ; $7f9d: $88
	adc  b                                           ; $7f9e: $88
	adc  b                                           ; $7f9f: $88
	adc  b                                           ; $7fa0: $88
	adc  b                                           ; $7fa1: $88
	adc  b                                           ; $7fa2: $88
	adc  b                                           ; $7fa3: $88
	adc  b                                           ; $7fa4: $88
	adc  b                                           ; $7fa5: $88
	adc  b                                           ; $7fa6: $88
	adc  b                                           ; $7fa7: $88
	adc  b                                           ; $7fa8: $88
	adc  b                                           ; $7fa9: $88
	adc  b                                           ; $7faa: $88
	adc  b                                           ; $7fab: $88
	adc  b                                           ; $7fac: $88
	adc  b                                           ; $7fad: $88
	adc  b                                           ; $7fae: $88
	adc  b                                           ; $7faf: $88
	adc  b                                           ; $7fb0: $88
	adc  b                                           ; $7fb1: $88
	adc  b                                           ; $7fb2: $88
	adc  b                                           ; $7fb3: $88
	adc  b                                           ; $7fb4: $88
	adc  b                                           ; $7fb5: $88
	adc  b                                           ; $7fb6: $88
	adc  b                                           ; $7fb7: $88
	adc  b                                           ; $7fb8: $88
	adc  b                                           ; $7fb9: $88
	adc  b                                           ; $7fba: $88
	adc  b                                           ; $7fbb: $88
	adc  b                                           ; $7fbc: $88
	adc  b                                           ; $7fbd: $88
	adc  b                                           ; $7fbe: $88
	adc  b                                           ; $7fbf: $88
	adc  b                                           ; $7fc0: $88
	adc  b                                           ; $7fc1: $88
	adc  b                                           ; $7fc2: $88
	adc  b                                           ; $7fc3: $88
	adc  b                                           ; $7fc4: $88
	adc  b                                           ; $7fc5: $88
	adc  b                                           ; $7fc6: $88
	adc  b                                           ; $7fc7: $88
	adc  b                                           ; $7fc8: $88
	adc  b                                           ; $7fc9: $88
	adc  b                                           ; $7fca: $88
	adc  b                                           ; $7fcb: $88
	adc  b                                           ; $7fcc: $88
	adc  b                                           ; $7fcd: $88
	adc  b                                           ; $7fce: $88
	adc  b                                           ; $7fcf: $88
	adc  b                                           ; $7fd0: $88
	adc  b                                           ; $7fd1: $88
	adc  b                                           ; $7fd2: $88
	adc  b                                           ; $7fd3: $88
	adc  b                                           ; $7fd4: $88
	adc  b                                           ; $7fd5: $88
	adc  b                                           ; $7fd6: $88
	adc  b                                           ; $7fd7: $88
	adc  b                                           ; $7fd8: $88
	adc  b                                           ; $7fd9: $88
	adc  b                                           ; $7fda: $88
	adc  b                                           ; $7fdb: $88
	adc  b                                           ; $7fdc: $88
	adc  b                                           ; $7fdd: $88
	adc  b                                           ; $7fde: $88
	adc  b                                           ; $7fdf: $88
	adc  b                                           ; $7fe0: $88
	adc  b                                           ; $7fe1: $88
	adc  b                                           ; $7fe2: $88
	adc  b                                           ; $7fe3: $88
	adc  b                                           ; $7fe4: $88
	adc  b                                           ; $7fe5: $88
	adc  b                                           ; $7fe6: $88
	adc  b                                           ; $7fe7: $88
	adc  b                                           ; $7fe8: $88
	adc  b                                           ; $7fe9: $88
	adc  b                                           ; $7fea: $88
	adc  b                                           ; $7feb: $88
	adc  b                                           ; $7fec: $88
	adc  b                                           ; $7fed: $88
	adc  b                                           ; $7fee: $88
	adc  b                                           ; $7fef: $88
	adc  b                                           ; $7ff0: $88
	adc  b                                           ; $7ff1: $88
	adc  b                                           ; $7ff2: $88
	adc  b                                           ; $7ff3: $88
	adc  b                                           ; $7ff4: $88
	adc  b                                           ; $7ff5: $88
	adc  b                                           ; $7ff6: $88
	adc  b                                           ; $7ff7: $88
	adc  b                                           ; $7ff8: $88
	adc  b                                           ; $7ff9: $88
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	adc  b                                           ; $7ffc: $88
	adc  b                                           ; $7ffd: $88
	adc  b                                           ; $7ffe: $88
	adc  b                                           ; $7fff: $88
