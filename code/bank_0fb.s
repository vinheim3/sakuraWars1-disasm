; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0fb", ROMX[$4000], BANK[$fb]

	pop  af                                          ; $4000: $f1
	dec  l                                           ; $4001: $2d
	cp   $78                                         ; $4002: $fe $78
	cp   [hl]                                        ; $4004: $be
	reti                                             ; $4005: $d9


	ld   [hl], a                                     ; $4006: $77
	ld   sp, $df11                                   ; $4007: $31 $11 $df
	ld   a, [$1f11]                                  ; $400a: $fa $11 $1f
	rst  $38                                         ; $400d: $ff
	ld   b, c                                        ; $400e: $41
	xor  [hl]                                        ; $400f: $ae
	jp   hl                                          ; $4010: $e9


	cp   h                                           ; $4011: $bc
	xor  d                                           ; $4012: $aa
	sbc  b                                           ; $4013: $98
	halt                                             ; $4014: $76
	ld   de, $ff1a                                   ; $4015: $11 $1a $ff
	pop  bc                                          ; $4018: $c1
	ld   de, $f7ff                                   ; $4019: $11 $ff $f7
	ld   e, l                                        ; $401c: $5d
	db   $fd                                         ; $401d: $fd
	sub  [hl]                                        ; $401e: $96
	sbc  c                                           ; $401f: $99
	db   $dd                                         ; $4020: $dd
	and  a                                           ; $4021: $a7
	ld   d, c                                        ; $4022: $51
	ld   de, rAUD1LEN                                   ; $4023: $11 $11 $ff
	pop  af                                          ; $4026: $f1
	ld   de, $ff9f                                   ; $4027: $11 $9f $ff
	ld   b, e                                        ; $402a: $43
	adc  [hl]                                        ; $402b: $8e
	db   $dd                                         ; $402c: $dd
	reti                                             ; $402d: $d9


	ld   e, b                                        ; $402e: $58
	rst  JumpTable                                         ; $402f: $df
	sub  c                                           ; $4030: $91
	ld   de, $ff1f                                   ; $4031: $11 $1f $ff
	ld   d, c                                        ; $4034: $51
	ld   de, $f9ff                                   ; $4035: $11 $ff $f9
	inc  h                                           ; $4038: $24
	sbc  [hl]                                        ; $4039: $9e
	rst  $38                                         ; $403a: $ff
	add  l                                           ; $403b: $85
	cp   [hl]                                        ; $403c: $be
	call c, $1131                                    ; $403d: $dc $31 $11
	rra                                              ; $4040: $1f
	rst  $38                                         ; $4041: $ff
	ld   sp, rAUD1ENV                                   ; $4042: $31 $12 $ff
	ld   hl, sp+$66                                  ; $4045: $f8 $66
	adc  [hl]                                        ; $4047: $8e
	db   $fd                                         ; $4048: $fd
	ld   h, [hl]                                     ; $4049: $66
	rst  JumpTable                                         ; $404a: $df
	and  $11                                         ; $404b: $e6 $11
	ld   de, $fe1f                                   ; $404d: $11 $1f $fe
	ld   bc, $ff18                                   ; $4050: $01 $18 $ff
	and  $57                                         ; $4053: $e6 $57
	xor  l                                           ; $4055: $ad
	db   $fc                                         ; $4056: $fc
	ld   l, c                                        ; $4057: $69
	rst  $38                                         ; $4058: $ff
	and  e                                           ; $4059: $a3

jr_0fb_405a:
	ld   de, $1b11                                   ; $405a: $11 $11 $1b
	rst  $38                                         ; $405d: $ff
	ld   b, c                                        ; $405e: $41
	jr   @+$01                                       ; $405f: $18 $ff

	rst  $20                                         ; $4061: $e7
	ld   e, b                                        ; $4062: $58
	db   $db                                         ; $4063: $db
	cp   [hl]                                        ; $4064: $be
	xor  d                                           ; $4065: $aa
	xor  $95                                         ; $4066: $ee $95
	ld   de, $1261                                   ; $4068: $11 $61 $12
	db   $dd                                         ; $406b: $dd
	halt                                             ; $406c: $76
	inc  [hl]                                        ; $406d: $34
	sbc  l                                           ; $406e: $9d
	db   $eb                                         ; $406f: $eb
	reti                                             ; $4070: $d9


	ld   [hl], l                                     ; $4071: $75
	sbc  [hl]                                        ; $4072: $9e
	rst  JumpTable                                         ; $4073: $df
	db   $fc                                         ; $4074: $fc
	ld   d, d                                        ; $4075: $52
	ld   l, c                                        ; $4076: $69
	ld   h, c                                        ; $4077: $61
	ld   de, $a1df                                   ; $4078: $11 $df $a1
	inc  d                                           ; $407b: $14
	call $c9fd                                       ; $407c: $cd $fd $c9
	ld   b, a                                        ; $407f: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4080: $cf
	call z, wBGPalettes                                    ; $4081: $cc $de $c2
	dec  d                                           ; $4084: $15
	ld   b, d                                        ; $4085: $42
	ld   [bc], a                                     ; $4086: $02
	ld   l, c                                        ; $4087: $69
	sub  a                                           ; $4088: $97
	ld   d, h                                        ; $4089: $54
	ld   l, b                                        ; $408a: $68
	cp   l                                           ; $408b: $bd
	ei                                               ; $408c: $fb
	ld   b, l                                        ; $408d: $45
	sbc  l                                           ; $408e: $9d
	sbc  $aa                                         ; $408f: $de $aa
	ret                                              ; $4091: $c9


	ld   h, h                                        ; $4092: $64
	ld   h, h                                        ; $4093: $64
	ld   de, $94bc                                   ; $4094: $11 $bc $94
	inc  [hl]                                        ; $4097: $34
	ld   c, d                                        ; $4098: $4a
	xor  h                                           ; $4099: $ac
	cp   l                                           ; $409a: $bd
	add  l                                           ; $409b: $85
	ld   a, e                                        ; $409c: $7b
	jp   hl                                          ; $409d: $e9


	set  3, c                                        ; $409e: $cb $d9
	sub  a                                           ; $40a0: $97
	ld   b, [hl]                                     ; $40a1: $46
	ld   [hl-], a                                    ; $40a2: $32
	jr   jr_0fb_405a                                 ; $40a3: $18 $b5

	add  [hl]                                        ; $40a5: $86
	ld   d, e                                        ; $40a6: $53
	cp   h                                           ; $40a7: $bc
	sbc  e                                           ; $40a8: $9b
	ret  z                                           ; $40a9: $c8

	add  hl, sp                                      ; $40aa: $39
	sbc  e                                           ; $40ab: $9b
	call $c6bb                                       ; $40ac: $cd $bb $c6
	ld   h, h                                        ; $40af: $64
	inc  h                                           ; $40b0: $24
	ld   b, e                                        ; $40b1: $43
	ld   e, b                                        ; $40b2: $58
	ld   d, h                                        ; $40b3: $54
	and  l                                           ; $40b4: $a5
	ld   e, b                                        ; $40b5: $58
	sbc  e                                           ; $40b6: $9b
	db   $fc                                         ; $40b7: $fc
	ld   d, h                                        ; $40b8: $54
	sbc  [hl]                                        ; $40b9: $9e
	call $b8cc                                       ; $40ba: $cd $cc $b8
	ld   d, h                                        ; $40bd: $54
	ld   [hl], a                                     ; $40be: $77
	ld   d, c                                        ; $40bf: $51
	add  hl, de                                      ; $40c0: $19
	add  $78                                         ; $40c1: $c6 $78
	ld   [hl], $8b                                   ; $40c3: $36 $8b
	adc  $b3                                         ; $40c5: $ce $b3
	ld   e, e                                        ; $40c7: $5b
	db   $ec                                         ; $40c8: $ec
	ret                                              ; $40c9: $c9


	cp   h                                           ; $40ca: $bc
	cp   c                                           ; $40cb: $b9
	ld   h, l                                        ; $40cc: $65
	inc  sp                                          ; $40cd: $33
	ld   sp, $6438                                   ; $40ce: $31 $38 $64
	adc  c                                           ; $40d1: $89
	ld   h, l                                        ; $40d2: $65
	ld   a, d                                        ; $40d3: $7a
	rst  $38                                         ; $40d4: $ff
	add  e                                           ; $40d5: $83
	ld   l, h                                        ; $40d6: $6c
	db   $fd                                         ; $40d7: $fd
	sbc  d                                           ; $40d8: $9a
	call z, Call_0fb_4584                            ; $40d9: $cc $84 $45
	ld   hl, $935d                                   ; $40dc: $21 $5d $93
	dec  [hl]                                        ; $40df: $35
	adc  e                                           ; $40e0: $8b
	sub  l                                           ; $40e1: $95
	ld   e, l                                        ; $40e2: $5d
	ld   sp, hl                                      ; $40e3: $f9
	dec  [hl]                                        ; $40e4: $35
	rst  JumpTable                                         ; $40e5: $df
	ld   [$dc7b], a                                  ; $40e6: $ea $7b $dc
	ld   h, a                                        ; $40e9: $67
	add  c                                           ; $40ea: $81
	ld   de, $6788                                   ; $40eb: $11 $88 $67
	ld   b, c                                        ; $40ee: $41
	ld   l, l                                        ; $40ef: $6d
	jp   z, $6ca9                            ; $40f0: $ca $a9 $6c

	xor  h                                           ; $40f3: $ac
	ret  c                                           ; $40f4: $d8

	adc  c                                           ; $40f5: $89
	cp   $97                                         ; $40f6: $fe $97
	ld   h, d                                        ; $40f8: $62
	inc  de                                          ; $40f9: $13
	ld   [hl], $55                                   ; $40fa: $36 $55
	ld   c, c                                        ; $40fc: $49
	ld   a, b                                        ; $40fd: $78
	and  [hl]                                        ; $40fe: $a6
	ld   l, c                                        ; $40ff: $69
	ld   a, [$9b97]                                  ; $4100: $fa $97 $9b
	xor  l                                           ; $4103: $ad
	cp   h                                           ; $4104: $bc
	xor  e                                           ; $4105: $ab
	ld   h, h                                        ; $4106: $64
	ld   l, c                                        ; $4107: $69
	add  c                                           ; $4108: $81
	ld   h, $a6                                      ; $4109: $26 $a6
	inc  hl                                          ; $410b: $23
	ld   a, l                                        ; $410c: $7d
	and  a                                           ; $410d: $a7
	ld   a, c                                        ; $410e: $79
	db   $ec                                         ; $410f: $ec
	ld   a, b                                        ; $4110: $78
	db   $dd                                         ; $4111: $dd
	xor  b                                           ; $4112: $a8
	adc  c                                           ; $4113: $89
	rst  JumpTable                                         ; $4114: $df
	and  [hl]                                        ; $4115: $a6
	ld   b, [hl]                                     ; $4116: $46
	ld   d, c                                        ; $4117: $51
	scf                                              ; $4118: $37
	ld   [hl], e                                     ; $4119: $73
	ld   h, $9d                                      ; $411a: $26 $9d
	and  a                                           ; $411c: $a7
	scf                                              ; $411d: $37
	db   $ec                                         ; $411e: $ec
	cp   c                                           ; $411f: $b9
	adc  d                                           ; $4120: $8a
	jp   z, $9d88                                    ; $4121: $ca $88 $9d

	sub  h                                           ; $4124: $94
	ld   h, [hl]                                     ; $4125: $66
	ld   d, h                                        ; $4126: $54
	inc  d                                           ; $4127: $14
	add  [hl]                                        ; $4128: $86
	halt                                             ; $4129: $76
	ld   d, [hl]                                     ; $412a: $56
	cp   l                                           ; $412b: $bd
	xor  c                                           ; $412c: $a9
	and  a                                           ; $412d: $a7
	sbc  e                                           ; $412e: $9b
	cp   e                                           ; $412f: $bb
	xor  c                                           ; $4130: $a9
	sbc  d                                           ; $4131: $9a
	xor  [hl]                                        ; $4132: $ae
	or   [hl]                                        ; $4133: $b6
	ld   d, l                                        ; $4134: $55
	ld   b, e                                        ; $4135: $43
	dec  h                                           ; $4136: $25
	add  a                                           ; $4137: $87
	ld   hl, $a77c                                   ; $4138: $21 $7c $a7
	ld   a, c                                        ; $413b: $79
	add  a                                           ; $413c: $87
	jp   z, $898b                                    ; $413d: $ca $8b $89

	cp   l                                           ; $4140: $bd
	sbc  d                                           ; $4141: $9a
	xor  d                                           ; $4142: $aa
	ld   [hl], l                                     ; $4143: $75
	ld   b, h                                        ; $4144: $44
	ld   [hl], h                                     ; $4145: $74
	ld   d, [hl]                                     ; $4146: $56
	ld   h, [hl]                                     ; $4147: $66
	ld   a, c                                        ; $4148: $79
	sbc  h                                           ; $4149: $9c
	adc  b                                           ; $414a: $88
	sub  l                                           ; $414b: $95
	sbc  [hl]                                        ; $414c: $9e
	and  h                                           ; $414d: $a4
	adc  d                                           ; $414e: $8a
	cp   c                                           ; $414f: $b9
	adc  e                                           ; $4150: $8b
	sbc  b                                           ; $4151: $98
	ld   [hl], l                                     ; $4152: $75
	ld   e, c                                        ; $4153: $59
	ld   d, e                                        ; $4154: $53
	ld   a, d                                        ; $4155: $7a
	add  e                                           ; $4156: $83
	ld   l, c                                        ; $4157: $69
	xor  b                                           ; $4158: $a8
	sbc  b                                           ; $4159: $98
	ld   a, b                                        ; $415a: $78
	adc  c                                           ; $415b: $89
	sbc  e                                           ; $415c: $9b
	cp   c                                           ; $415d: $b9
	adc  d                                           ; $415e: $8a
	adc  b                                           ; $415f: $88
	jp   z, $8689                                    ; $4160: $ca $89 $86

	ld   d, e                                        ; $4163: $53
	ld   [hl], $75                                   ; $4164: $36 $75
	ld   e, c                                        ; $4166: $59
	sub  [hl]                                        ; $4167: $96
	ld   [hl], a                                     ; $4168: $77
	ld   a, e                                        ; $4169: $7b
	rst  ToBoot                                         ; $416a: $c7
	ld   l, e                                        ; $416b: $6b
	xor  c                                           ; $416c: $a9
	sbc  c                                           ; $416d: $99
	cp   b                                           ; $416e: $b8
	sbc  e                                           ; $416f: $9b
	sbc  b                                           ; $4170: $98
	and  [hl]                                        ; $4171: $a6
	add  hl, sp                                      ; $4172: $39
	ld   h, e                                        ; $4173: $63
	ld   c, c                                        ; $4174: $49
	or   a                                           ; $4175: $b7
	dec  [hl]                                        ; $4176: $35
	sbc  b                                           ; $4177: $98
	ld   [hl], a                                     ; $4178: $77
	adc  b                                           ; $4179: $88
	ld   a, b                                        ; $417a: $78
	xor  c                                           ; $417b: $a9
	adc  c                                           ; $417c: $89
	sbc  h                                           ; $417d: $9c
	sub  a                                           ; $417e: $97
	adc  e                                           ; $417f: $8b
	add  [hl]                                        ; $4180: $86
	jp   z, $6268                                    ; $4181: $ca $68 $62

	ld   e, b                                        ; $4184: $58
	adc  d                                           ; $4185: $8a
	and  a                                           ; $4186: $a7
	ld   d, [hl]                                     ; $4187: $56
	adc  e                                           ; $4188: $8b
	ld   h, [hl]                                     ; $4189: $66
	xor  b                                           ; $418a: $a8
	sbc  b                                           ; $418b: $98
	adc  b                                           ; $418c: $88
	adc  e                                           ; $418d: $8b

Call_0fb_418e:
	cp   d                                           ; $418e: $ba
	halt                                             ; $418f: $76
	cp   d                                           ; $4190: $ba
	adc  c                                           ; $4191: $89
	xor  e                                           ; $4192: $ab
	add  [hl]                                        ; $4193: $86
	ld   c, c                                        ; $4194: $49
	add  l                                           ; $4195: $85
	adc  d                                           ; $4196: $8a
	adc  c                                           ; $4197: $89
	add  h                                           ; $4198: $84
	ld   e, b                                        ; $4199: $58
	cp   c                                           ; $419a: $b9
	ld   [hl], a                                     ; $419b: $77
	adc  c                                           ; $419c: $89
	adc  c                                           ; $419d: $89
	sub  a                                           ; $419e: $97
	ld   e, c                                        ; $419f: $59
	xor  c                                           ; $41a0: $a9
	ld   a, b                                        ; $41a1: $78
	xor  d                                           ; $41a2: $aa
	sbc  c                                           ; $41a3: $99
	sbc  b                                           ; $41a4: $98
	add  [hl]                                        ; $41a5: $86
	ld   d, a                                        ; $41a6: $57
	ld   h, a                                        ; $41a7: $67
	xor  c                                           ; $41a8: $a9
	ld   [hl], a                                     ; $41a9: $77
	inc  [hl]                                        ; $41aa: $34
	ld   a, e                                        ; $41ab: $7b
	sub  a                                           ; $41ac: $97
	sub  a                                           ; $41ad: $97
	ld   a, b                                        ; $41ae: $78
	sbc  d                                           ; $41af: $9a
	or   [hl]                                        ; $41b0: $b6
	ld   e, e                                        ; $41b1: $5b
	xor  c                                           ; $41b2: $a9
	xor  d                                           ; $41b3: $aa
	ld   h, l                                        ; $41b4: $65
	adc  d                                           ; $41b5: $8a
	cp   b                                           ; $41b6: $b8
	ld   d, h                                        ; $41b7: $54
	ld   e, c                                        ; $41b8: $59
	cp   d                                           ; $41b9: $ba
	ld   d, h                                        ; $41ba: $54
	ld   h, [hl]                                     ; $41bb: $66
	ld   a, c                                        ; $41bc: $79
	sub  a                                           ; $41bd: $97
	ld   h, [hl]                                     ; $41be: $66
	adc  d                                           ; $41bf: $8a
	cp   d                                           ; $41c0: $ba
	ld   a, b                                        ; $41c1: $78
	adc  c                                           ; $41c2: $89
	cp   e                                           ; $41c3: $bb
	ld   a, c                                        ; $41c4: $79
	sbc  b                                           ; $41c5: $98
	sbc  c                                           ; $41c6: $99
	sbc  c                                           ; $41c7: $99
	add  l                                           ; $41c8: $85
	adc  c                                           ; $41c9: $89
	add  [hl]                                        ; $41ca: $86
	ld   e, b                                        ; $41cb: $58
	sub  a                                           ; $41cc: $97
	halt                                             ; $41cd: $76
	ld   c, b                                        ; $41ce: $48
	sub  a                                           ; $41cf: $97
	ld   h, [hl]                                     ; $41d0: $66
	and  a                                           ; $41d1: $a7
	ld   a, c                                        ; $41d2: $79
	sub  a                                           ; $41d3: $97
	sbc  h                                           ; $41d4: $9c
	add  a                                           ; $41d5: $87
	sbc  b                                           ; $41d6: $98
	sbc  c                                           ; $41d7: $99
	cp   c                                           ; $41d8: $b9
	sbc  b                                           ; $41d9: $98
	ld   l, c                                        ; $41da: $69
	sbc  b                                           ; $41db: $98
	add  a                                           ; $41dc: $87
	ld   b, a                                        ; $41dd: $47
	xor  c                                           ; $41de: $a9
	ld   h, e                                        ; $41df: $63
	ld   d, a                                        ; $41e0: $57
	add  [hl]                                        ; $41e1: $86
	add  l                                           ; $41e2: $85
	ld   e, c                                        ; $41e3: $59
	sbc  c                                           ; $41e4: $99
	sbc  b                                           ; $41e5: $98
	ld   l, b                                        ; $41e6: $68
	sbc  c                                           ; $41e7: $99
	xor  d                                           ; $41e8: $aa
	halt                                             ; $41e9: $76
	xor  b                                           ; $41ea: $a8
	adc  c                                           ; $41eb: $89
	ld   a, b                                        ; $41ec: $78
	ld   [hl], a                                     ; $41ed: $77
	adc  c                                           ; $41ee: $89
	ld   h, [hl]                                     ; $41ef: $66
	and  a                                           ; $41f0: $a7
	ld   a, c                                        ; $41f1: $79
	ld   [hl], l                                     ; $41f2: $75
	ld   [hl], a                                     ; $41f3: $77
	ld   l, b                                        ; $41f4: $68
	ld   a, b                                        ; $41f5: $78
	adc  b                                           ; $41f6: $88
	ld   l, e                                        ; $41f7: $6b
	and  a                                           ; $41f8: $a7
	sbc  c                                           ; $41f9: $99
	sbc  c                                           ; $41fa: $99
	sbc  c                                           ; $41fb: $99
	sbc  b                                           ; $41fc: $98
	sbc  c                                           ; $41fd: $99
	ld   a, b                                        ; $41fe: $78
	ld   a, b                                        ; $41ff: $78
	sbc  c                                           ; $4200: $99
	halt                                             ; $4201: $76
	ld   a, b                                        ; $4202: $78
	sbc  b                                           ; $4203: $98
	ld   h, [hl]                                     ; $4204: $66
	adc  b                                           ; $4205: $88
	sub  a                                           ; $4206: $97
	ld   h, a                                        ; $4207: $67
	sbc  b                                           ; $4208: $98
	sbc  b                                           ; $4209: $98
	ld   a, c                                        ; $420a: $79
	xor  b                                           ; $420b: $a8
	sbc  c                                           ; $420c: $99
	ld   l, b                                        ; $420d: $68
	and  a                                           ; $420e: $a7
	sbc  c                                           ; $420f: $99
	ld   [hl], a                                     ; $4210: $77
	adc  c                                           ; $4211: $89
	sbc  b                                           ; $4212: $98
	ld   [hl], a                                     ; $4213: $77
	ld   [hl], a                                     ; $4214: $77
	add  a                                           ; $4215: $87
	add  a                                           ; $4216: $87
	ld   a, b                                        ; $4217: $78
	adc  b                                           ; $4218: $88
	ld   h, a                                        ; $4219: $67
	adc  b                                           ; $421a: $88
	adc  c                                           ; $421b: $89
	sbc  b                                           ; $421c: $98
	adc  b                                           ; $421d: $88
	xor  c                                           ; $421e: $a9
	add  a                                           ; $421f: $87
	ld   a, c                                        ; $4220: $79
	sbc  b                                           ; $4221: $98
	ld   h, a                                        ; $4222: $67
	ld   a, b                                        ; $4223: $78
	adc  b                                           ; $4224: $88
	ld   [hl], a                                     ; $4225: $77
	adc  b                                           ; $4226: $88
	adc  b                                           ; $4227: $88
	ld   [hl], a                                     ; $4228: $77
	ld   a, b                                        ; $4229: $78
	add  a                                           ; $422a: $87
	ld   h, [hl]                                     ; $422b: $66
	adc  c                                           ; $422c: $89
	sub  a                                           ; $422d: $97
	ld   h, a                                        ; $422e: $67
	sbc  c                                           ; $422f: $99
	ld   [hl], a                                     ; $4230: $77
	ld   a, c                                        ; $4231: $79
	xor  b                                           ; $4232: $a8
	add  a                                           ; $4233: $87
	adc  c                                           ; $4234: $89
	sbc  b                                           ; $4235: $98
	adc  c                                           ; $4236: $89
	ld   [hl], a                                     ; $4237: $77
	ld   a, b                                        ; $4238: $78
	xor  c                                           ; $4239: $a9
	halt                                             ; $423a: $76
	ld   a, c                                        ; $423b: $79
	sub  a                                           ; $423c: $97
	ld   [hl], a                                     ; $423d: $77
	sbc  b                                           ; $423e: $98
	adc  b                                           ; $423f: $88
	adc  b                                           ; $4240: $88
	ld   a, b                                        ; $4241: $78
	adc  c                                           ; $4242: $89
	sbc  b                                           ; $4243: $98
	ld   a, b                                        ; $4244: $78
	adc  b                                           ; $4245: $88
	sub  a                                           ; $4246: $97
	ld   a, c                                        ; $4247: $79
	sbc  c                                           ; $4248: $99
	sbc  b                                           ; $4249: $98
	ld   a, b                                        ; $424a: $78
	sbc  c                                           ; $424b: $99
	sbc  d                                           ; $424c: $9a
	ld   [hl], a                                     ; $424d: $77
	adc  b                                           ; $424e: $88
	sbc  b                                           ; $424f: $98
	ld   a, b                                        ; $4250: $78
	adc  c                                           ; $4251: $89
	sbc  b                                           ; $4252: $98
	ld   a, b                                        ; $4253: $78
	sbc  b                                           ; $4254: $98
	adc  b                                           ; $4255: $88
	adc  b                                           ; $4256: $88
	adc  b                                           ; $4257: $88
	adc  c                                           ; $4258: $89
	add  a                                           ; $4259: $87
	adc  b                                           ; $425a: $88
	adc  b                                           ; $425b: $88
	add  a                                           ; $425c: $87
	adc  b                                           ; $425d: $88
	sbc  b                                           ; $425e: $98
	adc  b                                           ; $425f: $88
	sbc  b                                           ; $4260: $98
	ld   [hl], a                                     ; $4261: $77
	adc  c                                           ; $4262: $89
	add  a                                           ; $4263: $87
	adc  c                                           ; $4264: $89
	sbc  b                                           ; $4265: $98
	adc  c                                           ; $4266: $89
	adc  c                                           ; $4267: $89
	add  a                                           ; $4268: $87
	adc  b                                           ; $4269: $88
	sbc  b                                           ; $426a: $98
	adc  b                                           ; $426b: $88
	sbc  c                                           ; $426c: $99
	adc  b                                           ; $426d: $88
	adc  b                                           ; $426e: $88
	adc  b                                           ; $426f: $88
	adc  b                                           ; $4270: $88
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	adc  b                                           ; $4274: $88
	adc  b                                           ; $4275: $88
	sbc  c                                           ; $4276: $99
	adc  b                                           ; $4277: $88
	adc  c                                           ; $4278: $89
	adc  b                                           ; $4279: $88
	adc  c                                           ; $427a: $89
	sbc  b                                           ; $427b: $98
	add  a                                           ; $427c: $87
	adc  c                                           ; $427d: $89
	adc  b                                           ; $427e: $88
	adc  b                                           ; $427f: $88
	adc  c                                           ; $4280: $89
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	adc  b                                           ; $4283: $88
	sbc  b                                           ; $4284: $98
	adc  b                                           ; $4285: $88
	adc  b                                           ; $4286: $88
	sbc  b                                           ; $4287: $98
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	sbc  b                                           ; $428a: $98
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	adc  b                                           ; $428d: $88
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	sbc  b                                           ; $4290: $98
	ld   a, b                                        ; $4291: $78
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
	add  c                                           ; $42b2: $81
	ld   de, $1111                                   ; $42b3: $11 $11 $11
	ld   de, $1111                                   ; $42b6: $11 $11 $11
	ld   de, $1111                                   ; $42b9: $11 $11 $11
	ld   de, $1111                                   ; $42bc: $11 $11 $11
	ld   de, $1111                                   ; $42bf: $11 $11 $11
	ld   de, $1111                                   ; $42c2: $11 $11 $11
	ld   de, $1111                                   ; $42c5: $11 $11 $11
	ld   de, $1111                                   ; $42c8: $11 $11 $11
	ld   de, $1111                                   ; $42cb: $11 $11 $11
	nop                                              ; $42ce: $00
	ld   c, b                                        ; $42cf: $48
	ld   de, $1111                                   ; $42d0: $11 $11 $11
	ld   de, $1111                                   ; $42d3: $11 $11 $11
	ld   de, $1111                                   ; $42d6: $11 $11 $11
	ld   de, $5413                                   ; $42d9: $11 $13 $54
	ld   d, h                                        ; $42dc: $54
	ld   d, h                                        ; $42dd: $54
	ld   b, c                                        ; $42de: $41
	rra                                              ; $42df: $1f
	rst  $38                                         ; $42e0: $ff
	pop  af                                          ; $42e1: $f1
	ld   de, $1511                                   ; $42e2: $11 $11 $15
	pop  de                                          ; $42e5: $d1
	ld   de, $de1c                                   ; $42e6: $11 $1c $de
	call c, $d1de                                    ; $42e9: $dc $de $d1
	ld   de, $1111                                   ; $42ec: $11 $11 $11
	ld   de, $1111                                   ; $42ef: $11 $11 $11
	ld   de, $1111                                   ; $42f2: $11 $11 $11
	ld   de, $1111                                   ; $42f5: $11 $11 $11
	ld   de, $5411                                   ; $42f8: $11 $11 $54
	ld   b, h                                        ; $42fb: $44
	push de                                          ; $42fc: $d5
	ld   de, $5454                                   ; $42fd: $11 $54 $54
	ld   h, a                                        ; $4300: $67
	ld   [hl], d                                     ; $4301: $72
	ld   de, $1111                                   ; $4302: $11 $11 $11
	ld   de, $1112                                   ; $4305: $11 $12 $11
	ld   [de], a                                     ; $4308: $12
	ld   de, $1111                                   ; $4309: $11 $11 $11
	ld   h, [hl]                                     ; $430c: $66
	halt                                             ; $430d: $76
	and  l                                           ; $430e: $a5
	ld   de, $8888                                   ; $430f: $11 $88 $88
	adc  b                                           ; $4312: $88
	sbc  c                                           ; $4313: $99
	adc  b                                           ; $4314: $88
	sbc  c                                           ; $4315: $99
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
	sbc  c                                           ; $4326: $99
	adc  b                                           ; $4327: $88
	adc  b                                           ; $4328: $88
	adc  b                                           ; $4329: $88
	adc  c                                           ; $432a: $89
	sbc  c                                           ; $432b: $99
	sbc  c                                           ; $432c: $99
	sbc  b                                           ; $432d: $98
	adc  c                                           ; $432e: $89
	sbc  b                                           ; $432f: $98
	sbc  c                                           ; $4330: $99
	sbc  b                                           ; $4331: $98
	sbc  b                                           ; $4332: $98
	adc  b                                           ; $4333: $88
	ld   [hl], a                                     ; $4334: $77
	ld   [hl], a                                     ; $4335: $77
	ld   h, [hl]                                     ; $4336: $66
	ld   h, [hl]                                     ; $4337: $66
	ld   h, [hl]                                     ; $4338: $66
	ld   d, l                                        ; $4339: $55
	ld   d, l                                        ; $433a: $55
	ld   d, l                                        ; $433b: $55
	ld   d, [hl]                                     ; $433c: $56
	ld   a, c                                        ; $433d: $79
	xor  h                                           ; $433e: $ac
	call $cbcc                                       ; $433f: $cd $cc $cb
	xor  d                                           ; $4342: $aa
	sbc  d                                           ; $4343: $9a
	xor  d                                           ; $4344: $aa
	xor  c                                           ; $4345: $a9
	sbc  c                                           ; $4346: $99
	adc  b                                           ; $4347: $88
	adc  c                                           ; $4348: $89
	adc  b                                           ; $4349: $88
	add  a                                           ; $434a: $87
	ld   h, l                                        ; $434b: $65
	ld   d, h                                        ; $434c: $54
	ld   b, h                                        ; $434d: $44
	inc  sp                                          ; $434e: $33
	ld   hl, $3611                                   ; $434f: $21 $11 $36
	sbc  a                                           ; $4352: $9f
	rst  $38                                         ; $4353: $ff
	rst  $38                                         ; $4354: $ff
	ld   [$6897], a                                  ; $4355: $ea $97 $68
	ld   [hl], a                                     ; $4358: $77
	halt                                             ; $4359: $76
	ld   h, l                                        ; $435a: $65
	ld   h, a                                        ; $435b: $67
	adc  e                                           ; $435c: $8b
	call $95ca                                       ; $435d: $cd $ca $95
	ld   b, h                                        ; $4360: $44
	ld   b, l                                        ; $4361: $45
	ld   a, c                                        ; $4362: $79
	cp   e                                           ; $4363: $bb
	cp   c                                           ; $4364: $b9
	adc  c                                           ; $4365: $89
	adc  d                                           ; $4366: $8a
	cp   h                                           ; $4367: $bc
	res  7, c                                        ; $4368: $cb $b9
	ld   [hl], a                                     ; $436a: $77
	ld   a, b                                        ; $436b: $78
	sbc  c                                           ; $436c: $99
	xor  b                                           ; $436d: $a8
	ld   [hl], l                                     ; $436e: $75
	ld   [hl-], a                                    ; $436f: $32
	ld   hl, $1121                                   ; $4370: $21 $21 $11
	ld   de, $ef35                                   ; $4373: $11 $35 $ef
	rst  $38                                         ; $4376: $ff
	rst  $38                                         ; $4377: $ff
	reti                                             ; $4378: $d9


	add  e                                           ; $4379: $83
	ld   d, l                                        ; $437a: $55
	ld   d, [hl]                                     ; $437b: $56
	ld   d, [hl]                                     ; $437c: $56
	ld   d, h                                        ; $437d: $54
	ld   a, b                                        ; $437e: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $437f: $cf
	rst  $38                                         ; $4380: $ff
	db   $db                                         ; $4381: $db
	ld   [hl], h                                     ; $4382: $74
	inc  sp                                          ; $4383: $33
	ld   b, a                                        ; $4384: $47
	adc  e                                           ; $4385: $8b
	jp   z, $bcb9                                    ; $4386: $ca $b9 $bc

	call $a8ed                                       ; $4389: $cd $ed $a8
	ld   h, h                                        ; $438c: $64
	ld   b, l                                        ; $438d: $45
	ld   l, b                                        ; $438e: $68
	adc  c                                           ; $438f: $89
	ld   [hl], l                                     ; $4390: $75
	ld   sp, $1111                                   ; $4391: $31 $11 $11
	ld   de, $8e15                                   ; $4394: $11 $15 $8e
	rst  $38                                         ; $4397: $ff
	rst  $38                                         ; $4398: $ff
	cp   $78                                         ; $4399: $fe $78
	ld   b, e                                        ; $439b: $43
	ld   b, c                                        ; $439c: $41
	ld   b, d                                        ; $439d: $42
	ld   b, a                                        ; $439e: $47
	ld   a, l                                        ; $439f: $7d
	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	cp   $97                                         ; $43a2: $fe $97
	inc  sp                                          ; $43a4: $33
	inc  [hl]                                        ; $43a5: $34
	ld   h, a                                        ; $43a6: $67
	adc  d                                           ; $43a7: $8a
	sbc  e                                           ; $43a8: $9b
	cp   h                                           ; $43a9: $bc
	db   $ed                                         ; $43aa: $ed
	db   $ec                                         ; $43ab: $ec
	sbc  b                                           ; $43ac: $98
	ld   h, l                                        ; $43ad: $65
	ld   d, l                                        ; $43ae: $55
	ld   h, l                                        ; $43af: $65
	ld   d, l                                        ; $43b0: $55
	ld   [hl-], a                                    ; $43b1: $32
	ld   de, $1111                                   ; $43b2: $11 $11 $11
	inc  d                                           ; $43b5: $14
	adc  $ff                                         ; $43b6: $ce $ff
	rst  $38                                         ; $43b8: $ff
	sbc  $87                                         ; $43b9: $de $87
	add  e                                           ; $43bb: $83
	ld   [hl], e                                     ; $43bc: $73
	ld   b, e                                        ; $43bd: $43
	ld   h, $6b                                      ; $43be: $26 $6b
	rst  $38                                         ; $43c0: $ff
	rst  $38                                         ; $43c1: $ff
	db   $fd                                         ; $43c2: $fd
	add  l                                           ; $43c3: $85
	inc  sp                                          ; $43c4: $33
	ld   b, l                                        ; $43c5: $45
	ld   a, b                                        ; $43c6: $78
	adc  c                                           ; $43c7: $89
	sbc  c                                           ; $43c8: $99
	xor  e                                           ; $43c9: $ab
	sbc  $dd                                         ; $43ca: $de $dd
	cp   c                                           ; $43cc: $b9
	ld   [hl], l                                     ; $43cd: $75
	ld   d, l                                        ; $43ce: $55
	ld   h, a                                        ; $43cf: $67
	ld   [hl], a                                     ; $43d0: $77
	ld   h, h                                        ; $43d1: $64
	ld   hl, $1111                                   ; $43d2: $21 $11 $11
	ld   de, $ff7c                                   ; $43d5: $11 $7c $ff
	rst  $38                                         ; $43d8: $ff
	rst  $38                                         ; $43d9: $ff
	cp   c                                           ; $43da: $b9
	and  a                                           ; $43db: $a7
	sub  l                                           ; $43dc: $95
	ld   hl, $3711                                   ; $43dd: $21 $11 $37
	rst  $28                                         ; $43e0: $ef
	rst  $38                                         ; $43e1: $ff
	rst  $38                                         ; $43e2: $ff
	and  a                                           ; $43e3: $a7
	ld   h, [hl]                                     ; $43e4: $66
	ld   a, b                                        ; $43e5: $78
	add  a                                           ; $43e6: $87
	ld   h, [hl]                                     ; $43e7: $66
	ld   l, b                                        ; $43e8: $68
	adc  $ff                                         ; $43e9: $ce $ff
	db   $eb                                         ; $43eb: $eb
	sub  [hl]                                        ; $43ec: $96
	ld   b, e                                        ; $43ed: $43
	ld   b, h                                        ; $43ee: $44
	ld   sp, $1111                                   ; $43ef: $31 $11 $11
	ld   de, $ff19                                   ; $43f2: $11 $19 $ff
	rst  $38                                         ; $43f5: $ff
	rst  $38                                         ; $43f6: $ff
	jp   hl                                          ; $43f7: $e9


	db   $db                                         ; $43f8: $db
	and  a                                           ; $43f9: $a7
	ld   de, $1411                                   ; $43fa: $11 $11 $14
	rst  $28                                         ; $43fd: $ef
	rst  $38                                         ; $43fe: $ff
	rst  $38                                         ; $43ff: $ff
	cp   b                                           ; $4400: $b8
	add  a                                           ; $4401: $87
	xor  b                                           ; $4402: $a8
	ld   [hl], l                                     ; $4403: $75
	ld   [hl+], a                                    ; $4404: $22
	scf                                              ; $4405: $37
	rst  JumpTable                                         ; $4406: $df
	rst  $38                                         ; $4407: $ff
	ei                                               ; $4408: $fb
	ld   h, h                                        ; $4409: $64
	ld   [hl+], a                                    ; $440a: $22
	ld   [hl-], a                                    ; $440b: $32
	ld   de, $1111                                   ; $440c: $11 $11 $11
	dec  d                                           ; $440f: $15
	rst  $38                                         ; $4410: $ff
	rst  $38                                         ; $4411: $ff
	rst  $38                                         ; $4412: $ff
	db   $fd                                         ; $4413: $fd
	rst  JumpTable                                         ; $4414: $df
	call c, $1131                                    ; $4415: $dc $31 $11
	ld   de, $ffaf                                   ; $4418: $11 $af $ff
	rst  $38                                         ; $441b: $ff
	db   $fc                                         ; $441c: $fc
	call $83ee                                       ; $441d: $cd $ee $83
	ld   de, $bf12                                   ; $4420: $11 $12 $bf
	rst  $38                                         ; $4423: $ff
	db   $fd                                         ; $4424: $fd
	ld   [hl], l                                     ; $4425: $75
	ld   b, h                                        ; $4426: $44
	ld   hl, $1111                                   ; $4427: $21 $11 $11
	ld   de, $ff4f                                   ; $442a: $11 $4f $ff
	rst  $38                                         ; $442d: $ff
	rst  $38                                         ; $442e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $442f: $cf
	rst  $38                                         ; $4430: $ff
	pop  bc                                          ; $4431: $c1
	ld   de, $1e11                                   ; $4432: $11 $11 $1e
	rst  $38                                         ; $4435: $ff
	rst  $38                                         ; $4436: $ff
	rst  $38                                         ; $4437: $ff
	rst  $38                                         ; $4438: $ff
	rst  $38                                         ; $4439: $ff
	or   l                                           ; $443a: $b5
	ld   de, $6e11                                   ; $443b: $11 $11 $6e
	rst  $38                                         ; $443e: $ff
	db   $fd                                         ; $443f: $fd
	add  l                                           ; $4440: $85
	ld   h, l                                        ; $4441: $65
	ld   b, c                                        ; $4442: $41
	ld   de, $1111                                   ; $4443: $11 $11 $11
	xor  a                                           ; $4446: $af
	rst  $38                                         ; $4447: $ff
	rst  $38                                         ; $4448: $ff
	rst  $38                                         ; $4449: $ff
	rst  $38                                         ; $444a: $ff
	rst  $38                                         ; $444b: $ff
	ld   de, $1111                                   ; $444c: $11 $11 $11
	sbc  h                                           ; $444f: $9c
	rst  $38                                         ; $4450: $ff
	rst  $38                                         ; $4451: $ff
	rst  $38                                         ; $4452: $ff
	rst  $38                                         ; $4453: $ff
	db   $fd                                         ; $4454: $fd
	ld   [hl], c                                     ; $4455: $71
	ld   de, $ae17                                   ; $4456: $11 $17 $ae
	reti                                             ; $4459: $d9


	and  a                                           ; $445a: $a7
	sbc  d                                           ; $445b: $9a
	add  l                                           ; $445c: $85
	ld   de, $1111                                   ; $445d: $11 $11 $11
	ccf                                              ; $4460: $3f
	rst  $38                                         ; $4461: $ff
	rst  $38                                         ; $4462: $ff
	rst  $38                                         ; $4463: $ff
	rst  $38                                         ; $4464: $ff
	rst  $38                                         ; $4465: $ff
	ld   de, $1111                                   ; $4466: $11 $11 $11
	ld   h, e                                        ; $4469: $63
	sbc  c                                           ; $446a: $99
	xor  a                                           ; $446b: $af
	rst  $38                                         ; $446c: $ff
	rst  $38                                         ; $446d: $ff
	cp   $b2                                         ; $446e: $fe $b2
	dec  h                                           ; $4470: $25
	add  hl, sp                                      ; $4471: $39
	inc  [hl]                                        ; $4472: $34
	ld   de, $8454                                   ; $4473: $11 $54 $84
	ld   de, $1111                                   ; $4476: $11 $11 $11
	ld   c, a                                        ; $4479: $4f
	cp   $f9                                         ; $447a: $fe $f9
	rst  $38                                         ; $447c: $ff
	rst  $38                                         ; $447d: $ff
	rst  $38                                         ; $447e: $ff
	ld   de, $1111                                   ; $447f: $11 $11 $11
	ld   h, d                                        ; $4482: $62
	inc  hl                                          ; $4483: $23
	dec  l                                           ; $4484: $2d
	rst  $38                                         ; $4485: $ff
	rst  $38                                         ; $4486: $ff
	rst  $38                                         ; $4487: $ff
	jp   z, $ab8d                                    ; $4488: $ca $8d $ab

	ld   d, d                                        ; $448b: $52
	ld   de, $6333                                   ; $448c: $11 $33 $63
	ld   de, $1111                                   ; $448f: $11 $11 $11
	ld   e, l                                        ; $4492: $5d
	ld   sp, hl                                      ; $4493: $f9
	rst  $30                                         ; $4494: $f7
	rst  $38                                         ; $4495: $ff
	rst  $38                                         ; $4496: $ff
	rst  $38                                         ; $4497: $ff
	ld   d, c                                        ; $4498: $51
	ld   de, $3141                                   ; $4499: $11 $41 $31
	ld   de, $ff19                                   ; $449c: $11 $19 $ff
	rst  $38                                         ; $449f: $ff
	rst  $38                                         ; $44a0: $ff
	rst  $28                                         ; $44a1: $ef
	rst  $38                                         ; $44a2: $ff
	db   $fd                                         ; $44a3: $fd
	ld   h, c                                        ; $44a4: $61
	ld   de, $4132                                   ; $44a5: $11 $32 $41
	ld   de, $1211                                   ; $44a8: $11 $11 $12
	ld   e, e                                        ; $44ab: $5b
	or   $f8                                         ; $44ac: $f6 $f8
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	rst  $38                                         ; $44b0: $ff
	ld   d, c                                        ; $44b1: $51
	ld   sp, $3181                                   ; $44b2: $31 $81 $31
	ld   de, $df19                                   ; $44b5: $11 $19 $df
	rst  $38                                         ; $44b8: $ff
	db   $fd                                         ; $44b9: $fd
	rst  $38                                         ; $44ba: $ff
	rst  $38                                         ; $44bb: $ff
	db   $fd                                         ; $44bc: $fd
	ld   d, e                                        ; $44bd: $53
	ld   [hl-], a                                    ; $44be: $32
	ld   d, d                                        ; $44bf: $52
	ld   de, $1111                                   ; $44c0: $11 $11 $11
	inc  de                                          ; $44c3: $13
	dec  a                                           ; $44c4: $3d
	ld   h, a                                        ; $44c5: $67
	sbc  d                                           ; $44c6: $9a
	rst  $38                                         ; $44c7: $ff
	rst  $38                                         ; $44c8: $ff
	rst  $38                                         ; $44c9: $ff
	ld   l, d                                        ; $44ca: $6a
	add  hl, sp                                      ; $44cb: $39
	add  l                                           ; $44cc: $85
	ld   sp, $2811                                   ; $44cd: $31 $11 $28
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44d0: $cf
	db   $dd                                         ; $44d1: $dd
	cp   e                                           ; $44d2: $bb
	cp   $fe                                         ; $44d3: $fe $fe
	ret  z                                           ; $44d5: $c8

	ld   b, [hl]                                     ; $44d6: $46
	ld   e, c                                        ; $44d7: $59
	adc  b                                           ; $44d8: $88
	ld   b, c                                        ; $44d9: $41
	ld   de, $3111                                   ; $44da: $11 $11 $31
	inc  [hl]                                        ; $44dd: $34
	ld   [de], a                                     ; $44de: $12
	dec  d                                           ; $44df: $15
	adc  h                                           ; $44e0: $8c
	cp   $fc                                         ; $44e1: $fe $fc
	cp   h                                           ; $44e3: $bc
	xor  l                                           ; $44e4: $ad
	res  4, a                                        ; $44e5: $cb $a7
	ld   h, [hl]                                     ; $44e7: $66
	sbc  e                                           ; $44e8: $9b
	db   $dd                                         ; $44e9: $dd
	cp   d                                           ; $44ea: $ba
	sbc  c                                           ; $44eb: $99
	xor  d                                           ; $44ec: $aa
	res  5, b                                        ; $44ed: $cb $a8
	ld   [hl], a                                     ; $44ef: $77
	ld   a, c                                        ; $44f0: $79
	sbc  c                                           ; $44f1: $99
	halt                                             ; $44f2: $76
	ld   d, e                                        ; $44f3: $53
	inc  hl                                          ; $44f4: $23
	ld   [hl-], a                                    ; $44f5: $32
	ld   sp, $1211                                   ; $44f6: $31 $11 $12
	ld   c, c                                        ; $44f9: $49
	sbc  e                                           ; $44fa: $9b
	xor  c                                           ; $44fb: $a9
	sbc  c                                           ; $44fc: $99
	call $baed                                       ; $44fd: $cd $ed $ba
	cp   e                                           ; $4500: $bb
	db   $dd                                         ; $4501: $dd
	db   $ed                                         ; $4502: $ed
	call c, $abac                                    ; $4503: $dc $ac $ab
	xor  d                                           ; $4506: $aa
	sbc  b                                           ; $4507: $98
	halt                                             ; $4508: $76
	halt                                             ; $4509: $76
	halt                                             ; $450a: $76
	ld   h, [hl]                                     ; $450b: $66
	ld   d, h                                        ; $450c: $54
	ld   [hl-], a                                    ; $450d: $32
	inc  sp                                          ; $450e: $33
	ld   [de], a                                     ; $450f: $12
	ld   de, $3511                                   ; $4510: $11 $11 $35
	adc  b                                           ; $4513: $88
	xor  c                                           ; $4514: $a9
	xor  e                                           ; $4515: $ab
	adc  $ee                                         ; $4516: $ce $ee
	sbc  $de                                         ; $4518: $de $de
	rst  $28                                         ; $451a: $ef
	sbc  $dc                                         ; $451b: $de $dc
	cp   e                                           ; $451d: $bb
	cp   c                                           ; $451e: $b9
	sbc  c                                           ; $451f: $99
	add  a                                           ; $4520: $87
	halt                                             ; $4521: $76
	ld   h, [hl]                                     ; $4522: $66
	ld   h, [hl]                                     ; $4523: $66
	ld   h, [hl]                                     ; $4524: $66
	ld   d, l                                        ; $4525: $55
	ld   d, h                                        ; $4526: $54
	ld   b, h                                        ; $4527: $44
	inc  sp                                          ; $4528: $33
	inc  sp                                          ; $4529: $33
	ld   [hl+], a                                    ; $452a: $22
	ld   [hl+], a                                    ; $452b: $22
	inc  [hl]                                        ; $452c: $34
	ld   d, a                                        ; $452d: $57
	adc  d                                           ; $452e: $8a
	xor  h                                           ; $452f: $ac
	call z, $ddde                                    ; $4530: $cc $de $dd
	db   $dd                                         ; $4533: $dd
	res  7, e                                        ; $4534: $cb $bb
	cp   e                                           ; $4536: $bb
	cp   d                                           ; $4537: $ba
	xor  d                                           ; $4538: $aa
	sbc  b                                           ; $4539: $98
	sbc  b                                           ; $453a: $98
	adc  b                                           ; $453b: $88
	ld   [hl], a                                     ; $453c: $77
	ld   [hl], a                                     ; $453d: $77
	halt                                             ; $453e: $76
	halt                                             ; $453f: $76
	ld   h, [hl]                                     ; $4540: $66
	ld   h, [hl]                                     ; $4541: $66
	ld   h, [hl]                                     ; $4542: $66
	ld   h, [hl]                                     ; $4543: $66
	ld   d, l                                        ; $4544: $55
	ld   d, h                                        ; $4545: $54
	ld   b, h                                        ; $4546: $44
	ld   b, h                                        ; $4547: $44
	ld   b, h                                        ; $4548: $44
	ld   h, [hl]                                     ; $4549: $66
	adc  c                                           ; $454a: $89
	sbc  e                                           ; $454b: $9b
	cp   e                                           ; $454c: $bb
	cp   d                                           ; $454d: $ba
	cp   d                                           ; $454e: $ba
	xor  d                                           ; $454f: $aa
	xor  d                                           ; $4550: $aa
	xor  e                                           ; $4551: $ab
	cp   e                                           ; $4552: $bb
	xor  e                                           ; $4553: $ab
	xor  c                                           ; $4554: $a9
	xor  d                                           ; $4555: $aa
	sbc  d                                           ; $4556: $9a
	sbc  c                                           ; $4557: $99
	sbc  c                                           ; $4558: $99
	adc  c                                           ; $4559: $89
	adc  b                                           ; $455a: $88
	add  a                                           ; $455b: $87
	ld   [hl], a                                     ; $455c: $77
	ld   [hl], a                                     ; $455d: $77
	ld   [hl], a                                     ; $455e: $77
	ld   h, [hl]                                     ; $455f: $66
	ld   h, [hl]                                     ; $4560: $66
	ld   h, [hl]                                     ; $4561: $66
	ld   h, [hl]                                     ; $4562: $66
	ld   h, [hl]                                     ; $4563: $66
	ld   h, [hl]                                     ; $4564: $66
	ld   h, [hl]                                     ; $4565: $66
	ld   h, [hl]                                     ; $4566: $66
	ld   h, [hl]                                     ; $4567: $66
	ld   h, a                                        ; $4568: $67
	ld   a, b                                        ; $4569: $78
	sbc  b                                           ; $456a: $98
	sbc  c                                           ; $456b: $99
	sbc  d                                           ; $456c: $9a
	sbc  d                                           ; $456d: $9a
	sbc  c                                           ; $456e: $99
	sbc  c                                           ; $456f: $99
	sbc  d                                           ; $4570: $9a
	xor  c                                           ; $4571: $a9
	sbc  c                                           ; $4572: $99
	sbc  c                                           ; $4573: $99
	sbc  c                                           ; $4574: $99
	adc  c                                           ; $4575: $89
	sbc  b                                           ; $4576: $98
	adc  b                                           ; $4577: $88
	adc  b                                           ; $4578: $88
	ld   a, b                                        ; $4579: $78
	add  a                                           ; $457a: $87
	adc  b                                           ; $457b: $88
	sbc  c                                           ; $457c: $99
	adc  b                                           ; $457d: $88
	adc  c                                           ; $457e: $89
	sbc  b                                           ; $457f: $98
	adc  b                                           ; $4580: $88
	add  a                                           ; $4581: $87
	ld   [hl], a                                     ; $4582: $77
	ld   [hl], a                                     ; $4583: $77

Call_0fb_4584:
	ld   [hl], a                                     ; $4584: $77
	ld   [hl], a                                     ; $4585: $77
	ld   [hl], a                                     ; $4586: $77
	ld   [hl], a                                     ; $4587: $77
	ld   [hl], a                                     ; $4588: $77
	ld   [hl], a                                     ; $4589: $77
	ld   [hl], a                                     ; $458a: $77
	ld   [hl], a                                     ; $458b: $77
	ld   [hl], a                                     ; $458c: $77
	ld   [hl], a                                     ; $458d: $77
	add  a                                           ; $458e: $87
	ld   [hl], a                                     ; $458f: $77
	ld   a, b                                        ; $4590: $78
	adc  b                                           ; $4591: $88
	adc  b                                           ; $4592: $88
	adc  b                                           ; $4593: $88
	adc  b                                           ; $4594: $88
	sbc  b                                           ; $4595: $98
	sbc  c                                           ; $4596: $99
	sbc  b                                           ; $4597: $98
	sbc  d                                           ; $4598: $9a
	adc  c                                           ; $4599: $89
	adc  b                                           ; $459a: $88
	add  a                                           ; $459b: $87
	ld   [hl], a                                     ; $459c: $77
	ld   [hl], a                                     ; $459d: $77
	ld   a, b                                        ; $459e: $78
	ld   [hl], a                                     ; $459f: $77
	adc  b                                           ; $45a0: $88
	adc  b                                           ; $45a1: $88
	adc  b                                           ; $45a2: $88
	adc  b                                           ; $45a3: $88
	adc  b                                           ; $45a4: $88
	adc  b                                           ; $45a5: $88
	adc  b                                           ; $45a6: $88
	sbc  b                                           ; $45a7: $98
	adc  b                                           ; $45a8: $88
	sbc  b                                           ; $45a9: $98
	sbc  c                                           ; $45aa: $99
	sbc  c                                           ; $45ab: $99
	adc  b                                           ; $45ac: $88
	adc  b                                           ; $45ad: $88
	sbc  b                                           ; $45ae: $98
	sbc  c                                           ; $45af: $99
	adc  c                                           ; $45b0: $89
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	add  a                                           ; $45b3: $87
	ld   [hl], a                                     ; $45b4: $77
	ld   [hl], a                                     ; $45b5: $77
	ld   [hl], a                                     ; $45b6: $77
	ld   [hl], a                                     ; $45b7: $77
	ld   [hl], a                                     ; $45b8: $77
	ld   [hl], a                                     ; $45b9: $77
	ld   a, b                                        ; $45ba: $78
	ld   a, b                                        ; $45bb: $78
	adc  b                                           ; $45bc: $88
	adc  b                                           ; $45bd: $88
	adc  b                                           ; $45be: $88
	adc  b                                           ; $45bf: $88
	sbc  c                                           ; $45c0: $99
	sbc  b                                           ; $45c1: $98
	sbc  c                                           ; $45c2: $99
	adc  d                                           ; $45c3: $8a
	sub  a                                           ; $45c4: $97
	sbc  b                                           ; $45c5: $98
	adc  b                                           ; $45c6: $88
	adc  b                                           ; $45c7: $88
	sbc  b                                           ; $45c8: $98
	adc  c                                           ; $45c9: $89
	adc  b                                           ; $45ca: $88
	adc  b                                           ; $45cb: $88
	adc  b                                           ; $45cc: $88
	ld   [hl], a                                     ; $45cd: $77
	ld   a, c                                        ; $45ce: $79
	sub  [hl]                                        ; $45cf: $96
	sub  a                                           ; $45d0: $97
	adc  b                                           ; $45d1: $88
	adc  b                                           ; $45d2: $88
	ld   a, b                                        ; $45d3: $78
	ld   a, b                                        ; $45d4: $78
	adc  b                                           ; $45d5: $88
	ld   a, b                                        ; $45d6: $78
	add  a                                           ; $45d7: $87
	sbc  b                                           ; $45d8: $98
	sbc  b                                           ; $45d9: $98
	adc  b                                           ; $45da: $88
	adc  b                                           ; $45db: $88
	adc  b                                           ; $45dc: $88
	adc  c                                           ; $45dd: $89
	adc  b                                           ; $45de: $88
	adc  b                                           ; $45df: $88
	adc  b                                           ; $45e0: $88
	sbc  c                                           ; $45e1: $99
	sbc  c                                           ; $45e2: $99
	sbc  b                                           ; $45e3: $98
	adc  b                                           ; $45e4: $88
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	add  a                                           ; $45e7: $87
	ld   [hl], a                                     ; $45e8: $77
	adc  b                                           ; $45e9: $88
	add  a                                           ; $45ea: $87
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	adc  c                                           ; $45ed: $89
	adc  b                                           ; $45ee: $88
	adc  b                                           ; $45ef: $88
	adc  b                                           ; $45f0: $88
	ld   a, b                                        ; $45f1: $78
	add  a                                           ; $45f2: $87
	adc  b                                           ; $45f3: $88
	adc  b                                           ; $45f4: $88
	adc  b                                           ; $45f5: $88
	adc  b                                           ; $45f6: $88
	adc  b                                           ; $45f7: $88
	add  a                                           ; $45f8: $87
	adc  b                                           ; $45f9: $88
	adc  c                                           ; $45fa: $89
	adc  c                                           ; $45fb: $89
	sbc  c                                           ; $45fc: $99
	sbc  b                                           ; $45fd: $98
	sbc  b                                           ; $45fe: $98
	sbc  b                                           ; $45ff: $98
	adc  b                                           ; $4600: $88
	adc  b                                           ; $4601: $88
	add  a                                           ; $4602: $87
	adc  b                                           ; $4603: $88
	ld   a, b                                        ; $4604: $78
	adc  b                                           ; $4605: $88
	ld   a, b                                        ; $4606: $78
	adc  b                                           ; $4607: $88
	sbc  b                                           ; $4608: $98
	adc  b                                           ; $4609: $88
	adc  b                                           ; $460a: $88
	adc  b                                           ; $460b: $88
	adc  b                                           ; $460c: $88
	adc  b                                           ; $460d: $88
	adc  b                                           ; $460e: $88
	sbc  b                                           ; $460f: $98
	adc  b                                           ; $4610: $88
	adc  b                                           ; $4611: $88
	adc  b                                           ; $4612: $88
	adc  b                                           ; $4613: $88
	adc  b                                           ; $4614: $88
	adc  c                                           ; $4615: $89
	adc  b                                           ; $4616: $88
	adc  b                                           ; $4617: $88
	adc  b                                           ; $4618: $88
	add  a                                           ; $4619: $87
	adc  b                                           ; $461a: $88
	adc  b                                           ; $461b: $88
	adc  b                                           ; $461c: $88
	ld   a, b                                        ; $461d: $78
	ld   a, b                                        ; $461e: $78
	ld   a, b                                        ; $461f: $78
	add  a                                           ; $4620: $87
	adc  b                                           ; $4621: $88
	adc  b                                           ; $4622: $88
	adc  b                                           ; $4623: $88
	adc  c                                           ; $4624: $89
	ld   a, c                                        ; $4625: $79
	add  a                                           ; $4626: $87
	adc  b                                           ; $4627: $88
	adc  b                                           ; $4628: $88
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	adc  b                                           ; $462b: $88
	adc  b                                           ; $462c: $88
	sbc  b                                           ; $462d: $98
	adc  b                                           ; $462e: $88
	sbc  b                                           ; $462f: $98
	adc  c                                           ; $4630: $89
	adc  b                                           ; $4631: $88
	sub  a                                           ; $4632: $97
	sbc  b                                           ; $4633: $98
	ld   a, b                                        ; $4634: $78
	adc  b                                           ; $4635: $88
	sub  a                                           ; $4636: $97
	adc  b                                           ; $4637: $88
	adc  c                                           ; $4638: $89
	adc  b                                           ; $4639: $88
	sbc  b                                           ; $463a: $98
	adc  b                                           ; $463b: $88
	adc  b                                           ; $463c: $88
	add  a                                           ; $463d: $87
	add  a                                           ; $463e: $87
	adc  b                                           ; $463f: $88
	add  a                                           ; $4640: $87
	adc  c                                           ; $4641: $89
	adc  b                                           ; $4642: $88
	adc  c                                           ; $4643: $89
	adc  b                                           ; $4644: $88
	adc  b                                           ; $4645: $88
	adc  b                                           ; $4646: $88
	ld   a, b                                        ; $4647: $78
	ld   [hl], a                                     ; $4648: $77
	sub  a                                           ; $4649: $97
	adc  b                                           ; $464a: $88
	adc  b                                           ; $464b: $88
	adc  b                                           ; $464c: $88
	add  a                                           ; $464d: $87
	adc  b                                           ; $464e: $88
	ld   a, b                                        ; $464f: $78
	ld   a, c                                        ; $4650: $79
	ld   a, b                                        ; $4651: $78
	adc  b                                           ; $4652: $88
	sbc  b                                           ; $4653: $98
	ld   [hl], a                                     ; $4654: $77
	cp   c                                           ; $4655: $b9
	ld   a, b                                        ; $4656: $78
	ld   a, b                                        ; $4657: $78
	sbc  b                                           ; $4658: $98
	ld   a, b                                        ; $4659: $78
	ld   [hl], a                                     ; $465a: $77
	ld   a, b                                        ; $465b: $78
	ld   a, c                                        ; $465c: $79
	sbc  b                                           ; $465d: $98
	adc  b                                           ; $465e: $88
	sub  a                                           ; $465f: $97
	adc  c                                           ; $4660: $89
	adc  b                                           ; $4661: $88
	adc  b                                           ; $4662: $88
	adc  b                                           ; $4663: $88
	ld   a, b                                        ; $4664: $78
	ld   [hl], a                                     ; $4665: $77
	adc  b                                           ; $4666: $88
	ld   a, b                                        ; $4667: $78
	add  a                                           ; $4668: $87
	sub  a                                           ; $4669: $97
	ld   a, b                                        ; $466a: $78
	ld   a, b                                        ; $466b: $78
	sub  a                                           ; $466c: $97
	ld   a, c                                        ; $466d: $79
	ld   [hl], a                                     ; $466e: $77
	ld   a, b                                        ; $466f: $78
	ld   a, c                                        ; $4670: $79
	ld   [hl], a                                     ; $4671: $77
	ld   a, b                                        ; $4672: $78
	rst  ToBoot                                         ; $4673: $c7
	add  a                                           ; $4674: $87
	ld   l, c                                        ; $4675: $69
	adc  c                                           ; $4676: $89
	adc  b                                           ; $4677: $88
	ld   e, c                                        ; $4678: $59
	adc  b                                           ; $4679: $88
	add  a                                           ; $467a: $87
	ld   a, c                                        ; $467b: $79
	sub  a                                           ; $467c: $97
	sub  [hl]                                        ; $467d: $96
	cp   d                                           ; $467e: $ba
	sub  a                                           ; $467f: $97
	ld   l, b                                        ; $4680: $68
	sbc  e                                           ; $4681: $9b
	sbc  c                                           ; $4682: $99
	adc  e                                           ; $4683: $8b
	ld   [hl], a                                     ; $4684: $77
	halt                                             ; $4685: $76
	add  a                                           ; $4686: $87
	ld   [hl], a                                     ; $4687: $77
	ld   [hl], e                                     ; $4688: $73
	ld   l, c                                        ; $4689: $69
	sbc  d                                           ; $468a: $9a
	add  a                                           ; $468b: $87
	ld   l, c                                        ; $468c: $69
	sub  a                                           ; $468d: $97
	adc  c                                           ; $468e: $89
	adc  d                                           ; $468f: $8a
	add  a                                           ; $4690: $87
	add  a                                           ; $4691: $87
	adc  c                                           ; $4692: $89
	add  [hl]                                        ; $4693: $86
	ld   h, a                                        ; $4694: $67
	add  a                                           ; $4695: $87
	ld   [hl], a                                     ; $4696: $77
	adc  b                                           ; $4697: $88
	ld   a, b                                        ; $4698: $78
	ld   a, b                                        ; $4699: $78
	adc  b                                           ; $469a: $88
	add  a                                           ; $469b: $87
	sbc  b                                           ; $469c: $98
	sub  a                                           ; $469d: $97
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	ld   l, c                                        ; $46a0: $69
	ld   a, c                                        ; $46a1: $79
	ld   a, b                                        ; $46a2: $78
	add  a                                           ; $46a3: $87
	ld   a, c                                        ; $46a4: $79
	add  l                                           ; $46a5: $85
	xor  b                                           ; $46a6: $a8
	ld   [hl], a                                     ; $46a7: $77
	ld   h, a                                        ; $46a8: $67
	ld   a, b                                        ; $46a9: $78
	ld   a, b                                        ; $46aa: $78
	ld   a, b                                        ; $46ab: $78
	adc  b                                           ; $46ac: $88
	add  a                                           ; $46ad: $87
	sbc  b                                           ; $46ae: $98
	adc  b                                           ; $46af: $88
	sub  a                                           ; $46b0: $97
	ld   d, [hl]                                     ; $46b1: $56
	ld   a, b                                        ; $46b2: $78
	ld   a, b                                        ; $46b3: $78
	sbc  b                                           ; $46b4: $98
	adc  d                                           ; $46b5: $8a
	ld   a, b                                        ; $46b6: $78
	adc  c                                           ; $46b7: $89
	sbc  c                                           ; $46b8: $99
	ld   a, b                                        ; $46b9: $78
	sbc  c                                           ; $46ba: $99
	adc  b                                           ; $46bb: $88
	adc  c                                           ; $46bc: $89
	ld   a, c                                        ; $46bd: $79
	adc  b                                           ; $46be: $88
	sbc  c                                           ; $46bf: $99
	adc  b                                           ; $46c0: $88
	ld   a, b                                        ; $46c1: $78
	adc  d                                           ; $46c2: $8a
	adc  b                                           ; $46c3: $88
	sbc  b                                           ; $46c4: $98
	sbc  b                                           ; $46c5: $98
	sbc  c                                           ; $46c6: $99
	adc  b                                           ; $46c7: $88
	sbc  b                                           ; $46c8: $98
	adc  c                                           ; $46c9: $89
	sbc  b                                           ; $46ca: $98
	adc  c                                           ; $46cb: $89
	adc  b                                           ; $46cc: $88
	ld   a, b                                        ; $46cd: $78
	adc  c                                           ; $46ce: $89
	sbc  c                                           ; $46cf: $99
	adc  b                                           ; $46d0: $88
	sbc  b                                           ; $46d1: $98
	sbc  c                                           ; $46d2: $99
	sbc  b                                           ; $46d3: $98
	sbc  c                                           ; $46d4: $99
	sbc  c                                           ; $46d5: $99
	adc  b                                           ; $46d6: $88
	adc  b                                           ; $46d7: $88
	adc  b                                           ; $46d8: $88
	sbc  b                                           ; $46d9: $98
	adc  c                                           ; $46da: $89
	sbc  b                                           ; $46db: $98
	sbc  b                                           ; $46dc: $98
	adc  b                                           ; $46dd: $88
	adc  b                                           ; $46de: $88
	adc  c                                           ; $46df: $89
	sbc  c                                           ; $46e0: $99
	adc  b                                           ; $46e1: $88
	adc  b                                           ; $46e2: $88
	adc  c                                           ; $46e3: $89
	sbc  b                                           ; $46e4: $98
	sbc  b                                           ; $46e5: $98
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
	add  a                                           ; $472e: $87
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
	adc  c                                           ; $4742: $89
	sbc  b                                           ; $4743: $98
	add  a                                           ; $4744: $87
	ld   a, b                                        ; $4745: $78
	adc  b                                           ; $4746: $88
	adc  b                                           ; $4747: $88
	adc  b                                           ; $4748: $88
	sbc  b                                           ; $4749: $98
	sbc  b                                           ; $474a: $98
	ld   [hl], a                                     ; $474b: $77
	adc  b                                           ; $474c: $88
	sbc  c                                           ; $474d: $99
	add  a                                           ; $474e: $87
	ld   [hl], a                                     ; $474f: $77
	adc  c                                           ; $4750: $89
	sbc  c                                           ; $4751: $99
	adc  b                                           ; $4752: $88
	adc  b                                           ; $4753: $88
	ld   [hl], a                                     ; $4754: $77
	adc  b                                           ; $4755: $88
	sbc  b                                           ; $4756: $98
	add  a                                           ; $4757: $87
	ld   a, b                                        ; $4758: $78
	adc  b                                           ; $4759: $88
	add  a                                           ; $475a: $87
	ld   [hl], a                                     ; $475b: $77
	adc  b                                           ; $475c: $88
	sbc  b                                           ; $475d: $98
	ld   [hl], a                                     ; $475e: $77
	adc  b                                           ; $475f: $88
	sbc  c                                           ; $4760: $99
	sub  a                                           ; $4761: $97
	ld   h, [hl]                                     ; $4762: $66
	ld   a, c                                        ; $4763: $79
	xor  c                                           ; $4764: $a9
	add  a                                           ; $4765: $87
	ld   [hl], a                                     ; $4766: $77
	adc  b                                           ; $4767: $88
	adc  b                                           ; $4768: $88
	adc  b                                           ; $4769: $88
	add  a                                           ; $476a: $87
	ld   [hl], a                                     ; $476b: $77
	adc  c                                           ; $476c: $89
	sbc  c                                           ; $476d: $99
	ld   [hl], a                                     ; $476e: $77
	add  a                                           ; $476f: $87
	ld   h, a                                        ; $4770: $67
	adc  c                                           ; $4771: $89
	sbc  b                                           ; $4772: $98
	ld   h, [hl]                                     ; $4773: $66
	ld   a, d                                        ; $4774: $7a
	db   $dd                                         ; $4775: $dd
	ld   [hl], e                                     ; $4776: $73
	dec  d                                           ; $4777: $15
	xor  l                                           ; $4778: $ad
	and  l                                           ; $4779: $a5
	ld   [de], a                                     ; $477a: $12
	adc  l                                           ; $477b: $8d
	db   $ec                                         ; $477c: $ec
	ld   h, d                                        ; $477d: $62
	ld   h, $df                                      ; $477e: $26 $df
	rst  $30                                         ; $4780: $f7
	ld   de, $fd6e                                   ; $4781: $11 $6e $fd
	ld   b, c                                        ; $4784: $41
	dec  d                                           ; $4785: $15
	call z, Call_0fb_4795                            ; $4786: $cc $95 $47
	call z, Call_0fb_47a5                            ; $4789: $cc $a5 $47
	cp   l                                           ; $478c: $bd
	rst  ToBoot                                         ; $478d: $c7
	ld   b, l                                        ; $478e: $45
	ld   a, d                                        ; $478f: $7a
	cp   c                                           ; $4790: $b9
	ld   h, h                                        ; $4791: $64
	ld   d, a                                        ; $4792: $57
	sbc  b                                           ; $4793: $98
	ld   d, e                                        ; $4794: $53

Call_0fb_4795:
	ld   b, [hl]                                     ; $4795: $46
	xor  h                                           ; $4796: $ac
	res  1, b                                        ; $4797: $cb $88
	adc  d                                           ; $4799: $8a
	cp   d                                           ; $479a: $ba
	halt                                             ; $479b: $76
	ld   l, c                                        ; $479c: $69
	xor  d                                           ; $479d: $aa
	ld   h, e                                        ; $479e: $63
	ld   b, [hl]                                     ; $479f: $46
	adc  c                                           ; $47a0: $89
	ld   h, h                                        ; $47a1: $64
	ld   b, l                                        ; $47a2: $45
	ld   d, l                                        ; $47a3: $55
	ld   d, [hl]                                     ; $47a4: $56

Call_0fb_47a5:
	ld   a, b                                        ; $47a5: $78
	adc  b                                           ; $47a6: $88
	adc  d                                           ; $47a7: $8a
	call $9cca                                       ; $47a8: $cd $ca $9c
	db   $dd                                         ; $47ab: $dd
	cp   d                                           ; $47ac: $ba
	sbc  c                                           ; $47ad: $99
	sbc  c                                           ; $47ae: $99
	sbc  b                                           ; $47af: $98
	adc  b                                           ; $47b0: $88
	ld   [hl], l                                     ; $47b1: $75
	ld   l, b                                        ; $47b2: $68
	call $1193                                       ; $47b3: $cd $93 $11
	dec  h                                           ; $47b6: $25
	ld   b, c                                        ; $47b7: $41
	ld   de, $a838                                   ; $47b8: $11 $38 $a8
	adc  d                                           ; $47bb: $8a
	rst  $28                                         ; $47bc: $ef
	rst  $38                                         ; $47bd: $ff
	db   $ec                                         ; $47be: $ec
	sbc  $db                                         ; $47bf: $de $db
	sbc  c                                           ; $47c1: $99
	sbc  d                                           ; $47c2: $9a
	xor  c                                           ; $47c3: $a9
	adc  b                                           ; $47c4: $88
	sbc  d                                           ; $47c5: $9a
	sub  a                                           ; $47c6: $97
	ld   d, d                                        ; $47c7: $52
	ld   de, $1111                                   ; $47c8: $11 $11 $11
	ld   de, $7c24                                   ; $47cb: $11 $24 $7c
	sbc  $ff                                         ; $47ce: $de $ff
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	jp   z, $a9aa                                    ; $47d2: $ca $aa $a9

	adc  b                                           ; $47d5: $88
	sbc  e                                           ; $47d6: $9b
	cp   [hl]                                        ; $47d7: $be
	rst  $38                                         ; $47d8: $ff
	ret                                              ; $47d9: $c9


	ld   d, c                                        ; $47da: $51
	ld   de, $1111                                   ; $47db: $11 $11 $11
	ld   hl, $ef16                                   ; $47de: $21 $16 $ef
	rst  $38                                         ; $47e1: $ff
	rst  $38                                         ; $47e2: $ff
	rst  $38                                         ; $47e3: $ff
	db   $fd                                         ; $47e4: $fd
	ld   [hl], l                                     ; $47e5: $75
	sbc  e                                           ; $47e6: $9b
	or   a                                           ; $47e7: $b7
	ld   d, l                                        ; $47e8: $55
	xor  a                                           ; $47e9: $af
	rst  $38                                         ; $47ea: $ff
	or   a                                           ; $47eb: $b7
	ld   d, l                                        ; $47ec: $55
	ld   de, $1711                                   ; $47ed: $11 $11 $17
	and  c                                           ; $47f0: $a1
	ld   [de], a                                     ; $47f1: $12
	rst  $38                                         ; $47f2: $ff
	rst  $38                                         ; $47f3: $ff
	cp   d                                           ; $47f4: $ba
	rst  $28                                         ; $47f5: $ef
	db   $fd                                         ; $47f6: $fd
	ld   de, $9418                                   ; $47f7: $11 $18 $94
	ld   de, $ffdf                                   ; $47fa: $11 $df $ff
	sub  l                                           ; $47fd: $95
	add  a                                           ; $47fe: $87
	ld   de, $1911                                   ; $47ff: $11 $11 $19
	ld   [hl], l                                     ; $4802: $75
	ld   l, a                                        ; $4803: $6f
	rst  $38                                         ; $4804: $ff
	rst  $38                                         ; $4805: $ff
	jp   nc, $61aa                                   ; $4806: $d2 $aa $61

	ld   de, $9e11                                   ; $4809: $11 $11 $9e
	rst  $28                                         ; $480c: $ef
	rst  $38                                         ; $480d: $ff
	cp   $a2                                         ; $480e: $fe $a2
	ld   de, $1611                                   ; $4810: $11 $11 $16
	jp   z, $ffbf                                    ; $4813: $ca $bf $ff

	rst  $38                                         ; $4816: $ff
	ldh  a, [c]                                      ; $4817: $f2
	inc  de                                          ; $4818: $13
	ld   de, $5a11                                   ; $4819: $11 $11 $5a
	rst  $38                                         ; $481c: $ff
	rst  $38                                         ; $481d: $ff
	rst  $38                                         ; $481e: $ff
	rst  $30                                         ; $481f: $f7
	ld   de, $1111                                   ; $4820: $11 $11 $11
	ld   de, $ffff                                   ; $4823: $11 $ff $ff
	rst  $38                                         ; $4826: $ff
	rst  $38                                         ; $4827: $ff
	sub  c                                           ; $4828: $91
	ld   de, $1111                                   ; $4829: $11 $11 $11
	cpl                                              ; $482c: $2f
	rst  $38                                         ; $482d: $ff
	rst  $38                                         ; $482e: $ff
	rst  $38                                         ; $482f: $ff
	ld   a, [$1111]                                  ; $4830: $fa $11 $11
	ld   de, $ff1f                                   ; $4833: $11 $1f $ff
	or   $ff                                         ; $4836: $f6 $ff
	rst  $38                                         ; $4838: $ff
	ld   de, $e111                                   ; $4839: $11 $11 $e1
	ld   de, $ffbf                                   ; $483c: $11 $bf $ff
	rst  $38                                         ; $483f: $ff
	ld   l, [hl]                                     ; $4840: $6e
	ld   hl, sp+$11                                  ; $4841: $f8 $11
	ld   de, rAUD1LEN                                   ; $4843: $11 $11 $ff
	rst  $38                                         ; $4846: $ff
	adc  a                                           ; $4847: $8f
	rst  $38                                         ; $4848: $ff
	pop  af                                          ; $4849: $f1
	ld   de, $311f                                   ; $484a: $11 $1f $31
	inc  d                                           ; $484d: $14
	rst  $38                                         ; $484e: $ff
	rst  $38                                         ; $484f: $ff
	or   [hl]                                        ; $4850: $b6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4851: $cf
	or   c                                           ; $4852: $b1
	ld   de, $1f11                                   ; $4853: $11 $11 $1f
	ld   a, [$ff61]                                  ; $4856: $fa $61 $ff
	rst  $38                                         ; $4859: $ff
	ld   de, $f111                                   ; $485a: $11 $11 $f1
	ld   de, $ffdf                                   ; $485d: $11 $df $ff
	rst  $30                                         ; $4860: $f7
	rra                                              ; $4861: $1f
	ei                                               ; $4862: $fb
	ld   de, $1f11                                   ; $4863: $11 $11 $1f
	rst  $38                                         ; $4866: $ff
	add  c                                           ; $4867: $81
	rst  $38                                         ; $4868: $ff
	rst  $38                                         ; $4869: $ff
	ld   de, $fa11                                   ; $486a: $11 $11 $fa
	ld   bc, $ff1f                                   ; $486d: $01 $1f $ff
	ld   a, [$ff16]                                  ; $4870: $fa $16 $ff
	ld   de, $1f11                                   ; $4873: $11 $11 $1f
	rst  $38                                         ; $4876: $ff
	ld   [hl], c                                     ; $4877: $71
	rst  $38                                         ; $4878: $ff
	rst  $38                                         ; $4879: $ff
	ld   de, $fa11                                   ; $487a: $11 $11 $fa
	ld   de, $ff1f                                   ; $487d: $11 $1f $ff
	or   $18                                         ; $4880: $f6 $18
	cp   $11                                         ; $4882: $fe $11
	ld   de, $ff1f                                   ; $4884: $11 $1f $ff
	ld   de, $ffff                                   ; $4887: $11 $ff $ff
	ld   de, $f31b                                   ; $488a: $11 $1b $f3
	ld   de, $ffff                                   ; $488d: $11 $ff $ff
	pop  af                                          ; $4890: $f1
	cpl                                              ; $4891: $2f
	pop  af                                          ; $4892: $f1
	ld   de, rAUD1LEN                                   ; $4893: $11 $11 $ff
	or   $1f                                         ; $4896: $f6 $1f
	rst  $38                                         ; $4898: $ff
	pop  af                                          ; $4899: $f1
	ld   de, $911f                                   ; $489a: $11 $1f $91
	inc  d                                           ; $489d: $14
	rst  $38                                         ; $489e: $ff
	rst  $38                                         ; $489f: $ff
	ld   hl, $91cf                                   ; $48a0: $21 $cf $91
	ld   de, $ff1e                                   ; $48a3: $11 $1e $ff
	pop  bc                                          ; $48a6: $c1
	rst  $38                                         ; $48a7: $ff
	rst  $38                                         ; $48a8: $ff
	ld   de, $fa11                                   ; $48a9: $11 $11 $fa
	ld   de, $ff1f                                   ; $48ac: $11 $1f $ff
	ld   a, [$ca0c]                                  ; $48af: $fa $0c $ca
	ld   de, $6f11                                   ; $48b2: $11 $11 $6f
	db   $fd                                         ; $48b5: $fd
	rra                                              ; $48b6: $1f
	rst  $38                                         ; $48b7: $ff
	ldh  a, [c]                                      ; $48b8: $f2
	ld   de, $811d                                   ; $48b9: $11 $1d $81
	ld   de, $ffff                                   ; $48bc: $11 $ff $ff
	push hl                                          ; $48bf: $e5
	xor  h                                           ; $48c0: $ac
	or   c                                           ; $48c1: $b1
	ld   de, $ff18                                   ; $48c2: $11 $18 $ff
	ld   b, c                                        ; $48c5: $41
	rst  $38                                         ; $48c6: $ff
	rst  $38                                         ; $48c7: $ff
	ld   [hl], c                                     ; $48c8: $71
	ld   de, $11d2                                   ; $48c9: $11 $d2 $11
	rra                                              ; $48cc: $1f
	rst  $38                                         ; $48cd: $ff
	ld   a, [$d36b]                                  ; $48ce: $fa $6b $d3
	ld   de, $ac11                                   ; $48d1: $11 $11 $ac
	rla                                              ; $48d4: $17
	rst  $38                                         ; $48d5: $ff
	rst  $38                                         ; $48d6: $ff
	push af                                          ; $48d7: $f5
	inc  de                                          ; $48d8: $13
	or   e                                           ; $48d9: $b3
	ld   de, $ff16                                   ; $48da: $11 $16 $ff
	cp   $33                                         ; $48dd: $fe $33
	ld   b, c                                        ; $48df: $41
	ld   [hl], $11                                   ; $48e0: $36 $11
	ld   de, $ffff                                   ; $48e2: $11 $ff $ff
	rst  $38                                         ; $48e5: $ff
	rst  $38                                         ; $48e6: $ff
	ld   a, [$1311]                                  ; $48e7: $fa $11 $13
	adc  l                                           ; $48ea: $8d
	ei                                               ; $48eb: $fb
	ld   h, a                                        ; $48ec: $67
	sub  c                                           ; $48ed: $91
	ld   de, $11ac                                   ; $48ee: $11 $ac $11
	ld   a, [de]                                     ; $48f1: $1a
	rst  $38                                         ; $48f2: $ff
	rst  $38                                         ; $48f3: $ff
	jp   hl                                          ; $48f4: $e9


	rst  $28                                         ; $48f5: $ef
	push af                                          ; $48f6: $f5
	ld   de, $bf14                                   ; $48f7: $11 $14 $bf
	jp   $ba28                                       ; $48fa: $c3 $28 $ba


	ld   a, b                                        ; $48fd: $78
	sub  h                                           ; $48fe: $94
	ld   de, $5715                                   ; $48ff: $11 $15 $57
	call $cfba                                       ; $4902: $cd $ba $cf
	ld   a, [$6677]                                  ; $4905: $fa $77 $66
	adc  d                                           ; $4908: $8a
	xor  b                                           ; $4909: $a8
	sbc  e                                           ; $490a: $9b
	call $85db                                       ; $490b: $cd $db $85
	ld   [hl-], a                                    ; $490e: $32
	ld   de, $1411                                   ; $490f: $11 $11 $14
	ld   l, c                                        ; $4912: $69
	adc  e                                           ; $4913: $8b
	call z, $a8cb                                    ; $4914: $cc $cb $a8
	ld   a, c                                        ; $4917: $79
	cp   h                                           ; $4918: $bc
	call z, $dddd                                    ; $4919: $cc $dd $dd
	cp   c                                           ; $491c: $b9
	ld   [hl], l                                     ; $491d: $75
	ld   sp, $1111                                   ; $491e: $31 $11 $11
	inc  h                                           ; $4921: $24
	ld   h, a                                        ; $4922: $67
	adc  d                                           ; $4923: $8a
	xor  d                                           ; $4924: $aa
	xor  d                                           ; $4925: $aa
	sbc  c                                           ; $4926: $99
	xor  h                                           ; $4927: $ac
	call $dcef                                       ; $4928: $cd $ef $dc
	call c, Call_0fb_6299                            ; $492b: $dc $99 $62
	ld   de, $1311                                   ; $492e: $11 $11 $13
	ld   d, h                                        ; $4931: $54
	ld   c, b                                        ; $4932: $48
	cp   $cd                                         ; $4933: $fe $cd
	ld   [$fe6a], a                                  ; $4935: $ea $6a $fe
	sbc  e                                           ; $4938: $9b
	jp   hl                                          ; $4939: $e9


	ld   e, d                                        ; $493a: $5a
	and  c                                           ; $493b: $a1
	add  hl, de                                      ; $493c: $19
	ld   [hl], c                                     ; $493d: $71
	ld   de, $6f31                                   ; $493e: $11 $31 $6f
	and  $8f                                         ; $4941: $e6 $8f
	rst  $38                                         ; $4943: $ff
	db   $dd                                         ; $4944: $dd
	or   [hl]                                        ; $4945: $b6
	cp   a                                           ; $4946: $bf
	call nc, $1113                                   ; $4947: $d4 $13 $11
	ld   de, $11fb                                   ; $494a: $11 $fb $11
	cpl                                              ; $494d: $2f
	rst  $38                                         ; $494e: $ff
	rst  $38                                         ; $494f: $ff
	adc  h                                           ; $4950: $8c
	rst  $38                                         ; $4951: $ff
	ld   h, c                                        ; $4952: $61
	ld   de, $f85f                                   ; $4953: $11 $5f $f8
	ld   de, $1131                                   ; $4956: $11 $31 $11
	push af                                          ; $4959: $f5
	ld   de, $9fff                                   ; $495a: $11 $ff $9f
	rst  $38                                         ; $495d: $ff
	cp   a                                           ; $495e: $bf
	rst  $38                                         ; $495f: $ff
	ld   de, $ef5d                                   ; $4960: $11 $5d $ef
	pop  af                                          ; $4963: $f1
	ld   de, $1921                                   ; $4964: $11 $21 $19
	sub  c                                           ; $4967: $91
	rra                                              ; $4968: $1f
	rst  $38                                         ; $4969: $ff
	sbc  a                                           ; $496a: $9f
	rst  $38                                         ; $496b: $ff
	rst  $38                                         ; $496c: $ff
	pop  af                                          ; $496d: $f1
	ld   de, $fbff                                   ; $496e: $11 $ff $fb
	ld   de, $1112                                   ; $4971: $11 $12 $11
	ld   a, [de]                                     ; $4974: $1a
	ld   de, $ee7f                                   ; $4975: $11 $7f $ee
	rst  $38                                         ; $4978: $ff
	rst  $38                                         ; $4979: $ff
	rst  $38                                         ; $497a: $ff
	ld   de, $ff2d                                   ; $497b: $11 $2d $ff
	pop  af                                          ; $497e: $f1
	ld   de, $1121                                   ; $497f: $11 $21 $11
	call nc, rAUD1LEN                                   ; $4982: $d4 $11 $ff
	rst  $38                                         ; $4985: $ff
	rst  $38                                         ; $4986: $ff
	rst  $38                                         ; $4987: $ff
	db   $f4                                         ; $4988: $f4
	ld   [de], a                                     ; $4989: $12
	cp   e                                           ; $498a: $bb
	db   $dd                                         ; $498b: $dd
	ld   hl, $1114                                   ; $498c: $21 $14 $11
	rla                                              ; $498f: $17
	pop  bc                                          ; $4990: $c1
	dec  d                                           ; $4991: $15
	cp   e                                           ; $4992: $bb
	rst  $38                                         ; $4993: $ff
	rst  $38                                         ; $4994: $ff
	rst  $38                                         ; $4995: $ff
	db   $f4                                         ; $4996: $f4
	add  hl, sp                                      ; $4997: $39
	sbc  c                                           ; $4998: $99
	jp   c, $1111                                    ; $4999: $da $11 $11

	ld   de, $611a                                   ; $499c: $11 $1a $61
	inc  d                                           ; $499f: $14
	sbc  [hl]                                        ; $49a0: $9e
	rst  $38                                         ; $49a1: $ff
	rst  $38                                         ; $49a2: $ff
	rst  $38                                         ; $49a3: $ff
	ld   a, [$8a88]                                  ; $49a4: $fa $88 $8a
	ret                                              ; $49a7: $c9


	ld   de, $1111                                   ; $49a8: $11 $11 $11
	dec  de                                          ; $49ab: $1b
	ld   h, c                                        ; $49ac: $61
	inc  de                                          ; $49ad: $13
	sbc  e                                           ; $49ae: $9b
	rst  $38                                         ; $49af: $ff
	rst  $38                                         ; $49b0: $ff
	rst  $38                                         ; $49b1: $ff
	ei                                               ; $49b2: $fb
	adc  h                                           ; $49b3: $8c
	cp   $d9                                         ; $49b4: $fe $d9
	ld   sp, $1115                                   ; $49b6: $31 $15 $11
	ld   [de], a                                     ; $49b9: $12
	sub  d                                           ; $49ba: $92
	ld   de, $ff16                                   ; $49bb: $11 $16 $ff
	rst  $38                                         ; $49be: $ff
	rst  JumpTable                                         ; $49bf: $df
	rst  $38                                         ; $49c0: $ff
	db   $ec                                         ; $49c1: $ec
	add  a                                           ; $49c2: $87
	rst  $38                                         ; $49c3: $ff
	ld   [hl], c                                     ; $49c4: $71
	ld   de, $1111                                   ; $49c5: $11 $11 $11
	inc  [hl]                                        ; $49c8: $34
	ld   de, $ff3e                                   ; $49c9: $11 $3e $ff
	rst  $38                                         ; $49cc: $ff
	rst  $38                                         ; $49cd: $ff
	rst  $38                                         ; $49ce: $ff
	ld   h, c                                        ; $49cf: $61
	rla                                              ; $49d0: $17
	rst  JumpTable                                         ; $49d1: $df
	sub  c                                           ; $49d2: $91
	ld   de, $1111                                   ; $49d3: $11 $11 $11
	ld   d, e                                        ; $49d6: $53
	inc  de                                          ; $49d7: $13
	db   $dd                                         ; $49d8: $dd
	rst  $38                                         ; $49d9: $ff
	rst  $38                                         ; $49da: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49db: $cf
	db   $fc                                         ; $49dc: $fc
	ld   e, c                                        ; $49dd: $59
	add  c                                           ; $49de: $81
	ld   l, a                                        ; $49df: $6f
	or   c                                           ; $49e0: $b1
	ld   de, $1211                                   ; $49e1: $11 $11 $12
	and  c                                           ; $49e4: $a1
	inc  de                                          ; $49e5: $13
	rst  $38                                         ; $49e6: $ff
	rst  $38                                         ; $49e7: $ff
	cp   $ff                                         ; $49e8: $fe $ff
	db   $f4                                         ; $49ea: $f4
	ld   de, $d968                                   ; $49eb: $11 $68 $d9
	ld   de, $1115                                   ; $49ee: $11 $15 $11
	ld   [de], a                                     ; $49f1: $12
	push de                                          ; $49f2: $d5
	ld   d, $8c                                      ; $49f3: $16 $8c
	rst  $38                                         ; $49f5: $ff
	db   $fd                                         ; $49f6: $fd
	xor  a                                           ; $49f7: $af
	ld   hl, sp+$56                                  ; $49f8: $f8 $56
	ld   d, a                                        ; $49fa: $57
	rst  $38                                         ; $49fb: $ff
	ld   de, $1115                                   ; $49fc: $11 $15 $11
	ld   de, $1185                                   ; $49ff: $11 $85 $11
	cpl                                              ; $4a02: $2f
	rst  $38                                         ; $4a03: $ff
	rst  $38                                         ; $4a04: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a05: $cf
	rst  $38                                         ; $4a06: $ff
	ld   h, c                                        ; $4a07: $61
	add  hl, de                                      ; $4a08: $19
	cp   $11                                         ; $4a09: $fe $11
	inc  de                                          ; $4a0b: $13
	ld   hl, $2611                                   ; $4a0c: $21 $11 $26
	ld   b, c                                        ; $4a0f: $41
	dec  d                                           ; $4a10: $15
	rst  $38                                         ; $4a11: $ff
	rst  $38                                         ; $4a12: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a13: $cf
	rst  $38                                         ; $4a14: $ff
	rst  $30                                         ; $4a15: $f7
	dec  d                                           ; $4a16: $15
	rst  $38                                         ; $4a17: $ff
	ld   sp, $2111                                   ; $4a18: $31 $11 $21
	ld   de, $3212                                   ; $4a1b: $11 $12 $32
	inc  d                                           ; $4a1e: $14
	rst  $38                                         ; $4a1f: $ff
	rst  $38                                         ; $4a20: $ff
	rst  $38                                         ; $4a21: $ff
	rst  $38                                         ; $4a22: $ff
	db   $fd                                         ; $4a23: $fd
	ld   h, e                                        ; $4a24: $63
	xor  a                                           ; $4a25: $af
	or   c                                           ; $4a26: $b1
	ld   de, $1141                                   ; $4a27: $11 $41 $11
	ld   de, $1176                                   ; $4a2a: $11 $76 $11
	ld   e, a                                        ; $4a2d: $5f
	rst  $38                                         ; $4a2e: $ff
	cp   $ef                                         ; $4a2f: $fe $ef
	rst  $38                                         ; $4a31: $ff
	sub  l                                           ; $4a32: $95
	ld   e, l                                        ; $4a33: $5d
	ld   sp, hl                                      ; $4a34: $f9
	ld   de, $1113                                   ; $4a35: $11 $13 $11
	ld   de, $7116                                   ; $4a38: $11 $16 $71
	inc  d                                           ; $4a3b: $14
	rst  $38                                         ; $4a3c: $ff
	rst  $38                                         ; $4a3d: $ff
	cp   $ff                                         ; $4a3e: $fe $ff
	ld   a, [$df9a]                                  ; $4a40: $fa $9a $df
	sub  c                                           ; $4a43: $91
	inc  de                                          ; $4a44: $13
	ld   b, c                                        ; $4a45: $41
	ld   de, $7511                                   ; $4a46: $11 $11 $75
	ld   de, $ff1f                                   ; $4a49: $11 $1f $ff
	rst  $38                                         ; $4a4c: $ff
	rst  $38                                         ; $4a4d: $ff
	rst  $38                                         ; $4a4e: $ff
	and  a                                           ; $4a4f: $a7
	sbc  [hl]                                        ; $4a50: $9e
	ld   sp, hl                                      ; $4a51: $f9
	ld   de, $2114                                   ; $4a52: $11 $14 $21
	ld   de, $6116                                   ; $4a55: $11 $16 $61
	ld   de, $ffff                                   ; $4a58: $11 $ff $ff
	db   $fd                                         ; $4a5b: $fd
	rst  $38                                         ; $4a5c: $ff
	db   $fd                                         ; $4a5d: $fd
	xor  e                                           ; $4a5e: $ab
	rst  JumpTable                                         ; $4a5f: $df
	add  c                                           ; $4a60: $81
	ld   de, $1121                                   ; $4a61: $11 $21 $11
	ld   de, $1142                                   ; $4a64: $11 $42 $11
	rra                                              ; $4a67: $1f
	rst  $38                                         ; $4a68: $ff
	rst  $38                                         ; $4a69: $ff
	rst  $38                                         ; $4a6a: $ff
	rst  $38                                         ; $4a6b: $ff
	db   $fc                                         ; $4a6c: $fc
	cp   h                                           ; $4a6d: $bc
	rst  $10                                         ; $4a6e: $d7
	ld   de, $1111                                   ; $4a6f: $11 $11 $11
	ld   de, $1115                                   ; $4a72: $11 $15 $11
	inc  d                                           ; $4a75: $14
	rst  $38                                         ; $4a76: $ff
	rst  $38                                         ; $4a77: $ff
	rst  $38                                         ; $4a78: $ff
	rst  $38                                         ; $4a79: $ff
	rst  $38                                         ; $4a7a: $ff
	set  3, l                                        ; $4a7b: $cb $dd
	ld   d, c                                        ; $4a7d: $51
	ld   de, $1111                                   ; $4a7e: $11 $11 $11
	inc  de                                          ; $4a81: $13
	ld   de, rAUD1LOW                                   ; $4a82: $11 $13 $ff
	rst  $38                                         ; $4a85: $ff
	rst  $38                                         ; $4a86: $ff
	rst  $38                                         ; $4a87: $ff
	rst  $38                                         ; $4a88: $ff
	db   $fc                                         ; $4a89: $fc
	cp   l                                           ; $4a8a: $bd
	ld   [hl], c                                     ; $4a8b: $71
	ld   de, $1111                                   ; $4a8c: $11 $11 $11
	inc  d                                           ; $4a8f: $14
	ld   de, $cf14                                   ; $4a90: $11 $14 $cf
	rst  $38                                         ; $4a93: $ff
	rst  $38                                         ; $4a94: $ff
	rst  $38                                         ; $4a95: $ff
	rst  $28                                         ; $4a96: $ef
	ld   a, [$816c]                                  ; $4a97: $fa $6c $81
	ld   de, $1111                                   ; $4a9a: $11 $11 $11
	add  c                                           ; $4a9d: $81
	ld   de, $ff38                                   ; $4a9e: $11 $38 $ff
	rst  $38                                         ; $4aa1: $ff
	rst  $38                                         ; $4aa2: $ff
	rst  $38                                         ; $4aa3: $ff
	rst  $28                                         ; $4aa4: $ef
	call nc, Call_0fb_418e                           ; $4aa5: $d4 $8e $41
	ld   de, $1811                                   ; $4aa8: $11 $11 $18
	ld   [hl], c                                     ; $4aab: $71
	ld   [de], a                                     ; $4aac: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aad: $cf
	rst  $38                                         ; $4aae: $ff
	cp   $ff                                         ; $4aaf: $fe $ff
	cp   $ee                                         ; $4ab1: $fe $ee
	add  [hl]                                        ; $4ab3: $86
	rst  $10                                         ; $4ab4: $d7
	ld   de, $1111                                   ; $4ab5: $11 $11 $11
	ld   hl, sp+$11                                  ; $4ab8: $f8 $11
	ccf                                              ; $4aba: $3f
	rst  $38                                         ; $4abb: $ff
	rst  $38                                         ; $4abc: $ff
	xor  a                                           ; $4abd: $af
	rst  $38                                         ; $4abe: $ff
	cp   d                                           ; $4abf: $ba
	or   l                                           ; $4ac0: $b5
	ld   e, h                                        ; $4ac1: $5c
	ld   h, c                                        ; $4ac2: $61
	ld   de, $7f11                                   ; $4ac3: $11 $11 $7f
	ld   sp, $ff1e                                   ; $4ac6: $31 $1e $ff
	rst  $38                                         ; $4ac9: $ff
	ld   [$f7ff], a                                  ; $4aca: $ea $ff $f7
	sub  [hl]                                        ; $4acd: $96
	jr   c, @-$5d                                    ; $4ace: $38 $a1

	ld   de, $af11                                   ; $4ad0: $11 $11 $af
	ld   [hl], c                                     ; $4ad3: $71
	add  hl, de                                      ; $4ad4: $19
	rst  $38                                         ; $4ad5: $ff
	rst  $38                                         ; $4ad6: $ff
	add  sp, -$01                                    ; $4ad7: $e8 $ff
	ld   sp, hl                                      ; $4ad9: $f9
	ld   b, d                                        ; $4ada: $42
	dec  h                                           ; $4adb: $25
	ld   [hl], c                                     ; $4adc: $71
	ld   de, rAUD1LEN                                   ; $4add: $11 $11 $ff
	add  c                                           ; $4ae0: $81
	dec  de                                          ; $4ae1: $1b
	rst  $38                                         ; $4ae2: $ff
	rst  $38                                         ; $4ae3: $ff
	sub  a                                           ; $4ae4: $97
	rst  $38                                         ; $4ae5: $ff
	ei                                               ; $4ae6: $fb
	ld   sp, $3129                                   ; $4ae7: $31 $29 $31
	ld   de, $fe19                                   ; $4aea: $11 $19 $fe
	ld   de, $ff3f                                   ; $4aed: $11 $3f $ff
	cp   $4c                                         ; $4af0: $fe $4c
	rst  $38                                         ; $4af2: $ff
	ld   hl, sp+$11                                  ; $4af3: $f8 $11
	ld   [hl-], a                                    ; $4af5: $32
	ld   de, $3f11                                   ; $4af6: $11 $11 $3f
	rst  $30                                         ; $4af9: $f7
	ld   [de], a                                     ; $4afa: $12
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	rst  $30                                         ; $4afd: $f7
	xor  a                                           ; $4afe: $af
	cp   $a2                                         ; $4aff: $fe $a2
	inc  d                                           ; $4b01: $14
	ld   d, c                                        ; $4b02: $51
	ld   de, $ff15                                   ; $4b03: $11 $15 $ff
	ld   h, c                                        ; $4b06: $61
	rra                                              ; $4b07: $1f
	rst  $38                                         ; $4b08: $ff
	rst  $38                                         ; $4b09: $ff
	ld   b, a                                        ; $4b0a: $47
	rst  $38                                         ; $4b0b: $ff
	ei                                               ; $4b0c: $fb
	ld   de, $1167                                   ; $4b0d: $11 $67 $11
	ld   de, $f6ef                                   ; $4b10: $11 $ef $f6
	ld   de, $ffff                                   ; $4b13: $11 $ff $ff
	jp   nc, $ff7e                                   ; $4b16: $d2 $7e $ff

	and  c                                           ; $4b19: $a1
	ld   d, $41                                      ; $4b1a: $16 $41
	ld   de, $ff1f                                   ; $4b1c: $11 $1f $ff
	ld   de, $ff4f                                   ; $4b1f: $11 $4f $ff
	rst  $30                                         ; $4b22: $f7
	jr   z, @-$2f                                    ; $4b23: $28 $cf

	push af                                          ; $4b25: $f5
	dec  d                                           ; $4b26: $15
	sub  c                                           ; $4b27: $91
	ld   de, $ff1d                                   ; $4b28: $11 $1d $ff
	pop  hl                                          ; $4b2b: $e1
	jr   @+$01                                       ; $4b2c: $18 $ff

	rst  $38                                         ; $4b2e: $ff
	ld   [de], a                                     ; $4b2f: $12
	ld   a, $ff                                      ; $4b30: $3e $ff
	ld   [hl-], a                                    ; $4b32: $32
	ld   [hl], c                                     ; $4b33: $71
	ld   de, $fb19                                   ; $4b34: $11 $19 $fb
	pop  hl                                          ; $4b37: $e1
	ld   a, [de]                                     ; $4b38: $1a
	rst  $38                                         ; $4b39: $ff
	rst  $38                                         ; $4b3a: $ff
	ld   b, l                                        ; $4b3b: $45
	ld   l, c                                        ; $4b3c: $69
	rst  $38                                         ; $4b3d: $ff
	inc  sp                                          ; $4b3e: $33
	db   $e3                                         ; $4b3f: $e3
	ld   de, rAUD1HIGH                                   ; $4b40: $11 $14 $ff
	pop  af                                          ; $4b43: $f1
	rla                                              ; $4b44: $17
	rst  $38                                         ; $4b45: $ff
	rst  $38                                         ; $4b46: $ff
	ld   hl, $fe58                                   ; $4b47: $21 $58 $fe
	ld   sp, $11c9                                   ; $4b4a: $31 $c9 $11
	ld   de, $f6ff                                   ; $4b4d: $11 $ff $f6
	ld   [de], a                                     ; $4b50: $12
	rst  $38                                         ; $4b51: $ff
	rst  $38                                         ; $4b52: $ff
	ld   hl, $ff34                                   ; $4b53: $21 $34 $ff
	ld   sp, $1178                                   ; $4b56: $31 $78 $11
	ld   a, [de]                                     ; $4b59: $1a
	rst  $38                                         ; $4b5a: $ff
	or   $11                                         ; $4b5b: $f6 $11
	rst  $38                                         ; $4b5d: $ff
	db   $fc                                         ; $4b5e: $fc
	ld   de, $ff54                                   ; $4b5f: $11 $54 $ff
	ld   b, c                                        ; $4b62: $41
	sub  a                                           ; $4b63: $97
	ld   de, $ff1f                                   ; $4b64: $11 $1f $ff
	sub  [hl]                                        ; $4b67: $96
	ld   a, [hl-]                                    ; $4b68: $3a
	rst  $38                                         ; $4b69: $ff
	pop  af                                          ; $4b6a: $f1
	inc  e                                           ; $4b6b: $1c
	dec  sp                                          ; $4b6c: $3b
	db   $fc                                         ; $4b6d: $fc
	ld   de, $11f5                                   ; $4b6e: $11 $f5 $11
	rra                                              ; $4b71: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b72: $cf
	add  l                                           ; $4b73: $85
	rra                                              ; $4b74: $1f
	rst  $38                                         ; $4b75: $ff
	pop  de                                          ; $4b76: $d1
	jr   @+$21                                       ; $4b77: $18 $1f

	or   $1a                                         ; $4b79: $f6 $1a
	pop  af                                          ; $4b7b: $f1
	ld   de, $ffaf                                   ; $4b7c: $11 $af $ff
	ld   sp, $ff1f                                   ; $4b7f: $31 $1f $ff
	or   c                                           ; $4b82: $b1
	dec  d                                           ; $4b83: $15
	ld   a, a                                        ; $4b84: $7f
	db   $f4                                         ; $4b85: $f4
	inc  e                                           ; $4b86: $1c
	pop  de                                          ; $4b87: $d1
	ld   de, $fdfd                                   ; $4b88: $11 $fd $fd
	ld   d, h                                        ; $4b8b: $54
	rra                                              ; $4b8c: $1f
	rst  $38                                         ; $4b8d: $ff
	ld   de, $ef62                                   ; $4b8e: $11 $62 $ef
	pop  bc                                          ; $4b91: $c1
	rra                                              ; $4b92: $1f
	pop  hl                                          ; $4b93: $e1
	ld   de, $fcfe                                   ; $4b94: $11 $fe $fc
	ld   sp, $ff4f                                   ; $4b97: $31 $4f $ff
	ld   de, $ff22                                   ; $4b9a: $11 $22 $ff
	and  c                                           ; $4b9d: $a1
	ccf                                              ; $4b9e: $3f
	ld   [hl], c                                     ; $4b9f: $71
	ld   de, $f9df                                   ; $4ba0: $11 $df $f9
	add  c                                           ; $4ba3: $81
	rst  $38                                         ; $4ba4: $ff
	rst  $38                                         ; $4ba5: $ff
	ld   de, $ff17                                   ; $4ba6: $11 $17 $ff
	pop  bc                                          ; $4ba9: $c1
	xor  l                                           ; $4baa: $ad
	ld   de, $df17                                   ; $4bab: $11 $17 $df
	push af                                          ; $4bae: $f5
	and  c                                           ; $4baf: $a1
	rst  $38                                         ; $4bb0: $ff
	or   $11                                         ; $4bb1: $f6 $11
	rra                                              ; $4bb3: $1f
	rst  $38                                         ; $4bb4: $ff
	add  c                                           ; $4bb5: $81
	pop  af                                          ; $4bb6: $f1
	ld   de, $bf1f                                   ; $4bb7: $11 $1f $bf
	ld   c, h                                        ; $4bba: $4c
	ld   c, e                                        ; $4bbb: $4b
	rst  $38                                         ; $4bbc: $ff
	pop  de                                          ; $4bbd: $d1
	dec  d                                           ; $4bbe: $15
	sbc  a                                           ; $4bbf: $9f
	rst  $38                                         ; $4bc0: $ff
	add  hl, de                                      ; $4bc1: $19
	ld   h, c                                        ; $4bc2: $61
	ld   de, $fffe                                   ; $4bc3: $11 $fe $ff
	ld   c, a                                        ; $4bc6: $4f
	rra                                              ; $4bc7: $1f
	cp   $11                                         ; $4bc8: $fe $11
	ld   d, h                                        ; $4bca: $54
	rst  $38                                         ; $4bcb: $ff
	di                                               ; $4bcc: $f3
	dec  e                                           ; $4bcd: $1d
	ld   de, $fe11                                   ; $4bce: $11 $11 $fe
	push af                                          ; $4bd1: $f5
	pop  af                                          ; $4bd2: $f1
	rst  $38                                         ; $4bd3: $ff
	rst  $20                                         ; $4bd4: $e7
	ld   de, $ff2f                                   ; $4bd5: $11 $2f $ff
	pop  af                                          ; $4bd8: $f1
	sub  c                                           ; $4bd9: $91
	ld   de, $bf1f                                   ; $4bda: $11 $1f $bf
	db   $fd                                         ; $4bdd: $fd
	pop  hl                                          ; $4bde: $e1
	rst  $38                                         ; $4bdf: $ff
	ld   b, c                                        ; $4be0: $41
	ld   a, [de]                                     ; $4be1: $1a
	rra                                              ; $4be2: $1f
	rst  $38                                         ; $4be3: $ff
	add  e                                           ; $4be4: $83
	ld   d, c                                        ; $4be5: $51
	ld   de, $ffdf                                   ; $4be6: $11 $df $ff
	ld   l, a                                        ; $4be9: $6f
	rra                                              ; $4bea: $1f
	pop  af                                          ; $4beb: $f1
	ld   de, $ff93                                   ; $4bec: $11 $93 $ff
	rst  $38                                         ; $4bef: $ff
	add  hl, de                                      ; $4bf0: $19
	ld   de, $fc11                                   ; $4bf1: $11 $11 $fc
	ld   a, [$8ff5]                                  ; $4bf4: $fa $f5 $8f
	ld   de, $9c11                                   ; $4bf7: $11 $11 $9c
	rst  $38                                         ; $4bfa: $ff
	pop  af                                          ; $4bfb: $f1
	ld   d, c                                        ; $4bfc: $51
	ld   de, $ef1f                                   ; $4bfd: $11 $1f $ef
	ld   sp, hl                                      ; $4c00: $f9
	pop  hl                                          ; $4c01: $e1
	push af                                          ; $4c02: $f5
	ld   de, $9f1e                                   ; $4c03: $11 $1e $9f
	rst  $38                                         ; $4c06: $ff
	ld   sp, $1111                                   ; $4c07: $31 $11 $11
	rst  $38                                         ; $4c0a: $ff
	rst  $38                                         ; $4c0b: $ff
	ld   e, a                                        ; $4c0c: $5f
	rra                                              ; $4c0d: $1f
	pop  af                                          ; $4c0e: $f1
	ld   de, $ffd9                                   ; $4c0f: $11 $d9 $ff
	or   $11                                         ; $4c12: $f6 $11
	ld   de, $ff1f                                   ; $4c14: $11 $1f $ff
	ldh  a, [c]                                      ; $4c17: $f2
	pop  af                                          ; $4c18: $f1
	rst  $38                                         ; $4c19: $ff
	inc  d                                           ; $4c1a: $14
	dec  e                                           ; $4c1b: $1d
	rst  JumpTable                                         ; $4c1c: $df
	rst  $38                                         ; $4c1d: $ff
	and  c                                           ; $4c1e: $a1
	ld   de, rAUD1LEN                                   ; $4c1f: $11 $11 $ff
	rst  $38                                         ; $4c22: $ff
	inc  e                                           ; $4c23: $1c
	rra                                              ; $4c24: $1f
	pop  af                                          ; $4c25: $f1
	ld   b, c                                        ; $4c26: $41
	adc  a                                           ; $4c27: $8f
	rst  $38                                         ; $4c28: $ff
	push af                                          ; $4c29: $f5
	ld   de, $1f11                                   ; $4c2a: $11 $11 $1f
	rst  $38                                         ; $4c2d: $ff
	pop  af                                          ; $4c2e: $f1
	pop  af                                          ; $4c2f: $f1
	rst  $38                                         ; $4c30: $ff
	ld   d, $1d                                      ; $4c31: $16 $1d
	rst  $38                                         ; $4c33: $ff
	rst  $38                                         ; $4c34: $ff
	ld   d, c                                        ; $4c35: $51
	ld   de, rAUD1LEN                                   ; $4c36: $11 $11 $ff
	rst  $38                                         ; $4c39: $ff
	rra                                              ; $4c3a: $1f
	rra                                              ; $4c3b: $1f
	pop  de                                          ; $4c3c: $d1
	ld   hl, $ffff                                   ; $4c3d: $21 $ff $ff
	pop  af                                          ; $4c40: $f1
	ld   de, $2f11                                   ; $4c41: $11 $11 $2f
	rst  $38                                         ; $4c44: $ff
	ld   b, c                                        ; $4c45: $41
	or   c                                           ; $4c46: $b1
	pop  af                                          ; $4c47: $f1
	ld   b, c                                        ; $4c48: $41
	rra                                              ; $4c49: $1f
	rst  $38                                         ; $4c4a: $ff
	ld   hl, sp+$11                                  ; $4c4b: $f8 $11
	ld   de, $ff1f                                   ; $4c4d: $11 $1f $ff
	pop  af                                          ; $4c50: $f1
	add  c                                           ; $4c51: $81
	rst  $38                                         ; $4c52: $ff
	rra                                              ; $4c53: $1f
	inc  e                                           ; $4c54: $1c
	rst  $38                                         ; $4c55: $ff
	ld   a, [$1111]                                  ; $4c56: $fa $11 $11
	ld   de, $faff                                   ; $4c59: $11 $ff $fa
	dec  de                                          ; $4c5c: $1b
	rra                                              ; $4c5d: $1f
	ld   de, $ff51                                   ; $4c5e: $11 $51 $ff
	rst  $38                                         ; $4c61: $ff
	ld   de, $1111                                   ; $4c62: $11 $11 $11
	rst  $38                                         ; $4c65: $ff
	rst  $38                                         ; $4c66: $ff
	ld   d, $1f                                      ; $4c67: $16 $1f
	pop  af                                          ; $4c69: $f1
	pop  af                                          ; $4c6a: $f1
	rst  $38                                         ; $4c6b: $ff
	rst  $38                                         ; $4c6c: $ff
	ld   de, $1111                                   ; $4c6d: $11 $11 $11
	rst  $38                                         ; $4c70: $ff
	rst  $38                                         ; $4c71: $ff
	ld   de, $f154                                   ; $4c72: $11 $54 $f1
	pop  bc                                          ; $4c75: $c1
	rra                                              ; $4c76: $1f
	rst  $38                                         ; $4c77: $ff
	and  c                                           ; $4c78: $a1
	ld   de, $9f11                                   ; $4c79: $11 $11 $9f
	rst  $38                                         ; $4c7c: $ff
	and  c                                           ; $4c7d: $a1
	add  c                                           ; $4c7e: $81
	pop  af                                          ; $4c7f: $f1
	dec  de                                          ; $4c80: $1b
	rra                                              ; $4c81: $1f
	rst  $38                                         ; $4c82: $ff
	pop  af                                          ; $4c83: $f1
	ld   de, $1f11                                   ; $4c84: $11 $11 $1f
	rst  $38                                         ; $4c87: $ff
	pop  af                                          ; $4c88: $f1
	ld   d, c                                        ; $4c89: $51
	ei                                               ; $4c8a: $fb
	rra                                              ; $4c8b: $1f
	rra                                              ; $4c8c: $1f
	rst  $38                                         ; $4c8d: $ff
	pop  af                                          ; $4c8e: $f1
	ld   de, $1f11                                   ; $4c8f: $11 $11 $1f
	rst  $38                                         ; $4c92: $ff
	pop  af                                          ; $4c93: $f1
	ld   de, $1fff                                   ; $4c94: $11 $ff $1f
	rra                                              ; $4c97: $1f
	rst  $38                                         ; $4c98: $ff
	pop  af                                          ; $4c99: $f1
	ld   de, $1f11                                   ; $4c9a: $11 $11 $1f
	rst  $38                                         ; $4c9d: $ff
	pop  af                                          ; $4c9e: $f1
	ld   [de], a                                     ; $4c9f: $12
	rst  $38                                         ; $4ca0: $ff
	rra                                              ; $4ca1: $1f
	ld   e, $ff                                      ; $4ca2: $1e $ff
	pop  af                                          ; $4ca4: $f1
	ld   de, $1f11                                   ; $4ca5: $11 $11 $1f
	rst  $38                                         ; $4ca8: $ff
	pop  af                                          ; $4ca9: $f1
	dec  d                                           ; $4caa: $15
	rst  $38                                         ; $4cab: $ff
	rra                                              ; $4cac: $1f
	ld   a, [de]                                     ; $4cad: $1a
	rst  $38                                         ; $4cae: $ff
	pop  af                                          ; $4caf: $f1
	ld   b, c                                        ; $4cb0: $41
	ld   de, $ff1f                                   ; $4cb1: $11 $1f $ff
	pop  af                                          ; $4cb4: $f1
	dec  d                                           ; $4cb5: $15
	rst  $38                                         ; $4cb6: $ff
	rra                                              ; $4cb7: $1f
	ld   a, [de]                                     ; $4cb8: $1a
	rst  $38                                         ; $4cb9: $ff
	di                                               ; $4cba: $f3
	ld   b, c                                        ; $4cbb: $41
	ld   de, $ff1f                                   ; $4cbc: $11 $1f $ff
	pop  af                                          ; $4cbf: $f1
	ld   d, $ff                                      ; $4cc0: $16 $ff
	rra                                              ; $4cc2: $1f
	jr   @+$01                                       ; $4cc3: $18 $ff

	di                                               ; $4cc5: $f3
	ld   sp, $1f11                                   ; $4cc6: $31 $11 $1f
	rst  $38                                         ; $4cc9: $ff
	pop  af                                          ; $4cca: $f1
	rla                                              ; $4ccb: $17
	rst  $38                                         ; $4ccc: $ff
	rra                                              ; $4ccd: $1f
	ld   a, [de]                                     ; $4cce: $1a
	rst  $38                                         ; $4ccf: $ff
	push af                                          ; $4cd0: $f5
	ld   sp, $1f11                                   ; $4cd1: $31 $11 $1f
	rst  $38                                         ; $4cd4: $ff
	pop  af                                          ; $4cd5: $f1
	add  hl, de                                      ; $4cd6: $19
	rst  $38                                         ; $4cd7: $ff
	rra                                              ; $4cd8: $1f
	inc  e                                           ; $4cd9: $1c
	rst  $38                                         ; $4cda: $ff
	ld   hl, sp+$21                                  ; $4cdb: $f8 $21
	ld   de, $ff1f                                   ; $4cdd: $11 $1f $ff
	pop  af                                          ; $4ce0: $f1
	ld   a, [de]                                     ; $4ce1: $1a
	rst  $38                                         ; $4ce2: $ff
	rra                                              ; $4ce3: $1f
	inc  e                                           ; $4ce4: $1c
	rst  $38                                         ; $4ce5: $ff
	ld   sp, hl                                      ; $4ce6: $f9
	ld   b, c                                        ; $4ce7: $41
	ld   de, $ff1f                                   ; $4ce8: $11 $1f $ff
	pop  af                                          ; $4ceb: $f1
	ld   a, [de]                                     ; $4cec: $1a
	db   $fd                                         ; $4ced: $fd
	rra                                              ; $4cee: $1f
	dec  e                                           ; $4cef: $1d
	rst  $38                                         ; $4cf0: $ff
	ld   a, [$1161]                                  ; $4cf1: $fa $61 $11
	rra                                              ; $4cf4: $1f
	rst  $38                                         ; $4cf5: $ff
	pop  af                                          ; $4cf6: $f1
	dec  e                                           ; $4cf7: $1d
	db   $fd                                         ; $4cf8: $fd
	rra                                              ; $4cf9: $1f
	ld   a, [de]                                     ; $4cfa: $1a
	rst  $38                                         ; $4cfb: $ff
	db   $fd                                         ; $4cfc: $fd
	ld   [hl], c                                     ; $4cfd: $71
	ld   de, $ff1f                                   ; $4cfe: $11 $1f $ff
	pop  af                                          ; $4d01: $f1
	ld   e, $fe                                      ; $4d02: $1e $fe
	rra                                              ; $4d04: $1f
	dec  d                                           ; $4d05: $15
	rst  $38                                         ; $4d06: $ff
	rst  $38                                         ; $4d07: $ff
	add  c                                           ; $4d08: $81
	ld   de, $fd1f                                   ; $4d09: $11 $1f $fd
	di                                               ; $4d0c: $f3
	rra                                              ; $4d0d: $1f
	db   $fc                                         ; $4d0e: $fc
	cpl                                              ; $4d0f: $2f
	ld   de, $ffff                                   ; $4d10: $11 $ff $ff
	pop  de                                          ; $4d13: $d1
	ld   de, $fc1f                                   ; $4d14: $11 $1f $fc
	rst  $38                                         ; $4d17: $ff
	ld   e, $fa                                      ; $4d18: $1e $fa
	ccf                                              ; $4d1a: $3f
	ld   de, $ffff                                   ; $4d1b: $11 $ff $ff

jr_0fb_4d1e:
	pop  af                                          ; $4d1e: $f1
	ld   de, $fe18                                   ; $4d1f: $11 $18 $fe
	rst  $38                                         ; $4d22: $ff
	jr   jr_0fb_4d1e                                 ; $4d23: $18 $f9

	ld   e, a                                        ; $4d25: $5f
	ld   de, $ffff                                   ; $4d26: $11 $ff $ff
	pop  af                                          ; $4d29: $f1
	ld   de, rAUD1LEN                                   ; $4d2a: $11 $11 $ff
	rst  JumpTable                                         ; $4d2d: $df
	ld   de, $5ff7                                   ; $4d2e: $11 $f7 $5f
	ld   h, c                                        ; $4d31: $61
	rst  $38                                         ; $4d32: $ff
	rst  $38                                         ; $4d33: $ff
	pop  af                                          ; $4d34: $f1
	ld   a, [de]                                     ; $4d35: $1a
	ld   de, $3fff                                   ; $4d36: $11 $ff $3f
	ld   de, $4ffa                                   ; $4d39: $11 $fa $4f
	pop  af                                          ; $4d3c: $f1
	xor  a                                           ; $4d3d: $af
	rst  $38                                         ; $4d3e: $ff
	push af                                          ; $4d3f: $f5
	dec  de                                          ; $4d40: $1b
	ld   de, $1f8f                                   ; $4d41: $11 $8f $1f
	pop  af                                          ; $4d44: $f1
	rst  $38                                         ; $4d45: $ff
	ld   e, $f1                                      ; $4d46: $1e $f1
	rra                                              ; $4d48: $1f
	rst  $38                                         ; $4d49: $ff
	rst  $38                                         ; $4d4a: $ff
	ld   d, $11                                      ; $4d4b: $16 $11
	rra                                              ; $4d4d: $1f
	cp   a                                           ; $4d4e: $bf
	pop  af                                          ; $4d4f: $f1
	ccf                                              ; $4d50: $3f
	dec  de                                          ; $4d51: $1b
	pop  af                                          ; $4d52: $f1
	rra                                              ; $4d53: $1f
	rst  $38                                         ; $4d54: $ff
	rst  $38                                         ; $4d55: $ff
	ld   de, $1a71                                   ; $4d56: $11 $71 $1a
	push af                                          ; $4d59: $f5
	ldh  a, [c]                                      ; $4d5a: $f2
	rra                                              ; $4d5b: $1f
	ld   d, c                                        ; $4d5c: $51
	or   $1e                                         ; $4d5d: $f6 $1e
	rst  $38                                         ; $4d5f: $ff
	rst  $38                                         ; $4d60: $ff
	ld   b, c                                        ; $4d61: $41
	pop  hl                                          ; $4d62: $e1
	ld   de, $fffd                                   ; $4d63: $11 $fd $ff
	rra                                              ; $4d66: $1f
	pop  af                                          ; $4d67: $f1
	rst  $38                                         ; $4d68: $ff
	dec  d                                           ; $4d69: $15
	ei                                               ; $4d6a: $fb
	rst  $38                                         ; $4d6b: $ff
	pop  af                                          ; $4d6c: $f1
	pop  bc                                          ; $4d6d: $c1
	ld   de, $7f1f                                   ; $4d6e: $11 $1f $7f
	ld   sp, $8ff2                                   ; $4d71: $31 $f2 $8f
	ld   de, $ffb9                                   ; $4d74: $11 $b9 $ff
	ld   sp, hl                                      ; $4d77: $f9
	add  hl, sp                                      ; $4d78: $39
	ld   de, $f91e                                   ; $4d79: $11 $1e $f9
	pop  af                                          ; $4d7c: $f1
	xor  a                                           ; $4d7d: $af
	rra                                              ; $4d7e: $1f
	pop  bc                                          ; $4d7f: $c1
	sub  a                                           ; $4d80: $97
	rst  $38                                         ; $4d81: $ff
	rst  $38                                         ; $4d82: $ff
	ld   c, e                                        ; $4d83: $4b
	ld   hl, $f811                                   ; $4d84: $21 $11 $f8
	rst  $38                                         ; $4d87: $ff
	rra                                              ; $4d88: $1f
	pop  hl                                          ; $4d89: $e1
	ldh  a, [c]                                      ; $4d8a: $f2
	ld   e, c                                        ; $4d8b: $59
	ld   e, a                                        ; $4d8c: $5f
	rst  $38                                         ; $4d8d: $ff
	push af                                          ; $4d8e: $f5
	pop  af                                          ; $4d8f: $f1
	ld   de, $3f1f                                   ; $4d90: $11 $1f $3f
	pop  af                                          ; $4d93: $f1
	ld   hl, sp+$3f                                  ; $4d94: $f8 $3f
	inc  e                                           ; $4d96: $1c
	ld   c, c                                        ; $4d97: $49
	rst  $38                                         ; $4d98: $ff
	cp   $af                                         ; $4d99: $fe $af
	ld   de, $f111                                   ; $4d9b: $11 $11 $f1
	rst  $38                                         ; $4d9e: $ff
	rra                                              ; $4d9f: $1f
	add  [hl]                                        ; $4da0: $86
	pop  af                                          ; $4da1: $f1
	jp   nc, $ffcf                                   ; $4da2: $d2 $cf $ff

	db   $eb                                         ; $4da5: $eb
	pop  af                                          ; $4da6: $f1
	ld   de, $441f                                   ; $4da7: $11 $1f $44
	pop  af                                          ; $4daa: $f1
	rst  JumpTable                                         ; $4dab: $df
	rra                                              ; $4dac: $1f
	ld   e, l                                        ; $4dad: $5d
	ld   c, b                                        ; $4dae: $48
	cp   $ff                                         ; $4daf: $fe $ff
	sbc  a                                           ; $4db1: $9f
	ld   b, c                                        ; $4db2: $41
	ld   de, $1f1c                                   ; $4db3: $11 $1c $1f
	ld   de, $faf1                                   ; $4db6: $11 $f1 $fa
	sbc  h                                           ; $4db9: $9c
	ld   c, a                                        ; $4dba: $4f
	cp   a                                           ; $4dbb: $bf
	ld   sp, hl                                      ; $4dbc: $f9
	rst  $38                                         ; $4dbd: $ff
	ld   hl, $b211                                   ; $4dbe: $21 $11 $b2
	ld   c, a                                        ; $4dc1: $4f
	dec  de                                          ; $4dc2: $1b
	di                                               ; $4dc3: $f3
	add  sp, -$0b                                    ; $4dc4: $e8 $f5
	rst  JumpTable                                         ; $4dc6: $df
	cp   a                                           ; $4dc7: $bf
	rst  $38                                         ; $4dc8: $ff
	ld   a, [$1141]                                  ; $4dc9: $fa $41 $11
	and  c                                           ; $4dcc: $a1
	ld   e, a                                        ; $4dcd: $5f
	dec  de                                          ; $4dce: $1b
	ldh  a, [c]                                      ; $4dcf: $f2
	sbc  $d5                                         ; $4dd0: $de $d5
	ld   a, [$ffcf]                                  ; $4dd2: $fa $cf $ff
	ld   sp, hl                                      ; $4dd5: $f9
	ld   b, c                                        ; $4dd6: $41
	ld   de, $1f13                                   ; $4dd7: $11 $13 $1f
	ld   de, $aff3                                   ; $4dda: $11 $f3 $af
	adc  b                                           ; $4ddd: $88
	cp   l                                           ; $4dde: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ddf: $cf
	rst  $38                                         ; $4de0: $ff
	db   $fc                                         ; $4de1: $fc
	add  e                                           ; $4de2: $83
	ld   de, $1915                                   ; $4de3: $11 $15 $19
	pop  af                                          ; $4de6: $f1
	ld   a, [$7b1f]                                  ; $4de7: $fa $1f $7b
	xor  l                                           ; $4dea: $ad
	rst  JumpTable                                         ; $4deb: $df
	rst  $38                                         ; $4dec: $ff
	rst  $38                                         ; $4ded: $ff
	xor  d                                           ; $4dee: $aa
	ld   de, $4111                                   ; $4def: $11 $11 $41
	jp   hl                                          ; $4df2: $e9


	rra                                              ; $4df3: $1f
	add  hl, de                                      ; $4df4: $19
	or   $f9                                         ; $4df5: $f6 $f9
	xor  $ff                                         ; $4df7: $ee $ff
	rst  $38                                         ; $4df9: $ff
	db   $fd                                         ; $4dfa: $fd
	sub  c                                           ; $4dfb: $91
	ld   de, $3516                                   ; $4dfc: $11 $16 $35
	pop  bc                                          ; $4dff: $c1
	reti                                             ; $4e00: $d9


	ld   e, a                                        ; $4e01: $5f
	ld   a, a                                        ; $4e02: $7f
	sbc  a                                           ; $4e03: $9f
	rst  $28                                         ; $4e04: $ef
	rst  $38                                         ; $4e05: $ff
	rst  $38                                         ; $4e06: $ff
	ei                                               ; $4e07: $fb
	ld   hl, $1911                                   ; $4e08: $21 $11 $19
	ld   a, [de]                                     ; $4e0b: $1a
	ld   d, c                                        ; $4e0c: $51
	db   $f4                                         ; $4e0d: $f4
	sbc  d                                           ; $4e0e: $9a
	xor  a                                           ; $4e0f: $af
	cp   a                                           ; $4e10: $bf
	xor  a                                           ; $4e11: $af
	rst  $38                                         ; $4e12: $ff
	rst  $38                                         ; $4e13: $ff
	db   $fd                                         ; $4e14: $fd
	ld   d, c                                        ; $4e15: $51
	ld   de, $2115                                   ; $4e16: $11 $15 $21
	and  c                                           ; $4e19: $a1
	adc  [hl]                                        ; $4e1a: $8e
	ld   e, c                                        ; $4e1b: $59
	xor  e                                           ; $4e1c: $ab
	sbc  l                                           ; $4e1d: $9d
	adc  $ff                                         ; $4e1e: $ce $ff
	rst  $38                                         ; $4e20: $ff
	rst  $38                                         ; $4e21: $ff
	sub  d                                           ; $4e22: $92
	ld   de, $4111                                   ; $4e23: $11 $11 $41
	add  hl, de                                      ; $4e26: $19
	inc  e                                           ; $4e27: $1c
	or   c                                           ; $4e28: $b1
	sbc  d                                           ; $4e29: $9a
	call c, $fffb                                    ; $4e2a: $dc $fb $ff
	xor  a                                           ; $4e2d: $af
	rst  $38                                         ; $4e2e: $ff
	ld   a, [$1165]                                  ; $4e2f: $fa $65 $11
	ld   de, $8141                                   ; $4e32: $11 $41 $81
	dec  l                                           ; $4e35: $2d
	ld   d, $9e                                      ; $4e36: $16 $9e
	db   $db                                         ; $4e38: $db
	db   $fc                                         ; $4e39: $fc
	ei                                               ; $4e3a: $fb
	rst  $38                                         ; $4e3b: $ff
	rst  $38                                         ; $4e3c: $ff
	reti                                             ; $4e3d: $d9


	sub  [hl]                                        ; $4e3e: $96
	ld   de, $3111                                   ; $4e3f: $11 $11 $31
	ld   d, d                                        ; $4e42: $52
	add  hl, de                                      ; $4e43: $19
	inc  h                                           ; $4e44: $24
	adc  l                                           ; $4e45: $8d
	db   $db                                         ; $4e46: $db
	ld   a, [$fffe]                                  ; $4e47: $fa $fe $ff
	rst  $38                                         ; $4e4a: $ff
	ld   a, [$4187]                                  ; $4e4b: $fa $87 $41
	ld   de, $1213                                   ; $4e4e: $11 $13 $12
	ld   sp, $1883                                   ; $4e51: $31 $83 $18
	rst  $38                                         ; $4e54: $ff
	rst  JumpTable                                         ; $4e55: $df
	cp   a                                           ; $4e56: $bf
	rst  $28                                         ; $4e57: $ef
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	jp   z, Jump_0fb_51d5                            ; $4e5a: $ca $d5 $51

	ld   de, $1511                                   ; $4e5d: $11 $11 $15
	ld   hl, $48a3                                   ; $4e60: $21 $a3 $48
	adc  $ee                                         ; $4e63: $ce $ee
	cp   a                                           ; $4e65: $bf
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff
	rst  $38                                         ; $4e68: $ff
	xor  h                                           ; $4e69: $ac
	cp   b                                           ; $4e6a: $b8
	and  e                                           ; $4e6b: $a3
	ld   de, $1111                                   ; $4e6c: $11 $11 $11
	ld   [hl+], a                                    ; $4e6f: $22
	ld   d, $44                                      ; $4e70: $16 $44
	sbc  a                                           ; $4e72: $9f
	rst  $38                                         ; $4e73: $ff
	db   $fc                                         ; $4e74: $fc
	cp   $ff                                         ; $4e75: $fe $ff
	rst  $38                                         ; $4e77: $ff
	db   $fd                                         ; $4e78: $fd
	cp   [hl]                                        ; $4e79: $be
	ld   [hl], a                                     ; $4e7a: $77
	ld   h, c                                        ; $4e7b: $61
	ld   de, $1111                                   ; $4e7c: $11 $11 $11
	ld   hl, $2515                                   ; $4e7f: $21 $15 $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e82: $cf
	sbc  $df                                         ; $4e83: $de $df
	cp   $ff                                         ; $4e85: $fe $ff
	rst  $38                                         ; $4e87: $ff
	cp   $ef                                         ; $4e88: $fe $ef
	adc  c                                           ; $4e8a: $89
	ld   h, d                                        ; $4e8b: $62
	ld   de, $1111                                   ; $4e8c: $11 $11 $11
	inc  de                                          ; $4e8f: $13
	ld   [de], a                                     ; $4e90: $12
	ld   b, d                                        ; $4e91: $42
	ld   l, h                                        ; $4e92: $6c
	xor  $ff                                         ; $4e93: $ee $ff
	rst  $38                                         ; $4e95: $ff
	rst  $38                                         ; $4e96: $ff
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	rst  $38                                         ; $4e99: $ff
	ret                                              ; $4e9a: $c9


	ld   h, e                                        ; $4e9b: $63
	ld   sp, $1111                                   ; $4e9c: $31 $11 $11
	ld   de, $3514                                   ; $4e9f: $11 $14 $35
	ld   h, h                                        ; $4ea2: $64
	ld   a, h                                        ; $4ea3: $7c
	rst  $28                                         ; $4ea4: $ef
	rst  $38                                         ; $4ea5: $ff
	rst  $38                                         ; $4ea6: $ff
	rst  $38                                         ; $4ea7: $ff
	rst  $38                                         ; $4ea8: $ff
	rst  $38                                         ; $4ea9: $ff
	rst  $28                                         ; $4eaa: $ef
	db   $db                                         ; $4eab: $db
	add  l                                           ; $4eac: $85
	ld   b, e                                        ; $4ead: $43
	ld   de, $1111                                   ; $4eae: $11 $11 $11
	ld   de, $5411                                   ; $4eb1: $11 $11 $54
	ld   l, c                                        ; $4eb4: $69
	adc  $fe                                         ; $4eb5: $ce $fe
	rst  $28                                         ; $4eb7: $ef
	xor  $ef                                         ; $4eb8: $ee $ef
	rst  $38                                         ; $4eba: $ff
	rst  $38                                         ; $4ebb: $ff
	cp   $d9                                         ; $4ebc: $fe $d9
	ld   [hl], a                                     ; $4ebe: $77
	ld   d, e                                        ; $4ebf: $53
	ld   sp, $1111                                   ; $4ec0: $31 $11 $11
	ld   de, $5412                                   ; $4ec3: $11 $12 $54
	ld   h, a                                        ; $4ec6: $67
	cp   l                                           ; $4ec7: $bd
	db   $dd                                         ; $4ec8: $dd
	rst  $38                                         ; $4ec9: $ff
	rst  $28                                         ; $4eca: $ef
	rst  $38                                         ; $4ecb: $ff
	rst  $38                                         ; $4ecc: $ff
	rst  $38                                         ; $4ecd: $ff
	db   $fd                                         ; $4ece: $fd
	jp   c, Jump_0fb_5587                            ; $4ecf: $da $87 $55

	ld   b, d                                        ; $4ed2: $42
	ld   de, $1111                                   ; $4ed3: $11 $11 $11
	ld   b, d                                        ; $4ed6: $42
	ld   d, l                                        ; $4ed7: $55
	ld   b, [hl]                                     ; $4ed8: $46
	sbc  h                                           ; $4ed9: $9c
	rst  $28                                         ; $4eda: $ef
	sbc  $ed                                         ; $4edb: $de $ed
	xor  $dd                                         ; $4edd: $ee $dd
	rst  $28                                         ; $4edf: $ef
	rst  $38                                         ; $4ee0: $ff
	cp   $a9                                         ; $4ee1: $fe $a9
	ld   h, h                                        ; $4ee3: $64
	ld   d, h                                        ; $4ee4: $54
	ld   [hl-], a                                    ; $4ee5: $32
	ld   de, $1111                                   ; $4ee6: $11 $11 $11
	ld   sp, $6835                                   ; $4ee9: $31 $35 $68
	cp   a                                           ; $4eec: $bf
	rst  $38                                         ; $4eed: $ff
	rst  $28                                         ; $4eee: $ef
	cp   $fe                                         ; $4eef: $fe $fe
	xor  $dc                                         ; $4ef1: $ee $dc
	db   $ed                                         ; $4ef3: $ed
	cp   e                                           ; $4ef4: $bb
	ld   [hl], a                                     ; $4ef5: $77
	ld   [hl], l                                     ; $4ef6: $75
	ld   d, l                                        ; $4ef7: $55
	ld   sp, $1111                                   ; $4ef8: $31 $11 $11
	ld   [de], a                                     ; $4efb: $12
	inc  sp                                          ; $4efc: $33
	ld   b, [hl]                                     ; $4efd: $46
	ld   e, b                                        ; $4efe: $58
	call $ffff                                       ; $4eff: $cd $ff $ff
	rst  $38                                         ; $4f02: $ff
	cp   $ed                                         ; $4f03: $fe $ed
	call $cbed                                       ; $4f05: $cd $ed $cb
	sub  a                                           ; $4f08: $97
	ld   h, l                                        ; $4f09: $65
	ld   d, [hl]                                     ; $4f0a: $56
	ld   d, e                                        ; $4f0b: $53
	ld   hl, $1111                                   ; $4f0c: $21 $11 $11
	inc  hl                                          ; $4f0f: $23
	inc  sp                                          ; $4f10: $33

Jump_0fb_4f11:
	ld   d, a                                        ; $4f11: $57
	ld   a, d                                        ; $4f12: $7a
	sbc  $ff                                         ; $4f13: $de $ff
	rst  $38                                         ; $4f15: $ff
	rst  $38                                         ; $4f16: $ff
	cp   $ed                                         ; $4f17: $fe $ed
	call z, $cadd                                    ; $4f19: $cc $dd $ca
	sub  a                                           ; $4f1c: $97
	ld   [hl], a                                     ; $4f1d: $77
	halt                                             ; $4f1e: $76
	ld   d, e                                        ; $4f1f: $53
	ld   de, $1111                                   ; $4f20: $11 $11 $11
	ld   [hl+], a                                    ; $4f23: $22
	ld   [hl-], a                                    ; $4f24: $32
	ld   d, [hl]                                     ; $4f25: $56
	ld   a, c                                        ; $4f26: $79
	cp   l                                           ; $4f27: $bd
	xor  $ef                                         ; $4f28: $ee $ef
	rst  $38                                         ; $4f2a: $ff
	call c, $abcb                                    ; $4f2b: $dc $cb $ab
	call $aacb                                       ; $4f2e: $cd $cb $aa
	sbc  c                                           ; $4f31: $99
	xor  c                                           ; $4f32: $a9
	adc  b                                           ; $4f33: $88
	ld   h, h                                        ; $4f34: $64
	ld   de, $1111                                   ; $4f35: $11 $11 $11
	ld   [de], a                                     ; $4f38: $12
	inc  hl                                          ; $4f39: $23
	ld   b, l                                        ; $4f3a: $45
	ld   [hl], a                                     ; $4f3b: $77
	cp   h                                           ; $4f3c: $bc
	rst  $28                                         ; $4f3d: $ef
	xor  $ff                                         ; $4f3e: $ee $ff
	rst  JumpTable                                         ; $4f40: $df
	call $bccb                                       ; $4f41: $cd $cb $bc
	cp   e                                           ; $4f44: $bb
	cp   d                                           ; $4f45: $ba
	xor  c                                           ; $4f46: $a9
	sbc  c                                           ; $4f47: $99
	ld   [hl], a                                     ; $4f48: $77
	ld   h, l                                        ; $4f49: $65
	ld   b, e                                        ; $4f4a: $43
	ld   hl, $1111                                   ; $4f4b: $21 $11 $11
	ld   de, $4623                                   ; $4f4e: $11 $23 $46
	ld   a, b                                        ; $4f51: $78
	xor  h                                           ; $4f52: $ac
	adc  $ed                                         ; $4f53: $ce $ed
	xor  $ff                                         ; $4f55: $ee $ff
	xor  $cc                                         ; $4f57: $ee $cc
	cp   d                                           ; $4f59: $ba
	xor  e                                           ; $4f5a: $ab
	cp   e                                           ; $4f5b: $bb
	xor  d                                           ; $4f5c: $aa
	xor  d                                           ; $4f5d: $aa
	adc  b                                           ; $4f5e: $88
	halt                                             ; $4f5f: $76
	ld   d, l                                        ; $4f60: $55
	ld   b, e                                        ; $4f61: $43
	ld   hl, $1111                                   ; $4f62: $21 $11 $11
	ld   de, $4523                                   ; $4f65: $11 $23 $45
	ld   a, c                                        ; $4f68: $79
	xor  h                                           ; $4f69: $ac
	rst  JumpTable                                         ; $4f6a: $df
	xor  $ef                                         ; $4f6b: $ee $ef
	rst  $38                                         ; $4f6d: $ff
	db   $ec                                         ; $4f6e: $ec
	call z, $bacb                                    ; $4f6f: $cc $cb $ba
	xor  b                                           ; $4f72: $a8
	add  a                                           ; $4f73: $87
	ld   a, b                                        ; $4f74: $78
	add  a                                           ; $4f75: $87
	ld   [hl], a                                     ; $4f76: $77
	ld   h, l                                        ; $4f77: $65
	ld   d, e                                        ; $4f78: $53
	ld   [hl-], a                                    ; $4f79: $32
	ld   de, $2211                                   ; $4f7a: $11 $11 $22
	inc  [hl]                                        ; $4f7d: $34
	ld   d, [hl]                                     ; $4f7e: $56
	adc  b                                           ; $4f7f: $88
	sbc  h                                           ; $4f80: $9c
	call z, $eedd                                    ; $4f81: $cc $dd $ee
	db   $ed                                         ; $4f84: $ed
	call c, $babb                                    ; $4f85: $dc $bb $ba
	sbc  b                                           ; $4f88: $98
	adc  c                                           ; $4f89: $89
	adc  c                                           ; $4f8a: $89
	sbc  c                                           ; $4f8b: $99
	adc  c                                           ; $4f8c: $89
	sbc  b                                           ; $4f8d: $98
	adc  b                                           ; $4f8e: $88
	halt                                             ; $4f8f: $76
	ld   h, l                                        ; $4f90: $65
	ld   d, h                                        ; $4f91: $54
	ld   b, h                                        ; $4f92: $44
	inc  sp                                          ; $4f93: $33
	ld   [de], a                                     ; $4f94: $12
	inc  sp                                          ; $4f95: $33
	ld   b, h                                        ; $4f96: $44
	ld   d, [hl]                                     ; $4f97: $56
	ld   [hl], a                                     ; $4f98: $77
	sbc  d                                           ; $4f99: $9a
	cp   e                                           ; $4f9a: $bb
	xor  e                                           ; $4f9b: $ab
	set  1, h                                        ; $4f9c: $cb $cc
	cp   e                                           ; $4f9e: $bb
	cp   d                                           ; $4f9f: $ba
	cp   d                                           ; $4fa0: $ba
	cp   e                                           ; $4fa1: $bb
	xor  d                                           ; $4fa2: $aa
	cp   d                                           ; $4fa3: $ba
	xor  e                                           ; $4fa4: $ab
	xor  d                                           ; $4fa5: $aa
	sbc  d                                           ; $4fa6: $9a
	sbc  d                                           ; $4fa7: $9a
	adc  c                                           ; $4fa8: $89
	halt                                             ; $4fa9: $76
	ld   d, h                                        ; $4faa: $54
	ld   b, h                                        ; $4fab: $44
	ld   b, e                                        ; $4fac: $43
	ld   [hl-], a                                    ; $4fad: $32
	ld   [hl+], a                                    ; $4fae: $22
	inc  hl                                          ; $4faf: $23
	ld   b, h                                        ; $4fb0: $44
	ld   d, [hl]                                     ; $4fb1: $56
	ld   h, a                                        ; $4fb2: $67
	ld   a, b                                        ; $4fb3: $78
	sbc  c                                           ; $4fb4: $99
	xor  e                                           ; $4fb5: $ab
	xor  e                                           ; $4fb6: $ab
	res  7, h                                        ; $4fb7: $cb $bc
	cp   h                                           ; $4fb9: $bc
	res  5, d                                        ; $4fba: $cb $aa
	xor  e                                           ; $4fbc: $ab
	cp   d                                           ; $4fbd: $ba
	cp   d                                           ; $4fbe: $ba
	sbc  d                                           ; $4fbf: $9a
	sbc  c                                           ; $4fc0: $99
	adc  c                                           ; $4fc1: $89
	sbc  b                                           ; $4fc2: $98
	adc  b                                           ; $4fc3: $88
	ld   [hl], a                                     ; $4fc4: $77
	ld   [hl], a                                     ; $4fc5: $77
	ld   h, [hl]                                     ; $4fc6: $66
	ld   h, l                                        ; $4fc7: $65
	ld   d, l                                        ; $4fc8: $55
	ld   d, l                                        ; $4fc9: $55
	ld   b, e                                        ; $4fca: $43
	inc  sp                                          ; $4fcb: $33
	ld   b, h                                        ; $4fcc: $44
	ld   b, l                                        ; $4fcd: $45
	ld   h, [hl]                                     ; $4fce: $66
	ld   h, a                                        ; $4fcf: $67
	ld   a, b                                        ; $4fd0: $78
	xor  c                                           ; $4fd1: $a9
	sbc  d                                           ; $4fd2: $9a
	xor  h                                           ; $4fd3: $ac
	cp   e                                           ; $4fd4: $bb
	cp   e                                           ; $4fd5: $bb
	call z, $bbbb                                    ; $4fd6: $cc $bb $bb
	cp   d                                           ; $4fd9: $ba
	xor  d                                           ; $4fda: $aa
	sbc  c                                           ; $4fdb: $99
	sbc  d                                           ; $4fdc: $9a
	sbc  c                                           ; $4fdd: $99
	adc  c                                           ; $4fde: $89
	sbc  b                                           ; $4fdf: $98
	sbc  b                                           ; $4fe0: $98
	adc  b                                           ; $4fe1: $88
	add  a                                           ; $4fe2: $87
	ld   [hl], a                                     ; $4fe3: $77
	halt                                             ; $4fe4: $76
	ld   h, [hl]                                     ; $4fe5: $66
	ld   h, l                                        ; $4fe6: $65
	ld   d, l                                        ; $4fe7: $55
	ld   d, l                                        ; $4fe8: $55
	ld   b, h                                        ; $4fe9: $44
	ld   b, h                                        ; $4fea: $44
	ld   d, l                                        ; $4feb: $55
	ld   d, [hl]                                     ; $4fec: $56
	ld   [hl], a                                     ; $4fed: $77
	ld   [hl], a                                     ; $4fee: $77
	adc  b                                           ; $4fef: $88
	adc  c                                           ; $4ff0: $89
	sbc  e                                           ; $4ff1: $9b
	xor  e                                           ; $4ff2: $ab
	cp   d                                           ; $4ff3: $ba
	cp   d                                           ; $4ff4: $ba
	cp   e                                           ; $4ff5: $bb
	cp   e                                           ; $4ff6: $bb
	xor  d                                           ; $4ff7: $aa
	sbc  c                                           ; $4ff8: $99
	sbc  d                                           ; $4ff9: $9a
	sbc  c                                           ; $4ffa: $99
	sbc  c                                           ; $4ffb: $99
	sbc  c                                           ; $4ffc: $99
	adc  c                                           ; $4ffd: $89
	adc  c                                           ; $4ffe: $89
	sbc  c                                           ; $4fff: $99
	sbc  c                                           ; $5000: $99
	adc  b                                           ; $5001: $88
	adc  b                                           ; $5002: $88
	add  a                                           ; $5003: $87
	ld   [hl], a                                     ; $5004: $77
	ld   [hl], a                                     ; $5005: $77
	ld   [hl], a                                     ; $5006: $77
	halt                                             ; $5007: $76
	ld   h, l                                        ; $5008: $65
	ld   d, l                                        ; $5009: $55
	ld   d, l                                        ; $500a: $55
	ld   b, h                                        ; $500b: $44
	ld   d, l                                        ; $500c: $55
	ld   d, l                                        ; $500d: $55
	ld   h, [hl]                                     ; $500e: $66
	ld   h, [hl]                                     ; $500f: $66
	ld   [hl], a                                     ; $5010: $77
	adc  c                                           ; $5011: $89
	xor  d                                           ; $5012: $aa
	xor  d                                           ; $5013: $aa
	xor  d                                           ; $5014: $aa
	cp   d                                           ; $5015: $ba
	xor  e                                           ; $5016: $ab
	cp   d                                           ; $5017: $ba
	xor  d                                           ; $5018: $aa
	xor  d                                           ; $5019: $aa
	xor  d                                           ; $501a: $aa
	xor  d                                           ; $501b: $aa
	sbc  c                                           ; $501c: $99
	sbc  c                                           ; $501d: $99
	sbc  b                                           ; $501e: $98
	adc  b                                           ; $501f: $88
	adc  b                                           ; $5020: $88
	ld   a, b                                        ; $5021: $78
	add  a                                           ; $5022: $87
	ld   [hl], a                                     ; $5023: $77
	ld   [hl], a                                     ; $5024: $77
	ld   [hl], a                                     ; $5025: $77
	ld   [hl], a                                     ; $5026: $77
	ld   [hl], a                                     ; $5027: $77
	ld   [hl], a                                     ; $5028: $77
	ld   [hl], a                                     ; $5029: $77
	halt                                             ; $502a: $76
	ld   h, [hl]                                     ; $502b: $66
	ld   h, [hl]                                     ; $502c: $66
	ld   h, [hl]                                     ; $502d: $66
	ld   h, [hl]                                     ; $502e: $66
	ld   h, [hl]                                     ; $502f: $66
	ld   h, [hl]                                     ; $5030: $66
	ld   [hl], a                                     ; $5031: $77
	ld   [hl], a                                     ; $5032: $77
	ld   a, b                                        ; $5033: $78
	adc  b                                           ; $5034: $88
	adc  b                                           ; $5035: $88
	sbc  c                                           ; $5036: $99
	xor  c                                           ; $5037: $a9
	xor  d                                           ; $5038: $aa
	xor  c                                           ; $5039: $a9
	sbc  c                                           ; $503a: $99
	xor  c                                           ; $503b: $a9
	sbc  c                                           ; $503c: $99
	xor  d                                           ; $503d: $aa
	sbc  c                                           ; $503e: $99
	sbc  c                                           ; $503f: $99
	adc  c                                           ; $5040: $89
	sbc  b                                           ; $5041: $98
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
	ld   [hl], a                                     ; $504d: $77
	ld   [hl], a                                     ; $504e: $77
	ld   [hl], a                                     ; $504f: $77
	ld   [hl], a                                     ; $5050: $77
	ld   [hl], a                                     ; $5051: $77
	halt                                             ; $5052: $76
	ld   h, [hl]                                     ; $5053: $66
	ld   h, [hl]                                     ; $5054: $66
	ld   h, [hl]                                     ; $5055: $66
	ld   h, [hl]                                     ; $5056: $66
	ld   h, a                                        ; $5057: $67
	ld   [hl], a                                     ; $5058: $77
	ld   [hl], a                                     ; $5059: $77
	ld   [hl], a                                     ; $505a: $77
	adc  b                                           ; $505b: $88
	sbc  b                                           ; $505c: $98
	adc  b                                           ; $505d: $88
	sbc  c                                           ; $505e: $99
	sbc  c                                           ; $505f: $99
	sbc  d                                           ; $5060: $9a
	xor  d                                           ; $5061: $aa
	sbc  d                                           ; $5062: $9a
	xor  d                                           ; $5063: $aa
	xor  d                                           ; $5064: $aa
	xor  d                                           ; $5065: $aa
	sbc  c                                           ; $5066: $99
	sbc  c                                           ; $5067: $99
	adc  c                                           ; $5068: $89
	sbc  b                                           ; $5069: $98
	adc  b                                           ; $506a: $88
	adc  b                                           ; $506b: $88
	adc  b                                           ; $506c: $88
	ld   a, b                                        ; $506d: $78
	ld   a, b                                        ; $506e: $78
	ld   [hl], a                                     ; $506f: $77
	ld   [hl], a                                     ; $5070: $77
	ld   [hl], a                                     ; $5071: $77
	ld   [hl], a                                     ; $5072: $77
	ld   [hl], a                                     ; $5073: $77
	ld   [hl], a                                     ; $5074: $77
	ld   [hl], a                                     ; $5075: $77
	ld   [hl], a                                     ; $5076: $77
	ld   [hl], a                                     ; $5077: $77
	ld   [hl], a                                     ; $5078: $77
	ld   [hl], a                                     ; $5079: $77
	ld   [hl], a                                     ; $507a: $77
	ld   [hl], a                                     ; $507b: $77
	ld   [hl], a                                     ; $507c: $77
	ld   a, b                                        ; $507d: $78
	adc  b                                           ; $507e: $88
	adc  b                                           ; $507f: $88
	adc  b                                           ; $5080: $88
	adc  b                                           ; $5081: $88
	adc  b                                           ; $5082: $88
	adc  b                                           ; $5083: $88
	sbc  c                                           ; $5084: $99
	sbc  c                                           ; $5085: $99
	sbc  b                                           ; $5086: $98
	adc  b                                           ; $5087: $88
	adc  b                                           ; $5088: $88
	sbc  b                                           ; $5089: $98
	adc  b                                           ; $508a: $88
	adc  c                                           ; $508b: $89
	sbc  c                                           ; $508c: $99
	sbc  c                                           ; $508d: $99
	sbc  b                                           ; $508e: $98
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

Jump_0fb_51d5:
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
	adc  b                                           ; $5203: $88
	adc  b                                           ; $5204: $88
	adc  b                                           ; $5205: $88
	adc  b                                           ; $5206: $88
	adc  b                                           ; $5207: $88
	adc  b                                           ; $5208: $88
	adc  b                                           ; $5209: $88
	adc  b                                           ; $520a: $88
	adc  b                                           ; $520b: $88
	adc  b                                           ; $520c: $88
	adc  b                                           ; $520d: $88
	adc  b                                           ; $520e: $88
	adc  b                                           ; $520f: $88
	adc  b                                           ; $5210: $88
	adc  b                                           ; $5211: $88
	adc  b                                           ; $5212: $88
	adc  b                                           ; $5213: $88
	adc  b                                           ; $5214: $88
	adc  b                                           ; $5215: $88
	adc  b                                           ; $5216: $88
	adc  b                                           ; $5217: $88
	adc  b                                           ; $5218: $88
	adc  b                                           ; $5219: $88
	adc  b                                           ; $521a: $88
	adc  b                                           ; $521b: $88
	adc  b                                           ; $521c: $88
	adc  b                                           ; $521d: $88
	adc  b                                           ; $521e: $88
	adc  b                                           ; $521f: $88
	adc  b                                           ; $5220: $88
	adc  b                                           ; $5221: $88
	adc  b                                           ; $5222: $88
	adc  b                                           ; $5223: $88
	adc  b                                           ; $5224: $88
	adc  b                                           ; $5225: $88
	adc  b                                           ; $5226: $88
	adc  b                                           ; $5227: $88
	adc  b                                           ; $5228: $88
	adc  b                                           ; $5229: $88
	adc  b                                           ; $522a: $88
	adc  b                                           ; $522b: $88
	adc  b                                           ; $522c: $88
	adc  b                                           ; $522d: $88
	adc  b                                           ; $522e: $88
	adc  b                                           ; $522f: $88
	adc  b                                           ; $5230: $88
	adc  b                                           ; $5231: $88
	adc  b                                           ; $5232: $88
	adc  b                                           ; $5233: $88
	adc  b                                           ; $5234: $88
	adc  b                                           ; $5235: $88
	adc  b                                           ; $5236: $88
	adc  b                                           ; $5237: $88
	adc  b                                           ; $5238: $88
	adc  b                                           ; $5239: $88
	adc  b                                           ; $523a: $88
	adc  b                                           ; $523b: $88
	adc  b                                           ; $523c: $88
	adc  b                                           ; $523d: $88
	adc  b                                           ; $523e: $88
	adc  b                                           ; $523f: $88
	adc  b                                           ; $5240: $88
	adc  b                                           ; $5241: $88
	adc  b                                           ; $5242: $88
	adc  b                                           ; $5243: $88
	adc  b                                           ; $5244: $88
	adc  b                                           ; $5245: $88
	adc  b                                           ; $5246: $88
	adc  b                                           ; $5247: $88
	adc  b                                           ; $5248: $88
	adc  b                                           ; $5249: $88
	adc  b                                           ; $524a: $88
	adc  b                                           ; $524b: $88
	adc  b                                           ; $524c: $88
	adc  b                                           ; $524d: $88
	adc  b                                           ; $524e: $88
	adc  b                                           ; $524f: $88
	adc  b                                           ; $5250: $88
	adc  b                                           ; $5251: $88
	adc  b                                           ; $5252: $88
	adc  b                                           ; $5253: $88
	adc  b                                           ; $5254: $88
	adc  b                                           ; $5255: $88
	adc  b                                           ; $5256: $88
	adc  b                                           ; $5257: $88
	adc  b                                           ; $5258: $88
	adc  b                                           ; $5259: $88
	adc  b                                           ; $525a: $88
	adc  b                                           ; $525b: $88
	adc  b                                           ; $525c: $88
	adc  b                                           ; $525d: $88
	adc  b                                           ; $525e: $88
	adc  b                                           ; $525f: $88
	adc  b                                           ; $5260: $88
	adc  b                                           ; $5261: $88
	adc  b                                           ; $5262: $88
	adc  b                                           ; $5263: $88
	adc  b                                           ; $5264: $88
	adc  b                                           ; $5265: $88
	adc  b                                           ; $5266: $88
	adc  b                                           ; $5267: $88
	adc  b                                           ; $5268: $88
	adc  b                                           ; $5269: $88
	adc  b                                           ; $526a: $88
	adc  b                                           ; $526b: $88
	adc  b                                           ; $526c: $88
	adc  b                                           ; $526d: $88
	adc  b                                           ; $526e: $88
	adc  b                                           ; $526f: $88
	adc  b                                           ; $5270: $88
	adc  b                                           ; $5271: $88
	adc  b                                           ; $5272: $88
	adc  b                                           ; $5273: $88
	adc  b                                           ; $5274: $88
	adc  b                                           ; $5275: $88
	adc  b                                           ; $5276: $88
	adc  b                                           ; $5277: $88
	adc  b                                           ; $5278: $88
	adc  b                                           ; $5279: $88
	adc  b                                           ; $527a: $88
	adc  b                                           ; $527b: $88
	adc  b                                           ; $527c: $88
	adc  b                                           ; $527d: $88
	adc  b                                           ; $527e: $88
	adc  b                                           ; $527f: $88
	adc  b                                           ; $5280: $88
	adc  b                                           ; $5281: $88
	adc  b                                           ; $5282: $88
	adc  b                                           ; $5283: $88
	adc  b                                           ; $5284: $88
	adc  b                                           ; $5285: $88
	adc  b                                           ; $5286: $88
	adc  b                                           ; $5287: $88
	adc  b                                           ; $5288: $88
	adc  b                                           ; $5289: $88
	adc  b                                           ; $528a: $88
	adc  b                                           ; $528b: $88
	adc  b                                           ; $528c: $88
	adc  b                                           ; $528d: $88
	adc  b                                           ; $528e: $88
	adc  b                                           ; $528f: $88
	adc  b                                           ; $5290: $88
	adc  b                                           ; $5291: $88
	adc  b                                           ; $5292: $88
	adc  b                                           ; $5293: $88
	adc  b                                           ; $5294: $88
	adc  b                                           ; $5295: $88
	adc  b                                           ; $5296: $88
	adc  b                                           ; $5297: $88
	adc  b                                           ; $5298: $88
	adc  b                                           ; $5299: $88
	adc  b                                           ; $529a: $88
	adc  b                                           ; $529b: $88
	adc  b                                           ; $529c: $88
	adc  b                                           ; $529d: $88
	adc  b                                           ; $529e: $88
	adc  b                                           ; $529f: $88
	adc  b                                           ; $52a0: $88
	adc  b                                           ; $52a1: $88
	adc  b                                           ; $52a2: $88
	adc  b                                           ; $52a3: $88
	adc  b                                           ; $52a4: $88
	adc  b                                           ; $52a5: $88
	adc  b                                           ; $52a6: $88
	adc  b                                           ; $52a7: $88
	adc  b                                           ; $52a8: $88
	adc  b                                           ; $52a9: $88
	adc  b                                           ; $52aa: $88
	adc  b                                           ; $52ab: $88
	adc  b                                           ; $52ac: $88
	adc  b                                           ; $52ad: $88
	adc  b                                           ; $52ae: $88
	adc  b                                           ; $52af: $88
	adc  b                                           ; $52b0: $88
	adc  b                                           ; $52b1: $88
	adc  b                                           ; $52b2: $88
	adc  b                                           ; $52b3: $88
	adc  b                                           ; $52b4: $88
	adc  b                                           ; $52b5: $88
	adc  b                                           ; $52b6: $88

Call_0fb_52b7:
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
	adc  b                                           ; $54d0: $88
	adc  b                                           ; $54d1: $88
	adc  b                                           ; $54d2: $88
	adc  b                                           ; $54d3: $88
	adc  b                                           ; $54d4: $88
	adc  b                                           ; $54d5: $88
	adc  b                                           ; $54d6: $88
	adc  b                                           ; $54d7: $88
	adc  b                                           ; $54d8: $88
	adc  b                                           ; $54d9: $88
	adc  b                                           ; $54da: $88
	adc  b                                           ; $54db: $88
	adc  b                                           ; $54dc: $88
	adc  b                                           ; $54dd: $88
	adc  b                                           ; $54de: $88
	adc  b                                           ; $54df: $88
	adc  b                                           ; $54e0: $88
	adc  b                                           ; $54e1: $88
	adc  b                                           ; $54e2: $88
	adc  b                                           ; $54e3: $88
	adc  b                                           ; $54e4: $88
	adc  b                                           ; $54e5: $88
	adc  b                                           ; $54e6: $88
	adc  b                                           ; $54e7: $88
	adc  b                                           ; $54e8: $88
	adc  b                                           ; $54e9: $88
	adc  b                                           ; $54ea: $88
	adc  b                                           ; $54eb: $88
	adc  b                                           ; $54ec: $88
	adc  b                                           ; $54ed: $88
	adc  b                                           ; $54ee: $88
	adc  b                                           ; $54ef: $88
	adc  b                                           ; $54f0: $88
	adc  b                                           ; $54f1: $88
	adc  b                                           ; $54f2: $88
	adc  b                                           ; $54f3: $88
	adc  b                                           ; $54f4: $88
	adc  b                                           ; $54f5: $88
	adc  b                                           ; $54f6: $88
	adc  b                                           ; $54f7: $88
	adc  b                                           ; $54f8: $88
	adc  b                                           ; $54f9: $88
	adc  b                                           ; $54fa: $88
	adc  b                                           ; $54fb: $88
	adc  b                                           ; $54fc: $88
	adc  b                                           ; $54fd: $88
	adc  b                                           ; $54fe: $88
	adc  b                                           ; $54ff: $88
	adc  b                                           ; $5500: $88
	adc  b                                           ; $5501: $88
	adc  b                                           ; $5502: $88
	adc  b                                           ; $5503: $88
	adc  b                                           ; $5504: $88
	adc  b                                           ; $5505: $88
	adc  b                                           ; $5506: $88
	adc  b                                           ; $5507: $88
	adc  b                                           ; $5508: $88
	adc  b                                           ; $5509: $88
	adc  b                                           ; $550a: $88
	adc  b                                           ; $550b: $88
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	adc  b                                           ; $550e: $88
	adc  b                                           ; $550f: $88
	adc  b                                           ; $5510: $88
	adc  b                                           ; $5511: $88
	adc  b                                           ; $5512: $88
	adc  b                                           ; $5513: $88
	adc  b                                           ; $5514: $88
	adc  b                                           ; $5515: $88
	adc  b                                           ; $5516: $88
	adc  b                                           ; $5517: $88
	adc  b                                           ; $5518: $88
	adc  b                                           ; $5519: $88
	adc  b                                           ; $551a: $88
	adc  b                                           ; $551b: $88
	adc  b                                           ; $551c: $88
	adc  b                                           ; $551d: $88
	adc  b                                           ; $551e: $88
	adc  b                                           ; $551f: $88
	adc  b                                           ; $5520: $88
	adc  b                                           ; $5521: $88
	adc  b                                           ; $5522: $88
	adc  b                                           ; $5523: $88
	adc  b                                           ; $5524: $88
	adc  b                                           ; $5525: $88
	adc  b                                           ; $5526: $88
	adc  b                                           ; $5527: $88
	adc  b                                           ; $5528: $88
	adc  b                                           ; $5529: $88
	adc  b                                           ; $552a: $88
	adc  b                                           ; $552b: $88
	adc  b                                           ; $552c: $88
	adc  b                                           ; $552d: $88
	adc  b                                           ; $552e: $88
	adc  b                                           ; $552f: $88
	adc  b                                           ; $5530: $88
	adc  b                                           ; $5531: $88
	adc  b                                           ; $5532: $88
	adc  b                                           ; $5533: $88
	adc  b                                           ; $5534: $88
	adc  b                                           ; $5535: $88
	adc  b                                           ; $5536: $88
	adc  b                                           ; $5537: $88
	adc  b                                           ; $5538: $88
	adc  b                                           ; $5539: $88
	adc  b                                           ; $553a: $88
	adc  b                                           ; $553b: $88
	adc  b                                           ; $553c: $88
	adc  b                                           ; $553d: $88
	adc  b                                           ; $553e: $88
	adc  b                                           ; $553f: $88
	adc  b                                           ; $5540: $88
	adc  b                                           ; $5541: $88
	adc  b                                           ; $5542: $88
	adc  b                                           ; $5543: $88
	adc  b                                           ; $5544: $88
	adc  b                                           ; $5545: $88
	adc  b                                           ; $5546: $88
	adc  b                                           ; $5547: $88
	adc  b                                           ; $5548: $88
	adc  b                                           ; $5549: $88
	adc  b                                           ; $554a: $88
	adc  b                                           ; $554b: $88
	adc  b                                           ; $554c: $88
	adc  b                                           ; $554d: $88
	adc  b                                           ; $554e: $88
	adc  b                                           ; $554f: $88
	adc  b                                           ; $5550: $88
	adc  b                                           ; $5551: $88
	adc  b                                           ; $5552: $88
	adc  b                                           ; $5553: $88

Jump_0fb_5554:
	adc  b                                           ; $5554: $88
	adc  b                                           ; $5555: $88
	adc  b                                           ; $5556: $88
	adc  b                                           ; $5557: $88
	adc  b                                           ; $5558: $88
	adc  b                                           ; $5559: $88
	adc  b                                           ; $555a: $88
	adc  b                                           ; $555b: $88
	adc  b                                           ; $555c: $88
	adc  b                                           ; $555d: $88
	adc  b                                           ; $555e: $88
	adc  b                                           ; $555f: $88
	adc  b                                           ; $5560: $88
	adc  b                                           ; $5561: $88
	adc  b                                           ; $5562: $88
	adc  b                                           ; $5563: $88
	adc  b                                           ; $5564: $88
	adc  b                                           ; $5565: $88
	adc  b                                           ; $5566: $88
	adc  b                                           ; $5567: $88
	adc  b                                           ; $5568: $88
	adc  b                                           ; $5569: $88
	adc  b                                           ; $556a: $88
	adc  b                                           ; $556b: $88
	adc  b                                           ; $556c: $88
	adc  b                                           ; $556d: $88
	adc  b                                           ; $556e: $88
	adc  b                                           ; $556f: $88
	adc  b                                           ; $5570: $88
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	adc  b                                           ; $5573: $88
	adc  b                                           ; $5574: $88
	adc  b                                           ; $5575: $88
	adc  b                                           ; $5576: $88
	adc  b                                           ; $5577: $88
	adc  b                                           ; $5578: $88
	adc  b                                           ; $5579: $88
	adc  b                                           ; $557a: $88
	adc  b                                           ; $557b: $88
	adc  b                                           ; $557c: $88
	adc  b                                           ; $557d: $88
	adc  b                                           ; $557e: $88
	adc  b                                           ; $557f: $88
	adc  b                                           ; $5580: $88
	adc  b                                           ; $5581: $88
	adc  b                                           ; $5582: $88
	adc  b                                           ; $5583: $88
	adc  b                                           ; $5584: $88
	adc  b                                           ; $5585: $88
	adc  b                                           ; $5586: $88

Jump_0fb_5587:
	adc  b                                           ; $5587: $88
	adc  b                                           ; $5588: $88
	adc  b                                           ; $5589: $88
	adc  b                                           ; $558a: $88
	adc  b                                           ; $558b: $88
	adc  b                                           ; $558c: $88
	adc  b                                           ; $558d: $88
	adc  b                                           ; $558e: $88
	adc  b                                           ; $558f: $88
	adc  b                                           ; $5590: $88
	adc  b                                           ; $5591: $88
	adc  b                                           ; $5592: $88
	adc  b                                           ; $5593: $88
	adc  b                                           ; $5594: $88
	adc  b                                           ; $5595: $88
	adc  b                                           ; $5596: $88
	adc  b                                           ; $5597: $88
	adc  b                                           ; $5598: $88
	adc  b                                           ; $5599: $88
	adc  b                                           ; $559a: $88
	adc  b                                           ; $559b: $88
	adc  b                                           ; $559c: $88
	adc  b                                           ; $559d: $88
	adc  b                                           ; $559e: $88
	adc  b                                           ; $559f: $88
	adc  b                                           ; $55a0: $88
	adc  b                                           ; $55a1: $88
	adc  b                                           ; $55a2: $88
	adc  b                                           ; $55a3: $88
	adc  b                                           ; $55a4: $88
	adc  b                                           ; $55a5: $88
	adc  b                                           ; $55a6: $88
	adc  b                                           ; $55a7: $88
	adc  b                                           ; $55a8: $88
	adc  b                                           ; $55a9: $88
	adc  b                                           ; $55aa: $88
	adc  b                                           ; $55ab: $88
	adc  b                                           ; $55ac: $88
	adc  b                                           ; $55ad: $88
	adc  b                                           ; $55ae: $88
	adc  b                                           ; $55af: $88
	adc  b                                           ; $55b0: $88
	adc  b                                           ; $55b1: $88
	adc  b                                           ; $55b2: $88
	adc  b                                           ; $55b3: $88
	adc  b                                           ; $55b4: $88
	adc  b                                           ; $55b5: $88
	adc  b                                           ; $55b6: $88
	adc  b                                           ; $55b7: $88
	adc  b                                           ; $55b8: $88
	adc  b                                           ; $55b9: $88
	adc  b                                           ; $55ba: $88
	adc  b                                           ; $55bb: $88
	adc  b                                           ; $55bc: $88
	adc  b                                           ; $55bd: $88
	adc  b                                           ; $55be: $88
	adc  b                                           ; $55bf: $88
	adc  b                                           ; $55c0: $88
	adc  b                                           ; $55c1: $88
	adc  b                                           ; $55c2: $88
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
	adc  b                                           ; $566f: $88
	adc  b                                           ; $5670: $88
	adc  b                                           ; $5671: $88
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
	adc  b                                           ; $5682: $88
	adc  b                                           ; $5683: $88
	adc  b                                           ; $5684: $88
	adc  b                                           ; $5685: $88
	adc  b                                           ; $5686: $88
	adc  b                                           ; $5687: $88
	adc  b                                           ; $5688: $88
	adc  b                                           ; $5689: $88
	adc  b                                           ; $568a: $88
	adc  b                                           ; $568b: $88
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

Call_0fb_56b6:
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
	sbc  c                                           ; $5813: $99
	sbc  c                                           ; $5814: $99
	sbc  c                                           ; $5815: $99
	sbc  c                                           ; $5816: $99
	adc  b                                           ; $5817: $88
	adc  b                                           ; $5818: $88
	adc  b                                           ; $5819: $88
	adc  b                                           ; $581a: $88
	ld   [hl], a                                     ; $581b: $77
	ld   [hl], a                                     ; $581c: $77
	ld   [hl], a                                     ; $581d: $77
	ld   [hl], a                                     ; $581e: $77
	ld   [hl], a                                     ; $581f: $77
	ld   [hl], a                                     ; $5820: $77
	ld   a, b                                        ; $5821: $78
	adc  b                                           ; $5822: $88
	sbc  c                                           ; $5823: $99
	adc  c                                           ; $5824: $89
	sbc  c                                           ; $5825: $99
	xor  d                                           ; $5826: $aa
	xor  d                                           ; $5827: $aa
	sbc  c                                           ; $5828: $99
	sbc  c                                           ; $5829: $99
	adc  c                                           ; $582a: $89
	adc  b                                           ; $582b: $88
	adc  b                                           ; $582c: $88
	add  a                                           ; $582d: $87
	ld   [hl], a                                     ; $582e: $77
	ld   [hl], a                                     ; $582f: $77
	ld   [hl], a                                     ; $5830: $77
	ld   [hl], a                                     ; $5831: $77
	ld   [hl], a                                     ; $5832: $77
	ld   [hl], a                                     ; $5833: $77
	ld   [hl], a                                     ; $5834: $77
	ld   [hl], a                                     ; $5835: $77
	ld   [hl], a                                     ; $5836: $77
	ld   a, b                                        ; $5837: $78
	adc  b                                           ; $5838: $88
	sbc  c                                           ; $5839: $99
	adc  c                                           ; $583a: $89
	adc  c                                           ; $583b: $89
	adc  b                                           ; $583c: $88
	sbc  c                                           ; $583d: $99
	adc  b                                           ; $583e: $88
	sbc  c                                           ; $583f: $99
	sbc  c                                           ; $5840: $99
	xor  c                                           ; $5841: $a9
	sbc  c                                           ; $5842: $99
	sbc  c                                           ; $5843: $99
	sbc  c                                           ; $5844: $99
	adc  b                                           ; $5845: $88
	adc  b                                           ; $5846: $88
	add  a                                           ; $5847: $87
	ld   a, b                                        ; $5848: $78
	adc  b                                           ; $5849: $88
	adc  c                                           ; $584a: $89
	sbc  b                                           ; $584b: $98
	adc  b                                           ; $584c: $88
	adc  b                                           ; $584d: $88
	add  a                                           ; $584e: $87
	halt                                             ; $584f: $76
	ld   h, [hl]                                     ; $5850: $66
	ld   d, l                                        ; $5851: $55
	ld   b, l                                        ; $5852: $45
	ld   d, h                                        ; $5853: $54
	ld   d, [hl]                                     ; $5854: $56
	ld   h, a                                        ; $5855: $67
	adc  d                                           ; $5856: $8a
	xor  d                                           ; $5857: $aa
	cp   h                                           ; $5858: $bc
	cp   e                                           ; $5859: $bb
	xor  h                                           ; $585a: $ac
	xor  c                                           ; $585b: $a9
	sbc  c                                           ; $585c: $99
	adc  b                                           ; $585d: $88
	ld   [hl], a                                     ; $585e: $77
	ld   [hl], a                                     ; $585f: $77
	halt                                             ; $5860: $76
	ld   [hl], a                                     ; $5861: $77
	ld   [hl], a                                     ; $5862: $77
	ld   a, c                                        ; $5863: $79
	sbc  b                                           ; $5864: $98
	sbc  d                                           ; $5865: $9a
	xor  d                                           ; $5866: $aa
	cp   e                                           ; $5867: $bb
	sbc  d                                           ; $5868: $9a
	cp   d                                           ; $5869: $ba
	sbc  c                                           ; $586a: $99
	sbc  b                                           ; $586b: $98
	ld   [hl], a                                     ; $586c: $77
	ld   [hl], l                                     ; $586d: $75
	ld   b, h                                        ; $586e: $44
	ld   b, e                                        ; $586f: $43
	ld   [hl+], a                                    ; $5870: $22
	inc  hl                                          ; $5871: $23
	inc  sp                                          ; $5872: $33
	ld   b, a                                        ; $5873: $47
	ld   a, b                                        ; $5874: $78
	xor  e                                           ; $5875: $ab
	call c, $ddce                                    ; $5876: $dc $ce $dd
	call z, $87c9                                    ; $5879: $cc $c9 $87
	halt                                             ; $587c: $76
	ld   h, l                                        ; $587d: $65
	ld   h, [hl]                                     ; $587e: $66
	ld   h, [hl]                                     ; $587f: $66
	ld   l, c                                        ; $5880: $69
	adc  c                                           ; $5881: $89
	xor  d                                           ; $5882: $aa
	res  5, e                                        ; $5883: $cb $ab
	res  5, e                                        ; $5885: $cb $ab
	xor  d                                           ; $5887: $aa
	sbc  b                                           ; $5888: $98
	ld   [hl], a                                     ; $5889: $77
	ld   h, [hl]                                     ; $588a: $66
	ld   d, h                                        ; $588b: $54
	ld   [hl-], a                                    ; $588c: $32
	ld   de, $2411                                   ; $588d: $11 $11 $24
	dec  [hl]                                        ; $5890: $35
	adc  d                                           ; $5891: $8a
	xor  d                                           ; $5892: $aa
	rst  $28                                         ; $5893: $ef
	xor  $ef                                         ; $5894: $ee $ef
	db   $db                                         ; $5896: $db
	xor  c                                           ; $5897: $a9
	halt                                             ; $5898: $76
	ld   d, l                                        ; $5899: $55
	ld   b, e                                        ; $589a: $43
	ld   d, l                                        ; $589b: $55
	ld   d, a                                        ; $589c: $57
	ld   a, d                                        ; $589d: $7a
	sbc  d                                           ; $589e: $9a
	cp   e                                           ; $589f: $bb
	call z, $bacc                                    ; $58a0: $cc $cc $ba
	xor  c                                           ; $58a3: $a9
	xor  c                                           ; $58a4: $a9
	ld   [hl], a                                     ; $58a5: $77
	ld   [hl], a                                     ; $58a6: $77
	ld   h, [hl]                                     ; $58a7: $66
	ld   h, l                                        ; $58a8: $65
	ld   b, d                                        ; $58a9: $42
	ld   de, $3611                                   ; $58aa: $11 $11 $36
	inc  d                                           ; $58ad: $14
	sbc  e                                           ; $58ae: $9b
	ret                                              ; $58af: $c9


	rst  $28                                         ; $58b0: $ef
	rst  $38                                         ; $58b1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58b2: $cf
	reti                                             ; $58b3: $d9


	and  a                                           ; $58b4: $a7
	ld   b, h                                        ; $58b5: $44
	ld   d, h                                        ; $58b6: $54
	ld   [hl-], a                                    ; $58b7: $32
	ld   d, a                                        ; $58b8: $57
	ld   a, c                                        ; $58b9: $79
	sbc  h                                           ; $58ba: $9c
	db   $dd                                         ; $58bb: $dd
	call c, $bbdd                                    ; $58bc: $dc $dd $bb
	sbc  c                                           ; $58bf: $99
	sbc  b                                           ; $58c0: $98
	halt                                             ; $58c1: $76
	ld   h, a                                        ; $58c2: $67
	ld   [hl], a                                     ; $58c3: $77
	ld   h, [hl]                                     ; $58c4: $66
	ld   d, h                                        ; $58c5: $54
	ld   sp, $1411                                   ; $58c6: $31 $11 $14
	ld   d, c                                        ; $58c9: $51
	ld   c, b                                        ; $58ca: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58cb: $cf
	xor  a                                           ; $58cc: $af
	rst  $38                                         ; $58cd: $ff
	cp   $e9                                         ; $58ce: $fe $e9
	adc  d                                           ; $58d0: $8a
	ld   h, e                                        ; $58d1: $63
	ld   [de], a                                     ; $58d2: $12
	ld   b, l                                        ; $58d3: $45
	ld   b, a                                        ; $58d4: $47
	ld   a, d                                        ; $58d5: $7a
	db   $ed                                         ; $58d6: $ed
	db   $ec                                         ; $58d7: $ec
	rst  JumpTable                                         ; $58d8: $df
	db   $dd                                         ; $58d9: $dd
	xor  c                                           ; $58da: $a9
	sub  a                                           ; $58db: $97
	add  [hl]                                        ; $58dc: $86
	ld   b, [hl]                                     ; $58dd: $46
	ld   a, c                                        ; $58de: $79
	halt                                             ; $58df: $76
	ld   [hl], l                                     ; $58e0: $75
	ld   b, e                                        ; $58e1: $43
	ld   de, $6711                                   ; $58e2: $11 $11 $67
	inc  de                                          ; $58e5: $13
	ld   a, l                                        ; $58e6: $7d
	cp   $fe                                         ; $58e7: $fe $fe
	rst  $28                                         ; $58e9: $ef
	rst  $38                                         ; $58ea: $ff

jr_0fb_58eb:
	ld   h, h                                        ; $58eb: $64
	ld   b, e                                        ; $58ec: $43
	ld   b, d                                        ; $58ed: $42
	ld   hl, $cd26                                   ; $58ee: $21 $26 $cd
	call z, $ffdf                                    ; $58f1: $cc $df $ff
	ret                                              ; $58f4: $c9


	adc  c                                           ; $58f5: $89
	and  a                                           ; $58f6: $a7
	ld   b, h                                        ; $58f7: $44
	ld   b, [hl]                                     ; $58f8: $46
	sbc  c                                           ; $58f9: $99
	add  a                                           ; $58fa: $87
	ld   h, [hl]                                     ; $58fb: $66
	ld   d, e                                        ; $58fc: $53
	ld   de, $8511                                   ; $58fd: $11 $11 $85
	inc  [hl]                                        ; $5900: $34
	ld   l, a                                        ; $5901: $6f
	rst  $38                                         ; $5902: $ff
	db   $fc                                         ; $5903: $fc
	db   $dd                                         ; $5904: $dd
	cp   $63                                         ; $5905: $fe $63
	ld   de, $6414                                   ; $5907: $11 $14 $64
	jr   c, jr_0fb_58eb                              ; $590a: $38 $df

	rst  $38                                         ; $590c: $ff
	db   $fc                                         ; $590d: $fc
	rst  $28                                         ; $590e: $ef
	jp   c, Jump_0fb_5554                            ; $590f: $da $54 $55

	ld   [hl], a                                     ; $5912: $77
	ld   h, [hl]                                     ; $5913: $66
	ld   a, d                                        ; $5914: $7a
	sub  a                                           ; $5915: $97
	ld   d, d                                        ; $5916: $52
	ld   de, $9611                                   ; $5917: $11 $11 $96
	ld   b, l                                        ; $591a: $45
	ld   l, a                                        ; $591b: $6f
	rst  $38                                         ; $591c: $ff
	cp   $d9                                         ; $591d: $fe $d9
	call $1165                                       ; $591f: $cd $65 $11
	ld   [de], a                                     ; $5922: $12
	sbc  b                                           ; $5923: $98
	ld   a, c                                        ; $5924: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5925: $cf
	rst  $38                                         ; $5926: $ff
	rst  $38                                         ; $5927: $ff
	xor  d                                           ; $5928: $aa
	sbc  c                                           ; $5929: $99
	ld   [hl], l                                     ; $592a: $75
	ld   sp, $bc58                                   ; $592b: $31 $58 $bc
	sbc  b                                           ; $592e: $98
	ld   d, h                                        ; $592f: $54
	ld   b, c                                        ; $5930: $41
	ld   de, $8712                                   ; $5931: $11 $12 $87
	or   a                                           ; $5934: $b7
	cp   [hl]                                        ; $5935: $be
	rst  $38                                         ; $5936: $ff
	rst  $38                                         ; $5937: $ff
	and  l                                           ; $5938: $a5
	ld   [hl], e                                     ; $5939: $73
	ld   d, e                                        ; $593a: $53
	ld   de, $9d12                                   ; $593b: $11 $12 $9d
	rst  $38                                         ; $593e: $ff
	cp   $ff                                         ; $593f: $fe $ff
	rst  $38                                         ; $5941: $ff
	or   l                                           ; $5942: $b5
	ld   [hl+], a                                    ; $5943: $22
	scf                                              ; $5944: $37
	ld   a, b                                        ; $5945: $78
	ld   a, c                                        ; $5946: $79
	xor  h                                           ; $5947: $ac
	cp   c                                           ; $5948: $b9
	ld   d, c                                        ; $5949: $51
	ld   de, $5811                                   ; $594a: $11 $11 $58
	adc  e                                           ; $594d: $8b
	adc  [hl]                                        ; $594e: $8e
	rst  $38                                         ; $594f: $ff
	rst  $38                                         ; $5950: $ff
	rst  $30                                         ; $5951: $f7
	inc  [hl]                                        ; $5952: $34
	inc  de                                          ; $5953: $13
	ld   hl, $2911                                   ; $5954: $21 $11 $29
	rst  $38                                         ; $5957: $ff
	rst  $38                                         ; $5958: $ff
	db   $fd                                         ; $5959: $fd
	rst  $38                                         ; $595a: $ff
	call z, $1151                                    ; $595b: $cc $51 $11
	ld   l, c                                        ; $595e: $69
	rst  $28                                         ; $595f: $ef
	db   $db                                         ; $5960: $db
	halt                                             ; $5961: $76
	ld   d, e                                        ; $5962: $53
	ld   de, $1611                                   ; $5963: $11 $11 $16
	cp   a                                           ; $5966: $bf
	rst  JumpTable                                         ; $5967: $df
	rst  JumpTable                                         ; $5968: $df
	rst  $38                                         ; $5969: $ff
	ei                                               ; $596a: $fb
	ld   b, c                                        ; $596b: $41
	ld   de, $3113                                   ; $596c: $11 $13 $31
	ld   b, [hl]                                     ; $596f: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5970: $cf
	rst  $38                                         ; $5971: $ff
	cp   $b8                                         ; $5972: $fe $b8
	ld   a, b                                        ; $5974: $78
	ld   [hl], l                                     ; $5975: $75
	inc  hl                                          ; $5976: $23
	ld   l, d                                        ; $5977: $6a
	sbc  $c6                                         ; $5978: $de $c6
	ld   de, $1111                                   ; $597a: $11 $11 $11
	ld   a, b                                        ; $597d: $78
	xor  [hl]                                        ; $597e: $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $597f: $cf
	rst  JumpTable                                         ; $5980: $df
	rst  $38                                         ; $5981: $ff
	or   $31                                         ; $5982: $f6 $31
	ld   de, $4325                                   ; $5984: $11 $25 $43
	ld   a, c                                        ; $5987: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5988: $cf
	rst  $38                                         ; $5989: $ff
	db   $fd                                         ; $598a: $fd
	or   a                                           ; $598b: $b7
	ld   l, b                                        ; $598c: $68
	ld   [hl], a                                     ; $598d: $77
	ld   d, [hl]                                     ; $598e: $56
	sbc  c                                           ; $598f: $99
	jp   z, $1172                                    ; $5990: $ca $72 $11

	ld   de, $cf17                                   ; $5993: $11 $17 $cf
	cp   $fc                                         ; $5996: $fe $fc
	rst  $38                                         ; $5998: $ff
	rst  $38                                         ; $5999: $ff
	ld   h, c                                        ; $599a: $61
	ld   de, $7911                                   ; $599b: $11 $11 $79
	ld   a, e                                        ; $599e: $7b
	sbc  d                                           ; $599f: $9a
	rst  $38                                         ; $59a0: $ff
	rst  $38                                         ; $59a1: $ff
	db   $eb                                         ; $59a2: $eb
	ld   d, e                                        ; $59a3: $53
	ld   b, l                                        ; $59a4: $45
	adc  b                                           ; $59a5: $88
	adc  $ca                                         ; $59a6: $ce $ca
	ld   [hl], e                                     ; $59a8: $73
	ld   de, $1111                                   ; $59a9: $11 $11 $11
	ld   l, d                                        ; $59ac: $6a
	rst  $38                                         ; $59ad: $ff
	rst  $38                                         ; $59ae: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59af: $cf
	rst  $38                                         ; $59b0: $ff
	push af                                          ; $59b1: $f5
	ld   b, c                                        ; $59b2: $41
	ld   de, $ad16                                   ; $59b3: $11 $16 $ad
	db   $fd                                         ; $59b6: $fd
	rst  JumpTable                                         ; $59b7: $df
	rst  $38                                         ; $59b8: $ff
	rst  $38                                         ; $59b9: $ff
	push bc                                          ; $59ba: $c5
	ld   [hl-], a                                    ; $59bb: $32
	scf                                              ; $59bc: $37
	cp   a                                           ; $59bd: $bf
	db   $fd                                         ; $59be: $fd
	add  c                                           ; $59bf: $81
	ld   de, $1111                                   ; $59c0: $11 $11 $11
	ld   l, c                                        ; $59c3: $69
	rst  $38                                         ; $59c4: $ff
	rst  $38                                         ; $59c5: $ff
	rst  $38                                         ; $59c6: $ff
	rst  $38                                         ; $59c7: $ff
	db   $e3                                         ; $59c8: $e3
	ld   hl, $1611                                   ; $59c9: $21 $11 $16
	adc  l                                           ; $59cc: $8d
	db   $ed                                         ; $59cd: $ed
	rst  $38                                         ; $59ce: $ff
	rst  $38                                         ; $59cf: $ff
	cp   $a5                                         ; $59d0: $fe $a5
	ld   b, e                                        ; $59d2: $43
	ld   l, e                                        ; $59d3: $6b
	rst  JumpTable                                         ; $59d4: $df
	add  sp, $21                                     ; $59d5: $e8 $21
	ld   de, $1811                                   ; $59d7: $11 $11 $18
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59da: $cf
	rst  $38                                         ; $59db: $ff
	rst  $28                                         ; $59dc: $ef
	rst  $38                                         ; $59dd: $ff
	rst  $38                                         ; $59de: $ff
	ld   [hl], e                                     ; $59df: $73
	ld   de, $7a11                                   ; $59e0: $11 $11 $7a
	rst  $38                                         ; $59e3: $ff
	sbc  $ef                                         ; $59e4: $de $ef
	rst  $38                                         ; $59e6: $ff
	db   $fd                                         ; $59e7: $fd
	halt                                             ; $59e8: $76
	ld   b, [hl]                                     ; $59e9: $46
	xor  e                                           ; $59ea: $ab
	ret  c                                           ; $59eb: $d8

	ld   sp, $1111                                   ; $59ec: $31 $11 $11
	ld   c, c                                        ; $59ef: $49
	rst  $38                                         ; $59f0: $ff
	rst  $38                                         ; $59f1: $ff
	adc  h                                           ; $59f2: $8c
	rst  $38                                         ; $59f3: $ff
	rst  $38                                         ; $59f4: $ff
	add  $11                                         ; $59f5: $c6 $11
	ld   de, $ff5a                                   ; $59f7: $11 $5a $ff
	db   $ed                                         ; $59fa: $ed
	cp   e                                           ; $59fb: $bb
	rst  $28                                         ; $59fc: $ef
	rst  $38                                         ; $59fd: $ff
	db   $ed                                         ; $59fe: $ed
	ld   h, l                                        ; $59ff: $65
	inc  [hl]                                        ; $5a00: $34
	ld   h, e                                        ; $5a01: $63
	ld   de, $1111                                   ; $5a02: $11 $11 $11
	ld   l, a                                        ; $5a05: $6f
	rst  $38                                         ; $5a06: $ff
	db   $fd                                         ; $5a07: $fd
	sbc  a                                           ; $5a08: $9f
	xor  a                                           ; $5a09: $af
	rst  $38                                         ; $5a0a: $ff
	pop  af                                          ; $5a0b: $f1
	ld   de, $3f11                                   ; $5a0c: $11 $11 $3f
	rst  $38                                         ; $5a0f: $ff
	rst  $38                                         ; $5a10: $ff
	cp   b                                           ; $5a11: $b8
	xor  a                                           ; $5a12: $af
	rst  $38                                         ; $5a13: $ff
	rst  $38                                         ; $5a14: $ff
	sub  e                                           ; $5a15: $93
	ld   de, $1111                                   ; $5a16: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5a19: $11 $11 $ff
	rst  $38                                         ; $5a1c: $ff
	rst  $38                                         ; $5a1d: $ff
	db   $fc                                         ; $5a1e: $fc
	ld   hl, sp-$09                                  ; $5a1f: $f8 $f7
	ld   de, $1111                                   ; $5a21: $11 $11 $11
	sbc  h                                           ; $5a24: $9c
	rst  $38                                         ; $5a25: $ff
	rst  $38                                         ; $5a26: $ff
	sbc  $ff                                         ; $5a27: $de $ff
	rst  $38                                         ; $5a29: $ff
	ei                                               ; $5a2a: $fb
	ld   sp, $1111                                   ; $5a2b: $31 $11 $11
	ld   de, $af11                                   ; $5a2e: $11 $11 $af
	rst  $38                                         ; $5a31: $ff
	rst  $38                                         ; $5a32: $ff
	rst  $38                                         ; $5a33: $ff
	cp   $fa                                         ; $5a34: $fe $fa
	ld   de, $1111                                   ; $5a36: $11 $11 $11
	ld   d, a                                        ; $5a39: $57
	cp   [hl]                                        ; $5a3a: $be
	rst  $38                                         ; $5a3b: $ff
	rst  $38                                         ; $5a3c: $ff
	rst  $38                                         ; $5a3d: $ff
	rst  $38                                         ; $5a3e: $ff
	ei                                               ; $5a3f: $fb
	ld   sp, $1111                                   ; $5a40: $31 $11 $11
	ld   de, $1c11                                   ; $5a43: $11 $11 $1c
	rst  $38                                         ; $5a46: $ff
	rst  $38                                         ; $5a47: $ff
	rst  $38                                         ; $5a48: $ff
	rst  $38                                         ; $5a49: $ff
	rst  $38                                         ; $5a4a: $ff
	ld   h, l                                        ; $5a4b: $65
	ld   de, $1111                                   ; $5a4c: $11 $11 $11
	add  hl, sp                                      ; $5a4f: $39
	cp   a                                           ; $5a50: $bf
	rst  $38                                         ; $5a51: $ff
	rst  $38                                         ; $5a52: $ff
	rst  $38                                         ; $5a53: $ff
	db   $fd                                         ; $5a54: $fd
	ld   h, c                                        ; $5a55: $61
	ld   de, $1111                                   ; $5a56: $11 $11 $11
	ld   de, $cf19                                   ; $5a59: $11 $19 $cf
	rst  $38                                         ; $5a5c: $ff
	rst  $38                                         ; $5a5d: $ff
	rst  $38                                         ; $5a5e: $ff
	rst  $38                                         ; $5a5f: $ff
	cp   d                                           ; $5a60: $ba
	ld   b, c                                        ; $5a61: $41
	ld   de, $1511                                   ; $5a62: $11 $11 $15
	adc  a                                           ; $5a65: $8f
	rst  $38                                         ; $5a66: $ff
	rst  $38                                         ; $5a67: $ff
	rst  $38                                         ; $5a68: $ff
	db   $fc                                         ; $5a69: $fc
	add  h                                           ; $5a6a: $84
	ld   de, $1111                                   ; $5a6b: $11 $11 $11
	ld   de, $be26                                   ; $5a6e: $11 $26 $be
	rst  $28                                         ; $5a71: $ef
	rst  $38                                         ; $5a72: $ff
	rst  $38                                         ; $5a73: $ff
	rst  $38                                         ; $5a74: $ff
	db   $fd                                         ; $5a75: $fd
	add  [hl]                                        ; $5a76: $86
	ld   b, c                                        ; $5a77: $41
	ld   [hl-], a                                    ; $5a78: $32
	ld   b, l                                        ; $5a79: $45
	ld   l, c                                        ; $5a7a: $69
	xor  h                                           ; $5a7b: $ac
	xor  $ff                                         ; $5a7c: $ee $ff
	jp   c, $1152                                    ; $5a7e: $da $52 $11

	ld   de, $2211                                   ; $5a81: $11 $11 $22
	ld   b, [hl]                                     ; $5a84: $46
	ld   e, b                                        ; $5a85: $58
	cp   l                                           ; $5a86: $bd
	rst  $38                                         ; $5a87: $ff
	rst  $38                                         ; $5a88: $ff
	rst  $38                                         ; $5a89: $ff
	call c, $98a9                                    ; $5a8a: $dc $a9 $98
	sub  a                                           ; $5a8d: $97
	ld   h, [hl]                                     ; $5a8e: $66
	ld   l, b                                        ; $5a8f: $68
	xor  e                                           ; $5a90: $ab
	call z, Call_0fb_52b7                            ; $5a91: $cc $b7 $52
	ld   [hl+], a                                    ; $5a94: $22
	ld   [de], a                                     ; $5a95: $12
	ld   b, e                                        ; $5a96: $43
	ld   hl, $1311                                   ; $5a97: $21 $11 $13
	ld   l, d                                        ; $5a9a: $6a
	rst  JumpTable                                         ; $5a9b: $df
	rst  $38                                         ; $5a9c: $ff
	db   $ec                                         ; $5a9d: $ec
	res  7, h                                        ; $5a9e: $cb $bc
	call c, $87ba                                    ; $5aa0: $dc $ba $87
	adc  c                                           ; $5aa3: $89
	cp   h                                           ; $5aa4: $bc
	res  4, a                                        ; $5aa5: $cb $a7
	ld   h, l                                        ; $5aa7: $65
	ld   d, l                                        ; $5aa8: $55
	ld   d, l                                        ; $5aa9: $55
	ld   b, e                                        ; $5aaa: $43
	ld   de, $1111                                   ; $5aab: $11 $11 $11
	dec  [hl]                                        ; $5aae: $35
	adc  d                                           ; $5aaf: $8a
	xor  e                                           ; $5ab0: $ab
	call z, $decc                                    ; $5ab1: $cc $cc $de
	sbc  $db                                         ; $5ab4: $de $db
	jp   z, $cccc                                    ; $5ab6: $ca $cc $cc

	cp   h                                           ; $5ab9: $bc
	cp   d                                           ; $5aba: $ba
	sbc  b                                           ; $5abb: $98
	halt                                             ; $5abc: $76
	ld   h, l                                        ; $5abd: $65
	ld   b, e                                        ; $5abe: $43
	ld   hl, $1111                                   ; $5abf: $21 $11 $11
	ld   bc, $6834                                   ; $5ac2: $01 $34 $68
	sbc  c                                           ; $5ac5: $99
	xor  h                                           ; $5ac6: $ac
	cp   h                                           ; $5ac7: $bc
	call $eddd                                       ; $5ac8: $cd $dd $ed
	db   $ed                                         ; $5acb: $ed
	sbc  $dd                                         ; $5acc: $de $dd
	cp   e                                           ; $5ace: $bb
	xor  c                                           ; $5acf: $a9
	add  a                                           ; $5ad0: $87
	halt                                             ; $5ad1: $76
	ld   h, l                                        ; $5ad2: $65
	ld   d, h                                        ; $5ad3: $54
	ld   [hl-], a                                    ; $5ad4: $32
	ld   de, $1111                                   ; $5ad5: $11 $11 $11
	inc  hl                                          ; $5ad8: $23
	ld   b, [hl]                                     ; $5ad9: $46
	ld   a, c                                        ; $5ada: $79
	xor  e                                           ; $5adb: $ab
	cp   h                                           ; $5adc: $bc
	call c, $ddde                                    ; $5add: $dc $de $dd
	xor  $ed                                         ; $5ae0: $ee $ed
	db   $ed                                         ; $5ae2: $ed
	call z, $98a9                                    ; $5ae3: $cc $a9 $98
	halt                                             ; $5ae6: $76
	ld   h, l                                        ; $5ae7: $65
	ld   d, l                                        ; $5ae8: $55
	ld   b, h                                        ; $5ae9: $44
	ld   [hl-], a                                    ; $5aea: $32
	ld   hl, $1211                                   ; $5aeb: $21 $11 $12
	inc  hl                                          ; $5aee: $23
	ld   b, [hl]                                     ; $5aef: $46
	ld   a, c                                        ; $5af0: $79
	sbc  d                                           ; $5af1: $9a
	cp   h                                           ; $5af2: $bc
	call $eedd                                       ; $5af3: $cd $dd $ee
	xor  $de                                         ; $5af6: $ee $de
	call c, $aabb                                    ; $5af8: $dc $bb $aa
	adc  b                                           ; $5afb: $88
	ld   [hl], a                                     ; $5afc: $77
	ld   h, [hl]                                     ; $5afd: $66
	ld   d, l                                        ; $5afe: $55
	ld   d, h                                        ; $5aff: $54
	ld   b, h                                        ; $5b00: $44
	ld   [hl-], a                                    ; $5b01: $32
	ld   [hl+], a                                    ; $5b02: $22
	ld   [hl+], a                                    ; $5b03: $22
	inc  hl                                          ; $5b04: $23
	ld   b, l                                        ; $5b05: $45
	ld   h, a                                        ; $5b06: $67
	adc  c                                           ; $5b07: $89
	xor  e                                           ; $5b08: $ab
	set  1, l                                        ; $5b09: $cb $cd
	call $eddd                                       ; $5b0b: $cd $dd $ed
	db   $dd                                         ; $5b0e: $dd
	res  7, e                                        ; $5b0f: $cb $bb
	sbc  c                                           ; $5b11: $99
	add  a                                           ; $5b12: $87
	halt                                             ; $5b13: $76
	ld   h, [hl]                                     ; $5b14: $66
	ld   d, l                                        ; $5b15: $55
	ld   d, l                                        ; $5b16: $55
	ld   d, h                                        ; $5b17: $54
	ld   b, e                                        ; $5b18: $43
	inc  sp                                          ; $5b19: $33
	inc  sp                                          ; $5b1a: $33
	inc  [hl]                                        ; $5b1b: $34
	ld   b, l                                        ; $5b1c: $45
	ld   d, [hl]                                     ; $5b1d: $56
	ld   a, b                                        ; $5b1e: $78
	xor  d                                           ; $5b1f: $aa
	cp   h                                           ; $5b20: $bc
	cp   e                                           ; $5b21: $bb
	call z, $cccc                                    ; $5b22: $cc $cc $cc
	set  1, e                                        ; $5b25: $cb $cb
	cp   e                                           ; $5b27: $bb
	xor  d                                           ; $5b28: $aa
	sbc  b                                           ; $5b29: $98
	ld   [hl], a                                     ; $5b2a: $77
	halt                                             ; $5b2b: $76
	ld   h, [hl]                                     ; $5b2c: $66
	ld   h, [hl]                                     ; $5b2d: $66
	ld   h, [hl]                                     ; $5b2e: $66
	ld   d, l                                        ; $5b2f: $55
	ld   d, h                                        ; $5b30: $54
	ld   b, h                                        ; $5b31: $44
	ld   b, h                                        ; $5b32: $44
	ld   b, h                                        ; $5b33: $44
	ld   d, l                                        ; $5b34: $55
	ld   h, [hl]                                     ; $5b35: $66
	ld   a, c                                        ; $5b36: $79
	sbc  c                                           ; $5b37: $99
	xor  d                                           ; $5b38: $aa
	cp   e                                           ; $5b39: $bb
	cp   h                                           ; $5b3a: $bc
	call z, $bbbc                                    ; $5b3b: $cc $bc $bb
	xor  e                                           ; $5b3e: $ab
	xor  c                                           ; $5b3f: $a9
	xor  c                                           ; $5b40: $a9
	sbc  b                                           ; $5b41: $98
	sbc  b                                           ; $5b42: $98
	add  a                                           ; $5b43: $87
	ld   [hl], a                                     ; $5b44: $77
	ld   [hl], a                                     ; $5b45: $77
	ld   [hl], a                                     ; $5b46: $77
	ld   h, [hl]                                     ; $5b47: $66
	ld   h, l                                        ; $5b48: $65
	ld   d, l                                        ; $5b49: $55
	ld   d, h                                        ; $5b4a: $54
	ld   b, h                                        ; $5b4b: $44
	ld   b, h                                        ; $5b4c: $44
	ld   d, l                                        ; $5b4d: $55
	ld   h, a                                        ; $5b4e: $67
	adc  b                                           ; $5b4f: $88
	sbc  c                                           ; $5b50: $99
	xor  e                                           ; $5b51: $ab
	cp   e                                           ; $5b52: $bb
	cp   e                                           ; $5b53: $bb
	cp   d                                           ; $5b54: $ba
	cp   d                                           ; $5b55: $ba
	xor  d                                           ; $5b56: $aa
	xor  d                                           ; $5b57: $aa
	xor  d                                           ; $5b58: $aa
	xor  d                                           ; $5b59: $aa
	sbc  c                                           ; $5b5a: $99
	xor  c                                           ; $5b5b: $a9
	sbc  b                                           ; $5b5c: $98
	sbc  b                                           ; $5b5d: $98
	add  a                                           ; $5b5e: $87
	halt                                             ; $5b5f: $76
	ld   h, [hl]                                     ; $5b60: $66
	ld   h, l                                        ; $5b61: $65
	ld   d, l                                        ; $5b62: $55
	ld   d, h                                        ; $5b63: $54
	ld   b, h                                        ; $5b64: $44
	ld   b, l                                        ; $5b65: $45
	ld   d, l                                        ; $5b66: $55
	ld   h, [hl]                                     ; $5b67: $66
	ld   [hl], a                                     ; $5b68: $77
	adc  b                                           ; $5b69: $88
	sbc  c                                           ; $5b6a: $99
	xor  d                                           ; $5b6b: $aa
	cp   e                                           ; $5b6c: $bb
	cp   e                                           ; $5b6d: $bb
	cp   e                                           ; $5b6e: $bb
	cp   e                                           ; $5b6f: $bb
	xor  e                                           ; $5b70: $ab
	xor  d                                           ; $5b71: $aa
	xor  d                                           ; $5b72: $aa
	xor  d                                           ; $5b73: $aa
	sbc  d                                           ; $5b74: $9a
	sbc  b                                           ; $5b75: $98
	adc  b                                           ; $5b76: $88
	ld   [hl], a                                     ; $5b77: $77
	ld   [hl], a                                     ; $5b78: $77
	ld   h, [hl]                                     ; $5b79: $66
	ld   h, [hl]                                     ; $5b7a: $66
	ld   h, l                                        ; $5b7b: $65
	ld   d, l                                        ; $5b7c: $55
	ld   d, l                                        ; $5b7d: $55
	ld   b, h                                        ; $5b7e: $44
	ld   b, l                                        ; $5b7f: $45
	ld   d, l                                        ; $5b80: $55
	ld   h, a                                        ; $5b81: $67
	adc  c                                           ; $5b82: $89
	sbc  d                                           ; $5b83: $9a
	sbc  d                                           ; $5b84: $9a
	xor  e                                           ; $5b85: $ab
	cp   d                                           ; $5b86: $ba
	xor  e                                           ; $5b87: $ab
	cp   d                                           ; $5b88: $ba
	xor  d                                           ; $5b89: $aa
	xor  d                                           ; $5b8a: $aa
	xor  c                                           ; $5b8b: $a9
	xor  c                                           ; $5b8c: $a9
	sbc  c                                           ; $5b8d: $99
	sbc  b                                           ; $5b8e: $98
	adc  b                                           ; $5b8f: $88
	sbc  b                                           ; $5b90: $98
	add  a                                           ; $5b91: $87
	ld   [hl], a                                     ; $5b92: $77
	halt                                             ; $5b93: $76
	ld   h, [hl]                                     ; $5b94: $66
	ld   h, l                                        ; $5b95: $65
	ld   d, l                                        ; $5b96: $55
	ld   d, l                                        ; $5b97: $55
	ld   d, l                                        ; $5b98: $55
	ld   d, l                                        ; $5b99: $55
	ld   h, [hl]                                     ; $5b9a: $66
	ld   a, b                                        ; $5b9b: $78
	sbc  c                                           ; $5b9c: $99
	xor  c                                           ; $5b9d: $a9
	sbc  d                                           ; $5b9e: $9a
	sbc  d                                           ; $5b9f: $9a
	xor  d                                           ; $5ba0: $aa
	xor  d                                           ; $5ba1: $aa
	xor  d                                           ; $5ba2: $aa
	xor  d                                           ; $5ba3: $aa
	sbc  d                                           ; $5ba4: $9a
	xor  d                                           ; $5ba5: $aa
	xor  c                                           ; $5ba6: $a9
	xor  c                                           ; $5ba7: $a9
	sbc  b                                           ; $5ba8: $98
	adc  b                                           ; $5ba9: $88
	adc  b                                           ; $5baa: $88
	add  a                                           ; $5bab: $87
	ld   h, [hl]                                     ; $5bac: $66
	ld   h, [hl]                                     ; $5bad: $66
	ld   a, b                                        ; $5bae: $78
	halt                                             ; $5baf: $76
	ld   b, h                                        ; $5bb0: $44
	ld   b, h                                        ; $5bb1: $44
	ld   h, a                                        ; $5bb2: $67
	ld   h, [hl]                                     ; $5bb3: $66
	ld   d, [hl]                                     ; $5bb4: $56
	ld   a, b                                        ; $5bb5: $78
	xor  d                                           ; $5bb6: $aa
	xor  d                                           ; $5bb7: $aa
	xor  c                                           ; $5bb8: $a9
	adc  b                                           ; $5bb9: $88
	adc  c                                           ; $5bba: $89
	cp   e                                           ; $5bbb: $bb
	res  7, d                                        ; $5bbc: $cb $ba
	xor  c                                           ; $5bbe: $a9
	xor  d                                           ; $5bbf: $aa
	cp   e                                           ; $5bc0: $bb
	and  a                                           ; $5bc1: $a7
	ld   h, l                                        ; $5bc2: $65
	ld   d, a                                        ; $5bc3: $57
	sbc  c                                           ; $5bc4: $99
	sub  a                                           ; $5bc5: $97
	ld   h, h                                        ; $5bc6: $64
	ld   b, h                                        ; $5bc7: $44
	ld   d, a                                        ; $5bc8: $57
	ld   [hl], a                                     ; $5bc9: $77
	ld   d, h                                        ; $5bca: $54
	inc  [hl]                                        ; $5bcb: $34
	ld   d, [hl]                                     ; $5bcc: $56
	adc  c                                           ; $5bcd: $89
	adc  b                                           ; $5bce: $88
	adc  b                                           ; $5bcf: $88
	adc  d                                           ; $5bd0: $8a
	xor  e                                           ; $5bd1: $ab
	cp   d                                           ; $5bd2: $ba
	sbc  b                                           ; $5bd3: $98
	adc  b                                           ; $5bd4: $88
	sbc  h                                           ; $5bd5: $9c
	call c, $aba9                                    ; $5bd6: $dc $a9 $ab
	xor  d                                           ; $5bd9: $aa
	adc  d                                           ; $5bda: $8a
	rst  $28                                         ; $5bdb: $ef
	add  sp, $31                                     ; $5bdc: $e8 $31
	ld   de, $5523                                   ; $5bde: $11 $23 $55
	ld   [hl-], a                                    ; $5be1: $32
	ld   [de], a                                     ; $5be2: $12
	dec  [hl]                                        ; $5be3: $35
	adc  d                                           ; $5be4: $8a
	cp   d                                           ; $5be5: $ba
	sbc  b                                           ; $5be6: $98
	sbc  d                                           ; $5be7: $9a
	cp   l                                           ; $5be8: $bd
	rst  $28                                         ; $5be9: $ef
	cp   $ca                                         ; $5bea: $fe $ca
	sbc  c                                           ; $5bec: $99
	xor  d                                           ; $5bed: $aa
	xor  c                                           ; $5bee: $a9
	add  [hl]                                        ; $5bef: $86
	ld   h, [hl]                                     ; $5bf0: $66
	ld   [hl], a                                     ; $5bf1: $77
	adc  c                                           ; $5bf2: $89
	xor  d                                           ; $5bf3: $aa
	ld   [hl], h                                     ; $5bf4: $74
	ld   hl, $8636                                   ; $5bf5: $21 $36 $86
	ld   sp, $4711                                   ; $5bf8: $31 $11 $47
	xor  e                                           ; $5bfb: $ab
	sub  a                                           ; $5bfc: $97
	ld   a, b                                        ; $5bfd: $78
	sbc  h                                           ; $5bfe: $9c
	sbc  $cb                                         ; $5bff: $de $cb
	cp   e                                           ; $5c01: $bb
	xor  d                                           ; $5c02: $aa
	cp   e                                           ; $5c03: $bb
	cp   e                                           ; $5c04: $bb
	cp   e                                           ; $5c05: $bb
	call z, $98ba                                    ; $5c06: $cc $ba $98
	halt                                             ; $5c09: $76
	ld   b, d                                        ; $5c0a: $42
	ld   de, $2112                                   ; $5c0b: $11 $12 $21
	ld   de, $6913                                   ; $5c0e: $11 $13 $69
	xor  d                                           ; $5c11: $aa
	xor  d                                           ; $5c12: $aa
	xor  e                                           ; $5c13: $ab
	call $dcec                                       ; $5c14: $cd $ec $dc
	cp   h                                           ; $5c17: $bc
	call z, $bacb                                    ; $5c18: $cc $cb $ba
	cp   d                                           ; $5c1b: $ba
	sub  a                                           ; $5c1c: $97
	ld   h, [hl]                                     ; $5c1d: $66
	ld   h, a                                        ; $5c1e: $67
	ld   [hl], l                                     ; $5c1f: $75
	ld   hl, $2311                                   ; $5c20: $21 $11 $23
	inc  sp                                          ; $5c23: $33
	ld   [de], a                                     ; $5c24: $12
	ld   [hl], $9b                                   ; $5c25: $36 $9b
	call z, $bccb                                    ; $5c27: $cc $cb $bc
	sbc  $ed                                         ; $5c2a: $de $ed
	res  5, d                                        ; $5c2c: $cb $aa
	cp   h                                           ; $5c2e: $bc
	cp   e                                           ; $5c2f: $bb
	sub  a                                           ; $5c30: $97
	adc  e                                           ; $5c31: $8b
	call z, $1183                                    ; $5c32: $cc $83 $11
	inc  de                                          ; $5c35: $13
	ld   d, h                                        ; $5c36: $54
	ld   de, $2711                                   ; $5c37: $11 $11 $27
	cp   h                                           ; $5c3a: $bc
	res  5, e                                        ; $5c3b: $cb $ab
	rst  JumpTable                                         ; $5c3d: $df
	rst  $38                                         ; $5c3e: $ff
	ei                                               ; $5c3f: $fb
	sub  a                                           ; $5c40: $97
	adc  d                                           ; $5c41: $8a
	cp   e                                           ; $5c42: $bb
	sbc  b                                           ; $5c43: $98
	sbc  c                                           ; $5c44: $99
	cp   l                                           ; $5c45: $bd
	bit  4, h                                        ; $5c46: $cb $64
	ld   de, $3211                                   ; $5c48: $11 $11 $32
	ld   de, $1511                                   ; $5c4b: $11 $11 $15
	xor  h                                           ; $5c4e: $ac
	db   $ed                                         ; $5c4f: $ed
	adc  $ef                                         ; $5c50: $ce $ef
	rst  $38                                         ; $5c52: $ff
	db   $fc                                         ; $5c53: $fc
	xor  b                                           ; $5c54: $a8
	ld   a, b                                        ; $5c55: $78
	adc  c                                           ; $5c56: $89
	sbc  c                                           ; $5c57: $99
	xor  c                                           ; $5c58: $a9
	xor  d                                           ; $5c59: $aa
	sbc  c                                           ; $5c5a: $99
	ld   h, h                                        ; $5c5b: $64
	ld   hl, $2211                                   ; $5c5c: $21 $11 $22
	ld   de, $3711                                   ; $5c5f: $11 $11 $37
	adc  $ee                                         ; $5c62: $ce $ee
	cp   $df                                         ; $5c64: $fe $df
	rst  $38                                         ; $5c66: $ff
	ei                                               ; $5c67: $fb
	and  [hl]                                        ; $5c68: $a6
	ld   h, [hl]                                     ; $5c69: $66
	sbc  e                                           ; $5c6a: $9b
	cp   h                                           ; $5c6b: $bc
	cp   c                                           ; $5c6c: $b9
	xor  d                                           ; $5c6d: $aa
	and  a                                           ; $5c6e: $a7
	ld   d, d                                        ; $5c6f: $52
	ld   de, $1211                                   ; $5c70: $11 $11 $12
	inc  de                                          ; $5c73: $13
	ld   de, $ff6c                                   ; $5c74: $11 $6c $ff
	rst  $38                                         ; $5c77: $ff
	db   $fc                                         ; $5c78: $fc
	xor  $ff                                         ; $5c79: $ee $ff
	ret                                              ; $5c7b: $c9


	ld   b, e                                        ; $5c7c: $43
	ld   h, $ad                                      ; $5c7d: $26 $ad
	xor  $a9                                         ; $5c7f: $ee $a9
	adc  c                                           ; $5c81: $89
	add  l                                           ; $5c82: $85
	ld   hl, $1111                                   ; $5c83: $21 $11 $11
	inc  de                                          ; $5c86: $13
	ld   sp, $ef49                                   ; $5c87: $31 $49 $ef
	rst  $38                                         ; $5c8a: $ff
	cp   $ef                                         ; $5c8b: $fe $ef
	rst  $38                                         ; $5c8d: $ff
	bit  2, c                                        ; $5c8e: $cb $51
	ld   [de], a                                     ; $5c90: $12
	ld   a, e                                        ; $5c91: $7b
	rst  $28                                         ; $5c92: $ef
	db   $eb                                         ; $5c93: $eb
	xor  b                                           ; $5c94: $a8
	add  l                                           ; $5c95: $85
	ld   b, c                                        ; $5c96: $41
	ld   de, $1111                                   ; $5c97: $11 $11 $11
	ld   hl, $ef38                                   ; $5c9a: $21 $38 $ef
	rst  $38                                         ; $5c9d: $ff
	rst  $38                                         ; $5c9e: $ff
	rst  $38                                         ; $5c9f: $ff
	rst  $38                                         ; $5ca0: $ff
	jp   z, $1241                                    ; $5ca1: $ca $41 $12

	ld   a, e                                        ; $5ca4: $7b
	rst  $28                                         ; $5ca5: $ef
	call c, $96a8                                    ; $5ca6: $dc $a8 $96
	ld   sp, $1111                                   ; $5ca9: $31 $11 $11
	ld   de, $4b11                                   ; $5cac: $11 $11 $4b
	rst  $28                                         ; $5caf: $ef
	rst  $38                                         ; $5cb0: $ff
	cp   $ff                                         ; $5cb1: $fe $ff
	rst  $38                                         ; $5cb3: $ff
	xor  c                                           ; $5cb4: $a9
	ld   hl, $9c11                                   ; $5cb5: $21 $11 $9c
	rst  $38                                         ; $5cb8: $ff
	call c, $95a8                                    ; $5cb9: $dc $a8 $95
	ld   sp, $1111                                   ; $5cbc: $31 $11 $11
	ld   de, $4c11                                   ; $5cbf: $11 $11 $4c
	rst  $38                                         ; $5cc2: $ff
	rst  $38                                         ; $5cc3: $ff
	cp   $ff                                         ; $5cc4: $fe $ff
	rst  $38                                         ; $5cc6: $ff
	xor  b                                           ; $5cc7: $a8
	ld   de, $9b13                                   ; $5cc8: $11 $13 $9b
	rst  $28                                         ; $5ccb: $ef
	set  1, e                                        ; $5ccc: $cb $cb
	or   a                                           ; $5cce: $b7
	ld   d, c                                        ; $5ccf: $51
	ld   de, $1111                                   ; $5cd0: $11 $11 $11
	ld   de, $ff19                                   ; $5cd3: $11 $19 $ff
	rst  $38                                         ; $5cd6: $ff
	rst  $38                                         ; $5cd7: $ff
	rst  $28                                         ; $5cd8: $ef
	rst  $28                                         ; $5cd9: $ef
	jp   z, $1151                                    ; $5cda: $ca $51 $11

	ld   l, c                                        ; $5cdd: $69
	adc  $da                                         ; $5cde: $ce $da
	xor  e                                           ; $5ce0: $ab
	cp   e                                           ; $5ce1: $bb
	add  e                                           ; $5ce2: $83
	ld   de, $1411                                   ; $5ce3: $11 $11 $14
	ld   b, e                                        ; $5ce6: $43
	ld   de, $ff8d                                   ; $5ce7: $11 $8d $ff
	rst  $38                                         ; $5cea: $ff
	db   $db                                         ; $5ceb: $db
	sbc  $fd                                         ; $5cec: $de $fd
	or   l                                           ; $5cee: $b5
	ld   de, $ae16                                   ; $5cef: $11 $16 $ae
	db   $fc                                         ; $5cf2: $fc
	cp   e                                           ; $5cf3: $bb
	cp   e                                           ; $5cf4: $bb
	sbc  b                                           ; $5cf5: $98
	ld   hl, $1211                                   ; $5cf6: $21 $11 $12
	ld   b, d                                        ; $5cf9: $42
	ld   de, $ef19                                   ; $5cfa: $11 $19 $ef
	rst  $38                                         ; $5cfd: $ff
	db   $fc                                         ; $5cfe: $fc
	cp   a                                           ; $5cff: $bf
	rst  $38                                         ; $5d00: $ff
	ld   [$1251], a                                  ; $5d01: $ea $51 $12
	ld   a, e                                        ; $5d04: $7b
	xor  $ba                                         ; $5d05: $ee $ba
	xor  e                                           ; $5d07: $ab
	cp   h                                           ; $5d08: $bc
	and  l                                           ; $5d09: $a5
	ld   de, $1511                                   ; $5d0a: $11 $11 $15
	ld   b, c                                        ; $5d0d: $41
	ld   de, $ff3a                                   ; $5d0e: $11 $3a $ff
	rst  $38                                         ; $5d11: $ff
	ret  c                                           ; $5d12: $d8

	adc  $ff                                         ; $5d13: $ce $ff
	ld   [$2521], a                                  ; $5d15: $ea $21 $25
	xor  h                                           ; $5d18: $ac
	db   $ec                                         ; $5d19: $ec
	adc  d                                           ; $5d1a: $8a
	xor  h                                           ; $5d1b: $ac
	call c, $1192                                    ; $5d1c: $dc $92 $11
	inc  de                                          ; $5d1f: $13
	ld   b, l                                        ; $5d20: $45
	ld   hl, $4c11                                   ; $5d21: $21 $11 $4c
	rst  $38                                         ; $5d24: $ff
	db   $fd                                         ; $5d25: $fd
	xor  c                                           ; $5d26: $a9
	rst  $28                                         ; $5d27: $ef
	rst  $38                                         ; $5d28: $ff
	ret                                              ; $5d29: $c9


	inc  sp                                          ; $5d2a: $33
	ld   d, a                                        ; $5d2b: $57
	xor  e                                           ; $5d2c: $ab
	cp   d                                           ; $5d2d: $ba
	sbc  d                                           ; $5d2e: $9a
	cp   l                                           ; $5d2f: $bd
	call c, $1183                                    ; $5d30: $dc $83 $11
	inc  de                                          ; $5d33: $13
	ld   d, h                                        ; $5d34: $54
	ld   de, $1811                                   ; $5d35: $11 $11 $18
	sbc  $da                                         ; $5d38: $de $da
	sbc  e                                           ; $5d3a: $9b
	rst  $28                                         ; $5d3b: $ef
	rst  $38                                         ; $5d3c: $ff
	reti                                             ; $5d3d: $d9


	add  [hl]                                        ; $5d3e: $86
	adc  d                                           ; $5d3f: $8a
	xor  c                                           ; $5d40: $a9
	ld   a, b                                        ; $5d41: $78
	adc  d                                           ; $5d42: $8a
	call $97db                                       ; $5d43: $cd $db $97
	ld   b, h                                        ; $5d46: $44
	ld   b, e                                        ; $5d47: $43
	ld   [hl+], a                                    ; $5d48: $22
	ld   hl, $1211                                   ; $5d49: $21 $11 $12
	ld   b, a                                        ; $5d4c: $47
	sbc  d                                           ; $5d4d: $9a
	xor  d                                           ; $5d4e: $aa
	call $efef                                       ; $5d4f: $cd $ef $ef
	call z, $97b9                                    ; $5d52: $cc $b9 $97
	ld   [hl], a                                     ; $5d55: $77
	sbc  d                                           ; $5d56: $9a
	cp   e                                           ; $5d57: $bb
	xor  d                                           ; $5d58: $aa
	xor  b                                           ; $5d59: $a8
	xor  c                                           ; $5d5a: $a9
	halt                                             ; $5d5b: $76
	ld   b, h                                        ; $5d5c: $44
	inc  h                                           ; $5d5d: $24
	ld   sp, $1111                                   ; $5d5e: $31 $11 $11
	ld   h, $88                                      ; $5d61: $26 $88
	sbc  c                                           ; $5d63: $99
	set  5, a                                        ; $5d64: $cb $ef
	rst  $38                                         ; $5d66: $ff
	call z, $a8ba                                    ; $5d67: $cc $ba $a8
	adc  b                                           ; $5d6a: $88
	adc  d                                           ; $5d6b: $8a
	xor  e                                           ; $5d6c: $ab
	cp   c                                           ; $5d6d: $b9
	sbc  c                                           ; $5d6e: $99
	sbc  b                                           ; $5d6f: $98
	sbc  b                                           ; $5d70: $98
	ld   h, l                                        ; $5d71: $65
	ld   hl, $2143                                   ; $5d72: $21 $43 $21
	ld   de, $6813                                   ; $5d75: $11 $13 $68
	sbc  c                                           ; $5d78: $99
	xor  e                                           ; $5d79: $ab
	cp   [hl]                                        ; $5d7a: $be
	rst  $38                                         ; $5d7b: $ff
	db   $ed                                         ; $5d7c: $ed
	jp   z, $998a                                    ; $5d7d: $ca $8a $99

	xor  d                                           ; $5d80: $aa
	xor  c                                           ; $5d81: $a9
	xor  d                                           ; $5d82: $aa
	xor  c                                           ; $5d83: $a9
	xor  d                                           ; $5d84: $aa
	sbc  b                                           ; $5d85: $98
	halt                                             ; $5d86: $76
	ld   d, d                                        ; $5d87: $52
	inc  h                                           ; $5d88: $24
	ld   [hl-], a                                    ; $5d89: $32
	ld   de, $3611                                   ; $5d8a: $11 $11 $36
	adc  c                                           ; $5d8d: $89
	adc  c                                           ; $5d8e: $89
	xor  h                                           ; $5d8f: $ac
	rst  $28                                         ; $5d90: $ef
	xor  $cb                                         ; $5d91: $ee $cb
	sbc  b                                           ; $5d93: $98
	xor  d                                           ; $5d94: $aa
	cp   e                                           ; $5d95: $bb
	cp   d                                           ; $5d96: $ba
	sbc  c                                           ; $5d97: $99
	xor  d                                           ; $5d98: $aa
	xor  d                                           ; $5d99: $aa
	xor  c                                           ; $5d9a: $a9
	ld   [hl], a                                     ; $5d9b: $77
	halt                                             ; $5d9c: $76
	ld   b, d                                        ; $5d9d: $42
	inc  hl                                          ; $5d9e: $23
	ld   [hl+], a                                    ; $5d9f: $22
	ld   de, $4611                                   ; $5da0: $11 $11 $46
	ld   a, b                                        ; $5da3: $78
	xor  d                                           ; $5da4: $aa
	call z, $dcdd                                    ; $5da5: $cc $dd $dc
	xor  d                                           ; $5da8: $aa
	adc  c                                           ; $5da9: $89
	cp   e                                           ; $5daa: $bb
	cp   e                                           ; $5dab: $bb
	cp   d                                           ; $5dac: $ba
	adc  d                                           ; $5dad: $8a
	xor  d                                           ; $5dae: $aa
	cp   d                                           ; $5daf: $ba
	sub  a                                           ; $5db0: $97
	ld   a, b                                        ; $5db1: $78
	halt                                             ; $5db2: $76
	ld   b, e                                        ; $5db3: $43
	inc  h                                           ; $5db4: $24
	ld   [hl-], a                                    ; $5db5: $32
	ld   de, $4611                                   ; $5db6: $11 $11 $46
	ld   a, b                                        ; $5db9: $78
	adc  d                                           ; $5dba: $8a
	call z, $dbed                                    ; $5dbb: $cc $ed $db
	xor  e                                           ; $5dbe: $ab
	sbc  e                                           ; $5dbf: $9b
	call z, $a9ca                                    ; $5dc0: $cc $ca $a9
	sbc  d                                           ; $5dc3: $9a
	xor  d                                           ; $5dc4: $aa
	xor  b                                           ; $5dc5: $a8
	adc  b                                           ; $5dc6: $88
	sbc  c                                           ; $5dc7: $99
	ld   [hl], a                                     ; $5dc8: $77
	ld   d, h                                        ; $5dc9: $54
	inc  [hl]                                        ; $5dca: $34
	ld   d, d                                        ; $5dcb: $52
	ld   hl, $2611                                   ; $5dcc: $21 $11 $26
	ld   h, a                                        ; $5dcf: $67
	adc  b                                           ; $5dd0: $88
	cp   h                                           ; $5dd1: $bc
	sbc  $cc                                         ; $5dd2: $de $cc
	xor  e                                           ; $5dd4: $ab
	cp   e                                           ; $5dd5: $bb
	res  5, d                                        ; $5dd6: $cb $aa
	sbc  d                                           ; $5dd8: $9a
	sbc  e                                           ; $5dd9: $9b
	cp   e                                           ; $5dda: $bb
	xor  c                                           ; $5ddb: $a9
	adc  c                                           ; $5ddc: $89
	adc  c                                           ; $5ddd: $89
	add  a                                           ; $5dde: $87
	ld   d, h                                        ; $5ddf: $54
	ld   b, e                                        ; $5de0: $43
	ld   b, [hl]                                     ; $5de1: $46
	ld   sp, $2311                                   ; $5de2: $31 $11 $23
	ld   a, b                                        ; $5de5: $78
	ld   [hl], a                                     ; $5de6: $77
	adc  e                                           ; $5de7: $8b
	call $aaeb                                       ; $5de8: $cd $eb $aa
	sbc  h                                           ; $5deb: $9c
	cp   e                                           ; $5dec: $bb
	xor  c                                           ; $5ded: $a9
	sbc  c                                           ; $5dee: $99
	xor  d                                           ; $5def: $aa
	xor  e                                           ; $5df0: $ab
	sbc  d                                           ; $5df1: $9a
	adc  b                                           ; $5df2: $88
	xor  b                                           ; $5df3: $a8
	adc  b                                           ; $5df4: $88
	ld   [hl], a                                     ; $5df5: $77
	ld   h, l                                        ; $5df6: $65
	ld   [hl-], a                                    ; $5df7: $32
	ld   d, l                                        ; $5df8: $55
	ld   [hl-], a                                    ; $5df9: $32
	ld   [bc], a                                     ; $5dfa: $02
	inc  [hl]                                        ; $5dfb: $34
	adc  c                                           ; $5dfc: $89
	adc  c                                           ; $5dfd: $89
	adc  h                                           ; $5dfe: $8c
	call z, $a8db                                    ; $5dff: $cc $db $a8
	xor  h                                           ; $5e02: $ac
	xor  d                                           ; $5e03: $aa
	sbc  c                                           ; $5e04: $99
	xor  c                                           ; $5e05: $a9
	cp   d                                           ; $5e06: $ba
	xor  e                                           ; $5e07: $ab
	xor  d                                           ; $5e08: $aa
	adc  c                                           ; $5e09: $89
	cp   b                                           ; $5e0a: $b8
	add  a                                           ; $5e0b: $87
	ld   h, [hl]                                     ; $5e0c: $66
	ld   d, l                                        ; $5e0d: $55
	ld   b, d                                        ; $5e0e: $42
	ld   b, l                                        ; $5e0f: $45
	ld   [hl-], a                                    ; $5e10: $32
	inc  de                                          ; $5e11: $13
	ld   b, l                                        ; $5e12: $45
	adc  d                                           ; $5e13: $8a
	sbc  c                                           ; $5e14: $99
	sbc  l                                           ; $5e15: $9d
	call c, $a9cb                                    ; $5e16: $dc $cb $a9
	sbc  e                                           ; $5e19: $9b
	sbc  b                                           ; $5e1a: $98
	adc  b                                           ; $5e1b: $88
	sbc  b                                           ; $5e1c: $98
	xor  d                                           ; $5e1d: $aa
	sbc  d                                           ; $5e1e: $9a
	sbc  e                                           ; $5e1f: $9b
	xor  d                                           ; $5e20: $aa
	cp   c                                           ; $5e21: $b9
	sbc  b                                           ; $5e22: $98
	sbc  b                                           ; $5e23: $98
	ld   h, l                                        ; $5e24: $65
	ld   sp, $5327                                   ; $5e25: $31 $27 $53
	ld   bc, $8b44                                   ; $5e28: $01 $44 $8b
	sbc  c                                           ; $5e2b: $99
	sbc  h                                           ; $5e2c: $9c
	db   $ed                                         ; $5e2d: $ed
	db   $db                                         ; $5e2e: $db
	sub  a                                           ; $5e2f: $97
	ld   a, e                                        ; $5e30: $7b
	and  a                                           ; $5e31: $a7
	add  a                                           ; $5e32: $87
	adc  b                                           ; $5e33: $88
	sbc  e                                           ; $5e34: $9b
	sbc  c                                           ; $5e35: $99
	xor  d                                           ; $5e36: $aa
	cp   e                                           ; $5e37: $bb
	db   $eb                                         ; $5e38: $eb
	xor  c                                           ; $5e39: $a9
	ld   [hl], a                                     ; $5e3a: $77
	ld   d, h                                        ; $5e3b: $54
	ld   hl, $5213                                   ; $5e3c: $21 $13 $52
	ld   de, $9f45                                   ; $5e3f: $11 $45 $9f
	db   $fd                                         ; $5e42: $fd
	call $ddfe                                       ; $5e43: $cd $fe $dd
	ld   [hl], l                                     ; $5e46: $75
	scf                                              ; $5e47: $37
	ld   [hl], h                                     ; $5e48: $74
	ld   h, l                                        ; $5e49: $65
	ld   d, [hl]                                     ; $5e4a: $56
	sbc  l                                           ; $5e4b: $9d
	call z, $fdce                                    ; $5e4c: $cc $ce $fd
	ei                                               ; $5e4f: $fb
	ld   [hl], l                                     ; $5e50: $75
	ld   b, [hl]                                     ; $5e51: $46
	ld   sp, $1511                                   ; $5e52: $31 $11 $15
	scf                                              ; $5e55: $37
	inc  [hl]                                        ; $5e56: $34
	ld   [hl], a                                     ; $5e57: $77
	rst  $38                                         ; $5e58: $ff
	rst  $38                                         ; $5e59: $ff
	xor  [hl]                                        ; $5e5a: $ae
	jp   z, $21e5                                    ; $5e5b: $ca $e5 $21

	ld   d, $37                                      ; $5e5e: $16 $37
	ld   h, l                                        ; $5e60: $65
	adc  c                                           ; $5e61: $89
	rst  $38                                         ; $5e62: $ff
	rst  $38                                         ; $5e63: $ff
	rst  $38                                         ; $5e64: $ff
	xor  $b3                                         ; $5e65: $ee $b3
	ld   de, $1111                                   ; $5e67: $11 $11 $11
	ld   de, $e776                                   ; $5e6a: $11 $76 $e7
	call z, $ffff                                    ; $5e6d: $cc $ff $ff
	add  $a3                                         ; $5e70: $c6 $a3
	sub  [hl]                                        ; $5e72: $96
	ld   de, $7714                                   ; $5e73: $11 $14 $77
	jp   c, $ffdc                                    ; $5e76: $da $dc $ff

	rst  $38                                         ; $5e79: $ff
	cp   $b4                                         ; $5e7a: $fe $b4
	sub  c                                           ; $5e7c: $91
	ld   de, $1111                                   ; $5e7d: $11 $11 $11
	cpl                                              ; $5e80: $2f
	res  3, a                                        ; $5e81: $cb $9f
	rst  $38                                         ; $5e83: $ff
	rst  $38                                         ; $5e84: $ff
	pop  de                                          ; $5e85: $d1
	ld   d, $11                                      ; $5e86: $16 $11
	ld   de, $9f11                                   ; $5e88: $11 $11 $9f
	rst  $38                                         ; $5e8b: $ff
	rst  $38                                         ; $5e8c: $ff
	rst  $38                                         ; $5e8d: $ff
	rst  $38                                         ; $5e8e: $ff
	push bc                                          ; $5e8f: $c5
	inc  hl                                          ; $5e90: $23
	inc  de                                          ; $5e91: $13
	ld   de, $1111                                   ; $5e92: $11 $11 $11
	rst  $38                                         ; $5e95: $ff
	rst  $38                                         ; $5e96: $ff
	xor  a                                           ; $5e97: $af
	rst  $38                                         ; $5e98: $ff
	db   $fd                                         ; $5e99: $fd
	ld   hl, $1712                                   ; $5e9a: $21 $12 $17
	ld   hl, $ff16                                   ; $5e9d: $21 $16 $ff
	rst  $38                                         ; $5ea0: $ff
	sbc  h                                           ; $5ea1: $9c
	ld   a, a                                        ; $5ea2: $7f
	ei                                               ; $5ea3: $fb
	add  c                                           ; $5ea4: $81
	ld   [hl-], a                                    ; $5ea5: $32
	jr   c, @+$13                                    ; $5ea6: $38 $11

	ld   de, $fe11                                   ; $5ea8: $11 $11 $fe
	db   $fc                                         ; $5eab: $fc
	cp   a                                           ; $5eac: $bf
	rst  JumpTable                                         ; $5ead: $df
	ld   sp, hl                                      ; $5eae: $f9
	ld   hl, $3a21                                   ; $5eaf: $21 $21 $3a
	ld   e, b                                        ; $5eb2: $58
	ld   l, h                                        ; $5eb3: $6c
	rst  $38                                         ; $5eb4: $ff
	db   $fc                                         ; $5eb5: $fc
	adc  b                                           ; $5eb6: $88
	ccf                                              ; $5eb7: $3f
	adc  $b5                                         ; $5eb8: $ce $b5
	sub  c                                           ; $5eba: $91
	ld   d, d                                        ; $5ebb: $52
	ld   de, $1111                                   ; $5ebc: $11 $11 $11
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	rst  $38                                         ; $5ec1: $ff
	cp   a                                           ; $5ec2: $bf
	db   $fc                                         ; $5ec3: $fc
	ld   de, $3c11                                   ; $5ec4: $11 $11 $3c
	rst  $28                                         ; $5ec7: $ef
	rst  JumpTable                                         ; $5ec8: $df
	rst  $38                                         ; $5ec9: $ff
	db   $fc                                         ; $5eca: $fc
	or   e                                           ; $5ecb: $b3
	add  hl, bc                                      ; $5ecc: $09
	ld   l, a                                        ; $5ecd: $6f
	sbc  $b1                                         ; $5ece: $de $b1
	ld   hl, $1123                                   ; $5ed0: $21 $23 $11
	jr   @+$01                                       ; $5ed3: $18 $ff

	rst  $38                                         ; $5ed5: $ff
	pop  af                                          ; $5ed6: $f1
	adc  a                                           ; $5ed7: $8f
	cp   [hl]                                        ; $5ed8: $be
	ld   de, $bf11                                   ; $5ed9: $11 $11 $bf
	rst  $38                                         ; $5edc: $ff
	rst  $38                                         ; $5edd: $ff
	xor  c                                           ; $5ede: $a9
	ld   a, [$1591]                                  ; $5edf: $fa $91 $15
	ld   e, a                                        ; $5ee2: $5f
	rst  $38                                         ; $5ee3: $ff
	and  c                                           ; $5ee4: $a1
	ld   de, $1121                                   ; $5ee5: $11 $21 $11
	ld   a, [de]                                     ; $5ee8: $1a
	rst  JumpTable                                         ; $5ee9: $df
	rst  $38                                         ; $5eea: $ff
	pop  af                                          ; $5eeb: $f1
	add  $b6                                         ; $5eec: $c6 $b6
	ld   de, $af11                                   ; $5eee: $11 $11 $af
	rst  $38                                         ; $5ef1: $ff
	rst  $38                                         ; $5ef2: $ff
	ld   d, h                                        ; $5ef3: $54
	sub  [hl]                                        ; $5ef4: $96
	ld   h, c                                        ; $5ef5: $61
	inc  [hl]                                        ; $5ef6: $34
	adc  a                                           ; $5ef7: $8f
	rst  $38                                         ; $5ef8: $ff
	ld   h, c                                        ; $5ef9: $61
	ld   de, $1111                                   ; $5efa: $11 $11 $11
	dec  de                                          ; $5efd: $1b
	rst  $38                                         ; $5efe: $ff
	rst  $38                                         ; $5eff: $ff
	ld   hl, $a1b1                                   ; $5f00: $21 $b1 $a1
	ld   de, $ff15                                   ; $5f03: $11 $15 $ff
	rst  $38                                         ; $5f06: $ff
	ld   a, [$2313]                                  ; $5f07: $fa $13 $23
	ld   d, c                                        ; $5f0a: $51
	or   h                                           ; $5f0b: $b4
	rst  $38                                         ; $5f0c: $ff
	rst  $38                                         ; $5f0d: $ff
	ld   de, $1111                                   ; $5f0e: $11 $11 $11
	ld   de, $ffff                                   ; $5f11: $11 $ff $ff
	db   $fc                                         ; $5f14: $fc
	ld   e, $17                                      ; $5f15: $1e $17
	ld   de, $3f11                                   ; $5f17: $11 $11 $3f
	rst  $38                                         ; $5f1a: $ff
	rst  $38                                         ; $5f1b: $ff
	pop  de                                          ; $5f1c: $d1
	inc  de                                          ; $5f1d: $13
	inc  d                                           ; $5f1e: $14
	add  hl, de                                      ; $5f1f: $19
	adc  [hl]                                        ; $5f20: $8e
	rst  $38                                         ; $5f21: $ff
	ldh  a, [c]                                      ; $5f22: $f2
	ld   de, $1111                                   ; $5f23: $11 $11 $11
	dec  de                                          ; $5f26: $1b
	rst  $38                                         ; $5f27: $ff
	rst  $38                                         ; $5f28: $ff
	pop  af                                          ; $5f29: $f1
	pop  bc                                          ; $5f2a: $c1
	ld   hl, $1112                                   ; $5f2b: $21 $12 $11
	cp   a                                           ; $5f2e: $bf
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	ld   sp, $5511                                   ; $5f31: $31 $11 $55
	xor  h                                           ; $5f34: $ac
	xor  a                                           ; $5f35: $af
	rst  $38                                         ; $5f36: $ff
	add  c                                           ; $5f37: $81
	ld   de, $1311                                   ; $5f38: $11 $11 $13
	sbc  a                                           ; $5f3b: $9f
	rst  $38                                         ; $5f3c: $ff
	ld   a, [$1639]                                  ; $5f3d: $fa $39 $16
	ld   de, $7f11                                   ; $5f40: $11 $11 $7f
	rst  $38                                         ; $5f43: $ff
	rst  $38                                         ; $5f44: $ff
	pop  bc                                          ; $5f45: $c1
	ld   hl, $7f1b                                   ; $5f46: $21 $1b $7f
	rst  $38                                         ; $5f49: $ff
	ld   sp, hl                                      ; $5f4a: $f9
	add  c                                           ; $5f4b: $81
	ld   de, $1111                                   ; $5f4c: $11 $11 $11
	xor  a                                           ; $5f4f: $af
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	ld   de, $a411                                   ; $5f52: $11 $11 $a4
	add  d                                           ; $5f55: $82
	dec  de                                          ; $5f56: $1b
	rst  $28                                         ; $5f57: $ef
	rst  $38                                         ; $5f58: $ff
	push af                                          ; $5f59: $f5
	ld   de, $fe11                                   ; $5f5a: $11 $11 $fe
	rst  $38                                         ; $5f5d: $ff
	rst  $38                                         ; $5f5e: $ff
	ld   a, c                                        ; $5f5f: $79
	ld   de, $1111                                   ; $5f60: $11 $11 $11
	ld   e, $ff                                      ; $5f63: $1e $ff
	rst  $38                                         ; $5f65: $ff
	pop  af                                          ; $5f66: $f1
	ld   de, $3818                                   ; $5f67: $11 $18 $38
	ld   de, $ffcf                                   ; $5f6a: $11 $cf $ff
	rst  $38                                         ; $5f6d: $ff
	ld   [hl], c                                     ; $5f6e: $71
	ld   de, $ef1f                                   ; $5f6f: $11 $1f $ef
	rst  $38                                         ; $5f72: $ff
	rst  $30                                         ; $5f73: $f7
	sub  c                                           ; $5f74: $91
	ld   de, $1111                                   ; $5f75: $11 $11 $11
	rst  $38                                         ; $5f78: $ff
	rst  $38                                         ; $5f79: $ff
	ei                                               ; $5f7a: $fb
	inc  de                                          ; $5f7b: $13
	ld   de, $51f7                                   ; $5f7c: $11 $f7 $51
	ld   a, [de]                                     ; $5f7f: $1a
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	sub  d                                           ; $5f82: $92
	ld   de, $ff1b                                   ; $5f83: $11 $1b $ff
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	ld   a, h                                        ; $5f88: $7c
	ld   de, $1111                                   ; $5f89: $11 $11 $11
	ld   e, a                                        ; $5f8c: $5f
	rst  $38                                         ; $5f8d: $ff
	rst  $38                                         ; $5f8e: $ff
	ld   h, c                                        ; $5f8f: $61
	and  c                                           ; $5f90: $a1
	ld   [hl], a                                     ; $5f91: $77
	ld   de, $df15                                   ; $5f92: $11 $15 $df
	rst  $38                                         ; $5f95: $ff
	ld   a, [$1141]                                  ; $5f96: $fa $41 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f99: $cf
	rst  JumpTable                                         ; $5f9a: $df
	rst  $38                                         ; $5f9b: $ff
	sub  $81                                         ; $5f9c: $d6 $81
	ld   de, $1c11                                   ; $5f9e: $11 $11 $1c
	rst  JumpTable                                         ; $5fa1: $df
	rst  $38                                         ; $5fa2: $ff
	pop  af                                          ; $5fa3: $f1
	jp   nz, $143b                                   ; $5fa4: $c2 $3b $14

	ld   de, $ff49                                   ; $5fa7: $11 $49 $ff
	rst  $38                                         ; $5faa: $ff
	push af                                          ; $5fab: $f5
	ld   de, $bf0e                                   ; $5fac: $11 $0e $bf
	rst  $38                                         ; $5faf: $ff
	or   $61                                         ; $5fb0: $f6 $61
	ld   de, $1211                                   ; $5fb2: $11 $11 $12
	sbc  a                                           ; $5fb5: $9f
	rst  $38                                         ; $5fb6: $ff
	ei                                               ; $5fb7: $fb
	db   $dd                                         ; $5fb8: $dd
	inc  l                                           ; $5fb9: $2c
	ld   b, h                                        ; $5fba: $44
	ld   de, $af41                                   ; $5fbb: $11 $41 $af
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	ld   h, l                                        ; $5fc0: $65
	dec  l                                           ; $5fc1: $2d
	rst  JumpTable                                         ; $5fc2: $df
	cp   $e6                                         ; $5fc3: $fe $e6
	ld   hl, $1111                                   ; $5fc5: $21 $11 $11
	ld   de, $ff5a                                   ; $5fc8: $11 $5a $ff
	db   $fc                                         ; $5fcb: $fc
	cp   a                                           ; $5fcc: $bf
	ld   l, a                                        ; $5fcd: $6f
	xor  b                                           ; $5fce: $a8
	ld   d, c                                        ; $5fcf: $51
	ld   sp, $ff3a                                   ; $5fd0: $31 $3a $ff
	rst  $38                                         ; $5fd3: $ff
	bit  5, h                                        ; $5fd4: $cb $6c
	cp   $fe                                         ; $5fd6: $fe $fe
	rst  $10                                         ; $5fd8: $d7
	inc  de                                          ; $5fd9: $13
	ld   de, $1111                                   ; $5fda: $11 $11 $11
	dec  [hl]                                        ; $5fdd: $35
	db   $ec                                         ; $5fde: $ec
	jp   hl                                          ; $5fdf: $e9


	dec  a                                           ; $5fe0: $3d
	adc  a                                           ; $5fe1: $8f
	db   $fd                                         ; $5fe2: $fd
	and  $63                                         ; $5fe3: $e6 $63
	ld   d, $9b                                      ; $5fe5: $16 $9b
	cp   [hl]                                        ; $5fe7: $be
	xor  e                                           ; $5fe8: $ab
	ld   a, b                                        ; $5fe9: $78
	db   $ed                                         ; $5fea: $ed
	rst  $38                                         ; $5feb: $ff
	cp   e                                           ; $5fec: $bb
	ld   d, [hl]                                     ; $5fed: $56
	ld   h, [hl]                                     ; $5fee: $66
	add  e                                           ; $5fef: $83
	ld   de, $4455                                   ; $5ff0: $11 $55 $44
	inc  d                                           ; $5ff3: $14
	ld   de, $eb77                                   ; $5ff4: $11 $77 $eb
	call z, Call_0fb_698a                            ; $5ff7: $cc $8a $69
	cp   l                                           ; $5ffa: $bd
	db   $dd                                         ; $5ffb: $dd
	db   $db                                         ; $5ffc: $db
	and  a                                           ; $5ffd: $a7
	cp   l                                           ; $5ffe: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fff: $cf
	call z, $88b8                                    ; $6000: $cc $b8 $88
	add  a                                           ; $6003: $87
	ld   b, d                                        ; $6004: $42
	ld   [hl], $42                                   ; $6005: $36 $42
	ld   de, $1411                                   ; $6007: $11 $11 $14
	ld   l, e                                        ; $600a: $6b
	ld   l, d                                        ; $600b: $6a
	add  a                                           ; $600c: $87
	add  a                                           ; $600d: $87
	cp   l                                           ; $600e: $bd
	xor  $fe                                         ; $600f: $ee $fe
	db   $db                                         ; $6011: $db
	xor  [hl]                                        ; $6012: $ae
	rst  $28                                         ; $6013: $ef
	db   $fd                                         ; $6014: $fd
	jp   c, $8889                                    ; $6015: $da $89 $88

	ld   h, e                                        ; $6018: $63
	inc  hl                                          ; $6019: $23
	ld   d, e                                        ; $601a: $53
	ld   de, $1111                                   ; $601b: $11 $11 $11
	scf                                              ; $601e: $37
	sub  a                                           ; $601f: $97
	sub  [hl]                                        ; $6020: $96
	ld   h, a                                        ; $6021: $67
	adc  e                                           ; $6022: $8b
	rst  $28                                         ; $6023: $ef
	rst  $28                                         ; $6024: $ef
	db   $dd                                         ; $6025: $dd
	call z, $ffff                                    ; $6026: $cc $ff $ff
	db   $dd                                         ; $6029: $dd
	xor  c                                           ; $602a: $a9
	sbc  b                                           ; $602b: $98
	ld   [hl], l                                     ; $602c: $75
	ld   [hl+], a                                    ; $602d: $22
	ld   b, h                                        ; $602e: $44
	ld   de, $1111                                   ; $602f: $11 $11 $11
	inc  hl                                          ; $6032: $23
	halt                                             ; $6033: $76
	ld   a, c                                        ; $6034: $79
	ld   h, a                                        ; $6035: $67
	ld   a, c                                        ; $6036: $79
	adc  $ff                                         ; $6037: $ce $ff
	rst  $38                                         ; $6039: $ff
	db   $ec                                         ; $603a: $ec
	rst  $28                                         ; $603b: $ef
	rst  $38                                         ; $603c: $ff
	xor  $c9                                         ; $603d: $ee $c9
	sbc  b                                           ; $603f: $98
	add  a                                           ; $6040: $87
	ld   b, d                                        ; $6041: $42
	inc  h                                           ; $6042: $24
	ld   hl, $1111                                   ; $6043: $21 $11 $11
	ld   [de], a                                     ; $6046: $12
	ld   c, b                                        ; $6047: $48
	ld   e, c                                        ; $6048: $59
	add  [hl]                                        ; $6049: $86
	ld   a, b                                        ; $604a: $78
	xor  h                                           ; $604b: $ac
	rst  $38                                         ; $604c: $ff
	rst  $38                                         ; $604d: $ff
	cp   $cf                                         ; $604e: $fe $cf
	rst  $38                                         ; $6050: $ff
	rst  $38                                         ; $6051: $ff
	db   $ec                                         ; $6052: $ec
	sbc  c                                           ; $6053: $99
	add  a                                           ; $6054: $87
	ld   h, e                                        ; $6055: $63
	inc  hl                                          ; $6056: $23
	ld   b, c                                        ; $6057: $41
	ld   de, $1111                                   ; $6058: $11 $11 $11
	ld   [hl], $76                                   ; $605b: $36 $76
	sub  a                                           ; $605d: $97
	ld   h, a                                        ; $605e: $67
	adc  h                                           ; $605f: $8c
	rst  $28                                         ; $6060: $ef
	rst  $38                                         ; $6061: $ff
	rst  $38                                         ; $6062: $ff
	xor  $ff                                         ; $6063: $ee $ff
	rst  $38                                         ; $6065: $ff
	db   $ed                                         ; $6066: $ed
	xor  b                                           ; $6067: $a8
	sub  a                                           ; $6068: $97
	ld   h, h                                        ; $6069: $64
	inc  hl                                          ; $606a: $23
	ld   b, c                                        ; $606b: $41
	ld   de, $1111                                   ; $606c: $11 $11 $11
	dec  h                                           ; $606f: $25
	halt                                             ; $6070: $76
	xor  b                                           ; $6071: $a8
	ld   [hl], a                                     ; $6072: $77
	adc  d                                           ; $6073: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6074: $cf
	rst  $38                                         ; $6075: $ff
	rst  $38                                         ; $6076: $ff
	xor  $ff                                         ; $6077: $ee $ff
	rst  $38                                         ; $6079: $ff
	rst  $38                                         ; $607a: $ff
	cp   c                                           ; $607b: $b9
	sub  a                                           ; $607c: $97
	ld   h, h                                        ; $607d: $64
	dec  h                                           ; $607e: $25
	ld   d, d                                        ; $607f: $52
	ld   de, $1111                                   ; $6080: $11 $11 $11
	inc  d                                           ; $6083: $14
	ld   d, l                                        ; $6084: $55
	add  a                                           ; $6085: $87
	ld   h, [hl]                                     ; $6086: $66
	adc  d                                           ; $6087: $8a
	xor  $ff                                         ; $6088: $ee $ff
	rst  $38                                         ; $608a: $ff
	rst  $38                                         ; $608b: $ff
	rst  $38                                         ; $608c: $ff
	rst  $38                                         ; $608d: $ff
	cp   $b9                                         ; $608e: $fe $b9
	add  [hl]                                        ; $6090: $86
	ld   d, d                                        ; $6091: $52
	dec  d                                           ; $6092: $15
	ld   sp, $1111                                   ; $6093: $31 $11 $11
	ld   de, $4715                                   ; $6096: $11 $15 $47
	ld   [hl], a                                     ; $6099: $77
	ld   [hl], a                                     ; $609a: $77
	xor  l                                           ; $609b: $ad
	rst  $38                                         ; $609c: $ff
	rst  $38                                         ; $609d: $ff
	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	rst  $38                                         ; $60a0: $ff
	rst  $38                                         ; $60a1: $ff
	db   $fd                                         ; $60a2: $fd
	sbc  b                                           ; $60a3: $98
	ld   [hl], h                                     ; $60a4: $74
	ld   hl, $1144                                   ; $60a5: $21 $44 $11
	ld   de, $1111                                   ; $60a8: $11 $11 $11
	ld   d, h                                        ; $60ab: $54
	ld   [hl], a                                     ; $60ac: $77
	ld   h, a                                        ; $60ad: $67
	ld   a, e                                        ; $60ae: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60af: $cf
	rst  $38                                         ; $60b0: $ff
	rst  $38                                         ; $60b1: $ff
	rst  $38                                         ; $60b2: $ff
	rst  $38                                         ; $60b3: $ff
	rst  $38                                         ; $60b4: $ff
	rst  $38                                         ; $60b5: $ff
	ret                                              ; $60b6: $c9


	sub  [hl]                                        ; $60b7: $96
	ld   b, d                                        ; $60b8: $42
	dec  h                                           ; $60b9: $25
	ld   sp, $1111                                   ; $60ba: $31 $11 $11
	ld   de, $4715                                   ; $60bd: $11 $15 $47
	halt                                             ; $60c0: $76
	ld   [hl], a                                     ; $60c1: $77
	xor  l                                           ; $60c2: $ad
	rst  $28                                         ; $60c3: $ef
	rst  $38                                         ; $60c4: $ff
	rst  $38                                         ; $60c5: $ff
	rst  $28                                         ; $60c6: $ef
	rst  $38                                         ; $60c7: $ff
	rst  $38                                         ; $60c8: $ff
	ei                                               ; $60c9: $fb
	xor  c                                           ; $60ca: $a9
	ld   h, h                                        ; $60cb: $64
	inc  de                                          ; $60cc: $13
	ld   d, d                                        ; $60cd: $52
	ld   de, $1111                                   ; $60ce: $11 $11 $11
	inc  de                                          ; $60d1: $13
	ld   d, l                                        ; $60d2: $55
	add  l                                           ; $60d3: $85
	ld   h, a                                        ; $60d4: $67
	ld   a, e                                        ; $60d5: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60d6: $cf
	rst  $38                                         ; $60d7: $ff
	rst  $38                                         ; $60d8: $ff
	rst  $38                                         ; $60d9: $ff
	rst  $38                                         ; $60da: $ff
	rst  $38                                         ; $60db: $ff
	db   $fd                                         ; $60dc: $fd
	xor  c                                           ; $60dd: $a9
	add  [hl]                                        ; $60de: $86
	inc  sp                                          ; $60df: $33
	ld   d, h                                        ; $60e0: $54
	ld   de, $1111                                   ; $60e1: $11 $11 $11
	ld   de, $7744                                   ; $60e4: $11 $44 $77
	ld   d, a                                        ; $60e7: $57
	ld   l, b                                        ; $60e8: $68
	cp   l                                           ; $60e9: $bd
	rst  $28                                         ; $60ea: $ef
	rst  $38                                         ; $60eb: $ff
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	rst  $38                                         ; $60ee: $ff
	rst  $38                                         ; $60ef: $ff
	ret                                              ; $60f0: $c9


	sub  a                                           ; $60f1: $97
	ld   b, e                                        ; $60f2: $43
	ld   d, l                                        ; $60f3: $55
	ld   hl, $1111                                   ; $60f4: $21 $11 $11
	ld   de, $6835                                   ; $60f7: $11 $35 $68
	ld   h, [hl]                                     ; $60fa: $66
	ld   h, [hl]                                     ; $60fb: $66
	sbc  e                                           ; $60fc: $9b
	rst  JumpTable                                         ; $60fd: $df
	rst  $38                                         ; $60fe: $ff
	rst  $38                                         ; $60ff: $ff
	rst  $38                                         ; $6100: $ff
	rst  $38                                         ; $6101: $ff
	rst  $38                                         ; $6102: $ff
	ld   [$53a8], a                                  ; $6103: $ea $a8 $53
	ld   b, [hl]                                     ; $6106: $46
	ld   [hl-], a                                    ; $6107: $32
	ld   de, $1111                                   ; $6108: $11 $11 $11
	inc  d                                           ; $610b: $14
	ld   e, b                                        ; $610c: $58
	halt                                             ; $610d: $76
	halt                                             ; $610e: $76
	adc  c                                           ; $610f: $89
	cp   l                                           ; $6110: $bd
	rst  $28                                         ; $6111: $ef
	rst  $38                                         ; $6112: $ff
	rst  $38                                         ; $6113: $ff
	rst  $38                                         ; $6114: $ff
	rst  $38                                         ; $6115: $ff
	db   $fc                                         ; $6116: $fc
	xor  c                                           ; $6117: $a9
	ld   [hl], h                                     ; $6118: $74
	ld   b, [hl]                                     ; $6119: $46
	ld   b, d                                        ; $611a: $42
	ld   de, $1111                                   ; $611b: $11 $11 $11
	inc  de                                          ; $611e: $13
	ld   b, a                                        ; $611f: $47
	halt                                             ; $6120: $76
	halt                                             ; $6121: $76
	ld   a, c                                        ; $6122: $79
	cp   h                                           ; $6123: $bc
	rst  $28                                         ; $6124: $ef
	cp   $ee                                         ; $6125: $fe $ee
	rst  $38                                         ; $6127: $ff
	rst  $38                                         ; $6128: $ff
	db   $fc                                         ; $6129: $fc
	cp   c                                           ; $612a: $b9
	sub  l                                           ; $612b: $95
	ld   b, [hl]                                     ; $612c: $46
	ld   d, e                                        ; $612d: $53
	ld   hl, $1111                                   ; $612e: $21 $11 $11
	inc  de                                          ; $6131: $13
	ld   b, [hl]                                     ; $6132: $46
	halt                                             ; $6133: $76
	ld   h, [hl]                                     ; $6134: $66
	ld   h, a                                        ; $6135: $67
	sbc  e                                           ; $6136: $9b
	call $eeff                                       ; $6137: $cd $ff $ee
	rst  $28                                         ; $613a: $ef
	rst  $38                                         ; $613b: $ff
	cp   $ca                                         ; $613c: $fe $ca
	and  a                                           ; $613e: $a7
	ld   b, [hl]                                     ; $613f: $46
	ld   [hl], h                                     ; $6140: $74
	ld   [hl-], a                                    ; $6141: $32
	ld   hl, $1211                                   ; $6142: $21 $11 $12
	inc  [hl]                                        ; $6145: $34
	halt                                             ; $6146: $76
	ld   h, [hl]                                     ; $6147: $66
	ld   d, [hl]                                     ; $6148: $56
	ld   a, c                                        ; $6149: $79
	cp   h                                           ; $614a: $bc
	sbc  $dd                                         ; $614b: $de $dd
	xor  $fe                                         ; $614d: $ee $fe
	cp   $cc                                         ; $614f: $fe $cc
	cp   d                                           ; $6151: $ba
	ld   h, l                                        ; $6152: $65
	halt                                             ; $6153: $76
	ld   b, e                                        ; $6154: $43
	ld   [hl+], a                                    ; $6155: $22
	ld   de, $3311                                   ; $6156: $11 $11 $33
	ld   d, a                                        ; $6159: $57
	ld   d, [hl]                                     ; $615a: $56
	ld   d, l                                        ; $615b: $55
	ld   h, a                                        ; $615c: $67
	sbc  h                                           ; $615d: $9c
	adc  $dd                                         ; $615e: $ce $dd
	sbc  $ff                                         ; $6160: $de $ff
	rst  $38                                         ; $6162: $ff
	db   $ed                                         ; $6163: $ed
	jp   z, Jump_0fb_6796                            ; $6164: $ca $96 $67

	ld   h, h                                        ; $6167: $64
	ld   [hl-], a                                    ; $6168: $32
	ld   hl, $1211                                   ; $6169: $21 $11 $12
	ld   [hl], $75                                   ; $616c: $36 $75
	ld   h, l                                        ; $616e: $65
	ld   d, [hl]                                     ; $616f: $56
	ld   a, c                                        ; $6170: $79
	call z, $ddde                                    ; $6171: $cc $de $dd
	rst  $28                                         ; $6174: $ef
	rst  $38                                         ; $6175: $ff
	cp   $dd                                         ; $6176: $fe $dd
	reti                                             ; $6178: $d9


	ld   h, a                                        ; $6179: $67
	ld   [hl], l                                     ; $617a: $75
	ld   d, h                                        ; $617b: $54
	ld   [hl-], a                                    ; $617c: $32
	ld   de, $2311                                   ; $617d: $11 $11 $23
	ld   a, b                                        ; $6180: $78
	ld   [hl], a                                     ; $6181: $77
	ld   b, h                                        ; $6182: $44
	ld   h, a                                        ; $6183: $67
	cp   l                                           ; $6184: $bd
	rst  $28                                         ; $6185: $ef
	adc  $dd                                         ; $6186: $ce $dd
	rst  $38                                         ; $6188: $ff
	rst  $38                                         ; $6189: $ff
	db   $ec                                         ; $618a: $ec
	xor  d                                           ; $618b: $aa
	ld   [hl], h                                     ; $618c: $74
	halt                                             ; $618d: $76
	ld   e, c                                        ; $618e: $59
	ld   d, l                                        ; $618f: $55
	ld   de, $1311                                   ; $6190: $11 $11 $13
	ld   e, [hl]                                     ; $6193: $5e
	rst  $28                                         ; $6194: $ef
	jp   nz, $8f44                                   ; $6195: $c2 $44 $8f

	rst  $38                                         ; $6198: $ff
	ld   a, [$dfca]                                  ; $6199: $fa $ca $df
	rst  $38                                         ; $619c: $ff
	reti                                             ; $619d: $d9


	ld   sp, $1111                                   ; $619e: $31 $11 $11
	rra                                              ; $61a1: $1f
	rst  $38                                         ; $61a2: $ff
	pop  af                                          ; $61a3: $f1
	ld   h, c                                        ; $61a4: $61
	cpl                                              ; $61a5: $2f
	rst  $38                                         ; $61a6: $ff
	rst  $28                                         ; $61a7: $ef
	ld   [hl], c                                     ; $61a8: $71
	ld   de, $ffaf                                   ; $61a9: $11 $af $ff
	jp   c, $fdda                                    ; $61ac: $da $da $fd

	ei                                               ; $61af: $fb
	ld   de, $1111                                   ; $61b0: $11 $11 $11
	cp   a                                           ; $61b3: $bf
	rst  $38                                         ; $61b4: $ff
	pop  af                                          ; $61b5: $f1
	sub  c                                           ; $61b6: $91
	rra                                              ; $61b7: $1f
	xor  a                                           ; $61b8: $af
	ld   b, a                                        ; $61b9: $47
	ld   de, $ff31                                   ; $61ba: $11 $31 $ff
	rst  $38                                         ; $61bd: $ff
	rst  $38                                         ; $61be: $ff
	add  sp, -$0c                                    ; $61bf: $e8 $f4
	add  c                                           ; $61c1: $81
	ld   de, $1111                                   ; $61c2: $11 $11 $11
	rst  $38                                         ; $61c5: $ff
	rst  $38                                         ; $61c6: $ff
	adc  l                                           ; $61c7: $8d
	ld   de, $f8f1                                   ; $61c8: $11 $f1 $f8
	ld   a, [de]                                     ; $61cb: $1a
	inc  de                                          ; $61cc: $13
	adc  h                                           ; $61cd: $8c
	rst  $38                                         ; $61ce: $ff
	rst  $38                                         ; $61cf: $ff
	xor  a                                           ; $61d0: $af
	ld   a, [hl+]                                    ; $61d1: $2a
	ld   [hl-], a                                    ; $61d2: $32
	ld   sp, $1111                                   ; $61d3: $31 $11 $11
	ld   e, a                                        ; $61d6: $5f
	rst  $38                                         ; $61d7: $ff
	di                                               ; $61d8: $f3
	or   c                                           ; $61d9: $b1
	ld   a, [de]                                     ; $61da: $1a
	rra                                              ; $61db: $1f
	inc  de                                          ; $61dc: $13
	ld   d, c                                        ; $61dd: $51
	cp   e                                           ; $61de: $bb
	rst  $38                                         ; $61df: $ff
	rst  $38                                         ; $61e0: $ff
	xor  b                                           ; $61e1: $a8
	ld   d, c                                        ; $61e2: $51
	jp   nz, $11a1                                   ; $61e3: $c2 $a1 $11

	ld   de, $ff1f                                   ; $61e6: $11 $1f $ff
	rst  $38                                         ; $61e9: $ff
	inc  de                                          ; $61ea: $13
	ld   de, $f197                                   ; $61eb: $11 $97 $f1
	ld   [hl], c                                     ; $61ee: $71
	rra                                              ; $61ef: $1f
	rst  $38                                         ; $61f0: $ff
	rst  $38                                         ; $61f1: $ff
	pop  af                                          ; $61f2: $f1
	ld   de, $cf8f                                   ; $61f3: $11 $8f $cf
	ld   de, $1711                                   ; $61f6: $11 $11 $17
	rst  $38                                         ; $61f9: $ff
	rst  $38                                         ; $61fa: $ff
	ld   [hl], c                                     ; $61fb: $71
	ld   de, $ff8d                                   ; $61fc: $11 $8d $ff
	inc  de                                          ; $61ff: $13
	ld   de, $ffff                                   ; $6200: $11 $ff $ff
	di                                               ; $6203: $f3
	ld   de, $ff1f                                   ; $6204: $11 $1f $ff
	pop  af                                          ; $6207: $f1
	ld   de, rAUD1LEN                                   ; $6208: $11 $11 $ff
	rst  $38                                         ; $620b: $ff
	pop  af                                          ; $620c: $f1
	ld   de, $ff1f                                   ; $620d: $11 $1f $ff
	sub  c                                           ; $6210: $91
	ld   de, $ff9f                                   ; $6211: $11 $9f $ff
	db   $fd                                         ; $6214: $fd
	ld   de, $ff15                                   ; $6215: $11 $15 $ff
	push af                                          ; $6218: $f5
	ld   de, $af11                                   ; $6219: $11 $11 $af
	rst  $38                                         ; $621c: $ff
	cp   $11                                         ; $621d: $fe $11
	ld   de, $e1ff                                   ; $621f: $11 $ff $e1
	ld   de, $ff1f                                   ; $6222: $11 $1f $ff
	or   $21                                         ; $6225: $f6 $21
	inc  d                                           ; $6227: $14
	rst  $38                                         ; $6228: $ff
	rst  $38                                         ; $6229: $ff
	ld   de, $1f11                                   ; $622a: $11 $11 $1f
	rst  $38                                         ; $622d: $ff
	rst  $38                                         ; $622e: $ff
	ld   d, c                                        ; $622f: $51
	ld   de, $6a9f                                   ; $6230: $11 $9f $6a
	ld   de, rAUD1LOW                                   ; $6233: $11 $13 $ff
	rst  $38                                         ; $6236: $ff
	ld   de, $8f11                                   ; $6237: $11 $11 $8f
	rst  $38                                         ; $623a: $ff
	sub  c                                           ; $623b: $91
	ld   de, rAUD1LEN                                   ; $623c: $11 $11 $ff
	rst  $38                                         ; $623f: $ff
	pop  hl                                          ; $6240: $e1
	ld   a, [de]                                     ; $6241: $1a
	ld   c, a                                        ; $6242: $4f
	ldh  a, [c]                                      ; $6243: $f2
	ld   b, c                                        ; $6244: $41
	ld   de, $ffff                                   ; $6245: $11 $ff $ff
	add  c                                           ; $6248: $81
	ld   de, $ff7e                                   ; $6249: $11 $7e $ff
	pop  hl                                          ; $624c: $e1
	ld   de, $7f11                                   ; $624d: $11 $11 $7f
	rst  $38                                         ; $6250: $ff
	db   $fc                                         ; $6251: $fc
	ld   de, $f9f3                                   ; $6252: $11 $f3 $f9
	ld   de, $2f12                                   ; $6255: $11 $12 $2f
	rst  $38                                         ; $6258: $ff
	pop  af                                          ; $6259: $f1
	ld   de, $ff19                                   ; $625a: $11 $19 $ff
	db   $fc                                         ; $625d: $fc
	ld   de, $1c11                                   ; $625e: $11 $11 $1c
	rst  $38                                         ; $6261: $ff
	rst  $38                                         ; $6262: $ff
	and  c                                           ; $6263: $a1
	ccf                                              ; $6264: $3f
	adc  a                                           ; $6265: $8f
	ld   hl, $4811                                   ; $6266: $21 $11 $48
	rst  $38                                         ; $6269: $ff
	rst  $38                                         ; $626a: $ff
	ld   de, $ef13                                   ; $626b: $11 $13 $ef
	ei                                               ; $626e: $fb
	ld   hl, $1111                                   ; $626f: $21 $11 $11
	rst  $38                                         ; $6272: $ff
	rst  $38                                         ; $6273: $ff
	ld   sp, hl                                      ; $6274: $f9
	dec  e                                           ; $6275: $1d
	sbc  h                                           ; $6276: $9c
	pop  hl                                          ; $6277: $e1
	ld   de, rAUD1LEN                                   ; $6278: $11 $11 $ff
	rst  $38                                         ; $627b: $ff
	jp   nz, Jump_0fb_4f11                           ; $627c: $c2 $11 $4f

	rst  $38                                         ; $627f: $ff
	and  c                                           ; $6280: $a1
	ld   de, $1f11                                   ; $6281: $11 $11 $1f
	rst  $38                                         ; $6284: $ff
	rst  $38                                         ; $6285: $ff
	ld   hl, $faf9                                   ; $6286: $21 $f9 $fa
	ld   hl, $3f11                                   ; $6289: $21 $11 $3f
	rst  $38                                         ; $628c: $ff
	rst  $30                                         ; $628d: $f7
	ld   de, $ff1c                                   ; $628e: $11 $1c $ff
	or   d                                           ; $6291: $b2
	ld   de, $1411                                   ; $6292: $11 $11 $14
	rst  $38                                         ; $6295: $ff
	rst  $38                                         ; $6296: $ff
	db   $f4                                         ; $6297: $f4
	sbc  a                                           ; $6298: $9f

Call_0fb_6299:
	xor  a                                           ; $6299: $af
	ld   b, c                                        ; $629a: $41
	ld   de, $ff17                                   ; $629b: $11 $17 $ff
	rst  $38                                         ; $629e: $ff
	add  c                                           ; $629f: $81
	ld   d, $ff                                      ; $62a0: $16 $ff
	rst  $30                                         ; $62a2: $f7
	ld   de, $1111                                   ; $62a3: $11 $11 $11
	ld   l, $ff                                      ; $62a6: $2e $ff
	rst  $38                                         ; $62a8: $ff
	ld   a, e                                        ; $62a9: $7b
	ld   a, [$11f4]                                  ; $62aa: $fa $f4 $11
	ld   de, $ff6f                                   ; $62ad: $11 $6f $ff
	ld   a, [$cf43]                                  ; $62b0: $fa $43 $cf
	cp   $41                                         ; $62b3: $fe $41
	ld   de, $1111                                   ; $62b5: $11 $11 $11
	xor  [hl]                                        ; $62b8: $ae
	rst  $38                                         ; $62b9: $ff
	ei                                               ; $62ba: $fb
	rst  JumpTable                                         ; $62bb: $df
	sbc  l                                           ; $62bc: $9d
	ld   h, c                                        ; $62bd: $61
	ld   de, rAUD1LEN                                   ; $62be: $11 $11 $ff
	rst  $38                                         ; $62c1: $ff
	reti                                             ; $62c2: $d9


	xor  a                                           ; $62c3: $af
	rst  $38                                         ; $62c4: $ff
	jp   nz, $1111                                   ; $62c5: $c2 $11 $11

	ld   de, $8f13                                   ; $62c8: $11 $13 $8f
	rst  $38                                         ; $62cb: $ff
	db   $fd                                         ; $62cc: $fd
	db   $fd                                         ; $62cd: $fd
	db   $eb                                         ; $62ce: $eb
	ld   [hl], c                                     ; $62cf: $71
	ld   de, $df16                                   ; $62d0: $11 $16 $df
	db   $fc                                         ; $62d3: $fc
	xor  e                                           ; $62d4: $ab
	rst  $38                                         ; $62d5: $ff
	db   $fd                                         ; $62d6: $fd
	ld   [hl], d                                     ; $62d7: $72
	inc  de                                          ; $62d8: $13
	ld   sp, $1111                                   ; $62d9: $31 $11 $11
	ld   a, h                                        ; $62dc: $7c
	db   $ec                                         ; $62dd: $ec
	adc  h                                           ; $62de: $8c
	call z, $b6ed                                    ; $62df: $cc $ed $b6
	ld   a, b                                        ; $62e2: $78
	ld   a, c                                        ; $62e3: $79
	xor  d                                           ; $62e4: $aa
	ld   [hl], l                                     ; $62e5: $75
	ld   [hl], a                                     ; $62e6: $77
	sbc  d                                           ; $62e7: $9a
	xor  d                                           ; $62e8: $aa
	adc  d                                           ; $62e9: $8a
	cp   d                                           ; $62ea: $ba
	and  a                                           ; $62eb: $a7
	ld   h, [hl]                                     ; $62ec: $66
	ld   d, l                                        ; $62ed: $55
	ld   h, a                                        ; $62ee: $67
	halt                                             ; $62ef: $76
	ld   d, h                                        ; $62f0: $54
	dec  [hl]                                        ; $62f1: $35
	ld   l, b                                        ; $62f2: $68
	sbc  b                                           ; $62f3: $98
	add  a                                           ; $62f4: $87
	ld   a, b                                        ; $62f5: $78
	sbc  c                                           ; $62f6: $99
	adc  c                                           ; $62f7: $89
	adc  b                                           ; $62f8: $88
	sbc  c                                           ; $62f9: $99
	cp   l                                           ; $62fa: $bd
	xor  $dc                                         ; $62fb: $ee $dc
	xor  d                                           ; $62fd: $aa
	adc  b                                           ; $62fe: $88
	add  a                                           ; $62ff: $87
	add  a                                           ; $6300: $87
	ld   [hl], l                                     ; $6301: $75
	ld   b, d                                        ; $6302: $42
	inc  hl                                          ; $6303: $23
	inc  [hl]                                        ; $6304: $34
	ld   h, [hl]                                     ; $6305: $66
	ld   h, [hl]                                     ; $6306: $66
	ld   h, a                                        ; $6307: $67
	ld   [hl], a                                     ; $6308: $77
	adc  b                                           ; $6309: $88
	adc  c                                           ; $630a: $89
	sbc  d                                           ; $630b: $9a
	cp   h                                           ; $630c: $bc
	call c, $cbdc                                    ; $630d: $dc $dc $cb
	cp   h                                           ; $6310: $bc
	cp   e                                           ; $6311: $bb
	xor  c                                           ; $6312: $a9
	add  a                                           ; $6313: $87
	ld   h, l                                        ; $6314: $65
	ld   h, [hl]                                     ; $6315: $66
	ld   h, [hl]                                     ; $6316: $66
	ld   d, h                                        ; $6317: $54
	inc  sp                                          ; $6318: $33
	inc  sp                                          ; $6319: $33
	inc  [hl]                                        ; $631a: $34
	ld   d, l                                        ; $631b: $55
	ld   d, [hl]                                     ; $631c: $56
	adc  b                                           ; $631d: $88
	xor  e                                           ; $631e: $ab
	xor  d                                           ; $631f: $aa
	xor  e                                           ; $6320: $ab
	cp   e                                           ; $6321: $bb
	res  7, e                                        ; $6322: $cb $bb
	xor  d                                           ; $6324: $aa
	xor  d                                           ; $6325: $aa
	cp   d                                           ; $6326: $ba
	xor  d                                           ; $6327: $aa
	cp   d                                           ; $6328: $ba
	adc  b                                           ; $6329: $88
	halt                                             ; $632a: $76
	ld   d, h                                        ; $632b: $54
	ld   b, e                                        ; $632c: $43
	inc  sp                                          ; $632d: $33
	inc  sp                                          ; $632e: $33
	ld   b, l                                        ; $632f: $45
	ld   h, [hl]                                     ; $6330: $66
	ld   h, a                                        ; $6331: $67
	ld   [hl], a                                     ; $6332: $77
	sbc  b                                           ; $6333: $98
	xor  c                                           ; $6334: $a9
	sbc  c                                           ; $6335: $99
	sbc  d                                           ; $6336: $9a
	sbc  e                                           ; $6337: $9b
	call z, $dbcd                                    ; $6338: $cc $cd $db
	cp   d                                           ; $633b: $ba
	xor  c                                           ; $633c: $a9
	sbc  b                                           ; $633d: $98
	ld   [hl], a                                     ; $633e: $77
	ld   [hl], a                                     ; $633f: $77
	ld   [hl], a                                     ; $6340: $77
	halt                                             ; $6341: $76
	ld   h, l                                        ; $6342: $65
	ld   d, h                                        ; $6343: $54
	ld   b, h                                        ; $6344: $44
	ld   b, h                                        ; $6345: $44
	ld   b, h                                        ; $6346: $44
	ld   b, l                                        ; $6347: $45
	ld   h, a                                        ; $6348: $67
	adc  c                                           ; $6349: $89
	sbc  d                                           ; $634a: $9a
	xor  e                                           ; $634b: $ab
	cp   e                                           ; $634c: $bb
	xor  e                                           ; $634d: $ab
	xor  d                                           ; $634e: $aa
	xor  d                                           ; $634f: $aa
	xor  d                                           ; $6350: $aa
	xor  d                                           ; $6351: $aa
	xor  d                                           ; $6352: $aa
	sbc  c                                           ; $6353: $99
	adc  b                                           ; $6354: $88
	sbc  b                                           ; $6355: $98
	adc  b                                           ; $6356: $88
	halt                                             ; $6357: $76
	ld   h, l                                        ; $6358: $65
	ld   d, l                                        ; $6359: $55
	ld   d, l                                        ; $635a: $55
	ld   d, l                                        ; $635b: $55
	ld   d, [hl]                                     ; $635c: $56
	ld   h, [hl]                                     ; $635d: $66
	ld   h, [hl]                                     ; $635e: $66
	ld   [hl], a                                     ; $635f: $77
	ld   [hl], a                                     ; $6360: $77
	adc  b                                           ; $6361: $88
	xor  d                                           ; $6362: $aa
	xor  d                                           ; $6363: $aa
	xor  d                                           ; $6364: $aa
	sbc  c                                           ; $6365: $99
	xor  d                                           ; $6366: $aa
	xor  c                                           ; $6367: $a9
	sbc  c                                           ; $6368: $99
	add  a                                           ; $6369: $87
	ld   [hl], a                                     ; $636a: $77
	ld   a, b                                        ; $636b: $78
	add  a                                           ; $636c: $87
	ld   a, b                                        ; $636d: $78
	adc  b                                           ; $636e: $88
	adc  b                                           ; $636f: $88
	add  a                                           ; $6370: $87
	ld   [hl], a                                     ; $6371: $77
	ld   [hl], a                                     ; $6372: $77
	ld   [hl], a                                     ; $6373: $77
	ld   [hl], a                                     ; $6374: $77
	ld   [hl], a                                     ; $6375: $77
	ld   [hl], a                                     ; $6376: $77
	ld   [hl], a                                     ; $6377: $77
	ld   [hl], a                                     ; $6378: $77
	adc  b                                           ; $6379: $88
	add  a                                           ; $637a: $87
	ld   a, b                                        ; $637b: $78
	adc  c                                           ; $637c: $89
	sbc  c                                           ; $637d: $99
	adc  b                                           ; $637e: $88
	adc  b                                           ; $637f: $88
	adc  c                                           ; $6380: $89
	sbc  c                                           ; $6381: $99
	adc  b                                           ; $6382: $88
	ld   [hl], a                                     ; $6383: $77
	adc  c                                           ; $6384: $89
	adc  c                                           ; $6385: $89
	sbc  b                                           ; $6386: $98
	adc  b                                           ; $6387: $88
	adc  b                                           ; $6388: $88
	sbc  b                                           ; $6389: $98
	sbc  c                                           ; $638a: $99
	adc  b                                           ; $638b: $88
	ld   [hl], a                                     ; $638c: $77
	adc  b                                           ; $638d: $88
	adc  c                                           ; $638e: $89
	sbc  b                                           ; $638f: $98
	adc  c                                           ; $6390: $89
	sbc  c                                           ; $6391: $99
	sbc  b                                           ; $6392: $98
	ld   [hl], a                                     ; $6393: $77
	ld   [hl], a                                     ; $6394: $77
	ld   [hl], a                                     ; $6395: $77
	ld   [hl], a                                     ; $6396: $77
	ld   [hl], a                                     ; $6397: $77
	ld   [hl], a                                     ; $6398: $77
	ld   a, b                                        ; $6399: $78
	adc  b                                           ; $639a: $88
	sbc  c                                           ; $639b: $99
	sbc  c                                           ; $639c: $99
	adc  b                                           ; $639d: $88
	adc  b                                           ; $639e: $88
	adc  c                                           ; $639f: $89
	adc  b                                           ; $63a0: $88
	sbc  c                                           ; $63a1: $99
	adc  c                                           ; $63a2: $89
	adc  b                                           ; $63a3: $88
	adc  b                                           ; $63a4: $88
	adc  b                                           ; $63a5: $88
	adc  b                                           ; $63a6: $88
	adc  c                                           ; $63a7: $89
	sbc  b                                           ; $63a8: $98
	adc  b                                           ; $63a9: $88
	adc  b                                           ; $63aa: $88
	adc  b                                           ; $63ab: $88
	adc  b                                           ; $63ac: $88
	adc  b                                           ; $63ad: $88
	add  a                                           ; $63ae: $87
	ld   [hl], a                                     ; $63af: $77
	ld   [hl], a                                     ; $63b0: $77
	adc  b                                           ; $63b1: $88
	adc  b                                           ; $63b2: $88
	adc  c                                           ; $63b3: $89
	sbc  c                                           ; $63b4: $99
	sbc  b                                           ; $63b5: $98
	sbc  b                                           ; $63b6: $98
	adc  b                                           ; $63b7: $88
	adc  b                                           ; $63b8: $88
	sbc  c                                           ; $63b9: $99
	adc  b                                           ; $63ba: $88
	adc  b                                           ; $63bb: $88
	adc  b                                           ; $63bc: $88
	adc  b                                           ; $63bd: $88
	adc  b                                           ; $63be: $88
	add  a                                           ; $63bf: $87
	ld   [hl], a                                     ; $63c0: $77
	ld   [hl], a                                     ; $63c1: $77
	ld   a, b                                        ; $63c2: $78
	adc  b                                           ; $63c3: $88
	adc  b                                           ; $63c4: $88
	adc  b                                           ; $63c5: $88
	adc  b                                           ; $63c6: $88
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	adc  b                                           ; $63c9: $88
	sbc  b                                           ; $63ca: $98
	adc  c                                           ; $63cb: $89
	sbc  c                                           ; $63cc: $99
	sbc  c                                           ; $63cd: $99
	adc  c                                           ; $63ce: $89
	sbc  b                                           ; $63cf: $98
	adc  b                                           ; $63d0: $88
	adc  b                                           ; $63d1: $88
	adc  b                                           ; $63d2: $88
	adc  b                                           ; $63d3: $88
	adc  b                                           ; $63d4: $88
	adc  b                                           ; $63d5: $88
	adc  b                                           ; $63d6: $88
	adc  b                                           ; $63d7: $88
	adc  b                                           ; $63d8: $88
	add  a                                           ; $63d9: $87
	ld   a, b                                        ; $63da: $78
	adc  b                                           ; $63db: $88
	adc  b                                           ; $63dc: $88
	adc  b                                           ; $63dd: $88
	adc  c                                           ; $63de: $89
	sbc  b                                           ; $63df: $98
	sbc  c                                           ; $63e0: $99
	adc  b                                           ; $63e1: $88
	adc  b                                           ; $63e2: $88
	adc  b                                           ; $63e3: $88
	adc  b                                           ; $63e4: $88
	adc  b                                           ; $63e5: $88
	sbc  b                                           ; $63e6: $98
	adc  b                                           ; $63e7: $88
	adc  b                                           ; $63e8: $88
	adc  b                                           ; $63e9: $88
	add  a                                           ; $63ea: $87
	ld   [hl], a                                     ; $63eb: $77
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
	adc  c                                           ; $63f6: $89
	sbc  c                                           ; $63f7: $99
	sbc  c                                           ; $63f8: $99
	sbc  b                                           ; $63f9: $98
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
	add  a                                           ; $6404: $87
	ld   [hl], a                                     ; $6405: $77
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
	adc  b                                           ; $6413: $88
	adc  b                                           ; $6414: $88
	adc  b                                           ; $6415: $88
	adc  b                                           ; $6416: $88
	adc  b                                           ; $6417: $88
	adc  b                                           ; $6418: $88
	adc  b                                           ; $6419: $88
	adc  b                                           ; $641a: $88
	adc  b                                           ; $641b: $88
	adc  b                                           ; $641c: $88
	adc  b                                           ; $641d: $88
	adc  b                                           ; $641e: $88
	adc  b                                           ; $641f: $88
	adc  b                                           ; $6420: $88
	adc  b                                           ; $6421: $88
	adc  b                                           ; $6422: $88
	adc  b                                           ; $6423: $88
	adc  b                                           ; $6424: $88
	adc  b                                           ; $6425: $88
	adc  b                                           ; $6426: $88
	adc  b                                           ; $6427: $88
	adc  b                                           ; $6428: $88
	adc  b                                           ; $6429: $88
	adc  b                                           ; $642a: $88
	adc  b                                           ; $642b: $88
	adc  b                                           ; $642c: $88
	adc  b                                           ; $642d: $88
	adc  b                                           ; $642e: $88
	adc  b                                           ; $642f: $88
	adc  b                                           ; $6430: $88
	adc  b                                           ; $6431: $88
	adc  b                                           ; $6432: $88
	adc  b                                           ; $6433: $88
	adc  b                                           ; $6434: $88
	adc  b                                           ; $6435: $88
	adc  b                                           ; $6436: $88
	adc  b                                           ; $6437: $88
	adc  b                                           ; $6438: $88
	adc  b                                           ; $6439: $88
	adc  b                                           ; $643a: $88
	adc  b                                           ; $643b: $88
	adc  b                                           ; $643c: $88
	adc  b                                           ; $643d: $88
	adc  b                                           ; $643e: $88
	adc  b                                           ; $643f: $88
	adc  b                                           ; $6440: $88
	adc  b                                           ; $6441: $88
	adc  b                                           ; $6442: $88
	adc  b                                           ; $6443: $88
	adc  b                                           ; $6444: $88
	adc  b                                           ; $6445: $88
	adc  b                                           ; $6446: $88
	adc  b                                           ; $6447: $88
	adc  b                                           ; $6448: $88
	adc  b                                           ; $6449: $88
	adc  b                                           ; $644a: $88
	adc  b                                           ; $644b: $88
	adc  b                                           ; $644c: $88
	adc  b                                           ; $644d: $88
	adc  b                                           ; $644e: $88
	adc  b                                           ; $644f: $88
	adc  b                                           ; $6450: $88
	adc  b                                           ; $6451: $88
	adc  b                                           ; $6452: $88
	adc  b                                           ; $6453: $88
	adc  b                                           ; $6454: $88
	adc  b                                           ; $6455: $88
	adc  b                                           ; $6456: $88
	adc  b                                           ; $6457: $88
	adc  b                                           ; $6458: $88
	adc  b                                           ; $6459: $88
	adc  b                                           ; $645a: $88
	adc  b                                           ; $645b: $88
	adc  b                                           ; $645c: $88
	adc  b                                           ; $645d: $88
	adc  b                                           ; $645e: $88
	adc  b                                           ; $645f: $88
	adc  b                                           ; $6460: $88
	adc  b                                           ; $6461: $88
	adc  b                                           ; $6462: $88
	adc  b                                           ; $6463: $88
	adc  b                                           ; $6464: $88
	adc  b                                           ; $6465: $88
	adc  b                                           ; $6466: $88
	adc  b                                           ; $6467: $88
	adc  b                                           ; $6468: $88
	adc  b                                           ; $6469: $88
	adc  b                                           ; $646a: $88
	adc  b                                           ; $646b: $88
	adc  b                                           ; $646c: $88
	adc  b                                           ; $646d: $88
	adc  b                                           ; $646e: $88
	adc  c                                           ; $646f: $89
	sub  a                                           ; $6470: $97
	adc  b                                           ; $6471: $88
	sbc  b                                           ; $6472: $98
	sbc  d                                           ; $6473: $9a
	ld   a, b                                        ; $6474: $78
	adc  b                                           ; $6475: $88
	adc  c                                           ; $6476: $89
	adc  c                                           ; $6477: $89
	add  a                                           ; $6478: $87
	ld   a, b                                        ; $6479: $78
	adc  b                                           ; $647a: $88
	ld   a, b                                        ; $647b: $78
	ld   [hl], a                                     ; $647c: $77
	ld   a, b                                        ; $647d: $78
	adc  d                                           ; $647e: $8a
	xor  b                                           ; $647f: $a8
	adc  d                                           ; $6480: $8a
	adc  d                                           ; $6481: $8a
	cp   d                                           ; $6482: $ba
	adc  b                                           ; $6483: $88
	sbc  c                                           ; $6484: $99
	sbc  c                                           ; $6485: $99
	adc  b                                           ; $6486: $88
	adc  b                                           ; $6487: $88
	ld   [hl], a                                     ; $6488: $77
	adc  b                                           ; $6489: $88
	add  a                                           ; $648a: $87
	ld   [hl], a                                     ; $648b: $77
	adc  c                                           ; $648c: $89
	sbc  d                                           ; $648d: $9a
	xor  b                                           ; $648e: $a8
	add  a                                           ; $648f: $87
	ld   a, c                                        ; $6490: $79
	add  [hl]                                        ; $6491: $86
	ld   h, l                                        ; $6492: $65
	ld   d, h                                        ; $6493: $54
	inc  [hl]                                        ; $6494: $34
	inc  [hl]                                        ; $6495: $34
	ld   l, c                                        ; $6496: $69
	sbc  b                                           ; $6497: $98
	add  a                                           ; $6498: $87
	ld   a, d                                        ; $6499: $7a
	call c, $a8ca                                    ; $649a: $dc $ca $a8
	sbc  e                                           ; $649d: $9b
	cp   l                                           ; $649e: $bd
	xor  d                                           ; $649f: $aa
	add  a                                           ; $64a0: $87
	adc  c                                           ; $64a1: $89
	sbc  c                                           ; $64a2: $99
	add  l                                           ; $64a3: $85
	ld   d, d                                        ; $64a4: $52
	ld   de, $5a11                                   ; $64a5: $11 $11 $5a
	cp   e                                           ; $64a8: $bb
	sub  l                                           ; $64a9: $95
	ld   c, h                                        ; $64aa: $4c
	rst  $38                                         ; $64ab: $ff
	db   $fd                                         ; $64ac: $fd
	ld   [hl], c                                     ; $64ad: $71
	jr   c, @+$01                                    ; $64ae: $38 $ff

	ld   [$5b43], a                                  ; $64b0: $ea $43 $5b
	rst  $28                                         ; $64b3: $ef
	db   $eb                                         ; $64b4: $eb
	sbc  d                                           ; $64b5: $9a
	xor  $b6                                         ; $64b6: $ee $b6
	ld   de, $1111                                   ; $64b8: $11 $11 $11
	ld   a, h                                        ; $64bb: $7c
	rst  $38                                         ; $64bc: $ff
	ld   a, [$ffbf]                                  ; $64bd: $fa $bf $ff
	ei                                               ; $64c0: $fb
	ld   de, $ad11                                   ; $64c1: $11 $11 $ad
	rst  $38                                         ; $64c4: $ff
	sbc  b                                           ; $64c5: $98
	xor  a                                           ; $64c6: $af
	rst  $38                                         ; $64c7: $ff
	rst  $38                                         ; $64c8: $ff
	add  a                                           ; $64c9: $87
	sub  a                                           ; $64ca: $97
	ld   [hl], e                                     ; $64cb: $73
	ld   de, $1111                                   ; $64cc: $11 $11 $11
	ld   a, [hl]                                     ; $64cf: $7e
	rst  $38                                         ; $64d0: $ff
	rst  $38                                         ; $64d1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64d2: $cf
	rst  $38                                         ; $64d3: $ff
	add  $11                                         ; $64d4: $c6 $11
	ld   de, $ff8d                                   ; $64d6: $11 $8d $ff
	rst  $28                                         ; $64d9: $ef
	rst  $38                                         ; $64da: $ff
	rst  $38                                         ; $64db: $ff
	rst  $30                                         ; $64dc: $f7
	ld   [hl-], a                                    ; $64dd: $32
	sub  [hl]                                        ; $64de: $96
	ld   h, e                                        ; $64df: $63
	ld   de, $1111                                   ; $64e0: $11 $11 $11
	rst  JumpTable                                         ; $64e3: $df
	rst  $38                                         ; $64e4: $ff
	ei                                               ; $64e5: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64e6: $cf
	rst  $38                                         ; $64e7: $ff
	add  c                                           ; $64e8: $81
	ld   de, $ff17                                   ; $64e9: $11 $17 $ff
	cp   $9e                                         ; $64ec: $fe $9e
	rst  $38                                         ; $64ee: $ff
	rst  $38                                         ; $64ef: $ff
	and  h                                           ; $64f0: $a4
	ld   h, $b8                                      ; $64f1: $26 $b8
	ld   h, c                                        ; $64f3: $61
	ld   de, $1211                                   ; $64f4: $11 $11 $12
	rst  $38                                         ; $64f7: $ff
	rst  $38                                         ; $64f8: $ff
	jp   $ff9f                                       ; $64f9: $c3 $9f $ff


	ld   b, c                                        ; $64fc: $41
	ld   de, $ff1f                                   ; $64fd: $11 $1f $ff
	rst  $38                                         ; $6500: $ff
	ld   a, h                                        ; $6501: $7c
	rst  $38                                         ; $6502: $ff
	rst  $38                                         ; $6503: $ff
	sub  h                                           ; $6504: $94
	add  hl, sp                                      ; $6505: $39
	res  2, e                                        ; $6506: $cb $93
	ld   de, $1111                                   ; $6508: $11 $11 $11
	sbc  [hl]                                        ; $650b: $9e
	rst  $38                                         ; $650c: $ff
	rst  $38                                         ; $650d: $ff
	sbc  a                                           ; $650e: $9f
	cp   $51                                         ; $650f: $fe $51
	ld   de, rAUD1LOW                                   ; $6511: $11 $13 $ff
	rst  $38                                         ; $6514: $ff
	rst  $38                                         ; $6515: $ff
	rst  $38                                         ; $6516: $ff
	db   $db                                         ; $6517: $db
	ld   [hl], h                                     ; $6518: $74
	ld   h, $a9                                      ; $6519: $26 $a9
	sub  l                                           ; $651b: $95
	ld   de, $1111                                   ; $651c: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $651f: $cf
	rst  $38                                         ; $6520: $ff
	ei                                               ; $6521: $fb
	rst  JumpTable                                         ; $6522: $df
	cp   $21                                         ; $6523: $fe $21
	ld   de, $ff18                                   ; $6525: $11 $18 $ff
	rst  $38                                         ; $6528: $ff
	rst  JumpTable                                         ; $6529: $df
	rst  $38                                         ; $652a: $ff
	jp   z, $4a63                                    ; $652b: $ca $63 $4a

	jp   hl                                          ; $652e: $e9


	sub  l                                           ; $652f: $95
	ld   de, $1111                                   ; $6530: $11 $11 $11
	ld   c, l                                        ; $6533: $4d
	rst  $38                                         ; $6534: $ff
	rst  $38                                         ; $6535: $ff
	ld   a, a                                        ; $6536: $7f
	rst  $38                                         ; $6537: $ff
	sub  c                                           ; $6538: $91
	ld   de, $df14                                   ; $6539: $11 $14 $df
	rst  $38                                         ; $653c: $ff
	rst  JumpTable                                         ; $653d: $df
	rst  $38                                         ; $653e: $ff
	db   $fc                                         ; $653f: $fc
	add  c                                           ; $6540: $81
	dec  d                                           ; $6541: $15
	ret                                              ; $6542: $c9


	sbc  b                                           ; $6543: $98
	ld   hl, $1111                                   ; $6544: $21 $11 $11
	ld   c, l                                        ; $6547: $4d
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	ld   e, a                                        ; $654a: $5f
	rst  $38                                         ; $654b: $ff
	pop  bc                                          ; $654c: $c1
	ld   de, $bf13                                   ; $654d: $11 $13 $bf
	rst  $38                                         ; $6550: $ff
	call c, $fcff                                    ; $6551: $dc $ff $fc
	push de                                          ; $6554: $d5
	dec  d                                           ; $6555: $15
	bit  7, d                                        ; $6556: $cb $7a
	ld   d, c                                        ; $6558: $51
	ld   de, $1a11                                   ; $6559: $11 $11 $1a
	rst  $28                                         ; $655c: $ef
	rst  $38                                         ; $655d: $ff
	and  [hl]                                        ; $655e: $a6
	rst  $38                                         ; $655f: $ff
	ld   sp, hl                                      ; $6560: $f9
	ld   de, $6c11                                   ; $6561: $11 $11 $6c
	rst  JumpTable                                         ; $6564: $df
	ld   hl, sp-$01                                  ; $6565: $f8 $ff
	rst  $38                                         ; $6567: $ff
	ei                                               ; $6568: $fb
	inc  sp                                          ; $6569: $33
	ld   l, e                                        ; $656a: $6b
	ld   l, b                                        ; $656b: $68
	ld   h, c                                        ; $656c: $61
	ld   de, $1611                                   ; $656d: $11 $11 $16
	rst  $28                                         ; $6570: $ef
	rst  $38                                         ; $6571: $ff
	pop  de                                          ; $6572: $d1
	rst  $38                                         ; $6573: $ff
	rst  $38                                         ; $6574: $ff
	ld   d, c                                        ; $6575: $51
	ld   de, $fb47                                   ; $6576: $11 $47 $fb
	ld   hl, sp-$61                                  ; $6579: $f8 $9f
	rst  $38                                         ; $657b: $ff
	rst  $38                                         ; $657c: $ff
	add  e                                           ; $657d: $83
	ld   l, e                                        ; $657e: $6b
	or   [hl]                                        ; $657f: $b6
	add  e                                           ; $6580: $83
	ld   de, $1111                                   ; $6581: $11 $11 $11
	ld   a, h                                        ; $6584: $7c
	rst  $38                                         ; $6585: $ff
	ei                                               ; $6586: $fb
	rra                                              ; $6587: $1f
	rst  $38                                         ; $6588: $ff
	ld   sp, hl                                      ; $6589: $f9
	ld   b, c                                        ; $658a: $41
	inc  d                                           ; $658b: $14
	ld   l, h                                        ; $658c: $6c
	cp   a                                           ; $658d: $bf
	ld   b, [hl]                                     ; $658e: $46
	rst  $38                                         ; $658f: $ff
	rst  $38                                         ; $6590: $ff
	ld   a, [$b966]                                  ; $6591: $fa $66 $b9
	ld   [hl], a                                     ; $6594: $77
	ld   de, $1111                                   ; $6595: $11 $11 $11
	rla                                              ; $6598: $17
	ld   a, e                                        ; $6599: $7b
	db   $dd                                         ; $659a: $dd
	ld   [hl], a                                     ; $659b: $77
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	push bc                                          ; $659e: $c5
	dec  d                                           ; $659f: $15
	ld   d, a                                        ; $65a0: $57
	ld   a, b                                        ; $65a1: $78
	sub  c                                           ; $65a2: $91
	adc  e                                           ; $65a3: $8b
	cp   $ff                                         ; $65a4: $fe $ff
	jp   c, $97bd                                    ; $65a6: $da $bd $97

	sub  l                                           ; $65a9: $95
	ld   sp, $1131                                   ; $65aa: $31 $31 $11
	ld   h, l                                        ; $65ad: $65
	ld   e, c                                        ; $65ae: $59
	ld   [hl], d                                     ; $65af: $72
	dec  e                                           ; $65b0: $1d
	rst  $38                                         ; $65b1: $ff
	rst  $38                                         ; $65b2: $ff
	pop  bc                                          ; $65b3: $c1
	ld   a, h                                        ; $65b4: $7c
	xor  l                                           ; $65b5: $ad
	xor  h                                           ; $65b6: $ac
	ld   [de], a                                     ; $65b7: $12
	sbc  d                                           ; $65b8: $9a
	cp   l                                           ; $65b9: $bd
	db   $fc                                         ; $65ba: $fc
	adc  d                                           ; $65bb: $8a
	res  5, h                                        ; $65bc: $cb $ac
	ld   [hl], l                                     ; $65be: $75
	ld   d, l                                        ; $65bf: $55
	ld   de, $5515                                   ; $65c0: $11 $15 $55
	add  e                                           ; $65c3: $83
	ld   de, $ff8f                                   ; $65c4: $11 $8f $ff
	ld   [$db16], a                                  ; $65c7: $ea $16 $db
	db   $fd                                         ; $65ca: $fd
	and  c                                           ; $65cb: $a1
	add  hl, de                                      ; $65cc: $19
	sbc  h                                           ; $65cd: $9c
	db   $dd                                         ; $65ce: $dd
	xor  d                                           ; $65cf: $aa
	rst  JumpTable                                         ; $65d0: $df
	call c, Call_0fb_56b6                            ; $65d1: $dc $b6 $56
	ld   b, c                                        ; $65d4: $41
	ld   de, $5a27                                   ; $65d5: $11 $27 $5a
	ld   [hl], d                                     ; $65d8: $72
	rla                                              ; $65d9: $17
	rst  $38                                         ; $65da: $ff
	rst  $38                                         ; $65db: $ff
	sub  c                                           ; $65dc: $91
	inc  e                                           ; $65dd: $1c
	sbc  a                                           ; $65de: $9f
	reti                                             ; $65df: $d9


	ld   hl, $df89                                   ; $65e0: $21 $89 $df
	db   $ed                                         ; $65e3: $ed
	cp   a                                           ; $65e4: $bf
	rst  $38                                         ; $65e5: $ff
	db   $db                                         ; $65e6: $db
	ld   h, d                                        ; $65e7: $62
	ld   hl, $1811                                   ; $65e8: $21 $11 $18
	ld   a, a                                        ; $65eb: $7f
	ld   a, [$ff51]                                  ; $65ec: $fa $51 $ff
	rst  $38                                         ; $65ef: $ff
	ld   sp, $7711                                   ; $65f0: $31 $11 $77
	rst  $38                                         ; $65f3: $ff
	halt                                             ; $65f4: $76
	sbc  h                                           ; $65f5: $9c
	cp   a                                           ; $65f6: $bf
	ld   sp, hl                                      ; $65f7: $f9
	xor  l                                           ; $65f8: $ad
	adc  $fc                                         ; $65f9: $ce $fc
	ld   de, $1111                                   ; $65fb: $11 $11 $11
	sbc  [hl]                                        ; $65fe: $9e
	cp   a                                           ; $65ff: $bf
	jp   nc, $fb1f                                   ; $6600: $d2 $1f $fb

	push af                                          ; $6603: $f5
	ld   de, $7f1b                                   ; $6604: $11 $1b $7f
	push af                                          ; $6607: $f5
	ld   a, e                                        ; $6608: $7b
	call $79ff                               ; $6609: $cd $ff $79
	ei                                               ; $660c: $fb
	rst  $28                                         ; $660d: $ef
	sub  c                                           ; $660e: $91
	ld   de, $bf11                                   ; $660f: $11 $11 $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6612: $cf
	pop  af                                          ; $6613: $f1
	rra                                              ; $6614: $1f
	rst  $30                                         ; $6615: $f7
	or   $11                                         ; $6616: $f6 $11
	rra                                              ; $6618: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6619: $cf
	pop  af                                          ; $661a: $f1
	dec  de                                          ; $661b: $1b
	db   $db                                         ; $661c: $db
	rst  $38                                         ; $661d: $ff
	ld   d, [hl]                                     ; $661e: $56
	rst  $38                                         ; $661f: $ff
	rst  $38                                         ; $6620: $ff
	ld   b, c                                        ; $6621: $41
	ld   de, rAUD1LEN                                   ; $6622: $11 $11 $ff
	rst  $38                                         ; $6625: $ff
	add  c                                           ; $6626: $81
	ld   e, a                                        ; $6627: $5f
	push af                                          ; $6628: $f5
	pop  de                                          ; $6629: $d1
	ld   de, $ffff                                   ; $662a: $11 $ff $ff
	and  c                                           ; $662d: $a1
	adc  l                                           ; $662e: $8d
	ld   e, [hl]                                     ; $662f: $5e
	and  $7f                                         ; $6630: $e6 $7f
	rst  $38                                         ; $6632: $ff
	di                                               ; $6633: $f3
	ld   de, $1f11                                   ; $6634: $11 $11 $1f
	rst  $38                                         ; $6637: $ff
	di                                               ; $6638: $f3
	ld   a, [de]                                     ; $6639: $1a
	rst  $30                                         ; $663a: $f7
	add  c                                           ; $663b: $81
	ld   de, $ff8f                                   ; $663c: $11 $8f $ff
	pop  af                                          ; $663f: $f1
	ld   a, [de]                                     ; $6640: $1a
	ld   a, c                                        ; $6641: $79
	ld   sp, hl                                      ; $6642: $f9
	sbc  l                                           ; $6643: $9d
	rst  $38                                         ; $6644: $ff
	push de                                          ; $6645: $d5
	ld   de, $2f11                                   ; $6646: $11 $11 $2f
	rst  $38                                         ; $6649: $ff
	pop  af                                          ; $664a: $f1
	ld   d, $f6                                      ; $664b: $16 $f6
	ld   d, c                                        ; $664d: $51
	ld   de, $ffdf                                   ; $664e: $11 $df $ff
	pop  af                                          ; $6651: $f1
	ld   d, $8a                                      ; $6652: $16 $8a
	ld   a, [$ffcf]                                  ; $6654: $fa $cf $ff
	ld   d, c                                        ; $6657: $51
	ld   de, rAUD1LEN                                   ; $6658: $11 $11 $ff
	rst  $38                                         ; $665b: $ff
	ld   de, $d41f                                   ; $665c: $11 $1f $d4
	ld   h, c                                        ; $665f: $61
	jr   @+$01                                       ; $6660: $18 $ff

	rst  $38                                         ; $6662: $ff
	ld   de, $df0c                                   ; $6663: $11 $0c $df
	ld   sp, hl                                      ; $6666: $f9
	rst  $38                                         ; $6667: $ff
	pop  hl                                          ; $6668: $e1
	ld   de, rAUD1LEN                                   ; $6669: $11 $11 $ff
	rst  $38                                         ; $666c: $ff
	pop  af                                          ; $666d: $f1
	dec  d                                           ; $666e: $15
	db   $f4                                         ; $666f: $f4
	pop  af                                          ; $6670: $f1
	ld   de, $ffff                                   ; $6671: $11 $ff $ff
	ld   de, $ff17                                   ; $6674: $11 $17 $ff
	ld   a, [$71ca]                                  ; $6677: $fa $ca $71
	ld   de, rAUD1LEN                                   ; $667a: $11 $11 $ff
	rst  $38                                         ; $667d: $ff
	pop  de                                          ; $667e: $d1
	ld   de, $f1f9                                   ; $667f: $11 $f9 $f1
	inc  de                                          ; $6682: $13
	rst  $28                                         ; $6683: $ef
	rst  $38                                         ; $6684: $ff
	ld   de, $ff18                                   ; $6685: $11 $18 $ff
	rst  $30                                         ; $6688: $f7
	ld   b, c                                        ; $6689: $41
	ld   de, $1111                                   ; $668a: $11 $11 $11
	rst  $38                                         ; $668d: $ff
	rst  $38                                         ; $668e: $ff
	ld   de, $ff1e                                   ; $668f: $11 $1e $ff
	pop  af                                          ; $6692: $f1
	ld   de, $ffff                                   ; $6693: $11 $ff $ff
	ld   de, $ff1f                                   ; $6696: $11 $1f $ff
	pop  af                                          ; $6699: $f1
	ld   de, $1111                                   ; $669a: $11 $11 $11
	rra                                              ; $669d: $1f
	rst  $38                                         ; $669e: $ff
	pop  af                                          ; $669f: $f1
	ld   de, $ffe9                                   ; $66a0: $11 $e9 $ff
	inc  d                                           ; $66a3: $14
	rra                                              ; $66a4: $1f
	rst  $38                                         ; $66a5: $ff
	sub  c                                           ; $66a6: $91
	ld   de, $fbff                                   ; $66a7: $11 $ff $fb
	ld   de, $1111                                   ; $66aa: $11 $11 $11
	rra                                              ; $66ad: $1f
	rst  $38                                         ; $66ae: $ff
	pop  af                                          ; $66af: $f1
	ld   de, $ff48                                   ; $66b0: $11 $48 $ff
	dec  e                                           ; $66b3: $1d
	rra                                              ; $66b4: $1f
	ld   hl, sp-$0f                                  ; $66b5: $f8 $f1
	inc  h                                           ; $66b7: $24
	rst  $38                                         ; $66b8: $ff
	cp   $11                                         ; $66b9: $fe $11
	ld   de, $cf11                                   ; $66bb: $11 $11 $cf
	rst  $38                                         ; $66be: $ff
	pop  af                                          ; $66bf: $f1
	ld   de, $ffb4                                   ; $66c0: $11 $b4 $ff
	rra                                              ; $66c3: $1f
	ld   e, a                                        ; $66c4: $5f
	rst  $30                                         ; $66c5: $f7
	ld   h, c                                        ; $66c6: $61
	xor  l                                           ; $66c7: $ad
	rst  $38                                         ; $66c8: $ff
	pop  af                                          ; $66c9: $f1
	ld   de, $1111                                   ; $66ca: $11 $11 $11
	rst  $38                                         ; $66cd: $ff
	rst  $38                                         ; $66ce: $ff
	ld   de, $d611                                   ; $66cf: $11 $11 $d6
	pop  af                                          ; $66d2: $f1
	cp   e                                           ; $66d3: $bb
	rst  $38                                         ; $66d4: $ff
	dec  hl                                          ; $66d5: $2b
	inc  de                                          ; $66d6: $13
	rst  $38                                         ; $66d7: $ff
	rst  $38                                         ; $66d8: $ff
	ld   de, $1111                                   ; $66d9: $11 $11 $11
	rra                                              ; $66dc: $1f
	rst  $38                                         ; $66dd: $ff
	pop  af                                          ; $66de: $f1
	ld   de, $af19                                   ; $66df: $11 $19 $af
	rra                                              ; $66e2: $1f
	cp   a                                           ; $66e3: $bf
	ldh  a, [c]                                      ; $66e4: $f2
	sub  c                                           ; $66e5: $91
	xor  a                                           ; $66e6: $af
	rst  $38                                         ; $66e7: $ff
	pop  de                                          ; $66e8: $d1
	ld   de, $1f11                                   ; $66e9: $11 $11 $1f
	rst  $38                                         ; $66ec: $ff
	rst  $38                                         ; $66ed: $ff
	ld   de, $2f1c                                   ; $66ee: $11 $1c $2f
	pop  af                                          ; $66f1: $f1
	db   $f4                                         ; $66f2: $f4
	db   $fd                                         ; $66f3: $fd
	sub  c                                           ; $66f4: $91
	rra                                              ; $66f5: $1f
	rst  $38                                         ; $66f6: $ff
	pop  af                                          ; $66f7: $f1
	ld   de, $1211                                   ; $66f8: $11 $11 $12
	rst  $38                                         ; $66fb: $ff
	rst  $38                                         ; $66fc: $ff
	ld   de, $ac15                                   ; $66fd: $11 $15 $ac
	pop  af                                          ; $6700: $f1
	or   $ff                                         ; $6701: $f6 $ff
	ld   d, [hl]                                     ; $6703: $56
	rra                                              ; $6704: $1f
	rst  $38                                         ; $6705: $ff
	pop  af                                          ; $6706: $f1
	ld   de, $1111                                   ; $6707: $11 $11 $11
	rst  $38                                         ; $670a: $ff
	rst  $38                                         ; $670b: $ff
	ld   de, $f911                                   ; $670c: $11 $11 $f9
	pop  af                                          ; $670f: $f1
	ret                                              ; $6710: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6711: $cf
	ld   c, b                                        ; $6712: $48
	rra                                              ; $6713: $1f
	rst  $38                                         ; $6714: $ff
	pop  af                                          ; $6715: $f1
	ld   de, $1111                                   ; $6716: $11 $11 $11
	rst  $38                                         ; $6719: $ff
	rst  $38                                         ; $671a: $ff
	ld   de, $f911                                   ; $671b: $11 $11 $f9
	pop  af                                          ; $671e: $f1
	ld   a, c                                        ; $671f: $79
	sbc  a                                           ; $6720: $9f
	ld   l, b                                        ; $6721: $68
	rra                                              ; $6722: $1f
	rst  $38                                         ; $6723: $ff
	pop  af                                          ; $6724: $f1
	ld   de, $1111                                   ; $6725: $11 $11 $11
	rst  $38                                         ; $6728: $ff
	rst  $38                                         ; $6729: $ff
	ld   de, $fa11                                   ; $672a: $11 $11 $fa
	pop  af                                          ; $672d: $f1
	add  [hl]                                        ; $672e: $86
	ld   e, a                                        ; $672f: $5f
	dec  sp                                          ; $6730: $3b
	rra                                              ; $6731: $1f
	rst  $38                                         ; $6732: $ff
	pop  af                                          ; $6733: $f1
	ld   de, $1111                                   ; $6734: $11 $11 $11
	rst  $38                                         ; $6737: $ff
	rst  $38                                         ; $6738: $ff
	ld   de, rAUD1LEN                                   ; $6739: $11 $11 $ff
	pop  af                                          ; $673c: $f1
	ld   [hl], h                                     ; $673d: $74
	ld   l, a                                        ; $673e: $6f
	inc  a                                           ; $673f: $3c
	ccf                                              ; $6740: $3f
	rst  $38                                         ; $6741: $ff
	pop  af                                          ; $6742: $f1
	ld   de, $8117                                   ; $6743: $11 $17 $81
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	ld   de, rAUD1LEN                                   ; $6748: $11 $11 $ff
	ei                                               ; $674b: $fb
	ld   de, $af3f                                   ; $674c: $11 $3f $af
	ld   l, a                                        ; $674f: $6f
	rst  $38                                         ; $6750: $ff
	pop  af                                          ; $6751: $f1
	ld   de, $111b                                   ; $6752: $11 $1b $11
	rst  $38                                         ; $6755: $ff
	rst  $38                                         ; $6756: $ff
	pop  hl                                          ; $6757: $e1
	ld   de, $ffff                                   ; $6758: $11 $ff $ff
	ld   de, $ff1f                                   ; $675b: $11 $1f $ff
	dec  de                                          ; $675e: $1b
	rst  $38                                         ; $675f: $ff
	pop  af                                          ; $6760: $f1
	ld   de, $c11b                                   ; $6761: $11 $1b $c1
	rra                                              ; $6764: $1f
	rst  $38                                         ; $6765: $ff
	pop  af                                          ; $6766: $f1
	ld   de, $ff1f                                   ; $6767: $11 $1f $ff
	ld   de, $ff1c                                   ; $676a: $11 $1c $ff
	pop  af                                          ; $676d: $f1
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	ld   de, $fc11                                   ; $6770: $11 $11 $fc
	ld   de, $ffff                                   ; $6773: $11 $ff $ff
	ld   de, $df11                                   ; $6776: $11 $11 $df
	pop  af                                          ; $6779: $f1
	dec  e                                           ; $677a: $1d
	rst  $38                                         ; $677b: $ff
	pop  af                                          ; $677c: $f1
	rra                                              ; $677d: $1f
	rst  $38                                         ; $677e: $ff
	pop  af                                          ; $677f: $f1
	ld   de, $f21f                                   ; $6780: $11 $1f $f2
	ld   de, $feff                                   ; $6783: $11 $ff $fe
	ld   de, $ff1f                                   ; $6786: $11 $1f $ff
	ld   [hl], c                                     ; $6789: $71
	ld   a, [de]                                     ; $678a: $1a
	rst  $38                                         ; $678b: $ff
	pop  af                                          ; $678c: $f1
	cpl                                              ; $678d: $2f
	rst  $38                                         ; $678e: $ff
	ld   de, rAUD1LEN                                   ; $678f: $11 $11 $ff
	pop  hl                                          ; $6792: $e1
	ld   de, $ffff                                   ; $6793: $11 $ff $ff

Jump_0fb_6796:
	ld   de, rAUD1LEN                                   ; $6796: $11 $11 $ff
	ld   a, [$ac17]                                  ; $6799: $fa $17 $ac
	rst  $30                                         ; $679c: $f7
	ld   a, a                                        ; $679d: $7f
	rst  $38                                         ; $679e: $ff
	add  c                                           ; $679f: $81
	ld   de, $f69f                                   ; $67a0: $11 $9f $f6
	ld   de, $ff1f                                   ; $67a3: $11 $1f $ff
	pop  af                                          ; $67a6: $f1
	ld   de, $ff7f                                   ; $67a7: $11 $7f $ff
	cp   b                                           ; $67aa: $b8
	sub  [hl]                                        ; $67ab: $96
	xor  a                                           ; $67ac: $af
	rst  $38                                         ; $67ad: $ff
	rst  $38                                         ; $67ae: $ff
	ld   hl, $df11                                   ; $67af: $21 $11 $df
	ld   sp, hl                                      ; $67b2: $f9
	ld   de, $2f11                                   ; $67b3: $11 $11 $2f
	rst  $38                                         ; $67b6: $ff
	ld   [hl], c                                     ; $67b7: $71
	ld   de, $ff3f                                   ; $67b8: $11 $3f $ff
	ld   a, [$1451]                                  ; $67bb: $fa $51 $14
	rst  $38                                         ; $67be: $ff
	rst  $38                                         ; $67bf: $ff
	ld   de, $ef12                                   ; $67c0: $11 $12 $ef
	rst  $30                                         ; $67c3: $f7
	ld   de, $1611                                   ; $67c4: $11 $11 $16
	ld   e, b                                        ; $67c7: $58
	ei                                               ; $67c8: $fb
	and  e                                           ; $67c9: $a3
	ld   de, $ff5f                                   ; $67ca: $11 $5f $ff
	ld   a, [$1442]                                  ; $67cd: $fa $42 $14
	rst  $38                                         ; $67d0: $ff
	rst  $38                                         ; $67d1: $ff
	or   c                                           ; $67d2: $b1
	ld   [de], a                                     ; $67d3: $12
	adc  [hl]                                        ; $67d4: $8e
	push bc                                          ; $67d5: $c5
	ld   d, h                                        ; $67d6: $54
	ld   de, $1211                                   ; $67d7: $11 $11 $12
	rst  $38                                         ; $67da: $ff
	push af                                          ; $67db: $f5
	ld   de, $ff3e                                   ; $67dc: $11 $3e $ff
	ld   sp, hl                                      ; $67df: $f9
	halt                                             ; $67e0: $76
	ld   [hl], e                                     ; $67e1: $73
	ld   e, l                                        ; $67e2: $5d
	rst  $38                                         ; $67e3: $ff
	rst  $38                                         ; $67e4: $ff
	ld   de, $ff15                                   ; $67e5: $11 $15 $ff
	push af                                          ; $67e8: $f5
	ld   de, $4115                                   ; $67e9: $11 $15 $41
	dec  h                                           ; $67ec: $25
	cp   l                                           ; $67ed: $bd
	or   d                                           ; $67ee: $b2
	ld   de, $ff3d                                   ; $67ef: $11 $3d $ff
	db   $fc                                         ; $67f2: $fc
	and  a                                           ; $67f3: $a7
	adc  e                                           ; $67f4: $8b
	ld   h, a                                        ; $67f5: $67
	xor  l                                           ; $67f6: $ad
	rst  $38                                         ; $67f7: $ff
	ld   a, [$1a11]                                  ; $67f8: $fa $11 $1a
	rst  $38                                         ; $67fb: $ff
	sub  h                                           ; $67fc: $94
	ld   de, $1134                                   ; $67fd: $11 $34 $11
	inc  d                                           ; $6800: $14
	add  l                                           ; $6801: $85
	ld   h, c                                        ; $6802: $61
	jr   c, @-$73                                    ; $6803: $38 $8b

	sbc  $fb                                         ; $6805: $de $fb
	and  [hl]                                        ; $6807: $a6
	ld   a, [hl+]                                    ; $6808: $2a
	sbc  c                                           ; $6809: $99
	rst  $28                                         ; $680a: $ef
	rst  $38                                         ; $680b: $ff
	push de                                          ; $680c: $d5
	ld   c, b                                        ; $680d: $48
	call z, $17b3                                    ; $680e: $cc $b3 $17
	ld   e, e                                        ; $6811: $5b
	and  d                                           ; $6812: $a2
	ld   de, $8614                                   ; $6813: $11 $14 $86
	ld   sp, $af15                                   ; $6816: $31 $15 $af
	adc  d                                           ; $6819: $8a
	ld   a, b                                        ; $681a: $78
	cp   $ea                                         ; $681b: $fe $ea
	halt                                             ; $681d: $76
	add  a                                           ; $681e: $87
	xor  a                                           ; $681f: $af
	rst  $38                                         ; $6820: $ff
	ld   hl, sp+$49                                  ; $6821: $f8 $49
	sbc  e                                           ; $6823: $9b
	or   h                                           ; $6824: $b4
	ld   b, h                                        ; $6825: $44
	ld   l, b                                        ; $6826: $68
	ld   d, c                                        ; $6827: $51
	ld   de, $33b6                                   ; $6828: $11 $b6 $33
	ld   de, $3961                                   ; $682b: $11 $61 $39
	sbc  e                                           ; $682e: $9b
	ld   a, [$cb7b]                                  ; $682f: $fa $7b $cb
	call z, $b949                                    ; $6832: $cc $49 $b9
	db   $fd                                         ; $6835: $fd
	call c, $79fc                            ; $6836: $dc $fc $79
	dec  [hl]                                        ; $6839: $35
	ret                                              ; $683a: $c9


	ld   d, a                                        ; $683b: $57
	ld   [hl], h                                     ; $683c: $74
	and  h                                           ; $683d: $a4
	rla                                              ; $683e: $17
	inc  d                                           ; $683f: $14
	ld   [hl], e                                     ; $6840: $73
	dec  h                                           ; $6841: $25
	add  c                                           ; $6842: $81
	call nz, $ad1a                                   ; $6843: $c4 $1a $ad
	cp   [hl]                                        ; $6846: $be
	adc  e                                           ; $6847: $8b
	ld   a, [$87bb]                                  ; $6848: $fa $bb $87
	db   $eb                                         ; $684b: $eb
	cp   h                                           ; $684c: $bc
	sbc  h                                           ; $684d: $9c
	adc  $79                                         ; $684e: $ce $79
	xor  c                                           ; $6850: $a9
	add  h                                           ; $6851: $84
	ld   [hl], l                                     ; $6852: $75
	jp   z, $1121                                    ; $6853: $ca $21 $11

	ld   a, c                                        ; $6856: $79
	ld   a, b                                        ; $6857: $78
	ld   hl, $2c54                                   ; $6858: $21 $54 $2c
	adc  c                                           ; $685b: $89
	ei                                               ; $685c: $fb
	xor  l                                           ; $685d: $ad
	cp   b                                           ; $685e: $b8
	call z, $8bec                                    ; $685f: $cc $ec $8b
	ld   c, b                                        ; $6862: $48
	cp   e                                           ; $6863: $bb
	jp   c, $a4c6                                    ; $6864: $da $c6 $a4

	ld   l, a                                        ; $6867: $6f
	ld   h, h                                        ; $6868: $64
	jr   c, jr_0fb_68e5                              ; $6869: $38 $7a

	ld   h, c                                        ; $686b: $61
	ld   sp, $56b7                                   ; $686c: $31 $b7 $56
	rla                                              ; $686f: $17
	ld   a, h                                        ; $6870: $7c
	ld   [hl], h                                     ; $6871: $74
	dec  h                                           ; $6872: $25
	call $b7ca                                       ; $6873: $cd $ca $b7
	cp   d                                           ; $6876: $ba
	xor  l                                           ; $6877: $ad
	ld   a, b                                        ; $6878: $78
	adc  e                                           ; $6879: $8b
	sbc  b                                           ; $687a: $98
	sub  [hl]                                        ; $687b: $96
	adc  $ca                                         ; $687c: $ce $ca
	cp   e                                           ; $687e: $bb

jr_0fb_687f:
	ld   l, h                                        ; $687f: $6c
	ld   h, h                                        ; $6880: $64
	sbc  b                                           ; $6881: $98
	xor  d                                           ; $6882: $aa
	add  e                                           ; $6883: $83
	halt                                             ; $6884: $76
	daa                                              ; $6885: $27
	ld   d, d                                        ; $6886: $52
	dec  de                                          ; $6887: $1b
	ld   sp, $8a61                                   ; $6888: $31 $61 $8a
	add  [hl]                                        ; $688b: $86
	ld   c, b                                        ; $688c: $48
	xor  a                                           ; $688d: $af
	jp   z, $9b89                                    ; $688e: $ca $89 $9b

	cp   d                                           ; $6891: $ba
	and  [hl]                                        ; $6892: $a6
	ld   a, [$7cdf]                                  ; $6893: $fa $df $7c
	sub  l                                           ; $6896: $95
	ld   e, l                                        ; $6897: $5d
	sbc  h                                           ; $6898: $9c
	push bc                                          ; $6899: $c5
	ld   d, a                                        ; $689a: $57
	sub  a                                           ; $689b: $97
	and  l                                           ; $689c: $a5
	ld   [bc], a                                     ; $689d: $02
	ld   h, l                                        ; $689e: $65
	sbc  b                                           ; $689f: $98
	inc  de                                          ; $68a0: $13
	rla                                              ; $68a1: $17
	ld   h, a                                        ; $68a2: $67
	ld   b, c                                        ; $68a3: $41
	add  l                                           ; $68a4: $85
	xor  d                                           ; $68a5: $aa
	xor  e                                           ; $68a6: $ab
	xor  e                                           ; $68a7: $ab
	ld   a, h                                        ; $68a8: $7c
	xor  d                                           ; $68a9: $aa
	rst  ToBoot                                         ; $68aa: $c7
	cp   [hl]                                        ; $68ab: $be
	ld   [hl], l                                     ; $68ac: $75
	ret  z                                           ; $68ad: $c8

	xor  a                                           ; $68ae: $af
	sbc  d                                           ; $68af: $9a
	add  a                                           ; $68b0: $87
	xor  b                                           ; $68b1: $a8
	add  $98                                         ; $68b2: $c6 $98
	ld   l, h                                        ; $68b4: $6c
	add  [hl]                                        ; $68b5: $86
	ld   c, b                                        ; $68b6: $48
	dec  d                                           ; $68b7: $15
	ld   [hl], d                                     ; $68b8: $72
	halt                                             ; $68b9: $76
	ld   h, e                                        ; $68ba: $63
	ld   c, b                                        ; $68bb: $48
	ld   b, h                                        ; $68bc: $44
	ld   [hl], e                                     ; $68bd: $73
	ld   c, c                                        ; $68be: $49
	ld   c, c                                        ; $68bf: $49
	ret                                              ; $68c0: $c9


	db   $dd                                         ; $68c1: $dd
	xor  b                                           ; $68c2: $a8
	ld   a, d                                        ; $68c3: $7a
	xor  [hl]                                        ; $68c4: $ae
	rst  $10                                         ; $68c5: $d7
	cp   [hl]                                        ; $68c6: $be
	cp   c                                           ; $68c7: $b9
	sbc  b                                           ; $68c8: $98
	xor  l                                           ; $68c9: $ad
	ret  c                                           ; $68ca: $d8

	xor  d                                           ; $68cb: $aa
	sbc  c                                           ; $68cc: $99
	halt                                             ; $68cd: $76
	ld   l, d                                        ; $68ce: $6a
	ld   a, b                                        ; $68cf: $78
	ld   [hl], e                                     ; $68d0: $73
	dec  h                                           ; $68d1: $25
	ld   b, l                                        ; $68d2: $45
	sub  e                                           ; $68d3: $93
	ld   [hl], l                                     ; $68d4: $75
	rla                                              ; $68d5: $17
	ld   d, h                                        ; $68d6: $54
	and  a                                           ; $68d7: $a7
	jr   jr_0fb_687f                                 ; $68d8: $18 $a5

	xor  b                                           ; $68da: $a8
	ld   e, a                                        ; $68db: $5f
	ld   hl, sp-$4d                                  ; $68dc: $f8 $b3
	ld   a, a                                        ; $68de: $7f
	db   $ed                                         ; $68df: $ed
	xor  c                                           ; $68e0: $a9
	ld   a, h                                        ; $68e1: $7c
	cp   c                                           ; $68e2: $b9
	ld   a, b                                        ; $68e3: $78
	sbc  h                                           ; $68e4: $9c

jr_0fb_68e5:
	or   a                                           ; $68e5: $b7
	or   a                                           ; $68e6: $b7
	sbc  d                                           ; $68e7: $9a
	ld   h, a                                        ; $68e8: $67
	ld   a, c                                        ; $68e9: $79
	xor  d                                           ; $68ea: $aa
	ld   b, h                                        ; $68eb: $44
	ld   d, [hl]                                     ; $68ec: $56
	xor  c                                           ; $68ed: $a9
	ld   b, h                                        ; $68ee: $44
	inc  h                                           ; $68ef: $24
	sbc  c                                           ; $68f0: $99
	ld   [hl], h                                     ; $68f1: $74
	ld   [hl-], a                                    ; $68f2: $32
	ld   l, d                                        ; $68f3: $6a
	ld   h, [hl]                                     ; $68f4: $66
	ld   h, l                                        ; $68f5: $65
	adc  a                                           ; $68f6: $8f
	xor  e                                           ; $68f7: $ab
	add  $88                                         ; $68f8: $c6 $88
	cp   b                                           ; $68fa: $b8
	sbc  [hl]                                        ; $68fb: $9e
	xor  l                                           ; $68fc: $ad
	and  a                                           ; $68fd: $a7
	sbc  e                                           ; $68fe: $9b
	ld   l, c                                        ; $68ff: $69
	sub  $8b                                         ; $6900: $d6 $8b
	sbc  d                                           ; $6902: $9a
	xor  b                                           ; $6903: $a8
	ld   a, c                                        ; $6904: $79
	ld   a, b                                        ; $6905: $78
	ld   [hl], a                                     ; $6906: $77
	ld   h, a                                        ; $6907: $67
	ld   d, [hl]                                     ; $6908: $56
	add  l                                           ; $6909: $85
	ld   b, d                                        ; $690a: $42
	ld   b, [hl]                                     ; $690b: $46
	sbc  h                                           ; $690c: $9c
	add  a                                           ; $690d: $87
	ld   b, h                                        ; $690e: $44
	ld   h, [hl]                                     ; $690f: $66
	ld   l, c                                        ; $6910: $69
	ld   l, d                                        ; $6911: $6a
	xor  b                                           ; $6912: $a8
	sbc  c                                           ; $6913: $99
	xor  c                                           ; $6914: $a9
	or   [hl]                                        ; $6915: $b6
	sbc  c                                           ; $6916: $99
	xor  l                                           ; $6917: $ad
	adc  d                                           ; $6918: $8a
	ld   a, h                                        ; $6919: $7c
	ret  z                                           ; $691a: $c8

	add  l                                           ; $691b: $85
	xor  c                                           ; $691c: $a9
	cp   b                                           ; $691d: $b8
	sub  a                                           ; $691e: $97
	adc  h                                           ; $691f: $8c
	sbc  c                                           ; $6920: $99
	ld   d, a                                        ; $6921: $57
	adc  c                                           ; $6922: $89
	sub  l                                           ; $6923: $95
	ld   d, [hl]                                     ; $6924: $56
	ld   [hl], a                                     ; $6925: $77
	ld   h, e                                        ; $6926: $63
	ld   b, a                                        ; $6927: $47
	sbc  d                                           ; $6928: $9a
	and  [hl]                                        ; $6929: $a6
	dec  [hl]                                        ; $692a: $35
	halt                                             ; $692b: $76
	sbc  b                                           ; $692c: $98
	ld   h, a                                        ; $692d: $67
	xor  d                                           ; $692e: $aa
	add  a                                           ; $692f: $87
	ld   l, d                                        ; $6930: $6a
	sbc  b                                           ; $6931: $98
	xor  c                                           ; $6932: $a9
	xor  c                                           ; $6933: $a9
	ret                                              ; $6934: $c9


	ld   a, d                                        ; $6935: $7a
	xor  c                                           ; $6936: $a9
	sbc  d                                           ; $6937: $9a
	ld   a, e                                        ; $6938: $7b
	sbc  c                                           ; $6939: $99
	and  a                                           ; $693a: $a7
	sbc  b                                           ; $693b: $98
	xor  c                                           ; $693c: $a9
	ld   [hl], a                                     ; $693d: $77
	adc  c                                           ; $693e: $89
	sbc  c                                           ; $693f: $99
	ld   d, a                                        ; $6940: $57
	ld   d, a                                        ; $6941: $57
	add  [hl]                                        ; $6942: $86
	halt                                             ; $6943: $76
	ld   h, a                                        ; $6944: $67
	ld   a, b                                        ; $6945: $78
	halt                                             ; $6946: $76
	ld   [hl], a                                     ; $6947: $77
	ld   a, c                                        ; $6948: $79
	add  a                                           ; $6949: $87
	ld   h, [hl]                                     ; $694a: $66
	ld   l, b                                        ; $694b: $68
	sbc  c                                           ; $694c: $99
	sbc  c                                           ; $694d: $99
	sub  a                                           ; $694e: $97
	sbc  c                                           ; $694f: $99
	adc  c                                           ; $6950: $89
	xor  b                                           ; $6951: $a8
	xor  d                                           ; $6952: $aa
	adc  e                                           ; $6953: $8b
	adc  c                                           ; $6954: $89
	sbc  b                                           ; $6955: $98
	adc  c                                           ; $6956: $89
	adc  b                                           ; $6957: $88
	xor  c                                           ; $6958: $a9
	adc  d                                           ; $6959: $8a
	sub  a                                           ; $695a: $97
	sub  a                                           ; $695b: $97
	ld   a, c                                        ; $695c: $79
	halt                                             ; $695d: $76
	add  a                                           ; $695e: $87
	adc  b                                           ; $695f: $88
	ld   h, l                                        ; $6960: $65
	ld   [hl], a                                     ; $6961: $77
	ld   l, c                                        ; $6962: $69
	ld   [hl], a                                     ; $6963: $77
	add  [hl]                                        ; $6964: $86
	ld   a, b                                        ; $6965: $78
	add  a                                           ; $6966: $87
	add  a                                           ; $6967: $87
	ld   l, b                                        ; $6968: $68
	adc  b                                           ; $6969: $88
	and  a                                           ; $696a: $a7
	ld   a, c                                        ; $696b: $79
	adc  d                                           ; $696c: $8a
	sub  a                                           ; $696d: $97
	ld   a, c                                        ; $696e: $79
	xor  d                                           ; $696f: $aa
	adc  b                                           ; $6970: $88
	ld   a, b                                        ; $6971: $78
	xor  d                                           ; $6972: $aa
	xor  b                                           ; $6973: $a8
	ld   a, b                                        ; $6974: $78
	sbc  b                                           ; $6975: $98
	sbc  b                                           ; $6976: $98
	ld   a, c                                        ; $6977: $79
	adc  b                                           ; $6978: $88
	sbc  c                                           ; $6979: $99
	ld   [hl], a                                     ; $697a: $77
	ld   [hl], a                                     ; $697b: $77
	adc  b                                           ; $697c: $88
	add  a                                           ; $697d: $87
	ld   [hl], a                                     ; $697e: $77
	ld   [hl], a                                     ; $697f: $77
	ld   a, b                                        ; $6980: $78
	ld   [hl], a                                     ; $6981: $77
	adc  b                                           ; $6982: $88
	add  a                                           ; $6983: $87
	add  a                                           ; $6984: $87
	ld   a, b                                        ; $6985: $78
	sbc  c                                           ; $6986: $99
	add  a                                           ; $6987: $87
	ld   a, c                                        ; $6988: $79
	sbc  b                                           ; $6989: $98

Call_0fb_698a:
	sbc  b                                           ; $698a: $98
	adc  c                                           ; $698b: $89
	sbc  b                                           ; $698c: $98
	adc  b                                           ; $698d: $88
	sbc  b                                           ; $698e: $98
	sbc  c                                           ; $698f: $99
	ld   a, b                                        ; $6990: $78
	adc  c                                           ; $6991: $89
	sbc  b                                           ; $6992: $98
	adc  b                                           ; $6993: $88
	ld   a, b                                        ; $6994: $78
	sbc  c                                           ; $6995: $99
	sub  a                                           ; $6996: $97
	ld   [hl], a                                     ; $6997: $77
	adc  c                                           ; $6998: $89
	sbc  b                                           ; $6999: $98
	ld   [hl], a                                     ; $699a: $77
	ld   a, b                                        ; $699b: $78
	sbc  c                                           ; $699c: $99
	ld   [hl], a                                     ; $699d: $77
	ld   a, b                                        ; $699e: $78
	adc  b                                           ; $699f: $88
	add  a                                           ; $69a0: $87
	ld   a, b                                        ; $69a1: $78
	adc  c                                           ; $69a2: $89
	adc  b                                           ; $69a3: $88
	adc  b                                           ; $69a4: $88
	sbc  b                                           ; $69a5: $98
	sbc  b                                           ; $69a6: $98
	add  a                                           ; $69a7: $87
	adc  c                                           ; $69a8: $89
	adc  c                                           ; $69a9: $89
	adc  b                                           ; $69aa: $88
	adc  b                                           ; $69ab: $88
	adc  b                                           ; $69ac: $88
	adc  b                                           ; $69ad: $88
	ld   a, b                                        ; $69ae: $78
	sbc  c                                           ; $69af: $99
	adc  b                                           ; $69b0: $88
	ld   a, b                                        ; $69b1: $78
	adc  b                                           ; $69b2: $88
	adc  b                                           ; $69b3: $88
	adc  b                                           ; $69b4: $88
	adc  b                                           ; $69b5: $88
	adc  b                                           ; $69b6: $88
	adc  b                                           ; $69b7: $88
	adc  b                                           ; $69b8: $88
	adc  b                                           ; $69b9: $88
	adc  b                                           ; $69ba: $88
	adc  b                                           ; $69bb: $88
	adc  b                                           ; $69bc: $88
	adc  b                                           ; $69bd: $88
	adc  b                                           ; $69be: $88
	adc  b                                           ; $69bf: $88
	adc  b                                           ; $69c0: $88
	adc  b                                           ; $69c1: $88
	sbc  b                                           ; $69c2: $98
	adc  b                                           ; $69c3: $88
	adc  c                                           ; $69c4: $89
	sbc  c                                           ; $69c5: $99
	adc  b                                           ; $69c6: $88
	adc  b                                           ; $69c7: $88
	adc  b                                           ; $69c8: $88
	adc  b                                           ; $69c9: $88
	adc  b                                           ; $69ca: $88
	adc  b                                           ; $69cb: $88
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
	adc  b                                           ; $69d7: $88
	adc  b                                           ; $69d8: $88
	adc  b                                           ; $69d9: $88
	adc  b                                           ; $69da: $88
	adc  b                                           ; $69db: $88
	adc  b                                           ; $69dc: $88
	adc  b                                           ; $69dd: $88
	adc  b                                           ; $69de: $88
	adc  b                                           ; $69df: $88
	ld   de, $1111                                   ; $69e0: $11 $11 $11
	ld   de, $1111                                   ; $69e3: $11 $11 $11
	ld   de, $1111                                   ; $69e6: $11 $11 $11
	ld   de, $1111                                   ; $69e9: $11 $11 $11
	ld   de, $1111                                   ; $69ec: $11 $11 $11
	ld   de, $1111                                   ; $69ef: $11 $11 $11
	ld   de, $1111                                   ; $69f2: $11 $11 $11
	ld   de, $1111                                   ; $69f5: $11 $11 $11
	ld   de, $0011                                   ; $69f8: $11 $11 $00
	ld   c, b                                        ; $69fb: $48

; in case of null terminators
db $00, $00, $00

if def(VWF)

MiniGameResultsHook::
; Tile map hook
	ld   hl, $9800                                   ; $4fca: $21 $00 $98
	ld   de, $7dc5                                   ; $4fcd: $11 $c5 $7d
	call RLEXorCopy                                       ; $4fd0: $cd $d2 $09

	ld   a, BANK(.layoutBox)
	ldbc 6, 4
	ld   de, .layoutBox
	ld   hl, $9b68
	call FarCopyLayout

	ld   a, BANK(.results)
	ldbc 9, 2
	ld   de, .results
	ld   hl, $9842
	call FarCopyLayout

	ld   a, BANK(.highScore)
	ldbc 10, 3
	ld   de, .highScore
	ld   hl, $98a2
	call FarCopyLayout

	ld   a, BANK(.hiScorePopup)
	ldbc 3, 1
	ld   de, .hiScorePopup
	ld   hl, $9b43
	call FarCopyLayout

	ld   a, BANK(.pointsEarned)
	ldbc 10, 2
	ld   de, .pointsEarned
	ld   hl, $9962
	call FarCopyLayout

	ld   a, BANK(.ptsEarnedPopup)
	ldbc 4, 1
	ld   de, .ptsEarnedPopup
	ld   hl, $9be2
	call FarCopyLayout

	ld   a, BANK(.currPtTotal)
	ldbc 10, 4
	ld   de, .currPtTotal
	ld   hl, $99a2
	call FarCopyLayout

; Tile data hook
	ld   a, $18                                      ; $4fd3: $3e $18
	ld   hl, $8000                                   ; $4fd5: $21 $00 $80
	ld   de, $46f7                                   ; $4fd8: $11 $f7 $46
	call RLEXorCopy                                       ; $4fdb: $cd $d2 $09

	ld   bc, $50
	ld   de, $9000
	ld   hl, .row1
	call MemCopy

	ld   bc, $50
	ld   de, $9050
	ld   hl, .row2
	call MemCopy

	ld   bc, $60
	ld   de, $90a0
	ld   hl, .row3
	call MemCopy
	
	ld   bc, $60
	ld   de, $9100
	ld   hl, .row4
	call MemCopy

	ld   bc, $80
	ld   de, $9160
	ld   hl, .row5
	call MemCopy

	ld   bc, $80
	ld   de, $91e0
	ld   hl, .row6
	call MemCopy

	ld   bc, $a0
	ld   de, $9260
	ld   hl, .row7
	call MemCopy

	ld   bc, $a0
	ld   de, $9300
	ld   hl, .row8
	call MemCopy

	ld   bc, $20
	ld   de, $93a0
	ld   hl, .row9
	call MemCopy

	ld   bc, $a0
	ld   de, $93c0
	ld   hl, .row10
	call MemCopy

	ld   bc, $a0
	ld   de, $9460
	ld   hl, .row11
	call MemCopy

	ld   bc, $80
	ld   de, $9500
	ld   hl, .row12
	call MemCopy

	ld   bc, $a0
	ld   de, $9580
	ld   hl, .row13
	call MemCopy

	ld   bc, $a0
	ld   de, $9620
	ld   hl, .row14
	call MemCopy

	ld   bc, $a0
	ld   de, $96c0
	ld   hl, .row15
	call MemCopy

; Misc attributes
	ld   a, $01
	ldh  [rVBK], a

	ld   a, BANK(.highScoreAttr)
	ldbc 10, 3
	ld   de, .highScoreAttr
	ld   hl, $98a2
	call FarCopyLayout

	xor  a
	ldh  [rVBK], a
	ret
.row1:
	INCBIN "en_minigameResults.2bpp", 0, $50
.row2:
	INCBIN "en_minigameResults.2bpp", 10*$10, $50
.row3:
	INCBIN "en_minigameResults.2bpp", 20*$10, $60
.row4:
	INCBIN "en_minigameResults.2bpp", 30*$10, $60
.row5:
	INCBIN "en_minigameResults.2bpp", 40*$10, $80
.row6:
	INCBIN "en_minigameResults.2bpp", 50*$10, $80
.row7:
	INCBIN "en_minigameResults.2bpp", 60*$10, $a0
.row8:
	INCBIN "en_minigameResults.2bpp", 70*$10, $a0
.row9:
	INCBIN "en_minigameResults.2bpp", 82*$10, $20
.row10:
	INCBIN "en_minigameResults.2bpp", 90*$10, $a0
.row11:
	INCBIN "en_minigameResults.2bpp", 100*$10, $a0
.row12:
	INCBIN "en_minigameResults.2bpp", 111*$10, $80
.row13:
	INCBIN "en_minigameResults.2bpp", 120*$10, $a0
.row14:
	INCBIN "en_minigameResults.2bpp", 130*$10, $a0
.row15:
	INCBIN "en_minigameResults.2bpp", 140*$10, $a0
.layoutBox:
	db $00, $01, $02, $03, $04, $f6
	db $05, $06, $07, $08, $09, $f6
	db $0a, $0b, $0c, $0d, $0e, $0f
	db $10, $11, $12, $13, $14, $15
.results:
	db $16, $17, $18, $19, $1a, $1b, $1c, $1d, $80
	db $1e, $1f, $20, $21, $22, $23, $24, $25, $80
.highScore:
	db $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
	db $80, $80, $3a, $3b, $80, $80, $80, $80, $80, $80
.hiScorePopup:
	db $80, $3a, $3b
.pointsEarned:
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
	db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
.ptsEarnedPopup:
	db $3c, $3d, $3e, $3f
.currPtTotal:
	db $80, $50, $51, $52, $53, $54, $55, $56, $57, $80
	db $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61
	db $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
	db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75
.highScoreAttr:
	db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
	db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
	db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
endc