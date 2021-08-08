; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ae", ROMX[$4000], BANK[$ae]

	ld   de, $ff1f                                   ; $4000: $11 $1f $ff
	rst  $38                                         ; $4003: $ff
	add  l                                           ; $4004: $85
	ld   de, $ff1b                                   ; $4005: $11 $1b $ff
	db   $fc                                         ; $4008: $fc
	ld   de, $1111                                   ; $4009: $11 $11 $11
	rst  $38                                         ; $400c: $ff
	rst  $38                                         ; $400d: $ff
	ld   sp, hl                                      ; $400e: $f9
	ld   b, d                                        ; $400f: $42
	ld   de, $ffaf                                   ; $4010: $11 $af $ff
	pop  af                                          ; $4013: $f1
	ld   de, $1b11                                   ; $4014: $11 $11 $1b
	rst  $38                                         ; $4017: $ff
	rst  $38                                         ; $4018: $ff
	and  h                                           ; $4019: $a4
	ld   sp, $ff16                                   ; $401a: $31 $16 $ff
	rst  $38                                         ; $401d: $ff
	ld   de, $1111                                   ; $401e: $11 $11 $11
	cp   a                                           ; $4021: $bf
	rst  $38                                         ; $4022: $ff
	rst  $38                                         ; $4023: $ff
	ld   [hl], e                                     ; $4024: $73
	ld   de, $ff4f                                   ; $4025: $11 $4f $ff
	di                                               ; $4028: $f3
	ld   de, $1811                                   ; $4029: $11 $11 $18
	rst  $38                                         ; $402c: $ff
	rst  $38                                         ; $402d: $ff
	ei                                               ; $402e: $fb
	ld   d, c                                        ; $402f: $51
	ld   [de], a                                     ; $4030: $12
	rst  $38                                         ; $4031: $ff
	rst  $38                                         ; $4032: $ff
	ld   h, c                                        ; $4033: $61
	ld   de, $7f11                                   ; $4034: $11 $11 $7f
	rst  $38                                         ; $4037: $ff
	rst  $38                                         ; $4038: $ff
	add  sp, $11                                     ; $4039: $e8 $11
	rra                                              ; $403b: $1f
	rst  $38                                         ; $403c: $ff
	ld   sp, hl                                      ; $403d: $f9
	ld   de, $1211                                   ; $403e: $11 $11 $12
	rst  $38                                         ; $4041: $ff
	rst  $38                                         ; $4042: $ff
	ei                                               ; $4043: $fb
	sub  h                                           ; $4044: $94
	ld   de, $ffdf                                   ; $4045: $11 $df $ff
	and  c                                           ; $4048: $a1
	ld   de, $1e11                                   ; $4049: $11 $11 $1e
	rst  $38                                         ; $404c: $ff
	rst  $38                                         ; $404d: $ff
	rst  $38                                         ; $404e: $ff
	sub  c                                           ; $404f: $91
	jr   @+$01                                       ; $4050: $18 $ff

	db   $fd                                         ; $4052: $fd
	ld   sp, $1111                                   ; $4053: $31 $11 $11
	adc  a                                           ; $4056: $8f
	rst  $38                                         ; $4057: $ff
	rst  $38                                         ; $4058: $ff
	ei                                               ; $4059: $fb
	ld   de, $ff2f                                   ; $405a: $11 $2f $ff
	push af                                          ; $405d: $f5
	ld   de, $1611                                   ; $405e: $11 $11 $16
	rst  $38                                         ; $4061: $ff
	rst  $38                                         ; $4062: $ff
	rst  $38                                         ; $4063: $ff
	di                                               ; $4064: $f3
	ld   de, $fecf                                   ; $4065: $11 $cf $fe
	ld   [hl], c                                     ; $4068: $71
	ld   de, $6d11                                   ; $4069: $11 $11 $6d
	rst  $38                                         ; $406c: $ff
	rst  $38                                         ; $406d: $ff
	rst  $38                                         ; $406e: $ff
	add  c                                           ; $406f: $81
	add  hl, de                                      ; $4070: $19
	rst  $38                                         ; $4071: $ff
	add  sp, $11                                     ; $4072: $e8 $11
	ld   de, $bf15                                   ; $4074: $11 $15 $bf
	rst  $38                                         ; $4077: $ff
	rst  $38                                         ; $4078: $ff
	ei                                               ; $4079: $fb
	ld   [hl+], a                                    ; $407a: $22
	adc  [hl]                                        ; $407b: $8e
	cp   $a1                                         ; $407c: $fe $a1
	ld   de, $2811                                   ; $407e: $11 $11 $28
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4081: $cf
	rst  $38                                         ; $4082: $ff
	rst  $38                                         ; $4083: $ff
	ld   hl, sp+$36                                  ; $4084: $f8 $36
	adc  $d9                                         ; $4086: $ce $d9
	ld   d, c                                        ; $4088: $51
	ld   de, $6911                                   ; $4089: $11 $11 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $408c: $cf
	rst  $38                                         ; $408d: $ff
	rst  $38                                         ; $408e: $ff
	ld   sp, hl                                      ; $408f: $f9
	adc  e                                           ; $4090: $8b
	db   $ec                                         ; $4091: $ec
	and  [hl]                                        ; $4092: $a6
	ld   hl, $1111                                   ; $4093: $21 $11 $11
	ld   a, c                                        ; $4096: $79
	rst  JumpTable                                         ; $4097: $df
	rst  $38                                         ; $4098: $ff
	rst  $38                                         ; $4099: $ff
	jp   hl                                          ; $409a: $e9


	sbc  e                                           ; $409b: $9b
	jp   z, $11a6                                    ; $409c: $ca $a6 $11

	ld   de, $8816                                   ; $409f: $11 $16 $88
	sub  a                                           ; $40a2: $97
	sbc  c                                           ; $40a3: $99
	cp   l                                           ; $40a4: $bd
	res  5, e                                        ; $40a5: $cb $ab
	call z, $b889                                    ; $40a7: $cc $89 $b8
	ld   a, e                                        ; $40aa: $7b
	and  a                                           ; $40ab: $a7
	adc  b                                           ; $40ac: $88
	ld   d, c                                        ; $40ad: $51
	ld   [de], a                                     ; $40ae: $12
	inc  de                                          ; $40af: $13
	ld   l, b                                        ; $40b0: $68
	cp   l                                           ; $40b1: $bd
	db   $eb                                         ; $40b2: $eb
	adc  $db                                         ; $40b3: $ce $db
	call c, Call_0ae_55a7                            ; $40b5: $dc $a7 $55
	ld   [hl-], a                                    ; $40b8: $32
	ld   hl, $3611                                   ; $40b9: $21 $11 $36
	ld   a, e                                        ; $40bc: $7b
	xor  $dd                                         ; $40bd: $ee $dd
	xor  $ee                                         ; $40bf: $ee $ee
	db   $db                                         ; $40c1: $db
	sub  h                                           ; $40c2: $94
	ld   [de], a                                     ; $40c3: $12
	ld   sp, $1211                                   ; $40c4: $31 $11 $12
	ld   l, b                                        ; $40c7: $68
	xor  [hl]                                        ; $40c8: $ae
	rst  $38                                         ; $40c9: $ff
	cp   $fe                                         ; $40ca: $fe $fe
	call z, Call_0ae_41b8                            ; $40cc: $cc $b8 $41
	ld   de, $1221                                   ; $40cf: $11 $21 $12
	ld   [hl], $9d                                   ; $40d2: $36 $9d
	rst  $38                                         ; $40d4: $ff
	rst  $38                                         ; $40d5: $ff
	rst  $28                                         ; $40d6: $ef
	db   $fc                                         ; $40d7: $fc
	cp   e                                           ; $40d8: $bb
	sub  h                                           ; $40d9: $94
	ld   de, $1111                                   ; $40da: $11 $11 $11
	inc  d                                           ; $40dd: $14
	cp   a                                           ; $40de: $bf
	rst  $38                                         ; $40df: $ff
	rst  $38                                         ; $40e0: $ff
	cp   $ff                                         ; $40e1: $fe $ff
	jp   c, $1173                                    ; $40e3: $da $73 $11

	ld   de, $4511                                   ; $40e6: $11 $11 $45
	xor  a                                           ; $40e9: $af
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	db   $fd                                         ; $40ec: $fd
	adc  $da                                         ; $40ed: $ce $da
	and  l                                           ; $40ef: $a5
	ld   de, $1111                                   ; $40f0: $11 $11 $11
	dec  h                                           ; $40f3: $25
	adc  a                                           ; $40f4: $8f
	rst  $38                                         ; $40f5: $ff
	rst  $38                                         ; $40f6: $ff
	cp   $bc                                         ; $40f7: $fe $bc
	db   $fc                                         ; $40f9: $fc
	and  a                                           ; $40fa: $a7
	ld   sp, $1111                                   ; $40fb: $31 $11 $11
	dec  d                                           ; $40fe: $15
	ld   a, d                                        ; $40ff: $7a
	rst  $38                                         ; $4100: $ff
	rst  $38                                         ; $4101: $ff
	rst  $38                                         ; $4102: $ff
	db   $fc                                         ; $4103: $fc
	rst  $38                                         ; $4104: $ff
	jp   z, $1151                                    ; $4105: $ca $51 $11

	ld   de, $5611                                   ; $4108: $11 $11 $56
	cp   a                                           ; $410b: $bf
	rst  $38                                         ; $410c: $ff
	rst  $38                                         ; $410d: $ff
	rst  $38                                         ; $410e: $ff
	rst  JumpTable                                         ; $410f: $df
	ld   [$1173], a                                  ; $4110: $ea $73 $11
	ld   de, $2511                                   ; $4113: $11 $11 $25
	ld   l, h                                        ; $4116: $6c
	rst  $38                                         ; $4117: $ff
	rst  $38                                         ; $4118: $ff
	rst  $38                                         ; $4119: $ff
	db   $ed                                         ; $411a: $ed
	db   $fd                                         ; $411b: $fd
	sub  a                                           ; $411c: $97
	ld   b, c                                        ; $411d: $41
	ld   de, $1111                                   ; $411e: $11 $11 $11
	ld   [hl], $df                                   ; $4121: $36 $df
	rst  $38                                         ; $4123: $ff
	rst  $38                                         ; $4124: $ff
	cp   $ce                                         ; $4125: $fe $ce
	ret                                              ; $4127: $c9


	ld   [hl], e                                     ; $4128: $73
	ld   de, $1111                                   ; $4129: $11 $11 $11
	ld   [de], a                                     ; $412c: $12
	ld   a, a                                        ; $412d: $7f
	rst  $38                                         ; $412e: $ff
	rst  $38                                         ; $412f: $ff
	rst  $38                                         ; $4130: $ff
	call c, $97eb                                    ; $4131: $dc $eb $97
	ld   b, c                                        ; $4134: $41
	ld   de, $1111                                   ; $4135: $11 $11 $11
	dec  sp                                          ; $4138: $3b
	rst  $38                                         ; $4139: $ff
	rst  $38                                         ; $413a: $ff
	rst  $38                                         ; $413b: $ff
	db   $fc                                         ; $413c: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $413d: $cf
	cp   b                                           ; $413e: $b8
	ld   [hl], h                                     ; $413f: $74
	ld   de, $1111                                   ; $4140: $11 $11 $11
	inc  de                                          ; $4143: $13
	cp   a                                           ; $4144: $bf
	rst  $38                                         ; $4145: $ff
	rst  $38                                         ; $4146: $ff
	rst  $38                                         ; $4147: $ff
	adc  $eb                                         ; $4148: $ce $eb
	add  l                                           ; $414a: $85
	ld   b, c                                        ; $414b: $41
	ld   de, $1111                                   ; $414c: $11 $11 $11
	dec  sp                                          ; $414f: $3b
	rst  $38                                         ; $4150: $ff
	rst  $38                                         ; $4151: $ff
	rst  $38                                         ; $4152: $ff
	ei                                               ; $4153: $fb
	rst  JumpTable                                         ; $4154: $df
	or   a                                           ; $4155: $b7
	ld   d, h                                        ; $4156: $54
	ld   hl, $1111                                   ; $4157: $21 $11 $11
	ld   [de], a                                     ; $415a: $12
	cp   a                                           ; $415b: $bf
	rst  $38                                         ; $415c: $ff
	rst  $38                                         ; $415d: $ff
	rst  $38                                         ; $415e: $ff
	jp   z, $94db                                    ; $415f: $ca $db $94

	ld   hl, $1111                                   ; $4162: $21 $11 $11
	ld   de, $ff3a                                   ; $4165: $11 $3a $ff
	rst  $38                                         ; $4168: $ff
	rst  $38                                         ; $4169: $ff
	db   $fc                                         ; $416a: $fc
	call z, Call_0ae_5397                            ; $416b: $cc $97 $53
	ld   de, $1111                                   ; $416e: $11 $11 $11
	inc  d                                           ; $4171: $14
	cp   a                                           ; $4172: $bf
	rst  $38                                         ; $4173: $ff
	rst  $38                                         ; $4174: $ff
	rst  $38                                         ; $4175: $ff
	xor  d                                           ; $4176: $aa
	ret                                              ; $4177: $c9


	ld   [hl], e                                     ; $4178: $73
	ld   de, $1111                                   ; $4179: $11 $11 $11
	ld   [de], a                                     ; $417c: $12
	ld   a, [hl]                                     ; $417d: $7e
	rst  $38                                         ; $417e: $ff
	rst  $38                                         ; $417f: $ff
	rst  $38                                         ; $4180: $ff
	ld   a, [$96bb]                                  ; $4181: $fa $bb $96
	ld   hl, $1111                                   ; $4184: $21 $11 $11
	ld   de, $ff4a                                   ; $4187: $11 $4a $ff
	rst  $38                                         ; $418a: $ff
	rst  $38                                         ; $418b: $ff
	ei                                               ; $418c: $fb
	xor  d                                           ; $418d: $aa
	sub  [hl]                                        ; $418e: $96
	ld   sp, $1111                                   ; $418f: $31 $11 $11
	ld   de, $df48                                   ; $4192: $11 $48 $df
	rst  $38                                         ; $4195: $ff

Call_0ae_4196:
	rst  $38                                         ; $4196: $ff
	cp   $99                                         ; $4197: $fe $99
	sub  a                                           ; $4199: $97
	ld   d, c                                        ; $419a: $51
	ld   de, $1211                                   ; $419b: $11 $11 $12
	ld   c, b                                        ; $419e: $48
	rst  $38                                         ; $419f: $ff
	rst  $38                                         ; $41a0: $ff
	rst  $38                                         ; $41a1: $ff
	db   $fd                                         ; $41a2: $fd
	sub  a                                           ; $41a3: $97
	add  a                                           ; $41a4: $87
	ld   b, c                                        ; $41a5: $41
	ld   de, $1211                                   ; $41a6: $11 $11 $12
	ld   c, h                                        ; $41a9: $4c
	rst  $38                                         ; $41aa: $ff
	rst  $38                                         ; $41ab: $ff
	rst  $38                                         ; $41ac: $ff
	db   $fc                                         ; $41ad: $fc
	ld   a, d                                        ; $41ae: $7a
	sub  l                                           ; $41af: $95
	ld   sp, $1111                                   ; $41b0: $31 $11 $11
	inc  d                                           ; $41b3: $14
	ld   a, d                                        ; $41b4: $7a
	rst  $38                                         ; $41b5: $ff
	rst  $38                                         ; $41b6: $ff
	rst  $38                                         ; $41b7: $ff

Call_0ae_41b8:
	ld   [$8699], a                                  ; $41b8: $ea $99 $86
	ld   de, $1111                                   ; $41bb: $11 $11 $11
	inc  de                                          ; $41be: $13
	ld   a, [hl]                                     ; $41bf: $7e
	rst  $38                                         ; $41c0: $ff
	rst  $38                                         ; $41c1: $ff
	rst  $38                                         ; $41c2: $ff
	jp   c, $969a                                    ; $41c3: $da $9a $96

	ld   sp, $1111                                   ; $41c6: $31 $11 $11
	inc  de                                          ; $41c9: $13
	ld   e, h                                        ; $41ca: $5c
	rst  $38                                         ; $41cb: $ff
	rst  $38                                         ; $41cc: $ff
	rst  $38                                         ; $41cd: $ff
	ei                                               ; $41ce: $fb
	adc  d                                           ; $41cf: $8a
	add  [hl]                                        ; $41d0: $86
	ld   hl, $1111                                   ; $41d1: $21 $11 $11
	inc  de                                          ; $41d4: $13
	ld   e, e                                        ; $41d5: $5b
	rst  $38                                         ; $41d6: $ff
	rst  $38                                         ; $41d7: $ff
	rst  $38                                         ; $41d8: $ff
	ei                                               ; $41d9: $fb
	sbc  c                                           ; $41da: $99
	sub  a                                           ; $41db: $97
	ld   d, c                                        ; $41dc: $51
	ld   de, $1111                                   ; $41dd: $11 $11 $11
	jr   z, @+$01                                    ; $41e0: $28 $ff

	rst  $38                                         ; $41e2: $ff
	rst  $38                                         ; $41e3: $ff
	cp   $a9                                         ; $41e4: $fe $a9
	cp   b                                           ; $41e6: $b8
	ld   b, e                                        ; $41e7: $43
	ld   de, $1111                                   ; $41e8: $11 $11 $11
	ld   b, l                                        ; $41eb: $45
	ld   a, a                                        ; $41ec: $7f
	rst  $38                                         ; $41ed: $ff
	rst  $38                                         ; $41ee: $ff
	rst  $38                                         ; $41ef: $ff
	call z, $9499                                    ; $41f0: $cc $99 $94
	ld   de, $1111                                   ; $41f3: $11 $11 $11
	ld   de, $ff7e                                   ; $41f6: $11 $7e $ff
	rst  $38                                         ; $41f9: $ff
	rst  $38                                         ; $41fa: $ff
	db   $fc                                         ; $41fb: $fc
	xor  c                                           ; $41fc: $a9
	ld   [hl], a                                     ; $41fd: $77
	ld   d, c                                        ; $41fe: $51
	ld   de, $1111                                   ; $41ff: $11 $11 $11
	ld   d, $ff                                      ; $4202: $16 $ff
	rst  $38                                         ; $4204: $ff
	rst  $38                                         ; $4205: $ff
	rst  $38                                         ; $4206: $ff
	sbc  e                                           ; $4207: $9b
	ret                                              ; $4208: $c9


	ld   h, h                                        ; $4209: $64
	ld   de, $1111                                   ; $420a: $11 $11 $11
	ld   de, $ff6f                                   ; $420d: $11 $6f $ff
	rst  $38                                         ; $4210: $ff
	rst  $38                                         ; $4211: $ff
	ld   a, [$87ab]                                  ; $4212: $fa $ab $87
	ld   d, c                                        ; $4215: $51
	ld   de, $1111                                   ; $4216: $11 $11 $11
	ld   h, $df                                      ; $4219: $26 $df
	rst  $38                                         ; $421b: $ff
	rst  $38                                         ; $421c: $ff
	rst  $38                                         ; $421d: $ff
	db   $db                                         ; $421e: $db
	sbc  c                                           ; $421f: $99
	add  [hl]                                        ; $4220: $86
	ld   hl, $1111                                   ; $4221: $21 $11 $11
	ld   de, $ff4c                                   ; $4224: $11 $4c $ff
	rst  $38                                         ; $4227: $ff
	rst  $38                                         ; $4228: $ff
	db   $fd                                         ; $4229: $fd
	call c, Call_0ae_7598                            ; $422a: $dc $98 $75
	ld   de, $1111                                   ; $422d: $11 $11 $11
	ld   de, $ff9f                                   ; $4230: $11 $9f $ff
	rst  $38                                         ; $4233: $ff
	rst  $38                                         ; $4234: $ff
	db   $fd                                         ; $4235: $fd
	res  3, b                                        ; $4236: $cb $98
	ld   [hl], e                                     ; $4238: $73
	ld   de, $1111                                   ; $4239: $11 $11 $11
	ld   [de], a                                     ; $423c: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $423d: $cf
	rst  $38                                         ; $423e: $ff
	rst  $38                                         ; $423f: $ff
	rst  $38                                         ; $4240: $ff
	cp   $db                                         ; $4241: $fe $db
	adc  c                                           ; $4243: $89
	ld   [hl], d                                     ; $4244: $72
	ld   de, $1111                                   ; $4245: $11 $11 $11
	inc  d                                           ; $4248: $14
	xor  a                                           ; $4249: $af
	rst  $38                                         ; $424a: $ff
	rst  $38                                         ; $424b: $ff
	rst  $38                                         ; $424c: $ff
	cp   $da                                         ; $424d: $fe $da
	sbc  b                                           ; $424f: $98
	ld   h, e                                        ; $4250: $63
	ld   de, $1111                                   ; $4251: $11 $11 $11
	ld   [de], a                                     ; $4254: $12
	ld   l, l                                        ; $4255: $6d
	rst  $38                                         ; $4256: $ff
	rst  $38                                         ; $4257: $ff
	rst  $38                                         ; $4258: $ff
	rst  $38                                         ; $4259: $ff
	db   $db                                         ; $425a: $db
	xor  c                                           ; $425b: $a9
	add  a                                           ; $425c: $87
	ld   hl, $1111                                   ; $425d: $21 $11 $11
	ld   de, $cd27                                   ; $4260: $11 $27 $cd
	rst  $38                                         ; $4263: $ff
	rst  $38                                         ; $4264: $ff
	rst  $38                                         ; $4265: $ff
	cp   $cb                                         ; $4266: $fe $cb
	xor  d                                           ; $4268: $aa
	add  h                                           ; $4269: $84
	ld   de, $1111                                   ; $426a: $11 $11 $11
	ld   hl, $7936                                   ; $426d: $21 $36 $79
	cp   [hl]                                        ; $4270: $be
	rst  $38                                         ; $4271: $ff
	cp   $ee                                         ; $4272: $fe $ee
	call z, $96bb                                    ; $4274: $cc $bb $96
	ld   b, d                                        ; $4277: $42
	inc  hl                                          ; $4278: $23
	ld   b, h                                        ; $4279: $44
	ld   b, h                                        ; $427a: $44
	inc  [hl]                                        ; $427b: $34
	ld   b, l                                        ; $427c: $45
	ld   d, [hl]                                     ; $427d: $56
	adc  d                                           ; $427e: $8a
	cp   h                                           ; $427f: $bc
	res  7, e                                        ; $4280: $cb $bb
	cp   d                                           ; $4282: $ba
	cp   e                                           ; $4283: $bb
	xor  d                                           ; $4284: $aa
	sbc  d                                           ; $4285: $9a
	xor  d                                           ; $4286: $aa
	adc  c                                           ; $4287: $89
	add  a                                           ; $4288: $87
	halt                                             ; $4289: $76
	ld   h, [hl]                                     ; $428a: $66
	ld   h, l                                        ; $428b: $65
	ld   d, l                                        ; $428c: $55
	ld   d, l                                        ; $428d: $55
	ld   d, [hl]                                     ; $428e: $56
	ld   h, a                                        ; $428f: $67
	adc  c                                           ; $4290: $89
	sbc  e                                           ; $4291: $9b
	cp   h                                           ; $4292: $bc
	call z, $abbb                                    ; $4293: $cc $bb $ab
	xor  c                                           ; $4296: $a9
	sbc  b                                           ; $4297: $98
	add  a                                           ; $4298: $87
	ld   h, [hl]                                     ; $4299: $66
	ld   h, l                                        ; $429a: $65
	ld   d, l                                        ; $429b: $55
	ld   d, [hl]                                     ; $429c: $56
	ld   h, [hl]                                     ; $429d: $66
	ld   h, [hl]                                     ; $429e: $66
	ld   [hl], a                                     ; $429f: $77
	ld   a, b                                        ; $42a0: $78
	adc  b                                           ; $42a1: $88
	sbc  d                                           ; $42a2: $9a
	sbc  d                                           ; $42a3: $9a
	xor  d                                           ; $42a4: $aa
	xor  d                                           ; $42a5: $aa
	sbc  d                                           ; $42a6: $9a
	xor  c                                           ; $42a7: $a9
	adc  c                                           ; $42a8: $89
	sbc  b                                           ; $42a9: $98
	adc  b                                           ; $42aa: $88
	add  a                                           ; $42ab: $87
	ld   [hl], a                                     ; $42ac: $77
	ld   [hl], a                                     ; $42ad: $77
	ld   h, [hl]                                     ; $42ae: $66
	ld   h, [hl]                                     ; $42af: $66
	ld   h, [hl]                                     ; $42b0: $66
	ld   h, [hl]                                     ; $42b1: $66
	ld   [hl], a                                     ; $42b2: $77
	ld   a, b                                        ; $42b3: $78
	adc  c                                           ; $42b4: $89
	sbc  d                                           ; $42b5: $9a
	sbc  d                                           ; $42b6: $9a
	xor  d                                           ; $42b7: $aa
	xor  d                                           ; $42b8: $aa
	sbc  c                                           ; $42b9: $99
	adc  c                                           ; $42ba: $89
	adc  b                                           ; $42bb: $88
	ld   [hl], a                                     ; $42bc: $77
	halt                                             ; $42bd: $76
	ld   h, [hl]                                     ; $42be: $66
	ld   h, [hl]                                     ; $42bf: $66
	ld   h, a                                        ; $42c0: $67
	ld   [hl], a                                     ; $42c1: $77
	adc  b                                           ; $42c2: $88
	adc  c                                           ; $42c3: $89
	sbc  c                                           ; $42c4: $99
	sbc  c                                           ; $42c5: $99
	sbc  c                                           ; $42c6: $99
	sbc  c                                           ; $42c7: $99
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88
	adc  b                                           ; $42ca: $88
	ld   [hl], a                                     ; $42cb: $77
	ld   a, b                                        ; $42cc: $78
	adc  c                                           ; $42cd: $89
	sbc  c                                           ; $42ce: $99
	sbc  c                                           ; $42cf: $99
	adc  b                                           ; $42d0: $88
	adc  b                                           ; $42d1: $88
	add  a                                           ; $42d2: $87
	ld   [hl], a                                     ; $42d3: $77
	ld   [hl], a                                     ; $42d4: $77
	ld   [hl], a                                     ; $42d5: $77
	ld   [hl], a                                     ; $42d6: $77
	ld   [hl], a                                     ; $42d7: $77
	ld   a, b                                        ; $42d8: $78
	sbc  b                                           ; $42d9: $98
	sbc  c                                           ; $42da: $99
	adc  b                                           ; $42db: $88
	adc  c                                           ; $42dc: $89
	sbc  c                                           ; $42dd: $99
	sbc  c                                           ; $42de: $99
	adc  b                                           ; $42df: $88
	add  a                                           ; $42e0: $87
	ld   [hl], a                                     ; $42e1: $77
	ld   [hl], a                                     ; $42e2: $77
	ld   [hl], a                                     ; $42e3: $77
	ld   a, b                                        ; $42e4: $78
	adc  c                                           ; $42e5: $89
	sbc  c                                           ; $42e6: $99
	sbc  b                                           ; $42e7: $98
	adc  b                                           ; $42e8: $88
	adc  b                                           ; $42e9: $88
	sbc  c                                           ; $42ea: $99
	sbc  b                                           ; $42eb: $98
	adc  b                                           ; $42ec: $88
	ld   [hl], a                                     ; $42ed: $77
	ld   [hl], a                                     ; $42ee: $77
	ld   a, b                                        ; $42ef: $78
	adc  b                                           ; $42f0: $88
	sbc  c                                           ; $42f1: $99
	sbc  c                                           ; $42f2: $99
	adc  b                                           ; $42f3: $88
	adc  b                                           ; $42f4: $88
	adc  b                                           ; $42f5: $88
	adc  c                                           ; $42f6: $89
	adc  b                                           ; $42f7: $88
	adc  b                                           ; $42f8: $88
	adc  b                                           ; $42f9: $88
	adc  b                                           ; $42fa: $88
	adc  b                                           ; $42fb: $88
	adc  c                                           ; $42fc: $89
	sbc  c                                           ; $42fd: $99
	sbc  b                                           ; $42fe: $98
	adc  b                                           ; $42ff: $88
	adc  b                                           ; $4300: $88
	adc  b                                           ; $4301: $88
	adc  b                                           ; $4302: $88
	adc  b                                           ; $4303: $88
	adc  b                                           ; $4304: $88
	adc  b                                           ; $4305: $88
	adc  b                                           ; $4306: $88
	adc  c                                           ; $4307: $89
	sbc  b                                           ; $4308: $98
	adc  b                                           ; $4309: $88
	sbc  b                                           ; $430a: $98
	adc  b                                           ; $430b: $88
	adc  b                                           ; $430c: $88
	ld   [hl], a                                     ; $430d: $77
	ld   a, b                                        ; $430e: $78
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	adc  b                                           ; $4311: $88
	adc  b                                           ; $4312: $88
	sbc  b                                           ; $4313: $98
	adc  c                                           ; $4314: $89
	adc  b                                           ; $4315: $88
	sbc  c                                           ; $4316: $99
	adc  b                                           ; $4317: $88
	adc  b                                           ; $4318: $88
	ld   [hl], a                                     ; $4319: $77
	ld   [hl], a                                     ; $431a: $77
	ld   [hl], a                                     ; $431b: $77
	adc  b                                           ; $431c: $88
	adc  b                                           ; $431d: $88
	adc  b                                           ; $431e: $88
	sbc  b                                           ; $431f: $98
	adc  b                                           ; $4320: $88
	adc  c                                           ; $4321: $89
	sbc  c                                           ; $4322: $99
	sbc  b                                           ; $4323: $98
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
	adc  b                                           ; $4391: $88
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
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
	sbc  b                                           ; $43d3: $98
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
	adc  d                                           ; $43db: $8a
	sub  a                                           ; $43dc: $97
	xor  e                                           ; $43dd: $ab
	sbc  c                                           ; $43de: $99
	ld   [hl], a                                     ; $43df: $77
	sbc  b                                           ; $43e0: $98
	sbc  d                                           ; $43e1: $9a
	add  [hl]                                        ; $43e2: $86
	halt                                             ; $43e3: $76
	adc  b                                           ; $43e4: $88
	ld   a, c                                        ; $43e5: $79
	adc  c                                           ; $43e6: $89
	sbc  c                                           ; $43e7: $99
	adc  b                                           ; $43e8: $88
	sbc  d                                           ; $43e9: $9a
	sbc  b                                           ; $43ea: $98
	adc  b                                           ; $43eb: $88
	sub  a                                           ; $43ec: $97
	ld   a, d                                        ; $43ed: $7a
	jp   hl                                          ; $43ee: $e9


	ld   h, [hl]                                     ; $43ef: $66
	ld   l, c                                        ; $43f0: $69
	xor  c                                           ; $43f1: $a9
	halt                                             ; $43f2: $76
	adc  b                                           ; $43f3: $88
	sub  a                                           ; $43f4: $97
	ld   l, b                                        ; $43f5: $68
	adc  b                                           ; $43f6: $88
	sub  [hl]                                        ; $43f7: $96
	ld   a, b                                        ; $43f8: $78
	add  a                                           ; $43f9: $87
	ld   [hl], a                                     ; $43fa: $77
	ld   a, c                                        ; $43fb: $79
	ld   [hl], a                                     ; $43fc: $77
	ld   [hl], a                                     ; $43fd: $77
	sbc  b                                           ; $43fe: $98
	adc  b                                           ; $43ff: $88
	adc  b                                           ; $4400: $88
	ld   [hl], a                                     ; $4401: $77
	add  a                                           ; $4402: $87
	ld   [hl], a                                     ; $4403: $77
	ld   a, c                                        ; $4404: $79
	ld   h, a                                        ; $4405: $67
	ld   [hl], a                                     ; $4406: $77
	adc  b                                           ; $4407: $88
	halt                                             ; $4408: $76
	ld   a, b                                        ; $4409: $78
	add  a                                           ; $440a: $87
	ld   [hl], a                                     ; $440b: $77
	add  a                                           ; $440c: $87
	ld   [hl], a                                     ; $440d: $77
	ld   l, c                                        ; $440e: $69
	sbc  b                                           ; $440f: $98
	adc  b                                           ; $4410: $88
	sbc  c                                           ; $4411: $99
	sbc  c                                           ; $4412: $99
	sbc  c                                           ; $4413: $99
	sbc  c                                           ; $4414: $99
	xor  c                                           ; $4415: $a9
	adc  c                                           ; $4416: $89
	adc  b                                           ; $4417: $88
	ld   h, l                                        ; $4418: $65
	ld   b, e                                        ; $4419: $43
	inc  sp                                          ; $441a: $33
	ld   [hl+], a                                    ; $441b: $22
	inc  [hl]                                        ; $441c: $34
	ld   h, [hl]                                     ; $441d: $66
	adc  c                                           ; $441e: $89
	cp   l                                           ; $441f: $bd
	rst  $38                                         ; $4420: $ff
	rst  $28                                         ; $4421: $ef
	cp   $cc                                         ; $4422: $fe $cc
	xor  d                                           ; $4424: $aa
	jp   z, Jump_0ae_7698                            ; $4425: $ca $98 $76

	ld   b, d                                        ; $4428: $42
	ld   de, $1111                                   ; $4429: $11 $11 $11
	inc  de                                          ; $442c: $13
	ld   e, c                                        ; $442d: $59
	call $ffff                                       ; $442e: $cd $ff $ff
	rst  $38                                         ; $4431: $ff
	db   $ed                                         ; $4432: $ed
	call $9ab9                                       ; $4433: $cd $b9 $9a
	call z, Call_0ae_65b9                            ; $4436: $cc $b9 $65
	ld   sp, $1111                                   ; $4439: $31 $11 $11
	ld   de, $ae14                                   ; $443c: $11 $14 $ae
	rst  $38                                         ; $443f: $ff
	rst  $38                                         ; $4440: $ff
	rst  $38                                         ; $4441: $ff
	db   $fd                                         ; $4442: $fd
	xor  d                                           ; $4443: $aa
	xor  d                                           ; $4444: $aa
	sbc  b                                           ; $4445: $98
	sbc  h                                           ; $4446: $9c
	cp   $d9                                         ; $4447: $fe $d9
	ld   [hl], l                                     ; $4449: $75
	ld   sp, $1111                                   ; $444a: $31 $11 $11
	ld   de, $ef26                                   ; $444d: $11 $26 $ef
	rst  $38                                         ; $4450: $ff
	rst  $38                                         ; $4451: $ff
	rst  $38                                         ; $4452: $ff
	ld   [$8966], a                                  ; $4453: $ea $66 $89
	sbc  d                                           ; $4456: $9a
	cp   a                                           ; $4457: $bf
	rst  $38                                         ; $4458: $ff
	ei                                               ; $4459: $fb
	add  [hl]                                        ; $445a: $86
	ld   b, c                                        ; $445b: $41
	ld   de, $1111                                   ; $445c: $11 $11 $11
	daa                                              ; $445f: $27
	rst  JumpTable                                         ; $4460: $df
	rst  $38                                         ; $4461: $ff
	rst  $38                                         ; $4462: $ff
	rst  $38                                         ; $4463: $ff
	jp   z, $6975                                    ; $4464: $ca $75 $69

	xor  e                                           ; $4467: $ab
	rst  JumpTable                                         ; $4468: $df
	rst  $38                                         ; $4469: $ff
	cp   $b7                                         ; $446a: $fe $b7
	ld   b, d                                        ; $446c: $42
	ld   de, $1111                                   ; $446d: $11 $11 $11
	dec  d                                           ; $4470: $15
	sbc  [hl]                                        ; $4471: $9e
	rst  $38                                         ; $4472: $ff
	rst  $38                                         ; $4473: $ff
	db   $fc                                         ; $4474: $fc
	cp   e                                           ; $4475: $bb
	and  a                                           ; $4476: $a7
	ld   [hl], l                                     ; $4477: $75
	xor  h                                           ; $4478: $ac
	rst  $28                                         ; $4479: $ef
	rst  $38                                         ; $447a: $ff
	rst  $38                                         ; $447b: $ff
	db   $fc                                         ; $447c: $fc
	ld   [hl], h                                     ; $447d: $74
	ld   de, $1111                                   ; $447e: $11 $11 $11
	ld   de, $df16                                   ; $4481: $11 $16 $df
	rst  $38                                         ; $4484: $ff
	rst  $38                                         ; $4485: $ff
	reti                                             ; $4486: $d9


	cp   h                                           ; $4487: $bc
	sbc  c                                           ; $4488: $99
	adc  c                                           ; $4489: $89
	adc  $ff                                         ; $448a: $ce $ff
	rst  $38                                         ; $448c: $ff
	rst  $38                                         ; $448d: $ff
	jp   c, $1174                                    ; $448e: $da $74 $11

	ld   de, $1111                                   ; $4491: $11 $11 $11
	rla                                              ; $4494: $17
	cp   a                                           ; $4495: $bf
	rst  $38                                         ; $4496: $ff
	rst  $38                                         ; $4497: $ff
	ret  c                                           ; $4498: $d8

	xor  e                                           ; $4499: $ab
	cp   e                                           ; $449a: $bb
	sbc  c                                           ; $449b: $99
	adc  $ef                                         ; $449c: $ce $ef
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	ei                                               ; $44a0: $fb
	ld   [hl], h                                     ; $44a1: $74
	ld   de, $1111                                   ; $44a2: $11 $11 $11
	ld   de, $be15                                   ; $44a5: $11 $15 $be
	rst  $38                                         ; $44a8: $ff
	rst  $38                                         ; $44a9: $ff
	jp   c, $bb8b                                    ; $44aa: $da $8b $bb

	xor  b                                           ; $44ad: $a8
	cp   [hl]                                        ; $44ae: $be
	rst  $38                                         ; $44af: $ff
	rst  $38                                         ; $44b0: $ff
	rst  $38                                         ; $44b1: $ff
	db   $fd                                         ; $44b2: $fd
	add  l                                           ; $44b3: $85
	ld   hl, $1111                                   ; $44b4: $21 $11 $11
	ld   de, $8c11                                   ; $44b7: $11 $11 $8c
	rst  $38                                         ; $44ba: $ff
	rst  $38                                         ; $44bb: $ff
	jp   c, $bc9a                                    ; $44bc: $da $9a $bc

	res  7, h                                        ; $44bf: $cb $bc
	rst  $28                                         ; $44c1: $ef
	rst  $38                                         ; $44c2: $ff
	rst  $38                                         ; $44c3: $ff
	rst  $38                                         ; $44c4: $ff
	cp   b                                           ; $44c5: $b8
	ld   [hl-], a                                    ; $44c6: $32
	ld   de, $1111                                   ; $44c7: $11 $11 $11
	ld   de, $bf16                                   ; $44ca: $11 $16 $bf
	rst  $38                                         ; $44cd: $ff
	db   $fc                                         ; $44ce: $fc
	cp   e                                           ; $44cf: $bb
	cp   h                                           ; $44d0: $bc
	call z, $dcbc                                    ; $44d1: $cc $bc $dc
	rst  JumpTable                                         ; $44d4: $df
	rst  $38                                         ; $44d5: $ff
	rst  $38                                         ; $44d6: $ff
	db   $eb                                         ; $44d7: $eb
	ld   h, h                                        ; $44d8: $64
	ld   hl, $1111                                   ; $44d9: $21 $11 $11
	ld   de, $6b11                                   ; $44dc: $11 $11 $6b
	rst  $38                                         ; $44df: $ff
	rst  $38                                         ; $44e0: $ff
	ret  c                                           ; $44e1: $d8

	cp   l                                           ; $44e2: $bd
	call $deba                                       ; $44e3: $cd $ba $de
	db   $ed                                         ; $44e6: $ed
	rst  JumpTable                                         ; $44e7: $df
	rst  $38                                         ; $44e8: $ff
	cp   $b7                                         ; $44e9: $fe $b7
	ld   b, e                                        ; $44eb: $43
	ld   de, $1111                                   ; $44ec: $11 $11 $11
	ld   de, $ee18                                   ; $44ef: $11 $18 $ee
	xor  $ff                                         ; $44f2: $ee $ff
	ld   sp, hl                                      ; $44f4: $f9
	ld   a, c                                        ; $44f5: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44f6: $cf
	db   $fc                                         ; $44f7: $fc
	sbc  c                                           ; $44f8: $99
	rst  JumpTable                                         ; $44f9: $df
	rst  $38                                         ; $44fa: $ff
	rst  $38                                         ; $44fb: $ff
	rst  $38                                         ; $44fc: $ff
	and  h                                           ; $44fd: $a4
	ld   de, $1111                                   ; $44fe: $11 $11 $11
	ld   de, $4a11                                   ; $4501: $11 $11 $4a
	rst  JumpTable                                         ; $4504: $df
	cp   $ee                                         ; $4505: $fe $ee
	xor  d                                           ; $4507: $aa
	sbc  d                                           ; $4508: $9a
	sbc  $dc                                         ; $4509: $de $dc
	cp   e                                           ; $450b: $bb
	rst  $28                                         ; $450c: $ef
	rst  $38                                         ; $450d: $ff
	rst  $38                                         ; $450e: $ff
	db   $eb                                         ; $450f: $eb
	ld   [hl], e                                     ; $4510: $73
	ld   de, $1111                                   ; $4511: $11 $11 $11
	ld   de, $6c11                                   ; $4514: $11 $11 $6c
	rst  $28                                         ; $4517: $ef
	cp   $fb                                         ; $4518: $fe $fb
	adc  d                                           ; $451a: $8a
	xor  l                                           ; $451b: $ad
	db   $ec                                         ; $451c: $ec
	call z, $ffde                                    ; $451d: $cc $de $ff
	rst  $38                                         ; $4520: $ff
	rst  $38                                         ; $4521: $ff
	ret  z                                           ; $4522: $c8

	ld   b, d                                        ; $4523: $42
	ld   hl, $1111                                   ; $4524: $21 $11 $11
	ld   de, $8d12                                   ; $4527: $11 $12 $8d
	rst  $38                                         ; $452a: $ff
	rst  $38                                         ; $452b: $ff
	jp   c, $9d99                                    ; $452c: $da $99 $9d

	db   $ed                                         ; $452f: $ed
	call c, $ffce                                    ; $4530: $dc $ce $ff
	rst  $38                                         ; $4533: $ff
	cp   $c7                                         ; $4534: $fe $c7
	ld   sp, $1111                                   ; $4536: $31 $11 $11
	ld   de, $1411                                   ; $4539: $11 $11 $14
	xor  a                                           ; $453c: $af
	rst  $38                                         ; $453d: $ff
	rst  $38                                         ; $453e: $ff
	ld   [$bf89], a                                  ; $453f: $ea $89 $bf
	cp   $bb                                         ; $4542: $fe $bb
	cp   [hl]                                        ; $4544: $be
	rst  $38                                         ; $4545: $ff
	rst  $38                                         ; $4546: $ff
	cp   $c7                                         ; $4547: $fe $c7
	ld   hl, $2111                                   ; $4549: $21 $11 $21
	ld   de, $1511                                   ; $454c: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $454f: $cf
	rst  $38                                         ; $4550: $ff
	db   $fd                                         ; $4551: $fd
	ei                                               ; $4552: $fb
	adc  c                                           ; $4553: $89
	sbc  l                                           ; $4554: $9d
	cp   $b9                                         ; $4555: $fe $b9
	sbc  h                                           ; $4557: $9c
	rst  $38                                         ; $4558: $ff
	rst  $38                                         ; $4559: $ff
	db   $fd                                         ; $455a: $fd
	cp   d                                           ; $455b: $ba
	ld   sp, $1111                                   ; $455c: $31 $11 $11
	ld   de, $1911                                   ; $455f: $11 $11 $19
	xor  $ee                                         ; $4562: $ee $ee
	rst  $38                                         ; $4564: $ff
	add  sp, $69                                     ; $4565: $e8 $69
	cp   a                                           ; $4567: $bf
	db   $fc                                         ; $4568: $fc
	sbc  b                                           ; $4569: $98
	xor  [hl]                                        ; $456a: $ae
	rst  $38                                         ; $456b: $ff
	cp   $fe                                         ; $456c: $fe $fe
	ret  z                                           ; $456e: $c8

	ld   hl, $1111                                   ; $456f: $21 $11 $11
	ld   de, $1911                                   ; $4572: $11 $11 $19
	rst  $38                                         ; $4575: $ff
	cp   $ef                                         ; $4576: $fe $ef
	db   $eb                                         ; $4578: $eb
	ld   h, [hl]                                     ; $4579: $66
	sbc  l                                           ; $457a: $9d
	rst  $38                                         ; $457b: $ff
	and  a                                           ; $457c: $a7
	sbc  h                                           ; $457d: $9c
	rst  $38                                         ; $457e: $ff
	cp   $ee                                         ; $457f: $fe $ee
	reti                                             ; $4581: $d9


	ld   b, c                                        ; $4582: $41
	ld   de, $1101                                   ; $4583: $11 $01 $11
	ld   de, $ff17                                   ; $4586: $11 $17 $ff
	db   $fc                                         ; $4589: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $458a: $cf
	db   $fc                                         ; $458b: $fc
	sub  [hl]                                        ; $458c: $96
	ld   a, e                                        ; $458d: $7b
	cp   $d9                                         ; $458e: $fe $d9
	sbc  h                                           ; $4590: $9c
	rst  $38                                         ; $4591: $ff
	rst  $38                                         ; $4592: $ff
	db   $eb                                         ; $4593: $eb
	cp   d                                           ; $4594: $ba
	ld   d, c                                        ; $4595: $51
	ld   de, $1111                                   ; $4596: $11 $11 $11
	ld   de, $ef15                                   ; $4599: $11 $15 $ef
	cp   $cc                                         ; $459c: $fe $cc
	db   $db                                         ; $459e: $db
	sbc  c                                           ; $459f: $99
	sbc  h                                           ; $45a0: $9c
	db   $ed                                         ; $45a1: $ed
	jp   c, $ffad                                    ; $45a2: $da $ad $ff

	rst  $38                                         ; $45a5: $ff
	db   $dd                                         ; $45a6: $dd
	cp   e                                           ; $45a7: $bb
	ld   [hl], d                                     ; $45a8: $72
	ld   de, $1111                                   ; $45a9: $11 $11 $11
	ld   de, $cf14                                   ; $45ac: $11 $14 $cf
	cp   $dc                                         ; $45af: $fe $dc
	xor  $a8                                         ; $45b1: $ee $a8
	adc  c                                           ; $45b3: $89
	call $bccc                                       ; $45b4: $cd $cc $bc
	rst  $38                                         ; $45b7: $ff
	rst  $38                                         ; $45b8: $ff
	db   $fd                                         ; $45b9: $fd
	cp   c                                           ; $45ba: $b9
	ld   h, e                                        ; $45bb: $63
	ld   de, $1111                                   ; $45bc: $11 $11 $11
	ld   de, $cf13                                   ; $45bf: $11 $13 $cf
	rst  $38                                         ; $45c2: $ff
	db   $dd                                         ; $45c3: $dd
	call c, $9bb9                                    ; $45c4: $dc $b9 $9b
	call z, $acdb                                    ; $45c7: $cc $db $ac
	rst  $28                                         ; $45ca: $ef
	rst  $38                                         ; $45cb: $ff
	db   $fc                                         ; $45cc: $fc
	cp   c                                           ; $45cd: $b9
	ld   [hl], h                                     ; $45ce: $74
	ld   de, $1111                                   ; $45cf: $11 $11 $11
	ld   de, $bf12                                   ; $45d2: $11 $12 $bf
	rst  $38                                         ; $45d5: $ff
	db   $ed                                         ; $45d6: $ed
	db   $dd                                         ; $45d7: $dd
	ret                                              ; $45d8: $c9


	sbc  c                                           ; $45d9: $99
	cp   l                                           ; $45da: $bd
	db   $ed                                         ; $45db: $ed
	xor  e                                           ; $45dc: $ab
	adc  $ff                                         ; $45dd: $ce $ff
	db   $fd                                         ; $45df: $fd
	cp   c                                           ; $45e0: $b9
	add  l                                           ; $45e1: $85
	ld   sp, $1111                                   ; $45e2: $31 $11 $11
	ld   de, $8f11                                   ; $45e5: $11 $11 $8f
	rst  $38                                         ; $45e8: $ff
	db   $ec                                         ; $45e9: $ec
	db   $dd                                         ; $45ea: $dd
	res  3, d                                        ; $45eb: $cb $9a
	xor  e                                           ; $45ed: $ab
	cp   e                                           ; $45ee: $bb
	cp   h                                           ; $45ef: $bc
	rst  JumpTable                                         ; $45f0: $df
	rst  $38                                         ; $45f1: $ff
	cp   $ca                                         ; $45f2: $fe $ca
	ld   [hl], h                                     ; $45f4: $74
	ld   de, $1111                                   ; $45f5: $11 $11 $11
	ld   de, $8e11                                   ; $45f8: $11 $11 $8e
	rst  $38                                         ; $45fb: $ff
	cp   $dd                                         ; $45fc: $fe $dd
	jp   z, $ac8a                                    ; $45fe: $ca $8a $ac

	db   $db                                         ; $4601: $db
	xor  e                                           ; $4602: $ab
	rst  JumpTable                                         ; $4603: $df
	rst  $38                                         ; $4604: $ff
	db   $fd                                         ; $4605: $fd
	res  0, l                                        ; $4606: $cb $85
	ld   hl, $1111                                   ; $4608: $21 $11 $11
	ld   de, $9f11                                   ; $460b: $11 $11 $9f
	rst  $38                                         ; $460e: $ff
	rst  $38                                         ; $460f: $ff
	db   $ed                                         ; $4610: $ed
	jp   z, $bba9                                    ; $4611: $ca $a9 $bb

	cp   e                                           ; $4614: $bb
	cp   e                                           ; $4615: $bb
	rst  JumpTable                                         ; $4616: $df
	rst  $38                                         ; $4617: $ff
	cp   $b9                                         ; $4618: $fe $b9
	ld   h, e                                        ; $461a: $63
	ld   de, $1111                                   ; $461b: $11 $11 $11
	ld   de, $cf15                                   ; $461e: $11 $15 $cf
	rst  $38                                         ; $4621: $ff
	cp   $ec                                         ; $4622: $fe $ec
	cp   d                                           ; $4624: $ba
	xor  d                                           ; $4625: $aa
	xor  h                                           ; $4626: $ac
	cp   d                                           ; $4627: $ba
	set  3, a                                        ; $4628: $cb $df
	rst  $38                                         ; $462a: $ff
	db   $fd                                         ; $462b: $fd
	cp   c                                           ; $462c: $b9
	ld   d, d                                        ; $462d: $52
	ld   de, $1111                                   ; $462e: $11 $11 $11
	ld   de, $ff3b                                   ; $4631: $11 $3b $ff
	rst  $38                                         ; $4634: $ff
	db   $ec                                         ; $4635: $ec
	db   $db                                         ; $4636: $db
	sbc  e                                           ; $4637: $9b
	sbc  e                                           ; $4638: $9b
	cp   d                                           ; $4639: $ba
	cp   h                                           ; $463a: $bc
	cp   l                                           ; $463b: $bd
	rst  $38                                         ; $463c: $ff
	rst  $38                                         ; $463d: $ff
	db   $eb                                         ; $463e: $eb
	add  l                                           ; $463f: $85
	ld   de, $1111                                   ; $4640: $11 $11 $11
	ld   de, $df14                                   ; $4643: $11 $14 $df
	rst  $38                                         ; $4646: $ff
	cp   $ec                                         ; $4647: $fe $ec
	cp   c                                           ; $4649: $b9
	sbc  d                                           ; $464a: $9a
	xor  h                                           ; $464b: $ac
	res  5, h                                        ; $464c: $cb $ac
	rst  JumpTable                                         ; $464e: $df
	rst  $38                                         ; $464f: $ff
	cp   $a7                                         ; $4650: $fe $a7
	ld   b, c                                        ; $4652: $41
	ld   de, $1111                                   ; $4653: $11 $11 $11
	ld   de, $ff7f                                   ; $4656: $11 $7f $ff
	rst  $38                                         ; $4659: $ff
	call c, $88ca                                    ; $465a: $dc $ca $88
	xor  d                                           ; $465d: $aa
	call z, $cecb                                    ; $465e: $cc $cb $ce
	rst  $38                                         ; $4661: $ff
	rst  $38                                         ; $4662: $ff
	ret                                              ; $4663: $c9


	ld   d, c                                        ; $4664: $51
	ld   de, $1111                                   ; $4665: $11 $11 $11
	ld   de, $ff6e                                   ; $4668: $11 $6e $ff
	rst  $38                                         ; $466b: $ff
	xor  $b9                                         ; $466c: $ee $b9
	ld   [hl], a                                     ; $466e: $77
	adc  e                                           ; $466f: $8b
	db   $dd                                         ; $4670: $dd
	res  7, [hl]                                     ; $4671: $cb $be
	rst  $38                                         ; $4673: $ff
	rst  $38                                         ; $4674: $ff

Jump_0ae_4675:
	reti                                             ; $4675: $d9


	ld   h, d                                        ; $4676: $62
	ld   de, $1111                                   ; $4677: $11 $11 $11
	ld   de, $ff7f                                   ; $467a: $11 $7f $ff
	rst  $38                                         ; $467d: $ff
	xor  $b8                                         ; $467e: $ee $b8
	ld   h, [hl]                                     ; $4680: $66
	adc  h                                           ; $4681: $8c
	db   $ed                                         ; $4682: $ed
	call z, $ffdf                                    ; $4683: $cc $df $ff
	cp   $ca                                         ; $4686: $fe $ca
	ld   h, d                                        ; $4688: $62
	ld   de, $1111                                   ; $4689: $11 $11 $11
	ld   de, $ffbf                                   ; $468c: $11 $bf $ff
	rst  $38                                         ; $468f: $ff
	db   $eb                                         ; $4690: $eb
	sub  [hl]                                        ; $4691: $96
	ld   d, a                                        ; $4692: $57
	xor  l                                           ; $4693: $ad
	db   $ec                                         ; $4694: $ec
	call z, $ffff                                    ; $4695: $cc $ff $ff
	db   $fc                                         ; $4698: $fc
	cp   b                                           ; $4699: $b8
	ld   sp, $1111                                   ; $469a: $31 $11 $11
	ld   de, $ff1a                                   ; $469d: $11 $1a $ff
	rst  $38                                         ; $46a0: $ff
	cp   $b8                                         ; $46a1: $fe $b8
	ld   d, h                                        ; $46a3: $54
	ld   a, e                                        ; $46a4: $7b
	rst  $28                                         ; $46a5: $ef
	xor  $de                                         ; $46a6: $ee $de
	rst  $38                                         ; $46a8: $ff
	rst  $38                                         ; $46a9: $ff
	db   $db                                         ; $46aa: $db
	ld   [hl], c                                     ; $46ab: $71
	ld   de, $1111                                   ; $46ac: $11 $11 $11
	ld   de, $ffcf                                   ; $46af: $11 $cf $ff
	rst  $38                                         ; $46b2: $ff
	reti                                             ; $46b3: $d9


	ld   d, h                                        ; $46b4: $54
	ld   e, c                                        ; $46b5: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46b6: $cf
	cp   $de                                         ; $46b7: $fe $de
	rst  $38                                         ; $46b9: $ff
	rst  $38                                         ; $46ba: $ff
	db   $fd                                         ; $46bb: $fd
	and  [hl]                                        ; $46bc: $a6
	ld   de, $1111                                   ; $46bd: $11 $11 $11
	ld   de, $ff7f                                   ; $46c0: $11 $7f $ff
	rst  $38                                         ; $46c3: $ff
	reti                                             ; $46c4: $d9


	ld   h, e                                        ; $46c5: $63
	ld   c, c                                        ; $46c6: $49
	cp   [hl]                                        ; $46c7: $be
	cp   $ff                                         ; $46c8: $fe $ff
	rst  $38                                         ; $46ca: $ff
	rst  $38                                         ; $46cb: $ff
	call c, $11a5                                    ; $46cc: $dc $a5 $11
	ld   de, $1111                                   ; $46cf: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46d2: $cf
	rst  $38                                         ; $46d3: $ff
	rst  $38                                         ; $46d4: $ff
	ret                                              ; $46d5: $c9


	ld   b, c                                        ; $46d6: $41
	ld   c, c                                        ; $46d7: $49
	rst  JumpTable                                         ; $46d8: $df
	cp   $ff                                         ; $46d9: $fe $ff
	rst  $38                                         ; $46db: $ff
	rst  $38                                         ; $46dc: $ff
	jp   c, $1193                                    ; $46dd: $da $93 $11

	ld   de, $1811                                   ; $46e0: $11 $11 $18
	rst  $38                                         ; $46e3: $ff
	rst  $38                                         ; $46e4: $ff
	rst  $38                                         ; $46e5: $ff
	sub  h                                           ; $46e6: $94
	ld   de, $ff7d                                   ; $46e7: $11 $7d $ff
	db   $dd                                         ; $46ea: $dd
	rst  $38                                         ; $46eb: $ff
	rst  $38                                         ; $46ec: $ff
	db   $fc                                         ; $46ed: $fc
	xor  d                                           ; $46ee: $aa
	ld   [hl], c                                     ; $46ef: $71
	ld   de, $1111                                   ; $46f0: $11 $11 $11
	adc  a                                           ; $46f3: $8f
	rst  $38                                         ; $46f4: $ff
	rst  $38                                         ; $46f5: $ff
	ld   a, [$1731]                                  ; $46f6: $fa $31 $17
	rst  JumpTable                                         ; $46f9: $df
	db   $fd                                         ; $46fa: $fd
	cp   [hl]                                        ; $46fb: $be
	rst  $38                                         ; $46fc: $ff
	rst  $38                                         ; $46fd: $ff
	res  6, a                                        ; $46fe: $cb $b7
	ld   de, $1111                                   ; $4700: $11 $11 $11
	dec  e                                           ; $4703: $1d
	rst  $38                                         ; $4704: $ff
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	ld   [hl], c                                     ; $4707: $71
	ld   de, $ff6e                                   ; $4708: $11 $6e $ff
	call z, $ffff                                    ; $470b: $cc $ff $ff
	db   $fc                                         ; $470e: $fc
	cp   d                                           ; $470f: $ba
	ld   b, c                                        ; $4710: $41
	ld   de, $1711                                   ; $4711: $11 $11 $17
	rst  $38                                         ; $4714: $ff
	rst  $38                                         ; $4715: $ff
	rst  $38                                         ; $4716: $ff
	or   h                                           ; $4717: $b4
	ld   de, $ff3d                                   ; $4718: $11 $3d $ff
	ret                                              ; $471b: $c9


	rst  JumpTable                                         ; $471c: $df
	rst  $38                                         ; $471d: $ff
	db   $fc                                         ; $471e: $fc
	cp   h                                           ; $471f: $bc
	ld   [hl], c                                     ; $4720: $71
	ld   de, $1711                                   ; $4721: $11 $11 $17
	rst  $38                                         ; $4724: $ff
	rst  $38                                         ; $4725: $ff
	rst  $38                                         ; $4726: $ff
	or   e                                           ; $4727: $b3
	ld   de, $ff4e                                   ; $4728: $11 $4e $ff
	ret  c                                           ; $472b: $d8

	cp   a                                           ; $472c: $bf
	rst  $38                                         ; $472d: $ff
	db   $fc                                         ; $472e: $fc
	cp   e                                           ; $472f: $bb
	ld   h, c                                        ; $4730: $61
	ld   de, $1f11                                   ; $4731: $11 $11 $1f
	rst  $38                                         ; $4734: $ff
	rst  $38                                         ; $4735: $ff
	rst  $38                                         ; $4736: $ff
	or   c                                           ; $4737: $b1
	ld   de, $ff8f                                   ; $4738: $11 $8f $ff
	sub  l                                           ; $473b: $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $473c: $cf
	rst  $38                                         ; $473d: $ff
	add  sp, -$66                                    ; $473e: $e8 $9a
	ld   hl, $1111                                   ; $4740: $21 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4743: $cf
	rst  $38                                         ; $4744: $ff
	rst  $38                                         ; $4745: $ff
	rst  $38                                         ; $4746: $ff
	ld   b, c                                        ; $4747: $41
	ld   de, $fcff                                   ; $4748: $11 $ff $fc
	ld   l, c                                        ; $474b: $69
	rst  $38                                         ; $474c: $ff
	rst  $38                                         ; $474d: $ff
	ld   [hl], a                                     ; $474e: $77
	and  h                                           ; $474f: $a4
	ld   de, $1d11                                   ; $4750: $11 $11 $1d
	rst  $38                                         ; $4753: $ff
	rst  $38                                         ; $4754: $ff
	rst  $38                                         ; $4755: $ff
	push af                                          ; $4756: $f5
	ld   de, $ff1f                                   ; $4757: $11 $1f $ff
	jp   $ff6f                                       ; $475a: $c3 $6f $ff


	and  $6a                                         ; $475d: $e6 $6a
	ld   d, c                                        ; $475f: $51
	ld   de, rAUD1LEN                                   ; $4760: $11 $11 $ff
	rst  $38                                         ; $4763: $ff
	rst  $38                                         ; $4764: $ff
	rst  $38                                         ; $4765: $ff
	ld   sp, $ff16                                   ; $4766: $31 $16 $ff
	rst  $30                                         ; $4769: $f7
	dec  sp                                          ; $476a: $3b
	rst  $38                                         ; $476b: $ff
	ld   sp, hl                                      ; $476c: $f9
	ld   e, b                                        ; $476d: $58
	sub  c                                           ; $476e: $91
	ld   de, $4f11                                   ; $476f: $11 $11 $4f
	rst  $38                                         ; $4772: $ff
	rst  $38                                         ; $4773: $ff
	rst  $38                                         ; $4774: $ff
	and  c                                           ; $4775: $a1
	ld   de, $fcff                                   ; $4776: $11 $ff $fc
	jr   c, @+$01                                    ; $4779: $38 $ff

	db   $fc                                         ; $477b: $fc
	ld   b, [hl]                                     ; $477c: $46
	sub  h                                           ; $477d: $94
	ld   de, $1f11                                   ; $477e: $11 $11 $1f
	rst  $38                                         ; $4781: $ff
	rst  $38                                         ; $4782: $ff
	rst  $38                                         ; $4783: $ff
	pop  de                                          ; $4784: $d1
	ld   de, $ffdf                                   ; $4785: $11 $df $ff
	ld   b, a                                        ; $4788: $47
	rst  $38                                         ; $4789: $ff
	ei                                               ; $478a: $fb
	ld   de, $1186                                   ; $478b: $11 $86 $11
	ld   de, $ff1f                                   ; $478e: $11 $1f $ff
	rst  $38                                         ; $4791: $ff
	rst  $38                                         ; $4792: $ff
	pop  de                                          ; $4793: $d1
	ld   de, $fdbf                                   ; $4794: $11 $bf $fd
	ld   b, a                                        ; $4797: $47
	rst  $38                                         ; $4798: $ff
	ld   sp, hl                                      ; $4799: $f9
	ld   [de], a                                     ; $479a: $12
	halt                                             ; $479b: $76
	ld   de, $1f11                                   ; $479c: $11 $11 $1f
	rst  $38                                         ; $479f: $ff
	rst  $38                                         ; $47a0: $ff
	rst  $38                                         ; $47a1: $ff
	pop  bc                                          ; $47a2: $c1
	ld   de, $fcdf                                   ; $47a3: $11 $df $fc
	ld   e, h                                        ; $47a6: $5c
	rst  $38                                         ; $47a7: $ff
	push af                                          ; $47a8: $f5
	ld   [de], a                                     ; $47a9: $12
	ld   h, c                                        ; $47aa: $61
	ld   de, rAUD1LEN                                   ; $47ab: $11 $11 $ff
	rst  $38                                         ; $47ae: $ff
	rst  $38                                         ; $47af: $ff
	rst  $38                                         ; $47b0: $ff
	ld   sp, rAUD1LOW                                   ; $47b1: $31 $13 $ff
	rst  $30                                         ; $47b4: $f7
	adc  a                                           ; $47b5: $8f
	rst  $38                                         ; $47b6: $ff
	or   c                                           ; $47b7: $b1
	inc  d                                           ; $47b8: $14
	ld   hl, $1611                                   ; $47b9: $21 $11 $16
	rst  $38                                         ; $47bc: $ff
	rst  $38                                         ; $47bd: $ff
	rst  $38                                         ; $47be: $ff
	ld   sp, hl                                      ; $47bf: $f9
	ld   de, $ff1e                                   ; $47c0: $11 $1e $ff
	adc  b                                           ; $47c3: $88
	rst  $38                                         ; $47c4: $ff
	db   $fc                                         ; $47c5: $fc
	ld   de, $1135                                   ; $47c6: $11 $35 $11
	ld   de, $ff0f                                   ; $47c9: $11 $0f $ff
	rst  $38                                         ; $47cc: $ff
	rst  $38                                         ; $47cd: $ff
	pop  hl                                          ; $47ce: $e1
	ld   de, $f6df                                   ; $47cf: $11 $df $f6
	ld   e, a                                        ; $47d2: $5f
	rst  $38                                         ; $47d3: $ff
	pop  af                                          ; $47d4: $f1
	ld   de, $1121                                   ; $47d5: $11 $21 $11
	ld   de, $ffff                                   ; $47d8: $11 $ff $ff
	rst  $38                                         ; $47db: $ff
	rst  $38                                         ; $47dc: $ff
	ld   hl, $fd1b                                   ; $47dd: $21 $1b $fd
	ld   a, c                                        ; $47e0: $79
	rst  $38                                         ; $47e1: $ff
	ei                                               ; $47e2: $fb
	ld   de, $1111                                   ; $47e3: $11 $11 $11
	ld   de, $ff9f                                   ; $47e6: $11 $9f $ff
	rst  $38                                         ; $47e9: $ff
	rst  $38                                         ; $47ea: $ff
	jp   nc, rAUD1LOW                                   ; $47eb: $d2 $13 $ff

	sub  l                                           ; $47ee: $95
	adc  a                                           ; $47ef: $8f
	rst  $38                                         ; $47f0: $ff
	ld   [hl], c                                     ; $47f1: $71
	ld   de, $1111                                   ; $47f2: $11 $11 $11
	rra                                              ; $47f5: $1f
	rst  $38                                         ; $47f6: $ff
	rst  $38                                         ; $47f7: $ff
	rst  $38                                         ; $47f8: $ff
	ei                                               ; $47f9: $fb
	ld   de, $a6ad                                   ; $47fa: $11 $ad $a6
	ld   l, h                                        ; $47fd: $6c
	rst  $38                                         ; $47fe: $ff
	ld   [hl], c                                     ; $47ff: $71
	ld   de, $1111                                   ; $4800: $11 $11 $11
	dec  e                                           ; $4803: $1d
	rst  $38                                         ; $4804: $ff
	rst  $38                                         ; $4805: $ff
	rst  $38                                         ; $4806: $ff
	cp   $55                                         ; $4807: $fe $55
	xor  e                                           ; $4809: $ab
	and  [hl]                                        ; $480a: $a6
	ld   e, d                                        ; $480b: $5a
	db   $ec                                         ; $480c: $ec
	ld   h, c                                        ; $480d: $61
	ld   de, $1111                                   ; $480e: $11 $11 $11
	add  hl, de                                      ; $4811: $19
	rst  $38                                         ; $4812: $ff
	rst  $38                                         ; $4813: $ff
	rst  $38                                         ; $4814: $ff
	rst  $38                                         ; $4815: $ff
	cp   e                                           ; $4816: $bb
	cp   h                                           ; $4817: $bc
	sub  a                                           ; $4818: $97
	ld   a, c                                        ; $4819: $79
	and  a                                           ; $481a: $a7
	ld   hl, $1111                                   ; $481b: $21 $11 $11
	ld   de, $ff19                                   ; $481e: $11 $19 $ff
	rst  $38                                         ; $4821: $ff
	rst  $38                                         ; $4822: $ff
	rst  $38                                         ; $4823: $ff
	db   $ed                                         ; $4824: $ed
	res  5, b                                        ; $4825: $cb $a8
	ld   [hl], a                                     ; $4827: $77
	ld   h, e                                        ; $4828: $63
	ld   de, $1111                                   ; $4829: $11 $11 $11
	ld   de, $df28                                   ; $482c: $11 $28 $df
	rst  $38                                         ; $482f: $ff
	rst  $38                                         ; $4830: $ff
	rst  $38                                         ; $4831: $ff
	cp   $cb                                         ; $4832: $fe $cb
	xor  c                                           ; $4834: $a9
	halt                                             ; $4835: $76
	ld   b, c                                        ; $4836: $41
	ld   de, $1111                                   ; $4837: $11 $11 $11
	ld   de, $be36                                   ; $483a: $11 $36 $be
	rst  $38                                         ; $483d: $ff
	rst  $38                                         ; $483e: $ff
	rst  $38                                         ; $483f: $ff
	rst  $38                                         ; $4840: $ff

Jump_0ae_4841:
	jp   c, Jump_0ae_76a9                            ; $4841: $da $a9 $76

	ld   b, c                                        ; $4844: $41
	ld   de, $1111                                   ; $4845: $11 $11 $11
	ld   de, $9925                                   ; $4848: $11 $25 $99
	xor  l                                           ; $484b: $ad
	rst  $38                                         ; $484c: $ff
	rst  $38                                         ; $484d: $ff
	rst  $38                                         ; $484e: $ff
	db   $db                                         ; $484f: $db
	xor  c                                           ; $4850: $a9
	ld   h, [hl]                                     ; $4851: $66
	ld   h, [hl]                                     ; $4852: $66
	ld   h, l                                        ; $4853: $65
	ld   [hl+], a                                    ; $4854: $22
	inc  [hl]                                        ; $4855: $34
	ld   d, h                                        ; $4856: $54
	ld   [hl+], a                                    ; $4857: $22
	ld   b, l                                        ; $4858: $45
	ld   h, [hl]                                     ; $4859: $66
	ld   a, c                                        ; $485a: $79
	rst  JumpTable                                         ; $485b: $df
	rst  $38                                         ; $485c: $ff
	db   $ed                                         ; $485d: $ed
	cp   d                                           ; $485e: $ba
	sbc  c                                           ; $485f: $99
	adc  c                                           ; $4860: $89
	sub  a                                           ; $4861: $97
	ld   h, [hl]                                     ; $4862: $66
	ld   d, [hl]                                     ; $4863: $56
	cp   d                                           ; $4864: $ba
	ld   [hl], l                                     ; $4865: $75
	ld   b, l                                        ; $4866: $45
	halt                                             ; $4867: $76
	ld   b, h                                        ; $4868: $44
	ld   h, a                                        ; $4869: $67
	sbc  c                                           ; $486a: $99
	adc  c                                           ; $486b: $89
	cp   e                                           ; $486c: $bb
	xor  c                                           ; $486d: $a9
	sbc  c                                           ; $486e: $99
	xor  c                                           ; $486f: $a9
	sbc  e                                           ; $4870: $9b
	call c, Call_0ae_7996                            ; $4871: $dc $96 $79
	and  a                                           ; $4874: $a7
	ld   h, l                                        ; $4875: $65
	ld   h, a                                        ; $4876: $67
	ld   h, l                                        ; $4877: $65
	ld   b, l                                        ; $4878: $45
	ld   l, b                                        ; $4879: $68
	halt                                             ; $487a: $76
	ld   h, [hl]                                     ; $487b: $66
	adc  c                                           ; $487c: $89
	adc  b                                           ; $487d: $88
	xor  d                                           ; $487e: $aa
	cp   e                                           ; $487f: $bb
	xor  c                                           ; $4880: $a9
	xor  e                                           ; $4881: $ab
	xor  c                                           ; $4882: $a9
	adc  b                                           ; $4883: $88
	adc  b                                           ; $4884: $88
	ld   [hl], a                                     ; $4885: $77
	ld   [hl], a                                     ; $4886: $77
	ld   [hl], a                                     ; $4887: $77
	ld   [hl], a                                     ; $4888: $77
	halt                                             ; $4889: $76
	ld   [hl], a                                     ; $488a: $77
	ld   [hl], a                                     ; $488b: $77
	adc  c                                           ; $488c: $89
	adc  c                                           ; $488d: $89
	adc  b                                           ; $488e: $88
	adc  b                                           ; $488f: $88
	adc  b                                           ; $4890: $88
	adc  b                                           ; $4891: $88
	sbc  c                                           ; $4892: $99
	adc  b                                           ; $4893: $88
	adc  c                                           ; $4894: $89
	sbc  d                                           ; $4895: $9a
	sbc  c                                           ; $4896: $99
	adc  b                                           ; $4897: $88
	adc  b                                           ; $4898: $88
	adc  b                                           ; $4899: $88
	adc  c                                           ; $489a: $89
	adc  c                                           ; $489b: $89
	adc  b                                           ; $489c: $88
	ld   [hl], a                                     ; $489d: $77
	ld   [hl], a                                     ; $489e: $77
	ld   [hl], a                                     ; $489f: $77
	ld   [hl], a                                     ; $48a0: $77
	ld   [hl], a                                     ; $48a1: $77
	ld   a, b                                        ; $48a2: $78
	sbc  c                                           ; $48a3: $99
	sbc  d                                           ; $48a4: $9a
	sbc  c                                           ; $48a5: $99
	sbc  b                                           ; $48a6: $98
	adc  b                                           ; $48a7: $88
	sbc  c                                           ; $48a8: $99
	adc  c                                           ; $48a9: $89
	adc  b                                           ; $48aa: $88
	adc  b                                           ; $48ab: $88
	ld   [hl], a                                     ; $48ac: $77
	ld   [hl], a                                     ; $48ad: $77
	ld   [hl], a                                     ; $48ae: $77
	ld   [hl], a                                     ; $48af: $77
	ld   [hl], a                                     ; $48b0: $77
	adc  c                                           ; $48b1: $89
	adc  c                                           ; $48b2: $89
	sbc  c                                           ; $48b3: $99
	sbc  c                                           ; $48b4: $99
	sbc  c                                           ; $48b5: $99
	adc  b                                           ; $48b6: $88
	adc  c                                           ; $48b7: $89
	adc  b                                           ; $48b8: $88
	adc  b                                           ; $48b9: $88
	adc  b                                           ; $48ba: $88
	ld   [hl], a                                     ; $48bb: $77
	ld   [hl], a                                     ; $48bc: $77
	ld   [hl], a                                     ; $48bd: $77
	ld   [hl], a                                     ; $48be: $77
	adc  b                                           ; $48bf: $88
	adc  c                                           ; $48c0: $89
	sbc  c                                           ; $48c1: $99
	sbc  c                                           ; $48c2: $99
	sbc  c                                           ; $48c3: $99
	sbc  b                                           ; $48c4: $98
	adc  b                                           ; $48c5: $88
	adc  b                                           ; $48c6: $88
	adc  b                                           ; $48c7: $88
	adc  b                                           ; $48c8: $88
	adc  b                                           ; $48c9: $88
	ld   [hl], a                                     ; $48ca: $77
	ld   [hl], a                                     ; $48cb: $77
	ld   [hl], a                                     ; $48cc: $77
	ld   a, b                                        ; $48cd: $78
	adc  c                                           ; $48ce: $89
	sbc  c                                           ; $48cf: $99
	sbc  c                                           ; $48d0: $99
	sbc  b                                           ; $48d1: $98
	adc  b                                           ; $48d2: $88
	adc  b                                           ; $48d3: $88
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	adc  b                                           ; $48d6: $88
	adc  b                                           ; $48d7: $88
	ld   [hl], a                                     ; $48d8: $77
	ld   [hl], a                                     ; $48d9: $77
	ld   [hl], a                                     ; $48da: $77
	ld   a, b                                        ; $48db: $78
	adc  c                                           ; $48dc: $89
	sbc  c                                           ; $48dd: $99
	sbc  c                                           ; $48de: $99
	adc  b                                           ; $48df: $88
	sbc  b                                           ; $48e0: $98
	adc  b                                           ; $48e1: $88
	adc  b                                           ; $48e2: $88
	adc  b                                           ; $48e3: $88
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	ld   [hl], a                                     ; $48e6: $77
	ld   [hl], a                                     ; $48e7: $77
	ld   [hl], a                                     ; $48e8: $77
	ld   a, b                                        ; $48e9: $78
	adc  b                                           ; $48ea: $88
	sbc  b                                           ; $48eb: $98
	sbc  c                                           ; $48ec: $99
	sbc  b                                           ; $48ed: $98
	sbc  b                                           ; $48ee: $98
	adc  b                                           ; $48ef: $88
	adc  b                                           ; $48f0: $88
	adc  b                                           ; $48f1: $88
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	add  a                                           ; $48f4: $87
	ld   [hl], a                                     ; $48f5: $77
	ld   [hl], a                                     ; $48f6: $77
	ld   [hl], a                                     ; $48f7: $77
	ld   a, b                                        ; $48f8: $78
	adc  c                                           ; $48f9: $89
	sbc  b                                           ; $48fa: $98
	adc  b                                           ; $48fb: $88
	sbc  b                                           ; $48fc: $98
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  b                                           ; $4902: $88
	adc  b                                           ; $4903: $88
	ld   [hl], a                                     ; $4904: $77
	ld   [hl], a                                     ; $4905: $77
	ld   a, b                                        ; $4906: $78
	adc  b                                           ; $4907: $88
	adc  c                                           ; $4908: $89
	sbc  c                                           ; $4909: $99
	adc  b                                           ; $490a: $88
	adc  b                                           ; $490b: $88
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  b                                           ; $490e: $88
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	adc  b                                           ; $4911: $88
	adc  b                                           ; $4912: $88
	add  a                                           ; $4913: $87
	ld   [hl], a                                     ; $4914: $77
	ld   a, b                                        ; $4915: $78
	adc  b                                           ; $4916: $88
	adc  b                                           ; $4917: $88
	adc  b                                           ; $4918: $88
	adc  b                                           ; $4919: $88
	adc  b                                           ; $491a: $88
	adc  b                                           ; $491b: $88
	adc  b                                           ; $491c: $88
	adc  b                                           ; $491d: $88
	adc  b                                           ; $491e: $88
	adc  b                                           ; $491f: $88
	adc  b                                           ; $4920: $88
	adc  b                                           ; $4921: $88
	adc  b                                           ; $4922: $88
	adc  b                                           ; $4923: $88
	adc  b                                           ; $4924: $88
	adc  b                                           ; $4925: $88
	adc  b                                           ; $4926: $88
	adc  b                                           ; $4927: $88
	adc  b                                           ; $4928: $88
	adc  b                                           ; $4929: $88
	adc  b                                           ; $492a: $88
	adc  b                                           ; $492b: $88
	adc  b                                           ; $492c: $88
	adc  b                                           ; $492d: $88
	adc  b                                           ; $492e: $88
	adc  b                                           ; $492f: $88
	adc  b                                           ; $4930: $88
	adc  b                                           ; $4931: $88
	adc  b                                           ; $4932: $88
	adc  b                                           ; $4933: $88
	adc  b                                           ; $4934: $88
	adc  b                                           ; $4935: $88
	adc  b                                           ; $4936: $88
	adc  b                                           ; $4937: $88
	adc  b                                           ; $4938: $88
	adc  b                                           ; $4939: $88
	adc  b                                           ; $493a: $88
	adc  b                                           ; $493b: $88
	adc  b                                           ; $493c: $88
	adc  b                                           ; $493d: $88
	adc  b                                           ; $493e: $88
	adc  b                                           ; $493f: $88
	adc  b                                           ; $4940: $88
	adc  b                                           ; $4941: $88
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	adc  b                                           ; $4944: $88
	adc  b                                           ; $4945: $88
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

Jump_0ae_4952:
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
	ld   a, b                                        ; $495f: $78
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
	adc  c                                           ; $497e: $89
	sbc  b                                           ; $497f: $98
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
	adc  b                                           ; $498d: $88
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
	adc  b                                           ; $499b: $88
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
	adc  b                                           ; $49d2: $88
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
	adc  b                                           ; $4a09: $88
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
	adc  b                                           ; $4a21: $88
	sbc  [hl]                                        ; $4a22: $9e
	or   e                                           ; $4a23: $b3
	ld   a, [hl+]                                    ; $4a24: $2a
	rst  $38                                         ; $4a25: $ff
	ld   de, $92bf                                   ; $4a26: $11 $bf $92
	dec  a                                           ; $4a29: $3d
	ld   a, [$6956]                                  ; $4a2a: $fa $56 $69
	or   [hl]                                        ; $4a2d: $b6
	ld   b, l                                        ; $4a2e: $45
	xor  [hl]                                        ; $4a2f: $ae
	and  l                                           ; $4a30: $a5
	ld   [hl], $a9                                   ; $4a31: $36 $a9
	adc  c                                           ; $4a33: $89
	ld   [hl], l                                     ; $4a34: $75
	sbc  l                                           ; $4a35: $9d
	and  l                                           ; $4a36: $a5
	ld   b, a                                        ; $4a37: $47
	cp   d                                           ; $4a38: $ba
	ld   h, h                                        ; $4a39: $64
	ld   a, c                                        ; $4a3a: $79
	sub  a                                           ; $4a3b: $97
	ld   h, a                                        ; $4a3c: $67
	adc  c                                           ; $4a3d: $89
	adc  b                                           ; $4a3e: $88
	add  a                                           ; $4a3f: $87
	adc  b                                           ; $4a40: $88
	sbc  d                                           ; $4a41: $9a
	sub  [hl]                                        ; $4a42: $96
	ld   a, c                                        ; $4a43: $79
	sbc  b                                           ; $4a44: $98
	ld   [hl], l                                     ; $4a45: $75
	ld   l, c                                        ; $4a46: $69
	adc  c                                           ; $4a47: $89
	xor  b                                           ; $4a48: $a8
	ld   a, b                                        ; $4a49: $78
	ld   [hl], a                                     ; $4a4a: $77
	sbc  c                                           ; $4a4b: $99
	xor  b                                           ; $4a4c: $a8
	ld   [hl], a                                     ; $4a4d: $77
	ld   [hl], a                                     ; $4a4e: $77
	ld   h, a                                        ; $4a4f: $67
	xor  c                                           ; $4a50: $a9
	halt                                             ; $4a51: $76
	ld   l, c                                        ; $4a52: $69
	add  [hl]                                        ; $4a53: $86
	sbc  [hl]                                        ; $4a54: $9e
	sub  $58                                         ; $4a55: $d6 $58
	cp   b                                           ; $4a57: $b8
	ld   [hl+], a                                    ; $4a58: $22
	xor  [hl]                                        ; $4a59: $ae
	ld   [hl], d                                     ; $4a5a: $72
	ld   l, h                                        ; $4a5b: $6c
	rst  $20                                         ; $4a5c: $e7
	inc  de                                          ; $4a5d: $13
	cp   a                                           ; $4a5e: $bf
	or   c                                           ; $4a5f: $b1
	dec  d                                           ; $4a60: $15
	db   $fc                                         ; $4a61: $fc
	inc  sp                                          ; $4a62: $33
	adc  h                                           ; $4a63: $8c
	or   [hl]                                        ; $4a64: $b6
	ld   b, l                                        ; $4a65: $45
	sbc  e                                           ; $4a66: $9b
	and  [hl]                                        ; $4a67: $a6
	ld   b, a                                        ; $4a68: $47
	sbc  b                                           ; $4a69: $98
	adc  d                                           ; $4a6a: $8a
	xor  b                                           ; $4a6b: $a8
	dec  [hl]                                        ; $4a6c: $35
	cp   l                                           ; $4a6d: $bd
	add  h                                           ; $4a6e: $84
	ld   a, h                                        ; $4a6f: $7c
	ld   [$7e53], a                                  ; $4a70: $ea $53 $7e
	jp   hl                                          ; $4a73: $e9


	ld   d, l                                        ; $4a74: $55
	sbc  h                                           ; $4a75: $9c
	sub  h                                           ; $4a76: $94
	ld   e, c                                        ; $4a77: $59
	sub  a                                           ; $4a78: $97
	ld   b, [hl]                                     ; $4a79: $46
	sbc  c                                           ; $4a7a: $99
	ld   [hl], h                                     ; $4a7b: $74
	ld   a, c                                        ; $4a7c: $79
	xor  c                                           ; $4a7d: $a9
	ld   d, l                                        ; $4a7e: $55
	xor  c                                           ; $4a7f: $a9
	sub  [hl]                                        ; $4a80: $96
	ld   h, l                                        ; $4a81: $65
	adc  e                                           ; $4a82: $8b
	ld   h, a                                        ; $4a83: $67
	sbc  b                                           ; $4a84: $98
	adc  c                                           ; $4a85: $89
	ld   h, [hl]                                     ; $4a86: $66
	xor  c                                           ; $4a87: $a9
	ld   l, c                                        ; $4a88: $69
	adc  b                                           ; $4a89: $88
	call z, $8955                                    ; $4a8a: $cc $55 $89
	sbc  d                                           ; $4a8d: $9a
	halt                                             ; $4a8e: $76
	sbc  c                                           ; $4a8f: $99
	ld   a, b                                        ; $4a90: $78
	add  a                                           ; $4a91: $87
	adc  c                                           ; $4a92: $89
	sub  a                                           ; $4a93: $97
	ld   [hl], a                                     ; $4a94: $77
	sbc  d                                           ; $4a95: $9a
	and  a                                           ; $4a96: $a7
	ld   h, l                                        ; $4a97: $65
	ld   l, c                                        ; $4a98: $69
	xor  c                                           ; $4a99: $a9
	ld   h, [hl]                                     ; $4a9a: $66
	xor  d                                           ; $4a9b: $aa
	ld   [hl], l                                     ; $4a9c: $75
	ld   d, a                                        ; $4a9d: $57
	cp   d                                           ; $4a9e: $ba
	add  [hl]                                        ; $4a9f: $86
	ld   l, b                                        ; $4aa0: $68
	xor  b                                           ; $4aa1: $a8
	ld   l, c                                        ; $4aa2: $69
	sbc  b                                           ; $4aa3: $98
	halt                                             ; $4aa4: $76
	ld   a, d                                        ; $4aa5: $7a
	sub  [hl]                                        ; $4aa6: $96
	ld   h, a                                        ; $4aa7: $67
	ld   a, d                                        ; $4aa8: $7a
	sbc  b                                           ; $4aa9: $98
	ld   [hl], a                                     ; $4aaa: $77
	add  a                                           ; $4aab: $87
	ld   a, c                                        ; $4aac: $79
	xor  c                                           ; $4aad: $a9
	ld   d, a                                        ; $4aae: $57
	xor  c                                           ; $4aaf: $a9
	add  a                                           ; $4ab0: $87
	ld   a, b                                        ; $4ab1: $78
	xor  c                                           ; $4ab2: $a9
	ld   h, l                                        ; $4ab3: $65
	ld   d, l                                        ; $4ab4: $55
	ld   a, c                                        ; $4ab5: $79
	and  a                                           ; $4ab6: $a7
	ld   l, c                                        ; $4ab7: $69
	jp   z, $be88                                    ; $4ab8: $ca $88 $be

	jp   c, $ec8b                                    ; $4abb: $da $8b $ec

	and  [hl]                                        ; $4abe: $a6
	ld   [hl-], a                                    ; $4abf: $32
	ld   d, l                                        ; $4ac0: $55
	ld   hl, $2412                                   ; $4ac1: $21 $12 $24
	ld   b, l                                        ; $4ac4: $45
	sbc  h                                           ; $4ac5: $9c
	rst  JumpTable                                         ; $4ac6: $df
	rst  $38                                         ; $4ac7: $ff
	cp   $ee                                         ; $4ac8: $fe $ee
	call c, Call_0ae_5386                            ; $4aca: $dc $86 $53
	ld   hl, $1111                                   ; $4acd: $21 $11 $11
	ld   de, $9c26                                   ; $4ad0: $11 $26 $9c
	rst  $38                                         ; $4ad3: $ff
	rst  $38                                         ; $4ad4: $ff
	rst  $38                                         ; $4ad5: $ff
	rst  $38                                         ; $4ad6: $ff
	rst  $38                                         ; $4ad7: $ff
	jp   z, $1162                                    ; $4ad8: $ca $62 $11

	ld   de, $1111                                   ; $4adb: $11 $11 $11
	ld   d, $cb                                      ; $4ade: $16 $cb
	rst  $38                                         ; $4ae0: $ff
	rst  $38                                         ; $4ae1: $ff
	rst  $38                                         ; $4ae2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ae3: $cf
	rst  $28                                         ; $4ae4: $ef
	db   $fc                                         ; $4ae5: $fc
	ld   [hl], h                                     ; $4ae6: $74
	ld   de, $1111                                   ; $4ae7: $11 $11 $11
	ld   de, $ff17                                   ; $4aea: $11 $17 $ff
	rst  $38                                         ; $4aed: $ff
	rst  $38                                         ; $4aee: $ff
	rst  $38                                         ; $4aef: $ff
	ld   a, e                                        ; $4af0: $7b
	rst  $38                                         ; $4af1: $ff
	rst  $38                                         ; $4af2: $ff
	ld   d, c                                        ; $4af3: $51
	ld   de, $1111                                   ; $4af4: $11 $11 $11
	ld   de, $ff2b                                   ; $4af7: $11 $2b $ff
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	ei                                               ; $4afc: $fb
	ld   c, e                                        ; $4afd: $4b
	rst  $38                                         ; $4afe: $ff
	ld   a, [$1111]                                  ; $4aff: $fa $11 $11
	ld   de, $1411                                   ; $4b02: $11 $11 $14
	rst  JumpTable                                         ; $4b05: $df
	rst  $38                                         ; $4b06: $ff
	rst  $38                                         ; $4b07: $ff
	rst  $38                                         ; $4b08: $ff
	or   d                                           ; $4b09: $b2
	ld   a, a                                        ; $4b0a: $7f
	rst  $38                                         ; $4b0b: $ff
	sub  c                                           ; $4b0c: $91
	ld   de, $1111                                   ; $4b0d: $11 $11 $11
	ld   de, $ff9f                                   ; $4b10: $11 $9f $ff
	rst  $38                                         ; $4b13: $ff
	rst  $38                                         ; $4b14: $ff
	rst  $30                                         ; $4b15: $f7
	ld   l, l                                        ; $4b16: $6d
	rst  $38                                         ; $4b17: $ff
	push af                                          ; $4b18: $f5
	ld   de, $1111                                   ; $4b19: $11 $11 $11
	ld   de, $ffaf                                   ; $4b1c: $11 $af $ff
	rst  $38                                         ; $4b1f: $ff
	rst  $38                                         ; $4b20: $ff
	jp   hl                                          ; $4b21: $e9


	ld   l, l                                        ; $4b22: $6d
	rst  $38                                         ; $4b23: $ff
	di                                               ; $4b24: $f3
	ld   de, $1111                                   ; $4b25: $11 $11 $11
	inc  de                                          ; $4b28: $13
	rst  $38                                         ; $4b29: $ff
	rst  $38                                         ; $4b2a: $ff
	rst  $38                                         ; $4b2b: $ff
	rst  $38                                         ; $4b2c: $ff
	xor  b                                           ; $4b2d: $a8
	cp   a                                           ; $4b2e: $bf
	rst  $38                                         ; $4b2f: $ff
	sub  c                                           ; $4b30: $91
	ld   de, $1111                                   ; $4b31: $11 $11 $11
	ccf                                              ; $4b34: $3f
	rst  $38                                         ; $4b35: $ff
	rst  $38                                         ; $4b36: $ff
	db   $fc                                         ; $4b37: $fc
	adc  $ba                                         ; $4b38: $ce $ba
	rst  $38                                         ; $4b3a: $ff
	cp   $21                                         ; $4b3b: $fe $21
	ld   de, $1111                                   ; $4b3d: $11 $11 $11
	xor  a                                           ; $4b40: $af
	rst  $38                                         ; $4b41: $ff
	rst  $38                                         ; $4b42: $ff
	ret                                              ; $4b43: $c9


	cp   e                                           ; $4b44: $bb
	cp   a                                           ; $4b45: $bf
	rst  $38                                         ; $4b46: $ff
	push de                                          ; $4b47: $d5
	ld   de, $1111                                   ; $4b48: $11 $11 $11
	add  hl, de                                      ; $4b4b: $19
	rst  $38                                         ; $4b4c: $ff
	rst  $38                                         ; $4b4d: $ff
	rst  $38                                         ; $4b4e: $ff
	jp   z, $ef88                                    ; $4b4f: $ca $88 $ef

	rst  $38                                         ; $4b52: $ff
	ld   h, c                                        ; $4b53: $61
	ld   de, $1111                                   ; $4b54: $11 $11 $11
	ld   a, a                                        ; $4b57: $7f
	rst  $38                                         ; $4b58: $ff
	rst  $38                                         ; $4b59: $ff
	db   $fd                                         ; $4b5a: $fd
	adc  c                                           ; $4b5b: $89
	xor  l                                           ; $4b5c: $ad
	rst  $38                                         ; $4b5d: $ff
	ld   sp, hl                                      ; $4b5e: $f9
	ld   de, $1111                                   ; $4b5f: $11 $11 $11
	inc  d                                           ; $4b62: $14
	rst  $38                                         ; $4b63: $ff
	rst  $38                                         ; $4b64: $ff
	rst  $38                                         ; $4b65: $ff
	cp   c                                           ; $4b66: $b9
	sbc  e                                           ; $4b67: $9b
	rst  $28                                         ; $4b68: $ef
	rst  $38                                         ; $4b69: $ff
	pop  de                                          ; $4b6a: $d1
	ld   de, $1111                                   ; $4b6b: $11 $11 $11
	add  hl, de                                      ; $4b6e: $19
	rst  $38                                         ; $4b6f: $ff
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	and  a                                           ; $4b72: $a7
	sbc  h                                           ; $4b73: $9c
	rst  $38                                         ; $4b74: $ff
	rst  $38                                         ; $4b75: $ff
	ld   h, c                                        ; $4b76: $61
	ld   de, $1111                                   ; $4b77: $11 $11 $11
	ld   e, [hl]                                     ; $4b7a: $5e
	rst  $38                                         ; $4b7b: $ff
	rst  $38                                         ; $4b7c: $ff
	cp   $aa                                         ; $4b7d: $fe $aa
	ld   a, c                                        ; $4b7f: $79
	rst  $38                                         ; $4b80: $ff
	ei                                               ; $4b81: $fb
	ld   de, $1111                                   ; $4b82: $11 $11 $11
	ld   [de], a                                     ; $4b85: $12
	rst  $28                                         ; $4b86: $ef
	rst  $38                                         ; $4b87: $ff
	rst  $38                                         ; $4b88: $ff
	ld   a, [$af55]                                  ; $4b89: $fa $55 $af
	rst  $38                                         ; $4b8c: $ff
	db   $f4                                         ; $4b8d: $f4
	ld   de, $1111                                   ; $4b8e: $11 $11 $11
	ld   a, [de]                                     ; $4b91: $1a
	rst  $38                                         ; $4b92: $ff
	rst  $38                                         ; $4b93: $ff
	rst  $38                                         ; $4b94: $ff
	add  $49                                         ; $4b95: $c6 $49
	rst  $38                                         ; $4b97: $ff
	rst  $38                                         ; $4b98: $ff
	sub  c                                           ; $4b99: $91
	ld   de, $1111                                   ; $4b9a: $11 $11 $11
	cpl                                              ; $4b9d: $2f
	rst  $38                                         ; $4b9e: $ff
	rst  $38                                         ; $4b9f: $ff
	rst  $38                                         ; $4ba0: $ff
	sub  l                                           ; $4ba1: $95
	ld   l, e                                        ; $4ba2: $6b
	rst  $38                                         ; $4ba3: $ff
	cp   $21                                         ; $4ba4: $fe $21
	ld   de, $1311                                   ; $4ba6: $11 $11 $13
	rst  JumpTable                                         ; $4ba9: $df
	rst  $38                                         ; $4baa: $ff
	rst  $38                                         ; $4bab: $ff
	rst  $30                                         ; $4bac: $f7
	ld   b, [hl]                                     ; $4bad: $46
	sbc  a                                           ; $4bae: $9f
	rst  $38                                         ; $4baf: $ff
	add  sp, $11                                     ; $4bb0: $e8 $11
	ld   de, $1711                                   ; $4bb2: $11 $11 $17
	rst  $38                                         ; $4bb5: $ff
	rst  $38                                         ; $4bb6: $ff
	rst  $38                                         ; $4bb7: $ff
	sub  l                                           ; $4bb8: $95
	ld   e, e                                        ; $4bb9: $5b
	rst  $38                                         ; $4bba: $ff
	rst  $38                                         ; $4bbb: $ff
	and  c                                           ; $4bbc: $a1
	ld   de, $1111                                   ; $4bbd: $11 $11 $11
	sbc  a                                           ; $4bc0: $9f
	rst  $38                                         ; $4bc1: $ff
	rst  $38                                         ; $4bc2: $ff
	ld   a, [$af55]                                  ; $4bc3: $fa $55 $af
	rst  $38                                         ; $4bc6: $ff
	db   $fc                                         ; $4bc7: $fc
	ld   sp, $1111                                   ; $4bc8: $31 $11 $11
	inc  d                                           ; $4bcb: $14
	rst  JumpTable                                         ; $4bcc: $df
	rst  $38                                         ; $4bcd: $ff
	rst  $38                                         ; $4bce: $ff
	ret  c                                           ; $4bcf: $d8

	ld   l, b                                        ; $4bd0: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bd1: $cf
	rst  $38                                         ; $4bd2: $ff
	rst  $30                                         ; $4bd3: $f7
	ld   de, $1111                                   ; $4bd4: $11 $11 $11
	add  hl, hl                                      ; $4bd7: $29
	rst  $38                                         ; $4bd8: $ff
	rst  $38                                         ; $4bd9: $ff
	rst  $38                                         ; $4bda: $ff
	sub  a                                           ; $4bdb: $97
	ld   l, e                                        ; $4bdc: $6b
	rst  $38                                         ; $4bdd: $ff
	rst  $38                                         ; $4bde: $ff
	call nz, $1111                                   ; $4bdf: $c4 $11 $11
	ld   de, $ff2a                                   ; $4be2: $11 $2a $ff
	rst  $38                                         ; $4be5: $ff
	rst  $38                                         ; $4be6: $ff
	sbc  c                                           ; $4be7: $99
	sbc  d                                           ; $4be8: $9a
	rst  $38                                         ; $4be9: $ff
	rst  $38                                         ; $4bea: $ff
	jp   $1111                                       ; $4beb: $c3 $11 $11


	ld   de, $ff29                                   ; $4bee: $11 $29 $ff
	rst  $38                                         ; $4bf1: $ff
	rst  $38                                         ; $4bf2: $ff
	cp   b                                           ; $4bf3: $b8
	cp   h                                           ; $4bf4: $bc
	rst  $28                                         ; $4bf5: $ef
	rst  $38                                         ; $4bf6: $ff
	or   d                                           ; $4bf7: $b2
	ld   de, $1111                                   ; $4bf8: $11 $11 $11
	add  hl, hl                                      ; $4bfb: $29
	rst  $38                                         ; $4bfc: $ff
	rst  $38                                         ; $4bfd: $ff
	rst  $38                                         ; $4bfe: $ff
	sub  $8a                                         ; $4bff: $d6 $8a
	rst  $28                                         ; $4c01: $ef
	rst  $38                                         ; $4c02: $ff
	or   l                                           ; $4c03: $b5
	ld   de, $1111                                   ; $4c04: $11 $11 $11
	inc  d                                           ; $4c07: $14
	rst  $38                                         ; $4c08: $ff
	rst  $38                                         ; $4c09: $ff
	rst  $38                                         ; $4c0a: $ff
	ld   sp, hl                                      ; $4c0b: $f9
	ld   a, c                                        ; $4c0c: $79
	rst  JumpTable                                         ; $4c0d: $df
	rst  $38                                         ; $4c0e: $ff
	add  sp, $11                                     ; $4c0f: $e8 $11
	ld   de, $1411                                   ; $4c11: $11 $11 $14
	rst  JumpTable                                         ; $4c14: $df
	rst  $38                                         ; $4c15: $ff
	rst  $38                                         ; $4c16: $ff
	ld   sp, hl                                      ; $4c17: $f9
	ld   a, d                                        ; $4c18: $7a
	cp   a                                           ; $4c19: $bf
	rst  $38                                         ; $4c1a: $ff
	db   $ec                                         ; $4c1b: $ec
	ld   hl, $1111                                   ; $4c1c: $21 $11 $11
	ld   de, $ff9f                                   ; $4c1f: $11 $9f $ff
	rst  $38                                         ; $4c22: $ff
	cp   $78                                         ; $4c23: $fe $78
	xor  l                                           ; $4c25: $ad
	rst  $38                                         ; $4c26: $ff
	db   $fd                                         ; $4c27: $fd
	ld   [hl], c                                     ; $4c28: $71
	ld   de, $1111                                   ; $4c29: $11 $11 $11
	inc  l                                           ; $4c2c: $2c
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	rst  $38                                         ; $4c2f: $ff
	xor  d                                           ; $4c30: $aa
	xor  d                                           ; $4c31: $aa
	rst  $38                                         ; $4c32: $ff
	rst  $38                                         ; $4c33: $ff
	or   c                                           ; $4c34: $b1
	ld   de, $1111                                   ; $4c35: $11 $11 $11
	rla                                              ; $4c38: $17
	rst  $38                                         ; $4c39: $ff
	rst  $38                                         ; $4c3a: $ff
	rst  $38                                         ; $4c3b: $ff
	ld   a, [$df99]                                  ; $4c3c: $fa $99 $df
	xor  $e7                                         ; $4c3f: $ee $e7
	ld   de, $1111                                   ; $4c41: $11 $11 $11
	ld   de, $ffcf                                   ; $4c44: $11 $cf $ff
	rst  $38                                         ; $4c47: $ff
	cp   $b9                                         ; $4c48: $fe $b9
	xor  [hl]                                        ; $4c4a: $ae
	db   $db                                         ; $4c4b: $db
	db   $ec                                         ; $4c4c: $ec
	ld   b, c                                        ; $4c4d: $41
	ld   de, $1111                                   ; $4c4e: $11 $11 $11
	inc  a                                           ; $4c51: $3c
	rst  $38                                         ; $4c52: $ff
	rst  $38                                         ; $4c53: $ff
	rst  $38                                         ; $4c54: $ff
	cp   $bb                                         ; $4c55: $fe $bb
	reti                                             ; $4c57: $d9


	cp   l                                           ; $4c58: $bd
	add  h                                           ; $4c59: $84
	ld   de, $1111                                   ; $4c5a: $11 $11 $11
	ld   hl, $ff8f                                   ; $4c5d: $21 $8f $ff
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	call c, $9acb                                    ; $4c62: $dc $cb $9a
	cp   b                                           ; $4c65: $b8
	ld   b, c                                        ; $4c66: $41
	ld   de, $1111                                   ; $4c67: $11 $11 $11
	jr   @-$0f                                       ; $4c6a: $18 $ef

	rst  $38                                         ; $4c6c: $ff
	rst  $38                                         ; $4c6d: $ff
	rst  $38                                         ; $4c6e: $ff
	db   $dd                                         ; $4c6f: $dd
	and  a                                           ; $4c70: $a7
	sbc  c                                           ; $4c71: $99
	sub  a                                           ; $4c72: $97
	ld   de, $1111                                   ; $4c73: $11 $11 $11
	ld   de, $cd27                                   ; $4c76: $11 $27 $cd
	rst  $38                                         ; $4c79: $ff
	rst  $38                                         ; $4c7a: $ff
	rst  $38                                         ; $4c7b: $ff
	db   $db                                         ; $4c7c: $db
	and  a                                           ; $4c7d: $a7
	sbc  c                                           ; $4c7e: $99
	cp   b                                           ; $4c7f: $b8
	ld   sp, $1111                                   ; $4c80: $31 $11 $11
	ld   de, $6916                                   ; $4c83: $11 $16 $69
	cp   a                                           ; $4c86: $bf
	rst  $38                                         ; $4c87: $ff
	rst  $38                                         ; $4c88: $ff
	db   $ed                                         ; $4c89: $ed
	res  7, e                                        ; $4c8a: $cb $bb
	db   $ed                                         ; $4c8c: $ed
	ld   [hl], h                                     ; $4c8d: $74
	ld   de, $1111                                   ; $4c8e: $11 $11 $11
	ld   de, $5833                                   ; $4c91: $11 $33 $58
	sbc  l                                           ; $4c94: $9d
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	rst  $38                                         ; $4c97: $ff
	db   $fd                                         ; $4c98: $fd
	call $94cb                                       ; $4c99: $cd $cb $94
	ld   de, $1111                                   ; $4c9c: $11 $11 $11
	ld   de, $5913                                   ; $4c9f: $11 $13 $59
	cp   [hl]                                        ; $4ca2: $be
	rst  $38                                         ; $4ca3: $ff
	rst  $38                                         ; $4ca4: $ff
	rst  $38                                         ; $4ca5: $ff
	db   $fd                                         ; $4ca6: $fd
	db   $dd                                         ; $4ca7: $dd
	call $1194                                       ; $4ca8: $cd $94 $11
	ld   de, $1111                                   ; $4cab: $11 $11 $11
	inc  de                                          ; $4cae: $13
	ld   a, e                                        ; $4caf: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cb0: $cf
	rst  $38                                         ; $4cb1: $ff
	rst  $38                                         ; $4cb2: $ff
	rst  $38                                         ; $4cb3: $ff
	rst  $38                                         ; $4cb4: $ff
	set  3, c                                        ; $4cb5: $cb $d9
	ld   [hl], l                                     ; $4cb7: $75
	ld   de, $1111                                   ; $4cb8: $11 $11 $11
	ld   de, $8b13                                   ; $4cbb: $11 $13 $8b
	rst  $28                                         ; $4cbe: $ef
	rst  $38                                         ; $4cbf: $ff
	rst  $38                                         ; $4cc0: $ff
	rst  $38                                         ; $4cc1: $ff
	db   $fc                                         ; $4cc2: $fc
	sbc  c                                           ; $4cc3: $99
	sbc  c                                           ; $4cc4: $99
	ld   [hl], l                                     ; $4cc5: $75
	ld   hl, $1111                                   ; $4cc6: $21 $11 $11
	ld   de, $7b11                                   ; $4cc9: $11 $11 $7b
	rst  $38                                         ; $4ccc: $ff
	rst  $38                                         ; $4ccd: $ff
	rst  $38                                         ; $4cce: $ff
	rst  $38                                         ; $4ccf: $ff
	db   $db                                         ; $4cd0: $db
	adc  c                                           ; $4cd1: $89
	xor  d                                           ; $4cd2: $aa
	and  l                                           ; $4cd3: $a5
	ld   de, $1111                                   ; $4cd4: $11 $11 $11
	ld   de, $af14                                   ; $4cd7: $11 $14 $af
	rst  $38                                         ; $4cda: $ff
	rst  $38                                         ; $4cdb: $ff
	rst  $38                                         ; $4cdc: $ff
	rst  $38                                         ; $4cdd: $ff
	jp   hl                                          ; $4cde: $e9


	adc  c                                           ; $4cdf: $89
	xor  d                                           ; $4ce0: $aa
	ld   d, c                                        ; $4ce1: $51
	ld   de, $1111                                   ; $4ce2: $11 $11 $11
	ld   de, $ef39                                   ; $4ce5: $11 $39 $ef
	rst  $38                                         ; $4ce8: $ff
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	db   $fd                                         ; $4ceb: $fd
	ret                                              ; $4cec: $c9


	adc  e                                           ; $4ced: $8b
	and  [hl]                                        ; $4cee: $a6
	ld   hl, $1111                                   ; $4cef: $21 $11 $11
	ld   de, $9d14                                   ; $4cf2: $11 $14 $9d
	rst  $38                                         ; $4cf5: $ff
	rst  $38                                         ; $4cf6: $ff
	rst  $38                                         ; $4cf7: $ff
	rst  $38                                         ; $4cf8: $ff
	db   $db                                         ; $4cf9: $db
	adc  b                                           ; $4cfa: $88
	xor  c                                           ; $4cfb: $a9
	ld   d, c                                        ; $4cfc: $51
	ld   de, $1111                                   ; $4cfd: $11 $11 $11
	ld   de, $ef5a                                   ; $4d00: $11 $5a $ef
	rst  $38                                         ; $4d03: $ff
	rst  $38                                         ; $4d04: $ff
	rst  $38                                         ; $4d05: $ff
	db   $fd                                         ; $4d06: $fd
	sub  a                                           ; $4d07: $97
	sbc  d                                           ; $4d08: $9a
	sub  [hl]                                        ; $4d09: $96
	ld   de, $1111                                   ; $4d0a: $11 $11 $11
	ld   de, $9e15                                   ; $4d0d: $11 $15 $9e
	rst  $38                                         ; $4d10: $ff
	rst  $38                                         ; $4d11: $ff
	rst  $38                                         ; $4d12: $ff
	rst  $38                                         ; $4d13: $ff
	ret  c                                           ; $4d14: $d8

	ld   l, d                                        ; $4d15: $6a
	xor  c                                           ; $4d16: $a9
	ld   [hl], d                                     ; $4d17: $72
	ld   de, $1111                                   ; $4d18: $11 $11 $11
	ld   de, $ef4a                                   ; $4d1b: $11 $4a $ef
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	rst  $38                                         ; $4d20: $ff
	ei                                               ; $4d21: $fb
	sbc  b                                           ; $4d22: $98
	sbc  e                                           ; $4d23: $9b
	sub  a                                           ; $4d24: $97
	ld   sp, $1111                                   ; $4d25: $31 $11 $11
	ld   de, $ae13                                   ; $4d28: $11 $13 $ae
	rst  $38                                         ; $4d2b: $ff
	rst  $38                                         ; $4d2c: $ff
	rst  $38                                         ; $4d2d: $ff
	rst  $38                                         ; $4d2e: $ff
	reti                                             ; $4d2f: $d9


	ld   l, d                                        ; $4d30: $6a
	cp   c                                           ; $4d31: $b9
	ld   h, e                                        ; $4d32: $63
	ld   de, $1111                                   ; $4d33: $11 $11 $11
	ld   de, $df15                                   ; $4d36: $11 $15 $df
	rst  $38                                         ; $4d39: $ff
	rst  $38                                         ; $4d3a: $ff
	rst  $38                                         ; $4d3b: $ff
	cp   $a8                                         ; $4d3c: $fe $a8
	sbc  d                                           ; $4d3e: $9a
	sbc  c                                           ; $4d3f: $99
	ld   d, c                                        ; $4d40: $51
	ld   de, $1111                                   ; $4d41: $11 $11 $11
	ld   de, $ff4b                                   ; $4d44: $11 $4b $ff
	rst  $38                                         ; $4d47: $ff
	rst  $38                                         ; $4d48: $ff
	rst  $38                                         ; $4d49: $ff
	ld   a, [$aa79]                                  ; $4d4a: $fa $79 $aa
	add  l                                           ; $4d4d: $85
	ld   de, $1111                                   ; $4d4e: $11 $11 $11
	ld   de, $bf12                                   ; $4d51: $11 $12 $bf
	rst  $38                                         ; $4d54: $ff
	rst  $38                                         ; $4d55: $ff
	rst  $38                                         ; $4d56: $ff
	rst  $38                                         ; $4d57: $ff
	jp   z, $b889                                    ; $4d58: $ca $89 $b8

	ld   d, h                                        ; $4d5b: $54
	ld   de, $1111                                   ; $4d5c: $11 $11 $11
	ld   de, $ef18                                   ; $4d5f: $11 $18 $ef
	rst  $38                                         ; $4d62: $ff
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	cp   $a9                                         ; $4d65: $fe $a9
	sbc  d                                           ; $4d67: $9a
	sub  a                                           ; $4d68: $97
	ld   h, h                                        ; $4d69: $64
	ld   de, $1111                                   ; $4d6a: $11 $11 $11
	ld   de, $9f17                                   ; $4d6d: $11 $17 $9f
	rst  $38                                         ; $4d70: $ff
	rst  $38                                         ; $4d71: $ff
	rst  $38                                         ; $4d72: $ff
	ei                                               ; $4d73: $fb
	cp   c                                           ; $4d74: $b9
	adc  d                                           ; $4d75: $8a
	add  [hl]                                        ; $4d76: $86
	ld   [hl], h                                     ; $4d77: $74
	ld   de, $1111                                   ; $4d78: $11 $11 $11
	ld   de, $8d13                                   ; $4d7b: $11 $13 $8d
	rst  $38                                         ; $4d7e: $ff
	rst  $38                                         ; $4d7f: $ff
	rst  $38                                         ; $4d80: $ff
	cp   $b9                                         ; $4d81: $fe $b9
	cp   c                                           ; $4d83: $b9
	adc  c                                           ; $4d84: $89
	add  [hl]                                        ; $4d85: $86
	ld   hl, $1111                                   ; $4d86: $21 $11 $11
	ld   de, $5b11                                   ; $4d89: $11 $11 $5b
	rst  $38                                         ; $4d8c: $ff
	rst  $38                                         ; $4d8d: $ff
	rst  $38                                         ; $4d8e: $ff
	rst  $38                                         ; $4d8f: $ff
	jp   z, $89b9                                    ; $4d90: $ca $b9 $89

	ld   [hl], a                                     ; $4d93: $77
	ld   b, c                                        ; $4d94: $41
	ld   de, $1111                                   ; $4d95: $11 $11 $11
	ld   de, $9f18                                   ; $4d98: $11 $18 $9f
	rst  $38                                         ; $4d9b: $ff
	rst  $38                                         ; $4d9c: $ff
	rst  $38                                         ; $4d9d: $ff
	ei                                               ; $4d9e: $fb
	sbc  c                                           ; $4d9f: $99
	cp   d                                           ; $4da0: $ba
	add  a                                           ; $4da1: $87
	ld   [hl], a                                     ; $4da2: $77
	ld   b, c                                        ; $4da3: $41
	ld   de, $1111                                   ; $4da4: $11 $11 $11
	ld   de, $df48                                   ; $4da7: $11 $48 $df
	rst  $38                                         ; $4daa: $ff
	rst  $38                                         ; $4dab: $ff
	rst  $38                                         ; $4dac: $ff
	ld   [$8aaa], a                                  ; $4dad: $ea $aa $8a
	adc  b                                           ; $4db0: $88
	add  h                                           ; $4db1: $84
	ld   de, $1111                                   ; $4db2: $11 $11 $11
	ld   de, $3a11                                   ; $4db5: $11 $11 $3a
	rst  $38                                         ; $4db8: $ff
	rst  $38                                         ; $4db9: $ff
	rst  $38                                         ; $4dba: $ff
	cp   $bb                                         ; $4dbb: $fe $bb
	and  a                                           ; $4dbd: $a7
	adc  d                                           ; $4dbe: $8a
	cp   b                                           ; $4dbf: $b8
	ld   h, h                                        ; $4dc0: $64
	ld   de, $1111                                   ; $4dc1: $11 $11 $11
	ld   de, $6911                                   ; $4dc4: $11 $11 $69
	rst  $38                                         ; $4dc7: $ff
	rst  $38                                         ; $4dc8: $ff
	rst  $38                                         ; $4dc9: $ff
	cp   $c9                                         ; $4dca: $fe $c9
	cp   d                                           ; $4dcc: $ba
	ld   a, e                                        ; $4dcd: $7b
	xor  b                                           ; $4dce: $a8
	and  e                                           ; $4dcf: $a3
	ld   de, $1111                                   ; $4dd0: $11 $11 $11
	ld   de, $5b11                                   ; $4dd3: $11 $11 $5b
	rst  $38                                         ; $4dd6: $ff
	rst  $38                                         ; $4dd7: $ff
	rst  $38                                         ; $4dd8: $ff
	rst  $38                                         ; $4dd9: $ff
	call c, $9aca                                    ; $4dda: $dc $ca $9a
	cp   b                                           ; $4ddd: $b8
	halt                                             ; $4dde: $76
	ld   de, $1111                                   ; $4ddf: $11 $11 $11
	ld   de, $4911                                   ; $4de2: $11 $11 $49
	rst  JumpTable                                         ; $4de5: $df
	rst  $38                                         ; $4de6: $ff
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	ld   a, [$a9ad]                                  ; $4de9: $fa $ad $a9
	sbc  d                                           ; $4dec: $9a
	add  [hl]                                        ; $4ded: $86
	ld   b, c                                        ; $4dee: $41
	ld   de, $1111                                   ; $4def: $11 $11 $11
	ld   de, $ef15                                   ; $4df2: $11 $15 $ef
	rst  $38                                         ; $4df5: $ff
	rst  $38                                         ; $4df6: $ff
	rst  $38                                         ; $4df7: $ff
	rst  JumpTable                                         ; $4df8: $df
	xor  d                                           ; $4df9: $aa
	ret                                              ; $4dfa: $c9


	adc  d                                           ; $4dfb: $8a
	sub  [hl]                                        ; $4dfc: $96
	ld   d, h                                        ; $4dfd: $54
	ld   de, $1111                                   ; $4dfe: $11 $11 $11
	ld   de, $7b12                                   ; $4e01: $11 $12 $7b
	rst  $38                                         ; $4e04: $ff
	rst  $38                                         ; $4e05: $ff
	rst  $38                                         ; $4e06: $ff
	db   $fd                                         ; $4e07: $fd
	res  5, b                                        ; $4e08: $cb $a8
	adc  b                                           ; $4e0a: $88
	ld   a, c                                        ; $4e0b: $79
	ld   [hl], l                                     ; $4e0c: $75
	ld   b, d                                        ; $4e0d: $42
	ld   hl, $1111                                   ; $4e0e: $21 $11 $11
	ld   de, $cf11                                   ; $4e11: $11 $11 $cf
	rst  $38                                         ; $4e14: $ff
	rst  $38                                         ; $4e15: $ff
	rst  $38                                         ; $4e16: $ff
	db   $eb                                         ; $4e17: $eb
	bit  7, c                                        ; $4e18: $cb $79
	add  a                                           ; $4e1a: $87
	and  a                                           ; $4e1b: $a7
	ld   d, [hl]                                     ; $4e1c: $56
	ld   b, d                                        ; $4e1d: $42
	ld   sp, $1111                                   ; $4e1e: $31 $11 $11
	ld   de, $ef38                                   ; $4e21: $11 $38 $ef
	rst  $38                                         ; $4e24: $ff
	rst  $38                                         ; $4e25: $ff
	rst  $38                                         ; $4e26: $ff
	db   $eb                                         ; $4e27: $eb
	xor  c                                           ; $4e28: $a9
	adc  d                                           ; $4e29: $8a
	ld   a, c                                        ; $4e2a: $79
	sbc  c                                           ; $4e2b: $99
	or   a                                           ; $4e2c: $b7
	ld   d, l                                        ; $4e2d: $55
	ld   de, $1111                                   ; $4e2e: $11 $11 $11
	ld   de, $cf37                                   ; $4e31: $11 $37 $cf
	rst  $38                                         ; $4e34: $ff
	rst  $38                                         ; $4e35: $ff
	rst  $38                                         ; $4e36: $ff
	db   $eb                                         ; $4e37: $eb
	adc  c                                           ; $4e38: $89
	xor  c                                           ; $4e39: $a9
	ld   a, c                                        ; $4e3a: $79
	xor  d                                           ; $4e3b: $aa
	ret  z                                           ; $4e3c: $c8

	ld   d, l                                        ; $4e3d: $55
	ld   sp, $1111                                   ; $4e3e: $31 $11 $11
	ld   de, $df18                                   ; $4e41: $11 $18 $df
	rst  $38                                         ; $4e44: $ff
	rst  $38                                         ; $4e45: $ff
	rst  $38                                         ; $4e46: $ff
	call c, $aa96                                    ; $4e47: $dc $96 $aa
	xor  h                                           ; $4e4a: $ac
	sbc  d                                           ; $4e4b: $9a
	res  0, [hl]                                     ; $4e4c: $cb $86
	ld   sp, $1111                                   ; $4e4e: $31 $11 $11
	ld   de, $8f15                                   ; $4e51: $11 $15 $8f
	rst  $38                                         ; $4e54: $ff
	rst  $38                                         ; $4e55: $ff
	rst  $38                                         ; $4e56: $ff
	db   $fd                                         ; $4e57: $fd
	xor  d                                           ; $4e58: $aa
	sbc  c                                           ; $4e59: $99
	sbc  b                                           ; $4e5a: $98
	cp   l                                           ; $4e5b: $bd
	cp   e                                           ; $4e5c: $bb
	sub  a                                           ; $4e5d: $97
	ld   h, c                                        ; $4e5e: $61
	ld   de, $1111                                   ; $4e5f: $11 $11 $11
	ld   de, $ff9c                                   ; $4e62: $11 $9c $ff
	rst  $38                                         ; $4e65: $ff
	rst  $38                                         ; $4e66: $ff
	cp   $cc                                         ; $4e67: $fe $cc
	adc  b                                           ; $4e69: $88
	xor  d                                           ; $4e6a: $aa
	res  3, l                                        ; $4e6b: $cb $9d
	cp   c                                           ; $4e6d: $b9
	ld   [hl], d                                     ; $4e6e: $72
	ld   de, $1111                                   ; $4e6f: $11 $11 $11
	ld   de, $af57                                   ; $4e72: $11 $57 $af
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	db   $ed                                         ; $4e78: $ed
	sub  a                                           ; $4e79: $97
	adc  c                                           ; $4e7a: $89
	cp   e                                           ; $4e7b: $bb
	cp   h                                           ; $4e7c: $bc
	adc  $b7                                         ; $4e7d: $ce $b7
	ld   h, d                                        ; $4e7f: $62
	ld   de, $1111                                   ; $4e80: $11 $11 $11
	ld   de, $ef59                                   ; $4e83: $11 $59 $ef
	rst  $38                                         ; $4e86: $ff
	rst  $38                                         ; $4e87: $ff
	cp   $dc                                         ; $4e88: $fe $dc
	sub  a                                           ; $4e8a: $97
	adc  d                                           ; $4e8b: $8a
	call z, $cdbc                                    ; $4e8c: $cc $bc $cd
	xor  b                                           ; $4e8f: $a8
	ld   d, c                                        ; $4e90: $51
	ld   de, $1111                                   ; $4e91: $11 $11 $11
	ld   [de], a                                     ; $4e94: $12
	adc  d                                           ; $4e95: $8a
	rst  JumpTable                                         ; $4e96: $df
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	db   $fc                                         ; $4e99: $fc
	call z, Call_0ae_7ab7                            ; $4e9a: $cc $b7 $7a
	sbc  $dc                                         ; $4e9d: $de $dc
	call z, $31b7                                    ; $4e9f: $cc $b7 $31
	ld   de, $1111                                   ; $4ea2: $11 $11 $11
	inc  d                                           ; $4ea5: $14
	ld   a, d                                        ; $4ea6: $7a
	cp   a                                           ; $4ea7: $bf
	rst  $38                                         ; $4ea8: $ff
	rst  $38                                         ; $4ea9: $ff
	rst  JumpTable                                         ; $4eaa: $df
	call c, $9ac8                                    ; $4eab: $dc $c8 $9a
	cp   [hl]                                        ; $4eae: $be
	call $d9fd                                       ; $4eaf: $cd $fd $d9
	ld   b, e                                        ; $4eb2: $43
	ld   de, $1111                                   ; $4eb3: $11 $11 $11
	ld   de, $be48                                   ; $4eb6: $11 $48 $be
	rst  $38                                         ; $4eb9: $ff
	rst  $38                                         ; $4eba: $ff
	rst  $38                                         ; $4ebb: $ff
	ei                                               ; $4ebc: $fb
	xor  h                                           ; $4ebd: $ac
	sbc  d                                           ; $4ebe: $9a
	set  1, l                                        ; $4ebf: $cb $cd
	cp   $dc                                         ; $4ec1: $fe $dc
	ld   [hl], l                                     ; $4ec3: $75
	ld   b, c                                        ; $4ec4: $41
	ld   de, $1111                                   ; $4ec5: $11 $11 $11
	inc  de                                          ; $4ec8: $13
	ld   a, e                                        ; $4ec9: $7b
	call c, $ffff                                    ; $4eca: $dc $ff $ff
	db   $dd                                         ; $4ecd: $dd
	db   $dd                                         ; $4ece: $dd
	db   $ec                                         ; $4ecf: $ec
	cp   d                                           ; $4ed0: $ba
	cp   l                                           ; $4ed1: $bd
	db   $ec                                         ; $4ed2: $ec
	db   $ed                                         ; $4ed3: $ed
	call Call_0ae_4196                               ; $4ed4: $cd $96 $41
	ld   de, $1111                                   ; $4ed7: $11 $11 $11
	ld   [de], a                                     ; $4eda: $12
	ld   a, b                                        ; $4edb: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4edc: $cf
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	db   $dd                                         ; $4edf: $dd
	call z, $bbbc                                    ; $4ee0: $cc $bc $bb
	db   $dd                                         ; $4ee3: $dd
	rst  JumpTable                                         ; $4ee4: $df
	db   $ed                                         ; $4ee5: $ed
	db   $ec                                         ; $4ee6: $ec
	xor  b                                           ; $4ee7: $a8
	ld   b, c                                        ; $4ee8: $41
	ld   de, $1111                                   ; $4ee9: $11 $11 $11
	ld   de, $cd47                                   ; $4eec: $11 $47 $cd
	rst  $38                                         ; $4eef: $ff
	xor  $fc                                         ; $4ef0: $ee $fc
	call c, $bccc                                    ; $4ef2: $dc $cc $bc
	db   $dd                                         ; $4ef5: $dd
	db   $ed                                         ; $4ef6: $ed
	rst  $38                                         ; $4ef7: $ff
	xor  $c8                                         ; $4ef8: $ee $c8
	ld   h, h                                        ; $4efa: $64
	ld   de, $1111                                   ; $4efb: $11 $11 $11
	ld   de, $7b14                                   ; $4efe: $11 $14 $7b
	adc  $fe                                         ; $4f01: $ce $fe
	db   $ec                                         ; $4f03: $ec
	call z, $ccde                                    ; $4f04: $cc $de $cc
	db   $ed                                         ; $4f07: $ed
	sbc  $dd                                         ; $4f08: $de $dd
	xor  $ed                                         ; $4f0a: $ee $ed
	and  a                                           ; $4f0c: $a7
	ld   h, h                                        ; $4f0d: $64
	ld   de, $1111                                   ; $4f0e: $11 $11 $11
	ld   de, $6b12                                   ; $4f11: $11 $12 $6b
	xor  $ef                                         ; $4f14: $ee $ef
	sbc  $dc                                         ; $4f16: $de $dc
	set  1, l                                        ; $4f18: $cb $cd
	sbc  $cc                                         ; $4f1a: $de $cc
	db   $dd                                         ; $4f1c: $dd
	rst  JumpTable                                         ; $4f1d: $df
	db   $ed                                         ; $4f1e: $ed
	ret                                              ; $4f1f: $c9


	ld   [hl], l                                     ; $4f20: $75
	ld   [hl-], a                                    ; $4f21: $32
	ld   de, $1111                                   ; $4f22: $11 $11 $11
	ld   de, $cf26                                   ; $4f25: $11 $26 $cf
	rst  $38                                         ; $4f28: $ff
	db   $ed                                         ; $4f29: $ed
	db   $db                                         ; $4f2a: $db
	xor  d                                           ; $4f2b: $aa
	xor  h                                           ; $4f2c: $ac
	cp   h                                           ; $4f2d: $bc
	set  5, a                                        ; $4f2e: $cb $ef
	rst  JumpTable                                         ; $4f30: $df
	db   $ed                                         ; $4f31: $ed
	cp   $d9                                         ; $4f32: $fe $d9
	ld   h, h                                        ; $4f34: $64
	inc  [hl]                                        ; $4f35: $34
	ld   b, c                                        ; $4f36: $41
	ld   de, $1111                                   ; $4f37: $11 $11 $11
	ld   d, $ad                                      ; $4f3a: $16 $ad
	rst  $38                                         ; $4f3c: $ff
	db   $ed                                         ; $4f3d: $ed
	jp   z, $9a88                                    ; $4f3e: $ca $88 $9a

	call c, $bdcb                                    ; $4f41: $dc $cb $bd
	rst  $28                                         ; $4f44: $ef
	rst  $38                                         ; $4f45: $ff
	rst  $38                                         ; $4f46: $ff
	db   $ed                                         ; $4f47: $ed
	sub  [hl]                                        ; $4f48: $96
	ld   d, e                                        ; $4f49: $53
	inc  [hl]                                        ; $4f4a: $34
	ld   de, $1111                                   ; $4f4b: $11 $11 $11
	ld   [de], a                                     ; $4f4e: $12
	ld   a, d                                        ; $4f4f: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f50: $cf
	rst  $38                                         ; $4f51: $ff
	db   $fc                                         ; $4f52: $fc
	sub  [hl]                                        ; $4f53: $96
	ld   a, d                                        ; $4f54: $7a
	cp   e                                           ; $4f55: $bb
	cp   d                                           ; $4f56: $ba
	cp   l                                           ; $4f57: $bd
	rst  $28                                         ; $4f58: $ef
	xor  $ef                                         ; $4f59: $ee $ef
	rst  $38                                         ; $4f5b: $ff
	reti                                             ; $4f5c: $d9


	ld   h, l                                        ; $4f5d: $65
	ld   b, e                                        ; $4f5e: $43
	ld   hl, $1111                                   ; $4f5f: $21 $11 $11
	ld   de, $ad15                                   ; $4f62: $11 $15 $ad
	rst  $28                                         ; $4f65: $ef
	rst  $38                                         ; $4f66: $ff
	ld   [$5765], a                                  ; $4f67: $ea $65 $57
	xor  d                                           ; $4f6a: $aa
	sbc  d                                           ; $4f6b: $9a
	adc  $ff                                         ; $4f6c: $ce $ff
	db   $fd                                         ; $4f6e: $fd
	rst  $38                                         ; $4f6f: $ff
	rst  $38                                         ; $4f70: $ff
	reti                                             ; $4f71: $d9


	ld   h, [hl]                                     ; $4f72: $66
	ld   h, h                                        ; $4f73: $64
	ld   de, $1111                                   ; $4f74: $11 $11 $11
	ld   de, $cf14                                   ; $4f77: $11 $14 $cf
	db   $ed                                         ; $4f7a: $ed
	rst  $28                                         ; $4f7b: $ef
	ei                                               ; $4f7c: $fb
	ld   h, d                                        ; $4f7d: $62
	dec  h                                           ; $4f7e: $25
	xor  l                                           ; $4f7f: $ad
	db   $dd                                         ; $4f80: $dd
	sbc  $ff                                         ; $4f81: $de $ff
	cp   $bc                                         ; $4f83: $fe $bc
	rst  $28                                         ; $4f85: $ef
	db   $fd                                         ; $4f86: $fd
	add  l                                           ; $4f87: $85
	ld   b, l                                        ; $4f88: $45
	ld   h, e                                        ; $4f89: $63
	ld   de, $1111                                   ; $4f8a: $11 $11 $11
	ld   de, $ff6f                                   ; $4f8d: $11 $6f $ff
	rst  $38                                         ; $4f90: $ff
	rst  $38                                         ; $4f91: $ff
	add  $31                                         ; $4f92: $c6 $31
	ld   c, d                                        ; $4f94: $4a
	rst  JumpTable                                         ; $4f95: $df
	rst  $38                                         ; $4f96: $ff
	rst  $38                                         ; $4f97: $ff
	rst  $38                                         ; $4f98: $ff
	db   $db                                         ; $4f99: $db
	cp   h                                           ; $4f9a: $bc
	rst  $38                                         ; $4f9b: $ff
	reti                                             ; $4f9c: $d9


	ld   d, e                                        ; $4f9d: $53
	ld   b, h                                        ; $4f9e: $44
	ld   hl, $1111                                   ; $4f9f: $21 $11 $11
	ld   de, $ff1a                                   ; $4fa2: $11 $1a $ff
	rst  $38                                         ; $4fa5: $ff
	rst  $38                                         ; $4fa6: $ff
	jp   hl                                          ; $4fa7: $e9


	ld   d, c                                        ; $4fa8: $51
	inc  d                                           ; $4fa9: $14
	sbc  e                                           ; $4faa: $9b
	rst  $28                                         ; $4fab: $ef
	rst  $38                                         ; $4fac: $ff
	rst  $38                                         ; $4fad: $ff
	call c, $9b97                                    ; $4fae: $dc $97 $9b
	cp   [hl]                                        ; $4fb1: $be
	reti                                             ; $4fb2: $d9


	ld   [hl], l                                     ; $4fb3: $75
	ld   b, h                                        ; $4fb4: $44
	ld   sp, $1111                                   ; $4fb5: $31 $11 $11
	ld   de, $ff9f                                   ; $4fb8: $11 $9f $ff
	rst  $38                                         ; $4fbb: $ff
	rst  $38                                         ; $4fbc: $ff
	or   h                                           ; $4fbd: $b4
	ld   de, $ad16                                   ; $4fbe: $11 $16 $ad
	rst  $38                                         ; $4fc1: $ff
	rst  $38                                         ; $4fc2: $ff
	cp   $a7                                         ; $4fc3: $fe $a7
	ld   h, a                                        ; $4fc5: $67
	adc  c                                           ; $4fc6: $89
	xor  [hl]                                        ; $4fc7: $ae
	db   $fd                                         ; $4fc8: $fd
	or   [hl]                                        ; $4fc9: $b6
	ld   [hl+], a                                    ; $4fca: $22
	ld   de, $1111                                   ; $4fcb: $11 $11 $11
	inc  de                                          ; $4fce: $13
	rst  $38                                         ; $4fcf: $ff
	rst  $38                                         ; $4fd0: $ff
	rst  $38                                         ; $4fd1: $ff
	cp   $61                                         ; $4fd2: $fe $61
	ld   de, $ef2b                                   ; $4fd4: $11 $2b $ef
	rst  $38                                         ; $4fd7: $ff
	rst  $38                                         ; $4fd8: $ff
	db   $fd                                         ; $4fd9: $fd
	ld   b, c                                        ; $4fda: $41
	scf                                              ; $4fdb: $37
	adc  c                                           ; $4fdc: $89
	sbc  e                                           ; $4fdd: $9b
	rst  $38                                         ; $4fde: $ff
	ld   sp, hl                                      ; $4fdf: $f9
	ld   hl, $1111                                   ; $4fe0: $21 $11 $11
	ld   de, $ff16                                   ; $4fe3: $11 $16 $ff
	rst  $38                                         ; $4fe6: $ff
	cp   $fe                                         ; $4fe7: $fe $fe
	ld   b, c                                        ; $4fe9: $41
	ld   de, $ff5f                                   ; $4fea: $11 $5f $ff
	rst  $28                                         ; $4fed: $ef
	rst  $38                                         ; $4fee: $ff
	db   $fc                                         ; $4fef: $fc
	ld   de, $b928                                   ; $4ff0: $11 $28 $b9
	ld   a, c                                        ; $4ff3: $79
	rst  $28                                         ; $4ff4: $ef
	ei                                               ; $4ff5: $fb
	ld   sp, $1111                                   ; $4ff6: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $4ff9: $11 $11 $ff
	rst  $38                                         ; $4ffc: $ff
	db   $db                                         ; $4ffd: $db
	rst  $38                                         ; $4ffe: $ff
	ld   [hl], c                                     ; $4fff: $71
	ld   de, $ff3f                                   ; $5000: $11 $3f $ff
	db   $ed                                         ; $5003: $ed
	rst  $38                                         ; $5004: $ff
	cp   $21                                         ; $5005: $fe $21
	ld   d, $dc                                      ; $5007: $16 $dc
	add  a                                           ; $5009: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $500a: $cf
	rst  $38                                         ; $500b: $ff
	ld   [hl], c                                     ; $500c: $71
	ld   de, $1111                                   ; $500d: $11 $11 $11
	ld   de, $ffcf                                   ; $5010: $11 $cf $ff
	db   $fc                                         ; $5013: $fc
	rst  JumpTable                                         ; $5014: $df
	pop  bc                                          ; $5015: $c1
	ld   de, $ff1c                                   ; $5016: $11 $1c $ff
	db   $fc                                         ; $5019: $fc
	rst  $28                                         ; $501a: $ef
	rst  $38                                         ; $501b: $ff
	ld   [hl], c                                     ; $501c: $71
	inc  d                                           ; $501d: $14
	xor  l                                           ; $501e: $ad
	cp   b                                           ; $501f: $b8
	sbc  [hl]                                        ; $5020: $9e
	rst  $38                                         ; $5021: $ff
	push bc                                          ; $5022: $c5
	ld   [de], a                                     ; $5023: $12
	ld   sp, $1111                                   ; $5024: $31 $11 $11
	rra                                              ; $5027: $1f
	rst  $38                                         ; $5028: $ff
	rst  $38                                         ; $5029: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $502a: $cf
	rst  $20                                         ; $502b: $e7
	ld   de, rAUD1ENV                                   ; $502c: $11 $12 $ff
	db   $fd                                         ; $502f: $fd
	rst  JumpTable                                         ; $5030: $df
	rst  $38                                         ; $5031: $ff
	or   e                                           ; $5032: $b3
	ld   [de], a                                     ; $5033: $12
	ld   a, h                                        ; $5034: $7c
	db   $db                                         ; $5035: $db
	sbc  e                                           ; $5036: $9b
	rst  $38                                         ; $5037: $ff
	ld   a, [$4363]                                  ; $5038: $fa $63 $43
	ld   de, $1111                                   ; $503b: $11 $11 $11
	rst  $38                                         ; $503e: $ff
	rst  $38                                         ; $503f: $ff
	ei                                               ; $5040: $fb
	call c, $1141                                    ; $5041: $dc $41 $11
	ld   e, a                                        ; $5044: $5f
	rst  $38                                         ; $5045: $ff
	call c, $e6ff                                    ; $5046: $dc $ff $e6
	ld   de, $ec7d                                   ; $5049: $11 $7d $ec
	sbc  d                                           ; $504c: $9a
	rst  $28                                         ; $504d: $ef
	ld   a, [$7965]                                  ; $504e: $fa $65 $79
	ld   b, c                                        ; $5051: $41
	ld   de, $2f11                                   ; $5052: $11 $11 $2f
	rst  $38                                         ; $5055: $ff
	rst  $38                                         ; $5056: $ff
	call z, $1181                                    ; $5057: $cc $81 $11
	rla                                              ; $505a: $17
	rst  $38                                         ; $505b: $ff
	cp   $ff                                         ; $505c: $fe $ff
	ld   [$1a11], a                                  ; $505e: $ea $11 $1a
	rst  $38                                         ; $5061: $ff
	ret  c                                           ; $5062: $d8

	ld   l, e                                        ; $5063: $6b
	cp   $95                                         ; $5064: $fe $95
	ld   l, e                                        ; $5066: $6b
	ld   sp, hl                                      ; $5067: $f9
	ld   de, $1111                                   ; $5068: $11 $11 $11
	rst  $28                                         ; $506b: $ef
	rst  $38                                         ; $506c: $ff
	rst  $38                                         ; $506d: $ff
	sub  $11                                         ; $506e: $d6 $11
	ld   de, $ff4d                                   ; $5070: $11 $4d $ff
	rst  $38                                         ; $5073: $ff
	db   $fd                                         ; $5074: $fd
	add  c                                           ; $5075: $81
	ld   de, $ff7f                                   ; $5076: $11 $7f $ff
	cp   c                                           ; $5079: $b9
	adc  $c9                                         ; $507a: $ce $c9
	ld   h, a                                        ; $507c: $67
	adc  $c2                                         ; $507d: $ce $c2
	ld   de, $1611                                   ; $507f: $11 $11 $16
	rst  $38                                         ; $5082: $ff
	rst  $38                                         ; $5083: $ff
	ei                                               ; $5084: $fb
	sub  h                                           ; $5085: $94
	ld   de, $bf11                                   ; $5086: $11 $11 $bf
	rst  $38                                         ; $5089: $ff
	xor  $dc                                         ; $508a: $ee $dc
	ld   d, c                                        ; $508c: $51
	ld   de, $ffbf                                   ; $508d: $11 $bf $ff
	and  [hl]                                        ; $5090: $a6
	sbc  e                                           ; $5091: $9b
	and  a                                           ; $5092: $a7
	ld   b, a                                        ; $5093: $47
	rst  $38                                         ; $5094: $ff
	and  c                                           ; $5095: $a1
	ld   de, $3f11                                   ; $5096: $11 $11 $3f
	rst  $38                                         ; $5099: $ff
	rst  $38                                         ; $509a: $ff
	db   $dd                                         ; $509b: $dd
	ld   h, c                                        ; $509c: $61
	ld   de, $ff1a                                   ; $509d: $11 $1a $ff
	cp   $ff                                         ; $50a0: $fe $ff
	or   l                                           ; $50a2: $b5
	ld   de, $ff17                                   ; $50a3: $11 $17 $ff
	rst  $38                                         ; $50a6: $ff
	ret                                              ; $50a7: $c9


	ld   d, h                                        ; $50a8: $54
	ld   d, a                                        ; $50a9: $57
	adc  l                                           ; $50aa: $8d
	db   $fc                                         ; $50ab: $fc
	ld   d, c                                        ; $50ac: $51
	ld   de, rAUD1LEN                                   ; $50ad: $11 $11 $ff
	rst  $38                                         ; $50b0: $ff
	cp   $fb                                         ; $50b1: $fe $fb
	ld   de, $9f11                                   ; $50b3: $11 $11 $9f
	rst  $38                                         ; $50b6: $ff
	xor  [hl]                                        ; $50b7: $ae
	rst  $38                                         ; $50b8: $ff
	add  c                                           ; $50b9: $81
	ld   de, $ff6e                                   ; $50ba: $11 $6e $ff
	rst  $38                                         ; $50bd: $ff
	db   $fc                                         ; $50be: $fc
	ld   sp, $df26                                   ; $50bf: $31 $26 $df
	rst  $30                                         ; $50c2: $f7
	ld   de, $1a11                                   ; $50c3: $11 $11 $1a
	rst  $38                                         ; $50c6: $ff
	rst  $38                                         ; $50c7: $ff
	cp   [hl]                                        ; $50c8: $be
	push bc                                          ; $50c9: $c5
	ld   de, rAUD1HIGH                                   ; $50ca: $11 $14 $ff
	ld   a, [$fbae]                                  ; $50cd: $fa $ae $fb
	ld   de, $ef12                                   ; $50d0: $11 $12 $ef
	rst  $38                                         ; $50d3: $ff
	rst  $38                                         ; $50d4: $ff
	ld   a, [$1911]                                  ; $50d5: $fa $11 $19
	rst  $38                                         ; $50d8: $ff
	or   c                                           ; $50d9: $b1
	ld   de, $1f11                                   ; $50da: $11 $11 $1f
	rst  $38                                         ; $50dd: $ff
	db   $fc                                         ; $50de: $fc
	xor  l                                           ; $50df: $ad
	sub  c                                           ; $50e0: $91
	ld   de, $ff1c                                   ; $50e1: $11 $1c $ff
	reti                                             ; $50e4: $d9


	cp   [hl]                                        ; $50e5: $be
	and  $11                                         ; $50e6: $e6 $11
	dec  de                                          ; $50e8: $1b
	rst  $38                                         ; $50e9: $ff
	db   $fd                                         ; $50ea: $fd
	rst  $38                                         ; $50eb: $ff
	or   $11                                         ; $50ec: $f6 $11
	ld   a, a                                        ; $50ee: $7f
	cp   $41                                         ; $50ef: $fe $41
	ld   de, $1f11                                   ; $50f1: $11 $11 $1f
	rst  $38                                         ; $50f4: $ff
	ld   hl, sp+$7a                                  ; $50f5: $f8 $7a
	add  c                                           ; $50f7: $81
	ld   de, $ff1f                                   ; $50f8: $11 $1f $ff
	ret  c                                           ; $50fb: $d8

	sbc  h                                           ; $50fc: $9c
	call nc, $1e11                                   ; $50fd: $d4 $11 $1e
	rst  $38                                         ; $5100: $ff
	db   $fc                                         ; $5101: $fc
	rst  $28                                         ; $5102: $ef
	db   $d3                                         ; $5103: $d3
	ld   de, $feaf                                   ; $5104: $11 $af $fe
	ld   sp, $1111                                   ; $5107: $31 $11 $11
	rra                                              ; $510a: $1f
	rst  $38                                         ; $510b: $ff
	ld   sp, hl                                      ; $510c: $f9
	ld   h, a                                        ; $510d: $67
	ld   d, c                                        ; $510e: $51
	ld   de, $ff1f                                   ; $510f: $11 $1f $ff
	jp   hl                                          ; $5112: $e9


	sbc  d                                           ; $5113: $9a
	sub  d                                           ; $5114: $92
	ld   de, $ff1f                                   ; $5115: $11 $1f $ff
	cp   $df                                         ; $5118: $fe $df
	and  c                                           ; $511a: $a1
	inc  de                                          ; $511b: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $511c: $cf
	db   $fd                                         ; $511d: $fd
	ld   hl, $1111                                   ; $511e: $21 $11 $11
	ld   l, a                                        ; $5121: $6f
	rst  $38                                         ; $5122: $ff
	rst  $30                                         ; $5123: $f7
	ld   [hl], a                                     ; $5124: $77
	ld   b, c                                        ; $5125: $41
	ld   de, $ff3f                                   ; $5126: $11 $3f $ff
	cp   c                                           ; $5129: $b9
	sbc  d                                           ; $512a: $9a
	add  c                                           ; $512b: $81
	ld   de, $ff6f                                   ; $512c: $11 $6f $ff
	db   $fd                                         ; $512f: $fd
	db   $dd                                         ; $5130: $dd
	ld   [hl], c                                     ; $5131: $71
	ld   d, $ff                                      ; $5132: $16 $ff
	ld   sp, hl                                      ; $5134: $f9
	ld   de, $1111                                   ; $5135: $11 $11 $11
	rst  $38                                         ; $5138: $ff
	rst  $38                                         ; $5139: $ff
	push af                                          ; $513a: $f5
	ld   h, l                                        ; $513b: $65
	ld   de, $9f11                                   ; $513c: $11 $11 $9f
	rst  $38                                         ; $513f: $ff
	sbc  b                                           ; $5140: $98
	sbc  c                                           ; $5141: $99
	ld   d, c                                        ; $5142: $51
	ld   de, $ffcf                                   ; $5143: $11 $cf $ff
	db   $fd                                         ; $5146: $fd
	db   $eb                                         ; $5147: $eb
	ld   sp, $ff4b                                   ; $5148: $31 $4b $ff
	pop  de                                          ; $514b: $d1
	ld   de, $1911                                   ; $514c: $11 $11 $19
	rst  $38                                         ; $514f: $ff
	rst  $38                                         ; $5150: $ff
	ld   h, [hl]                                     ; $5151: $66
	ld   h, d                                        ; $5152: $62
	ld   de, $ff15                                   ; $5153: $11 $15 $ff
	ei                                               ; $5156: $fb
	adc  b                                           ; $5157: $88
	sub  a                                           ; $5158: $97
	ld   de, $ff18                                   ; $5159: $11 $18 $ff
	rst  $38                                         ; $515c: $ff
	cp   e                                           ; $515d: $bb
	and  l                                           ; $515e: $a5
	dec  h                                           ; $515f: $25
	xor  a                                           ; $5160: $af
	cp   $21                                         ; $5161: $fe $21
	ld   de, rAUD1LEN                                   ; $5163: $11 $11 $ff
	rst  $38                                         ; $5166: $ff
	and  $a6                                         ; $5167: $e6 $a6
	ld   de, $cf11                                   ; $5169: $11 $11 $cf
	rst  $38                                         ; $516c: $ff
	ld   a, c                                        ; $516d: $79
	xor  d                                           ; $516e: $aa
	ld   b, c                                        ; $516f: $41
	ld   de, $ffef                                   ; $5170: $11 $ef $ff
	db   $fc                                         ; $5173: $fc
	ei                                               ; $5174: $fb
	ld   de, $ff5b                                   ; $5175: $11 $5b $ff
	add  c                                           ; $5178: $81
	ld   de, $1f11                                   ; $5179: $11 $11 $1f
	rst  $38                                         ; $517c: $ff

jr_0ae_517d:
	db   $fc                                         ; $517d: $fc
	ld   b, [hl]                                     ; $517e: $46
	ld   b, c                                        ; $517f: $41
	ld   de, $ff1c                                   ; $5180: $11 $1c $ff
	ld   hl, sp+$77                                  ; $5183: $f8 $77
	sub  h                                           ; $5185: $94
	ld   de, $ff2f                                   ; $5186: $11 $2f $ff
	rst  $38                                         ; $5189: $ff
	bit  2, c                                        ; $518a: $cb $51
	jr   z, jr_0ae_517d                              ; $518c: $28 $ef

	db   $f4                                         ; $518e: $f4
	ld   de, $1911                                   ; $518f: $11 $11 $19
	rst  $38                                         ; $5192: $ff
	rst  $38                                         ; $5193: $ff
	ld   d, a                                        ; $5194: $57
	ld   [hl], c                                     ; $5195: $71
	ld   de, $ff17                                   ; $5196: $11 $17 $ff
	ld   a, [$8689]                                  ; $5199: $fa $89 $86
	ld   de, $ff1a                                   ; $519c: $11 $1a $ff
	rst  $38                                         ; $519f: $ff
	rst  $20                                         ; $51a0: $e7
	ld   h, c                                        ; $51a1: $61
	rla                                              ; $51a2: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51a3: $cf
	rst  $30                                         ; $51a4: $f7
	ld   de, $1111                                   ; $51a5: $11 $11 $11
	rst  $38                                         ; $51a8: $ff
	rst  $38                                         ; $51a9: $ff
	and  l                                           ; $51aa: $a5
	ld   [hl], e                                     ; $51ab: $73
	ld   de, rAUD1ENV                                   ; $51ac: $11 $12 $ff
	cp   $8a                                         ; $51af: $fe $8a
	add  a                                           ; $51b1: $87
	ld   de, $ff19                                   ; $51b2: $11 $19 $ff
	rst  $38                                         ; $51b5: $ff
	sub  [hl]                                        ; $51b6: $96
	ld   [hl], l                                     ; $51b7: $75
	ld   [hl], $ae                                   ; $51b8: $36 $ae
	ld   a, [$1111]                                  ; $51ba: $fa $11 $11
	ld   de, $ffff                                   ; $51bd: $11 $ff $ff
	push af                                          ; $51c0: $f5
	ld   b, c                                        ; $51c1: $41
	ld   de, rAUD1ENV                                   ; $51c2: $11 $12 $ff
	rst  $38                                         ; $51c5: $ff
	ret                                              ; $51c6: $c9


	ld   d, h                                        ; $51c7: $54
	ld   de, $ff3d                                   ; $51c8: $11 $3d $ff
	rst  $38                                         ; $51cb: $ff
	xor  b                                           ; $51cc: $a8
	add  a                                           ; $51cd: $87
	ld   e, b                                        ; $51ce: $58
	cp   h                                           ; $51cf: $bc
	sub  c                                           ; $51d0: $91
	ld   de, $1511                                   ; $51d1: $11 $11 $15
	rst  $38                                         ; $51d4: $ff
	rst  $38                                         ; $51d5: $ff
	or   d                                           ; $51d6: $b2
	ld   de, $1611                                   ; $51d7: $11 $11 $16
	rst  $38                                         ; $51da: $ff
	rst  $38                                         ; $51db: $ff
	xor  b                                           ; $51dc: $a8
	adc  d                                           ; $51dd: $8a
	ld   [hl], d                                     ; $51de: $72
	daa                                              ; $51df: $27
	rst  $38                                         ; $51e0: $ff
	rst  $38                                         ; $51e1: $ff
	cp   b                                           ; $51e2: $b8
	and  a                                           ; $51e3: $a7
	ld   d, e                                        ; $51e4: $53
	inc  h                                           ; $51e5: $24
	ld   sp, $1111                                   ; $51e6: $31 $11 $11
	rra                                              ; $51e9: $1f
	rst  $38                                         ; $51ea: $ff
	push af                                          ; $51eb: $f5
	inc  de                                          ; $51ec: $13
	add  d                                           ; $51ed: $82
	ld   de, $ff2f                                   ; $51ee: $11 $2f $ff
	jp   c, $b7ab                                    ; $51f1: $da $ab $b7

	ld   [de], a                                     ; $51f4: $12
	rst  $28                                         ; $51f5: $ef
	rst  $38                                         ; $51f6: $ff
	ld   hl, sp-$7b                                  ; $51f7: $f8 $85
	ld   de, $7147                                   ; $51f9: $11 $47 $71
	ld   de, $1f11                                   ; $51fc: $11 $11 $1f
	rst  $38                                         ; $51ff: $ff
	rst  $38                                         ; $5200: $ff
	rst  $30                                         ; $5201: $f7
	ld   de, $bf11                                   ; $5202: $11 $11 $bf
	rst  $38                                         ; $5205: $ff
	rst  $38                                         ; $5206: $ff
	or   $11                                         ; $5207: $f6 $11
	ld   e, [hl]                                     ; $5209: $5e
	rst  $38                                         ; $520a: $ff
	rst  $38                                         ; $520b: $ff
	ld   a, [$1311]                                  ; $520c: $fa $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $520f: $cf
	pop  bc                                          ; $5210: $c1
	ld   de, $1b11                                   ; $5211: $11 $11 $1b
	rst  $38                                         ; $5214: $ff
	rst  $38                                         ; $5215: $ff
	add  d                                           ; $5216: $82
	ld   hl, $5f11                                   ; $5217: $21 $11 $5f
	rst  $38                                         ; $521a: $ff
	ei                                               ; $521b: $fb
	ld   h, a                                        ; $521c: $67
	sbc  h                                           ; $521d: $9c
	call z, $ffff                                    ; $521e: $cc $ff $ff
	ld   h, c                                        ; $5221: $61
	ld   de, $7469                                   ; $5222: $11 $69 $74
	ld   de, $1111                                   ; $5225: $11 $11 $11
	ld   e, $ff                                      ; $5228: $1e $ff
	cp   $a8                                         ; $522a: $fe $a8
	ld   d, c                                        ; $522c: $51
	ld   d, $ff                                      ; $522d: $16 $ff
	rst  $38                                         ; $522f: $ff
	jp   z, $dcbd                                    ; $5230: $ca $bd $dc

jr_0ae_5233:
	rst  $38                                         ; $5233: $ff
	rst  $38                                         ; $5234: $ff
	db   $d3                                         ; $5235: $d3
	ld   de, $5434                                   ; $5236: $11 $34 $54
	inc  d                                           ; $5239: $14
	ld   hl, $1111                                   ; $523a: $21 $11 $11
	ld   a, [de]                                     ; $523d: $1a
	rst  $38                                         ; $523e: $ff
	db   $fd                                         ; $523f: $fd
	and  a                                           ; $5240: $a7
	ld   e, d                                        ; $5241: $5a
	rst  $38                                         ; $5242: $ff
	rst  $38                                         ; $5243: $ff
	cp   $cb                                         ; $5244: $fe $cb
	adc  e                                           ; $5246: $8b
	rst  $38                                         ; $5247: $ff
	rst  $38                                         ; $5248: $ff
	rst  ToBoot                                         ; $5249: $c7
	ld   b, d                                        ; $524a: $42
	ld   de, $4433                                   ; $524b: $11 $33 $44
	ld   de, $1111                                   ; $524e: $11 $11 $11
	dec  d                                           ; $5251: $15
	xor  a                                           ; $5252: $af
	ld   a, [$ffcf]                                  ; $5253: $fa $cf $ff
	rst  $30                                         ; $5256: $f7
	ld   l, a                                        ; $5257: $6f
	rst  $38                                         ; $5258: $ff
	ei                                               ; $5259: $fb
	adc  a                                           ; $525a: $8f
	cp   $cc                                         ; $525b: $fe $cc
	call z, $1191                                    ; $525d: $cc $91 $11
	ld   de, $1111                                   ; $5260: $11 $11 $11
	jr   jr_0ae_5233                                 ; $5263: $18 $ce

	rst  $38                                         ; $5265: $ff
	rst  JumpTable                                         ; $5266: $df
	or   c                                           ; $5267: $b1
	ld   [hl-], a                                    ; $5268: $32
	ld   c, a                                        ; $5269: $4f
	rst  $38                                         ; $526a: $ff
	call c, $fc57                                    ; $526b: $dc $57 $fc
	rst  JumpTable                                         ; $526e: $df
	or   [hl]                                        ; $526f: $b6
	ld   sp, $2a11                                   ; $5270: $31 $11 $2a
	add  e                                           ; $5273: $83
	ld   de, $a99f                                   ; $5274: $11 $9f $a9
	adc  c                                           ; $5277: $89
	rst  $38                                         ; $5278: $ff
	and  h                                           ; $5279: $a4
	add  hl, de                                      ; $527a: $19
	rst  $28                                         ; $527b: $ef
	ld   a, [$5a67]                                  ; $527c: $fa $67 $5a
	cp   $b9                                         ; $527f: $fe $b9
	ld   sp, $1212                                   ; $5281: $31 $12 $12
	ld   d, e                                        ; $5284: $53
	ld   h, e                                        ; $5285: $63
	rla                                              ; $5286: $17
	ld   b, l                                        ; $5287: $45
	rst  $38                                         ; $5288: $ff
	db   $ec                                         ; $5289: $ec
	sbc  d                                           ; $528a: $9a
	daa                                              ; $528b: $27
	xor  b                                           ; $528c: $a8
	rst  $38                                         ; $528d: $ff
	cp   e                                           ; $528e: $bb
	ld   [hl], l                                     ; $528f: $75
	sbc  e                                           ; $5290: $9b
	xor  b                                           ; $5291: $a8
	call $1162                                       ; $5292: $cd $62 $11
	ld   a, [hl-]                                    ; $5295: $3a
	sbc  c                                           ; $5296: $99
	ld   d, c                                        ; $5297: $51
	inc  d                                           ; $5298: $14
	dec  d                                           ; $5299: $15
	adc  $fd                                         ; $529a: $ce $fd
	ld   a, d                                        ; $529c: $7a
	add  $ca                                         ; $529d: $c6 $ca
	ld   e, a                                        ; $529f: $5f
	ei                                               ; $52a0: $fb
	xor  c                                           ; $52a1: $a9
	ld   d, $fb                                      ; $52a2: $16 $fb
	cp   l                                           ; $52a4: $bd
	ld   [de], a                                     ; $52a5: $12
	ld   [hl], c                                     ; $52a6: $71
	inc  d                                           ; $52a7: $14
	ld   [hl], l                                     ; $52a8: $75
	xor  b                                           ; $52a9: $a8
	ld   [de], a                                     ; $52aa: $12
	ld   [hl], c                                     ; $52ab: $71
	ld   a, l                                        ; $52ac: $7d
	add  a                                           ; $52ad: $87
	db   $db                                         ; $52ae: $db
	xor  l                                           ; $52af: $ad
	ld   h, d                                        ; $52b0: $62
	rst  $28                                         ; $52b1: $ef
	db   $dd                                         ; $52b2: $dd
	or   h                                           ; $52b3: $b4
	xor  a                                           ; $52b4: $af
	ld   [hl], l                                     ; $52b5: $75
	or   a                                           ; $52b6: $b7
	xor  h                                           ; $52b7: $ac
	ld   de, $8787                                   ; $52b8: $11 $87 $87
	ld   de, $4457                                   ; $52bb: $11 $57 $44
	ld   [hl-], a                                    ; $52be: $32
	ld   l, h                                        ; $52bf: $6c
	rst  ToBoot                                         ; $52c0: $c7
	xor  e                                           ; $52c1: $ab
	ld   a, c                                        ; $52c2: $79
	rst  ToBoot                                         ; $52c3: $c7
	rst  $38                                         ; $52c4: $ff
	ld   a, [hl]                                     ; $52c5: $7e
	or   [hl]                                        ; $52c6: $b6
	xor  c                                           ; $52c7: $a9
	ld   a, d                                        ; $52c8: $7a
	call z, $1197                                    ; $52c9: $cc $97 $11
	sbc  b                                           ; $52cc: $98
	ld   a, b                                        ; $52cd: $78
	ld   b, l                                        ; $52ce: $45
	ld   b, e                                        ; $52cf: $43
	halt                                             ; $52d0: $76
	ld   d, e                                        ; $52d1: $53
	inc  a                                           ; $52d2: $3c
	and  a                                           ; $52d3: $a7
	and  d                                           ; $52d4: $a2
	adc  [hl]                                        ; $52d5: $8e
	adc  e                                           ; $52d6: $8b
	db   $db                                         ; $52d7: $db
	rst  $38                                         ; $52d8: $ff
	and  [hl]                                        ; $52d9: $a6
	adc  b                                           ; $52da: $88
	cp   l                                           ; $52db: $bd
	ld   h, a                                        ; $52dc: $67
	db   $eb                                         ; $52dd: $eb
	halt                                             ; $52de: $76
	ld   de, $a8bc                                   ; $52df: $11 $bc $a8
	ld   de, $7549                                   ; $52e2: $11 $49 $75
	ld   [hl], a                                     ; $52e5: $77
	add  [hl]                                        ; $52e6: $86
	inc  [hl]                                        ; $52e7: $34
	sbc  l                                           ; $52e8: $9d
	sub  $48                                         ; $52e9: $d6 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52eb: $cf
	db   $e4                                         ; $52ec: $e4
	ld   h, $ff                                      ; $52ed: $26 $ff
	add  sp, $12                                     ; $52ef: $e8 $12
	adc  $b8                                         ; $52f1: $ce $b8
	ld   b, l                                        ; $52f3: $45
	ld   a, c                                        ; $52f4: $79
	ld   [hl], a                                     ; $52f5: $77
	ld   d, h                                        ; $52f6: $54
	ld   h, h                                        ; $52f7: $64
	adc  b                                           ; $52f8: $88
	ld   [hl], a                                     ; $52f9: $77
	ld   b, e                                        ; $52fa: $43
	add  hl, hl                                      ; $52fb: $29
	cp   $a4                                         ; $52fc: $fe $a4
	dec  [hl]                                        ; $52fe: $35
	cp   a                                           ; $52ff: $bf
	ret  z                                           ; $5300: $c8

	halt                                             ; $5301: $76
	rst  $28                                         ; $5302: $ef
	and  e                                           ; $5303: $a3
	ld   b, a                                        ; $5304: $47
	rst  JumpTable                                         ; $5305: $df
	ld   h, l                                        ; $5306: $65
	xor  d                                           ; $5307: $aa
	ld   [hl], l                                     ; $5308: $75
	ld   b, a                                        ; $5309: $47
	jp   c, Jump_0ae_4841                            ; $530a: $da $41 $48

	and  [hl]                                        ; $530d: $a6
	inc  d                                           ; $530e: $14
	rst  $38                                         ; $530f: $ff
	ld   [hl], e                                     ; $5310: $73
	dec  d                                           ; $5311: $15
	call c, $8a9a                                    ; $5312: $dc $9a $8a
	ret  c                                           ; $5315: $d8

	ld   h, a                                        ; $5316: $67
	adc  l                                           ; $5317: $8d
	push de                                          ; $5318: $d5
	ld   a, [hl]                                     ; $5319: $7e
	jp   z, Jump_0ae_4952                            ; $531a: $ca $52 $49

	ld   a, b                                        ; $531d: $78
	ld   [$4358], a                                  ; $531e: $ea $58 $43
	ld   [hl], l                                     ; $5321: $75
	ld   e, c                                        ; $5322: $59
	xor  b                                           ; $5323: $a8
	ld   a, b                                        ; $5324: $78
	ld   h, l                                        ; $5325: $65
	add  a                                           ; $5326: $87
	sbc  e                                           ; $5327: $9b
	xor  c                                           ; $5328: $a9
	adc  b                                           ; $5329: $88
	halt                                             ; $532a: $76
	sbc  e                                           ; $532b: $9b
	cp   d                                           ; $532c: $ba
	ld   a, d                                        ; $532d: $7a
	ret  z                                           ; $532e: $c8

	ld   [hl], e                                     ; $532f: $73
	ld   c, d                                        ; $5330: $4a
	call c, Call_0ae_5574                            ; $5331: $dc $74 $55
	halt                                             ; $5334: $76
	ld   d, l                                        ; $5335: $55
	adc  l                                           ; $5336: $8d
	or   h                                           ; $5337: $b4
	dec  [hl]                                        ; $5338: $35
	ld   l, h                                        ; $5339: $6c
	cp   b                                           ; $533a: $b8
	xor  c                                           ; $533b: $a9
	sub  a                                           ; $533c: $97
	ld   d, a                                        ; $533d: $57
	cp   a                                           ; $533e: $bf
	xor  b                                           ; $533f: $a8
	sub  a                                           ; $5340: $97
	xor  d                                           ; $5341: $aa
	ld   d, h                                        ; $5342: $54
	ld   a, d                                        ; $5343: $7a
	jp   c, $6764                                    ; $5344: $da $64 $67

	ld   a, b                                        ; $5347: $78
	ld   [hl], a                                     ; $5348: $77
	xor  c                                           ; $5349: $a9
	halt                                             ; $534a: $76
	ld   h, a                                        ; $534b: $67
	add  a                                           ; $534c: $87
	ld   d, a                                        ; $534d: $57
	sbc  e                                           ; $534e: $9b
	or   a                                           ; $534f: $b7
	ld   d, a                                        ; $5350: $57
	sbc  e                                           ; $5351: $9b
	sbc  c                                           ; $5352: $99
	adc  c                                           ; $5353: $89
	or   a                                           ; $5354: $b7
	ld   h, a                                        ; $5355: $67
	ld   a, c                                        ; $5356: $79
	sbc  b                                           ; $5357: $98
	ld   a, c                                        ; $5358: $79
	sub  a                                           ; $5359: $97
	ld   h, [hl]                                     ; $535a: $66
	ld   a, d                                        ; $535b: $7a
	and  a                                           ; $535c: $a7
	ld   h, [hl]                                     ; $535d: $66
	ld   a, b                                        ; $535e: $78
	add  a                                           ; $535f: $87
	adc  b                                           ; $5360: $88
	adc  c                                           ; $5361: $89
	adc  c                                           ; $5362: $89
	add  a                                           ; $5363: $87
	sbc  c                                           ; $5364: $99
	sbc  c                                           ; $5365: $99
	ld   [hl], a                                     ; $5366: $77
	ld   [hl], a                                     ; $5367: $77
	sub  a                                           ; $5368: $97
	adc  c                                           ; $5369: $89
	sbc  c                                           ; $536a: $99
	adc  b                                           ; $536b: $88
	ld   [hl], a                                     ; $536c: $77
	add  a                                           ; $536d: $87
	ld   [hl], a                                     ; $536e: $77
	adc  c                                           ; $536f: $89
	add  a                                           ; $5370: $87
	adc  c                                           ; $5371: $89
	sbc  b                                           ; $5372: $98
	adc  c                                           ; $5373: $89
	xor  c                                           ; $5374: $a9
	halt                                             ; $5375: $76
	ld   a, b                                        ; $5376: $78
	sbc  b                                           ; $5377: $98
	adc  b                                           ; $5378: $88
	adc  c                                           ; $5379: $89
	sbc  b                                           ; $537a: $98
	add  a                                           ; $537b: $87
	ld   [hl], a                                     ; $537c: $77
	ld   a, b                                        ; $537d: $78
	ld   [hl], a                                     ; $537e: $77
	adc  b                                           ; $537f: $88
	sbc  d                                           ; $5380: $9a
	sub  a                                           ; $5381: $97
	ld   [hl], a                                     ; $5382: $77
	sbc  b                                           ; $5383: $98
	sub  a                                           ; $5384: $97
	ld   [hl], a                                     ; $5385: $77

Call_0ae_5386:
	adc  b                                           ; $5386: $88
	adc  b                                           ; $5387: $88
	adc  b                                           ; $5388: $88
	sbc  b                                           ; $5389: $98
	sbc  c                                           ; $538a: $99
	sbc  b                                           ; $538b: $98
	ld   a, b                                        ; $538c: $78
	add  a                                           ; $538d: $87
	ld   [hl], a                                     ; $538e: $77
	adc  c                                           ; $538f: $89
	adc  b                                           ; $5390: $88
	ld   [hl], a                                     ; $5391: $77
	adc  c                                           ; $5392: $89
	add  a                                           ; $5393: $87
	adc  c                                           ; $5394: $89
	sbc  b                                           ; $5395: $98
	adc  b                                           ; $5396: $88

Call_0ae_5397:
	adc  b                                           ; $5397: $88
	adc  b                                           ; $5398: $88
	adc  b                                           ; $5399: $88
	adc  b                                           ; $539a: $88
	ld   a, b                                        ; $539b: $78
	adc  c                                           ; $539c: $89
	add  a                                           ; $539d: $87
	ld   a, b                                        ; $539e: $78
	adc  b                                           ; $539f: $88
	add  a                                           ; $53a0: $87
	ld   a, c                                        ; $53a1: $79
	adc  b                                           ; $53a2: $88
	add  a                                           ; $53a3: $87
	adc  c                                           ; $53a4: $89
	adc  b                                           ; $53a5: $88
	add  a                                           ; $53a6: $87
	adc  c                                           ; $53a7: $89
	adc  b                                           ; $53a8: $88
	adc  c                                           ; $53a9: $89
	adc  b                                           ; $53aa: $88
	adc  b                                           ; $53ab: $88
	sbc  b                                           ; $53ac: $98
	add  a                                           ; $53ad: $87
	ld   a, b                                        ; $53ae: $78
	adc  c                                           ; $53af: $89
	adc  b                                           ; $53b0: $88
	ld   a, b                                        ; $53b1: $78
	adc  b                                           ; $53b2: $88
	adc  b                                           ; $53b3: $88
	sbc  b                                           ; $53b4: $98
	adc  b                                           ; $53b5: $88
	adc  b                                           ; $53b6: $88
	adc  b                                           ; $53b7: $88
	adc  b                                           ; $53b8: $88
	adc  b                                           ; $53b9: $88
	sbc  b                                           ; $53ba: $98
	adc  b                                           ; $53bb: $88
	adc  c                                           ; $53bc: $89
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
	adc  c                                           ; $53d1: $89
	sbc  b                                           ; $53d2: $98
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

Call_0ae_5574:
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

Call_0ae_55a7:
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
	sbc  b                                           ; $5957: $98
	adc  c                                           ; $5958: $89
	adc  b                                           ; $5959: $88
	sbc  b                                           ; $595a: $98
	adc  c                                           ; $595b: $89
	adc  b                                           ; $595c: $88
	adc  b                                           ; $595d: $88
	adc  b                                           ; $595e: $88
	adc  b                                           ; $595f: $88
	adc  b                                           ; $5960: $88
	add  a                                           ; $5961: $87
	adc  b                                           ; $5962: $88
	adc  b                                           ; $5963: $88
	adc  b                                           ; $5964: $88
	adc  b                                           ; $5965: $88
	adc  b                                           ; $5966: $88
	adc  c                                           ; $5967: $89
	adc  b                                           ; $5968: $88
	adc  b                                           ; $5969: $88
	adc  b                                           ; $596a: $88
	adc  b                                           ; $596b: $88
	adc  b                                           ; $596c: $88
	adc  b                                           ; $596d: $88
	adc  b                                           ; $596e: $88
	adc  b                                           ; $596f: $88
	adc  b                                           ; $5970: $88
	adc  b                                           ; $5971: $88
	adc  b                                           ; $5972: $88
	adc  b                                           ; $5973: $88
	adc  b                                           ; $5974: $88
	adc  b                                           ; $5975: $88
	adc  b                                           ; $5976: $88
	adc  b                                           ; $5977: $88
	adc  b                                           ; $5978: $88
	adc  b                                           ; $5979: $88
	adc  b                                           ; $597a: $88
	adc  b                                           ; $597b: $88
	sbc  b                                           ; $597c: $98
	adc  b                                           ; $597d: $88
	adc  b                                           ; $597e: $88
	adc  b                                           ; $597f: $88
	ld   a, b                                        ; $5980: $78
	ld   a, c                                        ; $5981: $79
	adc  b                                           ; $5982: $88
	adc  b                                           ; $5983: $88
	adc  b                                           ; $5984: $88
	adc  b                                           ; $5985: $88
	sbc  b                                           ; $5986: $98
	adc  b                                           ; $5987: $88
	adc  b                                           ; $5988: $88
	adc  c                                           ; $5989: $89
	ld   a, b                                        ; $598a: $78
	sbc  b                                           ; $598b: $98
	adc  b                                           ; $598c: $88
	adc  b                                           ; $598d: $88
	sub  a                                           ; $598e: $97
	adc  c                                           ; $598f: $89
	adc  b                                           ; $5990: $88
	adc  b                                           ; $5991: $88
	adc  b                                           ; $5992: $88
	adc  b                                           ; $5993: $88
	adc  b                                           ; $5994: $88
	add  a                                           ; $5995: $87
	sbc  b                                           ; $5996: $98
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88
	adc  b                                           ; $5999: $88
	adc  b                                           ; $599a: $88
	adc  b                                           ; $599b: $88
	adc  b                                           ; $599c: $88
	adc  b                                           ; $599d: $88
	adc  b                                           ; $599e: $88
	adc  b                                           ; $599f: $88
	adc  b                                           ; $59a0: $88
	adc  b                                           ; $59a1: $88
	adc  b                                           ; $59a2: $88
	adc  b                                           ; $59a3: $88
	ld   a, b                                        ; $59a4: $78
	adc  c                                           ; $59a5: $89
	ld   a, c                                        ; $59a6: $79
	ld   a, b                                        ; $59a7: $78
	sub  a                                           ; $59a8: $97
	add  a                                           ; $59a9: $87
	sub  a                                           ; $59aa: $97
	sbc  b                                           ; $59ab: $98
	adc  b                                           ; $59ac: $88
	ld   a, b                                        ; $59ad: $78
	ld   a, b                                        ; $59ae: $78
	adc  b                                           ; $59af: $88
	adc  b                                           ; $59b0: $88
	adc  b                                           ; $59b1: $88
	add  a                                           ; $59b2: $87
	adc  b                                           ; $59b3: $88
	adc  b                                           ; $59b4: $88
	ld   a, c                                        ; $59b5: $79
	sub  a                                           ; $59b6: $97
	adc  b                                           ; $59b7: $88
	ld   a, c                                        ; $59b8: $79
	add  a                                           ; $59b9: $87
	sbc  c                                           ; $59ba: $99
	ld   a, b                                        ; $59bb: $78
	adc  b                                           ; $59bc: $88
	sbc  b                                           ; $59bd: $98
	adc  c                                           ; $59be: $89
	sbc  b                                           ; $59bf: $98
	ld   a, b                                        ; $59c0: $78
	adc  b                                           ; $59c1: $88
	ld   [hl], a                                     ; $59c2: $77
	add  a                                           ; $59c3: $87
	add  a                                           ; $59c4: $87
	adc  b                                           ; $59c5: $88
	ld   a, b                                        ; $59c6: $78
	adc  b                                           ; $59c7: $88
	sbc  b                                           ; $59c8: $98
	adc  b                                           ; $59c9: $88
	add  a                                           ; $59ca: $87
	sbc  b                                           ; $59cb: $98
	adc  d                                           ; $59cc: $8a
	ld   a, c                                        ; $59cd: $79
	sub  a                                           ; $59ce: $97
	adc  b                                           ; $59cf: $88
	adc  b                                           ; $59d0: $88
	add  a                                           ; $59d1: $87
	adc  c                                           ; $59d2: $89
	ld   a, c                                        ; $59d3: $79
	add  a                                           ; $59d4: $87
	sbc  b                                           ; $59d5: $98
	add  a                                           ; $59d6: $87
	sbc  b                                           ; $59d7: $98
	ld   a, b                                        ; $59d8: $78
	add  a                                           ; $59d9: $87
	adc  b                                           ; $59da: $88
	ld   a, c                                        ; $59db: $79
	ld   a, b                                        ; $59dc: $78
	sub  a                                           ; $59dd: $97
	sub  a                                           ; $59de: $97
	adc  c                                           ; $59df: $89
	adc  b                                           ; $59e0: $88
	sbc  b                                           ; $59e1: $98
	adc  c                                           ; $59e2: $89
	ld   a, b                                        ; $59e3: $78
	adc  b                                           ; $59e4: $88
	adc  b                                           ; $59e5: $88
	ld   a, c                                        ; $59e6: $79
	sub  a                                           ; $59e7: $97
	adc  b                                           ; $59e8: $88
	ld   a, b                                        ; $59e9: $78
	add  a                                           ; $59ea: $87
	sub  a                                           ; $59eb: $97
	ld   a, c                                        ; $59ec: $79
	adc  c                                           ; $59ed: $89
	adc  c                                           ; $59ee: $89
	ld   a, b                                        ; $59ef: $78
	sub  a                                           ; $59f0: $97
	adc  b                                           ; $59f1: $88
	add  a                                           ; $59f2: $87
	add  a                                           ; $59f3: $87
	adc  c                                           ; $59f4: $89
	ld   a, b                                        ; $59f5: $78
	ld   [hl], a                                     ; $59f6: $77
	sbc  c                                           ; $59f7: $99
	ld   [hl], a                                     ; $59f8: $77
	adc  b                                           ; $59f9: $88
	add  a                                           ; $59fa: $87
	sub  a                                           ; $59fb: $97
	sub  a                                           ; $59fc: $97
	ld   a, d                                        ; $59fd: $7a
	ld   a, b                                        ; $59fe: $78
	adc  b                                           ; $59ff: $88
	ld   a, c                                        ; $5a00: $79
	ld   [hl], a                                     ; $5a01: $77
	and  a                                           ; $5a02: $a7
	sub  a                                           ; $5a03: $97
	add  a                                           ; $5a04: $87
	sbc  b                                           ; $5a05: $98
	adc  b                                           ; $5a06: $88
	ld   a, c                                        ; $5a07: $79
	add  a                                           ; $5a08: $87
	add  a                                           ; $5a09: $87
	sbc  b                                           ; $5a0a: $98
	ld   a, c                                        ; $5a0b: $79
	ld   a, b                                        ; $5a0c: $78
	sub  a                                           ; $5a0d: $97
	sbc  c                                           ; $5a0e: $99
	ld   [hl], a                                     ; $5a0f: $77
	adc  b                                           ; $5a10: $88
	add  a                                           ; $5a11: $87
	sub  a                                           ; $5a12: $97
	adc  b                                           ; $5a13: $88
	ld   a, c                                        ; $5a14: $79
	ld   a, b                                        ; $5a15: $78
	adc  b                                           ; $5a16: $88
	sub  a                                           ; $5a17: $97
	adc  b                                           ; $5a18: $88
	adc  b                                           ; $5a19: $88
	ld   [hl], a                                     ; $5a1a: $77
	sbc  b                                           ; $5a1b: $98
	adc  b                                           ; $5a1c: $88
	ld   a, c                                        ; $5a1d: $79
	ld   a, c                                        ; $5a1e: $79
	ld   [hl], a                                     ; $5a1f: $77
	adc  b                                           ; $5a20: $88
	add  a                                           ; $5a21: $87
	adc  b                                           ; $5a22: $88
	adc  b                                           ; $5a23: $88
	add  a                                           ; $5a24: $87
	adc  b                                           ; $5a25: $88
	ld   a, c                                        ; $5a26: $79
	ld   a, c                                        ; $5a27: $79
	ld   a, b                                        ; $5a28: $78
	ld   a, b                                        ; $5a29: $78
	sbc  b                                           ; $5a2a: $98
	sbc  b                                           ; $5a2b: $98
	add  a                                           ; $5a2c: $87
	sbc  b                                           ; $5a2d: $98
	sub  a                                           ; $5a2e: $97
	adc  c                                           ; $5a2f: $89
	ld   a, b                                        ; $5a30: $78
	ld   a, c                                        ; $5a31: $79
	ld   a, c                                        ; $5a32: $79
	ld   [hl], a                                     ; $5a33: $77
	sbc  b                                           ; $5a34: $98
	add  a                                           ; $5a35: $87
	sub  a                                           ; $5a36: $97
	adc  c                                           ; $5a37: $89
	ld   a, c                                        ; $5a38: $79
	ld   a, b                                        ; $5a39: $78
	sub  a                                           ; $5a3a: $97
	ld   a, b                                        ; $5a3b: $78
	adc  b                                           ; $5a3c: $88
	ld   a, b                                        ; $5a3d: $78
	ld   a, b                                        ; $5a3e: $78
	sbc  b                                           ; $5a3f: $98
	ld   a, b                                        ; $5a40: $78
	add  a                                           ; $5a41: $87
	add  a                                           ; $5a42: $87
	xor  b                                           ; $5a43: $a8
	adc  b                                           ; $5a44: $88
	add  a                                           ; $5a45: $87
	sub  a                                           ; $5a46: $97
	ld   a, d                                        ; $5a47: $7a
	ld   a, b                                        ; $5a48: $78
	adc  b                                           ; $5a49: $88
	sbc  b                                           ; $5a4a: $98
	ld   a, b                                        ; $5a4b: $78
	adc  b                                           ; $5a4c: $88
	sub  a                                           ; $5a4d: $97
	adc  b                                           ; $5a4e: $88
	add  a                                           ; $5a4f: $87
	sub  a                                           ; $5a50: $97
	adc  b                                           ; $5a51: $88
	add  a                                           ; $5a52: $87
	sbc  b                                           ; $5a53: $98
	ld   a, b                                        ; $5a54: $78
	sub  a                                           ; $5a55: $97
	adc  b                                           ; $5a56: $88
	ld   a, c                                        ; $5a57: $79
	sub  a                                           ; $5a58: $97
	adc  d                                           ; $5a59: $8a
	ld   l, c                                        ; $5a5a: $69
	add  a                                           ; $5a5b: $87
	xor  b                                           ; $5a5c: $a8
	sub  [hl]                                        ; $5a5d: $96
	sub  a                                           ; $5a5e: $97
	ld   a, c                                        ; $5a5f: $79
	adc  b                                           ; $5a60: $88
	ld   a, d                                        ; $5a61: $7a
	ld   e, c                                        ; $5a62: $59
	add  [hl]                                        ; $5a63: $86
	sub  a                                           ; $5a64: $97
	sub  a                                           ; $5a65: $97
	sbc  b                                           ; $5a66: $98
	adc  b                                           ; $5a67: $88
	add  a                                           ; $5a68: $87
	sbc  c                                           ; $5a69: $99
	ld   a, b                                        ; $5a6a: $78
	sub  a                                           ; $5a6b: $97
	ld   a, b                                        ; $5a6c: $78
	ld   a, b                                        ; $5a6d: $78
	sbc  b                                           ; $5a6e: $98
	adc  b                                           ; $5a6f: $88
	adc  c                                           ; $5a70: $89
	adc  b                                           ; $5a71: $88
	adc  c                                           ; $5a72: $89
	add  [hl]                                        ; $5a73: $86
	adc  b                                           ; $5a74: $88
	sub  [hl]                                        ; $5a75: $96
	sbc  c                                           ; $5a76: $99
	ld   l, d                                        ; $5a77: $6a
	add  a                                           ; $5a78: $87
	adc  c                                           ; $5a79: $89
	ld   a, b                                        ; $5a7a: $78
	sbc  c                                           ; $5a7b: $99
	ld   l, c                                        ; $5a7c: $69
	sub  a                                           ; $5a7d: $97
	adc  b                                           ; $5a7e: $88
	add  a                                           ; $5a7f: $87
	sbc  b                                           ; $5a80: $98
	ld   a, c                                        ; $5a81: $79
	ld   a, c                                        ; $5a82: $79
	adc  b                                           ; $5a83: $88
	sbc  b                                           ; $5a84: $98
	ld   a, b                                        ; $5a85: $78
	add  a                                           ; $5a86: $87
	xor  b                                           ; $5a87: $a8
	sub  a                                           ; $5a88: $97
	ld   a, d                                        ; $5a89: $7a
	add  a                                           ; $5a8a: $87
	sbc  b                                           ; $5a8b: $98
	ld   a, b                                        ; $5a8c: $78
	add  a                                           ; $5a8d: $87
	ld   a, e                                        ; $5a8e: $7b
	ld   [hl], a                                     ; $5a8f: $77
	and  [hl]                                        ; $5a90: $a6
	add  a                                           ; $5a91: $87
	ld   a, b                                        ; $5a92: $78
	sbc  b                                           ; $5a93: $98
	ld   a, b                                        ; $5a94: $78
	adc  b                                           ; $5a95: $88
	sub  a                                           ; $5a96: $97
	ld   a, c                                        ; $5a97: $79
	adc  c                                           ; $5a98: $89
	adc  b                                           ; $5a99: $88
	adc  b                                           ; $5a9a: $88
	ld   a, b                                        ; $5a9b: $78
	add  a                                           ; $5a9c: $87
	adc  b                                           ; $5a9d: $88
	add  a                                           ; $5a9e: $87
	ld   a, c                                        ; $5a9f: $79
	and  a                                           ; $5aa0: $a7
	adc  c                                           ; $5aa1: $89
	ld   a, b                                        ; $5aa2: $78
	add  a                                           ; $5aa3: $87
	adc  b                                           ; $5aa4: $88
	sub  a                                           ; $5aa5: $97
	adc  b                                           ; $5aa6: $88
	adc  b                                           ; $5aa7: $88
	adc  b                                           ; $5aa8: $88
	sbc  b                                           ; $5aa9: $98
	ld   a, c                                        ; $5aaa: $79
	ld   a, b                                        ; $5aab: $78
	sbc  c                                           ; $5aac: $99
	ld   a, c                                        ; $5aad: $79
	ld   a, c                                        ; $5aae: $79
	sub  a                                           ; $5aaf: $97
	ld   a, b                                        ; $5ab0: $78
	and  h                                           ; $5ab1: $a4
	cp   b                                           ; $5ab2: $b8
	adc  b                                           ; $5ab3: $88
	sub  [hl]                                        ; $5ab4: $96
	sbc  b                                           ; $5ab5: $98
	ld   l, e                                        ; $5ab6: $6b
	ld   e, d                                        ; $5ab7: $5a
	ld   l, e                                        ; $5ab8: $6b
	ld   l, c                                        ; $5ab9: $69
	halt                                             ; $5aba: $76
	and  l                                           ; $5abb: $a5
	or   [hl]                                        ; $5abc: $b6
	call nc, Call_0ae_7998                           ; $5abd: $d4 $98 $79
	ld   l, d                                        ; $5ac0: $6a
	ld   e, h                                        ; $5ac1: $5c
	ld   l, d                                        ; $5ac2: $6a
	ld   l, c                                        ; $5ac3: $69
	ld   [hl], l                                     ; $5ac4: $75
	ret  z                                           ; $5ac5: $c8

	add  [hl]                                        ; $5ac6: $86
	sub  [hl]                                        ; $5ac7: $96
	sub  a                                           ; $5ac8: $97
	ld   e, d                                        ; $5ac9: $5a
	adc  d                                           ; $5aca: $8a
	ld   l, c                                        ; $5acb: $69
	adc  b                                           ; $5acc: $88
	ld   [hl], a                                     ; $5acd: $77
	xor  c                                           ; $5ace: $a9
	ld   a, c                                        ; $5acf: $79
	halt                                             ; $5ad0: $76
	or   l                                           ; $5ad1: $b5
	adc  b                                           ; $5ad2: $88
	adc  b                                           ; $5ad3: $88
	ld   l, d                                        ; $5ad4: $6a
	ld   l, d                                        ; $5ad5: $6a
	add  a                                           ; $5ad6: $87
	sub  a                                           ; $5ad7: $97
	sub  a                                           ; $5ad8: $97
	adc  b                                           ; $5ad9: $88
	adc  b                                           ; $5ada: $88
	add  a                                           ; $5adb: $87
	ld   d, a                                        ; $5adc: $57
	and  a                                           ; $5add: $a7
	ld   a, c                                        ; $5ade: $79
	ld   a, b                                        ; $5adf: $78
	ld   a, c                                        ; $5ae0: $79
	adc  b                                           ; $5ae1: $88
	adc  c                                           ; $5ae2: $89
	ld   [hl], a                                     ; $5ae3: $77
	sub  a                                           ; $5ae4: $97
	sub  [hl]                                        ; $5ae5: $96
	sub  a                                           ; $5ae6: $97
	sbc  c                                           ; $5ae7: $99
	ld   l, b                                        ; $5ae8: $68
	sbc  b                                           ; $5ae9: $98
	ld   l, h                                        ; $5aea: $6c
	ld   a, b                                        ; $5aeb: $78
	halt                                             ; $5aec: $76
	sub  [hl]                                        ; $5aed: $96
	add  [hl]                                        ; $5aee: $86
	and  [hl]                                        ; $5aef: $a6
	sbc  b                                           ; $5af0: $98
	ld   a, d                                        ; $5af1: $7a
	ld   l, c                                        ; $5af2: $69
	ld   l, d                                        ; $5af3: $6a
	add  a                                           ; $5af4: $87
	add  a                                           ; $5af5: $87
	sub  a                                           ; $5af6: $97
	sub  a                                           ; $5af7: $97
	sbc  c                                           ; $5af8: $99
	halt                                             ; $5af9: $76
	xor  d                                           ; $5afa: $aa
	ld   l, d                                        ; $5afb: $6a
	adc  b                                           ; $5afc: $88
	ld   e, c                                        ; $5afd: $59
	add  a                                           ; $5afe: $87
	sub  [hl]                                        ; $5aff: $96
	and  a                                           ; $5b00: $a7
	sub  h                                           ; $5b01: $94
	sbc  d                                           ; $5b02: $9a
	ld   l, b                                        ; $5b03: $68
	ld   a, h                                        ; $5b04: $7c
	ld   e, d                                        ; $5b05: $5a
	ld   [hl], a                                     ; $5b06: $77
	add  a                                           ; $5b07: $87
	sub  h                                           ; $5b08: $94
	add  $77                                         ; $5b09: $c6 $77
	sub  [hl]                                        ; $5b0b: $96
	adc  d                                           ; $5b0c: $8a
	ld   c, e                                        ; $5b0d: $4b
	ld   l, c                                        ; $5b0e: $69
	adc  b                                           ; $5b0f: $88
	ld   a, b                                        ; $5b10: $78
	ld   a, b                                        ; $5b11: $78
	and  a                                           ; $5b12: $a7
	ld   [hl], a                                     ; $5b13: $77
	add  [hl]                                        ; $5b14: $86
	sub  a                                           ; $5b15: $97
	sub  a                                           ; $5b16: $97
	and  a                                           ; $5b17: $a7
	ld   a, d                                        ; $5b18: $7a
	ld   l, c                                        ; $5b19: $69
	ld   l, e                                        ; $5b1a: $6b
	ld   a, d                                        ; $5b1b: $7a
	ld   h, [hl]                                     ; $5b1c: $66
	and  [hl]                                        ; $5b1d: $a6
	sub  [hl]                                        ; $5b1e: $96
	adc  c                                           ; $5b1f: $89
	sub  [hl]                                        ; $5b20: $96
	or   a                                           ; $5b21: $b7
	adc  d                                           ; $5b22: $8a
	ld   l, b                                        ; $5b23: $68
	sbc  e                                           ; $5b24: $9b
	ld   l, c                                        ; $5b25: $69
	and  a                                           ; $5b26: $a7
	add  l                                           ; $5b27: $85
	ld   a, d                                        ; $5b28: $7a
	ld   [hl], a                                     ; $5b29: $77
	xor  c                                           ; $5b2a: $a9
	adc  c                                           ; $5b2b: $89
	ld   h, a                                        ; $5b2c: $67
	rst  $10                                         ; $5b2d: $d7
	ld   l, d                                        ; $5b2e: $6a
	add  a                                           ; $5b2f: $87
	sbc  c                                           ; $5b30: $99
	ld   l, d                                        ; $5b31: $6a
	sub  h                                           ; $5b32: $94
	sbc  d                                           ; $5b33: $9a
	add  a                                           ; $5b34: $87
	and  a                                           ; $5b35: $a7
	sbc  d                                           ; $5b36: $9a
	ld   c, c                                        ; $5b37: $49
	xor  c                                           ; $5b38: $a9
	ld   e, c                                        ; $5b39: $59
	call nz, $9b88                                   ; $5b3a: $c4 $88 $9b
	ld   h, h                                        ; $5b3d: $64
	sbc  h                                           ; $5b3e: $9c
	ld   h, h                                        ; $5b3f: $64
	cp   d                                           ; $5b40: $ba
	and  [hl]                                        ; $5b41: $a6
	ld   e, b                                        ; $5b42: $58
	or   [hl]                                        ; $5b43: $b6
	ld   l, e                                        ; $5b44: $6b
	adc  b                                           ; $5b45: $88
	ld   [hl], a                                     ; $5b46: $77
	cp   b                                           ; $5b47: $b8
	ld   c, e                                        ; $5b48: $4b
	ld   a, c                                        ; $5b49: $79
	ld   [hl], a                                     ; $5b4a: $77
	cp   c                                           ; $5b4b: $b9
	and  h                                           ; $5b4c: $a4
	and  [hl]                                        ; $5b4d: $a6
	sub  a                                           ; $5b4e: $97
	ld   e, b                                        ; $5b4f: $58
	xor  c                                           ; $5b50: $a9
	ld   l, e                                        ; $5b51: $6b
	ld   e, d                                        ; $5b52: $5a
	ld   [hl], a                                     ; $5b53: $77
	adc  c                                           ; $5b54: $89
	sub  l                                           ; $5b55: $95
	push bc                                          ; $5b56: $c5
	and  a                                           ; $5b57: $a7
	ld   a, b                                        ; $5b58: $78
	add  l                                           ; $5b59: $85
	xor  e                                           ; $5b5a: $ab
	ld   e, d                                        ; $5b5b: $5a
	ld   l, e                                        ; $5b5c: $6b
	ld   l, c                                        ; $5b5d: $69
	ld   l, b                                        ; $5b5e: $68
	and  [hl]                                        ; $5b5f: $a6
	or   h                                           ; $5b60: $b4
	and  l                                           ; $5b61: $a5
	adc  d                                           ; $5b62: $8a
	ld   a, b                                        ; $5b63: $78
	ld   a, d                                        ; $5b64: $7a
	ld   a, d                                        ; $5b65: $7a
	ld   d, a                                        ; $5b66: $57
	adc  d                                           ; $5b67: $8a
	ld   h, l                                        ; $5b68: $65
	reti                                             ; $5b69: $d9


	add  a                                           ; $5b6a: $87
	sbc  b                                           ; $5b6b: $98
	add  [hl]                                        ; $5b6c: $86
	xor  b                                           ; $5b6d: $a8
	adc  d                                           ; $5b6e: $8a
	ld   e, c                                        ; $5b6f: $59
	adc  c                                           ; $5b70: $89
	ld   e, b                                        ; $5b71: $58
	adc  d                                           ; $5b72: $8a
	and  l                                           ; $5b73: $a5
	push hl                                          ; $5b74: $e5
	xor  c                                           ; $5b75: $a9
	ld   a, b                                        ; $5b76: $78
	adc  h                                           ; $5b77: $8c
	add  hl, de                                      ; $5b78: $19
	and  a                                           ; $5b79: $a7
	ld   [hl], a                                     ; $5b7a: $77
	ld   [hl], l                                     ; $5b7b: $75
	rst  $10                                         ; $5b7c: $d7
	ld   e, d                                        ; $5b7d: $5a
	sbc  b                                           ; $5b7e: $98
	adc  d                                           ; $5b7f: $8a
	ld   l, d                                        ; $5b80: $6a
	and  h                                           ; $5b81: $a4
	adc  e                                           ; $5b82: $8b
	ld   h, l                                        ; $5b83: $65
	ld   a, d                                        ; $5b84: $7a
	sbc  c                                           ; $5b85: $99
	adc  c                                           ; $5b86: $89
	and  a                                           ; $5b87: $a7
	ld   a, d                                        ; $5b88: $7a
	add  a                                           ; $5b89: $87
	ld   d, [hl]                                     ; $5b8a: $56
	or   e                                           ; $5b8b: $b3
	ld   d, h                                        ; $5b8c: $54
	ld   b, a                                        ; $5b8d: $47
	xor  c                                           ; $5b8e: $a9
	ld   b, a                                        ; $5b8f: $47
	sbc  l                                           ; $5b90: $9d
	adc  c                                           ; $5b91: $89
	sbc  h                                           ; $5b92: $9c
	rst  $30                                         ; $5b93: $f7
	cp   [hl]                                        ; $5b94: $be
	res  4, a                                        ; $5b95: $cb $a7
	add  hl, sp                                      ; $5b97: $39
	inc  sp                                          ; $5b98: $33
	ld   hl, $2111                                   ; $5b99: $21 $11 $21
	ld   d, a                                        ; $5b9c: $57
	ld   a, c                                        ; $5b9d: $79
	rst  $28                                         ; $5b9e: $ef
	rst  $38                                         ; $5b9f: $ff
	rst  JumpTable                                         ; $5ba0: $df
	rst  $38                                         ; $5ba1: $ff
	db   $fc                                         ; $5ba2: $fc
	or   a                                           ; $5ba3: $b7
	ld   h, l                                        ; $5ba4: $65
	ld   sp, $1111                                   ; $5ba5: $31 $11 $11
	ld   de, $6d45                                   ; $5ba8: $11 $45 $6d
	rst  $38                                         ; $5bab: $ff
	rst  $38                                         ; $5bac: $ff
	rst  $38                                         ; $5bad: $ff
	db   $fd                                         ; $5bae: $fd
	rst  $38                                         ; $5baf: $ff
	adc  d                                           ; $5bb0: $8a
	ld   h, c                                        ; $5bb1: $61
	ld   b, d                                        ; $5bb2: $42
	ld   de, $1111                                   ; $5bb3: $11 $11 $11
	ld   h, a                                        ; $5bb6: $67
	ld   e, d                                        ; $5bb7: $5a
	rst  $38                                         ; $5bb8: $ff
	rst  $38                                         ; $5bb9: $ff
	rst  $28                                         ; $5bba: $ef
	db   $fc                                         ; $5bbb: $fc
	rst  JumpTable                                         ; $5bbc: $df
	ld   [$4474], a                                  ; $5bbd: $ea $74 $44
	ld   de, $1111                                   ; $5bc0: $11 $11 $11
	ld   de, $fd5c                                   ; $5bc3: $11 $5c $fd
	rst  $38                                         ; $5bc6: $ff
	rst  $38                                         ; $5bc7: $ff
	ei                                               ; $5bc8: $fb
	rst  $38                                         ; $5bc9: $ff
	res  6, [hl]                                     ; $5bca: $cb $b6
	ld   [hl-], a                                    ; $5bcc: $32
	ld   de, $1111                                   ; $5bcd: $11 $11 $11
	ld   de, $7d7b                                   ; $5bd0: $11 $7b $7d
	rst  $38                                         ; $5bd3: $ff
	rst  $38                                         ; $5bd4: $ff
	cp   $fe                                         ; $5bd5: $fe $fe
	db   $fd                                         ; $5bd7: $fd
	ret                                              ; $5bd8: $c9


	ld   [hl-], a                                    ; $5bd9: $32
	ld   de, $1111                                   ; $5bda: $11 $11 $11
	ld   de, $8f14                                   ; $5bdd: $11 $14 $8f
	rst  $38                                         ; $5be0: $ff
	rst  $38                                         ; $5be1: $ff
	rst  $38                                         ; $5be2: $ff
	rst  $38                                         ; $5be3: $ff
	rst  JumpTable                                         ; $5be4: $df
	ld   sp, hl                                      ; $5be5: $f9
	ld   [hl], c                                     ; $5be6: $71
	ld   de, $1111                                   ; $5be7: $11 $11 $11
	ld   de, $6e13                                   ; $5bea: $11 $13 $6e
	rst  $38                                         ; $5bed: $ff
	rst  $38                                         ; $5bee: $ff
	rst  $38                                         ; $5bef: $ff
	db   $dd                                         ; $5bf0: $dd
	cp   $ef                                         ; $5bf1: $fe $ef
	ld   [hl], e                                     ; $5bf3: $73
	ld   de, $1111                                   ; $5bf4: $11 $11 $11
	ld   de, $5b43                                   ; $5bf7: $11 $43 $5b
	rst  $38                                         ; $5bfa: $ff
	rst  $38                                         ; $5bfb: $ff
	cp   $ef                                         ; $5bfc: $fe $ef
	rst  $38                                         ; $5bfe: $ff
	ld   a, [$11b4]                                  ; $5bff: $fa $b4 $11
	ld   de, $1111                                   ; $5c02: $11 $11 $11
	inc  d                                           ; $5c05: $14
	ld   l, [hl]                                     ; $5c06: $6e
	rst  $38                                         ; $5c07: $ff
	rst  $38                                         ; $5c08: $ff
	rst  $38                                         ; $5c09: $ff
	xor  h                                           ; $5c0a: $ac
	rst  $38                                         ; $5c0b: $ff
	db   $fc                                         ; $5c0c: $fc
	add  a                                           ; $5c0d: $87
	ld   de, $1111                                   ; $5c0e: $11 $11 $11
	ld   de, $7a16                                   ; $5c11: $11 $16 $7a
	rst  $38                                         ; $5c14: $ff
	rst  $38                                         ; $5c15: $ff
	ld   hl, sp-$41                                  ; $5c16: $f8 $bf
	rst  $38                                         ; $5c18: $ff
	rst  $30                                         ; $5c19: $f7
	adc  b                                           ; $5c1a: $88
	ld   de, $1111                                   ; $5c1b: $11 $11 $11
	ld   de, $ac16                                   ; $5c1e: $11 $16 $ac
	rst  $38                                         ; $5c21: $ff
	rst  $38                                         ; $5c22: $ff
	db   $fd                                         ; $5c23: $fd
	inc  a                                           ; $5c24: $3c
	rst  $38                                         ; $5c25: $ff
	db   $ec                                         ; $5c26: $ec
	ld   h, e                                        ; $5c27: $63
	ld   sp, $1111                                   ; $5c28: $31 $11 $11
	ld   de, $ad15                                   ; $5c2b: $11 $15 $ad
	rst  $38                                         ; $5c2e: $ff
	rst  $38                                         ; $5c2f: $ff
	ei                                               ; $5c30: $fb
	cp   a                                           ; $5c31: $bf
	rst  $38                                         ; $5c32: $ff
	jp   hl                                          ; $5c33: $e9


	ld   h, e                                        ; $5c34: $63
	ld   de, $1111                                   ; $5c35: $11 $11 $11
	ld   de, $bf29                                   ; $5c38: $11 $29 $bf
	rst  $38                                         ; $5c3b: $ff
	rst  $38                                         ; $5c3c: $ff
	xor  e                                           ; $5c3d: $ab
	cp   a                                           ; $5c3e: $bf
	rst  $38                                         ; $5c3f: $ff
	add  sp, $51                                     ; $5c40: $e8 $51
	ld   de, $1111                                   ; $5c42: $11 $11 $11
	ld   de, $ef58                                   ; $5c45: $11 $58 $ef
	rst  $38                                         ; $5c48: $ff
	rst  $38                                         ; $5c49: $ff
	cp   d                                           ; $5c4a: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c4b: $cf
	rst  $38                                         ; $5c4c: $ff
	and  [hl]                                        ; $5c4d: $a6
	ld   bc, $1111                                   ; $5c4e: $01 $11 $11
	ld   de, $b816                                   ; $5c51: $11 $16 $b8
	rst  JumpTable                                         ; $5c54: $df
	rst  $38                                         ; $5c55: $ff
	ld   hl, sp+$79                                  ; $5c56: $f8 $79
	rst  $38                                         ; $5c58: $ff
	ld   a, [$1141]                                  ; $5c59: $fa $41 $11
	ld   de, $1111                                   ; $5c5c: $11 $11 $11
	ld   l, c                                        ; $5c5f: $69
	sbc  [hl]                                        ; $5c60: $9e
	rst  $38                                         ; $5c61: $ff
	rst  $38                                         ; $5c62: $ff
	ld   sp, hl                                      ; $5c63: $f9
	ld   l, a                                        ; $5c64: $6f
	rst  $38                                         ; $5c65: $ff
	push af                                          ; $5c66: $f5
	ld   hl, $1111                                   ; $5c67: $21 $11 $11
	ld   de, $7c14                                   ; $5c6a: $11 $14 $7c
	rst  JumpTable                                         ; $5c6d: $df
	rst  $38                                         ; $5c6e: $ff
	cp   $88                                         ; $5c6f: $fe $88
	rst  JumpTable                                         ; $5c71: $df
	rst  $38                                         ; $5c72: $ff
	and  c                                           ; $5c73: $a1
	ld   de, $1111                                   ; $5c74: $11 $11 $11
	ld   de, $be4a                                   ; $5c77: $11 $4a $be
	rst  $38                                         ; $5c7a: $ff
	rst  $38                                         ; $5c7b: $ff
	ld   hl, sp+$6e                                  ; $5c7c: $f8 $6e
	rst  $38                                         ; $5c7e: $ff
	rst  $20                                         ; $5c7f: $e7
	ld   de, $1111                                   ; $5c80: $11 $11 $11
	ld   de, $ab18                                   ; $5c83: $11 $18 $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c86: $cf
	rst  $38                                         ; $5c87: $ff
	ei                                               ; $5c88: $fb
	adc  c                                           ; $5c89: $89
	rst  JumpTable                                         ; $5c8a: $df
	ei                                               ; $5c8b: $fb
	ld   d, c                                        ; $5c8c: $51
	ld   de, $1111                                   ; $5c8d: $11 $11 $11
	inc  de                                          ; $5c90: $13
	ld   l, e                                        ; $5c91: $6b
	rst  $28                                         ; $5c92: $ef
	rst  $38                                         ; $5c93: $ff
	cp   $ab                                         ; $5c94: $fe $ab
	rst  JumpTable                                         ; $5c96: $df
	db   $fd                                         ; $5c97: $fd
	add  c                                           ; $5c98: $81
	ld   de, $1111                                   ; $5c99: $11 $11 $11
	ld   de, $ec7d                                   ; $5c9c: $11 $7d $ec
	rst  $38                                         ; $5c9f: $ff
	rst  $38                                         ; $5ca0: $ff
	db   $db                                         ; $5ca1: $db
	ld   a, e                                        ; $5ca2: $7b
	rst  $38                                         ; $5ca3: $ff
	rst  $10                                         ; $5ca4: $d7
	ld   de, $1111                                   ; $5ca5: $11 $11 $11
	ld   de, $ff1a                                   ; $5ca8: $11 $1a $ff
	rst  $38                                         ; $5cab: $ff
	rst  $38                                         ; $5cac: $ff
	db   $fd                                         ; $5cad: $fd
	cp   e                                           ; $5cae: $bb
	adc  $eb                                         ; $5caf: $ce $eb
	ld   de, $1211                                   ; $5cb1: $11 $11 $12
	ld   de, $9f26                                   ; $5cb4: $11 $26 $9f
	rst  $38                                         ; $5cb7: $ff
	rst  $38                                         ; $5cb8: $ff
	sbc  $dc                                         ; $5cb9: $de $dc
	rst  $28                                         ; $5cbb: $ef
	ret  z                                           ; $5cbc: $c8

	ld   d, c                                        ; $5cbd: $51
	ld   de, $1111                                   ; $5cbe: $11 $11 $11
	jr   z, @-$55                                    ; $5cc1: $28 $a9

	rst  $28                                         ; $5cc3: $ef
	rst  $38                                         ; $5cc4: $ff
	db   $fd                                         ; $5cc5: $fd
	ld   a, h                                        ; $5cc6: $7c
	rst  $38                                         ; $5cc7: $ff
	db   $fd                                         ; $5cc8: $fd
	ld   sp, $1211                                   ; $5cc9: $31 $11 $12
	ld   de, $ae16                                   ; $5ccc: $11 $16 $ae
	db   $ed                                         ; $5ccf: $ed
	rst  JumpTable                                         ; $5cd0: $df
	cp   $db                                         ; $5cd1: $fe $db
	cp   a                                           ; $5cd3: $bf
	db   $fc                                         ; $5cd4: $fc
	ld   h, c                                        ; $5cd5: $61
	ld   de, $1111                                   ; $5cd6: $11 $11 $11
	dec  d                                           ; $5cd9: $15
	call $dfcb                                       ; $5cda: $cd $cb $df
	rst  $38                                         ; $5cdd: $ff
	jp   c, $fdcf                                    ; $5cde: $da $cf $fd

	ld   [hl], c                                     ; $5ce1: $71
	ld   de, $1111                                   ; $5ce2: $11 $11 $11
	inc  d                                           ; $5ce5: $14
	adc  h                                           ; $5ce6: $8c
	db   $ed                                         ; $5ce7: $ed
	rst  $28                                         ; $5ce8: $ef
	rst  $38                                         ; $5ce9: $ff
	db   $ed                                         ; $5cea: $ed
	rst  JumpTable                                         ; $5ceb: $df
	db   $ed                                         ; $5cec: $ed
	ld   h, c                                        ; $5ced: $61
	ld   de, $1111                                   ; $5cee: $11 $11 $11
	inc  de                                          ; $5cf1: $13
	sbc  [hl]                                        ; $5cf2: $9e
	rst  $38                                         ; $5cf3: $ff
	call $ffff                                       ; $5cf4: $cd $ff $ff
	db   $ec                                         ; $5cf7: $ec
	db   $db                                         ; $5cf8: $db
	ld   b, c                                        ; $5cf9: $41
	ld   de, $1111                                   ; $5cfa: $11 $11 $11
	inc  de                                          ; $5cfd: $13
	ld   a, l                                        ; $5cfe: $7d
	rst  $38                                         ; $5cff: $ff
	rst  $38                                         ; $5d00: $ff
	db   $dd                                         ; $5d01: $dd
	rst  $28                                         ; $5d02: $ef
	rst  $38                                         ; $5d03: $ff
	push hl                                          ; $5d04: $e5
	ld   de, $1111                                   ; $5d05: $11 $11 $11
	ld   de, $8e36                                   ; $5d08: $11 $36 $8e
	db   $fd                                         ; $5d0b: $fd
	rst  $38                                         ; $5d0c: $ff
	rst  $38                                         ; $5d0d: $ff
	db   $fd                                         ; $5d0e: $fd
	rst  JumpTable                                         ; $5d0f: $df
	rst  $20                                         ; $5d10: $e7
	ld   sp, $1111                                   ; $5d11: $31 $11 $11
	ld   de, $cf27                                   ; $5d14: $11 $27 $cf
	rst  $28                                         ; $5d17: $ef
	cp   $ff                                         ; $5d18: $fe $ff
	rst  $28                                         ; $5d1a: $ef
	db   $fd                                         ; $5d1b: $fd
	or   l                                           ; $5d1c: $b5
	ld   de, $1111                                   ; $5d1d: $11 $11 $11
	ld   de, $ae5a                                   ; $5d20: $11 $5a $ae
	rst  $38                                         ; $5d23: $ff
	rst  $38                                         ; $5d24: $ff
	db   $fc                                         ; $5d25: $fc
	rst  $28                                         ; $5d26: $ef
	sbc  $a3                                         ; $5d27: $de $a3
	ld   de, $1111                                   ; $5d29: $11 $11 $11
	ld   [de], a                                     ; $5d2c: $12
	ld   a, c                                        ; $5d2d: $79
	rst  JumpTable                                         ; $5d2e: $df
	cp   $ff                                         ; $5d2f: $fe $ff
	rst  $28                                         ; $5d31: $ef
	rst  $38                                         ; $5d32: $ff
	db   $ec                                         ; $5d33: $ec
	ld   b, c                                        ; $5d34: $41
	ld   de, $1111                                   ; $5d35: $11 $11 $11
	ld   d, $9b                                      ; $5d38: $16 $9b
	db   $ed                                         ; $5d3a: $ed
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	rst  $38                                         ; $5d3d: $ff
	rst  $28                                         ; $5d3e: $ef
	jp   hl                                          ; $5d3f: $e9


	ld   sp, $1111                                   ; $5d40: $31 $11 $11
	ld   de, $ae47                                   ; $5d43: $11 $47 $ae
	cp   $ef                                         ; $5d46: $fe $ef
	db   $fd                                         ; $5d48: $fd
	rst  $28                                         ; $5d49: $ef
	rst  $38                                         ; $5d4a: $ff
	or   h                                           ; $5d4b: $b4
	ld   de, $1111                                   ; $5d4c: $11 $11 $11
	ld   de, $de7a                                   ; $5d4f: $11 $7a $de
	call z, $ffff                                    ; $5d52: $cc $ff $ff
	cp   $ed                                         ; $5d55: $fe $ed
	add  d                                           ; $5d57: $82
	ld   de, $1111                                   ; $5d58: $11 $11 $11
	inc  d                                           ; $5d5b: $14
	adc  d                                           ; $5d5c: $8a
	rst  JumpTable                                         ; $5d5d: $df
	rst  $38                                         ; $5d5e: $ff
	rst  $38                                         ; $5d5f: $ff
	rst  $28                                         ; $5d60: $ef
	cp   $d9                                         ; $5d61: $fe $d9
	ld   hl, $1111                                   ; $5d63: $21 $11 $11
	ld   de, $ad27                                   ; $5d66: $11 $27 $ad
	rst  $38                                         ; $5d69: $ff
	rst  $38                                         ; $5d6a: $ff
	db   $fd                                         ; $5d6b: $fd
	rst  $28                                         ; $5d6c: $ef
	cp   $b4                                         ; $5d6d: $fe $b4
	ld   de, $1111                                   ; $5d6f: $11 $11 $11
	ld   de, $ef4a                                   ; $5d72: $11 $4a $ef
	rst  $38                                         ; $5d75: $ff
	rst  $28                                         ; $5d76: $ef
	rst  $38                                         ; $5d77: $ff
	rst  $38                                         ; $5d78: $ff
	ld   [$1151], a                                  ; $5d79: $ea $51 $11
	ld   de, $2511                                   ; $5d7c: $11 $11 $25
	sbc  l                                           ; $5d7f: $9d
	rst  $28                                         ; $5d80: $ef
	rst  $38                                         ; $5d81: $ff
	rst  $38                                         ; $5d82: $ff
	rst  $28                                         ; $5d83: $ef
	cp   $a5                                         ; $5d84: $fe $a5
	ld   de, $1111                                   ; $5d86: $11 $11 $11
	ld   de, $bd5a                                   ; $5d89: $11 $5a $bd
	rst  $28                                         ; $5d8c: $ef
	rst  $38                                         ; $5d8d: $ff
	rst  $38                                         ; $5d8e: $ff
	rst  $38                                         ; $5d8f: $ff
	db   $eb                                         ; $5d90: $eb
	ld   h, c                                        ; $5d91: $61
	ld   de, $1111                                   ; $5d92: $11 $11 $11
	inc  d                                           ; $5d95: $14
	xor  e                                           ; $5d96: $ab
	rst  JumpTable                                         ; $5d97: $df
	rst  $38                                         ; $5d98: $ff
	rst  $38                                         ; $5d99: $ff
	rst  $28                                         ; $5d9a: $ef
	cp   $b5                                         ; $5d9b: $fe $b5
	ld   de, $1111                                   ; $5d9d: $11 $11 $11
	ld   de, $df5b                                   ; $5da0: $11 $5b $df
	rst  $38                                         ; $5da3: $ff
	rst  $38                                         ; $5da4: $ff
	rst  $38                                         ; $5da5: $ff
	rst  $38                                         ; $5da6: $ff
	ret                                              ; $5da7: $c9


	ld   sp, $1111                                   ; $5da8: $31 $11 $11
	ld   de, $de18                                   ; $5dab: $11 $18 $de
	rst  $38                                         ; $5dae: $ff
	rst  $38                                         ; $5daf: $ff
	rst  $38                                         ; $5db0: $ff
	rst  $38                                         ; $5db1: $ff
	db   $eb                                         ; $5db2: $eb
	ld   d, c                                        ; $5db3: $51
	ld   de, $1111                                   ; $5db4: $11 $11 $11
	ld   h, $ac                                      ; $5db7: $26 $ac
	rst  $28                                         ; $5db9: $ef
	rst  $38                                         ; $5dba: $ff
	rst  $38                                         ; $5dbb: $ff
	rst  $38                                         ; $5dbc: $ff
	cp   $82                                         ; $5dbd: $fe $82
	ld   de, $1111                                   ; $5dbf: $11 $11 $11
	ld   [de], a                                     ; $5dc2: $12
	adc  l                                           ; $5dc3: $8d
	rst  $38                                         ; $5dc4: $ff
	rst  $38                                         ; $5dc5: $ff
	rst  $38                                         ; $5dc6: $ff
	rst  $38                                         ; $5dc7: $ff
	cp   $a5                                         ; $5dc8: $fe $a5
	ld   de, $1111                                   ; $5dca: $11 $11 $11
	inc  de                                          ; $5dcd: $13
	ld   a, e                                        ; $5dce: $7b
	rst  JumpTable                                         ; $5dcf: $df
	rst  $38                                         ; $5dd0: $ff
	rst  $38                                         ; $5dd1: $ff
	rst  $38                                         ; $5dd2: $ff
	rst  $38                                         ; $5dd3: $ff
	add  $11                                         ; $5dd4: $c6 $11
	ld   de, $1111                                   ; $5dd6: $11 $11 $11
	ld   e, e                                        ; $5dd9: $5b
	rst  $28                                         ; $5dda: $ef
	rst  $38                                         ; $5ddb: $ff
	rst  $38                                         ; $5ddc: $ff
	rst  $38                                         ; $5ddd: $ff
	rst  $38                                         ; $5dde: $ff
	rst  $10                                         ; $5ddf: $d7
	ld   de, $1111                                   ; $5de0: $11 $11 $11
	ld   de, $ff4a                                   ; $5de3: $11 $4a $ff
	rst  $38                                         ; $5de6: $ff
	rst  $38                                         ; $5de7: $ff
	rst  $38                                         ; $5de8: $ff
	db   $fd                                         ; $5de9: $fd
	or   [hl]                                        ; $5dea: $b6
	ld   de, $1111                                   ; $5deb: $11 $11 $11
	ld   de, $ff6a                                   ; $5dee: $11 $6a $ff
	rst  $38                                         ; $5df1: $ff
	rst  $38                                         ; $5df2: $ff
	rst  $38                                         ; $5df3: $ff
	db   $fd                                         ; $5df4: $fd
	or   l                                           ; $5df5: $b5
	ld   de, $1111                                   ; $5df6: $11 $11 $11
	ld   [de], a                                     ; $5df9: $12
	adc  h                                           ; $5dfa: $8c
	rst  $28                                         ; $5dfb: $ef
	rst  $38                                         ; $5dfc: $ff
	rst  $38                                         ; $5dfd: $ff
	rst  $38                                         ; $5dfe: $ff
	cp   $b5                                         ; $5dff: $fe $b5
	ld   de, $1111                                   ; $5e01: $11 $11 $11
	ld   [de], a                                     ; $5e04: $12
	adc  l                                           ; $5e05: $8d
	rst  $38                                         ; $5e06: $ff
	rst  $38                                         ; $5e07: $ff
	rst  $38                                         ; $5e08: $ff
	rst  $38                                         ; $5e09: $ff
	cp   $92                                         ; $5e0a: $fe $92
	ld   de, $1111                                   ; $5e0c: $11 $11 $11
	inc  d                                           ; $5e0f: $14
	adc  h                                           ; $5e10: $8c
	rst  $38                                         ; $5e11: $ff
	rst  $38                                         ; $5e12: $ff
	rst  $38                                         ; $5e13: $ff
	rst  $38                                         ; $5e14: $ff
	cp   $71                                         ; $5e15: $fe $71
	ld   de, $1111                                   ; $5e17: $11 $11 $11
	inc  d                                           ; $5e1a: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e1b: $cf
	rst  $38                                         ; $5e1c: $ff
	rst  $38                                         ; $5e1d: $ff
	rst  $38                                         ; $5e1e: $ff
	rst  $38                                         ; $5e1f: $ff
	db   $fd                                         ; $5e20: $fd
	ld   sp, $1111                                   ; $5e21: $31 $11 $11
	ld   de, $df27                                   ; $5e24: $11 $27 $df
	rst  $38                                         ; $5e27: $ff
	rst  $38                                         ; $5e28: $ff
	rst  $38                                         ; $5e29: $ff
	rst  $38                                         ; $5e2a: $ff
	add  sp, $11                                     ; $5e2b: $e8 $11
	ld   de, $1111                                   ; $5e2d: $11 $11 $11
	ld   a, [hl-]                                    ; $5e30: $3a
	rst  $38                                         ; $5e31: $ff
	rst  $38                                         ; $5e32: $ff
	rst  $38                                         ; $5e33: $ff
	rst  $38                                         ; $5e34: $ff
	rst  $38                                         ; $5e35: $ff
	jp   $1111                                       ; $5e36: $c3 $11 $11


	ld   de, $6e11                                   ; $5e39: $11 $11 $6e
	rst  $38                                         ; $5e3c: $ff
	rst  $38                                         ; $5e3d: $ff
	rst  $38                                         ; $5e3e: $ff
	rst  $38                                         ; $5e3f: $ff
	db   $fc                                         ; $5e40: $fc
	ld   h, c                                        ; $5e41: $61
	ld   de, $1111                                   ; $5e42: $11 $11 $11
	inc  de                                          ; $5e45: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e46: $cf
	rst  $38                                         ; $5e47: $ff
	rst  $38                                         ; $5e48: $ff
	rst  $38                                         ; $5e49: $ff
	rst  $38                                         ; $5e4a: $ff
	rst  $20                                         ; $5e4b: $e7
	ld   de, $1111                                   ; $5e4c: $11 $11 $11
	ld   de, $ff29                                   ; $5e4f: $11 $29 $ff
	rst  $38                                         ; $5e52: $ff
	rst  $38                                         ; $5e53: $ff
	rst  $38                                         ; $5e54: $ff
	cp   $94                                         ; $5e55: $fe $94
	ld   de, $1111                                   ; $5e57: $11 $11 $11
	ld   de, $ff6d                                   ; $5e5a: $11 $6d $ff
	rst  $38                                         ; $5e5d: $ff
	rst  $38                                         ; $5e5e: $ff
	rst  $38                                         ; $5e5f: $ff
	db   $fc                                         ; $5e60: $fc
	ld   h, c                                        ; $5e61: $61
	ld   de, $1111                                   ; $5e62: $11 $11 $11
	dec  d                                           ; $5e65: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e66: $cf
	rst  $38                                         ; $5e67: $ff
	rst  $38                                         ; $5e68: $ff
	rst  $38                                         ; $5e69: $ff
	rst  $38                                         ; $5e6a: $ff
	rst  $10                                         ; $5e6b: $d7
	ld   de, $1111                                   ; $5e6c: $11 $11 $11
	ld   de, $ff3b                                   ; $5e6f: $11 $3b $ff
	rst  $38                                         ; $5e72: $ff
	rst  $38                                         ; $5e73: $ff
	rst  $38                                         ; $5e74: $ff
	cp   $92                                         ; $5e75: $fe $92
	ld   de, $1111                                   ; $5e77: $11 $11 $11
	ld   de, $ff9d                                   ; $5e7a: $11 $9d $ff
	rst  $38                                         ; $5e7d: $ff
	rst  $38                                         ; $5e7e: $ff
	rst  $38                                         ; $5e7f: $ff
	ei                                               ; $5e80: $fb
	ld   sp, $1111                                   ; $5e81: $31 $11 $11
	ld   de, $bd17                                   ; $5e84: $11 $17 $bd
	rst  $38                                         ; $5e87: $ff
	rst  $38                                         ; $5e88: $ff
	rst  $38                                         ; $5e89: $ff
	rst  $38                                         ; $5e8a: $ff
	or   h                                           ; $5e8b: $b4
	ld   de, $1111                                   ; $5e8c: $11 $11 $11
	ld   de, $cf49                                   ; $5e8f: $11 $49 $cf
	rst  $38                                         ; $5e92: $ff
	rst  $38                                         ; $5e93: $ff
	rst  $38                                         ; $5e94: $ff
	db   $fd                                         ; $5e95: $fd
	add  c                                           ; $5e96: $81
	ld   de, $1111                                   ; $5e97: $11 $11 $11
	inc  de                                          ; $5e9a: $13
	sbc  d                                           ; $5e9b: $9a
	rst  $28                                         ; $5e9c: $ef
	rst  $38                                         ; $5e9d: $ff
	rst  $38                                         ; $5e9e: $ff
	rst  $38                                         ; $5e9f: $ff
	jp   hl                                          ; $5ea0: $e9


	ld   b, c                                        ; $5ea1: $41
	ld   de, $1111                                   ; $5ea2: $11 $11 $11
	dec  d                                           ; $5ea5: $15
	adc  e                                           ; $5ea6: $8b
	rst  $38                                         ; $5ea7: $ff
	rst  $38                                         ; $5ea8: $ff
	rst  $38                                         ; $5ea9: $ff
	rst  $38                                         ; $5eaa: $ff
	or   a                                           ; $5eab: $b7
	ld   sp, $1111                                   ; $5eac: $31 $11 $11
	ld   de, $8c37                                   ; $5eaf: $11 $37 $8c
	rst  $38                                         ; $5eb2: $ff
	rst  $38                                         ; $5eb3: $ff
	rst  $38                                         ; $5eb4: $ff
	db   $fc                                         ; $5eb5: $fc
	and  a                                           ; $5eb6: $a7
	ld   d, e                                        ; $5eb7: $53
	ld   de, $1111                                   ; $5eb8: $11 $11 $11
	dec  [hl]                                        ; $5ebb: $35
	ld   l, c                                        ; $5ebc: $69
	adc  $ff                                         ; $5ebd: $ce $ff
	rst  $38                                         ; $5ebf: $ff
	db   $fd                                         ; $5ec0: $fd
	db   $db                                         ; $5ec1: $db
	sub  a                                           ; $5ec2: $97
	ld   d, e                                        ; $5ec3: $53
	ld   de, $1211                                   ; $5ec4: $11 $11 $12
	ld   b, l                                        ; $5ec7: $45
	adc  d                                           ; $5ec8: $8a
	cp   l                                           ; $5ec9: $bd
	rst  $38                                         ; $5eca: $ff
	rst  $38                                         ; $5ecb: $ff
	db   $fd                                         ; $5ecc: $fd
	cp   d                                           ; $5ecd: $ba
	ld   h, h                                        ; $5ece: $64
	ld   hl, $1111                                   ; $5ecf: $21 $11 $11
	inc  hl                                          ; $5ed2: $23
	ld   l, d                                        ; $5ed3: $6a
	adc  $ff                                         ; $5ed4: $ce $ff
	rst  $38                                         ; $5ed6: $ff
	rst  $38                                         ; $5ed7: $ff
	jp   z, $2174                                    ; $5ed8: $ca $74 $21

	ld   de, $2411                                   ; $5edb: $11 $11 $24
	ld   l, d                                        ; $5ede: $6a
	cp   [hl]                                        ; $5edf: $be
	rst  $38                                         ; $5ee0: $ff
	rst  $38                                         ; $5ee1: $ff
	cp   $c9                                         ; $5ee2: $fe $c9
	ld   h, e                                        ; $5ee4: $63
	ld   de, $1111                                   ; $5ee5: $11 $11 $11
	inc  [hl]                                        ; $5ee8: $34
	ld   l, c                                        ; $5ee9: $69
	adc  $ff                                         ; $5eea: $ce $ff
	rst  $38                                         ; $5eec: $ff
	db   $fd                                         ; $5eed: $fd
	cp   c                                           ; $5eee: $b9
	ld   d, e                                        ; $5eef: $53
	ld   de, $1111                                   ; $5ef0: $11 $11 $11
	inc  [hl]                                        ; $5ef3: $34
	ld   a, d                                        ; $5ef4: $7a
	rst  JumpTable                                         ; $5ef5: $df
	rst  $38                                         ; $5ef6: $ff
	rst  $38                                         ; $5ef7: $ff
	db   $fd                                         ; $5ef8: $fd
	and  a                                           ; $5ef9: $a7
	ld   d, d                                        ; $5efa: $52
	ld   de, $1211                                   ; $5efb: $11 $11 $12
	ld   b, [hl]                                     ; $5efe: $46
	sbc  e                                           ; $5eff: $9b
	rst  JumpTable                                         ; $5f00: $df
	rst  $38                                         ; $5f01: $ff
	rst  $38                                         ; $5f02: $ff
	db   $eb                                         ; $5f03: $eb
	add  [hl]                                        ; $5f04: $86
	ld   sp, $1111                                   ; $5f05: $31 $11 $11
	inc  de                                          ; $5f08: $13
	ld   d, a                                        ; $5f09: $57
	xor  h                                           ; $5f0a: $ac
	rst  $28                                         ; $5f0b: $ef
	rst  $38                                         ; $5f0c: $ff
	rst  $38                                         ; $5f0d: $ff
	jp   z, $2175                                    ; $5f0e: $ca $75 $21

	ld   de, $2411                                   ; $5f11: $11 $11 $24
	ld   e, c                                        ; $5f14: $59
	cp   l                                           ; $5f15: $bd
	rst  $38                                         ; $5f16: $ff
	rst  $38                                         ; $5f17: $ff
	cp   $b8                                         ; $5f18: $fe $b8
	ld   h, h                                        ; $5f1a: $64
	ld   hl, $1111                                   ; $5f1b: $21 $11 $11
	inc  [hl]                                        ; $5f1e: $34
	ld   a, d                                        ; $5f1f: $7a
	adc  $ff                                         ; $5f20: $ce $ff
	rst  $38                                         ; $5f22: $ff
	db   $fc                                         ; $5f23: $fc
	xor  b                                           ; $5f24: $a8
	ld   d, e                                        ; $5f25: $53
	ld   de, $1211                                   ; $5f26: $11 $11 $12
	ld   b, l                                        ; $5f29: $45
	sbc  d                                           ; $5f2a: $9a
	adc  $ff                                         ; $5f2b: $ce $ff
	rst  $38                                         ; $5f2d: $ff
	db   $eb                                         ; $5f2e: $eb
	sub  [hl]                                        ; $5f2f: $96
	ld   b, d                                        ; $5f30: $42
	ld   de, $1311                                   ; $5f31: $11 $11 $13
	ld   b, a                                        ; $5f34: $47
	xor  h                                           ; $5f35: $ac
	rst  $28                                         ; $5f36: $ef
	rst  $38                                         ; $5f37: $ff
	rst  $38                                         ; $5f38: $ff
	jp   z, $3175                                    ; $5f39: $ca $75 $31

	ld   de, $2411                                   ; $5f3c: $11 $11 $24
	ld   l, c                                        ; $5f3f: $69
	cp   l                                           ; $5f40: $bd
	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	db   $fd                                         ; $5f43: $fd
	cp   b                                           ; $5f44: $b8
	ld   h, e                                        ; $5f45: $63
	ld   hl, $1111                                   ; $5f46: $21 $11 $11
	dec  [hl]                                        ; $5f49: $35
	ld   a, d                                        ; $5f4a: $7a
	adc  $ff                                         ; $5f4b: $ce $ff
	rst  $38                                         ; $5f4d: $ff
	db   $ec                                         ; $5f4e: $ec
	and  a                                           ; $5f4f: $a7
	ld   b, d                                        ; $5f50: $42
	ld   de, $1311                                   ; $5f51: $11 $11 $13
	ld   b, a                                        ; $5f54: $47
	xor  h                                           ; $5f55: $ac
	rst  JumpTable                                         ; $5f56: $df
	rst  $38                                         ; $5f57: $ff
	rst  $38                                         ; $5f58: $ff
	jp   z, $3175                                    ; $5f59: $ca $75 $31

	ld   de, $2411                                   ; $5f5c: $11 $11 $24
	ld   l, c                                        ; $5f5f: $69
	cp   l                                           ; $5f60: $bd
	rst  $28                                         ; $5f61: $ef
	rst  $38                                         ; $5f62: $ff
	cp   $b8                                         ; $5f63: $fe $b8
	ld   h, h                                        ; $5f65: $64
	ld   hl, $1111                                   ; $5f66: $21 $11 $11
	ld   b, l                                        ; $5f69: $45
	adc  d                                           ; $5f6a: $8a
	rst  JumpTable                                         ; $5f6b: $df
	rst  $38                                         ; $5f6c: $ff
	rst  $38                                         ; $5f6d: $ff
	db   $ec                                         ; $5f6e: $ec
	add  [hl]                                        ; $5f6f: $86
	ld   b, d                                        ; $5f70: $42
	ld   de, $1411                                   ; $5f71: $11 $11 $14
	ld   d, a                                        ; $5f74: $57
	xor  h                                           ; $5f75: $ac
	rst  $28                                         ; $5f76: $ef
	rst  $38                                         ; $5f77: $ff
	cp   $b9                                         ; $5f78: $fe $b9
	ld   h, h                                        ; $5f7a: $64
	ld   sp, $1111                                   ; $5f7b: $31 $11 $11
	dec  [hl]                                        ; $5f7e: $35
	ld   a, d                                        ; $5f7f: $7a
	adc  $ff                                         ; $5f80: $ce $ff
	rst  $38                                         ; $5f82: $ff
	db   $fc                                         ; $5f83: $fc
	sub  [hl]                                        ; $5f84: $96
	ld   d, e                                        ; $5f85: $53
	ld   de, $1311                                   ; $5f86: $11 $11 $13
	ld   d, a                                        ; $5f89: $57
	xor  h                                           ; $5f8a: $ac
	rst  $28                                         ; $5f8b: $ef
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	cp   c                                           ; $5f8e: $b9
	ld   h, h                                        ; $5f8f: $64
	ld   sp, $1111                                   ; $5f90: $31 $11 $11
	dec  [hl]                                        ; $5f93: $35
	ld   a, d                                        ; $5f94: $7a
	adc  $ff                                         ; $5f95: $ce $ff
	rst  $38                                         ; $5f97: $ff
	db   $ec                                         ; $5f98: $ec
	sub  [hl]                                        ; $5f99: $96
	ld   b, d                                        ; $5f9a: $42
	ld   de, $1411                                   ; $5f9b: $11 $11 $14
	ld   l, c                                        ; $5f9e: $69
	cp   h                                           ; $5f9f: $bc
	rst  $28                                         ; $5fa0: $ef
	rst  $38                                         ; $5fa1: $ff
	db   $fd                                         ; $5fa2: $fd
	and  a                                           ; $5fa3: $a7
	ld   d, h                                        ; $5fa4: $54
	ld   hl, $1311                                   ; $5fa5: $21 $11 $13
	ld   d, a                                        ; $5fa8: $57
	cp   h                                           ; $5fa9: $bc
	rst  $28                                         ; $5faa: $ef
	rst  $38                                         ; $5fab: $ff
	cp   $b7                                         ; $5fac: $fe $b7
	ld   d, e                                        ; $5fae: $53
	ld   de, $1111                                   ; $5faf: $11 $11 $11
	ld   d, a                                        ; $5fb2: $57
	xor  h                                           ; $5fb3: $ac
	rst  $28                                         ; $5fb4: $ef
	rst  $38                                         ; $5fb5: $ff
	rst  $38                                         ; $5fb6: $ff
	ret                                              ; $5fb7: $c9


	ld   h, h                                        ; $5fb8: $64
	ld   hl, $1111                                   ; $5fb9: $21 $11 $11
	dec  [hl]                                        ; $5fbc: $35
	adc  e                                           ; $5fbd: $8b
	rst  JumpTable                                         ; $5fbe: $df
	rst  $38                                         ; $5fbf: $ff
	rst  $38                                         ; $5fc0: $ff
	db   $fc                                         ; $5fc1: $fc
	ld   [hl], h                                     ; $5fc2: $74
	ld   sp, $1111                                   ; $5fc3: $31 $11 $11
	inc  d                                           ; $5fc6: $14
	ld   l, c                                        ; $5fc7: $69
	adc  $ff                                         ; $5fc8: $ce $ff
	rst  $38                                         ; $5fca: $ff
	rst  $38                                         ; $5fcb: $ff
	or   [hl]                                        ; $5fcc: $b6
	ld   b, d                                        ; $5fcd: $42
	ld   de, $1211                                   ; $5fce: $11 $11 $12
	ld   b, [hl]                                     ; $5fd1: $46
	xor  l                                           ; $5fd2: $ad
	rst  $38                                         ; $5fd3: $ff
	rst  $38                                         ; $5fd4: $ff
	rst  $38                                         ; $5fd5: $ff
	ld   [$1153], a                                  ; $5fd6: $ea $53 $11
	ld   de, $2511                                   ; $5fd9: $11 $11 $25
	adc  e                                           ; $5fdc: $8b
	rst  JumpTable                                         ; $5fdd: $df
	rst  $38                                         ; $5fde: $ff
	rst  $38                                         ; $5fdf: $ff
	db   $fd                                         ; $5fe0: $fd
	sub  h                                           ; $5fe1: $94
	ld   sp, $1111                                   ; $5fe2: $31 $11 $11
	inc  de                                          ; $5fe5: $13
	ld   e, c                                        ; $5fe6: $59
	cp   a                                           ; $5fe7: $bf
	rst  $38                                         ; $5fe8: $ff
	rst  $38                                         ; $5fe9: $ff
	rst  $38                                         ; $5fea: $ff
	ret  c                                           ; $5feb: $d8

	ld   d, d                                        ; $5fec: $52
	ld   de, $1111                                   ; $5fed: $11 $11 $11
	dec  [hl]                                        ; $5ff0: $35
	adc  e                                           ; $5ff1: $8b
	rst  $28                                         ; $5ff2: $ef
	rst  $38                                         ; $5ff3: $ff
	rst  $38                                         ; $5ff4: $ff
	db   $fd                                         ; $5ff5: $fd
	sub  h                                           ; $5ff6: $94
	ld   hl, $1111                                   ; $5ff7: $21 $11 $11
	ld   [de], a                                     ; $5ffa: $12
	ld   e, b                                        ; $5ffb: $58
	cp   a                                           ; $5ffc: $bf
	rst  $38                                         ; $5ffd: $ff
	rst  $38                                         ; $5ffe: $ff
	rst  $38                                         ; $5fff: $ff
	jp   z, $1141                                    ; $6000: $ca $41 $11

	ld   de, $2411                                   ; $6003: $11 $11 $24
	adc  d                                           ; $6006: $8a
	rst  $28                                         ; $6007: $ef
	rst  $38                                         ; $6008: $ff
	rst  $38                                         ; $6009: $ff
	db   $fd                                         ; $600a: $fd
	or   [hl]                                        ; $600b: $b6
	ld   hl, $1111                                   ; $600c: $21 $11 $11
	ld   de, $ac37                                   ; $600f: $11 $37 $ac
	rst  $38                                         ; $6012: $ff
	rst  $38                                         ; $6013: $ff
	rst  $38                                         ; $6014: $ff
	db   $ec                                         ; $6015: $ec
	add  d                                           ; $6016: $82
	ld   de, $1111                                   ; $6017: $11 $11 $11
	ld   [de], a                                     ; $601a: $12
	ld   l, d                                        ; $601b: $6a
	xor  a                                           ; $601c: $af
	rst  $38                                         ; $601d: $ff
	rst  $38                                         ; $601e: $ff
	rst  $38                                         ; $601f: $ff
	bit  0, c                                        ; $6020: $cb $41
	ld   de, $1111                                   ; $6022: $11 $11 $11
	inc  de                                          ; $6025: $13
	xor  e                                           ; $6026: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6027: $cf
	rst  $38                                         ; $6028: $ff
	rst  $38                                         ; $6029: $ff
	db   $fd                                         ; $602a: $fd
	rst  $10                                         ; $602b: $d7
	ld   de, $1111                                   ; $602c: $11 $11 $11
	ld   de, $bb16                                   ; $602f: $11 $16 $bb
	rst  $38                                         ; $6032: $ff
	rst  $38                                         ; $6033: $ff
	rst  $38                                         ; $6034: $ff
	ei                                               ; $6035: $fb
	or   h                                           ; $6036: $b4
	ld   de, $1111                                   ; $6037: $11 $11 $11
	ld   de, $cd3a                                   ; $603a: $11 $3a $cd
	rst  $38                                         ; $603d: $ff
	rst  $38                                         ; $603e: $ff
	rst  $38                                         ; $603f: $ff
	call z, $1181                                    ; $6040: $cc $81 $11
	ld   de, $2211                                   ; $6043: $11 $11 $22
	ld   l, h                                        ; $6046: $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6047: $cf
	rst  $38                                         ; $6048: $ff
	rst  $38                                         ; $6049: $ff
	rst  $38                                         ; $604a: $ff
	cp   e                                           ; $604b: $bb
	ld   b, c                                        ; $604c: $41
	ld   de, $1111                                   ; $604d: $11 $11 $11
	inc  hl                                          ; $6050: $23
	xor  [hl]                                        ; $6051: $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6052: $cf
	rst  $38                                         ; $6053: $ff
	rst  $38                                         ; $6054: $ff
	db   $fd                                         ; $6055: $fd
	xor  c                                           ; $6056: $a9
	ld   de, $1111                                   ; $6057: $11 $11 $11
	ld   [de], a                                     ; $605a: $12
	inc  h                                           ; $605b: $24
	adc  $ef                                         ; $605c: $ce $ef
	rst  $38                                         ; $605e: $ff
	rst  $38                                         ; $605f: $ff
	ld   a, [$1196]                                  ; $6060: $fa $96 $11
	ld   de, $1211                                   ; $6063: $11 $11 $12
	add  hl, sp                                      ; $6066: $39
	xor  $ff                                         ; $6067: $ee $ff
	rst  $38                                         ; $6069: $ff
	rst  $38                                         ; $606a: $ff
	add  sp, -$6e                                    ; $606b: $e8 $92
	ld   de, $1111                                   ; $606d: $11 $11 $11
	inc  de                                          ; $6070: $13
	ld   c, e                                        ; $6071: $4b
	xor  $ff                                         ; $6072: $ee $ff
	rst  $38                                         ; $6074: $ff
	rst  $38                                         ; $6075: $ff
	or   a                                           ; $6076: $b7
	ld   [hl], c                                     ; $6077: $71
	ld   de, $1111                                   ; $6078: $11 $11 $11
	ld   b, h                                        ; $607b: $44
	ld   l, [hl]                                     ; $607c: $6e
	rst  $38                                         ; $607d: $ff
	rst  $38                                         ; $607e: $ff
	rst  $38                                         ; $607f: $ff
	rst  $38                                         ; $6080: $ff
	add  [hl]                                        ; $6081: $86
	ld   d, c                                        ; $6082: $51
	ld   de, $1111                                   ; $6083: $11 $11 $11
	ld   b, e                                        ; $6086: $43
	xor  a                                           ; $6087: $af
	rst  $38                                         ; $6088: $ff
	rst  $38                                         ; $6089: $ff
	rst  $38                                         ; $608a: $ff
	rst  $38                                         ; $608b: $ff
	ld   h, l                                        ; $608c: $65
	ld   sp, $1111                                   ; $608d: $31 $11 $11
	ld   [de], a                                     ; $6090: $12
	ld   d, l                                        ; $6091: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6092: $cf
	rst  $38                                         ; $6093: $ff
	rst  $38                                         ; $6094: $ff
	rst  $38                                         ; $6095: $ff
	db   $fd                                         ; $6096: $fd
	ld   b, l                                        ; $6097: $45
	ld   hl, $1111                                   ; $6098: $21 $11 $11
	dec  d                                           ; $609b: $15
	ld   d, a                                        ; $609c: $57
	rst  $38                                         ; $609d: $ff
	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	rst  $38                                         ; $60a0: $ff
	ei                                               ; $60a1: $fb
	inc  h                                           ; $60a2: $24
	ld   de, $1111                                   ; $60a3: $11 $11 $11
	ld   d, $78                                      ; $60a6: $16 $78
	rst  $38                                         ; $60a8: $ff
	rst  $38                                         ; $60a9: $ff
	rst  $38                                         ; $60aa: $ff
	rst  $38                                         ; $60ab: $ff
	ld   sp, hl                                      ; $60ac: $f9
	ld   [de], a                                     ; $60ad: $12
	ld   de, $1111                                   ; $60ae: $11 $11 $11
	ld   d, $9b                                      ; $60b1: $16 $9b
	rst  $38                                         ; $60b3: $ff
	rst  $38                                         ; $60b4: $ff
	rst  $38                                         ; $60b5: $ff
	rst  $38                                         ; $60b6: $ff
	rst  $10                                         ; $60b7: $d7
	ld   de, $1111                                   ; $60b8: $11 $11 $11
	ld   de, $9c47                                   ; $60bb: $11 $47 $9c
	rst  $38                                         ; $60be: $ff
	rst  $38                                         ; $60bf: $ff
	rst  $38                                         ; $60c0: $ff
	rst  $38                                         ; $60c1: $ff
	call nz, $1111                                   ; $60c2: $c4 $11 $11
	ld   de, $5911                                   ; $60c5: $11 $11 $59
	call $ffff                                       ; $60c8: $cd $ff $ff
	rst  $38                                         ; $60cb: $ff
	cp   $a1                                         ; $60cc: $fe $a1
	ld   de, $1111                                   ; $60ce: $11 $11 $11
	ld   [de], a                                     ; $60d1: $12
	adc  e                                           ; $60d2: $8b
	rst  $28                                         ; $60d3: $ef
	rst  $38                                         ; $60d4: $ff
	rst  $38                                         ; $60d5: $ff
	rst  $38                                         ; $60d6: $ff
	db   $fc                                         ; $60d7: $fc
	ld   [hl], c                                     ; $60d8: $71
	ld   de, $1111                                   ; $60d9: $11 $11 $11
	dec  d                                           ; $60dc: $15
	sbc  l                                           ; $60dd: $9d
	rst  $28                                         ; $60de: $ef
	rst  $38                                         ; $60df: $ff
	rst  $38                                         ; $60e0: $ff
	rst  $38                                         ; $60e1: $ff
	ld   [$1141], a                                  ; $60e2: $ea $41 $11
	ld   de, $4811                                   ; $60e5: $11 $11 $48
	cp   a                                           ; $60e8: $bf
	rst  $38                                         ; $60e9: $ff
	rst  $38                                         ; $60ea: $ff
	rst  $38                                         ; $60eb: $ff
	rst  $38                                         ; $60ec: $ff
	ret  z                                           ; $60ed: $c8

	ld   de, $1111                                   ; $60ee: $11 $11 $11
	inc  d                                           ; $60f1: $14
	ld   a, c                                        ; $60f2: $79
	rst  $38                                         ; $60f3: $ff
	rst  $38                                         ; $60f4: $ff
	rst  $38                                         ; $60f5: $ff
	rst  $38                                         ; $60f6: $ff
	db   $fd                                         ; $60f7: $fd
	sub  h                                           ; $60f8: $94
	ld   de, $1111                                   ; $60f9: $11 $11 $11
	daa                                              ; $60fc: $27
	cp   h                                           ; $60fd: $bc
	rst  $38                                         ; $60fe: $ff
	rst  $38                                         ; $60ff: $ff
	rst  $38                                         ; $6100: $ff
	cp   $db                                         ; $6101: $fe $db
	ld   [hl], d                                     ; $6103: $72
	ld   de, $1111                                   ; $6104: $11 $11 $11
	ld   e, h                                        ; $6107: $5c
	call $ffff                                       ; $6108: $cd $ff $ff
	rst  $38                                         ; $610b: $ff
	db   $fd                                         ; $610c: $fd
	ret  c                                           ; $610d: $d8

	ld   d, c                                        ; $610e: $51
	ld   de, $1211                                   ; $610f: $11 $11 $12
	xor  a                                           ; $6112: $af
	cp   a                                           ; $6113: $bf
	rst  $38                                         ; $6114: $ff
	rst  $38                                         ; $6115: $ff
	rst  $28                                         ; $6116: $ef
	db   $fd                                         ; $6117: $fd
	or   [hl]                                        ; $6118: $b6
	ld   b, c                                        ; $6119: $41
	ld   de, $1511                                   ; $611a: $11 $11 $15
	rst  $38                                         ; $611d: $ff
	cp   a                                           ; $611e: $bf
	rst  $38                                         ; $611f: $ff
	db   $fd                                         ; $6120: $fd
	rst  $38                                         ; $6121: $ff
	db   $ed                                         ; $6122: $ed
	halt                                             ; $6123: $76

Call_0ae_6124:
	ld   de, $1111                                   ; $6124: $11 $11 $11
	jr   z, @+$01                                    ; $6127: $28 $ff

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6129: $cf
	rst  $38                                         ; $612a: $ff
	ld   a, [$ebff]                                  ; $612b: $fa $ff $eb
	ld   b, [hl]                                     ; $612e: $46
	ld   de, $1311                                   ; $612f: $11 $11 $13
	dec  a                                           ; $6132: $3d
	rst  $38                                         ; $6133: $ff
	rst  JumpTable                                         ; $6134: $df
	rst  JumpTable                                         ; $6135: $df
	db   $fc                                         ; $6136: $fc
	rst  $38                                         ; $6137: $ff
	ei                                               ; $6138: $fb
	inc  [hl]                                        ; $6139: $34
	ld   de, $3611                                   ; $613a: $11 $11 $36
	ld   e, l                                        ; $613d: $5d
	rst  $38                                         ; $613e: $ff
	call c, $eacf                                    ; $613f: $dc $cf $ea
	rst  $38                                         ; $6142: $ff
	ld   sp, hl                                      ; $6143: $f9
	ld   h, $11                                      ; $6144: $26 $11
	ld   de, $6e68                                   ; $6146: $11 $68 $6e
	rst  $38                                         ; $6149: $ff
	reti                                             ; $614a: $d9


	cp   a                                           ; $614b: $bf
	ld   a, [$faef]                                  ; $614c: $fa $ef $fa
	inc  hl                                          ; $614f: $23
	ld   de, $6b11                                   ; $6150: $11 $11 $6b
	sbc  a                                           ; $6153: $9f
	rst  $38                                         ; $6154: $ff
	ret  c                                           ; $6155: $d8

	adc  a                                           ; $6156: $8f
	db   $fd                                         ; $6157: $fd
	rst  JumpTable                                         ; $6158: $df
	cp   $21                                         ; $6159: $fe $21
	ld   de, $4d11                                   ; $615b: $11 $11 $4d
	db   $ed                                         ; $615e: $ed
	rst  $38                                         ; $615f: $ff
	jp   hl                                          ; $6160: $e9


	ld   e, d                                        ; $6161: $5a
	rst  $38                                         ; $6162: $ff
	sbc  $ff                                         ; $6163: $de $ff
	ld   [hl], c                                     ; $6165: $71
	ld   hl, $1d11                                   ; $6166: $21 $11 $1d
	cp   $ef                                         ; $6169: $fe $ef
	ld   a, [$ef54]                                  ; $616b: $fa $54 $ef
	xor  $ff                                         ; $616e: $ee $ff
	db   $e3                                         ; $6170: $e3
	ld   de, $1111                                   ; $6171: $11 $11 $11
	rst  $38                                         ; $6174: $ff
	ei                                               ; $6175: $fb
	rst  $28                                         ; $6176: $ef
	add  e                                           ; $6177: $83
	dec  a                                           ; $6178: $3d
	rst  $38                                         ; $6179: $ff
	rst  $38                                         ; $617a: $ff
	cp   $21                                         ; $617b: $fe $21
	ld   hl, $1f11                                   ; $617d: $21 $11 $1f
	rst  $38                                         ; $6180: $ff
	adc  d                                           ; $6181: $8a
	jp   hl                                          ; $6182: $e9


	ld   sp, $ffbf                                   ; $6183: $31 $bf $ff
	adc  $e5                                         ; $6186: $ce $e5
	inc  de                                          ; $6188: $13
	ld   b, c                                        ; $6189: $41
	ld   de, $fbaf                                   ; $618a: $11 $af $fb
	dec  sp                                          ; $618d: $3b
	add  sp, $11                                     ; $618e: $e8 $11
	rst  $38                                         ; $6190: $ff
	rst  $38                                         ; $6191: $ff
	xor  e                                           ; $6192: $ab
	call nz, Call_0ae_6124                           ; $6193: $c4 $24 $61
	ld   de, $f8cf                                   ; $6196: $11 $cf $f8
	add  hl, de                                      ; $6199: $19
	reti                                             ; $619a: $d9


	ld   de, $ffff                                   ; $619b: $11 $ff $ff
	ld   l, b                                        ; $619e: $68
	sub  $44                                         ; $619f: $d6 $44
	ld   [hl], e                                     ; $61a1: $73
	ld   de, $fe4f                                   ; $61a2: $11 $4f $fe
	inc  d                                           ; $61a5: $14
	call z, $9f41                                    ; $61a6: $cc $41 $9f
	rst  $38                                         ; $61a9: $ff
	ld   h, d                                        ; $61aa: $62
	cp   d                                           ; $61ab: $ba
	ld   h, h                                        ; $61ac: $64
	ld   e, d                                        ; $61ad: $5a
	ld   de, $ff1e                                   ; $61ae: $11 $1e $ff
	ld   b, c                                        ; $61b1: $41
	ld   l, l                                        ; $61b2: $6d
	pop  bc                                          ; $61b3: $c1
	rra                                              ; $61b4: $1f
	rst  $38                                         ; $61b5: $ff
	pop  af                                          ; $61b6: $f1
	ld   a, [de]                                     ; $61b7: $1a
	cp   b                                           ; $61b8: $b8
	ld   e, c                                        ; $61b9: $59
	or   c                                           ; $61ba: $b1
	ld   de, $f7bf                                   ; $61bb: $11 $bf $f7
	dec  d                                           ; $61be: $15
	db   $dd                                         ; $61bf: $dd
	ld   sp, $ffbf                                   ; $61c0: $31 $bf $ff
	ld   hl, $c87d                                   ; $61c3: $21 $7d $c8
	sbc  h                                           ; $61c6: $9c
	ld   hl, rAUD1LEN                                   ; $61c7: $21 $11 $ff
	pop  af                                          ; $61ca: $f1
	ld   a, [de]                                     ; $61cb: $1a
	reti                                             ; $61cc: $d9


	ld   [de], a                                     ; $61cd: $12
	rst  $38                                         ; $61ce: $ff
	ld   a, [$9f11]                                  ; $61cf: $fa $11 $9f
	ret  z                                           ; $61d2: $c8

	jp   z, $1211                                    ; $61d3: $ca $11 $12

	rst  $38                                         ; $61d6: $ff
	pop  af                                          ; $61d7: $f1
	ld   a, [de]                                     ; $61d8: $1a
	reti                                             ; $61d9: $d9


	ld   [de], a                                     ; $61da: $12
	rst  $38                                         ; $61db: $ff
	rst  $30                                         ; $61dc: $f7
	ld   de, $e9bf                                   ; $61dd: $11 $bf $e9
	call z, $1111                                    ; $61e0: $cc $11 $11
	rst  $38                                         ; $61e3: $ff
	ldh  a, [c]                                      ; $61e4: $f2
	ld   d, $ca                                      ; $61e5: $16 $ca
	ld   de, $ffdf                                   ; $61e7: $11 $df $ff
	ld   de, $fd2f                                   ; $61ea: $11 $2f $fd
	db   $db                                         ; $61ed: $db
	ld   h, c                                        ; $61ee: $61
	ld   de, $ff1f                                   ; $61ef: $11 $1f $ff
	ld   de, $9149                                   ; $61f2: $11 $49 $91
	rrca                                             ; $61f5: $0f
	rst  $38                                         ; $61f6: $ff
	pop  hl                                          ; $61f7: $e1
	inc  de                                          ; $61f8: $13
	rst  $38                                         ; $61f9: $ff
	db   $ec                                         ; $61fa: $ec
	sub  [hl]                                        ; $61fb: $96
	ld   de, rAUD1LEN                                   ; $61fc: $11 $11 $ff
	or   $11                                         ; $61ff: $f6 $11
	ld   l, c                                        ; $6201: $69
	ld   de, $ffaf                                   ; $6202: $11 $af $ff
	ld   de, $ff1b                                   ; $6205: $11 $1b $ff
	call c, $11b6                                    ; $6208: $dc $b6 $11
	ld   de, $faff                                   ; $620b: $11 $ff $fa
	ld   de, $4336                                   ; $620e: $11 $36 $43
	rst  JumpTable                                         ; $6211: $df
	rst  $38                                         ; $6212: $ff
	ld   hl, $ff18                                   ; $6213: $21 $18 $ff
	db   $fd                                         ; $6216: $fd
	sub  l                                           ; $6217: $95
	ld   de, $7f11                                   ; $6218: $11 $11 $7f
	rst  $38                                         ; $621b: $ff
	ld   de, $8614                                   ; $621c: $11 $14 $86
	sbc  a                                           ; $621f: $9f
	rst  $38                                         ; $6220: $ff
	pop  af                                          ; $6221: $f1
	ld   de, $ffff                                   ; $6222: $11 $ff $ff
	and  [hl]                                        ; $6225: $a6
	ld   d, c                                        ; $6226: $51
	ld   de, rAUD1LEN                                   ; $6227: $11 $11 $ff
	push af                                          ; $622a: $f5
	ld   de, $ba1a                                   ; $622b: $11 $1a $ba
	rst  $38                                         ; $622e: $ff
	rst  $38                                         ; $622f: $ff
	ld   de, $ff19                                   ; $6230: $11 $19 $ff
	db   $fc                                         ; $6233: $fc
	ld   h, h                                        ; $6234: $64
	ld   de, $1911                                   ; $6235: $11 $11 $19
	rst  $38                                         ; $6238: $ff
	ldh  a, [c]                                      ; $6239: $f2
	ld   de, $cb3b                                   ; $623a: $11 $3b $cb
	rst  $38                                         ; $623d: $ff
	rst  $38                                         ; $623e: $ff
	ld   de, $ff1a                                   ; $623f: $11 $1a $ff
	ld   a, [$3156]                                  ; $6242: $fa $56 $31
	ld   de, rAUD1LEN                                   ; $6245: $11 $11 $ff
	rst  $38                                         ; $6248: $ff
	ld   de, $dd18                                   ; $6249: $11 $18 $dd
	cp   a                                           ; $624c: $bf
	rst  $38                                         ; $624d: $ff
	pop  de                                          ; $624e: $d1
	ld   de, $ffef                                   ; $624f: $11 $ef $ff
	sub  l                                           ; $6252: $95
	ld   d, d                                        ; $6253: $52
	ld   de, $1811                                   ; $6254: $11 $11 $18
	rst  $38                                         ; $6257: $ff
	ldh  a, [c]                                      ; $6258: $f2
	ld   de, $fb1f                                   ; $6259: $11 $1f $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $625c: $cf
	rst  $38                                         ; $625d: $ff
	ld   sp, rAUD1LOW                                   ; $625e: $31 $13 $ff
	cp   $43                                         ; $6261: $fe $43
	ld   b, e                                        ; $6263: $43
	ld   de, $1411                                   ; $6264: $11 $11 $14
	rst  $38                                         ; $6267: $ff
	db   $f4                                         ; $6268: $f4
	ld   de, $fc2f                                   ; $6269: $11 $2f $fc
	sbc  [hl]                                        ; $626c: $9e
	rst  $38                                         ; $626d: $ff
	sub  c                                           ; $626e: $91
	ld   de, $feff                                   ; $626f: $11 $ff $fe
	inc  [hl]                                        ; $6272: $34
	ld   [hl], a                                     ; $6273: $77
	ld   hl, $1111                                   ; $6274: $21 $11 $11
	ccf                                              ; $6277: $3f
	rst  $38                                         ; $6278: $ff
	ld   h, c                                        ; $6279: $61
	inc  d                                           ; $627a: $14
	rst  $38                                         ; $627b: $ff
	ret  z                                           ; $627c: $c8

	rst  $38                                         ; $627d: $ff
	ld   hl, sp+$11                                  ; $627e: $f8 $11
	rra                                              ; $6280: $1f
	rst  $38                                         ; $6281: $ff
	push af                                          ; $6282: $f5
	ld   [hl], $62                                   ; $6283: $36 $62
	ld   [de], a                                     ; $6285: $12
	ld   de, $df11                                   ; $6286: $11 $11 $df
	rst  $38                                         ; $6289: $ff
	ld   de, $fc1b                                   ; $628a: $11 $1b $fc
	ld   l, c                                        ; $628d: $69
	rst  $38                                         ; $628e: $ff
	pop  af                                          ; $628f: $f1
	ld   de, $ff9f                                   ; $6290: $11 $9f $ff
	and  l                                           ; $6293: $a5
	ld   c, b                                        ; $6294: $48
	ld   [hl], e                                     ; $6295: $73
	inc  [hl]                                        ; $6296: $34
	ld   b, c                                        ; $6297: $41
	ld   de, $ff1f                                   ; $6298: $11 $1f $ff
	ld   h, c                                        ; $629b: $61
	inc  de                                          ; $629c: $13
	cp   $75                                         ; $629d: $fe $75
	rst  $38                                         ; $629f: $ff
	db   $fd                                         ; $62a0: $fd
	ld   de, $ff1f                                   ; $62a1: $11 $1f $ff
	or   $37                                         ; $62a4: $f6 $37
	and  l                                           ; $62a6: $a5
	inc  hl                                          ; $62a7: $23
	halt                                             ; $62a8: $76
	ld   de, rAUD1LEN                                   ; $62a9: $11 $11 $ff
	ld   a, [$1c11]                                  ; $62ac: $fa $11 $1c
	or   [hl]                                        ; $62af: $b6
	ld   e, a                                        ; $62b0: $5f
	rst  $38                                         ; $62b1: $ff
	pop  af                                          ; $62b2: $f1
	ld   de, $ffcf                                   ; $62b3: $11 $cf $ff
	sub  l                                           ; $62b6: $95
	ld   a, d                                        ; $62b7: $7a
	ld   h, c                                        ; $62b8: $61
	ld   d, $b6                                      ; $62b9: $16 $b6
	ld   de, rAUD1LEN                                   ; $62bb: $11 $11 $ff
	ld   sp, hl                                      ; $62be: $f9
	ld   de, $a61b                                   ; $62bf: $11 $1b $a6
	ld   a, a                                        ; $62c2: $7f
	rst  $38                                         ; $62c3: $ff
	pop  af                                          ; $62c4: $f1
	ld   de, $ffcf                                   ; $62c5: $11 $cf $ff
	or   [hl]                                        ; $62c8: $b6
	adc  d                                           ; $62c9: $8a
	ld   d, c                                        ; $62ca: $51
	ld   d, $c9                                      ; $62cb: $16 $c9
	ld   de, rAUD1LEN                                   ; $62cd: $11 $11 $ff
	rst  $38                                         ; $62d0: $ff
	ld   de, $9719                                   ; $62d1: $11 $19 $97
	ld   l, h                                        ; $62d4: $6c
	rst  $38                                         ; $62d5: $ff
	ldh  a, [c]                                      ; $62d6: $f2
	ld   de, $ff6f                                   ; $62d7: $11 $6f $ff
	rst  $10                                         ; $62da: $d7
	ld   l, b                                        ; $62db: $68
	ld   [hl], e                                     ; $62dc: $73
	dec  [hl]                                        ; $62dd: $35
	cp   [hl]                                        ; $62de: $be
	ld   h, c                                        ; $62df: $61
	ld   de, $ff1f                                   ; $62e0: $11 $1f $ff
	pop  af                                          ; $62e3: $f1
	ld   de, $7658                                   ; $62e4: $11 $58 $76
	cp   a                                           ; $62e7: $bf
	rst  $38                                         ; $62e8: $ff
	ld   h, c                                        ; $62e9: $61
	inc  de                                          ; $62ea: $13
	rst  $38                                         ; $62eb: $ff
	rst  $38                                         ; $62ec: $ff
	sub  a                                           ; $62ed: $97
	xor  c                                           ; $62ee: $a9
	ld   b, c                                        ; $62ef: $41
	ld   a, [hl-]                                    ; $62f0: $3a
	ei                                               ; $62f1: $fb
	ld   de, $4f11                                   ; $62f2: $11 $11 $4f
	rst  $38                                         ; $62f5: $ff
	and  c                                           ; $62f6: $a1
	ld   de, $6856                                   ; $62f7: $11 $56 $68
	rst  $38                                         ; $62fa: $ff
	rst  $38                                         ; $62fb: $ff
	ld   de, $ff19                                   ; $62fc: $11 $19 $ff
	db   $fd                                         ; $62ff: $fd
	ld   [hl], a                                     ; $6300: $77
	add  [hl]                                        ; $6301: $86
	ld   hl, $fa6e                                   ; $6302: $21 $6e $fa
	ld   de, $5f11                                   ; $6305: $11 $11 $5f
	rst  $38                                         ; $6308: $ff
	pop  bc                                          ; $6309: $c1
	ld   de, $6756                                   ; $630a: $11 $56 $67
	rst  $38                                         ; $630d: $ff
	rst  $38                                         ; $630e: $ff
	ld   de, $ff17                                   ; $630f: $11 $17 $ff
	rst  $38                                         ; $6312: $ff
	add  a                                           ; $6313: $87
	add  [hl]                                        ; $6314: $86
	ld   hl, $fc6e                                   ; $6315: $21 $6e $fc
	ld   de, $1f11                                   ; $6318: $11 $11 $1f
	rst  $38                                         ; $631b: $ff
	push af                                          ; $631c: $f5
	ld   de, $6624                                   ; $631d: $11 $24 $66
	cp   a                                           ; $6320: $bf
	rst  $38                                         ; $6321: $ff
	pop  bc                                          ; $6322: $c1
	ld   de, $ffcf                                   ; $6323: $11 $cf $ff
	or   [hl]                                        ; $6326: $b6
	adc  c                                           ; $6327: $89
	ld   h, h                                        ; $6328: $64
	scf                                              ; $6329: $37
	rst  $28                                         ; $632a: $ef
	and  c                                           ; $632b: $a1
	ld   de, rAUD1LEN                                   ; $632c: $11 $11 $ff
	rst  $38                                         ; $632f: $ff
	ld   d, c                                        ; $6330: $51
	ld   [de], a                                     ; $6331: $12
	ld   d, l                                        ; $6332: $55
	ld   e, c                                        ; $6333: $59
	rst  $38                                         ; $6334: $ff
	cp   $11                                         ; $6335: $fe $11
	ld   a, [de]                                     ; $6337: $1a
	rst  $38                                         ; $6338: $ff
	ei                                               ; $6339: $fb
	sbc  e                                           ; $633a: $9b
	ret  z                                           ; $633b: $c8

	ld   b, d                                        ; $633c: $42
	ld   e, l                                        ; $633d: $5d
	ei                                               ; $633e: $fb
	ld   de, $1b11                                   ; $633f: $11 $11 $1b
	rst  $38                                         ; $6342: $ff
	ei                                               ; $6343: $fb
	ld   de, $6413                                   ; $6344: $11 $13 $64
	ld   a, a                                        ; $6347: $7f
	rst  $38                                         ; $6348: $ff
	push af                                          ; $6349: $f5
	ld   de, $ff4f                                   ; $634a: $11 $4f $ff
	db   $ec                                         ; $634d: $ec
	cp   e                                           ; $634e: $bb
	and  l                                           ; $634f: $a5
	inc  [hl]                                        ; $6350: $34
	sbc  [hl]                                        ; $6351: $9e
	jp   hl                                          ; $6352: $e9


	ld   de, $1d11                                   ; $6353: $11 $11 $1d
	rst  $38                                         ; $6356: $ff
	ld   a, [$1311]                                  ; $6357: $fa $11 $13
	ld   b, e                                        ; $635a: $43
	ld   a, a                                        ; $635b: $7f
	rst  $38                                         ; $635c: $ff
	push af                                          ; $635d: $f5
	ld   de, $ff5f                                   ; $635e: $11 $5f $ff
	db   $fd                                         ; $6361: $fd
	db   $ed                                         ; $6362: $ed
	and  l                                           ; $6363: $a5
	inc  h                                           ; $6364: $24
	adc  a                                           ; $6365: $8f
	ld   sp, hl                                      ; $6366: $f9
	ld   de, $1611                                   ; $6367: $11 $11 $16
	rst  $38                                         ; $636a: $ff
	rst  $38                                         ; $636b: $ff
	ld   de, $5312                                   ; $636c: $11 $12 $53
	ld   e, l                                        ; $636f: $5d
	rst  $38                                         ; $6370: $ff
	ld   a, [$2c11]                                  ; $6371: $fa $11 $2c
	rst  $38                                         ; $6374: $ff
	db   $fd                                         ; $6375: $fd
	xor  $c8                                         ; $6376: $ee $c8
	ld   [hl+], a                                    ; $6378: $22
	ld   e, d                                        ; $6379: $5a
	db   $fd                                         ; $637a: $fd
	ld   [hl], c                                     ; $637b: $71
	ld   de, rAUD1LEN                                   ; $637c: $11 $11 $ff
	rst  $38                                         ; $637f: $ff
	ld   d, c                                        ; $6380: $51
	ld   de, $1764                                   ; $6381: $11 $64 $17
	rst  $38                                         ; $6384: $ff
	rst  $38                                         ; $6385: $ff
	ld   d, c                                        ; $6386: $51
	add  hl, de                                      ; $6387: $19
	rst  $38                                         ; $6388: $ff
	db   $fc                                         ; $6389: $fc
	rst  JumpTable                                         ; $638a: $df
	db   $ec                                         ; $638b: $ec
	ld   h, d                                        ; $638c: $62
	scf                                              ; $638d: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $638e: $cf
	or   h                                           ; $638f: $b4
	ld   de, $1f11                                   ; $6390: $11 $11 $1f
	rst  $38                                         ; $6393: $ff
	or   $11                                         ; $6394: $f6 $11
	ld   d, $31                                      ; $6396: $16 $31
	ld   l, l                                        ; $6398: $6d
	rst  $38                                         ; $6399: $ff
	ld   hl, sp+$21                                  ; $639a: $f8 $21
	sbc  [hl]                                        ; $639c: $9e
	rst  $38                                         ; $639d: $ff
	rst  JumpTable                                         ; $639e: $df
	rst  $38                                         ; $639f: $ff
	sub  $13                                         ; $63a0: $d6 $13
	ld   l, h                                        ; $63a2: $6c
	db   $eb                                         ; $63a3: $eb
	ld   b, c                                        ; $63a4: $41
	ld   de, rAUD1LEN                                   ; $63a5: $11 $11 $ff
	rst  $38                                         ; $63a8: $ff
	ld   [hl], c                                     ; $63a9: $71
	ld   de, $1662                                   ; $63aa: $11 $62 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63ad: $cf
	rst  $38                                         ; $63ae: $ff
	sub  d                                           ; $63af: $92
	add  hl, de                                      ; $63b0: $19
	rst  $28                                         ; $63b1: $ef
	ei                                               ; $63b2: $fb
	rst  JumpTable                                         ; $63b3: $df
	cp   $72                                         ; $63b4: $fe $72
	dec  [hl]                                        ; $63b6: $35
	cp   [hl]                                        ; $63b7: $be
	or   [hl]                                        ; $63b8: $b6
	ld   de, $1a11                                   ; $63b9: $11 $11 $1a
	rst  $38                                         ; $63bc: $ff
	db   $fc                                         ; $63bd: $fc
	ld   de, $5116                                   ; $63be: $11 $16 $51
	ld   c, b                                        ; $63c1: $48
	rst  $38                                         ; $63c2: $ff
	cp   $72                                         ; $63c3: $fe $72
	ld   l, l                                        ; $63c5: $6d
	rst  JumpTable                                         ; $63c6: $df
	call z, $fbff                                    ; $63c7: $cc $ff $fb
	ld   b, e                                        ; $63ca: $43
	ld   [hl], $cb                                   ; $63cb: $36 $cb
	sub  c                                           ; $63cd: $91
	ld   de, $1f11                                   ; $63ce: $11 $11 $1f
	rst  $38                                         ; $63d1: $ff
	db   $f4                                         ; $63d2: $f4
	ld   de, $1157                                   ; $63d3: $11 $57 $11

jr_0ae_63d6:
	ld   c, h                                        ; $63d6: $4c
	rst  $38                                         ; $63d7: $ff
	ei                                               ; $63d8: $fb
	ld   d, h                                        ; $63d9: $54
	xor  l                                           ; $63da: $ad
	db   $ed                                         ; $63db: $ed
	xor  l                                           ; $63dc: $ad
	rst  $38                                         ; $63dd: $ff
	ld   hl, sp+$42                                  ; $63de: $f8 $42
	jr   z, @-$34                                    ; $63e0: $28 $ca

	ld   h, c                                        ; $63e2: $61
	ld   de, rAUD1LEN                                   ; $63e3: $11 $11 $ff
	rst  $38                                         ; $63e6: $ff
	add  c                                           ; $63e7: $81
	ld   h, $83                                      ; $63e8: $26 $83
	ld   de, $ff6f                                   ; $63ea: $11 $6f $ff
	ld   hl, sp+$38                                  ; $63ed: $f8 $38
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63ef: $cf
	db   $eb                                         ; $63f0: $eb
	xor  h                                           ; $63f1: $ac
	rst  $38                                         ; $63f2: $ff
	ret  c                                           ; $63f3: $d8

	ld   hl, $ca5b                                   ; $63f4: $21 $5b $ca
	ld   de, $1511                                   ; $63f7: $11 $11 $15
	rst  $38                                         ; $63fa: $ff
	rst  $38                                         ; $63fb: $ff
	ld   b, d                                        ; $63fc: $42
	ld   c, b                                        ; $63fd: $48
	ld   [hl], d                                     ; $63fe: $72
	ld   [de], a                                     ; $63ff: $12
	cp   a                                           ; $6400: $bf
	rst  $38                                         ; $6401: $ff
	rst  $30                                         ; $6402: $f7
	ld   a, d                                        ; $6403: $7a
	adc  $db                                         ; $6404: $ce $db
	cp   e                                           ; $6406: $bb
	rst  $38                                         ; $6407: $ff
	ret                                              ; $6408: $c9


	ld   [hl+], a                                    ; $6409: $22
	ld   e, b                                        ; $640a: $58
	and  a                                           ; $640b: $a7
	ld   de, $1911                                   ; $640c: $11 $11 $19
	rst  $38                                         ; $640f: $ff
	db   $fd                                         ; $6410: $fd
	ld   [hl-], a                                    ; $6411: $32
	ld   l, d                                        ; $6412: $6a
	sub  h                                           ; $6413: $94
	ld   de, $ff9f                                   ; $6414: $11 $9f $ff
	ld   sp, hl                                      ; $6417: $f9
	ld   a, b                                        ; $6418: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6419: $cf
	db   $eb                                         ; $641a: $eb
	sbc  e                                           ; $641b: $9b
	rst  $28                                         ; $641c: $ef
	jp   hl                                          ; $641d: $e9


	ld   [hl+], a                                    ; $641e: $22
	jr   c, jr_0ae_63d6                              ; $641f: $38 $b5

	ld   de, $1d11                                   ; $6421: $11 $11 $1d
	rst  $38                                         ; $6424: $ff
	ld   a, [$8c33]                                  ; $6425: $fa $33 $8c
	or   h                                           ; $6428: $b4
	ld   de, $ff7f                                   ; $6429: $11 $7f $ff
	ei                                               ; $642c: $fb
	ld   a, b                                        ; $642d: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $642e: $cf
	db   $fc                                         ; $642f: $fc
	sbc  c                                           ; $6430: $99
	cp   a                                           ; $6431: $bf
	ret  c                                           ; $6432: $d8

	ld   b, d                                        ; $6433: $42
	scf                                              ; $6434: $37
	add  e                                           ; $6435: $83
	ld   de, $1f11                                   ; $6436: $11 $11 $1f
	rst  $38                                         ; $6439: $ff
	ld   sp, hl                                      ; $643a: $f9
	inc  [hl]                                        ; $643b: $34
	xor  [hl]                                        ; $643c: $ae
	sub  $11                                         ; $643d: $d6 $11
	ld   c, [hl]                                     ; $643f: $4e
	rst  $38                                         ; $6440: $ff
	cp   $98                                         ; $6441: $fe $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6443: $cf
	db   $fc                                         ; $6444: $fc
	sbc  c                                           ; $6445: $99
	sbc  e                                           ; $6446: $9b
	jp   z, $4563                                    ; $6447: $ca $63 $45

	ld   b, c                                        ; $644a: $41
	ld   de, $1c11                                   ; $644b: $11 $11 $1c
	rst  $38                                         ; $644e: $ff
	db   $fc                                         ; $644f: $fc
	ld   d, l                                        ; $6450: $55
	cp   a                                           ; $6451: $bf
	ld   sp, hl                                      ; $6452: $f9
	ld   hl, $ff19                                   ; $6453: $21 $19 $ff
	rst  $38                                         ; $6456: $ff
	cp   c                                           ; $6457: $b9
	adc  $fe                                         ; $6458: $ce $fe
	or   a                                           ; $645a: $b7
	ld   a, c                                        ; $645b: $79
	sbc  c                                           ; $645c: $99
	add  l                                           ; $645d: $85
	ld   b, e                                        ; $645e: $43
	ld   bc, $1111                                   ; $645f: $01 $11 $11
	dec  l                                           ; $6462: $2d
	rst  $38                                         ; $6463: $ff
	ei                                               ; $6464: $fb
	ld   a, c                                        ; $6465: $79
	adc  $e9                                         ; $6466: $ce $e9
	ld   sp, $ff29                                   ; $6468: $31 $29 $ff
	rst  $38                                         ; $646b: $ff
	call z, $fede                                    ; $646c: $cc $de $fe
	xor  c                                           ; $646f: $a9
	adc  b                                           ; $6470: $88
	adc  c                                           ; $6471: $89
	halt                                             ; $6472: $76
	ld   d, e                                        ; $6473: $53
	ld   de, $1111                                   ; $6474: $11 $11 $11
	ld   c, l                                        ; $6477: $4d
	rst  $38                                         ; $6478: $ff
	ei                                               ; $6479: $fb
	sbc  h                                           ; $647a: $9c
	rst  $28                                         ; $647b: $ef
	rst  $20                                         ; $647c: $e7
	ld   sp, $ff39                                   ; $647d: $31 $39 $ff
	rst  $38                                         ; $6480: $ff
	call z, $fddf                                    ; $6481: $cc $df $fd
	jp   z, $9898                                    ; $6484: $ca $98 $98

	halt                                             ; $6487: $76
	ld   d, d                                        ; $6488: $52

jr_0ae_6489:
	ld   de, $1111                                   ; $6489: $11 $11 $11
	ld   c, h                                        ; $648c: $4c
	rst  $38                                         ; $648d: $ff
	ei                                               ; $648e: $fb
	sbc  h                                           ; $648f: $9c
	rst  $38                                         ; $6490: $ff
	ld   hl, sp+$31                                  ; $6491: $f8 $31
	add  hl, hl                                      ; $6493: $29
	rst  $38                                         ; $6494: $ff
	rst  $38                                         ; $6495: $ff
	call $feef                                       ; $6496: $cd $ef $fe
	cp   c                                           ; $6499: $b9
	sbc  c                                           ; $649a: $99
	sbc  b                                           ; $649b: $98
	halt                                             ; $649c: $76
	ld   b, d                                        ; $649d: $42
	ld   de, $1111                                   ; $649e: $11 $11 $11
	dec  sp                                          ; $64a1: $3b
	rst  $38                                         ; $64a2: $ff
	db   $eb                                         ; $64a3: $eb
	xor  l                                           ; $64a4: $ad
	rst  $38                                         ; $64a5: $ff
	jp   hl                                          ; $64a6: $e9


Call_0ae_64a7:
	ld   b, c                                        ; $64a7: $41
	jr   c, jr_0ae_6489                              ; $64a8: $38 $df

	cp   $cc                                         ; $64aa: $fe $cc
	rst  $28                                         ; $64ac: $ef
	db   $fd                                         ; $64ad: $fd
	cp   d                                           ; $64ae: $ba
	adc  b                                           ; $64af: $88
	sbc  b                                           ; $64b0: $98
	halt                                             ; $64b1: $76
	ld   b, c                                        ; $64b2: $41
	ld   de, $1111                                   ; $64b3: $11 $11 $11
	ld   e, h                                        ; $64b6: $5c
	rst  $38                                         ; $64b7: $ff
	jp   c, $ffae                                    ; $64b8: $da $ae $ff

	add  sp, $31                                     ; $64bb: $e8 $31
	ld   c, d                                        ; $64bd: $4a
	rst  $28                                         ; $64be: $ef
	db   $fd                                         ; $64bf: $fd
	call z, $feef                                    ; $64c0: $cc $ef $fe
	cp   c                                           ; $64c3: $b9
	sbc  c                                           ; $64c4: $99
	sbc  c                                           ; $64c5: $99
	ld   [hl], l                                     ; $64c6: $75
	ld   sp, $1111                                   ; $64c7: $31 $11 $11
	ld   de, $ff4c                                   ; $64ca: $11 $4c $ff
	res  5, [hl]                                     ; $64cd: $cb $ae
	rst  $38                                         ; $64cf: $ff
	add  sp, $31                                     ; $64d0: $e8 $31
	ld   c, e                                        ; $64d2: $4b
	rst  $38                                         ; $64d3: $ff
	db   $fd                                         ; $64d4: $fd
	call z, $fdef                                    ; $64d5: $cc $ef $fd
	cp   c                                           ; $64d8: $b9
	adc  c                                           ; $64d9: $89
	adc  b                                           ; $64da: $88
	ld   [hl], l                                     ; $64db: $75
	ld   sp, $1111                                   ; $64dc: $31 $11 $11
	ld   de, $ff7d                                   ; $64df: $11 $7d $ff
	set  1, a                                        ; $64e2: $cb $cf
	rst  $38                                         ; $64e4: $ff
	add  $22                                         ; $64e5: $c6 $22
	ld   l, e                                        ; $64e7: $6b
	rst  $38                                         ; $64e8: $ff
	db   $ed                                         ; $64e9: $ed
	call $ecef                                       ; $64ea: $cd $ef $ec
	cp   c                                           ; $64ed: $b9
	adc  c                                           ; $64ee: $89
	add  a                                           ; $64ef: $87
	ld   h, l                                        ; $64f0: $65
	ld   hl, $1111                                   ; $64f1: $21 $11 $11
	ld   de, $ff9f                                   ; $64f4: $11 $9f $ff
	jp   z, $ffcf                                    ; $64f7: $ca $cf $ff

	sub  h                                           ; $64fa: $94
	ld   [de], a                                     ; $64fb: $12
	sbc  [hl]                                        ; $64fc: $9e
	rst  $38                                         ; $64fd: $ff
	call c, $ffdf                                    ; $64fe: $dc $df $ff
	db   $db                                         ; $6501: $db
	sbc  b                                           ; $6502: $98
	sbc  d                                           ; $6503: $9a
	sub  a                                           ; $6504: $97
	ld   b, d                                        ; $6505: $42
	ld   de, $1111                                   ; $6506: $11 $11 $11
	add  hl, de                                      ; $6509: $19
	rst  $38                                         ; $650a: $ff
	db   $fd                                         ; $650b: $fd
	xor  h                                           ; $650c: $ac
	rst  $38                                         ; $650d: $ff
	ld   [$2941], a                                  ; $650e: $ea $41 $29
	rst  JumpTable                                         ; $6511: $df
	rst  $38                                         ; $6512: $ff
	call z, $feef                                    ; $6513: $cc $ef $fe
	cp   c                                           ; $6516: $b9
	sbc  c                                           ; $6517: $99
	xor  b                                           ; $6518: $a8
	ld   h, h                                        ; $6519: $64
	ld   sp, $1111                                   ; $651a: $31 $11 $11
	ld   de, $ff6f                                   ; $651d: $11 $6f $ff
	ld   [$ffac], a                                  ; $6520: $ea $ac $ff
	or   l                                           ; $6523: $b5
	ld   de, $ff6e                                   ; $6524: $11 $6e $ff
	db   $fc                                         ; $6527: $fc
	adc  $ff                                         ; $6528: $ce $ff
	db   $eb                                         ; $652a: $eb
	adc  c                                           ; $652b: $89
	xor  d                                           ; $652c: $aa
	sub  a                                           ; $652d: $97
	ld   b, d                                        ; $652e: $42
	ld   de, $1111                                   ; $652f: $11 $11 $11
	jr   @+$01                                       ; $6532: $18 $ff

	cp   $a9                                         ; $6534: $fe $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6536: $cf
	add  sp, $31                                     ; $6537: $e8 $31
	jr   @+$01                                       ; $6539: $18 $ff

	rst  $38                                         ; $653b: $ff
	cp   e                                           ; $653c: $bb
	rst  $28                                         ; $653d: $ef
	cp   $a9                                         ; $653e: $fe $a9
	xor  e                                           ; $6540: $ab
	cp   c                                           ; $6541: $b9
	ld   h, d                                        ; $6542: $62
	ld   de, $1111                                   ; $6543: $11 $11 $11
	ld   de, $ffdf                                   ; $6546: $11 $df $ff
	ret  z                                           ; $6549: $c8

	adc  e                                           ; $654a: $8b
	db   $db                                         ; $654b: $db
	ld   d, c                                        ; $654c: $51
	inc  d                                           ; $654d: $14
	rst  $38                                         ; $654e: $ff
	rst  $38                                         ; $654f: $ff
	jp   z, $ffdf                                    ; $6550: $ca $df $ff

	cp   b                                           ; $6553: $b8
	sbc  e                                           ; $6554: $9b
	call c, $1192                                    ; $6555: $dc $92 $11
	ld   de, $1111                                   ; $6558: $11 $11 $11
	adc  a                                           ; $655b: $8f
	rst  $38                                         ; $655c: $ff
	rst  $20                                         ; $655d: $e7
	ld   c, b                                        ; $655e: $48
	call z, $1271                                    ; $655f: $cc $71 $12
	rst  JumpTable                                         ; $6562: $df
	rst  $38                                         ; $6563: $ff
	rst  $10                                         ; $6564: $d7
	sbc  l                                           ; $6565: $9d
	rst  $38                                         ; $6566: $ff
	reti                                             ; $6567: $d9


	sbc  e                                           ; $6568: $9b
	db   $dd                                         ; $6569: $dd
	sub  h                                           ; $656a: $94
	ld   de, $1111                                   ; $656b: $11 $11 $11
	ld   de, $ff3f                                   ; $656e: $11 $3f $ff
	rst  $30                                         ; $6571: $f7
	dec  h                                           ; $6572: $25
	xor  l                                           ; $6573: $ad
	sub  c                                           ; $6574: $91
	ld   de, $ffcf                                   ; $6575: $11 $cf $ff
	push de                                          ; $6578: $d5
	ld   l, h                                        ; $6579: $6c
	rst  $38                                         ; $657a: $ff
	ld   [$ff9d], a                                  ; $657b: $ea $9d $ff
	and  e                                           ; $657e: $a3
	ld   de, $1111                                   ; $657f: $11 $11 $11
	ld   de, $ff4f                                   ; $6582: $11 $4f $ff
	db   $f4                                         ; $6585: $f4
	inc  d                                           ; $6586: $14
	xor  h                                           ; $6587: $ac
	add  c                                           ; $6588: $81
	inc  d                                           ; $6589: $14
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	sub  d                                           ; $658c: $92
	ld   e, [hl]                                     ; $658d: $5e
	rst  $38                                         ; $658e: $ff
	ret  c                                           ; $658f: $d8

	sbc  a                                           ; $6590: $9f
	rst  $38                                         ; $6591: $ff
	ld   h, c                                        ; $6592: $61
	ld   de, $1111                                   ; $6593: $11 $11 $11
	ld   de, $ffff                                   ; $6596: $11 $ff $ff
	ld   h, c                                        ; $6599: $61
	jr   @-$24                                       ; $659a: $18 $da

	ld   de, $ff1f                                   ; $659c: $11 $1f $ff
	or   $13                                         ; $659f: $f6 $13
	rst  JumpTable                                         ; $65a1: $df
	cp   $89                                         ; $65a2: $fe $89
	rst  $38                                         ; $65a4: $ff
	push af                                          ; $65a5: $f5
	ld   de, $6129                                   ; $65a6: $11 $29 $61
	ld   de, rAUD1ENV                                   ; $65a9: $11 $12 $ff
	db   $fd                                         ; $65ac: $fd
	ld   de, $d47d                                   ; $65ad: $11 $7d $d4
	ld   de, $ffbf                                   ; $65b0: $11 $bf $ff
	add  c                                           ; $65b3: $81
	inc  a                                           ; $65b4: $3c
	rst  $38                                         ; $65b5: $ff
	rst  $20                                         ; $65b6: $e7
	adc  [hl]                                        ; $65b7: $8e
	rst  $38                                         ; $65b8: $ff

Call_0ae_65b9:
	sub  c                                           ; $65b9: $91
	ld   de, $1177                                   ; $65ba: $11 $77 $11
	ld   de, $ff1f                                   ; $65bd: $11 $1f $ff
	pop  af                                          ; $65c0: $f1
	dec  d                                           ; $65c1: $15
	db   $db                                         ; $65c2: $db
	ld   b, c                                        ; $65c3: $41
	ld   a, [de]                                     ; $65c4: $1a
	rst  $38                                         ; $65c5: $ff
	ld   hl, sp+$11                                  ; $65c6: $f8 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65c8: $cf
	cp   $79                                         ; $65c9: $fe $79
	rst  $38                                         ; $65cb: $ff
	ld   hl, sp+$11                                  ; $65cc: $f8 $11
	dec  hl                                          ; $65ce: $2b
	and  c                                           ; $65cf: $a1
	ld   de, $cf11                                   ; $65d0: $11 $11 $cf
	rst  $38                                         ; $65d3: $ff
	add  c                                           ; $65d4: $81
	ld   e, e                                        ; $65d5: $5b
	and  [hl]                                        ; $65d6: $a6
	ld   de, $ff8f                                   ; $65d7: $11 $8f $ff
	or   c                                           ; $65da: $b1
	ld   a, [de]                                     ; $65db: $1a
	rst  $38                                         ; $65dc: $ff
	ld   a, [$ffaf]                                  ; $65dd: $fa $af $ff
	and  c                                           ; $65e0: $a1
	inc  de                                          ; $65e1: $13
	sbc  e                                           ; $65e2: $9b
	ld   hl, $1311                                   ; $65e3: $21 $11 $13
	rst  $38                                         ; $65e6: $ff
	cp   $54                                         ; $65e7: $fe $54
	sbc  c                                           ; $65e9: $99
	ld   h, d                                        ; $65ea: $62
	ld   d, $ff                                      ; $65eb: $16 $ff
	rst  $38                                         ; $65ed: $ff
	ld   d, c                                        ; $65ee: $51
	ld   l, a                                        ; $65ef: $6f
	rst  $38                                         ; $65f0: $ff
	ld   [$fdef], a                                  ; $65f1: $ea $ef $fd
	ld   sp, $9316                                   ; $65f4: $31 $16 $93
	ld   de, $2f11                                   ; $65f7: $11 $11 $2f
	rst  $38                                         ; $65fa: $ff
	call nc, $b738                                   ; $65fb: $d4 $38 $b7
	ld   [hl+], a                                    ; $65fe: $22
	ld   l, a                                        ; $65ff: $6f
	rst  $38                                         ; $6600: $ff
	call nc, $ff17                                   ; $6601: $d4 $17 $ff
	db   $fc                                         ; $6604: $fc
	xor  a                                           ; $6605: $af
	rst  $38                                         ; $6606: $ff
	jp   nz, $9a14                                   ; $6607: $c2 $14 $9a

	ld   hl, $1111                                   ; $660a: $21 $11 $11
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	ld   [hl], h                                     ; $660f: $74
	ld   [hl], a                                     ; $6610: $77
	ld   h, h                                        ; $6611: $64
	ld   c, c                                        ; $6612: $49
	rst  $38                                         ; $6613: $ff
	db   $fd                                         ; $6614: $fd
	ld   d, c                                        ; $6615: $51
	ld   l, a                                        ; $6616: $6f
	rst  $38                                         ; $6617: $ff
	db   $ec                                         ; $6618: $ec
	rst  $38                                         ; $6619: $ff
	ld   sp, hl                                      ; $661a: $f9
	ld   hl, $6148                                   ; $661b: $21 $48 $61
	ld   de, $ef11                                   ; $661e: $11 $11 $ef
	rst  $38                                         ; $6621: $ff
	ld   h, e                                        ; $6622: $63
	ld   a, e                                        ; $6623: $7b
	sub  e                                           ; $6624: $93
	inc  d                                           ; $6625: $14
	rst  $28                                         ; $6626: $ef
	rst  $38                                         ; $6627: $ff
	ld   b, c                                        ; $6628: $41
	ld   c, a                                        ; $6629: $4f
	rst  $38                                         ; $662a: $ff
	reti                                             ; $662b: $d9


	rst  JumpTable                                         ; $662c: $df
	db   $fd                                         ; $662d: $fd
	ld   sp, $a239                                   ; $662e: $31 $39 $a2
	ld   de, $1f11                                   ; $6631: $11 $11 $1f
	rst  $38                                         ; $6634: $ff
	push hl                                          ; $6635: $e5
	ld   h, $87                                      ; $6636: $26 $87
	ld   h, l                                        ; $6638: $65
	xor  a                                           ; $6639: $af
	rst  $38                                         ; $663a: $ff
	or   e                                           ; $663b: $b3
	rla                                              ; $663c: $17
	rst  $38                                         ; $663d: $ff
	db   $fc                                         ; $663e: $fc
	xor  h                                           ; $663f: $ac
	rst  $38                                         ; $6640: $ff
	and  e                                           ; $6641: $a3
	inc  h                                           ; $6642: $24
	add  h                                           ; $6643: $84
	ld   de, $1f11                                   ; $6644: $11 $11 $1f
	rst  $38                                         ; $6647: $ff
	or   h                                           ; $6648: $b4
	scf                                              ; $6649: $37
	cp   b                                           ; $664a: $b8
	ld   d, l                                        ; $664b: $55
	sbc  a                                           ; $664c: $9f
	rst  $38                                         ; $664d: $ff
	and  c                                           ; $664e: $a1
	ld   a, [de]                                     ; $664f: $1a
	rst  $38                                         ; $6650: $ff
	ei                                               ; $6651: $fb
	xor  l                                           ; $6652: $ad
	rst  $38                                         ; $6653: $ff
	sub  d                                           ; $6654: $92
	dec  h                                           ; $6655: $25
	add  c                                           ; $6656: $81
	ld   de, $5f11                                   ; $6657: $11 $11 $5f
	rst  $38                                         ; $665a: $ff
	add  h                                           ; $665b: $84
	ld   e, b                                        ; $665c: $58
	and  [hl]                                        ; $665d: $a6
	ld   d, [hl]                                     ; $665e: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $665f: $cf
	rst  $38                                         ; $6660: $ff
	ld   [hl], c                                     ; $6661: $71
	ld   l, $ff                                      ; $6662: $2e $ff
	ld   a, [$feae]                                  ; $6664: $fa $ae $fe
	ld   h, e                                        ; $6667: $63
	ld   b, a                                        ; $6668: $47
	add  c                                           ; $6669: $81
	ld   de, $7f11                                   ; $666a: $11 $11 $7f
	cp   $78                                         ; $666d: $fe $78
	adc  c                                           ; $666f: $89
	add  h                                           ; $6670: $84
	ld   e, b                                        ; $6671: $58
	rst  $38                                         ; $6672: $ff
	cp   $63                                         ; $6673: $fe $63
	ld   a, l                                        ; $6675: $7d
	rst  $38                                         ; $6676: $ff
	cp   $de                                         ; $6677: $fe $de
	db   $fc                                         ; $6679: $fc
	ld   d, d                                        ; $667a: $52
	inc  [hl]                                        ; $667b: $34
	ld   sp, $1111                                   ; $667c: $31 $11 $11
	rst  JumpTable                                         ; $667f: $df
	ei                                               ; $6680: $fb
	ld   d, a                                        ; $6681: $57
	xor  h                                           ; $6682: $ac
	add  l                                           ; $6683: $85
	ld   e, d                                        ; $6684: $5a
	rst  $38                                         ; $6685: $ff
	ld   sp, hl                                      ; $6686: $f9
	ld   [hl+], a                                    ; $6687: $22
	rst  $28                                         ; $6688: $ef
	rst  $38                                         ; $6689: $ff
	call z, $e6ff                                    ; $668a: $cc $ff $e6
	ld   [hl+], a                                    ; $668d: $22
	ld   b, l                                        ; $668e: $45
	ld   de, $1911                                   ; $668f: $11 $11 $19
	rst  $38                                         ; $6692: $ff
	jp   c, $a7aa                                    ; $6693: $da $aa $a7

	ld   l, b                                        ; $6696: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6697: $cf
	rst  $38                                         ; $6698: $ff
	sub  e                                           ; $6699: $93
	inc  a                                           ; $669a: $3c
	rst  $38                                         ; $669b: $ff
	rst  $38                                         ; $669c: $ff
	rst  $38                                         ; $669d: $ff
	db   $fc                                         ; $669e: $fc
	ld   d, d                                        ; $669f: $52
	inc  hl                                          ; $66a0: $23
	ld   sp, $1111                                   ; $66a1: $31 $11 $11
	sbc  a                                           ; $66a4: $9f
	db   $fd                                         ; $66a5: $fd
	sbc  c                                           ; $66a6: $99
	xor  d                                           ; $66a7: $aa
	adc  b                                           ; $66a8: $88
	xor  l                                           ; $66a9: $ad
	rst  $38                                         ; $66aa: $ff
	reti                                             ; $66ab: $d9


	inc  h                                           ; $66ac: $24
	rst  $28                                         ; $66ad: $ef
	rst  $38                                         ; $66ae: $ff
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	sub  d                                           ; $66b1: $92
	ld   de, $1131                                   ; $66b2: $11 $31 $11
	ld   de, $ff1c                                   ; $66b5: $11 $1c $ff
	cp   d                                           ; $66b8: $ba
	xor  d                                           ; $66b9: $aa
	sub  a                                           ; $66ba: $97
	sbc  h                                           ; $66bb: $9c
	rst  $38                                         ; $66bc: $ff
	ld   a, [$af42]                                  ; $66bd: $fa $42 $af
	rst  $38                                         ; $66c0: $ff
	rst  $38                                         ; $66c1: $ff
	rst  $38                                         ; $66c2: $ff
	call nz, $3111                                   ; $66c3: $c4 $11 $31
	ld   de, $1a11                                   ; $66c6: $11 $11 $1a
	rst  $38                                         ; $66c9: $ff
	db   $eb                                         ; $66ca: $eb
	cp   d                                           ; $66cb: $ba
	add  a                                           ; $66cc: $87
	ld   a, e                                        ; $66cd: $7b
	rst  $38                                         ; $66ce: $ff
	db   $fc                                         ; $66cf: $fc
	ld   d, e                                        ; $66d0: $53
	adc  a                                           ; $66d1: $8f
	rst  $38                                         ; $66d2: $ff
	rst  $38                                         ; $66d3: $ff
	rst  $38                                         ; $66d4: $ff
	call nz, $1111                                   ; $66d5: $c4 $11 $11
	ld   de, $1811                                   ; $66d8: $11 $11 $18
	rst  JumpTable                                         ; $66db: $df
	db   $eb                                         ; $66dc: $eb
	jp   z, $8c99                                    ; $66dd: $ca $99 $8c

	rst  $38                                         ; $66e0: $ff
	db   $fd                                         ; $66e1: $fd
	add  h                                           ; $66e2: $84
	ld   a, a                                        ; $66e3: $7f
	rst  $38                                         ; $66e4: $ff
	rst  $38                                         ; $66e5: $ff
	rst  $38                                         ; $66e6: $ff
	rst  ToBoot                                         ; $66e7: $c7
	ld   hl, $1111                                   ; $66e8: $21 $11 $11
	ld   de, $cd17                                   ; $66eb: $11 $17 $cd
	call $a7cb                                       ; $66ee: $cd $cb $a7
	sbc  l                                           ; $66f1: $9d
	rst  $38                                         ; $66f2: $ff
	ei                                               ; $66f3: $fb
	halt                                             ; $66f4: $76
	cp   a                                           ; $66f5: $bf
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	rst  $38                                         ; $66f8: $ff
	or   h                                           ; $66f9: $b4
	ld   de, $1111                                   ; $66fa: $11 $11 $11
	ld   de, $be18                                   ; $66fd: $11 $18 $be
	call c, $a9db                                    ; $6700: $dc $db $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6703: $cf
	rst  $38                                         ; $6704: $ff
	jp   hl                                          ; $6705: $e9


	ld   a, c                                        ; $6706: $79
	rst  $28                                         ; $6707: $ef
	rst  $38                                         ; $6708: $ff
	rst  $38                                         ; $6709: $ff
	cp   $72                                         ; $670a: $fe $72
	ld   de, $1111                                   ; $670c: $11 $11 $11
	ld   de, $bd5b                                   ; $670f: $11 $5b $bd
	xor  $da                                         ; $6712: $ee $da
	sbc  h                                           ; $6714: $9c
	rst  $38                                         ; $6715: $ff
	cp   $97                                         ; $6716: $fe $97
	xor  [hl]                                        ; $6718: $ae
	cp   $ff                                         ; $6719: $fe $ff
	rst  $38                                         ; $671b: $ff
	ld   hl, sp+$21                                  ; $671c: $f8 $21
	ld   de, $1111                                   ; $671e: $11 $11 $11
	inc  de                                          ; $6721: $13
	sbc  e                                           ; $6722: $9b
	db   $ed                                         ; $6723: $ed
	sbc  $ab                                         ; $6724: $de $ab
	rst  JumpTable                                         ; $6726: $df
	rst  $38                                         ; $6727: $ff
	ei                                               ; $6728: $fb
	sbc  d                                           ; $6729: $9a
	sbc  $ff                                         ; $672a: $de $ff
	rst  $38                                         ; $672c: $ff
	cp   $83                                         ; $672d: $fe $83
	ld   de, $1111                                   ; $672f: $11 $11 $11
	ld   de, $ad38                                   ; $6732: $11 $38 $ad
	xor  $db                                         ; $6735: $ee $db
	xor  [hl]                                        ; $6737: $ae
	rst  $38                                         ; $6738: $ff
	db   $fd                                         ; $6739: $fd
	cp   e                                           ; $673a: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $673b: $cf
	db   $ed                                         ; $673c: $ed
	rst  $28                                         ; $673d: $ef
	rst  $38                                         ; $673e: $ff
	add  $11                                         ; $673f: $c6 $11
	ld   de, $1111                                   ; $6741: $11 $11 $11
	inc  d                                           ; $6744: $14
	ld   a, e                                        ; $6745: $7b
	rst  $28                                         ; $6746: $ef
	ei                                               ; $6747: $fb
	sbc  h                                           ; $6748: $9c
	rst  $38                                         ; $6749: $ff
	cp   $b9                                         ; $674a: $fe $b9
	rst  JumpTable                                         ; $674c: $df
	db   $fd                                         ; $674d: $fd
	cp   [hl]                                        ; $674e: $be
	rst  $38                                         ; $674f: $ff
	ld   sp, hl                                      ; $6750: $f9
	ld   de, $1111                                   ; $6751: $11 $11 $11
	ld   de, $6a11                                   ; $6754: $11 $11 $6a
	db   $dd                                         ; $6757: $dd
	call c, $ffcf                                    ; $6758: $dc $cf $ff
	cp   $bc                                         ; $675b: $fe $bc
	rst  $28                                         ; $675d: $ef
	db   $ec                                         ; $675e: $ec
	rst  $28                                         ; $675f: $ef
	rst  $38                                         ; $6760: $ff
	rst  $20                                         ; $6761: $e7
	ld   sp, $1111                                   ; $6762: $31 $11 $11
	ld   de, $5a11                                   ; $6765: $11 $11 $5a
	cp   $cb                                         ; $6768: $fe $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $676a: $cf
	rst  $38                                         ; $676b: $ff
	db   $fd                                         ; $676c: $fd
	xor  l                                           ; $676d: $ad
	rst  $38                                         ; $676e: $ff
	db   $eb                                         ; $676f: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6770: $cf
	rst  $38                                         ; $6771: $ff
	or   l                                           ; $6772: $b5
	ld   de, $1111                                   ; $6773: $11 $11 $11
	ld   de, $9c13                                   ; $6776: $11 $13 $9c
	xor  $bc                                         ; $6779: $ee $bc
	rst  $28                                         ; $677b: $ef
	rst  $38                                         ; $677c: $ff
	ei                                               ; $677d: $fb
	cp   a                                           ; $677e: $bf
	rst  $38                                         ; $677f: $ff
	call c, $fdef                                    ; $6780: $dc $ef $fd
	ld   [hl], c                                     ; $6783: $71
	ld   de, $1111                                   ; $6784: $11 $11 $11
	ld   de, $cf18                                   ; $6787: $11 $18 $cf
	call c, $ffcf                                    ; $678a: $dc $cf $ff
	cp   $bc                                         ; $678d: $fe $bc
	rst  $38                                         ; $678f: $ff
	db   $ed                                         ; $6790: $ed
	adc  $ff                                         ; $6791: $ce $ff
	add  $11                                         ; $6793: $c6 $11
	ld   de, $1111                                   ; $6795: $11 $11 $11
	ld   [de], a                                     ; $6798: $12
	xor  h                                           ; $6799: $ac
	db   $ed                                         ; $679a: $ed
	adc  $ff                                         ; $679b: $ce $ff
	rst  $38                                         ; $679d: $ff
	db   $db                                         ; $679e: $db
	rst  $28                                         ; $679f: $ef
	db   $fc                                         ; $67a0: $fc
	call $e8ef                                       ; $67a1: $cd $ef $e8
	ld   sp, $1111                                   ; $67a4: $31 $11 $11
	ld   de, $5a11                                   ; $67a7: $11 $11 $5a
	db   $ed                                         ; $67aa: $ed
	adc  $ff                                         ; $67ab: $ce $ff
	rst  $38                                         ; $67ad: $ff
	db   $eb                                         ; $67ae: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67af: $cf
	cp   $ca                                         ; $67b0: $fe $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67b2: $cf
	add  sp, $21                                     ; $67b3: $e8 $21
	ld   de, $1111                                   ; $67b5: $11 $11 $11
	ld   de, $bb7c                                   ; $67b8: $11 $7c $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67bb: $cf
	rst  $38                                         ; $67bc: $ff
	rst  $38                                         ; $67bd: $ff
	db   $ec                                         ; $67be: $ec
	rst  $28                                         ; $67bf: $ef
	db   $ec                                         ; $67c0: $ec
	xor  d                                           ; $67c1: $aa
	rst  JumpTable                                         ; $67c2: $df
	add  $11                                         ; $67c3: $c6 $11
	ld   de, $1111                                   ; $67c5: $11 $11 $11
	inc  d                                           ; $67c8: $14
	adc  e                                           ; $67c9: $8b
	set  3, a                                        ; $67ca: $cb $df
	rst  $38                                         ; $67cc: $ff
	rst  $38                                         ; $67cd: $ff
	xor  $ff                                         ; $67ce: $ee $ff
	db   $ec                                         ; $67d0: $ec
	sbc  h                                           ; $67d1: $9c
	call c, $1171                                    ; $67d2: $dc $71 $11
	ld   de, $1111                                   ; $67d5: $11 $11 $11
	add  hl, sp                                      ; $67d8: $39
	xor  h                                           ; $67d9: $ac
	cp   e                                           ; $67da: $bb
	rst  $38                                         ; $67db: $ff
	rst  $38                                         ; $67dc: $ff
	cp   $ff                                         ; $67dd: $fe $ff
	rst  $38                                         ; $67df: $ff
	jp   z, $c7bd                                    ; $67e0: $ca $bd $c7

	ld   de, $1111                                   ; $67e3: $11 $11 $11
	ld   de, $9b14                                   ; $67e6: $11 $14 $9b
	jp   z, $ffcf                                    ; $67e9: $ca $cf $ff

	rst  $38                                         ; $67ec: $ff
	rst  $38                                         ; $67ed: $ff
	rst  $38                                         ; $67ee: $ff
	ld   a, [$cbbb]                                  ; $67ef: $fa $bb $cb
	ld   d, c                                        ; $67f2: $51
	ld   de, $1111                                   ; $67f3: $11 $11 $11
	ld   de, $ba59                                   ; $67f6: $11 $59 $ba
	xor  [hl]                                        ; $67f9: $ae
	rst  $38                                         ; $67fa: $ff
	rst  $38                                         ; $67fb: $ff
	rst  $38                                         ; $67fc: $ff
	rst  $38                                         ; $67fd: $ff
	db   $fd                                         ; $67fe: $fd
	xor  d                                           ; $67ff: $aa
	bit  6, c                                        ; $6800: $cb $71
	ld   de, $1111                                   ; $6802: $11 $11 $11
	ld   de, $ba38                                   ; $6805: $11 $38 $ba
	sbc  h                                           ; $6808: $9c
	rst  $38                                         ; $6809: $ff
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	rst  $38                                         ; $680c: $ff
	rst  $38                                         ; $680d: $ff
	cp   c                                           ; $680e: $b9
	cp   d                                           ; $680f: $ba
	ld   [hl], c                                     ; $6810: $71
	ld   de, $1111                                   ; $6811: $11 $11 $11
	ld   de, $cc3a                                   ; $6814: $11 $3a $cc
	xor  h                                           ; $6817: $ac
	rst  $38                                         ; $6818: $ff
	rst  $38                                         ; $6819: $ff
	cp   $ff                                         ; $681a: $fe $ff
	rst  $38                                         ; $681c: $ff
	cp   d                                           ; $681d: $ba
	xor  d                                           ; $681e: $aa
	ld   h, c                                        ; $681f: $61
	ld   de, $1111                                   ; $6820: $11 $11 $11
	ld   de, $ec59                                   ; $6823: $11 $59 $ec
	xor  a                                           ; $6826: $af
	rst  $38                                         ; $6827: $ff
	rst  $38                                         ; $6828: $ff
	rst  $28                                         ; $6829: $ef
	rst  $38                                         ; $682a: $ff
	cp   $a8                                         ; $682b: $fe $a8
	halt                                             ; $682d: $76
	ld   hl, $1111                                   ; $682e: $21 $11 $11
	ld   de, $6b12                                   ; $6831: $11 $12 $6b
	xor  $ff                                         ; $6834: $ee $ff
	rst  $38                                         ; $6836: $ff
	rst  $38                                         ; $6837: $ff
	rst  $38                                         ; $6838: $ff
	rst  $38                                         ; $6839: $ff
	db   $fd                                         ; $683a: $fd
	xor  b                                           ; $683b: $a8
	ld   d, c                                        ; $683c: $51
	ld   de, $1111                                   ; $683d: $11 $11 $11
	ld   de, $bd36                                   ; $6840: $11 $36 $bd
	rst  JumpTable                                         ; $6843: $df
	rst  $38                                         ; $6844: $ff
	rst  $38                                         ; $6845: $ff
	rst  $38                                         ; $6846: $ff
	rst  $38                                         ; $6847: $ff
	rst  $38                                         ; $6848: $ff
	jp   c, $1184                                    ; $6849: $da $84 $11

	ld   de, $1111                                   ; $684c: $11 $11 $11
	inc  d                                           ; $684f: $14
	ld   a, e                                        ; $6850: $7b
	db   $dd                                         ; $6851: $dd
	rst  $38                                         ; $6852: $ff
	rst  $38                                         ; $6853: $ff
	rst  $38                                         ; $6854: $ff
	rst  $38                                         ; $6855: $ff
	rst  $38                                         ; $6856: $ff
	db   $db                                         ; $6857: $db
	sub  [hl]                                        ; $6858: $96
	ld   de, $1111                                   ; $6859: $11 $11 $11
	ld   de, $6912                                   ; $685c: $11 $12 $69
	db   $dd                                         ; $685f: $dd
	rst  $38                                         ; $6860: $ff
	rst  $38                                         ; $6861: $ff
	rst  $38                                         ; $6862: $ff
	rst  $38                                         ; $6863: $ff
	rst  $38                                         ; $6864: $ff
	db   $ed                                         ; $6865: $ed
	sub  [hl]                                        ; $6866: $96
	ld   hl, $1111                                   ; $6867: $21 $11 $11
	ld   de, $5812                                   ; $686a: $11 $12 $58
	sbc  $ff                                         ; $686d: $de $ff
	rst  $38                                         ; $686f: $ff
	rst  $38                                         ; $6870: $ff
	rst  $38                                         ; $6871: $ff
	rst  $38                                         ; $6872: $ff
	db   $fd                                         ; $6873: $fd
	or   a                                           ; $6874: $b7
	ld   hl, $1111                                   ; $6875: $21 $11 $11
	ld   de, $5812                                   ; $6878: $11 $12 $58
	call $ffff                                       ; $687b: $cd $ff $ff
	rst  $38                                         ; $687e: $ff
	rst  $38                                         ; $687f: $ff
	rst  $38                                         ; $6880: $ff
	db   $fc                                         ; $6881: $fc
	sub  [hl]                                        ; $6882: $96
	ld   hl, $1111                                   ; $6883: $21 $11 $11
	ld   de, $4811                                   ; $6886: $11 $11 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6889: $cf
	rst  $38                                         ; $688a: $ff
	rst  $38                                         ; $688b: $ff
	rst  $38                                         ; $688c: $ff
	rst  $38                                         ; $688d: $ff
	rst  $38                                         ; $688e: $ff
	db   $fc                                         ; $688f: $fc
	and  [hl]                                        ; $6890: $a6
	ld   de, $1111                                   ; $6891: $11 $11 $11
	ld   de, $5912                                   ; $6894: $11 $12 $59
	adc  $ff                                         ; $6897: $ce $ff
	rst  $38                                         ; $6899: $ff
	rst  $38                                         ; $689a: $ff
	rst  $38                                         ; $689b: $ff
	rst  $38                                         ; $689c: $ff
	db   $ec                                         ; $689d: $ec
	add  h                                           ; $689e: $84
	ld   de, $1111                                   ; $689f: $11 $11 $11
	ld   de, $5a12                                   ; $68a2: $11 $12 $5a
	rst  $28                                         ; $68a5: $ef
	rst  $38                                         ; $68a6: $ff
	rst  $38                                         ; $68a7: $ff
	rst  $38                                         ; $68a8: $ff
	rst  $38                                         ; $68a9: $ff
	rst  $38                                         ; $68aa: $ff
	jp   z, $1171                                    ; $68ab: $ca $71 $11

	ld   de, $1111                                   ; $68ae: $11 $11 $11
	inc  d                                           ; $68b1: $14
	sbc  l                                           ; $68b2: $9d
	rst  $38                                         ; $68b3: $ff
	rst  $38                                         ; $68b4: $ff
	rst  $38                                         ; $68b5: $ff
	rst  $38                                         ; $68b6: $ff
	rst  $38                                         ; $68b7: $ff
	db   $ed                                         ; $68b8: $ed
	or   a                                           ; $68b9: $b7
	ld   hl, $1111                                   ; $68ba: $21 $11 $11
	ld   de, $4811                                   ; $68bd: $11 $11 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68c0: $cf
	rst  $38                                         ; $68c1: $ff
	rst  $38                                         ; $68c2: $ff
	rst  $38                                         ; $68c3: $ff
	rst  $38                                         ; $68c4: $ff
	rst  $38                                         ; $68c5: $ff
	bit  6, d                                        ; $68c6: $cb $72
	ld   de, $1111                                   ; $68c8: $11 $11 $11
	ld   de, $8b24                                   ; $68cb: $11 $24 $8b
	rst  $38                                         ; $68ce: $ff
	rst  $38                                         ; $68cf: $ff
	rst  $38                                         ; $68d0: $ff
	rst  $38                                         ; $68d1: $ff
	rst  $38                                         ; $68d2: $ff
	db   $ec                                         ; $68d3: $ec
	and  [hl]                                        ; $68d4: $a6
	ld   de, $1111                                   ; $68d5: $11 $11 $11
	ld   de, $5912                                   ; $68d8: $11 $12 $59
	rst  JumpTable                                         ; $68db: $df
	rst  $38                                         ; $68dc: $ff
	rst  $38                                         ; $68dd: $ff
	rst  $38                                         ; $68de: $ff
	rst  $38                                         ; $68df: $ff
	cp   $b9                                         ; $68e0: $fe $b9
	ld   b, c                                        ; $68e2: $41
	ld   de, $1111                                   ; $68e3: $11 $11 $11
	ld   de, $bf36                                   ; $68e6: $11 $36 $bf
	rst  $38                                         ; $68e9: $ff
	rst  $38                                         ; $68ea: $ff
	rst  $38                                         ; $68eb: $ff
	rst  $38                                         ; $68ec: $ff
	rst  $38                                         ; $68ed: $ff
	db   $db                                         ; $68ee: $db
	ld   h, c                                        ; $68ef: $61
	ld   de, $1111                                   ; $68f0: $11 $11 $11
	ld   de, $9c24                                   ; $68f3: $11 $24 $9c
	rst  $38                                         ; $68f6: $ff
	rst  $38                                         ; $68f7: $ff
	rst  $38                                         ; $68f8: $ff
	rst  $38                                         ; $68f9: $ff
	rst  $38                                         ; $68fa: $ff
	db   $eb                                         ; $68fb: $eb
	add  h                                           ; $68fc: $84
	ld   de, $1111                                   ; $68fd: $11 $11 $11
	ld   de, $7b13                                   ; $6900: $11 $13 $7b
	rst  $38                                         ; $6903: $ff
	rst  $38                                         ; $6904: $ff
	rst  $38                                         ; $6905: $ff
	rst  $38                                         ; $6906: $ff
	rst  $38                                         ; $6907: $ff
	db   $fc                                         ; $6908: $fc
	sub  h                                           ; $6909: $94
	ld   de, $1111                                   ; $690a: $11 $11 $11
	ld   de, $7a13                                   ; $690d: $11 $13 $7a
	rst  $28                                         ; $6910: $ef
	rst  $38                                         ; $6911: $ff
	rst  $38                                         ; $6912: $ff
	rst  $38                                         ; $6913: $ff
	rst  $38                                         ; $6914: $ff
	db   $fd                                         ; $6915: $fd
	sub  l                                           ; $6916: $95
	ld   de, $1111                                   ; $6917: $11 $11 $11
	ld   de, $6a13                                   ; $691a: $11 $13 $6a
	rst  JumpTable                                         ; $691d: $df
	rst  $38                                         ; $691e: $ff
	rst  $38                                         ; $691f: $ff
	rst  $38                                         ; $6920: $ff
	rst  $38                                         ; $6921: $ff
	db   $fd                                         ; $6922: $fd
	sub  h                                           ; $6923: $94
	ld   de, $1111                                   ; $6924: $11 $11 $11
	ld   de, $6a12                                   ; $6927: $11 $12 $6a
	rst  $28                                         ; $692a: $ef
	rst  $38                                         ; $692b: $ff
	rst  $38                                         ; $692c: $ff
	rst  $38                                         ; $692d: $ff
	rst  $38                                         ; $692e: $ff
	db   $fd                                         ; $692f: $fd
	sub  h                                           ; $6930: $94
	ld   de, $1111                                   ; $6931: $11 $11 $11
	ld   de, $6a12                                   ; $6934: $11 $12 $6a
	rst  $38                                         ; $6937: $ff
	rst  $38                                         ; $6938: $ff
	rst  $38                                         ; $6939: $ff
	rst  $38                                         ; $693a: $ff
	rst  $38                                         ; $693b: $ff
	db   $fc                                         ; $693c: $fc
	sub  e                                           ; $693d: $93
	ld   de, $1111                                   ; $693e: $11 $11 $11
	ld   de, $7a12                                   ; $6941: $11 $12 $7a
	rst  $38                                         ; $6944: $ff
	rst  $38                                         ; $6945: $ff
	rst  $38                                         ; $6946: $ff
	rst  $38                                         ; $6947: $ff
	rst  $38                                         ; $6948: $ff
	ei                                               ; $6949: $fb
	ld   [hl], c                                     ; $694a: $71
	ld   de, $1111                                   ; $694b: $11 $11 $11
	ld   de, $8c14                                   ; $694e: $11 $14 $8c
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	rst  $38                                         ; $6953: $ff
	rst  $38                                         ; $6954: $ff
	rst  $38                                         ; $6955: $ff
	reti                                             ; $6956: $d9


	ld   b, c                                        ; $6957: $41
	ld   de, $1111                                   ; $6958: $11 $11 $11
	ld   de, $9e26                                   ; $695b: $11 $26 $9e
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	rst  $38                                         ; $6960: $ff
	rst  $38                                         ; $6961: $ff
	rst  $38                                         ; $6962: $ff
	or   [hl]                                        ; $6963: $b6
	ld   de, $1111                                   ; $6964: $11 $11 $11
	ld   de, $5811                                   ; $6967: $11 $11 $58
	rst  JumpTable                                         ; $696a: $df
	rst  $38                                         ; $696b: $ff
	rst  $38                                         ; $696c: $ff
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	ei                                               ; $696f: $fb
	add  e                                           ; $6970: $83
	ld   de, $1111                                   ; $6971: $11 $11 $11
	ld   de, $7b13                                   ; $6974: $11 $13 $7b
	rst  $38                                         ; $6977: $ff
	rst  $38                                         ; $6978: $ff
	rst  $38                                         ; $6979: $ff
	rst  $38                                         ; $697a: $ff
	rst  $38                                         ; $697b: $ff
	ret  z                                           ; $697c: $c8

	ld   sp, $1111                                   ; $697d: $31 $11 $11
	ld   de, $4711                                   ; $6980: $11 $11 $47
	cp   a                                           ; $6983: $bf
	rst  $38                                         ; $6984: $ff
	rst  $38                                         ; $6985: $ff
	rst  $38                                         ; $6986: $ff
	rst  $38                                         ; $6987: $ff
	db   $fc                                         ; $6988: $fc
	add  e                                           ; $6989: $83
	ld   de, $1111                                   ; $698a: $11 $11 $11
	ld   de, $8b14                                   ; $698d: $11 $14 $8b
	rst  $38                                         ; $6990: $ff
	rst  $38                                         ; $6991: $ff
	rst  $38                                         ; $6992: $ff
	rst  $38                                         ; $6993: $ff
	rst  $38                                         ; $6994: $ff
	or   a                                           ; $6995: $b7
	ld   sp, $1111                                   ; $6996: $31 $11 $11
	ld   de, $5812                                   ; $6999: $11 $12 $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $699c: $cf
	rst  $38                                         ; $699d: $ff
	rst  $38                                         ; $699e: $ff
	rst  $38                                         ; $699f: $ff
	rst  $38                                         ; $69a0: $ff
	jp   hl                                          ; $69a1: $e9


	ld   d, c                                        ; $69a2: $51
	ld   de, $1111                                   ; $69a3: $11 $11 $11
	ld   de, $ae37                                   ; $69a6: $11 $37 $ae
	rst  $38                                         ; $69a9: $ff
	rst  $38                                         ; $69aa: $ff
	rst  $38                                         ; $69ab: $ff
	rst  $38                                         ; $69ac: $ff
	ei                                               ; $69ad: $fb
	ld   [hl], e                                     ; $69ae: $73
	ld   de, $1111                                   ; $69af: $11 $11 $11
	ld   de, $ad26                                   ; $69b2: $11 $26 $ad
	rst  $38                                         ; $69b5: $ff
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	db   $fd                                         ; $69b9: $fd
	add  h                                           ; $69ba: $84
	ld   de, $1111                                   ; $69bb: $11 $11 $11
	ld   de, $8b15                                   ; $69be: $11 $15 $8b
	rst  $38                                         ; $69c1: $ff
	rst  $38                                         ; $69c2: $ff
	rst  $38                                         ; $69c3: $ff
	rst  $38                                         ; $69c4: $ff
	db   $fd                                         ; $69c5: $fd
	sub  l                                           ; $69c6: $95
	ld   bc, $1111                                   ; $69c7: $01 $11 $11
	ld   de, $8b14                                   ; $69ca: $11 $14 $8b
	rst  $38                                         ; $69cd: $ff
	rst  $38                                         ; $69ce: $ff
	rst  $38                                         ; $69cf: $ff
	rst  $38                                         ; $69d0: $ff
	db   $fc                                         ; $69d1: $fc
	sub  h                                           ; $69d2: $94
	ld   de, $1111                                   ; $69d3: $11 $11 $11
	ld   de, $8b14                                   ; $69d6: $11 $14 $8b
	rst  $38                                         ; $69d9: $ff
	rst  $38                                         ; $69da: $ff
	rst  $38                                         ; $69db: $ff
	rst  $38                                         ; $69dc: $ff
	db   $fc                                         ; $69dd: $fc
	add  h                                           ; $69de: $84
	ld   de, $1111                                   ; $69df: $11 $11 $11
	ld   de, $8b15                                   ; $69e2: $11 $15 $8b
	rst  $38                                         ; $69e5: $ff
	rst  $38                                         ; $69e6: $ff
	rst  $38                                         ; $69e7: $ff
	rst  $38                                         ; $69e8: $ff
	db   $fc                                         ; $69e9: $fc
	ld   [hl], d                                     ; $69ea: $72
	ld   de, $1111                                   ; $69eb: $11 $11 $11
	ld   de, $ae16                                   ; $69ee: $11 $16 $ae
	rst  $38                                         ; $69f1: $ff
	rst  $38                                         ; $69f2: $ff
	rst  $38                                         ; $69f3: $ff
	rst  $38                                         ; $69f4: $ff
	ld   [$1151], a                                  ; $69f5: $ea $51 $11
	ld   de, $1111                                   ; $69f8: $11 $11 $11
	ld   c, c                                        ; $69fb: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69fc: $cf
	rst  $38                                         ; $69fd: $ff
	rst  $38                                         ; $69fe: $ff
	rst  $38                                         ; $69ff: $ff
	rst  $38                                         ; $6a00: $ff
	rst  ToBoot                                         ; $6a01: $c7
	ld   sp, $1111                                   ; $6a02: $31 $11 $11
	ld   de, $7b12                                   ; $6a05: $11 $12 $7b
	rst  $28                                         ; $6a08: $ef
	rst  $38                                         ; $6a09: $ff
	rst  $38                                         ; $6a0a: $ff
	rst  $38                                         ; $6a0b: $ff
	db   $fd                                         ; $6a0c: $fd
	sub  h                                           ; $6a0d: $94
	ld   de, $1111                                   ; $6a0e: $11 $11 $11
	ld   de, $ad15                                   ; $6a11: $11 $15 $ad
	rst  $38                                         ; $6a14: $ff
	rst  $38                                         ; $6a15: $ff
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	reti                                             ; $6a18: $d9


	ld   b, c                                        ; $6a19: $41
	ld   de, $1111                                   ; $6a1a: $11 $11 $11
	ld   de, $ef5b                                   ; $6a1d: $11 $5b $ef
	rst  $38                                         ; $6a20: $ff
	rst  $38                                         ; $6a21: $ff
	rst  $38                                         ; $6a22: $ff
	db   $fd                                         ; $6a23: $fd
	add  h                                           ; $6a24: $84
	ld   de, $1111                                   ; $6a25: $11 $11 $11
	ld   de, $ae26                                   ; $6a28: $11 $26 $ae
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	rst  $38                                         ; $6a2d: $ff
	rst  $38                                         ; $6a2e: $ff
	or   a                                           ; $6a2f: $b7
	ld   sp, $1111                                   ; $6a30: $31 $11 $11
	ld   de, $8c03                                   ; $6a33: $11 $03 $8c
	rst  $28                                         ; $6a36: $ef
	rst  $38                                         ; $6a37: $ff
	rst  $38                                         ; $6a38: $ff
	rst  $38                                         ; $6a39: $ff
	jp   hl                                          ; $6a3a: $e9


	ld   h, d                                        ; $6a3b: $62
	ld   de, $1111                                   ; $6a3c: $11 $11 $11
	ld   [de], a                                     ; $6a3f: $12
	ld   l, d                                        ; $6a40: $6a
	rst  JumpTable                                         ; $6a41: $df
	rst  $38                                         ; $6a42: $ff
	rst  $38                                         ; $6a43: $ff
	rst  $38                                         ; $6a44: $ff
	ld   [$1163], a                                  ; $6a45: $ea $63 $11
	ld   de, $1211                                   ; $6a48: $11 $11 $12
	ld   e, d                                        ; $6a4b: $5a
	rst  $28                                         ; $6a4c: $ef
	rst  $38                                         ; $6a4d: $ff
	rst  $38                                         ; $6a4e: $ff
	rst  $38                                         ; $6a4f: $ff
	ld   a, [$1162]                                  ; $6a50: $fa $62 $11
	ld   de, $1211                                   ; $6a53: $11 $11 $12
	ld   e, e                                        ; $6a56: $5b
	rst  $28                                         ; $6a57: $ef
	rst  $38                                         ; $6a58: $ff
	rst  $38                                         ; $6a59: $ff
	rst  $38                                         ; $6a5a: $ff
	reti                                             ; $6a5b: $d9


	ld   d, c                                        ; $6a5c: $51
	ld   de, $1111                                   ; $6a5d: $11 $11 $11
	inc  de                                          ; $6a60: $13
	ld   l, h                                        ; $6a61: $6c
	rst  $38                                         ; $6a62: $ff
	rst  $38                                         ; $6a63: $ff
	rst  $38                                         ; $6a64: $ff
	rst  $38                                         ; $6a65: $ff
	ret  z                                           ; $6a66: $c8

	ld   sp, $1111                                   ; $6a67: $31 $11 $11
	ld   de, $8d24                                   ; $6a6a: $11 $24 $8d
	rst  $38                                         ; $6a6d: $ff
	rst  $38                                         ; $6a6e: $ff
	rst  $38                                         ; $6a6f: $ff
	db   $fd                                         ; $6a70: $fd
	and  [hl]                                        ; $6a71: $a6
	ld   de, $1111                                   ; $6a72: $11 $11 $11
	ld   de, $bf47                                   ; $6a75: $11 $47 $bf
	rst  $38                                         ; $6a78: $ff
	rst  $38                                         ; $6a79: $ff
	rst  $38                                         ; $6a7a: $ff
	db   $eb                                         ; $6a7b: $eb
	ld   h, d                                        ; $6a7c: $62
	ld   de, $1111                                   ; $6a7d: $11 $11 $11
	inc  d                                           ; $6a80: $14
	ld   l, e                                        ; $6a81: $6b
	rst  $38                                         ; $6a82: $ff
	rst  $38                                         ; $6a83: $ff
	rst  $38                                         ; $6a84: $ff
	cp   $b6                                         ; $6a85: $fe $b6
	ld   de, $1111                                   ; $6a87: $11 $11 $11
	ld   de, $cf47                                   ; $6a8a: $11 $47 $cf
	rst  $38                                         ; $6a8d: $ff
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	reti                                             ; $6a90: $d9


	ld   d, c                                        ; $6a91: $51
	ld   de, $1111                                   ; $6a92: $11 $11 $11
	dec  d                                           ; $6a95: $15
	ld   a, h                                        ; $6a96: $7c
	rst  $38                                         ; $6a97: $ff
	rst  $38                                         ; $6a98: $ff
	rst  $38                                         ; $6a99: $ff
	cp   $a5                                         ; $6a9a: $fe $a5
	ld   de, $1111                                   ; $6a9c: $11 $11 $11
	ld   de, $df58                                   ; $6a9f: $11 $58 $df
	rst  $38                                         ; $6aa2: $ff
	rst  $38                                         ; $6aa3: $ff
	rst  $38                                         ; $6aa4: $ff
	add  sp, $41                                     ; $6aa5: $e8 $41
	ld   de, $1111                                   ; $6aa7: $11 $11 $11
	dec  h                                           ; $6aaa: $25
	adc  [hl]                                        ; $6aab: $8e
	rst  $38                                         ; $6aac: $ff
	rst  $38                                         ; $6aad: $ff
	rst  $38                                         ; $6aae: $ff
	db   $fc                                         ; $6aaf: $fc
	ld   [hl], d                                     ; $6ab0: $72
	ld   de, $1111                                   ; $6ab1: $11 $11 $11
	inc  de                                          ; $6ab4: $13
	ld   a, e                                        ; $6ab5: $7b
	rst  $38                                         ; $6ab6: $ff
	rst  $38                                         ; $6ab7: $ff
	rst  $38                                         ; $6ab8: $ff
	cp   $a5                                         ; $6ab9: $fe $a5
	ld   de, $1111                                   ; $6abb: $11 $11 $11
	ld   de, $df59                                   ; $6abe: $11 $59 $df
	rst  $38                                         ; $6ac1: $ff
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	rst  ToBoot                                         ; $6ac4: $c7
	ld   hl, $1111                                   ; $6ac5: $21 $11 $11
	ld   de, $bf47                                   ; $6ac8: $11 $47 $bf
	rst  $38                                         ; $6acb: $ff
	rst  $38                                         ; $6acc: $ff
	rst  $38                                         ; $6acd: $ff
	ret  c                                           ; $6ace: $d8

	ld   b, c                                        ; $6acf: $41
	ld   de, $1111                                   ; $6ad0: $11 $11 $11
	ld   h, $9f                                      ; $6ad3: $26 $9f
	rst  $38                                         ; $6ad5: $ff
	rst  $38                                         ; $6ad6: $ff
	rst  $38                                         ; $6ad7: $ff
	ei                                               ; $6ad8: $fb
	ld   h, c                                        ; $6ad9: $61
	ld   de, $1111                                   ; $6ada: $11 $11 $11
	dec  h                                           ; $6add: $25
	adc  h                                           ; $6ade: $8c
	rst  $38                                         ; $6adf: $ff
	rst  $38                                         ; $6ae0: $ff
	rst  $38                                         ; $6ae1: $ff
	cp   $93                                         ; $6ae2: $fe $93
	ld   de, $1111                                   ; $6ae4: $11 $11 $11
	inc  de                                          ; $6ae7: $13
	ld   l, d                                        ; $6ae8: $6a
	rst  $38                                         ; $6ae9: $ff
	rst  $38                                         ; $6aea: $ff
	rst  $38                                         ; $6aeb: $ff
	rst  $38                                         ; $6aec: $ff
	or   [hl]                                        ; $6aed: $b6
	ld   bc, $1111                                   ; $6aee: $01 $11 $11
	ld   [de], a                                     ; $6af1: $12
	ld   l, c                                        ; $6af2: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6af3: $cf
	rst  $38                                         ; $6af4: $ff
	rst  $38                                         ; $6af5: $ff
	rst  $38                                         ; $6af6: $ff
	ret  c                                           ; $6af7: $d8

	ld   hl, $1111                                   ; $6af8: $21 $11 $11
	ld   de, $cf58                                   ; $6afb: $11 $58 $cf
	rst  $38                                         ; $6afe: $ff
	rst  $38                                         ; $6aff: $ff
	rst  $38                                         ; $6b00: $ff
	ld   sp, hl                                      ; $6b01: $f9
	ld   sp, $1111                                   ; $6b02: $31 $11 $11
	ld   de, $bf47                                   ; $6b05: $11 $47 $bf
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	rst  $38                                         ; $6b0a: $ff
	ei                                               ; $6b0b: $fb
	ld   d, c                                        ; $6b0c: $51
	ld   de, $1111                                   ; $6b0d: $11 $11 $11
	ld   b, [hl]                                     ; $6b10: $46
	sbc  [hl]                                        ; $6b11: $9e
	rst  $38                                         ; $6b12: $ff
	rst  $38                                         ; $6b13: $ff
	rst  $38                                         ; $6b14: $ff
	db   $fd                                         ; $6b15: $fd
	ld   [hl], c                                     ; $6b16: $71
	ld   de, $1111                                   ; $6b17: $11 $11 $11
	daa                                              ; $6b1a: $27
	xor  l                                           ; $6b1b: $ad
	rst  $38                                         ; $6b1c: $ff
	rst  $38                                         ; $6b1d: $ff
	rst  $38                                         ; $6b1e: $ff
	rst  $38                                         ; $6b1f: $ff
	add  c                                           ; $6b20: $81
	ld   de, $1111                                   ; $6b21: $11 $11 $11
	ld   d, $9c                                      ; $6b24: $16 $9c
	rst  $38                                         ; $6b26: $ff
	rst  $38                                         ; $6b27: $ff
	rst  $38                                         ; $6b28: $ff
	rst  $38                                         ; $6b29: $ff
	and  e                                           ; $6b2a: $a3
	ld   de, $1111                                   ; $6b2b: $11 $11 $11
	dec  d                                           ; $6b2e: $15
	sbc  e                                           ; $6b2f: $9b
	rst  $38                                         ; $6b30: $ff
	rst  $38                                         ; $6b31: $ff
	rst  $38                                         ; $6b32: $ff
	rst  $38                                         ; $6b33: $ff
	push bc                                          ; $6b34: $c5
	ld   de, $1111                                   ; $6b35: $11 $11 $11
	dec  h                                           ; $6b38: $25
	sbc  d                                           ; $6b39: $9a
	rst  $38                                         ; $6b3a: $ff
	rst  $38                                         ; $6b3b: $ff
	rst  $38                                         ; $6b3c: $ff
	rst  $38                                         ; $6b3d: $ff
	sub  $11                                         ; $6b3e: $d6 $11
	ld   de, $2511                                   ; $6b40: $11 $11 $25
	sbc  d                                           ; $6b43: $9a
	rst  $38                                         ; $6b44: $ff
	rst  $38                                         ; $6b45: $ff
	rst  $38                                         ; $6b46: $ff
	rst  $38                                         ; $6b47: $ff
	and  $11                                         ; $6b48: $e6 $11
	ld   de, $3411                                   ; $6b4a: $11 $11 $34
	ld   a, e                                        ; $6b4d: $7b
	rst  $38                                         ; $6b4e: $ff
	rst  $38                                         ; $6b4f: $ff
	rst  $38                                         ; $6b50: $ff
	rst  $38                                         ; $6b51: $ff
	ld   sp, hl                                      ; $6b52: $f9
	ld   de, $1211                                   ; $6b53: $11 $11 $12
	ld   d, h                                        ; $6b56: $54
	ld   l, c                                        ; $6b57: $69
	rst  $38                                         ; $6b58: $ff
	rst  $38                                         ; $6b59: $ff
	rst  $38                                         ; $6b5a: $ff
	rst  $38                                         ; $6b5b: $ff
	ld   sp, hl                                      ; $6b5c: $f9
	ld   de, $1211                                   ; $6b5d: $11 $11 $12
	ld   d, h                                        ; $6b60: $54
	ld   e, d                                        ; $6b61: $5a
	rst  $38                                         ; $6b62: $ff
	rst  $38                                         ; $6b63: $ff
	rst  $38                                         ; $6b64: $ff
	rst  $38                                         ; $6b65: $ff
	ld   a, [$1111]                                  ; $6b66: $fa $11 $11
	inc  de                                          ; $6b69: $13
	ld   h, h                                        ; $6b6a: $64
	ld   c, c                                        ; $6b6b: $49
	rst  $38                                         ; $6b6c: $ff
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	ld   a, [$1111]                                  ; $6b70: $fa $11 $11
	inc  d                                           ; $6b73: $14
	ld   h, h                                        ; $6b74: $64
	dec  sp                                          ; $6b75: $3b
	rst  $38                                         ; $6b76: $ff
	rst  $38                                         ; $6b77: $ff
	rst  $38                                         ; $6b78: $ff
	rst  $38                                         ; $6b79: $ff
	ei                                               ; $6b7a: $fb
	ld   de, $1411                                   ; $6b7b: $11 $11 $14
	ld   d, e                                        ; $6b7e: $53
	dec  hl                                          ; $6b7f: $2b
	rst  $38                                         ; $6b80: $ff
	rst  $38                                         ; $6b81: $ff
	xor  $ff                                         ; $6b82: $ee $ff
	ld   a, [$1111]                                  ; $6b84: $fa $11 $11
	ld   [de], a                                     ; $6b87: $12
	ld   b, h                                        ; $6b88: $44
	ld   l, l                                        ; $6b89: $6d
	rst  $38                                         ; $6b8a: $ff
	rst  $38                                         ; $6b8b: $ff
	rst  $28                                         ; $6b8c: $ef
	rst  $38                                         ; $6b8d: $ff
	ld   a, [$1111]                                  ; $6b8e: $fa $11 $11
	ld   de, $8d46                                   ; $6b91: $11 $46 $8d
	rst  $38                                         ; $6b94: $ff
	rst  $38                                         ; $6b95: $ff
	rst  $38                                         ; $6b96: $ff
	rst  $38                                         ; $6b97: $ff
	db   $fd                                         ; $6b98: $fd
	ld   de, $1111                                   ; $6b99: $11 $11 $11
	ld   b, a                                        ; $6b9c: $47
	ld   a, c                                        ; $6b9d: $79
	rst  $38                                         ; $6b9e: $ff
	rst  $38                                         ; $6b9f: $ff
	rst  JumpTable                                         ; $6ba0: $df
	rst  $38                                         ; $6ba1: $ff
	cp   $31                                         ; $6ba2: $fe $31
	ld   de, $2811                                   ; $6ba4: $11 $11 $28
	cp   e                                           ; $6ba7: $bb
	rst  $38                                         ; $6ba8: $ff
	rst  $38                                         ; $6ba9: $ff
	cp   $ff                                         ; $6baa: $fe $ff
	rst  $38                                         ; $6bac: $ff
	sub  c                                           ; $6bad: $91
	ld   de, $1911                                   ; $6bae: $11 $11 $19
	set  3, a                                        ; $6bb1: $cb $df
	rst  $38                                         ; $6bb3: $ff
	db   $ec                                         ; $6bb4: $ec
	rst  $38                                         ; $6bb5: $ff
	rst  $38                                         ; $6bb6: $ff
	pop  bc                                          ; $6bb7: $c1
	ld   de, $3911                                   ; $6bb8: $11 $11 $39
	cp   d                                           ; $6bbb: $ba
	sbc  l                                           ; $6bbc: $9d
	rst  $38                                         ; $6bbd: $ff
	db   $fc                                         ; $6bbe: $fc
	rst  $28                                         ; $6bbf: $ef
	rst  $38                                         ; $6bc0: $ff
	db   $f4                                         ; $6bc1: $f4
	ld   de, $1211                                   ; $6bc2: $11 $11 $12
	sbc  a                                           ; $6bc5: $9f
	xor  $ff                                         ; $6bc6: $ee $ff
	db   $fd                                         ; $6bc8: $fd
	rst  JumpTable                                         ; $6bc9: $df
	rst  $38                                         ; $6bca: $ff
	ei                                               ; $6bcb: $fb
	ld   de, $1111                                   ; $6bcc: $11 $11 $11
	adc  [hl]                                        ; $6bcf: $8e
	cp   $ef                                         ; $6bd0: $fe $ef
	db   $fd                                         ; $6bd2: $fd
	cp   [hl]                                        ; $6bd3: $be
	rst  $38                                         ; $6bd4: $ff
	rst  $38                                         ; $6bd5: $ff
	ld   h, c                                        ; $6bd6: $61
	ld   de, $9f11                                   ; $6bd7: $11 $11 $9f
	ei                                               ; $6bda: $fb
	sbc  h                                           ; $6bdb: $9c
	rst  $38                                         ; $6bdc: $ff
	db   $eb                                         ; $6bdd: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bde: $cf
	rst  $38                                         ; $6bdf: $ff
	pop  bc                                          ; $6be0: $c1
	ld   de, $1711                                   ; $6be1: $11 $11 $17
	rst  $28                                         ; $6be4: $ef
	cp   $de                                         ; $6be5: $fe $de
	db   $ec                                         ; $6be7: $ec
	adc  $ff                                         ; $6be8: $ce $ff
	ld   a, [$1111]                                  ; $6bea: $fa $11 $11
	ld   [de], a                                     ; $6bed: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bee: $cf
	db   $fd                                         ; $6bef: $fd
	sbc  $fd                                         ; $6bf0: $de $fd
	xor  e                                           ; $6bf2: $ab
	rst  $28                                         ; $6bf3: $ef
	rst  $38                                         ; $6bf4: $ff
	and  c                                           ; $6bf5: $a1
	ld   de, $7e11                                   ; $6bf6: $11 $11 $7e
	rst  $38                                         ; $6bf9: $ff
	db   $ec                                         ; $6bfa: $ec
	call $dfba                                       ; $6bfb: $cd $ba $df
	rst  $38                                         ; $6bfe: $ff
	rst  $30                                         ; $6bff: $f7
	ld   de, $1511                                   ; $6c00: $11 $11 $15
	rst  $28                                         ; $6c03: $ef
	db   $fc                                         ; $6c04: $fc
	call $8aec                                       ; $6c05: $cd $ec $8a
	rst  $38                                         ; $6c08: $ff
	rst  $38                                         ; $6c09: $ff
	ld   [hl], c                                     ; $6c0a: $71
	ld   de, $4c11                                   ; $6c0b: $11 $11 $4c
	rst  $38                                         ; $6c0e: $ff
	cp   $da                                         ; $6c0f: $fe $da
	add  a                                           ; $6c11: $87
	xor  a                                           ; $6c12: $af
	rst  $38                                         ; $6c13: $ff
	rst  $30                                         ; $6c14: $f7
	ld   de, $1711                                   ; $6c15: $11 $11 $17
	rst  $38                                         ; $6c18: $ff
	ei                                               ; $6c19: $fb
	sbc  d                                           ; $6c1a: $9a
	db   $db                                         ; $6c1b: $db
	sbc  h                                           ; $6c1c: $9c
	rst  $38                                         ; $6c1d: $ff
	rst  $38                                         ; $6c1e: $ff
	add  c                                           ; $6c1f: $81
	ld   de, $1811                                   ; $6c20: $11 $11 $18
	rst  $28                                         ; $6c23: $ef
	ei                                               ; $6c24: $fb
	call z, $9dc9                                    ; $6c25: $cc $c9 $9d
	rst  $38                                         ; $6c28: $ff
	cp   $51                                         ; $6c29: $fe $51
	ld   de, $4d11                                   ; $6c2b: $11 $11 $4d
	rst  $38                                         ; $6c2e: $ff
	cp   d                                           ; $6c2f: $ba
	cp   l                                           ; $6c30: $bd
	ret                                              ; $6c31: $c9


	call $fbff                                       ; $6c32: $cd $ff $fb
	ld   de, $1111                                   ; $6c35: $11 $11 $11
	ld   e, h                                        ; $6c38: $5c
	cp   $ab                                         ; $6c39: $fe $ab
	cp   e                                           ; $6c3b: $bb
	db   $db                                         ; $6c3c: $db
	rst  $28                                         ; $6c3d: $ef
	rst  $38                                         ; $6c3e: $ff
	db   $ec                                         ; $6c3f: $ec
	ld   sp, $1111                                   ; $6c40: $31 $11 $11
	ld   a, e                                        ; $6c43: $7b
	rst  JumpTable                                         ; $6c44: $df
	cp   [hl]                                        ; $6c45: $be
	xor  d                                           ; $6c46: $aa
	cp   h                                           ; $6c47: $bc
	rst  $38                                         ; $6c48: $ff
	rst  $38                                         ; $6c49: $ff
	ld   a, [$1121]                                  ; $6c4a: $fa $21 $11
	ld   de, $8b48                                   ; $6c4d: $11 $48 $8b
	rst  $28                                         ; $6c50: $ef
	ei                                               ; $6c51: $fb
	xor  d                                           ; $6c52: $aa
	rst  $28                                         ; $6c53: $ef
	rst  $38                                         ; $6c54: $ff
	db   $fd                                         ; $6c55: $fd
	ld   h, c                                        ; $6c56: $61
	ld   de, $2511                                   ; $6c57: $11 $11 $25
	sbc  l                                           ; $6c5a: $9d
	sbc  $cb                                         ; $6c5b: $de $cb
	xor  l                                           ; $6c5d: $ad
	rst  $38                                         ; $6c5e: $ff
	db   $ec                                         ; $6c5f: $ec
	adc  $c4                                         ; $6c60: $ce $c4
	ld   de, $1111                                   ; $6c62: $11 $11 $11
	dec  sp                                          ; $6c65: $3b
	rst  $38                                         ; $6c66: $ff
	ld   [$ff8a], a                                  ; $6c67: $ea $8a $ff
	db   $db                                         ; $6c6a: $db
	cp   a                                           ; $6c6b: $bf
	ei                                               ; $6c6c: $fb
	ld   de, $1111                                   ; $6c6d: $11 $11 $11
	ld   [de], a                                     ; $6c70: $12
	rst  JumpTable                                         ; $6c71: $df
	db   $fd                                         ; $6c72: $fd
	ld   b, a                                        ; $6c73: $47
	rst  JumpTable                                         ; $6c74: $df
	ld   a, [$ff9e]                                  ; $6c75: $fa $9e $ff
	add  c                                           ; $6c78: $81
	ld   de, $1114                                   ; $6c79: $11 $14 $11
	dec  de                                          ; $6c7c: $1b
	rst  $38                                         ; $6c7d: $ff
	db   $d3                                         ; $6c7e: $d3
	ld   l, [hl]                                     ; $6c7f: $6e
	rst  $38                                         ; $6c80: $ff
	ld   d, h                                        ; $6c81: $54
	rst  JumpTable                                         ; $6c82: $df
	db   $fd                                         ; $6c83: $fd
	ld   de, $b516                                   ; $6c84: $11 $16 $b5
	ld   de, $ff3f                                   ; $6c87: $11 $3f $ff
	ld   b, d                                        ; $6c8a: $42
	cp   a                                           ; $6c8b: $bf
	ei                                               ; $6c8c: $fb
	ld   e, c                                        ; $6c8d: $59
	rst  $38                                         ; $6c8e: $ff
	rst  $30                                         ; $6c8f: $f7
	ld   de, $2112                                   ; $6c90: $11 $12 $21
	ld   de, $fa9f                                   ; $6c93: $11 $9f $fa
	ld   l, b                                        ; $6c96: $68
	rst  $28                                         ; $6c97: $ef
	reti                                             ; $6c98: $d9


	sbc  [hl]                                        ; $6c99: $9e
	rst  $38                                         ; $6c9a: $ff
	ldh  a, [c]                                      ; $6c9b: $f2
	ld   de, $4116                                   ; $6c9c: $11 $16 $41
	ld   de, $ff5d                                   ; $6c9f: $11 $5d $ff
	sbc  c                                           ; $6ca2: $99
	db   $ec                                         ; $6ca3: $ec
	cp   e                                           ; $6ca4: $bb
	sbc  a                                           ; $6ca5: $9f
	rst  $38                                         ; $6ca6: $ff
	pop  af                                          ; $6ca7: $f1
	ld   de, $6116                                   ; $6ca8: $11 $16 $61
	ld   de, $fd4b                                   ; $6cab: $11 $4b $fd
	ld   e, c                                        ; $6cae: $59
	rst  $38                                         ; $6caf: $ff
	sub  $49                                         ; $6cb0: $d6 $49
	rst  $38                                         ; $6cb2: $ff
	push af                                          ; $6cb3: $f5
	ld   de, $3111                                   ; $6cb4: $11 $11 $31
	ld   de, $ac99                                   ; $6cb7: $11 $99 $ac
	ld   h, $ff                                      ; $6cba: $26 $ff
	ei                                               ; $6cbc: $fb
	ld   h, a                                        ; $6cbd: $67
	rst  $28                                         ; $6cbe: $ef
	db   $fc                                         ; $6cbf: $fc
	ld   d, c                                        ; $6cc0: $51
	ld   de, $1221                                   ; $6cc1: $11 $21 $12
	ld   [hl+], a                                    ; $6cc4: $22
	ld   l, e                                        ; $6cc5: $6b
	adc  $9b                                         ; $6cc6: $ce $9b
	db   $eb                                         ; $6cc8: $eb
	rst  $38                                         ; $6cc9: $ff
	sbc  d                                           ; $6cca: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ccb: $cf
	ld   sp, hl                                      ; $6ccc: $f9
	ld   sp, $3311                                   ; $6ccd: $31 $11 $33
	ld   de, $ff3b                                   ; $6cd0: $11 $3b $ff
	ld   b, d                                        ; $6cd3: $42
	cp   a                                           ; $6cd4: $bf
	rst  $38                                         ; $6cd5: $ff
	add  a                                           ; $6cd6: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cd7: $cf
	db   $fc                                         ; $6cd8: $fc
	ld   b, e                                        ; $6cd9: $43
	ld   b, [hl]                                     ; $6cda: $46
	ld   sp, $2d11                                   ; $6cdb: $31 $11 $2d
	ret  c                                           ; $6cde: $d8

	ld   [hl], $ef                                   ; $6cdf: $36 $ef
	rst  $38                                         ; $6ce1: $ff
	ld   [hl], a                                     ; $6ce2: $77
	sbc  a                                           ; $6ce3: $9f
	ld   a, [$9aa9]                                  ; $6ce4: $fa $a9 $9a
	ld   [hl-], a                                    ; $6ce7: $32
	ld   de, $1111                                   ; $6ce8: $11 $11 $11
	ccf                                              ; $6ceb: $3f
	db   $ec                                         ; $6cec: $ec
	xor  c                                           ; $6ced: $a9
	adc  $ea                                         ; $6cee: $ce $ea
	sbc  h                                           ; $6cf0: $9c
	rst  $38                                         ; $6cf1: $ff
	xor  b                                           ; $6cf2: $a8
	ld   [hl], a                                     ; $6cf3: $77
	ld   b, e                                        ; $6cf4: $43
	ld   [hl], h                                     ; $6cf5: $74
	ld   de, $1911                                   ; $6cf6: $11 $11 $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cf9: $cf
	call c, $b4ef                                    ; $6cfa: $dc $ef $b4
	ld   l, h                                        ; $6cfd: $6c
	rst  $38                                         ; $6cfe: $ff
	cp   $12                                         ; $6cff: $fe $12
	ld   d, [hl]                                     ; $6d01: $56
	sub  d                                           ; $6d02: $92
	ld   bc, $4811                                   ; $6d03: $01 $11 $48
	sub  l                                           ; $6d06: $95
	xor  a                                           ; $6d07: $af
	ei                                               ; $6d08: $fb
	jp   z, $df6a                                    ; $6d09: $ca $6a $df

	ei                                               ; $6d0c: $fb
	sbc  c                                           ; $6d0d: $99
	and  [hl]                                        ; $6d0e: $a6
	ld   b, d                                        ; $6d0f: $42
	ld   de, $4611                                   ; $6d10: $11 $11 $46
	sbc  [hl]                                        ; $6d13: $9e
	ret                                              ; $6d14: $c9


	sbc  e                                           ; $6d15: $9b
	sbc  $99                                         ; $6d16: $de $99
	xor  h                                           ; $6d18: $ac
	rst  $38                                         ; $6d19: $ff
	jp   $b63c                                       ; $6d1a: $c3 $3c $b6


	ld   hl, $1611                                   ; $6d1d: $21 $11 $16
	ld   hl, $ff5c                                   ; $6d20: $21 $5c $ff
	adc  h                                           ; $6d23: $8c
	ld   [hl], a                                     ; $6d24: $77
	db   $dd                                         ; $6d25: $dd
	db   $fd                                         ; $6d26: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d27: $cf
	cp   b                                           ; $6d28: $b8
	ld   a, b                                        ; $6d29: $78
	add  d                                           ; $6d2a: $82
	ld   [hl+], a                                    ; $6d2b: $22
	ld   de, $9227                                   ; $6d2c: $11 $27 $92
	inc  l                                           ; $6d2f: $2c
	rst  $38                                         ; $6d30: $ff
	or   $71                                         ; $6d31: $f6 $71
	sbc  a                                           ; $6d33: $9f
	rst  $38                                         ; $6d34: $ff
	halt                                             ; $6d35: $76
	ld   h, a                                        ; $6d36: $67
	and  l                                           ; $6d37: $a5
	ld   h, l                                        ; $6d38: $65
	ld   de, $3511                                   ; $6d39: $11 $11 $35
	ld   b, l                                        ; $6d3c: $45
	sbc  a                                           ; $6d3d: $9f
	db   $fd                                         ; $6d3e: $fd
	dec  h                                           ; $6d3f: $25
	sbc  [hl]                                        ; $6d40: $9e
	rst  $38                                         ; $6d41: $ff
	ld   [$73ab], a                                  ; $6d42: $ea $ab $73
	ld   e, e                                        ; $6d45: $5b
	push af                                          ; $6d46: $f5
	ld   de, $7315                                   ; $6d47: $11 $15 $73
	ld   [de], a                                     ; $6d4a: $12
	rst  $38                                         ; $6d4b: $ff
	ld   sp, hl                                      ; $6d4c: $f9
	ld   b, h                                        ; $6d4d: $44
	rst  $38                                         ; $6d4e: $ff
	db   $fd                                         ; $6d4f: $fd
	ld   a, [hl]                                     ; $6d50: $7e
	xor  d                                           ; $6d51: $aa
	xor  d                                           ; $6d52: $aa
	jp   z, $1184                                    ; $6d53: $ca $84 $11

	ld   de, $8813                                   ; $6d56: $11 $13 $88
	sbc  e                                           ; $6d59: $9b
	db   $fd                                         ; $6d5a: $fd
	or   a                                           ; $6d5b: $b7
	ld   l, a                                        ; $6d5c: $6f
	rst  $38                                         ; $6d5d: $ff
	db   $d3                                         ; $6d5e: $d3
	dec  [hl]                                        ; $6d5f: $35
	rst  JumpTable                                         ; $6d60: $df
	rst  $38                                         ; $6d61: $ff
	add  d                                           ; $6d62: $82
	ld   de, $5d11                                   ; $6d63: $11 $11 $5d
	or   d                                           ; $6d66: $b2
	inc  de                                          ; $6d67: $13
	xor  a                                           ; $6d68: $af
	set  7, a                                        ; $6d69: $cb $ff
	db   $ec                                         ; $6d6b: $ec
	ld   d, d                                        ; $6d6c: $52
	xor  [hl]                                        ; $6d6d: $ae
	cp   $bf                                         ; $6d6e: $fe $bf
	sub  c                                           ; $6d70: $91
	ld   de, $4521                                   ; $6d71: $11 $21 $45
	dec  d                                           ; $6d74: $15
	ld   [hl], $67                                   ; $6d75: $36 $67
	rst  $28                                         ; $6d77: $ef
	db   $ed                                         ; $6d78: $ed
	jp   c, $ed89                                    ; $6d79: $da $89 $ed

	cp   e                                           ; $6d7c: $bb
	db   $ec                                         ; $6d7d: $ec
	ret  z                                           ; $6d7e: $c8

	ld   d, [hl]                                     ; $6d7f: $56
	ld   de, $1111                                   ; $6d80: $11 $11 $11
	inc  l                                           ; $6d83: $2c
	adc  $a7                                         ; $6d84: $ce $a7
	sbc  e                                           ; $6d86: $9b
	rst  JumpTable                                         ; $6d87: $df
	ei                                               ; $6d88: $fb
	call z, $99d6                                    ; $6d89: $cc $d6 $99
	xor  a                                           ; $6d8c: $af
	db   $fd                                         ; $6d8d: $fd
	ld   d, c                                        ; $6d8e: $51
	ld   de, $1211                                   ; $6d8f: $11 $11 $12
	ld   b, [hl]                                     ; $6d92: $46
	xor  a                                           ; $6d93: $af
	or   $38                                         ; $6d94: $f6 $38
	rst  $38                                         ; $6d96: $ff
	db   $ed                                         ; $6d97: $ed
	adc  b                                           ; $6d98: $88
	cp   l                                           ; $6d99: $bd
	ret                                              ; $6d9a: $c9


	adc  [hl]                                        ; $6d9b: $8e
	cp   $85                                         ; $6d9c: $fe $85
	ld   de, $1511                                   ; $6d9e: $11 $11 $15
	cp   b                                           ; $6da1: $b8
	ld   b, l                                        ; $6da2: $45
	ld   c, h                                        ; $6da3: $4c
	ret                                              ; $6da4: $c9


	rst  $38                                         ; $6da5: $ff
	adc  $f9                                         ; $6da6: $ce $f9
	scf                                              ; $6da8: $37
	rst  $38                                         ; $6da9: $ff
	call z, Call_0ae_64a7                            ; $6daa: $cc $a7 $64
	ld   d, c                                        ; $6dad: $51
	ld   de, $1131                                   ; $6dae: $11 $31 $11
	sbc  a                                           ; $6db1: $9f
	rst  $30                                         ; $6db2: $f7
	inc  d                                           ; $6db3: $14
	rst  $38                                         ; $6db4: $ff
	ld   hl, sp+$6d                                  ; $6db5: $f8 $6d
	rst  JumpTable                                         ; $6db7: $df
	sub  e                                           ; $6db8: $93
	sbc  a                                           ; $6db9: $9f
	ei                                               ; $6dba: $fb
	inc  de                                          ; $6dbb: $13
	ld   b, l                                        ; $6dbc: $45
	ld   de, $9f11                                   ; $6dbd: $11 $11 $9f
	sub  c                                           ; $6dc0: $91
	dec  d                                           ; $6dc1: $15
	rst  $38                                         ; $6dc2: $ff
	ei                                               ; $6dc3: $fb
	ld   l, a                                        ; $6dc4: $6f
	ret  c                                           ; $6dc5: $d8

	sub  l                                           ; $6dc6: $95
	adc  $bf                                         ; $6dc7: $ce $bf
	cp   d                                           ; $6dc9: $ba
	and  $11                                         ; $6dca: $e6 $11
	ld   h, a                                        ; $6dcc: $67
	ld   de, $5d11                                   ; $6dcd: $11 $11 $5d
	ret  z                                           ; $6dd0: $c8

	jp   z, $af1b                                    ; $6dd1: $ca $1b $af

	rst  $38                                         ; $6dd4: $ff
	push af                                          ; $6dd5: $f5
	scf                                              ; $6dd6: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dd7: $cf
	cp   e                                           ; $6dd8: $bb
	rst  $38                                         ; $6dd9: $ff
	push hl                                          ; $6dda: $e5
	ld   de, $9c12                                   ; $6ddb: $11 $12 $9c
	ld   de, $6f11                                   ; $6dde: $11 $11 $6f
	cp   b                                           ; $6de1: $b8
	rst  $38                                         ; $6de2: $ff
	call z, $bb74                                    ; $6de3: $cc $74 $bb
	rst  $38                                         ; $6de6: $ff
	db   $fd                                         ; $6de7: $fd
	halt                                             ; $6de8: $76
	jr   z, @-$17                                    ; $6de9: $28 $e7

	ld   d, e                                        ; $6deb: $53
	ld   de, $1111                                   ; $6dec: $11 $11 $11
	rst  $38                                         ; $6def: $ff
	or   c                                           ; $6df0: $b1
	dec  e                                           ; $6df1: $1d
	rst  $38                                         ; $6df2: $ff
	add  sp, -$31                                    ; $6df3: $e8 $cf
	ld   hl, sp+$23                                  ; $6df5: $f8 $23
	rst  JumpTable                                         ; $6df7: $df
	rst  $38                                         ; $6df8: $ff
	ld   [hl], a                                     ; $6df9: $77
	sub  l                                           ; $6dfa: $95
	ld   de, $7625                                   ; $6dfb: $11 $25 $76
	ld   de, $e729                                   ; $6dfe: $11 $29 $e7
	jr   z, @+$01                                    ; $6e01: $28 $ff

	ld   hl, sp+$19                                  ; $6e03: $f8 $19
	xor  e                                           ; $6e05: $ab
	rst  $38                                         ; $6e06: $ff
	ld   [hl], h                                     ; $6e07: $74
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e08: $cf
	sbc  d                                           ; $6e09: $9a
	xor  c                                           ; $6e0a: $a9
	ld   h, e                                        ; $6e0b: $63
	ld   hl, $7315                                   ; $6e0c: $21 $15 $73
	ld   de, $c6ce                                   ; $6e0f: $11 $ce $c6
	ld   l, d                                        ; $6e12: $6a
	sbc  a                                           ; $6e13: $9f
	db   $fd                                         ; $6e14: $fd
	ld   e, c                                        ; $6e15: $59
	db   $fc                                         ; $6e16: $fc
	xor  d                                           ; $6e17: $aa
	rst  $28                                         ; $6e18: $ef
	cp   e                                           ; $6e19: $bb
	reti                                             ; $6e1a: $d9


	ld   b, l                                        ; $6e1b: $45
	ld   de, $3411                                   ; $6e1c: $11 $11 $34
	add  l                                           ; $6e1f: $85
	inc  de                                          ; $6e20: $13
	adc  b                                           ; $6e21: $88
	adc  e                                           ; $6e22: $8b
	cp   $79                                         ; $6e23: $fe $79
	ld   [hl], $ef                                   ; $6e25: $36 $ef
	ld   a, [$ff7b]                                  ; $6e27: $fa $7b $ff
	sub  h                                           ; $6e2a: $94
	ld   c, b                                        ; $6e2b: $48
	db   $ed                                         ; $6e2c: $ed
	ld   de, $3611                                   ; $6e2d: $11 $11 $36
	xor  c                                           ; $6e30: $a9
	ld   [hl], $33                                   ; $6e31: $36 $33
	xor  a                                           ; $6e33: $af
	push af                                          ; $6e34: $f5
	cp   l                                           ; $6e35: $bd
	ld   l, a                                        ; $6e36: $6f
	ld   a, [$fe7d]                                  ; $6e37: $fa $7d $fe
	ld   c, c                                        ; $6e3a: $49
	ld   a, d                                        ; $6e3b: $7a
	ld   hl, sp+$11                                  ; $6e3c: $f8 $11
	inc  d                                           ; $6e3e: $14
	ld   de, $6643                                   ; $6e3f: $11 $43 $66
	adc  e                                           ; $6e42: $8b
	inc  de                                          ; $6e43: $13
	cp   h                                           ; $6e44: $bc
	ld   sp, hl                                      ; $6e45: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e46: $cf
	add  hl, hl                                      ; $6e47: $29
	ei                                               ; $6e48: $fb
	ld   e, a                                        ; $6e49: $5f
	ld   sp, hl                                      ; $6e4a: $f9
	ld   e, [hl]                                     ; $6e4b: $5e
	or   $46                                         ; $6e4c: $f6 $46
	ld   hl, $1164                                   ; $6e4e: $21 $64 $11
	inc  [hl]                                        ; $6e51: $34
	rla                                              ; $6e52: $17
	adc  $81                                         ; $6e53: $ce $81
	ld   b, e                                        ; $6e55: $43
	rst  JumpTable                                         ; $6e56: $df
	push af                                          ; $6e57: $f5
	dec  d                                           ; $6e58: $15
	rst  $38                                         ; $6e59: $ff
	rst  $30                                         ; $6e5a: $f7
	ld   l, d                                        ; $6e5b: $6a
	cp   $62                                         ; $6e5c: $fe $62
	ld   e, [hl]                                     ; $6e5e: $5e
	push bc                                          ; $6e5f: $c5
	ld   de, $8114                                   ; $6e60: $11 $14 $81
	rla                                              ; $6e63: $17
	rst  $38                                         ; $6e64: $ff
	ld   h, c                                        ; $6e65: $61
	add  hl, de                                      ; $6e66: $19
	rst  $38                                         ; $6e67: $ff
	and  [hl]                                        ; $6e68: $a6
	ld   e, l                                        ; $6e69: $5d
	rst  $38                                         ; $6e6a: $ff
	ld   [hl], h                                     ; $6e6b: $74
	ld   l, h                                        ; $6e6c: $6c
	rst  $38                                         ; $6e6d: $ff
	sub  [hl]                                        ; $6e6e: $96
	ld   h, a                                        ; $6e6f: $67
	add  d                                           ; $6e70: $82
	ld   de, $b617                                   ; $6e71: $11 $17 $b6
	ld   de, $5549                                   ; $6e74: $11 $49 $55
	dec  d                                           ; $6e77: $15
	rst  $38                                         ; $6e78: $ff
	db   $d3                                         ; $6e79: $d3
	ld   [de], a                                     ; $6e7a: $12
	rst  $38                                         ; $6e7b: $ff
	rst  $38                                         ; $6e7c: $ff
	jr   c, @-$20                                    ; $6e7d: $38 $de

	sub  a                                           ; $6e7f: $97
	sub  a                                           ; $6e80: $97
	xor  h                                           ; $6e81: $ac
	ld   h, h                                        ; $6e82: $64
	ld   de, $3624                                   ; $6e83: $11 $24 $36
	add  a                                           ; $6e86: $87
	ld   b, c                                        ; $6e87: $41
	inc  d                                           ; $6e88: $14
	rst  JumpTable                                         ; $6e89: $df
	rst  $30                                         ; $6e8a: $f7
	ld   a, d                                        ; $6e8b: $7a
	ld   a, [hl]                                     ; $6e8c: $7e
	db   $eb                                         ; $6e8d: $eb
	sbc  h                                           ; $6e8e: $9c
	rst  $38                                         ; $6e8f: $ff
	or   $13                                         ; $6e90: $f6 $13
	xor  a                                           ; $6e92: $af
	and  $11                                         ; $6e93: $e6 $11
	dec  [hl]                                        ; $6e95: $35
	ld   sp, $9a12                                   ; $6e96: $31 $12 $9a
	sub  a                                           ; $6e99: $97
	ld   b, c                                        ; $6e9a: $41
	dec  l                                           ; $6e9b: $2d
	db   $fd                                         ; $6e9c: $fd
	and  [hl]                                        ; $6e9d: $a6
	ld   c, [hl]                                     ; $6e9e: $4e
	cp   $c8                                         ; $6e9f: $fe $c8
	xor  l                                           ; $6ea1: $ad
	rst  $28                                         ; $6ea2: $ef
	ld   h, e                                        ; $6ea3: $63
	ld   a, l                                        ; $6ea4: $7d
	push bc                                          ; $6ea5: $c5
	ld   de, $6513                                   ; $6ea6: $11 $13 $65
	inc  h                                           ; $6ea9: $24
	adc  c                                           ; $6eaa: $89
	ld   b, c                                        ; $6eab: $41
	rla                                              ; $6eac: $17
	cp   a                                           ; $6ead: $bf
	ei                                               ; $6eae: $fb
	ld   e, e                                        ; $6eaf: $5b
	db   $ec                                         ; $6eb0: $ec
	call z, $caef                                    ; $6eb1: $cc $ef $ca
	or   [hl]                                        ; $6eb4: $b6
	ld   b, a                                        ; $6eb5: $47
	xor  a                                           ; $6eb6: $af
	rst  $20                                         ; $6eb7: $e7
	ld   de, $9517                                   ; $6eb8: $11 $17 $95
	ld   [hl-], a                                    ; $6ebb: $32
	ld   l, c                                        ; $6ebc: $69
	ld   de, $ff27                                   ; $6ebd: $11 $27 $ff
	and  l                                           ; $6ec0: $a5
	ld   [$effb], sp                                 ; $6ec1: $08 $fb $ef
	ld   l, e                                        ; $6ec4: $6b
	rst  $30                                         ; $6ec5: $f7
	adc  c                                           ; $6ec6: $89
	ld   l, e                                        ; $6ec7: $6b
	call z, $11c4                                    ; $6ec8: $cc $c4 $11
	ld   [hl], $77                                   ; $6ecb: $36 $77
	ld   h, h                                        ; $6ecd: $64
	inc  h                                           ; $6ece: $24
	ld   hl, $b75b                                   ; $6ecf: $21 $5b $b7
	ld   e, c                                        ; $6ed2: $59
	sbc  l                                           ; $6ed3: $9d
	ld   sp, hl                                      ; $6ed4: $f9
	call z, $aadc                                    ; $6ed5: $cc $dc $aa
	adc  h                                           ; $6ed8: $8c
	ret  c                                           ; $6ed9: $d8

	ld   d, a                                        ; $6eda: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6edb: $cf
	add  d                                           ; $6edc: $82
	ld   hl, $4435                                   ; $6edd: $21 $35 $44
	ld   d, [hl]                                     ; $6ee0: $56
	and  e                                           ; $6ee1: $a3
	rla                                              ; $6ee2: $17
	ld   [hl-], a                                    ; $6ee3: $32
	xor  a                                           ; $6ee4: $af
	ei                                               ; $6ee5: $fb
	ld   [hl], a                                     ; $6ee6: $77
	ld   l, b                                        ; $6ee7: $68
	db   $dd                                         ; $6ee8: $dd
	sbc  l                                           ; $6ee9: $9d
	rst  $38                                         ; $6eea: $ff
	or   [hl]                                        ; $6eeb: $b6
	ld   b, h                                        ; $6eec: $44
	ld   a, [hl]                                     ; $6eed: $7e
	rst  ToBoot                                         ; $6eee: $c7
	ld   b, d                                        ; $6eef: $42
	inc  hl                                          ; $6ef0: $23
	ld   a, c                                        ; $6ef1: $79
	ld   d, d                                        ; $6ef2: $52
	ld   [de], a                                     ; $6ef3: $12
	ld   b, [hl]                                     ; $6ef4: $46
	add  a                                           ; $6ef5: $87
	jr   c, @+$01                                    ; $6ef6: $38 $ff

	or   [hl]                                        ; $6ef8: $b6
	scf                                              ; $6ef9: $37
	rst  $28                                         ; $6efa: $ef
	ld   a, [$bf67]                                  ; $6efb: $fa $67 $bf
	xor  c                                           ; $6efe: $a9
	xor  b                                           ; $6eff: $a8
	xor  c                                           ; $6f00: $a9
	ld   [hl], l                                     ; $6f01: $75
	inc  [hl]                                        ; $6f02: $34
	inc  hl                                          ; $6f03: $23
	ld   l, b                                        ; $6f04: $68
	add  d                                           ; $6f05: $82
	ld   de, $ed28                                   ; $6f06: $11 $28 $ed
	sub  l                                           ; $6f09: $95
	inc  h                                           ; $6f0a: $24
	adc  c                                           ; $6f0b: $89
	xor  a                                           ; $6f0c: $af
	cp   $dc                                         ; $6f0d: $fe $dc
	jp   z, Jump_0ae_7988                            ; $6f0f: $ca $88 $79

	rst  JumpTable                                         ; $6f12: $df
	push de                                          ; $6f13: $d5
	inc  de                                          ; $6f14: $13
	ld   d, a                                        ; $6f15: $57
	halt                                             ; $6f16: $76
	ld   d, l                                        ; $6f17: $55
	ld   d, e                                        ; $6f18: $53
	ld   de, $cd47                                   ; $6f19: $11 $47 $cd
	adc  c                                           ; $6f1c: $89
	add  e                                           ; $6f1d: $83
	ld   c, l                                        ; $6f1e: $4d
	rst  $28                                         ; $6f1f: $ef
	ret                                              ; $6f20: $c9


	cp   b                                           ; $6f21: $b8
	db   $ed                                         ; $6f22: $ed
	sbc  d                                           ; $6f23: $9a
	sbc  h                                           ; $6f24: $9c
	or   h                                           ; $6f25: $b4
	ld   e, b                                        ; $6f26: $58
	ld   a, b                                        ; $6f27: $78
	ld   d, d                                        ; $6f28: $52
	inc  de                                          ; $6f29: $13
	sbc  d                                           ; $6f2a: $9a
	ld   h, h                                        ; $6f2b: $64
	ld   de, $b948                                   ; $6f2c: $11 $48 $b9
	ld   h, [hl]                                     ; $6f2f: $66
	ld   l, e                                        ; $6f30: $6b
	db   $fc                                         ; $6f31: $fc
	halt                                             ; $6f32: $76
	xor  l                                           ; $6f33: $ad
	set  1, l                                        ; $6f34: $cb $cd
	jp   c, $69a8                                    ; $6f36: $da $a8 $69

	cp   b                                           ; $6f39: $b8
	ld   h, [hl]                                     ; $6f3a: $66
	ld   d, h                                        ; $6f3b: $54
	ld   b, e                                        ; $6f3c: $43
	ld   [hl], $78                                   ; $6f3d: $36 $78
	add  h                                           ; $6f3f: $84
	ld   [de], a                                     ; $6f40: $12
	ld   a, d                                        ; $6f41: $7a
	ld   [hl], e                                     ; $6f42: $73
	ld   c, e                                        ; $6f43: $4b
	ld   a, [$9f8c]                                  ; $6f44: $fa $8c $9f
	jp   z, $ed87                                    ; $6f47: $ca $87 $ed

	sub  [hl]                                        ; $6f4a: $96
	ld   l, b                                        ; $6f4b: $68
	xor  e                                           ; $6f4c: $ab
	sub  l                                           ; $6f4d: $95
	ld   h, l                                        ; $6f4e: $65
	ld   l, d                                        ; $6f4f: $6a
	ld   h, e                                        ; $6f50: $63
	ld   hl, $516b                                   ; $6f51: $21 $6b $51
	dec  [hl]                                        ; $6f54: $35
	call Call_0ae_7d96                               ; $6f55: $cd $96 $7d
	add  $69                                         ; $6f58: $c6 $69
	db   $dd                                         ; $6f5a: $dd
	jp   z, $fe6b                                    ; $6f5b: $ca $6b $fe

	ld   h, l                                        ; $6f5e: $65
	sbc  c                                           ; $6f5f: $99
	halt                                             ; $6f60: $76
	ld   h, [hl]                                     ; $6f61: $66
	ld   l, c                                        ; $6f62: $69
	ld   h, c                                        ; $6f63: $61
	dec  [hl]                                        ; $6f64: $35
	inc  [hl]                                        ; $6f65: $34
	ld   [hl], a                                     ; $6f66: $77
	ld   h, l                                        ; $6f67: $65
	ld   b, [hl]                                     ; $6f68: $46
	adc  h                                           ; $6f69: $8c
	and  e                                           ; $6f6a: $a3
	ld   e, c                                        ; $6f6b: $59
	cp   a                                           ; $6f6c: $bf
	ret  c                                           ; $6f6d: $d8

	adc  b                                           ; $6f6e: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f6f: $cf
	xor  b                                           ; $6f70: $a8
	ld   a, e                                        ; $6f71: $7b
	jp   c, Jump_0ae_4675                            ; $6f72: $da $75 $46

	and  a                                           ; $6f75: $a7
	ld   a, b                                        ; $6f76: $78
	ld   h, l                                        ; $6f77: $65
	ld   b, h                                        ; $6f78: $44
	ld   b, e                                        ; $6f79: $43
	dec  [hl]                                        ; $6f7a: $35
	ld   h, [hl]                                     ; $6f7b: $66
	sbc  c                                           ; $6f7c: $99
	adc  d                                           ; $6f7d: $8a
	bit  5, b                                        ; $6f7e: $cb $68
	cp   c                                           ; $6f80: $b9
	db   $ed                                         ; $6f81: $ed
	ld   h, l                                        ; $6f82: $65
	sbc  [hl]                                        ; $6f83: $9e
	db   $ec                                         ; $6f84: $ec
	xor  c                                           ; $6f85: $a9
	cp   e                                           ; $6f86: $bb
	add  a                                           ; $6f87: $87
	ld   d, h                                        ; $6f88: $54
	adc  b                                           ; $6f89: $88
	ld   [hl], a                                     ; $6f8a: $77
	ld   h, h                                        ; $6f8b: $64
	inc  de                                          ; $6f8c: $13
	ld   d, l                                        ; $6f8d: $55
	ld   a, d                                        ; $6f8e: $7a
	sub  [hl]                                        ; $6f8f: $96
	ld   d, d                                        ; $6f90: $52
	ld   h, $ff                                      ; $6f91: $26 $ff
	ld   h, e                                        ; $6f93: $63
	cp   l                                           ; $6f94: $bd
	sbc  $63                                         ; $6f95: $de $63
	ld   a, l                                        ; $6f97: $7d
	cp   $a7                                         ; $6f98: $fe $a7
	ld   d, a                                        ; $6f9a: $57
	cp   c                                           ; $6f9b: $b9
	ld   [hl], a                                     ; $6f9c: $77
	ld   d, h                                        ; $6f9d: $54
	ld   a, b                                        ; $6f9e: $78
	ld   h, e                                        ; $6f9f: $63
	ld   de, $7937                                   ; $6fa0: $11 $37 $79
	halt                                             ; $6fa3: $76
	ld   d, e                                        ; $6fa4: $53
	ld   l, e                                        ; $6fa5: $6b
	db   $fd                                         ; $6fa6: $fd
	ld   d, h                                        ; $6fa7: $54
	ld   l, e                                        ; $6fa8: $6b
	db   $ed                                         ; $6fa9: $ed
	or   [hl]                                        ; $6faa: $b6
	sbc  a                                           ; $6fab: $9f
	ei                                               ; $6fac: $fb
	add  h                                           ; $6fad: $84
	ld   e, d                                        ; $6fae: $5a
	jp   z, $3564                                    ; $6faf: $ca $64 $35

	add  a                                           ; $6fb2: $87
	add  [hl]                                        ; $6fb3: $86
	ld   b, h                                        ; $6fb4: $44
	inc  h                                           ; $6fb5: $24
	sub  a                                           ; $6fb6: $97
	ld   b, [hl]                                     ; $6fb7: $46
	halt                                             ; $6fb8: $76
	cp   e                                           ; $6fb9: $bb
	and  a                                           ; $6fba: $a7
	ld   a, b                                        ; $6fbb: $78
	rst  JumpTable                                         ; $6fbc: $df
	add  $58                                         ; $6fbd: $c6 $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fbf: $cf
	ld   hl, sp+$35                                  ; $6fc0: $f8 $35
	adc  d                                           ; $6fc2: $8a
	cp   c                                           ; $6fc3: $b9
	ld   [hl], a                                     ; $6fc4: $77
	sub  a                                           ; $6fc5: $97
	ld   [hl-], a                                    ; $6fc6: $32
	ld   b, l                                        ; $6fc7: $45
	ld   l, c                                        ; $6fc8: $69
	ld   [hl], l                                     ; $6fc9: $75
	ld   d, [hl]                                     ; $6fca: $56
	inc  sp                                          ; $6fcb: $33
	ld   [hl], a                                     ; $6fcc: $77
	xor  l                                           ; $6fcd: $ad
	and  a                                           ; $6fce: $a7
	ld   a, c                                        ; $6fcf: $79
	xor  d                                           ; $6fd0: $aa
	ld   a, c                                        ; $6fd1: $79
	xor  [hl]                                        ; $6fd2: $ae
	db   $fc                                         ; $6fd3: $fc
	adc  b                                           ; $6fd4: $88
	cp   c                                           ; $6fd5: $b9
	cp   d                                           ; $6fd6: $ba
	ld   d, [hl]                                     ; $6fd7: $56
	jp   z, $2463                                    ; $6fd8: $ca $63 $24

	sbc  e                                           ; $6fdb: $9b
	ld   h, e                                        ; $6fdc: $63
	inc  h                                           ; $6fdd: $24
	ld   h, a                                        ; $6fde: $67
	ld   [hl], a                                     ; $6fdf: $77
	ld   h, l                                        ; $6fe0: $65
	ld   l, b                                        ; $6fe1: $68
	bit  0, h                                        ; $6fe2: $cb $44
	xor  e                                           ; $6fe4: $ab
	rst  $38                                         ; $6fe5: $ff
	sub  h                                           ; $6fe6: $94
	adc  e                                           ; $6fe7: $8b
	cp   l                                           ; $6fe8: $bd
	cp   b                                           ; $6fe9: $b8
	ld   a, h                                        ; $6fea: $7c
	ret  z                                           ; $6feb: $c8

	ld   [hl], a                                     ; $6fec: $77
	ld   d, l                                        ; $6fed: $55
	xor  d                                           ; $6fee: $aa
	ld   h, l                                        ; $6fef: $65
	ld   d, e                                        ; $6ff0: $53
	ld   b, [hl]                                     ; $6ff1: $46
	ld   h, [hl]                                     ; $6ff2: $66
	ld   [hl], l                                     ; $6ff3: $75
	ld   [hl], $76                                   ; $6ff4: $36 $76
	adc  c                                           ; $6ff6: $89
	adc  c                                           ; $6ff7: $89
	xor  c                                           ; $6ff8: $a9
	sbc  d                                           ; $6ff9: $9a
	xor  c                                           ; $6ffa: $a9
	xor  h                                           ; $6ffb: $ac
	jp   z, $8ba9                                    ; $6ffc: $ca $a9 $8b

	cp   c                                           ; $6fff: $b9
	adc  d                                           ; $7000: $8a
	add  a                                           ; $7001: $87
	adc  b                                           ; $7002: $88
	ld   h, l                                        ; $7003: $65
	ld   [hl], a                                     ; $7004: $77
	ld   d, h                                        ; $7005: $54
	dec  [hl]                                        ; $7006: $35
	adc  b                                           ; $7007: $88
	add  l                                           ; $7008: $85
	ld   b, l                                        ; $7009: $45
	ld   h, [hl]                                     ; $700a: $66
	ld   [hl], a                                     ; $700b: $77
	adc  d                                           ; $700c: $8a
	xor  c                                           ; $700d: $a9
	ld   a, c                                        ; $700e: $79
	sbc  l                                           ; $700f: $9d
	db   $db                                         ; $7010: $db
	ret                                              ; $7011: $c9


	add  a                                           ; $7012: $87
	ld   a, d                                        ; $7013: $7a
	xor  h                                           ; $7014: $ac
	cp   b                                           ; $7015: $b8
	ld   [hl], l                                     ; $7016: $75
	ld   l, b                                        ; $7017: $68
	xor  b                                           ; $7018: $a8
	halt                                             ; $7019: $76
	halt                                             ; $701a: $76
	ld   sp, $8b25                                   ; $701b: $31 $25 $8b
	and  [hl]                                        ; $701e: $a6
	halt                                             ; $701f: $76
	ld   b, [hl]                                     ; $7020: $46
	ld   [hl], a                                     ; $7021: $77
	xor  l                                           ; $7022: $ad
	cp   b                                           ; $7023: $b8
	sbc  b                                           ; $7024: $98
	adc  d                                           ; $7025: $8a
	cp   c                                           ; $7026: $b9
	xor  h                                           ; $7027: $ac
	res  2, a                                        ; $7028: $cb $97
	ld   l, c                                        ; $702a: $69
	jp   z, Jump_0ae_7787                            ; $702b: $ca $87 $77

	halt                                             ; $702e: $76
	ld   h, [hl]                                     ; $702f: $66
	ld   [hl], a                                     ; $7030: $77
	ld   b, h                                        ; $7031: $44
	ld   d, [hl]                                     ; $7032: $56
	adc  b                                           ; $7033: $88
	ld   [hl], l                                     ; $7034: $75
	ld   l, b                                        ; $7035: $68
	ld   h, [hl]                                     ; $7036: $66
	ld   a, b                                        ; $7037: $78
	cp   e                                           ; $7038: $bb
	xor  b                                           ; $7039: $a8
	ld   [hl], a                                     ; $703a: $77
	adc  d                                           ; $703b: $8a
	cp   d                                           ; $703c: $ba
	call $86ca                                       ; $703d: $cd $ca $86
	ld   a, c                                        ; $7040: $79
	xor  c                                           ; $7041: $a9
	adc  c                                           ; $7042: $89
	add  a                                           ; $7043: $87
	ld   h, l                                        ; $7044: $65
	ld   l, b                                        ; $7045: $68
	ld   [hl], a                                     ; $7046: $77
	ld   h, l                                        ; $7047: $65
	ld   h, [hl]                                     ; $7048: $66
	ld   h, [hl]                                     ; $7049: $66
	ld   h, [hl]                                     ; $704a: $66
	ld   l, c                                        ; $704b: $69
	sbc  c                                           ; $704c: $99
	add  a                                           ; $704d: $87
	adc  d                                           ; $704e: $8a
	sub  a                                           ; $704f: $97
	ld   l, c                                        ; $7050: $69
	xor  e                                           ; $7051: $ab
	jp   z, $9989                                    ; $7052: $ca $89 $99

	xor  c                                           ; $7055: $a9
	adc  c                                           ; $7056: $89
	sbc  b                                           ; $7057: $98
	halt                                             ; $7058: $76
	ld   d, [hl]                                     ; $7059: $56
	ld   [hl], a                                     ; $705a: $77
	adc  c                                           ; $705b: $89
	ld   [hl], a                                     ; $705c: $77
	ld   d, l                                        ; $705d: $55
	ld   h, [hl]                                     ; $705e: $66
	ld   [hl], a                                     ; $705f: $77
	ld   a, c                                        ; $7060: $79
	sub  [hl]                                        ; $7061: $96
	ld   d, [hl]                                     ; $7062: $56
	adc  c                                           ; $7063: $89
	sbc  c                                           ; $7064: $99
	sbc  d                                           ; $7065: $9a
	sbc  b                                           ; $7066: $98
	sbc  b                                           ; $7067: $98
	adc  d                                           ; $7068: $8a
	res  2, a                                        ; $7069: $cb $97
	ld   a, c                                        ; $706b: $79
	jp   z, Jump_0ae_7887                            ; $706c: $ca $87 $78

	adc  b                                           ; $706f: $88
	ld   h, l                                        ; $7070: $65
	ld   a, b                                        ; $7071: $78
	sbc  b                                           ; $7072: $98
	ld   [hl], l                                     ; $7073: $75
	ld   b, a                                        ; $7074: $47
	add  a                                           ; $7075: $87
	ld   h, [hl]                                     ; $7076: $66
	ld   l, b                                        ; $7077: $68
	sbc  b                                           ; $7078: $98
	ld   a, b                                        ; $7079: $78
	ld   [hl], a                                     ; $707a: $77
	sbc  c                                           ; $707b: $99
	sbc  c                                           ; $707c: $99
	xor  b                                           ; $707d: $a8
	ld   a, b                                        ; $707e: $78
	xor  d                                           ; $707f: $aa
	sbc  b                                           ; $7080: $98
	adc  d                                           ; $7081: $8a
	xor  d                                           ; $7082: $aa
	sbc  c                                           ; $7083: $99
	adc  b                                           ; $7084: $88
	sbc  b                                           ; $7085: $98
	sbc  b                                           ; $7086: $98
	ld   h, [hl]                                     ; $7087: $66
	ld   a, b                                        ; $7088: $78
	ld   [hl], a                                     ; $7089: $77
	ld   h, l                                        ; $708a: $65
	ld   a, c                                        ; $708b: $79
	sub  a                                           ; $708c: $97
	ld   a, b                                        ; $708d: $78
	sbc  d                                           ; $708e: $9a
	ld   [hl], l                                     ; $708f: $75
	ld   a, c                                        ; $7090: $79
	sbc  c                                           ; $7091: $99
	halt                                             ; $7092: $76
	sbc  e                                           ; $7093: $9b
	xor  b                                           ; $7094: $a8
	ld   a, c                                        ; $7095: $79
	xor  d                                           ; $7096: $aa
	add  a                                           ; $7097: $87
	ld   a, c                                        ; $7098: $79
	adc  b                                           ; $7099: $88
	sbc  c                                           ; $709a: $99
	sbc  b                                           ; $709b: $98
	halt                                             ; $709c: $76
	ld   l, b                                        ; $709d: $68
	sbc  c                                           ; $709e: $99
	add  a                                           ; $709f: $87
	ld   h, a                                        ; $70a0: $67
	add  [hl]                                        ; $70a1: $86
	ld   h, a                                        ; $70a2: $67
	sbc  c                                           ; $70a3: $99
	sub  a                                           ; $70a4: $97
	ld   h, a                                        ; $70a5: $67
	ld   a, b                                        ; $70a6: $78
	sbc  b                                           ; $70a7: $98
	ld   a, b                                        ; $70a8: $78
	adc  b                                           ; $70a9: $88
	sbc  b                                           ; $70aa: $98
	ld   l, b                                        ; $70ab: $68
	sbc  c                                           ; $70ac: $99
	adc  c                                           ; $70ad: $89
	ld   a, b                                        ; $70ae: $78
	sbc  c                                           ; $70af: $99
	ld   [hl], a                                     ; $70b0: $77
	ld   a, b                                        ; $70b1: $78
	adc  c                                           ; $70b2: $89
	adc  b                                           ; $70b3: $88
	adc  c                                           ; $70b4: $89
	sbc  c                                           ; $70b5: $99
	halt                                             ; $70b6: $76
	ld   a, b                                        ; $70b7: $78
	sbc  b                                           ; $70b8: $98
	add  a                                           ; $70b9: $87
	ld   [hl], a                                     ; $70ba: $77
	ld   [hl], a                                     ; $70bb: $77
	ld   a, c                                        ; $70bc: $79
	sbc  b                                           ; $70bd: $98
	ld   [hl], a                                     ; $70be: $77
	ld   a, b                                        ; $70bf: $78
	sbc  c                                           ; $70c0: $99
	add  a                                           ; $70c1: $87
	adc  b                                           ; $70c2: $88
	sbc  b                                           ; $70c3: $98
	ld   [hl], a                                     ; $70c4: $77
	sbc  c                                           ; $70c5: $99
	sub  a                                           ; $70c6: $97
	adc  b                                           ; $70c7: $88
	sbc  c                                           ; $70c8: $99
	add  a                                           ; $70c9: $87
	adc  b                                           ; $70ca: $88
	sub  a                                           ; $70cb: $97
	ld   [hl], a                                     ; $70cc: $77
	adc  c                                           ; $70cd: $89
	sbc  b                                           ; $70ce: $98
	sbc  b                                           ; $70cf: $98
	add  a                                           ; $70d0: $87
	ld   [hl], a                                     ; $70d1: $77
	sbc  b                                           ; $70d2: $98
	add  a                                           ; $70d3: $87
	ld   [hl], a                                     ; $70d4: $77
	ld   [hl], a                                     ; $70d5: $77
	ld   a, b                                        ; $70d6: $78
	sbc  c                                           ; $70d7: $99
	add  a                                           ; $70d8: $87
	ld   a, b                                        ; $70d9: $78
	adc  b                                           ; $70da: $88
	add  a                                           ; $70db: $87
	ld   a, c                                        ; $70dc: $79
	sbc  c                                           ; $70dd: $99
	add  a                                           ; $70de: $87
	adc  b                                           ; $70df: $88
	adc  b                                           ; $70e0: $88
	adc  b                                           ; $70e1: $88
	sbc  c                                           ; $70e2: $99
	ld   [hl], a                                     ; $70e3: $77
	ld   a, c                                        ; $70e4: $79
	sub  a                                           ; $70e5: $97
	ld   a, b                                        ; $70e6: $78
	sbc  b                                           ; $70e7: $98
	halt                                             ; $70e8: $76
	ld   l, b                                        ; $70e9: $68
	adc  c                                           ; $70ea: $89
	ld   a, b                                        ; $70eb: $78
	adc  c                                           ; $70ec: $89
	add  a                                           ; $70ed: $87
	ld   a, b                                        ; $70ee: $78
	adc  b                                           ; $70ef: $88
	add  a                                           ; $70f0: $87
	ld   a, b                                        ; $70f1: $78
	add  a                                           ; $70f2: $87
	ld   [hl], a                                     ; $70f3: $77
	sbc  d                                           ; $70f4: $9a
	sbc  c                                           ; $70f5: $99
	add  a                                           ; $70f6: $87
	adc  c                                           ; $70f7: $89
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	ld   [hl], a                                     ; $70fa: $77
	adc  b                                           ; $70fb: $88
	adc  b                                           ; $70fc: $88
	adc  b                                           ; $70fd: $88
	adc  b                                           ; $70fe: $88
	adc  b                                           ; $70ff: $88
	add  a                                           ; $7100: $87
	adc  c                                           ; $7101: $89
	adc  b                                           ; $7102: $88
	add  a                                           ; $7103: $87
	ld   a, b                                        ; $7104: $78
	adc  b                                           ; $7105: $88
	sbc  b                                           ; $7106: $98
	adc  b                                           ; $7107: $88
	adc  b                                           ; $7108: $88
	adc  b                                           ; $7109: $88
	adc  b                                           ; $710a: $88
	adc  b                                           ; $710b: $88
	add  a                                           ; $710c: $87
	ld   a, b                                        ; $710d: $78
	adc  b                                           ; $710e: $88
	adc  b                                           ; $710f: $88
	sbc  b                                           ; $7110: $98
	adc  b                                           ; $7111: $88
	adc  c                                           ; $7112: $89
	adc  b                                           ; $7113: $88
	adc  b                                           ; $7114: $88
	adc  b                                           ; $7115: $88
	adc  b                                           ; $7116: $88
	adc  b                                           ; $7117: $88
	sbc  c                                           ; $7118: $99
	add  a                                           ; $7119: $87
	adc  b                                           ; $711a: $88
	sbc  c                                           ; $711b: $99
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
	sbc  b                                           ; $7277: $98
	adc  b                                           ; $7278: $88
	adc  b                                           ; $7279: $88
	adc  b                                           ; $727a: $88
	adc  b                                           ; $727b: $88
	adc  b                                           ; $727c: $88
	adc  c                                           ; $727d: $89
	adc  b                                           ; $727e: $88
	adc  b                                           ; $727f: $88
	adc  b                                           ; $7280: $88
	adc  b                                           ; $7281: $88
	adc  b                                           ; $7282: $88
	adc  b                                           ; $7283: $88
	adc  b                                           ; $7284: $88
	adc  b                                           ; $7285: $88
	adc  c                                           ; $7286: $89
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
	sbc  b                                           ; $7292: $98
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
	add  a                                           ; $72ac: $87
	adc  b                                           ; $72ad: $88
	adc  b                                           ; $72ae: $88
	adc  b                                           ; $72af: $88
	adc  b                                           ; $72b0: $88
	adc  b                                           ; $72b1: $88
	adc  b                                           ; $72b2: $88
	adc  b                                           ; $72b3: $88
	adc  b                                           ; $72b4: $88
	adc  b                                           ; $72b5: $88
	adc  c                                           ; $72b6: $89
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
	adc  c                                           ; $7301: $89
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

Call_0ae_7598:
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

Jump_0ae_7698:
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

Jump_0ae_76a9:
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

Jump_0ae_7787:
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

Jump_0ae_7887:
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

Jump_0ae_7988:
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

Call_0ae_7996:
	adc  b                                           ; $7996: $88
	adc  b                                           ; $7997: $88

Call_0ae_7998:
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

Call_0ae_7ab7:
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

Call_0ae_7d96:
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
