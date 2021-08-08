; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d8", ROMX[$4000], BANK[$d8]

	inc  hl                                          ; $4000: $23
	ld   h, e                                        ; $4001: $63
	ld   [hl-], a                                    ; $4002: $32
	dec  d                                           ; $4003: $15
	or   a                                           ; $4004: $b7
	ld   l, $f2                                      ; $4005: $2e $f2
	dec  sp                                          ; $4007: $3b
	db   $eb                                         ; $4008: $eb
	rla                                              ; $4009: $17
	rst  $38                                         ; $400a: $ff
	and  [hl]                                        ; $400b: $a6
	cp   l                                           ; $400c: $bd
	cp   d                                           ; $400d: $ba
	ld   a, d                                        ; $400e: $7a
	jp   hl                                          ; $400f: $e9


	ld   d, e                                        ; $4010: $53
	ld   e, c                                        ; $4011: $59
	ld   d, d                                        ; $4012: $52
	dec  [hl]                                        ; $4013: $35
	ld   b, h                                        ; $4014: $44
	inc  sp                                          ; $4015: $33
	add  a                                           ; $4016: $87
	dec  sp                                          ; $4017: $3b
	and  $59                                         ; $4018: $e6 $59
	ld   l, [hl]                                     ; $401a: $6e
	db   $d3                                         ; $401b: $d3
	cp   h                                           ; $401c: $bc
	db   $fc                                         ; $401d: $fc
	ld   c, l                                        ; $401e: $4d
	cp   h                                           ; $401f: $bc
	ld   h, l                                        ; $4020: $65
	call c, Call_0d8_6484                            ; $4021: $dc $84 $64
	ld   d, l                                        ; $4024: $55
	ld   h, [hl]                                     ; $4025: $66
	inc  h                                           ; $4026: $24
	inc  sp                                          ; $4027: $33
	halt                                             ; $4028: $76
	ld   c, e                                        ; $4029: $4b
	cp   d                                           ; $402a: $ba
	or   l                                           ; $402b: $b5
	ld   e, c                                        ; $402c: $59
	call c, $ee8a                                    ; $402d: $dc $8a $ee
	adc  b                                           ; $4030: $88
	adc  a                                           ; $4031: $8f
	push hl                                          ; $4032: $e5
	adc  c                                           ; $4033: $89
	add  a                                           ; $4034: $87
	ld   h, h                                        ; $4035: $64
	ld   b, l                                        ; $4036: $45
	scf                                              ; $4037: $37
	ld   [hl], c                                     ; $4038: $71
	dec  h                                           ; $4039: $25
	sub  h                                           ; $403a: $94
	ld   e, $e6                                      ; $403b: $1e $e6
	ld   a, b                                        ; $403d: $78
	xor  e                                           ; $403e: $ab
	ld   e, b                                        ; $403f: $58
	rst  $28                                         ; $4040: $ef
	jp   hl                                          ; $4041: $e9


	sbc  c                                           ; $4042: $99
	cp   d                                           ; $4043: $ba
	xor  e                                           ; $4044: $ab
	adc  e                                           ; $4045: $8b
	ld   h, h                                        ; $4046: $64
	ld   d, h                                        ; $4047: $54
	ld   b, [hl]                                     ; $4048: $46
	ld   d, e                                        ; $4049: $53
	ld   b, l                                        ; $404a: $45
	inc  h                                           ; $404b: $24
	and  l                                           ; $404c: $a5
	ld   c, l                                        ; $404d: $4d
	jp   $cb6b                                       ; $404e: $c3 $6b $cb


	adc  b                                           ; $4051: $88
	cp   [hl]                                        ; $4052: $be
	ret  c                                           ; $4053: $d8

	call z, Call_0d8_5bd8                            ; $4054: $cc $d8 $5b
	xor  e                                           ; $4057: $ab
	ld   h, d                                        ; $4058: $62
	ld   [hl], $81                                   ; $4059: $36 $81
	jr   z, jr_0d8_40b0                              ; $405b: $28 $53

	ld   b, a                                        ; $405d: $47
	ld   d, h                                        ; $405e: $54
	call z, $967a                                    ; $405f: $cc $7a $96
	adc  l                                           ; $4062: $8d
	adc  d                                           ; $4063: $8a
	ld   sp, hl                                      ; $4064: $f9
	sbc  d                                           ; $4065: $9a
	call z, $8bba                                    ; $4066: $cc $ba $8b
	ld   [hl], l                                     ; $4069: $75
	ld   h, l                                        ; $406a: $65
	ld   h, e                                        ; $406b: $63
	dec  [hl]                                        ; $406c: $35
	ld   [hl], a                                     ; $406d: $77
	inc  sp                                          ; $406e: $33
	ld   [hl], a                                     ; $406f: $77
	ld   e, c                                        ; $4070: $59
	call nz, $b76e                                   ; $4071: $c4 $6e $b7
	ld   a, [hl+]                                    ; $4074: $2a
	cp   $a7                                         ; $4075: $fe $a7
	rst  $38                                         ; $4077: $ff
	ld   [hl], a                                     ; $4078: $77
	adc  e                                           ; $4079: $8b
	rst  ToBoot                                         ; $407a: $c7
	ld   b, [hl]                                     ; $407b: $46
	ld   b, [hl]                                     ; $407c: $46
	ld   h, e                                        ; $407d: $63
	ld   d, [hl]                                     ; $407e: $56
	ld   b, l                                        ; $407f: $45
	ld   d, [hl]                                     ; $4080: $56
	ld   h, l                                        ; $4081: $65
	xor  b                                           ; $4082: $a8
	sbc  c                                           ; $4083: $99
	adc  d                                           ; $4084: $8a
	adc  b                                           ; $4085: $88
	xor  l                                           ; $4086: $ad
	rst  $28                                         ; $4087: $ef
	xor  b                                           ; $4088: $a8
	cp   c                                           ; $4089: $b9
	sbc  e                                           ; $408a: $9b
	and  a                                           ; $408b: $a7
	and  [hl]                                        ; $408c: $a6
	ld   d, l                                        ; $408d: $55
	ld   b, [hl]                                     ; $408e: $46
	ld   h, h                                        ; $408f: $64
	ld   b, e                                        ; $4090: $43
	dec  [hl]                                        ; $4091: $35
	ld   h, a                                        ; $4092: $67
	add  a                                           ; $4093: $87
	ld   a, e                                        ; $4094: $7b
	add  $89                                         ; $4095: $c6 $89
	cp   e                                           ; $4097: $bb
	adc  d                                           ; $4098: $8a
	rst  JumpTable                                         ; $4099: $df
	ld   [hl], a                                     ; $409a: $77
	jp   c, Jump_0d8_69c7                            ; $409b: $da $c7 $69

	ld   [hl], l                                     ; $409e: $75
	ld   d, l                                        ; $409f: $55
	ld   h, l                                        ; $40a0: $65
	inc  hl                                          ; $40a1: $23
	inc  [hl]                                        ; $40a2: $34
	ld   a, d                                        ; $40a3: $7a
	ld   d, e                                        ; $40a4: $53
	xor  l                                           ; $40a5: $ad
	and  l                                           ; $40a6: $a5
	adc  d                                           ; $40a7: $8a
	ld   l, e                                        ; $40a8: $6b
	sbc  a                                           ; $40a9: $9f
	rst  $20                                         ; $40aa: $e7
	rst  $20                                         ; $40ab: $e7
	cp   c                                           ; $40ac: $b9
	xor  a                                           ; $40ad: $af
	ld   a, b                                        ; $40ae: $78
	scf                                              ; $40af: $37

jr_0d8_40b0:
	ld   d, l                                        ; $40b0: $55
	ld   [hl], d                                     ; $40b1: $72
	ld   h, h                                        ; $40b2: $64
	ld   [hl-], a                                    ; $40b3: $32
	adc  e                                           ; $40b4: $8b
	inc  sp                                          ; $40b5: $33
	adc  h                                           ; $40b6: $8c
	xor  b                                           ; $40b7: $a8
	rst  $10                                         ; $40b8: $d7
	ld   l, c                                        ; $40b9: $69
	ld   a, e                                        ; $40ba: $7b
	db   $db                                         ; $40bb: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40bc: $cf
	ld   a, b                                        ; $40bd: $78
	xor  b                                           ; $40be: $a8
	or   [hl]                                        ; $40bf: $b6
	ld   a, b                                        ; $40c0: $78
	ld   h, l                                        ; $40c1: $65
	ld   b, l                                        ; $40c2: $45
	inc  sp                                          ; $40c3: $33
	inc  sp                                          ; $40c4: $33
	ld   a, b                                        ; $40c5: $78
	ld   e, b                                        ; $40c6: $58
	sub  a                                           ; $40c7: $97
	sbc  e                                           ; $40c8: $9b
	sub  [hl]                                        ; $40c9: $96
	sub  a                                           ; $40ca: $97
	db   $eb                                         ; $40cb: $eb
	ld   a, l                                        ; $40cc: $7d
	cp   h                                           ; $40cd: $bc
	sbc  e                                           ; $40ce: $9b
	jp   c, $6596                                    ; $40cf: $da $96 $65

	ld   b, l                                        ; $40d2: $45
	ld   d, l                                        ; $40d3: $55
	ld   d, [hl]                                     ; $40d4: $56
	inc  hl                                          ; $40d5: $23
	sub  [hl]                                        ; $40d6: $96
	ld   a, c                                        ; $40d7: $79
	ld   a, b                                        ; $40d8: $78
	cp   d                                           ; $40d9: $ba
	ld   e, b                                        ; $40da: $58
	ret                                              ; $40db: $c9


	xor  c                                           ; $40dc: $a9
	call z, $9cc9                                    ; $40dd: $cc $c9 $9c
	xor  d                                           ; $40e0: $aa
	sbc  b                                           ; $40e1: $98
	ld   [hl], l                                     ; $40e2: $75
	ld   d, h                                        ; $40e3: $54
	ld   b, h                                        ; $40e4: $44
	ld   d, e                                        ; $40e5: $53
	dec  h                                           ; $40e6: $25
	ld   a, b                                        ; $40e7: $78
	sbc  b                                           ; $40e8: $98
	ld   a, b                                        ; $40e9: $78
	and  a                                           ; $40ea: $a7
	sbc  e                                           ; $40eb: $9b
	adc  c                                           ; $40ec: $89
	sbc  e                                           ; $40ed: $9b
	add  sp, -$34                                    ; $40ee: $e8 $cc
	xor  e                                           ; $40f0: $ab
	xor  c                                           ; $40f1: $a9
	sbc  b                                           ; $40f2: $98
	ld   d, [hl]                                     ; $40f3: $56
	ld   h, h                                        ; $40f4: $64
	ld   h, h                                        ; $40f5: $64
	ld   d, e                                        ; $40f6: $53
	inc  h                                           ; $40f7: $24
	adc  b                                           ; $40f8: $88
	ld   l, c                                        ; $40f9: $69
	ld   a, c                                        ; $40fa: $79
	xor  c                                           ; $40fb: $a9
	sbc  c                                           ; $40fc: $99
	sub  a                                           ; $40fd: $97
	sbc  e                                           ; $40fe: $9b
	res  7, h                                        ; $40ff: $cb $bc
	cp   e                                           ; $4101: $bb
	sbc  d                                           ; $4102: $9a
	or   a                                           ; $4103: $b7
	ld   d, l                                        ; $4104: $55
	ld   h, l                                        ; $4105: $65
	ld   d, l                                        ; $4106: $55
	ld   b, e                                        ; $4107: $43
	ld   h, $65                                      ; $4108: $26 $65
	ld   a, c                                        ; $410a: $79
	sbc  d                                           ; $410b: $9a
	cp   c                                           ; $410c: $b9
	xor  c                                           ; $410d: $a9
	ld   a, b                                        ; $410e: $78
	xor  d                                           ; $410f: $aa
	cp   e                                           ; $4110: $bb
	jp   z, $aaba                                    ; $4111: $ca $ba $aa

	ld   [hl], a                                     ; $4114: $77
	halt                                             ; $4115: $76
	ld   b, [hl]                                     ; $4116: $46
	ld   h, h                                        ; $4117: $64
	ld   b, e                                        ; $4118: $43
	ld   b, [hl]                                     ; $4119: $46
	ld   h, l                                        ; $411a: $65
	sbc  c                                           ; $411b: $99
	ld   l, d                                        ; $411c: $6a
	cp   d                                           ; $411d: $ba
	sbc  c                                           ; $411e: $99
	sbc  d                                           ; $411f: $9a
	xor  d                                           ; $4120: $aa
	cp   d                                           ; $4121: $ba
	xor  d                                           ; $4122: $aa
	xor  e                                           ; $4123: $ab
	xor  c                                           ; $4124: $a9
	sbc  b                                           ; $4125: $98
	ld   h, [hl]                                     ; $4126: $66
	ld   d, l                                        ; $4127: $55
	ld   d, h                                        ; $4128: $54
	inc  sp                                          ; $4129: $33
	scf                                              ; $412a: $37
	ld   [hl], l                                     ; $412b: $75
	ld   a, c                                        ; $412c: $79
	sbc  c                                           ; $412d: $99
	xor  d                                           ; $412e: $aa
	cp   c                                           ; $412f: $b9
	xor  e                                           ; $4130: $ab
	cp   d                                           ; $4131: $ba
	xor  e                                           ; $4132: $ab
	xor  d                                           ; $4133: $aa
	xor  d                                           ; $4134: $aa
	xor  c                                           ; $4135: $a9
	add  a                                           ; $4136: $87
	halt                                             ; $4137: $76
	ld   d, l                                        ; $4138: $55
	ld   d, e                                        ; $4139: $53
	inc  hl                                          ; $413a: $23
	ld   d, l                                        ; $413b: $55
	ld   d, l                                        ; $413c: $55
	and  a                                           ; $413d: $a7
	ld   a, e                                        ; $413e: $7b
	xor  d                                           ; $413f: $aa
	cp   d                                           ; $4140: $ba
	sbc  e                                           ; $4141: $9b
	sbc  h                                           ; $4142: $9c
	ret                                              ; $4143: $c9


	xor  e                                           ; $4144: $ab
	xor  b                                           ; $4145: $a8
	xor  b                                           ; $4146: $a8
	ld   a, b                                        ; $4147: $78
	ld   h, a                                        ; $4148: $67
	ld   h, l                                        ; $4149: $65
	ld   b, h                                        ; $414a: $44
	ld   [hl-], a                                    ; $414b: $32
	ld   b, [hl]                                     ; $414c: $46
	ld   d, l                                        ; $414d: $55
	adc  b                                           ; $414e: $88
	sbc  d                                           ; $414f: $9a
	sbc  h                                           ; $4150: $9c
	sbc  d                                           ; $4151: $9a
	xor  h                                           ; $4152: $ac
	cp   e                                           ; $4153: $bb
	set  1, c                                        ; $4154: $cb $c9
	cp   c                                           ; $4156: $b9
	sbc  c                                           ; $4157: $99
	ld   [hl], a                                     ; $4158: $77
	ld   h, [hl]                                     ; $4159: $66
	ld   b, l                                        ; $415a: $45
	ld   b, e                                        ; $415b: $43
	ld   b, e                                        ; $415c: $43
	ld   d, l                                        ; $415d: $55
	ld   d, [hl]                                     ; $415e: $56
	adc  c                                           ; $415f: $89
	sbc  d                                           ; $4160: $9a
	sbc  e                                           ; $4161: $9b
	xor  c                                           ; $4162: $a9
	cp   l                                           ; $4163: $bd

Jump_0d8_4164:
	jp   z, $a9bc                                    ; $4164: $ca $bc $a9

	sbc  c                                           ; $4167: $99
	sbc  b                                           ; $4168: $98
	add  a                                           ; $4169: $87
	ld   [hl], l                                     ; $416a: $75
	ld   d, l                                        ; $416b: $55
	ld   b, h                                        ; $416c: $44
	ld   b, h                                        ; $416d: $44
	ld   d, l                                        ; $416e: $55
	ld   c, b                                        ; $416f: $48
	sub  [hl]                                        ; $4170: $96
	sbc  d                                           ; $4171: $9a
	adc  d                                           ; $4172: $8a
	jp   z, $adcc                                    ; $4173: $ca $cc $ad

	cp   d                                           ; $4176: $ba
	cp   e                                           ; $4177: $bb
	sbc  d                                           ; $4178: $9a
	and  a                                           ; $4179: $a7
	add  a                                           ; $417a: $87
	ld   h, [hl]                                     ; $417b: $66
	ld   b, [hl]                                     ; $417c: $46
	ld   b, h                                        ; $417d: $44
	inc  [hl]                                        ; $417e: $34
	ld   d, h                                        ; $417f: $54
	ld   d, [hl]                                     ; $4180: $56
	sub  a                                           ; $4181: $97
	ld   a, d                                        ; $4182: $7a
	cp   c                                           ; $4183: $b9
	sbc  h                                           ; $4184: $9c
	cp   h                                           ; $4185: $bc
	cp   e                                           ; $4186: $bb
	jp   c, $a99b                                    ; $4187: $da $9b $a9

	adc  c                                           ; $418a: $89
	ld   [hl], a                                     ; $418b: $77
	ld   h, [hl]                                     ; $418c: $66
	ld   d, l                                        ; $418d: $55
	ld   b, e                                        ; $418e: $43
	ld   b, e                                        ; $418f: $43
	ld   d, l                                        ; $4190: $55
	ld   b, a                                        ; $4191: $47
	add  a                                           ; $4192: $87
	adc  d                                           ; $4193: $8a
	xor  d                                           ; $4194: $aa
	cp   d                                           ; $4195: $ba
	cp   h                                           ; $4196: $bc
	cp   h                                           ; $4197: $bc
	call z, $a9ab                                    ; $4198: $cc $ab $a9
	sbc  b                                           ; $419b: $98
	ld   [hl], a                                     ; $419c: $77
	ld   [hl], l                                     ; $419d: $75
	ld   h, l                                        ; $419e: $65
	ld   b, h                                        ; $419f: $44
	inc  [hl]                                        ; $41a0: $34
	ld   d, l                                        ; $41a1: $55
	ld   b, a                                        ; $41a2: $47
	ld   h, a                                        ; $41a3: $67
	sbc  b                                           ; $41a4: $98
	xor  d                                           ; $41a5: $aa
	cp   d                                           ; $41a6: $ba
	call $bcbc                                       ; $41a7: $cd $bc $bc
	cp   e                                           ; $41aa: $bb
	xor  d                                           ; $41ab: $aa
	sbc  b                                           ; $41ac: $98
	ld   [hl], a                                     ; $41ad: $77
	ld   [hl], l                                     ; $41ae: $75
	ld   d, l                                        ; $41af: $55
	ld   b, h                                        ; $41b0: $44
	inc  [hl]                                        ; $41b1: $34
	ld   d, h                                        ; $41b2: $54
	ld   b, a                                        ; $41b3: $47
	halt                                             ; $41b4: $76
	sbc  d                                           ; $41b5: $9a
	adc  c                                           ; $41b6: $89
	cp   e                                           ; $41b7: $bb
	cp   e                                           ; $41b8: $bb
	db   $db                                         ; $41b9: $db
	call $aabb                                       ; $41ba: $cd $bb $aa
	sbc  b                                           ; $41bd: $98
	ld   [hl], a                                     ; $41be: $77
	ld   [hl], l                                     ; $41bf: $75
	ld   d, l                                        ; $41c0: $55
	ld   b, e                                        ; $41c1: $43
	inc  sp                                          ; $41c2: $33
	ld   b, h                                        ; $41c3: $44
	ld   b, [hl]                                     ; $41c4: $46
	ld   h, a                                        ; $41c5: $67
	ld   a, c                                        ; $41c6: $79
	sbc  b                                           ; $41c7: $98
	jp   z, $dbbc                                    ; $41c8: $ca $bc $db

	call z, $aabb                                    ; $41cb: $cc $bb $aa
	xor  d                                           ; $41ce: $aa
	add  a                                           ; $41cf: $87
	ld   [hl], l                                     ; $41d0: $75
	ld   h, l                                        ; $41d1: $65
	ld   d, h                                        ; $41d2: $54
	inc  sp                                          ; $41d3: $33
	inc  [hl]                                        ; $41d4: $34
	dec  [hl]                                        ; $41d5: $35
	ld   h, [hl]                                     ; $41d6: $66
	ld   [hl], a                                     ; $41d7: $77
	sbc  d                                           ; $41d8: $9a
	sbc  d                                           ; $41d9: $9a
	cp   e                                           ; $41da: $bb
	adc  $bc                                         ; $41db: $ce $bc
	call c, $a9ba                                    ; $41dd: $dc $ba $a9
	sbc  b                                           ; $41e0: $98
	ld   [hl], a                                     ; $41e1: $77
	ld   d, l                                        ; $41e2: $55
	ld   d, h                                        ; $41e3: $54
	inc  sp                                          ; $41e4: $33
	inc  sp                                          ; $41e5: $33
	ld   d, e                                        ; $41e6: $53
	ld   d, [hl]                                     ; $41e7: $56
	ld   h, a                                        ; $41e8: $67
	adc  b                                           ; $41e9: $88
	xor  d                                           ; $41ea: $aa
	xor  h                                           ; $41eb: $ac
	call z, $cccd                                    ; $41ec: $cc $cd $cc
	cp   d                                           ; $41ef: $ba
	xor  c                                           ; $41f0: $a9
	sbc  b                                           ; $41f1: $98
	add  a                                           ; $41f2: $87
	ld   h, l                                        ; $41f3: $65
	ld   b, h                                        ; $41f4: $44
	inc  sp                                          ; $41f5: $33
	inc  hl                                          ; $41f6: $23
	ld   b, e                                        ; $41f7: $43
	ld   b, [hl]                                     ; $41f8: $46
	ld   d, [hl]                                     ; $41f9: $56
	ld   a, b                                        ; $41fa: $78
	sbc  c                                           ; $41fb: $99
	xor  d                                           ; $41fc: $aa
	call c, $dedd                                    ; $41fd: $dc $dd $de
	call z, $a9bb                                    ; $4200: $cc $bb $a9
	sub  a                                           ; $4203: $97
	ld   h, [hl]                                     ; $4204: $66
	ld   d, h                                        ; $4205: $54
	ld   b, e                                        ; $4206: $43
	ld   [hl-], a                                    ; $4207: $32
	inc  [hl]                                        ; $4208: $34
	inc  [hl]                                        ; $4209: $34
	ld   h, [hl]                                     ; $420a: $66
	ld   d, a                                        ; $420b: $57
	sbc  b                                           ; $420c: $98
	xor  d                                           ; $420d: $aa
	set  3, [hl]                                     ; $420e: $cb $de
	db   $dd                                         ; $4210: $dd
	call $abcb                                       ; $4211: $cd $cb $ab
	sub  a                                           ; $4214: $97
	halt                                             ; $4215: $76
	ld   d, h                                        ; $4216: $54
	ld   d, e                                        ; $4217: $53
	inc  hl                                          ; $4218: $23
	inc  hl                                          ; $4219: $23
	inc  sp                                          ; $421a: $33
	ld   d, l                                        ; $421b: $55
	ld   d, [hl]                                     ; $421c: $56
	ld   a, b                                        ; $421d: $78
	sbc  d                                           ; $421e: $9a
	call z, $dedd                                    ; $421f: $cc $dd $de
	db   $ed                                         ; $4222: $ed
	db   $dd                                         ; $4223: $dd
	cp   e                                           ; $4224: $bb
	xor  b                                           ; $4225: $a8
	ld   [hl], a                                     ; $4226: $77
	ld   h, l                                        ; $4227: $65
	ld   b, h                                        ; $4228: $44
	inc  sp                                          ; $4229: $33
	ld   [hl+], a                                    ; $422a: $22
	inc  sp                                          ; $422b: $33
	dec  [hl]                                        ; $422c: $35
	ld   d, l                                        ; $422d: $55
	ld   h, a                                        ; $422e: $67
	sbc  d                                           ; $422f: $9a
	xor  e                                           ; $4230: $ab
	call z, $eedf                                    ; $4231: $cc $df $ee
	db   $ed                                         ; $4234: $ed
	cp   h                                           ; $4235: $bc
	xor  c                                           ; $4236: $a9
	adc  b                                           ; $4237: $88
	ld   [hl], l                                     ; $4238: $75
	ld   d, h                                        ; $4239: $54
	ld   [hl-], a                                    ; $423a: $32
	ld   hl, $2323                                   ; $423b: $21 $23 $23
	ld   d, h                                        ; $423e: $54
	ld   d, [hl]                                     ; $423f: $56
	adc  b                                           ; $4240: $88
	xor  e                                           ; $4241: $ab
	db   $dd                                         ; $4242: $dd
	rst  JumpTable                                         ; $4243: $df
	rst  $28                                         ; $4244: $ef
	db   $ed                                         ; $4245: $ed
	db   $eb                                         ; $4246: $eb
	res  3, b                                        ; $4247: $cb $98
	halt                                             ; $4249: $76
	ld   d, h                                        ; $424a: $54
	inc  sp                                          ; $424b: $33
	ld   hl, $2212                                   ; $424c: $21 $12 $22
	ld   b, l                                        ; $424f: $45
	ld   d, l                                        ; $4250: $55
	ld   a, b                                        ; $4251: $78
	adc  d                                           ; $4252: $8a
	call z, $efde                                    ; $4253: $cc $de $ef
	rst  $28                                         ; $4256: $ef
	db   $dd                                         ; $4257: $dd
	db   $db                                         ; $4258: $db
	cp   d                                           ; $4259: $ba
	add  a                                           ; $425a: $87
	ld   h, l                                        ; $425b: $65
	ld   b, h                                        ; $425c: $44
	ld   [hl+], a                                    ; $425d: $22
	ld   hl, $2322                                   ; $425e: $21 $22 $23
	ld   d, h                                        ; $4261: $54
	ld   d, a                                        ; $4262: $57
	ld   a, b                                        ; $4263: $78
	xor  h                                           ; $4264: $ac
	adc  $fe                                         ; $4265: $ce $fe
	rst  $28                                         ; $4267: $ef
	db   $fd                                         ; $4268: $fd
	db   $ed                                         ; $4269: $ed
	cp   e                                           ; $426a: $bb
	xor  b                                           ; $426b: $a8
	halt                                             ; $426c: $76
	ld   b, h                                        ; $426d: $44
	ld   [hl-], a                                    ; $426e: $32
	ld   de, $2111                                   ; $426f: $11 $11 $21
	inc  [hl]                                        ; $4272: $34
	ld   b, l                                        ; $4273: $45
	ld   l, c                                        ; $4274: $69
	sbc  d                                           ; $4275: $9a
	call $ffee                                       ; $4276: $cd $ee $ff
	rst  $38                                         ; $4279: $ff
	db   $ed                                         ; $427a: $ed
	call c, $87a9                                    ; $427b: $dc $a9 $87
	ld   h, l                                        ; $427e: $65
	ld   b, e                                        ; $427f: $43
	ld   [hl+], a                                    ; $4280: $22
	ld   de, $2312                                   ; $4281: $11 $12 $23
	ld   b, l                                        ; $4284: $45
	ld   d, [hl]                                     ; $4285: $56
	ld   a, c                                        ; $4286: $79
	xor  e                                           ; $4287: $ab
	db   $dd                                         ; $4288: $dd
	rst  $28                                         ; $4289: $ef
	rst  $38                                         ; $428a: $ff
	cp   $ed                                         ; $428b: $fe $ed
	res  3, c                                        ; $428d: $cb $99
	halt                                             ; $428f: $76
	ld   h, l                                        ; $4290: $65
	ld   b, e                                        ; $4291: $43
	ld   [hl-], a                                    ; $4292: $32
	ld   [hl+], a                                    ; $4293: $22
	inc  hl                                          ; $4294: $23
	inc  sp                                          ; $4295: $33
	ld   b, l                                        ; $4296: $45
	ld   d, [hl]                                     ; $4297: $56
	ld   a, b                                        ; $4298: $78
	xor  e                                           ; $4299: $ab
	cp   l                                           ; $429a: $bd
	sbc  $ee                                         ; $429b: $de $ee
	xor  $dc                                         ; $429d: $ee $dc
	cp   e                                           ; $429f: $bb
	sbc  b                                           ; $42a0: $98
	add  a                                           ; $42a1: $87
	halt                                             ; $42a2: $76
	ld   h, l                                        ; $42a3: $65
	ld   b, h                                        ; $42a4: $44
	inc  sp                                          ; $42a5: $33
	inc  sp                                          ; $42a6: $33
	inc  sp                                          ; $42a7: $33
	inc  [hl]                                        ; $42a8: $34
	ld   b, l                                        ; $42a9: $45
	ld   h, a                                        ; $42aa: $67
	sbc  d                                           ; $42ab: $9a
	xor  h                                           ; $42ac: $ac
	call $dddd                                       ; $42ad: $cd $dd $dd
	db   $dd                                         ; $42b0: $dd
	res  7, d                                        ; $42b1: $cb $ba
	xor  b                                           ; $42b3: $a8
	sbc  b                                           ; $42b4: $98
	halt                                             ; $42b5: $76
	ld   h, l                                        ; $42b6: $65
	ld   b, e                                        ; $42b7: $43

Call_0d8_42b8:
	ld   [hl-], a                                    ; $42b8: $32
	inc  sp                                          ; $42b9: $33
	inc  sp                                          ; $42ba: $33
	inc  [hl]                                        ; $42bb: $34
	ld   b, l                                        ; $42bc: $45
	ld   l, b                                        ; $42bd: $68
	sbc  d                                           ; $42be: $9a
	call $dede                                       ; $42bf: $cd $de $de
	db   $ed                                         ; $42c2: $ed
	db   $dd                                         ; $42c3: $dd
	call z, $a9aa                                    ; $42c4: $cc $aa $a9
	sub  a                                           ; $42c7: $97
	halt                                             ; $42c8: $76
	ld   d, h                                        ; $42c9: $54
	inc  sp                                          ; $42ca: $33
	ld   [hl+], a                                    ; $42cb: $22
	ld   [hl+], a                                    ; $42cc: $22
	inc  hl                                          ; $42cd: $23
	inc  [hl]                                        ; $42ce: $34
	ld   b, [hl]                                     ; $42cf: $46
	ld   a, b                                        ; $42d0: $78
	xor  d                                           ; $42d1: $aa
	cp   l                                           ; $42d2: $bd
	db   $dd                                         ; $42d3: $dd
	xor  $de                                         ; $42d4: $ee $de
	call c, $bacb                                    ; $42d6: $dc $cb $ba
	sbc  c                                           ; $42d9: $99
	add  a                                           ; $42da: $87
	ld   h, [hl]                                     ; $42db: $66
	ld   d, h                                        ; $42dc: $54
	ld   [hl-], a                                    ; $42dd: $32
	ld   [hl+], a                                    ; $42de: $22
	ld   [hl+], a                                    ; $42df: $22
	ld   [hl+], a                                    ; $42e0: $22
	inc  sp                                          ; $42e1: $33
	ld   b, l                                        ; $42e2: $45
	ld   a, b                                        ; $42e3: $78
	sbc  e                                           ; $42e4: $9b
	call z, $eeee                                    ; $42e5: $cc $ee $ee
	xor  $ed                                         ; $42e8: $ee $ed
	call z, $a9bb                                    ; $42ea: $cc $bb $a9
	add  a                                           ; $42ed: $87
	ld   h, l                                        ; $42ee: $65
	ld   b, h                                        ; $42ef: $44
	ld   [hl-], a                                    ; $42f0: $32
	ld   [hl+], a                                    ; $42f1: $22
	ld   [hl+], a                                    ; $42f2: $22
	ld   [hl+], a                                    ; $42f3: $22
	inc  sp                                          ; $42f4: $33
	ld   b, l                                        ; $42f5: $45
	ld   h, a                                        ; $42f6: $67
	sbc  e                                           ; $42f7: $9b
	cp   h                                           ; $42f8: $bc
	sbc  $ff                                         ; $42f9: $de $ff
	rst  $28                                         ; $42fb: $ef
	db   $ed                                         ; $42fc: $ed
	db   $dd                                         ; $42fd: $dd
	cp   e                                           ; $42fe: $bb
	cp   c                                           ; $42ff: $b9
	add  a                                           ; $4300: $87
	ld   h, [hl]                                     ; $4301: $66
	ld   d, h                                        ; $4302: $54
	inc  sp                                          ; $4303: $33
	ld   [hl+], a                                    ; $4304: $22
	ld   [hl+], a                                    ; $4305: $22
	ld   [hl+], a                                    ; $4306: $22
	inc  hl                                          ; $4307: $23
	inc  [hl]                                        ; $4308: $34
	ld   d, a                                        ; $4309: $57
	adc  c                                           ; $430a: $89
	cp   e                                           ; $430b: $bb
	adc  $ef                                         ; $430c: $ce $ef
	xor  $fe                                         ; $430e: $ee $fe
	db   $dd                                         ; $4310: $dd
	call c, $a9ba                                    ; $4311: $dc $ba $a9
	halt                                             ; $4314: $76
	ld   d, l                                        ; $4315: $55
	ld   b, e                                        ; $4316: $43
	ld   [hl+], a                                    ; $4317: $22
	ld   [hl+], a                                    ; $4318: $22
	ld   [hl+], a                                    ; $4319: $22
	ld   [hl+], a                                    ; $431a: $22
	inc  hl                                          ; $431b: $23
	ld   b, l                                        ; $431c: $45
	ld   l, b                                        ; $431d: $68
	sbc  d                                           ; $431e: $9a
	call $eeee                                       ; $431f: $cd $ee $ee
	xor  $ee                                         ; $4322: $ee $ee
	db   $ec                                         ; $4324: $ec
	res  7, d                                        ; $4325: $cb $ba
	adc  b                                           ; $4327: $88
	halt                                             ; $4328: $76
	ld   d, h                                        ; $4329: $54
	inc  sp                                          ; $432a: $33
	ld   [hl+], a                                    ; $432b: $22
	ld   [hl+], a                                    ; $432c: $22
	ld   [hl+], a                                    ; $432d: $22
	ld   [hl+], a                                    ; $432e: $22
	inc  sp                                          ; $432f: $33
	ld   d, [hl]                                     ; $4330: $56
	ld   a, c                                        ; $4331: $79
	sbc  e                                           ; $4332: $9b
	call $efef                                       ; $4333: $cd $ef $ef
	cp   $ed                                         ; $4336: $fe $ed
	db   $dd                                         ; $4338: $dd
	cp   e                                           ; $4339: $bb
	xor  c                                           ; $433a: $a9
	add  a                                           ; $433b: $87
	ld   h, l                                        ; $433c: $65
	ld   d, h                                        ; $433d: $54
	ld   [hl-], a                                    ; $433e: $32
	ld   [hl+], a                                    ; $433f: $22
	ld   hl, $2211                                   ; $4340: $21 $11 $22
	inc  h                                           ; $4343: $24
	ld   d, [hl]                                     ; $4344: $56
	ld   a, c                                        ; $4345: $79
	cp   h                                           ; $4346: $bc
	call $fffe                                       ; $4347: $cd $fe $ff
	rst  $38                                         ; $434a: $ff
	xor  $dd                                         ; $434b: $ee $dd
	res  5, c                                        ; $434d: $cb $a9
	add  a                                           ; $434f: $87
	ld   h, l                                        ; $4350: $65
	ld   b, e                                        ; $4351: $43
	ld   [hl-], a                                    ; $4352: $32
	ld   de, $1111                                   ; $4353: $11 $11 $11
	ld   de, $5624                                   ; $4356: $11 $24 $56
	adc  d                                           ; $4359: $8a
	xor  h                                           ; $435a: $ac
	rst  $28                                         ; $435b: $ef
	rst  $38                                         ; $435c: $ff
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	cp   $dc                                         ; $435f: $fe $dc
	cp   e                                           ; $4361: $bb
	xor  b                                           ; $4362: $a8
	halt                                             ; $4363: $76
	ld   d, h                                        ; $4364: $54
	inc  sp                                          ; $4365: $33
	ld   hl, $1111                                   ; $4366: $21 $11 $11
	ld   de, $2411                                   ; $4369: $11 $11 $24
	ld   d, a                                        ; $436c: $57
	sbc  d                                           ; $436d: $9a
	call $ffef                                       ; $436e: $cd $ef $ff
	rst  $38                                         ; $4371: $ff
	rst  $38                                         ; $4372: $ff
	rst  $38                                         ; $4373: $ff
	db   $ec                                         ; $4374: $ec
	res  3, c                                        ; $4375: $cb $99
	halt                                             ; $4377: $76
	ld   d, h                                        ; $4378: $54
	ld   [hl-], a                                    ; $4379: $32
	ld   de, $1111                                   ; $437a: $11 $11 $11
	ld   de, $2411                                   ; $437d: $11 $11 $24
	ld   d, a                                        ; $4380: $57
	sbc  d                                           ; $4381: $9a
	cp   [hl]                                        ; $4382: $be
	rst  $28                                         ; $4383: $ef
	rst  $38                                         ; $4384: $ff
	rst  $38                                         ; $4385: $ff
	rst  $38                                         ; $4386: $ff
	cp   $ec                                         ; $4387: $fe $ec
	res  3, c                                        ; $4389: $cb $99
	halt                                             ; $438b: $76
	ld   d, h                                        ; $438c: $54
	ld   [hl-], a                                    ; $438d: $32
	ld   de, $1111                                   ; $438e: $11 $11 $11
	ld   de, $2411                                   ; $4391: $11 $11 $24
	ld   d, a                                        ; $4394: $57
	sbc  e                                           ; $4395: $9b
	call $ffff                                       ; $4396: $cd $ff $ff
	rst  $38                                         ; $4399: $ff
	rst  $38                                         ; $439a: $ff
	rst  $38                                         ; $439b: $ff
	db   $ec                                         ; $439c: $ec
	res  3, c                                        ; $439d: $cb $99
	halt                                             ; $439f: $76
	ld   d, h                                        ; $43a0: $54
	ld   [hl+], a                                    ; $43a1: $22
	ld   de, $1111                                   ; $43a2: $11 $11 $11
	ld   de, $2311                                   ; $43a5: $11 $11 $23
	ld   d, a                                        ; $43a8: $57
	sbc  e                                           ; $43a9: $9b
	call $ffff                                       ; $43aa: $cd $ff $ff
	rst  $38                                         ; $43ad: $ff
	rst  $38                                         ; $43ae: $ff
	rst  $38                                         ; $43af: $ff
	db   $ed                                         ; $43b0: $ed
	res  5, b                                        ; $43b1: $cb $a8
	halt                                             ; $43b3: $76
	ld   d, h                                        ; $43b4: $54
	ld   [hl-], a                                    ; $43b5: $32
	ld   de, $1111                                   ; $43b6: $11 $11 $11
	ld   de, $1311                                   ; $43b9: $11 $11 $13
	ld   b, [hl]                                     ; $43bc: $46
	sbc  d                                           ; $43bd: $9a
	call $ffef                                       ; $43be: $cd $ef $ff
	rst  $38                                         ; $43c1: $ff
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	xor  $cb                                         ; $43c4: $ee $cb
	cp   c                                           ; $43c6: $b9
	add  [hl]                                        ; $43c7: $86
	ld   d, h                                        ; $43c8: $54
	ld   [hl-], a                                    ; $43c9: $32
	ld   de, $1111                                   ; $43ca: $11 $11 $11
	ld   de, $1211                                   ; $43cd: $11 $11 $12
	ld   b, l                                        ; $43d0: $45
	ld   a, d                                        ; $43d1: $7a
	xor  h                                           ; $43d2: $ac
	rst  $28                                         ; $43d3: $ef
	rst  $38                                         ; $43d4: $ff
	rst  $38                                         ; $43d5: $ff
	rst  $38                                         ; $43d6: $ff
	rst  $38                                         ; $43d7: $ff
	cp   $dd                                         ; $43d8: $fe $dd
	jp   z, Jump_0d8_6587                            ; $43da: $ca $87 $65

	ld   b, e                                        ; $43dd: $43
	ld   hl, $1111                                   ; $43de: $21 $11 $11
	ld   de, $1111                                   ; $43e1: $11 $11 $11
	dec  [hl]                                        ; $43e4: $35
	ld   l, c                                        ; $43e5: $69
	xor  h                                           ; $43e6: $ac
	xor  $ff                                         ; $43e7: $ee $ff
	rst  $38                                         ; $43e9: $ff
	rst  $38                                         ; $43ea: $ff
	rst  $38                                         ; $43eb: $ff
	cp   $de                                         ; $43ec: $fe $de
	res  5, c                                        ; $43ee: $cb $a9
	ld   h, l                                        ; $43f0: $65
	ld   b, e                                        ; $43f1: $43
	ld   hl, $1111                                   ; $43f2: $21 $11 $11
	ld   de, $3312                                   ; $43f5: $11 $12 $33
	ld   b, [hl]                                     ; $43f8: $46
	adc  e                                           ; $43f9: $8b
	adc  $ff                                         ; $43fa: $ce $ff
	rst  $38                                         ; $43fc: $ff
	cp   $ed                                         ; $43fd: $fe $ed
	db   $ed                                         ; $43ff: $ed
	res  5, d                                        ; $4400: $cb $aa
	xor  d                                           ; $4402: $aa
	sbc  c                                           ; $4403: $99
	add  [hl]                                        ; $4404: $86
	ld   h, l                                        ; $4405: $65
	ld   b, e                                        ; $4406: $43
	ld   de, $1111                                   ; $4407: $11 $11 $11
	ld   [de], a                                     ; $440a: $12
	inc  [hl]                                        ; $440b: $34
	ld   d, [hl]                                     ; $440c: $56
	sbc  d                                           ; $440d: $9a
	adc  $ff                                         ; $440e: $ce $ff
	rst  $38                                         ; $4410: $ff
	rst  $38                                         ; $4411: $ff
	db   $ed                                         ; $4412: $ed
	res  7, d                                        ; $4413: $cb $ba
	sbc  c                                           ; $4415: $99
	sbc  c                                           ; $4416: $99
	sbc  c                                           ; $4417: $99
	add  a                                           ; $4418: $87
	ld   h, l                                        ; $4419: $65
	ld   [hl-], a                                    ; $441a: $32
	ld   hl, $1111                                   ; $441b: $21 $11 $11
	ld   [de], a                                     ; $441e: $12
	ld   b, [hl]                                     ; $441f: $46
	ld   h, a                                        ; $4420: $67
	sbc  d                                           ; $4421: $9a
	cp   l                                           ; $4422: $bd
	rst  $28                                         ; $4423: $ef
	rst  $38                                         ; $4424: $ff
	rst  $38                                         ; $4425: $ff
	db   $ec                                         ; $4426: $ec
	jp   z, $88aa                                    ; $4427: $ca $aa $88

	adc  c                                           ; $442a: $89
	sbc  c                                           ; $442b: $99
	add  a                                           ; $442c: $87
	ld   h, h                                        ; $442d: $64
	ld   [hl-], a                                    ; $442e: $32
	ld   de, $1111                                   ; $442f: $11 $11 $11
	inc  d                                           ; $4432: $14
	ld   d, a                                        ; $4433: $57
	adc  b                                           ; $4434: $88
	cp   e                                           ; $4435: $bb
	db   $dd                                         ; $4436: $dd
	rst  $38                                         ; $4437: $ff
	rst  $38                                         ; $4438: $ff
	cp   $ec                                         ; $4439: $fe $ec
	xor  c                                           ; $443b: $a9
	sbc  b                                           ; $443c: $98
	add  a                                           ; $443d: $87
	ld   a, b                                        ; $443e: $78
	adc  b                                           ; $443f: $88
	halt                                             ; $4440: $76
	ld   b, e                                        ; $4441: $43
	ld   [hl+], a                                    ; $4442: $22
	ld   bc, $1111                                   ; $4443: $01 $11 $11
	ld   b, a                                        ; $4446: $47
	adc  d                                           ; $4447: $8a
	sbc  c                                           ; $4448: $99
	cp   h                                           ; $4449: $bc
	sbc  $ff                                         ; $444a: $de $ff
	rst  $38                                         ; $444c: $ff
	db   $fd                                         ; $444d: $fd
	db   $db                                         ; $444e: $db
	sbc  c                                           ; $444f: $99
	add  a                                           ; $4450: $87
	ld   [hl], a                                     ; $4451: $77
	ld   [hl], a                                     ; $4452: $77
	add  a                                           ; $4453: $87
	ld   h, h                                        ; $4454: $64
	ld   [hl-], a                                    ; $4455: $32
	ld   hl, $1111                                   ; $4456: $21 $11 $11
	inc  d                                           ; $4459: $14
	adc  d                                           ; $445a: $8a
	cp   e                                           ; $445b: $bb
	cp   h                                           ; $445c: $bc
	call $ffee                                       ; $445d: $cd $ee $ff
	cp   $dd                                         ; $4460: $fe $dd
	xor  d                                           ; $4462: $aa
	add  a                                           ; $4463: $87
	ld   [hl], a                                     ; $4464: $77
	ld   [hl], a                                     ; $4465: $77
	adc  b                                           ; $4466: $88
	halt                                             ; $4467: $76
	ld   b, e                                        ; $4468: $43
	ld   hl, $1111                                   ; $4469: $21 $11 $11
	ld   [de], a                                     ; $446c: $12
	ld   e, b                                        ; $446d: $58
	sbc  e                                           ; $446e: $9b
	set  1, h                                        ; $446f: $cb $cc
	rst  JumpTable                                         ; $4471: $df
	xor  $ff                                         ; $4472: $ee $ff
	db   $fd                                         ; $4474: $fd

Jump_0d8_4475:
	jp   z, Jump_0d8_77a9                            ; $4475: $ca $a9 $77

	halt                                             ; $4478: $76
	ld   [hl], a                                     ; $4479: $77
	ld   h, [hl]                                     ; $447a: $66
	ld   d, h                                        ; $447b: $54
	inc  sp                                          ; $447c: $33
	ld   de, $1111                                   ; $447d: $11 $11 $11
	scf                                              ; $4480: $37
	xor  d                                           ; $4481: $aa
	set  1, l                                        ; $4482: $cb $cd
	db   $dd                                         ; $4484: $dd
	xor  $ff                                         ; $4485: $ee $ff
	cp   $ec                                         ; $4487: $fe $ec
	sbc  b                                           ; $4489: $98
	add  a                                           ; $448a: $87
	ld   [hl], a                                     ; $448b: $77
	ld   [hl], a                                     ; $448c: $77
	halt                                             ; $448d: $76
	ld   d, l                                        ; $448e: $55
	ld   [hl-], a                                    ; $448f: $32
	ld   hl, $1111                                   ; $4490: $21 $11 $11
	ld   h, $9a                                      ; $4493: $26 $9a
	cp   h                                           ; $4495: $bc
	cp   l                                           ; $4496: $bd
	sbc  $ee                                         ; $4497: $de $ee
	xor  $ff                                         ; $4499: $ee $ff
	xor  $b9                                         ; $449b: $ee $b9
	add  a                                           ; $449d: $87
	ld   [hl], a                                     ; $449e: $77
	ld   [hl], a                                     ; $449f: $77
	ld   [hl], a                                     ; $44a0: $77
	ld   h, l                                        ; $44a1: $65
	ld   b, e                                        ; $44a2: $43
	ld   sp, $1111                                   ; $44a3: $31 $11 $11
	inc  d                                           ; $44a6: $14
	adc  d                                           ; $44a7: $8a
	cp   h                                           ; $44a8: $bc
	set  3, [hl]                                     ; $44a9: $cb $de
	sbc  $dd                                         ; $44ab: $de $dd
	rst  $28                                         ; $44ad: $ef
	cp   $da                                         ; $44ae: $fe $da
	sbc  b                                           ; $44b0: $98
	ld   [hl], a                                     ; $44b1: $77
	add  a                                           ; $44b2: $87
	ld   h, [hl]                                     ; $44b3: $66
	ld   d, l                                        ; $44b4: $55
	ld   b, h                                        ; $44b5: $44
	ld   hl, $1111                                   ; $44b6: $21 $11 $11
	dec  h                                           ; $44b9: $25
	adc  d                                           ; $44ba: $8a
	cp   h                                           ; $44bb: $bc
	set  3, [hl]                                     ; $44bc: $cb $de
	db   $dd                                         ; $44be: $dd
	db   $ed                                         ; $44bf: $ed
	rst  $38                                         ; $44c0: $ff
	cp   $da                                         ; $44c1: $fe $da
	sbc  c                                           ; $44c3: $99
	add  a                                           ; $44c4: $87
	add  a                                           ; $44c5: $87
	ld   h, [hl]                                     ; $44c6: $66
	ld   d, l                                        ; $44c7: $55
	ld   d, h                                        ; $44c8: $54
	ld   hl, $1111                                   ; $44c9: $21 $11 $11
	inc  d                                           ; $44cc: $14
	ld   l, c                                        ; $44cd: $69
	xor  e                                           ; $44ce: $ab
	call c, $dcdf                                    ; $44cf: $dc $df $dc
	db   $dd                                         ; $44d2: $dd
	rst  $28                                         ; $44d3: $ef
	db   $fd                                         ; $44d4: $fd
	jp   z, $8989                                    ; $44d5: $ca $89 $89

	ld   [hl], a                                     ; $44d8: $77
	ld   h, [hl]                                     ; $44d9: $66
	ld   h, [hl]                                     ; $44da: $66
	ld   h, h                                        ; $44db: $64
	ld   hl, $1111                                   ; $44dc: $21 $11 $11
	inc  de                                          ; $44df: $13
	ld   e, b                                        ; $44e0: $58
	xor  e                                           ; $44e1: $ab
	call $ecce                                       ; $44e2: $cd $ce $ec
	call $fdef                                       ; $44e5: $cd $ef $fd
	db   $db                                         ; $44e8: $db
	sbc  d                                           ; $44e9: $9a
	xor  c                                           ; $44ea: $a9
	ld   [hl], a                                     ; $44eb: $77
	ld   h, [hl]                                     ; $44ec: $66
	halt                                             ; $44ed: $76
	ld   d, h                                        ; $44ee: $54
	ld   hl, $1111                                   ; $44ef: $21 $11 $11
	ld   de, $ab47                                   ; $44f2: $11 $47 $ab
	cp   l                                           ; $44f5: $bd
	call $dddd                                       ; $44f6: $cd $dd $dd
	sbc  $fe                                         ; $44f9: $de $fe
	call c, $98a9                                    ; $44fb: $dc $a9 $98
	add  a                                           ; $44fe: $87
	ld   [hl], a                                     ; $44ff: $77
	ld   [hl], a                                     ; $4500: $77
	ld   d, h                                        ; $4501: $54
	ld   [hl+], a                                    ; $4502: $22
	ld   hl, $1111                                   ; $4503: $21 $11 $11
	ld   [hl], $aa                                   ; $4506: $36 $aa
	xor  e                                           ; $4508: $ab
	call $ccfe                                       ; $4509: $cd $fe $cc
	call $dcff                                       ; $450c: $cd $ff $dc
	xor  c                                           ; $450f: $a9
	sbc  c                                           ; $4510: $99
	add  a                                           ; $4511: $87
	halt                                             ; $4512: $76
	ld   [hl], a                                     ; $4513: $77
	ld   h, l                                        ; $4514: $65
	ld   sp, $1111                                   ; $4515: $31 $11 $11
	ld   de, $9a25                                   ; $4518: $11 $25 $9a
	xor  e                                           ; $451b: $ab
	cp   h                                           ; $451c: $bc
	cp   $dc                                         ; $451d: $fe $dc
	call $edff                                       ; $451f: $cd $ff $ed

Call_0d8_4522:
	xor  c                                           ; $4522: $a9
	sbc  d                                           ; $4523: $9a
	xor  b                                           ; $4524: $a8
	halt                                             ; $4525: $76
	ld   l, b                                        ; $4526: $68
	halt                                             ; $4527: $76
	ld   b, d                                        ; $4528: $42
	ld   de, $1111                                   ; $4529: $11 $11 $11
	inc  de                                          ; $452c: $13
	ld   l, d                                        ; $452d: $6a
	sbc  d                                           ; $452e: $9a
	cp   e                                           ; $452f: $bb
	xor  $dc                                         ; $4530: $ee $dc
	call $fcff                                       ; $4532: $cd $ff $fc
	cp   e                                           ; $4535: $bb
	sbc  d                                           ; $4536: $9a
	xor  b                                           ; $4537: $a8
	ld   h, a                                        ; $4538: $67
	ld   a, b                                        ; $4539: $78
	add  [hl]                                        ; $453a: $86
	ld   b, e                                        ; $453b: $43
	ld   [hl-], a                                    ; $453c: $32
	ld   hl, $1211                                   ; $453d: $21 $11 $12
	ld   e, b                                        ; $4540: $58
	add  a                                           ; $4541: $87
	sbc  h                                           ; $4542: $9c
	rst  JumpTable                                         ; $4543: $df
	db   $eb                                         ; $4544: $eb
	cp   [hl]                                        ; $4545: $be
	rst  $38                                         ; $4546: $ff
	db   $fc                                         ; $4547: $fc
	cp   d                                           ; $4548: $ba
	cp   e                                           ; $4549: $bb
	sbc  c                                           ; $454a: $99
	ld   h, a                                        ; $454b: $67
	ld   a, b                                        ; $454c: $78
	add  a                                           ; $454d: $87
	ld   d, h                                        ; $454e: $54
	ld   b, e                                        ; $454f: $43
	ld   hl, $1111                                   ; $4550: $21 $11 $11
	ld   b, h                                        ; $4553: $44
	ld   [hl], a                                     ; $4554: $77
	ld   a, e                                        ; $4555: $7b
	call $bddc                                       ; $4556: $cd $dc $bd
	rst  $38                                         ; $4559: $ff
	cp   $cc                                         ; $455a: $fe $cc
	call z, $76a8                                    ; $455c: $cc $a8 $76
	adc  c                                           ; $455f: $89
	ld   [hl], a                                     ; $4560: $77
	ld   h, l                                        ; $4561: $65
	ld   d, h                                        ; $4562: $54
	ld   [hl-], a                                    ; $4563: $32
	ld   de, $1311                                   ; $4564: $11 $11 $13
	ld   b, a                                        ; $4567: $47
	ld   a, b                                        ; $4568: $78
	cp   h                                           ; $4569: $bc
	call z, $dfcc                                    ; $456a: $cc $cc $df
	rst  $28                                         ; $456d: $ef
	db   $ed                                         ; $456e: $ed
	call c, $97a9                                    ; $456f: $dc $a9 $97
	ld   a, b                                        ; $4572: $78
	adc  b                                           ; $4573: $88
	ld   [hl], a                                     ; $4574: $77
	ld   d, l                                        ; $4575: $55
	ld   b, e                                        ; $4576: $43
	ld   hl, $1211                                   ; $4577: $21 $11 $12
	inc  [hl]                                        ; $457a: $34
	ld   h, [hl]                                     ; $457b: $66
	adc  e                                           ; $457c: $8b
	call $dfcd                                       ; $457d: $cd $cd $df
	cp   $ee                                         ; $4580: $fe $ee
	call c, $88ca                                    ; $4582: $dc $ca $88
	adc  b                                           ; $4585: $88
	add  a                                           ; $4586: $87
	ld   [hl], a                                     ; $4587: $77
	halt                                             ; $4588: $76
	ld   b, h                                        ; $4589: $44
	inc  sp                                          ; $458a: $33
	ld   hl, $2311                                   ; $458b: $21 $11 $23
	dec  [hl]                                        ; $458e: $35
	ld   e, b                                        ; $458f: $58
	cp   h                                           ; $4590: $bc
	cp   h                                           ; $4591: $bc
	call $eeff                                       ; $4592: $cd $ff $ee
	cp   $dc                                         ; $4595: $fe $dc
	xor  c                                           ; $4597: $a9
	sbc  c                                           ; $4598: $99
	add  a                                           ; $4599: $87
	ld   [hl], a                                     ; $459a: $77
	add  a                                           ; $459b: $87
	ld   h, l                                        ; $459c: $65
	ld   b, e                                        ; $459d: $43
	ld   [hl-], a                                    ; $459e: $32
	ld   de, $3211                                   ; $459f: $11 $11 $32
	ld   b, l                                        ; $45a2: $45
	adc  d                                           ; $45a3: $8a
	cp   h                                           ; $45a4: $bc
	call $fedf                                       ; $45a5: $cd $df $fe
	rst  $38                                         ; $45a8: $ff
	db   $fd                                         ; $45a9: $fd
	res  5, c                                        ; $45aa: $cb $a9
	add  a                                           ; $45ac: $87
	ld   [hl], a                                     ; $45ad: $77
	ld   [hl], a                                     ; $45ae: $77
	halt                                             ; $45af: $76
	ld   d, h                                        ; $45b0: $54
	ld   b, e                                        ; $45b1: $43
	ld   hl, $2311                                   ; $45b2: $21 $11 $23
	inc  h                                           ; $45b5: $24
	ld   d, a                                        ; $45b6: $57
	cp   d                                           ; $45b7: $ba
	xor  e                                           ; $45b8: $ab
	sbc  $ff                                         ; $45b9: $de $ff
	rst  $38                                         ; $45bb: $ff
	cp   $dc                                         ; $45bc: $fe $dc
	xor  d                                           ; $45be: $aa
	xor  b                                           ; $45bf: $a8
	ld   [hl], a                                     ; $45c0: $77
	ld   a, b                                        ; $45c1: $78
	add  a                                           ; $45c2: $87
	ld   h, l                                        ; $45c3: $65
	ld   d, l                                        ; $45c4: $55
	ld   b, d                                        ; $45c5: $42
	ld   de, $2111                                   ; $45c6: $11 $11 $21
	inc  [hl]                                        ; $45c9: $34
	ld   l, b                                        ; $45ca: $68
	sbc  c                                           ; $45cb: $99
	cp   l                                           ; $45cc: $bd
	rst  $28                                         ; $45cd: $ef
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	cp   $cb                                         ; $45d0: $fe $cb
	xor  e                                           ; $45d2: $ab
	sbc  b                                           ; $45d3: $98
	ld   [hl], a                                     ; $45d4: $77
	ld   [hl], a                                     ; $45d5: $77
	halt                                             ; $45d6: $76
	ld   d, l                                        ; $45d7: $55
	ld   d, h                                        ; $45d8: $54
	ld   [hl-], a                                    ; $45d9: $32
	ld   de, $2212                                   ; $45da: $11 $12 $22
	inc  [hl]                                        ; $45dd: $34
	ld   h, a                                        ; $45de: $67
	adc  c                                           ; $45df: $89
	cp   h                                           ; $45e0: $bc
	sbc  $ff                                         ; $45e1: $de $ff
	rst  $38                                         ; $45e3: $ff
	db   $ed                                         ; $45e4: $ed
	res  7, c                                        ; $45e5: $cb $b9
	adc  b                                           ; $45e7: $88
	ld   [hl], a                                     ; $45e8: $77
	adc  c                                           ; $45e9: $89
	adc  b                                           ; $45ea: $88
	ld   [hl], a                                     ; $45eb: $77
	ld   [hl], a                                     ; $45ec: $77
	ld   h, l                                        ; $45ed: $65
	ld   d, h                                        ; $45ee: $54
	inc  [hl]                                        ; $45ef: $34
	ld   b, e                                        ; $45f0: $43
	inc  hl                                          ; $45f1: $23
	inc  sp                                          ; $45f2: $33
	ld   b, l                                        ; $45f3: $45
	ld   d, a                                        ; $45f4: $57
	adc  c                                           ; $45f5: $89
	xor  e                                           ; $45f6: $ab
	call z, $ffdf                                    ; $45f7: $cc $df $ff
	xor  $ee                                         ; $45fa: $ee $ee
	call z, $b9bb                                    ; $45fc: $cc $bb $b9
	adc  b                                           ; $45ff: $88
	halt                                             ; $4600: $76
	ld   d, l                                        ; $4601: $55
	ld   b, e                                        ; $4602: $43
	ld   [hl-], a                                    ; $4603: $32
	ld   hl, $1122                                   ; $4604: $21 $22 $11
	ld   [hl+], a                                    ; $4607: $22
	inc  [hl]                                        ; $4608: $34
	ld   d, [hl]                                     ; $4609: $56
	ld   a, c                                        ; $460a: $79
	xor  e                                           ; $460b: $ab
	db   $dd                                         ; $460c: $dd
	rst  $28                                         ; $460d: $ef
	rst  $38                                         ; $460e: $ff
	rst  $38                                         ; $460f: $ff
	cp   $ed                                         ; $4610: $fe $ed
	cp   e                                           ; $4612: $bb
	xor  c                                           ; $4613: $a9
	sub  a                                           ; $4614: $97
	ld   h, l                                        ; $4615: $65
	ld   d, h                                        ; $4616: $54
	ld   b, e                                        ; $4617: $43
	ld   [hl-], a                                    ; $4618: $32
	ld   hl, $1112                                   ; $4619: $21 $12 $11
	ld   [hl+], a                                    ; $461c: $22
	inc  hl                                          ; $461d: $23
	ld   d, l                                        ; $461e: $55
	ld   a, b                                        ; $461f: $78
	xor  e                                           ; $4620: $ab
	call $ffff                                       ; $4621: $cd $ff $ff
	rst  $38                                         ; $4624: $ff
	rst  $38                                         ; $4625: $ff
	db   $ed                                         ; $4626: $ed
	res  5, d                                        ; $4627: $cb $aa
	sub  a                                           ; $4629: $97
	ld   h, [hl]                                     ; $462a: $66
	ld   d, h                                        ; $462b: $54
	ld   b, e                                        ; $462c: $43
	ld   [hl-], a                                    ; $462d: $32
	ld   [hl+], a                                    ; $462e: $22
	ld   [de], a                                     ; $462f: $12
	ld   hl, $2322                                   ; $4630: $21 $22 $23
	ld   b, l                                        ; $4633: $45
	ld   l, b                                        ; $4634: $68
	xor  e                                           ; $4635: $ab
	adc  $ef                                         ; $4636: $ce $ef
	rst  $38                                         ; $4638: $ff
	rst  $38                                         ; $4639: $ff
	cp   $ed                                         ; $463a: $fe $ed
	call z, $88ba                                    ; $463c: $cc $ba $88
	halt                                             ; $463f: $76
	ld   h, l                                        ; $4640: $65
	ld   b, h                                        ; $4641: $44
	ld   b, e                                        ; $4642: $43
	ld   [hl-], a                                    ; $4643: $32
	ld   [hl+], a                                    ; $4644: $22
	ld   [hl+], a                                    ; $4645: $22
	ld   [hl+], a                                    ; $4646: $22
	inc  sp                                          ; $4647: $33
	inc  [hl]                                        ; $4648: $34
	ld   d, [hl]                                     ; $4649: $56
	adc  d                                           ; $464a: $8a
	xor  h                                           ; $464b: $ac
	sbc  $ef                                         ; $464c: $de $ef
	rst  $38                                         ; $464e: $ff
	rst  $38                                         ; $464f: $ff
	cp   $dc                                         ; $4650: $fe $dc
	res  3, c                                        ; $4652: $cb $99
	add  a                                           ; $4654: $87
	ld   h, [hl]                                     ; $4655: $66
	ld   d, h                                        ; $4656: $54
	ld   b, h                                        ; $4657: $44
	inc  sp                                          ; $4658: $33
	ld   [hl-], a                                    ; $4659: $32
	ld   [hl+], a                                    ; $465a: $22
	ld   [hl+], a                                    ; $465b: $22
	ld   [hl+], a                                    ; $465c: $22
	inc  sp                                          ; $465d: $33
	ld   b, l                                        ; $465e: $45
	ld   h, a                                        ; $465f: $67
	sbc  e                                           ; $4660: $9b
	cp   h                                           ; $4661: $bc
	sbc  $ef                                         ; $4662: $de $ef
	rst  $38                                         ; $4664: $ff
	rst  $38                                         ; $4665: $ff
	db   $dd                                         ; $4666: $dd
	call z, $99aa                                    ; $4667: $cc $aa $99
	ld   [hl], a                                     ; $466a: $77
	ld   h, l                                        ; $466b: $65
	ld   d, h                                        ; $466c: $54
	ld   b, h                                        ; $466d: $44
	ld   b, e                                        ; $466e: $43
	inc  sp                                          ; $466f: $33
	inc  hl                                          ; $4670: $23
	inc  sp                                          ; $4671: $33
	inc  hl                                          ; $4672: $23
	inc  [hl]                                        ; $4673: $34
	ld   b, l                                        ; $4674: $45
	ld   h, a                                        ; $4675: $67
	sbc  e                                           ; $4676: $9b
	call z, $efee                                    ; $4677: $cc $ee $ef
	rst  $38                                         ; $467a: $ff
	xor  $dd                                         ; $467b: $ee $dd
	call z, $98a9                                    ; $467d: $cc $a9 $98
	halt                                             ; $4680: $76
	ld   h, l                                        ; $4681: $65
	ld   d, h                                        ; $4682: $54
	ld   b, h                                        ; $4683: $44
	ld   b, e                                        ; $4684: $43
	inc  sp                                          ; $4685: $33
	inc  hl                                          ; $4686: $23
	inc  sp                                          ; $4687: $33
	inc  sp                                          ; $4688: $33
	ld   b, h                                        ; $4689: $44
	ld   d, [hl]                                     ; $468a: $56
	ld   a, b                                        ; $468b: $78
	xor  e                                           ; $468c: $ab
	cp   h                                           ; $468d: $bc
	xor  $ef                                         ; $468e: $ee $ef
	cp   $fd                                         ; $4690: $fe $fd
	call c, $aabb                                    ; $4692: $dc $bb $aa
	adc  b                                           ; $4695: $88
	ld   [hl], a                                     ; $4696: $77
	ld   h, l                                        ; $4697: $65
	ld   d, h                                        ; $4698: $54
	ld   b, h                                        ; $4699: $44
	ld   b, e                                        ; $469a: $43
	inc  sp                                          ; $469b: $33
	inc  sp                                          ; $469c: $33
	inc  sp                                          ; $469d: $33
	inc  sp                                          ; $469e: $33
	ld   b, h                                        ; $469f: $44
	ld   d, [hl]                                     ; $46a0: $56
	ld   a, b                                        ; $46a1: $78
	xor  e                                           ; $46a2: $ab
	call z, $efed                                    ; $46a3: $cc $ed $ef
	rst  $38                                         ; $46a6: $ff
	cp   $fe                                         ; $46a7: $fe $fe
	db   $db                                         ; $46a9: $db
	sbc  c                                           ; $46aa: $99
	add  a                                           ; $46ab: $87
	ld   h, [hl]                                     ; $46ac: $66
	ld   d, l                                        ; $46ad: $55
	ld   b, e                                        ; $46ae: $43
	inc  sp                                          ; $46af: $33
	inc  sp                                          ; $46b0: $33
	ld   [hl-], a                                    ; $46b1: $32
	inc  hl                                          ; $46b2: $23
	ld   b, h                                        ; $46b3: $44
	ld   b, h                                        ; $46b4: $44
	ld   d, [hl]                                     ; $46b5: $56
	ld   a, b                                        ; $46b6: $78
	sbc  d                                           ; $46b7: $9a
	call $eeef                                       ; $46b8: $cd $ef $ee
	xor  $fe                                         ; $46bb: $ee $fe
	db   $fc                                         ; $46bd: $fc
	call z, $7698                                    ; $46be: $cc $98 $76
	ld   [hl], a                                     ; $46c1: $77
	ld   h, l                                        ; $46c2: $65
	ld   b, e                                        ; $46c3: $43
	inc  sp                                          ; $46c4: $33
	ld   hl, $1111                                   ; $46c5: $21 $11 $11
	inc  sp                                          ; $46c8: $33
	dec  [hl]                                        ; $46c9: $35
	ld   [hl], a                                     ; $46ca: $77
	xor  d                                           ; $46cb: $aa
	xor  h                                           ; $46cc: $ac
	sbc  $ff                                         ; $46cd: $de $ff
	rst  $38                                         ; $46cf: $ff
	rst  $38                                         ; $46d0: $ff
	db   $dd                                         ; $46d1: $dd
	cp   e                                           ; $46d2: $bb
	xor  b                                           ; $46d3: $a8
	ld   [hl], a                                     ; $46d4: $77
	ld   [hl], a                                     ; $46d5: $77
	ld   [hl], a                                     ; $46d6: $77
	ld   h, [hl]                                     ; $46d7: $66
	ld   d, h                                        ; $46d8: $54
	inc  sp                                          ; $46d9: $33
	ld   hl, $1111                                   ; $46da: $21 $11 $11
	ld   [hl+], a                                    ; $46dd: $22
	ld   b, [hl]                                     ; $46de: $46
	ld   a, c                                        ; $46df: $79
	cp   e                                           ; $46e0: $bb
	call $ffef                                       ; $46e1: $cd $ef $ff
	rst  $38                                         ; $46e4: $ff
	rst  $38                                         ; $46e5: $ff
	db   $db                                         ; $46e6: $db
	xor  c                                           ; $46e7: $a9
	adc  b                                           ; $46e8: $88
	ld   [hl], a                                     ; $46e9: $77
	ld   [hl], a                                     ; $46ea: $77
	halt                                             ; $46eb: $76
	ld   h, l                                        ; $46ec: $65
	ld   b, e                                        ; $46ed: $43
	ld   [hl-], a                                    ; $46ee: $32
	ld   de, $1411                                   ; $46ef: $11 $11 $14
	dec  [hl]                                        ; $46f2: $35
	ld   l, b                                        ; $46f3: $68
	cp   h                                           ; $46f4: $bc
	call $ffde                                       ; $46f5: $cd $de $ff
	rst  $38                                         ; $46f8: $ff
	rst  $28                                         ; $46f9: $ef
	db   $ec                                         ; $46fa: $ec
	xor  c                                           ; $46fb: $a9
	xor  c                                           ; $46fc: $a9
	add  a                                           ; $46fd: $87
	ld   [hl], a                                     ; $46fe: $77
	adc  b                                           ; $46ff: $88
	ld   [hl], l                                     ; $4700: $75
	ld   b, e                                        ; $4701: $43
	inc  sp                                          ; $4702: $33
	ld   de, $1411                                   ; $4703: $11 $11 $14
	inc  [hl]                                        ; $4706: $34
	ld   h, a                                        ; $4707: $67
	xor  h                                           ; $4708: $ac
	call $ffde                                       ; $4709: $cd $de $ff
	rst  $38                                         ; $470c: $ff
	rst  $28                                         ; $470d: $ef
	db   $ed                                         ; $470e: $ed
	cp   d                                           ; $470f: $ba
	xor  c                                           ; $4710: $a9
	sub  a                                           ; $4711: $97
	ld   [hl], a                                     ; $4712: $77
	adc  b                                           ; $4713: $88
	halt                                             ; $4714: $76
	ld   b, e                                        ; $4715: $43
	inc  sp                                          ; $4716: $33
	ld   de, $1411                                   ; $4717: $11 $11 $14
	ld   b, h                                        ; $471a: $44
	ld   h, [hl]                                     ; $471b: $66
	sbc  l                                           ; $471c: $9d
	call c, $ffcd                                    ; $471d: $dc $cd $ff
	rst  $38                                         ; $4720: $ff
	xor  $ed                                         ; $4721: $ee $ed
	ret                                              ; $4723: $c9


	sbc  d                                           ; $4724: $9a
	xor  b                                           ; $4725: $a8
	adc  b                                           ; $4726: $88
	adc  b                                           ; $4727: $88
	add  [hl]                                        ; $4728: $86
	ld   b, d                                        ; $4729: $42
	inc  sp                                          ; $472a: $33
	ld   hl, $1411                                   ; $472b: $21 $11 $14
	ld   b, l                                        ; $472e: $45
	halt                                             ; $472f: $76
	xor  h                                           ; $4730: $ac
	call z, $dfcb                                    ; $4731: $cc $cb $df
	cp   $de                                         ; $4734: $fe $de
	db   $ec                                         ; $4736: $ec
	jp   z, $a899                                    ; $4737: $ca $99 $a8

	sbc  b                                           ; $473a: $98
	adc  b                                           ; $473b: $88
	sub  a                                           ; $473c: $97
	ld   b, d                                        ; $473d: $42
	ld   [hl+], a                                    ; $473e: $22
	ld   de, $1511                                   ; $473f: $11 $11 $15
	ld   d, a                                        ; $4742: $57
	ld   h, a                                        ; $4743: $67
	xor  h                                           ; $4744: $ac
	call z, $dfbc                                    ; $4745: $cc $bc $df
	cp   $dd                                         ; $4748: $fe $dd
	call c, $98ca                                    ; $474a: $dc $ca $98
	sbc  c                                           ; $474d: $99
	sbc  b                                           ; $474e: $98
	sbc  c                                           ; $474f: $99
	add  a                                           ; $4750: $87
	ld   b, e                                        ; $4751: $43
	ld   [hl+], a                                    ; $4752: $22
	ld   de, $1411                                   ; $4753: $11 $11 $14
	ld   h, a                                        ; $4756: $67
	ld   [hl], a                                     ; $4757: $77
	xor  h                                           ; $4758: $ac
	db   $db                                         ; $4759: $db
	set  1, [hl]                                     ; $475a: $cb $ce
	cp   $dd                                         ; $475c: $fe $dd
	set  1, d                                        ; $475e: $cb $ca
	xor  c                                           ; $4760: $a9
	sbc  b                                           ; $4761: $98
	sbc  b                                           ; $4762: $98
	adc  b                                           ; $4763: $88
	halt                                             ; $4764: $76
	ld   b, e                                        ; $4765: $43
	ld   [hl-], a                                    ; $4766: $32
	ld   de, $2511                                   ; $4767: $11 $11 $25
	ld   e, b                                        ; $476a: $58
	ld   [hl], a                                     ; $476b: $77
	sbc  e                                           ; $476c: $9b
	db   $db                                         ; $476d: $db
	cp   d                                           ; $476e: $ba
	cp   [hl]                                        ; $476f: $be
	rst  $38                                         ; $4770: $ff
	call c, $cabb                                    ; $4771: $dc $bb $ca
	xor  c                                           ; $4774: $a9
	sbc  b                                           ; $4775: $98
	sbc  c                                           ; $4776: $99
	adc  b                                           ; $4777: $88
	halt                                             ; $4778: $76
	ld   b, e                                        ; $4779: $43
	inc  sp                                          ; $477a: $33
	ld   de, $1411                                   ; $477b: $11 $11 $14
	ld   e, c                                        ; $477e: $59
	adc  b                                           ; $477f: $88
	sbc  d                                           ; $4780: $9a
	call z, $bdab                                    ; $4781: $cc $ab $bd
	rst  $38                                         ; $4784: $ff
	db   $dd                                         ; $4785: $dd
	res  7, e                                        ; $4786: $cb $bb
	sbc  c                                           ; $4788: $99
	sbc  b                                           ; $4789: $98
	sbc  d                                           ; $478a: $9a
	sbc  b                                           ; $478b: $98
	add  [hl]                                        ; $478c: $86
	ld   b, d                                        ; $478d: $42
	ld   [hl+], a                                    ; $478e: $22
	ld   bc, $1411                                   ; $478f: $01 $11 $14
	ld   l, c                                        ; $4792: $69
	ld   [hl], a                                     ; $4793: $77
	xor  d                                           ; $4794: $aa
	call z, $bdba                                    ; $4795: $cc $ba $bd
	sbc  $ed                                         ; $4798: $de $ed
	res  7, d                                        ; $479a: $cb $ba
	cp   d                                           ; $479c: $ba
	sbc  b                                           ; $479d: $98
	sbc  c                                           ; $479e: $99
	xor  c                                           ; $479f: $a9
	halt                                             ; $47a0: $76
	ld   b, d                                        ; $47a1: $42
	inc  sp                                          ; $47a2: $33
	ld   de, $0411                                   ; $47a3: $11 $11 $04
	ld   l, c                                        ; $47a6: $69
	add  a                                           ; $47a7: $87
	xor  d                                           ; $47a8: $aa
	cp   h                                           ; $47a9: $bc
	jp   z, $dead                                    ; $47aa: $ca $ad $de

	db   $ec                                         ; $47ad: $ec
	cp   d                                           ; $47ae: $ba
	cp   d                                           ; $47af: $ba
	cp   d                                           ; $47b0: $ba
	sbc  c                                           ; $47b1: $99
	adc  c                                           ; $47b2: $89
	sbc  c                                           ; $47b3: $99
	add  [hl]                                        ; $47b4: $86
	ld   b, e                                        ; $47b5: $43
	inc  sp                                          ; $47b6: $33
	ld   hl, $1511                                   ; $47b7: $21 $11 $15
	ld   a, b                                        ; $47ba: $78
	sub  a                                           ; $47bb: $97
	sbc  d                                           ; $47bc: $9a
	call $9ca9                                       ; $47bd: $cd $a9 $9c
	xor  $ed                                         ; $47c0: $ee $ed
	set  1, d                                        ; $47c2: $cb $ca
	cp   c                                           ; $47c4: $b9
	sbc  b                                           ; $47c5: $98
	sbc  c                                           ; $47c6: $99
	xor  c                                           ; $47c7: $a9
	add  [hl]                                        ; $47c8: $86
	ld   d, e                                        ; $47c9: $53
	inc  hl                                          ; $47ca: $23
	ld   hl, $1311                                   ; $47cb: $21 $11 $13
	ld   l, b                                        ; $47ce: $68
	sub  a                                           ; $47cf: $97
	adc  c                                           ; $47d0: $89
	cp   l                                           ; $47d1: $bd
	cp   d                                           ; $47d2: $ba
	sbc  e                                           ; $47d3: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47d4: $cf
	db   $fd                                         ; $47d5: $fd
	cp   d                                           ; $47d6: $ba
	xor  d                                           ; $47d7: $aa
	cp   e                                           ; $47d8: $bb
	xor  c                                           ; $47d9: $a9
	adc  c                                           ; $47da: $89
	xor  d                                           ; $47db: $aa
	add  a                                           ; $47dc: $87
	ld   d, e                                        ; $47dd: $53
	inc  sp                                          ; $47de: $33
	ld   sp, $1111                                   ; $47df: $31 $11 $11
	ld   d, a                                        ; $47e2: $57
	sbc  c                                           ; $47e3: $99
	adc  d                                           ; $47e4: $8a
	xor  d                                           ; $47e5: $aa
	cp   e                                           ; $47e6: $bb
	sbc  e                                           ; $47e7: $9b
	adc  $ff                                         ; $47e8: $ce $ff
	call z, $bbab                                    ; $47ea: $cc $ab $bb
	xor  d                                           ; $47ed: $aa
	sbc  b                                           ; $47ee: $98
	sbc  d                                           ; $47ef: $9a
	sbc  b                                           ; $47f0: $98
	ld   h, h                                        ; $47f1: $64
	ld   [hl-], a                                    ; $47f2: $32
	ld   [hl-], a                                    ; $47f3: $32
	ld   de, $3511                                   ; $47f4: $11 $11 $35
	sbc  d                                           ; $47f7: $9a
	ld   l, b                                        ; $47f8: $68
	xor  e                                           ; $47f9: $ab
	db   $eb                                         ; $47fa: $eb
	cp   d                                           ; $47fb: $ba
	xor  h                                           ; $47fc: $ac
	rst  $28                                         ; $47fd: $ef
	db   $eb                                         ; $47fe: $eb
	cp   d                                           ; $47ff: $ba
	cp   h                                           ; $4800: $bc
	xor  c                                           ; $4801: $a9
	sbc  b                                           ; $4802: $98
	sbc  c                                           ; $4803: $99
	xor  c                                           ; $4804: $a9
	ld   [hl], l                                     ; $4805: $75
	ld   [hl-], a                                    ; $4806: $32
	inc  sp                                          ; $4807: $33
	ld   hl, $1511                                   ; $4808: $21 $11 $15
	ld   l, d                                        ; $480b: $6a
	add  [hl]                                        ; $480c: $86
	sbc  c                                           ; $480d: $99
	cp   h                                           ; $480e: $bc
	cp   d                                           ; $480f: $ba
	cp   l                                           ; $4810: $bd
	rst  $28                                         ; $4811: $ef
	db   $fc                                         ; $4812: $fc
	cp   e                                           ; $4813: $bb
	cp   e                                           ; $4814: $bb
	cp   d                                           ; $4815: $ba
	xor  d                                           ; $4816: $aa
	sbc  d                                           ; $4817: $9a
	xor  c                                           ; $4818: $a9
	add  [hl]                                        ; $4819: $86
	ld   b, e                                        ; $481a: $43
	inc  sp                                          ; $481b: $33
	ld   [hl-], a                                    ; $481c: $32
	ld   de, $6713                                   ; $481d: $11 $13 $67
	and  a                                           ; $4820: $a7
	ld   a, d                                        ; $4821: $7a
	xor  l                                           ; $4822: $ad
	jp   z, $ce9a                                    ; $4823: $ca $9a $ce

	xor  $ba                                         ; $4826: $ee $ba
	cp   e                                           ; $4828: $bb
	res  5, c                                        ; $4829: $cb $a9
	sbc  c                                           ; $482b: $99
	sbc  d                                           ; $482c: $9a
	sub  a                                           ; $482d: $97
	ld   h, h                                        ; $482e: $64
	inc  sp                                          ; $482f: $33
	inc  sp                                          ; $4830: $33
	ld   de, $5711                                   ; $4831: $11 $11 $57
	ld   a, b                                        ; $4834: $78
	ld   l, c                                        ; $4835: $69
	cp   h                                           ; $4836: $bc
	res  3, d                                        ; $4837: $cb $9a
	call $dbee                                       ; $4839: $cd $ee $db
	cp   e                                           ; $483c: $bb
	cp   h                                           ; $483d: $bc
	cp   d                                           ; $483e: $ba
	sbc  c                                           ; $483f: $99
	xor  c                                           ; $4840: $a9
	sub  a                                           ; $4841: $97
	ld   h, l                                        ; $4842: $65
	inc  sp                                          ; $4843: $33
	ld   b, e                                        ; $4844: $43
	ld   [hl-], a                                    ; $4845: $32
	ld   de, $6815                                   ; $4846: $11 $15 $68
	halt                                             ; $4849: $76
	sbc  c                                           ; $484a: $99
	cp   h                                           ; $484b: $bc
	xor  c                                           ; $484c: $a9
	sbc  l                                           ; $484d: $9d
	xor  $eb                                         ; $484e: $ee $eb
	cp   e                                           ; $4850: $bb
	cp   h                                           ; $4851: $bc
	jp   z, $99aa                                    ; $4852: $ca $aa $99

	sbc  b                                           ; $4855: $98
	halt                                             ; $4856: $76
	ld   b, e                                        ; $4857: $43
	inc  [hl]                                        ; $4858: $34
	inc  sp                                          ; $4859: $33
	ld   hl, $4611                                   ; $485a: $21 $11 $46
	add  a                                           ; $485d: $87
	ld   a, d                                        ; $485e: $7a
	xor  e                                           ; $485f: $ab
	cp   d                                           ; $4860: $ba
	sbc  d                                           ; $4861: $9a
	adc  $fd                                         ; $4862: $ce $fd
	res  7, e                                        ; $4864: $cb $bb
	cp   e                                           ; $4866: $bb
	cp   d                                           ; $4867: $ba
	xor  d                                           ; $4868: $aa
	sbc  c                                           ; $4869: $99
	add  a                                           ; $486a: $87
	ld   h, l                                        ; $486b: $65
	inc  sp                                          ; $486c: $33
	ld   b, e                                        ; $486d: $43
	ld   sp, $2511                                   ; $486e: $31 $11 $25
	ld   e, b                                        ; $4871: $58
	ld   [hl], a                                     ; $4872: $77
	xor  e                                           ; $4873: $ab
	cp   d                                           ; $4874: $ba
	sbc  c                                           ; $4875: $99
	cp   l                                           ; $4876: $bd
	db   $dd                                         ; $4877: $dd
	res  7, h                                        ; $4878: $cb $bc
	cp   d                                           ; $487a: $ba
	xor  c                                           ; $487b: $a9
	xor  d                                           ; $487c: $aa
	sbc  d                                           ; $487d: $9a
	adc  c                                           ; $487e: $89
	halt                                             ; $487f: $76
	ld   b, e                                        ; $4880: $43
	ld   b, h                                        ; $4881: $44
	ld   b, e                                        ; $4882: $43
	ld   de, $6612                                   ; $4883: $11 $12 $66
	ld   h, a                                        ; $4886: $67
	ld   a, d                                        ; $4887: $7a
	cp   d                                           ; $4888: $ba
	sbc  b                                           ; $4889: $98
	sbc  e                                           ; $488a: $9b
	db   $ed                                         ; $488b: $ed
	db   $dd                                         ; $488c: $dd
	set  1, e                                        ; $488d: $cb $cb
	xor  d                                           ; $488f: $aa
	cp   d                                           ; $4890: $ba
	xor  c                                           ; $4891: $a9
	sbc  c                                           ; $4892: $99
	sbc  b                                           ; $4893: $98
	ld   h, h                                        ; $4894: $64
	inc  [hl]                                        ; $4895: $34
	ld   d, h                                        ; $4896: $54
	ld   hl, $2511                                   ; $4897: $21 $11 $25
	ld   d, l                                        ; $489a: $55
	ld   h, a                                        ; $489b: $67
	sbc  e                                           ; $489c: $9b
	xor  d                                           ; $489d: $aa
	xor  d                                           ; $489e: $aa
	call c, $dccc                                    ; $489f: $dc $cc $dc
	call z, $bbba                                    ; $48a2: $cc $ba $bb
	xor  d                                           ; $48a5: $aa

Call_0d8_48a6:
	adc  b                                           ; $48a6: $88
	xor  d                                           ; $48a7: $aa
	add  [hl]                                        ; $48a8: $86
	ld   b, h                                        ; $48a9: $44
	ld   b, h                                        ; $48aa: $44
	ld   [hl-], a                                    ; $48ab: $32
	ld   de, $5412                                   ; $48ac: $11 $12 $54
	ld   d, a                                        ; $48af: $57
	ld   a, c                                        ; $48b0: $79
	cp   d                                           ; $48b1: $ba
	xor  e                                           ; $48b2: $ab
	cp   h                                           ; $48b3: $bc
	call z, $dbdd                                    ; $48b4: $cc $dd $db
	res  7, h                                        ; $48b7: $cb $bc
	cp   c                                           ; $48b9: $b9
	sbc  c                                           ; $48ba: $99
	xor  c                                           ; $48bb: $a9
	sub  a                                           ; $48bc: $97
	ld   h, l                                        ; $48bd: $65
	ld   b, h                                        ; $48be: $44
	ld   b, e                                        ; $48bf: $43
	ld   [hl+], a                                    ; $48c0: $22
	ld   de, $4624                                   ; $48c1: $11 $24 $46
	halt                                             ; $48c4: $76
	sbc  d                                           ; $48c5: $9a
	sbc  d                                           ; $48c6: $9a
	xor  e                                           ; $48c7: $ab
	call z, $dddd                                    ; $48c8: $cc $dd $dd
	call z, $baaa                                    ; $48cb: $cc $aa $ba
	cp   c                                           ; $48ce: $b9
	sbc  c                                           ; $48cf: $99
	xor  c                                           ; $48d0: $a9
	add  [hl]                                        ; $48d1: $86
	ld   d, h                                        ; $48d2: $54
	ld   b, h                                        ; $48d3: $44
	inc  sp                                          ; $48d4: $33
	ld   de, $4412                                   ; $48d5: $11 $12 $44
	ld   b, [hl]                                     ; $48d8: $46
	ld   a, c                                        ; $48d9: $79
	sbc  c                                           ; $48da: $99
	cp   e                                           ; $48db: $bb
	call $dccd                                       ; $48dc: $cd $cd $dc
	db   $db                                         ; $48df: $db
	call z, $aabc                                    ; $48e0: $cc $bc $aa
	sbc  c                                           ; $48e3: $99
	sbc  c                                           ; $48e4: $99
	sbc  b                                           ; $48e5: $98
	halt                                             ; $48e6: $76
	ld   d, h                                        ; $48e7: $54
	ld   b, e                                        ; $48e8: $43
	ld   [hl-], a                                    ; $48e9: $32
	ld   de, $4414                                   ; $48ea: $11 $14 $44
	ld   d, [hl]                                     ; $48ed: $56
	adc  c                                           ; $48ee: $89
	sbc  d                                           ; $48ef: $9a
	cp   e                                           ; $48f0: $bb
	call $dedd                                       ; $48f1: $cd $dd $de
	cp   e                                           ; $48f4: $bb
	res  7, e                                        ; $48f5: $cb $bb
	sbc  c                                           ; $48f7: $99
	sbc  b                                           ; $48f8: $98
	xor  c                                           ; $48f9: $a9
	sub  a                                           ; $48fa: $97
	ld   h, l                                        ; $48fb: $65
	ld   b, l                                        ; $48fc: $45
	ld   b, h                                        ; $48fd: $44
	ld   [hl-], a                                    ; $48fe: $32
	ld   de, $4534                                   ; $48ff: $11 $34 $45
	ld   d, [hl]                                     ; $4902: $56
	sbc  c                                           ; $4903: $99
	sbc  d                                           ; $4904: $9a
	cp   h                                           ; $4905: $bc
	call c, $ddde                                    ; $4906: $dc $de $dd
	res  7, d                                        ; $4909: $cb $ba
	xor  c                                           ; $490b: $a9
	sbc  b                                           ; $490c: $98
	sbc  c                                           ; $490d: $99
	sbc  b                                           ; $490e: $98
	halt                                             ; $490f: $76
	ld   h, [hl]                                     ; $4910: $66
	ld   h, l                                        ; $4911: $65
	ld   b, h                                        ; $4912: $44
	ld   [hl-], a                                    ; $4913: $32
	inc  hl                                          ; $4914: $23
	ld   b, h                                        ; $4915: $44
	ld   b, l                                        ; $4916: $45
	ld   h, a                                        ; $4917: $67
	adc  c                                           ; $4918: $89
	sbc  d                                           ; $4919: $9a
	cp   e                                           ; $491a: $bb
	db   $dd                                         ; $491b: $dd
	call c, $bbcb                                    ; $491c: $dc $cb $bb
	xor  e                                           ; $491f: $ab
	xor  d                                           ; $4920: $aa
	adc  c                                           ; $4921: $89
	sbc  c                                           ; $4922: $99
	adc  b                                           ; $4923: $88
	add  a                                           ; $4924: $87
	halt                                             ; $4925: $76
	ld   h, [hl]                                     ; $4926: $66
	ld   h, l                                        ; $4927: $65
	ld   d, h                                        ; $4928: $54
	ld   b, h                                        ; $4929: $44
	ld   b, l                                        ; $492a: $45
	ld   d, l                                        ; $492b: $55
	ld   d, [hl]                                     ; $492c: $56
	ld   h, a                                        ; $492d: $67
	ld   [hl], a                                     ; $492e: $77
	adc  c                                           ; $492f: $89
	xor  e                                           ; $4930: $ab
	xor  e                                           ; $4931: $ab
	cp   e                                           ; $4932: $bb
	cp   e                                           ; $4933: $bb
	cp   e                                           ; $4934: $bb
	cp   e                                           ; $4935: $bb
	xor  e                                           ; $4936: $ab
	xor  d                                           ; $4937: $aa
	sbc  c                                           ; $4938: $99
	sbc  b                                           ; $4939: $98
	adc  b                                           ; $493a: $88
	ld   [hl], a                                     ; $493b: $77
	halt                                             ; $493c: $76
	ld   h, [hl]                                     ; $493d: $66
	ld   h, [hl]                                     ; $493e: $66
	ld   h, l                                        ; $493f: $65
	ld   d, l                                        ; $4940: $55
	ld   d, [hl]                                     ; $4941: $56
	ld   d, l                                        ; $4942: $55
	ld   h, [hl]                                     ; $4943: $66
	ld   h, [hl]                                     ; $4944: $66
	ld   [hl], a                                     ; $4945: $77
	ld   a, b                                        ; $4946: $78
	sbc  d                                           ; $4947: $9a
	sbc  d                                           ; $4948: $9a
	cp   e                                           ; $4949: $bb
	cp   e                                           ; $494a: $bb
	cp   e                                           ; $494b: $bb
	cp   e                                           ; $494c: $bb
	xor  e                                           ; $494d: $ab
	xor  c                                           ; $494e: $a9
	sbc  c                                           ; $494f: $99
	sbc  b                                           ; $4950: $98
	add  a                                           ; $4951: $87
	ld   [hl], a                                     ; $4952: $77
	halt                                             ; $4953: $76
	ld   h, [hl]                                     ; $4954: $66
	ld   h, a                                        ; $4955: $67
	ld   h, [hl]                                     ; $4956: $66
	ld   h, [hl]                                     ; $4957: $66
	ld   h, [hl]                                     ; $4958: $66
	ld   h, a                                        ; $4959: $67
	ld   [hl], a                                     ; $495a: $77
	ld   [hl], a                                     ; $495b: $77
	ld   [hl], a                                     ; $495c: $77
	ld   [hl], a                                     ; $495d: $77
	ld   a, b                                        ; $495e: $78
	sbc  b                                           ; $495f: $98
	sbc  c                                           ; $4960: $99
	sbc  c                                           ; $4961: $99
	xor  c                                           ; $4962: $a9
	sbc  c                                           ; $4963: $99
	sbc  c                                           ; $4964: $99
	xor  d                                           ; $4965: $aa
	sbc  c                                           ; $4966: $99
	sbc  b                                           ; $4967: $98
	adc  b                                           ; $4968: $88
	sbc  b                                           ; $4969: $98
	adc  b                                           ; $496a: $88
	add  a                                           ; $496b: $87
	ld   [hl], a                                     ; $496c: $77
	ld   [hl], a                                     ; $496d: $77
	adc  b                                           ; $496e: $88
	add  a                                           ; $496f: $87
	ld   [hl], a                                     ; $4970: $77
	ld   [hl], a                                     ; $4971: $77
	ld   [hl], a                                     ; $4972: $77
	ld   [hl], a                                     ; $4973: $77
	ld   [hl], a                                     ; $4974: $77
	ld   h, a                                        ; $4975: $67
	ld   [hl], a                                     ; $4976: $77
	ld   [hl], a                                     ; $4977: $77
	ld   [hl], a                                     ; $4978: $77
	ld   a, b                                        ; $4979: $78
	adc  c                                           ; $497a: $89
	adc  b                                           ; $497b: $88
	adc  b                                           ; $497c: $88
	sbc  c                                           ; $497d: $99
	sbc  c                                           ; $497e: $99
	sbc  c                                           ; $497f: $99
	adc  b                                           ; $4980: $88
	adc  b                                           ; $4981: $88
	adc  c                                           ; $4982: $89
	adc  b                                           ; $4983: $88
	sbc  c                                           ; $4984: $99
	sbc  c                                           ; $4985: $99
	sbc  c                                           ; $4986: $99
	sbc  b                                           ; $4987: $98
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	ld   [hl], a                                     ; $498a: $77
	ld   [hl], a                                     ; $498b: $77
	ld   [hl], a                                     ; $498c: $77
	ld   [hl], a                                     ; $498d: $77
	ld   h, a                                        ; $498e: $67
	ld   [hl], a                                     ; $498f: $77
	ld   [hl], a                                     ; $4990: $77
	ld   [hl], a                                     ; $4991: $77
	ld   [hl], a                                     ; $4992: $77
	ld   a, b                                        ; $4993: $78
	adc  b                                           ; $4994: $88
	adc  b                                           ; $4995: $88
	adc  c                                           ; $4996: $89
	sbc  b                                           ; $4997: $98
	adc  b                                           ; $4998: $88
	sbc  b                                           ; $4999: $98
	adc  b                                           ; $499a: $88
	adc  c                                           ; $499b: $89
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	adc  c                                           ; $499e: $89
	sbc  b                                           ; $499f: $98
	sbc  b                                           ; $49a0: $98
	adc  b                                           ; $49a1: $88
	add  a                                           ; $49a2: $87
	ld   [hl], a                                     ; $49a3: $77
	ld   [hl], a                                     ; $49a4: $77
	ld   [hl], a                                     ; $49a5: $77
	ld   [hl], a                                     ; $49a6: $77
	ld   [hl], a                                     ; $49a7: $77
	ld   [hl], a                                     ; $49a8: $77
	ld   [hl], a                                     ; $49a9: $77
	ld   [hl], a                                     ; $49aa: $77
	ld   [hl], a                                     ; $49ab: $77
	ld   [hl], a                                     ; $49ac: $77
	ld   [hl], a                                     ; $49ad: $77
	ld   [hl], a                                     ; $49ae: $77
	adc  b                                           ; $49af: $88
	adc  b                                           ; $49b0: $88
	sbc  c                                           ; $49b1: $99
	sbc  b                                           ; $49b2: $98
	adc  c                                           ; $49b3: $89
	xor  c                                           ; $49b4: $a9
	sbc  c                                           ; $49b5: $99
	sbc  c                                           ; $49b6: $99
	adc  b                                           ; $49b7: $88
	adc  b                                           ; $49b8: $88
	sbc  b                                           ; $49b9: $98
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
	add  a                                           ; $49c4: $87
	adc  b                                           ; $49c5: $88
	ld   [hl], a                                     ; $49c6: $77
	adc  b                                           ; $49c7: $88
	ld   a, b                                        ; $49c8: $78
	adc  b                                           ; $49c9: $88
	add  a                                           ; $49ca: $87
	ld   [hl], a                                     ; $49cb: $77
	ld   a, b                                        ; $49cc: $78
	ld   [hl], a                                     ; $49cd: $77
	ld   [hl], a                                     ; $49ce: $77
	adc  b                                           ; $49cf: $88
	adc  b                                           ; $49d0: $88
	adc  b                                           ; $49d1: $88
	adc  b                                           ; $49d2: $88
	adc  c                                           ; $49d3: $89
	adc  c                                           ; $49d4: $89
	adc  b                                           ; $49d5: $88
	adc  b                                           ; $49d6: $88
	sbc  b                                           ; $49d7: $98
	adc  b                                           ; $49d8: $88
	adc  b                                           ; $49d9: $88
	adc  c                                           ; $49da: $89
	sbc  b                                           ; $49db: $98
	adc  b                                           ; $49dc: $88
	adc  b                                           ; $49dd: $88
	sbc  b                                           ; $49de: $98
	sbc  b                                           ; $49df: $98
	adc  b                                           ; $49e0: $88
	adc  b                                           ; $49e1: $88
	adc  b                                           ; $49e2: $88
	add  a                                           ; $49e3: $87
	ld   [hl], a                                     ; $49e4: $77
	ld   [hl], a                                     ; $49e5: $77
	add  a                                           ; $49e6: $87
	ld   [hl], a                                     ; $49e7: $77
	ld   a, b                                        ; $49e8: $78
	adc  b                                           ; $49e9: $88
	adc  c                                           ; $49ea: $89
	sbc  b                                           ; $49eb: $98
	adc  b                                           ; $49ec: $88
	adc  b                                           ; $49ed: $88
	adc  b                                           ; $49ee: $88
	sbc  b                                           ; $49ef: $98
	sbc  b                                           ; $49f0: $98
	adc  b                                           ; $49f1: $88
	adc  b                                           ; $49f2: $88
	adc  c                                           ; $49f3: $89
	adc  b                                           ; $49f4: $88
	sbc  c                                           ; $49f5: $99
	adc  b                                           ; $49f6: $88
	adc  b                                           ; $49f7: $88
	adc  b                                           ; $49f8: $88
	add  a                                           ; $49f9: $87
	ld   a, b                                        ; $49fa: $78
	adc  b                                           ; $49fb: $88
	adc  c                                           ; $49fc: $89
	adc  b                                           ; $49fd: $88
	adc  b                                           ; $49fe: $88
	adc  c                                           ; $49ff: $89
	sbc  c                                           ; $4a00: $99
	adc  b                                           ; $4a01: $88
	adc  b                                           ; $4a02: $88
	ld   [hl], a                                     ; $4a03: $77
	ld   [hl], a                                     ; $4a04: $77
	ld   [hl], a                                     ; $4a05: $77
	ld   [hl], a                                     ; $4a06: $77
	adc  b                                           ; $4a07: $88
	adc  b                                           ; $4a08: $88
	sbc  c                                           ; $4a09: $99
	sbc  b                                           ; $4a0a: $98
	adc  b                                           ; $4a0b: $88
	sbc  b                                           ; $4a0c: $98
	ld   a, c                                        ; $4a0d: $79
	ld   a, b                                        ; $4a0e: $78
	add  a                                           ; $4a0f: $87
	adc  b                                           ; $4a10: $88
	adc  b                                           ; $4a11: $88
	adc  b                                           ; $4a12: $88
	sbc  c                                           ; $4a13: $99
	xor  c                                           ; $4a14: $a9
	sbc  c                                           ; $4a15: $99
	sbc  b                                           ; $4a16: $98
	adc  b                                           ; $4a17: $88
	adc  b                                           ; $4a18: $88
	adc  b                                           ; $4a19: $88
	ld   [hl], a                                     ; $4a1a: $77
	add  a                                           ; $4a1b: $87
	add  a                                           ; $4a1c: $87
	adc  b                                           ; $4a1d: $88
	adc  c                                           ; $4a1e: $89
	sbc  c                                           ; $4a1f: $99
	adc  c                                           ; $4a20: $89
	adc  c                                           ; $4a21: $89
	sbc  e                                           ; $4a22: $9b
	cp   d                                           ; $4a23: $ba
	add  a                                           ; $4a24: $87
	ld   [hl], a                                     ; $4a25: $77
	ld   a, b                                        ; $4a26: $78
	sub  a                                           ; $4a27: $97
	ld   [hl], a                                     ; $4a28: $77
	ld   [hl], a                                     ; $4a29: $77
	ld   [hl], a                                     ; $4a2a: $77
	adc  b                                           ; $4a2b: $88
	adc  b                                           ; $4a2c: $88
	adc  b                                           ; $4a2d: $88
	sbc  c                                           ; $4a2e: $99
	adc  c                                           ; $4a2f: $89
	sbc  c                                           ; $4a30: $99
	xor  c                                           ; $4a31: $a9
	sbc  c                                           ; $4a32: $99
	sbc  b                                           ; $4a33: $98
	ld   [hl], a                                     ; $4a34: $77
	ld   [hl], a                                     ; $4a35: $77
	ld   [hl], a                                     ; $4a36: $77
	ld   [hl], a                                     ; $4a37: $77
	ld   [hl], a                                     ; $4a38: $77
	ld   [hl], a                                     ; $4a39: $77
	ld   a, b                                        ; $4a3a: $78
	ld   [hl], a                                     ; $4a3b: $77
	ld   [hl], a                                     ; $4a3c: $77
	ld   [hl], a                                     ; $4a3d: $77
	ld   [hl], a                                     ; $4a3e: $77
	ld   [hl], a                                     ; $4a3f: $77
	ld   [hl], a                                     ; $4a40: $77
	ld   [hl], a                                     ; $4a41: $77
	ld   a, b                                        ; $4a42: $78
	ld   a, b                                        ; $4a43: $78
	sbc  b                                           ; $4a44: $98
	adc  c                                           ; $4a45: $89
	sbc  b                                           ; $4a46: $98
	sbc  c                                           ; $4a47: $99
	sbc  c                                           ; $4a48: $99
	adc  b                                           ; $4a49: $88
	sbc  b                                           ; $4a4a: $98
	sbc  b                                           ; $4a4b: $98
	adc  b                                           ; $4a4c: $88
	adc  b                                           ; $4a4d: $88
	add  a                                           ; $4a4e: $87
	ld   [hl], a                                     ; $4a4f: $77
	ld   [hl], a                                     ; $4a50: $77
	halt                                             ; $4a51: $76
	ld   [hl], a                                     ; $4a52: $77
	ld   h, [hl]                                     ; $4a53: $66
	ld   h, [hl]                                     ; $4a54: $66
	ld   h, [hl]                                     ; $4a55: $66
	ld   h, [hl]                                     ; $4a56: $66
	ld   h, [hl]                                     ; $4a57: $66
	ld   d, [hl]                                     ; $4a58: $56
	ld   [hl], a                                     ; $4a59: $77
	ld   a, b                                        ; $4a5a: $78
	ld   a, b                                        ; $4a5b: $78
	sbc  c                                           ; $4a5c: $99
	sbc  d                                           ; $4a5d: $9a
	cp   d                                           ; $4a5e: $ba
	cp   h                                           ; $4a5f: $bc
	cp   h                                           ; $4a60: $bc
	jp   z, $a9bb                                    ; $4a61: $ca $bb $a9

	sbc  b                                           ; $4a64: $98
	adc  b                                           ; $4a65: $88
	add  a                                           ; $4a66: $87
	ld   [hl], a                                     ; $4a67: $77
	ld   h, [hl]                                     ; $4a68: $66
	ld   d, l                                        ; $4a69: $55
	ld   b, h                                        ; $4a6a: $44
	inc  sp                                          ; $4a6b: $33
	ld   [hl-], a                                    ; $4a6c: $32
	ld   [de], a                                     ; $4a6d: $12
	ld   b, h                                        ; $4a6e: $44
	ld   b, a                                        ; $4a6f: $47
	adc  c                                           ; $4a70: $89
	cp   h                                           ; $4a71: $bc
	sbc  $ee                                         ; $4a72: $de $ee
	rst  $28                                         ; $4a74: $ef
	db   $fd                                         ; $4a75: $fd
	call c, $98aa                                    ; $4a76: $dc $aa $98
	sbc  b                                           ; $4a79: $98
	adc  c                                           ; $4a7a: $89
	sbc  b                                           ; $4a7b: $98
	adc  d                                           ; $4a7c: $8a
	sbc  c                                           ; $4a7d: $99
	add  a                                           ; $4a7e: $87
	ld   d, l                                        ; $4a7f: $55
	ld   b, e                                        ; $4a80: $43
	ld   hl, $1411                                   ; $4a81: $21 $11 $14
	inc  de                                          ; $4a84: $13
	ld   a, c                                        ; $4a85: $79
	xor  h                                           ; $4a86: $ac
	sbc  $ff                                         ; $4a87: $de $ff
	rst  $28                                         ; $4a89: $ef
	cp   $dc                                         ; $4a8a: $fe $dc
	cp   d                                           ; $4a8c: $ba
	sbc  b                                           ; $4a8d: $98
	adc  b                                           ; $4a8e: $88
	add  a                                           ; $4a8f: $87
	adc  d                                           ; $4a90: $8a
	xor  d                                           ; $4a91: $aa
	xor  d                                           ; $4a92: $aa
	xor  c                                           ; $4a93: $a9
	ld   [hl], l                                     ; $4a94: $75
	ld   b, h                                        ; $4a95: $44
	ld   hl, $1111                                   ; $4a96: $21 $11 $11
	inc  sp                                          ; $4a99: $33
	daa                                              ; $4a9a: $27
	xor  e                                           ; $4a9b: $ab
	call $feef                                       ; $4a9c: $cd $ef $fe
	rst  $28                                         ; $4a9f: $ef
	db   $ec                                         ; $4aa0: $ec
	cp   e                                           ; $4aa1: $bb
	xor  c                                           ; $4aa2: $a9
	sbc  b                                           ; $4aa3: $98
	adc  c                                           ; $4aa4: $89
	adc  c                                           ; $4aa5: $89
	xor  d                                           ; $4aa6: $aa
	cp   d                                           ; $4aa7: $ba
	xor  c                                           ; $4aa8: $a9
	sub  a                                           ; $4aa9: $97
	ld   d, e                                        ; $4aaa: $53
	ld   [hl+], a                                    ; $4aab: $22
	ld   de, $1111                                   ; $4aac: $11 $11 $11
	ld   b, d                                        ; $4aaf: $42
	ld   e, e                                        ; $4ab0: $5b
	xor  h                                           ; $4ab1: $ac
	sbc  $ff                                         ; $4ab2: $de $ff
	db   $ed                                         ; $4ab4: $ed
	xor  $cb                                         ; $4ab5: $ee $cb
	res  3, c                                        ; $4ab7: $cb $99
	sbc  b                                           ; $4ab9: $98
	sbc  c                                           ; $4aba: $99
	adc  d                                           ; $4abb: $8a
	xor  d                                           ; $4abc: $aa
	xor  d                                           ; $4abd: $aa
	sub  a                                           ; $4abe: $97
	ld   [hl], l                                     ; $4abf: $75
	ld   [hl-], a                                    ; $4ac0: $32
	ld   hl, $1111                                   ; $4ac1: $21 $11 $11
	dec  d                                           ; $4ac4: $15
	inc  sp                                          ; $4ac5: $33
	xor  h                                           ; $4ac6: $ac
	xor  h                                           ; $4ac7: $ac
	db   $fd                                         ; $4ac8: $fd
	xor  $cd                                         ; $4ac9: $ee $cd
	db   $ed                                         ; $4acb: $ed
	xor  e                                           ; $4acc: $ab
	cp   d                                           ; $4acd: $ba
	xor  d                                           ; $4ace: $aa
	sbc  c                                           ; $4acf: $99
	sbc  c                                           ; $4ad0: $99
	sbc  d                                           ; $4ad1: $9a
	xor  c                                           ; $4ad2: $a9
	sbc  c                                           ; $4ad3: $99
	ld   [hl], a                                     ; $4ad4: $77
	ld   d, h                                        ; $4ad5: $54
	ld   [hl+], a                                    ; $4ad6: $22
	ld   hl, $1111                                   ; $4ad7: $21 $11 $11
	ld   b, l                                        ; $4ada: $45
	daa                                              ; $4adb: $27
	cp   e                                           ; $4adc: $bb
	set  3, [hl]                                     ; $4add: $cb $de

jr_0d8_4adf:
	db   $ed                                         ; $4adf: $ed
	adc  $ec                                         ; $4ae0: $ce $ec
	xor  e                                           ; $4ae2: $ab
	cp   e                                           ; $4ae3: $bb
	sbc  c                                           ; $4ae4: $99
	xor  d                                           ; $4ae5: $aa
	sbc  b                                           ; $4ae6: $98
	sbc  c                                           ; $4ae7: $99
	sbc  c                                           ; $4ae8: $99
	adc  b                                           ; $4ae9: $88
	halt                                             ; $4aea: $76
	ld   b, e                                        ; $4aeb: $43
	ld   [de], a                                     ; $4aec: $12
	ld   hl, $1111                                   ; $4aed: $21 $11 $11
	ld   h, h                                        ; $4af0: $64
	add  hl, sp                                      ; $4af1: $39
	res  7, [hl]                                     ; $4af2: $cb $be
	db   $dd                                         ; $4af4: $dd
	db   $ec                                         ; $4af5: $ec
	adc  $ea                                         ; $4af6: $ce $ea
	xor  h                                           ; $4af8: $ac
	xor  d                                           ; $4af9: $aa
	xor  c                                           ; $4afa: $a9
	xor  e                                           ; $4afb: $ab
	adc  b                                           ; $4afc: $88
	sbc  c                                           ; $4afd: $99
	adc  b                                           ; $4afe: $88
	add  [hl]                                        ; $4aff: $86
	ld   h, l                                        ; $4b00: $65
	ld   [hl-], a                                    ; $4b01: $32
	inc  h                                           ; $4b02: $24
	ld   de, $1411                                   ; $4b03: $11 $11 $14
	ld   d, e                                        ; $4b06: $53
	sbc  d                                           ; $4b07: $9a
	set  1, [hl]                                     ; $4b08: $cb $ce
	db   $dd                                         ; $4b0a: $dd
	call z, $caee                                    ; $4b0b: $cc $ee $ca
	db   $db                                         ; $4b0e: $db
	cp   c                                           ; $4b0f: $b9
	xor  c                                           ; $4b10: $a9
	xor  c                                           ; $4b11: $a9
	ld   a, c                                        ; $4b12: $79
	adc  d                                           ; $4b13: $8a
	adc  b                                           ; $4b14: $88
	halt                                             ; $4b15: $76
	ld   h, h                                        ; $4b16: $64
	ld   sp, $0122                                   ; $4b17: $31 $22 $01
	ld   de, $2427                                   ; $4b1a: $11 $27 $24
	call c, $debc                                    ; $4b1d: $dc $bc $de
	db   $ec                                         ; $4b20: $ec
	xor  h                                           ; $4b21: $ac
	db   $ec                                         ; $4b22: $ec
	xor  e                                           ; $4b23: $ab
	db   $db                                         ; $4b24: $db
	xor  c                                           ; $4b25: $a9
	xor  d                                           ; $4b26: $aa
	sbc  c                                           ; $4b27: $99
	sbc  c                                           ; $4b28: $99
	adc  b                                           ; $4b29: $88
	ld   [hl], a                                     ; $4b2a: $77
	ld   h, [hl]                                     ; $4b2b: $66
	ld   b, e                                        ; $4b2c: $43
	inc  hl                                          ; $4b2d: $23
	ld   sp, $1112                                   ; $4b2e: $31 $12 $11
	ld   d, [hl]                                     ; $4b31: $56
	jr   c, jr_0d8_4adf                              ; $4b32: $38 $ab

	cp   h                                           ; $4b34: $bc
	db   $ed                                         ; $4b35: $ed
	call z, $ddbb                                    ; $4b36: $cc $bb $dd
	cp   h                                           ; $4b39: $bc
	cp   d                                           ; $4b3a: $ba
	cp   d                                           ; $4b3b: $ba
	xor  d                                           ; $4b3c: $aa
	xor  c                                           ; $4b3d: $a9
	sbc  c                                           ; $4b3e: $99
	sbc  b                                           ; $4b3f: $98
	add  a                                           ; $4b40: $87
	ld   h, l                                        ; $4b41: $65
	ld   b, e                                        ; $4b42: $43
	inc  hl                                          ; $4b43: $23
	ld   sp, $1221                                   ; $4b44: $31 $21 $12
	ld   [hl], l                                     ; $4b47: $75
	add  hl, sp                                      ; $4b48: $39
	set  1, h                                        ; $4b49: $cb $cc
	adc  $da                                         ; $4b4b: $ce $da
	call $bbdb                                       ; $4b4d: $cd $db $bb
	cp   e                                           ; $4b50: $bb
	xor  d                                           ; $4b51: $aa
	xor  d                                           ; $4b52: $aa
	sbc  b                                           ; $4b53: $98
	sbc  c                                           ; $4b54: $99
	add  a                                           ; $4b55: $87
	ld   [hl], a                                     ; $4b56: $77
	ld   h, l                                        ; $4b57: $65
	ld   b, e                                        ; $4b58: $43
	inc  sp                                          ; $4b59: $33
	ld   [hl+], a                                    ; $4b5a: $22
	ld   hl, $6314                                   ; $4b5b: $21 $14 $63
	ld   a, e                                        ; $4b5e: $7b
	cp   h                                           ; $4b5f: $bc
	call z, $cbdc                                    ; $4b60: $cc $dc $cb
	call $cccc                                       ; $4b63: $cd $cc $cc
	xor  d                                           ; $4b66: $aa
	xor  d                                           ; $4b67: $aa
	xor  d                                           ; $4b68: $aa
	sbc  c                                           ; $4b69: $99
	adc  b                                           ; $4b6a: $88
	add  a                                           ; $4b6b: $87
	halt                                             ; $4b6c: $76
	ld   d, h                                        ; $4b6d: $54
	inc  sp                                          ; $4b6e: $33
	ld   b, e                                        ; $4b6f: $43
	ld   [hl+], a                                    ; $4b70: $22
	ld   de, $4426                                   ; $4b71: $11 $26 $44
	xor  h                                           ; $4b74: $ac
	xor  d                                           ; $4b75: $aa
	call z, $acdb                                    ; $4b76: $cc $db $ac
	call c, $cabd                                    ; $4b79: $dc $bd $ca
	xor  d                                           ; $4b7c: $aa
	xor  d                                           ; $4b7d: $aa
	xor  c                                           ; $4b7e: $a9
	sbc  d                                           ; $4b7f: $9a
	adc  b                                           ; $4b80: $88
	add  a                                           ; $4b81: $87
	ld   h, [hl]                                     ; $4b82: $66
	ld   b, e                                        ; $4b83: $43
	inc  [hl]                                        ; $4b84: $34
	ld   b, d                                        ; $4b85: $42
	ld   [hl+], a                                    ; $4b86: $22
	ld   de, $3655                                   ; $4b87: $11 $55 $36
	cp   d                                           ; $4b8a: $ba
	cp   e                                           ; $4b8b: $bb
	call $bdcb                                       ; $4b8c: $cd $cb $bd
	db   $eb                                         ; $4b8f: $eb
	cp   l                                           ; $4b90: $bd
	jp   z, $ba9a                                    ; $4b91: $ca $9a $ba

	sbc  b                                           ; $4b94: $98
	xor  d                                           ; $4b95: $aa
	add  a                                           ; $4b96: $87
	add  a                                           ; $4b97: $87
	ld   h, l                                        ; $4b98: $65
	ld   b, h                                        ; $4b99: $44
	inc  sp                                          ; $4b9a: $33
	ld   [hl-], a                                    ; $4b9b: $32
	ld   de, $6512                                   ; $4b9c: $11 $12 $65
	ld   c, c                                        ; $4b9f: $49
	res  5, e                                        ; $4ba0: $cb $ab
	res  7, d                                        ; $4ba2: $cb $ba
	xor  l                                           ; $4ba4: $ad
	db   $ec                                         ; $4ba5: $ec
	xor  h                                           ; $4ba6: $ac
	res  7, d                                        ; $4ba7: $cb $ba
	sbc  e                                           ; $4ba9: $9b
	sbc  c                                           ; $4baa: $99
	sbc  c                                           ; $4bab: $99
	add  a                                           ; $4bac: $87
	halt                                             ; $4bad: $76
	ld   h, l                                        ; $4bae: $65
	ld   b, e                                        ; $4baf: $43
	ld   b, e                                        ; $4bb0: $43
	inc  hl                                          ; $4bb1: $23
	ld   de, $6413                                   ; $4bb2: $11 $13 $64
	ld   e, d                                        ; $4bb5: $5a
	cp   e                                           ; $4bb6: $bb
	cp   h                                           ; $4bb7: $bc
	res  7, e                                        ; $4bb8: $cb $bb
	cp   l                                           ; $4bba: $bd
	jp   z, $abdd                                    ; $4bbb: $ca $dd $ab

	xor  e                                           ; $4bbe: $ab
	xor  c                                           ; $4bbf: $a9
	adc  b                                           ; $4bc0: $88
	sbc  c                                           ; $4bc1: $99
	add  a                                           ; $4bc2: $87
	halt                                             ; $4bc3: $76
	ld   d, h                                        ; $4bc4: $54
	ld   b, h                                        ; $4bc5: $44
	ld   b, e                                        ; $4bc6: $43
	ld   [hl+], a                                    ; $4bc7: $22
	ld   de, $6515                                   ; $4bc8: $11 $15 $65
	ld   a, e                                        ; $4bcb: $7b
	cp   h                                           ; $4bcc: $bc
	xor  e                                           ; $4bcd: $ab
	xor  h                                           ; $4bce: $ac
	res  7, l                                        ; $4bcf: $cb $bd
	db   $db                                         ; $4bd1: $db
	jp   z, $aacc                                    ; $4bd2: $ca $cc $aa

	xor  e                                           ; $4bd5: $ab
	sbc  c                                           ; $4bd6: $99
	adc  b                                           ; $4bd7: $88
	add  a                                           ; $4bd8: $87
	ld   h, [hl]                                     ; $4bd9: $66
	ld   h, h                                        ; $4bda: $64
	ld   b, h                                        ; $4bdb: $44
	ld   b, e                                        ; $4bdc: $43
	ld   [hl+], a                                    ; $4bdd: $22
	ld   de, $6417                                   ; $4bde: $11 $17 $64
	sbc  d                                           ; $4be1: $9a
	cp   e                                           ; $4be2: $bb
	cp   e                                           ; $4be3: $bb
	call $beba                                       ; $4be4: $cd $ba $be
	set  1, e                                        ; $4be7: $cb $cb
	ld   [$a9a9], a                                  ; $4be9: $ea $a9 $a9
	adc  b                                           ; $4bec: $88
	adc  c                                           ; $4bed: $89
	ld   [hl], a                                     ; $4bee: $77
	ld   h, [hl]                                     ; $4bef: $66
	ld   d, e                                        ; $4bf0: $53
	ld   b, e                                        ; $4bf1: $43
	inc  [hl]                                        ; $4bf2: $34
	ld   hl, $4711                                   ; $4bf3: $21 $11 $47
	ld   [hl], $cb                                   ; $4bf6: $36 $cb
	xor  c                                           ; $4bf8: $a9
	cp   l                                           ; $4bf9: $bd
	cp   e                                           ; $4bfa: $bb
	xor  h                                           ; $4bfb: $ac
	db   $dd                                         ; $4bfc: $dd
	cp   e                                           ; $4bfd: $bb
	res  7, c                                        ; $4bfe: $cb $b9
	cp   e                                           ; $4c00: $bb
	xor  c                                           ; $4c01: $a9
	adc  d                                           ; $4c02: $8a
	sbc  b                                           ; $4c03: $98
	halt                                             ; $4c04: $76
	ld   h, l                                        ; $4c05: $65
	ld   b, e                                        ; $4c06: $43
	inc  [hl]                                        ; $4c07: $34
	ld   [hl-], a                                    ; $4c08: $32
	ld   de, $5423                                   ; $4c09: $11 $23 $54
	ld   e, e                                        ; $4c0c: $5b
	xor  d                                           ; $4c0d: $aa
	cp   e                                           ; $4c0e: $bb
	cp   h                                           ; $4c0f: $bc
	xor  d                                           ; $4c10: $aa
	call z, $dceb                                    ; $4c11: $cc $eb $dc
	res  5, e                                        ; $4c14: $cb $ab
	xor  e                                           ; $4c16: $ab
	sbc  b                                           ; $4c17: $98
	adc  c                                           ; $4c18: $89
	sub  a                                           ; $4c19: $97
	halt                                             ; $4c1a: $76
	ld   d, h                                        ; $4c1b: $54
	inc  [hl]                                        ; $4c1c: $34
	inc  sp                                          ; $4c1d: $33
	ld   [hl+], a                                    ; $4c1e: $22
	ld   de, $7316                                   ; $4c1f: $11 $16 $73
	ld   a, h                                        ; $4c22: $7c
	cp   d                                           ; $4c23: $ba
	sbc  h                                           ; $4c24: $9c
	res  5, d                                        ; $4c25: $cb $aa
	sbc  $cb                                         ; $4c27: $de $cb
	call z, $9aca                                    ; $4c29: $cc $ca $9a
	cp   c                                           ; $4c2c: $b9
	adc  c                                           ; $4c2d: $89
	adc  c                                           ; $4c2e: $89
	ld   [hl], a                                     ; $4c2f: $77
	ld   h, [hl]                                     ; $4c30: $66
	ld   d, h                                        ; $4c31: $54
	ld   b, h                                        ; $4c32: $44
	ld   b, d                                        ; $4c33: $42
	ld   hl, $4711                                   ; $4c34: $21 $11 $47
	scf                                              ; $4c37: $37
	res  7, d                                        ; $4c38: $cb $ba
	cp   e                                           ; $4c3a: $bb
	cp   d                                           ; $4c3b: $ba
	xor  h                                           ; $4c3c: $ac
	call z, $cbcd                                    ; $4c3d: $cc $cd $cb
	cp   d                                           ; $4c40: $ba
	xor  c                                           ; $4c41: $a9
	xor  c                                           ; $4c42: $a9
	xor  c                                           ; $4c43: $a9
	add  a                                           ; $4c44: $87
	ld   h, a                                        ; $4c45: $67
	ld   d, h                                        ; $4c46: $54
	ld   b, h                                        ; $4c47: $44
	ld   b, e                                        ; $4c48: $43
	ld   [hl-], a                                    ; $4c49: $32
	ld   de, $6513                                   ; $4c4a: $11 $13 $65
	ld   l, d                                        ; $4c4d: $6a
	xor  d                                           ; $4c4e: $aa
	cp   e                                           ; $4c4f: $bb
	xor  e                                           ; $4c50: $ab
	cp   e                                           ; $4c51: $bb
	call $dbdc                                       ; $4c52: $cd $dc $db
	cp   h                                           ; $4c55: $bc
	xor  d                                           ; $4c56: $aa
	sbc  d                                           ; $4c57: $9a
	adc  d                                           ; $4c58: $8a
	adc  b                                           ; $4c59: $88
	sub  a                                           ; $4c5a: $97
	ld   [hl], l                                     ; $4c5b: $75
	ld   d, h                                        ; $4c5c: $54
	ld   b, h                                        ; $4c5d: $44
	inc  sp                                          ; $4c5e: $33
	ld   [hl+], a                                    ; $4c5f: $22
	ld   de, $4527                                   ; $4c60: $11 $27 $45
	res  7, e                                        ; $4c63: $cb $bb
	xor  d                                           ; $4c65: $aa
	call z, $cd9b                                    ; $4c66: $cc $9b $cd
	call c, $cbbd                                    ; $4c69: $dc $bd $cb
	sbc  d                                           ; $4c6c: $9a
	cp   d                                           ; $4c6d: $ba
	xor  b                                           ; $4c6e: $a8
	adc  b                                           ; $4c6f: $88
	halt                                             ; $4c70: $76
	ld   d, [hl]                                     ; $4c71: $56
	inc  [hl]                                        ; $4c72: $34
	ld   d, l                                        ; $4c73: $55
	ld   [hl-], a                                    ; $4c74: $32
	ld   hl, $7612                                   ; $4c75: $21 $12 $76
	ld   e, b                                        ; $4c78: $58
	xor  h                                           ; $4c79: $ac
	cp   d                                           ; $4c7a: $ba
	xor  l                                           ; $4c7b: $ad
	ret                                              ; $4c7c: $c9


	call $ccdd                                       ; $4c7d: $cd $dd $cc
	call z, $a9aa                                    ; $4c80: $cc $aa $a9
	sbc  c                                           ; $4c83: $99
	sbc  c                                           ; $4c84: $99
	add  a                                           ; $4c85: $87
	ld   h, l                                        ; $4c86: $65
	ld   b, e                                        ; $4c87: $43
	ld   b, h                                        ; $4c88: $44
	inc  sp                                          ; $4c89: $33
	ld   [hl-], a                                    ; $4c8a: $32
	ld   de, $5417                                   ; $4c8b: $11 $17 $54
	res  3, c                                        ; $4c8e: $cb $99
	cp   e                                           ; $4c90: $bb
	xor  l                                           ; $4c91: $ad
	xor  d                                           ; $4c92: $aa
	db   $ed                                         ; $4c93: $ed
	cp   h                                           ; $4c94: $bc
	call z, $aaab                                    ; $4c95: $cc $ab $aa
	xor  c                                           ; $4c98: $a9
	sbc  c                                           ; $4c99: $99
	sbc  b                                           ; $4c9a: $98
	ld   [hl], a                                     ; $4c9b: $77
	ld   h, l                                        ; $4c9c: $65
	inc  sp                                          ; $4c9d: $33
	ld   b, e                                        ; $4c9e: $43
	ld   [hl-], a                                    ; $4c9f: $32
	ld   hl, $6514                                   ; $4ca0: $21 $14 $65
	ld   l, d                                        ; $4ca3: $6a
	cp   e                                           ; $4ca4: $bb
	xor  e                                           ; $4ca5: $ab
	cp   l                                           ; $4ca6: $bd
	ret  z                                           ; $4ca7: $c8

	call $cbdd                                       ; $4ca8: $cd $dd $cb
	db   $dd                                         ; $4cab: $dd
	xor  d                                           ; $4cac: $aa
	xor  c                                           ; $4cad: $a9
	sbc  b                                           ; $4cae: $98
	ld   a, b                                        ; $4caf: $78
	sub  a                                           ; $4cb0: $97
	ld   d, l                                        ; $4cb1: $55
	ld   d, e                                        ; $4cb2: $53
	ld   d, e                                        ; $4cb3: $53
	inc  [hl]                                        ; $4cb4: $34
	ld   de, $5512                                   ; $4cb5: $11 $12 $55
	add  hl, sp                                      ; $4cb8: $39
	cp   d                                           ; $4cb9: $ba
	cp   d                                           ; $4cba: $ba
	xor  d                                           ; $4cbb: $aa
	cp   c                                           ; $4cbc: $b9
	db   $dd                                         ; $4cbd: $dd
	db   $dd                                         ; $4cbe: $dd
	call z, $abbb                                    ; $4cbf: $cc $bb $ab
	xor  d                                           ; $4cc2: $aa
	xor  c                                           ; $4cc3: $a9
	sbc  b                                           ; $4cc4: $98
	sub  [hl]                                        ; $4cc5: $96
	ld   h, [hl]                                     ; $4cc6: $66
	ld   b, h                                        ; $4cc7: $44
	ld   b, l                                        ; $4cc8: $45
	inc  sp                                          ; $4cc9: $33
	ld   hl, $3511                                   ; $4cca: $21 $11 $35
	ld   e, c                                        ; $4ccd: $59
	xor  d                                           ; $4cce: $aa
	xor  d                                           ; $4ccf: $aa
	xor  d                                           ; $4cd0: $aa
	jp   z, $ccbd                                    ; $4cd1: $ca $bd $cc

	db   $ed                                         ; $4cd4: $ed
	xor  h                                           ; $4cd5: $ac
	xor  d                                           ; $4cd6: $aa
	xor  d                                           ; $4cd7: $aa
	xor  d                                           ; $4cd8: $aa

jr_0d8_4cd9:
	sbc  b                                           ; $4cd9: $98
	add  a                                           ; $4cda: $87
	ld   h, l                                        ; $4cdb: $65
	ld   b, e                                        ; $4cdc: $43
	ld   b, l                                        ; $4cdd: $45
	ld   b, d                                        ; $4cde: $42
	ld   hl, $4611                                   ; $4cdf: $21 $11 $46
	ld   e, c                                        ; $4ce2: $59
	sbc  c                                           ; $4ce3: $99
	cp   d                                           ; $4ce4: $ba
	xor  b                                           ; $4ce5: $a8
	cp   e                                           ; $4ce6: $bb
	call $ccdd                                       ; $4ce7: $cd $dd $cc
	xor  e                                           ; $4cea: $ab
	xor  h                                           ; $4ceb: $ac
	cp   d                                           ; $4cec: $ba
	xor  c                                           ; $4ced: $a9
	sub  a                                           ; $4cee: $97
	halt                                             ; $4cef: $76
	ld   d, l                                        ; $4cf0: $55
	inc  sp                                          ; $4cf1: $33
	ld   b, l                                        ; $4cf2: $45
	ld   [hl-], a                                    ; $4cf3: $32
	ld   hl, $7415                                   ; $4cf4: $21 $15 $74
	ld   e, d                                        ; $4cf7: $5a
	cp   c                                           ; $4cf8: $b9
	xor  c                                           ; $4cf9: $a9
	xor  h                                           ; $4cfa: $ac
	xor  c                                           ; $4cfb: $a9
	rst  JumpTable                                         ; $4cfc: $df
	call c, $cacd                                    ; $4cfd: $dc $cd $ca
	sbc  c                                           ; $4d00: $99
	cp   c                                           ; $4d01: $b9
	sbc  c                                           ; $4d02: $99
	sbc  b                                           ; $4d03: $98
	ld   h, l                                        ; $4d04: $65
	ld   b, e                                        ; $4d05: $43
	inc  [hl]                                        ; $4d06: $34
	ld   b, e                                        ; $4d07: $43
	ld   sp, $5611                                   ; $4d08: $31 $11 $56
	ld   c, b                                        ; $4d0b: $48
	cp   d                                           ; $4d0c: $ba
	xor  c                                           ; $4d0d: $a9
	cp   e                                           ; $4d0e: $bb
	xor  c                                           ; $4d0f: $a9
	cp   l                                           ; $4d10: $bd
	db   $ed                                         ; $4d11: $ed
	db   $db                                         ; $4d12: $db
	res  5, e                                        ; $4d13: $cb $ab
	xor  e                                           ; $4d15: $ab
	xor  d                                           ; $4d16: $aa
	adc  b                                           ; $4d17: $88
	ld   [hl], l                                     ; $4d18: $75
	ld   d, d                                        ; $4d19: $52
	inc  h                                           ; $4d1a: $24
	ld   b, e                                        ; $4d1b: $43
	ld   hl, $6512                                   ; $4d1c: $21 $12 $65
	jr   c, jr_0d8_4cd9                              ; $4d1f: $38 $b8

	xor  d                                           ; $4d21: $aa
	sbc  d                                           ; $4d22: $9a
	xor  b                                           ; $4d23: $a8
	cp   [hl]                                        ; $4d24: $be
	db   $ec                                         ; $4d25: $ec
	db   $dd                                         ; $4d26: $dd
	call c, $bbab                                    ; $4d27: $dc $ab $bb
	sbc  b                                           ; $4d2a: $98
	xor  b                                           ; $4d2b: $a8
	add  [hl]                                        ; $4d2c: $86
	ld   b, d                                        ; $4d2d: $42
	inc  [hl]                                        ; $4d2e: $34
	ld   [hl+], a                                    ; $4d2f: $22
	ld   hl, $7325                                   ; $4d30: $21 $25 $73
	adc  e                                           ; $4d33: $8b
	adc  c                                           ; $4d34: $89
	sbc  c                                           ; $4d35: $99
	cp   d                                           ; $4d36: $ba
	xor  c                                           ; $4d37: $a9
	db   $dd                                         ; $4d38: $dd
	call z, $bbcd                                    ; $4d39: $cc $cd $bb
	cp   e                                           ; $4d3c: $bb
	cp   b                                           ; $4d3d: $b8
	sbc  b                                           ; $4d3e: $98
	add  a                                           ; $4d3f: $87
	ld   d, e                                        ; $4d40: $53
	dec  [hl]                                        ; $4d41: $35
	ld   b, d                                        ; $4d42: $42
	ld   [hl-], a                                    ; $4d43: $32
	ld   [de], a                                     ; $4d44: $12
	halt                                             ; $4d45: $76
	ld   e, c                                        ; $4d46: $59
	xor  c                                           ; $4d47: $a9
	xor  b                                           ; $4d48: $a8
	adc  d                                           ; $4d49: $8a
	xor  c                                           ; $4d4a: $a9
	cp   l                                           ; $4d4b: $bd
	db   $dd                                         ; $4d4c: $dd
	db   $db                                         ; $4d4d: $db
	call z, $aaaa                                    ; $4d4e: $cc $aa $aa
	sbc  c                                           ; $4d51: $99
	ld   [hl], a                                     ; $4d52: $77
	ld   h, h                                        ; $4d53: $64
	dec  [hl]                                        ; $4d54: $35
	ld   b, e                                        ; $4d55: $43
	ld   [hl-], a                                    ; $4d56: $32
	dec  [hl]                                        ; $4d57: $35
	ld   h, l                                        ; $4d58: $65
	ld   a, c                                        ; $4d59: $79
	sbc  d                                           ; $4d5a: $9a
	sbc  c                                           ; $4d5b: $99
	sbc  c                                           ; $4d5c: $99
	adc  c                                           ; $4d5d: $89
	cp   h                                           ; $4d5e: $bc
	call c, $bbcc                                    ; $4d5f: $dc $cc $bb
	xor  d                                           ; $4d62: $aa
	xor  c                                           ; $4d63: $a9
	add  a                                           ; $4d64: $87
	halt                                             ; $4d65: $76
	ld   b, e                                        ; $4d66: $43
	dec  [hl]                                        ; $4d67: $35
	ld   b, d                                        ; $4d68: $42
	ld   [de], a                                     ; $4d69: $12
	adc  d                                           ; $4d6a: $8a
	ld   b, [hl]                                     ; $4d6b: $46
	res  2, a                                        ; $4d6c: $cb $97
	adc  c                                           ; $4d6e: $89
	xor  c                                           ; $4d6f: $a9
	adc  d                                           ; $4d70: $8a
	xor  $9a                                         ; $4d71: $ee $9a
	cp   l                                           ; $4d73: $bd
	xor  c                                           ; $4d74: $a9
	adc  c                                           ; $4d75: $89
	add  $54                                         ; $4d76: $c6 $54
	ld   b, l                                        ; $4d78: $45
	ld   b, h                                        ; $4d79: $44
	inc  [hl]                                        ; $4d7a: $34
	inc  sp                                          ; $4d7b: $33
	ld   a, c                                        ; $4d7c: $79
	sbc  b                                           ; $4d7d: $98
	xor  d                                           ; $4d7e: $aa
	adc  d                                           ; $4d7f: $8a
	sbc  c                                           ; $4d80: $99
	sbc  b                                           ; $4d81: $98
	sbc  d                                           ; $4d82: $9a
	call c, $bbbc                                    ; $4d83: $dc $bc $bb
	sbc  c                                           ; $4d86: $99
	sbc  c                                           ; $4d87: $99
	ld   [hl], h                                     ; $4d88: $74
	ld   b, h                                        ; $4d89: $44
	ld   b, e                                        ; $4d8a: $43
	inc  sp                                          ; $4d8b: $33
	ld   b, e                                        ; $4d8c: $43
	ld   e, b                                        ; $4d8d: $58
	adc  e                                           ; $4d8e: $8b
	cp   d                                           ; $4d8f: $ba
	xor  e                                           ; $4d90: $ab
	ld   a, c                                        ; $4d91: $79
	sbc  b                                           ; $4d92: $98
	sbc  e                                           ; $4d93: $9b
	call $badc                                       ; $4d94: $cd $dc $ba
	sbc  c                                           ; $4d97: $99
	add  a                                           ; $4d98: $87
	halt                                             ; $4d99: $76
	inc  sp                                          ; $4d9a: $33
	inc  sp                                          ; $4d9b: $33
	ld   [hl+], a                                    ; $4d9c: $22
	ld   [hl+], a                                    ; $4d9d: $22
	sbc  e                                           ; $4d9e: $9b
	sbc  c                                           ; $4d9f: $99
	xor  e                                           ; $4da0: $ab
	cp   c                                           ; $4da1: $b9
	sbc  c                                           ; $4da2: $99
	xor  c                                           ; $4da3: $a9
	sbc  d                                           ; $4da4: $9a
	adc  $bb                                         ; $4da5: $ce $bb
	xor  h                                           ; $4da7: $ac
	xor  b                                           ; $4da8: $a8
	add  [hl]                                        ; $4da9: $86
	ld   h, h                                        ; $4daa: $64
	inc  sp                                          ; $4dab: $33
	inc  sp                                          ; $4dac: $33
	ld   de, $a927                                   ; $4dad: $11 $27 $a9
	ld   a, d                                        ; $4db0: $7a
	jp   z, $bbaa                                    ; $4db1: $ca $aa $bb

	adc  b                                           ; $4db4: $88
	cp   l                                           ; $4db5: $bd
	res  7, e                                        ; $4db6: $cb $bb
	cp   d                                           ; $4db8: $ba
	sbc  b                                           ; $4db9: $98
	ld   h, l                                        ; $4dba: $65
	ld   b, e                                        ; $4dbb: $43
	ld   [hl+], a                                    ; $4dbc: $22
	ld   [hl+], a                                    ; $4dbd: $22
	dec  [hl]                                        ; $4dbe: $35
	ld   a, d                                        ; $4dbf: $7a
	xor  e                                           ; $4dc0: $ab
	cp   d                                           ; $4dc1: $ba
	xor  c                                           ; $4dc2: $a9
	sbc  c                                           ; $4dc3: $99
	sbc  e                                           ; $4dc4: $9b
	cp   e                                           ; $4dc5: $bb
	call $a9aa                                       ; $4dc6: $cd $aa $a9
	sub  a                                           ; $4dc9: $97
	ld   h, [hl]                                     ; $4dca: $66
	ld   h, h                                        ; $4dcb: $64
	ld   hl, $5613                                   ; $4dcc: $21 $13 $56
	sbc  c                                           ; $4dcf: $99
	cp   d                                           ; $4dd0: $ba
	jp   z, $8989                                    ; $4dd1: $ca $89 $89

	cp   d                                           ; $4dd4: $ba
	sbc  h                                           ; $4dd5: $9c
	jp   c, $89a7                                    ; $4dd6: $da $a7 $89

	ld   [hl], l                                     ; $4dd9: $75
	ld   h, [hl]                                     ; $4dda: $66
	ld   d, e                                        ; $4ddb: $53
	ld   [hl+], a                                    ; $4ddc: $22
	ld   b, l                                        ; $4ddd: $45
	ld   a, b                                        ; $4dde: $78
	xor  h                                           ; $4ddf: $ac
	adc  d                                           ; $4de0: $8a
	cp   d                                           ; $4de1: $ba
	sbc  d                                           ; $4de2: $9a
	xor  d                                           ; $4de3: $aa
	xor  c                                           ; $4de4: $a9
	cp   e                                           ; $4de5: $bb
	xor  c                                           ; $4de6: $a9
	ld   a, b                                        ; $4de7: $78
	ld   [hl], l                                     ; $4de8: $75
	ld   h, [hl]                                     ; $4de9: $66
	ld   d, e                                        ; $4dea: $53
	inc  h                                           ; $4deb: $24
	ld   b, l                                        ; $4dec: $45
	ld   l, b                                        ; $4ded: $68
	xor  c                                           ; $4dee: $a9
	sbc  d                                           ; $4def: $9a
	xor  c                                           ; $4df0: $a9
	xor  e                                           ; $4df1: $ab
	xor  d                                           ; $4df2: $aa
	cp   h                                           ; $4df3: $bc
	cp   c                                           ; $4df4: $b9
	sub  a                                           ; $4df5: $97
	sub  [hl]                                        ; $4df6: $96
	ld   d, [hl]                                     ; $4df7: $56
	ld   h, [hl]                                     ; $4df8: $66
	ld   d, h                                        ; $4df9: $54
	ld   b, l                                        ; $4dfa: $45
	ld   d, l                                        ; $4dfb: $55
	ld   [hl], a                                     ; $4dfc: $77
	adc  e                                           ; $4dfd: $8b
	adc  c                                           ; $4dfe: $89
	db   $db                                         ; $4dff: $db
	sbc  c                                           ; $4e00: $99
	jp   z, $9abb                                    ; $4e01: $ca $bb $9a

	sub  [hl]                                        ; $4e04: $96
	ld   d, l                                        ; $4e05: $55
	ld   h, a                                        ; $4e06: $67
	ld   h, l                                        ; $4e07: $65
	ld   d, [hl]                                     ; $4e08: $56
	ld   d, l                                        ; $4e09: $55
	ld   d, a                                        ; $4e0a: $57
	adc  b                                           ; $4e0b: $88
	adc  c                                           ; $4e0c: $89
	cp   l                                           ; $4e0d: $bd
	cp   b                                           ; $4e0e: $b8
	cp   e                                           ; $4e0f: $bb
	cp   e                                           ; $4e10: $bb
	xor  d                                           ; $4e11: $aa
	xor  b                                           ; $4e12: $a8
	ld   h, h                                        ; $4e13: $64
	ld   b, [hl]                                     ; $4e14: $46
	ld   [hl], l                                     ; $4e15: $75
	ld   d, l                                        ; $4e16: $55
	halt                                             ; $4e17: $76
	ld   d, [hl]                                     ; $4e18: $56
	adc  c                                           ; $4e19: $89
	sbc  b                                           ; $4e1a: $98
	adc  e                                           ; $4e1b: $8b
	xor  e                                           ; $4e1c: $ab
	xor  b                                           ; $4e1d: $a8
	db   $db                                         ; $4e1e: $db
	and  [hl]                                        ; $4e1f: $a6
	sbc  c                                           ; $4e20: $99
	ld   [hl], l                                     ; $4e21: $75
	ld   c, b                                        ; $4e22: $48
	ld   h, [hl]                                     ; $4e23: $66
	ld   b, l                                        ; $4e24: $45
	ld   [hl], a                                     ; $4e25: $77
	halt                                             ; $4e26: $76
	adc  b                                           ; $4e27: $88
	sbc  d                                           ; $4e28: $9a
	cp   c                                           ; $4e29: $b9
	sbc  e                                           ; $4e2a: $9b
	sbc  b                                           ; $4e2b: $98
	adc  h                                           ; $4e2c: $8c
	xor  d                                           ; $4e2d: $aa
	ld   h, h                                        ; $4e2e: $64
	ld   [hl], a                                     ; $4e2f: $77
	ld   [hl], l                                     ; $4e30: $75
	ld   h, a                                        ; $4e31: $67
	halt                                             ; $4e32: $76
	ld   b, [hl]                                     ; $4e33: $46
	sbc  b                                           ; $4e34: $98
	add  [hl]                                        ; $4e35: $86
	sbc  l                                           ; $4e36: $9d
	ret                                              ; $4e37: $c9


	adc  h                                           ; $4e38: $8c
	cp   b                                           ; $4e39: $b8
	ld   a, c                                        ; $4e3a: $79
	cp   b                                           ; $4e3b: $b8
	ld   d, [hl]                                     ; $4e3c: $56
	adc  b                                           ; $4e3d: $88
	ld   d, h                                        ; $4e3e: $54
	ld   d, [hl]                                     ; $4e3f: $56
	halt                                             ; $4e40: $76
	ld   e, b                                        ; $4e41: $58
	xor  c                                           ; $4e42: $a9
	ld   h, a                                        ; $4e43: $67
	cp   l                                           ; $4e44: $bd
	or   a                                           ; $4e45: $b7
	xor  e                                           ; $4e46: $ab
	sbc  b                                           ; $4e47: $98
	adc  e                                           ; $4e48: $8b
	halt                                             ; $4e49: $76
	ld   a, b                                        ; $4e4a: $78
	ld   h, [hl]                                     ; $4e4b: $66
	ld   d, [hl]                                     ; $4e4c: $56
	ld   [hl], l                                     ; $4e4d: $75
	ld   l, b                                        ; $4e4e: $68
	add  a                                           ; $4e4f: $87
	ld   a, c                                        ; $4e50: $79
	xor  l                                           ; $4e51: $ad
	xor  b                                           ; $4e52: $a8
	sbc  c                                           ; $4e53: $99
	sbc  e                                           ; $4e54: $9b
	add  [hl]                                        ; $4e55: $86
	sbc  b                                           ; $4e56: $98
	sub  [hl]                                        ; $4e57: $96
	ld   d, a                                        ; $4e58: $57
	ld   [hl], l                                     ; $4e59: $75
	ld   e, d                                        ; $4e5a: $5a
	sub  a                                           ; $4e5b: $97
	sub  a                                           ; $4e5c: $97
	sbc  b                                           ; $4e5d: $98
	ld   a, c                                        ; $4e5e: $79
	xor  e                                           ; $4e5f: $ab
	sbc  d                                           ; $4e60: $9a
	add  [hl]                                        ; $4e61: $86
	xor  b                                           ; $4e62: $a8
	ld   [hl], a                                     ; $4e63: $77
	adc  c                                           ; $4e64: $89
	ld   [hl], l                                     ; $4e65: $75
	ld   h, a                                        ; $4e66: $67
	sub  a                                           ; $4e67: $97
	ld   h, a                                        ; $4e68: $67
	adc  c                                           ; $4e69: $89
	sbc  b                                           ; $4e6a: $98
	ld   a, d                                        ; $4e6b: $7a
	rst  ToBoot                                         ; $4e6c: $c7
	ld   a, d                                        ; $4e6d: $7a
	adc  c                                           ; $4e6e: $89
	ld   [hl], l                                     ; $4e6f: $75
	sbc  d                                           ; $4e70: $9a
	ld   h, l                                        ; $4e71: $65
	ld   a, b                                        ; $4e72: $78
	add  [hl]                                        ; $4e73: $86
	ld   a, c                                        ; $4e74: $79
	sbc  b                                           ; $4e75: $98
	ld   a, b                                        ; $4e76: $78
	adc  c                                           ; $4e77: $89
	adc  c                                           ; $4e78: $89
	sub  a                                           ; $4e79: $97
	sub  a                                           ; $4e7a: $97
	adc  d                                           ; $4e7b: $8a
	adc  c                                           ; $4e7c: $89
	sub  a                                           ; $4e7d: $97
	halt                                             ; $4e7e: $76
	ld   l, h                                        ; $4e7f: $6c
	sub  l                                           ; $4e80: $95
	add  a                                           ; $4e81: $87
	ld   a, c                                        ; $4e82: $79
	sub  a                                           ; $4e83: $97
	sbc  c                                           ; $4e84: $99
	ld   a, e                                        ; $4e85: $7b
	ld   h, a                                        ; $4e86: $67
	reti                                             ; $4e87: $d9


	ld   h, [hl]                                     ; $4e88: $66
	sbc  c                                           ; $4e89: $99
	sub  l                                           ; $4e8a: $95
	adc  e                                           ; $4e8b: $8b
	ld   h, l                                        ; $4e8c: $65
	sbc  b                                           ; $4e8d: $98
	adc  c                                           ; $4e8e: $89
	ld   d, l                                        ; $4e8f: $55
	xor  e                                           ; $4e90: $ab
	sub  [hl]                                        ; $4e91: $96
	ld   a, c                                        ; $4e92: $79
	xor  c                                           ; $4e93: $a9
	add  a                                           ; $4e94: $87
	xor  c                                           ; $4e95: $a9
	ld   d, [hl]                                     ; $4e96: $56
	xor  e                                           ; $4e97: $ab
	sub  [hl]                                        ; $4e98: $96
	ld   l, b                                        ; $4e99: $68
	halt                                             ; $4e9a: $76
	sbc  b                                           ; $4e9b: $98
	xor  b                                           ; $4e9c: $a8
	ld   e, b                                        ; $4e9d: $58
	xor  c                                           ; $4e9e: $a9
	add  a                                           ; $4e9f: $87
	ld   a, b                                        ; $4ea0: $78
	sbc  b                                           ; $4ea1: $98
	ld   a, c                                        ; $4ea2: $79
	sub  a                                           ; $4ea3: $97
	ld   h, l                                        ; $4ea4: $65
	xor  h                                           ; $4ea5: $ac
	add  l                                           ; $4ea6: $85
	ld   l, b                                        ; $4ea7: $68
	sbc  b                                           ; $4ea8: $98
	ld   a, b                                        ; $4ea9: $78
	cp   d                                           ; $4eaa: $ba
	ld   d, a                                        ; $4eab: $57
	ld   a, c                                        ; $4eac: $79
	sbc  c                                           ; $4ead: $99
	sub  a                                           ; $4eae: $97
	xor  c                                           ; $4eaf: $a9
	halt                                             ; $4eb0: $76
	adc  c                                           ; $4eb1: $89
	ld   h, a                                        ; $4eb2: $67
	sbc  c                                           ; $4eb3: $99
	add  [hl]                                        ; $4eb4: $86
	sbc  b                                           ; $4eb5: $98
	ld   a, c                                        ; $4eb6: $79
	sub  a                                           ; $4eb7: $97
	adc  c                                           ; $4eb8: $89
	sbc  c                                           ; $4eb9: $99
	ld   [hl], l                                     ; $4eba: $75
	adc  e                                           ; $4ebb: $8b
	and  a                                           ; $4ebc: $a7
	ld   l, c                                        ; $4ebd: $69
	xor  b                                           ; $4ebe: $a8
	ld   h, [hl]                                     ; $4ebf: $66
	xor  c                                           ; $4ec0: $a9
	sub  a                                           ; $4ec1: $97
	ld   a, c                                        ; $4ec2: $79
	sub  a                                           ; $4ec3: $97
	ld   h, a                                        ; $4ec4: $67
	sbc  d                                           ; $4ec5: $9a
	add  [hl]                                        ; $4ec6: $86
	adc  c                                           ; $4ec7: $89
	sbc  b                                           ; $4ec8: $98
	ld   d, [hl]                                     ; $4ec9: $56
	ld   a, d                                        ; $4eca: $7a
	or   [hl]                                        ; $4ecb: $b6
	adc  b                                           ; $4ecc: $88
	sbc  b                                           ; $4ecd: $98
	ld   d, [hl]                                     ; $4ece: $56
	xor  d                                           ; $4ecf: $aa
	ld   h, [hl]                                     ; $4ed0: $66
	ld   a, c                                        ; $4ed1: $79
	and  [hl]                                        ; $4ed2: $a6
	ld   l, c                                        ; $4ed3: $69
	sbc  c                                           ; $4ed4: $99
	add  [hl]                                        ; $4ed5: $86
	sbc  c                                           ; $4ed6: $99
	ld   [hl], a                                     ; $4ed7: $77
	ld   h, a                                        ; $4ed8: $67
	cp   d                                           ; $4ed9: $ba
	ld   a, c                                        ; $4eda: $79
	add  a                                           ; $4edb: $87
	add  [hl]                                        ; $4edc: $86
	adc  c                                           ; $4edd: $89
	ld   a, c                                        ; $4ede: $79
	add  a                                           ; $4edf: $87
	ld   a, b                                        ; $4ee0: $78
	ld   a, b                                        ; $4ee1: $78
	sbc  b                                           ; $4ee2: $98
	adc  c                                           ; $4ee3: $89
	sub  a                                           ; $4ee4: $97
	ld   h, a                                        ; $4ee5: $67
	sbc  c                                           ; $4ee6: $99
	ld   l, c                                        ; $4ee7: $69
	xor  b                                           ; $4ee8: $a8
	halt                                             ; $4ee9: $76
	ld   a, c                                        ; $4eea: $79
	halt                                             ; $4eeb: $76
	adc  b                                           ; $4eec: $88
	sbc  c                                           ; $4eed: $99
	ld   a, c                                        ; $4eee: $79
	adc  b                                           ; $4eef: $88
	sbc  c                                           ; $4ef0: $99
	ld   [hl], a                                     ; $4ef1: $77
	sbc  b                                           ; $4ef2: $98
	sub  a                                           ; $4ef3: $97
	ld   a, b                                        ; $4ef4: $78
	sub  [hl]                                        ; $4ef5: $96
	ld   a, c                                        ; $4ef6: $79
	adc  b                                           ; $4ef7: $88
	ld   [hl], a                                     ; $4ef8: $77
	sbc  d                                           ; $4ef9: $9a
	ld   [hl], a                                     ; $4efa: $77
	adc  b                                           ; $4efb: $88
	sub  a                                           ; $4efc: $97
	ld   h, a                                        ; $4efd: $67
	sbc  c                                           ; $4efe: $99
	add  a                                           ; $4eff: $87
	ld   a, b                                        ; $4f00: $78
	sbc  c                                           ; $4f01: $99
	ld   [hl], a                                     ; $4f02: $77
	adc  b                                           ; $4f03: $88
	add  a                                           ; $4f04: $87
	ld   a, b                                        ; $4f05: $78
	add  a                                           ; $4f06: $87
	add  a                                           ; $4f07: $87
	sbc  c                                           ; $4f08: $99
	adc  b                                           ; $4f09: $88
	adc  b                                           ; $4f0a: $88
	ld   [hl], a                                     ; $4f0b: $77
	ld   a, b                                        ; $4f0c: $78
	sbc  c                                           ; $4f0d: $99
	add  a                                           ; $4f0e: $87
	adc  b                                           ; $4f0f: $88
	add  a                                           ; $4f10: $87
	ld   a, c                                        ; $4f11: $79
	sbc  b                                           ; $4f12: $98
	add  a                                           ; $4f13: $87
	sbc  c                                           ; $4f14: $99
	ld   [hl], a                                     ; $4f15: $77
	ld   a, b                                        ; $4f16: $78
	xor  b                                           ; $4f17: $a8
	ld   a, b                                        ; $4f18: $78
	sbc  b                                           ; $4f19: $98
	ld   [hl], a                                     ; $4f1a: $77
	sbc  d                                           ; $4f1b: $9a
	sbc  b                                           ; $4f1c: $98
	ld   a, b                                        ; $4f1d: $78
	sub  a                                           ; $4f1e: $97
	ld   [hl], a                                     ; $4f1f: $77
	adc  c                                           ; $4f20: $89
	add  [hl]                                        ; $4f21: $86
	ld   a, c                                        ; $4f22: $79
	sbc  c                                           ; $4f23: $99
	ld   [hl], a                                     ; $4f24: $77
	sbc  b                                           ; $4f25: $98
	ld   [hl], a                                     ; $4f26: $77
	ld   a, c                                        ; $4f27: $79
	add  a                                           ; $4f28: $87
	ld   a, c                                        ; $4f29: $79
	sbc  b                                           ; $4f2a: $98
	adc  c                                           ; $4f2b: $89
	ld   a, b                                        ; $4f2c: $78
	adc  b                                           ; $4f2d: $88
	add  a                                           ; $4f2e: $87
	ld   a, c                                        ; $4f2f: $79
	sub  a                                           ; $4f30: $97
	ld   [hl], a                                     ; $4f31: $77
	adc  c                                           ; $4f32: $89
	ld   a, b                                        ; $4f33: $78
	adc  b                                           ; $4f34: $88
	adc  b                                           ; $4f35: $88
	ld   a, b                                        ; $4f36: $78
	adc  b                                           ; $4f37: $88
	adc  b                                           ; $4f38: $88
	adc  c                                           ; $4f39: $89
	add  a                                           ; $4f3a: $87
	ld   a, b                                        ; $4f3b: $78
	adc  b                                           ; $4f3c: $88
	ld   a, b                                        ; $4f3d: $78
	adc  c                                           ; $4f3e: $89
	ld   [hl], a                                     ; $4f3f: $77
	adc  b                                           ; $4f40: $88
	add  a                                           ; $4f41: $87
	adc  c                                           ; $4f42: $89
	adc  b                                           ; $4f43: $88
	ld   a, b                                        ; $4f44: $78
	sbc  b                                           ; $4f45: $98
	add  a                                           ; $4f46: $87
	adc  b                                           ; $4f47: $88
	adc  b                                           ; $4f48: $88
	ld   a, b                                        ; $4f49: $78
	adc  b                                           ; $4f4a: $88
	adc  b                                           ; $4f4b: $88
	sbc  b                                           ; $4f4c: $98
	adc  b                                           ; $4f4d: $88
	adc  b                                           ; $4f4e: $88
	add  a                                           ; $4f4f: $87
	adc  b                                           ; $4f50: $88
	adc  b                                           ; $4f51: $88
	ld   a, b                                        ; $4f52: $78
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
	ld   a, b                                        ; $5030: $78
	adc  b                                           ; $5031: $88
	add  a                                           ; $5032: $87
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
	ld   a, b                                        ; $504e: $78
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
	adc  c                                           ; $5061: $89
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
	ld   a, b                                        ; $5076: $78
	adc  b                                           ; $5077: $88
	ld   a, b                                        ; $5078: $78
	sbc  b                                           ; $5079: $98
	adc  b                                           ; $507a: $88
	adc  c                                           ; $507b: $89
	adc  b                                           ; $507c: $88
	adc  c                                           ; $507d: $89
	sbc  b                                           ; $507e: $98
	add  a                                           ; $507f: $87
	adc  b                                           ; $5080: $88
	adc  b                                           ; $5081: $88
	adc  c                                           ; $5082: $89
	sbc  b                                           ; $5083: $98
	ld   a, b                                        ; $5084: $78
	adc  b                                           ; $5085: $88
	add  a                                           ; $5086: $87
	adc  c                                           ; $5087: $89
	adc  b                                           ; $5088: $88
	adc  b                                           ; $5089: $88
	adc  b                                           ; $508a: $88
	ld   a, b                                        ; $508b: $78
	adc  b                                           ; $508c: $88
	adc  c                                           ; $508d: $89
	adc  b                                           ; $508e: $88
	adc  b                                           ; $508f: $88
	adc  b                                           ; $5090: $88
	adc  b                                           ; $5091: $88
	sbc  c                                           ; $5092: $99
	adc  b                                           ; $5093: $88
	adc  b                                           ; $5094: $88
	adc  b                                           ; $5095: $88
	adc  b                                           ; $5096: $88
	adc  b                                           ; $5097: $88
	ld   [hl], a                                     ; $5098: $77
	sbc  b                                           ; $5099: $98
	add  a                                           ; $509a: $87
	adc  b                                           ; $509b: $88
	sbc  b                                           ; $509c: $98
	adc  c                                           ; $509d: $89
	sbc  b                                           ; $509e: $98
	adc  b                                           ; $509f: $88
	adc  c                                           ; $50a0: $89
	add  a                                           ; $50a1: $87
	adc  c                                           ; $50a2: $89
	adc  b                                           ; $50a3: $88
	adc  b                                           ; $50a4: $88
	adc  b                                           ; $50a5: $88
	adc  b                                           ; $50a6: $88
	adc  b                                           ; $50a7: $88
	sbc  c                                           ; $50a8: $99
	adc  b                                           ; $50a9: $88
	adc  b                                           ; $50aa: $88
	add  a                                           ; $50ab: $87
	adc  b                                           ; $50ac: $88
	adc  b                                           ; $50ad: $88
	adc  b                                           ; $50ae: $88
	adc  b                                           ; $50af: $88
	adc  b                                           ; $50b0: $88
	adc  b                                           ; $50b1: $88
	adc  b                                           ; $50b2: $88
	sbc  b                                           ; $50b3: $98
	adc  b                                           ; $50b4: $88
	ld   a, b                                        ; $50b5: $78
	adc  b                                           ; $50b6: $88
	adc  b                                           ; $50b7: $88
	adc  b                                           ; $50b8: $88
	adc  b                                           ; $50b9: $88
	adc  c                                           ; $50ba: $89
	adc  b                                           ; $50bb: $88
	adc  b                                           ; $50bc: $88
	adc  b                                           ; $50bd: $88
	adc  b                                           ; $50be: $88
	adc  b                                           ; $50bf: $88
	adc  b                                           ; $50c0: $88
	sbc  b                                           ; $50c1: $98
	adc  b                                           ; $50c2: $88
	adc  c                                           ; $50c3: $89
	add  a                                           ; $50c4: $87
	adc  b                                           ; $50c5: $88
	adc  b                                           ; $50c6: $88
	ld   a, b                                        ; $50c7: $78
	adc  b                                           ; $50c8: $88
	add  a                                           ; $50c9: $87
	adc  b                                           ; $50ca: $88
	adc  b                                           ; $50cb: $88
	adc  b                                           ; $50cc: $88
	adc  b                                           ; $50cd: $88
	adc  b                                           ; $50ce: $88
	sbc  b                                           ; $50cf: $98
	adc  b                                           ; $50d0: $88
	adc  c                                           ; $50d1: $89
	add  a                                           ; $50d2: $87
	adc  b                                           ; $50d3: $88
	adc  b                                           ; $50d4: $88
	adc  b                                           ; $50d5: $88
	sbc  c                                           ; $50d6: $99
	ld   a, b                                        ; $50d7: $78
	sbc  c                                           ; $50d8: $99
	add  a                                           ; $50d9: $87
	adc  c                                           ; $50da: $89
	sbc  b                                           ; $50db: $98
	ld   a, b                                        ; $50dc: $78
	adc  b                                           ; $50dd: $88
	adc  b                                           ; $50de: $88
	adc  b                                           ; $50df: $88
	adc  b                                           ; $50e0: $88
	adc  b                                           ; $50e1: $88
	adc  b                                           ; $50e2: $88
	adc  c                                           ; $50e3: $89
	adc  b                                           ; $50e4: $88
	adc  b                                           ; $50e5: $88
	add  a                                           ; $50e6: $87
	adc  b                                           ; $50e7: $88
	adc  b                                           ; $50e8: $88
	adc  b                                           ; $50e9: $88
	adc  b                                           ; $50ea: $88
	adc  b                                           ; $50eb: $88
	adc  b                                           ; $50ec: $88
	sbc  b                                           ; $50ed: $98
	adc  b                                           ; $50ee: $88
	adc  b                                           ; $50ef: $88
	ld   [hl], a                                     ; $50f0: $77
	sbc  b                                           ; $50f1: $98
	ld   a, b                                        ; $50f2: $78
	adc  b                                           ; $50f3: $88
	add  a                                           ; $50f4: $87
	adc  b                                           ; $50f5: $88
	adc  b                                           ; $50f6: $88
	adc  b                                           ; $50f7: $88
	adc  c                                           ; $50f8: $89
	adc  b                                           ; $50f9: $88
	adc  b                                           ; $50fa: $88
	adc  b                                           ; $50fb: $88
	adc  b                                           ; $50fc: $88
	adc  c                                           ; $50fd: $89
	sbc  b                                           ; $50fe: $98
	adc  b                                           ; $50ff: $88
	adc  b                                           ; $5100: $88
	adc  b                                           ; $5101: $88
	adc  b                                           ; $5102: $88
	sbc  b                                           ; $5103: $98
	adc  b                                           ; $5104: $88
	adc  b                                           ; $5105: $88
	adc  b                                           ; $5106: $88
	adc  c                                           ; $5107: $89
	sbc  b                                           ; $5108: $98
	ld   a, b                                        ; $5109: $78
	adc  b                                           ; $510a: $88
	adc  b                                           ; $510b: $88
	adc  c                                           ; $510c: $89
	adc  b                                           ; $510d: $88
	add  a                                           ; $510e: $87
	adc  b                                           ; $510f: $88
	adc  b                                           ; $5110: $88
	adc  c                                           ; $5111: $89
	sbc  b                                           ; $5112: $98
	ld   a, b                                        ; $5113: $78
	sub  a                                           ; $5114: $97
	adc  b                                           ; $5115: $88
	adc  c                                           ; $5116: $89
	add  a                                           ; $5117: $87
	adc  b                                           ; $5118: $88
	adc  b                                           ; $5119: $88
	adc  b                                           ; $511a: $88
	sbc  b                                           ; $511b: $98
	ld   a, b                                        ; $511c: $78
	sbc  b                                           ; $511d: $98
	adc  b                                           ; $511e: $88
	adc  b                                           ; $511f: $88
	add  a                                           ; $5120: $87
	adc  b                                           ; $5121: $88
	ld   a, b                                        ; $5122: $78
	sbc  b                                           ; $5123: $98
	sbc  c                                           ; $5124: $99
	ld   a, c                                        ; $5125: $79
	sbc  b                                           ; $5126: $98
	adc  b                                           ; $5127: $88
	adc  b                                           ; $5128: $88
	sbc  b                                           ; $5129: $98
	adc  c                                           ; $512a: $89
	adc  b                                           ; $512b: $88
	adc  b                                           ; $512c: $88
	adc  b                                           ; $512d: $88
	adc  b                                           ; $512e: $88
	adc  b                                           ; $512f: $88
	adc  c                                           ; $5130: $89
	adc  c                                           ; $5131: $89
	add  a                                           ; $5132: $87
	adc  b                                           ; $5133: $88
	adc  b                                           ; $5134: $88
	adc  b                                           ; $5135: $88
	adc  b                                           ; $5136: $88
	adc  b                                           ; $5137: $88
	sbc  c                                           ; $5138: $99
	adc  b                                           ; $5139: $88
	adc  b                                           ; $513a: $88
	adc  b                                           ; $513b: $88
	adc  b                                           ; $513c: $88
	sbc  b                                           ; $513d: $98
	adc  c                                           ; $513e: $89
	add  a                                           ; $513f: $87
	adc  b                                           ; $5140: $88
	adc  b                                           ; $5141: $88
	ld   a, b                                        ; $5142: $78
	adc  b                                           ; $5143: $88
	ld   [hl], a                                     ; $5144: $77
	adc  c                                           ; $5145: $89
	adc  b                                           ; $5146: $88
	adc  c                                           ; $5147: $89
	sbc  b                                           ; $5148: $98
	adc  b                                           ; $5149: $88
	adc  c                                           ; $514a: $89
	adc  b                                           ; $514b: $88
	sbc  c                                           ; $514c: $99
	adc  b                                           ; $514d: $88
	ld   a, b                                        ; $514e: $78
	adc  b                                           ; $514f: $88
	adc  b                                           ; $5150: $88
	adc  b                                           ; $5151: $88
	sbc  b                                           ; $5152: $98
	add  a                                           ; $5153: $87
	ld   a, b                                        ; $5154: $78
	adc  c                                           ; $5155: $89
	adc  c                                           ; $5156: $89
	add  a                                           ; $5157: $87
	ld   a, b                                        ; $5158: $78
	adc  c                                           ; $5159: $89
	sub  a                                           ; $515a: $97
	adc  c                                           ; $515b: $89
	adc  b                                           ; $515c: $88
	ld   [hl], a                                     ; $515d: $77
	adc  c                                           ; $515e: $89
	adc  b                                           ; $515f: $88
	sbc  c                                           ; $5160: $99
	adc  b                                           ; $5161: $88
	ld   a, b                                        ; $5162: $78
	sbc  b                                           ; $5163: $98
	adc  b                                           ; $5164: $88
	adc  b                                           ; $5165: $88
	adc  b                                           ; $5166: $88
	adc  b                                           ; $5167: $88
	adc  b                                           ; $5168: $88
	add  a                                           ; $5169: $87
	adc  b                                           ; $516a: $88
	adc  b                                           ; $516b: $88
	adc  b                                           ; $516c: $88
	sbc  c                                           ; $516d: $99
	adc  b                                           ; $516e: $88
	sbc  b                                           ; $516f: $98
	add  a                                           ; $5170: $87
	adc  b                                           ; $5171: $88
	adc  b                                           ; $5172: $88
	adc  b                                           ; $5173: $88
	sbc  b                                           ; $5174: $98
	ld   a, b                                        ; $5175: $78
	adc  c                                           ; $5176: $89
	adc  b                                           ; $5177: $88
	adc  c                                           ; $5178: $89
	sub  a                                           ; $5179: $97
	adc  b                                           ; $517a: $88
	adc  b                                           ; $517b: $88
	adc  b                                           ; $517c: $88
	adc  b                                           ; $517d: $88
	add  a                                           ; $517e: $87
	adc  b                                           ; $517f: $88
	adc  b                                           ; $5180: $88
	adc  b                                           ; $5181: $88
	adc  c                                           ; $5182: $89
	ld   a, b                                        ; $5183: $78
	adc  b                                           ; $5184: $88
	adc  b                                           ; $5185: $88
	adc  b                                           ; $5186: $88
	add  a                                           ; $5187: $87
	adc  b                                           ; $5188: $88
	add  a                                           ; $5189: $87
	adc  c                                           ; $518a: $89
	add  a                                           ; $518b: $87
	adc  b                                           ; $518c: $88
	adc  b                                           ; $518d: $88
	adc  b                                           ; $518e: $88
	adc  b                                           ; $518f: $88
	adc  b                                           ; $5190: $88
	adc  b                                           ; $5191: $88
	add  a                                           ; $5192: $87
	adc  b                                           ; $5193: $88
	add  a                                           ; $5194: $87
	adc  b                                           ; $5195: $88
	adc  b                                           ; $5196: $88
	adc  b                                           ; $5197: $88
	adc  b                                           ; $5198: $88
	adc  b                                           ; $5199: $88
	adc  c                                           ; $519a: $89
	adc  b                                           ; $519b: $88
	adc  b                                           ; $519c: $88
	adc  b                                           ; $519d: $88
	adc  b                                           ; $519e: $88
	adc  b                                           ; $519f: $88
	adc  b                                           ; $51a0: $88
	adc  b                                           ; $51a1: $88
	adc  b                                           ; $51a2: $88
	adc  b                                           ; $51a3: $88
	ld   a, b                                        ; $51a4: $78
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
	add  a                                           ; $51b2: $87
	adc  b                                           ; $51b3: $88
	adc  b                                           ; $51b4: $88
	adc  b                                           ; $51b5: $88
	sbc  b                                           ; $51b6: $98
	ld   [hl], a                                     ; $51b7: $77
	adc  b                                           ; $51b8: $88
	adc  b                                           ; $51b9: $88
	adc  c                                           ; $51ba: $89
	adc  b                                           ; $51bb: $88
	ld   a, b                                        ; $51bc: $78
	sbc  b                                           ; $51bd: $98
	adc  b                                           ; $51be: $88
	adc  b                                           ; $51bf: $88
	adc  b                                           ; $51c0: $88
	adc  b                                           ; $51c1: $88
	adc  b                                           ; $51c2: $88
	adc  b                                           ; $51c3: $88
	sbc  b                                           ; $51c4: $98
	adc  b                                           ; $51c5: $88
	adc  b                                           ; $51c6: $88
	adc  b                                           ; $51c7: $88
	add  a                                           ; $51c8: $87
	ld   a, b                                        ; $51c9: $78
	adc  b                                           ; $51ca: $88
	adc  b                                           ; $51cb: $88
	adc  b                                           ; $51cc: $88
	ld   a, b                                        ; $51cd: $78
	adc  b                                           ; $51ce: $88
	adc  b                                           ; $51cf: $88
	adc  b                                           ; $51d0: $88
	add  a                                           ; $51d1: $87
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
	adc  c                                           ; $51dc: $89
	adc  b                                           ; $51dd: $88
	adc  b                                           ; $51de: $88
	sbc  b                                           ; $51df: $98
	adc  b                                           ; $51e0: $88
	adc  b                                           ; $51e1: $88
	adc  b                                           ; $51e2: $88
	adc  c                                           ; $51e3: $89
	add  a                                           ; $51e4: $87
	adc  b                                           ; $51e5: $88
	adc  b                                           ; $51e6: $88
	adc  b                                           ; $51e7: $88
	sbc  b                                           ; $51e8: $98
	ld   a, b                                        ; $51e9: $78
	sbc  b                                           ; $51ea: $98
	adc  b                                           ; $51eb: $88
	adc  c                                           ; $51ec: $89
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
	sbc  b                                           ; $51f7: $98
	ld   a, b                                        ; $51f8: $78
	adc  b                                           ; $51f9: $88
	adc  b                                           ; $51fa: $88
	adc  c                                           ; $51fb: $89
	adc  b                                           ; $51fc: $88
	adc  b                                           ; $51fd: $88
	sbc  b                                           ; $51fe: $98
	ld   a, b                                        ; $51ff: $78
	sbc  b                                           ; $5200: $98
	adc  b                                           ; $5201: $88
	ld   a, b                                        ; $5202: $78
	adc  b                                           ; $5203: $88
	adc  b                                           ; $5204: $88
	sbc  b                                           ; $5205: $98
	adc  b                                           ; $5206: $88
	adc  b                                           ; $5207: $88
	adc  b                                           ; $5208: $88
	adc  c                                           ; $5209: $89
	sbc  b                                           ; $520a: $98
	adc  b                                           ; $520b: $88
	adc  b                                           ; $520c: $88
	ld   a, b                                        ; $520d: $78
	sbc  b                                           ; $520e: $98
	adc  b                                           ; $520f: $88
	adc  b                                           ; $5210: $88
	add  a                                           ; $5211: $87
	adc  c                                           ; $5212: $89
	adc  b                                           ; $5213: $88
	adc  b                                           ; $5214: $88
	sbc  b                                           ; $5215: $98
	ld   a, b                                        ; $5216: $78
	adc  b                                           ; $5217: $88
	sbc  b                                           ; $5218: $98
	adc  b                                           ; $5219: $88
	adc  b                                           ; $521a: $88
	adc  b                                           ; $521b: $88
	adc  b                                           ; $521c: $88
	sbc  b                                           ; $521d: $98
	adc  b                                           ; $521e: $88
	adc  c                                           ; $521f: $89
	adc  b                                           ; $5220: $88
	adc  b                                           ; $5221: $88
	sbc  c                                           ; $5222: $99
	add  a                                           ; $5223: $87
	adc  b                                           ; $5224: $88
	adc  b                                           ; $5225: $88
	ld   a, b                                        ; $5226: $78
	adc  b                                           ; $5227: $88
	adc  b                                           ; $5228: $88
	sbc  b                                           ; $5229: $98
	adc  b                                           ; $522a: $88
	adc  b                                           ; $522b: $88
	adc  b                                           ; $522c: $88
	adc  b                                           ; $522d: $88
	adc  b                                           ; $522e: $88
	adc  b                                           ; $522f: $88
	adc  b                                           ; $5230: $88
	adc  b                                           ; $5231: $88
	sbc  b                                           ; $5232: $98
	adc  b                                           ; $5233: $88
	add  a                                           ; $5234: $87
	ld   a, b                                        ; $5235: $78
	sbc  b                                           ; $5236: $98
	adc  b                                           ; $5237: $88
	adc  c                                           ; $5238: $89
	adc  b                                           ; $5239: $88
	adc  b                                           ; $523a: $88
	adc  b                                           ; $523b: $88
	adc  b                                           ; $523c: $88
	adc  b                                           ; $523d: $88
	adc  b                                           ; $523e: $88
	adc  b                                           ; $523f: $88
	sbc  b                                           ; $5240: $98
	adc  b                                           ; $5241: $88
	adc  b                                           ; $5242: $88
	adc  b                                           ; $5243: $88
	adc  b                                           ; $5244: $88
	adc  b                                           ; $5245: $88
	adc  c                                           ; $5246: $89
	ld   a, c                                        ; $5247: $79
	adc  b                                           ; $5248: $88
	sbc  b                                           ; $5249: $98
	adc  b                                           ; $524a: $88
	add  a                                           ; $524b: $87
	adc  b                                           ; $524c: $88
	adc  c                                           ; $524d: $89
	adc  b                                           ; $524e: $88
	adc  b                                           ; $524f: $88
	adc  b                                           ; $5250: $88
	adc  b                                           ; $5251: $88
	sbc  b                                           ; $5252: $98
	adc  b                                           ; $5253: $88
	adc  b                                           ; $5254: $88
	adc  b                                           ; $5255: $88
	adc  c                                           ; $5256: $89
	sbc  b                                           ; $5257: $98
	adc  b                                           ; $5258: $88
	adc  b                                           ; $5259: $88
	ld   a, b                                        ; $525a: $78
	adc  b                                           ; $525b: $88
	adc  b                                           ; $525c: $88
	adc  b                                           ; $525d: $88
	adc  b                                           ; $525e: $88
	adc  b                                           ; $525f: $88
	adc  c                                           ; $5260: $89
	sbc  b                                           ; $5261: $98
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
	ld   a, c                                        ; $5286: $79
	adc  b                                           ; $5287: $88
	adc  b                                           ; $5288: $88
	adc  b                                           ; $5289: $88
	adc  b                                           ; $528a: $88
	sbc  b                                           ; $528b: $98
	adc  b                                           ; $528c: $88
	adc  b                                           ; $528d: $88
	ld   a, b                                        ; $528e: $78
	adc  b                                           ; $528f: $88
	adc  b                                           ; $5290: $88
	adc  b                                           ; $5291: $88
	adc  b                                           ; $5292: $88
	adc  b                                           ; $5293: $88
	adc  b                                           ; $5294: $88
	adc  b                                           ; $5295: $88
	adc  b                                           ; $5296: $88
	adc  b                                           ; $5297: $88
	add  a                                           ; $5298: $87
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
	ld   a, b                                        ; $52ad: $78
	adc  b                                           ; $52ae: $88
	adc  b                                           ; $52af: $88
	adc  b                                           ; $52b0: $88
	add  a                                           ; $52b1: $87
	adc  c                                           ; $52b2: $89
	adc  b                                           ; $52b3: $88
	adc  b                                           ; $52b4: $88
	sbc  b                                           ; $52b5: $98
	adc  b                                           ; $52b6: $88
	adc  b                                           ; $52b7: $88
	adc  b                                           ; $52b8: $88
	adc  b                                           ; $52b9: $88
	adc  b                                           ; $52ba: $88
	adc  b                                           ; $52bb: $88
	adc  b                                           ; $52bc: $88
	sbc  b                                           ; $52bd: $98
	adc  b                                           ; $52be: $88
	adc  b                                           ; $52bf: $88
	adc  b                                           ; $52c0: $88
	adc  b                                           ; $52c1: $88
	adc  b                                           ; $52c2: $88
	adc  c                                           ; $52c3: $89
	sbc  b                                           ; $52c4: $98
	adc  b                                           ; $52c5: $88
	adc  b                                           ; $52c6: $88
	adc  b                                           ; $52c7: $88
	sbc  b                                           ; $52c8: $98
	adc  b                                           ; $52c9: $88
	adc  b                                           ; $52ca: $88
	add  a                                           ; $52cb: $87
	adc  b                                           ; $52cc: $88
	adc  b                                           ; $52cd: $88
	adc  b                                           ; $52ce: $88
	add  a                                           ; $52cf: $87
	adc  b                                           ; $52d0: $88
	adc  b                                           ; $52d1: $88
	adc  b                                           ; $52d2: $88
	sbc  b                                           ; $52d3: $98
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
	ld   a, b                                        ; $52e0: $78
	adc  b                                           ; $52e1: $88
	adc  b                                           ; $52e2: $88
	adc  c                                           ; $52e3: $89
	adc  b                                           ; $52e4: $88
	adc  b                                           ; $52e5: $88
	adc  b                                           ; $52e6: $88
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	adc  b                                           ; $52ea: $88
	adc  b                                           ; $52eb: $88
	adc  c                                           ; $52ec: $89
	adc  b                                           ; $52ed: $88
	adc  b                                           ; $52ee: $88
	sbc  b                                           ; $52ef: $98
	adc  b                                           ; $52f0: $88
	adc  b                                           ; $52f1: $88
	adc  b                                           ; $52f2: $88
	adc  b                                           ; $52f3: $88
	adc  b                                           ; $52f4: $88
	adc  b                                           ; $52f5: $88
	adc  b                                           ; $52f6: $88
	adc  c                                           ; $52f7: $89
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
	adc  c                                           ; $5305: $89
	adc  b                                           ; $5306: $88
	adc  c                                           ; $5307: $89
	add  a                                           ; $5308: $87
	adc  b                                           ; $5309: $88
	adc  b                                           ; $530a: $88
	ld   a, b                                        ; $530b: $78
	adc  b                                           ; $530c: $88
	adc  b                                           ; $530d: $88
	adc  c                                           ; $530e: $89
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
	sbc  c                                           ; $5327: $99
	add  a                                           ; $5328: $87
	adc  c                                           ; $5329: $89
	adc  b                                           ; $532a: $88
	adc  b                                           ; $532b: $88
	sbc  b                                           ; $532c: $98
	adc  b                                           ; $532d: $88
	adc  b                                           ; $532e: $88
	adc  b                                           ; $532f: $88
	adc  c                                           ; $5330: $89
	adc  b                                           ; $5331: $88
	adc  b                                           ; $5332: $88
	adc  b                                           ; $5333: $88
	adc  b                                           ; $5334: $88
	adc  c                                           ; $5335: $89
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
	ld   a, b                                        ; $5346: $78
	sbc  b                                           ; $5347: $98
	adc  b                                           ; $5348: $88
	adc  b                                           ; $5349: $88
	adc  b                                           ; $534a: $88
	adc  b                                           ; $534b: $88
	adc  b                                           ; $534c: $88
	adc  b                                           ; $534d: $88
	sbc  b                                           ; $534e: $98
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
	ld   a, b                                        ; $536e: $78
	adc  b                                           ; $536f: $88
	adc  b                                           ; $5370: $88
	adc  b                                           ; $5371: $88
	adc  b                                           ; $5372: $88
	adc  b                                           ; $5373: $88
	adc  b                                           ; $5374: $88
	adc  b                                           ; $5375: $88
	adc  c                                           ; $5376: $89
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
	sbc  b                                           ; $5382: $98
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
	sbc  b                                           ; $53a4: $98
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
	ld   [hl], a                                     ; $583d: $77
	ld   [hl], a                                     ; $583e: $77
	ld   [hl], a                                     ; $583f: $77
	ld   [hl], a                                     ; $5840: $77
	ld   [hl], a                                     ; $5841: $77
	ld   h, [hl]                                     ; $5842: $66
	sbc  e                                           ; $5843: $9b
	cp   e                                           ; $5844: $bb
	and  a                                           ; $5845: $a7
	ld   h, [hl]                                     ; $5846: $66
	ld   a, b                                        ; $5847: $78
	adc  c                                           ; $5848: $89
	adc  c                                           ; $5849: $89
	sbc  c                                           ; $584a: $99
	adc  b                                           ; $584b: $88
	ld   [hl], a                                     ; $584c: $77
	ld   a, c                                        ; $584d: $79
	sbc  c                                           ; $584e: $99
	sbc  b                                           ; $584f: $98
	adc  c                                           ; $5850: $89
	adc  b                                           ; $5851: $88
	add  a                                           ; $5852: $87
	ld   a, b                                        ; $5853: $78
	sbc  b                                           ; $5854: $98
	adc  c                                           ; $5855: $89
	adc  b                                           ; $5856: $88
	ld   [hl], a                                     ; $5857: $77
	ld   [hl], a                                     ; $5858: $77
	adc  b                                           ; $5859: $88
	adc  c                                           ; $585a: $89
	sbc  c                                           ; $585b: $99
	adc  b                                           ; $585c: $88
	adc  b                                           ; $585d: $88
	adc  b                                           ; $585e: $88
	adc  b                                           ; $585f: $88
	adc  c                                           ; $5860: $89
	adc  b                                           ; $5861: $88
	adc  b                                           ; $5862: $88
	adc  b                                           ; $5863: $88
	adc  b                                           ; $5864: $88
	adc  c                                           ; $5865: $89
	sbc  c                                           ; $5866: $99
	adc  b                                           ; $5867: $88
	ld   [hl], a                                     ; $5868: $77
	ld   [hl], a                                     ; $5869: $77
	ld   [hl], a                                     ; $586a: $77
	ld   [hl], a                                     ; $586b: $77
	ld   h, l                                        ; $586c: $65
	ld   b, e                                        ; $586d: $43
	inc  sp                                          ; $586e: $33
	ld   e, [hl]                                     ; $586f: $5e
	rst  $38                                         ; $5870: $ff
	add  sp, $11                                     ; $5871: $e8 $11
	ld   d, $aa                                      ; $5873: $16 $aa
	jp   hl                                          ; $5875: $e9


	cp   [hl]                                        ; $5876: $be
	sbc  b                                           ; $5877: $98
	ld   b, d                                        ; $5878: $42
	scf                                              ; $5879: $37
	call $97ec                                       ; $587a: $cd $ec $97
	ld   [hl], a                                     ; $587d: $77
	ld   h, [hl]                                     ; $587e: $66
	ld   [hl], a                                     ; $587f: $77
	xor  e                                           ; $5880: $ab
	xor  c                                           ; $5881: $a9
	halt                                             ; $5882: $76
	ld   d, [hl]                                     ; $5883: $56
	ld   a, c                                        ; $5884: $79
	sbc  c                                           ; $5885: $99
	sbc  c                                           ; $5886: $99
	adc  c                                           ; $5887: $89
	adc  b                                           ; $5888: $88
	sbc  c                                           ; $5889: $99
	sbc  d                                           ; $588a: $9a
	xor  c                                           ; $588b: $a9
	sbc  b                                           ; $588c: $98
	add  a                                           ; $588d: $87
	ld   [hl], a                                     ; $588e: $77
	ld   h, [hl]                                     ; $588f: $66
	halt                                             ; $5890: $76
	halt                                             ; $5891: $76
	ld   h, l                                        ; $5892: $65
	ld   d, l                                        ; $5893: $55
	ld   h, a                                        ; $5894: $67
	sbc  d                                           ; $5895: $9a
	sub  a                                           ; $5896: $97
	ld   d, e                                        ; $5897: $53
	ld   b, l                                        ; $5898: $45
	ld   l, c                                        ; $5899: $69
	cp   l                                           ; $589a: $bd
	reti                                             ; $589b: $d9


	add  h                                           ; $589c: $84
	dec  [hl]                                        ; $589d: $35
	ld   l, e                                        ; $589e: $6b
	adc  $fd                                         ; $589f: $ce $fd
	ret  c                                           ; $58a1: $d8

	ld   d, l                                        ; $58a2: $55
	ld   e, c                                        ; $58a3: $59
	xor  l                                           ; $58a4: $ad
	call c, Call_0d8_65b9                            ; $58a5: $dc $b9 $65
	ld   b, h                                        ; $58a8: $44
	ld   h, a                                        ; $58a9: $67
	sbc  d                                           ; $58aa: $9a
	add  l                                           ; $58ab: $85
	ld   de, $5f11                                   ; $58ac: $11 $11 $5f
	rst  $38                                         ; $58af: $ff
	ld   hl, sp+$11                                  ; $58b0: $f8 $11
	inc  d                                           ; $58b2: $14
	xor  e                                           ; $58b3: $ab
	cp   $cf                                         ; $58b4: $fe $cf
	jp   c, $2551                                    ; $58b6: $da $51 $25

	rst  JumpTable                                         ; $58b9: $df
	rst  $38                                         ; $58ba: $ff
	xor  b                                           ; $58bb: $a8
	halt                                             ; $58bc: $76
	halt                                             ; $58bd: $76
	ld   a, b                                        ; $58be: $78
	sbc  d                                           ; $58bf: $9a
	add  [hl]                                        ; $58c0: $86
	ld   hl, $1111                                   ; $58c1: $21 $11 $11
	daa                                              ; $58c4: $27
	rst  $38                                         ; $58c5: $ff
	rst  $38                                         ; $58c6: $ff
	ld   b, c                                        ; $58c7: $41
	ld   de, $ff6f                                   ; $58c8: $11 $6f $ff
	ld   a, [$21e7]                                  ; $58cb: $fa $e7 $21
	ld   [de], a                                     ; $58ce: $12
	cp   a                                           ; $58cf: $bf
	rst  $38                                         ; $58d0: $ff
	ld   hl, sp+$11                                  ; $58d1: $f8 $11
	daa                                              ; $58d3: $27
	cp   a                                           ; $58d4: $bf
	cp   $b6                                         ; $58d5: $fe $b6
	ld   hl, $1111                                   ; $58d7: $21 $11 $11
	ld   de, $ff3b                                   ; $58da: $11 $3b $ff
	db   $fd                                         ; $58dd: $fd
	ld   de, $bf11                                   ; $58de: $11 $11 $bf
	rst  $38                                         ; $58e1: $ff
	ld   a, [$11e2]                                  ; $58e2: $fa $e2 $11
	inc  de                                          ; $58e5: $13
	rst  $38                                         ; $58e6: $ff
	rst  $38                                         ; $58e7: $ff
	di                                               ; $58e8: $f3
	ld   de, $ff1a                                   ; $58e9: $11 $1a $ff
	rst  $38                                         ; $58ec: $ff
	sub  e                                           ; $58ed: $93
	ld   de, $1111                                   ; $58ee: $11 $11 $11
	ld   de, $ff4e                                   ; $58f1: $11 $4e $ff
	db   $fc                                         ; $58f4: $fc
	ld   de, rAUD1LEN                                   ; $58f5: $11 $11 $ff
	rst  $38                                         ; $58f8: $ff
	ret  c                                           ; $58f9: $d8

	pop  de                                          ; $58fa: $d1
	ld   de, $ff1a                                   ; $58fb: $11 $1a $ff
	rst  $38                                         ; $58fe: $ff
	add  c                                           ; $58ff: $81
	ld   de, $ff9f                                   ; $5900: $11 $9f $ff
	rst  $30                                         ; $5903: $f7
	ld   sp, $1111                                   ; $5904: $31 $11 $11
	ld   de, $ef15                                   ; $5907: $11 $15 $ef
	rst  $38                                         ; $590a: $ff
	and  c                                           ; $590b: $a1
	ld   de, $ff1b                                   ; $590c: $11 $1b $ff
	rst  $38                                         ; $590f: $ff
	ld   l, [hl]                                     ; $5910: $6e
	ld   de, $6f11                                   ; $5911: $11 $11 $6f
	rst  $38                                         ; $5914: $ff
	db   $fd                                         ; $5915: $fd
	ld   hl, $ef18                                   ; $5916: $21 $18 $ef
	rst  $38                                         ; $5919: $ff
	add  h                                           ; $591a: $84
	ld   hl, $1111                                   ; $591b: $21 $11 $11
	ld   de, $ff3f                                   ; $591e: $11 $3f $ff
	ld   a, [$1111]                                  ; $5921: $fa $11 $11
	rst  $38                                         ; $5924: $ff
	rst  $38                                         ; $5925: $ff
	db   $fc                                         ; $5926: $fc
	pop  af                                          ; $5927: $f1
	ld   de, $ff18                                   ; $5928: $11 $18 $ff
	rst  $38                                         ; $592b: $ff
	pop  hl                                          ; $592c: $e1
	ld   de, $ff2c                                   ; $592d: $11 $2c $ff
	ei                                               ; $5930: $fb
	ld   de, $1111                                   ; $5931: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $5934: $11 $13 $ff
	rst  $38                                         ; $5937: $ff
	ld   de, $9f11                                   ; $5938: $11 $11 $9f
	rst  $38                                         ; $593b: $ff
	or   $a8                                         ; $593c: $f6 $a8
	ld   de, $ef11                                   ; $593e: $11 $11 $ef
	rst  $38                                         ; $5941: $ff
	db   $f4                                         ; $5942: $f4
	ld   de, $ff1c                                   ; $5943: $11 $1c $ff
	ld   sp, hl                                      ; $5946: $f9
	ld   de, $1111                                   ; $5947: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $594a: $11 $12 $ff
	rst  $38                                         ; $594d: $ff
	ld   de, $af11                                   ; $594e: $11 $11 $af
	rst  $38                                         ; $5951: $ff
	db   $f4                                         ; $5952: $f4
	and  a                                           ; $5953: $a7
	ld   de, $df11                                   ; $5954: $11 $11 $df
	rst  $38                                         ; $5957: $ff
	di                                               ; $5958: $f3
	ld   de, $ff1e                                   ; $5959: $11 $1e $ff
	push af                                          ; $595c: $f5
	ld   de, $1111                                   ; $595d: $11 $11 $11
	ld   de, $ff1a                                   ; $5960: $11 $1a $ff
	db   $fd                                         ; $5963: $fd
	ld   de, rAUD1LEN                                   ; $5964: $11 $11 $ff
	rst  $38                                         ; $5967: $ff
	ret                                              ; $5968: $c9


	or   $11                                         ; $5969: $f6 $11
	inc  d                                           ; $596b: $14
	rst  $38                                         ; $596c: $ff
	rst  $38                                         ; $596d: $ff
	and  c                                           ; $596e: $a1
	ld   de, $ff7f                                   ; $596f: $11 $7f $ff
	pop  de                                          ; $5972: $d1
	ld   de, $1111                                   ; $5973: $11 $11 $11
	ld   de, $ff1f                                   ; $5976: $11 $1f $ff
	rst  $30                                         ; $5979: $f7
	ld   de, $ff18                                   ; $597a: $11 $18 $ff
	rst  $38                                         ; $597d: $ff
	adc  [hl]                                        ; $597e: $8e
	pop  hl                                          ; $597f: $e1
	ld   de, $ff1d                                   ; $5980: $11 $1d $ff
	rst  $38                                         ; $5983: $ff
	ld   de, rAUD1LEN                                   ; $5984: $11 $11 $ff
	rst  $38                                         ; $5987: $ff
	ld   d, c                                        ; $5988: $51
	ld   de, $1111                                   ; $5989: $11 $11 $11
	ld   de, $ffff                                   ; $598c: $11 $ff $ff
	ld   h, c                                        ; $598f: $61
	ld   de, $ff9f                                   ; $5990: $11 $9f $ff
	ei                                               ; $5993: $fb
	db   $fc                                         ; $5994: $fc
	ld   de, rAUD1LEN                                   ; $5995: $11 $11 $ff
	rst  $38                                         ; $5998: $ff
	and  c                                           ; $5999: $a1
	ld   de, $ff6f                                   ; $599a: $11 $6f $ff
	pop  hl                                          ; $599d: $e1
	ld   de, $1111                                   ; $599e: $11 $11 $11
	ld   de, $ffff                                   ; $59a1: $11 $ff $ff
	add  c                                           ; $59a4: $81
	ld   de, $ff5f                                   ; $59a5: $11 $5f $ff
	ei                                               ; $59a8: $fb
	rst  $38                                         ; $59a9: $ff
	ld   de, $ef11                                   ; $59aa: $11 $11 $ef
	rst  $38                                         ; $59ad: $ff
	pop  de                                          ; $59ae: $d1
	ld   de, $ff4f                                   ; $59af: $11 $4f $ff
	pop  hl                                          ; $59b2: $e1
	ld   de, $1111                                   ; $59b3: $11 $11 $11
	ld   [de], a                                     ; $59b6: $12
	rst  $38                                         ; $59b7: $ff
	rst  $38                                         ; $59b8: $ff
	ld   hl, $9f11                                   ; $59b9: $21 $11 $9f
	rst  $38                                         ; $59bc: $ff
	rst  $38                                         ; $59bd: $ff
	ld   sp, hl                                      ; $59be: $f9
	ld   de, rAUD1LOW                                   ; $59bf: $11 $13 $ff
	rst  $38                                         ; $59c2: $ff
	ld   h, c                                        ; $59c3: $61
	ld   de, $ff7f                                   ; $59c4: $11 $7f $ff
	and  c                                           ; $59c7: $a1
	ld   de, $1111                                   ; $59c8: $11 $11 $11
	rra                                              ; $59cb: $1f
	rst  $38                                         ; $59cc: $ff
	rst  $30                                         ; $59cd: $f7
	ld   de, rAUD1LOW                                   ; $59ce: $11 $13 $ff
	rst  $38                                         ; $59d1: $ff
	rst  $38                                         ; $59d2: $ff
	pop  de                                          ; $59d3: $d1
	ld   de, $ff1f                                   ; $59d4: $11 $1f $ff
	ld   a, [$1411]                                  ; $59d7: $fa $11 $14
	rst  $38                                         ; $59da: $ff
	ei                                               ; $59db: $fb
	ld   de, $1111                                   ; $59dc: $11 $11 $11
	ld   d, $ff                                      ; $59df: $16 $ff
	rst  $38                                         ; $59e1: $ff
	ld   de, $9f11                                   ; $59e2: $11 $11 $9f
	rst  $38                                         ; $59e5: $ff
	rst  $38                                         ; $59e6: $ff
	or   $11                                         ; $59e7: $f6 $11
	add  hl, de                                      ; $59e9: $19
	rst  $38                                         ; $59ea: $ff
	rst  $38                                         ; $59eb: $ff
	ld   d, c                                        ; $59ec: $51
	ld   de, $fd6f                                   ; $59ed: $11 $6f $fd
	ld   b, c                                        ; $59f0: $41
	ld   de, $1511                                   ; $59f1: $11 $11 $15
	rst  $38                                         ; $59f4: $ff
	rst  $38                                         ; $59f5: $ff
	ld   de, $7f11                                   ; $59f6: $11 $11 $7f
	rst  $38                                         ; $59f9: $ff
	rst  $38                                         ; $59fa: $ff
	db   $f4                                         ; $59fb: $f4
	ld   de, $ff1c                                   ; $59fc: $11 $1c $ff
	rst  $38                                         ; $59ff: $ff
	ld   [hl], c                                     ; $5a00: $71
	ld   de, $fb5e                                   ; $5a01: $11 $5e $fb
	ld   hl, $1111                                   ; $5a04: $21 $11 $11
	rra                                              ; $5a07: $1f
	rst  $38                                         ; $5a08: $ff
	ld   a, [$1111]                                  ; $5a09: $fa $11 $11
	xor  a                                           ; $5a0c: $af
	rst  $38                                         ; $5a0d: $ff
	rst  $38                                         ; $5a0e: $ff
	add  c                                           ; $5a0f: $81
	ld   de, $ff8f                                   ; $5a10: $11 $8f $ff
	db   $fc                                         ; $5a13: $fc
	ld   sp, $af13                                   ; $5a14: $31 $13 $af
	call nz, $1111                                   ; $5a17: $c4 $11 $11
	inc  de                                          ; $5a1a: $13
	rst  $38                                         ; $5a1b: $ff
	rst  $38                                         ; $5a1c: $ff
	ld   b, c                                        ; $5a1d: $41
	ld   de, $ff19                                   ; $5a1e: $11 $19 $ff
	rst  $38                                         ; $5a21: $ff
	rst  $30                                         ; $5a22: $f7
	ld   de, $ff3c                                   ; $5a23: $11 $3c $ff
	rst  $38                                         ; $5a26: $ff
	sub  c                                           ; $5a27: $91
	ld   de, $c64b                                   ; $5a28: $11 $4b $c6
	ld   de, $1811                                   ; $5a2b: $11 $11 $18
	rst  $38                                         ; $5a2e: $ff
	rst  $38                                         ; $5a2f: $ff
	ld   de, $1711                                   ; $5a30: $11 $11 $17
	rst  $38                                         ; $5a33: $ff
	rst  $38                                         ; $5a34: $ff
	and  $11                                         ; $5a35: $e6 $11
	ld   e, l                                        ; $5a37: $5d
	rst  $38                                         ; $5a38: $ff
	db   $fc                                         ; $5a39: $fc
	ld   h, c                                        ; $5a3a: $61
	inc  hl                                          ; $5a3b: $23
	ld   h, a                                        ; $5a3c: $67
	ld   b, c                                        ; $5a3d: $41
	ld   de, $bf11                                   ; $5a3e: $11 $11 $bf
	rst  $38                                         ; $5a41: $ff
	ldh  a, [c]                                      ; $5a42: $f2
	ld   de, $9d11                                   ; $5a43: $11 $11 $9d
	rst  $38                                         ; $5a46: $ff
	db   $fd                                         ; $5a47: $fd
	ld   h, c                                        ; $5a48: $61
	ld   d, $cd                                      ; $5a49: $16 $cd
	cp   $b5                                         ; $5a4b: $fe $b5
	ld   hl, $3512                                   ; $5a4d: $21 $12 $35
	ld   de, rAUD1LEN                                   ; $5a50: $11 $11 $ff
	rst  $38                                         ; $5a53: $ff
	and  d                                           ; $5a54: $a2
	ld   de, $7c12                                   ; $5a55: $11 $12 $7c
	rst  $38                                         ; $5a58: $ff
	ei                                               ; $5a59: $fb
	ld   sp, $9d27                                   ; $5a5a: $31 $27 $9d
	db   $ec                                         ; $5a5d: $ec
	sub  e                                           ; $5a5e: $93
	ld   de, $1111                                   ; $5a5f: $11 $11 $11
	rla                                              ; $5a62: $17
	rst  $38                                         ; $5a63: $ff
	rst  $38                                         ; $5a64: $ff
	add  e                                           ; $5a65: $83
	ld   hl, $7b13                                   ; $5a66: $21 $13 $7b
	rst  $38                                         ; $5a69: $ff
	ld   a, [$5864]                                  ; $5a6a: $fa $64 $58
	xor  e                                           ; $5a6d: $ab
	cp   b                                           ; $5a6e: $b8
	ld   sp, $1111                                   ; $5a6f: $31 $11 $11
	ld   de, $ffef                                   ; $5a72: $11 $ef $ff
	rst  $30                                         ; $5a75: $f7
	ld   b, e                                        ; $5a76: $43
	inc  hl                                          ; $5a77: $23
	ld   [hl], a                                     ; $5a78: $77
	cp   a                                           ; $5a79: $bf
	cp   $c9                                         ; $5a7a: $fe $c9
	ld   l, b                                        ; $5a7c: $68
	sbc  b                                           ; $5a7d: $98
	adc  b                                           ; $5a7e: $88
	ld   b, c                                        ; $5a7f: $41
	ld   de, $1111                                   ; $5a80: $11 $11 $11
	rst  $38                                         ; $5a83: $ff
	rst  $38                                         ; $5a84: $ff
	ld   hl, sp+$76                                  ; $5a85: $f8 $76
	inc  hl                                          ; $5a87: $23
	adc  b                                           ; $5a88: $88
	rst  $38                                         ; $5a89: $ff
	cp   $99                                         ; $5a8a: $fe $99
	ld   a, d                                        ; $5a8c: $7a
	xor  b                                           ; $5a8d: $a8
	sub  a                                           ; $5a8e: $97
	ld   sp, $1111                                   ; $5a8f: $31 $11 $11
	inc  e                                           ; $5a92: $1c
	rst  $38                                         ; $5a93: $ff
	rst  $38                                         ; $5a94: $ff
	and  a                                           ; $5a95: $a7
	ld   h, d                                        ; $5a96: $62
	dec  h                                           ; $5a97: $25
	sbc  l                                           ; $5a98: $9d
	cp   $b9                                         ; $5a99: $fe $b9
	adc  c                                           ; $5a9b: $89
	xor  e                                           ; $5a9c: $ab
	cp   d                                           ; $5a9d: $ba
	ld   h, e                                        ; $5a9e: $63
	ld   de, $1411                                   ; $5a9f: $11 $11 $14
	rst  $38                                         ; $5aa2: $ff
	rst  $38                                         ; $5aa3: $ff
	ld   sp, hl                                      ; $5aa4: $f9
	ld   [hl], h                                     ; $5aa5: $74
	dec  h                                           ; $5aa6: $25
	ld   a, b                                        ; $5aa7: $78
	rst  JumpTable                                         ; $5aa8: $df
	jp   c, $8997                                    ; $5aa9: $da $97 $89

	adc  c                                           ; $5aac: $89
	and  a                                           ; $5aad: $a7
	ld   de, $1211                                   ; $5aae: $11 $11 $12
	rst  JumpTable                                         ; $5ab1: $df
	rst  $38                                         ; $5ab2: $ff
	cp   $a6                                         ; $5ab3: $fe $a6
	ld   d, h                                        ; $5ab5: $54
	ld   d, a                                        ; $5ab6: $57
	adc  $db                                         ; $5ab7: $ce $db
	halt                                             ; $5ab9: $76
	ld   a, c                                        ; $5aba: $79
	sbc  c                                           ; $5abb: $99
	add  [hl]                                        ; $5abc: $86
	ld   sp, $1711                                   ; $5abd: $31 $11 $17
	db   $eb                                         ; $5ac0: $eb
	rst  $38                                         ; $5ac1: $ff
	xor  $a6                                         ; $5ac2: $ee $a6
	ld   l, c                                        ; $5ac4: $69
	adc  d                                           ; $5ac5: $8a
	and  a                                           ; $5ac6: $a7
	cp   e                                           ; $5ac7: $bb
	ld   a, b                                        ; $5ac8: $78
	ld   [hl], l                                     ; $5ac9: $75
	adc  b                                           ; $5aca: $88
	ld   d, h                                        ; $5acb: $54
	ld   [hl-], a                                    ; $5acc: $32
	ld   de, $9c7a                                   ; $5acd: $11 $7a $9c
	call $89eb                                       ; $5ad0: $cd $eb $89
	sbc  c                                           ; $5ad3: $99
	sbc  d                                           ; $5ad4: $9a
	xor  e                                           ; $5ad5: $ab
	and  [hl]                                        ; $5ad6: $a6
	ld   h, [hl]                                     ; $5ad7: $66
	ld   d, [hl]                                     ; $5ad8: $56
	ld   h, l                                        ; $5ad9: $65
	ld   d, l                                        ; $5ada: $55
	ld   b, h                                        ; $5adb: $44
	ld   a, c                                        ; $5adc: $79
	ld   a, b                                        ; $5add: $78
	sbc  d                                           ; $5ade: $9a
	cp   e                                           ; $5adf: $bb
	adc  c                                           ; $5ae0: $89
	xor  e                                           ; $5ae1: $ab
	xor  d                                           ; $5ae2: $aa
	xor  c                                           ; $5ae3: $a9
	and  a                                           ; $5ae4: $a7
	ld   [hl], a                                     ; $5ae5: $77
	ld   d, l                                        ; $5ae6: $55
	ld   h, [hl]                                     ; $5ae7: $66
	ld   d, [hl]                                     ; $5ae8: $56
	ld   d, h                                        ; $5ae9: $54
	ld   a, c                                        ; $5aea: $79
	sbc  c                                           ; $5aeb: $99
	sbc  d                                           ; $5aec: $9a
	xor  e                                           ; $5aed: $ab
	sub  a                                           ; $5aee: $97
	sbc  c                                           ; $5aef: $99
	sbc  c                                           ; $5af0: $99
	adc  d                                           ; $5af1: $8a
	cp   d                                           ; $5af2: $ba
	add  a                                           ; $5af3: $87
	halt                                             ; $5af4: $76
	ld   [hl], l                                     ; $5af5: $75
	ld   h, l                                        ; $5af6: $65
	ld   d, l                                        ; $5af7: $55
	ld   [hl], a                                     ; $5af8: $77
	adc  e                                           ; $5af9: $8b
	sbc  b                                           ; $5afa: $98
	xor  c                                           ; $5afb: $a9
	adc  c                                           ; $5afc: $89
	adc  c                                           ; $5afd: $89
	xor  b                                           ; $5afe: $a8
	sbc  c                                           ; $5aff: $99
	sbc  b                                           ; $5b00: $98
	sub  a                                           ; $5b01: $97
	ld   h, a                                        ; $5b02: $67
	halt                                             ; $5b03: $76
	ld   h, [hl]                                     ; $5b04: $66
	ld   h, a                                        ; $5b05: $67
	ld   [hl], a                                     ; $5b06: $77
	adc  b                                           ; $5b07: $88
	sbc  b                                           ; $5b08: $98
	sbc  c                                           ; $5b09: $99
	sbc  c                                           ; $5b0a: $99
	sbc  c                                           ; $5b0b: $99
	sbc  d                                           ; $5b0c: $9a
	sbc  b                                           ; $5b0d: $98
	sbc  c                                           ; $5b0e: $99
	add  a                                           ; $5b0f: $87
	ld   [hl], a                                     ; $5b10: $77
	ld   [hl], a                                     ; $5b11: $77
	ld   h, [hl]                                     ; $5b12: $66
	ld   [hl], a                                     ; $5b13: $77
	ld   [hl], a                                     ; $5b14: $77
	ld   a, b                                        ; $5b15: $78
	sbc  b                                           ; $5b16: $98
	sub  a                                           ; $5b17: $97
	adc  c                                           ; $5b18: $89
	sbc  c                                           ; $5b19: $99
	sbc  c                                           ; $5b1a: $99
	sbc  b                                           ; $5b1b: $98
	sub  a                                           ; $5b1c: $97
	ld   [hl], a                                     ; $5b1d: $77
	ld   [hl], a                                     ; $5b1e: $77
	ld   [hl], a                                     ; $5b1f: $77
	ld   a, b                                        ; $5b20: $78
	add  a                                           ; $5b21: $87
	ld   [hl], a                                     ; $5b22: $77
	ld   [hl], a                                     ; $5b23: $77
	ld   [hl], a                                     ; $5b24: $77
	ld   [hl], a                                     ; $5b25: $77
	ld   a, b                                        ; $5b26: $78
	add  a                                           ; $5b27: $87
	ld   [hl], a                                     ; $5b28: $77
	ld   a, b                                        ; $5b29: $78
	ld   [hl], a                                     ; $5b2a: $77
	ld   [hl], a                                     ; $5b2b: $77
	ld   [hl], a                                     ; $5b2c: $77
	ld   a, b                                        ; $5b2d: $78
	adc  b                                           ; $5b2e: $88
	adc  c                                           ; $5b2f: $89
	adc  c                                           ; $5b30: $89
	sbc  c                                           ; $5b31: $99
	adc  c                                           ; $5b32: $89
	sbc  c                                           ; $5b33: $99
	adc  b                                           ; $5b34: $88
	sbc  c                                           ; $5b35: $99
	adc  b                                           ; $5b36: $88
	adc  b                                           ; $5b37: $88
	adc  b                                           ; $5b38: $88
	adc  b                                           ; $5b39: $88
	adc  c                                           ; $5b3a: $89
	sbc  c                                           ; $5b3b: $99
	sbc  c                                           ; $5b3c: $99
	sbc  b                                           ; $5b3d: $98
	sbc  b                                           ; $5b3e: $98
	sbc  b                                           ; $5b3f: $98
	adc  b                                           ; $5b40: $88
	sbc  c                                           ; $5b41: $99
	sbc  c                                           ; $5b42: $99
	sbc  c                                           ; $5b43: $99
	sbc  c                                           ; $5b44: $99
	sbc  c                                           ; $5b45: $99
	sbc  b                                           ; $5b46: $98
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

Call_0d8_5bd8:
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
	adc  c                                           ; $5d30: $89
	sbc  b                                           ; $5d31: $98
	ld   a, b                                        ; $5d32: $78
	add  a                                           ; $5d33: $87
	adc  b                                           ; $5d34: $88
	adc  c                                           ; $5d35: $89
	adc  b                                           ; $5d36: $88
	adc  b                                           ; $5d37: $88
	adc  b                                           ; $5d38: $88
	adc  b                                           ; $5d39: $88
	adc  c                                           ; $5d3a: $89
	adc  b                                           ; $5d3b: $88
	sbc  c                                           ; $5d3c: $99
	sub  a                                           ; $5d3d: $97
	adc  b                                           ; $5d3e: $88
	adc  b                                           ; $5d3f: $88
	sbc  e                                           ; $5d40: $9b
	sub  [hl]                                        ; $5d41: $96
	ld   a, b                                        ; $5d42: $78
	adc  c                                           ; $5d43: $89
	adc  h                                           ; $5d44: $8c
	cp   c                                           ; $5d45: $b9
	add  [hl]                                        ; $5d46: $86
	ld   l, b                                        ; $5d47: $68
	adc  c                                           ; $5d48: $89
	xor  b                                           ; $5d49: $a8
	adc  b                                           ; $5d4a: $88
	ld   [hl], a                                     ; $5d4b: $77
	ld   a, c                                        ; $5d4c: $79
	sbc  e                                           ; $5d4d: $9b
	cp   e                                           ; $5d4e: $bb
	add  a                                           ; $5d4f: $87
	adc  b                                           ; $5d50: $88
	add  l                                           ; $5d51: $85
	ld   l, b                                        ; $5d52: $68
	ld   [hl], a                                     ; $5d53: $77
	ld   d, [hl]                                     ; $5d54: $56
	ld   a, c                                        ; $5d55: $79
	ld   [hl], a                                     ; $5d56: $77
	ld   a, b                                        ; $5d57: $78
	xor  c                                           ; $5d58: $a9
	add  a                                           ; $5d59: $87
	adc  b                                           ; $5d5a: $88
	adc  b                                           ; $5d5b: $88
	ld   a, c                                        ; $5d5c: $79
	ld   [hl], a                                     ; $5d5d: $77
	add  [hl]                                        ; $5d5e: $86
	ld   d, a                                        ; $5d5f: $57
	ld   h, l                                        ; $5d60: $65
	ld   h, l                                        ; $5d61: $65
	ld   h, a                                        ; $5d62: $67
	ld   [hl], a                                     ; $5d63: $77
	ld   h, a                                        ; $5d64: $67
	sbc  b                                           ; $5d65: $98
	ld   [hl], a                                     ; $5d66: $77
	ld   l, b                                        ; $5d67: $68
	sub  a                                           ; $5d68: $97
	ld   h, [hl]                                     ; $5d69: $66
	ld   [hl], a                                     ; $5d6a: $77
	ld   h, l                                        ; $5d6b: $65
	ld   h, [hl]                                     ; $5d6c: $66
	ld   a, b                                        ; $5d6d: $78
	ld   h, a                                        ; $5d6e: $67
	ld   [hl], a                                     ; $5d6f: $77
	add  a                                           ; $5d70: $87
	ld   h, [hl]                                     ; $5d71: $66
	adc  c                                           ; $5d72: $89
	ld   h, l                                        ; $5d73: $65
	ld   l, b                                        ; $5d74: $68
	add  a                                           ; $5d75: $87
	ld   h, a                                        ; $5d76: $67
	adc  c                                           ; $5d77: $89
	ld   [hl], a                                     ; $5d78: $77
	ld   a, b                                        ; $5d79: $78
	add  a                                           ; $5d7a: $87
	add  a                                           ; $5d7b: $87
	ld   a, c                                        ; $5d7c: $79
	ld   [hl], a                                     ; $5d7d: $77
	add  [hl]                                        ; $5d7e: $86
	ld   a, c                                        ; $5d7f: $79
	adc  b                                           ; $5d80: $88
	add  a                                           ; $5d81: $87
	adc  d                                           ; $5d82: $8a
	ld   [hl], a                                     ; $5d83: $77
	ld   [hl], a                                     ; $5d84: $77
	xor  c                                           ; $5d85: $a9
	ld   [hl], a                                     ; $5d86: $77
	sbc  c                                           ; $5d87: $99
	ld   a, b                                        ; $5d88: $78
	ld   [hl], a                                     ; $5d89: $77
	adc  c                                           ; $5d8a: $89
	adc  b                                           ; $5d8b: $88
	sbc  b                                           ; $5d8c: $98
	xor  d                                           ; $5d8d: $aa
	adc  b                                           ; $5d8e: $88
	sbc  c                                           ; $5d8f: $99
	xor  c                                           ; $5d90: $a9
	ld   a, b                                        ; $5d91: $78
	sbc  b                                           ; $5d92: $98
	add  a                                           ; $5d93: $87
	ld   a, b                                        ; $5d94: $78
	adc  c                                           ; $5d95: $89
	add  a                                           ; $5d96: $87
	sbc  c                                           ; $5d97: $99
	sbc  c                                           ; $5d98: $99
	adc  b                                           ; $5d99: $88
	ld   a, b                                        ; $5d9a: $78
	sub  a                                           ; $5d9b: $97
	adc  b                                           ; $5d9c: $88
	ld   a, c                                        ; $5d9d: $79
	sbc  d                                           ; $5d9e: $9a
	xor  c                                           ; $5d9f: $a9
	xor  c                                           ; $5da0: $a9
	xor  c                                           ; $5da1: $a9
	adc  b                                           ; $5da2: $88
	sbc  d                                           ; $5da3: $9a
	sbc  c                                           ; $5da4: $99
	sub  a                                           ; $5da5: $97
	ld   a, b                                        ; $5da6: $78
	sbc  d                                           ; $5da7: $9a
	add  a                                           ; $5da8: $87
	sbc  d                                           ; $5da9: $9a
	add  a                                           ; $5daa: $87
	adc  b                                           ; $5dab: $88
	sbc  c                                           ; $5dac: $99
	adc  b                                           ; $5dad: $88
	adc  c                                           ; $5dae: $89
	xor  d                                           ; $5daf: $aa
	adc  b                                           ; $5db0: $88
	sbc  c                                           ; $5db1: $99
	cp   d                                           ; $5db2: $ba
	ld   a, b                                        ; $5db3: $78
	sbc  c                                           ; $5db4: $99
	xor  c                                           ; $5db5: $a9
	adc  b                                           ; $5db6: $88
	xor  d                                           ; $5db7: $aa
	adc  c                                           ; $5db8: $89
	adc  b                                           ; $5db9: $88
	sbc  c                                           ; $5dba: $99
	adc  c                                           ; $5dbb: $89
	add  a                                           ; $5dbc: $87
	adc  c                                           ; $5dbd: $89
	halt                                             ; $5dbe: $76
	add  a                                           ; $5dbf: $87
	ld   l, c                                        ; $5dc0: $69
	sub  [hl]                                        ; $5dc1: $96
	ld   a, b                                        ; $5dc2: $78
	sbc  b                                           ; $5dc3: $98
	ld   [hl], a                                     ; $5dc4: $77
	xor  d                                           ; $5dc5: $aa
	xor  c                                           ; $5dc6: $a9
	adc  d                                           ; $5dc7: $8a
	sbc  e                                           ; $5dc8: $9b
	sbc  c                                           ; $5dc9: $99
	sbc  c                                           ; $5dca: $99
	sbc  d                                           ; $5dcb: $9a
	xor  c                                           ; $5dcc: $a9
	adc  b                                           ; $5dcd: $88
	adc  b                                           ; $5dce: $88
	sbc  b                                           ; $5dcf: $98
	ld   d, a                                        ; $5dd0: $57
	ld   [hl], a                                     ; $5dd1: $77
	ld   [hl], l                                     ; $5dd2: $75
	ld   b, h                                        ; $5dd3: $44
	ld   h, a                                        ; $5dd4: $67
	add  l                                           ; $5dd5: $85
	ld   d, a                                        ; $5dd6: $57
	adc  b                                           ; $5dd7: $88
	ld   a, b                                        ; $5dd8: $78
	xor  d                                           ; $5dd9: $aa
	xor  d                                           ; $5dda: $aa
	xor  d                                           ; $5ddb: $aa
	res  5, e                                        ; $5ddc: $cb $ab
	cp   d                                           ; $5dde: $ba
	cp   d                                           ; $5ddf: $ba
	xor  e                                           ; $5de0: $ab
	cp   d                                           ; $5de1: $ba
	adc  b                                           ; $5de2: $88
	add  [hl]                                        ; $5de3: $86
	ld   d, l                                        ; $5de4: $55
	inc  [hl]                                        ; $5de5: $34
	ld   b, e                                        ; $5de6: $43
	inc  h                                           ; $5de7: $24
	ld   hl, $1222                                   ; $5de8: $21 $22 $12
	ld   d, [hl]                                     ; $5deb: $56
	cp   [hl]                                        ; $5dec: $be
	rst  JumpTable                                         ; $5ded: $df
	rst  $38                                         ; $5dee: $ff
	rst  $28                                         ; $5def: $ef
	cp   $fe                                         ; $5df0: $fe $fe
	rst  JumpTable                                         ; $5df2: $df
	db   $eb                                         ; $5df3: $eb
	sbc  b                                           ; $5df4: $98
	ld   a, b                                        ; $5df5: $78
	ld   [hl], l                                     ; $5df6: $75
	ld   b, e                                        ; $5df7: $43
	ld   [hl+], a                                    ; $5df8: $22
	ld   de, $1111                                   ; $5df9: $11 $11 $11
	inc  [hl]                                        ; $5dfc: $34
	sbc  l                                           ; $5dfd: $9d
	rst  JumpTable                                         ; $5dfe: $df
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	rst  $28                                         ; $5e01: $ef
	rst  $38                                         ; $5e02: $ff
	cp   $ca                                         ; $5e03: $fe $ca
	sbc  c                                           ; $5e05: $99
	adc  c                                           ; $5e06: $89
	sbc  b                                           ; $5e07: $98
	adc  c                                           ; $5e08: $89
	ld   h, e                                        ; $5e09: $63
	ld   hl, $1111                                   ; $5e0a: $21 $11 $11
	ld   de, $9d28                                   ; $5e0d: $11 $28 $9d
	call z, $feff                                    ; $5e10: $cc $ff $fe
	db   $db                                         ; $5e13: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e14: $cf
	rst  $38                                         ; $5e15: $ff
	cp   c                                           ; $5e16: $b9
	adc  d                                           ; $5e17: $8a
	cp   d                                           ; $5e18: $ba
	xor  c                                           ; $5e19: $a9
	sbc  b                                           ; $5e1a: $98
	ld   [hl], l                                     ; $5e1b: $75
	ld   sp, $1111                                   ; $5e1c: $31 $11 $11
	ld   de, $7c12                                   ; $5e1f: $11 $12 $7c
	rst  $38                                         ; $5e22: $ff
	rst  JumpTable                                         ; $5e23: $df
	xor  $fd                                         ; $5e24: $ee $fd
	cp   h                                           ; $5e26: $bc
	sbc  $eb                                         ; $5e27: $de $eb
	sbc  c                                           ; $5e29: $99
	adc  d                                           ; $5e2a: $8a
	cp   d                                           ; $5e2b: $ba
	adc  b                                           ; $5e2c: $88
	add  l                                           ; $5e2d: $85
	ld   [hl-], a                                    ; $5e2e: $32
	ld   de, $1111                                   ; $5e2f: $11 $11 $11
	ld   de, $ce5a                                   ; $5e32: $11 $5a $ce
	sbc  $ed                                         ; $5e35: $de $ed
	cp   $cd                                         ; $5e37: $fe $cd
	call c, $aadc                                    ; $5e39: $dc $dc $aa
	sbc  b                                           ; $5e3c: $98
	adc  d                                           ; $5e3d: $8a
	sbc  c                                           ; $5e3e: $99
	sub  a                                           ; $5e3f: $97
	ld   b, e                                        ; $5e40: $43
	ld   de, $1111                                   ; $5e41: $11 $11 $11
	ld   de, $cc5a                                   ; $5e44: $11 $5a $cc
	call $dcef                                       ; $5e47: $cd $ef $dc
	cp   e                                           ; $5e4a: $bb
	db   $dd                                         ; $5e4b: $dd
	ei                                               ; $5e4c: $fb
	sub  a                                           ; $5e4d: $97
	ld   a, c                                        ; $5e4e: $79
	call z, Call_0d8_66b9                            ; $5e4f: $cc $b9 $66
	ld   b, h                                        ; $5e52: $44
	ld   sp, $1111                                   ; $5e53: $31 $11 $11
	ld   de, $ac56                                   ; $5e56: $11 $56 $ac
	adc  $ef                                         ; $5e59: $ce $ef
	call $dda9                                       ; $5e5b: $cd $a9 $dd
	db   $fd                                         ; $5e5e: $fd
	cp   d                                           ; $5e5f: $ba
	sbc  c                                           ; $5e60: $99
	jp   z, $869b                                    ; $5e61: $ca $9b $86

	ld   d, h                                        ; $5e64: $54
	ld   hl, $1111                                   ; $5e65: $21 $11 $11
	ld   de, $9b4a                                   ; $5e68: $11 $4a $9b
	cp   d                                           ; $5e6b: $ba
	cp   l                                           ; $5e6c: $bd
	db   $dd                                         ; $5e6d: $dd
	jp   c, $dcbc                                    ; $5e6e: $da $bc $dc

	cp   d                                           ; $5e71: $ba
	sbc  h                                           ; $5e72: $9c
	call z, $87ba                                    ; $5e73: $cc $ba $87
	ld   d, h                                        ; $5e76: $54
	ld   sp, $1111                                   ; $5e77: $31 $11 $11
	ld   de, $7a14                                   ; $5e7a: $11 $14 $7a
	db   $db                                         ; $5e7d: $db
	xor  l                                           ; $5e7e: $ad
	call z, $bcbb                                    ; $5e7f: $cc $bb $bc
	db   $ed                                         ; $5e82: $ed
	db   $fc                                         ; $5e83: $fc
	cp   d                                           ; $5e84: $ba
	xor  e                                           ; $5e85: $ab
	cp   e                                           ; $5e86: $bb
	add  a                                           ; $5e87: $87
	ld   h, l                                        ; $5e88: $65
	ld   b, e                                        ; $5e89: $43
	ld   de, $1111                                   ; $5e8a: $11 $11 $11
	ld   de, $bd68                                   ; $5e8d: $11 $68 $bd
	xor  d                                           ; $5e90: $aa
	xor  e                                           ; $5e91: $ab
	cp   h                                           ; $5e92: $bc
	set  1, e                                        ; $5e93: $cb $cb
	db   $dd                                         ; $5e95: $dd
	res  7, d                                        ; $5e96: $cb $ba
	xor  e                                           ; $5e98: $ab
	cp   d                                           ; $5e99: $ba
	add  l                                           ; $5e9a: $85
	ld   [hl+], a                                    ; $5e9b: $22
	ld   de, $2232                                   ; $5e9c: $11 $32 $22
	ld   de, $6b25                                   ; $5e9f: $11 $25 $6b
	jp   z, $cd9b                                    ; $5ea2: $ca $9b $cd

	cp   d                                           ; $5ea5: $ba
	xor  c                                           ; $5ea6: $a9
	xor  $dd                                         ; $5ea7: $ee $dd
	xor  c                                           ; $5ea9: $a9
	xor  e                                           ; $5eaa: $ab
	xor  e                                           ; $5eab: $ab
	add  l                                           ; $5eac: $85
	ld   d, h                                        ; $5ead: $54
	ld   d, h                                        ; $5eae: $54
	ld   sp, $3412                                   ; $5eaf: $31 $12 $34
	ld   b, h                                        ; $5eb2: $44
	ld   b, l                                        ; $5eb3: $45
	adc  d                                           ; $5eb4: $8a
	cp   d                                           ; $5eb5: $ba
	xor  c                                           ; $5eb6: $a9
	call z, $b9dd                                    ; $5eb7: $cc $dd $b9
	set  5, [hl]                                     ; $5eba: $cb $ee
	cp   d                                           ; $5ebc: $ba
	xor  e                                           ; $5ebd: $ab
	adc  e                                           ; $5ebe: $8b
	ld   [hl], h                                     ; $5ebf: $74
	ld   sp, $6425                                   ; $5ec0: $31 $25 $64
	ld   sp, $4612                                   ; $5ec3: $31 $12 $46
	ld   a, c                                        ; $5ec6: $79
	sbc  c                                           ; $5ec7: $99
	sbc  h                                           ; $5ec8: $9c
	cp   h                                           ; $5ec9: $bc
	cp   d                                           ; $5eca: $ba
	cp   e                                           ; $5ecb: $bb
	cp   l                                           ; $5ecc: $bd
	call c, $abbb                                    ; $5ecd: $dc $bb $ab
	xor  d                                           ; $5ed0: $aa
	add  l                                           ; $5ed1: $85
	ld   b, h                                        ; $5ed2: $44
	ld   d, [hl]                                     ; $5ed3: $56
	ld   h, l                                        ; $5ed4: $65
	ld   [hl+], a                                    ; $5ed5: $22
	inc  sp                                          ; $5ed6: $33
	ld   b, [hl]                                     ; $5ed7: $46
	halt                                             ; $5ed8: $76
	add  a                                           ; $5ed9: $87
	ld   l, c                                        ; $5eda: $69
	sbc  e                                           ; $5edb: $9b
	cp   e                                           ; $5edc: $bb
	db   $db                                         ; $5edd: $db
	res  5, d                                        ; $5ede: $cb $aa
	call c, $989c                                    ; $5ee0: $dc $9c $98
	or   a                                           ; $5ee3: $b7
	ld   h, [hl]                                     ; $5ee4: $66
	ld   d, h                                        ; $5ee5: $54
	ld   d, l                                        ; $5ee6: $55
	dec  [hl]                                        ; $5ee7: $35
	ld   d, l                                        ; $5ee8: $55
	ld   b, e                                        ; $5ee9: $43
	inc  [hl]                                        ; $5eea: $34
	ld   d, a                                        ; $5eeb: $57
	sub  a                                           ; $5eec: $97
	ld   a, e                                        ; $5eed: $7b
	xor  e                                           ; $5eee: $ab
	ret  c                                           ; $5eef: $d8

	xor  e                                           ; $5ef0: $ab
	cp   [hl]                                        ; $5ef1: $be
	db   $eb                                         ; $5ef2: $eb
	sub  a                                           ; $5ef3: $97
	adc  e                                           ; $5ef4: $8b
	ret                                              ; $5ef5: $c9


	add  h                                           ; $5ef6: $84
	ld   [hl], $56                                   ; $5ef7: $36 $56
	ld   [hl], l                                     ; $5ef9: $75
	ld   d, h                                        ; $5efa: $54
	ld   b, h                                        ; $5efb: $44
	ld   b, [hl]                                     ; $5efc: $46
	ld   l, b                                        ; $5efd: $68
	halt                                             ; $5efe: $76
	ld   h, a                                        ; $5eff: $67
	ld   a, c                                        ; $5f00: $79
	jp   z, $bccb                                    ; $5f01: $ca $cb $bc

	res  5, c                                        ; $5f04: $cb $a9
	xor  d                                           ; $5f06: $aa
	cp   d                                           ; $5f07: $ba
	xor  b                                           ; $5f08: $a8
	ld   [hl], a                                     ; $5f09: $77
	ld   d, l                                        ; $5f0a: $55
	ld   h, a                                        ; $5f0b: $67
	ld   h, [hl]                                     ; $5f0c: $66
	ld   h, l                                        ; $5f0d: $65
	ld   d, l                                        ; $5f0e: $55
	ld   d, l                                        ; $5f0f: $55
	ld   h, a                                        ; $5f10: $67
	ld   [hl], a                                     ; $5f11: $77
	ld   a, c                                        ; $5f12: $79
	adc  d                                           ; $5f13: $8a
	jp   z, $aa9b                                    ; $5f14: $ca $9b $aa

	cp   h                                           ; $5f17: $bc
	cp   c                                           ; $5f18: $b9
	xor  b                                           ; $5f19: $a8
	sbc  d                                           ; $5f1a: $9a
	sub  a                                           ; $5f1b: $97
	halt                                             ; $5f1c: $76
	ld   l, c                                        ; $5f1d: $69
	ld   [hl], a                                     ; $5f1e: $77
	ld   [hl], l                                     ; $5f1f: $75
	ld   d, l                                        ; $5f20: $55
	ld   h, [hl]                                     ; $5f21: $66
	ld   h, [hl]                                     ; $5f22: $66
	ld   b, h                                        ; $5f23: $44
	ld   l, d                                        ; $5f24: $6a
	cp   d                                           ; $5f25: $ba
	add  l                                           ; $5f26: $85
	ld   a, d                                        ; $5f27: $7a
	call c, $77d9                                    ; $5f28: $dc $d9 $77
	adc  d                                           ; $5f2b: $8a
	call $8798                                       ; $5f2c: $cd $98 $87
	ld   a, b                                        ; $5f2f: $78
	sub  a                                           ; $5f30: $97
	add  [hl]                                        ; $5f31: $86
	ld   h, [hl]                                     ; $5f32: $66
	ld   h, a                                        ; $5f33: $67
	ld   h, a                                        ; $5f34: $67
	ld   h, [hl]                                     ; $5f35: $66
	ld   d, h                                        ; $5f36: $54
	ld   a, c                                        ; $5f37: $79
	cp   e                                           ; $5f38: $bb
	sub  a                                           ; $5f39: $97
	ld   l, b                                        ; $5f3a: $68
	cp   l                                           ; $5f3b: $bd
	ret                                              ; $5f3c: $c9


	halt                                             ; $5f3d: $76
	xor  l                                           ; $5f3e: $ad
	call c, Call_0d8_6886                            ; $5f3f: $dc $86 $68
	sub  a                                           ; $5f42: $97
	add  l                                           ; $5f43: $85
	ld   h, a                                        ; $5f44: $67
	adc  c                                           ; $5f45: $89
	ld   h, l                                        ; $5f46: $65
	ld   b, l                                        ; $5f47: $45
	ld   a, c                                        ; $5f48: $79
	sub  [hl]                                        ; $5f49: $96
	ld   [hl], a                                     ; $5f4a: $77
	ld   d, [hl]                                     ; $5f4b: $56
	ld   [hl], a                                     ; $5f4c: $77
	adc  c                                           ; $5f4d: $89
	sbc  c                                           ; $5f4e: $99
	xor  e                                           ; $5f4f: $ab
	xor  b                                           ; $5f50: $a8
	xor  e                                           ; $5f51: $ab
	xor  c                                           ; $5f52: $a9
	adc  b                                           ; $5f53: $88
	adc  e                                           ; $5f54: $8b
	sub  [hl]                                        ; $5f55: $96
	add  a                                           ; $5f56: $87
	ld   a, c                                        ; $5f57: $79
	ld   [hl], l                                     ; $5f58: $75
	ld   h, [hl]                                     ; $5f59: $66
	ld   l, c                                        ; $5f5a: $69
	sub  a                                           ; $5f5b: $97
	ld   [hl], l                                     ; $5f5c: $75
	ld   e, b                                        ; $5f5d: $58
	sbc  b                                           ; $5f5e: $98
	sub  a                                           ; $5f5f: $97
	ld   l, c                                        ; $5f60: $69
	adc  d                                           ; $5f61: $8a
	xor  c                                           ; $5f62: $a9
	adc  b                                           ; $5f63: $88
	cp   d                                           ; $5f64: $ba
	adc  b                                           ; $5f65: $88
	adc  c                                           ; $5f66: $89
	cp   h                                           ; $5f67: $bc
	ld   a, c                                        ; $5f68: $79
	halt                                             ; $5f69: $76
	add  [hl]                                        ; $5f6a: $86
	adc  b                                           ; $5f6b: $88
	sub  [hl]                                        ; $5f6c: $96
	ld   h, [hl]                                     ; $5f6d: $66
	ld   c, b                                        ; $5f6e: $48
	ld   [hl], a                                     ; $5f6f: $77
	ld   h, [hl]                                     ; $5f70: $66
	adc  b                                           ; $5f71: $88
	sub  a                                           ; $5f72: $97
	halt                                             ; $5f73: $76
	ld   a, d                                        ; $5f74: $7a
	xor  d                                           ; $5f75: $aa
	sbc  b                                           ; $5f76: $98
	cp   h                                           ; $5f77: $bc
	jp   z, Jump_0d8_7987                            ; $5f78: $ca $87 $79

	sbc  c                                           ; $5f7b: $99
	ld   a, b                                        ; $5f7c: $78
	sbc  c                                           ; $5f7d: $99
	sub  a                                           ; $5f7e: $97
	halt                                             ; $5f7f: $76
	ld   a, b                                        ; $5f80: $78
	ld   [hl], a                                     ; $5f81: $77
	ld   h, a                                        ; $5f82: $67
	ld   h, a                                        ; $5f83: $67
	sbc  b                                           ; $5f84: $98
	ld   [hl], l                                     ; $5f85: $75
	ld   l, b                                        ; $5f86: $68
	xor  e                                           ; $5f87: $ab
	xor  c                                           ; $5f88: $a9
	halt                                             ; $5f89: $76
	ld   a, c                                        ; $5f8a: $79
	xor  c                                           ; $5f8b: $a9
	xor  c                                           ; $5f8c: $a9
	adc  c                                           ; $5f8d: $89
	sbc  c                                           ; $5f8e: $99
	add  a                                           ; $5f8f: $87
	adc  b                                           ; $5f90: $88
	adc  b                                           ; $5f91: $88
	add  [hl]                                        ; $5f92: $86
	ld   a, b                                        ; $5f93: $78
	ld   a, b                                        ; $5f94: $78
	ld   h, a                                        ; $5f95: $67
	add  a                                           ; $5f96: $87
	ld   [hl], a                                     ; $5f97: $77
	add  a                                           ; $5f98: $87
	add  a                                           ; $5f99: $87
	adc  b                                           ; $5f9a: $88
	ld   [hl], a                                     ; $5f9b: $77
	ld   a, c                                        ; $5f9c: $79
	sbc  b                                           ; $5f9d: $98
	adc  c                                           ; $5f9e: $89
	xor  c                                           ; $5f9f: $a9
	sub  a                                           ; $5fa0: $97
	adc  c                                           ; $5fa1: $89
	ld   a, b                                        ; $5fa2: $78
	adc  c                                           ; $5fa3: $89
	sbc  b                                           ; $5fa4: $98
	sub  a                                           ; $5fa5: $97
	ld   [hl], a                                     ; $5fa6: $77
	ld   a, b                                        ; $5fa7: $78
	sbc  c                                           ; $5fa8: $99
	ld   [hl], a                                     ; $5fa9: $77
	ld   d, l                                        ; $5faa: $55
	sbc  b                                           ; $5fab: $98
	add  a                                           ; $5fac: $87
	ld   a, b                                        ; $5fad: $78
	sbc  b                                           ; $5fae: $98
	ld   [hl], a                                     ; $5faf: $77
	ld   a, c                                        ; $5fb0: $79
	sbc  b                                           ; $5fb1: $98
	sbc  b                                           ; $5fb2: $98
	adc  c                                           ; $5fb3: $89
	sbc  b                                           ; $5fb4: $98
	ld   l, b                                        ; $5fb5: $68
	ld   a, c                                        ; $5fb6: $79
	cp   b                                           ; $5fb7: $b8
	sub  [hl]                                        ; $5fb8: $96
	ld   l, b                                        ; $5fb9: $68
	adc  c                                           ; $5fba: $89
	halt                                             ; $5fbb: $76
	ld   a, d                                        ; $5fbc: $7a
	sub  a                                           ; $5fbd: $97
	ld   h, [hl]                                     ; $5fbe: $66
	adc  b                                           ; $5fbf: $88
	halt                                             ; $5fc0: $76
	ld   l, c                                        ; $5fc1: $69
	adc  c                                           ; $5fc2: $89
	add  [hl]                                        ; $5fc3: $86
	add  a                                           ; $5fc4: $87
	adc  b                                           ; $5fc5: $88
	adc  b                                           ; $5fc6: $88
	ld   a, c                                        ; $5fc7: $79
	sbc  c                                           ; $5fc8: $99
	add  a                                           ; $5fc9: $87
	halt                                             ; $5fca: $76
	adc  c                                           ; $5fcb: $89
	sub  [hl]                                        ; $5fcc: $96
	adc  c                                           ; $5fcd: $89
	sbc  b                                           ; $5fce: $98
	ld   h, [hl]                                     ; $5fcf: $66
	ld   a, c                                        ; $5fd0: $79
	sub  a                                           ; $5fd1: $97
	add  [hl]                                        ; $5fd2: $86
	sbc  c                                           ; $5fd3: $99
	ld   [hl], l                                     ; $5fd4: $75
	ld   h, a                                        ; $5fd5: $67
	sbc  d                                           ; $5fd6: $9a
	ld   [hl], a                                     ; $5fd7: $77
	adc  b                                           ; $5fd8: $88
	adc  c                                           ; $5fd9: $89
	halt                                             ; $5fda: $76
	sbc  b                                           ; $5fdb: $98
	sbc  c                                           ; $5fdc: $99
	ld   h, a                                        ; $5fdd: $67
	ld   a, c                                        ; $5fde: $79
	sub  a                                           ; $5fdf: $97
	adc  b                                           ; $5fe0: $88
	sbc  e                                           ; $5fe1: $9b
	sub  [hl]                                        ; $5fe2: $96
	ld   h, a                                        ; $5fe3: $67
	xor  c                                           ; $5fe4: $a9
	ld   h, a                                        ; $5fe5: $67
	ld   a, d                                        ; $5fe6: $7a
	sub  a                                           ; $5fe7: $97
	ld   h, a                                        ; $5fe8: $67
	adc  c                                           ; $5fe9: $89
	sub  a                                           ; $5fea: $97
	adc  b                                           ; $5feb: $88
	sub  [hl]                                        ; $5fec: $96
	ld   l, b                                        ; $5fed: $68
	adc  d                                           ; $5fee: $8a
	xor  b                                           ; $5fef: $a8
	ld   a, b                                        ; $5ff0: $78
	sbc  c                                           ; $5ff1: $99
	add  [hl]                                        ; $5ff2: $86
	adc  b                                           ; $5ff3: $88
	cp   b                                           ; $5ff4: $b8
	ld   l, b                                        ; $5ff5: $68
	adc  c                                           ; $5ff6: $89
	halt                                             ; $5ff7: $76
	ld   a, d                                        ; $5ff8: $7a
	sbc  b                                           ; $5ff9: $98
	add  a                                           ; $5ffa: $87
	ld   a, c                                        ; $5ffb: $79
	ld   [hl], a                                     ; $5ffc: $77
	sbc  b                                           ; $5ffd: $98
	sbc  c                                           ; $5ffe: $99
	sub  a                                           ; $5fff: $97
	ld   a, c                                        ; $6000: $79
	adc  c                                           ; $6001: $89
	ld   a, b                                        ; $6002: $78
	adc  c                                           ; $6003: $89
	sub  [hl]                                        ; $6004: $96
	adc  b                                           ; $6005: $88
	adc  d                                           ; $6006: $8a
	sbc  b                                           ; $6007: $98
	add  a                                           ; $6008: $87
	adc  c                                           ; $6009: $89
	sbc  b                                           ; $600a: $98
	adc  c                                           ; $600b: $89
	ld   a, c                                        ; $600c: $79
	add  a                                           ; $600d: $87
	add  a                                           ; $600e: $87
	sbc  c                                           ; $600f: $99
	ld   [hl], a                                     ; $6010: $77
	adc  c                                           ; $6011: $89
	add  a                                           ; $6012: $87
	sbc  b                                           ; $6013: $98
	sbc  c                                           ; $6014: $99
	adc  b                                           ; $6015: $88
	ld   a, d                                        ; $6016: $7a
	add  a                                           ; $6017: $87
	and  [hl]                                        ; $6018: $a6
	sbc  b                                           ; $6019: $98
	ld   a, c                                        ; $601a: $79
	ld   l, c                                        ; $601b: $69
	ld   a, c                                        ; $601c: $79
	add  a                                           ; $601d: $87
	and  [hl]                                        ; $601e: $a6
	sbc  c                                           ; $601f: $99
	ld   a, b                                        ; $6020: $78
	sbc  b                                           ; $6021: $98
	ld   a, b                                        ; $6022: $78
	ld   a, c                                        ; $6023: $79
	add  a                                           ; $6024: $87
	sbc  b                                           ; $6025: $98
	adc  c                                           ; $6026: $89
	add  [hl]                                        ; $6027: $86
	sbc  b                                           ; $6028: $98
	adc  b                                           ; $6029: $88
	ld   l, b                                        ; $602a: $68
	sbc  b                                           ; $602b: $98
	sbc  b                                           ; $602c: $98
	ld   a, c                                        ; $602d: $79
	adc  c                                           ; $602e: $89
	add  a                                           ; $602f: $87
	adc  b                                           ; $6030: $88
	adc  b                                           ; $6031: $88
	ld   a, c                                        ; $6032: $79
	sbc  c                                           ; $6033: $99
	add  a                                           ; $6034: $87
	ld   [hl], a                                     ; $6035: $77
	ld   a, b                                        ; $6036: $78
	adc  b                                           ; $6037: $88
	sbc  b                                           ; $6038: $98
	adc  b                                           ; $6039: $88
	ld   [hl], a                                     ; $603a: $77
	ld   a, c                                        ; $603b: $79
	sbc  c                                           ; $603c: $99
	ld   [hl], a                                     ; $603d: $77
	sbc  c                                           ; $603e: $99
	ld   a, b                                        ; $603f: $78
	ld   l, b                                        ; $6040: $68
	and  a                                           ; $6041: $a7
	adc  c                                           ; $6042: $89
	ld   a, c                                        ; $6043: $79
	sub  a                                           ; $6044: $97
	xor  b                                           ; $6045: $a8
	adc  c                                           ; $6046: $89
	ld   a, b                                        ; $6047: $78
	adc  b                                           ; $6048: $88
	adc  b                                           ; $6049: $88
	adc  b                                           ; $604a: $88
	sbc  b                                           ; $604b: $98
	adc  b                                           ; $604c: $88
	ld   [hl], a                                     ; $604d: $77
	adc  c                                           ; $604e: $89
	sbc  b                                           ; $604f: $98
	adc  d                                           ; $6050: $8a
	sbc  c                                           ; $6051: $99
	adc  b                                           ; $6052: $88
	sbc  b                                           ; $6053: $98
	sbc  b                                           ; $6054: $98
	ld   a, b                                        ; $6055: $78
	adc  d                                           ; $6056: $8a
	adc  c                                           ; $6057: $89
	sbc  b                                           ; $6058: $98
	adc  c                                           ; $6059: $89
	adc  b                                           ; $605a: $88
	sbc  c                                           ; $605b: $99
	sbc  c                                           ; $605c: $99
	sbc  c                                           ; $605d: $99
	adc  c                                           ; $605e: $89
	adc  b                                           ; $605f: $88
	sbc  b                                           ; $6060: $98
	adc  b                                           ; $6061: $88
	sbc  b                                           ; $6062: $98
	sbc  b                                           ; $6063: $98
	sbc  b                                           ; $6064: $98
	adc  b                                           ; $6065: $88
	adc  b                                           ; $6066: $88
	sbc  b                                           ; $6067: $98
	sbc  b                                           ; $6068: $98
	adc  c                                           ; $6069: $89
	sbc  c                                           ; $606a: $99
	sbc  b                                           ; $606b: $98
	adc  c                                           ; $606c: $89
	sbc  c                                           ; $606d: $99
	adc  c                                           ; $606e: $89
	adc  b                                           ; $606f: $88
	sbc  c                                           ; $6070: $99
	adc  b                                           ; $6071: $88
	sbc  c                                           ; $6072: $99
	adc  b                                           ; $6073: $88
	sbc  c                                           ; $6074: $99
	sbc  c                                           ; $6075: $99
	adc  b                                           ; $6076: $88
	adc  b                                           ; $6077: $88
	adc  b                                           ; $6078: $88
	adc  b                                           ; $6079: $88
	adc  b                                           ; $607a: $88
	sbc  b                                           ; $607b: $98
	adc  c                                           ; $607c: $89
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	adc  c                                           ; $607f: $89
	adc  b                                           ; $6080: $88
	adc  b                                           ; $6081: $88
	ld   a, b                                        ; $6082: $78
	adc  b                                           ; $6083: $88
	adc  b                                           ; $6084: $88
	adc  b                                           ; $6085: $88
	ld   [hl], a                                     ; $6086: $77
	adc  b                                           ; $6087: $88
	adc  b                                           ; $6088: $88
	ld   a, b                                        ; $6089: $78
	add  a                                           ; $608a: $87
	adc  b                                           ; $608b: $88
	adc  b                                           ; $608c: $88
	adc  b                                           ; $608d: $88
	ld   [hl], a                                     ; $608e: $77
	add  a                                           ; $608f: $87
	ld   a, b                                        ; $6090: $78
	ld   a, b                                        ; $6091: $78
	add  a                                           ; $6092: $87
	add  a                                           ; $6093: $87
	ld   [hl], a                                     ; $6094: $77
	ld   a, b                                        ; $6095: $78
	add  a                                           ; $6096: $87
	ld   a, b                                        ; $6097: $78
	ld   [hl], a                                     ; $6098: $77
	ld   [hl], a                                     ; $6099: $77
	adc  b                                           ; $609a: $88
	ld   [hl], a                                     ; $609b: $77
	ld   a, b                                        ; $609c: $78
	ld   [hl], a                                     ; $609d: $77
	ld   [hl], a                                     ; $609e: $77
	ld   [hl], a                                     ; $609f: $77
	ld   [hl], a                                     ; $60a0: $77
	ld   [hl], a                                     ; $60a1: $77
	add  a                                           ; $60a2: $87
	ld   a, b                                        ; $60a3: $78
	ld   [hl], a                                     ; $60a4: $77
	ld   a, b                                        ; $60a5: $78
	ld   [hl], a                                     ; $60a6: $77
	add  a                                           ; $60a7: $87
	ld   [hl], a                                     ; $60a8: $77
	ld   [hl], a                                     ; $60a9: $77
	ld   [hl], a                                     ; $60aa: $77
	add  a                                           ; $60ab: $87
	ld   a, b                                        ; $60ac: $78
	ld   a, b                                        ; $60ad: $78
	ld   [hl], a                                     ; $60ae: $77
	ld   a, b                                        ; $60af: $78
	add  a                                           ; $60b0: $87
	ld   [hl], a                                     ; $60b1: $77
	add  a                                           ; $60b2: $87
	ld   [hl], a                                     ; $60b3: $77
	add  a                                           ; $60b4: $87
	ld   [hl], a                                     ; $60b5: $77
	add  a                                           ; $60b6: $87
	ld   [hl], a                                     ; $60b7: $77
	ld   [hl], a                                     ; $60b8: $77
	ld   a, b                                        ; $60b9: $78
	sbc  b                                           ; $60ba: $98
	ld   [hl], a                                     ; $60bb: $77
	add  a                                           ; $60bc: $87
	ld   a, b                                        ; $60bd: $78
	ld   [hl], a                                     ; $60be: $77
	ld   a, b                                        ; $60bf: $78
	ld   a, b                                        ; $60c0: $78
	add  a                                           ; $60c1: $87
	ld   [hl], a                                     ; $60c2: $77
	add  a                                           ; $60c3: $87
	ld   a, b                                        ; $60c4: $78
	adc  b                                           ; $60c5: $88
	add  a                                           ; $60c6: $87
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	ld   a, b                                        ; $60c9: $78
	add  a                                           ; $60ca: $87
	adc  b                                           ; $60cb: $88
	ld   a, b                                        ; $60cc: $78
	add  a                                           ; $60cd: $87
	ld   [hl], a                                     ; $60ce: $77
	adc  b                                           ; $60cf: $88
	add  a                                           ; $60d0: $87
	adc  b                                           ; $60d1: $88
	add  a                                           ; $60d2: $87
	ld   a, b                                        ; $60d3: $78
	ld   [hl], a                                     ; $60d4: $77
	ld   a, b                                        ; $60d5: $78
	adc  b                                           ; $60d6: $88
	ld   [hl], a                                     ; $60d7: $77
	ld   [hl], a                                     ; $60d8: $77
	ld   [hl], a                                     ; $60d9: $77
	ld   a, b                                        ; $60da: $78
	adc  b                                           ; $60db: $88
	ld   a, b                                        ; $60dc: $78
	ld   [hl], a                                     ; $60dd: $77
	ld   [hl], a                                     ; $60de: $77
	add  a                                           ; $60df: $87
	ld   a, b                                        ; $60e0: $78
	ld   a, b                                        ; $60e1: $78
	ld   a, b                                        ; $60e2: $78
	add  a                                           ; $60e3: $87
	ld   [hl], a                                     ; $60e4: $77
	adc  b                                           ; $60e5: $88
	add  a                                           ; $60e6: $87
	ld   a, b                                        ; $60e7: $78
	ld   a, b                                        ; $60e8: $78
	ld   [hl], a                                     ; $60e9: $77
	add  a                                           ; $60ea: $87
	ld   [hl], a                                     ; $60eb: $77
	ld   a, b                                        ; $60ec: $78
	adc  b                                           ; $60ed: $88
	adc  b                                           ; $60ee: $88
	ld   [hl], a                                     ; $60ef: $77
	ld   [hl], a                                     ; $60f0: $77
	adc  b                                           ; $60f1: $88
	add  a                                           ; $60f2: $87
	add  a                                           ; $60f3: $87
	adc  b                                           ; $60f4: $88
	ld   [hl], a                                     ; $60f5: $77
	adc  b                                           ; $60f6: $88
	ld   a, b                                        ; $60f7: $78
	add  a                                           ; $60f8: $87
	adc  b                                           ; $60f9: $88
	add  a                                           ; $60fa: $87
	ld   a, b                                        ; $60fb: $78
	add  a                                           ; $60fc: $87
	adc  b                                           ; $60fd: $88
	adc  b                                           ; $60fe: $88
	adc  b                                           ; $60ff: $88
	ld   a, b                                        ; $6100: $78
	adc  b                                           ; $6101: $88
	adc  b                                           ; $6102: $88
	adc  b                                           ; $6103: $88
	ld   [hl], a                                     ; $6104: $77
	adc  b                                           ; $6105: $88
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	add  a                                           ; $6108: $87
	ld   a, b                                        ; $6109: $78
	adc  b                                           ; $610a: $88
	adc  b                                           ; $610b: $88
	add  a                                           ; $610c: $87
	adc  b                                           ; $610d: $88
	adc  b                                           ; $610e: $88
	adc  b                                           ; $610f: $88
	adc  b                                           ; $6110: $88
	adc  b                                           ; $6111: $88
	adc  b                                           ; $6112: $88
	ld   a, b                                        ; $6113: $78
	adc  b                                           ; $6114: $88
	adc  b                                           ; $6115: $88
	adc  b                                           ; $6116: $88
	add  a                                           ; $6117: $87
	ld   a, b                                        ; $6118: $78
	adc  b                                           ; $6119: $88
	adc  b                                           ; $611a: $88
	adc  b                                           ; $611b: $88
	ld   a, b                                        ; $611c: $78
	adc  b                                           ; $611d: $88
	add  a                                           ; $611e: $87
	adc  b                                           ; $611f: $88
	adc  b                                           ; $6120: $88
	adc  b                                           ; $6121: $88
	adc  b                                           ; $6122: $88
	adc  b                                           ; $6123: $88
	adc  b                                           ; $6124: $88
	add  a                                           ; $6125: $87
	ld   a, b                                        ; $6126: $78
	adc  b                                           ; $6127: $88
	add  a                                           ; $6128: $87
	adc  b                                           ; $6129: $88
	adc  b                                           ; $612a: $88
	adc  b                                           ; $612b: $88
	adc  b                                           ; $612c: $88
	ld   a, b                                        ; $612d: $78
	adc  b                                           ; $612e: $88
	add  a                                           ; $612f: $87
	adc  b                                           ; $6130: $88
	ld   a, b                                        ; $6131: $78
	adc  b                                           ; $6132: $88
	adc  b                                           ; $6133: $88
	adc  b                                           ; $6134: $88
	add  a                                           ; $6135: $87
	sbc  b                                           ; $6136: $98
	adc  b                                           ; $6137: $88
	adc  b                                           ; $6138: $88
	adc  c                                           ; $6139: $89
	adc  b                                           ; $613a: $88
	adc  b                                           ; $613b: $88
	adc  b                                           ; $613c: $88
	adc  b                                           ; $613d: $88
	adc  b                                           ; $613e: $88
	adc  b                                           ; $613f: $88
	adc  b                                           ; $6140: $88
	ld   a, b                                        ; $6141: $78
	add  a                                           ; $6142: $87
	sbc  b                                           ; $6143: $98
	adc  b                                           ; $6144: $88
	adc  c                                           ; $6145: $89
	add  a                                           ; $6146: $87
	sbc  b                                           ; $6147: $98
	adc  b                                           ; $6148: $88
	ld   a, b                                        ; $6149: $78
	sub  a                                           ; $614a: $97
	adc  b                                           ; $614b: $88
	adc  b                                           ; $614c: $88
	sbc  b                                           ; $614d: $98
	adc  b                                           ; $614e: $88
	ld   a, b                                        ; $614f: $78
	sbc  b                                           ; $6150: $98
	adc  b                                           ; $6151: $88
	adc  b                                           ; $6152: $88
	add  a                                           ; $6153: $87
	adc  c                                           ; $6154: $89
	sbc  b                                           ; $6155: $98
	adc  b                                           ; $6156: $88
	adc  c                                           ; $6157: $89
	ld   a, b                                        ; $6158: $78
	adc  b                                           ; $6159: $88
	adc  b                                           ; $615a: $88
	sub  a                                           ; $615b: $97
	adc  b                                           ; $615c: $88
	add  a                                           ; $615d: $87
	adc  c                                           ; $615e: $89
	adc  c                                           ; $615f: $89
	adc  b                                           ; $6160: $88
	adc  b                                           ; $6161: $88
	adc  b                                           ; $6162: $88
	sbc  b                                           ; $6163: $98
	adc  b                                           ; $6164: $88
	adc  b                                           ; $6165: $88
	ld   a, b                                        ; $6166: $78
	adc  b                                           ; $6167: $88
	adc  b                                           ; $6168: $88
	adc  c                                           ; $6169: $89
	adc  b                                           ; $616a: $88
	adc  b                                           ; $616b: $88
	adc  b                                           ; $616c: $88
	adc  b                                           ; $616d: $88
	sbc  b                                           ; $616e: $98
	adc  b                                           ; $616f: $88
	adc  b                                           ; $6170: $88
	adc  b                                           ; $6171: $88
	adc  b                                           ; $6172: $88
	adc  b                                           ; $6173: $88
	adc  b                                           ; $6174: $88
	adc  c                                           ; $6175: $89
	adc  c                                           ; $6176: $89
	adc  b                                           ; $6177: $88
	adc  b                                           ; $6178: $88
	ld   a, c                                        ; $6179: $79
	adc  b                                           ; $617a: $88
	adc  b                                           ; $617b: $88
	adc  b                                           ; $617c: $88
	adc  b                                           ; $617d: $88
	adc  b                                           ; $617e: $88
	adc  b                                           ; $617f: $88
	adc  b                                           ; $6180: $88
	adc  b                                           ; $6181: $88
	adc  b                                           ; $6182: $88
	adc  c                                           ; $6183: $89
	sbc  b                                           ; $6184: $98
	adc  b                                           ; $6185: $88
	adc  c                                           ; $6186: $89
	adc  c                                           ; $6187: $89
	adc  b                                           ; $6188: $88
	adc  b                                           ; $6189: $88
	sbc  c                                           ; $618a: $99
	adc  b                                           ; $618b: $88
	sbc  b                                           ; $618c: $98
	adc  c                                           ; $618d: $89
	adc  b                                           ; $618e: $88
	adc  b                                           ; $618f: $88
	adc  c                                           ; $6190: $89
	adc  b                                           ; $6191: $88
	sbc  b                                           ; $6192: $98
	adc  b                                           ; $6193: $88
	adc  b                                           ; $6194: $88
	adc  b                                           ; $6195: $88
	sbc  b                                           ; $6196: $98
	adc  b                                           ; $6197: $88
	sbc  c                                           ; $6198: $99
	adc  b                                           ; $6199: $88
	sbc  b                                           ; $619a: $98
	adc  b                                           ; $619b: $88
	adc  b                                           ; $619c: $88
	adc  c                                           ; $619d: $89
	adc  b                                           ; $619e: $88
	adc  c                                           ; $619f: $89
	adc  b                                           ; $61a0: $88
	adc  b                                           ; $61a1: $88
	adc  b                                           ; $61a2: $88
	adc  b                                           ; $61a3: $88
	adc  b                                           ; $61a4: $88
	adc  b                                           ; $61a5: $88
	sbc  b                                           ; $61a6: $98
	adc  c                                           ; $61a7: $89
	adc  b                                           ; $61a8: $88
	adc  b                                           ; $61a9: $88
	adc  c                                           ; $61aa: $89
	adc  b                                           ; $61ab: $88
	adc  b                                           ; $61ac: $88
	adc  b                                           ; $61ad: $88
	sub  a                                           ; $61ae: $97
	sbc  c                                           ; $61af: $99
	adc  b                                           ; $61b0: $88
	adc  b                                           ; $61b1: $88
	adc  b                                           ; $61b2: $88
	adc  b                                           ; $61b3: $88
	adc  b                                           ; $61b4: $88
	sbc  b                                           ; $61b5: $98
	sbc  b                                           ; $61b6: $98
	adc  b                                           ; $61b7: $88
	sbc  b                                           ; $61b8: $98
	sbc  b                                           ; $61b9: $98
	adc  b                                           ; $61ba: $88
	sbc  b                                           ; $61bb: $98
	sbc  c                                           ; $61bc: $99
	adc  b                                           ; $61bd: $88
	sbc  b                                           ; $61be: $98
	adc  b                                           ; $61bf: $88
	sbc  c                                           ; $61c0: $99
	adc  b                                           ; $61c1: $88
	sbc  b                                           ; $61c2: $98
	sbc  c                                           ; $61c3: $99
	adc  b                                           ; $61c4: $88
	adc  c                                           ; $61c5: $89
	adc  c                                           ; $61c6: $89
	adc  b                                           ; $61c7: $88
	sbc  b                                           ; $61c8: $98
	adc  c                                           ; $61c9: $89
	adc  b                                           ; $61ca: $88
	adc  b                                           ; $61cb: $88
	adc  c                                           ; $61cc: $89
	sbc  c                                           ; $61cd: $99
	adc  b                                           ; $61ce: $88
	adc  c                                           ; $61cf: $89
	adc  b                                           ; $61d0: $88
	adc  c                                           ; $61d1: $89
	adc  c                                           ; $61d2: $89
	adc  b                                           ; $61d3: $88
	sbc  b                                           ; $61d4: $98
	add  a                                           ; $61d5: $87
	adc  c                                           ; $61d6: $89
	adc  c                                           ; $61d7: $89
	adc  b                                           ; $61d8: $88
	adc  b                                           ; $61d9: $88
	sbc  b                                           ; $61da: $98
	adc  b                                           ; $61db: $88
	sbc  c                                           ; $61dc: $99
	adc  b                                           ; $61dd: $88
	sbc  c                                           ; $61de: $99
	sbc  b                                           ; $61df: $98
	adc  b                                           ; $61e0: $88
	sbc  c                                           ; $61e1: $99
	adc  b                                           ; $61e2: $88
	sbc  c                                           ; $61e3: $99
	adc  b                                           ; $61e4: $88
	sbc  b                                           ; $61e5: $98
	adc  b                                           ; $61e6: $88
	adc  b                                           ; $61e7: $88
	adc  b                                           ; $61e8: $88
	sbc  b                                           ; $61e9: $98
	adc  b                                           ; $61ea: $88
	adc  c                                           ; $61eb: $89
	sbc  c                                           ; $61ec: $99
	adc  b                                           ; $61ed: $88
	adc  b                                           ; $61ee: $88
	adc  c                                           ; $61ef: $89
	adc  b                                           ; $61f0: $88
	sbc  b                                           ; $61f1: $98
	sbc  c                                           ; $61f2: $99
	adc  c                                           ; $61f3: $89
	sbc  b                                           ; $61f4: $98
	ld   a, c                                        ; $61f5: $79
	sbc  b                                           ; $61f6: $98
	adc  c                                           ; $61f7: $89
	adc  b                                           ; $61f8: $88
	adc  b                                           ; $61f9: $88
	ld   a, c                                        ; $61fa: $79
	sbc  c                                           ; $61fb: $99
	adc  b                                           ; $61fc: $88
	adc  b                                           ; $61fd: $88
	adc  b                                           ; $61fe: $88
	adc  c                                           ; $61ff: $89
	adc  b                                           ; $6200: $88
	ld   a, c                                        ; $6201: $79
	sbc  b                                           ; $6202: $98
	sbc  b                                           ; $6203: $98
	adc  c                                           ; $6204: $89
	sbc  b                                           ; $6205: $98
	adc  b                                           ; $6206: $88
	adc  c                                           ; $6207: $89
	adc  b                                           ; $6208: $88
	sbc  c                                           ; $6209: $99
	adc  c                                           ; $620a: $89
	adc  b                                           ; $620b: $88
	sbc  b                                           ; $620c: $98
	adc  b                                           ; $620d: $88
	sbc  b                                           ; $620e: $98
	adc  b                                           ; $620f: $88
	adc  b                                           ; $6210: $88
	adc  b                                           ; $6211: $88
	adc  b                                           ; $6212: $88
	adc  c                                           ; $6213: $89
	adc  b                                           ; $6214: $88
	adc  b                                           ; $6215: $88
	sbc  b                                           ; $6216: $98
	sbc  b                                           ; $6217: $98
	adc  c                                           ; $6218: $89
	adc  b                                           ; $6219: $88
	sbc  b                                           ; $621a: $98
	adc  b                                           ; $621b: $88
	adc  b                                           ; $621c: $88
	adc  c                                           ; $621d: $89
	sbc  c                                           ; $621e: $99
	adc  b                                           ; $621f: $88
	adc  c                                           ; $6220: $89
	adc  c                                           ; $6221: $89
	adc  b                                           ; $6222: $88
	adc  c                                           ; $6223: $89
	sbc  b                                           ; $6224: $98
	adc  b                                           ; $6225: $88
	sbc  c                                           ; $6226: $99
	sbc  b                                           ; $6227: $98
	adc  b                                           ; $6228: $88
	adc  b                                           ; $6229: $88
	adc  b                                           ; $622a: $88
	adc  b                                           ; $622b: $88
	adc  b                                           ; $622c: $88
	adc  b                                           ; $622d: $88
	adc  b                                           ; $622e: $88
	sbc  b                                           ; $622f: $98
	adc  c                                           ; $6230: $89
	sbc  c                                           ; $6231: $99
	adc  b                                           ; $6232: $88
	sbc  c                                           ; $6233: $99
	adc  c                                           ; $6234: $89
	sbc  b                                           ; $6235: $98
	sbc  b                                           ; $6236: $98
	sbc  c                                           ; $6237: $99
	adc  c                                           ; $6238: $89
	sbc  b                                           ; $6239: $98
	adc  b                                           ; $623a: $88
	sbc  b                                           ; $623b: $98
	adc  b                                           ; $623c: $88
	sbc  c                                           ; $623d: $99
	adc  c                                           ; $623e: $89
	adc  b                                           ; $623f: $88
	adc  b                                           ; $6240: $88
	adc  b                                           ; $6241: $88
	adc  c                                           ; $6242: $89
	adc  b                                           ; $6243: $88
	adc  c                                           ; $6244: $89
	adc  b                                           ; $6245: $88
	adc  b                                           ; $6246: $88
	adc  b                                           ; $6247: $88
	adc  c                                           ; $6248: $89
	sbc  b                                           ; $6249: $98
	adc  b                                           ; $624a: $88
	adc  b                                           ; $624b: $88
	adc  b                                           ; $624c: $88
	adc  c                                           ; $624d: $89
	sub  a                                           ; $624e: $97
	adc  b                                           ; $624f: $88
	adc  c                                           ; $6250: $89
	adc  b                                           ; $6251: $88
	adc  b                                           ; $6252: $88
	adc  b                                           ; $6253: $88
	adc  c                                           ; $6254: $89
	adc  b                                           ; $6255: $88
	sbc  c                                           ; $6256: $99
	adc  b                                           ; $6257: $88
	adc  b                                           ; $6258: $88
	sbc  b                                           ; $6259: $98
	ld   a, b                                        ; $625a: $78
	adc  c                                           ; $625b: $89
	adc  b                                           ; $625c: $88
	adc  b                                           ; $625d: $88
	sbc  b                                           ; $625e: $98
	adc  b                                           ; $625f: $88
	adc  c                                           ; $6260: $89
	ld   a, b                                        ; $6261: $78
	adc  b                                           ; $6262: $88
	add  a                                           ; $6263: $87
	sbc  b                                           ; $6264: $98
	ld   [hl], a                                     ; $6265: $77
	adc  b                                           ; $6266: $88
	adc  b                                           ; $6267: $88
	add  a                                           ; $6268: $87
	ld   a, b                                        ; $6269: $78
	adc  b                                           ; $626a: $88
	add  a                                           ; $626b: $87
	adc  b                                           ; $626c: $88
	add  a                                           ; $626d: $87
	ld   a, b                                        ; $626e: $78
	ld   a, b                                        ; $626f: $78
	add  a                                           ; $6270: $87
	ld   [hl], a                                     ; $6271: $77
	add  a                                           ; $6272: $87
	adc  b                                           ; $6273: $88
	ld   a, b                                        ; $6274: $78
	adc  b                                           ; $6275: $88
	adc  b                                           ; $6276: $88
	add  a                                           ; $6277: $87
	ld   a, b                                        ; $6278: $78
	add  a                                           ; $6279: $87
	adc  c                                           ; $627a: $89
	adc  c                                           ; $627b: $89
	sub  a                                           ; $627c: $97
	adc  b                                           ; $627d: $88
	adc  b                                           ; $627e: $88
	adc  b                                           ; $627f: $88
	ld   [hl], a                                     ; $6280: $77
	add  a                                           ; $6281: $87
	ld   a, b                                        ; $6282: $78
	ld   [hl], a                                     ; $6283: $77
	ld   a, c                                        ; $6284: $79
	and  a                                           ; $6285: $a7
	ld   a, c                                        ; $6286: $79
	ld   [hl], a                                     ; $6287: $77
	adc  b                                           ; $6288: $88
	adc  b                                           ; $6289: $88
	ld   [hl], a                                     ; $628a: $77
	adc  b                                           ; $628b: $88
	add  a                                           ; $628c: $87
	ld   [hl], a                                     ; $628d: $77
	ld   a, c                                        ; $628e: $79
	sbc  b                                           ; $628f: $98
	ld   a, b                                        ; $6290: $78
	adc  b                                           ; $6291: $88
	add  a                                           ; $6292: $87
	add  a                                           ; $6293: $87
	adc  b                                           ; $6294: $88
	ld   [hl], a                                     ; $6295: $77
	adc  b                                           ; $6296: $88
	adc  b                                           ; $6297: $88
	adc  b                                           ; $6298: $88
	add  a                                           ; $6299: $87
	adc  c                                           ; $629a: $89
	ld   [hl], a                                     ; $629b: $77
	ld   [hl], a                                     ; $629c: $77
	ld   a, b                                        ; $629d: $78
	sbc  d                                           ; $629e: $9a
	add  a                                           ; $629f: $87
	ld   a, c                                        ; $62a0: $79
	sub  a                                           ; $62a1: $97
	adc  b                                           ; $62a2: $88
	ld   a, b                                        ; $62a3: $78
	add  a                                           ; $62a4: $87
	add  a                                           ; $62a5: $87
	ld   [hl], a                                     ; $62a6: $77
	adc  b                                           ; $62a7: $88
	xor  c                                           ; $62a8: $a9
	ld   l, c                                        ; $62a9: $69
	sub  a                                           ; $62aa: $97
	adc  b                                           ; $62ab: $88
	adc  b                                           ; $62ac: $88
	sub  a                                           ; $62ad: $97
	adc  b                                           ; $62ae: $88
	ld   [hl], a                                     ; $62af: $77
	ld   a, c                                        ; $62b0: $79
	sbc  c                                           ; $62b1: $99
	ld   [hl], a                                     ; $62b2: $77
	sbc  c                                           ; $62b3: $99
	adc  b                                           ; $62b4: $88
	ld   [hl], a                                     ; $62b5: $77
	adc  b                                           ; $62b6: $88
	ld   [hl], a                                     ; $62b7: $77
	add  a                                           ; $62b8: $87
	ld   a, b                                        ; $62b9: $78
	adc  b                                           ; $62ba: $88
	sbc  c                                           ; $62bb: $99
	add  a                                           ; $62bc: $87
	sbc  b                                           ; $62bd: $98
	adc  b                                           ; $62be: $88
	ld   [hl], a                                     ; $62bf: $77
	sbc  b                                           ; $62c0: $98
	ld   [hl], a                                     ; $62c1: $77
	ld   a, b                                        ; $62c2: $78
	adc  c                                           ; $62c3: $89
	ld   a, b                                        ; $62c4: $78
	sbc  b                                           ; $62c5: $98
	adc  b                                           ; $62c6: $88
	ld   a, b                                        ; $62c7: $78
	sub  a                                           ; $62c8: $97
	ld   [hl], a                                     ; $62c9: $77
	adc  b                                           ; $62ca: $88
	adc  c                                           ; $62cb: $89
	add  a                                           ; $62cc: $87
	ld   a, b                                        ; $62cd: $78
	adc  b                                           ; $62ce: $88
	adc  c                                           ; $62cf: $89
	ld   [hl], a                                     ; $62d0: $77
	sub  a                                           ; $62d1: $97
	ld   a, b                                        ; $62d2: $78
	adc  b                                           ; $62d3: $88
	adc  c                                           ; $62d4: $89
	adc  b                                           ; $62d5: $88
	add  a                                           ; $62d6: $87
	adc  c                                           ; $62d7: $89
	add  a                                           ; $62d8: $87
	adc  b                                           ; $62d9: $88
	ld   [hl], a                                     ; $62da: $77
	ld   a, b                                        ; $62db: $78
	adc  b                                           ; $62dc: $88
	adc  b                                           ; $62dd: $88
	add  a                                           ; $62de: $87

Jump_0d8_62df:
	adc  c                                           ; $62df: $89
	sbc  b                                           ; $62e0: $98
	ld   [hl], a                                     ; $62e1: $77
	ld   a, b                                        ; $62e2: $78
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	ld   [hl], a                                     ; $62e5: $77
	adc  b                                           ; $62e6: $88
	adc  b                                           ; $62e7: $88
	adc  b                                           ; $62e8: $88
	sbc  b                                           ; $62e9: $98
	adc  b                                           ; $62ea: $88
	sbc  b                                           ; $62eb: $98
	ld   [hl], a                                     ; $62ec: $77
	adc  b                                           ; $62ed: $88
	adc  b                                           ; $62ee: $88
	adc  b                                           ; $62ef: $88
	adc  b                                           ; $62f0: $88
	adc  b                                           ; $62f1: $88
	add  a                                           ; $62f2: $87
	adc  c                                           ; $62f3: $89
	adc  c                                           ; $62f4: $89
	adc  b                                           ; $62f5: $88
	adc  b                                           ; $62f6: $88
	adc  b                                           ; $62f7: $88
	adc  b                                           ; $62f8: $88
	adc  b                                           ; $62f9: $88
	adc  b                                           ; $62fa: $88
	sbc  c                                           ; $62fb: $99
	add  a                                           ; $62fc: $87
	adc  b                                           ; $62fd: $88
	adc  b                                           ; $62fe: $88
	adc  c                                           ; $62ff: $89
	sbc  c                                           ; $6300: $99
	adc  b                                           ; $6301: $88
	adc  b                                           ; $6302: $88
	adc  b                                           ; $6303: $88
	adc  c                                           ; $6304: $89
	sbc  b                                           ; $6305: $98
	adc  b                                           ; $6306: $88
	adc  b                                           ; $6307: $88
	adc  b                                           ; $6308: $88
	adc  b                                           ; $6309: $88
	adc  b                                           ; $630a: $88
	adc  b                                           ; $630b: $88
	sbc  c                                           ; $630c: $99
	sbc  b                                           ; $630d: $98
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

Call_0d8_6476:
	adc  b                                           ; $6476: $88
	adc  b                                           ; $6477: $88

Call_0d8_6478:
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

Call_0d8_6484:
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
	sbc  b                                           ; $64b7: $98
	adc  b                                           ; $64b8: $88
	adc  b                                           ; $64b9: $88
	adc  b                                           ; $64ba: $88
	adc  b                                           ; $64bb: $88
	adc  b                                           ; $64bc: $88
	adc  b                                           ; $64bd: $88
	adc  c                                           ; $64be: $89
	sbc  b                                           ; $64bf: $98
	adc  b                                           ; $64c0: $88
	ld   a, b                                        ; $64c1: $78
	adc  c                                           ; $64c2: $89
	sbc  b                                           ; $64c3: $98
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
	ld   [hl], a                                     ; $64d1: $77
	ld   a, b                                        ; $64d2: $78
	sbc  c                                           ; $64d3: $99
	sbc  b                                           ; $64d4: $98
	adc  b                                           ; $64d5: $88
	ld   a, b                                        ; $64d6: $78
	adc  c                                           ; $64d7: $89
	adc  b                                           ; $64d8: $88
	ld   [hl], a                                     ; $64d9: $77
	adc  b                                           ; $64da: $88
	sbc  b                                           ; $64db: $98
	adc  b                                           ; $64dc: $88
	ld   a, b                                        ; $64dd: $78
	adc  c                                           ; $64de: $89
	sbc  c                                           ; $64df: $99
	adc  b                                           ; $64e0: $88
	adc  b                                           ; $64e1: $88
	adc  b                                           ; $64e2: $88
	add  a                                           ; $64e3: $87
	ld   a, b                                        ; $64e4: $78
	adc  b                                           ; $64e5: $88
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  b                                           ; $64ea: $88
	adc  b                                           ; $64eb: $88
	adc  c                                           ; $64ec: $89
	sbc  b                                           ; $64ed: $98
	add  a                                           ; $64ee: $87
	ld   a, c                                        ; $64ef: $79
	call Call_0d8_74db                               ; $64f0: $cd $db $74
	dec  [hl]                                        ; $64f3: $35
	ld   a, e                                        ; $64f4: $7b
	xor  c                                           ; $64f5: $a9
	ld   h, e                                        ; $64f6: $63
	ld   b, l                                        ; $64f7: $45
	adc  c                                           ; $64f8: $89
	sbc  b                                           ; $64f9: $98
	halt                                             ; $64fa: $76
	ld   l, b                                        ; $64fb: $68
	sbc  c                                           ; $64fc: $99
	add  a                                           ; $64fd: $87
	ld   [hl], a                                     ; $64fe: $77
	ld   a, c                                        ; $64ff: $79
	sbc  c                                           ; $6500: $99
	add  a                                           ; $6501: $87
	ld   a, b                                        ; $6502: $78
	sbc  c                                           ; $6503: $99
	sbc  b                                           ; $6504: $98
	ld   [hl], a                                     ; $6505: $77
	ld   a, b                                        ; $6506: $78
	adc  b                                           ; $6507: $88
	adc  b                                           ; $6508: $88
	adc  c                                           ; $6509: $89
	sbc  c                                           ; $650a: $99
	sbc  b                                           ; $650b: $98
	add  a                                           ; $650c: $87
	halt                                             ; $650d: $76
	ld   d, [hl]                                     ; $650e: $56
	ld   a, c                                        ; $650f: $79
	sbc  c                                           ; $6510: $99
	adc  b                                           ; $6511: $88
	halt                                             ; $6512: $76
	ld   [hl], a                                     ; $6513: $77
	halt                                             ; $6514: $76
	ld   h, l                                        ; $6515: $65
	ld   d, l                                        ; $6516: $55
	ld   d, l                                        ; $6517: $55
	ld   b, h                                        ; $6518: $44
	ld   d, [hl]                                     ; $6519: $56
	adc  c                                           ; $651a: $89
	sbc  d                                           ; $651b: $9a
	sbc  d                                           ; $651c: $9a
	call z, $dcdd                                    ; $651d: $cc $dd $dc
	cp   h                                           ; $6520: $bc
	db   $dd                                         ; $6521: $dd
	jp   z, Jump_0d8_6786                            ; $6522: $ca $86 $67

	adc  b                                           ; $6525: $88
	halt                                             ; $6526: $76
	ld   d, l                                        ; $6527: $55
	ld   d, [hl]                                     ; $6528: $56
	ld   [hl], a                                     ; $6529: $77
	halt                                             ; $652a: $76
	ld   b, e                                        ; $652b: $43
	inc  sp                                          ; $652c: $33
	ld   [hl-], a                                    ; $652d: $32
	ld   de, $6813                                   ; $652e: $11 $13 $68
	cp   h                                           ; $6531: $bc
	call z, $ffee                                    ; $6532: $cc $ee $ff
	rst  $38                                         ; $6535: $ff
	xor  $cb                                         ; $6536: $ee $cb
	cp   d                                           ; $6538: $ba
	halt                                             ; $6539: $76
	ld   d, h                                        ; $653a: $54
	ld   d, a                                        ; $653b: $57
	sbc  c                                           ; $653c: $99
	sbc  b                                           ; $653d: $98
	ld   h, [hl]                                     ; $653e: $66
	ld   h, a                                        ; $653f: $67
	sbc  c                                           ; $6540: $99
	ld   [hl], e                                     ; $6541: $73
	ld   de, $1111                                   ; $6542: $11 $11 $11
	inc  [hl]                                        ; $6545: $34
	ld   b, [hl]                                     ; $6546: $46
	adc  h                                           ; $6547: $8c
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	rst  $38                                         ; $654b: $ff
	rst  $38                                         ; $654c: $ff
	cp   $b7                                         ; $654d: $fe $b7
	ld   b, e                                        ; $654f: $43
	ld   b, [hl]                                     ; $6550: $46
	adc  c                                           ; $6551: $89
	sbc  c                                           ; $6552: $99
	add  a                                           ; $6553: $87
	ld   h, a                                        ; $6554: $67
	ld   [hl], a                                     ; $6555: $77
	ld   h, h                                        ; $6556: $64
	ld   de, $1111                                   ; $6557: $11 $11 $11
	ld   de, $9e14                                   ; $655a: $11 $14 $9e
	rst  $38                                         ; $655d: $ff
	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	db   $fd                                         ; $6562: $fd
	or   a                                           ; $6563: $b7
	ld   b, e                                        ; $6564: $43
	inc  [hl]                                        ; $6565: $34
	ld   l, b                                        ; $6566: $68
	sbc  d                                           ; $6567: $9a
	cp   d                                           ; $6568: $ba
	sub  a                                           ; $6569: $97
	ld   d, h                                        ; $656a: $54
	ld   [hl-], a                                    ; $656b: $32
	ld   de, $1111                                   ; $656c: $11 $11 $11
	ld   de, $ff4a                                   ; $656f: $11 $4a $ff
	rst  $38                                         ; $6572: $ff
	rst  $38                                         ; $6573: $ff
	rst  $38                                         ; $6574: $ff
	rst  $38                                         ; $6575: $ff
	rst  $38                                         ; $6576: $ff
	jp   c, $3285                                    ; $6577: $da $85 $32

	ld   b, [hl]                                     ; $657a: $46
	adc  d                                           ; $657b: $8a
	cp   e                                           ; $657c: $bb
	xor  c                                           ; $657d: $a9
	add  l                                           ; $657e: $85
	inc  sp                                          ; $657f: $33
	ld   hl, $1111                                   ; $6580: $21 $11 $11
	ld   de, $7d11                                   ; $6583: $11 $11 $7d
	rst  $38                                         ; $6586: $ff

Jump_0d8_6587:
	rst  $38                                         ; $6587: $ff
	rst  $38                                         ; $6588: $ff
	rst  $38                                         ; $6589: $ff
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	jp   z, Jump_0d8_4475                            ; $658c: $ca $75 $44

	ld   l, b                                        ; $658f: $68
	cp   e                                           ; $6590: $bb
	call z, Call_0d8_75a9                            ; $6591: $cc $a9 $75
	ld   b, e                                        ; $6594: $43
	ld   hl, $1111                                   ; $6595: $21 $11 $11
	ld   de, $1a11                                   ; $6598: $11 $11 $1a
	rst  $38                                         ; $659b: $ff
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	rst  $38                                         ; $65a0: $ff
	rst  $38                                         ; $65a1: $ff
	xor  b                                           ; $65a2: $a8
	ld   d, h                                        ; $65a3: $54
	ld   d, [hl]                                     ; $65a4: $56
	adc  d                                           ; $65a5: $8a
	xor  e                                           ; $65a6: $ab
	adc  b                                           ; $65a7: $88

Jump_0d8_65a8:
	ld   [hl], h                                     ; $65a8: $74
	ld   sp, $1111                                   ; $65a9: $31 $11 $11
	ld   de, $1111                                   ; $65ac: $11 $11 $11
	ld   e, a                                        ; $65af: $5f
	rst  $38                                         ; $65b0: $ff
	rst  $38                                         ; $65b1: $ff
	rst  $38                                         ; $65b2: $ff
	rst  $38                                         ; $65b3: $ff
	rst  $28                                         ; $65b4: $ef
	rst  $38                                         ; $65b5: $ff
	ld   [$1352], a                                  ; $65b6: $ea $52 $13

Call_0d8_65b9:
	ld   l, d                                        ; $65b9: $6a
	sbc  $db                                         ; $65ba: $de $db
	add  l                                           ; $65bc: $85
	ld   b, c                                        ; $65bd: $41
	ld   de, $1111                                   ; $65be: $11 $11 $11
	ld   de, $1c11                                   ; $65c1: $11 $11 $1c
	rst  $38                                         ; $65c4: $ff
	rst  $38                                         ; $65c5: $ff
	rst  $38                                         ; $65c6: $ff
	db   $fd                                         ; $65c7: $fd
	adc  $ff                                         ; $65c8: $ce $ff
	cp   $94                                         ; $65ca: $fe $94
	ld   de, $ef4a                                   ; $65cc: $11 $4a $ef
	db   $fd                                         ; $65cf: $fd
	sub  a                                           ; $65d0: $97
	ld   b, d                                        ; $65d1: $42
	ld   de, $1111                                   ; $65d2: $11 $11 $11
	ld   de, $1411                                   ; $65d5: $11 $11 $14
	rst  $28                                         ; $65d8: $ef
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	db   $fd                                         ; $65db: $fd
	jp   z, $ffdf                                    ; $65dc: $ca $df $ff

	ret  c                                           ; $65df: $d8

	ld   sp, $df49                                   ; $65e0: $31 $49 $df
	rst  $38                                         ; $65e3: $ff
	ret                                              ; $65e4: $c9


	ld   d, e                                        ; $65e5: $53
	ld   hl, $1111                                   ; $65e6: $21 $11 $11
	ld   de, $1111                                   ; $65e9: $11 $11 $11
	ld   l, a                                        ; $65ec: $6f
	rst  $38                                         ; $65ed: $ff
	rst  $38                                         ; $65ee: $ff
	rst  $38                                         ; $65ef: $ff
	xor  b                                           ; $65f0: $a8
	xor  l                                           ; $65f1: $ad
	rst  $38                                         ; $65f2: $ff
	cp   $72                                         ; $65f3: $fe $72
	dec  h                                           ; $65f5: $25
	cp   a                                           ; $65f6: $bf
	rst  $38                                         ; $65f7: $ff
	reti                                             ; $65f8: $d9


	ld   d, e                                        ; $65f9: $53
	ld   [hl-], a                                    ; $65fa: $32
	ld   de, $1111                                   ; $65fb: $11 $11 $11
	ld   de, $8f11                                   ; $65fe: $11 $11 $8f
	rst  $38                                         ; $6601: $ff
	rst  $38                                         ; $6602: $ff
	rst  $38                                         ; $6603: $ff
	db   $db                                         ; $6604: $db
	adc  $ff                                         ; $6605: $ce $ff
	db   $fd                                         ; $6607: $fd
	add  e                                           ; $6608: $83
	dec  h                                           ; $6609: $25
	sbc  [hl]                                        ; $660a: $9e
	rst  $38                                         ; $660b: $ff
	ei                                               ; $660c: $fb
	ld   [hl], h                                     ; $660d: $74
	ld   hl, $1111                                   ; $660e: $21 $11 $11
	ld   de, $1211                                   ; $6611: $11 $11 $12
	rst  $28                                         ; $6614: $ef
	rst  $38                                         ; $6615: $ff
	rst  $38                                         ; $6616: $ff
	rst  $38                                         ; $6617: $ff
	set  3, a                                        ; $6618: $cb $df
	rst  $38                                         ; $661a: $ff
	rst  ToBoot                                         ; $661b: $c7
	inc  sp                                          ; $661c: $33
	ld   e, c                                        ; $661d: $59
	rst  $38                                         ; $661e: $ff
	rst  $38                                         ; $661f: $ff
	rst  $10                                         ; $6620: $d7
	ld   d, d                                        ; $6621: $52
	ld   de, $1111                                   ; $6622: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $6625: $11 $12 $ff
	rst  $38                                         ; $6628: $ff
	rst  $38                                         ; $6629: $ff
	rst  $38                                         ; $662a: $ff
	cp   e                                           ; $662b: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $662c: $cf
	db   $fd                                         ; $662d: $fd
	sub  l                                           ; $662e: $95
	ld   [hl-], a                                    ; $662f: $32
	ld   c, c                                        ; $6630: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6631: $cf
	cp   $ca                                         ; $6632: $fe $ca
	ld   b, c                                        ; $6634: $41
	ld   de, $1111                                   ; $6635: $11 $11 $11
	ld   de, $ff8f                                   ; $6638: $11 $8f $ff
	rst  $38                                         ; $663b: $ff
	rst  $38                                         ; $663c: $ff
	rst  $38                                         ; $663d: $ff
	rst  $28                                         ; $663e: $ef
	ei                                               ; $663f: $fb
	sub  [hl]                                        ; $6640: $96
	ld   hl, $ac35                                   ; $6641: $21 $35 $ac
	cp   $bb                                         ; $6644: $fe $bb
	ld   b, c                                        ; $6646: $41
	ld   de, $1111                                   ; $6647: $11 $11 $11
	add  hl, de                                      ; $664a: $19
	rst  $38                                         ; $664b: $ff
	rst  $38                                         ; $664c: $ff
	rst  $38                                         ; $664d: $ff
	rst  $38                                         ; $664e: $ff
	cp   $de                                         ; $664f: $fe $de
	call c, $1184                                    ; $6651: $dc $84 $11
	inc  d                                           ; $6654: $14
	sbc  h                                           ; $6655: $9c
	cp   d                                           ; $6656: $ba
	ld   h, c                                        ; $6657: $61
	ld   de, $1111                                   ; $6658: $11 $11 $11
	rla                                              ; $665b: $17
	rst  $38                                         ; $665c: $ff
	rst  $38                                         ; $665d: $ff
	rst  $38                                         ; $665e: $ff
	rst  $38                                         ; $665f: $ff
	db   $fd                                         ; $6660: $fd
	rst  $38                                         ; $6661: $ff
	db   $fd                                         ; $6662: $fd
	sub  d                                           ; $6663: $92
	ld   de, $7814                                   ; $6664: $11 $14 $78
	ld   h, e                                        ; $6667: $63
	ld   de, $1111                                   ; $6668: $11 $11 $11
	ld   de, $ff9f                                   ; $666b: $11 $9f $ff
	rst  $38                                         ; $666e: $ff
	rst  $38                                         ; $666f: $ff
	rst  $38                                         ; $6670: $ff
	rst  $28                                         ; $6671: $ef
	rst  $38                                         ; $6672: $ff
	ei                                               ; $6673: $fb
	ld   d, c                                        ; $6674: $51
	ld   de, $4414                                   ; $6675: $11 $14 $44
	ld   hl, $1111                                   ; $6678: $21 $11 $11
	inc  d                                           ; $667b: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $667c: $cf
	rst  $38                                         ; $667d: $ff
	rst  $38                                         ; $667e: $ff
	rst  $38                                         ; $667f: $ff
	db   $fd                                         ; $6680: $fd
	rst  $28                                         ; $6681: $ef
	rst  $38                                         ; $6682: $ff
	cp   $52                                         ; $6683: $fe $52
	ld   hl, $1122                                   ; $6685: $21 $22 $11
	ld   de, $1111                                   ; $6688: $11 $11 $11
	ld   a, [hl]                                     ; $668b: $7e
	rst  $38                                         ; $668c: $ff
	rst  $38                                         ; $668d: $ff
	rst  $38                                         ; $668e: $ff
	call c, $ff9c                                    ; $668f: $dc $9c $ff
	rst  $38                                         ; $6692: $ff
	ld   [hl], e                                     ; $6693: $73
	inc  d                                           ; $6694: $14
	ld   h, [hl]                                     ; $6695: $66
	ld   h, d                                        ; $6696: $62
	ld   de, $1111                                   ; $6697: $11 $11 $11
	add  hl, sp                                      ; $669a: $39
	rst  $38                                         ; $669b: $ff
	rst  $38                                         ; $669c: $ff
	rst  $38                                         ; $669d: $ff
	db   $fd                                         ; $669e: $fd
	xor  h                                           ; $669f: $ac
	rst  $38                                         ; $66a0: $ff
	rst  $38                                         ; $66a1: $ff
	sub  c                                           ; $66a2: $91
	ld   de, $1122                                   ; $66a3: $11 $22 $11
	ld   de, $1411                                   ; $66a6: $11 $11 $14
	ld   l, [hl]                                     ; $66a9: $6e
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	db   $fd                                         ; $66ac: $fd
	xor  h                                           ; $66ad: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66ae: $cf
	rst  $38                                         ; $66af: $ff
	db   $fc                                         ; $66b0: $fc
	ld   h, c                                        ; $66b1: $61
	ld   hl, $1111                                   ; $66b2: $21 $11 $11
	ld   de, $6a11                                   ; $66b5: $11 $11 $6a
	rst  $38                                         ; $66b8: $ff

Call_0d8_66b9:
	rst  $38                                         ; $66b9: $ff
	rst  $38                                         ; $66ba: $ff
	call $ffbf                                       ; $66bb: $cd $bf $ff
	db   $fd                                         ; $66be: $fd
	add  e                                           ; $66bf: $83
	ld   [hl-], a                                    ; $66c0: $32
	ld   de, $1111                                   ; $66c1: $11 $11 $11
	ld   de, $df7a                                   ; $66c4: $11 $7a $df
	rst  $38                                         ; $66c7: $ff
	rst  $38                                         ; $66c8: $ff
	call $ffce                                       ; $66c9: $cd $ce $ff
	cp   $b6                                         ; $66cc: $fe $b6
	ld   [hl-], a                                    ; $66ce: $32
	ld   de, $1111                                   ; $66cf: $11 $11 $11
	inc  de                                          ; $66d2: $13
	sbc  [hl]                                        ; $66d3: $9e
	rst  $38                                         ; $66d4: $ff
	rst  $38                                         ; $66d5: $ff
	cp   $ee                                         ; $66d6: $fe $ee
	sbc  $ff                                         ; $66d8: $de $ff
	db   $fc                                         ; $66da: $fc
	ld   h, h                                        ; $66db: $64
	ld   hl, $1111                                   ; $66dc: $21 $11 $11
	ld   de, $bd48                                   ; $66df: $11 $48 $bd
	rst  JumpTable                                         ; $66e2: $df
	rst  $38                                         ; $66e3: $ff
	db   $ed                                         ; $66e4: $ed
	db   $ed                                         ; $66e5: $ed
	rst  $38                                         ; $66e6: $ff
	cp   $b6                                         ; $66e7: $fe $b6
	ld   sp, $1111                                   ; $66e9: $31 $11 $11
	ld   de, $8f13                                   ; $66ec: $11 $13 $8f
	db   $ed                                         ; $66ef: $ed
	call z, $fdbf                                    ; $66f0: $cc $bf $fd
	rst  $28                                         ; $66f3: $ef
	rst  $38                                         ; $66f4: $ff
	jp   hl                                          ; $66f5: $e9


	ld   de, $1111                                   ; $66f6: $11 $11 $11
	ld   de, $7637                                   ; $66f9: $11 $37 $76
	sbc  d                                           ; $66fc: $9a
	call $cdde                                       ; $66fd: $cd $de $cd
	rst  $38                                         ; $6700: $ff
	db   $fc                                         ; $6701: $fc
	ret  z                                           ; $6702: $c8

	ld   d, h                                        ; $6703: $54
	ld   de, $1121                                   ; $6704: $11 $21 $11
	inc  h                                           ; $6707: $24
	ld   l, c                                        ; $6708: $69
	ld   l, b                                        ; $6709: $68
	cp   d                                           ; $670a: $ba
	xor  l                                           ; $670b: $ad
	db   $fc                                         ; $670c: $fc
	sbc  a                                           ; $670d: $9f
	ld   sp, hl                                      ; $670e: $f9
	cp   e                                           ; $670f: $bb
	inc  de                                          ; $6710: $13
	ld   d, d                                        ; $6711: $52
	ld   [hl+], a                                    ; $6712: $22
	ld   de, $4456                                   ; $6713: $11 $56 $44
	adc  d                                           ; $6716: $8a
	and  a                                           ; $6717: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6718: $cf
	sbc  $bc                                         ; $6719: $de $bc
	cp   l                                           ; $671b: $bd
	jp   $3452                                       ; $671c: $c3 $52 $34


	ld   de, $5536                                   ; $671f: $11 $36 $55
	ld   [hl], a                                     ; $6722: $77
	cp   d                                           ; $6723: $ba
	adc  h                                           ; $6724: $8c
	call z, $efdb                                    ; $6725: $cc $db $ef
	ld   [hl], a                                     ; $6728: $77
	sub  [hl]                                        ; $6729: $96
	ld   [hl+], a                                    ; $672a: $22
	ld   d, l                                        ; $672b: $55
	ld   d, e                                        ; $672c: $53
	inc  h                                           ; $672d: $24
	xor  d                                           ; $672e: $aa
	ld   b, l                                        ; $672f: $45
	adc  e                                           ; $6730: $8b
	ld   sp, hl                                      ; $6731: $f9
	ld   a, c                                        ; $6732: $79
	xor  $a4                                         ; $6733: $ee $a4
	ld   a, e                                        ; $6735: $7b
	ld   [hl], e                                     ; $6736: $73
	ld   h, $a7                                      ; $6737: $26 $a7
	ld   d, e                                        ; $6739: $53
	ld   e, c                                        ; $673a: $59
	and  l                                           ; $673b: $a5
	dec  h                                           ; $673c: $25
	db   $ed                                         ; $673d: $ed
	ld   l, b                                        ; $673e: $68
	sbc  $b8                                         ; $673f: $de $b8
	ld   d, a                                        ; $6741: $57
	cp   c                                           ; $6742: $b9
	inc  [hl]                                        ; $6743: $34
	adc  b                                           ; $6744: $88
	ld   d, e                                        ; $6745: $53
	ld   [hl], $b4                                   ; $6746: $36 $b4
	ld   [hl], $9f                                   ; $6748: $36 $9f
	sub  h                                           ; $674a: $94
	ld   l, a                                        ; $674b: $6f
	add  $69                                         ; $674c: $c6 $69
	db   $ec                                         ; $674e: $ec
	inc  hl                                          ; $674f: $23
	cp   e                                           ; $6750: $bb
	ld   [hl], d                                     ; $6751: $72
	ld   d, l                                        ; $6752: $55
	sub  h                                           ; $6753: $94
	dec  [hl]                                        ; $6754: $35
	ld   l, d                                        ; $6755: $6a
	ld   c, e                                        ; $6756: $4b
	ld   [hl], h                                     ; $6757: $74
	or   l                                           ; $6758: $b5
	adc  d                                           ; $6759: $8a
	add  h                                           ; $675a: $84
	cp   d                                           ; $675b: $ba
	ld   e, b                                        ; $675c: $58
	ld   e, d                                        ; $675d: $5a
	ld   [hl], l                                     ; $675e: $75
	ld   h, [hl]                                     ; $675f: $66
	ld   l, c                                        ; $6760: $69
	ld   d, l                                        ; $6761: $55
	or   a                                           ; $6762: $b7
	ld   [hl], a                                     ; $6763: $77
	ld   h, a                                        ; $6764: $67
	or   a                                           ; $6765: $b7
	ld   c, e                                        ; $6766: $4b
	xor  c                                           ; $6767: $a9
	ld   e, e                                        ; $6768: $5b
	cp   c                                           ; $6769: $b9
	halt                                             ; $676a: $76
	cp   h                                           ; $676b: $bc
	adc  b                                           ; $676c: $88
	adc  c                                           ; $676d: $89
	and  a                                           ; $676e: $a7
	ld   a, b                                        ; $676f: $78
	xor  b                                           ; $6770: $a8
	adc  c                                           ; $6771: $89
	ld   a, d                                        ; $6772: $7a
	sbc  d                                           ; $6773: $9a
	ld   l, d                                        ; $6774: $6a
	and  a                                           ; $6775: $a7
	xor  c                                           ; $6776: $a9
	xor  c                                           ; $6777: $a9
	xor  c                                           ; $6778: $a9
	xor  c                                           ; $6779: $a9
	ld   a, e                                        ; $677a: $7b
	and  [hl]                                        ; $677b: $a6
	adc  c                                           ; $677c: $89
	adc  d                                           ; $677d: $8a
	ld   [hl], a                                     ; $677e: $77
	xor  b                                           ; $677f: $a8
	sbc  d                                           ; $6780: $9a
	sbc  b                                           ; $6781: $98
	xor  d                                           ; $6782: $aa
	adc  c                                           ; $6783: $89
	xor  b                                           ; $6784: $a8
	xor  c                                           ; $6785: $a9

Jump_0d8_6786:
	ld   a, e                                        ; $6786: $7b
	sub  a                                           ; $6787: $97
	sbc  c                                           ; $6788: $99
	sbc  d                                           ; $6789: $9a
	adc  c                                           ; $678a: $89
	xor  c                                           ; $678b: $a9
	adc  c                                           ; $678c: $89
	and  a                                           ; $678d: $a7
	sbc  d                                           ; $678e: $9a
	xor  c                                           ; $678f: $a9
	xor  h                                           ; $6790: $ac
	sbc  e                                           ; $6791: $9b
	sbc  d                                           ; $6792: $9a
	xor  c                                           ; $6793: $a9
	adc  b                                           ; $6794: $88
	sbc  d                                           ; $6795: $9a
	and  [hl]                                        ; $6796: $a6
	cp   d                                           ; $6797: $ba
	adc  c                                           ; $6798: $89
	adc  d                                           ; $6799: $8a
	adc  c                                           ; $679a: $89
	sbc  e                                           ; $679b: $9b
	sbc  b                                           ; $679c: $98
	xor  c                                           ; $679d: $a9
	adc  d                                           ; $679e: $8a
	xor  c                                           ; $679f: $a9
	rst  ToBoot                                         ; $67a0: $c7
	sbc  b                                           ; $67a1: $98
	xor  c                                           ; $67a2: $a9
	sbc  c                                           ; $67a3: $99
	adc  b                                           ; $67a4: $88
	adc  d                                           ; $67a5: $8a
	sbc  c                                           ; $67a6: $99
	adc  b                                           ; $67a7: $88
	xor  c                                           ; $67a8: $a9
	sbc  b                                           ; $67a9: $98
	adc  c                                           ; $67aa: $89
	xor  c                                           ; $67ab: $a9
	adc  c                                           ; $67ac: $89
	xor  b                                           ; $67ad: $a8
	adc  d                                           ; $67ae: $8a
	adc  b                                           ; $67af: $88
	adc  b                                           ; $67b0: $88
	xor  b                                           ; $67b1: $a8
	sbc  d                                           ; $67b2: $9a
	adc  c                                           ; $67b3: $89
	adc  b                                           ; $67b4: $88
	ld   a, c                                        ; $67b5: $79
	ld   a, c                                        ; $67b6: $79
	adc  b                                           ; $67b7: $88
	sub  a                                           ; $67b8: $97
	sbc  c                                           ; $67b9: $99
	sub  a                                           ; $67ba: $97
	sbc  c                                           ; $67bb: $99
	adc  c                                           ; $67bc: $89
	adc  b                                           ; $67bd: $88
	ld   a, b                                        ; $67be: $78
	adc  c                                           ; $67bf: $89
	ld   a, b                                        ; $67c0: $78
	ld   a, b                                        ; $67c1: $78
	sub  a                                           ; $67c2: $97
	adc  b                                           ; $67c3: $88
	add  a                                           ; $67c4: $87
	sbc  b                                           ; $67c5: $98
	sub  a                                           ; $67c6: $97
	sub  a                                           ; $67c7: $97
	ld   a, d                                        ; $67c8: $7a
	ld   a, d                                        ; $67c9: $7a
	adc  c                                           ; $67ca: $89
	ld   a, b                                        ; $67cb: $78
	add  [hl]                                        ; $67cc: $86
	sub  a                                           ; $67cd: $97
	add  a                                           ; $67ce: $87
	adc  c                                           ; $67cf: $89
	ld   a, b                                        ; $67d0: $78
	ld   [hl], a                                     ; $67d1: $77
	ld   [hl], a                                     ; $67d2: $77
	ld   [hl], a                                     ; $67d3: $77
	ld   a, b                                        ; $67d4: $78
	add  a                                           ; $67d5: $87
	adc  c                                           ; $67d6: $89
	ld   a, b                                        ; $67d7: $78
	ld   a, c                                        ; $67d8: $79
	ld   l, b                                        ; $67d9: $68
	ld   [hl], a                                     ; $67da: $77
	and  [hl]                                        ; $67db: $a6
	add  a                                           ; $67dc: $87
	sub  a                                           ; $67dd: $97
	ld   a, b                                        ; $67de: $78
	ld   a, b                                        ; $67df: $78
	ld   a, b                                        ; $67e0: $78
	ld   a, c                                        ; $67e1: $79
	ld   a, b                                        ; $67e2: $78
	ld   [hl], a                                     ; $67e3: $77
	ld   [hl], a                                     ; $67e4: $77
	sub  a                                           ; $67e5: $97
	sub  a                                           ; $67e6: $97
	adc  b                                           ; $67e7: $88
	add  a                                           ; $67e8: $87
	adc  c                                           ; $67e9: $89
	ld   l, b                                        ; $67ea: $68
	ld   a, c                                        ; $67eb: $79
	add  a                                           ; $67ec: $87
	sbc  b                                           ; $67ed: $98
	add  a                                           ; $67ee: $87
	add  a                                           ; $67ef: $87
	ld   [hl], a                                     ; $67f0: $77
	ld   a, b                                        ; $67f1: $78
	ld   a, b                                        ; $67f2: $78
	sub  a                                           ; $67f3: $97
	adc  b                                           ; $67f4: $88
	ld   [hl], a                                     ; $67f5: $77
	adc  b                                           ; $67f6: $88
	ld   [hl], a                                     ; $67f7: $77
	adc  c                                           ; $67f8: $89
	ld   a, c                                        ; $67f9: $79
	sbc  b                                           ; $67fa: $98
	add  a                                           ; $67fb: $87
	sub  a                                           ; $67fc: $97
	ld   a, b                                        ; $67fd: $78
	adc  b                                           ; $67fe: $88
	sub  a                                           ; $67ff: $97
	adc  b                                           ; $6800: $88
	ld   a, b                                        ; $6801: $78
	ld   a, b                                        ; $6802: $78
	ld   a, b                                        ; $6803: $78
	ld   l, c                                        ; $6804: $69
	adc  b                                           ; $6805: $88
	add  a                                           ; $6806: $87
	sub  a                                           ; $6807: $97
	sub  [hl]                                        ; $6808: $96
	add  a                                           ; $6809: $87
	ld   a, b                                        ; $680a: $78
	ld   a, c                                        ; $680b: $79
	ld   a, b                                        ; $680c: $78
	ld   a, c                                        ; $680d: $79
	add  a                                           ; $680e: $87
	adc  b                                           ; $680f: $88
	ld   [hl], a                                     ; $6810: $77
	add  a                                           ; $6811: $87
	add  a                                           ; $6812: $87
	add  a                                           ; $6813: $87
	add  a                                           ; $6814: $87
	ld   a, c                                        ; $6815: $79
	add  a                                           ; $6816: $87
	ld   [hl], a                                     ; $6817: $77
	ld   a, c                                        ; $6818: $79
	ld   a, b                                        ; $6819: $78
	adc  b                                           ; $681a: $88
	ld   a, b                                        ; $681b: $78
	ld   [hl], a                                     ; $681c: $77
	ld   [hl], a                                     ; $681d: $77
	add  a                                           ; $681e: $87
	add  a                                           ; $681f: $87
	ld   a, b                                        ; $6820: $78
	ld   a, b                                        ; $6821: $78
	ld   a, c                                        ; $6822: $79
	ld   a, b                                        ; $6823: $78
	ld   [hl], a                                     ; $6824: $77
	adc  b                                           ; $6825: $88
	ld   [hl], a                                     ; $6826: $77
	sub  [hl]                                        ; $6827: $96
	add  a                                           ; $6828: $87
	adc  b                                           ; $6829: $88
	ld   l, c                                        ; $682a: $69
	ld   l, c                                        ; $682b: $69
	ld   h, a                                        ; $682c: $67
	ld   [hl], a                                     ; $682d: $77
	add  l                                           ; $682e: $85
	and  [hl]                                        ; $682f: $a6
	sub  a                                           ; $6830: $97
	ld   a, c                                        ; $6831: $79
	ld   l, b                                        ; $6832: $68
	ld   l, d                                        ; $6833: $6a
	ld   a, b                                        ; $6834: $78
	ld   a, c                                        ; $6835: $79
	ld   h, a                                        ; $6836: $67
	add  [hl]                                        ; $6837: $86
	add  [hl]                                        ; $6838: $86
	add  [hl]                                        ; $6839: $86
	sub  a                                           ; $683a: $97
	ld   a, b                                        ; $683b: $78
	ld   l, c                                        ; $683c: $69
	ld   l, b                                        ; $683d: $68
	ld   a, b                                        ; $683e: $78
	ld   a, b                                        ; $683f: $78
	sub  a                                           ; $6840: $97
	adc  b                                           ; $6841: $88
	sub  [hl]                                        ; $6842: $96
	add  a                                           ; $6843: $87
	ld   a, b                                        ; $6844: $78
	add  a                                           ; $6845: $87
	ld   a, b                                        ; $6846: $78
	ld   a, b                                        ; $6847: $78
	ld   a, b                                        ; $6848: $78
	ld   a, b                                        ; $6849: $78
	add  [hl]                                        ; $684a: $86
	sub  a                                           ; $684b: $97
	sub  a                                           ; $684c: $97
	adc  b                                           ; $684d: $88
	ld   a, b                                        ; $684e: $78
	ld   l, b                                        ; $684f: $68
	ld   a, b                                        ; $6850: $78
	add  a                                           ; $6851: $87
	sub  a                                           ; $6852: $97
	sub  a                                           ; $6853: $97
	adc  b                                           ; $6854: $88
	adc  b                                           ; $6855: $88
	ld   l, c                                        ; $6856: $69
	ld   a, b                                        ; $6857: $78
	adc  b                                           ; $6858: $88
	add  a                                           ; $6859: $87
	sub  a                                           ; $685a: $97
	sub  a                                           ; $685b: $97
	adc  b                                           ; $685c: $88
	sbc  b                                           ; $685d: $98
	ld   a, c                                        ; $685e: $79
	ld   a, c                                        ; $685f: $79
	ld   a, c                                        ; $6860: $79
	adc  b                                           ; $6861: $88
	add  a                                           ; $6862: $87
	sub  a                                           ; $6863: $97
	add  a                                           ; $6864: $87
	adc  b                                           ; $6865: $88
	ld   a, c                                        ; $6866: $79
	ld   a, c                                        ; $6867: $79
	ld   a, b                                        ; $6868: $78
	adc  b                                           ; $6869: $88
	ld   a, b                                        ; $686a: $78
	adc  b                                           ; $686b: $88
	adc  b                                           ; $686c: $88
	adc  b                                           ; $686d: $88
	adc  b                                           ; $686e: $88
	sub  a                                           ; $686f: $97
	sbc  c                                           ; $6870: $99
	adc  b                                           ; $6871: $88
	sbc  b                                           ; $6872: $98
	ld   a, c                                        ; $6873: $79
	add  a                                           ; $6874: $87
	adc  c                                           ; $6875: $89
	ld   a, b                                        ; $6876: $78
	sbc  b                                           ; $6877: $98
	adc  c                                           ; $6878: $89
	ld   a, b                                        ; $6879: $78
	add  a                                           ; $687a: $87
	and  a                                           ; $687b: $a7
	sbc  b                                           ; $687c: $98
	add  a                                           ; $687d: $87
	adc  c                                           ; $687e: $89
	ld   a, c                                        ; $687f: $79
	ld   a, b                                        ; $6880: $78
	ld   a, c                                        ; $6881: $79
	add  a                                           ; $6882: $87
	sbc  b                                           ; $6883: $98
	ld   a, b                                        ; $6884: $78
	sub  a                                           ; $6885: $97

Call_0d8_6886:
	adc  c                                           ; $6886: $89
	ld   a, b                                        ; $6887: $78
	ld   a, b                                        ; $6888: $78
	adc  b                                           ; $6889: $88
	adc  b                                           ; $688a: $88
	add  a                                           ; $688b: $87
	sub  a                                           ; $688c: $97
	add  a                                           ; $688d: $87
	add  a                                           ; $688e: $87
	sbc  b                                           ; $688f: $98
	ld   a, c                                        ; $6890: $79
	adc  b                                           ; $6891: $88
	ld   e, e                                        ; $6892: $5b
	halt                                             ; $6893: $76
	sub  a                                           ; $6894: $97
	adc  b                                           ; $6895: $88
	add  [hl]                                        ; $6896: $86
	sbc  c                                           ; $6897: $99
	ld   [hl], a                                     ; $6898: $77
	sub  a                                           ; $6899: $97
	add  a                                           ; $689a: $87
	adc  c                                           ; $689b: $89
	ld   a, c                                        ; $689c: $79
	ld   l, b                                        ; $689d: $68
	ld   a, b                                        ; $689e: $78
	adc  b                                           ; $689f: $88
	add  a                                           ; $68a0: $87
	add  [hl]                                        ; $68a1: $86
	sbc  c                                           ; $68a2: $99
	ld   l, b                                        ; $68a3: $68
	sub  a                                           ; $68a4: $97
	sub  a                                           ; $68a5: $97
	ld   a, c                                        ; $68a6: $79
	ld   [hl], a                                     ; $68a7: $77
	adc  c                                           ; $68a8: $89
	ld   a, c                                        ; $68a9: $79
	ld   [hl], a                                     ; $68aa: $77
	add  a                                           ; $68ab: $87
	ld   [hl], a                                     ; $68ac: $77
	and  a                                           ; $68ad: $a7
	sbc  b                                           ; $68ae: $98
	ld   a, b                                        ; $68af: $78
	ld   l, c                                        ; $68b0: $69
	ld   a, b                                        ; $68b1: $78
	sub  a                                           ; $68b2: $97
	add  a                                           ; $68b3: $87
	add  a                                           ; $68b4: $87
	adc  c                                           ; $68b5: $89
	add  a                                           ; $68b6: $87
	adc  c                                           ; $68b7: $89
	add  a                                           ; $68b8: $87

Call_0d8_68b9:
	ld   a, c                                        ; $68b9: $79
	ld   [hl], a                                     ; $68ba: $77
	sbc  b                                           ; $68bb: $98
	adc  b                                           ; $68bc: $88
	add  a                                           ; $68bd: $87
	sbc  b                                           ; $68be: $98
	ld   a, b                                        ; $68bf: $78
	add  a                                           ; $68c0: $87
	adc  c                                           ; $68c1: $89
	ld   l, e                                        ; $68c2: $6b
	ld   a, c                                        ; $68c3: $79
	add  a                                           ; $68c4: $87
	sbc  b                                           ; $68c5: $98
	and  [hl]                                        ; $68c6: $a6
	sub  a                                           ; $68c7: $97
	adc  c                                           ; $68c8: $89
	ld   a, d                                        ; $68c9: $7a
	ld   a, c                                        ; $68ca: $79
	ld   a, b                                        ; $68cb: $78
	adc  b                                           ; $68cc: $88
	add  a                                           ; $68cd: $87
	and  a                                           ; $68ce: $a7
	adc  b                                           ; $68cf: $88
	sub  a                                           ; $68d0: $97
	xor  b                                           ; $68d1: $a8
	adc  c                                           ; $68d2: $89
	ld   a, c                                        ; $68d3: $79
	adc  c                                           ; $68d4: $89
	ld   a, d                                        ; $68d5: $7a
	ld   a, b                                        ; $68d6: $78
	and  l                                           ; $68d7: $a5
	sub  a                                           ; $68d8: $97
	sub  a                                           ; $68d9: $97
	adc  b                                           ; $68da: $88
	adc  d                                           ; $68db: $8a
	ld   e, d                                        ; $68dc: $5a
	add  a                                           ; $68dd: $87
	add  a                                           ; $68de: $87
	add  a                                           ; $68df: $87
	sub  a                                           ; $68e0: $97
	sub  a                                           ; $68e1: $97
	ld   a, c                                        ; $68e2: $79
	ld   l, c                                        ; $68e3: $69
	adc  b                                           ; $68e4: $88
	ld   a, d                                        ; $68e5: $7a
	ld   [hl], a                                     ; $68e6: $77
	and  [hl]                                        ; $68e7: $a6
	adc  b                                           ; $68e8: $88
	add  a                                           ; $68e9: $87
	sbc  b                                           ; $68ea: $98
	ld   a, c                                        ; $68eb: $79
	ld   l, d                                        ; $68ec: $6a
	ld   a, c                                        ; $68ed: $79
	ld   a, c                                        ; $68ee: $79
	add  a                                           ; $68ef: $87
	add  [hl]                                        ; $68f0: $86
	sbc  b                                           ; $68f1: $98
	adc  b                                           ; $68f2: $88
	sub  a                                           ; $68f3: $97
	sbc  b                                           ; $68f4: $98
	ld   l, c                                        ; $68f5: $69
	ld   a, b                                        ; $68f6: $78
	sbc  b                                           ; $68f7: $98
	sub  [hl]                                        ; $68f8: $96
	sub  a                                           ; $68f9: $97
	adc  b                                           ; $68fa: $88
	ld   a, c                                        ; $68fb: $79
	ld   a, b                                        ; $68fc: $78
	ld   l, c                                        ; $68fd: $69
	add  [hl]                                        ; $68fe: $86
	add  a                                           ; $68ff: $87
	add  a                                           ; $6900: $87
	sbc  b                                           ; $6901: $98
	add  a                                           ; $6902: $87
	ld   a, b                                        ; $6903: $78
	add  a                                           ; $6904: $87
	sbc  b                                           ; $6905: $98
	adc  b                                           ; $6906: $88
	ld   a, b                                        ; $6907: $78
	sbc  b                                           ; $6908: $98
	ld   l, c                                        ; $6909: $69
	add  a                                           ; $690a: $87
	sub  [hl]                                        ; $690b: $96
	and  a                                           ; $690c: $a7
	ld   a, b                                        ; $690d: $78
	sub  a                                           ; $690e: $97
	ld   a, d                                        ; $690f: $7a
	ld   l, d                                        ; $6910: $6a
	ld   a, b                                        ; $6911: $78
	sbc  c                                           ; $6912: $99
	adc  b                                           ; $6913: $88
	and  [hl]                                        ; $6914: $a6
	sub  a                                           ; $6915: $97
	sub  a                                           ; $6916: $97
	sbc  c                                           ; $6917: $99
	ld   a, d                                        ; $6918: $7a
	ld   l, c                                        ; $6919: $69
	ld   a, b                                        ; $691a: $78
	add  a                                           ; $691b: $87
	adc  c                                           ; $691c: $89
	sub  [hl]                                        ; $691d: $96
	sub  a                                           ; $691e: $97
	sbc  b                                           ; $691f: $98
	ld   a, b                                        ; $6920: $78
	sub  a                                           ; $6921: $97
	sbc  c                                           ; $6922: $99
	ld   a, c                                        ; $6923: $79
	ld   a, c                                        ; $6924: $79
	adc  c                                           ; $6925: $89
	ld   a, b                                        ; $6926: $78
	and  l                                           ; $6927: $a5
	add  $7b                                         ; $6928: $c6 $7b
	ld   l, c                                        ; $692a: $69
	ld   a, d                                        ; $692b: $7a
	ld   e, d                                        ; $692c: $5a
	and  l                                           ; $692d: $a5
	and  [hl]                                        ; $692e: $a6
	xor  b                                           ; $692f: $a8
	add  a                                           ; $6930: $87
	adc  e                                           ; $6931: $8b
	ld   [hl], a                                     ; $6932: $77
	sbc  d                                           ; $6933: $9a
	ld   c, d                                        ; $6934: $4a
	sub  a                                           ; $6935: $97
	xor  c                                           ; $6936: $a9
	add  a                                           ; $6937: $87
	and  [hl]                                        ; $6938: $a6
	ld   a, e                                        ; $6939: $7b
	ld   a, b                                        ; $693a: $78
	xor  b                                           ; $693b: $a8
	adc  b                                           ; $693c: $88
	add  a                                           ; $693d: $87
	sbc  c                                           ; $693e: $99
	ld   l, e                                        ; $693f: $6b
	sbc  b                                           ; $6940: $98
	adc  c                                           ; $6941: $89
	ld   a, b                                        ; $6942: $78
	sub  [hl]                                        ; $6943: $96
	or   [hl]                                        ; $6944: $b6
	ld   a, c                                        ; $6945: $79
	and  a                                           ; $6946: $a7
	ld   a, d                                        ; $6947: $7a
	ld   e, c                                        ; $6948: $59
	ld   l, b                                        ; $6949: $68
	and  a                                           ; $694a: $a7
	ld   [hl], a                                     ; $694b: $77
	rst  ToBoot                                         ; $694c: $c7
	ld   l, c                                        ; $694d: $69
	xor  b                                           ; $694e: $a8
	ld   l, b                                        ; $694f: $68
	sbc  c                                           ; $6950: $99
	ld   h, a                                        ; $6951: $67
	sbc  c                                           ; $6952: $99
	add  a                                           ; $6953: $87
	sbc  b                                           ; $6954: $98
	ld   a, b                                        ; $6955: $78
	ld   a, c                                        ; $6956: $79
	add  [hl]                                        ; $6957: $86
	xor  c                                           ; $6958: $a9
	ld   l, d                                        ; $6959: $6a
	sbc  b                                           ; $695a: $98
	ld   l, d                                        ; $695b: $6a
	ld   e, c                                        ; $695c: $59
	sub  e                                           ; $695d: $93
	ret  z                                           ; $695e: $c8

	halt                                             ; $695f: $76
	sbc  c                                           ; $6960: $99
	ld   l, d                                        ; $6961: $6a
	ld   e, c                                        ; $6962: $59
	and  a                                           ; $6963: $a7
	ld   a, c                                        ; $6964: $79
	sub  [hl]                                        ; $6965: $96
	cp   c                                           ; $6966: $b9
	ld   a, d                                        ; $6967: $7a
	add  a                                           ; $6968: $87
	and  a                                           ; $6969: $a7
	ld   a, c                                        ; $696a: $79
	add  a                                           ; $696b: $87
	adc  b                                           ; $696c: $88
	adc  c                                           ; $696d: $89
	ld   h, [hl]                                     ; $696e: $66
	and  a                                           ; $696f: $a7
	ld   a, c                                        ; $6970: $79
	sub  a                                           ; $6971: $97
	ld   l, d                                        ; $6972: $6a
	ld   l, c                                        ; $6973: $69
	add  a                                           ; $6974: $87
	and  a                                           ; $6975: $a7
	sub  [hl]                                        ; $6976: $96
	sbc  c                                           ; $6977: $99
	add  a                                           ; $6978: $87
	ld   a, c                                        ; $6979: $79
	ld   l, b                                        ; $697a: $68
	adc  c                                           ; $697b: $89
	adc  c                                           ; $697c: $89
	ld   [hl], a                                     ; $697d: $77
	or   [hl]                                        ; $697e: $b6
	adc  c                                           ; $697f: $89
	sub  [hl]                                        ; $6980: $96
	ld   l, e                                        ; $6981: $6b
	ld   a, c                                        ; $6982: $79
	adc  c                                           ; $6983: $89
	adc  d                                           ; $6984: $8a
	sub  a                                           ; $6985: $97
	xor  b                                           ; $6986: $a8
	ld   l, b                                        ; $6987: $68
	sub  [hl]                                        ; $6988: $96
	and  a                                           ; $6989: $a7
	ld   a, c                                        ; $698a: $79
	adc  c                                           ; $698b: $89
	ld   l, e                                        ; $698c: $6b
	ld   a, b                                        ; $698d: $78
	sub  a                                           ; $698e: $97
	sbc  b                                           ; $698f: $98
	sub  a                                           ; $6990: $97
	xor  b                                           ; $6991: $a8
	ld   l, d                                        ; $6992: $6a
	add  a                                           ; $6993: $87
	ld   a, c                                        ; $6994: $79
	adc  b                                           ; $6995: $88
	add  a                                           ; $6996: $87
	sbc  c                                           ; $6997: $99
	ld   [hl], a                                     ; $6998: $77
	sub  a                                           ; $6999: $97
	adc  c                                           ; $699a: $89
	ld   a, b                                        ; $699b: $78
	sbc  b                                           ; $699c: $98
	sbc  b                                           ; $699d: $98
	sbc  b                                           ; $699e: $98
	sbc  c                                           ; $699f: $99
	ld   l, c                                        ; $69a0: $69
	sbc  b                                           ; $69a1: $98
	ld   l, b                                        ; $69a2: $68
	and  a                                           ; $69a3: $a7
	ld   a, b                                        ; $69a4: $78
	ld   a, b                                        ; $69a5: $78
	add  [hl]                                        ; $69a6: $86
	sbc  d                                           ; $69a7: $9a
	ld   h, a                                        ; $69a8: $67
	xor  c                                           ; $69a9: $a9
	adc  c                                           ; $69aa: $89
	sbc  c                                           ; $69ab: $99
	sbc  c                                           ; $69ac: $99
	adc  c                                           ; $69ad: $89
	adc  b                                           ; $69ae: $88
	add  a                                           ; $69af: $87
	ld   [hl], a                                     ; $69b0: $77
	ld   [hl], a                                     ; $69b1: $77
	add  [hl]                                        ; $69b2: $86
	ld   l, b                                        ; $69b3: $68
	halt                                             ; $69b4: $76
	sbc  c                                           ; $69b5: $99
	adc  d                                           ; $69b6: $8a
	sbc  c                                           ; $69b7: $99
	sbc  b                                           ; $69b8: $98
	sbc  c                                           ; $69b9: $99
	sbc  c                                           ; $69ba: $99
	ld   [hl], a                                     ; $69bb: $77
	add  a                                           ; $69bc: $87
	ld   h, [hl]                                     ; $69bd: $66
	ld   [hl], l                                     ; $69be: $75
	ld   h, a                                        ; $69bf: $67
	ld   d, a                                        ; $69c0: $57
	halt                                             ; $69c1: $76
	sbc  c                                           ; $69c2: $99
	adc  c                                           ; $69c3: $89
	jp   z, $ac9a                                    ; $69c4: $ca $9a $ac

Jump_0d8_69c7:
	cp   c                                           ; $69c7: $b9
	adc  c                                           ; $69c8: $89
	ld   [hl], h                                     ; $69c9: $74
	ld   d, l                                        ; $69ca: $55
	ld   [hl-], a                                    ; $69cb: $32
	inc  [hl]                                        ; $69cc: $34
	inc  [hl]                                        ; $69cd: $34
	ld   d, [hl]                                     ; $69ce: $56
	adc  b                                           ; $69cf: $88
	xor  l                                           ; $69d0: $ad
	db   $ed                                         ; $69d1: $ed
	rst  $28                                         ; $69d2: $ef
	db   $fd                                         ; $69d3: $fd
	call c, Call_0d8_42b8                            ; $69d4: $dc $b8 $42
	ld   de, $1111                                   ; $69d7: $11 $11 $11
	ld   de, $6a25                                   ; $69da: $11 $25 $6a
	rst  JumpTable                                         ; $69dd: $df
	rst  $38                                         ; $69de: $ff
	rst  $38                                         ; $69df: $ff
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	sub  l                                           ; $69e2: $95
	ld   de, $1111                                   ; $69e3: $11 $11 $11
	ld   de, $1311                                   ; $69e6: $11 $11 $13
	sbc  h                                           ; $69e9: $9c
	rst  $38                                         ; $69ea: $ff
	rst  $38                                         ; $69eb: $ff
	rst  $38                                         ; $69ec: $ff
	rst  $38                                         ; $69ed: $ff
	cp   $61                                         ; $69ee: $fe $61
	ld   de, $1111                                   ; $69f0: $11 $11 $11
	ld   de, $1611                                   ; $69f3: $11 $11 $16
	cp   a                                           ; $69f6: $bf
	rst  $38                                         ; $69f7: $ff
	rst  $38                                         ; $69f8: $ff
	rst  $38                                         ; $69f9: $ff
	rst  $38                                         ; $69fa: $ff
	ld   a, [$1141]                                  ; $69fb: $fa $41 $11
	ld   de, $1111                                   ; $69fe: $11 $11 $11
	ld   de, $bf28                                   ; $6a01: $11 $28 $bf
	rst  $38                                         ; $6a04: $ff
	rst  $38                                         ; $6a05: $ff
	rst  $38                                         ; $6a06: $ff
	rst  $38                                         ; $6a07: $ff
	ei                                               ; $6a08: $fb
	ld   hl, $1111                                   ; $6a09: $21 $11 $11
	ld   de, $1111                                   ; $6a0c: $11 $11 $11
	scf                                              ; $6a0f: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a10: $cf
	rst  $38                                         ; $6a11: $ff
	rst  $38                                         ; $6a12: $ff
	rst  $38                                         ; $6a13: $ff
	rst  $38                                         ; $6a14: $ff
	ld   a, [$1121]                                  ; $6a15: $fa $21 $11
	ld   de, $1111                                   ; $6a18: $11 $11 $11
	ld   de, $bf27                                   ; $6a1b: $11 $27 $bf
	rst  $38                                         ; $6a1e: $ff
	rst  $38                                         ; $6a1f: $ff
	rst  $38                                         ; $6a20: $ff
	rst  $38                                         ; $6a21: $ff
	db   $fc                                         ; $6a22: $fc
	ld   sp, $1111                                   ; $6a23: $31 $11 $11
	ld   de, $1111                                   ; $6a26: $11 $11 $11
	daa                                              ; $6a29: $27
	sbc  a                                           ; $6a2a: $9f
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	rst  $38                                         ; $6a2d: $ff
	rst  $38                                         ; $6a2e: $ff
	rst  $38                                         ; $6a2f: $ff
	ld   b, c                                        ; $6a30: $41
	ld   de, $1111                                   ; $6a31: $11 $11 $11
	ld   de, $1511                                   ; $6a34: $11 $11 $15
	sbc  a                                           ; $6a37: $9f
	rst  $38                                         ; $6a38: $ff
	rst  $38                                         ; $6a39: $ff
	rst  $38                                         ; $6a3a: $ff
	rst  $38                                         ; $6a3b: $ff
	rst  $38                                         ; $6a3c: $ff
	sub  c                                           ; $6a3d: $91
	ld   de, $1111                                   ; $6a3e: $11 $11 $11
	ld   de, $1211                                   ; $6a41: $11 $11 $12
	ld   a, h                                        ; $6a44: $7c
	rst  $38                                         ; $6a45: $ff
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	rst  $38                                         ; $6a48: $ff
	rst  $38                                         ; $6a49: $ff
	or   $11                                         ; $6a4a: $f6 $11
	ld   de, $1111                                   ; $6a4c: $11 $11 $11
	ld   de, $3911                                   ; $6a4f: $11 $11 $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a52: $cf
	rst  $38                                         ; $6a53: $ff
	rst  $38                                         ; $6a54: $ff
	rst  $38                                         ; $6a55: $ff
	rst  $38                                         ; $6a56: $ff
	cp   $71                                         ; $6a57: $fe $71
	ld   de, $1111                                   ; $6a59: $11 $11 $11
	ld   de, $1411                                   ; $6a5c: $11 $11 $14
	cp   c                                           ; $6a5f: $b9
	rst  $28                                         ; $6a60: $ef
	rst  $38                                         ; $6a61: $ff
	rst  $38                                         ; $6a62: $ff
	rst  $38                                         ; $6a63: $ff
	rst  $38                                         ; $6a64: $ff
	ld   sp, hl                                      ; $6a65: $f9
	ld   de, $1111                                   ; $6a66: $11 $11 $11
	ld   de, $1111                                   ; $6a69: $11 $11 $11
	ld   [hl], $9b                                   ; $6a6c: $36 $9b
	rst  $38                                         ; $6a6e: $ff
	rst  $38                                         ; $6a6f: $ff
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	add  $11                                         ; $6a73: $c6 $11
	ld   de, $1111                                   ; $6a75: $11 $11 $11
	ld   de, $3311                                   ; $6a78: $11 $11 $33
	adc  e                                           ; $6a7b: $8b
	rst  $28                                         ; $6a7c: $ef
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	rst  $38                                         ; $6a7f: $ff
	db   $fd                                         ; $6a80: $fd
	jp   z, Jump_0d8_4164                            ; $6a81: $ca $64 $41

	ld   [de], a                                     ; $6a84: $12
	ld   hl, $1111                                   ; $6a85: $21 $11 $11
	ld   [de], a                                     ; $6a88: $12
	ld   b, a                                        ; $6a89: $47
	sbc  c                                           ; $6a8a: $99
	sbc  $ff                                         ; $6a8b: $de $ff
	rst  $38                                         ; $6a8d: $ff
	xor  $bb                                         ; $6a8e: $ee $bb
	xor  c                                           ; $6a90: $a9
	ld   [hl], a                                     ; $6a91: $77
	ld   h, [hl]                                     ; $6a92: $66
	ld   d, [hl]                                     ; $6a93: $56
	ld   d, h                                        ; $6a94: $54
	ld   b, h                                        ; $6a95: $44
	inc  sp                                          ; $6a96: $33
	inc  sp                                          ; $6a97: $33
	ld   b, l                                        ; $6a98: $45
	ld   h, a                                        ; $6a99: $67
	adc  d                                           ; $6a9a: $8a
	xor  e                                           ; $6a9b: $ab
	cp   h                                           ; $6a9c: $bc
	cp   h                                           ; $6a9d: $bc
	cp   e                                           ; $6a9e: $bb
	cp   d                                           ; $6a9f: $ba
	xor  d                                           ; $6aa0: $aa
	xor  d                                           ; $6aa1: $aa
	sbc  c                                           ; $6aa2: $99
	sbc  c                                           ; $6aa3: $99
	add  [hl]                                        ; $6aa4: $86
	ld   h, l                                        ; $6aa5: $65
	ld   b, h                                        ; $6aa6: $44
	ld   [hl-], a                                    ; $6aa7: $32
	inc  [hl]                                        ; $6aa8: $34
	ld   b, l                                        ; $6aa9: $45
	ld   h, a                                        ; $6aaa: $67
	ld   a, c                                        ; $6aab: $79
	sbc  d                                           ; $6aac: $9a
	cp   d                                           ; $6aad: $ba
	xor  e                                           ; $6aae: $ab
	set  1, h                                        ; $6aaf: $cb $cc
	call z, $b9bb                                    ; $6ab1: $cc $bb $b9
	xor  c                                           ; $6ab4: $a9
	halt                                             ; $6ab5: $76
	ld   d, h                                        ; $6ab6: $54
	inc  sp                                          ; $6ab7: $33
	ld   [hl+], a                                    ; $6ab8: $22
	inc  sp                                          ; $6ab9: $33
	ld   b, l                                        ; $6aba: $45
	ld   h, a                                        ; $6abb: $67
	adc  b                                           ; $6abc: $88
	sbc  e                                           ; $6abd: $9b
	xor  e                                           ; $6abe: $ab
	res  7, e                                        ; $6abf: $cb $bb
	call z, $baba                                    ; $6ac1: $cc $ba $ba
	xor  c                                           ; $6ac4: $a9
	sbc  b                                           ; $6ac5: $98
	halt                                             ; $6ac6: $76
	ld   h, l                                        ; $6ac7: $65
	ld   b, h                                        ; $6ac8: $44
	ld   b, h                                        ; $6ac9: $44
	ld   b, h                                        ; $6aca: $44
	ld   d, [hl]                                     ; $6acb: $56
	ld   h, a                                        ; $6acc: $67
	adc  c                                           ; $6acd: $89
	sbc  c                                           ; $6ace: $99
	sbc  c                                           ; $6acf: $99
	xor  d                                           ; $6ad0: $aa
	xor  d                                           ; $6ad1: $aa
	xor  d                                           ; $6ad2: $aa
	xor  d                                           ; $6ad3: $aa
	xor  d                                           ; $6ad4: $aa
	xor  d                                           ; $6ad5: $aa
	sbc  c                                           ; $6ad6: $99
	sbc  c                                           ; $6ad7: $99
	adc  b                                           ; $6ad8: $88
	ld   [hl], a                                     ; $6ad9: $77
	ld   h, [hl]                                     ; $6ada: $66
	ld   d, l                                        ; $6adb: $55
	ld   d, l                                        ; $6adc: $55
	ld   d, l                                        ; $6add: $55
	ld   d, [hl]                                     ; $6ade: $56
	ld   h, [hl]                                     ; $6adf: $66
	ld   a, b                                        ; $6ae0: $78
	sbc  b                                           ; $6ae1: $98
	sbc  c                                           ; $6ae2: $99
	xor  d                                           ; $6ae3: $aa
	cp   d                                           ; $6ae4: $ba
	cp   e                                           ; $6ae5: $bb
	cp   e                                           ; $6ae6: $bb
	xor  d                                           ; $6ae7: $aa
	cp   d                                           ; $6ae8: $ba
	sbc  c                                           ; $6ae9: $99
	sbc  b                                           ; $6aea: $98
	ld   [hl], a                                     ; $6aeb: $77
	ld   h, [hl]                                     ; $6aec: $66
	ld   d, l                                        ; $6aed: $55
	ld   b, h                                        ; $6aee: $44
	ld   b, h                                        ; $6aef: $44
	ld   d, l                                        ; $6af0: $55
	ld   h, [hl]                                     ; $6af1: $66
	ld   a, b                                        ; $6af2: $78
	sbc  c                                           ; $6af3: $99
	xor  c                                           ; $6af4: $a9
	xor  d                                           ; $6af5: $aa
	xor  d                                           ; $6af6: $aa
	xor  d                                           ; $6af7: $aa
	xor  d                                           ; $6af8: $aa
	xor  c                                           ; $6af9: $a9
	xor  c                                           ; $6afa: $a9
	sbc  b                                           ; $6afb: $98
	sbc  c                                           ; $6afc: $99
	adc  b                                           ; $6afd: $88
	ld   [hl], a                                     ; $6afe: $77
	ld   [hl], a                                     ; $6aff: $77
	ld   [hl], a                                     ; $6b00: $77
	halt                                             ; $6b01: $76
	ld   h, [hl]                                     ; $6b02: $66
	ld   h, [hl]                                     ; $6b03: $66
	ld   h, [hl]                                     ; $6b04: $66
	ld   [hl], a                                     ; $6b05: $77
	ld   [hl], a                                     ; $6b06: $77
	adc  b                                           ; $6b07: $88
	adc  b                                           ; $6b08: $88
	sbc  b                                           ; $6b09: $98
	adc  b                                           ; $6b0a: $88
	sbc  c                                           ; $6b0b: $99
	sbc  c                                           ; $6b0c: $99
	sbc  d                                           ; $6b0d: $9a
	xor  d                                           ; $6b0e: $aa
	xor  d                                           ; $6b0f: $aa
	sbc  c                                           ; $6b10: $99
	xor  c                                           ; $6b11: $a9
	sbc  c                                           ; $6b12: $99
	adc  b                                           ; $6b13: $88
	add  a                                           ; $6b14: $87
	halt                                             ; $6b15: $76
	ld   h, [hl]                                     ; $6b16: $66
	ld   h, l                                        ; $6b17: $65
	ld   d, l                                        ; $6b18: $55
	ld   h, [hl]                                     ; $6b19: $66
	ld   h, [hl]                                     ; $6b1a: $66
	ld   [hl], a                                     ; $6b1b: $77
	adc  b                                           ; $6b1c: $88
	sbc  c                                           ; $6b1d: $99
	sbc  d                                           ; $6b1e: $9a
	xor  c                                           ; $6b1f: $a9
	xor  d                                           ; $6b20: $aa
	xor  d                                           ; $6b21: $aa
	sbc  c                                           ; $6b22: $99
	xor  c                                           ; $6b23: $a9
	sbc  b                                           ; $6b24: $98
	sbc  b                                           ; $6b25: $98
	adc  b                                           ; $6b26: $88
	add  a                                           ; $6b27: $87
	ld   [hl], a                                     ; $6b28: $77
	ld   [hl], a                                     ; $6b29: $77
	ld   [hl], a                                     ; $6b2a: $77
	ld   [hl], a                                     ; $6b2b: $77
	ld   [hl], a                                     ; $6b2c: $77
	ld   [hl], a                                     ; $6b2d: $77
	ld   [hl], a                                     ; $6b2e: $77
	ld   [hl], a                                     ; $6b2f: $77
	ld   [hl], a                                     ; $6b30: $77
	ld   [hl], a                                     ; $6b31: $77
	ld   a, b                                        ; $6b32: $78
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	sbc  c                                           ; $6b35: $99
	adc  b                                           ; $6b36: $88
	sbc  c                                           ; $6b37: $99
	sbc  c                                           ; $6b38: $99
	sbc  c                                           ; $6b39: $99
	sbc  d                                           ; $6b3a: $9a
	sbc  c                                           ; $6b3b: $99
	sbc  b                                           ; $6b3c: $98
	xor  b                                           ; $6b3d: $a8
	adc  b                                           ; $6b3e: $88
	ld   [hl], a                                     ; $6b3f: $77
	ld   h, [hl]                                     ; $6b40: $66
	ld   h, [hl]                                     ; $6b41: $66
	ld   h, [hl]                                     ; $6b42: $66
	ld   h, [hl]                                     ; $6b43: $66
	ld   l, b                                        ; $6b44: $68
	halt                                             ; $6b45: $76
	add  a                                           ; $6b46: $87
	adc  b                                           ; $6b47: $88
	ld   a, c                                        ; $6b48: $79
	adc  d                                           ; $6b49: $8a
	cp   b                                           ; $6b4a: $b8
	sbc  c                                           ; $6b4b: $99
	sbc  c                                           ; $6b4c: $99
	ld   a, b                                        ; $6b4d: $78
	sbc  c                                           ; $6b4e: $99
	add  a                                           ; $6b4f: $87
	sbc  h                                           ; $6b50: $9c
	jp   c, Jump_0d8_7779                            ; $6b51: $da $79 $77

	ld   h, a                                        ; $6b54: $67
	adc  c                                           ; $6b55: $89
	halt                                             ; $6b56: $76
	ld   d, l                                        ; $6b57: $55
	ld   h, [hl]                                     ; $6b58: $66
	ld   h, [hl]                                     ; $6b59: $66
	adc  b                                           ; $6b5a: $88
	add  a                                           ; $6b5b: $87
	ld   l, b                                        ; $6b5c: $68
	adc  c                                           ; $6b5d: $89
	adc  b                                           ; $6b5e: $88
	sbc  d                                           ; $6b5f: $9a
	xor  d                                           ; $6b60: $aa
	xor  c                                           ; $6b61: $a9
	xor  c                                           ; $6b62: $a9
	sbc  d                                           ; $6b63: $9a
	cp   e                                           ; $6b64: $bb
	cp   c                                           ; $6b65: $b9
	sbc  b                                           ; $6b66: $98
	adc  d                                           ; $6b67: $8a
	ret                                              ; $6b68: $c9


	ld   l, c                                        ; $6b69: $69
	halt                                             ; $6b6a: $76
	ld   d, l                                        ; $6b6b: $55
	ld   [hl], a                                     ; $6b6c: $77
	ld   d, l                                        ; $6b6d: $55
	ld   h, l                                        ; $6b6e: $65
	ld   h, a                                        ; $6b6f: $67
	adc  c                                           ; $6b70: $89
	ld   a, d                                        ; $6b71: $7a
	xor  d                                           ; $6b72: $aa
	xor  e                                           ; $6b73: $ab
	xor  d                                           ; $6b74: $aa
	sbc  b                                           ; $6b75: $98
	adc  d                                           ; $6b76: $8a
	sub  a                                           ; $6b77: $97
	ld   a, c                                        ; $6b78: $79
	xor  d                                           ; $6b79: $aa
	xor  c                                           ; $6b7a: $a9
	cp   d                                           ; $6b7b: $ba
	sub  [hl]                                        ; $6b7c: $96
	ld   h, l                                        ; $6b7d: $65
	ld   d, l                                        ; $6b7e: $55
	ld   [hl-], a                                    ; $6b7f: $32
	inc  sp                                          ; $6b80: $33
	ld   [hl+], a                                    ; $6b81: $22
	inc  h                                           ; $6b82: $24
	ld   d, l                                        ; $6b83: $55
	ld   d, [hl]                                     ; $6b84: $56
	adc  c                                           ; $6b85: $89
	sbc  d                                           ; $6b86: $9a
	cp   e                                           ; $6b87: $bb
	db   $dd                                         ; $6b88: $dd
	db   $dd                                         ; $6b89: $dd
	db   $ec                                         ; $6b8a: $ec
	res  3, d                                        ; $6b8b: $cb $9a
	add  [hl]                                        ; $6b8d: $86
	ld   d, h                                        ; $6b8e: $54
	ld   hl, $1111                                   ; $6b8f: $21 $11 $11
	ld   de, $3611                                   ; $6b92: $11 $11 $36
	adc  d                                           ; $6b95: $8a
	cp   h                                           ; $6b96: $bc
	rst  $38                                         ; $6b97: $ff
	rst  $38                                         ; $6b98: $ff
	rst  $38                                         ; $6b99: $ff
	rst  $38                                         ; $6b9a: $ff
	rst  $38                                         ; $6b9b: $ff
	jp   c, $3164                                    ; $6b9c: $da $64 $31

	ld   de, $1111                                   ; $6b9f: $11 $11 $11
	ld   [de], a                                     ; $6ba2: $12
	ld   de, $ee8a                                   ; $6ba3: $11 $8a $ee
	rst  $38                                         ; $6ba6: $ff
	rst  $38                                         ; $6ba7: $ff
	rst  $38                                         ; $6ba8: $ff
	rst  $38                                         ; $6ba9: $ff
	rst  $38                                         ; $6baa: $ff
	db   $dd                                         ; $6bab: $dd
	and  l                                           ; $6bac: $a5
	ld   b, e                                        ; $6bad: $43
	ld   hl, $1111                                   ; $6bae: $21 $11 $11
	ld   de, $3214                                   ; $6bb1: $11 $14 $32
	sbc  e                                           ; $6bb4: $9b
	rst  $38                                         ; $6bb5: $ff
	rst  $38                                         ; $6bb6: $ff

Call_0d8_6bb7:
	rst  $38                                         ; $6bb7: $ff
	rst  $38                                         ; $6bb8: $ff
	rst  $38                                         ; $6bb9: $ff
	cp   $db                                         ; $6bba: $fe $db
	and  [hl]                                        ; $6bbc: $a6
	ld   b, d                                        ; $6bbd: $42
	ld   sp, $1111                                   ; $6bbe: $31 $11 $11
	ld   de, $6112                                   ; $6bc1: $11 $12 $61
	ld   l, l                                        ; $6bc4: $6d
	rst  $38                                         ; $6bc5: $ff
	rst  $38                                         ; $6bc6: $ff
	rst  $38                                         ; $6bc7: $ff
	rst  $38                                         ; $6bc8: $ff
	rst  $38                                         ; $6bc9: $ff
	rst  $38                                         ; $6bca: $ff
	jp   c, $21a8                                    ; $6bcb: $da $a8 $21

	ld   hl, $1111                                   ; $6bce: $21 $11 $11
	ld   de, $6211                                   ; $6bd1: $11 $11 $62
	sbc  e                                           ; $6bd4: $9b
	rst  $38                                         ; $6bd5: $ff
	rst  $38                                         ; $6bd6: $ff
	rst  $38                                         ; $6bd7: $ff
	rst  $38                                         ; $6bd8: $ff
	rst  $38                                         ; $6bd9: $ff
	rst  $38                                         ; $6bda: $ff
	jp   c, $21c7                                    ; $6bdb: $da $c7 $21

	ld   de, $1111                                   ; $6bde: $11 $11 $11
	ld   de, $8111                                   ; $6be1: $11 $11 $81
	ld   e, [hl]                                     ; $6be4: $5e
	rst  $38                                         ; $6be5: $ff
	rst  $38                                         ; $6be6: $ff
	rst  $38                                         ; $6be7: $ff
	rst  $38                                         ; $6be8: $ff
	rst  $38                                         ; $6be9: $ff
	rst  $38                                         ; $6bea: $ff
	reti                                             ; $6beb: $d9


	ret                                              ; $6bec: $c9


	ld   [de], a                                     ; $6bed: $12
	ld   b, c                                        ; $6bee: $41
	ld   de, $1111                                   ; $6bef: $11 $11 $11
	ld   de, $1fb1                                   ; $6bf2: $11 $b1 $1f
	rst  $38                                         ; $6bf5: $ff
	rst  $38                                         ; $6bf6: $ff
	rst  $38                                         ; $6bf7: $ff
	cp   $ff                                         ; $6bf8: $fe $ff
	db   $fd                                         ; $6bfa: $fd
	jp   c, $11c8                                    ; $6bfb: $da $c8 $11

	ld   b, d                                        ; $6bfe: $42
	ld   de, $1111                                   ; $6bff: $11 $11 $11
	ld   de, $3d71                                   ; $6c02: $11 $71 $3d
	rst  $38                                         ; $6c05: $ff
	rst  $38                                         ; $6c06: $ff
	rst  $38                                         ; $6c07: $ff
	rst  $38                                         ; $6c08: $ff
	rst  $38                                         ; $6c09: $ff
	cp   $eb                                         ; $6c0a: $fe $eb
	xor  b                                           ; $6c0c: $a8
	ld   b, d                                        ; $6c0d: $42
	ld   b, e                                        ; $6c0e: $43
	ld   de, $1111                                   ; $6c0f: $11 $11 $11
	ld   de, $1a43                                   ; $6c12: $11 $43 $1a
	rst  $38                                         ; $6c15: $ff
	rst  $38                                         ; $6c16: $ff
	rst  $38                                         ; $6c17: $ff
	db   $fc                                         ; $6c18: $fc
	rst  $38                                         ; $6c19: $ff
	rst  $38                                         ; $6c1a: $ff
	db   $eb                                         ; $6c1b: $eb
	cp   e                                           ; $6c1c: $bb
	ld   [hl+], a                                    ; $6c1d: $22
	ld   [hl], h                                     ; $6c1e: $74
	ld   de, $1111                                   ; $6c1f: $11 $11 $11
	ld   de, $1615                                   ; $6c22: $11 $15 $16
	rst  $28                                         ; $6c25: $ef
	rst  $38                                         ; $6c26: $ff
	rst  $38                                         ; $6c27: $ff
	rst  $38                                         ; $6c28: $ff
	rst  $28                                         ; $6c29: $ef
	rst  $38                                         ; $6c2a: $ff
	call z, $82bb                                    ; $6c2b: $cc $bb $82
	ld   [hl], $41                                   ; $6c2e: $36 $41
	ld   de, $1111                                   ; $6c30: $11 $11 $11
	rla                                              ; $6c33: $17
	inc  d                                           ; $6c34: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c35: $cf
	rst  $38                                         ; $6c36: $ff
	rst  $38                                         ; $6c37: $ff
	rst  $38                                         ; $6c38: $ff
	rst  $38                                         ; $6c39: $ff
	rst  $38                                         ; $6c3a: $ff
	ld   a, [$b67b]                                  ; $6c3b: $fa $7b $b6
	ld   b, e                                        ; $6c3e: $43
	ld   d, e                                        ; $6c3f: $53
	ld   de, $1111                                   ; $6c40: $11 $11 $11
	dec  d                                           ; $6c43: $15
	ld   de, $ffcf                                   ; $6c44: $11 $cf $ff
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	cp   a                                           ; $6c49: $bf
	rst  $38                                         ; $6c4a: $ff
	call c, $b3cb                                    ; $6c4b: $dc $cb $b3
	ld   d, [hl]                                     ; $6c4e: $56
	ld   b, c                                        ; $6c4f: $41
	ld   de, $1111                                   ; $6c50: $11 $11 $11
	rla                                              ; $6c53: $17
	ld   sp, $ff7f                                   ; $6c54: $31 $7f $ff
	rst  $38                                         ; $6c57: $ff
	rst  $38                                         ; $6c58: $ff
	xor  h                                           ; $6c59: $ac
	rst  $38                                         ; $6c5a: $ff
	jp   hl                                          ; $6c5b: $e9


	xor  [hl]                                        ; $6c5c: $ae
	db   $e4                                         ; $6c5d: $e4
	ld   d, a                                        ; $6c5e: $57
	ld   [hl], e                                     ; $6c5f: $73
	ld   de, $1111                                   ; $6c60: $11 $11 $11
	ld   d, $11                                      ; $6c63: $16 $11
	rst  $28                                         ; $6c65: $ef
	rst  $38                                         ; $6c66: $ff
	rst  $38                                         ; $6c67: $ff
	db   $fd                                         ; $6c68: $fd
	sbc  [hl]                                        ; $6c69: $9e
	rst  $38                                         ; $6c6a: $ff
	add  a                                           ; $6c6b: $87
	rst  $38                                         ; $6c6c: $ff
	add  c                                           ; $6c6d: $81
	ld   e, e                                        ; $6c6e: $5b
	ld   [hl], c                                     ; $6c6f: $71
	ld   de, $1111                                   ; $6c70: $11 $11 $11
	ld   d, $23                                      ; $6c73: $16 $23
	rst  JumpTable                                         ; $6c75: $df
	rst  $38                                         ; $6c76: $ff
	db   $fc                                         ; $6c77: $fc
	rst  $38                                         ; $6c78: $ff
	rst  $38                                         ; $6c79: $ff
	rst  $38                                         ; $6c7a: $ff
	res  3, d                                        ; $6c7b: $cb $9a
	and  a                                           ; $6c7d: $a7
	ld   h, h                                        ; $6c7e: $64
	ld   [hl], c                                     ; $6c7f: $71
	ld   de, $1111                                   ; $6c80: $11 $11 $11
	add  hl, de                                      ; $6c83: $19
	ld   h, c                                        ; $6c84: $61
	rst  JumpTable                                         ; $6c85: $df
	rst  $28                                         ; $6c86: $ef
	rst  $38                                         ; $6c87: $ff
	db   $fc                                         ; $6c88: $fc
	rst  JumpTable                                         ; $6c89: $df
	rst  $28                                         ; $6c8a: $ef
	res  7, d                                        ; $6c8b: $cb $ba
	ld   h, a                                        ; $6c8d: $67
	and  h                                           ; $6c8e: $a4
	ld   hl, $1111                                   ; $6c8f: $21 $11 $11
	ld   de, $2973                                   ; $6c92: $11 $73 $29
	rst  $38                                         ; $6c95: $ff
	db   $fd                                         ; $6c96: $fd
	xor  a                                           ; $6c97: $af
	ld   a, [$fcaf]                                  ; $6c98: $fa $af $fc
	xor  c                                           ; $6c9b: $a9
	call Call_0d8_7473                               ; $6c9c: $cd $73 $74
	ld   de, $1121                                   ; $6c9f: $11 $21 $11
	ld   [de], a                                     ; $6ca2: $12
	ld   a, c                                        ; $6ca3: $79
	sbc  c                                           ; $6ca4: $99
	rst  $28                                         ; $6ca5: $ef
	db   $fc                                         ; $6ca6: $fc
	rst  JumpTable                                         ; $6ca7: $df
	rst  $38                                         ; $6ca8: $ff
	call z, Call_0d8_77fe                            ; $6ca9: $cc $fe $77
	xor  c                                           ; $6cac: $a9
	ld   [hl], h                                     ; $6cad: $74
	ld   [de], a                                     ; $6cae: $12
	ld   sp, $1111                                   ; $6caf: $31 $11 $11
	inc  d                                           ; $6cb2: $14
	adc  [hl]                                        ; $6cb3: $8e
	set  1, a                                        ; $6cb4: $cb $cf
	ei                                               ; $6cb6: $fb
	xor  a                                           ; $6cb7: $af
	ld   a, [$ecbd]                                  ; $6cb8: $fa $bd $ec
	add  a                                           ; $6cbb: $87
	ld   e, b                                        ; $6cbc: $58
	ld   hl, $1115                                   ; $6cbd: $21 $15 $11
	ld   de, $6423                                   ; $6cc0: $11 $23 $64
	cp   l                                           ; $6cc3: $bd
	xor  a                                           ; $6cc4: $af
	db   $fd                                         ; $6cc5: $fd
	xor  [hl]                                        ; $6cc6: $ae
	xor  $aa                                         ; $6cc7: $ee $aa
	rst  $28                                         ; $6cc9: $ef
	jp   $8278                                       ; $6cca: $c3 $78 $82


	ld   [de], a                                     ; $6ccd: $12
	ld   d, l                                        ; $6cce: $55
	ld   de, $a118                                   ; $6ccf: $11 $18 $a1
	rra                                              ; $6cd2: $1f
	ei                                               ; $6cd3: $fb
	ld   l, c                                        ; $6cd4: $69
	rst  $38                                         ; $6cd5: $ff
	and  l                                           ; $6cd6: $a5
	rst  $38                                         ; $6cd7: $ff
	jp   z, $b99b                                    ; $6cd8: $ca $9b $b9

	ld   hl, $3136                                   ; $6cdb: $21 $36 $31
	inc  d                                           ; $6cde: $14
	ld   de, $8856                                   ; $6cdf: $11 $56 $88
	xor  d                                           ; $6ce2: $aa
	db   $dd                                         ; $6ce3: $dd
	db   $ed                                         ; $6ce4: $ed
	sbc  e                                           ; $6ce5: $9b
	rst  $28                                         ; $6ce6: $ef
	set  1, [hl]                                     ; $6ce7: $cb $ce
	add  [hl]                                        ; $6ce9: $86
	ld   hl, $2176                                   ; $6cea: $21 $76 $21
	ld   h, h                                        ; $6ced: $64
	ld   sp, $634a                                   ; $6cee: $31 $4a $63
	sbc  h                                           ; $6cf1: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cf2: $cf
	res  7, e                                        ; $6cf3: $cb $bb
	sbc  d                                           ; $6cf5: $9a
	cp   a                                           ; $6cf6: $bf
	and  $87                                         ; $6cf7: $e6 $87
	ld   [hl], d                                     ; $6cf9: $72
	ld   [hl+], a                                    ; $6cfa: $22
	ld   h, l                                        ; $6cfb: $65
	dec  d                                           ; $6cfc: $15
	ld   b, [hl]                                     ; $6cfd: $46
	sub  a                                           ; $6cfe: $97
	rla                                              ; $6cff: $17
	db   $dd                                         ; $6d00: $dd
	add  a                                           ; $6d01: $87
	xor  $e5                                         ; $6d02: $ee $e5
	adc  l                                           ; $6d04: $8d
	db   $fc                                         ; $6d05: $fc
	add  hl, sp                                      ; $6d06: $39
	adc  d                                           ; $6d07: $8a
	ld   b, c                                        ; $6d08: $41
	jr   c, jr_0d8_6d7c                              ; $6d09: $38 $71

	dec  h                                           ; $6d0b: $25
	sbc  d                                           ; $6d0c: $9a
	ld   b, c                                        ; $6d0d: $41
	adc  h                                           ; $6d0e: $8c
	xor  [hl]                                        ; $6d0f: $ae
	rst  $20                                         ; $6d10: $e7
	sbc  a                                           ; $6d11: $9f
	xor  c                                           ; $6d12: $a9
	set  5, e                                        ; $6d13: $cb $eb
	ld   d, [hl]                                     ; $6d15: $56
	sub  $15                                         ; $6d16: $d6 $15
	ld   e, c                                        ; $6d18: $59
	ld   d, c                                        ; $6d19: $51
	ld   l, b                                        ; $6d1a: $68
	sub  h                                           ; $6d1b: $94
	scf                                              ; $6d1c: $37
	xor  d                                           ; $6d1d: $aa
	sbc  c                                           ; $6d1e: $99
	sbc  c                                           ; $6d1f: $99
	call z, $bcba                                    ; $6d20: $cc $ba $bc
	xor  b                                           ; $6d23: $a8
	sbc  c                                           ; $6d24: $99
	ld   [hl], h                                     ; $6d25: $74
	ld   h, h                                        ; $6d26: $64
	ld   a, e                                        ; $6d27: $7b
	ld   b, h                                        ; $6d28: $44
	ld   h, a                                        ; $6d29: $67
	and  [hl]                                        ; $6d2a: $a6
	daa                                              ; $6d2b: $27
	jp   z, $ac97                                    ; $6d2c: $ca $97 $ac

	ld   [$cb79], a                                  ; $6d2f: $ea $79 $cb
	sub  a                                           ; $6d32: $97
	ld   e, c                                        ; $6d33: $59
	ld   [hl], l                                     ; $6d34: $75
	inc  sp                                          ; $6d35: $33
	ret                                              ; $6d36: $c9


	ld   c, b                                        ; $6d37: $48
	sub  h                                           ; $6d38: $94
	ld   a, e                                        ; $6d39: $7b
	ld   h, l                                        ; $6d3a: $65
	ld   a, c                                        ; $6d3b: $79
	cp   e                                           ; $6d3c: $bb
	ld   a, b                                        ; $6d3d: $78
	ret  z                                           ; $6d3e: $c8

	ld   e, d                                        ; $6d3f: $5a
	call z, $8b97                                    ; $6d40: $cc $97 $8b
	ld   [hl], e                                     ; $6d43: $73
	ld   a, b                                        ; $6d44: $78
	ld   h, [hl]                                     ; $6d45: $66
	ld   b, a                                        ; $6d46: $47
	sub  a                                           ; $6d47: $97
	ld   d, h                                        ; $6d48: $54
	sbc  e                                           ; $6d49: $9b
	cp   c                                           ; $6d4a: $b9
	adc  c                                           ; $6d4b: $89
	db   $dd                                         ; $6d4c: $dd
	ld   a, b                                        ; $6d4d: $78
	ld   [hl], a                                     ; $6d4e: $77
	or   a                                           ; $6d4f: $b7
	ld   d, a                                        ; $6d50: $57
	cp   d                                           ; $6d51: $ba
	add  e                                           ; $6d52: $83
	inc  l                                           ; $6d53: $2c
	push de                                          ; $6d54: $d5
	ld   b, [hl]                                     ; $6d55: $46
	xor  e                                           ; $6d56: $ab
	ld   [hl], d                                     ; $6d57: $72
	ld   e, l                                        ; $6d58: $5d
	or   h                                           ; $6d59: $b4
	ld   l, b                                        ; $6d5a: $68
	adc  $84                                         ; $6d5b: $ce $84
	xor  l                                           ; $6d5d: $ad
	add  [hl]                                        ; $6d5e: $86
	ld   a, b                                        ; $6d5f: $78
	xor  b                                           ; $6d60: $a8
	ld   h, l                                        ; $6d61: $65
	ld   a, b                                        ; $6d62: $78
	sub  a                                           ; $6d63: $97
	ld   b, a                                        ; $6d64: $47
	sbc  d                                           ; $6d65: $9a
	adc  b                                           ; $6d66: $88
	xor  b                                           ; $6d67: $a8
	ld   l, c                                        ; $6d68: $69
	xor  c                                           ; $6d69: $a9
	xor  b                                           ; $6d6a: $a8
	sbc  c                                           ; $6d6b: $99
	add  [hl]                                        ; $6d6c: $86
	ld   e, c                                        ; $6d6d: $59
	ret                                              ; $6d6e: $c9


	ld   h, l                                        ; $6d6f: $65
	adc  c                                           ; $6d70: $89
	sub  a                                           ; $6d71: $97
	ld   e, b                                        ; $6d72: $58
	ld   [hl], a                                     ; $6d73: $77
	add  a                                           ; $6d74: $87
	sbc  b                                           ; $6d75: $98
	adc  b                                           ; $6d76: $88
	adc  b                                           ; $6d77: $88
	cp   e                                           ; $6d78: $bb
	add  [hl]                                        ; $6d79: $86
	ld   a, b                                        ; $6d7a: $78
	and  a                                           ; $6d7b: $a7

jr_0d8_6d7c:
	ld   a, b                                        ; $6d7c: $78
	ld   l, c                                        ; $6d7d: $69
	add  a                                           ; $6d7e: $87
	adc  b                                           ; $6d7f: $88
	ld   [hl], a                                     ; $6d80: $77
	sub  [hl]                                        ; $6d81: $96
	ld   a, c                                        ; $6d82: $79
	sbc  c                                           ; $6d83: $99
	ld   l, b                                        ; $6d84: $68
	xor  c                                           ; $6d85: $a9
	sub  a                                           ; $6d86: $97
	ld   l, d                                        ; $6d87: $6a
	sub  a                                           ; $6d88: $97
	ld   a, c                                        ; $6d89: $79
	ld   a, c                                        ; $6d8a: $79
	sub  [hl]                                        ; $6d8b: $96
	add  [hl]                                        ; $6d8c: $86
	ld   a, c                                        ; $6d8d: $79
	ld   h, [hl]                                     ; $6d8e: $66
	ld   [hl], a                                     ; $6d8f: $77
	adc  b                                           ; $6d90: $88
	ld   a, c                                        ; $6d91: $79
	sbc  b                                           ; $6d92: $98
	ld   l, b                                        ; $6d93: $68
	ld   a, c                                        ; $6d94: $79
	ld   [hl], a                                     ; $6d95: $77
	xor  b                                           ; $6d96: $a8
	sbc  b                                           ; $6d97: $98
	add  a                                           ; $6d98: $87
	ld   a, b                                        ; $6d99: $78
	add  a                                           ; $6d9a: $87
	adc  b                                           ; $6d9b: $88
	sbc  c                                           ; $6d9c: $99
	ld   a, b                                        ; $6d9d: $78
	ld   l, b                                        ; $6d9e: $68
	add  a                                           ; $6d9f: $87
	sbc  b                                           ; $6da0: $98
	xor  c                                           ; $6da1: $a9
	ld   a, c                                        ; $6da2: $79
	adc  b                                           ; $6da3: $88
	adc  b                                           ; $6da4: $88
	adc  c                                           ; $6da5: $89
	sub  a                                           ; $6da6: $97
	adc  b                                           ; $6da7: $88
	ld   l, b                                        ; $6da8: $68
	and  a                                           ; $6da9: $a7
	ld   a, c                                        ; $6daa: $79
	ld   a, c                                        ; $6dab: $79
	sub  a                                           ; $6dac: $97
	xor  c                                           ; $6dad: $a9
	adc  d                                           ; $6dae: $8a
	adc  b                                           ; $6daf: $88
	sbc  c                                           ; $6db0: $99
	sub  a                                           ; $6db1: $97
	ld   a, b                                        ; $6db2: $78
	sbc  c                                           ; $6db3: $99
	adc  c                                           ; $6db4: $89
	xor  c                                           ; $6db5: $a9
	ld   a, c                                        ; $6db6: $79
	adc  b                                           ; $6db7: $88
	sub  a                                           ; $6db8: $97
	adc  c                                           ; $6db9: $89
	adc  c                                           ; $6dba: $89
	sbc  b                                           ; $6dbb: $98
	sbc  b                                           ; $6dbc: $98
	ld   [hl], a                                     ; $6dbd: $77
	sub  a                                           ; $6dbe: $97
	sbc  c                                           ; $6dbf: $99
	adc  c                                           ; $6dc0: $89
	adc  b                                           ; $6dc1: $88
	adc  c                                           ; $6dc2: $89
	add  a                                           ; $6dc3: $87
	sbc  c                                           ; $6dc4: $99
	adc  b                                           ; $6dc5: $88
	add  a                                           ; $6dc6: $87
	adc  b                                           ; $6dc7: $88
	sub  a                                           ; $6dc8: $97
	adc  b                                           ; $6dc9: $88
	adc  c                                           ; $6dca: $89
	ld   [hl], a                                     ; $6dcb: $77
	adc  c                                           ; $6dcc: $89
	ld   a, c                                        ; $6dcd: $79
	adc  b                                           ; $6dce: $88
	add  a                                           ; $6dcf: $87
	adc  b                                           ; $6dd0: $88
	ld   a, c                                        ; $6dd1: $79
	sub  a                                           ; $6dd2: $97
	adc  c                                           ; $6dd3: $89
	ld   a, c                                        ; $6dd4: $79
	sbc  b                                           ; $6dd5: $98
	adc  b                                           ; $6dd6: $88
	ld   [hl], a                                     ; $6dd7: $77
	ld   [hl], a                                     ; $6dd8: $77
	adc  b                                           ; $6dd9: $88
	add  a                                           ; $6dda: $87
	ld   [hl], a                                     ; $6ddb: $77
	adc  b                                           ; $6ddc: $88
	adc  b                                           ; $6ddd: $88
	sub  a                                           ; $6dde: $97
	sbc  b                                           ; $6ddf: $98
	ld   a, b                                        ; $6de0: $78
	adc  c                                           ; $6de1: $89
	add  a                                           ; $6de2: $87
	adc  b                                           ; $6de3: $88
	adc  b                                           ; $6de4: $88
	add  a                                           ; $6de5: $87
	adc  b                                           ; $6de6: $88
	adc  b                                           ; $6de7: $88
	add  a                                           ; $6de8: $87
	ld   a, b                                        ; $6de9: $78
	ld   [hl], a                                     ; $6dea: $77
	add  a                                           ; $6deb: $87
	ld   a, c                                        ; $6dec: $79
	add  a                                           ; $6ded: $87
	add  a                                           ; $6dee: $87
	adc  b                                           ; $6def: $88
	adc  b                                           ; $6df0: $88
	adc  b                                           ; $6df1: $88
	adc  b                                           ; $6df2: $88
	ld   a, b                                        ; $6df3: $78
	adc  b                                           ; $6df4: $88
	adc  b                                           ; $6df5: $88
	ld   [hl], a                                     ; $6df6: $77
	add  a                                           ; $6df7: $87
	ld   [hl], a                                     ; $6df8: $77
	adc  b                                           ; $6df9: $88
	add  a                                           ; $6dfa: $87
	ld   [hl], a                                     ; $6dfb: $77
	ld   a, b                                        ; $6dfc: $78
	ld   a, b                                        ; $6dfd: $78
	sbc  b                                           ; $6dfe: $98
	ld   [hl], a                                     ; $6dff: $77
	adc  b                                           ; $6e00: $88
	ld   a, b                                        ; $6e01: $78
	sbc  b                                           ; $6e02: $98
	ld   [hl], a                                     ; $6e03: $77
	ld   a, b                                        ; $6e04: $78
	add  a                                           ; $6e05: $87
	adc  b                                           ; $6e06: $88
	adc  b                                           ; $6e07: $88
	ld   a, b                                        ; $6e08: $78
	add  a                                           ; $6e09: $87
	ld   a, b                                        ; $6e0a: $78
	ld   [hl], a                                     ; $6e0b: $77
	add  a                                           ; $6e0c: $87
	ld   [hl], a                                     ; $6e0d: $77
	adc  b                                           ; $6e0e: $88
	adc  b                                           ; $6e0f: $88
	add  a                                           ; $6e10: $87
	ld   a, b                                        ; $6e11: $78
	adc  b                                           ; $6e12: $88
	ld   a, b                                        ; $6e13: $78
	add  a                                           ; $6e14: $87
	adc  b                                           ; $6e15: $88
	ld   a, b                                        ; $6e16: $78
	add  a                                           ; $6e17: $87
	ld   a, b                                        ; $6e18: $78
	add  a                                           ; $6e19: $87
	adc  b                                           ; $6e1a: $88
	add  a                                           ; $6e1b: $87
	adc  b                                           ; $6e1c: $88
	adc  b                                           ; $6e1d: $88
	ld   a, b                                        ; $6e1e: $78
	adc  b                                           ; $6e1f: $88
	adc  b                                           ; $6e20: $88
	adc  b                                           ; $6e21: $88
	add  a                                           ; $6e22: $87
	adc  b                                           ; $6e23: $88
	adc  b                                           ; $6e24: $88
	ld   [hl], a                                     ; $6e25: $77
	adc  b                                           ; $6e26: $88
	adc  b                                           ; $6e27: $88
	ld   [hl], a                                     ; $6e28: $77
	add  a                                           ; $6e29: $87
	adc  b                                           ; $6e2a: $88
	adc  c                                           ; $6e2b: $89
	ld   [hl], a                                     ; $6e2c: $77
	adc  b                                           ; $6e2d: $88
	adc  b                                           ; $6e2e: $88
	ld   a, b                                        ; $6e2f: $78
	adc  b                                           ; $6e30: $88
	adc  b                                           ; $6e31: $88
	adc  b                                           ; $6e32: $88
	adc  b                                           ; $6e33: $88
	adc  b                                           ; $6e34: $88
	adc  b                                           ; $6e35: $88
	ld   a, b                                        ; $6e36: $78
	adc  b                                           ; $6e37: $88
	adc  b                                           ; $6e38: $88
	adc  b                                           ; $6e39: $88
	adc  b                                           ; $6e3a: $88
	adc  b                                           ; $6e3b: $88
	adc  b                                           ; $6e3c: $88
	adc  b                                           ; $6e3d: $88
	adc  b                                           ; $6e3e: $88
	ld   a, b                                        ; $6e3f: $78
	adc  b                                           ; $6e40: $88
	adc  b                                           ; $6e41: $88
	adc  b                                           ; $6e42: $88
	adc  b                                           ; $6e43: $88
	adc  b                                           ; $6e44: $88
	adc  b                                           ; $6e45: $88
	ld   a, b                                        ; $6e46: $78
	adc  b                                           ; $6e47: $88
	adc  b                                           ; $6e48: $88
	adc  b                                           ; $6e49: $88
	adc  b                                           ; $6e4a: $88
	adc  c                                           ; $6e4b: $89
	adc  b                                           ; $6e4c: $88
	adc  b                                           ; $6e4d: $88
	adc  c                                           ; $6e4e: $89
	adc  b                                           ; $6e4f: $88
	adc  b                                           ; $6e50: $88
	adc  b                                           ; $6e51: $88
	adc  b                                           ; $6e52: $88
	sbc  b                                           ; $6e53: $98
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	adc  b                                           ; $6e56: $88
	adc  b                                           ; $6e57: $88
	adc  b                                           ; $6e58: $88
	adc  b                                           ; $6e59: $88
	adc  c                                           ; $6e5a: $89
	adc  b                                           ; $6e5b: $88
	adc  b                                           ; $6e5c: $88
	adc  b                                           ; $6e5d: $88
	sbc  b                                           ; $6e5e: $98
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
	sbc  b                                           ; $6e6d: $98
	adc  b                                           ; $6e6e: $88
	adc  c                                           ; $6e6f: $89
	adc  b                                           ; $6e70: $88
	sbc  b                                           ; $6e71: $98
	adc  b                                           ; $6e72: $88
	adc  b                                           ; $6e73: $88
	adc  b                                           ; $6e74: $88
	adc  b                                           ; $6e75: $88
	adc  b                                           ; $6e76: $88
	adc  b                                           ; $6e77: $88
	adc  b                                           ; $6e78: $88
	adc  b                                           ; $6e79: $88
	adc  b                                           ; $6e7a: $88
	adc  c                                           ; $6e7b: $89
	adc  b                                           ; $6e7c: $88
	adc  c                                           ; $6e7d: $89
	sbc  b                                           ; $6e7e: $98
	adc  b                                           ; $6e7f: $88
	adc  b                                           ; $6e80: $88
	adc  b                                           ; $6e81: $88
	adc  b                                           ; $6e82: $88
	adc  b                                           ; $6e83: $88
	adc  c                                           ; $6e84: $89
	adc  b                                           ; $6e85: $88
	sbc  b                                           ; $6e86: $98
	adc  b                                           ; $6e87: $88
	adc  c                                           ; $6e88: $89
	adc  b                                           ; $6e89: $88
	sbc  b                                           ; $6e8a: $98
	adc  c                                           ; $6e8b: $89
	adc  c                                           ; $6e8c: $89
	adc  b                                           ; $6e8d: $88
	sbc  b                                           ; $6e8e: $98
	adc  c                                           ; $6e8f: $89
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
	adc  b                                           ; $6e92: $88
	adc  b                                           ; $6e93: $88
	sbc  b                                           ; $6e94: $98
	adc  b                                           ; $6e95: $88
	adc  b                                           ; $6e96: $88
	adc  b                                           ; $6e97: $88
	adc  c                                           ; $6e98: $89
	adc  b                                           ; $6e99: $88
	adc  b                                           ; $6e9a: $88
	adc  b                                           ; $6e9b: $88
	adc  b                                           ; $6e9c: $88
	sbc  b                                           ; $6e9d: $98
	adc  b                                           ; $6e9e: $88
	adc  b                                           ; $6e9f: $88
	sbc  b                                           ; $6ea0: $98
	adc  b                                           ; $6ea1: $88
	adc  b                                           ; $6ea2: $88
	adc  b                                           ; $6ea3: $88
	adc  b                                           ; $6ea4: $88
	sbc  b                                           ; $6ea5: $98
	adc  b                                           ; $6ea6: $88
	adc  b                                           ; $6ea7: $88
	sbc  b                                           ; $6ea8: $98
	sbc  c                                           ; $6ea9: $99
	adc  b                                           ; $6eaa: $88
	adc  b                                           ; $6eab: $88
	adc  c                                           ; $6eac: $89
	adc  c                                           ; $6ead: $89
	add  a                                           ; $6eae: $87
	adc  c                                           ; $6eaf: $89
	sbc  b                                           ; $6eb0: $98
	sbc  c                                           ; $6eb1: $99
	adc  b                                           ; $6eb2: $88
	adc  c                                           ; $6eb3: $89
	adc  b                                           ; $6eb4: $88
	adc  b                                           ; $6eb5: $88
	adc  c                                           ; $6eb6: $89
	adc  b                                           ; $6eb7: $88
	adc  b                                           ; $6eb8: $88
	sbc  c                                           ; $6eb9: $99
	adc  b                                           ; $6eba: $88
	sbc  b                                           ; $6ebb: $98
	sbc  b                                           ; $6ebc: $98
	ld   a, b                                        ; $6ebd: $78
	adc  c                                           ; $6ebe: $89
	adc  b                                           ; $6ebf: $88
	adc  c                                           ; $6ec0: $89
	adc  b                                           ; $6ec1: $88
	sbc  b                                           ; $6ec2: $98
	ld   a, c                                        ; $6ec3: $79
	adc  b                                           ; $6ec4: $88
	adc  b                                           ; $6ec5: $88
	sbc  c                                           ; $6ec6: $99
	adc  b                                           ; $6ec7: $88
	sbc  c                                           ; $6ec8: $99
	adc  b                                           ; $6ec9: $88
	adc  c                                           ; $6eca: $89
	sbc  b                                           ; $6ecb: $98
	adc  b                                           ; $6ecc: $88
	adc  b                                           ; $6ecd: $88
	sbc  c                                           ; $6ece: $99
	adc  b                                           ; $6ecf: $88
	adc  b                                           ; $6ed0: $88
	adc  c                                           ; $6ed1: $89
	sbc  b                                           ; $6ed2: $98
	sbc  b                                           ; $6ed3: $98
	adc  b                                           ; $6ed4: $88
	sbc  b                                           ; $6ed5: $98
	adc  c                                           ; $6ed6: $89
	sbc  b                                           ; $6ed7: $98
	adc  b                                           ; $6ed8: $88
	sbc  c                                           ; $6ed9: $99
	sbc  c                                           ; $6eda: $99
	adc  b                                           ; $6edb: $88
	sbc  b                                           ; $6edc: $98
	adc  b                                           ; $6edd: $88
	sbc  c                                           ; $6ede: $99
	adc  b                                           ; $6edf: $88
	adc  b                                           ; $6ee0: $88
	adc  b                                           ; $6ee1: $88
	sbc  b                                           ; $6ee2: $98
	adc  b                                           ; $6ee3: $88
	sbc  b                                           ; $6ee4: $98
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	sbc  c                                           ; $6ee7: $99
	adc  b                                           ; $6ee8: $88
	adc  b                                           ; $6ee9: $88
	sbc  b                                           ; $6eea: $98
	adc  b                                           ; $6eeb: $88
	adc  b                                           ; $6eec: $88
	sbc  c                                           ; $6eed: $99
	adc  b                                           ; $6eee: $88
	adc  b                                           ; $6eef: $88
	adc  b                                           ; $6ef0: $88
	adc  b                                           ; $6ef1: $88
	sbc  b                                           ; $6ef2: $98
	adc  b                                           ; $6ef3: $88
	adc  c                                           ; $6ef4: $89
	adc  b                                           ; $6ef5: $88
	adc  b                                           ; $6ef6: $88
	sbc  b                                           ; $6ef7: $98
	adc  b                                           ; $6ef8: $88
	adc  b                                           ; $6ef9: $88
	adc  b                                           ; $6efa: $88
	adc  b                                           ; $6efb: $88
	adc  c                                           ; $6efc: $89
	add  a                                           ; $6efd: $87
	adc  c                                           ; $6efe: $89
	sbc  c                                           ; $6eff: $99
	adc  c                                           ; $6f00: $89
	adc  b                                           ; $6f01: $88
	adc  b                                           ; $6f02: $88
	adc  c                                           ; $6f03: $89
	sbc  b                                           ; $6f04: $98
	add  a                                           ; $6f05: $87
	adc  b                                           ; $6f06: $88
	adc  b                                           ; $6f07: $88
	adc  c                                           ; $6f08: $89
	adc  b                                           ; $6f09: $88
	adc  b                                           ; $6f0a: $88
	adc  b                                           ; $6f0b: $88
	adc  b                                           ; $6f0c: $88
	sbc  b                                           ; $6f0d: $98
	adc  b                                           ; $6f0e: $88
	adc  c                                           ; $6f0f: $89
	adc  b                                           ; $6f10: $88
	sbc  b                                           ; $6f11: $98
	adc  b                                           ; $6f12: $88
	adc  b                                           ; $6f13: $88
	sbc  b                                           ; $6f14: $98
	adc  b                                           ; $6f15: $88
	sbc  b                                           ; $6f16: $98
	adc  b                                           ; $6f17: $88
	adc  b                                           ; $6f18: $88
	adc  c                                           ; $6f19: $89
	adc  b                                           ; $6f1a: $88
	sbc  b                                           ; $6f1b: $98
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
	adc  c                                           ; $6f26: $89
	adc  b                                           ; $6f27: $88
	adc  c                                           ; $6f28: $89
	add  a                                           ; $6f29: $87
	adc  b                                           ; $6f2a: $88
	adc  b                                           ; $6f2b: $88
	ld   a, b                                        ; $6f2c: $78
	adc  b                                           ; $6f2d: $88
	add  a                                           ; $6f2e: $87
	adc  c                                           ; $6f2f: $89
	adc  b                                           ; $6f30: $88
	adc  b                                           ; $6f31: $88
	adc  c                                           ; $6f32: $89
	sbc  b                                           ; $6f33: $98
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
	add  a                                           ; $6f48: $87
	adc  c                                           ; $6f49: $89
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
	ld   [hl], a                                     ; $6f75: $77
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
	sbc  c                                           ; $7019: $99
	adc  b                                           ; $701a: $88
	sbc  c                                           ; $701b: $99
	sbc  c                                           ; $701c: $99
	adc  b                                           ; $701d: $88
	sbc  c                                           ; $701e: $99
	adc  b                                           ; $701f: $88
	adc  b                                           ; $7020: $88
	ld   [hl], a                                     ; $7021: $77
	ld   [hl], a                                     ; $7022: $77
	halt                                             ; $7023: $76
	ld   h, a                                        ; $7024: $67
	ld   [hl], a                                     ; $7025: $77
	ld   [hl], a                                     ; $7026: $77
	ld   a, b                                        ; $7027: $78
	adc  b                                           ; $7028: $88
	sbc  c                                           ; $7029: $99
	sbc  d                                           ; $702a: $9a
	sbc  c                                           ; $702b: $99
	sbc  c                                           ; $702c: $99
	sbc  d                                           ; $702d: $9a
	sbc  c                                           ; $702e: $99
	sbc  c                                           ; $702f: $99
	adc  b                                           ; $7030: $88
	ld   [hl], a                                     ; $7031: $77
	ld   [hl], a                                     ; $7032: $77
	ld   h, [hl]                                     ; $7033: $66
	ld   h, l                                        ; $7034: $65
	ld   h, a                                        ; $7035: $67
	ld   [hl], a                                     ; $7036: $77
	ld   [hl], a                                     ; $7037: $77
	adc  c                                           ; $7038: $89
	sbc  c                                           ; $7039: $99
	sbc  c                                           ; $703a: $99
	xor  e                                           ; $703b: $ab
	xor  d                                           ; $703c: $aa
	cp   e                                           ; $703d: $bb
	xor  d                                           ; $703e: $aa
	sbc  c                                           ; $703f: $99
	sbc  c                                           ; $7040: $99
	ld   [hl], a                                     ; $7041: $77
	ld   [hl], a                                     ; $7042: $77
	ld   h, [hl]                                     ; $7043: $66
	ld   h, l                                        ; $7044: $65
	ld   d, l                                        ; $7045: $55
	ld   h, a                                        ; $7046: $67
	ld   h, a                                        ; $7047: $67
	ld   [hl], a                                     ; $7048: $77
	sbc  c                                           ; $7049: $99
	adc  c                                           ; $704a: $89
	xor  d                                           ; $704b: $aa
	xor  e                                           ; $704c: $ab
	cp   d                                           ; $704d: $ba
	xor  e                                           ; $704e: $ab
	xor  d                                           ; $704f: $aa
	sbc  c                                           ; $7050: $99
	adc  b                                           ; $7051: $88
	ld   [hl], a                                     ; $7052: $77
	halt                                             ; $7053: $76
	ld   h, l                                        ; $7054: $65
	ld   d, l                                        ; $7055: $55
	ld   b, h                                        ; $7056: $44
	ld   h, [hl]                                     ; $7057: $66
	ld   h, a                                        ; $7058: $67
	ld   a, b                                        ; $7059: $78
	sbc  d                                           ; $705a: $9a
	sbc  d                                           ; $705b: $9a
	cp   d                                           ; $705c: $ba
	cp   h                                           ; $705d: $bc
	res  7, e                                        ; $705e: $cb $bb
	xor  c                                           ; $7060: $a9
	sbc  c                                           ; $7061: $99
	sbc  b                                           ; $7062: $98
	halt                                             ; $7063: $76
	ld   h, [hl]                                     ; $7064: $66
	ld   d, h                                        ; $7065: $54
	ld   b, e                                        ; $7066: $43
	inc  sp                                          ; $7067: $33
	ld   d, [hl]                                     ; $7068: $56
	ld   h, a                                        ; $7069: $67
	ld   a, b                                        ; $706a: $78
	sbc  c                                           ; $706b: $99
	sbc  d                                           ; $706c: $9a
	call z, $dccc                                    ; $706d: $cc $cc $dc
	cp   e                                           ; $7070: $bb
	cp   c                                           ; $7071: $b9
	adc  b                                           ; $7072: $88
	add  a                                           ; $7073: $87
	ld   h, [hl]                                     ; $7074: $66
	ld   h, l                                        ; $7075: $65
	ld   b, e                                        ; $7076: $43
	inc  sp                                          ; $7077: $33
	inc  hl                                          ; $7078: $23
	ld   h, [hl]                                     ; $7079: $66
	ld   h, a                                        ; $707a: $67
	adc  d                                           ; $707b: $8a
	xor  d                                           ; $707c: $aa
	xor  e                                           ; $707d: $ab
	call $ccdd                                       ; $707e: $cd $dd $cc
	res  5, d                                        ; $7081: $cb $aa
	sbc  b                                           ; $7083: $98
	add  a                                           ; $7084: $87
	ld   h, [hl]                                     ; $7085: $66
	ld   h, l                                        ; $7086: $65
	ld   b, e                                        ; $7087: $43
	ld   [hl-], a                                    ; $7088: $32
	inc  hl                                          ; $7089: $23
	ld   d, [hl]                                     ; $708a: $56
	ld   h, a                                        ; $708b: $67
	sbc  c                                           ; $708c: $99
	xor  d                                           ; $708d: $aa
	xor  e                                           ; $708e: $ab
	db   $dd                                         ; $708f: $dd
	db   $dd                                         ; $7090: $dd
	db   $ec                                         ; $7091: $ec
	db   $db                                         ; $7092: $db
	cp   c                                           ; $7093: $b9
	adc  b                                           ; $7094: $88
	ld   [hl], a                                     ; $7095: $77
	ld   h, [hl]                                     ; $7096: $66
	ld   h, l                                        ; $7097: $65
	inc  sp                                          ; $7098: $33
	ld   hl, $5512                                   ; $7099: $21 $12 $55
	ld   h, a                                        ; $709c: $67
	adc  c                                           ; $709d: $89
	cp   d                                           ; $709e: $ba
	cp   e                                           ; $709f: $bb
	sbc  $ee                                         ; $70a0: $de $ee
	db   $ed                                         ; $70a2: $ed
	call c, $98a9                                    ; $70a3: $dc $a9 $98
	ld   [hl], a                                     ; $70a6: $77
	ld   h, [hl]                                     ; $70a7: $66
	ld   h, l                                        ; $70a8: $65
	ld   b, d                                        ; $70a9: $42
	ld   hl, $4601                                   ; $70aa: $21 $01 $46
	ld   d, [hl]                                     ; $70ad: $56
	ld   a, c                                        ; $70ae: $79
	xor  e                                           ; $70af: $ab
	cp   e                                           ; $70b0: $bb
	call $fdff                                       ; $70b1: $cd $ff $fd
	call z, $88ca                                    ; $70b4: $cc $ca $88
	ld   [hl], a                                     ; $70b7: $77
	halt                                             ; $70b8: $76
	ld   d, l                                        ; $70b9: $55
	ld   b, e                                        ; $70ba: $43
	ld   [hl+], a                                    ; $70bb: $22
	ld   de, $5625                                   ; $70bc: $11 $25 $56
	ld   h, a                                        ; $70bf: $67
	adc  d                                           ; $70c0: $8a
	cp   e                                           ; $70c1: $bb
	cp   h                                           ; $70c2: $bc
	rst  JumpTable                                         ; $70c3: $df
	cp   $dc                                         ; $70c4: $fe $dc
	call c, $87a8                                    ; $70c6: $dc $a8 $87
	ld   [hl], a                                     ; $70c9: $77
	ld   h, l                                        ; $70ca: $65
	ld   d, h                                        ; $70cb: $54
	ld   [hl+], a                                    ; $70cc: $22
	ld   hl, $5512                                   ; $70cd: $21 $12 $55
	ld   h, a                                        ; $70d0: $67
	ld   a, c                                        ; $70d1: $79
	xor  e                                           ; $70d2: $ab
	xor  e                                           ; $70d3: $ab
	call $edff                                       ; $70d4: $cd $ff $ed
	call c, $99ba                                    ; $70d7: $dc $ba $99
	ld   a, b                                        ; $70da: $78
	halt                                             ; $70db: $76
	ld   h, l                                        ; $70dc: $65
	ld   [hl-], a                                    ; $70dd: $32
	ld   [hl-], a                                    ; $70de: $32
	ld   de, $5514                                   ; $70df: $11 $14 $55
	ld   h, a                                        ; $70e2: $67
	ld   a, b                                        ; $70e3: $78
	sbc  e                                           ; $70e4: $9b
	cp   h                                           ; $70e5: $bc
	db   $dd                                         ; $70e6: $dd
	rst  $38                                         ; $70e7: $ff
	call c, $b9cc                                    ; $70e8: $dc $cc $b9
	sbc  b                                           ; $70eb: $98
	add  a                                           ; $70ec: $87
	halt                                             ; $70ed: $76
	ld   d, h                                        ; $70ee: $54
	inc  sp                                          ; $70ef: $33
	ld   [hl-], a                                    ; $70f0: $32
	ld   de, $5534                                   ; $70f1: $11 $34 $55
	ld   h, [hl]                                     ; $70f4: $66
	ld   h, a                                        ; $70f5: $67
	sbc  d                                           ; $70f6: $9a
	cp   e                                           ; $70f7: $bb
	adc  $ff                                         ; $70f8: $ce $ff
	db   $dd                                         ; $70fa: $dd
	cp   e                                           ; $70fb: $bb
	cp   d                                           ; $70fc: $ba
	sbc  c                                           ; $70fd: $99
	add  a                                           ; $70fe: $87
	halt                                             ; $70ff: $76
	ld   h, h                                        ; $7100: $64
	inc  [hl]                                        ; $7101: $34
	inc  sp                                          ; $7102: $33
	ld   de, $4534                                   ; $7103: $11 $34 $45
	ld   d, l                                        ; $7106: $55
	ld   d, a                                        ; $7107: $57
	adc  c                                           ; $7108: $89
	xor  e                                           ; $7109: $ab
	db   $dd                                         ; $710a: $dd
	cp   $dc                                         ; $710b: $fe $dc
	call c, $a9bb                                    ; $710d: $dc $bb $a9
	sbc  b                                           ; $7110: $98
	ld   [hl], a                                     ; $7111: $77
	ld   h, l                                        ; $7112: $65
	ld   b, l                                        ; $7113: $45
	ld   b, e                                        ; $7114: $43
	ld   hl, $4423                                   ; $7115: $21 $23 $44
	ld   b, h                                        ; $7118: $44
	ld   b, l                                        ; $7119: $45
	ld   a, c                                        ; $711a: $79
	xor  e                                           ; $711b: $ab
	cp   h                                           ; $711c: $bc
	rst  JumpTable                                         ; $711d: $df
	db   $dd                                         ; $711e: $dd
	call z, $babc                                    ; $711f: $cc $bc $ba
	sbc  b                                           ; $7122: $98
	add  a                                           ; $7123: $87
	halt                                             ; $7124: $76
	ld   d, l                                        ; $7125: $55
	ld   d, h                                        ; $7126: $54
	ld   [hl-], a                                    ; $7127: $32
	ld   [de], a                                     ; $7128: $12
	inc  sp                                          ; $7129: $33
	ld   b, h                                        ; $712a: $44
	ld   b, h                                        ; $712b: $44
	ld   l, b                                        ; $712c: $68
	xor  d                                           ; $712d: $aa
	xor  h                                           ; $712e: $ac
	db   $dd                                         ; $712f: $dd
	xor  $ed                                         ; $7130: $ee $ed
	call z, $aabb                                    ; $7132: $cc $bb $aa
	sbc  c                                           ; $7135: $99
	adc  b                                           ; $7136: $88
	halt                                             ; $7137: $76
	ld   h, [hl]                                     ; $7138: $66
	ld   d, d                                        ; $7139: $52
	ld   de, $3324                                   ; $713a: $11 $24 $33
	inc  [hl]                                        ; $713d: $34
	ld   b, [hl]                                     ; $713e: $46
	adc  c                                           ; $713f: $89
	cp   e                                           ; $7140: $bb
	call $eeef                                       ; $7141: $cd $ef $ee
	db   $dd                                         ; $7144: $dd
	call z, $98a9                                    ; $7145: $cc $a9 $98
	adc  b                                           ; $7148: $88
	halt                                             ; $7149: $76
	ld   d, l                                        ; $714a: $55
	ld   d, h                                        ; $714b: $54
	ld   [hl-], a                                    ; $714c: $32
	ld   [de], a                                     ; $714d: $12
	inc  [hl]                                        ; $714e: $34
	ld   b, h                                        ; $714f: $44
	ld   d, l                                        ; $7150: $55
	ld   a, c                                        ; $7151: $79
	xor  e                                           ; $7152: $ab
	xor  e                                           ; $7153: $ab
	adc  $ef                                         ; $7154: $ce $ef
	db   $dd                                         ; $7156: $dd
	call c, $a9bb                                    ; $7157: $dc $bb $a9
	sbc  b                                           ; $715a: $98
	ld   [hl], a                                     ; $715b: $77
	ld   d, l                                        ; $715c: $55
	ld   b, h                                        ; $715d: $44
	ld   [hl-], a                                    ; $715e: $32
	ld   de, $4524                                   ; $715f: $11 $24 $45
	ld   d, [hl]                                     ; $7162: $56
	ld   a, b                                        ; $7163: $78
	xor  e                                           ; $7164: $ab
	cp   h                                           ; $7165: $bc
	call $eeef                                       ; $7166: $cd $ef $ee
	call c, $aaba                                    ; $7169: $dc $ba $aa
	adc  b                                           ; $716c: $88
	halt                                             ; $716d: $76
	ld   d, h                                        ; $716e: $54
	ld   b, h                                        ; $716f: $44
	ld   [hl-], a                                    ; $7170: $32
	ld   de, $4513                                   ; $7171: $11 $13 $45
	ld   h, [hl]                                     ; $7174: $66
	ld   a, b                                        ; $7175: $78
	sbc  d                                           ; $7176: $9a
	cp   l                                           ; $7177: $bd
	sbc  $ef                                         ; $7178: $de $ef
	cp   $ed                                         ; $717a: $fe $ed
	call z, $98a9                                    ; $717c: $cc $a9 $98
	ld   [hl], a                                     ; $717f: $77
	ld   h, h                                        ; $7180: $64
	inc  sp                                          ; $7181: $33
	ld   [hl+], a                                    ; $7182: $22
	ld   de, $4611                                   ; $7183: $11 $11 $46
	ld   a, b                                        ; $7186: $78
	adc  b                                           ; $7187: $88
	xor  e                                           ; $7188: $ab
	call z, $efdd                                    ; $7189: $cc $dd $ef
	rst  $38                                         ; $718c: $ff
	call c, $a9bb                                    ; $718d: $dc $bb $a9
	sbc  b                                           ; $7190: $98
	halt                                             ; $7191: $76
	ld   d, h                                        ; $7192: $54
	ld   [hl+], a                                    ; $7193: $22
	ld   de, $1111                                   ; $7194: $11 $11 $11
	ld   b, [hl]                                     ; $7197: $46
	adc  c                                           ; $7198: $89
	xor  e                                           ; $7199: $ab
	xor  h                                           ; $719a: $ac
	call z, $decd                                    ; $719b: $cc $cd $de
	rst  $38                                         ; $719e: $ff
	db   $ed                                         ; $719f: $ed
	cp   e                                           ; $71a0: $bb
	xor  d                                           ; $71a1: $aa
	add  a                                           ; $71a2: $87
	halt                                             ; $71a3: $76
	ld   h, e                                        ; $71a4: $63
	ld   de, $1111                                   ; $71a5: $11 $11 $11
	ld   [de], a                                     ; $71a8: $12
	ld   d, [hl]                                     ; $71a9: $56
	sbc  d                                           ; $71aa: $9a
	cp   d                                           ; $71ab: $ba
	xor  h                                           ; $71ac: $ac
	call z, $cdcc                                    ; $71ad: $cc $cc $cd
	rst  $38                                         ; $71b0: $ff
	db   $ed                                         ; $71b1: $ed
	res  5, d                                        ; $71b2: $cb $aa
	sub  a                                           ; $71b4: $97
	ld   h, h                                        ; $71b5: $64
	ld   b, e                                        ; $71b6: $43
	ld   hl, $1111                                   ; $71b7: $21 $11 $11
	inc  de                                          ; $71ba: $13
	ld   l, b                                        ; $71bb: $68
	cp   d                                           ; $71bc: $ba
	cp   d                                           ; $71bd: $ba
	cp   l                                           ; $71be: $bd
	call c, $dfbc                                    ; $71bf: $dc $bc $df
	rst  $38                                         ; $71c2: $ff
	db   $db                                         ; $71c3: $db
	call z, $97ca                                    ; $71c4: $cc $ca $97
	ld   d, h                                        ; $71c7: $54
	ld   sp, $1111                                   ; $71c8: $31 $11 $11
	ld   de, $8a14                                   ; $71cb: $11 $14 $8a
	cp   e                                           ; $71ce: $bb
	cp   e                                           ; $71cf: $bb
	call z, $abba                                    ; $71d0: $cc $ba $ab
	rst  JumpTable                                         ; $71d3: $df
	cp   $cc                                         ; $71d4: $fe $cc
	cp   e                                           ; $71d6: $bb
	xor  c                                           ; $71d7: $a9
	ld   [hl], l                                     ; $71d8: $75
	ld   d, h                                        ; $71d9: $54
	ld   hl, $1111                                   ; $71da: $21 $11 $11
	ld   de, $cc4a                                   ; $71dd: $11 $4a $cc
	jp   z, $cd9a                                    ; $71e0: $ca $9a $cd

	cp   d                                           ; $71e3: $ba
	xor  e                                           ; $71e4: $ab
	rst  $38                                         ; $71e5: $ff
	cp   $da                                         ; $71e6: $fe $da
	cp   e                                           ; $71e8: $bb
	cp   c                                           ; $71e9: $b9
	ld   h, h                                        ; $71ea: $64
	ld   [hl-], a                                    ; $71eb: $32
	ld   de, $1111                                   ; $71ec: $11 $11 $11
	inc  de                                          ; $71ef: $13
	sbc  h                                           ; $71f0: $9c
	xor  $db                                         ; $71f1: $ee $db
	xor  d                                           ; $71f3: $aa
	adc  b                                           ; $71f4: $88
	xor  d                                           ; $71f5: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71f6: $cf
	rst  $38                                         ; $71f7: $ff
	db   $fd                                         ; $71f8: $fd
	xor  d                                           ; $71f9: $aa
	res  0, a                                        ; $71fa: $cb $87
	ld   d, e                                        ; $71fc: $53
	ld   de, $1111                                   ; $71fd: $11 $11 $11
	ld   de, $ac47                                   ; $7200: $11 $47 $ac
	call c, $bbaa                                    ; $7203: $dc $aa $bb
	xor  c                                           ; $7206: $a9
	sbc  d                                           ; $7207: $9a
	rst  $28                                         ; $7208: $ef
	rst  $38                                         ; $7209: $ff
	db   $fc                                         ; $720a: $fc
	cp   e                                           ; $720b: $bb
	sbc  b                                           ; $720c: $98
	ld   [hl], l                                     ; $720d: $75
	ld   hl, $1111                                   ; $720e: $21 $11 $11
	ld   de, $8b14                                   ; $7211: $11 $14 $8b
	db   $fd                                         ; $7214: $fd
	sbc  d                                           ; $7215: $9a
	xor  c                                           ; $7216: $a9
	xor  d                                           ; $7217: $aa
	adc  b                                           ; $7218: $88
	cp   [hl]                                        ; $7219: $be
	rst  $38                                         ; $721a: $ff
	rst  $38                                         ; $721b: $ff
	db   $ec                                         ; $721c: $ec
	sbc  c                                           ; $721d: $99
	add  [hl]                                        ; $721e: $86
	ld   b, d                                        ; $721f: $42
	ld   de, $1111                                   ; $7220: $11 $11 $11
	ld   de, $ce38                                   ; $7223: $11 $38 $ce
	db   $ec                                         ; $7226: $ec
	sub  a                                           ; $7227: $97
	adc  c                                           ; $7228: $89
	sbc  c                                           ; $7229: $99
	xor  h                                           ; $722a: $ac
	rst  $38                                         ; $722b: $ff
	rst  $38                                         ; $722c: $ff
	db   $ec                                         ; $722d: $ec
	cp   c                                           ; $722e: $b9
	ld   [hl], a                                     ; $722f: $77
	ld   h, h                                        ; $7230: $64
	ld   hl, $1211                                   ; $7231: $21 $11 $12
	ld   hl, $ac14                                   ; $7234: $21 $14 $ac
	db   $ec                                         ; $7237: $ec
	and  a                                           ; $7238: $a7
	adc  e                                           ; $7239: $8b
	xor  c                                           ; $723a: $a9
	sbc  c                                           ; $723b: $99
	rst  $28                                         ; $723c: $ef
	rst  $38                                         ; $723d: $ff
	db   $eb                                         ; $723e: $eb
	xor  h                                           ; $723f: $ac
	rst  ToBoot                                         ; $7240: $c7
	ld   h, h                                        ; $7241: $64
	inc  sp                                          ; $7242: $33
	ld   de, $1111                                   ; $7243: $11 $11 $11
	ld   hl, $df4a                                   ; $7246: $21 $4a $df
	jp   hl                                          ; $7249: $e9


	ld   l, c                                        ; $724a: $69
	xor  c                                           ; $724b: $a9
	adc  b                                           ; $724c: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $724d: $cf
	rst  $38                                         ; $724e: $ff
	cp   $dc                                         ; $724f: $fe $dc
	xor  b                                           ; $7251: $a8
	ld   b, h                                        ; $7252: $44
	ld   b, l                                        ; $7253: $45
	ld   hl, $2311                                   ; $7254: $21 $11 $23
	ld   hl, $de39                                   ; $7257: $21 $39 $de
	rst  ToBoot                                         ; $725a: $c7
	ld   d, [hl]                                     ; $725b: $56
	adc  l                                           ; $725c: $8d
	ret                                              ; $725d: $c9


	adc  h                                           ; $725e: $8c
	rst  $38                                         ; $725f: $ff
	db   $fd                                         ; $7260: $fd
	sbc  e                                           ; $7261: $9b
	db   $eb                                         ; $7262: $eb
	sub  l                                           ; $7263: $95
	inc  hl                                          ; $7264: $23
	ld   hl, $1411                                   ; $7265: $21 $11 $14
	ld   b, d                                        ; $7268: $42
	inc  de                                          ; $7269: $13
	adc  c                                           ; $726a: $89
	xor  $b7                                         ; $726b: $ee $b7
	ld   h, a                                        ; $726d: $67
	adc  d                                           ; $726e: $8a
	cp   h                                           ; $726f: $bc
	rst  $28                                         ; $7270: $ef
	rst  $38                                         ; $7271: $ff
	db   $fc                                         ; $7272: $fc
	and  l                                           ; $7273: $a5
	ld   d, a                                        ; $7274: $57
	adc  b                                           ; $7275: $88
	ld   sp, $2311                                   ; $7276: $31 $11 $23
	ld   de, $9b25                                   ; $7279: $11 $25 $9b
	cp   b                                           ; $727c: $b8
	sbc  c                                           ; $727d: $99
	adc  b                                           ; $727e: $88
	ld   a, b                                        ; $727f: $78
	xor  h                                           ; $7280: $ac
	rst  $38                                         ; $7281: $ff
	rst  $38                                         ; $7282: $ff
	call z, $95db                                    ; $7283: $cc $db $95
	ld   b, [hl]                                     ; $7286: $46
	ld   b, e                                        ; $7287: $43
	ld   de, $3313                                   ; $7288: $11 $13 $33
	ld   de, $db5b                                   ; $728b: $11 $5b $db
	sub  [hl]                                        ; $728e: $96
	ld   e, b                                        ; $728f: $58
	add  a                                           ; $7290: $87
	sbc  h                                           ; $7291: $9c
	rst  $38                                         ; $7292: $ff
	xor  $de                                         ; $7293: $ee $de
	jp   c, Jump_0d8_65a8                            ; $7295: $da $a8 $65

	ld   d, h                                        ; $7298: $54
	ld   de, $4512                                   ; $7299: $11 $12 $45
	ld   sp, $aa29                                   ; $729c: $31 $29 $aa
	or   a                                           ; $729f: $b7
	ld   h, a                                        ; $72a0: $67
	ld   a, d                                        ; $72a1: $7a
	xor  c                                           ; $72a2: $a9
	sbc  $ff                                         ; $72a3: $de $ff
	rst  $38                                         ; $72a5: $ff
	sub  a                                           ; $72a6: $97
	ld   h, a                                        ; $72a7: $67
	cp   e                                           ; $72a8: $bb
	ld   h, d                                        ; $72a9: $62
	ld   de, $5225                                   ; $72aa: $11 $25 $52
	inc  sp                                          ; $72ad: $33
	dec  d                                           ; $72ae: $15
	res  4, [hl]                                     ; $72af: $cb $a6
	ld   [hl], a                                     ; $72b1: $77
	ld   a, l                                        ; $72b2: $7d
	cp   b                                           ; $72b3: $b8
	xor  e                                           ; $72b4: $ab
	rst  JumpTable                                         ; $72b5: $df
	rst  $38                                         ; $72b6: $ff
	push bc                                          ; $72b7: $c5
	ld   l, b                                        ; $72b8: $68
	sbc  d                                           ; $72b9: $9a
	sub  l                                           ; $72ba: $95
	ld   hl, $4213                                   ; $72bb: $21 $13 $42
	ld   [de], a                                     ; $72be: $12
	ld   b, a                                        ; $72bf: $47
	xor  e                                           ; $72c0: $ab
	add  [hl]                                        ; $72c1: $86
	ld   l, b                                        ; $72c2: $68
	res  3, c                                        ; $72c3: $cb $99
	ld   a, l                                        ; $72c5: $7d
	rst  $38                                         ; $72c6: $ff
	db   $fd                                         ; $72c7: $fd
	db   $dd                                         ; $72c8: $dd
	cp   c                                           ; $72c9: $b9
	ld   b, [hl]                                     ; $72ca: $46
	sub  l                                           ; $72cb: $95
	ld   b, c                                        ; $72cc: $41
	dec  d                                           ; $72cd: $15
	ld   d, l                                        ; $72ce: $55
	ld   de, $cb15                                   ; $72cf: $11 $15 $cb
	ld   h, h                                        ; $72d2: $64
	sbc  a                                           ; $72d3: $9f
	add  sp, $46                                     ; $72d4: $e8 $46
	xor  h                                           ; $72d6: $ac
	call $f9ff                                       ; $72d7: $cd $ff $f9
	halt                                             ; $72da: $76
	sbc  e                                           ; $72db: $9b
	halt                                             ; $72dc: $76
	ld   sp, $6514                                   ; $72dd: $31 $14 $65
	ld   hl, $ce16                                   ; $72e0: $21 $16 $ce
	add  c                                           ; $72e3: $81
	scf                                              ; $72e4: $37
	call Call_0d8_7998                               ; $72e5: $cd $98 $79
	rst  $38                                         ; $72e8: $ff
	db   $fd                                         ; $72e9: $fd
	ret                                              ; $72ea: $c9


	xor  e                                           ; $72eb: $ab
	ld   a, e                                        ; $72ec: $7b
	or   l                                           ; $72ed: $b5
	ld   de, $8627                                   ; $72ee: $11 $27 $86
	ld   hl, $8914                                   ; $72f1: $21 $14 $89
	ld   h, [hl]                                     ; $72f4: $66
	xor  [hl]                                        ; $72f5: $ae
	rst  $10                                         ; $72f6: $d7
	ld   e, b                                        ; $72f7: $58
	ld   a, d                                        ; $72f8: $7a
	rst  $38                                         ; $72f9: $ff
	rst  $38                                         ; $72fa: $ff
	call Call_0d8_68b9                               ; $72fb: $cd $b9 $68
	ret                                              ; $72fe: $c9


	ld   b, c                                        ; $72ff: $41
	inc  d                                           ; $7300: $14
	ld   d, [hl]                                     ; $7301: $56
	ld   [hl-], a                                    ; $7302: $32
	ld   hl, $a48c                                   ; $7303: $21 $8c $a4
	ld   a, [de]                                     ; $7306: $1a
	cp   $a4                                         ; $7307: $fe $a4
	ld   d, l                                        ; $7309: $55
	cp   a                                           ; $730a: $bf
	rst  $38                                         ; $730b: $ff
	push af                                          ; $730c: $f5
	ld   a, b                                        ; $730d: $78
	call c, Call_0d8_6478                            ; $730e: $dc $78 $64
	ld   hl, $2158                                   ; $7311: $21 $58 $21
	ld   [hl], $a5                                   ; $7314: $36 $a5
	ld   [hl], l                                     ; $7316: $75
	ld   e, e                                        ; $7317: $5b
	ld   a, e                                        ; $7318: $7b
	res  2, l                                        ; $7319: $cb $95
	adc  $cf                                         ; $731b: $ce $cf
	db   $fd                                         ; $731d: $fd
	rst  ToBoot                                         ; $731e: $c7
	ld   a, b                                        ; $731f: $78
	sbc  d                                           ; $7320: $9a

jr_0d8_7321:
	sub  h                                           ; $7321: $94
	ld   de, $8249                                   ; $7322: $11 $49 $82
	ld   de, $b85a                                   ; $7325: $11 $5a $b8
	jr   c, @-$57                                    ; $7328: $38 $a7

	sbc  e                                           ; $732a: $9b
	xor  c                                           ; $732b: $a9
	cp   l                                           ; $732c: $bd
	rst  $38                                         ; $732d: $ff
	rst  $10                                         ; $732e: $d7
	adc  h                                           ; $732f: $8c
	db   $db                                         ; $7330: $db
	sbc  b                                           ; $7331: $98
	inc  sp                                          ; $7332: $33
	ld   h, h                                        ; $7333: $64
	dec  [hl]                                        ; $7334: $35
	ld   b, l                                        ; $7335: $45
	ld   d, c                                        ; $7336: $51
	ld   h, $99                                      ; $7337: $26 $99
	sbc  d                                           ; $7339: $9a
	ld   d, a                                        ; $733a: $57
	call z, Call_0d8_6bb7                            ; $733b: $cc $b7 $6b
	rst  $28                                         ; $733e: $ef
	cp   $a8                                         ; $733f: $fe $a8
	sbc  c                                           ; $7341: $99
	adc  d                                           ; $7342: $8a
	add  [hl]                                        ; $7343: $86
	ld   hl, $7526                                   ; $7344: $21 $26 $75
	inc  sp                                          ; $7347: $33
	ld   [hl], $95                                   ; $7348: $36 $95
	ld   b, a                                        ; $734a: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $734b: $cf
	cp   b                                           ; $734c: $b8
	ld   h, h                                        ; $734d: $64
	sbc  a                                           ; $734e: $9f
	cp   $bb                                         ; $734f: $fe $bb
	db   $ec                                         ; $7351: $ec
	ret                                              ; $7352: $c9


	adc  b                                           ; $7353: $88
	ld   h, [hl]                                     ; $7354: $66
	inc  h                                           ; $7355: $24
	halt                                             ; $7356: $76
	ld   d, d                                        ; $7357: $52
	inc  h                                           ; $7358: $24
	ld   b, a                                        ; $7359: $47
	ld   [hl], h                                     ; $735a: $74
	ld   a, b                                        ; $735b: $78
	xor  c                                           ; $735c: $a9
	ld   a, l                                        ; $735d: $7d
	or   [hl]                                        ; $735e: $b6
	ld   [hl], a                                     ; $735f: $77
	cp   a                                           ; $7360: $bf
	rst  $38                                         ; $7361: $ff
	ld   a, c                                        ; $7362: $79
	xor  d                                           ; $7363: $aa
	or   [hl]                                        ; $7364: $b6
	ld   e, c                                        ; $7365: $59
	add  l                                           ; $7366: $85
	inc  hl                                          ; $7367: $23
	ld   d, [hl]                                     ; $7368: $56
	ld   d, d                                        ; $7369: $52
	inc  d                                           ; $736a: $14
	adc  d                                           ; $736b: $8a
	add  h                                           ; $736c: $84
	scf                                              ; $736d: $37
	adc  $a5                                         ; $736e: $ce $a5
	ld   e, l                                        ; $7370: $5d
	cp   $ac                                         ; $7371: $fe $ac
	db   $ec                                         ; $7373: $ec
	halt                                             ; $7374: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7375: $cf
	sub  l                                           ; $7376: $95
	ld   [de], a                                     ; $7377: $12
	ld   b, l                                        ; $7378: $45
	ld   h, [hl]                                     ; $7379: $66
	inc  [hl]                                        ; $737a: $34
	ld   b, e                                        ; $737b: $43
	ld   d, a                                        ; $737c: $57
	halt                                             ; $737d: $76
	sbc  b                                           ; $737e: $98
	sbc  e                                           ; $737f: $9b
	sbc  c                                           ; $7380: $99
	ld   d, h                                        ; $7381: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7382: $cf
	db   $fd                                         ; $7383: $fd
	adc  e                                           ; $7384: $8b
	db   $dd                                         ; $7385: $dd
	ld   [hl], l                                     ; $7386: $75
	cp   c                                           ; $7387: $b9
	ld   d, c                                        ; $7388: $51
	jr   jr_0d8_7321                                 ; $7389: $18 $96

	ld   sp, $8726                                   ; $738b: $31 $26 $87
	ld   h, [hl]                                     ; $738e: $66
	ld   l, d                                        ; $738f: $6a
	add  l                                           ; $7390: $85
	sbc  e                                           ; $7391: $9b
	call $ce89                                       ; $7392: $cd $89 $ce
	db   $fc                                         ; $7395: $fc
	cp   d                                           ; $7396: $ba
	call z, Call_0d8_6476                            ; $7397: $cc $76 $64
	ld   b, e                                        ; $739a: $43
	ld   b, l                                        ; $739b: $45
	ld   b, h                                        ; $739c: $44
	ld   b, l                                        ; $739d: $45
	ld   d, e                                        ; $739e: $53
	ld   h, a                                        ; $739f: $67
	sbc  d                                           ; $73a0: $9a
	xor  c                                           ; $73a1: $a9
	halt                                             ; $73a2: $76
	ld   a, e                                        ; $73a3: $7b
	db   $dd                                         ; $73a4: $dd
	xor  h                                           ; $73a5: $ac
	db   $fd                                         ; $73a6: $fd
	and  a                                           ; $73a7: $a7
	cp   [hl]                                        ; $73a8: $be
	sub  [hl]                                        ; $73a9: $96

Jump_0d8_73aa:
	dec  [hl]                                        ; $73aa: $35
	ld   h, e                                        ; $73ab: $63
	inc  [hl]                                        ; $73ac: $34
	ld   d, [hl]                                     ; $73ad: $56
	ld   [hl-], a                                    ; $73ae: $32
	ld   [hl], $86                                   ; $73af: $36 $86
	ld   [hl], a                                     ; $73b1: $77
	sbc  h                                           ; $73b2: $9c
	add  [hl]                                        ; $73b3: $86
	sbc  e                                           ; $73b4: $9b
	sbc  e                                           ; $73b5: $9b
	jp   c, $8bff                                    ; $73b6: $da $ff $8b

	cp   d                                           ; $73b9: $ba
	and  [hl]                                        ; $73ba: $a6
	ld   h, [hl]                                     ; $73bb: $66
	ld   b, h                                        ; $73bc: $44
	ld   b, l                                        ; $73bd: $45
	ld   d, e                                        ; $73be: $53
	ld   [hl+], a                                    ; $73bf: $22
	ld   b, [hl]                                     ; $73c0: $46
	ld   a, b                                        ; $73c1: $78
	add  [hl]                                        ; $73c2: $86
	ld   e, c                                        ; $73c3: $59
	cp   c                                           ; $73c4: $b9
	adc  b                                           ; $73c5: $88
	adc  h                                           ; $73c6: $8c
	db   $fc                                         ; $73c7: $fc
	db   $dd                                         ; $73c8: $dd
	jp   z, $9b89                                    ; $73c9: $ca $89 $9b

	add  h                                           ; $73cc: $84
	ld   d, h                                        ; $73cd: $54
	ld   b, l                                        ; $73ce: $45
	inc  [hl]                                        ; $73cf: $34
	ld   b, h                                        ; $73d0: $44
	ld   d, h                                        ; $73d1: $54
	halt                                             ; $73d2: $76
	ld   e, b                                        ; $73d3: $58
	sub  a                                           ; $73d4: $97
	adc  e                                           ; $73d5: $8b
	cp   b                                           ; $73d6: $b8
	sbc  d                                           ; $73d7: $9a
	adc  $bb                                         ; $73d8: $ce $bb
	set  1, l                                        ; $73da: $cb $cd
	xor  b                                           ; $73dc: $a8
	add  a                                           ; $73dd: $87
	inc  sp                                          ; $73de: $33
	dec  [hl]                                        ; $73df: $35
	ld   [hl], h                                     ; $73e0: $74
	inc  hl                                          ; $73e1: $23
	ld   [hl], $66                                   ; $73e2: $36 $66
	ld   a, b                                        ; $73e4: $78
	sub  a                                           ; $73e5: $97
	sbc  d                                           ; $73e6: $9a
	adc  d                                           ; $73e7: $8a
	sbc  d                                           ; $73e8: $9a
	xor  d                                           ; $73e9: $aa
	rst  $38                                         ; $73ea: $ff
	ld   [$c88d], a                                  ; $73eb: $ea $8d $c8
	ld   [hl], h                                     ; $73ee: $74
	ld   [hl], a                                     ; $73ef: $77
	ld   b, h                                        ; $73f0: $44
	ld   b, [hl]                                     ; $73f1: $46
	ld   h, h                                        ; $73f2: $64
	inc  hl                                          ; $73f3: $23
	ld   h, a                                        ; $73f4: $67
	halt                                             ; $73f5: $76
	ld   e, c                                        ; $73f6: $59
	sbc  d                                           ; $73f7: $9a
	xor  b                                           ; $73f8: $a8
	xor  d                                           ; $73f9: $aa
	cp   e                                           ; $73fa: $bb
	cp   e                                           ; $73fb: $bb
	cp   h                                           ; $73fc: $bc
	cp   e                                           ; $73fd: $bb
	cp   h                                           ; $73fe: $bc
	sub  a                                           ; $73ff: $97
	ld   h, l                                        ; $7400: $65
	ld   h, l                                        ; $7401: $65
	ld   b, l                                        ; $7402: $45
	ld   d, h                                        ; $7403: $54
	ld   b, e                                        ; $7404: $43
	ld   d, [hl]                                     ; $7405: $56
	ld   b, l                                        ; $7406: $45
	adc  b                                           ; $7407: $88
	sbc  c                                           ; $7408: $99
	sbc  c                                           ; $7409: $99
	xor  d                                           ; $740a: $aa
	xor  e                                           ; $740b: $ab
	call z, $bdca                                    ; $740c: $cc $ca $bd
	cp   e                                           ; $740f: $bb
	sbc  c                                           ; $7410: $99
	and  [hl]                                        ; $7411: $a6
	ld   h, [hl]                                     ; $7412: $66
	ld   d, [hl]                                     ; $7413: $56
	ld   b, e                                        ; $7414: $43
	inc  [hl]                                        ; $7415: $34
	ld   b, h                                        ; $7416: $44
	ld   d, l                                        ; $7417: $55
	ld   [hl], a                                     ; $7418: $77
	ld   a, b                                        ; $7419: $78
	sbc  c                                           ; $741a: $99
	xor  d                                           ; $741b: $aa
	sbc  c                                           ; $741c: $99
	cp   e                                           ; $741d: $bb
	call $cabb                                       ; $741e: $cd $bb $ca
	xor  c                                           ; $7421: $a9
	sbc  c                                           ; $7422: $99
	ld   [hl], l                                     ; $7423: $75
	ld   d, l                                        ; $7424: $55
	ld   h, l                                        ; $7425: $65
	ld   b, e                                        ; $7426: $43
	inc  [hl]                                        ; $7427: $34
	ld   b, l                                        ; $7428: $45
	ld   h, a                                        ; $7429: $67
	adc  b                                           ; $742a: $88
	add  a                                           ; $742b: $87
	adc  c                                           ; $742c: $89
	xor  c                                           ; $742d: $a9
	xor  d                                           ; $742e: $aa
	cp   e                                           ; $742f: $bb
	cp   d                                           ; $7430: $ba
	xor  d                                           ; $7431: $aa
	xor  c                                           ; $7432: $a9
	xor  d                                           ; $7433: $aa
	sub  a                                           ; $7434: $97
	ld   h, [hl]                                     ; $7435: $66
	ld   h, [hl]                                     ; $7436: $66
	ld   h, [hl]                                     ; $7437: $66
	ld   h, l                                        ; $7438: $65
	ld   d, l                                        ; $7439: $55
	ld   d, [hl]                                     ; $743a: $56
	ld   h, [hl]                                     ; $743b: $66
	ld   [hl], a                                     ; $743c: $77
	add  a                                           ; $743d: $87
	ld   a, b                                        ; $743e: $78
	sbc  c                                           ; $743f: $99
	sbc  d                                           ; $7440: $9a
	cp   e                                           ; $7441: $bb
	xor  e                                           ; $7442: $ab
	xor  d                                           ; $7443: $aa
	cp   d                                           ; $7444: $ba
	sbc  c                                           ; $7445: $99
	sbc  c                                           ; $7446: $99
	adc  b                                           ; $7447: $88
	adc  b                                           ; $7448: $88
	add  a                                           ; $7449: $87
	halt                                             ; $744a: $76
	ld   h, [hl]                                     ; $744b: $66
	ld   h, [hl]                                     ; $744c: $66
	ld   h, [hl]                                     ; $744d: $66
	ld   h, [hl]                                     ; $744e: $66
	ld   h, [hl]                                     ; $744f: $66
	ld   [hl], a                                     ; $7450: $77
	ld   a, b                                        ; $7451: $78
	sbc  b                                           ; $7452: $98
	sbc  c                                           ; $7453: $99
	xor  d                                           ; $7454: $aa
	xor  e                                           ; $7455: $ab
	cp   d                                           ; $7456: $ba
	xor  d                                           ; $7457: $aa
	cp   e                                           ; $7458: $bb
	xor  d                                           ; $7459: $aa
	xor  c                                           ; $745a: $a9
	adc  c                                           ; $745b: $89
	add  a                                           ; $745c: $87
	halt                                             ; $745d: $76
	ld   h, [hl]                                     ; $745e: $66
	ld   h, [hl]                                     ; $745f: $66
	ld   d, [hl]                                     ; $7460: $56
	ld   h, [hl]                                     ; $7461: $66
	ld   h, [hl]                                     ; $7462: $66
	ld   h, a                                        ; $7463: $67
	ld   [hl], a                                     ; $7464: $77
	ld   a, b                                        ; $7465: $78
	sbc  c                                           ; $7466: $99
	sbc  d                                           ; $7467: $9a
	xor  d                                           ; $7468: $aa
	xor  e                                           ; $7469: $ab
	xor  e                                           ; $746a: $ab
	cp   e                                           ; $746b: $bb
	xor  d                                           ; $746c: $aa
	sbc  c                                           ; $746d: $99
	sbc  b                                           ; $746e: $98
	sbc  b                                           ; $746f: $98
	ld   [hl], a                                     ; $7470: $77
	halt                                             ; $7471: $76
	ld   h, [hl]                                     ; $7472: $66

Call_0d8_7473:
	ld   h, l                                        ; $7473: $65
	ld   d, [hl]                                     ; $7474: $56
	ld   h, [hl]                                     ; $7475: $66
	ld   h, [hl]                                     ; $7476: $66
	ld   h, a                                        ; $7477: $67
	ld   [hl], a                                     ; $7478: $77
	adc  c                                           ; $7479: $89
	adc  c                                           ; $747a: $89
	xor  c                                           ; $747b: $a9
	xor  d                                           ; $747c: $aa
	cp   e                                           ; $747d: $bb
	xor  d                                           ; $747e: $aa
	cp   d                                           ; $747f: $ba
	xor  d                                           ; $7480: $aa
	sbc  c                                           ; $7481: $99
	sbc  c                                           ; $7482: $99
	adc  b                                           ; $7483: $88
	ld   [hl], a                                     ; $7484: $77
	ld   h, [hl]                                     ; $7485: $66
	ld   h, [hl]                                     ; $7486: $66
	ld   d, l                                        ; $7487: $55
	ld   d, l                                        ; $7488: $55
	ld   h, [hl]                                     ; $7489: $66
	ld   h, [hl]                                     ; $748a: $66
	ld   [hl], a                                     ; $748b: $77
	ld   a, b                                        ; $748c: $78
	adc  c                                           ; $748d: $89
	sbc  c                                           ; $748e: $99
	xor  d                                           ; $748f: $aa
	cp   d                                           ; $7490: $ba
	xor  d                                           ; $7491: $aa
	cp   e                                           ; $7492: $bb
	cp   d                                           ; $7493: $ba
	sbc  c                                           ; $7494: $99
	xor  b                                           ; $7495: $a8
	adc  b                                           ; $7496: $88
	add  a                                           ; $7497: $87
	ld   [hl], a                                     ; $7498: $77
	ld   h, [hl]                                     ; $7499: $66
	ld   h, [hl]                                     ; $749a: $66
	ld   h, l                                        ; $749b: $65
	ld   d, [hl]                                     ; $749c: $56
	ld   h, [hl]                                     ; $749d: $66
	ld   h, a                                        ; $749e: $67
	ld   [hl], a                                     ; $749f: $77
	adc  b                                           ; $74a0: $88
	sbc  b                                           ; $74a1: $98
	sbc  d                                           ; $74a2: $9a
	xor  d                                           ; $74a3: $aa
	xor  d                                           ; $74a4: $aa
	xor  d                                           ; $74a5: $aa
	xor  d                                           ; $74a6: $aa
	xor  e                                           ; $74a7: $ab
	xor  c                                           ; $74a8: $a9
	xor  c                                           ; $74a9: $a9
	sbc  b                                           ; $74aa: $98
	ld   [hl], a                                     ; $74ab: $77
	halt                                             ; $74ac: $76
	ld   h, [hl]                                     ; $74ad: $66
	ld   h, [hl]                                     ; $74ae: $66
	ld   d, l                                        ; $74af: $55
	ld   d, [hl]                                     ; $74b0: $56
	ld   h, [hl]                                     ; $74b1: $66
	ld   h, [hl]                                     ; $74b2: $66
	ld   [hl], a                                     ; $74b3: $77
	adc  b                                           ; $74b4: $88
	adc  c                                           ; $74b5: $89
	sbc  d                                           ; $74b6: $9a
	xor  e                                           ; $74b7: $ab
	cp   e                                           ; $74b8: $bb
	cp   e                                           ; $74b9: $bb
	cp   e                                           ; $74ba: $bb
	xor  e                                           ; $74bb: $ab
	xor  c                                           ; $74bc: $a9
	xor  c                                           ; $74bd: $a9
	sbc  b                                           ; $74be: $98
	ld   [hl], a                                     ; $74bf: $77
	halt                                             ; $74c0: $76
	ld   h, [hl]                                     ; $74c1: $66
	ld   d, [hl]                                     ; $74c2: $56
	ld   d, l                                        ; $74c3: $55
	ld   d, l                                        ; $74c4: $55
	ld   h, [hl]                                     ; $74c5: $66
	ld   h, [hl]                                     ; $74c6: $66
	ld   [hl], a                                     ; $74c7: $77
	ld   a, b                                        ; $74c8: $78
	sbc  c                                           ; $74c9: $99
	sbc  d                                           ; $74ca: $9a
	cp   e                                           ; $74cb: $bb
	cp   e                                           ; $74cc: $bb
	cp   e                                           ; $74cd: $bb
	cp   e                                           ; $74ce: $bb
	cp   e                                           ; $74cf: $bb
	xor  c                                           ; $74d0: $a9
	sbc  b                                           ; $74d1: $98
	sbc  b                                           ; $74d2: $98
	ld   [hl], a                                     ; $74d3: $77
	ld   h, [hl]                                     ; $74d4: $66
	ld   h, l                                        ; $74d5: $65
	ld   d, l                                        ; $74d6: $55
	ld   d, l                                        ; $74d7: $55
	ld   d, l                                        ; $74d8: $55
	ld   d, l                                        ; $74d9: $55
	ld   h, [hl]                                     ; $74da: $66

Call_0d8_74db:
	ld   [hl], a                                     ; $74db: $77
	adc  c                                           ; $74dc: $89
	sbc  c                                           ; $74dd: $99
	xor  e                                           ; $74de: $ab
	cp   e                                           ; $74df: $bb
	cp   h                                           ; $74e0: $bc
	res  7, e                                        ; $74e1: $cb $bb
	xor  d                                           ; $74e3: $aa
	sbc  d                                           ; $74e4: $9a
	sbc  c                                           ; $74e5: $99
	add  a                                           ; $74e6: $87
	halt                                             ; $74e7: $76
	ld   h, l                                        ; $74e8: $65
	ld   d, l                                        ; $74e9: $55
	ld   d, l                                        ; $74ea: $55
	ld   d, h                                        ; $74eb: $54
	ld   d, l                                        ; $74ec: $55
	ld   d, l                                        ; $74ed: $55
	ld   h, [hl]                                     ; $74ee: $66
	ld   [hl], a                                     ; $74ef: $77
	adc  b                                           ; $74f0: $88
	xor  d                                           ; $74f1: $aa
	xor  d                                           ; $74f2: $aa
	xor  e                                           ; $74f3: $ab
	cp   h                                           ; $74f4: $bc
	call z, $baba                                    ; $74f5: $cc $ba $ba
	sbc  c                                           ; $74f8: $99
	adc  b                                           ; $74f9: $88
	ld   [hl], a                                     ; $74fa: $77
	ld   h, [hl]                                     ; $74fb: $66
	ld   h, l                                        ; $74fc: $65
	ld   d, l                                        ; $74fd: $55
	ld   b, h                                        ; $74fe: $44
	ld   b, h                                        ; $74ff: $44
	ld   b, l                                        ; $7500: $45
	ld   d, l                                        ; $7501: $55
	ld   h, [hl]                                     ; $7502: $66
	ld   [hl], a                                     ; $7503: $77
	sbc  c                                           ; $7504: $99
	xor  d                                           ; $7505: $aa
	xor  e                                           ; $7506: $ab
	cp   e                                           ; $7507: $bb
	call z, $bbcb                                    ; $7508: $cc $cb $bb
	cp   d                                           ; $750b: $ba
	xor  b                                           ; $750c: $a8
	sbc  b                                           ; $750d: $98
	halt                                             ; $750e: $76
	ld   h, l                                        ; $750f: $65
	ld   d, l                                        ; $7510: $55
	ld   b, h                                        ; $7511: $44
	ld   b, h                                        ; $7512: $44
	ld   b, h                                        ; $7513: $44
	ld   b, l                                        ; $7514: $45
	ld   d, l                                        ; $7515: $55
	ld   h, a                                        ; $7516: $67
	ld   a, b                                        ; $7517: $78
	adc  c                                           ; $7518: $89
	sbc  d                                           ; $7519: $9a
	xor  e                                           ; $751a: $ab
	call z, $bccc                                    ; $751b: $cc $cc $bc
	cp   e                                           ; $751e: $bb
	xor  c                                           ; $751f: $a9
	sbc  b                                           ; $7520: $98
	add  a                                           ; $7521: $87
	halt                                             ; $7522: $76
	ld   h, l                                        ; $7523: $65
	ld   b, h                                        ; $7524: $44
	ld   b, h                                        ; $7525: $44
	ld   b, h                                        ; $7526: $44
	ld   b, h                                        ; $7527: $44
	ld   b, l                                        ; $7528: $45
	ld   d, [hl]                                     ; $7529: $56
	ld   h, a                                        ; $752a: $67
	adc  c                                           ; $752b: $89
	sbc  c                                           ; $752c: $99
	cp   d                                           ; $752d: $ba
	cp   h                                           ; $752e: $bc
	cp   h                                           ; $752f: $bc
	cp   h                                           ; $7530: $bc
	res  7, e                                        ; $7531: $cb $bb
	xor  d                                           ; $7533: $aa
	sbc  c                                           ; $7534: $99
	ld   [hl], a                                     ; $7535: $77
	ld   h, [hl]                                     ; $7536: $66
	ld   d, l                                        ; $7537: $55
	ld   d, h                                        ; $7538: $54
	ld   b, h                                        ; $7539: $44
	ld   b, h                                        ; $753a: $44
	ld   b, h                                        ; $753b: $44
	ld   b, l                                        ; $753c: $45
	ld   d, [hl]                                     ; $753d: $56
	ld   [hl], a                                     ; $753e: $77
	adc  c                                           ; $753f: $89
	xor  d                                           ; $7540: $aa
	cp   e                                           ; $7541: $bb
	set  1, h                                        ; $7542: $cb $cc
	cp   e                                           ; $7544: $bb
	cp   e                                           ; $7545: $bb
	xor  d                                           ; $7546: $aa
	sbc  c                                           ; $7547: $99
	sbc  b                                           ; $7548: $98
	halt                                             ; $7549: $76
	ld   h, l                                        ; $754a: $65
	ld   d, l                                        ; $754b: $55
	ld   b, h                                        ; $754c: $44
	ld   b, h                                        ; $754d: $44
	ld   b, h                                        ; $754e: $44
	ld   b, h                                        ; $754f: $44
	ld   d, l                                        ; $7550: $55
	ld   h, [hl]                                     ; $7551: $66
	ld   [hl], a                                     ; $7552: $77
	adc  c                                           ; $7553: $89
	sbc  d                                           ; $7554: $9a
	cp   h                                           ; $7555: $bc
	res  7, e                                        ; $7556: $cb $bb
	cp   h                                           ; $7558: $bc
	res  5, d                                        ; $7559: $cb $aa
	sbc  c                                           ; $755b: $99
	adc  b                                           ; $755c: $88
	ld   [hl], a                                     ; $755d: $77
	ld   h, l                                        ; $755e: $65
	ld   d, h                                        ; $755f: $54
	ld   b, h                                        ; $7560: $44
	ld   b, h                                        ; $7561: $44
	ld   b, h                                        ; $7562: $44
	ld   b, h                                        ; $7563: $44
	ld   d, l                                        ; $7564: $55
	ld   h, [hl]                                     ; $7565: $66
	ld   a, b                                        ; $7566: $78
	sbc  c                                           ; $7567: $99
	cp   e                                           ; $7568: $bb
	cp   h                                           ; $7569: $bc
	call z, $cbcc                                    ; $756a: $cc $cc $cb
	res  7, d                                        ; $756d: $cb $ba
	xor  c                                           ; $756f: $a9
	add  a                                           ; $7570: $87
	halt                                             ; $7571: $76
	ld   h, l                                        ; $7572: $65
	ld   b, h                                        ; $7573: $44
	ld   b, h                                        ; $7574: $44
	ld   b, h                                        ; $7575: $44
	ld   b, h                                        ; $7576: $44
	ld   b, l                                        ; $7577: $45
	ld   d, [hl]                                     ; $7578: $56
	ld   h, a                                        ; $7579: $67
	adc  b                                           ; $757a: $88
	xor  d                                           ; $757b: $aa
	cp   h                                           ; $757c: $bc
	call $cccc                                       ; $757d: $cd $cc $cc
	set  1, e                                        ; $7580: $cb $cb
	xor  c                                           ; $7582: $a9
	sbc  b                                           ; $7583: $98
	ld   [hl], a                                     ; $7584: $77
	ld   h, [hl]                                     ; $7585: $66
	ld   d, h                                        ; $7586: $54
	ld   b, h                                        ; $7587: $44
	ld   b, e                                        ; $7588: $43
	ld   b, h                                        ; $7589: $44
	ld   b, h                                        ; $758a: $44
	ld   d, l                                        ; $758b: $55
	ld   h, a                                        ; $758c: $67
	ld   a, c                                        ; $758d: $79
	sbc  d                                           ; $758e: $9a
	xor  h                                           ; $758f: $ac
	cp   h                                           ; $7590: $bc
	call z, $cddd                                    ; $7591: $cc $dd $cd
	rst  $28                                         ; $7594: $ef
	db   $db                                         ; $7595: $db
	xor  b                                           ; $7596: $a8
	ld   [hl], l                                     ; $7597: $75
	ld   b, e                                        ; $7598: $43
	ld   [hl-], a                                    ; $7599: $32
	ld   de, $2312                                   ; $759a: $11 $12 $23
	ld   b, l                                        ; $759d: $45
	ld   [hl], a                                     ; $759e: $77
	sbc  c                                           ; $759f: $99
	xor  d                                           ; $75a0: $aa
	cp   h                                           ; $75a1: $bc
	call c, $dccd                                    ; $75a2: $dc $cd $dc
	cp   e                                           ; $75a5: $bb
	cp   e                                           ; $75a6: $bb
	sbc  b                                           ; $75a7: $98
	add  a                                           ; $75a8: $87

Call_0d8_75a9:
	halt                                             ; $75a9: $76
	ld   d, h                                        ; $75aa: $54
	ld   b, h                                        ; $75ab: $44
	ld   [hl-], a                                    ; $75ac: $32
	inc  de                                          ; $75ad: $13
	ld   b, e                                        ; $75ae: $43
	inc  [hl]                                        ; $75af: $34
	ld   h, a                                        ; $75b0: $67
	adc  c                                           ; $75b1: $89
	xor  d                                           ; $75b2: $aa
	call z, $eedd                                    ; $75b3: $cc $dd $ee
	db   $ed                                         ; $75b6: $ed
	db   $dd                                         ; $75b7: $dd
	jp   z, $7697                                    ; $75b8: $ca $97 $76

	ld   h, h                                        ; $75bb: $64
	ld   [hl-], a                                    ; $75bc: $32
	ld   hl, $1211                                   ; $75bd: $21 $11 $12
	ld   b, l                                        ; $75c0: $45
	ld   d, [hl]                                     ; $75c1: $56
	sbc  d                                           ; $75c2: $9a
	xor  d                                           ; $75c3: $aa
	call $efde                                       ; $75c4: $cd $de $ef
	rst  $38                                         ; $75c7: $ff
	db   $ed                                         ; $75c8: $ed
	call z, $76a8                                    ; $75c9: $cc $a8 $76
	ld   d, h                                        ; $75cc: $54
	ld   [hl-], a                                    ; $75cd: $32
	ld   hl, $1111                                   ; $75ce: $21 $11 $11
	dec  h                                           ; $75d1: $25
	ld   h, [hl]                                     ; $75d2: $66
	adc  c                                           ; $75d3: $89
	xor  h                                           ; $75d4: $ac
	cp   e                                           ; $75d5: $bb
	sbc  $ff                                         ; $75d6: $de $ff
	rst  $38                                         ; $75d8: $ff
	rst  $38                                         ; $75d9: $ff
	call c, $97b9                                    ; $75da: $dc $b9 $97
	ld   d, h                                        ; $75dd: $54
	ld   [hl-], a                                    ; $75de: $32
	ld   hl, $1111                                   ; $75df: $21 $11 $11
	inc  bc                                          ; $75e2: $03
	ld   h, a                                        ; $75e3: $67
	adc  c                                           ; $75e4: $89
	xor  h                                           ; $75e5: $ac
	call $efcd                                       ; $75e6: $cd $cd $ef
	rst  $38                                         ; $75e9: $ff
	rst  $38                                         ; $75ea: $ff
	db   $ec                                         ; $75eb: $ec
	cp   d                                           ; $75ec: $ba
	sbc  b                                           ; $75ed: $98
	ld   h, l                                        ; $75ee: $65
	ld   b, e                                        ; $75ef: $43
	ld   de, $1111                                   ; $75f0: $11 $11 $11
	ld   [de], a                                     ; $75f3: $12
	ld   d, a                                        ; $75f4: $57
	adc  b                                           ; $75f5: $88
	cp   e                                           ; $75f6: $bb
	set  1, l                                        ; $75f7: $cb $cd
	rst  $38                                         ; $75f9: $ff
	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff
	db   $fc                                         ; $75fc: $fc
	cp   e                                           ; $75fd: $bb
	xor  b                                           ; $75fe: $a8
	ld   h, l                                        ; $75ff: $65
	ld   b, c                                        ; $7600: $41
	ld   de, $1111                                   ; $7601: $11 $11 $11
	ld   [de], a                                     ; $7604: $12
	ld   d, [hl]                                     ; $7605: $56
	sbc  d                                           ; $7606: $9a
	cp   h                                           ; $7607: $bc
	set  1, l                                        ; $7608: $cb $cd
	rst  JumpTable                                         ; $760a: $df
	rst  $38                                         ; $760b: $ff
	rst  $38                                         ; $760c: $ff
	db   $fd                                         ; $760d: $fd
	cp   d                                           ; $760e: $ba
	sbc  b                                           ; $760f: $98
	ld   h, [hl]                                     ; $7610: $66
	ld   b, d                                        ; $7611: $42
	ld   de, $1111                                   ; $7612: $11 $11 $11
	inc  de                                          ; $7615: $13
	ld   d, [hl]                                     ; $7616: $56
	adc  d                                           ; $7617: $8a
	xor  e                                           ; $7618: $ab
	cp   h                                           ; $7619: $bc
	call $ffdf                                       ; $761a: $cd $df $ff
	rst  $38                                         ; $761d: $ff
	call c, $87cb                                    ; $761e: $dc $cb $87
	ld   h, l                                        ; $7621: $65
	ld   b, c                                        ; $7622: $41
	ld   de, $1111                                   ; $7623: $11 $11 $11
	inc  de                                          ; $7626: $13
	ld   h, a                                        ; $7627: $67
	cp   h                                           ; $7628: $bc
	xor  d                                           ; $7629: $aa
	cp   e                                           ; $762a: $bb
	db   $dd                                         ; $762b: $dd
	rst  JumpTable                                         ; $762c: $df
	cp   $ef                                         ; $762d: $fe $ef
	db   $db                                         ; $762f: $db
	xor  d                                           ; $7630: $aa
	sbc  c                                           ; $7631: $99
	ld   h, e                                        ; $7632: $63
	ld   sp, $1111                                   ; $7633: $31 $11 $11
	ld   de, $6836                                   ; $7636: $11 $36 $68
	cp   d                                           ; $7639: $ba
	xor  l                                           ; $763a: $ad
	set  3, e                                        ; $763b: $cb $db
	sbc  $df                                         ; $763d: $de $df
	xor  $cb                                         ; $763f: $ee $cb
	xor  b                                           ; $7641: $a8
	add  a                                           ; $7642: $87
	ld   b, d                                        ; $7643: $42
	ld   de, $1111                                   ; $7644: $11 $11 $11
	ld   [de], a                                     ; $7647: $12
	ld   e, b                                        ; $7648: $58
	sbc  d                                           ; $7649: $9a
	adc  d                                           ; $764a: $8a
	res  7, h                                        ; $764b: $cb $bc
	cp   l                                           ; $764d: $bd
	cp   $ef                                         ; $764e: $fe $ef
	db   $ec                                         ; $7650: $ec
	ret                                              ; $7651: $c9


	xor  d                                           ; $7652: $aa
	ld   h, h                                        ; $7653: $64
	ld   b, c                                        ; $7654: $41
	ld   de, $1111                                   ; $7655: $11 $11 $11
	ld   d, $68                                      ; $7658: $16 $68
	jp   z, $cbad                                    ; $765a: $ca $ad $cb

	xor  h                                           ; $765d: $ac
	cp   $ce                                         ; $765e: $fe $ce
	rst  $38                                         ; $7660: $ff
	jp   c, $949c                                    ; $7661: $da $9c $94

	inc  sp                                          ; $7664: $33
	ld   hl, $1111                                   ; $7665: $21 $11 $11
	ld   de, $7a77                                   ; $7668: $11 $77 $7a
	xor  e                                           ; $766b: $ab
	call z, $ccc9                                    ; $766c: $cc $c9 $cc
	sbc  $fe                                         ; $766f: $de $fe
	db   $ed                                         ; $7671: $ed
	xor  e                                           ; $7672: $ab
	xor  d                                           ; $7673: $aa
	ld   h, e                                        ; $7674: $63
	ld   de, $1121                                   ; $7675: $11 $21 $11
	ld   [de], a                                     ; $7678: $12
	dec  [hl]                                        ; $7679: $35
	ld   a, d                                        ; $767a: $7a
	jp   c, $dbac                                    ; $767b: $da $ac $db

	sbc  d                                           ; $767e: $9a
	rst  $28                                         ; $767f: $ef
	adc  $ef                                         ; $7680: $ce $ef
	reti                                             ; $7682: $d9


	sbc  b                                           ; $7683: $98
	add  l                                           ; $7684: $85
	inc  hl                                          ; $7685: $23
	ld   sp, $1111                                   ; $7686: $31 $11 $11
	inc  d                                           ; $7689: $14
	adc  d                                           ; $768a: $8a
	xor  d                                           ; $768b: $aa
	xor  l                                           ; $768c: $ad
	jp   z, wCurrAudChannelTimes5                                    ; $768d: $ca $ab $cd

	adc  $fe                                         ; $7690: $ce $fe
	call z, $84ca                                    ; $7692: $cc $ca $84
	ld   d, h                                        ; $7695: $54
	ld   de, $1111                                   ; $7696: $11 $11 $11
	dec  d                                           ; $7699: $15
	add  [hl]                                        ; $769a: $86
	adc  h                                           ; $769b: $8c
	jp   z, $9ceb                                    ; $769c: $ca $eb $9c

	cp   l                                           ; $769f: $bd
	db   $ed                                         ; $76a0: $ed
	rst  JumpTable                                         ; $76a1: $df
	db   $fc                                         ; $76a2: $fc
	xor  d                                           ; $76a3: $aa
	add  a                                           ; $76a4: $87
	ld   d, c                                        ; $76a5: $51
	inc  hl                                          ; $76a6: $23
	ld   de, $2411                                   ; $76a7: $11 $11 $24
	ld   h, l                                        ; $76aa: $65
	sbc  h                                           ; $76ab: $9c
	xor  b                                           ; $76ac: $a8
	adc  $ca                                         ; $76ad: $ce $ca
	sbc  e                                           ; $76af: $9b
	rst  $38                                         ; $76b0: $ff
	adc  $fd                                         ; $76b1: $ce $fd
	cp   b                                           ; $76b3: $b8
	adc  b                                           ; $76b4: $88
	ld   d, c                                        ; $76b5: $51
	ld   [de], a                                     ; $76b6: $12
	ld   [hl+], a                                    ; $76b7: $22
	ld   de, $6624                                   ; $76b8: $11 $24 $66
	ld   l, d                                        ; $76bb: $6a
	xor  $99                                         ; $76bc: $ee $99
	call z, $bfcb                                    ; $76be: $cc $cb $bf
	db   $fd                                         ; $76c1: $fd
	call $85d9                                       ; $76c2: $cd $d9 $85
	inc  hl                                          ; $76c5: $23
	inc  sp                                          ; $76c6: $33
	ld   hl, $3511                                   ; $76c7: $21 $11 $35
	ld   e, b                                        ; $76ca: $58
	adc  b                                           ; $76cb: $88
	xor  h                                           ; $76cc: $ac
	cp   h                                           ; $76cd: $bc
	sbc  c                                           ; $76ce: $99
	call z, $ffbe                                    ; $76cf: $cc $be $ff
	sbc  h                                           ; $76d2: $9c
	cp   c                                           ; $76d3: $b9
	add  c                                           ; $76d4: $81
	ld   [hl], $21                                   ; $76d5: $36 $21
	inc  bc                                          ; $76d7: $03
	ld   de, $7635                                   ; $76d8: $11 $35 $76
	sbc  l                                           ; $76db: $9d
	cp   l                                           ; $76dc: $bd
	xor  b                                           ; $76dd: $a8
	ei                                               ; $76de: $fb
	cp   l                                           ; $76df: $bd
	rst  $28                                         ; $76e0: $ef
	db   $fd                                         ; $76e1: $fd
	cp   e                                           ; $76e2: $bb
	xor  c                                           ; $76e3: $a9
	ld   b, e                                        ; $76e4: $43
	inc  hl                                          ; $76e5: $23
	ld   sp, $2211                                   ; $76e6: $31 $11 $22
	ld   d, [hl]                                     ; $76e9: $56
	ld   l, d                                        ; $76ea: $6a
	ret                                              ; $76eb: $c9


	cp   h                                           ; $76ec: $bc
	jp   c, $ff8b                                    ; $76ed: $da $8b $ff

	db   $ec                                         ; $76f0: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76f1: $cf
	ret  z                                           ; $76f2: $c8

	ld   d, l                                        ; $76f3: $55
	ld   [hl], d                                     ; $76f4: $72
	ld   [de], a                                     ; $76f5: $12
	inc  [hl]                                        ; $76f6: $34
	ld   de, $9725                                   ; $76f7: $11 $25 $97
	ld   e, e                                        ; $76fa: $5b
	db   $fd                                         ; $76fb: $fd
	add  h                                           ; $76fc: $84
	xor  [hl]                                        ; $76fd: $ae
	jp   c, $fb9f                                    ; $76fe: $da $9f $fb

	adc  e                                           ; $7701: $8b
	cp   b                                           ; $7702: $b8
	ld   de, $3166                                   ; $7703: $11 $66 $31
	ld   de, $3833                                   ; $7706: $11 $33 $38
	and  a                                           ; $7709: $a7
	cp   a                                           ; $770a: $bf
	xor  d                                           ; $770b: $aa
	xor  c                                           ; $770c: $a9
	cp   e                                           ; $770d: $bb
	xor  a                                           ; $770e: $af
	db   $fd                                         ; $770f: $fd
	ret                                              ; $7710: $c9


	jp   z, $2541                                    ; $7711: $ca $41 $25

	ld   sp, $2212                                   ; $7714: $31 $12 $22
	dec  [hl]                                        ; $7717: $35
	ld   a, d                                        ; $7718: $7a
	cp   l                                           ; $7719: $bd
	and  l                                           ; $771a: $a5
	xor  a                                           ; $771b: $af
	jp   c, $fbae                                    ; $771c: $da $ae $fb

	cp   d                                           ; $771f: $ba
	ld   a, [$1444]                                  ; $7720: $fa $44 $14
	ld   sp, $1411                                   ; $7723: $31 $11 $14
	ld   b, [hl]                                     ; $7726: $46
	sbc  d                                           ; $7727: $9a
	sbc  b                                           ; $7728: $98
	jp   c, $cb9f                                    ; $7729: $da $9f $cb

	set  7, [hl]                                     ; $772c: $cb $fe
	xor  d                                           ; $772e: $aa
	cp   b                                           ; $772f: $b8
	ld   b, d                                        ; $7730: $42
	inc  [hl]                                        ; $7731: $34
	ld   [hl+], a                                    ; $7732: $22
	ld   de, $5214                                   ; $7733: $11 $14 $52
	ld   a, l                                        ; $7736: $7d
	xor  e                                           ; $7737: $ab
	ei                                               ; $7738: $fb
	sbc  h                                           ; $7739: $9c
	sbc  e                                           ; $773a: $9b
	cp   $df                                         ; $773b: $fe $df
	ld   a, [$5288]                                  ; $773d: $fa $88 $52
	ld   [de], a                                     ; $7740: $12
	inc  d                                           ; $7741: $14
	ld   de, $9714                                   ; $7742: $11 $14 $97
	ld   a, b                                        ; $7745: $78
	xor  a                                           ; $7746: $af
	jp   z, $efb9                                    ; $7747: $ca $b9 $ef

	xor  h                                           ; $774a: $ac
	cp   $a8                                         ; $774b: $fe $a8
	add  [hl]                                        ; $774d: $86
	ld   [hl-], a                                    ; $774e: $32
	inc  bc                                          ; $774f: $03
	ld   hl, $2711                                   ; $7750: $21 $11 $27
	ld   a, c                                        ; $7753: $79
	adc  d                                           ; $7754: $8a
	db   $fd                                         ; $7755: $fd
	halt                                             ; $7756: $76
	rst  $28                                         ; $7757: $ef
	cp   d                                           ; $7758: $ba
	sbc  $f9                                         ; $7759: $de $f9
	ld   a, d                                        ; $775b: $7a
	and  h                                           ; $775c: $a4
	ld   de, $1133                                   ; $775d: $11 $33 $11
	rla                                              ; $7760: $17
	sub  a                                           ; $7761: $97
	ld   e, e                                        ; $7762: $5b
	ei                                               ; $7763: $fb
	call c, $9aac                                    ; $7764: $dc $ac $9a
	xor  $fe                                         ; $7767: $ee $fe
	cp   d                                           ; $7769: $ba
	ld   [hl], l                                     ; $776a: $75
	ld   sp, $1112                                   ; $776b: $31 $12 $11
	ld   de, $983a                                   ; $776e: $11 $3a $98
	xor  c                                           ; $7771: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7772: $cf
	cp   e                                           ; $7773: $bb
	jp   c, $efac                                    ; $7774: $da $ac $ef

	rst  $30                                         ; $7777: $f7
	sub  [hl]                                        ; $7778: $96

Jump_0d8_7779:
	ld   b, d                                        ; $7779: $42
	ld   de, $1123                                   ; $777a: $11 $23 $11
	dec  h                                           ; $777d: $25
	ld   d, [hl]                                     ; $777e: $56
	sbc  e                                           ; $777f: $9b
	rst  $28                                         ; $7780: $ef
	ret  z                                           ; $7781: $c8

	xor  l                                           ; $7782: $ad
	call $fcbf                                       ; $7783: $cd $bf $fc
	sub  $65                                         ; $7786: $d6 $65
	ld   de, $1131                                   ; $7788: $11 $31 $11
	ld   [de], a                                     ; $778b: $12
	sbc  d                                           ; $778c: $9a
	ld   l, e                                        ; $778d: $6b
	db   $ed                                         ; $778e: $ed
	call z, $cfc8                                    ; $778f: $cc $c8 $cf
	db   $dd                                         ; $7792: $dd
	rst  $38                                         ; $7793: $ff
	cp   c                                           ; $7794: $b9
	ld   b, a                                        ; $7795: $47
	ld   sp, $1112                                   ; $7796: $31 $12 $11
	ld   de, $7db8                                   ; $7799: $11 $b8 $7d
	cp   [hl]                                        ; $779c: $be
	db   $fc                                         ; $779d: $fc
	xor  d                                           ; $779e: $aa
	cp   h                                           ; $779f: $bc
	rst  $28                                         ; $77a0: $ef
	rst  $38                                         ; $77a1: $ff
	jp   c, $1155                                    ; $77a2: $da $55 $11

	ld   de, $1111                                   ; $77a5: $11 $11 $11
	ld   l, b                                        ; $77a8: $68

Jump_0d8_77a9:
	ld   a, l                                        ; $77a9: $7d
	db   $fd                                         ; $77aa: $fd
	db   $fc                                         ; $77ab: $fc
	sbc  d                                           ; $77ac: $9a
	cp   e                                           ; $77ad: $bb
	rst  $38                                         ; $77ae: $ff
	rst  $38                                         ; $77af: $ff
	jp   z, $3155                                    ; $77b0: $ca $55 $31

	ld   de, $1111                                   ; $77b3: $11 $11 $11
	ld   l, c                                        ; $77b6: $69
	sbc  e                                           ; $77b7: $9b
	rst  $28                                         ; $77b8: $ef
	cp   $69                                         ; $77b9: $fe $69

Jump_0d8_77bb:
	sbc  a                                           ; $77bb: $9f
	ld   a, [$dbff]                                  ; $77bc: $fa $ff $db
	ld   [hl], $21                                   ; $77bf: $36 $21
	ld   de, $1111                                   ; $77c1: $11 $11 $11
	ld   e, c                                        ; $77c4: $59
	rst  $28                                         ; $77c5: $ef
	db   $dd                                         ; $77c6: $dd
	db   $fc                                         ; $77c7: $fc
	xor  a                                           ; $77c8: $af
	xor  c                                           ; $77c9: $a9
	rst  $38                                         ; $77ca: $ff
	db   $fd                                         ; $77cb: $fd
	xor  l                                           ; $77cc: $ad
	ld   [hl], c                                     ; $77cd: $71
	ld   de, $1111                                   ; $77ce: $11 $11 $11
	inc  de                                          ; $77d1: $13
	ret                                              ; $77d2: $c9


	sbc  l                                           ; $77d3: $9d
	rst  $38                                         ; $77d4: $ff
	cp   b                                           ; $77d5: $b8
	adc  a                                           ; $77d6: $8f
	cp   [hl]                                        ; $77d7: $be
	cp   $fe                                         ; $77d8: $fe $fe
	sbc  d                                           ; $77da: $9a
	ld   [hl], a                                     ; $77db: $77
	ld   de, $1111                                   ; $77dc: $11 $11 $11
	inc  d                                           ; $77df: $14
	cp   l                                           ; $77e0: $bd
	cp   h                                           ; $77e1: $bc
	rst  $38                                         ; $77e2: $ff
	rst  $10                                         ; $77e3: $d7
	adc  e                                           ; $77e4: $8b
	cp   l                                           ; $77e5: $bd
	rst  $38                                         ; $77e6: $ff
	rst  $38                                         ; $77e7: $ff
	and  [hl]                                        ; $77e8: $a6
	add  h                                           ; $77e9: $84
	ld   de, $1111                                   ; $77ea: $11 $11 $11
	ld   d, $db                                      ; $77ed: $16 $db
	rst  $38                                         ; $77ef: $ff
	rst  $38                                         ; $77f0: $ff
	push hl                                          ; $77f1: $e5
	sbc  a                                           ; $77f2: $9f
	sbc  a                                           ; $77f3: $9f
	cp   $fe                                         ; $77f4: $fe $fe
	adc  c                                           ; $77f6: $89
	ld   [hl], c                                     ; $77f7: $71
	ld   de, $1111                                   ; $77f8: $11 $11 $11
	dec  e                                           ; $77fb: $1d
	sbc  h                                           ; $77fc: $9c
	rst  $38                                         ; $77fd: $ff

Call_0d8_77fe:
	cp   $9a                                         ; $77fe: $fe $9a
	reti                                             ; $7800: $d9


	cp   a                                           ; $7801: $bf
	rst  $38                                         ; $7802: $ff
	ld   a, [$61a8]                                  ; $7803: $fa $a8 $61
	ld   de, $1111                                   ; $7806: $11 $11 $11
	ld   l, l                                        ; $7809: $6d
	db   $dd                                         ; $780a: $dd
	rst  $38                                         ; $780b: $ff
	ld   a, [$ac8c]                                  ; $780c: $fa $8c $ac
	adc  $ff                                         ; $780f: $ce $ff
	ld   [$4189], a                                  ; $7811: $ea $89 $41
	ld   de, $1111                                   ; $7814: $11 $11 $11
	call z, $ffff                                    ; $7817: $cc $ff $ff
	rst  $30                                         ; $781a: $f7
	ld   e, h                                        ; $781b: $5c
	xor  e                                           ; $781c: $ab
	rst  $38                                         ; $781d: $ff
	rst  $38                                         ; $781e: $ff
	ret                                              ; $781f: $c9


	and  l                                           ; $7820: $a5
	ld   b, c                                        ; $7821: $41
	ld   de, $1711                                   ; $7822: $11 $11 $17
	call $ffff                                       ; $7825: $cd $ff $ff
	ld   sp, hl                                      ; $7828: $f9
	adc  b                                           ; $7829: $88
	adc  a                                           ; $782a: $8f
	rst  $38                                         ; $782b: $ff
	cp   $ea                                         ; $782c: $fe $ea
	sub  e                                           ; $782e: $93
	ld   de, $1111                                   ; $782f: $11 $11 $11
	dec  e                                           ; $7832: $1d
	rst  JumpTable                                         ; $7833: $df
	rst  $38                                         ; $7834: $ff
	cp   $97                                         ; $7835: $fe $97
	rst  $10                                         ; $7837: $d7
	sbc  a                                           ; $7838: $9f
	rst  $38                                         ; $7839: $ff
	db   $fc                                         ; $783a: $fc
	cp   c                                           ; $783b: $b9
	sub  h                                           ; $783c: $94
	ld   hl, $1111                                   ; $783d: $21 $11 $11
	ld   c, a                                        ; $7840: $4f
	rst  $28                                         ; $7841: $ef
	rst  $38                                         ; $7842: $ff
	db   $fd                                         ; $7843: $fd
	ld   d, [hl]                                     ; $7844: $56
	push de                                          ; $7845: $d5
	cp   a                                           ; $7846: $bf
	rst  $38                                         ; $7847: $ff
	jp   c, Jump_0d8_73aa                            ; $7848: $da $aa $73

	ld   hl, $1111                                   ; $784b: $21 $11 $11
	adc  a                                           ; $784e: $8f
	rst  $38                                         ; $784f: $ff
	rst  $38                                         ; $7850: $ff
	ei                                               ; $7851: $fb
	ld   b, a                                        ; $7852: $47
	sub  h                                           ; $7853: $94
	rst  $38                                         ; $7854: $ff
	rst  $38                                         ; $7855: $ff
	db   $ec                                         ; $7856: $ec
	adc  c                                           ; $7857: $89
	ld   d, h                                        ; $7858: $54
	ld   hl, $1111                                   ; $7859: $21 $11 $11
	cp   a                                           ; $785c: $bf
	rst  $38                                         ; $785d: $ff
	rst  $38                                         ; $785e: $ff
	ld   sp, hl                                      ; $785f: $f9
	jr   @+$58                                       ; $7860: $18 $56

	rst  $38                                         ; $7862: $ff
	rst  $38                                         ; $7863: $ff
	db   $db                                         ; $7864: $db
	xor  c                                           ; $7865: $a9
	ld   d, [hl]                                     ; $7866: $56
	ld   sp, $1111                                   ; $7867: $31 $11 $11
	rst  $38                                         ; $786a: $ff
	rst  $38                                         ; $786b: $ff
	rst  $38                                         ; $786c: $ff
	rst  $30                                         ; $786d: $f7
	jr   jr_0d8_78d3                                 ; $786e: $18 $63

	rst  $38                                         ; $7870: $ff
	rst  $38                                         ; $7871: $ff
	res  5, c                                        ; $7872: $cb $a9
	ld   d, a                                        ; $7874: $57
	ld   d, c                                        ; $7875: $51
	ld   de, $af11                                   ; $7876: $11 $11 $af
	rst  $28                                         ; $7879: $ef
	rst  $38                                         ; $787a: $ff
	or   $46                                         ; $787b: $f6 $46
	ld   d, d                                        ; $787d: $52
	xor  a                                           ; $787e: $af
	rst  $38                                         ; $787f: $ff
	cp   e                                           ; $7880: $bb
	cp   h                                           ; $7881: $bc
	ld   h, a                                        ; $7882: $67
	ld   h, d                                        ; $7883: $62
	ld   de, $1f11                                   ; $7884: $11 $11 $1f
	rst  $38                                         ; $7887: $ff
	rst  $38                                         ; $7888: $ff
	ei                                               ; $7889: $fb
	ld   b, c                                        ; $788a: $41
	sub  h                                           ; $788b: $94
	rra                                              ; $788c: $1f
	rst  $38                                         ; $788d: $ff
	ld   [$b5ad], a                                  ; $788e: $ea $ad $b5
	ld   [hl], a                                     ; $7891: $77
	ld   sp, $1511                                   ; $7892: $31 $11 $15
	rst  $38                                         ; $7895: $ff
	rst  $38                                         ; $7896: $ff
	rst  $38                                         ; $7897: $ff
	ld   h, d                                        ; $7898: $62
	ld   a, [hl+]                                    ; $7899: $2a
	ld   [hl-], a                                    ; $789a: $32
	rst  $38                                         ; $789b: $ff
	db   $fc                                         ; $789c: $fc
	xor  e                                           ; $789d: $ab
	db   $db                                         ; $789e: $db
	ld   d, [hl]                                     ; $789f: $56
	ld   [hl], h                                     ; $78a0: $74
	ld   de, $1f11                                   ; $78a1: $11 $11 $1f
	rst  $38                                         ; $78a4: $ff
	rst  $38                                         ; $78a5: $ff
	ld   hl, sp+$11                                  ; $78a6: $f8 $11
	and  l                                           ; $78a8: $a5
	dec  de                                          ; $78a9: $1b
	rst  $38                                         ; $78aa: $ff
	ld   sp, hl                                      ; $78ab: $f9
	cp   l                                           ; $78ac: $bd
	push hl                                          ; $78ad: $e5
	ld   e, b                                        ; $78ae: $58
	ld   d, c                                        ; $78af: $51
	ld   de, $9f11                                   ; $78b0: $11 $11 $9f
	rst  $38                                         ; $78b3: $ff
	rst  $38                                         ; $78b4: $ff
	or   $11                                         ; $78b5: $f6 $11
	jp   $ff1a                                       ; $78b7: $c3 $1a $ff


	ld   a, [$d5be]                                  ; $78ba: $fa $be $d5
	halt                                             ; $78bd: $76
	ld   d, h                                        ; $78be: $54
	ld   de, $1111                                   ; $78bf: $11 $11 $11
	rst  $38                                         ; $78c2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78c3: $cf
	rst  $38                                         ; $78c4: $ff
	jp   nz, $9118                                   ; $78c5: $c2 $18 $91

	sbc  l                                           ; $78c8: $9d
	rst  $38                                         ; $78c9: $ff
	rst  $10                                         ; $78ca: $d7
	cp   a                                           ; $78cb: $bf
	ld   h, l                                        ; $78cc: $65
	dec  [hl]                                        ; $78cd: $35
	ld   h, h                                        ; $78ce: $64
	ld   de, $1154                                   ; $78cf: $11 $54 $11
	ld   a, [hl-]                                    ; $78d2: $3a

jr_0d8_78d3:
	jp   hl                                          ; $78d3: $e9


	rst  JumpTable                                         ; $78d4: $df
	db   $ec                                         ; $78d5: $ec
	add  a                                           ; $78d6: $87
	ld   a, d                                        ; $78d7: $7a
	halt                                             ; $78d8: $76
	xor  e                                           ; $78d9: $ab
	call c, $a9aa                                    ; $78da: $dc $aa $a9
	ld   h, l                                        ; $78dd: $65
	ld   d, h                                        ; $78de: $54
	ld   d, e                                        ; $78df: $53
	inc  [hl]                                        ; $78e0: $34
	ld   b, h                                        ; $78e1: $44
	inc  [hl]                                        ; $78e2: $34
	ld   d, [hl]                                     ; $78e3: $56
	cp   a                                           ; $78e4: $bf
	call $a9dc                                       ; $78e5: $cd $dc $a9
	halt                                             ; $78e8: $76
	add  a                                           ; $78e9: $87
	xor  d                                           ; $78ea: $aa
	cp   e                                           ; $78eb: $bb
	xor  e                                           ; $78ec: $ab
	sbc  d                                           ; $78ed: $9a
	ld   h, h                                        ; $78ee: $64
	ld   hl, $1111                                   ; $78ef: $21 $11 $11
	rst  JumpTable                                         ; $78f2: $df
	rst  $38                                         ; $78f3: $ff
	rst  $38                                         ; $78f4: $ff
	add  sp, $11                                     ; $78f5: $e8 $11
	add  d                                           ; $78f7: $82
	dec  [hl]                                        ; $78f8: $35
	rst  JumpTable                                         ; $78f9: $df
	rst  $38                                         ; $78fa: $ff
	adc  a                                           ; $78fb: $8f
	cp   c                                           ; $78fc: $b9
	ld   b, e                                        ; $78fd: $43
	inc  [hl]                                        ; $78fe: $34
	ld   b, c                                        ; $78ff: $41
	ld   l, c                                        ; $7900: $69
	cp   d                                           ; $7901: $ba
	set  1, l                                        ; $7902: $cb $cd
	sub  a                                           ; $7904: $97
	ld   [hl], a                                     ; $7905: $77
	ld   h, a                                        ; $7906: $67
	ld   h, a                                        ; $7907: $67
	sbc  c                                           ; $7908: $99
	adc  c                                           ; $7909: $89
	sbc  b                                           ; $790a: $98
	halt                                             ; $790b: $76
	ld   d, l                                        ; $790c: $55
	ld   d, l                                        ; $790d: $55
	ld   d, a                                        ; $790e: $57
	sbc  d                                           ; $790f: $9a
	sbc  c                                           ; $7910: $99
	sbc  d                                           ; $7911: $9a
	xor  b                                           ; $7912: $a8
	adc  c                                           ; $7913: $89
	adc  c                                           ; $7914: $89
	sbc  b                                           ; $7915: $98
	adc  b                                           ; $7916: $88
	adc  b                                           ; $7917: $88
	add  a                                           ; $7918: $87
	ld   h, [hl]                                     ; $7919: $66
	ld   h, [hl]                                     ; $791a: $66
	ld   h, a                                        ; $791b: $67
	adc  c                                           ; $791c: $89
	sbc  b                                           ; $791d: $98
	ld   [hl], a                                     ; $791e: $77
	halt                                             ; $791f: $76
	ld   a, b                                        ; $7920: $78
	sbc  c                                           ; $7921: $99
	sbc  d                                           ; $7922: $9a
	xor  d                                           ; $7923: $aa
	sbc  b                                           ; $7924: $98
	add  a                                           ; $7925: $87
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	ld   [hl], a                                     ; $7929: $77
	halt                                             ; $792a: $76
	ld   h, [hl]                                     ; $792b: $66
	ld   h, a                                        ; $792c: $67
	ld   [hl], a                                     ; $792d: $77
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  c                                           ; $7930: $89
	sbc  d                                           ; $7931: $9a
	sbc  c                                           ; $7932: $99
	xor  d                                           ; $7933: $aa
	sbc  c                                           ; $7934: $99
	sbc  c                                           ; $7935: $99
	adc  b                                           ; $7936: $88
	ld   [hl], a                                     ; $7937: $77
	ld   [hl], a                                     ; $7938: $77
	halt                                             ; $7939: $76
	ld   a, c                                        ; $793a: $79
	add  a                                           ; $793b: $87
	ld   d, e                                        ; $793c: $53
	dec  d                                           ; $793d: $15
	jp   hl                                          ; $793e: $e9


	adc  e                                           ; $793f: $8b
	call z, Call_0d8_48a6                            ; $7940: $cc $a6 $48
	add  l                                           ; $7943: $85
	ld   e, b                                        ; $7944: $58
	sbc  d                                           ; $7945: $9a
	and  a                                           ; $7946: $a7
	xor  e                                           ; $7947: $ab
	xor  b                                           ; $7948: $a8
	ld   a, b                                        ; $7949: $78
	adc  b                                           ; $794a: $88
	ld   [hl], a                                     ; $794b: $77
	adc  d                                           ; $794c: $8a
	sbc  b                                           ; $794d: $98
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	ld   [hl], a                                     ; $7950: $77
	sbc  c                                           ; $7951: $99
	add  a                                           ; $7952: $87
	adc  b                                           ; $7953: $88
	sbc  b                                           ; $7954: $98
	ld   [hl], a                                     ; $7955: $77
	adc  c                                           ; $7956: $89
	adc  b                                           ; $7957: $88
	adc  c                                           ; $7958: $89
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	ld   [hl], a                                     ; $795c: $77
	ld   a, b                                        ; $795d: $78
	add  a                                           ; $795e: $87
	adc  b                                           ; $795f: $88
	sbc  c                                           ; $7960: $99
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	ld   a, b                                        ; $7965: $78
	adc  b                                           ; $7966: $88
	adc  b                                           ; $7967: $88
	sbc  b                                           ; $7968: $98
	adc  b                                           ; $7969: $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	sbc  b                                           ; $796e: $98
	adc  c                                           ; $796f: $89
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

Jump_0d8_7987:
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

Call_0d8_7998:
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	ld   de, $1111                                   ; $799c: $11 $11 $11
	ld   de, $1111                                   ; $799f: $11 $11 $11
	ld   de, $1111                                   ; $79a2: $11 $11 $11
	ld   de, $1111                                   ; $79a5: $11 $11 $11
	ld   de, $1111                                   ; $79a8: $11 $11 $11
	ld   de, $1111                                   ; $79ab: $11 $11 $11
	ld   de, $1111                                   ; $79ae: $11 $11 $11
	ld   de, $1111                                   ; $79b1: $11 $11 $11
	ld   de, $1111                                   ; $79b4: $11 $11 $11
	ld   de, $1111                                   ; $79b7: $11 $11 $11
	ld   de, $1111                                   ; $79ba: $11 $11 $11
	ld   de, $1111                                   ; $79bd: $11 $11 $11
	ld   de, $1111                                   ; $79c0: $11 $11 $11
	ld   de, $1111                                   ; $79c3: $11 $11 $11
	nop                                              ; $79c6: $00
	ld   c, b                                        ; $79c7: $48
	ld   de, $1111                                   ; $79c8: $11 $11 $11
	ld   de, $1111                                   ; $79cb: $11 $11 $11
	ld   de, $1111                                   ; $79ce: $11 $11 $11
	ld   de, $5413                                   ; $79d1: $11 $13 $54
	ld   d, h                                        ; $79d4: $54
	ld   d, h                                        ; $79d5: $54
	ld   b, c                                        ; $79d6: $41
	rra                                              ; $79d7: $1f
	rst  $38                                         ; $79d8: $ff
	pop  af                                          ; $79d9: $f1
	ld   de, $1a11                                   ; $79da: $11 $11 $1a
	ld   hl, $1c11                                   ; $79dd: $21 $11 $1c
	rst  JumpTable                                         ; $79e0: $df
	sbc  h                                           ; $79e1: $9c
	rst  JumpTable                                         ; $79e2: $df
	sub  c                                           ; $79e3: $91
	ld   de, $1111                                   ; $79e4: $11 $11 $11
	ld   de, $1111                                   ; $79e7: $11 $11 $11
	ld   de, $1111                                   ; $79ea: $11 $11 $11
	ld   de, $1111                                   ; $79ed: $11 $11 $11
	ld   de, $5411                                   ; $79f0: $11 $11 $54
	ld   b, h                                        ; $79f3: $44
	ld   a, [de]                                     ; $79f4: $1a
	ld   de, $5454                                   ; $79f5: $11 $54 $54
	ld   h, a                                        ; $79f8: $67
	ld   [hl], d                                     ; $79f9: $72
	ld   de, $1111                                   ; $79fa: $11 $11 $11
	ld   de, $1112                                   ; $79fd: $11 $12 $11
	ld   [de], a                                     ; $7a00: $12
	ld   de, $1111                                   ; $7a01: $11 $11 $11
	ld   h, [hl]                                     ; $7a04: $66
	halt                                             ; $7a05: $76
	ld   a, [$8811]                                  ; $7a06: $fa $11 $88
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
	sbc  b                                           ; $7a1e: $98
	ld   a, b                                        ; $7a1f: $78
	sbc  c                                           ; $7a20: $99
	ld   a, b                                        ; $7a21: $78
	adc  b                                           ; $7a22: $88
	ld   a, b                                        ; $7a23: $78
	sbc  b                                           ; $7a24: $98
	add  a                                           ; $7a25: $87
	ld   a, b                                        ; $7a26: $78
	sbc  c                                           ; $7a27: $99
	ld   [hl], a                                     ; $7a28: $77
	ld   a, c                                        ; $7a29: $79
	sbc  c                                           ; $7a2a: $99
	ld   [hl], a                                     ; $7a2b: $77
	adc  c                                           ; $7a2c: $89
	xor  b                                           ; $7a2d: $a8
	ld   a, c                                        ; $7a2e: $79
	xor  d                                           ; $7a2f: $aa
	halt                                             ; $7a30: $76
	ld   a, b                                        ; $7a31: $78
	adc  b                                           ; $7a32: $88
	add  a                                           ; $7a33: $87
	adc  c                                           ; $7a34: $89
	ld   h, a                                        ; $7a35: $67
	xor  e                                           ; $7a36: $ab
	add  [hl]                                        ; $7a37: $86
	ld   l, c                                        ; $7a38: $69
	xor  e                                           ; $7a39: $ab
	add  a                                           ; $7a3a: $87
	adc  c                                           ; $7a3b: $89
	sbc  c                                           ; $7a3c: $99
	halt                                             ; $7a3d: $76
	sbc  c                                           ; $7a3e: $99
	add  [hl]                                        ; $7a3f: $86
	ld   d, a                                        ; $7a40: $57
	adc  b                                           ; $7a41: $88
	halt                                             ; $7a42: $76
	ld   l, b                                        ; $7a43: $68
	adc  b                                           ; $7a44: $88
	sbc  c                                           ; $7a45: $99
	adc  d                                           ; $7a46: $8a
	add  a                                           ; $7a47: $87
	ld   h, a                                        ; $7a48: $67
	xor  e                                           ; $7a49: $ab
	and  a                                           ; $7a4a: $a7
	ld   h, [hl]                                     ; $7a4b: $66
	ld   l, d                                        ; $7a4c: $6a
	sub  [hl]                                        ; $7a4d: $96
	ld   d, [hl]                                     ; $7a4e: $56
	ld   [hl], a                                     ; $7a4f: $77
	add  a                                           ; $7a50: $87
	ld   a, b                                        ; $7a51: $78
	adc  c                                           ; $7a52: $89
	adc  c                                           ; $7a53: $89
	adc  b                                           ; $7a54: $88
	ld   a, c                                        ; $7a55: $79
	ld   [hl], a                                     ; $7a56: $77
	xor  c                                           ; $7a57: $a9
	ld   a, b                                        ; $7a58: $78
	add  [hl]                                        ; $7a59: $86
	ld   a, c                                        ; $7a5a: $79
	adc  c                                           ; $7a5b: $89
	sbc  c                                           ; $7a5c: $99
	cp   c                                           ; $7a5d: $b9
	ld   h, [hl]                                     ; $7a5e: $66
	adc  d                                           ; $7a5f: $8a
	add  [hl]                                        ; $7a60: $86
	ld   h, a                                        ; $7a61: $67
	ld   l, b                                        ; $7a62: $68
	sbc  b                                           ; $7a63: $98
	add  a                                           ; $7a64: $87
	ld   a, d                                        ; $7a65: $7a
	and  a                                           ; $7a66: $a7
	ld   a, c                                        ; $7a67: $79
	sbc  b                                           ; $7a68: $98
	adc  b                                           ; $7a69: $88
	ld   a, b                                        ; $7a6a: $78
	add  a                                           ; $7a6b: $87
	ld   [hl], a                                     ; $7a6c: $77
	ld   h, a                                        ; $7a6d: $67
	add  a                                           ; $7a6e: $87
	adc  b                                           ; $7a6f: $88
	ld   a, c                                        ; $7a70: $79
	sbc  c                                           ; $7a71: $99
	and  a                                           ; $7a72: $a7
	ld   e, b                                        ; $7a73: $58
	cp   c                                           ; $7a74: $b9
	halt                                             ; $7a75: $76
	halt                                             ; $7a76: $76
	ld   a, b                                        ; $7a77: $78
	add  [hl]                                        ; $7a78: $86
	ld   e, d                                        ; $7a79: $5a
	and  a                                           ; $7a7a: $a7
	adc  c                                           ; $7a7b: $89
	sbc  c                                           ; $7a7c: $99
	ld   h, a                                        ; $7a7d: $67
	cp   c                                           ; $7a7e: $b9
	ld   b, [hl]                                     ; $7a7f: $46
	ld   a, b                                        ; $7a80: $78
	xor  d                                           ; $7a81: $aa
	ld   h, a                                        ; $7a82: $67
	cp   c                                           ; $7a83: $b9
	ld   [hl], a                                     ; $7a84: $77
	ld   a, c                                        ; $7a85: $79
	and  h                                           ; $7a86: $a4
	rla                                              ; $7a87: $17
	or   a                                           ; $7a88: $b7
	ld   b, l                                        ; $7a89: $45
	ld   d, [hl]                                     ; $7a8a: $56
	xor  c                                           ; $7a8b: $a9
	ld   h, [hl]                                     ; $7a8c: $66
	adc  c                                           ; $7a8d: $89
	ld   e, b                                        ; $7a8e: $58
	reti                                             ; $7a8f: $d9


	ld   a, c                                        ; $7a90: $79
	cp   b                                           ; $7a91: $b8
	call $a9ab                                       ; $7a92: $cd $ab $a9
	ld   a, h                                        ; $7a95: $7c
	add  sp, -$78                                    ; $7a96: $e8 $88
	add  [hl]                                        ; $7a98: $86
	xor  e                                           ; $7a99: $ab
	ld   d, h                                        ; $7a9a: $54
	ld   a, b                                        ; $7a9b: $78
	ld   h, [hl]                                     ; $7a9c: $66
	ld   b, c                                        ; $7a9d: $41
	ld   d, l                                        ; $7a9e: $55
	ld   hl, $2711                                   ; $7a9f: $21 $11 $27
	adc  d                                           ; $7aa2: $8a
	call $ebff                                       ; $7aa3: $cd $ff $eb
	cp   h                                           ; $7aa6: $bc
	cp   [hl]                                        ; $7aa7: $be
	xor  e                                           ; $7aa8: $ab
	ld   a, c                                        ; $7aa9: $79
	sub  [hl]                                        ; $7aaa: $96
	sbc  c                                           ; $7aab: $99
	jp   z, Jump_0d8_77bb                            ; $7aac: $ca $bb $77

	sub  a                                           ; $7aaf: $97
	ld   d, h                                        ; $7ab0: $54
	inc  [hl]                                        ; $7ab1: $34
	ld   b, h                                        ; $7ab2: $44
	ld   hl, $2621                                   ; $7ab3: $21 $21 $26
	ld   b, l                                        ; $7ab6: $45
	adc  h                                           ; $7ab7: $8c
	cp   $ec                                         ; $7ab8: $fe $ec
	sbc  c                                           ; $7aba: $99
	call z, $c8bd                                    ; $7abb: $cc $bd $c8
	xor  h                                           ; $7abe: $ac
	cp   d                                           ; $7abf: $ba
	xor  b                                           ; $7ac0: $a8
	sbc  h                                           ; $7ac1: $9c
	cp   c                                           ; $7ac2: $b9
	halt                                             ; $7ac3: $76
	ld   h, [hl]                                     ; $7ac4: $66
	ld   h, l                                        ; $7ac5: $65
	ld   b, l                                        ; $7ac6: $45
	ld   b, e                                        ; $7ac7: $43
	ld   de, $4211                                   ; $7ac8: $11 $11 $42
	ld   e, h                                        ; $7acb: $5c
	call $daef                                       ; $7acc: $cd $ef $da
	adc  c                                           ; $7acf: $89
	set  5, h                                        ; $7ad0: $cb $ec
	adc  e                                           ; $7ad2: $8b
	sbc  e                                           ; $7ad3: $9b
	res  7, d                                        ; $7ad4: $cb $ba
	adc  d                                           ; $7ad6: $8a
	cp   c                                           ; $7ad7: $b9
	ld   h, e                                        ; $7ad8: $63
	inc  [hl]                                        ; $7ad9: $34
	ld   d, l                                        ; $7ada: $55
	ld   d, d                                        ; $7adb: $52
	ld   [hl+], a                                    ; $7adc: $22
	ld   de, $4d31                                   ; $7add: $11 $31 $4d
	rst  $28                                         ; $7ae0: $ef
	ld   a, [$c9cc]                                  ; $7ae1: $fa $cc $c9
	adc  d                                           ; $7ae4: $8a
	cp   [hl]                                        ; $7ae5: $be
	db   $ec                                         ; $7ae6: $ec
	and  a                                           ; $7ae7: $a7
	cp   c                                           ; $7ae8: $b9
	cp   e                                           ; $7ae9: $bb
	adc  $74                                         ; $7aea: $ce $74
	ld   b, d                                        ; $7aec: $42
	ld   [hl], $31                                   ; $7aed: $36 $31
	ld   [hl-], a                                    ; $7aef: $32
	ld   hl, $1811                                   ; $7af0: $21 $11 $18
	rst  $38                                         ; $7af3: $ff
	rst  $38                                         ; $7af4: $ff
	sub  $8b                                         ; $7af5: $d6 $8b
	ld   l, c                                        ; $7af7: $69
	call c, $a7de                                    ; $7af8: $dc $de $a7
	adc  h                                           ; $7afb: $8c
	db   $dd                                         ; $7afc: $dd
	db   $eb                                         ; $7afd: $eb
	ld   a, b                                        ; $7afe: $78
	ld   h, e                                        ; $7aff: $63
	ld   b, l                                        ; $7b00: $45
	ld   [hl-], a                                    ; $7b01: $32
	ld   d, c                                        ; $7b02: $51
	ld   de, $1411                                   ; $7b03: $11 $11 $14
	rst  $38                                         ; $7b06: $ff
	rst  $38                                         ; $7b07: $ff
	add  sp, $37                                     ; $7b08: $e8 $37
	adc  b                                           ; $7b0a: $88
	call z, $c9bd                                    ; $7b0b: $cc $bd $c9
	xor  e                                           ; $7b0e: $ab
	db   $dd                                         ; $7b0f: $dd
	rst  JumpTable                                         ; $7b10: $df
	and  a                                           ; $7b11: $a7
	ld   sp, $5545                                   ; $7b12: $31 $45 $55
	ld   hl, $1111                                   ; $7b15: $21 $11 $11
	ld   [de], a                                     ; $7b18: $12
	rst  $38                                         ; $7b19: $ff
	rst  $38                                         ; $7b1a: $ff
	db   $e3                                         ; $7b1b: $e3
	inc  de                                          ; $7b1c: $13
	sbc  c                                           ; $7b1d: $99
	xor  $ab                                         ; $7b1e: $ee $ab
	ret                                              ; $7b20: $c9


	sbc  d                                           ; $7b21: $9a
	call $d8ff                                       ; $7b22: $cd $ff $d8
	ld   sp, $5412                                   ; $7b25: $31 $12 $54
	ld   b, d                                        ; $7b28: $42
	ld   de, $1911                                   ; $7b29: $11 $11 $19
	rst  $38                                         ; $7b2c: $ff
	rst  $38                                         ; $7b2d: $ff
	ld   sp, $fa15                                   ; $7b2e: $31 $15 $fa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b31: $cf
	adc  e                                           ; $7b32: $8b
	ld   [$ef5b], a                                  ; $7b33: $ea $5b $ef
	rst  $38                                         ; $7b36: $ff
	ld   [hl], c                                     ; $7b37: $71
	ld   de, $9526                                   ; $7b38: $11 $26 $95
	ld   de, $1111                                   ; $7b3b: $11 $11 $11
	rst  $28                                         ; $7b3e: $ef
	rst  $38                                         ; $7b3f: $ff
	pop  af                                          ; $7b40: $f1
	ld   de, $3a9f                                   ; $7b41: $11 $9f $3a
	cp   d                                           ; $7b44: $ba
	rst  $38                                         ; $7b45: $ff
	jp   nc, $bf8a                                   ; $7b46: $d2 $8a $bf

	ld   sp, hl                                      ; $7b49: $f9
	ld   sp, $ab15                                   ; $7b4a: $31 $15 $ab
	ld   b, c                                        ; $7b4d: $41
	ld   de, $1f11                                   ; $7b4e: $11 $11 $1f
	rst  $38                                         ; $7b51: $ff
	rst  $38                                         ; $7b52: $ff
	ld   de, $e215                                   ; $7b53: $11 $15 $e2
	db   $ec                                         ; $7b56: $ec
	adc  a                                           ; $7b57: $8f
	rst  $38                                         ; $7b58: $ff
	dec  [hl]                                        ; $7b59: $35
	halt                                             ; $7b5a: $76
	rst  $38                                         ; $7b5b: $ff
	ld   a, [$1711]                                  ; $7b5c: $fa $11 $17
	rst  $38                                         ; $7b5f: $ff
	or   e                                           ; $7b60: $b3
	ld   de, $1111                                   ; $7b61: $11 $11 $11
	rst  $38                                         ; $7b64: $ff
	rst  $38                                         ; $7b65: $ff
	pop  af                                          ; $7b66: $f1
	ld   de, $7f6f                                   ; $7b67: $11 $6f $7f
	ld   [$e1ff], a                                  ; $7b6a: $ea $ff $e1
	dec  d                                           ; $7b6d: $15
	ld   a, a                                        ; $7b6e: $7f
	rst  $38                                         ; $7b6f: $ff
	ld   [hl], c                                     ; $7b70: $71
	ld   de, $f9af                                   ; $7b71: $11 $af $f9
	ld   de, $1111                                   ; $7b74: $11 $11 $11
	rst  $38                                         ; $7b77: $ff
	rst  $38                                         ; $7b78: $ff
	sub  c                                           ; $7b79: $91
	ld   de, $7d8f                                   ; $7b7a: $11 $8f $7d
	cp   l                                           ; $7b7d: $bd
	rst  $38                                         ; $7b7e: $ff
	and  c                                           ; $7b7f: $a1
	ld   [de], a                                     ; $7b80: $12
	ld   a, a                                        ; $7b81: $7f
	rst  $38                                         ; $7b82: $ff
	or   c                                           ; $7b83: $b1
	ld   de, $ff9f                                   ; $7b84: $11 $9f $ff
	ld   sp, $1111                                   ; $7b87: $31 $11 $11
	cpl                                              ; $7b8a: $2f
	rst  $38                                         ; $7b8b: $ff
	pop  af                                          ; $7b8c: $f1
	ld   de, $de19                                   ; $7b8d: $11 $19 $de
	ld   hl, sp-$11                                  ; $7b90: $f8 $ef
	db   $e4                                         ; $7b92: $e4
	ld   de, $ff1a                                   ; $7b93: $11 $1a $ff
	rst  $38                                         ; $7b96: $ff
	ld   de, rAUD1LEN                                   ; $7b97: $11 $11 $ff
	cp   $11                                         ; $7b9a: $fe $11
	ld   de, $8f11                                   ; $7b9c: $11 $11 $8f
	rst  $38                                         ; $7b9f: $ff
	ldh  a, [c]                                      ; $7ba0: $f2
	ld   de, $ff17                                   ; $7ba1: $11 $17 $ff
	ld   sp, hl                                      ; $7ba4: $f9
	cp   a                                           ; $7ba5: $bf
	sub  e                                           ; $7ba6: $93
	ld   de, $ff1b                                   ; $7ba7: $11 $1b $ff
	rst  $38                                         ; $7baa: $ff
	ld   de, rAUD1LEN                                   ; $7bab: $11 $11 $ff
	ld   hl, sp+$11                                  ; $7bae: $f8 $11
	ld   de, $ff46                                   ; $7bb0: $11 $46 $ff
	rst  $38                                         ; $7bb3: $ff
	pop  af                                          ; $7bb4: $f1
	ld   de, $ff1c                                   ; $7bb5: $11 $1c $ff
	ld   a, [$41d9]                                  ; $7bb8: $fa $d9 $41
	ld   de, $ff4f                                   ; $7bbb: $11 $4f $ff
	db   $fc                                         ; $7bbe: $fc
	ld   de, $ff19                                   ; $7bbf: $11 $19 $ff
	pop  af                                          ; $7bc2: $f1
	ld   de, $3e11                                   ; $7bc3: $11 $11 $3e
	rst  $38                                         ; $7bc6: $ff
	rst  $38                                         ; $7bc7: $ff
	ld   de, $6f11                                   ; $7bc8: $11 $11 $6f
	rst  $38                                         ; $7bcb: $ff
	call c, $21b4                                    ; $7bcc: $dc $b4 $21
	inc  d                                           ; $7bcf: $14
	rst  JumpTable                                         ; $7bd0: $df
	rst  $38                                         ; $7bd1: $ff
	pop  af                                          ; $7bd2: $f1
	ld   de, $ff4f                                   ; $7bd3: $11 $4f $ff
	ld   hl, $1211                                   ; $7bd6: $21 $11 $12
	cp   a                                           ; $7bd9: $bf
	rst  $38                                         ; $7bda: $ff
	di                                               ; $7bdb: $f3
	ld   de, rAUD1HIGH                                   ; $7bdc: $11 $14 $ff
	db   $fd                                         ; $7bdf: $fd
	cp   e                                           ; $7be0: $bb
	ld   sp, $4d11                                   ; $7be1: $31 $11 $4d
	rst  $38                                         ; $7be4: $ff
	rst  $38                                         ; $7be5: $ff
	ld   de, $ff16                                   ; $7be6: $11 $16 $ff
	pop  af                                          ; $7be9: $f1
	ld   de, $1f11                                   ; $7bea: $11 $11 $1f
	rst  $38                                         ; $7bed: $ff
	rst  $38                                         ; $7bee: $ff
	ld   de, $af11                                   ; $7bef: $11 $11 $af
	rst  $38                                         ; $7bf2: $ff
	sbc  h                                           ; $7bf3: $9c
	sub  c                                           ; $7bf4: $91
	ld   de, $ff28                                   ; $7bf5: $11 $28 $ff
	rst  $38                                         ; $7bf8: $ff
	add  c                                           ; $7bf9: $81
	ld   de, $ffff                                   ; $7bfa: $11 $ff $ff
	ld   de, $1711                                   ; $7bfd: $11 $11 $17
	rst  $38                                         ; $7c00: $ff
	rst  $38                                         ; $7c01: $ff
	add  c                                           ; $7c02: $81
	ld   de, $ff3f                                   ; $7c03: $11 $3f $ff
	reti                                             ; $7c06: $d9


	jp   nz, $1711                                   ; $7c07: $c2 $11 $17

	rst  $38                                         ; $7c0a: $ff
	rst  $38                                         ; $7c0b: $ff
	and  c                                           ; $7c0c: $a1
	ld   de, $ffdf                                   ; $7c0d: $11 $df $ff
	ld   de, $1711                                   ; $7c10: $11 $11 $17
	rst  $38                                         ; $7c13: $ff
	rst  $38                                         ; $7c14: $ff
	ld   sp, $7f11                                   ; $7c15: $31 $11 $7f
	rst  $38                                         ; $7c18: $ff
	xor  d                                           ; $7c19: $aa
	pop  de                                          ; $7c1a: $d1
	ld   de, $ff3b                                   ; $7c1b: $11 $3b $ff
	rst  $38                                         ; $7c1e: $ff
	ld   de, rAUD1LOW                                   ; $7c1f: $11 $13 $ff
	db   $f4                                         ; $7c22: $f4
	ld   de, $1f11                                   ; $7c23: $11 $11 $1f
	rst  $38                                         ; $7c26: $ff
	db   $fc                                         ; $7c27: $fc
	ld   de, rAUD1HIGH                                   ; $7c28: $11 $14 $ff
	cp   $5e                                         ; $7c2b: $fe $5e
	ld   sp, $bf23                                   ; $7c2d: $31 $23 $bf
	rst  $38                                         ; $7c30: $ff
	pop  af                                          ; $7c31: $f1
	ld   de, $ff4f                                   ; $7c32: $11 $4f $ff
	ld   sp, $1211                                   ; $7c35: $31 $11 $12
	rst  $38                                         ; $7c38: $ff
	rst  $38                                         ; $7c39: $ff
	ld   hl, $bf11                                   ; $7c3a: $21 $11 $bf
	rst  $38                                         ; $7c3d: $ff
	adc  c                                           ; $7c3e: $89
	pop  af                                          ; $7c3f: $f1
	ld   de, $ff3f                                   ; $7c40: $11 $3f $ff
	ld   hl, sp+$11                                  ; $7c43: $f8 $11
	dec  de                                          ; $7c45: $1b
	rst  $38                                         ; $7c46: $ff
	pop  hl                                          ; $7c47: $e1
	ld   de, rAUD1LEN                                   ; $7c48: $11 $11 $ff
	rst  $38                                         ; $7c4b: $ff
	pop  de                                          ; $7c4c: $d1
	ld   de, $df6f                                   ; $7c4d: $11 $6f $df
	push hl                                          ; $7c50: $e5
	rst  $30                                         ; $7c51: $f7
	ld   de, $ff3b                                   ; $7c52: $11 $3b $ff
	ld   a, [$1711]                                  ; $7c55: $fa $11 $17
	rst  $38                                         ; $7c58: $ff
	pop  af                                          ; $7c59: $f1
	ld   de, rAUD1LEN                                   ; $7c5a: $11 $11 $ff
	db   $fc                                         ; $7c5d: $fc
	ld   hl, $df17                                   ; $7c5e: $21 $17 $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c61: $cf
	ld   a, c                                        ; $7c62: $79
	pop  af                                          ; $7c63: $f1
	ld   [de], a                                     ; $7c64: $12
	cpl                                              ; $7c65: $2f
	rst  $38                                         ; $7c66: $ff
	pop  af                                          ; $7c67: $f1
	ld   de, $ff1f                                   ; $7c68: $11 $1f $ff
	ld   b, c                                        ; $7c6b: $41
	ld   de, $ff1f                                   ; $7c6c: $11 $1f $ff
	or   l                                           ; $7c6f: $b5
	ld   de, $fc8d                                   ; $7c70: $11 $8d $fc
	ld   a, [$118f]                                  ; $7c73: $fa $8f $11
	ld   de, $ffff                                   ; $7c76: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7c79: $11 $11 $ff
	di                                               ; $7c7c: $f3
	ld   de, $ff18                                   ; $7c7d: $11 $18 $ff
	db   $db                                         ; $7c80: $db
	ld   de, $fc5e                                   ; $7c81: $11 $5e $fc
	xor  h                                           ; $7c84: $ac
	ld   e, a                                        ; $7c85: $5f
	pop  de                                          ; $7c86: $d1
	ld   de, $ff9f                                   ; $7c87: $11 $9f $ff
	ld   [hl], c                                     ; $7c8a: $71
	ld   de, $d37d                                   ; $7c8b: $11 $7d $d3
	ld   de, $ff1f                                   ; $7c8e: $11 $1f $ff
	sub  c                                           ; $7c91: $91
	ld   de, $fbcf                                   ; $7c92: $11 $cf $fb
	di                                               ; $7c95: $f3
	cpl                                              ; $7c96: $2f
	ld   hl, $ff6a                                   ; $7c97: $21 $6a $ff
	ld   sp, hl                                      ; $7c9a: $f9
	ld   de, $af11                                   ; $7c9b: $11 $11 $af
	ld   h, c                                        ; $7c9e: $61
	ld   de, $f8ff                                   ; $7c9f: $11 $ff $f8
	ld   de, $ff1d                                   ; $7ca2: $11 $1d $ff
	sbc  [hl]                                        ; $7ca5: $9e
	rla                                              ; $7ca6: $17
	pop  af                                          ; $7ca7: $f1
	dec  d                                           ; $7ca8: $15
	cp   a                                           ; $7ca9: $bf
	rst  $38                                         ; $7caa: $ff
	ld   d, c                                        ; $7cab: $51
	ld   de, $812a                                   ; $7cac: $11 $2a $81
	ld   de, $f9ff                                   ; $7caf: $11 $ff $f9
	ld   de, $ff1f                                   ; $7cb2: $11 $1f $ff
	xor  d                                           ; $7cb5: $aa
	dec  de                                          ; $7cb6: $1b
	pop  af                                          ; $7cb7: $f1
	ld   d, $ff                                      ; $7cb8: $16 $ff
	cp   $11                                         ; $7cba: $fe $11
	ld   de, $1117                                   ; $7cbc: $11 $17 $11
	rra                                              ; $7cbf: $1f
	rst  $38                                         ; $7cc0: $ff
	sub  c                                           ; $7cc1: $91
	ld   de, $ffff                                   ; $7cc2: $11 $ff $ff
	sub  c                                           ; $7cc5: $91
	db   $f4                                         ; $7cc6: $f4
	inc  de                                          ; $7cc7: $13
	xor  a                                           ; $7cc8: $af
	rst  $38                                         ; $7cc9: $ff
	sub  c                                           ; $7cca: $91
	ld   de, $1111                                   ; $7ccb: $11 $11 $11
	rst  $38                                         ; $7cce: $ff
	db   $fd                                         ; $7ccf: $fd
	ld   hl, $ff15                                   ; $7cd0: $21 $15 $ff
	cp   a                                           ; $7cd3: $bf
	ld   a, c                                        ; $7cd4: $79
	pop  af                                          ; $7cd5: $f1
	ld   de, $ffbf                                   ; $7cd6: $11 $bf $ff
	and  c                                           ; $7cd9: $a1
	ld   de, $1411                                   ; $7cda: $11 $11 $14
	rst  $38                                         ; $7cdd: $ff
	ld   hl, sp+$11                                  ; $7cde: $f8 $11
	dec  e                                           ; $7ce0: $1d
	db   $fd                                         ; $7ce1: $fd
	db   $ec                                         ; $7ce2: $ec

jr_0d8_7ce3:
	ld   a, a                                        ; $7ce3: $7f
	ld   h, c                                        ; $7ce4: $61
	ld   d, $ff                                      ; $7ce5: $16 $ff
	db   $fd                                         ; $7ce7: $fd
	ld   sp, $1111                                   ; $7ce8: $31 $11 $11
	rst  $38                                         ; $7ceb: $ff
	ld   a, [$1681]                                  ; $7cec: $fa $81 $16
	cp   $9f                                         ; $7cef: $fe $9f
	ld   a, e                                        ; $7cf1: $7b
	pop  af                                          ; $7cf2: $f1
	ld   [de], a                                     ; $7cf3: $12
	ld   a, a                                        ; $7cf4: $7f
	rst  $38                                         ; $7cf5: $ff
	sub  c                                           ; $7cf6: $91
	ld   de, rAUD1LEN                                   ; $7cf7: $11 $11 $ff
	ld   hl, sp+$31                                  ; $7cfa: $f8 $31
	dec  de                                          ; $7cfc: $1b
	rst  $20                                         ; $7cfd: $e7
	cp   a                                           ; $7cfe: $bf
	cp   a                                           ; $7cff: $bf
	add  c                                           ; $7d00: $81
	inc  h                                           ; $7d01: $24
	ld   a, l                                        ; $7d02: $7d
	jp   hl                                          ; $7d03: $e9


	ld   hl, $ef11                                   ; $7d04: $21 $11 $ef
	rst  $38                                         ; $7d07: $ff
	ld   h, c                                        ; $7d08: $61
	jr   jr_0d8_7ce3                                 ; $7d09: $18 $d8

	ld   a, a                                        ; $7d0b: $7f
	cp   a                                           ; $7d0c: $bf
	ldh  a, [c]                                      ; $7d0d: $f2
	ld   [de], a                                     ; $7d0e: $12
	ld   l, e                                        ; $7d0f: $6b
	or   [hl]                                        ; $7d10: $b6
	ld   hl, rAUD1LEN                                   ; $7d11: $21 $11 $ff
	ld   hl, sp+$11                                  ; $7d14: $f8 $11
	ld   a, l                                        ; $7d16: $7d
	or   l                                           ; $7d17: $b5
	jp   c, Jump_0d8_62df                            ; $7d18: $da $df $62

	dec  b                                           ; $7d1b: $05
	adc  c                                           ; $7d1c: $89
	ld   d, c                                        ; $7d1d: $51
	ld   de, $fbff                                   ; $7d1e: $11 $ff $fb
	ld   sp, $a33c                                   ; $7d21: $31 $3c $a3
	adc  h                                           ; $7d24: $8c
	sbc  a                                           ; $7d25: $9f
	call nc, Call_0d8_4522                           ; $7d26: $d4 $22 $45
	ld   sp, rAUD1LEN                                   ; $7d29: $31 $11 $ff
	or   $11                                         ; $7d2c: $f6 $11
	ld   l, e                                        ; $7d2e: $6b
	add  h                                           ; $7d2f: $84
	db   $ec                                         ; $7d30: $ec
	rst  JumpTable                                         ; $7d31: $df
	ld   h, c                                        ; $7d32: $61
	ld   [de], a                                     ; $7d33: $12
	ld   h, l                                        ; $7d34: $65
	ld   de, $ff1f                                   ; $7d35: $11 $1f $ff
	sub  c                                           ; $7d38: $91
	inc  d                                           ; $7d39: $14
	sbc  c                                           ; $7d3a: $99
	ld   a, a                                        ; $7d3b: $7f
	cp   l                                           ; $7d3c: $bd
	rst  $30                                         ; $7d3d: $f7
	ld   hl, $1111                                   ; $7d3e: $21 $11 $11
	rra                                              ; $7d41: $1f
	rst  $38                                         ; $7d42: $ff
	db   $d3                                         ; $7d43: $d3
	inc  de                                          ; $7d44: $13
	ld   h, l                                        ; $7d45: $65
	ld   c, a                                        ; $7d46: $4f
	db   $ec                                         ; $7d47: $ec
	ld   a, [$1141]                                  ; $7d48: $fa $41 $11
	ld   de, $ff6f                                   ; $7d4b: $11 $6f $ff
	ret                                              ; $7d4e: $c9


	ld   d, d                                        ; $7d4f: $52
	ld   sp, $bf6c                                   ; $7d50: $31 $6c $bf
	ld   hl, sp+$41                                  ; $7d53: $f8 $41
	ld   de, $ff1b                                   ; $7d55: $11 $1b $ff
	db   $fd                                         ; $7d58: $fd
	sub  a                                           ; $7d59: $97
	ld   sp, $ce16                                   ; $7d5a: $31 $16 $ce
	db   $fd                                         ; $7d5d: $fd
	sub  d                                           ; $7d5e: $92
	ld   de, rAUD1LEN                                   ; $7d5f: $11 $11 $ff
	rst  $38                                         ; $7d62: $ff
	sbc  $72                                         ; $7d63: $de $72
	inc  de                                          ; $7d65: $13
	set  7, l                                        ; $7d66: $cb $fd
	add  e                                           ; $7d68: $83
	ld   de, rAUD1LEN                                   ; $7d69: $11 $11 $ff
	rst  $38                                         ; $7d6c: $ff
	db   $dd                                         ; $7d6d: $dd
	sub  h                                           ; $7d6e: $94
	ld   de, $ffbc                                   ; $7d6f: $11 $bc $ff
	sub  e                                           ; $7d72: $93
	ld   de, rAUD1LEN                                   ; $7d73: $11 $11 $ff
	rst  $38                                         ; $7d76: $ff
	xor  $a4                                         ; $7d77: $ee $a4
	ld   de, $ef9a                                   ; $7d79: $11 $9a $ef
	and  [hl]                                        ; $7d7c: $a6
	ld   de, rAUD1LEN                                   ; $7d7d: $11 $11 $ff
	rst  $38                                         ; $7d80: $ff
	rst  $28                                         ; $7d81: $ef
	push bc                                          ; $7d82: $c5
	ld   de, $ee78                                   ; $7d83: $11 $78 $ee
	and  l                                           ; $7d86: $a5
	ld   de, $ff15                                   ; $7d87: $11 $15 $ff
	db   $dd                                         ; $7d8a: $dd
	rst  $38                                         ; $7d8b: $ff
	rst  ToBoot                                         ; $7d8c: $c7
	ld   [de], a                                     ; $7d8d: $12
	adc  b                                           ; $7d8e: $88
	call c, $1194                                    ; $7d8f: $dc $94 $11
	rla                                              ; $7d92: $17
	db   $fd                                         ; $7d93: $fd
	db   $dd                                         ; $7d94: $dd
	rst  $38                                         ; $7d95: $ff
	or   [hl]                                        ; $7d96: $b6
	dec  d                                           ; $7d97: $15
	add  a                                           ; $7d98: $87
	cp   e                                           ; $7d99: $bb
	add  e                                           ; $7d9a: $83
	ld   de, $fb1c                                   ; $7d9b: $11 $1c $fb
	cp   l                                           ; $7d9e: $bd
	rst  $38                                         ; $7d9f: $ff
	add  $47                                         ; $7da0: $c6 $47
	ld   l, b                                        ; $7da2: $68
	ret                                              ; $7da3: $c9


	ld   h, c                                        ; $7da4: $61
	ld   de, $fa3f                                   ; $7da5: $11 $3f $fa
	cp   h                                           ; $7da8: $bc
	rst  $38                                         ; $7da9: $ff
	and  h                                           ; $7daa: $a4
	scf                                              ; $7dab: $37
	ld   a, d                                        ; $7dac: $7a
	jp   z, $1141                                    ; $7dad: $ca $41 $11

	adc  a                                           ; $7db0: $8f
	cp   d                                           ; $7db1: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7db2: $cf
	db   $fd                                         ; $7db3: $fd
	ld   [hl], h                                     ; $7db4: $74
	ld   h, a                                        ; $7db5: $67
	ld   a, e                                        ; $7db6: $7b
	and  a                                           ; $7db7: $a7
	ld   de, $be11                                   ; $7db8: $11 $11 $be
	xor  e                                           ; $7dbb: $ab
	rst  JumpTable                                         ; $7dbc: $df
	db   $eb                                         ; $7dbd: $eb
	ld   [hl], l                                     ; $7dbe: $75
	adc  b                                           ; $7dbf: $88
	adc  c                                           ; $7dc0: $89
	add  l                                           ; $7dc1: $85
	ld   de, $fd16                                   ; $7dc2: $11 $16 $fd
	xor  e                                           ; $7dc5: $ab
	rst  $28                                         ; $7dc6: $ef
	reti                                             ; $7dc7: $d9


	ld   h, a                                        ; $7dc8: $67
	adc  b                                           ; $7dc9: $88
	xor  c                                           ; $7dca: $a9
	ld   [hl], d                                     ; $7dcb: $72
	ld   de, $ca1b                                   ; $7dcc: $11 $1b $ca
	call z, $a8ed                                    ; $7dcf: $cc $ed $a8
	adc  c                                           ; $7dd2: $89
	adc  d                                           ; $7dd3: $8a
	xor  b                                           ; $7dd4: $a8
	ld   d, c                                        ; $7dd5: $51
	ld   de, $ac5b                                   ; $7dd6: $11 $5b $ac
	cp   h                                           ; $7dd9: $bc
	db   $eb                                         ; $7dda: $eb
	adc  c                                           ; $7ddb: $89
	sbc  c                                           ; $7ddc: $99
	sbc  d                                           ; $7ddd: $9a
	sub  a                                           ; $7dde: $97
	ld   hl, $9a11                                   ; $7ddf: $21 $11 $9a
	xor  e                                           ; $7de2: $ab
	cp   l                                           ; $7de3: $bd
	jp   c, $98a9                                    ; $7de4: $da $a9 $98

	sbc  c                                           ; $7de7: $99
	sub  [hl]                                        ; $7de8: $96
	ld   de, $9914                                   ; $7de9: $11 $14 $99
	adc  c                                           ; $7dec: $89
	adc  $ca                                         ; $7ded: $ce $ca
	xor  c                                           ; $7def: $a9
	sbc  e                                           ; $7df0: $9b
	sbc  c                                           ; $7df1: $99
	ld   [hl], h                                     ; $7df2: $74
	ld   de, $8737                                   ; $7df3: $11 $37 $87
	ld   a, b                                        ; $7df6: $78
	cp   h                                           ; $7df7: $bc
	cp   c                                           ; $7df8: $b9
	sbc  c                                           ; $7df9: $99
	cp   e                                           ; $7dfa: $bb
	cp   d                                           ; $7dfb: $ba
	ld   [hl], l                                     ; $7dfc: $75
	ld   [hl-], a                                    ; $7dfd: $32
	ld   b, [hl]                                     ; $7dfe: $46
	ld   [hl], a                                     ; $7dff: $77
	adc  b                                           ; $7e00: $88
	xor  e                                           ; $7e01: $ab
	sbc  c                                           ; $7e02: $99
	xor  c                                           ; $7e03: $a9
	xor  d                                           ; $7e04: $aa
	xor  d                                           ; $7e05: $aa
	add  a                                           ; $7e06: $87
	ld   h, l                                        ; $7e07: $65
	ld   d, [hl]                                     ; $7e08: $56
	ld   [hl], a                                     ; $7e09: $77
	halt                                             ; $7e0a: $76
	ld   a, b                                        ; $7e0b: $78
	sbc  c                                           ; $7e0c: $99
	adc  b                                           ; $7e0d: $88
	sbc  e                                           ; $7e0e: $9b
	cp   d                                           ; $7e0f: $ba
	sbc  c                                           ; $7e10: $99
	adc  b                                           ; $7e11: $88
	adc  b                                           ; $7e12: $88
	ld   [hl], a                                     ; $7e13: $77
	ld   h, [hl]                                     ; $7e14: $66
	ld   h, [hl]                                     ; $7e15: $66
	ld   h, [hl]                                     ; $7e16: $66
	ld   a, c                                        ; $7e17: $79
	sbc  d                                           ; $7e18: $9a
	sbc  e                                           ; $7e19: $9b
	cp   d                                           ; $7e1a: $ba
	xor  c                                           ; $7e1b: $a9
	adc  b                                           ; $7e1c: $88
	sbc  b                                           ; $7e1d: $98
	halt                                             ; $7e1e: $76
	ld   h, [hl]                                     ; $7e1f: $66
	ld   d, h                                        ; $7e20: $54
	ld   d, [hl]                                     ; $7e21: $56
	ld   a, c                                        ; $7e22: $79
	sbc  d                                           ; $7e23: $9a
	xor  d                                           ; $7e24: $aa
	xor  e                                           ; $7e25: $ab
	sbc  c                                           ; $7e26: $99
	sbc  c                                           ; $7e27: $99
	sbc  b                                           ; $7e28: $98
	halt                                             ; $7e29: $76
	ld   d, h                                        ; $7e2a: $54
	ld   d, l                                        ; $7e2b: $55
	ld   h, a                                        ; $7e2c: $67
	sbc  d                                           ; $7e2d: $9a
	xor  d                                           ; $7e2e: $aa
	xor  d                                           ; $7e2f: $aa
	xor  c                                           ; $7e30: $a9
	xor  c                                           ; $7e31: $a9
	adc  b                                           ; $7e32: $88
	add  [hl]                                        ; $7e33: $86
	ld   h, [hl]                                     ; $7e34: $66
	ld   d, l                                        ; $7e35: $55
	ld   d, l                                        ; $7e36: $55
	ld   a, c                                        ; $7e37: $79
	sbc  d                                           ; $7e38: $9a
	xor  d                                           ; $7e39: $aa
	cp   e                                           ; $7e3a: $bb
	sbc  c                                           ; $7e3b: $99
	adc  b                                           ; $7e3c: $88
	sbc  b                                           ; $7e3d: $98
	halt                                             ; $7e3e: $76
	ld   d, l                                        ; $7e3f: $55
	ld   d, l                                        ; $7e40: $55
	ld   h, a                                        ; $7e41: $67
	adc  c                                           ; $7e42: $89
	sbc  d                                           ; $7e43: $9a
	cp   d                                           ; $7e44: $ba
	cp   c                                           ; $7e45: $b9
	xor  b                                           ; $7e46: $a8
	adc  b                                           ; $7e47: $88
	add  a                                           ; $7e48: $87
	ld   h, l                                        ; $7e49: $65
	ld   d, l                                        ; $7e4a: $55
	ld   d, [hl]                                     ; $7e4b: $56
	ld   a, b                                        ; $7e4c: $78
	sbc  c                                           ; $7e4d: $99
	xor  d                                           ; $7e4e: $aa
	cp   e                                           ; $7e4f: $bb
	xor  c                                           ; $7e50: $a9
	xor  c                                           ; $7e51: $a9
	adc  b                                           ; $7e52: $88
	halt                                             ; $7e53: $76
	ld   d, l                                        ; $7e54: $55
	ld   b, l                                        ; $7e55: $45
	ld   h, a                                        ; $7e56: $67
	adc  c                                           ; $7e57: $89
	sbc  d                                           ; $7e58: $9a
	cp   e                                           ; $7e59: $bb
	xor  d                                           ; $7e5a: $aa
	sbc  c                                           ; $7e5b: $99
	adc  b                                           ; $7e5c: $88
	add  a                                           ; $7e5d: $87
	ld   h, l                                        ; $7e5e: $65
	ld   b, h                                        ; $7e5f: $44
	ld   d, [hl]                                     ; $7e60: $56
	ld   a, b                                        ; $7e61: $78
	sbc  c                                           ; $7e62: $99
	xor  e                                           ; $7e63: $ab
	cp   e                                           ; $7e64: $bb
	xor  d                                           ; $7e65: $aa
	sbc  b                                           ; $7e66: $98
	sbc  b                                           ; $7e67: $98
	halt                                             ; $7e68: $76
	ld   d, l                                        ; $7e69: $55
	ld   d, l                                        ; $7e6a: $55
	ld   d, [hl]                                     ; $7e6b: $56
	ld   a, b                                        ; $7e6c: $78
	sbc  d                                           ; $7e6d: $9a
	cp   d                                           ; $7e6e: $ba
	cp   d                                           ; $7e6f: $ba
	xor  d                                           ; $7e70: $aa
	xor  b                                           ; $7e71: $a8
	adc  b                                           ; $7e72: $88
	halt                                             ; $7e73: $76
	ld   d, l                                        ; $7e74: $55
	ld   d, l                                        ; $7e75: $55
	ld   h, a                                        ; $7e76: $67
	ld   a, c                                        ; $7e77: $79
	sbc  d                                           ; $7e78: $9a
	cp   e                                           ; $7e79: $bb
	cp   e                                           ; $7e7a: $bb
	cp   c                                           ; $7e7b: $b9
	adc  b                                           ; $7e7c: $88
	add  a                                           ; $7e7d: $87
	ld   h, l                                        ; $7e7e: $65
	ld   d, l                                        ; $7e7f: $55
	ld   d, [hl]                                     ; $7e80: $56
	ld   h, a                                        ; $7e81: $67
	adc  c                                           ; $7e82: $89
	xor  e                                           ; $7e83: $ab
	cp   e                                           ; $7e84: $bb
	xor  e                                           ; $7e85: $ab
	xor  d                                           ; $7e86: $aa
	adc  c                                           ; $7e87: $89
	add  [hl]                                        ; $7e88: $86
	ld   h, l                                        ; $7e89: $65
	ld   d, l                                        ; $7e8a: $55
	ld   d, [hl]                                     ; $7e8b: $56
	ld   h, a                                        ; $7e8c: $67
	sbc  c                                           ; $7e8d: $99
	xor  d                                           ; $7e8e: $aa
	cp   d                                           ; $7e8f: $ba
	cp   d                                           ; $7e90: $ba
	xor  c                                           ; $7e91: $a9
	adc  b                                           ; $7e92: $88
	halt                                             ; $7e93: $76
	ld   h, l                                        ; $7e94: $65
	ld   d, l                                        ; $7e95: $55
	ld   d, l                                        ; $7e96: $55
	ld   h, a                                        ; $7e97: $67
	sbc  c                                           ; $7e98: $99
	sbc  e                                           ; $7e99: $9b
	cp   e                                           ; $7e9a: $bb
	cp   d                                           ; $7e9b: $ba
	xor  d                                           ; $7e9c: $aa
	sbc  c                                           ; $7e9d: $99
	halt                                             ; $7e9e: $76
	ld   d, l                                        ; $7e9f: $55
	ld   d, l                                        ; $7ea0: $55
	ld   d, [hl]                                     ; $7ea1: $56
	ld   h, a                                        ; $7ea2: $67
	adc  c                                           ; $7ea3: $89
	sbc  e                                           ; $7ea4: $9b
	cp   d                                           ; $7ea5: $ba
	xor  d                                           ; $7ea6: $aa
	xor  c                                           ; $7ea7: $a9
	sbc  c                                           ; $7ea8: $99
	halt                                             ; $7ea9: $76
	ld   d, l                                        ; $7eaa: $55
	ld   d, l                                        ; $7eab: $55
	ld   d, l                                        ; $7eac: $55
	ld   h, a                                        ; $7ead: $67
	adc  c                                           ; $7eae: $89
	sbc  d                                           ; $7eaf: $9a
	cp   e                                           ; $7eb0: $bb
	cp   e                                           ; $7eb1: $bb
	xor  c                                           ; $7eb2: $a9
	sbc  c                                           ; $7eb3: $99
	add  a                                           ; $7eb4: $87
	ld   h, l                                        ; $7eb5: $65
	ld   d, h                                        ; $7eb6: $54
	ld   b, l                                        ; $7eb7: $45
	ld   h, a                                        ; $7eb8: $67
	adc  b                                           ; $7eb9: $88
	sbc  e                                           ; $7eba: $9b
	res  5, e                                        ; $7ebb: $cb $ab
	xor  d                                           ; $7ebd: $aa
	sbc  b                                           ; $7ebe: $98
	add  a                                           ; $7ebf: $87
	ld   h, l                                        ; $7ec0: $65
	ld   d, l                                        ; $7ec1: $55
	ld   b, h                                        ; $7ec2: $44
	ld   d, a                                        ; $7ec3: $57
	adc  b                                           ; $7ec4: $88
	xor  d                                           ; $7ec5: $aa
	cp   e                                           ; $7ec6: $bb
	cp   d                                           ; $7ec7: $ba
	xor  d                                           ; $7ec8: $aa
	sbc  c                                           ; $7ec9: $99
	sub  a                                           ; $7eca: $97
	ld   h, l                                        ; $7ecb: $65
	ld   d, h                                        ; $7ecc: $54
	ld   b, h                                        ; $7ecd: $44
	ld   d, [hl]                                     ; $7ece: $56
	ld   a, b                                        ; $7ecf: $78
	sbc  d                                           ; $7ed0: $9a
	cp   e                                           ; $7ed1: $bb
	cp   e                                           ; $7ed2: $bb
	cp   d                                           ; $7ed3: $ba
	xor  d                                           ; $7ed4: $aa
	adc  b                                           ; $7ed5: $88
	ld   [hl], l                                     ; $7ed6: $75
	ld   d, l                                        ; $7ed7: $55
	ld   b, h                                        ; $7ed8: $44
	ld   d, l                                        ; $7ed9: $55
	ld   h, a                                        ; $7eda: $67
	sbc  d                                           ; $7edb: $9a
	xor  h                                           ; $7edc: $ac
	cp   e                                           ; $7edd: $bb
	cp   e                                           ; $7ede: $bb
	cp   d                                           ; $7edf: $ba
	sbc  c                                           ; $7ee0: $99
	halt                                             ; $7ee1: $76
	ld   d, h                                        ; $7ee2: $54
	ld   b, h                                        ; $7ee3: $44
	ld   b, h                                        ; $7ee4: $44
	ld   d, a                                        ; $7ee5: $57
	adc  b                                           ; $7ee6: $88
	sbc  e                                           ; $7ee7: $9b
	set  1, e                                        ; $7ee8: $cb $cb
	cp   d                                           ; $7eea: $ba
	sbc  c                                           ; $7eeb: $99
	add  a                                           ; $7eec: $87
	ld   h, l                                        ; $7eed: $65
	ld   b, h                                        ; $7eee: $44
	ld   b, h                                        ; $7eef: $44
	ld   d, [hl]                                     ; $7ef0: $56
	ld   a, b                                        ; $7ef1: $78
	sbc  d                                           ; $7ef2: $9a
	cp   e                                           ; $7ef3: $bb
	cp   h                                           ; $7ef4: $bc
	res  7, c                                        ; $7ef5: $cb $b9
	sbc  b                                           ; $7ef7: $98
	ld   h, [hl]                                     ; $7ef8: $66
	ld   d, h                                        ; $7ef9: $54
	ld   b, h                                        ; $7efa: $44
	ld   b, l                                        ; $7efb: $45
	ld   h, a                                        ; $7efc: $67
	adc  c                                           ; $7efd: $89
	xor  e                                           ; $7efe: $ab
	set  1, e                                        ; $7eff: $cb $cb
	cp   e                                           ; $7f01: $bb
	xor  b                                           ; $7f02: $a8
	add  a                                           ; $7f03: $87
	ld   h, l                                        ; $7f04: $65
	ld   b, h                                        ; $7f05: $44
	ld   b, h                                        ; $7f06: $44
	ld   d, [hl]                                     ; $7f07: $56
	ld   a, b                                        ; $7f08: $78
	sbc  d                                           ; $7f09: $9a
	cp   h                                           ; $7f0a: $bc
	cp   h                                           ; $7f0b: $bc
	call z, $88a9                                    ; $7f0c: $cc $a9 $88
	halt                                             ; $7f0f: $76
	ld   d, h                                        ; $7f10: $54
	ld   b, h                                        ; $7f11: $44
	ld   b, h                                        ; $7f12: $44
	ld   d, [hl]                                     ; $7f13: $56
	adc  b                                           ; $7f14: $88
	xor  e                                           ; $7f15: $ab
	set  1, e                                        ; $7f16: $cb $cb
	res  5, d                                        ; $7f18: $cb $aa
	sub  a                                           ; $7f1a: $97
	ld   h, l                                        ; $7f1b: $65
	ld   b, h                                        ; $7f1c: $44
	ld   b, h                                        ; $7f1d: $44
	ld   b, l                                        ; $7f1e: $45
	ld   h, a                                        ; $7f1f: $67
	sbc  c                                           ; $7f20: $99
	cp   h                                           ; $7f21: $bc
	call z, $cabb                                    ; $7f22: $cc $bb $ca
	sbc  b                                           ; $7f25: $98
	add  a                                           ; $7f26: $87
	ld   h, l                                        ; $7f27: $65
	ld   b, h                                        ; $7f28: $44
	ld   b, h                                        ; $7f29: $44
	ld   b, l                                        ; $7f2a: $45
	ld   l, b                                        ; $7f2b: $68
	sbc  c                                           ; $7f2c: $99
	cp   e                                           ; $7f2d: $bb
	call z, $bbcb                                    ; $7f2e: $cc $cb $bb
	xor  c                                           ; $7f31: $a9
	halt                                             ; $7f32: $76
	ld   d, h                                        ; $7f33: $54
	ld   b, h                                        ; $7f34: $44
	ld   b, h                                        ; $7f35: $44
	ld   b, l                                        ; $7f36: $45
	ld   l, b                                        ; $7f37: $68
	adc  d                                           ; $7f38: $8a
	cp   h                                           ; $7f39: $bc
	call z, $bbcb                                    ; $7f3a: $cc $cb $bb
	sbc  b                                           ; $7f3d: $98
	halt                                             ; $7f3e: $76
	ld   d, h                                        ; $7f3f: $54
	ld   b, h                                        ; $7f40: $44
	inc  [hl]                                        ; $7f41: $34
	ld   b, l                                        ; $7f42: $45
	ld   l, b                                        ; $7f43: $68
	adc  c                                           ; $7f44: $89
	xor  e                                           ; $7f45: $ab
	call z, $cacc                                    ; $7f46: $cc $cc $ca
	xor  c                                           ; $7f49: $a9
	halt                                             ; $7f4a: $76
	ld   h, l                                        ; $7f4b: $65
	ld   b, h                                        ; $7f4c: $44
	inc  [hl]                                        ; $7f4d: $34
	ld   b, l                                        ; $7f4e: $45
	ld   d, a                                        ; $7f4f: $57
	adc  c                                           ; $7f50: $89
	xor  h                                           ; $7f51: $ac
	call $bbcc                                       ; $7f52: $cd $cc $bb
	cp   d                                           ; $7f55: $ba
	sub  a                                           ; $7f56: $97
	ld   h, l                                        ; $7f57: $65
	ld   d, h                                        ; $7f58: $54
	inc  sp                                          ; $7f59: $33
	ld   b, h                                        ; $7f5a: $44
	ld   d, [hl]                                     ; $7f5b: $56
	ld   a, b                                        ; $7f5c: $78
	xor  e                                           ; $7f5d: $ab
	call z, $cbdc                                    ; $7f5e: $cc $dc $cb
	cp   d                                           ; $7f61: $ba
	xor  b                                           ; $7f62: $a8
	halt                                             ; $7f63: $76
	ld   d, h                                        ; $7f64: $54
	ld   b, h                                        ; $7f65: $44
	ld   b, e                                        ; $7f66: $43
	ld   b, l                                        ; $7f67: $45
	ld   d, a                                        ; $7f68: $57
	adc  c                                           ; $7f69: $89
	xor  e                                           ; $7f6a: $ab
	call $cbcc                                       ; $7f6b: $cd $cc $cb
	xor  d                                           ; $7f6e: $aa
	sbc  b                                           ; $7f6f: $98
	halt                                             ; $7f70: $76
	ld   d, h                                        ; $7f71: $54
	inc  sp                                          ; $7f72: $33
	inc  [hl]                                        ; $7f73: $34
	ld   b, l                                        ; $7f74: $45
	ld   h, a                                        ; $7f75: $67
	adc  d                                           ; $7f76: $8a
	cp   e                                           ; $7f77: $bb
	call c, $cbcc                                    ; $7f78: $dc $cc $cb
	cp   c                                           ; $7f7b: $b9
	sbc  b                                           ; $7f7c: $98
	ld   h, l                                        ; $7f7d: $65
	ld   b, h                                        ; $7f7e: $44
	inc  sp                                          ; $7f7f: $33
	inc  [hl]                                        ; $7f80: $34
	ld   b, l                                        ; $7f81: $45
	ld   h, a                                        ; $7f82: $67
	sbc  c                                           ; $7f83: $99
	cp   e                                           ; $7f84: $bb
	call z, $cbcd                                    ; $7f85: $cc $cd $cb
	xor  d                                           ; $7f88: $aa
	sbc  b                                           ; $7f89: $98
	ld   h, l                                        ; $7f8a: $65
	ld   b, h                                        ; $7f8b: $44
	inc  sp                                          ; $7f8c: $33
	inc  sp                                          ; $7f8d: $33
	dec  [hl]                                        ; $7f8e: $35
	ld   h, a                                        ; $7f8f: $67
	sbc  d                                           ; $7f90: $9a
	cp   h                                           ; $7f91: $bc
	db   $dd                                         ; $7f92: $dd
	call c, $bbdc                                    ; $7f93: $dc $dc $bb
	sbc  c                                           ; $7f96: $99
	halt                                             ; $7f97: $76
	ld   d, h                                        ; $7f98: $54
	ld   b, e                                        ; $7f99: $43
	inc  sp                                          ; $7f9a: $33
	inc  [hl]                                        ; $7f9b: $34
	ld   d, [hl]                                     ; $7f9c: $56
	ld   a, b                                        ; $7f9d: $78
	xor  d                                           ; $7f9e: $aa
	cp   h                                           ; $7f9f: $bc
	db   $dd                                         ; $7fa0: $dd
	call $babb                                       ; $7fa1: $cd $bb $ba
	add  a                                           ; $7fa4: $87
	ld   h, l                                        ; $7fa5: $65
	ld   b, e                                        ; $7fa6: $43
	inc  sp                                          ; $7fa7: $33
	inc  sp                                          ; $7fa8: $33
	ld   b, l                                        ; $7fa9: $45
	ld   h, a                                        ; $7faa: $67
	sbc  c                                           ; $7fab: $99
	xor  h                                           ; $7fac: $ac
	db   $dd                                         ; $7fad: $dd
	db   $dd                                         ; $7fae: $dd
	call z, $a9ca                                    ; $7faf: $cc $ca $a9
	add  [hl]                                        ; $7fb2: $86
	ld   d, h                                        ; $7fb3: $54
	ld   b, e                                        ; $7fb4: $43
	inc  sp                                          ; $7fb5: $33
	inc  sp                                          ; $7fb6: $33
	ld   b, l                                        ; $7fb7: $45
	ld   h, a                                        ; $7fb8: $67
	sbc  d                                           ; $7fb9: $9a
	cp   h                                           ; $7fba: $bc
	sbc  $ed                                         ; $7fbb: $de $ed
	call c, $98ca                                    ; $7fbd: $dc $ca $98
	halt                                             ; $7fc0: $76
	ld   d, h                                        ; $7fc1: $54
	inc  sp                                          ; $7fc2: $33
	inc  sp                                          ; $7fc3: $33
	inc  sp                                          ; $7fc4: $33
	dec  [hl]                                        ; $7fc5: $35
	ld   h, a                                        ; $7fc6: $67
	sbc  d                                           ; $7fc7: $9a
	call $ddde                                       ; $7fc8: $cd $de $dd
	db   $dd                                         ; $7fcb: $dd
	jp   z, $7698                                    ; $7fcc: $ca $98 $76

	ld   b, h                                        ; $7fcf: $44
	inc  sp                                          ; $7fd0: $33
	inc  sp                                          ; $7fd1: $33
	inc  sp                                          ; $7fd2: $33
	ld   b, l                                        ; $7fd3: $45
	ld   h, a                                        ; $7fd4: $67
	adc  d                                           ; $7fd5: $8a
	cp   h                                           ; $7fd6: $bc
	call $dcdd                                       ; $7fd7: $cd $dd $dc
	res  5, d                                        ; $7fda: $cb $aa
	sub  a                                           ; $7fdc: $97
	ld   h, l                                        ; $7fdd: $65
	ld   b, e                                        ; $7fde: $43
	inc  sp                                          ; $7fdf: $33
	inc  sp                                          ; $7fe0: $33
	inc  [hl]                                        ; $7fe1: $34
	ld   d, [hl]                                     ; $7fe2: $56
	ld   a, c                                        ; $7fe3: $79
	sbc  d                                           ; $7fe4: $9a
	cp   h                                           ; $7fe5: $bc
	db   $dd                                         ; $7fe6: $dd
	call c, $cadc                                    ; $7fe7: $dc $dc $ca
	xor  c                                           ; $7fea: $a9
	add  [hl]                                        ; $7feb: $86
	ld   d, l                                        ; $7fec: $55
	ld   b, h                                        ; $7fed: $44
	inc  sp                                          ; $7fee: $33
	inc  sp                                          ; $7fef: $33
	inc  [hl]                                        ; $7ff0: $34
	ld   d, [hl]                                     ; $7ff1: $56
	ld   a, b                                        ; $7ff2: $78
	xor  e                                           ; $7ff3: $ab
	cp   h                                           ; $7ff4: $bc
	db   $dd                                         ; $7ff5: $dd
	call c, $bbdc                                    ; $7ff6: $dc $dc $bb
	xor  c                                           ; $7ff9: $a9
	add  a                                           ; $7ffa: $87
	ld   h, l                                        ; $7ffb: $65
	ld   b, h                                        ; $7ffc: $44
	inc  sp                                          ; $7ffd: $33
	inc  sp                                          ; $7ffe: $33
	inc  [hl]                                        ; $7fff: $34
