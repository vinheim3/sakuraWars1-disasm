; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0b5", ROMX[$4000], BANK[$b5]

	inc  sp                                          ; $4000: $33
	adc  e                                           ; $4001: $8b
	xor  a                                           ; $4002: $af
	rst  $38                                         ; $4003: $ff
	cp   $ff                                         ; $4004: $fe $ff
	db   $ed                                         ; $4006: $ed
	cp   h                                           ; $4007: $bc
	ld   l, c                                        ; $4008: $69
	ld   d, [hl]                                     ; $4009: $56
	ld   [hl], h                                     ; $400a: $74
	halt                                             ; $400b: $76
	sub  [hl]                                        ; $400c: $96
	ld   a, h                                        ; $400d: $7c
	sbc  e                                           ; $400e: $9b
	cp   l                                           ; $400f: $bd
	res  7, d                                        ; $4010: $cb $ba
	cp   b                                           ; $4012: $b8
	ld   d, [hl]                                     ; $4013: $56
	ld   hl, $1111                                   ; $4014: $21 $11 $11
	ld   de, $9511                                   ; $4017: $11 $11 $95
	xor  $ef                                         ; $401a: $ee $ef
	rst  $38                                         ; $401c: $ff
	rst  $28                                         ; $401d: $ef
	ei                                               ; $401e: $fb
	reti                                             ; $401f: $d9


	sub  a                                           ; $4020: $97
	ld   b, l                                        ; $4021: $45
	scf                                              ; $4022: $37
	inc  [hl]                                        ; $4023: $34
	sub  [hl]                                        ; $4024: $96
	sub  a                                           ; $4025: $97
	cp   h                                           ; $4026: $bc
	call z, $cbdf                                    ; $4027: $cc $df $cb
	jp   z, Jump_0b5_5395                            ; $402a: $ca $95 $53

	ld   de, $1111                                   ; $402d: $11 $11 $11
	ld   a, [de]                                     ; $4030: $1a
	ld   d, $a8                                      ; $4031: $16 $a8
	ei                                               ; $4033: $fb
	rst  $38                                         ; $4034: $ff
	rst  $38                                         ; $4035: $ff
	cp   a                                           ; $4036: $bf
	xor  b                                           ; $4037: $a8
	push bc                                          ; $4038: $c5
	sub  d                                           ; $4039: $92
	inc  h                                           ; $403a: $24
	ld   d, l                                        ; $403b: $55
	inc  e                                           ; $403c: $1c
	and  a                                           ; $403d: $a7
	cp   d                                           ; $403e: $ba
	db   $fd                                         ; $403f: $fd
	adc  $fd                                         ; $4040: $ce $fd
	sbc  [hl]                                        ; $4042: $9e
	add  $64                                         ; $4043: $c6 $64
	ld   b, c                                        ; $4045: $41
	ld   de, $1111                                   ; $4046: $11 $11 $11
	pop  bc                                          ; $4049: $c1
	rra                                              ; $404a: $1f
	ld   e, a                                        ; $404b: $5f
	db   $fd                                         ; $404c: $fd
	rst  $38                                         ; $404d: $ff
	ld   sp, hl                                      ; $404e: $f9
	rst  $38                                         ; $404f: $ff
	inc  e                                           ; $4050: $1c
	add  h                                           ; $4051: $84
	ld   h, c                                        ; $4052: $61
	ld   d, l                                        ; $4053: $55
	ld   d, d                                        ; $4054: $52
	adc  a                                           ; $4055: $8f
	ld   l, e                                        ; $4056: $6b
	db   $ed                                         ; $4057: $ed
	ei                                               ; $4058: $fb
	rst  $28                                         ; $4059: $ef
	jp   hl                                          ; $405a: $e9


	xor  [hl]                                        ; $405b: $ae
	ld   [hl], e                                     ; $405c: $73
	ld   h, e                                        ; $405d: $63
	ld   de, $1111                                   ; $405e: $11 $11 $11
	inc  d                                           ; $4061: $14
	pop  bc                                          ; $4062: $c1
	db   $fc                                         ; $4063: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4064: $cf
	sbc  a                                           ; $4065: $9f
	rst  $38                                         ; $4066: $ff
	ei                                               ; $4067: $fb
	di                                               ; $4068: $f3
	ld   c, [hl]                                     ; $4069: $4e
	inc  hl                                          ; $406a: $23
	ld   [de], a                                     ; $406b: $12
	ld   [hl], e                                     ; $406c: $73
	ld   d, a                                        ; $406d: $57
	db   $fc                                         ; $406e: $fc
	ld   a, a                                        ; $406f: $7f
	db   $fd                                         ; $4070: $fd
	db   $dd                                         ; $4071: $dd
	cp   $9a                                         ; $4072: $fe $9a
	cp   d                                           ; $4074: $ba
	dec  h                                           ; $4075: $25
	ld   d, c                                        ; $4076: $51
	ld   de, $1111                                   ; $4077: $11 $11 $11
	rra                                              ; $407a: $1f
	ld   a, [de]                                     ; $407b: $1a
	db   $fd                                         ; $407c: $fd
	ld   hl, sp-$01                                  ; $407d: $f8 $ff
	rst  $38                                         ; $407f: $ff
	xor  a                                           ; $4080: $af
	ld   h, c                                        ; $4081: $61
	db   $d3                                         ; $4082: $d3
	ld   de, $3518                                   ; $4083: $11 $18 $35
	ld   a, [hl]                                     ; $4086: $7e
	rst  $30                                         ; $4087: $f7
	rst  $28                                         ; $4088: $ef
	db   $ec                                         ; $4089: $ec
	rst  $28                                         ; $408a: $ef
	ret  c                                           ; $408b: $d8

	cp   d                                           ; $408c: $ba
	add  d                                           ; $408d: $82
	dec  [hl]                                        ; $408e: $35
	ld   de, $1111                                   ; $408f: $11 $11 $11
	inc  de                                          ; $4092: $13
	pop  af                                          ; $4093: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4094: $cf
	rst  $38                                         ; $4095: $ff
	sbc  a                                           ; $4096: $9f
	rst  $38                                         ; $4097: $ff
	ld   a, [$1bf2]                                  ; $4098: $fa $f2 $1b
	ld   [hl+], a                                    ; $409b: $22
	ld   [de], a                                     ; $409c: $12
	sub  e                                           ; $409d: $93
	ld   l, c                                        ; $409e: $69
	cp   $9f                                         ; $409f: $fe $9f
	rst  $38                                         ; $40a1: $ff
	db   $eb                                         ; $40a2: $eb
	db   $fd                                         ; $40a3: $fd
	ld   a, e                                        ; $40a4: $7b
	adc  c                                           ; $40a5: $89
	ld   de, $1131                                   ; $40a6: $11 $31 $11
	inc  de                                          ; $40a9: $13
	ld   de, $1ffb                                   ; $40aa: $11 $fb $1f
	rst  $28                                         ; $40ad: $ef
	adc  $ff                                         ; $40ae: $ce $ff
	rst  $30                                         ; $40b0: $f7
	rst  JumpTable                                         ; $40b1: $df
	inc  de                                          ; $40b2: $13
	ld   d, d                                        ; $40b3: $52
	ld   hl, $6979                                   ; $40b4: $21 $79 $69
	xor  a                                           ; $40b7: $af
	ld   [$f9ff], a                                  ; $40b8: $ea $ff $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40bb: $cf
	and  a                                           ; $40bc: $a7
	ld   a, c                                        ; $40bd: $79
	ld   [hl], c                                     ; $40be: $71
	ld   de, $1111                                   ; $40bf: $11 $11 $11
	ld   h, c                                        ; $40c2: $61
	rra                                              ; $40c3: $1f
	ld   a, [de]                                     ; $40c4: $1a
	rst  JumpTable                                         ; $40c5: $df
	pop  af                                          ; $40c6: $f1
	rst  $38                                         ; $40c7: $ff
	db   $eb                                         ; $40c8: $eb
	ccf                                              ; $40c9: $3f
	ld   hl, $6151                                   ; $40ca: $21 $51 $61
	inc  e                                           ; $40cd: $1c
	sbc  l                                           ; $40ce: $9d
	adc  a                                           ; $40cf: $8f
	ei                                               ; $40d0: $fb
	rst  JumpTable                                         ; $40d1: $df
	cp   $7e                                         ; $40d2: $fe $7e
	rst  $20                                         ; $40d4: $e7
	ld   [hl], l                                     ; $40d5: $75
	and  c                                           ; $40d6: $a1
	ld   de, $1111                                   ; $40d7: $11 $11 $11
	ld   [hl], c                                     ; $40da: $71
	rra                                              ; $40db: $1f
	di                                               ; $40dc: $f3
	rst  JumpTable                                         ; $40dd: $df
	ld   a, [$fdbf]                                  ; $40de: $fa $bf $fd
	add  hl, de                                      ; $40e1: $19
	and  c                                           ; $40e2: $a1
	ld   sp, $1818                                   ; $40e3: $31 $18 $18
	xor  a                                           ; $40e6: $af
	ld   hl, sp-$01                                  ; $40e7: $f8 $ff
	db   $db                                         ; $40e9: $db
	rst  JumpTable                                         ; $40ea: $df
	and  [hl]                                        ; $40eb: $a6
	jp   z, $56a4                                    ; $40ec: $ca $a4 $56

	ld   de, $1111                                   ; $40ef: $11 $11 $11
	ld   e, b                                        ; $40f2: $58
	jr   @-$06                                       ; $40f3: $18 $f8

	jp   c, $1fff                                    ; $40f5: $da $ff $1f

	db   $fd                                         ; $40f8: $fd
	ld   de, $23b1                                   ; $40f9: $11 $b1 $23
	inc  e                                           ; $40fc: $1c
	ld   a, b                                        ; $40fd: $78
	xor  a                                           ; $40fe: $af
	ld   hl, sp-$11                                  ; $40ff: $f8 $ef
	ld   a, [$b67f]                                  ; $4101: $fa $7f $b6
	cp   c                                           ; $4104: $b9
	or   a                                           ; $4105: $b7
	ld   [hl], $12                                   ; $4106: $36 $12
	ld   de, $7e11                                   ; $4108: $11 $11 $7e
	inc  d                                           ; $410b: $14
	cp   $e4                                         ; $410c: $fe $e4
	rst  $38                                         ; $410e: $ff
	rra                                              ; $410f: $1f
	adc  $11                                         ; $4110: $ce $11
	sub  c                                           ; $4112: $91
	ld   h, a                                        ; $4113: $67
	inc  e                                           ; $4114: $1c
	rst  $28                                         ; $4115: $ef
	xor  e                                           ; $4116: $ab
	cp   $9c                                         ; $4117: $fe $9c
	db   $fc                                         ; $4119: $fc
	ld   c, e                                        ; $411a: $4b
	cp   b                                           ; $411b: $b8
	ret  z                                           ; $411c: $c8

	sbc  d                                           ; $411d: $9a
	add  l                                           ; $411e: $85
	ld   [de], a                                     ; $411f: $12
	ld   de, $7f11                                   ; $4120: $11 $11 $7f
	ld   de, $f1ff                                   ; $4123: $11 $ff $f1
	rst  $38                                         ; $4126: $ff
	rra                                              ; $4127: $1f
	add  hl, hl                                      ; $4128: $29
	ld   hl, $af61                                   ; $4129: $21 $61 $af
	ld   a, [de]                                     ; $412c: $1a
	rst  $38                                         ; $412d: $ff
	push de                                          ; $412e: $d5
	db   $fd                                         ; $412f: $fd
	and  a                                           ; $4130: $a7
	xor  c                                           ; $4131: $a9
	ld   c, l                                        ; $4132: $4d
	sbc  b                                           ; $4133: $98
	cp   $a7                                         ; $4134: $fe $a7
	ld   [hl], a                                     ; $4136: $77
	ld   de, $1111                                   ; $4137: $11 $11 $11
	cp   $1f                                         ; $413a: $fe $1f
	rst  $38                                         ; $413c: $ff
	push af                                          ; $413d: $f5
	ld   a, [$152f]                                  ; $413e: $fa $2f $15
	inc  d                                           ; $4141: $14
	ld   de, $5fff                                   ; $4142: $11 $ff $5f
	rst  $38                                         ; $4145: $ff
	xor  e                                           ; $4146: $ab
	di                                               ; $4147: $f3
	sub  [hl]                                        ; $4148: $96
	add  d                                           ; $4149: $82
	sbc  a                                           ; $414a: $9f
	cp   e                                           ; $414b: $bb
	rst  $38                                         ; $414c: $ff
	or   l                                           ; $414d: $b5
	ld   b, c                                        ; $414e: $41
	ld   de, $1111                                   ; $414f: $11 $11 $11
	pop  af                                          ; $4152: $f1
	rra                                              ; $4153: $1f
	rst  $38                                         ; $4154: $ff
	ld   e, a                                        ; $4155: $5f
	pop  af                                          ; $4156: $f1
	pop  af                                          ; $4157: $f1
	ld   [de], a                                     ; $4158: $12
	ld   e, $15                                      ; $4159: $1e $15
	rst  $38                                         ; $415b: $ff
	cp   $ff                                         ; $415c: $fe $ff
	ld   a, a                                        ; $415e: $7f
	ld   de, $8368                                   ; $415f: $11 $68 $83
	rst  $38                                         ; $4162: $ff
	rst  $38                                         ; $4163: $ff
	db   $ed                                         ; $4164: $ed
	add  d                                           ; $4165: $82
	ld   de, $1111                                   ; $4166: $11 $11 $11
	rra                                              ; $4169: $1f
	pop  af                                          ; $416a: $f1
	rst  $38                                         ; $416b: $ff
	rst  $38                                         ; $416c: $ff
	ccf                                              ; $416d: $3f
	add  hl, de                                      ; $416e: $19
	pop  hl                                          ; $416f: $e1
	ld   de, $1ffb                                   ; $4170: $11 $fb $1f
	rst  $38                                         ; $4173: $ff
	db   $fc                                         ; $4174: $fc
	sub  c                                           ; $4175: $91
	or   $11                                         ; $4176: $f6 $11
	sbc  a                                           ; $4178: $9f
	rst  JumpTable                                         ; $4179: $df
	rst  $38                                         ; $417a: $ff
	rst  $38                                         ; $417b: $ff
	ld   [hl], c                                     ; $417c: $71
	ld   de, $1111                                   ; $417d: $11 $11 $11
	ld   de, $1fff                                   ; $4180: $11 $ff $1f
	rst  $38                                         ; $4183: $ff
	ld   h, a                                        ; $4184: $67
	sub  c                                           ; $4185: $91
	rst  $30                                         ; $4186: $f7
	ld   de, $d83f                                   ; $4187: $11 $3f $d8
	rst  $38                                         ; $418a: $ff
	rst  $38                                         ; $418b: $ff
	pop  bc                                          ; $418c: $c1
	rra                                              ; $418d: $1f
	ld   hl, $ff1d                                   ; $418e: $21 $1d $ff
	rst  $38                                         ; $4191: $ff
	rst  $38                                         ; $4192: $ff
	and  $11                                         ; $4193: $e6 $11
	ld   de, $1111                                   ; $4195: $11 $11 $11
	rst  $38                                         ; $4198: $ff
	ld   de, $f1ff                                   ; $4199: $11 $ff $f1
	add  c                                           ; $419c: $81
	rra                                              ; $419d: $1f
	add  c                                           ; $419e: $81
	rra                                              ; $419f: $1f
	rst  $38                                         ; $41a0: $ff
	rst  $28                                         ; $41a1: $ef
	adc  a                                           ; $41a2: $8f
	ld   hl, sp+$11                                  ; $41a3: $f8 $11
	rst  $30                                         ; $41a5: $f7
	and  c                                           ; $41a6: $a1
	rst  $38                                         ; $41a7: $ff
	rst  $38                                         ; $41a8: $ff
	sbc  e                                           ; $41a9: $9b
	xor  a                                           ; $41aa: $af
	ld   hl, $1111                                   ; $41ab: $21 $11 $11
	ld   de, $f11f                                   ; $41ae: $11 $1f $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41b1: $cf
	rst  $38                                         ; $41b2: $ff
	ld   d, c                                        ; $41b3: $51
	dec  d                                           ; $41b4: $15
	ei                                               ; $41b5: $fb
	ld   de, $ffff                                   ; $41b6: $11 $ff $ff
	ld   d, c                                        ; $41b9: $51
	rst  $38                                         ; $41ba: $ff
	ld   h, c                                        ; $41bb: $61
	jr   @-$0f                                       ; $41bc: $18 $ef

	adc  [hl]                                        ; $41be: $8e
	rst  $38                                         ; $41bf: $ff
	ei                                               ; $41c0: $fb
	ld   d, h                                        ; $41c1: $54
	and  d                                           ; $41c2: $a2
	ld   de, $1111                                   ; $41c3: $11 $11 $11
	ld   de, $1fff                                   ; $41c6: $11 $ff $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41c9: $cf
	ld   sp, hl                                      ; $41ca: $f9
	ld   de, $f3af                                   ; $41cb: $11 $af $f3
	rra                                              ; $41ce: $1f
	rst  $38                                         ; $41cf: $ff
	pop  af                                          ; $41d0: $f1
	rla                                              ; $41d1: $17
	jp   hl                                          ; $41d2: $e9


	inc  d                                           ; $41d3: $14
	ld   e, a                                        ; $41d4: $5f
	rst  $38                                         ; $41d5: $ff
	ei                                               ; $41d6: $fb
	rst  $38                                         ; $41d7: $ff
	push de                                          ; $41d8: $d5
	ld   de, $1111                                   ; $41d9: $11 $11 $11
	ld   de, $f31f                                   ; $41dc: $11 $1f $f3
	and  a                                           ; $41df: $a7
	rst  $38                                         ; $41e0: $ff
	ld   sp, hl                                      ; $41e1: $f9
	ld   de, $f1ff                                   ; $41e2: $11 $ff $f1
	ld   a, d                                        ; $41e5: $7a
	rst  $38                                         ; $41e6: $ff
	pop  hl                                          ; $41e7: $e1
	rla                                              ; $41e8: $17
	ld   sp, hl                                      ; $41e9: $f9
	ld   hl, $ff1f                                   ; $41ea: $21 $1f $ff
	set  7, a                                        ; $41ed: $cb $ff
	push af                                          ; $41ef: $f5
	ld   de, $1111                                   ; $41f0: $11 $11 $11
	ld   de, $fc1f                                   ; $41f3: $11 $1f $fc
	ld   a, b                                        ; $41f6: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41f7: $cf
	rst  JumpTable                                         ; $41f8: $df
	ld   de, $f5af                                   ; $41f9: $11 $af $f5
	ld   h, a                                        ; $41fc: $67
	rst  $38                                         ; $41fd: $ff
	pop  af                                          ; $41fe: $f1
	ld   de, $e3bf                                   ; $41ff: $11 $bf $e3
	rra                                              ; $4202: $1f
	rst  $38                                         ; $4203: $ff
	ld   hl, sp+$58                                  ; $4204: $f8 $58
	rst  $30                                         ; $4206: $f7
	ld   de, $1111                                   ; $4207: $11 $11 $11
	ld   de, $7fff                                   ; $420a: $11 $ff $7f
	ld   c, a                                        ; $420d: $4f
	rst  $38                                         ; $420e: $ff
	sub  c                                           ; $420f: $91
	rla                                              ; $4210: $17
	rst  $38                                         ; $4211: $ff
	or   a                                           ; $4212: $b7
	ld   e, a                                        ; $4213: $5f
	rst  $38                                         ; $4214: $ff
	ld   de, $ef19                                   ; $4215: $11 $19 $ef
	ld   de, $ffef                                   ; $4218: $11 $ef $ff
	or   d                                           ; $421b: $b2
	cp   a                                           ; $421c: $bf
	or   c                                           ; $421d: $b1
	ld   de, $1111                                   ; $421e: $11 $11 $11
	rra                                              ; $4221: $1f
	rst  $38                                         ; $4222: $ff
	pop  af                                          ; $4223: $f1
	rra                                              ; $4224: $1f
	rst  $38                                         ; $4225: $ff
	ld   de, $ff1f                                   ; $4226: $11 $1f $ff
	pop  af                                          ; $4229: $f1
	rst  $28                                         ; $422a: $ef
	db   $fc                                         ; $422b: $fc
	ld   de, $ff1a                                   ; $422c: $11 $1a $ff
	ld   c, c                                        ; $422f: $49
	rst  $38                                         ; $4230: $ff
	rst  $38                                         ; $4231: $ff
	ld   sp, $5158                                   ; $4232: $31 $58 $51
	ld   de, $1d11                                   ; $4235: $11 $11 $1d
	rst  $38                                         ; $4238: $ff
	rr   a                                           ; $4239: $cb $1f
	rst  $38                                         ; $423b: $ff
	ld   de, $ff1a                                   ; $423c: $11 $1a $ff
	di                                               ; $423f: $f3
	ld   c, a                                        ; $4240: $4f
	rst  $38                                         ; $4241: $ff
	ld   de, rAUD1LOW                                   ; $4242: $11 $13 $ff
	sub  h                                           ; $4245: $94
	rst  JumpTable                                         ; $4246: $df
	rst  $38                                         ; $4247: $ff
	add  c                                           ; $4248: $81
	ld   [de], a                                     ; $4249: $12
	sub  c                                           ; $424a: $91
	ld   de, $1f11                                   ; $424b: $11 $11 $1f
	rst  $38                                         ; $424e: $ff
	ld   l, d                                        ; $424f: $6a
	ld   a, a                                        ; $4250: $7f
	rst  $38                                         ; $4251: $ff
	ld   de, $ff1d                                   ; $4252: $11 $1d $ff
	ld   hl, sp+$6f                                  ; $4255: $f8 $6f
	rst  $38                                         ; $4257: $ff
	ld   d, c                                        ; $4258: $51
	ld   de, $ccdf                                   ; $4259: $11 $df $cc
	rst  JumpTable                                         ; $425c: $df
	rst  $38                                         ; $425d: $ff
	pop  af                                          ; $425e: $f1
	ld   de, $1111                                   ; $425f: $11 $11 $11
	ld   de, $ff16                                   ; $4262: $11 $16 $ff
	cp   $69                                         ; $4265: $fe $69
	rst  $38                                         ; $4267: $ff
	ld   sp, rAUD1LEN                                   ; $4268: $31 $11 $ff
	rst  $38                                         ; $426b: $ff
	ld   a, a                                        ; $426c: $7f
	rst  $38                                         ; $426d: $ff
	pop  de                                          ; $426e: $d1
	ld   de, $fe2f                                   ; $426f: $11 $2f $fe
	xor  a                                           ; $4272: $af
	rst  $38                                         ; $4273: $ff
	push af                                          ; $4274: $f5
	ld   de, $1111                                   ; $4275: $11 $11 $11
	ld   de, $ff1f                                   ; $4278: $11 $1f $ff
	db   $fc                                         ; $427b: $fc
	ld   c, e                                        ; $427c: $4b
	rst  $38                                         ; $427d: $ff
	ld   de, rAUD1LEN                                   ; $427e: $11 $11 $ff
	rst  $38                                         ; $4281: $ff
	sbc  a                                           ; $4282: $9f
	rst  $38                                         ; $4283: $ff
	pop  hl                                          ; $4284: $e1
	ld   de, $fc1f                                   ; $4285: $11 $1f $fc
	cp   a                                           ; $4288: $bf
	rst  $38                                         ; $4289: $ff
	or   $11                                         ; $428a: $f6 $11
	ld   de, $1111                                   ; $428c: $11 $11 $11
	rra                                              ; $428f: $1f
	rst  $38                                         ; $4290: $ff
	db   $fd                                         ; $4291: $fd
	cp   a                                           ; $4292: $bf
	db   $fd                                         ; $4293: $fd
	ld   de, rAUD1LEN                                   ; $4294: $11 $11 $ff
	rst  $38                                         ; $4297: $ff
	rst  $38                                         ; $4298: $ff
	rst  $38                                         ; $4299: $ff
	pop  af                                          ; $429a: $f1
	ld   de, $cd17                                   ; $429b: $11 $17 $cd
	rst  JumpTable                                         ; $429e: $df
	rst  $38                                         ; $429f: $ff
	rst  $30                                         ; $42a0: $f7
	ld   de, $1111                                   ; $42a1: $11 $11 $11
	ld   de, $ffff                                   ; $42a4: $11 $ff $ff
	rst  $38                                         ; $42a7: $ff
	rst  $38                                         ; $42a8: $ff
	pop  af                                          ; $42a9: $f1
	ld   de, rAUD1LEN                                   ; $42aa: $11 $11 $ff
	rst  $38                                         ; $42ad: $ff
	rst  $38                                         ; $42ae: $ff
	rst  $38                                         ; $42af: $ff
	pop  bc                                          ; $42b0: $c1
	ld   de, $9925                                   ; $42b1: $11 $25 $99
	adc  l                                           ; $42b4: $8d
	rst  $38                                         ; $42b5: $ff
	rst  ToBoot                                         ; $42b6: $c7
	ld   hl, $1111                                   ; $42b7: $21 $11 $11
	ld   [de], a                                     ; $42ba: $12
	rst  $38                                         ; $42bb: $ff
	rst  $38                                         ; $42bc: $ff
	rst  $38                                         ; $42bd: $ff
	rst  $38                                         ; $42be: $ff
	pop  de                                          ; $42bf: $d1
	ld   de, $eb15                                   ; $42c0: $11 $15 $eb
	sbc  a                                           ; $42c3: $9f
	rst  $38                                         ; $42c4: $ff
	rst  $38                                         ; $42c5: $ff
	or   d                                           ; $42c6: $b2
	ld   d, [hl]                                     ; $42c7: $56
	halt                                             ; $42c8: $76
	ld   d, d                                        ; $42c9: $52
	add  hl, sp                                      ; $42ca: $39
	cp   c                                           ; $42cb: $b9
	ld   h, l                                        ; $42cc: $65
	ld   de, $1111                                   ; $42cd: $11 $11 $11
	jr   @-$0f                                       ; $42d0: $18 $ef

	rst  $38                                         ; $42d2: $ff
	rst  $38                                         ; $42d3: $ff
	rst  $38                                         ; $42d4: $ff
	rst  $30                                         ; $42d5: $f7
	ld   de, $419b                                   ; $42d6: $11 $9b $41
	scf                                              ; $42d9: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42da: $cf
	rst  $38                                         ; $42db: $ff
	adc  $fe                                         ; $42dc: $ce $fe
	db   $dd                                         ; $42de: $dd
	ld   [hl], l                                     ; $42df: $75
	ld   h, [hl]                                     ; $42e0: $66
	ld   hl, $1111                                   ; $42e1: $21 $11 $11
	ld   de, $9b11                                   ; $42e4: $11 $11 $9b
	call $ffac                                       ; $42e7: $cd $ac $ff
	rst  $38                                         ; $42ea: $ff
	rst  ToBoot                                         ; $42eb: $c7
	ld   l, l                                        ; $42ec: $6d
	db   $fd                                         ; $42ed: $fd
	adc  b                                           ; $42ee: $88
	adc  c                                           ; $42ef: $89
	cp   e                                           ; $42f0: $bb
	and  [hl]                                        ; $42f1: $a6
	adc  e                                           ; $42f2: $8b
	cp   e                                           ; $42f3: $bb
	cp   e                                           ; $42f4: $bb
	sbc  b                                           ; $42f5: $98
	add  a                                           ; $42f6: $87
	ld   h, [hl]                                     ; $42f7: $66
	ld   h, h                                        ; $42f8: $64
	ld   sp, $1111                                   ; $42f9: $31 $11 $11
	inc  [hl]                                        ; $42fc: $34
	ld   b, l                                        ; $42fd: $45
	ld   b, h                                        ; $42fe: $44
	ld   a, d                                        ; $42ff: $7a
	call $bddd                                       ; $4300: $cd $dd $bd
	rst  $38                                         ; $4303: $ff
	db   $fd                                         ; $4304: $fd
	cp   c                                           ; $4305: $b9
	xor  e                                           ; $4306: $ab
	xor  b                                           ; $4307: $a8
	ld   [hl], a                                     ; $4308: $77
	adc  b                                           ; $4309: $88
	xor  e                                           ; $430a: $ab
	xor  d                                           ; $430b: $aa
	xor  c                                           ; $430c: $a9
	sbc  c                                           ; $430d: $99
	sbc  c                                           ; $430e: $99
	sbc  b                                           ; $430f: $98
	halt                                             ; $4310: $76
	ld   h, [hl]                                     ; $4311: $66
	ld   d, l                                        ; $4312: $55
	ld   d, h                                        ; $4313: $54
	inc  sp                                          ; $4314: $33
	ld   [hl+], a                                    ; $4315: $22
	ld   [hl+], a                                    ; $4316: $22
	inc  hl                                          ; $4317: $23
	ld   d, a                                        ; $4318: $57
	adc  c                                           ; $4319: $89
	xor  e                                           ; $431a: $ab
	call $badc                                       ; $431b: $cd $dc $ba
	xor  d                                           ; $431e: $aa
	xor  d                                           ; $431f: $aa
	xor  h                                           ; $4320: $ac
	db   $dd                                         ; $4321: $dd
	db   $dd                                         ; $4322: $dd
	call c, $97bb                                    ; $4323: $dc $bb $97
	ld   h, [hl]                                     ; $4326: $66
	ld   h, [hl]                                     ; $4327: $66
	ld   [hl], a                                     ; $4328: $77
	ld   [hl], a                                     ; $4329: $77
	ld   [hl], a                                     ; $432a: $77
	ld   h, [hl]                                     ; $432b: $66
	ld   d, h                                        ; $432c: $54
	inc  sp                                          ; $432d: $33
	ld   [hl-], a                                    ; $432e: $32
	inc  sp                                          ; $432f: $33
	inc  [hl]                                        ; $4330: $34
	ld   d, a                                        ; $4331: $57
	adc  b                                           ; $4332: $88
	adc  b                                           ; $4333: $88
	adc  b                                           ; $4334: $88
	sbc  b                                           ; $4335: $98
	adc  d                                           ; $4336: $8a
	xor  e                                           ; $4337: $ab
	cp   h                                           ; $4338: $bc
	cp   e                                           ; $4339: $bb
	call $a9cb                                       ; $433a: $cd $cb $a9
	sbc  d                                           ; $433d: $9a
	xor  d                                           ; $433e: $aa
	xor  d                                           ; $433f: $aa
	sbc  d                                           ; $4340: $9a
	sbc  b                                           ; $4341: $98
	halt                                             ; $4342: $76
	ld   h, l                                        ; $4343: $65
	ld   b, h                                        ; $4344: $44
	ld   d, l                                        ; $4345: $55
	ld   h, [hl]                                     ; $4346: $66
	ld   [hl], a                                     ; $4347: $77
	ld   [hl], a                                     ; $4348: $77
	ld   h, l                                        ; $4349: $65
	ld   d, h                                        ; $434a: $54
	ld   b, h                                        ; $434b: $44
	ld   b, h                                        ; $434c: $44
	ld   d, [hl]                                     ; $434d: $56
	ld   a, b                                        ; $434e: $78
	adc  c                                           ; $434f: $89
	xor  e                                           ; $4350: $ab
	xor  d                                           ; $4351: $aa
	xor  b                                           ; $4352: $a8
	sbc  d                                           ; $4353: $9a
	xor  d                                           ; $4354: $aa
	cp   e                                           ; $4355: $bb
	cp   e                                           ; $4356: $bb
	cp   d                                           ; $4357: $ba
	sbc  c                                           ; $4358: $99
	adc  b                                           ; $4359: $88
	ld   [hl], a                                     ; $435a: $77
	ld   [hl], a                                     ; $435b: $77
	sbc  c                                           ; $435c: $99
	sbc  c                                           ; $435d: $99
	sbc  c                                           ; $435e: $99
	add  a                                           ; $435f: $87
	halt                                             ; $4360: $76
	ld   h, [hl]                                     ; $4361: $66
	ld   h, a                                        ; $4362: $67
	ld   [hl], a                                     ; $4363: $77
	ld   a, b                                        ; $4364: $78
	sbc  b                                           ; $4365: $98
	add  a                                           ; $4366: $87
	halt                                             ; $4367: $76
	ld   h, [hl]                                     ; $4368: $66
	ld   h, [hl]                                     ; $4369: $66
	ld   h, [hl]                                     ; $436a: $66
	ld   [hl], a                                     ; $436b: $77
	ld   a, b                                        ; $436c: $78
	sbc  b                                           ; $436d: $98
	sbc  b                                           ; $436e: $98
	add  a                                           ; $436f: $87
	ld   a, b                                        ; $4370: $78
	adc  c                                           ; $4371: $89
	sbc  c                                           ; $4372: $99
	sbc  c                                           ; $4373: $99
	xor  c                                           ; $4374: $a9
	sbc  c                                           ; $4375: $99
	sbc  b                                           ; $4376: $98
	sub  a                                           ; $4377: $97
	ld   a, b                                        ; $4378: $78
	adc  b                                           ; $4379: $88
	adc  b                                           ; $437a: $88
	sbc  c                                           ; $437b: $99
	sbc  c                                           ; $437c: $99
	sub  a                                           ; $437d: $97
	ld   a, b                                        ; $437e: $78
	sbc  b                                           ; $437f: $98
	adc  c                                           ; $4380: $89
	adc  b                                           ; $4381: $88
	sbc  b                                           ; $4382: $98
	adc  b                                           ; $4383: $88
	ld   [hl], a                                     ; $4384: $77
	ld   [hl], a                                     ; $4385: $77
	ld   [hl], a                                     ; $4386: $77
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	halt                                             ; $438a: $76
	ld   h, [hl]                                     ; $438b: $66
	ld   h, [hl]                                     ; $438c: $66
	ld   h, [hl]                                     ; $438d: $66
	ld   h, [hl]                                     ; $438e: $66
	ld   [hl], a                                     ; $438f: $77
	adc  b                                           ; $4390: $88
	sbc  c                                           ; $4391: $99
	xor  d                                           ; $4392: $aa
	sbc  c                                           ; $4393: $99
	adc  c                                           ; $4394: $89
	sbc  c                                           ; $4395: $99
	sbc  b                                           ; $4396: $98
	adc  b                                           ; $4397: $88
	sbc  c                                           ; $4398: $99
	sbc  b                                           ; $4399: $98
	adc  b                                           ; $439a: $88
	adc  c                                           ; $439b: $89
	sbc  c                                           ; $439c: $99
	sbc  c                                           ; $439d: $99
	sbc  c                                           ; $439e: $99
	adc  b                                           ; $439f: $88
	ld   [hl], a                                     ; $43a0: $77
	ld   [hl], a                                     ; $43a1: $77
	ld   [hl], a                                     ; $43a2: $77
	ld   [hl], a                                     ; $43a3: $77
	ld   a, b                                        ; $43a4: $78
	adc  c                                           ; $43a5: $89
	adc  c                                           ; $43a6: $89
	sbc  c                                           ; $43a7: $99
	add  a                                           ; $43a8: $87
	ld   [hl], a                                     ; $43a9: $77
	ld   [hl], a                                     ; $43aa: $77
	ld   a, b                                        ; $43ab: $78
	ld   [hl], a                                     ; $43ac: $77
	adc  b                                           ; $43ad: $88
	adc  c                                           ; $43ae: $89
	adc  c                                           ; $43af: $89
	sbc  b                                           ; $43b0: $98
	sbc  c                                           ; $43b1: $99
	add  a                                           ; $43b2: $87
	adc  b                                           ; $43b3: $88
	adc  b                                           ; $43b4: $88
	add  a                                           ; $43b5: $87
	ld   [hl], a                                     ; $43b6: $77
	adc  b                                           ; $43b7: $88
	adc  c                                           ; $43b8: $89
	sbc  b                                           ; $43b9: $98
	adc  c                                           ; $43ba: $89
	sbc  c                                           ; $43bb: $99
	sbc  b                                           ; $43bc: $98
	adc  b                                           ; $43bd: $88
	add  a                                           ; $43be: $87
	ld   [hl], a                                     ; $43bf: $77
	ld   [hl], a                                     ; $43c0: $77
	adc  b                                           ; $43c1: $88
	adc  b                                           ; $43c2: $88
	adc  b                                           ; $43c3: $88
	sbc  b                                           ; $43c4: $98
	sbc  c                                           ; $43c5: $99
	adc  b                                           ; $43c6: $88
	ld   a, b                                        ; $43c7: $78
	adc  b                                           ; $43c8: $88
	adc  b                                           ; $43c9: $88
	adc  b                                           ; $43ca: $88
	adc  b                                           ; $43cb: $88
	adc  c                                           ; $43cc: $89
	adc  c                                           ; $43cd: $89
	sbc  c                                           ; $43ce: $99
	adc  b                                           ; $43cf: $88
	adc  b                                           ; $43d0: $88
	adc  b                                           ; $43d1: $88
	adc  b                                           ; $43d2: $88
	adc  b                                           ; $43d3: $88
	adc  b                                           ; $43d4: $88
	sbc  c                                           ; $43d5: $99
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
	adc  b                                           ; $43db: $88
	adc  b                                           ; $43dc: $88
	adc  b                                           ; $43dd: $88
	sbc  b                                           ; $43de: $98
	adc  b                                           ; $43df: $88
	adc  b                                           ; $43e0: $88
	adc  b                                           ; $43e1: $88
	adc  b                                           ; $43e2: $88
	adc  b                                           ; $43e3: $88
	adc  b                                           ; $43e4: $88
	adc  b                                           ; $43e5: $88
	adc  b                                           ; $43e6: $88
	sbc  b                                           ; $43e7: $98
	adc  b                                           ; $43e8: $88
	adc  b                                           ; $43e9: $88
	adc  b                                           ; $43ea: $88
	adc  b                                           ; $43eb: $88
	adc  b                                           ; $43ec: $88
	adc  b                                           ; $43ed: $88
	adc  b                                           ; $43ee: $88
	adc  b                                           ; $43ef: $88
	add  a                                           ; $43f0: $87
	ld   a, b                                        ; $43f1: $78
	adc  b                                           ; $43f2: $88
	adc  b                                           ; $43f3: $88
	adc  b                                           ; $43f4: $88
	adc  b                                           ; $43f5: $88
	adc  b                                           ; $43f6: $88
	adc  c                                           ; $43f7: $89
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

Jump_0b5_4486:
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

Jump_0b5_44fb:
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

Jump_0b5_4574:
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
	sbc  c                                           ; $4599: $99
	adc  c                                           ; $459a: $89
	sbc  b                                           ; $459b: $98
	sbc  c                                           ; $459c: $99
	adc  c                                           ; $459d: $89
	sbc  c                                           ; $459e: $99
	adc  b                                           ; $459f: $88
	adc  b                                           ; $45a0: $88
	ld   [hl], a                                     ; $45a1: $77
	ld   [hl], a                                     ; $45a2: $77
	ld   [hl], a                                     ; $45a3: $77
	ld   h, a                                        ; $45a4: $67
	ld   [hl], a                                     ; $45a5: $77
	ld   [hl], a                                     ; $45a6: $77
	adc  b                                           ; $45a7: $88
	adc  b                                           ; $45a8: $88
	adc  b                                           ; $45a9: $88
	sbc  b                                           ; $45aa: $98
	adc  b                                           ; $45ab: $88
	sbc  c                                           ; $45ac: $99
	sbc  c                                           ; $45ad: $99
	sbc  c                                           ; $45ae: $99
	adc  c                                           ; $45af: $89
	sbc  b                                           ; $45b0: $98
	add  a                                           ; $45b1: $87
	adc  b                                           ; $45b2: $88
	sbc  b                                           ; $45b3: $98
	ld   [hl], a                                     ; $45b4: $77
	ld   a, c                                        ; $45b5: $79
	ld   [hl], a                                     ; $45b6: $77
	ld   [hl], a                                     ; $45b7: $77
	ld   h, a                                        ; $45b8: $67
	ld   h, [hl]                                     ; $45b9: $66
	ld   h, [hl]                                     ; $45ba: $66
	ld   [hl], a                                     ; $45bb: $77
	halt                                             ; $45bc: $76
	ld   a, c                                        ; $45bd: $79
	ld   [hl], a                                     ; $45be: $77
	sbc  b                                           ; $45bf: $98
	adc  c                                           ; $45c0: $89
	xor  c                                           ; $45c1: $a9
	sbc  d                                           ; $45c2: $9a
	xor  d                                           ; $45c3: $aa
	xor  c                                           ; $45c4: $a9
	xor  d                                           ; $45c5: $aa
	sbc  d                                           ; $45c6: $9a
	xor  c                                           ; $45c7: $a9
	cp   e                                           ; $45c8: $bb
	xor  c                                           ; $45c9: $a9
	sbc  e                                           ; $45ca: $9b
	sbc  b                                           ; $45cb: $98
	xor  c                                           ; $45cc: $a9
	ld   [hl], a                                     ; $45cd: $77
	add  [hl]                                        ; $45ce: $86
	ld   h, a                                        ; $45cf: $67
	ld   d, e                                        ; $45d0: $53
	ld   b, e                                        ; $45d1: $43
	ld   de, $5411                                   ; $45d2: $11 $11 $54
	ld   [hl+], a                                    ; $45d5: $22
	ld   e, d                                        ; $45d6: $5a
	sbc  d                                           ; $45d7: $9a
	xor  d                                           ; $45d8: $aa
	sbc  $fb                                         ; $45d9: $de $fb
	cp   l                                           ; $45db: $bd
	db   $dd                                         ; $45dc: $dd
	xor  d                                           ; $45dd: $aa
	xor  d                                           ; $45de: $aa
	xor  b                                           ; $45df: $a8
	sbc  b                                           ; $45e0: $98
	xor  c                                           ; $45e1: $a9
	sbc  c                                           ; $45e2: $99
	xor  e                                           ; $45e3: $ab
	adc  c                                           ; $45e4: $89
	sbc  c                                           ; $45e5: $99
	add  l                                           ; $45e6: $85
	ld   b, c                                        ; $45e7: $41
	ld   de, $1111                                   ; $45e8: $11 $11 $11
	ld   de, $ac13                                   ; $45eb: $11 $13 $ac
	rst  JumpTable                                         ; $45ee: $df
	rst  $38                                         ; $45ef: $ff
	rst  $38                                         ; $45f0: $ff
	rst  $38                                         ; $45f1: $ff
	rst  $38                                         ; $45f2: $ff
	or   a                                           ; $45f3: $b7
	ld   [hl], a                                     ; $45f4: $77
	ld   b, e                                        ; $45f5: $43
	ld   b, l                                        ; $45f6: $45
	adc  d                                           ; $45f7: $8a
	cp   h                                           ; $45f8: $bc
	rst  $28                                         ; $45f9: $ef
	rst  $38                                         ; $45fa: $ff
	db   $dd                                         ; $45fb: $dd
	sub  [hl]                                        ; $45fc: $96
	ld   hl, $1111                                   ; $45fd: $21 $11 $11
	ld   de, $1111                                   ; $4600: $11 $11 $11
	ld   e, a                                        ; $4603: $5f
	rst  $38                                         ; $4604: $ff
	rst  $38                                         ; $4605: $ff
	rst  $38                                         ; $4606: $ff
	rst  $38                                         ; $4607: $ff
	db   $fd                                         ; $4608: $fd
	or   [hl]                                        ; $4609: $b6
	ld   de, $1411                                   ; $460a: $11 $11 $14
	xor  h                                           ; $460d: $ac
	rst  $38                                         ; $460e: $ff
	rst  $38                                         ; $460f: $ff
	rst  $38                                         ; $4610: $ff
	db   $fd                                         ; $4611: $fd
	and  l                                           ; $4612: $a5
	ld   de, $1111                                   ; $4613: $11 $11 $11
	ld   de, $8511                                   ; $4616: $11 $11 $85
	ld   a, a                                        ; $4619: $7f
	rst  $38                                         ; $461a: $ff
	rst  $38                                         ; $461b: $ff
	rst  $38                                         ; $461c: $ff

jr_0b5_461d:
	rst  $38                                         ; $461d: $ff
	adc  b                                           ; $461e: $88
	ld   [hl], c                                     ; $461f: $71
	ld   [de], a                                     ; $4620: $12
	ld   de, $ff19                                   ; $4621: $11 $19 $ff
	rst  $38                                         ; $4624: $ff
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	bit  6, c                                        ; $4627: $cb $71
	ld   de, $1111                                   ; $4629: $11 $11 $11
	ld   de, $8f11                                   ; $462c: $11 $11 $8f
	set  7, a                                        ; $462f: $cb $ff
	rst  $38                                         ; $4631: $ff
	rst  $38                                         ; $4632: $ff
	rst  $38                                         ; $4633: $ff
	and  h                                           ; $4634: $a4
	ld   h, a                                        ; $4635: $67
	ld   hl, $4687                                   ; $4636: $21 $87 $46
	cp   [hl]                                        ; $4639: $be
	rst  $38                                         ; $463a: $ff
	rst  $38                                         ; $463b: $ff
	rst  $38                                         ; $463c: $ff
	cp   d                                           ; $463d: $ba
	sub  l                                           ; $463e: $95
	ld   de, $1111                                   ; $463f: $11 $11 $11
	ld   de, $1111                                   ; $4642: $11 $11 $11
	sbc  $69                                         ; $4645: $de $69
	rst  $38                                         ; $4647: $ff
	rst  $38                                         ; $4648: $ff
	rst  $38                                         ; $4649: $ff
	rst  $38                                         ; $464a: $ff
	xor  c                                           ; $464b: $a9
	and  [hl]                                        ; $464c: $a6
	ld   h, $95                                      ; $464d: $26 $95
	jr   c, jr_0b5_461d                              ; $464f: $38 $cc

	rst  JumpTable                                         ; $4651: $df
	rst  $38                                         ; $4652: $ff
	db   $fd                                         ; $4653: $fd
	cp   d                                           ; $4654: $ba
	add  h                                           ; $4655: $84
	ld   de, $1111                                   ; $4656: $11 $11 $11
	ld   de, $1e11                                   ; $4659: $11 $11 $1e
	pop  af                                          ; $465c: $f1
	adc  a                                           ; $465d: $8f
	rst  $38                                         ; $465e: $ff
	rst  $38                                         ; $465f: $ff
	rst  $38                                         ; $4660: $ff
	ei                                               ; $4661: $fb
	cp   e                                           ; $4662: $bb
	ld   b, c                                        ; $4663: $41
	jr   c, @+$43                                    ; $4664: $38 $41

	ld   e, h                                        ; $4666: $5c
	call c, $ffef                                    ; $4667: $dc $ef $ff
	call c, $52c8                                    ; $466a: $dc $c8 $52
	ld   sp, $1111                                   ; $466d: $31 $11 $11
	ld   de, $1511                                   ; $4670: $11 $11 $15
	add  sp, $6f                                     ; $4673: $e8 $6f
	rst  $38                                         ; $4675: $ff
	rst  $38                                         ; $4676: $ff
	rst  $38                                         ; $4677: $ff
	db   $fc                                         ; $4678: $fc
	xor  d                                           ; $4679: $aa
	ld   [hl], e                                     ; $467a: $73
	ld   d, a                                        ; $467b: $57
	ld   h, [hl]                                     ; $467c: $66
	ld   h, a                                        ; $467d: $67
	cp   [hl]                                        ; $467e: $be
	set  7, a                                        ; $467f: $cb $ff
	set  5, d                                        ; $4681: $cb $ea
	ld   b, h                                        ; $4683: $44
	ld   b, c                                        ; $4684: $41
	ld   de, $1111                                   ; $4685: $11 $11 $11
	ld   de, $fa11                                   ; $4688: $11 $11 $fa
	inc  e                                           ; $468b: $1c
	rst  $38                                         ; $468c: $ff
	rst  $28                                         ; $468d: $ef
	rst  $38                                         ; $468e: $ff
	db   $ed                                         ; $468f: $ed
	sub  a                                           ; $4690: $97
	ld   h, c                                        ; $4691: $61
	ld   d, $83                                      ; $4692: $16 $83
	ld   c, e                                        ; $4694: $4b
	xor  $ef                                         ; $4695: $ee $ef
	rst  $38                                         ; $4697: $ff
	reti                                             ; $4698: $d9


	add  a                                           ; $4699: $87
	ld   sp, $1121                                   ; $469a: $31 $21 $11
	ld   de, $1131                                   ; $469d: $11 $31 $11
	inc  e                                           ; $46a0: $1c
	pop  af                                          ; $46a1: $f1
	ld   c, a                                        ; $46a2: $4f
	ei                                               ; $46a3: $fb
	rst  JumpTable                                         ; $46a4: $df
	db   $fd                                         ; $46a5: $fd
	call c, $5199                                    ; $46a6: $dc $99 $51
	ld   c, d                                        ; $46a9: $4a
	ld   [hl], e                                     ; $46aa: $73
	ld   a, l                                        ; $46ab: $7d
	db   $dd                                         ; $46ac: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46ad: $cf
	db   $dd                                         ; $46ae: $dd
	cp   d                                           ; $46af: $ba
	add  l                                           ; $46b0: $85
	ld   b, d                                        ; $46b1: $42
	ld   de, $1211                                   ; $46b2: $11 $11 $12
	ld   de, $2f01                                   ; $46b5: $11 $01 $2f
	pop  bc                                          ; $46b8: $c1
	rst  $38                                         ; $46b9: $ff
	ld   a, [$9bff]                                  ; $46ba: $fa $ff $9b
	xor  d                                           ; $46bd: $aa
	ld   e, c                                        ; $46be: $59
	ld   h, l                                        ; $46bf: $65
	sbc  d                                           ; $46c0: $9a
	adc  b                                           ; $46c1: $88
	db   $db                                         ; $46c2: $db
	xor  h                                           ; $46c3: $ac
	reti                                             ; $46c4: $d9


	sbc  l                                           ; $46c5: $9d
	or   a                                           ; $46c6: $b7
	ld   a, c                                        ; $46c7: $79
	ld   h, h                                        ; $46c8: $64
	ld   d, h                                        ; $46c9: $54
	ld   [de], a                                     ; $46ca: $12
	ld   sp, $1111                                   ; $46cb: $31 $11 $11
	dec  e                                           ; $46ce: $1d
	call nz, $febf                                   ; $46cf: $c4 $bf $fe
	rst  $38                                         ; $46d2: $ff
	ld   sp, hl                                      ; $46d3: $f9
	sub  [hl]                                        ; $46d4: $96
	ld   b, l                                        ; $46d5: $45
	ld   [de], a                                     ; $46d6: $12
	ld   l, h                                        ; $46d7: $6c
	adc  c                                           ; $46d8: $89
	rst  $38                                         ; $46d9: $ff
	cp   $fb                                         ; $46da: $fe $fb
	cp   h                                           ; $46dc: $bc
	ld   [hl], a                                     ; $46dd: $77
	halt                                             ; $46de: $76
	dec  [hl]                                        ; $46df: $35
	ld   [hl], l                                     ; $46e0: $75
	ld   d, l                                        ; $46e1: $55

jr_0b5_46e2:
	ld   d, d                                        ; $46e2: $52
	ld   hl, $1811                                   ; $46e3: $21 $11 $18
	pop  af                                          ; $46e6: $f1
	cpl                                              ; $46e7: $2f
	rst  $38                                         ; $46e8: $ff
	rst  $38                                         ; $46e9: $ff
	cp   $a8                                         ; $46ea: $fe $a8
	ld   b, h                                        ; $46ec: $44
	ld   de, $874b                                   ; $46ed: $11 $4b $87
	rst  $38                                         ; $46f0: $ff
	rst  $38                                         ; $46f1: $ff
	cp   $ca                                         ; $46f2: $fe $ca
	ld   h, l                                        ; $46f4: $65
	ld   h, h                                        ; $46f5: $64
	ld   [hl+], a                                    ; $46f6: $22
	ld   b, h                                        ; $46f7: $44
	ld   b, l                                        ; $46f8: $45
	ld   b, e                                        ; $46f9: $43
	ld   [hl], $31                                   ; $46fa: $36 $31
	ld   de, $1ae7                                   ; $46fc: $11 $e7 $1a
	rst  $38                                         ; $46ff: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4700: $cf
	rst  $38                                         ; $4701: $ff
	and  [hl]                                        ; $4702: $a6
	ld   h, l                                        ; $4703: $65
	ld   h, e                                        ; $4704: $63
	daa                                              ; $4705: $27
	db   $db                                         ; $4706: $db
	cp   a                                           ; $4707: $bf
	db   $fd                                         ; $4708: $fd
	cp   l                                           ; $4709: $bd
	cp   e                                           ; $470a: $bb
	sbc  c                                           ; $470b: $99
	sbc  c                                           ; $470c: $99
	sub  l                                           ; $470d: $95
	halt                                             ; $470e: $76
	ld   d, h                                        ; $470f: $54
	ld   sp, $1111                                   ; $4710: $31 $11 $11
	ld   de, $f912                                   ; $4713: $11 $12 $f9
	ld   a, a                                        ; $4716: $7f
	rst  $38                                         ; $4717: $ff
	rst  JumpTable                                         ; $4718: $df
	ret  c                                           ; $4719: $d8

	ld   h, e                                        ; $471a: $63
	ld   d, e                                        ; $471b: $53
	ld   d, d                                        ; $471c: $52
	ld   l, l                                        ; $471d: $6d
	set  3, a                                        ; $471e: $cb $df
	jp   z, $75aa                                    ; $4720: $ca $aa $75

	xor  e                                           ; $4723: $ab
	xor  c                                           ; $4724: $a9
	cp   d                                           ; $4725: $ba
	xor  c                                           ; $4726: $a9
	halt                                             ; $4727: $76
	ld   b, h                                        ; $4728: $44
	ld   b, c                                        ; $4729: $41
	ld   de, $1111                                   ; $472a: $11 $11 $11
	cpl                                              ; $472d: $2f
	add  [hl]                                        ; $472e: $86
	rst  $38                                         ; $472f: $ff
	db   $fc                                         ; $4730: $fc
	cp   $85                                         ; $4731: $fe $85
	ld   d, l                                        ; $4733: $55
	inc  h                                           ; $4734: $24
	jr   c, jr_0b5_46e2                              ; $4735: $38 $ab

	db   $ec                                         ; $4737: $ec
	db   $ec                                         ; $4738: $ec
	cp   c                                           ; $4739: $b9
	xor  b                                           ; $473a: $a8
	ld   a, e                                        ; $473b: $7b
	cp   e                                           ; $473c: $bb
	cp   e                                           ; $473d: $bb
	sbc  b                                           ; $473e: $98
	add  l                                           ; $473f: $85
	ld   b, d                                        ; $4740: $42
	ld   hl, $2511                                   ; $4741: $21 $11 $25
	ld   de, $9f21                                   ; $4744: $11 $21 $9f
	or   [hl]                                        ; $4747: $b6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4748: $cf
	jp   hl                                          ; $4749: $e9


	call z, Call_0b5_7773                            ; $474a: $cc $73 $77
	add  a                                           ; $474d: $87
	ld   l, e                                        ; $474e: $6b
	db   $eb                                         ; $474f: $eb
	xor  [hl]                                        ; $4750: $ae
	xor  c                                           ; $4751: $a9
	xor  c                                           ; $4752: $a9
	ld   d, [hl]                                     ; $4753: $56
	adc  b                                           ; $4754: $88
	xor  [hl]                                        ; $4755: $ae
	call z, $76dd                                    ; $4756: $cc $dd $76
	ld   h, e                                        ; $4759: $63
	ld   de, $1141                                   ; $475a: $11 $41 $11
	ld   b, l                                        ; $475d: $45
	inc  d                                           ; $475e: $14
	ld   de, $c46f                                   ; $475f: $11 $6f $c4
	rst  $28                                         ; $4762: $ef
	ei                                               ; $4763: $fb
	db   $db                                         ; $4764: $db
	adc  d                                           ; $4765: $8a
	ld   a, b                                        ; $4766: $78
	ld   a, b                                        ; $4767: $78
	ld   a, b                                        ; $4768: $78
	jp   z, $aaab                                    ; $4769: $ca $ab $aa

	sub  a                                           ; $476c: $97
	ld   l, b                                        ; $476d: $68
	xor  d                                           ; $476e: $aa
	cp   l                                           ; $476f: $bd
	xor  e                                           ; $4770: $ab
	ret                                              ; $4771: $c9


	ld   d, l                                        ; $4772: $55
	ld   h, h                                        ; $4773: $64
	ld   b, e                                        ; $4774: $43
	ld   sp, $2414                                   ; $4775: $31 $14 $24
	inc  de                                          ; $4778: $13
	ld   b, c                                        ; $4779: $41
	ld   e, [hl]                                     ; $477a: $5e
	and  h                                           ; $477b: $a4
	rst  JumpTable                                         ; $477c: $df
	db   $eb                                         ; $477d: $eb
	xor  $99                                         ; $477e: $ee $99
	adc  c                                           ; $4780: $89
	add  [hl]                                        ; $4781: $86
	ld   l, b                                        ; $4782: $68
	jp   c, $cb9a                                    ; $4783: $da $9a $cb

	add  [hl]                                        ; $4786: $86
	ld   h, [hl]                                     ; $4787: $66
	ld   l, c                                        ; $4788: $69
	cp   h                                           ; $4789: $bc
	call $b7bc                                       ; $478a: $cd $bc $b7
	ld   h, h                                        ; $478d: $64
	ld   d, h                                        ; $478e: $54
	ld   [hl-], a                                    ; $478f: $32
	ld   [de], a                                     ; $4790: $12
	ld   h, a                                        ; $4791: $67
	ld   de, $21a7                                   ; $4792: $11 $a7 $21
	inc  a                                           ; $4795: $3c
	sub  a                                           ; $4796: $97
	sbc  a                                           ; $4797: $9f
	db   $eb                                         ; $4798: $eb
	sbc  $d9                                         ; $4799: $de $d9
	sbc  d                                           ; $479b: $9a
	adc  b                                           ; $479c: $88
	add  [hl]                                        ; $479d: $86
	ld   l, d                                        ; $479e: $6a
	and  a                                           ; $479f: $a7
	adc  d                                           ; $47a0: $8a
	xor  b                                           ; $47a1: $a8
	ld   [hl], a                                     ; $47a2: $77
	ld   l, b                                        ; $47a3: $68
	db   $db                                         ; $47a4: $db
	xor  l                                           ; $47a5: $ad
	ret                                              ; $47a6: $c9


	sbc  d                                           ; $47a7: $9a
	ld   h, h                                        ; $47a8: $64
	ld   b, h                                        ; $47a9: $44
	ld   d, h                                        ; $47aa: $54
	ld   hl, $7659                                   ; $47ab: $21 $59 $76
	ld   b, d                                        ; $47ae: $42
	ld   d, [hl]                                     ; $47af: $56
	ld   d, c                                        ; $47b0: $51
	sbc  [hl]                                        ; $47b1: $9e
	sbc  e                                           ; $47b2: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47b3: $cf
	db   $db                                         ; $47b4: $db
	cp   d                                           ; $47b5: $ba
	ld   hl, sp+$68                                  ; $47b6: $f8 $68
	and  a                                           ; $47b8: $a7
	ld   e, c                                        ; $47b9: $59
	sbc  b                                           ; $47ba: $98
	ld   a, d                                        ; $47bb: $7a
	xor  b                                           ; $47bc: $a8
	ld   [hl], a                                     ; $47bd: $77
	cp   e                                           ; $47be: $bb
	xor  e                                           ; $47bf: $ab
	cp   h                                           ; $47c0: $bc
	xor  b                                           ; $47c1: $a8
	ld   a, c                                        ; $47c2: $79
	ld   h, h                                        ; $47c3: $64
	ld   b, [hl]                                     ; $47c4: $46
	ld   [hl], e                                     ; $47c5: $73
	ld   e, b                                        ; $47c6: $58
	ld   d, c                                        ; $47c7: $51
	adc  c                                           ; $47c8: $89
	ld   [de], a                                     ; $47c9: $12
	ld   b, d                                        ; $47ca: $42
	ld   e, c                                        ; $47cb: $59
	ld   l, b                                        ; $47cc: $68
	cp   $9c                                         ; $47cd: $fe $9c
	ld   a, [$b65c]                                  ; $47cf: $fa $5c $b6
	ld   a, c                                        ; $47d2: $79
	xor  b                                           ; $47d3: $a8
	ld   a, c                                        ; $47d4: $79
	xor  e                                           ; $47d5: $ab
	adc  b                                           ; $47d6: $88
	cp   d                                           ; $47d7: $ba
	add  a                                           ; $47d8: $87
	adc  b                                           ; $47d9: $88
	xor  d                                           ; $47da: $aa
	xor  e                                           ; $47db: $ab
	db   $db                                         ; $47dc: $db
	sbc  c                                           ; $47dd: $99
	sub  l                                           ; $47de: $95
	daa                                              ; $47df: $27
	ld   d, e                                        ; $47e0: $53
	ld   h, [hl]                                     ; $47e1: $66
	ld   [hl], $93                                   ; $47e2: $36 $93
	ld   b, e                                        ; $47e4: $43
	ld   de, $5759                                   ; $47e5: $11 $59 $57
	ld   a, l                                        ; $47e8: $7d
	ei                                               ; $47e9: $fb
	xor  h                                           ; $47ea: $ac
	jp   hl                                          ; $47eb: $e9


	sbc  e                                           ; $47ec: $9b
	cp   c                                           ; $47ed: $b9
	ld   a, e                                        ; $47ee: $7b
	xor  c                                           ; $47ef: $a9
	xor  d                                           ; $47f0: $aa
	adc  c                                           ; $47f1: $89
	cp   c                                           ; $47f2: $b9

jr_0b5_47f3:
	adc  b                                           ; $47f3: $88
	xor  b                                           ; $47f4: $a8
	adc  h                                           ; $47f5: $8c
	and  a                                           ; $47f6: $a7
	cp   c                                           ; $47f7: $b9
	ld   l, b                                        ; $47f8: $68
	ld   [hl], l                                     ; $47f9: $75
	ld   e, b                                        ; $47fa: $58
	inc  [hl]                                        ; $47fb: $34
	ld   d, l                                        ; $47fc: $55
	ld   [hl], l                                     ; $47fd: $75
	sub  a                                           ; $47fe: $97
	ld   l, b                                        ; $47ff: $68
	ld   d, a                                        ; $4800: $57
	add  d                                           ; $4801: $82
	ld   d, $c7                                      ; $4802: $16 $c7
	jr   z, jr_0b5_47f3                              ; $4804: $28 $ed

	sbc  e                                           ; $4806: $9b
	db   $eb                                         ; $4807: $eb
	adc  b                                           ; $4808: $88
	ret                                              ; $4809: $c9


	ld   l, c                                        ; $480a: $69
	cp   d                                           ; $480b: $ba
	ld   a, l                                        ; $480c: $7d
	ret  z                                           ; $480d: $c8

	sbc  c                                           ; $480e: $99
	and  a                                           ; $480f: $a7
	ld   d, [hl]                                     ; $4810: $56
	and  a                                           ; $4811: $a7
	adc  h                                           ; $4812: $8c
	xor  h                                           ; $4813: $ac
	xor  e                                           ; $4814: $ab
	sbc  e                                           ; $4815: $9b
	add  l                                           ; $4816: $85
	add  a                                           ; $4817: $87
	ld   [hl], h                                     ; $4818: $74
	and  e                                           ; $4819: $a3
	ld   d, h                                        ; $481a: $54
	ld   e, b                                        ; $481b: $58
	add  hl, hl                                      ; $481c: $29
	ld   b, [hl]                                     ; $481d: $46
	ld   d, d                                        ; $481e: $52
	ld   h, $71                                      ; $481f: $26 $71
	sbc  d                                           ; $4821: $9a
	and  [hl]                                        ; $4822: $a6
	sbc  $7a                                         ; $4823: $de $7a
	call z, $9b7a                                    ; $4825: $cc $7a $9b
	cp   c                                           ; $4828: $b9
	ld   a, e                                        ; $4829: $7b
	ret  z                                           ; $482a: $c8

	xor  d                                           ; $482b: $aa
	sub  [hl]                                        ; $482c: $96
	ld   a, e                                        ; $482d: $7b
	and  [hl]                                        ; $482e: $a6
	sbc  h                                           ; $482f: $9c
	ld   [hl], a                                     ; $4830: $77
	ld   [$c969], a                                  ; $4831: $ea $69 $c9
	dec  hl                                          ; $4834: $2b
	or   d                                           ; $4835: $b2
	ld   c, h                                        ; $4836: $4c
	sub  e                                           ; $4837: $93
	sbc  e                                           ; $4838: $9b
	add  h                                           ; $4839: $84
	ld   h, [hl]                                     ; $483a: $66
	inc  de                                          ; $483b: $13
	ld   h, c                                        ; $483c: $61
	dec  d                                           ; $483d: $15
	ld   d, l                                        ; $483e: $55
	ld   l, c                                        ; $483f: $69
	sbc  e                                           ; $4840: $9b
	cp   d                                           ; $4841: $ba
	xor  d                                           ; $4842: $aa
	cp   c                                           ; $4843: $b9
	ld   l, c                                        ; $4844: $69
	jp   hl                                          ; $4845: $e9


	ld   a, [hl-]                                    ; $4846: $3a
	sub  $7b                                         ; $4847: $d6 $7b
	xor  c                                           ; $4849: $a9
	xor  d                                           ; $484a: $aa
	sbc  c                                           ; $484b: $99
	ld   a, c                                        ; $484c: $79
	cp   b                                           ; $484d: $b8
	ld   a, c                                        ; $484e: $79
	sub  [hl]                                        ; $484f: $96
	adc  b                                           ; $4850: $88
	scf                                              ; $4851: $37
	sbc  b                                           ; $4852: $98
	ld   d, a                                        ; $4853: $57
	or   e                                           ; $4854: $b3
	xor  d                                           ; $4855: $aa
	ld   d, l                                        ; $4856: $55
	and  a                                           ; $4857: $a7
	add  hl, de                                      ; $4858: $19
	ld   h, [hl]                                     ; $4859: $66
	ld   c, e                                        ; $485a: $4b
	and  a                                           ; $485b: $a7
	halt                                             ; $485c: $76
	and  [hl]                                        ; $485d: $a6
	or   [hl]                                        ; $485e: $b6
	ld   l, c                                        ; $485f: $69
	rst  $10                                         ; $4860: $d7
	ld   a, [hl-]                                    ; $4861: $3a
	srl  e                                           ; $4862: $cb $3b
	ld   sp, hl                                      ; $4864: $f9
	ld   e, l                                        ; $4865: $5d
	rst  ToBoot                                         ; $4866: $c7
	adc  c                                           ; $4867: $89
	sbc  b                                           ; $4868: $98
	or   [hl]                                        ; $4869: $b6
	ld   l, e                                        ; $486a: $6b
	or   l                                           ; $486b: $b5
	ld   a, a                                        ; $486c: $7f
	and  l                                           ; $486d: $a5
	cp   h                                           ; $486e: $bc
	sub  a                                           ; $486f: $97
	adc  d                                           ; $4870: $8a
	halt                                             ; $4871: $76
	ld   a, b                                        ; $4872: $78
	ld   d, l                                        ; $4873: $55
	ld   [hl], a                                     ; $4874: $77
	ld   h, [hl]                                     ; $4875: $66
	ld   b, [hl]                                     ; $4876: $46
	ld   h, h                                        ; $4877: $64
	add  [hl]                                        ; $4878: $86
	ld   d, [hl]                                     ; $4879: $56
	ld   h, e                                        ; $487a: $63
	ld   b, [hl]                                     ; $487b: $46
	ld   h, [hl]                                     ; $487c: $66
	ld   a, e                                        ; $487d: $7b
	ld   c, b                                        ; $487e: $48
	sub  [hl]                                        ; $487f: $96
	ld   l, b                                        ; $4880: $68
	and  l                                           ; $4881: $a5
	ld   a, d                                        ; $4882: $7a
	sub  [hl]                                        ; $4883: $96
	xor  e                                           ; $4884: $ab
	sbc  c                                           ; $4885: $99
	xor  h                                           ; $4886: $ac
	and  a                                           ; $4887: $a7
	sbc  h                                           ; $4888: $9c
	sub  [hl]                                        ; $4889: $96
	ld   a, l                                        ; $488a: $7d
	sub  a                                           ; $488b: $97
	xor  e                                           ; $488c: $ab
	or   h                                           ; $488d: $b4
	xor  d                                           ; $488e: $aa
	ld   h, l                                        ; $488f: $65
	ld   l, c                                        ; $4890: $69
	ld   d, h                                        ; $4891: $54
	cp   c                                           ; $4892: $b9
	ld   d, a                                        ; $4893: $57
	or   a                                           ; $4894: $b7
	ld   l, c                                        ; $4895: $69
	ld   l, c                                        ; $4896: $69
	ld   l, b                                        ; $4897: $68
	daa                                              ; $4898: $27
	jp   nz, $b568                                   ; $4899: $c2 $68 $b5

	xor  h                                           ; $489c: $ac
	cp   c                                           ; $489d: $b9
	adc  d                                           ; $489e: $8a
	sbc  e                                           ; $489f: $9b
	ld   l, c                                        ; $48a0: $69
	sbc  c                                           ; $48a1: $99
	ld   a, b                                        ; $48a2: $78
	or   a                                           ; $48a3: $b7
	cp   e                                           ; $48a4: $bb
	sbc  b                                           ; $48a5: $98
	sbc  b                                           ; $48a6: $98
	xor  d                                           ; $48a7: $aa
	ld   h, a                                        ; $48a8: $67
	or   a                                           ; $48a9: $b7
	ld   l, d                                        ; $48aa: $6a
	halt                                             ; $48ab: $76
	xor  e                                           ; $48ac: $ab
	ld   l, b                                        ; $48ad: $68

jr_0b5_48ae:
	add  a                                           ; $48ae: $87
	halt                                             ; $48af: $76
	ld   h, l                                        ; $48b0: $65
	or   a                                           ; $48b1: $b7
	ld   e, c                                        ; $48b2: $59
	sub  l                                           ; $48b3: $95
	ld   c, c                                        ; $48b4: $49
	ld   [hl], e                                     ; $48b5: $73
	ld   c, d                                        ; $48b6: $4a
	sub  a                                           ; $48b7: $97
	ld   a, c                                        ; $48b8: $79
	or   l                                           ; $48b9: $b5
	ld   a, d                                        ; $48ba: $7a
	ld   [hl], l                                     ; $48bb: $75
	sub  a                                           ; $48bc: $97
	ld   a, c                                        ; $48bd: $79
	sbc  b                                           ; $48be: $98
	ld   c, e                                        ; $48bf: $4b
	sub  [hl]                                        ; $48c0: $96
	ld   l, b                                        ; $48c1: $68
	ld   [hl], a                                     ; $48c2: $77
	ld   a, c                                        ; $48c3: $79
	ret  c                                           ; $48c4: $d8

	ld   a, b                                        ; $48c5: $78
	jp   z, $e849                                    ; $48c6: $ca $49 $e8

	ld   e, h                                        ; $48c9: $5c
	and  [hl]                                        ; $48ca: $a6
	sbc  c                                           ; $48cb: $99
	ld   l, d                                        ; $48cc: $6a
	or   a                                           ; $48cd: $b7
	adc  c                                           ; $48ce: $89
	sbc  b                                           ; $48cf: $98
	ld   a, b                                        ; $48d0: $78
	ld   h, a                                        ; $48d1: $67
	and  [hl]                                        ; $48d2: $a6
	ld   l, c                                        ; $48d3: $69
	call nz, Call_0b5_725e                           ; $48d4: $c4 $5e $72
	sbc  b                                           ; $48d7: $98
	dec  h                                           ; $48d8: $25
	add  a                                           ; $48d9: $87
	ld   e, d                                        ; $48da: $5a
	sbc  d                                           ; $48db: $9a
	or   a                                           ; $48dc: $b7
	adc  c                                           ; $48dd: $89
	sub  [hl]                                        ; $48de: $96
	sbc  c                                           ; $48df: $99
	sbc  d                                           ; $48e0: $9a
	sbc  e                                           ; $48e1: $9b
	adc  c                                           ; $48e2: $89
	ld   a, e                                        ; $48e3: $7b
	xor  b                                           ; $48e4: $a8
	ld   [hl], a                                     ; $48e5: $77
	add  sp, $3b                                     ; $48e6: $e8 $3b
	push de                                          ; $48e8: $d5
	ld   l, h                                        ; $48e9: $6c
	sub  [hl]                                        ; $48ea: $96
	ld   l, b                                        ; $48eb: $68
	add  a                                           ; $48ec: $87
	ld   h, l                                        ; $48ed: $65
	ld   e, d                                        ; $48ee: $5a
	ld   [hl], l                                     ; $48ef: $75
	sub  a                                           ; $48f0: $97
	ld   [hl], h                                     ; $48f1: $74
	ld   a, c                                        ; $48f2: $79
	ld   h, [hl]                                     ; $48f3: $66
	ld   a, e                                        ; $48f4: $7b
	and  [hl]                                        ; $48f5: $a6
	ld   l, e                                        ; $48f6: $6b
	sub  d                                           ; $48f7: $92
	ld   l, h                                        ; $48f8: $6c
	ld   [hl], e                                     ; $48f9: $73
	cp   e                                           ; $48fa: $bb
	ld   h, a                                        ; $48fb: $67
	cp   c                                           ; $48fc: $b9
	ld   a, b                                        ; $48fd: $78
	ld   [hl], a                                     ; $48fe: $77
	ld   a, h                                        ; $48ff: $7c
	and  l                                           ; $4900: $a5
	adc  h                                           ; $4901: $8c
	ld   h, h                                        ; $4902: $64
	jp   z, $ce77                                    ; $4903: $ca $77 $ce

	ld   h, l                                        ; $4906: $65
	sbc  d                                           ; $4907: $9a
	sub  [hl]                                        ; $4908: $96
	ld   a, d                                        ; $4909: $7a
	and  l                                           ; $490a: $a5
	ld   c, h                                        ; $490b: $4c
	and  c                                           ; $490c: $a1
	ld   a, a                                        ; $490d: $7f
	add  c                                           ; $490e: $81
	call z, $9725                                    ; $490f: $cc $25 $97
	ld   d, a                                        ; $4912: $57
	ld   [hl], l                                     ; $4913: $75
	xor  b                                           ; $4914: $a8
	jr   c, jr_0b5_48ae                              ; $4915: $38 $97

	ld   c, d                                        ; $4917: $4a
	or   [hl]                                        ; $4918: $b6
	ld   e, b                                        ; $4919: $58
	rst  ToBoot                                         ; $491a: $c7
	halt                                             ; $491b: $76
	sbc  l                                           ; $491c: $9d
	sub  l                                           ; $491d: $95
	xor  l                                           ; $491e: $ad
	halt                                             ; $491f: $76
	cp   d                                           ; $4920: $ba
	ld   c, e                                        ; $4921: $4b
	or   l                                           ; $4922: $b5
	cp   h                                           ; $4923: $bc
	ld   [hl], a                                     ; $4924: $77
	ret                                              ; $4925: $c9


	ld   a, c                                        ; $4926: $79
	and  a                                           ; $4927: $a7
	ld   a, d                                        ; $4928: $7a
	ld   h, a                                        ; $4929: $67
	sbc  d                                           ; $492a: $9a
	add  [hl]                                        ; $492b: $86
	sub  a                                           ; $492c: $97
	add  [hl]                                        ; $492d: $86
	ld   l, c                                        ; $492e: $69
	ld   [hl], l                                     ; $492f: $75
	ld   l, e                                        ; $4930: $6b
	ld   h, a                                        ; $4931: $67
	ld   [hl], l                                     ; $4932: $75
	sub  [hl]                                        ; $4933: $96
	ld   [hl], a                                     ; $4934: $77
	adc  c                                           ; $4935: $89
	ld   a, d                                        ; $4936: $7a
	xor  d                                           ; $4937: $aa
	ld   d, [hl]                                     ; $4938: $56
	sub  [hl]                                        ; $4939: $96
	ld   a, c                                        ; $493a: $79
	cp   b                                           ; $493b: $b8
	adc  d                                           ; $493c: $8a
	sbc  b                                           ; $493d: $98
	ld   [hl], a                                     ; $493e: $77
	ld   a, b                                        ; $493f: $78
	sbc  e                                           ; $4940: $9b
	adc  b                                           ; $4941: $88
	xor  d                                           ; $4942: $aa
	halt                                             ; $4943: $76
	adc  b                                           ; $4944: $88
	halt                                             ; $4945: $76
	xor  d                                           ; $4946: $aa
	ld   [hl], a                                     ; $4947: $77
	sbc  d                                           ; $4948: $9a
	ld   d, a                                        ; $4949: $57
	add  a                                           ; $494a: $87
	add  a                                           ; $494b: $87
	ld   a, c                                        ; $494c: $79
	and  [hl]                                        ; $494d: $a6
	ld   c, b                                        ; $494e: $48
	sub  [hl]                                        ; $494f: $96
	ld   e, c                                        ; $4950: $59
	add  h                                           ; $4951: $84
	ld   l, c                                        ; $4952: $69
	ld   d, [hl]                                     ; $4953: $56
	ld   [hl], a                                     ; $4954: $77
	ld   a, d                                        ; $4955: $7a
	and  [hl]                                        ; $4956: $a6
	ld   h, a                                        ; $4957: $67
	ld   h, l                                        ; $4958: $65
	rst  ToBoot                                         ; $4959: $c7
	ld   l, e                                        ; $495a: $6b
	db   $fc                                         ; $495b: $fc
	ld   e, e                                        ; $495c: $5b
	adc  b                                           ; $495d: $88
	ld   a, c                                        ; $495e: $79
	or   [hl]                                        ; $495f: $b6
	xor  e                                           ; $4960: $ab
	xor  b                                           ; $4961: $a8
	xor  b                                           ; $4962: $a8
	ld   l, c                                        ; $4963: $69
	sbc  b                                           ; $4964: $98
	adc  h                                           ; $4965: $8c
	halt                                             ; $4966: $76
	ld   [hl], a                                     ; $4967: $77
	ld   h, l                                        ; $4968: $65
	add  [hl]                                        ; $4969: $86
	ld   l, c                                        ; $496a: $69
	add  [hl]                                        ; $496b: $86
	sub  [hl]                                        ; $496c: $96
	ld   c, c                                        ; $496d: $49
	and  l                                           ; $496e: $a5
	ld   a, e                                        ; $496f: $7b
	sub  a                                           ; $4970: $97
	sbc  e                                           ; $4971: $9b
	halt                                             ; $4972: $76
	ld   [hl], a                                     ; $4973: $77
	adc  b                                           ; $4974: $88
	add  a                                           ; $4975: $87
	sbc  b                                           ; $4976: $98
	adc  c                                           ; $4977: $89
	ld   a, c                                        ; $4978: $79
	ld   l, c                                        ; $4979: $69
	sbc  b                                           ; $497a: $98
	add  [hl]                                        ; $497b: $86
	ld   a, b                                        ; $497c: $78
	add  [hl]                                        ; $497d: $86
	sbc  d                                           ; $497e: $9a
	ld   a, b                                        ; $497f: $78
	cp   c                                           ; $4980: $b9
	ld   l, c                                        ; $4981: $69
	sub  [hl]                                        ; $4982: $96
	ld   a, h                                        ; $4983: $7c
	sub  [hl]                                        ; $4984: $96
	xor  d                                           ; $4985: $aa
	add  a                                           ; $4986: $87
	xor  b                                           ; $4987: $a8
	ld   l, b                                        ; $4988: $68
	xor  b                                           ; $4989: $a8
	ld   a, d                                        ; $498a: $7a
	sbc  b                                           ; $498b: $98
	adc  b                                           ; $498c: $88
	sub  [hl]                                        ; $498d: $96
	add  a                                           ; $498e: $87
	xor  b                                           ; $498f: $a8
	ld   a, b                                        ; $4990: $78
	sbc  b                                           ; $4991: $98
	ld   h, a                                        ; $4992: $67
	add  [hl]                                        ; $4993: $86
	ld   l, b                                        ; $4994: $68
	ld   [hl], a                                     ; $4995: $77
	add  l                                           ; $4996: $85
	ld   a, c                                        ; $4997: $79
	ld   h, [hl]                                     ; $4998: $66
	ld   l, b                                        ; $4999: $68
	sub  a                                           ; $499a: $97
	ld   [hl], a                                     ; $499b: $77
	add  a                                           ; $499c: $87
	add  a                                           ; $499d: $87
	adc  c                                           ; $499e: $89
	xor  b                                           ; $499f: $a8
	xor  c                                           ; $49a0: $a9
	ld   a, b                                        ; $49a1: $78
	ld   h, a                                        ; $49a2: $67
	xor  c                                           ; $49a3: $a9
	ld   l, e                                        ; $49a4: $6b
	or   a                                           ; $49a5: $b7
	adc  e                                           ; $49a6: $8b
	add  a                                           ; $49a7: $87
	adc  b                                           ; $49a8: $88
	xor  c                                           ; $49a9: $a9
	ld   a, b                                        ; $49aa: $78
	xor  b                                           ; $49ab: $a8
	ld   [hl], a                                     ; $49ac: $77
	sbc  c                                           ; $49ad: $99
	ld   d, a                                        ; $49ae: $57
	cp   b                                           ; $49af: $b8
	ld   e, d                                        ; $49b0: $5a
	and  [hl]                                        ; $49b1: $a6
	ld   l, d                                        ; $49b2: $6a
	halt                                             ; $49b3: $76
	ld   [hl], a                                     ; $49b4: $77
	halt                                             ; $49b5: $76
	and  a                                           ; $49b6: $a7
	ld   d, a                                        ; $49b7: $57
	ld   a, b                                        ; $49b8: $78
	ld   d, [hl]                                     ; $49b9: $56
	add  a                                           ; $49ba: $87
	ld   [hl], a                                     ; $49bb: $77
	add  a                                           ; $49bc: $87
	add  a                                           ; $49bd: $87
	ld   l, b                                        ; $49be: $68
	halt                                             ; $49bf: $76
	ld   a, c                                        ; $49c0: $79
	xor  b                                           ; $49c1: $a8
	adc  c                                           ; $49c2: $89
	sub  a                                           ; $49c3: $97
	sbc  c                                           ; $49c4: $99
	sub  a                                           ; $49c5: $97
	ld   a, c                                        ; $49c6: $79
	and  a                                           ; $49c7: $a7
	ld   a, c                                        ; $49c8: $79
	ld   a, b                                        ; $49c9: $78
	ld   a, b                                        ; $49ca: $78
	and  a                                           ; $49cb: $a7
	adc  d                                           ; $49cc: $8a
	or   a                                           ; $49cd: $b7
	ld   l, c                                        ; $49ce: $69
	sub  [hl]                                        ; $49cf: $96
	ld   e, d                                        ; $49d0: $5a
	or   [hl]                                        ; $49d1: $b6
	ld   a, c                                        ; $49d2: $79
	sub  a                                           ; $49d3: $97
	ld   a, b                                        ; $49d4: $78
	sub  a                                           ; $49d5: $97
	ld   l, c                                        ; $49d6: $69
	add  a                                           ; $49d7: $87
	ld   e, b                                        ; $49d8: $58
	sub  [hl]                                        ; $49d9: $96
	ld   [hl], a                                     ; $49da: $77
	add  a                                           ; $49db: $87
	sbc  b                                           ; $49dc: $98
	ld   a, b                                        ; $49dd: $78
	ld   h, a                                        ; $49de: $67
	adc  b                                           ; $49df: $88
	halt                                             ; $49e0: $76
	ld   [hl], a                                     ; $49e1: $77
	sub  a                                           ; $49e2: $97
	ld   a, b                                        ; $49e3: $78
	ld   h, a                                        ; $49e4: $67
	sbc  b                                           ; $49e5: $98
	ld   a, c                                        ; $49e6: $79
	sub  [hl]                                        ; $49e7: $96
	xor  d                                           ; $49e8: $aa
	ld   [hl], a                                     ; $49e9: $77
	and  a                                           ; $49ea: $a7
	ld   l, d                                        ; $49eb: $6a
	and  a                                           ; $49ec: $a7
	adc  d                                           ; $49ed: $8a
	and  a                                           ; $49ee: $a7
	adc  c                                           ; $49ef: $89
	adc  b                                           ; $49f0: $88
	sbc  b                                           ; $49f1: $98
	ld   a, c                                        ; $49f2: $79
	sub  [hl]                                        ; $49f3: $96
	xor  c                                           ; $49f4: $a9
	halt                                             ; $49f5: $76
	sbc  c                                           ; $49f6: $99
	adc  c                                           ; $49f7: $89
	ld   l, b                                        ; $49f8: $68
	and  a                                           ; $49f9: $a7
	ld   h, a                                        ; $49fa: $67
	sub  a                                           ; $49fb: $97
	ld   a, b                                        ; $49fc: $78
	ld   h, a                                        ; $49fd: $67
	add  l                                           ; $49fe: $85
	ld   a, d                                        ; $49ff: $7a
	add  h                                           ; $4a00: $84
	ld   e, d                                        ; $4a01: $5a
	ld   [hl], l                                     ; $4a02: $75
	sbc  c                                           ; $4a03: $99
	ld   [hl], a                                     ; $4a04: $77
	sbc  b                                           ; $4a05: $98
	ld   a, b                                        ; $4a06: $78
	add  l                                           ; $4a07: $85
	ld   l, c                                        ; $4a08: $69
	ld   a, b                                        ; $4a09: $78
	sub  a                                           ; $4a0a: $97
	adc  d                                           ; $4a0b: $8a
	xor  b                                           ; $4a0c: $a8
	sbc  b                                           ; $4a0d: $98
	ld   h, a                                        ; $4a0e: $67
	xor  d                                           ; $4a0f: $aa
	ld   [hl], a                                     ; $4a10: $77
	sbc  c                                           ; $4a11: $99
	ld   a, d                                        ; $4a12: $7a
	and  [hl]                                        ; $4a13: $a6
	ld   a, d                                        ; $4a14: $7a
	sub  a                                           ; $4a15: $97
	sbc  c                                           ; $4a16: $99
	adc  b                                           ; $4a17: $88
	ld   [hl], a                                     ; $4a18: $77
	adc  b                                           ; $4a19: $88
	halt                                             ; $4a1a: $76
	sbc  c                                           ; $4a1b: $99
	ld   a, b                                        ; $4a1c: $78
	ld   [hl], a                                     ; $4a1d: $77
	add  a                                           ; $4a1e: $87
	ld   l, c                                        ; $4a1f: $69
	add  l                                           ; $4a20: $85
	adc  d                                           ; $4a21: $8a
	add  a                                           ; $4a22: $87
	add  a                                           ; $4a23: $87
	ld   h, a                                        ; $4a24: $67
	ld   [hl], a                                     ; $4a25: $77
	add  a                                           ; $4a26: $87
	adc  b                                           ; $4a27: $88
	add  a                                           ; $4a28: $87
	ld   l, b                                        ; $4a29: $68
	ld   [hl], a                                     ; $4a2a: $77
	ld   a, c                                        ; $4a2b: $79
	adc  b                                           ; $4a2c: $88
	add  a                                           ; $4a2d: $87
	sbc  c                                           ; $4a2e: $99
	add  a                                           ; $4a2f: $87
	adc  c                                           ; $4a30: $89
	adc  b                                           ; $4a31: $88
	adc  c                                           ; $4a32: $89
	sbc  b                                           ; $4a33: $98
	ld   [hl], a                                     ; $4a34: $77
	adc  c                                           ; $4a35: $89
	add  a                                           ; $4a36: $87
	adc  d                                           ; $4a37: $8a
	sub  a                                           ; $4a38: $97
	sbc  c                                           ; $4a39: $99
	ld   [hl], l                                     ; $4a3a: $75
	adc  d                                           ; $4a3b: $8a
	add  a                                           ; $4a3c: $87
	sbc  c                                           ; $4a3d: $99
	add  a                                           ; $4a3e: $87
	sub  a                                           ; $4a3f: $97
	ld   a, b                                        ; $4a40: $78
	sbc  b                                           ; $4a41: $98
	ld   l, c                                        ; $4a42: $69
	add  a                                           ; $4a43: $87
	ld   l, c                                        ; $4a44: $69
	add  a                                           ; $4a45: $87
	adc  b                                           ; $4a46: $88
	sub  a                                           ; $4a47: $97
	ld   a, b                                        ; $4a48: $78
	add  a                                           ; $4a49: $87
	ld   [hl], a                                     ; $4a4a: $77
	ld   [hl], a                                     ; $4a4b: $77
	ld   a, b                                        ; $4a4c: $78
	sub  a                                           ; $4a4d: $97
	sbc  b                                           ; $4a4e: $98
	ld   [hl], a                                     ; $4a4f: $77
	adc  c                                           ; $4a50: $89
	adc  c                                           ; $4a51: $89
	ld   a, b                                        ; $4a52: $78
	sbc  b                                           ; $4a53: $98
	adc  c                                           ; $4a54: $89
	and  a                                           ; $4a55: $a7
	ld   l, c                                        ; $4a56: $69
	and  a                                           ; $4a57: $a7
	ld   l, c                                        ; $4a58: $69
	sbc  b                                           ; $4a59: $98
	ld   a, b                                        ; $4a5a: $78
	sbc  c                                           ; $4a5b: $99
	adc  c                                           ; $4a5c: $89
	xor  b                                           ; $4a5d: $a8
	adc  c                                           ; $4a5e: $89
	ld   a, b                                        ; $4a5f: $78
	add  [hl]                                        ; $4a60: $86
	sbc  c                                           ; $4a61: $99
	ld   [hl], a                                     ; $4a62: $77
	sbc  c                                           ; $4a63: $99
	adc  b                                           ; $4a64: $88
	ld   a, b                                        ; $4a65: $78
	halt                                             ; $4a66: $76
	sbc  b                                           ; $4a67: $98
	ld   a, c                                        ; $4a68: $79
	sbc  b                                           ; $4a69: $98
	ld   h, a                                        ; $4a6a: $67
	ld   a, b                                        ; $4a6b: $78
	adc  b                                           ; $4a6c: $88
	sbc  c                                           ; $4a6d: $99
	add  a                                           ; $4a6e: $87
	adc  b                                           ; $4a6f: $88
	ld   a, b                                        ; $4a70: $78
	adc  b                                           ; $4a71: $88
	sbc  b                                           ; $4a72: $98
	adc  b                                           ; $4a73: $88
	add  a                                           ; $4a74: $87
	ld   a, b                                        ; $4a75: $78
	add  a                                           ; $4a76: $87
	adc  c                                           ; $4a77: $89
	ld   [hl], a                                     ; $4a78: $77
	sbc  b                                           ; $4a79: $98
	ld   a, b                                        ; $4a7a: $78
	sbc  c                                           ; $4a7b: $99
	adc  c                                           ; $4a7c: $89
	adc  c                                           ; $4a7d: $89
	adc  c                                           ; $4a7e: $89
	sub  a                                           ; $4a7f: $97
	sbc  b                                           ; $4a80: $98
	adc  c                                           ; $4a81: $89
	sbc  c                                           ; $4a82: $99
	adc  b                                           ; $4a83: $88
	ld   a, b                                        ; $4a84: $78
	sub  a                                           ; $4a85: $97
	ld   a, b                                        ; $4a86: $78
	sub  a                                           ; $4a87: $97
	ld   a, c                                        ; $4a88: $79
	add  a                                           ; $4a89: $87
	ld   a, c                                        ; $4a8a: $79
	sub  a                                           ; $4a8b: $97
	adc  b                                           ; $4a8c: $88
	ld   [hl], a                                     ; $4a8d: $77
	ld   a, c                                        ; $4a8e: $79
	sub  a                                           ; $4a8f: $97
	ld   a, c                                        ; $4a90: $79
	sub  a                                           ; $4a91: $97
	ld   a, c                                        ; $4a92: $79
	add  a                                           ; $4a93: $87
	ld   a, b                                        ; $4a94: $78
	sbc  b                                           ; $4a95: $98
	ld   a, b                                        ; $4a96: $78
	sbc  b                                           ; $4a97: $98
	ld   a, c                                        ; $4a98: $79
	add  [hl]                                        ; $4a99: $86
	adc  c                                           ; $4a9a: $89
	adc  c                                           ; $4a9b: $89
	and  a                                           ; $4a9c: $a7
	ld   a, c                                        ; $4a9d: $79
	sub  a                                           ; $4a9e: $97
	adc  c                                           ; $4a9f: $89
	add  a                                           ; $4aa0: $87
	sbc  c                                           ; $4aa1: $99
	sub  a                                           ; $4aa2: $97
	ld   a, b                                        ; $4aa3: $78
	adc  c                                           ; $4aa4: $89
	adc  b                                           ; $4aa5: $88
	sbc  c                                           ; $4aa6: $99
	adc  b                                           ; $4aa7: $88
	adc  c                                           ; $4aa8: $89
	adc  b                                           ; $4aa9: $88
	adc  b                                           ; $4aaa: $88
	sbc  c                                           ; $4aab: $99
	add  a                                           ; $4aac: $87
	adc  b                                           ; $4aad: $88
	ld   a, b                                        ; $4aae: $78
	sbc  c                                           ; $4aaf: $99
	adc  b                                           ; $4ab0: $88
	adc  b                                           ; $4ab1: $88
	add  a                                           ; $4ab2: $87
	adc  c                                           ; $4ab3: $89
	adc  b                                           ; $4ab4: $88
	adc  b                                           ; $4ab5: $88
	ld   a, b                                        ; $4ab6: $78
	add  a                                           ; $4ab7: $87
	ld   l, b                                        ; $4ab8: $68
	adc  b                                           ; $4ab9: $88
	adc  c                                           ; $4aba: $89
	adc  c                                           ; $4abb: $89
	add  a                                           ; $4abc: $87
	adc  b                                           ; $4abd: $88
	ld   [hl], a                                     ; $4abe: $77
	adc  b                                           ; $4abf: $88
	adc  c                                           ; $4ac0: $89
	sub  a                                           ; $4ac1: $97
	ld   a, b                                        ; $4ac2: $78
	sbc  b                                           ; $4ac3: $98
	ld   a, b                                        ; $4ac4: $78
	sbc  b                                           ; $4ac5: $98
	adc  b                                           ; $4ac6: $88
	adc  b                                           ; $4ac7: $88
	ld   [hl], a                                     ; $4ac8: $77
	adc  c                                           ; $4ac9: $89
	adc  b                                           ; $4aca: $88
	sbc  b                                           ; $4acb: $98
	adc  b                                           ; $4acc: $88
	add  a                                           ; $4acd: $87
	sbc  c                                           ; $4ace: $99
	ld   a, b                                        ; $4acf: $78
	sbc  b                                           ; $4ad0: $98
	add  a                                           ; $4ad1: $87
	ld   a, b                                        ; $4ad2: $78
	adc  b                                           ; $4ad3: $88
	ld   a, b                                        ; $4ad4: $78
	sbc  b                                           ; $4ad5: $98
	adc  b                                           ; $4ad6: $88
	adc  b                                           ; $4ad7: $88
	ld   a, b                                        ; $4ad8: $78
	adc  b                                           ; $4ad9: $88
	sbc  b                                           ; $4ada: $98
	ld   a, b                                        ; $4adb: $78
	sbc  b                                           ; $4adc: $98
	ld   a, b                                        ; $4add: $78
	sbc  b                                           ; $4ade: $98
	adc  c                                           ; $4adf: $89
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  c                                           ; $4ae2: $89
	sbc  b                                           ; $4ae3: $98
	ld   a, b                                        ; $4ae4: $78
	sub  a                                           ; $4ae5: $97
	adc  c                                           ; $4ae6: $89
	adc  b                                           ; $4ae7: $88
	adc  c                                           ; $4ae8: $89
	ld   [hl], a                                     ; $4ae9: $77
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	ld   a, b                                        ; $4aed: $78
	add  a                                           ; $4aee: $87
	adc  b                                           ; $4aef: $88
	adc  b                                           ; $4af0: $88
	adc  c                                           ; $4af1: $89
	add  a                                           ; $4af2: $87
	adc  b                                           ; $4af3: $88
	ld   a, b                                        ; $4af4: $78
	sbc  c                                           ; $4af5: $99
	adc  b                                           ; $4af6: $88
	sbc  b                                           ; $4af7: $98
	adc  b                                           ; $4af8: $88
	add  a                                           ; $4af9: $87
	ld   a, c                                        ; $4afa: $79
	adc  b                                           ; $4afb: $88
	ld   a, b                                        ; $4afc: $78
	adc  b                                           ; $4afd: $88
	adc  b                                           ; $4afe: $88
	adc  b                                           ; $4aff: $88
	adc  b                                           ; $4b00: $88
	adc  b                                           ; $4b01: $88
	adc  b                                           ; $4b02: $88
	sbc  b                                           ; $4b03: $98
	adc  b                                           ; $4b04: $88
	adc  b                                           ; $4b05: $88
	adc  b                                           ; $4b06: $88
	sbc  c                                           ; $4b07: $99
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	add  a                                           ; $4b0a: $87
	adc  c                                           ; $4b0b: $89
	adc  b                                           ; $4b0c: $88
	sbc  b                                           ; $4b0d: $98
	adc  c                                           ; $4b0e: $89
	adc  b                                           ; $4b0f: $88
	adc  b                                           ; $4b10: $88
	adc  b                                           ; $4b11: $88
	adc  c                                           ; $4b12: $89
	adc  b                                           ; $4b13: $88
	adc  b                                           ; $4b14: $88
	sbc  c                                           ; $4b15: $99
	adc  b                                           ; $4b16: $88
	adc  c                                           ; $4b17: $89
	adc  b                                           ; $4b18: $88
	adc  b                                           ; $4b19: $88
	adc  b                                           ; $4b1a: $88
	adc  c                                           ; $4b1b: $89
	sbc  b                                           ; $4b1c: $98
	adc  b                                           ; $4b1d: $88
	adc  b                                           ; $4b1e: $88
	adc  b                                           ; $4b1f: $88
	adc  c                                           ; $4b20: $89
	adc  b                                           ; $4b21: $88
	adc  b                                           ; $4b22: $88
	ld   a, b                                        ; $4b23: $78
	ld   a, b                                        ; $4b24: $78
	sbc  b                                           ; $4b25: $98
	adc  b                                           ; $4b26: $88
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	adc  c                                           ; $4b2a: $89
	sbc  b                                           ; $4b2b: $98
	sbc  c                                           ; $4b2c: $99
	adc  b                                           ; $4b2d: $88
	adc  b                                           ; $4b2e: $88
	adc  c                                           ; $4b2f: $89
	sbc  b                                           ; $4b30: $98
	adc  b                                           ; $4b31: $88
	add  a                                           ; $4b32: $87
	adc  b                                           ; $4b33: $88
	adc  b                                           ; $4b34: $88
	sbc  c                                           ; $4b35: $99
	adc  b                                           ; $4b36: $88
	adc  b                                           ; $4b37: $88
	adc  b                                           ; $4b38: $88
	adc  b                                           ; $4b39: $88
	sbc  b                                           ; $4b3a: $98
	adc  c                                           ; $4b3b: $89
	adc  b                                           ; $4b3c: $88
	adc  b                                           ; $4b3d: $88
	adc  b                                           ; $4b3e: $88
	adc  b                                           ; $4b3f: $88
	adc  b                                           ; $4b40: $88
	adc  b                                           ; $4b41: $88
	adc  b                                           ; $4b42: $88
	adc  b                                           ; $4b43: $88
	adc  b                                           ; $4b44: $88
	adc  b                                           ; $4b45: $88
	adc  b                                           ; $4b46: $88
	adc  b                                           ; $4b47: $88
	adc  b                                           ; $4b48: $88
	adc  b                                           ; $4b49: $88
	adc  b                                           ; $4b4a: $88
	adc  b                                           ; $4b4b: $88
	adc  b                                           ; $4b4c: $88
	sbc  b                                           ; $4b4d: $98
	adc  b                                           ; $4b4e: $88
	adc  b                                           ; $4b4f: $88
	adc  b                                           ; $4b50: $88
	adc  b                                           ; $4b51: $88
	adc  b                                           ; $4b52: $88
	adc  b                                           ; $4b53: $88
	adc  b                                           ; $4b54: $88
	adc  b                                           ; $4b55: $88
	adc  b                                           ; $4b56: $88
	adc  b                                           ; $4b57: $88
	adc  b                                           ; $4b58: $88
	adc  b                                           ; $4b59: $88
	adc  b                                           ; $4b5a: $88
	adc  b                                           ; $4b5b: $88
	adc  b                                           ; $4b5c: $88
	adc  b                                           ; $4b5d: $88
	adc  b                                           ; $4b5e: $88
	adc  b                                           ; $4b5f: $88
	adc  b                                           ; $4b60: $88
	adc  b                                           ; $4b61: $88
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	adc  b                                           ; $4b65: $88
	adc  b                                           ; $4b66: $88
	adc  b                                           ; $4b67: $88
	adc  b                                           ; $4b68: $88
	adc  b                                           ; $4b69: $88
	adc  b                                           ; $4b6a: $88
	adc  b                                           ; $4b6b: $88
	adc  b                                           ; $4b6c: $88
	adc  b                                           ; $4b6d: $88
	adc  b                                           ; $4b6e: $88
	adc  b                                           ; $4b6f: $88
	adc  b                                           ; $4b70: $88
	adc  b                                           ; $4b71: $88
	adc  b                                           ; $4b72: $88
	adc  b                                           ; $4b73: $88
	ld   de, $1111                                   ; $4b74: $11 $11 $11
	ld   de, $1111                                   ; $4b77: $11 $11 $11
	nop                                              ; $4b7a: $00
	ld   c, b                                        ; $4b7b: $48
	ld   de, $1111                                   ; $4b7c: $11 $11 $11
	ld   de, $1111                                   ; $4b7f: $11 $11 $11
	ld   de, $1111                                   ; $4b82: $11 $11 $11
	ld   de, $5413                                   ; $4b85: $11 $13 $54
	ld   d, h                                        ; $4b88: $54
	ld   d, h                                        ; $4b89: $54
	ld   b, c                                        ; $4b8a: $41
	rra                                              ; $4b8b: $1f
	rst  $38                                         ; $4b8c: $ff
	pop  af                                          ; $4b8d: $f1
	ld   de, $1811                                   ; $4b8e: $11 $11 $18
	ld   h, c                                        ; $4b91: $61
	ld   de, $d11c                                   ; $4b92: $11 $1c $d1
	call c, $d1d1                                    ; $4b95: $dc $d1 $d1
	ld   de, $1111                                   ; $4b98: $11 $11 $11
	ld   de, $1111                                   ; $4b9b: $11 $11 $11
	ld   de, $1111                                   ; $4b9e: $11 $11 $11
	ld   de, $1111                                   ; $4ba1: $11 $11 $11
	ld   de, $5411                                   ; $4ba4: $11 $11 $54
	ld   b, h                                        ; $4ba7: $44
	ld   l, b                                        ; $4ba8: $68
	ld   de, $5454                                   ; $4ba9: $11 $54 $54
	ld   h, a                                        ; $4bac: $67
	ld   [hl], d                                     ; $4bad: $72
	ld   de, $1111                                   ; $4bae: $11 $11 $11
	ld   de, $1112                                   ; $4bb1: $11 $12 $11
	ld   [de], a                                     ; $4bb4: $12
	ld   de, $1111                                   ; $4bb5: $11 $11 $11
	ld   h, [hl]                                     ; $4bb8: $66
	halt                                             ; $4bb9: $76
	ld   c, b                                        ; $4bba: $48
	ld   de, $8888                                   ; $4bbb: $11 $88 $88
	adc  b                                           ; $4bbe: $88
	adc  b                                           ; $4bbf: $88
	adc  b                                           ; $4bc0: $88
	ld   [hl], a                                     ; $4bc1: $77
	ld   a, b                                        ; $4bc2: $78
	adc  b                                           ; $4bc3: $88
	adc  b                                           ; $4bc4: $88
	ld   [hl], a                                     ; $4bc5: $77
	ld   h, l                                        ; $4bc6: $65
	ld   d, l                                        ; $4bc7: $55
	ld   d, l                                        ; $4bc8: $55
	ld   h, a                                        ; $4bc9: $67
	adc  e                                           ; $4bca: $8b
	cp   l                                           ; $4bcb: $bd
	call z, $87ca                                    ; $4bcc: $cc $ca $87
	ld   [hl], a                                     ; $4bcf: $77
	adc  b                                           ; $4bd0: $88
	xor  d                                           ; $4bd1: $aa
	xor  d                                           ; $4bd2: $aa
	xor  d                                           ; $4bd3: $aa
	sbc  b                                           ; $4bd4: $98
	ld   h, e                                        ; $4bd5: $63
	ld   de, $1111                                   ; $4bd6: $11 $11 $11
	inc  e                                           ; $4bd9: $1c
	rst  $38                                         ; $4bda: $ff
	rst  $38                                         ; $4bdb: $ff
	rst  $10                                         ; $4bdc: $d7
	ld   de, $9658                                   ; $4bdd: $11 $58 $96
	ld   hl, $6f11                                   ; $4be0: $21 $11 $6f
	rst  $38                                         ; $4be3: $ff
	rst  $38                                         ; $4be4: $ff
	push bc                                          ; $4be5: $c5
	ld   [de], a                                     ; $4be6: $12
	ld   a, c                                        ; $4be7: $79
	cp   c                                           ; $4be8: $b9
	ld   d, d                                        ; $4be9: $52
	ld   de, $1111                                   ; $4bea: $11 $11 $11
	ld   de, $ff6f                                   ; $4bed: $11 $6f $ff
	db   $fc                                         ; $4bf0: $fc
	ld   h, c                                        ; $4bf1: $61
	ld   d, $be                                      ; $4bf2: $16 $be
	ret  c                                           ; $4bf4: $d8

	ld   de, $cf13                                   ; $4bf5: $11 $13 $cf
	rst  $38                                         ; $4bf8: $ff
	rst  $38                                         ; $4bf9: $ff
	sub  [hl]                                        ; $4bfa: $96
	sbc  c                                           ; $4bfb: $99
	cp   e                                           ; $4bfc: $bb
	ld   [hl], e                                     ; $4bfd: $73
	ld   de, $1111                                   ; $4bfe: $11 $11 $11
	ld   [de], a                                     ; $4c01: $12
	rst  $38                                         ; $4c02: $ff
	rst  $38                                         ; $4c03: $ff
	rst  $30                                         ; $4c04: $f7
	ld   hl, $9c13                                   ; $4c05: $21 $13 $9c
	or   e                                           ; $4c08: $b3
	ld   de, $ff1c                                   ; $4c09: $11 $1c $ff
	rst  $38                                         ; $4c0c: $ff
	db   $fc                                         ; $4c0d: $fc
	ld   d, c                                        ; $4c0e: $51
	ld   b, l                                        ; $4c0f: $45
	adc  b                                           ; $4c10: $88
	ld   hl, $1111                                   ; $4c11: $21 $11 $11
	inc  de                                          ; $4c14: $13
	rst  $38                                         ; $4c15: $ff
	rst  $38                                         ; $4c16: $ff
	di                                               ; $4c17: $f3
	ld   de, $cf15                                   ; $4c18: $11 $15 $cf
	or   h                                           ; $4c1b: $b4
	ld   de, $ff1c                                   ; $4c1c: $11 $1c $ff
	rst  $38                                         ; $4c1f: $ff
	ld   sp, hl                                      ; $4c20: $f9
	ld   sp, $8756                                   ; $4c21: $31 $56 $87
	ld   de, $1111                                   ; $4c24: $11 $11 $11
	cpl                                              ; $4c27: $2f
	rst  $38                                         ; $4c28: $ff
	rst  $38                                         ; $4c29: $ff
	ld   de, $bf11                                   ; $4c2a: $11 $11 $bf
	cp   $11                                         ; $4c2d: $fe $11
	ld   de, $ffff                                   ; $4c2f: $11 $ff $ff
	rst  $38                                         ; $4c32: $ff
	ld   h, c                                        ; $4c33: $61
	ld   d, $57                                      ; $4c34: $16 $57
	ld   de, $1111                                   ; $4c36: $11 $11 $11
	ld   l, a                                        ; $4c39: $6f
	rst  $38                                         ; $4c3a: $ff
	ld   a, [$1111]                                  ; $4c3b: $fa $11 $11
	rst  JumpTable                                         ; $4c3e: $df
	ld   a, [$1111]                                  ; $4c3f: $fa $11 $11
	rst  $38                                         ; $4c42: $ff
	rst  $38                                         ; $4c43: $ff
	ei                                               ; $4c44: $fb
	ld   hl, $5714                                   ; $4c45: $21 $14 $57
	ld   de, $1111                                   ; $4c48: $11 $11 $11
	rst  $38                                         ; $4c4b: $ff
	rst  $38                                         ; $4c4c: $ff
	pop  af                                          ; $4c4d: $f1
	ld   de, rAUD1ENV                                   ; $4c4e: $11 $12 $ff
	or   $11                                         ; $4c51: $f6 $11
	ld   a, [de]                                     ; $4c53: $1a
	rst  $38                                         ; $4c54: $ff
	rst  $38                                         ; $4c55: $ff
	pop  af                                          ; $4c56: $f1
	ld   de, $6413                                   ; $4c57: $11 $13 $64
	ld   de, $1e11                                   ; $4c5a: $11 $11 $1e
	rst  $38                                         ; $4c5d: $ff
	rst  $38                                         ; $4c5e: $ff
	ld   de, $2f11                                   ; $4c5f: $11 $11 $2f
	rst  $38                                         ; $4c62: $ff
	sub  c                                           ; $4c63: $91
	ld   de, $ff7f                                   ; $4c64: $11 $7f $ff
	rst  $38                                         ; $4c67: $ff
	ld   de, $2511                                   ; $4c68: $11 $11 $25
	ld   de, $1111                                   ; $4c6b: $11 $11 $11
	rst  $38                                         ; $4c6e: $ff
	rst  $38                                         ; $4c6f: $ff
	pop  af                                          ; $4c70: $f1
	ld   de, $ff17                                   ; $4c71: $11 $17 $ff
	pop  af                                          ; $4c74: $f1
	ld   de, $ff1f                                   ; $4c75: $11 $1f $ff
	rst  $38                                         ; $4c78: $ff
	sub  c                                           ; $4c79: $91
	ld   de, $1111                                   ; $4c7a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4c7d: $11 $11 $ff
	rst  $38                                         ; $4c80: $ff
	ldh  a, [c]                                      ; $4c81: $f2
	ld   de, rAUD1HIGH                                   ; $4c82: $11 $14 $ff
	pop  af                                          ; $4c85: $f1
	ld   de, $ff1f                                   ; $4c86: $11 $1f $ff
	rst  $38                                         ; $4c89: $ff
	ld   [hl], c                                     ; $4c8a: $71
	ld   de, $1111                                   ; $4c8b: $11 $11 $11
	ld   de, $ff1f                                   ; $4c8e: $11 $1f $ff
	rst  $38                                         ; $4c91: $ff
	pop  af                                          ; $4c92: $f1
	ld   de, $ff1c                                   ; $4c93: $11 $1c $ff
	ld   b, c                                        ; $4c96: $41
	ld   de, $ffff                                   ; $4c97: $11 $ff $ff
	ld   a, [$1111]                                  ; $4c9a: $fa $11 $11
	ld   de, $1111                                   ; $4c9d: $11 $11 $11
	rst  $38                                         ; $4ca0: $ff
	rst  $38                                         ; $4ca1: $ff
	rst  $38                                         ; $4ca2: $ff
	ld   de, $9f11                                   ; $4ca3: $11 $11 $9f
	or   $41                                         ; $4ca6: $f6 $41
	ld   c, a                                        ; $4ca8: $4f
	rst  $38                                         ; $4ca9: $ff
	rst  $38                                         ; $4caa: $ff
	ld   d, c                                        ; $4cab: $51
	ld   de, $1111                                   ; $4cac: $11 $11 $11
	ld   de, $ffff                                   ; $4caf: $11 $ff $ff
	rst  $38                                         ; $4cb2: $ff
	ld   hl, $1b11                                   ; $4cb3: $21 $11 $1b
	call nc, $7f91                                   ; $4cb6: $d4 $91 $7f
	rst  $38                                         ; $4cb9: $ff
	rst  $38                                         ; $4cba: $ff
	ld   [hl], c                                     ; $4cbb: $71
	ld   de, $1111                                   ; $4cbc: $11 $11 $11
	ld   de, $ffff                                   ; $4cbf: $11 $ff $ff
	rst  $38                                         ; $4cc2: $ff
	ld   de, $2b11                                   ; $4cc3: $11 $11 $2b
	ld   [hl], c                                     ; $4cc6: $71
	ld   h, c                                        ; $4cc7: $61
	rst  $28                                         ; $4cc8: $ef
	rst  $38                                         ; $4cc9: $ff
	rst  $38                                         ; $4cca: $ff
	ld   de, $1111                                   ; $4ccb: $11 $11 $11
	ld   de, $ff1f                                   ; $4cce: $11 $1f $ff
	rst  $38                                         ; $4cd1: $ff
	ld   hl, sp+$11                                  ; $4cd2: $f8 $11
	ld   de, $1896                                   ; $4cd4: $11 $96 $18
	inc  e                                           ; $4cd7: $1c
	rst  $38                                         ; $4cd8: $ff
	rst  $38                                         ; $4cd9: $ff
	ldh  a, [c]                                      ; $4cda: $f2
	ld   de, $1111                                   ; $4cdb: $11 $11 $11
	ld   [de], a                                     ; $4cde: $12
	rst  $38                                         ; $4cdf: $ff
	rst  $38                                         ; $4ce0: $ff
	rst  $38                                         ; $4ce1: $ff
	ld   [hl], c                                     ; $4ce2: $71
	ld   de, $1116                                   ; $4ce3: $11 $16 $11
	ld   [hl], c                                     ; $4ce6: $71
	rst  $38                                         ; $4ce7: $ff
	rst  $38                                         ; $4ce8: $ff
	db   $fd                                         ; $4ce9: $fd
	ld   de, $1111                                   ; $4cea: $11 $11 $11
	ld   de, $ffff                                   ; $4ced: $11 $ff $ff
	rst  $38                                         ; $4cf0: $ff
	ldh  a, [c]                                      ; $4cf1: $f2
	inc  de                                          ; $4cf2: $13
	dec  d                                           ; $4cf3: $15
	ld   h, c                                        ; $4cf4: $61
	ld   d, c                                        ; $4cf5: $51
	ld   l, a                                        ; $4cf6: $6f
	rst  $38                                         ; $4cf7: $ff
	rst  $38                                         ; $4cf8: $ff
	ld   b, c                                        ; $4cf9: $41
	ld   de, $1111                                   ; $4cfa: $11 $11 $11
	rst  $38                                         ; $4cfd: $ff
	rst  $38                                         ; $4cfe: $ff
	rst  $38                                         ; $4cff: $ff
	rst  $30                                         ; $4d00: $f7
	ld   d, a                                        ; $4d01: $57
	ld   b, [hl]                                     ; $4d02: $46
	ld   h, c                                        ; $4d03: $61
	ld   b, c                                        ; $4d04: $41
	ld   a, a                                        ; $4d05: $7f
	rst  $38                                         ; $4d06: $ff
	rst  $38                                         ; $4d07: $ff
	ld   sp, $1111                                   ; $4d08: $31 $11 $11
	ld   de, $ffff                                   ; $4d0b: $11 $ff $ff
	rst  $38                                         ; $4d0e: $ff
	rst  $10                                         ; $4d0f: $d7
	ld   a, d                                        ; $4d10: $7a
	ld   l, c                                        ; $4d11: $69
	ld   d, c                                        ; $4d12: $51
	ld   d, c                                        ; $4d13: $51
	rst  JumpTable                                         ; $4d14: $df
	rst  $38                                         ; $4d15: $ff
	ld   sp, hl                                      ; $4d16: $f9
	ld   de, $1111                                   ; $4d17: $11 $11 $11
	inc  d                                           ; $4d1a: $14
	rst  $38                                         ; $4d1b: $ff
	rst  $38                                         ; $4d1c: $ff
	rst  $38                                         ; $4d1d: $ff
	add  a                                           ; $4d1e: $87
	ld   h, [hl]                                     ; $4d1f: $66
	ld   c, c                                        ; $4d20: $49
	dec  d                                           ; $4d21: $15
	add  [hl]                                        ; $4d22: $86
	rst  $38                                         ; $4d23: $ff
	rst  $38                                         ; $4d24: $ff
	sub  c                                           ; $4d25: $91
	ld   de, $1111                                   ; $4d26: $11 $11 $11
	rra                                              ; $4d29: $1f
	rst  $38                                         ; $4d2a: $ff
	rst  $38                                         ; $4d2b: $ff
	ld   sp, hl                                      ; $4d2c: $f9
	ld   d, [hl]                                     ; $4d2d: $56
	sub  a                                           ; $4d2e: $97
	and  [hl]                                        ; $4d2f: $a6
	add  hl, hl                                      ; $4d30: $29
	ld   c, a                                        ; $4d31: $4f
	rst  $38                                         ; $4d32: $ff
	ei                                               ; $4d33: $fb
	ld   de, $1111                                   ; $4d34: $11 $11 $11
	dec  d                                           ; $4d37: $15
	rst  $38                                         ; $4d38: $ff
	rst  $38                                         ; $4d39: $ff
	rst  $38                                         ; $4d3a: $ff
	add  a                                           ; $4d3b: $87
	sbc  d                                           ; $4d3c: $9a
	ld   d, [hl]                                     ; $4d3d: $56
	ld   hl, $ff97                                   ; $4d3e: $21 $97 $ff
	rst  $38                                         ; $4d41: $ff
	sub  c                                           ; $4d42: $91
	ld   de, $1111                                   ; $4d43: $11 $11 $11
	cp   a                                           ; $4d46: $bf
	rst  $38                                         ; $4d47: $ff
	rst  $38                                         ; $4d48: $ff
	rst  $30                                         ; $4d49: $f7
	ld   [hl], a                                     ; $4d4a: $77
	ld   h, h                                        ; $4d4b: $64
	ld   d, c                                        ; $4d4c: $51
	ld   a, [hl-]                                    ; $4d4d: $3a
	sbc  a                                           ; $4d4e: $9f
	rst  $38                                         ; $4d4f: $ff
	push af                                          ; $4d50: $f5
	ld   de, $1111                                   ; $4d51: $11 $11 $11
	rra                                              ; $4d54: $1f
	rst  $38                                         ; $4d55: $ff
	rst  $38                                         ; $4d56: $ff
	rst  $38                                         ; $4d57: $ff
	adc  [hl]                                        ; $4d58: $8e
	or   [hl]                                        ; $4d59: $b6
	ld   sp, $9f15                                   ; $4d5a: $31 $15 $9f
	rst  $38                                         ; $4d5d: $ff
	ld   hl, sp+$11                                  ; $4d5e: $f8 $11
	ld   de, $1f11                                   ; $4d60: $11 $11 $1f
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	xor  l                                           ; $4d66: $ad
	ld   [$1433], a                                  ; $4d67: $ea $33 $14
	xor  a                                           ; $4d6a: $af
	rst  $38                                         ; $4d6b: $ff
	ei                                               ; $4d6c: $fb
	ld   de, $1111                                   ; $4d6d: $11 $11 $11
	rra                                              ; $4d70: $1f
	rst  $38                                         ; $4d71: $ff
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	sbc  e                                           ; $4d74: $9b
	ld   a, [$1141]                                  ; $4d75: $fa $41 $11
	xor  a                                           ; $4d78: $af
	rst  $38                                         ; $4d79: $ff
	cp   $11                                         ; $4d7a: $fe $11
	ld   de, $1f11                                   ; $4d7c: $11 $11 $1f
	rst  $38                                         ; $4d7f: $ff
	rst  $38                                         ; $4d80: $ff
	rst  $38                                         ; $4d81: $ff
	xor  h                                           ; $4d82: $ac
	add  sp, $21                                     ; $4d83: $e8 $21
	ld   [de], a                                     ; $4d85: $12
	rst  $28                                         ; $4d86: $ef
	rst  $38                                         ; $4d87: $ff
	ld   hl, sp+$11                                  ; $4d88: $f8 $11
	ld   de, $1f11                                   ; $4d8a: $11 $11 $1f
	rst  $38                                         ; $4d8d: $ff
	rst  $38                                         ; $4d8e: $ff
	rst  $38                                         ; $4d8f: $ff
	call z, $11c5                                    ; $4d90: $cc $c5 $11
	dec  d                                           ; $4d93: $15
	rst  $38                                         ; $4d94: $ff
	rst  $38                                         ; $4d95: $ff
	ld   sp, hl                                      ; $4d96: $f9
	ld   de, $1111                                   ; $4d97: $11 $11 $11
	ld   e, a                                        ; $4d9a: $5f
	rst  $38                                         ; $4d9b: $ff
	rst  $38                                         ; $4d9c: $ff
	rst  $38                                         ; $4d9d: $ff
	adc  $e3                                         ; $4d9e: $ce $e3
	ld   de, $ff16                                   ; $4da0: $11 $16 $ff
	rst  $38                                         ; $4da3: $ff
	ldh  a, [c]                                      ; $4da4: $f2
	ld   de, $1111                                   ; $4da5: $11 $11 $11
	rst  $38                                         ; $4da8: $ff
	rst  $38                                         ; $4da9: $ff
	rst  $38                                         ; $4daa: $ff
	cp   $ff                                         ; $4dab: $fe $ff
	pop  bc                                          ; $4dad: $c1
	ld   de, $ff1b                                   ; $4dae: $11 $1b $ff
	rst  $38                                         ; $4db1: $ff
	pop  af                                          ; $4db2: $f1
	ld   de, $1511                                   ; $4db3: $11 $11 $15
	rst  $38                                         ; $4db6: $ff
	rst  $38                                         ; $4db7: $ff
	rst  $38                                         ; $4db8: $ff
	rst  $38                                         ; $4db9: $ff
	cp   $31                                         ; $4dba: $fe $31
	ld   de, $ff5f                                   ; $4dbc: $11 $5f $ff
	rst  $38                                         ; $4dbf: $ff
	ld   de, $1111                                   ; $4dc0: $11 $11 $11
	rra                                              ; $4dc3: $1f
	rst  $38                                         ; $4dc4: $ff
	rst  $38                                         ; $4dc5: $ff
	rst  $38                                         ; $4dc6: $ff
	rst  $38                                         ; $4dc7: $ff
	jp   hl                                          ; $4dc8: $e9


	ld   de, $cf11                                   ; $4dc9: $11 $11 $cf
	rst  $38                                         ; $4dcc: $ff
	rst  $38                                         ; $4dcd: $ff
	ld   de, $1111                                   ; $4dce: $11 $11 $11
	ld   a, a                                        ; $4dd1: $7f
	rst  $38                                         ; $4dd2: $ff
	rst  $38                                         ; $4dd3: $ff
	rst  $38                                         ; $4dd4: $ff
	rst  $38                                         ; $4dd5: $ff
	pop  de                                          ; $4dd6: $d1
	ld   de, $ff15                                   ; $4dd7: $11 $15 $ff
	rst  $38                                         ; $4dda: $ff
	pop  af                                          ; $4ddb: $f1
	ld   de, $1611                                   ; $4ddc: $11 $11 $16
	rst  $38                                         ; $4ddf: $ff
	rst  $38                                         ; $4de0: $ff
	db   $fd                                         ; $4de1: $fd
	rst  $28                                         ; $4de2: $ef
	rst  $38                                         ; $4de3: $ff
	ld   [hl], c                                     ; $4de4: $71
	ld   de, $ff2f                                   ; $4de5: $11 $2f $ff
	rst  $38                                         ; $4de8: $ff
	ld   de, $1111                                   ; $4de9: $11 $11 $11
	ld   a, a                                        ; $4dec: $7f
	rst  $38                                         ; $4ded: $ff
	rst  $38                                         ; $4dee: $ff
	sbc  b                                           ; $4def: $98
	cp   a                                           ; $4df0: $bf
	ld   sp, hl                                      ; $4df1: $f9
	ld   de, rAUD1LEN                                   ; $4df2: $11 $11 $ff
	rst  $38                                         ; $4df5: $ff
	pop  af                                          ; $4df6: $f1
	ld   de, $1411                                   ; $4df7: $11 $11 $14
	rst  $38                                         ; $4dfa: $ff
	rst  $38                                         ; $4dfb: $ff
	ld   sp, hl                                      ; $4dfc: $f9
	cp   e                                           ; $4dfd: $bb
	cp   $71                                         ; $4dfe: $fe $71
	ld   de, $ff1e                                   ; $4e00: $11 $1e $ff
	rst  $38                                         ; $4e03: $ff
	sub  c                                           ; $4e04: $91
	ld   de, $1f11                                   ; $4e05: $11 $11 $1f
	rst  $38                                         ; $4e08: $ff
	rst  $38                                         ; $4e09: $ff
	db   $fd                                         ; $4e0a: $fd
	xor  d                                           ; $4e0b: $aa
	rst  ToBoot                                         ; $4e0c: $c7
	ld   de, $cf11                                   ; $4e0d: $11 $11 $cf
	rst  $38                                         ; $4e10: $ff
	db   $fc                                         ; $4e11: $fc
	ld   de, $1111                                   ; $4e12: $11 $11 $11
	rst  $38                                         ; $4e15: $ff
	rst  $38                                         ; $4e16: $ff
	rst  $38                                         ; $4e17: $ff
	add  a                                           ; $4e18: $87
	sbc  h                                           ; $4e19: $9c
	sub  c                                           ; $4e1a: $91
	ld   de, $ff1a                                   ; $4e1b: $11 $1a $ff
	rst  $38                                         ; $4e1e: $ff
	sub  c                                           ; $4e1f: $91
	ld   de, $1f11                                   ; $4e20: $11 $11 $1f
	rst  $38                                         ; $4e23: $ff
	rst  $38                                         ; $4e24: $ff
	sub  l                                           ; $4e25: $95
	ld   l, h                                        ; $4e26: $6c
	db   $eb                                         ; $4e27: $eb
	ld   bc, $cf11                                   ; $4e28: $01 $11 $cf
	rst  $38                                         ; $4e2b: $ff
	pop  af                                          ; $4e2c: $f1
	ld   de, $1a11                                   ; $4e2d: $11 $11 $1a
	rst  $38                                         ; $4e30: $ff
	rst  $38                                         ; $4e31: $ff
	rst  $10                                         ; $4e32: $d7
	add  hl, sp                                      ; $4e33: $39
	rst  JumpTable                                         ; $4e34: $df
	add  c                                           ; $4e35: $81
	ld   de, $ff4f                                   ; $4e36: $11 $4f $ff
	rst  $38                                         ; $4e39: $ff
	ld   de, $1111                                   ; $4e3a: $11 $11 $11
	rst  $38                                         ; $4e3d: $ff
	rst  $38                                         ; $4e3e: $ff
	ld   hl, sp+$43                                  ; $4e3f: $f8 $43
	xor  a                                           ; $4e41: $af
	db   $e4                                         ; $4e42: $e4
	ld   de, $ff18                                   ; $4e43: $11 $18 $ff
	rst  $38                                         ; $4e46: $ff
	ld   sp, $1111                                   ; $4e47: $31 $11 $11
	rst  $28                                         ; $4e4a: $ef
	rst  $38                                         ; $4e4b: $ff
	ld   sp, hl                                      ; $4e4c: $f9
	ld   hl, $fb9f                                   ; $4e4d: $21 $9f $fb
	ld   de, rAUD1ENV                                   ; $4e50: $11 $12 $ff
	rst  $38                                         ; $4e53: $ff
	pop  hl                                          ; $4e54: $e1
	ld   de, $6f11                                   ; $4e55: $11 $11 $6f
	rst  $38                                         ; $4e58: $ff
	ei                                               ; $4e59: $fb
	ld   hl, $ffaf                                   ; $4e5a: $21 $af $ff
	ld   sp, $af11                                   ; $4e5d: $31 $11 $af
	rst  $38                                         ; $4e60: $ff
	pop  af                                          ; $4e61: $f1
	ld   de, $3f11                                   ; $4e62: $11 $11 $3f
	rst  $38                                         ; $4e65: $ff
	ld   a, [$9f11]                                  ; $4e66: $fa $11 $9f
	rst  $38                                         ; $4e69: $ff
	ld   h, c                                        ; $4e6a: $61
	ld   de, $ff8f                                   ; $4e6b: $11 $8f $ff
	pop  af                                          ; $4e6e: $f1
	ld   de, $2f11                                   ; $4e6f: $11 $11 $2f
	rst  $38                                         ; $4e72: $ff
	ld   hl, sp+$11                                  ; $4e73: $f8 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e75: $cf
	rst  $38                                         ; $4e76: $ff
	ld   h, c                                        ; $4e77: $61
	ld   de, $ff8f                                   ; $4e78: $11 $8f $ff
	pop  af                                          ; $4e7b: $f1
	ld   de, $7f11                                   ; $4e7c: $11 $11 $7f
	rst  $38                                         ; $4e7f: $ff
	ldh  a, [c]                                      ; $4e80: $f2
	ld   [de], a                                     ; $4e81: $12
	rst  $38                                         ; $4e82: $ff
	rst  $38                                         ; $4e83: $ff
	ld   d, c                                        ; $4e84: $51
	ld   de, $ffcf                                   ; $4e85: $11 $cf $ff
	pop  de                                          ; $4e88: $d1
	ld   de, $df11                                   ; $4e89: $11 $11 $df
	rst  $38                                         ; $4e8c: $ff
	pop  af                                          ; $4e8d: $f1
	dec  d                                           ; $4e8e: $15
	rst  $38                                         ; $4e8f: $ff
	rst  $38                                         ; $4e90: $ff
	ld   hl, rAUD1LEN                                   ; $4e91: $21 $11 $ff
	rst  $38                                         ; $4e94: $ff
	ld   sp, $1111                                   ; $4e95: $31 $11 $11
	rst  $38                                         ; $4e98: $ff
	rst  $38                                         ; $4e99: $ff
	ld   [hl], c                                     ; $4e9a: $71
	add  hl, de                                      ; $4e9b: $19
	rst  $38                                         ; $4e9c: $ff
	cp   $11                                         ; $4e9d: $fe $11
	rla                                              ; $4e9f: $17
	rst  $38                                         ; $4ea0: $ff
	rst  $38                                         ; $4ea1: $ff
	ld   de, $1311                                   ; $4ea2: $11 $11 $13
	rst  $38                                         ; $4ea5: $ff
	rst  $38                                         ; $4ea6: $ff
	ld   de, $ff4f                                   ; $4ea7: $11 $4f $ff
	ld   hl, sp+$11                                  ; $4eaa: $f8 $11
	rra                                              ; $4eac: $1f
	rst  $38                                         ; $4ead: $ff
	rst  $30                                         ; $4eae: $f7
	ld   de, $1c11                                   ; $4eaf: $11 $11 $1c
	rst  $38                                         ; $4eb2: $ff
	ld   a, [$9f14]                                  ; $4eb3: $fa $14 $9f
	rst  $38                                         ; $4eb6: $ff
	db   $e3                                         ; $4eb7: $e3
	ld   de, $ffbf                                   ; $4eb8: $11 $bf $ff
	pop  af                                          ; $4ebb: $f1
	ld   de, $1b11                                   ; $4ebc: $11 $11 $1b
	rst  $38                                         ; $4ebf: $ff
	ld   sp, hl                                      ; $4ec0: $f9
	inc  d                                           ; $4ec1: $14
	xor  a                                           ; $4ec2: $af
	rst  $38                                         ; $4ec3: $ff
	push hl                                          ; $4ec4: $e5
	ld   de, $ffef                                   ; $4ec5: $11 $ef $ff
	pop  hl                                          ; $4ec8: $e1
	ld   de, $1d11                                   ; $4ec9: $11 $11 $1d
	rst  $38                                         ; $4ecc: $ff
	db   $f4                                         ; $4ecd: $f4
	ld   e, d                                        ; $4ece: $5a
	rst  $38                                         ; $4ecf: $ff
	rst  $38                                         ; $4ed0: $ff
	add  l                                           ; $4ed1: $85
	jr   c, @+$01                                    ; $4ed2: $38 $ff

	rst  $38                                         ; $4ed4: $ff
	sub  c                                           ; $4ed5: $91
	ld   de, $1f11                                   ; $4ed6: $11 $11 $1f
	rst  $38                                         ; $4ed9: $ff
	db   $e3                                         ; $4eda: $e3
	ld   [hl], a                                     ; $4edb: $77
	rst  $38                                         ; $4edc: $ff
	rst  $38                                         ; $4edd: $ff
	ld   h, l                                        ; $4ede: $65
	dec  e                                           ; $4edf: $1d
	rst  $38                                         ; $4ee0: $ff
	rst  $38                                         ; $4ee1: $ff
	and  c                                           ; $4ee2: $a1
	ld   de, $1c11                                   ; $4ee3: $11 $11 $1c
	db   $fd                                         ; $4ee6: $fd
	push de                                          ; $4ee7: $d5
	adc  b                                           ; $4ee8: $88
	rst  $38                                         ; $4ee9: $ff
	db   $fc                                         ; $4eea: $fc
	ld   h, [hl]                                     ; $4eeb: $66
	ld   a, $ff                                      ; $4eec: $3e $ff
	rst  $38                                         ; $4eee: $ff
	or   c                                           ; $4eef: $b1
	ld   de, $1a11                                   ; $4ef0: $11 $11 $1a
	ld   [$8ba5], a                                  ; $4ef3: $ea $a5 $8b
	rst  $38                                         ; $4ef6: $ff
	ld   a, [$5f74]                                  ; $4ef7: $fa $74 $5f
	rst  $38                                         ; $4efa: $ff
	rst  $38                                         ; $4efb: $ff
	ld   [hl], c                                     ; $4efc: $71
	ld   de, $2911                                   ; $4efd: $11 $11 $29
	cp   b                                           ; $4f00: $b8
	ld   [hl], h                                     ; $4f01: $74
	sbc  l                                           ; $4f02: $9d
	rst  $28                                         ; $4f03: $ef
	jp   hl                                          ; $4f04: $e9


	ld   h, h                                        ; $4f05: $64
	sbc  a                                           ; $4f06: $9f
	rst  $38                                         ; $4f07: $ff
	rst  $38                                         ; $4f08: $ff
	ld   [hl], c                                     ; $4f09: $71
	ld   de, $2911                                   ; $4f0a: $11 $11 $29
	add  [hl]                                        ; $4f0d: $86
	ld   h, h                                        ; $4f0e: $64
	xor  h                                           ; $4f0f: $ac
	rst  $28                                         ; $4f10: $ef
	reti                                             ; $4f11: $d9


	ld   h, l                                        ; $4f12: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f13: $cf
	rst  $38                                         ; $4f14: $ff
	cp   $51                                         ; $4f15: $fe $51
	ld   de, $4811                                   ; $4f17: $11 $11 $48
	halt                                             ; $4f1a: $76
	ld   d, l                                        ; $4f1b: $55
	cp   h                                           ; $4f1c: $bc
	rst  $28                                         ; $4f1d: $ef
	xor  b                                           ; $4f1e: $a8
	ld   h, a                                        ; $4f1f: $67
	rst  $28                                         ; $4f20: $ef
	rst  $38                                         ; $4f21: $ff
	ei                                               ; $4f22: $fb
	ld   d, c                                        ; $4f23: $51
	ld   de, $5811                                   ; $4f24: $11 $11 $58
	ld   d, [hl]                                     ; $4f27: $56
	ld   c, b                                        ; $4f28: $48
	cp   e                                           ; $4f29: $bb
	db   $dd                                         ; $4f2a: $dd
	xor  b                                           ; $4f2b: $a8
	ld   l, d                                        ; $4f2c: $6a
	rst  $38                                         ; $4f2d: $ff
	rst  $38                                         ; $4f2e: $ff
	ld   a, [$1151]                                  ; $4f2f: $fa $51 $11
	ld   de, $5466                                   ; $4f32: $11 $66 $54
	ld   e, d                                        ; $4f35: $5a
	xor  e                                           ; $4f36: $ab
	call c, $8e99                                    ; $4f37: $dc $99 $8e
	rst  $38                                         ; $4f3a: $ff
	rst  $38                                         ; $4f3b: $ff
	add  sp, $41                                     ; $4f3c: $e8 $41
	ld   de, $6514                                   ; $4f3e: $11 $14 $65
	ld   b, h                                        ; $4f41: $44
	ld   a, d                                        ; $4f42: $7a
	xor  e                                           ; $4f43: $ab
	ret                                              ; $4f44: $c9


	adc  c                                           ; $4f45: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f46: $cf
	rst  $38                                         ; $4f47: $ff
	rst  $38                                         ; $4f48: $ff
	or   a                                           ; $4f49: $b7
	ld   hl, $1511                                   ; $4f4a: $21 $11 $15
	ld   d, l                                        ; $4f4d: $55
	dec  [hl]                                        ; $4f4e: $35
	adc  c                                           ; $4f4f: $89
	sbc  d                                           ; $4f50: $9a
	cp   c                                           ; $4f51: $b9
	xor  d                                           ; $4f52: $aa
	rst  $28                                         ; $4f53: $ef
	rst  $38                                         ; $4f54: $ff
	cp   $a6                                         ; $4f55: $fe $a6
	ld   de, $3511                                   ; $4f57: $11 $11 $35
	ld   d, h                                        ; $4f5a: $54
	ld   b, [hl]                                     ; $4f5b: $46
	ld   [hl], a                                     ; $4f5c: $77
	sbc  e                                           ; $4f5d: $9b
	xor  d                                           ; $4f5e: $aa
	xor  l                                           ; $4f5f: $ad
	rst  $38                                         ; $4f60: $ff
	rst  $38                                         ; $4f61: $ff
	db   $fd                                         ; $4f62: $fd
	sub  e                                           ; $4f63: $93
	ld   de, $4511                                   ; $4f64: $11 $11 $45
	ld   b, h                                        ; $4f67: $44
	ld   h, a                                        ; $4f68: $67
	ld   [hl], a                                     ; $4f69: $77
	xor  c                                           ; $4f6a: $a9
	sbc  d                                           ; $4f6b: $9a
	cp   a                                           ; $4f6c: $bf
	rst  $38                                         ; $4f6d: $ff
	rst  $38                                         ; $4f6e: $ff
	ei                                               ; $4f6f: $fb
	ld   h, c                                        ; $4f70: $61
	ld   de, $5412                                   ; $4f71: $11 $12 $54
	dec  [hl]                                        ; $4f74: $35
	ld   [hl], a                                     ; $4f75: $77
	ld   a, c                                        ; $4f76: $79
	adc  c                                           ; $4f77: $89
	sbc  d                                           ; $4f78: $9a
	rst  $28                                         ; $4f79: $ef
	rst  $38                                         ; $4f7a: $ff
	rst  $38                                         ; $4f7b: $ff
	ld   sp, hl                                      ; $4f7c: $f9
	ld   hl, $1311                                   ; $4f7d: $21 $11 $13
	ld   b, d                                        ; $4f80: $42
	ld   d, a                                        ; $4f81: $57
	ld   [hl], a                                     ; $4f82: $77
	ld   a, b                                        ; $4f83: $78
	sbc  c                                           ; $4f84: $99
	sbc  l                                           ; $4f85: $9d
	rst  $38                                         ; $4f86: $ff
	rst  $38                                         ; $4f87: $ff
	rst  $38                                         ; $4f88: $ff
	call nz, $1111                                   ; $4f89: $c4 $11 $11
	inc  h                                           ; $4f8c: $24
	inc  h                                           ; $4f8d: $24
	ld   [hl], a                                     ; $4f8e: $77
	halt                                             ; $4f8f: $76
	sbc  c                                           ; $4f90: $99
	sbc  c                                           ; $4f91: $99
	cp   a                                           ; $4f92: $bf
	rst  $38                                         ; $4f93: $ff
	rst  $38                                         ; $4f94: $ff
	db   $fd                                         ; $4f95: $fd
	ld   [hl], c                                     ; $4f96: $71
	ld   de, $4311                                   ; $4f97: $11 $11 $43
	scf                                              ; $4f9a: $37
	ld   [hl], a                                     ; $4f9b: $77
	ld   h, a                                        ; $4f9c: $67
	adc  c                                           ; $4f9d: $89
	xor  e                                           ; $4f9e: $ab
	rst  $28                                         ; $4f9f: $ef
	rst  $38                                         ; $4fa0: $ff
	rst  $38                                         ; $4fa1: $ff
	jp   hl                                          ; $4fa2: $e9


	ld   de, $1311                                   ; $4fa3: $11 $11 $13
	ld   b, e                                        ; $4fa6: $43
	ld   h, a                                        ; $4fa7: $67
	halt                                             ; $4fa8: $76
	ld   l, c                                        ; $4fa9: $69
	adc  c                                           ; $4faa: $89
	cp   [hl]                                        ; $4fab: $be
	rst  $38                                         ; $4fac: $ff
	rst  $38                                         ; $4fad: $ff
	rst  $38                                         ; $4fae: $ff
	sub  e                                           ; $4faf: $93
	ld   de, $2411                                   ; $4fb0: $11 $11 $24
	dec  h                                           ; $4fb3: $25
	add  a                                           ; $4fb4: $87
	halt                                             ; $4fb5: $76
	adc  b                                           ; $4fb6: $88
	sbc  d                                           ; $4fb7: $9a
	rst  JumpTable                                         ; $4fb8: $df
	rst  $38                                         ; $4fb9: $ff
	rst  $38                                         ; $4fba: $ff
	ei                                               ; $4fbb: $fb
	ld   b, c                                        ; $4fbc: $41
	ld   de, $4211                                   ; $4fbd: $11 $11 $42
	ld   b, a                                        ; $4fc0: $47
	ld   [hl], a                                     ; $4fc1: $77
	ld   h, a                                        ; $4fc2: $67
	adc  b                                           ; $4fc3: $88
	sbc  e                                           ; $4fc4: $9b
	rst  $38                                         ; $4fc5: $ff
	rst  $38                                         ; $4fc6: $ff
	rst  $38                                         ; $4fc7: $ff
	or   l                                           ; $4fc8: $b5
	ld   de, $1411                                   ; $4fc9: $11 $11 $14
	inc  sp                                          ; $4fcc: $33
	ld   a, b                                        ; $4fcd: $78
	halt                                             ; $4fce: $76
	ld   a, b                                        ; $4fcf: $78
	sbc  d                                           ; $4fd0: $9a
	xor  a                                           ; $4fd1: $af
	rst  $38                                         ; $4fd2: $ff
	rst  $38                                         ; $4fd3: $ff
	db   $fc                                         ; $4fd4: $fc
	ld   h, c                                        ; $4fd5: $61
	ld   de, $4311                                   ; $4fd6: $11 $11 $43
	scf                                              ; $4fd9: $37
	add  a                                           ; $4fda: $87
	ld   h, a                                        ; $4fdb: $67
	adc  c                                           ; $4fdc: $89
	xor  c                                           ; $4fdd: $a9
	rst  $28                                         ; $4fde: $ef
	rst  $38                                         ; $4fdf: $ff
	rst  $38                                         ; $4fe0: $ff
	rst  $10                                         ; $4fe1: $d7
	ld   de, $1411                                   ; $4fe2: $11 $11 $14
	ld   b, e                                        ; $4fe5: $43
	ld   a, b                                        ; $4fe6: $78
	halt                                             ; $4fe7: $76
	ld   a, c                                        ; $4fe8: $79
	adc  c                                           ; $4fe9: $89
	xor  [hl]                                        ; $4fea: $ae
	rst  $38                                         ; $4feb: $ff
	rst  $38                                         ; $4fec: $ff
	cp   $91                                         ; $4fed: $fe $91
	ld   de, $3411                                   ; $4fef: $11 $11 $34
	ld   [hl], $87                                   ; $4ff2: $36 $87
	ld   h, a                                        ; $4ff4: $67
	sbc  b                                           ; $4ff5: $98
	xor  d                                           ; $4ff6: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ff7: $cf
	rst  $38                                         ; $4ff8: $ff
	rst  $38                                         ; $4ff9: $ff
	jp   hl                                          ; $4ffa: $e9


	ld   de, $1311                                   ; $4ffb: $11 $11 $13
	ld   d, e                                        ; $4ffe: $53
	ld   l, c                                        ; $4fff: $69
	halt                                             ; $5000: $76
	ld   l, c                                        ; $5001: $69
	sbc  d                                           ; $5002: $9a
	xor  l                                           ; $5003: $ad
	rst  $38                                         ; $5004: $ff
	rst  $38                                         ; $5005: $ff
	cp   $92                                         ; $5006: $fe $92
	ld   de, $3511                                   ; $5008: $11 $11 $35
	ld   [hl], $88                                   ; $500b: $36 $88
	ld   h, [hl]                                     ; $500d: $66
	adc  c                                           ; $500e: $89
	sbc  c                                           ; $500f: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5010: $cf
	rst  $38                                         ; $5011: $ff
	rst  $38                                         ; $5012: $ff
	ld   a, [$1131]                                  ; $5013: $fa $31 $11
	inc  de                                          ; $5016: $13
	ld   d, e                                        ; $5017: $53
	ld   l, c                                        ; $5018: $69
	sub  a                                           ; $5019: $97
	ld   l, b                                        ; $501a: $68
	sbc  c                                           ; $501b: $99
	sbc  h                                           ; $501c: $9c
	rst  $38                                         ; $501d: $ff
	rst  $38                                         ; $501e: $ff
	rst  $38                                         ; $501f: $ff
	and  e                                           ; $5020: $a3
	ld   de, $3511                                   ; $5021: $11 $11 $35
	ld   b, l                                        ; $5024: $45
	sbc  b                                           ; $5025: $98
	halt                                             ; $5026: $76
	adc  c                                           ; $5027: $89
	sbc  d                                           ; $5028: $9a
	cp   a                                           ; $5029: $bf
	rst  $38                                         ; $502a: $ff
	rst  $38                                         ; $502b: $ff
	ld   a, [$1131]                                  ; $502c: $fa $31 $11
	inc  d                                           ; $502f: $14
	dec  [hl]                                        ; $5030: $35
	adc  d                                           ; $5031: $8a
	or   a                                           ; $5032: $b7
	scf                                              ; $5033: $37
	ld   a, b                                        ; $5034: $78
	cp   d                                           ; $5035: $ba
	rst  $38                                         ; $5036: $ff
	rst  $38                                         ; $5037: $ff
	db   $fc                                         ; $5038: $fc
	ld   h, c                                        ; $5039: $61
	ld   de, $c711                                   ; $503a: $11 $11 $c7
	ld   a, d                                        ; $503d: $7a
	adc  e                                           ; $503e: $8b
	and  l                                           ; $503f: $a5
	ld   l, b                                        ; $5040: $68
	ld   e, e                                        ; $5041: $5b
	xor  a                                           ; $5042: $af
	rst  $38                                         ; $5043: $ff
	cp   $c6                                         ; $5044: $fe $c6
	ld   de, $1f11                                   ; $5046: $11 $11 $1f
	or   h                                           ; $5049: $b4
	cp   c                                           ; $504a: $b9
	cp   h                                           ; $504b: $bc
	ld   h, h                                        ; $504c: $64
	sub  l                                           ; $504d: $95
	set  7, a                                        ; $504e: $cb $ff
	rst  $38                                         ; $5050: $ff
	ei                                               ; $5051: $fb
	ld   h, c                                        ; $5052: $61
	ld   de, rAUD1LEN                                   ; $5053: $11 $11 $ff
	ld   e, $9c                                      ; $5056: $1e $9c
	and  $2a                                         ; $5058: $e6 $2a
	ld   l, h                                        ; $505a: $6c
	xor  $ff                                         ; $505b: $ee $ff
	cp   $85                                         ; $505d: $fe $85
	ld   de, $1f14                                   ; $505f: $11 $14 $1f
	pop  af                                          ; $5062: $f1
	ld   sp, hl                                      ; $5063: $f9
	xor  l                                           ; $5064: $ad
	ld   d, c                                        ; $5065: $51
	and  [hl]                                        ; $5066: $a6
	rst  JumpTable                                         ; $5067: $df
	rst  JumpTable                                         ; $5068: $df
	rst  $28                                         ; $5069: $ef
	push de                                          ; $506a: $d5
	ld   b, c                                        ; $506b: $41
	ld   de, $ffb1                                   ; $506c: $11 $b1 $ff
	rra                                              ; $506f: $1f
	ld   l, c                                        ; $5070: $69
	call nc, $7e1c                                   ; $5071: $d4 $1c $7e
	db   $fd                                         ; $5074: $fd
	ei                                               ; $5075: $fb
	ld   a, [$1122]                                  ; $5076: $fa $22 $11
	rra                                              ; $5079: $1f
	cpl                                              ; $507a: $2f
	pop  af                                          ; $507b: $f1
	ldh  a, [c]                                      ; $507c: $f2
	sbc  l                                           ; $507d: $9d
	ld   hl, $fff7                                   ; $507e: $21 $f7 $ff
	rst  $28                                         ; $5081: $ef
	adc  a                                           ; $5082: $8f
	ld   h, c                                        ; $5083: $61
	ld   de, $f511                                   ; $5084: $11 $11 $f5
	ld   hl, sp+$1f                                  ; $5087: $f8 $1f
	add  hl, de                                      ; $5089: $19
	or   c                                           ; $508a: $b1
	rra                                              ; $508b: $1f
	ld   a, a                                        ; $508c: $7f
	rst  $38                                         ; $508d: $ff
	push af                                          ; $508e: $f5
	pop  af                                          ; $508f: $f1
	ld   de, $af11                                   ; $5090: $11 $11 $af
	rst  $38                                         ; $5093: $ff
	ld   [de], a                                     ; $5094: $12
	pop  af                                          ; $5095: $f1
	cp   d                                           ; $5096: $ba
	dec  d                                           ; $5097: $15
	or   $fb                                         ; $5098: $f6 $fb
	rst  $38                                         ; $509a: $ff
	ld   c, a                                        ; $509b: $4f
	ld   de, $1f11                                   ; $509c: $11 $11 $1f
	rst  $38                                         ; $509f: $ff
	pop  af                                          ; $50a0: $f1
	ld   a, [$811a]                                  ; $50a1: $fa $1a $81
	rst  $38                                         ; $50a4: $ff
	ld   a, a                                        ; $50a5: $7f
	ld   e, a                                        ; $50a6: $5f
	rst  $20                                         ; $50a7: $e7
	pop  de                                          ; $50a8: $d1
	ld   de, $f611                                   ; $50a9: $11 $11 $f6
	rst  $38                                         ; $50ac: $ff
	rra                                              ; $50ad: $1f
	ld   de, $1f88                                   ; $50ae: $11 $88 $1f
	db   $fc                                         ; $50b1: $fc
	pop  af                                          ; $50b2: $f1
	push af                                          ; $50b3: $f5
	add  $11                                         ; $50b4: $c6 $11
	ld   de, $8fff                                   ; $50b6: $11 $ff $8f
	ld   de, $66f1                                   ; $50b9: $11 $f1 $66
	ld   [hl], e                                     ; $50bc: $73
	db   $f4                                         ; $50bd: $f4
	cp   $7f                                         ; $50be: $fe $7f
	inc  e                                           ; $50c0: $1c
	ld   de, $1f11                                   ; $50c1: $11 $11 $1f
	rst  $38                                         ; $50c4: $ff
	pop  af                                          ; $50c5: $f1
	push af                                          ; $50c6: $f5
	inc  d                                           ; $50c7: $14
	add  h                                           ; $50c8: $84
	rst  $38                                         ; $50c9: $ff
	rra                                              ; $50ca: $1f
	rra                                              ; $50cb: $1f
	ldh  a, [c]                                      ; $50cc: $f2
	add  c                                           ; $50cd: $81
	ld   de, $f411                                   ; $50ce: $11 $11 $f4
	or   $1f                                         ; $50d1: $f6 $1f
	inc  d                                           ; $50d3: $14
	dec  e                                           ; $50d4: $1d
	ld   c, a                                        ; $50d5: $4f
	or   $f1                                         ; $50d6: $f6 $f1
	rst  $30                                         ; $50d8: $f7
	ld   d, e                                        ; $50d9: $53
	ld   de, rAUD1LEN                                   ; $50da: $11 $11 $ff
	rst  $38                                         ; $50dd: $ff
	ld   [de], a                                     ; $50de: $12
	pop  af                                          ; $50df: $f1
	ld   b, c                                        ; $50e0: $41
	db   $fc                                         ; $50e1: $fc
	pop  af                                          ; $50e2: $f1
	ld   a, [$167f]                                  ; $50e3: $fa $7f $16
	inc  de                                          ; $50e6: $13
	ld   de, $af1f                                   ; $50e7: $11 $1f $af
	pop  af                                          ; $50ea: $f1
	pop  af                                          ; $50eb: $f1
	ld   hl, $ffbc                                   ; $50ec: $21 $bc $ff
	rra                                              ; $50ef: $1f
	rra                                              ; $50f0: $1f
	pop  de                                          ; $50f1: $d1
	ld   b, c                                        ; $50f2: $41
	ld   de, $f71f                                   ; $50f3: $11 $1f $f7
	pop  af                                          ; $50f6: $f1
	rra                                              ; $50f7: $1f
	inc  d                                           ; $50f8: $14
	rra                                              ; $50f9: $1f
	rst  JumpTable                                         ; $50fa: $df
	dec  sp                                          ; $50fb: $3b
	db   $f4                                         ; $50fc: $f4
	ldh  a, [c]                                      ; $50fd: $f2
	ld   hl, $1151                                   ; $50fe: $21 $51 $11
	rst  $38                                         ; $5101: $ff
	rst  $38                                         ; $5102: $ff
	rra                                              ; $5103: $1f
	ld   d, c                                        ; $5104: $51
	dec  d                                           ; $5105: $15
	rst  $38                                         ; $5106: $ff
	pop  af                                          ; $5107: $f1
	push af                                          ; $5108: $f5
	rst  $38                                         ; $5109: $ff
	ld   [de], a                                     ; $510a: $12
	inc  sp                                          ; $510b: $33
	ld   de, $6fff                                   ; $510c: $11 $ff $6f
	ld   de, $01f1                                   ; $510f: $11 $f1 $01
	cp   $fd                                         ; $5112: $fe $fd
	rra                                              ; $5114: $1f
	ld   e, a                                        ; $5115: $5f
	ld   [hl], c                                     ; $5116: $71
	ld   d, $11                                      ; $5117: $16 $11
	rra                                              ; $5119: $1f
	rst  $38                                         ; $511a: $ff
	pop  af                                          ; $511b: $f1
	ld   a, [$2f11]                                  ; $511c: $fa $11 $2f
	rst  $38                                         ; $511f: $ff
	rra                                              ; $5120: $1f
	rst  $28                                         ; $5121: $ef
	pop  af                                          ; $5122: $f1
	inc  de                                          ; $5123: $13
	ld   b, c                                        ; $5124: $41
	rra                                              ; $5125: $1f
	or   $f1                                         ; $5126: $f6 $f1
	rra                                              ; $5128: $1f
	ld   de, $ff1f                                   ; $5129: $11 $1f $ff
	sub  c                                           ; $512c: $91
	ei                                               ; $512d: $fb
	db   $f4                                         ; $512e: $f4
	ld   de, $1171                                   ; $512f: $11 $71 $11
	rst  $38                                         ; $5132: $ff
	rst  $38                                         ; $5133: $ff
	rra                                              ; $5134: $1f
	sub  c                                           ; $5135: $91
	dec  d                                           ; $5136: $15
	rst  $38                                         ; $5137: $ff
	pop  af                                          ; $5138: $f1
	rst  $38                                         ; $5139: $ff
	db   $fc                                         ; $513a: $fc
	ld   de, $1132                                   ; $513b: $11 $32 $11
	rst  $38                                         ; $513e: $ff
	cp   a                                           ; $513f: $bf
	ld   de, $11f1                                   ; $5140: $11 $f1 $11
	rst  $38                                         ; $5143: $ff
	di                                               ; $5144: $f3
	ccf                                              ; $5145: $3f
	rst  $38                                         ; $5146: $ff
	ld   hl, $1115                                   ; $5147: $21 $15 $11
	xor  a                                           ; $514a: $af
	adc  a                                           ; $514b: $8f
	or   c                                           ; $514c: $b1
	db   $f4                                         ; $514d: $f4
	ld   de, $ffaa                                   ; $514e: $11 $aa $ff
	rra                                              ; $5151: $1f
	rst  $38                                         ; $5152: $ff
	add  c                                           ; $5153: $81
	inc  de                                          ; $5154: $13
	ld   de, $ff1f                                   ; $5155: $11 $1f $ff
	pop  af                                          ; $5158: $f1
	rst  $38                                         ; $5159: $ff
	ld   de, $ff69                                   ; $515a: $11 $69 $ff
	dec  e                                           ; $515d: $1d
	rst  $38                                         ; $515e: $ff
	pop  bc                                          ; $515f: $c1
	ld   de, $1f11                                   ; $5160: $11 $11 $1f
	rst  $30                                         ; $5163: $f7
	pop  af                                          ; $5164: $f1
	rra                                              ; $5165: $1f
	ld   de, $4f2c                                   ; $5166: $11 $2c $4f
	and  e                                           ; $5169: $a3
	rst  $38                                         ; $516a: $ff
	sub  $11                                         ; $516b: $d6 $11
	ld   de, $f11f                                   ; $516d: $11 $1f $f1
	ld   a, [$811f]                                  ; $5170: $fa $1f $81
	rra                                              ; $5173: $1f
	rra                                              ; $5174: $1f
	pop  af                                          ; $5175: $f1
	rst  $38                                         ; $5176: $ff
	ld   hl, sp+$31                                  ; $5177: $f8 $31
	ld   de, $f11c                                   ; $5179: $11 $1c $f1
	rst  $38                                         ; $517c: $ff
	rra                                              ; $517d: $1f
	pop  hl                                          ; $517e: $e1
	rra                                              ; $517f: $1f
	rra                                              ; $5180: $1f
	pop  af                                          ; $5181: $f1
	rst  $38                                         ; $5182: $ff
	ld   sp, hl                                      ; $5183: $f9
	add  c                                           ; $5184: $81
	ld   de, $f111                                   ; $5185: $11 $11 $f1
	rst  $38                                         ; $5188: $ff
	rra                                              ; $5189: $1f
	db   $f4                                         ; $518a: $f4
	rra                                              ; $518b: $1f
	ld   d, $f5                                      ; $518c: $16 $f5
	rst  JumpTable                                         ; $518e: $df
	ld   a, [$11a1]                                  ; $518f: $fa $a1 $11
	ld   de, $fff1                                   ; $5192: $11 $f1 $ff
	ld   c, a                                        ; $5195: $4f
	rst  $20                                         ; $5196: $e7
	rra                                              ; $5197: $1f
	ld   sp, $9ffb                                   ; $5198: $31 $fb $9f
	cp   $e1                                         ; $519b: $fe $e1
	ld   de, $f311                                   ; $519d: $11 $11 $f3
	xor  a                                           ; $51a0: $af
	ld   l, a                                        ; $51a1: $6f
	ei                                               ; $51a2: $fb
	inc  e                                           ; $51a3: $1c
	add  c                                           ; $51a4: $81
	cp   $af                                         ; $51a5: $fe $af
	cp   $e6                                         ; $51a7: $fe $e6
	ld   de, $f511                                   ; $51a9: $11 $11 $f5
	ld   a, a                                        ; $51ac: $7f
	ld   l, l                                        ; $51ad: $6d
	xor  $3b                                         ; $51ae: $ee $3b
	and  c                                           ; $51b0: $a1
	rst  $38                                         ; $51b1: $ff
	xor  [hl]                                        ; $51b2: $ae
	rst  $38                                         ; $51b3: $ff
	ld   a, [$1111]                                  ; $51b4: $fa $11 $11
	ld   hl, sp+$6f                                  ; $51b7: $f8 $6f

Call_0b5_51b9:
	ld   a, c                                        ; $51b9: $79
	cp   a                                           ; $51ba: $bf
	adc  h                                           ; $51bb: $8c
	pop  de                                          ; $51bc: $d1
	cp   a                                           ; $51bd: $bf
	db   $dd                                         ; $51be: $dd
	rst  $38                                         ; $51bf: $ff
	cp   h                                           ; $51c0: $bc
	ld   de, $7711                                   ; $51c1: $11 $11 $77
	ld   a, a                                        ; $51c4: $7f
	or   l                                           ; $51c5: $b5
	ld   c, c                                        ; $51c6: $49
	cp   h                                           ; $51c7: $bc
	db   $f4                                         ; $51c8: $f4
	adc  e                                           ; $51c9: $8b
	call z, $bbff                                    ; $51ca: $cc $ff $bb
	ld   d, c                                        ; $51cd: $51
	ld   de, $5f16                                   ; $51ce: $11 $16 $5f
	push de                                          ; $51d1: $d5
	ld   [hl-], a                                    ; $51d2: $32
	ld   l, b                                        ; $51d3: $68
	ei                                               ; $51d4: $fb
	sbc  d                                           ; $51d5: $9a
	sbc  d                                           ; $51d6: $9a
	rst  $28                                         ; $51d7: $ef
	xor  $b5                                         ; $51d8: $ee $b5
	ld   de, $6a16                                   ; $51da: $11 $16 $6a
	or   d                                           ; $51dd: $b2
	ld   de, $9c13                                   ; $51de: $11 $13 $9c
	sbc  e                                           ; $51e1: $9b
	xor  c                                           ; $51e2: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51e3: $cf
	rst  $38                                         ; $51e4: $ff
	db   $fc                                         ; $51e5: $fc
	ld   [hl], h                                     ; $51e6: $74
	inc  hl                                          ; $51e7: $23
	ld   h, a                                        ; $51e8: $67
	sub  e                                           ; $51e9: $93
	ld   de, $4911                                   ; $51ea: $11 $11 $49
	sbc  d                                           ; $51ed: $9a
	cp   c                                           ; $51ee: $b9
	cp   a                                           ; $51ef: $bf
	rst  $38                                         ; $51f0: $ff
	rst  $38                                         ; $51f1: $ff
	cp   b                                           ; $51f2: $b8
	ld   b, c                                        ; $51f3: $41
	ld   d, [hl]                                     ; $51f4: $56
	ld   [hl], a                                     ; $51f5: $77
	ld   bc, $1411                                   ; $51f6: $01 $11 $14
	adc  b                                           ; $51f9: $88
	xor  c                                           ; $51fa: $a9
	sbc  h                                           ; $51fb: $9c
	rst  $38                                         ; $51fc: $ff
	rst  $38                                         ; $51fd: $ff
	ei                                               ; $51fe: $fb
	sub  e                                           ; $51ff: $93
	dec  h                                           ; $5200: $25
	ld   l, b                                        ; $5201: $68
	ld   d, c                                        ; $5202: $51
	ld   de, $5811                                   ; $5203: $11 $11 $58
	sbc  d                                           ; $5206: $9a
	adc  d                                           ; $5207: $8a
	rst  $28                                         ; $5208: $ef
	rst  $38                                         ; $5209: $ff
	rst  $38                                         ; $520a: $ff
	rst  ToBoot                                         ; $520b: $c7
	inc  sp                                          ; $520c: $33
	ld   d, [hl]                                     ; $520d: $56
	ld   [hl], e                                     ; $520e: $73
	ld   de, $1511                                   ; $520f: $11 $11 $15
	adc  d                                           ; $5212: $8a
	xor  c                                           ; $5213: $a9
	cp   a                                           ; $5214: $bf
	rst  $38                                         ; $5215: $ff
	rst  $38                                         ; $5216: $ff
	ei                                               ; $5217: $fb
	ld   h, d                                        ; $5218: $62
	ld   b, [hl]                                     ; $5219: $46
	ld   h, [hl]                                     ; $521a: $66
	ld   de, $1211                                   ; $521b: $11 $11 $12
	ld   l, b                                        ; $521e: $68
	xor  d                                           ; $521f: $aa
	sbc  h                                           ; $5220: $9c
	rst  $38                                         ; $5221: $ff
	rst  $38                                         ; $5222: $ff
	cp   $a5                                         ; $5223: $fe $a5
	inc  h                                           ; $5225: $24
	ld   d, [hl]                                     ; $5226: $56
	ld   d, c                                        ; $5227: $51
	ld   de, $3711                                   ; $5228: $11 $11 $37
	adc  d                                           ; $522b: $8a
	xor  d                                           ; $522c: $aa
	rst  JumpTable                                         ; $522d: $df
	rst  $38                                         ; $522e: $ff
	rst  $38                                         ; $522f: $ff
	reti                                             ; $5230: $d9


	ld   b, e                                        ; $5231: $43
	ld   b, l                                        ; $5232: $45
	ld   h, d                                        ; $5233: $62
	ld   de, $1411                                   ; $5234: $11 $11 $14
	ld   l, c                                        ; $5237: $69
	cp   d                                           ; $5238: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5239: $cf
	rst  $38                                         ; $523a: $ff
	rst  $38                                         ; $523b: $ff
	db   $fc                                         ; $523c: $fc
	ld   [hl], e                                     ; $523d: $73
	inc  sp                                          ; $523e: $33
	ld   d, l                                        ; $523f: $55
	ld   de, $1111                                   ; $5240: $11 $11 $11
	ld   d, a                                        ; $5243: $57
	xor  e                                           ; $5244: $ab
	xor  h                                           ; $5245: $ac
	rst  $38                                         ; $5246: $ff
	rst  $38                                         ; $5247: $ff
	rst  $38                                         ; $5248: $ff
	or   l                                           ; $5249: $b5
	inc  sp                                          ; $524a: $33
	ld   b, [hl]                                     ; $524b: $46
	ld   sp, $1111                                   ; $524c: $31 $11 $11
	ld   [hl], $8b                                   ; $524f: $36 $8b
	cp   e                                           ; $5251: $bb
	rst  $38                                         ; $5252: $ff
	rst  $38                                         ; $5253: $ff
	rst  $38                                         ; $5254: $ff
	ret  z                                           ; $5255: $c8

	ld   b, e                                        ; $5256: $43
	dec  [hl]                                        ; $5257: $35
	ld   d, c                                        ; $5258: $51
	ld   de, $0411                                   ; $5259: $11 $11 $04
	ld   l, c                                        ; $525c: $69
	cp   h                                           ; $525d: $bc
	rst  JumpTable                                         ; $525e: $df
	rst  $38                                         ; $525f: $ff
	rst  $38                                         ; $5260: $ff
	db   $eb                                         ; $5261: $eb
	ld   h, e                                        ; $5262: $63
	inc  [hl]                                        ; $5263: $34
	ld   d, e                                        ; $5264: $53
	ld   de, $1311                                   ; $5265: $11 $11 $13
	ld   d, a                                        ; $5268: $57
	set  3, a                                        ; $5269: $cb $df
	rst  $38                                         ; $526b: $ff
	rst  $38                                         ; $526c: $ff
	db   $fd                                         ; $526d: $fd
	sub  e                                           ; $526e: $93
	inc  hl                                          ; $526f: $23
	ld   b, h                                        ; $5270: $44
	ld   bc, $1111                                   ; $5271: $01 $11 $11
	ld   b, [hl]                                     ; $5274: $46
	sbc  h                                           ; $5275: $9c
	cp   [hl]                                        ; $5276: $be
	rst  $38                                         ; $5277: $ff
	rst  $38                                         ; $5278: $ff
	cp   $a5                                         ; $5279: $fe $a5
	inc  hl                                          ; $527b: $23
	inc  [hl]                                        ; $527c: $34
	ld   hl, $1111                                   ; $527d: $21 $11 $11
	dec  [hl]                                        ; $5280: $35
	ld   a, h                                        ; $5281: $7c
	cp   [hl]                                        ; $5282: $be
	rst  $38                                         ; $5283: $ff
	rst  $38                                         ; $5284: $ff
	rst  $38                                         ; $5285: $ff
	ret  c                                           ; $5286: $d8

	inc  sp                                          ; $5287: $33
	inc  sp                                          ; $5288: $33
	ld   sp, $1111                                   ; $5289: $31 $11 $11
	dec  d                                           ; $528c: $15
	ld   l, e                                        ; $528d: $6b
	call z, $ffff                                    ; $528e: $cc $ff $ff
	rst  $38                                         ; $5291: $ff
	jp   c, $2343                                    ; $5292: $da $43 $23

	ld   b, c                                        ; $5295: $41
	ld   de, $1311                                   ; $5296: $11 $11 $13
	ld   e, c                                        ; $5299: $59
	call z, $ffef                                    ; $529a: $cc $ef $ff
	rst  $38                                         ; $529d: $ff
	db   $fc                                         ; $529e: $fc
	ld   h, e                                        ; $529f: $63
	ld   [hl+], a                                    ; $52a0: $22
	ld   [hl-], a                                    ; $52a1: $32
	ld   de, $1211                                   ; $52a2: $11 $11 $12
	ld   b, a                                        ; $52a5: $47
	call z, $ffdf                                    ; $52a6: $cc $df $ff

Jump_0b5_52a9:
	rst  $38                                         ; $52a9: $ff
	db   $fc                                         ; $52aa: $fc
	sub  e                                           ; $52ab: $93
	ld   hl, $1133                                   ; $52ac: $21 $33 $11
	ld   de, $4511                                   ; $52af: $11 $11 $45
	cp   h                                           ; $52b2: $bc
	rst  JumpTable                                         ; $52b3: $df
	rst  $38                                         ; $52b4: $ff
	rst  $38                                         ; $52b5: $ff
	cp   $93                                         ; $52b6: $fe $93
	ld   de, $1124                                   ; $52b8: $11 $24 $11
	ld   de, $5611                                   ; $52bb: $11 $11 $56
	xor  h                                           ; $52be: $ac
	rst  JumpTable                                         ; $52bf: $df
	rst  $38                                         ; $52c0: $ff
	rst  $38                                         ; $52c1: $ff
	db   $fc                                         ; $52c2: $fc
	ld   [hl], c                                     ; $52c3: $71
	ld   de, $1115                                   ; $52c4: $11 $15 $11
	ld   de, $6812                                   ; $52c7: $11 $12 $68
	xor  l                                           ; $52ca: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52cb: $cf
	rst  $38                                         ; $52cc: $ff
	rst  $38                                         ; $52cd: $ff
	db   $fc                                         ; $52ce: $fc
	ld   h, c                                        ; $52cf: $61
	ld   de, $3114                                   ; $52d0: $11 $14 $31
	ld   de, $8a13                                   ; $52d3: $11 $13 $8a
	xor  l                                           ; $52d6: $ad
	rst  JumpTable                                         ; $52d7: $df
	rst  $38                                         ; $52d8: $ff
	rst  $38                                         ; $52d9: $ff
	db   $fc                                         ; $52da: $fc
	ld   b, c                                        ; $52db: $41
	ld   de, $2112                                   ; $52dc: $11 $12 $21
	ld   de, $ca42                                   ; $52df: $11 $42 $ca
	adc  a                                           ; $52e2: $8f
	rst  $38                                         ; $52e3: $ff
	rst  $38                                         ; $52e4: $ff
	rst  $38                                         ; $52e5: $ff
	ld   sp, hl                                      ; $52e6: $f9
	ld   de, $1a61                                   ; $52e7: $11 $61 $1a
	ld   sp, $211a                                   ; $52ea: $31 $1a $21
	ei                                               ; $52ed: $fb
	ld   c, a                                        ; $52ee: $4f
	rst  $38                                         ; $52ef: $ff
	rst  $38                                         ; $52f0: $ff
	rst  $38                                         ; $52f1: $ff
	rst  $30                                         ; $52f2: $f7
	ld   de, $1f91                                   ; $52f3: $11 $91 $1f
	ld   de, $1996                                   ; $52f6: $11 $96 $19
	pop  af                                          ; $52f9: $f1
	rst  JumpTable                                         ; $52fa: $df
	cp   $ff                                         ; $52fb: $fe $ff
	rst  JumpTable                                         ; $52fd: $df
	pop  af                                          ; $52fe: $f1
	add  hl, de                                      ; $52ff: $19
	ld   de, $13a8                                   ; $5300: $11 $a8 $13
	and  c                                           ; $5303: $a1
	rra                                              ; $5304: $1f
	ld   [hl], c                                     ; $5305: $71
	rst  $38                                         ; $5306: $ff
	cp   a                                           ; $5307: $bf
	rst  $38                                         ; $5308: $ff
	rst  $38                                         ; $5309: $ff
	and  c                                           ; $530a: $a1
	dec  hl                                          ; $530b: $2b
	ld   de, $1cf1                                   ; $530c: $11 $f1 $1c
	ld   de, $196f                                   ; $530f: $11 $6f $19
	db   $fc                                         ; $5312: $fc
	rst  $38                                         ; $5313: $ff
	cp   $ff                                         ; $5314: $fe $ff
	ld   hl, $1193                                   ; $5316: $21 $93 $11
	pop  hl                                          ; $5319: $e1
	inc  e                                           ; $531a: $1c
	ld   de, $1fde                                   ; $531b: $11 $de $1f
	ld   a, [$ffff]                                  ; $531e: $fa $ff $ff
	rst  $38                                         ; $5321: $ff
	rla                                              ; $5322: $17
	ld   h, c                                        ; $5323: $61
	dec  d                                           ; $5324: $15
	ld   b, c                                        ; $5325: $41
	ld   b, e                                        ; $5326: $43
	ld   de, $1fd7                                   ; $5327: $11 $d7 $1f
	ei                                               ; $532a: $fb
	rst  $38                                         ; $532b: $ff
	rst  $38                                         ; $532c: $ff
	rst  $30                                         ; $532d: $f7
	add  hl, sp                                      ; $532e: $39
	ld   hl, $1117                                   ; $532f: $21 $17 $11
	ld   [hl], c                                     ; $5332: $71
	dec  d                                           ; $5333: $15
	jp   nc, $cf7f                                   ; $5334: $d2 $7f $cf

	rst  $38                                         ; $5337: $ff
	rst  $38                                         ; $5338: $ff
	di                                               ; $5339: $f3
	sub  l                                           ; $533a: $95
	ld   de, $1118                                   ; $533b: $11 $18 $11
	ld   [hl], c                                     ; $533e: $71
	rla                                              ; $533f: $17
	and  c                                           ; $5340: $a1
	rst  JumpTable                                         ; $5341: $df
	xor  a                                           ; $5342: $af
	rst  $38                                         ; $5343: $ff
	rst  $38                                         ; $5344: $ff
	push af                                          ; $5345: $f5
	pop  bc                                          ; $5346: $c1
	ld   de, $1117                                   ; $5347: $11 $17 $11
	ld   d, c                                        ; $534a: $51
	rla                                              ; $534b: $17
	ld   h, d                                        ; $534c: $62
	rst  $38                                         ; $534d: $ff
	rst  JumpTable                                         ; $534e: $df
	rst  $38                                         ; $534f: $ff
	rst  $38                                         ; $5350: $ff
	ld   hl, sp-$5f                                  ; $5351: $f8 $a1
	ld   hl, $1115                                   ; $5353: $21 $15 $11
	ld   de, $6425                                   ; $5356: $11 $25 $64
	rst  $38                                         ; $5359: $ff
	rst  $38                                         ; $535a: $ff
	rst  $38                                         ; $535b: $ff
	rst  $38                                         ; $535c: $ff
	res  2, c                                        ; $535d: $cb $91
	ld   b, c                                        ; $535f: $41
	dec  d                                           ; $5360: $15
	ld   de, $3411                                   ; $5361: $11 $11 $34
	ld   h, [hl]                                     ; $5364: $66
	rst  $38                                         ; $5365: $ff
	rst  $38                                         ; $5366: $ff
	rst  $38                                         ; $5367: $ff
	rst  $38                                         ; $5368: $ff
	bit  6, c                                        ; $5369: $cb $71
	ld   b, c                                        ; $536b: $41
	inc  d                                           ; $536c: $14
	ld   de, $3311                                   ; $536d: $11 $11 $33
	ld   d, a                                        ; $5370: $57
	rst  $28                                         ; $5371: $ef
	rst  $38                                         ; $5372: $ff
	rst  $38                                         ; $5373: $ff
	rst  $38                                         ; $5374: $ff
	bit  6, c                                        ; $5375: $cb $71
	ld   d, c                                        ; $5377: $51
	inc  d                                           ; $5378: $14
	ld   de, $1211                                   ; $5379: $11 $11 $12
	ld   h, l                                        ; $537c: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $537d: $cf
	rst  $38                                         ; $537e: $ff
	rst  $38                                         ; $537f: $ff
	rst  $38                                         ; $5380: $ff
	reti                                             ; $5381: $d9


	sub  h                                           ; $5382: $94
	ld   d, c                                        ; $5383: $51
	dec  d                                           ; $5384: $15
	ld   de, $1421                                   ; $5385: $11 $21 $14
	ld   b, l                                        ; $5388: $45
	cp   a                                           ; $5389: $bf
	rst  JumpTable                                         ; $538a: $df
	rst  $38                                         ; $538b: $ff
	rst  $38                                         ; $538c: $ff
	ld   [$55a5], a                                  ; $538d: $ea $a5 $55
	inc  de                                          ; $5390: $13
	ld   de, $1211                                   ; $5391: $11 $11 $12
	dec  [hl]                                        ; $5394: $35

Jump_0b5_5395:
	ld   a, h                                        ; $5395: $7c
	rst  JumpTable                                         ; $5396: $df
	rst  $38                                         ; $5397: $ff
	rst  $38                                         ; $5398: $ff
	ld   a, [$56a8]                                  ; $5399: $fa $a8 $56
	ld   b, c                                        ; $539c: $41
	ld   d, c                                        ; $539d: $51
	ld   de, $3512                                   ; $539e: $11 $12 $35
	ld   l, d                                        ; $53a1: $6a
	adc  $ff                                         ; $53a2: $ce $ff
	rst  $38                                         ; $53a4: $ff
	ei                                               ; $53a5: $fb
	xor  e                                           ; $53a6: $ab
	ld   h, [hl]                                     ; $53a7: $66
	add  d                                           ; $53a8: $82
	ld   b, l                                        ; $53a9: $45
	inc  de                                          ; $53aa: $13
	ld   hl, $5744                                   ; $53ab: $21 $44 $57
	sbc  d                                           ; $53ae: $9a
	call $defe                                       ; $53af: $cd $fe $de
	xor  d                                           ; $53b2: $aa
	cp   c                                           ; $53b3: $b9
	ld   l, c                                        ; $53b4: $69
	ld   h, e                                        ; $53b5: $63
	ld   d, e                                        ; $53b6: $53
	inc  hl                                          ; $53b7: $23
	ld   b, e                                        ; $53b8: $43
	ld   b, l                                        ; $53b9: $45
	ld   h, a                                        ; $53ba: $67
	sbc  e                                           ; $53bb: $9b
	cp   h                                           ; $53bc: $bc
	call c, $aabb                                    ; $53bd: $dc $bb $aa
	xor  c                                           ; $53c0: $a9
	adc  b                                           ; $53c1: $88
	ld   h, l                                        ; $53c2: $65
	ld   d, h                                        ; $53c3: $54
	ld   b, h                                        ; $53c4: $44
	ld   b, l                                        ; $53c5: $45
	ld   d, l                                        ; $53c6: $55
	ld   l, b                                        ; $53c7: $68
	sbc  d                                           ; $53c8: $9a
	cp   e                                           ; $53c9: $bb
	cp   e                                           ; $53ca: $bb
	cp   e                                           ; $53cb: $bb
	xor  d                                           ; $53cc: $aa
	xor  d                                           ; $53cd: $aa
	adc  b                                           ; $53ce: $88
	halt                                             ; $53cf: $76
	ld   h, [hl]                                     ; $53d0: $66
	ld   d, l                                        ; $53d1: $55
	ld   h, l                                        ; $53d2: $65
	ld   d, [hl]                                     ; $53d3: $56
	halt                                             ; $53d4: $76
	adc  b                                           ; $53d5: $88
	sbc  c                                           ; $53d6: $99
	cp   d                                           ; $53d7: $ba
	xor  d                                           ; $53d8: $aa
	sbc  c                                           ; $53d9: $99
	sbc  c                                           ; $53da: $99
	sbc  c                                           ; $53db: $99
	add  a                                           ; $53dc: $87
	ld   [hl], a                                     ; $53dd: $77
	ld   h, a                                        ; $53de: $67
	ld   h, l                                        ; $53df: $65
	ld   h, [hl]                                     ; $53e0: $66
	ld   h, a                                        ; $53e1: $67
	ld   [hl], a                                     ; $53e2: $77
	adc  b                                           ; $53e3: $88
	adc  c                                           ; $53e4: $89
	sbc  d                                           ; $53e5: $9a
	sbc  c                                           ; $53e6: $99
	xor  d                                           ; $53e7: $aa
	sbc  d                                           ; $53e8: $9a
	sbc  b                                           ; $53e9: $98
	sbc  b                                           ; $53ea: $98
	ld   a, b                                        ; $53eb: $78
	ld   [hl], a                                     ; $53ec: $77
	halt                                             ; $53ed: $76
	ld   h, [hl]                                     ; $53ee: $66
	ld   [hl], a                                     ; $53ef: $77
	ld   a, b                                        ; $53f0: $78
	ld   a, b                                        ; $53f1: $78
	sbc  b                                           ; $53f2: $98
	sbc  c                                           ; $53f3: $99
	xor  c                                           ; $53f4: $a9
	xor  c                                           ; $53f5: $a9
	xor  b                                           ; $53f6: $a8
	sbc  c                                           ; $53f7: $99
	add  a                                           ; $53f8: $87
	ld   [hl], a                                     ; $53f9: $77
	ld   [hl], a                                     ; $53fa: $77
	ld   [hl], a                                     ; $53fb: $77
	ld   [hl], a                                     ; $53fc: $77
	ld   [hl], a                                     ; $53fd: $77
	ld   a, b                                        ; $53fe: $78
	adc  b                                           ; $53ff: $88
	sbc  c                                           ; $5400: $99
	sbc  b                                           ; $5401: $98
	sbc  b                                           ; $5402: $98
	adc  c                                           ; $5403: $89
	adc  c                                           ; $5404: $89
	adc  c                                           ; $5405: $89
	adc  b                                           ; $5406: $88
	add  a                                           ; $5407: $87
	adc  b                                           ; $5408: $88
	adc  b                                           ; $5409: $88
	add  a                                           ; $540a: $87
	adc  b                                           ; $540b: $88
	adc  b                                           ; $540c: $88
	adc  b                                           ; $540d: $88
	adc  b                                           ; $540e: $88
	sbc  c                                           ; $540f: $99
	adc  c                                           ; $5410: $89
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
	adc  b                                           ; $54b9: $88
	adc  b                                           ; $54ba: $88
	adc  b                                           ; $54bb: $88
	adc  b                                           ; $54bc: $88
	adc  b                                           ; $54bd: $88
	adc  b                                           ; $54be: $88
	adc  b                                           ; $54bf: $88
	adc  b                                           ; $54c0: $88
	adc  b                                           ; $54c1: $88
	adc  b                                           ; $54c2: $88
	adc  b                                           ; $54c3: $88
	adc  b                                           ; $54c4: $88
	adc  b                                           ; $54c5: $88
	adc  b                                           ; $54c6: $88
	adc  b                                           ; $54c7: $88
	adc  b                                           ; $54c8: $88
	adc  b                                           ; $54c9: $88
	adc  b                                           ; $54ca: $88
	adc  b                                           ; $54cb: $88
	adc  b                                           ; $54cc: $88
	adc  b                                           ; $54cd: $88
	adc  b                                           ; $54ce: $88
	adc  b                                           ; $54cf: $88
	sbc  c                                           ; $54d0: $99
	adc  b                                           ; $54d1: $88
	adc  b                                           ; $54d2: $88
	adc  b                                           ; $54d3: $88
	adc  b                                           ; $54d4: $88
	adc  b                                           ; $54d5: $88
	adc  b                                           ; $54d6: $88
	adc  b                                           ; $54d7: $88
	adc  b                                           ; $54d8: $88
	adc  b                                           ; $54d9: $88
	sbc  b                                           ; $54da: $98
	adc  c                                           ; $54db: $89
	adc  b                                           ; $54dc: $88
	ld   a, b                                        ; $54dd: $78
	adc  b                                           ; $54de: $88
	adc  b                                           ; $54df: $88
	adc  b                                           ; $54e0: $88
	adc  b                                           ; $54e1: $88
	adc  b                                           ; $54e2: $88
	adc  b                                           ; $54e3: $88
	adc  b                                           ; $54e4: $88
	adc  c                                           ; $54e5: $89
	sbc  b                                           ; $54e6: $98
	adc  b                                           ; $54e7: $88
	adc  b                                           ; $54e8: $88
	adc  c                                           ; $54e9: $89
	adc  b                                           ; $54ea: $88
	ld   [hl], a                                     ; $54eb: $77
	adc  b                                           ; $54ec: $88
	adc  b                                           ; $54ed: $88
	adc  b                                           ; $54ee: $88
	adc  b                                           ; $54ef: $88
	adc  b                                           ; $54f0: $88
	adc  c                                           ; $54f1: $89
	adc  c                                           ; $54f2: $89
	adc  c                                           ; $54f3: $89
	adc  b                                           ; $54f4: $88
	adc  b                                           ; $54f5: $88
	sbc  c                                           ; $54f6: $99
	add  a                                           ; $54f7: $87
	ld   [hl], a                                     ; $54f8: $77
	ld   a, b                                        ; $54f9: $78
	adc  c                                           ; $54fa: $89
	adc  b                                           ; $54fb: $88
	add  a                                           ; $54fc: $87
	adc  b                                           ; $54fd: $88
	adc  c                                           ; $54fe: $89
	adc  b                                           ; $54ff: $88
	adc  b                                           ; $5500: $88
	xor  c                                           ; $5501: $a9
	ld   a, c                                        ; $5502: $79
	adc  b                                           ; $5503: $88
	ld   [hl], a                                     ; $5504: $77
	ld   [hl], a                                     ; $5505: $77
	add  a                                           ; $5506: $87
	ld   [hl], a                                     ; $5507: $77
	adc  b                                           ; $5508: $88
	adc  c                                           ; $5509: $89
	sbc  c                                           ; $550a: $99
	adc  b                                           ; $550b: $88
	adc  c                                           ; $550c: $89
	adc  b                                           ; $550d: $88
	sbc  b                                           ; $550e: $98
	sbc  b                                           ; $550f: $98
	adc  b                                           ; $5510: $88
	ld   [hl], a                                     ; $5511: $77
	ld   [hl], a                                     ; $5512: $77
	ld   [hl], a                                     ; $5513: $77
	adc  c                                           ; $5514: $89
	adc  b                                           ; $5515: $88
	sbc  c                                           ; $5516: $99
	adc  b                                           ; $5517: $88
	ld   a, c                                        ; $5518: $79
	sub  a                                           ; $5519: $97
	adc  c                                           ; $551a: $89
	sbc  b                                           ; $551b: $98
	adc  b                                           ; $551c: $88
	sbc  c                                           ; $551d: $99
	add  [hl]                                        ; $551e: $86
	ld   h, a                                        ; $551f: $67
	ld   [hl], a                                     ; $5520: $77
	adc  c                                           ; $5521: $89
	ld   a, b                                        ; $5522: $78
	sbc  c                                           ; $5523: $99
	sbc  d                                           ; $5524: $9a
	sbc  b                                           ; $5525: $98
	sub  a                                           ; $5526: $97
	sbc  c                                           ; $5527: $99
	sbc  d                                           ; $5528: $9a
	sbc  c                                           ; $5529: $99
	ld   [hl], a                                     ; $552a: $77
	ld   d, [hl]                                     ; $552b: $56
	add  [hl]                                        ; $552c: $86
	ld   h, a                                        ; $552d: $67
	ld   a, c                                        ; $552e: $79
	adc  b                                           ; $552f: $88
	sbc  d                                           ; $5530: $9a
	xor  c                                           ; $5531: $a9
	adc  b                                           ; $5532: $88
	adc  b                                           ; $5533: $88
	add  a                                           ; $5534: $87
	sbc  d                                           ; $5535: $9a
	xor  d                                           ; $5536: $aa
	sbc  e                                           ; $5537: $9b
	sub  a                                           ; $5538: $97
	ld   d, [hl]                                     ; $5539: $56
	sbc  b                                           ; $553a: $98
	adc  b                                           ; $553b: $88
	sbc  c                                           ; $553c: $99
	ld   a, c                                        ; $553d: $79
	sbc  d                                           ; $553e: $9a
	and  [hl]                                        ; $553f: $a6
	adc  d                                           ; $5540: $8a
	halt                                             ; $5541: $76
	xor  c                                           ; $5542: $a9
	ld   l, b                                        ; $5543: $68
	add  a                                           ; $5544: $87
	adc  d                                           ; $5545: $8a
	sub  a                                           ; $5546: $97
	add  [hl]                                        ; $5547: $86
	ld   d, a                                        ; $5548: $57
	sub  a                                           ; $5549: $97
	ld   a, c                                        ; $554a: $79
	cp   c                                           ; $554b: $b9
	add  [hl]                                        ; $554c: $86
	adc  e                                           ; $554d: $8b
	ld   c, b                                        ; $554e: $48
	cp   c                                           ; $554f: $b9
	ld   [hl], c                                     ; $5550: $71
	adc  d                                           ; $5551: $8a
	ld   h, l                                        ; $5552: $65
	ld   a, c                                        ; $5553: $79
	ld   l, c                                        ; $5554: $69
	ld   c, c                                        ; $5555: $49
	cp   c                                           ; $5556: $b9
	sub  a                                           ; $5557: $97
	ret  c                                           ; $5558: $d8

	sub  a                                           ; $5559: $97
	ld   l, h                                        ; $555a: $6c
	ld   h, a                                        ; $555b: $67
	sub  [hl]                                        ; $555c: $96
	sbc  e                                           ; $555d: $9b
	ld   l, d                                        ; $555e: $6a
	cp   c                                           ; $555f: $b9
	and  h                                           ; $5560: $a4
	ld   h, [hl]                                     ; $5561: $66
	ld   h, a                                        ; $5562: $67
	sub  a                                           ; $5563: $97
	ld   b, e                                        ; $5564: $43
	ld   l, b                                        ; $5565: $68
	ld   c, d                                        ; $5566: $4a
	adc  d                                           ; $5567: $8a
	ld   h, e                                        ; $5568: $63
	cp   e                                           ; $5569: $bb
	xor  c                                           ; $556a: $a9
	sbc  e                                           ; $556b: $9b
	add  l                                           ; $556c: $85
	adc  b                                           ; $556d: $88
	cp   h                                           ; $556e: $bc
	ld   a, e                                        ; $556f: $7b
	res  2, [hl]                                     ; $5570: $cb $96
	ld   a, l                                        ; $5572: $7d
	ld   a, d                                        ; $5573: $7a
	ld   [hl], h                                     ; $5574: $74
	and  e                                           ; $5575: $a3
	dec  [hl]                                        ; $5576: $35
	ld   d, l                                        ; $5577: $55
	ld   d, e                                        ; $5578: $53
	ld   [hl-], a                                    ; $5579: $32
	ld   b, a                                        ; $557a: $47
	ld   l, b                                        ; $557b: $68
	ld   a, b                                        ; $557c: $78
	adc  b                                           ; $557d: $88
	adc  c                                           ; $557e: $89
	sbc  d                                           ; $557f: $9a
	sbc  c                                           ; $5580: $99
	cp   c                                           ; $5581: $b9
	cp   d                                           ; $5582: $ba
	xor  e                                           ; $5583: $ab
	cp   d                                           ; $5584: $ba
	adc  b                                           ; $5585: $88
	ld   [hl], a                                     ; $5586: $77
	ld   h, l                                        ; $5587: $65
	ld   d, l                                        ; $5588: $55
	ld   b, h                                        ; $5589: $44
	ld   b, e                                        ; $558a: $43
	ld   l, b                                        ; $558b: $68
	ld   a, d                                        ; $558c: $7a
	cp   h                                           ; $558d: $bc
	cp   d                                           ; $558e: $ba
	xor  d                                           ; $558f: $aa
	cp   e                                           ; $5590: $bb
	cp   e                                           ; $5591: $bb
	jp   z, $1174                                    ; $5592: $ca $74 $11

	ld   de, $6835                                   ; $5595: $11 $35 $68
	adc  $fe                                         ; $5598: $ce $fe
	rst  $38                                         ; $559a: $ff
	xor  d                                           ; $559b: $aa
	xor  l                                           ; $559c: $ad
	rst  $38                                         ; $559d: $ff
	db   $ed                                         ; $559e: $ed
	reti                                             ; $559f: $d9


	ld   hl, $1111                                   ; $55a0: $21 $11 $11
	daa                                              ; $55a3: $27
	add  a                                           ; $55a4: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a5: $cf
	rst  $38                                         ; $55a6: $ff
	call z, Call_0b5_7fb9                            ; $55a7: $cc $b9 $7f
	rst  $38                                         ; $55aa: $ff
	ld   a, [$11b7]                                  ; $55ab: $fa $b7 $11
	ld   de, $4911                                   ; $55ae: $11 $11 $49
	rst  JumpTable                                         ; $55b1: $df
	rst  $38                                         ; $55b2: $ff
	rst  $38                                         ; $55b3: $ff
	cp   d                                           ; $55b4: $ba
	halt                                             ; $55b5: $76
	xor  a                                           ; $55b6: $af
	rst  $38                                         ; $55b7: $ff
	ei                                               ; $55b8: $fb
	and  d                                           ; $55b9: $a2
	ld   de, $1111                                   ; $55ba: $11 $11 $11
	sbc  h                                           ; $55bd: $9c
	rst  $38                                         ; $55be: $ff
	rst  $38                                         ; $55bf: $ff
	ld   sp, hl                                      ; $55c0: $f9
	adc  b                                           ; $55c1: $88
	ld   b, [hl]                                     ; $55c2: $46
	rst  $28                                         ; $55c3: $ef
	rst  $38                                         ; $55c4: $ff
	ld   [$1141], a                                  ; $55c5: $ea $41 $11
	ld   de, $ff17                                   ; $55c8: $11 $17 $ff
	rst  $38                                         ; $55cb: $ff
	rst  $38                                         ; $55cc: $ff
	add  c                                           ; $55cd: $81
	ld   [hl], l                                     ; $55ce: $75
	adc  d                                           ; $55cf: $8a
	rst  $38                                         ; $55d0: $ff
	db   $fd                                         ; $55d1: $fd
	ld   h, h                                        ; $55d2: $64
	ld   de, $1111                                   ; $55d3: $11 $11 $11
	ld   a, h                                        ; $55d6: $7c
	rst  $38                                         ; $55d7: $ff
	rst  $38                                         ; $55d8: $ff
	ld   a, [$4744]                                  ; $55d9: $fa $44 $47
	cp   a                                           ; $55dc: $bf
	rst  $38                                         ; $55dd: $ff
	rst  $30                                         ; $55de: $f7
	ld   hl, $1111                                   ; $55df: $21 $11 $11
	add  hl, de                                      ; $55e2: $19
	rst  $38                                         ; $55e3: $ff
	rst  $38                                         ; $55e4: $ff
	rst  $38                                         ; $55e5: $ff
	ld   d, c                                        ; $55e6: $51
	ld   d, l                                        ; $55e7: $55
	sbc  l                                           ; $55e8: $9d
	rst  $38                                         ; $55e9: $ff
	db   $fd                                         ; $55ea: $fd
	ld   h, d                                        ; $55eb: $62
	ld   de, $1111                                   ; $55ec: $11 $11 $11
	cp   a                                           ; $55ef: $bf
	rst  $38                                         ; $55f0: $ff
	rst  $38                                         ; $55f1: $ff
	ldh  a, [c]                                      ; $55f2: $f2
	ld   de, $ff9a                                   ; $55f3: $11 $9a $ff
	rst  $38                                         ; $55f6: $ff
	ld   [hl], c                                     ; $55f7: $71
	ld   de, $1111                                   ; $55f8: $11 $11 $11
	rra                                              ; $55fb: $1f
	rst  $38                                         ; $55fc: $ff
	rst  $38                                         ; $55fd: $ff
	or   $11                                         ; $55fe: $f6 $11
	ld   l, l                                        ; $5600: $6d
	cp   a                                           ; $5601: $bf
	rst  $38                                         ; $5602: $ff
	di                                               ; $5603: $f3
	ld   de, $1111                                   ; $5604: $11 $11 $11
	rra                                              ; $5607: $1f
	rst  $38                                         ; $5608: $ff
	rst  $38                                         ; $5609: $ff
	db   $fc                                         ; $560a: $fc
	ld   de, $cf17                                   ; $560b: $11 $17 $cf
	rst  $38                                         ; $560e: $ff
	ld   sp, hl                                      ; $560f: $f9
	ld   de, $1111                                   ; $5610: $11 $11 $11
	add  hl, de                                      ; $5613: $19
	rst  $38                                         ; $5614: $ff
	rst  $38                                         ; $5615: $ff
	rst  $38                                         ; $5616: $ff
	ld   de, $bf1b                                   ; $5617: $11 $1b $bf
	rst  $38                                         ; $561a: $ff
	rst  $30                                         ; $561b: $f7
	ld   de, $1111                                   ; $561c: $11 $11 $11
	add  hl, de                                      ; $561f: $19
	rst  $38                                         ; $5620: $ff
	rst  $38                                         ; $5621: $ff
	rst  $38                                         ; $5622: $ff
	ld   de, $ff15                                   ; $5623: $11 $15 $ff
	rst  $38                                         ; $5626: $ff
	ld   a, [$1111]                                  ; $5627: $fa $11 $11
	ld   de, $ff19                                   ; $562a: $11 $19 $ff
	rst  $38                                         ; $562d: $ff
	rst  $38                                         ; $562e: $ff
	ld   de, $ff19                                   ; $562f: $11 $19 $ff
	rst  $38                                         ; $5632: $ff
	ld   sp, hl                                      ; $5633: $f9
	ld   de, $1111                                   ; $5634: $11 $11 $11
	inc  de                                          ; $5637: $13
	rst  $38                                         ; $5638: $ff
	rst  $38                                         ; $5639: $ff
	rst  $38                                         ; $563a: $ff
	ld   de, $fe1f                                   ; $563b: $11 $1f $fe
	rst  $38                                         ; $563e: $ff
	cp   $11                                         ; $563f: $fe $11
	ld   de, $1d11                                   ; $5641: $11 $11 $1d
	rst  $38                                         ; $5644: $ff
	rst  $38                                         ; $5645: $ff
	rst  $38                                         ; $5646: $ff
	ld   de, $fe1f                                   ; $5647: $11 $1f $fe
	rst  $38                                         ; $564a: $ff
	ld   sp, hl                                      ; $564b: $f9
	ld   de, $1111                                   ; $564c: $11 $11 $11
	dec  d                                           ; $564f: $15
	rst  $38                                         ; $5650: $ff
	rst  $38                                         ; $5651: $ff
	rst  $38                                         ; $5652: $ff
	ld   de, $ff1c                                   ; $5653: $11 $1c $ff
	rst  $38                                         ; $5656: $ff
	ei                                               ; $5657: $fb
	ld   de, $1111                                   ; $5658: $11 $11 $11
	ld   de, $ffff                                   ; $565b: $11 $ff $ff
	rst  $38                                         ; $565e: $ff
	ld   hl, $ff1b                                   ; $565f: $21 $1b $ff
	rst  $38                                         ; $5662: $ff
	rst  $38                                         ; $5663: $ff
	ld   b, c                                        ; $5664: $41
	ld   de, $1111                                   ; $5665: $11 $11 $11
	rst  $38                                         ; $5668: $ff
	rst  $38                                         ; $5669: $ff
	rst  $38                                         ; $566a: $ff
	pop  de                                          ; $566b: $d1
	ld   d, $ff                                      ; $566c: $16 $ff
	rst  $38                                         ; $566e: $ff
	cp   $21                                         ; $566f: $fe $21
	ld   de, $1111                                   ; $5671: $11 $11 $11
	rst  $38                                         ; $5674: $ff
	rst  $38                                         ; $5675: $ff
	rst  $38                                         ; $5676: $ff
	ldh  a, [c]                                      ; $5677: $f2
	ld   de, $ffff                                   ; $5678: $11 $ff $ff
	rst  $38                                         ; $567b: $ff
	or   c                                           ; $567c: $b1
	ld   de, $1111                                   ; $567d: $11 $11 $11
	rra                                              ; $5680: $1f
	rst  $38                                         ; $5681: $ff
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	ld   de, $ffcf                                   ; $5684: $11 $cf $ff
	rst  $38                                         ; $5687: $ff
	cp   $21                                         ; $5688: $fe $21
	ld   de, $1111                                   ; $568a: $11 $11 $11
	rst  $38                                         ; $568d: $ff
	rst  $38                                         ; $568e: $ff
	rst  $38                                         ; $568f: $ff
	sub  c                                           ; $5690: $91
	rra                                              ; $5691: $1f
	rst  $38                                         ; $5692: $ff
	rst  $38                                         ; $5693: $ff
	ld   hl, sp+$11                                  ; $5694: $f8 $11
	ld   de, $1111                                   ; $5696: $11 $11 $11
	rst  $38                                         ; $5699: $ff
	rst  $38                                         ; $569a: $ff
	rst  $38                                         ; $569b: $ff
	pop  af                                          ; $569c: $f1
	dec  d                                           ; $569d: $15
	rst  $38                                         ; $569e: $ff
	rst  $38                                         ; $569f: $ff
	rst  $38                                         ; $56a0: $ff
	pop  bc                                          ; $56a1: $c1
	ld   de, $1111                                   ; $56a2: $11 $11 $11
	rra                                              ; $56a5: $1f
	rst  $38                                         ; $56a6: $ff
	rst  $38                                         ; $56a7: $ff
	rst  $38                                         ; $56a8: $ff
	ld   de, $ffbf                                   ; $56a9: $11 $bf $ff
	rst  $38                                         ; $56ac: $ff
	db   $fc                                         ; $56ad: $fc
	ld   de, $1111                                   ; $56ae: $11 $11 $11
	ld   de, $ffff                                   ; $56b1: $11 $ff $ff
	rst  $38                                         ; $56b4: $ff
	pop  af                                          ; $56b5: $f1
	rra                                              ; $56b6: $1f
	rst  $38                                         ; $56b7: $ff
	rst  $38                                         ; $56b8: $ff
	rst  $38                                         ; $56b9: $ff
	ld   h, c                                        ; $56ba: $61
	ld   de, $1111                                   ; $56bb: $11 $11 $11
	rst  $38                                         ; $56be: $ff
	rst  $38                                         ; $56bf: $ff
	rst  $38                                         ; $56c0: $ff
	push af                                          ; $56c1: $f5
	inc  de                                          ; $56c2: $13
	rst  $38                                         ; $56c3: $ff
	rst  $38                                         ; $56c4: $ff
	rst  $38                                         ; $56c5: $ff
	di                                               ; $56c6: $f3
	ld   [de], a                                     ; $56c7: $12
	ld   de, $1f11                                   ; $56c8: $11 $11 $1f
	rst  $38                                         ; $56cb: $ff
	cp   a                                           ; $56cc: $bf
	rst  $38                                         ; $56cd: $ff
	ld   de, $ffcf                                   ; $56ce: $11 $cf $ff
	rst  $38                                         ; $56d1: $ff
	ld   sp, hl                                      ; $56d2: $f9
	ld   de, $1111                                   ; $56d3: $11 $11 $11
	dec  de                                          ; $56d6: $1b
	rst  $38                                         ; $56d7: $ff
	db   $fc                                         ; $56d8: $fc
	rst  $38                                         ; $56d9: $ff
	pop  af                                          ; $56da: $f1
	ld   a, [de]                                     ; $56db: $1a
	rst  $38                                         ; $56dc: $ff
	rst  $38                                         ; $56dd: $ff
	rst  $38                                         ; $56de: $ff
	ld   de, $1111                                   ; $56df: $11 $11 $11
	ld   de, $ffff                                   ; $56e2: $11 $ff $ff
	rst  $38                                         ; $56e5: $ff
	or   $16                                         ; $56e6: $f6 $16
	rst  JumpTable                                         ; $56e8: $df
	rst  $38                                         ; $56e9: $ff
	rst  $38                                         ; $56ea: $ff
	ldh  a, [c]                                      ; $56eb: $f2
	ld   de, $1111                                   ; $56ec: $11 $11 $11
	rra                                              ; $56ef: $1f
	rst  $38                                         ; $56f0: $ff
	rst  $38                                         ; $56f1: $ff
	rst  $38                                         ; $56f2: $ff
	ld   de, $ffaf                                   ; $56f3: $11 $af $ff
	rst  $38                                         ; $56f6: $ff
	ld   sp, hl                                      ; $56f7: $f9
	inc  de                                          ; $56f8: $13
	ld   de, $1f11                                   ; $56f9: $11 $11 $1f
	rst  $38                                         ; $56fc: $ff
	db   $fd                                         ; $56fd: $fd
	rst  $38                                         ; $56fe: $ff
	pop  af                                          ; $56ff: $f1
	dec  e                                           ; $5700: $1d
	rst  $38                                         ; $5701: $ff
	rst  $38                                         ; $5702: $ff
	rst  $38                                         ; $5703: $ff
	ld   hl, $1111                                   ; $5704: $21 $11 $11
	ld   de, $fcff                                   ; $5707: $11 $ff $fc
	rst  $38                                         ; $570a: $ff
	pop  af                                          ; $570b: $f1
	ld   a, [de]                                     ; $570c: $1a
	rst  $38                                         ; $570d: $ff
	rst  $38                                         ; $570e: $ff
	rst  $38                                         ; $570f: $ff
	pop  af                                          ; $5710: $f1
	ld   de, $1111                                   ; $5711: $11 $11 $11
	ld   a, a                                        ; $5714: $7f
	rst  $38                                         ; $5715: $ff
	rst  $28                                         ; $5716: $ef
	db   $fd                                         ; $5717: $fd
	ld   de, $ffef                                   ; $5718: $11 $ef $ff
	rst  $38                                         ; $571b: $ff
	push af                                          ; $571c: $f5
	ld   de, $1111                                   ; $571d: $11 $11 $11
	rra                                              ; $5720: $1f
	rst  $38                                         ; $5721: $ff
	xor  a                                           ; $5722: $af
	rst  $38                                         ; $5723: $ff
	ld   b, c                                        ; $5724: $41
	xor  [hl]                                        ; $5725: $ae
	rst  $38                                         ; $5726: $ff
	rst  $38                                         ; $5727: $ff
	rst  $38                                         ; $5728: $ff
	ld   hl, $1111                                   ; $5729: $21 $11 $11
	add  hl, de                                      ; $572c: $19
	rst  $38                                         ; $572d: $ff
	or   $ff                                         ; $572e: $f6 $ff
	pop  af                                          ; $5730: $f1
	jr   @+$01                                       ; $5731: $18 $ff

	rst  $38                                         ; $5733: $ff
	rst  $38                                         ; $5734: $ff
	sub  c                                           ; $5735: $91
	ld   de, $1111                                   ; $5736: $11 $11 $11
	rst  $38                                         ; $5739: $ff
	rst  $38                                         ; $573a: $ff
	rst  $28                                         ; $573b: $ef
	push af                                          ; $573c: $f5
	inc  d                                           ; $573d: $14
	sbc  a                                           ; $573e: $9f
	rst  $38                                         ; $573f: $ff
	rst  $38                                         ; $5740: $ff
	db   $f4                                         ; $5741: $f4
	ld   sp, $1111                                   ; $5742: $31 $11 $11
	rra                                              ; $5745: $1f
	rst  $38                                         ; $5746: $ff
	rst  $38                                         ; $5747: $ff
	rst  $38                                         ; $5748: $ff
	ld   de, $ffaf                                   ; $5749: $11 $af $ff
	rst  $38                                         ; $574c: $ff
	ld   a, [$1125]                                  ; $574d: $fa $25 $11
	ld   de, $ff1f                                   ; $5750: $11 $1f $ff
	rst  $38                                         ; $5753: $ff
	rst  $38                                         ; $5754: $ff
	ld   [hl], c                                     ; $5755: $71
	ld   l, [hl]                                     ; $5756: $6e
	rst  $38                                         ; $5757: $ff
	rst  $38                                         ; $5758: $ff
	rst  $38                                         ; $5759: $ff
	ld   h, [hl]                                     ; $575a: $66
	ld   de, $1111                                   ; $575b: $11 $11 $11
	rst  $38                                         ; $575e: $ff
	rst  JumpTable                                         ; $575f: $df
	rst  $38                                         ; $5760: $ff
	pop  af                                          ; $5761: $f1
	inc  e                                           ; $5762: $1c
	xor  a                                           ; $5763: $af
	rst  $38                                         ; $5764: $ff
	rst  $38                                         ; $5765: $ff
	or   l                                           ; $5766: $b5
	ld   d, c                                        ; $5767: $51
	ld   de, rAUD1LEN                                   ; $5768: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $576b: $cf
	rst  $38                                         ; $576c: $ff
	push af                                          ; $576d: $f5
	add  hl, de                                      ; $576e: $19
	call z, $ffff                                    ; $576f: $cc $ff $ff
	ld   hl, sp+$64                                  ; $5772: $f8 $64
	ld   de, $1f11                                   ; $5774: $11 $11 $1f
	cp   $bf                                         ; $5777: $fe $bf
	cp   $12                                         ; $5779: $fe $12
	rst  $38                                         ; $577b: $ff
	rst  JumpTable                                         ; $577c: $df
	rst  $38                                         ; $577d: $ff
	ld   a, [$215a]                                  ; $577e: $fa $5a $21
	ld   de, $f61f                                   ; $5781: $11 $1f $f6
	rst  $38                                         ; $5784: $ff
	rst  $38                                         ; $5785: $ff
	ld   h, d                                        ; $5786: $62
	sbc  e                                           ; $5787: $9b
	ld   a, a                                        ; $5788: $7f
	rst  $38                                         ; $5789: $ff
	rst  $38                                         ; $578a: $ff
	cp   b                                           ; $578b: $b8
	ld   b, c                                        ; $578c: $41
	ld   de, $fa11                                   ; $578d: $11 $11 $fa
	xor  a                                           ; $5790: $af
	rst  $38                                         ; $5791: $ff
	ldh  [c], a                                      ; $5792: $e2
	ld   c, a                                        ; $5793: $4f
	xor  e                                           ; $5794: $ab
	rst  $38                                         ; $5795: $ff
	rst  $38                                         ; $5796: $ff
	cp   b                                           ; $5797: $b8
	or   d                                           ; $5798: $b2
	ld   de, $7711                                   ; $5799: $11 $11 $77
	adc  l                                           ; $579c: $8d
	rst  $38                                         ; $579d: $ff
	rst  $10                                         ; $579e: $d7
	ld   l, a                                        ; $579f: $6f
	add  $cf                                         ; $57a0: $c6 $cf
	rst  $38                                         ; $57a2: $ff
	ld   a, [$11e9]                                  ; $57a3: $fa $e9 $11
	ld   de, $2b15                                   ; $57a6: $11 $15 $2b
	rst  $38                                         ; $57a9: $ff
	ld   a, [$d87d]                                  ; $57aa: $fa $7d $d8
	ld   a, a                                        ; $57ad: $7f
	rst  $38                                         ; $57ae: $ff
	db   $fc                                         ; $57af: $fc
	call $1121                                       ; $57b0: $cd $21 $11
	inc  de                                          ; $57b3: $13
	ld   d, $ff                                      ; $57b4: $16 $ff
	ei                                               ; $57b6: $fb
	sbc  l                                           ; $57b7: $9d
	rst  $20                                         ; $57b8: $e7
	adc  h                                           ; $57b9: $8c
	rst  $38                                         ; $57ba: $ff
	rst  $38                                         ; $57bb: $ff
	xor  $61                                         ; $57bc: $ee $61
	ld   de, $2111                                   ; $57be: $11 $11 $21
	xor  a                                           ; $57c1: $af
	db   $fc                                         ; $57c2: $fc
	cp   d                                           ; $57c3: $ba
	jp   hl                                          ; $57c4: $e9


	ld   e, c                                        ; $57c5: $59
	rst  $28                                         ; $57c6: $ef
	rst  $38                                         ; $57c7: $ff
	rst  $38                                         ; $57c8: $ff
	call nz, $1111                                   ; $57c9: $c4 $11 $11
	ld   de, $bb49                                   ; $57cc: $11 $49 $bb
	cp   d                                           ; $57cf: $ba
	sbc  e                                           ; $57d0: $9b
	ld   a, c                                        ; $57d1: $79
	xor  [hl]                                        ; $57d2: $ae
	rst  $38                                         ; $57d3: $ff
	rst  $38                                         ; $57d4: $ff
	ld   a, [$1162]                                  ; $57d5: $fa $62 $11
	ld   de, $6812                                   ; $57d8: $11 $12 $68
	adc  c                                           ; $57db: $89
	sbc  b                                           ; $57dc: $98
	or   a                                           ; $57dd: $b7
	adc  c                                           ; $57de: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57df: $cf
	rst  $38                                         ; $57e0: $ff
	rst  $38                                         ; $57e1: $ff
	reti                                             ; $57e2: $d9


	ld   h, [hl]                                     ; $57e3: $66
	ld   b, c                                        ; $57e4: $41
	ld   de, $4513                                   ; $57e5: $11 $13 $45
	ld   h, a                                        ; $57e8: $67
	ld   [hl], a                                     ; $57e9: $77
	ld   a, b                                        ; $57ea: $78
	sbc  e                                           ; $57eb: $9b
	sbc  $ef                                         ; $57ec: $de $ef
	cp   $dc                                         ; $57ee: $fe $dc
	and  a                                           ; $57f0: $a7
	ld   b, d                                        ; $57f1: $42
	ld   hl, $2312                                   ; $57f2: $21 $12 $23
	ld   b, [hl]                                     ; $57f5: $46
	ld   h, a                                        ; $57f6: $67
	ld   a, c                                        ; $57f7: $79
	xor  e                                           ; $57f8: $ab
	adc  $ff                                         ; $57f9: $ce $ff
	cp   $dc                                         ; $57fb: $fe $dc
	and  a                                           ; $57fd: $a7
	ld   b, e                                        ; $57fe: $43
	ld   de, $2311                                   ; $57ff: $11 $11 $23
	ld   b, h                                        ; $5802: $44
	ld   d, [hl]                                     ; $5803: $56
	adc  c                                           ; $5804: $89
	xor  e                                           ; $5805: $ab
	rst  $28                                         ; $5806: $ef
	rst  $38                                         ; $5807: $ff
	db   $fd                                         ; $5808: $fd
	call c, Call_0b5_63b8                            ; $5809: $dc $b8 $63
	ld   [hl+], a                                    ; $580c: $22
	ld   [hl+], a                                    ; $580d: $22
	inc  hl                                          ; $580e: $23
	inc  [hl]                                        ; $580f: $34
	ld   d, [hl]                                     ; $5810: $56
	ld   l, b                                        ; $5811: $68
	xor  e                                           ; $5812: $ab
	call $feff                                       ; $5813: $cd $ff $fe
	db   $dd                                         ; $5816: $dd
	xor  c                                           ; $5817: $a9
	ld   h, h                                        ; $5818: $64
	ld   b, e                                        ; $5819: $43
	ld   [hl+], a                                    ; $581a: $22
	ld   [hl+], a                                    ; $581b: $22
	inc  [hl]                                        ; $581c: $34
	ld   b, l                                        ; $581d: $45
	ld   h, a                                        ; $581e: $67
	sbc  d                                           ; $581f: $9a
	cp   l                                           ; $5820: $bd
	xor  $ee                                         ; $5821: $ee $ee
	call z, $86b9                                    ; $5823: $cc $b9 $86
	ld   d, h                                        ; $5826: $54
	inc  sp                                          ; $5827: $33
	inc  sp                                          ; $5828: $33
	inc  [hl]                                        ; $5829: $34
	ld   b, h                                        ; $582a: $44
	ld   h, a                                        ; $582b: $67
	ld   a, c                                        ; $582c: $79
	xor  h                                           ; $582d: $ac
	sbc  $ed                                         ; $582e: $de $ed
	res  5, d                                        ; $5830: $cb $aa
	sbc  b                                           ; $5832: $98
	ld   [hl], l                                     ; $5833: $75
	ld   d, l                                        ; $5834: $55
	ld   b, e                                        ; $5835: $43
	ld   b, h                                        ; $5836: $44
	ld   b, l                                        ; $5837: $45
	ld   d, l                                        ; $5838: $55
	ld   h, a                                        ; $5839: $67
	sbc  d                                           ; $583a: $9a
	cp   l                                           ; $583b: $bd
	call c, $cbdc                                    ; $583c: $dc $dc $cb
	xor  d                                           ; $583f: $aa
	sbc  b                                           ; $5840: $98
	ld   h, [hl]                                     ; $5841: $66
	ld   d, h                                        ; $5842: $54
	ld   b, h                                        ; $5843: $44
	ld   b, h                                        ; $5844: $44
	ld   b, l                                        ; $5845: $45
	ld   d, [hl]                                     ; $5846: $56
	ld   a, b                                        ; $5847: $78
	adc  c                                           ; $5848: $89
	xor  h                                           ; $5849: $ac
	cp   h                                           ; $584a: $bc
	cp   d                                           ; $584b: $ba
	cp   d                                           ; $584c: $ba
	sbc  c                                           ; $584d: $99
	adc  b                                           ; $584e: $88
	ld   h, [hl]                                     ; $584f: $66
	ld   h, l                                        ; $5850: $65
	ld   d, l                                        ; $5851: $55
	ld   d, l                                        ; $5852: $55
	ld   d, [hl]                                     ; $5853: $56
	ld   h, [hl]                                     ; $5854: $66
	ld   a, b                                        ; $5855: $78
	sbc  c                                           ; $5856: $99
	sbc  e                                           ; $5857: $9b
	xor  e                                           ; $5858: $ab
	cp   e                                           ; $5859: $bb
	xor  c                                           ; $585a: $a9
	xor  d                                           ; $585b: $aa
	xor  d                                           ; $585c: $aa
	sbc  b                                           ; $585d: $98
	halt                                             ; $585e: $76
	ld   d, l                                        ; $585f: $55
	ld   d, l                                        ; $5860: $55
	ld   h, [hl]                                     ; $5861: $66
	ld   h, [hl]                                     ; $5862: $66
	ld   [hl], a                                     ; $5863: $77
	adc  b                                           ; $5864: $88
	sbc  d                                           ; $5865: $9a
	xor  c                                           ; $5866: $a9
	sbc  c                                           ; $5867: $99
	xor  c                                           ; $5868: $a9
	adc  b                                           ; $5869: $88
	add  a                                           ; $586a: $87
	add  a                                           ; $586b: $87
	ld   [hl], a                                     ; $586c: $77
	halt                                             ; $586d: $76
	ld   h, [hl]                                     ; $586e: $66
	ld   h, a                                        ; $586f: $67
	ld   [hl], a                                     ; $5870: $77
	ld   [hl], a                                     ; $5871: $77
	adc  b                                           ; $5872: $88
	sbc  b                                           ; $5873: $98
	sbc  c                                           ; $5874: $99
	sbc  d                                           ; $5875: $9a
	xor  d                                           ; $5876: $aa
	xor  c                                           ; $5877: $a9
	sbc  b                                           ; $5878: $98
	adc  b                                           ; $5879: $88
	ld   [hl], a                                     ; $587a: $77
	ld   a, b                                        ; $587b: $78
	adc  b                                           ; $587c: $88
	ld   [hl], a                                     ; $587d: $77
	ld   [hl], a                                     ; $587e: $77
	ld   [hl], a                                     ; $587f: $77
	ld   [hl], a                                     ; $5880: $77
	ld   [hl], a                                     ; $5881: $77
	ld   [hl], a                                     ; $5882: $77
	adc  b                                           ; $5883: $88
	adc  b                                           ; $5884: $88
	adc  c                                           ; $5885: $89
	sbc  b                                           ; $5886: $98
	adc  b                                           ; $5887: $88
	sbc  c                                           ; $5888: $99
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
	adc  c                                           ; $5961: $89
	sbc  b                                           ; $5962: $98
	adc  c                                           ; $5963: $89
	xor  [hl]                                        ; $5964: $ae
	call nz, $c738                                   ; $5965: $c4 $38 $c7
	ld   e, e                                        ; $5968: $5b
	xor  b                                           ; $5969: $a8
	xor  h                                           ; $596a: $ac
	ld   [hl], c                                     ; $596b: $71
	ld   c, a                                        ; $596c: $4f
	pop  af                                          ; $596d: $f1
	ld   e, $f8                                      ; $596e: $1e $f8
	ld   de, $61ff                                   ; $5970: $11 $ff $61
	ld   l, $f5                                      ; $5973: $2e $f5
	ld   a, [hl+]                                    ; $5975: $2a
	rst  $38                                         ; $5976: $ff
	ld   h, c                                        ; $5977: $61
	ld   a, d                                        ; $5978: $7a
	and  l                                           ; $5979: $a5
	add  hl, hl                                      ; $597a: $29
	ld   sp, hl                                      ; $597b: $f9
	inc  d                                           ; $597c: $14
	rst  $38                                         ; $597d: $ff
	dec  [hl]                                        ; $597e: $35
	reti                                             ; $597f: $d9


	inc  h                                           ; $5980: $24
	xor  c                                           ; $5981: $a9
	ld   d, e                                        ; $5982: $53
	ld   h, a                                        ; $5983: $67
	ld   b, e                                        ; $5984: $43
	ld   d, a                                        ; $5985: $57
	ld   a, c                                        ; $5986: $79
	sbc  d                                           ; $5987: $9a
	ld   [hl], a                                     ; $5988: $77
	rst  $28                                         ; $5989: $ef
	db   $ed                                         ; $598a: $ed
	jp   hl                                          ; $598b: $e9


	ld   de, $1188                                   ; $598c: $11 $88 $11
	rst  $38                                         ; $598f: $ff
	sub  c                                           ; $5990: $91
	ld   e, l                                        ; $5991: $5d
	ld   [hl], c                                     ; $5992: $71
	ld   e, [hl]                                     ; $5993: $5e
	rst  $20                                         ; $5994: $e7
	ld   l, c                                        ; $5995: $69
	rst  ToBoot                                         ; $5996: $c7
	ld   d, a                                        ; $5997: $57
	ld   l, b                                        ; $5998: $68
	ld   a, b                                        ; $5999: $78
	xor  c                                           ; $599a: $a9
	ld   a, b                                        ; $599b: $78
	add  a                                           ; $599c: $87
	ld   h, l                                        ; $599d: $65
	halt                                             ; $599e: $76
	dec  [hl]                                        ; $599f: $35
	ld   h, [hl]                                     ; $59a0: $66

jr_0b5_59a1:
	ld   d, l                                        ; $59a1: $55
	ld   d, [hl]                                     ; $59a2: $56
	ld   b, l                                        ; $59a3: $45
	adc  c                                           ; $59a4: $89
	sbc  d                                           ; $59a5: $9a
	sbc  $cd                                         ; $59a6: $de $cd
	db   $dd                                         ; $59a8: $dd
	jp   z, Jump_0b5_52a9                            ; $59a9: $ca $a9 $52

	inc  hl                                          ; $59ac: $23

jr_0b5_59ad:
	ld   de, $1111                                   ; $59ad: $11 $11 $11
	jr   jr_0b5_59a1                                 ; $59b0: $18 $ef

	rst  $38                                         ; $59b2: $ff
	rst  $38                                         ; $59b3: $ff
	rst  $38                                         ; $59b4: $ff
	db   $fd                                         ; $59b5: $fd
	rst  $28                                         ; $59b6: $ef
	res  0, c                                        ; $59b7: $cb $81
	ld   de, $1111                                   ; $59b9: $11 $11 $11
	jr   jr_0b5_59ad                                 ; $59bc: $18 $ef

	rst  $38                                         ; $59be: $ff
	rst  $38                                         ; $59bf: $ff
	db   $fd                                         ; $59c0: $fd
	call c, $feff                                    ; $59c1: $dc $ff $fe
	and  [hl]                                        ; $59c4: $a6
	ld   de, $1111                                   ; $59c5: $11 $11 $11
	ld   de, $ff6f                                   ; $59c8: $11 $6f $ff
	rst  $38                                         ; $59cb: $ff
	rst  $38                                         ; $59cc: $ff
	xor  c                                           ; $59cd: $a9
	rst  JumpTable                                         ; $59ce: $df
	rst  $38                                         ; $59cf: $ff
	cp   $81                                         ; $59d0: $fe $81
	ld   de, $1111                                   ; $59d2: $11 $11 $11
	ld   d, $ff                                      ; $59d5: $16 $ff
	rst  $38                                         ; $59d7: $ff
	rst  $38                                         ; $59d8: $ff
	or   $5a                                         ; $59d9: $f6 $5a
	rst  $38                                         ; $59db: $ff
	rst  $38                                         ; $59dc: $ff
	ld   hl, sp+$11                                  ; $59dd: $f8 $11
	ld   de, $1211                                   ; $59df: $11 $11 $12
	cp   a                                           ; $59e2: $bf
	rst  $38                                         ; $59e3: $ff
	rst  $38                                         ; $59e4: $ff
	rst  $38                                         ; $59e5: $ff
	ld   [hl-], a                                    ; $59e6: $32
	ld   c, a                                        ; $59e7: $4f
	rst  $38                                         ; $59e8: $ff
	cp   $61                                         ; $59e9: $fe $61
	ld   de, $1111                                   ; $59eb: $11 $11 $11
	ld   l, e                                        ; $59ee: $6b
	rst  $38                                         ; $59ef: $ff
	rst  $38                                         ; $59f0: $ff
	ld   a, [$1591]                                  ; $59f1: $fa $91 $15
	rst  $38                                         ; $59f4: $ff
	rst  $38                                         ; $59f5: $ff
	or   e                                           ; $59f6: $b3
	ld   de, $1111                                   ; $59f7: $11 $11 $11
	ld   l, h                                        ; $59fa: $6c
	rst  $38                                         ; $59fb: $ff
	rst  $38                                         ; $59fc: $ff
	rst  $38                                         ; $59fd: $ff
	inc  hl                                          ; $59fe: $23
	ld   de, $ff6f                                   ; $59ff: $11 $6f $ff
	ld   hl, sp+$11                                  ; $5a02: $f8 $11
	ld   de, $1a11                                   ; $5a04: $11 $11 $1a
	rst  $38                                         ; $5a07: $ff
	rst  $38                                         ; $5a08: $ff
	rst  $38                                         ; $5a09: $ff
	ld   h, c                                        ; $5a0a: $61
	ld   de, $ff4c                                   ; $5a0b: $11 $4c $ff
	rst  $38                                         ; $5a0e: $ff
	ld   sp, $1111                                   ; $5a0f: $31 $11 $11
	ld   de, $ffef                                   ; $5a12: $11 $ef $ff
	rst  $38                                         ; $5a15: $ff
	di                                               ; $5a16: $f3
	ld   de, $ff18                                   ; $5a17: $11 $18 $ff
	rst  $38                                         ; $5a1a: $ff
	pop  af                                          ; $5a1b: $f1
	ld   de, $1111                                   ; $5a1c: $11 $11 $11
	rra                                              ; $5a1f: $1f
	rst  $38                                         ; $5a20: $ff
	rst  $38                                         ; $5a21: $ff
	rst  $38                                         ; $5a22: $ff
	ld   de, $cf11                                   ; $5a23: $11 $11 $cf
	rst  $38                                         ; $5a26: $ff
	ei                                               ; $5a27: $fb
	ld   de, $1111                                   ; $5a28: $11 $11 $11
	ld   de, $ffff                                   ; $5a2b: $11 $ff $ff
	rst  $38                                         ; $5a2e: $ff
	pop  hl                                          ; $5a2f: $e1
	ld   de, $ff5f                                   ; $5a30: $11 $5f $ff
	rst  $38                                         ; $5a33: $ff
	ld   [hl], c                                     ; $5a34: $71
	ld   de, $1111                                   ; $5a35: $11 $11 $11
	rra                                              ; $5a38: $1f
	rst  $38                                         ; $5a39: $ff
	rst  $38                                         ; $5a3a: $ff
	ld   a, [$1b11]                                  ; $5a3b: $fa $11 $1b
	rst  $38                                         ; $5a3e: $ff
	rst  $38                                         ; $5a3f: $ff
	ldh  a, [c]                                      ; $5a40: $f2
	ld   de, $1111                                   ; $5a41: $11 $11 $11
	ld   de, $ffff                                   ; $5a44: $11 $ff $ff
	rst  $38                                         ; $5a47: $ff
	ld   b, c                                        ; $5a48: $41
	inc  de                                          ; $5a49: $13
	rst  JumpTable                                         ; $5a4a: $df
	rst  $38                                         ; $5a4b: $ff
	rst  $38                                         ; $5a4c: $ff
	ld   de, $1111                                   ; $5a4d: $11 $11 $11
	ld   de, $ff3f                                   ; $5a50: $11 $3f $ff
	rst  $38                                         ; $5a53: $ff
	ldh  a, [c]                                      ; $5a54: $f2
	ld   de, $ffaf                                   ; $5a55: $11 $af $ff
	rst  $38                                         ; $5a58: $ff
	pop  af                                          ; $5a59: $f1
	ld   de, $1111                                   ; $5a5a: $11 $11 $11
	dec  de                                          ; $5a5d: $1b
	rst  $38                                         ; $5a5e: $ff
	rst  $38                                         ; $5a5f: $ff
	rst  $38                                         ; $5a60: $ff
	ld   de, $ff19                                   ; $5a61: $11 $19 $ff
	rst  $38                                         ; $5a64: $ff
	db   $fc                                         ; $5a65: $fc
	ld   de, $1111                                   ; $5a66: $11 $11 $11
	ld   de, $ffcf                                   ; $5a69: $11 $cf $ff
	rst  $38                                         ; $5a6c: $ff
	pop  af                                          ; $5a6d: $f1
	ld   de, $ff9f                                   ; $5a6e: $11 $9f $ff
	rst  $38                                         ; $5a71: $ff
	sub  c                                           ; $5a72: $91
	ld   de, $1111                                   ; $5a73: $11 $11 $11
	ld   e, $ff                                      ; $5a76: $1e $ff
	rst  $38                                         ; $5a78: $ff
	rst  $38                                         ; $5a79: $ff
	ld   de, $ff1d                                   ; $5a7a: $11 $1d $ff
	rst  $38                                         ; $5a7d: $ff
	ld   a, [$1111]                                  ; $5a7e: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $5a81: $11 $11 $ff
	rst  $38                                         ; $5a84: $ff
	rst  $38                                         ; $5a85: $ff
	pop  af                                          ; $5a86: $f1
	ld   de, $ffcf                                   ; $5a87: $11 $cf $ff
	rst  $38                                         ; $5a8a: $ff
	ld   [hl], c                                     ; $5a8b: $71
	ld   de, $1111                                   ; $5a8c: $11 $11 $11
	rra                                              ; $5a8f: $1f
	rst  $38                                         ; $5a90: $ff
	rst  $38                                         ; $5a91: $ff
	db   $fc                                         ; $5a92: $fc
	ld   de, $ff1b                                   ; $5a93: $11 $1b $ff
	rst  $38                                         ; $5a96: $ff
	db   $f4                                         ; $5a97: $f4
	ld   de, $1111                                   ; $5a98: $11 $11 $11
	ld   de, $ffff                                   ; $5a9b: $11 $ff $ff
	rst  $38                                         ; $5a9e: $ff
	pop  de                                          ; $5a9f: $d1
	ld   de, $ffff                                   ; $5aa0: $11 $ff $ff
	rst  $38                                         ; $5aa3: $ff
	ld   de, $1111                                   ; $5aa4: $11 $11 $11
	ld   de, $ff1f                                   ; $5aa7: $11 $1f $ff
	rst  $38                                         ; $5aaa: $ff
	rst  $38                                         ; $5aab: $ff
	ld   de, $ff1b                                   ; $5aac: $11 $1b $ff
	rst  $38                                         ; $5aaf: $ff
	db   $f4                                         ; $5ab0: $f4
	ld   de, $1111                                   ; $5ab1: $11 $11 $11
	ld   de, $ffff                                   ; $5ab4: $11 $ff $ff
	rst  $38                                         ; $5ab7: $ff
	pop  af                                          ; $5ab8: $f1
	ld   de, $ff9f                                   ; $5ab9: $11 $9f $ff
	rst  $38                                         ; $5abc: $ff
	add  c                                           ; $5abd: $81
	ld   de, $1111                                   ; $5abe: $11 $11 $11
	rra                                              ; $5ac1: $1f
	rst  $38                                         ; $5ac2: $ff
	rst  $38                                         ; $5ac3: $ff
	rst  $38                                         ; $5ac4: $ff
	ld   de, $ff16                                   ; $5ac5: $11 $16 $ff
	rst  $38                                         ; $5ac8: $ff
	db   $fc                                         ; $5ac9: $fc
	ld   de, $1111                                   ; $5aca: $11 $11 $11
	ld   de, $ffff                                   ; $5acd: $11 $ff $ff
	rst  $38                                         ; $5ad0: $ff
	pop  af                                          ; $5ad1: $f1
	ld   de, $ff7f                                   ; $5ad2: $11 $7f $ff
	rst  $38                                         ; $5ad5: $ff
	sub  c                                           ; $5ad6: $91
	ld   de, $1111                                   ; $5ad7: $11 $11 $11
	rra                                              ; $5ada: $1f
	rst  $38                                         ; $5adb: $ff
	rst  $38                                         ; $5adc: $ff
	rst  $38                                         ; $5add: $ff
	ld   de, $df14                                   ; $5ade: $11 $14 $df
	rst  $38                                         ; $5ae1: $ff
	ei                                               ; $5ae2: $fb
	ld   de, $1111                                   ; $5ae3: $11 $11 $11
	ld   de, $ffff                                   ; $5ae6: $11 $ff $ff
	rst  $38                                         ; $5ae9: $ff
	pop  af                                          ; $5aea: $f1
	ld   de, $ff4e                                   ; $5aeb: $11 $4e $ff
	rst  $38                                         ; $5aee: $ff
	pop  af                                          ; $5aef: $f1
	ld   de, $1111                                   ; $5af0: $11 $11 $11
	rra                                              ; $5af3: $1f
	rst  $38                                         ; $5af4: $ff
	rst  $38                                         ; $5af5: $ff
	rst  $38                                         ; $5af6: $ff
	ld   de, $ae12                                   ; $5af7: $11 $12 $ae
	rst  $38                                         ; $5afa: $ff
	db   $fc                                         ; $5afb: $fc
	ld   sp, $1111                                   ; $5afc: $31 $11 $11
	ld   de, $ffff                                   ; $5aff: $11 $ff $ff
	rst  $38                                         ; $5b02: $ff
	push af                                          ; $5b03: $f5
	ld   de, $cf47                                   ; $5b04: $11 $47 $cf
	rst  $38                                         ; $5b07: $ff
	and  h                                           ; $5b08: $a4
	ld   de, $1111                                   ; $5b09: $11 $11 $11
	dec  e                                           ; $5b0c: $1d
	db   $fc                                         ; $5b0d: $fc
	call z, $a8ff                                    ; $5b0e: $cc $ff $a8
	sub  [hl]                                        ; $5b11: $96
	xor  b                                           ; $5b12: $a8
	cp   a                                           ; $5b13: $bf
	db   $fd                                         ; $5b14: $fd
	add  l                                           ; $5b15: $85
	ld   b, [hl]                                     ; $5b16: $46
	ld   [hl], a                                     ; $5b17: $77
	and  h                                           ; $5b18: $a4
	jr   jr_0b5_5b8c                                 ; $5b19: $18 $71

	ld   d, h                                        ; $5b1b: $54
	ld   h, a                                        ; $5b1c: $67
	xor  d                                           ; $5b1d: $aa
	adc  c                                           ; $5b1e: $89
	cp   c                                           ; $5b1f: $b9
	ld   l, l                                        ; $5b20: $6d
	rst  $28                                         ; $5b21: $ef
	cp   $de                                         ; $5b22: $fe $de
	reti                                             ; $5b24: $d9


	ld   [hl], l                                     ; $5b25: $75
	ld   h, h                                        ; $5b26: $64
	inc  d                                           ; $5b27: $14
	ld   d, d                                        ; $5b28: $52
	dec  [hl]                                        ; $5b29: $35
	ld   d, a                                        ; $5b2a: $57
	add  [hl]                                        ; $5b2b: $86
	ld   d, h                                        ; $5b2c: $54
	ld   a, c                                        ; $5b2d: $79
	adc  e                                           ; $5b2e: $8b
	rst  $38                                         ; $5b2f: $ff
	rst  $38                                         ; $5b30: $ff
	rst  JumpTable                                         ; $5b31: $df
	db   $db                                         ; $5b32: $db
	ld   [hl], d                                     ; $5b33: $72
	ld   de, $6212                                   ; $5b34: $11 $12 $62
	ld   b, e                                        ; $5b37: $43
	ld   b, a                                        ; $5b38: $47
	ld   a, b                                        ; $5b39: $78
	add  a                                           ; $5b3a: $87
	xor  [hl]                                        ; $5b3b: $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b3c: $cf
	rst  $38                                         ; $5b3d: $ff
	rst  $38                                         ; $5b3e: $ff
	call c, Call_0b5_51b9                            ; $5b3f: $dc $b9 $51
	ld   de, $2411                                   ; $5b42: $11 $11 $24
	ld   h, e                                        ; $5b45: $63
	adc  [hl]                                        ; $5b46: $8e
	db   $ed                                         ; $5b47: $ed
	db   $ec                                         ; $5b48: $ec
	db   $ed                                         ; $5b49: $ed
	adc  $ff                                         ; $5b4a: $ce $ff
	db   $fc                                         ; $5b4c: $fc
	sub  a                                           ; $5b4d: $97
	ld   b, c                                        ; $5b4e: $41
	ld   de, $1611                                   ; $5b4f: $11 $11 $16
	adc  e                                           ; $5b52: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b53: $cf
	rst  $38                                         ; $5b54: $ff
	cp   l                                           ; $5b55: $bd
	cp   b                                           ; $5b56: $b8
	xor  e                                           ; $5b57: $ab
	rst  $38                                         ; $5b58: $ff
	db   $fc                                         ; $5b59: $fc
	add  d                                           ; $5b5a: $82
	ld   hl, $1111                                   ; $5b5b: $21 $11 $11
	ld   e, l                                        ; $5b5e: $5d
	rst  $38                                         ; $5b5f: $ff
	rst  $38                                         ; $5b60: $ff
	db   $fc                                         ; $5b61: $fc
	ld   e, d                                        ; $5b62: $5a
	dec  [hl]                                        ; $5b63: $35
	adc  h                                           ; $5b64: $8c
	rst  $38                                         ; $5b65: $ff
	db   $fc                                         ; $5b66: $fc
	ld   h, c                                        ; $5b67: $61
	ld   de, $1111                                   ; $5b68: $11 $11 $11
	rst  $38                                         ; $5b6b: $ff
	rst  $38                                         ; $5b6c: $ff
	rst  $38                                         ; $5b6d: $ff
	di                                               ; $5b6e: $f3
	inc  [hl]                                        ; $5b6f: $34
	add  hl, de                                      ; $5b70: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b71: $cf
	rst  $38                                         ; $5b72: $ff
	ld   hl, sp+$11                                  ; $5b73: $f8 $11
	ld   de, $1711                                   ; $5b75: $11 $11 $17
	rst  $38                                         ; $5b78: $ff
	rst  $38                                         ; $5b79: $ff
	rst  $38                                         ; $5b7a: $ff
	ld   [hl], c                                     ; $5b7b: $71
	inc  d                                           ; $5b7c: $14
	adc  d                                           ; $5b7d: $8a
	rst  JumpTable                                         ; $5b7e: $df
	rst  $38                                         ; $5b7f: $ff
	ld   [hl], c                                     ; $5b80: $71
	ld   de, $1111                                   ; $5b81: $11 $11 $11
	rra                                              ; $5b84: $1f
	rst  $38                                         ; $5b85: $ff
	rst  $38                                         ; $5b86: $ff
	cp   $11                                         ; $5b87: $fe $11
	dec  h                                           ; $5b89: $25
	sbc  l                                           ; $5b8a: $9d
	rst  $38                                         ; $5b8b: $ff

jr_0b5_5b8c:
	ei                                               ; $5b8c: $fb
	ld   hl, $1111                                   ; $5b8d: $21 $11 $11
	ld   de, $ffff                                   ; $5b90: $11 $ff $ff
	rst  $38                                         ; $5b93: $ff
	pop  af                                          ; $5b94: $f1
	dec  d                                           ; $5b95: $15
	ld   e, b                                        ; $5b96: $58
	cp   a                                           ; $5b97: $bf
	rst  $38                                         ; $5b98: $ff
	db   $e3                                         ; $5b99: $e3
	ld   de, $1111                                   ; $5b9a: $11 $11 $11
	dec  e                                           ; $5b9d: $1d
	rst  $38                                         ; $5b9e: $ff
	rst  $38                                         ; $5b9f: $ff
	rst  $38                                         ; $5ba0: $ff
	ld   hl, $8a16                                   ; $5ba1: $21 $16 $8a
	rst  $38                                         ; $5ba4: $ff
	rst  $38                                         ; $5ba5: $ff
	ld   sp, $1111                                   ; $5ba6: $31 $11 $11
	ld   de, $ffaf                                   ; $5ba9: $11 $af $ff
	rst  $38                                         ; $5bac: $ff
	pop  af                                          ; $5bad: $f1
	ld   de, $cf8a                                   ; $5bae: $11 $8a $cf
	rst  $38                                         ; $5bb1: $ff
	ldh  a, [c]                                      ; $5bb2: $f2
	ld   de, $1111                                   ; $5bb3: $11 $11 $11
	rla                                              ; $5bb6: $17
	rst  $38                                         ; $5bb7: $ff
	rst  $38                                         ; $5bb8: $ff
	rst  $38                                         ; $5bb9: $ff
	ld   de, $ce19                                   ; $5bba: $11 $19 $ce
	rst  $38                                         ; $5bbd: $ff
	rst  $38                                         ; $5bbe: $ff
	ld   de, $1111                                   ; $5bbf: $11 $11 $11
	ld   de, $ff4f                                   ; $5bc2: $11 $4f $ff
	rst  $38                                         ; $5bc5: $ff
	pop  af                                          ; $5bc6: $f1
	ld   de, $cfcd                                   ; $5bc7: $11 $cd $cf
	rst  $38                                         ; $5bca: $ff
	pop  hl                                          ; $5bcb: $e1
	ld   de, $1111                                   ; $5bcc: $11 $11 $11
	inc  d                                           ; $5bcf: $14
	rst  $38                                         ; $5bd0: $ff
	rst  $38                                         ; $5bd1: $ff
	rst  $38                                         ; $5bd2: $ff
	ld   de, $de1e                                   ; $5bd3: $11 $1e $de
	rst  $38                                         ; $5bd6: $ff
	ei                                               ; $5bd7: $fb
	ld   de, $1111                                   ; $5bd8: $11 $11 $11
	ld   de, $ff2f                                   ; $5bdb: $11 $2f $ff
	rst  $38                                         ; $5bde: $ff
	pop  af                                          ; $5bdf: $f1
	ld   de, $cffe                                   ; $5be0: $11 $fe $cf
	rst  $38                                         ; $5be3: $ff
	ld   [hl], c                                     ; $5be4: $71
	ld   de, $1111                                   ; $5be5: $11 $11 $11
	ld   [de], a                                     ; $5be8: $12
	rst  $38                                         ; $5be9: $ff
	rst  $38                                         ; $5bea: $ff
	rst  $38                                         ; $5beb: $ff
	ld   de, $cb3f                                   ; $5bec: $11 $3f $cb
	rst  $38                                         ; $5bef: $ff
	push af                                          ; $5bf0: $f5
	ld   de, $1111                                   ; $5bf1: $11 $11 $11
	ld   de, $ff2f                                   ; $5bf4: $11 $2f $ff
	rst  $38                                         ; $5bf7: $ff
	pop  af                                          ; $5bf8: $f1
	inc  de                                          ; $5bf9: $13
	cp   $9f                                         ; $5bfa: $fe $9f
	rst  $38                                         ; $5bfc: $ff
	ld   sp, $1111                                   ; $5bfd: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $5c00: $11 $11 $ff
	rst  $38                                         ; $5c03: $ff
	rst  $38                                         ; $5c04: $ff
	ld   de, $c81f                                   ; $5c05: $11 $1f $c8
	rst  $38                                         ; $5c08: $ff
	push af                                          ; $5c09: $f5
	ld   de, $1111                                   ; $5c0a: $11 $11 $11
	ld   de, $ff1f                                   ; $5c0d: $11 $1f $ff
	rst  $38                                         ; $5c10: $ff
	pop  af                                          ; $5c11: $f1
	ld   de, $affc                                   ; $5c12: $11 $fc $af
	rst  $38                                         ; $5c15: $ff
	sub  c                                           ; $5c16: $91
	ld   de, $1111                                   ; $5c17: $11 $11 $11
	ld   de, $ffff                                   ; $5c1a: $11 $ff $ff
	rst  $38                                         ; $5c1d: $ff
	ld   de, $771f                                   ; $5c1e: $11 $1f $77
	rst  $38                                         ; $5c21: $ff
	ei                                               ; $5c22: $fb
	ld   de, $1111                                   ; $5c23: $11 $11 $11
	ld   de, $ff1f                                   ; $5c26: $11 $1f $ff
	rst  $38                                         ; $5c29: $ff
	pop  af                                          ; $5c2a: $f1
	inc  de                                          ; $5c2b: $13
	push af                                          ; $5c2c: $f5
	ld   e, a                                        ; $5c2d: $5f
	rst  $38                                         ; $5c2e: $ff
	or   c                                           ; $5c2f: $b1
	ld   de, $1111                                   ; $5c30: $11 $11 $11
	ld   de, $ffff                                   ; $5c33: $11 $ff $ff
	rst  $38                                         ; $5c36: $ff
	ld   [hl], c                                     ; $5c37: $71
	rra                                              ; $5c38: $1f
	ld   [de], a                                     ; $5c39: $12
	rst  $38                                         ; $5c3a: $ff
	rst  $38                                         ; $5c3b: $ff
	ld   de, $1111                                   ; $5c3c: $11 $11 $11
	ld   de, $ff1f                                   ; $5c3f: $11 $1f $ff
	rst  $38                                         ; $5c42: $ff
	ld   a, [$d311]                                  ; $5c43: $fa $11 $d3
	ld   l, a                                        ; $5c46: $6f
	rst  $38                                         ; $5c47: $ff
	ldh  a, [c]                                      ; $5c48: $f2
	ld   de, $1111                                   ; $5c49: $11 $11 $11
	ld   de, $ffff                                   ; $5c4c: $11 $ff $ff
	rst  $38                                         ; $5c4f: $ff
	pop  bc                                          ; $5c50: $c1
	ld   e, $33                                      ; $5c51: $1e $33
	rst  $38                                         ; $5c53: $ff
	rst  $38                                         ; $5c54: $ff
	ld   hl, $1111                                   ; $5c55: $21 $11 $11
	ld   de, $ff1f                                   ; $5c58: $11 $1f $ff
	rst  $38                                         ; $5c5b: $ff
	rst  $38                                         ; $5c5c: $ff
	ld   de, $3fa1                                   ; $5c5d: $11 $a1 $3f
	rst  $38                                         ; $5c60: $ff
	db   $f4                                         ; $5c61: $f4
	ld   de, $1111                                   ; $5c62: $11 $11 $11
	ld   de, $ffff                                   ; $5c65: $11 $ff $ff
	rst  $38                                         ; $5c68: $ff
	pop  af                                          ; $5c69: $f1
	ld   a, [de]                                     ; $5c6a: $1a
	inc  d                                           ; $5c6b: $14
	rst  $38                                         ; $5c6c: $ff
	rst  $38                                         ; $5c6d: $ff
	ld   [hl], e                                     ; $5c6e: $73
	ld   de, $1111                                   ; $5c6f: $11 $11 $11
	rra                                              ; $5c72: $1f
	rst  $38                                         ; $5c73: $ff
	rst  $38                                         ; $5c74: $ff
	rst  $38                                         ; $5c75: $ff
	ld   [de], a                                     ; $5c76: $12
	pop  hl                                          ; $5c77: $e1
	cpl                                              ; $5c78: $2f
	rst  $38                                         ; $5c79: $ff
	ld   sp, hl                                      ; $5c7a: $f9
	ld   b, c                                        ; $5c7b: $41
	ld   de, $1111                                   ; $5c7c: $11 $11 $11
	rst  $38                                         ; $5c7f: $ff
	rst  $38                                         ; $5c80: $ff
	rst  $38                                         ; $5c81: $ff
	di                                               ; $5c82: $f3
	ld   h, e                                        ; $5c83: $63
	jr   @+$01                                       ; $5c84: $18 $ff

	rst  $38                                         ; $5c86: $ff
	rst  ToBoot                                         ; $5c87: $c7
	ld   de, $1111                                   ; $5c88: $11 $11 $11
	rra                                              ; $5c8b: $1f
	rst  $28                                         ; $5c8c: $ef
	rst  $38                                         ; $5c8d: $ff
	rst  $38                                         ; $5c8e: $ff
	ld   h, [hl]                                     ; $5c8f: $66
	and  c                                           ; $5c90: $a1
	dec  a                                           ; $5c91: $3d
	rst  $38                                         ; $5c92: $ff
	ei                                               ; $5c93: $fb
	sub  e                                           ; $5c94: $93
	ld   de, $1111                                   ; $5c95: $11 $11 $11
	cp   h                                           ; $5c98: $bc
	cp   a                                           ; $5c99: $bf
	rst  $38                                         ; $5c9a: $ff
	db   $fd                                         ; $5c9b: $fd
	sbc  h                                           ; $5c9c: $9c
	inc  de                                          ; $5c9d: $13
	rst  $38                                         ; $5c9e: $ff
	rst  $38                                         ; $5c9f: $ff
	db   $db                                         ; $5ca0: $db
	ld   b, c                                        ; $5ca1: $41
	ld   de, $1811                                   ; $5ca2: $11 $11 $18
	ld   a, d                                        ; $5ca5: $7a
	rst  $38                                         ; $5ca6: $ff
	rst  $38                                         ; $5ca7: $ff
	db   $fd                                         ; $5ca8: $fd
	pop  de                                          ; $5ca9: $d1
	ld   c, h                                        ; $5caa: $4c
	rst  $38                                         ; $5cab: $ff
	rst  $38                                         ; $5cac: $ff
	rst  $10                                         ; $5cad: $d7
	ld   de, $1111                                   ; $5cae: $11 $11 $11
	add  hl, hl                                      ; $5cb1: $29
	cpl                                              ; $5cb2: $2f
	rst  $38                                         ; $5cb3: $ff
	rst  $38                                         ; $5cb4: $ff
	rst  $28                                         ; $5cb5: $ef
	add  c                                           ; $5cb6: $81
	cp   a                                           ; $5cb7: $bf
	rst  $38                                         ; $5cb8: $ff
	db   $fc                                         ; $5cb9: $fc
	and  c                                           ; $5cba: $a1
	ld   de, $1111                                   ; $5cbb: $11 $11 $11
	ld   [hl], c                                     ; $5cbe: $71
	ld   a, a                                        ; $5cbf: $7f
	rst  $38                                         ; $5cc0: $ff
	rst  $38                                         ; $5cc1: $ff
	rst  $38                                         ; $5cc2: $ff
	dec  sp                                          ; $5cc3: $3b
	rst  $38                                         ; $5cc4: $ff
	rst  $38                                         ; $5cc5: $ff
	db   $ec                                         ; $5cc6: $ec
	ld   h, c                                        ; $5cc7: $61
	ld   de, $1211                                   ; $5cc8: $11 $11 $12
	ld   de, $ffcf                                   ; $5ccb: $11 $cf $ff
	rst  $38                                         ; $5cce: $ff
	ld   sp, hl                                      ; $5ccf: $f9
	ld   l, a                                        ; $5cd0: $6f
	ei                                               ; $5cd1: $fb
	rst  $38                                         ; $5cd2: $ff
	db   $eb                                         ; $5cd3: $eb
	ld   b, c                                        ; $5cd4: $41
	ld   de, $1211                                   ; $5cd5: $11 $11 $12
	ld   de, $ef9d                                   ; $5cd8: $11 $9d $ef
	rst  $38                                         ; $5cdb: $ff
	db   $fd                                         ; $5cdc: $fd
	xor  [hl]                                        ; $5cdd: $ae
	db   $eb                                         ; $5cde: $eb
	rst  JumpTable                                         ; $5cdf: $df
	db   $db                                         ; $5ce0: $db
	sub  h                                           ; $5ce1: $94
	ld   de, $1111                                   ; $5ce2: $11 $11 $11
	ld   b, c                                        ; $5ce5: $41
	ld   a, [de]                                     ; $5ce6: $1a
	cp   d                                           ; $5ce7: $ba
	rst  $28                                         ; $5ce8: $ef
	rst  $38                                         ; $5ce9: $ff
	cp   d                                           ; $5cea: $ba
	db   $dd                                         ; $5ceb: $dd
	xor  [hl]                                        ; $5cec: $ae
	db   $fc                                         ; $5ced: $fc
	cp   b                                           ; $5cee: $b8
	ld   b, e                                        ; $5cef: $43
	ld   [hl+], a                                    ; $5cf0: $22
	ld   b, e                                        ; $5cf1: $43
	dec  [hl]                                        ; $5cf2: $35
	ld   b, e                                        ; $5cf3: $43
	ld   l, b                                        ; $5cf4: $68
	adc  b                                           ; $5cf5: $88
	sbc  c                                           ; $5cf6: $99
	add  a                                           ; $5cf7: $87
	ld   a, d                                        ; $5cf8: $7a
	sbc  c                                           ; $5cf9: $99
	call z, $a9de                                    ; $5cfa: $cc $de $a9
	and  a                                           ; $5cfd: $a7
	ld   a, h                                        ; $5cfe: $7c
	add  l                                           ; $5cff: $85
	adc  b                                           ; $5d00: $88
	ld   [hl], l                                     ; $5d01: $75
	ld   a, c                                        ; $5d02: $79
	ld   h, h                                        ; $5d03: $64
	ld   b, [hl]                                     ; $5d04: $46
	ld   h, [hl]                                     ; $5d05: $66
	ld   a, d                                        ; $5d06: $7a
	xor  b                                           ; $5d07: $a8
	xor  e                                           ; $5d08: $ab
	xor  b                                           ; $5d09: $a8
	sbc  c                                           ; $5d0a: $99
	sbc  d                                           ; $5d0b: $9a
	cp   e                                           ; $5d0c: $bb
	sbc  c                                           ; $5d0d: $99
	xor  c                                           ; $5d0e: $a9
	adc  c                                           ; $5d0f: $89
	xor  b                                           ; $5d10: $a8
	ld   h, [hl]                                     ; $5d11: $66
	ld   h, a                                        ; $5d12: $67
	ld   [hl], a                                     ; $5d13: $77
	adc  b                                           ; $5d14: $88
	add  [hl]                                        ; $5d15: $86
	ld   h, [hl]                                     ; $5d16: $66
	ld   [hl], a                                     ; $5d17: $77
	ld   a, b                                        ; $5d18: $78
	adc  b                                           ; $5d19: $88
	adc  c                                           ; $5d1a: $89
	xor  d                                           ; $5d1b: $aa
	adc  b                                           ; $5d1c: $88
	adc  b                                           ; $5d1d: $88
	ld   a, c                                        ; $5d1e: $79
	sbc  c                                           ; $5d1f: $99
	sbc  c                                           ; $5d20: $99
	adc  b                                           ; $5d21: $88
	adc  c                                           ; $5d22: $89
	sbc  b                                           ; $5d23: $98
	add  a                                           ; $5d24: $87
	ld   [hl], a                                     ; $5d25: $77
	ld   a, b                                        ; $5d26: $78
	adc  b                                           ; $5d27: $88
	adc  b                                           ; $5d28: $88
	ld   [hl], a                                     ; $5d29: $77
	ld   a, b                                        ; $5d2a: $78
	sbc  b                                           ; $5d2b: $98
	adc  c                                           ; $5d2c: $89
	sbc  b                                           ; $5d2d: $98
	sbc  b                                           ; $5d2e: $98
	adc  b                                           ; $5d2f: $88
	adc  b                                           ; $5d30: $88
	ld   a, b                                        ; $5d31: $78
	sub  a                                           ; $5d32: $97
	ld   a, b                                        ; $5d33: $78
	ld   [hl], a                                     ; $5d34: $77
	adc  c                                           ; $5d35: $89
	ld   [hl], a                                     ; $5d36: $77
	sbc  b                                           ; $5d37: $98
	adc  c                                           ; $5d38: $89
	adc  c                                           ; $5d39: $89
	sbc  c                                           ; $5d3a: $99
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

Call_0b5_5ec7:
	adc  b                                           ; $5ec7: $88
	adc  b                                           ; $5ec8: $88
	adc  b                                           ; $5ec9: $88
	adc  b                                           ; $5eca: $88
	adc  b                                           ; $5ecb: $88
	adc  b                                           ; $5ecc: $88
	adc  b                                           ; $5ecd: $88
	adc  b                                           ; $5ece: $88
	adc  b                                           ; $5ecf: $88
	add  a                                           ; $5ed0: $87
	adc  b                                           ; $5ed1: $88
	ld   a, b                                        ; $5ed2: $78
	adc  b                                           ; $5ed3: $88
	sbc  c                                           ; $5ed4: $99
	adc  c                                           ; $5ed5: $89
	adc  b                                           ; $5ed6: $88
	sbc  c                                           ; $5ed7: $99
	ld   a, c                                        ; $5ed8: $79
	ld   a, d                                        ; $5ed9: $7a
	add  l                                           ; $5eda: $85
	and  [hl]                                        ; $5edb: $a6
	sbc  c                                           ; $5edc: $99
	ld   l, e                                        ; $5edd: $6b
	ld   a, b                                        ; $5ede: $78
	add  [hl]                                        ; $5edf: $86
	ld   a, c                                        ; $5ee0: $79
	ld   l, d                                        ; $5ee1: $6a
	sub  a                                           ; $5ee2: $97
	and  l                                           ; $5ee3: $a5
	sbc  c                                           ; $5ee4: $99
	ld   a, b                                        ; $5ee5: $78
	adc  b                                           ; $5ee6: $88
	add  a                                           ; $5ee7: $87
	ld   a, b                                        ; $5ee8: $78
	ld   [hl], a                                     ; $5ee9: $77
	add  a                                           ; $5eea: $87
	add  a                                           ; $5eeb: $87
	adc  c                                           ; $5eec: $89
	adc  d                                           ; $5eed: $8a
	ld   a, c                                        ; $5eee: $79
	adc  b                                           ; $5eef: $88
	sub  a                                           ; $5ef0: $97
	sbc  c                                           ; $5ef1: $99
	adc  c                                           ; $5ef2: $89
	ld   a, b                                        ; $5ef3: $78
	sbc  b                                           ; $5ef4: $98
	adc  b                                           ; $5ef5: $88
	adc  d                                           ; $5ef6: $8a
	adc  b                                           ; $5ef7: $88
	add  a                                           ; $5ef8: $87
	adc  b                                           ; $5ef9: $88
	ld   a, b                                        ; $5efa: $78
	add  a                                           ; $5efb: $87
	add  [hl]                                        ; $5efc: $86
	add  [hl]                                        ; $5efd: $86
	ld   [hl], a                                     ; $5efe: $77
	ld   a, b                                        ; $5eff: $78
	ld   a, b                                        ; $5f00: $78
	ld   a, d                                        ; $5f01: $7a
	sbc  c                                           ; $5f02: $99
	xor  d                                           ; $5f03: $aa
	sbc  d                                           ; $5f04: $9a
	cp   b                                           ; $5f05: $b8
	cp   c                                           ; $5f06: $b9
	adc  c                                           ; $5f07: $89
	adc  c                                           ; $5f08: $89
	add  a                                           ; $5f09: $87
	halt                                             ; $5f0a: $76
	halt                                             ; $5f0b: $76
	ld   d, a                                        ; $5f0c: $57
	ld   d, l                                        ; $5f0d: $55
	ld   h, l                                        ; $5f0e: $65
	ld   [hl], a                                     ; $5f0f: $77
	adc  b                                           ; $5f10: $88
	sbc  c                                           ; $5f11: $99
	cp   e                                           ; $5f12: $bb
	cp   e                                           ; $5f13: $bb
	call z, $aabc                                    ; $5f14: $cc $bc $aa
	add  [hl]                                        ; $5f17: $86
	ld   d, [hl]                                     ; $5f18: $56
	ld   [hl-], a                                    ; $5f19: $32
	ld   sp, $3431                                   ; $5f1a: $31 $31 $34
	jr   z, @+$6c                                    ; $5f1d: $28 $6a

	call $ffff                                       ; $5f1f: $cd $ff $ff
	rst  $38                                         ; $5f22: $ff
	db   $fd                                         ; $5f23: $fd
	ret  c                                           ; $5f24: $d8

	ld   h, h                                        ; $5f25: $64
	ld   b, d                                        ; $5f26: $42
	ld   [de], a                                     ; $5f27: $12
	ld   de, $1311                                   ; $5f28: $11 $11 $13
	daa                                              ; $5f2b: $27
	adc  e                                           ; $5f2c: $8b
	rst  $28                                         ; $5f2d: $ef
	rst  $38                                         ; $5f2e: $ff
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	db   $fd                                         ; $5f31: $fd
	ret  c                                           ; $5f32: $d8

	ld   d, e                                        ; $5f33: $53
	inc  hl                                          ; $5f34: $23
	ld   de, $1111                                   ; $5f35: $11 $11 $11
	ld   [de], a                                     ; $5f38: $12
	ld   d, $6b                                      ; $5f39: $16 $6b
	cp   $ff                                         ; $5f3b: $fe $ff
	rst  $38                                         ; $5f3d: $ff
	rst  $38                                         ; $5f3e: $ff
	rst  $38                                         ; $5f3f: $ff
	db   $db                                         ; $5f40: $db
	ld   d, d                                        ; $5f41: $52
	ld   de, $0111                                   ; $5f42: $11 $11 $01
	ld   de, $1411                                   ; $5f45: $11 $11 $14
	ld   a, c                                        ; $5f48: $79
	rst  $38                                         ; $5f49: $ff
	rst  $38                                         ; $5f4a: $ff
	rst  $38                                         ; $5f4b: $ff
	rst  $38                                         ; $5f4c: $ff
	rst  $38                                         ; $5f4d: $ff
	db   $dd                                         ; $5f4e: $dd
	ld   [hl], c                                     ; $5f4f: $71
	inc  de                                          ; $5f50: $13
	ld   de, $1111                                   ; $5f51: $11 $11 $11
	ld   de, $7915                                   ; $5f54: $11 $15 $79
	rst  $38                                         ; $5f57: $ff
	rst  $38                                         ; $5f58: $ff
	rst  $38                                         ; $5f59: $ff
	rst  $38                                         ; $5f5a: $ff
	rst  $38                                         ; $5f5b: $ff
	db   $db                                         ; $5f5c: $db
	ld   [hl], c                                     ; $5f5d: $71
	ld   [de], a                                     ; $5f5e: $12
	ld   de, $1111                                   ; $5f5f: $11 $11 $11
	ld   de, $7b16                                   ; $5f62: $11 $16 $7b
	rst  $38                                         ; $5f65: $ff
	rst  $38                                         ; $5f66: $ff
	rst  $38                                         ; $5f67: $ff
	rst  $38                                         ; $5f68: $ff
	rst  $38                                         ; $5f69: $ff
	reti                                             ; $5f6a: $d9


	ld   b, c                                        ; $5f6b: $41
	ld   de, $1111                                   ; $5f6c: $11 $11 $11
	ld   de, $1911                                   ; $5f6f: $11 $11 $19
	adc  a                                           ; $5f72: $8f
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	rst  $38                                         ; $5f75: $ff
	rst  $38                                         ; $5f76: $ff
	rst  $38                                         ; $5f77: $ff
	add  $11                                         ; $5f78: $c6 $11
	ld   hl, $1112                                   ; $5f7a: $21 $12 $11
	ld   de, $4a11                                   ; $5f7d: $11 $11 $4a
	cp   a                                           ; $5f80: $bf
	rst  $38                                         ; $5f81: $ff
	rst  $38                                         ; $5f82: $ff
	rst  $38                                         ; $5f83: $ff
	rst  $38                                         ; $5f84: $ff
	rst  $38                                         ; $5f85: $ff
	ld   h, e                                        ; $5f86: $63
	ld   de, $1111                                   ; $5f87: $11 $11 $11
	ld   de, $3111                                   ; $5f8a: $11 $11 $31
	sbc  d                                           ; $5f8d: $9a
	rst  $38                                         ; $5f8e: $ff
	rst  $38                                         ; $5f8f: $ff
	rst  $38                                         ; $5f90: $ff
	rst  $38                                         ; $5f91: $ff
	rst  $38                                         ; $5f92: $ff
	ld   a, [$1121]                                  ; $5f93: $fa $21 $11
	ld   de, $1141                                   ; $5f96: $11 $41 $11
	inc  d                                           ; $5f99: $14
	rla                                              ; $5f9a: $17
	cp   a                                           ; $5f9b: $bf
	rst  $38                                         ; $5f9c: $ff
	rst  $38                                         ; $5f9d: $ff
	rst  $38                                         ; $5f9e: $ff
	rst  $38                                         ; $5f9f: $ff
	rst  $38                                         ; $5fa0: $ff
	and  d                                           ; $5fa1: $a2
	ld   de, $1711                                   ; $5fa2: $11 $11 $17
	ld   de, $1241                                   ; $5fa5: $11 $41 $12
	ld   e, h                                        ; $5fa8: $5c
	rst  $38                                         ; $5fa9: $ff
	rst  $38                                         ; $5faa: $ff
	rst  $38                                         ; $5fab: $ff
	rst  $38                                         ; $5fac: $ff
	rst  $38                                         ; $5fad: $ff
	ld   sp, hl                                      ; $5fae: $f9
	ld   sp, $1111                                   ; $5faf: $31 $11 $11
	sub  c                                           ; $5fb2: $91
	add  hl, de                                      ; $5fb3: $19
	ld   de, $cf54                                   ; $5fb4: $11 $54 $cf
	rst  $38                                         ; $5fb7: $ff
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	rst  $38                                         ; $5fbb: $ff
	ld   [hl], d                                     ; $5fbc: $72
	ld   de, $1c11                                   ; $5fbd: $11 $11 $1c
	ld   de, $36b1                                   ; $5fc0: $11 $b1 $36
	ld   e, [hl]                                     ; $5fc3: $5e
	rst  $38                                         ; $5fc4: $ff
	rst  $38                                         ; $5fc5: $ff
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff
	ldh  a, [c]                                      ; $5fc9: $f2
	ld   sp, $1113                                   ; $5fca: $31 $13 $11
	pop  de                                          ; $5fcd: $d1
	ld   d, $1a                                      ; $5fce: $16 $1a
	ld   c, b                                        ; $5fd0: $48
	rst  $28                                         ; $5fd1: $ef
	rst  $38                                         ; $5fd2: $ff
	rst  $38                                         ; $5fd3: $ff
	rst  $38                                         ; $5fd4: $ff
	db   $fd                                         ; $5fd5: $fd
	rst  $38                                         ; $5fd6: $ff
	ld   de, $1111                                   ; $5fd7: $11 $11 $11
	ld   de, $1119                                   ; $5fda: $11 $19 $11
	db   $e4                                         ; $5fdd: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fde: $cf
	rst  $38                                         ; $5fdf: $ff
	rst  $38                                         ; $5fe0: $ff
	rst  $38                                         ; $5fe1: $ff
	rst  $38                                         ; $5fe2: $ff
	rst  $28                                         ; $5fe3: $ef
	ld   h, c                                        ; $5fe4: $61
	ld   de, $1d11                                   ; $5fe5: $11 $11 $1d
	ld   de, $39f1                                   ; $5fe8: $11 $f1 $39
	ld   a, l                                        ; $5feb: $7d
	rst  $38                                         ; $5fec: $ff
	rst  $38                                         ; $5fed: $ff
	rst  $38                                         ; $5fee: $ff
	rst  $38                                         ; $5fef: $ff
	rst  $38                                         ; $5ff0: $ff
	pop  af                                          ; $5ff1: $f1
	ld   de, $1111                                   ; $5ff2: $11 $11 $11
	ld   sp, $1d71                                   ; $5ff5: $31 $71 $1d
	ld   c, l                                        ; $5ff8: $4d
	rst  $28                                         ; $5ff9: $ef
	rst  $38                                         ; $5ffa: $ff
	rst  $38                                         ; $5ffb: $ff
	rst  $38                                         ; $5ffc: $ff
	ld   sp, hl                                      ; $5ffd: $f9
	ld   sp, hl                                      ; $5ffe: $f9
	ld   de, $1111                                   ; $5fff: $11 $11 $11
	pop  bc                                          ; $6002: $c1
	ld   e, $16                                      ; $6003: $1e $16
	ld   a, c                                        ; $6005: $79
	rst  $28                                         ; $6006: $ef
	rst  $38                                         ; $6007: $ff
	rst  $38                                         ; $6008: $ff
	rst  $38                                         ; $6009: $ff
	db   $fd                                         ; $600a: $fd
	rst  $38                                         ; $600b: $ff
	ld   de, $1111                                   ; $600c: $11 $11 $11
	ld   sp, $111f                                   ; $600f: $31 $1f $11
	db   $e4                                         ; $6012: $e4
	rst  $38                                         ; $6013: $ff
	rst  $38                                         ; $6014: $ff
	rst  $38                                         ; $6015: $ff
	rst  $38                                         ; $6016: $ff
	rst  $38                                         ; $6017: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6018: $cf
	ld   b, c                                        ; $6019: $41
	ld   de, $1511                                   ; $601a: $11 $11 $15
	ld   de, $d411                                   ; $601d: $11 $11 $d4
	sbc  $ff                                         ; $6020: $de $ff
	rst  $38                                         ; $6022: $ff
	rst  $38                                         ; $6023: $ff
	rst  $38                                         ; $6024: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6025: $cf
	or   c                                           ; $6026: $b1
	ld   de, $1911                                   ; $6027: $11 $11 $19
	ld   de, $78a1                                   ; $602a: $11 $a1 $78
	xor  a                                           ; $602d: $af
	rst  $38                                         ; $602e: $ff
	rst  $38                                         ; $602f: $ff
	rst  $38                                         ; $6030: $ff
	rst  $38                                         ; $6031: $ff
	rst  $28                                         ; $6032: $ef
	pop  af                                          ; $6033: $f1
	ld   de, $1611                                   ; $6034: $11 $11 $16
	ld   de, $1aa1                                   ; $6037: $11 $a1 $1a
	sbc  a                                           ; $603a: $9f
	rst  $38                                         ; $603b: $ff
	rst  $38                                         ; $603c: $ff
	rst  $38                                         ; $603d: $ff
	rst  $38                                         ; $603e: $ff
	rst  $38                                         ; $603f: $ff
	pop  af                                          ; $6040: $f1
	ld   de, $1411                                   ; $6041: $11 $11 $14
	ld   de, $19a1                                   ; $6044: $11 $a1 $19
	adc  a                                           ; $6047: $8f
	rst  $38                                         ; $6048: $ff
	rst  $38                                         ; $6049: $ff
	rst  $38                                         ; $604a: $ff
	rst  $38                                         ; $604b: $ff
	rst  $38                                         ; $604c: $ff
	pop  af                                          ; $604d: $f1
	ld   de, $1411                                   ; $604e: $11 $11 $14
	ld   de, $1991                                   ; $6051: $11 $91 $19
	ld   a, [hl]                                     ; $6054: $7e
	rst  $38                                         ; $6055: $ff
	rst  $38                                         ; $6056: $ff
	rst  $38                                         ; $6057: $ff
	rst  $38                                         ; $6058: $ff
	rst  $38                                         ; $6059: $ff
	pop  af                                          ; $605a: $f1
	ld   de, $1411                                   ; $605b: $11 $11 $14
	ld   de, $1981                                   ; $605e: $11 $81 $19
	adc  l                                           ; $6061: $8d
	rst  $38                                         ; $6062: $ff
	rst  $38                                         ; $6063: $ff
	rst  $38                                         ; $6064: $ff
	rst  $38                                         ; $6065: $ff
	rst  $38                                         ; $6066: $ff
	pop  af                                          ; $6067: $f1
	ld   de, $1511                                   ; $6068: $11 $11 $15
	ld   de, $1761                                   ; $606b: $11 $61 $17
	xor  l                                           ; $606e: $ad
	rst  $38                                         ; $606f: $ff
	rst  $38                                         ; $6070: $ff
	rst  $38                                         ; $6071: $ff
	rst  $38                                         ; $6072: $ff
	rst  $38                                         ; $6073: $ff
	pop  af                                          ; $6074: $f1
	ld   de, $1411                                   ; $6075: $11 $11 $14
	ld   de, $1521                                   ; $6078: $11 $21 $15
	ld   [$ffff], a                                  ; $607b: $ea $ff $ff
	rst  $38                                         ; $607e: $ff
	rst  $38                                         ; $607f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6080: $cf
	pop  af                                          ; $6081: $f1
	ld   de, $1111                                   ; $6082: $11 $11 $11
	ld   de, $3411                                   ; $6085: $11 $11 $34
	ld   sp, hl                                      ; $6088: $f9
	rst  $38                                         ; $6089: $ff
	rst  $38                                         ; $608a: $ff
	rst  $38                                         ; $608b: $ff
	rst  $38                                         ; $608c: $ff
	sbc  a                                           ; $608d: $9f
	pop  de                                          ; $608e: $d1
	ld   de, $1111                                   ; $608f: $11 $11 $11
	ld   de, $2711                                   ; $6092: $11 $11 $27
	ld   hl, sp-$01                                  ; $6095: $f8 $ff
	rst  $38                                         ; $6097: $ff
	rst  $38                                         ; $6098: $ff
	rst  $38                                         ; $6099: $ff
	sbc  a                                           ; $609a: $9f
	ld   h, c                                        ; $609b: $61
	ld   [de], a                                     ; $609c: $12
	ld   de, $1361                                   ; $609d: $11 $61 $13
	ld   de, $fa1d                                   ; $60a0: $11 $1d $fa
	rst  $38                                         ; $60a3: $ff
	rst  $38                                         ; $60a4: $ff
	rst  $38                                         ; $60a5: $ff
	rst  $38                                         ; $60a6: $ff
	rst  JumpTable                                         ; $60a7: $df
	ld   de, $1111                                   ; $60a8: $11 $11 $11
	ld   sp, $1511                                   ; $60ab: $31 $11 $15
	rra                                              ; $60ae: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60af: $cf
	rst  $38                                         ; $60b0: $ff
	rst  $38                                         ; $60b1: $ff
	rst  $38                                         ; $60b2: $ff
	rst  $30                                         ; $60b3: $f7
	rst  $38                                         ; $60b4: $ff
	ld   de, $1431                                   ; $60b5: $11 $31 $14
	ld   de, $2121                                   ; $60b8: $11 $21 $21
	ld   l, a                                        ; $60bb: $6f
	ld   a, a                                        ; $60bc: $7f
	rst  $38                                         ; $60bd: $ff
	rst  $38                                         ; $60be: $ff
	rst  $38                                         ; $60bf: $ff
	ld   hl, sp-$0d                                  ; $60c0: $f8 $f3
	ld   de, $1531                                   ; $60c2: $11 $31 $15
	ld   de, $7111                                   ; $60c5: $11 $11 $71
	rst  $38                                         ; $60c8: $ff
	rst  JumpTable                                         ; $60c9: $df
	rst  $38                                         ; $60ca: $ff
	rst  $38                                         ; $60cb: $ff
	rst  $38                                         ; $60cc: $ff
	cp   a                                           ; $60cd: $bf
	pop  hl                                          ; $60ce: $e1
	ld   de, $2111                                   ; $60cf: $11 $11 $21
	ld   [de], a                                     ; $60d2: $12
	ld   [de], a                                     ; $60d3: $12
	inc  [hl]                                        ; $60d4: $34
	ld   sp, hl                                      ; $60d5: $f9
	rst  $38                                         ; $60d6: $ff
	rst  $38                                         ; $60d7: $ff
	rst  $38                                         ; $60d8: $ff
	rst  $38                                         ; $60d9: $ff
	xor  a                                           ; $60da: $af
	ld   sp, $1113                                   ; $60db: $31 $13 $11
	ld   d, c                                        ; $60de: $51
	ld   de, $1f1b                                   ; $60df: $11 $1b $1f
	db   $fd                                         ; $60e2: $fd
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	rst  $38                                         ; $60e5: $ff
	db   $fd                                         ; $60e6: $fd
	rst  $30                                         ; $60e7: $f7
	ld   de, $1611                                   ; $60e8: $11 $11 $16
	ld   de, $9131                                   ; $60eb: $11 $31 $91
	ld   a, a                                        ; $60ee: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60ef: $cf
	rst  $38                                         ; $60f0: $ff
	rst  $38                                         ; $60f1: $ff
	rst  $38                                         ; $60f2: $ff
	cp   $b1                                         ; $60f3: $fe $b1
	ld   de, $1111                                   ; $60f5: $11 $11 $11
	ld   de, $a111                                   ; $60f8: $11 $11 $a1
	rst  $38                                         ; $60fb: $ff
	rst  $38                                         ; $60fc: $ff
	rst  $38                                         ; $60fd: $ff
	rst  $38                                         ; $60fe: $ff
	rst  $38                                         ; $60ff: $ff
	db   $ed                                         ; $6100: $ed
	ld   hl, $1111                                   ; $6101: $21 $11 $11
	ld   d, c                                        ; $6104: $51
	ld   de, $1d1a                                   ; $6105: $11 $1a $1d
	db   $fd                                         ; $6108: $fd
	rst  $38                                         ; $6109: $ff
	rst  $38                                         ; $610a: $ff
	rst  $38                                         ; $610b: $ff
	rst  $38                                         ; $610c: $ff
	rst  $30                                         ; $610d: $f7
	ld   de, $1111                                   ; $610e: $11 $11 $11
	ld   de, $1621                                   ; $6111: $11 $21 $16
	ld   c, a                                        ; $6114: $4f
	rst  $38                                         ; $6115: $ff
	rst  $38                                         ; $6116: $ff
	rst  $38                                         ; $6117: $ff
	rst  $38                                         ; $6118: $ff
	rst  $38                                         ; $6119: $ff
	or   c                                           ; $611a: $b1
	ld   de, $1311                                   ; $611b: $11 $11 $13
	ld   de, $7111                                   ; $611e: $11 $11 $71
	rst  $28                                         ; $6121: $ef
	rst  $38                                         ; $6122: $ff
	rst  $38                                         ; $6123: $ff
	rst  $38                                         ; $6124: $ff
	rst  $38                                         ; $6125: $ff
	rst  $38                                         ; $6126: $ff
	ld   h, c                                        ; $6127: $61
	ld   de, $1111                                   ; $6128: $11 $11 $11
	ld   de, $5411                                   ; $612b: $11 $11 $54
	rst  $38                                         ; $612e: $ff
	rst  $38                                         ; $612f: $ff
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	rst  $38                                         ; $6132: $ff
	db   $fc                                         ; $6133: $fc
	ld   b, c                                        ; $6134: $41
	ld   [de], a                                     ; $6135: $12
	ld   de, $1121                                   ; $6136: $11 $21 $11
	inc  d                                           ; $6139: $14
	ld   [hl], $fe                                   ; $613a: $36 $fe
	rst  $38                                         ; $613c: $ff
	rst  $38                                         ; $613d: $ff
	rst  $38                                         ; $613e: $ff
	rst  $38                                         ; $613f: $ff
	db   $ec                                         ; $6140: $ec
	ld   d, c                                        ; $6141: $51
	inc  d                                           ; $6142: $14
	ld   de, $1131                                   ; $6143: $11 $31 $11
	inc  de                                          ; $6146: $13
	dec  d                                           ; $6147: $15
	call c, $ffaf                                    ; $6148: $dc $af $ff
	rst  $38                                         ; $614b: $ff
	rst  $38                                         ; $614c: $ff
	sbc  $a5                                         ; $614d: $de $a5
	ld   d, l                                        ; $614f: $55
	ld   b, c                                        ; $6150: $41
	inc  de                                          ; $6151: $13
	ld   de, $2212                                   ; $6152: $11 $12 $22
	ld   e, c                                        ; $6155: $59
	adc  d                                           ; $6156: $8a
	db   $dd                                         ; $6157: $dd
	sbc  $ff                                         ; $6158: $de $ff
	rst  $28                                         ; $615a: $ef
	jp   c, $8ab9                                    ; $615b: $da $b9 $8a

	ld   h, l                                        ; $615e: $65
	ld   h, h                                        ; $615f: $64
	ld   [hl-], a                                    ; $6160: $32
	inc  hl                                          ; $6161: $23
	ld   [hl-], a                                    ; $6162: $32
	ld   d, l                                        ; $6163: $55
	ld   l, b                                        ; $6164: $68
	sbc  e                                           ; $6165: $9b
	call z, $ddde                                    ; $6166: $cc $de $dd
	db   $db                                         ; $6169: $db
	xor  d                                           ; $616a: $aa
	sbc  b                                           ; $616b: $98
	ld   [hl], a                                     ; $616c: $77
	ld   [hl], l                                     ; $616d: $75
	ld   h, [hl]                                     ; $616e: $66
	ld   d, l                                        ; $616f: $55
	ld   d, l                                        ; $6170: $55
	ld   d, [hl]                                     ; $6171: $56
	ld   h, a                                        ; $6172: $67
	adc  b                                           ; $6173: $88
	sbc  c                                           ; $6174: $99
	sbc  d                                           ; $6175: $9a
	cp   e                                           ; $6176: $bb
	xor  d                                           ; $6177: $aa

Jump_0b5_6178:
	xor  c                                           ; $6178: $a9
	sbc  b                                           ; $6179: $98
	add  a                                           ; $617a: $87
	adc  b                                           ; $617b: $88
	adc  b                                           ; $617c: $88
	adc  b                                           ; $617d: $88
	add  a                                           ; $617e: $87
	ld   [hl], a                                     ; $617f: $77
	ld   [hl], a                                     ; $6180: $77
	halt                                             ; $6181: $76
	ld   [hl], a                                     ; $6182: $77
	ld   [hl], a                                     ; $6183: $77
	ld   [hl], a                                     ; $6184: $77
	adc  b                                           ; $6185: $88
	adc  b                                           ; $6186: $88
	adc  b                                           ; $6187: $88
	sbc  c                                           ; $6188: $99
	sbc  c                                           ; $6189: $99
	xor  d                                           ; $618a: $aa
	xor  c                                           ; $618b: $a9
	xor  c                                           ; $618c: $a9
	sbc  c                                           ; $618d: $99
	add  a                                           ; $618e: $87
	add  a                                           ; $618f: $87
	ld   h, a                                        ; $6190: $67
	ld   h, [hl]                                     ; $6191: $66
	ld   h, l                                        ; $6192: $65
	ld   h, [hl]                                     ; $6193: $66
	ld   h, a                                        ; $6194: $67
	ld   a, b                                        ; $6195: $78
	sbc  c                                           ; $6196: $99
	xor  c                                           ; $6197: $a9
	xor  e                                           ; $6198: $ab
	cp   e                                           ; $6199: $bb
	xor  d                                           ; $619a: $aa
	sbc  c                                           ; $619b: $99
	sub  a                                           ; $619c: $97
	ld   [hl], a                                     ; $619d: $77
	ld   d, [hl]                                     ; $619e: $56
	ld   d, l                                        ; $619f: $55
	ld   d, l                                        ; $61a0: $55
	ld   d, [hl]                                     ; $61a1: $56
	ld   h, a                                        ; $61a2: $67
	ld   a, c                                        ; $61a3: $79
	adc  d                                           ; $61a4: $8a
	xor  d                                           ; $61a5: $aa
	xor  e                                           ; $61a6: $ab
	xor  d                                           ; $61a7: $aa
	xor  d                                           ; $61a8: $aa
	sbc  b                                           ; $61a9: $98
	add  a                                           ; $61aa: $87
	ld   [hl], a                                     ; $61ab: $77
	ld   h, [hl]                                     ; $61ac: $66
	ld   h, [hl]                                     ; $61ad: $66
	ld   h, [hl]                                     ; $61ae: $66
	halt                                             ; $61af: $76
	ld   a, b                                        ; $61b0: $78
	adc  b                                           ; $61b1: $88
	adc  c                                           ; $61b2: $89
	sbc  c                                           ; $61b3: $99
	sbc  c                                           ; $61b4: $99
	sbc  c                                           ; $61b5: $99
	adc  c                                           ; $61b6: $89
	add  a                                           ; $61b7: $87
	ld   [hl], a                                     ; $61b8: $77
	ld   [hl], a                                     ; $61b9: $77
	ld   [hl], a                                     ; $61ba: $77
	ld   [hl], a                                     ; $61bb: $77
	ld   [hl], a                                     ; $61bc: $77
	adc  b                                           ; $61bd: $88
	adc  b                                           ; $61be: $88
	sbc  c                                           ; $61bf: $99
	adc  b                                           ; $61c0: $88
	adc  b                                           ; $61c1: $88
	adc  b                                           ; $61c2: $88
	adc  b                                           ; $61c3: $88
	add  a                                           ; $61c4: $87
	ld   [hl], a                                     ; $61c5: $77
	ld   [hl], a                                     ; $61c6: $77
	ld   [hl], a                                     ; $61c7: $77
	ld   [hl], a                                     ; $61c8: $77
	ld   a, b                                        ; $61c9: $78
	adc  b                                           ; $61ca: $88
	sbc  b                                           ; $61cb: $98
	adc  b                                           ; $61cc: $88
	adc  b                                           ; $61cd: $88
	sbc  b                                           ; $61ce: $98
	sbc  b                                           ; $61cf: $98
	adc  b                                           ; $61d0: $88
	add  a                                           ; $61d1: $87
	ld   [hl], a                                     ; $61d2: $77
	ld   [hl], a                                     ; $61d3: $77
	ld   [hl], a                                     ; $61d4: $77
	ld   [hl], a                                     ; $61d5: $77
	ld   a, b                                        ; $61d6: $78
	ld   a, b                                        ; $61d7: $78
	adc  b                                           ; $61d8: $88
	sbc  b                                           ; $61d9: $98
	sbc  c                                           ; $61da: $99
	sbc  b                                           ; $61db: $98
	sbc  b                                           ; $61dc: $98
	sbc  b                                           ; $61dd: $98
	adc  b                                           ; $61de: $88
	adc  b                                           ; $61df: $88
	add  a                                           ; $61e0: $87
	ld   [hl], a                                     ; $61e1: $77
	ld   [hl], a                                     ; $61e2: $77
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
	add  a                                           ; $62bc: $87
	ld   a, b                                        ; $62bd: $78
	adc  c                                           ; $62be: $89
	add  a                                           ; $62bf: $87
	adc  b                                           ; $62c0: $88
	adc  b                                           ; $62c1: $88
	adc  c                                           ; $62c2: $89
	sbc  c                                           ; $62c3: $99
	xor  b                                           ; $62c4: $a8
	ld   a, b                                        ; $62c5: $78
	ld   [hl], a                                     ; $62c6: $77
	adc  c                                           ; $62c7: $89
	sub  a                                           ; $62c8: $97
	ld   a, b                                        ; $62c9: $78
	sbc  c                                           ; $62ca: $99
	add  a                                           ; $62cb: $87
	sbc  c                                           ; $62cc: $99
	sbc  c                                           ; $62cd: $99
	ld   a, b                                        ; $62ce: $78
	ld   [hl], a                                     ; $62cf: $77
	adc  d                                           ; $62d0: $8a
	ret                                              ; $62d1: $c9


	adc  b                                           ; $62d2: $88
	jp   z, $9a79                                    ; $62d3: $ca $79 $9a

	ld   h, a                                        ; $62d6: $67
	xor  c                                           ; $62d7: $a9
	ld   h, l                                        ; $62d8: $65
	ld   [hl], a                                     ; $62d9: $77

Call_0b5_62da:
	ld   [hl], a                                     ; $62da: $77
	xor  c                                           ; $62db: $a9
	ld   h, l                                        ; $62dc: $65
	ld   h, a                                        ; $62dd: $67
	ld   h, a                                        ; $62de: $67
	xor  d                                           ; $62df: $aa
	ld   [hl], a                                     ; $62e0: $77
	ld   [hl], a                                     ; $62e1: $77
	ld   d, l                                        ; $62e2: $55
	halt                                             ; $62e3: $76
	halt                                             ; $62e4: $76
	halt                                             ; $62e5: $76
	ld   d, [hl]                                     ; $62e6: $56
	ld   h, a                                        ; $62e7: $67
	ld   [hl], a                                     ; $62e8: $77
	adc  b                                           ; $62e9: $88
	adc  d                                           ; $62ea: $8a
	sbc  d                                           ; $62eb: $9a
	xor  d                                           ; $62ec: $aa
	xor  d                                           ; $62ed: $aa
	cp   c                                           ; $62ee: $b9
	sub  [hl]                                        ; $62ef: $96
	ld   h, l                                        ; $62f0: $65
	ld   b, h                                        ; $62f1: $44
	ld   hl, $1111                                   ; $62f2: $21 $11 $11
	ld   c, d                                        ; $62f5: $4a
	rst  JumpTable                                         ; $62f6: $df
	rst  $38                                         ; $62f7: $ff
	rst  $38                                         ; $62f8: $ff
	db   $db                                         ; $62f9: $db
	xor  b                                           ; $62fa: $a8
	sbc  b                                           ; $62fb: $98
	ld   [hl], l                                     ; $62fc: $75
	ld   de, $1311                                   ; $62fd: $11 $11 $13
	sbc  $ff                                         ; $6300: $de $ff
	rst  $38                                         ; $6302: $ff
	rst  $38                                         ; $6303: $ff
	ld   sp, hl                                      ; $6304: $f9
	inc  d                                           ; $6305: $14
	rst  $28                                         ; $6306: $ef
	ld   sp, hl                                      ; $6307: $f9
	ld   [hl], e                                     ; $6308: $73
	ld   de, $3f11                                   ; $6309: $11 $11 $3f
	rst  JumpTable                                         ; $630c: $df
	rst  $38                                         ; $630d: $ff
	cp   $bf                                         ; $630e: $fe $bf
	add  c                                           ; $6310: $81
	rra                                              ; $6311: $1f
	rst  $38                                         ; $6312: $ff
	xor  b                                           ; $6313: $a8
	ld   [hl], c                                     ; $6314: $71
	ld   de, $7f11                                   ; $6315: $11 $11 $7f
	rst  $38                                         ; $6318: $ff
	rst  $38                                         ; $6319: $ff
	ld   hl, sp-$73                                  ; $631a: $f8 $8d
	ld   b, c                                        ; $631c: $41
	sbc  a                                           ; $631d: $9f
	rst  $38                                         ; $631e: $ff
	sub  a                                           ; $631f: $97
	ld   hl, $1111                                   ; $6320: $21 $11 $11
	rst  JumpTable                                         ; $6323: $df
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	di                                               ; $6326: $f3
	ld   h, a                                        ; $6327: $67
	jr   @+$01                                       ; $6328: $18 $ff

	rst  $38                                         ; $632a: $ff
	add  e                                           ; $632b: $83
	ld   de, $1111                                   ; $632c: $11 $11 $11
	rst  $38                                         ; $632f: $ff
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	sub  c                                           ; $6332: $91
	ld   d, a                                        ; $6333: $57
	ld   a, l                                        ; $6334: $7d
	rst  $38                                         ; $6335: $ff
	db   $fd                                         ; $6336: $fd
	ld   sp, $1111                                   ; $6337: $31 $11 $11
	inc  de                                          ; $633a: $13
	rst  $38                                         ; $633b: $ff
	rst  $38                                         ; $633c: $ff
	rst  $38                                         ; $633d: $ff
	ld   de, $df77                                   ; $633e: $11 $77 $df
	rst  $38                                         ; $6341: $ff
	or   $11                                         ; $6342: $f6 $11
	ld   de, $1b11                                   ; $6344: $11 $11 $1b
	rst  $38                                         ; $6347: $ff
	rst  $38                                         ; $6348: $ff
	ei                                               ; $6349: $fb
	ld   de, $ffaf                                   ; $634a: $11 $af $ff
	rst  $38                                         ; $634d: $ff
	pop  af                                          ; $634e: $f1
	ld   de, $1111                                   ; $634f: $11 $11 $11
	rra                                              ; $6352: $1f
	rst  $38                                         ; $6353: $ff
	rst  $38                                         ; $6354: $ff
	pop  af                                          ; $6355: $f1
	ld   d, $df                                      ; $6356: $16 $df
	rst  $38                                         ; $6358: $ff
	rst  $38                                         ; $6359: $ff
	ld   d, c                                        ; $635a: $51
	ld   de, $1111                                   ; $635b: $11 $11 $11
	rra                                              ; $635e: $1f
	rst  $38                                         ; $635f: $ff
	rst  $38                                         ; $6360: $ff
	or   c                                           ; $6361: $b1
	dec  de                                          ; $6362: $1b
	rst  $38                                         ; $6363: $ff
	rst  $38                                         ; $6364: $ff
	rst  $38                                         ; $6365: $ff
	ld   de, $1111                                   ; $6366: $11 $11 $11
	ld   de, $ff4f                                   ; $6369: $11 $4f $ff
	cp   $a1                                         ; $636c: $fe $a1
	dec  de                                          ; $636e: $1b
	rst  $38                                         ; $636f: $ff
	rst  $38                                         ; $6370: $ff
	db   $fc                                         ; $6371: $fc
	ld   de, $1111                                   ; $6372: $11 $11 $11
	ld   de, $ffff                                   ; $6375: $11 $ff $ff
	rst  JumpTable                                         ; $6378: $df
	ld   hl, $ffbf                                   ; $6379: $21 $bf $ff
	rst  $38                                         ; $637c: $ff
	push af                                          ; $637d: $f5
	ld   de, $1111                                   ; $637e: $11 $11 $11
	ld   de, $ffff                                   ; $6381: $11 $ff $ff
	rl   c                                           ; $6384: $cb $11
	cp   a                                           ; $6386: $bf
	rst  $38                                         ; $6387: $ff

Jump_0b5_6388:
	rst  $38                                         ; $6388: $ff
	pop  af                                          ; $6389: $f1
	ld   de, $1111                                   ; $638a: $11 $11 $11
	ld   de, $ffff                                   ; $638d: $11 $ff $ff
	cp   c                                           ; $6390: $b9
	ld   de, $ffdf                                   ; $6391: $11 $df $ff
	rst  $38                                         ; $6394: $ff
	pop  de                                          ; $6395: $d1
	ld   de, $1131                                   ; $6396: $11 $31 $11
	inc  de                                          ; $6399: $13
	rst  $38                                         ; $639a: $ff
	db   $fd                                         ; $639b: $fd
	push hl                                          ; $639c: $e5
	inc  d                                           ; $639d: $14
	rst  $38                                         ; $639e: $ff
	rst  $38                                         ; $639f: $ff
	rst  $38                                         ; $63a0: $ff
	add  c                                           ; $63a1: $81
	ld   de, $1131                                   ; $63a2: $11 $31 $11
	jr   @+$01                                       ; $63a5: $18 $ff

	ld   a, [$15c5]                                  ; $63a7: $fa $c5 $15
	rst  $38                                         ; $63aa: $ff
	db   $fc                                         ; $63ab: $fc
	rst  $38                                         ; $63ac: $ff
	ld   [hl], c                                     ; $63ad: $71
	ld   [de], a                                     ; $63ae: $12
	ld   d, c                                        ; $63af: $51
	ld   de, $ff1f                                   ; $63b0: $11 $1f $ff
	or   $f1                                         ; $63b3: $f6 $f1
	add  hl, de                                      ; $63b5: $19
	rst  $38                                         ; $63b6: $ff
	db   $fd                                         ; $63b7: $fd

Call_0b5_63b8:
	rst  $38                                         ; $63b8: $ff
	sub  c                                           ; $63b9: $91
	inc  d                                           ; $63ba: $14
	ld   hl, $1f11                                   ; $63bb: $21 $11 $1f
	rst  $38                                         ; $63be: $ff
	or   $a1                                         ; $63bf: $f6 $a1
	dec  l                                           ; $63c1: $2d
	rst  $38                                         ; $63c2: $ff
	rst  $38                                         ; $63c3: $ff
	rst  $38                                         ; $63c4: $ff
	add  e                                           ; $63c5: $83
	ld   de, $1111                                   ; $63c6: $11 $11 $11
	rra                                              ; $63c9: $1f
	rst  $38                                         ; $63ca: $ff
	db   $f4                                         ; $63cb: $f4
	or   c                                           ; $63cc: $b1
	inc  e                                           ; $63cd: $1c
	rst  $38                                         ; $63ce: $ff
	ld   a, [$61ff]                                  ; $63cf: $fa $ff $61
	ld   d, $51                                      ; $63d2: $16 $51
	ld   de, $ff1f                                   ; $63d4: $11 $1f $ff
	rst  $30                                         ; $63d7: $f7
	or   c                                           ; $63d8: $b1
	dec  e                                           ; $63d9: $1d
	rst  $38                                         ; $63da: $ff
	cp   $fe                                         ; $63db: $fe $fe
	ld   h, c                                        ; $63dd: $61
	dec  d                                           ; $63de: $15
	ld   b, c                                        ; $63df: $41
	ld   de, $ff1f                                   ; $63e0: $11 $1f $ff
	add  d                                           ; $63e3: $82
	push de                                          ; $63e4: $d5
	ld   c, l                                        ; $63e5: $4d
	rst  $38                                         ; $63e6: $ff
	db   $db                                         ; $63e7: $db
	rst  $38                                         ; $63e8: $ff
	and  c                                           ; $63e9: $a1
	inc  de                                          ; $63ea: $13
	ld   d, c                                        ; $63eb: $51
	ld   de, $ff1f                                   ; $63ec: $11 $1f $ff
	push hl                                          ; $63ef: $e5
	sub  e                                           ; $63f0: $93
	ld   c, a                                        ; $63f1: $4f
	rst  $38                                         ; $63f2: $ff
	db   $eb                                         ; $63f3: $eb
	rst  $38                                         ; $63f4: $ff
	and  [hl]                                        ; $63f5: $a6
	inc  de                                          ; $63f6: $13
	ld   sp, $1a11                                   ; $63f7: $31 $11 $1a
	rst  $38                                         ; $63fa: $ff
	push af                                          ; $63fb: $f5
	call nz, $ff3e                                   ; $63fc: $c4 $3e $ff
	db   $fc                                         ; $63ff: $fc
	rst  $38                                         ; $6400: $ff
	or   a                                           ; $6401: $b7
	dec  d                                           ; $6402: $15
	ld   d, c                                        ; $6403: $51
	ld   de, rAUD1HIGH                                   ; $6404: $11 $14 $ff
	di                                               ; $6407: $f3
	ret  c                                           ; $6408: $d8

	inc  a                                           ; $6409: $3c
	rst  $38                                         ; $640a: $ff
	db   $db                                         ; $640b: $db
	rst  $38                                         ; $640c: $ff
	rst  $20                                         ; $640d: $e7
	ld   bc, $1121                                   ; $640e: $01 $21 $11
	ld   de, $b4ff                                   ; $6411: $11 $ff $b4
	adc  l                                           ; $6414: $8d
	ld   [hl], a                                     ; $6415: $77
	rst  $38                                         ; $6416: $ff
	db   $fc                                         ; $6417: $fc
	rst  $28                                         ; $6418: $ef
	ld   hl, sp+$11                                  ; $6419: $f8 $11
	inc  sp                                          ; $641b: $33
	ld   de, rAUD1LEN                                   ; $641c: $11 $11 $ff
	ld   hl, sp-$75                                  ; $641f: $f8 $8b
	ld   a, e                                        ; $6421: $7b
	adc  $fd                                         ; $6422: $ce $fd
	rst  $38                                         ; $6424: $ff
	db   $fd                                         ; $6425: $fd
	ld   b, c                                        ; $6426: $41
	ld   de, $1111                                   ; $6427: $11 $11 $11
	rst  $38                                         ; $642a: $ff
	ld   hl, sp+$4d                                  ; $642b: $f8 $4d
	ld   a, d                                        ; $642d: $7a
	adc  $fc                                         ; $642e: $ce $fc
	rst  $28                                         ; $6430: $ef
	db   $fd                                         ; $6431: $fd
	ld   d, c                                        ; $6432: $51
	ld   sp, $1111                                   ; $6433: $31 $11 $11
	rst  $38                                         ; $6436: $ff
	ld   hl, sp-$64                                  ; $6437: $f8 $9c
	sbc  l                                           ; $6439: $9d
	db   $ed                                         ; $643a: $ed
	db   $ec                                         ; $643b: $ec
	rst  $38                                         ; $643c: $ff
	ld   [$3154], a                                  ; $643d: $ea $54 $31
	ld   de, rAUD1LEN                                   ; $6440: $11 $11 $ff
	ld   sp, hl                                      ; $6443: $f9
	sbc  a                                           ; $6444: $9f
	ld   l, l                                        ; $6445: $6d
	call z, $fff9                                    ; $6446: $cc $f9 $ff
	db   $fd                                         ; $6449: $fd
	ld   b, c                                        ; $644a: $41
	ld   sp, $1111                                   ; $644b: $31 $11 $11
	rst  $38                                         ; $644e: $ff
	ld   hl, sp+$7f                                  ; $644f: $f8 $7f
	adc  $aa                                         ; $6451: $ce $aa
	db   $fd                                         ; $6453: $fd
	rst  $38                                         ; $6454: $ff
	cp   $71                                         ; $6455: $fe $71
	ld   de, $1111                                   ; $6457: $11 $11 $11
	rst  $38                                         ; $645a: $ff
	rst  $20                                         ; $645b: $e7
	sbc  a                                           ; $645c: $9f
	xor  h                                           ; $645d: $ac
	sbc  e                                           ; $645e: $9b
	ld   [$fcff], a                                  ; $645f: $ea $ff $fc
	ld   d, e                                        ; $6462: $53
	ld   de, $1211                                   ; $6463: $11 $11 $12
	rst  $38                                         ; $6466: $ff
	and  a                                           ; $6467: $a7
	cp   $9e                                         ; $6468: $fe $9e
	call c, $ffbb                                    ; $646a: $dc $bb $ff
	db   $db                                         ; $646d: $db
	ld   d, l                                        ; $646e: $55
	ld   de, $1111                                   ; $646f: $11 $11 $11
	rst  $38                                         ; $6472: $ff
	jp   $cbff                                       ; $6473: $c3 $ff $cb


	ld   e, a                                        ; $6476: $5f
	call c, $f9ff                                    ; $6477: $dc $ff $f9
	ld   b, h                                        ; $647a: $44
	ld   de, $1c11                                   ; $647b: $11 $11 $1c
	rst  $38                                         ; $647e: $ff
	or   a                                           ; $647f: $b7
	rst  $28                                         ; $6480: $ef
	db   $db                                         ; $6481: $db
	sbc  [hl]                                        ; $6482: $9e
	db   $dd                                         ; $6483: $dd
	rst  $38                                         ; $6484: $ff
	ld   sp, hl                                      ; $6485: $f9
	ld   sp, $1111                                   ; $6486: $31 $11 $11
	dec  de                                          ; $6489: $1b
	rst  $38                                         ; $648a: $ff
	ld   l, e                                        ; $648b: $6b
	cp   $e5                                         ; $648c: $fe $e5
	cp   l                                           ; $648e: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $648f: $cf
	rst  $38                                         ; $6490: $ff
	sub  $42                                         ; $6491: $d6 $42
	ld   de, $1f11                                   ; $6493: $11 $11 $1f
	db   $ec                                         ; $6496: $ec
	ld   a, l                                        ; $6497: $7d
	db   $fd                                         ; $6498: $fd
	add  sp, -$47                                    ; $6499: $e8 $b9
	cp   a                                           ; $649b: $bf
	rst  $38                                         ; $649c: $ff
	or   l                                           ; $649d: $b5
	ld   b, d                                        ; $649e: $42
	ld   de, $1e11                                   ; $649f: $11 $11 $1e
	cp   $6f                                         ; $64a2: $fe $6f
	db   $fd                                         ; $64a4: $fd
	or   l                                           ; $64a5: $b5
	xor  $ef                                         ; $64a6: $ee $ef
	rst  $38                                         ; $64a8: $ff
	add  $32                                         ; $64a9: $c6 $32
	ld   de, $3f11                                   ; $64ab: $11 $11 $3f
	cp   $7d                                         ; $64ae: $fe $7d
	db   $fd                                         ; $64b0: $fd
	add  $ce                                         ; $64b1: $c6 $ce
	rst  JumpTable                                         ; $64b3: $df
	rst  $38                                         ; $64b4: $ff
	add  $31                                         ; $64b5: $c6 $31
	ld   de, $3e11                                   ; $64b7: $11 $11 $3e

Call_0b5_64ba:
	cp   $9f                                         ; $64ba: $fe $9f
	db   $fd                                         ; $64bc: $fd
	sub  [hl]                                        ; $64bd: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64be: $cf
	rst  $28                                         ; $64bf: $ef
	rst  $38                                         ; $64c0: $ff
	rst  ToBoot                                         ; $64c1: $c7
	ld   hl, $1111                                   ; $64c2: $21 $11 $11
	ld   a, d                                        ; $64c5: $7a
	jp   z, $de8f                                    ; $64c6: $ca $8f $de

	or   l                                           ; $64c9: $b5
	call c, $ffef                                    ; $64ca: $dc $ef $ff
	rst  $10                                         ; $64cd: $d7
	ld   h, c                                        ; $64ce: $61
	ld   de, $1b11                                   ; $64cf: $11 $11 $1b
	reti                                             ; $64d2: $d9


	sbc  [hl]                                        ; $64d3: $9e
	rst  $38                                         ; $64d4: $ff
	or   a                                           ; $64d5: $b7
	cp   h                                           ; $64d6: $bc
	xor  $ff                                         ; $64d7: $ee $ff
	jp   hl                                          ; $64d9: $e9


	ld   b, c                                        ; $64da: $41
	ld   de, $4a11                                   ; $64db: $11 $11 $4a
	sbc  e                                           ; $64de: $9b
	adc  a                                           ; $64df: $8f
	cp   $d6                                         ; $64e0: $fe $d6
	cp   l                                           ; $64e2: $bd
	rst  JumpTable                                         ; $64e3: $df
	rst  $38                                         ; $64e4: $ff
	jp   hl                                          ; $64e5: $e9


	ld   h, e                                        ; $64e6: $63
	ld   de, $1811                                   ; $64e7: $11 $11 $18
	xor  d                                           ; $64ea: $aa
	ld   a, h                                        ; $64eb: $7c
	cp   $e8                                         ; $64ec: $fe $e8
	xor  l                                           ; $64ee: $ad
	cp   l                                           ; $64ef: $bd
	sbc  $fb                                         ; $64f0: $de $fb
	ld   [hl], h                                     ; $64f2: $74
	ld   de, $1411                                   ; $64f3: $11 $11 $14
	adc  b                                           ; $64f6: $88
	ld   a, b                                        ; $64f7: $78
	adc  $ea                                         ; $64f8: $ce $ea
	ld   a, c                                        ; $64fa: $79
	xor  l                                           ; $64fb: $ad
	cp   h                                           ; $64fc: $bc
	db   $ed                                         ; $64fd: $ed
	ret  z                                           ; $64fe: $c8

	ld   h, h                                        ; $64ff: $64
	ld   b, d                                        ; $6500: $42
	ld   de, $4456                                   ; $6501: $11 $56 $44
	ld   l, d                                        ; $6504: $6a
	xor  d                                           ; $6505: $aa
	add  a                                           ; $6506: $87
	xor  d                                           ; $6507: $aa
	xor  h                                           ; $6508: $ac
	sbc  $dc                                         ; $6509: $de $dc
	jp   z, Jump_0b5_6388                            ; $650b: $ca $88 $63

	inc  de                                          ; $650e: $13
	ld   [hl+], a                                    ; $650f: $22
	inc  hl                                          ; $6510: $23
	ld   h, a                                        ; $6511: $67
	sbc  c                                           ; $6512: $99
	ld   a, c                                        ; $6513: $79
	xor  d                                           ; $6514: $aa
	call z, $ffef                                    ; $6515: $cc $ef $ff
	db   $db                                         ; $6518: $db
	and  a                                           ; $6519: $a7
	ld   b, c                                        ; $651a: $41
	ld   [de], a                                     ; $651b: $12
	ld   de, $5712                                   ; $651c: $11 $12 $57
	halt                                             ; $651f: $76
	ld   a, c                                        ; $6520: $79
	cp   e                                           ; $6521: $bb
	adc  $ff                                         ; $6522: $ce $ff
	rst  $38                                         ; $6524: $ff
	db   $db                                         ; $6525: $db
	sub  [hl]                                        ; $6526: $96
	ld   sp, $0111                                   ; $6527: $31 $11 $01
	ld   [de], a                                     ; $652a: $12
	ld   b, [hl]                                     ; $652b: $46
	ld   h, [hl]                                     ; $652c: $66
	ld   a, c                                        ; $652d: $79
	cp   h                                           ; $652e: $bc
	rst  JumpTable                                         ; $652f: $df
	rst  $38                                         ; $6530: $ff
	rst  $38                                         ; $6531: $ff
	db   $ec                                         ; $6532: $ec
	and  [hl]                                        ; $6533: $a6
	ld   sp, $1111                                   ; $6534: $31 $11 $11
	ld   de, $5635                                   ; $6537: $11 $35 $56
	adc  c                                           ; $653a: $89
	cp   [hl]                                        ; $653b: $be
	rst  $38                                         ; $653c: $ff
	rst  $38                                         ; $653d: $ff
	rst  $38                                         ; $653e: $ff
	db   $fc                                         ; $653f: $fc
	and  a                                           ; $6540: $a7
	ld   sp, $1111                                   ; $6541: $31 $11 $11
	ld   de, $5635                                   ; $6544: $11 $35 $56
	adc  e                                           ; $6547: $8b
	call $ffff                                       ; $6548: $cd $ff $ff
	rst  $38                                         ; $654b: $ff
	cp   $b7                                         ; $654c: $fe $b7
	ld   sp, $1111                                   ; $654e: $31 $11 $11
	ld   de, $5635                                   ; $6551: $11 $35 $56
	sbc  e                                           ; $6554: $9b
	cp   l                                           ; $6555: $bd
	rst  JumpTable                                         ; $6556: $df
	rst  $38                                         ; $6557: $ff
	rst  $38                                         ; $6558: $ff
	cp   $a7                                         ; $6559: $fe $a7
	ld   b, c                                        ; $655b: $41
	ld   de, $1111                                   ; $655c: $11 $11 $11
	inc  h                                           ; $655f: $24
	ld   d, [hl]                                     ; $6560: $56
	adc  c                                           ; $6561: $89
	cp   h                                           ; $6562: $bc
	rst  JumpTable                                         ; $6563: $df
	rst  $38                                         ; $6564: $ff
	rst  $38                                         ; $6565: $ff
	rst  $38                                         ; $6566: $ff
	ret  c                                           ; $6567: $d8

	ld   d, d                                        ; $6568: $52
	ld   de, $1111                                   ; $6569: $11 $11 $11
	inc  bc                                          ; $656c: $03
	ld   d, [hl]                                     ; $656d: $56
	ld   a, c                                        ; $656e: $79
	xor  h                                           ; $656f: $ac
	rst  $28                                         ; $6570: $ef
	rst  $38                                         ; $6571: $ff
	rst  $38                                         ; $6572: $ff
	rst  $38                                         ; $6573: $ff
	jp   c, $1173                                    ; $6574: $da $73 $11

	ld   de, $1211                                   ; $6577: $11 $11 $12
	ld   b, h                                        ; $657a: $44
	ld   d, a                                        ; $657b: $57
	sbc  e                                           ; $657c: $9b
	call $ffff                                       ; $657d: $cd $ff $ff
	rst  $38                                         ; $6580: $ff
	db   $fc                                         ; $6581: $fc
	sub  [hl]                                        ; $6582: $96
	ld   sp, $1111                                   ; $6583: $31 $11 $11
	ld   de, $5624                                   ; $6586: $11 $24 $56
	adc  d                                           ; $6589: $8a
	cp   l                                           ; $658a: $bd
	rst  $38                                         ; $658b: $ff
	rst  $38                                         ; $658c: $ff
	rst  $38                                         ; $658d: $ff
	rst  $38                                         ; $658e: $ff
	ret                                              ; $658f: $c9


	ld   h, e                                        ; $6590: $63
	ld   de, $1111                                   ; $6591: $11 $11 $11
	ld   [de], a                                     ; $6594: $12
	inc  [hl]                                        ; $6595: $34
	ld   l, c                                        ; $6596: $69
	xor  e                                           ; $6597: $ab
	adc  $ff                                         ; $6598: $ce $ff
	rst  $38                                         ; $659a: $ff
	rst  $38                                         ; $659b: $ff
	db   $fc                                         ; $659c: $fc
	sub  a                                           ; $659d: $97
	ld   sp, $1111                                   ; $659e: $31 $11 $11
	ld   de, $5513                                   ; $65a1: $11 $13 $55
	ld   a, c                                        ; $65a4: $79
	xor  l                                           ; $65a5: $ad
	rst  $28                                         ; $65a6: $ef
	rst  $38                                         ; $65a7: $ff
	rst  $38                                         ; $65a8: $ff
	rst  $38                                         ; $65a9: $ff
	db   $eb                                         ; $65aa: $eb
	ld   [hl], h                                     ; $65ab: $74
	ld   hl, $1111                                   ; $65ac: $21 $11 $11
	ld   de, $5624                                   ; $65af: $11 $24 $56
	sbc  d                                           ; $65b2: $9a
	call $ffff                                       ; $65b3: $cd $ff $ff
	rst  $38                                         ; $65b6: $ff
	rst  $38                                         ; $65b7: $ff
	ret                                              ; $65b8: $c9


	ld   h, e                                        ; $65b9: $63
	ld   de, $1111                                   ; $65ba: $11 $11 $11
	ld   de, $5724                                   ; $65bd: $11 $24 $57
	sbc  d                                           ; $65c0: $9a
	call $ffff                                       ; $65c1: $cd $ff $ff
	rst  $38                                         ; $65c4: $ff
	cp   $b9                                         ; $65c5: $fe $b9
	ld   h, e                                        ; $65c7: $63
	ld   de, $1111                                   ; $65c8: $11 $11 $11
	ld   de, $5734                                   ; $65cb: $11 $34 $57
	sbc  e                                           ; $65ce: $9b
	cp   l                                           ; $65cf: $bd
	rst  $38                                         ; $65d0: $ff
	rst  $38                                         ; $65d1: $ff
	rst  $38                                         ; $65d2: $ff
	cp   $ca                                         ; $65d3: $fe $ca
	ld   [hl], h                                     ; $65d5: $74
	ld   hl, $1111                                   ; $65d6: $21 $11 $11
	ld   de, $4623                                   ; $65d9: $11 $23 $46
	adc  d                                           ; $65dc: $8a
	cp   e                                           ; $65dd: $bb
	rst  JumpTable                                         ; $65de: $df
	rst  $38                                         ; $65df: $ff
	rst  $38                                         ; $65e0: $ff
	rst  $38                                         ; $65e1: $ff
	db   $eb                                         ; $65e2: $eb
	add  [hl]                                        ; $65e3: $86
	ld   b, d                                        ; $65e4: $42
	ld   de, $1111                                   ; $65e5: $11 $11 $11
	inc  de                                          ; $65e8: $13
	inc  [hl]                                        ; $65e9: $34
	ld   e, b                                        ; $65ea: $58
	xor  d                                           ; $65eb: $aa
	call $ffff                                       ; $65ec: $cd $ff $ff
	rst  $38                                         ; $65ef: $ff
	db   $fd                                         ; $65f0: $fd
	jp   z, $3175                                    ; $65f1: $ca $75 $31

	ld   de, $1111                                   ; $65f4: $11 $11 $11
	inc  hl                                          ; $65f7: $23
	inc  [hl]                                        ; $65f8: $34
	ld   l, b                                        ; $65f9: $68
	xor  d                                           ; $65fa: $aa
	adc  $ff                                         ; $65fb: $ce $ff
	rst  $38                                         ; $65fd: $ff
	rst  $38                                         ; $65fe: $ff
	db   $ec                                         ; $65ff: $ec
	xor  c                                           ; $6600: $a9
	ld   [hl], l                                     ; $6601: $75
	inc  sp                                          ; $6602: $33
	ld   [hl-], a                                    ; $6603: $32
	ld   de, $2211                                   ; $6604: $11 $11 $22
	inc  h                                           ; $6607: $24
	ld   l, b                                        ; $6608: $68
	adc  d                                           ; $6609: $8a
	rst  JumpTable                                         ; $660a: $df
	rst  $38                                         ; $660b: $ff
	rst  $38                                         ; $660c: $ff
	rst  $38                                         ; $660d: $ff
	db   $fd                                         ; $660e: $fd
	jp   z, Jump_0b5_4486                            ; $660f: $ca $86 $44

	ld   [hl-], a                                    ; $6612: $32
	ld   de, $1111                                   ; $6613: $11 $11 $11
	inc  hl                                          ; $6616: $23
	ld   d, [hl]                                     ; $6617: $56
	ld   a, d                                        ; $6618: $7a
	cp   l                                           ; $6619: $bd
	rst  $28                                         ; $661a: $ef
	rst  $38                                         ; $661b: $ff
	rst  $38                                         ; $661c: $ff
	cp   $cc                                         ; $661d: $fe $cc
	sbc  b                                           ; $661f: $98
	ld   [hl], l                                     ; $6620: $75
	ld   b, e                                        ; $6621: $43
	ld   [hl+], a                                    ; $6622: $22
	ld   de, $1111                                   ; $6623: $11 $11 $11
	inc  [hl]                                        ; $6626: $34
	ld   d, a                                        ; $6627: $57
	ld   a, d                                        ; $6628: $7a
	xor  h                                           ; $6629: $ac
	db   $dd                                         ; $662a: $dd
	rst  $38                                         ; $662b: $ff
	cp   $ed                                         ; $662c: $fe $ed
	call $b9db                                       ; $662e: $cd $db $b9
	ld   [hl], l                                     ; $6631: $75
	ld   b, h                                        ; $6632: $44
	ld   b, d                                        ; $6633: $42
	ld   de, $2311                                   ; $6634: $11 $11 $23
	ld   d, a                                        ; $6637: $57
	adc  b                                           ; $6638: $88
	xor  e                                           ; $6639: $ab
	sbc  $ed                                         ; $663a: $de $ed
	sbc  $dc                                         ; $663c: $de $dc
	cp   e                                           ; $663e: $bb
	sbc  b                                           ; $663f: $98
	ld   [hl], a                                     ; $6640: $77
	halt                                             ; $6641: $76
	ld   d, h                                        ; $6642: $54
	ld   b, l                                        ; $6643: $45
	inc  [hl]                                        ; $6644: $34
	ld   b, h                                        ; $6645: $44
	ld   b, e                                        ; $6646: $43
	ld   b, h                                        ; $6647: $44
	ld   d, [hl]                                     ; $6648: $56
	ld   h, a                                        ; $6649: $67
	sbc  c                                           ; $664a: $99
	cp   [hl]                                        ; $664b: $be
	cp   $ef                                         ; $664c: $fe $ef
	rst  $28                                         ; $664e: $ef
	db   $fd                                         ; $664f: $fd
	cp   $aa                                         ; $6650: $fe $aa
	add  [hl]                                        ; $6652: $86
	ld   d, h                                        ; $6653: $54
	ld   b, e                                        ; $6654: $43
	inc  [hl]                                        ; $6655: $34
	ld   [hl+], a                                    ; $6656: $22
	inc  hl                                          ; $6657: $23
	ld   d, [hl]                                     ; $6658: $56
	ld   a, b                                        ; $6659: $78
	sbc  b                                           ; $665a: $98
	ld   [hl], a                                     ; $665b: $77
	sbc  d                                           ; $665c: $9a
	sbc  d                                           ; $665d: $9a
	xor  e                                           ; $665e: $ab
	jp   z, $a8cb                                    ; $665f: $ca $cb $a8

	ld   a, b                                        ; $6662: $78
	sub  a                                           ; $6663: $97
	ld   h, l                                        ; $6664: $65
	inc  [hl]                                        ; $6665: $34
	ld   hl, $5524                                   ; $6666: $21 $24 $55
	ld   d, a                                        ; $6669: $57
	xor  c                                           ; $666a: $a9
	xor  e                                           ; $666b: $ab
	call $efcd                                       ; $666c: $cd $cd $ef
	call c, $a9cc                                    ; $666f: $dc $cc $a9
	add  [hl]                                        ; $6672: $86
	ld   b, d                                        ; $6673: $42
	ld   hl, $1111                                   ; $6674: $21 $11 $11
	ld   de, $9949                                   ; $6677: $11 $49 $99
	rst  JumpTable                                         ; $667a: $df
	db   $fd                                         ; $667b: $fd
	rst  $28                                         ; $667c: $ef
	rst  $38                                         ; $667d: $ff
	rst  JumpTable                                         ; $667e: $df
	cp   $ab                                         ; $667f: $fe $ab
	and  a                                           ; $6681: $a7
	ld   [hl-], a                                    ; $6682: $32
	ld   hl, $1111                                   ; $6683: $21 $11 $11
	ld   de, $8c15                                   ; $6686: $11 $15 $8c
	xor  [hl]                                        ; $6689: $ae
	rst  $38                                         ; $668a: $ff
	rst  JumpTable                                         ; $668b: $df
	rst  $38                                         ; $668c: $ff
	rst  $38                                         ; $668d: $ff
	rst  $38                                         ; $668e: $ff
	ret                                              ; $668f: $c9


	xor  b                                           ; $6690: $a8
	ld   sp, $1111                                   ; $6691: $31 $11 $11
	ld   de, $1911                                   ; $6694: $11 $11 $19
	rst  $28                                         ; $6697: $ef
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	adc  $ff                                         ; $669a: $ce $ff
	sbc  $fe                                         ; $669c: $de $fe
	sbc  c                                           ; $669e: $99
	ld   [hl], l                                     ; $669f: $75
	ld   de, $1111                                   ; $66a0: $11 $11 $11
	ld   de, $8e11                                   ; $66a3: $11 $11 $8e
	rst  $38                                         ; $66a6: $ff
	rst  $38                                         ; $66a7: $ff
	db   $fd                                         ; $66a8: $fd
	rst  $38                                         ; $66a9: $ff
	db   $fd                                         ; $66aa: $fd
	rst  $28                                         ; $66ab: $ef
	ret  c                                           ; $66ac: $d8

	ld   [hl], l                                     ; $66ad: $75
	ld   sp, $1111                                   ; $66ae: $31 $11 $11
	ld   de, $1921                                   ; $66b1: $11 $21 $19
	rst  $38                                         ; $66b4: $ff
	rst  $38                                         ; $66b5: $ff
	rst  $38                                         ; $66b6: $ff
	call z, $efff                                    ; $66b7: $cc $ff $ef
	ei                                               ; $66ba: $fb
	ld   [hl], l                                     ; $66bb: $75
	ld   hl, $1111                                   ; $66bc: $21 $11 $11
	ld   de, $3a21                                   ; $66bf: $11 $21 $3a
	rst  $38                                         ; $66c2: $ff
	rst  $38                                         ; $66c3: $ff
	rst  $38                                         ; $66c4: $ff
	rst  $28                                         ; $66c5: $ef
	cp   $ef                                         ; $66c6: $fe $ef
	ld   sp, hl                                      ; $66c8: $f9
	ld   h, l                                        ; $66c9: $65
	ld   de, $1111                                   ; $66ca: $11 $11 $11
	ld   de, $3c41                                   ; $66cd: $11 $41 $3c
	rst  $38                                         ; $66d0: $ff
	rst  $38                                         ; $66d1: $ff
	rst  $38                                         ; $66d2: $ff
	db   $dd                                         ; $66d3: $dd
	rst  $38                                         ; $66d4: $ff
	call c, Call_0b5_62da                            ; $66d5: $dc $da $62
	ld   de, $1111                                   ; $66d8: $11 $11 $11
	ld   de, $5f11                                   ; $66db: $11 $11 $5f
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
	rst  $38                                         ; $66e0: $ff
	rst  $28                                         ; $66e1: $ef
	ei                                               ; $66e2: $fb
	rst  $28                                         ; $66e3: $ef
	or   a                                           ; $66e4: $b7
	ld   d, l                                        ; $66e5: $55
	ld   de, $1111                                   ; $66e6: $11 $11 $11
	ld   de, $6e21                                   ; $66e9: $11 $21 $6e
	rst  $38                                         ; $66ec: $ff
	rst  $38                                         ; $66ed: $ff
	rst  $38                                         ; $66ee: $ff
	xor  $fd                                         ; $66ef: $ee $fd
	rst  JumpTable                                         ; $66f1: $df
	cp   b                                           ; $66f2: $b8
	ld   h, d                                        ; $66f3: $62
	ld   de, $1111                                   ; $66f4: $11 $11 $11
	ld   de, $4d21                                   ; $66f7: $11 $21 $4d
	rst  $38                                         ; $66fa: $ff
	rst  $38                                         ; $66fb: $ff
	rst  $38                                         ; $66fc: $ff
	xor  $ee                                         ; $66fd: $ee $ee
	db   $ed                                         ; $66ff: $ed
	jp   c, $1174                                    ; $6700: $da $74 $11

	ld   de, $1111                                   ; $6703: $11 $11 $11
	ld   hl, $ef6c                                   ; $6706: $21 $6c $ef
	rst  $38                                         ; $6709: $ff
	rst  $38                                         ; $670a: $ff
	rst  $38                                         ; $670b: $ff
	cp   [hl]                                        ; $670c: $be
	cp   $d8                                         ; $670d: $fe $d8
	sub  [hl]                                        ; $670f: $96
	ld   de, $1111                                   ; $6710: $11 $11 $11
	ld   de, $1a21                                   ; $6713: $11 $21 $1a
	rst  $28                                         ; $6716: $ef
	rst  $38                                         ; $6717: $ff
	rst  $38                                         ; $6718: $ff
	rst  JumpTable                                         ; $6719: $df
	ei                                               ; $671a: $fb
	sbc  $ea                                         ; $671b: $de $ea
	ld   [hl], a                                     ; $671d: $77
	ld   b, c                                        ; $671e: $41
	ld   de, $1111                                   ; $671f: $11 $11 $11
	ld   de, $de19                                   ; $6722: $11 $19 $de
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	xor  $dc                                         ; $6727: $ee $dc
	rst  $28                                         ; $6729: $ef
	db   $fc                                         ; $672a: $fc
	sbc  b                                           ; $672b: $98
	ld   b, c                                        ; $672c: $41
	ld   de, $1111                                   ; $672d: $11 $11 $11
	ld   [de], a                                     ; $6730: $12
	inc  de                                          ; $6731: $13
	xor  [hl]                                        ; $6732: $ae
	rst  $38                                         ; $6733: $ff
	rst  $38                                         ; $6734: $ff
	rst  $38                                         ; $6735: $ff
	rst  JumpTable                                         ; $6736: $df
	db   $fc                                         ; $6737: $fc
	cp   $99                                         ; $6738: $fe $99
	ld   [hl], l                                     ; $673a: $75
	ld   de, $1111                                   ; $673b: $11 $11 $11
	ld   de, $4b11                                   ; $673e: $11 $11 $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6741: $cf
	rst  $38                                         ; $6742: $ff
	rst  $38                                         ; $6743: $ff
	rst  $28                                         ; $6744: $ef
	call c, $d9df                                    ; $6745: $dc $df $d9
	xor  b                                           ; $6748: $a8
	ld   sp, $1111                                   ; $6749: $31 $11 $11
	ld   de, $1311                                   ; $674c: $11 $11 $13
	xor  e                                           ; $674f: $ab
	rst  $38                                         ; $6750: $ff
	rst  $38                                         ; $6751: $ff
	db   $fd                                         ; $6752: $fd
	xor  $cd                                         ; $6753: $ee $cd
	cp   $9a                                         ; $6755: $fe $9a
	add  [hl]                                        ; $6757: $86
	ld   de, $1111                                   ; $6758: $11 $11 $11
	ld   de, $2911                                   ; $675b: $11 $11 $29
	cp   h                                           ; $675e: $bc
	rst  $38                                         ; $675f: $ff
	rst  $38                                         ; $6760: $ff
	cp   $dc                                         ; $6761: $fe $dc
	rst  $28                                         ; $6763: $ef
	res  5, c                                        ; $6764: $cb $a9
	ld   h, c                                        ; $6766: $61
	ld   [de], a                                     ; $6767: $12
	ld   bc, $1111                                   ; $6768: $01 $11 $11
	ld   [de], a                                     ; $676b: $12
	ld   h, [hl]                                     ; $676c: $66
	cp   a                                           ; $676d: $bf
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	db   $fd                                         ; $6770: $fd
	rst  JumpTable                                         ; $6771: $df
	db   $ed                                         ; $6772: $ed
	cp   d                                           ; $6773: $ba
	or   [hl]                                        ; $6774: $b6
	ld   d, e                                        ; $6775: $53
	ld   de, $1112                                   ; $6776: $11 $12 $11
	ld   de, $2922                                   ; $6779: $11 $22 $29
	cp   h                                           ; $677c: $bc
	rst  $38                                         ; $677d: $ff
	rst  $38                                         ; $677e: $ff
	db   $dd                                         ; $677f: $dd
	db   $ed                                         ; $6780: $ed
	db   $dd                                         ; $6781: $dd
	call c, $64a7                                    ; $6782: $dc $a7 $64
	ld   de, $1311                                   ; $6785: $11 $11 $13
	ld   hl, $2312                                   ; $6788: $21 $12 $23
	sbc  l                                           ; $678b: $9d
	rst  $28                                         ; $678c: $ef
	rst  $38                                         ; $678d: $ff
	xor  $de                                         ; $678e: $ee $de
	cp   e                                           ; $6790: $bb
	db   $ec                                         ; $6791: $ec
	sbc  c                                           ; $6792: $99
	ld   h, [hl]                                     ; $6793: $66
	ld   sp, $3243                                   ; $6794: $31 $43 $32
	ld   [hl-], a                                    ; $6797: $32
	ld   de, $4622                                   ; $6798: $11 $22 $46
	xor  l                                           ; $679b: $ad
	rst  $28                                         ; $679c: $ef
	rst  $38                                         ; $679d: $ff
	db   $dd                                         ; $679e: $dd
	call $babb                                       ; $679f: $cd $bb $ba
	and  a                                           ; $67a2: $a7
	ld   [hl], l                                     ; $67a3: $75
	inc  [hl]                                        ; $67a4: $34
	inc  sp                                          ; $67a5: $33
	inc  sp                                          ; $67a6: $33

Jump_0b5_67a7:
	inc  sp                                          ; $67a7: $33
	inc  hl                                          ; $67a8: $23
	ld   b, h                                        ; $67a9: $44
	ld   h, a                                        ; $67aa: $67
	sbc  h                                           ; $67ab: $9c
	rst  JumpTable                                         ; $67ac: $df
	db   $ed                                         ; $67ad: $ed
	db   $db                                         ; $67ae: $db
	xor  d                                           ; $67af: $aa
	xor  l                                           ; $67b0: $ad
	jp   z, $aaab                                    ; $67b1: $ca $ab $aa

	ld   d, e                                        ; $67b4: $53
	ld   h, h                                        ; $67b5: $64
	inc  hl                                          ; $67b6: $23
	ld   h, [hl]                                     ; $67b7: $66
	ld   b, d                                        ; $67b8: $42
	ld   b, h                                        ; $67b9: $44
	dec  [hl]                                        ; $67ba: $35
	ld   a, d                                        ; $67bb: $7a
	cp   h                                           ; $67bc: $bc
	db   $dd                                         ; $67bd: $dd
	cp   e                                           ; $67be: $bb
	xor  c                                           ; $67bf: $a9
	sbc  c                                           ; $67c0: $99
	call $daac                                       ; $67c1: $cd $ac $da
	ld   h, l                                        ; $67c4: $65
	ld   [hl], a                                     ; $67c5: $77
	ld   b, h                                        ; $67c6: $44
	sub  a                                           ; $67c7: $97
	inc  hl                                          ; $67c8: $23
	ld   b, h                                        ; $67c9: $44
	ld   de, $7768                                   ; $67ca: $11 $68 $77
	sbc  h                                           ; $67cd: $9c
	or   a                                           ; $67ce: $b7
	sbc  l                                           ; $67cf: $9d
	cp   c                                           ; $67d0: $b9
	sbc  e                                           ; $67d1: $9b
	res  7, e                                        ; $67d2: $cb $bb
	xor  d                                           ; $67d4: $aa
	ld   a, c                                        ; $67d5: $79
	and  [hl]                                        ; $67d6: $a6
	adc  d                                           ; $67d7: $8a
	ld   h, l                                        ; $67d8: $65
	ld   [hl], l                                     ; $67d9: $75
	ld   b, e                                        ; $67da: $43
	ld   d, [hl]                                     ; $67db: $56
	ld   d, l                                        ; $67dc: $55
	ld   d, a                                        ; $67dd: $57
	ld   h, a                                        ; $67de: $67
	xor  d                                           ; $67df: $aa
	xor  d                                           ; $67e0: $aa
	cp   d                                           ; $67e1: $ba
	sbc  d                                           ; $67e2: $9a
	cp   c                                           ; $67e3: $b9
	cp   d                                           ; $67e4: $ba
	jp   z, $9578                                    ; $67e5: $ca $78 $95

	ld   c, b                                        ; $67e8: $48
	and  [hl]                                        ; $67e9: $a6
	ld   d, a                                        ; $67ea: $57
	sbc  b                                           ; $67eb: $98
	ld   d, a                                        ; $67ec: $57
	sub  l                                           ; $67ed: $95
	ld   h, [hl]                                     ; $67ee: $66
	sbc  b                                           ; $67ef: $98
	ld   d, a                                        ; $67f0: $57
	adc  b                                           ; $67f1: $88
	adc  c                                           ; $67f2: $89
	cp   e                                           ; $67f3: $bb
	adc  b                                           ; $67f4: $88
	sbc  c                                           ; $67f5: $99
	adc  c                                           ; $67f6: $89
	sbc  b                                           ; $67f7: $98
	sbc  b                                           ; $67f8: $98
	ld   a, b                                        ; $67f9: $78
	sbc  c                                           ; $67fa: $99
	ld   l, c                                        ; $67fb: $69
	adc  b                                           ; $67fc: $88
	add  [hl]                                        ; $67fd: $86
	sbc  e                                           ; $67fe: $9b
	ld   h, [hl]                                     ; $67ff: $66
	sbc  c                                           ; $6800: $99
	ld   a, b                                        ; $6801: $78
	adc  c                                           ; $6802: $89
	ld   [hl], a                                     ; $6803: $77
	ld   [hl], a                                     ; $6804: $77
	adc  b                                           ; $6805: $88
	ld   a, c                                        ; $6806: $79
	adc  c                                           ; $6807: $89
	add  [hl]                                        ; $6808: $86
	sbc  c                                           ; $6809: $99
	ld   a, b                                        ; $680a: $78
	adc  c                                           ; $680b: $89
	adc  b                                           ; $680c: $88
	sbc  c                                           ; $680d: $99
	sbc  b                                           ; $680e: $98
	ld   [hl], a                                     ; $680f: $77
	xor  b                                           ; $6810: $a8
	ld   l, d                                        ; $6811: $6a
	and  a                                           ; $6812: $a7
	adc  c                                           ; $6813: $89
	sub  a                                           ; $6814: $97
	ld   l, b                                        ; $6815: $68
	sub  a                                           ; $6816: $97
	ld   a, b                                        ; $6817: $78
	add  a                                           ; $6818: $87
	ld   l, b                                        ; $6819: $68
	add  a                                           ; $681a: $87
	ld   a, b                                        ; $681b: $78
	sub  a                                           ; $681c: $97
	adc  c                                           ; $681d: $89
	ld   a, b                                        ; $681e: $78
	xor  c                                           ; $681f: $a9
	ld   a, b                                        ; $6820: $78
	add  a                                           ; $6821: $87
	ld   l, b                                        ; $6822: $68
	xor  b                                           ; $6823: $a8
	ld   a, c                                        ; $6824: $79
	sub  a                                           ; $6825: $97
	adc  b                                           ; $6826: $88
	ld   a, b                                        ; $6827: $78
	add  a                                           ; $6828: $87
	adc  b                                           ; $6829: $88
	ld   a, b                                        ; $682a: $78
	ld   [hl], a                                     ; $682b: $77
	adc  c                                           ; $682c: $89
	add  a                                           ; $682d: $87
	adc  b                                           ; $682e: $88
	sub  a                                           ; $682f: $97
	ld   h, a                                        ; $6830: $67
	adc  b                                           ; $6831: $88
	ld   [hl], a                                     ; $6832: $77
	adc  b                                           ; $6833: $88
	ld   l, b                                        ; $6834: $68
	sub  a                                           ; $6835: $97
	ld   [hl], a                                     ; $6836: $77
	adc  c                                           ; $6837: $89
	sub  a                                           ; $6838: $97
	ld   a, c                                        ; $6839: $79
	sbc  c                                           ; $683a: $99
	adc  b                                           ; $683b: $88
	ld   a, c                                        ; $683c: $79
	sub  a                                           ; $683d: $97
	adc  b                                           ; $683e: $88
	ld   [hl], a                                     ; $683f: $77
	ld   a, b                                        ; $6840: $78
	sub  a                                           ; $6841: $97
	adc  b                                           ; $6842: $88
	sbc  b                                           ; $6843: $98
	ld   a, b                                        ; $6844: $78
	ld   [hl], a                                     ; $6845: $77
	ld   [hl], a                                     ; $6846: $77
	sub  a                                           ; $6847: $97
	ld   a, b                                        ; $6848: $78
	ld   a, b                                        ; $6849: $78
	ld   a, b                                        ; $684a: $78
	sbc  b                                           ; $684b: $98
	ld   a, b                                        ; $684c: $78
	sbc  b                                           ; $684d: $98
	ld   a, b                                        ; $684e: $78
	sbc  c                                           ; $684f: $99
	ld   a, b                                        ; $6850: $78
	adc  b                                           ; $6851: $88
	ld   [hl], a                                     ; $6852: $77
	sbc  b                                           ; $6853: $98
	ld   a, c                                        ; $6854: $79
	sub  a                                           ; $6855: $97
	add  a                                           ; $6856: $87
	ld   [hl], a                                     ; $6857: $77
	adc  b                                           ; $6858: $88
	adc  b                                           ; $6859: $88
	add  a                                           ; $685a: $87
	ld   a, b                                        ; $685b: $78
	adc  b                                           ; $685c: $88
	ld   a, b                                        ; $685d: $78
	adc  b                                           ; $685e: $88
	ld   a, b                                        ; $685f: $78
	sbc  b                                           ; $6860: $98
	ld   a, b                                        ; $6861: $78
	sub  a                                           ; $6862: $97
	adc  b                                           ; $6863: $88
	sbc  b                                           ; $6864: $98
	ld   a, b                                        ; $6865: $78
	ld   a, b                                        ; $6866: $78
	adc  b                                           ; $6867: $88
	adc  b                                           ; $6868: $88
	ld   [hl], a                                     ; $6869: $77
	adc  b                                           ; $686a: $88
	add  a                                           ; $686b: $87
	adc  b                                           ; $686c: $88
	ld   a, b                                        ; $686d: $78
	sbc  b                                           ; $686e: $98
	ld   [hl], a                                     ; $686f: $77
	adc  b                                           ; $6870: $88
	ld   a, b                                        ; $6871: $78
	adc  b                                           ; $6872: $88
	adc  b                                           ; $6873: $88
	adc  b                                           ; $6874: $88
	add  a                                           ; $6875: $87
	adc  b                                           ; $6876: $88
	adc  b                                           ; $6877: $88
	adc  b                                           ; $6878: $88
	adc  b                                           ; $6879: $88
	adc  b                                           ; $687a: $88
	ld   a, b                                        ; $687b: $78
	add  a                                           ; $687c: $87
	adc  b                                           ; $687d: $88
	adc  b                                           ; $687e: $88
	adc  b                                           ; $687f: $88
	adc  b                                           ; $6880: $88
	adc  b                                           ; $6881: $88
	adc  b                                           ; $6882: $88
	adc  b                                           ; $6883: $88
	adc  b                                           ; $6884: $88
	sub  a                                           ; $6885: $97
	ld   a, c                                        ; $6886: $79
	sbc  b                                           ; $6887: $98
	adc  c                                           ; $6888: $89
	sbc  b                                           ; $6889: $98
	ld   a, b                                        ; $688a: $78
	adc  b                                           ; $688b: $88
	adc  b                                           ; $688c: $88
	adc  b                                           ; $688d: $88
	adc  b                                           ; $688e: $88
	adc  b                                           ; $688f: $88
	sbc  b                                           ; $6890: $98
	adc  b                                           ; $6891: $88
	adc  c                                           ; $6892: $89
	adc  b                                           ; $6893: $88
	adc  b                                           ; $6894: $88
	adc  b                                           ; $6895: $88
	adc  b                                           ; $6896: $88
	adc  b                                           ; $6897: $88
	sbc  b                                           ; $6898: $98
	adc  c                                           ; $6899: $89
	adc  b                                           ; $689a: $88
	sbc  c                                           ; $689b: $99
	sbc  b                                           ; $689c: $98
	adc  b                                           ; $689d: $88
	sbc  b                                           ; $689e: $98
	adc  b                                           ; $689f: $88
	adc  c                                           ; $68a0: $89
	adc  b                                           ; $68a1: $88
	adc  b                                           ; $68a2: $88
	adc  b                                           ; $68a3: $88
	adc  b                                           ; $68a4: $88
	adc  b                                           ; $68a5: $88
	adc  b                                           ; $68a6: $88
	adc  b                                           ; $68a7: $88
	adc  b                                           ; $68a8: $88
	sbc  c                                           ; $68a9: $99
	sbc  b                                           ; $68aa: $98
	adc  b                                           ; $68ab: $88
	adc  c                                           ; $68ac: $89
	adc  c                                           ; $68ad: $89
	adc  b                                           ; $68ae: $88
	sbc  b                                           ; $68af: $98
	adc  b                                           ; $68b0: $88
	adc  b                                           ; $68b1: $88
	adc  b                                           ; $68b2: $88
	adc  b                                           ; $68b3: $88
	adc  b                                           ; $68b4: $88
	adc  b                                           ; $68b5: $88
	ld   a, c                                        ; $68b6: $79
	sbc  b                                           ; $68b7: $98
	sbc  b                                           ; $68b8: $98
	adc  c                                           ; $68b9: $89
	sbc  b                                           ; $68ba: $98
	sbc  c                                           ; $68bb: $99
	adc  b                                           ; $68bc: $88
	adc  c                                           ; $68bd: $89
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
	adc  c                                           ; $68c9: $89
	sbc  c                                           ; $68ca: $99
	adc  b                                           ; $68cb: $88
	adc  c                                           ; $68cc: $89
	sbc  c                                           ; $68cd: $99
	adc  c                                           ; $68ce: $89
	adc  b                                           ; $68cf: $88
	adc  b                                           ; $68d0: $88
	adc  b                                           ; $68d1: $88
	adc  b                                           ; $68d2: $88
	sbc  b                                           ; $68d3: $98
	adc  b                                           ; $68d4: $88
	adc  b                                           ; $68d5: $88
	adc  b                                           ; $68d6: $88
	sbc  b                                           ; $68d7: $98
	sbc  b                                           ; $68d8: $98
	adc  c                                           ; $68d9: $89
	sbc  b                                           ; $68da: $98
	adc  b                                           ; $68db: $88
	adc  b                                           ; $68dc: $88
	sbc  b                                           ; $68dd: $98
	adc  c                                           ; $68de: $89
	adc  b                                           ; $68df: $88
	adc  b                                           ; $68e0: $88
	adc  b                                           ; $68e1: $88
	adc  b                                           ; $68e2: $88
	adc  b                                           ; $68e3: $88
	adc  b                                           ; $68e4: $88
	adc  b                                           ; $68e5: $88
	adc  b                                           ; $68e6: $88
	sbc  b                                           ; $68e7: $98
	adc  b                                           ; $68e8: $88
	add  a                                           ; $68e9: $87
	adc  b                                           ; $68ea: $88
	adc  b                                           ; $68eb: $88
	adc  b                                           ; $68ec: $88
	adc  b                                           ; $68ed: $88
	ld   a, b                                        ; $68ee: $78
	sbc  c                                           ; $68ef: $99
	adc  b                                           ; $68f0: $88
	adc  b                                           ; $68f1: $88
	adc  b                                           ; $68f2: $88
	sbc  c                                           ; $68f3: $99
	adc  b                                           ; $68f4: $88
	adc  b                                           ; $68f5: $88
	adc  b                                           ; $68f6: $88
	adc  b                                           ; $68f7: $88
	adc  c                                           ; $68f8: $89
	adc  b                                           ; $68f9: $88
	adc  b                                           ; $68fa: $88
	adc  b                                           ; $68fb: $88
	adc  c                                           ; $68fc: $89
	sbc  b                                           ; $68fd: $98
	adc  b                                           ; $68fe: $88
	adc  b                                           ; $68ff: $88
	add  a                                           ; $6900: $87
	sbc  c                                           ; $6901: $99
	adc  b                                           ; $6902: $88
	adc  c                                           ; $6903: $89
	adc  b                                           ; $6904: $88
	ld   a, b                                        ; $6905: $78
	adc  b                                           ; $6906: $88
	adc  b                                           ; $6907: $88
	adc  c                                           ; $6908: $89
	add  a                                           ; $6909: $87
	sbc  c                                           ; $690a: $99
	ld   a, b                                        ; $690b: $78
	sbc  b                                           ; $690c: $98
	sbc  b                                           ; $690d: $98
	ld   a, b                                        ; $690e: $78
	ld   a, b                                        ; $690f: $78
	sbc  b                                           ; $6910: $98
	adc  c                                           ; $6911: $89
	adc  b                                           ; $6912: $88
	sbc  b                                           ; $6913: $98
	adc  b                                           ; $6914: $88
	adc  c                                           ; $6915: $89
	adc  b                                           ; $6916: $88
	adc  b                                           ; $6917: $88
	sbc  b                                           ; $6918: $98
	adc  b                                           ; $6919: $88
	adc  b                                           ; $691a: $88
	adc  b                                           ; $691b: $88
	adc  c                                           ; $691c: $89
	sbc  c                                           ; $691d: $99
	ld   a, b                                        ; $691e: $78
	sbc  b                                           ; $691f: $98
	ld   a, b                                        ; $6920: $78
	adc  c                                           ; $6921: $89
	add  a                                           ; $6922: $87
	adc  b                                           ; $6923: $88
	ld   a, c                                        ; $6924: $79
	ld   a, b                                        ; $6925: $78
	adc  c                                           ; $6926: $89
	adc  b                                           ; $6927: $88
	adc  b                                           ; $6928: $88
	ld   a, b                                        ; $6929: $78
	adc  b                                           ; $692a: $88
	sbc  b                                           ; $692b: $98
	ld   a, b                                        ; $692c: $78
	adc  b                                           ; $692d: $88
	adc  b                                           ; $692e: $88
	adc  b                                           ; $692f: $88
	ld   a, b                                        ; $6930: $78
	adc  b                                           ; $6931: $88
	adc  b                                           ; $6932: $88
	sbc  c                                           ; $6933: $99
	adc  b                                           ; $6934: $88
	adc  b                                           ; $6935: $88
	adc  b                                           ; $6936: $88
	adc  b                                           ; $6937: $88
	sbc  b                                           ; $6938: $98
	ld   a, b                                        ; $6939: $78
	sbc  b                                           ; $693a: $98
	ld   a, b                                        ; $693b: $78
	sbc  b                                           ; $693c: $98
	add  a                                           ; $693d: $87
	sbc  b                                           ; $693e: $98
	add  a                                           ; $693f: $87
	adc  c                                           ; $6940: $89
	adc  b                                           ; $6941: $88
	ld   a, b                                        ; $6942: $78
	sbc  b                                           ; $6943: $98
	adc  b                                           ; $6944: $88
	adc  b                                           ; $6945: $88
	add  a                                           ; $6946: $87
	adc  b                                           ; $6947: $88
	sbc  b                                           ; $6948: $98
	ld   a, c                                        ; $6949: $79
	add  a                                           ; $694a: $87
	add  a                                           ; $694b: $87
	ld   a, b                                        ; $694c: $78
	adc  c                                           ; $694d: $89
	add  a                                           ; $694e: $87
	adc  b                                           ; $694f: $88
	sub  a                                           ; $6950: $97
	ld   a, b                                        ; $6951: $78
	ld   a, b                                        ; $6952: $78
	adc  c                                           ; $6953: $89
	sbc  c                                           ; $6954: $99
	add  a                                           ; $6955: $87
	adc  b                                           ; $6956: $88
	sbc  b                                           ; $6957: $98
	adc  b                                           ; $6958: $88
	add  a                                           ; $6959: $87
	ld   [hl], a                                     ; $695a: $77
	adc  b                                           ; $695b: $88
	ld   a, b                                        ; $695c: $78
	add  a                                           ; $695d: $87
	ld   [hl], a                                     ; $695e: $77
	sbc  b                                           ; $695f: $98
	ld   [hl], a                                     ; $6960: $77
	adc  b                                           ; $6961: $88
	sub  a                                           ; $6962: $97
	adc  c                                           ; $6963: $89
	add  a                                           ; $6964: $87
	ld   a, c                                        ; $6965: $79
	sub  a                                           ; $6966: $97
	ld   a, b                                        ; $6967: $78
	sbc  c                                           ; $6968: $99
	adc  b                                           ; $6969: $88
	adc  c                                           ; $696a: $89
	add  [hl]                                        ; $696b: $86
	ld   a, d                                        ; $696c: $7a
	adc  b                                           ; $696d: $88
	sbc  c                                           ; $696e: $99
	adc  b                                           ; $696f: $88
	ld   [hl], a                                     ; $6970: $77
	adc  c                                           ; $6971: $89
	add  a                                           ; $6972: $87
	adc  b                                           ; $6973: $88
	add  [hl]                                        ; $6974: $86
	adc  b                                           ; $6975: $88

Call_0b5_6976:
	adc  c                                           ; $6976: $89
	ld   a, b                                        ; $6977: $78
	ld   a, b                                        ; $6978: $78
	adc  b                                           ; $6979: $88
	xor  b                                           ; $697a: $a8
	ld   a, b                                        ; $697b: $78
	sub  a                                           ; $697c: $97
	ld   a, b                                        ; $697d: $78
	sbc  c                                           ; $697e: $99
	ld   [hl], a                                     ; $697f: $77
	add  a                                           ; $6980: $87
	adc  c                                           ; $6981: $89
	ld   a, c                                        ; $6982: $79
	add  a                                           ; $6983: $87
	add  a                                           ; $6984: $87
	adc  d                                           ; $6985: $8a
	add  a                                           ; $6986: $87
	adc  c                                           ; $6987: $89
	add  a                                           ; $6988: $87
	adc  b                                           ; $6989: $88
	adc  b                                           ; $698a: $88
	adc  b                                           ; $698b: $88
	sbc  c                                           ; $698c: $99
	ld   [hl], a                                     ; $698d: $77
	ld   a, b                                        ; $698e: $78
	sbc  b                                           ; $698f: $98
	adc  b                                           ; $6990: $88
	ld   a, c                                        ; $6991: $79
	ld   [hl], a                                     ; $6992: $77
	sbc  c                                           ; $6993: $99
	adc  b                                           ; $6994: $88
	ld   a, c                                        ; $6995: $79
	sub  a                                           ; $6996: $97
	adc  c                                           ; $6997: $89
	adc  c                                           ; $6998: $89
	sbc  b                                           ; $6999: $98
	ld   a, b                                        ; $699a: $78
	sbc  c                                           ; $699b: $99
	ld   h, a                                        ; $699c: $67
	adc  b                                           ; $699d: $88
	ld   [hl], a                                     ; $699e: $77
	sbc  c                                           ; $699f: $99
	ld   [hl], a                                     ; $69a0: $77
	adc  b                                           ; $69a1: $88
	adc  b                                           ; $69a2: $88
	adc  b                                           ; $69a3: $88
	sbc  b                                           ; $69a4: $98
	ld   a, c                                        ; $69a5: $79
	add  a                                           ; $69a6: $87
	sub  a                                           ; $69a7: $97
	sbc  c                                           ; $69a8: $99
	sbc  b                                           ; $69a9: $98
	ld   a, b                                        ; $69aa: $78
	sbc  c                                           ; $69ab: $99
	sbc  c                                           ; $69ac: $99
	xor  c                                           ; $69ad: $a9
	adc  b                                           ; $69ae: $88
	sbc  c                                           ; $69af: $99
	sub  a                                           ; $69b0: $97
	ld   [hl], a                                     ; $69b1: $77
	add  a                                           ; $69b2: $87
	ld   h, [hl]                                     ; $69b3: $66
	halt                                             ; $69b4: $76
	ld   d, l                                        ; $69b5: $55
	ld   d, a                                        ; $69b6: $57
	ld   h, [hl]                                     ; $69b7: $66
	ld   [hl], a                                     ; $69b8: $77
	ld   a, c                                        ; $69b9: $79
	adc  d                                           ; $69ba: $8a
	sbc  d                                           ; $69bb: $9a
	cp   d                                           ; $69bc: $ba
	cp   e                                           ; $69bd: $bb
	call z, $abcb                                    ; $69be: $cc $cb $ab
	xor  c                                           ; $69c1: $a9
	sbc  b                                           ; $69c2: $98
	ld   h, [hl]                                     ; $69c3: $66
	ld   d, h                                        ; $69c4: $54
	ld   d, [hl]                                     ; $69c5: $56
	ld   b, e                                        ; $69c6: $43
	inc  sp                                          ; $69c7: $33
	ld   d, h                                        ; $69c8: $54
	ld   b, l                                        ; $69c9: $45
	ld   a, b                                        ; $69ca: $78
	adc  c                                           ; $69cb: $89
	xor  h                                           ; $69cc: $ac
	call z, $ccbc                                    ; $69cd: $cc $bc $cc
	cp   d                                           ; $69d0: $ba
	xor  d                                           ; $69d1: $aa
	xor  b                                           ; $69d2: $a8
	sbc  c                                           ; $69d3: $99
	xor  c                                           ; $69d4: $a9
	sbc  c                                           ; $69d5: $99
	xor  d                                           ; $69d6: $aa
	add  a                                           ; $69d7: $87
	ld   d, l                                        ; $69d8: $55
	ld   [hl], $83                                   ; $69d9: $36 $83
	ld   b, h                                        ; $69db: $44
	dec  [hl]                                        ; $69dc: $35
	ld   b, e                                        ; $69dd: $43
	ld   h, a                                        ; $69de: $67
	ld   l, c                                        ; $69df: $69
	sbc  c                                           ; $69e0: $99
	call c, $cbbc                                    ; $69e1: $dc $bc $cb
	jp   c, $a99b                                    ; $69e4: $da $9b $a9

	xor  c                                           ; $69e7: $a9
	xor  e                                           ; $69e8: $ab
	adc  c                                           ; $69e9: $89
	xor  c                                           ; $69ea: $a9
	sub  a                                           ; $69eb: $97
	ld   d, e                                        ; $69ec: $53
	inc  d                                           ; $69ed: $14
	and  e                                           ; $69ee: $a3
	inc  de                                          ; $69ef: $13
	dec  h                                           ; $69f0: $25
	ld   b, c                                        ; $69f1: $41
	ld   a, [hl-]                                    ; $69f2: $3a
	ld   a, b                                        ; $69f3: $78
	sbc  c                                           ; $69f4: $99
	rst  $38                                         ; $69f5: $ff
	cp   e                                           ; $69f6: $bb
	db   $fc                                         ; $69f7: $fc
	ld   a, [$b98b]                                  ; $69f8: $fa $8b $b9
	add  a                                           ; $69fb: $87
	sbc  l                                           ; $69fc: $9d
	sbc  b                                           ; $69fd: $98
	sbc  c                                           ; $69fe: $99
	add  l                                           ; $69ff: $85
	ld   de, $116a                                   ; $6a00: $11 $6a $11
	ld   [de], a                                     ; $6a03: $12
	sub  e                                           ; $6a04: $93
	ld   d, $d8                                      ; $6a05: $16 $d8
	rst  ToBoot                                         ; $6a07: $c7
	cp   a                                           ; $6a08: $bf
	ld   sp, hl                                      ; $6a09: $f9
	cp   a                                           ; $6a0a: $bf
	rst  $28                                         ; $6a0b: $ef
	ld   h, [hl]                                     ; $6a0c: $66
	cp   e                                           ; $6a0d: $bb
	ld   [hl], l                                     ; $6a0e: $75
	ld   e, d                                        ; $6a0f: $5a
	rst  $20                                         ; $6a10: $e7
	adc  c                                           ; $6a11: $89
	xor  d                                           ; $6a12: $aa
	ld   sp, $611d                                   ; $6a13: $31 $1d $61
	ld   de, $1177                                   ; $6a16: $11 $77 $11
	res  5, e                                        ; $6a19: $cb $ab
	ld   l, a                                        ; $6a1b: $6f
	db   $fd                                         ; $6a1c: $fd
	adc  [hl]                                        ; $6a1d: $8e
	rst  JumpTable                                         ; $6a1e: $df
	or   c                                           ; $6a1f: $b1
	sbc  h                                           ; $6a20: $9c
	add  h                                           ; $6a21: $84
	dec  [hl]                                        ; $6a22: $35
	ei                                               ; $6a23: $fb
	ld   l, d                                        ; $6a24: $6a
	adc  $91                                         ; $6a25: $ce $91
	inc  de                                          ; $6a27: $13
	jp   nc, $1911                                   ; $6a28: $d2 $11 $19

	ld   sp, $cb2f                                   ; $6a2b: $31 $2f $cb
	sbc  d                                           ; $6a2e: $9a
	rst  $38                                         ; $6a2f: $ff
	xor  b                                           ; $6a30: $a8
	cp   $e3                                         ; $6a31: $fe $e3
	add  hl, de                                      ; $6a33: $19
	and  l                                           ; $6a34: $a5
	ld   [de], a                                     ; $6a35: $12
	sbc  a                                           ; $6a36: $9f
	add  [hl]                                        ; $6a37: $86
	rst  JumpTable                                         ; $6a38: $df
	db   $fc                                         ; $6a39: $fc
	ld   d, [hl]                                     ; $6a3a: $56
	ld   d, c                                        ; $6a3b: $51
	ld   d, c                                        ; $6a3c: $51
	ld   [de], a                                     ; $6a3d: $12
	ld   de, $1d11                                   ; $6a3e: $11 $11 $1d
	add  a                                           ; $6a41: $87
	cp   $ff                                         ; $6a42: $fe $ff
	db   $dd                                         ; $6a44: $dd
	ei                                               ; $6a45: $fb
	sub  a                                           ; $6a46: $97
	daa                                              ; $6a47: $27
	ld   h, c                                        ; $6a48: $61
	inc  d                                           ; $6a49: $14
	ld   c, b                                        ; $6a4a: $48
	ld   h, [hl]                                     ; $6a4b: $66
	xor  $ef                                         ; $6a4c: $ee $ef
	rst  $28                                         ; $6a4e: $ef
	ld   a, [$1164]                                  ; $6a4f: $fa $64 $11
	ld   sp, $1211                                   ; $6a52: $31 $11 $12
	ld   de, $ad8e                                   ; $6a55: $11 $8e $ad
	rst  $38                                         ; $6a58: $ff
	rst  $38                                         ; $6a59: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a5a: $cf
	ei                                               ; $6a5b: $fb
	and  e                                           ; $6a5c: $a3
	scf                                              ; $6a5d: $37
	ld   hl, $4511                                   ; $6a5e: $21 $11 $45
	dec  h                                           ; $6a61: $25
	cp   h                                           ; $6a62: $bc
	xor  $df                                         ; $6a63: $ee $df
	cp   $ec                                         ; $6a65: $fe $ec
	call z, $2162                                    ; $6a67: $cc $62 $21
	ld   de, $1111                                   ; $6a6a: $11 $11 $11
	inc  de                                          ; $6a6d: $13
	xor  l                                           ; $6a6e: $ad
	cp   l                                           ; $6a6f: $bd
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	ld   hl, sp+$56                                  ; $6a73: $f8 $56
	ld   sp, $1211                                   ; $6a75: $31 $11 $12
	ld   de, $ec48                                   ; $6a78: $11 $48 $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a7b: $cf
	rst  $38                                         ; $6a7c: $ff
	cp   $ff                                         ; $6a7d: $fe $ff
	sub  h                                           ; $6a7f: $94
	ld   sp, $1111                                   ; $6a80: $31 $11 $11
	ld   hl, $9f24                                   ; $6a83: $21 $24 $9f
	db   $fd                                         ; $6a86: $fd
	rst  $38                                         ; $6a87: $ff
	rst  $38                                         ; $6a88: $ff
	rst  $38                                         ; $6a89: $ff
	ld   a, [$5567]                                  ; $6a8a: $fa $67 $55
	ld   sp, $1111                                   ; $6a8d: $31 $11 $11
	ld   d, d                                        ; $6a90: $52
	ld   [hl], $6d                                   ; $6a91: $36 $6d
	jp   hl                                          ; $6a93: $e9


	rst  $28                                         ; $6a94: $ef
	rst  JumpTable                                         ; $6a95: $df
	jp   c, Jump_0b5_44fb                            ; $6a96: $da $fb $44

	ld   h, e                                        ; $6a99: $63
	ld   b, c                                        ; $6a9a: $41
	ld   d, $64                                      ; $6a9b: $16 $64
	ld   a, c                                        ; $6a9d: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a9e: $cf
	cp   e                                           ; $6a9f: $bb
	rst  $38                                         ; $6aa0: $ff
	res  1, c                                        ; $6aa1: $cb $89
	and  h                                           ; $6aa3: $a4
	inc  sp                                          ; $6aa4: $33
	inc  [hl]                                        ; $6aa5: $34
	ld   [hl-], a                                    ; $6aa6: $32
	ld   e, b                                        ; $6aa7: $58
	ld   a, c                                        ; $6aa8: $79
	xor  e                                           ; $6aa9: $ab
	db   $dd                                         ; $6aaa: $dd
	cp   l                                           ; $6aab: $bd
	jp   z, Jump_0b5_67a7                            ; $6aac: $ca $a7 $67

	ld   d, h                                        ; $6aaf: $54
	ld   b, e                                        ; $6ab0: $43
	ld   d, [hl]                                     ; $6ab1: $56
	ld   d, a                                        ; $6ab2: $57
	sbc  d                                           ; $6ab3: $9a
	cp   h                                           ; $6ab4: $bc
	call z, $aadb                                    ; $6ab5: $cc $db $aa
	adc  b                                           ; $6ab8: $88
	ld   h, l                                        ; $6ab9: $65
	ld   d, h                                        ; $6aba: $54
	inc  sp                                          ; $6abb: $33
	inc  h                                           ; $6abc: $24
	ld   d, a                                        ; $6abd: $57
	ld   a, b                                        ; $6abe: $78
	xor  d                                           ; $6abf: $aa
	res  7, h                                        ; $6ac0: $cb $bc
	jp   c, Jump_0b5_78a9                            ; $6ac2: $da $a9 $78

	halt                                             ; $6ac5: $76
	ld   d, a                                        ; $6ac6: $57
	ld   [hl], a                                     ; $6ac7: $77
	ld   [hl], a                                     ; $6ac8: $77
	sbc  d                                           ; $6ac9: $9a
	xor  c                                           ; $6aca: $a9
	xor  d                                           ; $6acb: $aa
	xor  c                                           ; $6acc: $a9
	adc  b                                           ; $6acd: $88
	add  a                                           ; $6ace: $87
	ld   h, [hl]                                     ; $6acf: $66
	ld   h, a                                        ; $6ad0: $67
	ld   [hl], a                                     ; $6ad1: $77
	adc  b                                           ; $6ad2: $88
	sbc  c                                           ; $6ad3: $99
	sbc  c                                           ; $6ad4: $99
	xor  c                                           ; $6ad5: $a9
	sbc  b                                           ; $6ad6: $98
	sbc  b                                           ; $6ad7: $98
	halt                                             ; $6ad8: $76
	ld   h, [hl]                                     ; $6ad9: $66
	ld   h, [hl]                                     ; $6ada: $66
	ld   [hl], a                                     ; $6adb: $77
	adc  c                                           ; $6adc: $89
	sbc  d                                           ; $6add: $9a
	xor  d                                           ; $6ade: $aa
	xor  d                                           ; $6adf: $aa
	sbc  c                                           ; $6ae0: $99
	sbc  b                                           ; $6ae1: $98
	ld   [hl], a                                     ; $6ae2: $77
	ld   h, [hl]                                     ; $6ae3: $66
	ld   h, [hl]                                     ; $6ae4: $66
	ld   h, [hl]                                     ; $6ae5: $66
	ld   [hl], a                                     ; $6ae6: $77
	adc  b                                           ; $6ae7: $88
	sbc  d                                           ; $6ae8: $9a
	sbc  d                                           ; $6ae9: $9a
	xor  d                                           ; $6aea: $aa
	xor  d                                           ; $6aeb: $aa
	sbc  b                                           ; $6aec: $98
	sbc  b                                           ; $6aed: $98
	ld   [hl], a                                     ; $6aee: $77
	ld   [hl], a                                     ; $6aef: $77
	ld   [hl], a                                     ; $6af0: $77
	ld   [hl], a                                     ; $6af1: $77
	adc  c                                           ; $6af2: $89
	sbc  b                                           ; $6af3: $98
	sbc  c                                           ; $6af4: $99
	sbc  c                                           ; $6af5: $99
	sbc  c                                           ; $6af6: $99
	sbc  b                                           ; $6af7: $98
	sbc  c                                           ; $6af8: $99
	adc  b                                           ; $6af9: $88
	add  a                                           ; $6afa: $87
	ld   [hl], a                                     ; $6afb: $77
	ld   [hl], a                                     ; $6afc: $77
	ld   [hl], a                                     ; $6afd: $77
	add  a                                           ; $6afe: $87
	ld   [hl], a                                     ; $6aff: $77
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	sbc  c                                           ; $6b02: $99
	sbc  c                                           ; $6b03: $99
	sbc  c                                           ; $6b04: $99
	xor  c                                           ; $6b05: $a9
	sbc  c                                           ; $6b06: $99
	sbc  b                                           ; $6b07: $98
	adc  b                                           ; $6b08: $88
	add  a                                           ; $6b09: $87
	ld   [hl], a                                     ; $6b0a: $77
	ld   [hl], a                                     ; $6b0b: $77
	ld   [hl], a                                     ; $6b0c: $77
	ld   a, b                                        ; $6b0d: $78
	adc  c                                           ; $6b0e: $89
	adc  c                                           ; $6b0f: $89
	sbc  d                                           ; $6b10: $9a
	xor  c                                           ; $6b11: $a9
	sbc  c                                           ; $6b12: $99
	adc  c                                           ; $6b13: $89
	adc  b                                           ; $6b14: $88
	ld   [hl], a                                     ; $6b15: $77
	ld   [hl], a                                     ; $6b16: $77
	ld   [hl], a                                     ; $6b17: $77
	ld   [hl], a                                     ; $6b18: $77
	adc  b                                           ; $6b19: $88
	adc  c                                           ; $6b1a: $89
	sbc  d                                           ; $6b1b: $9a
	sbc  c                                           ; $6b1c: $99
	xor  c                                           ; $6b1d: $a9
	sbc  b                                           ; $6b1e: $98
	sbc  b                                           ; $6b1f: $98
	add  a                                           ; $6b20: $87
	ld   [hl], a                                     ; $6b21: $77
	ld   [hl], a                                     ; $6b22: $77
	ld   [hl], a                                     ; $6b23: $77
	ld   [hl], a                                     ; $6b24: $77
	adc  c                                           ; $6b25: $89
	adc  c                                           ; $6b26: $89
	sbc  c                                           ; $6b27: $99
	sbc  c                                           ; $6b28: $99
	sbc  c                                           ; $6b29: $99
	adc  c                                           ; $6b2a: $89
	sbc  b                                           ; $6b2b: $98
	add  a                                           ; $6b2c: $87
	ld   [hl], a                                     ; $6b2d: $77
	ld   [hl], a                                     ; $6b2e: $77
	ld   a, b                                        ; $6b2f: $78
	adc  b                                           ; $6b30: $88
	adc  c                                           ; $6b31: $89
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  c                                           ; $6b35: $89
	adc  b                                           ; $6b36: $88
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	ld   a, b                                        ; $6b39: $78
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  c                                           ; $6b3c: $89
	sbc  c                                           ; $6b3d: $99
	sbc  c                                           ; $6b3e: $99
	sbc  c                                           ; $6b3f: $99
	adc  b                                           ; $6b40: $88
	adc  b                                           ; $6b41: $88
	adc  b                                           ; $6b42: $88
	adc  b                                           ; $6b43: $88
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  b                                           ; $6b46: $88
	adc  b                                           ; $6b47: $88
	adc  b                                           ; $6b48: $88
	sbc  b                                           ; $6b49: $98
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
	adc  b                                           ; $725a: $88
	adc  b                                           ; $725b: $88
	adc  b                                           ; $725c: $88
	adc  b                                           ; $725d: $88

Call_0b5_725e:
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
	sbc  c                                           ; $74b7: $99
	adc  $de                                         ; $74b8: $ce $de
	sub  l                                           ; $74ba: $95
	ld   b, d                                        ; $74bb: $42
	ld   a, l                                        ; $74bc: $7d
	rst  $28                                         ; $74bd: $ef
	add  h                                           ; $74be: $84
	ld   de, $be15                                   ; $74bf: $11 $15 $be
	ei                                               ; $74c2: $fb
	add  e                                           ; $74c3: $83
	ld   [de], a                                     ; $74c4: $12
	ld   l, l                                        ; $74c5: $6d
	rst  $38                                         ; $74c6: $ff
	add  sp, $11                                     ; $74c7: $e8 $11
	ld   [de], a                                     ; $74c9: $12
	xor  a                                           ; $74ca: $af
	rst  $38                                         ; $74cb: $ff
	jp   $2811                                       ; $74cc: $c3 $11 $28


	rst  $38                                         ; $74cf: $ff
	rst  $30                                         ; $74d0: $f7
	ld   de, $ac14                                   ; $74d1: $11 $14 $ac
	jp   c, Jump_0b5_4574                            ; $74d4: $da $74 $45

	adc  e                                           ; $74d7: $8b
	res  2, l                                        ; $74d8: $cb $95
	ld   sp, $9e35                                   ; $74da: $31 $35 $9e
	db   $fc                                         ; $74dd: $fc
	ld   [hl], d                                     ; $74de: $72
	inc  d                                           ; $74df: $14
	sbc  [hl]                                        ; $74e0: $9e
	db   $fd                                         ; $74e1: $fd
	sub  a                                           ; $74e2: $97
	sbc  [hl]                                        ; $74e3: $9e
	rst  $38                                         ; $74e4: $ff
	and  e                                           ; $74e5: $a3
	ld   de, $fe4c                                   ; $74e6: $11 $4c $fe
	ld   [hl], c                                     ; $74e9: $71
	ld   de, $ff2b                                   ; $74ea: $11 $2b $ff
	db   $fd                                         ; $74ed: $fd
	sub  [hl]                                        ; $74ee: $96
	ld   d, l                                        ; $74ef: $55
	ld   h, [hl]                                     ; $74f0: $66
	ld   h, h                                        ; $74f1: $64
	ld   de, $9d14                                   ; $74f2: $11 $14 $9d
	db   $ed                                         ; $74f5: $ed
	jp   z, $8887                                    ; $74f6: $ca $87 $88

	add  a                                           ; $74f9: $87
	ld   d, h                                        ; $74fa: $54
	ld   b, [hl]                                     ; $74fb: $46
	ld   h, a                                        ; $74fc: $67
	sbc  d                                           ; $74fd: $9a
	sbc  c                                           ; $74fe: $99
	sub  a                                           ; $74ff: $97
	ld   h, [hl]                                     ; $7500: $66
	ld   a, b                                        ; $7501: $78
	xor  e                                           ; $7502: $ab
	ret                                              ; $7503: $c9


	ld   d, h                                        ; $7504: $54
	inc  [hl]                                        ; $7505: $34
	ld   a, c                                        ; $7506: $79
	add  a                                           ; $7507: $87
	ld   hl, $df16                                   ; $7508: $21 $16 $df
	db   $ec                                         ; $750b: $ec
	sub  [hl]                                        ; $750c: $96
	ld   d, a                                        ; $750d: $57
	xor  h                                           ; $750e: $ac
	call z, $1151                                    ; $750f: $cc $51 $11
	ld   l, c                                        ; $7512: $69
	call z, Call_0b5_64ba                            ; $7513: $cc $ba $64
	ld   e, d                                        ; $7516: $5a
	rst  $38                                         ; $7517: $ff
	ret  c                                           ; $7518: $d8

	ld   sp, $bc26                                   ; $7519: $31 $26 $bc
	or   [hl]                                        ; $751c: $b6
	inc  sp                                          ; $751d: $33
	ld   a, h                                        ; $751e: $7c
	call z, $1441                                    ; $751f: $cc $41 $14
	xor  l                                           ; $7522: $ad
	db   $fd                                         ; $7523: $fd
	sub  e                                           ; $7524: $93
	inc  hl                                          ; $7525: $23
	ld   e, c                                        ; $7526: $59
	xor  d                                           ; $7527: $aa
	sub  l                                           ; $7528: $95
	ld   [hl+], a                                    ; $7529: $22
	ld   e, d                                        ; $752a: $5a
	cp   e                                           ; $752b: $bb
	cp   b                                           ; $752c: $b8
	sbc  c                                           ; $752d: $99
	cp   h                                           ; $752e: $bc
	sub  a                                           ; $752f: $97
	ld   l, b                                        ; $7530: $68
	xor  e                                           ; $7531: $ab
	cp   b                                           ; $7532: $b8
	adc  c                                           ; $7533: $89
	xor  [hl]                                        ; $7534: $ae
	rst  $38                                         ; $7535: $ff
	push bc                                          ; $7536: $c5
	inc  hl                                          ; $7537: $23
	ld   c, c                                        ; $7538: $49
	cp   l                                           ; $7539: $bd
	and  h                                           ; $753a: $a4
	ld   [de], a                                     ; $753b: $12
	ld   b, a                                        ; $753c: $47
	add  l                                           ; $753d: $85
	ld   d, h                                        ; $753e: $54
	inc  hl                                          ; $753f: $23
	ld   b, [hl]                                     ; $7540: $46
	add  a                                           ; $7541: $87
	ld   d, l                                        ; $7542: $55
	ld   d, [hl]                                     ; $7543: $56
	sbc  h                                           ; $7544: $9c
	cp   $ba                                         ; $7545: $fe $ba
	sbc  d                                           ; $7547: $9a
	adc  $ff                                         ; $7548: $ce $ff
	rst  $38                                         ; $754a: $ff
	ld   a, [$9b76]                                  ; $754b: $fa $76 $9b
	cp   d                                           ; $754e: $ba
	sub  a                                           ; $754f: $97
	ld   h, l                                        ; $7550: $65
	dec  [hl]                                        ; $7551: $35
	ld   d, e                                        ; $7552: $53
	ld   b, e                                        ; $7553: $43
	ld   hl, $1111                                   ; $7554: $21 $11 $11
	ld   de, $9c25                                   ; $7557: $11 $25 $9c
	cp   $dd                                         ; $755a: $fe $dd
	adc  $ff                                         ; $755c: $ce $ff
	rst  $38                                         ; $755e: $ff
	db   $fd                                         ; $755f: $fd
	rst  $28                                         ; $7560: $ef
	rst  $38                                         ; $7561: $ff
	db   $fd                                         ; $7562: $fd
	ld   [hl], l                                     ; $7563: $75
	ld   e, c                                        ; $7564: $59
	xor  e                                           ; $7565: $ab
	add  h                                           ; $7566: $84
	ld   de, $1111                                   ; $7567: $11 $11 $11
	ld   de, $1211                                   ; $756a: $11 $11 $12
	inc  sp                                          ; $756d: $33
	ld   b, [hl]                                     ; $756e: $46
	sbc  a                                           ; $756f: $9f
	rst  $38                                         ; $7570: $ff
	rst  $38                                         ; $7571: $ff
	rst  $38                                         ; $7572: $ff
	db   $ed                                         ; $7573: $ed
	rst  $38                                         ; $7574: $ff
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	and  a                                           ; $7577: $a7
	ld   h, a                                        ; $7578: $67
	sbc  e                                           ; $7579: $9b
	ret  z                                           ; $757a: $c8

	ld   d, d                                        ; $757b: $52
	ld   de, $1111                                   ; $757c: $11 $11 $11
	ld   de, $1111                                   ; $757f: $11 $11 $11
	ld   d, $cf                                      ; $7582: $16 $cf
	rst  $38                                         ; $7584: $ff
	rst  $38                                         ; $7585: $ff
	ld   sp, hl                                      ; $7586: $f9
	sbc  e                                           ; $7587: $9b
	rst  $38                                         ; $7588: $ff
	rst  $38                                         ; $7589: $ff
	rst  $38                                         ; $758a: $ff
	cp   c                                           ; $758b: $b9
	sbc  c                                           ; $758c: $99
	cp   e                                           ; $758d: $bb
	jp   z, $1185                                    ; $758e: $ca $85 $11

	ld   de, $1111                                   ; $7591: $11 $11 $11
	ld   de, $1411                                   ; $7594: $11 $11 $14
	rst  $38                                         ; $7597: $ff
	rst  $38                                         ; $7598: $ff
	rst  $38                                         ; $7599: $ff
	and  a                                           ; $759a: $a7
	ld   e, d                                        ; $759b: $5a
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	ei                                               ; $759e: $fb
	ld   h, e                                        ; $759f: $63
	add  hl, sp                                      ; $75a0: $39
	sbc  $c9                                         ; $75a1: $de $c9
	ld   sp, $1111                                   ; $75a3: $31 $11 $11
	ld   de, $1111                                   ; $75a6: $11 $11 $11
	ld   d, $df                                      ; $75a9: $16 $df
	rst  $38                                         ; $75ab: $ff
	rst  $38                                         ; $75ac: $ff
	ei                                               ; $75ad: $fb
	ld   a, c                                        ; $75ae: $79
	rst  JumpTable                                         ; $75af: $df
	rst  $38                                         ; $75b0: $ff
	rst  $38                                         ; $75b1: $ff
	reti                                             ; $75b2: $d9


	ld   h, [hl]                                     ; $75b3: $66
	sbc  l                                           ; $75b4: $9d
	rst  $38                                         ; $75b5: $ff
	call nz, $1111                                   ; $75b6: $c4 $11 $11
	ld   de, $1111                                   ; $75b9: $11 $11 $11
	ld   l, a                                        ; $75bc: $6f
	rst  $38                                         ; $75bd: $ff
	rst  $38                                         ; $75be: $ff
	rst  $38                                         ; $75bf: $ff
	ld   hl, sp+$79                                  ; $75c0: $f8 $79
	rst  $38                                         ; $75c2: $ff
	rst  $38                                         ; $75c3: $ff
	rst  $38                                         ; $75c4: $ff
	ld   [$eebd], a                                  ; $75c5: $ea $bd $ee
	cp   d                                           ; $75c8: $ba
	ld   d, c                                        ; $75c9: $51
	ld   de, $1111                                   ; $75ca: $11 $11 $11
	ld   de, $ff1d                                   ; $75cd: $11 $1d $ff
	rst  $38                                         ; $75d0: $ff
	rst  $38                                         ; $75d1: $ff
	rst  $38                                         ; $75d2: $ff
	sub  [hl]                                        ; $75d3: $96
	ld   l, l                                        ; $75d4: $6d
	rst  $38                                         ; $75d5: $ff
	rst  $38                                         ; $75d6: $ff
	ld   a, [$ef8b]                                  ; $75d7: $fa $8b $ef
	rst  $38                                         ; $75da: $ff
	add  sp, $11                                     ; $75db: $e8 $11
	ld   de, $1111                                   ; $75dd: $11 $11 $11
	ld   de, $ffaf                                   ; $75e0: $11 $af $ff
	rst  $38                                         ; $75e3: $ff
	rst  $38                                         ; $75e4: $ff
	db   $ed                                         ; $75e5: $ed
	add  a                                           ; $75e6: $87
	cp   a                                           ; $75e7: $bf
	rst  $38                                         ; $75e8: $ff
	rst  $38                                         ; $75e9: $ff
	ret                                              ; $75ea: $c9


	adc  l                                           ; $75eb: $8d
	rst  $38                                         ; $75ec: $ff
	rst  $38                                         ; $75ed: $ff
	and  d                                           ; $75ee: $a2
	ld   de, $1111                                   ; $75ef: $11 $11 $11
	ld   de, $ff1f                                   ; $75f2: $11 $1f $ff
	rst  $38                                         ; $75f5: $ff
	rst  $38                                         ; $75f6: $ff
	db   $fc                                         ; $75f7: $fc
	sub  h                                           ; $75f8: $94
	ld   l, h                                        ; $75f9: $6c
	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff
	jp   c, $ff9b                                    ; $75fc: $da $9b $ff

	rst  $38                                         ; $75ff: $ff
	jp   hl                                          ; $7600: $e9


	ld   hl, $1111                                   ; $7601: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $7604: $11 $11 $ff
	rst  $38                                         ; $7607: $ff
	rst  $38                                         ; $7608: $ff
	rst  $38                                         ; $7609: $ff
	db   $dd                                         ; $760a: $dd
	sub  l                                           ; $760b: $95
	ld   l, a                                        ; $760c: $6f
	rst  $38                                         ; $760d: $ff
	rst  $38                                         ; $760e: $ff
	and  [hl]                                        ; $760f: $a6
	xor  a                                           ; $7610: $af
	rst  $38                                         ; $7611: $ff
	db   $fc                                         ; $7612: $fc
	ld   h, c                                        ; $7613: $61
	ld   de, $1111                                   ; $7614: $11 $11 $11
	ld   de, $ff1f                                   ; $7617: $11 $1f $ff
	rst  $38                                         ; $761a: $ff
	rst  $38                                         ; $761b: $ff
	ld   sp, hl                                      ; $761c: $f9
	halt                                             ; $761d: $76
	ld   a, l                                        ; $761e: $7d
	rst  $38                                         ; $761f: $ff
	rst  $38                                         ; $7620: $ff
	ei                                               ; $7621: $fb
	cp   d                                           ; $7622: $ba
	rst  $28                                         ; $7623: $ef
	rst  $38                                         ; $7624: $ff
	rst  $10                                         ; $7625: $d7
	ld   bc, $1111                                   ; $7626: $01 $11 $11
	ld   de, $ff1b                                   ; $7629: $11 $1b $ff
	rst  $38                                         ; $762c: $ff
	rst  $38                                         ; $762d: $ff
	rst  $38                                         ; $762e: $ff
	ld   hl, sp+$37                                  ; $762f: $f8 $37
	xor  a                                           ; $7631: $af
	rst  $38                                         ; $7632: $ff
	db   $fc                                         ; $7633: $fc
	sbc  d                                           ; $7634: $9a
	rst  $28                                         ; $7635: $ef
	cp   $a9                                         ; $7636: $fe $a9
	ld   d, c                                        ; $7638: $51
	ld   de, $1111                                   ; $7639: $11 $11 $11
	dec  de                                          ; $763c: $1b
	rst  $38                                         ; $763d: $ff
	rst  $38                                         ; $763e: $ff
	rst  $38                                         ; $763f: $ff
	rst  $38                                         ; $7640: $ff
	rst  $30                                         ; $7641: $f7
	ld   b, a                                        ; $7642: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7643: $cf
	rst  $38                                         ; $7644: $ff
	ld   a, [$ffbe]                                  ; $7645: $fa $be $ff
	db   $fd                                         ; $7648: $fd
	cp   h                                           ; $7649: $bc
	sub  c                                           ; $764a: $91
	ld   de, $1111                                   ; $764b: $11 $11 $11
	ld   e, $ff                                      ; $764e: $1e $ff
	rst  $38                                         ; $7650: $ff
	rst  $38                                         ; $7651: $ff
	rst  $38                                         ; $7652: $ff
	jp   $ff2c                                       ; $7653: $c3 $2c $ff


	rst  $38                                         ; $7656: $ff
	rst  $38                                         ; $7657: $ff
	rst  $38                                         ; $7658: $ff
	rst  $38                                         ; $7659: $ff
	jp   c, Jump_0b5_6178                            ; $765a: $da $78 $61

	ld   de, $1111                                   ; $765d: $11 $11 $11
	ld   a, [de]                                     ; $7660: $1a
	rst  $38                                         ; $7661: $ff
	rst  $38                                         ; $7662: $ff
	rst  $38                                         ; $7663: $ff
	db   $fd                                         ; $7664: $fd
	db   $e4                                         ; $7665: $e4
	ld   a, [hl]                                     ; $7666: $7e
	rst  $38                                         ; $7667: $ff
	rst  $38                                         ; $7668: $ff
	rst  $38                                         ; $7669: $ff
	rst  $38                                         ; $766a: $ff
	cp   $b7                                         ; $766b: $fe $b7
	ld   b, l                                        ; $766d: $45
	ld   sp, $1111                                   ; $766e: $31 $11 $11
	ld   de, $ff1f                                   ; $7671: $11 $1f $ff
	rst  $38                                         ; $7674: $ff
	rst  $38                                         ; $7675: $ff
	rst  JumpTable                                         ; $7676: $df
	sub  e                                           ; $7677: $93
	cp   a                                           ; $7678: $bf
	rst  $38                                         ; $7679: $ff
	rst  $38                                         ; $767a: $ff
	rst  $38                                         ; $767b: $ff
	rst  $38                                         ; $767c: $ff
	db   $fc                                         ; $767d: $fc
	add  h                                           ; $767e: $84
	ld   d, h                                        ; $767f: $54
	ld   de, $1111                                   ; $7680: $11 $11 $11
	ld   de, $ff8f                                   ; $7683: $11 $8f $ff
	rst  $38                                         ; $7686: $ff
	rst  $38                                         ; $7687: $ff
	rst  $38                                         ; $7688: $ff
	add  hl, sp                                      ; $7689: $39
	rst  $38                                         ; $768a: $ff
	rst  $38                                         ; $768b: $ff
	rst  $38                                         ; $768c: $ff
	rst  $38                                         ; $768d: $ff
	rst  $38                                         ; $768e: $ff
	ret                                              ; $768f: $c9


	ld   [hl+], a                                    ; $7690: $22
	ld   b, c                                        ; $7691: $41
	ld   de, $1111                                   ; $7692: $11 $11 $11
	ld   a, [de]                                     ; $7695: $1a
	rst  JumpTable                                         ; $7696: $df
	ei                                               ; $7697: $fb
	rst  $38                                         ; $7698: $ff
	rst  $38                                         ; $7699: $ff
	or   $df                                         ; $769a: $f6 $df
	rst  $38                                         ; $769c: $ff
	rst  $38                                         ; $769d: $ff
	rst  $38                                         ; $769e: $ff
	rst  $38                                         ; $769f: $ff
	ei                                               ; $76a0: $fb
	sub  c                                           ; $76a1: $91
	ld   hl, $1111                                   ; $76a2: $21 $11 $11
	ld   de, $9f11                                   ; $76a5: $11 $11 $9f
	rst  $30                                         ; $76a8: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76a9: $cf
	rst  $38                                         ; $76aa: $ff
	ld   a, [$ffaf]                                  ; $76ab: $fa $af $ff
	rst  $38                                         ; $76ae: $ff
	rst  $38                                         ; $76af: $ff
	rst  $38                                         ; $76b0: $ff
	ld   [$43a5], a                                  ; $76b1: $ea $a5 $43
	ld   de, $1111                                   ; $76b4: $11 $11 $11
	ld   de, $d316                                   ; $76b7: $11 $16 $d3
	rla                                              ; $76ba: $17
	xor  a                                           ; $76bb: $af
	cp   $9e                                         ; $76bc: $fe $9e
	rst  $38                                         ; $76be: $ff
	rst  $38                                         ; $76bf: $ff
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	rst  $38                                         ; $76c3: $ff
	adc  $cc                                         ; $76c4: $ce $cc
	cp   b                                           ; $76c6: $b8
	ld   d, d                                        ; $76c7: $52
	ld   de, $1111                                   ; $76c8: $11 $11 $11
	ld   de, $1111                                   ; $76cb: $11 $11 $11
	ld   [bc], a                                     ; $76ce: $02
	ld   l, h                                        ; $76cf: $6c
	rst  $38                                         ; $76d0: $ff
	rst  $38                                         ; $76d1: $ff
	rst  $38                                         ; $76d2: $ff
	rst  $38                                         ; $76d3: $ff
	rst  $38                                         ; $76d4: $ff
	rst  $38                                         ; $76d5: $ff
	rst  $38                                         ; $76d6: $ff
	db   $eb                                         ; $76d7: $eb
	sub  l                                           ; $76d8: $95
	ld   de, $1111                                   ; $76d9: $11 $11 $11
	ld   de, $1111                                   ; $76dc: $11 $11 $11
	ld   de, $ae14                                   ; $76df: $11 $14 $ae
	rst  $38                                         ; $76e2: $ff
	rst  $38                                         ; $76e3: $ff
	rst  $38                                         ; $76e4: $ff
	rst  $38                                         ; $76e5: $ff
	rst  $38                                         ; $76e6: $ff
	rst  $38                                         ; $76e7: $ff
	rst  $38                                         ; $76e8: $ff
	ret                                              ; $76e9: $c9


	ld   [hl], e                                     ; $76ea: $73
	ld   de, $1111                                   ; $76eb: $11 $11 $11
	ld   de, $1111                                   ; $76ee: $11 $11 $11
	ld   de, $ef37                                   ; $76f1: $11 $37 $ef
	rst  $38                                         ; $76f4: $ff
	rst  $38                                         ; $76f5: $ff
	rst  $38                                         ; $76f6: $ff
	rst  $38                                         ; $76f7: $ff
	rst  $38                                         ; $76f8: $ff
	rst  $38                                         ; $76f9: $ff
	db   $fc                                         ; $76fa: $fc
	and  a                                           ; $76fb: $a7
	ld   sp, $1111                                   ; $76fc: $31 $11 $11
	ld   de, $1111                                   ; $76ff: $11 $11 $11
	ld   de, $bf14                                   ; $7702: $11 $14 $bf
	rst  $38                                         ; $7705: $ff
	rst  $38                                         ; $7706: $ff
	rst  $38                                         ; $7707: $ff
	rst  $38                                         ; $7708: $ff
	rst  $38                                         ; $7709: $ff
	rst  $38                                         ; $770a: $ff
	db   $fd                                         ; $770b: $fd
	or   a                                           ; $770c: $b7
	ld   b, c                                        ; $770d: $41
	ld   de, $1111                                   ; $770e: $11 $11 $11
	ld   de, $1111                                   ; $7711: $11 $11 $11
	inc  de                                          ; $7714: $13
	xor  a                                           ; $7715: $af
	rst  $38                                         ; $7716: $ff
	rst  $38                                         ; $7717: $ff
	rst  $38                                         ; $7718: $ff
	rst  $38                                         ; $7719: $ff
	rst  $38                                         ; $771a: $ff
	rst  $38                                         ; $771b: $ff
	db   $fc                                         ; $771c: $fc
	sub  l                                           ; $771d: $95
	ld   hl, $1111                                   ; $771e: $21 $11 $11
	ld   de, $1111                                   ; $7721: $11 $11 $11
	ld   de, $ff16                                   ; $7724: $11 $16 $ff
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	rst  $38                                         ; $7729: $ff
	rst  $38                                         ; $772a: $ff
	rst  $38                                         ; $772b: $ff
	rst  $38                                         ; $772c: $ff
	ld   [$1173], a                                  ; $772d: $ea $73 $11
	ld   de, $1111                                   ; $7730: $11 $11 $11
	ld   de, $1111                                   ; $7733: $11 $11 $11
	ld   c, l                                        ; $7736: $4d
	rst  $38                                         ; $7737: $ff
	rst  $38                                         ; $7738: $ff
	rst  $38                                         ; $7739: $ff
	rst  $38                                         ; $773a: $ff
	rst  $38                                         ; $773b: $ff
	rst  $38                                         ; $773c: $ff
	rst  $38                                         ; $773d: $ff
	ret  z                                           ; $773e: $c8

	ld   sp, $1111                                   ; $773f: $31 $11 $11
	ld   de, $1111                                   ; $7742: $11 $11 $11
	ld   de, $ff15                                   ; $7745: $11 $15 $ff
	rst  $38                                         ; $7748: $ff
	rst  $38                                         ; $7749: $ff
	rst  $38                                         ; $774a: $ff
	rst  $38                                         ; $774b: $ff
	rst  $38                                         ; $774c: $ff
	rst  $38                                         ; $774d: $ff
	ld   [$1162], a                                  ; $774e: $ea $62 $11
	ld   de, $1111                                   ; $7751: $11 $11 $11
	ld   de, $1211                                   ; $7754: $11 $11 $12
	cp   a                                           ; $7757: $bf
	rst  $38                                         ; $7758: $ff
	rst  $38                                         ; $7759: $ff
	rst  $38                                         ; $775a: $ff
	rst  $38                                         ; $775b: $ff
	rst  $38                                         ; $775c: $ff
	rst  $38                                         ; $775d: $ff
	jp   hl                                          ; $775e: $e9


	ld   h, d                                        ; $775f: $62
	ld   de, $1111                                   ; $7760: $11 $11 $11
	ld   de, $1111                                   ; $7763: $11 $11 $11
	ld   de, $ffcf                                   ; $7766: $11 $cf $ff
	rst  $38                                         ; $7769: $ff
	rst  $38                                         ; $776a: $ff
	rst  $38                                         ; $776b: $ff
	rst  $38                                         ; $776c: $ff
	rst  $38                                         ; $776d: $ff
	ld   sp, hl                                      ; $776e: $f9
	ld   d, c                                        ; $776f: $51
	ld   de, $1111                                   ; $7770: $11 $11 $11

Call_0b5_7773:
	ld   de, $1111                                   ; $7773: $11 $11 $11
	inc  de                                          ; $7776: $13
	rst  $28                                         ; $7777: $ef
	rst  $38                                         ; $7778: $ff
	rst  $38                                         ; $7779: $ff
	rst  $38                                         ; $777a: $ff
	rst  $38                                         ; $777b: $ff
	rst  $38                                         ; $777c: $ff
	rst  $38                                         ; $777d: $ff
	add  sp, $41                                     ; $777e: $e8 $41
	ld   de, $1111                                   ; $7780: $11 $11 $11
	ld   de, $1111                                   ; $7783: $11 $11 $11
	add  hl, de                                      ; $7786: $19
	rst  $38                                         ; $7787: $ff
	rst  $38                                         ; $7788: $ff
	rst  $38                                         ; $7789: $ff
	rst  $38                                         ; $778a: $ff
	rst  $38                                         ; $778b: $ff
	rst  $38                                         ; $778c: $ff
	rst  $38                                         ; $778d: $ff
	and  [hl]                                        ; $778e: $a6
	ld   de, $1111                                   ; $778f: $11 $11 $11
	ld   de, $1111                                   ; $7792: $11 $11 $11
	ld   de, $ff6f                                   ; $7795: $11 $6f $ff
	rst  $38                                         ; $7798: $ff
	rst  $38                                         ; $7799: $ff
	rst  $38                                         ; $779a: $ff
	rst  $38                                         ; $779b: $ff
	rst  $38                                         ; $779c: $ff
	ld   a, [$1151]                                  ; $779d: $fa $51 $11
	ld   de, $1111                                   ; $77a0: $11 $11 $11
	ld   de, $1611                                   ; $77a3: $11 $11 $16
	rst  $38                                         ; $77a6: $ff
	rst  $38                                         ; $77a7: $ff
	rst  $38                                         ; $77a8: $ff
	rst  $38                                         ; $77a9: $ff
	rst  $38                                         ; $77aa: $ff
	rst  $38                                         ; $77ab: $ff
	rst  $38                                         ; $77ac: $ff
	and  h                                           ; $77ad: $a4
	ld   de, $1111                                   ; $77ae: $11 $11 $11
	ld   de, $1111                                   ; $77b1: $11 $11 $11
	ld   de, $ffaf                                   ; $77b4: $11 $af $ff
	rst  $38                                         ; $77b7: $ff
	rst  $38                                         ; $77b8: $ff
	rst  $38                                         ; $77b9: $ff
	rst  $38                                         ; $77ba: $ff
	rst  $38                                         ; $77bb: $ff
	rst  $10                                         ; $77bc: $d7
	ld   hl, $1111                                   ; $77bd: $21 $11 $11
	ld   de, $1111                                   ; $77c0: $11 $11 $11
	ld   de, $ff5d                                   ; $77c3: $11 $5d $ff
	rst  $38                                         ; $77c6: $ff
	rst  $38                                         ; $77c7: $ff
	rst  $38                                         ; $77c8: $ff
	rst  $38                                         ; $77c9: $ff
	rst  $38                                         ; $77ca: $ff
	add  sp, $31                                     ; $77cb: $e8 $31
	ld   de, $1111                                   ; $77cd: $11 $11 $11
	ld   de, $1111                                   ; $77d0: $11 $11 $11
	ld   l, l                                        ; $77d3: $6d
	rst  $38                                         ; $77d4: $ff
	rst  $38                                         ; $77d5: $ff
	rst  $38                                         ; $77d6: $ff
	rst  $38                                         ; $77d7: $ff
	cp   $a5                                         ; $77d8: $fe $a5
	ld   de, $1111                                   ; $77da: $11 $11 $11
	ld   [hl], c                                     ; $77dd: $71
	ld   de, $ff1f                                   ; $77de: $11 $1f $ff
	sbc  a                                           ; $77e1: $9f
	rst  $38                                         ; $77e2: $ff
	rst  $38                                         ; $77e3: $ff
	rst  $38                                         ; $77e4: $ff
	rst  $38                                         ; $77e5: $ff
	rst  $38                                         ; $77e6: $ff
	ld   de, $1111                                   ; $77e7: $11 $11 $11
	ld   de, $311f                                   ; $77ea: $11 $1f $31
	rst  $30                                         ; $77ed: $f7
	rst  $38                                         ; $77ee: $ff
	db   $fd                                         ; $77ef: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77f0: $cf
	rst  $38                                         ; $77f1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77f2: $cf
	rst  $38                                         ; $77f3: $ff
	rst  $38                                         ; $77f4: $ff
	pop  bc                                          ; $77f5: $c1
	ld   de, $1111                                   ; $77f6: $11 $11 $11
	ccf                                              ; $77f9: $3f
	ld   h, e                                        ; $77fa: $63
	rst  $38                                         ; $77fb: $ff
	rst  $38                                         ; $77fc: $ff
	cp   h                                           ; $77fd: $bc
	cp   h                                           ; $77fe: $bc
	rst  $38                                         ; $77ff: $ff
	cp   a                                           ; $7800: $bf
	rst  $38                                         ; $7801: $ff
	ld   a, [$1161]                                  ; $7802: $fa $61 $11
	ld   de, $ff17                                   ; $7805: $11 $17 $ff
	cpl                                              ; $7808: $2f
	rst  $38                                         ; $7809: $ff
	rst  $38                                         ; $780a: $ff
	scf                                              ; $780b: $37
	xor  b                                           ; $780c: $a8
	rst  $38                                         ; $780d: $ff
	rst  $38                                         ; $780e: $ff
	rst  $38                                         ; $780f: $ff
	di                                               ; $7810: $f3
	ld   de, $1111                                   ; $7811: $11 $11 $11
	call z, $7fff                                    ; $7814: $cc $ff $7f
	rst  $38                                         ; $7817: $ff
	db   $f4                                         ; $7818: $f4
	dec  d                                           ; $7819: $15
	ld   a, d                                        ; $781a: $7a
	rst  $38                                         ; $781b: $ff
	rst  $38                                         ; $781c: $ff
	rst  $38                                         ; $781d: $ff
	ld   sp, $1111                                   ; $781e: $31 $11 $11
	dec  e                                           ; $7821: $1d
	rst  $38                                         ; $7822: $ff
	rst  $30                                         ; $7823: $f7
	rst  $38                                         ; $7824: $ff
	rst  $38                                         ; $7825: $ff
	ld   hl, $8f16                                   ; $7826: $21 $16 $8f
	rst  $38                                         ; $7829: $ff
	rst  $38                                         ; $782a: $ff
	pop  af                                          ; $782b: $f1
	ld   de, $1111                                   ; $782c: $11 $11 $11
	rst  $38                                         ; $782f: $ff
	rst  $38                                         ; $7830: $ff
	ld   c, a                                        ; $7831: $4f
	xor  a                                           ; $7832: $af
	ldh  a, [c]                                      ; $7833: $f2
	ld   de, $ff57                                   ; $7834: $11 $57 $ff
	rst  $38                                         ; $7837: $ff
	rst  $38                                         ; $7838: $ff
	ld   de, $1111                                   ; $7839: $11 $11 $11
	rra                                              ; $783c: $1f
	rst  $38                                         ; $783d: $ff
	rst  $28                                         ; $783e: $ef
	ldh  a, [c]                                      ; $783f: $f2
	or   $11                                         ; $7840: $f6 $11
	inc  de                                          ; $7842: $13
	rst  $38                                         ; $7843: $ff
	rst  $38                                         ; $7844: $ff
	rst  $38                                         ; $7845: $ff
	add  c                                           ; $7846: $81
	ld   de, $1e11                                   ; $7847: $11 $11 $1e
	rst  $38                                         ; $784a: $ff
	push af                                          ; $784b: $f5
	rst  $30                                         ; $784c: $f7
	xor  a                                           ; $784d: $af
	ld   de, $4f11                                   ; $784e: $11 $11 $4f
	rst  $38                                         ; $7851: $ff
	rst  $38                                         ; $7852: $ff
	pop  af                                          ; $7853: $f1
	ld   de, $1211                                   ; $7854: $11 $11 $12
	rst  $38                                         ; $7857: $ff
	db   $fd                                         ; $7858: $fd
	rst  $38                                         ; $7859: $ff
	rra                                              ; $785a: $1f
	ld   d, c                                        ; $785b: $51
	ld   de, $ff1f                                   ; $785c: $11 $1f $ff
	rst  $38                                         ; $785f: $ff
	pop  af                                          ; $7860: $f1
	ld   de, $1111                                   ; $7861: $11 $11 $11
	rst  $38                                         ; $7864: $ff
	rst  $38                                         ; $7865: $ff
	rst  $38                                         ; $7866: $ff
	rra                                              ; $7867: $1f
	and  e                                           ; $7868: $a3
	ld   sp, $ff1f                                   ; $7869: $31 $1f $ff
	rst  $38                                         ; $786c: $ff
	pop  bc                                          ; $786d: $c1
	ld   de, $1111                                   ; $786e: $11 $11 $11
	rst  $38                                         ; $7871: $ff
	rst  $38                                         ; $7872: $ff
	rst  $38                                         ; $7873: $ff
	rra                                              ; $7874: $1f
	rst  ToBoot                                         ; $7875: $c7
	add  c                                           ; $7876: $81
	ld   e, $ff                                      ; $7877: $1e $ff
	rst  $38                                         ; $7879: $ff
	ld   [hl], c                                     ; $787a: $71
	ld   de, $1111                                   ; $787b: $11 $11 $11
	rst  $38                                         ; $787e: $ff
	rst  $38                                         ; $787f: $ff
	ldh  a, [c]                                      ; $7880: $f2
	dec  e                                           ; $7881: $1d
	sbc  h                                           ; $7882: $9c
	and  c                                           ; $7883: $a1
	rra                                              ; $7884: $1f
	rst  $38                                         ; $7885: $ff
	rst  $38                                         ; $7886: $ff
	ld   b, c                                        ; $7887: $41
	ld   de, $1611                                   ; $7888: $11 $11 $16
	rst  $38                                         ; $788b: $ff
	rst  $38                                         ; $788c: $ff
	pop  af                                          ; $788d: $f1
	dec  d                                           ; $788e: $15
	sbc  l                                           ; $788f: $9d
	or   d                                           ; $7890: $b2
	ld   l, a                                        ; $7891: $6f
	rst  $38                                         ; $7892: $ff
	db   $fd                                         ; $7893: $fd
	ld   de, $1111                                   ; $7894: $11 $11 $11
	dec  sp                                          ; $7897: $3b
	rst  $38                                         ; $7898: $ff
	rst  $38                                         ; $7899: $ff
	ld   de, $bc41                                   ; $789a: $11 $41 $bc
	and  h                                           ; $789d: $a4
	rst  $38                                         ; $789e: $ff
	rst  $38                                         ; $789f: $ff
	pop  af                                          ; $78a0: $f1
	ld   de, $1111                                   ; $78a1: $11 $11 $11
	xor  a                                           ; $78a4: $af
	rst  $38                                         ; $78a5: $ff
	db   $fd                                         ; $78a6: $fd
	ld   d, $17                                      ; $78a7: $16 $17

Jump_0b5_78a9:
	adc  e                                           ; $78a9: $8b
	ld   c, a                                        ; $78aa: $4f
	rst  $38                                         ; $78ab: $ff
	rst  $38                                         ; $78ac: $ff
	ld   d, c                                        ; $78ad: $51
	ld   de, $1b11                                   ; $78ae: $11 $11 $1b
	rst  $38                                         ; $78b1: $ff
	rst  $38                                         ; $78b2: $ff
	pop  af                                          ; $78b3: $f1
	ld   h, e                                        ; $78b4: $63
	ld   h, a                                        ; $78b5: $67
	call nz, $ffdf                                   ; $78b6: $c4 $df $ff
	rst  $30                                         ; $78b9: $f7
	ld   de, $1111                                   ; $78ba: $11 $11 $11
	sbc  a                                           ; $78bd: $9f
	rst  $38                                         ; $78be: $ff
	rst  $38                                         ; $78bf: $ff
	add  hl, de                                      ; $78c0: $19
	ld   e, b                                        ; $78c1: $58
	ld   l, e                                        ; $78c2: $6b
	inc  l                                           ; $78c3: $2c
	rst  $38                                         ; $78c4: $ff
	rst  $38                                         ; $78c5: $ff
	add  c                                           ; $78c6: $81
	ld   de, $1911                                   ; $78c7: $11 $11 $19
	rst  $38                                         ; $78ca: $ff
	rst  $38                                         ; $78cb: $ff
	ldh  a, [c]                                      ; $78cc: $f2
	ret  z                                           ; $78cd: $c8

	sub  a                                           ; $78ce: $97
	and  c                                           ; $78cf: $a1
	rst  $38                                         ; $78d0: $ff
	rst  $38                                         ; $78d1: $ff
	or   $11                                         ; $78d2: $f6 $11
	ld   de, $bf13                                   ; $78d4: $11 $13 $bf
	rst  $38                                         ; $78d7: $ff
	or   $7f                                         ; $78d8: $f6 $7f
	cp   $99                                         ; $78da: $fe $99
	rra                                              ; $78dc: $1f
	rst  $38                                         ; $78dd: $ff
	rst  $38                                         ; $78de: $ff
	ld   hl, $1111                                   ; $78df: $21 $11 $11
	ld   a, a                                        ; $78e2: $7f
	rst  $38                                         ; $78e3: $ff
	rst  $38                                         ; $78e4: $ff
	cpl                                              ; $78e5: $2f
	rst  $38                                         ; $78e6: $ff
	db   $fc                                         ; $78e7: $fc
	ld   hl, $ffff                                   ; $78e8: $21 $ff $ff
	pop  bc                                          ; $78eb: $c1
	ld   de, $1911                                   ; $78ec: $11 $11 $19
	rst  $38                                         ; $78ef: $ff
	rst  $38                                         ; $78f0: $ff
	ret  c                                           ; $78f1: $d8

	rst  $38                                         ; $78f2: $ff
	rst  $38                                         ; $78f3: $ff
	sub  c                                           ; $78f4: $91
	ld   e, [hl]                                     ; $78f5: $5e
	rst  $38                                         ; $78f6: $ff
	db   $f4                                         ; $78f7: $f4
	ld   de, $1511                                   ; $78f8: $11 $11 $15
	rst  $38                                         ; $78fb: $ff
	rst  $38                                         ; $78fc: $ff
	or   $ff                                         ; $78fd: $f6 $ff
	rst  $38                                         ; $78ff: $ff
	pop  de                                          ; $7900: $d1
	add  hl, de                                      ; $7901: $19
	rst  JumpTable                                         ; $7902: $df
	ei                                               ; $7903: $fb
	ld   de, $1111                                   ; $7904: $11 $11 $11
	cp   a                                           ; $7907: $bf
	rst  $38                                         ; $7908: $ff
	cp   $ff                                         ; $7909: $fe $ff
	rst  $38                                         ; $790b: $ff
	db   $f4                                         ; $790c: $f4
	dec  d                                           ; $790d: $15
	cp   a                                           ; $790e: $bf
	rst  $38                                         ; $790f: $ff
	ld   de, $1111                                   ; $7910: $11 $11 $11
	ld   l, a                                        ; $7913: $6f
	rst  $38                                         ; $7914: $ff
	rst  $38                                         ; $7915: $ff
	rst  JumpTable                                         ; $7916: $df
	rst  $38                                         ; $7917: $ff
	ld   sp, hl                                      ; $7918: $f9
	ld   de, $ffaf                                   ; $7919: $11 $af $ff
	ld   h, c                                        ; $791c: $61
	ld   de, $2a11                                   ; $791d: $11 $11 $2a
	rst  $38                                         ; $7920: $ff
	rst  $38                                         ; $7921: $ff
	rst  JumpTable                                         ; $7922: $df
	rst  $38                                         ; $7923: $ff
	cp   $11                                         ; $7924: $fe $11
	adc  a                                           ; $7926: $8f
	rst  $38                                         ; $7927: $ff
	or   c                                           ; $7928: $b1
	ld   de, $1611                                   ; $7929: $11 $11 $16
	rst  $38                                         ; $792c: $ff
	rst  $28                                         ; $792d: $ef
	rst  $38                                         ; $792e: $ff
	rst  $38                                         ; $792f: $ff
	rst  $38                                         ; $7930: $ff
	ld   h, c                                        ; $7931: $61
	ld   e, l                                        ; $7932: $5d
	rst  $38                                         ; $7933: $ff
	pop  af                                          ; $7934: $f1
	ld   de, $1111                                   ; $7935: $11 $11 $11
	cp   a                                           ; $7938: $bf
	rst  $38                                         ; $7939: $ff
	rst  $38                                         ; $793a: $ff
	rst  $38                                         ; $793b: $ff
	rst  $38                                         ; $793c: $ff
	and  c                                           ; $793d: $a1
	dec  de                                          ; $793e: $1b
	rst  $38                                         ; $793f: $ff
	ei                                               ; $7940: $fb
	ld   de, $1111                                   ; $7941: $11 $11 $11
	dec  e                                           ; $7944: $1d
	db   $fd                                         ; $7945: $fd
	rst  $38                                         ; $7946: $ff
	rst  $38                                         ; $7947: $ff
	rst  $38                                         ; $7948: $ff
	ld   sp, hl                                      ; $7949: $f9
	ld   [hl], $ff                                   ; $794a: $36 $ff
	rst  $38                                         ; $794c: $ff
	ld   sp, $1111                                   ; $794d: $31 $11 $11
	ld   de, $cfff                                   ; $7950: $11 $ff $cf
	rst  $38                                         ; $7953: $ff
	rst  $38                                         ; $7954: $ff
	rst  $38                                         ; $7955: $ff
	or   h                                           ; $7956: $b4
	xor  a                                           ; $7957: $af
	rst  $38                                         ; $7958: $ff
	pop  af                                          ; $7959: $f1
	ld   de, $1111                                   ; $795a: $11 $11 $11
	dec  de                                          ; $795d: $1b
	sbc  e                                           ; $795e: $9b
	rst  $38                                         ; $795f: $ff
	rst  $38                                         ; $7960: $ff
	rst  $38                                         ; $7961: $ff
	cp   $7d                                         ; $7962: $fe $7d
	rst  $38                                         ; $7964: $ff
	rst  $38                                         ; $7965: $ff
	ld   de, $1111                                   ; $7966: $11 $11 $11
	ld   de, $6f48                                   ; $7969: $11 $48 $6f
	cp   a                                           ; $796c: $bf
	rst  $38                                         ; $796d: $ff
	rst  $38                                         ; $796e: $ff
	db   $fd                                         ; $796f: $fd
	db   $dd                                         ; $7970: $dd
	rst  $38                                         ; $7971: $ff
	ld   sp, hl                                      ; $7972: $f9
	ld   de, $1111                                   ; $7973: $11 $11 $11
	inc  sp                                          ; $7976: $33
	add  e                                           ; $7977: $83
	ld   b, l                                        ; $7978: $45
	sbc  [hl]                                        ; $7979: $9e
	rst  $38                                         ; $797a: $ff
	rst  $38                                         ; $797b: $ff
	call z, $d9bb                                    ; $797c: $cc $bb $d9
	and  l                                           ; $797f: $a5
	ld   h, [hl]                                     ; $7980: $66
	sbc  l                                           ; $7981: $9d
	cp   c                                           ; $7982: $b9
	ld   sp, $5612                                   ; $7983: $31 $12 $56
	ld   [hl], h                                     ; $7986: $74
	ld   sp, $ad36                                   ; $7987: $31 $36 $ad
	xor  $cb                                         ; $798a: $ee $cb
	xor  d                                           ; $798c: $aa
	cp   h                                           ; $798d: $bc
	rst  $38                                         ; $798e: $ff
	rst  $38                                         ; $798f: $ff
	ld   h, c                                        ; $7990: $61
	ld   de, $9558                                   ; $7991: $11 $58 $95
	ld   de, $7b11                                   ; $7994: $11 $11 $7b
	xor  b                                           ; $7997: $a8
	ld   l, b                                        ; $7998: $68
	rst  JumpTable                                         ; $7999: $df
	rst  $38                                         ; $799a: $ff
	or   [hl]                                        ; $799b: $b6
	ld   e, d                                        ; $799c: $5a
	rst  $38                                         ; $799d: $ff
	ld   sp, hl                                      ; $799e: $f9
	ld   de, $be14                                   ; $799f: $11 $14 $be
	and  e                                           ; $79a2: $a3
	ld   de, $ca17                                   ; $79a3: $11 $17 $ca
	add  l                                           ; $79a6: $85
	ld   l, c                                        ; $79a7: $69
	rst  JumpTable                                         ; $79a8: $df
	db   $ec                                         ; $79a9: $ec
	sbc  d                                           ; $79aa: $9a
	cp   e                                           ; $79ab: $bb
	sbc  b                                           ; $79ac: $98
	ld   a, b                                        ; $79ad: $78
	sbc  d                                           ; $79ae: $9a
	sub  a                                           ; $79af: $97
	ld   h, l                                        ; $79b0: $65
	ld   l, b                                        ; $79b1: $68
	sbc  b                                           ; $79b2: $98
	halt                                             ; $79b3: $76
	ld   h, a                                        ; $79b4: $67
	sbc  b                                           ; $79b5: $98
	add  a                                           ; $79b6: $87
	ld   d, [hl]                                     ; $79b7: $56
	ld   l, c                                        ; $79b8: $69
	xor  c                                           ; $79b9: $a9
	add  [hl]                                        ; $79ba: $86
	ld   a, c                                        ; $79bb: $79
	cp   h                                           ; $79bc: $bc
	call c, $4784                                    ; $79bd: $dc $84 $47
	cp   h                                           ; $79c0: $bc
	or   a                                           ; $79c1: $b7
	ld   d, l                                        ; $79c2: $55
	ld   a, b                                        ; $79c3: $78
	add  [hl]                                        ; $79c4: $86
	ld   b, h                                        ; $79c5: $44
	ld   e, b                                        ; $79c6: $58
	xor  c                                           ; $79c7: $a9
	add  [hl]                                        ; $79c8: $86
	ld   a, c                                        ; $79c9: $79
	cp   h                                           ; $79ca: $bc
	xor  b                                           ; $79cb: $a8
	ld   h, [hl]                                     ; $79cc: $66
	adc  d                                           ; $79cd: $8a
	xor  c                                           ; $79ce: $a9
	halt                                             ; $79cf: $76
	ld   h, a                                        ; $79d0: $67
	adc  b                                           ; $79d1: $88
	add  [hl]                                        ; $79d2: $86
	ld   h, a                                        ; $79d3: $67
	adc  b                                           ; $79d4: $88
	ld   [hl], a                                     ; $79d5: $77
	ld   a, c                                        ; $79d6: $79
	xor  c                                           ; $79d7: $a9
	sbc  c                                           ; $79d8: $99
	adc  b                                           ; $79d9: $88
	adc  b                                           ; $79da: $88
	sbc  c                                           ; $79db: $99
	sbc  b                                           ; $79dc: $98
	ld   [hl], a                                     ; $79dd: $77
	ld   [hl], a                                     ; $79de: $77
	ld   [hl], a                                     ; $79df: $77
	ld   h, a                                        ; $79e0: $67
	adc  b                                           ; $79e1: $88
	sbc  c                                           ; $79e2: $99
	sbc  c                                           ; $79e3: $99
	add  a                                           ; $79e4: $87
	ld   a, b                                        ; $79e5: $78
	sbc  b                                           ; $79e6: $98
	adc  b                                           ; $79e7: $88
	ld   a, b                                        ; $79e8: $78
	sbc  b                                           ; $79e9: $98
	ld   [hl], a                                     ; $79ea: $77
	ld   [hl], a                                     ; $79eb: $77
	ld   a, b                                        ; $79ec: $78
	ld   [hl], a                                     ; $79ed: $77
	adc  b                                           ; $79ee: $88
	sbc  b                                           ; $79ef: $98
	adc  b                                           ; $79f0: $88
	sbc  c                                           ; $79f1: $99
	adc  b                                           ; $79f2: $88
	adc  b                                           ; $79f3: $88
	adc  b                                           ; $79f4: $88
	sub  a                                           ; $79f5: $97
	ld   [hl], a                                     ; $79f6: $77
	ld   [hl], a                                     ; $79f7: $77
	add  a                                           ; $79f8: $87
	ld   [hl], a                                     ; $79f9: $77
	ld   a, b                                        ; $79fa: $78
	adc  b                                           ; $79fb: $88
	sbc  b                                           ; $79fc: $98
	sbc  b                                           ; $79fd: $98
	ld   [hl], a                                     ; $79fe: $77
	adc  b                                           ; $79ff: $88
	sbc  b                                           ; $7a00: $98
	adc  b                                           ; $7a01: $88
	adc  c                                           ; $7a02: $89
	adc  b                                           ; $7a03: $88
	sbc  b                                           ; $7a04: $98
	ld   [hl], a                                     ; $7a05: $77
	ld   [hl], a                                     ; $7a06: $77
	adc  b                                           ; $7a07: $88
	adc  b                                           ; $7a08: $88
	add  a                                           ; $7a09: $87
	ld   [hl], a                                     ; $7a0a: $77
	ld   h, a                                        ; $7a0b: $67
	adc  c                                           ; $7a0c: $89
	sbc  c                                           ; $7a0d: $99
	adc  c                                           ; $7a0e: $89
	adc  c                                           ; $7a0f: $89
	sbc  c                                           ; $7a10: $99
	sbc  b                                           ; $7a11: $98
	ld   [hl], a                                     ; $7a12: $77
	ld   a, b                                        ; $7a13: $78
	adc  b                                           ; $7a14: $88
	ld   [hl], a                                     ; $7a15: $77
	ld   [hl], a                                     ; $7a16: $77
	ld   [hl], a                                     ; $7a17: $77
	adc  b                                           ; $7a18: $88
	ld   [hl], a                                     ; $7a19: $77
	adc  b                                           ; $7a1a: $88
	sbc  b                                           ; $7a1b: $98
	adc  c                                           ; $7a1c: $89
	adc  b                                           ; $7a1d: $88
	ld   [hl], a                                     ; $7a1e: $77
	sbc  c                                           ; $7a1f: $99
	sbc  c                                           ; $7a20: $99
	adc  b                                           ; $7a21: $88
	ld   [hl], a                                     ; $7a22: $77
	ld   [hl], a                                     ; $7a23: $77
	adc  b                                           ; $7a24: $88
	ld   [hl], a                                     ; $7a25: $77
	ld   [hl], a                                     ; $7a26: $77
	adc  b                                           ; $7a27: $88
	sbc  c                                           ; $7a28: $99
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	sbc  c                                           ; $7a2b: $99
	sbc  c                                           ; $7a2c: $99
	adc  b                                           ; $7a2d: $88
	ld   [hl], a                                     ; $7a2e: $77
	adc  b                                           ; $7a2f: $88
	ld   [hl], a                                     ; $7a30: $77
	ld   [hl], a                                     ; $7a31: $77
	adc  b                                           ; $7a32: $88
	adc  b                                           ; $7a33: $88
	sbc  b                                           ; $7a34: $98
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	sbc  c                                           ; $7a38: $99
	sbc  c                                           ; $7a39: $99
	sbc  b                                           ; $7a3a: $98
	adc  b                                           ; $7a3b: $88
	add  a                                           ; $7a3c: $87
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	sbc  c                                           ; $7a40: $99
	adc  b                                           ; $7a41: $88
	ld   [hl], a                                     ; $7a42: $77
	ld   [hl], a                                     ; $7a43: $77
	adc  c                                           ; $7a44: $89
	adc  c                                           ; $7a45: $89
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	sbc  b                                           ; $7a4c: $98
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	ld   [hl], a                                     ; $7a4f: $77
	ld   a, b                                        ; $7a50: $78
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	add  a                                           ; $7a54: $87
	adc  b                                           ; $7a55: $88
	adc  b                                           ; $7a56: $88
	adc  c                                           ; $7a57: $89
	sbc  b                                           ; $7a58: $98
	sbc  c                                           ; $7a59: $99
	sbc  b                                           ; $7a5a: $98
	ld   [hl], a                                     ; $7a5b: $77
	ld   a, b                                        ; $7a5c: $78
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	adc  b                                           ; $7a5f: $88
	adc  b                                           ; $7a60: $88
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	sbc  c                                           ; $7a64: $99
	adc  c                                           ; $7a65: $89
	sbc  b                                           ; $7a66: $98
	adc  b                                           ; $7a67: $88
	adc  b                                           ; $7a68: $88
	adc  b                                           ; $7a69: $88
	adc  b                                           ; $7a6a: $88
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	adc  b                                           ; $7a6d: $88
	adc  b                                           ; $7a6e: $88
	adc  b                                           ; $7a6f: $88
	adc  c                                           ; $7a70: $89
	adc  b                                           ; $7a71: $88
	sbc  c                                           ; $7a72: $99
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
	sbc  b                                           ; $7a7d: $98
	sbc  b                                           ; $7a7e: $98
	sbc  b                                           ; $7a7f: $98
	adc  b                                           ; $7a80: $88
	adc  b                                           ; $7a81: $88
	adc  b                                           ; $7a82: $88
	adc  b                                           ; $7a83: $88
	adc  b                                           ; $7a84: $88
	adc  b                                           ; $7a85: $88
	adc  b                                           ; $7a86: $88
	adc  b                                           ; $7a87: $88
	adc  b                                           ; $7a88: $88
	adc  c                                           ; $7a89: $89
	sbc  c                                           ; $7a8a: $99
	sbc  b                                           ; $7a8b: $98
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
	sbc  c                                           ; $7a96: $99
	sbc  c                                           ; $7a97: $99
	sbc  b                                           ; $7a98: $98
	adc  b                                           ; $7a99: $88
	sbc  c                                           ; $7a9a: $99
	sbc  b                                           ; $7a9b: $98
	adc  b                                           ; $7a9c: $88
	adc  b                                           ; $7a9d: $88
	adc  b                                           ; $7a9e: $88
	adc  b                                           ; $7a9f: $88
	ld   a, b                                        ; $7aa0: $78
	adc  b                                           ; $7aa1: $88
	adc  b                                           ; $7aa2: $88
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	adc  b                                           ; $7aa6: $88
	sbc  c                                           ; $7aa7: $99
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
	adc  c                                           ; $7abe: $89
	add  a                                           ; $7abf: $87
	adc  c                                           ; $7ac0: $89
	adc  b                                           ; $7ac1: $88
	adc  b                                           ; $7ac2: $88
	sbc  b                                           ; $7ac3: $98
	ld   a, b                                        ; $7ac4: $78
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
	sbc  d                                           ; $7add: $9a
	xor  b                                           ; $7ade: $a8
	ld   d, d                                        ; $7adf: $52
	xor  [hl]                                        ; $7ae0: $ae
	daa                                              ; $7ae1: $27
	rst  $10                                         ; $7ae2: $d7
	ld   b, a                                        ; $7ae3: $47
	adc  l                                           ; $7ae4: $8d
	ld   [hl], c                                     ; $7ae5: $71
	db   $fd                                         ; $7ae6: $fd
	ld   d, $f1                                      ; $7ae7: $16 $f1
	rst  $28                                         ; $7ae9: $ef
	dec  d                                           ; $7aea: $15
	rst  $28                                         ; $7aeb: $ef
	inc  de                                          ; $7aec: $13
	ld   sp, hl                                      ; $7aed: $f9
	ld   h, [hl]                                     ; $7aee: $66
	sub  c                                           ; $7aef: $91
	sub  a                                           ; $7af0: $97
	ld   a, a                                        ; $7af1: $7f
	inc  [hl]                                        ; $7af2: $34
	ld   [hl], a                                     ; $7af3: $77
	sbc  e                                           ; $7af4: $9b
	push bc                                          ; $7af5: $c5
	adc  c                                           ; $7af6: $89
	ld   l, b                                        ; $7af7: $68
	ld   l, a                                        ; $7af8: $6f
	sub  c                                           ; $7af9: $91
	xor  b                                           ; $7afa: $a8
	dec  [hl]                                        ; $7afb: $35
	ret                                              ; $7afc: $c9


	ld   l, c                                        ; $7afd: $69
	ld   d, [hl]                                     ; $7afe: $56
	or   a                                           ; $7aff: $b7
	dec  h                                           ; $7b00: $25
	call Call_0b5_6976                               ; $7b01: $cd $76 $69
	adc  d                                           ; $7b04: $8a
	ld   a, [$5139]                                  ; $7b05: $fa $39 $51
	ld   a, d                                        ; $7b08: $7a
	sbc  e                                           ; $7b09: $9b
	and  e                                           ; $7b0a: $a3
	ld   d, a                                        ; $7b0b: $57
	ld   d, h                                        ; $7b0c: $54
	ld   l, l                                        ; $7b0d: $6d
	ret                                              ; $7b0e: $c9


	ld   d, l                                        ; $7b0f: $55
	sub  a                                           ; $7b10: $97
	ld   a, c                                        ; $7b11: $79
	rst  JumpTable                                         ; $7b12: $df
	call nc, $2685                                   ; $7b13: $d4 $85 $26
	dec  hl                                          ; $7b16: $2b
	ldh  a, [c]                                      ; $7b17: $f2
	ld   d, a                                        ; $7b18: $57
	ld   d, c                                        ; $7b19: $51
	rst  $38                                         ; $7b1a: $ff
	rra                                              ; $7b1b: $1f
	or   h                                           ; $7b1c: $b4
	xor  d                                           ; $7b1d: $aa
	add  e                                           ; $7b1e: $83
	or   $69                                         ; $7b1f: $f6 $69
	sub  l                                           ; $7b21: $95
	adc  c                                           ; $7b22: $89
	add  hl, hl                                      ; $7b23: $29
	or   a                                           ; $7b24: $b7
	ld   c, d                                        ; $7b25: $4a
	ld   h, a                                        ; $7b26: $67
	and  [hl]                                        ; $7b27: $a6
	or   a                                           ; $7b28: $b7
	or   a                                           ; $7b29: $b7
	ld   e, e                                        ; $7b2a: $5b
	ld   l, c                                        ; $7b2b: $69
	sbc  b                                           ; $7b2c: $98
	adc  d                                           ; $7b2d: $8a
	ld   [hl], l                                     ; $7b2e: $75
	ld   [hl], h                                     ; $7b2f: $74
	ld   l, b                                        ; $7b30: $68
	xor  d                                           ; $7b31: $aa
	xor  c                                           ; $7b32: $a9
	adc  l                                           ; $7b33: $8d
	ld   l, b                                        ; $7b34: $68
	or   a                                           ; $7b35: $b7
	ld   l, c                                        ; $7b36: $69
	ld   d, l                                        ; $7b37: $55
	and  l                                           ; $7b38: $a5
	ld   d, a                                        ; $7b39: $57
	ld   [hl], a                                     ; $7b3a: $77
	cp   e                                           ; $7b3b: $bb
	ld   h, [hl]                                     ; $7b3c: $66
	sub  h                                           ; $7b3d: $94
	ld   a, b                                        ; $7b3e: $78
	xor  a                                           ; $7b3f: $af
	ld   c, d                                        ; $7b40: $4a
	add  e                                           ; $7b41: $83
	xor  b                                           ; $7b42: $a8
	adc  c                                           ; $7b43: $89
	or   e                                           ; $7b44: $b3
	adc  c                                           ; $7b45: $89
	ld   e, e                                        ; $7b46: $5b
	xor  c                                           ; $7b47: $a9
	xor  e                                           ; $7b48: $ab
	ld   l, d                                        ; $7b49: $6a
	ld   h, a                                        ; $7b4a: $67
	pop  bc                                          ; $7b4b: $c1
	sbc  d                                           ; $7b4c: $9a
	add  hl, hl                                      ; $7b4d: $29
	ld   [hl], a                                     ; $7b4e: $77
	sub  a                                           ; $7b4f: $97
	and  a                                           ; $7b50: $a7
	adc  c                                           ; $7b51: $89
	ld   a, b                                        ; $7b52: $78
	xor  e                                           ; $7b53: $ab
	ld   e, c                                        ; $7b54: $59
	sub  [hl]                                        ; $7b55: $96
	sub  l                                           ; $7b56: $95
	ld   [hl], l                                     ; $7b57: $75
	ld   e, d                                        ; $7b58: $5a
	ld   l, e                                        ; $7b59: $6b
	xor  c                                           ; $7b5a: $a9
	sbc  b                                           ; $7b5b: $98
	or   l                                           ; $7b5c: $b5
	adc  h                                           ; $7b5d: $8c
	ld   l, b                                        ; $7b5e: $68
	sub  [hl]                                        ; $7b5f: $96
	ld   l, b                                        ; $7b60: $68
	halt                                             ; $7b61: $76
	add  a                                           ; $7b62: $87
	and  [hl]                                        ; $7b63: $a6
	adc  c                                           ; $7b64: $89
	ld   e, e                                        ; $7b65: $5b
	ld   l, b                                        ; $7b66: $68
	add  a                                           ; $7b67: $87
	adc  b                                           ; $7b68: $88
	or   h                                           ; $7b69: $b4
	push de                                          ; $7b6a: $d5
	ld   c, h                                        ; $7b6b: $4c
	ld   e, d                                        ; $7b6c: $5a
	add  [hl]                                        ; $7b6d: $86
	sbc  b                                           ; $7b6e: $98
	ld   c, d                                        ; $7b6f: $4a
	sub  [hl]                                        ; $7b70: $96
	push hl                                          ; $7b71: $e5
	sbc  e                                           ; $7b72: $9b
	ld   [hl], l                                     ; $7b73: $75
	ld   l, a                                        ; $7b74: $6f
	ld   d, l                                        ; $7b75: $55
	or   a                                           ; $7b76: $b7
	ld   e, d                                        ; $7b77: $5a
	and  c                                           ; $7b78: $a1
	reti                                             ; $7b79: $d9


	ld   c, e                                        ; $7b7a: $4b
	sub  l                                           ; $7b7b: $95
	adc  l                                           ; $7b7c: $8d
	ld   c, b                                        ; $7b7d: $48
	sbc  e                                           ; $7b7e: $9b
	ld   l, b                                        ; $7b7f: $68
	pop  bc                                          ; $7b80: $c1
	ret  z                                           ; $7b81: $c8

	ld   c, h                                        ; $7b82: $4c
	sub  l                                           ; $7b83: $95
	sbc  d                                           ; $7b84: $9a
	ld   [hl], a                                     ; $7b85: $77
	sub  [hl]                                        ; $7b86: $96
	sbc  e                                           ; $7b87: $9b
	ld   c, h                                        ; $7b88: $4c
	ld   a, b                                        ; $7b89: $78
	ld   l, d                                        ; $7b8a: $6a
	and  h                                           ; $7b8b: $a4
	db   $d3                                         ; $7b8c: $d3
	sub  a                                           ; $7b8d: $97
	sub  [hl]                                        ; $7b8e: $96
	sbc  c                                           ; $7b8f: $99
	ld   a, d                                        ; $7b90: $7a
	ld   c, [hl]                                     ; $7b91: $4e
	ld   a, [hl-]                                    ; $7b92: $3a
	ld   [hl], a                                     ; $7b93: $77
	or   a                                           ; $7b94: $b7
	ld   a, b                                        ; $7b95: $78
	ldh  [c], a                                      ; $7b96: $e2
	sbc  h                                           ; $7b97: $9c
	ld   h, a                                        ; $7b98: $67
	or   a                                           ; $7b99: $b7

jr_0b5_7b9a:
	ld   e, d                                        ; $7b9a: $5a
	add  $7b                                         ; $7b9b: $c6 $7b
	ld   c, b                                        ; $7b9d: $48
	sbc  c                                           ; $7b9e: $99
	ld   l, c                                        ; $7b9f: $69
	add  $7a                                         ; $7ba0: $c6 $7a
	ld   a, c                                        ; $7ba2: $79
	halt                                             ; $7ba3: $76
	push bc                                          ; $7ba4: $c5
	ld   l, l                                        ; $7ba5: $6d
	ld   e, b                                        ; $7ba6: $58
	and  l                                           ; $7ba7: $a5
	ld   a, h                                        ; $7ba8: $7c
	ld   l, b                                        ; $7ba9: $68
	add  $8b                                         ; $7baa: $c6 $8b
	halt                                             ; $7bac: $76
	push bc                                          ; $7bad: $c5
	ld   e, l                                        ; $7bae: $5d
	ld   e, d                                        ; $7baf: $5a
	ld   l, c                                        ; $7bb0: $69
	pop  de                                          ; $7bb1: $d1
	rst  $20                                         ; $7bb2: $e7
	ld   e, e                                        ; $7bb3: $5b
	ld   e, a                                        ; $7bb4: $5f
	ld   e, $a3                                      ; $7bb5: $1e $a3
	or   [hl]                                        ; $7bb7: $b6
	jp   nz, $1fba                                   ; $7bb8: $c2 $ba $1f

	ld   b, e                                        ; $7bbb: $43
	db   $e4                                         ; $7bbc: $e4
	and  h                                           ; $7bbd: $a4
	and  $4f                                         ; $7bbe: $e6 $4f
	ld   c, d                                        ; $7bc0: $4a
	ld   c, [hl]                                     ; $7bc1: $4e
	ld   h, l                                        ; $7bc2: $65
	or   [hl]                                        ; $7bc3: $b6
	or   e                                           ; $7bc4: $b3
	push af                                          ; $7bc5: $f5
	cpl                                              ; $7bc6: $2f
	ld   a, [hl+]                                    ; $7bc7: $2a
	ld   l, c                                        ; $7bc8: $69
	sub  l                                           ; $7bc9: $95
	or   l                                           ; $7bca: $b5
	and  e                                           ; $7bcb: $a3
	db   $e3                                         ; $7bcc: $e3
	adc  [hl]                                        ; $7bcd: $8e
	inc  e                                           ; $7bce: $1c
	ld   [hl], a                                     ; $7bcf: $77
	sub  a                                           ; $7bd0: $97
	sub  [hl]                                        ; $7bd1: $96
	sbc  d                                           ; $7bd2: $9a
	ld   d, a                                        ; $7bd3: $57
	ld   a, e                                        ; $7bd4: $7b
	ld   a, [hl-]                                    ; $7bd5: $3a
	sbc  b                                           ; $7bd6: $98
	and  h                                           ; $7bd7: $a4
	ldh  [c], a                                      ; $7bd8: $e2
	call nz, $3f9b                                   ; $7bd9: $c4 $9b $3f
	inc  a                                           ; $7bdc: $3c
	ld   c, b                                        ; $7bdd: $48
	and  e                                           ; $7bde: $a3
	cp   b                                           ; $7bdf: $b8
	sub  [hl]                                        ; $7be0: $96
	and  a                                           ; $7be1: $a7
	ld   a, c                                        ; $7be2: $79
	ld   e, l                                        ; $7be3: $5d
	jr   c, jr_0b5_7b9a                              ; $7be4: $38 $b4

	adc  c                                           ; $7be6: $89
	or   h                                           ; $7be7: $b4
	sbc  b                                           ; $7be8: $98
	ld   l, c                                        ; $7be9: $69
	ld   a, c                                        ; $7bea: $79
	sub  [hl]                                        ; $7beb: $96
	sbc  c                                           ; $7bec: $99
	ld   a, c                                        ; $7bed: $79
	ld   [hl], a                                     ; $7bee: $77
	and  [hl]                                        ; $7bef: $a6
	sub  [hl]                                        ; $7bf0: $96
	sbc  d                                           ; $7bf1: $9a
	ld   c, h                                        ; $7bf2: $4c
	ld   c, d                                        ; $7bf3: $4a
	ld   c, e                                        ; $7bf4: $4b
	ld   [hl], h                                     ; $7bf5: $74
	ldh  [c], a                                      ; $7bf6: $e2
	jp   Jump_0b5_7cd6                               ; $7bf7: $c3 $d6 $7c


	inc  a                                           ; $7bfa: $3c
	rra                                              ; $7bfb: $1f
	ld   c, c                                        ; $7bfc: $49
	or   e                                           ; $7bfd: $b3
	pop  de                                          ; $7bfe: $d1
	sub  $5f                                         ; $7bff: $d6 $5f
	inc  e                                           ; $7c01: $1c
	ld   l, b                                        ; $7c02: $68
	and  e                                           ; $7c03: $a3
	di                                               ; $7c04: $f3
	or   l                                           ; $7c05: $b5
	sbc  e                                           ; $7c06: $9b
	ld   l, $3b                                      ; $7c07: $2e $3b
	ld   e, d                                        ; $7c09: $5a
	add  h                                           ; $7c0a: $84
	pop  af                                          ; $7c0b: $f1
	call nc, Call_0b5_5ec7                           ; $7c0c: $d4 $c7 $5e
	dec  de                                          ; $7c0f: $1b
	ld   e, e                                        ; $7c10: $5b
	ld   [hl], l                                     ; $7c11: $75
	add  $97                                         ; $7c12: $c6 $97
	and  a                                           ; $7c14: $a7
	ld   a, c                                        ; $7c15: $79
	sub  [hl]                                        ; $7c16: $96
	sbc  d                                           ; $7c17: $9a
	ld   e, e                                        ; $7c18: $5b
	ld   l, c                                        ; $7c19: $69
	ld   l, b                                        ; $7c1a: $68
	and  h                                           ; $7c1b: $a4
	jp   nz, $8cd4                                   ; $7c1c: $c2 $d4 $8c

	rra                                              ; $7c1f: $1f
	dec  a                                           ; $7c20: $3d
	ld   a, [hl+]                                    ; $7c21: $2a
	sub  l                                           ; $7c22: $95
	pop  af                                          ; $7c23: $f1
	di                                               ; $7c24: $f3
	adc  d                                           ; $7c25: $8a
	ld   e, b                                        ; $7c26: $58
	ld   l, h                                        ; $7c27: $6c
	inc  a                                           ; $7c28: $3c
	ld   l, c                                        ; $7c29: $69
	ld   a, d                                        ; $7c2a: $7a
	ld   l, c                                        ; $7c2b: $69
	and  d                                           ; $7c2c: $a2
	sub  $88                                         ; $7c2d: $d6 $88
	sub  a                                           ; $7c2f: $97
	sbc  c                                           ; $7c30: $99
	ld   e, b                                        ; $7c31: $58
	add  a                                           ; $7c32: $87
	ld   a, d                                        ; $7c33: $7a
	ld   l, e                                        ; $7c34: $6b
	dec  hl                                          ; $7c35: $2b
	sub  h                                           ; $7c36: $94
	push bc                                          ; $7c37: $c5
	and  h                                           ; $7c38: $a4
	add  $7b                                         ; $7c39: $c6 $7b
	ld   e, d                                        ; $7c3b: $5a
	ld   a, b                                        ; $7c3c: $78
	ld   l, d                                        ; $7c3d: $6a
	ld   e, c                                        ; $7c3e: $59
	add  [hl]                                        ; $7c3f: $86
	sub  a                                           ; $7c40: $97
	sub  [hl]                                        ; $7c41: $96
	and  l                                           ; $7c42: $a5
	adc  e                                           ; $7c43: $8b
	ld   e, c                                        ; $7c44: $59
	and  a                                           ; $7c45: $a7
	sub  a                                           ; $7c46: $97
	ld   a, e                                        ; $7c47: $7b
	ld   l, b                                        ; $7c48: $68
	and  [hl]                                        ; $7c49: $a6
	ld   l, e                                        ; $7c4a: $6b
	ld   c, e                                        ; $7c4b: $4b
	ld   h, a                                        ; $7c4c: $67
	or   h                                           ; $7c4d: $b4
	sbc  c                                           ; $7c4e: $99
	add  h                                           ; $7c4f: $84
	di                                               ; $7c50: $f3
	xor  c                                           ; $7c51: $a9
	ld   e, e                                        ; $7c52: $5b
	ld   e, l                                        ; $7c53: $5d
	dec  l                                           ; $7c54: $2d
	ld   c, b                                        ; $7c55: $48
	or   d                                           ; $7c56: $b2
	or   a                                           ; $7c57: $b7
	sub  [hl]                                        ; $7c58: $96
	sbc  c                                           ; $7c59: $99
	ld   l, b                                        ; $7c5a: $68
	sub  a                                           ; $7c5b: $97
	sub  a                                           ; $7c5c: $97
	and  a                                           ; $7c5d: $a7
	ld   a, b                                        ; $7c5e: $78
	sbc  b                                           ; $7c5f: $98
	ld   c, l                                        ; $7c60: $4d
	ld   h, a                                        ; $7c61: $67
	or   h                                           ; $7c62: $b4
	xor  c                                           ; $7c63: $a9
	ld   c, l                                        ; $7c64: $4d
	ld   e, c                                        ; $7c65: $59
	sub  e                                           ; $7c66: $93
	push bc                                          ; $7c67: $c5
	adc  b                                           ; $7c68: $88
	pop  de                                          ; $7c69: $d1
	ret                                              ; $7c6a: $c9


	ld   c, h                                        ; $7c6b: $4c
	dec  l                                           ; $7c6c: $2d
	ld   c, h                                        ; $7c6d: $4c
	cpl                                              ; $7c6e: $2f
	ld   d, h                                        ; $7c6f: $54
	ldh  a, [c]                                      ; $7c70: $f2
	jp   nz, $b5d5                                   ; $7c71: $c2 $d5 $b5

	adc  e                                           ; $7c74: $8b
	inc  e                                           ; $7c75: $1c
	ld   l, c                                        ; $7c76: $69
	ld   l, c                                        ; $7c77: $69
	adc  b                                           ; $7c78: $88
	ld   l, e                                        ; $7c79: $6b
	halt                                             ; $7c7a: $76
	call nc, $9997                                   ; $7c7b: $d4 $97 $99
	ld   e, d                                        ; $7c7e: $5a
	ld   [hl], a                                     ; $7c7f: $77
	add  a                                           ; $7c80: $87
	sub  l                                           ; $7c81: $95
	sub  a                                           ; $7c82: $97
	and  [hl]                                        ; $7c83: $a6
	xor  d                                           ; $7c84: $aa
	inc  l                                           ; $7c85: $2c
	ld   a, c                                        ; $7c86: $79
	ld   h, a                                        ; $7c87: $67
	sub  a                                           ; $7c88: $97
	sub  [hl]                                        ; $7c89: $96
	rst  ToBoot                                         ; $7c8a: $c7
	ld   l, d                                        ; $7c8b: $6a
	sub  l                                           ; $7c8c: $95
	or   [hl]                                        ; $7c8d: $b6
	ld   a, c                                        ; $7c8e: $79
	ld   e, d                                        ; $7c8f: $5a
	add  a                                           ; $7c90: $87
	ld   a, e                                        ; $7c91: $7b
	ld   l, b                                        ; $7c92: $68
	add  [hl]                                        ; $7c93: $86
	push bc                                          ; $7c94: $c5
	adc  b                                           ; $7c95: $88
	sbc  c                                           ; $7c96: $99
	ld   l, c                                        ; $7c97: $69
	ld   l, b                                        ; $7c98: $68
	sub  [hl]                                        ; $7c99: $96
	adc  e                                           ; $7c9a: $8b
	ld   e, c                                        ; $7c9b: $59
	add  a                                           ; $7c9c: $87
	sub  l                                           ; $7c9d: $95
	xor  c                                           ; $7c9e: $a9
	ld   l, d                                        ; $7c9f: $6a
	adc  b                                           ; $7ca0: $88
	ld   a, h                                        ; $7ca1: $7c
	halt                                             ; $7ca2: $76
	xor  b                                           ; $7ca3: $a8
	add  a                                           ; $7ca4: $87
	ld   a, b                                        ; $7ca5: $78
	sub  [hl]                                        ; $7ca6: $96
	or   [hl]                                        ; $7ca7: $b6
	add  a                                           ; $7ca8: $87
	ld   a, e                                        ; $7ca9: $7b
	ld   e, d                                        ; $7caa: $5a
	and  a                                           ; $7cab: $a7
	ld   a, d                                        ; $7cac: $7a
	ld   c, d                                        ; $7cad: $4a
	ld   l, d                                        ; $7cae: $6a
	and  l                                           ; $7caf: $a5
	pop  hl                                          ; $7cb0: $e1
	push bc                                          ; $7cb1: $c5
	and  a                                           ; $7cb2: $a7
	ld   a, [hl]                                     ; $7cb3: $7e
	ld   l, $1d                                      ; $7cb4: $2e $1d
	ld   d, a                                        ; $7cb6: $57
	jp   $a5f3                                       ; $7cb7: $c3 $f3 $a5


	rst  ToBoot                                         ; $7cba: $c7
	ld   a, e                                        ; $7cbb: $7b
	ld   e, d                                        ; $7cbc: $5a
	dec  a                                           ; $7cbd: $3d
	ld   e, c                                        ; $7cbe: $59
	ld   l, d                                        ; $7cbf: $6a
	halt                                             ; $7cc0: $76
	and  [hl]                                        ; $7cc1: $a6
	and  l                                           ; $7cc2: $a5
	add  $96                                         ; $7cc3: $c6 $96
	or   [hl]                                        ; $7cc5: $b6
	ld   a, e                                        ; $7cc6: $7b
	ld   l, d                                        ; $7cc7: $6a
	ld   c, l                                        ; $7cc8: $4d
	ld   h, a                                        ; $7cc9: $67
	xor  d                                           ; $7cca: $aa
	ld   e, b                                        ; $7ccb: $58
	call nz, $a7b6                                   ; $7ccc: $c4 $b6 $a7
	halt                                             ; $7ccf: $76
	xor  c                                           ; $7cd0: $a9
	ld   c, l                                        ; $7cd1: $4d
	ld   [hl], a                                     ; $7cd2: $77
	and  [hl]                                        ; $7cd3: $a6
	sbc  c                                           ; $7cd4: $99
	ld   a, c                                        ; $7cd5: $79

Jump_0b5_7cd6:
	or   h                                           ; $7cd6: $b4
	cp   c                                           ; $7cd7: $b9
	ld   e, c                                        ; $7cd8: $59
	adc  b                                           ; $7cd9: $88
	ld   a, b                                        ; $7cda: $78
	ld   l, c                                        ; $7cdb: $69
	ld   l, c                                        ; $7cdc: $69
	or   h                                           ; $7cdd: $b4
	or   a                                           ; $7cde: $b7
	adc  c                                           ; $7cdf: $89
	sbc  b                                           ; $7ce0: $98
	sbc  d                                           ; $7ce1: $9a
	ld   l, e                                        ; $7ce2: $6b
	halt                                             ; $7ce3: $76
	call nz, $677a                                   ; $7ce4: $c4 $7a $67
	ld   [hl], a                                     ; $7ce7: $77
	adc  b                                           ; $7ce8: $88
	ld   e, d                                        ; $7ce9: $5a
	adc  b                                           ; $7cea: $88
	adc  b                                           ; $7ceb: $88
	and  [hl]                                        ; $7cec: $a6
	adc  d                                           ; $7ced: $8a
	add  l                                           ; $7cee: $85
	xor  b                                           ; $7cef: $a8
	sub  l                                           ; $7cf0: $95
	sbc  b                                           ; $7cf1: $98
	ld   a, b                                        ; $7cf2: $78
	ld   c, e                                        ; $7cf3: $4b
	ld   l, e                                        ; $7cf4: $6b
	inc  a                                           ; $7cf5: $3c
	halt                                             ; $7cf6: $76
	or   d                                           ; $7cf7: $b2
	rst  $20                                         ; $7cf8: $e7
	ld   a, d                                        ; $7cf9: $7a
	or   [hl]                                        ; $7cfa: $b6
	xor  b                                           ; $7cfb: $a8
	ld   a, b                                        ; $7cfc: $78
	ld   e, d                                        ; $7cfd: $5a
	add  [hl]                                        ; $7cfe: $86
	ld   l, h                                        ; $7cff: $6c
	ld   e, b                                        ; $7d00: $58
	sub  [hl]                                        ; $7d01: $96
	adc  d                                           ; $7d02: $8a
	adc  b                                           ; $7d03: $88
	sbc  b                                           ; $7d04: $98
	adc  d                                           ; $7d05: $8a
	ld   e, d                                        ; $7d06: $5a
	and  h                                           ; $7d07: $a4
	jp   nc, $aad4                                   ; $7d08: $d2 $d4 $aa

	ld   l, e                                        ; $7d0b: $6b
	ld   c, h                                        ; $7d0c: $4c
	ccf                                              ; $7d0d: $3f
	dec  e                                           ; $7d0e: $1d
	sub  l                                           ; $7d0f: $95
	sub  e                                           ; $7d10: $93
	pop  af                                          ; $7d11: $f1
	db   $e3                                         ; $7d12: $e3
	rst  ToBoot                                         ; $7d13: $c7
	ld   e, l                                        ; $7d14: $5d
	ld   c, l                                        ; $7d15: $4d
	ld   c, l                                        ; $7d16: $4d
	ld   l, d                                        ; $7d17: $6a
	ld   h, [hl]                                     ; $7d18: $66
	or   h                                           ; $7d19: $b4
	sbc  b                                           ; $7d1a: $98
	add  [hl]                                        ; $7d1b: $86
	sbc  b                                           ; $7d1c: $98
	xor  b                                           ; $7d1d: $a8
	sbc  c                                           ; $7d1e: $99
	and  a                                           ; $7d1f: $a7
	ld   a, h                                        ; $7d20: $7c
	ld   l, c                                        ; $7d21: $69
	ld   a, c                                        ; $7d22: $79
	ld   [hl], l                                     ; $7d23: $75
	adc  c                                           ; $7d24: $89
	sub  [hl]                                        ; $7d25: $96
	adc  b                                           ; $7d26: $88
	ld   e, c                                        ; $7d27: $59
	ld   a, d                                        ; $7d28: $7a
	add  h                                           ; $7d29: $84
	and  a                                           ; $7d2a: $a7
	sub  [hl]                                        ; $7d2b: $96
	sbc  c                                           ; $7d2c: $99
	halt                                             ; $7d2d: $76
	sbc  b                                           ; $7d2e: $98
	ld   a, d                                        ; $7d2f: $7a
	ld   e, h                                        ; $7d30: $5c
	ld   h, [hl]                                     ; $7d31: $66
	call nc, $9579                                   ; $7d32: $d4 $79 $95
	ld   [hl], a                                     ; $7d35: $77
	sub  [hl]                                        ; $7d36: $96
	ld   c, l                                        ; $7d37: $4d
	ld   a, b                                        ; $7d38: $78
	xor  b                                           ; $7d39: $a8
	sbc  c                                           ; $7d3a: $99
	ld   a, c                                        ; $7d3b: $79
	push de                                          ; $7d3c: $d5
	adc  d                                           ; $7d3d: $8a
	ld   d, a                                        ; $7d3e: $57
	halt                                             ; $7d3f: $76
	ld   l, d                                        ; $7d40: $6a
	ld   h, a                                        ; $7d41: $67
	add  a                                           ; $7d42: $87
	add  a                                           ; $7d43: $87
	ld   a, d                                        ; $7d44: $7a
	ld   a, d                                        ; $7d45: $7a
	adc  b                                           ; $7d46: $88
	and  a                                           ; $7d47: $a7
	add  [hl]                                        ; $7d48: $86
	xor  b                                           ; $7d49: $a8
	sbc  d                                           ; $7d4a: $9a
	ld   e, c                                        ; $7d4b: $59
	add  l                                           ; $7d4c: $85
	ld   c, d                                        ; $7d4d: $4a
	ld   [hl], a                                     ; $7d4e: $77
	ld   [hl], h                                     ; $7d4f: $74
	and  h                                           ; $7d50: $a4
	ld   a, c                                        ; $7d51: $79
	cp   d                                           ; $7d52: $ba
	cp   l                                           ; $7d53: $bd
	cp   [hl]                                        ; $7d54: $be
	xor  h                                           ; $7d55: $ac
	xor  c                                           ; $7d56: $a9
	ld   [hl], l                                     ; $7d57: $75
	ld   hl, $1121                                   ; $7d58: $21 $21 $11
	ld   sp, $ae14                                   ; $7d5b: $31 $14 $ae
	rst  $38                                         ; $7d5e: $ff
	rst  $38                                         ; $7d5f: $ff
	rst  $38                                         ; $7d60: $ff
	rst  $38                                         ; $7d61: $ff
	sbc  c                                           ; $7d62: $99
	ld   [hl], h                                     ; $7d63: $74
	ld   de, $1111                                   ; $7d64: $11 $11 $11
	ld   sp, $ff16                                   ; $7d67: $31 $16 $ff
	rst  $38                                         ; $7d6a: $ff
	rst  $38                                         ; $7d6b: $ff
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	db   $ec                                         ; $7d6e: $ec
	ld   hl, $1111                                   ; $7d6f: $21 $11 $11
	ld   de, $af61                                   ; $7d72: $11 $61 $af
	rst  $38                                         ; $7d75: $ff
	rst  $38                                         ; $7d76: $ff
	rst  $38                                         ; $7d77: $ff
	rst  $38                                         ; $7d78: $ff
	db   $fd                                         ; $7d79: $fd
	pop  bc                                          ; $7d7a: $c1
	ld   de, $1111                                   ; $7d7b: $11 $11 $11
	ld   de, $ff6f                                   ; $7d7e: $11 $6f $ff
	rst  $38                                         ; $7d81: $ff
	rst  $38                                         ; $7d82: $ff
	rst  $38                                         ; $7d83: $ff
	rst  $38                                         ; $7d84: $ff
	db   $fc                                         ; $7d85: $fc
	ld   de, $1111                                   ; $7d86: $11 $11 $11
	ld   de, $ff15                                   ; $7d89: $11 $15 $ff
	rst  $38                                         ; $7d8c: $ff
	rst  $38                                         ; $7d8d: $ff
	rst  $38                                         ; $7d8e: $ff
	rst  $38                                         ; $7d8f: $ff
	db   $fd                                         ; $7d90: $fd
	ldh  a, [c]                                      ; $7d91: $f2
	ld   de, $1111                                   ; $7d92: $11 $11 $11
	ld   de, $ff1f                                   ; $7d95: $11 $1f $ff
	rst  $38                                         ; $7d98: $ff
	rst  $38                                         ; $7d99: $ff
	rst  $38                                         ; $7d9a: $ff
	cp   $bd                                         ; $7d9b: $fe $bd
	or   c                                           ; $7d9d: $b1
	ld   de, $1111                                   ; $7d9e: $11 $11 $11
	ld   de, $ffff                                   ; $7da1: $11 $ff $ff
	rst  $38                                         ; $7da4: $ff
	cp   $ff                                         ; $7da5: $fe $ff
	and  $ef                                         ; $7da7: $e6 $ef
	ld   b, c                                        ; $7da9: $41
	ld   de, $1911                                   ; $7daa: $11 $11 $19
	inc  de                                          ; $7dad: $13
	rst  $38                                         ; $7dae: $ff
	rst  $38                                         ; $7daf: $ff
	rst  $38                                         ; $7db0: $ff
	db   $fc                                         ; $7db1: $fc
	rst  $38                                         ; $7db2: $ff
	cp   c                                           ; $7db3: $b9
	ei                                               ; $7db4: $fb
	ld   de, $1111                                   ; $7db5: $11 $11 $11
	pop  bc                                          ; $7db8: $c1
	rra                                              ; $7db9: $1f
	rst  $38                                         ; $7dba: $ff
	rst  $38                                         ; $7dbb: $ff
	rst  $38                                         ; $7dbc: $ff
	add  l                                           ; $7dbd: $85
	ld   sp, hl                                      ; $7dbe: $f9
	sbc  h                                           ; $7dbf: $9c
	or   $11                                         ; $7dc0: $f6 $11
	ld   de, $5113                                   ; $7dc2: $11 $13 $51
	rst  $38                                         ; $7dc5: $ff
	rst  $38                                         ; $7dc6: $ff
	rst  $38                                         ; $7dc7: $ff
	db   $fd                                         ; $7dc8: $fd
	dec  e                                           ; $7dc9: $1d
	jp   hl                                          ; $7dca: $e9


	rst  $38                                         ; $7dcb: $ff
	jp   nz, $1111                                   ; $7dcc: $c2 $11 $11

	ld   e, $17                                      ; $7dcf: $1e $17
	rst  $38                                         ; $7dd1: $ff
	rst  $38                                         ; $7dd2: $ff
	rst  $38                                         ; $7dd3: $ff
	pop  af                                          ; $7dd4: $f1
	ld   c, a                                        ; $7dd5: $4f
	sbc  a                                           ; $7dd6: $9f
	rst  $38                                         ; $7dd7: $ff
	ld   [hl], c                                     ; $7dd8: $71
	ld   de, $f111                                   ; $7dd9: $11 $11 $f1
	rra                                              ; $7ddc: $1f
	rst  $38                                         ; $7ddd: $ff
	rst  $38                                         ; $7dde: $ff
	rst  $38                                         ; $7ddf: $ff
	ld   de, $feec                                   ; $7de0: $11 $ec $fe
	cp   $11                                         ; $7de3: $fe $11
	ld   de, $7114                                   ; $7de5: $11 $14 $71
	rst  $38                                         ; $7de8: $ff
	rst  $38                                         ; $7de9: $ff
	rst  $38                                         ; $7dea: $ff
	or   $16                                         ; $7deb: $f6 $16
	rst  JumpTable                                         ; $7ded: $df
	rst  $28                                         ; $7dee: $ef
	db   $f4                                         ; $7def: $f4
	ld   de, $1f11                                   ; $7df0: $11 $11 $1f
	inc  e                                           ; $7df3: $1c
	rst  $38                                         ; $7df4: $ff
	rst  $38                                         ; $7df5: $ff
	rst  $38                                         ; $7df6: $ff
	or   c                                           ; $7df7: $b1
	dec  hl                                          ; $7df8: $2b
	rst  $38                                         ; $7df9: $ff
	rst  $38                                         ; $7dfa: $ff
	sub  c                                           ; $7dfb: $91
	ld   de, $f111                                   ; $7dfc: $11 $11 $f1
	cp   a                                           ; $7dff: $bf
	rst  $38                                         ; $7e00: $ff
	rst  $38                                         ; $7e01: $ff
	rst  $38                                         ; $7e02: $ff
	ld   de, $ffbf                                   ; $7e03: $11 $bf $ff
	ei                                               ; $7e06: $fb
	ld   de, $1f11                                   ; $7e07: $11 $11 $1f
	jr   @+$01                                       ; $7e0a: $18 $ff

	rst  $38                                         ; $7e0c: $ff
	rst  $38                                         ; $7e0d: $ff
	pop  af                                          ; $7e0e: $f1
	add  hl, de                                      ; $7e0f: $19
	rst  $38                                         ; $7e10: $ff
	rst  $38                                         ; $7e11: $ff
	pop  de                                          ; $7e12: $d1
	ld   de, $d911                                   ; $7e13: $11 $11 $d9
	ccf                                              ; $7e16: $3f
	rst  $38                                         ; $7e17: $ff
	rst  $38                                         ; $7e18: $ff
	rst  $38                                         ; $7e19: $ff
	ld   de, $ff3f                                   ; $7e1a: $11 $3f $ff
	rst  $38                                         ; $7e1d: $ff
	ld   de, $1c11                                   ; $7e1e: $11 $11 $1c
	jp   nz, $ffff                                   ; $7e21: $c2 $ff $ff

	ld   a, [$13f1]                                  ; $7e24: $fa $f1 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e27: $cf
	rst  $38                                         ; $7e28: $ff
	pop  hl                                          ; $7e29: $e1
	ld   de, $6f11                                   ; $7e2a: $11 $11 $6f
	ccf                                              ; $7e2d: $3f
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	adc  a                                           ; $7e30: $8f
	ld   de, $ff1e                                   ; $7e31: $11 $1e $ff
	rst  $38                                         ; $7e34: $ff
	ld   sp, $1111                                   ; $7e35: $31 $11 $11
	db   $f4                                         ; $7e38: $f4
	rst  $38                                         ; $7e39: $ff
	rst  $38                                         ; $7e3a: $ff
	push af                                          ; $7e3b: $f5
	pop  af                                          ; $7e3c: $f1
	ld   de, $ffff                                   ; $7e3d: $11 $ff $ff
	or   $11                                         ; $7e40: $f6 $11
	ld   de, $6f1f                                   ; $7e42: $11 $1f $6f
	rst  $38                                         ; $7e45: $ff
	rst  $38                                         ; $7e46: $ff
	rra                                              ; $7e47: $1f
	ld   d, c                                        ; $7e48: $51
	dec  e                                           ; $7e49: $1d
	rst  $38                                         ; $7e4a: $ff
	cp   $c1                                         ; $7e4b: $fe $c1
	ld   de, $fb11                                   ; $7e4d: $11 $11 $fb
	rst  $28                                         ; $7e50: $ef
	rst  $38                                         ; $7e51: $ff
	pop  af                                          ; $7e52: $f1
	xor  h                                           ; $7e53: $ac
	ld   de, $ffaf                                   ; $7e54: $11 $af $ff
	ld   [$1111], a                                  ; $7e57: $ea $11 $11
	rra                                              ; $7e5a: $1f
	db   $ed                                         ; $7e5b: $ed
	rst  $38                                         ; $7e5c: $ff
	rst  $38                                         ; $7e5d: $ff
	dec  d                                           ; $7e5e: $15
	pop  af                                          ; $7e5f: $f1
	rla                                              ; $7e60: $17
	rst  $38                                         ; $7e61: $ff
	db   $fd                                         ; $7e62: $fd
	pop  bc                                          ; $7e63: $c1
	ld   de, $9f11                                   ; $7e64: $11 $11 $9f
	adc  a                                           ; $7e67: $8f
	rst  $38                                         ; $7e68: $ff
	pop  af                                          ; $7e69: $f1
	ccf                                              ; $7e6a: $3f
	ld   hl, $ff3f                                   ; $7e6b: $21 $3f $ff
	xor  a                                           ; $7e6e: $af
	ld   de, $1111                                   ; $7e6f: $11 $11 $11
	push af                                          ; $7e72: $f5
	rst  $38                                         ; $7e73: $ff
	rst  $38                                         ; $7e74: $ff
	ld   d, c                                        ; $7e75: $51
	push af                                          ; $7e76: $f5
	ld   [de], a                                     ; $7e77: $12
	rst  $38                                         ; $7e78: $ff
	ei                                               ; $7e79: $fb
	push hl                                          ; $7e7a: $e5
	ld   de, $1f11                                   ; $7e7b: $11 $11 $1f
	rst  $28                                         ; $7e7e: $ef
	rst  $38                                         ; $7e7f: $ff
	rst  $38                                         ; $7e80: $ff
	dec  de                                          ; $7e81: $1b
	pop  de                                          ; $7e82: $d1
	inc  e                                           ; $7e83: $1c
	rst  $38                                         ; $7e84: $ff
	xor  $b1                                         ; $7e85: $ee $b1
	ld   de, rAUD1LEN                                   ; $7e87: $11 $11 $ff
	ld   c, a                                        ; $7e8a: $4f
	rst  $38                                         ; $7e8b: $ff
	pop  af                                          ; $7e8c: $f1
	ld   a, a                                        ; $7e8d: $7f
	ld   hl, $ffaf                                   ; $7e8e: $21 $af $ff
	xor  [hl]                                        ; $7e91: $ae
	ld   de, $1111                                   ; $7e92: $11 $11 $11
	push af                                          ; $7e95: $f5
	rst  $38                                         ; $7e96: $ff
	rst  $38                                         ; $7e97: $ff
	ld   [hl], d                                     ; $7e98: $72
	db   $fd                                         ; $7e99: $fd
	dec  d                                           ; $7e9a: $15
	rst  $38                                         ; $7e9b: $ff
	ld   sp, hl                                      ; $7e9c: $f9
	rst  $20                                         ; $7e9d: $e7
	ld   de, $1f11                                   ; $7e9e: $11 $11 $1f
	add  a                                           ; $7ea1: $87
	rst  $38                                         ; $7ea2: $ff
	rst  $38                                         ; $7ea3: $ff
	rra                                              ; $7ea4: $1f
	pop  af                                          ; $7ea5: $f1
	dec  e                                           ; $7ea6: $1d
	rst  $38                                         ; $7ea7: $ff
	db   $dd                                         ; $7ea8: $dd
	pop  hl                                          ; $7ea9: $e1
	ld   de, $3f11                                   ; $7eaa: $11 $11 $3f
	rra                                              ; $7ead: $1f
	rst  $38                                         ; $7eae: $ff
	push af                                          ; $7eaf: $f5
	ld   l, a                                        ; $7eb0: $6f
	and  c                                           ; $7eb1: $a1
	adc  a                                           ; $7eb2: $8f
	rst  $38                                         ; $7eb3: $ff
	adc  a                                           ; $7eb4: $8f
	ld   h, c                                        ; $7eb5: $61
	ld   de, $f611                                   ; $7eb6: $11 $11 $f6
	ccf                                              ; $7eb9: $3f
	rst  $38                                         ; $7eba: $ff
	pop  af                                          ; $7ebb: $f1
	rst  $38                                         ; $7ebc: $ff
	ld   de, $fedf                                   ; $7ebd: $11 $df $fe
	rst  $28                                         ; $7ec0: $ef
	ld   de, $1111                                   ; $7ec1: $11 $11 $11
	pop  af                                          ; $7ec4: $f1
	rst  $38                                         ; $7ec5: $ff
	rst  $38                                         ; $7ec6: $ff
	sbc  d                                           ; $7ec7: $9a
	db   $fd                                         ; $7ec8: $fd
	ld   a, [de]                                     ; $7ec9: $1a
	rst  $38                                         ; $7eca: $ff
	db   $fc                                         ; $7ecb: $fc
	ld   a, [$1111]                                  ; $7ecc: $fa $11 $11
	ld   d, $61                                      ; $7ecf: $16 $61
	rst  $38                                         ; $7ed1: $ff
	rst  $38                                         ; $7ed2: $ff
	ld   e, a                                        ; $7ed3: $5f
	ld   sp, hl                                      ; $7ed4: $f9
	dec  l                                           ; $7ed5: $2d
	rst  $38                                         ; $7ed6: $ff
	db   $fc                                         ; $7ed7: $fc
	rst  $30                                         ; $7ed8: $f7
	ld   de, $1711                                   ; $7ed9: $11 $11 $17
	ld   hl, $ffff                                   ; $7edc: $21 $ff $ff
	ld   l, a                                        ; $7edf: $6f
	or   $3d                                         ; $7ee0: $f6 $3d
	rst  $38                                         ; $7ee2: $ff
	cp   $f7                                         ; $7ee3: $fe $f7
	ld   de, $1511                                   ; $7ee5: $11 $11 $15
	ld   de, $ffff                                   ; $7ee8: $11 $ff $ff
	cp   a                                           ; $7eeb: $bf
	ei                                               ; $7eec: $fb
	ld   c, [hl]                                     ; $7eed: $4e
	rst  $38                                         ; $7eee: $ff
	cp   $f8                                         ; $7eef: $fe $f8
	ld   de, $1211                                   ; $7ef1: $11 $11 $12
	ld   de, $ffaf                                   ; $7ef4: $11 $af $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ef7: $cf
	ld   a, [$ff6e]                                  ; $7ef8: $fa $6e $ff
	rst  $38                                         ; $7efb: $ff
	ei                                               ; $7efc: $fb
	ld   hl, $1111                                   ; $7efd: $21 $11 $11
	ld   de, $fe8d                                   ; $7f00: $11 $8d $fe
	xor  a                                           ; $7f03: $af
	db   $fd                                         ; $7f04: $fd
	cp   h                                           ; $7f05: $bc
	rst  $38                                         ; $7f06: $ff
	rst  $28                                         ; $7f07: $ef
	db   $fd                                         ; $7f08: $fd
	ld   h, c                                        ; $7f09: $61
	ld   de, $1111                                   ; $7f0a: $11 $11 $11
	ld   a, [hl-]                                    ; $7f0d: $3a
	db   $ec                                         ; $7f0e: $ec
	xor  e                                           ; $7f0f: $ab
	rst  $38                                         ; $7f10: $ff
	xor  e                                           ; $7f11: $ab
	rst  $38                                         ; $7f12: $ff
	cp   $ef                                         ; $7f13: $fe $ef
	or   [hl]                                        ; $7f15: $b6
	ld   sp, $3211                                   ; $7f16: $31 $11 $32
	dec  [hl]                                        ; $7f19: $35
	ld   b, a                                        ; $7f1a: $47
	halt                                             ; $7f1b: $76
	ld   l, d                                        ; $7f1c: $6a
	xor  c                                           ; $7f1d: $a9
	xor  e                                           ; $7f1e: $ab
	rst  $38                                         ; $7f1f: $ff
	cp   $ff                                         ; $7f20: $fe $ff
	res  0, a                                        ; $7f22: $cb $87
	ld   d, l                                        ; $7f24: $55
	ld   d, e                                        ; $7f25: $53
	ld   [hl+], a                                    ; $7f26: $22
	ld   hl, $2411                                   ; $7f27: $21 $11 $24
	ld   c, b                                        ; $7f2a: $48
	sbc  h                                           ; $7f2b: $9c
	rst  $38                                         ; $7f2c: $ff
	rst  $38                                         ; $7f2d: $ff
	rst  $38                                         ; $7f2e: $ff
	rst  $38                                         ; $7f2f: $ff
	reti                                             ; $7f30: $d9


	ld   [hl], l                                     ; $7f31: $75
	ld   [hl-], a                                    ; $7f32: $32
	ld   de, $1111                                   ; $7f33: $11 $11 $11
	ld   [de], a                                     ; $7f36: $12
	ld   d, a                                        ; $7f37: $57
	sbc  l                                           ; $7f38: $9d
	rst  $38                                         ; $7f39: $ff
	rst  $38                                         ; $7f3a: $ff
	rst  $38                                         ; $7f3b: $ff
	rst  $38                                         ; $7f3c: $ff
	db   $db                                         ; $7f3d: $db
	ld   [hl], l                                     ; $7f3e: $75
	ld   hl, $1111                                   ; $7f3f: $21 $11 $11
	ld   de, $4711                                   ; $7f42: $11 $11 $47
	xor  e                                           ; $7f45: $ab
	rst  $38                                         ; $7f46: $ff
	rst  $38                                         ; $7f47: $ff
	rst  $38                                         ; $7f48: $ff
	rst  $38                                         ; $7f49: $ff
	ei                                               ; $7f4a: $fb
	ld   [hl], h                                     ; $7f4b: $74
	ld   de, $1111                                   ; $7f4c: $11 $11 $11
	ld   de, $3612                                   ; $7f4f: $11 $12 $36
	sbc  e                                           ; $7f52: $9b
	rst  $38                                         ; $7f53: $ff
	rst  $38                                         ; $7f54: $ff
	rst  $38                                         ; $7f55: $ff
	rst  $38                                         ; $7f56: $ff
	ei                                               ; $7f57: $fb
	ld   [hl], e                                     ; $7f58: $73
	ld   de, $1111                                   ; $7f59: $11 $11 $11
	ld   de, $3611                                   ; $7f5c: $11 $11 $36
	sbc  l                                           ; $7f5f: $9d
	rst  $38                                         ; $7f60: $ff
	rst  $38                                         ; $7f61: $ff
	rst  $38                                         ; $7f62: $ff
	rst  $38                                         ; $7f63: $ff
	db   $fc                                         ; $7f64: $fc
	ld   [hl], e                                     ; $7f65: $73
	ld   bc, $1111                                   ; $7f66: $01 $11 $11
	ld   de, $4711                                   ; $7f69: $11 $11 $47
	xor  l                                           ; $7f6c: $ad
	rst  $38                                         ; $7f6d: $ff
	rst  $38                                         ; $7f6e: $ff
	rst  $38                                         ; $7f6f: $ff
	rst  $38                                         ; $7f70: $ff
	db   $fc                                         ; $7f71: $fc
	ld   [hl], e                                     ; $7f72: $73
	ld   de, $1111                                   ; $7f73: $11 $11 $11
	ld   de, $4611                                   ; $7f76: $11 $11 $46
	xor  h                                           ; $7f79: $ac
	rst  $38                                         ; $7f7a: $ff
	rst  $38                                         ; $7f7b: $ff
	rst  $38                                         ; $7f7c: $ff
	rst  $38                                         ; $7f7d: $ff
	cp   $84                                         ; $7f7e: $fe $84
	ld   de, $1111                                   ; $7f80: $11 $11 $11
	ld   de, $3511                                   ; $7f83: $11 $11 $35
	sbc  e                                           ; $7f86: $9b
	rst  $28                                         ; $7f87: $ef
	rst  $38                                         ; $7f88: $ff
	rst  $38                                         ; $7f89: $ff
	rst  $38                                         ; $7f8a: $ff
	cp   $a5                                         ; $7f8b: $fe $a5
	ld   de, $1111                                   ; $7f8d: $11 $11 $11
	ld   de, $1411                                   ; $7f90: $11 $11 $14
	ld   l, c                                        ; $7f93: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f94: $cf
	rst  $38                                         ; $7f95: $ff
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	rst  $38                                         ; $7f98: $ff
	ret  c                                           ; $7f99: $d8

	ld   sp, $1111                                   ; $7f9a: $31 $11 $11
	ld   de, $1311                                   ; $7f9d: $11 $11 $13
	ld   e, c                                        ; $7fa0: $59
	cp   [hl]                                        ; $7fa1: $be
	rst  $38                                         ; $7fa2: $ff
	rst  $38                                         ; $7fa3: $ff
	rst  $38                                         ; $7fa4: $ff
	rst  $38                                         ; $7fa5: $ff
	ei                                               ; $7fa6: $fb
	ld   [hl], d                                     ; $7fa7: $72
	ld   de, $1111                                   ; $7fa8: $11 $11 $11
	ld   de, $4611                                   ; $7fab: $11 $11 $46
	adc  e                                           ; $7fae: $8b
	rst  $28                                         ; $7faf: $ef
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	add  $21                                         ; $7fb4: $c6 $21
	ld   de, $1111                                   ; $7fb6: $11 $11 $11

Call_0b5_7fb9:
	ld   de, $6813                                   ; $7fb9: $11 $13 $68
	cp   [hl]                                        ; $7fbc: $be
	rst  $38                                         ; $7fbd: $ff
	rst  $38                                         ; $7fbe: $ff
	rst  $38                                         ; $7fbf: $ff
	rst  $38                                         ; $7fc0: $ff
	ei                                               ; $7fc1: $fb
	ld   [hl], d                                     ; $7fc2: $72
	ld   de, $1111                                   ; $7fc3: $11 $11 $11
	ld   de, $3511                                   ; $7fc6: $11 $11 $35
	sbc  e                                           ; $7fc9: $9b
	rst  $28                                         ; $7fca: $ef
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	rst  $38                                         ; $7fcd: $ff
	rst  $38                                         ; $7fce: $ff
	reti                                             ; $7fcf: $d9


	ld   b, c                                        ; $7fd0: $41
	ld   de, $1111                                   ; $7fd1: $11 $11 $11
	ld   de, $4711                                   ; $7fd4: $11 $11 $47
	xor  l                                           ; $7fd7: $ad
	rst  $38                                         ; $7fd8: $ff
	rst  $38                                         ; $7fd9: $ff
	rst  $38                                         ; $7fda: $ff
	rst  $38                                         ; $7fdb: $ff
	rst  $38                                         ; $7fdc: $ff
	or   [hl]                                        ; $7fdd: $b6
	ld   de, $1111                                   ; $7fde: $11 $11 $11
	ld   de, $1311                                   ; $7fe1: $11 $11 $13
	ld   l, b                                        ; $7fe4: $68
	adc  $ff                                         ; $7fe5: $ce $ff
	rst  $38                                         ; $7fe7: $ff
	rst  $38                                         ; $7fe8: $ff
	rst  $38                                         ; $7fe9: $ff
	cp   $95                                         ; $7fea: $fe $95
	ld   de, $1111                                   ; $7fec: $11 $11 $11
	ld   de, $1411                                   ; $7fef: $11 $11 $14
	ld   l, b                                        ; $7ff2: $68
	cp   [hl]                                        ; $7ff3: $be
	rst  $38                                         ; $7ff4: $ff
	rst  $38                                         ; $7ff5: $ff
	rst  $38                                         ; $7ff6: $ff
	rst  $38                                         ; $7ff7: $ff
	cp   $a5                                         ; $7ff8: $fe $a5
	ld   de, $1111                                   ; $7ffa: $11 $11 $11
	ld   de, $1311                                   ; $7ffd: $11 $11 $13
