; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0f2", ROMX[$4000], BANK[$f2]

	sbc  e                                           ; $4000: $9b
	rst  JumpTable                                         ; $4001: $df
	rst  $38                                         ; $4002: $ff
	ld   d, c                                        ; $4003: $51
	ld   de, $1f11                                   ; $4004: $11 $11 $1f
	rst  $38                                         ; $4007: $ff
	cp   $f8                                         ; $4008: $fe $f8
	ld   de, $ae1e                                   ; $400a: $11 $1e $ae
	rst  $38                                         ; $400d: $ff
	ei                                               ; $400e: $fb
	ld   de, $1111                                   ; $400f: $11 $11 $11
	ld   e, a                                        ; $4012: $5f
	rst  $38                                         ; $4013: $ff
	rst  $38                                         ; $4014: $ff
	pop  af                                          ; $4015: $f1
	ld   de, $af6f                                   ; $4016: $11 $6f $af
	rst  $38                                         ; $4019: $ff
	db   $f4                                         ; $401a: $f4
	ld   de, $1111                                   ; $401b: $11 $11 $11
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4020: $cf
	pop  af                                          ; $4021: $f1
	ld   de, $efdf                                   ; $4022: $11 $df $ef
	rst  $38                                         ; $4025: $ff
	pop  af                                          ; $4026: $f1
	ld   de, $1111                                   ; $4027: $11 $11 $11
	rst  $38                                         ; $402a: $ff
	rst  $38                                         ; $402b: $ff
	xor  a                                           ; $402c: $af
	pop  hl                                          ; $402d: $e1
	ld   de, $ffff                                   ; $402e: $11 $ff $ff
	rst  $38                                         ; $4031: $ff
	and  c                                           ; $4032: $a1
	ld   de, $1111                                   ; $4033: $11 $11 $11
	rst  $38                                         ; $4036: $ff
	rst  JumpTable                                         ; $4037: $df
	adc  a                                           ; $4038: $8f
	pop  bc                                          ; $4039: $c1
	ld   de, $ffff                                   ; $403a: $11 $ff $ff
	rst  $38                                         ; $403d: $ff
	and  c                                           ; $403e: $a1
	ld   de, $1101                                   ; $403f: $11 $01 $11
	rst  $38                                         ; $4042: $ff
	rst  JumpTable                                         ; $4043: $df
	cp   a                                           ; $4044: $bf
	pop  hl                                          ; $4045: $e1
	ld   de, $ffef                                   ; $4046: $11 $ef $ff
	rst  $38                                         ; $4049: $ff
	pop  bc                                          ; $404a: $c1
	ld   de, $1111                                   ; $404b: $11 $11 $11
	rst  $38                                         ; $404e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $404f: $cf
	db   $fc                                         ; $4050: $fc
	pop  af                                          ; $4051: $f1
	ld   de, $ff9f                                   ; $4052: $11 $9f $ff
	rst  $38                                         ; $4055: $ff
	jp   nz, $3111                                   ; $4056: $c2 $11 $31

	ld   de, $ff2f                                   ; $4059: $11 $2f $ff
	or   $f1                                         ; $405c: $f6 $f1
	ld   de, $ff2f                                   ; $405e: $11 $2f $ff
	rst  $38                                         ; $4061: $ff
	db   $f4                                         ; $4062: $f4
	ld   de, $1151                                   ; $4063: $11 $51 $11
	rra                                              ; $4066: $1f
	ld   a, [$f1f6]                                  ; $4067: $fa $f6 $f1
	ld   de, $ff1f                                   ; $406a: $11 $1f $ff
	rst  $38                                         ; $406d: $ff
	or   $11                                         ; $406e: $f6 $11
	ld   h, c                                        ; $4070: $61
	ld   de, $f41f                                   ; $4071: $11 $1f $f4
	ld   hl, sp-$0f                                  ; $4074: $f8 $f1
	ld   de, $ff1f                                   ; $4076: $11 $1f $ff
	rst  $38                                         ; $4079: $ff
	ld   sp, hl                                      ; $407a: $f9
	ld   de, $1153                                   ; $407b: $11 $53 $11
	rra                                              ; $407e: $1f
	ldh  a, [c]                                      ; $407f: $f2
	rst  $38                                         ; $4080: $ff
	rst  ToBoot                                         ; $4081: $c7
	ld   de, $ef1a                                   ; $4082: $11 $1a $ef
	rst  $38                                         ; $4085: $ff
	ei                                               ; $4086: $fb
	ld   d, c                                        ; $4087: $51
	inc  bc                                          ; $4088: $03
	ld   b, c                                        ; $4089: $41
	dec  d                                           ; $408a: $15
	ei                                               ; $408b: $fb
	rst  $28                                         ; $408c: $ef
	sbc  a                                           ; $408d: $9f
	ld   de, $ef13                                   ; $408e: $11 $13 $ef
	rst  $38                                         ; $4091: $ff
	ld   a, [$14b1]                                  ; $4092: $fa $b1 $14
	ld   d, c                                        ; $4095: $51
	ld   de, $3fff                                   ; $4096: $11 $ff $3f
	sbc  a                                           ; $4099: $9f
	ld   de, wTitleScreenFrameCounter+1                                   ; $409a: $11 $11 $cc
	rst  $38                                         ; $409d: $ff
	ei                                               ; $409e: $fb
	jp   $4511                                       ; $409f: $c3 $11 $45


	ld   de, $2fff                                   ; $40a2: $11 $ff $2f
	db   $fd                                         ; $40a5: $fd
	ld   [hl], c                                     ; $40a6: $71
	ld   b, c                                        ; $40a7: $41
	ld   l, b                                        ; $40a8: $68
	rst  $38                                         ; $40a9: $ff
	cp   $8d                                         ; $40aa: $fe $8d
	ld   de, $1127                                   ; $40ac: $11 $27 $11
	rra                                              ; $40af: $1f
	ld   sp, hl                                      ; $40b0: $f9
	ld   hl, sp-$0f                                  ; $40b1: $f8 $f1
	ld   [de], a                                     ; $40b3: $12
	ld   d, $df                                      ; $40b4: $16 $df
	rst  $38                                         ; $40b6: $ff
	ld   e, [hl]                                     ; $40b7: $5e
	ld   b, c                                        ; $40b8: $41
	dec  d                                           ; $40b9: $15
	ld   [hl], c                                     ; $40ba: $71
	rra                                              ; $40bb: $1f
	pop  af                                          ; $40bc: $f1
	rst  $38                                         ; $40bd: $ff
	pop  af                                          ; $40be: $f1
	add  hl, de                                      ; $40bf: $19
	ld   d, $4f                                      ; $40c0: $16 $4f
	rst  $38                                         ; $40c2: $ff
	and  [hl]                                        ; $40c3: $a6
	pop  af                                          ; $40c4: $f1
	ld   de, $1191                                   ; $40c5: $11 $91 $11
	rst  $38                                         ; $40c8: $ff
	ld   l, a                                        ; $40c9: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ca: $cf
	ld   de, $3851                                   ; $40cb: $11 $51 $38
	rst  $38                                         ; $40ce: $ff
	di                                               ; $40cf: $f3
	add  sp, $11                                     ; $40d0: $e8 $11
	ld   h, a                                        ; $40d2: $67
	ld   de, $1fef                                   ; $40d3: $11 $ef $1f
	rst  $38                                         ; $40d6: $ff
	ld   h, c                                        ; $40d7: $61
	and  c                                           ; $40d8: $a1
	ld   b, c                                        ; $40d9: $41
	rst  $38                                         ; $40da: $ff
	cp   $4f                                         ; $40db: $fe $4f
	ld   hl, $1119                                   ; $40dd: $21 $19 $11
	rra                                              ; $40e0: $1f
	pop  af                                          ; $40e1: $f1
	rst  $38                                         ; $40e2: $ff
	pop  af                                          ; $40e3: $f1
	dec  de                                          ; $40e4: $1b
	inc  de                                          ; $40e5: $13
	rra                                              ; $40e6: $1f
	rst  $38                                         ; $40e7: $ff
	adc  e                                           ; $40e8: $8b
	pop  af                                          ; $40e9: $f1
	inc  d                                           ; $40ea: $14
	sub  c                                           ; $40eb: $91
	ld   de, $1fff                                   ; $40ec: $11 $ff $1f
	rst  $38                                         ; $40ef: $ff
	ld   [de], a                                     ; $40f0: $12
	ld   [hl], c                                     ; $40f1: $71
	dec  d                                           ; $40f2: $15
	rst  $38                                         ; $40f3: $ff
	db   $f4                                         ; $40f4: $f4
	ld   a, [$7712]                                  ; $40f5: $fa $12 $77

jr_0f2_40f8:
	ld   de, $381f                                   ; $40f8: $11 $1f $38
	rst  $38                                         ; $40fb: $ff
	or   c                                           ; $40fc: $b1
	ld   [hl], e                                     ; $40fd: $73
	ld   b, c                                        ; $40fe: $41
	cp   a                                           ; $40ff: $bf
	rst  $38                                         ; $4100: $ff
	ld   c, a                                        ; $4101: $4f
	ld   b, c                                        ; $4102: $41
	ld   a, [hl-]                                    ; $4103: $3a
	ld   b, c                                        ; $4104: $41
	jr   jr_0f2_40f8                                 ; $4105: $18 $f1

	rst  $28                                         ; $4107: $ef
	or   $19                                         ; $4108: $f6 $19
	inc  [hl]                                        ; $410a: $34
	rra                                              ; $410b: $1f
	rst  $38                                         ; $410c: $ff
	or   $f2                                         ; $410d: $f6 $f2
	inc  de                                          ; $410f: $13
	and  c                                           ; $4110: $a1

Jump_0f2_4111:
	ld   de, $1fef                                   ; $4111: $11 $ef $1f
	rst  $38                                         ; $4114: $ff
	ld   sp, $21b3                                   ; $4115: $31 $b3 $21
	rst  $38                                         ; $4118: $ff
	rst  $38                                         ; $4119: $ff
	adc  a                                           ; $411a: $8f
	ld   hl, $014a                   ; $411b: $21 $4a $01
	add  hl, de                                      ; $411e: $19
	pop  af                                          ; $411f: $f1
	rst  $38                                         ; $4120: $ff
	or   $1a                                         ; $4121: $f6 $1a
	ld   sp, $ff1f                                   ; $4123: $31 $1f $ff
	ld   sp, hl                                      ; $4126: $f9
	di                                               ; $4127: $f3
	dec  d                                           ; $4128: $15
	and  c                                           ; $4129: $a1
	ld   de, $291f                                   ; $412a: $11 $1f $29
	rst  $38                                         ; $412d: $ff
	pop  bc                                          ; $412e: $c1
	ld   h, l                                        ; $412f: $65
	ld   de, $ffaf                                   ; $4130: $11 $af $ff
	sbc  a                                           ; $4133: $9f
	ld   d, c                                        ; $4134: $51
	ld   l, e                                        ; $4135: $6b
	ld   b, c                                        ; $4136: $41
	ld   de, $1fff                                   ; $4137: $11 $ff $1f
	rst  $38                                         ; $413a: $ff
	ld   de, $1392                                   ; $413b: $11 $92 $13
	rst  $38                                         ; $413e: $ff
	ld   a, [$26cb]                                  ; $413f: $fa $cb $26
	sub  a                                           ; $4142: $97
	ld   de, $f11f                                   ; $4143: $11 $1f $f1
	rst  $38                                         ; $4146: $ff
	pop  af                                          ; $4147: $f1
	inc  e                                           ; $4148: $1c
	ld   b, e                                        ; $4149: $43
	rra                                              ; $414a: $1f
	rst  $38                                         ; $414b: $ff
	ret  z                                           ; $414c: $c8

	db   $f4                                         ; $414d: $f4
	ld   c, b                                        ; $414e: $48
	or   c                                           ; $414f: $b1
	ld   de, $194f                                   ; $4150: $11 $4f $19
	rst  $38                                         ; $4153: $ff
	or   c                                           ; $4154: $b1
	sbc  b                                           ; $4155: $98
	ld   b, c                                        ; $4156: $41
	adc  a                                           ; $4157: $8f
	rst  $38                                         ; $4158: $ff
	ld   e, a                                        ; $4159: $5f
	and  e                                           ; $415a: $a3
	adc  h                                           ; $415b: $8c
	ld   sp, rAUD1LEN                                   ; $415c: $31 $11 $ff
	rra                                              ; $415f: $1f
	rst  $38                                         ; $4160: $ff
	ld   de, $11e3                                   ; $4161: $11 $e3 $11
	rst  $38                                         ; $4164: $ff
	ei                                               ; $4165: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4166: $cf
	ld   e, c                                        ; $4167: $59
	db   $db                                         ; $4168: $db
	ld   de, $f114                                   ; $4169: $11 $14 $f1
	sbc  a                                           ; $416c: $9f
	ld   sp, hl                                      ; $416d: $f9
	inc  e                                           ; $416e: $1c
	ld   [hl], d                                     ; $416f: $72
	rla                                              ; $4170: $17
	db   $fd                                         ; $4171: $fd
	ld   a, [$7bfb]                                  ; $4172: $fa $fb $7b
	jp   nz, $1f11                                   ; $4175: $c2 $11 $1f

	pop  af                                          ; $4178: $f1
	rst  $38                                         ; $4179: $ff
	pop  af                                          ; $417a: $f1
	rra                                              ; $417b: $1f
	ld   hl, $ff1f                                   ; $417c: $21 $1f $ff
	cp   $f8                                         ; $417f: $fe $f8
	xor  d                                           ; $4181: $aa
	and  c                                           ; $4182: $a1
	ld   de, $f11f                                   ; $4183: $11 $1f $f1
	rst  $38                                         ; $4186: $ff
	pop  af                                          ; $4187: $f1
	inc  e                                           ; $4188: $1c
	ld   de, $ff1f                                   ; $4189: $11 $1f $ff
	rst  $38                                         ; $418c: $ff
	ld   hl, sp-$56                                  ; $418d: $f8 $aa
	ld   [hl], c                                     ; $418f: $71
	ld   de, $a11f                                   ; $4190: $11 $1f $a1
	rst  $38                                         ; $4193: $ff
	pop  af                                          ; $4194: $f1
	ld   c, c                                        ; $4195: $49
	ld   de, $ff1f                                   ; $4196: $11 $1f $ff
	rst  $38                                         ; $4199: $ff
	ret  c                                           ; $419a: $d8

	xor  e                                           ; $419b: $ab
	ld   b, c                                        ; $419c: $41
	ld   de, $451f                                   ; $419d: $11 $1f $45
	rst  $38                                         ; $41a0: $ff
	pop  af                                          ; $41a1: $f1
	ld   h, [hl]                                     ; $41a2: $66
	ld   de, $ef2f                                   ; $41a3: $11 $2f $ef
	rst  $38                                         ; $41a6: $ff
	ret                                              ; $41a7: $c9


	sbc  c                                           ; $41a8: $99
	ld   hl, $1f11                                   ; $41a9: $21 $11 $1f
	add  d                                           ; $41ac: $82
	rst  $38                                         ; $41ad: $ff
	pop  hl                                          ; $41ae: $e1
	ld   b, [hl]                                     ; $41af: $46
	ld   de, $ff2f                                   ; $41b0: $11 $2f $ff
	rst  $38                                         ; $41b3: $ff
	ret  c                                           ; $41b4: $d8

	adc  d                                           ; $41b5: $8a
	ld   sp, $1f11                                   ; $41b6: $31 $11 $1f
	and  c                                           ; $41b9: $a1
	rst  $38                                         ; $41ba: $ff
	pop  af                                          ; $41bb: $f1
	ld   b, [hl]                                     ; $41bc: $46
	ld   de, $ef1f                                   ; $41bd: $11 $1f $ef
	rst  $38                                         ; $41c0: $ff
	or   a                                           ; $41c1: $b7
	xor  c                                           ; $41c2: $a9
	ld   sp, $1f11                                   ; $41c3: $31 $11 $1f
	pop  af                                          ; $41c6: $f1
	rst  $38                                         ; $41c7: $ff
	pop  af                                          ; $41c8: $f1
	ld   a, [de]                                     ; $41c9: $1a
	ld   de, $ff1f                                   ; $41ca: $11 $1f $ff
	rst  $38                                         ; $41cd: $ff
	add  $aa                                         ; $41ce: $c6 $aa
	ld   d, c                                        ; $41d0: $51
	ld   de, $f11f                                   ; $41d1: $11 $1f $f1
	rst  $38                                         ; $41d4: $ff
	pop  af                                          ; $41d5: $f1
	inc  e                                           ; $41d6: $1c
	ld   de, $fe1f                                   ; $41d7: $11 $1f $fe

Jump_0f2_41da:
	rst  $38                                         ; $41da: $ff
	db   $e4                                         ; $41db: $e4
	cp   d                                           ; $41dc: $ba
	ld   h, c                                        ; $41dd: $61
	ld   de, $f117                                   ; $41de: $11 $17 $f1
	rst  $38                                         ; $41e1: $ff
	rst  $30                                         ; $41e2: $f7
	add  hl, de                                      ; $41e3: $19
	ld   de, $fb1c                                   ; $41e4: $11 $1c $fb
	rst  $38                                         ; $41e7: $ff
	push af                                          ; $41e8: $f5
	sbc  d                                           ; $41e9: $9a
	sub  c                                           ; $41ea: $91
	ld   de, $fa11                                   ; $41eb: $11 $11 $fa
	rra                                              ; $41ee: $1f
	db   $fd                                         ; $41ef: $fd
	dec  d                                           ; $41f0: $15
	ld   h, c                                        ; $41f1: $61
	inc  d                                           ; $41f2: $14
	ei                                               ; $41f3: $fb
	rst  $38                                         ; $41f4: $ff
	push af                                          ; $41f5: $f5
	adc  l                                           ; $41f6: $8d
	ld   [hl], h                                     ; $41f7: $74
	ld   de, rAUD1LEN                                   ; $41f8: $11 $11 $ff
	rra                                              ; $41fb: $1f
	rst  $38                                         ; $41fc: $ff
	ld   de, $11b1                                   ; $41fd: $11 $b1 $11
	rst  $38                                         ; $4200: $ff
	rst  $28                                         ; $4201: $ef
	db   $fd                                         ; $4202: $fd
	ld   e, l                                        ; $4203: $5d
	adc  b                                           ; $4204: $88
	ld   de, $5f11                                   ; $4205: $11 $11 $5f
	inc  e                                           ; $4208: $1c
	rst  $38                                         ; $4209: $ff
	ld   [hl], c                                     ; $420a: $71
	sub  h                                           ; $420b: $94
	ld   de, $bfcf                                   ; $420c: $11 $cf $bf
	rst  $38                                         ; $420f: $ff
	ld   c, h                                        ; $4210: $4c
	xor  c                                           ; $4211: $a9
	ld   hl, $1f11                                   ; $4212: $21 $11 $1f
	pop  af                                          ; $4215: $f1
	rst  $38                                         ; $4216: $ff
	pop  hl                                          ; $4217: $e1
	ld   a, [hl-]                                    ; $4218: $3a
	ld   de, $af1f                                   ; $4219: $11 $1f $af
	rst  $38                                         ; $421c: $ff
	add  a                                           ; $421d: $87
	jp   hl                                          ; $421e: $e9


	ld   d, c                                        ; $421f: $51
	ld   de, $f11f                                   ; $4220: $11 $1f $f1
	rst  $38                                         ; $4223: $ff
	di                                               ; $4224: $f3
	inc  e                                           ; $4225: $1c
	ld   de, $fb1f                                   ; $4226: $11 $1f $fb
	rst  $38                                         ; $4229: $ff
	db   $f4                                         ; $422a: $f4
	ld   [$1181], a                                  ; $422b: $ea $81 $11
	ld   de, $1ff8                                   ; $422e: $11 $f8 $1f
	db   $fc                                         ; $4231: $fc
	ld   d, $71                                      ; $4232: $16 $71
	inc  d                                           ; $4234: $14
	ld   a, [$f6ff]                                  ; $4235: $fa $ff $f6
	xor  [hl]                                        ; $4238: $ae
	sub  h                                           ; $4239: $94
	ld   de, rAUD1LEN                                   ; $423a: $11 $11 $ff
	rra                                              ; $423d: $1f
	rst  $38                                         ; $423e: $ff
	ld   de, $11c1                                   ; $423f: $11 $c1 $11
	rst  $38                                         ; $4242: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4243: $cf
	cp   $5e                                         ; $4244: $fe $5e
	xor  b                                           ; $4246: $a8
	ld   de, $1f11                                   ; $4247: $11 $11 $1f
	ld   d, $ff                                      ; $424a: $16 $ff
	and  c                                           ; $424c: $a1
	sub  l                                           ; $424d: $95
	ld   de, $9f9f                                   ; $424e: $11 $9f $9f
	rst  $38                                         ; $4251: $ff
	ld   e, e                                        ; $4252: $5b
	jp   z, $1121                                    ; $4253: $ca $21 $11

	rra                                              ; $4256: $1f
	pop  af                                          ; $4257: $f1
	rst  $38                                         ; $4258: $ff
	pop  af                                          ; $4259: $f1
	inc  e                                           ; $425a: $1c
	ld   de, $ed1f                                   ; $425b: $11 $1f $ed
	rst  $38                                         ; $425e: $ff
	or   [hl]                                        ; $425f: $b6
	jp   z, $1171                                    ; $4260: $ca $71 $11

	inc  d                                           ; $4263: $14
	pop  af                                          ; $4264: $f1
	rst  JumpTable                                         ; $4265: $df
	ld   hl, sp+$1b                                  ; $4266: $f8 $1b
	ld   hl, $f91c                                   ; $4268: $21 $1c $f9
	rst  $38                                         ; $426b: $ff
	db   $f4                                         ; $426c: $f4
	db   $db                                         ; $426d: $db
	sub  c                                           ; $426e: $91
	ld   de, rAUD1LEN                                   ; $426f: $11 $11 $ff
	rra                                              ; $4272: $1f
	cp   $11                                         ; $4273: $fe $11
	and  c                                           ; $4275: $a1
	ld   de, $fffb                                   ; $4276: $11 $fb $ff
	ld   hl, sp-$73                                  ; $4279: $f8 $8d
	and  l                                           ; $427b: $a5
	ld   de, rAUD1LEN                                   ; $427c: $11 $11 $ff
	rra                                              ; $427f: $1f
	rst  $38                                         ; $4280: $ff
	ld   b, c                                        ; $4281: $41
	pop  bc                                          ; $4282: $c1
	ld   de, $bfff                                   ; $4283: $11 $ff $bf
	cp   $4d                                         ; $4286: $fe $4d
	or   a                                           ; $4288: $b7
	ld   de, $1f11                                   ; $4289: $11 $11 $1f
	ld   h, c                                        ; $428c: $61
	rst  $38                                         ; $428d: $ff
	pop  de                                          ; $428e: $d1
	ld   a, b                                        ; $428f: $78
	ld   de, $9f6f                                   ; $4290: $11 $6f $9f
	rst  $38                                         ; $4293: $ff
	ld   e, e                                        ; $4294: $5b
	reti                                             ; $4295: $d9


	ld   hl, $1f11                                   ; $4296: $21 $11 $1f
	pop  af                                          ; $4299: $f1
	rst  $38                                         ; $429a: $ff
	pop  af                                          ; $429b: $f1
	inc  e                                           ; $429c: $1c
	ld   de, $cd1f                                   ; $429d: $11 $1f $cd
	rst  $38                                         ; $42a0: $ff
	and  [hl]                                        ; $42a1: $a6
	ld   [$1161], a                                  ; $42a2: $ea $61 $11
	inc  e                                           ; $42a5: $1c
	pop  af                                          ; $42a6: $f1
	rst  $38                                         ; $42a7: $ff
	push af                                          ; $42a8: $f5
	inc  e                                           ; $42a9: $1c
	ld   de, $f91f                                   ; $42aa: $11 $1f $f9
	rst  $38                                         ; $42ad: $ff
	push af                                          ; $42ae: $f5
	db   $db                                         ; $42af: $db
	ld   [hl], c                                     ; $42b0: $71
	ld   de, $f311                                   ; $42b1: $11 $11 $f3
	cpl                                              ; $42b4: $2f
	ei                                               ; $42b5: $fb
	jr   jr_0f2_4309                                 ; $42b6: $18 $51

	rla                                              ; $42b8: $17
	ld   hl, sp-$01                                  ; $42b9: $f8 $ff
	push af                                          ; $42bb: $f5
	cp   h                                           ; $42bc: $bc
	add  c                                           ; $42bd: $81
	ld   de, rAUD1LEN                                   ; $42be: $11 $11 $ff
	rra                                              ; $42c1: $1f
	db   $fd                                         ; $42c2: $fd
	inc  de                                          ; $42c3: $13
	sub  c                                           ; $42c4: $91
	ld   de, $fff9                                   ; $42c5: $11 $f9 $ff
	ld   hl, sp-$63                                  ; $42c8: $f8 $9d
	sub  h                                           ; $42ca: $94
	ld   de, rAUD1LEN                                   ; $42cb: $11 $11 $ff
	rra                                              ; $42ce: $1f
	db   $fd                                         ; $42cf: $fd
	ld   de, $11c1                                   ; $42d0: $11 $c1 $11
	db   $fc                                         ; $42d3: $fc
	rst  JumpTable                                         ; $42d4: $df
	ld   a, [$957d]                                  ; $42d5: $fa $7d $95
	ld   de, rAUD1LEN                                   ; $42d8: $11 $11 $ff
	rra                                              ; $42db: $1f
	db   $fd                                         ; $42dc: $fd
	ld   de, $11d1                                   ; $42dd: $11 $d1 $11
	cp   $cf                                         ; $42e0: $fe $cf
	db   $fc                                         ; $42e2: $fc
	ld   l, l                                        ; $42e3: $6d
	and  h                                           ; $42e4: $a4
	ld   de, rAUD1LEN                                   ; $42e5: $11 $11 $ff
	rra                                              ; $42e8: $1f
	ei                                               ; $42e9: $fb
	ld   hl, $11d1                                   ; $42ea: $21 $d1 $11
	rst  $38                                         ; $42ed: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42ee: $cf
	db   $fc                                         ; $42ef: $fc
	ld   l, h                                        ; $42f0: $6c
	sub  l                                           ; $42f1: $95
	ld   de, rAUD1LEN                                   ; $42f2: $11 $11 $ff
	rra                                              ; $42f5: $1f
	ei                                               ; $42f6: $fb
	ld   de, $11d1                                   ; $42f7: $11 $d1 $11
	cp   $cf                                         ; $42fa: $fe $cf
	ld   a, [$a26d]                                  ; $42fc: $fa $6d $a2
	ld   de, rAUD1LEN                                   ; $42ff: $11 $11 $ff
	rra                                              ; $4302: $1f
	ld   a, [$b111]                                  ; $4303: $fa $11 $b1
	ld   de, $effe                                   ; $4306: $11 $fe $ef

jr_0f2_4309:
	ld   a, [$a26b]                                  ; $4309: $fa $6b $a2
	ld   de, $fa11                                   ; $430c: $11 $11 $fa
	rra                                              ; $430f: $1f

jr_0f2_4310:
	ld   hl, sp+$15                                  ; $4310: $f8 $15
	sub  c                                           ; $4312: $91
	jr   jr_0f2_4310                                 ; $4313: $18 $fb

	rst  $38                                         ; $4315: $ff
	ld   hl, sp-$75                                  ; $4316: $f8 $8b
	sub  c                                           ; $4318: $91
	ld   de, $f111                                   ; $4319: $11 $11 $f1
	ld   l, a                                        ; $431c: $6f
	rst  $30                                         ; $431d: $f7
	jr   jr_0f2_4371                                 ; $431e: $18 $51

	ld   e, $fa                                      ; $4320: $1e $fa
	rst  $38                                         ; $4322: $ff
	rst  $30                                         ; $4323: $f7
	adc  d                                           ; $4324: $8a
	ld   [hl], c                                     ; $4325: $71
	ld   de, $f11f                                   ; $4326: $11 $1f $f1
	rst  $38                                         ; $4329: $ff
	or   c                                           ; $432a: $b1
	dec  de                                          ; $432b: $1b
	ld   de, $fe1f                                   ; $432c: $11 $1f $fe
	rst  $38                                         ; $432f: $ff
	rst  $10                                         ; $4330: $d7
	sbc  c                                           ; $4331: $99
	ld   h, c                                        ; $4332: $61
	ld   de, $811f                                   ; $4333: $11 $1f $81
	rst  $38                                         ; $4336: $ff
	ld   [hl], c                                     ; $4337: $71
	halt                                             ; $4338: $76
	ld   de, $af9f                                   ; $4339: $11 $9f $af
	rst  $38                                         ; $433c: $ff
	adc  b                                           ; $433d: $88
	or   [hl]                                        ; $433e: $b6
	ld   de, $ef11                                   ; $433f: $11 $11 $ef
	rra                                              ; $4342: $1f
	db   $fc                                         ; $4343: $fc
	ld   sp, $11b1                                   ; $4344: $31 $b1 $11
	rst  $38                                         ; $4347: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4348: $cf
	cp   $5a                                         ; $4349: $fe $5a
	sub  h                                           ; $434b: $94
	ld   de, $f511                                   ; $434c: $11 $11 $f5
	rra                                              ; $434f: $1f
	ld   hl, sp+$17                                  ; $4350: $f8 $17
	ld   h, c                                        ; $4352: $61
	add  hl, de                                      ; $4353: $19
	ld   sp, hl                                      ; $4354: $f9
	rst  $38                                         ; $4355: $ff
	add  sp, $7b                                     ; $4356: $e8 $7b
	ld   h, c                                        ; $4358: $61
	ld   de, $f11f                                   ; $4359: $11 $1f $f1
	rst  $38                                         ; $435c: $ff
	or   c                                           ; $435d: $b1
	inc  e                                           ; $435e: $1c
	ld   de, $ef1f                                   ; $435f: $11 $1f $ef
	rst  $38                                         ; $4362: $ff
	push de                                          ; $4363: $d5
	and  a                                           ; $4364: $a7
	ld   de, $cf11                                   ; $4365: $11 $11 $cf
	rra                                              ; $4368: $1f
	ld   a, [$c151]                                  ; $4369: $fa $51 $c1
	ld   de, $bfff                                   ; $436c: $11 $ff $bf
	cp   $4a                                         ; $436f: $fe $4a

jr_0f2_4371:
	and  e                                           ; $4371: $a3
	ld   de, $f111                                   ; $4372: $11 $11 $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4375: $cf
	and  a                                           ; $4376: $a7
	dec  de                                          ; $4377: $1b
	ld   sp, $fa1f                                   ; $4378: $31 $1f $fa
	rst  $38                                         ; $437b: $ff
	di                                               ; $437c: $f3
	sbc  h                                           ; $437d: $9c
	ld   b, c                                        ; $437e: $41
	ld   de, $181f                                   ; $437f: $11 $1f $18
	ld   a, [$a561]                                  ; $4382: $fa $61 $a5
	ld   de, $9fff                                   ; $4385: $11 $ff $9f
	rst  $38                                         ; $4388: $ff
	ld   [hl], $d5                                   ; $4389: $36 $d5
	ld   de, $f112                                   ; $438b: $11 $12 $f1
	rst  JumpTable                                         ; $438e: $df
	sub  h                                           ; $438f: $94
	inc  e                                           ; $4390: $1c
	ld   sp, $f91f                                   ; $4391: $31 $1f $f9
	rst  $38                                         ; $4394: $ff
	ldh  a, [c]                                      ; $4395: $f2
	ld   a, e                                        ; $4396: $7b
	ld   d, c                                        ; $4397: $51
	ld   de, $1fbf                                   ; $4398: $11 $bf $1f
	rst  $30                                         ; $439b: $f7
	ld   b, c                                        ; $439c: $41
	jp   nz, rAUD1LEN                                   ; $439d: $c2 $11 $ff

	adc  a                                           ; $43a0: $8f
	db   $fd                                         ; $43a1: $fd
	add  hl, hl                                      ; $43a2: $29
	or   h                                           ; $43a3: $b4
	ld   de, $f11f                                   ; $43a4: $11 $1f $f1
	rst  $38                                         ; $43a7: $ff
	ld   d, c                                        ; $43a8: $51
	inc  a                                           ; $43a9: $3c
	ld   de, $ba6f                                   ; $43aa: $11 $6f $ba
	rst  $38                                         ; $43ad: $ff
	sub  c                                           ; $43ae: $91
	cp   c                                           ; $43af: $b9
	ld   de, $fb11                                   ; $43b0: $11 $11 $fb
	rra                                              ; $43b3: $1f
	push af                                          ; $43b4: $f5
	ld   a, [de]                                     ; $43b5: $1a
	add  c                                           ; $43b6: $81
	dec  e                                           ; $43b7: $1d
	or   $cf                                         ; $43b8: $f6 $cf
	ldh  a, [c]                                      ; $43ba: $f2
	dec  de                                          ; $43bb: $1b
	ld   [hl], c                                     ; $43bc: $71
	ld   de, $1f6f                                   ; $43bd: $11 $6f $1f
	rst  $30                                         ; $43c0: $f7
	ld   de, $12f1                                   ; $43c1: $11 $f1 $12
	rst  $38                                         ; $43c4: $ff
	ld   c, a                                        ; $43c5: $4f
	ei                                               ; $43c6: $fb
	dec  d                                           ; $43c7: $15
	or   h                                           ; $43c8: $b4

jr_0f2_43c9:
	ld   de, $f11f                                   ; $43c9: $11 $1f $f1
	rst  $38                                         ; $43cc: $ff
	ld   b, c                                        ; $43cd: $41
	ld   l, [hl]                                     ; $43ce: $6e
	ld   de, $a9df                                   ; $43cf: $11 $df $a9
	rst  $38                                         ; $43d2: $ff
	ld   hl, $1198                                   ; $43d3: $21 $98 $11
	jr   jr_0f2_43c9                                 ; $43d6: $18 $f1

	rst  $38                                         ; $43d8: $ff
	ld   [hl], c                                     ; $43d9: $71
	ld   e, $21                                      ; $43da: $1e $21
	ccf                                              ; $43dc: $3f
	push af                                          ; $43dd: $f5
	rst  $38                                         ; $43de: $ff
	and  c                                           ; $43df: $a1
	add  hl, hl                                      ; $43e0: $29
	ld   sp, $fe11                                   ; $43e1: $31 $11 $fe
	rra                                              ; $43e4: $1f
	di                                               ; $43e5: $f3
	rla                                              ; $43e6: $17
	or   c                                           ; $43e7: $b1
	rra                                              ; $43e8: $1f
	ld   hl, sp-$31                                  ; $43e9: $f8 $cf
	pop  af                                          ; $43eb: $f1
	jr   @+$43                                       ; $43ec: $18 $41

	ld   de, $1fff                                   ; $43ee: $11 $ff $1f
	db   $f4                                         ; $43f1: $f4
	ld   de, $1ae1                                   ; $43f2: $11 $e1 $1a
	rst  $38                                         ; $43f5: $ff
	adc  a                                           ; $43f6: $8f
	di                                               ; $43f7: $f3
	inc  d                                           ; $43f8: $14
	ld   [hl], c                                     ; $43f9: $71
	ld   de, $1fef                                   ; $43fa: $11 $ef $1f
	rst  $30                                         ; $43fd: $f7
	ld   de, $14d1                                   ; $43fe: $11 $d1 $14
	rst  $38                                         ; $4401: $ff
	ld   e, a                                        ; $4402: $5f
	rst  $30                                         ; $4403: $f7
	ld   de, $1151                                   ; $4404: $11 $51 $11
	cpl                                              ; $4407: $2f
	dec  d                                           ; $4408: $15
	ld   a, [$a511]                                  ; $4409: $fa $11 $a5
	ld   [de], a                                     ; $440c: $12
	rst  $38                                         ; $440d: $ff
	ld   l, a                                        ; $440e: $6f
	ei                                               ; $440f: $fb
	ld   de, $1181                                   ; $4410: $11 $81 $11
	ld   e, a                                        ; $4413: $5f
	ld   d, $fc                                      ; $4414: $16 $fc
	ld   de, $11b3                                   ; $4416: $11 $b3 $11
	rst  $38                                         ; $4419: $ff
	ld   c, a                                        ; $441a: $4f
	ld   a, [$5111]                                  ; $441b: $fa $11 $51
	ld   de, $131f                                   ; $441e: $11 $1f $13
	cp   $11                                         ; $4421: $fe $11
	and  e                                           ; $4423: $a3
	ld   de, $4fff                                   ; $4424: $11 $ff $4f
	db   $fc                                         ; $4427: $fc
	ld   de, $1191                                   ; $4428: $11 $91 $11
	rst  $38                                         ; $442b: $ff
	rra                                              ; $442c: $1f
	db   $fc                                         ; $442d: $fc
	ld   de, $14d1                                   ; $442e: $11 $d1 $14
	rst  $38                                         ; $4431: $ff
	ld   l, a                                        ; $4432: $6f
	ld   hl, sp+$11                                  ; $4433: $f8 $11
	ld   b, c                                        ; $4435: $41
	ld   de, $1fff                                   ; $4436: $11 $ff $1f
	ld   sp, hl                                      ; $4439: $f9
	ld   de, $1ac1                                   ; $443a: $11 $c1 $1a
	ei                                               ; $443d: $fb
	sbc  a                                           ; $443e: $9f
	or   $15                                         ; $443f: $f6 $15
	ld   hl, $f411                                   ; $4441: $21 $11 $f4
	rra                                              ; $4444: $1f
	push af                                          ; $4445: $f5
	add  hl, de                                      ; $4446: $19
	ld   [hl], c                                     ; $4447: $71
	rra                                              ; $4448: $1f
	db   $f4                                         ; $4449: $f4
	rst  $38                                         ; $444a: $ff
	pop  bc                                          ; $444b: $c1
	dec  d                                           ; $444c: $15
	ld   de, $f11f                                   ; $444d: $11 $1f $f1
	rst  $38                                         ; $4450: $ff
	or   c                                           ; $4451: $b1
	inc  e                                           ; $4452: $1c
	ld   de, $9bcf                                   ; $4453: $11 $cf $9b
	rst  $38                                         ; $4456: $ff
	ld   b, c                                        ; $4457: $41
	ld   sp, rAUD1LEN                                   ; $4458: $31 $11 $ff
	rra                                              ; $445b: $1f
	rst  $38                                         ; $445c: $ff
	ld   de, $15c1                                   ; $445d: $11 $c1 $15
	rst  $38                                         ; $4460: $ff
	sbc  a                                           ; $4461: $9f
	ld   a, [$1111]                                  ; $4462: $fa $11 $11
	rra                                              ; $4465: $1f
	pop  af                                          ; $4466: $f1
	rst  $38                                         ; $4467: $ff
	push af                                          ; $4468: $f5
	dec  de                                          ; $4469: $1b
	ld   hl, $db3f                                   ; $446a: $21 $3f $db
	rst  $38                                         ; $446d: $ff
	sub  c                                           ; $446e: $91
	ld   de, rAUD1LEN                                   ; $446f: $11 $11 $ff
	rra                                              ; $4472: $1f
	cp   $41                                         ; $4473: $fe $41
	or   c                                           ; $4475: $b1
	jr   @-$05                                       ; $4476: $18 $f9

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4478: $cf
	rst  $30                                         ; $4479: $f7
	ld   de, $1f11                                   ; $447a: $11 $11 $1f
	sub  c                                           ; $447d: $91
	rst  $38                                         ; $447e: $ff
	ldh  a, [c]                                      ; $447f: $f2
	ld   a, [hl-]                                    ; $4480: $3a
	ld   de, $7fff                                   ; $4481: $11 $ff $7f
	db   $fd                                         ; $4484: $fd
	ld   de, $1f11                                   ; $4485: $11 $11 $1f
	pop  af                                          ; $4488: $f1
	rst  $38                                         ; $4489: $ff
	rst  $20                                         ; $448a: $e7
	add  hl, sp                                      ; $448b: $39
	ld   de, $4fcf                                   ; $448c: $11 $cf $4f
	ld   a, [$3142]                                  ; $448f: $fa $42 $31
	rra                                              ; $4492: $1f
	pop  af                                          ; $4493: $f1
	rst  $38                                         ; $4494: $ff
	reti                                             ; $4495: $d9


	dec  l                                           ; $4496: $2d
	ld   b, c                                        ; $4497: $41
	ld   a, a                                        ; $4498: $7f
	ld   a, d                                        ; $4499: $7a
	db   $fd                                         ; $449a: $fd
	ld   [hl], c                                     ; $449b: $71
	ld   de, $f11f                                   ; $449c: $11 $1f $f1
	rst  $38                                         ; $449f: $ff
	cp   e                                           ; $44a0: $bb
	dec  de                                          ; $44a1: $1b
	ld   d, c                                        ; $44a2: $51
	adc  a                                           ; $44a3: $8f
	ld   l, e                                        ; $44a4: $6b
	ld   sp, hl                                      ; $44a5: $f9
	ld   h, c                                        ; $44a6: $61
	ld   hl, $f11a                                   ; $44a7: $21 $1a $f1
	rst  $38                                         ; $44aa: $ff
	cp   d                                           ; $44ab: $ba
	ld   a, [de]                                     ; $44ac: $1a
	add  c                                           ; $44ad: $81
	ld   l, a                                        ; $44ae: $6f
	xor  e                                           ; $44af: $ab
	ld   a, [$1151]                                  ; $44b0: $fa $51 $11
	rra                                              ; $44b3: $1f
	pop  bc                                          ; $44b4: $c1
	rst  $38                                         ; $44b5: $ff
	sub  a                                           ; $44b6: $97
	ld   l, d                                        ; $44b7: $6a
	ld   de, $2fff                                   ; $44b8: $11 $ff $2f
	rst  $30                                         ; $44bb: $f7
	ld   de, $1f41                                   ; $44bc: $11 $41 $1f
	pop  af                                          ; $44bf: $f1
	rst  $38                                         ; $44c0: $ff
	push bc                                          ; $44c1: $c5
	dec  e                                           ; $44c2: $1d
	ld   hl, $6fff                                   ; $44c3: $21 $ff $6f
	db   $eb                                         ; $44c6: $eb
	ld   de, rAUD1LEN                                   ; $44c7: $11 $11 $ff
	rra                                              ; $44ca: $1f
	ld   sp, hl                                      ; $44cb: $f9
	sub  [hl]                                        ; $44cc: $96
	db   $d3                                         ; $44cd: $d3
	inc  e                                           ; $44ce: $1c
	db   $f4                                         ; $44cf: $f4
	cp   a                                           ; $44d0: $bf
	pop  bc                                          ; $44d1: $c1
	inc  d                                           ; $44d2: $14
	ld   de, $1fff                                   ; $44d3: $11 $ff $1f
	ei                                               ; $44d6: $fb
	sub  c                                           ; $44d7: $91
	or   l                                           ; $44d8: $b5
	ld   l, $f8                                      ; $44d9: $2e $f8
	db   $fc                                         ; $44db: $fc
	ld   h, c                                        ; $44dc: $61
	ld   de, $f11f                                   ; $44dd: $11 $1f $f1
	rst  $38                                         ; $44e0: $ff
	ld   [hl], l                                     ; $44e1: $75
	ld   e, l                                        ; $44e2: $5d
	ld   sp, $5eff                                   ; $44e3: $31 $ff $5e
	ld   sp, hl                                      ; $44e6: $f9
	ld   de, $2f11                                   ; $44e7: $11 $11 $2f
	ld   e, $fb                                      ; $44ea: $1e $fb
	sub  h                                           ; $44ec: $94
	ld   h, l                                        ; $44ed: $65
	add  hl, de                                      ; $44ee: $19
	ld   sp, hl                                      ; $44ef: $f9
	cp   a                                           ; $44f0: $bf
	add  h                                           ; $44f1: $84
	ld   de, $f111                                   ; $44f2: $11 $11 $f1
	ld   l, a                                        ; $44f5: $6f
	ld   sp, hl                                      ; $44f6: $f9
	ld   l, b                                        ; $44f7: $68
	add  c                                           ; $44f8: $81
	ld   l, a                                        ; $44f9: $6f
	ret  z                                           ; $44fa: $c8

	ld   a, [$1111]                                  ; $44fb: $fa $11 $11
	adc  a                                           ; $44fe: $8f
	rra                                              ; $44ff: $1f
	ei                                               ; $4500: $fb
	ld   h, h                                        ; $4501: $64
	add  $1a                                         ; $4502: $c6 $1a
	ld   hl, sp-$51                                  ; $4504: $f8 $af
	pop  bc                                          ; $4506: $c1
	ld   de, $f711                                   ; $4507: $11 $11 $f7
	sbc  a                                           ; $450a: $9f
	reti                                             ; $450b: $d9


	ld   d, h                                        ; $450c: $54
	ld   [hl], c                                     ; $450d: $71
	xor  a                                           ; $450e: $af
	db   $dd                                         ; $450f: $dd
	ld   a, [$1111]                                  ; $4510: $fa $11 $11
	rst  $28                                         ; $4513: $ef
	rra                                              ; $4514: $1f
	ld   a, [$b265]                                  ; $4515: $fa $65 $b2
	rra                                              ; $4518: $1f
	rst  $30                                         ; $4519: $f7
	rst  $28                                         ; $451a: $ef
	add  c                                           ; $451b: $81
	ld   de, $e11f                                   ; $451c: $11 $1f $e1
	rst  $38                                         ; $451f: $ff
	halt                                             ; $4520: $76
	ld   a, e                                        ; $4521: $7b
	ld   de, $5ffe                                   ; $4522: $11 $fe $5f
	pop  af                                          ; $4525: $f1
	ld   de, $f911                                   ; $4526: $11 $11 $f9
	ld   l, a                                        ; $4529: $6f
	ei                                               ; $452a: $fb
	ld   [hl], h                                     ; $452b: $74
	sub  c                                           ; $452c: $91
	ld   a, a                                        ; $452d: $7f
	db   $dd                                         ; $452e: $dd
	ei                                               ; $452f: $fb
	ld   de, rAUD1LEN                                   ; $4530: $11 $11 $ff
	rra                                              ; $4533: $1f
	ld   sp, hl                                      ; $4534: $f9
	ld   d, l                                        ; $4535: $55
	pop  af                                          ; $4536: $f1
	rra                                              ; $4537: $1f
	db   $f4                                         ; $4538: $f4
	rst  $38                                         ; $4539: $ff
	ld   d, c                                        ; $453a: $51
	ld   de, $481f                                   ; $453b: $11 $1f $48
	cp   $86                                         ; $453e: $fe $86
	add  a                                           ; $4540: $87
	add  hl, de                                      ; $4541: $19
	ei                                               ; $4542: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4543: $cf
	and  c                                           ; $4544: $a1
	ld   de, $f11f                                   ; $4545: $11 $1f $f1
	rst  $38                                         ; $4548: $ff
	add  a                                           ; $4549: $87
	dec  a                                           ; $454a: $3d
	ld   hl, $7fff                                   ; $454b: $21 $ff $7f
	db   $e3                                         ; $454e: $e3
	ld   de, $f11f                                   ; $454f: $11 $1f $f1
	rst  $38                                         ; $4552: $ff
	sub  [hl]                                        ; $4553: $96
	ccf                                              ; $4554: $3f
	ld   hl, $6dff                                   ; $4555: $21 $ff $6d
	ld   hl, sp+$11                                  ; $4558: $f8 $11
	ld   de, $1ffb                                   ; $455a: $11 $fb $1f
	rst  $30                                         ; $455d: $f7
	add  l                                           ; $455e: $85
	add  c                                           ; $455f: $81
	ld   e, a                                        ; $4560: $5f
	jp   c, $11fd                                    ; $4561: $da $fd $11

	ld   de, $1fff                                   ; $4564: $11 $ff $1f
	ld   hl, sp+$54                                  ; $4567: $f8 $54
	pop  af                                          ; $4569: $f1
	rra                                              ; $456a: $1f
	rst  $30                                         ; $456b: $f7
	cp   $21                                         ; $456c: $fe $21
	ld   de, $1fff                                   ; $456e: $11 $ff $1f
	or   $65                                         ; $4571: $f6 $65
	pop  af                                          ; $4573: $f1
	rra                                              ; $4574: $1f
	push af                                          ; $4575: $f5
	rst  $38                                         ; $4576: $ff
	ld   hl, $af11                                   ; $4577: $21 $11 $af
	rra                                              ; $457a: $1f
	ld   hl, sp-$6d                                  ; $457b: $f8 $93
	push de                                          ; $457d: $d5
	rra                                              ; $457e: $1f
	rst  $30                                         ; $457f: $f7
	rst  JumpTable                                         ; $4580: $df
	ld   d, c                                        ; $4581: $51
	ld   de, $1fff                                   ; $4582: $11 $ff $1f
	or   $62                                         ; $4585: $f6 $62
	di                                               ; $4587: $f3
	rra                                              ; $4588: $1f
	di                                               ; $4589: $f3
	rst  $38                                         ; $458a: $ff
	ld   hl, $cf11                                   ; $458b: $21 $11 $cf
	rra                                              ; $458e: $1f
	or   $84                                         ; $458f: $f6 $84
	rst  $10                                         ; $4591: $d7
	rra                                              ; $4592: $1f
	or   $df                                         ; $4593: $f6 $df
	ld   sp, rAUD1LEN                                   ; $4595: $31 $11 $ff
	rra                                              ; $4598: $1f
	or   $73                                         ; $4599: $f6 $73
	db   $f4                                         ; $459b: $f4
	rra                                              ; $459c: $1f
	db   $f4                                         ; $459d: $f4
	rst  $38                                         ; $459e: $ff
	ld   de, rAUD1LEN                                   ; $459f: $11 $11 $ff
	rra                                              ; $45a2: $1f
	db   $f4                                         ; $45a3: $f4
	sub  [hl]                                        ; $45a4: $96
	pop  af                                          ; $45a5: $f1
	rra                                              ; $45a6: $1f
	push af                                          ; $45a7: $f5
	cp   $11                                         ; $45a8: $fe $11
	ld   de, $1ffb                                   ; $45aa: $11 $fb $1f
	or   $87                                         ; $45ad: $f6 $87
	pop  af                                          ; $45af: $f1
	rra                                              ; $45b0: $1f
	jp   hl                                          ; $45b1: $e9


	ei                                               ; $45b2: $fb
	ld   de, $f11e                                   ; $45b3: $11 $1e $f1
	rst  $38                                         ; $45b6: $ff
	sbc  b                                           ; $45b7: $98
	ld   c, a                                        ; $45b8: $4f
	add  c                                           ; $45b9: $81
	rst  JumpTable                                         ; $45ba: $df
	adc  h                                           ; $45bb: $8c
	push af                                          ; $45bc: $f5
	ld   de, $f11f                                   ; $45bd: $11 $1f $f1
	rst  $38                                         ; $45c0: $ff
	ld   l, d                                        ; $45c1: $6a
	ld   a, a                                        ; $45c2: $7f
	ld   b, c                                        ; $45c3: $41
	rst  $28                                         ; $45c4: $ef
	sbc  d                                           ; $45c5: $9a
	jp   nz, $2f11                                   ; $45c6: $c2 $11 $2f

	rla                                              ; $45c9: $17
	cp   $73                                         ; $45ca: $fe $73
	rst  $28                                         ; $45cc: $ef
	rla                                              ; $45cd: $17
	db   $fc                                         ; $45ce: $fc
	xor  h                                           ; $45cf: $ac
	ld   [hl], c                                     ; $45d0: $71
	ld   de, $1ffd                                   ; $45d1: $11 $fd $1f
	push af                                          ; $45d4: $f5
	ld   d, [hl]                                     ; $45d5: $56
	pop  af                                          ; $45d6: $f1
	rra                                              ; $45d7: $1f
	ld   sp, hl                                      ; $45d8: $f9
	rst  ToBoot                                         ; $45d9: $c7
	ld   de, $f117                                   ; $45da: $11 $17 $f1
	sbc  a                                           ; $45dd: $9f
	reti                                             ; $45de: $d9


	inc  l                                           ; $45df: $2c
	pop  af                                          ; $45e0: $f1
	ld   e, a                                        ; $45e1: $5f
	ld   [$1173], a                                  ; $45e2: $ea $73 $11
	rra                                              ; $45e5: $1f
	ld   de, $a1ff                                   ; $45e6: $11 $ff $a1
	ld   a, a                                        ; $45e9: $7f
	ld   de, $b5ff                                   ; $45ea: $11 $ff $b5
	ld   hl, rAUD1LEN                                   ; $45ed: $21 $11 $ff
	rra                                              ; $45f0: $1f
	db   $fc                                         ; $45f1: $fc
	ld   de, $1ff9                                   ; $45f2: $11 $f9 $1f
	ei                                               ; $45f5: $fb
	ld   sp, $1f11                                   ; $45f6: $31 $11 $1f
	pop  af                                          ; $45f9: $f1
	rst  $38                                         ; $45fa: $ff
	jp   nc, $c11f                                   ; $45fb: $d2 $1f $c1

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45fe: $cf
	ldh  [c], a                                      ; $45ff: $e2
	ld   de, rAUD1LEN                                   ; $4600: $11 $11 $ff
	rra                                              ; $4603: $1f
	rst  $38                                         ; $4604: $ff
	ld   de, $1dfa                                   ; $4605: $11 $fa $1d
	rst  $38                                         ; $4608: $ff
	ld   sp, $1f11                                   ; $4609: $31 $11 $1f
	or   c                                           ; $460c: $b1
	rst  $38                                         ; $460d: $ff
	ldh  [c], a                                      ; $460e: $e2
	rra                                              ; $460f: $1f
	sub  c                                           ; $4610: $91
	rst  $38                                         ; $4611: $ff
	and  c                                           ; $4612: $a1
	ld   de, $f114                                   ; $4613: $11 $14 $f1
	rst  $38                                         ; $4616: $ff
	db   $fc                                         ; $4617: $fc
	jr   @-$0d                                       ; $4618: $18 $f1

	ccf                                              ; $461a: $3f
	rst  $30                                         ; $461b: $f7
	ld   hl, rAUD1LEN                                   ; $461c: $21 $11 $ff
	rra                                              ; $461f: $1f
	cp   $91                                         ; $4620: $fe $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4622: $cf
	ld   d, $ff                                      ; $4623: $16 $ff
	ld   d, c                                        ; $4625: $51
	ld   de, $151f                                   ; $4626: $11 $1f $15
	rst  $38                                         ; $4629: $ff
	and  c                                           ; $462a: $a1
	ld   e, a                                        ; $462b: $5f
	ld   de, $81ff                                   ; $462c: $11 $ff $81
	ld   de, $f11f                                   ; $462f: $11 $1f $f1
	rst  $38                                         ; $4632: $ff
	jp   hl                                          ; $4633: $e9


	inc  e                                           ; $4634: $1c
	pop  af                                          ; $4635: $f1
	ld   c, a                                        ; $4636: $4f
	ldh  a, [c]                                      ; $4637: $f2
	ld   de, $f711                                   ; $4638: $11 $11 $f7
	ld   c, a                                        ; $463b: $4f
	ld   a, [$f713]                                  ; $463c: $fa $13 $f7
	rra                                              ; $463f: $1f
	ld   sp, hl                                      ; $4640: $f9
	ld   de, rAUD1LEN                                   ; $4641: $11 $11 $ff
	rra                                              ; $4644: $1f
	ld   a, [$fa31]                                  ; $4645: $fa $31 $fa
	inc  e                                           ; $4648: $1c
	rst  $38                                         ; $4649: $ff
	ld   de, $5f11                                   ; $464a: $11 $11 $5f
	rra                                              ; $464d: $1f
	db   $fc                                         ; $464e: $fc
	pop  bc                                          ; $464f: $c1
	adc  a                                           ; $4650: $8f
	dec  d                                           ; $4651: $15
	rst  $38                                         ; $4652: $ff
	ld   h, c                                        ; $4653: $61
	ld   de, $271f                                   ; $4654: $11 $1f $27
	rst  $38                                         ; $4657: $ff
	pop  de                                          ; $4658: $d1
	ld   e, a                                        ; $4659: $5f
	ld   de, $41ff                                   ; $465a: $11 $ff $41
	ld   de, $711f                                   ; $465d: $11 $1f $71
	rst  $38                                         ; $4660: $ff
	pop  af                                          ; $4661: $f1
	rra                                              ; $4662: $1f
	ld   de, $c1ff                                   ; $4663: $11 $ff $c1
	ld   de, $f11f                                   ; $4666: $11 $1f $f1
	rst  $38                                         ; $4669: $ff
	db   $eb                                         ; $466a: $eb
	rra                                              ; $466b: $1f
	pop  hl                                          ; $466c: $e1
	xor  a                                           ; $466d: $af
	pop  af                                          ; $466e: $f1
	ld   de, $f11f                                   ; $466f: $11 $1f $f1
	rst  $38                                         ; $4672: $ff
	ld   [$c11f], a                                  ; $4673: $ea $1f $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4676: $cf
	pop  hl                                          ; $4677: $e1
	ld   de, $f11b                                   ; $4678: $11 $1b $f1
	rst  $38                                         ; $467b: $ff
	db   $fc                                         ; $467c: $fc
	rra                                              ; $467d: $1f
	pop  af                                          ; $467e: $f1
	sbc  a                                           ; $467f: $9f
	pop  af                                          ; $4680: $f1
	ld   de, $f11f                                   ; $4681: $11 $1f $f1
	rst  $38                                         ; $4684: $ff
	jp   c, $b11f                                    ; $4685: $da $1f $b1

	rst  $38                                         ; $4688: $ff
	and  c                                           ; $4689: $a1
	ld   de, $f11f                                   ; $468a: $11 $1f $f1
	rst  $38                                         ; $468d: $ff
	db   $f4                                         ; $468e: $f4
	rra                                              ; $468f: $1f
	ld   h, c                                        ; $4690: $61
	rst  $28                                         ; $4691: $ef
	pop  de                                          ; $4692: $d1
	ld   de, $d11f                                   ; $4693: $11 $1f $d1
	rst  $38                                         ; $4696: $ff
	ldh  a, [c]                                      ; $4697: $f2
	rra                                              ; $4698: $1f
	ld   b, c                                        ; $4699: $41
	rst  $38                                         ; $469a: $ff
	sub  c                                           ; $469b: $91
	ld   de, $731f                                   ; $469c: $11 $1f $73
	rst  $38                                         ; $469f: $ff
	or   c                                           ; $46a0: $b1
	ld   e, a                                        ; $46a1: $5f
	inc  d                                           ; $46a2: $14
	rst  $38                                         ; $46a3: $ff
	ld   hl, $1f11                                   ; $46a4: $21 $11 $1f
	rra                                              ; $46a7: $1f
	rst  $38                                         ; $46a8: $ff
	pop  de                                          ; $46a9: $d1
	rst  JumpTable                                         ; $46aa: $df
	inc  d                                           ; $46ab: $14
	rst  $38                                         ; $46ac: $ff
	ld   de, $bf11                                   ; $46ad: $11 $11 $bf
	rra                                              ; $46b0: $1f
	db   $fc                                         ; $46b1: $fc
	and  c                                           ; $46b2: $a1
	ld   a, [$fe1d]                                  ; $46b3: $fa $1d $fe
	ld   de, rAUD1LEN                                   ; $46b6: $11 $11 $ff
	rra                                              ; $46b9: $1f
	db   $fc                                         ; $46ba: $fc
	ld   sp, $1ff3                                   ; $46bb: $31 $f3 $1f
	push af                                          ; $46be: $f5
	ld   de, $f111                                   ; $46bf: $11 $11 $f1
	rst  $38                                         ; $46c2: $ff
	call $f11d                                       ; $46c3: $cd $1d $f1
	adc  a                                           ; $46c6: $8f
	pop  af                                          ; $46c7: $f1
	ld   de, $f11b                                   ; $46c8: $11 $1b $f1
	rst  $38                                         ; $46cb: $ff
	ld   sp, hl                                      ; $46cc: $f9
	rra                                              ; $46cd: $1f
	pop  bc                                          ; $46ce: $c1
	rst  JumpTable                                         ; $46cf: $df
	pop  bc                                          ; $46d0: $c1
	ld   de, $441f                                   ; $46d1: $11 $1f $44
	rst  $38                                         ; $46d4: $ff
	pop  de                                          ; $46d5: $d1
	sbc  a                                           ; $46d6: $9f
	inc  de                                          ; $46d7: $13
	rst  $38                                         ; $46d8: $ff
	ld   de, $af11                                   ; $46d9: $11 $11 $af
	rra                                              ; $46dc: $1f
	ei                                               ; $46dd: $fb
	and  c                                           ; $46de: $a1
	ld   hl, sp+$1f                                  ; $46df: $f8 $1f
	ld   a, [$1111]                                  ; $46e1: $fa $11 $11
	rst  $38                                         ; $46e4: $ff
	cpl                                              ; $46e5: $2f
	rst  $38                                         ; $46e6: $ff
	ld   [hl+], a                                    ; $46e7: $22
	push af                                          ; $46e8: $f5
	rra                                              ; $46e9: $1f
	push af                                          ; $46ea: $f5
	ld   de, $f117                                   ; $46eb: $11 $17 $f1
	rst  $38                                         ; $46ee: $ff
	ld   sp, hl                                      ; $46ef: $f9
	rra                                              ; $46f0: $1f
	pop  hl                                          ; $46f1: $e1
	xor  a                                           ; $46f2: $af
	pop  af                                          ; $46f3: $f1
	ld   de, $c31f                                   ; $46f4: $11 $1f $c3
	rst  $38                                         ; $46f7: $ff
	push bc                                          ; $46f8: $c5
	ld   c, a                                        ; $46f9: $4f
	ld   de, $11ff                                   ; $46fa: $11 $ff $11
	ld   de, $1f1f                                   ; $46fd: $11 $1f $1f
	rst  $38                                         ; $4700: $ff
	pop  bc                                          ; $4701: $c1
	rst  JumpTable                                         ; $4702: $df
	add  hl, de                                      ; $4703: $19
	rst  $38                                         ; $4704: $ff
	ld   de, $f911                                   ; $4705: $11 $11 $f9
	rra                                              ; $4708: $1f
	db   $fd                                         ; $4709: $fd
	dec  d                                           ; $470a: $15
	pop  af                                          ; $470b: $f1
	rra                                              ; $470c: $1f
	pop  af                                          ; $470d: $f1
	ld   de, $f114                                   ; $470e: $11 $14 $f1
	rst  $38                                         ; $4711: $ff
	db   $db                                         ; $4712: $db
	rra                                              ; $4713: $1f
	or   c                                           ; $4714: $b1
	rst  $38                                         ; $4715: $ff
	add  c                                           ; $4716: $81
	ld   de, $951f                                   ; $4717: $11 $1f $95
	rst  $38                                         ; $471a: $ff
	pop  hl                                          ; $471b: $e1
	ld   e, a                                        ; $471c: $5f
	ld   de, $11ff                                   ; $471d: $11 $ff $11
	ld   de, $1fff                                   ; $4720: $11 $ff $1f
	db   $fd                                         ; $4723: $fd
	ld   b, c                                        ; $4724: $41
	push af                                          ; $4725: $f5
	rra                                              ; $4726: $1f
	rst  $30                                         ; $4727: $f7
	ld   de, $f112                                   ; $4728: $11 $12 $f1
	rst  $38                                         ; $472b: $ff
	ld   sp, hl                                      ; $472c: $f9
	rra                                              ; $472d: $1f
	pop  hl                                          ; $472e: $e1
	xor  a                                           ; $472f: $af
	pop  bc                                          ; $4730: $c1
	ld   de, $f51f                                   ; $4731: $11 $1f $f5
	rst  $38                                         ; $4734: $ff
	call nz, $314f                                   ; $4735: $c4 $4f $31
	rst  $38                                         ; $4738: $ff
	ld   de, rAUD1LEN                                   ; $4739: $11 $11 $ff
	rra                                              ; $473c: $1f
	rst  $38                                         ; $473d: $ff
	ld   sp, $1ff7                                   ; $473e: $31 $f7 $1f
	ld   hl, sp+$11                                  ; $4741: $f8 $11
	dec  d                                           ; $4743: $15
	pop  af                                          ; $4744: $f1
	rst  $38                                         ; $4745: $ff
	ld   hl, sp+$1f                                  ; $4746: $f8 $1f
	pop  hl                                          ; $4748: $e1
	cp   a                                           ; $4749: $bf
	or   c                                           ; $474a: $b1
	ld   de, $f61f                                   ; $474b: $11 $1f $f6
	rst  $38                                         ; $474e: $ff
	db   $e3                                         ; $474f: $e3
	ccf                                              ; $4750: $3f
	ld   b, c                                        ; $4751: $41
	rst  $38                                         ; $4752: $ff
	ld   de, rAUD1LEN                                   ; $4753: $11 $11 $ff
	rra                                              ; $4756: $1f
	cp   $11                                         ; $4757: $fe $11
	push af                                          ; $4759: $f5
	rra                                              ; $475a: $1f
	or   $11                                         ; $475b: $f6 $11
	ld   a, [de]                                     ; $475d: $1a
	pop  af                                          ; $475e: $f1
	rst  $38                                         ; $475f: $ff
	sub  $1f                                         ; $4760: $d6 $1f
	or   c                                           ; $4762: $b1
	rst  $38                                         ; $4763: $ff
	ld   d, c                                        ; $4764: $51
	ld   de, $6e1f                                   ; $4765: $11 $1f $6e
	rst  $38                                         ; $4768: $ff
	pop  de                                          ; $4769: $d1
	xor  a                                           ; $476a: $af
	inc  d                                           ; $476b: $14
	rst  $38                                         ; $476c: $ff
	ld   de, $f611                                   ; $476d: $11 $11 $f6
	cpl                                              ; $4770: $2f
	db   $fc                                         ; $4771: $fc
	rla                                              ; $4772: $17
	pop  af                                          ; $4773: $f1
	rra                                              ; $4774: $1f
	pop  af                                          ; $4775: $f1
	ld   de, $f11f                                   ; $4776: $11 $1f $f1
	rst  $38                                         ; $4779: $ff
	or   e                                           ; $477a: $b3
	ccf                                              ; $477b: $3f
	ld   b, c                                        ; $477c: $41
	rst  $38                                         ; $477d: $ff
	ld   de, $df11                                   ; $477e: $11 $11 $df
	rra                                              ; $4781: $1f
	cp   $91                                         ; $4782: $fe $91
	cp   $1e                                         ; $4784: $fe $1e
	ld   hl, sp+$11                                  ; $4786: $f8 $11
	rra                                              ; $4788: $1f
	pop  af                                          ; $4789: $f1
	rst  $38                                         ; $478a: $ff
	di                                               ; $478b: $f3
	rra                                              ; $478c: $1f
	or   c                                           ; $478d: $b1
	rst  $38                                         ; $478e: $ff
	sub  c                                           ; $478f: $91
	ld   de, $1fff                                   ; $4790: $11 $ff $1f
	cp   $51                                         ; $4793: $fe $51
	db   $fc                                         ; $4795: $fc
	ld   e, $f8                                      ; $4796: $1e $f8
	ld   de, $f112                                   ; $4798: $11 $12 $f1
	rst  $38                                         ; $479b: $ff
	db   $fc                                         ; $479c: $fc
	ld   e, $f1                                      ; $479d: $1e $f1
	adc  a                                           ; $479f: $8f
	pop  de                                          ; $47a0: $d1
	ld   de, $1fbf                                   ; $47a1: $11 $bf $1f
	rst  $38                                         ; $47a4: $ff
	sub  c                                           ; $47a5: $91
	rst  $38                                         ; $47a6: $ff
	add  hl, de                                      ; $47a7: $19
	rst  $38                                         ; $47a8: $ff
	ld   de, $f11c                                   ; $47a9: $11 $1c $f1
	rst  $38                                         ; $47ac: $ff
	or   $1f                                         ; $47ad: $f6 $1f
	pop  af                                          ; $47af: $f1
	adc  a                                           ; $47b0: $8f
	pop  hl                                          ; $47b1: $e1
	ld   de, $4b1f                                   ; $47b2: $11 $1f $4b
	rst  $38                                         ; $47b5: $ff
	or   c                                           ; $47b6: $b1
	xor  a                                           ; $47b7: $af
	dec  d                                           ; $47b8: $15
	rst  $38                                         ; $47b9: $ff
	ld   de, $f111                                   ; $47ba: $11 $11 $f1
	sbc  a                                           ; $47bd: $9f
	db   $fd                                         ; $47be: $fd
	ld   a, [de]                                     ; $47bf: $1a
	pop  af                                          ; $47c0: $f1
	rra                                              ; $47c1: $1f
	pop  af                                          ; $47c2: $f1

jr_0f2_47c3:
	ld   de, $141f                                   ; $47c3: $11 $1f $14
	rst  $38                                         ; $47c6: $ff
	or   c                                           ; $47c7: $b1
	cp   a                                           ; $47c8: $bf
	ld   [de], a                                     ; $47c9: $12
	rst  $38                                         ; $47ca: $ff
	ld   de, $f411                                   ; $47cb: $11 $11 $f4
	ld   a, a                                        ; $47ce: $7f
	ei                                               ; $47cf: $fb
	jr   jr_0f2_47c3                                 ; $47d0: $18 $f1

	ccf                                              ; $47d2: $3f
	pop  af                                          ; $47d3: $f1
	ld   de, $611f                                   ; $47d4: $11 $1f $61
	rst  $38                                         ; $47d7: $ff
	pop  hl                                          ; $47d8: $e1
	ld   e, a                                        ; $47d9: $5f
	ld   de, $11ff                                   ; $47da: $11 $ff $11
	ld   de, $1ff5                                   ; $47dd: $11 $f5 $1f
	db   $fd                                         ; $47e0: $fd
	ld   d, $f1                                      ; $47e1: $16 $f1
	rra                                              ; $47e3: $1f
	pop  af                                          ; $47e4: $f1
	ld   de, $541f                                   ; $47e5: $11 $1f $54
	rst  $38                                         ; $47e8: $ff
	sub  c                                           ; $47e9: $91
	sbc  a                                           ; $47ea: $9f
	ld   de, $11ff                                   ; $47eb: $11 $ff $11
	ld   de, $1ffe                                   ; $47ee: $11 $fe $1f
	cp   $33                                         ; $47f1: $fe $33
	ldh  a, [c]                                      ; $47f3: $f2
	rra                                              ; $47f4: $1f
	pop  af                                          ; $47f5: $f1
	ld   de, $711f                                   ; $47f6: $11 $1f $71
	rst  $38                                         ; $47f9: $ff
	pop  hl                                          ; $47fa: $e1
	ld   e, a                                        ; $47fb: $5f
	ld   de, $11ff                                   ; $47fc: $11 $ff $11
	ld   de, $1ff6                                   ; $47ff: $11 $f6 $1f
	ei                                               ; $4802: $fb
	rla                                              ; $4803: $17
	pop  af                                          ; $4804: $f1
	rra                                              ; $4805: $1f
	pop  af                                          ; $4806: $f1
	ld   de, $911f                                   ; $4807: $11 $1f $91
	rst  $38                                         ; $480a: $ff
	or   c                                           ; $480b: $b1
	ld   a, a                                        ; $480c: $7f
	ld   de, $11ff                                   ; $480d: $11 $ff $11
	ld   de, $1ff1                                   ; $4810: $11 $f1 $1f
	db   $fd                                         ; $4813: $fd
	ld   a, [de]                                     ; $4814: $1a
	pop  af                                          ; $4815: $f1
	rra                                              ; $4816: $1f
	pop  af                                          ; $4817: $f1
	ld   de, $131f                                   ; $4818: $11 $1f $13
	rst  $38                                         ; $481b: $ff
	sub  c                                           ; $481c: $91
	cp   a                                           ; $481d: $bf
	inc  de                                          ; $481e: $13
	rst  $38                                         ; $481f: $ff
	ld   de, $f411                                   ; $4820: $11 $11 $f4
	ld   e, a                                        ; $4823: $5f
	ei                                               ; $4824: $fb
	ld   a, [de]                                     ; $4825: $1a
	pop  af                                          ; $4826: $f1
	ld   c, a                                        ; $4827: $4f
	pop  af                                          ; $4828: $f1
	ld   de, $1a3f                                   ; $4829: $11 $3f $1a
	rst  $38                                         ; $482c: $ff
	sub  c                                           ; $482d: $91
	rst  $38                                         ; $482e: $ff
	ld   d, $ff                                      ; $482f: $16 $ff
	ld   de, $f11a                                   ; $4831: $11 $1a $f1
	rst  $38                                         ; $4834: $ff
	or   $1f                                         ; $4835: $f6 $1f
	pop  af                                          ; $4837: $f1
	rst  JumpTable                                         ; $4838: $df
	and  c                                           ; $4839: $a1
	ld   de, $1fbf                                   ; $483a: $11 $bf $1f
	cp   $71                                         ; $483d: $fe $71
	db   $fd                                         ; $483f: $fd
	dec  e                                           ; $4840: $1d
	ld   hl, sp+$11                                  ; $4841: $f8 $11
	rra                                              ; $4843: $1f
	pop  af                                          ; $4844: $f1
	rst  $38                                         ; $4845: $ff
	or   $1f                                         ; $4846: $f6 $1f
	pop  de                                          ; $4848: $d1
	rst  JumpTable                                         ; $4849: $df
	sub  c                                           ; $484a: $91
	ld   de, $1fff                                   ; $484b: $11 $ff $1f
	rst  $38                                         ; $484e: $ff
	ld   hl, $1ff9                                   ; $484f: $21 $f9 $1f
	push af                                          ; $4852: $f5
	ld   de, $f11f                                   ; $4853: $11 $1f $f1
	rst  $38                                         ; $4856: $ff
	pop  bc                                          ; $4857: $c1
	ccf                                              ; $4858: $3f
	ld   b, c                                        ; $4859: $41
	rst  $38                                         ; $485a: $ff
	ld   sp, rAUD1LEN                                   ; $485b: $31 $11 $ff
	rra                                              ; $485e: $1f
	rst  $38                                         ; $485f: $ff
	ld   sp, $1ff6                                   ; $4860: $31 $f6 $1f
	pop  af                                          ; $4863: $f1
	ld   de, $811f                                   ; $4864: $11 $1f $81
	rst  $38                                         ; $4867: $ff
	pop  hl                                          ; $4868: $e1
	ld   c, a                                        ; $4869: $4f
	ld   de, $11ff                                   ; $486a: $11 $ff $11
	ld   de, $1ff3                                   ; $486d: $11 $f3 $1f
	ld   a, [$f11b]                                  ; $4870: $fa $1b $f1
	ccf                                              ; $4873: $3f
	pop  af                                          ; $4874: $f1
	ld   de, $161f                                   ; $4875: $11 $1f $16
	rst  $38                                         ; $4878: $ff
	add  c                                           ; $4879: $81
	rst  $28                                         ; $487a: $ef
	rla                                              ; $487b: $17
	rst  $38                                         ; $487c: $ff
	ld   de, $f11c                                   ; $487d: $11 $1c $f1
	rst  $28                                         ; $4880: $ef
	or   $1f                                         ; $4881: $f6 $1f
	pop  af                                          ; $4883: $f1
	cp   a                                           ; $4884: $bf
	pop  bc                                          ; $4885: $c1
	ld   de, $1fff                                   ; $4886: $11 $ff $1f
	rst  $38                                         ; $4889: $ff
	ld   de, $1ff7                                   ; $488a: $11 $f7 $1f
	di                                               ; $488d: $f3
	ld   de, $811f                                   ; $488e: $11 $1f $81
	rst  $38                                         ; $4891: $ff
	pop  hl                                          ; $4892: $e1
	adc  a                                           ; $4893: $8f
	ld   [de], a                                     ; $4894: $12
	rst  $38                                         ; $4895: $ff
	ld   de, $f115                                   ; $4896: $11 $15 $f1
	sbc  a                                           ; $4899: $9f
	ld   hl, sp+$1f                                  ; $489a: $f8 $1f
	pop  af                                          ; $489c: $f1
	sbc  a                                           ; $489d: $9f
	pop  af                                          ; $489e: $f1
	ld   de, $1fff                                   ; $489f: $11 $ff $1f
	rst  $38                                         ; $48a2: $ff
	ld   de, $1ffa                                   ; $48a3: $11 $fa $1f
	db   $f4                                         ; $48a6: $f4
	ld   de, $611f                                   ; $48a7: $11 $1f $61
	rst  $38                                         ; $48aa: $ff
	pop  de                                          ; $48ab: $d1
	xor  a                                           ; $48ac: $af
	ld   [de], a                                     ; $48ad: $12
	rst  $38                                         ; $48ae: $ff
	ld   de, $f11f                                   ; $48af: $11 $1f $f1
	rst  JumpTable                                         ; $48b2: $df
	or   $1f                                         ; $48b3: $f6 $1f
	pop  af                                          ; $48b5: $f1
	xor  a                                           ; $48b6: $af
	pop  bc                                          ; $48b7: $c1
	ld   de, $1fff                                   ; $48b8: $11 $ff $1f
	rst  $38                                         ; $48bb: $ff
	inc  d                                           ; $48bc: $14
	db   $f4                                         ; $48bd: $f4
	cpl                                              ; $48be: $2f
	pop  af                                          ; $48bf: $f1
	ld   de, $178f                                   ; $48c0: $11 $8f $17
	rst  $38                                         ; $48c3: $ff
	sub  c                                           ; $48c4: $91
	rst  $38                                         ; $48c5: $ff
	dec  de                                          ; $48c6: $1b
	db   $fc                                         ; $48c7: $fc
	ld   de, $f11f                                   ; $48c8: $11 $1f $f1
	rst  $38                                         ; $48cb: $ff
	pop  af                                          ; $48cc: $f1
	ccf                                              ; $48cd: $3f
	ld   d, h                                        ; $48ce: $54
	rst  $38                                         ; $48cf: $ff
	ld   de, $f11f                                   ; $48d0: $11 $1f $f1
	rst  $38                                         ; $48d3: $ff
	or   $1f                                         ; $48d4: $f6 $1f
	db   $d3                                         ; $48d6: $d3
	cp   a                                           ; $48d7: $bf
	sub  c                                           ; $48d8: $91
	ld   de, $0ff6                                   ; $48d9: $11 $f6 $0f
	db   $fd                                         ; $48dc: $fd
	add  hl, de                                      ; $48dd: $19
	rst  $30                                         ; $48de: $f7
	ld   a, a                                        ; $48df: $7f
	pop  af                                          ; $48e0: $f1
	ld   de, $1fff                                   ; $48e1: $11 $ff $1f
	rst  $38                                         ; $48e4: $ff
	dec  d                                           ; $48e5: $15
	db   $eb                                         ; $48e6: $eb
	ld   a, h                                        ; $48e7: $7c
	pop  af                                          ; $48e8: $f1
	ld   de, $1fff                                   ; $48e9: $11 $ff $1f
	rst  $38                                         ; $48ec: $ff
	ld   b, d                                        ; $48ed: $42
	db   $eb                                         ; $48ee: $eb
	adc  c                                           ; $48ef: $89
	pop  af                                          ; $48f0: $f1
	ld   de, $1aff                                   ; $48f1: $11 $ff $1a
	rst  $38                                         ; $48f4: $ff
	and  c                                           ; $48f5: $a1
	xor  [hl]                                        ; $48f6: $ae
	sub  a                                           ; $48f7: $97
	or   $11                                         ; $48f8: $f6 $11
	ld   a, a                                        ; $48fa: $7f
	ld   [hl], $ff                                   ; $48fb: $36 $ff
	di                                               ; $48fd: $f3
	ld   a, l                                        ; $48fe: $7d
	add  $c9                                         ; $48ff: $c6 $c9
	ld   de, $921f                                   ; $4901: $11 $1f $92
	rst  $38                                         ; $4904: $ff
	or   $5c                                         ; $4905: $f6 $5c
	push de                                          ; $4907: $d5
	cp   c                                           ; $4908: $b9
	ld   de, $c31f                                   ; $4909: $11 $1f $c3
	rst  $38                                         ; $490c: $ff
	ld   sp, hl                                      ; $490d: $f9
	ld   c, h                                        ; $490e: $4c
	push af                                          ; $490f: $f5
	adc  c                                           ; $4910: $89
	ld   de, $f51f                                   ; $4911: $11 $1f $f5
	rst  $38                                         ; $4914: $ff
	ld   sp, hl                                      ; $4915: $f9
	dec  hl                                          ; $4916: $2b
	push af                                          ; $4917: $f5
	ld   a, c                                        ; $4918: $79
	ld   de, $f51f                                   ; $4919: $11 $1f $f5
	rst  $38                                         ; $491c: $ff
	db   $fc                                         ; $491d: $fc
	inc  e                                           ; $491e: $1c
	db   $f4                                         ; $491f: $f4
	add  a                                           ; $4920: $87
	ld   de, $f71f                                   ; $4921: $11 $1f $f7
	rst  $38                                         ; $4924: $ff
	rst  $38                                         ; $4925: $ff
	inc  e                                           ; $4926: $1c
	ldh  a, [c]                                      ; $4927: $f2
	ld   [hl], a                                     ; $4928: $77
	ld   de, $f91f                                   ; $4929: $11 $1f $f9
	rst  $38                                         ; $492c: $ff
	cp   $1c                                         ; $492d: $fe $1c
	rst  $30                                         ; $492f: $f7
	add  l                                           ; $4930: $85
	ld   de, $fa1f                                   ; $4931: $11 $1f $fa
	rst  $38                                         ; $4934: $ff
	rst  $38                                         ; $4935: $ff
	inc  e                                           ; $4936: $1c
	di                                               ; $4937: $f3
	ld   d, e                                        ; $4938: $53
	ld   de, $ec1f                                   ; $4939: $11 $1f $ec
	rst  $38                                         ; $493c: $ff
	db   $fc                                         ; $493d: $fc
	rra                                              ; $493e: $1f
	push af                                          ; $493f: $f5
	ld   [hl], d                                     ; $4940: $72
	ld   de, $ca1f                                   ; $4941: $11 $1f $ca
	rst  $38                                         ; $4944: $ff
	db   $fc                                         ; $4945: $fc
	rra                                              ; $4946: $1f
	db   $d3                                         ; $4947: $d3
	ld   b, c                                        ; $4948: $41
	ld   de, $bf1e                                   ; $4949: $11 $1e $bf
	rst  $38                                         ; $494c: $ff
	rst  $30                                         ; $494d: $f7
	ld   e, a                                        ; $494e: $5f
	and  a                                           ; $494f: $a7
	ld   b, c                                        ; $4950: $41
	ld   de, $9f2f                                   ; $4951: $11 $2f $9f
	rst  $38                                         ; $4954: $ff
	push af                                          ; $4955: $f5
	cp   a                                           ; $4956: $bf
	ld   a, b                                        ; $4957: $78
	ld   de, $7a11                                   ; $4958: $11 $11 $7a
	cp   a                                           ; $495b: $bf
	rst  $38                                         ; $495c: $ff
	ld   a, [$a2dc]                                  ; $495d: $fa $dc $a2
	ld   de, $b911                                   ; $4960: $11 $11 $b9
	rst  $38                                         ; $4963: $ff
	rst  $38                                         ; $4964: $ff
	db   $db                                         ; $4965: $db
	db   $db                                         ; $4966: $db
	ld   [hl], c                                     ; $4967: $71
	ld   de, $ae14                                   ; $4968: $11 $14 $ae
	rst  $38                                         ; $496b: $ff
	rst  $38                                         ; $496c: $ff
	jp   c, $21bb                                    ; $496d: $da $bb $21

	ld   de, $fd17                                   ; $4970: $11 $17 $fd
	rst  $28                                         ; $4973: $ef
	cp   $fc                                         ; $4974: $fe $fc
	rst  $10                                         ; $4976: $d7
	ld   de, $1511                                   ; $4977: $11 $11 $15
	call c, $efff                                    ; $497a: $dc $ff $ef
	db   $db                                         ; $497d: $db
	and  l                                           ; $497e: $a5
	ld   sp, $4611                                   ; $497f: $31 $11 $46
	sbc  $ff                                         ; $4982: $de $ff
	rst  $38                                         ; $4984: $ff
	db   $fd                                         ; $4985: $fd
	xor  b                                           ; $4986: $a8
	ld   de, $3611                                   ; $4987: $11 $11 $36
	sbc  a                                           ; $498a: $9f
	rst  $38                                         ; $498b: $ff
	cp   $fd                                         ; $498c: $fe $fd
	sbc  c                                           ; $498e: $99
	ld   sp, $1311                                   ; $498f: $31 $11 $13
	adc  $ff                                         ; $4992: $ce $ff
	rst  $38                                         ; $4994: $ff
	db   $fd                                         ; $4995: $fd
	and  a                                           ; $4996: $a7
	ld   sp, $1211                                   ; $4997: $31 $11 $12
	cp   h                                           ; $499a: $bc
	rst  $38                                         ; $499b: $ff
	rst  $38                                         ; $499c: $ff
	rst  $38                                         ; $499d: $ff
	ld   [$1151], a                                  ; $499e: $ea $51 $11
	ld   de, $ff8d                                   ; $49a1: $11 $8d $ff
	rst  $38                                         ; $49a4: $ff
	rst  $38                                         ; $49a5: $ff
	ld   [$1172], a                                  ; $49a6: $ea $72 $11
	ld   de, $af5a                                   ; $49a9: $11 $5a $af
	rst  $38                                         ; $49ac: $ff
	rst  $38                                         ; $49ad: $ff
	db   $fd                                         ; $49ae: $fd
	halt                                             ; $49af: $76
	ld   de, $1811                                   ; $49b0: $11 $11 $18
	cp   [hl]                                        ; $49b3: $be
	rst  $38                                         ; $49b4: $ff
	rst  $38                                         ; $49b5: $ff
	cp   $d9                                         ; $49b6: $fe $d9
	ld   b, c                                        ; $49b8: $41
	ld   de, $6c14                                   ; $49b9: $11 $14 $6c
	rst  $38                                         ; $49bc: $ff
	rst  $38                                         ; $49bd: $ff
	rst  $38                                         ; $49be: $ff
	db   $dd                                         ; $49bf: $dd
	and  l                                           ; $49c0: $a5
	ld   de, $2811                                   ; $49c1: $11 $11 $28
	xor  [hl]                                        ; $49c4: $ae
	db   $fd                                         ; $49c5: $fd
	rst  $38                                         ; $49c6: $ff
	rst  $28                                         ; $49c7: $ef
	cp   c                                           ; $49c8: $b9
	or   e                                           ; $49c9: $b3
	ld   de, $5912                                   ; $49ca: $11 $12 $59
	rst  JumpTable                                         ; $49cd: $df
	set  7, a                                        ; $49ce: $cb $ff
	sbc  $98                                         ; $49d0: $de $98
	and  d                                           ; $49d2: $a2
	ld   de, $3715                                   ; $49d3: $11 $15 $37
	rst  $28                                         ; $49d6: $ef
	cp   d                                           ; $49d7: $ba
	rst  $38                                         ; $49d8: $ff
	db   $eb                                         ; $49d9: $eb
	xor  h                                           ; $49da: $ac
	add  d                                           ; $49db: $82
	ld   de, $5614                                   ; $49dc: $11 $14 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49df: $cf
	adc  c                                           ; $49e0: $89
	cp   $da                                         ; $49e1: $fe $da
	cp   h                                           ; $49e3: $bc
	sub  l                                           ; $49e4: $95
	ld   de, $8614                                   ; $49e5: $11 $14 $86
	ld   a, l                                        ; $49e8: $7d
	rst  ToBoot                                         ; $49e9: $c7
	xor  l                                           ; $49ea: $ad
	db   $fc                                         ; $49eb: $fc
	cp   l                                           ; $49ec: $bd
	xor  c                                           ; $49ed: $a9
	ld   d, e                                        ; $49ee: $53
	ld   de, $6757                                   ; $49ef: $11 $57 $67
	db   $db                                         ; $49f2: $db
	ld   l, d                                        ; $49f3: $6a
	rst  $38                                         ; $49f4: $ff
	xor  e                                           ; $49f5: $ab
	cp   d                                           ; $49f6: $ba
	ld   h, [hl]                                     ; $49f7: $66
	ld   b, c                                        ; $49f8: $41
	inc  h                                           ; $49f9: $24
	ld   [hl], a                                     ; $49fa: $77
	ld   l, d                                        ; $49fb: $6a
	or   a                                           ; $49fc: $b7
	sbc  h                                           ; $49fd: $9c
	xor  [hl]                                        ; $49fe: $ae
	adc  b                                           ; $49ff: $88
	jp   c, $1175                                    ; $4a00: $da $75 $11

	ld   b, a                                        ; $4a03: $47
	halt                                             ; $4a04: $76
	adc  c                                           ; $4a05: $89
	adc  d                                           ; $4a06: $8a
	adc  b                                           ; $4a07: $88
	jp   z, $ba8c                                    ; $4a08: $ca $8c $ba

	sub  h                                           ; $4a0b: $94
	inc  hl                                          ; $4a0c: $23
	ld   d, [hl]                                     ; $4a0d: $56
	ld   a, b                                        ; $4a0e: $78
	add  a                                           ; $4a0f: $87
	sbc  c                                           ; $4a10: $99
	and  a                                           ; $4a11: $a7
	ld   a, [hl]                                     ; $4a12: $7e
	cp   d                                           ; $4a13: $ba
	xor  c                                           ; $4a14: $a9
	call nz, Call_0f2_7714                           ; $4a15: $c4 $14 $77
	halt                                             ; $4a18: $76
	ld   a, b                                        ; $4a19: $78
	ld   h, a                                        ; $4a1a: $67
	sbc  d                                           ; $4a1b: $9a
	sbc  d                                           ; $4a1c: $9a
	cp   e                                           ; $4a1d: $bb
	cp   e                                           ; $4a1e: $bb
	sbc  b                                           ; $4a1f: $98
	ld   h, h                                        ; $4a20: $64
	ld   b, l                                        ; $4a21: $45
	sbc  d                                           ; $4a22: $9a
	ld   h, l                                        ; $4a23: $65
	ld   h, [hl]                                     ; $4a24: $66
	ld   a, c                                        ; $4a25: $79
	xor  b                                           ; $4a26: $a8
	cp   c                                           ; $4a27: $b9
	ld   a, h                                        ; $4a28: $7c
	xor  b                                           ; $4a29: $a8
	sub  l                                           ; $4a2a: $95
	ld   h, a                                        ; $4a2b: $67
	ld   l, c                                        ; $4a2c: $69
	sub  a                                           ; $4a2d: $97
	ld   d, [hl]                                     ; $4a2e: $56
	ld   a, c                                        ; $4a2f: $79
	sbc  c                                           ; $4a30: $99
	ld   [hl], a                                     ; $4a31: $77
	sbc  c                                           ; $4a32: $99
	cp   e                                           ; $4a33: $bb
	xor  b                                           ; $4a34: $a8
	add  a                                           ; $4a35: $87
	adc  b                                           ; $4a36: $88
	ld   a, c                                        ; $4a37: $79
	ld   [hl], a                                     ; $4a38: $77
	add  a                                           ; $4a39: $87
	ld   h, [hl]                                     ; $4a3a: $66
	ld   h, a                                        ; $4a3b: $67
	ld   a, b                                        ; $4a3c: $78
	xor  d                                           ; $4a3d: $aa
	xor  c                                           ; $4a3e: $a9
	ld   a, d                                        ; $4a3f: $7a
	adc  b                                           ; $4a40: $88
	sub  [hl]                                        ; $4a41: $96
	ld   h, a                                        ; $4a42: $67
	adc  b                                           ; $4a43: $88
	ld   a, c                                        ; $4a44: $79
	halt                                             ; $4a45: $76
	ld   a, c                                        ; $4a46: $79
	add  a                                           ; $4a47: $87
	adc  b                                           ; $4a48: $88
	xor  c                                           ; $4a49: $a9
	adc  c                                           ; $4a4a: $89
	adc  c                                           ; $4a4b: $89
	adc  b                                           ; $4a4c: $88
	add  a                                           ; $4a4d: $87
	ld   a, c                                        ; $4a4e: $79
	sbc  c                                           ; $4a4f: $99
	halt                                             ; $4a50: $76
	ld   [hl], a                                     ; $4a51: $77
	adc  b                                           ; $4a52: $88
	add  a                                           ; $4a53: $87
	ld   [hl], a                                     ; $4a54: $77
	sbc  b                                           ; $4a55: $98
	and  a                                           ; $4a56: $a7
	adc  c                                           ; $4a57: $89
	sbc  b                                           ; $4a58: $98
	sub  a                                           ; $4a59: $97
	add  a                                           ; $4a5a: $87
	ld   a, c                                        ; $4a5b: $79
	ld   [hl], a                                     ; $4a5c: $77
	adc  b                                           ; $4a5d: $88
	ld   a, b                                        ; $4a5e: $78
	add  a                                           ; $4a5f: $87
	ld   a, b                                        ; $4a60: $78
	adc  c                                           ; $4a61: $89
	xor  b                                           ; $4a62: $a8
	ld   a, c                                        ; $4a63: $79
	add  a                                           ; $4a64: $87
	ld   [hl], a                                     ; $4a65: $77
	adc  c                                           ; $4a66: $89
	ld   [hl], a                                     ; $4a67: $77
	ld   a, b                                        ; $4a68: $78
	add  a                                           ; $4a69: $87
	adc  b                                           ; $4a6a: $88
	adc  b                                           ; $4a6b: $88
	sbc  b                                           ; $4a6c: $98
	adc  b                                           ; $4a6d: $88
	adc  b                                           ; $4a6e: $88
	adc  b                                           ; $4a6f: $88
	sbc  c                                           ; $4a70: $99
	adc  b                                           ; $4a71: $88
	adc  b                                           ; $4a72: $88
	adc  b                                           ; $4a73: $88
	adc  b                                           ; $4a74: $88
	sbc  b                                           ; $4a75: $98
	adc  b                                           ; $4a76: $88
	adc  b                                           ; $4a77: $88
	adc  b                                           ; $4a78: $88
	adc  b                                           ; $4a79: $88
	adc  b                                           ; $4a7a: $88
	add  c                                           ; $4a7b: $81
	ld   de, $1111                                   ; $4a7c: $11 $11 $11
	ld   de, $1111                                   ; $4a7f: $11 $11 $11
	ld   de, $1111                                   ; $4a82: $11 $11 $11
	ld   de, $1111                                   ; $4a85: $11 $11 $11
	ld   de, $1111                                   ; $4a88: $11 $11 $11
	ld   de, $1111                                   ; $4a8b: $11 $11 $11
	nop                                              ; $4a8e: $00
	ld   c, b                                        ; $4a8f: $48
	ld   de, $1111                                   ; $4a90: $11 $11 $11
	ld   de, $1111                                   ; $4a93: $11 $11 $11
	ld   de, $1111                                   ; $4a96: $11 $11 $11
	ld   de, $5413                                   ; $4a99: $11 $13 $54
	ld   d, h                                        ; $4a9c: $54
	ld   d, h                                        ; $4a9d: $54
	ld   b, c                                        ; $4a9e: $41
	rra                                              ; $4a9f: $1f
	rst  $38                                         ; $4aa0: $ff
	pop  af                                          ; $4aa1: $f1
	ld   de, $1711                                   ; $4aa2: $11 $11 $17
	ld   sp, $1c11                                   ; $4aa5: $31 $11 $1c
	db   $dd                                         ; $4aa8: $dd
	call c, $d1dd                                    ; $4aa9: $dc $dd $d1
	ld   de, $1111                                   ; $4aac: $11 $11 $11
	ld   de, $1111                                   ; $4aaf: $11 $11 $11
	ld   de, $1111                                   ; $4ab2: $11 $11 $11
	ld   de, $1111                                   ; $4ab5: $11 $11 $11
	ld   de, $5411                                   ; $4ab8: $11 $11 $54
	ld   b, h                                        ; $4abb: $44
	scf                                              ; $4abc: $37
	ld   de, $5454                                   ; $4abd: $11 $54 $54
	ld   h, a                                        ; $4ac0: $67
	ld   [hl], d                                     ; $4ac1: $72
	ld   de, $1111                                   ; $4ac2: $11 $11 $11
	ld   de, $1112                                   ; $4ac5: $11 $12 $11
	ld   [de], a                                     ; $4ac8: $12
	ld   de, $1111                                   ; $4ac9: $11 $11 $11
	ld   h, [hl]                                     ; $4acc: $66
	halt                                             ; $4acd: $76
	rlca                                             ; $4ace: $07
	ld   de, $8888                                   ; $4acf: $11 $88 $88
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
	sbc  b                                           ; $4adf: $98
	adc  b                                           ; $4ae0: $88
	ld   a, b                                        ; $4ae1: $78
	adc  c                                           ; $4ae2: $89
	sbc  b                                           ; $4ae3: $98
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88

jr_0f2_4ae6:
	adc  b                                           ; $4ae6: $88
	adc  c                                           ; $4ae7: $89
	adc  c                                           ; $4ae8: $89
	sub  a                                           ; $4ae9: $97
	adc  b                                           ; $4aea: $88
	ld   a, b                                        ; $4aeb: $78
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  c                                           ; $4aee: $89
	adc  b                                           ; $4aef: $88
	sbc  b                                           ; $4af0: $98
	adc  b                                           ; $4af1: $88
	ld   a, b                                        ; $4af2: $78
	adc  b                                           ; $4af3: $88
	xor  c                                           ; $4af4: $a9
	add  a                                           ; $4af5: $87
	ld   [hl], a                                     ; $4af6: $77
	sbc  b                                           ; $4af7: $98
	sbc  c                                           ; $4af8: $99
	sbc  b                                           ; $4af9: $98
	add  a                                           ; $4afa: $87
	ld   [hl], a                                     ; $4afb: $77
	adc  b                                           ; $4afc: $88
	sbc  b                                           ; $4afd: $98
	ld   a, b                                        ; $4afe: $78
	adc  c                                           ; $4aff: $89
	adc  b                                           ; $4b00: $88
	add  a                                           ; $4b01: $87
	ld   a, b                                        ; $4b02: $78
	adc  c                                           ; $4b03: $89
	sbc  b                                           ; $4b04: $98
	adc  b                                           ; $4b05: $88
	ld   [hl], a                                     ; $4b06: $77
	adc  c                                           ; $4b07: $89
	adc  c                                           ; $4b08: $89
	add  a                                           ; $4b09: $87
	adc  b                                           ; $4b0a: $88
	adc  c                                           ; $4b0b: $89
	ld   [hl], a                                     ; $4b0c: $77
	ld   a, b                                        ; $4b0d: $78
	sbc  c                                           ; $4b0e: $99
	sub  a                                           ; $4b0f: $97
	ld   [hl], a                                     ; $4b10: $77
	ld   a, b                                        ; $4b11: $78
	sbc  c                                           ; $4b12: $99
	sbc  b                                           ; $4b13: $98
	add  a                                           ; $4b14: $87
	ld   a, b                                        ; $4b15: $78
	adc  c                                           ; $4b16: $89
	sbc  c                                           ; $4b17: $99
	ld   a, b                                        ; $4b18: $78
	ld   [hl], a                                     ; $4b19: $77
	sbc  b                                           ; $4b1a: $98
	adc  c                                           ; $4b1b: $89
	add  [hl]                                        ; $4b1c: $86
	adc  b                                           ; $4b1d: $88
	ld   a, c                                        ; $4b1e: $79
	sub  a                                           ; $4b1f: $97
	ld   [hl], a                                     ; $4b20: $77
	ld   e, c                                        ; $4b21: $59
	xor  b                                           ; $4b22: $a8
	sbc  c                                           ; $4b23: $99
	ld   [hl], a                                     ; $4b24: $77
	sbc  b                                           ; $4b25: $98
	ld   a, b                                        ; $4b26: $78
	ld   [hl], a                                     ; $4b27: $77
	adc  d                                           ; $4b28: $8a
	adc  c                                           ; $4b29: $89
	add  [hl]                                        ; $4b2a: $86
	ld   h, [hl]                                     ; $4b2b: $66
	ld   a, c                                        ; $4b2c: $79
	xor  d                                           ; $4b2d: $aa
	halt                                             ; $4b2e: $76
	ld   [hl], a                                     ; $4b2f: $77
	adc  e                                           ; $4b30: $8b
	sub  [hl]                                        ; $4b31: $96
	adc  b                                           ; $4b32: $88
	ld   a, d                                        ; $4b33: $7a
	add  a                                           ; $4b34: $87
	adc  b                                           ; $4b35: $88
	ld   a, d                                        ; $4b36: $7a
	xor  b                                           ; $4b37: $a8
	ld   [hl], a                                     ; $4b38: $77
	ld   h, [hl]                                     ; $4b39: $66
	sbc  c                                           ; $4b3a: $99
	sbc  d                                           ; $4b3b: $9a
	sub  [hl]                                        ; $4b3c: $96
	halt                                             ; $4b3d: $76
	ld   l, c                                        ; $4b3e: $69
	adc  b                                           ; $4b3f: $88
	adc  b                                           ; $4b40: $88
	sub  a                                           ; $4b41: $97
	adc  c                                           ; $4b42: $89
	ld   a, c                                        ; $4b43: $79
	sbc  b                                           ; $4b44: $98
	ld   h, [hl]                                     ; $4b45: $66
	ld   a, b                                        ; $4b46: $78
	xor  e                                           ; $4b47: $ab
	add  a                                           ; $4b48: $87
	ld   h, [hl]                                     ; $4b49: $66
	adc  c                                           ; $4b4a: $89
	and  a                                           ; $4b4b: $a7
	ld   [hl], l                                     ; $4b4c: $75
	jr   c, jr_0f2_4ae6                              ; $4b4d: $38 $97

	sub  a                                           ; $4b4f: $97
	ld   b, l                                        ; $4b50: $45
	sbc  c                                           ; $4b51: $99
	adc  d                                           ; $4b52: $8a
	ld   h, l                                        ; $4b53: $65
	sbc  b                                           ; $4b54: $98
	call z, $98aa                                    ; $4b55: $cc $aa $98
	sbc  e                                           ; $4b58: $9b
	xor  e                                           ; $4b59: $ab
	sub  a                                           ; $4b5a: $97
	add  h                                           ; $4b5b: $84
	dec  [hl]                                        ; $4b5c: $35
	ld   d, h                                        ; $4b5d: $54
	halt                                             ; $4b5e: $76
	inc  hl                                          ; $4b5f: $23
	ld   [hl-], a                                    ; $4b60: $32
	ld   a, d                                        ; $4b61: $7a
	ld   h, [hl]                                     ; $4b62: $66
	sbc  b                                           ; $4b63: $98
	rst  $28                                         ; $4b64: $ef
	xor  $a5                                         ; $4b65: $ee $a5
	adc  d                                           ; $4b67: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b68: $cf
	ld   sp, hl                                      ; $4b69: $f9
	and  e                                           ; $4b6a: $a3
	rla                                              ; $4b6b: $17
	ld   b, [hl]                                     ; $4b6c: $46
	add  d                                           ; $4b6d: $82
	ld   de, $2411                                   ; $4b6e: $11 $11 $24
	sbc  h                                           ; $4b71: $9c
	sbc  $ff                                         ; $4b72: $de $ff
	cp   b                                           ; $4b74: $b8
	or   l                                           ; $4b75: $b5
	sbc  a                                           ; $4b76: $9f
	db   $fc                                         ; $4b77: $fc
	or   $2d                                         ; $4b78: $f6 $2d
	ld   b, h                                        ; $4b7a: $44
	or   h                                           ; $4b7b: $b4
	dec  h                                           ; $4b7c: $25
	ld   de, $1211                                   ; $4b7d: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b80: $cf
	rst  $38                                         ; $4b81: $ff
	ei                                               ; $4b82: $fb
	ld   b, h                                        ; $4b83: $44
	ld   h, $ff                                      ; $4b84: $26 $ff
	rst  $38                                         ; $4b86: $ff
	jp   nz, $1941                                   ; $4b87: $c2 $41 $19

	sub  a                                           ; $4b8a: $97
	sub  c                                           ; $4b8b: $91
	ld   de, $7f11                                   ; $4b8c: $11 $11 $7f
	rst  $38                                         ; $4b8f: $ff
	db   $fd                                         ; $4b90: $fd
	ld   l, b                                        ; $4b91: $68
	sub  l                                           ; $4b92: $95
	rst  $38                                         ; $4b93: $ff
	rst  $38                                         ; $4b94: $ff
	ld   hl, sp+$71                                  ; $4b95: $f8 $71
	dec  d                                           ; $4b97: $15
	ld   a, c                                        ; $4b98: $79
	and  e                                           ; $4b99: $a3
	ld   de, $2f11                                   ; $4b9a: $11 $11 $2f
	rst  $38                                         ; $4b9d: $ff
	db   $fd                                         ; $4b9e: $fd
	add  c                                           ; $4b9f: $81
	ld   d, a                                        ; $4ba0: $57
	xor  a                                           ; $4ba1: $af
	rst  $38                                         ; $4ba2: $ff
	or   $11                                         ; $4ba3: $f6 $11
	ld   de, $65fb                                   ; $4ba5: $11 $fb $65
	ld   de, $2f11                                   ; $4ba8: $11 $11 $2f
	rst  $38                                         ; $4bab: $ff
	rst  $38                                         ; $4bac: $ff
	add  c                                           ; $4bad: $81
	ld   h, h                                        ; $4bae: $64
	xor  a                                           ; $4baf: $af
	rst  $38                                         ; $4bb0: $ff
	db   $f4                                         ; $4bb1: $f4
	ld   de, $fd1a                                   ; $4bb2: $11 $1a $fd
	ld   sp, $1411                                   ; $4bb5: $31 $11 $14
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	call c, $1ff2                                    ; $4bba: $dc $f2 $1f
	sbc  a                                           ; $4bbd: $9f
	rst  $38                                         ; $4bbe: $ff
	jr   @+$13                                       ; $4bbf: $18 $11

	call z, $112b                                    ; $4bc1: $cc $2b $11
	ld   de, $ff2f                                   ; $4bc4: $11 $2f $ff
	rst  $38                                         ; $4bc7: $ff
	pop  af                                          ; $4bc8: $f1
	rra                                              ; $4bc9: $1f
	ld   l, a                                        ; $4bca: $6f
	ld   sp, hl                                      ; $4bcb: $f9
	ld   l, d                                        ; $4bcc: $6a
	ld   de, $7ea7                                   ; $4bcd: $11 $a7 $7e
	ld   de, $af11                                   ; $4bd0: $11 $11 $af
	rst  $38                                         ; $4bd3: $ff
	rst  $28                                         ; $4bd4: $ef
	or   c                                           ; $4bd5: $b1
	ld   l, [hl]                                     ; $4bd6: $6e
	rst  $28                                         ; $4bd7: $ef
	rst  $38                                         ; $4bd8: $ff
	ld   d, c                                        ; $4bd9: $51
	ld   de, $814d                                   ; $4bda: $11 $4d $81
	ld   de, rAUD1LEN                                   ; $4bdd: $11 $11 $ff
	rst  $38                                         ; $4be0: $ff
	ld   sp, hl                                      ; $4be1: $f9
	ld   sp, $ff4f                                   ; $4be2: $31 $4f $ff
	rst  $30                                         ; $4be5: $f7
	ld   hl, $4717                                   ; $4be6: $21 $17 $47
	ld   hl, $1511                                   ; $4be9: $21 $11 $15
	rst  $38                                         ; $4bec: $ff
	rst  $38                                         ; $4bed: $ff
	sub  c                                           ; $4bee: $91
	ld   de, $ffbf                                   ; $4bef: $11 $bf $ff
	pop  af                                          ; $4bf2: $f1
	ld   de, $ff16                                   ; $4bf3: $11 $16 $ff
	ld   de, rAUD1LEN                                   ; $4bf6: $11 $11 $ff
	rst  $38                                         ; $4bf9: $ff
	ld   sp, hl                                      ; $4bfa: $f9
	ld   sp, $ffe7                                   ; $4bfb: $31 $e7 $ff
	rst  $38                                         ; $4bfe: $ff
	pop  bc                                          ; $4bff: $c1
	ld   de, $e141                                   ; $4c00: $11 $41 $e1
	ld   de, $ff19                                   ; $4c03: $11 $19 $ff
	rst  $38                                         ; $4c06: $ff
	jp   $6f11                                       ; $4c07: $c3 $11 $6f


	rst  $38                                         ; $4c0a: $ff
	ldh  a, [c]                                      ; $4c0b: $f2
	ld   de, $ba11                                   ; $4c0c: $11 $11 $ba
	ld   de, $1a11                                   ; $4c0f: $11 $11 $1a
	rst  $38                                         ; $4c12: $ff
	rst  $38                                         ; $4c13: $ff
	rst  $30                                         ; $4c14: $f7
	ld   d, e                                        ; $4c15: $53
	rst  $38                                         ; $4c16: $ff
	rst  $38                                         ; $4c17: $ff
	or   c                                           ; $4c18: $b1
	ld   de, $1111                                   ; $4c19: $11 $11 $11
	ld   de, $ff9f                                   ; $4c1c: $11 $9f $ff
	ld   a, [$4d11]                                  ; $4c1f: $fa $11 $4d
	rst  $38                                         ; $4c22: $ff
	ld   a, [$1111]                                  ; $4c23: $fa $11 $11
	cpl                                              ; $4c26: $2f
	jp   c, $1111                                    ; $4c27: $da $11 $11

	cpl                                              ; $4c2a: $2f
	rst  $38                                         ; $4c2b: $ff
	db   $fd                                         ; $4c2c: $fd
	add  hl, de                                      ; $4c2d: $19
	db   $ed                                         ; $4c2e: $ed
	rst  $38                                         ; $4c2f: $ff
	sbc  c                                           ; $4c30: $99
	ld   [hl], c                                     ; $4c31: $71
	ld   de, $2111                                   ; $4c32: $11 $11 $21
	ld   c, a                                        ; $4c35: $4f
	rst  $38                                         ; $4c36: $ff
	pop  af                                          ; $4c37: $f1
	or   c                                           ; $4c38: $b1
	rra                                              ; $4c39: $1f
	ld   a, a                                        ; $4c3a: $7f
	ld   hl, sp-$5e                                  ; $4c3b: $f8 $a2
	ld   de, $6c66                                   ; $4c3d: $11 $66 $6c
	and  c                                           ; $4c40: $a1
	inc  d                                           ; $4c41: $14
	ld   de, $ffff                                   ; $4c42: $11 $ff $ff
	sbc  h                                           ; $4c45: $9c
	inc  d                                           ; $4c46: $14
	db   $fc                                         ; $4c47: $fc
	rst  $38                                         ; $4c48: $ff
	ld   bc, $1111                                   ; $4c49: $01 $11 $11
	ld   de, $ffff                                   ; $4c4c: $11 $ff $ff
	jp   hl                                          ; $4c4f: $e9


	rst  $28                                         ; $4c50: $ef
	ld   l, b                                        ; $4c51: $68
	ld   [hl], a                                     ; $4c52: $77
	rst  $38                                         ; $4c53: $ff
	ld   a, [$1111]                                  ; $4c54: $fa $11 $11
	jr   @+$01                                       ; $4c57: $18 $ff

	pop  bc                                          ; $4c59: $c1
	dec  d                                           ; $4c5a: $15
	ld   e, a                                        ; $4c5b: $5f
	rst  $38                                         ; $4c5c: $ff
	ei                                               ; $4c5d: $fb
	sub  c                                           ; $4c5e: $91
	ld   l, a                                        ; $4c5f: $6f
	rst  $38                                         ; $4c60: $ff
	sub  c                                           ; $4c61: $91
	ld   de, $1511                                   ; $4c62: $11 $11 $15
	rst  JumpTable                                         ; $4c65: $df
	rst  $38                                         ; $4c66: $ff
	rst  $38                                         ; $4c67: $ff
	sbc  a                                           ; $4c68: $9f
	ld   hl, $ffbc                                   ; $4c69: $21 $bc $ff
	and  c                                           ; $4c6c: $a1
	ld   de, $791b                                   ; $4c6d: $11 $1b $79
	xor  b                                           ; $4c70: $a8
	ld   de, $9f61                                   ; $4c71: $11 $61 $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c74: $cf
	rst  $38                                         ; $4c75: $ff
	db   $fd                                         ; $4c76: $fd
	ld   l, d                                        ; $4c77: $6a
	rst  $38                                         ; $4c78: $ff
	rst  $30                                         ; $4c79: $f7
	ld   de, $1111                                   ; $4c7a: $11 $11 $11
	ld   a, a                                        ; $4c7d: $7f
	rst  $38                                         ; $4c7e: $ff
	rst  $38                                         ; $4c7f: $ff
	sbc  h                                           ; $4c80: $9c
	or   c                                           ; $4c81: $b1
	sbc  h                                           ; $4c82: $9c
	rst  $38                                         ; $4c83: $ff
	call $1111                                       ; $4c84: $cd $11 $11
	ld   c, d                                        ; $4c87: $4a
	adc  [hl]                                        ; $4c88: $8e
	pop  bc                                          ; $4c89: $c1
	ld   de, $ff1f                                   ; $4c8a: $11 $1f $ff
	rst  $38                                         ; $4c8d: $ff
	inc  [hl]                                        ; $4c8e: $34
	or   $ef                                         ; $4c8f: $f6 $ef
	sub  a                                           ; $4c91: $97
	and  c                                           ; $4c92: $a1
	ld   de, $9b11                                   ; $4c93: $11 $11 $9b
	rst  $38                                         ; $4c96: $ff
	rst  $38                                         ; $4c97: $ff
	sub  $f3                                         ; $4c98: $d6 $f3
	sbc  h                                           ; $4c9a: $9c
	rst  JumpTable                                         ; $4c9b: $df
	ld   l, h                                        ; $4c9c: $6c
	ld   de, $4d32                                   ; $4c9d: $11 $32 $4d
	or   $52                                         ; $4ca0: $f6 $52
	ld   de, $ff29                                   ; $4ca2: $11 $29 $ff
	db   $fc                                         ; $4ca5: $fc
	ld   l, a                                        ; $4ca6: $6f
	ld   c, a                                        ; $4ca7: $4f
	rst  $38                                         ; $4ca8: $ff
	rst  $38                                         ; $4ca9: $ff
	ld   hl, $1111                                   ; $4caa: $21 $11 $11
	ld   de, $7f11                                   ; $4cad: $11 $11 $7f
	rst  $38                                         ; $4cb0: $ff
	rst  $38                                         ; $4cb1: $ff
	ld   [hl], c                                     ; $4cb2: $71
	sub  [hl]                                        ; $4cb3: $96
	sbc  a                                           ; $4cb4: $9f
	ei                                               ; $4cb5: $fb
	pop  de                                          ; $4cb6: $d1
	ld   de, $ff2b                                   ; $4cb7: $11 $2b $ff
	ld   de, $1911                                   ; $4cba: $11 $11 $19
	rst  $38                                         ; $4cbd: $ff
	rst  $38                                         ; $4cbe: $ff
	ld   hl, sp-$31                                  ; $4cbf: $f8 $cf
	db   $fc                                         ; $4cc1: $fc
	ei                                               ; $4cc2: $fb
	ld   d, $31                                      ; $4cc3: $16 $31
	ld   de, $1111                                   ; $4cc5: $11 $11 $11
	ccf                                              ; $4cc8: $3f
	rst  $38                                         ; $4cc9: $ff
	rst  $38                                         ; $4cca: $ff
	db   $ec                                         ; $4ccb: $ec
	or   c                                           ; $4ccc: $b1
	inc  [hl]                                        ; $4ccd: $34
	xor  a                                           ; $4cce: $af
	cp   $51                                         ; $4ccf: $fe $51
	inc  de                                          ; $4cd1: $13
	rst  $38                                         ; $4cd2: $ff
	pop  af                                          ; $4cd3: $f1
	ld   de, $af11                                   ; $4cd4: $11 $11 $af
	rst  $38                                         ; $4cd7: $ff
	pop  af                                          ; $4cd8: $f1
	db   $ec                                         ; $4cd9: $ec
	ld   l, a                                        ; $4cda: $6f
	ei                                               ; $4cdb: $fb
	xor  a                                           ; $4cdc: $af
	ld   b, [hl]                                     ; $4cdd: $46
	sub  c                                           ; $4cde: $91
	ld   e, c                                        ; $4cdf: $59
	ld   de, $1211                                   ; $4ce0: $11 $11 $12
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	pop  af                                          ; $4ce5: $f1
	ld   a, [de]                                     ; $4ce6: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ce7: $cf
	rst  $38                                         ; $4ce8: $ff
	rst  $38                                         ; $4ce9: $ff
	pop  af                                          ; $4cea: $f1
	ld   de, $1111                                   ; $4ceb: $11 $11 $11
	ld   de, $ff15                                   ; $4cee: $11 $15 $ff
	rst  $38                                         ; $4cf1: $ff
	di                                               ; $4cf2: $f3
	ld   d, c                                        ; $4cf3: $51
	ld   e, l                                        ; $4cf4: $5d
	adc  a                                           ; $4cf5: $8f
	cp   $d1                                         ; $4cf6: $fe $d1
	ld   de, $f939                                   ; $4cf8: $11 $39 $f9
	ld   de, $1e11                                   ; $4cfb: $11 $11 $1e
	rst  JumpTable                                         ; $4cfe: $df
	rst  $38                                         ; $4cff: $ff
	rst  $38                                         ; $4d00: $ff
	db   $fc                                         ; $4d01: $fc
	sub  d                                           ; $4d02: $92
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d03: $cf
	rst  JumpTable                                         ; $4d04: $df
	ld   sp, $1111                                   ; $4d05: $31 $11 $11
	ld   de, $cf11                                   ; $4d08: $11 $11 $cf
	rst  $38                                         ; $4d0b: $ff
	db   $fd                                         ; $4d0c: $fd
	and  c                                           ; $4d0d: $a1
	rla                                              ; $4d0e: $17
	rst  $38                                         ; $4d0f: $ff
	rst  $38                                         ; $4d10: $ff
	or   c                                           ; $4d11: $b1
	ld   de, $8111                                   ; $4d12: $11 $11 $81
	ld   de, rAUD1LEN                                   ; $4d15: $11 $11 $ff
	rst  $38                                         ; $4d18: $ff
	rst  $28                                         ; $4d19: $ef
	rst  $38                                         ; $4d1a: $ff
	pop  bc                                          ; $4d1b: $c1
	ld   a, a                                        ; $4d1c: $7f
	rst  $38                                         ; $4d1d: $ff
	pop  af                                          ; $4d1e: $f1
	ld   de, $5111                                   ; $4d1f: $11 $11 $51
	ld   de, $ff1d                                   ; $4d22: $11 $1d $ff
	rst  $38                                         ; $4d25: $ff
	scf                                              ; $4d26: $37
	dec  d                                           ; $4d27: $15
	rst  $38                                         ; $4d28: $ff
	rst  $38                                         ; $4d29: $ff
	sbc  e                                           ; $4d2a: $9b
	ld   d, c                                        ; $4d2b: $51
	ld   de, $1111                                   ; $4d2c: $11 $11 $11
	jr   @+$01                                       ; $4d2f: $18 $ff

	rst  $38                                         ; $4d31: $ff
	and  a                                           ; $4d32: $a7
	ld   e, b                                        ; $4d33: $58
	rst  JumpTable                                         ; $4d34: $df
	rst  $38                                         ; $4d35: $ff
	cp   $92                                         ; $4d36: $fe $92
	ld   de, $1111                                   ; $4d38: $11 $11 $11
	ld   de, $ff2f                                   ; $4d3b: $11 $2f $ff
	rst  $38                                         ; $4d3e: $ff
	ld   de, rAUD1HIGH                                   ; $4d3f: $11 $14 $ff
	rst  $38                                         ; $4d42: $ff
	sub  c                                           ; $4d43: $91
	ld   de, $fd16                                   ; $4d44: $11 $16 $fd
	ld   b, c                                        ; $4d47: $41
	ld   de, $ff1f                                   ; $4d48: $11 $1f $ff
	rst  $38                                         ; $4d4b: $ff
	ld   a, a                                        ; $4d4c: $7f
	db   $f4                                         ; $4d4d: $f4
	db   $dd                                         ; $4d4e: $dd
	ld   c, a                                        ; $4d4f: $4f
	ld   hl, sp+$51                                  ; $4d50: $f8 $51
	ld   de, $1111                                   ; $4d52: $11 $11 $11
	ld   de, $ffaf                                   ; $4d55: $11 $af $ff
	rst  $38                                         ; $4d58: $ff
	ld   de, rAUD1LEN                                   ; $4d59: $11 $11 $ff
	rst  $38                                         ; $4d5c: $ff
	or   c                                           ; $4d5d: $b1
	ld   de, $fe15                                   ; $4d5e: $11 $15 $fe
	ld   de, $3f11                                   ; $4d61: $11 $11 $3f
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	rst  $38                                         ; $4d66: $ff
	call z, $df83                                    ; $4d67: $cc $83 $df
	rst  $38                                         ; $4d6a: $ff
	ld   d, c                                        ; $4d6b: $51
	ld   de, $1111                                   ; $4d6c: $11 $11 $11
	ld   c, a                                        ; $4d6f: $4f
	rst  $38                                         ; $4d70: $ff
	rst  $38                                         ; $4d71: $ff
	pop  af                                          ; $4d72: $f1
	ld   de, $ff6f                                   ; $4d73: $11 $6f $ff
	ld   sp, hl                                      ; $4d76: $f9
	ld   de, $ce11                                   ; $4d77: $11 $11 $ce
	ld   hl, $1711                                   ; $4d7a: $21 $11 $17
	rst  $38                                         ; $4d7d: $ff
	rst  $38                                         ; $4d7e: $ff
	rst  $38                                         ; $4d7f: $ff
	db   $fd                                         ; $4d80: $fd
	sub  a                                           ; $4d81: $97
	dec  sp                                          ; $4d82: $3b
	rst  $38                                         ; $4d83: $ff
	pop  de                                          ; $4d84: $d1
	ld   de, $1111                                   ; $4d85: $11 $11 $11
	ld   d, $af                                      ; $4d88: $16 $af
	rst  $38                                         ; $4d8a: $ff
	ei                                               ; $4d8b: $fb
	ld   de, $ff19                                   ; $4d8c: $11 $19 $ff
	rst  $38                                         ; $4d8f: $ff
	ld   de, $4f11                                   ; $4d90: $11 $11 $4f
	jp   hl                                          ; $4d93: $e9


	ld   de, $df11                                   ; $4d94: $11 $11 $df
	rst  $38                                         ; $4d97: $ff
	cp   $9c                                         ; $4d98: $fe $9c
	ld   a, b                                        ; $4d9a: $78
	adc  a                                           ; $4d9b: $8f
	rst  $38                                         ; $4d9c: $ff
	pop  af                                          ; $4d9d: $f1
	ld   de, $1111                                   ; $4d9e: $11 $11 $11
	ld   de, $ff1f                                   ; $4da1: $11 $1f $ff
	rst  $38                                         ; $4da4: $ff
	ld   de, $ef11                                   ; $4da5: $11 $11 $ef
	rst  $38                                         ; $4da8: $ff
	and  c                                           ; $4da9: $a1
	ld   de, $cb15                                   ; $4daa: $11 $15 $cb
	ld   d, c                                        ; $4dad: $51
	ld   de, $ff1f                                   ; $4dae: $11 $1f $ff
	rst  $38                                         ; $4db1: $ff
	ld   a, a                                        ; $4db2: $7f
	push af                                          ; $4db3: $f5
	adc  l                                           ; $4db4: $8d
	rst  $38                                         ; $4db5: $ff
	rst  $38                                         ; $4db6: $ff
	ld   sp, $1111                                   ; $4db7: $31 $11 $11
	ld   de, $ff1f                                   ; $4dba: $11 $1f $ff
	rst  $38                                         ; $4dbd: $ff
	pop  de                                          ; $4dbe: $d1
	inc  de                                          ; $4dbf: $13
	ld   c, a                                        ; $4dc0: $4f
	rst  $38                                         ; $4dc1: $ff
	di                                               ; $4dc2: $f3
	ld   de, $7d11                                   ; $4dc3: $11 $11 $7d
	or   c                                           ; $4dc6: $b1
	ld   de, $ff1f                                   ; $4dc7: $11 $1f $ff
	rst  $38                                         ; $4dca: $ff
	sub  a                                           ; $4dcb: $97
	sbc  c                                           ; $4dcc: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dcd: $cf
	rst  $38                                         ; $4dce: $ff
	or   $11                                         ; $4dcf: $f6 $11
	ld   de, $1111                                   ; $4dd1: $11 $11 $11
	inc  e                                           ; $4dd4: $1c
	rst  $38                                         ; $4dd5: $ff
	rst  $38                                         ; $4dd6: $ff
	ld   a, [$6911]                                  ; $4dd7: $fa $11 $69
	rst  $38                                         ; $4dda: $ff
	cp   $11                                         ; $4ddb: $fe $11
	ld   de, $1146                                   ; $4ddd: $11 $46 $11
	ld   de, $ffaf                                   ; $4de0: $11 $af $ff
	ld   a, [$da6c]                                  ; $4de3: $fa $6c $da
	rst  $38                                         ; $4de6: $ff
	rst  $38                                         ; $4de7: $ff
	ld   d, c                                        ; $4de8: $51
	ld   de, $1111                                   ; $4de9: $11 $11 $11
	ld   de, $ff7f                                   ; $4dec: $11 $7f $ff
	push af                                          ; $4def: $f5
	ld   de, $ff16                                   ; $4df0: $11 $16 $ff
	rst  $38                                         ; $4df3: $ff
	ld   de, $1911                                   ; $4df4: $11 $11 $19
	ld   a, [$1511]                                  ; $4df7: $fa $11 $15
	rst  $38                                         ; $4dfa: $ff
	rst  $38                                         ; $4dfb: $ff
	rst  $38                                         ; $4dfc: $ff
	ld   a, [$efc8]                                  ; $4dfd: $fa $c8 $ef
	db   $fc                                         ; $4e00: $fc
	ld   de, $1111                                   ; $4e01: $11 $11 $11
	inc  de                                          ; $4e04: $13
	rst  $38                                         ; $4e05: $ff
	rst  $38                                         ; $4e06: $ff
	ei                                               ; $4e07: $fb
	ld   de, rAUD1LEN                                   ; $4e08: $11 $11 $ff
	rst  $38                                         ; $4e0b: $ff
	and  c                                           ; $4e0c: $a1
	ld   de, $ee19                                   ; $4e0d: $11 $19 $ee
	ld   h, c                                        ; $4e10: $61
	ld   de, $ff2f                                   ; $4e11: $11 $2f $ff
	ei                                               ; $4e14: $fb
	xor  l                                           ; $4e15: $ad
	rra                                              ; $4e16: $1f
	cp   $fa                                         ; $4e17: $fe $fa
	ld   de, $1111                                   ; $4e19: $11 $11 $11
	ld   de, $ffbf                                   ; $4e1c: $11 $bf $ff
	rst  $38                                         ; $4e1f: $ff
	ld   de, $9f11                                   ; $4e20: $11 $11 $9f
	rst  $38                                         ; $4e23: $ff
	pop  af                                          ; $4e24: $f1
	ld   de, $df13                                   ; $4e25: $11 $13 $df
	add  c                                           ; $4e28: $81
	ld   de, $ff6f                                   ; $4e29: $11 $6f $ff
	rst  $30                                         ; $4e2c: $f7
	inc  d                                           ; $4e2d: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e2e: $cf
	rst  $38                                         ; $4e2f: $ff
	or   [hl]                                        ; $4e30: $b6
	ld   de, $1111                                   ; $4e31: $11 $11 $11
	ld   de, $ff1f                                   ; $4e34: $11 $1f $ff
	rst  $38                                         ; $4e37: $ff
	ld   de, rAUD1LEN                                   ; $4e38: $11 $11 $ff
	rst  $38                                         ; $4e3b: $ff
	ld   hl, $1911                                   ; $4e3c: $21 $11 $19
	ld   [hl], h                                     ; $4e3f: $74
	ld   b, c                                        ; $4e40: $41
	dec  d                                           ; $4e41: $15
	rst  $38                                         ; $4e42: $ff
	rst  $38                                         ; $4e43: $ff
	ld   [$efd3], a                                  ; $4e44: $ea $d3 $ef
	rst  JumpTable                                         ; $4e47: $df
	or   c                                           ; $4e48: $b1
	ld   de, $1111                                   ; $4e49: $11 $11 $11
	ld   e, a                                        ; $4e4c: $5f
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	ld   h, c                                        ; $4e4f: $61
	ld   de, $ff7f                                   ; $4e50: $11 $7f $ff
	db   $f4                                         ; $4e53: $f4
	ld   de, $8811                                   ; $4e54: $11 $11 $88
	add  c                                           ; $4e57: $81
	ld   de, $ff4f                                   ; $4e58: $11 $4f $ff
	push af                                          ; $4e5b: $f5
	ld   d, $4f                                      ; $4e5c: $16 $4f
	rst  $38                                         ; $4e5e: $ff
	jp   nc, $1111                                   ; $4e5f: $d2 $11 $11

	ld   de, $ff1f                                   ; $4e62: $11 $1f $ff
	rst  $38                                         ; $4e65: $ff
	pop  af                                          ; $4e66: $f1
	ld   de, $ff1f                                   ; $4e67: $11 $1f $ff
	db   $fc                                         ; $4e6a: $fc
	ld   de, $7f11                                   ; $4e6b: $11 $11 $7f
	ld   de, rAUD1LEN                                   ; $4e6e: $11 $11 $ff
	rst  $38                                         ; $4e71: $ff
	or   c                                           ; $4e72: $b1
	ld   e, d                                        ; $4e73: $5a
	rst  $38                                         ; $4e74: $ff
	rst  $38                                         ; $4e75: $ff
	pop  bc                                          ; $4e76: $c1
	ld   de, $1111                                   ; $4e77: $11 $11 $11
	adc  a                                           ; $4e7a: $8f
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	ld   hl, $df11                                   ; $4e7d: $21 $11 $df
	rst  $38                                         ; $4e80: $ff
	pop  af                                          ; $4e81: $f1
	ld   de, $ca13                                   ; $4e82: $11 $13 $ca
	ld   de, rAUD1HIGH                                   ; $4e85: $11 $14 $ff
	rst  $38                                         ; $4e88: $ff
	ld   hl, $ff58                                   ; $4e89: $21 $58 $ff
	ld   hl, sp+$11                                  ; $4e8c: $f8 $11
	ld   de, $1311                                   ; $4e8e: $11 $11 $13
	rst  $38                                         ; $4e91: $ff
	rst  $38                                         ; $4e92: $ff
	ldh  a, [c]                                      ; $4e93: $f2
	ld   de, $ff19                                   ; $4e94: $11 $19 $ff
	rst  $38                                         ; $4e97: $ff
	ld   de, $1811                                   ; $4e98: $11 $11 $18
	sub  c                                           ; $4e9b: $91
	ld   de, $ffef                                   ; $4e9c: $11 $ef $ff
	di                                               ; $4e9f: $f3
	dec  d                                           ; $4ea0: $15
	rst  $38                                         ; $4ea1: $ff
	rst  $38                                         ; $4ea2: $ff
	pop  bc                                          ; $4ea3: $c1
	ld   de, $1411                                   ; $4ea4: $11 $11 $14
	rst  JumpTable                                         ; $4ea7: $df
	rst  $38                                         ; $4ea8: $ff
	rst  $38                                         ; $4ea9: $ff
	ld   h, c                                        ; $4eaa: $61
	ld   de, $ff5f                                   ; $4eab: $11 $5f $ff
	pop  hl                                          ; $4eae: $e1
	ld   de, $f113                                   ; $4eaf: $11 $13 $f1
	ld   de, $ff1f                                   ; $4eb2: $11 $1f $ff
	ld   hl, sp+$11                                  ; $4eb5: $f8 $11
	ld   e, $ff                                      ; $4eb7: $1e $ff
	ei                                               ; $4eb9: $fb
	ld   de, $1711                                   ; $4eba: $11 $11 $17
	xor  e                                           ; $4ebd: $ab
	rst  $38                                         ; $4ebe: $ff
	rst  $38                                         ; $4ebf: $ff
	pop  af                                          ; $4ec0: $f1
	ld   de, $ff1f                                   ; $4ec1: $11 $1f $ff
	pop  af                                          ; $4ec4: $f1
	ld   de, $c511                                   ; $4ec5: $11 $11 $c5
	ld   de, $ff3f                                   ; $4ec8: $11 $3f $ff
	rst  $30                                         ; $4ecb: $f7
	ld   de, $ff1f                                   ; $4ecc: $11 $1f $ff
	or   $11                                         ; $4ecf: $f6 $11
	ld   de, $df14                                   ; $4ed1: $11 $14 $df
	rst  $38                                         ; $4ed4: $ff
	rst  $38                                         ; $4ed5: $ff
	pop  de                                          ; $4ed6: $d1
	ld   de, $ff1f                                   ; $4ed7: $11 $1f $ff
	pop  af                                          ; $4eda: $f1
	ld   de, $2111                                   ; $4edb: $11 $11 $21
	rra                                              ; $4ede: $1f
	rst  $38                                         ; $4edf: $ff
	rst  $38                                         ; $4ee0: $ff
	ld   de, rAUD1LEN                                   ; $4ee1: $11 $11 $ff
	rst  $38                                         ; $4ee4: $ff
	ld   [hl], c                                     ; $4ee5: $71
	ld   de, $8f11                                   ; $4ee6: $11 $11 $8f
	rst  $38                                         ; $4ee9: $ff
	rst  $38                                         ; $4eea: $ff
	rst  $38                                         ; $4eeb: $ff
	ld   de, rAUD1LEN                                   ; $4eec: $11 $11 $ff
	rst  $38                                         ; $4eef: $ff
	ld   de, $1111                                   ; $4ef0: $11 $11 $11
	dec  sp                                          ; $4ef3: $3b
	rst  $38                                         ; $4ef4: $ff
	rst  $38                                         ; $4ef5: $ff
	pop  hl                                          ; $4ef6: $e1
	ld   de, $ff6f                                   ; $4ef7: $11 $6f $ff
	di                                               ; $4efa: $f3
	ld   de, $1411                                   ; $4efb: $11 $11 $14
	rst  $38                                         ; $4efe: $ff
	rst  $38                                         ; $4eff: $ff
	rst  $38                                         ; $4f00: $ff
	ld   d, c                                        ; $4f01: $51
	ld   de, $ff9f                                   ; $4f02: $11 $9f $ff
	pop  af                                          ; $4f05: $f1
	ld   de, $1711                                   ; $4f06: $11 $11 $17
	rst  $38                                         ; $4f09: $ff
	rst  $38                                         ; $4f0a: $ff
	rst  $38                                         ; $4f0b: $ff
	ld   de, rAUD1LEN                                   ; $4f0c: $11 $11 $ff
	rst  $38                                         ; $4f0f: $ff
	ld   de, $1111                                   ; $4f10: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f13: $cf
	rst  $38                                         ; $4f14: $ff
	rst  $38                                         ; $4f15: $ff
	pop  af                                          ; $4f16: $f1
	ld   de, $ff1a                                   ; $4f17: $11 $1a $ff
	ld   hl, sp+$11                                  ; $4f1a: $f8 $11
	ld   de, $ff1a                                   ; $4f1c: $11 $1a $ff
	rst  $38                                         ; $4f1f: $ff
	rst  $38                                         ; $4f20: $ff
	ld   sp, $bf11                                   ; $4f21: $31 $11 $bf
	rst  $38                                         ; $4f24: $ff
	ld   b, c                                        ; $4f25: $41
	ld   de, $5f11                                   ; $4f26: $11 $11 $5f
	rst  $38                                         ; $4f29: $ff
	rst  $38                                         ; $4f2a: $ff
	ldh  a, [c]                                      ; $4f2b: $f2
	ld   de, $ff17                                   ; $4f2c: $11 $17 $ff
	ei                                               ; $4f2f: $fb
	ld   de, $1c11                                   ; $4f30: $11 $11 $1c
	rst  $38                                         ; $4f33: $ff
	rst  $38                                         ; $4f34: $ff
	rst  $38                                         ; $4f35: $ff
	sub  c                                           ; $4f36: $91
	ld   de, $ff6f                                   ; $4f37: $11 $6f $ff
	add  c                                           ; $4f3a: $81
	ld   de, $9f11                                   ; $4f3b: $11 $11 $9f
	rst  $38                                         ; $4f3e: $ff
	rst  $38                                         ; $4f3f: $ff
	db   $f4                                         ; $4f40: $f4
	ld   de, $ff16                                   ; $4f41: $11 $16 $ff
	or   $11                                         ; $4f44: $f6 $11
	ld   de, $ff1e                                   ; $4f46: $11 $1e $ff
	rst  $38                                         ; $4f49: $ff
	rst  $38                                         ; $4f4a: $ff
	ld   [hl], c                                     ; $4f4b: $71
	ld   de, $ffbf                                   ; $4f4c: $11 $bf $ff
	ld   de, $1211                                   ; $4f4f: $11 $11 $12
	rst  $28                                         ; $4f52: $ef
	rst  $38                                         ; $4f53: $ff
	rst  $38                                         ; $4f54: $ff
	pop  af                                          ; $4f55: $f1
	ld   de, $ff1f                                   ; $4f56: $11 $1f $ff
	pop  af                                          ; $4f59: $f1
	ld   de, $6f11                                   ; $4f5a: $11 $11 $6f
	rst  $38                                         ; $4f5d: $ff
	rst  $38                                         ; $4f5e: $ff
	db   $fd                                         ; $4f5f: $fd
	ld   sp, $df12                                   ; $4f60: $31 $12 $df
	rst  $30                                         ; $4f63: $f7
	ld   de, $1a11                                   ; $4f64: $11 $11 $1a
	rst  $38                                         ; $4f67: $ff
	rst  $38                                         ; $4f68: $ff
	rst  $38                                         ; $4f69: $ff
	pop  bc                                          ; $4f6a: $c1
	ld   de, $ff7f                                   ; $4f6b: $11 $7f $ff
	ld   hl, $1311                                   ; $4f6e: $21 $11 $13
	rst  JumpTable                                         ; $4f71: $df
	rst  $38                                         ; $4f72: $ff
	rst  $38                                         ; $4f73: $ff
	ld   sp, hl                                      ; $4f74: $f9
	ld   de, $ff19                                   ; $4f75: $11 $19 $ff
	pop  bc                                          ; $4f78: $c1
	ld   de, $6f11                                   ; $4f79: $11 $11 $6f
	rst  $38                                         ; $4f7c: $ff
	rst  $38                                         ; $4f7d: $ff
	rst  $38                                         ; $4f7e: $ff
	ld   de, rAUD1LEN                                   ; $4f7f: $11 $11 $ff
	ldh  a, [c]                                      ; $4f82: $f2
	ld   de, $6f11                                   ; $4f83: $11 $11 $6f
	rst  $38                                         ; $4f86: $ff
	rst  $38                                         ; $4f87: $ff
	rst  $38                                         ; $4f88: $ff
	pop  de                                          ; $4f89: $d1
	ld   de, $fa7f                                   ; $4f8a: $11 $7f $fa
	ld   de, $2f11                                   ; $4f8d: $11 $11 $2f
	rst  $38                                         ; $4f90: $ff
	rst  $38                                         ; $4f91: $ff
	rst  $38                                         ; $4f92: $ff
	pop  af                                          ; $4f93: $f1
	ld   de, $ff1e                                   ; $4f94: $11 $1e $ff
	ld   de, $1c11                                   ; $4f97: $11 $11 $1c
	rst  $38                                         ; $4f9a: $ff
	rst  $38                                         ; $4f9b: $ff
	rst  $38                                         ; $4f9c: $ff
	ld   sp, hl                                      ; $4f9d: $f9
	ld   de, $ff1a                                   ; $4f9e: $11 $1a $ff
	add  c                                           ; $4fa1: $81
	ld   de, $ff17                                   ; $4fa2: $11 $17 $ff
	rst  $38                                         ; $4fa5: $ff
	rst  $38                                         ; $4fa6: $ff
	rst  $38                                         ; $4fa7: $ff
	ld   de, rAUD1LEN                                   ; $4fa8: $11 $11 $ff
	pop  bc                                          ; $4fab: $c1
	ld   de, rAUD1HIGH                                   ; $4fac: $11 $14 $ff
	rst  $38                                         ; $4faf: $ff
	rst  $38                                         ; $4fb0: $ff
	rst  $38                                         ; $4fb1: $ff
	ld   b, c                                        ; $4fb2: $41
	ld   de, $91df                                   ; $4fb3: $11 $df $91
	ld   de, rAUD1LEN                                   ; $4fb6: $11 $11 $ff
	rst  $38                                         ; $4fb9: $ff
	rst  $38                                         ; $4fba: $ff
	rst  $38                                         ; $4fbb: $ff
	or   c                                           ; $4fbc: $b1
	ld   de, $a17f                                   ; $4fbd: $11 $7f $a1
	ld   de, rAUD1LEN                                   ; $4fc0: $11 $11 $ff
	rst  $38                                         ; $4fc3: $ff
	rst  $38                                         ; $4fc4: $ff

Jump_0f2_4fc5:
	rst  $38                                         ; $4fc5: $ff
	pop  af                                          ; $4fc6: $f1
	ld   de, $c14f                                   ; $4fc7: $11 $4f $c1
	ld   de, rAUD1ENV                                   ; $4fca: $11 $12 $ff
	rst  $38                                         ; $4fcd: $ff
	rst  $38                                         ; $4fce: $ff
	rst  $38                                         ; $4fcf: $ff
	pop  af                                          ; $4fd0: $f1
	ld   de, $a15c                                   ; $4fd1: $11 $5c $a1
	ld   de, rAUD1LEN                                   ; $4fd4: $11 $11 $ff
	rst  $38                                         ; $4fd7: $ff
	rst  $38                                         ; $4fd8: $ff
	rst  $38                                         ; $4fd9: $ff
	pop  af                                          ; $4fda: $f1
	ld   de, $915b                                   ; $4fdb: $11 $5b $91
	ld   de, rAUD1LEN                                   ; $4fde: $11 $11 $ff
	rst  $38                                         ; $4fe1: $ff
	rst  $38                                         ; $4fe2: $ff
	rst  $38                                         ; $4fe3: $ff
	pop  bc                                          ; $4fe4: $c1
	ld   de, $315b                                   ; $4fe5: $11 $5b $31
	ld   de, $ff15                                   ; $4fe8: $11 $15 $ff
	rst  $38                                         ; $4feb: $ff
	rst  $38                                         ; $4fec: $ff
	rst  $38                                         ; $4fed: $ff
	and  c                                           ; $4fee: $a1
	ld   de, $1147                                   ; $4fef: $11 $47 $11
	ld   de, $ff19                                   ; $4ff2: $11 $19 $ff
	rst  $38                                         ; $4ff5: $ff
	rst  $38                                         ; $4ff6: $ff
	rst  $38                                         ; $4ff7: $ff
	ld   [hl], c                                     ; $4ff8: $71
	ld   de, $1166                                   ; $4ff9: $11 $66 $11
	ld   de, $ff1c                                   ; $4ffc: $11 $1c $ff
	rst  $38                                         ; $4fff: $ff
	rst  $38                                         ; $5000: $ff
	rst  $38                                         ; $5001: $ff
	ld   d, c                                        ; $5002: $51
	ld   de, $1163                                   ; $5003: $11 $63 $11
	ld   de, $ff1f                                   ; $5006: $11 $1f $ff
	rst  $38                                         ; $5009: $ff
	rst  $38                                         ; $500a: $ff
	rst  $38                                         ; $500b: $ff
	ld   b, c                                        ; $500c: $41
	inc  d                                           ; $500d: $14
	ld   [hl], c                                     ; $500e: $71
	ld   de, $3f11                                   ; $500f: $11 $11 $3f
	rst  $38                                         ; $5012: $ff
	rst  $38                                         ; $5013: $ff
	rst  $38                                         ; $5014: $ff
	cp   $31                                         ; $5015: $fe $31
	scf                                              ; $5017: $37
	ld   [hl], c                                     ; $5018: $71
	ld   de, $4f11                                   ; $5019: $11 $11 $4f
	rst  $38                                         ; $501c: $ff
	rst  $38                                         ; $501d: $ff
	rst  $38                                         ; $501e: $ff
	cp   $75                                         ; $501f: $fe $75
	adc  d                                           ; $5021: $8a
	ld   [hl], c                                     ; $5022: $71
	ld   de, $3a11                                   ; $5023: $11 $11 $3a
	adc  $ef                                         ; $5026: $ce $ef
	rst  $38                                         ; $5028: $ff
	rst  $38                                         ; $5029: $ff
	cp   c                                           ; $502a: $b9
	call $11a5                                       ; $502b: $cd $a5 $11
	ld   de, $8814                                   ; $502e: $11 $14 $88
	cp   h                                           ; $5031: $bc
	rst  $38                                         ; $5032: $ff
	rst  $38                                         ; $5033: $ff
	call c, $cabd                                    ; $5034: $dc $bd $ca
	ld   b, c                                        ; $5037: $41
	ld   de, $4611                                   ; $5038: $11 $11 $46
	adc  d                                           ; $503b: $8a
	cp   [hl]                                        ; $503c: $be
	cp   $ec                                         ; $503d: $fe $ec
	cp   h                                           ; $503f: $bc
	res  0, h                                        ; $5040: $cb $84
	ld   de, $3511                                   ; $5042: $11 $11 $35
	ld   h, a                                        ; $5045: $67
	sbc  e                                           ; $5046: $9b
	db   $dd                                         ; $5047: $dd
	db   $db                                         ; $5048: $db
	cp   h                                           ; $5049: $bc
	call Call_0f2_52c9                               ; $504a: $cd $c9 $52
	ld   de, $7635                                   ; $504d: $11 $35 $76
	ld   d, [hl]                                     ; $5050: $56
	adc  e                                           ; $5051: $8b
	call z, $acbb                                    ; $5052: $cc $bb $ac
	db   $ed                                         ; $5055: $ed
	and  a                                           ; $5056: $a7
	ld   b, d                                        ; $5057: $42
	inc  h                                           ; $5058: $24
	ld   l, b                                        ; $5059: $68
	ld   h, h                                        ; $505a: $64
	ld   b, l                                        ; $505b: $45
	sbc  e                                           ; $505c: $9b
	cp   e                                           ; $505d: $bb
	xor  d                                           ; $505e: $aa
	adc  $ec                                         ; $505f: $ce $ec
	sub  l                                           ; $5061: $95
	ld   b, e                                        ; $5062: $43
	ld   d, a                                        ; $5063: $57
	ld   [hl], l                                     ; $5064: $75
	ld   sp, $ab36                                   ; $5065: $31 $36 $ab
	xor  c                                           ; $5068: $a9
	xor  h                                           ; $5069: $ac
	rst  $38                                         ; $506a: $ff
	ld   [$5675], a                                  ; $506b: $ea $75 $56
	ld   [hl], a                                     ; $506e: $77
	ld   b, c                                        ; $506f: $41
	ld   de, $aa59                                   ; $5070: $11 $59 $aa
	xor  d                                           ; $5073: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5074: $cf
	cp   $b9                                         ; $5075: $fe $b9
	halt                                             ; $5077: $76
	ld   [hl], a                                     ; $5078: $77
	ld   h, h                                        ; $5079: $64
	ld   de, $6913                                   ; $507a: $11 $13 $69
	sbc  c                                           ; $507d: $99
	xor  h                                           ; $507e: $ac
	rst  $38                                         ; $507f: $ff
	db   $fd                                         ; $5080: $fd
	cp   c                                           ; $5081: $b9
	ld   [hl], a                                     ; $5082: $77
	halt                                             ; $5083: $76
	ld   b, d                                        ; $5084: $42
	ld   de, $7a14                                   ; $5085: $11 $14 $7a
	xor  e                                           ; $5088: $ab
	cp   [hl]                                        ; $5089: $be
	rst  $38                                         ; $508a: $ff
	db   $fd                                         ; $508b: $fd
	cp   c                                           ; $508c: $b9
	ld   [hl], a                                     ; $508d: $77
	ld   h, l                                        ; $508e: $65
	ld   sp, $2511                                   ; $508f: $31 $11 $25
	sbc  d                                           ; $5092: $9a
	xor  e                                           ; $5093: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5094: $cf
	rst  $38                                         ; $5095: $ff
	db   $fd                                         ; $5096: $fd
	and  a                                           ; $5097: $a7
	halt                                             ; $5098: $76
	ld   d, h                                        ; $5099: $54
	ld   hl, $3711                                   ; $509a: $21 $11 $37
	sbc  d                                           ; $509d: $9a
	xor  d                                           ; $509e: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $509f: $cf
	rst  $38                                         ; $50a0: $ff
	db   $ec                                         ; $50a1: $ec
	xor  c                                           ; $50a2: $a9
	add  a                                           ; $50a3: $87
	ld   d, e                                        ; $50a4: $53
	ld   de, $4612                                   ; $50a5: $11 $12 $46
	ld   a, b                                        ; $50a8: $78
	xor  e                                           ; $50a9: $ab
	rst  JumpTable                                         ; $50aa: $df
	rst  $38                                         ; $50ab: $ff
	db   $ed                                         ; $50ac: $ed
	cp   d                                           ; $50ad: $ba
	sub  [hl]                                        ; $50ae: $96
	ld   b, e                                        ; $50af: $43
	ld   hl, $2411                                   ; $50b0: $21 $11 $24
	ld   d, [hl]                                     ; $50b3: $56
	sbc  e                                           ; $50b4: $9b
	adc  $ff                                         ; $50b5: $ce $ff
	rst  $38                                         ; $50b7: $ff
	call c, Call_0f2_74a9                            ; $50b8: $dc $a9 $74
	ld   [hl-], a                                    ; $50bb: $32
	ld   de, $3312                                   ; $50bc: $11 $12 $33
	ld   d, a                                        ; $50bf: $57
	xor  h                                           ; $50c0: $ac
	rst  JumpTable                                         ; $50c1: $df
	rst  $38                                         ; $50c2: $ff
	rst  $38                                         ; $50c3: $ff
	db   $ec                                         ; $50c4: $ec
	sub  a                                           ; $50c5: $97
	ld   d, e                                        ; $50c6: $53
	ld   hl, $1111                                   ; $50c7: $21 $11 $11
	inc  h                                           ; $50ca: $24
	ld   h, a                                        ; $50cb: $67
	xor  h                                           ; $50cc: $ac
	rst  $28                                         ; $50cd: $ef
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	db   $db                                         ; $50d0: $db
	sub  [hl]                                        ; $50d1: $96
	ld   b, d                                        ; $50d2: $42
	ld   hl, $1111                                   ; $50d3: $21 $11 $11
	inc  de                                          ; $50d6: $13
	ld   e, c                                        ; $50d7: $59
	adc  $ff                                         ; $50d8: $ce $ff
	rst  $38                                         ; $50da: $ff
	rst  $38                                         ; $50db: $ff
	res  2, [hl]                                     ; $50dc: $cb $96
	ld   b, d                                        ; $50de: $42
	ld   de, $1111                                   ; $50df: $11 $11 $11
	inc  hl                                          ; $50e2: $23
	ld   e, b                                        ; $50e3: $58
	call $ffff                                       ; $50e4: $cd $ff $ff
	rst  $38                                         ; $50e7: $ff
	db   $ec                                         ; $50e8: $ec
	add  l                                           ; $50e9: $85
	ld   hl, $1111                                   ; $50ea: $21 $11 $11
	ld   de, $5813                                   ; $50ed: $11 $13 $58
	xor  [hl]                                        ; $50f0: $ae
	rst  $38                                         ; $50f1: $ff
	rst  $38                                         ; $50f2: $ff
	rst  $38                                         ; $50f3: $ff
	db   $db                                         ; $50f4: $db
	add  [hl]                                        ; $50f5: $86
	ld   sp, $1111                                   ; $50f6: $31 $11 $11
	ld   de, $4713                                   ; $50f9: $11 $13 $47
	xor  l                                           ; $50fc: $ad
	rst  $38                                         ; $50fd: $ff
	rst  $38                                         ; $50fe: $ff
	rst  $38                                         ; $50ff: $ff
	db   $ed                                         ; $5100: $ed
	sub  [hl]                                        ; $5101: $96
	ld   b, d                                        ; $5102: $42
	ld   de, $1111                                   ; $5103: $11 $11 $11
	ld   [de], a                                     ; $5106: $12
	ld   [hl], $9c                                   ; $5107: $36 $9c
	rst  $38                                         ; $5109: $ff
	rst  $38                                         ; $510a: $ff
	rst  $38                                         ; $510b: $ff
	db   $fd                                         ; $510c: $fd
	or   a                                           ; $510d: $b7
	ld   b, d                                        ; $510e: $42
	ld   de, $1111                                   ; $510f: $11 $11 $11
	ld   de, $9c24                                   ; $5112: $11 $24 $9c
	rst  $38                                         ; $5115: $ff
	rst  $38                                         ; $5116: $ff
	rst  $38                                         ; $5117: $ff
	cp   $b8                                         ; $5118: $fe $b8
	ld   b, d                                        ; $511a: $42
	ld   de, $1111                                   ; $511b: $11 $11 $11
	ld   de, $8c35                                   ; $511e: $11 $35 $8c
	rst  $38                                         ; $5121: $ff
	rst  $38                                         ; $5122: $ff
	rst  $38                                         ; $5123: $ff
	cp   $b7                                         ; $5124: $fe $b7
	ld   b, d                                        ; $5126: $42
	ld   de, $1111                                   ; $5127: $11 $11 $11
	ld   de, $9c35                                   ; $512a: $11 $35 $9c
	rst  $38                                         ; $512d: $ff
	rst  $38                                         ; $512e: $ff
	rst  $38                                         ; $512f: $ff
	cp   $c8                                         ; $5130: $fe $c8
	ld   b, d                                        ; $5132: $42
	ld   de, $1111                                   ; $5133: $11 $11 $11
	ld   de, $8b24                                   ; $5136: $11 $24 $8b
	rst  $28                                         ; $5139: $ef
	rst  $38                                         ; $513a: $ff
	rst  $38                                         ; $513b: $ff
	rst  $38                                         ; $513c: $ff
	ret  z                                           ; $513d: $c8

	ld   d, d                                        ; $513e: $52
	ld   de, $1111                                   ; $513f: $11 $11 $11
	ld   de, $8c24                                   ; $5142: $11 $24 $8c
	rst  $38                                         ; $5145: $ff
	rst  $38                                         ; $5146: $ff
	rst  $38                                         ; $5147: $ff
	rst  $38                                         ; $5148: $ff
	ret  c                                           ; $5149: $d8

	ld   d, d                                        ; $514a: $52
	ld   de, $1111                                   ; $514b: $11 $11 $11
	ld   de, $8c24                                   ; $514e: $11 $24 $8c
	rst  $38                                         ; $5151: $ff
	rst  $38                                         ; $5152: $ff
	rst  $38                                         ; $5153: $ff
	rst  $38                                         ; $5154: $ff
	ret  c                                           ; $5155: $d8

	ld   d, d                                        ; $5156: $52
	ld   de, $1111                                   ; $5157: $11 $11 $11
	ld   de, $9c24                                   ; $515a: $11 $24 $9c
	rst  $38                                         ; $515d: $ff
	rst  $38                                         ; $515e: $ff
	rst  $38                                         ; $515f: $ff
	rst  $38                                         ; $5160: $ff
	ret  z                                           ; $5161: $c8

	ld   d, c                                        ; $5162: $51
	ld   de, $1111                                   ; $5163: $11 $11 $11
	ld   de, $8d24                                   ; $5166: $11 $24 $8d
	rst  $38                                         ; $5169: $ff
	rst  $38                                         ; $516a: $ff
	rst  $38                                         ; $516b: $ff
	rst  $38                                         ; $516c: $ff
	ret  c                                           ; $516d: $d8

	ld   b, c                                        ; $516e: $41
	ld   de, $1111                                   ; $516f: $11 $11 $11
	ld   de, $9c25                                   ; $5172: $11 $25 $9c
	rst  $38                                         ; $5175: $ff

Jump_0f2_5176:
	rst  $38                                         ; $5176: $ff
	rst  $38                                         ; $5177: $ff
	rst  $38                                         ; $5178: $ff
	cp   b                                           ; $5179: $b8
	ld   b, c                                        ; $517a: $41
	ld   de, $1111                                   ; $517b: $11 $11 $11
	ld   de, $9d35                                   ; $517e: $11 $35 $9d
	rst  $38                                         ; $5181: $ff
	rst  $38                                         ; $5182: $ff
	rst  $38                                         ; $5183: $ff
	rst  $38                                         ; $5184: $ff
	or   a                                           ; $5185: $b7
	ld   b, c                                        ; $5186: $41
	ld   de, $1111                                   ; $5187: $11 $11 $11
	ld   de, $ae35                                   ; $518a: $11 $35 $ae
	rst  $38                                         ; $518d: $ff
	rst  $38                                         ; $518e: $ff
	rst  $38                                         ; $518f: $ff
	rst  $38                                         ; $5190: $ff
	or   a                                           ; $5191: $b7
	ld   b, c                                        ; $5192: $41
	ld   de, $1111                                   ; $5193: $11 $11 $11
	ld   de, $ad36                                   ; $5196: $11 $36 $ad
	rst  $38                                         ; $5199: $ff
	rst  $38                                         ; $519a: $ff
	rst  $38                                         ; $519b: $ff
	cp   $b6                                         ; $519c: $fe $b6
	ld   sp, $1111                                   ; $519e: $31 $11 $11
	ld   de, $3611                                   ; $51a1: $11 $11 $36
	xor  [hl]                                        ; $51a4: $ae
	rst  $38                                         ; $51a5: $ff
	rst  $38                                         ; $51a6: $ff
	rst  $38                                         ; $51a7: $ff
	cp   $a6                                         ; $51a8: $fe $a6

Call_0f2_51aa:
	ld   sp, $1111                                   ; $51aa: $31 $11 $11
	ld   de, $3611                                   ; $51ad: $11 $11 $36
	cp   l                                           ; $51b0: $bd
	rst  $38                                         ; $51b1: $ff
	rst  $38                                         ; $51b2: $ff
	rst  $38                                         ; $51b3: $ff
	cp   $a7                                         ; $51b4: $fe $a7
	ld   b, c                                        ; $51b6: $41
	ld   de, $1111                                   ; $51b7: $11 $11 $11
	ld   de, $ae47                                   ; $51ba: $11 $47 $ae
	rst  $38                                         ; $51bd: $ff
	rst  $38                                         ; $51be: $ff
	rst  $38                                         ; $51bf: $ff
	cp   $a7                                         ; $51c0: $fe $a7
	ld   b, c                                        ; $51c2: $41
	ld   de, $1111                                   ; $51c3: $11 $11 $11
	ld   de, $ae36                                   ; $51c6: $11 $36 $ae
	rst  $38                                         ; $51c9: $ff
	rst  $38                                         ; $51ca: $ff
	rst  $38                                         ; $51cb: $ff
	cp   $b8                                         ; $51cc: $fe $b8
	ld   d, d                                        ; $51ce: $52
	ld   de, $1111                                   ; $51cf: $11 $11 $11
	ld   de, $9b35                                   ; $51d2: $11 $35 $9b
	rst  $38                                         ; $51d5: $ff
	rst  $38                                         ; $51d6: $ff
	rst  $38                                         ; $51d7: $ff
	cp   $c9                                         ; $51d8: $fe $c9
	ld   h, h                                        ; $51da: $64
	ld   hl, $1111                                   ; $51db: $21 $11 $11
	ld   de, $7a34                                   ; $51de: $11 $34 $7a
	adc  $ff                                         ; $51e1: $ce $ff
	rst  $38                                         ; $51e3: $ff
	cp   $db                                         ; $51e4: $fe $db
	sub  a                                           ; $51e6: $97
	ld   d, h                                        ; $51e7: $54
	ld   hl, $1111                                   ; $51e8: $21 $11 $11
	inc  h                                           ; $51eb: $24
	ld   d, a                                        ; $51ec: $57
	adc  d                                           ; $51ed: $8a
	cp   h                                           ; $51ee: $bc
	rst  $28                                         ; $51ef: $ef
	xor  $dd                                         ; $51f0: $ee $dd
	jp   z, Jump_0f2_6598                            ; $51f2: $ca $98 $65

	ld   b, e                                        ; $51f5: $43
	inc  sp                                          ; $51f6: $33
	inc  sp                                          ; $51f7: $33
	ld   b, h                                        ; $51f8: $44
	ld   h, [hl]                                     ; $51f9: $66
	adc  b                                           ; $51fa: $88
	xor  d                                           ; $51fb: $aa
	xor  e                                           ; $51fc: $ab
	call z, $cccc                                    ; $51fd: $cc $cc $cc
	jp   z, Jump_0f2_7699                            ; $5200: $ca $99 $76

	ld   h, l                                        ; $5203: $65
	ld   b, h                                        ; $5204: $44
	ld   d, [hl]                                     ; $5205: $56
	ld   h, a                                        ; $5206: $67
	ld   [hl], a                                     ; $5207: $77
	ld   a, b                                        ; $5208: $78
	sbc  b                                           ; $5209: $98
	sbc  d                                           ; $520a: $9a
	xor  e                                           ; $520b: $ab
	xor  e                                           ; $520c: $ab
	cp   e                                           ; $520d: $bb
	xor  d                                           ; $520e: $aa
	sbc  b                                           ; $520f: $98
	halt                                             ; $5210: $76
	ld   h, l                                        ; $5211: $65
	ld   d, h                                        ; $5212: $54
	ld   b, l                                        ; $5213: $45
	ld   d, l                                        ; $5214: $55
	ld   h, a                                        ; $5215: $67
	ld   a, c                                        ; $5216: $79
	sbc  c                                           ; $5217: $99
	xor  e                                           ; $5218: $ab
	xor  d                                           ; $5219: $aa
	xor  d                                           ; $521a: $aa
	cp   d                                           ; $521b: $ba
	sbc  c                                           ; $521c: $99
	adc  b                                           ; $521d: $88
	add  a                                           ; $521e: $87
	halt                                             ; $521f: $76
	ld   h, [hl]                                     ; $5220: $66
	ld   h, [hl]                                     ; $5221: $66
	ld   h, [hl]                                     ; $5222: $66
	ld   [hl], a                                     ; $5223: $77
	adc  c                                           ; $5224: $89
	sbc  d                                           ; $5225: $9a
	sbc  d                                           ; $5226: $9a
	xor  d                                           ; $5227: $aa
	xor  d                                           ; $5228: $aa
	sbc  c                                           ; $5229: $99
	adc  b                                           ; $522a: $88
	ld   [hl], a                                     ; $522b: $77
	halt                                             ; $522c: $76
	ld   h, [hl]                                     ; $522d: $66
	ld   h, [hl]                                     ; $522e: $66
	ld   h, a                                        ; $522f: $67
	ld   [hl], a                                     ; $5230: $77
	adc  c                                           ; $5231: $89
	adc  c                                           ; $5232: $89
	sbc  d                                           ; $5233: $9a
	xor  d                                           ; $5234: $aa
	xor  c                                           ; $5235: $a9
	sbc  b                                           ; $5236: $98
	add  a                                           ; $5237: $87
	ld   [hl], a                                     ; $5238: $77
	ld   h, [hl]                                     ; $5239: $66
	ld   [hl], a                                     ; $523a: $77
	ld   [hl], a                                     ; $523b: $77
	ld   [hl], a                                     ; $523c: $77
	adc  b                                           ; $523d: $88
	sbc  c                                           ; $523e: $99
	sbc  c                                           ; $523f: $99
	sbc  b                                           ; $5240: $98
	sbc  c                                           ; $5241: $99
	sbc  b                                           ; $5242: $98
	adc  b                                           ; $5243: $88
	add  a                                           ; $5244: $87
	adc  b                                           ; $5245: $88
	ld   [hl], a                                     ; $5246: $77
	ld   [hl], a                                     ; $5247: $77
	ld   [hl], a                                     ; $5248: $77
	adc  b                                           ; $5249: $88
	adc  b                                           ; $524a: $88
	adc  b                                           ; $524b: $88
	sbc  c                                           ; $524c: $99
	sbc  c                                           ; $524d: $99
	sbc  b                                           ; $524e: $98
	adc  b                                           ; $524f: $88
	adc  b                                           ; $5250: $88
	ld   [hl], a                                     ; $5251: $77
	ld   [hl], a                                     ; $5252: $77
	ld   [hl], a                                     ; $5253: $77
	ld   a, b                                        ; $5254: $78
	adc  b                                           ; $5255: $88
	adc  b                                           ; $5256: $88
	sbc  c                                           ; $5257: $99
	sbc  c                                           ; $5258: $99
	sbc  c                                           ; $5259: $99
	sbc  b                                           ; $525a: $98
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

Call_0f2_52b9:
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

Call_0f2_52c9:
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
	sbc  b                                           ; $5461: $98
	adc  b                                           ; $5462: $88
	adc  b                                           ; $5463: $88
	adc  b                                           ; $5464: $88
	sbc  b                                           ; $5465: $98
	adc  b                                           ; $5466: $88
	adc  b                                           ; $5467: $88
	adc  b                                           ; $5468: $88
	adc  c                                           ; $5469: $89
	sbc  c                                           ; $546a: $99
	add  a                                           ; $546b: $87
	adc  c                                           ; $546c: $89
	sbc  b                                           ; $546d: $98
	adc  c                                           ; $546e: $89
	sbc  c                                           ; $546f: $99
	adc  c                                           ; $5470: $89
	sbc  c                                           ; $5471: $99
	sbc  b                                           ; $5472: $98
	add  [hl]                                        ; $5473: $86
	ld   h, [hl]                                     ; $5474: $66
	ld   h, a                                        ; $5475: $67
	ld   [hl], a                                     ; $5476: $77
	ld   a, b                                        ; $5477: $78
	ld   a, c                                        ; $5478: $79
	ld   a, b                                        ; $5479: $78
	sbc  c                                           ; $547a: $99
	add  a                                           ; $547b: $87
	ld   d, l                                        ; $547c: $55
	halt                                             ; $547d: $76
	ld   h, l                                        ; $547e: $65
	ld   d, a                                        ; $547f: $57
	xor  e                                           ; $5480: $ab
	cp   l                                           ; $5481: $bd
	sbc  $c9                                         ; $5482: $de $c9
	ld   d, e                                        ; $5484: $53
	ld   hl, $2411                                   ; $5485: $21 $11 $24
	ld   d, a                                        ; $5488: $57
	sbc  l                                           ; $5489: $9d
	rst  $38                                         ; $548a: $ff
	rst  $38                                         ; $548b: $ff
	db   $fd                                         ; $548c: $fd
	or   l                                           ; $548d: $b5
	ld   de, $1111                                   ; $548e: $11 $11 $11
	ld   [hl], $af                                   ; $5491: $36 $af
	rst  $38                                         ; $5493: $ff
	rst  $38                                         ; $5494: $ff
	rst  $38                                         ; $5495: $ff
	cp   b                                           ; $5496: $b8
	ld   hl, $1111                                   ; $5497: $21 $11 $11
	rla                                              ; $549a: $17
	cp   a                                           ; $549b: $bf
	rst  $38                                         ; $549c: $ff
	rst  $38                                         ; $549d: $ff
	rst  $38                                         ; $549e: $ff
	and  a                                           ; $549f: $a7
	ld   d, c                                        ; $54a0: $51
	ld   de, $1911                                   ; $54a1: $11 $11 $19
	rst  JumpTable                                         ; $54a4: $df
	rst  $38                                         ; $54a5: $ff
	rst  $38                                         ; $54a6: $ff
	ld   a, [$3195]                                  ; $54a7: $fa $95 $31
	ld   de, $5d11                                   ; $54aa: $11 $11 $5d
	rst  $38                                         ; $54ad: $ff
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	and  l                                           ; $54b0: $a5
	ld   h, e                                        ; $54b1: $63
	ld   de, $1911                                   ; $54b2: $11 $11 $19
	rst  $38                                         ; $54b5: $ff
	rst  $38                                         ; $54b6: $ff
	rst  $38                                         ; $54b7: $ff
	db   $f4                                         ; $54b8: $f4
	dec  d                                           ; $54b9: $15
	ld   d, c                                        ; $54ba: $51
	ld   de, rAUD1ENV                                   ; $54bb: $11 $12 $ff
	rst  $38                                         ; $54be: $ff
	rst  $38                                         ; $54bf: $ff
	db   $fd                                         ; $54c0: $fd
	ld   de, $1156                                   ; $54c1: $11 $56 $11
	ld   de, $ff9f                                   ; $54c4: $11 $9f $ff
	rst  $38                                         ; $54c7: $ff
	rst  $38                                         ; $54c8: $ff
	ld   [hl], c                                     ; $54c9: $71
	rla                                              ; $54ca: $17
	add  c                                           ; $54cb: $81
	ld   de, $ff1c                                   ; $54cc: $11 $1c $ff
	rst  $38                                         ; $54cf: $ff
	rst  $38                                         ; $54d0: $ff
	rst  $30                                         ; $54d1: $f7
	ld   de, $217b                                   ; $54d2: $11 $7b $21
	ld   de, $ff1f                                   ; $54d5: $11 $1f $ff
	rst  $38                                         ; $54d8: $ff
	rst  $38                                         ; $54d9: $ff
	di                                               ; $54da: $f3
	ld   [de], a                                     ; $54db: $12
	sbc  c                                           ; $54dc: $99
	ld   de, $1e11                                   ; $54dd: $11 $11 $1e
	rst  $38                                         ; $54e0: $ff
	rst  $38                                         ; $54e1: $ff
	rst  $38                                         ; $54e2: $ff
	db   $f4                                         ; $54e3: $f4
	ld   de, $617b                                   ; $54e4: $11 $7b $61
	ld   de, $ff1a                                   ; $54e7: $11 $1a $ff
	rst  $38                                         ; $54ea: $ff
	rst  $38                                         ; $54eb: $ff
	or   $11                                         ; $54ec: $f6 $11
	ld   a, [hl]                                     ; $54ee: $7e
	and  c                                           ; $54ef: $a1
	ld   de, $ff18                                   ; $54f0: $11 $18 $ff
	rst  $38                                         ; $54f3: $ff
	rst  $38                                         ; $54f4: $ff
	rst  $30                                         ; $54f5: $f7
	ld   de, $d17f                                   ; $54f6: $11 $7f $d1
	ld   de, $ff17                                   ; $54f9: $11 $17 $ff
	rst  $38                                         ; $54fc: $ff
	rst  $38                                         ; $54fd: $ff
	or   $11                                         ; $54fe: $f6 $11
	sbc  a                                           ; $5500: $9f
	pop  af                                          ; $5501: $f1
	ld   de, $ff16                                   ; $5502: $11 $16 $ff
	rst  $38                                         ; $5505: $ff
	rst  $38                                         ; $5506: $ff
	rst  $30                                         ; $5507: $f7
	ld   de, $f19f                                   ; $5508: $11 $9f $f1
	ld   de, $ff1a                                   ; $550b: $11 $1a $ff
	rst  $38                                         ; $550e: $ff
	rst  $38                                         ; $550f: $ff
	di                                               ; $5510: $f3
	ld   de, $f1bf                                   ; $5511: $11 $bf $f1
	ld   de, $ff1e                                   ; $5514: $11 $1e $ff
	rst  $38                                         ; $5517: $ff
	rst  $38                                         ; $5518: $ff
	pop  af                                          ; $5519: $f1
	ld   de, $d1df                                   ; $551a: $11 $df $d1
	ld   de, $ff1f                                   ; $551d: $11 $1f $ff
	rst  $38                                         ; $5520: $ff
	rst  $38                                         ; $5521: $ff
	pop  de                                          ; $5522: $d1
	dec  d                                           ; $5523: $15
	rst  $38                                         ; $5524: $ff
	ld   sp, $af11                                   ; $5525: $31 $11 $af
	rst  $38                                         ; $5528: $ff
	rst  JumpTable                                         ; $5529: $df
	rst  $38                                         ; $552a: $ff
	ld   sp, $ff1f                                   ; $552b: $31 $1f $ff
	ld   de, rAUD1LEN                                   ; $552e: $11 $11 $ff
	ei                                               ; $5531: $fb
	rst  JumpTable                                         ; $5532: $df
	ei                                               ; $5533: $fb
	ld   de, $f19f                                   ; $5534: $11 $9f $f1
	ld   de, $ff1f                                   ; $5537: $11 $1f $ff
	jp   c, $f1ff                                    ; $553a: $da $ff $f1

	rla                                              ; $553d: $17
	rst  $38                                         ; $553e: $ff
	ld   de, rAUD1LEN                                   ; $553f: $11 $11 $ff
	db   $fd                                         ; $5542: $fd
	ld   e, a                                        ; $5543: $5f
	rst  $38                                         ; $5544: $ff
	ld   de, $f15f                                   ; $5545: $11 $5f $f1
	ld   de, $ff1f                                   ; $5548: $11 $1f $ff
	push bc                                          ; $554b: $c5
	rst  $28                                         ; $554c: $ef
	di                                               ; $554d: $f3
	rla                                              ; $554e: $17
	rst  $38                                         ; $554f: $ff
	ld   de, rAUD1LEN                                   ; $5550: $11 $11 $ff
	ld   hl, sp+$6f                                  ; $5553: $f8 $6f
	rst  $38                                         ; $5555: $ff
	inc  sp                                          ; $5556: $33
	xor  a                                           ; $5557: $af
	ld   h, c                                        ; $5558: $61
	ld   de, $ffbf                                   ; $5559: $11 $bf $ff
	sub  [hl]                                        ; $555c: $96
	rst  JumpTable                                         ; $555d: $df
	and  d                                           ; $555e: $a2
	ld   a, a                                        ; $555f: $7f
	pop  af                                          ; $5560: $f1
	ld   de, $ff1f                                   ; $5561: $11 $1f $ff
	db   $fd                                         ; $5564: $fd
	rst  $38                                         ; $5565: $ff
	ldh  a, [c]                                      ; $5566: $f2
	ld   d, $f5                                      ; $5567: $16 $f5
	ld   de, $ff1e                                   ; $5569: $11 $1e $ff
	push af                                          ; $556c: $f5
	jr   @+$01                                       ; $556d: $18 $ff

	cp   d                                           ; $556f: $ba
	add  $11                                         ; $5570: $c6 $11
	ld   de, $ffff                                   ; $5572: $11 $ff $ff
	rst  $38                                         ; $5575: $ff
	jp   hl                                          ; $5576: $e9


	dec  [hl]                                        ; $5577: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5578: $cf
	ld   de, rAUD1LEN                                   ; $5579: $11 $11 $ff
	rst  $38                                         ; $557c: $ff
	sub  a                                           ; $557d: $97
	xor  [hl]                                        ; $557e: $ae
	sbc  $cc                                         ; $557f: $de $cc
	ld   de, $ef11                                   ; $5581: $11 $11 $ef
	rst  $38                                         ; $5584: $ff
	xor  $ff                                         ; $5585: $ee $ff
	add  a                                           ; $5587: $87
	call $1161                                       ; $5588: $cd $61 $11
	rra                                              ; $558b: $1f
	rst  $38                                         ; $558c: $ff
	rst  $38                                         ; $558d: $ff
	xor  b                                           ; $558e: $a8
	ld   h, a                                        ; $558f: $67
	rst  $38                                         ; $5590: $ff
	pop  bc                                          ; $5591: $c1
	ld   de, $ff1f                                   ; $5592: $11 $1f $ff
	push bc                                          ; $5595: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5596: $cf
	db   $fc                                         ; $5597: $fc
	ret                                              ; $5598: $c9


	ld   h, c                                        ; $5599: $61
	ld   de, $ff1f                                   ; $559a: $11 $1f $ff
	rst  $38                                         ; $559d: $ff
	cp   d                                           ; $559e: $ba
	sbc  d                                           ; $559f: $9a
	rst  $38                                         ; $55a0: $ff
	pop  bc                                          ; $55a1: $c1
	ld   de, $ff1f                                   ; $55a2: $11 $1f $ff
	ei                                               ; $55a5: $fb
	ld   a, d                                        ; $55a6: $7a
	db   $db                                         ; $55a7: $db
	db   $fd                                         ; $55a8: $fd
	and  c                                           ; $55a9: $a1
	ld   de, $ff1f                                   ; $55aa: $11 $1f $ff
	ei                                               ; $55ad: $fb
	rst  $28                                         ; $55ae: $ef
	ei                                               ; $55af: $fb
	xor  e                                           ; $55b0: $ab
	add  c                                           ; $55b1: $81
	ld   de, $ff1f                                   ; $55b2: $11 $1f $ff
	db   $fc                                         ; $55b5: $fc
	inc  sp                                          ; $55b6: $33
	ld   l, h                                        ; $55b7: $6c
	rst  $38                                         ; $55b8: $ff
	or   c                                           ; $55b9: $b1
	ld   de, $ff1f                                   ; $55ba: $11 $1f $ff
	or   l                                           ; $55bd: $b5
	xor  a                                           ; $55be: $af
	db   $fd                                         ; $55bf: $fd
	cp   c                                           ; $55c0: $b9
	add  c                                           ; $55c1: $81
	ld   de, $ff1f                                   ; $55c2: $11 $1f $ff
	ld   a, [$9e34]                                  ; $55c5: $fa $34 $9e
	rst  $38                                         ; $55c8: $ff
	sub  c                                           ; $55c9: $91
	ld   de, $ff1f                                   ; $55ca: $11 $1f $ff
	cp   b                                           ; $55cd: $b8
	rst  $38                                         ; $55ce: $ff
	ld   a, [$7157]                                  ; $55cf: $fa $57 $71
	ld   de, $ff1f                                   ; $55d2: $11 $1f $ff
	rst  $38                                         ; $55d5: $ff
	ld   d, h                                        ; $55d6: $54
	ld   l, d                                        ; $55d7: $6a
	rst  $38                                         ; $55d8: $ff
	sub  c                                           ; $55d9: $91
	ld   de, $ff1f                                   ; $55da: $11 $1f $ff
	push hl                                          ; $55dd: $e5
	ld   l, [hl]                                     ; $55de: $6e
	db   $fd                                         ; $55df: $fd
	ret  z                                           ; $55e0: $c8

	ld   de, $4f11                                   ; $55e1: $11 $11 $4f
	rst  $38                                         ; $55e4: $ff
	or   $3b                                         ; $55e5: $f6 $3b
	rst  JumpTable                                         ; $55e7: $df
	ld   sp, hl                                      ; $55e8: $f9
	ld   de, $6f11                                   ; $55e9: $11 $11 $6f
	rst  $38                                         ; $55ec: $ff
	db   $e4                                         ; $55ed: $e4
	ld   a, l                                        ; $55ee: $7d
	rst  $38                                         ; $55ef: $ff
	sub  e                                           ; $55f0: $93
	ld   de, $ef11                                   ; $55f1: $11 $11 $ef
	rst  $38                                         ; $55f4: $ff
	ld   hl, sp-$54                                  ; $55f5: $f8 $ac
	rst  $38                                         ; $55f7: $ff
	add  c                                           ; $55f8: $81
	ld   de, rAUD1LEN                                   ; $55f9: $11 $11 $ff
	rst  $38                                         ; $55fc: $ff
	and  [hl]                                        ; $55fd: $a6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55fe: $cf
	rst  $38                                         ; $55ff: $ff
	add  c                                           ; $5600: $81
	ld   de, $ff17                                   ; $5601: $11 $17 $ff
	rst  $38                                         ; $5604: $ff
	sbc  c                                           ; $5605: $99
	call z, $b1fe                                    ; $5606: $cc $fe $b1
	ld   de, $ff1d                                   ; $5609: $11 $1d $ff
	db   $fd                                         ; $560c: $fd
	ld   [hl], a                                     ; $560d: $77
	rst  $38                                         ; $560e: $ff
	ei                                               ; $560f: $fb
	ld   de, $1f11                                   ; $5610: $11 $11 $1f
	rst  $38                                         ; $5613: $ff
	ei                                               ; $5614: $fb
	ld   a, d                                        ; $5615: $7a
	rst  $38                                         ; $5616: $ff
	ld   sp, hl                                      ; $5617: $f9
	ld   de, $1f11                                   ; $5618: $11 $11 $1f
	rst  $38                                         ; $561b: $ff
	add  sp, $7b                                     ; $561c: $e8 $7b
	rst  $38                                         ; $561e: $ff
	rst  $30                                         ; $561f: $f7
	ld   de, $7f11                                   ; $5620: $11 $11 $7f
	rst  $38                                         ; $5623: $ff
	xor  b                                           ; $5624: $a8
	cp   a                                           ; $5625: $bf
	cp   $b4                                         ; $5626: $fe $b4
	ld   de, $bf11                                   ; $5628: $11 $11 $bf
	rst  $38                                         ; $562b: $ff
	xor  b                                           ; $562c: $a8
	rst  $38                                         ; $562d: $ff
	cp   $a2                                         ; $562e: $fe $a2
	ld   de, $9f11                                   ; $5630: $11 $11 $9f
	rst  $38                                         ; $5633: $ff
	ld   [hl], l                                     ; $5634: $75
	rst  $28                                         ; $5635: $ef
	rst  $38                                         ; $5636: $ff
	di                                               ; $5637: $f3
	ld   de, $bf11                                   ; $5638: $11 $11 $bf
	rst  $38                                         ; $563b: $ff
	ld   h, c                                        ; $563c: $61
	adc  a                                           ; $563d: $8f
	rst  $38                                         ; $563e: $ff
	ldh  a, [c]                                      ; $563f: $f2
	ld   de, $7f11                                   ; $5640: $11 $11 $7f
	rst  $38                                         ; $5643: $ff
	or   h                                           ; $5644: $b4
	ld   e, l                                        ; $5645: $5d
	rst  $38                                         ; $5646: $ff
	ld   a, [$1111]                                  ; $5647: $fa $11 $11
	ld   e, a                                        ; $564a: $5f
	rst  $38                                         ; $564b: $ff
	reti                                             ; $564c: $d9


	xor  [hl]                                        ; $564d: $ae
	rst  $38                                         ; $564e: $ff
	ei                                               ; $564f: $fb
	ld   de, $1f11                                   ; $5650: $11 $11 $1f
	rst  $38                                         ; $5653: $ff
	ei                                               ; $5654: $fb
	xor  d                                           ; $5655: $aa
	call z, $11fd                                    ; $5656: $cc $fd $11
	ld   de, $ff1f                                   ; $5659: $11 $1f $ff
	ld   a, [$fe9f]                                  ; $565c: $fa $9f $fe
	ei                                               ; $565f: $fb
	ld   de, $1f11                                   ; $5660: $11 $11 $1f
	rst  $38                                         ; $5663: $ff
	db   $eb                                         ; $5664: $eb
	adc  a                                           ; $5665: $8f
	db   $fc                                         ; $5666: $fc
	ld   sp, hl                                      ; $5667: $f9
	ld   hl, $1c11                                   ; $5668: $21 $11 $1c
	rst  $38                                         ; $566b: $ff
	cp   $45                                         ; $566c: $fe $45
	sbc  l                                           ; $566e: $9d
	rst  $38                                         ; $566f: $ff
	and  c                                           ; $5670: $a1
	ld   de, $ff1a                                   ; $5671: $11 $1a $ff
	ld   hl, sp+$4e                                  ; $5674: $f8 $4e
	rst  $38                                         ; $5676: $ff
	ld   a, [$1131]                                  ; $5677: $fa $31 $11
	ld   de, $ffff                                   ; $567a: $11 $ff $ff
	cp   d                                           ; $567d: $ba
	db   $ed                                         ; $567e: $ed
	cp   $b1                                         ; $567f: $fe $b1
	ld   de, rAUD1LEN                                   ; $5681: $11 $11 $ff
	rst  $38                                         ; $5684: $ff
	xor  c                                           ; $5685: $a9
	rst  $28                                         ; $5686: $ef
	rst  $38                                         ; $5687: $ff
	call nz, $1111                                   ; $5688: $c4 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $568b: $cf

jr_0f2_568c:
	rst  $38                                         ; $568c: $ff
	or   a                                           ; $568d: $b7
	ld   a, a                                        ; $568e: $7f
	rst  $38                                         ; $568f: $ff
	ld   sp, hl                                      ; $5690: $f9
	ld   de, $1f11                                   ; $5691: $11 $11 $1f
	rst  $38                                         ; $5694: $ff
	db   $fc                                         ; $5695: $fc
	ld   d, a                                        ; $5696: $57
	cp   h                                           ; $5697: $bc
	rst  $38                                         ; $5698: $ff
	sub  c                                           ; $5699: $91
	ld   de, $ff19                                   ; $569a: $11 $19 $ff
	rst  $38                                         ; $569d: $ff
	or   a                                           ; $569e: $b7
	db   $eb                                         ; $569f: $eb
	cp   a                                           ; $56a0: $bf
	or   d                                           ; $56a1: $b2
	ld   de, rAUD1LEN                                   ; $56a2: $11 $11 $ff
	rst  $38                                         ; $56a5: $ff
	pop  bc                                          ; $56a6: $c1
	ld   l, d                                        ; $56a7: $6a
	rst  $38                                         ; $56a8: $ff
	db   $fc                                         ; $56a9: $fc
	ld   de, $8f11                                   ; $56aa: $11 $11 $8f
	rst  $38                                         ; $56ad: $ff
	rst  $30                                         ; $56ae: $f7
	jr   c, jr_0f2_568c                              ; $56af: $38 $db

	rst  $38                                         ; $56b1: $ff
	sub  c                                           ; $56b2: $91
	ld   de, $ff1a                                   ; $56b3: $11 $1a $ff
	cp   $63                                         ; $56b6: $fe $63
	xor  [hl]                                        ; $56b8: $ae
	rst  $28                                         ; $56b9: $ef
	rst  $30                                         ; $56ba: $f7
	ld   de, rAUD1LEN                                   ; $56bb: $11 $11 $ff
	rst  $38                                         ; $56be: $ff
	ld   h, h                                        ; $56bf: $64
	dec  sp                                          ; $56c0: $3b
	cp   $ff                                         ; $56c1: $fe $ff
	ld   b, c                                        ; $56c3: $41
	ld   de, $ff1f                                   ; $56c4: $11 $1f $ff
	or   $38                                         ; $56c7: $f6 $38
	cp   d                                           ; $56c9: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56ca: $cf
	ld   a, [$1111]                                  ; $56cb: $fa $11 $11
	rst  $38                                         ; $56ce: $ff
	rst  $38                                         ; $56cf: $ff
	ld   b, h                                        ; $56d0: $44
	cp   a                                           ; $56d1: $bf
	jp   c, $a1df                                    ; $56d2: $da $df $a1

	ld   de, $ff1f                                   ; $56d5: $11 $1f $ff
	pop  af                                          ; $56d8: $f1
	ld   a, [de]                                     ; $56d9: $1a
	db   $fc                                         ; $56da: $fc
	ld   l, a                                        ; $56db: $6f
	ld   sp, hl                                      ; $56dc: $f9
	ld   de, rAUD1LEN                                   ; $56dd: $11 $11 $ff
	rst  $38                                         ; $56e0: $ff
	ld   de, $dd9f                                   ; $56e1: $11 $9f $dd
	rst  $28                                         ; $56e4: $ef
	pop  bc                                          ; $56e5: $c1
	ld   de, $ff1f                                   ; $56e6: $11 $1f $ff
	ldh  a, [c]                                      ; $56e9: $f2
	add  hl, de                                      ; $56ea: $19
	cp   $ac                                         ; $56eb: $fe $ac
	ld   sp, hl                                      ; $56ed: $f9
	ld   de, rAUD1LEN                                   ; $56ee: $11 $11 $ff
	rst  $38                                         ; $56f1: $ff
	add  [hl]                                        ; $56f2: $86
	ld   a, c                                        ; $56f3: $79
	cp   d                                           ; $56f4: $ba
	rst  JumpTable                                         ; $56f5: $df
	pop  af                                          ; $56f6: $f1
	ld   de, $ff1c                                   ; $56f7: $11 $1c $ff
	ld   hl, sp+$4d                                  ; $56fa: $f8 $4d
	db   $fd                                         ; $56fc: $fd
	ld   e, b                                        ; $56fd: $58
	rst  $28                                         ; $56fe: $ef
	ld   d, c                                        ; $56ff: $51
	ld   de, $ff3f                                   ; $5700: $11 $3f $ff
	jp   hl                                          ; $5703: $e9


	cp   $a4                                         ; $5704: $fe $a4
	cpl                                              ; $5706: $2f
	cp   $11                                         ; $5707: $fe $11
	ld   de, $feff                                   ; $5709: $11 $ff $fe
	sbc  h                                           ; $570c: $9c
	ld   [$df64], a                                  ; $570d: $ea $64 $df
	pop  de                                          ; $5710: $d1
	ld   de, $ff1f                                   ; $5711: $11 $1f $ff
	db   $fc                                         ; $5714: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5715: $cf
	and  l                                           ; $5716: $a5
	add  h                                           ; $5717: $84
	rst  $38                                         ; $5718: $ff
	ld   sp, $1f11                                   ; $5719: $31 $11 $1f
	rst  $38                                         ; $571c: $ff
	ld   sp, hl                                      ; $571d: $f9
	rst  $28                                         ; $571e: $ef
	jp   nc, $ff27                                   ; $571f: $d2 $27 $ff

	ld   de, $df11                                   ; $5722: $11 $11 $df
	rst  $38                                         ; $5725: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5726: $cf
	rst  $38                                         ; $5727: $ff
	ld   hl, $ff3f                                   ; $5728: $21 $3f $ff
	ld   de, rAUD1LEN                                   ; $572b: $11 $11 $ff
	db   $fc                                         ; $572e: $fc
	xor  a                                           ; $572f: $af
	rst  $38                                         ; $5730: $ff
	ld   de, $f71f                                   ; $5731: $11 $1f $f7
	ld   de, $ff16                                   ; $5734: $11 $16 $ff
	ld   a, [$fabf]                                  ; $5737: $fa $bf $fa
	ld   de, $f1cf                                   ; $573a: $11 $cf $f1
	ld   de, $ff1a                                   ; $573d: $11 $1a $ff
	db   $fd                                         ; $5740: $fd
	rst  $38                                         ; $5741: $ff
	ld   hl, sp+$13                                  ; $5742: $f8 $13
	xor  a                                           ; $5744: $af
	pop  af                                          ; $5745: $f1
	ld   de, $ff1f                                   ; $5746: $11 $1f $ff
	ld   sp, hl                                      ; $5749: $f9
	rst  $38                                         ; $574a: $ff
	ld   hl, sp+$11                                  ; $574b: $f8 $11
	xor  a                                           ; $574d: $af
	pop  af                                          ; $574e: $f1
	ld   de, $ff1c                                   ; $574f: $11 $1c $ff
	rst  $30                                         ; $5752: $f7
	rst  $38                                         ; $5753: $ff
	ld   hl, sp+$11                                  ; $5754: $f8 $11
	cp   a                                           ; $5756: $bf
	pop  af                                          ; $5757: $f1
	ld   de, $ff1a                                   ; $5758: $11 $1a $ff
	ld   hl, sp-$41                                  ; $575b: $f8 $bf
	ld   a, [$7f11]                                  ; $575d: $fa $11 $7f
	ldh  a, [c]                                      ; $5760: $f2
	ld   de, $ff1c                                   ; $5761: $11 $1c $ff
	and  a                                           ; $5764: $a7
	rst  $38                                         ; $5765: $ff
	ld   a, [$8f11]                                  ; $5766: $fa $11 $8f
	ld   hl, sp+$11                                  ; $5769: $f8 $11
	ld   de, $fcff                                   ; $576b: $11 $ff $fc
	rst  $28                                         ; $576e: $ef
	rst  $38                                         ; $576f: $ff
	ld   sp, $fe3f                                   ; $5770: $31 $3f $fe
	ld   de, $bf11                                   ; $5773: $11 $11 $bf
	rst  $38                                         ; $5776: $ff
	adc  l                                           ; $5777: $8d
	rst  $38                                         ; $5778: $ff
	jp   $ff19                                       ; $5779: $c3 $19 $ff


	sub  c                                           ; $577c: $91
	ld   de, $ff1f                                   ; $577d: $11 $1f $ff
	sbc  d                                           ; $5780: $9a
	rst  $38                                         ; $5781: $ff
	ld   sp, hl                                      ; $5782: $f9
	ld   de, $f3cf                                   ; $5783: $11 $cf $f3
	ld   de, $ff18                                   ; $5786: $11 $18 $ff
	db   $eb                                         ; $5789: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $578a: $cf
	rst  $38                                         ; $578b: $ff
	ld   b, c                                        ; $578c: $41
	ld   l, a                                        ; $578d: $6f
	rst  $38                                         ; $578e: $ff
	ld   de, $9f11                                   ; $578f: $11 $11 $9f
	ld   sp, hl                                      ; $5792: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5793: $cf
	rst  $38                                         ; $5794: $ff
	sub  d                                           ; $5795: $92
	add  hl, hl                                      ; $5796: $29
	rst  $38                                         ; $5797: $ff
	add  c                                           ; $5798: $81
	ld   de, $ef1a                                   ; $5799: $11 $1a $ef
	rst  $38                                         ; $579c: $ff
	xor  $fd                                         ; $579d: $ee $fd
	ld   [hl], h                                     ; $579f: $74
	ld   e, e                                        ; $57a0: $5b
	ei                                               ; $57a1: $fb
	ld   de, $ac11                                   ; $57a2: $11 $11 $ac
	db   $db                                         ; $57a5: $db
	sbc  a                                           ; $57a6: $9f
	db   $fd                                         ; $57a7: $fd
	and  h                                           ; $57a8: $a4
	jr   @+$01                                       ; $57a9: $18 $ff

	ld   h, c                                        ; $57ab: $61
	ld   de, $681c                                   ; $57ac: $11 $1c $68
	rst  $38                                         ; $57af: $ff
	rst  $38                                         ; $57b0: $ff
	ld   sp, hl                                      ; $57b1: $f9
	ld   b, [hl]                                     ; $57b2: $46
	xor  a                                           ; $57b3: $af
	push de                                          ; $57b4: $d5
	ld   de, $8613                                   ; $57b5: $11 $13 $86
	xor  [hl]                                        ; $57b8: $ae
	rst  JumpTable                                         ; $57b9: $df
	rst  $38                                         ; $57ba: $ff
	and  a                                           ; $57bb: $a7
	ld   h, [hl]                                     ; $57bc: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57bd: $cf
	sub  d                                           ; $57be: $92
	ld   de, $cd17                                   ; $57bf: $11 $17 $cd
	jp   z, $fccf                                    ; $57c2: $ca $cf $fc

	or   e                                           ; $57c5: $b3
	ld   a, h                                        ; $57c6: $7c
	db   $ed                                         ; $57c7: $ed
	ld   de, $ba11                                   ; $57c8: $11 $11 $ba
	sub  h                                           ; $57cb: $94
	ld   e, a                                        ; $57cc: $5f
	rst  $38                                         ; $57cd: $ff
	or   a                                           ; $57ce: $b7
	ld   e, c                                        ; $57cf: $59
	xor  $c6                                         ; $57d0: $ee $c6
	ld   de, $a914                                   ; $57d2: $11 $14 $a9
	daa                                              ; $57d5: $27
	rst  JumpTable                                         ; $57d6: $df
	db   $fc                                         ; $57d7: $fc
	halt                                             ; $57d8: $76
	xor  a                                           ; $57d9: $af
	cp   a                                           ; $57da: $bf
	sub  c                                           ; $57db: $91
	ld   de, $9366                                   ; $57dc: $11 $66 $93
	add  hl, de                                      ; $57df: $19
	cp   a                                           ; $57e0: $bf
	db   $fc                                         ; $57e1: $fc
	adc  h                                           ; $57e2: $8c
	xor  e                                           ; $57e3: $ab
	cp   d                                           ; $57e4: $ba
	sub  h                                           ; $57e5: $94
	ld   de, $6327                                   ; $57e6: $11 $27 $63
	ld   b, e                                        ; $57e9: $43
	rst  $38                                         ; $57ea: $ff
	ei                                               ; $57eb: $fb
	ld   h, a                                        ; $57ec: $67
	ld   l, a                                        ; $57ed: $6f
	db   $eb                                         ; $57ee: $eb
	add  e                                           ; $57ef: $83
	ld   de, $6365                                   ; $57f0: $11 $65 $63
	ld   [hl], $df                                   ; $57f3: $36 $df
	call c, $cf75                                    ; $57f5: $dc $75 $cf
	sbc  e                                           ; $57f8: $9b
	and  c                                           ; $57f9: $a1
	ld   [hl+], a                                    ; $57fa: $22
	inc  de                                          ; $57fb: $13
	ld   [hl], h                                     ; $57fc: $74
	ld   l, c                                        ; $57fd: $69
	xor  h                                           ; $57fe: $ac
	rst  $28                                         ; $57ff: $ef
	sbc  d                                           ; $5800: $9a
	cp   b                                           ; $5801: $b8
	xor  c                                           ; $5802: $a9
	ret                                              ; $5803: $c9


	ld   b, c                                        ; $5804: $41
	inc  de                                          ; $5805: $13
	ld   a, c                                        ; $5806: $79
	halt                                             ; $5807: $76
	adc  d                                           ; $5808: $8a
	db   $ec                                         ; $5809: $ec
	or   l                                           ; $580a: $b5
	adc  h                                           ; $580b: $8c
	cp   d                                           ; $580c: $ba
	sbc  c                                           ; $580d: $99
	ld   d, l                                        ; $580e: $55
	inc  hl                                          ; $580f: $23
	ld   e, c                                        ; $5810: $59
	halt                                             ; $5811: $76
	ld   [hl], a                                     ; $5812: $77
	call c, $66b8                                    ; $5813: $dc $b8 $66
	adc  $89                                         ; $5816: $ce $89
	ld   [hl], l                                     ; $5818: $75
	ld   h, [hl]                                     ; $5819: $66
	ld   d, h                                        ; $581a: $54
	halt                                             ; $581b: $76
	ld   e, b                                        ; $581c: $58
	adc  d                                           ; $581d: $8a
	cp   c                                           ; $581e: $b9
	ld   a, b                                        ; $581f: $78
	sbc  l                                           ; $5820: $9d
	jp   z, $6496                                    ; $5821: $ca $96 $64

	ld   d, l                                        ; $5824: $55
	ld   l, c                                        ; $5825: $69
	add  [hl]                                        ; $5826: $86
	ld   h, [hl]                                     ; $5827: $66
	adc  h                                           ; $5828: $8c
	cp   c                                           ; $5829: $b9
	adc  c                                           ; $582a: $89
	sbc  d                                           ; $582b: $9a
	xor  b                                           ; $582c: $a8
	ld   h, l                                        ; $582d: $65
	ld   d, h                                        ; $582e: $54
	ld   l, c                                        ; $582f: $69
	adc  b                                           ; $5830: $88
	ld   d, l                                        ; $5831: $55
	adc  e                                           ; $5832: $8b
	ret  z                                           ; $5833: $c8

	halt                                             ; $5834: $76
	ld   a, e                                        ; $5835: $7b
	cp   c                                           ; $5836: $b9
	ld   [hl], a                                     ; $5837: $77
	add  [hl]                                        ; $5838: $86
	ld   d, a                                        ; $5839: $57
	ld   a, c                                        ; $583a: $79
	sub  a                                           ; $583b: $97
	ld   [hl], a                                     ; $583c: $77
	ld   a, c                                        ; $583d: $79
	sub  a                                           ; $583e: $97
	ld   h, a                                        ; $583f: $67
	xor  h                                           ; $5840: $ac
	and  a                                           ; $5841: $a7
	ld   e, b                                        ; $5842: $58
	sub  a                                           ; $5843: $97
	ld   [hl], l                                     ; $5844: $75
	ld   a, d                                        ; $5845: $7a
	xor  c                                           ; $5846: $a9
	ld   [hl], l                                     ; $5847: $75
	ld   l, b                                        ; $5848: $68
	sbc  b                                           ; $5849: $98
	sbc  c                                           ; $584a: $99
	sbc  c                                           ; $584b: $99
	sub  a                                           ; $584c: $97
	ld   h, a                                        ; $584d: $67
	ld   a, c                                        ; $584e: $79
	adc  b                                           ; $584f: $88
	add  a                                           ; $5850: $87
	add  a                                           ; $5851: $87
	ld   l, b                                        ; $5852: $68
	sbc  b                                           ; $5853: $98
	sbc  b                                           ; $5854: $98
	ld   [hl], a                                     ; $5855: $77
	sbc  d                                           ; $5856: $9a
	sbc  b                                           ; $5857: $98
	halt                                             ; $5858: $76
	ld   a, c                                        ; $5859: $79
	adc  b                                           ; $585a: $88
	ld   [hl], a                                     ; $585b: $77
	sbc  b                                           ; $585c: $98
	adc  b                                           ; $585d: $88
	ld   [hl], a                                     ; $585e: $77
	adc  d                                           ; $585f: $8a
	sbc  c                                           ; $5860: $99
	add  a                                           ; $5861: $87
	ld   a, c                                        ; $5862: $79
	sbc  c                                           ; $5863: $99
	add  a                                           ; $5864: $87
	ld   [hl], a                                     ; $5865: $77
	adc  c                                           ; $5866: $89
	adc  b                                           ; $5867: $88
	ld   a, b                                        ; $5868: $78
	adc  b                                           ; $5869: $88
	ld   [hl], a                                     ; $586a: $77
	ld   a, b                                        ; $586b: $78
	sbc  d                                           ; $586c: $9a
	sbc  b                                           ; $586d: $98
	ld   [hl], a                                     ; $586e: $77
	ld   a, b                                        ; $586f: $78
	sbc  c                                           ; $5870: $99
	adc  c                                           ; $5871: $89
	add  a                                           ; $5872: $87
	ld   [hl], a                                     ; $5873: $77
	adc  b                                           ; $5874: $88
	sbc  b                                           ; $5875: $98
	adc  b                                           ; $5876: $88
	sbc  c                                           ; $5877: $99
	add  a                                           ; $5878: $87
	ld   [hl], a                                     ; $5879: $77
	sbc  b                                           ; $587a: $98
	adc  b                                           ; $587b: $88
	add  a                                           ; $587c: $87
	ld   a, b                                        ; $587d: $78
	ld   a, b                                        ; $587e: $78
	sbc  c                                           ; $587f: $99
	adc  b                                           ; $5880: $88
	ld   a, b                                        ; $5881: $78
	adc  b                                           ; $5882: $88
	adc  b                                           ; $5883: $88
	adc  b                                           ; $5884: $88
	adc  c                                           ; $5885: $89
	adc  b                                           ; $5886: $88
	ld   a, b                                        ; $5887: $78
	adc  b                                           ; $5888: $88
	sbc  c                                           ; $5889: $99
	sbc  b                                           ; $588a: $98
	adc  b                                           ; $588b: $88
	add  a                                           ; $588c: $87
	adc  c                                           ; $588d: $89
	adc  b                                           ; $588e: $88
	adc  b                                           ; $588f: $88
	adc  b                                           ; $5890: $88
	adc  b                                           ; $5891: $88
	adc  b                                           ; $5892: $88
	adc  c                                           ; $5893: $89
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
	adc  c                                           ; $592e: $89
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
	ld   [hl], a                                     ; $593e: $77
	adc  b                                           ; $593f: $88
	adc  b                                           ; $5940: $88
	ld   [hl], a                                     ; $5941: $77
	adc  b                                           ; $5942: $88
	adc  b                                           ; $5943: $88
	ld   [hl], a                                     ; $5944: $77
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
	ld   [hl], a                                     ; $5952: $77
	adc  c                                           ; $5953: $89
	sbc  b                                           ; $5954: $98
	add  a                                           ; $5955: $87
	ld   a, b                                        ; $5956: $78
	adc  b                                           ; $5957: $88
	add  a                                           ; $5958: $87
	adc  c                                           ; $5959: $89
	adc  b                                           ; $595a: $88
	add  a                                           ; $595b: $87
	ld   a, b                                        ; $595c: $78
	adc  c                                           ; $595d: $89
	add  a                                           ; $595e: $87
	adc  b                                           ; $595f: $88
	adc  b                                           ; $5960: $88
	add  a                                           ; $5961: $87
	adc  b                                           ; $5962: $88
	sbc  b                                           ; $5963: $98
	add  a                                           ; $5964: $87
	ld   [hl], a                                     ; $5965: $77
	adc  c                                           ; $5966: $89
	adc  b                                           ; $5967: $88
	adc  b                                           ; $5968: $88
	adc  b                                           ; $5969: $88
	ld   [hl], a                                     ; $596a: $77
	adc  b                                           ; $596b: $88
	sbc  c                                           ; $596c: $99
	add  a                                           ; $596d: $87
	ld   [hl], a                                     ; $596e: $77
	ld   a, b                                        ; $596f: $78
	sbc  b                                           ; $5970: $98
	sbc  b                                           ; $5971: $98
	ld   [hl], a                                     ; $5972: $77
	add  a                                           ; $5973: $87
	adc  c                                           ; $5974: $89
	adc  b                                           ; $5975: $88
	sbc  b                                           ; $5976: $98
	adc  b                                           ; $5977: $88
	ld   [hl], a                                     ; $5978: $77
	ld   a, b                                        ; $5979: $78
	adc  b                                           ; $597a: $88
	adc  c                                           ; $597b: $89
	sbc  b                                           ; $597c: $98
	add  a                                           ; $597d: $87
	ld   [hl], a                                     ; $597e: $77
	ld   a, b                                        ; $597f: $78
	adc  c                                           ; $5980: $89
	sbc  c                                           ; $5981: $99
	halt                                             ; $5982: $76
	ld   h, [hl]                                     ; $5983: $66
	ld   a, c                                        ; $5984: $79
	sbc  c                                           ; $5985: $99
	sbc  b                                           ; $5986: $98
	add  a                                           ; $5987: $87
	ld   [hl], a                                     ; $5988: $77
	ld   h, a                                        ; $5989: $67
	sbc  c                                           ; $598a: $99
	sbc  d                                           ; $598b: $9a
	add  [hl]                                        ; $598c: $86
	ld   h, [hl]                                     ; $598d: $66
	ld   a, c                                        ; $598e: $79
	adc  b                                           ; $598f: $88
	xor  d                                           ; $5990: $aa
	sbc  c                                           ; $5991: $99
	ld   h, [hl]                                     ; $5992: $66
	ld   a, c                                        ; $5993: $79
	adc  d                                           ; $5994: $8a
	sbc  b                                           ; $5995: $98
	sbc  c                                           ; $5996: $99
	add  [hl]                                        ; $5997: $86
	ld   h, a                                        ; $5998: $67
	adc  d                                           ; $5999: $8a
	sub  a                                           ; $599a: $97
	ld   a, b                                        ; $599b: $78
	xor  d                                           ; $599c: $aa
	sub  l                                           ; $599d: $95
	ld   e, c                                        ; $599e: $59
	sbc  e                                           ; $599f: $9b
	and  l                                           ; $59a0: $a5
	ld   d, a                                        ; $59a1: $57
	xor  d                                           ; $59a2: $aa
	xor  b                                           ; $59a3: $a8
	ld   h, a                                        ; $59a4: $67
	adc  c                                           ; $59a5: $89
	ld   [hl], a                                     ; $59a6: $77
	ld   h, a                                        ; $59a7: $67
	sbc  e                                           ; $59a8: $9b
	sub  a                                           ; $59a9: $97
	ld   h, l                                        ; $59aa: $65
	ld   a, c                                        ; $59ab: $79
	xor  c                                           ; $59ac: $a9
	add  a                                           ; $59ad: $87
	ld   [hl], a                                     ; $59ae: $77
	ld   h, a                                        ; $59af: $67

jr_0f2_59b0:
	adc  c                                           ; $59b0: $89
	sbc  c                                           ; $59b1: $99
	xor  c                                           ; $59b2: $a9
	add  [hl]                                        ; $59b3: $86
	ld   h, a                                        ; $59b4: $67
	ld   a, c                                        ; $59b5: $79
	xor  d                                           ; $59b6: $aa
	xor  b                                           ; $59b7: $a8
	ld   h, a                                        ; $59b8: $67
	add  a                                           ; $59b9: $87
	ld   a, d                                        ; $59ba: $7a
	sbc  b                                           ; $59bb: $98
	adc  c                                           ; $59bc: $89
	ld   a, c                                        ; $59bd: $79
	xor  b                                           ; $59be: $a8
	ld   h, l                                        ; $59bf: $65
	ld   l, c                                        ; $59c0: $69
	cp   d                                           ; $59c1: $ba
	adc  b                                           ; $59c2: $88
	ld   d, [hl]                                     ; $59c3: $56
	adc  b                                           ; $59c4: $88
	adc  c                                           ; $59c5: $89
	ld   a, c                                        ; $59c6: $79
	cp   e                                           ; $59c7: $bb
	add  [hl]                                        ; $59c8: $86
	ld   b, l                                        ; $59c9: $45
	sbc  d                                           ; $59ca: $9a
	xor  c                                           ; $59cb: $a9
	adc  b                                           ; $59cc: $88
	add  a                                           ; $59cd: $87
	ld   l, b                                        ; $59ce: $68
	add  a                                           ; $59cf: $87
	xor  e                                           ; $59d0: $ab
	xor  d                                           ; $59d1: $aa
	and  [hl]                                        ; $59d2: $a6
	ld   b, l                                        ; $59d3: $45
	ld   a, d                                        ; $59d4: $7a
	xor  b                                           ; $59d5: $a8
	ld   a, b                                        ; $59d6: $78
	adc  c                                           ; $59d7: $89
	sbc  b                                           ; $59d8: $98
	ld   h, [hl]                                     ; $59d9: $66
	sbc  e                                           ; $59da: $9b
	sbc  b                                           ; $59db: $98
	sub  l                                           ; $59dc: $95
	ld   b, l                                        ; $59dd: $45
	xor  d                                           ; $59de: $aa
	cp   e                                           ; $59df: $bb
	sbc  b                                           ; $59e0: $98
	ld   a, c                                        ; $59e1: $79
	sbc  b                                           ; $59e2: $98
	ld   [hl], a                                     ; $59e3: $77
	adc  b                                           ; $59e4: $88
	cp   d                                           ; $59e5: $ba
	ld   h, [hl]                                     ; $59e6: $66
	ld   a, b                                        ; $59e7: $78
	xor  d                                           ; $59e8: $aa
	xor  c                                           ; $59e9: $a9
	sub  a                                           ; $59ea: $97
	ld   l, b                                        ; $59eb: $68
	ld   h, a                                        ; $59ec: $67
	sbc  d                                           ; $59ed: $9a
	sbc  b                                           ; $59ee: $98
	add  a                                           ; $59ef: $87
	sbc  c                                           ; $59f0: $99
	add  a                                           ; $59f1: $87
	sbc  b                                           ; $59f2: $98
	ld   a, c                                        ; $59f3: $79
	ld   h, e                                        ; $59f4: $63
	ld   l, b                                        ; $59f5: $68
	adc  c                                           ; $59f6: $89
	cp   c                                           ; $59f7: $b9
	sbc  d                                           ; $59f8: $9a
	add  [hl]                                        ; $59f9: $86
	ld   l, b                                        ; $59fa: $68
	add  a                                           ; $59fb: $87
	ld   a, b                                        ; $59fc: $78
	ld   [hl], a                                     ; $59fd: $77
	sbc  d                                           ; $59fe: $9a
	adc  d                                           ; $59ff: $8a
	xor  b                                           ; $5a00: $a8
	adc  b                                           ; $5a01: $88
	ld   [hl], l                                     ; $5a02: $75
	ld   l, c                                        ; $5a03: $69
	sbc  c                                           ; $5a04: $99
	sbc  c                                           ; $5a05: $99
	sbc  b                                           ; $5a06: $98
	sbc  b                                           ; $5a07: $98
	ld   d, h                                        ; $5a08: $54
	ld   e, c                                        ; $5a09: $59
	bit  6, [hl]                                     ; $5a0a: $cb $76
	halt                                             ; $5a0c: $76
	sbc  e                                           ; $5a0d: $9b
	xor  b                                           ; $5a0e: $a8
	ld   a, b                                        ; $5a0f: $78
	ld   a, c                                        ; $5a10: $79
	add  [hl]                                        ; $5a11: $86
	halt                                             ; $5a12: $76
	adc  e                                           ; $5a13: $8b
	ret  c                                           ; $5a14: $d8

	ld   h, a                                        ; $5a15: $67
	jr   c, jr_0f2_59b0                              ; $5a16: $38 $98

	ld   [hl], a                                     ; $5a18: $77
	adc  c                                           ; $5a19: $89
	sub  a                                           ; $5a1a: $97
	add  a                                           ; $5a1b: $87
	adc  b                                           ; $5a1c: $88
	sbc  b                                           ; $5a1d: $98
	ld   a, b                                        ; $5a1e: $78
	adc  b                                           ; $5a1f: $88
	ld   a, b                                        ; $5a20: $78
	ld   a, b                                        ; $5a21: $78
	adc  c                                           ; $5a22: $89
	ld   [hl], a                                     ; $5a23: $77
	ld   a, e                                        ; $5a24: $7b
	xor  c                                           ; $5a25: $a9
	sub  [hl]                                        ; $5a26: $96
	ld   h, [hl]                                     ; $5a27: $66
	adc  b                                           ; $5a28: $88
	xor  c                                           ; $5a29: $a9
	ld   a, c                                        ; $5a2a: $79
	add  a                                           ; $5a2b: $87
	ld   a, c                                        ; $5a2c: $79
	ld   a, b                                        ; $5a2d: $78
	sbc  c                                           ; $5a2e: $99
	adc  c                                           ; $5a2f: $89
	add  h                                           ; $5a30: $84
	ld   a, b                                        ; $5a31: $78
	adc  d                                           ; $5a32: $8a
	or   a                                           ; $5a33: $b7
	ld   l, c                                        ; $5a34: $69
	ld   [hl], a                                     ; $5a35: $77
	add  [hl]                                        ; $5a36: $86
	ld   a, b                                        ; $5a37: $78
	add  a                                           ; $5a38: $87
	adc  c                                           ; $5a39: $89
	ld   a, d                                        ; $5a3a: $7a
	sub  a                                           ; $5a3b: $97
	sbc  c                                           ; $5a3c: $99
	ld   [hl], a                                     ; $5a3d: $77
	and  [hl]                                        ; $5a3e: $a6
	adc  d                                           ; $5a3f: $8a
	ld   a, c                                        ; $5a40: $79
	cp   e                                           ; $5a41: $bb
	halt                                             ; $5a42: $76
	ld   d, l                                        ; $5a43: $55
	xor  e                                           ; $5a44: $ab
	adc  c                                           ; $5a45: $89
	sbc  b                                           ; $5a46: $98
	ld   h, a                                        ; $5a47: $67
	halt                                             ; $5a48: $76
	sbc  d                                           ; $5a49: $9a
	and  a                                           ; $5a4a: $a7
	ld   b, h                                        ; $5a4b: $44
	ld   e, b                                        ; $5a4c: $58
	xor  d                                           ; $5a4d: $aa
	xor  c                                           ; $5a4e: $a9
	sbc  c                                           ; $5a4f: $99
	sub  a                                           ; $5a50: $97
	ld   h, l                                        ; $5a51: $65
	ld   a, d                                        ; $5a52: $7a
	sbc  c                                           ; $5a53: $99
	add  [hl]                                        ; $5a54: $86
	ld   e, b                                        ; $5a55: $58
	ld   a, c                                        ; $5a56: $79
	db   $db                                         ; $5a57: $db
	ld   [hl], a                                     ; $5a58: $77
	add  l                                           ; $5a59: $85
	ld   a, b                                        ; $5a5a: $78
	ld   h, a                                        ; $5a5b: $67
	sbc  d                                           ; $5a5c: $9a
	call z, Call_0f2_6576                            ; $5a5d: $cc $76 $65
	ld   l, b                                        ; $5a60: $68
	ld   [hl], a                                     ; $5a61: $77
	cp   e                                           ; $5a62: $bb
	adc  c                                           ; $5a63: $89
	add  l                                           ; $5a64: $85
	ld   a, b                                        ; $5a65: $78
	xor  e                                           ; $5a66: $ab
	sub  [hl]                                        ; $5a67: $96
	ld   d, a                                        ; $5a68: $57
	ld   l, d                                        ; $5a69: $6a
	add  a                                           ; $5a6a: $87
	ld   [hl], a                                     ; $5a6b: $77
	res  2, l                                        ; $5a6c: $cb $95
	ld   b, l                                        ; $5a6e: $45
	sbc  e                                           ; $5a6f: $9b
	and  a                                           ; $5a70: $a7
	ld   b, l                                        ; $5a71: $45
	ld   l, c                                        ; $5a72: $69
	add  a                                           ; $5a73: $87
	sbc  c                                           ; $5a74: $99
	sbc  d                                           ; $5a75: $9a
	cp   c                                           ; $5a76: $b9
	ld   d, [hl]                                     ; $5a77: $56
	ld   b, a                                        ; $5a78: $47
	cp   e                                           ; $5a79: $bb
	ld   a, b                                        ; $5a7a: $78
	sub  l                                           ; $5a7b: $95
	xor  d                                           ; $5a7c: $aa
	ld   h, l                                        ; $5a7d: $65
	ld   a, e                                        ; $5a7e: $7b
	xor  e                                           ; $5a7f: $ab
	ld   [hl], l                                     ; $5a80: $75
	ld   l, c                                        ; $5a81: $69
	bit  6, l                                        ; $5a82: $cb $75
	adc  c                                           ; $5a84: $89
	cp   d                                           ; $5a85: $ba
	ld   h, l                                        ; $5a86: $65
	adc  b                                           ; $5a87: $88
	xor  e                                           ; $5a88: $ab
	halt                                             ; $5a89: $76
	sbc  c                                           ; $5a8a: $99
	sbc  b                                           ; $5a8b: $98
	ld   [hl], h                                     ; $5a8c: $74
	ld   l, e                                        ; $5a8d: $6b
	xor  c                                           ; $5a8e: $a9
	sub  [hl]                                        ; $5a8f: $96
	ld   l, c                                        ; $5a90: $69
	and  [hl]                                        ; $5a91: $a6
	sbc  b                                           ; $5a92: $98
	ld   h, a                                        ; $5a93: $67
	add  [hl]                                        ; $5a94: $86
	ld   l, c                                        ; $5a95: $69
	sbc  b                                           ; $5a96: $98
	xor  c                                           ; $5a97: $a9
	ld   [hl], a                                     ; $5a98: $77
	ld   h, [hl]                                     ; $5a99: $66
	ld   l, b                                        ; $5a9a: $68
	sbc  d                                           ; $5a9b: $9a
	xor  b                                           ; $5a9c: $a8
	add  [hl]                                        ; $5a9d: $86
	ld   d, a                                        ; $5a9e: $57
	ld   [hl], a                                     ; $5a9f: $77
	sbc  d                                           ; $5aa0: $9a
	xor  e                                           ; $5aa1: $ab
	sub  [hl]                                        ; $5aa2: $96
	ld   b, a                                        ; $5aa3: $47
	sbc  c                                           ; $5aa4: $99
	halt                                             ; $5aa5: $76
	add  a                                           ; $5aa6: $87
	xor  h                                           ; $5aa7: $ac
	sub  l                                           ; $5aa8: $95
	ld   l, e                                        ; $5aa9: $6b
	xor  c                                           ; $5aaa: $a9
	sub  l                                           ; $5aab: $95
	ld   [hl], $9b                                   ; $5aac: $36 $9b
	sbc  b                                           ; $5aae: $98
	ld   a, c                                        ; $5aaf: $79
	xor  c                                           ; $5ab0: $a9
	ld   h, [hl]                                     ; $5ab1: $66
	ld   a, c                                        ; $5ab2: $79
	xor  d                                           ; $5ab3: $aa
	ld   d, l                                        ; $5ab4: $55
	adc  b                                           ; $5ab5: $88
	xor  b                                           ; $5ab6: $a8
	add  a                                           ; $5ab7: $87
	ld   a, c                                        ; $5ab8: $79
	sbc  d                                           ; $5ab9: $9a
	ld   h, [hl]                                     ; $5aba: $66
	ld   h, [hl]                                     ; $5abb: $66
	adc  d                                           ; $5abc: $8a
	sbc  b                                           ; $5abd: $98
	sub  a                                           ; $5abe: $97
	ld   e, b                                        ; $5abf: $58
	sub  a                                           ; $5ac0: $97
	sbc  d                                           ; $5ac1: $9a
	add  a                                           ; $5ac2: $87
	sbc  b                                           ; $5ac3: $98
	ld   b, l                                        ; $5ac4: $45
	ld   l, c                                        ; $5ac5: $69
	bit  4, [hl]                                     ; $5ac6: $cb $66
	adc  c                                           ; $5ac8: $89
	xor  c                                           ; $5ac9: $a9
	ld   h, [hl]                                     ; $5aca: $66
	sbc  d                                           ; $5acb: $9a
	and  a                                           ; $5acc: $a7
	ld   d, e                                        ; $5acd: $53
	ld   a, c                                        ; $5ace: $79
	sbc  d                                           ; $5acf: $9a
	ld   a, b                                        ; $5ad0: $78
	ld   l, c                                        ; $5ad1: $69
	xor  c                                           ; $5ad2: $a9
	ld   h, [hl]                                     ; $5ad3: $66
	xor  c                                           ; $5ad4: $a9
	sbc  c                                           ; $5ad5: $99
	ld   [hl], a                                     ; $5ad6: $77
	sbc  c                                           ; $5ad7: $99
	halt                                             ; $5ad8: $76
	ld   l, b                                        ; $5ad9: $68
	sbc  e                                           ; $5ada: $9b
	sbc  c                                           ; $5adb: $99
	ld   [hl], l                                     ; $5adc: $75
	add  a                                           ; $5add: $87
	ld   [hl], a                                     ; $5ade: $77
	sbc  b                                           ; $5adf: $98
	xor  e                                           ; $5ae0: $ab
	add  [hl]                                        ; $5ae1: $86
	ld   d, a                                        ; $5ae2: $57
	ld   e, c                                        ; $5ae3: $59
	sbc  c                                           ; $5ae4: $99
	add  a                                           ; $5ae5: $87
	ld   [hl], l                                     ; $5ae6: $75
	halt                                             ; $5ae7: $76
	ld   a, d                                        ; $5ae8: $7a
	xor  c                                           ; $5ae9: $a9
	adc  b                                           ; $5aea: $88
	ld   h, a                                        ; $5aeb: $67
	ld   [hl], a                                     ; $5aec: $77
	xor  e                                           ; $5aed: $ab
	add  a                                           ; $5aee: $87
	sub  [hl]                                        ; $5aef: $96
	ld   l, c                                        ; $5af0: $69
	sub  a                                           ; $5af1: $97
	sbc  b                                           ; $5af2: $98
	ld   h, a                                        ; $5af3: $67
	add  a                                           ; $5af4: $87
	adc  c                                           ; $5af5: $89
	ld   [hl], a                                     ; $5af6: $77
	sbc  c                                           ; $5af7: $99
	xor  d                                           ; $5af8: $aa
	ld   d, l                                        ; $5af9: $55
	sbc  c                                           ; $5afa: $99
	adc  d                                           ; $5afb: $8a
	or   [hl]                                        ; $5afc: $b6
	adc  c                                           ; $5afd: $89
	ld   d, a                                        ; $5afe: $57
	add  [hl]                                        ; $5aff: $86
	ld   l, d                                        ; $5b00: $6a
	sbc  b                                           ; $5b01: $98
	xor  c                                           ; $5b02: $a9
	sub  a                                           ; $5b03: $97
	ld   [hl], l                                     ; $5b04: $75
	ld   d, a                                        ; $5b05: $57
	sbc  c                                           ; $5b06: $99
	ld   a, c                                        ; $5b07: $79
	sbc  b                                           ; $5b08: $98
	add  a                                           ; $5b09: $87
	ld   d, h                                        ; $5b0a: $54
	adc  d                                           ; $5b0b: $8a
	sbc  e                                           ; $5b0c: $9b
	add  h                                           ; $5b0d: $84
	ld   a, c                                        ; $5b0e: $79
	sbc  b                                           ; $5b0f: $98
	and  [hl]                                        ; $5b10: $a6
	ld   a, d                                        ; $5b11: $7a
	and  a                                           ; $5b12: $a7
	add  a                                           ; $5b13: $87
	ld   e, c                                        ; $5b14: $59
	xor  c                                           ; $5b15: $a9
	ld   [hl], a                                     ; $5b16: $77
	ld   a, d                                        ; $5b17: $7a
	db   $db                                         ; $5b18: $db
	ld   [hl], l                                     ; $5b19: $75
	ld   e, b                                        ; $5b1a: $58
	xor  d                                           ; $5b1b: $aa
	sub  a                                           ; $5b1c: $97
	ld   [hl], a                                     ; $5b1d: $77
	adc  d                                           ; $5b1e: $8a
	ld   [hl], a                                     ; $5b1f: $77
	ld   a, b                                        ; $5b20: $78
	sbc  d                                           ; $5b21: $9a
	cp   b                                           ; $5b22: $b8
	halt                                             ; $5b23: $76
	ld   b, [hl]                                     ; $5b24: $46
	ld   h, a                                        ; $5b25: $67
	xor  c                                           ; $5b26: $a9
	sbc  c                                           ; $5b27: $99
	cp   b                                           ; $5b28: $b8
	ld   h, a                                        ; $5b29: $67
	ld   a, b                                        ; $5b2a: $78
	xor  c                                           ; $5b2b: $a9
	sbc  b                                           ; $5b2c: $98
	ld   h, l                                        ; $5b2d: $65
	ld   l, b                                        ; $5b2e: $68
	ld   h, a                                        ; $5b2f: $67
	xor  c                                           ; $5b30: $a9
	sbc  e                                           ; $5b31: $9b
	and  [hl]                                        ; $5b32: $a6
	adc  b                                           ; $5b33: $88
	ld   h, a                                        ; $5b34: $67
	sub  a                                           ; $5b35: $97
	ld   a, d                                        ; $5b36: $7a
	ld   [hl], l                                     ; $5b37: $75
	ld   l, b                                        ; $5b38: $68
	sbc  d                                           ; $5b39: $9a
	cp   d                                           ; $5b3a: $ba
	add  a                                           ; $5b3b: $87
	adc  b                                           ; $5b3c: $88
	add  a                                           ; $5b3d: $87
	ld   [hl], a                                     ; $5b3e: $77
	ld   h, a                                        ; $5b3f: $67
	adc  d                                           ; $5b40: $8a
	sbc  d                                           ; $5b41: $9a
	sub  a                                           ; $5b42: $97
	xor  d                                           ; $5b43: $aa
	halt                                             ; $5b44: $76
	adc  b                                           ; $5b45: $88
	ld   a, d                                        ; $5b46: $7a
	sub  l                                           ; $5b47: $95
	ld   l, b                                        ; $5b48: $68
	sbc  b                                           ; $5b49: $98
	and  [hl]                                        ; $5b4a: $a6
	ld   l, c                                        ; $5b4b: $69
	xor  d                                           ; $5b4c: $aa
	and  a                                           ; $5b4d: $a7
	scf                                              ; $5b4e: $37
	and  a                                           ; $5b4f: $a7
	ld   a, c                                        ; $5b50: $79
	ld   [hl], a                                     ; $5b51: $77
	adc  c                                           ; $5b52: $89
	xor  d                                           ; $5b53: $aa
	sbc  b                                           ; $5b54: $98
	halt                                             ; $5b55: $76
	ld   h, a                                        ; $5b56: $67
	ld   [hl], a                                     ; $5b57: $77
	ld   d, a                                        ; $5b58: $57
	adc  c                                           ; $5b59: $89
	xor  e                                           ; $5b5a: $ab
	sub  a                                           ; $5b5b: $97
	sbc  c                                           ; $5b5c: $99
	adc  c                                           ; $5b5d: $89
	add  h                                           ; $5b5e: $84
	ld   d, a                                        ; $5b5f: $57
	sub  [hl]                                        ; $5b60: $96
	sbc  c                                           ; $5b61: $99
	ld   a, c                                        ; $5b62: $79
	and  a                                           ; $5b63: $a7
	ld   a, b                                        ; $5b64: $78
	sbc  b                                           ; $5b65: $98
	sub  a                                           ; $5b66: $97
	ld   l, d                                        ; $5b67: $6a
	sub  a                                           ; $5b68: $97
	adc  b                                           ; $5b69: $88
	ld   d, [hl]                                     ; $5b6a: $56
	sbc  b                                           ; $5b6b: $98
	sbc  e                                           ; $5b6c: $9b
	add  a                                           ; $5b6d: $87
	add  a                                           ; $5b6e: $87
	ld   h, a                                        ; $5b6f: $67
	ld   [hl], a                                     ; $5b70: $77
	adc  c                                           ; $5b71: $89
	adc  d                                           ; $5b72: $8a
	add  a                                           ; $5b73: $87
	sub  a                                           ; $5b74: $97
	ld   a, b                                        ; $5b75: $78
	add  a                                           ; $5b76: $87
	sbc  e                                           ; $5b77: $9b
	sub  a                                           ; $5b78: $97
	ld   [hl], a                                     ; $5b79: $77
	ld   e, c                                        ; $5b7a: $59
	sub  a                                           ; $5b7b: $97
	ld   a, b                                        ; $5b7c: $78
	ld   a, b                                        ; $5b7d: $78
	cp   b                                           ; $5b7e: $b8
	ld   a, c                                        ; $5b7f: $79
	ld   [hl], l                                     ; $5b80: $75
	sbc  c                                           ; $5b81: $99
	ld   h, a                                        ; $5b82: $67
	and  a                                           ; $5b83: $a7
	ld   l, c                                        ; $5b84: $69
	add  a                                           ; $5b85: $87
	sbc  c                                           ; $5b86: $99
	ld   h, a                                        ; $5b87: $67
	sbc  c                                           ; $5b88: $99
	ld   a, b                                        ; $5b89: $78
	add  a                                           ; $5b8a: $87
	adc  c                                           ; $5b8b: $89
	add  a                                           ; $5b8c: $87
	adc  b                                           ; $5b8d: $88
	xor  c                                           ; $5b8e: $a9
	add  [hl]                                        ; $5b8f: $86
	ld   h, a                                        ; $5b90: $67
	adc  d                                           ; $5b91: $8a
	add  a                                           ; $5b92: $87
	ld   l, b                                        ; $5b93: $68
	ld   [hl], a                                     ; $5b94: $77
	sbc  b                                           ; $5b95: $98
	ld   l, c                                        ; $5b96: $69
	xor  c                                           ; $5b97: $a9
	sbc  d                                           ; $5b98: $9a
	sub  [hl]                                        ; $5b99: $96
	ld   h, a                                        ; $5b9a: $67
	ld   a, b                                        ; $5b9b: $78
	sbc  c                                           ; $5b9c: $99
	ld   a, c                                        ; $5b9d: $79
	ld   [hl], a                                     ; $5b9e: $77
	sub  a                                           ; $5b9f: $97
	adc  d                                           ; $5ba0: $8a
	sbc  b                                           ; $5ba1: $98
	adc  b                                           ; $5ba2: $88
	ld   [hl], a                                     ; $5ba3: $77
	halt                                             ; $5ba4: $76
	ld   a, b                                        ; $5ba5: $78
	sbc  b                                           ; $5ba6: $98
	sbc  c                                           ; $5ba7: $99
	ld   a, c                                        ; $5ba8: $79
	sub  a                                           ; $5ba9: $97
	adc  b                                           ; $5baa: $88
	ld   d, [hl]                                     ; $5bab: $56
	sbc  c                                           ; $5bac: $99
	sbc  e                                           ; $5bad: $9b
	ld   h, l                                        ; $5bae: $65
	adc  c                                           ; $5baf: $89
	xor  b                                           ; $5bb0: $a8
	add  l                                           ; $5bb1: $85
	ld   e, c                                        ; $5bb2: $59
	sbc  c                                           ; $5bb3: $99
	add  [hl]                                        ; $5bb4: $86
	ld   l, b                                        ; $5bb5: $68
	xor  d                                           ; $5bb6: $aa
	and  [hl]                                        ; $5bb7: $a6
	ld   d, a                                        ; $5bb8: $57
	sbc  d                                           ; $5bb9: $9a
	ld   [hl], a                                     ; $5bba: $77
	ld   [hl], a                                     ; $5bbb: $77
	adc  c                                           ; $5bbc: $89
	halt                                             ; $5bbd: $76
	sbc  b                                           ; $5bbe: $98
	sbc  b                                           ; $5bbf: $98
	add  a                                           ; $5bc0: $87
	ld   a, d                                        ; $5bc1: $7a
	ld   h, a                                        ; $5bc2: $67
	adc  b                                           ; $5bc3: $88
	adc  d                                           ; $5bc4: $8a
	adc  b                                           ; $5bc5: $88
	add  a                                           ; $5bc6: $87
	ld   a, c                                        ; $5bc7: $79
	and  a                                           ; $5bc8: $a7
	ld   [hl], a                                     ; $5bc9: $77
	halt                                             ; $5bca: $76
	sbc  d                                           ; $5bcb: $9a
	ld   l, c                                        ; $5bcc: $69
	sub  a                                           ; $5bcd: $97
	sbc  c                                           ; $5bce: $99
	halt                                             ; $5bcf: $76
	ld   [hl], a                                     ; $5bd0: $77
	ld   a, c                                        ; $5bd1: $79
	xor  b                                           ; $5bd2: $a8
	adc  b                                           ; $5bd3: $88
	adc  b                                           ; $5bd4: $88
	and  a                                           ; $5bd5: $a7
	ld   d, a                                        ; $5bd6: $57
	ld   l, b                                        ; $5bd7: $68
	xor  d                                           ; $5bd8: $aa
	sub  a                                           ; $5bd9: $97
	adc  b                                           ; $5bda: $88
	sbc  c                                           ; $5bdb: $99
	ld   [hl], a                                     ; $5bdc: $77
	adc  b                                           ; $5bdd: $88
	sbc  c                                           ; $5bde: $99
	add  [hl]                                        ; $5bdf: $86
	add  [hl]                                        ; $5be0: $86
	ld   l, c                                        ; $5be1: $69
	sbc  d                                           ; $5be2: $9a
	sbc  b                                           ; $5be3: $98
	ld   [hl], a                                     ; $5be4: $77
	adc  b                                           ; $5be5: $88
	sbc  c                                           ; $5be6: $99
	halt                                             ; $5be7: $76
	add  a                                           ; $5be8: $87
	adc  b                                           ; $5be9: $88
	add  a                                           ; $5bea: $87
	sbc  d                                           ; $5beb: $9a
	sbc  d                                           ; $5bec: $9a
	ld   [hl], a                                     ; $5bed: $77
	ld   h, [hl]                                     ; $5bee: $66
	adc  b                                           ; $5bef: $88
	adc  b                                           ; $5bf0: $88
	sbc  b                                           ; $5bf1: $98
	adc  b                                           ; $5bf2: $88
	adc  b                                           ; $5bf3: $88
	sbc  c                                           ; $5bf4: $99
	ld   a, b                                        ; $5bf5: $78
	adc  d                                           ; $5bf6: $8a
	add  a                                           ; $5bf7: $87
	ld   h, l                                        ; $5bf8: $65
	adc  c                                           ; $5bf9: $89
	sbc  c                                           ; $5bfa: $99
	ld   a, b                                        ; $5bfb: $78
	sbc  e                                           ; $5bfc: $9b
	xor  c                                           ; $5bfd: $a9
	halt                                             ; $5bfe: $76
	adc  b                                           ; $5bff: $88
	sub  [hl]                                        ; $5c00: $96
	ld   h, a                                        ; $5c01: $67
	sbc  d                                           ; $5c02: $9a
	xor  b                                           ; $5c03: $a8
	ld   l, b                                        ; $5c04: $68
	adc  c                                           ; $5c05: $89
	sub  a                                           ; $5c06: $97
	ld   l, b                                        ; $5c07: $68
	xor  b                                           ; $5c08: $a8
	add  a                                           ; $5c09: $87
	ld   h, [hl]                                     ; $5c0a: $66
	sbc  e                                           ; $5c0b: $9b
	sbc  c                                           ; $5c0c: $99
	ld   [hl], a                                     ; $5c0d: $77
	sbc  c                                           ; $5c0e: $99
	add  a                                           ; $5c0f: $87
	ld   h, a                                        ; $5c10: $67
	adc  c                                           ; $5c11: $89
	xor  c                                           ; $5c12: $a9
	adc  b                                           ; $5c13: $88
	ld   a, b                                        ; $5c14: $78
	adc  b                                           ; $5c15: $88
	ld   [hl], a                                     ; $5c16: $77
	adc  c                                           ; $5c17: $89
	xor  c                                           ; $5c18: $a9
	sub  [hl]                                        ; $5c19: $96
	ld   h, a                                        ; $5c1a: $67
	adc  e                                           ; $5c1b: $8b
	sub  a                                           ; $5c1c: $97
	ld   a, b                                        ; $5c1d: $78
	adc  c                                           ; $5c1e: $89
	sub  a                                           ; $5c1f: $97
	ld   d, a                                        ; $5c20: $57
	sbc  c                                           ; $5c21: $99
	xor  c                                           ; $5c22: $a9
	ld   [hl], a                                     ; $5c23: $77
	sub  a                                           ; $5c24: $97
	ld   a, b                                        ; $5c25: $78
	ld   a, b                                        ; $5c26: $78
	sbc  c                                           ; $5c27: $99
	adc  b                                           ; $5c28: $88
	add  a                                           ; $5c29: $87
	ld   [hl], a                                     ; $5c2a: $77
	ld   a, b                                        ; $5c2b: $78
	adc  c                                           ; $5c2c: $89
	sub  a                                           ; $5c2d: $97
	ld   [hl], a                                     ; $5c2e: $77
	ld   a, b                                        ; $5c2f: $78
	sbc  b                                           ; $5c30: $98
	ld   a, b                                        ; $5c31: $78
	sbc  c                                           ; $5c32: $99
	sbc  b                                           ; $5c33: $98
	ld   d, [hl]                                     ; $5c34: $56
	ld   [hl], a                                     ; $5c35: $77
	sbc  e                                           ; $5c36: $9b
	sub  a                                           ; $5c37: $97
	sub  a                                           ; $5c38: $97
	ld   [hl], a                                     ; $5c39: $77
	ld   [hl], a                                     ; $5c3a: $77
	sbc  c                                           ; $5c3b: $99
	adc  b                                           ; $5c3c: $88
	add  a                                           ; $5c3d: $87
	ld   a, c                                        ; $5c3e: $79
	sbc  c                                           ; $5c3f: $99
	adc  b                                           ; $5c40: $88
	adc  c                                           ; $5c41: $89
	add  a                                           ; $5c42: $87
	ld   [hl], a                                     ; $5c43: $77
	ld   a, b                                        ; $5c44: $78
	sbc  c                                           ; $5c45: $99
	add  a                                           ; $5c46: $87
	ld   [hl], a                                     ; $5c47: $77
	adc  c                                           ; $5c48: $89
	adc  b                                           ; $5c49: $88
	ld   [hl], a                                     ; $5c4a: $77
	adc  c                                           ; $5c4b: $89
	add  a                                           ; $5c4c: $87
	ld   [hl], a                                     ; $5c4d: $77
	sbc  c                                           ; $5c4e: $99
	sub  a                                           ; $5c4f: $97
	ld   [hl], a                                     ; $5c50: $77
	ld   a, b                                        ; $5c51: $78
	sbc  b                                           ; $5c52: $98
	ld   [hl], a                                     ; $5c53: $77
	ld   [hl], a                                     ; $5c54: $77
	adc  b                                           ; $5c55: $88
	add  a                                           ; $5c56: $87
	adc  b                                           ; $5c57: $88
	adc  b                                           ; $5c58: $88
	adc  d                                           ; $5c59: $8a
	ld   [hl], a                                     ; $5c5a: $77
	adc  b                                           ; $5c5b: $88
	ld   a, b                                        ; $5c5c: $78
	ld   [hl], a                                     ; $5c5d: $77
	adc  b                                           ; $5c5e: $88
	adc  b                                           ; $5c5f: $88
	adc  b                                           ; $5c60: $88
	ld   a, c                                        ; $5c61: $79
	adc  c                                           ; $5c62: $89
	adc  b                                           ; $5c63: $88
	ld   h, a                                        ; $5c64: $67
	adc  c                                           ; $5c65: $89
	sbc  b                                           ; $5c66: $98
	ld   [hl], a                                     ; $5c67: $77
	adc  b                                           ; $5c68: $88
	sbc  c                                           ; $5c69: $99
	ld   a, b                                        ; $5c6a: $78
	adc  b                                           ; $5c6b: $88
	adc  c                                           ; $5c6c: $89
	ld   [hl], a                                     ; $5c6d: $77
	ld   a, b                                        ; $5c6e: $78
	sbc  c                                           ; $5c6f: $99
	sub  a                                           ; $5c70: $97
	sbc  b                                           ; $5c71: $98
	adc  b                                           ; $5c72: $88
	sbc  b                                           ; $5c73: $98
	ld   a, c                                        ; $5c74: $79
	adc  c                                           ; $5c75: $89
	sub  a                                           ; $5c76: $97
	ld   a, b                                        ; $5c77: $78
	sbc  c                                           ; $5c78: $99
	sbc  b                                           ; $5c79: $98
	ld   [hl], a                                     ; $5c7a: $77
	sbc  c                                           ; $5c7b: $99
	adc  b                                           ; $5c7c: $88
	add  a                                           ; $5c7d: $87
	ld   a, c                                        ; $5c7e: $79
	xor  b                                           ; $5c7f: $a8
	adc  b                                           ; $5c80: $88
	adc  b                                           ; $5c81: $88
	add  a                                           ; $5c82: $87
	ld   [hl], a                                     ; $5c83: $77
	ld   a, c                                        ; $5c84: $79
	sbc  b                                           ; $5c85: $98
	ld   a, b                                        ; $5c86: $78
	adc  b                                           ; $5c87: $88
	sbc  b                                           ; $5c88: $98
	adc  b                                           ; $5c89: $88
	sbc  c                                           ; $5c8a: $99
	adc  c                                           ; $5c8b: $89
	ld   [hl], a                                     ; $5c8c: $77
	ld   a, b                                        ; $5c8d: $78
	adc  b                                           ; $5c8e: $88
	adc  b                                           ; $5c8f: $88
	adc  b                                           ; $5c90: $88
	add  a                                           ; $5c91: $87
	ld   [hl], a                                     ; $5c92: $77
	adc  c                                           ; $5c93: $89
	sbc  c                                           ; $5c94: $99
	adc  c                                           ; $5c95: $89
	add  a                                           ; $5c96: $87
	ld   a, b                                        ; $5c97: $78
	ld   a, b                                        ; $5c98: $78
	adc  b                                           ; $5c99: $88
	adc  c                                           ; $5c9a: $89
	adc  b                                           ; $5c9b: $88
	add  a                                           ; $5c9c: $87
	ld   a, b                                        ; $5c9d: $78
	sbc  b                                           ; $5c9e: $98
	sbc  c                                           ; $5c9f: $99
	ld   [hl], a                                     ; $5ca0: $77
	adc  b                                           ; $5ca1: $88
	adc  b                                           ; $5ca2: $88
	adc  b                                           ; $5ca3: $88
	adc  c                                           ; $5ca4: $89
	adc  b                                           ; $5ca5: $88
	adc  b                                           ; $5ca6: $88
	adc  c                                           ; $5ca7: $89
	sbc  c                                           ; $5ca8: $99
	adc  b                                           ; $5ca9: $88
	adc  c                                           ; $5caa: $89
	add  a                                           ; $5cab: $87
	adc  b                                           ; $5cac: $88
	sbc  b                                           ; $5cad: $98
	sbc  b                                           ; $5cae: $98
	ld   [hl], a                                     ; $5caf: $77
	adc  c                                           ; $5cb0: $89
	sbc  b                                           ; $5cb1: $98
	ld   a, b                                        ; $5cb2: $78
	adc  c                                           ; $5cb3: $89
	adc  b                                           ; $5cb4: $88
	ld   a, b                                        ; $5cb5: $78
	adc  b                                           ; $5cb6: $88
	adc  c                                           ; $5cb7: $89
	adc  b                                           ; $5cb8: $88
	adc  b                                           ; $5cb9: $88
	adc  b                                           ; $5cba: $88
	add  a                                           ; $5cbb: $87
	adc  b                                           ; $5cbc: $88
	adc  b                                           ; $5cbd: $88
	adc  b                                           ; $5cbe: $88
	adc  c                                           ; $5cbf: $89
	sbc  b                                           ; $5cc0: $98
	adc  b                                           ; $5cc1: $88
	ld   a, b                                        ; $5cc2: $78
	adc  b                                           ; $5cc3: $88
	adc  b                                           ; $5cc4: $88
	add  a                                           ; $5cc5: $87
	ld   a, b                                        ; $5cc6: $78
	adc  b                                           ; $5cc7: $88
	adc  b                                           ; $5cc8: $88
	adc  c                                           ; $5cc9: $89
	sbc  b                                           ; $5cca: $98
	adc  b                                           ; $5ccb: $88
	ld   a, b                                        ; $5ccc: $78
	adc  b                                           ; $5ccd: $88
	adc  b                                           ; $5cce: $88
	ld   [hl], a                                     ; $5ccf: $77
	adc  b                                           ; $5cd0: $88
	adc  b                                           ; $5cd1: $88
	adc  b                                           ; $5cd2: $88
	sbc  c                                           ; $5cd3: $99
	adc  b                                           ; $5cd4: $88
	add  a                                           ; $5cd5: $87
	adc  b                                           ; $5cd6: $88
	sbc  b                                           ; $5cd7: $98
	adc  b                                           ; $5cd8: $88
	adc  c                                           ; $5cd9: $89
	sbc  b                                           ; $5cda: $98
	ld   a, b                                        ; $5cdb: $78
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
	adc  c                                           ; $5f5e: $89
	sbc  b                                           ; $5f5f: $98
	ld   a, c                                        ; $5f60: $79
	adc  c                                           ; $5f61: $89
	add  a                                           ; $5f62: $87
	adc  c                                           ; $5f63: $89
	adc  b                                           ; $5f64: $88
	sbc  b                                           ; $5f65: $98
	adc  b                                           ; $5f66: $88
	xor  c                                           ; $5f67: $a9
	adc  c                                           ; $5f68: $89
	adc  b                                           ; $5f69: $88
	xor  d                                           ; $5f6a: $aa
	adc  c                                           ; $5f6b: $89
	adc  d                                           ; $5f6c: $8a
	sbc  c                                           ; $5f6d: $99
	xor  b                                           ; $5f6e: $a8
	ld   a, d                                        ; $5f6f: $7a
	and  a                                           ; $5f70: $a7
	ld   d, a                                        ; $5f71: $57
	adc  c                                           ; $5f72: $89
	sub  l                                           ; $5f73: $95
	ld   c, c                                        ; $5f74: $49
	sbc  c                                           ; $5f75: $99
	ld   [hl], l                                     ; $5f76: $75
	sbc  c                                           ; $5f77: $99
	sub  a                                           ; $5f78: $97
	ld   d, l                                        ; $5f79: $55
	add  [hl]                                        ; $5f7a: $86
	ld   h, l                                        ; $5f7b: $65
	ld   d, a                                        ; $5f7c: $57
	ld   h, l                                        ; $5f7d: $65
	ld   h, a                                        ; $5f7e: $67
	ld   h, a                                        ; $5f7f: $67
	ld   h, [hl]                                     ; $5f80: $66
	adc  b                                           ; $5f81: $88
	ld   d, l                                        ; $5f82: $55
	ld   [hl], a                                     ; $5f83: $77
	halt                                             ; $5f84: $76
	ld   h, a                                        ; $5f85: $67
	add  [hl]                                        ; $5f86: $86
	ld   a, b                                        ; $5f87: $78
	ld   [hl], a                                     ; $5f88: $77
	ld   h, a                                        ; $5f89: $67
	ld   [hl], a                                     ; $5f8a: $77
	ld   h, [hl]                                     ; $5f8b: $66
	ld   d, [hl]                                     ; $5f8c: $56
	halt                                             ; $5f8d: $76
	ld   d, l                                        ; $5f8e: $55
	adc  d                                           ; $5f8f: $8a
	ld   a, c                                        ; $5f90: $79
	sbc  d                                           ; $5f91: $9a
	ret                                              ; $5f92: $c9


	xor  d                                           ; $5f93: $aa
	sbc  d                                           ; $5f94: $9a
	add  h                                           ; $5f95: $84
	inc  sp                                          ; $5f96: $33
	ld   de, $5921                                   ; $5f97: $11 $21 $59
	cp   e                                           ; $5f9a: $bb
	cp   [hl]                                        ; $5f9b: $be
	rst  $38                                         ; $5f9c: $ff
	cp   $c8                                         ; $5f9d: $fe $c8
	ld   d, e                                        ; $5f9f: $53
	ld   hl, $1111                                   ; $5fa0: $21 $11 $11
	ld   c, c                                        ; $5fa3: $49
	cp   [hl]                                        ; $5fa4: $be
	rst  $38                                         ; $5fa5: $ff
	rst  $38                                         ; $5fa6: $ff
	rst  $38                                         ; $5fa7: $ff
	db   $fc                                         ; $5fa8: $fc
	ld   de, $1111                                   ; $5fa9: $11 $11 $11
	ld   de, $ff6f                                   ; $5fac: $11 $6f $ff
	rst  $38                                         ; $5faf: $ff
	rst  $38                                         ; $5fb0: $ff
	rst  $38                                         ; $5fb1: $ff
	xor  d                                           ; $5fb2: $aa
	pop  hl                                          ; $5fb3: $e1
	ld   de, $1111                                   ; $5fb4: $11 $11 $11
	rra                                              ; $5fb7: $1f
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	ld   sp, hl                                      ; $5fbb: $f9
	db   $ed                                         ; $5fbc: $ed
	ld   h, d                                        ; $5fbd: $62
	ld   de, $1111                                   ; $5fbe: $11 $11 $11
	xor  a                                           ; $5fc1: $af
	rst  $38                                         ; $5fc2: $ff
	rst  $38                                         ; $5fc3: $ff
	ei                                               ; $5fc4: $fb
	inc  sp                                          ; $5fc5: $33
	cp   $21                                         ; $5fc6: $fe $21
	ld   de, $1611                                   ; $5fc8: $11 $11 $16
	rst  $38                                         ; $5fcb: $ff
	rst  $38                                         ; $5fcc: $ff
	rst  $38                                         ; $5fcd: $ff
	sub  l                                           ; $5fce: $95
	add  hl, de                                      ; $5fcf: $19
	push af                                          ; $5fd0: $f5
	ld   de, $1111                                   ; $5fd1: $11 $11 $11
	ld   a, $ff                                      ; $5fd4: $3e $ff
	rst  $38                                         ; $5fd6: $ff
	push af                                          ; $5fd7: $f5
	ld   de, $61be                                   ; $5fd8: $11 $be $61
	ld   de, $1311                                   ; $5fdb: $11 $11 $13
	sbc  a                                           ; $5fde: $9f
	rst  $38                                         ; $5fdf: $ff
	db   $fd                                         ; $5fe0: $fd
	ld   de, $fb6f                                   ; $5fe1: $11 $6f $fb
	ld   de, $1111                                   ; $5fe4: $11 $11 $11
	dec  de                                          ; $5fe7: $1b
	rst  $38                                         ; $5fe8: $ff
	rst  $38                                         ; $5fe9: $ff
	pop  bc                                          ; $5fea: $c1
	ld   de, $c4df                                   ; $5feb: $11 $df $c4
	ld   de, $1611                                   ; $5fee: $11 $11 $16
	xor  a                                           ; $5ff1: $af
	rst  $38                                         ; $5ff2: $ff
	db   $fc                                         ; $5ff3: $fc
	ld   de, $ff1b                                   ; $5ff4: $11 $1b $ff
	ld   b, c                                        ; $5ff7: $41
	ld   de, $8616                                   ; $5ff8: $11 $16 $86
	rst  $38                                         ; $5ffb: $ff
	rst  $38                                         ; $5ffc: $ff
	pop  hl                                          ; $5ffd: $e1
	dec  d                                           ; $5ffe: $15
	rst  $38                                         ; $5fff: $ff
	pop  hl                                          ; $6000: $e1
	ld   de, $1811                                   ; $6001: $11 $11 $18
	rst  $28                                         ; $6004: $ef
	rst  $38                                         ; $6005: $ff
	di                                               ; $6006: $f3
	ld   de, $fb2f                                   ; $6007: $11 $2f $fb
	ld   de, $4111                                   ; $600a: $11 $11 $41
	ld   l, a                                        ; $600d: $6f
	rst  $38                                         ; $600e: $ff
	rst  $38                                         ; $600f: $ff
	ld   de, $ff1d                                   ; $6010: $11 $1d $ff
	ld   d, c                                        ; $6013: $51
	ld   de, $5d11                                   ; $6014: $11 $11 $5d
	rst  $38                                         ; $6017: $ff
	rst  $38                                         ; $6018: $ff
	pop  af                                          ; $6019: $f1
	ld   de, $facf                                   ; $601a: $11 $cf $fa
	ld   de, $af11                                   ; $601d: $11 $11 $af
	rst  $38                                         ; $6020: $ff
	rst  $38                                         ; $6021: $ff
	db   $fd                                         ; $6022: $fd
	ld   de, $ff1f                                   ; $6023: $11 $1f $ff
	ld   de, $8d11                                   ; $6026: $11 $11 $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6029: $cf
	rst  $38                                         ; $602a: $ff
	rst  $38                                         ; $602b: $ff
	ld   de, $ff1c                                   ; $602c: $11 $1c $ff
	ld   hl, $1911                                   ; $602f: $21 $11 $19
	rst  $38                                         ; $6032: $ff
	rst  $38                                         ; $6033: $ff
	rst  $38                                         ; $6034: $ff
	sub  c                                           ; $6035: $91
	rla                                              ; $6036: $17
	rst  $38                                         ; $6037: $ff
	ld   [hl], c                                     ; $6038: $71
	ld   de, $ff1c                                   ; $6039: $11 $1c $ff
	rst  $38                                         ; $603c: $ff
	rst  $38                                         ; $603d: $ff
	ld   d, c                                        ; $603e: $51
	inc  d                                           ; $603f: $14
	rst  $38                                         ; $6040: $ff
	ld   h, c                                        ; $6041: $61
	ld   de, $ff1f                                   ; $6042: $11 $1f $ff
	rst  $38                                         ; $6045: $ff
	rst  $38                                         ; $6046: $ff
	or   c                                           ; $6047: $b1
	ld   d, $fe                                      ; $6048: $16 $fe
	ld   de, $2f11                                   ; $604a: $11 $11 $2f
	rst  $38                                         ; $604d: $ff
	rst  $38                                         ; $604e: $ff
	rst  $38                                         ; $604f: $ff
	ld   [hl], c                                     ; $6050: $71
	ld   e, $fa                                      ; $6051: $1e $fa
	ld   de, $7f11                                   ; $6053: $11 $11 $7f
	rst  $38                                         ; $6056: $ff
	rst  $38                                         ; $6057: $ff
	db   $fd                                         ; $6058: $fd
	ld   de, $f45f                                   ; $6059: $11 $5f $f4
	ld   de, $ef11                                   ; $605c: $11 $11 $ef
	rst  $38                                         ; $605f: $ff
	rst  $38                                         ; $6060: $ff
	ld   hl, sp+$11                                  ; $6061: $f8 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6063: $cf
	pop  af                                          ; $6064: $f1
	ld   de, $ff15                                   ; $6065: $11 $15 $ff
	rst  $38                                         ; $6068: $ff
	rst  $28                                         ; $6069: $ef
	rst  $38                                         ; $606a: $ff
	ld   hl, $f1cf                                   ; $606b: $21 $cf $f1
	ld   de, $ff18                                   ; $606e: $11 $18 $ff
	cp   $8f                                         ; $6071: $fe $8f
	cp   $22                                         ; $6073: $fe $22
	rst  $38                                         ; $6075: $ff
	ld   d, c                                        ; $6076: $51
	ld   de, $ff1f                                   ; $6077: $11 $1f $ff
	and  a                                           ; $607a: $a7
	rst  $38                                         ; $607b: $ff
	ld   hl, sp+$17                                  ; $607c: $f8 $17
	rst  $38                                         ; $607e: $ff
	ld   de, $9f11                                   ; $607f: $11 $11 $9f
	rst  $38                                         ; $6082: $ff
	ld   a, [hl]                                     ; $6083: $7e
	rst  $38                                         ; $6084: $ff
	ld   sp, hl                                      ; $6085: $f9
	ld   e, a                                        ; $6086: $5f
	jp   $1111                                       ; $6087: $c3 $11 $11


	rst  JumpTable                                         ; $608a: $df
	rst  $38                                         ; $608b: $ff
	adc  h                                           ; $608c: $8c
	rst  $38                                         ; $608d: $ff
	ld   hl, sp+$5c                                  ; $608e: $f8 $5c
	or   e                                           ; $6090: $b3
	ld   de, rAUD1LEN                                   ; $6091: $11 $11 $ff
	ei                                               ; $6094: $fb
	adc  a                                           ; $6095: $8f
	cp   $f8                                         ; $6096: $fe $f8
	adc  a                                           ; $6098: $8f
	ld   hl, $1911                                   ; $6099: $21 $11 $19
	rst  $38                                         ; $609c: $ff
	ld   hl, sp-$21                                  ; $609d: $f8 $df
	rst  $38                                         ; $609f: $ff
	and  c                                           ; $60a0: $a1
	ld   l, a                                        ; $60a1: $6f
	ld   [hl], c                                     ; $60a2: $71
	ld   de, $ff1f                                   ; $60a3: $11 $1f $ff
	call nc, $ffff                                   ; $60a6: $d4 $ff $ff
	ld   de, $11be                                   ; $60a9: $11 $be $11
	ld   de, $ff4f                                   ; $60ac: $11 $4f $ff
	rst  $38                                         ; $60af: $ff
	rst  $38                                         ; $60b0: $ff
	ld   [hl], c                                     ; $60b1: $71
	jr   @-$08                                       ; $60b2: $18 $f6

	ld   de, $af11                                   ; $60b4: $11 $11 $af
	rst  $38                                         ; $60b7: $ff
	rst  $38                                         ; $60b8: $ff
	db   $fc                                         ; $60b9: $fc
	ld   d, c                                        ; $60ba: $51
	ld   a, a                                        ; $60bb: $7f
	pop  de                                          ; $60bc: $d1
	ld   de, rAUD1HIGH                                   ; $60bd: $11 $14 $ff
	rst  $38                                         ; $60c0: $ff
	rst  $38                                         ; $60c1: $ff
	ret  z                                           ; $60c2: $c8

	dec  hl                                          ; $60c3: $2b
	rst  $30                                         ; $60c4: $f7
	ld   de, $1a11                                   ; $60c5: $11 $11 $1a
	rst  $38                                         ; $60c8: $ff
	rst  $38                                         ; $60c9: $ff
	cp   $19                                         ; $60ca: $fe $19
	rst  JumpTable                                         ; $60cc: $df
	ldh  [c], a                                      ; $60cd: $e2
	ld   de, $af11                                   ; $60ce: $11 $11 $af
	rst  $38                                         ; $60d1: $ff
	xor  a                                           ; $60d2: $af
	db   $fd                                         ; $60d3: $fd
	db   $fd                                         ; $60d4: $fd
	add  hl, de                                      ; $60d5: $19
	add  c                                           ; $60d6: $81
	ld   de, $9f11                                   ; $60d7: $11 $11 $9f
	rst  $38                                         ; $60da: $ff
	db   $fd                                         ; $60db: $fd
	add  l                                           ; $60dc: $85
	rst  $38                                         ; $60dd: $ff
	cp   d                                           ; $60de: $ba
	ld   bc, $1311                                   ; $60df: $01 $11 $13
	rst  $28                                         ; $60e2: $ef
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	ld   hl, sp+$19                                  ; $60e5: $f8 $19
	cp   $71                                         ; $60e7: $fe $71
	ld   de, $ff1f                                   ; $60e9: $11 $1f $ff
	call z, Call_0f2_77ff                            ; $60ec: $cc $ff $77
	dec  hl                                          ; $60ef: $2b
	rst  $30                                         ; $60f0: $f7
	ld   de, $cf11                                   ; $60f1: $11 $11 $cf
	rst  $38                                         ; $60f4: $ff
	adc  $ff                                         ; $60f5: $ce $ff
	or   a                                           ; $60f7: $b7
	dec  l                                           ; $60f8: $2d
	di                                               ; $60f9: $f3
	ld   de, rAUD1LEN                                   ; $60fa: $11 $11 $ff
	rst  $38                                         ; $60fd: $ff
	ld   h, [hl]                                     ; $60fe: $66
	rst  $38                                         ; $60ff: $ff
	cp   l                                           ; $6100: $bd
	add  hl, de                                      ; $6101: $19
	pop  hl                                          ; $6102: $e1
	ld   de, $ff1c                                   ; $6103: $11 $1c $ff
	ei                                               ; $6106: $fb
	xor  a                                           ; $6107: $af
	ei                                               ; $6108: $fb
	ld   h, $dc                                      ; $6109: $26 $dc
	ld   de, $df11                                   ; $610b: $11 $11 $df
	rst  $38                                         ; $610e: $ff
	ld   c, h                                        ; $610f: $4c
	rst  $38                                         ; $6110: $ff
	push af                                          ; $6111: $f5
	ld   e, a                                        ; $6112: $5f
	ld   [hl], c                                     ; $6113: $71
	ld   de, $ff19                                   ; $6114: $11 $19 $ff
	ld   hl, sp-$61                                  ; $6117: $f8 $9f
	rst  $38                                         ; $6119: $ff
	push de                                          ; $611a: $d5
	ld   l, l                                        ; $611b: $6d
	ld   de, $2f11                                   ; $611c: $11 $11 $2f
	rst  $38                                         ; $611f: $ff
	ld   hl, sp-$01                                  ; $6120: $f8 $ff
	xor  l                                           ; $6122: $ad
	ld   b, a                                        ; $6123: $47
	push af                                          ; $6124: $f5
	ld   de, rAUD1LEN                                   ; $6125: $11 $11 $ff
	rst  $38                                         ; $6128: $ff
	ld   l, d                                        ; $6129: $6a
	rst  $38                                         ; $612a: $ff
	xor  d                                           ; $612b: $aa
	ld   a, b                                        ; $612c: $78
	and  c                                           ; $612d: $a1
	ld   de, $ff17                                   ; $612e: $11 $17 $ff
	db   $fc                                         ; $6131: $fc
	adc  [hl]                                        ; $6132: $8e
	db   $ed                                         ; $6133: $ed
	ld   a, [$1179]                                  ; $6134: $fa $79 $11
	ld   de, $ff6f                                   ; $6137: $11 $6f $ff
	jp   hl                                          ; $613a: $e9


	db   $fd                                         ; $613b: $fd
	rst  $28                                         ; $613c: $ef
	ld   a, c                                        ; $613d: $79
	pop  hl                                          ; $613e: $e1
	ld   de, rAUD1LEN                                   ; $613f: $11 $11 $ff
	rst  $38                                         ; $6142: $ff
	ld   a, l                                        ; $6143: $7d
	rst  $28                                         ; $6144: $ef
	ld   hl, sp-$68                                  ; $6145: $f8 $98
	sub  c                                           ; $6147: $91
	ld   de, rAUD1LOW                                   ; $6148: $11 $13 $ff
	cp   $9d                                         ; $614b: $fe $9d
	rst  $38                                         ; $614d: $ff
	sub  e                                           ; $614e: $93
	jp   c, $1141                                    ; $614f: $da $41 $11

	rra                                              ; $6152: $1f
	rst  $38                                         ; $6153: $ff
	cp   d                                           ; $6154: $ba
	rst  $38                                         ; $6155: $ff
	ld   hl, sp+$1a                                  ; $6156: $f8 $1a
	di                                               ; $6158: $f3
	ld   de, rAUD1LEN                                   ; $6159: $11 $11 $ff
	rst  $38                                         ; $615c: $ff
	ld   l, l                                        ; $615d: $6d
	call c, Call_0f2_7fd7                            ; $615e: $dc $d7 $7f
	or   c                                           ; $6161: $b1
	ld   de, $ff19                                   ; $6162: $11 $19 $ff
	db   $fc                                         ; $6165: $fc
	add  hl, hl                                      ; $6166: $29
	ld   a, h                                        ; $6167: $7c
	db   $fc                                         ; $6168: $fc
	push hl                                          ; $6169: $e5
	ld   de, rAUD1LEN                                   ; $616a: $11 $11 $ff
	rst  $38                                         ; $616d: $ff
	add  a                                           ; $616e: $87
	rst  JumpTable                                         ; $616f: $df
	jp   z, $914b                                    ; $6170: $ca $4b $91

	ld   de, $ff18                                   ; $6173: $11 $18 $ff
	db   $fc                                         ; $6176: $fc
	ld   a, h                                        ; $6177: $7c
	ld   a, d                                        ; $6178: $7a
	sbc  e                                           ; $6179: $9b
	ei                                               ; $617a: $fb
	ld   de, $bf11                                   ; $617b: $11 $11 $bf
	rst  $38                                         ; $617e: $ff
	add  sp, -$66                                    ; $617f: $e8 $9a
	ld   a, e                                        ; $6181: $7b
	sbc  $81                                         ; $6182: $de $81
	ld   de, $ff1e                                   ; $6184: $11 $1e $ff
	cp   $88                                         ; $6187: $fe $88
	ret                                              ; $6189: $c9


	xor  l                                           ; $618a: $ad
	jp   z, $1111                                    ; $618b: $ca $11 $11

	rst  JumpTable                                         ; $618e: $df
	rst  $38                                         ; $618f: $ff
	or   l                                           ; $6190: $b5
	ld   e, a                                        ; $6191: $5f
	ld   a, [$21fe]                                  ; $6192: $fa $fe $21
	ld   de, $ff1d                                   ; $6195: $11 $1d $ff
	db   $f4                                         ; $6198: $f4
	ld   d, $ff                                      ; $6199: $16 $ff
	cp   $d1                                         ; $619b: $fe $d1
	ld   de, $5f11                                   ; $619d: $11 $11 $5f
	rst  $38                                         ; $61a0: $ff
	pop  hl                                          ; $61a1: $e1
	ld   c, c                                        ; $61a2: $49
	rst  $38                                         ; $61a3: $ff
	rst  $38                                         ; $61a4: $ff
	pop  de                                          ; $61a5: $d1
	ld   de, rAUD1LEN                                   ; $61a6: $11 $11 $ff
	rst  $38                                         ; $61a9: $ff
	inc  [hl]                                        ; $61aa: $34
	rst  $38                                         ; $61ab: $ff
	rst  $28                                         ; $61ac: $ef
	sbc  h                                           ; $61ad: $9c
	sub  c                                           ; $61ae: $91
	ld   de, $ff1b                                   ; $61af: $11 $1b $ff
	ld   sp, hl                                      ; $61b2: $f9
	jr   @+$01                                       ; $61b3: $18 $ff

	db   $fc                                         ; $61b5: $fc
	cp   d                                           ; $61b6: $ba
	ld   de, $3f11                                   ; $61b7: $11 $11 $3f
	rst  $38                                         ; $61ba: $ff
	db   $f4                                         ; $61bb: $f4
	adc  d                                           ; $61bc: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61bd: $cf
	adc  $f1                                         ; $61be: $ce $f1
	ld   de, rAUD1LEN                                   ; $61c0: $11 $11 $ff
	rst  $38                                         ; $61c3: $ff
	ld   [hl+], a                                    ; $61c4: $22
	sbc  [hl]                                        ; $61c5: $9e
	cp   $fc                                         ; $61c6: $fe $fc
	ld   hl, $1f11                                   ; $61c8: $21 $11 $1f
	rst  $38                                         ; $61cb: $ff
	di                                               ; $61cc: $f3
	ld   a, [hl-]                                    ; $61cd: $3a
	rst  $38                                         ; $61ce: $ff
	db   $eb                                         ; $61cf: $eb
	jp   $1111                                       ; $61d0: $c3 $11 $11


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61d3: $cf
	rst  $38                                         ; $61d4: $ff
	sub  d                                           ; $61d5: $92
	ld   a, e                                        ; $61d6: $7b
	rst  $38                                         ; $61d7: $ff
	cp   $51                                         ; $61d8: $fe $51
	ld   de, $ff1d                                   ; $61da: $11 $1d $ff
	ld   a, [$ab28]                                  ; $61dd: $fa $28 $ab
	xor  $fe                                         ; $61e0: $ee $fe
	ld   de, $af11                                   ; $61e2: $11 $11 $af
	rst  $38                                         ; $61e5: $ff
	call nz, $b98b                                   ; $61e6: $c4 $8b $b9

jr_0f2_61e9:
	rst  JumpTable                                         ; $61e9: $df
	pop  bc                                          ; $61ea: $c1
	ld   de, rAUD1LEN                                   ; $61eb: $11 $11 $ff
	db   $fd                                         ; $61ee: $fd
	dec  h                                           ; $61ef: $25
	cp   [hl]                                        ; $61f0: $be
	set  7, a                                        ; $61f1: $cb $ff
	ld   de, $5f11                                   ; $61f3: $11 $11 $5f
	rst  $38                                         ; $61f6: $ff
	push af                                          ; $61f7: $f5
	ld   a, c                                        ; $61f8: $79
	sub  a                                           ; $61f9: $97
	cp   a                                           ; $61fa: $bf
	pop  af                                          ; $61fb: $f1
	ld   de, $ff15                                   ; $61fc: $11 $15 $ff
	db   $fc                                         ; $61ff: $fc
	ld   [hl-], a                                    ; $6200: $32
	xor  [hl]                                        ; $6201: $ae
	cp   a                                           ; $6202: $bf
	db   $fd                                         ; $6203: $fd
	ld   de, $6f11                                   ; $6204: $11 $11 $6f
	rst  $38                                         ; $6207: $ff
	pop  de                                          ; $6208: $d1
	jr   @-$22                                       ; $6209: $18 $dc

	rst  $38                                         ; $620b: $ff
	pop  af                                          ; $620c: $f1
	ld   de, rAUD1ENV                                   ; $620d: $11 $12 $ff
	cp   $13                                         ; $6210: $fe $13
	xor  l                                           ; $6212: $ad
	xor  [hl]                                        ; $6213: $ae
	rst  $38                                         ; $6214: $ff
	ld   de, $3f11                                   ; $6215: $11 $11 $3f
	rst  $38                                         ; $6218: $ff
	db   $f4                                         ; $6219: $f4
	ld   b, [hl]                                     ; $621a: $46
	adc  d                                           ; $621b: $8a
	rst  JumpTable                                         ; $621c: $df
	pop  af                                          ; $621d: $f1
	ld   de, rAUD1LEN                                   ; $621e: $11 $11 $ff
	rst  $38                                         ; $6221: $ff
	ld   hl, $cf36                                   ; $6222: $21 $36 $cf
	rst  $38                                         ; $6225: $ff
	ld   de, $2f11                                   ; $6226: $11 $11 $2f
	rst  $38                                         ; $6229: $ff
	push af                                          ; $622a: $f5
	ld   e, c                                        ; $622b: $59
	ld   [hl], a                                     ; $622c: $77
	cp   a                                           ; $622d: $bf
	db   $f4                                         ; $622e: $f4
	ld   de, rAUD1LEN                                   ; $622f: $11 $11 $ff
	rst  $38                                         ; $6232: $ff
	ld   b, d                                        ; $6233: $42
	ld   e, b                                        ; $6234: $58
	xor  h                                           ; $6235: $ac
	rst  $38                                         ; $6236: $ff
	ld   de, $3f11                                   ; $6237: $11 $11 $3f
	rst  $38                                         ; $623a: $ff
	pop  af                                          ; $623b: $f1
	jr   z, jr_0f2_61e9                              ; $623c: $28 $ab

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $623e: $cf
	pop  af                                          ; $623f: $f1
	ld   de, rAUD1HIGH                                   ; $6240: $11 $14 $ff
	rst  $38                                         ; $6243: $ff
	ld   de, $df6c                                   ; $6244: $11 $6c $df
	rst  $38                                         ; $6247: $ff
	ld   de, $2f11                                   ; $6248: $11 $11 $2f
	rst  $38                                         ; $624b: $ff
	di                                               ; $624c: $f3
	daa                                              ; $624d: $27
	sbc  c                                           ; $624e: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $624f: $cf
	ldh  a, [c]                                      ; $6250: $f2
	ld   de, rAUD1LEN                                   ; $6251: $11 $11 $ff
	rst  $38                                         ; $6254: $ff
	ld   d, c                                        ; $6255: $51
	sbc  c                                           ; $6256: $99
	ld   l, [hl]                                     ; $6257: $6e
	rst  $38                                         ; $6258: $ff
	ld   b, c                                        ; $6259: $41
	ld   de, $ff1f                                   ; $625a: $11 $1f $ff
	db   $f4                                         ; $625d: $f4
	jr   z, @-$77                                    ; $625e: $28 $87

	xor  a                                           ; $6260: $af
	di                                               ; $6261: $f3
	ld   de, rAUD1LEN                                   ; $6262: $11 $11 $ff
	rst  $38                                         ; $6265: $ff
	ld   d, d                                        ; $6266: $52
	ld   a, c                                        ; $6267: $79
	ld   e, d                                        ; $6268: $5a
	rst  $38                                         ; $6269: $ff
	ld   sp, $4f11                                   ; $626a: $31 $11 $4f
	rst  $38                                         ; $626d: $ff
	rst  $30                                         ; $626e: $f7
	ld   a, h                                        ; $626f: $7c
	sub  e                                           ; $6270: $93
	adc  l                                           ; $6271: $8d
	db   $f4                                         ; $6272: $f4
	ld   de, rAUD1LEN                                   ; $6273: $11 $11 $ff
	rst  $38                                         ; $6276: $ff
	ld   d, [hl]                                     ; $6277: $56
	jp   c, $df45                                    ; $6278: $da $45 $df

	ld   b, c                                        ; $627b: $41
	ld   de, $ff1f                                   ; $627c: $11 $1f $ff
	push af                                          ; $627f: $f5
	ld   e, h                                        ; $6280: $5c
	and  d                                           ; $6281: $a2
	ld   c, l                                        ; $6282: $4d
	db   $f4                                         ; $6283: $f4
	ld   de, rAUD1HIGH                                   ; $6284: $11 $14 $ff
	rst  $38                                         ; $6287: $ff
	add  [hl]                                        ; $6288: $86
	rst  $10                                         ; $6289: $d7
	jr   z, @+$01                                    ; $628a: $28 $ff

	ld   bc, $4f11                                   ; $628c: $01 $11 $4f
	rst  $38                                         ; $628f: $ff
	db   $fc                                         ; $6290: $fc
	cp   d                                           ; $6291: $ba
	ld   sp, $f55f                                   ; $6292: $31 $5f $f5
	ld   de, $ff1a                                   ; $6295: $11 $1a $ff
	rst  $38                                         ; $6298: $ff
	ld   a, h                                        ; $6299: $7c
	push de                                          ; $629a: $d5
	dec  d                                           ; $629b: $15
	rst  $38                                         ; $629c: $ff
	ld   de, $bf11                                   ; $629d: $11 $11 $bf
	rst  $38                                         ; $62a0: $ff
	ld   sp, hl                                      ; $62a1: $f9
	xor  d                                           ; $62a2: $aa
	ld   b, c                                        ; $62a3: $41
	ld   a, a                                        ; $62a4: $7f
	pop  af                                          ; $62a5: $f1
	ld   de, $ff1d                                   ; $62a6: $11 $1d $ff
	rst  $38                                         ; $62a9: $ff
	call $17c1                                       ; $62aa: $cd $c1 $17
	rst  $38                                         ; $62ad: $ff
	ld   de, $cf11                                   ; $62ae: $11 $11 $cf
	rst  $38                                         ; $62b1: $ff
	db   $fc                                         ; $62b2: $fc
	db   $eb                                         ; $62b3: $eb
	ld   de, $f16f                                   ; $62b4: $11 $6f $f1
	ld   de, $ff1e                                   ; $62b7: $11 $1e $ff
	rst  $38                                         ; $62ba: $ff
	rst  $38                                         ; $62bb: $ff
	pop  bc                                          ; $62bc: $c1
	inc  de                                          ; $62bd: $13
	rst  $38                                         ; $62be: $ff
	ld   de, rAUD1LEN                                   ; $62bf: $11 $11 $ff
	rst  $38                                         ; $62c2: $ff
	rst  $38                                         ; $62c3: $ff
	rst  $30                                         ; $62c4: $f7
	ld   de, $f14f                                   ; $62c5: $11 $4f $f1
	ld   de, $ff1f                                   ; $62c8: $11 $1f $ff
	rst  $38                                         ; $62cb: $ff
	rst  $38                                         ; $62cc: $ff
	sub  c                                           ; $62cd: $91
	inc  d                                           ; $62ce: $14
	rst  $38                                         ; $62cf: $ff
	ld   de, $ef11                                   ; $62d0: $11 $11 $ef
	rst  $38                                         ; $62d3: $ff
	rst  $38                                         ; $62d4: $ff
	ld   a, [$2f11]                                  ; $62d5: $fa $11 $2f
	or   $11                                         ; $62d8: $f6 $11
	ld   d, $ff                                      ; $62da: $16 $ff
	rst  $38                                         ; $62dc: $ff
	rst  $38                                         ; $62dd: $ff
	pop  de                                          ; $62de: $d1
	ld   de, $d1ff                                   ; $62df: $11 $ff $d1
	ld   de, $ff2f                                   ; $62e2: $11 $2f $ff
	rst  $38                                         ; $62e5: $ff
	rst  $38                                         ; $62e6: $ff
	ld   de, $ff1c                                   ; $62e7: $11 $1c $ff
	ld   de, rAUD1LEN                                   ; $62ea: $11 $11 $ff
	rst  $38                                         ; $62ed: $ff
	rst  $38                                         ; $62ee: $ff
	push af                                          ; $62ef: $f5
	ld   de, $f53f                                   ; $62f0: $11 $3f $f5
	ld   de, $ff16                                   ; $62f3: $11 $16 $ff
	rst  $38                                         ; $62f6: $ff
	rst  $38                                         ; $62f7: $ff
	pop  af                                          ; $62f8: $f1
	ld   de, $e1cf                                   ; $62f9: $11 $cf $e1
	ld   de, $ff1f                                   ; $62fc: $11 $1f $ff
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	ld   b, c                                        ; $6301: $41
	inc  d                                           ; $6302: $14
	rst  $38                                         ; $6303: $ff
	ld   de, $af11                                   ; $6304: $11 $11 $af
	rst  $38                                         ; $6307: $ff
	rst  $38                                         ; $6308: $ff
	db   $fd                                         ; $6309: $fd
	ld   de, $fa1d                                   ; $630a: $11 $1d $fa
	ld   de, rAUD1LEN                                   ; $630d: $11 $11 $ff
	rst  $38                                         ; $6310: $ff
	rst  $38                                         ; $6311: $ff
	db   $f4                                         ; $6312: $f4
	ld   de, $f45f                                   ; $6313: $11 $5f $f4
	ld   de, rAUD1HIGH                                   ; $6316: $11 $14 $ff
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	pop  af                                          ; $631b: $f1
	ld   de, $f18f                                   ; $631c: $11 $8f $f1
	ld   de, $ff16                                   ; $631f: $11 $16 $ff
	rst  $38                                         ; $6322: $ff
	rst  $38                                         ; $6323: $ff
	pop  af                                          ; $6324: $f1
	ld   de, $f16f                                   ; $6325: $11 $6f $f1
	ld   de, $ff18                                   ; $6328: $11 $18 $ff
	rst  $38                                         ; $632b: $ff
	rst  $38                                         ; $632c: $ff
	pop  af                                          ; $632d: $f1
	ld   de, $a15d                                   ; $632e: $11 $5d $a1
	ld   de, $ff19                                   ; $6331: $11 $19 $ff
	rst  $38                                         ; $6334: $ff
	rst  $38                                         ; $6335: $ff
	pop  af                                          ; $6336: $f1
	ld   de, $915c                                   ; $6337: $11 $5c $91
	ld   de, $ff19                                   ; $633a: $11 $19 $ff
	rst  $38                                         ; $633d: $ff
	rst  $38                                         ; $633e: $ff
	pop  af                                          ; $633f: $f1
	ld   de, $a14a                                   ; $6340: $11 $4a $a1
	ld   de, $ff16                                   ; $6343: $11 $16 $ff
	rst  $38                                         ; $6346: $ff
	rst  $38                                         ; $6347: $ff
	push af                                          ; $6348: $f5
	ld   de, $b419                                   ; $6349: $11 $19 $b4
	ld   de, $ce12                                   ; $634c: $11 $12 $ce
	rst  $38                                         ; $634f: $ff
	rst  $38                                         ; $6350: $ff
	ei                                               ; $6351: $fb
	ld   de, $a716                                   ; $6352: $11 $16 $a7
	ld   de, $ab11                                   ; $6355: $11 $11 $ab
	rst  $28                                         ; $6358: $ef
	rst  $38                                         ; $6359: $ff
	rst  $38                                         ; $635a: $ff
	ld   d, c                                        ; $635b: $51
	ld   [de], a                                     ; $635c: $12
	ld   d, [hl]                                     ; $635d: $56
	ld   de, $5e11                                   ; $635e: $11 $11 $5e
	rst  $38                                         ; $6361: $ff
	rst  $38                                         ; $6362: $ff
	rst  $38                                         ; $6363: $ff
	and  c                                           ; $6364: $a1
	ld   de, $1145                                   ; $6365: $11 $45 $11
	ld   de, $ef2c                                   ; $6368: $11 $2c $ef
	rst  $38                                         ; $636b: $ff
	rst  $38                                         ; $636c: $ff
	rst  $30                                         ; $636d: $f7
	ld   de, $3114                                   ; $636e: $11 $14 $31
	ld   de, $ef1d                                   ; $6371: $11 $1d $ef
	rst  $38                                         ; $6374: $ff
	rst  $38                                         ; $6375: $ff
	ld   a, [$1321]                                  ; $6376: $fa $21 $13
	ld   b, c                                        ; $6379: $41
	ld   de, $ab17                                   ; $637a: $11 $17 $ab
	rst  $38                                         ; $637d: $ff
	rst  $38                                         ; $637e: $ff
	rst  $38                                         ; $637f: $ff
	ld   [hl], c                                     ; $6380: $71
	ld   de, $1133                                   ; $6381: $11 $33 $11
	ld   de, $ff89                                   ; $6384: $11 $89 $ff
	rst  $38                                         ; $6387: $ff
	rst  $38                                         ; $6388: $ff
	call nc, $1211                                   ; $6389: $d4 $11 $12
	ld   de, $6a11                                   ; $638c: $11 $11 $6a
	rst  $38                                         ; $638f: $ff
	rst  $38                                         ; $6390: $ff
	rst  $38                                         ; $6391: $ff
	rst  $20                                         ; $6392: $e7
	ld   de, $1112                                   ; $6393: $11 $12 $11
	ld   de, $df39                                   ; $6396: $11 $39 $df
	rst  $38                                         ; $6399: $ff
	rst  $38                                         ; $639a: $ff
	ei                                               ; $639b: $fb
	ld   hl, $1111                                   ; $639c: $21 $11 $11
	ld   de, $cf1b                                   ; $639f: $11 $1b $cf
	rst  $38                                         ; $63a2: $ff
	rst  $38                                         ; $63a3: $ff
	rst  $38                                         ; $63a4: $ff
	ld   [hl], c                                     ; $63a5: $71
	ld   de, $1111                                   ; $63a6: $11 $11 $11
	dec  d                                           ; $63a9: $15
	adc  l                                           ; $63aa: $8d
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	rst  $38                                         ; $63ad: $ff
	db   $d3                                         ; $63ae: $d3
	ld   de, $1111                                   ; $63af: $11 $11 $11
	ld   de, $ff7a                                   ; $63b2: $11 $7a $ff
	rst  $38                                         ; $63b5: $ff
	rst  $38                                         ; $63b6: $ff
	ld   hl, sp+$11                                  ; $63b7: $f8 $11
	ld   de, $1111                                   ; $63b9: $11 $11 $11
	ld   a, c                                        ; $63bc: $79
	rst  $28                                         ; $63bd: $ef
	rst  $38                                         ; $63be: $ff
	rst  $38                                         ; $63bf: $ff
	db   $fd                                         ; $63c0: $fd
	ld   bc, $1111                                   ; $63c1: $01 $11 $11
	ld   de, $cf47                                   ; $63c4: $11 $47 $cf
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	rst  $38                                         ; $63c9: $ff
	ld   b, c                                        ; $63ca: $41
	ld   de, $1111                                   ; $63cb: $11 $11 $11
	rla                                              ; $63ce: $17
	ld   a, a                                        ; $63cf: $7f
	rst  $38                                         ; $63d0: $ff
	rst  $38                                         ; $63d1: $ff
	rst  $38                                         ; $63d2: $ff
	and  c                                           ; $63d3: $a1
	ld   de, $1111                                   ; $63d4: $11 $11 $11
	dec  d                                           ; $63d7: $15
	ld   e, h                                        ; $63d8: $5c
	rst  $38                                         ; $63d9: $ff
	rst  $38                                         ; $63da: $ff
	rst  $38                                         ; $63db: $ff
	push af                                          ; $63dc: $f5
	ld   de, $1111                                   ; $63dd: $11 $11 $11
	ld   de, rAUDVOL                                   ; $63e0: $11 $24 $ff
	rst  $38                                         ; $63e3: $ff
	rst  $38                                         ; $63e4: $ff
	cp   $21                                         ; $63e5: $fe $21
	ld   de, $1111                                   ; $63e7: $11 $11 $11
	ld   de, $ffaf                                   ; $63ea: $11 $af $ff
	rst  $38                                         ; $63ed: $ff
	rst  $38                                         ; $63ee: $ff
	ld   h, c                                        ; $63ef: $61
	ld   de, $1111                                   ; $63f0: $11 $11 $11
	ld   de, $ff1f                                   ; $63f3: $11 $1f $ff
	rst  $38                                         ; $63f6: $ff
	rst  $38                                         ; $63f7: $ff
	ldh  a, [c]                                      ; $63f8: $f2
	ld   de, $1111                                   ; $63f9: $11 $11 $11
	ld   de, $ff19                                   ; $63fc: $11 $19 $ff
	rst  $38                                         ; $63ff: $ff
	rst  $38                                         ; $6400: $ff
	rst  $30                                         ; $6401: $f7
	ld   de, $1111                                   ; $6402: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $6405: $11 $13 $ff
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	db   $fd                                         ; $640a: $fd
	ld   sp, $1111                                   ; $640b: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $640e: $11 $11 $ff
	rst  $38                                         ; $6411: $ff
	rst  $38                                         ; $6412: $ff
	rst  $38                                         ; $6413: $ff
	ld   d, h                                        ; $6414: $54
	ld   de, $1111                                   ; $6415: $11 $11 $11
	ld   de, $ffff                                   ; $6418: $11 $ff $ff
	rst  $38                                         ; $641b: $ff
	rst  $38                                         ; $641c: $ff
	sub  a                                           ; $641d: $97
	ld   de, $1111                                   ; $641e: $11 $11 $11
	ld   de, $ffcf                                   ; $6421: $11 $cf $ff
	rst  $38                                         ; $6424: $ff
	rst  $38                                         ; $6425: $ff
	db   $db                                         ; $6426: $db
	ld   b, c                                        ; $6427: $41
	ld   de, $1111                                   ; $6428: $11 $11 $11
	ld   l, a                                        ; $642b: $6f
	rst  $38                                         ; $642c: $ff
	rst  $38                                         ; $642d: $ff
	rst  $38                                         ; $642e: $ff
	rst  $38                                         ; $642f: $ff
	add  c                                           ; $6430: $81
	ld   de, $1111                                   ; $6431: $11 $11 $11
	inc  e                                           ; $6434: $1c
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	rst  $38                                         ; $6437: $ff
	rst  $38                                         ; $6438: $ff
	ldh  [c], a                                      ; $6439: $e2
	ld   de, $1111                                   ; $643a: $11 $11 $11
	ld   [de], a                                     ; $643d: $12
	rst  JumpTable                                         ; $643e: $df
	rst  $38                                         ; $643f: $ff
	rst  $38                                         ; $6440: $ff
	rst  $38                                         ; $6441: $ff
	ei                                               ; $6442: $fb
	ld   de, $1111                                   ; $6443: $11 $11 $11
	ld   de, $ff1e                                   ; $6446: $11 $1e $ff
	rst  $38                                         ; $6449: $ff
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	pop  bc                                          ; $644c: $c1
	ld   de, $1111                                   ; $644d: $11 $11 $11
	ld   de, $ffef                                   ; $6450: $11 $ef $ff
	rst  $38                                         ; $6453: $ff
	rst  $38                                         ; $6454: $ff
	cp   $21                                         ; $6455: $fe $21
	ld   de, $1111                                   ; $6457: $11 $11 $11
	dec  de                                          ; $645a: $1b
	rst  $38                                         ; $645b: $ff
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	rst  $38                                         ; $645e: $ff
	or   $11                                         ; $645f: $f6 $11
	ld   de, $1111                                   ; $6461: $11 $11 $11
	ld   l, a                                        ; $6464: $6f
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	rst  $38                                         ; $6467: $ff
	rst  $38                                         ; $6468: $ff
	and  c                                           ; $6469: $a1
	ld   de, $1111                                   ; $646a: $11 $11 $11
	ld   de, $ffcf                                   ; $646d: $11 $cf $ff
	rst  $38                                         ; $6470: $ff
	rst  $38                                         ; $6471: $ff
	rst  $38                                         ; $6472: $ff
	ld   d, c                                        ; $6473: $51
	ld   de, $1111                                   ; $6474: $11 $11 $11
	ld   [de], a                                     ; $6477: $12
	rst  $28                                         ; $6478: $ef
	rst  $38                                         ; $6479: $ff
	rst  $38                                         ; $647a: $ff
	rst  $38                                         ; $647b: $ff
	cp   $31                                         ; $647c: $fe $31
	ld   de, $1111                                   ; $647e: $11 $11 $11
	ld   d, $df                                      ; $6481: $16 $df
	rst  $38                                         ; $6483: $ff
	rst  $38                                         ; $6484: $ff
	rst  $38                                         ; $6485: $ff
	ei                                               ; $6486: $fb
	ld   sp, $1111                                   ; $6487: $31 $11 $11
	ld   de, $cf17                                   ; $648a: $11 $17 $cf
	rst  $38                                         ; $648d: $ff
	rst  $38                                         ; $648e: $ff
	rst  $38                                         ; $648f: $ff
	ei                                               ; $6490: $fb
	ld   d, c                                        ; $6491: $51
	ld   de, $1111                                   ; $6492: $11 $11 $11
	ld   d, $cf                                      ; $6495: $16 $cf
	rst  $38                                         ; $6497: $ff
	rst  $38                                         ; $6498: $ff
	rst  $38                                         ; $6499: $ff
	db   $fc                                         ; $649a: $fc
	ld   d, c                                        ; $649b: $51
	ld   de, $1111                                   ; $649c: $11 $11 $11
	inc  de                                          ; $649f: $13
	rst  JumpTable                                         ; $64a0: $df
	rst  $38                                         ; $64a1: $ff
	rst  $38                                         ; $64a2: $ff
	rst  $38                                         ; $64a3: $ff
	db   $fd                                         ; $64a4: $fd
	ld   d, c                                        ; $64a5: $51
	ld   de, $1111                                   ; $64a6: $11 $11 $11
	ld   [de], a                                     ; $64a9: $12
	cp   a                                           ; $64aa: $bf
	rst  $38                                         ; $64ab: $ff
	rst  $38                                         ; $64ac: $ff
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	ld   d, c                                        ; $64af: $51
	ld   de, $1111                                   ; $64b0: $11 $11 $11
	ld   de, $ff9f                                   ; $64b3: $11 $9f $ff
	rst  $38                                         ; $64b6: $ff
	rst  $38                                         ; $64b7: $ff
	rst  $38                                         ; $64b8: $ff
	add  c                                           ; $64b9: $81
	ld   de, $1111                                   ; $64ba: $11 $11 $11
	ld   de, $ff7f                                   ; $64bd: $11 $7f $ff
	rst  $38                                         ; $64c0: $ff
	rst  $38                                         ; $64c1: $ff
	rst  $38                                         ; $64c2: $ff
	or   d                                           ; $64c3: $b2
	ld   de, $1111                                   ; $64c4: $11 $11 $11
	ld   de, $ff2c                                   ; $64c7: $11 $2c $ff
	rst  $38                                         ; $64ca: $ff
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	or   $11                                         ; $64cd: $f6 $11
	ld   de, $1111                                   ; $64cf: $11 $11 $11
	ld   d, $ef                                      ; $64d2: $16 $ef
	rst  $38                                         ; $64d4: $ff
	rst  $38                                         ; $64d5: $ff
	rst  $38                                         ; $64d6: $ff
	ei                                               ; $64d7: $fb
	ld   b, c                                        ; $64d8: $41
	ld   de, $1111                                   ; $64d9: $11 $11 $11
	ld   [de], a                                     ; $64dc: $12
	sbc  a                                           ; $64dd: $9f
	rst  $38                                         ; $64de: $ff
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	sub  d                                           ; $64e2: $92
	ld   de, $1111                                   ; $64e3: $11 $11 $11
	ld   de, $ff4b                                   ; $64e6: $11 $4b $ff
	rst  $38                                         ; $64e9: $ff
	rst  $38                                         ; $64ea: $ff
	rst  $38                                         ; $64eb: $ff
	ld   hl, sp+$31                                  ; $64ec: $f8 $31
	ld   de, $1111                                   ; $64ee: $11 $11 $11
	inc  d                                           ; $64f1: $14
	xor  a                                           ; $64f2: $af
	rst  $38                                         ; $64f3: $ff
	rst  $38                                         ; $64f4: $ff
	rst  $38                                         ; $64f5: $ff
	rst  $38                                         ; $64f6: $ff
	sub  h                                           ; $64f7: $94
	ld   de, $1111                                   ; $64f8: $11 $11 $11
	ld   de, $ef48                                   ; $64fb: $11 $48 $ef
	rst  $38                                         ; $64fe: $ff
	rst  $38                                         ; $64ff: $ff
	rst  $38                                         ; $6500: $ff
	db   $fc                                         ; $6501: $fc
	ld   h, c                                        ; $6502: $61
	ld   de, $1111                                   ; $6503: $11 $11 $11
	ld   [de], a                                     ; $6506: $12
	ld   a, h                                        ; $6507: $7c
	rst  $38                                         ; $6508: $ff
	rst  $38                                         ; $6509: $ff
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	ret  z                                           ; $650c: $c8

	ld   hl, $1111                                   ; $650d: $21 $11 $11
	ld   de, $af15                                   ; $6510: $11 $15 $af
	rst  $38                                         ; $6513: $ff
	rst  $38                                         ; $6514: $ff
	rst  $38                                         ; $6515: $ff
	cp   $a5                                         ; $6516: $fe $a5
	ld   de, $1111                                   ; $6518: $11 $11 $11
	ld   de, $ef38                                   ; $651b: $11 $38 $ef
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	ei                                               ; $6521: $fb
	ld   [hl], d                                     ; $6522: $72
	ld   de, $1111                                   ; $6523: $11 $11 $11
	ld   de, $ff6c                                   ; $6526: $11 $6c $ff
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	rst  $38                                         ; $652b: $ff
	reti                                             ; $652c: $d9


	ld   d, c                                        ; $652d: $51
	ld   de, $1111                                   ; $652e: $11 $11 $11
	inc  de                                          ; $6531: $13
	adc  [hl]                                        ; $6532: $8e
	rst  $38                                         ; $6533: $ff
	rst  $38                                         ; $6534: $ff
	rst  $38                                         ; $6535: $ff
	rst  $38                                         ; $6536: $ff
	rst  ToBoot                                         ; $6537: $c7
	ld   hl, $1111                                   ; $6538: $21 $11 $11
	ld   de, $af15                                   ; $653b: $11 $15 $af
	rst  $38                                         ; $653e: $ff
	rst  $38                                         ; $653f: $ff
	rst  $38                                         ; $6540: $ff
	rst  $38                                         ; $6541: $ff
	and  l                                           ; $6542: $a5
	ld   de, $1111                                   ; $6543: $11 $11 $11
	ld   de, $bf15                                   ; $6546: $11 $15 $bf
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	rst  $38                                         ; $654b: $ff
	rst  $38                                         ; $654c: $ff
	or   l                                           ; $654d: $b5
	ld   de, $1111                                   ; $654e: $11 $11 $11
	ld   de, $af14                                   ; $6551: $11 $14 $af
	rst  $38                                         ; $6554: $ff
	rst  $38                                         ; $6555: $ff
	rst  $38                                         ; $6556: $ff
	rst  $38                                         ; $6557: $ff
	add  $11                                         ; $6558: $c6 $11
	ld   de, $1111                                   ; $655a: $11 $11 $11
	inc  de                                          ; $655d: $13
	adc  [hl]                                        ; $655e: $8e
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	rst  $38                                         ; $6562: $ff
	ld   hl, sp+$31                                  ; $6563: $f8 $31
	ld   de, $1111                                   ; $6565: $11 $11 $11
	ld   de, $ff6c                                   ; $6568: $11 $6c $ff
	rst  $38                                         ; $656b: $ff
	rst  $38                                         ; $656c: $ff
	rst  $38                                         ; $656d: $ff
	ld   a, [$1151]                                  ; $656e: $fa $51 $11
	ld   de, $1111                                   ; $6571: $11 $11 $11
	ld   c, d                                        ; $6574: $4a
	rst  $38                                         ; $6575: $ff

Call_0f2_6576:
Jump_0f2_6576:
	rst  $38                                         ; $6576: $ff
	rst  $38                                         ; $6577: $ff
	rst  $38                                         ; $6578: $ff
	db   $fc                                         ; $6579: $fc
	ld   [hl], d                                     ; $657a: $72
	ld   de, $1111                                   ; $657b: $11 $11 $11
	ld   de, $cf27                                   ; $657e: $11 $27 $cf
	rst  $38                                         ; $6581: $ff
	rst  $38                                         ; $6582: $ff
	rst  $38                                         ; $6583: $ff
	rst  $38                                         ; $6584: $ff
	and  h                                           ; $6585: $a4
	ld   de, $1111                                   ; $6586: $11 $11 $11
	ld   de, $ad14                                   ; $6589: $11 $14 $ad
	rst  $38                                         ; $658c: $ff
	rst  $38                                         ; $658d: $ff
	rst  $38                                         ; $658e: $ff
	rst  $38                                         ; $658f: $ff
	reti                                             ; $6590: $d9


	ld   sp, $1111                                   ; $6591: $31 $11 $11
	ld   de, $5b11                                   ; $6594: $11 $11 $5b
	rst  $38                                         ; $6597: $ff

Jump_0f2_6598:
	rst  $38                                         ; $6598: $ff
	rst  $38                                         ; $6599: $ff
	rst  $38                                         ; $659a: $ff
	db   $fc                                         ; $659b: $fc
	add  d                                           ; $659c: $82
	ld   de, $1111                                   ; $659d: $11 $11 $11
	ld   de, $cf16                                   ; $65a0: $11 $16 $cf
	rst  $38                                         ; $65a3: $ff
	rst  $38                                         ; $65a4: $ff
	rst  $38                                         ; $65a5: $ff
	rst  $38                                         ; $65a6: $ff
	or   [hl]                                        ; $65a7: $b6
	ld   de, $1111                                   ; $65a8: $11 $11 $11
	ld   de, $7d12                                   ; $65ab: $11 $12 $7d
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	rst  $38                                         ; $65b1: $ff
	ld   a, [$1151]                                  ; $65b2: $fa $51 $11
	ld   de, $1111                                   ; $65b5: $11 $11 $11
	rla                                              ; $65b8: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65b9: $cf
	rst  $38                                         ; $65ba: $ff
	rst  $38                                         ; $65bb: $ff
	rst  $38                                         ; $65bc: $ff
	rst  $38                                         ; $65bd: $ff
	or   l                                           ; $65be: $b5
	ld   de, $1111                                   ; $65bf: $11 $11 $11
	ld   de, $6c11                                   ; $65c2: $11 $11 $6c
	rst  $38                                         ; $65c5: $ff
	rst  $38                                         ; $65c6: $ff
	rst  $38                                         ; $65c7: $ff
	rst  $38                                         ; $65c8: $ff
	cp   $72                                         ; $65c9: $fe $72
	ld   de, $1111                                   ; $65cb: $11 $11 $11
	ld   de, $ae14                                   ; $65ce: $11 $14 $ae
	rst  $38                                         ; $65d1: $ff
	rst  $38                                         ; $65d2: $ff
	rst  $38                                         ; $65d3: $ff
	rst  $38                                         ; $65d4: $ff
	ld   a, [$1131]                                  ; $65d5: $fa $31 $11
	ld   de, $1111                                   ; $65d8: $11 $11 $11
	rla                                              ; $65db: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65dc: $cf
	rst  $38                                         ; $65dd: $ff
	rst  $38                                         ; $65de: $ff
	rst  $38                                         ; $65df: $ff
	rst  $38                                         ; $65e0: $ff
	rst  $10                                         ; $65e1: $d7
	ld   de, $1111                                   ; $65e2: $11 $11 $11
	ld   de, $3911                                   ; $65e5: $11 $11 $39
	rst  $28                                         ; $65e8: $ef
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	rst  $38                                         ; $65eb: $ff
	rst  $38                                         ; $65ec: $ff
	add  $11                                         ; $65ed: $c6 $11
	ld   de, $1111                                   ; $65ef: $11 $11 $11
	ld   de, $ff6c                                   ; $65f2: $11 $6c $ff
	rst  $38                                         ; $65f5: $ff
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	and  e                                           ; $65f9: $a3
	ld   de, $1111                                   ; $65fa: $11 $11 $11
	ld   de, $9e11                                   ; $65fd: $11 $11 $9e
	rst  $38                                         ; $6600: $ff
	rst  $38                                         ; $6601: $ff
	rst  $38                                         ; $6602: $ff
	rst  $38                                         ; $6603: $ff
	db   $fd                                         ; $6604: $fd
	ld   h, c                                        ; $6605: $61
	ld   de, $1111                                   ; $6606: $11 $11 $11
	ld   de, $af16                                   ; $6609: $11 $16 $af
	rst  $38                                         ; $660c: $ff
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	rst  $38                                         ; $660f: $ff
	ld   sp, hl                                      ; $6610: $f9
	ld   b, c                                        ; $6611: $41
	ld   de, $1111                                   ; $6612: $11 $11 $11
	ld   de, $ef3a                                   ; $6615: $11 $3a $ef
	rst  $38                                         ; $6618: $ff
	rst  $38                                         ; $6619: $ff
	rst  $38                                         ; $661a: $ff
	rst  $38                                         ; $661b: $ff
	and  l                                           ; $661c: $a5
	ld   de, $1111                                   ; $661d: $11 $11 $11
	ld   de, $8f13                                   ; $6620: $11 $13 $8f
	rst  $38                                         ; $6623: $ff
	rst  $38                                         ; $6624: $ff
	rst  $38                                         ; $6625: $ff
	rst  $38                                         ; $6626: $ff
	ld   sp, hl                                      ; $6627: $f9
	ld   b, c                                        ; $6628: $41
	ld   de, $1111                                   ; $6629: $11 $11 $11
	ld   de, $ff4b                                   ; $662c: $11 $4b $ff
	rst  $38                                         ; $662f: $ff
	rst  $38                                         ; $6630: $ff
	rst  $38                                         ; $6631: $ff
	ei                                               ; $6632: $fb
	ld   [hl], d                                     ; $6633: $72
	ld   de, $1111                                   ; $6634: $11 $11 $11
	ld   de, $ef29                                   ; $6637: $11 $29 $ef
	rst  $38                                         ; $663a: $ff
	rst  $38                                         ; $663b: $ff
	rst  $38                                         ; $663c: $ff
	db   $fd                                         ; $663d: $fd
	add  l                                           ; $663e: $85
	ld   de, $1111                                   ; $663f: $11 $11 $11
	ld   de, $bf15                                   ; $6642: $11 $15 $bf
	rst  $38                                         ; $6645: $ff
	rst  $38                                         ; $6646: $ff
	rst  $38                                         ; $6647: $ff
	rst  $38                                         ; $6648: $ff
	push bc                                          ; $6649: $c5
	ld   hl, $1111                                   ; $664a: $21 $11 $11
	ld   de, $6a11                                   ; $664d: $11 $11 $6a
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	rst  $38                                         ; $6652: $ff
	rst  $38                                         ; $6653: $ff
	rst  $38                                         ; $6654: $ff
	add  d                                           ; $6655: $82
	ld   de, $1111                                   ; $6656: $11 $11 $11
	ld   de, $9d11                                   ; $6659: $11 $11 $9d
	rst  $38                                         ; $665c: $ff
	rst  $38                                         ; $665d: $ff
	rst  $38                                         ; $665e: $ff
	rst  $38                                         ; $665f: $ff
	cp   $81                                         ; $6660: $fe $81
	ld   de, $1111                                   ; $6662: $11 $11 $11
	ld   de, $bd13                                   ; $6665: $11 $13 $bd
	rst  $38                                         ; $6668: $ff
	rst  $38                                         ; $6669: $ff
	rst  $38                                         ; $666a: $ff
	rst  $38                                         ; $666b: $ff
	rst  $38                                         ; $666c: $ff
	ld   [hl], c                                     ; $666d: $71
	ld   de, $1111                                   ; $666e: $11 $11 $11
	ld   de, $bf15                                   ; $6671: $11 $15 $bf
	rst  $38                                         ; $6674: $ff
	rst  $38                                         ; $6675: $ff
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	ei                                               ; $6678: $fb
	ld   sp, $1111                                   ; $6679: $31 $11 $11
	ld   de, $2a11                                   ; $667c: $11 $11 $2a
	rst  $28                                         ; $667f: $ef
	rst  $38                                         ; $6680: $ff
	rst  $38                                         ; $6681: $ff
	rst  $38                                         ; $6682: $ff
	db   $fd                                         ; $6683: $fd
	and  l                                           ; $6684: $a5
	ld   de, $1111                                   ; $6685: $11 $11 $11
	ld   de, $df15                                   ; $6688: $11 $15 $df
	rst  $38                                         ; $668b: $ff
	rst  $38                                         ; $668c: $ff
	rst  $38                                         ; $668d: $ff
	cp   $74                                         ; $668e: $fe $74
	ld   hl, $1111                                   ; $6690: $21 $11 $11
	ld   de, $af05                                   ; $6693: $11 $05 $af
	rst  $38                                         ; $6696: $ff
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	and  $21                                         ; $669a: $e6 $21
	ld   de, $1111                                   ; $669c: $11 $11 $11
	ld   de, $ef39                                   ; $669f: $11 $39 $ef
	rst  $38                                         ; $66a2: $ff
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	rst  $20                                         ; $66a6: $e7
	ld   de, $1111                                   ; $66a7: $11 $11 $11
	ld   de, $1911                                   ; $66aa: $11 $11 $19
	rst  JumpTable                                         ; $66ad: $df
	rst  $38                                         ; $66ae: $ff
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	rst  $38                                         ; $66b1: $ff
	ei                                               ; $66b2: $fb
	ld   hl, $1111                                   ; $66b3: $21 $11 $11
	ld   de, $1611                                   ; $66b6: $11 $11 $16
	xor  a                                           ; $66b9: $af
	rst  $38                                         ; $66ba: $ff
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	ld   sp, hl                                      ; $66be: $f9
	ld   b, c                                        ; $66bf: $41
	ld   de, $1111                                   ; $66c0: $11 $11 $11
	ld   de, $bf15                                   ; $66c3: $11 $15 $bf
	rst  $38                                         ; $66c6: $ff
	rst  $38                                         ; $66c7: $ff
	rst  $38                                         ; $66c8: $ff
	rst  $38                                         ; $66c9: $ff
	rst  ToBoot                                         ; $66ca: $c7
	ld   hl, $1111                                   ; $66cb: $21 $11 $11
	ld   de, $3811                                   ; $66ce: $11 $11 $38
	rst  $38                                         ; $66d1: $ff
	rst  $38                                         ; $66d2: $ff
	rst  $38                                         ; $66d3: $ff
	rst  $38                                         ; $66d4: $ff
	db   $fd                                         ; $66d5: $fd
	ld   d, d                                        ; $66d6: $52
	ld   de, $1111                                   ; $66d7: $11 $11 $11
	ld   de, $9f24                                   ; $66da: $11 $24 $9f
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
	rst  $38                                         ; $66e0: $ff
	ld   sp, hl                                      ; $66e1: $f9
	ld   sp, $1111                                   ; $66e2: $31 $11 $11
	ld   de, $2811                                   ; $66e5: $11 $11 $28
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66e8: $cf
	rst  $38                                         ; $66e9: $ff
	rst  $38                                         ; $66ea: $ff
	rst  $38                                         ; $66eb: $ff
	rst  $38                                         ; $66ec: $ff
	and  $21                                         ; $66ed: $e6 $21
	ld   de, $1111                                   ; $66ef: $11 $11 $11
	ld   de, $cf58                                   ; $66f2: $11 $58 $cf
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	rst  $38                                         ; $66f8: $ff
	rst  ToBoot                                         ; $66f9: $c7
	ld   hl, $1111                                   ; $66fa: $21 $11 $11
	ld   de, $4911                                   ; $66fd: $11 $11 $49
	call $ffff                                       ; $6700: $cd $ff $ff
	rst  $38                                         ; $6703: $ff
	rst  $38                                         ; $6704: $ff
	cp   b                                           ; $6705: $b8
	ld   sp, $1111                                   ; $6706: $31 $11 $11
	ld   de, $5712                                   ; $6709: $11 $12 $57
	xor  a                                           ; $670c: $af
	rst  $38                                         ; $670d: $ff
	rst  $38                                         ; $670e: $ff
	rst  $38                                         ; $670f: $ff
	rst  $38                                         ; $6710: $ff
	rst  ToBoot                                         ; $6711: $c7
	ld   [hl], d                                     ; $6712: $72
	ld   de, $1111                                   ; $6713: $11 $11 $11
	ld   de, $ac45                                   ; $6716: $11 $45 $ac
	rst  $38                                         ; $6719: $ff
	rst  $38                                         ; $671a: $ff
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	res  4, h                                        ; $671d: $cb $a4
	ld   de, $1111                                   ; $671f: $11 $11 $11
	ld   de, $7a14                                   ; $6722: $11 $14 $7a
	cp   l                                           ; $6725: $bd
	rst  $28                                         ; $6726: $ef
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	xor  $98                                         ; $6729: $ee $98
	sub  c                                           ; $672b: $91
	inc  h                                           ; $672c: $24
	ld   de, $2411                                   ; $672d: $11 $11 $24
	ld   [hl], $aa                                   ; $6730: $36 $aa
	cp   e                                           ; $6732: $bb
	rst  $28                                         ; $6733: $ef
	rst  $38                                         ; $6734: $ff
	rst  $38                                         ; $6735: $ff
	call c, $9378                                    ; $6736: $dc $78 $93
	inc  sp                                          ; $6739: $33
	ld   hl, $3523                                   ; $673a: $21 $23 $35
	ld   d, [hl]                                     ; $673d: $56
	ld   a, b                                        ; $673e: $78
	cp   d                                           ; $673f: $ba
	cp   [hl]                                        ; $6740: $be
	adc  $ec                                         ; $6741: $ce $ec
	reti                                             ; $6743: $d9


	sub  a                                           ; $6744: $97
	adc  b                                           ; $6745: $88
	inc  h                                           ; $6746: $24
	ld   b, h                                        ; $6747: $44
	ld   b, d                                        ; $6748: $42
	ld   d, [hl]                                     ; $6749: $56
	ld   b, l                                        ; $674a: $45
	xor  c                                           ; $674b: $a9
	ld   l, d                                        ; $674c: $6a
	cp   h                                           ; $674d: $bc
	xor  d                                           ; $674e: $aa
	jp   c, $7acb                                    ; $674f: $da $cb $7a

	adc  b                                           ; $6752: $88
	ld   h, [hl]                                     ; $6753: $66
	ld   h, l                                        ; $6754: $65
	add  d                                           ; $6755: $82
	ld   d, a                                        ; $6756: $57
	ld   h, e                                        ; $6757: $63
	ld   e, h                                        ; $6758: $5c
	ld   d, a                                        ; $6759: $57
	ld   a, d                                        ; $675a: $7a
	sbc  c                                           ; $675b: $99
	cp   e                                           ; $675c: $bb
	ret  z                                           ; $675d: $c8

	call c, $89a9                                    ; $675e: $dc $a9 $89
	sub  a                                           ; $6761: $97
	ld   b, [hl]                                     ; $6762: $46
	ld   d, l                                        ; $6763: $55
	ld   d, e                                        ; $6764: $53
	halt                                             ; $6765: $76
	add  hl, sp                                      ; $6766: $39
	add  l                                           ; $6767: $85
	sbc  e                                           ; $6768: $9b
	sbc  e                                           ; $6769: $9b
	sbc  d                                           ; $676a: $9a
	rst  $30                                         ; $676b: $f7
	ret                                              ; $676c: $c9


	adc  l                                           ; $676d: $8d
	ld   d, a                                        ; $676e: $57
	sub  a                                           ; $676f: $97
	ld   b, a                                        ; $6770: $47
	ld   b, e                                        ; $6771: $43
	ld   [hl], d                                     ; $6772: $72
	ld   [hl], l                                     ; $6773: $75
	sbc  b                                           ; $6774: $98
	inc  a                                           ; $6775: $3c
	sbc  b                                           ; $6776: $98
	cp   d                                           ; $6777: $ba
	jp   z, $b9c7                                    ; $6778: $ca $c7 $b9

	ld   a, d                                        ; $677b: $7a
	ld   e, e                                        ; $677c: $5b
	ld   d, l                                        ; $677d: $55
	ld   d, l                                        ; $677e: $55
	sub  h                                           ; $677f: $94
	ld   d, l                                        ; $6780: $55
	sub  l                                           ; $6781: $95
	ld   a, b                                        ; $6782: $78
	ld   a, h                                        ; $6783: $7c
	ld   l, c                                        ; $6784: $69
	xor  h                                           ; $6785: $ac
	sub  a                                           ; $6786: $97
	ret  z                                           ; $6787: $c8

	adc  c                                           ; $6788: $89
	ld   [hl], a                                     ; $6789: $77
	add  a                                           ; $678a: $87
	ld   h, [hl]                                     ; $678b: $66
	add  l                                           ; $678c: $85
	ld   h, a                                        ; $678d: $67
	ld   h, a                                        ; $678e: $67
	ld   a, c                                        ; $678f: $79
	adc  c                                           ; $6790: $89
	sbc  c                                           ; $6791: $99
	xor  c                                           ; $6792: $a9
	adc  c                                           ; $6793: $89
	cp   b                                           ; $6794: $b8
	ld   a, c                                        ; $6795: $79
	ld   a, b                                        ; $6796: $78
	halt                                             ; $6797: $76
	sbc  b                                           ; $6798: $98
	add  l                                           ; $6799: $85
	ld   l, e                                        ; $679a: $6b
	halt                                             ; $679b: $76
	ld   a, c                                        ; $679c: $79
	add  a                                           ; $679d: $87
	and  [hl]                                        ; $679e: $a6
	sbc  b                                           ; $679f: $98
	sbc  b                                           ; $67a0: $98
	sbc  b                                           ; $67a1: $98
	ld   e, h                                        ; $67a2: $5c
	halt                                             ; $67a3: $76
	sub  a                                           ; $67a4: $97
	add  [hl]                                        ; $67a5: $86
	sub  a                                           ; $67a6: $97
	ld   a, c                                        ; $67a7: $79
	ld   a, b                                        ; $67a8: $78
	ld   a, d                                        ; $67a9: $7a
	ld   [hl], a                                     ; $67aa: $77
	adc  c                                           ; $67ab: $89
	add  [hl]                                        ; $67ac: $86
	and  [hl]                                        ; $67ad: $a6
	and  l                                           ; $67ae: $a5
	adc  d                                           ; $67af: $8a
	ld   a, d                                        ; $67b0: $7a
	ld   e, c                                        ; $67b1: $59
	and  a                                           ; $67b2: $a7
	ld   a, b                                        ; $67b3: $78
	adc  c                                           ; $67b4: $89
	sub  [hl]                                        ; $67b5: $96
	adc  b                                           ; $67b6: $88
	sub  l                                           ; $67b7: $95
	and  a                                           ; $67b8: $a7
	ld   e, h                                        ; $67b9: $5c
	ld   l, c                                        ; $67ba: $69
	ld   l, d                                        ; $67bb: $6a
	and  a                                           ; $67bc: $a7
	sub  [hl]                                        ; $67bd: $96
	sbc  b                                           ; $67be: $98
	add  l                                           ; $67bf: $85
	adc  d                                           ; $67c0: $8a
	ld   a, b                                        ; $67c1: $78
	ld   a, b                                        ; $67c2: $78
	sbc  b                                           ; $67c3: $98
	add  a                                           ; $67c4: $87
	ld   a, c                                        ; $67c5: $79
	sub  [hl]                                        ; $67c6: $96
	ld   [hl], a                                     ; $67c7: $77
	sub  $6a                                         ; $67c8: $d6 $6a
	adc  d                                           ; $67ca: $8a
	sub  a                                           ; $67cb: $97
	ld   a, e                                        ; $67cc: $7b
	ld   a, b                                        ; $67cd: $78
	ld   a, b                                        ; $67ce: $78
	and  [hl]                                        ; $67cf: $a6
	add  a                                           ; $67d0: $87
	sbc  c                                           ; $67d1: $99
	add  [hl]                                        ; $67d2: $86
	ld   a, c                                        ; $67d3: $79
	xor  d                                           ; $67d4: $aa
	ld   h, a                                        ; $67d5: $67
	xor  h                                           ; $67d6: $ac
	ld   h, a                                        ; $67d7: $67
	xor  c                                           ; $67d8: $a9
	add  a                                           ; $67d9: $87
	sub  a                                           ; $67da: $97
	ld   l, c                                        ; $67db: $69
	sub  l                                           ; $67dc: $95
	add  a                                           ; $67dd: $87
	sbc  b                                           ; $67de: $98
	ld   l, d                                        ; $67df: $6a
	ld   l, d                                        ; $67e0: $6a
	ld   a, d                                        ; $67e1: $7a
	or   e                                           ; $67e2: $b3
	cp   d                                           ; $67e3: $ba
	ld   e, c                                        ; $67e4: $59
	sbc  c                                           ; $67e5: $99
	adc  b                                           ; $67e6: $88
	add  [hl]                                        ; $67e7: $86
	sub  l                                           ; $67e8: $95
	ld   l, h                                        ; $67e9: $6c
	ld   d, [hl]                                     ; $67ea: $56
	adc  c                                           ; $67eb: $89
	ld   h, a                                        ; $67ec: $67
	add  a                                           ; $67ed: $87
	or   l                                           ; $67ee: $b5
	adc  e                                           ; $67ef: $8b
	adc  c                                           ; $67f0: $89
	sbc  b                                           ; $67f1: $98
	sbc  d                                           ; $67f2: $9a
	ld   a, b                                        ; $67f3: $78
	add  a                                           ; $67f4: $87
	ld   b, a                                        ; $67f5: $47
	rst  ToBoot                                         ; $67f6: $c7
	ld   [hl], a                                     ; $67f7: $77
	ld   a, d                                        ; $67f8: $7a
	sub  [hl]                                        ; $67f9: $96
	and  a                                           ; $67fa: $a7
	or   [hl]                                        ; $67fb: $b6
	ld   e, l                                        ; $67fc: $5d
	adc  b                                           ; $67fd: $88
	ld   c, d                                        ; $67fe: $4a
	or   l                                           ; $67ff: $b5
	add  a                                           ; $6800: $87
	or   [hl]                                        ; $6801: $b6
	ld   a, d                                        ; $6802: $7a
	ld   c, c                                        ; $6803: $49
	ld   l, c                                        ; $6804: $69
	ld   h, [hl]                                     ; $6805: $66
	or   e                                           ; $6806: $b3
	cp   b                                           ; $6807: $b8
	ld   l, e                                        ; $6808: $6b
	ld   l, e                                        ; $6809: $6b
	ld   [hl], a                                     ; $680a: $77
	sub  a                                           ; $680b: $97
	db   $e4                                         ; $680c: $e4
	ld   e, e                                        ; $680d: $5b
	ld   l, c                                        ; $680e: $69
	ld   c, c                                        ; $680f: $49
	sub  [hl]                                        ; $6810: $96
	add  h                                           ; $6811: $84
	rst  $20                                         ; $6812: $e7
	ld   c, h                                        ; $6813: $4c
	ld   l, d                                        ; $6814: $6a
	sub  a                                           ; $6815: $97
	ld   [hl], a                                     ; $6816: $77
	rst  ToBoot                                         ; $6817: $c7
	ld   e, b                                        ; $6818: $58
	sbc  e                                           ; $6819: $9b
	ld   d, [hl]                                     ; $681a: $56
	xor  b                                           ; $681b: $a8
	and  h                                           ; $681c: $a4
	ld   l, e                                        ; $681d: $6b
	ld   a, b                                        ; $681e: $78
	ld   l, b                                        ; $681f: $68
	sub  [hl]                                        ; $6820: $96
	ld   a, d                                        ; $6821: $7a
	add  a                                           ; $6822: $87
	sub  a                                           ; $6823: $97
	sub  [hl]                                        ; $6824: $96
	ld   l, d                                        ; $6825: $6a
	add  a                                           ; $6826: $87
	ld   l, c                                        ; $6827: $69
	or   [hl]                                        ; $6828: $b6
	ld   [hl], l                                     ; $6829: $75
	xor  b                                           ; $682a: $a8
	ld   l, b                                        ; $682b: $68
	ld   l, h                                        ; $682c: $6c
	ld   e, b                                        ; $682d: $58
	ld   [hl], a                                     ; $682e: $77
	or   l                                           ; $682f: $b5
	and  [hl]                                        ; $6830: $a6
	adc  c                                           ; $6831: $89
	ld   a, c                                        ; $6832: $79
	ld   e, h                                        ; $6833: $5c
	ld   b, a                                        ; $6834: $47
	sub  [hl]                                        ; $6835: $96
	or   a                                           ; $6836: $b7
	add  a                                           ; $6837: $87
	sbc  e                                           ; $6838: $9b
	add  a                                           ; $6839: $87
	adc  b                                           ; $683a: $88
	and  a                                           ; $683b: $a7
	inc  a                                           ; $683c: $3c
	add  l                                           ; $683d: $85
	adc  c                                           ; $683e: $89
	add  l                                           ; $683f: $85
	xor  b                                           ; $6840: $a8
	ld   a, c                                        ; $6841: $79
	sub  [hl]                                        ; $6842: $96
	sub  [hl]                                        ; $6843: $96
	sbc  e                                           ; $6844: $9b
	ld   c, e                                        ; $6845: $4b
	ld   e, h                                        ; $6846: $5c
	sub  c                                           ; $6847: $91
	cp   c                                           ; $6848: $b9
	sub  l                                           ; $6849: $95
	ld   a, b                                        ; $684a: $78
	sub  [hl]                                        ; $684b: $96
	ld   [hl], l                                     ; $684c: $75
	sbc  l                                           ; $684d: $9d
	ld   c, d                                        ; $684e: $4a
	ld   l, c                                        ; $684f: $69
	xor  b                                           ; $6850: $a8
	add  l                                           ; $6851: $85
	sbc  c                                           ; $6852: $99
	and  a                                           ; $6853: $a7
	ld   [hl], a                                     ; $6854: $77
	sub  [hl]                                        ; $6855: $96
	add  a                                           ; $6856: $87
	ld   a, c                                        ; $6857: $79
	add  a                                           ; $6858: $87
	ld   c, l                                        ; $6859: $4d
	ld   a, c                                        ; $685a: $79
	ld   l, d                                        ; $685b: $6a
	and  [hl]                                        ; $685c: $a6
	or   c                                           ; $685d: $b1
	jp   c, $8b58                                    ; $685e: $da $58 $8b

	inc  e                                           ; $6861: $1c
	ld   l, b                                        ; $6862: $68
	or   d                                           ; $6863: $b2
	sub  $b5                                         ; $6864: $d6 $b5
	ld   c, a                                        ; $6866: $4f
	ld   c, c                                        ; $6867: $49
	sub  [hl]                                        ; $6868: $96
	push bc                                          ; $6869: $c5
	ld   a, c                                        ; $686a: $79
	ld   a, e                                        ; $686b: $7b
	ld   l, d                                        ; $686c: $6a
	ld   h, a                                        ; $686d: $67
	jp   nz, Jump_0f2_7ab7                           ; $686e: $c2 $b7 $7a

	ld   l, d                                        ; $6871: $6a
	ld   a, d                                        ; $6872: $7a
	ld   l, b                                        ; $6873: $68
	or   a                                           ; $6874: $b7
	add  a                                           ; $6875: $87
	or   l                                           ; $6876: $b5
	ld   e, e                                        ; $6877: $5b
	adc  b                                           ; $6878: $88
	ld   e, e                                        ; $6879: $5b
	ld   a, b                                        ; $687a: $78
	sub  l                                           ; $687b: $95
	xor  e                                           ; $687c: $ab
	add  h                                           ; $687d: $84
	xor  b                                           ; $687e: $a8
	add  a                                           ; $687f: $87
	ld   a, d                                        ; $6880: $7a
	ld   e, d                                        ; $6881: $5a
	ld   [hl], l                                     ; $6882: $75
	or   a                                           ; $6883: $b7
	and  a                                           ; $6884: $a7
	ld   l, d                                        ; $6885: $6a
	ld   e, h                                        ; $6886: $5c
	ld   h, [hl]                                     ; $6887: $66
	add  $94                                         ; $6888: $c6 $94
	cp   c                                           ; $688a: $b9
	ld   e, d                                        ; $688b: $5a
	ld   e, d                                        ; $688c: $5a
	adc  b                                           ; $688d: $88
	ld   l, c                                        ; $688e: $69
	and  [hl]                                        ; $688f: $a6
	ld   a, b                                        ; $6890: $78
	and  [hl]                                        ; $6891: $a6
	sub  l                                           ; $6892: $95
	xor  c                                           ; $6893: $a9
	ld   h, a                                        ; $6894: $67
	ld   a, [hl]                                     ; $6895: $7e
	ld   h, a                                        ; $6896: $67
	ld   l, c                                        ; $6897: $69
	or   [hl]                                        ; $6898: $b6
	sub  [hl]                                        ; $6899: $96
	sbc  c                                           ; $689a: $99
	ld   a, b                                        ; $689b: $78
	ld   [hl], a                                     ; $689c: $77
	and  a                                           ; $689d: $a7
	ld   e, e                                        ; $689e: $5b
	adc  h                                           ; $689f: $8c
	ld   b, [hl]                                     ; $68a0: $46
	push bc                                          ; $68a1: $c5
	and  a                                           ; $68a2: $a7
	adc  b                                           ; $68a3: $88
	ld   l, d                                        ; $68a4: $6a
	ld   [hl], a                                     ; $68a5: $77
	adc  c                                           ; $68a6: $89
	ld   a, c                                        ; $68a7: $79
	ld   l, c                                        ; $68a8: $69
	and  a                                           ; $68a9: $a7
	add  [hl]                                        ; $68aa: $86
	xor  d                                           ; $68ab: $aa
	ld   [hl], a                                     ; $68ac: $77
	adc  d                                           ; $68ad: $8a
	add  a                                           ; $68ae: $87
	ld   l, c                                        ; $68af: $69
	adc  b                                           ; $68b0: $88
	ld   a, b                                        ; $68b1: $78
	add  a                                           ; $68b2: $87
	sbc  c                                           ; $68b3: $99
	add  a                                           ; $68b4: $87
	ld   a, c                                        ; $68b5: $79
	and  a                                           ; $68b6: $a7
	ld   l, b                                        ; $68b7: $68
	xor  b                                           ; $68b8: $a8
	halt                                             ; $68b9: $76
	sbc  d                                           ; $68ba: $9a
	ld   a, b                                        ; $68bb: $78
	ld   a, c                                        ; $68bc: $79
	and  a                                           ; $68bd: $a7
	halt                                             ; $68be: $76
	sbc  c                                           ; $68bf: $99
	ld   e, d                                        ; $68c0: $5a
	ld   [hl], a                                     ; $68c1: $77
	sub  h                                           ; $68c2: $94
	cp   b                                           ; $68c3: $b8
	sbc  c                                           ; $68c4: $99
	ld   a, d                                        ; $68c5: $7a
	ld   a, e                                        ; $68c6: $7b
	ld   e, c                                        ; $68c7: $59
	add  [hl]                                        ; $68c8: $86
	and  l                                           ; $68c9: $a5
	sub  l                                           ; $68ca: $95
	xor  c                                           ; $68cb: $a9
	ld   [hl], a                                     ; $68cc: $77
	ld   a, d                                        ; $68cd: $7a
	ld   e, l                                        ; $68ce: $5d
	ld   h, [hl]                                     ; $68cf: $66
	add  $96                                         ; $68d0: $c6 $96
	sbc  c                                           ; $68d2: $99
	ld   e, d                                        ; $68d3: $5a
	ld   a, c                                        ; $68d4: $79
	sub  [hl]                                        ; $68d5: $96
	adc  b                                           ; $68d6: $88
	and  a                                           ; $68d7: $a7
	ld   l, d                                        ; $68d8: $6a
	sub  a                                           ; $68d9: $97
	ld   e, d                                        ; $68da: $5a
	add  a                                           ; $68db: $87
	ld   a, b                                        ; $68dc: $78
	adc  d                                           ; $68dd: $8a
	add  e                                           ; $68de: $83
	cp   b                                           ; $68df: $b8
	ld   l, d                                        ; $68e0: $6a
	ld   l, c                                        ; $68e1: $69
	sub  a                                           ; $68e2: $97
	ld   a, c                                        ; $68e3: $79
	and  l                                           ; $68e4: $a5
	ld   a, h                                        ; $68e5: $7c
	ld   [hl], a                                     ; $68e6: $77
	add  [hl]                                        ; $68e7: $86
	adc  d                                           ; $68e8: $8a
	halt                                             ; $68e9: $76
	and  a                                           ; $68ea: $a7
	adc  c                                           ; $68eb: $89
	ld   a, c                                        ; $68ec: $79
	adc  c                                           ; $68ed: $89
	ld   [hl], a                                     ; $68ee: $77
	sub  a                                           ; $68ef: $97
	sub  a                                           ; $68f0: $97
	adc  c                                           ; $68f1: $89
	adc  b                                           ; $68f2: $88
	ld   l, c                                        ; $68f3: $69
	sbc  b                                           ; $68f4: $98
	ld   [hl], a                                     ; $68f5: $77
	and  [hl]                                        ; $68f6: $a6
	sub  [hl]                                        ; $68f7: $96
	sbc  d                                           ; $68f8: $9a
	ld   l, b                                        ; $68f9: $68
	adc  c                                           ; $68fa: $89
	ld   a, b                                        ; $68fb: $78
	adc  b                                           ; $68fc: $88
	sub  a                                           ; $68fd: $97
	adc  b                                           ; $68fe: $88
	adc  c                                           ; $68ff: $89
	ld   a, b                                        ; $6900: $78
	adc  c                                           ; $6901: $89
	halt                                             ; $6902: $76
	cp   b                                           ; $6903: $b8
	sub  [hl]                                        ; $6904: $96
	ld   a, e                                        ; $6905: $7b
	ld   a, b                                        ; $6906: $78
	ld   l, d                                        ; $6907: $6a
	halt                                             ; $6908: $76
	sub  [hl]                                        ; $6909: $96
	and  a                                           ; $690a: $a7
	sbc  b                                           ; $690b: $98
	ld   a, c                                        ; $690c: $79
	ld   l, d                                        ; $690d: $6a
	ld   l, c                                        ; $690e: $69
	sub  a                                           ; $690f: $97
	and  a                                           ; $6910: $a7
	ld   [hl], a                                     ; $6911: $77
	xor  c                                           ; $6912: $a9
	ld   e, b                                        ; $6913: $58
	adc  c                                           ; $6914: $89
	sub  a                                           ; $6915: $97
	ld   [hl], a                                     ; $6916: $77
	and  a                                           ; $6917: $a7
	ld   a, c                                        ; $6918: $79
	ld   a, d                                        ; $6919: $7a
	ld   [hl], a                                     ; $691a: $77
	adc  c                                           ; $691b: $89
	adc  b                                           ; $691c: $88
	ld   [hl], a                                     ; $691d: $77
	and  a                                           ; $691e: $a7
	sub  l                                           ; $691f: $95
	xor  b                                           ; $6920: $a8
	ld   a, c                                        ; $6921: $79
	ld   a, e                                        ; $6922: $7b
	ld   l, b                                        ; $6923: $68
	ld   a, c                                        ; $6924: $79
	sub  [hl]                                        ; $6925: $96
	and  l                                           ; $6926: $a5
	sbc  c                                           ; $6927: $99
	ld   l, d                                        ; $6928: $6a
	ld   l, d                                        ; $6929: $6a
	halt                                             ; $692a: $76
	and  [hl]                                        ; $692b: $a6
	and  [hl]                                        ; $692c: $a6
	sbc  c                                           ; $692d: $99
	ld   a, d                                        ; $692e: $7a
	ld   l, b                                        ; $692f: $68
	ld   a, c                                        ; $6930: $79
	add  a                                           ; $6931: $87
	sbc  b                                           ; $6932: $98
	ld   [hl], a                                     ; $6933: $77
	and  a                                           ; $6934: $a7
	adc  b                                           ; $6935: $88
	ld   a, c                                        ; $6936: $79
	ld   a, b                                        ; $6937: $78
	adc  b                                           ; $6938: $88
	sub  a                                           ; $6939: $97
	adc  b                                           ; $693a: $88
	sbc  c                                           ; $693b: $99
	ld   a, b                                        ; $693c: $78
	adc  c                                           ; $693d: $89
	ld   a, b                                        ; $693e: $78
	sbc  b                                           ; $693f: $98
	add  a                                           ; $6940: $87
	sbc  b                                           ; $6941: $98
	sub  a                                           ; $6942: $97
	ld   a, d                                        ; $6943: $7a
	adc  b                                           ; $6944: $88
	ld   a, c                                        ; $6945: $79
	adc  b                                           ; $6946: $88
	sub  a                                           ; $6947: $97
	adc  b                                           ; $6948: $88
	add  a                                           ; $6949: $87
	sbc  b                                           ; $694a: $98
	add  a                                           ; $694b: $87
	adc  b                                           ; $694c: $88
	adc  b                                           ; $694d: $88
	ld   a, b                                        ; $694e: $78
	sbc  c                                           ; $694f: $99
	ld   a, b                                        ; $6950: $78
	adc  b                                           ; $6951: $88
	add  a                                           ; $6952: $87
	adc  b                                           ; $6953: $88
	sbc  b                                           ; $6954: $98
	ld   a, c                                        ; $6955: $79
	adc  c                                           ; $6956: $89
	ld   a, b                                        ; $6957: $78
	add  a                                           ; $6958: $87
	add  a                                           ; $6959: $87
	sbc  c                                           ; $695a: $99
	ld   a, c                                        ; $695b: $79
	ld   a, b                                        ; $695c: $78
	add  a                                           ; $695d: $87
	adc  b                                           ; $695e: $88
	sbc  b                                           ; $695f: $98
	adc  b                                           ; $6960: $88
	adc  b                                           ; $6961: $88
	ld   a, c                                        ; $6962: $79
	ld   a, c                                        ; $6963: $79
	add  a                                           ; $6964: $87
	sbc  b                                           ; $6965: $98
	sub  a                                           ; $6966: $97
	add  a                                           ; $6967: $87
	adc  c                                           ; $6968: $89
	ld   a, b                                        ; $6969: $78
	ld   a, c                                        ; $696a: $79
	adc  b                                           ; $696b: $88
	add  a                                           ; $696c: $87
	adc  b                                           ; $696d: $88
	adc  b                                           ; $696e: $88
	adc  b                                           ; $696f: $88
	sbc  b                                           ; $6970: $98
	adc  b                                           ; $6971: $88
	adc  c                                           ; $6972: $89
	adc  b                                           ; $6973: $88
	adc  b                                           ; $6974: $88
	sub  a                                           ; $6975: $97
	sbc  b                                           ; $6976: $98
	adc  c                                           ; $6977: $89
	adc  b                                           ; $6978: $88
	adc  b                                           ; $6979: $88
	ld   a, b                                        ; $697a: $78
	adc  b                                           ; $697b: $88
	sub  a                                           ; $697c: $97
	adc  b                                           ; $697d: $88
	adc  c                                           ; $697e: $89
	ld   a, b                                        ; $697f: $78
	adc  b                                           ; $6980: $88
	adc  b                                           ; $6981: $88
	adc  b                                           ; $6982: $88
	adc  b                                           ; $6983: $88
	adc  b                                           ; $6984: $88
	adc  b                                           ; $6985: $88
	adc  b                                           ; $6986: $88
	adc  b                                           ; $6987: $88
	adc  b                                           ; $6988: $88
	adc  b                                           ; $6989: $88
	sbc  b                                           ; $698a: $98
	adc  b                                           ; $698b: $88
	ld   a, c                                        ; $698c: $79
	adc  b                                           ; $698d: $88
	adc  b                                           ; $698e: $88
	adc  b                                           ; $698f: $88
	adc  b                                           ; $6990: $88
	adc  b                                           ; $6991: $88
	adc  b                                           ; $6992: $88
	adc  b                                           ; $6993: $88
	adc  b                                           ; $6994: $88
	adc  b                                           ; $6995: $88
	adc  b                                           ; $6996: $88
	adc  b                                           ; $6997: $88
	adc  b                                           ; $6998: $88
	adc  b                                           ; $6999: $88
	adc  b                                           ; $699a: $88
	adc  b                                           ; $699b: $88
	adc  b                                           ; $699c: $88
	adc  b                                           ; $699d: $88
	adc  b                                           ; $699e: $88
	adc  b                                           ; $699f: $88
	adc  b                                           ; $69a0: $88
	adc  b                                           ; $69a1: $88
	adc  b                                           ; $69a2: $88
	adc  b                                           ; $69a3: $88
	adc  b                                           ; $69a4: $88
	adc  b                                           ; $69a5: $88
	adc  b                                           ; $69a6: $88
	adc  b                                           ; $69a7: $88
	adc  b                                           ; $69a8: $88
	adc  b                                           ; $69a9: $88
	adc  b                                           ; $69aa: $88
	adc  b                                           ; $69ab: $88
	adc  b                                           ; $69ac: $88
	adc  b                                           ; $69ad: $88
	adc  b                                           ; $69ae: $88
	adc  b                                           ; $69af: $88
	adc  b                                           ; $69b0: $88
	adc  b                                           ; $69b1: $88
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
	adc  b                                           ; $69c2: $88
	adc  b                                           ; $69c3: $88
	adc  b                                           ; $69c4: $88
	adc  b                                           ; $69c5: $88
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
	adc  b                                           ; $69e0: $88
	adc  b                                           ; $69e1: $88
	adc  b                                           ; $69e2: $88
	adc  b                                           ; $69e3: $88
	adc  b                                           ; $69e4: $88
	adc  b                                           ; $69e5: $88
	adc  b                                           ; $69e6: $88
	adc  b                                           ; $69e7: $88
	adc  b                                           ; $69e8: $88
	adc  b                                           ; $69e9: $88
	adc  b                                           ; $69ea: $88
	adc  b                                           ; $69eb: $88
	adc  b                                           ; $69ec: $88
	adc  b                                           ; $69ed: $88
	adc  b                                           ; $69ee: $88
	adc  b                                           ; $69ef: $88
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
	adc  b                                           ; $69ff: $88
	adc  b                                           ; $6a00: $88
	adc  b                                           ; $6a01: $88
	adc  b                                           ; $6a02: $88
	adc  b                                           ; $6a03: $88
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
	sbc  b                                           ; $6b31: $98
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	sbc  b                                           ; $6b34: $98
	adc  b                                           ; $6b35: $88
	adc  b                                           ; $6b36: $88
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	sbc  b                                           ; $6b39: $98
	add  a                                           ; $6b3a: $87
	ld   a, b                                        ; $6b3b: $78
	sbc  b                                           ; $6b3c: $98
	ld   a, b                                        ; $6b3d: $78
	sbc  b                                           ; $6b3e: $98
	adc  b                                           ; $6b3f: $88
	ld   a, b                                        ; $6b40: $78
	sbc  b                                           ; $6b41: $98
	add  a                                           ; $6b42: $87
	adc  b                                           ; $6b43: $88
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  c                                           ; $6b46: $89
	add  a                                           ; $6b47: $87
	ld   [hl], a                                     ; $6b48: $77
	ld   [hl], a                                     ; $6b49: $77
	halt                                             ; $6b4a: $76
	ld   h, a                                        ; $6b4b: $67
	ld   a, c                                        ; $6b4c: $79
	sbc  b                                           ; $6b4d: $98
	sbc  d                                           ; $6b4e: $9a
	xor  e                                           ; $6b4f: $ab
	xor  c                                           ; $6b50: $a9
	xor  c                                           ; $6b51: $a9
	xor  b                                           ; $6b52: $a8
	halt                                             ; $6b53: $76
	ld   d, h                                        ; $6b54: $54
	ld   [hl-], a                                    ; $6b55: $32
	inc  h                                           ; $6b56: $24
	ld   a, b                                        ; $6b57: $78
	sbc  b                                           ; $6b58: $98
	sbc  e                                           ; $6b59: $9b
	xor  $ba                                         ; $6b5a: $ee $ba
	adc  c                                           ; $6b5c: $89
	sbc  b                                           ; $6b5d: $98
	ld   d, l                                        ; $6b5e: $55
	ld   l, c                                        ; $6b5f: $69
	sbc  c                                           ; $6b60: $99
	xor  e                                           ; $6b61: $ab
	res  7, b                                        ; $6b62: $cb $b8
	ld   [hl], a                                     ; $6b64: $77
	ld   b, c                                        ; $6b65: $41
	ld   de, $9916                                   ; $6b66: $11 $16 $99
	adc  e                                           ; $6b69: $8b
	rst  $38                                         ; $6b6a: $ff
	db   $fd                                         ; $6b6b: $fd
	sbc  b                                           ; $6b6c: $98
	adc  c                                           ; $6b6d: $89
	ld   h, e                                        ; $6b6e: $63
	inc  d                                           ; $6b6f: $14
	ld   a, e                                        ; $6b70: $7b
	call z, $ecde                                    ; $6b71: $cc $de $ec
	and  [hl]                                        ; $6b74: $a6
	ld   sp, $1111                                   ; $6b75: $31 $11 $11
	ld   l, a                                        ; $6b78: $6f
	cp   $ff                                         ; $6b79: $fe $ff
	rst  $38                                         ; $6b7b: $ff
	push de                                          ; $6b7c: $d5
	ld   de, $1143                                   ; $6b7d: $11 $43 $11
	ld   e, e                                        ; $6b80: $5b
	rst  $38                                         ; $6b81: $ff
	rst  $38                                         ; $6b82: $ff
	rst  $28                                         ; $6b83: $ef
	cp   c                                           ; $6b84: $b9
	ld   sp, $1111                                   ; $6b85: $31 $11 $11
	rla                                              ; $6b88: $17
	rst  $38                                         ; $6b89: $ff
	rst  $38                                         ; $6b8a: $ff
	rst  $38                                         ; $6b8b: $ff
	cp   $11                                         ; $6b8c: $fe $11
	ld   de, $1743                                   ; $6b8e: $11 $43 $17
	rst  $38                                         ; $6b91: $ff
	rst  $38                                         ; $6b92: $ff
	db   $db                                         ; $6b93: $db
	db   $db                                         ; $6b94: $db
	ld   [hl], e                                     ; $6b95: $73
	ld   de, $1111                                   ; $6b96: $11 $11 $11
	rra                                              ; $6b99: $1f
	rst  $38                                         ; $6b9a: $ff
	ld   hl, sp-$01                                  ; $6b9b: $f8 $ff
	ldh  a, [c]                                      ; $6b9d: $f2
	ld   de, $b91a                                   ; $6b9e: $11 $1a $b9
	ld   e, l                                        ; $6ba1: $5d
	rst  $38                                         ; $6ba2: $ff
	rst  $38                                         ; $6ba3: $ff
	ld   h, e                                        ; $6ba4: $63
	sbc  h                                           ; $6ba5: $9c
	add  e                                           ; $6ba6: $83
	ld   de, $1111                                   ; $6ba7: $11 $11 $11
	rra                                              ; $6baa: $1f
	rst  $38                                         ; $6bab: $ff
	db   $fc                                         ; $6bac: $fc
	cp   a                                           ; $6bad: $bf
	db   $fc                                         ; $6bae: $fc
	ld   de, $ae11                                   ; $6baf: $11 $11 $ae
	set  7, a                                        ; $6bb2: $cb $ff
	rst  $38                                         ; $6bb4: $ff
	or   e                                           ; $6bb5: $b3
	ld   h, $bb                                      ; $6bb6: $26 $bb
	add  h                                           ; $6bb8: $84
	ld   hl, $1111                                   ; $6bb9: $21 $11 $11
	ld   e, a                                        ; $6bbc: $5f
	rst  $38                                         ; $6bbd: $ff
	ei                                               ; $6bbe: $fb
	xor  a                                           ; $6bbf: $af
	pop  bc                                          ; $6bc0: $c1
	ld   de, $ff17                                   ; $6bc1: $11 $17 $ff
	rst  $38                                         ; $6bc4: $ff
	rst  $38                                         ; $6bc5: $ff
	ld   a, [$3911]                                  ; $6bc6: $fa $11 $39
	rst  $38                                         ; $6bc9: $ff
	or   a                                           ; $6bca: $b7
	ld   hl, $1111                                   ; $6bcb: $21 $11 $11
	ccf                                              ; $6bce: $3f
	rst  $38                                         ; $6bcf: $ff
	cp   $68                                         ; $6bd0: $fe $68
	ld   d, c                                        ; $6bd2: $51
	ld   de, $ff16                                   ; $6bd3: $11 $16 $ff
	rst  $38                                         ; $6bd6: $ff
	rst  $38                                         ; $6bd7: $ff
	add  $11                                         ; $6bd8: $c6 $11
	ld   e, e                                        ; $6bda: $5b
	rst  $38                                         ; $6bdb: $ff
	ei                                               ; $6bdc: $fb
	ld   hl, $1111                                   ; $6bdd: $21 $11 $11
	ld   de, $ffff                                   ; $6be0: $11 $ff $ff
	pop  af                                          ; $6be3: $f1
	ld   de, $1111                                   ; $6be4: $11 $11 $11
	ld   c, a                                        ; $6be7: $4f
	rst  $38                                         ; $6be8: $ff
	rst  $38                                         ; $6be9: $ff
	ld   de, $ae15                                   ; $6bea: $11 $15 $ae
	rst  $38                                         ; $6bed: $ff
	rst  $38                                         ; $6bee: $ff
	pop  de                                          ; $6bef: $d1
	ld   de, $2111                                   ; $6bf0: $11 $11 $21
	ld   de, $ffff                                   ; $6bf3: $11 $ff $ff
	ld   de, $3d11                                   ; $6bf6: $11 $11 $3d
	ld   [hl], d                                     ; $6bf9: $72
	ld   a, a                                        ; $6bfa: $7f
	rst  $38                                         ; $6bfb: $ff
	pop  af                                          ; $6bfc: $f1
	ld   de, $ff2f                                   ; $6bfd: $11 $2f $ff
	rst  $38                                         ; $6c00: $ff
	ei                                               ; $6c01: $fb
	ld   hl, $3a11                                   ; $6c02: $21 $11 $3a
	ld   b, c                                        ; $6c05: $41
	ld   de, $ffff                                   ; $6c06: $11 $ff $ff
	ld   de, $ef11                                   ; $6c09: $11 $11 $ef
	jp   nc, $ff4f                                   ; $6c0c: $d2 $4f $ff

	pop  af                                          ; $6c0f: $f1
	ld   de, $ff9f                                   ; $6c10: $11 $9f $ff
	ld   [$2197], a                                  ; $6c13: $ea $97 $21
	ld   de, $518e                                   ; $6c16: $11 $8e $51
	ld   de, $ffff                                   ; $6c19: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $6c1c: $11 $11 $ff
	pop  af                                          ; $6c1f: $f1
	jr   @+$01                                       ; $6c20: $18 $ff

	di                                               ; $6c22: $f3
	ld   de, $ff5f                                   ; $6c23: $11 $5f $ff
	ld   hl, sp+$76                                  ; $6c26: $f8 $76
	ld   d, d                                        ; $6c28: $52
	ld   de, $917c                                   ; $6c29: $11 $7c $91
	ld   de, $ff1f                                   ; $6c2c: $11 $1f $ff
	pop  af                                          ; $6c2f: $f1
	ld   de, $fa3f                                   ; $6c30: $11 $3f $fa
	ld   de, $ffcf                                   ; $6c33: $11 $cf $ff
	ld   de, $ff18                                   ; $6c36: $11 $18 $ff
	ei                                               ; $6c39: $fb
	add  a                                           ; $6c3a: $87
	add  a                                           ; $6c3b: $87
	ld   b, c                                        ; $6c3c: $41
	jr   z, @-$48                                    ; $6c3d: $28 $b6

	ld   de, rAUD1LEN                                   ; $6c3f: $11 $11 $ff
	rst  $38                                         ; $6c42: $ff
	ld   de, $df11                                   ; $6c43: $11 $11 $df
	pop  de                                          ; $6c46: $d1
	inc  l                                           ; $6c47: $2c
	rst  $38                                         ; $6c48: $ff
	pop  af                                          ; $6c49: $f1
	ld   de, $ff3f                                   ; $6c4a: $11 $3f $ff
	ei                                               ; $6c4d: $fb
	ld   [hl], a                                     ; $6c4e: $77
	ld   [hl], h                                     ; $6c4f: $74
	ld   de, $a16b                                   ; $6c50: $11 $6b $a1
	ld   de, $ff1f                                   ; $6c53: $11 $1f $ff
	ld   a, [$1411]                                  ; $6c56: $fa $11 $14
	rst  $38                                         ; $6c59: $ff
	ld   h, d                                        ; $6c5a: $62
	ld   l, a                                        ; $6c5b: $6f
	rst  $38                                         ; $6c5c: $ff
	or   c                                           ; $6c5d: $b1
	ld   de, $ffaf                                   ; $6c5e: $11 $af $ff
	jp   hl                                          ; $6c61: $e9


	ld   a, c                                        ; $6c62: $79
	add  h                                           ; $6c63: $84
	ld   [de], a                                     ; $6c64: $12
	ld   l, c                                        ; $6c65: $69
	ld   h, c                                        ; $6c66: $61
	ld   de, $ff1f                                   ; $6c67: $11 $1f $ff
	push af                                          ; $6c6a: $f5
	ld   de, $ff15                                   ; $6c6b: $11 $15 $ff
	ld   [hl], e                                     ; $6c6e: $73
	ld   a, a                                        ; $6c6f: $7f
	rst  $38                                         ; $6c70: $ff
	ld   [hl], c                                     ; $6c71: $71
	ld   de, $ffcf                                   ; $6c72: $11 $cf $ff
	rst  $20                                         ; $6c75: $e7
	ld   l, b                                        ; $6c76: $68
	add  e                                           ; $6c77: $83
	ld   [bc], a                                     ; $6c78: $02
	ld   l, h                                        ; $6c79: $6c
	sub  c                                           ; $6c7a: $91
	ld   de, $ff1f                                   ; $6c7b: $11 $1f $ff
	ei                                               ; $6c7e: $fb
	ld   de, rAUD1ENV                                   ; $6c7f: $11 $12 $ff
	sub  e                                           ; $6c82: $93
	ld   c, a                                        ; $6c83: $4f
	rst  $38                                         ; $6c84: $ff
	pop  bc                                          ; $6c85: $c1
	ld   de, $ff8f                                   ; $6c86: $11 $8f $ff
	ld   hl, sp+$67                                  ; $6c89: $f8 $67
	add  h                                           ; $6c8b: $84
	ld   de, $c74b                                   ; $6c8c: $11 $4b $c7
	ld   de, rAUD1LEN                                   ; $6c8f: $11 $11 $ff
	rst  $38                                         ; $6c92: $ff
	ld   de, $af11                                   ; $6c93: $11 $11 $af
	and  $17                                         ; $6c96: $e6 $17
	rst  $38                                         ; $6c98: $ff
	ld   hl, sp+$11                                  ; $6c99: $f8 $11
	dec  e                                           ; $6c9b: $1d
	rst  $38                                         ; $6c9c: $ff
	cp   $77                                         ; $6c9d: $fe $77
	adc  b                                           ; $6c9f: $88
	ld   hl, $ed17                                   ; $6ca0: $21 $17 $ed
	ld   b, c                                        ; $6ca3: $41
	ld   de, $ff1f                                   ; $6ca4: $11 $1f $ff
	pop  af                                          ; $6ca7: $f1
	ld   de, $fc1a                                   ; $6ca8: $11 $1a $fc
	ld   b, c                                        ; $6cab: $41
	ld   a, a                                        ; $6cac: $7f
	rst  $38                                         ; $6cad: $ff
	and  c                                           ; $6cae: $a1
	ld   de, $ffbf                                   ; $6caf: $11 $bf $ff
	ld   hl, sp-$57                                  ; $6cb2: $f8 $a9
	add  e                                           ; $6cb4: $83
	ld   de, $d64c                                   ; $6cb5: $11 $4c $d6
	ld   de, rAUD1LEN                                   ; $6cb8: $11 $11 $ff
	rst  $38                                         ; $6cbb: $ff
	ld   sp, $7f11                                   ; $6cbc: $31 $11 $7f
	and  $15                                         ; $6cbf: $e6 $15
	rst  $38                                         ; $6cc1: $ff
	rst  $38                                         ; $6cc2: $ff
	ld   de, $ff15                                   ; $6cc3: $11 $15 $ff
	rst  $38                                         ; $6cc6: $ff
	xor  d                                           ; $6cc7: $aa
	xor  d                                           ; $6cc8: $aa
	ld   b, c                                        ; $6cc9: $41
	ld   de, $919d                                   ; $6cca: $11 $9d $91
	ld   de, $ff1f                                   ; $6ccd: $11 $1f $ff
	db   $fd                                         ; $6cd0: $fd
	ld   de, rAUD1ENV                                   ; $6cd1: $11 $12 $ff
	ld   [hl], c                                     ; $6cd4: $71
	cpl                                              ; $6cd5: $2f
	rst  $38                                         ; $6cd6: $ff
	push af                                          ; $6cd7: $f5
	ld   de, $ff1f                                   ; $6cd8: $11 $1f $ff
	db   $fd                                         ; $6cdb: $fd
	xor  l                                           ; $6cdc: $ad
	add  $11                                         ; $6cdd: $c6 $11
	inc  d                                           ; $6cdf: $14
	call z, $1111                                    ; $6ce0: $cc $11 $11
	cpl                                              ; $6ce3: $2f
	rst  $38                                         ; $6ce4: $ff
	pop  af                                          ; $6ce5: $f1
	ld   de, $fa1e                                   ; $6ce6: $11 $1e $fa
	ld   de, $ff8f                                   ; $6ce9: $11 $8f $ff
	pop  hl                                          ; $6cec: $e1
	ld   de, $ff7f                                   ; $6ced: $11 $7f $ff
	ld   [$a3bd], a                                  ; $6cf0: $ea $bd $a3
	ld   de, $d819                                   ; $6cf3: $11 $19 $d8
	ld   de, rAUD1LEN                                   ; $6cf6: $11 $11 $ff
	rst  $38                                         ; $6cf9: $ff
	ld   [hl], c                                     ; $6cfa: $71
	ld   de, $c16f                                   ; $6cfb: $11 $6f $c1
	ld   [de], a                                     ; $6cfe: $12
	rst  $38                                         ; $6cff: $ff
	rst  $38                                         ; $6d00: $ff
	ld   [hl], c                                     ; $6d01: $71
	ld   de, $ffef                                   ; $6d02: $11 $ef $ff
	call $91ff                                       ; $6d05: $cd $ff $91
	ld   de, $b22a                                   ; $6d08: $11 $2a $b2
	ld   de, rAUD1LEN                                   ; $6d0b: $11 $11 $ff
	rst  $38                                         ; $6d0e: $ff
	ld   de, $bf11                                   ; $6d0f: $11 $11 $bf
	ld   [hl], c                                     ; $6d12: $71
	dec  d                                           ; $6d13: $15
	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	ld   d, c                                        ; $6d16: $51
	dec  d                                           ; $6d17: $15
	rst  $28                                         ; $6d18: $ef
	db   $fc                                         ; $6d19: $fc
	xor  a                                           ; $6d1a: $af
	rst  $38                                         ; $6d1b: $ff
	sub  c                                           ; $6d1c: $91
	ld   de, $b12b                                   ; $6d1d: $11 $2b $b1
	ld   de, rAUD1LEN                                   ; $6d20: $11 $11 $ff
	rst  $38                                         ; $6d23: $ff
	ld   de, $ef11                                   ; $6d24: $11 $11 $ef
	ld   b, c                                        ; $6d27: $41
	inc  de                                          ; $6d28: $13
	rst  $38                                         ; $6d29: $ff
	rst  $38                                         ; $6d2a: $ff
	ld   [hl], c                                     ; $6d2b: $71
	ld   d, $ef                                      ; $6d2c: $16 $ef
	ld   hl, sp-$71                                  ; $6d2e: $f8 $8f
	rst  $38                                         ; $6d30: $ff
	db   $e3                                         ; $6d31: $e3
	ld   de, $a218                                   ; $6d32: $11 $18 $a2
	ld   de, rAUD1LEN                                   ; $6d35: $11 $11 $ff
	rst  $38                                         ; $6d38: $ff
	add  c                                           ; $6d39: $81
	ld   de, $51af                                   ; $6d3a: $11 $af $51
	ld   de, $ffcf                                   ; $6d3d: $11 $cf $ff
	ldh  a, [c]                                      ; $6d40: $f2
	inc  de                                          ; $6d41: $13
	xor  l                                           ; $6d42: $ad
	ld   sp, hl                                      ; $6d43: $f9
	ld   e, e                                        ; $6d44: $5b
	rst  $38                                         ; $6d45: $ff
	ei                                               ; $6d46: $fb
	ld   de, $7511                                   ; $6d47: $11 $11 $75
	ld   de, $4f11                                   ; $6d4a: $11 $11 $4f
	rst  $38                                         ; $6d4d: $ff
	or   $11                                         ; $6d4e: $f6 $11
	dec  l                                           ; $6d50: $2d
	or   c                                           ; $6d51: $b1
	ld   de, $ff1f                                   ; $6d52: $11 $1f $ff
	rst  $38                                         ; $6d55: $ff
	ld   d, d                                        ; $6d56: $52
	ld   e, e                                        ; $6d57: $5b
	db   $ed                                         ; $6d58: $ed
	ld   h, h                                        ; $6d59: $64
	ld   l, h                                        ; $6d5a: $6c
	rst  $38                                         ; $6d5b: $ff
	push de                                          ; $6d5c: $d5
	ld   de, $1111                                   ; $6d5d: $11 $11 $11
	ld   de, $ff18                                   ; $6d60: $11 $18 $ff
	rst  $38                                         ; $6d63: $ff
	or   c                                           ; $6d64: $b1
	ld   d, $b8                                      ; $6d65: $16 $b8
	ld   de, $bf11                                   ; $6d67: $11 $11 $bf
	rst  $38                                         ; $6d6a: $ff
	db   $fc                                         ; $6d6b: $fc
	ld   [hl], a                                     ; $6d6c: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d6d: $cf
	rst  ToBoot                                         ; $6d6e: $c7
	ld   hl, $ff7e                                   ; $6d6f: $21 $7e $ff
	and  d                                           ; $6d72: $a2
	ld   de, $1111                                   ; $6d73: $11 $11 $11
	ld   de, $ff4f                                   ; $6d76: $11 $4f $ff
	rst  $38                                         ; $6d79: $ff
	ld   [hl], a                                     ; $6d7a: $77
	sbc  d                                           ; $6d7b: $9a
	and  d                                           ; $6d7c: $a2
	ld   de, $ef12                                   ; $6d7d: $11 $12 $ef
	rst  $38                                         ; $6d80: $ff
	cp   $ff                                         ; $6d81: $fe $ff
	rst  $38                                         ; $6d83: $ff
	or   e                                           ; $6d84: $b3
	ld   de, $ca49                                   ; $6d85: $11 $49 $ca
	ld   h, c                                        ; $6d88: $61
	ld   de, $1111                                   ; $6d89: $11 $11 $11
	inc  d                                           ; $6d8c: $14
	rst  $28                                         ; $6d8d: $ef
	rst  $38                                         ; $6d8e: $ff
	rst  $38                                         ; $6d8f: $ff
	db   $fd                                         ; $6d90: $fd
	db   $db                                         ; $6d91: $db
	ld   d, d                                        ; $6d92: $52
	ld   de, $bb16                                   ; $6d93: $11 $16 $bb
	rst  $38                                         ; $6d96: $ff
	rst  $38                                         ; $6d97: $ff
	rst  $38                                         ; $6d98: $ff
	rst  $38                                         ; $6d99: $ff
	or   a                                           ; $6d9a: $b7
	ld   d, h                                        ; $6d9b: $54
	ld   b, l                                        ; $6d9c: $45
	ld   b, e                                        ; $6d9d: $43
	ld   de, $1111                                   ; $6d9e: $11 $11 $11
	inc  d                                           ; $6da1: $14
	ld   a, h                                        ; $6da2: $7c
	db   $ed                                         ; $6da3: $ed
	cp   $ef                                         ; $6da4: $fe $ef
	rst  $38                                         ; $6da6: $ff
	db   $fc                                         ; $6da7: $fc
	add  [hl]                                        ; $6da8: $86
	ld   b, l                                        ; $6da9: $45
	ld   l, c                                        ; $6daa: $69
	adc  d                                           ; $6dab: $8a
	sbc  b                                           ; $6dac: $98
	cp   h                                           ; $6dad: $bc
	rst  JumpTable                                         ; $6dae: $df
	cp   $b9                                         ; $6daf: $fe $b9
	ld   [hl], a                                     ; $6db1: $77
	adc  c                                           ; $6db2: $89
	add  [hl]                                        ; $6db3: $86
	ld   sp, $1111                                   ; $6db4: $31 $11 $11
	ld   [de], a                                     ; $6db7: $12
	dec  [hl]                                        ; $6db8: $35
	ld   h, a                                        ; $6db9: $67
	ld   [hl], a                                     ; $6dba: $77
	sbc  d                                           ; $6dbb: $9a
	cp   h                                           ; $6dbc: $bc
	db   $dd                                         ; $6dbd: $dd
	call z, $bccb                                    ; $6dbe: $cc $cb $bc
	cp   h                                           ; $6dc1: $bc
	cp   d                                           ; $6dc2: $ba
	xor  b                                           ; $6dc3: $a8
	add  a                                           ; $6dc4: $87
	ld   a, b                                        ; $6dc5: $78
	sbc  c                                           ; $6dc6: $99
	sbc  d                                           ; $6dc7: $9a
	xor  d                                           ; $6dc8: $aa
	sbc  d                                           ; $6dc9: $9a
	sbc  c                                           ; $6dca: $99
	sub  a                                           ; $6dcb: $97
	ld   h, l                                        ; $6dcc: $65
	ld   d, h                                        ; $6dcd: $54
	ld   b, h                                        ; $6dce: $44
	inc  sp                                          ; $6dcf: $33
	inc  sp                                          ; $6dd0: $33
	inc  [hl]                                        ; $6dd1: $34
	ld   b, h                                        ; $6dd2: $44
	ld   d, [hl]                                     ; $6dd3: $56
	ld   a, b                                        ; $6dd4: $78
	adc  c                                           ; $6dd5: $89
	sbc  d                                           ; $6dd6: $9a
	cp   h                                           ; $6dd7: $bc
	db   $dd                                         ; $6dd8: $dd
	call z, $bbba                                    ; $6dd9: $cc $ba $bb
	call c, $bacb                                    ; $6ddc: $dc $cb $ba
	xor  e                                           ; $6ddf: $ab
	cp   e                                           ; $6de0: $bb
	xor  b                                           ; $6de1: $a8
	halt                                             ; $6de2: $76
	ld   d, l                                        ; $6de3: $55
	ld   b, e                                        ; $6de4: $43
	ld   [hl-], a                                    ; $6de5: $32
	ld   [hl+], a                                    ; $6de6: $22
	ld   [hl+], a                                    ; $6de7: $22
	ld   de, $4623                                   ; $6de8: $11 $23 $46
	ld   a, b                                        ; $6deb: $78
	adc  c                                           ; $6dec: $89
	sbc  e                                           ; $6ded: $9b
	res  7, e                                        ; $6dee: $cb $bb
	set  1, h                                        ; $6df0: $cb $cc
	call c, $bcbb                                    ; $6df2: $dc $bb $bc
	call $aacb                                       ; $6df5: $cd $cb $aa
	sbc  c                                           ; $6df8: $99
	adc  b                                           ; $6df9: $88
	ld   [hl], l                                     ; $6dfa: $75
	ld   d, h                                        ; $6dfb: $54
	ld   b, h                                        ; $6dfc: $44
	ld   [hl-], a                                    ; $6dfd: $32
	ld   hl, $1211                                   ; $6dfe: $21 $11 $12
	inc  [hl]                                        ; $6e01: $34
	ld   d, [hl]                                     ; $6e02: $56
	adc  b                                           ; $6e03: $88
	xor  d                                           ; $6e04: $aa
	xor  e                                           ; $6e05: $ab
	cp   h                                           ; $6e06: $bc
	call z, $bbcb                                    ; $6e07: $cc $cb $bb
	call z, $cbcd                                    ; $6e0a: $cc $cd $cb
	cp   e                                           ; $6e0d: $bb
	cp   e                                           ; $6e0e: $bb
	cp   d                                           ; $6e0f: $ba
	xor  c                                           ; $6e10: $a9
	adc  b                                           ; $6e11: $88
	halt                                             ; $6e12: $76
	ld   d, h                                        ; $6e13: $54
	ld   [hl+], a                                    ; $6e14: $22
	ld   [hl+], a                                    ; $6e15: $22
	ld   hl, $1211                                   ; $6e16: $21 $11 $12
	inc  [hl]                                        ; $6e19: $34
	ld   h, a                                        ; $6e1a: $67
	ld   a, b                                        ; $6e1b: $78
	sbc  d                                           ; $6e1c: $9a
	cp   e                                           ; $6e1d: $bb
	call z, $dccd                                    ; $6e1e: $cc $cd $dc
	set  1, h                                        ; $6e21: $cb $cc
	cp   h                                           ; $6e23: $bc
	call z, $cbbc                                    ; $6e24: $cc $bc $cb
	cp   d                                           ; $6e27: $ba
	xor  c                                           ; $6e28: $a9
	add  a                                           ; $6e29: $87
	ld   h, [hl]                                     ; $6e2a: $66
	ld   d, h                                        ; $6e2b: $54
	inc  sp                                          ; $6e2c: $33
	ld   [hl-], a                                    ; $6e2d: $32
	ld   [hl+], a                                    ; $6e2e: $22
	ld   de, $1311                                   ; $6e2f: $11 $11 $13
	ld   d, [hl]                                     ; $6e32: $56
	ld   a, c                                        ; $6e33: $79
	xor  e                                           ; $6e34: $ab
	set  1, h                                        ; $6e35: $cb $cc
	call $cdcd                                       ; $6e37: $cd $cd $cd
	call $dcdd                                       ; $6e3a: $cd $dd $dc
	res  7, e                                        ; $6e3d: $cb $bb
	xor  c                                           ; $6e3f: $a9
	sbc  b                                           ; $6e40: $98
	add  a                                           ; $6e41: $87
	ld   h, l                                        ; $6e42: $65
	ld   b, d                                        ; $6e43: $42
	ld   de, $1111                                   ; $6e44: $11 $11 $11
	ld   de, $3511                                   ; $6e47: $11 $11 $35
	adc  c                                           ; $6e4a: $89
	xor  e                                           ; $6e4b: $ab
	xor  e                                           ; $6e4c: $ab
	cp   e                                           ; $6e4d: $bb
	call c, $eeee                                    ; $6e4e: $dc $ee $ee
	call c, $cddc                                    ; $6e51: $dc $dc $cd
	call c, $babb                                    ; $6e54: $dc $bb $ba
	sbc  c                                           ; $6e57: $99
	sub  a                                           ; $6e58: $97
	ld   h, h                                        ; $6e59: $64
	ld   sp, $1111                                   ; $6e5a: $31 $11 $11
	ld   de, $1111                                   ; $6e5d: $11 $11 $11
	dec  h                                           ; $6e60: $25
	ld   a, c                                        ; $6e61: $79
	xor  e                                           ; $6e62: $ab
	cp   e                                           ; $6e63: $bb
	call z, $eecd                                    ; $6e64: $cc $cd $ee
	xor  $dc                                         ; $6e67: $ee $dc
	call z, $ddcc                                    ; $6e69: $cc $cc $dd
	call c, $98ba                                    ; $6e6c: $dc $ba $98
	ld   [hl], a                                     ; $6e6f: $77
	ld   d, h                                        ; $6e70: $54
	ld   hl, $1111                                   ; $6e71: $21 $11 $11
	ld   de, $1111                                   ; $6e74: $11 $11 $11
	dec  h                                           ; $6e77: $25
	ld   a, b                                        ; $6e78: $78
	xor  e                                           ; $6e79: $ab
	cp   h                                           ; $6e7a: $bc
	call $efcd                                       ; $6e7b: $cd $cd $ef
	rst  $28                                         ; $6e7e: $ef
	db   $ed                                         ; $6e7f: $ed
	call c, $dddd                                    ; $6e80: $dc $dd $dd
	res  7, d                                        ; $6e83: $cb $ba
	xor  c                                           ; $6e85: $a9
	halt                                             ; $6e86: $76
	ld   d, e                                        ; $6e87: $53
	ld   hl, $1111                                   ; $6e88: $21 $11 $11
	ld   bc, $1111                                   ; $6e8b: $01 $11 $11
	ld   [hl], $8a                                   ; $6e8e: $36 $8a
	xor  e                                           ; $6e90: $ab
	cp   h                                           ; $6e91: $bc
	call z, $ffdd                                    ; $6e92: $cc $dd $ff
	cp   $ed                                         ; $6e95: $fe $ed
	call z, $dcdc                                    ; $6e97: $cc $dc $dc
	db   $db                                         ; $6e9a: $db
	xor  d                                           ; $6e9b: $aa
	sub  a                                           ; $6e9c: $97
	ld   [hl], l                                     ; $6e9d: $75
	ld   b, e                                        ; $6e9e: $43
	ld   hl, $1111                                   ; $6e9f: $21 $11 $11
	ld   de, $1111                                   ; $6ea2: $11 $11 $11
	ld   [hl], $89                                   ; $6ea5: $36 $89
	cp   h                                           ; $6ea7: $bc
	call $dddc                                       ; $6ea8: $cd $dc $dd
	rst  $28                                         ; $6eab: $ef
	cp   $dd                                         ; $6eac: $fe $dd
	call z, $dddc                                    ; $6eae: $cc $dc $dd
	db   $db                                         ; $6eb1: $db
	cp   c                                           ; $6eb2: $b9
	sub  a                                           ; $6eb3: $97
	ld   h, l                                        ; $6eb4: $65
	ld   b, d                                        ; $6eb5: $42
	ld   de, $1111                                   ; $6eb6: $11 $11 $11
	ld   de, $1111                                   ; $6eb9: $11 $11 $11
	ld   b, [hl]                                     ; $6ebc: $46
	sbc  e                                           ; $6ebd: $9b
	cp   e                                           ; $6ebe: $bb
	call $cedc                                       ; $6ebf: $cd $dc $ce
	sbc  $ee                                         ; $6ec2: $de $ee
	db   $ed                                         ; $6ec4: $ed
	call $dddd                                       ; $6ec5: $cd $dd $dd
	call c, $87ba                                    ; $6ec8: $dc $ba $87
	ld   d, h                                        ; $6ecb: $54
	ld   [hl-], a                                    ; $6ecc: $32
	ld   de, $1111                                   ; $6ecd: $11 $11 $11
	ld   de, $1111                                   ; $6ed0: $11 $11 $11
	ld   b, [hl]                                     ; $6ed3: $46
	adc  d                                           ; $6ed4: $8a
	call z, $cddd                                    ; $6ed5: $cc $dd $cd
	db   $dd                                         ; $6ed8: $dd
	rst  $28                                         ; $6ed9: $ef
	rst  $28                                         ; $6eda: $ef
	db   $ed                                         ; $6edb: $ed
	call z, $dccd                                    ; $6edc: $cc $cd $dc
	res  5, b                                        ; $6edf: $cb $a8
	halt                                             ; $6ee1: $76
	ld   d, h                                        ; $6ee2: $54
	ld   sp, $1111                                   ; $6ee3: $31 $11 $11
	ld   hl, $1111                                   ; $6ee6: $21 $11 $11
	inc  de                                          ; $6ee9: $13
	ld   d, a                                        ; $6eea: $57
	xor  e                                           ; $6eeb: $ab
	cp   l                                           ; $6eec: $bd
	db   $dd                                         ; $6eed: $dd
	db   $dd                                         ; $6eee: $dd
	call $eeef                                       ; $6eef: $cd $ef $ee
	db   $ed                                         ; $6ef2: $ed
	call z, $ddcd                                    ; $6ef3: $cc $cd $dd
	cp   d                                           ; $6ef6: $ba
	sbc  b                                           ; $6ef7: $98
	ld   [hl], l                                     ; $6ef8: $75
	ld   b, e                                        ; $6ef9: $43
	ld   de, $1211                                   ; $6efa: $11 $11 $12
	ld   de, $1111                                   ; $6efd: $11 $11 $11
	inc  d                                           ; $6f00: $14
	ld   l, b                                        ; $6f01: $68
	xor  h                                           ; $6f02: $ac
	adc  $cd                                         ; $6f03: $ce $cd
	call $ffcd                                       ; $6f05: $cd $cd $ff
	cp   $ed                                         ; $6f08: $fe $ed
	db   $dd                                         ; $6f0a: $dd
	db   $dd                                         ; $6f0b: $dd
	call $87ba                                       ; $6f0c: $cd $ba $87
	ld   d, h                                        ; $6f0f: $54
	ld   hl, $1111                                   ; $6f10: $21 $11 $11
	ld   hl, $1111                                   ; $6f13: $21 $11 $11
	ld   de, $8b35                                   ; $6f16: $11 $35 $8b
	cp   h                                           ; $6f19: $bc
	db   $ed                                         ; $6f1a: $ed
	db   $dd                                         ; $6f1b: $dd
	call $ffde                                       ; $6f1c: $cd $de $ff
	cp   $ed                                         ; $6f1f: $fe $ed
	sbc  $dc                                         ; $6f21: $de $dc
	call z, $75a8                                    ; $6f23: $cc $a8 $75
	ld   [hl-], a                                    ; $6f26: $32
	ld   de, $1211                                   ; $6f27: $11 $11 $12
	ld   de, $1111                                   ; $6f2a: $11 $11 $11
	inc  de                                          ; $6f2d: $13
	ld   e, c                                        ; $6f2e: $59
	cp   h                                           ; $6f2f: $bc
	sbc  $ee                                         ; $6f30: $de $ee
	db   $dd                                         ; $6f32: $dd
	sbc  $ff                                         ; $6f33: $de $ff
	rst  $38                                         ; $6f35: $ff
	cp   $dd                                         ; $6f36: $fe $dd
	db   $ed                                         ; $6f38: $ed
	call c, $86ba                                    ; $6f39: $dc $ba $86
	ld   b, d                                        ; $6f3c: $42
	ld   de, $1211                                   ; $6f3d: $11 $11 $12
	ld   hl, $1111                                   ; $6f40: $21 $11 $11
	ld   [de], a                                     ; $6f43: $12
	ld   b, [hl]                                     ; $6f44: $46
	sbc  e                                           ; $6f45: $9b
	db   $dd                                         ; $6f46: $dd
	xor  $dd                                         ; $6f47: $ee $dd
	sbc  $ef                                         ; $6f49: $de $ef
	rst  $38                                         ; $6f4b: $ff
	rst  $38                                         ; $6f4c: $ff
	db   $ed                                         ; $6f4d: $ed
	xor  $ed                                         ; $6f4e: $ee $ed
	res  2, [hl]                                     ; $6f50: $cb $96
	ld   b, d                                        ; $6f52: $42
	ld   de, $1211                                   ; $6f53: $11 $11 $12
	ld   hl, $1111                                   ; $6f56: $21 $11 $11
	ld   [de], a                                     ; $6f59: $12
	ld   [hl], $9a                                   ; $6f5a: $36 $9a
	adc  $ef                                         ; $6f5c: $ce $ef
	sbc  $de                                         ; $6f5e: $de $de
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	rst  $38                                         ; $6f62: $ff
	cp   $ff                                         ; $6f63: $fe $ff
	db   $ed                                         ; $6f65: $ed
	cp   d                                           ; $6f66: $ba
	add  l                                           ; $6f67: $85
	ld   b, c                                        ; $6f68: $41
	ld   de, $2111                                   ; $6f69: $11 $11 $21
	ld   bc, $1111                                   ; $6f6c: $01 $11 $11
	ld   [de], a                                     ; $6f6f: $12
	ld   e, c                                        ; $6f70: $59
	sbc  h                                           ; $6f71: $9c
	rst  $28                                         ; $6f72: $ef
	rst  $38                                         ; $6f73: $ff
	rst  $38                                         ; $6f74: $ff
	rst  $38                                         ; $6f75: $ff
	rst  $38                                         ; $6f76: $ff
	rst  $38                                         ; $6f77: $ff
	xor  $dd                                         ; $6f78: $ee $dd
	call c, Call_0f2_75c9                            ; $6f7a: $dc $c9 $75
	ld   hl, $1111                                   ; $6f7d: $21 $11 $11
	ld   [de], a                                     ; $6f80: $12
	ld   b, [hl]                                     ; $6f81: $46
	add  l                                           ; $6f82: $85
	ld   b, d                                        ; $6f83: $42
	ld   [hl], $8b                                   ; $6f84: $36 $8b
	db   $ed                                         ; $6f86: $ed
	rst  $38                                         ; $6f87: $ff
	rst  JumpTable                                         ; $6f88: $df
	call $eeed                                       ; $6f89: $cd $ed $ee
	rst  $28                                         ; $6f8c: $ef
	db   $ed                                         ; $6f8d: $ed
	db   $ed                                         ; $6f8e: $ed
	db   $ec                                         ; $6f8f: $ec
	cp   e                                           ; $6f90: $bb
	ld   h, h                                        ; $6f91: $64
	ld   de, $1111                                   ; $6f92: $11 $11 $11
	ld   de, $aa25                                   ; $6f95: $11 $25 $aa
	cp   h                                           ; $6f98: $bc
	call $ffff                                       ; $6f99: $cd $ff $ff
	rst  $38                                         ; $6f9c: $ff
	db   $ed                                         ; $6f9d: $ed
	cp   c                                           ; $6f9e: $b9
	xor  c                                           ; $6f9f: $a9
	xor  h                                           ; $6fa0: $ac
	call $ffee                                       ; $6fa1: $cd $ee $ff
	db   $ed                                         ; $6fa4: $ed
	and  [hl]                                        ; $6fa5: $a6
	ld   hl, $1111                                   ; $6fa6: $21 $11 $11
	ld   de, $9a13                                   ; $6fa9: $11 $13 $9a
	adc  $cf                                         ; $6fac: $ce $cf
	rst  $38                                         ; $6fae: $ff
	rst  $38                                         ; $6faf: $ff
	rst  $38                                         ; $6fb0: $ff
	xor  $c9                                         ; $6fb1: $ee $c9
	sbc  b                                           ; $6fb3: $98
	adc  d                                           ; $6fb4: $8a
	cp   l                                           ; $6fb5: $bd
	xor  $fd                                         ; $6fb6: $ee $fd
	jp   z, $1151                                    ; $6fb8: $ca $51 $11

	ld   de, $1411                                   ; $6fbb: $11 $11 $14
	adc  l                                           ; $6fbe: $8d
	db   $ed                                         ; $6fbf: $ed
	db   $dd                                         ; $6fc0: $dd
	xor  $ff                                         ; $6fc1: $ee $ff
	rst  $38                                         ; $6fc3: $ff
	cp   $da                                         ; $6fc4: $fe $da
	sbc  b                                           ; $6fc6: $98
	sbc  c                                           ; $6fc7: $99
	cp   l                                           ; $6fc8: $bd
	rst  $28                                         ; $6fc9: $ef
	cp   $c7                                         ; $6fca: $fe $c7
	ld   hl, $1111                                   ; $6fcc: $21 $11 $11
	ld   de, $ff5a                                   ; $6fcf: $11 $5a $ff
	rst  $38                                         ; $6fd2: $ff
	call $fecd                                       ; $6fd3: $cd $cd $fe
	rst  $38                                         ; $6fd6: $ff
	db   $dd                                         ; $6fd7: $dd
	xor  b                                           ; $6fd8: $a8
	add  a                                           ; $6fd9: $87
	sbc  d                                           ; $6fda: $9a
	adc  $ff                                         ; $6fdb: $ce $ff
	reti                                             ; $6fdd: $d9


	ld   b, c                                        ; $6fde: $41
	ld   de, $1111                                   ; $6fdf: $11 $11 $11
	ld   l, e                                        ; $6fe2: $6b
	rst  $38                                         ; $6fe3: $ff
	rst  $38                                         ; $6fe4: $ff
	db   $eb                                         ; $6fe5: $eb
	cp   d                                           ; $6fe6: $ba
	call $fdff                                       ; $6fe7: $cd $ff $fd
	ret  z                                           ; $6fea: $c8

	halt                                             ; $6feb: $76
	ld   a, c                                        ; $6fec: $79
	adc  $ed                                         ; $6fed: $ce $ed
	and  l                                           ; $6fef: $a5
	ld   de, $1111                                   ; $6ff0: $11 $11 $11
	dec  d                                           ; $6ff3: $15
	rst  JumpTable                                         ; $6ff4: $df
	rst  $38                                         ; $6ff5: $ff
	cp   $db                                         ; $6ff6: $fe $db
	sbc  e                                           ; $6ff8: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ff9: $cf
	rst  $38                                         ; $6ffa: $ff
	cp   $97                                         ; $6ffb: $fe $97
	ld   h, [hl]                                     ; $6ffd: $66
	adc  d                                           ; $6ffe: $8a
	call z, $11a7                                    ; $6fff: $cc $a7 $11
	ld   de, $1211                                   ; $7002: $11 $11 $12
	xor  a                                           ; $7005: $af
	rst  $38                                         ; $7006: $ff
	rst  $38                                         ; $7007: $ff
	call c, $cd88                                    ; $7008: $dc $88 $cd
	rst  $38                                         ; $700b: $ff
	rst  $38                                         ; $700c: $ff
	reti                                             ; $700d: $d9


	halt                                             ; $700e: $76
	ld   a, b                                        ; $700f: $78
	xor  d                                           ; $7010: $aa
	ld   [hl], e                                     ; $7011: $73
	ld   de, $1111                                   ; $7012: $11 $11 $11
	add  hl, de                                      ; $7015: $19
	rst  $38                                         ; $7016: $ff
	rst  $38                                         ; $7017: $ff
	rst  $38                                         ; $7018: $ff
	reti                                             ; $7019: $d9


	sbc  d                                           ; $701a: $9a
	rst  JumpTable                                         ; $701b: $df
	rst  $38                                         ; $701c: $ff
	cp   $c9                                         ; $701d: $fe $c9
	ld   [hl], a                                     ; $701f: $77
	halt                                             ; $7020: $76
	ld   d, d                                        ; $7021: $52
	ld   de, $1111                                   ; $7022: $11 $11 $11
	ld   d, $ff                                      ; $7025: $16 $ff
	rst  $38                                         ; $7027: $ff
	rst  $38                                         ; $7028: $ff
	ld   [$bf8a], a                                  ; $7029: $ea $8a $bf
	rst  $38                                         ; $702c: $ff
	rst  $38                                         ; $702d: $ff
	res  0, a                                        ; $702e: $cb $87
	ld   h, l                                        ; $7030: $65
	ld   sp, $1111                                   ; $7031: $31 $11 $11
	ld   de, $ff3b                                   ; $7034: $11 $3b $ff
	rst  $38                                         ; $7037: $ff
	cp   $c9                                         ; $7038: $fe $c9
	sbc  e                                           ; $703a: $9b
	rst  $28                                         ; $703b: $ef
	rst  $38                                         ; $703c: $ff
	db   $fc                                         ; $703d: $fc
	and  a                                           ; $703e: $a7
	halt                                             ; $703f: $76
	ld   b, d                                        ; $7040: $42
	ld   de, $1111                                   ; $7041: $11 $11 $11
	ld   d, $ff                                      ; $7044: $16 $ff
	rst  $38                                         ; $7046: $ff
	rst  $38                                         ; $7047: $ff
	res  3, d                                        ; $7048: $cb $9a
	rst  $28                                         ; $704a: $ef
	rst  $38                                         ; $704b: $ff
	cp   $b8                                         ; $704c: $fe $b8
	ld   d, h                                        ; $704e: $54
	ld   sp, $1111                                   ; $704f: $31 $11 $11
	ld   de, $ff17                                   ; $7052: $11 $17 $ff
	rst  $38                                         ; $7055: $ff
	rst  $38                                         ; $7056: $ff
	jp   z, $ff8a                                    ; $7057: $ca $8a $ff

	rst  $38                                         ; $705a: $ff
	cp   $a6                                         ; $705b: $fe $a6
	ld   sp, $1111                                   ; $705d: $31 $11 $11
	ld   de, $3e11                                   ; $7060: $11 $11 $3e
	rst  $38                                         ; $7063: $ff
	rst  $38                                         ; $7064: $ff
	db   $fd                                         ; $7065: $fd
	xor  b                                           ; $7066: $a8
	adc  l                                           ; $7067: $8d
	rst  $38                                         ; $7068: $ff
	rst  $38                                         ; $7069: $ff
	db   $fd                                         ; $706a: $fd
	sub  l                                           ; $706b: $95
	ld   de, $1111                                   ; $706c: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $706f: $11 $14 $ff
	rst  $38                                         ; $7072: $ff
	rst  $38                                         ; $7073: $ff
	ret                                              ; $7074: $c9


	ld   a, c                                        ; $7075: $79
	rst  JumpTable                                         ; $7076: $df
	rst  $38                                         ; $7077: $ff
	rst  $38                                         ; $7078: $ff
	rst  $10                                         ; $7079: $d7
	ld   b, c                                        ; $707a: $41
	ld   de, $1111                                   ; $707b: $11 $11 $11
	ld   de, $ffef                                   ; $707e: $11 $ef $ff
	rst  $38                                         ; $7081: $ff
	reti                                             ; $7082: $d9


	ld   h, [hl]                                     ; $7083: $66
	cp   a                                           ; $7084: $bf
	rst  $38                                         ; $7085: $ff
	rst  $38                                         ; $7086: $ff
	add  sp, $51                                     ; $7087: $e8 $51
	ld   de, $1111                                   ; $7089: $11 $11 $11
	inc  de                                          ; $708c: $13
	rst  $38                                         ; $708d: $ff
	rst  $38                                         ; $708e: $ff
	rst  $38                                         ; $708f: $ff
	rst  ToBoot                                         ; $7090: $c7
	ld   h, [hl]                                     ; $7091: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7092: $cf
	rst  $38                                         ; $7093: $ff
	rst  $38                                         ; $7094: $ff
	add  $21                                         ; $7095: $c6 $21
	ld   de, $1111                                   ; $7097: $11 $11 $11
	dec  e                                           ; $709a: $1d
	rst  $38                                         ; $709b: $ff
	rst  $38                                         ; $709c: $ff
	cp   $86                                         ; $709d: $fe $86
	ld   l, c                                        ; $709f: $69
	rst  $38                                         ; $70a0: $ff
	rst  $38                                         ; $70a1: $ff
	db   $fd                                         ; $70a2: $fd
	ld   [hl], c                                     ; $70a3: $71
	ld   de, $1111                                   ; $70a4: $11 $11 $11
	inc  de                                          ; $70a7: $13
	rst  $38                                         ; $70a8: $ff
	rst  $38                                         ; $70a9: $ff
	rst  $38                                         ; $70aa: $ff
	rst  ToBoot                                         ; $70ab: $c7
	ld   d, [hl]                                     ; $70ac: $56
	cp   a                                           ; $70ad: $bf
	rst  $38                                         ; $70ae: $ff
	rst  $38                                         ; $70af: $ff
	push bc                                          ; $70b0: $c5
	ld   de, $1111                                   ; $70b1: $11 $11 $11
	ld   de, $ffdf                                   ; $70b4: $11 $df $ff
	rst  $38                                         ; $70b7: $ff
	sub  $45                                         ; $70b8: $d6 $45
	xor  a                                           ; $70ba: $af
	rst  $38                                         ; $70bb: $ff
	rst  $38                                         ; $70bc: $ff
	and  $11                                         ; $70bd: $e6 $11
	ld   de, $1111                                   ; $70bf: $11 $11 $11
	rst  $38                                         ; $70c2: $ff
	rst  $38                                         ; $70c3: $ff
	rst  $38                                         ; $70c4: $ff
	push de                                          ; $70c5: $d5
	inc  [hl]                                        ; $70c6: $34
	sbc  a                                           ; $70c7: $9f
	rst  $38                                         ; $70c8: $ff
	rst  $38                                         ; $70c9: $ff
	db   $e4                                         ; $70ca: $e4
	ld   de, $1111                                   ; $70cb: $11 $11 $11
	jr   @+$01                                       ; $70ce: $18 $ff

	rst  $38                                         ; $70d0: $ff
	rst  $38                                         ; $70d1: $ff
	ld   [hl], d                                     ; $70d2: $72
	dec  h                                           ; $70d3: $25
	rst  JumpTable                                         ; $70d4: $df
	rst  $38                                         ; $70d5: $ff
	rst  $38                                         ; $70d6: $ff
	add  c                                           ; $70d7: $81
	ld   de, $1111                                   ; $70d8: $11 $11 $11
	ld   e, a                                        ; $70db: $5f
	rst  $38                                         ; $70dc: $ff
	rst  $38                                         ; $70dd: $ff
	ld   hl, sp+$12                                  ; $70de: $f8 $12
	ld   e, d                                        ; $70e0: $5a
	rst  $38                                         ; $70e1: $ff
	rst  $38                                         ; $70e2: $ff
	ld   sp, hl                                      ; $70e3: $f9
	ld   de, $1111                                   ; $70e4: $11 $11 $11
	jr   @+$01                                       ; $70e7: $18 $ff

	rst  $38                                         ; $70e9: $ff
	rst  $38                                         ; $70ea: $ff
	ld   h, c                                        ; $70eb: $61
	dec  h                                           ; $70ec: $25
	cp   a                                           ; $70ed: $bf
	rst  $38                                         ; $70ee: $ff
	db   $fd                                         ; $70ef: $fd
	ld   b, c                                        ; $70f0: $41
	ld   de, $1111                                   ; $70f1: $11 $11 $11
	rst  $38                                         ; $70f4: $ff
	rst  $38                                         ; $70f5: $ff
	rst  $38                                         ; $70f6: $ff
	and  c                                           ; $70f7: $a1
	inc  bc                                          ; $70f8: $03
	adc  a                                           ; $70f9: $8f
	rst  $38                                         ; $70fa: $ff
	rst  $38                                         ; $70fb: $ff
	ld   h, c                                        ; $70fc: $61
	ld   de, $1211                                   ; $70fd: $11 $11 $12
	rst  $38                                         ; $7100: $ff
	rst  $38                                         ; $7101: $ff
	rst  $38                                         ; $7102: $ff
	ld   [hl], c                                     ; $7103: $71
	ld   de, $ffaf                                   ; $7104: $11 $af $ff
	cp   $31                                         ; $7107: $fe $31
	ld   de, $1d11                                   ; $7109: $11 $11 $1d
	rst  $38                                         ; $710c: $ff
	rst  $38                                         ; $710d: $ff
	db   $fc                                         ; $710e: $fc
	ld   de, $df12                                   ; $710f: $11 $12 $df
	rst  $38                                         ; $7112: $ff
	push af                                          ; $7113: $f5
	ld   de, $1111                                   ; $7114: $11 $11 $11
	rst  $38                                         ; $7117: $ff
	rst  $38                                         ; $7118: $ff
	rst  $38                                         ; $7119: $ff
	pop  de                                          ; $711a: $d1
	ld   de, $ff1b                                   ; $711b: $11 $1b $ff
	db   $fc                                         ; $711e: $fc
	ld   de, $1111                                   ; $711f: $11 $11 $11
	sbc  a                                           ; $7122: $9f
	rst  $38                                         ; $7123: $ff
	rst  $38                                         ; $7124: $ff
	db   $f4                                         ; $7125: $f4
	ld   de, $ce14                                   ; $7126: $11 $14 $ce
	push hl                                          ; $7129: $e5
	ld   de, $1211                                   ; $712a: $11 $11 $12
	rst  $38                                         ; $712d: $ff
	rst  $38                                         ; $712e: $ff
	rst  $38                                         ; $712f: $ff
	pop  de                                          ; $7130: $d1
	ld   de, $2111                                   ; $7131: $11 $11 $21
	ld   de, $1611                                   ; $7134: $11 $11 $16
	rst  $38                                         ; $7137: $ff
	rst  $38                                         ; $7138: $ff
	rst  $38                                         ; $7139: $ff
	ldh  a, [c]                                      ; $713a: $f2
	ld   de, $1111                                   ; $713b: $11 $11 $11
	ld   de, $af11                                   ; $713e: $11 $11 $af
	rst  $38                                         ; $7141: $ff
	rst  $38                                         ; $7142: $ff
	rst  $38                                         ; $7143: $ff
	add  e                                           ; $7144: $83
	ld   de, $1111                                   ; $7145: $11 $11 $11
	ld   de, $ff2d                                   ; $7148: $11 $2d $ff
	rst  $38                                         ; $714b: $ff
	rst  $38                                         ; $714c: $ff
	ld   a, [$1142]                                  ; $714d: $fa $42 $11
	ld   de, $1111                                   ; $7150: $11 $11 $11
	adc  a                                           ; $7153: $8f
	rst  $38                                         ; $7154: $ff
	rst  $38                                         ; $7155: $ff
	rst  $38                                         ; $7156: $ff
	push bc                                          ; $7157: $c5
	ld   sp, $1111                                   ; $7158: $31 $11 $11
	ld   de, $ff18                                   ; $715b: $11 $18 $ff
	rst  $38                                         ; $715e: $ff
	rst  $38                                         ; $715f: $ff
	ei                                               ; $7160: $fb
	ld   d, h                                        ; $7161: $54
	ld   de, $1111                                   ; $7162: $11 $11 $11
	ld   de, $ffcf                                   ; $7165: $11 $cf $ff
	rst  $38                                         ; $7168: $ff
	rst  $38                                         ; $7169: $ff
	sub  h                                           ; $716a: $94
	ld   hl, $1111                                   ; $716b: $21 $11 $11
	ld   de, $ff5f                                   ; $716e: $11 $5f $ff
	rst  $38                                         ; $7171: $ff
	rst  $38                                         ; $7172: $ff
	ld   hl, sp+$52                                  ; $7173: $f8 $52
	ld   de, $1111                                   ; $7175: $11 $11 $11
	ld   a, [de]                                     ; $7178: $1a
	rst  $38                                         ; $7179: $ff
	rst  $38                                         ; $717a: $ff
	rst  $38                                         ; $717b: $ff
	db   $fc                                         ; $717c: $fc
	ld   h, [hl]                                     ; $717d: $66
	ld   de, $1111                                   ; $717e: $11 $11 $11
	inc  d                                           ; $7181: $14
	rst  $28                                         ; $7182: $ef
	rst  $38                                         ; $7183: $ff
	rst  $38                                         ; $7184: $ff
	db   $fd                                         ; $7185: $fd
	sub  h                                           ; $7186: $94
	ld   sp, $1111                                   ; $7187: $31 $11 $11
	ld   [de], a                                     ; $718a: $12
	xor  a                                           ; $718b: $af
	rst  $38                                         ; $718c: $ff
	rst  $38                                         ; $718d: $ff
	rst  $38                                         ; $718e: $ff
	or   a                                           ; $718f: $b7
	ld   d, c                                        ; $7190: $51
	ld   de, $1111                                   ; $7191: $11 $11 $11
	xor  a                                           ; $7194: $af
	rst  $38                                         ; $7195: $ff
	rst  $38                                         ; $7196: $ff
	rst  $38                                         ; $7197: $ff
	rst  ToBoot                                         ; $7198: $c7
	ld   d, d                                        ; $7199: $52
	ld   de, $1111                                   ; $719a: $11 $11 $11
	adc  a                                           ; $719d: $8f
	rst  $38                                         ; $719e: $ff
	rst  $38                                         ; $719f: $ff
	rst  $38                                         ; $71a0: $ff
	reti                                             ; $71a1: $d9


	ld   d, d                                        ; $71a2: $52
	ld   de, $1111                                   ; $71a3: $11 $11 $11
	sbc  a                                           ; $71a6: $9f
	rst  $38                                         ; $71a7: $ff
	rst  $38                                         ; $71a8: $ff
	rst  $38                                         ; $71a9: $ff
	jp   hl                                          ; $71aa: $e9


Call_0f2_71ab:
	ld   d, d                                        ; $71ab: $52
	ld   de, $1111                                   ; $71ac: $11 $11 $11
	xor  a                                           ; $71af: $af
	rst  $38                                         ; $71b0: $ff
	rst  $38                                         ; $71b1: $ff
	rst  $38                                         ; $71b2: $ff
	ret  z                                           ; $71b3: $c8

	ld   d, d                                        ; $71b4: $52
	ld   de, $1111                                   ; $71b5: $11 $11 $11
	xor  a                                           ; $71b8: $af
	rst  $38                                         ; $71b9: $ff
	rst  $38                                         ; $71ba: $ff
	rst  $38                                         ; $71bb: $ff
	add  sp, $41                                     ; $71bc: $e8 $41
	ld   de, $1211                                   ; $71be: $11 $11 $12
	rst  JumpTable                                         ; $71c1: $df
	rst  $38                                         ; $71c2: $ff
	rst  $38                                         ; $71c3: $ff
	rst  $38                                         ; $71c4: $ff
	reti                                             ; $71c5: $d9


	ld   b, c                                        ; $71c6: $41
	ld   de, $1511                                   ; $71c7: $11 $11 $15
	rst  $38                                         ; $71ca: $ff
	rst  $38                                         ; $71cb: $ff
	rst  $38                                         ; $71cc: $ff
	cp   $b6                                         ; $71cd: $fe $b6
	ld   de, $1111                                   ; $71cf: $11 $11 $11
	dec  de                                          ; $71d2: $1b
	rst  $38                                         ; $71d3: $ff
	rst  $38                                         ; $71d4: $ff
	rst  $38                                         ; $71d5: $ff
	rst  $38                                         ; $71d6: $ff
	add  $11                                         ; $71d7: $c6 $11
	ld   de, $5f11                                   ; $71d9: $11 $11 $5f
	rst  $38                                         ; $71dc: $ff
	rst  $38                                         ; $71dd: $ff
	cp   $fd                                         ; $71de: $fe $fd
	add  e                                           ; $71e0: $83
	ld   de, $1411                                   ; $71e1: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71e4: $cf
	rst  $38                                         ; $71e5: $ff
	rst  $38                                         ; $71e6: $ff
	rst  $28                                         ; $71e7: $ef
	ld   a, [$1141]                                  ; $71e8: $fa $41 $11
	ld   de, $ff3b                                   ; $71eb: $11 $3b $ff
	rst  $38                                         ; $71ee: $ff
	cp   $ef                                         ; $71ef: $fe $ef
	add  $01                                         ; $71f1: $c6 $01
	ld   de, $9f12                                   ; $71f3: $11 $12 $9f
	rst  $38                                         ; $71f6: $ff
	rst  $38                                         ; $71f7: $ff
	db   $dd                                         ; $71f8: $dd
	db   $fc                                         ; $71f9: $fc
	ld   h, c                                        ; $71fa: $61
	ld   de, $3b11                                   ; $71fb: $11 $11 $3b
	rst  $38                                         ; $71fe: $ff
	rst  $38                                         ; $71ff: $ff
	db   $fc                                         ; $7200: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7201: $cf
	or   l                                           ; $7202: $b5
	ld   de, $1411                                   ; $7203: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7206: $cf
	rst  $38                                         ; $7207: $ff
	rst  $38                                         ; $7208: $ff
	call c, $41fa                                    ; $7209: $dc $fa $41
	ld   de, $6e11                                   ; $720c: $11 $11 $6e
	rst  $38                                         ; $720f: $ff
	rst  $38                                         ; $7210: $ff
	db   $eb                                         ; $7211: $eb
	rst  JumpTable                                         ; $7212: $df
	and  h                                           ; $7213: $a4
	ld   de, $1811                                   ; $7214: $11 $11 $18
	rst  $38                                         ; $7217: $ff
	rst  $38                                         ; $7218: $ff
	db   $fc                                         ; $7219: $fc
	cp   [hl]                                        ; $721a: $be
	rst  $10                                         ; $721b: $d7
	ld   de, $1311                                   ; $721c: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $721f: $cf
	rst  $38                                         ; $7220: $ff
	rst  $38                                         ; $7221: $ff
	call z, $31d9                                    ; $7222: $cc $d9 $31
	ld   de, $9f11                                   ; $7225: $11 $11 $9f
	rst  $38                                         ; $7228: $ff
	rst  $38                                         ; $7229: $ff
	db   $ec                                         ; $722a: $ec
	db   $ec                                         ; $722b: $ec
	ld   d, c                                        ; $722c: $51
	ld   de, $6d11                                   ; $722d: $11 $11 $6d
	rst  $38                                         ; $7230: $ff
	rst  $38                                         ; $7231: $ff
	db   $ec                                         ; $7232: $ec
	rst  $28                                         ; $7233: $ef
	sub  c                                           ; $7234: $91
	ld   de, $4d11                                   ; $7235: $11 $11 $4d
	rst  $38                                         ; $7238: $ff
	rst  $38                                         ; $7239: $ff
	db   $eb                                         ; $723a: $eb
	adc  $b3                                         ; $723b: $ce $b3
	ld   de, $2b11                                   ; $723d: $11 $11 $2b
	rst  $38                                         ; $7240: $ff
	rst  $38                                         ; $7241: $ff
	ei                                               ; $7242: $fb
	db   $dd                                         ; $7243: $dd
	sub  d                                           ; $7244: $92
	ld   de, $4b11                                   ; $7245: $11 $11 $4b
	rst  $38                                         ; $7248: $ff
	rst  $38                                         ; $7249: $ff
	db   $ec                                         ; $724a: $ec
	xor  $81                                         ; $724b: $ee $81
	ld   de, $6f11                                   ; $724d: $11 $11 $6f
	rst  $38                                         ; $7250: $ff
	rst  $38                                         ; $7251: $ff
	jp   c, $71ed                                    ; $7252: $da $ed $71

	ld   de, $af11                                   ; $7255: $11 $11 $af
	rst  $38                                         ; $7258: $ff
	rst  $38                                         ; $7259: $ff
	jp   z, Jump_0f2_41da                            ; $725a: $ca $da $41

	ld   de, $cf13                                   ; $725d: $11 $13 $cf
	rst  $38                                         ; $7260: $ff
	db   $ed                                         ; $7261: $ed
	cp   h                                           ; $7262: $bc
	rst  $10                                         ; $7263: $d7
	ld   de, $1b11                                   ; $7264: $11 $11 $1b
	rst  $38                                         ; $7267: $ff
	rst  $38                                         ; $7268: $ff
	call c, $b3ce                                    ; $7269: $dc $ce $b3
	ld   de, $7f11                                   ; $726c: $11 $11 $7f
	rst  $38                                         ; $726f: $ff
	db   $fc                                         ; $7270: $fc
	cp   c                                           ; $7271: $b9
	call $1161                                       ; $7272: $cd $61 $11
	inc  de                                          ; $7275: $13
	rst  $28                                         ; $7276: $ef
	rst  $38                                         ; $7277: $ff
	db   $db                                         ; $7278: $db
	xor  e                                           ; $7279: $ab
	rst  $10                                         ; $727a: $d7
	ld   de, $2d11                                   ; $727b: $11 $11 $2d
	rst  $38                                         ; $727e: $ff
	cp   $ba                                         ; $727f: $fe $ba
	xor  h                                           ; $7281: $ac
	ld   [hl], c                                     ; $7282: $71
	ld   de, $df12                                   ; $7283: $11 $12 $df
	rst  $38                                         ; $7286: $ff
	jp   z, $c7bb                                    ; $7287: $ca $bb $c7

	ld   de, $3f11                                   ; $728a: $11 $11 $3f
	rst  $38                                         ; $728d: $ff
	db   $fc                                         ; $728e: $fc
	adc  d                                           ; $728f: $8a
	sbc  e                                           ; $7290: $9b
	ld   [hl], c                                     ; $7291: $71
	ld   de, $ff16                                   ; $7292: $11 $16 $ff
	rst  $38                                         ; $7295: $ff
	cp   c                                           ; $7296: $b9
	xor  e                                           ; $7297: $ab
	or   l                                           ; $7298: $b5
	ld   de, $9f11                                   ; $7299: $11 $11 $9f
	rst  $38                                         ; $729c: $ff
	ld   hl, sp-$77                                  ; $729d: $f8 $89
	xor  c                                           ; $729f: $a9
	ld   hl, $2d11                                   ; $72a0: $21 $11 $2d
	rst  $38                                         ; $72a3: $ff
	rst  $38                                         ; $72a4: $ff
	ld   a, d                                        ; $72a5: $7a
	cp   e                                           ; $72a6: $bb
	add  c                                           ; $72a7: $81
	ld   de, $ff16                                   ; $72a8: $11 $16 $ff
	rst  $38                                         ; $72ab: $ff
	or   a                                           ; $72ac: $b7
	cp   e                                           ; $72ad: $bb
	and  h                                           ; $72ae: $a4
	ld   de, $cf11                                   ; $72af: $11 $11 $cf
	rst  $38                                         ; $72b2: $ff
	rst  $30                                         ; $72b3: $f7
	sbc  h                                           ; $72b4: $9c
	ret                                              ; $72b5: $c9


	ld   de, $6f11                                   ; $72b6: $11 $11 $6f
	rst  $38                                         ; $72b9: $ff
	ld   a, [$ea7e]                                  ; $72ba: $fa $7e $ea
	ld   sp, $2e11                                   ; $72bd: $31 $11 $2e
	rst  $38                                         ; $72c0: $ff
	db   $fc                                         ; $72c1: $fc
	ld   l, h                                        ; $72c2: $6c
	db   $fd                                         ; $72c3: $fd
	add  c                                           ; $72c4: $81
	ld   de, $ff1b                                   ; $72c5: $11 $1b $ff
	db   $fd                                         ; $72c8: $fd
	ld   a, b                                        ; $72c9: $78
	rst  $38                                         ; $72ca: $ff
	and  c                                           ; $72cb: $a1
	ld   de, $ff18                                   ; $72cc: $11 $18 $ff
	db   $fd                                         ; $72cf: $fd
	sub  l                                           ; $72d0: $95
	rst  $38                                         ; $72d1: $ff
	call nc, $1311                                   ; $72d2: $d4 $11 $13
	rst  $38                                         ; $72d5: $ff
	db   $fc                                         ; $72d6: $fc
	add  l                                           ; $72d7: $85
	rst  $38                                         ; $72d8: $ff
	or   $11                                         ; $72d9: $f6 $11
	ld   [de], a                                     ; $72db: $12
	rst  $38                                         ; $72dc: $ff
	ei                                               ; $72dd: $fb
	ld   [hl], l                                     ; $72de: $75
	rst  JumpTable                                         ; $72df: $df
	rst  $30                                         ; $72e0: $f7
	ld   de, rAUD1LEN                                   ; $72e1: $11 $11 $ff
	ld   a, [$df66]                                  ; $72e4: $fa $66 $df
	rst  $30                                         ; $72e7: $f7
	ld   de, rAUD1ENV                                   ; $72e8: $11 $12 $ff
	rst  $30                                         ; $72eb: $f7
	jr   c, @+$01                                    ; $72ec: $38 $ff

	or   $11                                         ; $72ee: $f6 $11
	inc  de                                          ; $72f0: $13
	rst  $38                                         ; $72f1: $ff
	push af                                          ; $72f2: $f5
	dec  de                                          ; $72f3: $1b
	rst  $38                                         ; $72f4: $ff
	ldh  a, [c]                                      ; $72f5: $f2
	ld   de, $ff18                                   ; $72f6: $11 $18 $ff
	pop  af                                          ; $72f9: $f1
	rra                                              ; $72fa: $1f
	rst  $38                                         ; $72fb: $ff
	pop  af                                          ; $72fc: $f1
	ld   de, $ff1c                                   ; $72fd: $11 $1c $ff
	add  c                                           ; $7300: $81
	rra                                              ; $7301: $1f
	rst  $38                                         ; $7302: $ff
	pop  af                                          ; $7303: $f1
	ld   de, $fd1f                                   ; $7304: $11 $1f $fd
	ld   hl, $ff5f                                   ; $7307: $21 $5f $ff
	pop  hl                                          ; $730a: $e1
	ld   de, $f74f                                   ; $730b: $11 $4f $f7
	ld   [de], a                                     ; $730e: $12
	rst  JumpTable                                         ; $730f: $df
	rst  $38                                         ; $7310: $ff
	sub  c                                           ; $7311: $91
	ld   de, $b45c                                   ; $7312: $11 $5c $b4
	add  hl, sp                                      ; $7315: $39
	rst  $38                                         ; $7316: $ff
	rst  $38                                         ; $7317: $ff
	ld   [hl], c                                     ; $7318: $71
	ld   de, $8548                                   ; $7319: $11 $48 $85
	ld   l, e                                        ; $731c: $6b
	rst  $38                                         ; $731d: $ff
	rst  $38                                         ; $731e: $ff
	ld   [hl], c                                     ; $731f: $71
	ld   de, $8548                                   ; $7320: $11 $48 $85
	ld   a, e                                        ; $7323: $7b
	rst  $38                                         ; $7324: $ff
	rst  $38                                         ; $7325: $ff
	ld   b, c                                        ; $7326: $41
	ld   de, $8468                                   ; $7327: $11 $68 $84
	adc  l                                           ; $732a: $8d
	rst  $38                                         ; $732b: $ff
	cp   $11                                         ; $732c: $fe $11
	ld   de, $5468                                   ; $732e: $11 $68 $54
	cp   a                                           ; $7331: $bf
	rst  $38                                         ; $7332: $ff
	ei                                               ; $7333: $fb
	ld   de, $6611                                   ; $7334: $11 $11 $66
	ld   b, [hl]                                     ; $7337: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7338: $cf
	rst  $38                                         ; $7339: $ff
	ei                                               ; $733a: $fb
	ld   de, $6512                                   ; $733b: $11 $12 $65
	ld   b, a                                        ; $733e: $47
	rst  JumpTable                                         ; $733f: $df
	rst  $38                                         ; $7340: $ff
	ld   hl, sp+$11                                  ; $7341: $f8 $11
	inc  de                                          ; $7343: $13
	ld   d, l                                        ; $7344: $55
	add  hl, sp                                      ; $7345: $39
	rst  JumpTable                                         ; $7346: $df
	rst  $38                                         ; $7347: $ff
	push af                                          ; $7348: $f5
	ld   de, $5315                                   ; $7349: $11 $15 $53
	ld   c, d                                        ; $734c: $4a
	rst  $38                                         ; $734d: $ff
	cp   $f4                                         ; $734e: $fe $f4
	ld   de, $4415                                   ; $7350: $11 $15 $44
	ld   l, e                                        ; $7353: $6b
	rst  $38                                         ; $7354: $ff
	cp   $f1                                         ; $7355: $fe $f1
	ld   de, $3315                                   ; $7357: $11 $15 $33
	adc  [hl]                                        ; $735a: $8e
	rst  $38                                         ; $735b: $ff
	rst  $28                                         ; $735c: $ef
	pop  bc                                          ; $735d: $c1
	ld   de, $3324                                   ; $735e: $11 $24 $33
	xor  a                                           ; $7361: $af
	rst  $38                                         ; $7362: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7363: $cf
	and  c                                           ; $7364: $a1
	ld   de, $2434                                   ; $7365: $11 $34 $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7368: $cf
	rst  $38                                         ; $7369: $ff
	rst  JumpTable                                         ; $736a: $df
	ld   d, c                                        ; $736b: $51
	ld   de, $2633                                   ; $736c: $11 $33 $26
	rst  $38                                         ; $736f: $ff
	rst  $38                                         ; $7370: $ff
	rst  JumpTable                                         ; $7371: $df
	ld   hl, $3212                                   ; $7372: $21 $12 $32
	add  hl, de                                      ; $7375: $19
	rst  $38                                         ; $7376: $ff
	rst  $38                                         ; $7377: $ff
	cp   $11                                         ; $7378: $fe $11
	inc  de                                          ; $737a: $13
	ld   [hl-], a                                    ; $737b: $32
	inc  l                                           ; $737c: $2c
	rst  $38                                         ; $737d: $ff
	db   $fd                                         ; $737e: $fd
	ld   a, [$2311]                                  ; $737f: $fa $11 $23
	ld   hl, $ff4f                                   ; $7382: $21 $4f $ff
	rst  $38                                         ; $7385: $ff
	db   $f4                                         ; $7386: $f4
	ld   de, $2132                                   ; $7387: $11 $32 $21
	sbc  a                                           ; $738a: $9f
	rst  $38                                         ; $738b: $ff
	rst  $38                                         ; $738c: $ff
	pop  de                                          ; $738d: $d1
	ld   [de], a                                     ; $738e: $12
	ld   sp, rAUD1ENV                                   ; $738f: $31 $12 $ff
	rst  $38                                         ; $7392: $ff
	rst  $38                                         ; $7393: $ff
	sub  c                                           ; $7394: $91
	inc  d                                           ; $7395: $14
	ld   hl, $fd16                                   ; $7396: $21 $16 $fd
	rst  $38                                         ; $7399: $ff
	rst  $38                                         ; $739a: $ff
	ld   de, $1145                                   ; $739b: $11 $45 $11
	dec  e                                           ; $739e: $1d
	ei                                               ; $739f: $fb
	rst  $38                                         ; $73a0: $ff
	db   $fc                                         ; $73a1: $fc
	ld   de, $1172                                   ; $73a2: $11 $72 $11
	ld   e, a                                        ; $73a5: $5f
	db   $eb                                         ; $73a6: $eb
	rst  $38                                         ; $73a7: $ff
	db   $f4                                         ; $73a8: $f4
	dec  d                                           ; $73a9: $15
	ld   h, c                                        ; $73aa: $61
	ld   de, $8dbf                                   ; $73ab: $11 $bf $8d
	rst  $38                                         ; $73ae: $ff
	pop  hl                                          ; $73af: $e1
	ld   a, [de]                                     ; $73b0: $1a
	ld   de, wTitleScreenCounterForResettingData                                   ; $73b1: $11 $17 $cc
	sbc  a                                           ; $73b4: $9f
	rst  $38                                         ; $73b5: $ff
	ld   h, c                                        ; $73b6: $61
	add  a                                           ; $73b7: $87
	ld   de, $b859                                   ; $73b8: $11 $59 $b8
	rst  $38                                         ; $73bb: $ff
	db   $fc                                         ; $73bc: $fc
	inc  hl                                          ; $73bd: $23
	and  c                                           ; $73be: $a1
	ld   de, $8b78                                   ; $73bf: $11 $78 $8b
	rst  $38                                         ; $73c2: $ff
	db   $fc                                         ; $73c3: $fc
	ld   d, $61                                      ; $73c4: $16 $61
	inc  d                                           ; $73c6: $14
	ld   [hl], a                                     ; $73c7: $77
	xor  a                                           ; $73c8: $af
	rst  $38                                         ; $73c9: $ff
	rst  $30                                         ; $73ca: $f7
	add  hl, hl                                      ; $73cb: $29
	ld   de, $6a16                                   ; $73cc: $11 $16 $6a
	cp   a                                           ; $73cf: $bf
	rst  $38                                         ; $73d0: $ff
	jp   $1164                                       ; $73d1: $c3 $64 $11


	inc  [hl]                                        ; $73d4: $34
	ld   a, h                                        ; $73d5: $7c
	rst  JumpTable                                         ; $73d6: $df
	rst  $38                                         ; $73d7: $ff
	add  e                                           ; $73d8: $83
	add  c                                           ; $73d9: $81
	ld   de, $ac55                                   ; $73da: $11 $55 $ac
	rst  $38                                         ; $73dd: $ff
	db   $fd                                         ; $73de: $fd
	jr   c, @+$63                                    ; $73df: $38 $61

	inc  d                                           ; $73e1: $14
	ld   d, h                                        ; $73e2: $54
	rst  JumpTable                                         ; $73e3: $df
	rst  $38                                         ; $73e4: $ff
	db   $fc                                         ; $73e5: $fc
	daa                                              ; $73e6: $27
	ld   de, $5a14                                   ; $73e7: $11 $14 $5a
	rst  JumpTable                                         ; $73ea: $df
	rst  $38                                         ; $73eb: $ff
	push af                                          ; $73ec: $f5
	ld   h, l                                        ; $73ed: $65
	ld   de, $6c16                                   ; $73ee: $11 $16 $6c
	rst  JumpTable                                         ; $73f1: $df
	rst  $38                                         ; $73f2: $ff
	and  l                                           ; $73f3: $a5
	add  c                                           ; $73f4: $81
	ld   [de], a                                     ; $73f5: $12
	inc  hl                                          ; $73f6: $23
	adc  $ff                                         ; $73f7: $ce $ff
	rst  $38                                         ; $73f9: $ff
	ld   b, [hl]                                     ; $73fa: $46
	ld   b, c                                        ; $73fb: $41
	ld   [de], a                                     ; $73fc: $12
	ld   b, [hl]                                     ; $73fd: $46
	db   $ed                                         ; $73fe: $ed
	rst  $38                                         ; $73ff: $ff
	ld   sp, hl                                      ; $7400: $f9
	ld   e, b                                        ; $7401: $58
	ld   de, $3c13                                   ; $7402: $11 $13 $3c
	rst  JumpTable                                         ; $7405: $df
	rst  $38                                         ; $7406: $ff
	db   $e4                                         ; $7407: $e4
	add  e                                           ; $7408: $83
	ld   de, $7e33                                   ; $7409: $11 $33 $7e
	rst  JumpTable                                         ; $740c: $df
	rst  $38                                         ; $740d: $ff
	sub  [hl]                                        ; $740e: $96
	ld   h, c                                        ; $740f: $61
	ld   de, $ed34                                   ; $7410: $11 $34 $ed
	rst  $38                                         ; $7413: $ff
	ei                                               ; $7414: $fb
	ld   e, c                                        ; $7415: $59
	ld   de, $1b13                                   ; $7416: $11 $13 $1b
	rst  $38                                         ; $7419: $ff
	rst  $38                                         ; $741a: $ff
	push af                                          ; $741b: $f5
	ld   [hl], l                                     ; $741c: $75
	ld   de, $5f41                                   ; $741d: $11 $41 $5f
	rst  $28                                         ; $7420: $ef
	rst  $38                                         ; $7421: $ff
	sub  [hl]                                        ; $7422: $96
	ld   [hl], c                                     ; $7423: $71
	ld   de, $cd41                                   ; $7424: $11 $41 $cd
	rst  $38                                         ; $7427: $ff
	rst  $38                                         ; $7428: $ff
	ld   e, c                                        ; $7429: $59
	ld   hl, $1614                                   ; $742a: $21 $14 $16
	db   $fd                                         ; $742d: $fd
	rst  $38                                         ; $742e: $ff
	rst  $30                                         ; $742f: $f7
	ld   h, a                                        ; $7430: $67
	ld   de, $2d12                                   ; $7431: $11 $12 $2d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7434: $cf
	rst  $38                                         ; $7435: $ff
	and  $81                                         ; $7436: $e6 $81
	ld   de, $bf21                                   ; $7438: $11 $21 $bf
	rst  JumpTable                                         ; $743b: $df
	rst  $38                                         ; $743c: $ff
	ld   l, b                                        ; $743d: $68
	ld   h, c                                        ; $743e: $61
	inc  de                                          ; $743f: $13
	inc  de                                          ; $7440: $13
	cp   $ff                                         ; $7441: $fe $ff
	ei                                               ; $7443: $fb
	ld   l, b                                        ; $7444: $68
	ld   de, $1e21                                   ; $7445: $11 $21 $1e
	rst  JumpTable                                         ; $7448: $df
	rst  $38                                         ; $7449: $ff
	push hl                                          ; $744a: $e5
	sub  d                                           ; $744b: $92
	ld   de, $7f41                                   ; $744c: $11 $41 $7f
	rst  $28                                         ; $744f: $ef
	rst  $38                                         ; $7450: $ff
	adc  b                                           ; $7451: $88
	ld   d, c                                        ; $7452: $51
	ld   de, $fc14                                   ; $7453: $11 $14 $fc
	rst  $38                                         ; $7456: $ff
	ei                                               ; $7457: $fb
	adc  b                                           ; $7458: $88
	ld   de, $1c12                                   ; $7459: $11 $12 $1c
	rst  JumpTable                                         ; $745c: $df
	rst  $38                                         ; $745d: $ff
	or   $93                                         ; $745e: $f6 $93
	ld   de, $7e31                                   ; $7460: $11 $31 $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7463: $cf
	rst  $38                                         ; $7464: $ff
	sbc  b                                           ; $7465: $98
	ld   [hl], c                                     ; $7466: $71
	inc  de                                          ; $7467: $13
	ld   de, $ffec                                   ; $7468: $11 $ec $ff
	ei                                               ; $746b: $fb
	ld   l, c                                        ; $746c: $69
	ld   de, $1b12                                   ; $746d: $11 $12 $1b
	rst  JumpTable                                         ; $7470: $df
	rst  $38                                         ; $7471: $ff
	rst  $20                                         ; $7472: $e7
	and  d                                           ; $7473: $a2
	ld   de, $8f31                                   ; $7474: $11 $31 $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7477: $cf
	rst  $38                                         ; $7478: $ff
	ld   a, c                                        ; $7479: $79
	ld   [hl], c                                     ; $747a: $71
	inc  de                                          ; $747b: $13
	ld   de, $ffeb                                   ; $747c: $11 $eb $ff
	db   $fc                                         ; $747f: $fc
	adc  c                                           ; $7480: $89
	ld   de, $1c12                                   ; $7481: $11 $12 $1c
	db   $dd                                         ; $7484: $dd
	rst  $38                                         ; $7485: $ff
	rst  $20                                         ; $7486: $e7
	or   d                                           ; $7487: $b2
	ld   de, $7d21                                   ; $7488: $11 $21 $7d
	cp   a                                           ; $748b: $bf
	rst  $38                                         ; $748c: $ff
	sbc  c                                           ; $748d: $99
	ld   [hl], c                                     ; $748e: $71
	inc  de                                          ; $748f: $13
	ld   de, $ffeb                                   ; $7490: $11 $eb $ff
	ei                                               ; $7493: $fb
	adc  c                                           ; $7494: $89
	ld   de, $1c11                                   ; $7495: $11 $11 $1c
	adc  $ff                                         ; $7498: $ce $ff
	rst  $20                                         ; $749a: $e7
	and  c                                           ; $749b: $a1
	ld   de, $9c21                                   ; $749c: $11 $21 $9c
	cp   a                                           ; $749f: $bf
	rst  $38                                         ; $74a0: $ff
	adc  e                                           ; $74a1: $8b
	ld   d, c                                        ; $74a2: $51
	ld   [de], a                                     ; $74a3: $12
	inc  d                                           ; $74a4: $14
	ld   [$fbff], a                                  ; $74a5: $ea $ff $fb
	sbc  c                                           ; $74a8: $99

Call_0f2_74a9:
	ld   de, $1d12                                   ; $74a9: $11 $12 $1d
	adc  $ff                                         ; $74ac: $ce $ff
	rst  $10                                         ; $74ae: $d7
	and  c                                           ; $74af: $a1
	ld   de, $9e31                                   ; $74b0: $11 $31 $9e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74b3: $cf
	rst  $38                                         ; $74b4: $ff
	adc  d                                           ; $74b5: $8a
	ld   b, c                                        ; $74b6: $41
	ld   [de], a                                     ; $74b7: $12
	ld   d, $ea                                      ; $74b8: $16 $ea
	rst  $38                                         ; $74ba: $ff
	ld   a, [$11a7]                                  ; $74bb: $fa $a7 $11
	ld   de, $af2d                                   ; $74be: $11 $2d $af
	rst  $38                                         ; $74c1: $ff
	ret  c                                           ; $74c2: $d8

	sub  c                                           ; $74c3: $91
	ld   de, wTitleScreenFrameCounter+1                                   ; $74c4: $11 $11 $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74c7: $cf
	rst  $38                                         ; $74c8: $ff
	sbc  e                                           ; $74c9: $9b
	ld   sp, $1712                                   ; $74ca: $31 $12 $17
	db   $eb                                         ; $74cd: $eb
	rst  $38                                         ; $74ce: $ff
	ld   sp, hl                                      ; $74cf: $f9
	or   [hl]                                        ; $74d0: $b6
	ld   de, $2f21                                   ; $74d1: $11 $21 $2f
	xor  a                                           ; $74d4: $af
	rst  $38                                         ; $74d5: $ff
	jp   z, $1191                                    ; $74d6: $ca $91 $11

	ld   de, $dfcc                                   ; $74d9: $11 $cc $df
	db   $fd                                         ; $74dc: $fd
	sbc  e                                           ; $74dd: $9b
	ld   de, $1a11                                   ; $74de: $11 $11 $1a
	set  7, a                                        ; $74e1: $cb $ff
	ld   hl, sp-$5c                                  ; $74e3: $f8 $a4
	ld   de, $5d21                                   ; $74e5: $11 $21 $5d
	cp   a                                           ; $74e8: $bf
	rst  $38                                         ; $74e9: $ff
	xor  d                                           ; $74ea: $aa
	ld   [hl], c                                     ; $74eb: $71
	ld   de, $eb11                                   ; $74ec: $11 $11 $eb
	rst  $38                                         ; $74ef: $ff
	db   $fd                                         ; $74f0: $fd
	sbc  c                                           ; $74f1: $99
	ld   de, $1a12                                   ; $74f2: $11 $12 $1a
	call z, $faff                                    ; $74f5: $cc $ff $fa
	or   d                                           ; $74f8: $b2
	ld   de, $7e11                                   ; $74f9: $11 $11 $7e
	cp   a                                           ; $74fc: $bf
	rst  $38                                         ; $74fd: $ff
	xor  e                                           ; $74fe: $ab
	ld   d, c                                        ; $74ff: $51
	ld   de, $ea13                                   ; $7500: $11 $13 $ea
	rst  $38                                         ; $7503: $ff
	ei                                               ; $7504: $fb
	sbc  c                                           ; $7505: $99
	ld   de, $1c11                                   ; $7506: $11 $11 $1c
	cp   [hl]                                        ; $7509: $be
	rst  $38                                         ; $750a: $ff
	ld   [$11a1], a                                  ; $750b: $ea $a1 $11
	ld   de, $bf8d                                   ; $750e: $11 $8d $bf
	rst  $38                                         ; $7511: $ff
	sbc  d                                           ; $7512: $9a
	ld   b, c                                        ; $7513: $41
	ld   de, $da14                                   ; $7514: $11 $14 $da
	rst  $38                                         ; $7517: $ff
	ei                                               ; $7518: $fb
	cp   b                                           ; $7519: $b8
	ld   de, $0c11                                   ; $751a: $11 $11 $0c
	cp   l                                           ; $751d: $bd
	rst  $38                                         ; $751e: $ff
	reti                                             ; $751f: $d9


	sub  c                                           ; $7520: $91
	ld   de, $ac11                                   ; $7521: $11 $11 $ac
	cp   a                                           ; $7524: $bf
	rst  $38                                         ; $7525: $ff
	sbc  e                                           ; $7526: $9b
	ld   sp, $1612                                   ; $7527: $31 $12 $16
	jp   c, $faff                                    ; $752a: $da $ff $fa

	or   [hl]                                        ; $752d: $b6
	ld   de, $2e11                                   ; $752e: $11 $11 $2e
	cp   a                                           ; $7531: $bf
	rst  $38                                         ; $7532: $ff
	jp   z, $1191                                    ; $7533: $ca $91 $11

	ld   de, $cfcb                                   ; $7536: $11 $cb $cf
	cp   $9a                                         ; $7539: $fe $9a
	ld   hl, $1712                                   ; $753b: $21 $12 $17
	jp   z, $f9ff                                    ; $753e: $ca $ff $f9

	push bc                                          ; $7541: $c5
	ld   de, $3c11                                   ; $7542: $11 $11 $3c
	xor  a                                           ; $7545: $af
	rst  $38                                         ; $7546: $ff
	jp   z, $11a1                                    ; $7547: $ca $a1 $11

	ld   de, $dfbc                                   ; $754a: $11 $bc $df
	cp   $9a                                         ; $754d: $fe $9a
	ld   hl, $1811                                   ; $754f: $21 $11 $18
	reti                                             ; $7552: $d9


	rst  $38                                         ; $7553: $ff
	ld   a, [$11a5]                                  ; $7554: $fa $a5 $11
	ld   de, $9f3d                                   ; $7557: $11 $3d $9f
	rst  $38                                         ; $755a: $ff
	jp   z, $11a1                                    ; $755b: $ca $a1 $11

	ld   hl, $cfac                                   ; $755e: $21 $ac $cf
	db   $fd                                         ; $7561: $fd
	sbc  e                                           ; $7562: $9b
	ld   sp, $1611                                   ; $7563: $31 $11 $16
	reti                                             ; $7566: $d9


	rst  $38                                         ; $7567: $ff
	ld   a, [$11b6]                                  ; $7568: $fa $b6 $11
	ld   de, $9f2d                                   ; $756b: $11 $2d $9f
	rst  $38                                         ; $756e: $ff
	ret                                              ; $756f: $c9


	or   c                                           ; $7570: $b1
	ld   de, $9c21                                   ; $7571: $11 $21 $9c
	sbc  a                                           ; $7574: $9f
	rst  $38                                         ; $7575: $ff
	sbc  h                                           ; $7576: $9c
	ld   d, c                                        ; $7577: $51
	ld   [de], a                                     ; $7578: $12
	inc  de                                          ; $7579: $13
	jp   hl                                          ; $757a: $e9


	rst  $28                                         ; $757b: $ef
	ei                                               ; $757c: $fb
	xor  c                                           ; $757d: $a9
	ld   de, $1b11                                   ; $757e: $11 $11 $1b
	xor  e                                           ; $7581: $ab
	rst  $38                                         ; $7582: $ff
	jp   hl                                          ; $7583: $e9


	call nz, $1111                                   ; $7584: $c4 $11 $11
	ld   e, h                                        ; $7587: $5c
	sbc  a                                           ; $7588: $9f
	rst  $38                                         ; $7589: $ff
	cp   d                                           ; $758a: $ba
	sub  c                                           ; $758b: $91
	ld   de, $ba11                                   ; $758c: $11 $11 $ba
	cp   a                                           ; $758f: $bf
	cp   $ab                                         ; $7590: $fe $ab
	ld   b, c                                        ; $7592: $41
	ld   de, $d815                                   ; $7593: $11 $15 $d8
	rst  $38                                         ; $7596: $ff
	ei                                               ; $7597: $fb
	xor  d                                           ; $7598: $aa
	ld   de, $1a12                                   ; $7599: $11 $12 $1a
	xor  e                                           ; $759c: $ab
	rst  $38                                         ; $759d: $ff
	ld   a, [$11c5]                                  ; $759e: $fa $c5 $11
	ld   de, $8f3d                                   ; $75a1: $11 $3d $8f
	rst  $38                                         ; $75a4: $ff
	reti                                             ; $75a5: $d9


	jp   nz, $2111                                   ; $75a6: $c2 $11 $21

	ld   a, h                                        ; $75a9: $7c
	adc  a                                           ; $75aa: $8f
	rst  $38                                         ; $75ab: $ff
	xor  d                                           ; $75ac: $aa
	sub  c                                           ; $75ad: $91
	ld   hl, $b911                                   ; $75ae: $21 $11 $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75b1: $cf
	rst  $38                                         ; $75b2: $ff
	sbc  l                                           ; $75b3: $9d
	ld   b, c                                        ; $75b4: $41
	ld   de, $c714                                   ; $75b5: $11 $14 $c7
	rst  $38                                         ; $75b8: $ff
	db   $fc                                         ; $75b9: $fc
	sbc  l                                           ; $75ba: $9d
	ld   de, $1812                                   ; $75bb: $11 $12 $18
	cp   c                                           ; $75be: $b9
	rst  $38                                         ; $75bf: $ff
	ld   a, [$12b9]                                  ; $75c0: $fa $b9 $12
	ld   de, $9b1a                                   ; $75c3: $11 $1a $9b
	rst  $38                                         ; $75c6: $ff
	ld   hl, sp-$3a                                  ; $75c7: $f8 $c6

Call_0f2_75c9:
	ld   [de], a                                     ; $75c9: $12
	ld   de, $8d3c                                   ; $75ca: $11 $3c $8d
	rst  $38                                         ; $75cd: $ff
	rst  $30                                         ; $75ce: $f7
	db   $e3                                         ; $75cf: $e3
	ld   [de], a                                     ; $75d0: $12
	ld   de, $8e4c                                   ; $75d1: $11 $4c $8e
	rst  $38                                         ; $75d4: $ff
	ret                                              ; $75d5: $c9


	pop  de                                          ; $75d6: $d1
	ld   [de], a                                     ; $75d7: $12
	ld   de, $8f6c                                   ; $75d8: $11 $6c $8f
	rst  $38                                         ; $75db: $ff
	cp   c                                           ; $75dc: $b9
	pop  bc                                          ; $75dd: $c1
	ld   [de], a                                     ; $75de: $12
	ld   de, $9f8a                                   ; $75df: $11 $8a $9f
	rst  $38                                         ; $75e2: $ff
	xor  d                                           ; $75e3: $aa
	and  c                                           ; $75e4: $a1
	ld   hl, $9911                                   ; $75e5: $21 $11 $99
	sbc  a                                           ; $75e8: $9f
	rst  $28                                         ; $75e9: $ef
	xor  e                                           ; $75ea: $ab
	and  c                                           ; $75eb: $a1
	ld   hl, $a911                                   ; $75ec: $21 $11 $a9
	sbc  a                                           ; $75ef: $9f
	rst  $28                                         ; $75f0: $ef
	sbc  h                                           ; $75f1: $9c
	add  c                                           ; $75f2: $81
	ld   sp, $a911                                   ; $75f3: $31 $11 $a9
	xor  a                                           ; $75f6: $af
	rst  $28                                         ; $75f7: $ef
	sbc  e                                           ; $75f8: $9b
	sub  c                                           ; $75f9: $91
	ld   hl, $ba21                                   ; $75fa: $21 $21 $ba
	sbc  a                                           ; $75fd: $9f
	rst  $38                                         ; $75fe: $ff
	sbc  e                                           ; $75ff: $9b
	sub  c                                           ; $7600: $91
	ld   hl, $b911                                   ; $7601: $21 $11 $b9
	xor  a                                           ; $7604: $af
	rst  $28                                         ; $7605: $ef
	adc  h                                           ; $7606: $8c
	sub  c                                           ; $7607: $91
	ld   sp, $b911                                   ; $7608: $31 $11 $b9
	xor  a                                           ; $760b: $af
	rst  $28                                         ; $760c: $ef
	ld   a, h                                        ; $760d: $7c
	sub  c                                           ; $760e: $91
	ld   sp, $a921                                   ; $760f: $31 $21 $a9
	xor  a                                           ; $7612: $af
	rst  $28                                         ; $7613: $ef
	adc  e                                           ; $7614: $8b
	sub  c                                           ; $7615: $91
	ld   hl, $9a21                                   ; $7616: $21 $21 $9a
	xor  a                                           ; $7619: $af
	rst  $28                                         ; $761a: $ef
	sbc  d                                           ; $761b: $9a
	or   c                                           ; $761c: $b1
	ld   hl, $9a21                                   ; $761d: $21 $21 $9a
	sbc  a                                           ; $7620: $9f
	rst  JumpTable                                         ; $7621: $df
	sbc  b                                           ; $7622: $98
	pop  bc                                          ; $7623: $c1
	ld   hl, $6d31                                   ; $7624: $21 $31 $6d
	ld   a, a                                        ; $7627: $7f
	rst  $28                                         ; $7628: $ef
	rst  ToBoot                                         ; $7629: $c7
	jp   nc, Jump_0f2_4111                           ; $762a: $d2 $11 $41

	ld   c, l                                        ; $762d: $4d
	ld   a, a                                        ; $762e: $7f
	rst  $38                                         ; $762f: $ff
	add  $d3                                         ; $7630: $c6 $d3
	ld   de, $2d31                                   ; $7632: $11 $31 $2d
	ld   a, a                                        ; $7635: $7f
	rst  $38                                         ; $7636: $ff
	push hl                                          ; $7637: $e5
	call nc, $3111                                   ; $7638: $d4 $11 $31
	ld   e, $7d                                      ; $763b: $1e $7d
	rst  $38                                         ; $763d: $ff
	push af                                          ; $763e: $f5
	rst  $10                                         ; $763f: $d7
	ld   de, $1b22                                   ; $7640: $11 $22 $1b
	adc  d                                           ; $7643: $8a
	cp   $f9                                         ; $7644: $fe $f9
	sbc  e                                           ; $7646: $9b
	ld   hl, $1713                                   ; $7647: $21 $13 $17
	cp   b                                           ; $764a: $b8
	db   $fd                                         ; $764b: $fd
	db   $fc                                         ; $764c: $fc
	ld   l, l                                        ; $764d: $6d
	ld   d, c                                        ; $764e: $51
	inc  d                                           ; $764f: $14
	ld   [de], a                                     ; $7650: $12
	cp   b                                           ; $7651: $b8
	xor  $ff                                         ; $7652: $ee $ff
	ld   e, d                                        ; $7654: $5a
	sub  c                                           ; $7655: $91
	ld   [de], a                                     ; $7656: $12
	ld   sp, $cf89                                   ; $7657: $31 $89 $cf
	rst  JumpTable                                         ; $765a: $df
	and  [hl]                                        ; $765b: $a6
	call nz, $3111                                   ; $765c: $c4 $11 $31
	ld   e, e                                        ; $765f: $5b
	ld   a, a                                        ; $7660: $7f
	rst  $38                                         ; $7661: $ff
	push af                                          ; $7662: $f5
	ret  z                                           ; $7663: $c8

	ld   de, $1b41                                   ; $7664: $11 $41 $1b
	sbc  h                                           ; $7667: $9c
	rst  $38                                         ; $7668: $ff
	ld   hl, sp+$6c                                  ; $7669: $f8 $6c
	ld   sp, $1613                                   ; $766b: $31 $13 $16
	xor  b                                           ; $766e: $a8
	cp   $ff                                         ; $766f: $fe $ff
	ld   e, d                                        ; $7671: $5a
	add  c                                           ; $7672: $81
	inc  de                                          ; $7673: $13
	ld   hl, $cfaa                                   ; $7674: $21 $aa $cf
	rst  $38                                         ; $7677: $ff
	and  h                                           ; $7678: $a4
	and  [hl]                                        ; $7679: $a6
	ld   de, $3a51                                   ; $767a: $11 $51 $3a
	xor  a                                           ; $767d: $af
	rst  JumpTable                                         ; $767e: $df
	push af                                          ; $767f: $f5
	ld   e, e                                        ; $7680: $5b
	ld   hl, $1933                                   ; $7681: $21 $33 $19
	xor  l                                           ; $7684: $ad
	cp   $fe                                         ; $7685: $fe $fe
	add  hl, sp                                      ; $7687: $39
	ld   h, c                                        ; $7688: $61
	inc  d                                           ; $7689: $14
	ld   [de], a                                     ; $768a: $12
	jp   c, $ffef                                    ; $768b: $da $ef $ff

	ld   [hl], l                                     ; $768e: $75
	or   e                                           ; $768f: $b3
	ld   [de], a                                     ; $7690: $12
	ld   d, c                                        ; $7691: $51
	ld   c, l                                        ; $7692: $4d
	cp   [hl]                                        ; $7693: $be
	rst  $38                                         ; $7694: $ff
	or   $39                                         ; $7695: $f6 $39
	ld   b, c                                        ; $7697: $41
	inc  b                                           ; $7698: $04

Jump_0f2_7699:
	ld   d, $ad                                      ; $7699: $16 $ad
	cp   $ff                                         ; $769b: $fe $ff
	ld   b, e                                        ; $769d: $43
	add  c                                           ; $769e: $81
	ld   de, $8c23                                   ; $769f: $11 $23 $8c
	rst  JumpTable                                         ; $76a2: $df
	rst  $38                                         ; $76a3: $ff
	ldh  a, [c]                                      ; $76a4: $f2
	scf                                              ; $76a5: $37
	ld   de, $2815                                   ; $76a6: $11 $15 $28
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76a9: $cf
	rst  $38                                         ; $76aa: $ff
	db   $fd                                         ; $76ab: $fd
	inc  d                                           ; $76ac: $14
	ld   h, c                                        ; $76ad: $61
	inc  d                                           ; $76ae: $14
	inc  h                                           ; $76af: $24
	cp   [hl]                                        ; $76b0: $be
	rst  $38                                         ; $76b1: $ff
	rst  $38                                         ; $76b2: $ff
	add  c                                           ; $76b3: $81
	ld   h, l                                        ; $76b4: $65
	ld   de, $2c44                                   ; $76b5: $11 $44 $2c
	rst  $38                                         ; $76b8: $ff

jr_0f2_76b9:
	rst  $38                                         ; $76b9: $ff
	push af                                          ; $76ba: $f5
	inc  d                                           ; $76bb: $14
	ld   d, c                                        ; $76bc: $51
	dec  d                                           ; $76bd: $15
	ld   d, e                                        ; $76be: $53
	rst  JumpTable                                         ; $76bf: $df
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	ld   sp, $1165                                   ; $76c2: $31 $65 $11
	halt                                             ; $76c5: $76
	ld   a, [hl-]                                    ; $76c6: $3a
	rst  $38                                         ; $76c7: $ff
	rst  $28                                         ; $76c8: $ef
	db   $f4                                         ; $76c9: $f4
	ld   de, $1561                                   ; $76ca: $11 $61 $15
	add  l                                           ; $76cd: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76ce: $cf
	rst  $38                                         ; $76cf: $ff
	rst  $38                                         ; $76d0: $ff
	ld   sp, $1135                                   ; $76d1: $31 $35 $11
	ld   h, a                                        ; $76d4: $67
	dec  a                                           ; $76d5: $3d
	rst  $38                                         ; $76d6: $ff
	rst  $38                                         ; $76d7: $ff
	db   $f4                                         ; $76d8: $f4
	ld   de, $1661                                   ; $76d9: $11 $61 $16
	and  h                                           ; $76dc: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76dd: $cf
	rst  $38                                         ; $76de: $ff
	rst  $38                                         ; $76df: $ff
	ld   [hl], c                                     ; $76e0: $71
	rla                                              ; $76e1: $17
	ld   de, $3d59                                   ; $76e2: $11 $59 $3d
	rst  $38                                         ; $76e5: $ff
	rst  $38                                         ; $76e6: $ff
	ld   a, [$6111]                                  ; $76e7: $fa $11 $61
	ld   de, $bf97                                   ; $76ea: $11 $97 $bf
	rst  $38                                         ; $76ed: $ff
	rst  $38                                         ; $76ee: $ff
	pop  hl                                          ; $76ef: $e1
	inc  d                                           ; $76f0: $14
	ld   d, c                                        ; $76f1: $51
	ld   a, [de]                                     ; $76f2: $1a
	adc  b                                           ; $76f3: $88
	rst  $38                                         ; $76f4: $ff
	rst  $38                                         ; $76f5: $ff
	rst  $38                                         ; $76f6: $ff
	ld   de, $1119                                   ; $76f7: $11 $19 $11
	ld   a, e                                        ; $76fa: $7b
	ld   a, [hl]                                     ; $76fb: $7e
	rst  $38                                         ; $76fc: $ff
	rst  $38                                         ; $76fd: $ff
	ld   sp, hl                                      ; $76fe: $f9
	ld   de, $1392                                   ; $76ff: $11 $92 $13
	xor  b                                           ; $7702: $a8
	rst  $38                                         ; $7703: $ff
	rst  $38                                         ; $7704: $ff
	rst  $38                                         ; $7705: $ff
	pop  bc                                          ; $7706: $c1
	rla                                              ; $7707: $17
	ld   b, c                                        ; $7708: $41
	inc  e                                           ; $7709: $1c
	xor  e                                           ; $770a: $ab
	rst  $38                                         ; $770b: $ff
	rst  $38                                         ; $770c: $ff
	rst  $38                                         ; $770d: $ff
	ld   de, $1118                                   ; $770e: $11 $18 $11
	adc  d                                           ; $7711: $8a
	sbc  a                                           ; $7712: $9f
	rst  $38                                         ; $7713: $ff

Call_0f2_7714:
	rst  $38                                         ; $7714: $ff
	ld   a, [$9411]                                  ; $7715: $fa $11 $94
	ld   [de], a                                     ; $7718: $12
	ret                                              ; $7719: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $771a: $cf
	rst  $38                                         ; $771b: $ff
	rst  $38                                         ; $771c: $ff
	pop  af                                          ; $771d: $f1
	ld   de, $16a1                                   ; $771e: $11 $a1 $16
	jp   c, $ffff                                    ; $7721: $da $ff $ff

	rst  $38                                         ; $7724: $ff
	pop  de                                          ; $7725: $d1
	jr   jr_0f2_76b9                                 ; $7726: $18 $91

	inc  e                                           ; $7728: $1c
	call c, $ffef                                    ; $7729: $dc $ef $ff
	rst  $38                                         ; $772c: $ff
	ld   sp, $6119                                   ; $772d: $31 $19 $61
	inc  l                                           ; $7730: $2c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7731: $cf
	rst  $38                                         ; $7732: $ff
	rst  $38                                         ; $7733: $ff
	rst  $38                                         ; $7734: $ff
	ld   de, $211a                                   ; $7735: $11 $1a $21
	adc  e                                           ; $7738: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7739: $cf
	rst  $38                                         ; $773a: $ff
	rst  $38                                         ; $773b: $ff
	cp   $11                                         ; $773c: $fe $11
	add  hl, de                                      ; $773e: $19
	ld   de, $dfab                                   ; $773f: $11 $ab $df
	rst  $38                                         ; $7742: $ff
	rst  $38                                         ; $7743: $ff
	rst  $38                                         ; $7744: $ff
	ld   de, $1119                                   ; $7745: $11 $19 $11
	xor  e                                           ; $7748: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7749: $cf
	rst  $38                                         ; $774a: $ff
	cp   $fd                                         ; $774b: $fe $fd
	ld   de, $331a                                   ; $774d: $11 $1a $33
	xor  e                                           ; $7750: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7751: $cf
	rst  $38                                         ; $7752: $ff
	rst  $38                                         ; $7753: $ff
	db   $fc                                         ; $7754: $fc
	ld   de, $521b                                   ; $7755: $11 $1b $52
	sbc  e                                           ; $7758: $9b
	rst  $28                                         ; $7759: $ef
	rst  $38                                         ; $775a: $ff
	rst  $38                                         ; $775b: $ff
	db   $fd                                         ; $775c: $fd
	ld   de, $9319                                   ; $775d: $11 $19 $93
	ld   a, e                                        ; $7760: $7b
	rst  JumpTable                                         ; $7761: $df
	rst  $38                                         ; $7762: $ff
	rst  $38                                         ; $7763: $ff
	rst  $38                                         ; $7764: $ff
	ld   de, $9517                                   ; $7765: $11 $17 $95
	ld   l, d                                        ; $7768: $6a
	rst  JumpTable                                         ; $7769: $df
	rst  $38                                         ; $776a: $ff
	rst  $38                                         ; $776b: $ff
	rst  $38                                         ; $776c: $ff
	ld   de, $c813                                   ; $776d: $11 $13 $c8
	ld   e, c                                        ; $7770: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7771: $cf
	cp   $ff                                         ; $7772: $fe $ff
	rst  $38                                         ; $7774: $ff
	ld   de, $ba11                                   ; $7775: $11 $11 $ba
	ld   l, d                                        ; $7778: $6a
	cp   a                                           ; $7779: $bf
	rst  $38                                         ; $777a: $ff
	rst  $38                                         ; $777b: $ff
	rst  $38                                         ; $777c: $ff
	and  c                                           ; $777d: $a1
	ld   de, $779f                                   ; $777e: $11 $9f $77
	xor  l                                           ; $7781: $ad
	rst  $38                                         ; $7782: $ff
	rst  $28                                         ; $7783: $ef
	rst  $38                                         ; $7784: $ff
	pop  af                                          ; $7785: $f1
	ld   de, $a71f                                   ; $7786: $11 $1f $a7
	cp   e                                           ; $7789: $bb
	rst  $38                                         ; $778a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $778b: $cf
	rst  $38                                         ; $778c: $ff
	push af                                          ; $778d: $f5
	ld   de, $fb1a                                   ; $778e: $11 $1a $fb
	xor  d                                           ; $7791: $aa
	rst  JumpTable                                         ; $7792: $df
	cp   $ff                                         ; $7793: $fe $ff
	rst  $38                                         ; $7795: $ff
	ld   de, $fd11                                   ; $7796: $11 $11 $fd
	ld   a, d                                        ; $7799: $7a
	cp   a                                           ; $779a: $bf
	cp   $ff                                         ; $779b: $fe $ff
	rst  $38                                         ; $779d: $ff
	sub  c                                           ; $779e: $91
	ld   de, $daaf                                   ; $779f: $11 $af $da
	xor  e                                           ; $77a2: $ab
	rst  $38                                         ; $77a3: $ff
	rst  JumpTable                                         ; $77a4: $df
	rst  $38                                         ; $77a5: $ff
	ldh  a, [c]                                      ; $77a6: $f2
	ld   de, $fd1d                                   ; $77a7: $11 $1d $fd
	ret  z                                           ; $77aa: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77ab: $cf
	cp   $ff                                         ; $77ac: $fe $ff
	rst  $38                                         ; $77ae: $ff
	ld   de, rAUD1LEN                                   ; $77af: $11 $11 $ff
	ei                                               ; $77b2: $fb
	sbc  h                                           ; $77b3: $9c
	db   $fd                                         ; $77b4: $fd
	rst  JumpTable                                         ; $77b5: $df
	rst  $38                                         ; $77b6: $ff
	pop  af                                          ; $77b7: $f1
	ld   de, $ff1f                                   ; $77b8: $11 $1f $ff
	ret  c                                           ; $77bb: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77bc: $cf
	db   $ed                                         ; $77bd: $ed
	rst  $38                                         ; $77be: $ff
	rst  $38                                         ; $77bf: $ff
	ld   de, $ef11                                   ; $77c0: $11 $11 $ef
	db   $fc                                         ; $77c3: $fc
	ld   a, e                                        ; $77c4: $7b
	rst  $38                                         ; $77c5: $ff
	rst  JumpTable                                         ; $77c6: $df
	rst  $38                                         ; $77c7: $ff
	pop  af                                          ; $77c8: $f1
	ld   de, $ff1f                                   ; $77c9: $11 $1f $ff
	reti                                             ; $77cc: $d9


	xor  a                                           ; $77cd: $af
	call c, $ffff                                    ; $77ce: $dc $ff $ff
	ld   de, rAUD1LEN                                   ; $77d1: $11 $11 $ff
	db   $fd                                         ; $77d4: $fd
	xor  c                                           ; $77d5: $a9
	cp   $af                                         ; $77d6: $fe $af
	rst  $38                                         ; $77d8: $ff
	pop  af                                          ; $77d9: $f1
	ld   de, $ff1d                                   ; $77da: $11 $1d $ff
	ld   [$d97d], a                                  ; $77dd: $ea $7d $d9
	rst  $38                                         ; $77e0: $ff
	rst  $38                                         ; $77e1: $ff
	ld   sp, $8f11                                   ; $77e2: $31 $11 $8f
	rst  $38                                         ; $77e5: $ff
	or   [hl]                                        ; $77e6: $b6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77e7: $cf
	sbc  a                                           ; $77e8: $9f
	rst  $38                                         ; $77e9: $ff
	rst  $30                                         ; $77ea: $f7
	ld   de, rAUD1LOW                                   ; $77eb: $11 $13 $ff
	db   $fc                                         ; $77ee: $fc
	ld   l, d                                        ; $77ef: $6a
	ld   hl, sp-$31                                  ; $77f0: $f8 $cf
	rst  $38                                         ; $77f2: $ff
	pop  bc                                          ; $77f3: $c1
	ld   de, $ff1f                                   ; $77f4: $11 $1f $ff
	ld   sp, hl                                      ; $77f7: $f9
	adc  [hl]                                        ; $77f8: $8e
	adc  b                                           ; $77f9: $88
	rst  $38                                         ; $77fa: $ff
	rst  $38                                         ; $77fb: $ff
	ld   de, $cf11                                   ; $77fc: $11 $11 $cf

Call_0f2_77ff:
	rst  $38                                         ; $77ff: $ff
	or   a                                           ; $7800: $b7
	db   $eb                                         ; $7801: $eb
	ld   c, a                                        ; $7802: $4f
	rst  $38                                         ; $7803: $ff
	db   $f4                                         ; $7804: $f4
	ld   de, rAUD1LOW                                   ; $7805: $11 $13 $ff
	cp   $8b                                         ; $7808: $fe $8b
	push de                                          ; $780a: $d5
	xor  a                                           ; $780b: $af
	rst  $38                                         ; $780c: $ff
	pop  af                                          ; $780d: $f1
	ld   de, $ff1f                                   ; $780e: $11 $1f $ff
	ei                                               ; $7811: $fb
	sbc  [hl]                                        ; $7812: $9e
	ld   [hl], h                                     ; $7813: $74
	rst  $38                                         ; $7814: $ff
	rst  $38                                         ; $7815: $ff
	ld   de, $5f11                                   ; $7816: $11 $11 $5f
	rst  $38                                         ; $7819: $ff
	ld   sp, hl                                      ; $781a: $f9
	cp   h                                           ; $781b: $bc
	ld   a, [hl-]                                    ; $781c: $3a
	rst  $38                                         ; $781d: $ff
	cp   $11                                         ; $781e: $fe $11
	ld   de, $ffff                                   ; $7820: $11 $ff $ff
	jp   z, Jump_0f2_4fc5                            ; $7823: $ca $c5 $4f

	rst  $38                                         ; $7826: $ff
	ldh  a, [c]                                      ; $7827: $f2
	ld   de, rAUD1ENV                                   ; $7828: $11 $12 $ff
	rst  $38                                         ; $782b: $ff
	xor  d                                           ; $782c: $aa
	and  h                                           ; $782d: $a4
	adc  a                                           ; $782e: $8f
	rst  $38                                         ; $782f: $ff
	pop  af                                          ; $7830: $f1
	ld   de, $ff1b                                   ; $7831: $11 $1b $ff
	rst  $38                                         ; $7834: $ff
	sbc  h                                           ; $7835: $9c
	sub  e                                           ; $7836: $93
	xor  a                                           ; $7837: $af
	rst  $38                                         ; $7838: $ff
	pop  bc                                          ; $7839: $c1
	ld   de, $ff1f                                   ; $783a: $11 $1f $ff
	db   $fd                                         ; $783d: $fd
	sbc  l                                           ; $783e: $9d
	ld   [hl], e                                     ; $783f: $73
	rst  JumpTable                                         ; $7840: $df
	rst  $38                                         ; $7841: $ff
	ld   [hl], c                                     ; $7842: $71
	ld   de, $ff1f                                   ; $7843: $11 $1f $ff
	ei                                               ; $7846: $fb
	sbc  h                                           ; $7847: $9c
	ld   b, e                                        ; $7848: $43
	rst  $38                                         ; $7849: $ff
	rst  $38                                         ; $784a: $ff
	ld   sp, $1f11                                   ; $784b: $31 $11 $1f
	rst  $38                                         ; $784e: $ff
	ei                                               ; $784f: $fb
	xor  h                                           ; $7850: $ac
	dec  [hl]                                        ; $7851: $35
	rst  $38                                         ; $7852: $ff
	rst  $38                                         ; $7853: $ff
	ld   de, $3f11                                   ; $7854: $11 $11 $3f
	rst  $38                                         ; $7857: $ff
	ld   a, [$45aa]                                  ; $7858: $fa $aa $45
	rst  $38                                         ; $785b: $ff
	rst  $38                                         ; $785c: $ff
	ld   de, $5f11                                   ; $785d: $11 $11 $5f
	rst  $38                                         ; $7860: $ff
	ei                                               ; $7861: $fb
	cp   d                                           ; $7862: $ba
	inc  [hl]                                        ; $7863: $34
	rst  $38                                         ; $7864: $ff
	rst  $38                                         ; $7865: $ff
	ld   de, $3f11                                   ; $7866: $11 $11 $3f
	rst  $38                                         ; $7869: $ff
	db   $fd                                         ; $786a: $fd
	reti                                             ; $786b: $d9


	ld   [hl+], a                                    ; $786c: $22
	rst  $38                                         ; $786d: $ff
	rst  $38                                         ; $786e: $ff
	ld   b, c                                        ; $786f: $41
	ld   de, $ff1f                                   ; $7870: $11 $1f $ff
	cp   $da                                         ; $7873: $fe $da
	ld   hl, $ffbf                                   ; $7875: $21 $bf $ff
	add  c                                           ; $7878: $81
	ld   de, $ff1f                                   ; $7879: $11 $1f $ff
	rst  $38                                         ; $787c: $ff
	db   $eb                                         ; $787d: $eb
	ld   b, c                                        ; $787e: $41
	sbc  a                                           ; $787f: $9f
	rst  $38                                         ; $7880: $ff
	pop  af                                          ; $7881: $f1
	ld   de, $ff1b                                   ; $7882: $11 $1b $ff
	rst  $38                                         ; $7885: $ff
	db   $ec                                         ; $7886: $ec
	ld   h, c                                        ; $7887: $61
	ld   e, a                                        ; $7888: $5f
	rst  $38                                         ; $7889: $ff
	db   $f4                                         ; $788a: $f4
	ld   de, rAUD1ENV                                   ; $788b: $11 $12 $ff
	rst  $38                                         ; $788e: $ff
	cp   $a2                                         ; $788f: $fe $a2
	dec  de                                          ; $7891: $1b
	rst  $38                                         ; $7892: $ff
	db   $fc                                         ; $7893: $fc
	ld   de, $ef11                                   ; $7894: $11 $11 $ef
	rst  $38                                         ; $7897: $ff
	rst  $38                                         ; $7898: $ff
	rst  $10                                         ; $7899: $d7
	inc  d                                           ; $789a: $14
	rst  $38                                         ; $789b: $ff
	rst  $38                                         ; $789c: $ff
	ld   de, $5f11                                   ; $789d: $11 $11 $5f
	rst  $38                                         ; $78a0: $ff
	rst  $38                                         ; $78a1: $ff
	ld   a, [$9f11]                                  ; $78a2: $fa $11 $9f
	rst  $38                                         ; $78a5: $ff
	pop  bc                                          ; $78a6: $c1
	ld   de, $ff1e                                   ; $78a7: $11 $1e $ff
	rst  $38                                         ; $78aa: $ff
	cp   $71                                         ; $78ab: $fe $71
	dec  a                                           ; $78ad: $3d
	rst  $38                                         ; $78ae: $ff
	db   $f4                                         ; $78af: $f4
	ld   de, rAUD1LOW                                   ; $78b0: $11 $13 $ff
	rst  $38                                         ; $78b3: $ff
	rst  $38                                         ; $78b4: $ff
	or   d                                           ; $78b5: $b2
	rla                                              ; $78b6: $17
	rst  JumpTable                                         ; $78b7: $df
	rst  $38                                         ; $78b8: $ff
	ld   de, $bf11                                   ; $78b9: $11 $11 $bf
	rst  $38                                         ; $78bc: $ff
	rst  $38                                         ; $78bd: $ff
	ld   a, [$9f11]                                  ; $78be: $fa $11 $9f
	rst  $38                                         ; $78c1: $ff
	sub  c                                           ; $78c2: $91
	ld   de, $ff1f                                   ; $78c3: $11 $1f $ff
	rst  $38                                         ; $78c6: $ff
	rst  $38                                         ; $78c7: $ff
	ld   d, c                                        ; $78c8: $51
	ld   a, [hl-]                                    ; $78c9: $3a
	rst  $38                                         ; $78ca: $ff
	pop  af                                          ; $78cb: $f1
	ld   de, $ff18                                   ; $78cc: $11 $18 $ff
	rst  $38                                         ; $78cf: $ff
	rst  $38                                         ; $78d0: $ff
	pop  de                                          ; $78d1: $d1
	ld   d, $bf                                      ; $78d2: $16 $bf
	db   $fd                                         ; $78d4: $fd
	ld   de, rAUD1LEN                                   ; $78d5: $11 $11 $ff
	rst  $38                                         ; $78d8: $ff
	rst  $38                                         ; $78d9: $ff
	ld   sp, hl                                      ; $78da: $f9
	ld   de, $ff6d                                   ; $78db: $11 $6d $ff
	and  c                                           ; $78de: $a1
	ld   de, $ff1f                                   ; $78df: $11 $1f $ff
	rst  $38                                         ; $78e2: $ff
	rst  $38                                         ; $78e3: $ff
	ld   b, c                                        ; $78e4: $41
	rla                                              ; $78e5: $17
	rst  $28                                         ; $78e6: $ef
	or   $11                                         ; $78e7: $f6 $11
	rla                                              ; $78e9: $17
	rst  $38                                         ; $78ea: $ff
	rst  $38                                         ; $78eb: $ff
	rst  $38                                         ; $78ec: $ff
	ldh  [c], a                                      ; $78ed: $e2
	ld   [de], a                                     ; $78ee: $12
	ld   l, a                                        ; $78ef: $6f
	rst  $38                                         ; $78f0: $ff
	ld   de, $cf11                                   ; $78f1: $11 $11 $cf
	rst  $38                                         ; $78f4: $ff
	rst  $38                                         ; $78f5: $ff
	db   $fc                                         ; $78f6: $fc
	ld   sp, $ff16                                   ; $78f7: $31 $16 $ff
	pop  af                                          ; $78fa: $f1
	ld   de, $ff1e                                   ; $78fb: $11 $1e $ff
	rst  $38                                         ; $78fe: $ff
	rst  $38                                         ; $78ff: $ff
	db   $d3                                         ; $7900: $d3
	ld   [de], a                                     ; $7901: $12
	ld   a, a                                        ; $7902: $7f
	ei                                               ; $7903: $fb
	ld   de, $cf11                                   ; $7904: $11 $11 $cf
	rst  $38                                         ; $7907: $ff
	rst  $38                                         ; $7908: $ff
	db   $fd                                         ; $7909: $fd
	ld   b, c                                        ; $790a: $41
	ld   d, $ff                                      ; $790b: $16 $ff
	or   c                                           ; $790d: $b1
	ld   de, $ff1b                                   ; $790e: $11 $1b $ff
	rst  $38                                         ; $7911: $ff
	rst  $38                                         ; $7912: $ff
	or   $11                                         ; $7913: $f6 $11
	ld   a, a                                        ; $7915: $7f
	ei                                               ; $7916: $fb
	ld   de, $af11                                   ; $7917: $11 $11 $af
	rst  $38                                         ; $791a: $ff
	rst  $38                                         ; $791b: $ff
	rst  $38                                         ; $791c: $ff
	add  c                                           ; $791d: $81
	rla                                              ; $791e: $17
	rst  $38                                         ; $791f: $ff
	and  c                                           ; $7920: $a1
	ld   de, rAUD1HIGH                                   ; $7921: $11 $14 $ff
	rst  $38                                         ; $7924: $ff
	rst  $38                                         ; $7925: $ff
	db   $fc                                         ; $7926: $fc
	ld   de, $fc4c                                   ; $7927: $11 $4c $fc
	ld   b, c                                        ; $792a: $41
	ld   de, $ff3e                                   ; $792b: $11 $3e $ff
	rst  $28                                         ; $792e: $ef
	rst  $38                                         ; $792f: $ff
	di                                               ; $7930: $f3
	inc  d                                           ; $7931: $14
	cp   a                                           ; $7932: $bf
	and  [hl]                                        ; $7933: $a6
	ld   de, $9f11                                   ; $7934: $11 $11 $9f
	rst  $38                                         ; $7937: $ff
	rst  $38                                         ; $7938: $ff
	rst  $38                                         ; $7939: $ff
	or   d                                           ; $793a: $b2
	ld   [hl], $bb                                   ; $793b: $36 $bb
	ld   [hl], c                                     ; $793d: $71
	ld   de, $ef16                                   ; $793e: $11 $16 $ef
	db   $fd                                         ; $7941: $fd
	rst  $38                                         ; $7942: $ff
	rst  $38                                         ; $7943: $ff
	ld   b, c                                        ; $7944: $41
	ld   l, c                                        ; $7945: $69
	and  a                                           ; $7946: $a7
	ld   b, c                                        ; $7947: $41
	ld   de, $ff18                                   ; $7948: $11 $18 $ff
	sbc  $ff                                         ; $794b: $de $ff
	db   $fc                                         ; $794d: $fc
	inc  hl                                          ; $794e: $23
	ld   l, d                                        ; $794f: $6a
	add  h                                           ; $7950: $84
	ld   hl, $2b11                                   ; $7951: $21 $11 $2b
	rst  $38                                         ; $7954: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7955: $cf
	rst  $38                                         ; $7956: $ff
	rst  $30                                         ; $7957: $f7
	ld   [hl], $8a                                   ; $7958: $36 $8a
	ld   h, h                                        ; $795a: $64
	ld   de, $3c11                                   ; $795b: $11 $11 $3c
	db   $fd                                         ; $795e: $fd
	rst  $28                                         ; $795f: $ef
	rst  $38                                         ; $7960: $ff
	rst  $30                                         ; $7961: $f7
	ld   l, b                                        ; $7962: $68
	adc  b                                           ; $7963: $88
	ld   b, e                                        ; $7964: $43
	ld   de, $3d11                                   ; $7965: $11 $11 $3d
	db   $fd                                         ; $7968: $fd
	rst  $38                                         ; $7969: $ff
	rst  $38                                         ; $796a: $ff
	ld   hl, sp-$78                                  ; $796b: $f8 $88
	add  [hl]                                        ; $796d: $86
	ld   [hl-], a                                    ; $796e: $32
	ld   de, $2c11                                   ; $796f: $11 $11 $2c
	db   $fc                                         ; $7972: $fc
	rst  $28                                         ; $7973: $ef
	rst  $38                                         ; $7974: $ff
	ld   a, [$a7a9]                                  ; $7975: $fa $a9 $a7
	ld   sp, $1111                                   ; $7978: $31 $11 $11
	inc  e                                           ; $797b: $1c
	jp   c, $ffcf                                    ; $797c: $da $cf $ff

	rst  $38                                         ; $797f: $ff
	call z, Call_0f2_52b9                            ; $7980: $cc $b9 $52
	ld   de, $1711                                   ; $7983: $11 $11 $17
	and  a                                           ; $7986: $a7
	ld   a, e                                        ; $7987: $7b
	rst  $28                                         ; $7988: $ef
	rst  $38                                         ; $7989: $ff
	db   $ec                                         ; $798a: $ec
	jp   z, Jump_0f2_6576                            ; $798b: $ca $76 $65

	ld   h, [hl]                                     ; $798e: $66
	ld   [hl], a                                     ; $798f: $77
	ld   [hl], a                                     ; $7990: $77
	ld   d, l                                        ; $7991: $55
	ld   d, a                                        ; $7992: $57
	sbc  c                                           ; $7993: $99
	add  a                                           ; $7994: $87
	adc  b                                           ; $7995: $88
	adc  c                                           ; $7996: $89
	sbc  d                                           ; $7997: $9a
	cp   h                                           ; $7998: $bc
	call z, $a9aa                                    ; $7999: $cc $aa $a9
	adc  b                                           ; $799c: $88
	halt                                             ; $799d: $76
	ld   d, h                                        ; $799e: $54
	ld   b, e                                        ; $799f: $43
	inc  [hl]                                        ; $79a0: $34
	ld   l, b                                        ; $79a1: $68
	sbc  d                                           ; $79a2: $9a
	xor  d                                           ; $79a3: $aa
	xor  h                                           ; $79a4: $ac
	call c, $badc                                    ; $79a5: $dc $dc $ba
	sub  [hl]                                        ; $79a8: $96
	ld   d, h                                        ; $79a9: $54
	ld   b, h                                        ; $79aa: $44
	ld   b, l                                        ; $79ab: $45
	ld   d, [hl]                                     ; $79ac: $56
	ld   h, a                                        ; $79ad: $67
	adc  e                                           ; $79ae: $8b
	cp   h                                           ; $79af: $bc
	call $bacc                                       ; $79b0: $cd $cc $ba
	sbc  b                                           ; $79b3: $98
	halt                                             ; $79b4: $76
	ld   d, l                                        ; $79b5: $55
	ld   b, h                                        ; $79b6: $44
	ld   b, l                                        ; $79b7: $45
	ld   h, a                                        ; $79b8: $67
	sbc  d                                           ; $79b9: $9a
	xor  e                                           ; $79ba: $ab
	cp   e                                           ; $79bb: $bb
	cp   e                                           ; $79bc: $bb
	xor  e                                           ; $79bd: $ab
	xor  c                                           ; $79be: $a9
	sbc  b                                           ; $79bf: $98
	halt                                             ; $79c0: $76
	ld   h, l                                        ; $79c1: $65
	ld   d, l                                        ; $79c2: $55
	ld   d, [hl]                                     ; $79c3: $56
	ld   [hl], a                                     ; $79c4: $77
	ld   a, b                                        ; $79c5: $78
	adc  d                                           ; $79c6: $8a
	sbc  d                                           ; $79c7: $9a
	cp   d                                           ; $79c8: $ba
	xor  d                                           ; $79c9: $aa
	xor  e                                           ; $79ca: $ab
	xor  c                                           ; $79cb: $a9
	sbc  b                                           ; $79cc: $98
	ld   [hl], a                                     ; $79cd: $77
	ld   h, l                                        ; $79ce: $65
	ld   d, l                                        ; $79cf: $55
	ld   d, l                                        ; $79d0: $55
	ld   h, [hl]                                     ; $79d1: $66
	ld   a, b                                        ; $79d2: $78
	adc  d                                           ; $79d3: $8a
	xor  e                                           ; $79d4: $ab
	cp   e                                           ; $79d5: $bb
	cp   e                                           ; $79d6: $bb
	cp   e                                           ; $79d7: $bb
	cp   c                                           ; $79d8: $b9
	add  a                                           ; $79d9: $87
	ld   h, [hl]                                     ; $79da: $66
	ld   d, h                                        ; $79db: $54
	ld   b, h                                        ; $79dc: $44
	ld   d, l                                        ; $79dd: $55
	ld   d, [hl]                                     ; $79de: $56
	ld   a, c                                        ; $79df: $79
	sbc  e                                           ; $79e0: $9b
	cp   e                                           ; $79e1: $bb
	cp   e                                           ; $79e2: $bb
	cp   e                                           ; $79e3: $bb
	cp   c                                           ; $79e4: $b9
	sbc  c                                           ; $79e5: $99
	add  a                                           ; $79e6: $87
	ld   h, l                                        ; $79e7: $65
	ld   d, l                                        ; $79e8: $55
	ld   d, l                                        ; $79e9: $55
	ld   h, [hl]                                     ; $79ea: $66
	ld   [hl], a                                     ; $79eb: $77
	adc  b                                           ; $79ec: $88
	sbc  d                                           ; $79ed: $9a
	xor  d                                           ; $79ee: $aa
	xor  e                                           ; $79ef: $ab
	cp   d                                           ; $79f0: $ba
	sbc  c                                           ; $79f1: $99
	sbc  c                                           ; $79f2: $99
	adc  b                                           ; $79f3: $88
	ld   [hl], a                                     ; $79f4: $77
	ld   h, [hl]                                     ; $79f5: $66
	ld   d, [hl]                                     ; $79f6: $56
	ld   h, l                                        ; $79f7: $65
	ld   d, [hl]                                     ; $79f8: $56
	ld   a, b                                        ; $79f9: $78
	sbc  b                                           ; $79fa: $98
	sbc  d                                           ; $79fb: $9a
	xor  d                                           ; $79fc: $aa
	cp   e                                           ; $79fd: $bb
	xor  e                                           ; $79fe: $ab
	xor  c                                           ; $79ff: $a9
	sbc  b                                           ; $7a00: $98
	halt                                             ; $7a01: $76
	ld   d, l                                        ; $7a02: $55
	ld   d, l                                        ; $7a03: $55
	ld   d, l                                        ; $7a04: $55
	ld   d, [hl]                                     ; $7a05: $56
	ld   a, b                                        ; $7a06: $78
	sbc  d                                           ; $7a07: $9a
	sbc  d                                           ; $7a08: $9a
	cp   d                                           ; $7a09: $ba
	xor  d                                           ; $7a0a: $aa
	sbc  c                                           ; $7a0b: $99
	xor  c                                           ; $7a0c: $a9
	sbc  b                                           ; $7a0d: $98
	halt                                             ; $7a0e: $76
	ld   h, l                                        ; $7a0f: $65
	ld   d, [hl]                                     ; $7a10: $56
	ld   h, [hl]                                     ; $7a11: $66
	ld   h, [hl]                                     ; $7a12: $66
	ld   [hl], a                                     ; $7a13: $77
	adc  b                                           ; $7a14: $88
	adc  c                                           ; $7a15: $89
	sbc  d                                           ; $7a16: $9a
	cp   d                                           ; $7a17: $ba
	sbc  c                                           ; $7a18: $99
	sbc  c                                           ; $7a19: $99
	sbc  c                                           ; $7a1a: $99
	add  a                                           ; $7a1b: $87
	halt                                             ; $7a1c: $76
	ld   d, l                                        ; $7a1d: $55
	ld   d, l                                        ; $7a1e: $55
	ld   h, [hl]                                     ; $7a1f: $66
	ld   h, a                                        ; $7a20: $67
	ld   a, b                                        ; $7a21: $78
	adc  b                                           ; $7a22: $88
	sbc  d                                           ; $7a23: $9a
	cp   e                                           ; $7a24: $bb
	xor  d                                           ; $7a25: $aa
	sbc  c                                           ; $7a26: $99
	xor  c                                           ; $7a27: $a9
	sbc  b                                           ; $7a28: $98
	ld   [hl], a                                     ; $7a29: $77
	ld   h, [hl]                                     ; $7a2a: $66
	ld   d, l                                        ; $7a2b: $55
	ld   d, [hl]                                     ; $7a2c: $56
	ld   h, a                                        ; $7a2d: $67
	ld   a, b                                        ; $7a2e: $78
	adc  c                                           ; $7a2f: $89
	adc  c                                           ; $7a30: $89
	xor  d                                           ; $7a31: $aa
	xor  d                                           ; $7a32: $aa
	xor  c                                           ; $7a33: $a9
	sbc  c                                           ; $7a34: $99
	sbc  b                                           ; $7a35: $98
	ld   [hl], a                                     ; $7a36: $77
	ld   h, [hl]                                     ; $7a37: $66
	ld   h, l                                        ; $7a38: $65
	ld   d, [hl]                                     ; $7a39: $56
	ld   h, [hl]                                     ; $7a3a: $66
	ld   a, b                                        ; $7a3b: $78
	sbc  c                                           ; $7a3c: $99
	sbc  d                                           ; $7a3d: $9a
	sbc  d                                           ; $7a3e: $9a
	xor  d                                           ; $7a3f: $aa
	sbc  c                                           ; $7a40: $99
	xor  c                                           ; $7a41: $a9
	sub  a                                           ; $7a42: $97
	ld   [hl], a                                     ; $7a43: $77
	ld   h, [hl]                                     ; $7a44: $66
	ld   h, [hl]                                     ; $7a45: $66
	ld   h, [hl]                                     ; $7a46: $66
	ld   h, [hl]                                     ; $7a47: $66
	ld   [hl], a                                     ; $7a48: $77
	adc  b                                           ; $7a49: $88
	sbc  c                                           ; $7a4a: $99
	xor  c                                           ; $7a4b: $a9
	sbc  c                                           ; $7a4c: $99
	sbc  c                                           ; $7a4d: $99
	xor  c                                           ; $7a4e: $a9
	adc  b                                           ; $7a4f: $88
	ld   [hl], a                                     ; $7a50: $77
	ld   h, [hl]                                     ; $7a51: $66
	ld   h, [hl]                                     ; $7a52: $66
	ld   h, [hl]                                     ; $7a53: $66
	ld   h, [hl]                                     ; $7a54: $66
	ld   h, a                                        ; $7a55: $67
	adc  b                                           ; $7a56: $88
	adc  c                                           ; $7a57: $89
	xor  d                                           ; $7a58: $aa
	xor  d                                           ; $7a59: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a5a: $cf
	ret  z                                           ; $7a5b: $c8

	add  a                                           ; $7a5c: $87
	ld   h, [hl]                                     ; $7a5d: $66
	ld   h, l                                        ; $7a5e: $65
	ld   b, h                                        ; $7a5f: $44
	inc  [hl]                                        ; $7a60: $34
	ld   d, [hl]                                     ; $7a61: $56
	ld   h, a                                        ; $7a62: $67
	ld   a, c                                        ; $7a63: $79
	sbc  d                                           ; $7a64: $9a
	sbc  d                                           ; $7a65: $9a
	xor  e                                           ; $7a66: $ab
	call $a888                                       ; $7a67: $cd $88 $a8
	ld   d, l                                        ; $7a6a: $55
	ld   h, [hl]                                     ; $7a6b: $66
	ld   d, e                                        ; $7a6c: $53
	inc  h                                           ; $7a6d: $24
	ld   h, a                                        ; $7a6e: $67
	ld   a, b                                        ; $7a6f: $78
	xor  h                                           ; $7a70: $ac
	db   $ec                                         ; $7a71: $ec
	cp   e                                           ; $7a72: $bb
	cp   d                                           ; $7a73: $ba
	add  [hl]                                        ; $7a74: $86
	ld   h, a                                        ; $7a75: $67
	ld   [hl], l                                     ; $7a76: $75
	ld   [hl+], a                                    ; $7a77: $22
	inc  [hl]                                        ; $7a78: $34
	ld   b, e                                        ; $7a79: $43
	scf                                              ; $7a7a: $37
	xor  b                                           ; $7a7b: $a8
	sbc  e                                           ; $7a7c: $9b
	rst  JumpTable                                         ; $7a7d: $df
	db   $ec                                         ; $7a7e: $ec
	sbc  $e8                                         ; $7a7f: $de $e8
	ld   hl, $1133                                   ; $7a81: $21 $33 $11
	ld   de, $2522                                   ; $7a84: $11 $22 $25
	sbc  h                                           ; $7a87: $9c
	xor  $ff                                         ; $7a88: $ee $ff
	rst  $38                                         ; $7a8a: $ff
	db   $fd                                         ; $7a8b: $fd
	call c, $1172                                    ; $7a8c: $dc $72 $11
	ld   de, $1111                                   ; $7a8f: $11 $11 $11
	ld   [hl], $8c                                   ; $7a92: $36 $8c
	rst  $38                                         ; $7a94: $ff
	rst  $38                                         ; $7a95: $ff
	rst  $38                                         ; $7a96: $ff
	rst  $38                                         ; $7a97: $ff
	ret                                              ; $7a98: $c9


	ld   [hl], c                                     ; $7a99: $71
	ld   de, $1111                                   ; $7a9a: $11 $11 $11
	ld   de, $ff6c                                   ; $7a9d: $11 $6c $ff
	rst  $38                                         ; $7aa0: $ff
	rst  $38                                         ; $7aa1: $ff
	rst  $38                                         ; $7aa2: $ff
	db   $fd                                         ; $7aa3: $fd
	sub  e                                           ; $7aa4: $93
	ld   de, $1111                                   ; $7aa5: $11 $11 $11
	ld   de, $ff15                                   ; $7aa8: $11 $15 $ff
	rst  $38                                         ; $7aab: $ff
	rst  $38                                         ; $7aac: $ff
	rst  $38                                         ; $7aad: $ff
	cp   $b8                                         ; $7aae: $fe $b8
	ld   de, $1111                                   ; $7ab0: $11 $11 $11
	ld   de, $df14                                   ; $7ab3: $11 $14 $df
	rst  $38                                         ; $7ab6: $ff

Jump_0f2_7ab7:
	rst  $38                                         ; $7ab7: $ff
	rst  $38                                         ; $7ab8: $ff
	cp   $a6                                         ; $7ab9: $fe $a6
	ld   hl, $1111                                   ; $7abb: $21 $11 $11
	ld   de, $ff17                                   ; $7abe: $11 $17 $ff
	rst  $38                                         ; $7ac1: $ff
	rst  $38                                         ; $7ac2: $ff
	rst  $38                                         ; $7ac3: $ff
	db   $db                                         ; $7ac4: $db
	sub  h                                           ; $7ac5: $94
	ld   de, $1111                                   ; $7ac6: $11 $11 $11
	ld   de, $ff6e                                   ; $7ac9: $11 $6e $ff
	rst  $38                                         ; $7acc: $ff
	rst  $38                                         ; $7acd: $ff
	db   $fd                                         ; $7ace: $fd
	adc  c                                           ; $7acf: $89
	ld   d, c                                        ; $7ad0: $51
	ld   de, $1111                                   ; $7ad1: $11 $11 $11
	dec  d                                           ; $7ad4: $15
	rst  JumpTable                                         ; $7ad5: $df
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	rst  $38                                         ; $7ad8: $ff
	rst  $10                                         ; $7ad9: $d7
	halt                                             ; $7ada: $76
	ld   de, $1111                                   ; $7adb: $11 $11 $11
	ld   [de], a                                     ; $7ade: $12
	ld   e, e                                        ; $7adf: $5b
	rst  $38                                         ; $7ae0: $ff
	rst  $38                                         ; $7ae1: $ff
	rst  $38                                         ; $7ae2: $ff
	db   $fd                                         ; $7ae3: $fd
	ld   h, [hl]                                     ; $7ae4: $66
	ld   [hl], h                                     ; $7ae5: $74
	ld   de, $1111                                   ; $7ae6: $11 $11 $11
	dec  [hl]                                        ; $7ae9: $35
	xor  a                                           ; $7aea: $af
	rst  $38                                         ; $7aeb: $ff
	rst  $38                                         ; $7aec: $ff
	rst  $38                                         ; $7aed: $ff
	rst  $30                                         ; $7aee: $f7
	ld   d, a                                        ; $7aef: $57
	ld   h, d                                        ; $7af0: $62
	ld   de, $1311                                   ; $7af1: $11 $11 $13
	ld   d, a                                        ; $7af4: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7af5: $cf
	rst  $38                                         ; $7af6: $ff
	rst  $38                                         ; $7af7: $ff
	rst  $38                                         ; $7af8: $ff
	push bc                                          ; $7af9: $c5

jr_0f2_7afa:
	ld   e, b                                        ; $7afa: $58
	ld   d, d                                        ; $7afb: $52
	ld   de, $1411                                   ; $7afc: $11 $11 $14
	ld   e, b                                        ; $7aff: $58
	rst  $28                                         ; $7b00: $ef
	rst  $38                                         ; $7b01: $ff
	rst  $38                                         ; $7b02: $ff
	rst  $38                                         ; $7b03: $ff
	and  l                                           ; $7b04: $a5
	ld   a, b                                        ; $7b05: $78
	ld   b, e                                        ; $7b06: $43
	ld   de, $1411                                   ; $7b07: $11 $11 $14
	ld   e, b                                        ; $7b0a: $58
	rst  $38                                         ; $7b0b: $ff
	rst  $38                                         ; $7b0c: $ff
	rst  $38                                         ; $7b0d: $ff
	rst  $38                                         ; $7b0e: $ff
	add  h                                           ; $7b0f: $84
	ld   a, b                                        ; $7b10: $78
	ld   d, e                                        ; $7b11: $53
	ld   de, $1511                                   ; $7b12: $11 $11 $15
	ld   e, c                                        ; $7b15: $59
	rst  $28                                         ; $7b16: $ef
	rst  $38                                         ; $7b17: $ff
	rst  $38                                         ; $7b18: $ff
	cp   $84                                         ; $7b19: $fe $84
	adc  c                                           ; $7b1b: $89
	ld   d, h                                        ; $7b1c: $54
	ld   de, $1411                                   ; $7b1d: $11 $11 $14
	ld   l, c                                        ; $7b20: $69
	rst  JumpTable                                         ; $7b21: $df
	rst  $38                                         ; $7b22: $ff
	rst  $38                                         ; $7b23: $ff
	db   $fd                                         ; $7b24: $fd
	add  h                                           ; $7b25: $84
	ld   a, d                                        ; $7b26: $7a
	ld   h, l                                        ; $7b27: $65
	ld   hl, $1411                                   ; $7b28: $21 $11 $14
	ld   b, a                                        ; $7b2b: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b2c: $cf
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	rst  $38                                         ; $7b2f: $ff
	sub  h                                           ; $7b30: $94
	ld   l, d                                        ; $7b31: $6a
	ld   h, l                                        ; $7b32: $65
	ld   sp, $1411                                   ; $7b33: $31 $11 $14
	ld   e, b                                        ; $7b36: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b37: $cf
	rst  $38                                         ; $7b38: $ff
	rst  $38                                         ; $7b39: $ff
	cp   $a3                                         ; $7b3a: $fe $a3
	ld   c, d                                        ; $7b3c: $4a
	ld   [hl], l                                     ; $7b3d: $75
	ld   b, c                                        ; $7b3e: $41
	ld   de, $7913                                   ; $7b3f: $11 $13 $79
	rst  JumpTable                                         ; $7b42: $df
	rst  $38                                         ; $7b43: $ff
	rst  $38                                         ; $7b44: $ff
	cp   $84                                         ; $7b45: $fe $84
	ld   c, d                                        ; $7b47: $4a
	add  [hl]                                        ; $7b48: $86
	ld   [hl], c                                     ; $7b49: $71
	ld   de, $6511                                   ; $7b4a: $11 $11 $65
	sbc  l                                           ; $7b4d: $9d
	rst  $38                                         ; $7b4e: $ff
	rst  $38                                         ; $7b4f: $ff
	rst  $38                                         ; $7b50: $ff
	and  h                                           ; $7b51: $a4
	jr   z, jr_0f2_7afa                              ; $7b52: $28 $a6

	ld   [hl], l                                     ; $7b54: $75
	ld   de, $7611                                   ; $7b55: $11 $11 $76
	adc  e                                           ; $7b58: $8b
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	rst  $38                                         ; $7b5b: $ff
	rst  ToBoot                                         ; $7b5c: $c7
	dec  d                                           ; $7b5d: $15
	ret  z                                           ; $7b5e: $c8

	ld   a, b                                        ; $7b5f: $78
	ld   hl, $2611                                   ; $7b60: $21 $11 $26
	ld   l, d                                        ; $7b63: $6a
	rst  JumpTable                                         ; $7b64: $df
	rst  $38                                         ; $7b65: $ff
	rst  $38                                         ; $7b66: $ff
	ld   sp, hl                                      ; $7b67: $f9
	ld   hl, $8abb                                   ; $7b68: $21 $bb $8a
	sub  c                                           ; $7b6b: $91
	ld   de, $3415                                   ; $7b6c: $11 $15 $34
	sbc  a                                           ; $7b6f: $9f
	rst  $38                                         ; $7b70: $ff
	rst  $38                                         ; $7b71: $ff
	cp   $61                                         ; $7b72: $fe $61
	ld   e, h                                        ; $7b74: $5c
	add  a                                           ; $7b75: $87
	add  h                                           ; $7b76: $84
	ld   de, $7711                                   ; $7b77: $11 $11 $77
	xor  l                                           ; $7b7a: $ad
	rst  $38                                         ; $7b7b: $ff
	rst  $38                                         ; $7b7c: $ff
	rst  $38                                         ; $7b7d: $ff
	add  d                                           ; $7b7e: $82
	ld   a, [de]                                     ; $7b7f: $1a
	jp   c, $51bb                                    ; $7b80: $da $bb $51

	ld   de, $4801                                   ; $7b83: $11 $01 $48
	rst  $38                                         ; $7b86: $ff
	rst  $38                                         ; $7b87: $ff
	rst  $38                                         ; $7b88: $ff
	rst  $20                                         ; $7b89: $e7
	inc  de                                          ; $7b8a: $13
	cp   d                                           ; $7b8b: $ba
	adc  h                                           ; $7b8c: $8c
	add  c                                           ; $7b8d: $81
	ld   de, $3715                                   ; $7b8e: $11 $15 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b91: $cf
	rst  $38                                         ; $7b92: $ff
	rst  $38                                         ; $7b93: $ff
	ld   a, [$8d31]                                  ; $7b94: $fa $31 $8d
	sbc  c                                           ; $7b97: $99
	ret  z                                           ; $7b98: $c8

	ld   de, $2311                                   ; $7b99: $11 $11 $23
	sbc  [hl]                                        ; $7b9c: $9e
	rst  $38                                         ; $7b9d: $ff
	rst  $38                                         ; $7b9e: $ff
	rst  $38                                         ; $7b9f: $ff
	ld   h, c                                        ; $7ba0: $61
	ld   a, [de]                                     ; $7ba1: $1a
	cp   c                                           ; $7ba2: $b9
	rst  JumpTable                                         ; $7ba3: $df
	and  c                                           ; $7ba4: $a1
	ld   de, $1711                                   ; $7ba5: $11 $11 $17
	rst  $38                                         ; $7ba8: $ff
	rst  $38                                         ; $7ba9: $ff
	rst  $38                                         ; $7baa: $ff
	push af                                          ; $7bab: $f5
	ld   de, $8dbb                                   ; $7bac: $11 $bb $8d
	ld   a, [$1211]                                  ; $7baf: $fa $11 $12
	ld   de, $ff8f                                   ; $7bb2: $11 $8f $ff
	rst  $38                                         ; $7bb5: $ff
	rst  $38                                         ; $7bb6: $ff
	ld   b, c                                        ; $7bb7: $41
	ld   a, [de]                                     ; $7bb8: $1a
	cp   c                                           ; $7bb9: $b9
	rst  JumpTable                                         ; $7bba: $df
	pop  hl                                          ; $7bbb: $e1
	ld   de, $1511                                   ; $7bbc: $11 $11 $15
	rst  $38                                         ; $7bbf: $ff
	rst  $38                                         ; $7bc0: $ff
	rst  $38                                         ; $7bc1: $ff
	push af                                          ; $7bc2: $f5
	ld   de, $9d9c                                   ; $7bc3: $11 $9c $9d
	rst  $38                                         ; $7bc6: $ff
	ld   sp, $1111                                   ; $7bc7: $31 $11 $11
	inc  e                                           ; $7bca: $1c
	rst  $38                                         ; $7bcb: $ff
	rst  $38                                         ; $7bcc: $ff
	rst  $38                                         ; $7bcd: $ff
	or   c                                           ; $7bce: $b1
	ld   d, $b9                                      ; $7bcf: $16 $b9
	xor  a                                           ; $7bd1: $af
	ld   a, [$1111]                                  ; $7bd2: $fa $11 $11
	ld   de, $ff9f                                   ; $7bd5: $11 $9f $ff
	rst  $38                                         ; $7bd8: $ff
	rst  $38                                         ; $7bd9: $ff
	ld   hl, $9929                                   ; $7bda: $21 $29 $99
	rst  $28                                         ; $7bdd: $ef
	ld   a, [$1111]                                  ; $7bde: $fa $11 $11
	ld   de, $ffdf                                   ; $7be1: $11 $df $ff
	rst  $38                                         ; $7be4: $ff
	rst  $38                                         ; $7be5: $ff
	ld   de, $8a2a                                   ; $7be6: $11 $2a $8a
	rst  $38                                         ; $7be9: $ff
	rst  $30                                         ; $7bea: $f7
	ld   de, $1111                                   ; $7beb: $11 $11 $11
	rst  $28                                         ; $7bee: $ef
	rst  $38                                         ; $7bef: $ff
	rst  $38                                         ; $7bf0: $ff
	ei                                               ; $7bf1: $fb
	ld   hl, $7a1a                                   ; $7bf2: $21 $1a $7a
	rst  $38                                         ; $7bf5: $ff
	db   $fc                                         ; $7bf6: $fc
	ld   de, $1111                                   ; $7bf7: $11 $11 $11
	ld   a, a                                        ; $7bfa: $7f
	rst  $38                                         ; $7bfb: $ff
	rst  $38                                         ; $7bfc: $ff
	db   $fd                                         ; $7bfd: $fd
	ld   sp, $8914                                   ; $7bfe: $31 $14 $89
	rst  $38                                         ; $7c01: $ff
	rst  $38                                         ; $7c02: $ff
	ld   h, c                                        ; $7c03: $61
	ld   de, $1f11                                   ; $7c04: $11 $11 $1f
	rst  $38                                         ; $7c07: $ff
	rst  $38                                         ; $7c08: $ff
	rst  $38                                         ; $7c09: $ff
	ld   h, c                                        ; $7c0a: $61
	ld   de, $8f69                                   ; $7c0b: $11 $69 $8f
	rst  $38                                         ; $7c0e: $ff
	rst  $30                                         ; $7c0f: $f7
	ld   de, $1111                                   ; $7c10: $11 $11 $11
	ld   a, a                                        ; $7c13: $7f
	rst  $38                                         ; $7c14: $ff
	rst  $38                                         ; $7c15: $ff
	rst  $30                                         ; $7c16: $f7
	ld   de, $a912                                   ; $7c17: $11 $12 $a9
	rst  $38                                         ; $7c1a: $ff
	rst  $38                                         ; $7c1b: $ff
	jp   $1111                                       ; $7c1c: $c3 $11 $11


	ld   de, $ffff                                   ; $7c1f: $11 $ff $ff
	rst  $38                                         ; $7c22: $ff
	and  c                                           ; $7c23: $a1
	ld   de, $be11                                   ; $7c24: $11 $11 $be
	rst  $38                                         ; $7c27: $ff
	rst  $38                                         ; $7c28: $ff
	and  $41                                         ; $7c29: $e6 $41
	ld   de, $af11                                   ; $7c2b: $11 $11 $af
	rst  $38                                         ; $7c2e: $ff
	rst  $38                                         ; $7c2f: $ff
	db   $f4                                         ; $7c30: $f4
	ld   de, $4914                                   ; $7c31: $11 $14 $49
	rst  $38                                         ; $7c34: $ff
	rst  $38                                         ; $7c35: $ff
	db   $ec                                         ; $7c36: $ec
	add  a                                           ; $7c37: $87
	ld   de, $1b11                                   ; $7c38: $11 $11 $1b
	rst  $38                                         ; $7c3b: $ff
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	sub  c                                           ; $7c3e: $91
	ld   de, $6f4a                                   ; $7c3f: $11 $4a $6f
	rst  $38                                         ; $7c42: $ff
	db   $fc                                         ; $7c43: $fc
	bit  6, e                                        ; $7c44: $cb $73
	ld   sp, $1f11                                   ; $7c46: $31 $11 $1f
	rst  $38                                         ; $7c49: $ff
	rst  $38                                         ; $7c4a: $ff
	rst  $38                                         ; $7c4b: $ff
	ld   hl, $d811                                   ; $7c4c: $21 $11 $d8
	ld   a, a                                        ; $7c4f: $7f
	rst  $38                                         ; $7c50: $ff
	xor  c                                           ; $7c51: $a9
	ret                                              ; $7c52: $c9


	ld   b, l                                        ; $7c53: $45
	ld   d, c                                        ; $7c54: $51
	ld   de, $ff1f                                   ; $7c55: $11 $1f $ff
	rst  $38                                         ; $7c58: $ff
	rst  $38                                         ; $7c59: $ff
	ld   de, $f814                                   ; $7c5a: $11 $14 $f8
	adc  a                                           ; $7c5d: $8f
	rst  $38                                         ; $7c5e: $ff
	ld   l, c                                        ; $7c5f: $69
	bit  4, a                                        ; $7c60: $cb $67
	ld   h, c                                        ; $7c62: $61
	ld   de, $ff1f                                   ; $7c63: $11 $1f $ff
	rst  $38                                         ; $7c66: $ff
	rst  $38                                         ; $7c67: $ff
	ld   sp, $e815                                   ; $7c68: $31 $15 $e8
	xor  a                                           ; $7c6b: $af
	rst  $38                                         ; $7c6c: $ff
	ld   l, d                                        ; $7c6d: $6a
	jp   z, Jump_0f2_5176                            ; $7c6e: $ca $76 $51

	ld   de, $ff1f                                   ; $7c71: $11 $1f $ff
	rst  $38                                         ; $7c74: $ff
	rst  $38                                         ; $7c75: $ff
	ld   de, $f815                                   ; $7c76: $11 $15 $f8
	xor  a                                           ; $7c79: $af
	db   $fd                                         ; $7c7a: $fd
	ld   l, d                                        ; $7c7b: $6a
	cp   c                                           ; $7c7c: $b9
	ld   a, c                                        ; $7c7d: $79
	ld   b, c                                        ; $7c7e: $41
	ld   de, $ff1f                                   ; $7c7f: $11 $1f $ff
	rst  $38                                         ; $7c82: $ff
	rst  $38                                         ; $7c83: $ff
	ld   de, $f815                                   ; $7c84: $11 $15 $f8
	sbc  a                                           ; $7c87: $9f
	cp   $79                                         ; $7c88: $fe $79
	db   $db                                         ; $7c8a: $db
	ld   [hl], a                                     ; $7c8b: $77
	ld   hl, $4f11                                   ; $7c8c: $21 $11 $4f
	rst  $38                                         ; $7c8f: $ff
	rst  $38                                         ; $7c90: $ff
	db   $fd                                         ; $7c91: $fd
	ld   de, $fc15                                   ; $7c92: $11 $15 $fc
	rst  $28                                         ; $7c95: $ef
	rst  $38                                         ; $7c96: $ff
	ld   e, b                                        ; $7c97: $58
	xor  b                                           ; $7c98: $a8
	ld   a, b                                        ; $7c99: $78
	ld   d, c                                        ; $7c9a: $51
	ld   de, $ff3f                                   ; $7c9b: $11 $3f $ff
	rst  $38                                         ; $7c9e: $ff
	db   $fd                                         ; $7c9f: $fd
	ld   de, $ff16                                   ; $7ca0: $11 $16 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ca3: $cf
	db   $fd                                         ; $7ca4: $fd
	ld   [hl], $9a                                   ; $7ca5: $36 $9a
	sbc  d                                           ; $7ca7: $9a
	ld   [hl], c                                     ; $7ca8: $71
	ld   de, $ff2f                                   ; $7ca9: $11 $2f $ff
	rst  $38                                         ; $7cac: $ff
	rst  $38                                         ; $7cad: $ff
	ld   hl, $fd16                                   ; $7cae: $21 $16 $fd
	sbc  a                                           ; $7cb1: $9f
	db   $fd                                         ; $7cb2: $fd
	ld   b, a                                        ; $7cb3: $47
	call z, Call_0f2_71ab                            ; $7cb4: $cc $ab $71
	ld   de, $ff3f                                   ; $7cb7: $11 $3f $ff
	rst  $38                                         ; $7cba: $ff
	cp   $21                                         ; $7cbb: $fe $21
	dec  d                                           ; $7cbd: $15
	db   $fd                                         ; $7cbe: $fd
	xor  a                                           ; $7cbf: $af
	db   $fc                                         ; $7cc0: $fc
	ld   d, a                                        ; $7cc1: $57
	call z, Call_0f2_51aa                            ; $7cc2: $cc $aa $51
	ld   de, $ff2f                                   ; $7cc5: $11 $2f $ff
	rst  $38                                         ; $7cc8: $ff
	rst  $38                                         ; $7cc9: $ff
	ld   de, $ff15                                   ; $7cca: $11 $15 $ff
	cp   a                                           ; $7ccd: $bf
	ei                                               ; $7cce: $fb
	ld   d, a                                        ; $7ccf: $57
	cp   l                                           ; $7cd0: $bd
	xor  d                                           ; $7cd1: $aa
	ld   d, c                                        ; $7cd2: $51
	ld   de, $ff4f                                   ; $7cd3: $11 $4f $ff
	rst  $38                                         ; $7cd6: $ff
	db   $fc                                         ; $7cd7: $fc
	ld   de, $ff16                                   ; $7cd8: $11 $16 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cdb: $cf
	ei                                               ; $7cdc: $fb
	ld   d, a                                        ; $7cdd: $57
	cp   l                                           ; $7cde: $bd
	xor  d                                           ; $7cdf: $aa
	ld   d, c                                        ; $7ce0: $51
	ld   de, $ff7f                                   ; $7ce1: $11 $7f $ff
	rst  $38                                         ; $7ce4: $ff
	db   $fc                                         ; $7ce5: $fc
	ld   de, $fd19                                   ; $7ce6: $11 $19 $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ce9: $cf
	ld   a, [$bd56]                                  ; $7cea: $fa $56 $bd
	xor  e                                           ; $7ced: $ab
	ld   sp, $af11                                   ; $7cee: $31 $11 $af
	rst  $38                                         ; $7cf1: $ff
	rst  $38                                         ; $7cf2: $ff
	ld   [$1b11], a                                  ; $7cf3: $ea $11 $1b
	db   $fc                                         ; $7cf6: $fc
	rst  JumpTable                                         ; $7cf7: $df
	ld   hl, sp+$56                                  ; $7cf8: $f8 $56
	cp   h                                           ; $7cfa: $bc
	xor  h                                           ; $7cfb: $ac
	ld   hl, $cf11                                   ; $7cfc: $21 $11 $cf
	rst  $38                                         ; $7cff: $ff
	rst  $38                                         ; $7d00: $ff
	ld   a, [$1d11]                                  ; $7d01: $fa $11 $1d
	db   $fc                                         ; $7d04: $fc
	rst  JumpTable                                         ; $7d05: $df
	ld   sp, hl                                      ; $7d06: $f9
	ld   b, l                                        ; $7d07: $45
	call c, $11ac                                    ; $7d08: $dc $ac $11
	ld   de, $ffff                                   ; $7d0b: $11 $ff $ff
	rst  $38                                         ; $7d0e: $ff
	rst  ToBoot                                         ; $7d0f: $c7

jr_0f2_7d10:
	ld   de, $fc1f                                   ; $7d10: $11 $1f $fc
	rst  $38                                         ; $7d13: $ff
	rst  $30                                         ; $7d14: $f7
	ld   d, a                                        ; $7d15: $57
	cp   d                                           ; $7d16: $ba
	cp   e                                           ; $7d17: $bb
	ld   de, rAUD1LEN                                   ; $7d18: $11 $11 $ff
	rst  $38                                         ; $7d1b: $ff
	rst  $38                                         ; $7d1c: $ff
	call nc, $1f11                                   ; $7d1d: $d4 $11 $1f
	ld   sp, hl                                      ; $7d20: $f9
	rst  $38                                         ; $7d21: $ff
	push af                                          ; $7d22: $f5
	jr   z, jr_0f2_7d10                              ; $7d23: $28 $eb

	jp   z, $1111                                    ; $7d25: $ca $11 $11

	rst  $38                                         ; $7d28: $ff
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	call nz, $1f11                                   ; $7d2b: $c4 $11 $1f
	ld   a, [$e5ff]                                  ; $7d2e: $fa $ff $e5
	ld   c, b                                        ; $7d31: $48
	jp   z, $11c9                                    ; $7d32: $ca $c9 $11

	ld   de, $ffff                                   ; $7d35: $11 $ff $ff
	cp   $a2                                         ; $7d38: $fe $a2
	ld   de, $f91f                                   ; $7d3a: $11 $1f $f9
	rst  $38                                         ; $7d3d: $ff
	add  $2a                                         ; $7d3e: $c6 $2a
	ld   [$11d6], a                                  ; $7d40: $ea $d6 $11
	inc  de                                          ; $7d43: $13
	rst  $38                                         ; $7d44: $ff
	rst  $38                                         ; $7d45: $ff
	db   $fd                                         ; $7d46: $fd
	and  c                                           ; $7d47: $a1
	ld   de, $fc4f                                   ; $7d48: $11 $4f $fc
	rst  $38                                         ; $7d4b: $ff
	and  h                                           ; $7d4c: $a4
	ld   c, c                                        ; $7d4d: $49
	jp   z, $11d5                                    ; $7d4e: $ca $d5 $11

	ld   a, [de]                                     ; $7d51: $1a
	rst  $38                                         ; $7d52: $ff
	rst  $38                                         ; $7d53: $ff
	db   $fd                                         ; $7d54: $fd
	add  c                                           ; $7d55: $81
	ld   de, $dcaf                                   ; $7d56: $11 $af $dc
	rst  $38                                         ; $7d59: $ff
	add  h                                           ; $7d5a: $84
	ld   c, h                                        ; $7d5b: $4c
	db   $db                                         ; $7d5c: $db
	pop  de                                          ; $7d5d: $d1
	ld   de, $ff1c                                   ; $7d5e: $11 $1c $ff
	rst  $38                                         ; $7d61: $ff
	cp   $71                                         ; $7d62: $fe $71
	ld   de, $efef                                   ; $7d64: $11 $ef $ef
	rst  $38                                         ; $7d67: $ff
	ld   h, d                                        ; $7d68: $62
	ld   l, d                                        ; $7d69: $6a
	cp   h                                           ; $7d6a: $bc
	pop  bc                                          ; $7d6b: $c1
	ld   de, $ff1f                                   ; $7d6c: $11 $1f $ff
	rst  $38                                         ; $7d6f: $ff
	db   $fc                                         ; $7d70: $fc
	ld   d, c                                        ; $7d71: $51
	ld   de, $bfff                                   ; $7d72: $11 $ff $bf
	rst  $38                                         ; $7d75: $ff
	ld   b, d                                        ; $7d76: $42
	ld   a, [hl]                                     ; $7d77: $7e
	call $11c1                                       ; $7d78: $cd $c1 $11
	rra                                              ; $7d7b: $1f
	rst  $38                                         ; $7d7c: $ff
	rst  $38                                         ; $7d7d: $ff
	db   $fc                                         ; $7d7e: $fc
	ld   h, c                                        ; $7d7f: $61
	ld   de, $cfff                                   ; $7d80: $11 $ff $cf
	rst  $38                                         ; $7d83: $ff
	inc  [hl]                                        ; $7d84: $34
	ld   a, h                                        ; $7d85: $7c
	cp   l                                           ; $7d86: $bd
	pop  de                                          ; $7d87: $d1
	ld   de, $ff1f                                   ; $7d88: $11 $1f $ff
	rst  $38                                         ; $7d8b: $ff
	db   $fd                                         ; $7d8c: $fd
	ld   d, c                                        ; $7d8d: $51
	ld   de, $bfff                                   ; $7d8e: $11 $ff $bf
	rst  $38                                         ; $7d91: $ff
	ld   b, c                                        ; $7d92: $41
	adc  [hl]                                        ; $7d93: $8e
	rst  JumpTable                                         ; $7d94: $df
	pop  bc                                          ; $7d95: $c1
	ld   de, $ff1e                                   ; $7d96: $11 $1e $ff
	rst  $38                                         ; $7d99: $ff
	db   $fd                                         ; $7d9a: $fd
	ld   h, c                                        ; $7d9b: $61
	ld   de, $bfff                                   ; $7d9c: $11 $ff $bf
	rst  $38                                         ; $7d9f: $ff
	ld   b, e                                        ; $7da0: $43
	ld   a, h                                        ; $7da1: $7c
	cp   l                                           ; $7da2: $bd
	or   c                                           ; $7da3: $b1
	ld   de, $ff1f                                   ; $7da4: $11 $1f $ff
	rst  $38                                         ; $7da7: $ff
	ei                                               ; $7da8: $fb
	ld   b, c                                        ; $7da9: $41
	ld   de, $cfff                                   ; $7daa: $11 $ff $cf
	rst  $38                                         ; $7dad: $ff
	ld   b, c                                        ; $7dae: $41
	ld   a, [hl]                                     ; $7daf: $7e
	rst  $28                                         ; $7db0: $ef
	pop  de                                          ; $7db1: $d1
	ld   de, $ff1d                                   ; $7db2: $11 $1d $ff
	rst  $38                                         ; $7db5: $ff
	db   $fc                                         ; $7db6: $fc
	ld   [hl], c                                     ; $7db7: $71
	ld   de, $efef                                   ; $7db8: $11 $ef $ef
	rst  $38                                         ; $7dbb: $ff
	inc  sp                                          ; $7dbc: $33
	adc  h                                           ; $7dbd: $8c
	call c, $11e1                                    ; $7dbe: $dc $e1 $11
	jr   @+$01                                       ; $7dc1: $18 $ff

	rst  $38                                         ; $7dc3: $ff
	db   $fd                                         ; $7dc4: $fd
	add  c                                           ; $7dc5: $81
	ld   de, $fdcf                                   ; $7dc6: $11 $cf $fd
	rst  $38                                         ; $7dc9: $ff
	ld   h, d                                        ; $7dca: $62
	ld   l, [hl]                                     ; $7dcb: $6e
	rst  $28                                         ; $7dcc: $ef
	ldh  a, [c]                                      ; $7dcd: $f2
	ld   de, rAUD1ENV                                   ; $7dce: $11 $12 $ff
	rst  $38                                         ; $7dd1: $ff
	rst  $38                                         ; $7dd2: $ff
	sub  c                                           ; $7dd3: $91
	ld   de, $fd6f                                   ; $7dd4: $11 $6f $fd
	rst  $38                                         ; $7dd7: $ff
	add  e                                           ; $7dd8: $83
	ld   l, e                                        ; $7dd9: $6b
	db   $dd                                         ; $7dda: $dd
	add  sp, $11                                     ; $7ddb: $e8 $11
	ld   de, $ffff                                   ; $7ddd: $11 $ff $ff
	cp   $a1                                         ; $7de0: $fe $a1
	ld   de, $fb1f                                   ; $7de2: $11 $1f $fb
	rst  $38                                         ; $7de5: $ff
	and  c                                           ; $7de6: $a1
	ld   c, h                                        ; $7de7: $4c
	db   $fc                                         ; $7de8: $fc
	ld   a, [$1111]                                  ; $7de9: $fa $11 $11
	rst  $38                                         ; $7dec: $ff
	rst  $38                                         ; $7ded: $ff
	rst  $38                                         ; $7dee: $ff
	db   $f4                                         ; $7def: $f4
	ld   de, $fc1f                                   ; $7df0: $11 $1f $fc
	rst  $38                                         ; $7df3: $ff
	ldh  a, [c]                                      ; $7df4: $f2
	add  hl, sp                                      ; $7df5: $39
	sbc  $ed                                         ; $7df6: $de $ed
	ld   de, $5f11                                   ; $7df8: $11 $11 $5f
	rst  $38                                         ; $7dfb: $ff
	rst  $38                                         ; $7dfc: $ff
	ld   a, [$1811]                                  ; $7dfd: $fa $11 $18
	rst  $38                                         ; $7e00: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e01: $cf
	or   $17                                         ; $7e02: $f6 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e04: $cf
	db   $dd                                         ; $7e05: $dd
	ld   [hl], c                                     ; $7e06: $71
	ld   de, $ff1f                                   ; $7e07: $11 $1f $ff
	rst  $38                                         ; $7e0a: $ff
	cp   $11                                         ; $7e0b: $fe $11
	ld   de, $efff                                   ; $7e0d: $11 $ff $ef
	rst  $38                                         ; $7e10: $ff
	inc  d                                           ; $7e11: $14
	xor  l                                           ; $7e12: $ad
	db   $ec                                         ; $7e13: $ec
	or   d                                           ; $7e14: $b2
	ld   de, rAUD1ENV                                   ; $7e15: $11 $12 $ff
	rst  $38                                         ; $7e18: $ff
	rst  $38                                         ; $7e19: $ff
	or   c                                           ; $7e1a: $b1
	ld   de, $fc6f                                   ; $7e1b: $11 $6f $fc
	rst  $38                                         ; $7e1e: $ff

jr_0f2_7e1f:
	or   c                                           ; $7e1f: $b1
	ld   l, h                                        ; $7e20: $6c
	db   $fd                                         ; $7e21: $fd
	cp   d                                           ; $7e22: $ba
	ld   de, $bf11                                   ; $7e23: $11 $11 $bf
	rst  $38                                         ; $7e26: $ff
	rst  $38                                         ; $7e27: $ff
	rst  $30                                         ; $7e28: $f7
	ld   de, $ff1a                                   ; $7e29: $11 $1a $ff
	rst  $28                                         ; $7e2c: $ef
	ld   sp, hl                                      ; $7e2d: $f9
	jr   jr_0f2_7e1f                                 ; $7e2e: $18 $ef

	db   $db                                         ; $7e30: $db
	sub  c                                           ; $7e31: $91
	ld   de, $ff1d                                   ; $7e32: $11 $1d $ff
	rst  $38                                         ; $7e35: $ff
	rst  $38                                         ; $7e36: $ff
	ld   [hl], c                                     ; $7e37: $71
	ld   de, $febf                                   ; $7e38: $11 $bf $fe
	rst  $38                                         ; $7e3b: $ff
	add  c                                           ; $7e3c: $81
	adc  [hl]                                        ; $7e3d: $8e
	ld   [$11ba], a                                  ; $7e3e: $ea $ba $11
	ld   de, $ffbf                                   ; $7e41: $11 $bf $ff
	rst  $38                                         ; $7e44: $ff
	ld   sp, hl                                      ; $7e45: $f9
	ld   de, $ff19                                   ; $7e46: $11 $19 $ff
	rst  $38                                         ; $7e49: $ff
	ld   a, [$ed18]                                  ; $7e4a: $fa $18 $ed
	xor  c                                           ; $7e4d: $a9
	or   c                                           ; $7e4e: $b1
	ld   de, rAUD1LOW                                   ; $7e4f: $11 $13 $ff
	rst  $38                                         ; $7e52: $ff
	rst  $38                                         ; $7e53: $ff
	pop  bc                                          ; $7e54: $c1
	ld   de, $ff5f                                   ; $7e55: $11 $5f $ff
	rst  $38                                         ; $7e58: $ff
	pop  de                                          ; $7e59: $d1
	ld   l, a                                        ; $7e5a: $6f
	reti                                             ; $7e5b: $d9


	xor  e                                           ; $7e5c: $ab
	ld   b, c                                        ; $7e5d: $41
	ld   de, $ff1f                                   ; $7e5e: $11 $1f $ff
	rst  $38                                         ; $7e61: $ff
	db   $fd                                         ; $7e62: $fd
	ld   de, $fe14                                   ; $7e63: $11 $14 $fe
	rst  $38                                         ; $7e66: $ff
	rst  $38                                         ; $7e67: $ff
	ld   de, $bbed                                   ; $7e68: $11 $ed $bb
	rst  ToBoot                                         ; $7e6b: $c7
	ld   de, rAUD1LEN                                   ; $7e6c: $11 $11 $ff
	rst  $38                                         ; $7e6f: $ff
	rst  $38                                         ; $7e70: $ff
	pop  af                                          ; $7e71: $f1
	ld   de, $ff1a                                   ; $7e72: $11 $1a $ff
	rst  $38                                         ; $7e75: $ff
	or   $1a                                         ; $7e76: $f6 $1a
	db   $ed                                         ; $7e78: $ed
	sbc  d                                           ; $7e79: $9a
	pop  bc                                          ; $7e7a: $c1
	ld   de, $ff1a                                   ; $7e7b: $11 $1a $ff
	rst  $38                                         ; $7e7e: $ff
	rst  $38                                         ; $7e7f: $ff
	add  c                                           ; $7e80: $81
	ld   de, $cf5f                                   ; $7e81: $11 $5f $cf
	rst  $38                                         ; $7e84: $ff
	pop  af                                          ; $7e85: $f1
	ld   c, a                                        ; $7e86: $4f
	db   $db                                         ; $7e87: $db
	adc  h                                           ; $7e88: $8c
	add  c                                           ; $7e89: $81
	ld   de, $fe1f                                   ; $7e8a: $11 $1f $fe
	rst  $38                                         ; $7e8d: $ff
	rst  $38                                         ; $7e8e: $ff
	ld   de, $9f11                                   ; $7e8f: $11 $11 $9f
	rst  JumpTable                                         ; $7e92: $df
	rst  $38                                         ; $7e93: $ff
	and  c                                           ; $7e94: $a1
	sbc  a                                           ; $7e95: $9f
	xor  c                                           ; $7e96: $a9
	sbc  h                                           ; $7e97: $9c
	ld   b, c                                        ; $7e98: $41
	ld   de, $fc1f                                   ; $7e99: $11 $1f $fc
	rst  $38                                         ; $7e9c: $ff
	rst  $38                                         ; $7e9d: $ff
	ld   de, $ae11                                   ; $7e9e: $11 $11 $ae
	rst  JumpTable                                         ; $7ea1: $df
	rst  $38                                         ; $7ea2: $ff
	add  c                                           ; $7ea3: $81
	cp   [hl]                                        ; $7ea4: $be
	adc  c                                           ; $7ea5: $89
	xor  l                                           ; $7ea6: $ad
	ld   sp, $1f11                                   ; $7ea7: $31 $11 $1f
	db   $fd                                         ; $7eaa: $fd
	rst  $38                                         ; $7eab: $ff
	rst  $38                                         ; $7eac: $ff
	ld   de, $9d11                                   ; $7ead: $11 $11 $9d
	rst  $28                                         ; $7eb0: $ef
	rst  $38                                         ; $7eb1: $ff
	add  c                                           ; $7eb2: $81
	sbc  h                                           ; $7eb3: $9c
	ld   a, c                                        ; $7eb4: $79
	xor  l                                           ; $7eb5: $ad
	ld   h, c                                        ; $7eb6: $61
	ld   de, $fb1f                                   ; $7eb7: $11 $1f $fb
	rst  $38                                         ; $7eba: $ff
	rst  $38                                         ; $7ebb: $ff
	ld   de, $5e11                                   ; $7ebc: $11 $11 $5e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ebf: $cf
	rst  $38                                         ; $7ec0: $ff
	pop  bc                                          ; $7ec1: $c1
	ld   e, h                                        ; $7ec2: $5c
	ld   a, c                                        ; $7ec3: $79
	cp   a                                           ; $7ec4: $bf
	or   c                                           ; $7ec5: $b1
	ld   de, $fe17                                   ; $7ec6: $11 $17 $fe
	rst  $38                                         ; $7ec9: $ff
	rst  $38                                         ; $7eca: $ff
	ld   h, c                                        ; $7ecb: $61
	ld   de, $bf1d                                   ; $7ecc: $11 $1d $bf
	rst  $38                                         ; $7ecf: $ff
	db   $e3                                         ; $7ed0: $e3
	dec  bc                                          ; $7ed1: $0b
	ld   [hl], a                                     ; $7ed2: $77
	sbc  $f6                                         ; $7ed3: $de $f6
	ld   de, rAUD1LEN                                   ; $7ed5: $11 $11 $ff
	cp   a                                           ; $7ed8: $bf
	rst  $38                                         ; $7ed9: $ff
	pop  af                                          ; $7eda: $f1
	ld   de, $e815                                   ; $7edb: $11 $15 $e8
	rst  $38                                         ; $7ede: $ff
	ld   sp, hl                                      ; $7edf: $f9
	inc  sp                                          ; $7ee0: $33
	and  a                                           ; $7ee1: $a7
	xor  a                                           ; $7ee2: $af
	cp   $31                                         ; $7ee3: $fe $31
	ld   de, $fc1f                                   ; $7ee5: $11 $1f $fc
	rst  $38                                         ; $7ee8: $ff
	rst  $38                                         ; $7ee9: $ff
	ld   de, $6c11                                   ; $7eea: $11 $11 $6c
	ld   a, a                                        ; $7eed: $7f
	rst  $38                                         ; $7eee: $ff
	ld   [hl], e                                     ; $7eef: $73
	ld   e, e                                        ; $7ef0: $5b
	adc  d                                           ; $7ef1: $8a
	rst  $38                                         ; $7ef2: $ff
	db   $e4                                         ; $7ef3: $e4
	ld   de, $ef11                                   ; $7ef4: $11 $11 $ef
	rst  $38                                         ; $7ef7: $ff
	rst  $38                                         ; $7ef8: $ff
	db   $f4                                         ; $7ef9: $f4
	ld   de, $c812                                   ; $7efa: $11 $12 $c8
	rst  $38                                         ; $7efd: $ff
	ei                                               ; $7efe: $fb
	ld   b, l                                        ; $7eff: $45
	cp   b                                           ; $7f00: $b8
	adc  a                                           ; $7f01: $8f
	cp   $91                                         ; $7f02: $fe $91
	ld   de, rAUD1LEN                                   ; $7f04: $11 $11 $ff
	rst  $38                                         ; $7f07: $ff
	rst  $38                                         ; $7f08: $ff
	pop  de                                          ; $7f09: $d1
	ld   de, $a919                                   ; $7f0a: $11 $19 $a9
	rst  $38                                         ; $7f0d: $ff
	or   $58                                         ; $7f0e: $f6 $58
	add  a                                           ; $7f10: $87
	cp   a                                           ; $7f11: $bf
	db   $fc                                         ; $7f12: $fc
	ld   h, c                                        ; $7f13: $61
	ld   de, rAUD1LEN                                   ; $7f14: $11 $11 $ff
	rst  $38                                         ; $7f17: $ff
	rst  $38                                         ; $7f18: $ff
	pop  bc                                          ; $7f19: $c1
	ld   de, $881c                                   ; $7f1a: $11 $1c $88
	rst  $38                                         ; $7f1d: $ff
	push af                                          ; $7f1e: $f5
	ld   c, c                                        ; $7f1f: $49
	ld   a, b                                        ; $7f20: $78
	rst  JumpTable                                         ; $7f21: $df
	db   $fc                                         ; $7f22: $fc
	ld   h, c                                        ; $7f23: $61
	ld   de, rAUD1LEN                                   ; $7f24: $11 $11 $ff
	rst  $38                                         ; $7f27: $ff
	rst  $38                                         ; $7f28: $ff
	pop  bc                                          ; $7f29: $c1
	ld   de, $8a18                                   ; $7f2a: $11 $18 $8a
	rst  $38                                         ; $7f2d: $ff
	db   $fc                                         ; $7f2e: $fc
	ld   c, d                                        ; $7f2f: $4a
	ld   l, b                                        ; $7f30: $68
	rst  $28                                         ; $7f31: $ef
	db   $fd                                         ; $7f32: $fd
	add  c                                           ; $7f33: $81
	ld   de, $ef11                                   ; $7f34: $11 $11 $ef
	rst  $38                                         ; $7f37: $ff
	rst  $38                                         ; $7f38: $ff
	pop  af                                          ; $7f39: $f1
	ld   de, $b413                                   ; $7f3a: $11 $13 $b4
	rst  $38                                         ; $7f3d: $ff
	rst  $38                                         ; $7f3e: $ff
	add  l                                           ; $7f3f: $85
	and  h                                           ; $7f40: $a4
	ld   a, [hl]                                     ; $7f41: $7e
	rst  $38                                         ; $7f42: $ff
	sub  $11                                         ; $7f43: $d6 $11
	ld   de, $ff1f                                   ; $7f45: $11 $1f $ff
	rst  $38                                         ; $7f48: $ff
	rst  $28                                         ; $7f49: $ef
	ld   de, $4a11                                   ; $7f4a: $11 $11 $4a
	ld   e, a                                        ; $7f4d: $5f
	rst  $38                                         ; $7f4e: $ff
	ld   a, [$4659]                                  ; $7f4f: $fa $59 $46
	rst  JumpTable                                         ; $7f52: $df
	rst  $38                                         ; $7f53: $ff
	ld   [hl], c                                     ; $7f54: $71
	ld   de, $1f11                                   ; $7f55: $11 $11 $1f
	rst  $38                                         ; $7f58: $ff
	rst  $38                                         ; $7f59: $ff
	ld   sp, hl                                      ; $7f5a: $f9
	ld   de, $a711                                   ; $7f5b: $11 $11 $a7
	cp   a                                           ; $7f5e: $bf
	rst  $38                                         ; $7f5f: $ff
	or   $75                                         ; $7f60: $f6 $75
	daa                                              ; $7f62: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f63: $cf
	ei                                               ; $7f64: $fb
	ld   d, c                                        ; $7f65: $51
	ld   de, $1f11                                   ; $7f66: $11 $11 $1f
	rst  $38                                         ; $7f69: $ff
	rst  $38                                         ; $7f6a: $ff
	rst  $30                                         ; $7f6b: $f7
	ld   de, $a511                                   ; $7f6c: $11 $11 $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f6f: $cf
	rst  $38                                         ; $7f70: $ff
	rst  $20                                         ; $7f71: $e7
	ld   d, c                                        ; $7f72: $51
	inc  d                                           ; $7f73: $14
	rst  JumpTable                                         ; $7f74: $df
	rst  $38                                         ; $7f75: $ff
	pop  de                                          ; $7f76: $d1
	ld   de, $1111                                   ; $7f77: $11 $11 $11
	rst  $38                                         ; $7f7a: $ff
	rst  $38                                         ; $7f7b: $ff
	db   $fd                                         ; $7f7c: $fd
	ld   hl, $1e11                                   ; $7f7d: $21 $11 $1e
	xor  a                                           ; $7f80: $af
	rst  $38                                         ; $7f81: $ff
	or   $56                                         ; $7f82: $f6 $56
	ld   de, $ff4b                                   ; $7f84: $11 $4b $ff
	rst  $38                                         ; $7f87: $ff
	ld   [hl], c                                     ; $7f88: $71
	ld   de, $1111                                   ; $7f89: $11 $11 $11
	rst  $38                                         ; $7f8c: $ff
	rst  $38                                         ; $7f8d: $ff
	push de                                          ; $7f8e: $d5
	or   c                                           ; $7f8f: $b1
	ld   de, $fd1f                                   ; $7f90: $11 $1f $fd
	rst  $38                                         ; $7f93: $ff
	pop  af                                          ; $7f94: $f1
	dec  d                                           ; $7f95: $15
	ld   de, $ff6b                                   ; $7f96: $11 $6b $ff
	rst  $38                                         ; $7f99: $ff
	ld   [hl], h                                     ; $7f9a: $74
	ld   de, $1111                                   ; $7f9b: $11 $11 $11
	rra                                              ; $7f9e: $1f
	rst  $38                                         ; $7f9f: $ff
	cp   $1f                                         ; $7fa0: $fe $1f
	ld   de, rAUD1ENV                                   ; $7fa2: $11 $12 $ff
	ld   l, a                                        ; $7fa5: $6f
	db   $fd                                         ; $7fa6: $fd
	ld   de, $6729                                   ; $7fa7: $11 $29 $67
	rst  JumpTable                                         ; $7faa: $df
	rst  $38                                         ; $7fab: $ff
	and  a                                           ; $7fac: $a7
	ld   d, e                                        ; $7fad: $53
	ld   de, $1177                                   ; $7fae: $11 $77 $11
	rra                                              ; $7fb1: $1f
	ei                                               ; $7fb2: $fb
	rst  $38                                         ; $7fb3: $ff
	ld   l, a                                        ; $7fb4: $6f
	ld   de, $f717                                   ; $7fb5: $11 $17 $f7
	ccf                                              ; $7fb8: $3f
	ld   sp, hl                                      ; $7fb9: $f9
	ld   de, $4c79                                   ; $7fba: $11 $79 $4c
	rst  JumpTable                                         ; $7fbd: $df
	db   $fc                                         ; $7fbe: $fc
	sbc  d                                           ; $7fbf: $9a
	add  [hl]                                        ; $7fc0: $86
	inc  d                                           ; $7fc1: $14
	rst  $10                                         ; $7fc2: $d7
	ld   de, rAUD1LEN                                   ; $7fc3: $11 $11 $ff
	adc  a                                           ; $7fc6: $8f
	cp   $f1                                         ; $7fc7: $fe $f1
	ld   [de], a                                     ; $7fc9: $12
	ld   c, e                                        ; $7fca: $4b
	jr   @+$01                                       ; $7fcb: $18 $ff

	sub  l                                           ; $7fcd: $95
	ld   c, d                                        ; $7fce: $4a
	ld   d, e                                        ; $7fcf: $53
	sbc  [hl]                                        ; $7fd0: $9e
	rst  $38                                         ; $7fd1: $ff
	sbc  d                                           ; $7fd2: $9a
	call z, $ad73                                    ; $7fd3: $cc $73 $ad
	ld   [hl], c                                     ; $7fd6: $71

Call_0f2_7fd7:
	ld   de, rAUD1LEN                                   ; $7fd7: $11 $11 $ff
	rst  $28                                         ; $7fda: $ef
	rst  JumpTable                                         ; $7fdb: $df
	pop  de                                          ; $7fdc: $d1
	ld   de, $1f38                                   ; $7fdd: $11 $38 $1f
	rst  $38                                         ; $7fe0: $ff
	add  sp, $47                                     ; $7fe1: $e8 $47
	ld   de, $ff4e                                   ; $7fe3: $11 $4e $ff
	sbc  $fe                                         ; $7fe6: $de $fe
	ld   [hl+], a                                    ; $7fe8: $22
	sbc  h                                           ; $7fe9: $9c
	and  h                                           ; $7fea: $a4
	ld   de, $8f11                                   ; $7feb: $11 $11 $8f
	rst  $38                                         ; $7fee: $ff
	ld   a, [$11f1]                                  ; $7fef: $fa $f1 $11
	add  hl, de                                      ; $7ff2: $19
	ld   b, d                                        ; $7ff3: $42
	rst  $38                                         ; $7ff4: $ff
	ld   a, [$7124]                                  ; $7ff5: $fa $24 $71
	inc  d                                           ; $7ff8: $14
	rst  $38                                         ; $7ff9: $ff
	rst  $38                                         ; $7ffa: $ff
	rst  $38                                         ; $7ffb: $ff
	add  c                                           ; $7ffc: $81
	ld   a, [hl+]                                    ; $7ffd: $2a
	db   $dd                                         ; $7ffe: $dd
	add  h                                           ; $7fff: $84
