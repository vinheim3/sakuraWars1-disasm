; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ee", ROMX[$4000], BANK[$ee]

	rst  $38                                         ; $4000: $ff
	cp   $ff                                         ; $4001: $fe $ff
	db   $fc                                         ; $4003: $fc
	adc  h                                           ; $4004: $8c
	ld   sp, hl                                      ; $4005: $f9
	ld   de, $1141                                   ; $4006: $11 $41 $11
	dec  d                                           ; $4009: $15
	sub  c                                           ; $400a: $91
	dec  e                                           ; $400b: $1d
	rst  $38                                         ; $400c: $ff
	db   $fd                                         ; $400d: $fd
	rst  $38                                         ; $400e: $ff
	ld   hl, sp+$5a                                  ; $400f: $f8 $5a
	ld   sp, hl                                      ; $4011: $f9
	ld   de, $1111                                   ; $4012: $11 $11 $11
	jr   jr_0ee_4088                                 ; $4015: $18 $71

	ccf                                              ; $4017: $3f
	rst  $38                                         ; $4018: $ff
	rst  $38                                         ; $4019: $ff
	rst  $38                                         ; $401a: $ff
	or   $5b                                         ; $401b: $f6 $5b
	db   $e3                                         ; $401d: $e3
	ld   de, $1111                                   ; $401e: $11 $11 $11
	ld   a, [hl-]                                    ; $4021: $3a
	inc  sp                                          ; $4022: $33
	rst  $38                                         ; $4023: $ff
	rst  $38                                         ; $4024: $ff
	rst  $28                                         ; $4025: $ef
	rst  $38                                         ; $4026: $ff
	add  h                                           ; $4027: $84
	sbc  l                                           ; $4028: $9d
	ld   [hl], c                                     ; $4029: $71
	ld   de, $1111                                   ; $402a: $11 $11 $11
	add  e                                           ; $402d: $83
	ld   c, a                                        ; $402e: $4f
	rst  $38                                         ; $402f: $ff
	rst  $38                                         ; $4030: $ff
	rst  $38                                         ; $4031: $ff
	rst  $20                                         ; $4032: $e7
	ld   b, a                                        ; $4033: $47
	sub  $11                                         ; $4034: $d6 $11
	ld   de, $3811                                   ; $4036: $11 $11 $38
	rla                                              ; $4039: $17
	rst  $38                                         ; $403a: $ff
	rst  $38                                         ; $403b: $ff
	rst  $38                                         ; $403c: $ff
	ld   sp, hl                                      ; $403d: $f9
	ld   h, h                                        ; $403e: $64
	sbc  e                                           ; $403f: $9b
	ld   hl, $1111                                   ; $4040: $21 $11 $11
	add  hl, de                                      ; $4043: $19
	ld   [hl], c                                     ; $4044: $71
	rst  $38                                         ; $4045: $ff
	rst  $38                                         ; $4046: $ff
	rst  $38                                         ; $4047: $ff
	db   $fd                                         ; $4048: $fd
	ld   h, l                                        ; $4049: $65
	ld   e, e                                        ; $404a: $5b
	sub  c                                           ; $404b: $91
	ld   de, $1311                                   ; $404c: $11 $11 $13
	and  c                                           ; $404f: $a1
	ld   a, a                                        ; $4050: $7f
	rst  $38                                         ; $4051: $ff
	rst  $38                                         ; $4052: $ff
	rst  $38                                         ; $4053: $ff
	ld   [hl], a                                     ; $4054: $77
	ld   c, c                                        ; $4055: $49
	jp   nc, $1111                                   ; $4056: $d2 $11 $11

	ld   de, $3fb4                                   ; $4059: $11 $b4 $3f
	rst  $38                                         ; $405c: $ff
	rst  $38                                         ; $405d: $ff
	rst  $38                                         ; $405e: $ff
	ld   h, a                                        ; $405f: $67
	ld   d, a                                        ; $4060: $57
	call nc, $1111                                   ; $4061: $d4 $11 $11
	ld   de, $2fb7                                   ; $4064: $11 $b7 $2f
	rst  $38                                         ; $4067: $ff
	rst  $38                                         ; $4068: $ff
	rst  $38                                         ; $4069: $ff
	ld   b, a                                        ; $406a: $47
	ld   h, l                                        ; $406b: $65
	and  $11                                         ; $406c: $e6 $11
	ld   de, $b811                                   ; $406e: $11 $11 $b8
	ccf                                              ; $4071: $3f
	rst  $38                                         ; $4072: $ff
	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	ld   d, $77                                      ; $4075: $16 $77
	push hl                                          ; $4077: $e5
	ld   de, $1111                                   ; $4078: $11 $11 $11
	rst  ToBoot                                         ; $407b: $c7
	ld   l, a                                        ; $407c: $6f
	rst  $38                                         ; $407d: $ff
	cp   $fe                                         ; $407e: $fe $fe
	ld   d, $69                                      ; $4080: $16 $69
	db   $e3                                         ; $4082: $e3
	ld   de, $1311                                   ; $4083: $11 $11 $13
	and  $ff                                         ; $4086: $e6 $ff

jr_0ee_4088:
	rst  $38                                         ; $4088: $ff
	rst  $38                                         ; $4089: $ff
	push af                                          ; $408a: $f5
	ld   h, $7e                                      ; $408b: $26 $7e
	or   c                                           ; $408d: $b1
	ld   de, $1b12                                   ; $408e: $11 $12 $1b
	ret                                              ; $4091: $c9


	rst  $38                                         ; $4092: $ff
	rst  $38                                         ; $4093: $ff
	rst  $38                                         ; $4094: $ff
	or   c                                           ; $4095: $b1
	ld   h, [hl]                                     ; $4096: $66
	cp   [hl]                                        ; $4097: $be
	ld   sp, $4111                                   ; $4098: $31 $11 $41
	ld   l, a                                        ; $409b: $6f
	xor  a                                           ; $409c: $af
	rst  $38                                         ; $409d: $ff
	rst  $38                                         ; $409e: $ff
	cp   $24                                         ; $409f: $fe $24
	ld   l, d                                        ; $40a1: $6a
	or   $11                                         ; $40a2: $f6 $11
	ld   de, $ec34                                   ; $40a4: $11 $34 $ec
	rst  $38                                         ; $40a7: $ff
	rst  $38                                         ; $40a8: $ff
	cp   $c3                                         ; $40a9: $fe $c3
	ld   b, l                                        ; $40ab: $45
	xor  a                                           ; $40ac: $af
	add  c                                           ; $40ad: $81
	ld   de, $3f33                                   ; $40ae: $11 $33 $3f
	rst  $28                                         ; $40b1: $ef
	rst  $38                                         ; $40b2: $ff
	rst  $38                                         ; $40b3: $ff
	ret                                              ; $40b4: $c9


	ld   b, h                                        ; $40b5: $44
	ld   c, h                                        ; $40b6: $4c
	ld   sp, hl                                      ; $40b7: $f9
	ld   de, $4513                                   ; $40b8: $11 $13 $45
	rst  $28                                         ; $40bb: $ef
	rst  $38                                         ; $40bc: $ff
	rst  $38                                         ; $40bd: $ff
	db   $fc                                         ; $40be: $fc
	ld   [hl], e                                     ; $40bf: $73
	ld   h, e                                        ; $40c0: $63
	rst  $28                                         ; $40c1: $ef
	ld   h, c                                        ; $40c2: $61
	ld   de, $7eb6                                   ; $40c3: $11 $b6 $7e
	rst  $38                                         ; $40c6: $ff
	rst  $38                                         ; $40c7: $ff
	rst  $38                                         ; $40c8: $ff
	ld   d, l                                        ; $40c9: $55
	halt                                             ; $40ca: $76
	ld   e, a                                        ; $40cb: $5f
	pop  af                                          ; $40cc: $f1
	ld   de, $491c                                   ; $40cd: $11 $1c $49
	rst  $28                                         ; $40d0: $ef
	rst  $38                                         ; $40d1: $ff
	rst  $38                                         ; $40d2: $ff
	ld   h, c                                        ; $40d3: $61
	ld   c, c                                        ; $40d4: $49
	ld   e, c                                        ; $40d5: $59
	db   $fd                                         ; $40d6: $fd
	ld   de, $981d                                   ; $40d7: $11 $1d $98
	rst  JumpTable                                         ; $40da: $df
	rst  $38                                         ; $40db: $ff
	rst  $38                                         ; $40dc: $ff
	pop  de                                          ; $40dd: $d1
	ld   a, [de]                                     ; $40de: $1a
	add  [hl]                                        ; $40df: $86
	rst  $38                                         ; $40e0: $ff
	ld   de, $dc15                                   ; $40e1: $11 $15 $dc
	rst  JumpTable                                         ; $40e4: $df
	rst  $38                                         ; $40e5: $ff
	rst  $38                                         ; $40e6: $ff
	pop  af                                          ; $40e7: $f1
	jr   @-$05                                       ; $40e8: $18 $f9

	xor  l                                           ; $40ea: $ad
	ld   de, $cd12                                   ; $40eb: $11 $12 $cd
	rst  $38                                         ; $40ee: $ff
	rst  $38                                         ; $40ef: $ff
	rst  $38                                         ; $40f0: $ff
	pop  af                                          ; $40f1: $f1
	dec  d                                           ; $40f2: $15
	rst  $38                                         ; $40f3: $ff
	or   a                                           ; $40f4: $b7
	ld   de, $bc19                                   ; $40f5: $11 $19 $bc
	rst  $38                                         ; $40f8: $ff
	rst  $38                                         ; $40f9: $ff
	xor  a                                           ; $40fa: $af
	pop  af                                          ; $40fb: $f1
	inc  d                                           ; $40fc: $14
	rst  $38                                         ; $40fd: $ff
	sub  l                                           ; $40fe: $95
	ld   de, $af1b                                   ; $40ff: $11 $1b $af
	rst  $28                                         ; $4102: $ef
	rst  $38                                         ; $4103: $ff
	rst  JumpTable                                         ; $4104: $df
	pop  bc                                          ; $4105: $c1
	ld   d, $ff                                      ; $4106: $16 $ff
	ld   h, c                                        ; $4108: $61
	ld   de, $bf2e                                   ; $4109: $11 $2e $bf
	rst  $38                                         ; $410c: $ff
	db   $fc                                         ; $410d: $fc
	rst  $38                                         ; $410e: $ff
	ld   de, $f85d                                   ; $410f: $11 $5d $f8
	ld   de, $fa11                                   ; $4112: $11 $11 $fa
	rst  $38                                         ; $4115: $ff
	rst  $38                                         ; $4116: $ff
	db   $fd                                         ; $4117: $fd
	di                                               ; $4118: $f3
	ld   d, $af                                      ; $4119: $16 $af
	pop  de                                          ; $411b: $d1
	ld   de, $de1f                                   ; $411c: $11 $1f $de
	rst  $38                                         ; $411f: $ff
	rst  $38                                         ; $4120: $ff
	sbc  a                                           ; $4121: $9f
	add  c                                           ; $4122: $81
	ld   e, c                                        ; $4123: $59
	rst  $38                                         ; $4124: $ff
	ld   de, rAUD1LEN                                   ; $4125: $11 $11 $ff
	rst  $28                                         ; $4128: $ef
	rst  $38                                         ; $4129: $ff
	ld   hl, sp-$0b                                  ; $412a: $f8 $f5
	add  hl, de                                      ; $412c: $19
	cp   a                                           ; $412d: $bf
	pop  de                                          ; $412e: $d1
	ld   de, $ef1f                                   ; $412f: $11 $1f $ef
	rst  $38                                         ; $4132: $ff
	rst  $38                                         ; $4133: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4134: $cf
	ld   de, $f7ae                                   ; $4135: $11 $ae $f7
	ld   de, $fc11                                   ; $4138: $11 $11 $fc
	rst  $38                                         ; $413b: $ff
	rst  $38                                         ; $413c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $413d: $cf
	pop  af                                          ; $413e: $f1
	cpl                                              ; $413f: $2f
	rst  $38                                         ; $4140: $ff
	ld   de, rAUD1LEN                                   ; $4141: $11 $11 $ff
	cp   a                                           ; $4144: $bf
	rst  $38                                         ; $4145: $ff
	rst  $30                                         ; $4146: $f7
	or   $1d                                         ; $4147: $f6 $1d
	rst  $38                                         ; $4149: $ff
	pop  bc                                          ; $414a: $c1
	ld   de, $ff1f                                   ; $414b: $11 $1f $ff
	rst  $38                                         ; $414e: $ff
	ei                                               ; $414f: $fb
	cp   l                                           ; $4150: $bd
	ld   d, $ff                                      ; $4151: $16 $ff
	pop  af                                          ; $4153: $f1
	ld   de, $fc1f                                   ; $4154: $11 $1f $fc
	rst  $38                                         ; $4157: $ff
	rst  $38                                         ; $4158: $ff
	adc  h                                           ; $4159: $8c
	ld   de, $f1ff                                   ; $415a: $11 $ff $f1
	ld   de, $fd1f                                   ; $415d: $11 $1f $fd
	rst  $38                                         ; $4160: $ff
	rst  $38                                         ; $4161: $ff
	cp   l                                           ; $4162: $bd
	ld   de, $e1ff                                   ; $4163: $11 $ff $e1
	ld   de, $fb1f                                   ; $4166: $11 $1f $fb
	rst  $38                                         ; $4169: $ff
	rst  $38                                         ; $416a: $ff
	sbc  e                                           ; $416b: $9b
	ld   de, $b1ff                                   ; $416c: $11 $ff $b1
	ld   de, $fe2f                                   ; $416f: $11 $2f $fe
	rst  $38                                         ; $4172: $ff
	cp   $b6                                         ; $4173: $fe $b6
	ld   d, $fe                                      ; $4175: $16 $fe
	ld   h, c                                        ; $4177: $61
	ld   de, $9fff                                   ; $4178: $11 $ff $9f
	rst  $38                                         ; $417b: $ff
	ei                                               ; $417c: $fb
	or   c                                           ; $417d: $b1
	rra                                              ; $417e: $1f
	ld   sp, hl                                      ; $417f: $f9
	ld   de, rAUD1LEN                                   ; $4180: $11 $11 $ff
	rst  JumpTable                                         ; $4183: $df
	rst  $38                                         ; $4184: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4185: $cf
	and  c                                           ; $4186: $a1
	ld   a, [hl]                                     ; $4187: $7e
	or   [hl]                                        ; $4188: $b6
	ld   de, $fb1f                                   ; $4189: $11 $1f $fb
	rst  $38                                         ; $418c: $ff
	cp   $cf                                         ; $418d: $fe $cf
	ld   de, $81fe                                   ; $418f: $11 $fe $81
	ld   de, $bfff                                   ; $4192: $11 $ff $bf
	rst  $38                                         ; $4195: $ff
	ld   a, [$1ff5]                                  ; $4196: $fa $f5 $1f
	ld   hl, sp+$11                                  ; $4199: $f8 $11
	rra                                              ; $419b: $1f
	db   $fc                                         ; $419c: $fc
	rst  $38                                         ; $419d: $ff
	rst  $38                                         ; $419e: $ff
	sbc  a                                           ; $419f: $9f
	ld   b, c                                        ; $41a0: $41
	rst  $38                                         ; $41a1: $ff
	and  c                                           ; $41a2: $a1
	ld   de, $bfff                                   ; $41a3: $11 $ff $bf
	rst  $38                                         ; $41a6: $ff
	ld   hl, sp-$0c                                  ; $41a7: $f8 $f4
	rra                                              ; $41a9: $1f
	ld   sp, hl                                      ; $41aa: $f9
	ld   de, $f91f                                   ; $41ab: $11 $1f $f9
	rst  $38                                         ; $41ae: $ff
	rst  $38                                         ; $41af: $ff
	sbc  e                                           ; $41b0: $9b
	inc  h                                           ; $41b1: $24
	cp   $31                                         ; $41b2: $fe $31
	ld   [de], a                                     ; $41b4: $12
	rst  $38                                         ; $41b5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41b6: $cf
	rst  $38                                         ; $41b7: $ff
	xor  e                                           ; $41b8: $ab
	sub  c                                           ; $41b9: $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41ba: $cf
	sub  c                                           ; $41bb: $91
	ld   de, $cfff                                   ; $41bc: $11 $ff $cf
	rst  $38                                         ; $41bf: $ff
	rst  $30                                         ; $41c0: $f7
	or   l                                           ; $41c1: $b5
	ld   l, a                                        ; $41c2: $6f
	pop  af                                          ; $41c3: $f1
	ld   de, $dfaf                                   ; $41c4: $11 $af $df
	rst  $38                                         ; $41c7: $ff
	ld   a, [$1cc8]                                  ; $41c8: $fa $c8 $1c
	db   $e4                                         ; $41cb: $e4
	ld   de, $cf1f                                   ; $41cc: $11 $1f $cf
	rst  $38                                         ; $41cf: $ff
	db   $fc                                         ; $41d0: $fc
	db   $db                                         ; $41d1: $db
	dec  hl                                          ; $41d2: $2b
	push hl                                          ; $41d3: $e5
	ld   de, $fe1f                                   ; $41d4: $11 $1f $fe
	rst  $38                                         ; $41d7: $ff
	rst  $38                                         ; $41d8: $ff
	ld   a, h                                        ; $41d9: $7c
	ld   l, c                                        ; $41da: $69
	db   $f4                                         ; $41db: $f4
	ld   de, $fc1f                                   ; $41dc: $11 $1f $fc
	rst  $38                                         ; $41df: $ff
	cp   $6c                                         ; $41e0: $fe $6c
	ld   a, b                                        ; $41e2: $78
	db   $e4                                         ; $41e3: $e4
	ld   de, $ad1f                                   ; $41e4: $11 $1f $ad
	rst  $38                                         ; $41e7: $ff
	db   $fc                                         ; $41e8: $fc
	ld   c, a                                        ; $41e9: $4f
	sub  a                                           ; $41ea: $97
	pop  de                                          ; $41eb: $d1
	ld   de, $8e9f                                   ; $41ec: $11 $9f $8e
	rst  $38                                         ; $41ef: $ff
	ld   a, [$b93f]                                  ; $41f0: $fa $3f $b9
	or   c                                           ; $41f3: $b1
	ld   de, $afff                                   ; $41f4: $11 $ff $af
	rst  $38                                         ; $41f7: $ff
	ldh  a, [c]                                      ; $41f8: $f2
	ld   e, a                                        ; $41f9: $5f
	sbc  l                                           ; $41fa: $9d
	ld   hl, $f718                                   ; $41fb: $21 $18 $f7
	rst  $38                                         ; $41fe: $ff
	rst  $38                                         ; $41ff: $ff
	db   $d3                                         ; $4200: $d3
	ld   a, [$119a]                                  ; $4201: $fa $9a $11
	rra                                              ; $4204: $1f
	ld   sp, hl                                      ; $4205: $f9
	rst  $38                                         ; $4206: $ff
	rst  $38                                         ; $4207: $ff
	rra                                              ; $4208: $1f
	di                                               ; $4209: $f3
	and  c                                           ; $420a: $a1
	ld   de, $dfff                                   ; $420b: $11 $ff $df
	rst  $38                                         ; $420e: $ff
	pop  af                                          ; $420f: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4210: $cf
	ld   d, a                                        ; $4211: $57
	ld   de, $fb1f                                   ; $4212: $11 $1f $fb
	rst  $38                                         ; $4215: $ff
	rst  $38                                         ; $4216: $ff
	dec  e                                           ; $4217: $1d
	db   $f4                                         ; $4218: $f4
	ld   h, c                                        ; $4219: $61
	ld   de, $efff                                   ; $421a: $11 $ff $ef
	rst  $38                                         ; $421d: $ff
	pop  af                                          ; $421e: $f1
	rst  $38                                         ; $421f: $ff
	ld   d, e                                        ; $4220: $53
	ld   de, $cf8f                                   ; $4221: $11 $8f $cf
	rst  $38                                         ; $4224: $ff
	ei                                               ; $4225: $fb
	ld   c, a                                        ; $4226: $4f
	push bc                                          ; $4227: $c5
	ld   de, $fa1f                                   ; $4228: $11 $1f $fa
	db   $fd                                         ; $422b: $fd
	rst  $38                                         ; $422c: $ff
	rra                                              ; $422d: $1f
	db   $f4                                         ; $422e: $f4
	ld   [hl], c                                     ; $422f: $71
	dec  de                                          ; $4230: $1b
	ld   sp, hl                                      ; $4231: $f9
	cp   $ff                                         ; $4232: $fe $ff
	dec  [hl]                                        ; $4234: $35
	ld   hl, sp+$41                                  ; $4235: $f8 $41
	ld   de, $fffc                                   ; $4237: $11 $fc $ff
	rst  $38                                         ; $423a: $ff
	sub  d                                           ; $423b: $92
	ld   sp, hl                                      ; $423c: $f9
	ld   de, rAUD1LEN                                   ; $423d: $11 $11 $ff
	rst  JumpTable                                         ; $4240: $df
	rst  $28                                         ; $4241: $ef
	ldh  [c], a                                      ; $4242: $e2
	db   $fd                                         ; $4243: $fd
	ld   de, rAUD1LEN                                   ; $4244: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4247: $cf
	rst  $28                                         ; $4248: $ef
	pop  hl                                          ; $4249: $e1
	ld   sp, hl                                      ; $424a: $f9
	ld   de, rAUD1LEN                                   ; $424b: $11 $11 $ff
	rst  JumpTable                                         ; $424e: $df
	rst  $38                                         ; $424f: $ff
	call nz, $11f8                                   ; $4250: $c4 $f8 $11
	ld   de, $eff7                                   ; $4253: $11 $f7 $ef
	rst  $38                                         ; $4256: $ff
	inc  a                                           ; $4257: $3c
	pop  af                                          ; $4258: $f1
	ld   de, $f41f                                   ; $4259: $11 $1f $f4
	rst  $38                                         ; $425c: $ff
	rst  $38                                         ; $425d: $ff
	cpl                                              ; $425e: $2f
	pop  af                                          ; $425f: $f1
	ld   de, $f61f                                   ; $4260: $11 $1f $f6
	rst  $38                                         ; $4263: $ff
	cp   $7f                                         ; $4264: $fe $7f
	add  c                                           ; $4266: $81
	ld   de, $5fbf                                   ; $4267: $11 $bf $5f
	rst  $38                                         ; $426a: $ff
	push af                                          ; $426b: $f5
	rst  $38                                         ; $426c: $ff
	ld   de, rAUD1LEN                                   ; $426d: $11 $11 $ff
	ld   c, a                                        ; $4270: $4f
	rst  $38                                         ; $4271: $ff
	cp   b                                           ; $4272: $b8
	ld   hl, sp+$11                                  ; $4273: $f8 $11
	rra                                              ; $4275: $1f
	pop  af                                          ; $4276: $f1
	rst  $38                                         ; $4277: $ff
	rst  $38                                         ; $4278: $ff
	ld   c, a                                        ; $4279: $4f
	pop  af                                          ; $427a: $f1
	ld   de, $c81f                                   ; $427b: $11 $1f $c8
	rst  $38                                         ; $427e: $ff
	ld   sp, hl                                      ; $427f: $f9
	rst  $28                                         ; $4280: $ef
	ld   de, rAUD1LEN                                   ; $4281: $11 $11 $ff
	ld   c, a                                        ; $4284: $4f
	rst  $38                                         ; $4285: $ff
	cp   b                                           ; $4286: $b8
	db   $fc                                         ; $4287: $fc
	ld   de, $f51f                                   ; $4288: $11 $1f $f5
	rst  $28                                         ; $428b: $ef
	rst  $38                                         ; $428c: $ff
	ld   l, a                                        ; $428d: $6f
	pop  af                                          ; $428e: $f1
	ld   de, $ca4f                                   ; $428f: $11 $4f $ca
	rst  $38                                         ; $4292: $ff
	rst  $30                                         ; $4293: $f7
	rst  $38                                         ; $4294: $ff
	ld   de, rAUD1LEN                                   ; $4295: $11 $11 $ff
	adc  a                                           ; $4298: $8f
	rst  $38                                         ; $4299: $ff
	xor  [hl]                                        ; $429a: $ae
	push af                                          ; $429b: $f5
	ld   de, $f81f                                   ; $429c: $11 $1f $f8
	rst  $38                                         ; $429f: $ff
	ld   a, [$c1df]                                  ; $42a0: $fa $df $c1
	ld   de, $a98f                                   ; $42a3: $11 $8f $a9
	rst  $38                                         ; $42a6: $ff
	ld   a, [$11ff]                                  ; $42a7: $fa $ff $11
	ld   de, $4fff                                   ; $42aa: $11 $ff $4f
	rst  $38                                         ; $42ad: $ff
	cp   a                                           ; $42ae: $bf
	or   $11                                         ; $42af: $f6 $11
	rra                                              ; $42b1: $1f
	rst  $30                                         ; $42b2: $f7
	rst  $28                                         ; $42b3: $ef
	ei                                               ; $42b4: $fb
	rst  $38                                         ; $42b5: $ff
	ld   h, c                                        ; $42b6: $61
	ld   de, $ffff                                   ; $42b7: $11 $ff $ff
	rst  $38                                         ; $42ba: $ff
	rst  JumpTable                                         ; $42bb: $df
	db   $fc                                         ; $42bc: $fc
	ld   de, rAUD1LOW                                   ; $42bd: $11 $13 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42c0: $cf
	rst  $38                                         ; $42c1: $ff
	rst  $38                                         ; $42c2: $ff
	pop  bc                                          ; $42c3: $c1
	ld   de, $fa1f                                   ; $42c4: $11 $1f $fa
	rst  $38                                         ; $42c7: $ff
	cp   $ff                                         ; $42c8: $fe $ff
	ld   h, c                                        ; $42ca: $61
	ld   de, $bdff                                   ; $42cb: $11 $ff $bd
	rst  $38                                         ; $42ce: $ff
	rst  $38                                         ; $42cf: $ff
	rst  $30                                         ; $42d0: $f7
	ld   de, $fe17                                   ; $42d1: $11 $17 $fe
	sbc  a                                           ; $42d4: $9f
	rst  $38                                         ; $42d5: $ff
	rst  $38                                         ; $42d6: $ff
	or   c                                           ; $42d7: $b1
	ld   de, $f91f                                   ; $42d8: $11 $1f $f9
	xor  a                                           ; $42db: $af
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	ld   d, c                                        ; $42de: $51
	ld   de, $b7bf                                   ; $42df: $11 $bf $b7
	rst  $38                                         ; $42e2: $ff
	rst  $38                                         ; $42e3: $ff
	ld   a, [$1111]                                  ; $42e4: $fa $11 $11
	rst  $28                                         ; $42e7: $ef
	ld   a, d                                        ; $42e8: $7a
	rst  $38                                         ; $42e9: $ff
	rst  $38                                         ; $42ea: $ff
	sub  $11                                         ; $42eb: $d6 $11
	ld   d, $fa                                      ; $42ed: $16 $fa
	ld   c, a                                        ; $42ef: $4f
	rst  $38                                         ; $42f0: $ff
	cp   $b1                                         ; $42f1: $fe $b1
	ld   de, $f918                                   ; $42f3: $11 $18 $f9
	ld   l, a                                        ; $42f6: $6f
	rst  $38                                         ; $42f7: $ff
	db   $fd                                         ; $42f8: $fd
	ld   [hl], c                                     ; $42f9: $71
	ld   de, $934e                                   ; $42fa: $11 $4e $93
	rst  $38                                         ; $42fd: $ff
	rst  $38                                         ; $42fe: $ff
	ei                                               ; $42ff: $fb
	ld   de, $6d11                                   ; $4300: $11 $11 $6d
	add  a                                           ; $4303: $87
	rst  $38                                         ; $4304: $ff
	rst  $38                                         ; $4305: $ff
	ei                                               ; $4306: $fb
	ld   de, $7a13                                   ; $4307: $11 $13 $7a

jr_0ee_430a:
	ld   l, c                                        ; $430a: $69
	rst  JumpTable                                         ; $430b: $df
	rst  $38                                         ; $430c: $ff
	add  $11                                         ; $430d: $c6 $11
	ld   [de], a                                     ; $430f: $12
	cp   [hl]                                        ; $4310: $be
	jr   @+$01                                       ; $4311: $18 $ff

	rst  $38                                         ; $4313: $ff
	db   $d3                                         ; $4314: $d3
	ld   de, wResetSaveDataReturnState                                   ; $4315: $11 $17 $c9
	jr   @+$01                                       ; $4318: $18 $ff

	cp   $91                                         ; $431a: $fe $91
	ld   de, $f659                                   ; $431c: $11 $59 $f6
	add  hl, de                                      ; $431f: $19
	rst  $38                                         ; $4320: $ff
	rst  $38                                         ; $4321: $ff
	add  c                                           ; $4322: $81
	ld   de, $c668                                   ; $4323: $11 $68 $c6
	ld   a, [hl-]                                    ; $4326: $3a
	rst  $38                                         ; $4327: $ff
	rst  $38                                         ; $4328: $ff
	ld   h, c                                        ; $4329: $61
	inc  d                                           ; $432a: $14
	ld   a, b                                        ; $432b: $78
	or   l                                           ; $432c: $b5
	ld   c, c                                        ; $432d: $49
	rst  $38                                         ; $432e: $ff
	db   $fc                                         ; $432f: $fc
	ld   h, c                                        ; $4330: $61
	inc  de                                          ; $4331: $13
	sbc  e                                           ; $4332: $9b
	or   e                                           ; $4333: $b3
	ld   a, [hl-]                                    ; $4334: $3a
	rst  $38                                         ; $4335: $ff
	rst  $38                                         ; $4336: $ff
	ld   h, c                                        ; $4337: $61
	inc  de                                          ; $4338: $13
	res  6, l                                        ; $4339: $cb $b5
	ld   e, d                                        ; $433b: $5a
	rst  JumpTable                                         ; $433c: $df
	db   $dd                                         ; $433d: $dd
	sub  c                                           ; $433e: $91
	rla                                              ; $433f: $17
	cp   b                                           ; $4340: $b8
	add  [hl]                                        ; $4341: $86
	ld   h, a                                        ; $4342: $67
	cp   a                                           ; $4343: $bf
	ld   a, [$1351]                                  ; $4344: $fa $51 $13
	xor  $a6                                         ; $4347: $ee $a6
	jr   c, jr_0ee_430a                              ; $4349: $38 $bf

	call z, $13a1                                    ; $434b: $cc $a1 $13
	ret                                              ; $434e: $c9


	adc  c                                           ; $434f: $89
	ld   h, a                                        ; $4350: $67
	sbc  h                                           ; $4351: $9c
	cp   d                                           ; $4352: $ba
	or   l                                           ; $4353: $b5
	ld   [de], a                                     ; $4354: $12
	db   $db                                         ; $4355: $db
	sbc  c                                           ; $4356: $99
	jr   z, @-$65                                    ; $4357: $28 $99

	call $11d4                                       ; $4359: $cd $d4 $11
	call z, Call_0ee_4699                            ; $435c: $cc $99 $46
	ld   l, e                                        ; $435f: $6b
	sbc  $b5                                         ; $4360: $de $b5
	ld   de, $b87e                                   ; $4362: $11 $7e $b8
	ld   b, c                                        ; $4365: $41
	ld   a, h                                        ; $4366: $7c
	db   $ed                                         ; $4367: $ed
	ret  z                                           ; $4368: $c8

	ld   de, $c85e                                   ; $4369: $11 $5e $c8
	ld   d, h                                        ; $436c: $54
	ld   a, b                                        ; $436d: $78
	sbc  $b9                                         ; $436e: $de $b9
	ld   sp, $a97a                                   ; $4370: $31 $7a $a9
	add  [hl]                                        ; $4373: $86
	ld   b, a                                        ; $4374: $47
	cp   h                                           ; $4375: $bc
	ret  c                                           ; $4376: $d8

	ld   b, d                                        ; $4377: $42
	add  hl, de                                      ; $4378: $19
	reti                                             ; $4379: $d9


	ld   [hl], h                                     ; $437a: $74
	ld   a, d                                        ; $437b: $7a
	xor  d                                           ; $437c: $aa
	cp   d                                           ; $437d: $ba
	ld   [hl], h                                     ; $437e: $74
	ld   h, a                                        ; $437f: $67
	adc  b                                           ; $4380: $88
	ld   a, c                                        ; $4381: $79
	sbc  b                                           ; $4382: $98
	adc  c                                           ; $4383: $89
	cp   c                                           ; $4384: $b9
	ld   [hl], h                                     ; $4385: $74
	ld   e, c                                        ; $4386: $59
	sub  [hl]                                        ; $4387: $96
	adc  d                                           ; $4388: $8a
	sbc  b                                           ; $4389: $98
	ld   a, b                                        ; $438a: $78
	jp   hl                                          ; $438b: $e9


	ld   h, l                                        ; $438c: $65
	ld   c, d                                        ; $438d: $4a
	sub  a                                           ; $438e: $97
	xor  b                                           ; $438f: $a8
	adc  b                                           ; $4390: $88
	ld   a, b                                        ; $4391: $78
	cp   b                                           ; $4392: $b8
	ld   h, l                                        ; $4393: $65
	adc  c                                           ; $4394: $89
	sbc  b                                           ; $4395: $98
	ld   h, a                                        ; $4396: $67
	ld   l, d                                        ; $4397: $6a
	cp   c                                           ; $4398: $b9
	and  [hl]                                        ; $4399: $a6
	ld   d, [hl]                                     ; $439a: $56
	sbc  e                                           ; $439b: $9b
	cp   b                                           ; $439c: $b8
	ld   d, [hl]                                     ; $439d: $56
	ld   a, c                                        ; $439e: $79
	or   a                                           ; $439f: $b7
	add  a                                           ; $43a0: $87
	ld   h, a                                        ; $43a1: $67
	adc  d                                           ; $43a2: $8a
	sub  a                                           ; $43a3: $97
	ld   l, c                                        ; $43a4: $69
	xor  c                                           ; $43a5: $a9
	halt                                             ; $43a6: $76
	sbc  d                                           ; $43a7: $9a
	ld   h, [hl]                                     ; $43a8: $66
	adc  c                                           ; $43a9: $89
	sub  a                                           ; $43aa: $97
	sbc  d                                           ; $43ab: $9a
	add  a                                           ; $43ac: $87
	sub  a                                           ; $43ad: $97
	ld   a, c                                        ; $43ae: $79
	adc  c                                           ; $43af: $89
	ld   h, [hl]                                     ; $43b0: $66
	ld   a, c                                        ; $43b1: $79
	sbc  b                                           ; $43b2: $98
	sbc  b                                           ; $43b3: $98
	sub  a                                           ; $43b4: $97
	ld   h, a                                        ; $43b5: $67
	adc  b                                           ; $43b6: $88
	adc  c                                           ; $43b7: $89
	ld   a, b                                        ; $43b8: $78
	adc  c                                           ; $43b9: $89
	sub  a                                           ; $43ba: $97
	ld   l, c                                        ; $43bb: $69
	sbc  d                                           ; $43bc: $9a
	halt                                             ; $43bd: $76
	ld   [hl], a                                     ; $43be: $77
	sbc  c                                           ; $43bf: $99
	ld   a, d                                        ; $43c0: $7a
	sub  a                                           ; $43c1: $97
	adc  b                                           ; $43c2: $88
	sbc  b                                           ; $43c3: $98
	ld   l, b                                        ; $43c4: $68
	ld   a, c                                        ; $43c5: $79
	or   a                                           ; $43c6: $b7
	ld   a, b                                        ; $43c7: $78
	adc  b                                           ; $43c8: $88

Call_0ee_43c9:
	ld   l, c                                        ; $43c9: $69
	adc  c                                           ; $43ca: $89
	ld   [hl], l                                     ; $43cb: $75
	ld   a, b                                        ; $43cc: $78
	sbc  c                                           ; $43cd: $99
	sub  [hl]                                        ; $43ce: $96
	adc  c                                           ; $43cf: $89
	adc  b                                           ; $43d0: $88
	ld   [hl], a                                     ; $43d1: $77
	add  [hl]                                        ; $43d2: $86
	adc  c                                           ; $43d3: $89
	xor  b                                           ; $43d4: $a8
	adc  c                                           ; $43d5: $89
	add  a                                           ; $43d6: $87
	add  a                                           ; $43d7: $87
	adc  c                                           ; $43d8: $89
	add  a                                           ; $43d9: $87
	ld   [hl], a                                     ; $43da: $77
	adc  d                                           ; $43db: $8a
	xor  c                                           ; $43dc: $a9
	add  a                                           ; $43dd: $87
	ld   h, a                                        ; $43de: $67
	adc  c                                           ; $43df: $89
	adc  b                                           ; $43e0: $88
	add  a                                           ; $43e1: $87
	ld   [hl], a                                     ; $43e2: $77
	sbc  d                                           ; $43e3: $9a
	xor  b                                           ; $43e4: $a8
	ld   [hl], a                                     ; $43e5: $77
	ld   [hl], a                                     ; $43e6: $77
	ld   a, c                                        ; $43e7: $79
	and  a                                           ; $43e8: $a7
	ld   [hl], a                                     ; $43e9: $77
	adc  c                                           ; $43ea: $89
	sbc  c                                           ; $43eb: $99
	ld   [hl], a                                     ; $43ec: $77
	ld   h, a                                        ; $43ed: $67
	sbc  d                                           ; $43ee: $9a
	sub  a                                           ; $43ef: $97
	sbc  b                                           ; $43f0: $98
	ld   a, b                                        ; $43f1: $78
	sbc  b                                           ; $43f2: $98
	ld   h, a                                        ; $43f3: $67
	adc  c                                           ; $43f4: $89
	sbc  b                                           ; $43f5: $98
	ld   [hl], a                                     ; $43f6: $77
	adc  c                                           ; $43f7: $89
	sbc  c                                           ; $43f8: $99
	sub  a                                           ; $43f9: $97
	ld   [hl], a                                     ; $43fa: $77
	ld   a, c                                        ; $43fb: $79
	adc  b                                           ; $43fc: $88
	adc  c                                           ; $43fd: $89
	add  a                                           ; $43fe: $87
	adc  c                                           ; $43ff: $89
	adc  b                                           ; $4400: $88
	adc  b                                           ; $4401: $88
	ld   a, c                                        ; $4402: $79
	ld   a, c                                        ; $4403: $79
	sbc  c                                           ; $4404: $99
	add  a                                           ; $4405: $87
	ld   a, b                                        ; $4406: $78
	adc  b                                           ; $4407: $88
	ld   a, b                                        ; $4408: $78
	ld   [hl], a                                     ; $4409: $77
	adc  b                                           ; $440a: $88
	sbc  b                                           ; $440b: $98
	adc  b                                           ; $440c: $88
	adc  b                                           ; $440d: $88
	adc  b                                           ; $440e: $88
	ld   [hl], a                                     ; $440f: $77
	adc  c                                           ; $4410: $89
	sbc  b                                           ; $4411: $98
	sbc  b                                           ; $4412: $98
	ld   a, c                                        ; $4413: $79
	adc  b                                           ; $4414: $88
	adc  b                                           ; $4415: $88
	adc  b                                           ; $4416: $88
	ld   a, b                                        ; $4417: $78
	sbc  c                                           ; $4418: $99
	adc  c                                           ; $4419: $89
	adc  b                                           ; $441a: $88
	adc  b                                           ; $441b: $88
	sbc  b                                           ; $441c: $98
	adc  c                                           ; $441d: $89
	ld   a, b                                        ; $441e: $78
	sub  a                                           ; $441f: $97
	ld   a, b                                        ; $4420: $78
	sbc  c                                           ; $4421: $99
	add  a                                           ; $4422: $87
	add  a                                           ; $4423: $87
	adc  c                                           ; $4424: $89
	sbc  b                                           ; $4425: $98
	add  a                                           ; $4426: $87
	ld   a, b                                        ; $4427: $78
	adc  b                                           ; $4428: $88
	adc  b                                           ; $4429: $88
	sbc  b                                           ; $442a: $98
	sbc  b                                           ; $442b: $98
	sbc  b                                           ; $442c: $98
	add  a                                           ; $442d: $87
	adc  b                                           ; $442e: $88
	ld   [hl], a                                     ; $442f: $77
	adc  b                                           ; $4430: $88
	adc  b                                           ; $4431: $88
	adc  c                                           ; $4432: $89
	adc  b                                           ; $4433: $88
	adc  b                                           ; $4434: $88
	adc  b                                           ; $4435: $88
	ld   [hl], a                                     ; $4436: $77
	adc  b                                           ; $4437: $88
	ld   a, b                                        ; $4438: $78
	adc  c                                           ; $4439: $89
	adc  c                                           ; $443a: $89
	adc  b                                           ; $443b: $88
	adc  b                                           ; $443c: $88
	adc  b                                           ; $443d: $88
	adc  b                                           ; $443e: $88
	ld   [hl], a                                     ; $443f: $77
	adc  b                                           ; $4440: $88
	adc  b                                           ; $4441: $88
	add  a                                           ; $4442: $87
	adc  b                                           ; $4443: $88
	adc  b                                           ; $4444: $88
	adc  b                                           ; $4445: $88
	adc  b                                           ; $4446: $88
	adc  b                                           ; $4447: $88
	adc  b                                           ; $4448: $88
	add  a                                           ; $4449: $87
	ld   a, b                                        ; $444a: $78
	adc  b                                           ; $444b: $88
	adc  c                                           ; $444c: $89
	sbc  b                                           ; $444d: $98
	adc  b                                           ; $444e: $88
	adc  b                                           ; $444f: $88
	adc  b                                           ; $4450: $88
	adc  b                                           ; $4451: $88
	adc  b                                           ; $4452: $88
	adc  c                                           ; $4453: $89
	sbc  b                                           ; $4454: $98
	adc  b                                           ; $4455: $88
	adc  b                                           ; $4456: $88
	ld   a, b                                        ; $4457: $78
	ld   a, b                                        ; $4458: $78
	adc  b                                           ; $4459: $88
	adc  c                                           ; $445a: $89
	sbc  b                                           ; $445b: $98
	adc  b                                           ; $445c: $88
	adc  b                                           ; $445d: $88
	add  a                                           ; $445e: $87
	ld   a, b                                        ; $445f: $78
	adc  b                                           ; $4460: $88
	adc  b                                           ; $4461: $88
	sbc  b                                           ; $4462: $98
	adc  b                                           ; $4463: $88
	adc  b                                           ; $4464: $88
	adc  b                                           ; $4465: $88
	ld   [hl], a                                     ; $4466: $77
	adc  b                                           ; $4467: $88
	adc  c                                           ; $4468: $89
	adc  b                                           ; $4469: $88
	adc  b                                           ; $446a: $88
	adc  b                                           ; $446b: $88
	adc  b                                           ; $446c: $88
	ld   a, b                                        ; $446d: $78
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
	ld   de, $1111                                   ; $4498: $11 $11 $11
	ld   de, $1111                                   ; $449b: $11 $11 $11
	ld   de, $1111                                   ; $449e: $11 $11 $11
	ld   de, $1111                                   ; $44a1: $11 $11 $11
	ld   de, $1111                                   ; $44a4: $11 $11 $11
	ld   de, $1111                                   ; $44a7: $11 $11 $11
	ld   de, $1111                                   ; $44aa: $11 $11 $11
	ld   de, $1111                                   ; $44ad: $11 $11 $11
	ld   de, $1111                                   ; $44b0: $11 $11 $11
	ld   de, $1111                                   ; $44b3: $11 $11 $11
	ld   de, $1111                                   ; $44b6: $11 $11 $11
	ld   de, $1111                                   ; $44b9: $11 $11 $11
	ld   de, $1111                                   ; $44bc: $11 $11 $11
	ld   de, $1111                                   ; $44bf: $11 $11 $11
	ld   de, $1111                                   ; $44c2: $11 $11 $11
	ld   de, $4800                                   ; $44c5: $11 $00 $48
	ld   de, $1111                                   ; $44c8: $11 $11 $11
	ld   de, $1111                                   ; $44cb: $11 $11 $11
	ld   de, $1111                                   ; $44ce: $11 $11 $11
	ld   de, $5413                                   ; $44d1: $11 $13 $54
	ld   d, h                                        ; $44d4: $54
	ld   d, h                                        ; $44d5: $54
	ld   b, c                                        ; $44d6: $41
	rra                                              ; $44d7: $1f
	rst  $38                                         ; $44d8: $ff
	pop  af                                          ; $44d9: $f1
	ld   de, $1511                                   ; $44da: $11 $11 $15
	ld   b, c                                        ; $44dd: $41
	ld   de, $dd1c                                   ; $44de: $11 $1c $dd
	call c, $d1dd                                    ; $44e1: $dc $dd $d1
	ld   de, $1111                                   ; $44e4: $11 $11 $11
	ld   de, $1111                                   ; $44e7: $11 $11 $11
	ld   de, $1111                                   ; $44ea: $11 $11 $11
	ld   de, $1111                                   ; $44ed: $11 $11 $11
	ld   de, $5411                                   ; $44f0: $11 $11 $54
	ld   b, h                                        ; $44f3: $44
	ld   b, l                                        ; $44f4: $45
	ld   de, $5454                                   ; $44f5: $11 $54 $54
	ld   h, a                                        ; $44f8: $67
	ld   [hl], d                                     ; $44f9: $72
	ld   de, $1111                                   ; $44fa: $11 $11 $11
	ld   de, $1112                                   ; $44fd: $11 $12 $11
	ld   [de], a                                     ; $4500: $12
	ld   de, $1111                                   ; $4501: $11 $11 $11
	ld   h, [hl]                                     ; $4504: $66
	halt                                             ; $4505: $76
	dec  h                                           ; $4506: $25
	ld   de, $8888                                   ; $4507: $11 $88 $88
	sbc  b                                           ; $450a: $98
	sbc  c                                           ; $450b: $99
	ld   a, b                                        ; $450c: $78
	adc  b                                           ; $450d: $88
	adc  b                                           ; $450e: $88
	adc  d                                           ; $450f: $8a
	adc  c                                           ; $4510: $89
	sbc  b                                           ; $4511: $98
	adc  d                                           ; $4512: $8a
	xor  b                                           ; $4513: $a8
	sbc  c                                           ; $4514: $99
	ld   [hl], a                                     ; $4515: $77
	ld   a, c                                        ; $4516: $79
	sub  a                                           ; $4517: $97
	ld   [hl], a                                     ; $4518: $77
	sbc  d                                           ; $4519: $9a
	xor  c                                           ; $451a: $a9
	xor  b                                           ; $451b: $a8
	ld   a, b                                        ; $451c: $78
	sub  a                                           ; $451d: $97
	sbc  b                                           ; $451e: $98
	ld   a, c                                        ; $451f: $79
	halt                                             ; $4520: $76
	ld   a, b                                        ; $4521: $78
	ld   a, b                                        ; $4522: $78
	halt                                             ; $4523: $76
	sbc  b                                           ; $4524: $98
	halt                                             ; $4525: $76
	ld   a, b                                        ; $4526: $78
	halt                                             ; $4527: $76
	ld   h, a                                        ; $4528: $67
	ld   h, a                                        ; $4529: $67
	ld   h, a                                        ; $452a: $67
	ld   [hl], a                                     ; $452b: $77
	sbc  b                                           ; $452c: $98
	ld   [hl], a                                     ; $452d: $77
	sbc  b                                           ; $452e: $98
	adc  b                                           ; $452f: $88
	ld   [hl], a                                     ; $4530: $77
	add  [hl]                                        ; $4531: $86
	halt                                             ; $4532: $76
	ld   h, [hl]                                     ; $4533: $66
	ld   [hl], a                                     ; $4534: $77
	ld   h, [hl]                                     ; $4535: $66
	ld   d, [hl]                                     ; $4536: $56
	ld   d, l                                        ; $4537: $55
	ld   d, l                                        ; $4538: $55
	ld   d, l                                        ; $4539: $55
	ld   d, [hl]                                     ; $453a: $56
	ld   a, b                                        ; $453b: $78
	sbc  c                                           ; $453c: $99
	xor  h                                           ; $453d: $ac
	call z, $eecc                                    ; $453e: $cc $cc $ee
	call c, $97bc                                    ; $4541: $dc $bc $97
	ld   h, [hl]                                     ; $4544: $66
	ld   b, e                                        ; $4545: $43
	ld   d, e                                        ; $4546: $53
	ld   de, $1111                                   ; $4547: $11 $11 $11
	ld   de, $7e13                                   ; $454a: $11 $13 $7e
	rst  $38                                         ; $454d: $ff
	rst  $38                                         ; $454e: $ff
	rst  $38                                         ; $454f: $ff
	rst  $38                                         ; $4550: $ff
	rst  $38                                         ; $4551: $ff
	db   $fc                                         ; $4552: $fc
	cp   b                                           ; $4553: $b8
	ld   [hl], e                                     ; $4554: $73
	ld   de, $1111                                   ; $4555: $11 $11 $11
	ld   de, $1111                                   ; $4558: $11 $11 $11
	ld   [de], a                                     ; $455b: $12
	adc  l                                           ; $455c: $8d
	rst  $38                                         ; $455d: $ff
	rst  $38                                         ; $455e: $ff
	rst  $38                                         ; $455f: $ff
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
	rst  $38                                         ; $4562: $ff
	rst  $10                                         ; $4563: $d7

Jump_0ee_4564:
	ld   d, c                                        ; $4564: $51
	ld   de, $1111                                   ; $4565: $11 $11 $11
	ld   de, $1111                                   ; $4568: $11 $11 $11
	ld   de, $ffdf                                   ; $456b: $11 $df $ff
	rst  $38                                         ; $456e: $ff
	rst  $38                                         ; $456f: $ff
	rst  $38                                         ; $4570: $ff
	rst  $38                                         ; $4571: $ff
	db   $ed                                         ; $4572: $ed
	or   [hl]                                        ; $4573: $b6
	ld   hl, $1111                                   ; $4574: $21 $11 $11
	ld   de, $1111                                   ; $4577: $11 $11 $11
	ld   de, $8b13                                   ; $457a: $11 $13 $8b
	rst  $38                                         ; $457d: $ff
	rst  $38                                         ; $457e: $ff
	rst  $38                                         ; $457f: $ff
	rst  $38                                         ; $4580: $ff
	rst  $38                                         ; $4581: $ff
	rst  $38                                         ; $4582: $ff
	reti                                             ; $4583: $d9


	ld   sp, $1111                                   ; $4584: $31 $11 $11
	ld   de, $1111                                   ; $4587: $11 $11 $11
	ld   [de], a                                     ; $458a: $12
	cp   h                                           ; $458b: $bc
	ld   a, [hl]                                     ; $458c: $7e
	rst  $38                                         ; $458d: $ff
	rst  $38                                         ; $458e: $ff
	rst  $38                                         ; $458f: $ff
	rst  $38                                         ; $4590: $ff
	rst  $38                                         ; $4591: $ff
	rst  $38                                         ; $4592: $ff
	ld   a, [$3142]                                  ; $4593: $fa $42 $31
	ld   de, $1111                                   ; $4596: $11 $11 $11
	ld   de, $cf16                                   ; $4599: $11 $16 $cf
	rst  $38                                         ; $459c: $ff
	rst  $38                                         ; $459d: $ff
	rst  $38                                         ; $459e: $ff
	rst  $38                                         ; $459f: $ff
	rst  $38                                         ; $45a0: $ff
	sbc  b                                           ; $45a1: $98
	sub  a                                           ; $45a2: $97
	ld   hl, $3311                                   ; $45a3: $21 $11 $33
	inc  sp                                          ; $45a6: $33
	ld   hl, $1111                                   ; $45a7: $21 $11 $11
	ld   de, $ff7e                                   ; $45aa: $11 $7e $ff
	rst  $38                                         ; $45ad: $ff
	rst  $38                                         ; $45ae: $ff
	rst  $38                                         ; $45af: $ff
	rst  JumpTable                                         ; $45b0: $df
	rst  $38                                         ; $45b1: $ff
	add  sp, $11                                     ; $45b2: $e8 $11
	ld   de, $1111                                   ; $45b4: $11 $11 $11
	ld   de, $1111                                   ; $45b7: $11 $11 $11
	rst  $28                                         ; $45ba: $ef
	rst  $38                                         ; $45bb: $ff
	rst  $38                                         ; $45bc: $ff
	rst  $38                                         ; $45bd: $ff
	xor  [hl]                                        ; $45be: $ae
	rst  $38                                         ; $45bf: $ff
	ei                                               ; $45c0: $fb
	sbc  b                                           ; $45c1: $98
	ld   hl, $1111                                   ; $45c2: $21 $11 $11
	ld   de, $1111                                   ; $45c5: $11 $11 $11
	inc  d                                           ; $45c8: $14
	cp   [hl]                                        ; $45c9: $be
	rst  $38                                         ; $45ca: $ff
	rst  $38                                         ; $45cb: $ff
	rst  $38                                         ; $45cc: $ff
	rst  $38                                         ; $45cd: $ff
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	rst  $38                                         ; $45d0: $ff
	ld   a, [$0251]                                  ; $45d1: $fa $51 $02
	ld   de, $1111                                   ; $45d4: $11 $11 $11
	ld   de, $ff16                                   ; $45d7: $11 $16 $ff
	rst  $38                                         ; $45da: $ff
	rst  $38                                         ; $45db: $ff
	rst  $38                                         ; $45dc: $ff
	reti                                             ; $45dd: $d9


	cp   l                                           ; $45de: $bd
	adc  l                                           ; $45df: $8d
	bit  4, c                                        ; $45e0: $cb $61
	ld   de, $1162                                   ; $45e2: $11 $62 $11
	ld   de, $1111                                   ; $45e5: $11 $11 $11
	ccf                                              ; $45e8: $3f
	rst  $38                                         ; $45e9: $ff
	rst  $38                                         ; $45ea: $ff
	rst  $38                                         ; $45eb: $ff
	ei                                               ; $45ec: $fb
	adc  $ff                                         ; $45ed: $ce $ff
	ld   hl, sp+$21                                  ; $45ef: $f8 $21
	ld   de, $1111                                   ; $45f1: $11 $11 $11
	ld   de, $1811                                   ; $45f4: $11 $11 $18
	ld   sp, hl                                      ; $45f7: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45f8: $cf
	rst  $38                                         ; $45f9: $ff
	rst  $38                                         ; $45fa: $ff
	rst  $28                                         ; $45fb: $ef
	rst  $38                                         ; $45fc: $ff
	rst  $38                                         ; $45fd: $ff
	rst  $38                                         ; $45fe: $ff
	sub  $41                                         ; $45ff: $d6 $41
	ld   de, $1111                                   ; $4601: $11 $11 $11
	ld   de, $ff19                                   ; $4604: $11 $19 $ff
	rst  $38                                         ; $4607: $ff
	rst  $38                                         ; $4608: $ff
	ei                                               ; $4609: $fb
	dec  d                                           ; $460a: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $460b: $cf
	rst  $38                                         ; $460c: $ff
	add  l                                           ; $460d: $85
	ld   d, c                                        ; $460e: $51
	ld   sp, $1111                                   ; $460f: $31 $11 $11
	ld   de, $4b11                                   ; $4612: $11 $11 $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4615: $cf
	rst  $38                                         ; $4616: $ff
	rst  $38                                         ; $4617: $ff
	db   $fc                                         ; $4618: $fc
	sbc  [hl]                                        ; $4619: $9e
	rst  $38                                         ; $461a: $ff
	cp   d                                           ; $461b: $ba
	call z, $1191                                    ; $461c: $cc $91 $11
	ld   de, $1111                                   ; $461f: $11 $11 $11
	rla                                              ; $4622: $17
	rst  $38                                         ; $4623: $ff
	rst  $38                                         ; $4624: $ff
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	pop  af                                          ; $4627: $f1
	ld   a, l                                        ; $4628: $7d
	rst  $38                                         ; $4629: $ff
	rst  $30                                         ; $462a: $f7
	inc  de                                          ; $462b: $13
	ld   [hl+], a                                    ; $462c: $22
	ld   de, $1111                                   ; $462d: $11 $11 $11
	ld   de, $ff4c                                   ; $4630: $11 $4c $ff
	rst  $38                                         ; $4633: $ff
	rst  $38                                         ; $4634: $ff
	ldh  a, [c]                                      ; $4635: $f2
	ld   [hl], a                                     ; $4636: $77
	rst  $38                                         ; $4637: $ff
	sbc  $4a                                         ; $4638: $de $4a
	ld   [hl], c                                     ; $463a: $71
	ld   de, $1111                                   ; $463b: $11 $11 $11
	ld   de, $ff1f                                   ; $463e: $11 $1f $ff
	rst  $38                                         ; $4641: $ff
	rst  $38                                         ; $4642: $ff
	rst  $10                                         ; $4643: $d7
	xor  h                                           ; $4644: $ac
	rst  $38                                         ; $4645: $ff
	db   $fc                                         ; $4646: $fc
	and  l                                           ; $4647: $a5
	ld   de, $1111                                   ; $4648: $11 $11 $11
	ld   de, $1b11                                   ; $464b: $11 $11 $1b
	rst  $38                                         ; $464e: $ff
	rst  $38                                         ; $464f: $ff
	rst  $38                                         ; $4650: $ff
	rst  $38                                         ; $4651: $ff
	cp   a                                           ; $4652: $bf
	cp   [hl]                                        ; $4653: $be
	rst  $38                                         ; $4654: $ff
	or   $31                                         ; $4655: $f6 $31
	ld   de, $1111                                   ; $4657: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $465a: $11 $12 $ff
	rst  $38                                         ; $465d: $ff
	rst  $38                                         ; $465e: $ff
	rst  $38                                         ; $465f: $ff
	sub  h                                           ; $4660: $94
	adc  h                                           ; $4661: $8c
	rst  $38                                         ; $4662: $ff
	jp   z, $1111                                    ; $4663: $ca $11 $11

	ld   de, $1111                                   ; $4666: $11 $11 $11
	inc  de                                          ; $4669: $13
	rst  $38                                         ; $466a: $ff
	rst  $38                                         ; $466b: $ff
	rst  $38                                         ; $466c: $ff
	rst  $38                                         ; $466d: $ff
	or   h                                           ; $466e: $b4
	sbc  a                                           ; $466f: $9f
	rst  $38                                         ; $4670: $ff
	and  c                                           ; $4671: $a1
	ld   b, e                                        ; $4672: $43
	ld   de, $1111                                   ; $4673: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $4676: $11 $14 $ff
	rst  $38                                         ; $4679: $ff
	rst  $38                                         ; $467a: $ff
	cp   $b4                                         ; $467b: $fe $b4
	rst  $38                                         ; $467d: $ff
	rst  $38                                         ; $467e: $ff
	ld   [hl], l                                     ; $467f: $75
	ld   de, $1111                                   ; $4680: $11 $11 $11
	ld   de, $1911                                   ; $4683: $11 $11 $19
	rst  $38                                         ; $4686: $ff
	rst  $38                                         ; $4687: $ff
	rst  $38                                         ; $4688: $ff
	db   $fd                                         ; $4689: $fd
	sbc  [hl]                                        ; $468a: $9e
	rst  $38                                         ; $468b: $ff
	rst  $38                                         ; $468c: $ff
	jp   $1111                                       ; $468d: $c3 $11 $11


	ld   de, $1111                                   ; $4690: $11 $11 $11
	rst  JumpTable                                         ; $4693: $df
	rst  $38                                         ; $4694: $ff
	rst  $38                                         ; $4695: $ff
	rst  $38                                         ; $4696: $ff
	res  3, [hl]                                     ; $4697: $cb $9e

Call_0ee_4699:
	rst  $38                                         ; $4699: $ff
	cp   $41                                         ; $469a: $fe $41
	ld   de, $1111                                   ; $469c: $11 $11 $11
	ld   de, $8f11                                   ; $469f: $11 $11 $8f
	rst  $38                                         ; $46a2: $ff
	rst  $38                                         ; $46a3: $ff
	rst  $28                                         ; $46a4: $ef
	cp   l                                           ; $46a5: $bd
	db   $dd                                         ; $46a6: $dd
	rst  $38                                         ; $46a7: $ff
	db   $f4                                         ; $46a8: $f4
	ld   hl, $1113                                   ; $46a9: $21 $13 $11
	ld   de, $1411                                   ; $46ac: $11 $11 $14
	rst  $38                                         ; $46af: $ff
	rst  $38                                         ; $46b0: $ff
	cp   $ff                                         ; $46b1: $fe $ff
	and  a                                           ; $46b3: $a7
	cp   a                                           ; $46b4: $bf
	rst  $38                                         ; $46b5: $ff
	add  c                                           ; $46b6: $81
	ld   de, $1111                                   ; $46b7: $11 $11 $11
	ld   de, $1f11                                   ; $46ba: $11 $11 $1f
	rst  $38                                         ; $46bd: $ff
	rst  $38                                         ; $46be: $ff
	rst  $38                                         ; $46bf: $ff
	di                                               ; $46c0: $f3
	xor  l                                           ; $46c1: $ad
	rst  JumpTable                                         ; $46c2: $df
	rst  $38                                         ; $46c3: $ff
	sub  c                                           ; $46c4: $91
	ld   de, $1111                                   ; $46c5: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $46c8: $11 $11 $ff
	rst  $38                                         ; $46cb: $ff
	rst  $38                                         ; $46cc: $ff
	rst  $38                                         ; $46cd: $ff
	sub  a                                           ; $46ce: $97
	sbc  a                                           ; $46cf: $9f
	rst  $38                                         ; $46d0: $ff
	ld   a, [$1131]                                  ; $46d1: $fa $31 $11
	ld   de, $1111                                   ; $46d4: $11 $11 $11
	ld   d, $ff                                      ; $46d7: $16 $ff
	rst  $38                                         ; $46d9: $ff
	rst  $38                                         ; $46da: $ff
	cp   $2b                                         ; $46db: $fe $2b
	rst  $38                                         ; $46dd: $ff
	rst  $38                                         ; $46de: $ff
	xor  b                                           ; $46df: $a8
	ld   de, $1111                                   ; $46e0: $11 $11 $11
	ld   de, $8f11                                   ; $46e3: $11 $11 $8f
	rst  $38                                         ; $46e6: $ff
	rst  $38                                         ; $46e7: $ff
	cp   $b3                                         ; $46e8: $fe $b3
	ld   l, l                                        ; $46ea: $6d
	rst  $38                                         ; $46eb: $ff
	ei                                               ; $46ec: $fb
	ld   hl, $1111                                   ; $46ed: $21 $11 $11
	ld   de, $1911                                   ; $46f0: $11 $11 $19
	rst  $38                                         ; $46f3: $ff
	rst  $38                                         ; $46f4: $ff
	rst  $38                                         ; $46f5: $ff
	push af                                          ; $46f6: $f5
	ld   a, b                                        ; $46f7: $78
	xor  a                                           ; $46f8: $af
	rst  $38                                         ; $46f9: $ff
	call nc, $1111                                   ; $46fa: $d4 $11 $11
	ld   de, $1111                                   ; $46fd: $11 $11 $11
	ld   c, a                                        ; $4700: $4f
	rst  $38                                         ; $4701: $ff
	rst  $38                                         ; $4702: $ff
	rst  $38                                         ; $4703: $ff
	or   h                                           ; $4704: $b4
	ld   l, d                                        ; $4705: $6a
	rst  $38                                         ; $4706: $ff
	db   $fd                                         ; $4707: $fd
	ld   d, c                                        ; $4708: $51
	ld   de, $1111                                   ; $4709: $11 $11 $11
	ld   de, $ff1a                                   ; $470c: $11 $1a $ff
	rst  $38                                         ; $470f: $ff
	rst  $38                                         ; $4710: $ff
	ld   sp, hl                                      ; $4711: $f9
	ld   e, c                                        ; $4712: $59
	adc  a                                           ; $4713: $8f
	rst  $38                                         ; $4714: $ff
	db   $e4                                         ; $4715: $e4
	ld   de, $1111                                   ; $4716: $11 $11 $11
	ld   de, $6f11                                   ; $4719: $11 $11 $6f
	rst  $38                                         ; $471c: $ff
	rst  $38                                         ; $471d: $ff
	ld   a, [$3d88]                                  ; $471e: $fa $88 $3d
	rst  $38                                         ; $4721: $ff
	cp   $21                                         ; $4722: $fe $21
	ld   de, $1111                                   ; $4724: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $4727: $11 $14 $ff
	rst  $38                                         ; $472a: $ff
	rst  $38                                         ; $472b: $ff
	pop  af                                          ; $472c: $f1
	cp   b                                           ; $472d: $b8
	sbc  a                                           ; $472e: $9f
	rst  $38                                         ; $472f: $ff
	and  $11                                         ; $4730: $e6 $11
	ld   de, $1111                                   ; $4732: $11 $11 $11
	ld   de, $ff8f                                   ; $4735: $11 $8f $ff
	rst  $38                                         ; $4738: $ff
	cp   $f7                                         ; $4739: $fe $f7
	adc  d                                           ; $473b: $8a
	rst  $38                                         ; $473c: $ff
	ld   hl, sp+$44                                  ; $473d: $f8 $44
	ld   de, $1111                                   ; $473f: $11 $11 $11
	ld   de, $ff2f                                   ; $4742: $11 $2f $ff
	rst  $38                                         ; $4745: $ff
	rst  $38                                         ; $4746: $ff
	sbc  $93                                         ; $4747: $de $93
	rst  JumpTable                                         ; $4749: $df
	rst  $38                                         ; $474a: $ff
	and  l                                           ; $474b: $a5
	ld   sp, $1111                                   ; $474c: $31 $11 $11
	ld   de, $bf11                                   ; $474f: $11 $11 $bf
	rst  $38                                         ; $4752: $ff
	rst  $38                                         ; $4753: $ff
	rst  $38                                         ; $4754: $ff
	sbc  h                                           ; $4755: $9c
	ld   l, e                                        ; $4756: $6b
	rst  $38                                         ; $4757: $ff
	cp   $61                                         ; $4758: $fe $61
	ld   de, $1111                                   ; $475a: $11 $11 $11
	ld   de, $ff18                                   ; $475d: $11 $18 $ff
	rst  $38                                         ; $4760: $ff
	rst  $38                                         ; $4761: $ff
	ld   a, [$df4c]                                  ; $4762: $fa $4c $df
	rst  $38                                         ; $4765: $ff
	db   $e4                                         ; $4766: $e4
	ld   de, $1111                                   ; $4767: $11 $11 $11
	ld   de, $9f11                                   ; $476a: $11 $11 $9f
	rst  $38                                         ; $476d: $ff
	rst  $38                                         ; $476e: $ff
	db   $fc                                         ; $476f: $fc
	push hl                                          ; $4770: $e5
	cp   a                                           ; $4771: $bf
	rst  $38                                         ; $4772: $ff
	jp   hl                                          ; $4773: $e9


	ld   b, c                                        ; $4774: $41
	ld   de, $1111                                   ; $4775: $11 $11 $11
	ld   de, $ff1d                                   ; $4778: $11 $1d $ff
	rst  $38                                         ; $477b: $ff
	rst  $38                                         ; $477c: $ff
	sbc  c                                           ; $477d: $99
	xor  l                                           ; $477e: $ad
	rst  $28                                         ; $477f: $ef
	rst  $38                                         ; $4780: $ff
	or   c                                           ; $4781: $b1
	ld   de, $1111                                   ; $4782: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4785: $11 $11 $ff
	rst  $38                                         ; $4788: $ff
	rst  $38                                         ; $4789: $ff
	ld   hl, sp-$45                                  ; $478a: $f8 $bb
	cp   a                                           ; $478c: $bf
	rst  $38                                         ; $478d: $ff
	rst  $30                                         ; $478e: $f7
	ld   de, $1111                                   ; $478f: $11 $11 $11
	ld   de, $8f11                                   ; $4792: $11 $11 $8f
	rst  $38                                         ; $4795: $ff
	rst  $38                                         ; $4796: $ff
	rst  $38                                         ; $4797: $ff
	cp   h                                           ; $4798: $bc
	ret                                              ; $4799: $c9


	rst  $38                                         ; $479a: $ff
	db   $fc                                         ; $479b: $fc
	ld   hl, $1111                                   ; $479c: $21 $11 $11
	ld   de, $1a11                                   ; $479f: $11 $11 $1a
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	rst  $38                                         ; $47a4: $ff
	ld   sp, hl                                      ; $47a5: $f9
	db   $ec                                         ; $47a6: $ec
	cp   a                                           ; $47a7: $bf
	cp   $a3                                         ; $47a8: $fe $a3
	ld   de, $1111                                   ; $47aa: $11 $11 $11
	ld   de, $af11                                   ; $47ad: $11 $11 $af
	rst  $38                                         ; $47b0: $ff
	rst  $38                                         ; $47b1: $ff
	cp   $9e                                         ; $47b2: $fe $9e
	xor  [hl]                                        ; $47b4: $ae
	rst  JumpTable                                         ; $47b5: $df
	ld   [$1131], a                                  ; $47b6: $ea $31 $11
	ld   de, $1111                                   ; $47b9: $11 $11 $11
	ccf                                              ; $47bc: $3f
	rst  $38                                         ; $47bd: $ff
	rst  $38                                         ; $47be: $ff
	rst  $38                                         ; $47bf: $ff
	cp   c                                           ; $47c0: $b9
	xor  d                                           ; $47c1: $aa
	rst  $28                                         ; $47c2: $ef
	rst  $38                                         ; $47c3: $ff
	add  c                                           ; $47c4: $81
	ld   de, $1111                                   ; $47c5: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $47c8: $11 $14 $ff
	rst  $38                                         ; $47cb: $ff
	rst  $38                                         ; $47cc: $ff
	db   $fc                                         ; $47cd: $fc
	call z, $ffce                                    ; $47ce: $cc $ce $ff
	cp   c                                           ; $47d1: $b9
	ld   de, $1111                                   ; $47d2: $11 $11 $11
	ld   de, $3f11                                   ; $47d5: $11 $11 $3f
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	rst  $38                                         ; $47da: $ff
	sbc  h                                           ; $47db: $9c
	adc  $df                                         ; $47dc: $ce $df
	db   $fc                                         ; $47de: $fc
	ld   sp, $1111                                   ; $47df: $31 $11 $11
	ld   de, $5e11                                   ; $47e2: $11 $11 $5e
	rst  $38                                         ; $47e5: $ff
	rst  $38                                         ; $47e6: $ff
	rst  $38                                         ; $47e7: $ff
	ei                                               ; $47e8: $fb
	ld   a, e                                        ; $47e9: $7b
	cp   $fd                                         ; $47ea: $fe $fd
	and  h                                           ; $47ec: $a4
	ld   de, $1111                                   ; $47ed: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $47f0: $11 $11 $ff
	rst  $38                                         ; $47f3: $ff
	rst  $38                                         ; $47f4: $ff
	db   $fc                                         ; $47f5: $fc
	res  5, [hl]                                     ; $47f6: $cb $ae
	rst  $38                                         ; $47f8: $ff
	ret  c                                           ; $47f9: $d8

	ld   de, $1111                                   ; $47fa: $11 $11 $11
	ld   de, $2f11                                   ; $47fd: $11 $11 $2f
	rst  $38                                         ; $4800: $ff
	rst  $38                                         ; $4801: $ff
	rst  $38                                         ; $4802: $ff
	adc  $b8                                         ; $4803: $ce $b8
	rst  $38                                         ; $4805: $ff
	db   $dd                                         ; $4806: $dd
	add  c                                           ; $4807: $81
	ld   de, $1111                                   ; $4808: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $480b: $11 $14 $ff
	rst  $38                                         ; $480e: $ff
	rst  $38                                         ; $480f: $ff
	ld   a, [$9edb]                                  ; $4810: $fa $db $9e
	rst  $38                                         ; $4813: $ff
	ret  z                                           ; $4814: $c8

	ld   sp, $1111                                   ; $4815: $31 $11 $11
	ld   de, $1f11                                   ; $4818: $11 $11 $1f
	rst  $38                                         ; $481b: $ff
	rst  $38                                         ; $481c: $ff
	rst  $38                                         ; $481d: $ff
	sbc  h                                           ; $481e: $9c
	cp   b                                           ; $481f: $b8
	rst  JumpTable                                         ; $4820: $df
	db   $fd                                         ; $4821: $fd
	ld   [hl], c                                     ; $4822: $71
	ld   de, $1111                                   ; $4823: $11 $11 $11
	ld   de, $ff28                                   ; $4826: $11 $28 $ff
	rst  $38                                         ; $4829: $ff
	rst  $38                                         ; $482a: $ff
	cp   $8a                                         ; $482b: $fe $8a
	cp   [hl]                                        ; $482d: $be
	db   $ed                                         ; $482e: $ed
	jp   hl                                          ; $482f: $e9


	ld   de, $1111                                   ; $4830: $11 $11 $11
	ld   de, $af12                                   ; $4833: $11 $12 $af
	rst  $38                                         ; $4836: $ff
	rst  $38                                         ; $4837: $ff
	rst  $38                                         ; $4838: $ff
	ld   hl, sp-$54                                  ; $4839: $f8 $ac
	db   $eb                                         ; $483b: $eb
	db   $dd                                         ; $483c: $dd
	sub  d                                           ; $483d: $92
	ld   de, $1111                                   ; $483e: $11 $11 $11
	ld   de, $ef19                                   ; $4841: $11 $19 $ef
	rst  $38                                         ; $4844: $ff
	rst  $38                                         ; $4845: $ff
	rst  $38                                         ; $4846: $ff
	cp   b                                           ; $4847: $b8
	cp   h                                           ; $4848: $bc
	call z, Call_0ee_51cc                            ; $4849: $cc $cc $51
	ld   de, $1111                                   ; $484c: $11 $11 $11
	ld   de, $ff3f                                   ; $484f: $11 $3f $ff
	rst  $38                                         ; $4852: $ff
	rst  $38                                         ; $4853: $ff
	rst  $38                                         ; $4854: $ff
	xor  c                                           ; $4855: $a9
	xor  a                                           ; $4856: $af
	jp   z, $21da                                    ; $4857: $ca $da $21

	ld   de, $1111                                   ; $485a: $11 $11 $11
	ld   de, $ffff                                   ; $485d: $11 $ff $ff
	rst  $38                                         ; $4860: $ff
	rst  $38                                         ; $4861: $ff
	ei                                               ; $4862: $fb
	adc  h                                           ; $4863: $8c
	call c, $d6dc                                    ; $4864: $dc $dc $d6
	ld   de, $1111                                   ; $4867: $11 $11 $11
	ld   de, $ff16                                   ; $486a: $11 $16 $ff
	rst  $38                                         ; $486d: $ff
	rst  $38                                         ; $486e: $ff
	rst  $38                                         ; $486f: $ff
	reti                                             ; $4870: $d9


	xor  c                                           ; $4871: $a9
	cp   [hl]                                        ; $4872: $be
	db   $ec                                         ; $4873: $ec
	or   l                                           ; $4874: $b5
	ld   de, $1111                                   ; $4875: $11 $11 $11
	ld   de, $ff1a                                   ; $4878: $11 $1a $ff
	rst  $38                                         ; $487b: $ff
	rst  $38                                         ; $487c: $ff
	rst  $38                                         ; $487d: $ff
	rst  ToBoot                                         ; $487e: $c7
	cp   d                                           ; $487f: $ba
	adc  $dc                                         ; $4880: $ce $dc
	or   e                                           ; $4882: $b3
	ld   de, $1111                                   ; $4883: $11 $11 $11
	ld   de, $ff1c                                   ; $4886: $11 $1c $ff
	rst  $38                                         ; $4889: $ff
	rst  $38                                         ; $488a: $ff
	rst  $38                                         ; $488b: $ff
	cp   b                                           ; $488c: $b8
	xor  d                                           ; $488d: $aa
	cp   [hl]                                        ; $488e: $be
	db   $dd                                         ; $488f: $dd
	or   [hl]                                        ; $4890: $b6
	ld   b, c                                        ; $4891: $41
	ld   de, $1111                                   ; $4892: $11 $11 $11
	ld   d, $ff                                      ; $4895: $16 $ff
	rst  $38                                         ; $4897: $ff
	rst  $38                                         ; $4898: $ff
	cp   $e8                                         ; $4899: $fe $e8
	adc  e                                           ; $489b: $8b
	cp   h                                           ; $489c: $bc
	db   $fd                                         ; $489d: $fd
	jp   c, $1162                                    ; $489e: $da $62 $11

	ld   de, $1211                                   ; $48a1: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a4: $cf
	rst  $38                                         ; $48a5: $ff
	rst  $38                                         ; $48a6: $ff
	rst  $38                                         ; $48a7: $ff
	res  1, c                                        ; $48a8: $cb $89
	sbc  e                                           ; $48aa: $9b
	db   $ed                                         ; $48ab: $ed
	db   $ed                                         ; $48ac: $ed
	or   a                                           ; $48ad: $b7
	ld   de, $1111                                   ; $48ae: $11 $11 $11
	ld   de, $ff3d                                   ; $48b1: $11 $3d $ff
	rst  $38                                         ; $48b4: $ff
	rst  $38                                         ; $48b5: $ff
	ld   a, [$7cca]                                  ; $48b6: $fa $ca $7c
	cp   [hl]                                        ; $48b9: $be
	rst  $28                                         ; $48ba: $ef
	cp   $c7                                         ; $48bb: $fe $c7
	ld   de, $1111                                   ; $48bd: $11 $11 $11
	ld   de, $ff7f                                   ; $48c0: $11 $7f $ff
	rst  $38                                         ; $48c3: $ff
	rst  $38                                         ; $48c4: $ff
	ld   hl, sp-$68                                  ; $48c5: $f8 $98
	xor  e                                           ; $48c7: $ab
	xor  a                                           ; $48c8: $af
	rst  $38                                         ; $48c9: $ff
	rst  $38                                         ; $48ca: $ff
	rst  ToBoot                                         ; $48cb: $c7
	ld   de, $1111                                   ; $48cc: $11 $11 $11
	ld   de, $ff8f                                   ; $48cf: $11 $8f $ff
	rst  $38                                         ; $48d2: $ff
	cp   $b8                                         ; $48d3: $fe $b8
	ld   a, d                                        ; $48d5: $7a
	xor  h                                           ; $48d6: $ac
	rst  $38                                         ; $48d7: $ff
	rst  $38                                         ; $48d8: $ff
	rst  $38                                         ; $48d9: $ff
	ld   a, [$1141]                                  ; $48da: $fa $41 $11
	ld   de, $2e11                                   ; $48dd: $11 $11 $2e
	rst  $38                                         ; $48e0: $ff
	rst  $38                                         ; $48e1: $ff
	cp   $8a                                         ; $48e2: $fe $8a
	adc  b                                           ; $48e4: $88
	xor  e                                           ; $48e5: $ab
	rst  $38                                         ; $48e6: $ff
	rst  $38                                         ; $48e7: $ff
	rst  $38                                         ; $48e8: $ff
	db   $fd                                         ; $48e9: $fd
	and  [hl]                                        ; $48ea: $a6
	ld   de, $1111                                   ; $48eb: $11 $11 $11
	ld   de, $ffdf                                   ; $48ee: $11 $df $ff
	rst  $38                                         ; $48f1: $ff
	ld   a, [$7887]                                  ; $48f2: $fa $87 $78
	sbc  $ff                                         ; $48f5: $de $ff
	rst  $38                                         ; $48f7: $ff
	rst  $38                                         ; $48f8: $ff
	cp   $b6                                         ; $48f9: $fe $b6
	ld   sp, $1111                                   ; $48fb: $31 $11 $11
	ld   de, $ff3e                                   ; $48fe: $11 $3e $ff
	rst  $38                                         ; $4901: $ff
	cp   $84                                         ; $4902: $fe $84
	ld   e, b                                        ; $4904: $58
	ld   d, a                                        ; $4905: $57
	cp   [hl]                                        ; $4906: $be
	rst  $38                                         ; $4907: $ff
	rst  $38                                         ; $4908: $ff
	rst  $38                                         ; $4909: $ff
	cp   $94                                         ; $490a: $fe $94
	ld   de, $1111                                   ; $490c: $11 $11 $11
	ld   de, $ff7b                                   ; $490f: $11 $7b $ff
	rst  $38                                         ; $4912: $ff
	db   $fd                                         ; $4913: $fd
	ld   [hl], c                                     ; $4914: $71
	ld   [de], a                                     ; $4915: $12
	adc  b                                           ; $4916: $88
	ld   a, l                                        ; $4917: $7d
	rst  $38                                         ; $4918: $ff
	rst  $38                                         ; $4919: $ff
	rst  $38                                         ; $491a: $ff
	rst  $38                                         ; $491b: $ff
	rst  $20                                         ; $491c: $e7
	ld   hl, $1111                                   ; $491d: $21 $11 $11
	ld   de, $cf16                                   ; $4920: $11 $16 $cf
	rst  $38                                         ; $4923: $ff
	db   $fd                                         ; $4924: $fd
	add  e                                           ; $4925: $83
	ld   de, $ff18                                   ; $4926: $11 $18 $ff
	rst  $38                                         ; $4929: $ff
	rst  $38                                         ; $492a: $ff
	rst  $38                                         ; $492b: $ff
	rst  $38                                         ; $492c: $ff
	sbc  $c6                                         ; $492d: $de $c6
	ld   de, $1111                                   ; $492f: $11 $11 $11
	ld   de, $fd13                                   ; $4932: $11 $13 $fd
	rst  $38                                         ; $4935: $ff
	rst  $38                                         ; $4936: $ff
	add  [hl]                                        ; $4937: $86
	ld   sp, $ff18                                   ; $4938: $31 $18 $ff
	rst  $38                                         ; $493b: $ff
	rst  $38                                         ; $493c: $ff
	db   $fc                                         ; $493d: $fc
	rst  $28                                         ; $493e: $ef
	xor  $fe                                         ; $493f: $ee $fe
	ld   [hl], c                                     ; $4941: $71
	ld   de, $1111                                   ; $4942: $11 $11 $11
	ld   de, $ff7f                                   ; $4945: $11 $7f $ff
	rst  $38                                         ; $4948: $ff
	call nc, $1141                                   ; $4949: $d4 $41 $11
	ld   e, l                                        ; $494c: $5d
	rst  $38                                         ; $494d: $ff
	rst  $38                                         ; $494e: $ff
	db   $ed                                         ; $494f: $ed
	cp   e                                           ; $4950: $bb
	db   $dd                                         ; $4951: $dd
	rst  $38                                         ; $4952: $ff
	db   $fd                                         ; $4953: $fd
	ld   [hl], d                                     ; $4954: $72
	ld   de, $1111                                   ; $4955: $11 $11 $11
	ld   de, $ffbf                                   ; $4958: $11 $bf $ff
	rst  $38                                         ; $495b: $ff
	sub  c                                           ; $495c: $91
	ld   de, $7f11                                   ; $495d: $11 $11 $7f
	rst  $38                                         ; $4960: $ff
	rst  $38                                         ; $4961: $ff
	ei                                               ; $4962: $fb
	cp   d                                           ; $4963: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4964: $cf
	rst  $38                                         ; $4965: $ff
	rst  $38                                         ; $4966: $ff
	sub  e                                           ; $4967: $93
	ld   de, $1111                                   ; $4968: $11 $11 $11
	ld   de, $ff1f                                   ; $496b: $11 $1f $ff
	rst  $38                                         ; $496e: $ff
	di                                               ; $496f: $f3
	ld   de, $2b11                                   ; $4970: $11 $11 $2b
	rst  $38                                         ; $4973: $ff
	rst  $38                                         ; $4974: $ff
	db   $eb                                         ; $4975: $eb
	sbc  c                                           ; $4976: $99
	xor  e                                           ; $4977: $ab
	rst  $28                                         ; $4978: $ef
	rst  $38                                         ; $4979: $ff
	jp   hl                                          ; $497a: $e9


	ld   d, c                                        ; $497b: $51
	inc  de                                          ; $497c: $13
	ld   sp, $1111                                   ; $497d: $31 $11 $11
	ld   e, a                                        ; $4980: $5f
	rst  $38                                         ; $4981: $ff
	rst  $38                                         ; $4982: $ff
	or   d                                           ; $4983: $b2
	ld   de, $6d11                                   ; $4984: $11 $11 $6d
	rst  $38                                         ; $4987: $ff
	rst  $38                                         ; $4988: $ff
	cp   c                                           ; $4989: $b9
	ld   a, b                                        ; $498a: $78
	sbc  h                                           ; $498b: $9c
	rst  $38                                         ; $498c: $ff
	rst  $38                                         ; $498d: $ff
	ld   sp, hl                                      ; $498e: $f9
	ld   sp, $5115                                   ; $498f: $31 $15 $51
	ld   de, $6f11                                   ; $4992: $11 $11 $6f
	rst  $38                                         ; $4995: $ff
	rst  $38                                         ; $4996: $ff
	sub  c                                           ; $4997: $91
	ld   de, $8f13                                   ; $4998: $11 $13 $8f
	rst  $38                                         ; $499b: $ff
	rst  $38                                         ; $499c: $ff
	and  [hl]                                        ; $499d: $a6
	ld   b, h                                        ; $499e: $44
	ld   a, e                                        ; $499f: $7b
	rst  $38                                         ; $49a0: $ff
	rst  $38                                         ; $49a1: $ff
	ld   a, [$3542]                                  ; $49a2: $fa $42 $35
	ld   [hl], h                                     ; $49a5: $74
	ld   de, $1f11                                   ; $49a6: $11 $11 $1f
	rst  $38                                         ; $49a9: $ff
	rst  $38                                         ; $49aa: $ff
	jp   nc, $1211                                   ; $49ab: $d2 $11 $12

	ld   a, [hl]                                     ; $49ae: $7e
	rst  $38                                         ; $49af: $ff
	rst  $38                                         ; $49b0: $ff
	call nz, Call_0ee_6a24                           ; $49b1: $c4 $24 $6a
	rst  $38                                         ; $49b4: $ff
	rst  $38                                         ; $49b5: $ff
	db   $fc                                         ; $49b6: $fc
	ld   d, d                                        ; $49b7: $52
	dec  h                                           ; $49b8: $25
	xor  e                                           ; $49b9: $ab
	ld   [hl], c                                     ; $49ba: $71
	ld   de, $9f11                                   ; $49bb: $11 $11 $9f
	rst  $38                                         ; $49be: $ff
	db   $fd                                         ; $49bf: $fd
	ld   sp, $1911                                   ; $49c0: $31 $11 $19
	rst  $38                                         ; $49c3: $ff
	rst  $38                                         ; $49c4: $ff
	db   $fc                                         ; $49c5: $fc
	ld   h, c                                        ; $49c6: $61
	scf                                              ; $49c7: $37
	cp   a                                           ; $49c8: $bf
	rst  $38                                         ; $49c9: $ff
	rst  $38                                         ; $49ca: $ff
	add  $33                                         ; $49cb: $c6 $33
	ld   a, h                                        ; $49cd: $7c
	db   $fd                                         ; $49ce: $fd
	ld   d, c                                        ; $49cf: $51
	ld   de, $4f11                                   ; $49d0: $11 $11 $4f
	rst  $38                                         ; $49d3: $ff
	ld   a, [$1111]                                  ; $49d4: $fa $11 $11
	dec  l                                           ; $49d7: $2d
	rst  $38                                         ; $49d8: $ff
	rst  $38                                         ; $49d9: $ff
	rst  $10                                         ; $49da: $d7
	ld   b, h                                        ; $49db: $44
	ld   c, b                                        ; $49dc: $48
	rst  $28                                         ; $49dd: $ef
	rst  $38                                         ; $49de: $ff
	cp   $85                                         ; $49df: $fe $85
	ld   l, d                                        ; $49e1: $6a
	rst  $38                                         ; $49e2: $ff
	db   $fc                                         ; $49e3: $fc
	ld   sp, $1111                                   ; $49e4: $31 $11 $11
	dec  e                                           ; $49e7: $1d
	rst  $38                                         ; $49e8: $ff
	ei                                               ; $49e9: $fb
	ld   de, $1c11                                   ; $49ea: $11 $11 $1c
	rst  $38                                         ; $49ed: $ff
	rst  $38                                         ; $49ee: $ff
	or   d                                           ; $49ef: $b2
	ld   de, $ff8f                                   ; $49f0: $11 $8f $ff
	rst  $38                                         ; $49f3: $ff
	ld   sp, hl                                      ; $49f4: $f9
	ld   b, h                                        ; $49f5: $44
	xor  l                                           ; $49f6: $ad
	rst  $38                                         ; $49f7: $ff
	db   $fd                                         ; $49f8: $fd
	ld   sp, $1111                                   ; $49f9: $31 $11 $11
	ld   de, $ff1f                                   ; $49fc: $11 $1f $ff
	pop  bc                                          ; $49ff: $c1
	ld   de, $bf11                                   ; $4a00: $11 $11 $bf
	rst  $38                                         ; $4a03: $ff
	or   $11                                         ; $4a04: $f6 $11
	ld   d, $ff                                      ; $4a06: $16 $ff
	rst  $38                                         ; $4a08: $ff
	or   a                                           ; $4a09: $b7
	ld   sp, $ff1a                                   ; $4a0a: $31 $1a $ff
	rst  $38                                         ; $4a0d: $ff
	jp   nz, $1111                                   ; $4a0e: $c2 $11 $11

	ld   b, c                                        ; $4a11: $41
	ld   de, $ff1c                                   ; $4a12: $11 $1c $ff
	ldh  a, [c]                                      ; $4a15: $f2
	ld   de, $7f11                                   ; $4a16: $11 $11 $7f
	rst  $38                                         ; $4a19: $ff
	db   $d3                                         ; $4a1a: $d3
	ld   de, $ff16                                   ; $4a1b: $11 $16 $ff
	cp   $41                                         ; $4a1e: $fe $41
	ld   [de], a                                     ; $4a20: $12
	ld   c, h                                        ; $4a21: $4c
	rst  $38                                         ; $4a22: $ff
	rst  $38                                         ; $4a23: $ff
	ld   [hl], c                                     ; $4a24: $71
	ld   de, $b719                                   ; $4a25: $11 $19 $b7
	ld   de, $ef11                                   ; $4a28: $11 $11 $ef
	rst  $38                                         ; $4a2b: $ff
	ld   sp, $1611                                   ; $4a2c: $31 $11 $16
	rst  $38                                         ; $4a2f: $ff
	rst  $38                                         ; $4a30: $ff
	ld   hl, $4f11                                   ; $4a31: $21 $11 $4f
	rst  $38                                         ; $4a34: $ff
	db   $f4                                         ; $4a35: $f4
	ld   de, $bf15                                   ; $4a36: $11 $15 $bf
	rst  $38                                         ; $4a39: $ff
	db   $f4                                         ; $4a3a: $f4
	ld   de, $ae14                                   ; $4a3b: $11 $14 $ae
	or   c                                           ; $4a3e: $b1
	ld   de, rAUD1LEN                                   ; $4a3f: $11 $11 $ff
	cp   $11                                         ; $4a42: $fe $11
	ld   de, $ff1b                                   ; $4a44: $11 $1b $ff
	db   $fc                                         ; $4a47: $fc
	ld   de, $6f11                                   ; $4a48: $11 $11 $6f
	rst  $38                                         ; $4a4b: $ff
	db   $f4                                         ; $4a4c: $f4
	ld   de, $ff15                                   ; $4a4d: $11 $15 $ff
	rst  $38                                         ; $4a50: $ff
	pop  hl                                          ; $4a51: $e1
	ld   de, $ff3b                                   ; $4a52: $11 $3b $ff
	or   c                                           ; $4a55: $b1
	ld   de, rAUD1LEN                                   ; $4a56: $11 $11 $ff
	rst  $38                                         ; $4a59: $ff
	ld   de, $1d11                                   ; $4a5a: $11 $11 $1d
	rst  $38                                         ; $4a5d: $ff
	db   $fc                                         ; $4a5e: $fc
	ld   de, $6f11                                   ; $4a5f: $11 $11 $6f
	rst  $38                                         ; $4a62: $ff
	ld   hl, sp+$11                                  ; $4a63: $f8 $11
	inc  d                                           ; $4a65: $14
	rst  $38                                         ; $4a66: $ff
	rst  $38                                         ; $4a67: $ff
	pop  hl                                          ; $4a68: $e1
	ld   de, $ff6f                                   ; $4a69: $11 $6f $ff
	pop  de                                          ; $4a6c: $d1
	ld   de, $1f11                                   ; $4a6d: $11 $11 $1f
	rst  $38                                         ; $4a70: $ff
	pop  af                                          ; $4a71: $f1
	ld   de, $ff17                                   ; $4a72: $11 $17 $ff
	rst  $38                                         ; $4a75: $ff
	ld   d, c                                        ; $4a76: $51
	ld   de, $ff1e                                   ; $4a77: $11 $1e $ff
	rst  $38                                         ; $4a7a: $ff
	ld   b, c                                        ; $4a7b: $41
	ld   de, $ff9f                                   ; $4a7c: $11 $9f $ff
	rst  $30                                         ; $4a7f: $f7
	ld   de, $ff1b                                   ; $4a80: $11 $1b $ff
	rst  $30                                         ; $4a83: $f7
	ld   de, $1111                                   ; $4a84: $11 $11 $11
	ld   e, a                                        ; $4a87: $5f
	rst  $38                                         ; $4a88: $ff
	ld   de, $9f11                                   ; $4a89: $11 $11 $9f
	rst  $38                                         ; $4a8c: $ff
	ld   sp, hl                                      ; $4a8d: $f9
	ld   de, rAUD1HIGH                                   ; $4a8e: $11 $14 $ff
	rst  $38                                         ; $4a91: $ff
	push af                                          ; $4a92: $f5
	ld   de, $ff16                                   ; $4a93: $11 $16 $ff
	rst  $38                                         ; $4a96: $ff
	sub  c                                           ; $4a97: $91
	ld   de, $ffaf                                   ; $4a98: $11 $af $ff
	sub  c                                           ; $4a9b: $91
	ld   de, $1111                                   ; $4a9c: $11 $11 $11
	rst  $38                                         ; $4a9f: $ff
	ldh  a, [c]                                      ; $4aa0: $f2
	ld   de, $ff1b                                   ; $4aa1: $11 $1b $ff
	rst  $38                                         ; $4aa4: $ff
	pop  af                                          ; $4aa5: $f1
	ld   de, $ff1f                                   ; $4aa6: $11 $1f $ff
	rst  $38                                         ; $4aa9: $ff
	and  c                                           ; $4aaa: $a1
	ld   de, $ff5f                                   ; $4aab: $11 $5f $ff
	ld   sp, hl                                      ; $4aae: $f9
	ld   de, $ff1d                                   ; $4aaf: $11 $1d $ff
	ld   a, [$1111]                                  ; $4ab2: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $4ab5: $11 $11 $ff
	pop  af                                          ; $4ab8: $f1
	ld   de, $ff2f                                   ; $4ab9: $11 $2f $ff
	rst  $38                                         ; $4abc: $ff
	and  c                                           ; $4abd: $a1
	ld   de, $ff9f                                   ; $4abe: $11 $9f $ff
	rst  $38                                         ; $4ac1: $ff
	ld   d, c                                        ; $4ac2: $51
	ld   de, $ffcf                                   ; $4ac3: $11 $cf $ff
	di                                               ; $4ac6: $f3
	ld   de, $ff6f                                   ; $4ac7: $11 $6f $ff
	di                                               ; $4aca: $f3
	ld   de, $1111                                   ; $4acb: $11 $11 $11
	ld   de, $f1ff                                   ; $4ace: $11 $ff $f1
	ld   de, $ffbf                                   ; $4ad1: $11 $bf $ff
	rst  $38                                         ; $4ad4: $ff
	ld   de, rAUD1LEN                                   ; $4ad5: $11 $11 $ff
	rst  $38                                         ; $4ad8: $ff
	ld   a, [$1511]                                  ; $4ad9: $fa $11 $15
	rst  $38                                         ; $4adc: $ff
	rst  $38                                         ; $4add: $ff
	add  c                                           ; $4ade: $81
	ld   de, $ffef                                   ; $4adf: $11 $ef $ff
	add  c                                           ; $4ae2: $81
	ld   de, $1112                                   ; $4ae3: $11 $12 $11
	jr   @+$01                                       ; $4ae6: $18 $ff

	ld   h, c                                        ; $4ae8: $61
	ld   de, $ffff                                   ; $4ae9: $11 $ff $ff
	rst  $38                                         ; $4aec: $ff
	ld   de, rAUD1LEN                                   ; $4aed: $11 $11 $ff
	rst  $38                                         ; $4af0: $ff
	or   l                                           ; $4af1: $b5
	ld   de, $ff1d                                   ; $4af2: $11 $1d $ff
	db   $fc                                         ; $4af5: $fc
	ld   de, $ff17                                   ; $4af6: $11 $17 $ff
	cp   $11                                         ; $4af9: $fe $11
	ld   de, $1124                                   ; $4afb: $11 $24 $11
	rra                                              ; $4afe: $1f
	rst  $38                                         ; $4aff: $ff
	ld   de, $ff19                                   ; $4b00: $11 $19 $ff
	rst  $38                                         ; $4b03: $ff
	rst  $30                                         ; $4b04: $f7
	ld   de, $ff1e                                   ; $4b05: $11 $1e $ff
	rst  $38                                         ; $4b08: $ff
	sub  d                                           ; $4b09: $92
	ld   de, $ff4f                                   ; $4b0a: $11 $4f $ff
	push af                                          ; $4b0d: $f5
	ld   de, $ff3e                                   ; $4b0e: $11 $3e $ff
	push af                                          ; $4b11: $f5
	ld   de, $3111                                   ; $4b12: $11 $11 $31
	ld   de, $f1ff                                   ; $4b15: $11 $ff $f1
	ld   de, $ff3f                                   ; $4b18: $11 $3f $ff
	rst  $38                                         ; $4b1b: $ff
	and  c                                           ; $4b1c: $a1
	ld   de, $ffaf                                   ; $4b1d: $11 $af $ff
	push af                                          ; $4b20: $f5
	ld   hl, rAUD1ENV                                   ; $4b21: $21 $12 $ff
	rst  $38                                         ; $4b24: $ff
	ld   b, c                                        ; $4b25: $41
	inc  de                                          ; $4b26: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b27: $cf
	rst  $38                                         ; $4b28: $ff
	ld   h, c                                        ; $4b29: $61
	ld   de, $1114                                   ; $4b2a: $11 $14 $11
	rra                                              ; $4b2d: $1f
	rst  $38                                         ; $4b2e: $ff
	ld   bc, rAUD1LEN                                   ; $4b2f: $01 $11 $ff
	rst  $38                                         ; $4b32: $ff
	ld   a, [$1911]                                  ; $4b33: $fa $11 $19
	rst  $38                                         ; $4b36: $ff
	cp   $41                                         ; $4b37: $fe $41
	ld   de, $ff6f                                   ; $4b39: $11 $6f $ff
	ldh  [c], a                                      ; $4b3c: $e2
	ld   de, $ff5f                                   ; $4b3d: $11 $5f $ff
	di                                               ; $4b40: $f3
	ld   de, $1111                                   ; $4b41: $11 $11 $11
	ld   de, $f1ff                                   ; $4b44: $11 $ff $f1
	ld   de, $ff9f                                   ; $4b47: $11 $9f $ff
	rst  $38                                         ; $4b4a: $ff
	ld   hl, rAUD1LEN                                   ; $4b4b: $21 $11 $ff
	rst  $38                                         ; $4b4e: $ff
	sub  c                                           ; $4b4f: $91
	ld   de, $ff1c                                   ; $4b50: $11 $1c $ff
	ld   sp, hl                                      ; $4b53: $f9
	ld   de, $ff17                                   ; $4b54: $11 $17 $ff
	db   $fd                                         ; $4b57: $fd
	ld   de, $4111                                   ; $4b58: $11 $11 $41
	ld   de, $f5ef                                   ; $4b5b: $11 $ef $f5
	ld   de, $ff1f                                   ; $4b5e: $11 $1f $ff
	rst  $38                                         ; $4b61: $ff
	and  c                                           ; $4b62: $a1
	ld   de, $ff6f                                   ; $4b63: $11 $6f $ff
	pop  de                                          ; $4b66: $d1
	ld   de, $ff17                                   ; $4b67: $11 $17 $ff
	cp   $11                                         ; $4b6a: $fe $11
	inc  d                                           ; $4b6c: $14
	rst  $38                                         ; $4b6d: $ff
	rst  $38                                         ; $4b6e: $ff
	ld   hl, $1111                                   ; $4b6f: $21 $11 $11
	ld   de, $f7ff                                   ; $4b72: $11 $ff $f7
	ld   de, $ff1f                                   ; $4b75: $11 $1f $ff
	rst  $38                                         ; $4b78: $ff
	and  c                                           ; $4b79: $a1
	ld   de, $ff4f                                   ; $4b7a: $11 $4f $ff
	pop  af                                          ; $4b7d: $f1
	ld   de, $ff19                                   ; $4b7e: $11 $19 $ff
	db   $fc                                         ; $4b81: $fc
	ld   de, $ff16                                   ; $4b82: $11 $16 $ff
	rst  $38                                         ; $4b85: $ff
	ld   de, $1111                                   ; $4b86: $11 $11 $11
	ld   de, $f1ff                                   ; $4b89: $11 $ff $f1
	ld   de, $ff1f                                   ; $4b8c: $11 $1f $ff
	rst  $38                                         ; $4b8f: $ff
	ld   b, c                                        ; $4b90: $41
	ld   de, $ffbf                                   ; $4b91: $11 $bf $ff
	or   c                                           ; $4b94: $b1
	ld   de, $ff1d                                   ; $4b95: $11 $1d $ff
	or   $11                                         ; $4b98: $f6 $11
	add  hl, de                                      ; $4b9a: $19
	rst  $38                                         ; $4b9b: $ff
	ld   a, [$1111]                                  ; $4b9c: $fa $11 $11
	ld   de, rAUD1HIGH                                   ; $4b9f: $11 $14 $ff
	pop  af                                          ; $4ba2: $f1
	ld   de, $ffff                                   ; $4ba3: $11 $ff $ff
	db   $fc                                         ; $4ba6: $fc
	ld   de, rAUD1LEN                                   ; $4ba7: $11 $11 $ff
	rst  $38                                         ; $4baa: $ff
	ld   de, $8f11                                   ; $4bab: $11 $11 $8f
	rst  $38                                         ; $4bae: $ff
	pop  bc                                          ; $4baf: $c1
	ld   de, $ff7f                                   ; $4bb0: $11 $7f $ff
	pop  de                                          ; $4bb3: $d1
	ld   de, $1111                                   ; $4bb4: $11 $11 $11
	rra                                              ; $4bb7: $1f
	rst  $38                                         ; $4bb8: $ff
	ld   de, $ff1f                                   ; $4bb9: $11 $1f $ff
	cp   $a1                                         ; $4bbc: $fe $a1
	ld   de, $ff1f                                   ; $4bbe: $11 $1f $ff
	pop  af                                          ; $4bc1: $f1
	ld   de, $ff16                                   ; $4bc2: $11 $16 $ff
	db   $fd                                         ; $4bc5: $fd
	ld   de, $ff15                                   ; $4bc6: $11 $15 $ff
	db   $fd                                         ; $4bc9: $fd
	ld   de, $1111                                   ; $4bca: $11 $11 $11
	rra                                              ; $4bcd: $1f
	rst  $38                                         ; $4bce: $ff
	ld   de, rAUD1LEN                                   ; $4bcf: $11 $11 $ff
	rst  $38                                         ; $4bd2: $ff
	and  c                                           ; $4bd3: $a1
	ld   de, $ff1f                                   ; $4bd4: $11 $1f $ff
	push af                                          ; $4bd7: $f5
	ld   de, rAUD1LEN                                   ; $4bd8: $11 $11 $ff
	rst  $38                                         ; $4bdb: $ff
	ld   de, rAUD1LOW                                   ; $4bdc: $11 $13 $ff
	cp   $11                                         ; $4bdf: $fe $11
	ld   de, $1f11                                   ; $4be1: $11 $11 $1f
	rst  $38                                         ; $4be4: $ff
	ld   de, rAUD1LEN                                   ; $4be5: $11 $11 $ff
	rst  $38                                         ; $4be8: $ff
	and  c                                           ; $4be9: $a1
	ld   de, $ff1f                                   ; $4bea: $11 $1f $ff
	push af                                          ; $4bed: $f5
	ld   de, rAUD1HIGH                                   ; $4bee: $11 $14 $ff
	rst  $38                                         ; $4bf1: $ff
	ld   de, $ff15                                   ; $4bf2: $11 $15 $ff
	ei                                               ; $4bf5: $fb
	ld   de, $1111                                   ; $4bf6: $11 $11 $11
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	ld   de, $ff1f                                   ; $4bfb: $11 $1f $ff
	cp   $41                                         ; $4bfe: $fe $41
	ld   de, $ffaf                                   ; $4c00: $11 $af $ff
	pop  hl                                          ; $4c03: $e1
	ld   de, $ff1f                                   ; $4c04: $11 $1f $ff
	pop  af                                          ; $4c07: $f1
	ld   de, $ff1d                                   ; $4c08: $11 $1d $ff
	pop  af                                          ; $4c0b: $f1
	ld   de, $5f11                                   ; $4c0c: $11 $11 $5f
	rst  $38                                         ; $4c0f: $ff
	ld   de, rAUD1LEN                                   ; $4c10: $11 $11 $ff
	rst  $38                                         ; $4c13: $ff
	or   c                                           ; $4c14: $b1
	ld   de, $ff1f                                   ; $4c15: $11 $1f $ff
	db   $f4                                         ; $4c18: $f4
	ld   de, $ff17                                   ; $4c19: $11 $17 $ff
	cp   $11                                         ; $4c1c: $fe $11
	dec  d                                           ; $4c1e: $15
	rst  $38                                         ; $4c1f: $ff
	push af                                          ; $4c20: $f5
	ld   de, $3f11                                   ; $4c21: $11 $11 $3f
	rst  $38                                         ; $4c24: $ff
	ld   de, rAUD1LEN                                   ; $4c25: $11 $11 $ff
	rst  $38                                         ; $4c28: $ff
	pop  bc                                          ; $4c29: $c1
	ld   de, $ff1f                                   ; $4c2a: $11 $1f $ff
	ldh  a, [c]                                      ; $4c2d: $f2
	ld   de, $ff1a                                   ; $4c2e: $11 $1a $ff
	ld   sp, hl                                      ; $4c31: $f9
	ld   de, $ff17                                   ; $4c32: $11 $17 $ff
	db   $f4                                         ; $4c35: $f4
	ld   de, rAUD1LEN                                   ; $4c36: $11 $11 $ff
	pop  af                                          ; $4c39: $f1
	ld   de, $ff1f                                   ; $4c3a: $11 $1f $ff
	rst  $38                                         ; $4c3d: $ff
	ld   de, rAUD1LEN                                   ; $4c3e: $11 $11 $ff
	rst  $38                                         ; $4c41: $ff
	ld   [hl], c                                     ; $4c42: $71
	ld   de, $ffaf                                   ; $4c43: $11 $af $ff
	or   c                                           ; $4c46: $b1
	ld   de, $ff3f                                   ; $4c47: $11 $3f $ff
	ld   hl, $cf11                                   ; $4c4a: $21 $11 $cf
	rst  $38                                         ; $4c4d: $ff
	ld   de, $ff16                                   ; $4c4e: $11 $16 $ff
	rst  $38                                         ; $4c51: $ff
	pop  hl                                          ; $4c52: $e1
	ld   de, $ff3f                                   ; $4c53: $11 $3f $ff
	pop  af                                          ; $4c56: $f1
	ld   de, $ff1f                                   ; $4c57: $11 $1f $ff
	pop  af                                          ; $4c5a: $f1
	ld   de, $ff1b                                   ; $4c5b: $11 $1b $ff
	ld   d, c                                        ; $4c5e: $51
	ld   de, $f4ff                                   ; $4c5f: $11 $ff $f4
	ld   de, $ff1f                                   ; $4c62: $11 $1f $ff
	rst  $38                                         ; $4c65: $ff
	ld   b, c                                        ; $4c66: $41
	ld   de, $ffff                                   ; $4c67: $11 $ff $ff
	ld   hl, rAUD1LEN                                   ; $4c6a: $21 $11 $ff
	rst  $38                                         ; $4c6d: $ff
	ld   h, c                                        ; $4c6e: $61
	ld   de, $f37f                                   ; $4c6f: $11 $7f $f3
	ld   de, $ff1f                                   ; $4c72: $11 $1f $ff
	ld   de, $ff1c                                   ; $4c75: $11 $1c $ff
	rst  $38                                         ; $4c78: $ff
	pop  bc                                          ; $4c79: $c1
	ld   de, $ff4f                                   ; $4c7a: $11 $4f $ff
	or   c                                           ; $4c7d: $b1
	ld   de, $ffaf                                   ; $4c7e: $11 $af $ff
	pop  bc                                          ; $4c81: $c1
	ld   de, $f32d                                   ; $4c82: $11 $2d $f3
	ld   de, $fe6f                                   ; $4c85: $11 $6f $fe
	ld   de, $ff1f                                   ; $4c88: $11 $1f $ff
	ei                                               ; $4c8b: $fb
	ld   h, c                                        ; $4c8c: $61
	ld   de, $ffef                                   ; $4c8d: $11 $ef $ff
	ld   de, rAUD1LOW                                   ; $4c90: $11 $13 $ff
	rst  $38                                         ; $4c93: $ff
	ld   b, c                                        ; $4c94: $41
	ld   de, $418e                                   ; $4c95: $11 $8e $41
	dec  e                                           ; $4c98: $1d
	rst  $38                                         ; $4c99: $ff
	ld   [hl], c                                     ; $4c9a: $71
	ld   de, $ffff                                   ; $4c9b: $11 $ff $ff
	add  c                                           ; $4c9e: $81
	ld   de, $ff1f                                   ; $4c9f: $11 $1f $ff
	pop  af                                          ; $4ca2: $f1
	ld   de, $ff9f                                   ; $4ca3: $11 $9f $ff
	pop  af                                          ; $4ca6: $f1
	ld   de, $b118                                   ; $4ca7: $11 $18 $b1
	rla                                              ; $4caa: $17
	rst  $38                                         ; $4cab: $ff
	add  c                                           ; $4cac: $81
	ld   de, $ffff                                   ; $4cad: $11 $ff $ff
	ld   d, c                                        ; $4cb0: $51
	ld   de, $ff1f                                   ; $4cb1: $11 $1f $ff
	pop  bc                                          ; $4cb4: $c1
	ld   de, $ffbf                                   ; $4cb5: $11 $bf $ff
	pop  af                                          ; $4cb8: $f1
	ld   de, $2113                                   ; $4cb9: $11 $13 $21
	adc  a                                           ; $4cbc: $8f
	cp   $11                                         ; $4cbd: $fe $11
	rra                                              ; $4cbf: $1f
	rst  $38                                         ; $4cc0: $ff
	rst  $30                                         ; $4cc1: $f7
	ld   de, rAUD1LEN                                   ; $4cc2: $11 $11 $ff
	rst  $38                                         ; $4cc5: $ff
	ld   de, $ff19                                   ; $4cc6: $11 $19 $ff
	rst  $38                                         ; $4cc9: $ff
	ld   de, $1111                                   ; $4cca: $11 $11 $11
	rra                                              ; $4ccd: $1f
	rst  $38                                         ; $4cce: $ff
	ld   de, rAUD1HIGH                                   ; $4ccf: $11 $14 $ff
	cp   $11                                         ; $4cd2: $fe $11
	ld   de, $ff8f                                   ; $4cd4: $11 $8f $ff
	ld   de, $ff16                                   ; $4cd7: $11 $16 $ff
	rst  $38                                         ; $4cda: $ff
	ld   [hl], c                                     ; $4cdb: $71
	ld   de, $3f11                                   ; $4cdc: $11 $11 $3f
	rst  $38                                         ; $4cdf: $ff
	ld   de, $ff16                                   ; $4ce0: $11 $16 $ff
	cp   $11                                         ; $4ce3: $fe $11
	ld   de, $ffff                                   ; $4ce5: $11 $ff $ff
	ld   de, rAUD1HIGH                                   ; $4ce8: $11 $14 $ff
	rst  $38                                         ; $4ceb: $ff
	ld   hl, $1611                                   ; $4cec: $21 $11 $16
	rst  $38                                         ; $4cef: $ff
	pop  af                                          ; $4cf0: $f1
	ld   de, $ff1f                                   ; $4cf1: $11 $1f $ff
	di                                               ; $4cf4: $f3
	ld   de, $ff1b                                   ; $4cf5: $11 $1b $ff
	pop  af                                          ; $4cf8: $f1
	ld   de, $ff1e                                   ; $4cf9: $11 $1e $ff
	pop  af                                          ; $4cfc: $f1
	ld   de, rAUD1LEN                                   ; $4cfd: $11 $11 $ff
	rst  $38                                         ; $4d00: $ff
	ld   de, $ff1c                                   ; $4d01: $11 $1c $ff
	rst  $38                                         ; $4d04: $ff
	ld   de, rAUD1LEN                                   ; $4d05: $11 $11 $ff
	rst  $38                                         ; $4d08: $ff
	ld   de, rAUD1LOW                                   ; $4d09: $11 $13 $ff
	cp   $11                                         ; $4d0c: $fe $11
	ld   de, $ffff                                   ; $4d0e: $11 $ff $ff
	ld   de, $ff1a                                   ; $4d11: $11 $1a $ff
	rst  $38                                         ; $4d14: $ff
	ld   de, rAUD1LEN                                   ; $4d15: $11 $11 $ff
	rst  $38                                         ; $4d18: $ff
	ld   de, $af11                                   ; $4d19: $11 $11 $af
	db   $fd                                         ; $4d1c: $fd
	ld   de, rAUD1LEN                                   ; $4d1d: $11 $11 $ff
	pop  af                                          ; $4d20: $f1
	ld   de, $ff1f                                   ; $4d21: $11 $1f $ff
	rst  $38                                         ; $4d24: $ff
	ld   de, $ff17                                   ; $4d25: $11 $17 $ff
	ld   a, [$1211]                                  ; $4d28: $fa $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d2b: $cf
	pop  af                                          ; $4d2c: $f1
	ld   de, $ff1f                                   ; $4d2d: $11 $1f $ff
	ld   de, $ff18                                   ; $4d30: $11 $18 $ff
	rst  $38                                         ; $4d33: $ff
	pop  bc                                          ; $4d34: $c1
	ld   de, $ffef                                   ; $4d35: $11 $ef $ff
	ld   [hl], d                                     ; $4d38: $72
	ld   de, $f93d                                   ; $4d39: $11 $3d $f9
	ld   de, $ff1f                                   ; $4d3c: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $4d3f: $11 $11 $ff
	rst  $38                                         ; $4d42: $ff
	pop  af                                          ; $4d43: $f1
	ld   de, $ff6f                                   ; $4d44: $11 $6f $ff
	add  d                                           ; $4d47: $82
	ld   de, $fc18                                   ; $4d48: $11 $18 $fc
	ld   de, $ff1f                                   ; $4d4b: $11 $1f $ff
	ld   de, $ff17                                   ; $4d4e: $11 $17 $ff
	rst  $38                                         ; $4d51: $ff
	pop  af                                          ; $4d52: $f1
	ld   de, $ff9f                                   ; $4d53: $11 $9f $ff
	ld   d, c                                        ; $4d56: $51
	ld   [de], a                                     ; $4d57: $12
	ld   c, d                                        ; $4d58: $4a
	db   $e3                                         ; $4d59: $e3
	ld   de, $ff4f                                   ; $4d5a: $11 $4f $ff
	ld   de, $ff1f                                   ; $4d5d: $11 $1f $ff
	rst  $38                                         ; $4d60: $ff
	ld   d, c                                        ; $4d61: $51
	ld   de, $fcff                                   ; $4d62: $11 $ff $fc
	ld   hl, $3e11                                   ; $4d65: $21 $11 $3e
	pop  bc                                          ; $4d68: $c1
	ld   de, $f1ff                                   ; $4d69: $11 $ff $f1
	ld   de, $ffff                                   ; $4d6c: $11 $ff $ff
	rst  $30                                         ; $4d6f: $f7
	ld   de, $ff1f                                   ; $4d70: $11 $1f $ff
	di                                               ; $4d73: $f3
	ld   de, $a512                                   ; $4d74: $11 $12 $a5
	ld   de, $f9ff                                   ; $4d77: $11 $ff $f9
	ld   de, $ff1f                                   ; $4d7a: $11 $1f $ff
	db   $fd                                         ; $4d7d: $fd
	ld   de, rAUD1LOW                                   ; $4d7e: $11 $13 $ff
	ld   sp, hl                                      ; $4d81: $f9
	ld   de, $4811                                   ; $4d82: $11 $11 $48
	ld   de, $ff2f                                   ; $4d85: $11 $2f $ff
	ld   de, $ff1f                                   ; $4d88: $11 $1f $ff
	db   $fc                                         ; $4d8b: $fc
	ld   de, rAUD1LEN                                   ; $4d8c: $11 $11 $ff
	rst  $38                                         ; $4d8f: $ff
	ld   de, $1311                                   ; $4d90: $11 $11 $13
	ld   de, $f9ff                                   ; $4d93: $11 $ff $f9
	ld   de, $ff1f                                   ; $4d96: $11 $1f $ff
	ld   sp, hl                                      ; $4d99: $f9
	ld   de, rAUD1LOW                                   ; $4d9a: $11 $13 $ff
	db   $fc                                         ; $4d9d: $fc
	ld   de, $1111                                   ; $4d9e: $11 $11 $11
	ld   de, $f1ff                                   ; $4da1: $11 $ff $f1
	ld   de, $ffdf                                   ; $4da4: $11 $df $ff
	pop  bc                                          ; $4da7: $c1
	ld   de, $ff1f                                   ; $4da8: $11 $1f $ff
	di                                               ; $4dab: $f3
	ld   de, $1111                                   ; $4dac: $11 $11 $11
	rra                                              ; $4daf: $1f
	rst  $38                                         ; $4db0: $ff
	ld   de, rAUD1ENV                                   ; $4db1: $11 $12 $ff
	rst  $38                                         ; $4db4: $ff
	ld   sp, $df11                                   ; $4db5: $31 $11 $df
	rst  $38                                         ; $4db8: $ff

Jump_0ee_4db9:
	ld   [hl], c                                     ; $4db9: $71
	ld   de, $1111                                   ; $4dba: $11 $11 $11
	rst  $38                                         ; $4dbd: $ff
	pop  af                                          ; $4dbe: $f1
	ld   de, $ff7f                                   ; $4dbf: $11 $7f $ff
	pop  af                                          ; $4dc2: $f1
	ld   de, $ff1f                                   ; $4dc3: $11 $1f $ff
	ldh  a, [c]                                      ; $4dc6: $f2
	ld   de, $1111                                   ; $4dc7: $11 $11 $11
	rst  $38                                         ; $4dca: $ff
	push af                                          ; $4dcb: $f5
	ld   de, $ff1f                                   ; $4dcc: $11 $1f $ff
	ld   a, [$1111]                                  ; $4dcf: $fa $11 $11
	rst  $38                                         ; $4dd2: $ff
	db   $fd                                         ; $4dd3: $fd
	ld   de, $1111                                   ; $4dd4: $11 $11 $11
	sbc  a                                           ; $4dd7: $9f
	rst  $38                                         ; $4dd8: $ff
	ld   de, $ff1a                                   ; $4dd9: $11 $1a $ff
	rst  $38                                         ; $4ddc: $ff
	ld   de, rAUD1LEN                                   ; $4ddd: $11 $11 $ff
	rst  $38                                         ; $4de0: $ff
	ld   de, $1111                                   ; $4de1: $11 $11 $11
	xor  a                                           ; $4de4: $af
	cp   $11                                         ; $4de5: $fe $11
	dec  de                                          ; $4de7: $1b
	rst  $38                                         ; $4de8: $ff
	db   $fc                                         ; $4de9: $fc
	ld   de, rAUD1LEN                                   ; $4dea: $11 $11 $ff
	rst  $38                                         ; $4ded: $ff
	ld   de, $1111                                   ; $4dee: $11 $11 $11
	rst  $38                                         ; $4df1: $ff
	db   $f4                                         ; $4df2: $f4
	ld   de, $ff1f                                   ; $4df3: $11 $1f $ff
	ld   hl, sp+$11                                  ; $4df6: $f8 $11
	ld   de, $ffff                                   ; $4df8: $11 $ff $ff
	ld   de, $1211                                   ; $4dfb: $11 $11 $12
	rst  $38                                         ; $4dfe: $ff
	pop  af                                          ; $4dff: $f1
	ld   de, $ff1f                                   ; $4e00: $11 $1f $ff
	pop  af                                          ; $4e03: $f1
	ld   de, $ff1d                                   ; $4e04: $11 $1d $ff
	push af                                          ; $4e07: $f5
	ld   de, $3f11                                   ; $4e08: $11 $11 $3f
	rst  $38                                         ; $4e0b: $ff
	ld   de, rAUD1LEN                                   ; $4e0c: $11 $11 $ff
	rst  $38                                         ; $4e0f: $ff
	ld   b, c                                        ; $4e10: $41
	ld   de, $ffff                                   ; $4e11: $11 $ff $ff
	ld   d, c                                        ; $4e14: $51
	ld   de, $ff1d                                   ; $4e15: $11 $1d $ff
	pop  af                                          ; $4e18: $f1
	ld   de, $ff1f                                   ; $4e19: $11 $1f $ff
	push af                                          ; $4e1c: $f5
	ld   de, $ff1f                                   ; $4e1d: $11 $1f $ff
	pop  af                                          ; $4e20: $f1
	ld   de, rAUD1LEN                                   ; $4e21: $11 $11 $ff
	pop  af                                          ; $4e24: $f1
	ld   de, $ff1f                                   ; $4e25: $11 $1f $ff
	rst  $38                                         ; $4e28: $ff
	ld   de, $ff1d                                   ; $4e29: $11 $1d $ff
	pop  af                                          ; $4e2c: $f1
	ld   de, rAUD1LEN                                   ; $4e2d: $11 $11 $ff
	rst  $38                                         ; $4e30: $ff
	ld   de, $ff1d                                   ; $4e31: $11 $1d $ff
	rst  $38                                         ; $4e34: $ff
	ld   de, rAUD1LEN                                   ; $4e35: $11 $11 $ff
	or   $11                                         ; $4e38: $f6 $11
	ld   de, $ffaf                                   ; $4e3a: $11 $af $ff
	ld   de, $ff17                                   ; $4e3d: $11 $17 $ff
	rst  $38                                         ; $4e40: $ff
	ld   de, rAUD1LEN                                   ; $4e41: $11 $11 $ff
	ld   sp, hl                                      ; $4e44: $f9
	ld   de, $cf11                                   ; $4e45: $11 $11 $cf
	rst  $38                                         ; $4e48: $ff
	ld   de, $ff19                                   ; $4e49: $11 $19 $ff
	rst  $38                                         ; $4e4c: $ff
	ld   de, rAUD1LEN                                   ; $4e4d: $11 $11 $ff
	or   $11                                         ; $4e50: $f6 $11
	ld   de, $ffff                                   ; $4e52: $11 $ff $ff
	ld   de, $ff1c                                   ; $4e55: $11 $1c $ff
	rst  $38                                         ; $4e58: $ff
	ld   de, rAUD1HIGH                                   ; $4e59: $11 $14 $ff
	pop  af                                          ; $4e5c: $f1
	ld   de, rAUD1LEN                                   ; $4e5d: $11 $11 $ff
	pop  af                                          ; $4e60: $f1
	ld   de, $ff1f                                   ; $4e61: $11 $1f $ff
	rst  $38                                         ; $4e64: $ff
	ld   de, $ff1f                                   ; $4e65: $11 $1f $ff
	pop  hl                                          ; $4e68: $e1
	ld   de, $ff1f                                   ; $4e69: $11 $1f $ff
	pop  af                                          ; $4e6c: $f1
	ld   de, $ff8f                                   ; $4e6d: $11 $8f $ff
	pop  af                                          ; $4e70: $f1
	ld   de, $ff2f                                   ; $4e71: $11 $2f $ff
	ld   de, $1f11                                   ; $4e74: $11 $11 $1f
	rst  $38                                         ; $4e77: $ff
	ld   de, rAUD1LEN                                   ; $4e78: $11 $11 $ff
	rst  $38                                         ; $4e7b: $ff
	and  c                                           ; $4e7c: $a1
	ld   de, $fbff                                   ; $4e7d: $11 $ff $fb
	ld   de, rAUD1LEN                                   ; $4e80: $11 $11 $ff
	ldh  a, [c]                                      ; $4e83: $f2
	ld   de, $ff1f                                   ; $4e84: $11 $1f $ff
	rst  $38                                         ; $4e87: $ff
	ld   de, $ff1f                                   ; $4e88: $11 $1f $ff
	pop  af                                          ; $4e8b: $f1
	ld   de, $ff1f                                   ; $4e8c: $11 $1f $ff
	ld   b, c                                        ; $4e8f: $41
	ld   de, $ffff                                   ; $4e90: $11 $ff $ff
	pop  af                                          ; $4e93: $f1
	ld   de, $ffff                                   ; $4e94: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $4e97: $11 $11 $ff
	di                                               ; $4e9a: $f3
	ld   de, $ff1e                                   ; $4e9b: $11 $1e $ff
	rst  $38                                         ; $4e9e: $ff
	ld   de, $ff1f                                   ; $4e9f: $11 $1f $ff
	pop  af                                          ; $4ea2: $f1
	ld   de, $ff1f                                   ; $4ea3: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $4ea6: $11 $11 $ff
	rst  $38                                         ; $4ea9: $ff
	or   c                                           ; $4eaa: $b1
	ld   de, $faff                                   ; $4eab: $11 $ff $fa
	ld   de, $ff1f                                   ; $4eae: $11 $1f $ff
	pop  af                                          ; $4eb1: $f1
	ld   de, $ff1f                                   ; $4eb2: $11 $1f $ff
	pop  af                                          ; $4eb5: $f1
	ld   de, $ff1f                                   ; $4eb6: $11 $1f $ff
	ld   hl, rAUD1LEN                                   ; $4eb9: $21 $11 $ff
	push af                                          ; $4ebc: $f5
	ld   de, $ff1b                                   ; $4ebd: $11 $1b $ff
	db   $fd                                         ; $4ec0: $fd
	ld   de, $ff1f                                   ; $4ec1: $11 $1f $ff
	pop  de                                          ; $4ec4: $d1
	ld   de, $ffff                                   ; $4ec5: $11 $ff $ff
	ld   de, rAUD1HIGH                                   ; $4ec8: $11 $14 $ff
	rst  $38                                         ; $4ecb: $ff
	ld   de, $ff17                                   ; $4ecc: $11 $17 $ff
	pop  af                                          ; $4ecf: $f1
	ld   de, $ff2f                                   ; $4ed0: $11 $2f $ff
	ld   de, rAUD1LEN                                   ; $4ed3: $11 $11 $ff
	rst  $38                                         ; $4ed6: $ff
	ld   b, c                                        ; $4ed7: $41
	ld   [de], a                                     ; $4ed8: $12
	rst  $38                                         ; $4ed9: $ff
	db   $f4                                         ; $4eda: $f4
	ld   de, $ff1f                                   ; $4edb: $11 $1f $ff
	ld   de, $bf11                                   ; $4ede: $11 $11 $bf
	rst  $38                                         ; $4ee1: $ff
	pop  bc                                          ; $4ee2: $c1
	ld   de, $f8ff                                   ; $4ee3: $11 $ff $f8
	ld   de, $ff1f                                   ; $4ee6: $11 $1f $ff
	ld   sp, $9f11                                   ; $4ee9: $31 $11 $9f
	rst  $38                                         ; $4eec: $ff
	sub  c                                           ; $4eed: $91
	ld   de, $f8ff                                   ; $4eee: $11 $ff $f8
	ld   de, $ff1f                                   ; $4ef1: $11 $1f $ff
	ld   sp, $af11                                   ; $4ef4: $31 $11 $af
	rst  $38                                         ; $4ef7: $ff
	add  c                                           ; $4ef8: $81
	ld   de, $f7ff                                   ; $4ef9: $11 $ff $f7
	ld   de, $ff2f                                   ; $4efc: $11 $2f $ff
	ld   de, $cf11                                   ; $4eff: $11 $11 $cf
	rst  $38                                         ; $4f02: $ff
	ld   b, c                                        ; $4f03: $41
	dec  d                                           ; $4f04: $15
	rst  $38                                         ; $4f05: $ff
	di                                               ; $4f06: $f3
	ld   de, $ffbf                                   ; $4f07: $11 $bf $ff
	ld   de, $ef13                                   ; $4f0a: $11 $13 $ef
	rst  $38                                         ; $4f0d: $ff
	ld   de, $ff17                                   ; $4f0e: $11 $17 $ff
	pop  hl                                          ; $4f11: $e1
	ld   de, $f9ff                                   ; $4f12: $11 $ff $f9
	ld   de, $ff17                                   ; $4f15: $11 $17 $ff
	db   $fc                                         ; $4f18: $fc
	ld   de, $fe18                                   ; $4f19: $11 $18 $fe
	ld   [hl], c                                     ; $4f1c: $71
	jr   @+$01                                       ; $4f1d: $18 $ff

	pop  af                                          ; $4f1f: $f1
	ld   de, $ff4c                                   ; $4f20: $11 $4c $ff
	db   $f4                                         ; $4f23: $f4
	ld   de, $e96d                                   ; $4f24: $11 $6d $e9
	ld   de, $ff1f                                   ; $4f27: $11 $1f $ff
	ld   b, c                                        ; $4f2a: $41
	inc  d                                           ; $4f2b: $14
	sbc  a                                           ; $4f2c: $9f
	rst  $38                                         ; $4f2d: $ff
	sub  c                                           ; $4f2e: $91
	inc  de                                          ; $4f2f: $13
	xor  [hl]                                        ; $4f30: $ae
	pop  bc                                          ; $4f31: $c1
	ld   de, $f9ff                                   ; $4f32: $11 $ff $f9
	ld   de, $ff27                                   ; $4f35: $11 $27 $ff
	db   $fd                                         ; $4f38: $fd
	ld   sp, $bb16                                   ; $4f39: $31 $16 $bb
	ld   sp, $ff1f                                   ; $4f3c: $31 $1f $ff
	add  c                                           ; $4f3f: $81
	inc  de                                          ; $4f40: $13
	sbc  a                                           ; $4f41: $9f
	rst  $38                                         ; $4f42: $ff
	push bc                                          ; $4f43: $c5
	ld   de, $917a                                   ; $4f44: $11 $7a $91
	inc  de                                          ; $4f47: $13
	rst  $38                                         ; $4f48: $ff
	db   $f4                                         ; $4f49: $f4
	ld   de, $ef7c                                   ; $4f4a: $11 $7c $ef
	db   $fd                                         ; $4f4d: $fd
	ld   d, c                                        ; $4f4e: $51
	daa                                              ; $4f4f: $27
	sub  e                                           ; $4f50: $93
	ld   de, $f8ef                                   ; $4f51: $11 $ef $f8
	ld   de, $ef5a                                   ; $4f54: $11 $5a $ef
	db   $fc                                         ; $4f57: $fc
	ld   d, c                                        ; $4f58: $51
	scf                                              ; $4f59: $37
	and  [hl]                                        ; $4f5a: $a6
	ld   de, $fc8f                                   ; $4f5b: $11 $8f $fc
	ld   d, d                                        ; $4f5e: $52
	scf                                              ; $4f5f: $37
	cp   a                                           ; $4f60: $bf
	rst  $38                                         ; $4f61: $ff
	add  d                                           ; $4f62: $82
	dec  h                                           ; $4f63: $25
	xor  c                                           ; $4f64: $a9
	ld   de, $fd4d                                   ; $4f65: $11 $4d $fd
	sub  l                                           ; $4f68: $95
	ld   b, [hl]                                     ; $4f69: $46
	sbc  l                                           ; $4f6a: $9d
	db   $ed                                         ; $4f6b: $ed
	or   [hl]                                        ; $4f6c: $b6
	inc  [hl]                                        ; $4f6d: $34
	ld   a, d                                        ; $4f6e: $7a
	ld   h, c                                        ; $4f6f: $61
	rla                                              ; $4f70: $17
	call Call_0ee_75b9                               ; $4f71: $cd $b9 $75
	ld   l, c                                        ; $4f74: $69
	adc  $da                                         ; $4f75: $ce $da
	ld   d, h                                        ; $4f77: $54
	ld   d, a                                        ; $4f78: $57
	ld   [hl], h                                     ; $4f79: $74
	dec  h                                           ; $4f7a: $25
	sbc  e                                           ; $4f7b: $9b
	cp   c                                           ; $4f7c: $b9
	add  a                                           ; $4f7d: $87
	ld   l, c                                        ; $4f7e: $69
	cp   h                                           ; $4f7f: $bc
	cp   d                                           ; $4f80: $ba
	add  a                                           ; $4f81: $87
	ld   h, [hl]                                     ; $4f82: $66
	ld   [hl], a                                     ; $4f83: $77
	ld   b, e                                        ; $4f84: $43
	ld   l, c                                        ; $4f85: $69
	cp   h                                           ; $4f86: $bc
	sub  [hl]                                        ; $4f87: $96
	ld   h, [hl]                                     ; $4f88: $66
	xor  h                                           ; $4f89: $ac
	res  2, [hl]                                     ; $4f8a: $cb $96
	ld   h, a                                        ; $4f8c: $67
	adc  c                                           ; $4f8d: $89
	ld   [hl], e                                     ; $4f8e: $73
	ld   [hl], $9a                                   ; $4f8f: $36 $9a
	sbc  c                                           ; $4f91: $99
	add  [hl]                                        ; $4f92: $86
	ld   d, a                                        ; $4f93: $57
	cp   h                                           ; $4f94: $bc
	cp   b                                           ; $4f95: $b8
	ld   [hl], a                                     ; $4f96: $77
	ld   [hl], a                                     ; $4f97: $77

Jump_0ee_4f98:
	sub  a                                           ; $4f98: $97
	ld   d, h                                        ; $4f99: $54
	ld   l, b                                        ; $4f9a: $68
	sbc  c                                           ; $4f9b: $99
	sbc  b                                           ; $4f9c: $98
	halt                                             ; $4f9d: $76
	sbc  e                                           ; $4f9e: $9b
	xor  b                                           ; $4f9f: $a8
	adc  b                                           ; $4fa0: $88
	adc  c                                           ; $4fa1: $89
	ld   [hl], a                                     ; $4fa2: $77
	ld   d, l                                        ; $4fa3: $55
	ld   a, b                                        ; $4fa4: $78
	xor  d                                           ; $4fa5: $aa
	sub  a                                           ; $4fa6: $97
	ld   h, a                                        ; $4fa7: $67
	adc  c                                           ; $4fa8: $89
	xor  c                                           ; $4fa9: $a9
	sub  a                                           ; $4faa: $97
	ld   a, b                                        ; $4fab: $78
	adc  b                                           ; $4fac: $88
	halt                                             ; $4fad: $76
	ld   a, b                                        ; $4fae: $78
	sbc  c                                           ; $4faf: $99
	sbc  b                                           ; $4fb0: $98
	ld   [hl], a                                     ; $4fb1: $77
	ld   a, b                                        ; $4fb2: $78
	xor  d                                           ; $4fb3: $aa
	sbc  c                                           ; $4fb4: $99
	ld   [hl], a                                     ; $4fb5: $77
	ld   [hl], a                                     ; $4fb6: $77
	ld   [hl], a                                     ; $4fb7: $77
	adc  c                                           ; $4fb8: $89
	ld   [hl], a                                     ; $4fb9: $77
	adc  b                                           ; $4fba: $88
	sbc  c                                           ; $4fbb: $99
	add  a                                           ; $4fbc: $87
	ld   [hl], a                                     ; $4fbd: $77
	adc  b                                           ; $4fbe: $88
	adc  c                                           ; $4fbf: $89
	add  a                                           ; $4fc0: $87
	ld   h, a                                        ; $4fc1: $67
	adc  c                                           ; $4fc2: $89
	xor  b                                           ; $4fc3: $a8
	ld   [hl], a                                     ; $4fc4: $77
	ld   a, b                                        ; $4fc5: $78
	sbc  d                                           ; $4fc6: $9a
	sub  a                                           ; $4fc7: $97
	ld   h, [hl]                                     ; $4fc8: $66
	ld   a, b                                        ; $4fc9: $78
	adc  c                                           ; $4fca: $89
	sbc  b                                           ; $4fcb: $98
	ld   [hl], a                                     ; $4fcc: $77
	adc  b                                           ; $4fcd: $88
	adc  c                                           ; $4fce: $89
	adc  b                                           ; $4fcf: $88
	add  a                                           ; $4fd0: $87
	adc  b                                           ; $4fd1: $88
	add  a                                           ; $4fd2: $87
	ld   a, b                                        ; $4fd3: $78
	adc  b                                           ; $4fd4: $88
	add  a                                           ; $4fd5: $87
	adc  c                                           ; $4fd6: $89
	adc  b                                           ; $4fd7: $88
	adc  b                                           ; $4fd8: $88
	adc  c                                           ; $4fd9: $89
	adc  b                                           ; $4fda: $88
	adc  b                                           ; $4fdb: $88
	adc  b                                           ; $4fdc: $88
	adc  b                                           ; $4fdd: $88
	adc  b                                           ; $4fde: $88
	sbc  c                                           ; $4fdf: $99
	add  a                                           ; $4fe0: $87
	ld   a, b                                        ; $4fe1: $78
	sbc  b                                           ; $4fe2: $98
	sbc  b                                           ; $4fe3: $98
	adc  b                                           ; $4fe4: $88
	adc  b                                           ; $4fe5: $88
	adc  b                                           ; $4fe6: $88
	add  a                                           ; $4fe7: $87
	ld   [hl], a                                     ; $4fe8: $77
	adc  c                                           ; $4fe9: $89
	sbc  b                                           ; $4fea: $98
	add  a                                           ; $4feb: $87
	ld   a, b                                        ; $4fec: $78
	sbc  b                                           ; $4fed: $98
	sbc  b                                           ; $4fee: $98
	adc  b                                           ; $4fef: $88
	adc  b                                           ; $4ff0: $88
	sbc  c                                           ; $4ff1: $99
	adc  b                                           ; $4ff2: $88
	ld   [hl], a                                     ; $4ff3: $77
	adc  c                                           ; $4ff4: $89
	adc  c                                           ; $4ff5: $89
	add  a                                           ; $4ff6: $87
	adc  b                                           ; $4ff7: $88
	adc  b                                           ; $4ff8: $88
	adc  b                                           ; $4ff9: $88
	adc  b                                           ; $4ffa: $88
	adc  b                                           ; $4ffb: $88
	adc  b                                           ; $4ffc: $88
	add  a                                           ; $4ffd: $87
	adc  b                                           ; $4ffe: $88
	adc  c                                           ; $4fff: $89
	sbc  b                                           ; $5000: $98
	ld   a, b                                        ; $5001: $78
	adc  b                                           ; $5002: $88
	adc  b                                           ; $5003: $88
	adc  b                                           ; $5004: $88
	adc  b                                           ; $5005: $88
	adc  b                                           ; $5006: $88
	adc  b                                           ; $5007: $88
	adc  b                                           ; $5008: $88
	adc  b                                           ; $5009: $88
	adc  c                                           ; $500a: $89
	adc  b                                           ; $500b: $88
	ld   a, b                                        ; $500c: $78
	sbc  c                                           ; $500d: $99
	add  a                                           ; $500e: $87
	adc  b                                           ; $500f: $88
	adc  b                                           ; $5010: $88
	adc  b                                           ; $5011: $88
	adc  b                                           ; $5012: $88
	adc  b                                           ; $5013: $88
	adc  b                                           ; $5014: $88
	adc  c                                           ; $5015: $89
	adc  b                                           ; $5016: $88
	adc  b                                           ; $5017: $88
	adc  b                                           ; $5018: $88
	adc  b                                           ; $5019: $88
	sbc  b                                           ; $501a: $98
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
	adc  c                                           ; $5026: $89
	adc  b                                           ; $5027: $88
	adc  b                                           ; $5028: $88
	adc  c                                           ; $5029: $89
	sbc  c                                           ; $502a: $99
	sbc  b                                           ; $502b: $98
	adc  b                                           ; $502c: $88
	adc  c                                           ; $502d: $89
	adc  b                                           ; $502e: $88
	sbc  b                                           ; $502f: $98
	adc  b                                           ; $5030: $88
	sbc  b                                           ; $5031: $98
	adc  c                                           ; $5032: $89
	adc  b                                           ; $5033: $88
	adc  b                                           ; $5034: $88
	adc  c                                           ; $5035: $89
	adc  c                                           ; $5036: $89
	adc  b                                           ; $5037: $88
	adc  b                                           ; $5038: $88
	sbc  b                                           ; $5039: $98
	adc  c                                           ; $503a: $89
	sbc  c                                           ; $503b: $99
	adc  b                                           ; $503c: $88
	adc  c                                           ; $503d: $89
	adc  b                                           ; $503e: $88
	adc  b                                           ; $503f: $88
	sbc  c                                           ; $5040: $99
	sbc  b                                           ; $5041: $98
	adc  c                                           ; $5042: $89
	sbc  c                                           ; $5043: $99
	sbc  c                                           ; $5044: $99
	sbc  b                                           ; $5045: $98
	adc  c                                           ; $5046: $89
	adc  b                                           ; $5047: $88
	adc  c                                           ; $5048: $89
	adc  c                                           ; $5049: $89
	adc  b                                           ; $504a: $88
	adc  b                                           ; $504b: $88
	adc  b                                           ; $504c: $88
	adc  b                                           ; $504d: $88
	adc  b                                           ; $504e: $88
	adc  b                                           ; $504f: $88
	adc  b                                           ; $5050: $88
	adc  b                                           ; $5051: $88
	adc  b                                           ; $5052: $88
	adc  c                                           ; $5053: $89
	sbc  b                                           ; $5054: $98
	adc  b                                           ; $5055: $88
	adc  b                                           ; $5056: $88
	adc  b                                           ; $5057: $88
	sbc  c                                           ; $5058: $99
	adc  b                                           ; $5059: $88
	ld   a, b                                        ; $505a: $78
	sbc  b                                           ; $505b: $98
	adc  b                                           ; $505c: $88
	sbc  b                                           ; $505d: $98
	add  a                                           ; $505e: $87
	adc  b                                           ; $505f: $88
	sbc  b                                           ; $5060: $98
	adc  b                                           ; $5061: $88
	sbc  b                                           ; $5062: $98
	add  a                                           ; $5063: $87
	ld   a, b                                        ; $5064: $78
	sbc  d                                           ; $5065: $9a
	add  [hl]                                        ; $5066: $86
	ld   a, c                                        ; $5067: $79
	add  a                                           ; $5068: $87
	adc  b                                           ; $5069: $88
	sbc  b                                           ; $506a: $98
	ld   [hl], a                                     ; $506b: $77
	ld   a, c                                        ; $506c: $79
	xor  b                                           ; $506d: $a8
	ld   [hl], a                                     ; $506e: $77
	sbc  c                                           ; $506f: $99
	sbc  b                                           ; $5070: $98
	ld   [hl], a                                     ; $5071: $77
	adc  b                                           ; $5072: $88
	sbc  b                                           ; $5073: $98
	sbc  c                                           ; $5074: $99
	ld   [hl], a                                     ; $5075: $77
	ld   [hl], a                                     ; $5076: $77
	sbc  c                                           ; $5077: $99
	sbc  c                                           ; $5078: $99
	ld   [hl], a                                     ; $5079: $77
	ld   a, b                                        ; $507a: $78
	sbc  b                                           ; $507b: $98
	adc  b                                           ; $507c: $88
	ld   h, [hl]                                     ; $507d: $66
	sbc  d                                           ; $507e: $9a
	sbc  b                                           ; $507f: $98
	ld   [hl], a                                     ; $5080: $77
	adc  b                                           ; $5081: $88
	adc  b                                           ; $5082: $88
	ld   a, c                                        ; $5083: $79
	adc  b                                           ; $5084: $88
	adc  b                                           ; $5085: $88
	ld   [hl], a                                     ; $5086: $77
	ld   a, c                                        ; $5087: $79
	xor  c                                           ; $5088: $a9
	add  a                                           ; $5089: $87
	ld   h, [hl]                                     ; $508a: $66
	ld   a, d                                        ; $508b: $7a
	cp   c                                           ; $508c: $b9
	ld   [hl], l                                     ; $508d: $75
	ld   l, b                                        ; $508e: $68
	sbc  c                                           ; $508f: $99
	add  [hl]                                        ; $5090: $86
	ld   l, b                                        ; $5091: $68
	sbc  c                                           ; $5092: $99
	add  [hl]                                        ; $5093: $86
	ld   a, b                                        ; $5094: $78
	sbc  c                                           ; $5095: $99
	adc  b                                           ; $5096: $88
	halt                                             ; $5097: $76
	adc  c                                           ; $5098: $89
	sbc  b                                           ; $5099: $98
	ld   [hl], a                                     ; $509a: $77
	sbc  b                                           ; $509b: $98
	ld   a, b                                        ; $509c: $78
	adc  b                                           ; $509d: $88
	adc  c                                           ; $509e: $89
	adc  b                                           ; $509f: $88
	add  a                                           ; $50a0: $87
	ld   [hl], a                                     ; $50a1: $77
	ld   a, c                                        ; $50a2: $79
	ld   [hl], a                                     ; $50a3: $77
	adc  c                                           ; $50a4: $89
	adc  c                                           ; $50a5: $89
	ld   [hl], a                                     ; $50a6: $77
	adc  c                                           ; $50a7: $89
	sbc  b                                           ; $50a8: $98
	ld   [hl], a                                     ; $50a9: $77
	adc  b                                           ; $50aa: $88
	ld   a, b                                        ; $50ab: $78
	sub  a                                           ; $50ac: $97
	ld   a, b                                        ; $50ad: $78
	sbc  d                                           ; $50ae: $9a
	add  [hl]                                        ; $50af: $86
	ld   [hl], a                                     ; $50b0: $77
	adc  b                                           ; $50b1: $88
	ld   [hl], a                                     ; $50b2: $77
	adc  b                                           ; $50b3: $88
	sbc  b                                           ; $50b4: $98
	add  a                                           ; $50b5: $87
	ld   [hl], a                                     ; $50b6: $77
	ld   a, b                                        ; $50b7: $78
	sbc  c                                           ; $50b8: $99
	ld   a, b                                        ; $50b9: $78
	adc  b                                           ; $50ba: $88
	add  [hl]                                        ; $50bb: $86
	ld   h, a                                        ; $50bc: $67
	adc  c                                           ; $50bd: $89
	sbc  b                                           ; $50be: $98
	ld   [hl], a                                     ; $50bf: $77
	ld   [hl], a                                     ; $50c0: $77
	sbc  c                                           ; $50c1: $99
	sub  a                                           ; $50c2: $97
	ld   a, c                                        ; $50c3: $79
	sbc  b                                           ; $50c4: $98
	ld   h, a                                        ; $50c5: $67
	halt                                             ; $50c6: $76
	xor  c                                           ; $50c7: $a9
	adc  b                                           ; $50c8: $88
	ld   a, b                                        ; $50c9: $78
	sub  a                                           ; $50ca: $97
	adc  b                                           ; $50cb: $88
	add  a                                           ; $50cc: $87
	ld   a, b                                        ; $50cd: $78
	sub  a                                           ; $50ce: $97
	halt                                             ; $50cf: $76
	ld   h, a                                        ; $50d0: $67
	adc  c                                           ; $50d1: $89
	add  [hl]                                        ; $50d2: $86
	ld   a, b                                        ; $50d3: $78
	ld   a, b                                        ; $50d4: $78
	add  a                                           ; $50d5: $87
	ld   a, b                                        ; $50d6: $78
	sbc  c                                           ; $50d7: $99
	sbc  b                                           ; $50d8: $98
	ld   a, b                                        ; $50d9: $78
	add  a                                           ; $50da: $87
	ld   [hl], a                                     ; $50db: $77
	ld   [hl], a                                     ; $50dc: $77
	adc  c                                           ; $50dd: $89
	sub  a                                           ; $50de: $97
	adc  c                                           ; $50df: $89
	adc  c                                           ; $50e0: $89
	adc  b                                           ; $50e1: $88
	add  a                                           ; $50e2: $87
	adc  c                                           ; $50e3: $89
	sbc  c                                           ; $50e4: $99
	ld   [hl], a                                     ; $50e5: $77
	adc  c                                           ; $50e6: $89
	sbc  d                                           ; $50e7: $9a
	add  [hl]                                        ; $50e8: $86
	ld   a, c                                        ; $50e9: $79
	sbc  c                                           ; $50ea: $99
	ld   [hl], a                                     ; $50eb: $77
	ld   [hl], a                                     ; $50ec: $77
	sbc  c                                           ; $50ed: $99
	adc  b                                           ; $50ee: $88
	ld   a, c                                        ; $50ef: $79
	adc  c                                           ; $50f0: $89
	add  a                                           ; $50f1: $87
	ld   [hl], a                                     ; $50f2: $77
	adc  d                                           ; $50f3: $8a
	add  a                                           ; $50f4: $87
	halt                                             ; $50f5: $76
	ld   [hl], a                                     ; $50f6: $77
	sbc  c                                           ; $50f7: $99
	add  a                                           ; $50f8: $87
	ld   a, b                                        ; $50f9: $78
	sbc  b                                           ; $50fa: $98
	add  a                                           ; $50fb: $87
	ld   a, b                                        ; $50fc: $78
	sub  a                                           ; $50fd: $97
	ld   l, b                                        ; $50fe: $68
	ld   a, b                                        ; $50ff: $78
	add  a                                           ; $5100: $87
	ld   a, b                                        ; $5101: $78
	adc  b                                           ; $5102: $88
	adc  b                                           ; $5103: $88
	sbc  b                                           ; $5104: $98
	ld   [hl], a                                     ; $5105: $77
	add  a                                           ; $5106: $87
	ld   a, b                                        ; $5107: $78
	ld   a, b                                        ; $5108: $78
	sub  a                                           ; $5109: $97
	ld   a, b                                        ; $510a: $78
	ld   a, c                                        ; $510b: $79
	adc  c                                           ; $510c: $89
	sbc  b                                           ; $510d: $98
	ld   a, b                                        ; $510e: $78
	add  a                                           ; $510f: $87
	adc  b                                           ; $5110: $88
	ld   a, b                                        ; $5111: $78
	add  a                                           ; $5112: $87
	adc  b                                           ; $5113: $88
	sbc  c                                           ; $5114: $99
	sbc  d                                           ; $5115: $9a
	sub  a                                           ; $5116: $97
	ld   h, [hl]                                     ; $5117: $66
	ld   a, b                                        ; $5118: $78
	adc  c                                           ; $5119: $89
	adc  b                                           ; $511a: $88
	sbc  c                                           ; $511b: $99
	sub  a                                           ; $511c: $97
	add  a                                           ; $511d: $87
	sbc  c                                           ; $511e: $99
	adc  b                                           ; $511f: $88
	ld   [hl], a                                     ; $5120: $77
	adc  c                                           ; $5121: $89
	ld   [hl], a                                     ; $5122: $77
	ld   [hl], a                                     ; $5123: $77
	adc  c                                           ; $5124: $89
	sbc  c                                           ; $5125: $99
	sbc  b                                           ; $5126: $98
	sub  a                                           ; $5127: $97
	add  a                                           ; $5128: $87
	sbc  c                                           ; $5129: $99
	ld   [hl], a                                     ; $512a: $77
	sbc  b                                           ; $512b: $98
	ld   a, b                                        ; $512c: $78
	ld   a, c                                        ; $512d: $79
	sbc  b                                           ; $512e: $98
	adc  c                                           ; $512f: $89
	adc  c                                           ; $5130: $89
	halt                                             ; $5131: $76
	ld   [hl], a                                     ; $5132: $77
	adc  c                                           ; $5133: $89
	adc  b                                           ; $5134: $88
	sbc  b                                           ; $5135: $98
	sbc  b                                           ; $5136: $98
	ld   [hl], a                                     ; $5137: $77
	adc  c                                           ; $5138: $89
	sbc  b                                           ; $5139: $98
	sbc  b                                           ; $513a: $98
	ld   [hl], a                                     ; $513b: $77
	adc  c                                           ; $513c: $89
	adc  c                                           ; $513d: $89
	adc  c                                           ; $513e: $89
	add  a                                           ; $513f: $87
	adc  c                                           ; $5140: $89
	adc  c                                           ; $5141: $89
	sbc  b                                           ; $5142: $98
	sbc  c                                           ; $5143: $99
	ld   [hl], a                                     ; $5144: $77
	ld   a, b                                        ; $5145: $78
	sbc  c                                           ; $5146: $99
	sub  a                                           ; $5147: $97
	adc  b                                           ; $5148: $88
	ld   a, b                                        ; $5149: $78
	adc  b                                           ; $514a: $88
	adc  b                                           ; $514b: $88
	adc  b                                           ; $514c: $88
	adc  b                                           ; $514d: $88
	sbc  b                                           ; $514e: $98
	adc  b                                           ; $514f: $88
	sbc  b                                           ; $5150: $98
	add  a                                           ; $5151: $87
	adc  b                                           ; $5152: $88
	add  a                                           ; $5153: $87
	ld   a, c                                        ; $5154: $79
	sbc  b                                           ; $5155: $98
	adc  b                                           ; $5156: $88
	sbc  c                                           ; $5157: $99
	adc  c                                           ; $5158: $89
	add  a                                           ; $5159: $87
	ld   a, b                                        ; $515a: $78
	add  a                                           ; $515b: $87
	ld   [hl], a                                     ; $515c: $77
	adc  b                                           ; $515d: $88
	add  a                                           ; $515e: $87
	adc  c                                           ; $515f: $89
	sbc  b                                           ; $5160: $98
	ld   a, b                                        ; $5161: $78
	add  a                                           ; $5162: $87
	add  a                                           ; $5163: $87
	ld   a, c                                        ; $5164: $79
	adc  b                                           ; $5165: $88
	ld   [hl], a                                     ; $5166: $77
	ld   a, b                                        ; $5167: $78
	sub  a                                           ; $5168: $97
	adc  b                                           ; $5169: $88
	sbc  c                                           ; $516a: $99
	add  a                                           ; $516b: $87
	adc  b                                           ; $516c: $88
	ld   [hl], a                                     ; $516d: $77
	ld   a, b                                        ; $516e: $78
	adc  c                                           ; $516f: $89
	adc  b                                           ; $5170: $88
	add  a                                           ; $5171: $87
	adc  c                                           ; $5172: $89
	add  a                                           ; $5173: $87
	adc  b                                           ; $5174: $88
	sbc  c                                           ; $5175: $99
	sbc  b                                           ; $5176: $98
	ld   a, b                                        ; $5177: $78
	sbc  c                                           ; $5178: $99
	adc  b                                           ; $5179: $88
	adc  c                                           ; $517a: $89
	adc  c                                           ; $517b: $89
	ld   a, b                                        ; $517c: $78
	ld   [hl], a                                     ; $517d: $77
	adc  c                                           ; $517e: $89
	adc  b                                           ; $517f: $88
	adc  b                                           ; $5180: $88
	sbc  b                                           ; $5181: $98
	ld   [hl], a                                     ; $5182: $77
	sbc  b                                           ; $5183: $98
	adc  b                                           ; $5184: $88
	ld   a, b                                        ; $5185: $78
	sub  a                                           ; $5186: $97
	ld   a, c                                        ; $5187: $79
	adc  b                                           ; $5188: $88
	sbc  b                                           ; $5189: $98
	ld   a, b                                        ; $518a: $78
	adc  b                                           ; $518b: $88
	sub  a                                           ; $518c: $97
	adc  c                                           ; $518d: $89
	sbc  c                                           ; $518e: $99
	add  a                                           ; $518f: $87
	ld   a, b                                        ; $5190: $78
	adc  c                                           ; $5191: $89
	sbc  b                                           ; $5192: $98
	adc  b                                           ; $5193: $88
	adc  c                                           ; $5194: $89
	sbc  b                                           ; $5195: $98
	add  a                                           ; $5196: $87
	adc  b                                           ; $5197: $88
	adc  b                                           ; $5198: $88
	ld   [hl], a                                     ; $5199: $77
	sbc  c                                           ; $519a: $99
	adc  b                                           ; $519b: $88
	ld   a, b                                        ; $519c: $78
	adc  b                                           ; $519d: $88
	ld   [hl], a                                     ; $519e: $77
	adc  c                                           ; $519f: $89
	adc  b                                           ; $51a0: $88
	adc  b                                           ; $51a1: $88
	adc  b                                           ; $51a2: $88
	adc  b                                           ; $51a3: $88
	sbc  b                                           ; $51a4: $98
	sbc  b                                           ; $51a5: $98
	adc  b                                           ; $51a6: $88
	ld   [hl], a                                     ; $51a7: $77
	sbc  c                                           ; $51a8: $99
	add  a                                           ; $51a9: $87
	ld   a, c                                        ; $51aa: $79
	xor  b                                           ; $51ab: $a8
	ld   a, b                                        ; $51ac: $78
	sbc  b                                           ; $51ad: $98
	ld   [hl], a                                     ; $51ae: $77
	sbc  b                                           ; $51af: $98
	sub  a                                           ; $51b0: $97
	ld   [hl], a                                     ; $51b1: $77
	adc  c                                           ; $51b2: $89
	add  a                                           ; $51b3: $87
	adc  b                                           ; $51b4: $88
	adc  b                                           ; $51b5: $88
	adc  b                                           ; $51b6: $88
	adc  b                                           ; $51b7: $88
	adc  c                                           ; $51b8: $89
	ld   a, b                                        ; $51b9: $78
	ld   [hl], a                                     ; $51ba: $77
	sbc  b                                           ; $51bb: $98
	adc  b                                           ; $51bc: $88
	ld   a, b                                        ; $51bd: $78
	adc  c                                           ; $51be: $89
	adc  b                                           ; $51bf: $88
	adc  b                                           ; $51c0: $88
	ld   a, b                                        ; $51c1: $78
	add  a                                           ; $51c2: $87
	ld   a, b                                        ; $51c3: $78
	adc  b                                           ; $51c4: $88
	adc  b                                           ; $51c5: $88
	adc  c                                           ; $51c6: $89
	adc  b                                           ; $51c7: $88
	sbc  b                                           ; $51c8: $98
	adc  c                                           ; $51c9: $89
	adc  b                                           ; $51ca: $88
	ld   [hl], a                                     ; $51cb: $77

Call_0ee_51cc:
	ld   a, b                                        ; $51cc: $78
	adc  b                                           ; $51cd: $88
	sbc  c                                           ; $51ce: $99
	adc  b                                           ; $51cf: $88
	adc  c                                           ; $51d0: $89
	adc  b                                           ; $51d1: $88
	adc  b                                           ; $51d2: $88
	adc  b                                           ; $51d3: $88
	adc  b                                           ; $51d4: $88
	adc  b                                           ; $51d5: $88
	adc  b                                           ; $51d6: $88
	adc  b                                           ; $51d7: $88
	adc  b                                           ; $51d8: $88
	ld   a, c                                        ; $51d9: $79
	adc  b                                           ; $51da: $88
	adc  b                                           ; $51db: $88
	ld   a, b                                        ; $51dc: $78
	sbc  b                                           ; $51dd: $98
	adc  b                                           ; $51de: $88
	adc  b                                           ; $51df: $88
	sbc  c                                           ; $51e0: $99
	ld   a, b                                        ; $51e1: $78
	adc  b                                           ; $51e2: $88
	adc  b                                           ; $51e3: $88
	adc  b                                           ; $51e4: $88
	sbc  b                                           ; $51e5: $98
	adc  b                                           ; $51e6: $88
	add  a                                           ; $51e7: $87
	adc  b                                           ; $51e8: $88
	adc  c                                           ; $51e9: $89
	adc  b                                           ; $51ea: $88
	adc  b                                           ; $51eb: $88
	adc  b                                           ; $51ec: $88
	add  a                                           ; $51ed: $87
	adc  c                                           ; $51ee: $89
	adc  b                                           ; $51ef: $88
	sbc  b                                           ; $51f0: $98
	adc  c                                           ; $51f1: $89
	adc  c                                           ; $51f2: $89
	sub  a                                           ; $51f3: $97
	adc  c                                           ; $51f4: $89
	ld   [hl], a                                     ; $51f5: $77
	sbc  b                                           ; $51f6: $98
	ld   a, c                                        ; $51f7: $79
	adc  b                                           ; $51f8: $88
	adc  b                                           ; $51f9: $88
	ld   a, b                                        ; $51fa: $78
	add  a                                           ; $51fb: $87
	adc  c                                           ; $51fc: $89
	adc  b                                           ; $51fd: $88
	adc  b                                           ; $51fe: $88
	adc  b                                           ; $51ff: $88
	adc  b                                           ; $5200: $88
	adc  b                                           ; $5201: $88
	sbc  b                                           ; $5202: $98
	add  a                                           ; $5203: $87
	adc  b                                           ; $5204: $88
	ld   [hl], a                                     ; $5205: $77
	adc  b                                           ; $5206: $88
	adc  c                                           ; $5207: $89
	sbc  c                                           ; $5208: $99
	adc  b                                           ; $5209: $88
	adc  b                                           ; $520a: $88
	adc  b                                           ; $520b: $88
	sbc  b                                           ; $520c: $98
	adc  b                                           ; $520d: $88
	adc  b                                           ; $520e: $88
	adc  b                                           ; $520f: $88
	adc  b                                           ; $5210: $88
	sbc  b                                           ; $5211: $98
	sbc  b                                           ; $5212: $98
	ld   a, b                                        ; $5213: $78
	adc  b                                           ; $5214: $88
	adc  b                                           ; $5215: $88
	ld   a, b                                        ; $5216: $78
	adc  b                                           ; $5217: $88
	adc  b                                           ; $5218: $88
	adc  b                                           ; $5219: $88
	sbc  c                                           ; $521a: $99
	add  a                                           ; $521b: $87
	adc  c                                           ; $521c: $89
	adc  b                                           ; $521d: $88
	adc  b                                           ; $521e: $88
	adc  b                                           ; $521f: $88
	ld   a, b                                        ; $5220: $78
	adc  b                                           ; $5221: $88
	adc  b                                           ; $5222: $88
	adc  b                                           ; $5223: $88
	sbc  c                                           ; $5224: $99
	adc  b                                           ; $5225: $88
	adc  b                                           ; $5226: $88
	adc  b                                           ; $5227: $88
	adc  b                                           ; $5228: $88
	adc  b                                           ; $5229: $88
	adc  b                                           ; $522a: $88
	add  a                                           ; $522b: $87
	ld   a, c                                        ; $522c: $79
	adc  b                                           ; $522d: $88
	sbc  b                                           ; $522e: $98
	sbc  b                                           ; $522f: $98
	ld   [hl], a                                     ; $5230: $77
	adc  b                                           ; $5231: $88
	adc  c                                           ; $5232: $89
	adc  b                                           ; $5233: $88
	sbc  b                                           ; $5234: $98
	ld   a, b                                        ; $5235: $78
	adc  b                                           ; $5236: $88
	adc  c                                           ; $5237: $89
	adc  c                                           ; $5238: $89
	adc  b                                           ; $5239: $88
	adc  b                                           ; $523a: $88
	ld   a, b                                        ; $523b: $78
	adc  b                                           ; $523c: $88
	adc  b                                           ; $523d: $88
	adc  b                                           ; $523e: $88
	adc  b                                           ; $523f: $88
	sbc  b                                           ; $5240: $98
	adc  b                                           ; $5241: $88
	adc  b                                           ; $5242: $88
	adc  c                                           ; $5243: $89
	sbc  b                                           ; $5244: $98
	adc  b                                           ; $5245: $88
	adc  b                                           ; $5246: $88
	adc  b                                           ; $5247: $88
	adc  b                                           ; $5248: $88
	sbc  c                                           ; $5249: $99
	add  a                                           ; $524a: $87
	adc  b                                           ; $524b: $88
	sbc  b                                           ; $524c: $98
	ld   [hl], a                                     ; $524d: $77
	adc  c                                           ; $524e: $89
	sbc  b                                           ; $524f: $98
	adc  b                                           ; $5250: $88
	adc  b                                           ; $5251: $88
	adc  b                                           ; $5252: $88
	adc  b                                           ; $5253: $88
	sbc  b                                           ; $5254: $98
	adc  b                                           ; $5255: $88
	adc  b                                           ; $5256: $88
	adc  b                                           ; $5257: $88
	adc  b                                           ; $5258: $88
	adc  b                                           ; $5259: $88
	adc  b                                           ; $525a: $88
	adc  b                                           ; $525b: $88
	adc  c                                           ; $525c: $89
	adc  b                                           ; $525d: $88
	adc  b                                           ; $525e: $88
	adc  c                                           ; $525f: $89
	adc  b                                           ; $5260: $88
	adc  b                                           ; $5261: $88
	adc  c                                           ; $5262: $89
	add  a                                           ; $5263: $87
	adc  b                                           ; $5264: $88
	adc  b                                           ; $5265: $88
	adc  b                                           ; $5266: $88
	adc  c                                           ; $5267: $89
	adc  b                                           ; $5268: $88
	sbc  b                                           ; $5269: $98
	adc  b                                           ; $526a: $88
	adc  b                                           ; $526b: $88
	adc  b                                           ; $526c: $88
	adc  b                                           ; $526d: $88
	ld   a, b                                        ; $526e: $78
	add  a                                           ; $526f: $87
	adc  b                                           ; $5270: $88
	adc  b                                           ; $5271: $88
	adc  c                                           ; $5272: $89
	sbc  b                                           ; $5273: $98
	sbc  b                                           ; $5274: $98
	ld   a, b                                        ; $5275: $78
	sbc  b                                           ; $5276: $98
	adc  b                                           ; $5277: $88
	ld   a, b                                        ; $5278: $78
	sbc  b                                           ; $5279: $98
	adc  b                                           ; $527a: $88
	adc  b                                           ; $527b: $88
	adc  b                                           ; $527c: $88
	sbc  b                                           ; $527d: $98
	adc  b                                           ; $527e: $88
	adc  b                                           ; $527f: $88
	adc  b                                           ; $5280: $88
	adc  b                                           ; $5281: $88
	adc  b                                           ; $5282: $88
	adc  b                                           ; $5283: $88
	adc  b                                           ; $5284: $88
	adc  b                                           ; $5285: $88
	adc  b                                           ; $5286: $88
	sbc  b                                           ; $5287: $98
	adc  b                                           ; $5288: $88
	adc  b                                           ; $5289: $88
	adc  b                                           ; $528a: $88
	ld   a, b                                        ; $528b: $78
	adc  b                                           ; $528c: $88
	adc  b                                           ; $528d: $88
	add  a                                           ; $528e: $87
	adc  b                                           ; $528f: $88
	adc  b                                           ; $5290: $88
	add  a                                           ; $5291: $87
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
	adc  c                                           ; $529e: $89
	adc  b                                           ; $529f: $88
	adc  b                                           ; $52a0: $88
	adc  b                                           ; $52a1: $88
	adc  b                                           ; $52a2: $88
	adc  b                                           ; $52a3: $88
	sbc  b                                           ; $52a4: $98
	adc  b                                           ; $52a5: $88
	adc  b                                           ; $52a6: $88
	sbc  b                                           ; $52a7: $98
	adc  b                                           ; $52a8: $88
	adc  b                                           ; $52a9: $88
	adc  b                                           ; $52aa: $88
	adc  b                                           ; $52ab: $88
	adc  b                                           ; $52ac: $88
	adc  b                                           ; $52ad: $88
	adc  b                                           ; $52ae: $88
	adc  c                                           ; $52af: $89
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
	ld   a, b                                        ; $52bd: $78
	adc  b                                           ; $52be: $88
	adc  b                                           ; $52bf: $88
	adc  c                                           ; $52c0: $89
	add  a                                           ; $52c1: $87
	adc  b                                           ; $52c2: $88
	adc  b                                           ; $52c3: $88
	adc  b                                           ; $52c4: $88
	adc  b                                           ; $52c5: $88
	adc  b                                           ; $52c6: $88
	adc  b                                           ; $52c7: $88
	adc  b                                           ; $52c8: $88
	adc  b                                           ; $52c9: $88
	adc  b                                           ; $52ca: $88
	sbc  b                                           ; $52cb: $98
	add  a                                           ; $52cc: $87
	adc  b                                           ; $52cd: $88
	adc  b                                           ; $52ce: $88
	adc  b                                           ; $52cf: $88
	adc  b                                           ; $52d0: $88
	adc  b                                           ; $52d1: $88
	add  a                                           ; $52d2: $87
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
	ld   a, b                                        ; $52e5: $78
	adc  b                                           ; $52e6: $88
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	adc  b                                           ; $52ea: $88
	adc  b                                           ; $52eb: $88
	sbc  b                                           ; $52ec: $98
	ld   a, b                                        ; $52ed: $78
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
	sbc  b                                           ; $530c: $98
	adc  b                                           ; $530d: $88
	adc  b                                           ; $530e: $88
	adc  b                                           ; $530f: $88
	adc  b                                           ; $5310: $88
	adc  b                                           ; $5311: $88
	adc  b                                           ; $5312: $88
	adc  b                                           ; $5313: $88
	adc  b                                           ; $5314: $88
	adc  b                                           ; $5315: $88
	sbc  b                                           ; $5316: $98
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

Call_0ee_54a7:
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

Jump_0ee_5575:
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
	adc  c                                           ; $5694: $89
	sub  a                                           ; $5695: $97
	adc  c                                           ; $5696: $89
	ld   a, c                                        ; $5697: $79
	adc  b                                           ; $5698: $88
	adc  b                                           ; $5699: $88
	ld   a, c                                        ; $569a: $79
	add  a                                           ; $569b: $87
	sbc  b                                           ; $569c: $98
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
	sub  a                                           ; $56b0: $97
	adc  b                                           ; $56b1: $88
	ld   a, b                                        ; $56b2: $78
	adc  b                                           ; $56b3: $88
	adc  b                                           ; $56b4: $88
	adc  b                                           ; $56b5: $88
	adc  b                                           ; $56b6: $88
	adc  b                                           ; $56b7: $88
	adc  b                                           ; $56b8: $88
	sbc  b                                           ; $56b9: $98
	adc  b                                           ; $56ba: $88
	adc  b                                           ; $56bb: $88
	adc  c                                           ; $56bc: $89
	adc  c                                           ; $56bd: $89
	adc  b                                           ; $56be: $88
	adc  b                                           ; $56bf: $88
	adc  b                                           ; $56c0: $88
	adc  b                                           ; $56c1: $88
	adc  b                                           ; $56c2: $88
	sub  a                                           ; $56c3: $97
	adc  b                                           ; $56c4: $88
	ld   a, b                                        ; $56c5: $78
	adc  b                                           ; $56c6: $88
	adc  b                                           ; $56c7: $88
	adc  b                                           ; $56c8: $88
	adc  b                                           ; $56c9: $88
	sbc  b                                           ; $56ca: $98
	ld   a, c                                        ; $56cb: $79
	adc  b                                           ; $56cc: $88
	ld   a, b                                        ; $56cd: $78
	add  a                                           ; $56ce: $87
	sbc  b                                           ; $56cf: $98
	sbc  b                                           ; $56d0: $98
	adc  d                                           ; $56d1: $8a
	ld   l, b                                        ; $56d2: $68
	sub  a                                           ; $56d3: $97
	adc  b                                           ; $56d4: $88
	ld   a, c                                        ; $56d5: $79
	adc  b                                           ; $56d6: $88
	ld   a, c                                        ; $56d7: $79
	add  [hl]                                        ; $56d8: $86
	or   a                                           ; $56d9: $b7
	adc  d                                           ; $56da: $8a
	ld   a, b                                        ; $56db: $78
	sub  a                                           ; $56dc: $97
	and  a                                           ; $56dd: $a7
	ld   a, e                                        ; $56de: $7b
	ld   h, a                                        ; $56df: $67
	and  [hl]                                        ; $56e0: $a6
	adc  e                                           ; $56e1: $8b
	ld   c, d                                        ; $56e2: $4a
	and  h                                           ; $56e3: $a4
	add  $9a                                         ; $56e4: $c6 $9a
	ld   c, d                                        ; $56e6: $4a
	and  h                                           ; $56e7: $a4
	adc  d                                           ; $56e8: $8a
	ld   a, b                                        ; $56e9: $78
	ld   l, d                                        ; $56ea: $6a
	sub  h                                           ; $56eb: $94
	cp   c                                           ; $56ec: $b9
	ld   l, d                                        ; $56ed: $6a
	add  l                                           ; $56ee: $85
	and  [hl]                                        ; $56ef: $a6
	sbc  b                                           ; $56f0: $98
	ld   c, h                                        ; $56f1: $4c
	ld   e, e                                        ; $56f2: $5b
	ld   h, a                                        ; $56f3: $67
	and  a                                           ; $56f4: $a7
	jp   nz, Jump_0ee_7ac6                           ; $56f5: $c2 $c6 $7a

	ld   c, d                                        ; $56f8: $4a
	adc  b                                           ; $56f9: $88
	adc  d                                           ; $56fa: $8a
	ld   a, b                                        ; $56fb: $78
	sub  a                                           ; $56fc: $97
	sub  l                                           ; $56fd: $95
	cp   c                                           ; $56fe: $b9
	ld   e, e                                        ; $56ff: $5b
	ld   l, c                                        ; $5700: $69
	ld   e, d                                        ; $5701: $5a
	sub  d                                           ; $5702: $92
	sub  $aa                                         ; $5703: $d6 $aa
	ld   l, e                                        ; $5705: $6b
	ld   e, c                                        ; $5706: $59
	sub  [hl]                                        ; $5707: $96
	sbc  c                                           ; $5708: $99
	ld   l, c                                        ; $5709: $69
	sub  a                                           ; $570a: $97
	and  l                                           ; $570b: $a5
	xor  b                                           ; $570c: $a8
	ld   e, l                                        ; $570d: $5d
	add  hl, sp                                      ; $570e: $39
	and  l                                           ; $570f: $a5
	adc  h                                           ; $5710: $8c
	adc  c                                           ; $5711: $89
	jp   Jump_0ee_7788                               ; $5712: $c3 $88 $77


	ld   a, c                                        ; $5715: $79
	add  $67                                         ; $5716: $c6 $67
	adc  b                                           ; $5718: $88
	ld   a, d                                        ; $5719: $7a
	ld   c, a                                        ; $571a: $4f
	ld   e, b                                        ; $571b: $58
	sub  e                                           ; $571c: $93
	add  $77                                         ; $571d: $c6 $77
	jp   Jump_0ee_4db9                               ; $571f: $c3 $b9 $4d


	ld   a, e                                        ; $5722: $7b
	add  hl, sp                                      ; $5723: $39
	ld   a, d                                        ; $5724: $7a
	ld   [hl], l                                     ; $5725: $75
	add  $f1                                         ; $5726: $c6 $f1
	sbc  a                                           ; $5728: $9f
	rra                                              ; $5729: $1f
	scf                                              ; $572a: $37
	db   $e3                                         ; $572b: $e3
	sbc  l                                           ; $572c: $9d
	ld   a, [de]                                     ; $572d: $1a
	and  c                                           ; $572e: $a1
	db   $f4                                         ; $572f: $f4
	cp   e                                           ; $5730: $bb
	ld   a, e                                        ; $5731: $7b
	sub  l                                           ; $5732: $95
	ld   l, d                                        ; $5733: $6a
	ld   l, a                                        ; $5734: $6f
	rra                                              ; $5735: $1f
	or   c                                           ; $5736: $b1
	pop  af                                          ; $5737: $f1
	xor  l                                           ; $5738: $ad
	ld   c, h                                        ; $5739: $4c
	ld   e, c                                        ; $573a: $59
	xor  h                                           ; $573b: $ac
	ld   a, $73                                      ; $573c: $3e $73
	ret  c                                           ; $573e: $d8

	ld   e, c                                        ; $573f: $59
	pop  bc                                          ; $5740: $c1
	rst  $10                                         ; $5741: $d7
	ld   e, h                                        ; $5742: $5c
	dec  sp                                          ; $5743: $3b
	sbc  c                                           ; $5744: $99
	and  [hl]                                        ; $5745: $a6
	ld   e, l                                        ; $5746: $5d
	ld   h, [hl]                                     ; $5747: $66
	jp   nz, $cbe2                                   ; $5748: $c2 $e2 $cb

	ld   e, $19                                      ; $574b: $1e $19
	ld   l, d                                        ; $574d: $6a
	or   c                                           ; $574e: $b1
	pop  af                                          ; $574f: $f1
	xor  h                                           ; $5750: $ac
	inc  a                                           ; $5751: $3c
	ld   a, d                                        ; $5752: $7a
	ld   b, a                                        ; $5753: $47
	ld   a, c                                        ; $5754: $79
	sub  [hl]                                        ; $5755: $96
	add  c                                           ; $5756: $81
	rst  $10                                         ; $5757: $d7
	adc  h                                           ; $5758: $8c
	ld   b, [hl]                                     ; $5759: $46
	adc  d                                           ; $575a: $8a
	inc  a                                           ; $575b: $3c
	halt                                             ; $575c: $76
	sub  e                                           ; $575d: $93
	db   $f4                                         ; $575e: $f4
	ld   e, b                                        ; $575f: $58
	ld   a, [hl-]                                    ; $5760: $3a
	adc  c                                           ; $5761: $89
	ld   a, b                                        ; $5762: $78
	rla                                              ; $5763: $17
	push hl                                          ; $5764: $e5
	call nc, $4d5b                                   ; $5765: $d4 $5b $4d
	add  h                                           ; $5768: $84
	sbc  b                                           ; $5769: $98
	ld   l, b                                        ; $576a: $68
	rst  $10                                         ; $576b: $d7
	sub  [hl]                                        ; $576c: $96
	halt                                             ; $576d: $76
	adc  b                                           ; $576e: $88
	ld   e, $38                                      ; $576f: $1e $38
	sbc  b                                           ; $5771: $98
	or   d                                           ; $5772: $b2
	cp   d                                           ; $5773: $ba
	ld   e, e                                        ; $5774: $5b
	ld   d, e                                        ; $5775: $53

Jump_0ee_5776:
	push af                                          ; $5776: $f5
	cp   b                                           ; $5777: $b8
	ld   c, b                                        ; $5778: $48
	cpl                                              ; $5779: $2f
	sbc  e                                           ; $577a: $9b
	add  c                                           ; $577b: $81
	adc  [hl]                                        ; $577c: $8e
	ret  z                                           ; $577d: $c8

	add  [hl]                                        ; $577e: $86
	sbc  c                                           ; $577f: $99
	inc  [hl]                                        ; $5780: $34
	ld   [hl], d                                     ; $5781: $72
	ld   d, l                                        ; $5782: $55
	halt                                             ; $5783: $76
	dec  sp                                          ; $5784: $3b
	ld   h, h                                        ; $5785: $64
	call z, $af5c                                    ; $5786: $cc $5c $af
	call z, $f7da                                    ; $5789: $cc $da $f7
	ret                                              ; $578c: $c9


	dec  h                                           ; $578d: $25
	ld   h, l                                        ; $578e: $65
	dec  h                                           ; $578f: $25
	ld   de, $1321                                   ; $5790: $11 $21 $13
	ld   b, c                                        ; $5793: $41
	call $febf                                       ; $5794: $cd $bf $fe
	rst  $38                                         ; $5797: $ff
	rst  $38                                         ; $5798: $ff
	xor  [hl]                                        ; $5799: $ae
	ld   sp, hl                                      ; $579a: $f9
	sub  h                                           ; $579b: $94
	ld   b, d                                        ; $579c: $42
	ld   de, $1111                                   ; $579d: $11 $11 $11
	ld   de, $af15                                   ; $57a0: $11 $15 $af
	rst  $38                                         ; $57a3: $ff
	rst  $38                                         ; $57a4: $ff
	rst  $38                                         ; $57a5: $ff
	rst  $38                                         ; $57a6: $ff
	rst  $38                                         ; $57a7: $ff
	cp   h                                           ; $57a8: $bc
	sub  c                                           ; $57a9: $91
	ld   de, $1111                                   ; $57aa: $11 $11 $11
	ld   de, $2111                                   ; $57ad: $11 $11 $21
	sbc  a                                           ; $57b0: $9f
	rst  $38                                         ; $57b1: $ff
	rst  $38                                         ; $57b2: $ff
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	rst  $38                                         ; $57b5: $ff
	sbc  a                                           ; $57b6: $9f
	ld   h, c                                        ; $57b7: $61
	ld   de, $1111                                   ; $57b8: $11 $11 $11
	ld   de, $1111                                   ; $57bb: $11 $11 $11
	rst  $38                                         ; $57be: $ff
	rst  $38                                         ; $57bf: $ff
	rst  $38                                         ; $57c0: $ff
	rst  $38                                         ; $57c1: $ff
	cp   a                                           ; $57c2: $bf
	rst  $38                                         ; $57c3: $ff
	and  $11                                         ; $57c4: $e6 $11
	ld   de, $1111                                   ; $57c6: $11 $11 $11
	ld   de, $7f15                                   ; $57c9: $11 $15 $7f
	rst  $38                                         ; $57cc: $ff
	rst  $38                                         ; $57cd: $ff
	rst  $38                                         ; $57ce: $ff
	sbc  $ff                                         ; $57cf: $de $ff
	db   $fd                                         ; $57d1: $fd
	ld   sp, $1111                                   ; $57d2: $31 $11 $11
	ld   de, $1111                                   ; $57d5: $11 $11 $11
	rra                                              ; $57d8: $1f
	rst  $38                                         ; $57d9: $ff
	rst  $38                                         ; $57da: $ff
	rst  $38                                         ; $57db: $ff
	ld   sp, hl                                      ; $57dc: $f9
	rst  $38                                         ; $57dd: $ff
	cp   a                                           ; $57de: $bf
	ld   de, $1111                                   ; $57df: $11 $11 $11
	ld   de, $1411                                   ; $57e2: $11 $11 $14
	rst  $38                                         ; $57e5: $ff
	rst  $38                                         ; $57e6: $ff
	rst  $38                                         ; $57e7: $ff
	di                                               ; $57e8: $f3
	cp   $ff                                         ; $57e9: $fe $ff
	call nc, $1111                                   ; $57eb: $d4 $11 $11
	ld   de, $1111                                   ; $57ee: $11 $11 $11
	ld   a, a                                        ; $57f1: $7f
	rst  $38                                         ; $57f2: $ff
	rst  $38                                         ; $57f3: $ff
	ei                                               ; $57f4: $fb
	sbc  c                                           ; $57f5: $99
	rst  $38                                         ; $57f6: $ff
	cp   $31                                         ; $57f7: $fe $31
	ld   de, $1111                                   ; $57f9: $11 $11 $11
	ld   b, l                                        ; $57fc: $45
	sbc  a                                           ; $57fd: $9f
	rst  $38                                         ; $57fe: $ff
	rst  $38                                         ; $57ff: $ff
	rst  $30                                         ; $5800: $f7
	ld   sp, $ffcf                                   ; $5801: $31 $cf $ff
	ld   hl, $1111                                   ; $5804: $21 $11 $11
	inc  d                                           ; $5807: $14
	adc  e                                           ; $5808: $8b
	rst  $28                                         ; $5809: $ef
	rst  $38                                         ; $580a: $ff
	rst  $38                                         ; $580b: $ff
	ld   hl, sp+$12                                  ; $580c: $f8 $12
	rst  $38                                         ; $580e: $ff
	db   $fc                                         ; $580f: $fc
	ld   de, $1111                                   ; $5810: $11 $11 $11
	dec  l                                           ; $5813: $2d
	rst  $38                                         ; $5814: $ff
	rst  $38                                         ; $5815: $ff
	rst  $38                                         ; $5816: $ff
	rst  $38                                         ; $5817: $ff
	add  c                                           ; $5818: $81
	inc  e                                           ; $5819: $1c
	rst  $38                                         ; $581a: $ff
	pop  af                                          ; $581b: $f1
	ld   de, $1211                                   ; $581c: $11 $11 $12
	rst  $38                                         ; $581f: $ff
	rst  $38                                         ; $5820: $ff
	rst  $38                                         ; $5821: $ff
	rst  $38                                         ; $5822: $ff
	pop  af                                          ; $5823: $f1
	ld   de, $fd2f                                   ; $5824: $11 $2f $fd
	ld   de, $1111                                   ; $5827: $11 $11 $11
	ld   l, a                                        ; $582a: $6f
	cp   $ff                                         ; $582b: $fe $ff
	rst  $38                                         ; $582d: $ff
	rst  $38                                         ; $582e: $ff
	ld   [hl], c                                     ; $582f: $71
	jr   @+$01                                       ; $5830: $18 $ff

	and  c                                           ; $5832: $a1
	ld   de, $1f11                                   ; $5833: $11 $11 $1f
	rst  $38                                         ; $5836: $ff
	rst  $38                                         ; $5837: $ff
	rst  $38                                         ; $5838: $ff
	rst  $38                                         ; $5839: $ff
	ldh  a, [c]                                      ; $583a: $f2
	ld   de, $f19f                                   ; $583b: $11 $9f $f1
	ld   de, $1f11                                   ; $583e: $11 $11 $1f
	rst  $38                                         ; $5841: $ff
	rst  $38                                         ; $5842: $ff
	rst  JumpTable                                         ; $5843: $df
	rst  $38                                         ; $5844: $ff
	ld   sp, hl                                      ; $5845: $f9
	ld   de, $f27f                                   ; $5846: $11 $7f $f2
	ld   de, $1e11                                   ; $5849: $11 $11 $1e
	rst  $38                                         ; $584c: $ff
	rst  $38                                         ; $584d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $584e: $cf
	rst  $38                                         ; $584f: $ff
	db   $fd                                         ; $5850: $fd
	ld   de, $f58f                                   ; $5851: $11 $8f $f5
	ld   de, $1f11                                   ; $5854: $11 $11 $1f
	rst  $38                                         ; $5857: $ff
	db   $fd                                         ; $5858: $fd
	adc  [hl]                                        ; $5859: $8e
	rst  $38                                         ; $585a: $ff
	db   $fc                                         ; $585b: $fc
	ld   de, $f19f                                   ; $585c: $11 $9f $f1
	ld   de, $6f11                                   ; $585f: $11 $11 $6f
	rst  $38                                         ; $5862: $ff
	ei                                               ; $5863: $fb
	rst  JumpTable                                         ; $5864: $df
	rst  $38                                         ; $5865: $ff
	di                                               ; $5866: $f3
	ld   de, $41ae                                   ; $5867: $11 $ae $41
	ld   de, rAUD1LEN                                   ; $586a: $11 $11 $ff
	rst  $38                                         ; $586d: $ff
	ld   sp, hl                                      ; $586e: $f9
	rst  JumpTable                                         ; $586f: $df
	rst  $38                                         ; $5870: $ff
	and  c                                           ; $5871: $a1
	dec  d                                           ; $5872: $15
	and  e                                           ; $5873: $a3
	ld   de, $1f11                                   ; $5874: $11 $11 $1f
	rst  $38                                         ; $5877: $ff
	rst  $38                                         ; $5878: $ff
	xor  e                                           ; $5879: $ab
	rst  $38                                         ; $587a: $ff
	db   $fd                                         ; $587b: $fd
	ld   d, c                                        ; $587c: $51
	scf                                              ; $587d: $37
	ld   de, $1111                                   ; $587e: $11 $11 $11
	rst  $38                                         ; $5881: $ff
	rst  $38                                         ; $5882: $ff
	ld   hl, sp-$71                                  ; $5883: $f8 $8f
	rst  $38                                         ; $5885: $ff
	call nc, $4114                                   ; $5886: $d4 $14 $41
	ld   de, $6f11                                   ; $5889: $11 $11 $6f
	rst  $38                                         ; $588c: $ff
	rst  $38                                         ; $588d: $ff
	adc  h                                           ; $588e: $8c
	rst  $38                                         ; $588f: $ff
	ld   hl, sp+$12                                  ; $5890: $f8 $12
	ld   b, c                                        ; $5892: $41
	ld   de, $1f11                                   ; $5893: $11 $11 $1f
	rst  $38                                         ; $5896: $ff
	rst  $38                                         ; $5897: $ff
	xor  d                                           ; $5898: $aa
	rst  $38                                         ; $5899: $ff
	db   $fc                                         ; $589a: $fc
	ld   sp, $1122                                   ; $589b: $31 $22 $11
	ld   de, $ff1c                                   ; $589e: $11 $1c $ff
	rst  $38                                         ; $58a1: $ff
	and  [hl]                                        ; $58a2: $a6
	rst  $28                                         ; $58a3: $ef
	rst  $38                                         ; $58a4: $ff
	ld   h, c                                        ; $58a5: $61
	ld   [hl+], a                                    ; $58a6: $22
	ld   de, $1811                                   ; $58a7: $11 $11 $18
	rst  $38                                         ; $58aa: $ff
	rst  $38                                         ; $58ab: $ff
	and  h                                           ; $58ac: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ad: $cf
	rst  $38                                         ; $58ae: $ff
	ld   [hl], c                                     ; $58af: $71
	ld   [de], a                                     ; $58b0: $12
	ld   de, $1411                                   ; $58b1: $11 $11 $14
	rst  $38                                         ; $58b4: $ff
	rst  $38                                         ; $58b5: $ff
	push hl                                          ; $58b6: $e5
	sbc  a                                           ; $58b7: $9f

Jump_0ee_58b8:
	rst  $38                                         ; $58b8: $ff
	and  e                                           ; $58b9: $a3
	ld   hl, $1111                                   ; $58ba: $21 $11 $11
	dec  de                                          ; $58bd: $1b
	rst  $38                                         ; $58be: $ff
	rst  $38                                         ; $58bf: $ff
	add  $df                                         ; $58c0: $c6 $df
	rst  $38                                         ; $58c2: $ff
	ld   h, c                                        ; $58c3: $61
	ld   de, $1111                                   ; $58c4: $11 $11 $11
	ld   a, [de]                                     ; $58c7: $1a
	rst  $38                                         ; $58c8: $ff
	rst  $38                                         ; $58c9: $ff
	or   h                                           ; $58ca: $b4
	xor  a                                           ; $58cb: $af
	rst  $38                                         ; $58cc: $ff
	ld   [hl], d                                     ; $58cd: $72
	ld   de, $1111                                   ; $58ce: $11 $11 $11
	rra                                              ; $58d1: $1f
	rst  $38                                         ; $58d2: $ff
	rst  $38                                         ; $58d3: $ff
	and  a                                           ; $58d4: $a7
	rst  $38                                         ; $58d5: $ff
	db   $fd                                         ; $58d6: $fd
	ld   b, c                                        ; $58d7: $41
	ld   de, $1111                                   ; $58d8: $11 $11 $11
	rra                                              ; $58db: $1f
	rst  $38                                         ; $58dc: $ff
	rst  $38                                         ; $58dd: $ff
	sbc  c                                           ; $58de: $99
	rst  $38                                         ; $58df: $ff
	ei                                               ; $58e0: $fb
	ld   hl, $1111                                   ; $58e1: $21 $11 $11
	ld   de, $ff1f                                   ; $58e4: $11 $1f $ff
	cp   $8e                                         ; $58e7: $fe $8e
	rst  $38                                         ; $58e9: $ff
	rst  $30                                         ; $58ea: $f7
	ld   de, $1111                                   ; $58eb: $11 $11 $11
	ld   de, $ffef                                   ; $58ee: $11 $ef $ff
	ei                                               ; $58f1: $fb
	adc  a                                           ; $58f2: $8f
	rst  $38                                         ; $58f3: $ff
	jp   $1111                                       ; $58f4: $c3 $11 $11


	ld   de, rAUD1LEN                                   ; $58f7: $11 $11 $ff
	rst  $38                                         ; $58fa: $ff
	ei                                               ; $58fb: $fb
	rst  $28                                         ; $58fc: $ef
	rst  $38                                         ; $58fd: $ff
	ld   d, c                                        ; $58fe: $51
	ld   de, $1111                                   ; $58ff: $11 $11 $11
	rra                                              ; $5902: $1f
	rst  $38                                         ; $5903: $ff
	rst  $38                                         ; $5904: $ff
	call z, $f8ff                                    ; $5905: $cc $ff $f8
	ld   de, $1111                                   ; $5908: $11 $11 $11
	ld   de, $ff7f                                   ; $590b: $11 $7f $ff
	rst  $38                                         ; $590e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $590f: $cf
	rst  $38                                         ; $5910: $ff
	jp   nc, $1111                                   ; $5911: $d2 $11 $11

	ld   de, rAUD1HIGH                                   ; $5914: $11 $14 $ff
	rst  $38                                         ; $5917: $ff
	db   $fd                                         ; $5918: $fd
	rst  $38                                         ; $5919: $ff
	db   $fd                                         ; $591a: $fd
	ld   hl, $1111                                   ; $591b: $21 $11 $11
	ld   de, $ff1f                                   ; $591e: $11 $1f $ff
	rst  $38                                         ; $5921: $ff
	rst  JumpTable                                         ; $5922: $df
	rst  $38                                         ; $5923: $ff
	di                                               ; $5924: $f3
	ld   de, $1111                                   ; $5925: $11 $11 $11
	ld   de, $ffff                                   ; $5928: $11 $ff $ff
	cp   $ff                                         ; $592b: $fe $ff
	rst  $38                                         ; $592d: $ff
	ld   d, c                                        ; $592e: $51
	ld   de, $1111                                   ; $592f: $11 $11 $11
	rra                                              ; $5932: $1f
	rst  $38                                         ; $5933: $ff
	rst  $38                                         ; $5934: $ff
	rst  $38                                         ; $5935: $ff
	rst  $38                                         ; $5936: $ff
	push af                                          ; $5937: $f5
	ld   de, $1111                                   ; $5938: $11 $11 $11
	ld   de, $ffff                                   ; $593b: $11 $ff $ff
	rst  $38                                         ; $593e: $ff
	rst  $38                                         ; $593f: $ff
	rst  $38                                         ; $5940: $ff
	ld   d, c                                        ; $5941: $51
	ld   de, $1111                                   ; $5942: $11 $11 $11
	ld   a, [de]                                     ; $5945: $1a
	rst  $38                                         ; $5946: $ff
	rst  $38                                         ; $5947: $ff
	rst  $38                                         ; $5948: $ff
	rst  $38                                         ; $5949: $ff
	ld   hl, sp+$11                                  ; $594a: $f8 $11
	ld   de, $1111                                   ; $594c: $11 $11 $11
	ld   c, a                                        ; $594f: $4f
	rst  $38                                         ; $5950: $ff
	db   $fc                                         ; $5951: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5952: $cf
	rst  $38                                         ; $5953: $ff
	sub  $22                                         ; $5954: $d6 $22
	ld   [hl-], a                                    ; $5956: $32
	ld   de, $6c11                                   ; $5957: $11 $11 $6c
	call z, Call_0ee_6995                            ; $595a: $cc $95 $69
	cp   [hl]                                        ; $595d: $be
	call c, Call_0ee_7997                            ; $595e: $dc $97 $79
	cp   l                                           ; $5961: $bd
	or   a                                           ; $5962: $b7
	ld   d, h                                        ; $5963: $54

Jump_0ee_5964:
	ld   l, c                                        ; $5964: $69
	sub  a                                           ; $5965: $97
	ld   d, h                                        ; $5966: $54
	ld   d, a                                        ; $5967: $57
	cp   h                                           ; $5968: $bc
	jp   z, $ac89                                    ; $5969: $ca $89 $ac

	cp   d                                           ; $596c: $ba
	sub  a                                           ; $596d: $97
	ld   a, b                                        ; $596e: $78
	sbc  b                                           ; $596f: $98
	add  a                                           ; $5970: $87
	ld   h, [hl]                                     ; $5971: $66
	ld   h, a                                        ; $5972: $67
	ld   a, b                                        ; $5973: $78
	adc  b                                           ; $5974: $88
	adc  b                                           ; $5975: $88
	adc  b                                           ; $5976: $88
	xor  d                                           ; $5977: $aa
	cp   e                                           ; $5978: $bb
	xor  c                                           ; $5979: $a9
	xor  e                                           ; $597a: $ab
	xor  d                                           ; $597b: $aa
	sub  a                                           ; $597c: $97
	ld   h, [hl]                                     ; $597d: $66
	ld   h, [hl]                                     ; $597e: $66
	ld   h, [hl]                                     ; $597f: $66
	ld   d, l                                        ; $5980: $55
	ld   h, a                                        ; $5981: $67
	sbc  e                                           ; $5982: $9b
	cp   e                                           ; $5983: $bb
	cp   d                                           ; $5984: $ba
	set  1, e                                        ; $5985: $cb $cb
	sbc  b                                           ; $5987: $98
	ld   [hl], a                                     ; $5988: $77
	ld   h, [hl]                                     ; $5989: $66
	ld   d, l                                        ; $598a: $55
	ld   d, [hl]                                     ; $598b: $56
	ld   [hl], a                                     ; $598c: $77
	ld   a, c                                        ; $598d: $79
	xor  e                                           ; $598e: $ab
	cp   d                                           ; $598f: $ba
	xor  c                                           ; $5990: $a9
	sbc  c                                           ; $5991: $99
	sbc  b                                           ; $5992: $98
	add  a                                           ; $5993: $87
	ld   h, [hl]                                     ; $5994: $66
	ld   h, a                                        ; $5995: $67
	ld   [hl], a                                     ; $5996: $77
	ld   a, b                                        ; $5997: $78
	sbc  c                                           ; $5998: $99
	xor  c                                           ; $5999: $a9
	sbc  b                                           ; $599a: $98
	adc  b                                           ; $599b: $88
	adc  b                                           ; $599c: $88
	add  a                                           ; $599d: $87
	ld   [hl], a                                     ; $599e: $77
	ld   a, b                                        ; $599f: $78
	adc  b                                           ; $59a0: $88
	adc  c                                           ; $59a1: $89
	xor  d                                           ; $59a2: $aa
	sbc  c                                           ; $59a3: $99
	add  a                                           ; $59a4: $87
	ld   [hl], a                                     ; $59a5: $77
	add  a                                           ; $59a6: $87
	ld   [hl], a                                     ; $59a7: $77
	ld   a, b                                        ; $59a8: $78
	adc  b                                           ; $59a9: $88
	adc  b                                           ; $59aa: $88
	adc  c                                           ; $59ab: $89
	sbc  c                                           ; $59ac: $99
	sbc  c                                           ; $59ad: $99
	ld   [hl], a                                     ; $59ae: $77
	ld   a, b                                        ; $59af: $78
	adc  b                                           ; $59b0: $88
	add  a                                           ; $59b1: $87
	adc  b                                           ; $59b2: $88
	adc  b                                           ; $59b3: $88
	adc  b                                           ; $59b4: $88
	adc  d                                           ; $59b5: $8a
	sbc  d                                           ; $59b6: $9a
	adc  b                                           ; $59b7: $88
	ld   [hl], a                                     ; $59b8: $77
	adc  b                                           ; $59b9: $88
	sbc  b                                           ; $59ba: $98
	adc  b                                           ; $59bb: $88
	adc  b                                           ; $59bc: $88
	adc  b                                           ; $59bd: $88
	adc  c                                           ; $59be: $89
	sbc  c                                           ; $59bf: $99
	sbc  c                                           ; $59c0: $99
	add  a                                           ; $59c1: $87
	ld   [hl], a                                     ; $59c2: $77
	adc  b                                           ; $59c3: $88
	adc  b                                           ; $59c4: $88
	adc  b                                           ; $59c5: $88
	adc  b                                           ; $59c6: $88
	adc  b                                           ; $59c7: $88
	adc  c                                           ; $59c8: $89
	sbc  c                                           ; $59c9: $99
	sbc  c                                           ; $59ca: $99
	add  a                                           ; $59cb: $87
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  b                                           ; $59ce: $88
	adc  b                                           ; $59cf: $88
	adc  b                                           ; $59d0: $88
	adc  b                                           ; $59d1: $88
	adc  c                                           ; $59d2: $89
	adc  b                                           ; $59d3: $88
	sbc  b                                           ; $59d4: $98
	ld   a, b                                        ; $59d5: $78
	adc  b                                           ; $59d6: $88
	sbc  c                                           ; $59d7: $99
	sbc  b                                           ; $59d8: $98
	adc  b                                           ; $59d9: $88
	adc  b                                           ; $59da: $88
	adc  b                                           ; $59db: $88
	adc  b                                           ; $59dc: $88
	sbc  b                                           ; $59dd: $98
	adc  b                                           ; $59de: $88
	ld   a, b                                        ; $59df: $78
	adc  b                                           ; $59e0: $88
	adc  b                                           ; $59e1: $88
	sbc  b                                           ; $59e2: $98
	adc  b                                           ; $59e3: $88
	adc  b                                           ; $59e4: $88
	adc  b                                           ; $59e5: $88
	sbc  c                                           ; $59e6: $99
	adc  b                                           ; $59e7: $88
	adc  b                                           ; $59e8: $88
	adc  b                                           ; $59e9: $88
	adc  c                                           ; $59ea: $89
	adc  b                                           ; $59eb: $88
	adc  b                                           ; $59ec: $88
	adc  b                                           ; $59ed: $88
	adc  b                                           ; $59ee: $88
	adc  c                                           ; $59ef: $89
	sbc  c                                           ; $59f0: $99
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	adc  b                                           ; $59f3: $88
	adc  b                                           ; $59f4: $88
	adc  b                                           ; $59f5: $88
	adc  b                                           ; $59f6: $88
	adc  b                                           ; $59f7: $88
	adc  b                                           ; $59f8: $88
	sbc  c                                           ; $59f9: $99
	sbc  c                                           ; $59fa: $99
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
	adc  c                                           ; $5a09: $89
	sbc  b                                           ; $5a0a: $98
	adc  b                                           ; $5a0b: $88
	adc  c                                           ; $5a0c: $89
	sbc  b                                           ; $5a0d: $98
	add  a                                           ; $5a0e: $87
	adc  b                                           ; $5a0f: $88
	adc  b                                           ; $5a10: $88
	adc  b                                           ; $5a11: $88
	adc  b                                           ; $5a12: $88
	adc  c                                           ; $5a13: $89
	sbc  b                                           ; $5a14: $98
	adc  b                                           ; $5a15: $88
	sbc  c                                           ; $5a16: $99
	sbc  b                                           ; $5a17: $98
	adc  b                                           ; $5a18: $88
	adc  b                                           ; $5a19: $88
	adc  b                                           ; $5a1a: $88
	adc  b                                           ; $5a1b: $88
	adc  b                                           ; $5a1c: $88
	sbc  b                                           ; $5a1d: $98
	adc  b                                           ; $5a1e: $88
	adc  b                                           ; $5a1f: $88
	adc  b                                           ; $5a20: $88
	adc  b                                           ; $5a21: $88
	adc  b                                           ; $5a22: $88
	adc  b                                           ; $5a23: $88
	adc  b                                           ; $5a24: $88
	adc  b                                           ; $5a25: $88
	adc  c                                           ; $5a26: $89
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
	sbc  b                                           ; $5be1: $98
	adc  c                                           ; $5be2: $89
	adc  b                                           ; $5be3: $88
	ld   a, b                                        ; $5be4: $78
	adc  b                                           ; $5be5: $88
	add  a                                           ; $5be6: $87
	add  a                                           ; $5be7: $87
	adc  c                                           ; $5be8: $89
	adc  c                                           ; $5be9: $89
	ld   a, b                                        ; $5bea: $78
	sbc  b                                           ; $5beb: $98
	ld   a, b                                        ; $5bec: $78
	adc  b                                           ; $5bed: $88
	add  a                                           ; $5bee: $87
	add  a                                           ; $5bef: $87
	adc  c                                           ; $5bf0: $89
	ld   a, b                                        ; $5bf1: $78
	add  a                                           ; $5bf2: $87
	sbc  b                                           ; $5bf3: $98
	adc  b                                           ; $5bf4: $88
	ld   a, b                                        ; $5bf5: $78
	add  a                                           ; $5bf6: $87
	adc  b                                           ; $5bf7: $88
	sbc  b                                           ; $5bf8: $98
	ld   a, b                                        ; $5bf9: $78
	adc  b                                           ; $5bfa: $88
	ld   a, b                                        ; $5bfb: $78
	adc  b                                           ; $5bfc: $88
	adc  b                                           ; $5bfd: $88
	add  a                                           ; $5bfe: $87
	add  a                                           ; $5bff: $87
	ld   a, b                                        ; $5c00: $78
	ld   a, b                                        ; $5c01: $78
	adc  b                                           ; $5c02: $88
	adc  b                                           ; $5c03: $88
	adc  b                                           ; $5c04: $88
	adc  b                                           ; $5c05: $88
	adc  b                                           ; $5c06: $88
	adc  c                                           ; $5c07: $89
	adc  c                                           ; $5c08: $89
	sub  a                                           ; $5c09: $97
	ld   [hl], a                                     ; $5c0a: $77
	adc  b                                           ; $5c0b: $88

jr_0ee_5c0c:
	ld   a, b                                        ; $5c0c: $78
	add  a                                           ; $5c0d: $87
	add  a                                           ; $5c0e: $87
	ld   a, b                                        ; $5c0f: $78
	adc  c                                           ; $5c10: $89
	adc  b                                           ; $5c11: $88
	adc  b                                           ; $5c12: $88
	adc  c                                           ; $5c13: $89
	adc  c                                           ; $5c14: $89
	sbc  b                                           ; $5c15: $98
	sbc  b                                           ; $5c16: $98
	sbc  c                                           ; $5c17: $99
	adc  c                                           ; $5c18: $89
	add  a                                           ; $5c19: $87
	ld   d, h                                        ; $5c1a: $54
	ld   b, h                                        ; $5c1b: $44
	ld   b, h                                        ; $5c1c: $44
	ld   d, [hl]                                     ; $5c1d: $56
	ld   h, a                                        ; $5c1e: $67
	sbc  e                                           ; $5c1f: $9b
	call z, $bbcc                                    ; $5c20: $cc $cc $bb
	cp   e                                           ; $5c23: $bb
	xor  e                                           ; $5c24: $ab
	cp   e                                           ; $5c25: $bb
	xor  d                                           ; $5c26: $aa
	sub  [hl]                                        ; $5c27: $96
	ld   sp, $1111                                   ; $5c28: $31 $11 $11
	inc  h                                           ; $5c2b: $24
	ld   l, c                                        ; $5c2c: $69
	cp   l                                           ; $5c2d: $bd
	cp   $ef                                         ; $5c2e: $fe $ef
	db   $ed                                         ; $5c30: $ed
	jp   z, $9a98                                    ; $5c31: $ca $98 $9a

	cp   h                                           ; $5c34: $bc
	call c, Call_0ee_72cb                            ; $5c35: $dc $cb $72
	ld   de, $1111                                   ; $5c38: $11 $11 $11
	jr   c, jr_0ee_5c0c                              ; $5c3b: $38 $cf

	rst  $38                                         ; $5c3d: $ff
	rst  $38                                         ; $5c3e: $ff
	cp   $ea                                         ; $5c3f: $fe $ea
	add  [hl]                                        ; $5c41: $86
	ld   l, b                                        ; $5c42: $68
	adc  h                                           ; $5c43: $8c
	rst  JumpTable                                         ; $5c44: $df
	rst  $38                                         ; $5c45: $ff
	reti                                             ; $5c46: $d9


	ld   b, c                                        ; $5c47: $41
	ld   de, $1111                                   ; $5c48: $11 $11 $11
	ld   l, h                                        ; $5c4b: $6c

jr_0ee_5c4c:
	rst  $38                                         ; $5c4c: $ff
	rst  $38                                         ; $5c4d: $ff
	rst  $38                                         ; $5c4e: $ff
	db   $db                                         ; $5c4f: $db
	xor  c                                           ; $5c50: $a9
	add  a                                           ; $5c51: $87
	ld   h, [hl]                                     ; $5c52: $66
	sbc  h                                           ; $5c53: $9c
	rst  $38                                         ; $5c54: $ff
	rst  $38                                         ; $5c55: $ff
	ret                                              ; $5c56: $c9


	ld   h, c                                        ; $5c57: $61
	ld   de, $1111                                   ; $5c58: $11 $11 $11
	ld   l, l                                        ; $5c5b: $6d
	rst  $38                                         ; $5c5c: $ff
	rst  $38                                         ; $5c5d: $ff
	rst  $38                                         ; $5c5e: $ff
	jp   c, $87aa                                    ; $5c5f: $da $aa $87

	ld   d, l                                        ; $5c62: $55
	ld   a, e                                        ; $5c63: $7b
	rst  $38                                         ; $5c64: $ff
	rst  $38                                         ; $5c65: $ff
	db   $ec                                         ; $5c66: $ec
	sub  [hl]                                        ; $5c67: $96
	ld   de, $1111                                   ; $5c68: $11 $11 $11
	jr   jr_0ee_5c4c                                 ; $5c6b: $18 $df

	rst  $38                                         ; $5c6d: $ff
	rst  $38                                         ; $5c6e: $ff
	db   $db                                         ; $5c6f: $db
	sbc  c                                           ; $5c70: $99
	sbc  b                                           ; $5c71: $98
	ld   [hl], h                                     ; $5c72: $74
	ld   b, a                                        ; $5c73: $47
	cp   a                                           ; $5c74: $bf
	rst  $38                                         ; $5c75: $ff
	rst  $38                                         ; $5c76: $ff
	jp   c, $1182                                    ; $5c77: $da $82 $11

	ld   de, $3c11                                   ; $5c7a: $11 $11 $3c
	rst  $38                                         ; $5c7d: $ff
	rst  $38                                         ; $5c7e: $ff
	rst  $38                                         ; $5c7f: $ff
	cp   b                                           ; $5c80: $b8
	ld   [hl], a                                     ; $5c81: $77
	ld   [hl], a                                     ; $5c82: $77
	ld   h, l                                        ; $5c83: $65
	ld   l, b                                        ; $5c84: $68
	rst  $28                                         ; $5c85: $ef
	rst  $38                                         ; $5c86: $ff
	rst  $38                                         ; $5c87: $ff
	jp   z, $1162                                    ; $5c88: $ca $62 $11

	ld   de, $1b11                                   ; $5c8b: $11 $11 $1b
	rst  $38                                         ; $5c8e: $ff
	rst  $38                                         ; $5c8f: $ff
	rst  $38                                         ; $5c90: $ff
	ret                                              ; $5c91: $c9


	halt                                             ; $5c92: $76
	ld   h, [hl]                                     ; $5c93: $66
	ld   h, [hl]                                     ; $5c94: $66
	ld   a, b                                        ; $5c95: $78
	rst  JumpTable                                         ; $5c96: $df
	rst  $38                                         ; $5c97: $ff
	rst  $38                                         ; $5c98: $ff
	jp   c, $1175                                    ; $5c99: $da $75 $11

	ld   de, $1411                                   ; $5c9c: $11 $11 $14
	rst  JumpTable                                         ; $5c9f: $df
	rst  $38                                         ; $5ca0: $ff
	rst  $38                                         ; $5ca1: $ff
	db   $db                                         ; $5ca2: $db
	add  [hl]                                        ; $5ca3: $86
	ld   d, l                                        ; $5ca4: $55
	ld   h, a                                        ; $5ca5: $67
	adc  c                                           ; $5ca6: $89
	cp   h                                           ; $5ca7: $bc
	rst  $38                                         ; $5ca8: $ff
	rst  $38                                         ; $5ca9: $ff
	db   $fd                                         ; $5caa: $fd
	xor  b                                           ; $5cab: $a8
	ld   h, e                                        ; $5cac: $63
	ld   de, $1111                                   ; $5cad: $11 $11 $11
	jr   @+$01                                       ; $5cb0: $18 $ff

	rst  $38                                         ; $5cb2: $ff
	cp   $db                                         ; $5cb3: $fe $db
	sub  a                                           ; $5cb5: $97
	ld   d, [hl]                                     ; $5cb6: $56
	ld   a, b                                        ; $5cb7: $78
	sbc  c                                           ; $5cb8: $99
	xor  l                                           ; $5cb9: $ad
	rst  $28                                         ; $5cba: $ef
	rst  $38                                         ; $5cbb: $ff
	cp   $b8                                         ; $5cbc: $fe $b8
	ld   d, e                                        ; $5cbe: $53
	ld   de, $1111                                   ; $5cbf: $11 $11 $11
	dec  d                                           ; $5cc2: $15
	rst  $28                                         ; $5cc3: $ef
	rst  $38                                         ; $5cc4: $ff
	cp   $dc                                         ; $5cc5: $fe $dc
	cp   b                                           ; $5cc7: $b8
	ld   h, [hl]                                     ; $5cc8: $66
	ld   h, [hl]                                     ; $5cc9: $66
	adc  b                                           ; $5cca: $88
	xor  e                                           ; $5ccb: $ab
	rst  JumpTable                                         ; $5ccc: $df
	rst  $38                                         ; $5ccd: $ff
	rst  $38                                         ; $5cce: $ff
	ret                                              ; $5ccf: $c9


	ld   [hl], l                                     ; $5cd0: $75
	ld   sp, $1111                                   ; $5cd1: $31 $11 $11
	ld   de, $ff6e                                   ; $5cd4: $11 $6e $ff
	rst  $38                                         ; $5cd7: $ff
	sbc  $cb                                         ; $5cd8: $de $cb
	and  a                                           ; $5cda: $a7
	ld   d, l                                        ; $5cdb: $55
	ld   h, a                                        ; $5cdc: $67
	sbc  e                                           ; $5cdd: $9b
	adc  $ff                                         ; $5cde: $ce $ff
	rst  $38                                         ; $5ce0: $ff
	db   $fd                                         ; $5ce1: $fd
	and  a                                           ; $5ce2: $a7
	ld   d, d                                        ; $5ce3: $52
	ld   de, $1111                                   ; $5ce4: $11 $11 $11
	inc  d                                           ; $5ce7: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ce8: $cf
	rst  $38                                         ; $5ce9: $ff
	cp   $ed                                         ; $5cea: $fe $ed
	call c, Call_0ee_6597                            ; $5cec: $dc $97 $65
	ld   [hl], a                                     ; $5cef: $77
	adc  d                                           ; $5cf0: $8a
	call $ffff                                       ; $5cf1: $cd $ff $ff
	db   $ec                                         ; $5cf4: $ec
	sub  [hl]                                        ; $5cf5: $96
	ld   b, d                                        ; $5cf6: $42
	ld   de, $1111                                   ; $5cf7: $11 $11 $11
	inc  d                                           ; $5cfa: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cfb: $cf
	rst  $38                                         ; $5cfc: $ff
	xor  $ee                                         ; $5cfd: $ee $ee
	cp   $c9                                         ; $5cff: $fe $c9
	halt                                             ; $5d01: $76
	ld   h, [hl]                                     ; $5d02: $66
	ld   a, c                                        ; $5d03: $79
	cp   h                                           ; $5d04: $bc
	rst  $28                                         ; $5d05: $ef
	rst  $38                                         ; $5d06: $ff
	db   $eb                                         ; $5d07: $eb
	sub  [hl]                                        ; $5d08: $96
	ld   d, e                                        ; $5d09: $53
	ld   de, $1111                                   ; $5d0a: $11 $11 $11
	ld   [de], a                                     ; $5d0d: $12
	adc  h                                           ; $5d0e: $8c
	db   $dd                                         ; $5d0f: $dd
	db   $dd                                         ; $5d10: $dd
	rst  JumpTable                                         ; $5d11: $df
	cp   $db                                         ; $5d12: $fe $db
	sub  a                                           ; $5d14: $97
	ld   [hl], a                                     ; $5d15: $77
	ld   a, c                                        ; $5d16: $79
	sbc  d                                           ; $5d17: $9a
	cp   l                                           ; $5d18: $bd
	sbc  $ec                                         ; $5d19: $de $ec
	xor  b                                           ; $5d1b: $a8
	halt                                             ; $5d1c: $76
	ld   b, d                                        ; $5d1d: $42
	ld   de, $1111                                   ; $5d1e: $11 $11 $11
	ld   h, $99                                      ; $5d21: $26 $99
	xor  e                                           ; $5d23: $ab
	call $ffff                                       ; $5d24: $cd $ff $ff
	call c, $99b9                                    ; $5d27: $dc $b9 $99
	sbc  c                                           ; $5d2a: $99
	sbc  c                                           ; $5d2b: $99
	cp   e                                           ; $5d2c: $bb
	call z, $98ba                                    ; $5d2d: $cc $ba $98
	ld   [hl], l                                     ; $5d30: $75
	ld   sp, $1111                                   ; $5d31: $31 $11 $11
	ld   [de], a                                     ; $5d34: $12
	ld   b, [hl]                                     ; $5d35: $46
	ld   a, b                                        ; $5d36: $78
	sbc  d                                           ; $5d37: $9a
	adc  $ff                                         ; $5d38: $ce $ff
	cp   $dc                                         ; $5d3a: $fe $dc
	res  3, b                                        ; $5d3c: $cb $98
	adc  b                                           ; $5d3e: $88
	sbc  c                                           ; $5d3f: $99
	xor  e                                           ; $5d40: $ab
	cp   e                                           ; $5d41: $bb
	xor  d                                           ; $5d42: $aa
	sbc  c                                           ; $5d43: $99
	ld   h, h                                        ; $5d44: $64
	ld   hl, $1111                                   ; $5d45: $21 $11 $11
	inc  de                                          ; $5d48: $13
	ld   b, [hl]                                     ; $5d49: $46
	ld   a, c                                        ; $5d4a: $79
	xor  h                                           ; $5d4b: $ac
	rst  $28                                         ; $5d4c: $ef
	rst  $38                                         ; $5d4d: $ff
	xor  $db                                         ; $5d4e: $ee $db
	cp   d                                           ; $5d50: $ba
	adc  b                                           ; $5d51: $88
	ld   a, b                                        ; $5d52: $78
	adc  c                                           ; $5d53: $89
	cp   h                                           ; $5d54: $bc
	call z, $97ba                                    ; $5d55: $cc $ba $97
	ld   h, h                                        ; $5d58: $64
	ld   de, $1111                                   ; $5d59: $11 $11 $11
	inc  h                                           ; $5d5c: $24
	ld   h, a                                        ; $5d5d: $67
	adc  d                                           ; $5d5e: $8a
	cp   l                                           ; $5d5f: $bd
	rst  $28                                         ; $5d60: $ef
	cp   $dc                                         ; $5d61: $fe $dc
	res  5, c                                        ; $5d63: $cb $a9
	sub  a                                           ; $5d65: $97
	ld   a, b                                        ; $5d66: $78
	sbc  e                                           ; $5d67: $9b
	cp   h                                           ; $5d68: $bc
	call z, $a7cb                                    ; $5d69: $cc $cb $a7
	ld   d, e                                        ; $5d6c: $53
	ld   de, $1111                                   ; $5d6d: $11 $11 $11
	dec  [hl]                                        ; $5d70: $35
	ld   [hl], a                                     ; $5d71: $77
	adc  c                                           ; $5d72: $89
	xor  l                                           ; $5d73: $ad
	rst  $28                                         ; $5d74: $ef
	db   $fd                                         ; $5d75: $fd
	db   $db                                         ; $5d76: $db
	cp   e                                           ; $5d77: $bb
	sbc  c                                           ; $5d78: $99
	sub  a                                           ; $5d79: $97
	adc  c                                           ; $5d7a: $89
	sbc  h                                           ; $5d7b: $9c
	call $cbdc                                       ; $5d7c: $cd $dc $cb
	sbc  b                                           ; $5d7f: $98
	ld   h, e                                        ; $5d80: $63
	ld   de, $1111                                   ; $5d81: $11 $11 $11
	dec  d                                           ; $5d84: $15
	ld   a, b                                        ; $5d85: $78
	adc  c                                           ; $5d86: $89
	xor  h                                           ; $5d87: $ac
	sbc  $ee                                         ; $5d88: $de $ee
	jp   z, $999a                                    ; $5d8a: $ca $9a $99

	sbc  b                                           ; $5d8d: $98
	adc  c                                           ; $5d8e: $89
	cp   e                                           ; $5d8f: $bb
	sbc  $fe                                         ; $5d90: $de $fe
	db   $db                                         ; $5d92: $db
	xor  b                                           ; $5d93: $a8
	ld   [hl], l                                     ; $5d94: $75
	ld   hl, $1111                                   ; $5d95: $21 $11 $11
	ld   [de], a                                     ; $5d98: $12
	ld   a, d                                        ; $5d99: $7a
	call z, $cdbc                                    ; $5d9a: $cc $bc $cd
	db   $ed                                         ; $5d9d: $ed
	cp   c                                           ; $5d9e: $b9
	ld   [hl], a                                     ; $5d9f: $77
	ld   a, c                                        ; $5da0: $79
	xor  d                                           ; $5da1: $aa
	cp   e                                           ; $5da2: $bb
	cp   h                                           ; $5da3: $bc
	rst  JumpTable                                         ; $5da4: $df
	rst  $38                                         ; $5da5: $ff
	call c, $86b9                                    ; $5da6: $dc $b9 $86
	ld   b, d                                        ; $5da9: $42
	ld   de, $1111                                   ; $5daa: $11 $11 $11
	add  hl, hl                                      ; $5dad: $29
	rst  $38                                         ; $5dae: $ff
	cp   $db                                         ; $5daf: $fe $db
	xor  e                                           ; $5db1: $ab
	sbc  b                                           ; $5db2: $98
	ld   d, h                                        ; $5db3: $54
	ld   d, a                                        ; $5db4: $57
	cp   [hl]                                        ; $5db5: $be
	rst  $38                                         ; $5db6: $ff
	db   $fd                                         ; $5db7: $fd
	set  1, l                                        ; $5db8: $cb $cd
	call z, $a9ca                                    ; $5dba: $cc $ca $a9
	add  [hl]                                        ; $5dbd: $86
	ld   sp, $1111                                   ; $5dbe: $31 $11 $11
	ld   de, $ff3e                                   ; $5dc1: $11 $3e $ff
	rst  $38                                         ; $5dc4: $ff
	add  h                                           ; $5dc5: $84
	inc  [hl]                                        ; $5dc6: $34
	ld   d, l                                        ; $5dc7: $55
	ld   d, [hl]                                     ; $5dc8: $56
	adc  l                                           ; $5dc9: $8d
	rst  $38                                         ; $5dca: $ff
	rst  $38                                         ; $5dcb: $ff
	cp   b                                           ; $5dcc: $b8
	ld   a, b                                        ; $5dcd: $78
	cp   h                                           ; $5dce: $bc
	db   $dd                                         ; $5dcf: $dd
	call z, Call_0ee_75b9                            ; $5dd0: $cc $b9 $75
	ld   [hl-], a                                    ; $5dd3: $32
	ld   de, $1111                                   ; $5dd4: $11 $11 $11
	add  hl, de                                      ; $5dd7: $19
	rst  $38                                         ; $5dd8: $ff
	rst  $38                                         ; $5dd9: $ff
	ld   h, c                                        ; $5dda: $61
	ld   de, $9769                                   ; $5ddb: $11 $69 $97
	ld   a, e                                        ; $5dde: $7b
	rst  $38                                         ; $5ddf: $ff
	rst  $38                                         ; $5de0: $ff
	sub  e                                           ; $5de1: $93
	scf                                              ; $5de2: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5de3: $cf
	db   $fd                                         ; $5de4: $fd
	cp   d                                           ; $5de5: $ba
	xor  d                                           ; $5de6: $aa
	sub  a                                           ; $5de7: $97
	ld   d, l                                        ; $5de8: $55
	ld   d, l                                        ; $5de9: $55
	ld   hl, $1111                                   ; $5dea: $21 $11 $11
	cp   a                                           ; $5ded: $bf
	rst  $38                                         ; $5dee: $ff
	ldh  a, [c]                                      ; $5def: $f2
	ld   de, $b949                                   ; $5df0: $11 $49 $b9
	ld   h, a                                        ; $5df3: $67
	rst  JumpTable                                         ; $5df4: $df
	rst  $38                                         ; $5df5: $ff
	push de                                          ; $5df6: $d5
	inc  de                                          ; $5df7: $13
	xor  a                                           ; $5df8: $af
	rst  $38                                         ; $5df9: $ff
	ret                                              ; $5dfa: $c9


	sbc  c                                           ; $5dfb: $99
	xor  c                                           ; $5dfc: $a9
	halt                                             ; $5dfd: $76
	sbc  d                                           ; $5dfe: $9a
	sub  l                                           ; $5dff: $95
	ld   de, $1411                                   ; $5e00: $11 $11 $14
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	sub  d                                           ; $5e05: $92
	ld   [de], a                                     ; $5e06: $12
	ld   d, a                                        ; $5e07: $57
	ld   [hl], a                                     ; $5e08: $77
	xor  l                                           ; $5e09: $ad
	rst  $38                                         ; $5e0a: $ff
	cp   $62                                         ; $5e0b: $fe $62
	add  hl, sp                                      ; $5e0d: $39
	rst  $28                                         ; $5e0e: $ef
	db   $fc                                         ; $5e0f: $fc
	xor  c                                           ; $5e10: $a9
	xor  c                                           ; $5e11: $a9
	add  a                                           ; $5e12: $87
	ld   a, d                                        ; $5e13: $7a
	db   $dd                                         ; $5e14: $dd
	sub  c                                           ; $5e15: $91
	ld   de, $1411                                   ; $5e16: $11 $11 $14
	rst  $38                                         ; $5e19: $ff
	rst  $38                                         ; $5e1a: $ff
	or   h                                           ; $5e1b: $b4
	ld   de, $9b26                                   ; $5e1c: $11 $26 $9b
	rst  JumpTable                                         ; $5e1f: $df
	rst  $38                                         ; $5e20: $ff
	db   $fd                                         ; $5e21: $fd
	ld   [hl], e                                     ; $5e22: $73
	ld   c, c                                        ; $5e23: $49
	rst  JumpTable                                         ; $5e24: $df
	db   $fc                                         ; $5e25: $fc
	sbc  b                                           ; $5e26: $98
	sbc  c                                           ; $5e27: $99
	adc  b                                           ; $5e28: $88
	adc  e                                           ; $5e29: $8b
	db   $dd                                         ; $5e2a: $dd
	add  c                                           ; $5e2b: $81
	ld   de, $1111                                   ; $5e2c: $11 $11 $11
	ld   a, a                                        ; $5e2f: $7f
	rst  $38                                         ; $5e30: $ff
	ld   a, [$1411]                                  ; $5e31: $fa $11 $14
	xor  h                                           ; $5e34: $ac
	db   $dd                                         ; $5e35: $dd
	rst  $28                                         ; $5e36: $ef
	rst  $38                                         ; $5e37: $ff
	or   [hl]                                        ; $5e38: $b6
	dec  [hl]                                        ; $5e39: $35
	xor  a                                           ; $5e3a: $af
	db   $fd                                         ; $5e3b: $fd
	and  a                                           ; $5e3c: $a7
	adc  d                                           ; $5e3d: $8a
	xor  c                                           ; $5e3e: $a9
	xor  c                                           ; $5e3f: $a9
	call $11b5                                       ; $5e40: $cd $b5 $11
	ld   de, $1111                                   ; $5e43: $11 $11 $11
	cp   a                                           ; $5e46: $bf
	rst  $38                                         ; $5e47: $ff
	pop  bc                                          ; $5e48: $c1
	ld   de, $dc4a                                   ; $5e49: $11 $4a $dc
	cp   l                                           ; $5e4c: $bd
	rst  $38                                         ; $5e4d: $ff
	db   $fc                                         ; $5e4e: $fc
	ld   h, e                                        ; $5e4f: $63
	ld   e, d                                        ; $5e50: $5a
	rst  $38                                         ; $5e51: $ff
	reti                                             ; $5e52: $d9


	ld   a, b                                        ; $5e53: $78
	xor  d                                           ; $5e54: $aa
	xor  c                                           ; $5e55: $a9
	xor  e                                           ; $5e56: $ab
	res  0, e                                        ; $5e57: $cb $83
	ld   de, $1111                                   ; $5e59: $11 $11 $11
	ld   de, $ffbf                                   ; $5e5c: $11 $bf $ff
	and  c                                           ; $5e5f: $a1
	ld   de, $cb6b                                   ; $5e60: $11 $6b $cb
	cp   [hl]                                        ; $5e63: $be
	rst  $38                                         ; $5e64: $ff
	ld   a, [$6c53]                                  ; $5e65: $fa $53 $6c
	cp   $b9                                         ; $5e68: $fe $b9
	sbc  c                                           ; $5e6a: $99
	cp   e                                           ; $5e6b: $bb
	xor  c                                           ; $5e6c: $a9
	xor  h                                           ; $5e6d: $ac
	db   $db                                         ; $5e6e: $db
	ld   [hl], d                                     ; $5e6f: $72
	ld   de, $1111                                   ; $5e70: $11 $11 $11
	ld   de, $ffbf                                   ; $5e73: $11 $bf $ff
	or   c                                           ; $5e76: $b1
	ld   de, $b96a                                   ; $5e77: $11 $6a $b9
	adc  $ff                                         ; $5e7a: $ce $ff
	ret                                              ; $5e7c: $c9


	ld   d, l                                        ; $5e7d: $55
	adc  e                                           ; $5e7e: $8b
	sbc  $bb                                         ; $5e7f: $de $bb
	xor  c                                           ; $5e81: $a9
	sbc  b                                           ; $5e82: $98
	adc  e                                           ; $5e83: $8b
	cp   l                                           ; $5e84: $bd
	res  0, l                                        ; $5e85: $cb $85
	ld   sp, $1111                                   ; $5e87: $31 $11 $11
	ld   de, $ff2f                                   ; $5e8a: $11 $2f $ff
	rst  $30                                         ; $5e8d: $f7
	ld   de, $9837                                   ; $5e8e: $11 $37 $98
	xor  l                                           ; $5e91: $ad
	rst  $38                                         ; $5e92: $ff
	ei                                               ; $5e93: $fb
	ld   [hl], l                                     ; $5e94: $75
	ld   a, c                                        ; $5e95: $79
	call $a9db                                       ; $5e96: $cd $db $a9
	sbc  b                                           ; $5e99: $98
	sbc  c                                           ; $5e9a: $99
	cp   h                                           ; $5e9b: $bc
	call z, $42b8                                    ; $5e9c: $cc $b8 $42
	ld   de, $1111                                   ; $5e9f: $11 $11 $11
	dec  d                                           ; $5ea2: $15
	rst  $38                                         ; $5ea3: $ff
	rst  $38                                         ; $5ea4: $ff
	ld   d, c                                        ; $5ea5: $51
	inc  d                                           ; $5ea6: $14
	ld   a, c                                        ; $5ea7: $79
	adc  e                                           ; $5ea8: $8b

Call_0ee_5ea9:
	rst  $28                                         ; $5ea9: $ef
	db   $fd                                         ; $5eaa: $fd
	xor  b                                           ; $5eab: $a8
	ld   a, b                                        ; $5eac: $78
	xor  e                                           ; $5ead: $ab
	set  1, e                                        ; $5eae: $cb $cb
	xor  c                                           ; $5eb0: $a9
	sbc  c                                           ; $5eb1: $99
	cp   h                                           ; $5eb2: $bc
	db   $dd                                         ; $5eb3: $dd
	cp   d                                           ; $5eb4: $ba
	add  l                                           ; $5eb5: $85
	ld   sp, $1111                                   ; $5eb6: $31 $11 $11
	ld   de, $ff6f                                   ; $5eb9: $11 $6f $ff
	db   $e4                                         ; $5ebc: $e4
	ld   [de], a                                     ; $5ebd: $12
	ld   h, a                                        ; $5ebe: $67
	ld   h, a                                        ; $5ebf: $67
	xor  a                                           ; $5ec0: $af
	rst  $38                                         ; $5ec1: $ff
	ret                                              ; $5ec2: $c9


	ld   [hl], a                                     ; $5ec3: $77
	xor  d                                           ; $5ec4: $aa
	cp   e                                           ; $5ec5: $bb
	call c, $99cb                                    ; $5ec6: $dc $cb $99
	sbc  e                                           ; $5ec9: $9b
	call z, $a8cb                                    ; $5eca: $cc $cb $a8
	ld   d, e                                        ; $5ecd: $53
	ld   de, $1111                                   ; $5ece: $11 $11 $11
	dec  d                                           ; $5ed1: $15
	rst  $38                                         ; $5ed2: $ff
	cp   $63                                         ; $5ed3: $fe $63
	ld   b, [hl]                                     ; $5ed5: $46
	ld   h, l                                        ; $5ed6: $65
	ld   l, c                                        ; $5ed7: $69
	rst  $28                                         ; $5ed8: $ef
	db   $ed                                         ; $5ed9: $ed
	cp   c                                           ; $5eda: $b9
	sbc  b                                           ; $5edb: $98
	adc  d                                           ; $5edc: $8a
	cp   [hl]                                        ; $5edd: $be
	db   $ec                                         ; $5ede: $ec
	xor  c                                           ; $5edf: $a9
	xor  c                                           ; $5ee0: $a9
	xor  d                                           ; $5ee1: $aa
	cp   l                                           ; $5ee2: $bd
	call c, $2195                                    ; $5ee3: $dc $95 $21
	ld   de, $1111                                   ; $5ee6: $11 $11 $11
	ld   l, $ff                                      ; $5ee9: $2e $ff
	ld   sp, hl                                      ; $5eeb: $f9
	ld   d, [hl]                                     ; $5eec: $56
	ld   d, h                                        ; $5eed: $54
	ld   d, l                                        ; $5eee: $55
	sbc  [hl]                                        ; $5eef: $9e
	cp   $cd                                         ; $5ef0: $fe $cd
	jp   z, $8c97                                    ; $5ef2: $ca $97 $8c

	db   $dd                                         ; $5ef5: $dd
	cp   c                                           ; $5ef6: $b9
	xor  e                                           ; $5ef7: $ab
	cp   c                                           ; $5ef8: $b9
	sbc  d                                           ; $5ef9: $9a
	cp   l                                           ; $5efa: $bd
	ld   [$1163], a                                  ; $5efb: $ea $63 $11
	ld   de, $1111                                   ; $5efe: $11 $11 $11
	xor  a                                           ; $5f01: $af
	rst  $38                                         ; $5f02: $ff
	or   a                                           ; $5f03: $b7
	ld   [hl], a                                     ; $5f04: $77
	ld   d, e                                        ; $5f05: $53
	ld   b, a                                        ; $5f06: $47
	adc  $ed                                         ; $5f07: $ce $ed
	db   $ed                                         ; $5f09: $ed
	cp   c                                           ; $5f0a: $b9
	ld   a, b                                        ; $5f0b: $78
	cp   l                                           ; $5f0c: $bd
	jp   z, $cbbc                                    ; $5f0d: $ca $bc $cb

	sbc  c                                           ; $5f10: $99
	xor  h                                           ; $5f11: $ac
	call c, Call_0ee_6397                            ; $5f12: $dc $97 $63
	ld   de, $1111                                   ; $5f15: $11 $11 $11
	inc  de                                          ; $5f18: $13
	rst  $28                                         ; $5f19: $ef
	rst  $38                                         ; $5f1a: $ff
	xor  d                                           ; $5f1b: $aa
	or   a                                           ; $5f1c: $b7
	ld   b, e                                        ; $5f1d: $43
	ld   c, c                                        ; $5f1e: $49
	call c, $fede                                    ; $5f1f: $dc $de $fe
	cp   b                                           ; $5f22: $b8
	adc  d                                           ; $5f23: $8a
	cp   e                                           ; $5f24: $bb
	xor  d                                           ; $5f25: $aa
	call $99da                                       ; $5f26: $cd $da $99
	xor  h                                           ; $5f29: $ac
	res  5, b                                        ; $5f2a: $cb $a8
	ld   h, e                                        ; $5f2c: $63
	ld   de, $1111                                   ; $5f2d: $11 $11 $11
	inc  de                                          ; $5f30: $13
	rst  JumpTable                                         ; $5f31: $df
	db   $fd                                         ; $5f32: $fd
	call Call_0ee_43c9                               ; $5f33: $cd $c9 $43
	ld   e, b                                        ; $5f36: $58
	xor  c                                           ; $5f37: $a9
	cp   l                                           ; $5f38: $bd
	rst  $38                                         ; $5f39: $ff
	cp   c                                           ; $5f3a: $b9
	xor  e                                           ; $5f3b: $ab
	jp   z, $ce89                                    ; $5f3c: $ca $89 $ce

	jp   c, $bb8a                                    ; $5f3f: $da $8a $bb

	cp   e                                           ; $5f42: $bb
	cp   d                                           ; $5f43: $ba
	ld   [hl], e                                     ; $5f44: $73
	ld   de, $1111                                   ; $5f45: $11 $11 $11
	ld   [de], a                                     ; $5f48: $12
	cp   a                                           ; $5f49: $bf
	db   $ed                                         ; $5f4a: $ed
	rst  $28                                         ; $5f4b: $ef
	ei                                               ; $5f4c: $fb
	ld   h, h                                        ; $5f4d: $64
	ld   l, b                                        ; $5f4e: $68
	halt                                             ; $5f4f: $76
	ld   a, h                                        ; $5f50: $7c
	rst  $38                                         ; $5f51: $ff
	jp   c, $dbcd                                    ; $5f52: $da $cd $db

	sbc  d                                           ; $5f55: $9a
	adc  $ca                                         ; $5f56: $ce $ca
	sbc  e                                           ; $5f58: $9b
	call z, $bbab                                    ; $5f59: $cc $ab $bb
	add  h                                           ; $5f5c: $84
	ld   de, $1111                                   ; $5f5d: $11 $11 $11
	ld   de, $cc4a                                   ; $5f60: $11 $4a $cc
	rst  $28                                         ; $5f63: $ef
	cp   $a8                                         ; $5f64: $fe $a8
	ld   a, b                                        ; $5f66: $78
	add  l                                           ; $5f67: $85
	ld   b, a                                        ; $5f68: $47
	adc  $db                                         ; $5f69: $ce $db
	adc  $fd                                         ; $5f6b: $ce $fd
	xor  d                                           ; $5f6d: $aa
	call $8ac9                                       ; $5f6e: $cd $c9 $8a
	cp   h                                           ; $5f71: $bc
	xor  d                                           ; $5f72: $aa
	cp   e                                           ; $5f73: $bb
	or   a                                           ; $5f74: $b7
	ld   b, d                                        ; $5f75: $42
	ld   de, $1111                                   ; $5f76: $11 $11 $11
	ld   de, $ad58                                   ; $5f79: $11 $58 $ad
	rst  $38                                         ; $5f7c: $ff
	cp   $bb                                         ; $5f7d: $fe $bb
	cp   c                                           ; $5f7f: $b9
	ld   h, h                                        ; $5f80: $64
	ld   e, b                                        ; $5f81: $58
	xor  d                                           ; $5f82: $aa
	xor  e                                           ; $5f83: $ab
	rst  JumpTable                                         ; $5f84: $df
	db   $ed                                         ; $5f85: $ed
	call z, $a9cc                                    ; $5f86: $cc $cc $a9
	xor  e                                           ; $5f89: $ab
	res  5, e                                        ; $5f8a: $cb $ab
	cp   e                                           ; $5f8c: $bb
	sub  [hl]                                        ; $5f8d: $96
	ld   b, e                                        ; $5f8e: $43
	ld   hl, $1111                                   ; $5f8f: $21 $11 $11
	ld   de, $6935                                   ; $5f92: $11 $35 $69
	adc  $ff                                         ; $5f95: $ce $ff
	xor  $dc                                         ; $5f97: $ee $dc
	and  a                                           ; $5f99: $a7
	ld   a, b                                        ; $5f9a: $78
	xor  d                                           ; $5f9b: $aa
	sbc  d                                           ; $5f9c: $9a
	cp   l                                           ; $5f9d: $bd
	call c, $ddbc                                    ; $5f9e: $dc $bc $dd
	res  7, e                                        ; $5fa1: $cb $bb
	cp   e                                           ; $5fa3: $bb
	sbc  c                                           ; $5fa4: $99
	adc  b                                           ; $5fa5: $88
	halt                                             ; $5fa6: $76
	ld   b, h                                        ; $5fa7: $44
	ld   b, e                                        ; $5fa8: $43
	ld   de, $1111                                   ; $5fa9: $11 $11 $11
	ld   [de], a                                     ; $5fac: $12
	inc  hl                                          ; $5fad: $23
	ld   d, a                                        ; $5fae: $57
	xor  e                                           ; $5faf: $ab
	cp   e                                           ; $5fb0: $bb
	call $bbcb                                       ; $5fb1: $cd $cb $bb
	call z, $bbbb                                    ; $5fb4: $cc $bb $bb
	xor  d                                           ; $5fb7: $aa
	xor  d                                           ; $5fb8: $aa
	xor  e                                           ; $5fb9: $ab
	xor  d                                           ; $5fba: $aa
	cp   e                                           ; $5fbb: $bb
	xor  e                                           ; $5fbc: $ab
	xor  d                                           ; $5fbd: $aa
	sbc  c                                           ; $5fbe: $99
	xor  c                                           ; $5fbf: $a9
	adc  b                                           ; $5fc0: $88
	ld   [hl], a                                     ; $5fc1: $77
	ld   h, [hl]                                     ; $5fc2: $66
	ld   b, e                                        ; $5fc3: $43
	ld   hl, $1101                                   ; $5fc4: $21 $01 $11
	ld   de, $4512                                   ; $5fc7: $11 $12 $45
	ld   h, a                                        ; $5fca: $67
	adc  c                                           ; $5fcb: $89
	xor  e                                           ; $5fcc: $ab
	call z, $ddcd                                    ; $5fcd: $cc $cd $dd
	db   $dd                                         ; $5fd0: $dd
	call c, $bccc                                    ; $5fd1: $dc $cc $bc
	res  7, e                                        ; $5fd4: $cb $bb
	call z, $baba                                    ; $5fd6: $cc $ba $ba
	xor  c                                           ; $5fd9: $a9
	add  a                                           ; $5fda: $87
	halt                                             ; $5fdb: $76
	ld   d, h                                        ; $5fdc: $54
	ld   [hl-], a                                    ; $5fdd: $32
	ld   de, $1111                                   ; $5fde: $11 $11 $11
	ld   de, $4613                                   ; $5fe1: $11 $13 $46
	ld   a, c                                        ; $5fe4: $79
	cp   e                                           ; $5fe5: $bb
	call c, $ffee                                    ; $5fe6: $dc $ee $ff
	rst  $28                                         ; $5fe9: $ef
	xor  $dd                                         ; $5fea: $ee $dd
	call z, $bbbb                                    ; $5fec: $cc $bb $bb
	xor  d                                           ; $5fef: $aa
	cp   d                                           ; $5ff0: $ba
	xor  d                                           ; $5ff1: $aa
	sbc  b                                           ; $5ff2: $98
	sbc  b                                           ; $5ff3: $98
	halt                                             ; $5ff4: $76
	ld   d, l                                        ; $5ff5: $55
	ld   b, d                                        ; $5ff6: $42
	ld   de, $1111                                   ; $5ff7: $11 $11 $11
	ld   de, $4513                                   ; $5ffa: $11 $13 $45
	ld   l, b                                        ; $5ffd: $68
	xor  e                                           ; $5ffe: $ab
	call z, $eedd                                    ; $5fff: $cc $dd $ee
	cp   $fe                                         ; $6002: $fe $fe
	db   $dd                                         ; $6004: $dd
	res  7, e                                        ; $6005: $cb $bb
	cp   d                                           ; $6007: $ba
	xor  e                                           ; $6008: $ab
	cp   e                                           ; $6009: $bb
	xor  c                                           ; $600a: $a9
	xor  c                                           ; $600b: $a9
	sbc  c                                           ; $600c: $99
	add  a                                           ; $600d: $87
	ld   h, [hl]                                     ; $600e: $66
	ld   d, h                                        ; $600f: $54
	ld   sp, $1111                                   ; $6010: $31 $11 $11
	ld   de, $3411                                   ; $6013: $11 $11 $34
	ld   d, a                                        ; $6016: $57
	adc  d                                           ; $6017: $8a
	cp   h                                           ; $6018: $bc
	db   $dd                                         ; $6019: $dd
	sbc  $ff                                         ; $601a: $de $ff
	xor  $de                                         ; $601c: $ee $de
	call z, $bbbb                                    ; $601e: $cc $bb $bb
	xor  d                                           ; $6021: $aa
	xor  e                                           ; $6022: $ab
	xor  d                                           ; $6023: $aa
	sbc  d                                           ; $6024: $9a
	sbc  c                                           ; $6025: $99
	adc  b                                           ; $6026: $88
	ld   [hl], a                                     ; $6027: $77
	ld   h, l                                        ; $6028: $65
	ld   b, e                                        ; $6029: $43
	ld   hl, $1111                                   ; $602a: $21 $11 $11
	ld   de, $4512                                   ; $602d: $11 $12 $45
	ld   h, a                                        ; $6030: $67
	adc  d                                           ; $6031: $8a
	call $edcd                                       ; $6032: $cd $cd $ed
	xor  $ed                                         ; $6035: $ee $ed
	db   $dd                                         ; $6037: $dd
	call c, $aacb                                    ; $6038: $dc $cb $aa
	xor  d                                           ; $603b: $aa
	xor  e                                           ; $603c: $ab
	cp   d                                           ; $603d: $ba
	xor  c                                           ; $603e: $a9
	xor  c                                           ; $603f: $a9
	adc  b                                           ; $6040: $88
	ld   [hl], a                                     ; $6041: $77
	ld   h, l                                        ; $6042: $65
	ld   b, e                                        ; $6043: $43
	ld   hl, $1111                                   ; $6044: $21 $11 $11
	ld   de, $4513                                   ; $6047: $11 $13 $45
	ld   l, b                                        ; $604a: $68
	sbc  d                                           ; $604b: $9a
	cp   l                                           ; $604c: $bd
	sbc  $de                                         ; $604d: $de $de
	xor  $ed                                         ; $604f: $ee $ed
	call c, $bbcb                                    ; $6051: $dc $cb $bb
	cp   e                                           ; $6054: $bb
	xor  d                                           ; $6055: $aa
	xor  d                                           ; $6056: $aa
	cp   d                                           ; $6057: $ba
	xor  d                                           ; $6058: $aa
	xor  c                                           ; $6059: $a9
	sbc  b                                           ; $605a: $98
	halt                                             ; $605b: $76
	ld   h, l                                        ; $605c: $65
	ld   [hl-], a                                    ; $605d: $32
	ld   de, $1111                                   ; $605e: $11 $11 $11
	ld   de, $4513                                   ; $6061: $11 $13 $45
	ld   a, b                                        ; $6064: $78
	sbc  h                                           ; $6065: $9c
	call z, $eedd                                    ; $6066: $cc $dd $ee
	cp   $de                                         ; $6069: $fe $de
	call c, $aabb                                    ; $606b: $dc $bb $aa
	xor  d                                           ; $606e: $aa
	xor  d                                           ; $606f: $aa
	xor  e                                           ; $6070: $ab
	cp   d                                           ; $6071: $ba
	sbc  d                                           ; $6072: $9a
	sbc  c                                           ; $6073: $99
	sbc  b                                           ; $6074: $98
	halt                                             ; $6075: $76
	ld   d, h                                        ; $6076: $54
	ld   [hl-], a                                    ; $6077: $32
	ld   de, $1111                                   ; $6078: $11 $11 $11
	ld   de, $5623                                   ; $607b: $11 $23 $56
	ld   a, b                                        ; $607e: $78
	cp   e                                           ; $607f: $bb
	db   $dd                                         ; $6080: $dd
	xor  $ee                                         ; $6081: $ee $ee
	xor  $ed                                         ; $6083: $ee $ed
	call c, $abcb                                    ; $6085: $dc $cb $ab
	cp   e                                           ; $6088: $bb
	cp   d                                           ; $6089: $ba
	cp   e                                           ; $608a: $bb
	cp   d                                           ; $608b: $ba
	xor  d                                           ; $608c: $aa
	sbc  c                                           ; $608d: $99
	sbc  b                                           ; $608e: $98
	halt                                             ; $608f: $76
	ld   d, h                                        ; $6090: $54
	ld   [hl-], a                                    ; $6091: $32
	ld   de, $1111                                   ; $6092: $11 $11 $11
	ld   de, $5623                                   ; $6095: $11 $23 $56
	ld   a, c                                        ; $6098: $79
	cp   h                                           ; $6099: $bc
	call $eeed                                       ; $609a: $cd $ed $ee
	db   $ed                                         ; $609d: $ed
	db   $ed                                         ; $609e: $ed
	db   $db                                         ; $609f: $db
	jp   z, $abba                                    ; $60a0: $ca $ba $ab

	cp   e                                           ; $60a3: $bb
	cp   e                                           ; $60a4: $bb
	cp   d                                           ; $60a5: $ba
	xor  c                                           ; $60a6: $a9
	xor  c                                           ; $60a7: $a9
	adc  b                                           ; $60a8: $88
	halt                                             ; $60a9: $76
	ld   d, h                                        ; $60aa: $54
	ld   [hl-], a                                    ; $60ab: $32
	ld   de, $1111                                   ; $60ac: $11 $11 $11
	ld   de, $5623                                   ; $60af: $11 $23 $56
	ld   a, c                                        ; $60b2: $79
	cp   h                                           ; $60b3: $bc
	call $eeee                                       ; $60b4: $cd $ee $ee
	db   $ed                                         ; $60b7: $ed
	call c, $bacb                                    ; $60b8: $dc $cb $ba
	xor  d                                           ; $60bb: $aa
	xor  d                                           ; $60bc: $aa
	xor  e                                           ; $60bd: $ab
	cp   e                                           ; $60be: $bb
	cp   e                                           ; $60bf: $bb
	xor  d                                           ; $60c0: $aa
	sbc  c                                           ; $60c1: $99
	adc  b                                           ; $60c2: $88
	halt                                             ; $60c3: $76
	ld   d, h                                        ; $60c4: $54
	ld   [hl-], a                                    ; $60c5: $32
	ld   de, $1111                                   ; $60c6: $11 $11 $11
	ld   de, $5623                                   ; $60c9: $11 $23 $56
	ld   a, c                                        ; $60cc: $79
	cp   h                                           ; $60cd: $bc
	call $deee                                       ; $60ce: $cd $ee $de
	db   $ed                                         ; $60d1: $ed
	call c, $bbcc                                    ; $60d2: $dc $cc $bb
	xor  c                                           ; $60d5: $a9
	sbc  d                                           ; $60d6: $9a
	xor  e                                           ; $60d7: $ab
	cp   e                                           ; $60d8: $bb
	cp   e                                           ; $60d9: $bb

jr_0ee_60da:
	xor  d                                           ; $60da: $aa
	xor  d                                           ; $60db: $aa
	sbc  c                                           ; $60dc: $99
	ld   [hl], a                                     ; $60dd: $77
	ld   h, l                                        ; $60de: $65
	ld   [hl-], a                                    ; $60df: $32
	ld   de, $1111                                   ; $60e0: $11 $11 $11
	ld   de, $5613                                   ; $60e3: $11 $13 $56
	adc  c                                           ; $60e6: $89
	cp   h                                           ; $60e7: $bc
	call $deee                                       ; $60e8: $cd $ee $de
	db   $ed                                         ; $60eb: $ed
	db   $dd                                         ; $60ec: $dd
	call $bacb                                       ; $60ed: $cd $cb $ba
	xor  e                                           ; $60f0: $ab
	cp   e                                           ; $60f1: $bb
	xor  e                                           ; $60f2: $ab
	cp   e                                           ; $60f3: $bb
	xor  c                                           ; $60f4: $a9
	sbc  c                                           ; $60f5: $99
	ld   [hl], a                                     ; $60f6: $77
	ld   h, l                                        ; $60f7: $65
	ld   [hl-], a                                    ; $60f8: $32
	ld   de, $1111                                   ; $60f9: $11 $11 $11
	ld   de, $9c35                                   ; $60fc: $11 $35 $9c
	db   $ed                                         ; $60ff: $ed
	xor  $ef                                         ; $6100: $ee $ef
	jp   c, $9988                                    ; $6102: $da $88 $99

	ld   [hl], a                                     ; $6105: $77
	sbc  e                                           ; $6106: $9b
	cp   d                                           ; $6107: $ba
	cp   h                                           ; $6108: $bc
	db   $ed                                         ; $6109: $ed
	call z, $dbce                                    ; $610a: $cc $ce $db
	xor  c                                           ; $610d: $a9
	cp   e                                           ; $610e: $bb
	sub  a                                           ; $610f: $97
	ld   h, [hl]                                     ; $6110: $66
	ld   h, h                                        ; $6111: $64
	ld   hl, $1111                                   ; $6112: $21 $11 $11
	ld   [de], a                                     ; $6115: $12
	ld   [hl], a                                     ; $6116: $77
	adc  d                                           ; $6117: $8a
	rst  JumpTable                                         ; $6118: $df
	db   $fc                                         ; $6119: $fc
	xor  h                                           ; $611a: $ac
	call z, Call_0ee_7a85                            ; $611b: $cc $85 $7a
	sbc  b                                           ; $611e: $98
	adc  e                                           ; $611f: $8b
	rst  JumpTable                                         ; $6120: $df
	db   $eb                                         ; $6121: $eb
	call $99ca                                       ; $6122: $cd $ca $99
	xor  e                                           ; $6125: $ab
	set  1, h                                        ; $6126: $cb $cc
	call c, Call_0ee_76a8                            ; $6128: $dc $a8 $76
	ld   d, d                                        ; $612b: $52
	ld   de, $1111                                   ; $612c: $11 $11 $11
	jr   jr_0ee_60da                                 ; $612f: $18 $a9

	adc  $ff                                         ; $6131: $ce $ff
	xor  c                                           ; $6133: $a9
	xor  h                                           ; $6134: $ac
	and  a                                           ; $6135: $a7
	ld   d, [hl]                                     ; $6136: $56
	xor  d                                           ; $6137: $aa
	adc  c                                           ; $6138: $89
	xor  [hl]                                        ; $6139: $ae
	db   $fd                                         ; $613a: $fd
	call $97ca                                       ; $613b: $cd $ca $97
	adc  d                                           ; $613e: $8a
	xor  e                                           ; $613f: $ab
	rst  JumpTable                                         ; $6140: $df
	cp   $cb                                         ; $6141: $fe $cb
	xor  c                                           ; $6143: $a9
	ld   [hl], h                                     ; $6144: $74
	ld   [hl-], a                                    ; $6145: $32
	ld   de, $1111                                   ; $6146: $11 $11 $11
	inc  l                                           ; $6149: $2c
	db   $fc                                         ; $614a: $fc
	db   $dd                                         ; $614b: $dd
	res  2, a                                        ; $614c: $cb $97
	sbc  c                                           ; $614e: $99
	xor  b                                           ; $614f: $a8
	ld   l, b                                        ; $6150: $68
	sbc  c                                           ; $6151: $99
	sbc  c                                           ; $6152: $99
	rst  JumpTable                                         ; $6153: $df
	db   $fd                                         ; $6154: $fd
	cp   d                                           ; $6155: $ba
	xor  c                                           ; $6156: $a9
	halt                                             ; $6157: $76
	ld   a, e                                        ; $6158: $7b
	cp   l                                           ; $6159: $bd
	rst  $38                                         ; $615a: $ff
	rst  $38                                         ; $615b: $ff
	cp   c                                           ; $615c: $b9
	add  a                                           ; $615d: $87
	ld   h, e                                        ; $615e: $63
	ld   hl, $1111                                   ; $615f: $21 $11 $11
	ld   de, $fd9f                                   ; $6162: $11 $9f $fd
	xor  d                                           ; $6165: $aa
	xor  b                                           ; $6166: $a8
	ld   d, l                                        ; $6167: $55
	adc  e                                           ; $6168: $8b
	cp   b                                           ; $6169: $b8
	ld   a, c                                        ; $616a: $79
	xor  c                                           ; $616b: $a9
	xor  d                                           ; $616c: $aa
	rst  JumpTable                                         ; $616d: $df
	db   $fc                                         ; $616e: $fc
	adc  b                                           ; $616f: $88
	sbc  b                                           ; $6170: $98
	ld   h, [hl]                                     ; $6171: $66
	sbc  l                                           ; $6172: $9d
	rst  $38                                         ; $6173: $ff
	db   $ed                                         ; $6174: $ed
	db   $fc                                         ; $6175: $fc
	sub  [hl]                                        ; $6176: $96
	ld   h, a                                        ; $6177: $67
	ld   h, d                                        ; $6178: $62
	ld   de, $1111                                   ; $6179: $11 $11 $11
	ld   d, $ff                                      ; $617c: $16 $ff
	jp   hl                                          ; $617e: $e9


	sbc  c                                           ; $617f: $99
	ld   [hl], l                                     ; $6180: $75
	ld   c, b                                        ; $6181: $48
	db   $dd                                         ; $6182: $dd
	or   a                                           ; $6183: $b7
	ld   a, c                                        ; $6184: $79
	sbc  c                                           ; $6185: $99
	adc  e                                           ; $6186: $8b
	rst  $38                                         ; $6187: $ff
	jp   hl                                          ; $6188: $e9


	ld   [hl], a                                     ; $6189: $77
	ld   [hl], a                                     ; $618a: $77
	ld   a, b                                        ; $618b: $78
	cp   [hl]                                        ; $618c: $be
	rst  $38                                         ; $618d: $ff
	db   $ed                                         ; $618e: $ed
	ret                                              ; $618f: $c9


	add  [hl]                                        ; $6190: $86
	ld   h, [hl]                                     ; $6191: $66
	ld   b, e                                        ; $6192: $43
	ld   de, $1111                                   ; $6193: $11 $11 $11
	rra                                              ; $6196: $1f
	rst  $38                                         ; $6197: $ff
	or   l                                           ; $6198: $b5
	ld   e, b                                        ; $6199: $58
	ld   [hl], h                                     ; $619a: $74
	ld   c, c                                        ; $619b: $49
	rst  $38                                         ; $619c: $ff
	sub  [hl]                                        ; $619d: $96
	ld   a, c                                        ; $619e: $79
	cp   d                                           ; $619f: $ba
	sbc  h                                           ; $61a0: $9c
	rst  $38                                         ; $61a1: $ff
	ret  c                                           ; $61a2: $d8

	ld   d, [hl]                                     ; $61a3: $56
	add  a                                           ; $61a4: $87
	ld   a, e                                        ; $61a5: $7b
	rst  JumpTable                                         ; $61a6: $df
	cp   $cb                                         ; $61a7: $fe $cb
	sbc  b                                           ; $61a9: $98
	ld   h, l                                        ; $61aa: $65
	ld   h, l                                        ; $61ab: $65
	ld   d, e                                        ; $61ac: $53
	ld   de, $1111                                   ; $61ad: $11 $11 $11
	xor  a                                           ; $61b0: $af
	cp   $73                                         ; $61b1: $fe $73
	ld   d, a                                        ; $61b3: $57
	ld   d, e                                        ; $61b4: $53
	ld   a, l                                        ; $61b5: $7d
	db   $fd                                         ; $61b6: $fd
	halt                                             ; $61b7: $76
	ld   a, d                                        ; $61b8: $7a
	xor  c                                           ; $61b9: $a9
	xor  a                                           ; $61ba: $af
	db   $fd                                         ; $61bb: $fd
	or   a                                           ; $61bc: $b7
	ld   d, a                                        ; $61bd: $57
	ld   [hl], a                                     ; $61be: $77
	xor  [hl]                                        ; $61bf: $ae
	rst  $38                                         ; $61c0: $ff
	db   $fd                                         ; $61c1: $fd
	ret                                              ; $61c2: $c9


	halt                                             ; $61c3: $76
	ld   h, [hl]                                     ; $61c4: $66
	ld   d, h                                        ; $61c5: $54
	ld   hl, $1111                                   ; $61c6: $21 $11 $11
	ld   a, [de]                                     ; $61c9: $1a
	rst  $38                                         ; $61ca: $ff
	ld   hl, sp+$45                                  ; $61cb: $f8 $45
	ld   [hl], h                                     ; $61cd: $74
	daa                                              ; $61ce: $27
	rst  JumpTable                                         ; $61cf: $df
	rst  $20                                         ; $61d0: $e7
	ld   a, c                                        ; $61d1: $79
	xor  d                                           ; $61d2: $aa
	sbc  h                                           ; $61d3: $9c
	rst  $38                                         ; $61d4: $ff
	reti                                             ; $61d5: $d9


	ld   [hl], a                                     ; $61d6: $77
	sbc  b                                           ; $61d7: $98
	ld   a, d                                        ; $61d8: $7a
	rst  JumpTable                                         ; $61d9: $df
	rst  $38                                         ; $61da: $ff
	call z, Call_0ee_54a7                            ; $61db: $cc $a7 $54
	ld   b, h                                        ; $61de: $44
	ld   sp, $1111                                   ; $61df: $31 $11 $11
	ld   de, $fbff                                   ; $61e2: $11 $ff $fb
	ld   d, [hl]                                     ; $61e5: $56
	add  h                                           ; $61e6: $84
	inc  de                                          ; $61e7: $13
	cp   a                                           ; $61e8: $bf
	ld   a, [$ba7a]                                  ; $61e9: $fa $7a $ba
	adc  e                                           ; $61ec: $8b
	rst  $38                                         ; $61ed: $ff
	ret                                              ; $61ee: $c9


	sbc  d                                           ; $61ef: $9a
	xor  b                                           ; $61f0: $a8
	ld   a, d                                        ; $61f1: $7a
	rst  $38                                         ; $61f2: $ff
	cp   $dc                                         ; $61f3: $fe $dc
	sub  [hl]                                        ; $61f5: $96
	ld   [hl-], a                                    ; $61f6: $32
	dec  [hl]                                        ; $61f7: $35
	ld   hl, $1111                                   ; $61f8: $21 $11 $11
	ld   e, $ff                                      ; $61fb: $1e $ff
	ld   [$6167], a                                  ; $61fd: $ea $67 $61
	ld   a, [hl+]                                    ; $6200: $2a
	rst  $28                                         ; $6201: $ef
	cp   c                                           ; $6202: $b9
	sbc  e                                           ; $6203: $9b
	sbc  c                                           ; $6204: $99
	cp   a                                           ; $6205: $bf
	db   $fd                                         ; $6206: $fd
	sbc  c                                           ; $6207: $99
	cp   d                                           ; $6208: $ba
	sub  a                                           ; $6209: $97
	adc  l                                           ; $620a: $8d
	rst  $38                                         ; $620b: $ff
	rst  $38                                         ; $620c: $ff
	db   $eb                                         ; $620d: $eb
	ld   [hl], e                                     ; $620e: $73
	ld   [de], a                                     ; $620f: $12
	ld   sp, $1111                                   ; $6210: $31 $11 $11
	ld   de, $feff                                   ; $6213: $11 $ff $fe
	xor  c                                           ; $6216: $a9
	sub  l                                           ; $6217: $95
	ld   [de], a                                     ; $6218: $12
	sbc  [hl]                                        ; $6219: $9e
	db   $eb                                         ; $621a: $eb
	adc  e                                           ; $621b: $8b
	ret                                              ; $621c: $c9


	sbc  h                                           ; $621d: $9c
	rst  $38                                         ; $621e: $ff
	ret  z                                           ; $621f: $c8

	xor  l                                           ; $6220: $ad
	ret                                              ; $6221: $c9


	ld   a, e                                        ; $6222: $7b
	rst  $38                                         ; $6223: $ff
	xor  $fe                                         ; $6224: $ee $fe
	or   [hl]                                        ; $6226: $b6
	ld   de, $1122                                   ; $6227: $11 $22 $11
	ld   de, $3f11                                   ; $622a: $11 $11 $3f
	cp   $cc                                         ; $622d: $fe $cc
	xor  d                                           ; $622f: $aa
	ld   hl, $eb5d                                   ; $6230: $21 $5d $eb
	sbc  e                                           ; $6233: $9b
	db   $ec                                         ; $6234: $ec
	ld   a, b                                        ; $6235: $78
	rst  $28                                         ; $6236: $ef
	ret  c                                           ; $6237: $d8

	sbc  l                                           ; $6238: $9d
	ld   [$ef89], a                                  ; $6239: $ea $89 $ef
	db   $ed                                         ; $623c: $ed
	rst  $28                                         ; $623d: $ef
	ret  z                                           ; $623e: $c8

	ld   [hl-], a                                    ; $623f: $32
	ld   sp, $1111                                   ; $6240: $31 $11 $11
	ld   de, $fe1f                                   ; $6243: $11 $1f $fe
	call z, $21ba                                    ; $6246: $cc $ba $21
	inc  a                                           ; $6249: $3c
	res  3, e                                        ; $624a: $cb $9b
	db   $fd                                         ; $624c: $fd
	adc  c                                           ; $624d: $89
	db   $ed                                         ; $624e: $ed
	ret                                              ; $624f: $c9


	sbc  [hl]                                        ; $6250: $9e
	ei                                               ; $6251: $fb
	cp   h                                           ; $6252: $bc
	rst  $28                                         ; $6253: $ef
	call c, $c8ef                                    ; $6254: $dc $ef $c8
	ld   b, d                                        ; $6257: $42
	ld   hl, $1111                                   ; $6258: $21 $11 $11
	ld   de, $fcaf                                   ; $625b: $11 $af $fc
	rst  $38                                         ; $625e: $ff
	add  $11                                         ; $625f: $c6 $11
	adc  e                                           ; $6261: $8b
	sbc  c                                           ; $6262: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6263: $cf
	ei                                               ; $6264: $fb
	xor  l                                           ; $6265: $ad
	db   $eb                                         ; $6266: $eb
	adc  b                                           ; $6267: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6268: $cf
	db   $eb                                         ; $6269: $eb
	rst  JumpTable                                         ; $626a: $df
	db   $fd                                         ; $626b: $fd
	xor  d                                           ; $626c: $aa
	db   $db                                         ; $626d: $db
	add  l                                           ; $626e: $85
	ld   b, e                                        ; $626f: $43
	ld   de, $1111                                   ; $6270: $11 $11 $11
	rla                                              ; $6273: $17
	rst  $38                                         ; $6274: $ff
	rst  JumpTable                                         ; $6275: $df
	db   $fc                                         ; $6276: $fc
	ld   [hl], c                                     ; $6277: $71
	rla                                              ; $6278: $17
	sub  a                                           ; $6279: $97
	sbc  h                                           ; $627a: $9c
	rst  $38                                         ; $627b: $ff
	call c, $87ed                                    ; $627c: $dc $ed $87
	sbc  l                                           ; $627f: $9d
	db   $ed                                         ; $6280: $ed
	rst  $28                                         ; $6281: $ef
	rst  $38                                         ; $6282: $ff
	ret  z                                           ; $6283: $c8

	xor  e                                           ; $6284: $ab
	sub  a                                           ; $6285: $97
	ld   d, h                                        ; $6286: $54
	ld   de, $1111                                   ; $6287: $11 $11 $11
	dec  d                                           ; $628a: $15
	rst  $38                                         ; $628b: $ff
	rst  $28                                         ; $628c: $ef
	rst  $38                                         ; $628d: $ff
	sub  d                                           ; $628e: $92
	ld   h, $65                                      ; $628f: $26 $65
	ld   a, d                                        ; $6291: $7a
	rst  $38                                         ; $6292: $ff
	rst  $38                                         ; $6293: $ff
	db   $fc                                         ; $6294: $fc
	add  a                                           ; $6295: $87
	adc  e                                           ; $6296: $8b
	call c, $ffff                                    ; $6297: $dc $ff $ff
	ret  z                                           ; $629a: $c8

	add  a                                           ; $629b: $87
	ld   d, h                                        ; $629c: $54
	ld   d, h                                        ; $629d: $54
	ld   de, $1111                                   ; $629e: $11 $11 $11
	dec  de                                          ; $62a1: $1b
	cp   $ff                                         ; $62a2: $fe $ff
	ei                                               ; $62a4: $fb
	ld   h, d                                        ; $62a5: $62
	ld   d, a                                        ; $62a6: $57
	ld   d, l                                        ; $62a7: $55
	sbc  l                                           ; $62a8: $9d
	rst  $38                                         ; $62a9: $ff
	rst  $38                                         ; $62aa: $ff
	ld   a, [$ac88]                                  ; $62ab: $fa $88 $ac
	sbc  $ff                                         ; $62ae: $de $ff
	db   $fd                                         ; $62b0: $fd
	and  a                                           ; $62b1: $a7
	ld   h, h                                        ; $62b2: $64
	inc  hl                                          ; $62b3: $23
	ld   de, $1111                                   ; $62b4: $11 $11 $11
	dec  d                                           ; $62b7: $15
	call $ffdf                                       ; $62b8: $cd $df $ff
	sub  [hl]                                        ; $62bb: $96
	ld   d, [hl]                                     ; $62bc: $56
	ld   h, h                                        ; $62bd: $64
	ld   l, c                                        ; $62be: $69
	rst  JumpTable                                         ; $62bf: $df
	rst  $38                                         ; $62c0: $ff
	rst  $38                                         ; $62c1: $ff
	jp   c, $bc9b                                    ; $62c2: $da $9b $bc

	rst  $38                                         ; $62c5: $ff
	rst  $38                                         ; $62c6: $ff
	ret                                              ; $62c7: $c9


	ld   h, h                                        ; $62c8: $64
	ld   hl, $1111                                   ; $62c9: $21 $11 $11
	ld   de, $fd1b                                   ; $62cc: $11 $1b $fd
	rst  $38                                         ; $62cf: $ff
	cp   $95                                         ; $62d0: $fe $95
	ld   l, b                                        ; $62d2: $68
	ld   b, c                                        ; $62d3: $41
	ld   e, c                                        ; $62d4: $59
	rst  $28                                         ; $62d5: $ef
	rst  $38                                         ; $62d6: $ff
	rst  $38                                         ; $62d7: $ff
	ld   [$edab], a                                  ; $62d8: $ea $ab $ed
	adc  $fd                                         ; $62db: $ce $fd
	and  [hl]                                        ; $62dd: $a6
	ld   d, e                                        ; $62de: $53
	ld   hl, $1111                                   ; $62df: $21 $11 $11
	ld   de, $af8c                                   ; $62e2: $11 $8c $af
	rst  $38                                         ; $62e5: $ff
	db   $fc                                         ; $62e6: $fc
	xor  d                                           ; $62e7: $aa
	and  h                                           ; $62e8: $a4
	inc  bc                                          ; $62e9: $03
	ld   a, l                                        ; $62ea: $7d
	db   $eb                                         ; $62eb: $eb
	rst  $38                                         ; $62ec: $ff
	rst  $38                                         ; $62ed: $ff
	cp   $ff                                         ; $62ee: $fe $ff
	jp   z, $94b9                                    ; $62f0: $ca $b9 $94

	inc  de                                          ; $62f3: $13
	ld   hl, $1111                                   ; $62f4: $21 $11 $11
	ld   de, $8c47                                   ; $62f7: $11 $47 $8c
	rst  $38                                         ; $62fa: $ff
	rst  $38                                         ; $62fb: $ff
	sbc  $ea                                         ; $62fc: $de $ea
	ld   h, [hl]                                     ; $62fe: $66
	adc  e                                           ; $62ff: $8b
	and  a                                           ; $6300: $a7
	xor  a                                           ; $6301: $af
	rst  $38                                         ; $6302: $ff
	cp   $ff                                         ; $6303: $fe $ff
	ret                                              ; $6305: $c9


	add  a                                           ; $6306: $87
	ld   h, e                                        ; $6307: $63
	inc  hl                                          ; $6308: $23
	ld   b, d                                        ; $6309: $42
	ld   de, $1211                                   ; $630a: $11 $11 $12
	ld   [hl+], a                                    ; $630d: $22
	ld   b, [hl]                                     ; $630e: $46
	adc  c                                           ; $630f: $89
	sbc  d                                           ; $6310: $9a
	cp   h                                           ; $6311: $bc
	call z, $eebc                                    ; $6312: $cc $bc $ee
	call c, $ccbc                                    ; $6315: $dc $bc $cc
	cp   e                                           ; $6318: $bb
	call z, $abca                                    ; $6319: $cc $ca $ab
	xor  d                                           ; $631c: $aa
	xor  d                                           ; $631d: $aa
	sbc  b                                           ; $631e: $98
	ld   [hl], e                                     ; $631f: $73
	ld   de, $1111                                   ; $6320: $11 $11 $11
	ld   de, $5713                                   ; $6323: $11 $13 $57
	cp   l                                           ; $6326: $bd
	rst  $28                                         ; $6327: $ef
	cp   $ff                                         ; $6328: $fe $ff
	db   $db                                         ; $632a: $db
	cp   h                                           ; $632b: $bc
	res  5, e                                        ; $632c: $cb $ab
	call z, $aacb                                    ; $632e: $cc $cb $aa
	xor  c                                           ; $6331: $a9
	add  [hl]                                        ; $6332: $86
	ld   h, [hl]                                     ; $6333: $66
	ld   hl, $1111                                   ; $6334: $21 $11 $11
	ld   de, $4611                                   ; $6337: $11 $11 $46
	adc  e                                           ; $633a: $8b
	rst  $38                                         ; $633b: $ff
	rst  $38                                         ; $633c: $ff
	rst  $38                                         ; $633d: $ff
	rst  $38                                         ; $633e: $ff
	cp   d                                           ; $633f: $ba
	call z, $dfbc                                    ; $6340: $cc $bc $df
	cp   $db                                         ; $6343: $fe $db
	cp   d                                           ; $6345: $ba
	ld   d, c                                        ; $6346: $51
	ld   de, $1111                                   ; $6347: $11 $11 $11
	ld   de, $9f11                                   ; $634a: $11 $11 $9f
	rst  $38                                         ; $634d: $ff
	rst  $38                                         ; $634e: $ff
	rst  $38                                         ; $634f: $ff
	rst  JumpTable                                         ; $6350: $df
	ld   sp, hl                                      ; $6351: $f9
	ld   h, a                                        ; $6352: $67
	sbc  a                                           ; $6353: $9f
	cp   $ff                                         ; $6354: $fe $ff
	rst  $38                                         ; $6356: $ff
	jp   c, $1194                                    ; $6357: $da $94 $11

	ld   de, $1111                                   ; $635a: $11 $11 $11
	inc  d                                           ; $635d: $14
	rst  JumpTable                                         ; $635e: $df
	rst  $38                                         ; $635f: $ff
	rst  $38                                         ; $6360: $ff
	rst  $38                                         ; $6361: $ff
	xor  d                                           ; $6362: $aa
	ld   h, h                                        ; $6363: $64
	ld   [hl+], a                                    ; $6364: $22
	ld   a, a                                        ; $6365: $7f
	rst  $38                                         ; $6366: $ff
	rst  $38                                         ; $6367: $ff
	rst  $38                                         ; $6368: $ff
	or   a                                           ; $6369: $b7
	ld   b, c                                        ; $636a: $41
	ld   de, $1111                                   ; $636b: $11 $11 $11
	dec  d                                           ; $636e: $15
	cp   a                                           ; $636f: $bf
	rst  $38                                         ; $6370: $ff
	rst  $38                                         ; $6371: $ff
	rst  $38                                         ; $6372: $ff
	reti                                             ; $6373: $d9


	ld   d, c                                        ; $6374: $51
	ld   de, $ff29                                   ; $6375: $11 $29 $ff
	rst  $38                                         ; $6378: $ff
	rst  $38                                         ; $6379: $ff
	add  $21                                         ; $637a: $c6 $21
	ld   de, $1111                                   ; $637c: $11 $11 $11
	inc  h                                           ; $637f: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6380: $cf
	rst  $38                                         ; $6381: $ff
	rst  $38                                         ; $6382: $ff
	rst  $38                                         ; $6383: $ff
	or   a                                           ; $6384: $b7
	ld   b, c                                        ; $6385: $41
	ld   de, $ff3e                                   ; $6386: $11 $3e $ff
	rst  $38                                         ; $6389: $ff
	cp   $61                                         ; $638a: $fe $61
	ld   de, $1111                                   ; $638c: $11 $11 $11
	ld   de, $ff6f                                   ; $638f: $11 $6f $ff
	rst  $38                                         ; $6392: $ff
	rst  $38                                         ; $6393: $ff
	rst  $38                                         ; $6394: $ff
	ld   h, c                                        ; $6395: $61
	ld   b, c                                        ; $6396: $41

Call_0ee_6397:
	ld   d, $ef                                      ; $6397: $16 $ef
	rst  $38                                         ; $6399: $ff
	rst  $38                                         ; $639a: $ff
	sub  e                                           ; $639b: $93
	ld   de, $1111                                   ; $639c: $11 $11 $11
	ld   de, $ff3f                                   ; $639f: $11 $3f $ff
	rst  $38                                         ; $63a2: $ff
	rst  $38                                         ; $63a3: $ff
	db   $fc                                         ; $63a4: $fc
	ld   b, e                                        ; $63a5: $43
	ld   sp, $ff16                                   ; $63a6: $31 $16 $ff
	rst  $38                                         ; $63a9: $ff
	rst  $38                                         ; $63aa: $ff
	ld   [hl], c                                     ; $63ab: $71
	ld   de, $1111                                   ; $63ac: $11 $11 $11
	inc  de                                          ; $63af: $13
	rst  $38                                         ; $63b0: $ff
	rst  $38                                         ; $63b1: $ff
	rst  $38                                         ; $63b2: $ff
	rst  $38                                         ; $63b3: $ff
	or   $22                                         ; $63b4: $f6 $22
	ld   de, $ff4e                                   ; $63b6: $11 $4e $ff
	rst  $38                                         ; $63b9: $ff
	or   l                                           ; $63ba: $b5
	ld   de, $1111                                   ; $63bb: $11 $11 $11
	ld   de, $ff9f                                   ; $63be: $11 $9f $ff
	rst  $38                                         ; $63c1: $ff
	rst  $38                                         ; $63c2: $ff
	ld   a, [$3144]                                  ; $63c3: $fa $44 $31
	ld   c, l                                        ; $63c6: $4d
	rst  $38                                         ; $63c7: $ff
	db   $fc                                         ; $63c8: $fc
	sub  h                                           ; $63c9: $94
	ld   de, $1111                                   ; $63ca: $11 $11 $11
	ld   de, $ffbf                                   ; $63cd: $11 $bf $ff
	rst  $38                                         ; $63d0: $ff
	rst  $38                                         ; $63d1: $ff
	or   $47                                         ; $63d2: $f6 $47
	ld   [hl+], a                                    ; $63d4: $22
	xor  a                                           ; $63d5: $af
	rst  $38                                         ; $63d6: $ff
	ld   a, [$1141]                                  ; $63d7: $fa $41 $11
	ld   de, $1b11                                   ; $63da: $11 $11 $1b
	rst  $38                                         ; $63dd: $ff
	rst  $38                                         ; $63de: $ff
	rst  $38                                         ; $63df: $ff
	rst  $38                                         ; $63e0: $ff
	and  e                                           ; $63e1: $a3
	ld   h, l                                        ; $63e2: $65
	ld   a, [hl+]                                    ; $63e3: $2a
	rst  $38                                         ; $63e4: $ff
	cp   $83                                         ; $63e5: $fe $83
	ld   de, $1111                                   ; $63e7: $11 $11 $11
	ld   [de], a                                     ; $63ea: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63eb: $cf
	rst  $38                                         ; $63ec: $ff
	rst  $38                                         ; $63ed: $ff
	rst  $38                                         ; $63ee: $ff
	call nz, $4865                                   ; $63ef: $c4 $65 $48
	rst  $28                                         ; $63f2: $ef
	rst  $38                                         ; $63f3: $ff
	add  $11                                         ; $63f4: $c6 $11
	ld   de, $1111                                   ; $63f6: $11 $11 $11
	ld   a, a                                        ; $63f9: $7f
	rst  $38                                         ; $63fa: $ff
	rst  $38                                         ; $63fb: $ff
	rst  $38                                         ; $63fc: $ff
	push hl                                          ; $63fd: $e5
	ld   b, l                                        ; $63fe: $45
	inc  [hl]                                        ; $63ff: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6400: $cf
	rst  $38                                         ; $6401: $ff
	rst  $10                                         ; $6402: $d7
	ld   de, $1111                                   ; $6403: $11 $11 $11
	ld   de, $ff7f                                   ; $6406: $11 $7f $ff
	rst  $38                                         ; $6409: $ff
	rst  $38                                         ; $640a: $ff
	db   $f4                                         ; $640b: $f4
	ld   b, h                                        ; $640c: $44
	inc  h                                           ; $640d: $24
	rst  $28                                         ; $640e: $ef
	rst  $38                                         ; $640f: $ff
	sub  e                                           ; $6410: $93
	ld   de, $1111                                   ; $6411: $11 $11 $11
	ld   de, $ffff                                   ; $6414: $11 $ff $ff
	rst  $38                                         ; $6417: $ff
	rst  $38                                         ; $6418: $ff
	sub  [hl]                                        ; $6419: $96
	ld   b, e                                        ; $641a: $43
	ld   l, d                                        ; $641b: $6a
	rst  $38                                         ; $641c: $ff
	jp   hl                                          ; $641d: $e9


	ld   hl, $1111                                   ; $641e: $21 $11 $11
	ld   de, $ff2b                                   ; $6421: $11 $2b $ff
	rst  $38                                         ; $6424: $ff
	rst  $38                                         ; $6425: $ff
	ld   a, [$4569]                                  ; $6426: $fa $69 $45
	rst  $28                                         ; $6429: $ef
	cp   $71                                         ; $642a: $fe $71
	ld   de, $1111                                   ; $642c: $11 $11 $11
	ld   de, $ffff                                   ; $642f: $11 $ff $ff
	rst  $38                                         ; $6432: $ff
	rst  $38                                         ; $6433: $ff
	ld   e, d                                        ; $6434: $5a
	and  l                                           ; $6435: $a5
	xor  a                                           ; $6436: $af
	rst  $38                                         ; $6437: $ff
	ld   [hl], c                                     ; $6438: $71
	ld   de, $1111                                   ; $6439: $11 $11 $11
	ld   de, $ffcf                                   ; $643c: $11 $cf $ff
	rst  $38                                         ; $643f: $ff
	rst  $38                                         ; $6440: $ff
	ld   l, d                                        ; $6441: $6a
	or   l                                           ; $6442: $b5
	xor  a                                           ; $6443: $af
	rst  $38                                         ; $6444: $ff
	sub  c                                           ; $6445: $91
	ld   de, $1111                                   ; $6446: $11 $11 $11
	ld   [de], a                                     ; $6449: $12
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	rst  $38                                         ; $644c: $ff
	rst  $38                                         ; $644d: $ff
	sbc  c                                           ; $644e: $99
	ld   a, d                                        ; $644f: $7a
	rst  JumpTable                                         ; $6450: $df
	cp   $41                                         ; $6451: $fe $41
	ld   de, $1111                                   ; $6453: $11 $11 $11
	ld   a, [hl]                                     ; $6456: $7e
	rst  $38                                         ; $6457: $ff
	rst  $38                                         ; $6458: $ff
	rst  $38                                         ; $6459: $ff
	rst  $38                                         ; $645a: $ff
	ld   d, a                                        ; $645b: $57
	cp   d                                           ; $645c: $ba
	db   $dd                                         ; $645d: $dd
	jp   $1111                                       ; $645e: $c3 $11 $11


	ld   de, $ff1e                                   ; $6461: $11 $1e $ff
	rst  $38                                         ; $6464: $ff
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	or   $6c                                         ; $6467: $f6 $6c
	sbc  $b4                                         ; $6469: $de $b4
	ld   de, $1111                                   ; $646b: $11 $11 $11
	ld   d, $ff                                      ; $646e: $16 $ff
	rst  $38                                         ; $6470: $ff
	rst  $38                                         ; $6471: $ff
	rst  $38                                         ; $6472: $ff
	rst  $38                                         ; $6473: $ff
	ld   a, l                                        ; $6474: $7d
	db   $dd                                         ; $6475: $dd
	or   c                                           ; $6476: $b1
	ld   de, $1111                                   ; $6477: $11 $11 $11
	rra                                              ; $647a: $1f
	rst  $38                                         ; $647b: $ff
	rst  $38                                         ; $647c: $ff
	rst  $38                                         ; $647d: $ff
	rst  $38                                         ; $647e: $ff
	ld   sp, hl                                      ; $647f: $f9
	db   $db                                         ; $6480: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6481: $cf
	ld   de, $1111                                   ; $6482: $11 $11 $11
	ld   de, $ffff                                   ; $6485: $11 $ff $ff
	rst  $38                                         ; $6488: $ff
	ld   sp, hl                                      ; $6489: $f9
	rst  $38                                         ; $648a: $ff
	ld   a, b                                        ; $648b: $78
	xor  [hl]                                        ; $648c: $ae
	ld   [hl], c                                     ; $648d: $71
	ld   de, $1611                                   ; $648e: $11 $11 $16
	rst  $28                                         ; $6491: $ef
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	cp   $e5                                         ; $6494: $fe $e5
	ld   b, l                                        ; $6496: $45
	ld   a, c                                        ; $6497: $79
	ld   de, $1111                                   ; $6498: $11 $11 $11
	inc  d                                           ; $649b: $14
	rst  $38                                         ; $649c: $ff
	rst  $38                                         ; $649d: $ff
	rst  $38                                         ; $649e: $ff
	rst  $38                                         ; $649f: $ff
	xor  c                                           ; $64a0: $a9
	ld   h, l                                        ; $64a1: $65
	ld   h, c                                        ; $64a2: $61
	ld   de, $1111                                   ; $64a3: $11 $11 $11
	rra                                              ; $64a6: $1f
	rst  $38                                         ; $64a7: $ff
	rst  $38                                         ; $64a8: $ff
	rst  $38                                         ; $64a9: $ff
	db   $dd                                         ; $64aa: $dd
	cp   $87                                         ; $64ab: $fe $87
	add  d                                           ; $64ad: $82
	ld   de, $1111                                   ; $64ae: $11 $11 $11
	ld   a, a                                        ; $64b1: $7f
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	db   $fc                                         ; $64b4: $fc
	cp   a                                           ; $64b5: $bf
	ei                                               ; $64b6: $fb
	ld   a, e                                        ; $64b7: $7b
	pop  hl                                          ; $64b8: $e1
	ld   de, $1111                                   ; $64b9: $11 $11 $11
	rst  $38                                         ; $64bc: $ff
	rst  $38                                         ; $64bd: $ff
	rst  $38                                         ; $64be: $ff
	ld   a, [$b4ef]                                  ; $64bf: $fa $ef $b4
	ld   l, h                                        ; $64c2: $6c
	add  c                                           ; $64c3: $81
	ld   de, $1111                                   ; $64c4: $11 $11 $11
	rst  $38                                         ; $64c7: $ff
	rst  $38                                         ; $64c8: $ff
	rst  $38                                         ; $64c9: $ff

Call_0ee_64ca:
	ei                                               ; $64ca: $fb
	rst  $38                                         ; $64cb: $ff
	sub  h                                           ; $64cc: $94
	ld   e, b                                        ; $64cd: $58
	ld   de, $1111                                   ; $64ce: $11 $11 $11
	ld   a, [de]                                     ; $64d1: $1a
	rst  $38                                         ; $64d2: $ff
	rst  $38                                         ; $64d3: $ff
	rst  $38                                         ; $64d4: $ff
	ld   a, [$33ff]                                  ; $64d5: $fa $ff $33
	ld   d, c                                        ; $64d8: $51
	ld   de, $1111                                   ; $64d9: $11 $11 $11
	ld   l, a                                        ; $64dc: $6f
	rst  $38                                         ; $64dd: $ff
	rst  $38                                         ; $64de: $ff
	rst  $38                                         ; $64df: $ff
	cp   [hl]                                        ; $64e0: $be
	push hl                                          ; $64e1: $e5
	inc  hl                                          ; $64e2: $23
	ld   de, $1111                                   ; $64e3: $11 $11 $11
	add  hl, de                                      ; $64e6: $19
	rst  $38                                         ; $64e7: $ff
	rst  $38                                         ; $64e8: $ff
	rst  $38                                         ; $64e9: $ff
	ld   sp, hl                                      ; $64ea: $f9
	xor  e                                           ; $64eb: $ab
	ld   d, c                                        ; $64ec: $51
	ld   de, $1111                                   ; $64ed: $11 $11 $11
	ld   c, c                                        ; $64f0: $49
	rst  $38                                         ; $64f1: $ff
	rst  $38                                         ; $64f2: $ff
	rst  $38                                         ; $64f3: $ff
	db   $fc                                         ; $64f4: $fc
	ld   [hl], a                                     ; $64f5: $77
	ld   h, e                                        ; $64f6: $63
	ld   de, $1111                                   ; $64f7: $11 $11 $11
	rla                                              ; $64fa: $17
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff
	rst  $38                                         ; $64fd: $ff
	cp   $a8                                         ; $64fe: $fe $a8
	ld   d, d                                        ; $6500: $52
	ld   de, $1111                                   ; $6501: $11 $11 $11
	inc  de                                          ; $6504: $13
	rst  $38                                         ; $6505: $ff
	rst  $38                                         ; $6506: $ff
	rst  $38                                         ; $6507: $ff
	rst  $38                                         ; $6508: $ff
	db   $dd                                         ; $6509: $dd
	sub  l                                           ; $650a: $95
	ld   hl, $1111                                   ; $650b: $21 $11 $11
	ld   de, $ff4e                                   ; $650e: $11 $4e $ff
	rst  $38                                         ; $6511: $ff
	rst  $38                                         ; $6512: $ff
	xor  $da                                         ; $6513: $ee $da
	ld   [hl], l                                     ; $6515: $75
	ld   de, $1111                                   ; $6516: $11 $11 $11
	inc  de                                          ; $6519: $13
	ld   a, h                                        ; $651a: $7c
	rst  $28                                         ; $651b: $ef
	rst  $38                                         ; $651c: $ff
	cp   $cc                                         ; $651d: $fe $cc
	jp   z, $4176                                    ; $651f: $ca $76 $41

	inc  de                                          ; $6522: $13
	ld   b, [hl]                                     ; $6523: $46
	ld   h, l                                        ; $6524: $65
	ld   h, a                                        ; $6525: $67
	ld   [hl], a                                     ; $6526: $77
	adc  c                                           ; $6527: $89
	adc  b                                           ; $6528: $88
	sbc  d                                           ; $6529: $9a
	cp   e                                           ; $652a: $bb
	xor  e                                           ; $652b: $ab
	cp   e                                           ; $652c: $bb
	cp   e                                           ; $652d: $bb
	cp   h                                           ; $652e: $bc
	cp   c                                           ; $652f: $b9
	add  a                                           ; $6530: $87
	ld   h, h                                        ; $6531: $64
	inc  sp                                          ; $6532: $33
	inc  [hl]                                        ; $6533: $34
	ld   d, [hl]                                     ; $6534: $56
	ld   h, [hl]                                     ; $6535: $66
	ld   a, c                                        ; $6536: $79
	cp   e                                           ; $6537: $bb
	sbc  $ed                                         ; $6538: $de $ed
	call z, $98dc                                    ; $653a: $cc $dc $98
	halt                                             ; $653d: $76
	ld   d, l                                        ; $653e: $55
	ld   b, h                                        ; $653f: $44
	inc  sp                                          ; $6540: $33
	inc  [hl]                                        ; $6541: $34
	ld   d, [hl]                                     ; $6542: $56
	ld   a, b                                        ; $6543: $78
	sbc  d                                           ; $6544: $9a
	cp   e                                           ; $6545: $bb
	cp   e                                           ; $6546: $bb
	res  7, d                                        ; $6547: $cb $ba
	cp   d                                           ; $6549: $ba
	sbc  c                                           ; $654a: $99
	sub  a                                           ; $654b: $97
	ld   h, [hl]                                     ; $654c: $66
	ld   d, l                                        ; $654d: $55
	ld   d, l                                        ; $654e: $55
	ld   d, l                                        ; $654f: $55
	ld   h, [hl]                                     ; $6550: $66
	ld   [hl], a                                     ; $6551: $77
	adc  c                                           ; $6552: $89
	sbc  c                                           ; $6553: $99
	xor  d                                           ; $6554: $aa
	xor  e                                           ; $6555: $ab
	cp   d                                           ; $6556: $ba
	cp   d                                           ; $6557: $ba
	sbc  c                                           ; $6558: $99
	adc  b                                           ; $6559: $88
	halt                                             ; $655a: $76
	ld   h, [hl]                                     ; $655b: $66
	ld   h, [hl]                                     ; $655c: $66
	ld   h, [hl]                                     ; $655d: $66
	ld   [hl], a                                     ; $655e: $77
	ld   a, b                                        ; $655f: $78
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	ld   a, b                                        ; $6562: $78
	adc  b                                           ; $6563: $88
	sbc  c                                           ; $6564: $99
	adc  c                                           ; $6565: $89
	xor  c                                           ; $6566: $a9
	sbc  b                                           ; $6567: $98
	sbc  b                                           ; $6568: $98
	adc  b                                           ; $6569: $88
	sbc  b                                           ; $656a: $98
	ld   [hl], a                                     ; $656b: $77
	halt                                             ; $656c: $76
	ld   h, [hl]                                     ; $656d: $66
	ld   h, a                                        ; $656e: $67
	ld   [hl], a                                     ; $656f: $77
	ld   a, b                                        ; $6570: $78
	adc  b                                           ; $6571: $88
	adc  c                                           ; $6572: $89
	xor  d                                           ; $6573: $aa
	sbc  c                                           ; $6574: $99
	xor  c                                           ; $6575: $a9
	add  a                                           ; $6576: $87
	ld   [hl], a                                     ; $6577: $77
	ld   h, [hl]                                     ; $6578: $66
	ld   [hl], a                                     ; $6579: $77
	ld   [hl], a                                     ; $657a: $77
	adc  b                                           ; $657b: $88
	sbc  c                                           ; $657c: $99
	adc  b                                           ; $657d: $88
	adc  c                                           ; $657e: $89
	sbc  c                                           ; $657f: $99
	adc  b                                           ; $6580: $88
	ld   [hl], a                                     ; $6581: $77
	ld   [hl], a                                     ; $6582: $77
	ld   [hl], a                                     ; $6583: $77
	ld   [hl], a                                     ; $6584: $77
	ld   [hl], a                                     ; $6585: $77
	adc  b                                           ; $6586: $88
	sbc  b                                           ; $6587: $98
	sbc  c                                           ; $6588: $99
	adc  c                                           ; $6589: $89
	adc  b                                           ; $658a: $88
	ld   [hl], a                                     ; $658b: $77
	ld   [hl], a                                     ; $658c: $77
	ld   [hl], a                                     ; $658d: $77
	adc  b                                           ; $658e: $88
	sbc  b                                           ; $658f: $98
	adc  c                                           ; $6590: $89
	sbc  b                                           ; $6591: $98
	adc  b                                           ; $6592: $88
	adc  b                                           ; $6593: $88
	adc  b                                           ; $6594: $88
	adc  b                                           ; $6595: $88
	ld   [hl], a                                     ; $6596: $77

Call_0ee_6597:
	ld   [hl], a                                     ; $6597: $77
	ld   [hl], a                                     ; $6598: $77
	adc  b                                           ; $6599: $88
	adc  b                                           ; $659a: $88
	adc  c                                           ; $659b: $89
	sbc  b                                           ; $659c: $98
	adc  b                                           ; $659d: $88
	adc  b                                           ; $659e: $88
	add  a                                           ; $659f: $87
	ld   [hl], a                                     ; $65a0: $77
	ld   [hl], a                                     ; $65a1: $77
	adc  b                                           ; $65a2: $88
	adc  b                                           ; $65a3: $88
	sbc  c                                           ; $65a4: $99
	sbc  c                                           ; $65a5: $99
	adc  b                                           ; $65a6: $88
	add  a                                           ; $65a7: $87
	ld   [hl], a                                     ; $65a8: $77
	adc  b                                           ; $65a9: $88
	ld   [hl], a                                     ; $65aa: $77
	ld   a, b                                        ; $65ab: $78
	ld   a, b                                        ; $65ac: $78
	adc  b                                           ; $65ad: $88
	adc  b                                           ; $65ae: $88
	sbc  b                                           ; $65af: $98
	sbc  c                                           ; $65b0: $99
	adc  b                                           ; $65b1: $88
	adc  b                                           ; $65b2: $88
	add  a                                           ; $65b3: $87
	ld   [hl], a                                     ; $65b4: $77
	ld   [hl], a                                     ; $65b5: $77
	ld   a, b                                        ; $65b6: $78

Call_0ee_65b7:
	adc  b                                           ; $65b7: $88
	adc  b                                           ; $65b8: $88
	adc  c                                           ; $65b9: $89
	sbc  c                                           ; $65ba: $99
	adc  b                                           ; $65bb: $88
	adc  b                                           ; $65bc: $88
	adc  b                                           ; $65bd: $88
	adc  b                                           ; $65be: $88
	adc  b                                           ; $65bf: $88
	adc  b                                           ; $65c0: $88
	adc  b                                           ; $65c1: $88
	ld   [hl], a                                     ; $65c2: $77
	adc  b                                           ; $65c3: $88
	adc  b                                           ; $65c4: $88
	adc  b                                           ; $65c5: $88
	adc  b                                           ; $65c6: $88
	adc  b                                           ; $65c7: $88
	add  a                                           ; $65c8: $87
	adc  b                                           ; $65c9: $88
	adc  b                                           ; $65ca: $88
	adc  c                                           ; $65cb: $89
	sbc  b                                           ; $65cc: $98
	adc  c                                           ; $65cd: $89
	sbc  b                                           ; $65ce: $98
	adc  b                                           ; $65cf: $88
	add  a                                           ; $65d0: $87
	ld   [hl], a                                     ; $65d1: $77
	ld   [hl], a                                     ; $65d2: $77
	ld   a, b                                        ; $65d3: $78
	adc  b                                           ; $65d4: $88
	adc  b                                           ; $65d5: $88
	adc  b                                           ; $65d6: $88
	adc  b                                           ; $65d7: $88
	sbc  c                                           ; $65d8: $99
	sbc  b                                           ; $65d9: $98
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
	adc  c                                           ; $65f6: $89
	sbc  b                                           ; $65f7: $98
	adc  b                                           ; $65f8: $88
	adc  b                                           ; $65f9: $88
	adc  b                                           ; $65fa: $88
	adc  b                                           ; $65fb: $88
	adc  b                                           ; $65fc: $88
	adc  b                                           ; $65fd: $88
	adc  b                                           ; $65fe: $88
	adc  b                                           ; $65ff: $88
	adc  b                                           ; $6600: $88
	adc  c                                           ; $6601: $89
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
	sbc  c                                           ; $6616: $99
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
	sbc  c                                           ; $663d: $99
	sbc  b                                           ; $663e: $98
	adc  b                                           ; $663f: $88
	adc  b                                           ; $6640: $88
	adc  b                                           ; $6641: $88
	adc  b                                           ; $6642: $88
	adc  b                                           ; $6643: $88
	adc  b                                           ; $6644: $88
	adc  b                                           ; $6645: $88
	adc  b                                           ; $6646: $88
	adc  b                                           ; $6647: $88
	sbc  c                                           ; $6648: $99
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
	sbc  c                                           ; $66de: $99
	xor  e                                           ; $66df: $ab
	sub  a                                           ; $66e0: $97
	ld   [hl], a                                     ; $66e1: $77
	sbc  d                                           ; $66e2: $9a
	sbc  c                                           ; $66e3: $99
	halt                                             ; $66e4: $76
	ld   h, a                                        ; $66e5: $67
	adc  c                                           ; $66e6: $89
	add  a                                           ; $66e7: $87
	sbc  h                                           ; $66e8: $9c
	ld   [$9778], a                                  ; $66e9: $ea $78 $97
	ld   a, c                                        ; $66ec: $79
	res  7, b                                        ; $66ed: $cb $b8
	ld   [hl], a                                     ; $66ef: $77
	ld   d, h                                        ; $66f0: $54
	ld   b, l                                        ; $66f1: $45
	ld   h, l                                        ; $66f2: $65
	ld   b, l                                        ; $66f3: $45
	ld   h, a                                        ; $66f4: $67
	adc  c                                           ; $66f5: $89
	cp   h                                           ; $66f6: $bc
	res  7, e                                        ; $66f7: $cb $bb
	res  5, c                                        ; $66f9: $cb $a9
	ld   h, c                                        ; $66fb: $61
	ld   de, $1411                                   ; $66fc: $11 $11 $14
	adc  h                                           ; $66ff: $8c
	rst  $38                                         ; $6700: $ff
	rst  $38                                         ; $6701: $ff
	db   $fd                                         ; $6702: $fd
	and  a                                           ; $6703: $a7
	ld   a, d                                        ; $6704: $7a
	sbc  $ff                                         ; $6705: $de $ff
	db   $fd                                         ; $6707: $fd
	add  e                                           ; $6708: $83
	ld   de, $1311                                   ; $6709: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $670c: $cf
	rst  $38                                         ; $670d: $ff
	rst  $38                                         ; $670e: $ff
	and  l                                           ; $670f: $a5
	ld   h, [hl]                                     ; $6710: $66
	inc  [hl]                                        ; $6711: $34
	adc  [hl]                                        ; $6712: $8e
	rst  $38                                         ; $6713: $ff
	rst  $38                                         ; $6714: $ff
	cp   $75                                         ; $6715: $fe $75
	ld   d, d                                        ; $6717: $52
	ld   de, $1d11                                   ; $6718: $11 $11 $1d
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	ld   sp, hl                                      ; $671d: $f9
	ld   hl, $db3a                                   ; $671e: $21 $3a $db
	rst  $28                                         ; $6721: $ef
	rst  $38                                         ; $6722: $ff
	rst  JumpTable                                         ; $6723: $df
	rst  $38                                         ; $6724: $ff
	db   $eb                                         ; $6725: $eb
	add  l                                           ; $6726: $85
	ld   de, $1211                                   ; $6727: $11 $11 $12
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	db   $fd                                         ; $672c: $fd
	ld   b, c                                        ; $672d: $41
	dec  d                                           ; $672e: $15
	rst  $28                                         ; $672f: $ef
	rst  $38                                         ; $6730: $ff
	rst  $38                                         ; $6731: $ff
	cp   c                                           ; $6732: $b9
	xor  l                                           ; $6733: $ad
	rst  $38                                         ; $6734: $ff
	cp   $94                                         ; $6735: $fe $94
	ld   de, $1111                                   ; $6737: $11 $11 $11
	rst  $28                                         ; $673a: $ef
	rst  $38                                         ; $673b: $ff
	ld   sp, hl                                      ; $673c: $f9
	ld   b, c                                        ; $673d: $41
	dec  d                                           ; $673e: $15
	rst  $38                                         ; $673f: $ff
	rst  $38                                         ; $6740: $ff
	db   $fc                                         ; $6741: $fc
	ld   [hl], h                                     ; $6742: $74
	adc  a                                           ; $6743: $8f
	rst  $38                                         ; $6744: $ff
	cp   $91                                         ; $6745: $fe $91
	ld   de, $1111                                   ; $6747: $11 $11 $11
	dec  e                                           ; $674a: $1d
	rst  $38                                         ; $674b: $ff
	ld   hl, sp+$43                                  ; $674c: $f8 $43
	ld   de, $ff1e                                   ; $674e: $11 $1e $ff
	and  $13                                         ; $6751: $e6 $13
	ld   b, a                                        ; $6753: $47
	rst  $38                                         ; $6754: $ff
	rst  $38                                         ; $6755: $ff
	and  d                                           ; $6756: $a2
	ld   de, $4211                                   ; $6757: $11 $11 $42
	ld   de, $ff19                                   ; $675a: $11 $19 $ff
	ld   a, [$1154]                                  ; $675d: $fa $54 $11
	ld   l, $ff                                      ; $6760: $2e $ff
	push de                                          ; $6762: $d5
	inc  hl                                          ; $6763: $23
	ld   e, d                                        ; $6764: $5a
	rst  $38                                         ; $6765: $ff
	rst  $38                                         ; $6766: $ff
	add  c                                           ; $6767: $81
	ld   de, $a727                                   ; $6768: $11 $27 $a7
	ld   de, $cf11                                   ; $676b: $11 $11 $cf
	rst  $38                                         ; $676e: $ff
	and  c                                           ; $676f: $a1
	ld   de, $ef12                                   ; $6770: $11 $12 $ef
	rst  $38                                         ; $6773: $ff
	pop  de                                          ; $6774: $d1
	ld   de, $ffaf                                   ; $6775: $11 $af $ff
	ld   hl, sp+$11                                  ; $6778: $f8 $11
	dec  d                                           ; $677a: $15
	rst  $38                                         ; $677b: $ff
	or   c                                           ; $677c: $b1
	ld   de, rAUD1LEN                                   ; $677d: $11 $11 $ff
	rst  $38                                         ; $6780: $ff
	ld   de, $1d11                                   ; $6781: $11 $11 $1d
	rst  $38                                         ; $6784: $ff
	rst  $38                                         ; $6785: $ff
	ld   de, rAUD1HIGH                                   ; $6786: $11 $14 $ff
	rst  $38                                         ; $6789: $ff
	or   c                                           ; $678a: $b1
	ld   de, $ff3d                                   ; $678b: $11 $3d $ff
	and  c                                           ; $678e: $a1
	ld   de, $df11                                   ; $678f: $11 $11 $df
	rst  $38                                         ; $6792: $ff
	ld   b, c                                        ; $6793: $41
	ld   de, $ff3e                                   ; $6794: $11 $3e $ff
	rst  $38                                         ; $6797: $ff
	ld   sp, $df11                                   ; $6798: $31 $11 $df
	rst  $38                                         ; $679b: $ff
	pop  af                                          ; $679c: $f1
	ld   de, $ff2d                                   ; $679d: $11 $2d $ff
	db   $d3                                         ; $67a0: $d3
	ld   de, $1311                                   ; $67a1: $11 $11 $13
	rst  $38                                         ; $67a4: $ff
	push af                                          ; $67a5: $f5
	ld   de, $ff1a                                   ; $67a6: $11 $1a $ff
	rst  $38                                         ; $67a9: $ff
	db   $f4                                         ; $67aa: $f4
	ld   de, $ff1f                                   ; $67ab: $11 $1f $ff
	db   $fd                                         ; $67ae: $fd
	ld   de, $ff15                                   ; $67af: $11 $15 $ff
	ld   sp, hl                                      ; $67b2: $f9
	ld   de, $1111                                   ; $67b3: $11 $11 $11
	dec  d                                           ; $67b6: $15
	rst  $38                                         ; $67b7: $ff
	pop  af                                          ; $67b8: $f1
	ld   de, $ff5f                                   ; $67b9: $11 $5f $ff
	rst  $38                                         ; $67bc: $ff
	add  c                                           ; $67bd: $81
	ld   de, $ffff                                   ; $67be: $11 $ff $ff
	push af                                          ; $67c1: $f5
	ld   de, $ff3f                                   ; $67c2: $11 $3f $ff
	or   c                                           ; $67c5: $b1
	ld   de, $2113                                   ; $67c6: $11 $13 $21
	rra                                              ; $67c9: $1f
	rst  $38                                         ; $67ca: $ff
	ld   d, c                                        ; $67cb: $51
	ld   de, $ffff                                   ; $67cc: $11 $ff $ff
	add  sp, $11                                     ; $67cf: $e8 $11
	add  hl, de                                      ; $67d1: $19
	rst  $38                                         ; $67d2: $ff
	cp   $61                                         ; $67d3: $fe $61
	ld   de, $fdbf                                   ; $67d5: $11 $bf $fd
	ld   de, $5311                                   ; $67d8: $11 $11 $53
	ld   de, $ff1f                                   ; $67db: $11 $1f $ff
	ld   hl, rAUD1LEN                                   ; $67de: $21 $11 $ff
	rst  $38                                         ; $67e1: $ff
	or   l                                           ; $67e2: $b5
	ld   de, $ff1a                                   ; $67e3: $11 $1a $ff
	db   $fc                                         ; $67e6: $fc
	ld   sp, $df16                                   ; $67e7: $31 $16 $df
	ei                                               ; $67ea: $fb
	ld   de, $9413                                   ; $67eb: $11 $13 $94
	ld   de, $ff1f                                   ; $67ee: $11 $1f $ff
	ld   de, $ff18                                   ; $67f1: $11 $18 $ff
	cp   $61                                         ; $67f4: $fe $61
	ld   de, $ffbf                                   ; $67f6: $11 $bf $ff
	and  $11                                         ; $67f9: $e6 $11
	ld   l, a                                        ; $67fb: $6f
	rst  $38                                         ; $67fc: $ff
	or   h                                           ; $67fd: $b4
	ld   de, $6114                                   ; $67fe: $11 $14 $61
	ld   de, $f1ff                                   ; $6801: $11 $ff $f1
	ld   de, $ff2f                                   ; $6804: $11 $2f $ff
	or   $11                                         ; $6807: $f6 $11
	inc  e                                           ; $6809: $1c
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	and  c                                           ; $680c: $a1
	inc  de                                          ; $680d: $13
	rst  $38                                         ; $680e: $ff
	ld   a, [$1131]                                  ; $680f: $fa $31 $11
	ld   d, $11                                      ; $6812: $16 $11
	rra                                              ; $6814: $1f
	rst  $38                                         ; $6815: $ff
	ld   de, $ff17                                   ; $6816: $11 $17 $ff
	rst  $38                                         ; $6819: $ff
	ld   d, c                                        ; $681a: $51
	ld   de, $fdff                                   ; $681b: $11 $ff $fd
	ld   h, a                                        ; $681e: $67
	ld   sp, $ff6f                                   ; $681f: $31 $6f $ff
	ld   d, c                                        ; $6822: $51
	ld   [de], a                                     ; $6823: $12
	inc  sp                                          ; $6824: $33
	ld   de, $ff15                                   ; $6825: $11 $15 $ff
	pop  bc                                          ; $6828: $c1
	ld   de, $ffff                                   ; $6829: $11 $ff $ff
	or   c                                           ; $682c: $b1
	ld   de, $ffaf                                   ; $682d: $11 $af $ff
	ld   [hl], a                                     ; $6830: $77
	ld   [hl], h                                     ; $6831: $74
	add  hl, sp                                      ; $6832: $39
	rst  $38                                         ; $6833: $ff
	jp   nc, $1111                                   ; $6834: $d2 $11 $11

	ld   de, $ff15                                   ; $6837: $11 $15 $ff
	sub  c                                           ; $683a: $91
	ld   de, $ffff                                   ; $683b: $11 $ff $ff
	sub  c                                           ; $683e: $91
	ld   de, $ff8f                                   ; $683f: $11 $8f $ff
	ld   d, d                                        ; $6842: $52
	ld   [hl], a                                     ; $6843: $77
	ld   a, h                                        ; $6844: $7c
	rst  $38                                         ; $6845: $ff
	add  c                                           ; $6846: $81
	inc  de                                          ; $6847: $13
	ld   sp, $1f11                                   ; $6848: $31 $11 $1f
	rst  $38                                         ; $684b: $ff
	ld   de, $ff1c                                   ; $684c: $11 $1c $ff
	or   $21                                         ; $684f: $f6 $21
	ld   de, $faff                                   ; $6851: $11 $ff $fa
	ld   de, $df9c                                   ; $6854: $11 $9c $df
	db   $fc                                         ; $6857: $fc
	ld   de, $5117                                   ; $6858: $11 $17 $51
	ld   de, $f1ff                                   ; $685b: $11 $ff $f1
	ld   de, $ffef                                   ; $685e: $11 $ef $ff
	ld   de, $5f11                                   ; $6861: $11 $11 $5f
	rst  $38                                         ; $6864: $ff
	ld   h, c                                        ; $6865: $61
	dec  de                                          ; $6866: $1b
	cp   $cc                                         ; $6867: $fe $cc
	add  d                                           ; $6869: $82
	ld   de, $1151                                   ; $686a: $11 $51 $11
	ld   e, a                                        ; $686d: $5f
	rst  $30                                         ; $686e: $f7
	ld   de, $ff1f                                   ; $686f: $11 $1f $ff
	ld   de, $7f11                                   ; $6872: $11 $11 $7f
	rst  $38                                         ; $6875: $ff
	or   c                                           ; $6876: $b1
	ld   d, $ee                                      ; $6877: $16 $ee
	db   $db                                         ; $6879: $db
	ld   [hl], h                                     ; $687a: $74
	ld   de, $1111                                   ; $687b: $11 $11 $11
	rst  $38                                         ; $687e: $ff
	pop  af                                          ; $687f: $f1
	ld   de, $ff3f                                   ; $6880: $11 $3f $ff
	ld   de, $bf11                                   ; $6883: $11 $11 $bf
	rst  $38                                         ; $6886: $ff
	add  c                                           ; $6887: $81
	add  hl, de                                      ; $6888: $19
	rst  $38                                         ; $6889: $ff
	jp   c, $1161                                    ; $688a: $da $61 $11

	ld   de, $ff1f                                   ; $688d: $11 $1f $ff
	ld   hl, rAUD1HIGH                                   ; $6890: $21 $14 $ff
	pop  af                                          ; $6893: $f1
	ld   de, $ff1a                                   ; $6894: $11 $1a $ff
	ld   sp, hl                                      ; $6897: $f9
	ld   de, $fcaf                                   ; $6898: $11 $af $fc
	add  l                                           ; $689b: $85
	ld   hl, $1111                                   ; $689c: $21 $11 $11
	rst  $38                                         ; $689f: $ff
	pop  af                                          ; $68a0: $f1
	ld   de, $fcff                                   ; $68a1: $11 $ff $fc
	ld   de, $cf17                                   ; $68a4: $11 $17 $cf
	rst  $38                                         ; $68a7: $ff
	ld   h, c                                        ; $68a8: $61
	ld   a, [de]                                     ; $68a9: $1a
	rst  $38                                         ; $68aa: $ff
	ret  z                                           ; $68ab: $c8

	ld   b, c                                        ; $68ac: $41
	ld   de, rAUD1LEN                                   ; $68ad: $11 $11 $ff
	pop  af                                          ; $68b0: $f1
	ld   de, $f9ff                                   ; $68b1: $11 $ff $f9
	ld   de, $ff17                                   ; $68b4: $11 $17 $ff
	cp   $11                                         ; $68b7: $fe $11
	ld   c, a                                        ; $68b9: $4f
	db   $fd                                         ; $68ba: $fd
	ld   [hl], d                                     ; $68bb: $72
	ld   de, $1f11                                   ; $68bc: $11 $11 $1f
	rst  $38                                         ; $68bf: $ff
	ld   de, $ff15                                   ; $68c0: $11 $15 $ff
	pop  af                                          ; $68c3: $f1
	ld   de, $ff2b                                   ; $68c4: $11 $2b $ff
	ld   a, [$8f11]                                  ; $68c7: $fa $11 $8f
	ld   a, [$1141]                                  ; $68ca: $fa $41 $11
	ld   de, $f1ff                                   ; $68cd: $11 $ff $f1
	ld   de, $ff6f                                   ; $68d0: $11 $6f $ff
	ld   de, $bf11                                   ; $68d3: $11 $11 $bf
	rst  $38                                         ; $68d6: $ff
	ld   h, c                                        ; $68d7: $61
	ld   a, [de]                                     ; $68d8: $1a
	rst  $38                                         ; $68d9: $ff
	or   d                                           ; $68da: $b2
	ld   de, $5f11                                   ; $68db: $11 $11 $5f
	rst  $38                                         ; $68de: $ff
	ld   de, $ff1f                                   ; $68df: $11 $1f $ff
	or   c                                           ; $68e2: $b1
	ld   de, $ff4f                                   ; $68e3: $11 $4f $ff
	pop  af                                          ; $68e6: $f1
	inc  de                                          ; $68e7: $13
	rst  $38                                         ; $68e8: $ff
	or   $11                                         ; $68e9: $f6 $11
	ld   de, $ff4f                                   ; $68eb: $11 $4f $ff
	ld   de, $ff1f                                   ; $68ee: $11 $1f $ff
	and  c                                           ; $68f1: $a1
	ld   de, $ff2f                                   ; $68f2: $11 $2f $ff
	pop  af                                          ; $68f5: $f1
	ld   de, $f6ff                                   ; $68f6: $11 $ff $f6
	ld   de, rAUD1LEN                                   ; $68f9: $11 $11 $ff
	pop  af                                          ; $68fc: $f1
	ld   de, $ff8f                                   ; $68fd: $11 $8f $ff
	ld   de, $4f11                                   ; $6900: $11 $11 $4f
	rst  $38                                         ; $6903: $ff
	sub  c                                           ; $6904: $91
	dec  d                                           ; $6905: $15
	rst  $38                                         ; $6906: $ff
	ldh  [c], a                                      ; $6907: $e2
	ld   de, $ff1f                                   ; $6908: $11 $1f $ff
	ld   de, $ff15                                   ; $690b: $11 $15 $ff
	ldh  a, [c]                                      ; $690e: $f2
	ld   de, $ff15                                   ; $690f: $11 $15 $ff
	ld   a, [$3b11]                                  ; $6912: $fa $11 $3b
	db   $fd                                         ; $6915: $fd
	ld   de, rAUD1LEN                                   ; $6916: $11 $11 $ff
	pop  af                                          ; $6919: $f1
	ld   de, $faff                                   ; $691a: $11 $ff $fa
	ld   de, $af11                                   ; $691d: $11 $11 $af
	rst  $38                                         ; $6920: $ff
	ld   de, $fd19                                   ; $6921: $11 $19 $fd
	ld   hl, rAUD1LEN                                   ; $6924: $21 $11 $ff
	pop  af                                          ; $6927: $f1
	ld   de, $fdff                                   ; $6928: $11 $ff $fd
	ld   de, $9f11                                   ; $692b: $11 $11 $9f
	rst  $38                                         ; $692e: $ff
	ld   hl, $fd17                                   ; $692f: $21 $17 $fd
	ld   de, rAUD1ENV                                   ; $6932: $11 $12 $ff
	pop  af                                          ; $6935: $f1
	ld   de, $f8ff                                   ; $6936: $11 $ff $f8
	ld   de, rAUD1LEN                                   ; $6939: $11 $11 $ff
	rst  $38                                         ; $693c: $ff
	ld   de, $f71f                                   ; $693d: $11 $1f $f7
	ld   de, $ff1f                                   ; $6940: $11 $1f $ff
	ld   de, $ff1e                                   ; $6943: $11 $1e $ff
	ldh  a, [c]                                      ; $6946: $f2
	ld   de, $ff19                                   ; $6947: $11 $19 $ff
	ldh  a, [c]                                      ; $694a: $f2
	ld   de, $c19f                                   ; $694b: $11 $9f $c1
	ld   de, $f1ff                                   ; $694e: $11 $ff $f1
	ld   de, $ffdf                                   ; $6951: $11 $df $ff
	ld   b, c                                        ; $6954: $41
	ld   de, $ffcf                                   ; $6955: $11 $cf $ff
	ld   de, $f81c                                   ; $6958: $11 $1c $f8
	ld   de, $ff1f                                   ; $695b: $11 $1f $ff
	ld   de, $ff1f                                   ; $695e: $11 $1f $ff
	pop  af                                          ; $6961: $f1
	ld   de, $ff1f                                   ; $6962: $11 $1f $ff
	pop  bc                                          ; $6965: $c1
	ld   [de], a                                     ; $6966: $12
	rst  $38                                         ; $6967: $ff
	ld   de, $ff1f                                   ; $6968: $11 $1f $ff
	ld   de, $ff1f                                   ; $696b: $11 $1f $ff
	pop  af                                          ; $696e: $f1
	ld   de, $ff1f                                   ; $696f: $11 $1f $ff
	pop  af                                          ; $6972: $f1
	ld   de, $11ff                                   ; $6973: $11 $ff $11
	rra                                              ; $6976: $1f
	rst  $38                                         ; $6977: $ff
	ld   de, $ff1f                                   ; $6978: $11 $1f $ff
	pop  af                                          ; $697b: $f1
	ld   de, $ff9f                                   ; $697c: $11 $9f $ff
	ld   h, c                                        ; $697f: $61
	inc  d                                           ; $6980: $14
	rst  $30                                         ; $6981: $f7
	ld   de, $fccf                                   ; $6982: $11 $cf $fc
	ld   de, $ff1f                                   ; $6985: $11 $1f $ff
	ld   de, $ff15                                   ; $6988: $11 $15 $ff
	ld   a, [$1e11]                                  ; $698b: $fa $11 $1e
	and  c                                           ; $698e: $a1
	inc  de                                          ; $698f: $13
	rst  $38                                         ; $6990: $ff
	pop  af                                          ; $6991: $f1
	ld   de, $f3ff                                   ; $6992: $11 $ff $f3

Call_0ee_6995:
	ld   de, $ff1f                                   ; $6995: $11 $1f $ff
	or   c                                           ; $6998: $b1
	ld   de, $11b8                                   ; $6999: $11 $b8 $11
	rst  $38                                         ; $699c: $ff
	pop  af                                          ; $699d: $f1
	ld   de, $ffaf                                   ; $699e: $11 $af $ff
	ld   de, $ff1f                                   ; $69a1: $11 $1f $ff
	pop  af                                          ; $69a4: $f1
	ld   de, $1129                                   ; $69a5: $11 $29 $11
	rst  $38                                         ; $69a8: $ff
	push af                                          ; $69a9: $f5
	ld   de, $ff1f                                   ; $69aa: $11 $1f $ff
	ld   de, $ff1e                                   ; $69ad: $11 $1e $ff
	ldh  a, [c]                                      ; $69b0: $f2
	ld   de, $1111                                   ; $69b1: $11 $11 $11
	rst  $38                                         ; $69b4: $ff
	pop  af                                          ; $69b5: $f1
	ld   de, $fbff                                   ; $69b6: $11 $ff $fb
	ld   de, $ff1f                                   ; $69b9: $11 $1f $ff
	pop  de                                          ; $69bc: $d1
	ld   de, $1f11                                   ; $69bd: $11 $11 $1f
	rst  $38                                         ; $69c0: $ff
	ld   de, $ff1f                                   ; $69c1: $11 $1f $ff
	and  c                                           ; $69c4: $a1
	inc  de                                          ; $69c5: $13
	rst  $38                                         ; $69c6: $ff
	ld   a, [$1111]                                  ; $69c7: $fa $11 $11
	rra                                              ; $69ca: $1f
	rst  $38                                         ; $69cb: $ff
	ld   de, rAUD1HIGH                                   ; $69cc: $11 $14 $ff
	pop  af                                          ; $69cf: $f1
	ld   de, $ffaf                                   ; $69d0: $11 $af $ff
	ld   h, c                                        ; $69d3: $61
	ld   de, $ff9f                                   ; $69d4: $11 $9f $ff
	ld   de, $ff1f                                   ; $69d7: $11 $1f $ff
	pop  bc                                          ; $69da: $c1
	ld   de, $ff5f                                   ; $69db: $11 $5f $ff
	ld   de, rAUD1LEN                                   ; $69de: $11 $11 $ff
	pop  af                                          ; $69e1: $f1
	ld   de, $faff                                   ; $69e2: $11 $ff $fa
	ld   de, $9d36                                   ; $69e5: $11 $36 $9d
	pop  bc                                          ; $69e8: $c1
	ld   de, $f6ff                                   ; $69e9: $11 $ff $f6
	ld   de, $ff4f                                   ; $69ec: $11 $4f $ff
	ld   de, $ac16                                   ; $69ef: $11 $16 $ac
	and  c                                           ; $69f2: $a1
	ld   de, $f3ff                                   ; $69f3: $11 $ff $f3
	ld   de, $ff5f                                   ; $69f6: $11 $5f $ff
	ld   de, $df14                                   ; $69f9: $11 $14 $df
	add  c                                           ; $69fc: $81
	ld   de, $f1ff                                   ; $69fd: $11 $ff $f1
	ld   de, $fcff                                   ; $6a00: $11 $ff $fc
	ld   de, $8746                                   ; $6a03: $11 $46 $87
	ld   de, $ff1f                                   ; $6a06: $11 $1f $ff
	sub  c                                           ; $6a09: $91
	inc  de                                          ; $6a0a: $13
	rst  $38                                         ; $6a0b: $ff
	pop  af                                          ; $6a0c: $f1
	ld   de, $915b                                   ; $6a0d: $11 $5b $91
	ld   de, $f9ff                                   ; $6a10: $11 $ff $f9
	ld   de, $ff3f                                   ; $6a13: $11 $3f $ff
	ld   hl, $a814                                   ; $6a16: $21 $14 $a8
	ld   de, $ff1f                                   ; $6a19: $11 $1f $ff
	ld   de, $ff1e                                   ; $6a1c: $11 $1e $ff
	pop  af                                          ; $6a1f: $f1
	ld   de, $417b                                   ; $6a20: $11 $7b $41
	rla                                              ; $6a23: $17

Call_0ee_6a24:
	rst  $38                                         ; $6a24: $ff
	pop  af                                          ; $6a25: $f1
	ld   de, $f9ff                                   ; $6a26: $11 $ff $f9
	ld   de, $9109                                   ; $6a29: $11 $09 $91
	ld   de, $f1ff                                   ; $6a2c: $11 $ff $f1
	ld   de, $ffef                                   ; $6a2f: $11 $ef $ff
	ld   de, $9215                                   ; $6a32: $11 $15 $92
	ld   de, $f1ff                                   ; $6a35: $11 $ff $f1
	ld   de, $ffaf                                   ; $6a38: $11 $af $ff
	ld   de, $8113                                   ; $6a3b: $11 $13 $81
	inc  de                                          ; $6a3e: $13
	rst  $38                                         ; $6a3f: $ff
	pop  af                                          ; $6a40: $f1
	ld   de, $ffff                                   ; $6a41: $11 $ff $ff
	ld   de, $5113                                   ; $6a44: $11 $13 $51
	dec  de                                          ; $6a47: $1b
	rst  $38                                         ; $6a48: $ff
	pop  de                                          ; $6a49: $d1
	ld   de, $f9ff                                   ; $6a4a: $11 $ff $f9
	ld   de, $1115                                   ; $6a4d: $11 $15 $11
	cpl                                              ; $6a50: $2f
	rst  $38                                         ; $6a51: $ff
	ld   de, $ff1c                                   ; $6a52: $11 $1c $ff
	pop  af                                          ; $6a55: $f1
	ld   de, $1124                                   ; $6a56: $11 $24 $11
	rst  $28                                         ; $6a59: $ef
	db   $fc                                         ; $6a5a: $fc
	ld   de, $ff1f                                   ; $6a5b: $11 $1f $ff
	ld   [hl], c                                     ; $6a5e: $71
	ld   de, $1c41                                   ; $6a5f: $11 $41 $1c
	rst  $38                                         ; $6a62: $ff
	pop  af                                          ; $6a63: $f1
	ld   de, $fcff                                   ; $6a64: $11 $ff $fc
	ld   de, $1112                                   ; $6a67: $11 $12 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a6a: $cf
	db   $fd                                         ; $6a6b: $fd
	ld   de, $ff1f                                   ; $6a6c: $11 $1f $ff
	and  c                                           ; $6a6f: $a1
	ld   de, $4f11                                   ; $6a70: $11 $11 $4f
	rst  $38                                         ; $6a73: $ff
	add  c                                           ; $6a74: $81
	inc  d                                           ; $6a75: $14
	rst  $38                                         ; $6a76: $ff
	ld   sp, hl                                      ; $6a77: $f9
	ld   de, $1c11                                   ; $6a78: $11 $11 $1c
	rst  $38                                         ; $6a7b: $ff
	pop  af                                          ; $6a7c: $f1
	ld   de, $ffef                                   ; $6a7d: $11 $ef $ff
	ld   de, $1711                                   ; $6a80: $11 $11 $17
	rst  $38                                         ; $6a83: $ff
	or   $11                                         ; $6a84: $f6 $11
	ld   l, a                                        ; $6a86: $6f
	rst  $38                                         ; $6a87: $ff
	and  c                                           ; $6a88: $a1
	ld   de, rAUD1ENV                                   ; $6a89: $11 $12 $ff
	ei                                               ; $6a8c: $fb
	ld   de, $ff0f                                   ; $6a8d: $11 $0f $ff
	pop  af                                          ; $6a90: $f1
	ld   de, rAUD1LEN                                   ; $6a91: $11 $11 $ff
	db   $fc                                         ; $6a94: $fc
	ld   de, $ff1f                                   ; $6a95: $11 $1f $ff
	pop  af                                          ; $6a98: $f1
	ld   de, rAUD1LEN                                   ; $6a99: $11 $11 $ff
	db   $fd                                         ; $6a9c: $fd
	ld   de, $ff1f                                   ; $6a9d: $11 $1f $ff
	pop  af                                          ; $6aa0: $f1
	ld   de, rAUD1LEN                                   ; $6aa1: $11 $11 $ff
	db   $fc                                         ; $6aa4: $fc
	ld   de, $ff1f                                   ; $6aa5: $11 $1f $ff
	pop  af                                          ; $6aa8: $f1
	ld   de, rAUD1ENV                                   ; $6aa9: $11 $12 $ff
	ld   a, [$2f11]                                  ; $6aac: $fa $11 $2f
	rst  $38                                         ; $6aaf: $ff
	pop  af                                          ; $6ab0: $f1
	ld   de, $ff16                                   ; $6ab1: $11 $16 $ff
	or   $11                                         ; $6ab4: $f6 $11
	ld   l, a                                        ; $6ab6: $6f
	rst  $38                                         ; $6ab7: $ff
	pop  bc                                          ; $6ab8: $c1
	ld   de, $ff1a                                   ; $6ab9: $11 $1a $ff
	di                                               ; $6abc: $f3
	ld   de, $ffaf                                   ; $6abd: $11 $af $ff
	ld   [hl], c                                     ; $6ac0: $71
	ld   de, $ff1e                                   ; $6ac1: $11 $1e $ff
	or   c                                           ; $6ac4: $b1
	inc  de                                          ; $6ac5: $13
	rst  $38                                         ; $6ac6: $ff
	rst  $38                                         ; $6ac7: $ff
	ld   hl, $4f11                                   ; $6ac8: $21 $11 $4f
	rst  $38                                         ; $6acb: $ff
	ld   h, c                                        ; $6acc: $61
	jr   @+$01                                       ; $6acd: $18 $ff

	ld   a, [$1111]                                  ; $6acf: $fa $11 $11
	rst  JumpTable                                         ; $6ad2: $df
	ei                                               ; $6ad3: $fb
	ld   de, $ff3f                                   ; $6ad4: $11 $3f $ff
	ldh  a, [c]                                      ; $6ad7: $f2
	ld   de, $ff15                                   ; $6ad8: $11 $15 $ff
	db   $f4                                         ; $6adb: $f4
	ld   de, $ffaf                                   ; $6adc: $11 $af $ff
	ld   [hl], c                                     ; $6adf: $71
	ld   de, $ff1f                                   ; $6ae0: $11 $1f $ff
	ld   [hl], c                                     ; $6ae3: $71
	rla                                              ; $6ae4: $17
	rst  $38                                         ; $6ae5: $ff
	ld   sp, hl                                      ; $6ae6: $f9
	ld   de, rAUD1LEN                                   ; $6ae7: $11 $11 $ff
	ld   hl, sp+$11                                  ; $6aea: $f8 $11
	adc  a                                           ; $6aec: $8f
	rst  $38                                         ; $6aed: $ff
	add  c                                           ; $6aee: $81
	ld   de, $ff1f                                   ; $6aef: $11 $1f $ff
	add  c                                           ; $6af2: $81
	rla                                              ; $6af3: $17
	rst  $38                                         ; $6af4: $ff
	ld   hl, sp+$11                                  ; $6af5: $f8 $11
	inc  de                                          ; $6af7: $13
	rst  $38                                         ; $6af8: $ff
	or   $11                                         ; $6af9: $f6 $11
	xor  a                                           ; $6afb: $af
	cp   $61                                         ; $6afc: $fe $61
	ld   de, $ff7f                                   ; $6afe: $11 $7f $ff
	ld   sp, $ff2d                                   ; $6b01: $31 $2d $ff
	or   e                                           ; $6b04: $b3
	ld   de, $ff1a                                   ; $6b05: $11 $1a $ff
	db   $d3                                         ; $6b08: $d3
	ld   d, $cf                                      ; $6b09: $16 $cf
	jp   hl                                          ; $6b0b: $e9


	ld   de, rAUD1LOW                                   ; $6b0c: $11 $13 $ff
	ld   sp, hl                                      ; $6b0f: $f9
	inc  de                                          ; $6b10: $13
	sbc  [hl]                                        ; $6b11: $9e
	ld   a, [$1161]                                  ; $6b12: $fa $61 $11
	adc  a                                           ; $6b15: $8f
	cp   $53                                         ; $6b16: $fe $53
	ld   l, e                                        ; $6b18: $6b
	db   $fd                                         ; $6b19: $fd
	add  c                                           ; $6b1a: $81
	ld   de, $fe5e                                   ; $6b1b: $11 $5e $fe
	ld   [hl], h                                     ; $6b1e: $74
	adc  e                                           ; $6b1f: $8b
	jp   c, $1184                                    ; $6b20: $da $84 $11

	inc  a                                           ; $6b23: $3c
	rst  $38                                         ; $6b24: $ff
	sub  e                                           ; $6b25: $93
	add  hl, sp                                      ; $6b26: $39
	rst  $28                                         ; $6b27: $ef
	or   e                                           ; $6b28: $b3
	ld   de, $ff4d                                   ; $6b29: $11 $4d $ff
	add  e                                           ; $6b2c: $83
	ld   e, d                                        ; $6b2d: $5a
	db   $ed                                         ; $6b2e: $ed
	sub  e                                           ; $6b2f: $93
	ld   de, $ff4c                                   ; $6b30: $11 $4c $ff
	and  l                                           ; $6b33: $a5
	ld   l, b                                        ; $6b34: $68
	cp   h                                           ; $6b35: $bc
	or   a                                           ; $6b36: $b7
	ld   de, $fd4a                                   ; $6b37: $11 $4a $fd
	add  h                                           ; $6b3a: $84
	ld   l, e                                        ; $6b3b: $6b
	db   $ec                                         ; $6b3c: $ec
	ld   [hl], d                                     ; $6b3d: $72
	ld   [de], a                                     ; $6b3e: $12
	ld   a, [hl]                                     ; $6b3f: $7e
	db   $eb                                         ; $6b40: $eb
	ld   h, h                                        ; $6b41: $64
	ld   a, e                                        ; $6b42: $7b
	db   $eb                                         ; $6b43: $eb
	add  d                                           ; $6b44: $82
	inc  d                                           ; $6b45: $14
	sbc  h                                           ; $6b46: $9c
	jp   c, $9b65                                    ; $6b47: $da $65 $9b

	jp   z, $2662                                    ; $6b4a: $ca $62 $26

	xor  h                                           ; $6b4d: $ac
	cp   b                                           ; $6b4e: $b8
	ld   d, [hl]                                     ; $6b4f: $56
	sbc  e                                           ; $6b50: $9b
	and  a                                           ; $6b51: $a7
	ld   b, e                                        ; $6b52: $43
	ld   l, c                                        ; $6b53: $69
	cp   d                                           ; $6b54: $ba
	halt                                             ; $6b55: $76
	adc  c                                           ; $6b56: $89
	xor  d                                           ; $6b57: $aa
	add  [hl]                                        ; $6b58: $86
	ld   d, [hl]                                     ; $6b59: $56
	adc  c                                           ; $6b5a: $89
	sbc  b                                           ; $6b5b: $98
	ld   [hl], a                                     ; $6b5c: $77
	adc  c                                           ; $6b5d: $89
	sbc  d                                           ; $6b5e: $9a
	add  a                                           ; $6b5f: $87
	ld   h, a                                        ; $6b60: $67
	sbc  c                                           ; $6b61: $99
	adc  b                                           ; $6b62: $88
	ld   [hl], a                                     ; $6b63: $77
	adc  b                                           ; $6b64: $88
	sbc  b                                           ; $6b65: $98
	sbc  b                                           ; $6b66: $98
	adc  b                                           ; $6b67: $88
	adc  b                                           ; $6b68: $88
	adc  b                                           ; $6b69: $88
	sbc  c                                           ; $6b6a: $99
	add  a                                           ; $6b6b: $87
	ld   [hl], a                                     ; $6b6c: $77
	adc  b                                           ; $6b6d: $88
	sbc  b                                           ; $6b6e: $98
	adc  b                                           ; $6b6f: $88
	adc  b                                           ; $6b70: $88
	sbc  c                                           ; $6b71: $99
	add  a                                           ; $6b72: $87
	ld   a, b                                        ; $6b73: $78
	adc  c                                           ; $6b74: $89
	sbc  c                                           ; $6b75: $99
	adc  b                                           ; $6b76: $88
	adc  b                                           ; $6b77: $88
	adc  b                                           ; $6b78: $88
	adc  b                                           ; $6b79: $88
	adc  b                                           ; $6b7a: $88
	adc  b                                           ; $6b7b: $88
	adc  c                                           ; $6b7c: $89
	sbc  b                                           ; $6b7d: $98
	adc  b                                           ; $6b7e: $88
	adc  b                                           ; $6b7f: $88
	adc  c                                           ; $6b80: $89
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  c                                           ; $6b83: $89
	sbc  b                                           ; $6b84: $98
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
	ld   de, $1111                                   ; $6b97: $11 $11 $11
	ld   de, $1111                                   ; $6b9a: $11 $11 $11
	ld   de, $1111                                   ; $6b9d: $11 $11 $11
	ld   de, $1111                                   ; $6ba0: $11 $11 $11
	ld   de, $1111                                   ; $6ba3: $11 $11 $11
	ld   de, $1111                                   ; $6ba6: $11 $11 $11
	ld   de, $1111                                   ; $6ba9: $11 $11 $11
	ld   de, $1111                                   ; $6bac: $11 $11 $11
	ld   de, $1111                                   ; $6baf: $11 $11 $11
	nop                                              ; $6bb2: $00
	ld   c, b                                        ; $6bb3: $48
	ld   de, $1111                                   ; $6bb4: $11 $11 $11
	ld   de, $1111                                   ; $6bb7: $11 $11 $11
	ld   de, $1111                                   ; $6bba: $11 $11 $11
	ld   de, $5413                                   ; $6bbd: $11 $13 $54
	ld   d, h                                        ; $6bc0: $54
	ld   d, h                                        ; $6bc1: $54
	ld   b, c                                        ; $6bc2: $41
	rra                                              ; $6bc3: $1f
	rst  $38                                         ; $6bc4: $ff
	pop  af                                          ; $6bc5: $f1
	ld   de, $1411                                   ; $6bc6: $11 $11 $14
	ld   hl, $1c11                                   ; $6bc9: $21 $11 $1c
	db   $dd                                         ; $6bcc: $dd
	call z, $c1dd                                    ; $6bcd: $cc $dd $c1
	ld   de, $1111                                   ; $6bd0: $11 $11 $11
	ld   de, $1111                                   ; $6bd3: $11 $11 $11
	ld   de, $1111                                   ; $6bd6: $11 $11 $11
	ld   de, $1111                                   ; $6bd9: $11 $11 $11
	ld   de, $5411                                   ; $6bdc: $11 $11 $54
	ld   b, h                                        ; $6bdf: $44
	inc  h                                           ; $6be0: $24
	ld   de, $5454                                   ; $6be1: $11 $54 $54
	ld   h, a                                        ; $6be4: $67
	ld   [hl], d                                     ; $6be5: $72
	ld   de, $1111                                   ; $6be6: $11 $11 $11
	ld   de, $1112                                   ; $6be9: $11 $12 $11
	ld   [de], a                                     ; $6bec: $12
	ld   de, $1111                                   ; $6bed: $11 $11 $11
	ld   h, [hl]                                     ; $6bf0: $66
	halt                                             ; $6bf1: $76
	db   $f4                                         ; $6bf2: $f4
	ld   de, $8888                                   ; $6bf3: $11 $88 $88
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
	sbc  c                                           ; $6c0c: $99
	adc  b                                           ; $6c0d: $88
	add  a                                           ; $6c0e: $87
	adc  b                                           ; $6c0f: $88
	adc  b                                           ; $6c10: $88
	adc  c                                           ; $6c11: $89
	adc  b                                           ; $6c12: $88
	adc  b                                           ; $6c13: $88
	adc  b                                           ; $6c14: $88
	adc  b                                           ; $6c15: $88
	adc  b                                           ; $6c16: $88
	adc  b                                           ; $6c17: $88
	adc  b                                           ; $6c18: $88
	sbc  b                                           ; $6c19: $98
	adc  b                                           ; $6c1a: $88
	ld   [hl], a                                     ; $6c1b: $77
	ld   a, b                                        ; $6c1c: $78
	adc  c                                           ; $6c1d: $89
	sbc  b                                           ; $6c1e: $98
	adc  b                                           ; $6c1f: $88
	ld   a, b                                        ; $6c20: $78
	ld   a, b                                        ; $6c21: $78
	adc  b                                           ; $6c22: $88
	adc  b                                           ; $6c23: $88
	add  a                                           ; $6c24: $87
	adc  b                                           ; $6c25: $88
	adc  c                                           ; $6c26: $89
	sbc  c                                           ; $6c27: $99
	adc  b                                           ; $6c28: $88
	adc  b                                           ; $6c29: $88
	adc  b                                           ; $6c2a: $88
	adc  b                                           ; $6c2b: $88
	adc  b                                           ; $6c2c: $88
	ld   a, b                                        ; $6c2d: $78
	adc  b                                           ; $6c2e: $88
	adc  b                                           ; $6c2f: $88
	add  a                                           ; $6c30: $87
	ld   a, b                                        ; $6c31: $78
	adc  c                                           ; $6c32: $89
	sbc  b                                           ; $6c33: $98
	add  a                                           ; $6c34: $87
	ld   [hl], a                                     ; $6c35: $77
	adc  b                                           ; $6c36: $88
	adc  c                                           ; $6c37: $89
	sbc  c                                           ; $6c38: $99
	adc  b                                           ; $6c39: $88
	adc  b                                           ; $6c3a: $88
	adc  b                                           ; $6c3b: $88
	adc  b                                           ; $6c3c: $88
	ld   [hl], a                                     ; $6c3d: $77
	ld   a, b                                        ; $6c3e: $78
	adc  c                                           ; $6c3f: $89
	sbc  b                                           ; $6c40: $98
	sbc  b                                           ; $6c41: $98
	adc  c                                           ; $6c42: $89
	adc  b                                           ; $6c43: $88
	add  a                                           ; $6c44: $87
	ld   [hl], a                                     ; $6c45: $77
	ld   a, b                                        ; $6c46: $78
	sbc  b                                           ; $6c47: $98
	sbc  c                                           ; $6c48: $99
	adc  b                                           ; $6c49: $88
	adc  c                                           ; $6c4a: $89
	adc  b                                           ; $6c4b: $88
	ld   [hl], a                                     ; $6c4c: $77
	add  a                                           ; $6c4d: $87
	sbc  b                                           ; $6c4e: $98
	adc  b                                           ; $6c4f: $88
	adc  c                                           ; $6c50: $89
	sbc  b                                           ; $6c51: $98
	add  a                                           ; $6c52: $87
	add  a                                           ; $6c53: $87
	ld   a, b                                        ; $6c54: $78
	ld   a, b                                        ; $6c55: $78
	sbc  b                                           ; $6c56: $98
	add  a                                           ; $6c57: $87
	add  a                                           ; $6c58: $87
	adc  b                                           ; $6c59: $88
	sbc  b                                           ; $6c5a: $98
	adc  b                                           ; $6c5b: $88
	add  a                                           ; $6c5c: $87
	ld   [hl], a                                     ; $6c5d: $77
	ld   a, b                                        ; $6c5e: $78
	adc  c                                           ; $6c5f: $89
	sbc  c                                           ; $6c60: $99
	adc  b                                           ; $6c61: $88
	adc  b                                           ; $6c62: $88
	sbc  b                                           ; $6c63: $98
	adc  c                                           ; $6c64: $89
	ld   a, b                                        ; $6c65: $78
	adc  b                                           ; $6c66: $88
	add  a                                           ; $6c67: $87
	adc  b                                           ; $6c68: $88
	ld   a, c                                        ; $6c69: $79
	ld   a, b                                        ; $6c6a: $78
	sbc  b                                           ; $6c6b: $98
	sbc  c                                           ; $6c6c: $99
	adc  b                                           ; $6c6d: $88
	ld   a, b                                        ; $6c6e: $78
	ld   [hl], a                                     ; $6c6f: $77
	ld   [hl], a                                     ; $6c70: $77
	ld   a, b                                        ; $6c71: $78
	adc  b                                           ; $6c72: $88
	adc  b                                           ; $6c73: $88
	adc  c                                           ; $6c74: $89
	adc  b                                           ; $6c75: $88
	add  a                                           ; $6c76: $87
	ld   [hl], a                                     ; $6c77: $77
	adc  b                                           ; $6c78: $88
	sbc  b                                           ; $6c79: $98
	adc  c                                           ; $6c7a: $89
	ld   [hl], a                                     ; $6c7b: $77
	sub  a                                           ; $6c7c: $97
	adc  c                                           ; $6c7d: $89
	adc  c                                           ; $6c7e: $89
	ld   a, b                                        ; $6c7f: $78
	add  a                                           ; $6c80: $87
	adc  b                                           ; $6c81: $88
	adc  c                                           ; $6c82: $89
	ld   a, b                                        ; $6c83: $78
	adc  b                                           ; $6c84: $88
	sbc  b                                           ; $6c85: $98
	ld   a, b                                        ; $6c86: $78
	adc  b                                           ; $6c87: $88
	adc  c                                           ; $6c88: $89
	adc  b                                           ; $6c89: $88
	add  a                                           ; $6c8a: $87
	add  a                                           ; $6c8b: $87
	adc  c                                           ; $6c8c: $89
	adc  c                                           ; $6c8d: $89
	sbc  c                                           ; $6c8e: $99
	sub  a                                           ; $6c8f: $97
	add  a                                           ; $6c90: $87
	ld   [hl], a                                     ; $6c91: $77
	adc  c                                           ; $6c92: $89
	adc  c                                           ; $6c93: $89
	adc  b                                           ; $6c94: $88
	sbc  b                                           ; $6c95: $98
	adc  b                                           ; $6c96: $88
	sbc  b                                           ; $6c97: $98
	adc  c                                           ; $6c98: $89
	ld   [hl], a                                     ; $6c99: $77
	halt                                             ; $6c9a: $76
	adc  b                                           ; $6c9b: $88
	sbc  c                                           ; $6c9c: $99
	adc  d                                           ; $6c9d: $8a
	sbc  b                                           ; $6c9e: $98
	sub  a                                           ; $6c9f: $97
	adc  b                                           ; $6ca0: $88
	adc  b                                           ; $6ca1: $88
	ld   [hl], a                                     ; $6ca2: $77
	ld   a, b                                        ; $6ca3: $78
	adc  b                                           ; $6ca4: $88
	sub  a                                           ; $6ca5: $97
	adc  b                                           ; $6ca6: $88
	adc  c                                           ; $6ca7: $89
	adc  b                                           ; $6ca8: $88
	adc  b                                           ; $6ca9: $88
	sbc  b                                           ; $6caa: $98
	sbc  b                                           ; $6cab: $98
	add  a                                           ; $6cac: $87
	ld   a, b                                        ; $6cad: $78
	ld   a, c                                        ; $6cae: $79
	sbc  c                                           ; $6caf: $99
	sbc  b                                           ; $6cb0: $98
	add  a                                           ; $6cb1: $87
	ld   [hl], a                                     ; $6cb2: $77
	adc  c                                           ; $6cb3: $89
	sbc  c                                           ; $6cb4: $99
	add  a                                           ; $6cb5: $87
	ld   [hl], a                                     ; $6cb6: $77
	ld   h, a                                        ; $6cb7: $67
	ld   a, b                                        ; $6cb8: $78
	sbc  d                                           ; $6cb9: $9a
	xor  d                                           ; $6cba: $aa
	sbc  b                                           ; $6cbb: $98
	ld   [hl], a                                     ; $6cbc: $77
	ld   h, a                                        ; $6cbd: $67
	ld   a, b                                        ; $6cbe: $78
	sbc  b                                           ; $6cbf: $98
	and  a                                           ; $6cc0: $a7
	adc  b                                           ; $6cc1: $88
	ld   a, c                                        ; $6cc2: $79
	adc  b                                           ; $6cc3: $88
	sub  a                                           ; $6cc4: $97
	adc  b                                           ; $6cc5: $88
	adc  b                                           ; $6cc6: $88
	sub  a                                           ; $6cc7: $97
	ld   [hl], a                                     ; $6cc8: $77
	ld   a, c                                        ; $6cc9: $79
	adc  c                                           ; $6cca: $89
	xor  b                                           ; $6ccb: $a8
	sbc  c                                           ; $6ccc: $99
	ld   [hl], a                                     ; $6ccd: $77
	ld   h, a                                        ; $6cce: $67
	sbc  b                                           ; $6ccf: $98
	xor  b                                           ; $6cd0: $a8
	adc  c                                           ; $6cd1: $89
	ld   a, b                                        ; $6cd2: $78
	add  a                                           ; $6cd3: $87
	sbc  b                                           ; $6cd4: $98
	ld   a, c                                        ; $6cd5: $79
	ld   a, b                                        ; $6cd6: $78
	sub  a                                           ; $6cd7: $97
	sbc  b                                           ; $6cd8: $98
	ld   a, b                                        ; $6cd9: $78
	ld   [hl], a                                     ; $6cda: $77
	ld   a, b                                        ; $6cdb: $78
	sbc  b                                           ; $6cdc: $98
	sub  a                                           ; $6cdd: $97
	ld   [hl], a                                     ; $6cde: $77
	adc  d                                           ; $6cdf: $8a
	xor  c                                           ; $6ce0: $a9
	add  a                                           ; $6ce1: $87
	halt                                             ; $6ce2: $76
	adc  b                                           ; $6ce3: $88
	sbc  c                                           ; $6ce4: $99
	ld   [hl], a                                     ; $6ce5: $77
	add  [hl]                                        ; $6ce6: $86
	sbc  c                                           ; $6ce7: $99
	sbc  d                                           ; $6ce8: $9a
	adc  c                                           ; $6ce9: $89
	add  a                                           ; $6cea: $87
	halt                                             ; $6ceb: $76
	ld   [hl], a                                     ; $6cec: $77
	adc  d                                           ; $6ced: $8a
	adc  d                                           ; $6cee: $8a
	xor  b                                           ; $6cef: $a8
	add  a                                           ; $6cf0: $87
	ld   h, [hl]                                     ; $6cf1: $66
	ld   [hl], a                                     ; $6cf2: $77
	adc  b                                           ; $6cf3: $88
	adc  b                                           ; $6cf4: $88
	add  a                                           ; $6cf5: $87
	sbc  b                                           ; $6cf6: $98
	adc  d                                           ; $6cf7: $8a
	adc  b                                           ; $6cf8: $88
	halt                                             ; $6cf9: $76
	ld   h, a                                        ; $6cfa: $67
	sbc  c                                           ; $6cfb: $99
	xor  d                                           ; $6cfc: $aa
	ld   a, b                                        ; $6cfd: $78
	ld   h, a                                        ; $6cfe: $67
	add  a                                           ; $6cff: $87
	sbc  c                                           ; $6d00: $99
	sbc  d                                           ; $6d01: $9a
	adc  b                                           ; $6d02: $88
	add  [hl]                                        ; $6d03: $86
	ld   [hl], a                                     ; $6d04: $77
	adc  c                                           ; $6d05: $89
	sbc  d                                           ; $6d06: $9a
	sbc  b                                           ; $6d07: $98
	sub  a                                           ; $6d08: $97
	add  [hl]                                        ; $6d09: $86
	ld   l, b                                        ; $6d0a: $68
	ld   a, c                                        ; $6d0b: $79
	xor  c                                           ; $6d0c: $a9
	sub  a                                           ; $6d0d: $97
	ld   [hl], a                                     ; $6d0e: $77
	ld   a, b                                        ; $6d0f: $78
	adc  b                                           ; $6d10: $88
	sbc  b                                           ; $6d11: $98
	adc  b                                           ; $6d12: $88
	adc  c                                           ; $6d13: $89
	sub  a                                           ; $6d14: $97
	ld   [hl], a                                     ; $6d15: $77
	ld   a, c                                        ; $6d16: $79
	adc  b                                           ; $6d17: $88
	sub  a                                           ; $6d18: $97
	ld   [hl], a                                     ; $6d19: $77
	ld   h, a                                        ; $6d1a: $67
	ld   a, d                                        ; $6d1b: $7a
	sbc  d                                           ; $6d1c: $9a
	and  [hl]                                        ; $6d1d: $a6
	halt                                             ; $6d1e: $76
	ld   l, c                                        ; $6d1f: $69
	ld   a, c                                        ; $6d20: $79
	add  a                                           ; $6d21: $87
	add  a                                           ; $6d22: $87
	adc  c                                           ; $6d23: $89
	ld   a, c                                        ; $6d24: $79
	ld   a, b                                        ; $6d25: $78
	and  a                                           ; $6d26: $a7
	sbc  c                                           ; $6d27: $99
	ld   a, c                                        ; $6d28: $79
	ld   h, a                                        ; $6d29: $67
	sub  a                                           ; $6d2a: $97
	sbc  c                                           ; $6d2b: $99
	sbc  b                                           ; $6d2c: $98
	adc  b                                           ; $6d2d: $88
	ld   h, a                                        ; $6d2e: $67
	add  a                                           ; $6d2f: $87
	sbc  b                                           ; $6d30: $98
	ld   a, b                                        ; $6d31: $78
	ld   [hl], a                                     ; $6d32: $77
	adc  b                                           ; $6d33: $88
	adc  c                                           ; $6d34: $89
	and  a                                           ; $6d35: $a7
	add  [hl]                                        ; $6d36: $86
	ld   e, c                                        ; $6d37: $59
	ld   a, c                                        ; $6d38: $79
	xor  b                                           ; $6d39: $a8
	ld   [hl], a                                     ; $6d3a: $77
	ld   h, l                                        ; $6d3b: $65
	halt                                             ; $6d3c: $76
	ld   l, c                                        ; $6d3d: $69
	ld   a, b                                        ; $6d3e: $78
	and  [hl]                                        ; $6d3f: $a6
	ld   h, a                                        ; $6d40: $67
	ld   e, b                                        ; $6d41: $58
	sbc  b                                           ; $6d42: $98
	cp   d                                           ; $6d43: $ba
	sbc  d                                           ; $6d44: $9a
	sub  a                                           ; $6d45: $97
	xor  b                                           ; $6d46: $a8
	xor  l                                           ; $6d47: $ad
	res  7, b                                        ; $6d48: $cb $b8
	ld   [hl], a                                     ; $6d4a: $77
	ld   l, b                                        ; $6d4b: $68
	cp   e                                           ; $6d4c: $bb
	cp   c                                           ; $6d4d: $b9
	halt                                             ; $6d4e: $76
	ld   h, l                                        ; $6d4f: $65
	ld   d, a                                        ; $6d50: $57
	ld   l, b                                        ; $6d51: $68
	sub  a                                           ; $6d52: $97
	ld   [hl], l                                     ; $6d53: $75
	ld   d, l                                        ; $6d54: $55
	ld   b, [hl]                                     ; $6d55: $46
	ld   [hl], a                                     ; $6d56: $77
	add  [hl]                                        ; $6d57: $86
	ld   d, h                                        ; $6d58: $54
	ld   b, l                                        ; $6d59: $45
	ld   d, a                                        ; $6d5a: $57
	ld   h, [hl]                                     ; $6d5b: $66
	ld   h, [hl]                                     ; $6d5c: $66
	ld   a, c                                        ; $6d5d: $79
	cp   e                                           ; $6d5e: $bb
	rst  $38                                         ; $6d5f: $ff
	rst  $38                                         ; $6d60: $ff
	jp   z, $8aa7                                    ; $6d61: $ca $a7 $8a

	sbc  h                                           ; $6d64: $9c
	db   $db                                         ; $6d65: $db
	xor  d                                           ; $6d66: $aa
	ld   a, c                                        ; $6d67: $79
	add  a                                           ; $6d68: $87
	add  a                                           ; $6d69: $87
	ld   d, [hl]                                     ; $6d6a: $56
	ld   d, l                                        ; $6d6b: $55
	ld   [hl], l                                     ; $6d6c: $75
	ld   h, [hl]                                     ; $6d6d: $66
	ld   b, l                                        ; $6d6e: $45
	inc  [hl]                                        ; $6d6f: $34
	dec  [hl]                                        ; $6d70: $35
	ld   h, e                                        ; $6d71: $63
	ld   d, h                                        ; $6d72: $54
	inc  h                                           ; $6d73: $24
	ld   [hl+], a                                    ; $6d74: $22
	ld   b, d                                        ; $6d75: $42
	ld   l, d                                        ; $6d76: $6a
	xor  a                                           ; $6d77: $af
	rst  $38                                         ; $6d78: $ff
	rst  $38                                         ; $6d79: $ff
	xor  $b6                                         ; $6d7a: $ee $b6
	xor  b                                           ; $6d7c: $a8
	sbc  l                                           ; $6d7d: $9d
	call z, $98ca                                    ; $6d7e: $cc $ca $98
	ld   [hl], a                                     ; $6d81: $77
	ld   [hl], a                                     ; $6d82: $77
	ld   [hl], a                                     ; $6d83: $77
	ld   h, l                                        ; $6d84: $65
	ld   d, e                                        ; $6d85: $53
	inc  de                                          ; $6d86: $13
	ld   [de], a                                     ; $6d87: $12
	ld   b, l                                        ; $6d88: $45
	ld   [hl], a                                     ; $6d89: $77
	ld   d, e                                        ; $6d8a: $53
	ld   de, $1411                                   ; $6d8b: $11 $11 $14
	adc  e                                           ; $6d8e: $8b
	rst  $38                                         ; $6d8f: $ff
	rst  $38                                         ; $6d90: $ff
	rst  $38                                         ; $6d91: $ff
	db   $fd                                         ; $6d92: $fd
	cp   l                                           ; $6d93: $bd
	call $cafd                                       ; $6d94: $cd $fd $ca
	add  a                                           ; $6d97: $87
	ld   [hl], a                                     ; $6d98: $77
	adc  d                                           ; $6d99: $8a
	adc  c                                           ; $6d9a: $89
	add  l                                           ; $6d9b: $85
	ld   b, c                                        ; $6d9c: $41
	ld   de, $1312                                   ; $6d9d: $11 $12 $13
	ld   b, c                                        ; $6da0: $41
	ld   de, $1211                                   ; $6da1: $11 $11 $12
	ld   a, [hl]                                     ; $6da4: $7e
	rst  $38                                         ; $6da5: $ff
	rst  $38                                         ; $6da6: $ff
	db   $fc                                         ; $6da7: $fc
	cp   [hl]                                        ; $6da8: $be
	rst  JumpTable                                         ; $6da9: $df
	rst  $38                                         ; $6daa: $ff
	cp   $c9                                         ; $6dab: $fe $c9
	ld   a, b                                        ; $6dad: $78
	xor  e                                           ; $6dae: $ab
	cp   d                                           ; $6daf: $ba
	sub  [hl]                                        ; $6db0: $96
	ld   h, l                                        ; $6db1: $65
	inc  sp                                          ; $6db2: $33
	ld   de, $1111                                   ; $6db3: $11 $11 $11
	ld   de, $1111                                   ; $6db6: $11 $11 $11
	ld   d, $cf                                      ; $6db9: $16 $cf
	rst  $38                                         ; $6dbb: $ff
	rst  $38                                         ; $6dbc: $ff
	and  a                                           ; $6dbd: $a7
	ld   a, h                                        ; $6dbe: $7c
	rst  $38                                         ; $6dbf: $ff
	rst  $38                                         ; $6dc0: $ff
	cp   $86                                         ; $6dc1: $fe $86
	ld   e, b                                        ; $6dc3: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dc4: $cf
	cp   $b6                                         ; $6dc5: $fe $b6
	ld   hl, $1111                                   ; $6dc7: $21 $11 $11
	ld   de, $1111                                   ; $6dca: $11 $11 $11
	ld   de, $df12                                   ; $6dcd: $11 $12 $df
	rst  $38                                         ; $6dd0: $ff
	rst  $38                                         ; $6dd1: $ff
	and  h                                           ; $6dd2: $a4
	ld   h, $ef                                      ; $6dd3: $26 $ef
	rst  $38                                         ; $6dd5: $ff
	rst  $38                                         ; $6dd6: $ff
	and  [hl]                                        ; $6dd7: $a6
	ld   d, a                                        ; $6dd8: $57
	cp   [hl]                                        ; $6dd9: $be
	db   $ed                                         ; $6dda: $ed
	and  a                                           ; $6ddb: $a7
	ld   sp, $1111                                   ; $6ddc: $31 $11 $11
	ld   de, $1111                                   ; $6ddf: $11 $11 $11
	ld   de, $ff5e                                   ; $6de2: $11 $5e $ff
	rst  $38                                         ; $6de5: $ff
	ld   hl, sp+$21                                  ; $6de6: $f8 $21
	add  hl, de                                      ; $6de8: $19
	rst  $38                                         ; $6de9: $ff
	rst  $38                                         ; $6dea: $ff
	cp   $73                                         ; $6deb: $fe $73
	ld   l, c                                        ; $6ded: $69
	rst  JumpTable                                         ; $6dee: $df
	db   $eb                                         ; $6def: $eb
	ld   [hl], d                                     ; $6df0: $72
	ld   de, $1111                                   ; $6df1: $11 $11 $11
	ld   de, $1111                                   ; $6df4: $11 $11 $11
	xor  a                                           ; $6df7: $af
	rst  $38                                         ; $6df8: $ff
	rst  $38                                         ; $6df9: $ff
	or   $11                                         ; $6dfa: $f6 $11
	ld   d, $ff                                      ; $6dfc: $16 $ff
	rst  $38                                         ; $6dfe: $ff
	rst  $38                                         ; $6dff: $ff
	ret  c                                           ; $6e00: $d8

	ld   h, a                                        ; $6e01: $67
	xor  e                                           ; $6e02: $ab
	xor  d                                           ; $6e03: $aa
	ld   d, c                                        ; $6e04: $51
	ld   de, $1111                                   ; $6e05: $11 $11 $11
	ld   de, $4e11                                   ; $6e08: $11 $11 $4e
	rst  $38                                         ; $6e0b: $ff
	rst  $38                                         ; $6e0c: $ff
	ei                                               ; $6e0d: $fb
	ld   hl, $4f11                                   ; $6e0e: $21 $11 $4f
	rst  $38                                         ; $6e11: $ff
	rst  $38                                         ; $6e12: $ff
	rst  $38                                         ; $6e13: $ff
	rst  ToBoot                                         ; $6e14: $c7
	ld   h, [hl]                                     ; $6e15: $66
	ld   h, [hl]                                     ; $6e16: $66
	ld   d, e                                        ; $6e17: $53
	ld   de, $1111                                   ; $6e18: $11 $11 $11
	ld   de, $ff15                                   ; $6e1b: $11 $15 $ff
	rst  $38                                         ; $6e1e: $ff
	rst  $38                                         ; $6e1f: $ff
	or   d                                           ; $6e20: $b2
	ld   de, $8f11                                   ; $6e21: $11 $11 $8f
	rst  $38                                         ; $6e24: $ff
	rst  $38                                         ; $6e25: $ff
	rst  $38                                         ; $6e26: $ff
	ld   a, [$1151]                                  ; $6e27: $fa $51 $11
	ld   de, $1111                                   ; $6e2a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6e2d: $11 $11 $ff
	rst  $38                                         ; $6e30: $ff
	rst  $38                                         ; $6e31: $ff
	ld   b, c                                        ; $6e32: $41
	ld   de, $cf13                                   ; $6e33: $11 $13 $cf
	rst  $38                                         ; $6e36: $ff
	rst  $38                                         ; $6e37: $ff
	rst  $38                                         ; $6e38: $ff
	rst  $38                                         ; $6e39: $ff
	sub  d                                           ; $6e3a: $92
	ld   de, $1111                                   ; $6e3b: $11 $11 $11
	ld   de, $1f11                                   ; $6e3e: $11 $11 $1f
	rst  $38                                         ; $6e41: $ff
	rst  $38                                         ; $6e42: $ff
	pop  af                                          ; $6e43: $f1
	ld   de, $2f11                                   ; $6e44: $11 $11 $2f
	rst  $38                                         ; $6e47: $ff
	rst  $38                                         ; $6e48: $ff
	rst  $38                                         ; $6e49: $ff
	rst  $38                                         ; $6e4a: $ff
	or   [hl]                                        ; $6e4b: $b6
	ld   de, $1111                                   ; $6e4c: $11 $11 $11
	ld   de, $1f11                                   ; $6e4f: $11 $11 $1f
	rst  $38                                         ; $6e52: $ff
	rst  $38                                         ; $6e53: $ff
	pop  af                                          ; $6e54: $f1
	ld   de, $3f11                                   ; $6e55: $11 $11 $3f
	rst  $38                                         ; $6e58: $ff
	rst  $38                                         ; $6e59: $ff
	rst  $38                                         ; $6e5a: $ff
	rst  $38                                         ; $6e5b: $ff
	or   h                                           ; $6e5c: $b4
	ld   de, $1111                                   ; $6e5d: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $6e60: $11 $12 $ff
	rst  $38                                         ; $6e63: $ff
	rst  $38                                         ; $6e64: $ff
	ld   de, $1511                                   ; $6e65: $11 $11 $15
	rst  $38                                         ; $6e68: $ff
	rst  $38                                         ; $6e69: $ff
	rst  $38                                         ; $6e6a: $ff
	rst  $38                                         ; $6e6b: $ff
	ld   a, [$1111]                                  ; $6e6c: $fa $11 $11
	ld   de, $1911                                   ; $6e6f: $11 $11 $19
	rst  $38                                         ; $6e72: $ff
	rst  $38                                         ; $6e73: $ff
	ei                                               ; $6e74: $fb
	ld   de, $1d11                                   ; $6e75: $11 $11 $1d
	rst  $38                                         ; $6e78: $ff
	rst  $38                                         ; $6e79: $ff
	rst  $38                                         ; $6e7a: $ff
	rst  $38                                         ; $6e7b: $ff
	rst  $20                                         ; $6e7c: $e7
	ld   de, $1111                                   ; $6e7d: $11 $11 $11
	ld   de, $ff8f                                   ; $6e80: $11 $8f $ff
	rst  $38                                         ; $6e83: $ff
	pop  bc                                          ; $6e84: $c1
	ld   de, $bf11                                   ; $6e85: $11 $11 $bf
	rst  $38                                         ; $6e88: $ff
	rst  $38                                         ; $6e89: $ff
	rst  $38                                         ; $6e8a: $ff
	db   $fc                                         ; $6e8b: $fc
	ld   d, c                                        ; $6e8c: $51
	ld   de, $1111                                   ; $6e8d: $11 $11 $11
	rra                                              ; $6e90: $1f
	rst  $38                                         ; $6e91: $ff
	rst  $38                                         ; $6e92: $ff
	pop  af                                          ; $6e93: $f1
	ld   de, $9f11                                   ; $6e94: $11 $11 $9f
	rst  $38                                         ; $6e97: $ff
	rst  $38                                         ; $6e98: $ff
	rst  $38                                         ; $6e99: $ff
	jp   hl                                          ; $6e9a: $e9


	ld   de, $1111                                   ; $6e9b: $11 $11 $11
	ld   de, $ff6f                                   ; $6e9e: $11 $6f $ff
	rst  $38                                         ; $6ea1: $ff
	ld   [hl], c                                     ; $6ea2: $71
	ld   de, rAUD1LEN                                   ; $6ea3: $11 $11 $ff
	rst  $38                                         ; $6ea6: $ff
	rst  $38                                         ; $6ea7: $ff
	db   $fd                                         ; $6ea8: $fd
	ld   [hl], c                                     ; $6ea9: $71
	ld   de, $1111                                   ; $6eaa: $11 $11 $11
	inc  de                                          ; $6ead: $13
	rst  $38                                         ; $6eae: $ff
	rst  $38                                         ; $6eaf: $ff
	or   $11                                         ; $6eb0: $f6 $11
	ld   de, $ff1f                                   ; $6eb2: $11 $1f $ff
	rst  $38                                         ; $6eb5: $ff
	rst  $38                                         ; $6eb6: $ff
	or   h                                           ; $6eb7: $b4
	ld   de, $1111                                   ; $6eb8: $11 $11 $11
	ld   de, $ffef                                   ; $6ebb: $11 $ef $ff
	rst  $38                                         ; $6ebe: $ff
	ld   de, $1811                                   ; $6ebf: $11 $11 $18
	rst  $38                                         ; $6ec2: $ff
	rst  $38                                         ; $6ec3: $ff
	rst  $38                                         ; $6ec4: $ff
	and  $11                                         ; $6ec5: $e6 $11
	ld   de, $1111                                   ; $6ec7: $11 $11 $11
	ld   a, a                                        ; $6eca: $7f
	rst  $38                                         ; $6ecb: $ff
	rst  $38                                         ; $6ecc: $ff
	ld   de, $1411                                   ; $6ecd: $11 $11 $14
	rst  $38                                         ; $6ed0: $ff
	rst  $38                                         ; $6ed1: $ff
	rst  $38                                         ; $6ed2: $ff
	ld   sp, hl                                      ; $6ed3: $f9
	ld   de, $1111                                   ; $6ed4: $11 $11 $11
	ld   de, $ffcf                                   ; $6ed7: $11 $cf $ff
	rst  $38                                         ; $6eda: $ff
	ld   de, $1a11                                   ; $6edb: $11 $11 $1a
	rst  $38                                         ; $6ede: $ff
	rst  $38                                         ; $6edf: $ff
	rst  $38                                         ; $6ee0: $ff
	ld   hl, sp+$11                                  ; $6ee1: $f8 $11
	ld   de, $1111                                   ; $6ee3: $11 $11 $11
	rst  $38                                         ; $6ee6: $ff
	rst  $38                                         ; $6ee7: $ff
	ld   a, [$1111]                                  ; $6ee8: $fa $11 $11
	rra                                              ; $6eeb: $1f
	rst  $38                                         ; $6eec: $ff
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	pop  bc                                          ; $6eef: $c1
	ld   de, $1111                                   ; $6ef0: $11 $11 $11
	rra                                              ; $6ef3: $1f
	rst  $38                                         ; $6ef4: $ff
	rst  $38                                         ; $6ef5: $ff
	pop  de                                          ; $6ef6: $d1
	ld   de, rAUD1LEN                                   ; $6ef7: $11 $11 $ff
	rst  $38                                         ; $6efa: $ff
	rst  $38                                         ; $6efb: $ff
	ei                                               ; $6efc: $fb
	ld   de, $1111                                   ; $6efd: $11 $11 $11
	inc  e                                           ; $6f00: $1c
	rst  $38                                         ; $6f01: $ff
	rst  $38                                         ; $6f02: $ff
	pop  af                                          ; $6f03: $f1
	ld   de, $6f11                                   ; $6f04: $11 $11 $6f
	rst  $38                                         ; $6f07: $ff
	rst  $38                                         ; $6f08: $ff
	rst  $38                                         ; $6f09: $ff
	ld   de, $1111                                   ; $6f0a: $11 $11 $11
	rra                                              ; $6f0d: $1f
	rst  $38                                         ; $6f0e: $ff
	rst  $38                                         ; $6f0f: $ff
	pop  af                                          ; $6f10: $f1
	ld   de, $1911                                   ; $6f11: $11 $11 $19
	rst  $38                                         ; $6f14: $ff
	rst  $38                                         ; $6f15: $ff
	ei                                               ; $6f16: $fb
	ld   de, $1111                                   ; $6f17: $11 $11 $11
	rst  $38                                         ; $6f1a: $ff
	rst  $38                                         ; $6f1b: $ff
	rst  $38                                         ; $6f1c: $ff
	sub  e                                           ; $6f1d: $93
	ld   de, $1511                                   ; $6f1e: $11 $11 $15
	rst  $38                                         ; $6f21: $ff
	rst  $38                                         ; $6f22: $ff
	or   c                                           ; $6f23: $b1
	ld   de, rAUD1LEN                                   ; $6f24: $11 $11 $ff
	rst  $38                                         ; $6f27: $ff
	db   $eb                                         ; $6f28: $eb
	cp   a                                           ; $6f29: $bf
	rst  $38                                         ; $6f2a: $ff
	ld   b, c                                        ; $6f2b: $41
	ld   de, $ff9f                                   ; $6f2c: $11 $9f $ff
	and  c                                           ; $6f2f: $a1
	ld   de, $ff1f                                   ; $6f30: $11 $1f $ff
	push af                                          ; $6f33: $f5
	ld   de, $ff1f                                   ; $6f34: $11 $1f $ff
	pop  de                                          ; $6f37: $d1
	ld   de, $ffff                                   ; $6f38: $11 $ff $ff
	ld   de, $7f11                                   ; $6f3b: $11 $11 $7f
	rst  $38                                         ; $6f3e: $ff
	pop  af                                          ; $6f3f: $f1
	ld   de, $ffcf                                   ; $6f40: $11 $cf $ff
	ld   de, $ff1f                                   ; $6f43: $11 $1f $ff
	pop  af                                          ; $6f46: $f1
	ld   de, rAUD1LOW                                   ; $6f47: $11 $13 $ff
	rst  $38                                         ; $6f4a: $ff
	ld   de, $ff1e                                   ; $6f4b: $11 $1e $ff
	add  c                                           ; $6f4e: $81
	ld   de, $ffff                                   ; $6f4f: $11 $ff $ff
	ld   de, $cf11                                   ; $6f52: $11 $11 $cf
	rst  $38                                         ; $6f55: $ff
	or   c                                           ; $6f56: $b1
	ld   d, $ff                                      ; $6f57: $16 $ff
	pop  af                                          ; $6f59: $f1
	ld   de, $ff6f                                   ; $6f5a: $11 $6f $ff
	and  c                                           ; $6f5d: $a1
	ld   de, $ff1f                                   ; $6f5e: $11 $1f $ff
	pop  af                                          ; $6f61: $f1
	ld   de, $f1ff                                   ; $6f62: $11 $ff $f1
	ld   de, $ff1f                                   ; $6f65: $11 $1f $ff
	pop  af                                          ; $6f68: $f1
	ld   de, $ff1f                                   ; $6f69: $11 $1f $ff
	pop  af                                          ; $6f6c: $f1
	ld   de, $f5ff                                   ; $6f6d: $11 $ff $f5
	ld   de, $ff1f                                   ; $6f70: $11 $1f $ff
	pop  af                                          ; $6f73: $f1
	ld   de, $ff1f                                   ; $6f74: $11 $1f $ff
	pop  af                                          ; $6f77: $f1
	inc  de                                          ; $6f78: $13
	rst  $38                                         ; $6f79: $ff
	pop  af                                          ; $6f7a: $f1
	ld   de, $ff2f                                   ; $6f7b: $11 $2f $ff
	and  c                                           ; $6f7e: $a1
	ld   de, $ff1f                                   ; $6f7f: $11 $1f $ff
	pop  af                                          ; $6f82: $f1
	add  hl, de                                      ; $6f83: $19
	rst  $38                                         ; $6f84: $ff
	pop  de                                          ; $6f85: $d1
	ld   de, $ffef                                   ; $6f86: $11 $ef $ff
	ld   de, $5f11                                   ; $6f89: $11 $11 $5f
	rst  $38                                         ; $6f8c: $ff
	ld   h, c                                        ; $6f8d: $61
	ld   c, a                                        ; $6f8e: $4f
	rst  $38                                         ; $6f8f: $ff
	ld   sp, rAUD1HIGH                                   ; $6f90: $31 $14 $ff
	or   $11                                         ; $6f93: $f6 $11
	ld   de, $ffff                                   ; $6f95: $11 $ff $ff
	ld   de, $f7ef                                   ; $6f98: $11 $ef $f7
	ld   de, $ffbf                                   ; $6f9b: $11 $bf $ff
	ld   de, $1f11                                   ; $6f9e: $11 $11 $1f
	rst  $38                                         ; $6fa1: $ff
	pop  hl                                          ; $6fa2: $e1
	ld   a, a                                        ; $6fa3: $7f
	cp   $11                                         ; $6fa4: $fe $11
	rra                                              ; $6fa6: $1f
	rst  $38                                         ; $6fa7: $ff
	pop  af                                          ; $6fa8: $f1
	ld   de, $ff15                                   ; $6fa9: $11 $15 $ff
	ld   sp, hl                                      ; $6fac: $f9
	ld   a, [de]                                     ; $6fad: $1a
	rst  $38                                         ; $6fae: $ff
	pop  bc                                          ; $6faf: $c1
	ld   de, $ffff                                   ; $6fb0: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $6fb3: $11 $11 $ff
	rst  $38                                         ; $6fb6: $ff
	ld   d, c                                        ; $6fb7: $51
	rst  $38                                         ; $6fb8: $ff
	or   $11                                         ; $6fb9: $f6 $11
	ld   a, a                                        ; $6fbb: $7f
	rst  $38                                         ; $6fbc: $ff
	ld   d, c                                        ; $6fbd: $51
	ld   de, $ff1f                                   ; $6fbe: $11 $1f $ff
	and  d                                           ; $6fc1: $a2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fc2: $cf
	ei                                               ; $6fc3: $fb
	ld   de, $ff1f                                   ; $6fc4: $11 $1f $ff
	or   c                                           ; $6fc7: $b1
	ld   de, $ff1f                                   ; $6fc8: $11 $1f $ff
	pop  bc                                          ; $6fcb: $c1
	rst  JumpTable                                         ; $6fcc: $df
	rst  $38                                         ; $6fcd: $ff
	ld   de, $ff1f                                   ; $6fce: $11 $1f $ff
	pop  hl                                          ; $6fd1: $e1
	ld   de, $ff1f                                   ; $6fd2: $11 $1f $ff
	ldh  [c], a                                      ; $6fd5: $e2
	adc  a                                           ; $6fd6: $8f
	rst  $38                                         ; $6fd7: $ff
	ld   b, c                                        ; $6fd8: $41
	rra                                              ; $6fd9: $1f
	rst  $38                                         ; $6fda: $ff
	or   c                                           ; $6fdb: $b1
	ld   de, $ff1f                                   ; $6fdc: $11 $1f $ff
	or   e                                           ; $6fdf: $b3
	rst  $28                                         ; $6fe0: $ef
	rst  $38                                         ; $6fe1: $ff
	ld   de, $ff2f                                   ; $6fe2: $11 $2f $ff
	ld   d, c                                        ; $6fe5: $51
	ld   de, $ff2f                                   ; $6fe6: $11 $2f $ff
	ld   h, e                                        ; $6fe9: $63
	rst  $38                                         ; $6fea: $ff
	cp   $21                                         ; $6feb: $fe $21
	ld   a, a                                        ; $6fed: $7f
	ei                                               ; $6fee: $fb
	ld   de, $8f11                                   ; $6fef: $11 $11 $8f
	rst  $38                                         ; $6ff2: $ff
	ld   h, a                                        ; $6ff3: $67
	rst  $38                                         ; $6ff4: $ff
	db   $fc                                         ; $6ff5: $fc
	inc  h                                           ; $6ff6: $24
	rst  JumpTable                                         ; $6ff7: $df
	db   $d3                                         ; $6ff8: $d3
	ld   de, rAUD1LEN                                   ; $6ff9: $11 $11 $ff
	sub  $5c                                         ; $6ffc: $d6 $5c
	rst  $38                                         ; $6ffe: $ff
	db   $f4                                         ; $6fff: $f4
	rla                                              ; $7000: $17
	db   $db                                         ; $7001: $db
	halt                                             ; $7002: $76
	inc  hl                                          ; $7003: $23
	ld   l, c                                        ; $7004: $69
	jp   c, Jump_0ee_5776                            ; $7005: $da $76 $57

	cp   h                                           ; $7008: $bc
	and  l                                           ; $7009: $a5
	ld   b, l                                        ; $700a: $45
	adc  e                                           ; $700b: $8b
	cp   d                                           ; $700c: $ba
	add  a                                           ; $700d: $87
	adc  e                                           ; $700e: $8b
	xor  c                                           ; $700f: $a9
	and  a                                           ; $7010: $a7
	inc  [hl]                                        ; $7011: $34
	ld   h, a                                        ; $7012: $67
	adc  c                                           ; $7013: $89
	ld   [hl], h                                     ; $7014: $74
	ld   e, b                                        ; $7015: $58
	xor  e                                           ; $7016: $ab
	and  a                                           ; $7017: $a7
	ld   h, a                                        ; $7018: $67
	adc  d                                           ; $7019: $8a
	call c, $4595                                    ; $701a: $dc $95 $45
	ld   h, a                                        ; $701d: $67
	halt                                             ; $701e: $76
	ld   d, [hl]                                     ; $701f: $56
	xor  e                                           ; $7020: $ab
	jp   z, Jump_0ee_7987                            ; $7021: $ca $87 $79

	call z, Call_0ee_65b7                            ; $7024: $cc $b7 $65
	ld   h, a                                        ; $7027: $67
	halt                                             ; $7028: $76
	ld   h, [hl]                                     ; $7029: $66
	ld   a, b                                        ; $702a: $78
	xor  d                                           ; $702b: $aa
	sbc  b                                           ; $702c: $98
	ld   a, c                                        ; $702d: $79
	cp   e                                           ; $702e: $bb
	cp   d                                           ; $702f: $ba
	ld   [hl], l                                     ; $7030: $75
	ld   d, [hl]                                     ; $7031: $56
	ld   d, l                                        ; $7032: $55
	ld   d, l                                        ; $7033: $55
	ld   l, b                                        ; $7034: $68
	xor  d                                           ; $7035: $aa
	xor  e                                           ; $7036: $ab
	xor  d                                           ; $7037: $aa
	call z, Call_0ee_64ca                            ; $7038: $cc $ca $64
	dec  [hl]                                        ; $703b: $35
	ld   h, [hl]                                     ; $703c: $66
	ld   h, l                                        ; $703d: $65
	ld   l, b                                        ; $703e: $68
	xor  d                                           ; $703f: $aa
	xor  b                                           ; $7040: $a8
	adc  b                                           ; $7041: $88
	sbc  e                                           ; $7042: $9b
	jp   z, Jump_0ee_5575                            ; $7043: $ca $75 $55

	ld   h, l                                        ; $7046: $65
	inc  sp                                          ; $7047: $33
	ld   e, c                                        ; $7048: $59
	call z, $9ab9                                    ; $7049: $cc $b9 $9a
	call $33b7                                       ; $704c: $cd $b7 $33
	ld   b, [hl]                                     ; $704f: $46
	ld   h, l                                        ; $7050: $65
	ld   b, l                                        ; $7051: $45
	adc  e                                           ; $7052: $8b
	call c, $88a8                                    ; $7053: $dc $a8 $88
	xor  e                                           ; $7056: $ab
	sub  a                                           ; $7057: $97
	ld   d, l                                        ; $7058: $55
	ld   d, [hl]                                     ; $7059: $56
	ld   d, h                                        ; $705a: $54
	ld   d, [hl]                                     ; $705b: $56
	sbc  d                                           ; $705c: $9a
	cp   d                                           ; $705d: $ba
	cp   e                                           ; $705e: $bb
	cp   e                                           ; $705f: $bb
	cp   c                                           ; $7060: $b9
	ld   h, l                                        ; $7061: $65
	ld   d, l                                        ; $7062: $55
	ld   d, h                                        ; $7063: $54
	ld   b, l                                        ; $7064: $45
	ld   a, d                                        ; $7065: $7a
	cp   e                                           ; $7066: $bb
	cp   d                                           ; $7067: $ba
	cp   e                                           ; $7068: $bb
	cp   e                                           ; $7069: $bb
	add  l                                           ; $706a: $85
	ld   d, l                                        ; $706b: $55
	ld   h, l                                        ; $706c: $65
	ld   b, h                                        ; $706d: $44
	ld   e, b                                        ; $706e: $58
	xor  h                                           ; $706f: $ac
	cp   d                                           ; $7070: $ba
	sbc  c                                           ; $7071: $99
	cp   h                                           ; $7072: $bc
	cp   b                                           ; $7073: $b8
	ld   d, h                                        ; $7074: $54
	ld   d, [hl]                                     ; $7075: $56
	ld   h, h                                        ; $7076: $64
	ld   b, l                                        ; $7077: $45
	adc  d                                           ; $7078: $8a
	call z, $abbb                                    ; $7079: $cc $bb $ab
	cp   c                                           ; $707c: $b9
	ld   h, h                                        ; $707d: $64
	ld   d, l                                        ; $707e: $55
	ld   h, l                                        ; $707f: $65
	ld   b, l                                        ; $7080: $45
	ld   a, d                                        ; $7081: $7a
	call z, $babb                                    ; $7082: $cc $bb $ba
	cp   d                                           ; $7085: $ba
	ld   [hl], h                                     ; $7086: $74
	ld   b, h                                        ; $7087: $44
	ld   d, [hl]                                     ; $7088: $56
	ld   h, [hl]                                     ; $7089: $66
	sbc  d                                           ; $708a: $9a
	xor  d                                           ; $708b: $aa
	sbc  d                                           ; $708c: $9a
	cp   h                                           ; $708d: $bc
	cp   d                                           ; $708e: $ba
	ld   [hl], h                                     ; $708f: $74
	ld   b, [hl]                                     ; $7090: $46
	ld   h, l                                        ; $7091: $65
	ld   b, h                                        ; $7092: $44
	ld   l, d                                        ; $7093: $6a
	call z, $abaa                                    ; $7094: $cc $aa $ab
	cp   d                                           ; $7097: $ba
	ld   [hl], h                                     ; $7098: $74
	inc  [hl]                                        ; $7099: $34
	ld   d, [hl]                                     ; $709a: $56
	ld   d, l                                        ; $709b: $55
	ld   a, d                                        ; $709c: $7a
	cp   l                                           ; $709d: $bd
	cp   e                                           ; $709e: $bb
	cp   d                                           ; $709f: $ba
	cp   d                                           ; $70a0: $ba
	ld   [hl], h                                     ; $70a1: $74
	inc  [hl]                                        ; $70a2: $34
	ld   b, l                                        ; $70a3: $45
	ld   h, [hl]                                     ; $70a4: $66
	adc  d                                           ; $70a5: $8a
	cp   e                                           ; $70a6: $bb
	xor  d                                           ; $70a7: $aa
	cp   h                                           ; $70a8: $bc
	jp   z, Jump_0ee_4564                            ; $70a9: $ca $64 $45

	ld   d, l                                        ; $70ac: $55
	ld   b, [hl]                                     ; $70ad: $46
	sbc  e                                           ; $70ae: $9b
	res  3, c                                        ; $70af: $cb $99
	xor  h                                           ; $70b1: $ac
	ret                                              ; $70b2: $c9


	ld   d, e                                        ; $70b3: $53
	inc  [hl]                                        ; $70b4: $34
	ld   d, l                                        ; $70b5: $55
	ld   b, [hl]                                     ; $70b6: $46
	sbc  h                                           ; $70b7: $9c
	call c, $aba9                                    ; $70b8: $dc $a9 $ab
	and  a                                           ; $70bb: $a7
	ld   d, h                                        ; $70bc: $54
	ld   d, l                                        ; $70bd: $55
	ld   d, h                                        ; $70be: $54
	ld   d, a                                        ; $70bf: $57
	xor  h                                           ; $70c0: $ac
	res  5, e                                        ; $70c1: $cb $ab
	cp   h                                           ; $70c3: $bc
	and  l                                           ; $70c4: $a5
	inc  sp                                          ; $70c5: $33
	ld   b, [hl]                                     ; $70c6: $46
	ld   h, l                                        ; $70c7: $65
	ld   l, b                                        ; $70c8: $68
	cp   l                                           ; $70c9: $bd
	jp   z, $cbab                                    ; $70ca: $ca $ab $cb

	add  h                                           ; $70cd: $84
	inc  [hl]                                        ; $70ce: $34
	ld   d, l                                        ; $70cf: $55
	ld   b, l                                        ; $70d0: $45
	ld   a, d                                        ; $70d1: $7a
	db   $dd                                         ; $70d2: $dd
	xor  c                                           ; $70d3: $a9
	xor  e                                           ; $70d4: $ab
	cp   d                                           ; $70d5: $ba
	ld   h, e                                        ; $70d6: $63
	inc  [hl]                                        ; $70d7: $34
	ld   d, l                                        ; $70d8: $55
	ld   d, [hl]                                     ; $70d9: $56
	sbc  e                                           ; $70da: $9b
	res  5, d                                        ; $70db: $cb $aa
	cp   h                                           ; $70dd: $bc
	or   a                                           ; $70de: $b7
	ld   b, e                                        ; $70df: $43
	ld   b, l                                        ; $70e0: $45
	ld   d, l                                        ; $70e1: $55
	ld   d, a                                        ; $70e2: $57
	xor  h                                           ; $70e3: $ac
	jp   z, $ccab                                    ; $70e4: $ca $ab $cc

	sub  l                                           ; $70e7: $95
	inc  sp                                          ; $70e8: $33
	ld   d, l                                        ; $70e9: $55
	ld   d, h                                        ; $70ea: $54
	ld   l, d                                        ; $70eb: $6a
	db   $dd                                         ; $70ec: $dd
	cp   c                                           ; $70ed: $b9
	adc  e                                           ; $70ee: $8b
	jp   z, $2473                                    ; $70ef: $ca $73 $24

	ld   h, a                                        ; $70f2: $67
	ld   d, l                                        ; $70f3: $55
	xor  a                                           ; $70f4: $af
	db   $fc                                         ; $70f5: $fc
	ld   h, e                                        ; $70f6: $63
	ld   a, h                                        ; $70f7: $7c
	rst  $10                                         ; $70f8: $d7
	ld   de, $a838                                   ; $70f9: $11 $38 $a8
	ld   l, e                                        ; $70fc: $6b
	rst  $38                                         ; $70fd: $ff
	push af                                          ; $70fe: $f5
	ld   de, $81be                                   ; $70ff: $11 $be $81
	ld   de, $c79d                                   ; $7102: $11 $9d $c7
	cp   a                                           ; $7105: $bf
	rst  $38                                         ; $7106: $ff
	ld   h, c                                        ; $7107: $61
	rla                                              ; $7108: $17
	rst  $10                                         ; $7109: $d7
	ld   de, $fe1a                                   ; $710a: $11 $1a $fe
	sbc  h                                           ; $710d: $9c
	rst  $38                                         ; $710e: $ff
	push af                                          ; $710f: $f5
	ld   de, $814c                                   ; $7110: $11 $4c $81
	ld   de, $f8cf                                   ; $7113: $11 $cf $f8
	rst  $38                                         ; $7116: $ff
	rst  $38                                         ; $7117: $ff
	ld   hl, $d913                                   ; $7118: $21 $13 $d9
	ld   de, $ff1f                                   ; $711b: $11 $1f $ff
	sbc  [hl]                                        ; $711e: $9e
	rst  $38                                         ; $711f: $ff
	ldh  a, [c]                                      ; $7120: $f2
	ld   de, $c11d                                   ; $7121: $11 $1d $c1
	ld   de, $f8ff                                   ; $7124: $11 $ff $f8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7127: $cf
	rst  $38                                         ; $7128: $ff
	ld   de, $fd11                                   ; $7129: $11 $11 $fd
	ld   de, $ff1f                                   ; $712c: $11 $1f $ff
	sbc  h                                           ; $712f: $9c
	rst  $38                                         ; $7130: $ff
	pop  af                                          ; $7131: $f1
	ld   de, $f11f                                   ; $7132: $11 $1f $f1
	ld   [de], a                                     ; $7135: $12
	rst  $38                                         ; $7136: $ff
	rst  $30                                         ; $7137: $f7
	cp   a                                           ; $7138: $bf
	rst  $38                                         ; $7139: $ff
	ld   de, rAUD1LEN                                   ; $713a: $11 $11 $ff
	ld   hl, $ff4f                                   ; $713d: $21 $4f $ff
	ld   e, h                                        ; $7140: $5c
	rst  $38                                         ; $7141: $ff
	pop  af                                          ; $7142: $f1
	ld   de, $f61f                                   ; $7143: $11 $1f $f6
	inc  de                                          ; $7146: $13
	rst  $38                                         ; $7147: $ff
	push af                                          ; $7148: $f5
	adc  a                                           ; $7149: $8f
	rst  $38                                         ; $714a: $ff
	ld   de, rAUD1LEN                                   ; $714b: $11 $11 $ff
	or   c                                           ; $714e: $b1
	rra                                              ; $714f: $1f
	rst  $38                                         ; $7150: $ff
	add  l                                           ; $7151: $85
	rst  $38                                         ; $7152: $ff
	ld   hl, sp+$11                                  ; $7153: $f8 $11
	rra                                              ; $7155: $1f
	rst  $38                                         ; $7156: $ff
	ld   de, $f9ff                                   ; $7157: $11 $ff $f9
	rra                                              ; $715a: $1f
	rst  $38                                         ; $715b: $ff
	pop  af                                          ; $715c: $f1
	ld   de, $f7af                                   ; $715d: $11 $af $f7
	inc  e                                           ; $7160: $1c
	rst  $38                                         ; $7161: $ff
	or   c                                           ; $7162: $b1
	rst  $28                                         ; $7163: $ef
	rst  $38                                         ; $7164: $ff
	ld   de, rAUD1LEN                                   ; $7165: $11 $11 $ff
	pop  de                                          ; $7168: $d1
	ld   l, a                                        ; $7169: $6f
	db   $fd                                         ; $716a: $fd
	ld   d, $ff                                      ; $716b: $16 $ff
	pop  af                                          ; $716d: $f1
	ld   de, $ff1f                                   ; $716e: $11 $1f $ff
	ld   [hl], d                                     ; $7171: $72
	rst  $38                                         ; $7172: $ff
	rst  $10                                         ; $7173: $d7
	rra                                              ; $7174: $1f
	rst  $38                                         ; $7175: $ff
	pop  hl                                          ; $7176: $e1
	ld   de, $ff5f                                   ; $7177: $11 $5f $ff
	add  hl, hl                                      ; $717a: $29
	db   $fd                                         ; $717b: $fd
	or   c                                           ; $717c: $b1
	xor  a                                           ; $717d: $af
	rst  $38                                         ; $717e: $ff
	ld   de, rAUD1LEN                                   ; $717f: $11 $11 $ff
	ld   hl, sp+$1f                                  ; $7182: $f8 $1f
	db   $db                                         ; $7184: $db
	ld   d, c                                        ; $7185: $51
	rst  $38                                         ; $7186: $ff
	ei                                               ; $7187: $fb
	ld   de, $ff19                                   ; $7188: $11 $19 $ff
	ldh  a, [c]                                      ; $718b: $f2
	ld   l, l                                        ; $718c: $6d
	ld   l, e                                        ; $718d: $6b
	ld   a, [de]                                     ; $718e: $1a
	rst  $38                                         ; $718f: $ff
	pop  af                                          ; $7190: $f1
	ld   de, $ff1f                                   ; $7191: $11 $1f $ff
	pop  af                                          ; $7194: $f1
	and  a                                           ; $7195: $a7
	ld   l, c                                        ; $7196: $69
	rra                                              ; $7197: $1f
	rst  $38                                         ; $7198: $ff
	pop  af                                          ; $7199: $f1
	ld   de, $ff1f                                   ; $719a: $11 $1f $ff
	ld   h, c                                        ; $719d: $61
	add  d                                           ; $719e: $82
	sub  [hl]                                        ; $719f: $96
	sbc  a                                           ; $71a0: $9f
	rst  $38                                         ; $71a1: $ff
	ld   de, rAUD1LEN                                   ; $71a2: $11 $11 $ff
	rst  $38                                         ; $71a5: $ff
	ld   de, $b521                                   ; $71a6: $11 $21 $b5
	rst  $38                                         ; $71a9: $ff
	rst  $38                                         ; $71aa: $ff
	ld   de, rAUD1LEN                                   ; $71ab: $11 $11 $ff
	rst  $38                                         ; $71ae: $ff
	ld   de, $b712                                   ; $71af: $11 $12 $b7
	rst  $38                                         ; $71b2: $ff
	cp   $11                                         ; $71b3: $fe $11
	ld   de, $fdff                                   ; $71b5: $11 $ff $fd
	ld   de, $de14                                   ; $71b8: $11 $14 $de
	rst  $38                                         ; $71bb: $ff
	di                                               ; $71bc: $f3
	ld   de, rAUD1LEN                                   ; $71bd: $11 $11 $ff
	ld   hl, sp+$11                                  ; $71c0: $f8 $11
	rla                                              ; $71c2: $17
	rst  $38                                         ; $71c3: $ff
	rst  $38                                         ; $71c4: $ff
	pop  af                                          ; $71c5: $f1
	ld   de, $ff16                                   ; $71c6: $11 $16 $ff
	db   $f4                                         ; $71c9: $f4
	ld   de, $ff19                                   ; $71ca: $11 $19 $ff
	rst  $38                                         ; $71cd: $ff
	pop  af                                          ; $71ce: $f1
	ld   de, rAUD1HIGH                                   ; $71cf: $11 $14 $ff
	di                                               ; $71d2: $f3
	ld   de, $ff16                                   ; $71d3: $11 $16 $ff
	rst  $38                                         ; $71d6: $ff
	pop  af                                          ; $71d7: $f1
	ld   de, rAUD1LEN                                   ; $71d8: $11 $11 $ff
	push af                                          ; $71db: $f5
	ld   de, rAUD1LEN                                   ; $71dc: $11 $11 $ff
	rst  $38                                         ; $71df: $ff
	add  c                                           ; $71e0: $81
	ld   de, rAUD1LEN                                   ; $71e1: $11 $11 $ff
	cp   $11                                         ; $71e4: $fe $11
	ld   de, $ffff                                   ; $71e6: $11 $ff $ff
	ld   hl, $1111                                   ; $71e9: $21 $11 $11
	rra                                              ; $71ec: $1f
	rst  $38                                         ; $71ed: $ff
	ld   de, rAUD1LEN                                   ; $71ee: $11 $11 $ff
	rst  $38                                         ; $71f1: $ff
	or   c                                           ; $71f2: $b1
	ld   de, $1511                                   ; $71f3: $11 $11 $15
	rst  $38                                         ; $71f6: $ff
	and  c                                           ; $71f7: $a1
	ld   de, $ffff                                   ; $71f8: $11 $ff $ff
	ldh  a, [c]                                      ; $71fb: $f2
	ld   de, $5119                                   ; $71fc: $11 $19 $51
	ld   a, a                                        ; $71ff: $7f
	di                                               ; $7200: $f3
	ld   de, $ff7f                                   ; $7201: $11 $7f $ff
	rst  $38                                         ; $7204: $ff
	ld   de, $f714                                   ; $7205: $11 $14 $f7
	ld   de, $21ff                                   ; $7208: $11 $ff $21
	ld   e, $ff                                      ; $720b: $1e $ff
	rst  $38                                         ; $720d: $ff
	pop  af                                          ; $720e: $f1
	ld   de, $61af                                   ; $720f: $11 $af $61
	rra                                              ; $7212: $1f
	push af                                          ; $7213: $f5
	ld   de, $ffff                                   ; $7214: $11 $ff $ff
	rst  $38                                         ; $7217: $ff
	ld   de, $f71b                                   ; $7218: $11 $1b $f7
	ld   de, $a1ff                                   ; $721b: $11 $ff $a1
	ld   a, [de]                                     ; $721e: $1a
	rst  $38                                         ; $721f: $ff
	rst  $38                                         ; $7220: $ff
	push af                                          ; $7221: $f5
	ld   de, $918f                                   ; $7222: $11 $8f $91
	rra                                              ; $7225: $1f
	rst  $38                                         ; $7226: $ff
	ld   de, $ff3f                                   ; $7227: $11 $3f $ff
	rst  $38                                         ; $722a: $ff
	ld   [hl], c                                     ; $722b: $71
	ld   d, $fd                                      ; $722c: $16 $fd
	ld   de, $f1ff                                   ; $722e: $11 $ff $f1
	ld   de, $fbff                                   ; $7231: $11 $ff $fb
	cp   $11                                         ; $7234: $fe $11
	rra                                              ; $7236: $1f
	pop  af                                          ; $7237: $f1
	ld   d, $ff                                      ; $7238: $16 $ff
	ld   de, $ff1f                                   ; $723a: $11 $1f $ff
	xor  a                                           ; $723d: $af
	pop  af                                          ; $723e: $f1
	ld   de, $61ff                                   ; $723f: $11 $ff $61
	rra                                              ; $7242: $1f
	ld   a, [$6f11]                                  ; $7243: $fa $11 $6f
	rst  $38                                         ; $7246: $ff
	cp   a                                           ; $7247: $bf
	ld   d, c                                        ; $7248: $51
	jr   @+$01                                       ; $7249: $18 $ff

	ld   de, $f1af                                   ; $724b: $11 $af $f1
	ld   de, $f4ff                                   ; $724e: $11 $ff $f4
	rst  $38                                         ; $7251: $ff
	ld   sp, $f81f                                   ; $7252: $31 $1f $f8
	ld   de, $f1ff                                   ; $7255: $11 $ff $f1
	ld   de, $e4ff                                   ; $7258: $11 $ff $e4
	rst  $38                                         ; $725b: $ff
	ld   de, $f11f                                   ; $725c: $11 $1f $f1
	ld   de, $51ff                                   ; $725f: $11 $ff $51
	rra                                              ; $7262: $1f
	rst  $38                                         ; $7263: $ff
	ld   l, e                                        ; $7264: $6b
	ld   sp, hl                                      ; $7265: $f9
	ld   de, $f1af                                   ; $7266: $11 $af $f1
	dec  de                                          ; $7269: $1b
	rst  $38                                         ; $726a: $ff
	ld   de, $ff1f                                   ; $726b: $11 $1f $ff
	ccf                                              ; $726e: $3f
	or   $11                                         ; $726f: $f6 $11
	rst  $38                                         ; $7271: $ff
	pop  bc                                          ; $7272: $c1
	rra                                              ; $7273: $1f
	rst  $38                                         ; $7274: $ff
	ld   de, $ff1f                                   ; $7275: $11 $1f $ff
	cpl                                              ; $7278: $2f
	push af                                          ; $7279: $f5
	ld   de, $51ff                                   ; $727a: $11 $ff $51
	rra                                              ; $727d: $1f
	rst  $38                                         ; $727e: $ff
	ld   de, $ff1f                                   ; $727f: $11 $1f $ff
	ld   e, a                                        ; $7282: $5f
	rst  $30                                         ; $7283: $f7
	ld   de, $71ff                                   ; $7284: $11 $ff $71
	rra                                              ; $7287: $1f
	rst  $38                                         ; $7288: $ff
	ld   de, $ff1f                                   ; $7289: $11 $1f $ff
	ld   e, [hl]                                     ; $728c: $5e
	rst  $10                                         ; $728d: $d7
	ld   de, $b1ff                                   ; $728e: $11 $ff $b1
	ld   de, $21ff                                   ; $7291: $11 $ff $21
	rra                                              ; $7294: $1f
	rst  $38                                         ; $7295: $ff
	xor  h                                           ; $7296: $ac
	ret                                              ; $7297: $c9


	ld   de, $f1bf                                   ; $7298: $11 $bf $f1
	ld   de, $b1ff                                   ; $729b: $11 $ff $b1
	ld   [de], a                                     ; $729e: $12
	rst  $38                                         ; $729f: $ff
	ld   hl, sp-$29                                  ; $72a0: $f8 $d7
	ld   b, c                                        ; $72a2: $41
	ld   a, a                                        ; $72a3: $7f
	pop  af                                          ; $72a4: $f1
	ld   de, $f44f                                   ; $72a5: $11 $4f $f4
	ld   de, $fdff                                   ; $72a8: $11 $ff $fd
	rst  $20                                         ; $72ab: $e7
	ld   d, c                                        ; $72ac: $51
	rra                                              ; $72ad: $1f
	rst  $38                                         ; $72ae: $ff
	ld   de, $ff1f                                   ; $72af: $11 $1f $ff
	ld   de, $ff1f                                   ; $72b2: $11 $1f $ff
	cp   $22                                         ; $72b5: $fe $22
	ld   de, $d1ff                                   ; $72b7: $11 $ff $d1
	ld   de, $f1ff                                   ; $72ba: $11 $ff $f1
	ld   de, $ffff                                   ; $72bd: $11 $ff $ff
	pop  de                                          ; $72c0: $d1
	ld   [bc], a                                     ; $72c1: $02
	ld   c, a                                        ; $72c2: $4f
	ld   sp, hl                                      ; $72c3: $f9
	ld   de, $ff1f                                   ; $72c4: $11 $1f $ff
	ld   sp, $df15                                   ; $72c7: $31 $15 $df
	rst  $38                                         ; $72ca: $ff

Call_0ee_72cb:
	ld   hl, rAUD1ENV                                   ; $72cb: $21 $12 $ff
	ldh  a, [c]                                      ; $72ce: $f2
	ld   de, $ff1f                                   ; $72cf: $11 $1f $ff
	ld   de, $ff1f                                   ; $72d2: $11 $1f $ff
	or   [hl]                                        ; $72d5: $b6
	inc  d                                           ; $72d6: $14
	jr   z, @+$01                                    ; $72d7: $28 $ff

	pop  bc                                          ; $72d9: $c1
	ld   de, $f1ff                                   ; $72da: $11 $ff $f1
	ld   de, $ffcf                                   ; $72dd: $11 $cf $ff
	sub  c                                           ; $72e0: $91
	ld   de, $ff6f                                   ; $72e1: $11 $6f $ff
	ld   de, $ef11                                   ; $72e4: $11 $11 $ef
	ldh  a, [c]                                      ; $72e7: $f2
	ld   de, $ff4f                                   ; $72e8: $11 $4f $ff
	or   c                                           ; $72eb: $b1
	ld   de, $ff7f                                   ; $72ec: $11 $7f $ff
	ld   de, $4f11                                   ; $72ef: $11 $11 $4f
	rst  $30                                         ; $72f2: $f7
	ld   de, $ff1f                                   ; $72f3: $11 $1f $ff
	or   c                                           ; $72f6: $b1
	ld   de, $ff5f                                   ; $72f7: $11 $5f $ff
	ld   d, c                                        ; $72fa: $51
	ld   de, $ff1f                                   ; $72fb: $11 $1f $ff
	ld   de, $ff1a                                   ; $72fe: $11 $1a $ff
	push af                                          ; $7301: $f5
	ld   de, $ff1f                                   ; $7302: $11 $1f $ff
	pop  af                                          ; $7305: $f1
	ld   de, rAUD1LEN                                   ; $7306: $11 $11 $ff
	pop  af                                          ; $7309: $f1
	ld   de, $ffdf                                   ; $730a: $11 $df $ff
	ld   de, rAUD1ENV                                   ; $730d: $11 $12 $ff
	rst  $38                                         ; $7310: $ff
	ld   de, $5716                                   ; $7311: $11 $16 $57
	rst  $38                                         ; $7314: $ff
	ld   sp, rAUD1LEN                                   ; $7315: $31 $11 $ff
	pop  af                                          ; $7318: $f1
	ld   de, $ff5b                                   ; $7319: $11 $5b $ff
	db   $f4                                         ; $731c: $f4
	ld   de, $911f                                   ; $731d: $11 $1f $91
	rst  $38                                         ; $7320: $ff
	sub  c                                           ; $7321: $91
	ld   de, $f1ff                                   ; $7322: $11 $ff $f1
	ld   de, $ff6b                                   ; $7325: $11 $6b $ff
	rst  $30                                         ; $7328: $f7
	ld   de, $e11f                                   ; $7329: $11 $1f $e1
	rra                                              ; $732c: $1f
	ld   a, [$1f11]                                  ; $732d: $fa $11 $1f
	rst  $38                                         ; $7330: $ff
	ld   de, $7d18                                   ; $7331: $11 $18 $7d
	rst  $38                                         ; $7334: $ff
	pop  hl                                          ; $7335: $e1
	ld   de, $81de                                   ; $7336: $11 $de $81
	ld   c, a                                        ; $7339: $4f
	pop  af                                          ; $733a: $f1
	ld   de, $fcdf                                   ; $733b: $11 $df $fc
	ld   de, $ad0a                                   ; $733e: $11 $0a $ad
	rst  $38                                         ; $7341: $ff
	and  c                                           ; $7342: $a1
	ld   [de], a                                     ; $7343: $12
	db   $dd                                         ; $7344: $dd
	add  c                                           ; $7345: $81
	rra                                              ; $7346: $1f
	ld   hl, sp+$11                                  ; $7347: $f8 $11
	ccf                                              ; $7349: $3f
	rst  $38                                         ; $734a: $ff
	ld   de, $ac18                                   ; $734b: $11 $18 $ac
	rst  $38                                         ; $734e: $ff
	db   $e4                                         ; $734f: $e4
	ld   de, $9789                                   ; $7350: $11 $89 $97
	ld   b, e                                        ; $7353: $43
	ld   l, a                                        ; $7354: $6f
	push bc                                          ; $7355: $c5
	ld   de, $fabf                                   ; $7356: $11 $bf $fa
	ld   sp, $9c4a                                   ; $7359: $31 $4a $9c
	rst  JumpTable                                         ; $735c: $df
	and  e                                           ; $735d: $a3
	inc  d                                           ; $735e: $14
	sbc  c                                           ; $735f: $99
	sbc  b                                           ; $7360: $98
	ld   d, h                                        ; $7361: $54
	ld   a, h                                        ; $7362: $7c
	rst  ToBoot                                         ; $7363: $c7
	ld   d, e                                        ; $7364: $53
	adc  h                                           ; $7365: $8c
	db   $db                                         ; $7366: $db
	ld   h, h                                        ; $7367: $64
	ld   e, c                                        ; $7368: $59
	xor  l                                           ; $7369: $ad
	cp   e                                           ; $736a: $bb
	sub  l                                           ; $736b: $95
	ld   b, [hl]                                     ; $736c: $46
	ld   [hl], l                                     ; $736d: $75
	ld   a, e                                        ; $736e: $7b
	ld   hl, sp+$11                                  ; $736f: $f8 $11
	sbc  a                                           ; $7371: $9f
	ld   sp, hl                                      ; $7372: $f9
	ld   de, $eb7d                                   ; $7373: $11 $7d $eb
	sbc  c                                           ; $7376: $99
	and  [hl]                                        ; $7377: $a6
	ld   b, [hl]                                     ; $7378: $46
	sbc  e                                           ; $7379: $9b
	ld   [hl], l                                     ; $737a: $75
	ld   d, a                                        ; $737b: $57
	ld   [hl], l                                     ; $737c: $75
	ld   l, h                                        ; $737d: $6c
	jp   hl                                          ; $737e: $e9


	ld   b, c                                        ; $737f: $41
	ld   c, e                                        ; $7380: $4b
	db   $ed                                         ; $7381: $ed
	ld   [hl], h                                     ; $7382: $74
	ld   e, b                                        ; $7383: $58
	xor  e                                           ; $7384: $ab
	jp   z, $4674                                    ; $7385: $ca $74 $46

	sbc  c                                           ; $7388: $99
	sbc  c                                           ; $7389: $99
	xor  b                                           ; $738a: $a8
	ld   d, h                                        ; $738b: $54
	ld   d, h                                        ; $738c: $54
	ld   a, a                                        ; $738d: $7f
	call c, $3672                                    ; $738e: $dc $72 $36
	rst  JumpTable                                         ; $7391: $df
	ret  c                                           ; $7392: $d8

	ld   d, h                                        ; $7393: $54
	ld   d, a                                        ; $7394: $57
	ld   a, b                                        ; $7395: $78
	sbc  b                                           ; $7396: $98
	ld   [hl], a                                     ; $7397: $77
	add  [hl]                                        ; $7398: $86
	sbc  b                                           ; $7399: $98
	adc  c                                           ; $739a: $89
	adc  c                                           ; $739b: $89
	ld   a, b                                        ; $739c: $78
	adc  b                                           ; $739d: $88
	add  a                                           ; $739e: $87
	adc  c                                           ; $739f: $89
	xor  c                                           ; $73a0: $a9
	add  a                                           ; $73a1: $87
	adc  b                                           ; $73a2: $88
	adc  c                                           ; $73a3: $89
	adc  b                                           ; $73a4: $88
	adc  b                                           ; $73a5: $88
	adc  b                                           ; $73a6: $88
	adc  b                                           ; $73a7: $88
	ld   a, b                                        ; $73a8: $78
	adc  c                                           ; $73a9: $89
	add  a                                           ; $73aa: $87
	ld   a, b                                        ; $73ab: $78
	adc  c                                           ; $73ac: $89
	sbc  b                                           ; $73ad: $98
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

Call_0ee_75b9:
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

Call_0ee_76a8:
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

Jump_0ee_7788:
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

Jump_0ee_7987:
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

Call_0ee_7997:
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
	adc  c                                           ; $7a25: $89
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	sbc  b                                           ; $7a2a: $98
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	sbc  b                                           ; $7a31: $98
	adc  b                                           ; $7a32: $88
	ld   a, c                                        ; $7a33: $79
	sbc  b                                           ; $7a34: $98
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	sbc  b                                           ; $7a38: $98
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	add  a                                           ; $7a3b: $87
	ld   a, b                                        ; $7a3c: $78
	adc  b                                           ; $7a3d: $88
	sub  a                                           ; $7a3e: $97
	adc  b                                           ; $7a3f: $88
	sbc  b                                           ; $7a40: $98
	adc  b                                           ; $7a41: $88
	ld   a, b                                        ; $7a42: $78
	adc  c                                           ; $7a43: $89
	adc  b                                           ; $7a44: $88
	ld   a, b                                        ; $7a45: $78
	sbc  c                                           ; $7a46: $99
	adc  b                                           ; $7a47: $88
	add  a                                           ; $7a48: $87
	ld   a, b                                        ; $7a49: $78
	sbc  c                                           ; $7a4a: $99
	add  a                                           ; $7a4b: $87
	ld   [hl], a                                     ; $7a4c: $77
	sbc  b                                           ; $7a4d: $98
	sbc  c                                           ; $7a4e: $99
	ld   [hl], a                                     ; $7a4f: $77
	add  a                                           ; $7a50: $87
	adc  c                                           ; $7a51: $89
	sbc  b                                           ; $7a52: $98
	halt                                             ; $7a53: $76
	ld   a, c                                        ; $7a54: $79
	xor  c                                           ; $7a55: $a9
	add  a                                           ; $7a56: $87
	ld   [hl], a                                     ; $7a57: $77
	adc  b                                           ; $7a58: $88
	adc  c                                           ; $7a59: $89
	sbc  b                                           ; $7a5a: $98
	add  [hl]                                        ; $7a5b: $86
	ld   a, b                                        ; $7a5c: $78
	adc  d                                           ; $7a5d: $8a
	sub  a                                           ; $7a5e: $97
	ld   [hl], a                                     ; $7a5f: $77
	adc  d                                           ; $7a60: $8a
	adc  c                                           ; $7a61: $89
	sub  a                                           ; $7a62: $97
	ld   a, b                                        ; $7a63: $78
	adc  b                                           ; $7a64: $88
	xor  b                                           ; $7a65: $a8
	halt                                             ; $7a66: $76
	ld   a, b                                        ; $7a67: $78
	xor  c                                           ; $7a68: $a9
	ld   a, b                                        ; $7a69: $78
	ld   [hl], a                                     ; $7a6a: $77
	sbc  b                                           ; $7a6b: $98
	sbc  c                                           ; $7a6c: $99
	adc  b                                           ; $7a6d: $88
	ld   a, b                                        ; $7a6e: $78
	ld   a, b                                        ; $7a6f: $78
	xor  c                                           ; $7a70: $a9
	add  a                                           ; $7a71: $87
	add  a                                           ; $7a72: $87
	adc  d                                           ; $7a73: $8a
	ld   a, b                                        ; $7a74: $78
	add  [hl]                                        ; $7a75: $86
	adc  d                                           ; $7a76: $8a
	ld   [hl], a                                     ; $7a77: $77
	sub  a                                           ; $7a78: $97
	sbc  c                                           ; $7a79: $99
	ld   h, a                                        ; $7a7a: $67
	ld   a, c                                        ; $7a7b: $79
	sub  a                                           ; $7a7c: $97
	ld   [hl], a                                     ; $7a7d: $77
	ld   a, c                                        ; $7a7e: $79
	sbc  c                                           ; $7a7f: $99
	sub  a                                           ; $7a80: $97
	ld   l, c                                        ; $7a81: $69
	sbc  c                                           ; $7a82: $99

jr_0ee_7a83:
	sub  a                                           ; $7a83: $97
	ld   l, b                                        ; $7a84: $68

Call_0ee_7a85:
	ld   [hl], a                                     ; $7a85: $77
	sbc  c                                           ; $7a86: $99
	sbc  d                                           ; $7a87: $9a
	halt                                             ; $7a88: $76
	ld   a, b                                        ; $7a89: $78
	sbc  c                                           ; $7a8a: $99
	ld   [hl], a                                     ; $7a8b: $77
	ld   [hl], a                                     ; $7a8c: $77
	add  a                                           ; $7a8d: $87
	xor  c                                           ; $7a8e: $a9
	ld   [hl], a                                     ; $7a8f: $77
	ld   [hl], a                                     ; $7a90: $77
	ld   a, c                                        ; $7a91: $79
	ld   a, c                                        ; $7a92: $79
	add  a                                           ; $7a93: $87
	ld   h, [hl]                                     ; $7a94: $66
	sbc  h                                           ; $7a95: $9c
	or   h                                           ; $7a96: $b4
	ld   b, l                                        ; $7a97: $45
	ld   a, [hl]                                     ; $7a98: $7e
	jp   hl                                          ; $7a99: $e9


	ld   [de], a                                     ; $7a9a: $12
	adc  [hl]                                        ; $7a9b: $8e
	add  sp, $52                                     ; $7a9c: $e8 $52
	ld   a, c                                        ; $7a9e: $79
	cp   e                                           ; $7a9f: $bb
	halt                                             ; $7aa0: $76
	add  hl, sp                                      ; $7aa1: $39
	xor  e                                           ; $7aa2: $ab
	ret  z                                           ; $7aa3: $c8

	ld   [hl+], a                                    ; $7aa4: $22
	xor  d                                           ; $7aa5: $aa
	call $4d41                                       ; $7aa6: $cd $41 $4d
	db   $fd                                         ; $7aa9: $fd
	ld   h, c                                        ; $7aaa: $61
	add  hl, hl                                      ; $7aab: $29
	xor  [hl]                                        ; $7aac: $ae
	pop  hl                                          ; $7aad: $e1
	daa                                              ; $7aae: $27
	ld   a, d                                        ; $7aaf: $7a
	jp   c, Jump_0ee_5964                            ; $7ab0: $da $64 $59

	sbc  h                                           ; $7ab3: $9c
	sub  h                                           ; $7ab4: $94

jr_0ee_7ab5:
	sub  l                                           ; $7ab5: $95
	sbc  d                                           ; $7ab6: $9a
	adc  d                                           ; $7ab7: $8a
	sub  h                                           ; $7ab8: $94
	ld   c, d                                        ; $7ab9: $4a
	xor  e                                           ; $7aba: $ab
	jp   Jump_0ee_4f98                               ; $7abb: $c3 $98 $4f


	and  l                                           ; $7abe: $a5
	ld   d, a                                        ; $7abf: $57
	cp   l                                           ; $7ac0: $bd
	or   e                                           ; $7ac1: $b3
	ld   h, [hl]                                     ; $7ac2: $66
	ret  z                                           ; $7ac3: $c8

	inc  a                                           ; $7ac4: $3c
	ld   d, h                                        ; $7ac5: $54

Jump_0ee_7ac6:
	and  a                                           ; $7ac6: $a7
	ld   l, d                                        ; $7ac7: $6a
	call nz, Call_0ee_5ea9                           ; $7ac8: $c4 $a9 $5e
	sub  [hl]                                        ; $7acb: $96
	db   $fd                                         ; $7acc: $fd
	jr   jr_0ee_7ab5                                 ; $7acd: $18 $e6

	ld   b, d                                        ; $7acf: $42
	ld   de, $24aa                                   ; $7ad0: $11 $aa $24
	ld   [hl], c                                     ; $7ad3: $71
	adc  a                                           ; $7ad4: $8f
	ld   l, a                                        ; $7ad5: $6f
	ld   sp, hl                                      ; $7ad6: $f9
	inc  e                                           ; $7ad7: $1c
	adc  c                                           ; $7ad8: $89
	rst  $38                                         ; $7ad9: $ff
	dec  d                                           ; $7ada: $15
	ld   de, $114a                                   ; $7adb: $11 $4a $11
	ld   de, $ff8f                                   ; $7ade: $11 $8f $ff
	db   $fc                                         ; $7ae1: $fc
	jr   jr_0ee_7a83                                 ; $7ae2: $18 $9f

	db   $fc                                         ; $7ae4: $fc
	ld   de, $6155                                   ; $7ae5: $11 $55 $61
	ld   de, $6c11                                   ; $7ae8: $11 $11 $6c
	rst  $38                                         ; $7aeb: $ff
	set  7, e                                        ; $7aec: $cb $fb
	ld   e, a                                        ; $7aee: $5f
	cp   $81                                         ; $7aef: $fe $81
	inc  d                                           ; $7af1: $14
	inc  de                                          ; $7af2: $13
	ld   hl, $671a                                   ; $7af3: $21 $1a $67
	rst  $38                                         ; $7af6: $ff
	rst  $38                                         ; $7af7: $ff
	ld   de, $ffdf                                   ; $7af8: $11 $df $ff
	ld   de, $4b11                                   ; $7afb: $11 $11 $4b
	ld   de, $aff4                                   ; $7afe: $11 $f4 $af
	rst  $38                                         ; $7b01: $ff
	pop  af                                          ; $7b02: $f1
	rra                                              ; $7b03: $1f
	rst  $38                                         ; $7b04: $ff
	ld   de, $9314                                   ; $7b05: $11 $14 $93
	ld   de, $ff4f                                   ; $7b08: $11 $4f $ff
	rst  $38                                         ; $7b0b: $ff
	pop  af                                          ; $7b0c: $f1
	ld   a, [de]                                     ; $7b0d: $1a
	rst  $38                                         ; $7b0e: $ff
	sub  c                                           ; $7b0f: $91
	ld   de, $411e                                   ; $7b10: $11 $1e $41
	ld   c, c                                        ; $7b13: $49
	rst  $38                                         ; $7b14: $ff
	rst  $38                                         ; $7b15: $ff
	pop  af                                          ; $7b16: $f1
	rla                                              ; $7b17: $17
	rst  $38                                         ; $7b18: $ff
	ld   b, c                                        ; $7b19: $41
	ld   de, $1511                                   ; $7b1a: $11 $11 $15
	rst  $38                                         ; $7b1d: $ff
	rst  JumpTable                                         ; $7b1e: $df
	rst  $38                                         ; $7b1f: $ff
	or   $16                                         ; $7b20: $f6 $16
	halt                                             ; $7b22: $76
	ld   de, $1111                                   ; $7b23: $11 $11 $11
	ld   l, a                                        ; $7b26: $6f
	rst  $38                                         ; $7b27: $ff
	rst  $38                                         ; $7b28: $ff
	rst  $38                                         ; $7b29: $ff
	ld   [hl], c                                     ; $7b2a: $71
	rst  $28                                         ; $7b2b: $ef
	ld   de, $1111                                   ; $7b2c: $11 $11 $11
	cpl                                              ; $7b2f: $2f
	rst  $38                                         ; $7b30: $ff
	or   d                                           ; $7b31: $b2
	ld   l, a                                        ; $7b32: $6f
	rst  $38                                         ; $7b33: $ff
	pop  af                                          ; $7b34: $f1
	ld   de, $1111                                   ; $7b35: $11 $11 $11
	rra                                              ; $7b38: $1f
	rst  $38                                         ; $7b39: $ff
	di                                               ; $7b3a: $f3
	ld   b, l                                        ; $7b3b: $45
	rst  $38                                         ; $7b3c: $ff
	rst  $38                                         ; $7b3d: $ff
	ld   de, $1111                                   ; $7b3e: $11 $11 $11
	dec  d                                           ; $7b41: $15
	rst  $38                                         ; $7b42: $ff
	rst  $38                                         ; $7b43: $ff
	and  c                                           ; $7b44: $a1
	rst  $38                                         ; $7b45: $ff
	rst  JumpTable                                         ; $7b46: $df
	pop  af                                          ; $7b47: $f1
	ld   de, $1111                                   ; $7b48: $11 $11 $11
	rst  $38                                         ; $7b4b: $ff
	rst  $38                                         ; $7b4c: $ff
	ld   de, $ff5f                                   ; $7b4d: $11 $5f $ff
	pop  af                                          ; $7b50: $f1
	ld   de, $1311                                   ; $7b51: $11 $11 $13
	rst  $38                                         ; $7b54: $ff
	cp   $53                                         ; $7b55: $fe $53
	rst  $28                                         ; $7b57: $ef
	ei                                               ; $7b58: $fb
	or   $11                                         ; $7b59: $f6 $11
	ld   de, $ff1b                                   ; $7b5b: $11 $1b $ff
	rst  $38                                         ; $7b5e: $ff
	ld   de, $ff5f                                   ; $7b5f: $11 $5f $ff
	pop  de                                          ; $7b62: $d1
	ld   de, $1611                                   ; $7b63: $11 $11 $16
	rst  $38                                         ; $7b66: $ff
	or   $11                                         ; $7b67: $f6 $11
	rst  $38                                         ; $7b69: $ff
	rst  $38                                         ; $7b6a: $ff
	and  c                                           ; $7b6b: $a1
	ld   de, $1f11                                   ; $7b6c: $11 $11 $1f
	rst  $38                                         ; $7b6f: $ff
	pop  af                                          ; $7b70: $f1
	ld   de, $ffff                                   ; $7b71: $11 $ff $ff
	di                                               ; $7b74: $f3
	ld   de, $1211                                   ; $7b75: $11 $11 $12
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	ld   de, $ff1f                                   ; $7b7a: $11 $1f $ff
	rst  $38                                         ; $7b7d: $ff
	ld   de, $0111                                   ; $7b7e: $11 $11 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b81: $cf
	rst  $38                                         ; $7b82: $ff
	ld   de, rAUD1ENV                                   ; $7b83: $11 $12 $ff
	rst  $38                                         ; $7b86: $ff
	pop  af                                          ; $7b87: $f1
	ld   de, $2f12                                   ; $7b88: $11 $12 $2f
	rst  $38                                         ; $7b8b: $ff
	pop  af                                          ; $7b8c: $f1
	ld   de, $ffff                                   ; $7b8d: $11 $ff $ff
	db   $fd                                         ; $7b90: $fd
	ld   de, $1f11                                   ; $7b91: $11 $11 $1f
	rst  $38                                         ; $7b94: $ff
	db   $fc                                         ; $7b95: $fc
	ld   de, $ff1f                                   ; $7b96: $11 $1f $ff
	rst  $38                                         ; $7b99: $ff
	ld   d, c                                        ; $7b9a: $51
	ld   de, rAUD1HIGH                                   ; $7b9b: $11 $14 $ff
	rst  $38                                         ; $7b9e: $ff
	ld   de, rAUD1LEN                                   ; $7b9f: $11 $11 $ff
	rst  $38                                         ; $7ba2: $ff
	pop  af                                          ; $7ba3: $f1
	ld   de, $3f14                                   ; $7ba4: $11 $14 $3f
	rst  $38                                         ; $7ba7: $ff
	pop  af                                          ; $7ba8: $f1
	ld   de, $ff1f                                   ; $7ba9: $11 $1f $ff
	rst  $38                                         ; $7bac: $ff
	ld   de, $4111                                   ; $7bad: $11 $11 $41
	cp   a                                           ; $7bb0: $bf
	rst  $38                                         ; $7bb1: $ff
	ld   de, rAUD1LEN                                   ; $7bb2: $11 $11 $ff
	rst  $38                                         ; $7bb5: $ff
	push af                                          ; $7bb6: $f5
	ld   de, $1b11                                   ; $7bb7: $11 $11 $1b
	rst  $38                                         ; $7bba: $ff
	pop  af                                          ; $7bbb: $f1
	ld   de, $ff1f                                   ; $7bbc: $11 $1f $ff
	rst  $38                                         ; $7bbf: $ff
	or   c                                           ; $7bc0: $b1
	ld   de, $cf11                                   ; $7bc1: $11 $11 $cf
	rst  $38                                         ; $7bc4: $ff
	ld   de, $af11                                   ; $7bc5: $11 $11 $af
	rst  $38                                         ; $7bc8: $ff
	rst  $38                                         ; $7bc9: $ff
	ld   de, $1a11                                   ; $7bca: $11 $11 $1a
	rst  $38                                         ; $7bcd: $ff
	ld   sp, hl                                      ; $7bce: $f9
	ld   de, rAUD1LEN                                   ; $7bcf: $11 $11 $ff
	rst  $38                                         ; $7bd2: $ff
	pop  af                                          ; $7bd3: $f1
	ld   de, $df11                                   ; $7bd4: $11 $11 $df
	rst  $38                                         ; $7bd7: $ff
	pop  af                                          ; $7bd8: $f1
	ld   de, $ff1a                                   ; $7bd9: $11 $1a $ff
	rst  $38                                         ; $7bdc: $ff
	ld   de, $1f11                                   ; $7bdd: $11 $11 $1f
	rst  $38                                         ; $7be0: $ff
	rst  $38                                         ; $7be1: $ff
	ld   de, $3f11                                   ; $7be2: $11 $11 $3f
	rst  $38                                         ; $7be5: $ff
	pop  af                                          ; $7be6: $f1
	ld   de, rAUD1LOW                                   ; $7be7: $11 $13 $ff
	rst  $38                                         ; $7bea: $ff
	pop  af                                          ; $7beb: $f1
	ld   de, rAUD1LOW                                   ; $7bec: $11 $13 $ff
	rst  $38                                         ; $7bef: $ff
	ld   de, rAUD1ENV                                   ; $7bf0: $11 $12 $ff
	rst  $38                                         ; $7bf3: $ff
	cp   $11                                         ; $7bf4: $fe $11
	dec  h                                           ; $7bf6: $25
	ld   a, a                                        ; $7bf7: $7f
	rst  $38                                         ; $7bf8: $ff
	ld   de, rAUD1LEN                                   ; $7bf9: $11 $11 $ff
	rst  $38                                         ; $7bfc: $ff
	rst  $38                                         ; $7bfd: $ff
	ld   de, $8f19                                   ; $7bfe: $11 $19 $8f
	rst  $38                                         ; $7c01: $ff
	or   c                                           ; $7c02: $b1
	ld   de, $ffcf                                   ; $7c03: $11 $cf $ff
	rst  $38                                         ; $7c06: $ff
	and  c                                           ; $7c07: $a1
	rla                                              ; $7c08: $17
	dec  d                                           ; $7c09: $15
	rst  $38                                         ; $7c0a: $ff
	pop  af                                          ; $7c0b: $f1
	ld   de, $ff1f                                   ; $7c0c: $11 $1f $ff
	rst  $38                                         ; $7c0f: $ff
	db   $f4                                         ; $7c10: $f4
	ld   [de], a                                     ; $7c11: $12
	ld   [hl], l                                     ; $7c12: $75
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c13: $cf
	db   $fc                                         ; $7c14: $fc
	ld   de, $ff1f                                   ; $7c15: $11 $1f $ff
	rst  $38                                         ; $7c18: $ff
	rst  $38                                         ; $7c19: $ff
	ld   de, $cd37                                   ; $7c1a: $11 $37 $cd
	rst  JumpTable                                         ; $7c1d: $df
	ld   de, $ff15                                   ; $7c1e: $11 $15 $ff
	rst  $38                                         ; $7c21: $ff
	rst  $38                                         ; $7c22: $ff
	pop  de                                          ; $7c23: $d1
	ld   [de], a                                     ; $7c24: $12
	xor  a                                           ; $7c25: $af
	ret  z                                           ; $7c26: $c8

	ld   [hl], c                                     ; $7c27: $71
	ld   de, $ffef                                   ; $7c28: $11 $ef $ff
	rst  $38                                         ; $7c2b: $ff
	rst  $30                                         ; $7c2c: $f7
	ld   sp, $f72f                                   ; $7c2d: $31 $2f $f7
	ld   h, c                                        ; $7c30: $61
	ld   de, $ff7f                                   ; $7c31: $11 $7f $ff
	rst  $38                                         ; $7c34: $ff
	db   $fc                                         ; $7c35: $fc
	sub  [hl]                                        ; $7c36: $96
	add  hl, de                                      ; $7c37: $19
	ei                                               ; $7c38: $fb
	ld   h, c                                        ; $7c39: $61
	ld   de, $ff1d                                   ; $7c3a: $11 $1d $ff
	rst  $38                                         ; $7c3d: $ff
	rst  $38                                         ; $7c3e: $ff
	xor  b                                           ; $7c3f: $a8
	inc  [hl]                                        ; $7c40: $34
	db   $db                                         ; $7c41: $db
	ld   d, l                                        ; $7c42: $55
	ld   de, $fe17                                   ; $7c43: $11 $17 $fe
	rst  $38                                         ; $7c46: $ff
	rst  $38                                         ; $7c47: $ff
	ld   sp, hl                                      ; $7c48: $f9
	add  h                                           ; $7c49: $84
	cp   l                                           ; $7c4a: $bd
	ld   h, l                                        ; $7c4b: $65
	ld   d, c                                        ; $7c4c: $51
	ld   de, $ce8e                                   ; $7c4d: $11 $8e $ce
	rst  $38                                         ; $7c50: $ff
	db   $fd                                         ; $7c51: $fd
	sub  a                                           ; $7c52: $97
	adc  l                                           ; $7c53: $8d
	and  h                                           ; $7c54: $a4
	ld   h, l                                        ; $7c55: $65
	ld   de, $aa19                                   ; $7c56: $11 $19 $aa
	cp   a                                           ; $7c59: $bf
	rst  $38                                         ; $7c5a: $ff
	ret                                              ; $7c5b: $c9


	sbc  e                                           ; $7c5c: $9b
	ld   [$816b], a                                  ; $7c5d: $ea $6b $81
	ld   de, $6769                                   ; $7c60: $11 $69 $67
	sbc  l                                           ; $7c63: $9d
	ld   [$ee7b], a                                  ; $7c64: $ea $7b $ee
	db   $eb                                         ; $7c67: $eb
	xor  e                                           ; $7c68: $ab
	ld   d, c                                        ; $7c69: $51
	inc  de                                          ; $7c6a: $13
	cp   c                                           ; $7c6b: $b9
	ld   d, h                                        ; $7c6c: $54
	ld   e, b                                        ; $7c6d: $58
	add  [hl]                                        ; $7c6e: $86
	ld   a, h                                        ; $7c6f: $7c
	sbc  $fe                                         ; $7c70: $de $fe
	cp   b                                           ; $7c72: $b8
	ld   b, c                                        ; $7c73: $41
	dec  [hl]                                        ; $7c74: $35
	cp   h                                           ; $7c75: $bc
	ld   b, c                                        ; $7c76: $41
	inc  d                                           ; $7c77: $14
	ld   [hl], a                                     ; $7c78: $77
	ld   l, e                                        ; $7c79: $6b
	rst  $28                                         ; $7c7a: $ef
	rst  $38                                         ; $7c7b: $ff
	or   a                                           ; $7c7c: $b7
	ld   d, d                                        ; $7c7d: $52
	ld   b, [hl]                                     ; $7c7e: $46
	xor  d                                           ; $7c7f: $aa
	ld   sp, $5723                                   ; $7c80: $31 $23 $57
	ld   a, l                                        ; $7c83: $7d
	rst  $38                                         ; $7c84: $ff
	rst  $38                                         ; $7c85: $ff
	jp   hl                                          ; $7c86: $e9


	ld   h, d                                        ; $7c87: $62
	dec  [hl]                                        ; $7c88: $35
	ld   h, a                                        ; $7c89: $67
	ld   sp, $4724                                   ; $7c8a: $31 $24 $47
	sbc  [hl]                                        ; $7c8d: $9e
	cp   $ef                                         ; $7c8e: $fe $ef
	ld   a, [$1162]                                  ; $7c90: $fa $62 $11
	ld   [hl], $41                                   ; $7c93: $36 $41
	inc  d                                           ; $7c95: $14
	ld   l, d                                        ; $7c96: $6a
	cp   [hl]                                        ; $7c97: $be
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	db   $fc                                         ; $7c9a: $fc
	sub  d                                           ; $7c9b: $92
	ld   de, $2114                                   ; $7c9c: $11 $14 $21
	rla                                              ; $7c9f: $17
	xor  e                                           ; $7ca0: $ab
	rst  $38                                         ; $7ca1: $ff
	rst  $38                                         ; $7ca2: $ff
	rst  $38                                         ; $7ca3: $ff
	ld   a, [$1171]                                  ; $7ca4: $fa $71 $11
	ld   [de], a                                     ; $7ca7: $12
	ld   de, $ee29                                   ; $7ca8: $11 $29 $ee
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	rst  $38                                         ; $7cad: $ff
	ld   hl, sp+$51                                  ; $7cae: $f8 $51
	ld   de, $0113                                   ; $7cb0: $11 $13 $01
	ld   c, l                                        ; $7cb3: $4d
	rst  $38                                         ; $7cb4: $ff
	rst  $38                                         ; $7cb5: $ff
	rst  $38                                         ; $7cb6: $ff
	rst  $38                                         ; $7cb7: $ff
	or   a                                           ; $7cb8: $b7
	ld   d, c                                        ; $7cb9: $51
	ld   de, $1113                                   ; $7cba: $11 $13 $11
	adc  a                                           ; $7cbd: $8f
	rst  $38                                         ; $7cbe: $ff
	rst  $38                                         ; $7cbf: $ff
	rst  $38                                         ; $7cc0: $ff
	rst  $38                                         ; $7cc1: $ff
	and  [hl]                                        ; $7cc2: $a6
	ld   hl, $1211                                   ; $7cc3: $21 $11 $12
	inc  de                                          ; $7cc6: $13
	xor  a                                           ; $7cc7: $af
	rst  $38                                         ; $7cc8: $ff
	rst  $38                                         ; $7cc9: $ff
	rst  $38                                         ; $7cca: $ff
	rst  $38                                         ; $7ccb: $ff
	sub  [hl]                                        ; $7ccc: $96
	ld   de, $1111                                   ; $7ccd: $11 $11 $11
	inc  d                                           ; $7cd0: $14
	xor  a                                           ; $7cd1: $af
	rst  $38                                         ; $7cd2: $ff
	rst  $38                                         ; $7cd3: $ff
	rst  $38                                         ; $7cd4: $ff
	rst  $38                                         ; $7cd5: $ff
	and  l                                           ; $7cd6: $a5
	ld   de, $1111                                   ; $7cd7: $11 $11 $11
	inc  d                                           ; $7cda: $14
	xor  a                                           ; $7cdb: $af
	rst  $38                                         ; $7cdc: $ff
	rst  $38                                         ; $7cdd: $ff
	rst  $38                                         ; $7cde: $ff
	rst  $38                                         ; $7cdf: $ff
	or   l                                           ; $7ce0: $b5
	ld   de, $1111                                   ; $7ce1: $11 $11 $11
	inc  d                                           ; $7ce4: $14
	xor  [hl]                                        ; $7ce5: $ae
	rst  $38                                         ; $7ce6: $ff
	rst  $38                                         ; $7ce7: $ff
	rst  $38                                         ; $7ce8: $ff
	rst  $38                                         ; $7ce9: $ff
	sub  $11                                         ; $7cea: $d6 $11
	ld   de, $1311                                   ; $7cec: $11 $11 $13
	sbc  [hl]                                        ; $7cef: $9e
	rst  $38                                         ; $7cf0: $ff
	rst  $38                                         ; $7cf1: $ff
	rst  $38                                         ; $7cf2: $ff
	rst  $38                                         ; $7cf3: $ff
	rst  $10                                         ; $7cf4: $d7
	ld   hl, $1111                                   ; $7cf5: $21 $11 $11
	ld   de, $ff9d                                   ; $7cf8: $11 $9d $ff
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	rst  $38                                         ; $7cfd: $ff
	rst  $30                                         ; $7cfe: $f7
	ld   sp, $1111                                   ; $7cff: $31 $11 $11
	ld   de, $ff8d                                   ; $7d02: $11 $8d $ff
	rst  $38                                         ; $7d05: $ff
	rst  $38                                         ; $7d06: $ff
	rst  $38                                         ; $7d07: $ff
	rst  $30                                         ; $7d08: $f7
	ld   sp, $1111                                   ; $7d09: $31 $11 $11
	ld   de, $ff7d                                   ; $7d0c: $11 $7d $ff
	rst  $38                                         ; $7d0f: $ff
	rst  $38                                         ; $7d10: $ff
	rst  $38                                         ; $7d11: $ff
	rst  $30                                         ; $7d12: $f7
	ld   b, c                                        ; $7d13: $41
	ld   de, $1111                                   ; $7d14: $11 $11 $11
	ld   a, a                                        ; $7d17: $7f
	rst  $38                                         ; $7d18: $ff
	rst  $38                                         ; $7d19: $ff
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	ld   hl, sp+$41                                  ; $7d1c: $f8 $41
	ld   de, $1111                                   ; $7d1e: $11 $11 $11
	adc  a                                           ; $7d21: $8f
	rst  $38                                         ; $7d22: $ff
	rst  $38                                         ; $7d23: $ff
	rst  $38                                         ; $7d24: $ff
	rst  $38                                         ; $7d25: $ff
	rst  $30                                         ; $7d26: $f7
	ld   sp, $1111                                   ; $7d27: $31 $11 $11
	ld   de, $ff9f                                   ; $7d2a: $11 $9f $ff
	rst  $38                                         ; $7d2d: $ff
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	push af                                          ; $7d30: $f5
	ld   hl, $1111                                   ; $7d31: $21 $11 $11
	ld   de, $ffbf                                   ; $7d34: $11 $bf $ff
	rst  $38                                         ; $7d37: $ff
	rst  $38                                         ; $7d38: $ff
	rst  $38                                         ; $7d39: $ff
	di                                               ; $7d3a: $f3
	ld   de, $1111                                   ; $7d3b: $11 $11 $11
	ld   de, $ffdf                                   ; $7d3e: $11 $df $ff
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	pop  hl                                          ; $7d44: $e1
	ld   de, $1211                                   ; $7d45: $11 $11 $12
	ld   de, $ffff                                   ; $7d48: $11 $ff $ff
	rst  $38                                         ; $7d4b: $ff
	rst  $38                                         ; $7d4c: $ff
	rst  $38                                         ; $7d4d: $ff
	and  c                                           ; $7d4e: $a1
	ld   de, $1311                                   ; $7d4f: $11 $11 $13
	ld   de, $ffff                                   ; $7d52: $11 $ff $ff
	rst  $38                                         ; $7d55: $ff
	db   $fd                                         ; $7d56: $fd
	rst  $38                                         ; $7d57: $ff
	ld   [hl], c                                     ; $7d58: $71
	ld   de, $1211                                   ; $7d59: $11 $11 $12
	inc  de                                          ; $7d5c: $13
	rst  $38                                         ; $7d5d: $ff
	rst  $38                                         ; $7d5e: $ff
	rst  $38                                         ; $7d5f: $ff
	db   $fd                                         ; $7d60: $fd
	rst  $38                                         ; $7d61: $ff
	ld   sp, $1111                                   ; $7d62: $31 $11 $11
	ld   d, c                                        ; $7d65: $51
	rla                                              ; $7d66: $17
	rst  $38                                         ; $7d67: $ff
	rst  $38                                         ; $7d68: $ff
	rst  $38                                         ; $7d69: $ff
	db   $fd                                         ; $7d6a: $fd
	rst  $38                                         ; $7d6b: $ff
	ld   de, $1111                                   ; $7d6c: $11 $11 $11
	add  c                                           ; $7d6f: $81
	inc  e                                           ; $7d70: $1c
	rst  $38                                         ; $7d71: $ff
	rst  $38                                         ; $7d72: $ff
	rst  $38                                         ; $7d73: $ff
	sbc  $fd                                         ; $7d74: $de $fd
	ld   de, $1111                                   ; $7d76: $11 $11 $11
	ld   [hl], c                                     ; $7d79: $71
	rra                                              ; $7d7a: $1f
	rst  $38                                         ; $7d7b: $ff
	rst  $38                                         ; $7d7c: $ff
	rst  $38                                         ; $7d7d: $ff
	xor  a                                           ; $7d7e: $af
	rst  $30                                         ; $7d7f: $f7
	inc  de                                          ; $7d80: $13
	ld   de, $3113                                   ; $7d81: $11 $13 $31
	cpl                                              ; $7d84: $2f
	rst  $38                                         ; $7d85: $ff
	rst  $38                                         ; $7d86: $ff
	rst  $38                                         ; $7d87: $ff
	xor  a                                           ; $7d88: $af
	pop  af                                          ; $7d89: $f1
	dec  d                                           ; $7d8a: $15
	ld   de, $1119                                   ; $7d8b: $11 $19 $11
	adc  a                                           ; $7d8e: $8f
	cp   $ff                                         ; $7d8f: $fe $ff
	db   $fd                                         ; $7d91: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d92: $cf
	pop  af                                          ; $7d93: $f1
	inc  d                                           ; $7d94: $14
	ld   de, $1119                                   ; $7d95: $11 $19 $11
	rst  $38                                         ; $7d98: $ff
	rst  $38                                         ; $7d99: $ff
	rst  $38                                         ; $7d9a: $ff
	ld   a, [$81ff]                                  ; $7d9b: $fa $ff $81
	ld   d, c                                        ; $7d9e: $51
	ld   de, $1125                                   ; $7d9f: $11 $25 $11
	rst  $38                                         ; $7da2: $ff
	rst  JumpTable                                         ; $7da3: $df
	rst  $38                                         ; $7da4: $ff
	ei                                               ; $7da5: $fb
	rst  $38                                         ; $7da6: $ff
	ld   de, $1191                                   ; $7da7: $11 $91 $11
	and  c                                           ; $7daa: $a1
	jr   @+$01                                       ; $7dab: $18 $ff

	xor  a                                           ; $7dad: $af
	rst  $38                                         ; $7dae: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7daf: $cf
	rst  $38                                         ; $7db0: $ff
	ld   de, $1171                                   ; $7db1: $11 $71 $11
	or   c                                           ; $7db4: $b1
	rra                                              ; $7db5: $1f
	rst  $38                                         ; $7db6: $ff
	rst  $28                                         ; $7db7: $ef
	rst  $38                                         ; $7db8: $ff
	xor  a                                           ; $7db9: $af
	or   $18                                         ; $7dba: $f6 $18
	ld   de, $4115                                   ; $7dbc: $11 $15 $41
	rra                                              ; $7dbf: $1f
	ld   hl, sp-$01                                  ; $7dc0: $f8 $ff
	rst  $38                                         ; $7dc2: $ff
	rst  $38                                         ; $7dc3: $ff
	pop  af                                          ; $7dc4: $f1
	dec  e                                           ; $7dc5: $1d
	ld   de, $111c                                   ; $7dc6: $11 $1c $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dc9: $cf
	or   $ff                                         ; $7dca: $f6 $ff
	db   $fc                                         ; $7dcc: $fc
	rst  $38                                         ; $7dcd: $ff
	or   c                                           ; $7dce: $b1
	ld   a, b                                        ; $7dcf: $78
	ld   de, $1119                                   ; $7dd0: $11 $19 $11
	rst  $38                                         ; $7dd3: $ff
	ld   a, [hl]                                     ; $7dd4: $7e
	rst  $38                                         ; $7dd5: $ff
	rst  $38                                         ; $7dd6: $ff
	rst  $38                                         ; $7dd7: $ff
	ld   bc, $11e1                                   ; $7dd8: $01 $e1 $11
	or   c                                           ; $7ddb: $b1
	inc  de                                          ; $7ddc: $13
	rst  $38                                         ; $7ddd: $ff
	rra                                              ; $7dde: $1f
	rst  $38                                         ; $7ddf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7de0: $cf
	ei                                               ; $7de1: $fb
	ld   a, [de]                                     ; $7de2: $1a
	pop  bc                                          ; $7de3: $c1
	ld   de, $1fa1                                   ; $7de4: $11 $a1 $1f
	db   $f4                                         ; $7de7: $f4
	adc  a                                           ; $7de8: $8f
	db   $fc                                         ; $7de9: $fc
	rst  $38                                         ; $7dea: $ff
	pop  af                                          ; $7deb: $f1
	ld   c, a                                        ; $7dec: $4f
	ld   de, $1116                                   ; $7ded: $11 $16 $11
	rra                                              ; $7df0: $1f
	pop  af                                          ; $7df1: $f1
	rst  $38                                         ; $7df2: $ff
	db   $fc                                         ; $7df3: $fc
	rst  $38                                         ; $7df4: $ff
	and  c                                           ; $7df5: $a1
	cp   $11                                         ; $7df6: $fe $11
	ld   d, $11                                      ; $7df8: $16 $11
	rst  $38                                         ; $7dfa: $ff
	ld   d, $ff                                      ; $7dfb: $16 $ff
	sbc  a                                           ; $7dfd: $9f
	rst  $38                                         ; $7dfe: $ff
	ld   l, $f1                                      ; $7dff: $2e $f1
	ld   de, $1111                                   ; $7e01: $11 $11 $11
	db   $fd                                         ; $7e04: $fd
	rra                                              ; $7e05: $1f
	rst  $38                                         ; $7e06: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e07: $cf
	rst  $30                                         ; $7e08: $f7
	xor  a                                           ; $7e09: $af
	or   c                                           ; $7e0a: $b1
	ld   de, $1311                                   ; $7e0b: $11 $11 $13
	pop  af                                          ; $7e0e: $f1
	ld   c, a                                        ; $7e0f: $4f
	db   $fd                                         ; $7e10: $fd
	rst  $38                                         ; $7e11: $ff
	rst  $30                                         ; $7e12: $f7
	rst  $38                                         ; $7e13: $ff
	ld   de, $1111                                   ; $7e14: $11 $11 $11
	inc  d                                           ; $7e17: $14
	pop  bc                                          ; $7e18: $c1
	rst  JumpTable                                         ; $7e19: $df
	rst  $38                                         ; $7e1a: $ff
	rst  $38                                         ; $7e1b: $ff
	rst  $38                                         ; $7e1c: $ff
	cp   $11                                         ; $7e1d: $fe $11
	ld   de, $1111                                   ; $7e1f: $11 $11 $11
	add  c                                           ; $7e22: $81
	rst  JumpTable                                         ; $7e23: $df
	rst  $38                                         ; $7e24: $ff
	rst  $38                                         ; $7e25: $ff
	rst  $38                                         ; $7e26: $ff
	cp   $01                                         ; $7e27: $fe $01
	ld   de, $1111                                   ; $7e29: $11 $11 $11
	ld   d, c                                        ; $7e2c: $51
	cp   a                                           ; $7e2d: $bf
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	rst  $38                                         ; $7e31: $ff
	ld   hl, $1111                                   ; $7e32: $21 $11 $11
	ld   de, $5f42                                   ; $7e35: $11 $42 $5f
	rst  $38                                         ; $7e38: $ff
	rst  $38                                         ; $7e39: $ff
	rst  $38                                         ; $7e3a: $ff
	rst  $38                                         ; $7e3b: $ff
	ld   h, h                                        ; $7e3c: $64
	ld   de, $1111                                   ; $7e3d: $11 $11 $11
	ld   d, $13                                      ; $7e40: $16 $13
	rst  $38                                         ; $7e42: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e43: $cf
	rst  $38                                         ; $7e44: $ff
	rst  $38                                         ; $7e45: $ff
	di                                               ; $7e46: $f3
	ld   [hl], c                                     ; $7e47: $71
	ld   de, $1331                                   ; $7e48: $11 $31 $13
	ld   h, c                                        ; $7e4b: $61
	ld   e, [hl]                                     ; $7e4c: $5e
	or   a                                           ; $7e4d: $b7
	rst  $38                                         ; $7e4e: $ff
	rst  JumpTable                                         ; $7e4f: $df
	rst  $38                                         ; $7e50: $ff
	ld   [hl], a                                     ; $7e51: $77
	and  d                                           ; $7e52: $a2
	add  hl, hl                                      ; $7e53: $29
	ld   [hl], h                                     ; $7e54: $74
	ld   h, l                                        ; $7e55: $65
	ld   h, h                                        ; $7e56: $64
	ld   c, b                                        ; $7e57: $48
	ld   h, h                                        ; $7e58: $64
	adc  c                                           ; $7e59: $89
	sbc  e                                           ; $7e5a: $9b
	cp   d                                           ; $7e5b: $ba
	jp   z, $aa7b                                    ; $7e5c: $ca $7b $aa

	jp   z, Jump_0ee_58b8                            ; $7e5f: $ca $b8 $58

	ld   d, d                                        ; $7e62: $52
	ld   b, h                                        ; $7e63: $44
	inc  hl                                          ; $7e64: $23
	ld   d, l                                        ; $7e65: $55
	ld   a, b                                        ; $7e66: $78
	sbc  e                                           ; $7e67: $9b
	jp   c, $bccf                                    ; $7e68: $da $cf $bc

	db   $eb                                         ; $7e6b: $eb
	xor  b                                           ; $7e6c: $a8
	ld   h, [hl]                                     ; $7e6d: $66
	ld   b, d                                        ; $7e6e: $42
	ld   [hl-], a                                    ; $7e6f: $32
	inc  de                                          ; $7e70: $13
	ld   b, [hl]                                     ; $7e71: $46
	adc  c                                           ; $7e72: $89
	xor  e                                           ; $7e73: $ab
	set  1, a                                        ; $7e74: $cb $cf
	ret  c                                           ; $7e76: $d8

	db   $ed                                         ; $7e77: $ed
	ld   c, d                                        ; $7e78: $4a
	sub  d                                           ; $7e79: $92
	ld   h, h                                        ; $7e7a: $64
	dec  h                                           ; $7e7b: $25
	inc  [hl]                                        ; $7e7c: $34
	ld   h, [hl]                                     ; $7e7d: $66
	ld   l, b                                        ; $7e7e: $68
	xor  c                                           ; $7e7f: $a9
	sbc  h                                           ; $7e80: $9c
	cp   e                                           ; $7e81: $bb
	cp   d                                           ; $7e82: $ba
	xor  e                                           ; $7e83: $ab
	xor  c                                           ; $7e84: $a9
	and  a                                           ; $7e85: $a7
	ld   [hl], a                                     ; $7e86: $77
	ld   h, l                                        ; $7e87: $65
	ld   d, l                                        ; $7e88: $55
	ld   d, l                                        ; $7e89: $55
	ld   h, [hl]                                     ; $7e8a: $66
	ld   [hl], a                                     ; $7e8b: $77
	adc  b                                           ; $7e8c: $88
	sbc  c                                           ; $7e8d: $99
	xor  d                                           ; $7e8e: $aa
	cp   e                                           ; $7e8f: $bb
	cp   e                                           ; $7e90: $bb
	xor  d                                           ; $7e91: $aa
	sbc  b                                           ; $7e92: $98
	ld   [hl], a                                     ; $7e93: $77
	ld   h, l                                        ; $7e94: $65
	ld   d, h                                        ; $7e95: $54
	ld   b, l                                        ; $7e96: $45
	ld   d, l                                        ; $7e97: $55
	ld   a, b                                        ; $7e98: $78
	adc  b                                           ; $7e99: $88
	sbc  d                                           ; $7e9a: $9a
	xor  e                                           ; $7e9b: $ab
	cp   e                                           ; $7e9c: $bb
	cp   d                                           ; $7e9d: $ba
	xor  d                                           ; $7e9e: $aa
	sub  a                                           ; $7e9f: $97
	halt                                             ; $7ea0: $76
	ld   d, l                                        ; $7ea1: $55
	ld   h, l                                        ; $7ea2: $65
	ld   d, [hl]                                     ; $7ea3: $56
	ld   h, a                                        ; $7ea4: $67
	ld   a, b                                        ; $7ea5: $78
	sbc  c                                           ; $7ea6: $99
	sbc  c                                           ; $7ea7: $99
	xor  d                                           ; $7ea8: $aa
	xor  c                                           ; $7ea9: $a9
	xor  c                                           ; $7eaa: $a9
	adc  b                                           ; $7eab: $88
	sbc  b                                           ; $7eac: $98
	ld   [hl], a                                     ; $7ead: $77
	halt                                             ; $7eae: $76
	ld   [hl], a                                     ; $7eaf: $77
	ld   h, a                                        ; $7eb0: $67
	ld   [hl], a                                     ; $7eb1: $77
	ld   [hl], a                                     ; $7eb2: $77
	adc  b                                           ; $7eb3: $88
	sbc  b                                           ; $7eb4: $98
	adc  c                                           ; $7eb5: $89
	sbc  c                                           ; $7eb6: $99
	sbc  d                                           ; $7eb7: $9a
	sbc  b                                           ; $7eb8: $98
	sbc  b                                           ; $7eb9: $98
	add  a                                           ; $7eba: $87
	ld   [hl], a                                     ; $7ebb: $77
	ld   [hl], a                                     ; $7ebc: $77
	ld   [hl], a                                     ; $7ebd: $77
	ld   [hl], a                                     ; $7ebe: $77
	ld   a, b                                        ; $7ebf: $78
	adc  b                                           ; $7ec0: $88
	adc  c                                           ; $7ec1: $89
	adc  c                                           ; $7ec2: $89
	sbc  c                                           ; $7ec3: $99
	sbc  c                                           ; $7ec4: $99
	adc  b                                           ; $7ec5: $88
	adc  b                                           ; $7ec6: $88
	ld   [hl], a                                     ; $7ec7: $77
	ld   [hl], a                                     ; $7ec8: $77
	ld   [hl], a                                     ; $7ec9: $77
	ld   [hl], a                                     ; $7eca: $77
	adc  b                                           ; $7ecb: $88
	adc  c                                           ; $7ecc: $89
	sbc  c                                           ; $7ecd: $99
	adc  b                                           ; $7ece: $88
	adc  c                                           ; $7ecf: $89
	sbc  c                                           ; $7ed0: $99
	adc  b                                           ; $7ed1: $88
	adc  b                                           ; $7ed2: $88
	ld   [hl], a                                     ; $7ed3: $77
	ld   [hl], a                                     ; $7ed4: $77
	ld   [hl], a                                     ; $7ed5: $77
	adc  b                                           ; $7ed6: $88
	adc  b                                           ; $7ed7: $88
	adc  b                                           ; $7ed8: $88
	adc  b                                           ; $7ed9: $88
	sbc  b                                           ; $7eda: $98
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
