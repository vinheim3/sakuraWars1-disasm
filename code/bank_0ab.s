; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ab", ROMX[$4000], BANK[$ab]

	ld   de, $7f66                                   ; $4000: $11 $66 $7f
	rst  $38                                         ; $4003: $ff
	rst  $38                                         ; $4004: $ff
	rst  $38                                         ; $4005: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4006: $cf
	db   $fd                                         ; $4007: $fd
	db   $fd                                         ; $4008: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4009: $cf
	rst  $38                                         ; $400a: $ff
	rst  $38                                         ; $400b: $ff
	rst  $38                                         ; $400c: $ff
	rst  $38                                         ; $400d: $ff
	ei                                               ; $400e: $fb
	ld   h, c                                        ; $400f: $61
	ld   de, $1111                                   ; $4010: $11 $11 $11
	ld   de, $1111                                   ; $4013: $11 $11 $11
	ld   de, $8f65                                   ; $4016: $11 $65 $8f
	rst  $38                                         ; $4019: $ff
	rst  $38                                         ; $401a: $ff
	rst  $38                                         ; $401b: $ff
	rst  $28                                         ; $401c: $ef
	rst  $38                                         ; $401d: $ff
	rst  $38                                         ; $401e: $ff
	rst  JumpTable                                         ; $401f: $df
	rst  $38                                         ; $4020: $ff
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	rst  $28                                         ; $4023: $ef
	db   $eb                                         ; $4024: $eb
	ld   d, c                                        ; $4025: $51
	ld   de, $1111                                   ; $4026: $11 $11 $11
	ld   de, $1111                                   ; $4029: $11 $11 $11
	ld   de, $2f22                                   ; $402c: $11 $22 $2f
	rst  $38                                         ; $402f: $ff
	rst  $38                                         ; $4030: $ff
	rst  $38                                         ; $4031: $ff
	rst  $38                                         ; $4032: $ff
	rst  $38                                         ; $4033: $ff
	rst  $38                                         ; $4034: $ff
	call c, $ffff                                    ; $4035: $dc $ff $ff
	rst  $38                                         ; $4038: $ff
	db   $eb                                         ; $4039: $eb
	call c, $1193                                    ; $403a: $dc $93 $11
	ld   de, $1111                                   ; $403d: $11 $11 $11
	ld   de, $1111                                   ; $4040: $11 $11 $11
	ld   de, $ff18                                   ; $4043: $11 $18 $ff
	rst  $38                                         ; $4046: $ff
	rst  $38                                         ; $4047: $ff
	call c, $ffff                                    ; $4048: $dc $ff $ff
	db   $fd                                         ; $404b: $fd
	rst  JumpTable                                         ; $404c: $df
	rst  $38                                         ; $404d: $ff
	rst  $38                                         ; $404e: $ff
	ld   [$b7bb], a                                  ; $404f: $ea $bb $b7
	ld   de, $1111                                   ; $4052: $11 $11 $11
	ld   de, $1111                                   ; $4055: $11 $11 $11
	ld   [de], a                                     ; $4058: $12
	inc  d                                           ; $4059: $14
	ld   d, c                                        ; $405a: $51
	cp   a                                           ; $405b: $bf
	rst  $38                                         ; $405c: $ff
	rst  $38                                         ; $405d: $ff
	db   $fc                                         ; $405e: $fc
	xor  a                                           ; $405f: $af
	rst  $28                                         ; $4060: $ef
	rst  $38                                         ; $4061: $ff
	rst  JumpTable                                         ; $4062: $df
	rst  $38                                         ; $4063: $ff
	rst  $38                                         ; $4064: $ff
	cp   $aa                                         ; $4065: $fe $aa
	xor  c                                           ; $4067: $a9
	ld   [hl], d                                     ; $4068: $72
	ld   de, $1111                                   ; $4069: $11 $11 $11
	ld   de, $1111                                   ; $406c: $11 $11 $11
	ld   de, $1522                                   ; $406f: $11 $22 $15
	rst  $38                                         ; $4072: $ff
	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	ld   [$dfcc], a                                  ; $4075: $ea $cc $df
	rst  $38                                         ; $4078: $ff
	cp   $ff                                         ; $4079: $fe $ff
	rst  $38                                         ; $407b: $ff
	ei                                               ; $407c: $fb
	sbc  e                                           ; $407d: $9b
	and  a                                           ; $407e: $a7
	ld   b, c                                        ; $407f: $41
	ld   de, $1111                                   ; $4080: $11 $11 $11
	ld   de, $1111                                   ; $4083: $11 $11 $11
	ld   de, $3d21                                   ; $4086: $11 $21 $3d
	rst  $38                                         ; $4089: $ff
	rst  $38                                         ; $408a: $ff
	rst  $38                                         ; $408b: $ff
	adc  $da                                         ; $408c: $ce $da
	rst  $38                                         ; $408e: $ff
	cp   $de                                         ; $408f: $fe $de
	rst  $38                                         ; $4091: $ff
	rst  $38                                         ; $4092: $ff
	db   $ec                                         ; $4093: $ec
	res  5, b                                        ; $4094: $cb $a8
	ld   sp, $1111                                   ; $4096: $31 $11 $11
	ld   de, $1111                                   ; $4099: $11 $11 $11
	ld   de, $3111                                   ; $409c: $11 $11 $31
	dec  e                                           ; $409f: $1d
	rst  $38                                         ; $40a0: $ff
	rst  $38                                         ; $40a1: $ff
	rst  $38                                         ; $40a2: $ff
	cp   h                                           ; $40a3: $bc
	cp   c                                           ; $40a4: $b9
	rst  $28                                         ; $40a5: $ef
	rst  $38                                         ; $40a6: $ff
	xor  $ff                                         ; $40a7: $ee $ff
	rst  $38                                         ; $40a9: $ff
	call c, $b8ab                                    ; $40aa: $dc $ab $b8
	ld   h, c                                        ; $40ad: $61
	ld   de, $1111                                   ; $40ae: $11 $11 $11
	ld   de, $1111                                   ; $40b1: $11 $11 $11
	inc  de                                          ; $40b4: $13
	ld   hl, $ff19                                   ; $40b5: $21 $19 $ff
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	db   $eb                                         ; $40ba: $eb
	sbc  d                                           ; $40bb: $9a
	rst  JumpTable                                         ; $40bc: $df
	rst  $38                                         ; $40bd: $ff
	cp   $ff                                         ; $40be: $fe $ff
	rst  $38                                         ; $40c0: $ff
	rst  $38                                         ; $40c1: $ff
	res  5, c                                        ; $40c2: $cb $a9
	ld   h, d                                        ; $40c4: $62
	ld   de, $1111                                   ; $40c5: $11 $11 $11
	ld   de, $1111                                   ; $40c8: $11 $11 $11
	ld   de, $1221                                   ; $40cb: $11 $21 $12
	xor  a                                           ; $40ce: $af
	rst  $38                                         ; $40cf: $ff
	rst  $38                                         ; $40d0: $ff
	db   $fd                                         ; $40d1: $fd
	rst  ToBoot                                         ; $40d2: $c7
	cp   a                                           ; $40d3: $bf
	rst  $38                                         ; $40d4: $ff
	cp   $ef                                         ; $40d5: $fe $ef
	rst  $38                                         ; $40d7: $ff
	rst  $38                                         ; $40d8: $ff
	call $a4a8                                       ; $40d9: $cd $a8 $a4
	ld   de, $1111                                   ; $40dc: $11 $11 $11
	ld   de, $1111                                   ; $40df: $11 $11 $11
	ld   de, $1111                                   ; $40e2: $11 $11 $11
	ld   l, $ff                                      ; $40e5: $2e $ff
	rst  $38                                         ; $40e7: $ff
	rst  $38                                         ; $40e8: $ff
	jp   c, $ff8a                                    ; $40e9: $da $8a $ff

	rst  $38                                         ; $40ec: $ff
	xor  $ff                                         ; $40ed: $ee $ff
	rst  $38                                         ; $40ef: $ff
	rst  $38                                         ; $40f0: $ff
	db   $db                                         ; $40f1: $db
	and  a                                           ; $40f2: $a7
	ld   d, c                                        ; $40f3: $51
	ld   de, $1111                                   ; $40f4: $11 $11 $11
	ld   de, $1111                                   ; $40f7: $11 $11 $11
	ld   de, $1111                                   ; $40fa: $11 $11 $11
	rst  JumpTable                                         ; $40fd: $df
	rst  $38                                         ; $40fe: $ff
	rst  $38                                         ; $40ff: $ff
	ei                                               ; $4100: $fb
	sub  [hl]                                        ; $4101: $96
	xor  a                                           ; $4102: $af
	rst  $38                                         ; $4103: $ff
	cp   $ff                                         ; $4104: $fe $ff
	rst  $38                                         ; $4106: $ff
	rst  $38                                         ; $4107: $ff
	db   $fd                                         ; $4108: $fd
	sbc  d                                           ; $4109: $9a
	and  h                                           ; $410a: $a4
	ld   de, $1111                                   ; $410b: $11 $11 $11
	ld   de, $1111                                   ; $410e: $11 $11 $11
	ld   de, $1111                                   ; $4111: $11 $11 $11
	rla                                              ; $4114: $17
	rst  $38                                         ; $4115: $ff
	rst  $38                                         ; $4116: $ff
	rst  $38                                         ; $4117: $ff
	ld   [$df87], a                                  ; $4118: $ea $87 $df
	rst  $38                                         ; $411b: $ff
	db   $ed                                         ; $411c: $ed
	rst  $38                                         ; $411d: $ff
	rst  $38                                         ; $411e: $ff
	rst  $38                                         ; $411f: $ff
	jp   c, Jump_0ab_61ba                            ; $4120: $da $ba $61

	ld   de, $1111                                   ; $4123: $11 $11 $11
	ld   de, $1111                                   ; $4126: $11 $11 $11
	ld   de, $1111                                   ; $4129: $11 $11 $11
	adc  a                                           ; $412c: $8f
	rst  $38                                         ; $412d: $ff
	rst  $38                                         ; $412e: $ff
	db   $fc                                         ; $412f: $fc
	or   [hl]                                        ; $4130: $b6
	adc  [hl]                                        ; $4131: $8e
	rst  $38                                         ; $4132: $ff
	cp   $ff                                         ; $4133: $fe $ff
	rst  $38                                         ; $4135: $ff
	rst  $38                                         ; $4136: $ff
	rst  $38                                         ; $4137: $ff
	res  6, [hl]                                     ; $4138: $cb $b6
	ld   de, $1111                                   ; $413a: $11 $11 $11
	ld   de, $1111                                   ; $413d: $11 $11 $11
	ld   de, $1111                                   ; $4140: $11 $11 $11
	ld   de, $ffff                                   ; $4143: $11 $ff $ff
	rst  $38                                         ; $4146: $ff
	ld   [$9f67], a                                  ; $4147: $ea $67 $9f
	rst  $38                                         ; $414a: $ff
	rst  $38                                         ; $414b: $ff
	rst  $38                                         ; $414c: $ff
	rst  $38                                         ; $414d: $ff
	rst  $38                                         ; $414e: $ff
	db   $db                                         ; $414f: $db
	res  0, h                                        ; $4150: $cb $84
	ld   de, $1111                                   ; $4152: $11 $11 $11
	ld   de, $1111                                   ; $4155: $11 $11 $11
	ld   de, $1111                                   ; $4158: $11 $11 $11
	inc  d                                           ; $415b: $14
	rst  $38                                         ; $415c: $ff
	rst  $38                                         ; $415d: $ff
	rst  $38                                         ; $415e: $ff
	sbc  c                                           ; $415f: $99
	ld   a, b                                        ; $4160: $78
	rst  JumpTable                                         ; $4161: $df
	rst  $38                                         ; $4162: $ff
	rst  $38                                         ; $4163: $ff
	rst  $38                                         ; $4164: $ff
	rst  $38                                         ; $4165: $ff
	cp   $bb                                         ; $4166: $fe $bb
	jp   c, $1181                                    ; $4168: $da $81 $11

	ld   de, $1111                                   ; $416b: $11 $11 $11
	ld   de, $1111                                   ; $416e: $11 $11 $11
	ld   de, $1e11                                   ; $4171: $11 $11 $1e
	rst  $38                                         ; $4174: $ff
	rst  $38                                         ; $4175: $ff
	ei                                               ; $4176: $fb
	ld   a, c                                        ; $4177: $79
	xor  e                                           ; $4178: $ab
	rst  $38                                         ; $4179: $ff
	rst  $38                                         ; $417a: $ff
	rst  $38                                         ; $417b: $ff
	rst  $38                                         ; $417c: $ff
	cp   $ee                                         ; $417d: $fe $ee
	rst  JumpTable                                         ; $417f: $df
	add  sp, $41                                     ; $4180: $e8 $41
	ld   de, $1111                                   ; $4182: $11 $11 $11
	ld   de, $1111                                   ; $4185: $11 $11 $11
	ld   de, $1111                                   ; $4188: $11 $11 $11
	rra                                              ; $418b: $1f
	rst  $38                                         ; $418c: $ff
	rst  $38                                         ; $418d: $ff
	db   $fc                                         ; $418e: $fc
	ld   d, a                                        ; $418f: $57
	ld   l, c                                        ; $4190: $69
	rst  $38                                         ; $4191: $ff
	rst  $38                                         ; $4192: $ff
	rst  $38                                         ; $4193: $ff
	rst  $38                                         ; $4194: $ff
	rst  $38                                         ; $4195: $ff
	sbc  $bb                                         ; $4196: $de $bb
	ret                                              ; $4198: $c9


	ld   b, c                                        ; $4199: $41
	ld   de, $1111                                   ; $419a: $11 $11 $11
	ld   de, $1111                                   ; $419d: $11 $11 $11
	ld   de, $1111                                   ; $41a0: $11 $11 $11
	add  hl, de                                      ; $41a3: $19
	rst  $38                                         ; $41a4: $ff
	rst  $38                                         ; $41a5: $ff
	ei                                               ; $41a6: $fb
	and  l                                           ; $41a7: $a5
	ld   a, a                                        ; $41a8: $7f
	rst  $38                                         ; $41a9: $ff
	rst  $38                                         ; $41aa: $ff
	rst  $38                                         ; $41ab: $ff
	rst  $38                                         ; $41ac: $ff
	cp   $ff                                         ; $41ad: $fe $ff
	cp   h                                           ; $41af: $bc
	add  $31                                         ; $41b0: $c6 $31
	ld   de, $1101                                   ; $41b2: $11 $01 $11
	ld   de, $1111                                   ; $41b5: $11 $11 $11
	ld   de, $1111                                   ; $41b8: $11 $11 $11
	dec  d                                           ; $41bb: $15
	rst  $38                                         ; $41bc: $ff
	rst  $38                                         ; $41bd: $ff
	cp   $59                                         ; $41be: $fe $59
	ld   a, c                                        ; $41c0: $79
	rst  $38                                         ; $41c1: $ff
	rst  $38                                         ; $41c2: $ff
	rst  $38                                         ; $41c3: $ff
	rst  $38                                         ; $41c4: $ff
	rst  $38                                         ; $41c5: $ff
	db   $ed                                         ; $41c6: $ed
	ei                                               ; $41c7: $fb
	cp   h                                           ; $41c8: $bc
	ld   h, c                                        ; $41c9: $61
	ld   de, $1112                                   ; $41ca: $11 $12 $11
	ld   de, $1111                                   ; $41cd: $11 $11 $11
	ld   de, $1111                                   ; $41d0: $11 $11 $11
	ld   de, $ffbf                                   ; $41d3: $11 $bf $ff
	rst  $38                                         ; $41d6: $ff
	ld   hl, sp+$59                                  ; $41d7: $f8 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41d9: $cf
	rst  $38                                         ; $41da: $ff
	rst  $38                                         ; $41db: $ff
	rst  $28                                         ; $41dc: $ef
	db   $fc                                         ; $41dd: $fc
	cp   $df                                         ; $41de: $fe $df
	cp   e                                           ; $41e0: $bb
	cp   b                                           ; $41e1: $b8
	ld   de, $1111                                   ; $41e2: $11 $11 $11
	ld   de, $1111                                   ; $41e5: $11 $11 $11
	ld   de, $1111                                   ; $41e8: $11 $11 $11
	ld   de, $ff1e                                   ; $41eb: $11 $1e $ff
	rst  $38                                         ; $41ee: $ff
	cp   d                                           ; $41ef: $ba
	ld   d, e                                        ; $41f0: $53
	rst  $28                                         ; $41f1: $ef
	rst  $38                                         ; $41f2: $ff
	rst  $38                                         ; $41f3: $ff
	rst  $38                                         ; $41f4: $ff
	rst  $38                                         ; $41f5: $ff
	ret                                              ; $41f6: $c9


	rst  $38                                         ; $41f7: $ff
	rst  $28                                         ; $41f8: $ef
	and  d                                           ; $41f9: $a2
	ld   hl, $4112                                   ; $41fa: $21 $12 $41
	ld   de, $1111                                   ; $41fd: $11 $11 $11
	ld   de, $1111                                   ; $4200: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $4203: $11 $14 $ff
	rst  $38                                         ; $4206: $ff
	ei                                               ; $4207: $fb
	and  [hl]                                        ; $4208: $a6
	sbc  a                                           ; $4209: $9f
	rst  $38                                         ; $420a: $ff
	rst  $38                                         ; $420b: $ff
	rst  $38                                         ; $420c: $ff
	rst  $38                                         ; $420d: $ff
	ld   a, [$fdaf]                                  ; $420e: $fa $af $fd
	add  $12                                         ; $4211: $c6 $12
	ld   d, $61                                      ; $4213: $16 $61
	ld   de, $1111                                   ; $4215: $11 $11 $11
	ld   de, $1111                                   ; $4218: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $421b: $11 $11 $ff
	rst  $38                                         ; $421e: $ff
	rst  $38                                         ; $421f: $ff
	pop  bc                                          ; $4220: $c1
	jp   c, $ffdf                                    ; $4221: $da $df $ff

	rst  $38                                         ; $4224: $ff
	rst  $38                                         ; $4225: $ff
	rst  $38                                         ; $4226: $ff
	cp   e                                           ; $4227: $bb
	rst  $38                                         ; $4228: $ff
	db   $fc                                         ; $4229: $fc
	ld   h, c                                        ; $422a: $61
	ld   d, $65                                      ; $422b: $16 $65
	ld   hl, $1111                                   ; $422d: $21 $11 $11
	ld   de, $1111                                   ; $4230: $11 $11 $11
	ld   de, $1611                                   ; $4233: $11 $11 $16
	rst  $38                                         ; $4236: $ff
	rst  $38                                         ; $4237: $ff
	ld   a, [$ff31]                                  ; $4238: $fa $31 $ff
	rst  $38                                         ; $423b: $ff
	rst  $38                                         ; $423c: $ff
	rst  $38                                         ; $423d: $ff
	rst  $38                                         ; $423e: $ff
	call c, $efee                                    ; $423f: $dc $ee $ef
	or   [hl]                                        ; $4242: $b6
	sub  [hl]                                        ; $4243: $96
	ld   [bc], a                                     ; $4244: $02
	ld   b, c                                        ; $4245: $41
	ld   de, $1111                                   ; $4246: $11 $11 $11
	ld   de, $1111                                   ; $4249: $11 $11 $11
	ld   hl, rAUD1LEN                                   ; $424c: $21 $11 $ff
	rst  $38                                         ; $424f: $ff
	or   $fa                                         ; $4250: $f6 $fa
	rst  JumpTable                                         ; $4252: $df
	xor  a                                           ; $4253: $af
	rst  $38                                         ; $4254: $ff
	rst  $38                                         ; $4255: $ff
	rst  $38                                         ; $4256: $ff
	db   $fd                                         ; $4257: $fd
	sbc  $ef                                         ; $4258: $de $ef
	ld   hl, sp+$43                                  ; $425a: $f8 $43
	ld   c, [hl]                                     ; $425c: $4e
	call nz, $1111                                   ; $425d: $c4 $11 $11
	ld   de, $1111                                   ; $4260: $11 $11 $11
	sub  c                                           ; $4263: $91
	ld   de, $1511                                   ; $4264: $11 $11 $15
	adc  $ff                                         ; $4267: $ce $ff
	cp   $c9                                         ; $4269: $fe $c9
	rst  $28                                         ; $426b: $ef
	rst  $38                                         ; $426c: $ff
	rst  $28                                         ; $426d: $ef
	rst  $38                                         ; $426e: $ff
	rst  $38                                         ; $426f: $ff
	jp   c, $eddf                                    ; $4270: $da $df $ed

	ld   [hl], a                                     ; $4273: $77
	adc  $74                                         ; $4274: $ce $74
	ld   sp, $1111                                   ; $4276: $31 $11 $11
	ld   de, $1121                                   ; $4279: $11 $21 $11
	ld   [de], a                                     ; $427c: $12
	ld   de, $1d11                                   ; $427d: $11 $11 $1d
	rst  JumpTable                                         ; $4280: $df
	db   $fd                                         ; $4281: $fd
	xor  a                                           ; $4282: $af
	ld   h, [hl]                                     ; $4283: $66
	cp   $cf                                         ; $4284: $fe $cf
	sbc  a                                           ; $4286: $9f
	rst  $38                                         ; $4287: $ff
	rst  $38                                         ; $4288: $ff
	ld   l, a                                        ; $4289: $6f
	ld   hl, sp-$03                                  ; $428a: $f8 $fd
	dec  de                                          ; $428c: $1b
	push af                                          ; $428d: $f5
	adc  d                                           ; $428e: $8a
	ld   de, $1111                                   ; $428f: $11 $11 $11
	ld   [de], a                                     ; $4292: $12
	ld   de, $1111                                   ; $4293: $11 $11 $11
	ld   hl, $1e11                                   ; $4296: $21 $11 $1e
	rst  $38                                         ; $4299: $ff
	ldh  a, [c]                                      ; $429a: $f2
	ccf                                              ; $429b: $3f
	ccf                                              ; $429c: $3f
	ld   sp, hl                                      ; $429d: $f9
	db   $fd                                         ; $429e: $fd
	ld   c, a                                        ; $429f: $4f
	db   $fc                                         ; $42a0: $fc
	rst  $30                                         ; $42a1: $f7
	ld   l, a                                        ; $42a2: $6f
	rst  $38                                         ; $42a3: $ff
	di                                               ; $42a4: $f3
	rra                                              ; $42a5: $1f
	reti                                             ; $42a6: $d9


	or   c                                           ; $42a7: $b1
	ld   de, $1111                                   ; $42a8: $11 $11 $11
	ld   de, $1112                                   ; $42ab: $11 $12 $11
	ld   de, $1711                                   ; $42ae: $11 $11 $17
	rra                                              ; $42b1: $1f
	rst  $38                                         ; $42b2: $ff
	ldh  a, [c]                                      ; $42b3: $f2
	ccf                                              ; $42b4: $3f
	adc  [hl]                                        ; $42b5: $8e
	db   $fc                                         ; $42b6: $fc
	ld   l, a                                        ; $42b7: $6f
	rst  $38                                         ; $42b8: $ff
	rst  $38                                         ; $42b9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42ba: $cf
	sbc  l                                           ; $42bb: $9d
	rst  $30                                         ; $42bc: $f7
	ld   c, e                                        ; $42bd: $4b
	ld   l, [hl]                                     ; $42be: $6e
	db   $f4                                         ; $42bf: $f4
	ld   d, e                                        ; $42c0: $53
	ld   de, $1111                                   ; $42c1: $11 $11 $11
	ld   de, $1141                                   ; $42c4: $11 $41 $11
	ld   [de], a                                     ; $42c7: $12
	sub  c                                           ; $42c8: $91
	dec  d                                           ; $42c9: $15
	cpl                                              ; $42ca: $2f
	cp   $f2                                         ; $42cb: $fe $f2
	adc  a                                           ; $42cd: $8f
	rst  $38                                         ; $42ce: $ff
	rst  $30                                         ; $42cf: $f7
	rst  $38                                         ; $42d0: $ff
	rst  $38                                         ; $42d1: $ff
	cp   $ad                                         ; $42d2: $fe $ad
	rst  $38                                         ; $42d4: $ff
	jp   hl                                          ; $42d5: $e9


	sbc  d                                           ; $42d6: $9a
	xor  l                                           ; $42d7: $ad
	adc  b                                           ; $42d8: $88
	ld   h, c                                        ; $42d9: $61
	ld   de, $1111                                   ; $42da: $11 $11 $11
	or   c                                           ; $42dd: $b1
	ld   de, $1411                                   ; $42de: $11 $11 $14
	ld   de, $f71f                                   ; $42e1: $11 $1f $f7
	db   $fd                                         ; $42e4: $fd
	cp   a                                           ; $42e5: $bf
	xor  a                                           ; $42e6: $af
	push af                                          ; $42e7: $f5
	rst  $38                                         ; $42e8: $ff
	adc  a                                           ; $42e9: $8f
	rst  $38                                         ; $42ea: $ff
	ei                                               ; $42eb: $fb
	cp   $cf                                         ; $42ec: $fe $cf
	push af                                          ; $42ee: $f5
	rra                                              ; $42ef: $1f
	db   $fd                                         ; $42f0: $fd
	ld   b, c                                        ; $42f1: $41
	ld   de, $1111                                   ; $42f2: $11 $11 $11
	dec  e                                           ; $42f5: $1d
	ld   sp, $1211                                   ; $42f6: $31 $11 $12
	ld   de, $6f41                                   ; $42f9: $11 $41 $6f
	db   $fd                                         ; $42fc: $fd
	inc  e                                           ; $42fd: $1c
	rst  $38                                         ; $42fe: $ff
	pop  af                                          ; $42ff: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4300: $cf
	rst  $38                                         ; $4301: $ff
	rst  $38                                         ; $4302: $ff
	cp   a                                           ; $4303: $bf
	rst  $38                                         ; $4304: $ff
	push af                                          ; $4305: $f5
	inc  e                                           ; $4306: $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4307: $cf
	ei                                               ; $4308: $fb
	halt                                             ; $4309: $76
	ld   [de], a                                     ; $430a: $12
	ld   de, $1111                                   ; $430b: $11 $11 $11
	ld   b, e                                        ; $430e: $43
	ld   sp, $1111                                   ; $430f: $31 $11 $11
	ld   de, $9bee                                   ; $4312: $11 $ee $9b
	ld   sp, hl                                      ; $4315: $f9
	rst  $38                                         ; $4316: $ff
	rra                                              ; $4317: $1f
	pop  af                                          ; $4318: $f1
	ld   l, a                                        ; $4319: $6f
	rst  $38                                         ; $431a: $ff
	db   $fc                                         ; $431b: $fc
	rst  $38                                         ; $431c: $ff
	rst  $38                                         ; $431d: $ff
	ld   c, d                                        ; $431e: $4a
	push hl                                          ; $431f: $e5
	cp   a                                           ; $4320: $bf
	cp   l                                           ; $4321: $bd
	pop  bc                                          ; $4322: $c1
	ld   de, $1111                                   ; $4323: $11 $11 $11
	dec  d                                           ; $4326: $15
	ld   b, c                                        ; $4327: $41
	ld   de, $1145                                   ; $4328: $11 $45 $11
	pop  af                                          ; $432b: $f1
	inc  e                                           ; $432c: $1c
	dec  de                                          ; $432d: $1b
	rst  $38                                         ; $432e: $ff
	jp   c, $ffff                                    ; $432f: $da $ff $ff

	db   $ec                                         ; $4332: $ec
	cp   a                                           ; $4333: $bf
	db   $fc                                         ; $4334: $fc
	rst  $38                                         ; $4335: $ff
	ld   a, [$df68]                                  ; $4336: $fa $68 $df
	ld   a, [$3261]                                  ; $4339: $fa $61 $32
	ld   de, $9511                                   ; $433c: $11 $11 $95
	ld   de, $1111                                   ; $433f: $11 $11 $11
	jr   jr_0ab_4357                                 ; $4342: $18 $13

	ld   l, h                                        ; $4344: $6c
	or   [hl]                                        ; $4345: $b6
	rst  $38                                         ; $4346: $ff
	xor  a                                           ; $4347: $af
	db   $fc                                         ; $4348: $fc
	xor  a                                           ; $4349: $af
	or   $ff                                         ; $434a: $f6 $ff
	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	db   $e4                                         ; $434e: $e4
	ld   l, h                                        ; $434f: $6c
	db   $fc                                         ; $4350: $fc
	ld   l, a                                        ; $4351: $6f
	di                                               ; $4352: $f3
	ld   [de], a                                     ; $4353: $12
	ld   de, $1611                                   ; $4354: $11 $11 $16

jr_0ab_4357:
	ld   de, $7511                                   ; $4357: $11 $11 $75
	ld   de, $4758                                   ; $435a: $11 $58 $47
	call c, $f1df                                    ; $435d: $dc $df $f1
	rst  JumpTable                                         ; $4360: $df
	ld   hl, sp-$61                                  ; $4361: $f8 $9f
	rst  $38                                         ; $4363: $ff
	cp   $bd                                         ; $4364: $fe $bd
	rst  $38                                         ; $4366: $ff
	add  e                                           ; $4367: $83
	ld   e, a                                        ; $4368: $5f
	db   $fc                                         ; $4369: $fc
	ld   d, c                                        ; $436a: $51
	ld   b, d                                        ; $436b: $42
	ld   de, $1111                                   ; $436c: $11 $11 $11
	ld   de, $1321                                   ; $436f: $11 $21 $13
	ld   de, $927f                                   ; $4372: $11 $7f $92
	cp   a                                           ; $4375: $bf
	rst  $38                                         ; $4376: $ff
	cp   $1f                                         ; $4377: $fe $1f
	push af                                          ; $4379: $f5
	rst  JumpTable                                         ; $437a: $df
	rst  $38                                         ; $437b: $ff
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	push hl                                          ; $437e: $e5
	cpl                                              ; $437f: $2f
	di                                               ; $4380: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4381: $cf
	or   e                                           ; $4382: $b3
	ld   de, $1151                                   ; $4383: $11 $51 $11

Jump_0ab_4386:
	ld   a, [de]                                     ; $4386: $1a
	ld   h, c                                        ; $4387: $61
	inc  e                                           ; $4388: $1c
	add  c                                           ; $4389: $81
	ld   de, $1ff1                                   ; $438a: $11 $f1 $1f
	pop  de                                          ; $438d: $d1
	rst  $38                                         ; $438e: $ff
	ei                                               ; $438f: $fb
	cp   a                                           ; $4390: $bf
	sub  c                                           ; $4391: $91
	rst  $38                                         ; $4392: $ff
	cp   $cf                                         ; $4393: $fe $cf
	db   $fd                                         ; $4395: $fd
	ld   [hl], a                                     ; $4396: $77
	ld   a, l                                        ; $4397: $7d
	rst  $38                                         ; $4398: $ff
	xor  b                                           ; $4399: $a8
	xor  c                                           ; $439a: $a9
	ld   de, $1211                                   ; $439b: $11 $11 $12
	ld   de, $1111                                   ; $439e: $11 $11 $11
	ld   sp, wInGameStickyButtonsPressed                                   ; $43a1: $31 $11 $c2
	ld   h, c                                        ; $43a4: $61
	xor  a                                           ; $43a5: $af
	push hl                                          ; $43a6: $e5
	rst  $38                                         ; $43a7: $ff
	adc  l                                           ; $43a8: $8d
	ccf                                              ; $43a9: $3f
	pop  af                                          ; $43aa: $f1
	rst  $38                                         ; $43ab: $ff
	rst  $38                                         ; $43ac: $ff
	sbc  d                                           ; $43ad: $9a
	ld   a, [$afc3]                                  ; $43ae: $fa $c3 $af
	sub  $73                                         ; $43b1: $d6 $73
	inc  [hl]                                        ; $43b3: $34
	ld   de, $1111                                   ; $43b4: $11 $11 $11
	ld   de, $1171                                   ; $43b7: $11 $71 $11
	ld   l, d                                        ; $43ba: $6a
	ld   de, $7cdf                                   ; $43bb: $11 $df $7c
	cp   a                                           ; $43be: $bf
	db   $fd                                         ; $43bf: $fd
	rst  JumpTable                                         ; $43c0: $df
	rst  $30                                         ; $43c1: $f7
	rst  $38                                         ; $43c2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43c3: $cf
	rst  $38                                         ; $43c4: $ff
	ld   a, [$5ce8]                                  ; $43c5: $fa $e8 $5c
	cp   a                                           ; $43c8: $bf
	di                                               ; $43c9: $f3
	cpl                                              ; $43ca: $2f
	ld   h, c                                        ; $43cb: $61
	ld   de, $1611                                   ; $43cc: $11 $11 $16
	ld   de, $1111                                   ; $43cf: $11 $11 $11
	ld   de, $14ff                                   ; $43d2: $11 $ff $14
	rra                                              ; $43d5: $1f
	ei                                               ; $43d6: $fb
	ld   l, a                                        ; $43d7: $6f
	rst  $38                                         ; $43d8: $ff
	ld   [de], a                                     ; $43d9: $12
	rra                                              ; $43da: $1f
	ld   sp, hl                                      ; $43db: $f9
	rst  $38                                         ; $43dc: $ff
	rst  $38                                         ; $43dd: $ff
	ld   a, c                                        ; $43de: $79
	ld   h, c                                        ; $43df: $61
	db   $fc                                         ; $43e0: $fc
	xor  a                                           ; $43e1: $af
	ld   e, b                                        ; $43e2: $58
	ld   sp, $1111                                   ; $43e3: $31 $11 $11
	dec  d                                           ; $43e6: $15
	ld   de, $1111                                   ; $43e7: $11 $11 $11
	ld   a, [de]                                     ; $43ea: $1a
	ld   e, $f1                                      ; $43eb: $1e $f1
	rst  $28                                         ; $43ed: $ef
	db   $fc                                         ; $43ee: $fc
	rra                                              ; $43ef: $1f
	di                                               ; $43f0: $f3
	cp   $df                                         ; $43f1: $fe $df
	rst  $38                                         ; $43f3: $ff
	db   $fd                                         ; $43f4: $fd
	cp   $bd                                         ; $43f5: $fe $bd
	sbc  a                                           ; $43f7: $9f
	jp   c, $d48b                                    ; $43f8: $da $8b $d4

	ld   de, $1111                                   ; $43fb: $11 $11 $11
	ld   de, $1111                                   ; $43fe: $11 $11 $11
	ld   [hl], c                                     ; $4401: $71
	ld   de, $11ef                                   ; $4402: $11 $ef $11
	rst  $38                                         ; $4405: $ff
	add  sp, -$21                                    ; $4406: $e8 $df
	pop  af                                          ; $4408: $f1
	rst  $38                                         ; $4409: $ff
	rst  $38                                         ; $440a: $ff
	sbc  a                                           ; $440b: $9f
	rst  $38                                         ; $440c: $ff
	db   $fc                                         ; $440d: $fc
	xor  b                                           ; $440e: $a8
	sbc  [hl]                                        ; $440f: $9e
	rst  $38                                         ; $4410: $ff
	ld   d, c                                        ; $4411: $51
	ld   l, h                                        ; $4412: $6c
	ld   h, c                                        ; $4413: $61
	ld   de, $1116                                   ; $4414: $11 $16 $11
	ld   a, b                                        ; $4417: $78
	ld   de, $f11f                                   ; $4418: $11 $1f $f1
	inc  d                                           ; $441b: $14
	rst  $38                                         ; $441c: $ff
	ld   [de], a                                     ; $441d: $12
	rst  $38                                         ; $441e: $ff
	ld   hl, sp+$1f                                  ; $441f: $f8 $1f
	db   $fc                                         ; $4421: $fc
	rra                                              ; $4422: $1f
	rst  $38                                         ; $4423: $ff
	pop  af                                          ; $4424: $f1
	rst  $38                                         ; $4425: $ff
	sub  $1f                                         ; $4426: $d6 $1f
	di                                               ; $4428: $f3
	ld   a, b                                        ; $4429: $78
	rst  $30                                         ; $442a: $f7
	ld   de, $1111                                   ; $442b: $11 $11 $11
	ld   d, c                                        ; $442e: $51
	ld   de, $1111                                   ; $442f: $11 $11 $11
	ld   a, [de]                                     ; $4432: $1a
	rst  $30                                         ; $4433: $f7
	add  hl, de                                      ; $4434: $19
	rst  $30                                         ; $4435: $f7
	rst  $38                                         ; $4436: $ff
	xor  a                                           ; $4437: $af
	cp   l                                           ; $4438: $bd
	push af                                          ; $4439: $f5
	rst  $38                                         ; $443a: $ff
	rst  $38                                         ; $443b: $ff
	xor  a                                           ; $443c: $af
	db   $fd                                         ; $443d: $fd
	or   $b9                                         ; $443e: $f6 $b9
	cp   a                                           ; $4440: $bf
	ld   l, d                                        ; $4441: $6a
	sub  h                                           ; $4442: $94
	ld   de, $1111                                   ; $4443: $11 $11 $11
	ld   de, $1111                                   ; $4446: $11 $11 $11
	ld   de, $8c15                                   ; $4449: $11 $15 $8c
	ld   l, b                                        ; $444c: $68
	rst  $38                                         ; $444d: $ff
	sub  a                                           ; $444e: $97
	rst  $38                                         ; $444f: $ff
	or   $ef                                         ; $4450: $f6 $ef
	rst  $38                                         ; $4452: $ff
	cp   l                                           ; $4453: $bd
	rst  $38                                         ; $4454: $ff
	xor  e                                           ; $4455: $ab
	rst  $38                                         ; $4456: $ff
	and  h                                           ; $4457: $a4
	ld   l, h                                        ; $4458: $6c
	ld   a, [$6411]                                  ; $4459: $fa $11 $64
	ld   de, $1116                                   ; $445c: $11 $16 $11
	dec  de                                          ; $445f: $1b
	pop  de                                          ; $4460: $d1
	ld   [de], a                                     ; $4461: $12
	db   $f4                                         ; $4462: $f4
	rra                                              ; $4463: $1f
	ld   hl, sp-$67                                  ; $4464: $f8 $99
	rst  $38                                         ; $4466: $ff
	cp   a                                           ; $4467: $bf
	adc  a                                           ; $4468: $8f
	ld   sp, hl                                      ; $4469: $f9
	rst  $38                                         ; $446a: $ff
	rst  $38                                         ; $446b: $ff
	ld   c, a                                        ; $446c: $4f
	cp   $ab                                         ; $446d: $fe $ab
	ld   hl, sp-$52                                  ; $446f: $f8 $ae
	ld   [hl], h                                     ; $4471: $74
	inc  hl                                          ; $4472: $23
	ld   de, $2511                                   ; $4473: $11 $11 $25
	ld   de, $1116                                   ; $4476: $11 $16 $11
	ld   de, $416b                                   ; $4479: $11 $6b $41
	rst  JumpTable                                         ; $447c: $df
	sbc  [hl]                                        ; $447d: $9e
	rst  $38                                         ; $447e: $ff
	xor  $fe                                         ; $447f: $ee $fe
	rra                                              ; $4481: $1f
	rst  $38                                         ; $4482: $ff
	xor  h                                           ; $4483: $ac
	rst  $38                                         ; $4484: $ff
	db   $dd                                         ; $4485: $dd
	cp   a                                           ; $4486: $bf
	push bc                                          ; $4487: $c5
	ld   a, l                                        ; $4488: $7d
	and  c                                           ; $4489: $a1
	ld   [bc], a                                     ; $448a: $02
	ld   de, $1111                                   ; $448b: $11 $11 $11
	ld   de, $1119                                   ; $448e: $11 $19 $11
	jr   @-$04                                       ; $4491: $18 $fa

	ld   e, $f9                                      ; $4493: $1e $f9
	ld   hl, sp-$01                                  ; $4495: $f8 $ff
	dec  e                                           ; $4497: $1d
	ld   sp, hl                                      ; $4498: $f9
	db   $fd                                         ; $4499: $fd
	sbc  a                                           ; $449a: $9f
	rst  $38                                         ; $449b: $ff
	call z, $d2ef                                    ; $449c: $cc $ef $d2
	xor  h                                           ; $449f: $ac
	adc  $11                                         ; $44a0: $ce $11
	sub  c                                           ; $44a2: $91
	ld   de, $1111                                   ; $44a3: $11 $11 $11
	ld   d, $11                                      ; $44a6: $16 $11
	ld   de, $1f13                                   ; $44a8: $11 $13 $1f
	pop  af                                          ; $44ab: $f1
	rst  $38                                         ; $44ac: $ff
	rst  $30                                         ; $44ad: $f7
	rst  JumpTable                                         ; $44ae: $df
	ld   hl, sp-$62                                  ; $44af: $f8 $9e
	rst  $38                                         ; $44b1: $ff
	ld   e, a                                        ; $44b2: $5f
	rst  $38                                         ; $44b3: $ff
	sub  a                                           ; $44b4: $97
	db   $fd                                         ; $44b5: $fd
	rst  $20                                         ; $44b6: $e7
	adc  e                                           ; $44b7: $8b
	cp   e                                           ; $44b8: $bb
	ld   b, d                                        ; $44b9: $42
	add  c                                           ; $44ba: $81
	ld   de, $1213                                   ; $44bb: $11 $13 $12
	ld   sp, $1811                                   ; $44be: $31 $11 $18
	ld   sp, $f21f                                   ; $44c1: $31 $1f $f2
	rra                                              ; $44c4: $1f
	rst  $38                                         ; $44c5: $ff
	pop  bc                                          ; $44c6: $c1
	rst  $38                                         ; $44c7: $ff
	sbc  h                                           ; $44c8: $9c
	rst  JumpTable                                         ; $44c9: $df
	ei                                               ; $44ca: $fb
	ei                                               ; $44cb: $fb
	rst  $38                                         ; $44cc: $ff
	add  [hl]                                        ; $44cd: $86
	rst  JumpTable                                         ; $44ce: $df
	or   $8c                                         ; $44cf: $f6 $8c
	ld   [hl], c                                     ; $44d1: $71
	ld   de, $1141                                   ; $44d2: $11 $41 $11
	add  hl, de                                      ; $44d5: $19
	ld   de, $1111                                   ; $44d6: $11 $11 $11
	rra                                              ; $44d9: $1f
	ld   [hl+], a                                    ; $44da: $22
	ei                                               ; $44db: $fb
	db   $fc                                         ; $44dc: $fc
	rst  $38                                         ; $44dd: $ff
	xor  l                                           ; $44de: $ad
	rst  $38                                         ; $44df: $ff
	rst  $30                                         ; $44e0: $f7
	rst  $38                                         ; $44e1: $ff
	ld   a, [$ffaf]                                  ; $44e2: $fa $af $ff
	ld   a, c                                        ; $44e5: $79
	db   $fd                                         ; $44e6: $fd
	xor  e                                           ; $44e7: $ab
	ld   d, a                                        ; $44e8: $57
	add  $11                                         ; $44e9: $c6 $11
	ld   d, c                                        ; $44eb: $51
	ld   de, $1121                                   ; $44ec: $11 $21 $11
	ld   [de], a                                     ; $44ef: $12
	ld   h, c                                        ; $44f0: $61
	ld   e, $43                                      ; $44f1: $1e $43
	ld   a, a                                        ; $44f3: $7f
	push af                                          ; $44f4: $f5
	rst  $38                                         ; $44f5: $ff
	rst  $38                                         ; $44f6: $ff
	db   $fd                                         ; $44f7: $fd
	jp   c, $dffe                                    ; $44f8: $da $fe $df

	rst  JumpTable                                         ; $44fb: $df
	db   $fd                                         ; $44fc: $fd
	rst  $28                                         ; $44fd: $ef
	rst  $30                                         ; $44fe: $f7
	inc  l                                           ; $44ff: $2c
	or   [hl]                                        ; $4500: $b6
	ld   d, d                                        ; $4501: $52
	ld   de, $1131                                   ; $4502: $11 $31 $11
	ld   sp, $1131                                   ; $4505: $31 $31 $11
	ld   d, $11                                      ; $4508: $16 $11
	db   $fd                                         ; $450a: $fd
	rra                                              ; $450b: $1f
	rst  $38                                         ; $450c: $ff
	dec  hl                                          ; $450d: $2b
	rst  $38                                         ; $450e: $ff
	sub  [hl]                                        ; $450f: $96
	rst  $28                                         ; $4510: $ef
	ei                                               ; $4511: $fb
	rst  JumpTable                                         ; $4512: $df
	ld   a, [$f7df]                                  ; $4513: $fa $df $f7
	rst  $38                                         ; $4516: $ff
	ld   e, e                                        ; $4517: $5b
	and  [hl]                                        ; $4518: $a6
	ld   d, h                                        ; $4519: $54
	ld   b, c                                        ; $451a: $41
	ld   de, $1111                                   ; $451b: $11 $11 $11
	ld   de, $1111                                   ; $451e: $11 $11 $11
	dec  d                                           ; $4521: $15
	call nc, Call_0ab_7faf                           ; $4522: $d4 $af $7f
	ld   a, [$fbef]                                  ; $4525: $fa $ef $fb
	adc  a                                           ; $4528: $8f
	rst  $38                                         ; $4529: $ff
	db   $fc                                         ; $452a: $fc
	rst  $38                                         ; $452b: $ff
	ld   a, [$9a8f]                                  ; $452c: $fa $8f $9a
	jp   hl                                          ; $452f: $e9


	cp   c                                           ; $4530: $b9
	ld   h, h                                        ; $4531: $64
	ld   [de], a                                     ; $4532: $12
	ld   de, $1111                                   ; $4533: $11 $11 $11
	ld   de, $1111                                   ; $4536: $11 $11 $11
	rra                                              ; $4539: $1f
	pop  bc                                          ; $453a: $c1
	rst  $38                                         ; $453b: $ff
	rst  $38                                         ; $453c: $ff
	ld   e, a                                        ; $453d: $5f
	ld   sp, hl                                      ; $453e: $f9
	rst  $20                                         ; $453f: $e7
	rst  $38                                         ; $4540: $ff
	ld   e, l                                        ; $4541: $5d
	rst  JumpTable                                         ; $4542: $df
	cp   c                                           ; $4543: $b9
	cp   $f7                                         ; $4544: $fe $f7
	ld   l, a                                        ; $4546: $6f
	ret  z                                           ; $4547: $c8

	ld   d, l                                        ; $4548: $55
	add  c                                           ; $4549: $81
	ld   de, $1311                                   ; $454a: $11 $11 $13
	ld   de, $1111                                   ; $454d: $11 $11 $11
	rla                                              ; $4550: $17
	ld   de, $f91f                                   ; $4551: $11 $1f $f9
	ld   a, a                                        ; $4554: $7f
	rst  $38                                         ; $4555: $ff
	db   $e4                                         ; $4556: $e4
	db   $fd                                         ; $4557: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4558: $cf
	ld   c, a                                        ; $4559: $4f
	rst  $38                                         ; $455a: $ff
	and  [hl]                                        ; $455b: $a6
	rst  $38                                         ; $455c: $ff
	rst  ToBoot                                         ; $455d: $c7
	sbc  a                                           ; $455e: $9f
	add  d                                           ; $455f: $82
	ld   b, [hl]                                     ; $4560: $46
	pop  de                                          ; $4561: $d1
	inc  de                                          ; $4562: $13
	ld   de, $1111                                   ; $4563: $11 $11 $11
	ld   de, $8113                                   ; $4566: $11 $13 $81
	rla                                              ; $4569: $17
	adc  a                                           ; $456a: $8f
	or   c                                           ; $456b: $b1
	rst  $38                                         ; $456c: $ff
	ldh  a, [c]                                      ; $456d: $f2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $456e: $cf
	ei                                               ; $456f: $fb
	ld   a, e                                        ; $4570: $7b
	cp   $fa                                         ; $4571: $fe $fa
	rst  $28                                         ; $4573: $ef

Call_0ab_4574:
	jp   c, $f7df                                    ; $4574: $da $df $f7

	add  a                                           ; $4577: $87
	sbc  b                                           ; $4578: $98
	ld   de, $1111                                   ; $4579: $11 $11 $11
	ld   de, $1131                                   ; $457c: $11 $31 $11
	ld   d, c                                        ; $457f: $51
	ld   [de], a                                     ; $4580: $12
	or   c                                           ; $4581: $b1
	rra                                              ; $4582: $1f
	ld   a, [$ff4f]                                  ; $4583: $fa $4f $ff
	rla                                              ; $4586: $17
	rst  $38                                         ; $4587: $ff
	ld   b, d                                        ; $4588: $42
	rst  $38                                         ; $4589: $ff
	jp   c, $fcef                                    ; $458a: $da $ef $fc

	db   $eb                                         ; $458d: $eb
	xor  $95                                         ; $458e: $ee $95
	add  hl, hl                                      ; $4590: $29
	ld   b, c                                        ; $4591: $41
	ld   de, $1231                                   ; $4592: $11 $31 $12
	ld   sp, $1117                                   ; $4595: $31 $17 $11
	rra                                              ; $4598: $1f
	ld   de, $8dff                                   ; $4599: $11 $ff $8d
	rst  $28                                         ; $459c: $ef
	ld   a, [$f8af]                                  ; $459d: $fa $af $f8
	ld   e, a                                        ; $45a0: $5f
	rst  $38                                         ; $45a1: $ff
	ld   e, a                                        ; $45a2: $5f
	db   $fc                                         ; $45a3: $fc
	cp   $8c                                         ; $45a4: $fe $8c
	ei                                               ; $45a6: $fb
	dec  de                                          ; $45a7: $1b
	pop  de                                          ; $45a8: $d1
	ld   de, $1111                                   ; $45a9: $11 $11 $11
	ld   de, $1141                                   ; $45ac: $11 $41 $11
	ld   d, c                                        ; $45af: $51
	ld   de, $ff91                                   ; $45b0: $11 $91 $ff
	ld   e, a                                        ; $45b3: $5f
	rst  $38                                         ; $45b4: $ff
	call Call_0ab_7cfb                               ; $45b5: $cd $fb $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45b8: $cf
	db   $fd                                         ; $45b9: $fd
	rst  $38                                         ; $45ba: $ff
	ld   a, [$fc9f]                                  ; $45bb: $fa $9f $fc
	ld   d, [hl]                                     ; $45be: $56
	xor  h                                           ; $45bf: $ac
	ld   [hl], c                                     ; $45c0: $71
	ld   de, $1111                                   ; $45c1: $11 $11 $11
	ld   sp, $1211                                   ; $45c4: $31 $11 $12
	ld   de, $8a14                                   ; $45c7: $11 $14 $8a
	ld   hl, sp-$01                                  ; $45ca: $f8 $ff
	rst  $38                                         ; $45cc: $ff
	xor  a                                           ; $45cd: $af
	db   $fc                                         ; $45ce: $fc
	and  a                                           ; $45cf: $a7
	rst  $38                                         ; $45d0: $ff
	xor  c                                           ; $45d1: $a9
	rst  $38                                         ; $45d2: $ff
	ld   hl, sp-$01                                  ; $45d3: $f8 $ff
	db   $fd                                         ; $45d5: $fd
	ld   a, b                                        ; $45d6: $78
	ld   a, b                                        ; $45d7: $78
	ld   sp, $1111                                   ; $45d8: $31 $11 $11
	ld   de, $1111                                   ; $45db: $11 $11 $11
	ld   hl, $1114                                   ; $45de: $21 $14 $11
	ld   l, a                                        ; $45e1: $6f
	or   l                                           ; $45e2: $b5
	rst  $38                                         ; $45e3: $ff
	adc  $ff                                         ; $45e4: $ce $ff
	ld   l, d                                        ; $45e6: $6a
	reti                                             ; $45e7: $d9


	ld   a, [$ffef]                                  ; $45e8: $fa $ef $ff
	ld   l, a                                        ; $45eb: $6f
	ld   a, [$b6ba]                                  ; $45ec: $fa $ba $b6
	ld   a, b                                        ; $45ef: $78
	inc  d                                           ; $45f0: $14
	ld   sp, $1111                                   ; $45f1: $31 $11 $11
	ld   de, $1111                                   ; $45f4: $11 $11 $11
	ld   de, $693a                                   ; $45f7: $11 $3a $69
	rst  $38                                         ; $45fa: $ff
	rst  $38                                         ; $45fb: $ff
	rst  $28                                         ; $45fc: $ef
	cp   $69                                         ; $45fd: $fe $69
	cp   $b9                                         ; $45ff: $fe $b9
	rst  $38                                         ; $4601: $ff
	rst  $38                                         ; $4602: $ff
	rst  $38                                         ; $4603: $ff
	ei                                               ; $4604: $fb
	add  a                                           ; $4605: $87
	cp   [hl]                                        ; $4606: $be
	ld   de, $1172                                   ; $4607: $11 $72 $11
	ld   de, $1111                                   ; $460a: $11 $11 $11
	ld   de, $1311                                   ; $460d: $11 $11 $13
	ld   c, d                                        ; $4610: $4a
	rra                                              ; $4611: $1f
	rst  $38                                         ; $4612: $ff
	db   $fd                                         ; $4613: $fd
	rst  $38                                         ; $4614: $ff
	ld   a, d                                        ; $4615: $7a
	rst  $38                                         ; $4616: $ff
	db   $d3                                         ; $4617: $d3
	rst  $28                                         ; $4618: $ef
	db   $fd                                         ; $4619: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $461a: $cf
	rst  $38                                         ; $461b: $ff
	sbc  $fc                                         ; $461c: $de $fc
	sbc  b                                           ; $461e: $98
	inc  de                                          ; $461f: $13
	ld   b, c                                        ; $4620: $41
	ld   de, $1112                                   ; $4621: $11 $12 $11
	ld   de, $1111                                   ; $4624: $11 $11 $11
	add  hl, de                                      ; $4627: $19
	ld   h, c                                        ; $4628: $61
	rra                                              ; $4629: $1f
	rst  $38                                         ; $462a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $462b: $cf
	rst  $38                                         ; $462c: $ff
	ld   hl, sp-$01                                  ; $462d: $f8 $ff
	ld   l, c                                        ; $462f: $69
	xor  a                                           ; $4630: $af
	ld   hl, sp-$01                                  ; $4631: $f8 $ff
	rst  $38                                         ; $4633: $ff
	cp   l                                           ; $4634: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4635: $cf
	or   d                                           ; $4636: $b2
	ld   d, l                                        ; $4637: $55
	ld   d, c                                        ; $4638: $51
	ld   de, $1111                                   ; $4639: $11 $11 $11
	ld   de, $2111                                   ; $463c: $11 $11 $21
	ld   de, $1ff8                                   ; $463f: $11 $f8 $1f
	cp   $ef                                         ; $4642: $fe $ef
	rst  $38                                         ; $4644: $ff
	db   $ed                                         ; $4645: $ed
	rst  JumpTable                                         ; $4646: $df
	add  sp, -$21                                    ; $4647: $e8 $df
	ld   a, [$ffef]                                  ; $4649: $fa $ef $ff
	rst  JumpTable                                         ; $464c: $df
	sbc  $e4                                         ; $464d: $de $e4
	ld   h, [hl]                                     ; $464f: $66
	ld   hl, $1111                                   ; $4650: $21 $11 $11
	ld   de, $1111                                   ; $4653: $11 $11 $11
	ld   de, $2111                                   ; $4656: $11 $11 $21
	ld   a, l                                        ; $4659: $7d
	rst  $38                                         ; $465a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $465b: $cf
	rst  $38                                         ; $465c: $ff
	db   $fd                                         ; $465d: $fd
	rst  $38                                         ; $465e: $ff
	db   $fd                                         ; $465f: $fd
	ld   a, [hl]                                     ; $4660: $7e
	rst  $38                                         ; $4661: $ff
	xor  h                                           ; $4662: $ac
	rst  $38                                         ; $4663: $ff
	cp   $ff                                         ; $4664: $fe $ff
	jp   hl                                          ; $4666: $e9


	ld   b, e                                        ; $4667: $43
	ld   h, d                                        ; $4668: $62
	ld   de, $1111                                   ; $4669: $11 $11 $11
	ld   de, $1111                                   ; $466c: $11 $11 $11
	ld   de, $2838                                   ; $466f: $11 $38 $28
	cp   a                                           ; $4672: $bf
	ld   a, [$ffff]                                  ; $4673: $fa $ff $ff
	sbc  a                                           ; $4676: $9f
	rst  $28                                         ; $4677: $ef
	or   a                                           ; $4678: $b7
	db   $fc                                         ; $4679: $fc
	db   $ed                                         ; $467a: $ed
	rst  JumpTable                                         ; $467b: $df
	rst  $28                                         ; $467c: $ef
	call z, $86fc                                    ; $467d: $cc $fc $86
	halt                                             ; $4680: $76
	ld   de, $1111                                   ; $4681: $11 $11 $11
	ld   de, $1111                                   ; $4684: $11 $11 $11
	ld   de, $4a11                                   ; $4687: $11 $11 $4a
	xor  c                                           ; $468a: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $468b: $cf
	db   $fd                                         ; $468c: $fd
	rst  $38                                         ; $468d: $ff
	ei                                               ; $468e: $fb
	rst  $38                                         ; $468f: $ff
	rst  $38                                         ; $4690: $ff
	sbc  d                                           ; $4691: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4692: $cf
	jp   z, $ffff                                    ; $4693: $ca $ff $ff

	rst  $38                                         ; $4696: $ff
	db   $fd                                         ; $4697: $fd
	sub  e                                           ; $4698: $93
	ld   h, [hl]                                     ; $4699: $66
	ld   de, $1111                                   ; $469a: $11 $11 $11
	ld   de, $1111                                   ; $469d: $11 $11 $11
	ld   de, $2412                                   ; $46a0: $11 $12 $24
	cp   l                                           ; $46a3: $bd
	rst  $38                                         ; $46a4: $ff
	rst  JumpTable                                         ; $46a5: $df
	rst  $38                                         ; $46a6: $ff
	rst  $28                                         ; $46a7: $ef
	db   $fd                                         ; $46a8: $fd
	ld   a, [$cacf]                                  ; $46a9: $fa $cf $ca
	adc  a                                           ; $46ac: $8f
	db   $fc                                         ; $46ad: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46ae: $cf
	rst  $38                                         ; $46af: $ff
	db   $ec                                         ; $46b0: $ec
	cp   c                                           ; $46b1: $b9
	and  e                                           ; $46b2: $a3
	inc  de                                          ; $46b3: $13
	ld   hl, $1111                                   ; $46b4: $21 $11 $11
	ld   de, $1111                                   ; $46b7: $11 $11 $11
	ld   de, $3766                                   ; $46ba: $11 $66 $37
	rst  $38                                         ; $46bd: $ff
	rst  $38                                         ; $46be: $ff
	rst  $38                                         ; $46bf: $ff
	rst  $38                                         ; $46c0: $ff
	rst  $38                                         ; $46c1: $ff
	cp   $ba                                         ; $46c2: $fe $ba
	call z, $9dba                                    ; $46c4: $cc $ba $9d
	call c, $ffbb                                    ; $46c7: $dc $bb $ff
	cp   c                                           ; $46ca: $b9
	sbc  d                                           ; $46cb: $9a
	add  e                                           ; $46cc: $83
	ld   hl, $1131                                   ; $46cd: $21 $31 $11
	ld   de, $1111                                   ; $46d0: $11 $11 $11
	ld   de, $3411                                   ; $46d3: $11 $11 $34
	ld   l, b                                        ; $46d6: $68
	xor  e                                           ; $46d7: $ab
	rst  $28                                         ; $46d8: $ef
	rst  $38                                         ; $46d9: $ff
	rst  $38                                         ; $46da: $ff
	rst  $38                                         ; $46db: $ff
	xor  $cb                                         ; $46dc: $ee $cb
	cp   c                                           ; $46de: $b9
	sbc  d                                           ; $46df: $9a
	adc  b                                           ; $46e0: $88
	adc  c                                           ; $46e1: $89
	sbc  d                                           ; $46e2: $9a
	sbc  c                                           ; $46e3: $99
	sbc  c                                           ; $46e4: $99
	sbc  c                                           ; $46e5: $99
	sbc  c                                           ; $46e6: $99
	adc  c                                           ; $46e7: $89
	adc  c                                           ; $46e8: $89
	add  a                                           ; $46e9: $87
	ld   [hl], a                                     ; $46ea: $77
	ld   [hl], a                                     ; $46eb: $77
	ld   [hl], a                                     ; $46ec: $77
	halt                                             ; $46ed: $76
	halt                                             ; $46ee: $76
	ld   h, [hl]                                     ; $46ef: $66
	ld   d, [hl]                                     ; $46f0: $56
	ld   h, [hl]                                     ; $46f1: $66
	ld   h, [hl]                                     ; $46f2: $66
	ld   h, [hl]                                     ; $46f3: $66
	ld   h, [hl]                                     ; $46f4: $66
	ld   [hl], a                                     ; $46f5: $77
	adc  b                                           ; $46f6: $88
	adc  b                                           ; $46f7: $88
	sbc  c                                           ; $46f8: $99
	sbc  c                                           ; $46f9: $99
	sbc  c                                           ; $46fa: $99
	sbc  c                                           ; $46fb: $99
	sbc  c                                           ; $46fc: $99
	xor  d                                           ; $46fd: $aa
	xor  d                                           ; $46fe: $aa
	cp   d                                           ; $46ff: $ba
	cp   d                                           ; $4700: $ba
	xor  d                                           ; $4701: $aa
	cp   d                                           ; $4702: $ba
	xor  e                                           ; $4703: $ab
	xor  e                                           ; $4704: $ab
	xor  e                                           ; $4705: $ab
	cp   c                                           ; $4706: $b9
	xor  c                                           ; $4707: $a9
	sbc  c                                           ; $4708: $99
	adc  c                                           ; $4709: $89
	add  a                                           ; $470a: $87
	ld   [hl], a                                     ; $470b: $77
	halt                                             ; $470c: $76
	ld   h, [hl]                                     ; $470d: $66
	ld   h, [hl]                                     ; $470e: $66
	ld   h, l                                        ; $470f: $65
	ld   d, l                                        ; $4710: $55
	ld   d, l                                        ; $4711: $55
	ld   d, l                                        ; $4712: $55
	ld   b, h                                        ; $4713: $44
	ld   b, l                                        ; $4714: $45
	ld   d, l                                        ; $4715: $55
	ld   d, l                                        ; $4716: $55
	ld   h, [hl]                                     ; $4717: $66
	ld   h, a                                        ; $4718: $67
	ld   a, b                                        ; $4719: $78
	adc  c                                           ; $471a: $89
	sbc  c                                           ; $471b: $99
	xor  c                                           ; $471c: $a9
	xor  e                                           ; $471d: $ab
	xor  e                                           ; $471e: $ab
	cp   d                                           ; $471f: $ba
	xor  e                                           ; $4720: $ab
	xor  d                                           ; $4721: $aa
	cp   e                                           ; $4722: $bb
	xor  e                                           ; $4723: $ab
	xor  d                                           ; $4724: $aa
	xor  d                                           ; $4725: $aa
	sbc  d                                           ; $4726: $9a
	sbc  c                                           ; $4727: $99
	adc  b                                           ; $4728: $88
	adc  b                                           ; $4729: $88
	add  a                                           ; $472a: $87
	ld   [hl], a                                     ; $472b: $77
	ld   [hl], a                                     ; $472c: $77
	ld   h, [hl]                                     ; $472d: $66
	ld   h, [hl]                                     ; $472e: $66
	ld   d, l                                        ; $472f: $55
	ld   d, l                                        ; $4730: $55
	ld   d, l                                        ; $4731: $55
	ld   d, l                                        ; $4732: $55
	ld   d, l                                        ; $4733: $55
	ld   d, l                                        ; $4734: $55
	ld   d, l                                        ; $4735: $55
	ld   h, [hl]                                     ; $4736: $66
	ld   h, [hl]                                     ; $4737: $66
	ld   [hl], a                                     ; $4738: $77
	ld   [hl], a                                     ; $4739: $77
	adc  b                                           ; $473a: $88
	adc  b                                           ; $473b: $88
	sbc  c                                           ; $473c: $99
	sbc  c                                           ; $473d: $99
	xor  d                                           ; $473e: $aa
	xor  d                                           ; $473f: $aa
	sbc  d                                           ; $4740: $9a
	sbc  d                                           ; $4741: $9a
	sbc  c                                           ; $4742: $99
	xor  c                                           ; $4743: $a9
	sbc  c                                           ; $4744: $99
	sbc  c                                           ; $4745: $99
	adc  c                                           ; $4746: $89
	adc  c                                           ; $4747: $89
	sbc  c                                           ; $4748: $99
	adc  b                                           ; $4749: $88
	add  a                                           ; $474a: $87
	adc  b                                           ; $474b: $88
	add  a                                           ; $474c: $87
	add  a                                           ; $474d: $87
	sbc  c                                           ; $474e: $99
	ld   a, b                                        ; $474f: $78
	ld   a, b                                        ; $4750: $78
	ld   [hl], a                                     ; $4751: $77
	add  a                                           ; $4752: $87
	ld   [hl], a                                     ; $4753: $77
	ld   h, a                                        ; $4754: $67
	ld   [hl], a                                     ; $4755: $77
	ld   h, [hl]                                     ; $4756: $66
	ld   [hl], a                                     ; $4757: $77
	ld   h, [hl]                                     ; $4758: $66
	ld   [hl], a                                     ; $4759: $77
	ld   [hl], a                                     ; $475a: $77
	ld   [hl], a                                     ; $475b: $77
	ld   [hl], a                                     ; $475c: $77
	add  a                                           ; $475d: $87
	adc  b                                           ; $475e: $88
	adc  c                                           ; $475f: $89
	sbc  b                                           ; $4760: $98
	adc  c                                           ; $4761: $89
	adc  b                                           ; $4762: $88
	adc  b                                           ; $4763: $88
	adc  c                                           ; $4764: $89
	adc  c                                           ; $4765: $89
	sbc  b                                           ; $4766: $98
	sbc  c                                           ; $4767: $99
	adc  b                                           ; $4768: $88
	xor  b                                           ; $4769: $a8
	adc  d                                           ; $476a: $8a
	ld   a, d                                        ; $476b: $7a
	sbc  c                                           ; $476c: $99
	xor  b                                           ; $476d: $a8
	sbc  b                                           ; $476e: $98
	adc  c                                           ; $476f: $89
	sbc  c                                           ; $4770: $99
	adc  c                                           ; $4771: $89
	adc  b                                           ; $4772: $88
	xor  b                                           ; $4773: $a8
	sbc  d                                           ; $4774: $9a
	sbc  c                                           ; $4775: $99
	sbc  c                                           ; $4776: $99
	sub  [hl]                                        ; $4777: $96
	add  a                                           ; $4778: $87
	ld   d, a                                        ; $4779: $57
	ld   l, b                                        ; $477a: $68
	ld   h, [hl]                                     ; $477b: $66
	ld   [hl], a                                     ; $477c: $77
	ld   [hl], l                                     ; $477d: $75
	ld   h, l                                        ; $477e: $65
	ld   h, [hl]                                     ; $477f: $66
	ld   d, a                                        ; $4780: $57
	ld   [hl], a                                     ; $4781: $77
	halt                                             ; $4782: $76
	adc  b                                           ; $4783: $88
	ld   a, c                                        ; $4784: $79
	adc  c                                           ; $4785: $89
	sbc  c                                           ; $4786: $99
	xor  d                                           ; $4787: $aa
	sbc  e                                           ; $4788: $9b
	sbc  c                                           ; $4789: $99
	cp   c                                           ; $478a: $b9
	xor  e                                           ; $478b: $ab
	xor  c                                           ; $478c: $a9
	adc  c                                           ; $478d: $89
	and  a                                           ; $478e: $a7
	ld   [hl], a                                     ; $478f: $77
	add  a                                           ; $4790: $87
	ld   [hl], l                                     ; $4791: $75
	ld   e, b                                        ; $4792: $58
	ld   d, a                                        ; $4793: $57
	inc  [hl]                                        ; $4794: $34
	ld   [hl], e                                     ; $4795: $73
	ld   d, l                                        ; $4796: $55
	ld   b, [hl]                                     ; $4797: $46
	ld   d, l                                        ; $4798: $55
	add  [hl]                                        ; $4799: $86
	ld   a, b                                        ; $479a: $78
	ld   l, c                                        ; $479b: $69
	xor  d                                           ; $479c: $aa
	sbc  d                                           ; $479d: $9a
	sbc  d                                           ; $479e: $9a
	xor  c                                           ; $479f: $a9
	xor  c                                           ; $47a0: $a9
	xor  d                                           ; $47a1: $aa
	xor  d                                           ; $47a2: $aa

Call_0ab_47a3:
	sbc  c                                           ; $47a3: $99
	xor  b                                           ; $47a4: $a8
	adc  b                                           ; $47a5: $88
	sbc  b                                           ; $47a6: $98
	sbc  b                                           ; $47a7: $98
	adc  c                                           ; $47a8: $89
	adc  d                                           ; $47a9: $8a
	sbc  c                                           ; $47aa: $99
	sbc  c                                           ; $47ab: $99
	sbc  d                                           ; $47ac: $9a
	sbc  b                                           ; $47ad: $98
	sbc  c                                           ; $47ae: $99
	sbc  c                                           ; $47af: $99
	ld   a, c                                        ; $47b0: $79
	sub  a                                           ; $47b1: $97
	sbc  c                                           ; $47b2: $99
	add  a                                           ; $47b3: $87
	sub  a                                           ; $47b4: $97
	add  a                                           ; $47b5: $87
	ld   l, b                                        ; $47b6: $68
	halt                                             ; $47b7: $76
	add  [hl]                                        ; $47b8: $86
	ld   d, [hl]                                     ; $47b9: $56
	ld   b, h                                        ; $47ba: $44
	ld   b, e                                        ; $47bb: $43
	ld   b, [hl]                                     ; $47bc: $46
	ld   d, e                                        ; $47bd: $53
	ld   d, a                                        ; $47be: $57
	add  a                                           ; $47bf: $87
	ld   a, d                                        ; $47c0: $7a
	sbc  e                                           ; $47c1: $9b
	cp   d                                           ; $47c2: $ba
	cp   e                                           ; $47c3: $bb
	res  1, d                                        ; $47c4: $cb $8a
	xor  c                                           ; $47c6: $a9
	sub  a                                           ; $47c7: $97
	ld   a, c                                        ; $47c8: $79
	ld   [hl], a                                     ; $47c9: $77
	halt                                             ; $47ca: $76
	adc  b                                           ; $47cb: $88
	ld   [hl], a                                     ; $47cc: $77
	sbc  c                                           ; $47cd: $99
	xor  d                                           ; $47ce: $aa
	cp   d                                           ; $47cf: $ba
	call z, $bcbb                                    ; $47d0: $cc $bb $bc
	xor  d                                           ; $47d3: $aa
	xor  c                                           ; $47d4: $a9
	sbc  c                                           ; $47d5: $99
	adc  b                                           ; $47d6: $88
	add  a                                           ; $47d7: $87
	ld   [hl], a                                     ; $47d8: $77
	halt                                             ; $47d9: $76
	ld   d, l                                        ; $47da: $55
	ld   [hl-], a                                    ; $47db: $32
	ld   de, $3224                                   ; $47dc: $11 $24 $32
	ld   b, a                                        ; $47df: $47
	sbc  b                                           ; $47e0: $98
	sbc  e                                           ; $47e1: $9b
	db   $ed                                         ; $47e2: $ed
	db   $dd                                         ; $47e3: $dd
	sbc  $cb                                         ; $47e4: $de $cb
	sbc  b                                           ; $47e6: $98
	adc  b                                           ; $47e7: $88
	ld   h, h                                        ; $47e8: $64
	ld   d, [hl]                                     ; $47e9: $56
	ld   h, l                                        ; $47ea: $65
	ld   d, [hl]                                     ; $47eb: $56
	adc  b                                           ; $47ec: $88
	sbc  c                                           ; $47ed: $99
	sbc  e                                           ; $47ee: $9b
	cp   e                                           ; $47ef: $bb
	cp   d                                           ; $47f0: $ba
	cp   e                                           ; $47f1: $bb
	sbc  c                                           ; $47f2: $99
	adc  b                                           ; $47f3: $88
	halt                                             ; $47f4: $76
	ld   d, [hl]                                     ; $47f5: $56
	ld   h, [hl]                                     ; $47f6: $66
	ld   h, [hl]                                     ; $47f7: $66
	adc  b                                           ; $47f8: $88
	adc  d                                           ; $47f9: $8a
	call z, $decd                                    ; $47fa: $cc $cd $de
	call c, $a9cb                                    ; $47fd: $dc $cb $a9
	halt                                             ; $4800: $76
	ld   d, h                                        ; $4801: $54
	ld   hl, $1311                                   ; $4802: $21 $11 $13
	ld   sp, $bb17                                   ; $4805: $31 $17 $bb
	sbc  e                                           ; $4808: $9b
	rst  $38                                         ; $4809: $ff
	cp   $ed                                         ; $480a: $fe $ed
	call c, Call_0ab_5696                            ; $480c: $dc $96 $56
	ld   h, e                                        ; $480f: $63
	inc  de                                          ; $4810: $13
	ld   d, l                                        ; $4811: $55
	ld   b, l                                        ; $4812: $45
	ld   a, b                                        ; $4813: $78
	xor  d                                           ; $4814: $aa
	cp   h                                           ; $4815: $bc
	db   $dd                                         ; $4816: $dd
	db   $db                                         ; $4817: $db
	cp   e                                           ; $4818: $bb
	cp   c                                           ; $4819: $b9
	halt                                             ; $481a: $76
	ld   h, l                                        ; $481b: $65
	ld   d, h                                        ; $481c: $54
	ld   b, h                                        ; $481d: $44
	ld   d, [hl]                                     ; $481e: $56
	ld   [hl], a                                     ; $481f: $77
	adc  d                                           ; $4820: $8a
	cp   e                                           ; $4821: $bb
	cp   e                                           ; $4822: $bb
	call z, $99bb                                    ; $4823: $cc $bb $99
	adc  b                                           ; $4826: $88
	halt                                             ; $4827: $76
	ld   h, [hl]                                     ; $4828: $66
	ld   h, [hl]                                     ; $4829: $66
	ld   h, [hl]                                     ; $482a: $66
	ld   [hl], a                                     ; $482b: $77
	ld   a, b                                        ; $482c: $78
	sbc  c                                           ; $482d: $99
	xor  c                                           ; $482e: $a9
	sbc  d                                           ; $482f: $9a
	xor  d                                           ; $4830: $aa
	sbc  b                                           ; $4831: $98
	adc  b                                           ; $4832: $88
	ld   [hl], a                                     ; $4833: $77
	halt                                             ; $4834: $76
	ld   h, [hl]                                     ; $4835: $66
	ld   h, [hl]                                     ; $4836: $66
	ld   [hl], a                                     ; $4837: $77
	ld   a, b                                        ; $4838: $78
	sbc  b                                           ; $4839: $98
	sbc  c                                           ; $483a: $99
	xor  d                                           ; $483b: $aa
	xor  d                                           ; $483c: $aa
	sbc  c                                           ; $483d: $99
	adc  c                                           ; $483e: $89
	adc  b                                           ; $483f: $88
	ld   [hl], a                                     ; $4840: $77
	ld   [hl], a                                     ; $4841: $77
	adc  b                                           ; $4842: $88
	adc  b                                           ; $4843: $88
	sbc  d                                           ; $4844: $9a
	sbc  c                                           ; $4845: $99
	sbc  d                                           ; $4846: $9a
	sbc  c                                           ; $4847: $99
	halt                                             ; $4848: $76
	ld   d, e                                        ; $4849: $53
	inc  [hl]                                        ; $484a: $34
	ld   b, e                                        ; $484b: $43
	inc  h                                           ; $484c: $24
	ld   h, a                                        ; $484d: $67
	adc  b                                           ; $484e: $88
	sbc  d                                           ; $484f: $9a
	cp   l                                           ; $4850: $bd
	call c, $cabc                                    ; $4851: $dc $bc $ca
	sub  a                                           ; $4854: $97
	halt                                             ; $4855: $76
	ld   h, l                                        ; $4856: $65
	ld   b, h                                        ; $4857: $44
	ld   d, [hl]                                     ; $4858: $56
	ld   h, [hl]                                     ; $4859: $66
	ld   a, b                                        ; $485a: $78
	sbc  d                                           ; $485b: $9a
	xor  d                                           ; $485c: $aa
	cp   d                                           ; $485d: $ba
	xor  e                                           ; $485e: $ab
	xor  c                                           ; $485f: $a9
	sbc  b                                           ; $4860: $98
	add  a                                           ; $4861: $87
	ld   h, [hl]                                     ; $4862: $66
	ld   h, [hl]                                     ; $4863: $66
	ld   h, [hl]                                     ; $4864: $66
	ld   h, [hl]                                     ; $4865: $66
	ld   a, b                                        ; $4866: $78
	adc  b                                           ; $4867: $88
	sbc  d                                           ; $4868: $9a
	xor  d                                           ; $4869: $aa
	xor  d                                           ; $486a: $aa
	xor  c                                           ; $486b: $a9
	adc  c                                           ; $486c: $89
	add  a                                           ; $486d: $87
	ld   h, a                                        ; $486e: $67
	ld   h, [hl]                                     ; $486f: $66
	ld   h, [hl]                                     ; $4870: $66
	ld   h, a                                        ; $4871: $67
	ld   [hl], a                                     ; $4872: $77
	adc  b                                           ; $4873: $88
	adc  c                                           ; $4874: $89
	xor  d                                           ; $4875: $aa
	xor  d                                           ; $4876: $aa
	sbc  c                                           ; $4877: $99
	adc  c                                           ; $4878: $89
	add  a                                           ; $4879: $87
	ld   [hl], a                                     ; $487a: $77
	halt                                             ; $487b: $76
	ld   h, [hl]                                     ; $487c: $66
	ld   [hl], a                                     ; $487d: $77
	ld   [hl], a                                     ; $487e: $77
	adc  b                                           ; $487f: $88
	sbc  b                                           ; $4880: $98
	sbc  c                                           ; $4881: $99
	sbc  c                                           ; $4882: $99
	sbc  c                                           ; $4883: $99
	adc  c                                           ; $4884: $89
	adc  b                                           ; $4885: $88
	ld   [hl], a                                     ; $4886: $77
	ld   [hl], a                                     ; $4887: $77
	ld   [hl], a                                     ; $4888: $77
	ld   [hl], a                                     ; $4889: $77
	ld   [hl], a                                     ; $488a: $77
	adc  b                                           ; $488b: $88
	sbc  b                                           ; $488c: $98
	adc  b                                           ; $488d: $88
	adc  c                                           ; $488e: $89
	adc  c                                           ; $488f: $89
	sbc  b                                           ; $4890: $98
	adc  b                                           ; $4891: $88
	ld   [hl], a                                     ; $4892: $77
	ld   [hl], a                                     ; $4893: $77
	ld   [hl], a                                     ; $4894: $77
	ld   [hl], a                                     ; $4895: $77
	ld   [hl], a                                     ; $4896: $77
	adc  b                                           ; $4897: $88
	adc  c                                           ; $4898: $89
	sbc  c                                           ; $4899: $99
	adc  b                                           ; $489a: $88
	sbc  b                                           ; $489b: $98
	sbc  c                                           ; $489c: $99
	adc  b                                           ; $489d: $88
	adc  b                                           ; $489e: $88
	ld   [hl], a                                     ; $489f: $77
	ld   [hl], a                                     ; $48a0: $77
	ld   [hl], a                                     ; $48a1: $77
	ld   a, b                                        ; $48a2: $78
	adc  b                                           ; $48a3: $88
	adc  b                                           ; $48a4: $88
	adc  c                                           ; $48a5: $89
	sbc  c                                           ; $48a6: $99
	sbc  c                                           ; $48a7: $99
	sbc  c                                           ; $48a8: $99
	adc  b                                           ; $48a9: $88
	adc  b                                           ; $48aa: $88
	adc  b                                           ; $48ab: $88
	adc  b                                           ; $48ac: $88
	adc  b                                           ; $48ad: $88
	adc  b                                           ; $48ae: $88
	adc  b                                           ; $48af: $88
	adc  b                                           ; $48b0: $88
	adc  b                                           ; $48b1: $88
	adc  b                                           ; $48b2: $88
	adc  b                                           ; $48b3: $88
	adc  b                                           ; $48b4: $88
	adc  b                                           ; $48b5: $88
	adc  b                                           ; $48b6: $88
	adc  b                                           ; $48b7: $88
	adc  b                                           ; $48b8: $88
	adc  b                                           ; $48b9: $88
	adc  b                                           ; $48ba: $88
	adc  b                                           ; $48bb: $88
	adc  b                                           ; $48bc: $88
	adc  b                                           ; $48bd: $88
	adc  b                                           ; $48be: $88
	adc  b                                           ; $48bf: $88
	adc  b                                           ; $48c0: $88
	adc  b                                           ; $48c1: $88
	adc  b                                           ; $48c2: $88
	adc  b                                           ; $48c3: $88
	adc  b                                           ; $48c4: $88
	adc  b                                           ; $48c5: $88
	adc  b                                           ; $48c6: $88
	adc  b                                           ; $48c7: $88
	adc  b                                           ; $48c8: $88
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	adc  b                                           ; $48cd: $88
	adc  b                                           ; $48ce: $88
	adc  b                                           ; $48cf: $88
	adc  b                                           ; $48d0: $88
	adc  b                                           ; $48d1: $88
	adc  b                                           ; $48d2: $88
	adc  b                                           ; $48d3: $88
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	adc  b                                           ; $48d6: $88
	adc  b                                           ; $48d7: $88
	adc  b                                           ; $48d8: $88
	adc  b                                           ; $48d9: $88
	adc  b                                           ; $48da: $88
	adc  b                                           ; $48db: $88
	adc  b                                           ; $48dc: $88
	adc  b                                           ; $48dd: $88
	adc  b                                           ; $48de: $88
	adc  b                                           ; $48df: $88
	adc  b                                           ; $48e0: $88
	adc  b                                           ; $48e1: $88
	adc  b                                           ; $48e2: $88
	adc  b                                           ; $48e3: $88
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	adc  b                                           ; $48e6: $88
	adc  b                                           ; $48e7: $88
	adc  b                                           ; $48e8: $88
	adc  b                                           ; $48e9: $88
	adc  b                                           ; $48ea: $88
	adc  b                                           ; $48eb: $88
	adc  b                                           ; $48ec: $88
	adc  b                                           ; $48ed: $88
	adc  b                                           ; $48ee: $88
	adc  b                                           ; $48ef: $88
	adc  b                                           ; $48f0: $88
	adc  b                                           ; $48f1: $88
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	adc  b                                           ; $48f5: $88
	adc  b                                           ; $48f6: $88
	adc  b                                           ; $48f7: $88
	adc  b                                           ; $48f8: $88
	adc  b                                           ; $48f9: $88
	adc  b                                           ; $48fa: $88
	adc  b                                           ; $48fb: $88
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  b                                           ; $4902: $88
	adc  b                                           ; $4903: $88
	adc  b                                           ; $4904: $88
	adc  b                                           ; $4905: $88
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	adc  b                                           ; $4909: $88
	adc  b                                           ; $490a: $88
	adc  b                                           ; $490b: $88
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  b                                           ; $490e: $88
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	adc  b                                           ; $4911: $88
	adc  b                                           ; $4912: $88
	adc  b                                           ; $4913: $88
	adc  b                                           ; $4914: $88
	adc  b                                           ; $4915: $88
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
	adc  b                                           ; $4a8c: $88
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
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
	adc  b                                           ; $4ac0: $88
	adc  b                                           ; $4ac1: $88
	adc  b                                           ; $4ac2: $88
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
	adc  b                                           ; $4ad2: $88
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  b                                           ; $4ad5: $88
	adc  b                                           ; $4ad6: $88
	adc  b                                           ; $4ad7: $88
	adc  b                                           ; $4ad8: $88
	adc  b                                           ; $4ad9: $88
	adc  b                                           ; $4ada: $88
	adc  b                                           ; $4adb: $88
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
	adc  b                                           ; $4ae3: $88
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88
	adc  b                                           ; $4ae6: $88
	adc  b                                           ; $4ae7: $88
	adc  b                                           ; $4ae8: $88
	adc  b                                           ; $4ae9: $88
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	adc  b                                           ; $4af0: $88
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	adc  b                                           ; $4af6: $88
	adc  b                                           ; $4af7: $88
	adc  b                                           ; $4af8: $88
	adc  b                                           ; $4af9: $88
	adc  b                                           ; $4afa: $88
	adc  b                                           ; $4afb: $88
	adc  b                                           ; $4afc: $88
	adc  b                                           ; $4afd: $88
	adc  b                                           ; $4afe: $88
	adc  b                                           ; $4aff: $88
	adc  b                                           ; $4b00: $88
	adc  b                                           ; $4b01: $88
	adc  b                                           ; $4b02: $88
	adc  b                                           ; $4b03: $88
	adc  b                                           ; $4b04: $88
	adc  b                                           ; $4b05: $88
	adc  b                                           ; $4b06: $88
	adc  b                                           ; $4b07: $88
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	adc  b                                           ; $4b0a: $88
	adc  b                                           ; $4b0b: $88
	adc  b                                           ; $4b0c: $88
	adc  b                                           ; $4b0d: $88
	adc  b                                           ; $4b0e: $88
	adc  b                                           ; $4b0f: $88
	adc  b                                           ; $4b10: $88
	adc  b                                           ; $4b11: $88
	adc  b                                           ; $4b12: $88
	adc  b                                           ; $4b13: $88
	adc  b                                           ; $4b14: $88
	adc  b                                           ; $4b15: $88
	adc  b                                           ; $4b16: $88
	adc  b                                           ; $4b17: $88
	adc  b                                           ; $4b18: $88
	adc  b                                           ; $4b19: $88
	adc  b                                           ; $4b1a: $88
	adc  b                                           ; $4b1b: $88
	adc  b                                           ; $4b1c: $88
	adc  b                                           ; $4b1d: $88
	adc  b                                           ; $4b1e: $88
	adc  b                                           ; $4b1f: $88
	adc  b                                           ; $4b20: $88
	adc  b                                           ; $4b21: $88
	adc  b                                           ; $4b22: $88
	adc  b                                           ; $4b23: $88
	adc  b                                           ; $4b24: $88
	adc  b                                           ; $4b25: $88
	adc  b                                           ; $4b26: $88
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	adc  b                                           ; $4b2a: $88
	adc  b                                           ; $4b2b: $88
	adc  b                                           ; $4b2c: $88
	adc  b                                           ; $4b2d: $88
	adc  b                                           ; $4b2e: $88
	adc  b                                           ; $4b2f: $88
	adc  b                                           ; $4b30: $88
	adc  b                                           ; $4b31: $88
	adc  b                                           ; $4b32: $88
	adc  b                                           ; $4b33: $88
	adc  b                                           ; $4b34: $88
	adc  b                                           ; $4b35: $88
	adc  b                                           ; $4b36: $88
	adc  b                                           ; $4b37: $88
	adc  b                                           ; $4b38: $88
	adc  b                                           ; $4b39: $88
	adc  b                                           ; $4b3a: $88
	adc  b                                           ; $4b3b: $88
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
	adc  b                                           ; $4b4d: $88
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
	adc  b                                           ; $4b74: $88
	adc  b                                           ; $4b75: $88
	adc  b                                           ; $4b76: $88
	adc  b                                           ; $4b77: $88
	adc  b                                           ; $4b78: $88
	adc  b                                           ; $4b79: $88
	adc  b                                           ; $4b7a: $88
	adc  b                                           ; $4b7b: $88
	adc  b                                           ; $4b7c: $88
	adc  b                                           ; $4b7d: $88
	adc  b                                           ; $4b7e: $88
	adc  b                                           ; $4b7f: $88
	adc  b                                           ; $4b80: $88
	adc  b                                           ; $4b81: $88
	adc  b                                           ; $4b82: $88
	adc  b                                           ; $4b83: $88
	adc  b                                           ; $4b84: $88
	adc  b                                           ; $4b85: $88
	adc  b                                           ; $4b86: $88
	adc  b                                           ; $4b87: $88
	adc  b                                           ; $4b88: $88
	adc  b                                           ; $4b89: $88
	adc  b                                           ; $4b8a: $88
	adc  b                                           ; $4b8b: $88
	adc  b                                           ; $4b8c: $88
	adc  b                                           ; $4b8d: $88
	adc  b                                           ; $4b8e: $88
	adc  b                                           ; $4b8f: $88
	adc  b                                           ; $4b90: $88
	adc  b                                           ; $4b91: $88
	adc  b                                           ; $4b92: $88
	adc  b                                           ; $4b93: $88
	adc  b                                           ; $4b94: $88
	adc  b                                           ; $4b95: $88
	adc  b                                           ; $4b96: $88
	adc  b                                           ; $4b97: $88
	adc  b                                           ; $4b98: $88
	adc  b                                           ; $4b99: $88
	adc  b                                           ; $4b9a: $88
	adc  b                                           ; $4b9b: $88
	adc  b                                           ; $4b9c: $88
	adc  b                                           ; $4b9d: $88
	adc  b                                           ; $4b9e: $88
	adc  b                                           ; $4b9f: $88
	adc  b                                           ; $4ba0: $88
	adc  b                                           ; $4ba1: $88
	adc  b                                           ; $4ba2: $88
	adc  b                                           ; $4ba3: $88
	adc  b                                           ; $4ba4: $88
	adc  b                                           ; $4ba5: $88
	adc  b                                           ; $4ba6: $88
	adc  b                                           ; $4ba7: $88
	adc  b                                           ; $4ba8: $88
	adc  b                                           ; $4ba9: $88
	adc  b                                           ; $4baa: $88
	adc  b                                           ; $4bab: $88
	adc  b                                           ; $4bac: $88
	adc  b                                           ; $4bad: $88
	adc  b                                           ; $4bae: $88
	adc  b                                           ; $4baf: $88
	adc  b                                           ; $4bb0: $88
	adc  b                                           ; $4bb1: $88
	adc  b                                           ; $4bb2: $88
	adc  b                                           ; $4bb3: $88
	adc  b                                           ; $4bb4: $88
	adc  b                                           ; $4bb5: $88
	adc  b                                           ; $4bb6: $88
	adc  b                                           ; $4bb7: $88
	adc  b                                           ; $4bb8: $88
	adc  b                                           ; $4bb9: $88
	adc  b                                           ; $4bba: $88
	adc  b                                           ; $4bbb: $88
	adc  b                                           ; $4bbc: $88
	adc  b                                           ; $4bbd: $88
	adc  b                                           ; $4bbe: $88
	adc  b                                           ; $4bbf: $88
	adc  b                                           ; $4bc0: $88
	adc  b                                           ; $4bc1: $88
	adc  b                                           ; $4bc2: $88
	adc  b                                           ; $4bc3: $88
	adc  b                                           ; $4bc4: $88
	adc  b                                           ; $4bc5: $88
	adc  b                                           ; $4bc6: $88
	adc  b                                           ; $4bc7: $88
	adc  b                                           ; $4bc8: $88
	adc  b                                           ; $4bc9: $88
	adc  b                                           ; $4bca: $88
	adc  b                                           ; $4bcb: $88
	adc  b                                           ; $4bcc: $88
	adc  b                                           ; $4bcd: $88
	adc  b                                           ; $4bce: $88
	adc  b                                           ; $4bcf: $88
	adc  b                                           ; $4bd0: $88
	adc  b                                           ; $4bd1: $88
	adc  b                                           ; $4bd2: $88
	adc  b                                           ; $4bd3: $88
	adc  b                                           ; $4bd4: $88
	adc  b                                           ; $4bd5: $88
	adc  b                                           ; $4bd6: $88
	adc  b                                           ; $4bd7: $88
	adc  b                                           ; $4bd8: $88
	adc  b                                           ; $4bd9: $88
	adc  b                                           ; $4bda: $88
	adc  b                                           ; $4bdb: $88
	adc  b                                           ; $4bdc: $88
	adc  b                                           ; $4bdd: $88
	adc  b                                           ; $4bde: $88
	adc  b                                           ; $4bdf: $88
	adc  b                                           ; $4be0: $88
	adc  b                                           ; $4be1: $88
	adc  b                                           ; $4be2: $88
	adc  b                                           ; $4be3: $88
	adc  b                                           ; $4be4: $88
	adc  b                                           ; $4be5: $88
	adc  b                                           ; $4be6: $88
	adc  b                                           ; $4be7: $88
	adc  b                                           ; $4be8: $88
	adc  b                                           ; $4be9: $88
	adc  b                                           ; $4bea: $88
	adc  b                                           ; $4beb: $88
	adc  b                                           ; $4bec: $88
	adc  b                                           ; $4bed: $88
	adc  b                                           ; $4bee: $88
	adc  b                                           ; $4bef: $88
	adc  b                                           ; $4bf0: $88
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	adc  b                                           ; $4bf3: $88
	adc  b                                           ; $4bf4: $88
	adc  b                                           ; $4bf5: $88
	adc  b                                           ; $4bf6: $88
	adc  b                                           ; $4bf7: $88
	adc  b                                           ; $4bf8: $88
	adc  b                                           ; $4bf9: $88
	adc  b                                           ; $4bfa: $88
	adc  b                                           ; $4bfb: $88
	adc  b                                           ; $4bfc: $88
	adc  b                                           ; $4bfd: $88
	adc  b                                           ; $4bfe: $88
	adc  b                                           ; $4bff: $88
	adc  b                                           ; $4c00: $88
	adc  b                                           ; $4c01: $88
	adc  b                                           ; $4c02: $88
	adc  b                                           ; $4c03: $88
	adc  b                                           ; $4c04: $88
	adc  b                                           ; $4c05: $88
	adc  b                                           ; $4c06: $88
	adc  b                                           ; $4c07: $88
	adc  b                                           ; $4c08: $88
	adc  b                                           ; $4c09: $88
	adc  b                                           ; $4c0a: $88
	adc  b                                           ; $4c0b: $88
	adc  b                                           ; $4c0c: $88
	adc  b                                           ; $4c0d: $88
	adc  b                                           ; $4c0e: $88
	adc  b                                           ; $4c0f: $88
	adc  b                                           ; $4c10: $88
	adc  b                                           ; $4c11: $88
	adc  b                                           ; $4c12: $88
	adc  b                                           ; $4c13: $88
	adc  b                                           ; $4c14: $88
	adc  b                                           ; $4c15: $88
	adc  b                                           ; $4c16: $88
	adc  b                                           ; $4c17: $88
	adc  b                                           ; $4c18: $88
	adc  b                                           ; $4c19: $88
	adc  b                                           ; $4c1a: $88
	adc  b                                           ; $4c1b: $88
	adc  b                                           ; $4c1c: $88
	adc  b                                           ; $4c1d: $88
	adc  b                                           ; $4c1e: $88
	adc  b                                           ; $4c1f: $88
	adc  b                                           ; $4c20: $88
	adc  b                                           ; $4c21: $88
	adc  b                                           ; $4c22: $88
	adc  b                                           ; $4c23: $88
	adc  b                                           ; $4c24: $88
	adc  b                                           ; $4c25: $88
	adc  b                                           ; $4c26: $88
	adc  b                                           ; $4c27: $88
	adc  b                                           ; $4c28: $88
	adc  b                                           ; $4c29: $88
	adc  b                                           ; $4c2a: $88
	adc  b                                           ; $4c2b: $88
	adc  b                                           ; $4c2c: $88
	adc  b                                           ; $4c2d: $88
	adc  b                                           ; $4c2e: $88
	adc  b                                           ; $4c2f: $88
	adc  b                                           ; $4c30: $88
	adc  b                                           ; $4c31: $88
	adc  b                                           ; $4c32: $88
	adc  b                                           ; $4c33: $88
	adc  b                                           ; $4c34: $88
	adc  b                                           ; $4c35: $88
	adc  b                                           ; $4c36: $88
	adc  b                                           ; $4c37: $88
	adc  b                                           ; $4c38: $88
	adc  b                                           ; $4c39: $88
	adc  b                                           ; $4c3a: $88
	adc  b                                           ; $4c3b: $88
	adc  b                                           ; $4c3c: $88
	adc  b                                           ; $4c3d: $88
	adc  b                                           ; $4c3e: $88
	adc  b                                           ; $4c3f: $88
	adc  b                                           ; $4c40: $88
	adc  b                                           ; $4c41: $88
	adc  b                                           ; $4c42: $88
	adc  b                                           ; $4c43: $88
	adc  b                                           ; $4c44: $88
	adc  b                                           ; $4c45: $88
	adc  b                                           ; $4c46: $88
	adc  b                                           ; $4c47: $88
	adc  b                                           ; $4c48: $88
	adc  b                                           ; $4c49: $88
	adc  b                                           ; $4c4a: $88
	adc  b                                           ; $4c4b: $88
	adc  b                                           ; $4c4c: $88
	adc  b                                           ; $4c4d: $88
	adc  b                                           ; $4c4e: $88
	adc  b                                           ; $4c4f: $88
	adc  b                                           ; $4c50: $88
	adc  b                                           ; $4c51: $88
	adc  b                                           ; $4c52: $88
	adc  b                                           ; $4c53: $88
	adc  b                                           ; $4c54: $88
	adc  b                                           ; $4c55: $88
	adc  b                                           ; $4c56: $88
	adc  b                                           ; $4c57: $88
	adc  b                                           ; $4c58: $88
	adc  b                                           ; $4c59: $88
	adc  b                                           ; $4c5a: $88
	adc  b                                           ; $4c5b: $88
	adc  b                                           ; $4c5c: $88
	adc  b                                           ; $4c5d: $88
	adc  b                                           ; $4c5e: $88
	adc  b                                           ; $4c5f: $88
	adc  b                                           ; $4c60: $88
	adc  b                                           ; $4c61: $88
	adc  b                                           ; $4c62: $88
	adc  b                                           ; $4c63: $88
	adc  b                                           ; $4c64: $88
	adc  b                                           ; $4c65: $88
	adc  b                                           ; $4c66: $88
	adc  b                                           ; $4c67: $88
	adc  b                                           ; $4c68: $88
	adc  b                                           ; $4c69: $88
	adc  b                                           ; $4c6a: $88
	adc  b                                           ; $4c6b: $88
	adc  b                                           ; $4c6c: $88
	adc  b                                           ; $4c6d: $88
	adc  b                                           ; $4c6e: $88
	adc  b                                           ; $4c6f: $88
	adc  b                                           ; $4c70: $88
	adc  b                                           ; $4c71: $88
	adc  b                                           ; $4c72: $88
	adc  b                                           ; $4c73: $88
	adc  b                                           ; $4c74: $88
	adc  b                                           ; $4c75: $88
	adc  b                                           ; $4c76: $88
	adc  b                                           ; $4c77: $88
	adc  b                                           ; $4c78: $88
	adc  b                                           ; $4c79: $88
	adc  b                                           ; $4c7a: $88
	adc  b                                           ; $4c7b: $88
	adc  b                                           ; $4c7c: $88
	adc  b                                           ; $4c7d: $88
	adc  b                                           ; $4c7e: $88
	adc  b                                           ; $4c7f: $88
	adc  b                                           ; $4c80: $88
	adc  b                                           ; $4c81: $88
	adc  b                                           ; $4c82: $88
	adc  b                                           ; $4c83: $88
	adc  b                                           ; $4c84: $88
	adc  b                                           ; $4c85: $88
	adc  b                                           ; $4c86: $88
	adc  b                                           ; $4c87: $88
	adc  b                                           ; $4c88: $88
	adc  b                                           ; $4c89: $88
	adc  b                                           ; $4c8a: $88
	adc  b                                           ; $4c8b: $88
	adc  b                                           ; $4c8c: $88
	adc  b                                           ; $4c8d: $88
	adc  b                                           ; $4c8e: $88
	adc  b                                           ; $4c8f: $88
	adc  b                                           ; $4c90: $88
	adc  b                                           ; $4c91: $88
	adc  b                                           ; $4c92: $88
	adc  b                                           ; $4c93: $88
	adc  b                                           ; $4c94: $88
	adc  b                                           ; $4c95: $88
	adc  b                                           ; $4c96: $88
	adc  b                                           ; $4c97: $88
	adc  b                                           ; $4c98: $88
	adc  b                                           ; $4c99: $88
	adc  b                                           ; $4c9a: $88
	adc  b                                           ; $4c9b: $88
	adc  b                                           ; $4c9c: $88
	adc  b                                           ; $4c9d: $88
	adc  b                                           ; $4c9e: $88
	adc  b                                           ; $4c9f: $88
	adc  b                                           ; $4ca0: $88
	adc  b                                           ; $4ca1: $88
	adc  b                                           ; $4ca2: $88
	adc  b                                           ; $4ca3: $88
	adc  b                                           ; $4ca4: $88
	adc  b                                           ; $4ca5: $88
	adc  b                                           ; $4ca6: $88
	adc  b                                           ; $4ca7: $88
	adc  b                                           ; $4ca8: $88
	adc  b                                           ; $4ca9: $88

Call_0ab_4caa:
	adc  b                                           ; $4caa: $88
	adc  b                                           ; $4cab: $88
	adc  b                                           ; $4cac: $88
	adc  b                                           ; $4cad: $88
	adc  b                                           ; $4cae: $88
	adc  b                                           ; $4caf: $88
	adc  b                                           ; $4cb0: $88
	adc  b                                           ; $4cb1: $88
	adc  b                                           ; $4cb2: $88
	adc  b                                           ; $4cb3: $88
	adc  b                                           ; $4cb4: $88
	adc  b                                           ; $4cb5: $88
	adc  b                                           ; $4cb6: $88
	adc  b                                           ; $4cb7: $88
	adc  b                                           ; $4cb8: $88
	adc  b                                           ; $4cb9: $88
	adc  b                                           ; $4cba: $88
	adc  b                                           ; $4cbb: $88
	adc  b                                           ; $4cbc: $88
	adc  b                                           ; $4cbd: $88
	adc  b                                           ; $4cbe: $88
	adc  b                                           ; $4cbf: $88
	adc  b                                           ; $4cc0: $88
	adc  b                                           ; $4cc1: $88
	adc  b                                           ; $4cc2: $88
	adc  b                                           ; $4cc3: $88
	adc  b                                           ; $4cc4: $88
	adc  b                                           ; $4cc5: $88
	adc  b                                           ; $4cc6: $88
	adc  b                                           ; $4cc7: $88
	adc  b                                           ; $4cc8: $88
	adc  b                                           ; $4cc9: $88
	adc  b                                           ; $4cca: $88
	adc  b                                           ; $4ccb: $88
	adc  b                                           ; $4ccc: $88
	adc  b                                           ; $4ccd: $88
	adc  b                                           ; $4cce: $88
	adc  b                                           ; $4ccf: $88
	adc  b                                           ; $4cd0: $88
	adc  b                                           ; $4cd1: $88
	adc  b                                           ; $4cd2: $88
	adc  b                                           ; $4cd3: $88
	adc  b                                           ; $4cd4: $88
	adc  b                                           ; $4cd5: $88
	adc  b                                           ; $4cd6: $88
	adc  b                                           ; $4cd7: $88
	adc  b                                           ; $4cd8: $88
	adc  b                                           ; $4cd9: $88
	adc  b                                           ; $4cda: $88
	adc  b                                           ; $4cdb: $88
	adc  b                                           ; $4cdc: $88
	adc  b                                           ; $4cdd: $88
	adc  b                                           ; $4cde: $88
	adc  b                                           ; $4cdf: $88
	adc  b                                           ; $4ce0: $88
	adc  b                                           ; $4ce1: $88
	adc  b                                           ; $4ce2: $88
	adc  b                                           ; $4ce3: $88
	adc  b                                           ; $4ce4: $88
	adc  b                                           ; $4ce5: $88
	adc  b                                           ; $4ce6: $88
	adc  b                                           ; $4ce7: $88
	adc  b                                           ; $4ce8: $88
	adc  b                                           ; $4ce9: $88
	adc  b                                           ; $4cea: $88
	adc  b                                           ; $4ceb: $88
	adc  b                                           ; $4cec: $88
	adc  b                                           ; $4ced: $88
	adc  b                                           ; $4cee: $88
	adc  b                                           ; $4cef: $88
	adc  b                                           ; $4cf0: $88
	adc  b                                           ; $4cf1: $88
	adc  b                                           ; $4cf2: $88
	adc  b                                           ; $4cf3: $88
	adc  b                                           ; $4cf4: $88
	adc  b                                           ; $4cf5: $88
	adc  b                                           ; $4cf6: $88
	adc  b                                           ; $4cf7: $88
	adc  b                                           ; $4cf8: $88
	adc  b                                           ; $4cf9: $88
	adc  b                                           ; $4cfa: $88
	adc  b                                           ; $4cfb: $88
	adc  b                                           ; $4cfc: $88
	adc  b                                           ; $4cfd: $88
	adc  b                                           ; $4cfe: $88
	adc  b                                           ; $4cff: $88
	adc  b                                           ; $4d00: $88
	adc  b                                           ; $4d01: $88
	adc  b                                           ; $4d02: $88
	adc  b                                           ; $4d03: $88
	adc  b                                           ; $4d04: $88
	adc  b                                           ; $4d05: $88
	adc  b                                           ; $4d06: $88
	adc  b                                           ; $4d07: $88
	adc  b                                           ; $4d08: $88
	adc  b                                           ; $4d09: $88
	adc  b                                           ; $4d0a: $88
	adc  b                                           ; $4d0b: $88
	adc  b                                           ; $4d0c: $88
	adc  b                                           ; $4d0d: $88
	adc  b                                           ; $4d0e: $88
	adc  b                                           ; $4d0f: $88
	adc  b                                           ; $4d10: $88
	adc  b                                           ; $4d11: $88
	adc  b                                           ; $4d12: $88
	adc  b                                           ; $4d13: $88
	adc  b                                           ; $4d14: $88
	adc  b                                           ; $4d15: $88
	adc  b                                           ; $4d16: $88
	adc  b                                           ; $4d17: $88
	adc  b                                           ; $4d18: $88
	adc  b                                           ; $4d19: $88
	adc  b                                           ; $4d1a: $88
	adc  b                                           ; $4d1b: $88
	adc  b                                           ; $4d1c: $88
	adc  b                                           ; $4d1d: $88
	adc  b                                           ; $4d1e: $88
	adc  b                                           ; $4d1f: $88
	adc  b                                           ; $4d20: $88
	adc  b                                           ; $4d21: $88
	adc  b                                           ; $4d22: $88
	adc  b                                           ; $4d23: $88
	adc  b                                           ; $4d24: $88
	adc  b                                           ; $4d25: $88
	adc  b                                           ; $4d26: $88
	adc  b                                           ; $4d27: $88
	adc  b                                           ; $4d28: $88
	adc  b                                           ; $4d29: $88
	adc  b                                           ; $4d2a: $88
	adc  b                                           ; $4d2b: $88
	adc  b                                           ; $4d2c: $88
	adc  b                                           ; $4d2d: $88
	adc  b                                           ; $4d2e: $88
	adc  b                                           ; $4d2f: $88
	adc  b                                           ; $4d30: $88
	adc  b                                           ; $4d31: $88
	adc  b                                           ; $4d32: $88
	adc  b                                           ; $4d33: $88
	adc  b                                           ; $4d34: $88
	adc  b                                           ; $4d35: $88
	adc  b                                           ; $4d36: $88
	adc  b                                           ; $4d37: $88
	adc  b                                           ; $4d38: $88
	adc  b                                           ; $4d39: $88
	adc  b                                           ; $4d3a: $88
	adc  b                                           ; $4d3b: $88
	adc  b                                           ; $4d3c: $88
	adc  b                                           ; $4d3d: $88
	adc  b                                           ; $4d3e: $88
	adc  b                                           ; $4d3f: $88
	adc  b                                           ; $4d40: $88
	adc  b                                           ; $4d41: $88
	adc  b                                           ; $4d42: $88
	adc  b                                           ; $4d43: $88
	adc  b                                           ; $4d44: $88
	adc  b                                           ; $4d45: $88
	adc  b                                           ; $4d46: $88
	adc  b                                           ; $4d47: $88
	adc  b                                           ; $4d48: $88
	adc  b                                           ; $4d49: $88
	adc  b                                           ; $4d4a: $88
	adc  b                                           ; $4d4b: $88
	adc  b                                           ; $4d4c: $88
	adc  b                                           ; $4d4d: $88
	adc  b                                           ; $4d4e: $88
	adc  b                                           ; $4d4f: $88
	adc  b                                           ; $4d50: $88
	adc  b                                           ; $4d51: $88
	adc  b                                           ; $4d52: $88
	adc  b                                           ; $4d53: $88
	adc  b                                           ; $4d54: $88
	adc  b                                           ; $4d55: $88
	adc  b                                           ; $4d56: $88
	adc  b                                           ; $4d57: $88
	adc  b                                           ; $4d58: $88
	adc  b                                           ; $4d59: $88
	adc  b                                           ; $4d5a: $88
	adc  b                                           ; $4d5b: $88
	adc  b                                           ; $4d5c: $88
	adc  b                                           ; $4d5d: $88
	adc  b                                           ; $4d5e: $88
	adc  b                                           ; $4d5f: $88
	adc  b                                           ; $4d60: $88
	adc  b                                           ; $4d61: $88
	adc  b                                           ; $4d62: $88
	adc  b                                           ; $4d63: $88
	adc  b                                           ; $4d64: $88
	adc  b                                           ; $4d65: $88
	adc  b                                           ; $4d66: $88
	adc  b                                           ; $4d67: $88
	adc  b                                           ; $4d68: $88
	adc  b                                           ; $4d69: $88
	adc  b                                           ; $4d6a: $88
	adc  b                                           ; $4d6b: $88
	adc  b                                           ; $4d6c: $88
	adc  b                                           ; $4d6d: $88
	adc  b                                           ; $4d6e: $88
	adc  b                                           ; $4d6f: $88
	adc  b                                           ; $4d70: $88
	adc  b                                           ; $4d71: $88
	adc  b                                           ; $4d72: $88
	adc  b                                           ; $4d73: $88
	adc  b                                           ; $4d74: $88
	adc  b                                           ; $4d75: $88
	adc  b                                           ; $4d76: $88
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
	adc  b                                           ; $4dd5: $88
	adc  b                                           ; $4dd6: $88
	adc  b                                           ; $4dd7: $88
	adc  b                                           ; $4dd8: $88
	adc  b                                           ; $4dd9: $88
	adc  b                                           ; $4dda: $88
	adc  b                                           ; $4ddb: $88
	adc  b                                           ; $4ddc: $88
	adc  b                                           ; $4ddd: $88
	adc  b                                           ; $4dde: $88
	adc  b                                           ; $4ddf: $88
	adc  b                                           ; $4de0: $88
	adc  b                                           ; $4de1: $88
	adc  b                                           ; $4de2: $88
	adc  b                                           ; $4de3: $88
	adc  b                                           ; $4de4: $88
	adc  b                                           ; $4de5: $88
	adc  b                                           ; $4de6: $88
	adc  b                                           ; $4de7: $88
	adc  b                                           ; $4de8: $88
	adc  b                                           ; $4de9: $88
	adc  b                                           ; $4dea: $88
	adc  b                                           ; $4deb: $88
	adc  b                                           ; $4dec: $88
	adc  b                                           ; $4ded: $88
	adc  b                                           ; $4dee: $88
	adc  b                                           ; $4def: $88
	adc  b                                           ; $4df0: $88
	adc  b                                           ; $4df1: $88
	adc  b                                           ; $4df2: $88
	adc  b                                           ; $4df3: $88
	adc  b                                           ; $4df4: $88
	adc  b                                           ; $4df5: $88
	adc  b                                           ; $4df6: $88
	adc  b                                           ; $4df7: $88
	adc  b                                           ; $4df8: $88
	adc  b                                           ; $4df9: $88
	adc  b                                           ; $4dfa: $88
	adc  b                                           ; $4dfb: $88
	adc  b                                           ; $4dfc: $88
	adc  b                                           ; $4dfd: $88
	adc  b                                           ; $4dfe: $88
	adc  b                                           ; $4dff: $88
	adc  b                                           ; $4e00: $88
	adc  b                                           ; $4e01: $88
	adc  b                                           ; $4e02: $88
	adc  b                                           ; $4e03: $88
	adc  b                                           ; $4e04: $88
	adc  b                                           ; $4e05: $88
	adc  b                                           ; $4e06: $88
	adc  b                                           ; $4e07: $88
	adc  b                                           ; $4e08: $88
	adc  b                                           ; $4e09: $88
	adc  b                                           ; $4e0a: $88
	adc  b                                           ; $4e0b: $88
	adc  b                                           ; $4e0c: $88
	adc  b                                           ; $4e0d: $88
	adc  b                                           ; $4e0e: $88
	adc  b                                           ; $4e0f: $88
	adc  b                                           ; $4e10: $88
	adc  b                                           ; $4e11: $88
	adc  b                                           ; $4e12: $88
	adc  b                                           ; $4e13: $88
	adc  b                                           ; $4e14: $88
	adc  b                                           ; $4e15: $88
	adc  b                                           ; $4e16: $88
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

Call_0ab_5696:
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

Call_0ab_5718:
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
	adc  b                                           ; $5961: $88
	adc  b                                           ; $5962: $88
	adc  b                                           ; $5963: $88
	adc  b                                           ; $5964: $88
	adc  b                                           ; $5965: $88
	adc  b                                           ; $5966: $88
	adc  b                                           ; $5967: $88
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
	adc  b                                           ; $597c: $88
	adc  b                                           ; $597d: $88
	adc  b                                           ; $597e: $88
	adc  b                                           ; $597f: $88
	adc  b                                           ; $5980: $88
	adc  b                                           ; $5981: $88
	adc  b                                           ; $5982: $88
	adc  b                                           ; $5983: $88
	adc  b                                           ; $5984: $88
	adc  b                                           ; $5985: $88
	adc  b                                           ; $5986: $88
	adc  b                                           ; $5987: $88
	adc  b                                           ; $5988: $88
	adc  b                                           ; $5989: $88
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	adc  b                                           ; $598c: $88
	adc  b                                           ; $598d: $88
	adc  b                                           ; $598e: $88
	adc  b                                           ; $598f: $88
	adc  b                                           ; $5990: $88
	adc  b                                           ; $5991: $88
	adc  b                                           ; $5992: $88
	adc  b                                           ; $5993: $88
	adc  b                                           ; $5994: $88
	adc  b                                           ; $5995: $88
	adc  b                                           ; $5996: $88
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88

Jump_0ab_5999:
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
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	adc  b                                           ; $59a6: $88
	adc  b                                           ; $59a7: $88
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
	adc  b                                           ; $59b2: $88
	adc  b                                           ; $59b3: $88
	adc  b                                           ; $59b4: $88
	adc  b                                           ; $59b5: $88
	adc  b                                           ; $59b6: $88
	adc  b                                           ; $59b7: $88
	adc  b                                           ; $59b8: $88
	adc  b                                           ; $59b9: $88
	adc  b                                           ; $59ba: $88
	adc  b                                           ; $59bb: $88
	adc  b                                           ; $59bc: $88
	adc  b                                           ; $59bd: $88
	adc  b                                           ; $59be: $88
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	adc  b                                           ; $59c1: $88
	adc  b                                           ; $59c2: $88
	adc  b                                           ; $59c3: $88
	adc  b                                           ; $59c4: $88
	adc  b                                           ; $59c5: $88
	adc  b                                           ; $59c6: $88
	adc  b                                           ; $59c7: $88
	adc  b                                           ; $59c8: $88
	adc  b                                           ; $59c9: $88
	adc  b                                           ; $59ca: $88
	adc  b                                           ; $59cb: $88
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  b                                           ; $59ce: $88
	adc  b                                           ; $59cf: $88
	adc  b                                           ; $59d0: $88
	adc  b                                           ; $59d1: $88
	adc  b                                           ; $59d2: $88
	adc  b                                           ; $59d3: $88
	adc  b                                           ; $59d4: $88
	adc  b                                           ; $59d5: $88
	adc  b                                           ; $59d6: $88
	adc  b                                           ; $59d7: $88
	adc  b                                           ; $59d8: $88
	adc  b                                           ; $59d9: $88
	adc  b                                           ; $59da: $88
	adc  b                                           ; $59db: $88
	adc  b                                           ; $59dc: $88
	adc  b                                           ; $59dd: $88
	adc  b                                           ; $59de: $88
	adc  b                                           ; $59df: $88
	adc  b                                           ; $59e0: $88
	adc  b                                           ; $59e1: $88
	adc  b                                           ; $59e2: $88
	adc  b                                           ; $59e3: $88
	adc  b                                           ; $59e4: $88
	adc  b                                           ; $59e5: $88
	adc  b                                           ; $59e6: $88
	adc  b                                           ; $59e7: $88
	adc  b                                           ; $59e8: $88
	adc  b                                           ; $59e9: $88
	adc  b                                           ; $59ea: $88
	adc  b                                           ; $59eb: $88
	adc  b                                           ; $59ec: $88
	adc  b                                           ; $59ed: $88
	adc  b                                           ; $59ee: $88
	adc  b                                           ; $59ef: $88
	adc  b                                           ; $59f0: $88
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	adc  b                                           ; $59f3: $88
	adc  b                                           ; $59f4: $88
	adc  b                                           ; $59f5: $88
	adc  b                                           ; $59f6: $88
	adc  b                                           ; $59f7: $88
	adc  b                                           ; $59f8: $88
	adc  b                                           ; $59f9: $88
	adc  b                                           ; $59fa: $88
	adc  b                                           ; $59fb: $88
	adc  b                                           ; $59fc: $88
	adc  b                                           ; $59fd: $88
	adc  b                                           ; $59fe: $88
	adc  b                                           ; $59ff: $88
	adc  b                                           ; $5a00: $88
	adc  b                                           ; $5a01: $88
	adc  b                                           ; $5a02: $88
	adc  b                                           ; $5a03: $88
	adc  b                                           ; $5a04: $88
	adc  b                                           ; $5a05: $88
	adc  b                                           ; $5a06: $88
	adc  b                                           ; $5a07: $88
	adc  b                                           ; $5a08: $88
	adc  b                                           ; $5a09: $88
	adc  b                                           ; $5a0a: $88
	adc  b                                           ; $5a0b: $88
	adc  b                                           ; $5a0c: $88
	adc  b                                           ; $5a0d: $88
	adc  b                                           ; $5a0e: $88
	adc  b                                           ; $5a0f: $88
	adc  b                                           ; $5a10: $88
	adc  b                                           ; $5a11: $88
	adc  b                                           ; $5a12: $88
	adc  b                                           ; $5a13: $88
	adc  b                                           ; $5a14: $88
	adc  b                                           ; $5a15: $88
	adc  b                                           ; $5a16: $88
	adc  b                                           ; $5a17: $88
	adc  b                                           ; $5a18: $88
	adc  b                                           ; $5a19: $88
	adc  b                                           ; $5a1a: $88
	adc  b                                           ; $5a1b: $88
	adc  b                                           ; $5a1c: $88
	adc  b                                           ; $5a1d: $88
	adc  b                                           ; $5a1e: $88
	adc  b                                           ; $5a1f: $88
	adc  b                                           ; $5a20: $88
	adc  b                                           ; $5a21: $88
	adc  b                                           ; $5a22: $88
	adc  b                                           ; $5a23: $88
	adc  b                                           ; $5a24: $88
	adc  b                                           ; $5a25: $88
	adc  b                                           ; $5a26: $88
	adc  b                                           ; $5a27: $88
	adc  b                                           ; $5a28: $88
	adc  b                                           ; $5a29: $88
	adc  b                                           ; $5a2a: $88
	adc  b                                           ; $5a2b: $88
	adc  b                                           ; $5a2c: $88
	adc  b                                           ; $5a2d: $88
	adc  b                                           ; $5a2e: $88
	adc  b                                           ; $5a2f: $88
	adc  b                                           ; $5a30: $88
	adc  b                                           ; $5a31: $88
	adc  b                                           ; $5a32: $88
	adc  b                                           ; $5a33: $88
	adc  b                                           ; $5a34: $88
	adc  b                                           ; $5a35: $88
	adc  b                                           ; $5a36: $88
	adc  b                                           ; $5a37: $88
	adc  b                                           ; $5a38: $88
	adc  b                                           ; $5a39: $88
	adc  b                                           ; $5a3a: $88
	adc  b                                           ; $5a3b: $88
	adc  b                                           ; $5a3c: $88
	adc  b                                           ; $5a3d: $88
	adc  b                                           ; $5a3e: $88
	adc  b                                           ; $5a3f: $88
	adc  b                                           ; $5a40: $88
	adc  b                                           ; $5a41: $88
	adc  b                                           ; $5a42: $88
	adc  b                                           ; $5a43: $88
	adc  b                                           ; $5a44: $88
	adc  b                                           ; $5a45: $88
	adc  b                                           ; $5a46: $88
	adc  b                                           ; $5a47: $88
	adc  b                                           ; $5a48: $88
	adc  b                                           ; $5a49: $88
	adc  b                                           ; $5a4a: $88
	adc  b                                           ; $5a4b: $88
	adc  b                                           ; $5a4c: $88
	adc  b                                           ; $5a4d: $88
	adc  b                                           ; $5a4e: $88
	adc  b                                           ; $5a4f: $88
	adc  b                                           ; $5a50: $88
	adc  b                                           ; $5a51: $88
	adc  b                                           ; $5a52: $88
	adc  b                                           ; $5a53: $88
	adc  b                                           ; $5a54: $88
	adc  b                                           ; $5a55: $88
	adc  b                                           ; $5a56: $88
	adc  b                                           ; $5a57: $88
	adc  b                                           ; $5a58: $88
	adc  b                                           ; $5a59: $88
	adc  b                                           ; $5a5a: $88
	adc  b                                           ; $5a5b: $88
	adc  b                                           ; $5a5c: $88
	adc  b                                           ; $5a5d: $88
	adc  b                                           ; $5a5e: $88
	adc  b                                           ; $5a5f: $88
	adc  b                                           ; $5a60: $88
	adc  b                                           ; $5a61: $88
	adc  b                                           ; $5a62: $88
	adc  b                                           ; $5a63: $88
	adc  b                                           ; $5a64: $88
	adc  b                                           ; $5a65: $88
	adc  b                                           ; $5a66: $88
	adc  b                                           ; $5a67: $88
	adc  b                                           ; $5a68: $88
	adc  b                                           ; $5a69: $88
	adc  b                                           ; $5a6a: $88
	adc  b                                           ; $5a6b: $88
	adc  b                                           ; $5a6c: $88
	adc  b                                           ; $5a6d: $88
	adc  b                                           ; $5a6e: $88
	adc  b                                           ; $5a6f: $88
	adc  b                                           ; $5a70: $88
	adc  b                                           ; $5a71: $88
	adc  b                                           ; $5a72: $88
	adc  b                                           ; $5a73: $88
	adc  b                                           ; $5a74: $88
	adc  b                                           ; $5a75: $88
	adc  b                                           ; $5a76: $88
	adc  b                                           ; $5a77: $88
	adc  b                                           ; $5a78: $88
	adc  b                                           ; $5a79: $88
	adc  b                                           ; $5a7a: $88
	adc  b                                           ; $5a7b: $88
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
	adc  b                                           ; $5a86: $88
	adc  b                                           ; $5a87: $88
	adc  b                                           ; $5a88: $88
	adc  b                                           ; $5a89: $88
	adc  b                                           ; $5a8a: $88
	adc  b                                           ; $5a8b: $88
	adc  b                                           ; $5a8c: $88
	adc  b                                           ; $5a8d: $88
	adc  b                                           ; $5a8e: $88
	adc  b                                           ; $5a8f: $88
	adc  b                                           ; $5a90: $88
	adc  b                                           ; $5a91: $88
	adc  b                                           ; $5a92: $88
	adc  b                                           ; $5a93: $88
	adc  b                                           ; $5a94: $88
	adc  b                                           ; $5a95: $88
	adc  b                                           ; $5a96: $88

Jump_0ab_5a97:
	adc  b                                           ; $5a97: $88
	adc  b                                           ; $5a98: $88
	adc  b                                           ; $5a99: $88
	adc  b                                           ; $5a9a: $88
	adc  b                                           ; $5a9b: $88
	adc  b                                           ; $5a9c: $88
	adc  b                                           ; $5a9d: $88
	adc  b                                           ; $5a9e: $88
	adc  b                                           ; $5a9f: $88
	adc  b                                           ; $5aa0: $88
	adc  b                                           ; $5aa1: $88
	adc  b                                           ; $5aa2: $88
	adc  b                                           ; $5aa3: $88
	adc  b                                           ; $5aa4: $88
	adc  b                                           ; $5aa5: $88
	adc  b                                           ; $5aa6: $88
	adc  b                                           ; $5aa7: $88
	adc  b                                           ; $5aa8: $88
	adc  b                                           ; $5aa9: $88
	adc  b                                           ; $5aaa: $88
	adc  b                                           ; $5aab: $88
	adc  b                                           ; $5aac: $88
	adc  b                                           ; $5aad: $88
	adc  b                                           ; $5aae: $88
	adc  b                                           ; $5aaf: $88
	adc  b                                           ; $5ab0: $88
	adc  b                                           ; $5ab1: $88
	adc  b                                           ; $5ab2: $88
	adc  b                                           ; $5ab3: $88
	adc  b                                           ; $5ab4: $88
	adc  b                                           ; $5ab5: $88
	adc  b                                           ; $5ab6: $88
	adc  b                                           ; $5ab7: $88
	adc  b                                           ; $5ab8: $88
	adc  b                                           ; $5ab9: $88
	adc  b                                           ; $5aba: $88
	adc  b                                           ; $5abb: $88
	adc  b                                           ; $5abc: $88
	adc  b                                           ; $5abd: $88
	adc  b                                           ; $5abe: $88
	adc  b                                           ; $5abf: $88
	adc  b                                           ; $5ac0: $88
	adc  b                                           ; $5ac1: $88
	adc  b                                           ; $5ac2: $88
	adc  b                                           ; $5ac3: $88
	adc  b                                           ; $5ac4: $88
	adc  b                                           ; $5ac5: $88
	adc  b                                           ; $5ac6: $88
	adc  b                                           ; $5ac7: $88
	adc  b                                           ; $5ac8: $88
	adc  b                                           ; $5ac9: $88
	adc  b                                           ; $5aca: $88
	adc  b                                           ; $5acb: $88
	adc  b                                           ; $5acc: $88
	adc  b                                           ; $5acd: $88
	adc  b                                           ; $5ace: $88
	adc  b                                           ; $5acf: $88
	adc  b                                           ; $5ad0: $88
	adc  b                                           ; $5ad1: $88
	adc  b                                           ; $5ad2: $88
	adc  b                                           ; $5ad3: $88
	adc  b                                           ; $5ad4: $88
	adc  b                                           ; $5ad5: $88
	adc  b                                           ; $5ad6: $88
	adc  b                                           ; $5ad7: $88
	adc  b                                           ; $5ad8: $88
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
	adc  b                                           ; $5b0d: $88
	adc  b                                           ; $5b0e: $88
	adc  b                                           ; $5b0f: $88
	adc  b                                           ; $5b10: $88
	adc  b                                           ; $5b11: $88
	adc  b                                           ; $5b12: $88
	adc  b                                           ; $5b13: $88
	adc  b                                           ; $5b14: $88
	adc  b                                           ; $5b15: $88
	adc  b                                           ; $5b16: $88
	adc  b                                           ; $5b17: $88
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
	adc  b                                           ; $5ec7: $88
	adc  b                                           ; $5ec8: $88
	adc  b                                           ; $5ec9: $88
	adc  b                                           ; $5eca: $88
	adc  b                                           ; $5ecb: $88
	adc  b                                           ; $5ecc: $88
	adc  b                                           ; $5ecd: $88
	adc  b                                           ; $5ece: $88
	adc  b                                           ; $5ecf: $88
	adc  b                                           ; $5ed0: $88
	adc  b                                           ; $5ed1: $88
	adc  b                                           ; $5ed2: $88
	adc  b                                           ; $5ed3: $88
	adc  b                                           ; $5ed4: $88
	adc  b                                           ; $5ed5: $88
	adc  b                                           ; $5ed6: $88
	adc  b                                           ; $5ed7: $88
	adc  b                                           ; $5ed8: $88
	adc  b                                           ; $5ed9: $88
	adc  b                                           ; $5eda: $88
	adc  b                                           ; $5edb: $88
	adc  b                                           ; $5edc: $88
	adc  b                                           ; $5edd: $88
	adc  b                                           ; $5ede: $88
	adc  b                                           ; $5edf: $88
	adc  b                                           ; $5ee0: $88
	adc  b                                           ; $5ee1: $88
	adc  b                                           ; $5ee2: $88
	adc  b                                           ; $5ee3: $88
	adc  b                                           ; $5ee4: $88
	adc  b                                           ; $5ee5: $88
	adc  b                                           ; $5ee6: $88
	adc  b                                           ; $5ee7: $88
	adc  b                                           ; $5ee8: $88
	adc  b                                           ; $5ee9: $88
	adc  b                                           ; $5eea: $88
	adc  b                                           ; $5eeb: $88
	adc  b                                           ; $5eec: $88
	adc  b                                           ; $5eed: $88
	adc  b                                           ; $5eee: $88
	adc  b                                           ; $5eef: $88
	adc  b                                           ; $5ef0: $88
	adc  b                                           ; $5ef1: $88
	adc  b                                           ; $5ef2: $88
	adc  b                                           ; $5ef3: $88
	adc  b                                           ; $5ef4: $88
	adc  b                                           ; $5ef5: $88
	adc  b                                           ; $5ef6: $88
	adc  b                                           ; $5ef7: $88
	adc  b                                           ; $5ef8: $88
	adc  b                                           ; $5ef9: $88
	adc  b                                           ; $5efa: $88
	adc  b                                           ; $5efb: $88
	adc  b                                           ; $5efc: $88
	adc  b                                           ; $5efd: $88
	adc  b                                           ; $5efe: $88
	adc  b                                           ; $5eff: $88
	adc  b                                           ; $5f00: $88
	adc  b                                           ; $5f01: $88
	adc  b                                           ; $5f02: $88
	adc  b                                           ; $5f03: $88
	adc  b                                           ; $5f04: $88
	adc  b                                           ; $5f05: $88
	adc  b                                           ; $5f06: $88
	adc  b                                           ; $5f07: $88
	adc  b                                           ; $5f08: $88
	adc  b                                           ; $5f09: $88
	adc  b                                           ; $5f0a: $88
	adc  b                                           ; $5f0b: $88
	adc  b                                           ; $5f0c: $88
	adc  b                                           ; $5f0d: $88
	adc  b                                           ; $5f0e: $88
	adc  b                                           ; $5f0f: $88
	adc  b                                           ; $5f10: $88
	adc  b                                           ; $5f11: $88
	adc  b                                           ; $5f12: $88
	adc  b                                           ; $5f13: $88
	adc  b                                           ; $5f14: $88
	adc  b                                           ; $5f15: $88
	adc  b                                           ; $5f16: $88
	adc  b                                           ; $5f17: $88
	adc  b                                           ; $5f18: $88
	adc  b                                           ; $5f19: $88
	adc  b                                           ; $5f1a: $88
	adc  b                                           ; $5f1b: $88
	adc  b                                           ; $5f1c: $88
	adc  b                                           ; $5f1d: $88
	adc  b                                           ; $5f1e: $88
	adc  b                                           ; $5f1f: $88
	adc  b                                           ; $5f20: $88
	adc  b                                           ; $5f21: $88
	adc  b                                           ; $5f22: $88
	adc  b                                           ; $5f23: $88
	adc  b                                           ; $5f24: $88
	adc  b                                           ; $5f25: $88
	adc  b                                           ; $5f26: $88
	adc  b                                           ; $5f27: $88
	adc  b                                           ; $5f28: $88
	adc  b                                           ; $5f29: $88
	adc  b                                           ; $5f2a: $88
	adc  b                                           ; $5f2b: $88
	adc  b                                           ; $5f2c: $88
	adc  b                                           ; $5f2d: $88
	adc  b                                           ; $5f2e: $88
	adc  b                                           ; $5f2f: $88
	adc  b                                           ; $5f30: $88
	adc  b                                           ; $5f31: $88
	adc  b                                           ; $5f32: $88
	adc  b                                           ; $5f33: $88
	adc  b                                           ; $5f34: $88
	adc  b                                           ; $5f35: $88
	adc  b                                           ; $5f36: $88
	adc  b                                           ; $5f37: $88
	adc  b                                           ; $5f38: $88
	adc  b                                           ; $5f39: $88
	adc  b                                           ; $5f3a: $88
	adc  b                                           ; $5f3b: $88
	adc  b                                           ; $5f3c: $88
	adc  b                                           ; $5f3d: $88
	adc  b                                           ; $5f3e: $88
	adc  b                                           ; $5f3f: $88
	adc  b                                           ; $5f40: $88
	adc  b                                           ; $5f41: $88
	adc  b                                           ; $5f42: $88
	adc  b                                           ; $5f43: $88
	adc  b                                           ; $5f44: $88
	adc  b                                           ; $5f45: $88
	adc  b                                           ; $5f46: $88
	adc  b                                           ; $5f47: $88
	adc  b                                           ; $5f48: $88
	adc  b                                           ; $5f49: $88
	adc  b                                           ; $5f4a: $88
	adc  b                                           ; $5f4b: $88
	adc  b                                           ; $5f4c: $88
	adc  b                                           ; $5f4d: $88
	adc  b                                           ; $5f4e: $88
	adc  b                                           ; $5f4f: $88
	adc  b                                           ; $5f50: $88
	adc  b                                           ; $5f51: $88
	adc  b                                           ; $5f52: $88
	adc  b                                           ; $5f53: $88
	adc  b                                           ; $5f54: $88
	adc  b                                           ; $5f55: $88
	adc  b                                           ; $5f56: $88
	adc  b                                           ; $5f57: $88
	adc  b                                           ; $5f58: $88
	adc  b                                           ; $5f59: $88
	adc  b                                           ; $5f5a: $88
	adc  b                                           ; $5f5b: $88
	adc  b                                           ; $5f5c: $88
	adc  b                                           ; $5f5d: $88
	adc  b                                           ; $5f5e: $88
	adc  b                                           ; $5f5f: $88
	adc  b                                           ; $5f60: $88
	adc  b                                           ; $5f61: $88
	adc  b                                           ; $5f62: $88
	adc  b                                           ; $5f63: $88
	adc  b                                           ; $5f64: $88
	adc  b                                           ; $5f65: $88
	adc  b                                           ; $5f66: $88
	adc  b                                           ; $5f67: $88
	adc  b                                           ; $5f68: $88
	adc  b                                           ; $5f69: $88
	adc  b                                           ; $5f6a: $88
	adc  b                                           ; $5f6b: $88
	adc  b                                           ; $5f6c: $88
	adc  b                                           ; $5f6d: $88
	adc  b                                           ; $5f6e: $88
	adc  b                                           ; $5f6f: $88
	adc  b                                           ; $5f70: $88
	adc  b                                           ; $5f71: $88
	adc  b                                           ; $5f72: $88
	adc  b                                           ; $5f73: $88
	adc  b                                           ; $5f74: $88
	adc  b                                           ; $5f75: $88
	adc  b                                           ; $5f76: $88
	adc  b                                           ; $5f77: $88
	adc  b                                           ; $5f78: $88
	adc  b                                           ; $5f79: $88
	adc  b                                           ; $5f7a: $88
	adc  b                                           ; $5f7b: $88
	adc  b                                           ; $5f7c: $88
	adc  b                                           ; $5f7d: $88
	adc  b                                           ; $5f7e: $88
	adc  b                                           ; $5f7f: $88
	adc  b                                           ; $5f80: $88
	adc  b                                           ; $5f81: $88
	adc  b                                           ; $5f82: $88
	adc  b                                           ; $5f83: $88
	adc  b                                           ; $5f84: $88
	adc  b                                           ; $5f85: $88
	adc  b                                           ; $5f86: $88
	adc  b                                           ; $5f87: $88
	adc  b                                           ; $5f88: $88
	adc  b                                           ; $5f89: $88
	adc  b                                           ; $5f8a: $88
	adc  b                                           ; $5f8b: $88
	adc  b                                           ; $5f8c: $88
	adc  b                                           ; $5f8d: $88
	adc  b                                           ; $5f8e: $88
	adc  b                                           ; $5f8f: $88
	adc  b                                           ; $5f90: $88
	adc  b                                           ; $5f91: $88
	adc  b                                           ; $5f92: $88
	adc  b                                           ; $5f93: $88
	adc  b                                           ; $5f94: $88
	adc  b                                           ; $5f95: $88
	adc  b                                           ; $5f96: $88
	adc  b                                           ; $5f97: $88
	adc  b                                           ; $5f98: $88
	adc  b                                           ; $5f99: $88
	adc  b                                           ; $5f9a: $88
	adc  b                                           ; $5f9b: $88
	adc  b                                           ; $5f9c: $88
	adc  b                                           ; $5f9d: $88
	adc  b                                           ; $5f9e: $88
	adc  b                                           ; $5f9f: $88
	adc  b                                           ; $5fa0: $88
	adc  b                                           ; $5fa1: $88
	adc  b                                           ; $5fa2: $88
	adc  b                                           ; $5fa3: $88
	adc  b                                           ; $5fa4: $88
	adc  b                                           ; $5fa5: $88
	adc  b                                           ; $5fa6: $88
	adc  b                                           ; $5fa7: $88
	adc  b                                           ; $5fa8: $88
	adc  b                                           ; $5fa9: $88
	adc  b                                           ; $5faa: $88
	adc  b                                           ; $5fab: $88
	adc  b                                           ; $5fac: $88
	adc  b                                           ; $5fad: $88
	adc  b                                           ; $5fae: $88
	adc  b                                           ; $5faf: $88
	adc  b                                           ; $5fb0: $88
	adc  b                                           ; $5fb1: $88
	adc  b                                           ; $5fb2: $88
	adc  b                                           ; $5fb3: $88
	adc  b                                           ; $5fb4: $88
	adc  b                                           ; $5fb5: $88
	adc  b                                           ; $5fb6: $88
	adc  b                                           ; $5fb7: $88
	adc  b                                           ; $5fb8: $88
	adc  b                                           ; $5fb9: $88
	adc  b                                           ; $5fba: $88
	adc  b                                           ; $5fbb: $88
	adc  b                                           ; $5fbc: $88
	adc  b                                           ; $5fbd: $88
	adc  b                                           ; $5fbe: $88
	adc  b                                           ; $5fbf: $88
	adc  b                                           ; $5fc0: $88
	adc  b                                           ; $5fc1: $88
	adc  b                                           ; $5fc2: $88
	adc  b                                           ; $5fc3: $88
	adc  b                                           ; $5fc4: $88
	adc  b                                           ; $5fc5: $88
	adc  b                                           ; $5fc6: $88
	adc  b                                           ; $5fc7: $88
	adc  b                                           ; $5fc8: $88
	adc  b                                           ; $5fc9: $88
	adc  b                                           ; $5fca: $88
	adc  b                                           ; $5fcb: $88
	adc  b                                           ; $5fcc: $88
	adc  b                                           ; $5fcd: $88
	adc  b                                           ; $5fce: $88
	adc  b                                           ; $5fcf: $88
	adc  b                                           ; $5fd0: $88
	adc  b                                           ; $5fd1: $88
	adc  b                                           ; $5fd2: $88
	adc  b                                           ; $5fd3: $88
	adc  b                                           ; $5fd4: $88
	adc  b                                           ; $5fd5: $88
	adc  b                                           ; $5fd6: $88
	adc  b                                           ; $5fd7: $88
	adc  b                                           ; $5fd8: $88
	adc  b                                           ; $5fd9: $88
	adc  b                                           ; $5fda: $88
	adc  b                                           ; $5fdb: $88
	adc  b                                           ; $5fdc: $88
	adc  b                                           ; $5fdd: $88
	adc  b                                           ; $5fde: $88
	adc  b                                           ; $5fdf: $88
	adc  b                                           ; $5fe0: $88
	adc  b                                           ; $5fe1: $88
	adc  b                                           ; $5fe2: $88
	adc  b                                           ; $5fe3: $88
	adc  b                                           ; $5fe4: $88
	adc  b                                           ; $5fe5: $88
	adc  b                                           ; $5fe6: $88
	adc  b                                           ; $5fe7: $88
	adc  b                                           ; $5fe8: $88
	adc  b                                           ; $5fe9: $88
	adc  b                                           ; $5fea: $88
	adc  b                                           ; $5feb: $88
	adc  b                                           ; $5fec: $88
	adc  b                                           ; $5fed: $88
	adc  b                                           ; $5fee: $88
	adc  b                                           ; $5fef: $88
	adc  b                                           ; $5ff0: $88
	adc  b                                           ; $5ff1: $88
	adc  b                                           ; $5ff2: $88
	adc  b                                           ; $5ff3: $88
	adc  b                                           ; $5ff4: $88
	adc  b                                           ; $5ff5: $88
	adc  b                                           ; $5ff6: $88
	adc  b                                           ; $5ff7: $88
	adc  b                                           ; $5ff8: $88
	adc  b                                           ; $5ff9: $88
	adc  b                                           ; $5ffa: $88
	adc  b                                           ; $5ffb: $88
	adc  b                                           ; $5ffc: $88
	adc  b                                           ; $5ffd: $88
	adc  b                                           ; $5ffe: $88
	adc  b                                           ; $5fff: $88
	adc  b                                           ; $6000: $88
	adc  b                                           ; $6001: $88
	adc  b                                           ; $6002: $88
	adc  b                                           ; $6003: $88
	adc  b                                           ; $6004: $88
	adc  b                                           ; $6005: $88
	adc  b                                           ; $6006: $88
	adc  b                                           ; $6007: $88
	adc  b                                           ; $6008: $88
	adc  b                                           ; $6009: $88
	adc  b                                           ; $600a: $88
	adc  b                                           ; $600b: $88
	adc  b                                           ; $600c: $88
	adc  b                                           ; $600d: $88
	adc  b                                           ; $600e: $88
	adc  b                                           ; $600f: $88
	adc  b                                           ; $6010: $88
	adc  b                                           ; $6011: $88
	adc  b                                           ; $6012: $88
	adc  b                                           ; $6013: $88
	adc  b                                           ; $6014: $88
	adc  b                                           ; $6015: $88
	adc  b                                           ; $6016: $88
	adc  b                                           ; $6017: $88
	adc  b                                           ; $6018: $88
	adc  b                                           ; $6019: $88
	adc  b                                           ; $601a: $88
	adc  b                                           ; $601b: $88
	adc  b                                           ; $601c: $88
	adc  b                                           ; $601d: $88
	adc  b                                           ; $601e: $88
	adc  b                                           ; $601f: $88
	adc  b                                           ; $6020: $88
	adc  b                                           ; $6021: $88
	adc  b                                           ; $6022: $88
	adc  b                                           ; $6023: $88
	adc  b                                           ; $6024: $88
	adc  b                                           ; $6025: $88
	adc  b                                           ; $6026: $88
	adc  b                                           ; $6027: $88
	adc  b                                           ; $6028: $88
	adc  b                                           ; $6029: $88
	adc  b                                           ; $602a: $88
	adc  b                                           ; $602b: $88
	adc  b                                           ; $602c: $88
	adc  b                                           ; $602d: $88
	adc  b                                           ; $602e: $88
	adc  b                                           ; $602f: $88
	adc  b                                           ; $6030: $88
	adc  b                                           ; $6031: $88
	adc  b                                           ; $6032: $88
	adc  b                                           ; $6033: $88
	adc  b                                           ; $6034: $88
	adc  b                                           ; $6035: $88
	adc  b                                           ; $6036: $88
	adc  b                                           ; $6037: $88
	adc  b                                           ; $6038: $88
	adc  b                                           ; $6039: $88
	adc  b                                           ; $603a: $88
	adc  b                                           ; $603b: $88
	adc  b                                           ; $603c: $88
	adc  b                                           ; $603d: $88
	adc  b                                           ; $603e: $88
	adc  b                                           ; $603f: $88
	adc  b                                           ; $6040: $88
	adc  b                                           ; $6041: $88
	adc  b                                           ; $6042: $88
	adc  b                                           ; $6043: $88
	adc  b                                           ; $6044: $88
	adc  b                                           ; $6045: $88
	adc  b                                           ; $6046: $88
	adc  b                                           ; $6047: $88
	adc  b                                           ; $6048: $88
	adc  b                                           ; $6049: $88
	adc  b                                           ; $604a: $88
	adc  b                                           ; $604b: $88
	adc  b                                           ; $604c: $88
	adc  b                                           ; $604d: $88
	adc  b                                           ; $604e: $88
	adc  b                                           ; $604f: $88
	adc  b                                           ; $6050: $88
	adc  b                                           ; $6051: $88
	adc  b                                           ; $6052: $88
	adc  b                                           ; $6053: $88
	adc  b                                           ; $6054: $88
	adc  b                                           ; $6055: $88
	adc  b                                           ; $6056: $88
	adc  b                                           ; $6057: $88
	adc  b                                           ; $6058: $88
	adc  b                                           ; $6059: $88
	adc  b                                           ; $605a: $88
	adc  b                                           ; $605b: $88
	adc  b                                           ; $605c: $88
	adc  b                                           ; $605d: $88
	adc  b                                           ; $605e: $88
	adc  b                                           ; $605f: $88
	adc  b                                           ; $6060: $88
	adc  b                                           ; $6061: $88
	adc  b                                           ; $6062: $88
	adc  b                                           ; $6063: $88
	adc  b                                           ; $6064: $88
	adc  b                                           ; $6065: $88
	adc  b                                           ; $6066: $88
	adc  b                                           ; $6067: $88
	adc  b                                           ; $6068: $88
	adc  b                                           ; $6069: $88
	adc  b                                           ; $606a: $88
	adc  b                                           ; $606b: $88
	adc  b                                           ; $606c: $88
	adc  b                                           ; $606d: $88
	adc  b                                           ; $606e: $88
	adc  b                                           ; $606f: $88
	adc  b                                           ; $6070: $88
	adc  b                                           ; $6071: $88
	adc  b                                           ; $6072: $88
	adc  b                                           ; $6073: $88
	adc  b                                           ; $6074: $88
	adc  b                                           ; $6075: $88
	adc  b                                           ; $6076: $88
	adc  b                                           ; $6077: $88
	adc  b                                           ; $6078: $88
	adc  b                                           ; $6079: $88
	adc  b                                           ; $607a: $88
	adc  b                                           ; $607b: $88
	adc  b                                           ; $607c: $88
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	adc  b                                           ; $607f: $88
	adc  b                                           ; $6080: $88
	adc  b                                           ; $6081: $88
	adc  b                                           ; $6082: $88
	adc  b                                           ; $6083: $88
	adc  b                                           ; $6084: $88
	adc  b                                           ; $6085: $88
	adc  b                                           ; $6086: $88
	adc  b                                           ; $6087: $88
	adc  b                                           ; $6088: $88
	adc  b                                           ; $6089: $88
	adc  b                                           ; $608a: $88
	adc  b                                           ; $608b: $88
	adc  b                                           ; $608c: $88
	adc  b                                           ; $608d: $88
	adc  b                                           ; $608e: $88
	adc  b                                           ; $608f: $88
	adc  b                                           ; $6090: $88
	adc  b                                           ; $6091: $88
	adc  b                                           ; $6092: $88
	adc  b                                           ; $6093: $88
	adc  b                                           ; $6094: $88
	adc  b                                           ; $6095: $88
	adc  b                                           ; $6096: $88
	adc  b                                           ; $6097: $88
	adc  b                                           ; $6098: $88
	adc  b                                           ; $6099: $88
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	adc  b                                           ; $609c: $88
	adc  b                                           ; $609d: $88
	adc  b                                           ; $609e: $88
	adc  b                                           ; $609f: $88
	adc  b                                           ; $60a0: $88
	adc  b                                           ; $60a1: $88
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	adc  b                                           ; $60a4: $88
	adc  b                                           ; $60a5: $88
	adc  b                                           ; $60a6: $88
	adc  b                                           ; $60a7: $88
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  b                                           ; $60ab: $88
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	adc  b                                           ; $60b2: $88
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	adc  b                                           ; $60b5: $88
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	adc  b                                           ; $60b8: $88
	adc  b                                           ; $60b9: $88
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	adc  b                                           ; $60bd: $88
	adc  b                                           ; $60be: $88
	adc  b                                           ; $60bf: $88
	adc  b                                           ; $60c0: $88
	adc  b                                           ; $60c1: $88
	adc  b                                           ; $60c2: $88
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	adc  b                                           ; $60c6: $88
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	adc  b                                           ; $60ca: $88
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	adc  b                                           ; $60ce: $88
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	adc  b                                           ; $60d6: $88
	adc  b                                           ; $60d7: $88
	adc  b                                           ; $60d8: $88
	adc  b                                           ; $60d9: $88
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	adc  b                                           ; $60dc: $88
	adc  b                                           ; $60dd: $88
	adc  b                                           ; $60de: $88
	adc  b                                           ; $60df: $88
	adc  b                                           ; $60e0: $88
	adc  b                                           ; $60e1: $88
	adc  b                                           ; $60e2: $88
	adc  b                                           ; $60e3: $88
	adc  b                                           ; $60e4: $88
	adc  b                                           ; $60e5: $88
	adc  b                                           ; $60e6: $88
	adc  b                                           ; $60e7: $88
	adc  b                                           ; $60e8: $88
	adc  b                                           ; $60e9: $88
	adc  b                                           ; $60ea: $88
	adc  b                                           ; $60eb: $88
	adc  b                                           ; $60ec: $88
	adc  b                                           ; $60ed: $88
	adc  b                                           ; $60ee: $88
	adc  b                                           ; $60ef: $88
	adc  b                                           ; $60f0: $88
	adc  b                                           ; $60f1: $88
	adc  b                                           ; $60f2: $88
	adc  b                                           ; $60f3: $88
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	adc  b                                           ; $60f9: $88
	adc  b                                           ; $60fa: $88
	adc  b                                           ; $60fb: $88
	adc  b                                           ; $60fc: $88
	adc  b                                           ; $60fd: $88
	adc  b                                           ; $60fe: $88
	adc  b                                           ; $60ff: $88
	adc  b                                           ; $6100: $88
	adc  b                                           ; $6101: $88
	adc  b                                           ; $6102: $88
	adc  b                                           ; $6103: $88
	adc  b                                           ; $6104: $88
	adc  b                                           ; $6105: $88
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	adc  b                                           ; $6108: $88
	adc  b                                           ; $6109: $88
	adc  b                                           ; $610a: $88
	adc  b                                           ; $610b: $88
	adc  b                                           ; $610c: $88
	adc  b                                           ; $610d: $88
	adc  b                                           ; $610e: $88
	adc  b                                           ; $610f: $88
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
	adc  b                                           ; $6126: $88
	adc  b                                           ; $6127: $88
	adc  b                                           ; $6128: $88
	adc  b                                           ; $6129: $88
	adc  b                                           ; $612a: $88
	adc  b                                           ; $612b: $88
	adc  b                                           ; $612c: $88
	adc  b                                           ; $612d: $88
	adc  b                                           ; $612e: $88
	adc  b                                           ; $612f: $88
	adc  b                                           ; $6130: $88
	adc  b                                           ; $6131: $88
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
	adc  b                                           ; $613d: $88
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

Jump_0ab_615b:
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
	adc  b                                           ; $619e: $88
	adc  b                                           ; $619f: $88
	adc  b                                           ; $61a0: $88
	adc  b                                           ; $61a1: $88
	adc  b                                           ; $61a2: $88
	adc  b                                           ; $61a3: $88
	adc  b                                           ; $61a4: $88
	adc  b                                           ; $61a5: $88
	adc  b                                           ; $61a6: $88
	adc  b                                           ; $61a7: $88
	adc  b                                           ; $61a8: $88
	adc  b                                           ; $61a9: $88
	adc  b                                           ; $61aa: $88
	adc  b                                           ; $61ab: $88
	adc  b                                           ; $61ac: $88
	adc  b                                           ; $61ad: $88
	adc  b                                           ; $61ae: $88
	adc  b                                           ; $61af: $88
	adc  b                                           ; $61b0: $88
	adc  b                                           ; $61b1: $88
	adc  b                                           ; $61b2: $88
	adc  b                                           ; $61b3: $88
	adc  b                                           ; $61b4: $88
	adc  b                                           ; $61b5: $88
	adc  b                                           ; $61b6: $88
	adc  b                                           ; $61b7: $88
	adc  b                                           ; $61b8: $88
	adc  b                                           ; $61b9: $88

Jump_0ab_61ba:
	adc  b                                           ; $61ba: $88
	adc  b                                           ; $61bb: $88
	adc  b                                           ; $61bc: $88
	adc  b                                           ; $61bd: $88
	adc  b                                           ; $61be: $88
	adc  b                                           ; $61bf: $88
	adc  b                                           ; $61c0: $88
	adc  b                                           ; $61c1: $88
	adc  b                                           ; $61c2: $88
	adc  b                                           ; $61c3: $88
	adc  b                                           ; $61c4: $88
	adc  b                                           ; $61c5: $88
	adc  b                                           ; $61c6: $88
	adc  b                                           ; $61c7: $88
	adc  b                                           ; $61c8: $88
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
	adc  b                                           ; $61d3: $88
	adc  b                                           ; $61d4: $88
	adc  b                                           ; $61d5: $88
	adc  b                                           ; $61d6: $88
	adc  b                                           ; $61d7: $88
	adc  b                                           ; $61d8: $88
	adc  b                                           ; $61d9: $88
	adc  b                                           ; $61da: $88
	adc  b                                           ; $61db: $88
	adc  b                                           ; $61dc: $88
	adc  b                                           ; $61dd: $88
	adc  b                                           ; $61de: $88
	adc  b                                           ; $61df: $88
	adc  b                                           ; $61e0: $88
	adc  b                                           ; $61e1: $88
	adc  b                                           ; $61e2: $88
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
	adc  b                                           ; $63c1: $88
	adc  b                                           ; $63c2: $88
	adc  b                                           ; $63c3: $88
	adc  b                                           ; $63c4: $88
	adc  b                                           ; $63c5: $88
	adc  b                                           ; $63c6: $88
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	adc  b                                           ; $63c9: $88
	adc  b                                           ; $63ca: $88
	adc  b                                           ; $63cb: $88
	adc  b                                           ; $63cc: $88
	adc  b                                           ; $63cd: $88
	adc  b                                           ; $63ce: $88
	adc  b                                           ; $63cf: $88
	adc  b                                           ; $63d0: $88
	adc  b                                           ; $63d1: $88
	adc  b                                           ; $63d2: $88
	adc  b                                           ; $63d3: $88
	adc  b                                           ; $63d4: $88
	adc  b                                           ; $63d5: $88
	adc  b                                           ; $63d6: $88
	adc  b                                           ; $63d7: $88
	adc  b                                           ; $63d8: $88
	adc  b                                           ; $63d9: $88
	adc  b                                           ; $63da: $88
	adc  b                                           ; $63db: $88
	adc  b                                           ; $63dc: $88
	adc  b                                           ; $63dd: $88
	adc  b                                           ; $63de: $88
	adc  b                                           ; $63df: $88
	adc  b                                           ; $63e0: $88
	adc  b                                           ; $63e1: $88
	adc  b                                           ; $63e2: $88
	adc  b                                           ; $63e3: $88
	adc  b                                           ; $63e4: $88
	adc  b                                           ; $63e5: $88
	adc  b                                           ; $63e6: $88
	adc  b                                           ; $63e7: $88
	adc  b                                           ; $63e8: $88
	adc  b                                           ; $63e9: $88
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
	adc  b                                           ; $646f: $88
	adc  b                                           ; $6470: $88
	adc  b                                           ; $6471: $88
	adc  b                                           ; $6472: $88
	adc  b                                           ; $6473: $88
	adc  b                                           ; $6474: $88
	adc  b                                           ; $6475: $88
	adc  b                                           ; $6476: $88
	adc  b                                           ; $6477: $88
	adc  b                                           ; $6478: $88
	adc  b                                           ; $6479: $88
	adc  b                                           ; $647a: $88
	adc  b                                           ; $647b: $88
	adc  b                                           ; $647c: $88
	adc  b                                           ; $647d: $88
	adc  b                                           ; $647e: $88
	adc  b                                           ; $647f: $88
	adc  b                                           ; $6480: $88
	adc  b                                           ; $6481: $88
	adc  b                                           ; $6482: $88
	adc  b                                           ; $6483: $88
	adc  b                                           ; $6484: $88
	adc  b                                           ; $6485: $88
	adc  b                                           ; $6486: $88
	adc  b                                           ; $6487: $88
	adc  b                                           ; $6488: $88
	adc  b                                           ; $6489: $88
	adc  b                                           ; $648a: $88
	adc  b                                           ; $648b: $88
	adc  b                                           ; $648c: $88
	adc  b                                           ; $648d: $88
	adc  b                                           ; $648e: $88
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	adc  b                                           ; $6491: $88
	adc  b                                           ; $6492: $88
	adc  b                                           ; $6493: $88
	adc  b                                           ; $6494: $88
	adc  b                                           ; $6495: $88
	adc  b                                           ; $6496: $88
	adc  b                                           ; $6497: $88
	adc  b                                           ; $6498: $88
	adc  b                                           ; $6499: $88
	adc  b                                           ; $649a: $88
	adc  b                                           ; $649b: $88
	adc  b                                           ; $649c: $88
	adc  b                                           ; $649d: $88
	adc  b                                           ; $649e: $88
	adc  b                                           ; $649f: $88
	adc  b                                           ; $64a0: $88
	adc  b                                           ; $64a1: $88
	adc  b                                           ; $64a2: $88
	adc  b                                           ; $64a3: $88
	adc  b                                           ; $64a4: $88
	adc  b                                           ; $64a5: $88
	adc  b                                           ; $64a6: $88
	adc  b                                           ; $64a7: $88

Jump_0ab_64a8:
	adc  b                                           ; $64a8: $88
	adc  b                                           ; $64a9: $88
	adc  b                                           ; $64aa: $88
	adc  b                                           ; $64ab: $88
	adc  b                                           ; $64ac: $88
	adc  b                                           ; $64ad: $88
	adc  b                                           ; $64ae: $88
	adc  b                                           ; $64af: $88
	adc  b                                           ; $64b0: $88
	adc  b                                           ; $64b1: $88
	adc  b                                           ; $64b2: $88
	adc  b                                           ; $64b3: $88
	adc  b                                           ; $64b4: $88
	adc  b                                           ; $64b5: $88
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88
	adc  b                                           ; $64b8: $88
	adc  b                                           ; $64b9: $88
	adc  b                                           ; $64ba: $88
	adc  b                                           ; $64bb: $88
	adc  b                                           ; $64bc: $88
	adc  b                                           ; $64bd: $88
	adc  b                                           ; $64be: $88
	adc  b                                           ; $64bf: $88
	adc  b                                           ; $64c0: $88
	adc  b                                           ; $64c1: $88
	adc  b                                           ; $64c2: $88
	adc  b                                           ; $64c3: $88
	adc  b                                           ; $64c4: $88
	adc  b                                           ; $64c5: $88
	adc  b                                           ; $64c6: $88
	adc  b                                           ; $64c7: $88
	adc  b                                           ; $64c8: $88
	adc  b                                           ; $64c9: $88
	adc  b                                           ; $64ca: $88
	adc  b                                           ; $64cb: $88
	adc  b                                           ; $64cc: $88
	adc  b                                           ; $64cd: $88
	adc  b                                           ; $64ce: $88
	adc  b                                           ; $64cf: $88
	adc  b                                           ; $64d0: $88
	adc  b                                           ; $64d1: $88
	adc  b                                           ; $64d2: $88
	adc  b                                           ; $64d3: $88
	adc  b                                           ; $64d4: $88
	adc  b                                           ; $64d5: $88
	adc  b                                           ; $64d6: $88
	adc  b                                           ; $64d7: $88
	adc  b                                           ; $64d8: $88
	adc  b                                           ; $64d9: $88
	adc  b                                           ; $64da: $88
	adc  b                                           ; $64db: $88
	adc  b                                           ; $64dc: $88
	adc  b                                           ; $64dd: $88
	adc  b                                           ; $64de: $88
	adc  b                                           ; $64df: $88
	adc  b                                           ; $64e0: $88
	adc  b                                           ; $64e1: $88
	adc  b                                           ; $64e2: $88
	adc  b                                           ; $64e3: $88
	adc  b                                           ; $64e4: $88
	adc  b                                           ; $64e5: $88
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  b                                           ; $64ea: $88
	adc  b                                           ; $64eb: $88
	adc  b                                           ; $64ec: $88
	adc  b                                           ; $64ed: $88
	adc  b                                           ; $64ee: $88
	adc  b                                           ; $64ef: $88
	adc  b                                           ; $64f0: $88
	adc  b                                           ; $64f1: $88
	adc  b                                           ; $64f2: $88
	adc  b                                           ; $64f3: $88
	adc  b                                           ; $64f4: $88
	adc  b                                           ; $64f5: $88
	adc  b                                           ; $64f6: $88
	adc  b                                           ; $64f7: $88
	adc  b                                           ; $64f8: $88
	adc  b                                           ; $64f9: $88
	adc  b                                           ; $64fa: $88
	adc  b                                           ; $64fb: $88
	adc  b                                           ; $64fc: $88
	adc  b                                           ; $64fd: $88
	adc  b                                           ; $64fe: $88
	adc  b                                           ; $64ff: $88
	adc  b                                           ; $6500: $88
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	adc  b                                           ; $6503: $88
	adc  b                                           ; $6504: $88
	adc  b                                           ; $6505: $88
	adc  b                                           ; $6506: $88
	adc  b                                           ; $6507: $88
	adc  b                                           ; $6508: $88
	adc  b                                           ; $6509: $88
	adc  b                                           ; $650a: $88
	adc  b                                           ; $650b: $88
	adc  b                                           ; $650c: $88
	adc  b                                           ; $650d: $88
	adc  b                                           ; $650e: $88
	adc  b                                           ; $650f: $88
	adc  b                                           ; $6510: $88
	adc  b                                           ; $6511: $88
	adc  b                                           ; $6512: $88
	adc  b                                           ; $6513: $88
	adc  b                                           ; $6514: $88
	adc  b                                           ; $6515: $88
	adc  b                                           ; $6516: $88
	adc  b                                           ; $6517: $88
	adc  b                                           ; $6518: $88
	adc  b                                           ; $6519: $88
	adc  b                                           ; $651a: $88
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	adc  b                                           ; $651d: $88
	adc  b                                           ; $651e: $88
	adc  b                                           ; $651f: $88
	adc  b                                           ; $6520: $88
	adc  b                                           ; $6521: $88
	adc  b                                           ; $6522: $88
	adc  b                                           ; $6523: $88
	adc  b                                           ; $6524: $88
	adc  b                                           ; $6525: $88
	adc  b                                           ; $6526: $88
	adc  b                                           ; $6527: $88
	adc  b                                           ; $6528: $88
	adc  b                                           ; $6529: $88
	adc  b                                           ; $652a: $88
	adc  b                                           ; $652b: $88
	adc  b                                           ; $652c: $88
	adc  b                                           ; $652d: $88
	adc  b                                           ; $652e: $88
	adc  b                                           ; $652f: $88
	adc  b                                           ; $6530: $88
	adc  b                                           ; $6531: $88
	adc  b                                           ; $6532: $88
	adc  b                                           ; $6533: $88
	adc  b                                           ; $6534: $88
	adc  b                                           ; $6535: $88
	adc  b                                           ; $6536: $88
	adc  b                                           ; $6537: $88
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	adc  b                                           ; $653a: $88
	adc  b                                           ; $653b: $88
	adc  b                                           ; $653c: $88
	adc  b                                           ; $653d: $88
	adc  b                                           ; $653e: $88
	adc  b                                           ; $653f: $88
	adc  b                                           ; $6540: $88
	adc  b                                           ; $6541: $88
	adc  b                                           ; $6542: $88
	adc  b                                           ; $6543: $88
	adc  b                                           ; $6544: $88
	adc  b                                           ; $6545: $88
	adc  b                                           ; $6546: $88
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	adc  b                                           ; $6549: $88
	adc  b                                           ; $654a: $88
	adc  b                                           ; $654b: $88
	adc  b                                           ; $654c: $88
	adc  b                                           ; $654d: $88
	adc  b                                           ; $654e: $88
	adc  b                                           ; $654f: $88
	adc  b                                           ; $6550: $88
	adc  b                                           ; $6551: $88
	adc  b                                           ; $6552: $88
	adc  b                                           ; $6553: $88
	adc  b                                           ; $6554: $88
	adc  b                                           ; $6555: $88
	adc  b                                           ; $6556: $88
	adc  b                                           ; $6557: $88
	adc  b                                           ; $6558: $88
	adc  b                                           ; $6559: $88
	adc  b                                           ; $655a: $88
	adc  b                                           ; $655b: $88
	adc  b                                           ; $655c: $88
	adc  b                                           ; $655d: $88
	adc  b                                           ; $655e: $88
	adc  b                                           ; $655f: $88
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	adc  b                                           ; $6562: $88
	adc  b                                           ; $6563: $88
	adc  b                                           ; $6564: $88
	adc  b                                           ; $6565: $88
	adc  b                                           ; $6566: $88
	adc  b                                           ; $6567: $88
	adc  b                                           ; $6568: $88
	adc  b                                           ; $6569: $88
	adc  b                                           ; $656a: $88
	adc  b                                           ; $656b: $88
	adc  b                                           ; $656c: $88
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	adc  b                                           ; $656f: $88
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	adc  b                                           ; $6572: $88
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	adc  b                                           ; $6575: $88
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	adc  b                                           ; $6578: $88
	adc  b                                           ; $6579: $88
	adc  b                                           ; $657a: $88
	adc  b                                           ; $657b: $88
	adc  b                                           ; $657c: $88
	adc  b                                           ; $657d: $88
	adc  b                                           ; $657e: $88
	adc  b                                           ; $657f: $88
	adc  b                                           ; $6580: $88
	adc  b                                           ; $6581: $88
	adc  b                                           ; $6582: $88
	adc  b                                           ; $6583: $88
	adc  b                                           ; $6584: $88
	adc  b                                           ; $6585: $88
	adc  b                                           ; $6586: $88
	adc  b                                           ; $6587: $88
	adc  b                                           ; $6588: $88
	adc  b                                           ; $6589: $88
	adc  b                                           ; $658a: $88
	adc  b                                           ; $658b: $88
	adc  b                                           ; $658c: $88
	adc  b                                           ; $658d: $88
	adc  b                                           ; $658e: $88
	adc  b                                           ; $658f: $88
	adc  b                                           ; $6590: $88
	adc  b                                           ; $6591: $88
	adc  b                                           ; $6592: $88
	adc  b                                           ; $6593: $88
	adc  b                                           ; $6594: $88
	adc  b                                           ; $6595: $88
	adc  b                                           ; $6596: $88
	adc  b                                           ; $6597: $88
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	adc  b                                           ; $659a: $88
	adc  b                                           ; $659b: $88
	adc  b                                           ; $659c: $88
	adc  b                                           ; $659d: $88
	adc  b                                           ; $659e: $88
	adc  b                                           ; $659f: $88
	adc  b                                           ; $65a0: $88
	adc  b                                           ; $65a1: $88
	adc  b                                           ; $65a2: $88
	adc  b                                           ; $65a3: $88
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	adc  b                                           ; $65a6: $88
	adc  b                                           ; $65a7: $88
	adc  b                                           ; $65a8: $88
	adc  b                                           ; $65a9: $88
	adc  b                                           ; $65aa: $88
	adc  b                                           ; $65ab: $88
	adc  b                                           ; $65ac: $88
	adc  b                                           ; $65ad: $88
	adc  b                                           ; $65ae: $88
	adc  b                                           ; $65af: $88
	adc  b                                           ; $65b0: $88
	adc  b                                           ; $65b1: $88
	adc  b                                           ; $65b2: $88
	adc  b                                           ; $65b3: $88
	adc  b                                           ; $65b4: $88
	adc  b                                           ; $65b5: $88
	adc  b                                           ; $65b6: $88
	adc  b                                           ; $65b7: $88
	adc  b                                           ; $65b8: $88
	adc  b                                           ; $65b9: $88
	adc  b                                           ; $65ba: $88
	adc  b                                           ; $65bb: $88
	adc  b                                           ; $65bc: $88
	adc  b                                           ; $65bd: $88
	adc  b                                           ; $65be: $88
	adc  b                                           ; $65bf: $88
	adc  b                                           ; $65c0: $88
	adc  b                                           ; $65c1: $88
	adc  b                                           ; $65c2: $88
	adc  b                                           ; $65c3: $88
	adc  b                                           ; $65c4: $88
	adc  b                                           ; $65c5: $88
	adc  b                                           ; $65c6: $88
	adc  b                                           ; $65c7: $88
	adc  b                                           ; $65c8: $88
	adc  b                                           ; $65c9: $88
	adc  b                                           ; $65ca: $88
	adc  b                                           ; $65cb: $88
	adc  b                                           ; $65cc: $88
	adc  b                                           ; $65cd: $88
	adc  b                                           ; $65ce: $88
	adc  b                                           ; $65cf: $88
	adc  b                                           ; $65d0: $88
	adc  b                                           ; $65d1: $88
	adc  b                                           ; $65d2: $88
	adc  b                                           ; $65d3: $88
	adc  b                                           ; $65d4: $88
	adc  b                                           ; $65d5: $88
	adc  b                                           ; $65d6: $88
	adc  b                                           ; $65d7: $88
	adc  b                                           ; $65d8: $88
	adc  b                                           ; $65d9: $88
	adc  b                                           ; $65da: $88
	adc  b                                           ; $65db: $88
	adc  b                                           ; $65dc: $88
	adc  b                                           ; $65dd: $88
	adc  b                                           ; $65de: $88
	adc  b                                           ; $65df: $88
	adc  b                                           ; $65e0: $88
	adc  b                                           ; $65e1: $88
	adc  b                                           ; $65e2: $88
	adc  b                                           ; $65e3: $88
	adc  b                                           ; $65e4: $88
	adc  b                                           ; $65e5: $88
	adc  b                                           ; $65e6: $88
	adc  b                                           ; $65e7: $88
	adc  b                                           ; $65e8: $88
	adc  b                                           ; $65e9: $88
	adc  b                                           ; $65ea: $88
	adc  b                                           ; $65eb: $88
	adc  b                                           ; $65ec: $88
	adc  b                                           ; $65ed: $88
	adc  b                                           ; $65ee: $88
	adc  b                                           ; $65ef: $88
	adc  b                                           ; $65f0: $88
	adc  b                                           ; $65f1: $88
	adc  b                                           ; $65f2: $88
	adc  b                                           ; $65f3: $88
	adc  b                                           ; $65f4: $88
	adc  b                                           ; $65f5: $88
	adc  b                                           ; $65f6: $88
	adc  b                                           ; $65f7: $88
	adc  b                                           ; $65f8: $88
	adc  b                                           ; $65f9: $88
	adc  b                                           ; $65fa: $88
	adc  b                                           ; $65fb: $88
	adc  b                                           ; $65fc: $88
	adc  b                                           ; $65fd: $88
	adc  b                                           ; $65fe: $88
	adc  b                                           ; $65ff: $88
	adc  b                                           ; $6600: $88
	adc  b                                           ; $6601: $88
	adc  b                                           ; $6602: $88
	adc  b                                           ; $6603: $88
	adc  b                                           ; $6604: $88
	adc  b                                           ; $6605: $88
	adc  b                                           ; $6606: $88
	adc  b                                           ; $6607: $88
	adc  b                                           ; $6608: $88
	adc  b                                           ; $6609: $88
	adc  b                                           ; $660a: $88
	adc  b                                           ; $660b: $88
	adc  b                                           ; $660c: $88
	adc  b                                           ; $660d: $88
	adc  b                                           ; $660e: $88
	adc  b                                           ; $660f: $88
	adc  b                                           ; $6610: $88
	adc  b                                           ; $6611: $88
	adc  b                                           ; $6612: $88
	adc  b                                           ; $6613: $88
	adc  b                                           ; $6614: $88
	adc  b                                           ; $6615: $88
	adc  b                                           ; $6616: $88
	adc  b                                           ; $6617: $88
	adc  b                                           ; $6618: $88
	adc  b                                           ; $6619: $88
	adc  b                                           ; $661a: $88
	adc  b                                           ; $661b: $88
	adc  b                                           ; $661c: $88
	adc  b                                           ; $661d: $88
	adc  b                                           ; $661e: $88
	adc  b                                           ; $661f: $88
	adc  b                                           ; $6620: $88
	adc  b                                           ; $6621: $88
	adc  b                                           ; $6622: $88
	adc  b                                           ; $6623: $88
	adc  b                                           ; $6624: $88
	adc  b                                           ; $6625: $88
	adc  b                                           ; $6626: $88
	adc  b                                           ; $6627: $88
	adc  b                                           ; $6628: $88
	adc  b                                           ; $6629: $88
	adc  b                                           ; $662a: $88
	adc  b                                           ; $662b: $88
	adc  b                                           ; $662c: $88
	adc  b                                           ; $662d: $88
	adc  b                                           ; $662e: $88
	adc  b                                           ; $662f: $88
	adc  b                                           ; $6630: $88
	adc  b                                           ; $6631: $88
	adc  b                                           ; $6632: $88
	adc  b                                           ; $6633: $88
	adc  b                                           ; $6634: $88
	adc  b                                           ; $6635: $88
	adc  b                                           ; $6636: $88
	adc  b                                           ; $6637: $88
	adc  b                                           ; $6638: $88
	adc  b                                           ; $6639: $88
	adc  b                                           ; $663a: $88
	adc  b                                           ; $663b: $88
	adc  b                                           ; $663c: $88
	adc  b                                           ; $663d: $88
	adc  b                                           ; $663e: $88
	adc  b                                           ; $663f: $88
	adc  b                                           ; $6640: $88
	adc  b                                           ; $6641: $88
	adc  b                                           ; $6642: $88
	adc  b                                           ; $6643: $88
	adc  b                                           ; $6644: $88
	adc  b                                           ; $6645: $88
	adc  b                                           ; $6646: $88
	adc  b                                           ; $6647: $88
	adc  b                                           ; $6648: $88
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
	adc  b                                           ; $66f2: $88
	adc  b                                           ; $66f3: $88
	adc  b                                           ; $66f4: $88
	adc  b                                           ; $66f5: $88
	adc  b                                           ; $66f6: $88
	adc  b                                           ; $66f7: $88
	adc  b                                           ; $66f8: $88
	adc  b                                           ; $66f9: $88
	adc  b                                           ; $66fa: $88
	adc  b                                           ; $66fb: $88
	adc  b                                           ; $66fc: $88
	adc  b                                           ; $66fd: $88
	adc  b                                           ; $66fe: $88
	adc  b                                           ; $66ff: $88
	adc  b                                           ; $6700: $88
	adc  b                                           ; $6701: $88
	adc  b                                           ; $6702: $88
	adc  b                                           ; $6703: $88
	adc  b                                           ; $6704: $88
	adc  b                                           ; $6705: $88
	adc  b                                           ; $6706: $88
	adc  b                                           ; $6707: $88
	adc  b                                           ; $6708: $88
	adc  b                                           ; $6709: $88
	adc  b                                           ; $670a: $88
	adc  b                                           ; $670b: $88
	adc  b                                           ; $670c: $88
	adc  b                                           ; $670d: $88
	adc  b                                           ; $670e: $88
	adc  b                                           ; $670f: $88
	adc  b                                           ; $6710: $88
	adc  b                                           ; $6711: $88
	adc  b                                           ; $6712: $88
	adc  b                                           ; $6713: $88
	adc  b                                           ; $6714: $88
	adc  b                                           ; $6715: $88
	adc  b                                           ; $6716: $88
	adc  b                                           ; $6717: $88
	adc  b                                           ; $6718: $88
	adc  b                                           ; $6719: $88
	adc  b                                           ; $671a: $88
	adc  b                                           ; $671b: $88
	adc  b                                           ; $671c: $88
	adc  b                                           ; $671d: $88
	adc  b                                           ; $671e: $88
	adc  b                                           ; $671f: $88
	adc  b                                           ; $6720: $88
	adc  b                                           ; $6721: $88
	adc  b                                           ; $6722: $88
	adc  b                                           ; $6723: $88
	adc  b                                           ; $6724: $88
	adc  b                                           ; $6725: $88
	adc  b                                           ; $6726: $88
	adc  b                                           ; $6727: $88
	adc  b                                           ; $6728: $88
	adc  b                                           ; $6729: $88
	adc  b                                           ; $672a: $88
	adc  b                                           ; $672b: $88
	adc  b                                           ; $672c: $88
	adc  b                                           ; $672d: $88
	adc  b                                           ; $672e: $88
	adc  b                                           ; $672f: $88
	adc  b                                           ; $6730: $88
	adc  b                                           ; $6731: $88
	adc  b                                           ; $6732: $88
	adc  b                                           ; $6733: $88
	adc  b                                           ; $6734: $88
	adc  b                                           ; $6735: $88
	adc  b                                           ; $6736: $88
	adc  b                                           ; $6737: $88
	adc  b                                           ; $6738: $88
	adc  b                                           ; $6739: $88
	adc  b                                           ; $673a: $88
	adc  b                                           ; $673b: $88
	adc  b                                           ; $673c: $88
	adc  b                                           ; $673d: $88
	adc  b                                           ; $673e: $88
	adc  b                                           ; $673f: $88
	adc  b                                           ; $6740: $88
	adc  b                                           ; $6741: $88
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
	adc  b                                           ; $674c: $88
	adc  b                                           ; $674d: $88
	adc  b                                           ; $674e: $88
	adc  b                                           ; $674f: $88
	adc  b                                           ; $6750: $88
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
	adc  b                                           ; $6767: $88
	adc  b                                           ; $6768: $88
	adc  b                                           ; $6769: $88
	adc  b                                           ; $676a: $88
	adc  b                                           ; $676b: $88
	adc  b                                           ; $676c: $88
	adc  b                                           ; $676d: $88
	adc  b                                           ; $676e: $88
	adc  b                                           ; $676f: $88
	adc  b                                           ; $6770: $88
	adc  b                                           ; $6771: $88
	adc  b                                           ; $6772: $88
	adc  b                                           ; $6773: $88
	adc  b                                           ; $6774: $88
	adc  b                                           ; $6775: $88
	adc  b                                           ; $6776: $88
	adc  b                                           ; $6777: $88
	adc  b                                           ; $6778: $88
	adc  b                                           ; $6779: $88
	adc  b                                           ; $677a: $88
	adc  b                                           ; $677b: $88
	adc  b                                           ; $677c: $88
	adc  b                                           ; $677d: $88
	adc  b                                           ; $677e: $88
	adc  b                                           ; $677f: $88
	adc  b                                           ; $6780: $88
	adc  b                                           ; $6781: $88
	adc  b                                           ; $6782: $88
	adc  b                                           ; $6783: $88
	adc  b                                           ; $6784: $88
	adc  b                                           ; $6785: $88
	adc  b                                           ; $6786: $88
	adc  b                                           ; $6787: $88
	adc  b                                           ; $6788: $88
	adc  b                                           ; $6789: $88
	adc  b                                           ; $678a: $88
	adc  b                                           ; $678b: $88
	adc  b                                           ; $678c: $88
	adc  b                                           ; $678d: $88
	adc  b                                           ; $678e: $88
	adc  b                                           ; $678f: $88
	adc  b                                           ; $6790: $88
	adc  b                                           ; $6791: $88
	adc  b                                           ; $6792: $88
	adc  b                                           ; $6793: $88
	adc  b                                           ; $6794: $88
	adc  b                                           ; $6795: $88
	adc  b                                           ; $6796: $88
	adc  b                                           ; $6797: $88
	adc  b                                           ; $6798: $88
	adc  b                                           ; $6799: $88
	adc  b                                           ; $679a: $88
	adc  b                                           ; $679b: $88
	adc  b                                           ; $679c: $88
	adc  b                                           ; $679d: $88
	adc  b                                           ; $679e: $88
	adc  b                                           ; $679f: $88
	adc  b                                           ; $67a0: $88
	adc  b                                           ; $67a1: $88
	adc  b                                           ; $67a2: $88
	adc  b                                           ; $67a3: $88
	adc  b                                           ; $67a4: $88
	adc  b                                           ; $67a5: $88
	adc  b                                           ; $67a6: $88
	adc  b                                           ; $67a7: $88
	adc  b                                           ; $67a8: $88
	adc  b                                           ; $67a9: $88
	adc  b                                           ; $67aa: $88
	adc  b                                           ; $67ab: $88
	adc  b                                           ; $67ac: $88
	adc  b                                           ; $67ad: $88
	adc  b                                           ; $67ae: $88
	adc  b                                           ; $67af: $88
	adc  b                                           ; $67b0: $88
	adc  b                                           ; $67b1: $88
	adc  b                                           ; $67b2: $88
	adc  b                                           ; $67b3: $88
	adc  b                                           ; $67b4: $88
	adc  b                                           ; $67b5: $88
	adc  b                                           ; $67b6: $88
	adc  b                                           ; $67b7: $88
	adc  b                                           ; $67b8: $88
	adc  b                                           ; $67b9: $88
	adc  b                                           ; $67ba: $88
	adc  b                                           ; $67bb: $88
	adc  b                                           ; $67bc: $88
	adc  b                                           ; $67bd: $88
	adc  b                                           ; $67be: $88
	adc  b                                           ; $67bf: $88
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
	sbc  b                                           ; $67f5: $98
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
	sbc  b                                           ; $680a: $98
	adc  b                                           ; $680b: $88
	sbc  b                                           ; $680c: $98
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
	ld   a, b                                        ; $6818: $78
	adc  b                                           ; $6819: $88
	adc  b                                           ; $681a: $88
	adc  b                                           ; $681b: $88
	adc  b                                           ; $681c: $88
	adc  b                                           ; $681d: $88
	adc  c                                           ; $681e: $89
	adc  b                                           ; $681f: $88
	adc  b                                           ; $6820: $88
	adc  b                                           ; $6821: $88
	adc  b                                           ; $6822: $88
	sbc  b                                           ; $6823: $98
	adc  c                                           ; $6824: $89
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
	sbc  b                                           ; $683a: $98
	sbc  b                                           ; $683b: $98
	adc  b                                           ; $683c: $88
	adc  c                                           ; $683d: $89
	ld   a, b                                        ; $683e: $78
	adc  b                                           ; $683f: $88
	sbc  b                                           ; $6840: $98
	adc  b                                           ; $6841: $88
	adc  b                                           ; $6842: $88
	adc  b                                           ; $6843: $88
	adc  b                                           ; $6844: $88
	ld   a, b                                        ; $6845: $78
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
	adc  c                                           ; $6850: $89
	ld   a, b                                        ; $6851: $78
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
	add  a                                           ; $685d: $87
	adc  b                                           ; $685e: $88
	adc  b                                           ; $685f: $88
	adc  b                                           ; $6860: $88
	ld   a, b                                        ; $6861: $78
	adc  b                                           ; $6862: $88
	add  a                                           ; $6863: $87
	adc  b                                           ; $6864: $88
	adc  b                                           ; $6865: $88
	adc  b                                           ; $6866: $88
	adc  b                                           ; $6867: $88
	ld   a, c                                        ; $6868: $79
	adc  b                                           ; $6869: $88
	adc  b                                           ; $686a: $88
	adc  b                                           ; $686b: $88
	adc  b                                           ; $686c: $88
	adc  b                                           ; $686d: $88
	adc  b                                           ; $686e: $88
	adc  b                                           ; $686f: $88
	adc  b                                           ; $6870: $88
	ld   a, b                                        ; $6871: $78
	add  a                                           ; $6872: $87
	add  a                                           ; $6873: $87
	adc  b                                           ; $6874: $88
	adc  b                                           ; $6875: $88
	adc  b                                           ; $6876: $88
	adc  b                                           ; $6877: $88
	adc  b                                           ; $6878: $88
	ld   a, b                                        ; $6879: $78
	adc  b                                           ; $687a: $88
	add  a                                           ; $687b: $87
	adc  b                                           ; $687c: $88
	adc  b                                           ; $687d: $88
	add  a                                           ; $687e: $87
	adc  b                                           ; $687f: $88
	add  a                                           ; $6880: $87
	add  a                                           ; $6881: $87
	adc  b                                           ; $6882: $88
	adc  b                                           ; $6883: $88
	ld   a, b                                        ; $6884: $78
	adc  b                                           ; $6885: $88
	adc  b                                           ; $6886: $88
	ld   a, b                                        ; $6887: $78
	ld   [hl], a                                     ; $6888: $77
	sub  a                                           ; $6889: $97
	adc  b                                           ; $688a: $88
	ld   a, b                                        ; $688b: $78
	add  a                                           ; $688c: $87
	sbc  b                                           ; $688d: $98
	ld   a, b                                        ; $688e: $78
	adc  b                                           ; $688f: $88
	add  a                                           ; $6890: $87
	adc  b                                           ; $6891: $88
	adc  b                                           ; $6892: $88
	adc  b                                           ; $6893: $88
	add  a                                           ; $6894: $87
	adc  b                                           ; $6895: $88
	ld   a, b                                        ; $6896: $78
	adc  b                                           ; $6897: $88
	add  a                                           ; $6898: $87
	adc  b                                           ; $6899: $88
	ld   a, b                                        ; $689a: $78
	adc  b                                           ; $689b: $88
	adc  b                                           ; $689c: $88
	add  a                                           ; $689d: $87
	adc  b                                           ; $689e: $88
	sbc  b                                           ; $689f: $98
	ld   a, b                                        ; $68a0: $78
	adc  b                                           ; $68a1: $88
	ld   a, c                                        ; $68a2: $79
	add  a                                           ; $68a3: $87
	adc  b                                           ; $68a4: $88
	adc  b                                           ; $68a5: $88
	adc  b                                           ; $68a6: $88
	adc  b                                           ; $68a7: $88
	adc  b                                           ; $68a8: $88
	adc  b                                           ; $68a9: $88
	adc  b                                           ; $68aa: $88
	adc  b                                           ; $68ab: $88
	adc  c                                           ; $68ac: $89
	adc  b                                           ; $68ad: $88
	ld   a, b                                        ; $68ae: $78
	add  a                                           ; $68af: $87
	sbc  b                                           ; $68b0: $98
	adc  b                                           ; $68b1: $88
	adc  b                                           ; $68b2: $88
	adc  c                                           ; $68b3: $89
	adc  b                                           ; $68b4: $88
	adc  b                                           ; $68b5: $88
	sbc  b                                           ; $68b6: $98
	ld   a, b                                        ; $68b7: $78
	sbc  b                                           ; $68b8: $98
	adc  c                                           ; $68b9: $89
	adc  b                                           ; $68ba: $88
	adc  c                                           ; $68bb: $89
	adc  c                                           ; $68bc: $89
	add  a                                           ; $68bd: $87
	sbc  b                                           ; $68be: $98
	adc  b                                           ; $68bf: $88
	adc  b                                           ; $68c0: $88
	adc  b                                           ; $68c1: $88
	adc  c                                           ; $68c2: $89
	adc  b                                           ; $68c3: $88
	adc  b                                           ; $68c4: $88
	adc  b                                           ; $68c5: $88
	adc  d                                           ; $68c6: $8a
	sbc  b                                           ; $68c7: $98
	adc  c                                           ; $68c8: $89
	sbc  b                                           ; $68c9: $98
	add  a                                           ; $68ca: $87
	add  a                                           ; $68cb: $87
	adc  b                                           ; $68cc: $88
	adc  c                                           ; $68cd: $89
	ld   a, b                                        ; $68ce: $78
	ld   a, b                                        ; $68cf: $78
	sbc  c                                           ; $68d0: $99
	sbc  b                                           ; $68d1: $98
	adc  b                                           ; $68d2: $88
	adc  c                                           ; $68d3: $89
	ld   a, c                                        ; $68d4: $79
	sbc  b                                           ; $68d5: $98
	sub  a                                           ; $68d6: $97
	adc  b                                           ; $68d7: $88
	adc  b                                           ; $68d8: $88
	adc  c                                           ; $68d9: $89
	adc  b                                           ; $68da: $88
	ld   a, b                                        ; $68db: $78
	adc  b                                           ; $68dc: $88
	add  a                                           ; $68dd: $87
	adc  c                                           ; $68de: $89
	adc  b                                           ; $68df: $88
	adc  b                                           ; $68e0: $88
	sbc  b                                           ; $68e1: $98
	add  a                                           ; $68e2: $87
	sbc  c                                           ; $68e3: $99
	adc  c                                           ; $68e4: $89
	adc  c                                           ; $68e5: $89
	adc  b                                           ; $68e6: $88
	adc  b                                           ; $68e7: $88
	adc  c                                           ; $68e8: $89
	adc  b                                           ; $68e9: $88
	adc  c                                           ; $68ea: $89
	ld   [hl], a                                     ; $68eb: $77
	add  a                                           ; $68ec: $87
	ld   a, b                                        ; $68ed: $78
	sbc  b                                           ; $68ee: $98
	adc  b                                           ; $68ef: $88
	ld   a, c                                        ; $68f0: $79
	ld   a, c                                        ; $68f1: $79
	sub  a                                           ; $68f2: $97
	ld   a, b                                        ; $68f3: $78
	sbc  c                                           ; $68f4: $99
	sbc  b                                           ; $68f5: $98
	adc  b                                           ; $68f6: $88
	xor  c                                           ; $68f7: $a9
	adc  b                                           ; $68f8: $88
	ld   a, d                                        ; $68f9: $7a
	xor  c                                           ; $68fa: $a9
	add  [hl]                                        ; $68fb: $86
	ld   a, c                                        ; $68fc: $79
	sbc  e                                           ; $68fd: $9b
	sub  a                                           ; $68fe: $97
	xor  h                                           ; $68ff: $ac
	xor  c                                           ; $6900: $a9
	ld   a, d                                        ; $6901: $7a
	and  a                                           ; $6902: $a7
	ld   h, l                                        ; $6903: $65
	adc  b                                           ; $6904: $88
	halt                                             ; $6905: $76
	ld   a, c                                        ; $6906: $79
	ld   a, b                                        ; $6907: $78
	adc  b                                           ; $6908: $88
	ld   a, c                                        ; $6909: $79
	ld   a, c                                        ; $690a: $79
	xor  d                                           ; $690b: $aa
	sbc  c                                           ; $690c: $99
	sbc  c                                           ; $690d: $99
	sbc  c                                           ; $690e: $99
	ld   [hl], a                                     ; $690f: $77
	ld   h, [hl]                                     ; $6910: $66
	ld   [hl], a                                     ; $6911: $77
	ld   a, b                                        ; $6912: $78
	ld   h, [hl]                                     ; $6913: $66
	ld   a, c                                        ; $6914: $79
	sbc  d                                           ; $6915: $9a
	adc  b                                           ; $6916: $88
	add  a                                           ; $6917: $87
	adc  c                                           ; $6918: $89
	sbc  b                                           ; $6919: $98
	add  a                                           ; $691a: $87
	ld   l, b                                        ; $691b: $68
	sbc  c                                           ; $691c: $99
	ld   [hl], a                                     ; $691d: $77
	ld   [hl], a                                     ; $691e: $77
	adc  b                                           ; $691f: $88
	add  a                                           ; $6920: $87
	add  a                                           ; $6921: $87
	ld   a, d                                        ; $6922: $7a
	adc  b                                           ; $6923: $88
	ld   a, c                                        ; $6924: $79
	adc  b                                           ; $6925: $88
	sub  a                                           ; $6926: $97
	adc  b                                           ; $6927: $88
	add  a                                           ; $6928: $87
	ld   a, b                                        ; $6929: $78
	ld   a, c                                        ; $692a: $79
	sub  a                                           ; $692b: $97
	add  a                                           ; $692c: $87
	ld   a, b                                        ; $692d: $78
	ld   a, c                                        ; $692e: $79
	adc  b                                           ; $692f: $88
	ld   [hl], a                                     ; $6930: $77
	ld   [hl], a                                     ; $6931: $77
	add  a                                           ; $6932: $87
	ld   [hl], a                                     ; $6933: $77
	ld   a, c                                        ; $6934: $79
	adc  b                                           ; $6935: $88
	xor  d                                           ; $6936: $aa
	cp   e                                           ; $6937: $bb
	xor  d                                           ; $6938: $aa
	sub  a                                           ; $6939: $97
	halt                                             ; $693a: $76
	ld   b, h                                        ; $693b: $44

Jump_0ab_693c:
	ld   b, h                                        ; $693c: $44
	ld   a, b                                        ; $693d: $78
	add  a                                           ; $693e: $87
	ld   a, c                                        ; $693f: $79
	ld   a, d                                        ; $6940: $7a
	xor  d                                           ; $6941: $aa
	sub  a                                           ; $6942: $97
	sub  a                                           ; $6943: $97
	adc  b                                           ; $6944: $88
	adc  c                                           ; $6945: $89
	ld   a, b                                        ; $6946: $78
	ld   a, c                                        ; $6947: $79
	sbc  b                                           ; $6948: $98
	adc  b                                           ; $6949: $88
	sbc  c                                           ; $694a: $99
	ld   a, c                                        ; $694b: $79
	ld   a, c                                        ; $694c: $79
	sbc  b                                           ; $694d: $98
	halt                                             ; $694e: $76
	adc  b                                           ; $694f: $88
	adc  b                                           ; $6950: $88
	ld   h, [hl]                                     ; $6951: $66
	ld   h, a                                        ; $6952: $67
	ld   h, l                                        ; $6953: $65
	ld   h, h                                        ; $6954: $64
	ld   b, h                                        ; $6955: $44
	ld   b, e                                        ; $6956: $43
	inc  [hl]                                        ; $6957: $34
	ld   hl, $1111                                   ; $6958: $21 $11 $11
	inc  h                                           ; $695b: $24
	ld   a, d                                        ; $695c: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $695d: $cf
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	rst  $38                                         ; $6960: $ff
	rst  $38                                         ; $6961: $ff
	rst  $38                                         ; $6962: $ff
	rst  $38                                         ; $6963: $ff
	jp   z, Jump_0ab_7787                            ; $6964: $ca $87 $77

	add  [hl]                                        ; $6967: $86
	ld   h, l                                        ; $6968: $65
	ld   b, h                                        ; $6969: $44
	ld   de, $1111                                   ; $696a: $11 $11 $11
	ld   de, $1111                                   ; $696d: $11 $11 $11
	ld   [de], a                                     ; $6970: $12
	ld   d, l                                        ; $6971: $55
	sbc  a                                           ; $6972: $9f
	rst  $38                                         ; $6973: $ff
	rst  $38                                         ; $6974: $ff
	rst  $38                                         ; $6975: $ff
	rst  $38                                         ; $6976: $ff
	rst  $38                                         ; $6977: $ff
	rst  ToBoot                                         ; $6978: $c7
	ld   a, e                                        ; $6979: $7b
	db   $dd                                         ; $697a: $dd
	xor  c                                           ; $697b: $a9
	call $ffff                                       ; $697c: $cd $ff $ff
	xor  $b9                                         ; $697f: $ee $b9
	ld   [hl], e                                     ; $6981: $73
	ld   de, $1111                                   ; $6982: $11 $11 $11
	ld   de, $1111                                   ; $6985: $11 $11 $11
	dec  sp                                          ; $6988: $3b
	rst  $38                                         ; $6989: $ff
	rst  $38                                         ; $698a: $ff
	rst  $38                                         ; $698b: $ff
	rst  $38                                         ; $698c: $ff
	rst  $38                                         ; $698d: $ff
	rst  $38                                         ; $698e: $ff
	rst  $20                                         ; $698f: $e7
	ld   bc, $cf15                                   ; $6990: $01 $15 $cf
	rst  $38                                         ; $6993: $ff
	rst  $38                                         ; $6994: $ff
	rst  $38                                         ; $6995: $ff
	rst  $38                                         ; $6996: $ff
	jp   hl                                          ; $6997: $e9


	ld   h, l                                        ; $6998: $65
	ld   de, $1111                                   ; $6999: $11 $11 $11
	ld   de, $1111                                   ; $699c: $11 $11 $11
	add  hl, de                                      ; $699f: $19
	rst  $38                                         ; $69a0: $ff
	rst  $38                                         ; $69a1: $ff
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	adc  b                                           ; $69a5: $88
	cp   d                                           ; $69a6: $ba
	ld   h, c                                        ; $69a7: $61
	ld   de, $ff5f                                   ; $69a8: $11 $5f $ff
	rst  $38                                         ; $69ab: $ff
	rst  $38                                         ; $69ac: $ff
	rst  $38                                         ; $69ad: $ff
	db   $fd                                         ; $69ae: $fd
	ld   h, c                                        ; $69af: $61
	ld   de, $1111                                   ; $69b0: $11 $11 $11
	ld   de, $1111                                   ; $69b3: $11 $11 $11
	ld   de, $ff6b                                   ; $69b6: $11 $6b $ff
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	rst  $38                                         ; $69bb: $ff
	rst  $38                                         ; $69bc: $ff
	daa                                              ; $69bd: $27
	ld   [hl], d                                     ; $69be: $72
	ld   de, $5f11                                   ; $69bf: $11 $11 $5f
	rst  $38                                         ; $69c2: $ff
	rst  $38                                         ; $69c3: $ff
	rst  $38                                         ; $69c4: $ff
	rst  $38                                         ; $69c5: $ff
	cp   $61                                         ; $69c6: $fe $61
	ld   de, $1111                                   ; $69c8: $11 $11 $11
	ld   de, $1111                                   ; $69cb: $11 $11 $11
	ld   de, $df1a                                   ; $69ce: $11 $1a $df
	rst  $38                                         ; $69d1: $ff
	rst  $38                                         ; $69d2: $ff
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	inc  de                                          ; $69d5: $13
	ld   d, c                                        ; $69d6: $51
	ld   de, $2f11                                   ; $69d7: $11 $11 $2f
	rst  $38                                         ; $69da: $ff
	rst  $38                                         ; $69db: $ff
	rst  $38                                         ; $69dc: $ff
	rst  $38                                         ; $69dd: $ff
	cp   $71                                         ; $69de: $fe $71
	inc  de                                          ; $69e0: $13
	ld   hl, $1111                                   ; $69e1: $21 $11 $11
	ld   de, $1111                                   ; $69e4: $11 $11 $11
	ld   d, $9f                                      ; $69e7: $16 $9f
	rst  $38                                         ; $69e9: $ff
	rst  $38                                         ; $69ea: $ff
	rst  $38                                         ; $69eb: $ff
	rst  $38                                         ; $69ec: $ff
	or   c                                           ; $69ed: $b1
	ld   d, h                                        ; $69ee: $54
	ld   sp, $1d13                                   ; $69ef: $31 $13 $1d
	rst  $38                                         ; $69f2: $ff
	rst  $38                                         ; $69f3: $ff
	rst  $38                                         ; $69f4: $ff
	rst  $38                                         ; $69f5: $ff
	db   $fd                                         ; $69f6: $fd
	and  h                                           ; $69f7: $a4
	ld   de, $3465                                   ; $69f8: $11 $65 $34
	ld   de, $1111                                   ; $69fb: $11 $11 $11
	ld   de, $5911                                   ; $69fe: $11 $11 $59
	rst  $38                                         ; $6a01: $ff
	rst  $38                                         ; $6a02: $ff
	rst  $38                                         ; $6a03: $ff
	rst  $38                                         ; $6a04: $ff
	di                                               ; $6a05: $f3
	inc  d                                           ; $6a06: $14
	ld   d, $45                                      ; $6a07: $16 $45
	ld   b, l                                        ; $6a09: $45
	rst  $38                                         ; $6a0a: $ff
	rst  $38                                         ; $6a0b: $ff
	rst  $38                                         ; $6a0c: $ff
	rst  $38                                         ; $6a0d: $ff
	rst  $38                                         ; $6a0e: $ff
	ret  z                                           ; $6a0f: $c8

	ld   hl, $6637                                   ; $6a10: $21 $37 $66
	ld   b, c                                        ; $6a13: $41
	ld   de, $1111                                   ; $6a14: $11 $11 $11
	ld   de, $bf14                                   ; $6a17: $11 $14 $bf
	rst  $38                                         ; $6a1a: $ff
	rst  $38                                         ; $6a1b: $ff
	rst  $38                                         ; $6a1c: $ff
	rst  $38                                         ; $6a1d: $ff
	ld   de, $4511                                   ; $6a1e: $11 $11 $45
	db   $db                                         ; $6a21: $db
	rst  JumpTable                                         ; $6a22: $df
	rst  $38                                         ; $6a23: $ff
	rst  $38                                         ; $6a24: $ff
	rst  $38                                         ; $6a25: $ff
	rst  $38                                         ; $6a26: $ff
	jp   c, $1261                                    ; $6a27: $da $61 $12

	ld   [hl], a                                     ; $6a2a: $77
	sbc  b                                           ; $6a2b: $98
	ld   de, $1111                                   ; $6a2c: $11 $11 $11
	ld   de, $2c11                                   ; $6a2f: $11 $11 $2c
	rst  $38                                         ; $6a32: $ff
	rst  $38                                         ; $6a33: $ff
	rst  $38                                         ; $6a34: $ff
	rst  $38                                         ; $6a35: $ff
	pop  af                                          ; $6a36: $f1
	ld   de, $bf15                                   ; $6a37: $11 $15 $bf
	rst  JumpTable                                         ; $6a3a: $df
	rst  $38                                         ; $6a3b: $ff
	rst  $38                                         ; $6a3c: $ff
	rst  $38                                         ; $6a3d: $ff
	rst  $38                                         ; $6a3e: $ff
	ei                                               ; $6a3f: $fb
	sub  [hl]                                        ; $6a40: $96
	ld   de, $8c57                                   ; $6a41: $11 $57 $8c
	ld   [hl], c                                     ; $6a44: $71
	ld   de, $1111                                   ; $6a45: $11 $11 $11
	ld   de, $af11                                   ; $6a48: $11 $11 $af
	rst  $38                                         ; $6a4b: $ff
	rst  $38                                         ; $6a4c: $ff
	rst  $38                                         ; $6a4d: $ff
	rst  $38                                         ; $6a4e: $ff
	ld   de, $7c11                                   ; $6a4f: $11 $11 $7c
	rst  $38                                         ; $6a52: $ff
	rst  $38                                         ; $6a53: $ff
	rst  $38                                         ; $6a54: $ff
	rst  $38                                         ; $6a55: $ff
	rst  $38                                         ; $6a56: $ff
	rst  $38                                         ; $6a57: $ff
	xor  d                                           ; $6a58: $aa
	ld   [hl], d                                     ; $6a59: $72
	inc  d                                           ; $6a5a: $14
	ld   h, a                                        ; $6a5b: $67
	cp   b                                           ; $6a5c: $b8
	ld   de, $1111                                   ; $6a5d: $11 $11 $11
	ld   de, $1b11                                   ; $6a60: $11 $11 $1b
	rst  $38                                         ; $6a63: $ff
	rst  $38                                         ; $6a64: $ff
	rst  $38                                         ; $6a65: $ff
	rst  $38                                         ; $6a66: $ff
	pop  af                                          ; $6a67: $f1
	ld   de, $ef17                                   ; $6a68: $11 $17 $ef
	rst  $38                                         ; $6a6b: $ff
	rst  $38                                         ; $6a6c: $ff
	rst  $38                                         ; $6a6d: $ff
	rst  $38                                         ; $6a6e: $ff
	rst  $38                                         ; $6a6f: $ff
	res  7, b                                        ; $6a70: $cb $b8
	ld   b, e                                        ; $6a72: $43
	ld   h, h                                        ; $6a73: $64
	ld   l, e                                        ; $6a74: $6b
	ld   d, c                                        ; $6a75: $51
	ld   de, $1111                                   ; $6a76: $11 $11 $11
	ld   de, $af11                                   ; $6a79: $11 $11 $af
	rst  $28                                         ; $6a7c: $ef
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	cp   $26                                         ; $6a7f: $fe $26
	dec  [hl]                                        ; $6a81: $35
	adc  a                                           ; $6a82: $8f
	cp   $ff                                         ; $6a83: $fe $ff
	rst  $38                                         ; $6a85: $ff
	rst  $38                                         ; $6a86: $ff
	rst  $38                                         ; $6a87: $ff
	db   $fd                                         ; $6a88: $fd
	call z, Call_0ab_4574                            ; $6a89: $cc $74 $45
	ld   [hl], $84                                   ; $6a8c: $36 $84
	ld   de, $1111                                   ; $6a8e: $11 $11 $11
	ld   de, $1611                                   ; $6a91: $11 $11 $16
	jp   z, $ffff                                    ; $6a94: $ca $ff $ff

	rst  $38                                         ; $6a97: $ff
	ld   sp, hl                                      ; $6a98: $f9
	cp   c                                           ; $6a99: $b9
	xor  h                                           ; $6a9a: $ac
	rst  $38                                         ; $6a9b: $ff
	rst  $38                                         ; $6a9c: $ff
	rst  $38                                         ; $6a9d: $ff
	rst  $38                                         ; $6a9e: $ff
	rst  $38                                         ; $6a9f: $ff
	rst  $38                                         ; $6aa0: $ff
	cp   c                                           ; $6aa1: $b9
	xor  e                                           ; $6aa2: $ab
	ld   [hl], a                                     ; $6aa3: $77
	halt                                             ; $6aa4: $76
	sbc  d                                           ; $6aa5: $9a
	halt                                             ; $6aa6: $76
	ld   de, $1111                                   ; $6aa7: $11 $11 $11
	ld   de, $1111                                   ; $6aaa: $11 $11 $11
	ld   de, $5511                                   ; $6aad: $11 $11 $55
	ld   d, a                                        ; $6ab0: $57
	ld   l, c                                        ; $6ab1: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ab2: $cf
	rst  $38                                         ; $6ab3: $ff
	rst  $38                                         ; $6ab4: $ff
	rst  $38                                         ; $6ab5: $ff
	rst  $38                                         ; $6ab6: $ff
	rst  $38                                         ; $6ab7: $ff
	rst  $38                                         ; $6ab8: $ff
	rst  $38                                         ; $6ab9: $ff
	rst  $38                                         ; $6aba: $ff
	rst  $38                                         ; $6abb: $ff
	rst  $38                                         ; $6abc: $ff
	rst  $38                                         ; $6abd: $ff
	xor  $b8                                         ; $6abe: $ee $b8
	ld   d, e                                        ; $6ac0: $53
	ld   de, $1111                                   ; $6ac1: $11 $11 $11
	ld   de, $1111                                   ; $6ac4: $11 $11 $11
	ld   de, $1411                                   ; $6ac7: $11 $11 $14
	ld   l, c                                        ; $6aca: $69
	rst  $28                                         ; $6acb: $ef
	rst  $38                                         ; $6acc: $ff
	rst  $38                                         ; $6acd: $ff
	rst  $38                                         ; $6ace: $ff
	rst  $38                                         ; $6acf: $ff
	rst  $38                                         ; $6ad0: $ff
	rst  $38                                         ; $6ad1: $ff
	rst  $38                                         ; $6ad2: $ff
	rst  $38                                         ; $6ad3: $ff
	rst  $38                                         ; $6ad4: $ff
	rst  $38                                         ; $6ad5: $ff
	cp   $ba                                         ; $6ad6: $fe $ba
	sub  l                                           ; $6ad8: $95
	ld   sp, $1111                                   ; $6ad9: $31 $11 $11
	ld   de, $1111                                   ; $6adc: $11 $11 $11
	ld   de, $1111                                   ; $6adf: $11 $11 $11
	dec  h                                           ; $6ae2: $25
	adc  h                                           ; $6ae3: $8c
	rst  $38                                         ; $6ae4: $ff
	rst  $38                                         ; $6ae5: $ff
	rst  $38                                         ; $6ae6: $ff
	rst  $38                                         ; $6ae7: $ff
	rst  $38                                         ; $6ae8: $ff
	rst  $38                                         ; $6ae9: $ff
	rst  $38                                         ; $6aea: $ff
	rst  $38                                         ; $6aeb: $ff
	rst  $38                                         ; $6aec: $ff
	rst  $38                                         ; $6aed: $ff
	rst  $38                                         ; $6aee: $ff
	db   $ec                                         ; $6aef: $ec
	xor  c                                           ; $6af0: $a9
	ld   h, h                                        ; $6af1: $64
	ld   de, $1111                                   ; $6af2: $11 $11 $11
	ld   de, $1111                                   ; $6af5: $11 $11 $11
	ld   de, $1111                                   ; $6af8: $11 $11 $11
	ld   [hl], $9d                                   ; $6afb: $36 $9d
	rst  $38                                         ; $6afd: $ff
	rst  $38                                         ; $6afe: $ff
	rst  $38                                         ; $6aff: $ff
	rst  $38                                         ; $6b00: $ff
	rst  $38                                         ; $6b01: $ff
	rst  $38                                         ; $6b02: $ff
	rst  $38                                         ; $6b03: $ff
	rst  $38                                         ; $6b04: $ff
	rst  $38                                         ; $6b05: $ff
	rst  $38                                         ; $6b06: $ff
	cp   $cb                                         ; $6b07: $fe $cb
	xor  c                                           ; $6b09: $a9
	ld   [hl], l                                     ; $6b0a: $75
	ld   sp, $1111                                   ; $6b0b: $31 $11 $11
	ld   de, $1111                                   ; $6b0e: $11 $11 $11
	ld   de, $1111                                   ; $6b11: $11 $11 $11
	ld   h, $ad                                      ; $6b14: $26 $ad
	rst  $38                                         ; $6b16: $ff
	rst  $38                                         ; $6b17: $ff
	rst  $38                                         ; $6b18: $ff
	rst  $38                                         ; $6b19: $ff
	rst  $38                                         ; $6b1a: $ff
	rst  $38                                         ; $6b1b: $ff
	rst  $38                                         ; $6b1c: $ff
	rst  $38                                         ; $6b1d: $ff
	rst  $38                                         ; $6b1e: $ff
	rst  $38                                         ; $6b1f: $ff
	xor  $dc                                         ; $6b20: $ee $dc
	cp   c                                           ; $6b22: $b9
	add  [hl]                                        ; $6b23: $86
	ld   b, c                                        ; $6b24: $41
	ld   de, $1111                                   ; $6b25: $11 $11 $11
	ld   de, $1111                                   ; $6b28: $11 $11 $11
	ld   de, $1411                                   ; $6b2b: $11 $11 $14
	ld   a, d                                        ; $6b2e: $7a
	rst  $38                                         ; $6b2f: $ff
	rst  $38                                         ; $6b30: $ff
	rst  $38                                         ; $6b31: $ff
	rst  $38                                         ; $6b32: $ff
	rst  $38                                         ; $6b33: $ff
	rst  $38                                         ; $6b34: $ff
	rst  $38                                         ; $6b35: $ff
	rst  $38                                         ; $6b36: $ff
	rst  $38                                         ; $6b37: $ff
	rst  $38                                         ; $6b38: $ff
	rst  $38                                         ; $6b39: $ff
	db   $ed                                         ; $6b3a: $ed
	cp   d                                           ; $6b3b: $ba
	and  a                                           ; $6b3c: $a7
	ld   d, e                                        ; $6b3d: $53
	ld   de, $1111                                   ; $6b3e: $11 $11 $11
	ld   de, $1111                                   ; $6b41: $11 $11 $11
	ld   de, $1211                                   ; $6b44: $11 $11 $12
	ld   e, c                                        ; $6b47: $59
	rst  JumpTable                                         ; $6b48: $df
	rst  $38                                         ; $6b49: $ff
	rst  $38                                         ; $6b4a: $ff
	rst  $38                                         ; $6b4b: $ff
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	rst  $38                                         ; $6b4e: $ff
	rst  $38                                         ; $6b4f: $ff
	rst  $38                                         ; $6b50: $ff
	rst  $38                                         ; $6b51: $ff
	cp   $dc                                         ; $6b52: $fe $dc
	cp   d                                           ; $6b54: $ba
	xor  b                                           ; $6b55: $a8
	ld   h, h                                        ; $6b56: $64
	ld   de, $1111                                   ; $6b57: $11 $11 $11
	ld   de, $1111                                   ; $6b5a: $11 $11 $11
	ld   de, $1111                                   ; $6b5d: $11 $11 $11

jr_0ab_6b60:
	ld   e, d                                        ; $6b60: $5a
	xor  [hl]                                        ; $6b61: $ae
	rst  $38                                         ; $6b62: $ff
	rst  $38                                         ; $6b63: $ff
	rst  $38                                         ; $6b64: $ff
	rst  $38                                         ; $6b65: $ff
	rst  $38                                         ; $6b66: $ff
	rst  $38                                         ; $6b67: $ff
	rst  $38                                         ; $6b68: $ff
	rst  $38                                         ; $6b69: $ff
	rst  $38                                         ; $6b6a: $ff
	rst  $38                                         ; $6b6b: $ff
	ld   a, [$cc7b]                                  ; $6b6c: $fa $7b $cc
	ld   [hl], c                                     ; $6b6f: $71
	ld   de, $1111                                   ; $6b70: $11 $11 $11
	ld   de, $1111                                   ; $6b73: $11 $11 $11
	ld   de, $ff5e                                   ; $6b76: $11 $5e $ff
	rst  $38                                         ; $6b79: $ff
	db   $fd                                         ; $6b7a: $fd
	rst  $38                                         ; $6b7b: $ff
	rst  $38                                         ; $6b7c: $ff
	cp   $ff                                         ; $6b7d: $fe $ff
	rst  $38                                         ; $6b7f: $ff
	rst  $38                                         ; $6b80: $ff
	rst  $38                                         ; $6b81: $ff
	rst  $38                                         ; $6b82: $ff
	rst  $38                                         ; $6b83: $ff
	ld   sp, hl                                      ; $6b84: $f9
	add  [hl]                                        ; $6b85: $86

Jump_0ab_6b86:
	ld   d, a                                        ; $6b86: $57
	add  [hl]                                        ; $6b87: $86
	ld   b, c                                        ; $6b88: $41
	ld   de, $1111                                   ; $6b89: $11 $11 $11
	ld   de, $1211                                   ; $6b8c: $11 $11 $12
	ret                                              ; $6b8f: $c9


	ld   a, a                                        ; $6b90: $7f
	rst  $38                                         ; $6b91: $ff
	rst  $38                                         ; $6b92: $ff
	ld   sp, hl                                      ; $6b93: $f9
	ld   l, a                                        ; $6b94: $6f
	cp   $fb                                         ; $6b95: $fe $fb
	sbc  a                                           ; $6b97: $9f
	rst  $38                                         ; $6b98: $ff
	rst  $38                                         ; $6b99: $ff
	rst  $38                                         ; $6b9a: $ff
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	add  $15                                         ; $6b9d: $c6 $15
	adc  d                                           ; $6b9f: $8a
	and  a                                           ; $6ba0: $a7
	ld   b, c                                        ; $6ba1: $41
	ld   de, $1111                                   ; $6ba2: $11 $11 $11
	ld   de, $1811                                   ; $6ba5: $11 $11 $18
	xor  c                                           ; $6ba8: $a9
	rst  $28                                         ; $6ba9: $ef
	rst  $38                                         ; $6baa: $ff
	rst  $38                                         ; $6bab: $ff
	add  l                                           ; $6bac: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bad: $cf
	db   $fd                                         ; $6bae: $fd
	ld   h, a                                        ; $6baf: $67
	rst  $28                                         ; $6bb0: $ef
	rst  $38                                         ; $6bb1: $ff
	rst  $38                                         ; $6bb2: $ff
	rst  $38                                         ; $6bb3: $ff
	rst  $38                                         ; $6bb4: $ff
	ld   a, [$5833]                                  ; $6bb5: $fa $33 $58
	ret                                              ; $6bb8: $c9


	ld   d, l                                        ; $6bb9: $55
	ld   sp, $1111                                   ; $6bba: $31 $11 $11
	ld   de, $1111                                   ; $6bbd: $11 $11 $11
	jr   jr_0ab_6b60                                 ; $6bc0: $18 $9e

	rst  $38                                         ; $6bc2: $ff
	rst  $38                                         ; $6bc3: $ff
	db   $fd                                         ; $6bc4: $fd
	ld   a, e                                        ; $6bc5: $7b
	rst  $38                                         ; $6bc6: $ff
	ret  z                                           ; $6bc7: $c8

	ld   l, [hl]                                     ; $6bc8: $6e
	rst  $38                                         ; $6bc9: $ff
	rst  $38                                         ; $6bca: $ff
	rst  $38                                         ; $6bcb: $ff
	rst  $38                                         ; $6bcc: $ff
	rst  $38                                         ; $6bcd: $ff
	or   e                                           ; $6bce: $b3
	ld   c, c                                        ; $6bcf: $49
	cp   d                                           ; $6bd0: $ba
	add  [hl]                                        ; $6bd1: $86
	ld   d, a                                        ; $6bd2: $57
	ld   h, c                                        ; $6bd3: $61
	ld   de, $1111                                   ; $6bd4: $11 $11 $11
	ld   de, $3a11                                   ; $6bd7: $11 $11 $3a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bda: $cf
	rst  $38                                         ; $6bdb: $ff
	rst  $38                                         ; $6bdc: $ff
	db   $ed                                         ; $6bdd: $ed
	sbc  [hl]                                        ; $6bde: $9e
	db   $fc                                         ; $6bdf: $fc
	cp   b                                           ; $6be0: $b8
	ld   a, a                                        ; $6be1: $7f
	rst  $38                                         ; $6be2: $ff
	rst  $38                                         ; $6be3: $ff
	rst  $38                                         ; $6be4: $ff
	rst  $38                                         ; $6be5: $ff
	cp   $86                                         ; $6be6: $fe $86
	ld   a, e                                        ; $6be8: $7b
	add  [hl]                                        ; $6be9: $86
	ld   h, l                                        ; $6bea: $65
	ld   a, c                                        ; $6beb: $79
	ld   b, c                                        ; $6bec: $41
	ld   de, $1111                                   ; $6bed: $11 $11 $11
	ld   de, $4911                                   ; $6bf0: $11 $11 $49
	sbc  [hl]                                        ; $6bf3: $9e
	rst  $38                                         ; $6bf4: $ff
	rst  $38                                         ; $6bf5: $ff
	db   $fc                                         ; $6bf6: $fc
	cp   a                                           ; $6bf7: $bf
	rst  $38                                         ; $6bf8: $ff
	cp   b                                           ; $6bf9: $b8
	xor  a                                           ; $6bfa: $af
	rst  $38                                         ; $6bfb: $ff
	rst  $38                                         ; $6bfc: $ff
	rst  $38                                         ; $6bfd: $ff
	rst  $38                                         ; $6bfe: $ff
	cp   $a8                                         ; $6bff: $fe $a8
	adc  c                                           ; $6c01: $89
	sub  [hl]                                        ; $6c02: $96
	ld   h, [hl]                                     ; $6c03: $66
	halt                                             ; $6c04: $76
	ld   de, $1111                                   ; $6c05: $11 $11 $11
	ld   de, $1111                                   ; $6c08: $11 $11 $11
	ld   de, $ff5d                                   ; $6c0b: $11 $5d $ff
	rst  $38                                         ; $6c0e: $ff
	rst  $38                                         ; $6c0f: $ff
	rst  $38                                         ; $6c10: $ff
	db   $fd                                         ; $6c11: $fd
	sbc  e                                           ; $6c12: $9b
	rst  $38                                         ; $6c13: $ff
	rst  $38                                         ; $6c14: $ff
	rst  $38                                         ; $6c15: $ff
	rst  $38                                         ; $6c16: $ff
	rst  $38                                         ; $6c17: $ff
	rst  $38                                         ; $6c18: $ff
	cp   $a6                                         ; $6c19: $fe $a6
	ld   a, c                                        ; $6c1b: $79
	adc  d                                           ; $6c1c: $8a
	ld   h, c                                        ; $6c1d: $61
	ld   de, $1111                                   ; $6c1e: $11 $11 $11
	ld   de, $1111                                   ; $6c21: $11 $11 $11
	ld   de, $9f29                                   ; $6c24: $11 $29 $9f
	rst  $38                                         ; $6c27: $ff
	rst  $38                                         ; $6c28: $ff
	rst  $38                                         ; $6c29: $ff
	rst  $38                                         ; $6c2a: $ff
	db   $fc                                         ; $6c2b: $fc
	rst  JumpTable                                         ; $6c2c: $df
	rst  JumpTable                                         ; $6c2d: $df
	rst  $38                                         ; $6c2e: $ff
	rst  $38                                         ; $6c2f: $ff
	rst  $38                                         ; $6c30: $ff
	rst  $38                                         ; $6c31: $ff
	rst  $38                                         ; $6c32: $ff
	cp   e                                           ; $6c33: $bb
	add  a                                           ; $6c34: $87
	ld   h, [hl]                                     ; $6c35: $66
	ld   b, c                                        ; $6c36: $41
	ld   de, $1111                                   ; $6c37: $11 $11 $11
	ld   de, $1111                                   ; $6c3a: $11 $11 $11
	ld   de, $5a11                                   ; $6c3d: $11 $11 $5a
	adc  $ff                                         ; $6c40: $ce $ff
	rst  $38                                         ; $6c42: $ff
	rst  $38                                         ; $6c43: $ff
	rst  $38                                         ; $6c44: $ff
	rst  $38                                         ; $6c45: $ff
	adc  $ff                                         ; $6c46: $ce $ff
	rst  $38                                         ; $6c48: $ff
	rst  $38                                         ; $6c49: $ff
	rst  $38                                         ; $6c4a: $ff
	rst  $38                                         ; $6c4b: $ff
	db   $ec                                         ; $6c4c: $ec
	xor  e                                           ; $6c4d: $ab
	sub  l                                           ; $6c4e: $95
	ld   sp, $1121                                   ; $6c4f: $31 $21 $11
	ld   de, $1111                                   ; $6c52: $11 $11 $11
	ld   de, $1111                                   ; $6c55: $11 $11 $11
	ld   de, $ff79                                   ; $6c58: $11 $79 $ff
	rst  $38                                         ; $6c5b: $ff
	rst  $38                                         ; $6c5c: $ff
	rst  $38                                         ; $6c5d: $ff
	rst  $38                                         ; $6c5e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c5f: $cf
	rst  $38                                         ; $6c60: $ff
	rst  $38                                         ; $6c61: $ff
	rst  $38                                         ; $6c62: $ff
	rst  $38                                         ; $6c63: $ff
	cp   $fd                                         ; $6c64: $fe $fd
	db   $eb                                         ; $6c66: $eb
	ld   h, l                                        ; $6c67: $65
	ld   b, d                                        ; $6c68: $42
	ld   hl, $1111                                   ; $6c69: $21 $11 $11
	ld   de, $1111                                   ; $6c6c: $11 $11 $11
	ld   de, $1111                                   ; $6c6f: $11 $11 $11
	inc  h                                           ; $6c72: $24
	sbc  l                                           ; $6c73: $9d
	rst  $38                                         ; $6c74: $ff
	rst  $38                                         ; $6c75: $ff
	rst  $38                                         ; $6c76: $ff
	rst  $38                                         ; $6c77: $ff
	rst  $38                                         ; $6c78: $ff
	rst  $28                                         ; $6c79: $ef
	rst  $38                                         ; $6c7a: $ff
	db   $ed                                         ; $6c7b: $ed
	rst  $38                                         ; $6c7c: $ff
	rst  $38                                         ; $6c7d: $ff
	db   $ed                                         ; $6c7e: $ed
	rst  $28                                         ; $6c7f: $ef
	sub  a                                           ; $6c80: $97
	ld   h, [hl]                                     ; $6c81: $66
	ld   b, c                                        ; $6c82: $41
	ld   de, $1111                                   ; $6c83: $11 $11 $11
	ld   de, $1111                                   ; $6c86: $11 $11 $11
	ld   de, $1111                                   ; $6c89: $11 $11 $11
	inc  e                                           ; $6c8c: $1c
	call z, $ffff                                    ; $6c8d: $cc $ff $ff
	rst  $38                                         ; $6c90: $ff
	rst  $38                                         ; $6c91: $ff
	rst  $38                                         ; $6c92: $ff
	rst  $38                                         ; $6c93: $ff
	rst  $38                                         ; $6c94: $ff
	db   $fd                                         ; $6c95: $fd
	db   $ed                                         ; $6c96: $ed
	rst  JumpTable                                         ; $6c97: $df
	cp   h                                           ; $6c98: $bc
	rst  ToBoot                                         ; $6c99: $c7
	xor  b                                           ; $6c9a: $a8
	ld   b, h                                        ; $6c9b: $44
	inc  h                                           ; $6c9c: $24
	ld   sp, $1111                                   ; $6c9d: $31 $11 $11
	ld   de, $1111                                   ; $6ca0: $11 $11 $11
	ld   de, $1111                                   ; $6ca3: $11 $11 $11
	dec  sp                                          ; $6ca6: $3b
	ld   [$ffbf], a                                  ; $6ca7: $ea $bf $ff
	rst  $38                                         ; $6caa: $ff
	rst  $38                                         ; $6cab: $ff
	rst  $38                                         ; $6cac: $ff
	rst  $38                                         ; $6cad: $ff
	rst  $38                                         ; $6cae: $ff
	ret  c                                           ; $6caf: $d8

	cp   [hl]                                        ; $6cb0: $be
	ret  z                                           ; $6cb1: $c8

	ld   l, c                                        ; $6cb2: $69
	jp   c, Jump_0ab_6b86                            ; $6cb3: $da $86 $6b

	ld   d, c                                        ; $6cb6: $51
	dec  h                                           ; $6cb7: $25
	ld   d, c                                        ; $6cb8: $51
	ld   de, $1111                                   ; $6cb9: $11 $11 $11
	ld   [de], a                                     ; $6cbc: $12
	ld   de, $5115                                   ; $6cbd: $11 $15 $51
	ld   de, $63bf                                   ; $6cc0: $11 $bf $63
	rst  $28                                         ; $6cc3: $ef
	ld   a, [$ffaf]                                  ; $6cc4: $fa $af $ff
	sbc  $ff                                         ; $6cc7: $de $ff
	rst  $10                                         ; $6cc9: $d7
	adc  a                                           ; $6cca: $8f
	or   $5c                                         ; $6ccb: $f6 $5c
	reti                                             ; $6ccd: $d9


	ld   d, [hl]                                     ; $6cce: $56
	adc  c                                           ; $6ccf: $89
	ld   h, l                                        ; $6cd0: $65
	ld   b, [hl]                                     ; $6cd1: $46
	ld   [hl], d                                     ; $6cd2: $72
	ld   [de], a                                     ; $6cd3: $12
	ld   b, h                                        ; $6cd4: $44
	ld   de, $5114                                   ; $6cd5: $11 $14 $51
	add  hl, de                                      ; $6cd8: $19
	ld   sp, $4129                                   ; $6cd9: $31 $29 $41
	adc  e                                           ; $6cdc: $8b
	ld   l, e                                        ; $6cdd: $6b
	call z, $ecff                                    ; $6cde: $cc $ff $ec
	rst  $38                                         ; $6ce1: $ff
	xor  d                                           ; $6ce2: $aa
	rst  $38                                         ; $6ce3: $ff
	sbc  c                                           ; $6ce4: $99
	db   $ec                                         ; $6ce5: $ec
	ld   l, b                                        ; $6ce6: $68
	sbc  c                                           ; $6ce7: $99
	sub  [hl]                                        ; $6ce8: $96
	ld   [hl], a                                     ; $6ce9: $77
	sbc  c                                           ; $6cea: $99
	ld   d, [hl]                                     ; $6ceb: $56
	halt                                             ; $6cec: $76
	ld   e, c                                        ; $6ced: $59
	sub  h                                           ; $6cee: $94
	ld   b, a                                        ; $6cef: $47
	ld   [hl], l                                     ; $6cf0: $75
	inc  sp                                          ; $6cf1: $33
	ld   d, a                                        ; $6cf2: $57
	ld   d, c                                        ; $6cf3: $51
	add  hl, sp                                      ; $6cf4: $39
	ld   d, e                                        ; $6cf5: $53
	ld   l, d                                        ; $6cf6: $6a
	ld   h, c                                        ; $6cf7: $61
	adc  e                                           ; $6cf8: $8b
	ld   [hl], l                                     ; $6cf9: $75
	ld   a, d                                        ; $6cfa: $7a
	xor  b                                           ; $6cfb: $a8
	adc  d                                           ; $6cfc: $8a
	db   $fc                                         ; $6cfd: $fc
	ld   c, l                                        ; $6cfe: $4d
	ld   sp, hl                                      ; $6cff: $f9
	sbc  e                                           ; $6d00: $9b
	jp   z, Jump_0ab_6ea7                            ; $6d01: $ca $a7 $6e

	add  h                                           ; $6d04: $84
	cp   d                                           ; $6d05: $ba
	sbc  b                                           ; $6d06: $98
	sbc  d                                           ; $6d07: $9a
	sbc  d                                           ; $6d08: $9a
	ld   a, d                                        ; $6d09: $7a
	or   a                                           ; $6d0a: $b7
	ret                                              ; $6d0b: $c9


	ld   e, e                                        ; $6d0c: $5b
	add  a                                           ; $6d0d: $87
	sub  a                                           ; $6d0e: $97
	ld   h, l                                        ; $6d0f: $65
	sbc  e                                           ; $6d10: $9b
	ld   b, l                                        ; $6d11: $45
	adc  b                                           ; $6d12: $88
	add  [hl]                                        ; $6d13: $86
	ld   a, c                                        ; $6d14: $79
	ld   a, b                                        ; $6d15: $78
	ld   l, c                                        ; $6d16: $69
	and  [hl]                                        ; $6d17: $a6
	ld   a, c                                        ; $6d18: $79
	add  a                                           ; $6d19: $87
	ld   a, d                                        ; $6d1a: $7a
	ld   h, l                                        ; $6d1b: $65
	and  a                                           ; $6d1c: $a7
	ld   l, d                                        ; $6d1d: $6a
	and  l                                           ; $6d1e: $a5
	call $f94a                                       ; $6d1f: $cd $4a $f9
	ld   l, h                                        ; $6d22: $6c
	cp   b                                           ; $6d23: $b8
	cp   h                                           ; $6d24: $bc
	ld   [hl], a                                     ; $6d25: $77
	add  $7a                                         ; $6d26: $c6 $7a
	and  l                                           ; $6d28: $a5
	ld   a, e                                        ; $6d29: $7b
	ld   l, b                                        ; $6d2a: $68
	add  a                                           ; $6d2b: $87
	add  a                                           ; $6d2c: $87
	sub  a                                           ; $6d2d: $97
	ld   h, [hl]                                     ; $6d2e: $66
	sub  a                                           ; $6d2f: $97
	ld   l, c                                        ; $6d30: $69
	adc  c                                           ; $6d31: $89
	ld   a, b                                        ; $6d32: $78
	sub  [hl]                                        ; $6d33: $96
	add  a                                           ; $6d34: $87
	ld   l, d                                        ; $6d35: $6a
	add  h                                           ; $6d36: $84
	ld   l, c                                        ; $6d37: $69
	ld   e, c                                        ; $6d38: $59
	add  l                                           ; $6d39: $85
	sbc  c                                           ; $6d3a: $99
	xor  d                                           ; $6d3b: $aa
	xor  b                                           ; $6d3c: $a8
	xor  h                                           ; $6d3d: $ac
	ld   a, h                                        ; $6d3e: $7c
	add  [hl]                                        ; $6d3f: $86
	xor  d                                           ; $6d40: $aa
	ld   h, a                                        ; $6d41: $67
	and  a                                           ; $6d42: $a7
	ld   a, e                                        ; $6d43: $7b
	add  [hl]                                        ; $6d44: $86
	cp   c                                           ; $6d45: $b9
	ld   h, a                                        ; $6d46: $67
	push bc                                          ; $6d47: $c5
	ld   e, e                                        ; $6d48: $5b
	ld   l, b                                        ; $6d49: $68
	add  a                                           ; $6d4a: $87
	ld   a, c                                        ; $6d4b: $79
	ld   h, [hl]                                     ; $6d4c: $66
	sub  [hl]                                        ; $6d4d: $96
	halt                                             ; $6d4e: $76
	add  [hl]                                        ; $6d4f: $86
	ld   a, b                                        ; $6d50: $78
	ld   [hl], a                                     ; $6d51: $77
	ld   a, h                                        ; $6d52: $7c
	ld   l, b                                        ; $6d53: $68
	and  [hl]                                        ; $6d54: $a6
	sbc  d                                           ; $6d55: $9a
	add  a                                           ; $6d56: $87
	and  a                                           ; $6d57: $a7
	ld   a, e                                        ; $6d58: $7b
	ld   d, a                                        ; $6d59: $57
	call nz, $6aab                                   ; $6d5a: $c4 $ab $6a
	sub  a                                           ; $6d5d: $97
	sbc  c                                           ; $6d5e: $99
	ld   a, b                                        ; $6d5f: $78
	sub  [hl]                                        ; $6d60: $96
	ld   l, c                                        ; $6d61: $69
	ld   l, b                                        ; $6d62: $68
	add  h                                           ; $6d63: $84
	sbc  b                                           ; $6d64: $98
	ld   c, c                                        ; $6d65: $49
	sub  h                                           ; $6d66: $94
	xor  c                                           ; $6d67: $a9
	add  hl, sp                                      ; $6d68: $39
	or   l                                           ; $6d69: $b5
	adc  c                                           ; $6d6a: $89
	ld   a, c                                        ; $6d6b: $79
	ld   [hl], a                                     ; $6d6c: $77
	add  a                                           ; $6d6d: $87
	add  [hl]                                        ; $6d6e: $86
	xor  c                                           ; $6d6f: $a9
	ld   l, c                                        ; $6d70: $69
	ld   l, b                                        ; $6d71: $68
	adc  b                                           ; $6d72: $88
	ld   h, a                                        ; $6d73: $67
	or   [hl]                                        ; $6d74: $b6
	sbc  b                                           ; $6d75: $98
	ld   l, e                                        ; $6d76: $6b
	ld   [hl], a                                     ; $6d77: $77
	xor  b                                           ; $6d78: $a8
	ld   l, d                                        ; $6d79: $6a
	halt                                             ; $6d7a: $76
	sub  [hl]                                        ; $6d7b: $96
	ld   [hl], a                                     ; $6d7c: $77
	ld   [hl], a                                     ; $6d7d: $77
	add  a                                           ; $6d7e: $87
	ld   l, d                                        ; $6d7f: $6a
	ld   l, b                                        ; $6d80: $68
	and  [hl]                                        ; $6d81: $a6
	ld   a, d                                        ; $6d82: $7a
	add  l                                           ; $6d83: $85
	or   [hl]                                        ; $6d84: $b6
	adc  d                                           ; $6d85: $8a
	ld   e, d                                        ; $6d86: $5a
	ld   [hl], a                                     ; $6d87: $77
	sub  a                                           ; $6d88: $97
	add  [hl]                                        ; $6d89: $86
	add  a                                           ; $6d8a: $87
	sbc  b                                           ; $6d8b: $98
	ld   a, b                                        ; $6d8c: $78
	sbc  c                                           ; $6d8d: $99
	ld   a, c                                        ; $6d8e: $79
	sub  [hl]                                        ; $6d8f: $96
	ld   a, e                                        ; $6d90: $7b
	ld   e, c                                        ; $6d91: $59
	or   l                                           ; $6d92: $b5
	adc  c                                           ; $6d93: $89
	ld   a, b                                        ; $6d94: $78
	or   l                                           ; $6d95: $b5
	adc  d                                           ; $6d96: $8a
	ld   e, d                                        ; $6d97: $5a
	add  l                                           ; $6d98: $85
	sbc  d                                           ; $6d99: $9a
	ld   e, b                                        ; $6d9a: $58
	or   h                                           ; $6d9b: $b4
	adc  d                                           ; $6d9c: $8a
	ld   d, a                                        ; $6d9d: $57
	and  l                                           ; $6d9e: $a5
	adc  e                                           ; $6d9f: $8b
	ld   c, d                                        ; $6da0: $4a
	and  h                                           ; $6da1: $a4
	xor  c                                           ; $6da2: $a9
	ld   l, b                                        ; $6da3: $68
	sub  [hl]                                        ; $6da4: $96
	ld   a, d                                        ; $6da5: $7a
	ld   e, c                                        ; $6da6: $59
	add  l                                           ; $6da7: $85
	and  [hl]                                        ; $6da8: $a6
	and  a                                           ; $6da9: $a7
	sbc  d                                           ; $6daa: $9a
	ld   e, e                                        ; $6dab: $5b
	ld   a, c                                        ; $6dac: $79
	add  a                                           ; $6dad: $87
	add  a                                           ; $6dae: $87
	add  [hl]                                        ; $6daf: $86
	ld   a, c                                        ; $6db0: $79
	ld   e, b                                        ; $6db1: $58
	add  l                                           ; $6db2: $85
	and  [hl]                                        ; $6db3: $a6
	ld   a, b                                        ; $6db4: $78
	and  l                                           ; $6db5: $a5
	adc  e                                           ; $6db6: $8b
	ld   c, c                                        ; $6db7: $49
	add  a                                           ; $6db8: $87
	ld   a, b                                        ; $6db9: $78
	ld   a, c                                        ; $6dba: $79
	halt                                             ; $6dbb: $76
	or   l                                           ; $6dbc: $b5
	sbc  b                                           ; $6dbd: $98
	ld   [hl], a                                     ; $6dbe: $77
	ld   a, b                                        ; $6dbf: $78
	ld   a, b                                        ; $6dc0: $78
	add  a                                           ; $6dc1: $87
	adc  c                                           ; $6dc2: $89
	ld   a, c                                        ; $6dc3: $79
	ld   a, c                                        ; $6dc4: $79
	ld   a, c                                        ; $6dc5: $79
	ld   [hl], a                                     ; $6dc6: $77
	push bc                                          ; $6dc7: $c5
	sbc  b                                           ; $6dc8: $98
	ld   a, c                                        ; $6dc9: $79
	ld   l, d                                        ; $6dca: $6a
	ld   c, d                                        ; $6dcb: $4a
	ld   [hl], l                                     ; $6dcc: $75
	or   h                                           ; $6dcd: $b4
	xor  b                                           ; $6dce: $a8
	ld   h, a                                        ; $6dcf: $67
	or   [hl]                                        ; $6dd0: $b6
	ld   a, e                                        ; $6dd1: $7b
	ld   a, [hl-]                                    ; $6dd2: $3a
	add  [hl]                                        ; $6dd3: $86
	ld   a, d                                        ; $6dd4: $7a
	ld   [hl], a                                     ; $6dd5: $77
	or   e                                           ; $6dd6: $b3
	xor  c                                           ; $6dd7: $a9
	ld   e, c                                        ; $6dd8: $59
	sub  [hl]                                        ; $6dd9: $96
	sbc  b                                           ; $6dda: $98
	ld   a, c                                        ; $6ddb: $79
	ld   l, d                                        ; $6ddc: $6a
	ld   h, a                                        ; $6ddd: $67
	sub  a                                           ; $6dde: $97
	ld   [hl], a                                     ; $6ddf: $77
	and  [hl]                                        ; $6de0: $a6
	sbc  c                                           ; $6de1: $99
	ld   l, d                                        ; $6de2: $6a
	add  [hl]                                        ; $6de3: $86
	adc  b                                           ; $6de4: $88
	add  a                                           ; $6de5: $87
	adc  c                                           ; $6de6: $89
	ld   c, c                                        ; $6de7: $49
	add  [hl]                                        ; $6de8: $86
	sbc  c                                           ; $6de9: $99
	add  l                                           ; $6dea: $85
	and  [hl]                                        ; $6deb: $a6
	ld   l, e                                        ; $6dec: $6b
	ld   e, c                                        ; $6ded: $59
	add  a                                           ; $6dee: $87
	ld   l, b                                        ; $6def: $68
	and  [hl]                                        ; $6df0: $a6
	or   [hl]                                        ; $6df1: $b6
	ld   a, c                                        ; $6df2: $79
	ld   [hl], a                                     ; $6df3: $77
	adc  d                                           ; $6df4: $8a
	ld   e, d                                        ; $6df5: $5a
	ld   h, [hl]                                     ; $6df6: $66
	add  a                                           ; $6df7: $87
	sub  a                                           ; $6df8: $97
	sub  [hl]                                        ; $6df9: $96
	and  a                                           ; $6dfa: $a7
	adc  c                                           ; $6dfb: $89
	ld   l, c                                        ; $6dfc: $69
	add  [hl]                                        ; $6dfd: $86
	adc  c                                           ; $6dfe: $89
	ld   e, d                                        ; $6dff: $5a
	sub  l                                           ; $6e00: $95
	or   a                                           ; $6e01: $b7
	ld   a, e                                        ; $6e02: $7b
	ld   l, b                                        ; $6e03: $68
	or   h                                           ; $6e04: $b4
	sbc  c                                           ; $6e05: $99
	ld   l, c                                        ; $6e06: $69
	ld   a, c                                        ; $6e07: $79
	ld   l, c                                        ; $6e08: $69
	add  [hl]                                        ; $6e09: $86
	or   h                                           ; $6e0a: $b4
	xor  c                                           ; $6e0b: $a9
	ld   e, e                                        ; $6e0c: $5b
	ld   h, a                                        ; $6e0d: $67
	sbc  c                                           ; $6e0e: $99
	ld   c, e                                        ; $6e0f: $4b
	halt                                             ; $6e10: $76
	add  $97                                         ; $6e11: $c6 $97
	adc  b                                           ; $6e13: $88
	sub  a                                           ; $6e14: $97
	ld   a, c                                        ; $6e15: $79
	ld   l, b                                        ; $6e16: $68
	ld   [hl], a                                     ; $6e17: $77
	adc  b                                           ; $6e18: $88
	ld   a, c                                        ; $6e19: $79
	ld   a, b                                        ; $6e1a: $78
	sbc  c                                           ; $6e1b: $99
	ld   l, d                                        ; $6e1c: $6a
	sub  l                                           ; $6e1d: $95
	xor  b                                           ; $6e1e: $a8
	ld   l, b                                        ; $6e1f: $68
	add  l                                           ; $6e20: $85
	or   a                                           ; $6e21: $b7
	ld   l, e                                        ; $6e22: $6b
	ld   l, b                                        ; $6e23: $68
	sbc  b                                           ; $6e24: $98
	ld   a, b                                        ; $6e25: $78
	adc  b                                           ; $6e26: $88
	sub  a                                           ; $6e27: $97
	adc  b                                           ; $6e28: $88
	ld   a, b                                        ; $6e29: $78
	sub  [hl]                                        ; $6e2a: $96
	sbc  b                                           ; $6e2b: $98
	add  a                                           ; $6e2c: $87
	ld   a, d                                        ; $6e2d: $7a
	ld   l, d                                        ; $6e2e: $6a
	add  [hl]                                        ; $6e2f: $86
	sbc  c                                           ; $6e30: $99
	ld   l, d                                        ; $6e31: $6a
	ld   [hl], a                                     ; $6e32: $77
	sub  a                                           ; $6e33: $97
	sbc  b                                           ; $6e34: $98
	sub  a                                           ; $6e35: $97
	ld   a, c                                        ; $6e36: $79
	ld   a, b                                        ; $6e37: $78
	sub  a                                           ; $6e38: $97
	ld   a, b                                        ; $6e39: $78
	sbc  c                                           ; $6e3a: $99
	adc  b                                           ; $6e3b: $88
	add  a                                           ; $6e3c: $87
	xor  b                                           ; $6e3d: $a8
	ld   l, e                                        ; $6e3e: $6b
	ld   l, c                                        ; $6e3f: $69
	add  a                                           ; $6e40: $87
	adc  b                                           ; $6e41: $88
	and  h                                           ; $6e42: $a4
	add  $79                                         ; $6e43: $c6 $79
	ld   l, c                                        ; $6e45: $69
	ld   a, d                                        ; $6e46: $7a
	ld   a, d                                        ; $6e47: $7a
	ld   a, b                                        ; $6e48: $78
	and  [hl]                                        ; $6e49: $a6
	xor  d                                           ; $6e4a: $aa
	ld   l, c                                        ; $6e4b: $69
	sub  h                                           ; $6e4c: $94
	and  a                                           ; $6e4d: $a7
	ld   a, d                                        ; $6e4e: $7a
	sub  a                                           ; $6e4f: $97
	ld   a, d                                        ; $6e50: $7a
	ld   a, c                                        ; $6e51: $79
	and  a                                           ; $6e52: $a7
	ld   a, c                                        ; $6e53: $79
	ld   l, d                                        ; $6e54: $6a
	sub  l                                           ; $6e55: $95
	and  [hl]                                        ; $6e56: $a6
	sbc  b                                           ; $6e57: $98
	ld   e, e                                        ; $6e58: $5b
	ld   a, b                                        ; $6e59: $78
	adc  b                                           ; $6e5a: $88
	ld   a, b                                        ; $6e5b: $78
	sub  [hl]                                        ; $6e5c: $96
	xor  c                                           ; $6e5d: $a9
	adc  b                                           ; $6e5e: $88
	adc  c                                           ; $6e5f: $89
	ld   e, h                                        ; $6e60: $5c
	ld   d, [hl]                                     ; $6e61: $56
	jp   Jump_0ab_5999                               ; $6e62: $c3 $99 $59


	or   a                                           ; $6e65: $b7
	adc  b                                           ; $6e66: $88
	sbc  b                                           ; $6e67: $98
	adc  c                                           ; $6e68: $89
	ld   l, d                                        ; $6e69: $6a
	ld   a, c                                        ; $6e6a: $79
	ld   a, d                                        ; $6e6b: $7a
	add  [hl]                                        ; $6e6c: $86
	xor  b                                           ; $6e6d: $a8
	adc  b                                           ; $6e6e: $88
	add  a                                           ; $6e6f: $87
	adc  d                                           ; $6e70: $8a
	adc  c                                           ; $6e71: $89
	sub  l                                           ; $6e72: $95
	xor  d                                           ; $6e73: $aa
	ld   a, c                                        ; $6e74: $79
	ld   a, b                                        ; $6e75: $78
	and  a                                           ; $6e76: $a7
	sbc  b                                           ; $6e77: $98
	adc  b                                           ; $6e78: $88
	adc  c                                           ; $6e79: $89
	ld   l, c                                        ; $6e7a: $69
	sub  [hl]                                        ; $6e7b: $96
	or   [hl]                                        ; $6e7c: $b6
	adc  c                                           ; $6e7d: $89
	sbc  c                                           ; $6e7e: $99
	ld   l, h                                        ; $6e7f: $6c
	ld   e, c                                        ; $6e80: $59
	sub  [hl]                                        ; $6e81: $96
	or   a                                           ; $6e82: $b7
	adc  b                                           ; $6e83: $88
	sbc  c                                           ; $6e84: $99
	ld   a, d                                        ; $6e85: $7a
	ld   [hl], a                                     ; $6e86: $77
	and  l                                           ; $6e87: $a5
	and  a                                           ; $6e88: $a7
	ld   a, c                                        ; $6e89: $79
	ld   e, c                                        ; $6e8a: $59
	sub  a                                           ; $6e8b: $97
	adc  c                                           ; $6e8c: $89
	ld   a, e                                        ; $6e8d: $7b
	add  a                                           ; $6e8e: $87
	xor  b                                           ; $6e8f: $a8
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
	sbc  b                                           ; $6e92: $98
	ld   a, d                                        ; $6e93: $7a
	sub  a                                           ; $6e94: $97
	sub  [hl]                                        ; $6e95: $96
	sbc  b                                           ; $6e96: $98
	ld   l, c                                        ; $6e97: $69
	add  a                                           ; $6e98: $87
	adc  c                                           ; $6e99: $89
	ld   a, c                                        ; $6e9a: $79
	sub  a                                           ; $6e9b: $97
	ld   a, c                                        ; $6e9c: $79
	sub  [hl]                                        ; $6e9d: $96
	and  [hl]                                        ; $6e9e: $a6
	sbc  b                                           ; $6e9f: $98
	ld   a, b                                        ; $6ea0: $78
	ld   a, h                                        ; $6ea1: $7c
	ld   e, d                                        ; $6ea2: $5a
	add  a                                           ; $6ea3: $87
	or   [hl]                                        ; $6ea4: $b6
	and  a                                           ; $6ea5: $a7
	sbc  c                                           ; $6ea6: $99

Jump_0ab_6ea7:
	add  a                                           ; $6ea7: $87
	ld   a, e                                        ; $6ea8: $7b
	ld   a, b                                        ; $6ea9: $78
	and  a                                           ; $6eaa: $a7
	ld   a, b                                        ; $6eab: $78
	ld   a, b                                        ; $6eac: $78
	sub  [hl]                                        ; $6ead: $96
	sbc  d                                           ; $6eae: $9a
	ld   h, a                                        ; $6eaf: $67
	call nz, Call_0ab_4caa                           ; $6eb0: $c4 $aa $4c
	sub  [hl]                                        ; $6eb3: $96
	or   a                                           ; $6eb4: $b7
	ld   a, d                                        ; $6eb5: $7a
	sub  l                                           ; $6eb6: $95
	sbc  d                                           ; $6eb7: $9a
	ld   c, l                                        ; $6eb8: $4d
	ld   h, l                                        ; $6eb9: $65
	push de                                          ; $6eba: $d5
	adc  d                                           ; $6ebb: $8a
	add  [hl]                                        ; $6ebc: $86
	sbc  b                                           ; $6ebd: $98
	ld   a, c                                        ; $6ebe: $79
	add  a                                           ; $6ebf: $87
	xor  c                                           ; $6ec0: $a9
	ld   e, e                                        ; $6ec1: $5b
	ld   a, b                                        ; $6ec2: $78
	and  a                                           ; $6ec3: $a7
	adc  b                                           ; $6ec4: $88
	and  [hl]                                        ; $6ec5: $a6
	sbc  c                                           ; $6ec6: $99
	sub  a                                           ; $6ec7: $97
	adc  b                                           ; $6ec8: $88
	ld   a, c                                        ; $6ec9: $79
	ld   a, b                                        ; $6eca: $78
	ld   l, c                                        ; $6ecb: $69
	add  a                                           ; $6ecc: $87
	and  a                                           ; $6ecd: $a7
	adc  d                                           ; $6ece: $8a
	ld   a, d                                        ; $6ecf: $7a
	sub  a                                           ; $6ed0: $97
	and  [hl]                                        ; $6ed1: $a6
	adc  c                                           ; $6ed2: $89
	ld   a, b                                        ; $6ed3: $78
	ld   l, d                                        ; $6ed4: $6a
	ld   a, b                                        ; $6ed5: $78
	sub  a                                           ; $6ed6: $97
	cp   b                                           ; $6ed7: $b8
	ld   a, c                                        ; $6ed8: $79
	sub  [hl]                                        ; $6ed9: $96
	sub  a                                           ; $6eda: $97
	ld   a, c                                        ; $6edb: $79
	halt                                             ; $6edc: $76
	adc  d                                           ; $6edd: $8a
	adc  c                                           ; $6ede: $89
	ld   a, c                                        ; $6edf: $79
	sub  a                                           ; $6ee0: $97
	sbc  c                                           ; $6ee1: $99
	ld   l, c                                        ; $6ee2: $69
	sub  l                                           ; $6ee3: $95
	or   l                                           ; $6ee4: $b5
	and  a                                           ; $6ee5: $a7
	ld   a, d                                        ; $6ee6: $7a
	ld   e, e                                        ; $6ee7: $5b
	ld   e, e                                        ; $6ee8: $5b
	add  [hl]                                        ; $6ee9: $86
	and  l                                           ; $6eea: $a5
	or   a                                           ; $6eeb: $b7
	ld   a, b                                        ; $6eec: $78
	ld   a, c                                        ; $6eed: $79
	ld   a, c                                        ; $6eee: $79
	ld   a, c                                        ; $6eef: $79
	ld   a, c                                        ; $6ef0: $79
	ld   a, c                                        ; $6ef1: $79
	sbc  b                                           ; $6ef2: $98
	ld   a, b                                        ; $6ef3: $78
	sub  [hl]                                        ; $6ef4: $96
	xor  b                                           ; $6ef5: $a8
	ld   a, c                                        ; $6ef6: $79
	ld   a, b                                        ; $6ef7: $78
	sbc  b                                           ; $6ef8: $98
	adc  b                                           ; $6ef9: $88
	add  a                                           ; $6efa: $87
	adc  c                                           ; $6efb: $89
	ld   l, d                                        ; $6efc: $6a
	sub  l                                           ; $6efd: $95
	xor  b                                           ; $6efe: $a8
	ld   a, b                                        ; $6eff: $78
	sub  a                                           ; $6f00: $97
	adc  b                                           ; $6f01: $88
	add  a                                           ; $6f02: $87
	adc  c                                           ; $6f03: $89
	ld   e, d                                        ; $6f04: $5a
	ld   l, b                                        ; $6f05: $68
	add  [hl]                                        ; $6f06: $86
	sub  a                                           ; $6f07: $97
	adc  c                                           ; $6f08: $89
	add  a                                           ; $6f09: $87
	adc  b                                           ; $6f0a: $88
	ld   a, d                                        ; $6f0b: $7a
	sub  [hl]                                        ; $6f0c: $96
	xor  b                                           ; $6f0d: $a8
	ld   a, c                                        ; $6f0e: $79
	ld   a, c                                        ; $6f0f: $79
	and  a                                           ; $6f10: $a7
	ld   a, h                                        ; $6f11: $7c
	ld   e, b                                        ; $6f12: $58
	and  h                                           ; $6f13: $a4
	cp   c                                           ; $6f14: $b9
	ld   e, c                                        ; $6f15: $59
	add  l                                           ; $6f16: $85
	sbc  d                                           ; $6f17: $9a
	ld   e, d                                        ; $6f18: $5a
	sub  l                                           ; $6f19: $95
	cp   b                                           ; $6f1a: $b8
	ld   e, b                                        ; $6f1b: $58
	and  h                                           ; $6f1c: $a4
	xor  d                                           ; $6f1d: $aa
	ld   c, d                                        ; $6f1e: $4a
	add  l                                           ; $6f1f: $85
	xor  b                                           ; $6f20: $a8
	ld   l, c                                        ; $6f21: $69
	add  [hl]                                        ; $6f22: $86
	adc  d                                           ; $6f23: $8a
	halt                                             ; $6f24: $76
	and  a                                           ; $6f25: $a7
	ld   a, e                                        ; $6f26: $7b
	ld   a, b                                        ; $6f27: $78
	sub  a                                           ; $6f28: $97
	sbc  b                                           ; $6f29: $98
	sbc  b                                           ; $6f2a: $98
	ld   a, c                                        ; $6f2b: $79
	ld   l, d                                        ; $6f2c: $6a
	ld   [hl], a                                     ; $6f2d: $77
	add  a                                           ; $6f2e: $87
	add  a                                           ; $6f2f: $87
	sub  a                                           ; $6f30: $97
	adc  c                                           ; $6f31: $89
	ld   a, c                                        ; $6f32: $79
	adc  c                                           ; $6f33: $89
	ld   a, b                                        ; $6f34: $78
	sub  a                                           ; $6f35: $97
	or   [hl]                                        ; $6f36: $b6
	adc  c                                           ; $6f37: $89
	ld   a, b                                        ; $6f38: $78
	ld   a, c                                        ; $6f39: $79
	ld   [hl], a                                     ; $6f3a: $77
	adc  c                                           ; $6f3b: $89
	add  a                                           ; $6f3c: $87
	ld   a, c                                        ; $6f3d: $79
	ld   l, c                                        ; $6f3e: $69
	sub  [hl]                                        ; $6f3f: $96
	or   [hl]                                        ; $6f40: $b6
	sub  a                                           ; $6f41: $97
	adc  c                                           ; $6f42: $89
	add  a                                           ; $6f43: $87
	ld   a, d                                        ; $6f44: $7a
	ld   l, c                                        ; $6f45: $69
	add  a                                           ; $6f46: $87
	ld   a, c                                        ; $6f47: $79
	add  a                                           ; $6f48: $87
	and  [hl]                                        ; $6f49: $a6
	sbc  d                                           ; $6f4a: $9a
	ld   a, b                                        ; $6f4b: $78
	sub  a                                           ; $6f4c: $97
	adc  b                                           ; $6f4d: $88
	adc  c                                           ; $6f4e: $89
	ld   a, c                                        ; $6f4f: $79
	ld   a, c                                        ; $6f50: $79
	add  [hl]                                        ; $6f51: $86
	and  [hl]                                        ; $6f52: $a6
	sbc  c                                           ; $6f53: $99
	ld   a, c                                        ; $6f54: $79
	ld   a, d                                        ; $6f55: $7a
	ld   h, a                                        ; $6f56: $67
	and  [hl]                                        ; $6f57: $a6
	ld   a, d                                        ; $6f58: $7a
	ld   [hl], a                                     ; $6f59: $77
	add  a                                           ; $6f5a: $87
	adc  c                                           ; $6f5b: $89
	add  [hl]                                        ; $6f5c: $86
	and  a                                           ; $6f5d: $a7
	ld   l, d                                        ; $6f5e: $6a
	ld   h, a                                        ; $6f5f: $67
	sub  a                                           ; $6f60: $97
	ld   l, c                                        ; $6f61: $69
	ld   [hl], a                                     ; $6f62: $77
	xor  b                                           ; $6f63: $a8
	ld   a, b                                        ; $6f64: $78
	sub  l                                           ; $6f65: $95
	xor  c                                           ; $6f66: $a9
	ld   l, d                                        ; $6f67: $6a
	adc  b                                           ; $6f68: $88
	adc  c                                           ; $6f69: $89
	adc  c                                           ; $6f6a: $89
	adc  c                                           ; $6f6b: $89
	adc  b                                           ; $6f6c: $88
	sub  a                                           ; $6f6d: $97
	adc  d                                           ; $6f6e: $8a
	ld   a, b                                        ; $6f6f: $78
	and  a                                           ; $6f70: $a7
	ld   a, e                                        ; $6f71: $7b
	ld   l, c                                        ; $6f72: $69
	and  [hl]                                        ; $6f73: $a6
	sbc  c                                           ; $6f74: $99
	ld   a, c                                        ; $6f75: $79
	adc  c                                           ; $6f76: $89
	ld   l, d                                        ; $6f77: $6a
	ld   h, [hl]                                     ; $6f78: $66
	sub  h                                           ; $6f79: $94
	sub  [hl]                                        ; $6f7a: $96
	ld   e, b                                        ; $6f7b: $58
	ld   d, [hl]                                     ; $6f7c: $56
	ld   h, a                                        ; $6f7d: $67
	ld   d, [hl]                                     ; $6f7e: $56
	ld   [hl], l                                     ; $6f7f: $75
	ld   [hl], a                                     ; $6f80: $77
	ld   [hl], a                                     ; $6f81: $77
	ld   a, c                                        ; $6f82: $79
	ld   a, b                                        ; $6f83: $78
	sbc  b                                           ; $6f84: $98
	xor  c                                           ; $6f85: $a9
	sbc  e                                           ; $6f86: $9b
	xor  e                                           ; $6f87: $ab
	cp   e                                           ; $6f88: $bb
	sbc  h                                           ; $6f89: $9c
	jp   z, $8abc                                    ; $6f8a: $ca $bc $8a

	ret                                              ; $6f8d: $c9


	sbc  e                                           ; $6f8e: $9b
	adc  b                                           ; $6f8f: $88
	and  [hl]                                        ; $6f90: $a6
	ld   [hl], a                                     ; $6f91: $77
	ld   h, [hl]                                     ; $6f92: $66
	ld   h, l                                        ; $6f93: $65
	inc  [hl]                                        ; $6f94: $34
	ld   b, d                                        ; $6f95: $42
	ld   d, d                                        ; $6f96: $52
	inc  sp                                          ; $6f97: $33
	dec  d                                           ; $6f98: $15
	inc  [hl]                                        ; $6f99: $34
	ld   h, e                                        ; $6f9a: $63
	ld   b, [hl]                                     ; $6f9b: $46
	ld   d, l                                        ; $6f9c: $55
	or   a                                           ; $6f9d: $b7
	adc  h                                           ; $6f9e: $8c
	xor  d                                           ; $6f9f: $aa
	xor  $cf                                         ; $6fa0: $ee $cf
	db   $fd                                         ; $6fa2: $fd
	rst  $38                                         ; $6fa3: $ff
	rst  JumpTable                                         ; $6fa4: $df
	db   $fd                                         ; $6fa5: $fd
	db   $ec                                         ; $6fa6: $ec
	call z, $a78a                                    ; $6fa7: $cc $8a $a7
	ld   h, [hl]                                     ; $6faa: $66
	ld   b, h                                        ; $6fab: $44
	ld   d, e                                        ; $6fac: $53
	inc  hl                                          ; $6fad: $23
	ld   b, c                                        ; $6fae: $41
	inc  sp                                          ; $6faf: $33
	inc  de                                          ; $6fb0: $13
	ld   hl, $1313                                   ; $6fb1: $21 $13 $13
	ld   d, d                                        ; $6fb4: $52
	ld   d, a                                        ; $6fb5: $57
	ld   h, a                                        ; $6fb6: $67
	xor  d                                           ; $6fb7: $aa
	xor  [hl]                                        ; $6fb8: $ae
	sbc  $ff                                         ; $6fb9: $de $ff
	rst  $38                                         ; $6fbb: $ff
	rst  $38                                         ; $6fbc: $ff
	cp   $ee                                         ; $6fbd: $fe $ee
	call c, $89bb                                    ; $6fbf: $dc $bb $89
	and  [hl]                                        ; $6fc2: $a6
	ld   l, b                                        ; $6fc3: $68
	ld   d, h                                        ; $6fc4: $54
	ld   h, h                                        ; $6fc5: $64
	ld   b, e                                        ; $6fc6: $43
	ld   b, c                                        ; $6fc7: $41
	inc  de                                          ; $6fc8: $13
	ld   de, $1111                                   ; $6fc9: $11 $11 $11
	ld   [hl+], a                                    ; $6fcc: $22
	ld   [de], a                                     ; $6fcd: $12
	ld   d, h                                        ; $6fce: $54
	halt                                             ; $6fcf: $76
	sbc  e                                           ; $6fd0: $9b
	xor  h                                           ; $6fd1: $ac
	xor  $ff                                         ; $6fd2: $ee $ff
	rst  $38                                         ; $6fd4: $ff
	rst  $38                                         ; $6fd5: $ff
	rst  $38                                         ; $6fd6: $ff
	db   $fc                                         ; $6fd7: $fc
	db   $fc                                         ; $6fd8: $fc
	cp   e                                           ; $6fd9: $bb
	xor  e                                           ; $6fda: $ab
	adc  b                                           ; $6fdb: $88
	ld   h, [hl]                                     ; $6fdc: $66
	halt                                             ; $6fdd: $76
	ld   b, h                                        ; $6fde: $44
	ld   h, h                                        ; $6fdf: $64
	inc  hl                                          ; $6fe0: $23
	ld   b, c                                        ; $6fe1: $41
	ld   hl, $1112                                   ; $6fe2: $21 $12 $11
	ld   de, $1311                                   ; $6fe5: $11 $11 $13
	ld   h, l                                        ; $6fe8: $65
	ld   a, d                                        ; $6fe9: $7a
	cp   h                                           ; $6fea: $bc
	rst  JumpTable                                         ; $6feb: $df
	rst  $38                                         ; $6fec: $ff
	rst  $38                                         ; $6fed: $ff
	rst  $38                                         ; $6fee: $ff
	rst  $38                                         ; $6fef: $ff
	cp   $ed                                         ; $6ff0: $fe $ed
	call z, $a799                                    ; $6ff2: $cc $99 $a7
	ld   a, b                                        ; $6ff5: $78
	ld   h, [hl]                                     ; $6ff6: $66
	ld   [hl], l                                     ; $6ff7: $75
	ld   b, h                                        ; $6ff8: $44
	ld   h, l                                        ; $6ff9: $65
	inc  d                                           ; $6ffa: $14
	ld   sp, $1111                                   ; $6ffb: $31 $11 $11
	ld   de, $3311                                   ; $6ffe: $11 $11 $33
	scf                                              ; $7001: $37
	ld   a, b                                        ; $7002: $78
	cp   l                                           ; $7003: $bd
	call $ffff                                       ; $7004: $cd $ff $ff
	rst  $38                                         ; $7007: $ff
	rst  $38                                         ; $7008: $ff
	rst  $38                                         ; $7009: $ff
	cp   $cd                                         ; $700a: $fe $cd
	res  5, e                                        ; $700c: $cb $ab
	sub  a                                           ; $700e: $97
	add  a                                           ; $700f: $87
	ld   h, a                                        ; $7010: $67
	ld   h, l                                        ; $7011: $65
	ld   b, h                                        ; $7012: $44
	ld   d, e                                        ; $7013: $53
	ld   b, e                                        ; $7014: $43
	ld   de, $1111                                   ; $7015: $11 $11 $11
	ld   de, $1311                                   ; $7018: $11 $11 $13
	ld   d, l                                        ; $701b: $55
	sbc  e                                           ; $701c: $9b
	rst  $38                                         ; $701d: $ff
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	rst  $38                                         ; $7020: $ff
	rst  $38                                         ; $7021: $ff
	rst  $38                                         ; $7022: $ff
	rst  $38                                         ; $7023: $ff
	db   $ec                                         ; $7024: $ec
	xor  c                                           ; $7025: $a9
	sbc  b                                           ; $7026: $98
	ld   h, l                                        ; $7027: $65
	ld   d, [hl]                                     ; $7028: $56
	ld   d, h                                        ; $7029: $54
	ld   d, e                                        ; $702a: $53
	inc  sp                                          ; $702b: $33
	ld   de, $1101                                   ; $702c: $11 $01 $11
	ld   de, $1111                                   ; $702f: $11 $11 $11
	ld   de, $7a25                                   ; $7032: $11 $25 $7a
	rst  JumpTable                                         ; $7035: $df
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	rst  $38                                         ; $7039: $ff
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	sbc  $b9                                         ; $703c: $de $b9
	sub  a                                           ; $703e: $97
	ld   h, h                                        ; $703f: $64
	ld   h, a                                        ; $7040: $67
	ld   d, [hl]                                     ; $7041: $56
	halt                                             ; $7042: $76
	ld   d, l                                        ; $7043: $55
	ld   h, h                                        ; $7044: $64
	ld   de, $1111                                   ; $7045: $11 $11 $11
	ld   de, $1111                                   ; $7048: $11 $11 $11
	ld   de, $ff37                                   ; $704b: $11 $37 $ff
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	rst  $38                                         ; $7050: $ff
	rst  $38                                         ; $7051: $ff
	rst  $38                                         ; $7052: $ff
	rst  $38                                         ; $7053: $ff
	db   $ec                                         ; $7054: $ec
	cp   b                                           ; $7055: $b8
	ld   [hl], h                                     ; $7056: $74
	ld   b, [hl]                                     ; $7057: $46
	ld   h, a                                        ; $7058: $67
	ld   h, a                                        ; $7059: $67
	xor  c                                           ; $705a: $a9
	add  a                                           ; $705b: $87
	ld   a, b                                        ; $705c: $78
	ld   sp, $1111                                   ; $705d: $31 $11 $11
	ld   de, $1111                                   ; $7060: $11 $11 $11
	ld   de, $9f14                                   ; $7063: $11 $14 $9f
	rst  $38                                         ; $7066: $ff
	rst  $38                                         ; $7067: $ff
	rst  $38                                         ; $7068: $ff
	rst  $38                                         ; $7069: $ff
	rst  $38                                         ; $706a: $ff
	rst  $38                                         ; $706b: $ff
	db   $db                                         ; $706c: $db
	cp   b                                           ; $706d: $b8
	halt                                             ; $706e: $76
	ld   d, [hl]                                     ; $706f: $56
	ld   l, c                                        ; $7070: $69
	sbc  d                                           ; $7071: $9a
	cp   h                                           ; $7072: $bc
	cp   d                                           ; $7073: $ba
	xor  b                                           ; $7074: $a8
	ld   d, h                                        ; $7075: $54
	ld   de, $1111                                   ; $7076: $11 $11 $11
	ld   de, $1111                                   ; $7079: $11 $11 $11
	dec  d                                           ; $707c: $15
	adc  d                                           ; $707d: $8a
	rst  $38                                         ; $707e: $ff
	rst  $38                                         ; $707f: $ff
	rst  $38                                         ; $7080: $ff
	rst  $38                                         ; $7081: $ff
	rst  $38                                         ; $7082: $ff
	rst  $38                                         ; $7083: $ff
	db   $fc                                         ; $7084: $fc
	ld   a, b                                        ; $7085: $78
	ld   h, a                                        ; $7086: $67
	halt                                             ; $7087: $76
	cp   c                                           ; $7088: $b9
	call $dedf                                       ; $7089: $cd $df $de
	ret                                              ; $708c: $c9


	ld   [hl], h                                     ; $708d: $74
	ld   sp, $1111                                   ; $708e: $31 $11 $11
	ld   de, $1111                                   ; $7091: $11 $11 $11
	ld   de, $ff47                                   ; $7094: $11 $47 $ff
	rst  $38                                         ; $7097: $ff
	rst  $38                                         ; $7098: $ff
	rst  $38                                         ; $7099: $ff
	rst  $38                                         ; $709a: $ff
	rst  $38                                         ; $709b: $ff
	db   $dd                                         ; $709c: $dd
	cp   d                                           ; $709d: $ba
	sub  [hl]                                        ; $709e: $96
	sbc  d                                           ; $709f: $9a
	xor  l                                           ; $70a0: $ad
	rst  JumpTable                                         ; $70a1: $df
	rst  $38                                         ; $70a2: $ff
	rst  $38                                         ; $70a3: $ff
	db   $fd                                         ; $70a4: $fd
	sbc  c                                           ; $70a5: $99
	ld   hl, $1111                                   ; $70a6: $21 $11 $11
	ld   de, $1111                                   ; $70a9: $11 $11 $11
	ld   de, $7a14                                   ; $70ac: $11 $14 $7a
	rst  JumpTable                                         ; $70af: $df
	rst  $38                                         ; $70b0: $ff
	rst  $38                                         ; $70b1: $ff
	rst  $38                                         ; $70b2: $ff
	rst  $38                                         ; $70b3: $ff
	rst  $38                                         ; $70b4: $ff
	db   $ec                                         ; $70b5: $ec
	db   $db                                         ; $70b6: $db
	cp   h                                           ; $70b7: $bc
	xor  [hl]                                        ; $70b8: $ae
	rst  $38                                         ; $70b9: $ff
	cp   $ff                                         ; $70ba: $fe $ff
	cp   $b9                                         ; $70bc: $fe $b9
	ld   [hl], l                                     ; $70be: $75
	ld   sp, $1111                                   ; $70bf: $31 $11 $11
	ld   de, $1111                                   ; $70c2: $11 $11 $11
	ld   de, $5811                                   ; $70c5: $11 $11 $58
	xor  h                                           ; $70c8: $ac
	rst  $38                                         ; $70c9: $ff
	rst  $38                                         ; $70ca: $ff
	rst  $38                                         ; $70cb: $ff
	rst  $38                                         ; $70cc: $ff
	rst  $38                                         ; $70cd: $ff
	cp   $ee                                         ; $70ce: $fe $ee
	db   $dd                                         ; $70d0: $dd
	xor  $ee                                         ; $70d1: $ee $ee
	rst  $38                                         ; $70d3: $ff
	cp   $ee                                         ; $70d4: $fe $ee
	cp   d                                           ; $70d6: $ba
	halt                                             ; $70d7: $76
	ld   b, c                                        ; $70d8: $41
	ld   de, $1111                                   ; $70d9: $11 $11 $11
	ld   de, $1111                                   ; $70dc: $11 $11 $11
	ld   de, $4924                                   ; $70df: $11 $24 $49
	sbc  $ff                                         ; $70e2: $de $ff
	rst  $38                                         ; $70e4: $ff
	rst  $38                                         ; $70e5: $ff
	rst  $38                                         ; $70e6: $ff
	rst  $38                                         ; $70e7: $ff
	rst  $38                                         ; $70e8: $ff
	rst  $38                                         ; $70e9: $ff
	call $ffdf                                       ; $70ea: $cd $df $ff
	cp   $dc                                         ; $70ed: $fe $dc
	db   $dd                                         ; $70ef: $dd
	or   a                                           ; $70f0: $b7
	ld   b, d                                        ; $70f1: $42
	ld   de, $1111                                   ; $70f2: $11 $11 $11
	ld   de, $1111                                   ; $70f5: $11 $11 $11
	ld   de, $2411                                   ; $70f8: $11 $11 $24
	ld   b, a                                        ; $70fb: $47
	xor  l                                           ; $70fc: $ad
	rst  $38                                         ; $70fd: $ff
	rst  $38                                         ; $70fe: $ff
	rst  $38                                         ; $70ff: $ff
	rst  $38                                         ; $7100: $ff
	rst  $38                                         ; $7101: $ff
	rst  $38                                         ; $7102: $ff
	db   $ed                                         ; $7103: $ed
	db   $dd                                         ; $7104: $dd
	sbc  $de                                         ; $7105: $de $de
	cp   $dc                                         ; $7107: $fe $dc
	res  3, b                                        ; $7109: $cb $98
	ld   h, h                                        ; $710b: $64
	ld   de, $1111                                   ; $710c: $11 $11 $11
	ld   de, $1111                                   ; $710f: $11 $11 $11
	ld   de, $2411                                   ; $7112: $11 $11 $24
	dec  [hl]                                        ; $7115: $35
	ld   a, h                                        ; $7116: $7c
	rst  $38                                         ; $7117: $ff
	rst  $38                                         ; $7118: $ff
	rst  $38                                         ; $7119: $ff
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	db   $fc                                         ; $711c: $fc
	cp   $ef                                         ; $711d: $fe $ef
	xor  e                                           ; $711f: $ab
	call $fcff                                       ; $7120: $cd $ff $fc
	xor  h                                           ; $7123: $ac
	xor  c                                           ; $7124: $a9
	ld   [hl], e                                     ; $7125: $73
	ld   hl, $1211                                   ; $7126: $21 $11 $12
	ld   de, $2111                                   ; $7129: $11 $11 $21
	ld   de, $1411                                   ; $712c: $11 $11 $14
	ld   sp, $df47                                   ; $712f: $31 $47 $df
	rst  $38                                         ; $7132: $ff
	rst  $38                                         ; $7133: $ff
	rst  $38                                         ; $7134: $ff
	rst  $38                                         ; $7135: $ff
	db   $eb                                         ; $7136: $eb
	call z, $caed                                    ; $7137: $cc $ed $ca
	cp   a                                           ; $713a: $bf
	rst  $38                                         ; $713b: $ff
	db   $fc                                         ; $713c: $fc
	xor  c                                           ; $713d: $a9
	cp   e                                           ; $713e: $bb
	sub  a                                           ; $713f: $97
	ld   [hl-], a                                    ; $7140: $32
	inc  hl                                          ; $7141: $23
	inc  sp                                          ; $7142: $33
	ld   de, $2111                                   ; $7143: $11 $11 $21
	ld   de, $1111                                   ; $7146: $11 $11 $11
	ld   de, $6a15                                   ; $7149: $11 $15 $6a
	rst  $28                                         ; $714c: $ef
	rst  $38                                         ; $714d: $ff
	rst  $38                                         ; $714e: $ff
	rst  $38                                         ; $714f: $ff
	rst  $38                                         ; $7150: $ff
	db   $ec                                         ; $7151: $ec
	set  3, [hl]                                     ; $7152: $cb $de
	call c, $efdb                                    ; $7154: $dc $db $ef
	cp   $aa                                         ; $7157: $fe $aa
	adc  c                                           ; $7159: $89
	cp   c                                           ; $715a: $b9
	ld   [hl], e                                     ; $715b: $73
	ld   [de], a                                     ; $715c: $12
	dec  h                                           ; $715d: $25
	ld   d, d                                        ; $715e: $52
	ld   de, $3213                                   ; $715f: $11 $13 $32
	ld   de, $1211                                   ; $7162: $11 $11 $12
	ld   d, e                                        ; $7165: $53
	inc  h                                           ; $7166: $24
	sbc  [hl]                                        ; $7167: $9e
	rst  $38                                         ; $7168: $ff
	db   $fd                                         ; $7169: $fd
	xor  $ff                                         ; $716a: $ee $ff
	cp   $8a                                         ; $716c: $fe $8a
	sbc  [hl]                                        ; $716e: $9e
	cp   $d9                                         ; $716f: $fe $d9
	rst  JumpTable                                         ; $7171: $df
	rst  $38                                         ; $7172: $ff
	db   $db                                         ; $7173: $db
	ld   l, b                                        ; $7174: $68
	xor  d                                           ; $7175: $aa
	and  l                                           ; $7176: $a5
	ld   sp, $5536                                   ; $7177: $31 $36 $55
	ld   hl, $4311                                   ; $717a: $21 $11 $43
	ld   de, $1311                                   ; $717d: $11 $11 $13
	ld   hl, $6c15                                   ; $7180: $21 $15 $6c
	cp   $db                                         ; $7183: $fe $db
	rst  $28                                         ; $7185: $ef
	rst  $38                                         ; $7186: $ff
	jp   hl                                          ; $7187: $e9


	xor  e                                           ; $7188: $ab
	rst  $38                                         ; $7189: $ff
	db   $eb                                         ; $718a: $eb
	adc  d                                           ; $718b: $8a
	rst  $28                                         ; $718c: $ef
	cp   $a9                                         ; $718d: $fe $a9
	sbc  h                                           ; $718f: $9c
	cp   e                                           ; $7190: $bb
	and  h                                           ; $7191: $a4
	ld   b, h                                        ; $7192: $44
	ld   d, a                                        ; $7193: $57
	ld   h, l                                        ; $7194: $65
	ld   hl, $4522                                   ; $7195: $21 $22 $45
	ld   de, $1111                                   ; $7198: $11 $11 $11
	ld   de, $6913                                   ; $719b: $11 $13 $69
	xor  h                                           ; $719e: $ac
	jp   z, $fddf                                    ; $719f: $ca $df $fd

	db   $ed                                         ; $71a2: $ed
	call $9bef                                       ; $71a3: $cd $ef $9b
	reti                                             ; $71a6: $d9


	rst  $38                                         ; $71a7: $ff
	xor  $cd                                         ; $71a8: $ee $cd
	cp   h                                           ; $71aa: $bc
	ld   a, [$77b8]                                  ; $71ab: $fa $b8 $77
	ld   d, [hl]                                     ; $71ae: $56
	ld   b, e                                        ; $71af: $43
	ld   d, l                                        ; $71b0: $55
	ld   b, h                                        ; $71b1: $44
	inc  hl                                          ; $71b2: $23
	inc  sp                                          ; $71b3: $33
	ld   hl, $1111                                   ; $71b4: $21 $11 $11
	ld   de, $4623                                   ; $71b7: $11 $23 $46
	ld   a, d                                        ; $71ba: $7a
	cp   l                                           ; $71bb: $bd
	ld   sp, hl                                      ; $71bc: $f9
	rst  $28                                         ; $71bd: $ef
	rst  $28                                         ; $71be: $ef
	jp   c, $ff99                                    ; $71bf: $da $99 $ff

	rst  JumpTable                                         ; $71c2: $df
	xor  e                                           ; $71c3: $ab
	rst  $28                                         ; $71c4: $ef
	db   $fc                                         ; $71c5: $fc
	cp   c                                           ; $71c6: $b9
	ld   a, l                                        ; $71c7: $7d
	db   $db                                         ; $71c8: $db
	sub  l                                           ; $71c9: $95
	ld   h, [hl]                                     ; $71ca: $66
	sbc  b                                           ; $71cb: $98
	ld   [hl-], a                                    ; $71cc: $32
	inc  h                                           ; $71cd: $24
	ld   [hl], l                                     ; $71ce: $75
	ld   hl, $1112                                   ; $71cf: $21 $12 $11
	ld   de, $2411                                   ; $71d2: $11 $11 $24
	ld   [hl+], a                                    ; $71d5: $22
	ld   b, l                                        ; $71d6: $45
	xor  [hl]                                        ; $71d7: $ae
	cp   d                                           ; $71d8: $ba
	xor  [hl]                                        ; $71d9: $ae
	db   $fd                                         ; $71da: $fd
	db   $fc                                         ; $71db: $fc
	cp   a                                           ; $71dc: $bf
	sbc  $cc                                         ; $71dd: $de $cc
	db   $db                                         ; $71df: $db
	rst  $38                                         ; $71e0: $ff
	call $cbac                                       ; $71e1: $cd $ac $cb
	ret  z                                           ; $71e4: $c8

	sbc  b                                           ; $71e5: $98
	ld   l, c                                        ; $71e6: $69
	ld   [hl], a                                     ; $71e7: $77
	ld   h, h                                        ; $71e8: $64
	ld   d, h                                        ; $71e9: $54
	ld   d, l                                        ; $71ea: $55
	ld   [hl-], a                                    ; $71eb: $32
	ld   de, $3133                                   ; $71ec: $11 $33 $31
	ld   de, $2212                                   ; $71ef: $11 $12 $22
	ld   b, h                                        ; $71f2: $44
	ld   d, l                                        ; $71f3: $55
	sbc  c                                           ; $71f4: $99
	ld   a, h                                        ; $71f5: $7c
	cp   e                                           ; $71f6: $bb
	call c, $eefd                                    ; $71f7: $dc $fd $ee
	xor  l                                           ; $71fa: $ad
	cp   l                                           ; $71fb: $bd
	set  5, e                                        ; $71fc: $cb $eb
	db   $dd                                         ; $71fe: $dd
	call z, $a9aa                                    ; $71ff: $cc $aa $a9
	xor  c                                           ; $7202: $a9
	sbc  b                                           ; $7203: $98
	halt                                             ; $7204: $76
	ld   [hl], l                                     ; $7205: $75
	ld   d, l                                        ; $7206: $55
	ld   d, l                                        ; $7207: $55
	ld   d, l                                        ; $7208: $55
	ld   b, l                                        ; $7209: $45
	ld   d, e                                        ; $720a: $53
	ld   [hl-], a                                    ; $720b: $32
	inc  h                                           ; $720c: $24
	inc  sp                                          ; $720d: $33
	inc  hl                                          ; $720e: $23
	ld   b, h                                        ; $720f: $44
	ld   a, b                                        ; $7210: $78
	ld   d, a                                        ; $7211: $57
	ld   a, c                                        ; $7212: $79
	cp   e                                           ; $7213: $bb
	jp   c, $bdae                                    ; $7214: $da $ae $bd

	jp   c, $ccba                                    ; $7217: $da $ba $cc

	cp   l                                           ; $721a: $bd
	sbc  d                                           ; $721b: $9a
	cp   d                                           ; $721c: $ba
	cp   c                                           ; $721d: $b9
	xor  b                                           ; $721e: $a8
	adc  e                                           ; $721f: $8b
	sbc  b                                           ; $7220: $98
	add  a                                           ; $7221: $87
	ld   [hl], a                                     ; $7222: $77
	ld   [hl], a                                     ; $7223: $77
	ld   h, [hl]                                     ; $7224: $66
	ld   h, l                                        ; $7225: $65
	ld   h, l                                        ; $7226: $65
	ld   d, l                                        ; $7227: $55
	ld   d, l                                        ; $7228: $55
	ld   d, l                                        ; $7229: $55
	ld   d, l                                        ; $722a: $55
	ld   h, [hl]                                     ; $722b: $66
	ld   b, e                                        ; $722c: $43
	ld   d, [hl]                                     ; $722d: $56
	ld   a, b                                        ; $722e: $78
	halt                                             ; $722f: $76
	ld   l, c                                        ; $7230: $69
	xor  c                                           ; $7231: $a9
	adc  b                                           ; $7232: $88
	adc  c                                           ; $7233: $89
	cp   e                                           ; $7234: $bb
	sbc  c                                           ; $7235: $99
	sbc  c                                           ; $7236: $99
	adc  d                                           ; $7237: $8a
	sbc  c                                           ; $7238: $99
	sbc  b                                           ; $7239: $98
	xor  b                                           ; $723a: $a8
	add  a                                           ; $723b: $87
	ld   a, b                                        ; $723c: $78
	add  a                                           ; $723d: $87
	ld   a, b                                        ; $723e: $78
	ld   [hl], a                                     ; $723f: $77
	halt                                             ; $7240: $76
	halt                                             ; $7241: $76
	ld   h, [hl]                                     ; $7242: $66
	ld   h, a                                        ; $7243: $67
	ld   h, [hl]                                     ; $7244: $66
	ld   h, [hl]                                     ; $7245: $66
	ld   h, [hl]                                     ; $7246: $66
	ld   h, a                                        ; $7247: $67
	ld   a, b                                        ; $7248: $78
	adc  b                                           ; $7249: $88
	adc  b                                           ; $724a: $88
	adc  b                                           ; $724b: $88
	adc  d                                           ; $724c: $8a
	sbc  d                                           ; $724d: $9a
	xor  d                                           ; $724e: $aa
	xor  c                                           ; $724f: $a9
	xor  d                                           ; $7250: $aa
	sbc  c                                           ; $7251: $99
	sbc  c                                           ; $7252: $99
	sbc  c                                           ; $7253: $99
	sbc  b                                           ; $7254: $98
	adc  b                                           ; $7255: $88
	sbc  b                                           ; $7256: $98
	sbc  c                                           ; $7257: $99
	sbc  c                                           ; $7258: $99
	sbc  c                                           ; $7259: $99
	sbc  c                                           ; $725a: $99
	sbc  c                                           ; $725b: $99
	sbc  c                                           ; $725c: $99
	sbc  c                                           ; $725d: $99
	sbc  c                                           ; $725e: $99
	sbc  c                                           ; $725f: $99
	adc  b                                           ; $7260: $88
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	adc  c                                           ; $7263: $89
	adc  b                                           ; $7264: $88
	sbc  b                                           ; $7265: $98
	sbc  c                                           ; $7266: $99
	sbc  c                                           ; $7267: $99
	sbc  c                                           ; $7268: $99
	sbc  c                                           ; $7269: $99
	sbc  c                                           ; $726a: $99
	sbc  c                                           ; $726b: $99
	sbc  c                                           ; $726c: $99
	sbc  c                                           ; $726d: $99
	sbc  c                                           ; $726e: $99
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
	add  a                                           ; $7361: $87
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
	sbc  c                                           ; $737c: $99
	sbc  c                                           ; $737d: $99
	sbc  b                                           ; $737e: $98
	sbc  c                                           ; $737f: $99
	sbc  c                                           ; $7380: $99
	adc  c                                           ; $7381: $89
	sbc  c                                           ; $7382: $99
	adc  e                                           ; $7383: $8b
	adc  b                                           ; $7384: $88
	cp   d                                           ; $7385: $ba
	cp   b                                           ; $7386: $b8
	sbc  c                                           ; $7387: $99
	sbc  b                                           ; $7388: $98
	sbc  b                                           ; $7389: $98
	adc  d                                           ; $738a: $8a
	adc  d                                           ; $738b: $8a
	cp   b                                           ; $738c: $b8
	ld   a, d                                        ; $738d: $7a
	sbc  b                                           ; $738e: $98
	xor  b                                           ; $738f: $a8
	ld   a, c                                        ; $7390: $79
	adc  b                                           ; $7391: $88
	ld   [hl], a                                     ; $7392: $77
	ld   a, d                                        ; $7393: $7a
	xor  d                                           ; $7394: $aa
	sbc  c                                           ; $7395: $99
	xor  c                                           ; $7396: $a9
	ld   [hl], a                                     ; $7397: $77
	ld   h, l                                        ; $7398: $65
	ld   h, [hl]                                     ; $7399: $66
	ld   h, l                                        ; $739a: $65
	ld   d, [hl]                                     ; $739b: $56
	adc  b                                           ; $739c: $88
	add  a                                           ; $739d: $87
	ld   a, b                                        ; $739e: $78
	sbc  c                                           ; $739f: $99
	ld   [hl], l                                     ; $73a0: $75
	ld   d, h                                        ; $73a1: $54
	ld   d, [hl]                                     ; $73a2: $56
	ld   h, l                                        ; $73a3: $65
	ld   h, [hl]                                     ; $73a4: $66
	ld   h, a                                        ; $73a5: $67
	ld   h, [hl]                                     ; $73a6: $66
	ld   h, [hl]                                     ; $73a7: $66
	ld   h, [hl]                                     ; $73a8: $66
	adc  b                                           ; $73a9: $88
	ld   h, [hl]                                     ; $73aa: $66
	ld   h, [hl]                                     ; $73ab: $66
	ld   h, [hl]                                     ; $73ac: $66
	ld   l, b                                        ; $73ad: $68
	ld   a, b                                        ; $73ae: $78
	ld   [hl], l                                     ; $73af: $75
	ld   [hl], a                                     ; $73b0: $77
	ld   [hl], a                                     ; $73b1: $77
	ld   h, a                                        ; $73b2: $67
	adc  c                                           ; $73b3: $89
	sub  [hl]                                        ; $73b4: $96
	ld   [hl], a                                     ; $73b5: $77
	ld   a, c                                        ; $73b6: $79
	add  a                                           ; $73b7: $87
	halt                                             ; $73b8: $76
	sbc  c                                           ; $73b9: $99
	ld   h, [hl]                                     ; $73ba: $66
	ld   a, b                                        ; $73bb: $78
	adc  c                                           ; $73bc: $89
	add  a                                           ; $73bd: $87
	ld   [hl], a                                     ; $73be: $77
	ld   [hl], a                                     ; $73bf: $77
	ld   a, b                                        ; $73c0: $78
	sbc  b                                           ; $73c1: $98
	ld   [hl], a                                     ; $73c2: $77
	adc  b                                           ; $73c3: $88
	adc  c                                           ; $73c4: $89
	halt                                             ; $73c5: $76
	ld   a, c                                        ; $73c6: $79
	adc  d                                           ; $73c7: $8a
	ld   [hl], d                                     ; $73c8: $72
	xor  e                                           ; $73c9: $ab
	ld   [hl], a                                     ; $73ca: $77
	adc  c                                           ; $73cb: $89
	xor  e                                           ; $73cc: $ab
	dec  [hl]                                        ; $73cd: $35
	call Call_0ab_47a3                               ; $73ce: $cd $a3 $47
	db   $db                                         ; $73d1: $db
	ld   d, l                                        ; $73d2: $55
	ld   h, a                                        ; $73d3: $67
	cp   e                                           ; $73d4: $bb
	add  hl, sp                                      ; $73d5: $39
	and  h                                           ; $73d6: $a4
	sbc  d                                           ; $73d7: $9a
	ret  z                                           ; $73d8: $c8

	ld   e, b                                        ; $73d9: $58
	ld   h, [hl]                                     ; $73da: $66
	xor  b                                           ; $73db: $a8
	ld   l, e                                        ; $73dc: $6b
	add  [hl]                                        ; $73dd: $86
	sbc  c                                           ; $73de: $99
	db   $db                                         ; $73df: $db
	sbc  b                                           ; $73e0: $98
	ld   h, h                                        ; $73e1: $64
	ld   l, h                                        ; $73e2: $6c
	or   a                                           ; $73e3: $b7
	ld   e, b                                        ; $73e4: $58
	and  a                                           ; $73e5: $a7
	db   $db                                         ; $73e6: $db
	sbc  c                                           ; $73e7: $99
	ld   [de], a                                     ; $73e8: $12
	sbc  a                                           ; $73e9: $9f
	rst  $30                                         ; $73ea: $f7
	inc  de                                          ; $73eb: $13
	sbc  a                                           ; $73ec: $9f
	push af                                          ; $73ed: $f5
	inc  d                                           ; $73ee: $14
	cp   a                                           ; $73ef: $bf
	and  a                                           ; $73f0: $a7
	ld   a, c                                        ; $73f1: $79
	cp   [hl]                                        ; $73f2: $be
	or   e                                           ; $73f3: $b3
	ld   e, h                                        ; $73f4: $5c
	cp   c                                           ; $73f5: $b9
	and  c                                           ; $73f6: $a1
	ld   e, a                                        ; $73f7: $5f
	ei                                               ; $73f8: $fb
	ld   [hl-], a                                    ; $73f9: $32
	sbc  l                                           ; $73fa: $9d
	ret                                              ; $73fb: $c9


	ld   b, c                                        ; $73fc: $41
	ld   l, a                                        ; $73fd: $6f
	call nz, $ea5b                                   ; $73fe: $c4 $5b $ea
	push de                                          ; $7401: $d5
	ld   c, l                                        ; $7402: $4d
	and  a                                           ; $7403: $a7
	dec  [hl]                                        ; $7404: $35
	ld   e, e                                        ; $7405: $5b
	ld   a, [$5c67]                                  ; $7406: $fa $67 $5c
	ld   sp, hl                                      ; $7409: $f9
	ld   e, d                                        ; $740a: $5a
	dec  sp                                          ; $740b: $3b
	ld   sp, hl                                      ; $740c: $f9
	inc  [hl]                                        ; $740d: $34
	cp   h                                           ; $740e: $bc
	ei                                               ; $740f: $fb
	dec  d                                           ; $7410: $15
	sbc  d                                           ; $7411: $9a
	ld   a, e                                        ; $7412: $7b
	add  $c9                                         ; $7413: $c6 $c9
	ld   e, b                                        ; $7415: $58
	ld   a, l                                        ; $7416: $7d
	or   l                                           ; $7417: $b5
	ld   l, d                                        ; $7418: $6a
	xor  b                                           ; $7419: $a8
	sbc  d                                           ; $741a: $9a
	ld   e, b                                        ; $741b: $58
	push de                                          ; $741c: $d5
	ld   e, h                                        ; $741d: $5c
	call nc, $8915                                   ; $741e: $d4 $15 $89
	sbc  h                                           ; $7421: $9c
	or   d                                           ; $7422: $b2
	ld   c, e                                        ; $7423: $4b
	reti                                             ; $7424: $d9


	ld   a, c                                        ; $7425: $79
	ld   c, d                                        ; $7426: $4a
	push bc                                          ; $7427: $c5
	or   e                                           ; $7428: $b3
	ld   l, a                                        ; $7429: $6f
	ld   d, c                                        ; $742a: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $742b: $cf
	xor  e                                           ; $742c: $ab
	ld   h, [hl]                                     ; $742d: $66
	or   a                                           ; $742e: $b7
	ld   e, l                                        ; $742f: $5d
	and  a                                           ; $7430: $a7
	add  sp, $1b                                     ; $7431: $e8 $1b
	ld   a, [$4c13]                                  ; $7433: $fa $13 $4c
	rst  $30                                         ; $7436: $f7
	ld   h, $46                                      ; $7437: $26 $46
	rst  $30                                         ; $7439: $f7
	ld   [hl], $7f                                   ; $743a: $36 $7f
	rst  $10                                         ; $743c: $d7
	dec  d                                           ; $743d: $15
	db   $fc                                         ; $743e: $fc
	ld   [hl], a                                     ; $743f: $77
	ld   h, a                                        ; $7440: $67
	xor  l                                           ; $7441: $ad
	and  a                                           ; $7442: $a7

jr_0ab_7443:
	sbc  e                                           ; $7443: $9b
	ld   a, b                                        ; $7444: $78
	sbc  $71                                         ; $7445: $de $71
	ld   b, [hl]                                     ; $7447: $46
	ld   e, c                                        ; $7448: $59
	ret                                              ; $7449: $c9


	ld   [hl], d                                     ; $744a: $72
	jr   jr_0ab_7443                                 ; $744b: $18 $f6

	ld   h, l                                        ; $744d: $65
	dec  d                                           ; $744e: $15
	jp   c, $fe19                                    ; $744f: $da $19 $fe

	add  c                                           ; $7452: $81
	dec  de                                          ; $7453: $1b
	ei                                               ; $7454: $fb
	dec  h                                           ; $7455: $25
	cp   l                                           ; $7456: $bd
	ret  z                                           ; $7457: $c8

	add  hl, de                                      ; $7458: $19
	rst  $38                                         ; $7459: $ff
	sub  d                                           ; $745a: $92
	ld   d, e                                        ; $745b: $53
	rst  JumpTable                                         ; $745c: $df
	add  l                                           ; $745d: $85
	ld   de, $c38f                                   ; $745e: $11 $8f $c3
	ld   hl, $da4c                                   ; $7461: $21 $4c $da
	ld   de, $d96b                                   ; $7464: $11 $6b $d9
	sub  $5b                                         ; $7467: $d6 $5b
	ld   b, a                                        ; $7469: $47
	db   $fd                                         ; $746a: $fd
	add  e                                           ; $746b: $83
	dec  e                                           ; $746c: $1d
	ei                                               ; $746d: $fb
	ld   [hl], h                                     ; $746e: $74
	ld   [hl-], a                                    ; $746f: $32
	sbc  c                                           ; $7470: $99
	ld   l, $b1                                      ; $7471: $2e $b1
	ld   a, [hl-]                                    ; $7473: $3a
	sbc  c                                           ; $7474: $99
	call nc, Call_0ab_5718                           ; $7475: $d4 $18 $57
	ld   hl, sp+$16                                  ; $7478: $f8 $16
	dec  a                                           ; $747a: $3d
	jp   c, $a478                                    ; $747b: $da $78 $a4

	ld   a, a                                        ; $747e: $7f
	ld   hl, sp+$25                                  ; $747f: $f8 $25
	rst  $28                                         ; $7481: $ef
	pop  de                                          ; $7482: $d1
	add  hl, bc                                      ; $7483: $09
	rst  $28                                         ; $7484: $ef
	ld   de, $5ff8                                   ; $7485: $11 $f8 $5f
	ld   [hl], c                                     ; $7488: $71
	ld   c, h                                        ; $7489: $4c
	jp   Jump_0ab_615b                               ; $748a: $c3 $5b $61


	ld   de, $8326                                   ; $748d: $11 $26 $83
	ld   de, $71ef                                   ; $7490: $11 $ef $71
	ld   de, $f31d                                   ; $7493: $11 $1d $f3
	inc  d                                           ; $7496: $14
	cp   a                                           ; $7497: $bf
	rst  $38                                         ; $7498: $ff
	xor  [hl]                                        ; $7499: $ae
	sbc  e                                           ; $749a: $9b
	cp   $ef                                         ; $749b: $fe $ef
	db   $fd                                         ; $749d: $fd
	rst  JumpTable                                         ; $749e: $df
	db   $fd                                         ; $749f: $fd
	rst  $38                                         ; $74a0: $ff
	db   $eb                                         ; $74a1: $eb
	xor  h                                           ; $74a2: $ac
	call c, $11a5                                    ; $74a3: $dc $a5 $11
	adc  e                                           ; $74a6: $8b
	ld   sp, $1811                                   ; $74a7: $31 $11 $18
	ld   hl, $1111                                   ; $74aa: $21 $11 $11
	ld   de, $2a13                                   ; $74ad: $11 $13 $2a
	sub  c                                           ; $74b0: $91
	ccf                                              ; $74b1: $3f
	ld   [hl], c                                     ; $74b2: $71
	ld   sp, hl                                      ; $74b3: $f9
	rra                                              ; $74b4: $1f
	rst  $38                                         ; $74b5: $ff
	rst  JumpTable                                         ; $74b6: $df
	xor  c                                           ; $74b7: $a9
	rst  $38                                         ; $74b8: $ff
	di                                               ; $74b9: $f3
	rst  $38                                         ; $74ba: $ff
	rra                                              ; $74bb: $1f
	ld   hl, sp+$6f                                  ; $74bc: $f8 $6f
	or   $48                                         ; $74be: $f6 $48
	sub  a                                           ; $74c0: $97
	ld   d, d                                        ; $74c1: $52
	ld   de, $1126                                   ; $74c2: $11 $26 $11
	ld   sp, $1111                                   ; $74c5: $31 $11 $11
	ld   de, $8311                                   ; $74c8: $11 $11 $83
	rra                                              ; $74cb: $1f
	ldh  a, [c]                                      ; $74cc: $f2
	db   $ed                                         ; $74cd: $ed
	cp   a                                           ; $74ce: $bf
	ld   [hl], a                                     ; $74cf: $77
	rst  $38                                         ; $74d0: $ff
	rst  $38                                         ; $74d1: $ff
	ei                                               ; $74d2: $fb
	rst  $38                                         ; $74d3: $ff
	rst  $38                                         ; $74d4: $ff
	rst  $38                                         ; $74d5: $ff
	rst  $38                                         ; $74d6: $ff
	db   $fd                                         ; $74d7: $fd
	sbc  [hl]                                        ; $74d8: $9e
	ld   sp, hl                                      ; $74d9: $f9
	rl   e                                           ; $74da: $cb $13
	and  e                                           ; $74dc: $a3
	ld   de, $1111                                   ; $74dd: $11 $11 $11
	ld   de, $1111                                   ; $74e0: $11 $11 $11
	ld   de, $4711                                   ; $74e3: $11 $11 $47
	jp   z, Jump_0ab_7fed                            ; $74e6: $ca $ed $7f

	push af                                          ; $74e9: $f5
	rst  $38                                         ; $74ea: $ff
	rst  $38                                         ; $74eb: $ff
	rst  $38                                         ; $74ec: $ff
	rst  $38                                         ; $74ed: $ff
	rst  $38                                         ; $74ee: $ff
	rst  $38                                         ; $74ef: $ff
	rst  $38                                         ; $74f0: $ff
	rst  $38                                         ; $74f1: $ff
	call z, $9cda                                    ; $74f2: $cc $da $9c
	ld   h, c                                        ; $74f5: $61
	ld   b, e                                        ; $74f6: $43
	inc  hl                                          ; $74f7: $23
	ld   de, $1111                                   ; $74f8: $11 $11 $11
	ld   de, $1111                                   ; $74fb: $11 $11 $11
	ld   de, $8912                                   ; $74fe: $11 $12 $89
	rst  $38                                         ; $7501: $ff
	adc  $bf                                         ; $7502: $ce $bf
	rst  $38                                         ; $7504: $ff
	rst  $38                                         ; $7505: $ff
	rst  $38                                         ; $7506: $ff
	rst  $38                                         ; $7507: $ff
	rst  $38                                         ; $7508: $ff
	rst  $38                                         ; $7509: $ff
	rst  $38                                         ; $750a: $ff
	rst  $38                                         ; $750b: $ff
	cp   c                                           ; $750c: $b9
	adc  h                                           ; $750d: $8c
	ret  z                                           ; $750e: $c8

	ld   [hl], e                                     ; $750f: $73
	dec  h                                           ; $7510: $25
	ld   b, d                                        ; $7511: $42
	ld   de, $1111                                   ; $7512: $11 $11 $11
	ld   de, $1111                                   ; $7515: $11 $11 $11
	ld   de, $4811                                   ; $7518: $11 $11 $48
	db   $eb                                         ; $751b: $eb
	call $ffdd                                       ; $751c: $cd $dd $ff
	rst  $38                                         ; $751f: $ff
	rst  $38                                         ; $7520: $ff
	rst  $38                                         ; $7521: $ff
	rst  $38                                         ; $7522: $ff
	rst  $38                                         ; $7523: $ff
	rst  $38                                         ; $7524: $ff
	rst  $38                                         ; $7525: $ff
	rst  $38                                         ; $7526: $ff
	rst  $28                                         ; $7527: $ef
	db   $ed                                         ; $7528: $ed
	jp   c, Jump_0ab_7697                            ; $7529: $da $97 $76

	ld   d, e                                        ; $752c: $53
	ld   de, $1111                                   ; $752d: $11 $11 $11
	ld   de, $1111                                   ; $7530: $11 $11 $11
	ld   de, $1111                                   ; $7533: $11 $11 $11
	ld   e, b                                        ; $7536: $58
	adc  d                                           ; $7537: $8a
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
	db   $dd                                         ; $7542: $dd
	jp   z, Jump_0ab_4386                            ; $7543: $ca $86 $43

	ld   de, $1111                                   ; $7546: $11 $11 $11
	ld   de, $1111                                   ; $7549: $11 $11 $11
	ld   de, $1111                                   ; $754c: $11 $11 $11
	inc  de                                          ; $754f: $13
	ld   a, e                                        ; $7550: $7b
	rst  $38                                         ; $7551: $ff
	rst  $38                                         ; $7552: $ff
	rst  $38                                         ; $7553: $ff
	rst  $38                                         ; $7554: $ff
	rst  $38                                         ; $7555: $ff
	rst  $38                                         ; $7556: $ff
	rst  $38                                         ; $7557: $ff
	rst  $38                                         ; $7558: $ff
	rst  $38                                         ; $7559: $ff
	rst  $38                                         ; $755a: $ff
	db   $ec                                         ; $755b: $ec
	cp   d                                           ; $755c: $ba
	add  [hl]                                        ; $755d: $86
	ld   b, d                                        ; $755e: $42
	ld   de, $1111                                   ; $755f: $11 $11 $11
	ld   de, $1111                                   ; $7562: $11 $11 $11
	ld   de, $1111                                   ; $7565: $11 $11 $11
	inc  d                                           ; $7568: $14
	ld   a, e                                        ; $7569: $7b
	rst  $28                                         ; $756a: $ef
	rst  $38                                         ; $756b: $ff
	rst  $38                                         ; $756c: $ff
	rst  $38                                         ; $756d: $ff
	rst  $38                                         ; $756e: $ff
	rst  $38                                         ; $756f: $ff
	rst  $38                                         ; $7570: $ff
	rst  $38                                         ; $7571: $ff
	rst  $38                                         ; $7572: $ff
	rst  $38                                         ; $7573: $ff
	db   $ec                                         ; $7574: $ec
	cp   c                                           ; $7575: $b9
	ld   [hl], l                                     ; $7576: $75
	ld   hl, $1111                                   ; $7577: $21 $11 $11
	ld   de, $1111                                   ; $757a: $11 $11 $11
	ld   de, $1111                                   ; $757d: $11 $11 $11
	ld   de, $ae37                                   ; $7580: $11 $37 $ae
	rst  $38                                         ; $7583: $ff
	rst  $38                                         ; $7584: $ff
	rst  $38                                         ; $7585: $ff
	rst  $38                                         ; $7586: $ff
	rst  $38                                         ; $7587: $ff
	rst  $38                                         ; $7588: $ff
	rst  $38                                         ; $7589: $ff
	rst  $38                                         ; $758a: $ff
	rst  $38                                         ; $758b: $ff
	cp   $cb                                         ; $758c: $fe $cb
	add  [hl]                                        ; $758e: $86
	ld   sp, $1111                                   ; $758f: $31 $11 $11
	ld   de, $1111                                   ; $7592: $11 $11 $11
	ld   de, $1111                                   ; $7595: $11 $11 $11
	ld   de, $9d15                                   ; $7598: $11 $15 $9d
	rst  $38                                         ; $759b: $ff
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	rst  $38                                         ; $759e: $ff
	rst  $38                                         ; $759f: $ff
	rst  $38                                         ; $75a0: $ff
	rst  $38                                         ; $75a1: $ff
	rst  $38                                         ; $75a2: $ff
	rst  $38                                         ; $75a3: $ff
	rst  $38                                         ; $75a4: $ff
	call c, $3186                                    ; $75a5: $dc $86 $31
	ld   de, $1111                                   ; $75a8: $11 $11 $11
	ld   de, $1111                                   ; $75ab: $11 $11 $11
	ld   de, $1111                                   ; $75ae: $11 $11 $11
	dec  d                                           ; $75b1: $15
	xor  a                                           ; $75b2: $af
	rst  $38                                         ; $75b3: $ff
	rst  $38                                         ; $75b4: $ff
	rst  $38                                         ; $75b5: $ff
	rst  $38                                         ; $75b6: $ff
	rst  $38                                         ; $75b7: $ff
	rst  $38                                         ; $75b8: $ff
	rst  $38                                         ; $75b9: $ff
	rst  $38                                         ; $75ba: $ff
	rst  $38                                         ; $75bb: $ff
	rst  $38                                         ; $75bc: $ff
	ld   [$2196], a                                  ; $75bd: $ea $96 $21
	ld   de, $1111                                   ; $75c0: $11 $11 $11
	ld   de, $1111                                   ; $75c3: $11 $11 $11
	ld   de, $1111                                   ; $75c6: $11 $11 $11
	ld   c, c                                        ; $75c9: $49
	rst  JumpTable                                         ; $75ca: $df
	rst  $38                                         ; $75cb: $ff
	rst  $38                                         ; $75cc: $ff
	rst  $38                                         ; $75cd: $ff
	rst  $38                                         ; $75ce: $ff
	rst  $38                                         ; $75cf: $ff
	rst  $38                                         ; $75d0: $ff
	rst  $38                                         ; $75d1: $ff
	rst  $38                                         ; $75d2: $ff
	rst  $38                                         ; $75d3: $ff
	rst  $38                                         ; $75d4: $ff
	jp   z, $1163                                    ; $75d5: $ca $63 $11

	ld   de, $1111                                   ; $75d8: $11 $11 $11
	ld   de, $1111                                   ; $75db: $11 $11 $11
	ld   de, $4911                                   ; $75de: $11 $11 $49
	rst  $28                                         ; $75e1: $ef
	rst  $38                                         ; $75e2: $ff
	rst  $38                                         ; $75e3: $ff
	rst  $38                                         ; $75e4: $ff
	rst  $38                                         ; $75e5: $ff
	rst  $38                                         ; $75e6: $ff
	rst  $38                                         ; $75e7: $ff
	rst  $38                                         ; $75e8: $ff
	rst  $38                                         ; $75e9: $ff
	rst  $38                                         ; $75ea: $ff
	rst  $38                                         ; $75eb: $ff
	ret  z                                           ; $75ec: $c8

	add  c                                           ; $75ed: $81
	ld   de, $1111                                   ; $75ee: $11 $11 $11
	ld   de, $1111                                   ; $75f1: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $75f4: $11 $14 $ff
	rst  $38                                         ; $75f7: $ff
	rst  $38                                         ; $75f8: $ff
	rst  $38                                         ; $75f9: $ff
	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff
	rst  $38                                         ; $75fc: $ff
	rst  $38                                         ; $75fd: $ff
	rst  $38                                         ; $75fe: $ff
	rst  $38                                         ; $75ff: $ff
	rst  $38                                         ; $7600: $ff
	ei                                               ; $7601: $fb
	halt                                             ; $7602: $76
	ld   h, e                                        ; $7603: $63
	ld   de, $1111                                   ; $7604: $11 $11 $11
	ld   de, $1111                                   ; $7607: $11 $11 $11
	ld   de, $af11                                   ; $760a: $11 $11 $af
	rst  $38                                         ; $760d: $ff
	rst  $38                                         ; $760e: $ff
	rst  $38                                         ; $760f: $ff
	rst  $38                                         ; $7610: $ff
	rst  $38                                         ; $7611: $ff
	rst  $38                                         ; $7612: $ff
	rst  $38                                         ; $7613: $ff
	rst  $38                                         ; $7614: $ff
	rst  $38                                         ; $7615: $ff
	rst  $38                                         ; $7616: $ff
	db   $fd                                         ; $7617: $fd
	sub  a                                           ; $7618: $97
	ld   hl, $1111                                   ; $7619: $21 $11 $11
	ld   de, $1111                                   ; $761c: $11 $11 $11
	ld   de, $1215                                   ; $761f: $11 $15 $12
	rst  $38                                         ; $7622: $ff
	rst  $38                                         ; $7623: $ff
	rst  $38                                         ; $7624: $ff
	rst  $38                                         ; $7625: $ff
	rst  $38                                         ; $7626: $ff
	rst  $38                                         ; $7627: $ff
	rst  $38                                         ; $7628: $ff
	rst  $38                                         ; $7629: $ff
	rst  $38                                         ; $762a: $ff
	rst  $38                                         ; $762b: $ff
	rst  $38                                         ; $762c: $ff
	ld   a, [$1173]                                  ; $762d: $fa $73 $11
	ld   de, $1111                                   ; $7630: $11 $11 $11
	ld   de, $1111                                   ; $7633: $11 $11 $11
	dec  h                                           ; $7636: $25
	adc  l                                           ; $7637: $8d
	rst  $38                                         ; $7638: $ff
	rst  $38                                         ; $7639: $ff
	rst  $38                                         ; $763a: $ff
	rst  $38                                         ; $763b: $ff
	rst  $38                                         ; $763c: $ff
	rst  $38                                         ; $763d: $ff
	rst  $38                                         ; $763e: $ff
	rst  $38                                         ; $763f: $ff
	rst  $38                                         ; $7640: $ff
	rst  $38                                         ; $7641: $ff
	rst  $38                                         ; $7642: $ff
	and  [hl]                                        ; $7643: $a6
	ld   hl, $1111                                   ; $7644: $21 $11 $11
	ld   de, $1111                                   ; $7647: $11 $11 $11
	ld   de, $4a12                                   ; $764a: $11 $12 $4a
	rst  $38                                         ; $764d: $ff
	rst  $38                                         ; $764e: $ff
	rst  $38                                         ; $764f: $ff
	rst  $38                                         ; $7650: $ff
	rst  $38                                         ; $7651: $ff
	rst  $38                                         ; $7652: $ff
	rst  $38                                         ; $7653: $ff
	rst  $38                                         ; $7654: $ff
	rst  $38                                         ; $7655: $ff
	rst  $38                                         ; $7656: $ff
	rst  $38                                         ; $7657: $ff
	ld   a, [$1151]                                  ; $7658: $fa $51 $11
	ld   de, $1111                                   ; $765b: $11 $11 $11
	ld   de, $1111                                   ; $765e: $11 $11 $11
	ld   d, $af                                      ; $7661: $16 $af
	rst  $38                                         ; $7663: $ff
	rst  $38                                         ; $7664: $ff
	rst  $38                                         ; $7665: $ff
	rst  $38                                         ; $7666: $ff
	rst  $38                                         ; $7667: $ff
	rst  $38                                         ; $7668: $ff
	rst  $38                                         ; $7669: $ff
	rst  $38                                         ; $766a: $ff
	rst  $38                                         ; $766b: $ff
	rst  $38                                         ; $766c: $ff
	rst  $38                                         ; $766d: $ff
	ld   [hl], e                                     ; $766e: $73
	ld   de, $1111                                   ; $766f: $11 $11 $11
	ld   de, $1111                                   ; $7672: $11 $11 $11
	ld   de, $8e14                                   ; $7675: $11 $14 $8e
	rst  $38                                         ; $7678: $ff
	rst  $38                                         ; $7679: $ff
	rst  $38                                         ; $767a: $ff
	rst  $38                                         ; $767b: $ff
	rst  $38                                         ; $767c: $ff
	rst  $38                                         ; $767d: $ff
	rst  $38                                         ; $767e: $ff
	rst  $38                                         ; $767f: $ff
	rst  $38                                         ; $7680: $ff
	rst  $38                                         ; $7681: $ff
	rst  $38                                         ; $7682: $ff
	and  a                                           ; $7683: $a7
	ld   de, $1111                                   ; $7684: $11 $11 $11
	ld   de, $1111                                   ; $7687: $11 $11 $11
	ld   de, $7c11                                   ; $768a: $11 $11 $7c
	rst  $38                                         ; $768d: $ff
	rst  $38                                         ; $768e: $ff
	rst  $38                                         ; $768f: $ff
	rst  $38                                         ; $7690: $ff
	rst  $38                                         ; $7691: $ff
	rst  $38                                         ; $7692: $ff
	rst  $38                                         ; $7693: $ff
	rst  $38                                         ; $7694: $ff
	rst  $38                                         ; $7695: $ff
	rst  $38                                         ; $7696: $ff

Jump_0ab_7697:
	rst  $38                                         ; $7697: $ff
	jp   hl                                          ; $7698: $e9


	ld   d, c                                        ; $7699: $51
	ld   de, $1111                                   ; $769a: $11 $11 $11
	ld   de, $1111                                   ; $769d: $11 $11 $11
	ld   de, $bf18                                   ; $76a0: $11 $18 $bf
	rst  $38                                         ; $76a3: $ff
	rst  $38                                         ; $76a4: $ff
	rst  $38                                         ; $76a5: $ff
	rst  $38                                         ; $76a6: $ff
	rst  $38                                         ; $76a7: $ff
	rst  $38                                         ; $76a8: $ff
	rst  $38                                         ; $76a9: $ff
	rst  $38                                         ; $76aa: $ff
	rst  $38                                         ; $76ab: $ff
	rst  $38                                         ; $76ac: $ff
	ei                                               ; $76ad: $fb
	ld   [hl], c                                     ; $76ae: $71
	ld   de, $1111                                   ; $76af: $11 $11 $11
	ld   de, $1111                                   ; $76b2: $11 $11 $11
	ld   de, $8d16                                   ; $76b5: $11 $16 $8d
	rst  $38                                         ; $76b8: $ff
	rst  $38                                         ; $76b9: $ff
	rst  $38                                         ; $76ba: $ff
	rst  $38                                         ; $76bb: $ff
	rst  $38                                         ; $76bc: $ff
	rst  $38                                         ; $76bd: $ff
	rst  $38                                         ; $76be: $ff
	rst  $38                                         ; $76bf: $ff
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	push af                                          ; $76c3: $f5
	ld   de, $1111                                   ; $76c4: $11 $11 $11
	ld   de, $1111                                   ; $76c7: $11 $11 $11
	ld   de, $6c11                                   ; $76ca: $11 $11 $6c
	rst  $38                                         ; $76cd: $ff
	rst  $38                                         ; $76ce: $ff
	rst  $38                                         ; $76cf: $ff
	rst  $38                                         ; $76d0: $ff
	rst  $38                                         ; $76d1: $ff
	rst  $38                                         ; $76d2: $ff
	rst  $38                                         ; $76d3: $ff
	rst  $38                                         ; $76d4: $ff
	rst  $38                                         ; $76d5: $ff
	rst  $38                                         ; $76d6: $ff
	rst  $38                                         ; $76d7: $ff
	db   $fd                                         ; $76d8: $fd
	ld   hl, $1111                                   ; $76d9: $21 $11 $11
	ld   de, $1111                                   ; $76dc: $11 $11 $11
	ld   de, $1711                                   ; $76df: $11 $11 $17
	sbc  [hl]                                        ; $76e2: $9e
	rst  $38                                         ; $76e3: $ff
	rst  $38                                         ; $76e4: $ff
	rst  $38                                         ; $76e5: $ff
	rst  $38                                         ; $76e6: $ff
	rst  $38                                         ; $76e7: $ff
	rst  $38                                         ; $76e8: $ff
	rst  $38                                         ; $76e9: $ff
	rst  $38                                         ; $76ea: $ff
	rst  $38                                         ; $76eb: $ff
	rst  $38                                         ; $76ec: $ff
	rst  $38                                         ; $76ed: $ff
	ld   d, c                                        ; $76ee: $51
	ld   de, $1111                                   ; $76ef: $11 $11 $11
	ld   de, $1111                                   ; $76f2: $11 $11 $11
	ld   de, $2911                                   ; $76f5: $11 $11 $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76f8: $cf
	rst  $38                                         ; $76f9: $ff
	rst  $38                                         ; $76fa: $ff
	rst  $38                                         ; $76fb: $ff
	rst  $38                                         ; $76fc: $ff
	rst  $38                                         ; $76fd: $ff
	rst  $38                                         ; $76fe: $ff
	rst  $38                                         ; $76ff: $ff
	rst  $38                                         ; $7700: $ff
	rst  $38                                         ; $7701: $ff
	rst  $38                                         ; $7702: $ff
	sub  $41                                         ; $7703: $d6 $41
	ld   de, $1111                                   ; $7705: $11 $11 $11
	ld   de, $1111                                   ; $7708: $11 $11 $11
	ld   de, $1711                                   ; $770b: $11 $11 $17
	rst  $38                                         ; $770e: $ff
	rst  $38                                         ; $770f: $ff
	rst  $38                                         ; $7710: $ff
	rst  $38                                         ; $7711: $ff
	rst  $38                                         ; $7712: $ff
	rst  $38                                         ; $7713: $ff
	rst  $38                                         ; $7714: $ff
	rst  $38                                         ; $7715: $ff
	rst  $38                                         ; $7716: $ff
	rst  $38                                         ; $7717: $ff
	rst  $38                                         ; $7718: $ff
	sub  l                                           ; $7719: $95
	ld   de, $1111                                   ; $771a: $11 $11 $11
	ld   de, $1111                                   ; $771d: $11 $11 $11
	ld   de, $1111                                   ; $7720: $11 $11 $11
	ld   d, $ff                                      ; $7723: $16 $ff
	rst  $38                                         ; $7725: $ff
	rst  $38                                         ; $7726: $ff
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	rst  $38                                         ; $7729: $ff
	rst  $38                                         ; $772a: $ff
	rst  $38                                         ; $772b: $ff
	rst  $38                                         ; $772c: $ff
	rst  $38                                         ; $772d: $ff
	jp   hl                                          ; $772e: $e9


	or   l                                           ; $772f: $b5
	ld   d, c                                        ; $7730: $51
	ld   de, $1111                                   ; $7731: $11 $11 $11
	ld   de, $1111                                   ; $7734: $11 $11 $11
	ld   de, $1111                                   ; $7737: $11 $11 $11
	rst  $38                                         ; $773a: $ff
	rst  $38                                         ; $773b: $ff
	rst  $38                                         ; $773c: $ff
	rst  $38                                         ; $773d: $ff
	rst  $38                                         ; $773e: $ff
	rst  $38                                         ; $773f: $ff
	rst  $38                                         ; $7740: $ff
	rst  $38                                         ; $7741: $ff
	rst  $38                                         ; $7742: $ff
	db   $fc                                         ; $7743: $fc
	jp   z, Jump_0ab_64a8                            ; $7744: $ca $a8 $64

	ld   de, $1111                                   ; $7747: $11 $11 $11
	ld   de, $1111                                   ; $774a: $11 $11 $11
	ld   de, $1111                                   ; $774d: $11 $11 $11
	inc  hl                                          ; $7750: $23
	ld   a, [hl]                                     ; $7751: $7e
	rst  $38                                         ; $7752: $ff
	rst  $28                                         ; $7753: $ef
	rst  $38                                         ; $7754: $ff
	rst  $38                                         ; $7755: $ff
	rst  $38                                         ; $7756: $ff
	rst  $38                                         ; $7757: $ff
	rst  $38                                         ; $7758: $ff
	rst  $38                                         ; $7759: $ff
	reti                                             ; $775a: $d9


	halt                                             ; $775b: $76
	sub  a                                           ; $775c: $97
	ld   [hl+], a                                    ; $775d: $22
	ld   hl, $1111                                   ; $775e: $21 $11 $11
	ld   de, $1111                                   ; $7761: $11 $11 $11
	ld   de, $1111                                   ; $7764: $11 $11 $11
	ld   de, $9e5f                                   ; $7767: $11 $5f $9e
	rst  $38                                         ; $776a: $ff
	rst  $38                                         ; $776b: $ff
	rst  $38                                         ; $776c: $ff
	rst  $38                                         ; $776d: $ff
	rst  $38                                         ; $776e: $ff
	rst  $38                                         ; $776f: $ff
	rst  $28                                         ; $7770: $ef
	push af                                          ; $7771: $f5
	cp   b                                           ; $7772: $b8
	ld   l, b                                        ; $7773: $68
	ld   b, d                                        ; $7774: $42
	daa                                              ; $7775: $27
	and  d                                           ; $7776: $a2
	ld   de, $1131                                   ; $7777: $11 $31 $11
	inc  de                                          ; $777a: $13
	ld   de, $4111                                   ; $777b: $11 $11 $41
	ld   de, $7117                                   ; $777e: $11 $17 $71
	adc  e                                           ; $7781: $8b
	rst  $38                                         ; $7782: $ff
	rst  $28                                         ; $7783: $ef
	rst  $38                                         ; $7784: $ff
	rst  $38                                         ; $7785: $ff
	rst  $38                                         ; $7786: $ff

Jump_0ab_7787:
	rst  $38                                         ; $7787: $ff
	db   $ed                                         ; $7788: $ed
	call z, $977b                                    ; $7789: $cc $7b $97
	or   h                                           ; $778c: $b4
	ld   [hl], h                                     ; $778d: $74
	and  d                                           ; $778e: $a2
	ld   h, $1c                                      ; $778f: $26 $1c
	add  hl, de                                      ; $7791: $19
	ld   sp, $71d1                                   ; $7792: $31 $d1 $71
	inc  d                                           ; $7795: $14
	ld   d, $11                                      ; $7796: $16 $11
	add  c                                           ; $7798: $81
	jr   jr_0ab_77d4                                 ; $7799: $18 $39

	or   $fe                                         ; $779b: $f6 $fe
	rst  JumpTable                                         ; $779d: $df
	adc  a                                           ; $779e: $8f
	ld   a, [$9ffd]                                  ; $779f: $fa $fd $9f
	rst  $28                                         ; $77a2: $ef
	sbc  c                                           ; $77a3: $99
	ld   hl, sp-$24                                  ; $77a4: $f8 $dc
	dec  e                                           ; $77a6: $1d

Call_0ab_77a7:
	db   $d3                                         ; $77a7: $d3
	or   h                                           ; $77a8: $b4
	adc  h                                           ; $77a9: $8c
	daa                                              ; $77aa: $27
	sub  c                                           ; $77ab: $91
	db   $e4                                         ; $77ac: $e4
	dec  e                                           ; $77ad: $1d
	add  hl, de                                      ; $77ae: $19
	ld   d, c                                        ; $77af: $51
	ld   h, c                                        ; $77b0: $61
	and  a                                           ; $77b1: $a7
	rla                                              ; $77b2: $17
	ld   h, c                                        ; $77b3: $61
	or   h                                           ; $77b4: $b4
	ld   l, e                                        ; $77b5: $6b
	ld   e, [hl]                                     ; $77b6: $5e
	ld   l, c                                        ; $77b7: $69
	db   $f4                                         ; $77b8: $f4
	sbc  $8e                                         ; $77b9: $de $8e
	xor  a                                           ; $77bb: $af
	db   $dd                                         ; $77bc: $dd
	db   $ed                                         ; $77bd: $ed
	set  7, b                                        ; $77be: $cb $f8
	cp   d                                           ; $77c0: $ba
	or   a                                           ; $77c1: $b7
	adc  e                                           ; $77c2: $8b
	ld   a, [hl-]                                    ; $77c3: $3a
	ld   h, a                                        ; $77c4: $67
	ld   b, h                                        ; $77c5: $44
	ld   h, l                                        ; $77c6: $65
	ld   d, [hl]                                     ; $77c7: $56
	ld   h, h                                        ; $77c8: $64
	sub  d                                           ; $77c9: $92
	ld   l, b                                        ; $77ca: $68
	ld   [hl], l                                     ; $77cb: $75
	ld   e, c                                        ; $77cc: $59
	ld   e, b                                        ; $77cd: $58
	add  l                                           ; $77ce: $85
	sbc  c                                           ; $77cf: $99
	ld   a, h                                        ; $77d0: $7c
	rra                                              ; $77d1: $1f
	sub  $c5                                         ; $77d2: $d6 $c5

jr_0ab_77d4:
	db   $f4                                         ; $77d4: $f4
	ret                                              ; $77d5: $c9


	adc  h                                           ; $77d6: $8c
	sbc  d                                           ; $77d7: $9a
	ld   l, a                                        ; $77d8: $6f
	adc  h                                           ; $77d9: $8c
	ld   l, d                                        ; $77da: $6a
	and  [hl]                                        ; $77db: $a6
	sub  h                                           ; $77dc: $94
	or   l                                           ; $77dd: $b5
	add  a                                           ; $77de: $87
	ld   l, c                                        ; $77df: $69
	sub  a                                           ; $77e0: $97
	ld   a, d                                        ; $77e1: $7a
	add  hl, sp                                      ; $77e2: $39
	ld   [hl], e                                     ; $77e3: $73
	sub  a                                           ; $77e4: $97
	sbc  d                                           ; $77e5: $9a
	ld   l, c                                        ; $77e6: $69
	add  [hl]                                        ; $77e7: $86
	and  l                                           ; $77e8: $a5
	ld   e, h                                        ; $77e9: $5c
	sub  [hl]                                        ; $77ea: $96
	sbc  c                                           ; $77eb: $99
	ld   l, e                                        ; $77ec: $6b
	adc  c                                           ; $77ed: $89
	sbc  b                                           ; $77ee: $98
	push bc                                          ; $77ef: $c5
	adc  d                                           ; $77f0: $8a
	ld   e, d                                        ; $77f1: $5a
	ld   [hl], a                                     ; $77f2: $77
	add  a                                           ; $77f3: $87
	sub  l                                           ; $77f4: $95
	sub  a                                           ; $77f5: $97
	ld   [hl], a                                     ; $77f6: $77
	ld   l, d                                        ; $77f7: $6a
	ld   h, a                                        ; $77f8: $67
	and  h                                           ; $77f9: $a4
	ld   a, b                                        ; $77fa: $78
	adc  b                                           ; $77fb: $88
	ld   l, [hl]                                     ; $77fc: $6e
	dec  sp                                          ; $77fd: $3b
	or   a                                           ; $77fe: $b7
	sbc  c                                           ; $77ff: $99
	and  [hl]                                        ; $7800: $a6
	and  [hl]                                        ; $7801: $a6
	or   h                                           ; $7802: $b4
	ret                                              ; $7803: $c9


	ld   c, e                                        ; $7804: $4b
	and  a                                           ; $7805: $a7
	cp   d                                           ; $7806: $ba
	rra                                              ; $7807: $1f
	scf                                              ; $7808: $37
	add  $b3                                         ; $7809: $c6 $b3
	adc  b                                           ; $780b: $88
	ld   [hl], h                                     ; $780c: $74
	cp   b                                           ; $780d: $b8
	dec  hl                                          ; $780e: $2b
	scf                                              ; $780f: $37
	sub  l                                           ; $7810: $95
	add  [hl]                                        ; $7811: $86
	sbc  e                                           ; $7812: $9b
	ld   c, b                                        ; $7813: $48
	and  [hl]                                        ; $7814: $a6
	ld   e, e                                        ; $7815: $5b
	ld   l, e                                        ; $7816: $6b
	add  [hl]                                        ; $7817: $86
	jp   nz, $9bf4                                   ; $7818: $c2 $f4 $9b

	ld   e, l                                        ; $781b: $5d
	ld   c, h                                        ; $781c: $4c
	sbc  b                                           ; $781d: $98
	sbc  d                                           ; $781e: $9a
	ld   l, e                                        ; $781f: $6b
	add  [hl]                                        ; $7820: $86
	sub  e                                           ; $7821: $93
	or   l                                           ; $7822: $b5
	ld   h, a                                        ; $7823: $67
	adc  b                                           ; $7824: $88
	ld   c, e                                        ; $7825: $4b
	ld   b, a                                        ; $7826: $47
	jp   nz, Jump_0ab_5a97                           ; $7827: $c2 $97 $5a

	ld   c, d                                        ; $782a: $4a
	ld   h, a                                        ; $782b: $67
	and  l                                           ; $782c: $a5
	ld   a, b                                        ; $782d: $78
	sub  [hl]                                        ; $782e: $96
	and  [hl]                                        ; $782f: $a6
	cp   c                                           ; $7830: $b9
	ld   e, l                                        ; $7831: $5d
	ld   a, [hl-]                                    ; $7832: $3a
	sub  l                                           ; $7833: $95
	xor  c                                           ; $7834: $a9
	add  a                                           ; $7835: $87
	add  [hl]                                        ; $7836: $86
	sbc  c                                           ; $7837: $99
	ld   e, c                                        ; $7838: $59
	halt                                             ; $7839: $76
	or   l                                           ; $783a: $b5
	sbc  c                                           ; $783b: $99
	ld   e, b                                        ; $783c: $58
	ld   [hl], l                                     ; $783d: $75
	and  [hl]                                        ; $783e: $a6
	ld   c, h                                        ; $783f: $4c
	ld   a, [hl-]                                    ; $7840: $3a
	sub  e                                           ; $7841: $93
	add  $67                                         ; $7842: $c6 $67
	sub  [hl]                                        ; $7844: $96
	or   h                                           ; $7845: $b4
	sub  a                                           ; $7846: $97
	ld   c, l                                        ; $7847: $4d
	dec  e                                           ; $7848: $1d
	ld   h, a                                        ; $7849: $67
	or   e                                           ; $784a: $b3
	add  $78                                         ; $784b: $c6 $78
	add  a                                           ; $784d: $87
	adc  c                                           ; $784e: $89
	ld   a, b                                        ; $784f: $78
	add  [hl]                                        ; $7850: $86
	sub  [hl]                                        ; $7851: $96
	adc  b                                           ; $7852: $88
	ld   a, b                                        ; $7853: $78
	ld   l, e                                        ; $7854: $6b
	ld   a, [hl+]                                    ; $7855: $2a
	ld   [hl], e                                     ; $7856: $73
	or   l                                           ; $7857: $b5
	sbc  c                                           ; $7858: $99
	ld   c, c                                        ; $7859: $49
	add  l                                           ; $785a: $85
	and  h                                           ; $785b: $a4
	push bc                                          ; $785c: $c5
	ld   a, h                                        ; $785d: $7c
	add  hl, hl                                      ; $785e: $29
	adc  b                                           ; $785f: $88
	ld   l, c                                        ; $7860: $69
	ld   a, b                                        ; $7861: $78
	ld   l, b                                        ; $7862: $68
	sub  [hl]                                        ; $7863: $96
	or   a                                           ; $7864: $b7
	ld   [hl], a                                     ; $7865: $77
	ld   c, h                                        ; $7866: $4c
	ld   [hl], h                                     ; $7867: $74
	db   $e3                                         ; $7868: $e3
	adc  d                                           ; $7869: $8a
	ld   a, [hl-]                                    ; $786a: $3a
	ld   [hl], a                                     ; $786b: $77
	and  h                                           ; $786c: $a4
	adc  c                                           ; $786d: $89
	ld   a, $37                                      ; $786e: $3e $37
	or   h                                           ; $7870: $b4
	add  a                                           ; $7871: $87
	sub  [hl]                                        ; $7872: $96
	sub  h                                           ; $7873: $94
	or   [hl]                                        ; $7874: $b6
	adc  c                                           ; $7875: $89
	ld   c, d                                        ; $7876: $4a
	halt                                             ; $7877: $76
	ld   e, h                                        ; $7878: $5c
	ld   d, [hl]                                     ; $7879: $56
	and  [hl]                                        ; $787a: $a6
	ld   a, d                                        ; $787b: $7a
	ld   [hl], l                                     ; $787c: $75
	or   l                                           ; $787d: $b5
	and  l                                           ; $787e: $a5
	sbc  c                                           ; $787f: $99
	ld   e, d                                        ; $7880: $5a
	adc  b                                           ; $7881: $88
	ld   l, e                                        ; $7882: $6b
	ld   e, b                                        ; $7883: $58
	adc  b                                           ; $7884: $88
	ld   l, b                                        ; $7885: $68
	sub  l                                           ; $7886: $95
	push bc                                          ; $7887: $c5
	add  a                                           ; $7888: $87
	adc  b                                           ; $7889: $88
	ld   a, d                                        ; $788a: $7a
	inc  a                                           ; $788b: $3c
	halt                                             ; $788c: $76
	sub  a                                           ; $788d: $97
	ld   a, b                                        ; $788e: $78
	add  a                                           ; $788f: $87
	sub  a                                           ; $7890: $97
	sub  l                                           ; $7891: $95
	sbc  c                                           ; $7892: $99
	ld   l, b                                        ; $7893: $68
	and  h                                           ; $7894: $a4
	cp   d                                           ; $7895: $ba
	cpl                                              ; $7896: $2f
	inc  e                                           ; $7897: $1c
	ld   h, [hl]                                     ; $7898: $66
	call nz, $b4b4                                   ; $7899: $c4 $b4 $b4
	and  a                                           ; $789c: $a7
	ld   l, e                                        ; $789d: $6b
	sub  [hl]                                        ; $789e: $96
	ld   l, d                                        ; $789f: $6a
	ld   e, l                                        ; $78a0: $5d
	ld   c, b                                        ; $78a1: $48
	adc  c                                           ; $78a2: $89
	ld   [hl], a                                     ; $78a3: $77
	or   a                                           ; $78a4: $b7
	sub  l                                           ; $78a5: $95
	call nz, Call_0ab_798a                           ; $78a6: $c4 $8a $79
	ld   e, e                                        ; $78a9: $5b
	ld   e, b                                        ; $78aa: $58
	add  $5c                                         ; $78ab: $c6 $5c
	ld   h, a                                        ; $78ad: $67
	or   [hl]                                        ; $78ae: $b6
	adc  c                                           ; $78af: $89
	sub  a                                           ; $78b0: $97
	ld   e, c                                        ; $78b1: $59
	and  h                                           ; $78b2: $a4
	jp   z, Jump_0ab_693c                            ; $78b3: $ca $3c $69

	sub  h                                           ; $78b6: $94
	or   [hl]                                        ; $78b7: $b6
	sbc  e                                           ; $78b8: $9b
	ld   c, d                                        ; $78b9: $4a
	or   l                                           ; $78ba: $b5
	sub  a                                           ; $78bb: $97
	sbc  d                                           ; $78bc: $9a
	inc  l                                           ; $78bd: $2c
	sub  l                                           ; $78be: $95
	or   a                                           ; $78bf: $b7
	ld   a, d                                        ; $78c0: $7a
	ld   l, b                                        ; $78c1: $68
	db   $d3                                         ; $78c2: $d3
	sub  [hl]                                        ; $78c3: $96
	sbc  c                                           ; $78c4: $99
	ld   l, l                                        ; $78c5: $6d
	ld   c, e                                        ; $78c6: $4b
	ld   l, c                                        ; $78c7: $69
	sub  [hl]                                        ; $78c8: $96
	or   a                                           ; $78c9: $b7
	ld   a, b                                        ; $78ca: $78
	and  l                                           ; $78cb: $a5
	or   h                                           ; $78cc: $b4
	adc  c                                           ; $78cd: $89
	ld   a, e                                        ; $78ce: $7b
	ld   l, h                                        ; $78cf: $6c
	ld   c, d                                        ; $78d0: $4a
	add  [hl]                                        ; $78d1: $86
	and  l                                           ; $78d2: $a5
	push hl                                          ; $78d3: $e5
	ld   a, d                                        ; $78d4: $7a
	ld   a, h                                        ; $78d5: $7c
	ld   c, h                                        ; $78d6: $4c
	ld   d, l                                        ; $78d7: $55
	push de                                          ; $78d8: $d5
	cp   c                                           ; $78d9: $b9
	ccf                                              ; $78da: $3f
	ld   h, d                                        ; $78db: $62
	pop  af                                          ; $78dc: $f1
	ld   [$3b0f], a                                  ; $78dd: $ea $0f $3b
	ld   d, l                                        ; $78e0: $55
	db   $f4                                         ; $78e1: $f4
	or   [hl]                                        ; $78e2: $b6
	ld   a, h                                        ; $78e3: $7c
	ld   l, d                                        ; $78e4: $6a
	ld   l, c                                        ; $78e5: $69
	sbc  e                                           ; $78e6: $9b
	ld   [hl], a                                     ; $78e7: $77
	and  h                                           ; $78e8: $a4
	di                                               ; $78e9: $f3
	adc  e                                           ; $78ea: $8b
	dec  l                                           ; $78eb: $2d
	ld   a, b                                        ; $78ec: $78
	push bc                                          ; $78ed: $c5
	sbc  b                                           ; $78ee: $98
	ld   c, h                                        ; $78ef: $4c
	ld   h, a                                        ; $78f0: $67
	rst  $20                                         ; $78f1: $e7
	ld   a, d                                        ; $78f2: $7a
	ld   a, c                                        ; $78f3: $79
	ld   h, [hl]                                     ; $78f4: $66
	and  l                                           ; $78f5: $a5
	sbc  h                                           ; $78f6: $9c
	ld   d, a                                        ; $78f7: $57
	push de                                          ; $78f8: $d5
	sbc  l                                           ; $78f9: $9d
	ld   l, e                                        ; $78fa: $6b
	ld   c, e                                        ; $78fb: $4b
	and  c                                           ; $78fc: $a1
	push af                                          ; $78fd: $f5
	ld   c, a                                        ; $78fe: $4f
	ld   e, d                                        ; $78ff: $5a
	ld   c, [hl]                                     ; $7900: $4e
	ld   b, l                                        ; $7901: $45
	pop  af                                          ; $7902: $f1
	and  $7c                                         ; $7903: $e6 $7c
	ld   a, [hl-]                                    ; $7905: $3a
	and  d                                           ; $7906: $a2
	push bc                                          ; $7907: $c5
	ld   l, h                                        ; $7908: $6c
	ld   c, l                                        ; $7909: $4d
	dec  sp                                          ; $790a: $3b
	sub  l                                           ; $790b: $95
	jp   nz, $899a                                   ; $790c: $c2 $9a $89

	ld   l, c                                        ; $790f: $69
	and  a                                           ; $7910: $a7
	ld   [hl], a                                     ; $7911: $77
	sub  a                                           ; $7912: $97
	adc  c                                           ; $7913: $89
	ld   e, l                                        ; $7914: $5d
	ld   h, [hl]                                     ; $7915: $66
	sub  a                                           ; $7916: $97
	and  [hl]                                        ; $7917: $a6
	or   a                                           ; $7918: $b7
	ld   l, b                                        ; $7919: $68
	add  a                                           ; $791a: $87
	ld   a, d                                        ; $791b: $7a
	ld   [hl], a                                     ; $791c: $77
	sbc  h                                           ; $791d: $9c
	inc  e                                           ; $791e: $1c
	add  l                                           ; $791f: $85
	pop  de                                          ; $7920: $d1
	ldh  a, [c]                                      ; $7921: $f2
	adc  a                                           ; $7922: $8f
	dec  e                                           ; $7923: $1d
	ld   a, b                                        ; $7924: $78
	halt                                             ; $7925: $76
	db   $e3                                         ; $7926: $e3
	adc  [hl]                                        ; $7927: $8e
	ld   e, b                                        ; $7928: $58
	adc  d                                           ; $7929: $8a
	ld   e, e                                        ; $792a: $5b
	ld   a, b                                        ; $792b: $78
	and  l                                           ; $792c: $a5

jr_0ab_792d:
	or   h                                           ; $792d: $b4
	xor  c                                           ; $792e: $a9
	ld   e, e                                        ; $792f: $5b
	add  h                                           ; $7930: $84
	ret  c                                           ; $7931: $d8

	ld   c, e                                        ; $7932: $4b
	ld   a, c                                        ; $7933: $79
	ld   a, c                                        ; $7934: $79
	ld   [hl], a                                     ; $7935: $77
	xor  c                                           ; $7936: $a9
	ld   d, a                                        ; $7937: $57
	push bc                                          ; $7938: $c5
	sub  a                                           ; $7939: $97
	ld   l, e                                        ; $793a: $6b
	ld   c, h                                        ; $793b: $4c
	ld   l, c                                        ; $793c: $69
	and  l                                           ; $793d: $a5
	and  [hl]                                        ; $793e: $a6
	or   h                                           ; $793f: $b4
	or   [hl]                                        ; $7940: $b6
	ld   a, l                                        ; $7941: $7d
	dec  l                                           ; $7942: $2d
	ld   e, c                                        ; $7943: $59
	sub  e                                           ; $7944: $93
	push hl                                          ; $7945: $e5
	adc  b                                           ; $7946: $88
	sbc  c                                           ; $7947: $99
	ld   c, [hl]                                     ; $7948: $4e
	ld   e, b                                        ; $7949: $58
	sub  a                                           ; $794a: $97
	or   h                                           ; $794b: $b4
	or   [hl]                                        ; $794c: $b6
	ld   [hl], a                                     ; $794d: $77
	or   [hl]                                        ; $794e: $b6
	ld   c, [hl]                                     ; $794f: $4e
	ld   b, a                                        ; $7950: $47
	xor  b                                           ; $7951: $a8
	adc  b                                           ; $7952: $88
	and  l                                           ; $7953: $a5
	ld   l, a                                        ; $7954: $6f
	ld   b, h                                        ; $7955: $44
	di                                               ; $7956: $f3
	adc  h                                           ; $7957: $8c
	ld   b, a                                        ; $7958: $47
	xor  b                                           ; $7959: $a8
	ld   h, [hl]                                     ; $795a: $66
	reti                                             ; $795b: $d9


	rra                                              ; $795c: $1f
	inc  [hl]                                        ; $795d: $34
	di                                               ; $795e: $f3
	and  h                                           ; $795f: $a4
	rst  $10                                         ; $7960: $d7

jr_0ab_7961:
	rra                                              ; $7961: $1f
	ld   h, h                                        ; $7962: $64
	and  $5b                                         ; $7963: $e6 $5b
	and  h                                           ; $7965: $a4
	ld   l, a                                        ; $7966: $6f
	ld   d, $f4                                      ; $7967: $16 $f4
	ld   c, l                                        ; $7969: $4d
	or   c                                           ; $796a: $b1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $796b: $cf
	dec  de                                          ; $796c: $1b
	pop  af                                          ; $796d: $f1
	ld   a, l                                        ; $796e: $7d
	sub  c                                           ; $796f: $91
	cp   $1f                                         ; $7970: $fe $1f
	or   c                                           ; $7972: $b1
	ld   c, a                                        ; $7973: $4f
	sub  c                                           ; $7974: $91
	push hl                                          ; $7975: $e5
	cpl                                              ; $7976: $2f
	ld   [hl], c                                     ; $7977: $71
	sbc  a                                           ; $7978: $9f
	inc  h                                           ; $7979: $24

jr_0ab_797a:
	db   $f4                                         ; $797a: $f4
	ld   e, a                                        ; $797b: $5f
	ld   b, a                                        ; $797c: $47
	sbc  l                                           ; $797d: $9d
	jr   @-$0d                                       ; $797e: $18 $f1

	rst  $30                                         ; $7980: $f7
	dec  l                                           ; $7981: $2d
	ld   a, e                                        ; $7982: $7b
	rra                                              ; $7983: $1f
	sub  c                                           ; $7984: $91
	ld   sp, hl                                      ; $7985: $f9
	dec  e                                           ; $7986: $1d
	pop  af                                          ; $7987: $f1
	ld   a, a                                        ; $7988: $7f
	ld   b, c                                        ; $7989: $41

Call_0ab_798a:
	pop  af                                          ; $798a: $f1
	rra                                              ; $798b: $1f
	jr   jr_0ab_792d                                 ; $798c: $18 $9f

	ld   [hl+], a                                    ; $798e: $22
	pop  af                                          ; $798f: $f1
	adc  a                                           ; $7990: $8f
	ld   a, [hl-]                                    ; $7991: $3a
	ld   a, [hl]                                     ; $7992: $7e
	ld   e, $f1                                      ; $7993: $1e $f1
	rst  $30                                         ; $7995: $f7
	dec  e                                           ; $7996: $1d
	pop  de                                          ; $7997: $d1
	sbc  l                                           ; $7998: $9d
	ld   c, c                                        ; $7999: $49
	cp   c                                           ; $799a: $b9
	ld   l, $63                                      ; $799b: $2e $63
	cp   h                                           ; $799d: $bc
	ld   a, [hl-]                                    ; $799e: $3a
	call nz, $927b                                   ; $799f: $c4 $7b $92
	rst  ToBoot                                         ; $79a2: $c7
	add  a                                           ; $79a3: $87
	sbc  d                                           ; $79a4: $9a
	ld   c, e                                        ; $79a5: $4b
	and  a                                           ; $79a6: $a7
	xor  b                                           ; $79a7: $a8
	sbc  d                                           ; $79a8: $9a
	ld   a, c                                        ; $79a9: $79
	add  [hl]                                        ; $79aa: $86
	adc  h                                           ; $79ab: $8c
	ld   e, e                                        ; $79ac: $5b
	sbc  c                                           ; $79ad: $99
	and  a                                           ; $79ae: $a7
	and  e                                           ; $79af: $a3
	rst  ToBoot                                         ; $79b0: $c7
	ld   l, c                                        ; $79b1: $69
	ld   l, b                                        ; $79b2: $68
	or   a                                           ; $79b3: $b7
	ld   c, a                                        ; $79b4: $4f
	jr   jr_0ab_797a                                 ; $79b5: $18 $c3

	ret                                              ; $79b7: $c9


	ld   h, a                                        ; $79b8: $67
	and  $5c                                         ; $79b9: $e6 $5c
	or   e                                           ; $79bb: $b3
	bit  5, a                                        ; $79bc: $cb $6f
	sub  a                                           ; $79be: $97
	sbc  e                                           ; $79bf: $9b
	adc  h                                           ; $79c0: $8c
	adc  e                                           ; $79c1: $8b
	sbc  b                                           ; $79c2: $98
	sub  d                                           ; $79c3: $92
	ldh  a, [c]                                      ; $79c4: $f2
	ld   c, a                                        ; $79c5: $4f
	rla                                              ; $79c6: $17
	pop  af                                          ; $79c7: $f1
	add  [hl]                                        ; $79c8: $86
	dec  sp                                          ; $79c9: $3b
	add  hl, de                                      ; $79ca: $19
	ld   b, l                                        ; $79cb: $45
	pop  hl                                          ; $79cc: $e1
	inc  a                                           ; $79cd: $3c
	jr   jr_0ab_7961                                 ; $79ce: $18 $91

	rst  $20                                         ; $79d0: $e7
	sbc  c                                           ; $79d1: $99
	ld   a, [hl]                                     ; $79d2: $7e
	cpl                                              ; $79d3: $2f
	ld   h, l                                        ; $79d4: $65
	di                                               ; $79d5: $f3
	call z, $9f88                                    ; $79d6: $cc $88 $9f
	ld   b, l                                        ; $79d9: $45
	pop  af                                          ; $79da: $f1
	cp   d                                           ; $79db: $ba
	rra                                              ; $79dc: $1f
	ld   [hl], $b2                                   ; $79dd: $36 $b2
	add  [hl]                                        ; $79df: $86
	call nc, $111f                                   ; $79e0: $d4 $1f $11
	ld   hl, sp+$39                                  ; $79e3: $f8 $39
	ldh  a, [c]                                      ; $79e5: $f2
	ld   l, a                                        ; $79e6: $6f
	dec  h                                           ; $79e7: $25
	di                                               ; $79e8: $f3
	ld   c, a                                        ; $79e9: $4f
	scf                                              ; $79ea: $37
	ret                                              ; $79eb: $c9


	ld   l, d                                        ; $79ec: $6a
	ldh  a, [c]                                      ; $79ed: $f2
	xor  a                                           ; $79ee: $af
	ld   b, d                                        ; $79ef: $42
	ld   [$686a], a                                  ; $79f0: $ea $6a $68
	adc  d                                           ; $79f3: $8a
	sub  d                                           ; $79f4: $92
	rst  $10                                         ; $79f5: $d7
	dec  l                                           ; $79f6: $2d
	ld   d, a                                        ; $79f7: $57
	and  [hl]                                        ; $79f8: $a6
	adc  d                                           ; $79f9: $8a
	xor  b                                           ; $79fa: $a8
	ld   d, [hl]                                     ; $79fb: $56
	sub  [hl]                                        ; $79fc: $96
	ld   l, h                                        ; $79fd: $6c
	ld   l, d                                        ; $79fe: $6a
	sub  c                                           ; $79ff: $91
	db   $f4                                         ; $7a00: $f4
	ld   c, a                                        ; $7a01: $4f
	dec  de                                          ; $7a02: $1b
	db   $e3                                         ; $7a03: $e3
	or   [hl]                                        ; $7a04: $b6
	sub  $5f                                         ; $7a05: $d6 $5f
	dec  de                                          ; $7a07: $1b
	and  a                                           ; $7a08: $a7
	or   l                                           ; $7a09: $b5
	push hl                                          ; $7a0a: $e5
	ld   l, e                                        ; $7a0b: $6b
	ld   a, d                                        ; $7a0c: $7a
	ld   h, [hl]                                     ; $7a0d: $66
	rst  ToBoot                                         ; $7a0e: $c7
	sbc  d                                           ; $7a0f: $9a
	inc  l                                           ; $7a10: $2c
	sub  e                                           ; $7a11: $93
	xor  d                                           ; $7a12: $aa
	ld   c, b                                        ; $7a13: $48
	and  e                                           ; $7a14: $a3
	sbc  b                                           ; $7a15: $98
	adc  b                                           ; $7a16: $88
	add  hl, sp                                      ; $7a17: $39
	ld   l, c                                        ; $7a18: $69
	sub  l                                           ; $7a19: $95
	or   [hl]                                        ; $7a1a: $b6
	ld   b, a                                        ; $7a1b: $47
	ld   l, e                                        ; $7a1c: $6b
	halt                                             ; $7a1d: $76
	sbc  b                                           ; $7a1e: $98
	adc  b                                           ; $7a1f: $88
	halt                                             ; $7a20: $76
	xor  d                                           ; $7a21: $aa
	ld   c, d                                        ; $7a22: $4a
	cp   b                                           ; $7a23: $b8
	and  [hl]                                        ; $7a24: $a6
	xor  c                                           ; $7a25: $a9
	sbc  c                                           ; $7a26: $99
	ld   l, e                                        ; $7a27: $6b
	adc  b                                           ; $7a28: $88
	cp   b                                           ; $7a29: $b8
	cp   e                                           ; $7a2a: $bb
	ld   e, e                                        ; $7a2b: $5b
	and  a                                           ; $7a2c: $a7
	sbc  b                                           ; $7a2d: $98
	sub  [hl]                                        ; $7a2e: $96
	xor  b                                           ; $7a2f: $a8
	ld   b, a                                        ; $7a30: $47
	add  e                                           ; $7a31: $83
	ld   d, [hl]                                     ; $7a32: $56
	ld   [hl], $72                                   ; $7a33: $36 $72
	add  hl, sp                                      ; $7a35: $39
	ld   b, c                                        ; $7a36: $41
	ld   h, a                                        ; $7a37: $67
	inc  d                                           ; $7a38: $14
	add  e                                           ; $7a39: $83
	ld   e, d                                        ; $7a3a: $5a
	ld   [hl], a                                     ; $7a3b: $77
	xor  d                                           ; $7a3c: $aa
	cp   d                                           ; $7a3d: $ba
	sbc  $ed                                         ; $7a3e: $de $ed
	rst  $38                                         ; $7a40: $ff
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	rst  $28                                         ; $7a43: $ef
	db   $ec                                         ; $7a44: $ec
	call z, $8589                                    ; $7a45: $cc $89 $85
	ld   b, e                                        ; $7a48: $43
	ld   hl, $1111                                   ; $7a49: $21 $11 $11
	ld   de, $1111                                   ; $7a4c: $11 $11 $11
	ld   de, $6813                                   ; $7a4f: $11 $13 $68
	cp   [hl]                                        ; $7a52: $be
	rst  $38                                         ; $7a53: $ff
	rst  $38                                         ; $7a54: $ff
	rst  $38                                         ; $7a55: $ff
	rst  $38                                         ; $7a56: $ff
	rst  $38                                         ; $7a57: $ff
	rst  $38                                         ; $7a58: $ff
	rst  $38                                         ; $7a59: $ff
	rst  $38                                         ; $7a5a: $ff
	db   $ec                                         ; $7a5b: $ec
	xor  b                                           ; $7a5c: $a8
	ld   d, e                                        ; $7a5d: $53
	ld   de, $1111                                   ; $7a5e: $11 $11 $11
	ld   de, $1111                                   ; $7a61: $11 $11 $11
	ld   de, $1211                                   ; $7a64: $11 $11 $12
	ld   c, c                                        ; $7a67: $49
	rst  JumpTable                                         ; $7a68: $df
	rst  $38                                         ; $7a69: $ff
	rst  $38                                         ; $7a6a: $ff
	rst  $38                                         ; $7a6b: $ff
	rst  $38                                         ; $7a6c: $ff
	rst  $38                                         ; $7a6d: $ff
	rst  $38                                         ; $7a6e: $ff
	rst  $38                                         ; $7a6f: $ff
	rst  $38                                         ; $7a70: $ff
	cp   $b9                                         ; $7a71: $fe $b9
	sub  l                                           ; $7a73: $95
	ld   sp, $1111                                   ; $7a74: $31 $11 $11
	ld   de, $1111                                   ; $7a77: $11 $11 $11
	ld   de, $1111                                   ; $7a7a: $11 $11 $11
	scf                                              ; $7a7d: $37
	cp   [hl]                                        ; $7a7e: $be
	rst  $38                                         ; $7a7f: $ff
	rst  $38                                         ; $7a80: $ff
	rst  $38                                         ; $7a81: $ff
	rst  $38                                         ; $7a82: $ff
	rst  $38                                         ; $7a83: $ff
	rst  $38                                         ; $7a84: $ff
	rst  $38                                         ; $7a85: $ff
	rst  $38                                         ; $7a86: $ff
	rst  $38                                         ; $7a87: $ff
	reti                                             ; $7a88: $d9


	ld   [hl], l                                     ; $7a89: $75
	ld   sp, $1111                                   ; $7a8a: $31 $11 $11
	ld   de, $1111                                   ; $7a8d: $11 $11 $11
	ld   de, $1111                                   ; $7a90: $11 $11 $11
	dec  d                                           ; $7a93: $15
	sbc  l                                           ; $7a94: $9d
	rst  $38                                         ; $7a95: $ff
	rst  $38                                         ; $7a96: $ff
	rst  $38                                         ; $7a97: $ff
	rst  $38                                         ; $7a98: $ff
	rst  $38                                         ; $7a99: $ff
	rst  $38                                         ; $7a9a: $ff
	rst  $38                                         ; $7a9b: $ff
	rst  $38                                         ; $7a9c: $ff
	rst  $38                                         ; $7a9d: $ff
	db   $eb                                         ; $7a9e: $eb
	add  l                                           ; $7a9f: $85
	ld   hl, $1111                                   ; $7aa0: $21 $11 $11
	ld   de, $1111                                   ; $7aa3: $11 $11 $11
	ld   de, $1111                                   ; $7aa6: $11 $11 $11
	dec  d                                           ; $7aa9: $15
	sbc  l                                           ; $7aaa: $9d
	rst  $38                                         ; $7aab: $ff
	rst  $38                                         ; $7aac: $ff
	rst  $38                                         ; $7aad: $ff
	rst  $38                                         ; $7aae: $ff
	rst  $38                                         ; $7aaf: $ff
	rst  $38                                         ; $7ab0: $ff
	rst  $38                                         ; $7ab1: $ff
	rst  $38                                         ; $7ab2: $ff
	rst  $38                                         ; $7ab3: $ff
	ld   [$2174], a                                  ; $7ab4: $ea $74 $21
	ld   de, $1111                                   ; $7ab7: $11 $11 $11
	ld   de, $1111                                   ; $7aba: $11 $11 $11
	ld   de, $2611                                   ; $7abd: $11 $11 $26
	cp   [hl]                                        ; $7ac0: $be
	rst  $38                                         ; $7ac1: $ff
	rst  $38                                         ; $7ac2: $ff
	rst  $38                                         ; $7ac3: $ff
	rst  $38                                         ; $7ac4: $ff
	rst  $38                                         ; $7ac5: $ff
	rst  $38                                         ; $7ac6: $ff
	rst  $38                                         ; $7ac7: $ff
	rst  $38                                         ; $7ac8: $ff
	rst  $38                                         ; $7ac9: $ff
	reti                                             ; $7aca: $d9


	ld   h, e                                        ; $7acb: $63
	ld   de, $1111                                   ; $7acc: $11 $11 $11
	ld   de, $1111                                   ; $7acf: $11 $11 $11
	ld   de, $1111                                   ; $7ad2: $11 $11 $11
	ld   c, c                                        ; $7ad5: $49
	rst  JumpTable                                         ; $7ad6: $df
	rst  $38                                         ; $7ad7: $ff
	rst  $38                                         ; $7ad8: $ff
	rst  $38                                         ; $7ad9: $ff
	rst  $38                                         ; $7ada: $ff
	rst  $38                                         ; $7adb: $ff
	rst  $38                                         ; $7adc: $ff
	rst  $38                                         ; $7add: $ff
	rst  $38                                         ; $7ade: $ff
	db   $fd                                         ; $7adf: $fd
	or   a                                           ; $7ae0: $b7
	ld   b, c                                        ; $7ae1: $41
	ld   de, $1111                                   ; $7ae2: $11 $11 $11
	ld   de, $1111                                   ; $7ae5: $11 $11 $11
	ld   de, $1411                                   ; $7ae8: $11 $11 $14
	adc  h                                           ; $7aeb: $8c
	rst  $38                                         ; $7aec: $ff
	rst  $38                                         ; $7aed: $ff
	rst  $38                                         ; $7aee: $ff
	rst  $38                                         ; $7aef: $ff
	rst  $38                                         ; $7af0: $ff
	rst  $38                                         ; $7af1: $ff
	rst  $38                                         ; $7af2: $ff
	rst  $38                                         ; $7af3: $ff
	rst  $38                                         ; $7af4: $ff
	ld   [$1163], a                                  ; $7af5: $ea $63 $11
	ld   de, $1111                                   ; $7af8: $11 $11 $11
	ld   de, $1111                                   ; $7afb: $11 $11 $11
	ld   de, $5a11                                   ; $7afe: $11 $11 $5a
	rst  $28                                         ; $7b01: $ef
	rst  $38                                         ; $7b02: $ff
	rst  $38                                         ; $7b03: $ff
	rst  $38                                         ; $7b04: $ff
	rst  $38                                         ; $7b05: $ff
	rst  $38                                         ; $7b06: $ff
	rst  $38                                         ; $7b07: $ff
	rst  $38                                         ; $7b08: $ff
	rst  $38                                         ; $7b09: $ff
	db   $fc                                         ; $7b0a: $fc
	sub  l                                           ; $7b0b: $95
	ld   hl, $1111                                   ; $7b0c: $21 $11 $11
	ld   de, $1111                                   ; $7b0f: $11 $11 $11
	ld   de, $1111                                   ; $7b12: $11 $11 $11
	daa                                              ; $7b15: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b16: $cf
	rst  $38                                         ; $7b17: $ff
	rst  $38                                         ; $7b18: $ff
	rst  $38                                         ; $7b19: $ff
	rst  $38                                         ; $7b1a: $ff
	rst  $38                                         ; $7b1b: $ff
	rst  $38                                         ; $7b1c: $ff
	rst  $38                                         ; $7b1d: $ff
	rst  $38                                         ; $7b1e: $ff
	rst  $38                                         ; $7b1f: $ff
	and  a                                           ; $7b20: $a7
	ld   sp, $1111                                   ; $7b21: $31 $11 $11
	ld   de, $1111                                   ; $7b24: $11 $11 $11
	ld   de, $1111                                   ; $7b27: $11 $11 $11
	ld   d, $af                                      ; $7b2a: $16 $af
	rst  $38                                         ; $7b2c: $ff
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	rst  $38                                         ; $7b2f: $ff
	rst  $38                                         ; $7b30: $ff
	rst  $38                                         ; $7b31: $ff
	rst  $38                                         ; $7b32: $ff
	rst  $38                                         ; $7b33: $ff
	rst  $38                                         ; $7b34: $ff
	ret                                              ; $7b35: $c9


	ld   b, c                                        ; $7b36: $41
	ld   de, $1111                                   ; $7b37: $11 $11 $11
	ld   de, $1111                                   ; $7b3a: $11 $11 $11
	ld   de, $1511                                   ; $7b3d: $11 $11 $15
	sbc  [hl]                                        ; $7b40: $9e
	rst  $38                                         ; $7b41: $ff
	rst  $38                                         ; $7b42: $ff
	rst  $38                                         ; $7b43: $ff
	rst  $38                                         ; $7b44: $ff
	rst  $38                                         ; $7b45: $ff
	rst  $38                                         ; $7b46: $ff
	rst  $38                                         ; $7b47: $ff
	rst  $38                                         ; $7b48: $ff
	rst  $38                                         ; $7b49: $ff
	jp   c, $1162                                    ; $7b4a: $da $62 $11

	ld   de, $1111                                   ; $7b4d: $11 $11 $11
	ld   de, $1111                                   ; $7b50: $11 $11 $11
	ld   de, $8d13                                   ; $7b53: $11 $13 $8d
	rst  $38                                         ; $7b56: $ff
	rst  $38                                         ; $7b57: $ff
	rst  $38                                         ; $7b58: $ff
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	rst  $38                                         ; $7b5b: $ff
	rst  $38                                         ; $7b5c: $ff
	rst  $38                                         ; $7b5d: $ff
	rst  $38                                         ; $7b5e: $ff
	ei                                               ; $7b5f: $fb
	ld   [hl], e                                     ; $7b60: $73
	ld   de, $1111                                   ; $7b61: $11 $11 $11
	ld   de, $1111                                   ; $7b64: $11 $11 $11
	ld   de, $1211                                   ; $7b67: $11 $11 $12
	ld   a, l                                        ; $7b6a: $7d
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	rst  $38                                         ; $7b6e: $ff
	rst  $38                                         ; $7b6f: $ff
	rst  $38                                         ; $7b70: $ff
	rst  $38                                         ; $7b71: $ff
	rst  $38                                         ; $7b72: $ff
	rst  $38                                         ; $7b73: $ff
	ei                                               ; $7b74: $fb
	add  l                                           ; $7b75: $85
	ld   de, $1111                                   ; $7b76: $11 $11 $11
	ld   de, $1111                                   ; $7b79: $11 $11 $11
	ld   de, $1111                                   ; $7b7c: $11 $11 $11
	ld   l, h                                        ; $7b7f: $6c
	rst  $38                                         ; $7b80: $ff
	rst  $38                                         ; $7b81: $ff
	rst  $38                                         ; $7b82: $ff
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	rst  $38                                         ; $7b85: $ff
	rst  $38                                         ; $7b86: $ff
	rst  $38                                         ; $7b87: $ff
	rst  $38                                         ; $7b88: $ff
	db   $fc                                         ; $7b89: $fc
	add  l                                           ; $7b8a: $85
	ld   de, $1111                                   ; $7b8b: $11 $11 $11
	ld   de, $1111                                   ; $7b8e: $11 $11 $11
	ld   de, $1111                                   ; $7b91: $11 $11 $11
	ld   l, h                                        ; $7b94: $6c
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	rst  $38                                         ; $7b97: $ff
	rst  $38                                         ; $7b98: $ff
	rst  $38                                         ; $7b99: $ff
	rst  $38                                         ; $7b9a: $ff
	rst  $38                                         ; $7b9b: $ff
	rst  $38                                         ; $7b9c: $ff
	rst  $38                                         ; $7b9d: $ff
	db   $eb                                         ; $7b9e: $eb
	ld   h, e                                        ; $7b9f: $63
	ld   de, $1111                                   ; $7ba0: $11 $11 $11
	ld   de, $1111                                   ; $7ba3: $11 $11 $11
	ld   de, $1211                                   ; $7ba6: $11 $11 $12
	ld   a, [hl]                                     ; $7ba9: $7e
	rst  $38                                         ; $7baa: $ff
	rst  $38                                         ; $7bab: $ff
	rst  $38                                         ; $7bac: $ff
	rst  $38                                         ; $7bad: $ff
	rst  $38                                         ; $7bae: $ff
	rst  $38                                         ; $7baf: $ff
	rst  $38                                         ; $7bb0: $ff
	rst  $38                                         ; $7bb1: $ff
	rst  $38                                         ; $7bb2: $ff
	ret                                              ; $7bb3: $c9


	ld   d, c                                        ; $7bb4: $51
	ld   de, $1111                                   ; $7bb5: $11 $11 $11
	ld   de, $1111                                   ; $7bb8: $11 $11 $11
	ld   de, $1511                                   ; $7bbb: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bbe: $cf
	rst  $38                                         ; $7bbf: $ff
	rst  $38                                         ; $7bc0: $ff
	rst  $38                                         ; $7bc1: $ff
	rst  $38                                         ; $7bc2: $ff
	rst  $38                                         ; $7bc3: $ff
	rst  $38                                         ; $7bc4: $ff
	rst  $38                                         ; $7bc5: $ff
	rst  $38                                         ; $7bc6: $ff
	rst  $38                                         ; $7bc7: $ff
	or   [hl]                                        ; $7bc8: $b6
	ld   de, $1111                                   ; $7bc9: $11 $11 $11
	ld   de, $1111                                   ; $7bcc: $11 $11 $11
	ld   de, $1111                                   ; $7bcf: $11 $11 $11
	ld   a, [hl+]                                    ; $7bd2: $2a
	rst  JumpTable                                         ; $7bd3: $df
	rst  $38                                         ; $7bd4: $ff
	rst  $38                                         ; $7bd5: $ff
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	rst  $38                                         ; $7bd8: $ff
	rst  $38                                         ; $7bd9: $ff
	rst  $38                                         ; $7bda: $ff
	rst  $38                                         ; $7bdb: $ff
	cp   $84                                         ; $7bdc: $fe $84
	ld   de, $1111                                   ; $7bde: $11 $11 $11
	ld   de, $1111                                   ; $7be1: $11 $11 $11
	ld   de, $1111                                   ; $7be4: $11 $11 $11
	ld   a, d                                        ; $7be7: $7a
	rst  $38                                         ; $7be8: $ff
	rst  $38                                         ; $7be9: $ff
	rst  $38                                         ; $7bea: $ff
	rst  $38                                         ; $7beb: $ff
	rst  $38                                         ; $7bec: $ff
	rst  $38                                         ; $7bed: $ff
	rst  $38                                         ; $7bee: $ff
	rst  $38                                         ; $7bef: $ff
	rst  $38                                         ; $7bf0: $ff
	db   $fd                                         ; $7bf1: $fd
	ld   h, d                                        ; $7bf2: $62
	ld   de, $1111                                   ; $7bf3: $11 $11 $11
	ld   de, $1111                                   ; $7bf6: $11 $11 $11
	ld   de, $1511                                   ; $7bf9: $11 $11 $15
	ld   a, d                                        ; $7bfc: $7a
	rst  $38                                         ; $7bfd: $ff
	rst  $38                                         ; $7bfe: $ff
	rst  $38                                         ; $7bff: $ff
	rst  $38                                         ; $7c00: $ff
	rst  $38                                         ; $7c01: $ff
	rst  $38                                         ; $7c02: $ff
	rst  $38                                         ; $7c03: $ff
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	jp   hl                                          ; $7c06: $e9


	ld   b, c                                        ; $7c07: $41
	ld   de, $1111                                   ; $7c08: $11 $11 $11
	ld   de, $1111                                   ; $7c0b: $11 $11 $11
	ld   de, $2411                                   ; $7c0e: $11 $11 $24
	adc  a                                           ; $7c11: $8f
	rst  $38                                         ; $7c12: $ff
	rst  $38                                         ; $7c13: $ff
	rst  $38                                         ; $7c14: $ff
	rst  $38                                         ; $7c15: $ff
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	rst  $38                                         ; $7c19: $ff
	rst  $38                                         ; $7c1a: $ff
	or   [hl]                                        ; $7c1b: $b6
	ld   sp, $1111                                   ; $7c1c: $31 $11 $11
	ld   de, $1111                                   ; $7c1f: $11 $11 $11
	ld   de, $1111                                   ; $7c22: $11 $11 $11
	dec  d                                           ; $7c25: $15
	rst  JumpTable                                         ; $7c26: $df
	rst  $38                                         ; $7c27: $ff
	rst  $38                                         ; $7c28: $ff
	rst  $38                                         ; $7c29: $ff
	rst  $38                                         ; $7c2a: $ff
	rst  $38                                         ; $7c2b: $ff
	rst  $38                                         ; $7c2c: $ff
	rst  $38                                         ; $7c2d: $ff
	rst  $38                                         ; $7c2e: $ff
	rst  $38                                         ; $7c2f: $ff
	and  [hl]                                        ; $7c30: $a6
	ld   sp, $1111                                   ; $7c31: $31 $11 $11
	ld   de, $1111                                   ; $7c34: $11 $11 $11
	ld   de, $1111                                   ; $7c37: $11 $11 $11
	rla                                              ; $7c3a: $17
	rst  $38                                         ; $7c3b: $ff
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	rst  $38                                         ; $7c3e: $ff
	rst  $38                                         ; $7c3f: $ff
	rst  $38                                         ; $7c40: $ff
	rst  $38                                         ; $7c41: $ff
	rst  $38                                         ; $7c42: $ff
	rst  $38                                         ; $7c43: $ff
	db   $fc                                         ; $7c44: $fc
	add  [hl]                                        ; $7c45: $86
	ld   bc, $1111                                   ; $7c46: $01 $11 $11
	ld   de, $1111                                   ; $7c49: $11 $11 $11
	ld   de, $1111                                   ; $7c4c: $11 $11 $11
	add  hl, bc                                      ; $7c4f: $09
	rst  $38                                         ; $7c50: $ff
	rst  $38                                         ; $7c51: $ff
	rst  $38                                         ; $7c52: $ff
	rst  $38                                         ; $7c53: $ff
	rst  $38                                         ; $7c54: $ff
	rst  $38                                         ; $7c55: $ff
	rst  $38                                         ; $7c56: $ff
	rst  $38                                         ; $7c57: $ff
	rst  $38                                         ; $7c58: $ff
	db   $fc                                         ; $7c59: $fc
	add  h                                           ; $7c5a: $84
	ld   de, $1111                                   ; $7c5b: $11 $11 $11
	ld   de, $1111                                   ; $7c5e: $11 $11 $11
	ld   de, $1111                                   ; $7c61: $11 $11 $11
	ld   c, c                                        ; $7c64: $49
	rst  $28                                         ; $7c65: $ef
	rst  $38                                         ; $7c66: $ff
	rst  $38                                         ; $7c67: $ff
	rst  $38                                         ; $7c68: $ff
	rst  $38                                         ; $7c69: $ff
	rst  $38                                         ; $7c6a: $ff
	rst  $38                                         ; $7c6b: $ff
	rst  $38                                         ; $7c6c: $ff
	rst  $38                                         ; $7c6d: $ff
	db   $fc                                         ; $7c6e: $fc
	add  h                                           ; $7c6f: $84
	ld   de, $1111                                   ; $7c70: $11 $11 $11
	ld   de, $1111                                   ; $7c73: $11 $11 $11
	ld   de, $1111                                   ; $7c76: $11 $11 $11
	ld   a, [de]                                     ; $7c79: $1a
	rst  $38                                         ; $7c7a: $ff
	rst  $38                                         ; $7c7b: $ff
	rst  $38                                         ; $7c7c: $ff
	rst  $38                                         ; $7c7d: $ff
	rst  $38                                         ; $7c7e: $ff
	rst  $38                                         ; $7c7f: $ff
	rst  $38                                         ; $7c80: $ff
	rst  $38                                         ; $7c81: $ff
	rst  $38                                         ; $7c82: $ff
	db   $fc                                         ; $7c83: $fc
	ld   [hl], h                                     ; $7c84: $74
	ld   de, $1111                                   ; $7c85: $11 $11 $11
	ld   de, $1111                                   ; $7c88: $11 $11 $11
	ld   de, $1111                                   ; $7c8b: $11 $11 $11
	daa                                              ; $7c8e: $27
	rst  $38                                         ; $7c8f: $ff
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	rst  $38                                         ; $7c92: $ff
	rst  $38                                         ; $7c93: $ff
	rst  $38                                         ; $7c94: $ff
	rst  $38                                         ; $7c95: $ff
	rst  $38                                         ; $7c96: $ff
	rst  $38                                         ; $7c97: $ff
	db   $fd                                         ; $7c98: $fd
	sub  h                                           ; $7c99: $94
	ld   bc, $1111                                   ; $7c9a: $01 $11 $11
	ld   de, $1111                                   ; $7c9d: $11 $11 $11
	ld   de, $1111                                   ; $7ca0: $11 $11 $11
	add  hl, de                                      ; $7ca3: $19
	rst  $28                                         ; $7ca4: $ef
	rst  $38                                         ; $7ca5: $ff
	rst  $38                                         ; $7ca6: $ff
	rst  $38                                         ; $7ca7: $ff
	rst  $38                                         ; $7ca8: $ff
	rst  $38                                         ; $7ca9: $ff
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	cp   $a6                                         ; $7cad: $fe $a6
	ld   hl, $1111                                   ; $7caf: $21 $11 $11
	ld   de, $1111                                   ; $7cb2: $11 $11 $11
	ld   de, $1111                                   ; $7cb5: $11 $11 $11
	inc  de                                          ; $7cb8: $13
	adc  $ff                                         ; $7cb9: $ce $ff
	rst  $38                                         ; $7cbb: $ff
	rst  $38                                         ; $7cbc: $ff
	rst  $38                                         ; $7cbd: $ff
	rst  $38                                         ; $7cbe: $ff
	rst  $38                                         ; $7cbf: $ff
	rst  $38                                         ; $7cc0: $ff
	rst  $38                                         ; $7cc1: $ff
	rst  $38                                         ; $7cc2: $ff
	or   a                                           ; $7cc3: $b7
	ld   sp, $1111                                   ; $7cc4: $31 $11 $11
	ld   de, $1111                                   ; $7cc7: $11 $11 $11
	ld   de, $1111                                   ; $7cca: $11 $11 $11
	ld   de, $ff7c                                   ; $7ccd: $11 $7c $ff
	rst  $38                                         ; $7cd0: $ff
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	rst  $38                                         ; $7cd3: $ff
	rst  $38                                         ; $7cd4: $ff
	rst  $38                                         ; $7cd5: $ff
	rst  $38                                         ; $7cd6: $ff
	rst  $38                                         ; $7cd7: $ff
	reti                                             ; $7cd8: $d9


	ld   h, e                                        ; $7cd9: $63
	ld   de, $1111                                   ; $7cda: $11 $11 $11
	ld   de, $1111                                   ; $7cdd: $11 $11 $11
	ld   de, $1111                                   ; $7ce0: $11 $11 $11
	ld   h, $cf                                      ; $7ce3: $26 $cf
	rst  $38                                         ; $7ce5: $ff
	rst  $38                                         ; $7ce6: $ff
	rst  $38                                         ; $7ce7: $ff
	rst  $38                                         ; $7ce8: $ff
	rst  $38                                         ; $7ce9: $ff
	rst  $38                                         ; $7cea: $ff
	rst  $38                                         ; $7ceb: $ff
	rst  $38                                         ; $7cec: $ff
	cp   $a8                                         ; $7ced: $fe $a8
	ld   sp, $1111                                   ; $7cef: $31 $11 $11
	ld   de, $1111                                   ; $7cf2: $11 $11 $11
	ld   de, $1111                                   ; $7cf5: $11 $11 $11
	ld   de, $df38                                   ; $7cf8: $11 $38 $df

Call_0ab_7cfb:
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	rst  $38                                         ; $7cfd: $ff
	rst  $38                                         ; $7cfe: $ff
	rst  $38                                         ; $7cff: $ff
	rst  $38                                         ; $7d00: $ff
	rst  $38                                         ; $7d01: $ff
	rst  $38                                         ; $7d02: $ff
	rst  $38                                         ; $7d03: $ff
	ret  c                                           ; $7d04: $d8

	ld   h, d                                        ; $7d05: $62
	ld   de, $1111                                   ; $7d06: $11 $11 $11
	ld   de, $1111                                   ; $7d09: $11 $11 $11
	ld   de, $1111                                   ; $7d0c: $11 $11 $11
	dec  d                                           ; $7d0f: $15
	sbc  [hl]                                        ; $7d10: $9e
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	rst  $38                                         ; $7d13: $ff
	rst  $38                                         ; $7d14: $ff
	rst  $38                                         ; $7d15: $ff
	rst  $38                                         ; $7d16: $ff
	rst  $38                                         ; $7d17: $ff
	rst  $38                                         ; $7d18: $ff
	rst  $38                                         ; $7d19: $ff
	ret  z                                           ; $7d1a: $c8

	ld   d, d                                        ; $7d1b: $52
	ld   de, $1111                                   ; $7d1c: $11 $11 $11
	ld   de, $1111                                   ; $7d1f: $11 $11 $11
	ld   de, $1111                                   ; $7d22: $11 $11 $11
	inc  d                                           ; $7d25: $14
	sbc  h                                           ; $7d26: $9c
	rst  $38                                         ; $7d27: $ff
	rst  $38                                         ; $7d28: $ff
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	rst  $38                                         ; $7d2b: $ff
	rst  $38                                         ; $7d2c: $ff
	rst  $38                                         ; $7d2d: $ff
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	ld   [$1174], a                                  ; $7d30: $ea $74 $11
	ld   de, $1111                                   ; $7d33: $11 $11 $11
	ld   de, $1111                                   ; $7d36: $11 $11 $11
	ld   de, $1211                                   ; $7d39: $11 $11 $12
	ld   l, d                                        ; $7d3c: $6a
	rst  $28                                         ; $7d3d: $ef
	rst  $38                                         ; $7d3e: $ff
	rst  $38                                         ; $7d3f: $ff
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	rst  $38                                         ; $7d44: $ff
	rst  $38                                         ; $7d45: $ff
	db   $fd                                         ; $7d46: $fd
	sub  [hl]                                        ; $7d47: $96
	ld   sp, $1111                                   ; $7d48: $31 $11 $11
	ld   de, $1111                                   ; $7d4b: $11 $11 $11
	ld   de, $1111                                   ; $7d4e: $11 $11 $11
	ld   de, $be37                                   ; $7d51: $11 $37 $be
	rst  $38                                         ; $7d54: $ff
	rst  $38                                         ; $7d55: $ff
	rst  $38                                         ; $7d56: $ff
	rst  $38                                         ; $7d57: $ff
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	rst  $38                                         ; $7d5b: $ff
	rst  $38                                         ; $7d5c: $ff
	ret                                              ; $7d5d: $c9


	ld   h, e                                        ; $7d5e: $63
	ld   de, $1111                                   ; $7d5f: $11 $11 $11
	ld   de, $1111                                   ; $7d62: $11 $11 $11
	ld   de, $1111                                   ; $7d65: $11 $11 $11
	inc  de                                          ; $7d68: $13
	ld   l, d                                        ; $7d69: $6a
	rst  $28                                         ; $7d6a: $ef
	rst  $38                                         ; $7d6b: $ff
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	rst  $38                                         ; $7d6e: $ff
	rst  $38                                         ; $7d6f: $ff
	rst  $38                                         ; $7d70: $ff
	rst  $38                                         ; $7d71: $ff
	rst  $38                                         ; $7d72: $ff
	db   $fd                                         ; $7d73: $fd
	and  a                                           ; $7d74: $a7
	ld   b, d                                        ; $7d75: $42
	ld   de, $1111                                   ; $7d76: $11 $11 $11
	ld   de, $1111                                   ; $7d79: $11 $11 $11
	ld   de, $1111                                   ; $7d7c: $11 $11 $11
	inc  d                                           ; $7d7f: $14
	ld   a, e                                        ; $7d80: $7b
	rst  $38                                         ; $7d81: $ff
	rst  $38                                         ; $7d82: $ff
	rst  $38                                         ; $7d83: $ff
	rst  $38                                         ; $7d84: $ff
	rst  $38                                         ; $7d85: $ff
	rst  $38                                         ; $7d86: $ff
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	rst  $38                                         ; $7d89: $ff
	db   $fc                                         ; $7d8a: $fc
	add  [hl]                                        ; $7d8b: $86
	ld   sp, $1111                                   ; $7d8c: $31 $11 $11
	ld   de, $1111                                   ; $7d8f: $11 $11 $11
	ld   de, $1111                                   ; $7d92: $11 $11 $11
	ld   de, $9c25                                   ; $7d95: $11 $25 $9c
	rst  $38                                         ; $7d98: $ff
	rst  $38                                         ; $7d99: $ff
	rst  $38                                         ; $7d9a: $ff
	rst  $38                                         ; $7d9b: $ff
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	rst  $38                                         ; $7d9f: $ff
	rst  $38                                         ; $7da0: $ff
	db   $fc                                         ; $7da1: $fc
	sub  [hl]                                        ; $7da2: $96
	ld   sp, $1111                                   ; $7da3: $31 $11 $11
	ld   de, $1111                                   ; $7da6: $11 $11 $11
	ld   de, $1111                                   ; $7da9: $11 $11 $11
	ld   de, $8b14                                   ; $7dac: $11 $14 $8b
	rst  $38                                         ; $7daf: $ff
	rst  $38                                         ; $7db0: $ff
	rst  $38                                         ; $7db1: $ff
	rst  $38                                         ; $7db2: $ff
	rst  $38                                         ; $7db3: $ff
	rst  $38                                         ; $7db4: $ff
	rst  $38                                         ; $7db5: $ff
	rst  $38                                         ; $7db6: $ff
	rst  $38                                         ; $7db7: $ff
	db   $fd                                         ; $7db8: $fd
	sub  a                                           ; $7db9: $97
	ld   b, e                                        ; $7dba: $43
	ld   de, $1111                                   ; $7dbb: $11 $11 $11
	ld   de, $1111                                   ; $7dbe: $11 $11 $11
	ld   de, $1111                                   ; $7dc1: $11 $11 $11
	ld   [de], a                                     ; $7dc4: $12
	ld   e, c                                        ; $7dc5: $59
	cp   a                                           ; $7dc6: $bf
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	rst  $38                                         ; $7dc9: $ff
	rst  $38                                         ; $7dca: $ff
	rst  $38                                         ; $7dcb: $ff
	rst  $38                                         ; $7dcc: $ff
	rst  $38                                         ; $7dcd: $ff
	rst  $38                                         ; $7dce: $ff
	cp   $c9                                         ; $7dcf: $fe $c9
	ld   h, h                                        ; $7dd1: $64
	ld   hl, $1111                                   ; $7dd2: $21 $11 $11
	ld   de, $1111                                   ; $7dd5: $11 $11 $11
	ld   de, $1111                                   ; $7dd8: $11 $11 $11
	ld   de, $8b25                                   ; $7ddb: $11 $25 $8b
	rst  $28                                         ; $7dde: $ef
	rst  $38                                         ; $7ddf: $ff
	rst  $38                                         ; $7de0: $ff
	rst  $38                                         ; $7de1: $ff
	rst  $38                                         ; $7de2: $ff
	rst  $38                                         ; $7de3: $ff
	rst  $38                                         ; $7de4: $ff
	rst  $38                                         ; $7de5: $ff
	rst  $38                                         ; $7de6: $ff
	db   $fd                                         ; $7de7: $fd
	and  a                                           ; $7de8: $a7
	ld   d, e                                        ; $7de9: $53
	ld   de, $1111                                   ; $7dea: $11 $11 $11
	ld   de, $1111                                   ; $7ded: $11 $11 $11
	ld   de, $1111                                   ; $7df0: $11 $11 $11
	ld   de, $9b35                                   ; $7df3: $11 $35 $9b
	rst  $38                                         ; $7df6: $ff
	rst  $38                                         ; $7df7: $ff
	rst  $38                                         ; $7df8: $ff
	rst  $38                                         ; $7df9: $ff
	rst  $38                                         ; $7dfa: $ff
	rst  $38                                         ; $7dfb: $ff
	rst  $38                                         ; $7dfc: $ff
	rst  $38                                         ; $7dfd: $ff
	rst  $38                                         ; $7dfe: $ff
	ld   a, [$5398]                                  ; $7dff: $fa $98 $53
	ld   de, $1111                                   ; $7e02: $11 $11 $11
	ld   de, $1111                                   ; $7e05: $11 $11 $11
	ld   de, $1111                                   ; $7e08: $11 $11 $11
	ld   [de], a                                     ; $7e0b: $12
	ld   e, c                                        ; $7e0c: $59
	cp   a                                           ; $7e0d: $bf
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	rst  $38                                         ; $7e10: $ff
	rst  $38                                         ; $7e11: $ff
	rst  $38                                         ; $7e12: $ff
	rst  $38                                         ; $7e13: $ff
	rst  $38                                         ; $7e14: $ff
	rst  $38                                         ; $7e15: $ff
	cp   $ca                                         ; $7e16: $fe $ca
	ld   h, a                                        ; $7e18: $67
	ld   b, e                                        ; $7e19: $43
	ld   de, $1111                                   ; $7e1a: $11 $11 $11
	ld   de, $1111                                   ; $7e1d: $11 $11 $11
	ld   de, $1111                                   ; $7e20: $11 $11 $11
	inc  de                                          ; $7e23: $13
	ld   e, c                                        ; $7e24: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e25: $cf
	rst  $38                                         ; $7e26: $ff
	rst  $38                                         ; $7e27: $ff
	rst  $38                                         ; $7e28: $ff
	rst  $38                                         ; $7e29: $ff
	rst  $38                                         ; $7e2a: $ff
	rst  $38                                         ; $7e2b: $ff
	rst  $38                                         ; $7e2c: $ff
	rst  $38                                         ; $7e2d: $ff
	cp   $ba                                         ; $7e2e: $fe $ba
	add  [hl]                                        ; $7e30: $86
	ld   d, e                                        ; $7e31: $53
	ld   de, $1111                                   ; $7e32: $11 $11 $11
	ld   de, $1111                                   ; $7e35: $11 $11 $11
	ld   de, $1111                                   ; $7e38: $11 $11 $11
	ld   [de], a                                     ; $7e3b: $12
	ld   b, [hl]                                     ; $7e3c: $46
	sbc  a                                           ; $7e3d: $9f
	rst  $38                                         ; $7e3e: $ff
	rst  $38                                         ; $7e3f: $ff
	rst  $38                                         ; $7e40: $ff
	rst  $38                                         ; $7e41: $ff
	rst  $38                                         ; $7e42: $ff
	rst  $38                                         ; $7e43: $ff
	rst  $38                                         ; $7e44: $ff
	rst  $38                                         ; $7e45: $ff
	rst  $38                                         ; $7e46: $ff
	res  2, [hl]                                     ; $7e47: $cb $96
	ld   h, h                                        ; $7e49: $64
	ld   hl, $1111                                   ; $7e4a: $21 $11 $11
	ld   de, $1111                                   ; $7e4d: $11 $11 $11
	ld   de, $1111                                   ; $7e50: $11 $11 $11
	ld   de, $7a46                                   ; $7e53: $11 $46 $7a
	rst  $38                                         ; $7e56: $ff
	rst  $38                                         ; $7e57: $ff
	rst  $38                                         ; $7e58: $ff
	rst  $38                                         ; $7e59: $ff
	rst  $38                                         ; $7e5a: $ff
	rst  $38                                         ; $7e5b: $ff
	rst  $38                                         ; $7e5c: $ff
	rst  $38                                         ; $7e5d: $ff
	rst  $38                                         ; $7e5e: $ff
	db   $fd                                         ; $7e5f: $fd
	cp   c                                           ; $7e60: $b9
	ld   [hl], l                                     ; $7e61: $75
	ld   [hl-], a                                    ; $7e62: $32
	ld   de, $1111                                   ; $7e63: $11 $11 $11
	ld   de, $1111                                   ; $7e66: $11 $11 $11
	ld   de, $1111                                   ; $7e69: $11 $11 $11
	inc  de                                          ; $7e6c: $13
	ld   l, b                                        ; $7e6d: $68
	xor  [hl]                                        ; $7e6e: $ae
	rst  $38                                         ; $7e6f: $ff
	rst  $38                                         ; $7e70: $ff
	rst  $38                                         ; $7e71: $ff
	rst  $38                                         ; $7e72: $ff
	rst  $38                                         ; $7e73: $ff
	rst  $38                                         ; $7e74: $ff
	rst  $38                                         ; $7e75: $ff
	rst  $38                                         ; $7e76: $ff
	rst  $38                                         ; $7e77: $ff
	db   $db                                         ; $7e78: $db
	xor  b                                           ; $7e79: $a8
	ld   h, e                                        ; $7e7a: $63
	ld   b, c                                        ; $7e7b: $41
	ld   de, $1111                                   ; $7e7c: $11 $11 $11
	ld   de, $1111                                   ; $7e7f: $11 $11 $11
	ld   de, $1111                                   ; $7e82: $11 $11 $11
	dec  d                                           ; $7e85: $15
	ld   e, c                                        ; $7e86: $59
	call $ffff                                       ; $7e87: $cd $ff $ff
	rst  $38                                         ; $7e8a: $ff
	rst  $38                                         ; $7e8b: $ff
	rst  $38                                         ; $7e8c: $ff
	rst  $38                                         ; $7e8d: $ff
	rst  $38                                         ; $7e8e: $ff
	rst  $38                                         ; $7e8f: $ff
	rst  $38                                         ; $7e90: $ff
	res  4, a                                        ; $7e91: $cb $a7
	ld   b, h                                        ; $7e93: $44
	ld   hl, $1111                                   ; $7e94: $21 $11 $11
	ld   de, $1111                                   ; $7e97: $11 $11 $11
	ld   de, $1111                                   ; $7e9a: $11 $11 $11
	ld   de, $7713                                   ; $7e9d: $11 $13 $77
	xor  a                                           ; $7ea0: $af
	rst  $38                                         ; $7ea1: $ff
	rst  $38                                         ; $7ea2: $ff
	rst  $38                                         ; $7ea3: $ff
	rst  $38                                         ; $7ea4: $ff
	rst  $38                                         ; $7ea5: $ff
	rst  $38                                         ; $7ea6: $ff
	rst  $38                                         ; $7ea7: $ff
	rst  $38                                         ; $7ea8: $ff
	cp   $ec                                         ; $7ea9: $fe $ec
	sbc  b                                           ; $7eab: $98
	ld   h, h                                        ; $7eac: $64
	ld   b, d                                        ; $7ead: $42
	ld   de, $1111                                   ; $7eae: $11 $11 $11
	ld   de, $1111                                   ; $7eb1: $11 $11 $11
	ld   de, $1111                                   ; $7eb4: $11 $11 $11
	inc  de                                          ; $7eb7: $13
	dec  [hl]                                        ; $7eb8: $35
	adc  d                                           ; $7eb9: $8a
	adc  $ff                                         ; $7eba: $ce $ff
	rst  $38                                         ; $7ebc: $ff
	rst  $38                                         ; $7ebd: $ff
	rst  $38                                         ; $7ebe: $ff
	rst  $38                                         ; $7ebf: $ff
	rst  $38                                         ; $7ec0: $ff
	rst  $38                                         ; $7ec1: $ff
	rst  $38                                         ; $7ec2: $ff
	cp   $bb                                         ; $7ec3: $fe $bb
	sbc  b                                           ; $7ec5: $98
	ld   d, l                                        ; $7ec6: $55
	ld   [hl-], a                                    ; $7ec7: $32
	ld   de, $1111                                   ; $7ec8: $11 $11 $11
	ld   de, $1111                                   ; $7ecb: $11 $11 $11
	ld   de, $1111                                   ; $7ece: $11 $11 $11
	ld   [de], a                                     ; $7ed1: $12
	ld   b, h                                        ; $7ed2: $44
	ld   l, c                                        ; $7ed3: $69
	sbc  h                                           ; $7ed4: $9c
	rst  JumpTable                                         ; $7ed5: $df
	rst  $38                                         ; $7ed6: $ff
	rst  $38                                         ; $7ed7: $ff
	rst  $38                                         ; $7ed8: $ff
	rst  $38                                         ; $7ed9: $ff
	rst  $38                                         ; $7eda: $ff
	rst  $38                                         ; $7edb: $ff
	rst  $38                                         ; $7edc: $ff
	cp   $cb                                         ; $7edd: $fe $cb
	sbc  b                                           ; $7edf: $98
	halt                                             ; $7ee0: $76
	ld   b, h                                        ; $7ee1: $44
	ld   b, d                                        ; $7ee2: $42
	ld   [de], a                                     ; $7ee3: $12
	ld   de, $1111                                   ; $7ee4: $11 $11 $11
	ld   de, $1111                                   ; $7ee7: $11 $11 $11
	ld   de, $2512                                   ; $7eea: $11 $12 $25
	ld   d, h                                        ; $7eed: $54
	ld   a, c                                        ; $7eee: $79
	sbc  c                                           ; $7eef: $99
	adc  $df                                         ; $7ef0: $ce $df
	rst  $38                                         ; $7ef2: $ff
	rst  $38                                         ; $7ef3: $ff
	rst  $38                                         ; $7ef4: $ff
	rst  $38                                         ; $7ef5: $ff
	rst  $38                                         ; $7ef6: $ff
	cp   $ed                                         ; $7ef7: $fe $ed
	ret                                              ; $7ef9: $c9


	cp   d                                           ; $7efa: $ba
	ld   [hl], a                                     ; $7efb: $77
	ld   h, [hl]                                     ; $7efc: $66
	ld   d, l                                        ; $7efd: $55
	ld   [hl-], a                                    ; $7efe: $32
	ld   b, e                                        ; $7eff: $43
	ld   [de], a                                     ; $7f00: $12
	ld   hl, $1231                                   ; $7f01: $21 $31 $12
	ld   hl, $2422                                   ; $7f04: $21 $22 $24
	ld   d, e                                        ; $7f07: $53
	daa                                              ; $7f08: $27
	ld   h, h                                        ; $7f09: $64
	ld   l, c                                        ; $7f0a: $69
	ld   a, b                                        ; $7f0b: $78
	xor  e                                           ; $7f0c: $ab
	cp   h                                           ; $7f0d: $bc
	call c, $efee                                    ; $7f0e: $dc $ee $ef
	xor  $df                                         ; $7f11: $ee $df
	call c, $ccdd                                    ; $7f13: $dc $dd $cc
	cp   d                                           ; $7f16: $ba
	xor  c                                           ; $7f17: $a9
	adc  c                                           ; $7f18: $89
	add  l                                           ; $7f19: $85
	add  a                                           ; $7f1a: $87
	ld   b, l                                        ; $7f1b: $45
	ld   [hl], e                                     ; $7f1c: $73
	ld   h, $42                                      ; $7f1d: $26 $42
	ld   b, h                                        ; $7f1f: $44
	inc  hl                                          ; $7f20: $23
	ld   h, d                                        ; $7f21: $62
	ld   [hl], $33                                   ; $7f22: $36 $33
	ld   d, l                                        ; $7f24: $55
	ld   b, l                                        ; $7f25: $45
	ld   [hl], h                                     ; $7f26: $74
	ld   c, c                                        ; $7f27: $49
	halt                                             ; $7f28: $76
	adc  b                                           ; $7f29: $88
	xor  b                                           ; $7f2a: $a8
	xor  e                                           ; $7f2b: $ab
	cp   e                                           ; $7f2c: $bb
	call z, $bbbd                                    ; $7f2d: $cc $bd $bb
	db   $dd                                         ; $7f30: $dd
	xor  e                                           ; $7f31: $ab
	call z, $baba                                    ; $7f32: $cc $ba $ba
	jp   z, $a79a                                    ; $7f35: $ca $9a $a7

	ld   l, e                                        ; $7f38: $6b
	ld   d, [hl]                                     ; $7f39: $56
	add  l                                           ; $7f3a: $85
	ld   h, l                                        ; $7f3b: $65
	ld   d, l                                        ; $7f3c: $55
	and  h                                           ; $7f3d: $a4
	jr   z, jr_0ab_7fa4                              ; $7f3e: $28 $64

	ld   d, [hl]                                     ; $7f40: $56
	ld   h, l                                        ; $7f41: $65
	ld   h, a                                        ; $7f42: $67
	ld   h, [hl]                                     ; $7f43: $66
	ld   [hl], l                                     ; $7f44: $75
	ld   a, b                                        ; $7f45: $78
	ld   e, d                                        ; $7f46: $5a
	sub  h                                           ; $7f47: $94
	xor  b                                           ; $7f48: $a8
	adc  d                                           ; $7f49: $8a
	ld   l, e                                        ; $7f4a: $6b
	sbc  d                                           ; $7f4b: $9a
	sbc  b                                           ; $7f4c: $98
	sub  $db                                         ; $7f4d: $d6 $db
	ld   l, d                                        ; $7f4f: $6a
	xor  e                                           ; $7f50: $ab
	sbc  e                                           ; $7f51: $9b
	or   a                                           ; $7f52: $b7
	res  1, l                                        ; $7f53: $cb $8d
	and  a                                           ; $7f55: $a7
	adc  c                                           ; $7f56: $89
	ld   a, b                                        ; $7f57: $78
	sub  [hl]                                        ; $7f58: $96
	xor  c                                           ; $7f59: $a9
	ld   e, c                                        ; $7f5a: $59
	ld   a, b                                        ; $7f5b: $78
	ld   h, h                                        ; $7f5c: $64
	add  l                                           ; $7f5d: $85
	add  a                                           ; $7f5e: $87
	ld   h, a                                        ; $7f5f: $67
	ld   l, d                                        ; $7f60: $6a
	ld   e, b                                        ; $7f61: $58
	halt                                             ; $7f62: $76
	and  a                                           ; $7f63: $a7
	ld   [hl], a                                     ; $7f64: $77
	xor  d                                           ; $7f65: $aa
	ld   h, a                                        ; $7f66: $67
	xor  b                                           ; $7f67: $a8
	ld   l, d                                        ; $7f68: $6a
	and  [hl]                                        ; $7f69: $a6
	xor  e                                           ; $7f6a: $ab
	ld   e, b                                        ; $7f6b: $58
	add  $8c                                         ; $7f6c: $c6 $8c
	sub  [hl]                                        ; $7f6e: $96
	adc  e                                           ; $7f6f: $8b
	ld   l, c                                        ; $7f70: $69
	sub  a                                           ; $7f71: $97
	adc  b                                           ; $7f72: $88
	ld   a, c                                        ; $7f73: $79
	sbc  b                                           ; $7f74: $98
	ld   e, c                                        ; $7f75: $59
	and  [hl]                                        ; $7f76: $a6
	sbc  b                                           ; $7f77: $98
	add  a                                           ; $7f78: $87
	ld   h, l                                        ; $7f79: $65
	sbc  d                                           ; $7f7a: $9a
	ld   a, [hl-]                                    ; $7f7b: $3a
	add  l                                           ; $7f7c: $85
	and  a                                           ; $7f7d: $a7
	add  a                                           ; $7f7e: $87
	add  a                                           ; $7f7f: $87
	ld   a, c                                        ; $7f80: $79
	ld   a, d                                        ; $7f81: $7a
	ld   l, e                                        ; $7f82: $6b
	sub  l                                           ; $7f83: $95
	cp   c                                           ; $7f84: $b9
	sbc  c                                           ; $7f85: $99
	adc  d                                           ; $7f86: $8a
	and  a                                           ; $7f87: $a7
	ld   a, e                                        ; $7f88: $7b
	ld   h, a                                        ; $7f89: $67
	or   [hl]                                        ; $7f8a: $b6
	ld   l, d                                        ; $7f8b: $6a
	sub  a                                           ; $7f8c: $97
	add  a                                           ; $7f8d: $87
	sub  l                                           ; $7f8e: $95
	cp   b                                           ; $7f8f: $b8
	ld   l, c                                        ; $7f90: $69
	ld   h, a                                        ; $7f91: $67
	ld   e, h                                        ; $7f92: $5c
	ld   h, [hl]                                     ; $7f93: $66
	call nz, Call_0ab_77a7                           ; $7f94: $c4 $a7 $77
	ld   a, c                                        ; $7f97: $79
	ld   e, c                                        ; $7f98: $59
	adc  b                                           ; $7f99: $88
	add  [hl]                                        ; $7f9a: $86
	and  a                                           ; $7f9b: $a7
	adc  c                                           ; $7f9c: $89
	ld   e, d                                        ; $7f9d: $5a
	sub  l                                           ; $7f9e: $95
	xor  c                                           ; $7f9f: $a9
	add  a                                           ; $7fa0: $87
	cp   b                                           ; $7fa1: $b8
	ld   e, h                                        ; $7fa2: $5c
	ld   e, b                                        ; $7fa3: $58

jr_0ab_7fa4:
	xor  c                                           ; $7fa4: $a9
	add  h                                           ; $7fa5: $84
	and  $6c                                         ; $7fa6: $e6 $6c
	ld   e, d                                        ; $7fa8: $5a
	ld   [hl], a                                     ; $7fa9: $77
	and  l                                           ; $7faa: $a5
	or   a                                           ; $7fab: $b7
	ld   e, h                                        ; $7fac: $5c
	ld   c, c                                        ; $7fad: $49
	add  h                                           ; $7fae: $84

Call_0ab_7faf:
	or   l                                           ; $7faf: $b5
	adc  b                                           ; $7fb0: $88
	ld   a, c                                        ; $7fb1: $79
	ld   [hl], a                                     ; $7fb2: $77
	sbc  b                                           ; $7fb3: $98
	ld   a, b                                        ; $7fb4: $78
	sub  a                                           ; $7fb5: $97
	ld   a, d                                        ; $7fb6: $7a
	dec  sp                                          ; $7fb7: $3b
	add  [hl]                                        ; $7fb8: $86
	db   $d3                                         ; $7fb9: $d3
	or   [hl]                                        ; $7fba: $b6
	sub  a                                           ; $7fbb: $97
	ld   a, e                                        ; $7fbc: $7b
	dec  sp                                          ; $7fbd: $3b
	ld   a, b                                        ; $7fbe: $78
	sub  a                                           ; $7fbf: $97
	ld   a, e                                        ; $7fc0: $7b
	ld   [hl], a                                     ; $7fc1: $77
	sub  a                                           ; $7fc2: $97
	and  h                                           ; $7fc3: $a4
	add  $6c                                         ; $7fc4: $c6 $6c
	ld   c, c                                        ; $7fc6: $49
	and  a                                           ; $7fc7: $a7
	ld   l, c                                        ; $7fc8: $69
	and  h                                           ; $7fc9: $a4
	xor  e                                           ; $7fca: $ab
	dec  sp                                          ; $7fcb: $3b
	ld   a, b                                        ; $7fcc: $78
	sub  [hl]                                        ; $7fcd: $96
	and  l                                           ; $7fce: $a5
	or   a                                           ; $7fcf: $b7
	ld   l, e                                        ; $7fd0: $6b
	ld   e, c                                        ; $7fd1: $59
	ld   a, c                                        ; $7fd2: $79
	add  [hl]                                        ; $7fd3: $86
	push bc                                          ; $7fd4: $c5
	ld   a, c                                        ; $7fd5: $79
	adc  b                                           ; $7fd6: $88
	adc  d                                           ; $7fd7: $8a
	ld   h, a                                        ; $7fd8: $67
	and  l                                           ; $7fd9: $a5
	or   a                                           ; $7fda: $b7
	ld   a, b                                        ; $7fdb: $78
	ld   l, e                                        ; $7fdc: $6b
	ld   c, l                                        ; $7fdd: $4d
	ld   e, b                                        ; $7fde: $58
	sub  [hl]                                        ; $7fdf: $96
	or   e                                           ; $7fe0: $b3
	push bc                                          ; $7fe1: $c5
	ld   a, d                                        ; $7fe2: $7a
	ld   a, c                                        ; $7fe3: $79
	ld   l, c                                        ; $7fe4: $69
	ld   l, c                                        ; $7fe5: $69
	add  a                                           ; $7fe6: $87
	sbc  c                                           ; $7fe7: $99
	ld   h, a                                        ; $7fe8: $67
	and  a                                           ; $7fe9: $a7
	ld   a, e                                        ; $7fea: $7b
	ld   e, d                                        ; $7feb: $5a
	sub  h                                           ; $7fec: $94

Jump_0ab_7fed:
	or   a                                           ; $7fed: $b7
	sub  [hl]                                        ; $7fee: $96
	or   a                                           ; $7fef: $b7
	ld   a, d                                        ; $7ff0: $7a
	ld   l, e                                        ; $7ff1: $6b
	ld   e, c                                        ; $7ff2: $59
	ld   [hl], a                                     ; $7ff3: $77
	sbc  b                                           ; $7ff4: $98
	adc  b                                           ; $7ff5: $88
	ld   a, c                                        ; $7ff6: $79
	sub  [hl]                                        ; $7ff7: $96
	sub  [hl]                                        ; $7ff8: $96
	and  h                                           ; $7ff9: $a4
	or   [hl]                                        ; $7ffa: $b6
	ld   a, h                                        ; $7ffb: $7c
	ld   a, [hl+]                                    ; $7ffc: $2a
	ld   a, d                                        ; $7ffd: $7a
	ld   e, c                                        ; $7ffe: $59
	sub  l                                           ; $7fff: $95
