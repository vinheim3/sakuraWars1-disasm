; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0f6", ROMX[$4000], BANK[$f6]

	sub  [hl]                                        ; $4000: $96
	ld   b, e                                        ; $4001: $43
	ld   hl, $1311                                   ; $4002: $21 $11 $13
	ld   de, $1561                                   ; $4005: $11 $61 $15
	inc  h                                           ; $4008: $24
	ld   [hl], h                                     ; $4009: $74
	xor  $7f                                         ; $400a: $ee $7f
	cp   $ff                                         ; $400c: $fe $ff
	rst  $38                                         ; $400e: $ff
	rst  $38                                         ; $400f: $ff
	cp   $cf                                         ; $4010: $fe $cf
	or   a                                           ; $4012: $b7
	sbc  b                                           ; $4013: $98
	inc  [hl]                                        ; $4014: $34
	ld   sp, $1411                                   ; $4015: $31 $11 $14
	ld   de, $1691                                   ; $4018: $11 $91 $16
	rla                                              ; $401b: $17
	ld   d, h                                        ; $401c: $54
	ei                                               ; $401d: $fb
	ld   l, a                                        ; $401e: $6f
	ei                                               ; $401f: $fb
	rst  $38                                         ; $4020: $ff
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	db   $fc                                         ; $4023: $fc
	rst  JumpTable                                         ; $4024: $df
	and  [hl]                                        ; $4025: $a6
	cp   b                                           ; $4026: $b8
	inc  d                                           ; $4027: $14
	ld   sp, $6111                                   ; $4028: $31 $11 $61
	jr   jr_0f6_404e                                 ; $402b: $18 $21

	ld   h, d                                        ; $402d: $62
	dec  de                                          ; $402e: $1b
	dec  de                                          ; $402f: $1b
	db   $f4                                         ; $4030: $f4
	rst  JumpTable                                         ; $4031: $df
	db   $dd                                         ; $4032: $dd
	rst  $38                                         ; $4033: $ff
	rst  $38                                         ; $4034: $ff
	rst  $38                                         ; $4035: $ff
	ei                                               ; $4036: $fb
	db   $fd                                         ; $4037: $fd
	ld   a, d                                        ; $4038: $7a
	and  l                                           ; $4039: $a5
	inc  h                                           ; $403a: $24
	ld   de, $1115                                   ; $403b: $11 $15 $11
	ld   [hl], c                                     ; $403e: $71
	rla                                              ; $403f: $17
	ld   hl, $cfb1                                   ; $4040: $21 $b1 $cf
	cpl                                              ; $4043: $2f
	db   $fc                                         ; $4044: $fc
	rst  $38                                         ; $4045: $ff
	rst  $38                                         ; $4046: $ff
	rst  $38                                         ; $4047: $ff
	rst  $38                                         ; $4048: $ff
	cp   a                                           ; $4049: $bf
	and  $cb                                         ; $404a: $e6 $cb
	ld   b, e                                        ; $404c: $43
	ld   d, c                                        ; $404d: $51

jr_0f6_404e:
	ld   de, $1861                                   ; $404e: $11 $61 $18
	ld   de, $1b71                                   ; $4051: $11 $71 $1b
	inc  e                                           ; $4054: $1c
	pop  af                                          ; $4055: $f1
	rst  $38                                         ; $4056: $ff
	sbc  $ff                                         ; $4057: $de $ff
	rst  $38                                         ; $4059: $ff
	rst  $38                                         ; $405a: $ff
	ld   sp, hl                                      ; $405b: $f9
	cp   $6c                                         ; $405c: $fe $6c
	or   l                                           ; $405e: $b5
	dec  h                                           ; $405f: $25
	ld   de, $1117                                   ; $4060: $11 $17 $11
	or   c                                           ; $4063: $b1
	ld   a, [de]                                     ; $4064: $1a
	ld   [de], a                                     ; $4065: $12
	pop  bc                                          ; $4066: $c1
	rst  $38                                         ; $4067: $ff
	rra                                              ; $4068: $1f
	ld   a, [$ffff]                                  ; $4069: $fa $ff $ff
	rst  $38                                         ; $406c: $ff
	rst  $38                                         ; $406d: $ff
	xor  a                                           ; $406e: $af
	and  $cb                                         ; $406f: $e6 $cb
	ld   [hl-], a                                    ; $4071: $32
	ld   b, c                                        ; $4072: $41
	inc  de                                          ; $4073: $13
	ld   de, $1119                                   ; $4074: $11 $19 $11
	sub  c                                           ; $4077: $91
	sub  l                                           ; $4078: $95
	rra                                              ; $4079: $1f
	sub  l                                           ; $407a: $95
	rst  $38                                         ; $407b: $ff
	sbc  a                                           ; $407c: $9f
	cp   $ff                                         ; $407d: $fe $ff
	rst  $38                                         ; $407f: $ff
	db   $ed                                         ; $4080: $ed
	ei                                               ; $4081: $fb
	ld   a, e                                        ; $4082: $7b
	add  c                                           ; $4083: $81
	ld   de, $4113                                   ; $4084: $11 $13 $41
	ld   a, [de]                                     ; $4087: $1a
	ld   de, $5791                                   ; $4088: $11 $91 $57
	rra                                              ; $408b: $1f
	call nc, $9fff                                   ; $408c: $d4 $ff $9f
	rst  $38                                         ; $408f: $ff
	rst  $38                                         ; $4090: $ff
	rst  $38                                         ; $4091: $ff
	db   $fd                                         ; $4092: $fd
	db   $fd                                         ; $4093: $fd
	ld   a, d                                        ; $4094: $7a
	add  c                                           ; $4095: $81
	ld   de, $4111                                   ; $4096: $11 $11 $41
	inc  e                                           ; $4099: $1c
	ld   de, $36b1                                   ; $409a: $11 $b1 $36
	ld   e, a                                        ; $409d: $5f
	rst  $10                                         ; $409e: $d7
	rst  $38                                         ; $409f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40a0: $cf
	rst  $38                                         ; $40a1: $ff
	rst  $28                                         ; $40a2: $ef
	rst  $38                                         ; $40a3: $ff
	rst  $38                                         ; $40a4: $ff
	db   $eb                                         ; $40a5: $eb
	ld   h, a                                        ; $40a6: $67
	ld   [hl], c                                     ; $40a7: $71
	ld   de, $2114                                   ; $40a8: $11 $14 $21
	dec  de                                          ; $40ab: $1b
	ld   de, $1482                                   ; $40ac: $11 $82 $14
	cp   a                                           ; $40af: $bf
	cp   d                                           ; $40b0: $ba
	rst  $38                                         ; $40b1: $ff
	rst  JumpTable                                         ; $40b2: $df
	rst  $38                                         ; $40b3: $ff
	rst  $38                                         ; $40b4: $ff
	rst  $38                                         ; $40b5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40b6: $cf
	jp   hl                                          ; $40b7: $e9


	ld   d, l                                        ; $40b8: $55
	ld   [hl], c                                     ; $40b9: $71
	ld   de, $1116                                   ; $40ba: $11 $16 $11
	ld   d, l                                        ; $40bd: $55
	ld   de, $1275                                   ; $40be: $11 $75 $12
	sbc  $9a                                         ; $40c1: $de $9a
	rst  $38                                         ; $40c3: $ff
	db   $ed                                         ; $40c4: $ed
	rst  $38                                         ; $40c5: $ff
	xor  $ff                                         ; $40c6: $ee $ff
	cp   e                                           ; $40c8: $bb
	jp   z, Jump_0f6_5575                            ; $40c9: $ca $75 $55

	ld   de, $1156                                   ; $40cc: $11 $56 $11
	ld   h, c                                        ; $40cf: $61
	ld   de, $1476                                   ; $40d0: $11 $76 $14
	call z, $df9a                                    ; $40d3: $cc $9a $df
	db   $fd                                         ; $40d6: $fd
	rst  $38                                         ; $40d7: $ff
	db   $fd                                         ; $40d8: $fd
	rst  $38                                         ; $40d9: $ff
	reti                                             ; $40da: $d9


	call $88b7                                       ; $40db: $cd $b7 $88
	ld   sp, $1165                                   ; $40de: $31 $65 $11
	ld   b, d                                        ; $40e1: $42
	ld   de, $1345                                   ; $40e2: $11 $45 $13
	adc  c                                           ; $40e5: $89
	adc  b                                           ; $40e6: $88
	xor  e                                           ; $40e7: $ab
	call c, $eccf                                    ; $40e8: $dc $cf $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40eb: $cf
	db   $fd                                         ; $40ec: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ed: $cf
	ld   [$969b], a                                  ; $40ee: $ea $9b $96
	ld   a, b                                        ; $40f1: $78
	ld   hl, $1123                                   ; $40f2: $21 $23 $11
	inc  d                                           ; $40f5: $14
	ld   hl, $6646                                   ; $40f6: $21 $46 $66
	ld   a, b                                        ; $40f9: $78
	sbc  c                                           ; $40fa: $99
	sbc  d                                           ; $40fb: $9a
	adc  $cd                                         ; $40fc: $ce $cd
	cp   $ef                                         ; $40fe: $fe $ef
	rst  $38                                         ; $4100: $ff
	db   $dd                                         ; $4101: $dd
	db   $eb                                         ; $4102: $eb
	sbc  c                                           ; $4103: $99
	add  [hl]                                        ; $4104: $86
	ld   [hl-], a                                    ; $4105: $32
	ld   [hl+], a                                    ; $4106: $22
	ld   de, $2212                                   ; $4107: $11 $12 $22
	inc  sp                                          ; $410a: $33
	ld   b, l                                        ; $410b: $45
	ld   d, [hl]                                     ; $410c: $56
	ld   a, b                                        ; $410d: $78
	sbc  d                                           ; $410e: $9a
	cp   l                                           ; $410f: $bd
	db   $dd                                         ; $4110: $dd
	rst  $28                                         ; $4111: $ef
	rst  $38                                         ; $4112: $ff
	rst  $38                                         ; $4113: $ff
	cp   $ed                                         ; $4114: $fe $ed
	cp   c                                           ; $4116: $b9
	sub  a                                           ; $4117: $97
	ld   h, h                                        ; $4118: $64
	ld   hl, $1121                                   ; $4119: $21 $21 $11
	ld   de, $3423                                   ; $411c: $11 $23 $34
	ld   d, l                                        ; $411f: $55
	ld   h, [hl]                                     ; $4120: $66
	ld   a, b                                        ; $4121: $78
	sbc  c                                           ; $4122: $99
	cp   h                                           ; $4123: $bc
	db   $dd                                         ; $4124: $dd
	xor  $ff                                         ; $4125: $ee $ff
	rst  $28                                         ; $4127: $ef
	cp   $ed                                         ; $4128: $fe $ed
	cp   e                                           ; $412a: $bb
	sbc  b                                           ; $412b: $98
	ld   [hl], l                                     ; $412c: $75
	ld   b, d                                        ; $412d: $42
	ld   de, $1111                                   ; $412e: $11 $11 $11
	ld   [hl+], a                                    ; $4131: $22
	inc  sp                                          ; $4132: $33
	ld   b, h                                        ; $4133: $44
	ld   d, l                                        ; $4134: $55
	ld   h, a                                        ; $4135: $67
	adc  c                                           ; $4136: $89
	sbc  d                                           ; $4137: $9a
	call z, $eecd                                    ; $4138: $cc $cd $ee
	rst  $38                                         ; $413b: $ff
	cp   $ee                                         ; $413c: $fe $ee
	call c, $a8bb                                    ; $413e: $dc $bb $a8
	halt                                             ; $4141: $76
	ld   d, h                                        ; $4142: $54
	ld   [hl-], a                                    ; $4143: $32
	ld   de, $1111                                   ; $4144: $11 $11 $11
	ld   [de], a                                     ; $4147: $12
	inc  sp                                          ; $4148: $33
	ld   b, l                                        ; $4149: $45
	ld   h, [hl]                                     ; $414a: $66
	ld   a, b                                        ; $414b: $78
	sbc  d                                           ; $414c: $9a
	xor  e                                           ; $414d: $ab
	call $efde                                       ; $414e: $cd $de $ef
	rst  $28                                         ; $4151: $ef
	rst  $28                                         ; $4152: $ef
	xor  $dc                                         ; $4153: $ee $dc
	cp   d                                           ; $4155: $ba
	sbc  c                                           ; $4156: $99
	ld   [hl], a                                     ; $4157: $77
	ld   h, h                                        ; $4158: $64
	inc  sp                                          ; $4159: $33
	ld   hl, $1111                                   ; $415a: $21 $11 $11
	ld   de, $4523                                   ; $415d: $11 $23 $45
	ld   h, [hl]                                     ; $4160: $66
	ld   a, b                                        ; $4161: $78
	sbc  c                                           ; $4162: $99
	xor  e                                           ; $4163: $ab
	cp   h                                           ; $4164: $bc
	db   $dd                                         ; $4165: $dd
	db   $dd                                         ; $4166: $dd
	db   $dd                                         ; $4167: $dd
	db   $ec                                         ; $4168: $ec
	call z, $bacb                                    ; $4169: $cc $cb $ba
	sbc  c                                           ; $416c: $99
	add  a                                           ; $416d: $87
	halt                                             ; $416e: $76
	ld   d, l                                        ; $416f: $55
	ld   d, h                                        ; $4170: $54
	ld   b, h                                        ; $4171: $44
	ld   b, e                                        ; $4172: $43
	inc  sp                                          ; $4173: $33
	inc  sp                                          ; $4174: $33
	inc  [hl]                                        ; $4175: $34
	ld   d, l                                        ; $4176: $55
	ld   h, a                                        ; $4177: $67
	adc  b                                           ; $4178: $88
	adc  c                                           ; $4179: $89
	sbc  d                                           ; $417a: $9a
	xor  e                                           ; $417b: $ab
	xor  d                                           ; $417c: $aa
	xor  d                                           ; $417d: $aa
	cp   d                                           ; $417e: $ba
	xor  d                                           ; $417f: $aa
	xor  c                                           ; $4180: $a9
	xor  c                                           ; $4181: $a9
	sbc  b                                           ; $4182: $98
	sbc  c                                           ; $4183: $99
	sbc  b                                           ; $4184: $98
	adc  b                                           ; $4185: $88
	adc  b                                           ; $4186: $88
	adc  b                                           ; $4187: $88
	add  a                                           ; $4188: $87
	ld   [hl], a                                     ; $4189: $77
	ld   [hl], a                                     ; $418a: $77
	ld   h, [hl]                                     ; $418b: $66
	ld   h, [hl]                                     ; $418c: $66
	ld   h, l                                        ; $418d: $65
	ld   d, [hl]                                     ; $418e: $56
	ld   h, [hl]                                     ; $418f: $66
	ld   h, [hl]                                     ; $4190: $66
	ld   [hl], a                                     ; $4191: $77
	adc  b                                           ; $4192: $88
	ld   a, b                                        ; $4193: $78
	sbc  b                                           ; $4194: $98
	sbc  b                                           ; $4195: $98
	sbc  b                                           ; $4196: $98
	adc  c                                           ; $4197: $89
	sbc  c                                           ; $4198: $99
	sbc  c                                           ; $4199: $99
	sbc  c                                           ; $419a: $99
	sbc  c                                           ; $419b: $99
	xor  c                                           ; $419c: $a9

Call_0f6_419d:
	sbc  d                                           ; $419d: $9a
	sbc  c                                           ; $419e: $99
	sbc  c                                           ; $419f: $99
	sbc  d                                           ; $41a0: $9a
	sbc  c                                           ; $41a1: $99
	sbc  b                                           ; $41a2: $98
	adc  b                                           ; $41a3: $88
	sbc  d                                           ; $41a4: $9a
	sub  a                                           ; $41a5: $97
	ld   h, [hl]                                     ; $41a6: $66
	ld   h, [hl]                                     ; $41a7: $66
	ld   d, l                                        ; $41a8: $55
	ld   d, l                                        ; $41a9: $55
	ld   d, l                                        ; $41aa: $55
	ld   d, [hl]                                     ; $41ab: $56
	ld   a, b                                        ; $41ac: $78
	ld   [hl], a                                     ; $41ad: $77
	adc  b                                           ; $41ae: $88
	adc  b                                           ; $41af: $88
	ld   a, b                                        ; $41b0: $78
	sbc  d                                           ; $41b1: $9a
	sbc  e                                           ; $41b2: $9b
	ret                                              ; $41b3: $c9


	cp   e                                           ; $41b4: $bb
	res  7, e                                        ; $41b5: $cb $bb
	adc  c                                           ; $41b7: $89
	cp   b                                           ; $41b8: $b8
	ld   [hl], a                                     ; $41b9: $77
	adc  b                                           ; $41ba: $88
	adc  b                                           ; $41bb: $88
	ld   [hl], a                                     ; $41bc: $77
	ld   [hl], l                                     ; $41bd: $75
	ld   d, l                                        ; $41be: $55
	ld   b, [hl]                                     ; $41bf: $46
	ld   h, l                                        ; $41c0: $65
	inc  sp                                          ; $41c1: $33
	ld   d, l                                        ; $41c2: $55
	ld   b, h                                        ; $41c3: $44
	ld   d, [hl]                                     ; $41c4: $56
	ld   l, b                                        ; $41c5: $68
	adc  c                                           ; $41c6: $89
	ld   a, b                                        ; $41c7: $78
	cp   e                                           ; $41c8: $bb
	sbc  c                                           ; $41c9: $99
	cp   d                                           ; $41ca: $ba
	call z, $cdcc                                    ; $41cb: $cc $cc $cd
	call z, $da9b                                    ; $41ce: $cc $9b $da
	adc  c                                           ; $41d1: $89
	ld   [hl], d                                     ; $41d2: $72
	ld   c, c                                        ; $41d3: $49
	ld   hl, $4211                                   ; $41d4: $21 $11 $42
	ld   [de], a                                     ; $41d7: $12
	ld   b, h                                        ; $41d8: $44
	ld   l, b                                        ; $41d9: $68
	ld   a, b                                        ; $41da: $78
	cp   l                                           ; $41db: $bd
	xor  c                                           ; $41dc: $a9
	rst  $28                                         ; $41dd: $ef
	db   $fc                                         ; $41de: $fc
	rst  $38                                         ; $41df: $ff
	rst  $38                                         ; $41e0: $ff
	jp   z, Jump_0f6_739b                            ; $41e1: $ca $9b $73

	ld   de, $11bd                                   ; $41e4: $11 $bd $11
	rla                                              ; $41e7: $17
	ld   [hl], c                                     ; $41e8: $71
	dec  d                                           ; $41e9: $15
	ld   e, b                                        ; $41ea: $58
	call $ffbd                                       ; $41eb: $cd $bd $ff
	set  7, a                                        ; $41ee: $cb $ff
	cp   $dc                                         ; $41f0: $fe $dc
	xor  c                                           ; $41f2: $a9
	ld   h, c                                        ; $41f3: $61
	ld   de, $111f                                   ; $41f4: $11 $1f $11
	add  hl, de                                      ; $41f7: $19
	pop  af                                          ; $41f8: $f1
	add  hl, de                                      ; $41f9: $19
	rst  $38                                         ; $41fa: $ff
	rst  $38                                         ; $41fb: $ff
	rst  JumpTable                                         ; $41fc: $df
	rst  $38                                         ; $41fd: $ff
	ld   [$dbff], a                                  ; $41fe: $ea $ff $db
	ld   d, h                                        ; $4201: $54
	ld   sp, $1911                                   ; $4202: $31 $11 $19
	pop  af                                          ; $4205: $f1
	ld   de, $11ff                                   ; $4206: $11 $ff $11
	rst  $38                                         ; $4209: $ff
	rst  $38                                         ; $420a: $ff
	rst  $38                                         ; $420b: $ff
	rst  $38                                         ; $420c: $ff
	pop  af                                          ; $420d: $f1
	cp   a                                           ; $420e: $bf
	pop  bc                                          ; $420f: $c1
	ld   de, $1111                                   ; $4210: $11 $11 $11
	rra                                              ; $4213: $1f

jr_0f6_4214:
	ld   de, $ff1f                                   ; $4214: $11 $1f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4217: $cf
	rst  $38                                         ; $4218: $ff
	rst  $38                                         ; $4219: $ff
	rst  $38                                         ; $421a: $ff
	rst  $38                                         ; $421b: $ff
	ld   d, [hl]                                     ; $421c: $56
	and  h                                           ; $421d: $a4
	ld   de, $1111                                   ; $421e: $11 $11 $11
	jr   jr_0f6_4214                                 ; $4221: $18 $f1

	rla                                              ; $4223: $17
	rst  $38                                         ; $4224: $ff
	ld   e, a                                        ; $4225: $5f
	rst  $38                                         ; $4226: $ff
	rst  $38                                         ; $4227: $ff
	cp   h                                           ; $4228: $bc
	rst  $38                                         ; $4229: $ff
	ld   de, $119f                                   ; $422a: $11 $9f $11
	ld   de, $1111                                   ; $422d: $11 $11 $11
	ei                                               ; $4230: $fb
	ld   de, $feff                                   ; $4231: $11 $ff $fe
	rst  $38                                         ; $4234: $ff
	rst  $38                                         ; $4235: $ff
	push af                                          ; $4236: $f5
	xor  a                                           ; $4237: $af
	pop  de                                          ; $4238: $d1
	add  hl, hl                                      ; $4239: $29
	ld   d, c                                        ; $423a: $51
	ld   de, $1111                                   ; $423b: $11 $11 $11
	rra                                              ; $423e: $1f
	ld   de, $f21f                                   ; $423f: $11 $1f $f2
	sbc  a                                           ; $4242: $9f
	rst  $38                                         ; $4243: $ff
	rst  $38                                         ; $4244: $ff
	sbc  a                                           ; $4245: $9f
	pop  af                                          ; $4246: $f1
	ld   d, $f7                                      ; $4247: $16 $f7
	ld   de, $1171                                   ; $4249: $11 $71 $11
	ld   de, $11f4                                   ; $424c: $11 $f4 $11
	rst  $38                                         ; $424f: $ff
	ld   [hl], c                                     ; $4250: $71
	rst  $38                                         ; $4251: $ff
	rst  $38                                         ; $4252: $ff
	ret  z                                           ; $4253: $c8

	rst  $38                                         ; $4254: $ff
	ld   de, $71af                                   ; $4255: $11 $af $71
	ld   a, [de]                                     ; $4258: $1a
	ld   b, c                                        ; $4259: $41
	ld   de, $411f                                   ; $425a: $11 $1f $41
	rra                                              ; $425d: $1f
	di                                               ; $425e: $f3
	rra                                              ; $425f: $1f
	rst  $38                                         ; $4260: $ff
	db   $fc                                         ; $4261: $fc
	xor  $f1                                         ; $4262: $ee $f1
	add  hl, de                                      ; $4264: $19
	rst  $30                                         ; $4265: $f7
	inc  d                                           ; $4266: $14
	ld   hl, sp+$11                                  ; $4267: $f8 $11
	ld   de, $11ff                                   ; $4269: $11 $ff $11
	rst  $38                                         ; $426c: $ff
	pop  af                                          ; $426d: $f1
	rst  $38                                         ; $426e: $ff
	rst  $38                                         ; $426f: $ff
	rst  $38                                         ; $4270: $ff
	cp   a                                           ; $4271: $bf
	and  c                                           ; $4272: $a1
	rra                                              ; $4273: $1f
	pop  af                                          ; $4274: $f1
	dec  e                                           ; $4275: $1d
	pop  hl                                          ; $4276: $e1
	ld   de, $f111                                   ; $4277: $11 $11 $f1
	ld   de, $1dff                                   ; $427a: $11 $ff $1d
	rst  $38                                         ; $427d: $ff
	rst  $38                                         ; $427e: $ff
	db   $fc                                         ; $427f: $fc
	rl   c                                           ; $4280: $cb $11
	rst  $38                                         ; $4282: $ff
	ld   de, $31df                                   ; $4283: $11 $df $31
	ld   de, $f11b                                   ; $4286: $11 $1b $f1
	dec  e                                           ; $4289: $1d
	rst  $38                                         ; $428a: $ff
	rra                                              ; $428b: $1f
	rst  $38                                         ; $428c: $ff
	rst  $28                                         ; $428d: $ef
	rst  $38                                         ; $428e: $ff
	add  h                                           ; $428f: $84
	ld   de, $11df                                   ; $4290: $11 $df $11
	xor  a                                           ; $4293: $af
	ld   hl, $1f11                                   ; $4294: $21 $11 $1f
	pop  af                                          ; $4297: $f1
	rra                                              ; $4298: $1f
	rst  $38                                         ; $4299: $ff
	rra                                              ; $429a: $1f
	rst  $38                                         ; $429b: $ff
	db   $db                                         ; $429c: $db
	rst  $38                                         ; $429d: $ff
	ret                                              ; $429e: $c9


	ld   de, $11df                                   ; $429f: $11 $df $11
	ld   l, a                                        ; $42a2: $6f
	ld   b, c                                        ; $42a3: $41
	ld   de, $e11c                                   ; $42a4: $11 $1c $e1
	ld   e, $ff                                      ; $42a7: $1e $ff
	rra                                              ; $42a9: $1f
	rst  $38                                         ; $42aa: $ff
	ld   a, [$a1ff]                                  ; $42ab: $fa $ff $a1
	dec  d                                           ; $42ae: $15
	call z, $9f11                                    ; $42af: $cc $11 $9f
	add  c                                           ; $42b2: $81
	ld   de, $f11a                                   ; $42b3: $11 $1a $f1
	jr   @+$01                                       ; $42b6: $18 $ff

	inc  e                                           ; $42b8: $1c
	rst  $38                                         ; $42b9: $ff
	db   $fd                                         ; $42ba: $fd
	rst  $38                                         ; $42bb: $ff
	push de                                          ; $42bc: $d5
	ld   [de], a                                     ; $42bd: $12
	cp   a                                           ; $42be: $bf
	ld   de, $915f                                   ; $42bf: $11 $5f $91
	ld   de, $f111                                   ; $42c2: $11 $11 $f1
	ld   de, $1aff                                   ; $42c5: $11 $ff $1a
	rst  $38                                         ; $42c8: $ff
	rst  $38                                         ; $42c9: $ff
	rst  $38                                         ; $42ca: $ff
	db   $db                                         ; $42cb: $db
	ld   b, c                                        ; $42cc: $41
	ld   e, a                                        ; $42cd: $5f
	or   c                                           ; $42ce: $b1
	dec  e                                           ; $42cf: $1d
	pop  hl                                          ; $42d0: $e1
	ld   de, $fc11                                   ; $42d1: $11 $11 $fc
	ld   de, $f1af                                   ; $42d4: $11 $af $f1
	rst  JumpTable                                         ; $42d7: $df
	rst  $38                                         ; $42d8: $ff
	rst  $38                                         ; $42d9: $ff
	db   $fd                                         ; $42da: $fd
	sub  [hl]                                        ; $42db: $96
	ld   b, [hl]                                     ; $42dc: $46
	db   $d3                                         ; $42dd: $d3
	ld   [de], a                                     ; $42de: $12
	or   a                                           ; $42df: $b7
	ld   de, $1f11                                   ; $42e0: $11 $11 $1f
	ld   sp, $ff1d                                   ; $42e3: $31 $1d $ff
	rra                                              ; $42e6: $1f
	rst  $38                                         ; $42e7: $ff
	rst  $38                                         ; $42e8: $ff
	db   $fd                                         ; $42e9: $fd
	adc  $b1                                         ; $42ea: $ce $b1
	ld   a, [hl]                                     ; $42ec: $7e
	and  h                                           ; $42ed: $a4
	dec  sp                                          ; $42ee: $3b
	ld   h, e                                        ; $42ef: $63
	ld   de, $f511                                   ; $42f0: $11 $11 $f5
	ld   de, $c1af                                   ; $42f3: $11 $af $c1
	rst  $38                                         ; $42f6: $ff
	rst  $38                                         ; $42f7: $ff
	rst  $38                                         ; $42f8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42f9: $cf
	rst  $38                                         ; $42fa: $ff
	ld   d, $fb                                      ; $42fb: $16 $fb
	ld   [hl-], a                                    ; $42fd: $32
	sub  l                                           ; $42fe: $95
	ld   b, c                                        ; $42ff: $41
	ld   de, $c11c                                   ; $4300: $11 $1c $c1
	ld   de, $17ff                                   ; $4303: $11 $ff $17
	rst  $38                                         ; $4306: $ff
	rst  $38                                         ; $4307: $ff
	db   $fd                                         ; $4308: $fd
	rst  $28                                         ; $4309: $ef
	ld   sp, hl                                      ; $430a: $f9
	ld   e, l                                        ; $430b: $5d
	ret  z                                           ; $430c: $c8

	ld   b, a                                        ; $430d: $47
	ld   h, h                                        ; $430e: $64
	ld   b, d                                        ; $430f: $42
	ld   de, $811b                                   ; $4310: $11 $1b $81
	ld   de, $18fb                                   ; $4313: $11 $fb $18
	rst  $28                                         ; $4316: $ef
	rst  $38                                         ; $4317: $ff
	db   $fd                                         ; $4318: $fd
	rst  $28                                         ; $4319: $ef
	ei                                               ; $431a: $fb
	adc  [hl]                                        ; $431b: $8e
	ret                                              ; $431c: $c9


	adc  c                                           ; $431d: $89
	ld   h, l                                        ; $431e: $65
	add  h                                           ; $431f: $84
	ld   de, $d112                                   ; $4320: $11 $12 $d1
	ld   de, $455b                                   ; $4323: $11 $5b $45
	xor  d                                           ; $4326: $aa
	cp   a                                           ; $4327: $bf
	rst  $38                                         ; $4328: $ff
	cp   a                                           ; $4329: $bf
	rst  $38                                         ; $432a: $ff
	rst  JumpTable                                         ; $432b: $df
	ei                                               ; $432c: $fb
	xor  c                                           ; $432d: $a9
	or   a                                           ; $432e: $b7
	add  [hl]                                        ; $432f: $86
	ld   b, d                                        ; $4330: $42
	ld   de, $211a                                   ; $4331: $11 $1a $21
	ld   de, $3586                                   ; $4334: $11 $86 $35
	ld   l, b                                        ; $4337: $68
	rst  $28                                         ; $4338: $ef
	ld   a, [$ffdf]                                  ; $4339: $fa $df $ff
	rst  $28                                         ; $433c: $ef
	call z, Call_0f6_798a                            ; $433d: $cc $8a $79
	sbc  b                                           ; $4340: $98
	ld   d, d                                        ; $4341: $52
	ld   hl, $714a                                   ; $4342: $21 $4a $71
	ld   de, $1167                                   ; $4345: $11 $67 $11
	ld   [hl], $ad                                   ; $4348: $36 $ad
	db   $ed                                         ; $434a: $ed
	xor  a                                           ; $434b: $af
	rst  $38                                         ; $434c: $ff
	call c, $9bdb                                    ; $434d: $dc $db $9b
	cp   d                                           ; $4350: $ba
	cp   d                                           ; $4351: $ba
	and  a                                           ; $4352: $a7
	adc  b                                           ; $4353: $88
	ld   d, h                                        ; $4354: $54
	ld   [hl], l                                     ; $4355: $75
	ld   de, $3113                                   ; $4356: $11 $13 $31
	dec  d                                           ; $4359: $15
	ld   l, b                                        ; $435a: $68
	xor  e                                           ; $435b: $ab
	set  3, a                                        ; $435c: $cb $df
	db   $eb                                         ; $435e: $eb
	cp   e                                           ; $435f: $bb
	cp   e                                           ; $4360: $bb
	sbc  $cc                                         ; $4361: $de $cc
	call z, $a9aa                                    ; $4363: $cc $aa $a9
	ld   h, h                                        ; $4366: $64
	ld   h, e                                        ; $4367: $63
	ld   de, $1111                                   ; $4368: $11 $11 $11
	inc  h                                           ; $436b: $24
	ld   b, l                                        ; $436c: $45
	ld   a, c                                        ; $436d: $79
	sbc  c                                           ; $436e: $99
	xor  h                                           ; $436f: $ac
	call c, $acc9                                    ; $4370: $dc $c9 $ac
	rst  $38                                         ; $4373: $ff
	db   $ec                                         ; $4374: $ec
	call z, $baee                                    ; $4375: $cc $ee $ba
	add  [hl]                                        ; $4378: $86
	ld   h, [hl]                                     ; $4379: $66
	ld   h, d                                        ; $437a: $62
	ld   de, $1111                                   ; $437b: $11 $11 $11
	ld   [de], a                                     ; $437e: $12
	dec  h                                           ; $437f: $25
	ld   a, b                                        ; $4380: $78
	sbc  c                                           ; $4381: $99
	cp   h                                           ; $4382: $bc
	db   $db                                         ; $4383: $db
	cp   d                                           ; $4384: $ba
	cp   a                                           ; $4385: $bf
	rst  $38                                         ; $4386: $ff
	db   $dd                                         ; $4387: $dd
	cp   [hl]                                        ; $4388: $be
	rst  $38                                         ; $4389: $ff
	ret  z                                           ; $438a: $c8

	ld   l, b                                        ; $438b: $68
	xor  b                                           ; $438c: $a8
	ld   d, c                                        ; $438d: $51
	ld   de, $1112                                   ; $438e: $11 $12 $11
	ld   de, $7646                                   ; $4391: $11 $46 $76
	ld   [hl], a                                     ; $4394: $77
	sbc  d                                           ; $4395: $9a
	res  7, d                                        ; $4396: $cb $ba
	cp   [hl]                                        ; $4398: $be
	rst  $28                                         ; $4399: $ef
	db   $fd                                         ; $439a: $fd
	xor  $ef                                         ; $439b: $ee $ef
	db   $eb                                         ; $439d: $eb
	xor  c                                           ; $439e: $a9
	sbc  b                                           ; $439f: $98
	ld   h, l                                        ; $43a0: $65
	ld   sp, $1111                                   ; $43a1: $31 $11 $11
	ld   de, $4523                                   ; $43a4: $11 $23 $45
	ld   h, a                                        ; $43a7: $67
	add  a                                           ; $43a8: $87
	sbc  d                                           ; $43a9: $9a
	cp   e                                           ; $43aa: $bb
	cp   h                                           ; $43ab: $bc
	call $ffee                                       ; $43ac: $cd $ee $ff
	xor  $ed                                         ; $43af: $ee $ed
	db   $db                                         ; $43b1: $db
	cp   e                                           ; $43b2: $bb
	sub  a                                           ; $43b3: $97
	ld   b, e                                        ; $43b4: $43
	ld   d, l                                        ; $43b5: $55
	ld   hl, $1211                                   ; $43b6: $21 $11 $12
	ld   [hl+], a                                    ; $43b9: $22
	inc  sp                                          ; $43ba: $33
	ld   b, [hl]                                     ; $43bb: $46
	adc  b                                           ; $43bc: $88
	adc  b                                           ; $43bd: $88
	sbc  d                                           ; $43be: $9a
	call $cddc                                       ; $43bf: $cd $dc $cd
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	db   $ec                                         ; $43c4: $ec
	call $97ec                                       ; $43c5: $cd $ec $97
	ld   d, [hl]                                     ; $43c8: $56
	ld   [hl], a                                     ; $43c9: $77
	ld   b, c                                        ; $43ca: $41
	ld   de, $3113                                   ; $43cb: $11 $13 $31
	ld   bc, $7935                                   ; $43ce: $01 $35 $79
	ld   [hl], a                                     ; $43d1: $77
	adc  d                                           ; $43d2: $8a
	set  1, h                                        ; $43d3: $cb $cc
	call $ffde                                       ; $43d5: $cd $de $ff
	cp   $cd                                         ; $43d8: $fe $cd
	db   $dd                                         ; $43da: $dd
	cp   d                                           ; $43db: $ba
	halt                                             ; $43dc: $76
	ld   h, l                                        ; $43dd: $65
	ld   d, h                                        ; $43de: $54
	ld   de, $1211                                   ; $43df: $11 $11 $12
	ld   de, $5723                                   ; $43e2: $11 $23 $57
	add  a                                           ; $43e5: $87
	ld   a, c                                        ; $43e6: $79
	xor  e                                           ; $43e7: $ab
	cp   h                                           ; $43e8: $bc
	cp   h                                           ; $43e9: $bc
	sbc  $fe                                         ; $43ea: $de $fe
	rst  $28                                         ; $43ec: $ef
	sbc  $ed                                         ; $43ed: $de $ed
	jp   z, $86a9                                    ; $43ef: $ca $a9 $86

	ld   b, e                                        ; $43f2: $43
	ld   b, e                                        ; $43f3: $43
	ld   de, $0211                                   ; $43f4: $11 $11 $02
	inc  [hl]                                        ; $43f7: $34
	inc  sp                                          ; $43f8: $33
	ld   d, a                                        ; $43f9: $57
	adc  b                                           ; $43fa: $88
	sbc  c                                           ; $43fb: $99
	xor  d                                           ; $43fc: $aa
	call $dedd                                       ; $43fd: $cd $dd $de
	rst  $28                                         ; $4400: $ef
	rst  $38                                         ; $4401: $ff
	db   $ed                                         ; $4402: $ed
	call c, $87a9                                    ; $4403: $dc $a9 $87
	ld   h, h                                        ; $4406: $64
	ld   b, h                                        ; $4407: $44
	ld   de, $1111                                   ; $4408: $11 $11 $11
	ld   [de], a                                     ; $440b: $12
	inc  sp                                          ; $440c: $33
	ld   d, a                                        ; $440d: $57
	sbc  b                                           ; $440e: $98
	adc  d                                           ; $440f: $8a
	cp   e                                           ; $4410: $bb
	call $eecd                                       ; $4411: $cd $cd $ee
	xor  $ff                                         ; $4414: $ee $ff
	cp   $cc                                         ; $4416: $fe $cc
	cp   c                                           ; $4418: $b9
	add  a                                           ; $4419: $87
	ld   d, e                                        ; $441a: $53
	inc  [hl]                                        ; $441b: $34
	ld   hl, $1111                                   ; $441c: $21 $11 $11
	inc  hl                                          ; $441f: $23
	inc  sp                                          ; $4420: $33
	ld   b, a                                        ; $4421: $47
	xor  e                                           ; $4422: $ab
	sbc  c                                           ; $4423: $99
	xor  h                                           ; $4424: $ac
	call $dedc                                       ; $4425: $cd $dc $de
	rst  $38                                         ; $4428: $ff
	db   $eb                                         ; $4429: $eb
	call $b7ee                                       ; $442a: $cd $ee $b7
	ld   [hl-], a                                    ; $442d: $32
	dec  h                                           ; $442e: $25
	ld   [hl], d                                     ; $442f: $72
	ld   de, $3411                                   ; $4430: $11 $11 $34
	ld   b, e                                        ; $4433: $43
	dec  h                                           ; $4434: $25
	xor  l                                           ; $4435: $ad
	jp   c, $cda9                                    ; $4436: $da $a9 $cd

	db   $ed                                         ; $4439: $ed
	xor  c                                           ; $443a: $a9
	xor  a                                           ; $443b: $af
	rst  $38                                         ; $443c: $ff
	db   $db                                         ; $443d: $db
	cp   d                                           ; $443e: $ba
	xor  b                                           ; $443f: $a8
	ld   [hl], h                                     ; $4440: $74
	inc  de                                          ; $4441: $13
	ld   b, d                                        ; $4442: $42
	ld   de, $1311                                   ; $4443: $11 $11 $13
	ld   h, [hl]                                     ; $4446: $66
	ld   d, a                                        ; $4447: $57
	cp   l                                           ; $4448: $bd
	call c, $dced                                    ; $4449: $dc $ed $dc
	call c, $cf9a                                    ; $444c: $dc $9a $cf
	call c, $97ca                                    ; $444f: $dc $ca $97
	ld   h, e                                        ; $4452: $63
	ld   de, $1145                                   ; $4453: $11 $45 $11
	ld   de, $9a34                                   ; $4456: $11 $34 $9a
	sub  a                                           ; $4459: $97
	cp   a                                           ; $445a: $bf
	rst  $38                                         ; $445b: $ff
	xor  $ec                                         ; $445c: $ee $ec
	xor  e                                           ; $445e: $ab
	cp   c                                           ; $445f: $b9
	sbc  e                                           ; $4460: $9b
	res  5, b                                        ; $4461: $cb $a8
	ld   h, d                                        ; $4463: $62
	ld   de, $3113                                   ; $4464: $11 $13 $31
	ld   de, $7b15                                   ; $4467: $11 $15 $7b
	cp   e                                           ; $446a: $bb
	rst  JumpTable                                         ; $446b: $df
	rst  $38                                         ; $446c: $ff
	rst  $38                                         ; $446d: $ff
	cp   $ca                                         ; $446e: $fe $ca
	cp   e                                           ; $4470: $bb
	and  a                                           ; $4471: $a7
	adc  c                                           ; $4472: $89
	ld   [hl], l                                     ; $4473: $75
	ld   sp, $1211                                   ; $4474: $31 $11 $12
	ld   d, c                                        ; $4477: $51
	ld   de, $af37                                   ; $4478: $11 $37 $af
	cp   $ef                                         ; $447b: $fe $ef
	rst  $38                                         ; $447d: $ff
	rst  $38                                         ; $447e: $ff
	db   $fd                                         ; $447f: $fd
	adc  d                                           ; $4480: $8a
	db   $db                                         ; $4481: $db
	ld   h, e                                        ; $4482: $63
	ld   [hl], a                                     ; $4483: $77
	ld   d, d                                        ; $4484: $52
	ld   de, $2811                                   ; $4485: $11 $11 $28
	ld   de, $aa14                                   ; $4488: $11 $14 $aa
	rst  $38                                         ; $448b: $ff
	db   $fd                                         ; $448c: $fd
	rst  $38                                         ; $448d: $ff
	rst  $38                                         ; $448e: $ff
	cp   $a7                                         ; $448f: $fe $a7
	xor  a                                           ; $4491: $af
	or   e                                           ; $4492: $b3
	add  hl, hl                                      ; $4493: $29
	sub  h                                           ; $4494: $94
	ld   de, $1811                                   ; $4495: $11 $11 $18
	add  c                                           ; $4498: $81
	ld   de, $bfbc                                   ; $4499: $11 $bc $bf
	rst  $38                                         ; $449c: $ff
	rst  JumpTable                                         ; $449d: $df
	rst  $38                                         ; $449e: $ff
	db   $eb                                         ; $449f: $eb
	reti                                             ; $44a0: $d9


	ld   l, d                                        ; $44a1: $6a
	ld   hl, sp+$13                                  ; $44a2: $f8 $13
	ret                                              ; $44a4: $c9


	ld   de, $1411                                   ; $44a5: $11 $11 $14
	pop  af                                          ; $44a8: $f1
	ld   de, $cfaf                                   ; $44a9: $11 $af $cf
	rst  $38                                         ; $44ac: $ff
	rst  JumpTable                                         ; $44ad: $df
	rst  $38                                         ; $44ae: $ff
	push af                                          ; $44af: $f5
	cp   l                                           ; $44b0: $bd
	sub  a                                           ; $44b1: $97
	db   $dd                                         ; $44b2: $dd
	ld   de, $21ce                                   ; $44b3: $11 $ce $21
	ld   de, $f511                                   ; $44b6: $11 $11 $f5
	ld   de, $ea9f                                   ; $44b9: $11 $9f $ea
	rst  $38                                         ; $44bc: $ff
	rst  $28                                         ; $44bd: $ef
	rst  $38                                         ; $44be: $ff
	di                                               ; $44bf: $f3
	adc  a                                           ; $44c0: $8f
	call nc, Call_0f6_419d                           ; $44c1: $d4 $9d $41
	ld   l, a                                        ; $44c4: $6f
	sub  c                                           ; $44c5: $91
	ld   de, $bd11                                   ; $44c6: $11 $11 $bd
	ld   de, $f41f                                   ; $44c9: $11 $1f $f4
	xor  a                                           ; $44cc: $af
	ld   sp, hl                                      ; $44cd: $f9
	rst  $38                                         ; $44ce: $ff
	pop  af                                          ; $44cf: $f1
	rra                                              ; $44d0: $1f
	or   $2d                                         ; $44d1: $f6 $2d
	pop  de                                          ; $44d3: $d1
	dec  e                                           ; $44d4: $1d
	pop  af                                          ; $44d5: $f1
	ld   de, $5f11                                   ; $44d6: $11 $11 $5f
	ld   h, c                                        ; $44d9: $61
	inc  e                                           ; $44da: $1c
	db   $fc                                         ; $44db: $fc
	ld   a, [hl+]                                    ; $44dc: $2a
	db   $fc                                         ; $44dd: $fc
	adc  a                                           ; $44de: $8f
	rst  $38                                         ; $44df: $ff
	inc  de                                          ; $44e0: $13
	rst  $38                                         ; $44e1: $ff
	ld   h, [hl]                                     ; $44e2: $66
	ret                                              ; $44e3: $c9


	ld   [hl], $da                                   ; $44e4: $36 $da
	ld   de, $1812                                   ; $44e6: $11 $12 $18
	rst  $30                                         ; $44e9: $f7
	ld   de, $735f                                   ; $44ea: $11 $5f $73
	xor  l                                           ; $44ed: $ad
	ld   h, c                                        ; $44ee: $61
	rst  $28                                         ; $44ef: $ef
	or   $7e                                         ; $44f0: $f6 $7e
	ret  c                                           ; $44f2: $d8

	sbc  h                                           ; $44f3: $9c
	ret                                              ; $44f4: $c9


	adc  e                                           ; $44f5: $8b
	cp   d                                           ; $44f6: $ba
	ld   [hl], l                                     ; $44f7: $75
	ld   h, l                                        ; $44f8: $65
	scf                                              ; $44f9: $37
	jp   hl                                          ; $44fa: $e9


	ld   de, $5416                                   ; $44fb: $11 $16 $54
	adc  b                                           ; $44fe: $88
	ld   hl, $f7df                                   ; $44ff: $21 $df $f7
	sbc  a                                           ; $4502: $9f
	ld   sp, hl                                      ; $4503: $f9
	xor  e                                           ; $4504: $ab
	add  a                                           ; $4505: $87
	rst  JumpTable                                         ; $4506: $df
	and  [hl]                                        ; $4507: $a6
	xor  b                                           ; $4508: $a8
	ld   b, c                                        ; $4509: $41
	ld   de, $714d                                   ; $450a: $11 $4d $71
	ld   de, $3dd7                                   ; $450d: $11 $d7 $3d
	push af                                          ; $4510: $f5
	ld   e, a                                        ; $4511: $5f
	rst  $38                                         ; $4512: $ff
	ld   e, $ff                                      ; $4513: $1e $ff
	ld   e, e                                        ; $4515: $5b
	add  c                                           ; $4516: $81
	ccf                                              ; $4517: $3f
	pop  af                                          ; $4518: $f1
	inc  e                                           ; $4519: $1c
	or   c                                           ; $451a: $b1
	ld   de, $f118                                   ; $451b: $11 $18 $f1
	ld   de, $2fff                                   ; $451e: $11 $ff $2f
	ld   hl, sp+$5f                                  ; $4521: $f8 $5f
	ei                                               ; $4523: $fb
	rra                                              ; $4524: $1f
	ei                                               ; $4525: $fb
	ld   d, $31                                      ; $4526: $16 $31
	ld   e, a                                        ; $4528: $5f
	pop  af                                          ; $4529: $f1
	rra                                              ; $452a: $1f
	or   c                                           ; $452b: $b1
	ld   de, $611f                                   ; $452c: $11 $1f $61
	rra                                              ; $452f: $1f
	di                                               ; $4530: $f3
	sbc  a                                           ; $4531: $9f
	ldh  a, [c]                                      ; $4532: $f2
	rst  $38                                         ; $4533: $ff
	pop  af                                          ; $4534: $f1
	ld   a, a                                        ; $4535: $7f
	pop  af                                          ; $4536: $f1
	dec  d                                           ; $4537: $15
	ld   [de], a                                     ; $4538: $12
	rst  $38                                         ; $4539: $ff
	ld   de, $11df                                   ; $453a: $11 $df $11
	ld   de, $11fe                                   ; $453d: $11 $fe $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4540: $cf
	ld   b, [hl]                                     ; $4541: $46
	rst  $38                                         ; $4542: $ff
	rra                                              ; $4543: $1f
	rst  $38                                         ; $4544: $ff
	jr   @+$01                                       ; $4545: $18 $ff

	ld   de, $4f21                                   ; $4547: $11 $21 $4f
	pop  af                                          ; $454a: $f1
	inc  e                                           ; $454b: $1c
	push af                                          ; $454c: $f5
	ld   de, $f11f                                   ; $454d: $11 $1f $f1
	ld   d, $f9                                      ; $4550: $16 $f9
	cpl                                              ; $4552: $2f
	db   $f4                                         ; $4553: $f4
	rst  $38                                         ; $4554: $ff
	pop  af                                          ; $4555: $f1
	ld   a, a                                        ; $4556: $7f
	ldh  a, [c]                                      ; $4557: $f2
	ld   de, rAUD1HIGH                                   ; $4558: $11 $14 $ff
	ld   d, c                                        ; $455b: $51
	cp   a                                           ; $455c: $bf
	add  c                                           ; $455d: $81
	ld   de, $11ff                                   ; $455e: $11 $ff $11
	rra                                              ; $4561: $1f
	pop  af                                          ; $4562: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4563: $cf
	sbc  a                                           ; $4564: $9f
	rst  $38                                         ; $4565: $ff
	rla                                              ; $4566: $17
	rst  $38                                         ; $4567: $ff
	ld   b, c                                        ; $4568: $41
	inc  d                                           ; $4569: $14
	ld   l, h                                        ; $456a: $6c
	or   a                                           ; $456b: $b7
	ld   c, h                                        ; $456c: $4c
	ld   hl, sp+$11                                  ; $456d: $f8 $11
	rla                                              ; $456f: $17
	ldh  a, [c]                                      ; $4570: $f2
	ld   de, $11ff                                   ; $4571: $11 $ff $11
	rst  $38                                         ; $4574: $ff
	rst  $38                                         ; $4575: $ff
	push af                                          ; $4576: $f5
	xor  a                                           ; $4577: $af
	or   $11                                         ; $4578: $f6 $11
	add  [hl]                                        ; $457a: $86
	inc  d                                           ; $457b: $14
	rst  $28                                         ; $457c: $ef
	adc  a                                           ; $457d: $8f
	jp   $1511                                       ; $457e: $c3 $11 $15


	pop  af                                          ; $4581: $f1
	ld   de, $1efb                                   ; $4582: $11 $fb $1e
	rst  $38                                         ; $4585: $ff
	rst  $38                                         ; $4586: $ff
	db   $fd                                         ; $4587: $fd
	rst  $28                                         ; $4588: $ef
	ldh  a, [c]                                      ; $4589: $f2
	ld   [de], a                                     ; $458a: $12
	sub  c                                           ; $458b: $91
	inc  e                                           ; $458c: $1c
	db   $fc                                         ; $458d: $fc
	adc  a                                           ; $458e: $8f
	jp   c, $1a11                                    ; $458f: $da $11 $1a

	pop  af                                          ; $4592: $f1
	inc  de                                          ; $4593: $13
	db   $fd                                         ; $4594: $fd
	dec  de                                          ; $4595: $1b
	rst  $38                                         ; $4596: $ff
	rst  $38                                         ; $4597: $ff
	ei                                               ; $4598: $fb
	rst  JumpTable                                         ; $4599: $df
	pop  bc                                          ; $459a: $c1
	dec  d                                           ; $459b: $15
	ld   d, c                                        ; $459c: $51
	ld   e, $ff                                      ; $459d: $1e $ff
	xor  a                                           ; $459f: $af
	cp   $11                                         ; $45a0: $fe $11
	inc  d                                           ; $45a2: $14
	pop  af                                          ; $45a3: $f1
	ld   de, $14ff                                   ; $45a4: $11 $ff $14
	rst  $38                                         ; $45a7: $ff
	rst  $38                                         ; $45a8: $ff
	db   $fd                                         ; $45a9: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45aa: $cf
	ld   [hl], c                                     ; $45ab: $71
	ld   [de], a                                     ; $45ac: $12
	ld   b, c                                        ; $45ad: $41
	inc  e                                           ; $45ae: $1c
	rst  $38                                         ; $45af: $ff
	cp   a                                           ; $45b0: $bf
	rst  $38                                         ; $45b1: $ff
	sub  c                                           ; $45b2: $91
	ld   de, $11fb                                   ; $45b3: $11 $fb $11
	rst  $38                                         ; $45b6: $ff
	sub  c                                           ; $45b7: $91
	rst  $38                                         ; $45b8: $ff
	rst  $38                                         ; $45b9: $ff
	rst  $38                                         ; $45ba: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45bb: $cf
	or   c                                           ; $45bc: $b1
	ld   de, $1351                                   ; $45bd: $11 $51 $13
	rst  $38                                         ; $45c0: $ff
	cp   $ff                                         ; $45c1: $fe $ff
	pop  af                                          ; $45c3: $f1
	ld   de, $111f                                   ; $45c4: $11 $1f $11
	rra                                              ; $45c7: $1f
	di                                               ; $45c8: $f3
	rra                                              ; $45c9: $1f
	rst  $38                                         ; $45ca: $ff
	rst  JumpTable                                         ; $45cb: $df
	ei                                               ; $45cc: $fb
	pop  hl                                          ; $45cd: $e1
	ld   de, $1121                                   ; $45ce: $11 $21 $11
	rst  $38                                         ; $45d1: $ff
	db   $fd                                         ; $45d2: $fd
	rst  $38                                         ; $45d3: $ff
	rst  $38                                         ; $45d4: $ff
	ld   de, $a211                                   ; $45d5: $11 $11 $a2
	ld   de, $63ff                                   ; $45d8: $11 $ff $63
	rst  $38                                         ; $45db: $ff
	db   $fd                                         ; $45dc: $fd
	rst  $38                                         ; $45dd: $ff
	ld   h, [hl]                                     ; $45de: $66
	ld   de, $1111                                   ; $45df: $11 $11 $11
	rra                                              ; $45e2: $1f
	rst  $38                                         ; $45e3: $ff
	rst  $38                                         ; $45e4: $ff
	rst  $38                                         ; $45e5: $ff
	pop  af                                          ; $45e6: $f1
	ld   de, $a111                                   ; $45e7: $11 $11 $a1
	dec  e                                           ; $45ea: $1d
	rst  $38                                         ; $45eb: $ff
	ld   a, a                                        ; $45ec: $7f
	rst  $38                                         ; $45ed: $ff
	rst  $38                                         ; $45ee: $ff
	db   $f4                                         ; $45ef: $f4
	ld   de, $1111                                   ; $45f0: $11 $11 $11
	ld   de, $ffff                                   ; $45f3: $11 $ff $ff
	rst  $38                                         ; $45f6: $ff
	rst  $38                                         ; $45f7: $ff
	ld   sp, $1111                                   ; $45f8: $31 $11 $11
	pop  af                                          ; $45fb: $f1
	rra                                              ; $45fc: $1f
	rst  $38                                         ; $45fd: $ff
	rst  JumpTable                                         ; $45fe: $df
	rst  $38                                         ; $45ff: $ff
	ei                                               ; $4600: $fb
	add  c                                           ; $4601: $81
	ld   de, $1111                                   ; $4602: $11 $11 $11
	dec  d                                           ; $4605: $15
	rst  $38                                         ; $4606: $ff
	rst  $38                                         ; $4607: $ff
	rst  $38                                         ; $4608: $ff
	db   $fc                                         ; $4609: $fc
	ld   de, $1111                                   ; $460a: $11 $11 $11
	pop  af                                          ; $460d: $f1
	rra                                              ; $460e: $1f
	rst  $38                                         ; $460f: $ff
	rst  $38                                         ; $4610: $ff
	rst  $38                                         ; $4611: $ff
	or   [hl]                                        ; $4612: $b6
	ld   de, $1111                                   ; $4613: $11 $11 $11
	ld   d, [hl]                                     ; $4616: $56
	ld   a, h                                        ; $4617: $7c
	rst  $38                                         ; $4618: $ff
	rst  $38                                         ; $4619: $ff
	rst  $38                                         ; $461a: $ff
	db   $f4                                         ; $461b: $f4
	ld   de, $1111                                   ; $461c: $11 $11 $11
	pop  af                                          ; $461f: $f1
	rra                                              ; $4620: $1f
	rst  $38                                         ; $4621: $ff
	rst  $38                                         ; $4622: $ff
	rst  $38                                         ; $4623: $ff
	ld   h, c                                        ; $4624: $61
	ld   de, $1111                                   ; $4625: $11 $11 $11
	sbc  a                                           ; $4628: $9f
	db   $dd                                         ; $4629: $dd
	rst  $38                                         ; $462a: $ff
	rst  $38                                         ; $462b: $ff
	rst  $38                                         ; $462c: $ff
	di                                               ; $462d: $f3
	ld   de, $1111                                   ; $462e: $11 $11 $11
	ei                                               ; $4631: $fb
	rra                                              ; $4632: $1f
	rst  $38                                         ; $4633: $ff
	rst  $38                                         ; $4634: $ff
	rst  $38                                         ; $4635: $ff
	ld   b, c                                        ; $4636: $41
	ld   de, $1111                                   ; $4637: $11 $11 $11
	xor  a                                           ; $463a: $af
	db   $fd                                         ; $463b: $fd
	rst  $38                                         ; $463c: $ff
	rst  $38                                         ; $463d: $ff
	rst  JumpTable                                         ; $463e: $df
	db   $e3                                         ; $463f: $e3
	ld   de, $1111                                   ; $4640: $11 $11 $11
	rst  $38                                         ; $4643: $ff
	inc  e                                           ; $4644: $1c
	rst  $38                                         ; $4645: $ff
	ld   a, [$11ff]                                  ; $4646: $fa $ff $11
	ld   de, $1111                                   ; $4649: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $464c: $cf
	rst  $38                                         ; $464d: $ff
	rst  $38                                         ; $464e: $ff
	rst  $38                                         ; $464f: $ff
	db   $eb                                         ; $4650: $eb
	add  $11                                         ; $4651: $c6 $11
	ld   de, rAUD1LEN                                   ; $4653: $11 $11 $ff
	ld   de, $f2ff                                   ; $4656: $11 $ff $f2
	rst  $38                                         ; $4659: $ff
	ld   hl, $1111                                   ; $465a: $21 $11 $11
	ld   de, $fa6f                                   ; $465d: $11 $6f $fa
	rst  $38                                         ; $4660: $ff
	rst  $38                                         ; $4661: $ff
	ld   sp, hl                                      ; $4662: $f9
	adc  b                                           ; $4663: $88
	ld   sp, $1111                                   ; $4664: $31 $11 $11
	rra                                              ; $4667: $1f
	pop  af                                          ; $4668: $f1
	rst  $38                                         ; $4669: $ff
	ld   sp, hl                                      ; $466a: $f9
	ld   l, a                                        ; $466b: $6f
	pop  af                                          ; $466c: $f1
	ld   de, $1111                                   ; $466d: $11 $11 $11
	rra                                              ; $4670: $1f
	ld   a, [$feef]                                  ; $4671: $fa $ef $fe
	rst  $38                                         ; $4674: $ff
	sub  [hl]                                        ; $4675: $96
	ld   h, c                                        ; $4676: $61
	ld   de, $1111                                   ; $4677: $11 $11 $11
	ld   sp, hl                                      ; $467a: $f9
	rra                                              ; $467b: $1f
	rst  $38                                         ; $467c: $ff
	dec  de                                          ; $467d: $1b
	ld   a, [$1111]                                  ; $467e: $fa $11 $11
	ld   hl, rAUD1LEN                                   ; $4681: $21 $11 $ff
	ld   c, [hl]                                     ; $4684: $4e
	rst  $38                                         ; $4685: $ff
	ld   c, a                                        ; $4686: $4f
	db   $fc                                         ; $4687: $fc
	dec  h                                           ; $4688: $25
	ld   h, c                                        ; $4689: $61
	ld   de, $1f11                                   ; $468a: $11 $11 $1f
	pop  af                                          ; $468d: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $468e: $cf
	push af                                          ; $468f: $f5
	ccf                                              ; $4690: $3f
	pop  af                                          ; $4691: $f1
	ld   bc, $1114                                   ; $4692: $01 $14 $11
	rra                                              ; $4695: $1f
	ldh  a, [c]                                      ; $4696: $f2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4697: $cf
	rst  $30                                         ; $4698: $f7
	sbc  a                                           ; $4699: $9f
	db   $f4                                         ; $469a: $f4
	rla                                              ; $469b: $17
	ld   de, $1111                                   ; $469c: $11 $11 $11
	cpl                                              ; $469f: $2f
	add  c                                           ; $46a0: $81
	rst  $38                                         ; $46a1: $ff
	pop  af                                          ; $46a2: $f1
	rst  $38                                         ; $46a3: $ff
	sub  c                                           ; $46a4: $91
	ld   hl, $1113                                   ; $46a5: $21 $13 $11
	ld   c, a                                        ; $46a8: $4f
	call nc, $f7ff                                   ; $46a9: $d4 $ff $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46ac: $cf
	push af                                          ; $46ad: $f5
	inc  de                                          ; $46ae: $13
	ld   d, l                                        ; $46af: $55
	ld   de, $1f11                                   ; $46b0: $11 $11 $1f
	pop  af                                          ; $46b3: $f1
	ld   e, a                                        ; $46b4: $5f
	or   $2f                                         ; $46b5: $f6 $2f
	pop  af                                          ; $46b7: $f1
	ld   b, c                                        ; $46b8: $41
	ld   [de], a                                     ; $46b9: $12
	ld   de, $f21f                                   ; $46ba: $11 $1f $f2
	cp   a                                           ; $46bd: $bf
	or   $9f                                         ; $46be: $f6 $9f
	ret  c                                           ; $46c0: $d8

	ld   b, d                                        ; $46c1: $42
	dec  hl                                          ; $46c2: $2b
	ld   b, c                                        ; $46c3: $41
	inc  d                                           ; $46c4: $14
	ld   de, $11ff                                   ; $46c5: $11 $ff $11
	rst  $38                                         ; $46c8: $ff
	ld   b, c                                        ; $46c9: $41
	rst  $38                                         ; $46ca: $ff
	rla                                              ; $46cb: $17
	ld   sp, $1137                                   ; $46cc: $31 $37 $11
	rst  $38                                         ; $46cf: $ff
	ld   [hl], $ff                                   ; $46d0: $36 $ff
	adc  b                                           ; $46d2: $88
	res  3, b                                        ; $46d3: $cb $98
	ld   [hl], d                                     ; $46d5: $72
	ret                                              ; $46d6: $c9


	ld   de, $1151                                   ; $46d7: $11 $51 $11
	db   $fd                                         ; $46da: $fd
	rra                                              ; $46db: $1f
	rst  $38                                         ; $46dc: $ff
	dec  de                                          ; $46dd: $1b
	ld   sp, hl                                      ; $46de: $f9
	ld   e, c                                        ; $46df: $59
	ld   de, $1161                                   ; $46e0: $11 $61 $11
	ld   sp, hl                                      ; $46e3: $f9
	rra                                              ; $46e4: $1f
	rst  $38                                         ; $46e5: $ff
	adc  a                                           ; $46e6: $8f
	xor  c                                           ; $46e7: $a9
	sbc  h                                           ; $46e8: $9c
	inc  hl                                          ; $46e9: $23
	ld   hl, sp+$12                                  ; $46ea: $f8 $12
	add  c                                           ; $46ec: $81
	ld   de, $11ff                                   ; $46ed: $11 $ff $11
	rst  $38                                         ; $46f0: $ff
	or   h                                           ; $46f1: $b4
	rst  $38                                         ; $46f2: $ff
	ld   c, d                                        ; $46f3: $4a
	ld   de, $1165                                   ; $46f4: $11 $65 $11
	rst  $38                                         ; $46f7: $ff
	ld   a, [de]                                     ; $46f8: $1a
	rst  $38                                         ; $46f9: $ff
	cp   a                                           ; $46fa: $bf
	ld   hl, sp-$66                                  ; $46fb: $f8 $9a
	add  c                                           ; $46fd: $81
	sbc  d                                           ; $46fe: $9a
	ld   d, e                                        ; $46ff: $53
	ld   h, a                                        ; $4700: $67
	ld   de, $f113                                   ; $4701: $11 $13 $f1
	rra                                              ; $4704: $1f
	rst  $38                                         ; $4705: $ff
	inc  e                                           ; $4706: $1c
	ld   sp, hl                                      ; $4707: $f9
	ld   b, c                                        ; $4708: $41
	rla                                              ; $4709: $17
	ld   h, c                                        ; $470a: $61
	inc  e                                           ; $470b: $1c
	push af                                          ; $470c: $f5
	ld   c, a                                        ; $470d: $4f
	db   $fd                                         ; $470e: $fd
	sbc  a                                           ; $470f: $9f
	or   a                                           ; $4710: $b7
	ld   a, b                                        ; $4711: $78
	inc  d                                           ; $4712: $14
	sub  $38                                         ; $4713: $d6 $38
	and  e                                           ; $4715: $a3
	ld   de, $f11e                                   ; $4716: $11 $1e $f1
	rra                                              ; $4719: $1f
	ld   sp, hl                                      ; $471a: $f9
	rra                                              ; $471b: $1f
	push af                                          ; $471c: $f5
	ld   sp, $1157                                   ; $471d: $31 $57 $11
	rra                                              ; $4720: $1f
	db   $f4                                         ; $4721: $f4
	xor  a                                           ; $4722: $af
	ld   sp, hl                                      ; $4723: $f9
	sbc  [hl]                                        ; $4724: $9e
	or   l                                           ; $4725: $b5
	ld   b, [hl]                                     ; $4726: $46
	ld   c, d                                        ; $4727: $4a
	sub  l                                           ; $4728: $95
	sbc  h                                           ; $4729: $9c
	and  h                                           ; $472a: $a4
	ld   sp, rAUD1LEN                                   ; $472b: $31 $11 $ff
	ld   de, $6cff                                   ; $472e: $11 $ff $6c
	cp   $5e                                         ; $4731: $fe $5e
	ld   de, $1175                                   ; $4733: $11 $75 $11
	db   $fd                                         ; $4736: $fd
	ccf                                              ; $4737: $3f
	rst  $38                                         ; $4738: $ff
	adc  a                                           ; $4739: $8f
	or   h                                           ; $473a: $b4
	ld   d, l                                        ; $473b: $55
	ld   b, e                                        ; $473c: $43
	ret  c                                           ; $473d: $d8

	ld   l, h                                        ; $473e: $6c
	ld   sp, hl                                      ; $473f: $f9
	ld   l, d                                        ; $4740: $6a
	ld   b, c                                        ; $4741: $41
	ld   de, $13ff                                   ; $4742: $11 $ff $13
	rst  $38                                         ; $4745: $ff
	sbc  e                                           ; $4746: $9b
	rst  $38                                         ; $4747: $ff
	ld   a, d                                        ; $4748: $7a
	ld   [de], a                                     ; $4749: $12
	ld   [hl], d                                     ; $474a: $72
	ld   de, $4ffc                                   ; $474b: $11 $fc $4f
	rst  $38                                         ; $474e: $ff
	xor  a                                           ; $474f: $af
	or   h                                           ; $4750: $b4
	ld   d, e                                        ; $4751: $53
	ld   [de], a                                     ; $4752: $12
	xor  c                                           ; $4753: $a9
	adc  a                                           ; $4754: $8f
	ei                                               ; $4755: $fb
	sbc  e                                           ; $4756: $9b
	add  e                                           ; $4757: $83
	ld   de, $8f11                                   ; $4758: $11 $11 $8f
	ld   de, $caff                                   ; $475b: $11 $ff $ca
	rst  $38                                         ; $475e: $ff
	ld   b, h                                        ; $475f: $44
	ld   de, $1113                                   ; $4760: $11 $13 $11
	rst  $38                                         ; $4763: $ff
	cp   a                                           ; $4764: $bf
	rst  $38                                         ; $4765: $ff
	cp   d                                           ; $4766: $ba
	ld   [hl], h                                     ; $4767: $74
	ld   [hl+], a                                    ; $4768: $22
	ld   [de], a                                     ; $4769: $12
	adc  e                                           ; $476a: $8b
	cp   l                                           ; $476b: $bd
	rst  $38                                         ; $476c: $ff
	jp   hl                                          ; $476d: $e9


	and  [hl]                                        ; $476e: $a6
	ld   de, $1111                                   ; $476f: $11 $11 $11
	rra                                              ; $4772: $1f
	pop  af                                          ; $4773: $f1
	rst  $38                                         ; $4774: $ff
	pop  af                                          ; $4775: $f1
	rst  $38                                         ; $4776: $ff
	ld   sp, $1a11                                   ; $4777: $31 $11 $1a
	ld   hl, $f9ff                                   ; $477a: $21 $ff $f9
	rst  $38                                         ; $477d: $ff
	add  e                                           ; $477e: $83
	ld   h, e                                        ; $477f: $63
	ld   de, $8e13                                   ; $4780: $11 $13 $8e
	adc  $ff                                         ; $4783: $ce $ff
	db   $db                                         ; $4785: $db
	or   [hl]                                        ; $4786: $b6
	ld   sp, $1111                                   ; $4787: $31 $11 $11
	scf                                              ; $478a: $37
	ld   h, h                                        ; $478b: $64
	ld   hl, $11ff                                   ; $478c: $21 $ff $11
	rst  $38                                         ; $478f: $ff
	ld   de, $77e8                                   ; $4790: $11 $e8 $77
	inc  [hl]                                        ; $4793: $34
	db   $fc                                         ; $4794: $fc
	ld   d, $fd                                      ; $4795: $16 $fd
	add  hl, de                                      ; $4797: $19
	jp   hl                                          ; $4798: $e9


	ld   h, a                                        ; $4799: $67
	sub  a                                           ; $479a: $97
	or   a                                           ; $479b: $b7
	ld   a, d                                        ; $479c: $7a
	reti                                             ; $479d: $d9


	ld   a, d                                        ; $479e: $7a
	jp   z, $7879                                    ; $479f: $ca $79 $78

	ld   [hl], a                                     ; $47a2: $77
	ld   [hl], a                                     ; $47a3: $77
	add  a                                           ; $47a4: $87
	halt                                             ; $47a5: $76
	ld   h, l                                        ; $47a6: $65
	ld   hl, $de11                                   ; $47a7: $21 $11 $de
	jr   @+$01                                       ; $47aa: $18 $ff

	ld   a, c                                        ; $47ac: $79
	jp   hl                                          ; $47ad: $e9


	ld   h, e                                        ; $47ae: $63
	ld   b, e                                        ; $47af: $43
	halt                                             ; $47b0: $76
	add  hl, sp                                      ; $47b1: $39
	cp   $8e                                         ; $47b2: $fe $8e
	db   $fc                                         ; $47b4: $fc
	ld   a, b                                        ; $47b5: $78
	ld   h, h                                        ; $47b6: $64
	ld   d, h                                        ; $47b7: $54
	ld   d, a                                        ; $47b8: $57
	xor  c                                           ; $47b9: $a9
	xor  [hl]                                        ; $47ba: $ae
	db   $eb                                         ; $47bb: $eb
	xor  e                                           ; $47bc: $ab
	sub  l                                           ; $47bd: $95
	ld   d, l                                        ; $47be: $55
	ld   b, l                                        ; $47bf: $45
	ld   d, [hl]                                     ; $47c0: $56
	adc  c                                           ; $47c1: $89
	ld   [hl], a                                     ; $47c2: $77
	cp   c                                           ; $47c3: $b9
	ld   h, h                                        ; $47c4: $64
	ld   b, e                                        ; $47c5: $43
	ld   de, $2ad9                                   ; $47c6: $11 $d9 $2a
	rst  $38                                         ; $47c9: $ff
	sbc  l                                           ; $47ca: $9d
	ret                                              ; $47cb: $c9


	add  h                                           ; $47cc: $84
	inc  sp                                          ; $47cd: $33
	ld   [hl], e                                     ; $47ce: $73
	add  hl, sp                                      ; $47cf: $39
	db   $db                                         ; $47d0: $db
	cp   a                                           ; $47d1: $bf
	db   $ec                                         ; $47d2: $ec
	cp   d                                           ; $47d3: $ba
	halt                                             ; $47d4: $76
	ld   d, h                                        ; $47d5: $54
	ld   d, [hl]                                     ; $47d6: $56
	ld   [hl], a                                     ; $47d7: $77
	xor  h                                           ; $47d8: $ac
	cp   d                                           ; $47d9: $ba
	cp   d                                           ; $47da: $ba
	sub  a                                           ; $47db: $97
	ld   h, l                                        ; $47dc: $65
	ld   d, l                                        ; $47dd: $55
	ld   b, l                                        ; $47de: $45
	sbc  c                                           ; $47df: $99
	sbc  d                                           ; $47e0: $9a
	cp   e                                           ; $47e1: $bb
	xor  c                                           ; $47e2: $a9
	adc  b                                           ; $47e3: $88
	ld   [hl], h                                     ; $47e4: $74
	inc  sp                                          ; $47e5: $33
	ld   sp, $e819                                   ; $47e6: $31 $19 $e8
	ld   a, [hl]                                     ; $47e9: $7e
	ld   a, [$879b]                                  ; $47ea: $fa $9b $87
	ld   d, h                                        ; $47ed: $54
	ld   c, b                                        ; $47ee: $48
	add  l                                           ; $47ef: $85
	adc  h                                           ; $47f0: $8c
	jp   z, $cacd                                    ; $47f1: $ca $cd $ca

	adc  c                                           ; $47f4: $89
	add  a                                           ; $47f5: $87
	ld   h, a                                        ; $47f6: $67
	adc  c                                           ; $47f7: $89
	adc  c                                           ; $47f8: $89
	xor  d                                           ; $47f9: $aa
	sbc  b                                           ; $47fa: $98
	adc  b                                           ; $47fb: $88
	add  [hl]                                        ; $47fc: $86
	ld   h, [hl]                                     ; $47fd: $66
	add  a                                           ; $47fe: $87
	ld   d, a                                        ; $47ff: $57
	sbc  d                                           ; $4800: $9a
	ld   [hl], a                                     ; $4801: $77
	sbc  b                                           ; $4802: $98
	sbc  b                                           ; $4803: $98
	ld   a, b                                        ; $4804: $78
	adc  b                                           ; $4805: $88
	ld   [hl], a                                     ; $4806: $77
	add  a                                           ; $4807: $87
	ld   h, l                                        ; $4808: $65
	ld   d, l                                        ; $4809: $55
	ld   b, a                                        ; $480a: $47
	sub  a                                           ; $480b: $97
	adc  e                                           ; $480c: $8b
	cp   c                                           ; $480d: $b9
	sbc  d                                           ; $480e: $9a
	adc  b                                           ; $480f: $88
	add  a                                           ; $4810: $87
	ld   [hl], a                                     ; $4811: $77
	ld   [hl], a                                     ; $4812: $77
	ld   a, b                                        ; $4813: $78
	sbc  b                                           ; $4814: $98
	xor  d                                           ; $4815: $aa
	cp   d                                           ; $4816: $ba
	xor  c                                           ; $4817: $a9
	sbc  d                                           ; $4818: $9a
	sbc  b                                           ; $4819: $98
	ld   [hl], a                                     ; $481a: $77
	adc  b                                           ; $481b: $88
	ld   [hl], a                                     ; $481c: $77
	adc  b                                           ; $481d: $88
	ld   a, c                                        ; $481e: $79
	xor  c                                           ; $481f: $a9
	ld   [hl], a                                     ; $4820: $77
	add  a                                           ; $4821: $87
	ld   h, [hl]                                     ; $4822: $66
	ld   a, b                                        ; $4823: $78
	ld   [hl], a                                     ; $4824: $77
	adc  d                                           ; $4825: $8a
	sub  a                                           ; $4826: $97
	ld   a, d                                        ; $4827: $7a
	add  l                                           ; $4828: $85
	ld   a, b                                        ; $4829: $78
	add  a                                           ; $482a: $87
	adc  c                                           ; $482b: $89
	adc  b                                           ; $482c: $88
	ld   h, a                                        ; $482d: $67
	ld   [hl], a                                     ; $482e: $77
	ld   d, [hl]                                     ; $482f: $56
	adc  b                                           ; $4830: $88
	ld   [hl], a                                     ; $4831: $77
	sbc  c                                           ; $4832: $99
	sub  a                                           ; $4833: $97
	sbc  c                                           ; $4834: $99
	sbc  b                                           ; $4835: $98
	adc  c                                           ; $4836: $89
	adc  c                                           ; $4837: $89
	adc  b                                           ; $4838: $88
	xor  d                                           ; $4839: $aa
	adc  c                                           ; $483a: $89
	xor  c                                           ; $483b: $a9
	adc  c                                           ; $483c: $89
	sbc  c                                           ; $483d: $99
	adc  c                                           ; $483e: $89
	add  a                                           ; $483f: $87
	ld   a, b                                        ; $4840: $78
	sbc  b                                           ; $4841: $98
	adc  b                                           ; $4842: $88
	sbc  b                                           ; $4843: $98
	ld   a, b                                        ; $4844: $78
	adc  b                                           ; $4845: $88
	add  [hl]                                        ; $4846: $86
	sbc  c                                           ; $4847: $99
	add  a                                           ; $4848: $87
	sbc  c                                           ; $4849: $99
	ld   a, b                                        ; $484a: $78
	adc  b                                           ; $484b: $88
	add  a                                           ; $484c: $87
	adc  b                                           ; $484d: $88
	halt                                             ; $484e: $76
	ld   h, a                                        ; $484f: $67
	add  a                                           ; $4850: $87
	ld   h, a                                        ; $4851: $67
	add  a                                           ; $4852: $87
	ld   [hl], a                                     ; $4853: $77
	ld   [hl], a                                     ; $4854: $77
	adc  c                                           ; $4855: $89
	ld   [hl], a                                     ; $4856: $77
	sub  [hl]                                        ; $4857: $96
	ld   l, b                                        ; $4858: $68
	sub  a                                           ; $4859: $97
	ld   l, b                                        ; $485a: $68
	sbc  b                                           ; $485b: $98
	ld   a, b                                        ; $485c: $78
	adc  c                                           ; $485d: $89
	ld   a, b                                        ; $485e: $78
	sbc  c                                           ; $485f: $99
	add  a                                           ; $4860: $87
	xor  d                                           ; $4861: $aa
	sbc  b                                           ; $4862: $98
	sbc  d                                           ; $4863: $9a
	sbc  c                                           ; $4864: $99
	adc  d                                           ; $4865: $8a
	sub  a                                           ; $4866: $97
	ld   a, c                                        ; $4867: $79
	add  a                                           ; $4868: $87
	adc  b                                           ; $4869: $88
	adc  b                                           ; $486a: $88
	sbc  b                                           ; $486b: $98
	ld   a, b                                        ; $486c: $78
	add  a                                           ; $486d: $87
	adc  b                                           ; $486e: $88
	ld   [hl], a                                     ; $486f: $77
	ld   a, b                                        ; $4870: $78
	adc  c                                           ; $4871: $89
	adc  b                                           ; $4872: $88
	adc  c                                           ; $4873: $89
	ld   a, b                                        ; $4874: $78
	add  [hl]                                        ; $4875: $86
	adc  b                                           ; $4876: $88
	ld   a, b                                        ; $4877: $78
	xor  b                                           ; $4878: $a8
	ld   h, a                                        ; $4879: $67
	add  a                                           ; $487a: $87
	ld   h, a                                        ; $487b: $67
	sub  a                                           ; $487c: $97
	ld   [hl], a                                     ; $487d: $77
	ld   [hl], a                                     ; $487e: $77
	add  a                                           ; $487f: $87
	ld   h, a                                        ; $4880: $67
	sbc  d                                           ; $4881: $9a
	ld   [hl], a                                     ; $4882: $77
	add  a                                           ; $4883: $87
	ld   a, b                                        ; $4884: $78
	add  a                                           ; $4885: $87
	adc  c                                           ; $4886: $89
	xor  c                                           ; $4887: $a9
	sbc  c                                           ; $4888: $99
	adc  b                                           ; $4889: $88
	sbc  c                                           ; $488a: $99
	adc  b                                           ; $488b: $88
	adc  b                                           ; $488c: $88
	sbc  d                                           ; $488d: $9a
	sbc  b                                           ; $488e: $98
	sbc  c                                           ; $488f: $99
	adc  b                                           ; $4890: $88
	sbc  c                                           ; $4891: $99
	adc  c                                           ; $4892: $89
	adc  b                                           ; $4893: $88
	sbc  b                                           ; $4894: $98
	ld   [hl], a                                     ; $4895: $77
	adc  b                                           ; $4896: $88
	adc  b                                           ; $4897: $88
	ld   a, b                                        ; $4898: $78
	ld   [hl], a                                     ; $4899: $77
	ld   a, b                                        ; $489a: $78
	adc  b                                           ; $489b: $88
	adc  b                                           ; $489c: $88
	adc  b                                           ; $489d: $88
	ld   [hl], a                                     ; $489e: $77
	ld   [hl], a                                     ; $489f: $77
	adc  b                                           ; $48a0: $88
	adc  b                                           ; $48a1: $88
	add  a                                           ; $48a2: $87
	adc  b                                           ; $48a3: $88
	ld   [hl], a                                     ; $48a4: $77
	ld   [hl], a                                     ; $48a5: $77
	adc  b                                           ; $48a6: $88
	ld   a, b                                        ; $48a7: $78
	sbc  b                                           ; $48a8: $98
	ld   [hl], a                                     ; $48a9: $77
	add  [hl]                                        ; $48aa: $86
	ld   h, a                                        ; $48ab: $67
	add  [hl]                                        ; $48ac: $86
	ld   l, b                                        ; $48ad: $68
	add  [hl]                                        ; $48ae: $86
	ld   a, b                                        ; $48af: $78
	adc  c                                           ; $48b0: $89
	adc  b                                           ; $48b1: $88
	ld   a, b                                        ; $48b2: $78
	ld   [hl], a                                     ; $48b3: $77
	ld   a, b                                        ; $48b4: $78
	adc  b                                           ; $48b5: $88
	sbc  d                                           ; $48b6: $9a
	xor  c                                           ; $48b7: $a9
	sbc  b                                           ; $48b8: $98
	adc  b                                           ; $48b9: $88
	sbc  b                                           ; $48ba: $98
	adc  c                                           ; $48bb: $89
	sbc  c                                           ; $48bc: $99
	adc  c                                           ; $48bd: $89
	adc  b                                           ; $48be: $88
	adc  c                                           ; $48bf: $89
	sbc  b                                           ; $48c0: $98
	adc  c                                           ; $48c1: $89
	add  a                                           ; $48c2: $87
	adc  c                                           ; $48c3: $89
	adc  b                                           ; $48c4: $88
	adc  b                                           ; $48c5: $88
	ld   a, b                                        ; $48c6: $78
	adc  c                                           ; $48c7: $89
	add  a                                           ; $48c8: $87
	adc  c                                           ; $48c9: $89
	add  a                                           ; $48ca: $87
	adc  b                                           ; $48cb: $88
	ld   a, b                                        ; $48cc: $78
	add  a                                           ; $48cd: $87
	adc  b                                           ; $48ce: $88
	ld   [hl], a                                     ; $48cf: $77
	adc  c                                           ; $48d0: $89
	ld   [hl], a                                     ; $48d1: $77
	adc  b                                           ; $48d2: $88
	ld   [hl], a                                     ; $48d3: $77
	add  a                                           ; $48d4: $87

Call_0f6_48d5:
	ld   [hl], a                                     ; $48d5: $77
	adc  b                                           ; $48d6: $88
	add  a                                           ; $48d7: $87
	ld   a, c                                        ; $48d8: $79
	add  [hl]                                        ; $48d9: $86
	ld   a, c                                        ; $48da: $79
	halt                                             ; $48db: $76
	ld   a, b                                        ; $48dc: $78
	sbc  b                                           ; $48dd: $98
	ld   a, b                                        ; $48de: $78
	sbc  b                                           ; $48df: $98
	ld   a, b                                        ; $48e0: $78
	sbc  b                                           ; $48e1: $98
	ld   a, c                                        ; $48e2: $79
	sbc  c                                           ; $48e3: $99
	ld   a, b                                        ; $48e4: $78
	sbc  b                                           ; $48e5: $98
	add  a                                           ; $48e6: $87
	adc  b                                           ; $48e7: $88
	adc  b                                           ; $48e8: $88
	adc  c                                           ; $48e9: $89
	adc  b                                           ; $48ea: $88
	adc  c                                           ; $48eb: $89
	add  a                                           ; $48ec: $87
	adc  b                                           ; $48ed: $88
	adc  b                                           ; $48ee: $88
	sbc  c                                           ; $48ef: $99
	sbc  b                                           ; $48f0: $98
	ld   [hl], a                                     ; $48f1: $77
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	sbc  b                                           ; $48f5: $98
	ld   a, b                                        ; $48f6: $78
	ld   [hl], a                                     ; $48f7: $77
	adc  b                                           ; $48f8: $88
	ld   a, b                                        ; $48f9: $78
	sub  a                                           ; $48fa: $97
	ld   a, b                                        ; $48fb: $78
	add  a                                           ; $48fc: $87
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	add  a                                           ; $48ff: $87
	sbc  b                                           ; $4900: $98
	ld   [hl], a                                     ; $4901: $77
	adc  b                                           ; $4902: $88
	add  a                                           ; $4903: $87
	ld   a, b                                        ; $4904: $78
	add  a                                           ; $4905: $87
	ld   [hl], a                                     ; $4906: $77
	adc  b                                           ; $4907: $88
	ld   a, b                                        ; $4908: $78
	sbc  b                                           ; $4909: $98
	adc  c                                           ; $490a: $89
	sbc  c                                           ; $490b: $99
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  b                                           ; $490e: $88
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	sbc  c                                           ; $4911: $99
	sbc  c                                           ; $4912: $99
	adc  b                                           ; $4913: $88
	adc  b                                           ; $4914: $88
	adc  b                                           ; $4915: $88
	sbc  b                                           ; $4916: $98
	sbc  b                                           ; $4917: $98
	adc  b                                           ; $4918: $88
	add  a                                           ; $4919: $87
	adc  b                                           ; $491a: $88
	ld   [hl], a                                     ; $491b: $77
	sbc  b                                           ; $491c: $98
	ld   a, b                                        ; $491d: $78
	add  a                                           ; $491e: $87
	ld   a, b                                        ; $491f: $78
	adc  b                                           ; $4920: $88
	adc  b                                           ; $4921: $88
	adc  b                                           ; $4922: $88
	ld   [hl], a                                     ; $4923: $77
	adc  b                                           ; $4924: $88
	add  a                                           ; $4925: $87
	adc  b                                           ; $4926: $88
	adc  b                                           ; $4927: $88
	adc  b                                           ; $4928: $88
	adc  b                                           ; $4929: $88
	adc  b                                           ; $492a: $88
	adc  b                                           ; $492b: $88
	adc  b                                           ; $492c: $88
	sbc  b                                           ; $492d: $98
	ld   a, b                                        ; $492e: $78
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
	sbc  c                                           ; $4939: $99
	sbc  c                                           ; $493a: $99
	adc  c                                           ; $493b: $89
	adc  b                                           ; $493c: $88
	ld   a, b                                        ; $493d: $78
	sbc  b                                           ; $493e: $98
	ld   a, b                                        ; $493f: $78
	sbc  b                                           ; $4940: $98
	adc  b                                           ; $4941: $88
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	adc  b                                           ; $4944: $88
	adc  b                                           ; $4945: $88
	sbc  b                                           ; $4946: $98
	ld   [hl], a                                     ; $4947: $77
	adc  b                                           ; $4948: $88
	add  a                                           ; $4949: $87
	ld   a, b                                        ; $494a: $78
	adc  b                                           ; $494b: $88
	adc  b                                           ; $494c: $88
	adc  b                                           ; $494d: $88
	sbc  c                                           ; $494e: $99
	adc  b                                           ; $494f: $88
	adc  b                                           ; $4950: $88
	sbc  b                                           ; $4951: $98
	adc  b                                           ; $4952: $88
	add  a                                           ; $4953: $87
	adc  b                                           ; $4954: $88
	adc  b                                           ; $4955: $88
	adc  b                                           ; $4956: $88
	adc  b                                           ; $4957: $88
	adc  b                                           ; $4958: $88
	adc  b                                           ; $4959: $88
	adc  b                                           ; $495a: $88
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	ld   a, b                                        ; $495d: $78
	adc  b                                           ; $495e: $88
	adc  b                                           ; $495f: $88
	adc  c                                           ; $4960: $89
	sbc  b                                           ; $4961: $98

Call_0f6_4962:
	adc  b                                           ; $4962: $88
	sbc  b                                           ; $4963: $98

Call_0f6_4964:
	adc  c                                           ; $4964: $89
	sbc  c                                           ; $4965: $99
	adc  b                                           ; $4966: $88
	sbc  b                                           ; $4967: $98
	adc  b                                           ; $4968: $88
	sbc  b                                           ; $4969: $98
	adc  b                                           ; $496a: $88
	ld   a, b                                        ; $496b: $78
	adc  b                                           ; $496c: $88
	adc  c                                           ; $496d: $89
	adc  b                                           ; $496e: $88
	adc  b                                           ; $496f: $88
	ld   a, b                                        ; $4970: $78
	adc  b                                           ; $4971: $88
	sbc  b                                           ; $4972: $98
	adc  b                                           ; $4973: $88
	adc  b                                           ; $4974: $88
	adc  b                                           ; $4975: $88
	sbc  c                                           ; $4976: $99
	adc  c                                           ; $4977: $89
	sbc  c                                           ; $4978: $99
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
	adc  c                                           ; $4988: $89
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
	sbc  c                                           ; $499c: $99
	sbc  b                                           ; $499d: $98
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
	ld   de, $1111                                   ; $49c9: $11 $11 $11
	ld   de, $1111                                   ; $49cc: $11 $11 $11
	ld   de, $1111                                   ; $49cf: $11 $11 $11
	ld   de, $1111                                   ; $49d2: $11 $11 $11
	ld   de, $1111                                   ; $49d5: $11 $11 $11
	ld   de, $1111                                   ; $49d8: $11 $11 $11
	ld   de, $1111                                   ; $49db: $11 $11 $11
	ld   de, $1111                                   ; $49de: $11 $11 $11
	ld   de, $1111                                   ; $49e1: $11 $11 $11
	ld   de, $1111                                   ; $49e4: $11 $11 $11
	ld   de, $1111                                   ; $49e7: $11 $11 $11
	ld   de, $1111                                   ; $49ea: $11 $11 $11
	ld   de, $1111                                   ; $49ed: $11 $11 $11
	ld   de, $1111                                   ; $49f0: $11 $11 $11
	ld   de, $1111                                   ; $49f3: $11 $11 $11
	ld   de, $1111                                   ; $49f6: $11 $11 $11
	ld   de, $1111                                   ; $49f9: $11 $11 $11
	ld   de, $1111                                   ; $49fc: $11 $11 $11
	ld   de, $1111                                   ; $49ff: $11 $11 $11
	nop                                              ; $4a02: $00
	ld   c, b                                        ; $4a03: $48
	ld   de, $1111                                   ; $4a04: $11 $11 $11
	ld   de, $1111                                   ; $4a07: $11 $11 $11
	ld   de, $1111                                   ; $4a0a: $11 $11 $11
	ld   de, $5413                                   ; $4a0d: $11 $13 $54
	ld   d, h                                        ; $4a10: $54
	ld   d, h                                        ; $4a11: $54
	ld   b, c                                        ; $4a12: $41
	rra                                              ; $4a13: $1f
	rst  $38                                         ; $4a14: $ff
	pop  af                                          ; $4a15: $f1
	ld   de, $1411                                   ; $4a16: $11 $11 $14
	add  c                                           ; $4a19: $81
	ld   de, $de1c                                   ; $4a1a: $11 $1c $de
	call z, $c1de                                    ; $4a1d: $cc $de $c1
	ld   de, $1111                                   ; $4a20: $11 $11 $11
	ld   de, $1111                                   ; $4a23: $11 $11 $11
	ld   de, $1111                                   ; $4a26: $11 $11 $11
	ld   de, $1111                                   ; $4a29: $11 $11 $11
	ld   de, $5411                                   ; $4a2c: $11 $11 $54
	ld   b, h                                        ; $4a2f: $44
	ld   [hl], h                                     ; $4a30: $74
	ld   de, $5454                                   ; $4a31: $11 $54 $54
	ld   h, a                                        ; $4a34: $67
	ld   [hl], d                                     ; $4a35: $72
	ld   de, $1111                                   ; $4a36: $11 $11 $11
	ld   de, $1112                                   ; $4a39: $11 $12 $11
	ld   [de], a                                     ; $4a3c: $12
	ld   de, $1111                                   ; $4a3d: $11 $11 $11
	ld   h, [hl]                                     ; $4a40: $66
	halt                                             ; $4a41: $76
	ld   d, h                                        ; $4a42: $54
	ld   de, $8988                                   ; $4a43: $11 $88 $89
	adc  b                                           ; $4a46: $88
	ld   a, b                                        ; $4a47: $78
	sbc  b                                           ; $4a48: $98
	add  a                                           ; $4a49: $87
	adc  c                                           ; $4a4a: $89
	adc  b                                           ; $4a4b: $88
	ld   a, b                                        ; $4a4c: $78
	adc  c                                           ; $4a4d: $89
	add  a                                           ; $4a4e: $87
	adc  b                                           ; $4a4f: $88
	adc  b                                           ; $4a50: $88
	ld   a, b                                        ; $4a51: $78
	sbc  c                                           ; $4a52: $99
	add  a                                           ; $4a53: $87
	adc  c                                           ; $4a54: $89
	adc  b                                           ; $4a55: $88
	adc  b                                           ; $4a56: $88
	adc  b                                           ; $4a57: $88
	ld   [hl], a                                     ; $4a58: $77
	adc  b                                           ; $4a59: $88
	ld   [hl], l                                     ; $4a5a: $75
	ld   a, h                                        ; $4a5b: $7c
	db   $fc                                         ; $4a5c: $fc
	ld   d, d                                        ; $4a5d: $52
	ld   l, h                                        ; $4a5e: $6c
	rst  ToBoot                                         ; $4a5f: $c7
	inc  [hl]                                        ; $4a60: $34
	adc  d                                           ; $4a61: $8a
	add  h                                           ; $4a62: $84
	ld   e, c                                        ; $4a63: $59
	jp   z, $9a76                                    ; $4a64: $ca $76 $9a

	sub  a                                           ; $4a67: $97
	ld   h, a                                        ; $4a68: $67
	sbc  d                                           ; $4a69: $9a
	sub  a                                           ; $4a6a: $97
	ld   l, c                                        ; $4a6b: $69
	call c, Call_0f6_4962                            ; $4a6c: $dc $62 $49
	ret  z                                           ; $4a6f: $c8

	inc  [hl]                                        ; $4a70: $34
	sbc  d                                           ; $4a71: $9a
	ld   [hl], e                                     ; $4a72: $73
	ld   e, e                                        ; $4a73: $5b
	add  sp, $23                                     ; $4a74: $e8 $23
	xor  [hl]                                        ; $4a76: $ae
	sub  l                                           ; $4a77: $95
	adc  h                                           ; $4a78: $8c
	or   a                                           ; $4a79: $b7
	inc  [hl]                                        ; $4a7a: $34
	xor  e                                           ; $4a7b: $ab
	add  h                                           ; $4a7c: $84
	ld   e, d                                        ; $4a7d: $5a
	jp   z, $8955                                    ; $4a7e: $ca $55 $89

	xor  b                                           ; $4a81: $a8
	adc  c                                           ; $4a82: $89
	xor  b                                           ; $4a83: $a8
	ld   a, b                                        ; $4a84: $78
	adc  c                                           ; $4a85: $89
	add  [hl]                                        ; $4a86: $86
	ld   b, [hl]                                     ; $4a87: $46
	add  a                                           ; $4a88: $87
	adc  h                                           ; $4a89: $8c
	reti                                             ; $4a8a: $d9


	sub  a                                           ; $4a8b: $97
	ld   d, [hl]                                     ; $4a8c: $56
	ld   a, c                                        ; $4a8d: $79
	ld   [hl], h                                     ; $4a8e: $74
	ld   c, b                                        ; $4a8f: $48
	rst  $38                                         ; $4a90: $ff
	db   $fd                                         ; $4a91: $fd
	ld   d, [hl]                                     ; $4a92: $56
	cp   [hl]                                        ; $4a93: $be
	add  d                                           ; $4a94: $82
	inc  d                                           ; $4a95: $14
	adc  c                                           ; $4a96: $89
	ld   d, h                                        ; $4a97: $54
	adc  d                                           ; $4a98: $8a
	cp   c                                           ; $4a99: $b9
	ld   a, b                                        ; $4a9a: $78
	sbc  c                                           ; $4a9b: $99
	ld   d, h                                        ; $4a9c: $54
	ld   d, a                                        ; $4a9d: $57
	ld   [hl], l                                     ; $4a9e: $75
	ld   d, a                                        ; $4a9f: $57
	sbc  d                                           ; $4aa0: $9a
	sbc  b                                           ; $4aa1: $98
	xor  e                                           ; $4aa2: $ab
	xor  c                                           ; $4aa3: $a9
	adc  b                                           ; $4aa4: $88
	add  a                                           ; $4aa5: $87
	adc  b                                           ; $4aa6: $88
	adc  b                                           ; $4aa7: $88
	sbc  c                                           ; $4aa8: $99
	sbc  d                                           ; $4aa9: $9a
	sbc  b                                           ; $4aaa: $98
	ld   [hl], a                                     ; $4aab: $77
	add  a                                           ; $4aac: $87
	ld   h, a                                        ; $4aad: $67
	halt                                             ; $4aae: $76
	ld   d, [hl]                                     ; $4aaf: $56
	ld   h, [hl]                                     ; $4ab0: $66
	ld   d, h                                        ; $4ab1: $54
	ld   b, h                                        ; $4ab2: $44
	ld   d, l                                        ; $4ab3: $55
	ld   d, l                                        ; $4ab4: $55
	ld   e, b                                        ; $4ab5: $58
	res  3, b                                        ; $4ab6: $cb $98
	xor  e                                           ; $4ab8: $ab
	cp   h                                           ; $4ab9: $bc
	xor  c                                           ; $4aba: $a9
	sbc  $ca                                         ; $4abb: $de $ca
	xor  c                                           ; $4abd: $a9
	adc  c                                           ; $4abe: $89
	adc  b                                           ; $4abf: $88
	ld   a, b                                        ; $4ac0: $78
	add  a                                           ; $4ac1: $87
	ld   [hl], a                                     ; $4ac2: $77
	ld   d, h                                        ; $4ac3: $54
	ld   d, a                                        ; $4ac4: $57
	ld   h, l                                        ; $4ac5: $65
	ld   b, h                                        ; $4ac6: $44
	ld   d, l                                        ; $4ac7: $55
	ld   d, h                                        ; $4ac8: $54
	ld   d, a                                        ; $4ac9: $57
	ld   h, a                                        ; $4aca: $67
	sbc  e                                           ; $4acb: $9b
	cp   h                                           ; $4acc: $bc
	db   $db                                         ; $4acd: $db
	xor  h                                           ; $4ace: $ac
	ld   [$b9aa], a                                  ; $4acf: $ea $aa $b9
	xor  c                                           ; $4ad2: $a9
	adc  c                                           ; $4ad3: $89
	xor  b                                           ; $4ad4: $a8
	ld   a, c                                        ; $4ad5: $79
	xor  b                                           ; $4ad6: $a8
	ld   h, [hl]                                     ; $4ad7: $66
	ld   sp, $3335                                   ; $4ad8: $31 $35 $33
	ld   b, l                                        ; $4adb: $45
	ld   h, a                                        ; $4adc: $67
	ld   [hl], d                                     ; $4add: $72
	scf                                              ; $4ade: $37
	bit  7, c                                        ; $4adf: $cb $79
	cp   [hl]                                        ; $4ae1: $be
	cp   h                                           ; $4ae2: $bc
	call z, $b9ec                                    ; $4ae3: $cc $ec $b9
	xor  e                                           ; $4ae6: $ab
	jp   z, $a9cc                                    ; $4ae7: $ca $cc $a9

	ld   a, b                                        ; $4aea: $78
	ld   a, c                                        ; $4aeb: $79
	add  [hl]                                        ; $4aec: $86
	ld   l, c                                        ; $4aed: $69
	sub  l                                           ; $4aee: $95
	ld   b, e                                        ; $4aef: $43
	ld   [hl-], a                                    ; $4af0: $32
	ld   b, l                                        ; $4af1: $45
	ld   d, [hl]                                     ; $4af2: $56
	add  l                                           ; $4af3: $85
	ld   e, e                                        ; $4af4: $5b
	ld   [$6746], a                                  ; $4af5: $ea $46 $67
	xor  b                                           ; $4af8: $a8
	dec  [hl]                                        ; $4af9: $35
	and  a                                           ; $4afa: $a7
	ld   sp, $ff2a                                   ; $4afb: $31 $2a $ff
	db   $db                                         ; $4afe: $db
	rst  $28                                         ; $4aff: $ef
	ret                                              ; $4b00: $c9


	ld   d, h                                        ; $4b01: $54
	xor  l                                           ; $4b02: $ad
	or   a                                           ; $4b03: $b7
	xor  e                                           ; $4b04: $ab
	or   a                                           ; $4b05: $b7
	ld   [hl-], a                                    ; $4b06: $32
	scf                                              ; $4b07: $37
	sub  l                                           ; $4b08: $95
	inc  d                                           ; $4b09: $14
	db   $dd                                         ; $4b0a: $dd
	ld   [hl], l                                     ; $4b0b: $75
	ld   l, c                                        ; $4b0c: $69
	adc  b                                           ; $4b0d: $88
	add  [hl]                                        ; $4b0e: $86
	ld   l, b                                        ; $4b0f: $68
	sbc  c                                           ; $4b10: $99
	sbc  d                                           ; $4b11: $9a
	sbc  b                                           ; $4b12: $98
	adc  c                                           ; $4b13: $89
	sbc  c                                           ; $4b14: $99
	sbc  c                                           ; $4b15: $99
	adc  c                                           ; $4b16: $89
	add  a                                           ; $4b17: $87
	ld   h, [hl]                                     ; $4b18: $66
	adc  c                                           ; $4b19: $89
	add  [hl]                                        ; $4b1a: $86
	ld   h, [hl]                                     ; $4b1b: $66
	ld   h, l                                        ; $4b1c: $65
	ld   b, h                                        ; $4b1d: $44
	ld   b, [hl]                                     ; $4b1e: $46
	adc  d                                           ; $4b1f: $8a
	call z, $98b9                                    ; $4b20: $cc $b9 $98
	add  a                                           ; $4b23: $87
	adc  d                                           ; $4b24: $8a
	xor  d                                           ; $4b25: $aa
	adc  d                                           ; $4b26: $8a
	sbc  b                                           ; $4b27: $98
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	sbc  c                                           ; $4b2a: $99
	sbc  b                                           ; $4b2b: $98
	adc  b                                           ; $4b2c: $88
	ld   a, b                                        ; $4b2d: $78
	halt                                             ; $4b2e: $76
	ld   h, a                                        ; $4b2f: $67
	adc  d                                           ; $4b30: $8a
	add  a                                           ; $4b31: $87
	ld   [hl], a                                     ; $4b32: $77
	adc  c                                           ; $4b33: $89
	add  a                                           ; $4b34: $87
	sbc  d                                           ; $4b35: $9a
	adc  b                                           ; $4b36: $88
	halt                                             ; $4b37: $76
	ld   d, [hl]                                     ; $4b38: $56
	ld   h, [hl]                                     ; $4b39: $66
	ld   sp, $ff19                                   ; $4b3a: $31 $19 $ff
	or   l                                           ; $4b3d: $b5
	ld   d, a                                        ; $4b3e: $57
	xor  c                                           ; $4b3f: $a9
	ld   h, h                                        ; $4b40: $64
	ld   a, h                                        ; $4b41: $7c
	cp   c                                           ; $4b42: $b9
	ld   a, d                                        ; $4b43: $7a
	reti                                             ; $4b44: $d9


	ld   h, l                                        ; $4b45: $65
	ld   a, b                                        ; $4b46: $78
	xor  d                                           ; $4b47: $aa
	halt                                             ; $4b48: $76
	sbc  d                                           ; $4b49: $9a
	xor  b                                           ; $4b4a: $a8
	ld   [hl], a                                     ; $4b4b: $77
	ld   l, b                                        ; $4b4c: $68
	add  [hl]                                        ; $4b4d: $86
	ld   d, a                                        ; $4b4e: $57
	sbc  c                                           ; $4b4f: $99
	add  a                                           ; $4b50: $87
	adc  b                                           ; $4b51: $88
	adc  c                                           ; $4b52: $89
	adc  c                                           ; $4b53: $89
	sbc  b                                           ; $4b54: $98
	adc  b                                           ; $4b55: $88
	sbc  b                                           ; $4b56: $98
	sbc  c                                           ; $4b57: $99
	xor  c                                           ; $4b58: $a9
	sbc  b                                           ; $4b59: $98
	add  a                                           ; $4b5a: $87
	ld   a, c                                        ; $4b5b: $79
	ld   a, c                                        ; $4b5c: $79
	adc  b                                           ; $4b5d: $88
	ld   h, [hl]                                     ; $4b5e: $66
	ld   a, b                                        ; $4b5f: $78
	sub  a                                           ; $4b60: $97
	halt                                             ; $4b61: $76
	ld   [hl], a                                     ; $4b62: $77
	ld   h, l                                        ; $4b63: $65
	ld   [hl-], a                                    ; $4b64: $32
	ld   de, $fe8f                                   ; $4b65: $11 $8f $fe
	ld   b, e                                        ; $4b68: $43
	ld   d, a                                        ; $4b69: $57
	sbc  c                                           ; $4b6a: $99
	ld   l, b                                        ; $4b6b: $68
	rst  $28                                         ; $4b6c: $ef
	or   [hl]                                        ; $4b6d: $b6
	ld   h, a                                        ; $4b6e: $67
	adc  c                                           ; $4b6f: $89
	sbc  b                                           ; $4b70: $98
	ld   a, c                                        ; $4b71: $79
	sub  a                                           ; $4b72: $97
	ld   h, [hl]                                     ; $4b73: $66
	ld   [hl], a                                     ; $4b74: $77
	adc  c                                           ; $4b75: $89
	add  [hl]                                        ; $4b76: $86
	ld   a, b                                        ; $4b77: $78
	adc  c                                           ; $4b78: $89
	sbc  b                                           ; $4b79: $98
	adc  c                                           ; $4b7a: $89
	adc  b                                           ; $4b7b: $88
	adc  c                                           ; $4b7c: $89
	adc  b                                           ; $4b7d: $88
	ld   a, b                                        ; $4b7e: $78
	adc  c                                           ; $4b7f: $89
	add  a                                           ; $4b80: $87
	ld   [hl], a                                     ; $4b81: $77
	ld   h, [hl]                                     ; $4b82: $66
	ld   h, [hl]                                     ; $4b83: $66
	ld   d, e                                        ; $4b84: $53
	inc  de                                          ; $4b85: $13
	rst  JumpTable                                         ; $4b86: $df
	or   $35                                         ; $4b87: $f6 $35
	ld   a, e                                        ; $4b89: $7b
	and  a                                           ; $4b8a: $a7
	ld   l, e                                        ; $4b8b: $6b
	db   $db                                         ; $4b8c: $db
	ld   h, l                                        ; $4b8d: $65
	ld   l, c                                        ; $4b8e: $69
	xor  c                                           ; $4b8f: $a9
	halt                                             ; $4b90: $76
	adc  d                                           ; $4b91: $8a
	add  l                                           ; $4b92: $85
	ld   d, a                                        ; $4b93: $57
	adc  c                                           ; $4b94: $89
	add  a                                           ; $4b95: $87
	ld   h, [hl]                                     ; $4b96: $66
	adc  d                                           ; $4b97: $8a
	sub  a                                           ; $4b98: $97
	ld   [hl], a                                     ; $4b99: $77
	sbc  e                                           ; $4b9a: $9b
	and  a                                           ; $4b9b: $a7
	ld   l, b                                        ; $4b9c: $68
	xor  d                                           ; $4b9d: $aa
	add  a                                           ; $4b9e: $87
	ld   [hl], a                                     ; $4b9f: $77
	adc  b                                           ; $4ba0: $88
	adc  b                                           ; $4ba1: $88
	adc  c                                           ; $4ba2: $89
	halt                                             ; $4ba3: $76
	ld   [hl], a                                     ; $4ba4: $77
	ld   [hl], a                                     ; $4ba5: $77
	adc  b                                           ; $4ba6: $88
	halt                                             ; $4ba7: $76
	ld   b, e                                        ; $4ba8: $43
	ld   de, $ff1c                                   ; $4ba9: $11 $1c $ff
	sub  c                                           ; $4bac: $91
	ld   de, $a29e                                   ; $4bad: $11 $9e $a2
	ld   c, a                                        ; $4bb0: $4f
	db   $fd                                         ; $4bb1: $fd
	add  [hl]                                        ; $4bb2: $86
	ld   d, h                                        ; $4bb3: $54
	sbc  h                                           ; $4bb4: $9c
	or   a                                           ; $4bb5: $b7
	sbc  c                                           ; $4bb6: $99
	add  a                                           ; $4bb7: $87
	adc  c                                           ; $4bb8: $89
	ld   a, c                                        ; $4bb9: $79
	cp   c                                           ; $4bba: $b9
	ld   h, [hl]                                     ; $4bbb: $66
	adc  b                                           ; $4bbc: $88
	ld   h, l                                        ; $4bbd: $65
	ld   l, c                                        ; $4bbe: $69
	xor  b                                           ; $4bbf: $a8
	ld   b, e                                        ; $4bc0: $43
	ld   a, l                                        ; $4bc1: $7d
	ret  z                                           ; $4bc2: $c8

	ld   d, l                                        ; $4bc3: $55
	adc  c                                           ; $4bc4: $89
	add  l                                           ; $4bc5: $85
	ld   d, l                                        ; $4bc6: $55
	ld   h, h                                        ; $4bc7: $64
	ld   de, $fb9f                                   ; $4bc8: $11 $9f $fb
	ld   de, $da18                                   ; $4bcb: $11 $18 $da
	ld   [de], a                                     ; $4bce: $12
	rst  JumpTable                                         ; $4bcf: $df
	ei                                               ; $4bd0: $fb
	ld   d, c                                        ; $4bd1: $51
	ld   a, $fb                                      ; $4bd2: $3e $fb
	inc  hl                                          ; $4bd4: $23
	sbc  d                                           ; $4bd5: $9a
	cp   d                                           ; $4bd6: $ba
	halt                                             ; $4bd7: $76
	xor  l                                           ; $4bd8: $ad
	sub  l                                           ; $4bd9: $95
	ld   d, a                                        ; $4bda: $57
	adc  b                                           ; $4bdb: $88
	adc  b                                           ; $4bdc: $88
	ld   [hl], a                                     ; $4bdd: $77
	halt                                             ; $4bde: $76
	ld   d, a                                        ; $4bdf: $57
	xor  d                                           ; $4be0: $aa
	ld   [hl], a                                     ; $4be1: $77
	adc  c                                           ; $4be2: $89
	halt                                             ; $4be3: $76
	ld   h, a                                        ; $4be4: $67
	adc  c                                           ; $4be5: $89
	sbc  b                                           ; $4be6: $98
	sub  a                                           ; $4be7: $97
	ld   d, e                                        ; $4be8: $53
	ld   de, $ff1c                                   ; $4be9: $11 $1c $ff
	and  c                                           ; $4bec: $a1
	ld   de, $c39f                                   ; $4bed: $11 $9f $c3
	dec  hl                                          ; $4bf0: $2b
	rst  $38                                         ; $4bf1: $ff
	add  $13                                         ; $4bf2: $c6 $13
	cp   [hl]                                        ; $4bf4: $be
	rst  ToBoot                                         ; $4bf5: $c7
	ld   d, a                                        ; $4bf6: $57
	sbc  e                                           ; $4bf7: $9b
	cp   b                                           ; $4bf8: $b8
	ld   l, b                                        ; $4bf9: $68
	ret                                              ; $4bfa: $c9


	ld   d, l                                        ; $4bfb: $55
	ld   h, a                                        ; $4bfc: $67
	adc  d                                           ; $4bfd: $8a
	sub  a                                           ; $4bfe: $97
	adc  c                                           ; $4bff: $89
	ld   [hl], l                                     ; $4c00: $75
	ld   l, b                                        ; $4c01: $68
	sbc  b                                           ; $4c02: $98
	ld   [hl], a                                     ; $4c03: $77
	ld   h, [hl]                                     ; $4c04: $66
	ld   a, b                                        ; $4c05: $78
	sbc  b                                           ; $4c06: $98
	add  a                                           ; $4c07: $87
	ld   [hl], a                                     ; $4c08: $77
	ld   h, l                                        ; $4c09: $65
	ld   hl, $ff19                                   ; $4c0a: $21 $19 $ff
	pop  hl                                          ; $4c0d: $e1
	ld   de, $d46d                                   ; $4c0e: $11 $6d $d4
	ld   a, [hl+]                                    ; $4c11: $2a
	rst  $38                                         ; $4c12: $ff
	db   $e3                                         ; $4c13: $e3
	inc  de                                          ; $4c14: $13
	sbc  e                                           ; $4c15: $9b
	ret                                              ; $4c16: $c9


	ld   l, b                                        ; $4c17: $68
	xor  e                                           ; $4c18: $ab
	add  a                                           ; $4c19: $87
	ld   a, c                                        ; $4c1a: $79
	cp   d                                           ; $4c1b: $ba
	sub  l                                           ; $4c1c: $95
	ld   l, b                                        ; $4c1d: $68
	add  a                                           ; $4c1e: $87
	adc  c                                           ; $4c1f: $89
	adc  c                                           ; $4c20: $89
	add  a                                           ; $4c21: $87
	ld   d, [hl]                                     ; $4c22: $56
	halt                                             ; $4c23: $76
	ld   [hl-], a                                    ; $4c24: $32
	ld   l, h                                        ; $4c25: $6c
	db   $fc                                         ; $4c26: $fc
	ld   h, e                                        ; $4c27: $63
	ld   b, a                                        ; $4c28: $47
	ld   [hl], e                                     ; $4c29: $73
	ld   de, $ff6f                                   ; $4c2a: $11 $6f $ff
	ld   de, $eb15                                   ; $4c2d: $11 $15 $eb
	ld   hl, $fdcf                                   ; $4c30: $21 $cf $fd
	ld   de, $ff1b                                   ; $4c33: $11 $1b $ff
	ld   d, d                                        ; $4c36: $52
	sbc  l                                           ; $4c37: $9d
	cp   c                                           ; $4c38: $b9
	ld   d, h                                        ; $4c39: $54
	ld   a, l                                        ; $4c3a: $7d
	rst  ToBoot                                         ; $4c3b: $c7
	ld   b, [hl]                                     ; $4c3c: $46
	sbc  c                                           ; $4c3d: $99
	adc  c                                           ; $4c3e: $89
	ld   [hl], a                                     ; $4c3f: $77
	adc  c                                           ; $4c40: $89
	add  a                                           ; $4c41: $87
	adc  b                                           ; $4c42: $88
	ld   [hl], a                                     ; $4c43: $77
	halt                                             ; $4c44: $76
	ld   h, [hl]                                     ; $4c45: $66
	ld   [hl], l                                     ; $4c46: $75
	ld   b, a                                        ; $4c47: $47
	and  a                                           ; $4c48: $a7
	ld   de, $ff1f                                   ; $4c49: $11 $1f $ff
	ld   b, c                                        ; $4c4c: $41
	inc  de                                          ; $4c4d: $13
	cp   l                                           ; $4c4e: $bd
	ld   [hl], c                                     ; $4c4f: $71
	ccf                                              ; $4c50: $3f
	rst  $38                                         ; $4c51: $ff
	add  c                                           ; $4c52: $81
	dec  d                                           ; $4c53: $15
	xor  e                                           ; $4c54: $ab
	sub  [hl]                                        ; $4c55: $96
	sbc  h                                           ; $4c56: $9c
	reti                                             ; $4c57: $d9


	ld   [hl], l                                     ; $4c58: $75
	ld   l, c                                        ; $4c59: $69
	cp   e                                           ; $4c5a: $bb
	sbc  c                                           ; $4c5b: $99
	xor  b                                           ; $4c5c: $a8
	ld   h, [hl]                                     ; $4c5d: $66
	ld   [hl], a                                     ; $4c5e: $77
	adc  c                                           ; $4c5f: $89
	adc  b                                           ; $4c60: $88
	sbc  c                                           ; $4c61: $99
	add  [hl]                                        ; $4c62: $86
	ld   d, l                                        ; $4c63: $55
	ld   a, c                                        ; $4c64: $79
	add  a                                           ; $4c65: $87
	ld   d, e                                        ; $4c66: $53
	ld   de, rAUD1LEN                                   ; $4c67: $11 $11 $ff
	pop  af                                          ; $4c6a: $f1
	ld   de, $d32b                                   ; $4c6b: $11 $2b $d3
	ld   d, $ff                                      ; $4c6e: $16 $ff
	push af                                          ; $4c70: $f5
	ld   de, $f75f                                   ; $4c71: $11 $5f $f7
	dec  d                                           ; $4c74: $15
	sbc  $b9                                         ; $4c75: $de $b9
	ld   b, h                                        ; $4c77: $44
	sbc  [hl]                                        ; $4c78: $9e
	or   a                                           ; $4c79: $b7
	sbc  d                                           ; $4c7a: $9a
	add  a                                           ; $4c7b: $87
	halt                                             ; $4c7c: $76
	ld   l, b                                        ; $4c7d: $68
	or   a                                           ; $4c7e: $b7
	ld   d, a                                        ; $4c7f: $57
	sbc  b                                           ; $4c80: $98
	ld   h, l                                        ; $4c81: $65
	ld   d, l                                        ; $4c82: $55
	ld   h, [hl]                                     ; $4c83: $66
	ld   sp, $5f11                                   ; $4c84: $31 $11 $5f
	rst  $38                                         ; $4c87: $ff
	ld   de, $bb35                                   ; $4c88: $11 $35 $bb
	ld   hl, $fb8f                                   ; $4c8b: $21 $8f $fb
	ld   sp, wTitleScreenGirlEyesAnimIdx                                   ; $4c8e: $31 $15 $cc
	xor  e                                           ; $4c91: $ab
	xor  c                                           ; $4c92: $a9
	xor  c                                           ; $4c93: $a9
	ld   [hl], a                                     ; $4c94: $77
	ld   l, b                                        ; $4c95: $68
	sbc  d                                           ; $4c96: $9a
	cp   e                                           ; $4c97: $bb
	cp   c                                           ; $4c98: $b9
	add  [hl]                                        ; $4c99: $86
	ld   [hl], a                                     ; $4c9a: $77
	sbc  c                                           ; $4c9b: $99
	add  [hl]                                        ; $4c9c: $86
	ld   h, a                                        ; $4c9d: $67
	ld   [hl], a                                     ; $4c9e: $77
	halt                                             ; $4c9f: $76
	ld   d, l                                        ; $4ca0: $55
	ld   b, c                                        ; $4ca1: $41
	ld   de, $ff1d                                   ; $4ca2: $11 $1d $ff
	pop  hl                                          ; $4ca5: $e1
	ld   [de], a                                     ; $4ca6: $12
	ld   a, d                                        ; $4ca7: $7a
	sub  d                                           ; $4ca8: $92
	ld   l, $ff                                      ; $4ca9: $2e $ff
	sub  e                                           ; $4cab: $93
	ld   [de], a                                     ; $4cac: $12
	ld   l, d                                        ; $4cad: $6a
	ld   h, l                                        ; $4cae: $65
	rst  JumpTable                                         ; $4caf: $df
	ld   hl, sp+$77                                  ; $4cb0: $f8 $77
	ld   d, a                                        ; $4cb2: $57
	sub  a                                           ; $4cb3: $97
	ld   l, d                                        ; $4cb4: $6a
	cp   $b8                                         ; $4cb5: $fe $b8
	ld   h, l                                        ; $4cb7: $65
	ld   a, c                                        ; $4cb8: $79
	sub  [hl]                                        ; $4cb9: $96
	ld   l, b                                        ; $4cba: $68
	sbc  b                                           ; $4cbb: $98
	ld   h, l                                        ; $4cbc: $65
	ld   b, h                                        ; $4cbd: $44
	ld   d, e                                        ; $4cbe: $53
	ld   de, $ff1d                                   ; $4cbf: $11 $1d $ff
	pop  de                                          ; $4cc2: $d1
	inc  de                                          ; $4cc3: $13
	ld   a, [hl]                                     ; $4cc4: $7e
	add  c                                           ; $4cc5: $81
	rra                                              ; $4cc6: $1f
	rst  $38                                         ; $4cc7: $ff
	jp   nz, Jump_0f6_6b11                           ; $4cc8: $c2 $11 $6b

	ld   h, c                                        ; $4ccb: $61
	ld   l, a                                        ; $4ccc: $6f
	rst  $38                                         ; $4ccd: $ff
	sub  e                                           ; $4cce: $93

jr_0f6_4ccf:
	dec  d                                           ; $4ccf: $15
	sbc  c                                           ; $4cd0: $99
	ld   d, h                                        ; $4cd1: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cd2: $cf
	ei                                               ; $4cd3: $fb
	add  [hl]                                        ; $4cd4: $86
	ld   d, [hl]                                     ; $4cd5: $56
	halt                                             ; $4cd6: $76
	ld   d, a                                        ; $4cd7: $57
	sbc  b                                           ; $4cd8: $98
	ld   h, h                                        ; $4cd9: $64
	ld   b, e                                        ; $4cda: $43
	ld   de, rAUD1LEN                                   ; $4cdb: $11 $11 $ff
	db   $f4                                         ; $4cde: $f4
	ld   de, $f327                                   ; $4cdf: $11 $27 $f3
	ld   de, $feff                                   ; $4ce2: $11 $ff $fe
	ld   sp, $c11b                                   ; $4ce5: $31 $1b $c1
	inc  de                                          ; $4ce8: $13
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	ld   b, c                                        ; $4ceb: $41
	ld   c, h                                        ; $4cec: $4c
	and  e                                           ; $4ced: $a3
	jr   z, jr_0f6_4ccf                              ; $4cee: $28 $df

	ei                                               ; $4cf0: $fb
	ld   d, h                                        ; $4cf1: $54
	sbc  c                                           ; $4cf2: $99
	ld   h, h                                        ; $4cf3: $64
	ld   b, l                                        ; $4cf4: $45
	ld   h, a                                        ; $4cf5: $67
	ld   h, e                                        ; $4cf6: $63
	ld   de, rAUD1LEN                                   ; $4cf7: $11 $11 $ff
	push af                                          ; $4cfa: $f5
	add  hl, sp                                      ; $4cfb: $39
	xor  l                                           ; $4cfc: $ad
	pop  bc                                          ; $4cfd: $c1
	ld   de, $ffff                                   ; $4cfe: $11 $ff $ff
	sub  h                                           ; $4d01: $94
	ld   a, a                                        ; $4d02: $7f
	pop  de                                          ; $4d03: $d1
	ld   de, $ff5f                                   ; $4d04: $11 $5f $ff
	push bc                                          ; $4d07: $c5
	ld   a, h                                        ; $4d08: $7c
	or   a                                           ; $4d09: $b7
	ld   de, $ff4c                                   ; $4d0a: $11 $4c $ff
	cp   b                                           ; $4d0d: $b8
	sbc  e                                           ; $4d0e: $9b
	sub  l                                           ; $4d0f: $95
	ld   de, $4113                                   ; $4d10: $11 $13 $41
	ld   de, $ff1f                                   ; $4d13: $11 $1f $ff
	ld   de, $ff39                                   ; $4d16: $11 $39 $ff
	ld   b, c                                        ; $4d19: $41
	inc  e                                           ; $4d1a: $1c
	rst  $38                                         ; $4d1b: $ff
	rst  $30                                         ; $4d1c: $f7
	inc  d                                           ; $4d1d: $14
	rst  $38                                         ; $4d1e: $ff
	and  c                                           ; $4d1f: $a1
	ld   de, $fb7f                                   ; $4d20: $11 $7f $fb
	scf                                              ; $4d23: $37
	rst  $38                                         ; $4d24: $ff
	ld   sp, hl                                      ; $4d25: $f9
	ld   sp, $c94c                                   ; $4d26: $31 $4c $c9
	ld   a, c                                        ; $4d29: $79
	cp   e                                           ; $4d2a: $bb
	cp   b                                           ; $4d2b: $b8
	ld   b, d                                        ; $4d2c: $42
	ld   [hl+], a                                    ; $4d2d: $22
	ld   de, rAUD1LOW                                   ; $4d2e: $11 $13 $ff
	push hl                                          ; $4d31: $e5
	ld   e, b                                        ; $4d32: $58
	xor  a                                           ; $4d33: $af
	or   $11                                         ; $4d34: $f6 $11
	cp   h                                           ; $4d36: $bc
	xor  d                                           ; $4d37: $aa
	ld   [hl], c                                     ; $4d38: $71
	dec  a                                           ; $4d39: $3d
	ei                                               ; $4d3a: $fb
	halt                                             ; $4d3b: $76
	ld   h, [hl]                                     ; $4d3c: $66
	xor  l                                           ; $4d3d: $ad
	and  h                                           ; $4d3e: $a4
	ld   e, c                                        ; $4d3f: $59
	xor  e                                           ; $4d40: $ab
	cp   e                                           ; $4d41: $bb
	add  a                                           ; $4d42: $87
	sbc  d                                           ; $4d43: $9a
	sbc  b                                           ; $4d44: $98
	adc  b                                           ; $4d45: $88
	adc  d                                           ; $4d46: $8a
	cp   d                                           ; $4d47: $ba
	sbc  b                                           ; $4d48: $98
	add  a                                           ; $4d49: $87
	halt                                             ; $4d4a: $76
	ld   h, l                                        ; $4d4b: $65
	ld   b, l                                        ; $4d4c: $45
	halt                                             ; $4d4d: $76
	ld   b, h                                        ; $4d4e: $44
	ld   b, l                                        ; $4d4f: $45
	ld   h, a                                        ; $4d50: $67
	add  a                                           ; $4d51: $87
	ld   l, b                                        ; $4d52: $68
	xor  c                                           ; $4d53: $a9
	sbc  d                                           ; $4d54: $9a
	xor  c                                           ; $4d55: $a9
	sbc  d                                           ; $4d56: $9a
	xor  c                                           ; $4d57: $a9
	sbc  d                                           ; $4d58: $9a
	xor  b                                           ; $4d59: $a8
	sbc  d                                           ; $4d5a: $9a
	sbc  b                                           ; $4d5b: $98
	adc  b                                           ; $4d5c: $88
	sbc  c                                           ; $4d5d: $99
	sbc  c                                           ; $4d5e: $99
	adc  b                                           ; $4d5f: $88
	sbc  b                                           ; $4d60: $98
	sbc  c                                           ; $4d61: $99
	sbc  c                                           ; $4d62: $99
	sbc  c                                           ; $4d63: $99
	sbc  b                                           ; $4d64: $98
	add  a                                           ; $4d65: $87
	ld   [hl], a                                     ; $4d66: $77
	ld   h, [hl]                                     ; $4d67: $66
	ld   d, h                                        ; $4d68: $54
	ld   b, [hl]                                     ; $4d69: $46
	ld   h, l                                        ; $4d6a: $65
	inc  sp                                          ; $4d6b: $33
	ld   b, l                                        ; $4d6c: $45
	ld   a, b                                        ; $4d6d: $78
	xor  b                                           ; $4d6e: $a8
	adc  c                                           ; $4d6f: $89
	cp   h                                           ; $4d70: $bc
	call z, $8a97                                    ; $4d71: $cc $97 $8a
	cp   c                                           ; $4d74: $b9
	sbc  b                                           ; $4d75: $98
	ld   [hl], a                                     ; $4d76: $77
	sbc  d                                           ; $4d77: $9a
	and  a                                           ; $4d78: $a7
	adc  c                                           ; $4d79: $89
	sbc  b                                           ; $4d7a: $98
	sbc  d                                           ; $4d7b: $9a
	xor  c                                           ; $4d7c: $a9
	xor  c                                           ; $4d7d: $a9
	sbc  c                                           ; $4d7e: $99
	sbc  c                                           ; $4d7f: $99
	adc  b                                           ; $4d80: $88
	add  [hl]                                        ; $4d81: $86
	ld   b, d                                        ; $4d82: $42
	ld   de, $ea16                                   ; $4d83: $11 $16 $ea
	ld   b, h                                        ; $4d86: $44
	adc  b                                           ; $4d87: $88
	rst  $28                                         ; $4d88: $ef
	push af                                          ; $4d89: $f5
	ld   d, $aa                                      ; $4d8a: $16 $aa
	cp   e                                           ; $4d8c: $bb
	ld   sp, $fb4f                                   ; $4d8d: $31 $4f $fb
	add  a                                           ; $4d90: $87
	ld   b, a                                        ; $4d91: $47
	rst  $38                                         ; $4d92: $ff
	sub  d                                           ; $4d93: $92
	ld   e, b                                        ; $4d94: $58
	sbc  e                                           ; $4d95: $9b
	ei                                               ; $4d96: $fb
	ld   e, b                                        ; $4d97: $58
	rst  $38                                         ; $4d98: $ff
	ld   [hl], h                                     ; $4d99: $74
	ld   d, h                                        ; $4d9a: $54
	inc  [hl]                                        ; $4d9b: $34
	ld   hl, $7f11                                   ; $4d9c: $21 $11 $7f
	rst  $38                                         ; $4d9f: $ff
	scf                                              ; $4da0: $37
	sbc  a                                           ; $4da1: $9f
	rst  $38                                         ; $4da2: $ff
	ld   de, $ff1a                                   ; $4da3: $11 $1a $ff
	push af                                          ; $4da6: $f5
	rra                                              ; $4da7: $1f
	rst  $38                                         ; $4da8: $ff
	ld   [hl], c                                     ; $4da9: $71
	ld   de, $f47f                                   ; $4daa: $11 $7f $f4
	dec  de                                          ; $4dad: $1b
	rst  $38                                         ; $4dae: $ff
	db   $fc                                         ; $4daf: $fc
	ld   hl, $a19f                                   ; $4db0: $21 $9f $a1
	inc  d                                           ; $4db3: $14
	add  a                                           ; $4db4: $87
	ld   sp, $1f11                                   ; $4db5: $31 $11 $1f
	rst  $38                                         ; $4db8: $ff
	inc  de                                          ; $4db9: $13
	sbc  l                                           ; $4dba: $9d
	rst  $38                                         ; $4dbb: $ff
	ld   de, $ff1d                                   ; $4dbc: $11 $1d $ff
	ld   a, [$ff18]                                  ; $4dbf: $fa $18 $ff
	ld   b, c                                        ; $4dc2: $41
	ld   de, $fb7f                                   ; $4dc3: $11 $7f $fb
	ld   a, [de]                                     ; $4dc6: $1a
	rst  $38                                         ; $4dc7: $ff
	rst  $30                                         ; $4dc8: $f7
	ld   hl, $e56f                                   ; $4dc9: $21 $6f $e5
	dec  d                                           ; $4dcc: $15
	add  a                                           ; $4dcd: $87
	ld   hl, $1f11                                   ; $4dce: $21 $11 $1f
	rst  $38                                         ; $4dd1: $ff
	ld   [hl], $ab                                   ; $4dd2: $36 $ab
	rst  $38                                         ; $4dd4: $ff
	ld   de, $ff1d                                   ; $4dd5: $11 $1d $ff
	ld   sp, hl                                      ; $4dd8: $f9
	dec  de                                          ; $4dd9: $1b
	rst  $38                                         ; $4dda: $ff
	ld   sp, $9f11                                   ; $4ddb: $31 $11 $9f
	ei                                               ; $4dde: $fb
	ld   c, c                                        ; $4ddf: $49
	rst  $38                                         ; $4de0: $ff
	and  $11                                         ; $4de1: $e6 $11
	sbc  [hl]                                        ; $4de3: $9e
	push bc                                          ; $4de4: $c5
	inc  hl                                          ; $4de5: $23
	ld   d, h                                        ; $4de6: $54
	ld   de, rAUD1LEN                                   ; $4de7: $11 $11 $ff
	ld   sp, hl                                      ; $4dea: $f9
	ld   d, [hl]                                     ; $4deb: $56
	ld   l, a                                        ; $4dec: $6f
	pop  af                                          ; $4ded: $f1
	ld   de, $ff6e                                   ; $4dee: $11 $6e $ff
	jp   nc, $f94f                                   ; $4df1: $d2 $4f $f9

	ld   de, rAUD1HIGH                                   ; $4df4: $11 $14 $ff
	rst  $30                                         ; $4df7: $f7
	ld   a, e                                        ; $4df8: $7b
	rst  $38                                         ; $4df9: $ff
	and  d                                           ; $4dfa: $a2
	dec  d                                           ; $4dfb: $15
	adc  $93                                         ; $4dfc: $ce $93
	ld   [hl+], a                                    ; $4dfe: $22
	ld   hl, $1f11                                   ; $4dff: $21 $11 $1f
	rst  $38                                         ; $4e02: $ff
	sbc  c                                           ; $4e03: $99
	ld   b, a                                        ; $4e04: $47
	rst  $38                                         ; $4e05: $ff
	ld   de, $ef19                                   ; $4e06: $11 $19 $ef
	db   $fc                                         ; $4e09: $fc
	add  hl, de                                      ; $4e0a: $19
	cp   $51                                         ; $4e0b: $fe $51
	ld   de, $ff8f                                   ; $4e0d: $11 $8f $ff
	ld   a, b                                        ; $4e10: $78
	cp   a                                           ; $4e11: $bf
	add  sp, $21                                     ; $4e12: $e8 $21
	ld   a, e                                        ; $4e14: $7b
	rst  ToBoot                                         ; $4e15: $c7
	ld   sp, $1111                                   ; $4e16: $31 $11 $11
	ccf                                              ; $4e19: $3f
	rst  $38                                         ; $4e1a: $ff
	sbc  e                                           ; $4e1b: $9b
	ld   h, [hl]                                     ; $4e1c: $66
	ld   a, [$1c11]                                  ; $4e1d: $fa $11 $1c
	rst  $38                                         ; $4e20: $ff
	db   $fd                                         ; $4e21: $fd
	ld   a, [hl+]                                    ; $4e22: $2a
	ld   sp, hl                                      ; $4e23: $f9
	ld   de, $9f11                                   ; $4e24: $11 $11 $9f
	rst  $38                                         ; $4e27: $ff
	sbc  h                                           ; $4e28: $9c
	cp   h                                           ; $4e29: $bc
	and  a                                           ; $4e2a: $a7
	ld   sp, $a67a                                   ; $4e2b: $31 $7a $a6
	ld   sp, $1111                                   ; $4e2e: $31 $11 $11
	rst  $38                                         ; $4e31: $ff
	ei                                               ; $4e32: $fb
	ld   a, c                                        ; $4e33: $79
	ld   c, a                                        ; $4e34: $4f
	pop  af                                          ; $4e35: $f1
	ld   de, $ff9f                                   ; $4e36: $11 $9f $ff
	push af                                          ; $4e39: $f5
	ld   e, a                                        ; $4e3a: $5f
	db   $d3                                         ; $4e3b: $d3
	ld   de, $ff15                                   ; $4e3c: $11 $15 $ff
	db   $fc                                         ; $4e3f: $fc
	cp   l                                           ; $4e40: $bd
	bit  4, h                                        ; $4e41: $cb $64
	inc  d                                           ; $4e43: $14
	sbc  d                                           ; $4e44: $9a
	ld   h, d                                        ; $4e45: $62
	ld   de, $1f11                                   ; $4e46: $11 $11 $1f
	rst  $38                                         ; $4e49: $ff
	and  a                                           ; $4e4a: $a7
	add  [hl]                                        ; $4e4b: $86
	db   $fd                                         ; $4e4c: $fd
	ld   de, $ff1c                                   ; $4e4d: $11 $1c $ff
	cp   $58                                         ; $4e50: $fe $58
	ld   a, [$1111]                                  ; $4e52: $fa $11 $11
	adc  a                                           ; $4e55: $8f
	rst  $38                                         ; $4e56: $ff
	cp   [hl]                                        ; $4e57: $be
	db   $fc                                         ; $4e58: $fc
	add  [hl]                                        ; $4e59: $86
	ld   b, c                                        ; $4e5a: $41
	ld   e, b                                        ; $4e5b: $58
	sub  d                                           ; $4e5c: $92
	ld   de, $1f11                                   ; $4e5d: $11 $11 $1f
	rst  $38                                         ; $4e60: $ff
	or   $94                                         ; $4e61: $f6 $94
	rst  JumpTable                                         ; $4e63: $df
	ld   de, $ff15                                   ; $4e64: $11 $15 $ff
	rst  $38                                         ; $4e67: $ff
	sub  l                                           ; $4e68: $95
	rst  $38                                         ; $4e69: $ff
	ld   de, $4f11                                   ; $4e6a: $11 $11 $4f
	rst  $38                                         ; $4e6d: $ff
	call z, $b7ff                                    ; $4e6e: $cc $ff $b7
	ld   h, d                                        ; $4e71: $62
	scf                                              ; $4e72: $37
	sub  h                                           ; $4e73: $94
	ld   de, $1f11                                   ; $4e74: $11 $11 $1f
	rst  $38                                         ; $4e77: $ff
	push af                                          ; $4e78: $f5
	and  [hl]                                        ; $4e79: $a6
	rst  $28                                         ; $4e7a: $ef
	ld   de, $ff15                                   ; $4e7b: $11 $15 $ff
	rst  $38                                         ; $4e7e: $ff
	sbc  b                                           ; $4e7f: $98
	rst  $38                                         ; $4e80: $ff
	ld   de, $5f11                                   ; $4e81: $11 $11 $5f
	rst  $38                                         ; $4e84: $ff
	cp   l                                           ; $4e85: $bd
	rst  $38                                         ; $4e86: $ff
	ret                                              ; $4e87: $c9


	ld   d, c                                        ; $4e88: $51
	ld   c, b                                        ; $4e89: $48
	ld   [hl], c                                     ; $4e8a: $71
	ld   de, $1f11                                   ; $4e8b: $11 $11 $1f
	rst  $38                                         ; $4e8e: $ff
	ld   h, l                                        ; $4e8f: $65
	cp   b                                           ; $4e90: $b8
	ld   sp, hl                                      ; $4e91: $f9
	ld   de, $ff1f                                   ; $4e92: $11 $1f $ff
	ld   a, [$f87f]                                  ; $4e95: $fa $7f $f8
	ld   de, $df12                                   ; $4e98: $11 $12 $df
	ei                                               ; $4e9b: $fb
	xor  a                                           ; $4e9c: $af
	rst  $38                                         ; $4e9d: $ff
	or   [hl]                                        ; $4e9e: $b6
	ld   de, $2167                                   ; $4e9f: $11 $67 $21
	ld   de, rAUD1LEN                                   ; $4ea2: $11 $11 $ff
	push af                                          ; $4ea5: $f5
	ld   c, d                                        ; $4ea6: $4a
	sbc  a                                           ; $4ea7: $9f
	or   c                                           ; $4ea8: $b1
	ld   de, $ffff                                   ; $4ea9: $11 $ff $ff
	sub  a                                           ; $4eac: $97
	rst  $38                                         ; $4ead: $ff
	sub  c                                           ; $4eae: $91
	ld   de, $ff2c                                   ; $4eaf: $11 $2c $ff
	xor  e                                           ; $4eb2: $ab
	rst  $38                                         ; $4eb3: $ff
	db   $fc                                         ; $4eb4: $fc
	ld   h, c                                        ; $4eb5: $61
	ld   d, $51                                      ; $4eb6: $16 $51
	ld   de, rAUD1LEN                                   ; $4eb8: $11 $11 $ff
	db   $fd                                         ; $4ebb: $fd
	rla                                              ; $4ebc: $17
	sbc  [hl]                                        ; $4ebd: $9e
	pop  af                                          ; $4ebe: $f1
	ld   de, $ff7f                                   ; $4ebf: $11 $7f $ff
	or   a                                           ; $4ec2: $b7
	adc  a                                           ; $4ec3: $8f
	di                                               ; $4ec4: $f3
	ld   de, $ff16                                   ; $4ec5: $11 $16 $ff
	rst  ToBoot                                         ; $4ec8: $c7
	rst  JumpTable                                         ; $4ec9: $df
	rst  $38                                         ; $4eca: $ff
	and  d                                           ; $4ecb: $a2
	inc  d                                           ; $4ecc: $14
	ld   [hl], d                                     ; $4ecd: $72
	ld   de, $7f11                                   ; $4ece: $11 $11 $7f
	rst  $38                                         ; $4ed1: $ff
	inc  h                                           ; $4ed2: $24
	cp   e                                           ; $4ed3: $bb
	or   $11                                         ; $4ed4: $f6 $11
	rra                                              ; $4ed6: $1f
	rst  $38                                         ; $4ed7: $ff
	rst  $10                                         ; $4ed8: $d7
	ld   a, a                                        ; $4ed9: $7f
	rst  $30                                         ; $4eda: $f7
	ld   de, $cf14                                   ; $4edb: $11 $14 $cf
	or   [hl]                                        ; $4ede: $b6
	cp   a                                           ; $4edf: $bf
	rst  $38                                         ; $4ee0: $ff
	jp   Jump_0f6_6312                               ; $4ee1: $c3 $12 $63


	ld   de, $7f11                                   ; $4ee4: $11 $11 $7f
	rst  $38                                         ; $4ee7: $ff
	dec  h                                           ; $4ee8: $25
	cp   e                                           ; $4ee9: $bb
	or   $11                                         ; $4eea: $f6 $11
	rra                                              ; $4eec: $1f
	rst  $38                                         ; $4eed: $ff
	ret  c                                           ; $4eee: $d8

	sbc  a                                           ; $4eef: $9f
	ld   hl, sp+$11                                  ; $4ef0: $f8 $11
	ld   [de], a                                     ; $4ef2: $12
	xor  a                                           ; $4ef3: $af
	sub  h                                           ; $4ef4: $94
	xor  a                                           ; $4ef5: $af
	rst  $38                                         ; $4ef6: $ff
	jp   nz, Jump_0f6_6211                           ; $4ef7: $c2 $11 $62

	ld   de, rAUD1LEN                                   ; $4efa: $11 $11 $ff
	rst  $38                                         ; $4efd: $ff
	dec  de                                          ; $4efe: $1b
	cp   a                                           ; $4eff: $bf
	pop  af                                          ; $4f00: $f1
	ld   de, $ff3d                                   ; $4f01: $11 $3d $ff
	cp   c                                           ; $4f04: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f05: $cf
	ld   sp, hl                                      ; $4f06: $f9
	ld   de, $bc11                                   ; $4f07: $11 $11 $bc
	ld   d, d                                        ; $4f0a: $52
	rst  JumpTable                                         ; $4f0b: $df
	rst  $38                                         ; $4f0c: $ff
	or   d                                           ; $4f0d: $b2
	ld   [de], a                                     ; $4f0e: $12
	ld   d, c                                        ; $4f0f: $51
	ld   de, rAUD1LEN                                   ; $4f10: $11 $11 $ff
	ld   a, [$ffaf]                                  ; $4f13: $fa $af $ff
	pop  bc                                          ; $4f16: $c1
	ld   de, $fc3b                                   ; $4f17: $11 $3b $fc
	sub  a                                           ; $4f1a: $97
	rst  $38                                         ; $4f1b: $ff
	ei                                               ; $4f1c: $fb
	ld   de, $b614                                   ; $4f1d: $11 $14 $b6
	ld   [de], a                                     ; $4f20: $12
	rst  $38                                         ; $4f21: $ff
	rst  $38                                         ; $4f22: $ff
	and  c                                           ; $4f23: $a1
	inc  d                                           ; $4f24: $14
	ld   de, $5f11                                   ; $4f25: $11 $11 $5f
	rst  $38                                         ; $4f28: $ff
	sbc  $ef                                         ; $4f29: $de $ef
	ld   a, [$1111]                                  ; $4f2b: $fa $11 $11
	adc  c                                           ; $4f2e: $89
	ld   h, c                                        ; $4f2f: $61
	adc  a                                           ; $4f30: $8f
	rst  $38                                         ; $4f31: $ff
	ld   sp, hl                                      ; $4f32: $f9
	ld   b, l                                        ; $4f33: $45
	cp   c                                           ; $4f34: $b9
	ld   sp, $df38                                   ; $4f35: $31 $38 $df
	rst  $20                                         ; $4f38: $e7
	ld   hl, $1411                                   ; $4f39: $21 $11 $14
	ld   d, l                                        ; $4f3c: $55
	ld   a, d                                        ; $4f3d: $7a
	rst  $38                                         ; $4f3e: $ff
	rst  $38                                         ; $4f3f: $ff
	ret  z                                           ; $4f40: $c8

	ld   h, [hl]                                     ; $4f41: $66
	inc  sp                                          ; $4f42: $33
	ld   [hl-], a                                    ; $4f43: $32
	dec  h                                           ; $4f44: $25
	cp   d                                           ; $4f45: $ba
	call $cfdd                                       ; $4f46: $cd $dd $cf
	db   $eb                                         ; $4f49: $eb
	adc  c                                           ; $4f4a: $89
	adc  c                                           ; $4f4b: $89
	sbc  b                                           ; $4f4c: $98
	ld   d, d                                        ; $4f4d: $52
	ld   de, $1a11                                   ; $4f4e: $11 $11 $1a
	adc  b                                           ; $4f51: $88
	ld   a, c                                        ; $4f52: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f53: $cf
	rst  $38                                         ; $4f54: $ff
	and  l                                           ; $4f55: $a5
	ld   [hl], a                                     ; $4f56: $77
	ld   a, c                                        ; $4f57: $79
	ld   d, c                                        ; $4f58: $51
	dec  d                                           ; $4f59: $15
	sbc  d                                           ; $4f5a: $9a
	cp   d                                           ; $4f5b: $ba
	xor  b                                           ; $4f5c: $a8
	rst  JumpTable                                         ; $4f5d: $df
	db   $fd                                         ; $4f5e: $fd
	cp   c                                           ; $4f5f: $b9
	xor  e                                           ; $4f60: $ab
	cp   b                                           ; $4f61: $b8
	ld   hl, $1111                                   ; $4f62: $21 $11 $11
	ld   b, [hl]                                     ; $4f65: $46
	ld   d, [hl]                                     ; $4f66: $56
	ld   l, b                                        ; $4f67: $68
	xor  [hl]                                        ; $4f68: $ae
	db   $fd                                         ; $4f69: $fd
	cp   d                                           ; $4f6a: $ba
	cp   d                                           ; $4f6b: $ba
	cp   e                                           ; $4f6c: $bb
	sub  l                                           ; $4f6d: $95
	ld   b, a                                        ; $4f6e: $47
	ld   a, c                                        ; $4f6f: $79
	sbc  b                                           ; $4f70: $98
	halt                                             ; $4f71: $76
	sbc  d                                           ; $4f72: $9a
	xor  d                                           ; $4f73: $aa
	sbc  c                                           ; $4f74: $99
	sbc  e                                           ; $4f75: $9b
	cp   d                                           ; $4f76: $ba
	sbc  c                                           ; $4f77: $99
	add  a                                           ; $4f78: $87
	ld   h, l                                        ; $4f79: $65
	ld   d, l                                        ; $4f7a: $55
	ld   b, e                                        ; $4f7b: $43
	inc  hl                                          ; $4f7c: $23
	ld   b, [hl]                                     ; $4f7d: $46
	ld   a, b                                        ; $4f7e: $78
	ld   a, b                                        ; $4f7f: $78
	adc  d                                           ; $4f80: $8a
	xor  d                                           ; $4f81: $aa
	cp   d                                           ; $4f82: $ba
	xor  c                                           ; $4f83: $a9
	sbc  d                                           ; $4f84: $9a
	sbc  c                                           ; $4f85: $99
	adc  b                                           ; $4f86: $88
	sbc  c                                           ; $4f87: $99
	sbc  b                                           ; $4f88: $98
	adc  c                                           ; $4f89: $89
	sbc  d                                           ; $4f8a: $9a
	xor  d                                           ; $4f8b: $aa
	sbc  c                                           ; $4f8c: $99
	adc  b                                           ; $4f8d: $88
	adc  b                                           ; $4f8e: $88
	ld   [hl], a                                     ; $4f8f: $77
	ld   h, h                                        ; $4f90: $64
	ld   b, e                                        ; $4f91: $43
	inc  sp                                          ; $4f92: $33
	ld   b, l                                        ; $4f93: $45
	ld   d, l                                        ; $4f94: $55
	ld   h, a                                        ; $4f95: $67
	adc  b                                           ; $4f96: $88
	sbc  c                                           ; $4f97: $99
	sbc  d                                           ; $4f98: $9a
	cp   d                                           ; $4f99: $ba
	cp   e                                           ; $4f9a: $bb
	xor  d                                           ; $4f9b: $aa
	sbc  d                                           ; $4f9c: $9a
	sbc  d                                           ; $4f9d: $9a
	sbc  d                                           ; $4f9e: $9a
	cp   e                                           ; $4f9f: $bb
	xor  d                                           ; $4fa0: $aa
	xor  d                                           ; $4fa1: $aa
	adc  c                                           ; $4fa2: $89
	add  a                                           ; $4fa3: $87
	halt                                             ; $4fa4: $76
	ld   h, [hl]                                     ; $4fa5: $66
	ld   h, l                                        ; $4fa6: $65
	ld   b, e                                        ; $4fa7: $43
	inc  [hl]                                        ; $4fa8: $34
	ld   d, l                                        ; $4fa9: $55
	ld   d, l                                        ; $4faa: $55
	ld   h, a                                        ; $4fab: $67
	ld   a, b                                        ; $4fac: $78
	sbc  c                                           ; $4fad: $99
	xor  d                                           ; $4fae: $aa
	cp   d                                           ; $4faf: $ba
	xor  d                                           ; $4fb0: $aa
	cp   d                                           ; $4fb1: $ba
	sbc  d                                           ; $4fb2: $9a
	sbc  d                                           ; $4fb3: $9a
	xor  e                                           ; $4fb4: $ab
	xor  d                                           ; $4fb5: $aa
	xor  c                                           ; $4fb6: $a9
	sbc  c                                           ; $4fb7: $99
	sbc  b                                           ; $4fb8: $98
	ld   [hl], a                                     ; $4fb9: $77
	halt                                             ; $4fba: $76
	ld   h, [hl]                                     ; $4fbb: $66
	ld   h, l                                        ; $4fbc: $65
	ld   b, h                                        ; $4fbd: $44
	ld   b, h                                        ; $4fbe: $44
	ld   b, l                                        ; $4fbf: $45
	ld   d, l                                        ; $4fc0: $55
	ld   h, [hl]                                     ; $4fc1: $66
	ld   a, b                                        ; $4fc2: $78
	adc  c                                           ; $4fc3: $89
	xor  c                                           ; $4fc4: $a9
	xor  d                                           ; $4fc5: $aa
	xor  d                                           ; $4fc6: $aa
	cp   e                                           ; $4fc7: $bb
	xor  d                                           ; $4fc8: $aa
	xor  d                                           ; $4fc9: $aa
	cp   d                                           ; $4fca: $ba
	xor  d                                           ; $4fcb: $aa
	sbc  c                                           ; $4fcc: $99
	sbc  c                                           ; $4fcd: $99
	sbc  c                                           ; $4fce: $99
	add  a                                           ; $4fcf: $87
	ld   [hl], a                                     ; $4fd0: $77
	ld   h, [hl]                                     ; $4fd1: $66
	ld   h, [hl]                                     ; $4fd2: $66
	ld   d, h                                        ; $4fd3: $54
	ld   b, h                                        ; $4fd4: $44
	inc  [hl]                                        ; $4fd5: $34
	ld   d, l                                        ; $4fd6: $55
	ld   h, [hl]                                     ; $4fd7: $66
	ld   [hl], a                                     ; $4fd8: $77
	adc  c                                           ; $4fd9: $89
	xor  c                                           ; $4fda: $a9
	sbc  d                                           ; $4fdb: $9a
	xor  d                                           ; $4fdc: $aa
	xor  e                                           ; $4fdd: $ab
	cp   d                                           ; $4fde: $ba
	xor  d                                           ; $4fdf: $aa
	cp   e                                           ; $4fe0: $bb
	cp   d                                           ; $4fe1: $ba
	sbc  d                                           ; $4fe2: $9a
	sbc  d                                           ; $4fe3: $9a
	sbc  c                                           ; $4fe4: $99
	sbc  c                                           ; $4fe5: $99
	add  a                                           ; $4fe6: $87
	ld   [hl], a                                     ; $4fe7: $77
	ld   h, [hl]                                     ; $4fe8: $66
	ld   h, l                                        ; $4fe9: $65
	ld   b, h                                        ; $4fea: $44
	inc  sp                                          ; $4feb: $33
	ld   b, l                                        ; $4fec: $45
	ld   h, [hl]                                     ; $4fed: $66
	ld   h, a                                        ; $4fee: $67
	adc  c                                           ; $4fef: $89
	sbc  d                                           ; $4ff0: $9a
	xor  c                                           ; $4ff1: $a9
	sbc  c                                           ; $4ff2: $99
	xor  e                                           ; $4ff3: $ab
	xor  d                                           ; $4ff4: $aa
	xor  d                                           ; $4ff5: $aa
	xor  e                                           ; $4ff6: $ab
	cp   e                                           ; $4ff7: $bb
	xor  c                                           ; $4ff8: $a9
	sbc  d                                           ; $4ff9: $9a
	sbc  c                                           ; $4ffa: $99
	sbc  b                                           ; $4ffb: $98
	adc  b                                           ; $4ffc: $88
	ld   [hl], a                                     ; $4ffd: $77
	ld   h, l                                        ; $4ffe: $65
	ld   d, [hl]                                     ; $4fff: $56
	ld   d, h                                        ; $5000: $54
	inc  sp                                          ; $5001: $33
	inc  [hl]                                        ; $5002: $34
	ld   h, a                                        ; $5003: $67
	ld   [hl], a                                     ; $5004: $77
	ld   a, c                                        ; $5005: $79
	sbc  e                                           ; $5006: $9b
	cp   c                                           ; $5007: $b9
	adc  c                                           ; $5008: $89
	xor  d                                           ; $5009: $aa
	xor  e                                           ; $500a: $ab
	sbc  c                                           ; $500b: $99
	sbc  d                                           ; $500c: $9a
	xor  d                                           ; $500d: $aa
	xor  c                                           ; $500e: $a9
	adc  c                                           ; $500f: $89
	xor  c                                           ; $5010: $a9
	sbc  b                                           ; $5011: $98
	add  a                                           ; $5012: $87
	add  a                                           ; $5013: $87
	ld   h, l                                        ; $5014: $65
	ld   d, [hl]                                     ; $5015: $56
	ld   h, l                                        ; $5016: $65
	ld   b, e                                        ; $5017: $43
	inc  [hl]                                        ; $5018: $34
	ld   l, b                                        ; $5019: $68
	ld   [hl], a                                     ; $501a: $77
	ld   a, c                                        ; $501b: $79
	sbc  e                                           ; $501c: $9b
	cp   c                                           ; $501d: $b9
	adc  b                                           ; $501e: $88
	xor  e                                           ; $501f: $ab
	cp   e                                           ; $5020: $bb
	xor  b                                           ; $5021: $a8
	adc  e                                           ; $5022: $8b
	res  5, c                                        ; $5023: $cb $a9
	sbc  c                                           ; $5025: $99
	cp   e                                           ; $5026: $bb
	and  a                                           ; $5027: $a7
	ld   h, l                                        ; $5028: $65
	ld   b, e                                        ; $5029: $43
	ld   de, $5346                                   ; $502a: $11 $46 $53
	inc  [hl]                                        ; $502d: $34
	ld   l, e                                        ; $502e: $6b
	res  5, b                                        ; $502f: $cb $a8
	xor  e                                           ; $5031: $ab
	call z, Call_0f6_6896                            ; $5032: $cc $96 $68
	sbc  b                                           ; $5035: $98
	ld   [hl], a                                     ; $5036: $77
	ld   l, c                                        ; $5037: $69
	call $bbca                                       ; $5038: $cd $ca $bb
	res  2, l                                        ; $503b: $cb $95
	ld   sp, $2611                                   ; $503d: $31 $11 $26
	ld   b, d                                        ; $5040: $42
	inc  h                                           ; $5041: $24
	ld   a, e                                        ; $5042: $7b
	cp   $b9                                         ; $5043: $fe $b9
	cp   l                                           ; $5045: $bd
	call $3784                                       ; $5046: $cd $84 $37
	add  a                                           ; $5049: $87
	ld   h, l                                        ; $504a: $65
	ld   e, c                                        ; $504b: $59
	rst  $38                                         ; $504c: $ff
	db   $ec                                         ; $504d: $ec
	sbc  $ed                                         ; $504e: $de $ed
	ld   [hl], c                                     ; $5050: $71
	ld   de, $1711                                   ; $5051: $11 $11 $17
	ld   b, e                                        ; $5054: $43
	ld   c, d                                        ; $5055: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5056: $cf
	rst  $38                                         ; $5057: $ff
	sbc  c                                           ; $5058: $99
	res  3, c                                        ; $5059: $cb $99
	ld   hl, $7708                                   ; $505b: $21 $08 $77
	ld   a, b                                        ; $505e: $78
	cp   a                                           ; $505f: $bf
	rst  $38                                         ; $5060: $ff
	cp   $de                                         ; $5061: $fe $de
	or   a                                           ; $5063: $b7
	ld   de, $1111                                   ; $5064: $11 $11 $11
	xor  b                                           ; $5067: $a8
	ld   h, a                                        ; $5068: $67
	rst  $38                                         ; $5069: $ff
	rst  $38                                         ; $506a: $ff
	push af                                          ; $506b: $f5
	ld   c, d                                        ; $506c: $4a
	ld   h, d                                        ; $506d: $62
	ld   de, $db12                                   ; $506e: $11 $12 $db
	cp   h                                           ; $5071: $bc
	rst  $38                                         ; $5072: $ff
	rst  $38                                         ; $5073: $ff
	ei                                               ; $5074: $fb
	adc  e                                           ; $5075: $8b
	sub  h                                           ; $5076: $94
	ld   de, $1111                                   ; $5077: $11 $11 $11
	rst  $38                                         ; $507a: $ff
	reti                                             ; $507b: $d9


	rst  $38                                         ; $507c: $ff
	rst  $38                                         ; $507d: $ff
	pop  bc                                          ; $507e: $c1
	inc  de                                          ; $507f: $13
	ld   sp, $1611                                   ; $5080: $31 $11 $16
	rst  $38                                         ; $5083: $ff
	rst  $38                                         ; $5084: $ff
	rst  $38                                         ; $5085: $ff
	rst  $38                                         ; $5086: $ff
	and  e                                           ; $5087: $a3
	add  hl, sp                                      ; $5088: $39
	sub  e                                           ; $5089: $93
	ld   de, $1e11                                   ; $508a: $11 $11 $1e
	db   $fd                                         ; $508d: $fd
	cp   c                                           ; $508e: $b9
	rst  $38                                         ; $508f: $ff
	rst  $38                                         ; $5090: $ff
	ld   de, $1116                                   ; $5091: $11 $16 $11
	ld   de, $ff9f                                   ; $5094: $11 $9f $ff
	db   $dd                                         ; $5097: $dd
	rst  $38                                         ; $5098: $ff
	ld   [$ae13], a                                  ; $5099: $ea $13 $ae
	ld   [hl], d                                     ; $509c: $72
	ld   de, $2f11                                   ; $509d: $11 $11 $2f
	ld   a, [$ff9e]                                  ; $50a0: $fa $9e $ff
	push af                                          ; $50a3: $f5
	ld   de, $1115                                   ; $50a4: $11 $15 $11
	jr   @+$01                                       ; $50a7: $18 $ff

	ld   a, [$f9ce]                                  ; $50a9: $fa $ce $f9
	and  d                                           ; $50ac: $a2
	add  hl, sp                                      ; $50ad: $39
	db   $fc                                         ; $50ae: $fc
	ld   d, d                                        ; $50af: $52
	ld   de, $5f11                                   ; $50b0: $11 $11 $5f
	ei                                               ; $50b3: $fb
	sbc  a                                           ; $50b4: $9f
	rst  $38                                         ; $50b5: $ff
	pop  af                                          ; $50b6: $f1
	ld   de, $1152                                   ; $50b7: $11 $52 $11
	ld   c, a                                        ; $50ba: $4f
	rst  $38                                         ; $50bb: $ff
	ret  c                                           ; $50bc: $d8

	xor  l                                           ; $50bd: $ad
	and  l                                           ; $50be: $a5
	ld   h, c                                        ; $50bf: $61
	adc  a                                           ; $50c0: $8f
	ld   a, [$1141]                                  ; $50c1: $fa $41 $11
	ld   de, $fcdf                                   ; $50c4: $11 $df $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50c7: $cf
	rst  $38                                         ; $50c8: $ff
	add  c                                           ; $50c9: $81
	ld   de, $1391                                   ; $50ca: $11 $91 $13
	rst  $28                                         ; $50cd: $ef
	rst  $38                                         ; $50ce: $ff
	ld   b, a                                        ; $50cf: $47
	ld   a, e                                        ; $50d0: $7b
	dec  d                                           ; $50d1: $15
	ld   b, l                                        ; $50d2: $45
	rst  $38                                         ; $50d3: $ff
	rst  $30                                         ; $50d4: $f7
	ld   d, c                                        ; $50d5: $51
	ld   de, rAUD1LEN                                   ; $50d6: $11 $11 $ff
	ei                                               ; $50d9: $fb
	rst  $38                                         ; $50da: $ff
	rst  $38                                         ; $50db: $ff
	ld   de, $8111                                   ; $50dc: $11 $11 $81
	ld   e, b                                        ; $50df: $58
	rst  $38                                         ; $50e0: $ff
	rst  $38                                         ; $50e1: $ff
	ld   [de], a                                     ; $50e2: $12
	ld   d, [hl]                                     ; $50e3: $56
	inc  d                                           ; $50e4: $14
	inc  a                                           ; $50e5: $3c
	rst  $38                                         ; $50e6: $ff
	or   $31                                         ; $50e7: $f6 $31
	ld   de, rAUD1LEN                                   ; $50e9: $11 $11 $ff
	db   $fc                                         ; $50ec: $fc
	rst  $38                                         ; $50ed: $ff
	rst  $38                                         ; $50ee: $ff
	ld   de, $9113                                   ; $50ef: $11 $13 $91
	sbc  [hl]                                        ; $50f2: $9e
	rst  $38                                         ; $50f3: $ff
	ld   hl, sp+$11                                  ; $50f4: $f8 $11
	inc  [hl]                                        ; $50f6: $34
	inc  de                                          ; $50f7: $13
	ld   e, a                                        ; $50f8: $5f
	rst  $38                                         ; $50f9: $ff
	db   $e4                                         ; $50fa: $e4
	ld   de, $1111                                   ; $50fb: $11 $11 $11
	rst  $38                                         ; $50fe: $ff
	ld   a, [$ffff]                                  ; $50ff: $fa $ff $ff
	ld   de, $f516                                   ; $5102: $11 $16 $f5
	cp   a                                           ; $5105: $bf
	rst  $38                                         ; $5106: $ff
	pop  af                                          ; $5107: $f1
	ld   de, $1435                                   ; $5108: $11 $35 $14
	adc  a                                           ; $510b: $8f
	rst  $38                                         ; $510c: $ff
	and  c                                           ; $510d: $a1
	ld   de, $1111                                   ; $510e: $11 $11 $11
	rst  $38                                         ; $5111: $ff
	rst  $30                                         ; $5112: $f7
	rst  $38                                         ; $5113: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5114: $cf
	ld   de, $f91d                                   ; $5115: $11 $1d $f9
	rst  JumpTable                                         ; $5118: $df
	rst  $38                                         ; $5119: $ff
	pop  af                                          ; $511a: $f1
	ld   de, $1659                                   ; $511b: $11 $59 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $511e: $cf
	rst  $38                                         ; $511f: $ff
	ld   hl, $1111                                   ; $5120: $21 $11 $11
	ld   de, $f1ff                                   ; $5123: $11 $ff $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5126: $cf
	cp   a                                           ; $5127: $bf
	ld   de, $fc1f                                   ; $5128: $11 $1f $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $512b: $cf
	rst  $38                                         ; $512c: $ff
	pop  af                                          ; $512d: $f1
	ld   de, $17bb                                   ; $512e: $11 $bb $17
	rst  $38                                         ; $5131: $ff
	rst  $38                                         ; $5132: $ff
	ld   de, $1125                                   ; $5133: $11 $25 $11
	ld   de, $f1ff                                   ; $5136: $11 $ff $f1
	adc  a                                           ; $5139: $8f
	sbc  [hl]                                        ; $513a: $9e
	ld   de, $fc1f                                   ; $513b: $11 $1f $fc
	xor  a                                           ; $513e: $af
	rst  $38                                         ; $513f: $ff
	pop  bc                                          ; $5140: $c1
	ld   de, $19ff                                   ; $5141: $11 $ff $19
	rst  $38                                         ; $5144: $ff
	ei                                               ; $5145: $fb
	ld   de, $1148                                   ; $5146: $11 $48 $11
	ld   de, $f1ff                                   ; $5149: $11 $ff $f1
	ccf                                              ; $514c: $3f
	adc  l                                           ; $514d: $8d
	ld   de, $fb1f                                   ; $514e: $11 $1f $fb
	ld   l, h                                        ; $5151: $6c
	rst  $38                                         ; $5152: $ff
	or   c                                           ; $5153: $b1
	ld   de, $28ff                                   ; $5154: $11 $ff $28
	rst  $28                                         ; $5157: $ef
	ld   sp, hl                                      ; $5158: $f9
	ld   de, $1169                                   ; $5159: $11 $69 $11
	ld   de, $f1ff                                   ; $515c: $11 $ff $f1
	rra                                              ; $515f: $1f
	sbc  h                                           ; $5160: $9c
	ld   de, $fb1f                                   ; $5161: $11 $1f $fb
	ld   c, b                                        ; $5164: $48
	rst  $38                                         ; $5165: $ff
	and  c                                           ; $5166: $a1
	ld   [de], a                                     ; $5167: $12
	rst  $38                                         ; $5168: $ff
	ld   b, [hl]                                     ; $5169: $46
	rst  $28                                         ; $516a: $ef
	ei                                               ; $516b: $fb
	ld   de, $216b                                   ; $516c: $11 $6b $21
	ld   de, $f1ff                                   ; $516f: $11 $ff $f1
	rra                                              ; $5172: $1f
	rst  $20                                         ; $5173: $e7
	ld   b, c                                        ; $5174: $41
	dec  de                                          ; $5175: $1b
	rst  $38                                         ; $5176: $ff
	ld   [hl], $ff                                   ; $5177: $36 $ff
	sub  c                                           ; $5179: $91
	ld   de, $b2bf                                   ; $517a: $11 $bf $b2
	rst  JumpTable                                         ; $517d: $df
	rst  $38                                         ; $517e: $ff
	ld   d, c                                        ; $517f: $51
	add  hl, sp                                      ; $5180: $39
	ld   h, c                                        ; $5181: $61
	ld   de, $ff1f                                   ; $5182: $11 $1f $ff
	ld   [de], a                                     ; $5185: $12
	or   $71                                         ; $5186: $f6 $71
	ld   de, $75ff                                   ; $5188: $11 $ff $75
	cp   a                                           ; $518b: $bf
	push bc                                          ; $518c: $c5
	ld   de, $f36f                                   ; $518d: $11 $6f $f3
	sbc  a                                           ; $5190: $9f
	rst  $38                                         ; $5191: $ff
	and  e                                           ; $5192: $a3
	rla                                              ; $5193: $17
	ld   [hl], c                                     ; $5194: $71
	ld   de, $ff1b                                   ; $5195: $11 $1b $ff
	ld   b, c                                        ; $5198: $41
	cp   [hl]                                        ; $5199: $be
	ld   [hl], $11                                   ; $519a: $36 $11
	sbc  a                                           ; $519c: $9f
	push af                                          ; $519d: $f5
	adc  a                                           ; $519e: $8f
	or   $31                                         ; $519f: $f6 $31
	add  hl, de                                      ; $51a1: $19
	db   $fd                                         ; $51a2: $fd
	ld   c, [hl]                                     ; $51a3: $4e
	rst  $38                                         ; $51a4: $ff
	reti                                             ; $51a5: $d9


	inc  h                                           ; $51a6: $24
	ld   h, h                                        ; $51a7: $64
	ld   de, rAUD1LEN                                   ; $51a8: $11 $11 $ff
	pop  af                                          ; $51ab: $f1
	rra                                              ; $51ac: $1f

Call_0f6_51ad:
	ld   h, [hl]                                     ; $51ad: $66
	ld   hl, $fc1f                                   ; $51ae: $21 $1f $fc
	ld   l, c                                        ; $51b1: $69
	db   $fc                                         ; $51b2: $fc
	ld   d, c                                        ; $51b3: $51
	dec  d                                           ; $51b4: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51b5: $cf
	ld   [hl], a                                     ; $51b6: $77
	rst  $38                                         ; $51b7: $ff
	ld   sp, hl                                      ; $51b8: $f9
	ld   h, e                                        ; $51b9: $63
	halt                                             ; $51ba: $76
	ld   de, $1f11                                   ; $51bb: $11 $11 $1f
	db   $fc                                         ; $51be: $fc
	inc  d                                           ; $51bf: $14
	di                                               ; $51c0: $f3
	add  c                                           ; $51c1: $81
	inc  de                                          ; $51c2: $13
	rst  $38                                         ; $51c3: $ff
	ld   a, b                                        ; $51c4: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51c5: $cf
	ld   [hl], h                                     ; $51c6: $74
	ld   de, $f49f                                   ; $51c7: $11 $9f $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51ca: $cf
	db   $fc                                         ; $51cb: $fc
	add  l                                           ; $51cc: $85
	ld   h, a                                        ; $51cd: $67
	ld   b, c                                        ; $51ce: $41
	ld   de, $ff1c                                   ; $51cf: $11 $1c $ff
	ld   sp, $48bb                                   ; $51d2: $31 $bb $48
	ld   de, $f6af                                   ; $51d5: $11 $af $f6
	sbc  [hl]                                        ; $51d8: $9e
	push af                                          ; $51d9: $f5
	ld   sp, $fb2b                                   ; $51da: $31 $2b $fb
	ld   e, a                                        ; $51dd: $5f
	rst  $38                                         ; $51de: $ff
	and  a                                           ; $51df: $a7
	ld   e, c                                        ; $51e0: $59
	ld   h, d                                        ; $51e1: $62
	ld   de, rAUD1LEN                                   ; $51e2: $11 $11 $ff
	pop  af                                          ; $51e5: $f1
	ld   e, $76                                      ; $51e6: $1e $76
	ld   b, c                                        ; $51e8: $41
	rra                                              ; $51e9: $1f
	db   $fc                                         ; $51ea: $fc
	ld   l, d                                        ; $51eb: $6a
	db   $fc                                         ; $51ec: $fc
	ld   b, c                                        ; $51ed: $41
	ld   d, $df                                      ; $51ee: $16 $df
	ld   a, c                                        ; $51f0: $79
	rst  $38                                         ; $51f1: $ff
	add  sp, $76                                     ; $51f2: $e8 $76
	sub  [hl]                                        ; $51f4: $96
	ld   de, $1f11                                   ; $51f5: $11 $11 $1f
	rst  $38                                         ; $51f8: $ff
	inc  de                                          ; $51f9: $13
	db   $e3                                         ; $51fa: $e3
	sub  c                                           ; $51fb: $91
	ld   [de], a                                     ; $51fc: $12
	rst  $38                                         ; $51fd: $ff
	ld   [hl], a                                     ; $51fe: $77
	cp   a                                           ; $51ff: $bf
	ld   [hl], h                                     ; $5200: $74
	ld   de, $f49f                                   ; $5201: $11 $9f $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5204: $cf
	ld   a, [$8977]                                  ; $5205: $fa $77 $89
	ld   sp, $1211                                   ; $5208: $31 $11 $12
	rst  $38                                         ; $520b: $ff
	sub  c                                           ; $520c: $91
	ld   l, l                                        ; $520d: $6d
	ld   a, [hl+]                                    ; $520e: $2a
	ld   de, $f56f                                   ; $520f: $11 $6f $f5
	sbc  l                                           ; $5212: $9d
	db   $f4                                         ; $5213: $f4
	ld   b, c                                        ; $5214: $41
	dec  de                                          ; $5215: $1b
	cp   $4f                                         ; $5216: $fe $4f
	rst  $38                                         ; $5218: $ff
	sub  a                                           ; $5219: $97
	ld   l, b                                        ; $521a: $68
	ld   [hl], d                                     ; $521b: $72
	ld   de, $af11                                   ; $521c: $11 $11 $af
	ldh  a, [c]                                      ; $521f: $f2
	add  hl, de                                      ; $5220: $19
	sub  h                                           ; $5221: $94
	and  c                                           ; $5222: $a1
	dec  de                                          ; $5223: $1b
	rst  $38                                         ; $5224: $ff
	ld   c, d                                        ; $5225: $4a
	cp   $33                                         ; $5226: $fe $33
	ld   [de], a                                     ; $5228: $12
	rst  JumpTable                                         ; $5229: $df
	and  [hl]                                        ; $522a: $a6
	rst  $38                                         ; $522b: $ff
	rst  $10                                         ; $522c: $d7
	ld   a, b                                        ; $522d: $78
	and  [hl]                                        ; $522e: $a6
	ld   de, $1f11                                   ; $522f: $11 $11 $1f
	rst  $38                                         ; $5232: $ff
	ld   de, $68b7                                   ; $5233: $11 $b7 $68
	ld   de, $d5df                                   ; $5236: $11 $df $d5
	cp   a                                           ; $5239: $bf
	or   h                                           ; $523a: $b4
	ld   hl, $f85e                                   ; $523b: $21 $5e $f8
	adc  a                                           ; $523e: $8f
	db   $fc                                         ; $523f: $fc
	ld   [hl], a                                     ; $5240: $77
	adc  e                                           ; $5241: $8b
	ld   h, c                                        ; $5242: $61
	ld   de, rAUD1LEN                                   ; $5243: $11 $11 $ff
	pop  af                                          ; $5246: $f1
	dec  e                                           ; $5247: $1d
	ld   l, b                                        ; $5248: $68
	ld   h, c                                        ; $5249: $61
	rra                                              ; $524a: $1f
	ld   sp, hl                                      ; $524b: $f9
	ld   e, d                                        ; $524c: $5a
	ld   a, [$1751]                                  ; $524d: $fa $51 $17
	rst  $38                                         ; $5250: $ff
	ld   e, d                                        ; $5251: $5a
	rst  $38                                         ; $5252: $ff
	or   [hl]                                        ; $5253: $b6
	ld   a, b                                        ; $5254: $78
	add  $11                                         ; $5255: $c6 $11
	ld   de, $ff1f                                   ; $5257: $11 $1f $ff
	ld   de, $87d7                                   ; $525a: $11 $d7 $87
	ld   de, $a5ff                                   ; $525d: $11 $ff $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5260: $cf
	or   l                                           ; $5261: $b5
	ld   de, $f67e                                   ; $5262: $11 $7e $f6
	cp   a                                           ; $5265: $bf
	db   $fd                                         ; $5266: $fd
	ld   h, [hl]                                     ; $5267: $66
	sbc  l                                           ; $5268: $9d
	ld   h, c                                        ; $5269: $61
	ld   de, rAUD1LEN                                   ; $526a: $11 $11 $ff
	pop  af                                          ; $526d: $f1
	dec  e                                           ; $526e: $1d
	ld   a, c                                        ; $526f: $79
	ld   h, c                                        ; $5270: $61
	rra                                              ; $5271: $1f
	ld   a, [$fc5c]                                  ; $5272: $fa $5c $fc
	ld   d, c                                        ; $5275: $51
	rla                                              ; $5276: $17
	rst  $28                                         ; $5277: $ef
	ld   l, d                                        ; $5278: $6a
	rst  $38                                         ; $5279: $ff
	call nz, $e66a                                   ; $527a: $c4 $6a $e6
	ld   de, $1311                                   ; $527d: $11 $11 $13
	rst  $38                                         ; $5280: $ff
	ld   h, c                                        ; $5281: $61
	ld   a, d                                        ; $5282: $7a
	ld   a, h                                        ; $5283: $7c
	ld   de, $f49f                                   ; $5284: $11 $9f $f4
	sbc  [hl]                                        ; $5287: $9e
	rst  $30                                         ; $5288: $f7
	ld   sp, $fb1d                                   ; $5289: $31 $1d $fb
	ld   l, a                                        ; $528c: $6f
	rst  $38                                         ; $528d: $ff
	ld   [hl], e                                     ; $528e: $73
	ld   l, l                                        ; $528f: $6d
	call nz, $1111                                   ; $5290: $c4 $11 $11
	rra                                              ; $5293: $1f
	rst  $38                                         ; $5294: $ff
	ld   [de], a                                     ; $5295: $12
	ret  z                                           ; $5296: $c8

	or   d                                           ; $5297: $b2
	ld   de, $87ff                                   ; $5298: $11 $ff $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $529b: $cf
	push de                                          ; $529c: $d5
	ld   de, $f58f                                   ; $529d: $11 $8f $f5
	cp   a                                           ; $52a0: $bf
	ei                                               ; $52a1: $fb
	inc  sp                                          ; $52a2: $33
	ld   a, a                                        ; $52a3: $7f
	jp   $1111                                       ; $52a4: $c3 $11 $11


	rra                                              ; $52a7: $1f
	db   $fd                                         ; $52a8: $fd
	dec  h                                           ; $52a9: $25
	or   a                                           ; $52aa: $b7
	or   c                                           ; $52ab: $b1
	inc  de                                          ; $52ac: $13
	rst  $38                                         ; $52ad: $ff
	ld   a, c                                        ; $52ae: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52af: $cf
	and  h                                           ; $52b0: $a4
	ld   de, $c5be                                   ; $52b1: $11 $be $c5
	rst  $28                                         ; $52b4: $ef
	ld   a, [$8f23]                                  ; $52b5: $fa $23 $8f

Call_0f6_52b8:
	db   $d3                                         ; $52b8: $d3
	ld   de, $1f11                                   ; $52b9: $11 $11 $1f
	rst  $38                                         ; $52bc: $ff
	ld   b, h                                        ; $52bd: $44
	rst  ToBoot                                         ; $52be: $c7
	and  c                                           ; $52bf: $a1
	ld   [de], a                                     ; $52c0: $12
	rst  $38                                         ; $52c1: $ff
	adc  d                                           ; $52c2: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52c3: $cf
	or   h                                           ; $52c4: $b4
	ld   de, $d7ad                                   ; $52c5: $11 $ad $d7
	rst  $28                                         ; $52c8: $ef
	ld   sp, hl                                      ; $52c9: $f9
	inc  de                                          ; $52ca: $13
	adc  l                                           ; $52cb: $8d
	or   a                                           ; $52cc: $b7
	ld   de, $1b11                                   ; $52cd: $11 $11 $1b
	rst  $38                                         ; $52d0: $ff
	ld   b, d                                        ; $52d1: $42
	jp   c, $1194                                    ; $52d2: $da $94 $11

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d5: $cf
	xor  b                                           ; $52d6: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d7: $cf
	push bc                                          ; $52d8: $c5
	ld   de, $d87c                                   ; $52d9: $11 $7c $d8
	cp   a                                           ; $52dc: $bf
	jp   hl                                          ; $52dd: $e9


	inc  [hl]                                        ; $52de: $34
	ld   a, d                                        ; $52df: $7a
	xor  d                                           ; $52e0: $aa
	add  h                                           ; $52e1: $84
	ld   de, rAUD1LEN                                   ; $52e2: $11 $11 $ff
	pop  hl                                          ; $52e5: $e1
	ld   a, a                                        ; $52e6: $7f
	add  l                                           ; $52e7: $85
	ld   de, $f82f                                   ; $52e8: $11 $2f $f8
	adc  a                                           ; $52eb: $8f
	ld   sp, hl                                      ; $52ec: $f9
	ld   hl, $cd1a                                   ; $52ed: $21 $1a $cd
	adc  [hl]                                        ; $52f0: $8e
	db   $fd                                         ; $52f1: $fd
	ld   [hl], d                                     ; $52f2: $72

jr_0f6_52f3:
	ld   b, a                                        ; $52f3: $47
	xor  d                                           ; $52f4: $aa
	xor  c                                           ; $52f5: $a9
	ld   b, c                                        ; $52f6: $41
	ld   de, $fb1f                                   ; $52f7: $11 $1f $fb
	jr   jr_0f6_52f3                                 ; $52fa: $18 $f7

	ld   d, c                                        ; $52fc: $51
	dec  d                                           ; $52fd: $15
	rst  $38                                         ; $52fe: $ff
	ld   a, d                                        ; $52ff: $7a
	rst  $38                                         ; $5300: $ff
	ld   h, d                                        ; $5301: $62
	ld   [de], a                                     ; $5302: $12
	xor  l                                           ; $5303: $ad
	ret  c                                           ; $5304: $d8

	rst  $38                                         ; $5305: $ff
	push de                                          ; $5306: $d5
	ld   d, $8a                                      ; $5307: $16 $8a
	xor  b                                           ; $5309: $a8
	xor  b                                           ; $530a: $a8
	ld   de, $af11                                   ; $530b: $11 $11 $af
	or   $4d                                         ; $530e: $f6 $4d
	or   d                                           ; $5310: $b2
	ld   de, $fd2c                                   ; $5311: $11 $2c $fd
	sbc  h                                           ; $5314: $9c
	db   $eb                                         ; $5315: $eb
	ld   hl, $df19                                   ; $5316: $21 $19 $df
	xor  e                                           ; $5319: $ab
	db   $ed                                         ; $531a: $ed
	sub  c                                           ; $531b: $91
	ld   [hl], $bb                                   ; $531c: $36 $bb
	cp   c                                           ; $531e: $b9
	add  a                                           ; $531f: $87
	ld   de, $cf11                                   ; $5320: $11 $11 $cf
	rst  $30                                         ; $5323: $f7
	dec  hl                                          ; $5324: $2b
	and  h                                           ; $5325: $a4
	ld   de, $fd2e                                   ; $5326: $11 $2e $fd
	ld   a, e                                        ; $5329: $7b
	jp   c, $1931                                    ; $532a: $da $31 $19

	rst  $38                                         ; $532d: $ff
	xor  d                                           ; $532e: $aa
	call c, $3682                                    ; $532f: $dc $82 $36
	cp   l                                           ; $5332: $bd
	cp   c                                           ; $5333: $b9
	ld   [hl], a                                     ; $5334: $77
	ld   sp, $1f11                                   ; $5335: $31 $11 $1f
	rst  $38                                         ; $5338: $ff
	inc  de                                          ; $5339: $13
	and  l                                           ; $533a: $a5
	ld   b, c                                        ; $533b: $41
	jr   @+$01                                       ; $533c: $18 $ff

	add  a                                           ; $533e: $87
	xor  h                                           ; $533f: $ac
	ld   h, e                                        ; $5340: $63
	inc  d                                           ; $5341: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5342: $cf
	rst  $10                                         ; $5343: $d7
	xor  e                                           ; $5344: $ab
	or   l                                           ; $5345: $b5
	ld   b, l                                        ; $5346: $45
	sbc  [hl]                                        ; $5347: $9e
	cp   b                                           ; $5348: $b8
	ld   h, a                                        ; $5349: $67
	ld   h, l                                        ; $534a: $65
	ld   hl, rAUD1LEN                                   ; $534b: $21 $11 $ff
	db   $f4                                         ; $534e: $f4
	ld   d, $76                                      ; $534f: $16 $76
	ld   b, c                                        ; $5351: $41
	ld   c, a                                        ; $5352: $4f
	db   $fc                                         ; $5353: $fc
	ld   b, [hl]                                     ; $5354: $46
	xor  b                                           ; $5355: $a8
	ld   b, e                                        ; $5356: $43
	dec  hl                                          ; $5357: $2b
	rst  $38                                         ; $5358: $ff
	ld   h, [hl]                                     ; $5359: $66
	adc  e                                           ; $535a: $8b
	or   l                                           ; $535b: $b5
	ld   d, l                                        ; $535c: $55
	db   $dd                                         ; $535d: $dd
	add  l                                           ; $535e: $85
	ld   e, b                                        ; $535f: $58
	ld   h, l                                        ; $5360: $65
	ld   hl, $ef11                                   ; $5361: $21 $11 $ef
	di                                               ; $5364: $f3
	dec  d                                           ; $5365: $15
	sbc  b                                           ; $5366: $98
	ld   [hl], c                                     ; $5367: $71
	ld   e, a                                        ; $5368: $5f
	ei                                               ; $5369: $fb
	ld   [hl], $aa                                   ; $536a: $36 $aa
	ld   h, l                                        ; $536c: $65
	inc  a                                           ; $536d: $3c
	rst  $38                                         ; $536e: $ff
	ld   d, [hl]                                     ; $536f: $56
	cp   e                                           ; $5370: $bb
	add  h                                           ; $5371: $84
	ld   a, c                                        ; $5372: $79
	jp   z, Jump_0f6_5a64                            ; $5373: $ca $64 $5a

	sub  [hl]                                        ; $5376: $96
	ld   b, h                                        ; $5377: $44
	ld   hl, $ff1d                                   ; $5378: $21 $1d $ff
	ld   hl, $b779                                   ; $537b: $21 $79 $b7
	inc  de                                          ; $537e: $13
	rst  $28                                         ; $537f: $ef
	and  e                                           ; $5380: $a3
	ld   e, d                                        ; $5381: $5a
	and  a                                           ; $5382: $a7
	ld   h, e                                        ; $5383: $63
	sbc  [hl]                                        ; $5384: $9e
	push hl                                          ; $5385: $e5
	ld   e, d                                        ; $5386: $5a
	ret                                              ; $5387: $c9


	ld   b, [hl]                                     ; $5388: $46
	ld   a, h                                        ; $5389: $7c
	and  [hl]                                        ; $538a: $a6
	ld   b, a                                        ; $538b: $47
	xor  c                                           ; $538c: $a9
	ld   h, l                                        ; $538d: $65
	ld   d, l                                        ; $538e: $55
	ld   hl, $ff1d                                   ; $538f: $21 $1d $ff

jr_0f6_5392:
	ld   hl, $a58a                                   ; $5392: $21 $8a $a5
	dec  d                                           ; $5395: $15
	rst  $38                                         ; $5396: $ff
	sub  d                                           ; $5397: $92

Call_0f6_5398:
	ld   e, e                                        ; $5398: $5b
	or   [hl]                                        ; $5399: $b6
	ld   h, h                                        ; $539a: $64
	cp   a                                           ; $539b: $bf
	db   $e4                                         ; $539c: $e4
	ld   e, c                                        ; $539d: $59
	cp   c                                           ; $539e: $b9
	ld   d, a                                        ; $539f: $57
	ld   a, e                                        ; $53a0: $7b
	and  [hl]                                        ; $53a1: $a6
	ld   b, a                                        ; $53a2: $47
	xor  b                                           ; $53a3: $a8
	ld   [hl], a                                     ; $53a4: $77
	add  a                                           ; $53a5: $87
	ld   h, c                                        ; $53a6: $61
	ld   de, $f69f                                   ; $53a7: $11 $9f $f6
	rla                                              ; $53aa: $17
	ret  z                                           ; $53ab: $c8

	ld   [hl], c                                     ; $53ac: $71
	inc  l                                           ; $53ad: $2c
	db   $fd                                         ; $53ae: $fd
	ld   b, a                                        ; $53af: $47
	xor  h                                           ; $53b0: $ac
	ld   [hl], l                                     ; $53b1: $75
	jr   c, jr_0f6_5392                              ; $53b2: $38 $de

	add  [hl]                                        ; $53b4: $86
	cp   e                                           ; $53b5: $bb
	sub  h                                           ; $53b6: $94
	ld   h, a                                        ; $53b7: $67
	xor  c                                           ; $53b8: $a9
	ld   [hl], a                                     ; $53b9: $77
	sbc  d                                           ; $53ba: $9a

Call_0f6_53bb:
	add  [hl]                                        ; $53bb: $86
	ld   l, b                                        ; $53bc: $68
	sbc  b                                           ; $53bd: $98
	ld   b, c                                        ; $53be: $41
	ld   de, $f96f                                   ; $53bf: $11 $6f $f9
	dec  d                                           ; $53c2: $15
	or   a                                           ; $53c3: $b7
	ld   h, d                                        ; $53c4: $62

jr_0f6_53c5:
	ld   a, [hl+]                                    ; $53c5: $2a
	rst  $38                                         ; $53c6: $ff
	ld   d, [hl]                                     ; $53c7: $56
	sbc  l                                           ; $53c8: $9d
	sub  h                                           ; $53c9: $94
	ld   [hl], $cd                                   ; $53ca: $36 $cd
	sub  h                                           ; $53cc: $94
	adc  e                                           ; $53cd: $8b
	or   [hl]                                        ; $53ce: $b6
	ld   d, a                                        ; $53cf: $57
	adc  d                                           ; $53d0: $8a
	halt                                             ; $53d1: $76
	ld   h, a                                        ; $53d2: $67
	sbc  b                                           ; $53d3: $98
	sbc  b                                           ; $53d4: $98
	xor  c                                           ; $53d5: $a9
	add  a                                           ; $53d6: $87
	ld   d, e                                        ; $53d7: $53
	ld   sp, $ff1d                                   ; $53d8: $31 $1d $ff
	ld   sp, $8588                                   ; $53db: $31 $88 $85
	inc  d                                           ; $53de: $14
	rst  $28                                         ; $53df: $ef
	and  h                                           ; $53e0: $a4
	ld   l, h                                        ; $53e1: $6c
	or   [hl]                                        ; $53e2: $b6
	ld   d, e                                        ; $53e3: $53
	adc  l                                           ; $53e4: $8d
	rst  $10                                         ; $53e5: $d7
	ld   l, c                                        ; $53e6: $69
	and  a                                           ; $53e7: $a7
	ld   d, [hl]                                     ; $53e8: $56
	ld   a, d                                        ; $53e9: $7a
	xor  c                                           ; $53ea: $a9
	ld   [hl], a                                     ; $53eb: $77
	add  a                                           ; $53ec: $87
	ld   h, [hl]                                     ; $53ed: $66
	adc  c                                           ; $53ee: $89
	xor  b                                           ; $53ef: $a8
	halt                                             ; $53f0: $76
	ld   d, h                                        ; $53f1: $54
	ld   de, $f74f                                   ; $53f2: $11 $4f $f7
	rla                                              ; $53f5: $17
	sbc  c                                           ; $53f6: $99
	ld   [hl], c                                     ; $53f7: $71
	ld   a, [de]                                     ; $53f8: $1a
	cp   $56                                         ; $53f9: $fe $56
	call z, $2664                                    ; $53fb: $cc $64 $26
	rst  JumpTable                                         ; $53fe: $df
	and  [hl]                                        ; $53ff: $a6
	adc  d                                           ; $5400: $8a
	add  h                                           ; $5401: $84
	ld   d, l                                        ; $5402: $55
	xor  e                                           ; $5403: $ab
	and  a                                           ; $5404: $a7
	ld   a, d                                        ; $5405: $7a
	sub  [hl]                                        ; $5406: $96
	ld   d, a                                        ; $5407: $57
	sbc  d                                           ; $5408: $9a
	xor  c                                           ; $5409: $a9
	add  a                                           ; $540a: $87
	ld   d, e                                        ; $540b: $53
	ld   [hl-], a                                    ; $540c: $32
	inc  de                                          ; $540d: $13
	rst  $38                                         ; $540e: $ff
	add  c                                           ; $540f: $81
	ld   l, c                                        ; $5410: $69
	ld   [hl], a                                     ; $5411: $77

jr_0f6_5412:
	ld   de, $f4af                                   ; $5412: $11 $af $f4
	ld   c, e                                        ; $5415: $4b
	push bc                                          ; $5416: $c5
	ld   d, e                                        ; $5417: $53
	ld   a, [hl]                                     ; $5418: $7e
	ld   sp, hl                                      ; $5419: $f9
	ld   d, a                                        ; $541a: $57
	sbc  c                                           ; $541b: $99
	ld   b, [hl]                                     ; $541c: $46
	ld   l, c                                        ; $541d: $69
	jp   z, $8875                                    ; $541e: $ca $75 $88

	ld   [hl], l                                     ; $5421: $75
	ld   a, c                                        ; $5422: $79
	sbc  d                                           ; $5423: $9a
	sbc  c                                           ; $5424: $99
	ld   [hl], a                                     ; $5425: $77
	ld   h, h                                        ; $5426: $64
	ld   b, h                                        ; $5427: $44
	ld   bc, $f1ff                                   ; $5428: $01 $ff $f1
	jr   jr_0f6_53c5                                 ; $542b: $18 $98

	ld   b, c                                        ; $542d: $41
	ld   c, a                                        ; $542e: $4f
	ld   hl, sp+$35                                  ; $542f: $f8 $35
	jp   hl                                          ; $5431: $e9


	ld   b, h                                        ; $5432: $44
	ld   c, e                                        ; $5433: $4b
	db   $ec                                         ; $5434: $ec
	ld   h, l                                        ; $5435: $65
	xor  h                                           ; $5436: $ac
	ld   h, e                                        ; $5437: $63
	ld   l, c                                        ; $5438: $69
	cp   c                                           ; $5439: $b9
	add  [hl]                                        ; $543a: $86
	sbc  d                                           ; $543b: $9a
	add  [hl]                                        ; $543c: $86
	ld   e, c                                        ; $543d: $59
	sbc  d                                           ; $543e: $9a
	sbc  c                                           ; $543f: $99
	xor  c                                           ; $5440: $a9
	add  [hl]                                        ; $5441: $86
	ld   h, [hl]                                     ; $5442: $66
	ld   d, e                                        ; $5443: $53
	ld   de, $f49f                                   ; $5444: $11 $9f $f4
	jr   jr_0f6_5412                                 ; $5447: $18 $c9

	ld   d, c                                        ; $5449: $51
	inc  a                                           ; $544a: $3c
	ei                                               ; $544b: $fb
	dec  [hl]                                        ; $544c: $35
	call Call_0f6_4964                               ; $544d: $cd $64 $49
	cp   h                                           ; $5450: $bc
	ld   [hl], l                                     ; $5451: $75
	xor  l                                           ; $5452: $ad
	sub  h                                           ; $5453: $94
	ld   l, b                                        ; $5454: $68
	xor  c                                           ; $5455: $a9
	halt                                             ; $5456: $76
	adc  e                                           ; $5457: $8b
	and  [hl]                                        ; $5458: $a6
	ld   e, b                                        ; $5459: $58
	sbc  b                                           ; $545a: $98
	ld   a, b                                        ; $545b: $78
	sbc  e                                           ; $545c: $9b
	cp   b                                           ; $545d: $b8
	ld   h, a                                        ; $545e: $67
	add  a                                           ; $545f: $87
	ld   h, l                                        ; $5460: $65
	ld   b, d                                        ; $5461: $42
	ld   de, $f3ef                                   ; $5462: $11 $ef $f3
	add  hl, hl                                      ; $5465: $29
	or   a                                           ; $5466: $b7
	ld   sp, $f95d                                   ; $5467: $31 $5d $f9
	ld   e, b                                        ; $546a: $58
	ei                                               ; $546b: $fb
	ld   b, e                                        ; $546c: $43
	ld   c, c                                        ; $546d: $49
	xor  e                                           ; $546e: $ab
	ld   a, b                                        ; $546f: $78
	call z, Call_0f6_6874                            ; $5470: $cc $74 $68
	sub  a                                           ; $5473: $97
	ld   a, b                                        ; $5474: $78
	sbc  e                                           ; $5475: $9b
	sub  a                                           ; $5476: $97
	ld   l, c                                        ; $5477: $69
	add  a                                           ; $5478: $87
	ld   l, b                                        ; $5479: $68
	sbc  d                                           ; $547a: $9a
	xor  c                                           ; $547b: $a9
	adc  b                                           ; $547c: $88
	add  [hl]                                        ; $547d: $86
	ld   d, [hl]                                     ; $547e: $56
	halt                                             ; $547f: $76
	ld   h, h                                        ; $5480: $64
	ld   sp, $f93f                                   ; $5481: $31 $3f $f9
	dec  d                                           ; $5484: $15
	jp   z, $2762                                    ; $5485: $ca $62 $27

	rst  $38                                         ; $5488: $ff
	ld   [hl], l                                     ; $5489: $75
	cp   a                                           ; $548a: $bf
	ld   [hl], h                                     ; $548b: $74
	scf                                              ; $548c: $37
	xor  e                                           ; $548d: $ab
	and  a                                           ; $548e: $a7
	adc  e                                           ; $548f: $8b
	and  l                                           ; $5490: $a5
	ld   d, a                                        ; $5491: $57
	xor  b                                           ; $5492: $a8
	ld   a, b                                        ; $5493: $78
	adc  d                                           ; $5494: $8a
	sbc  b                                           ; $5495: $98
	ld   h, a                                        ; $5496: $67
	adc  b                                           ; $5497: $88
	ld   [hl], a                                     ; $5498: $77
	sbc  d                                           ; $5499: $9a
	xor  c                                           ; $549a: $a9
	sbc  c                                           ; $549b: $99
	sbc  c                                           ; $549c: $99
	halt                                             ; $549d: $76
	ld   [hl], a                                     ; $549e: $77
	add  a                                           ; $549f: $87
	halt                                             ; $54a0: $76
	ld   d, h                                        ; $54a1: $54
	ld   b, d                                        ; $54a2: $42
	ccf                                              ; $54a3: $3f
	ei                                               ; $54a4: $fb
	dec  [hl]                                        ; $54a5: $35
	cp   d                                           ; $54a6: $ba
	ld   h, h                                        ; $54a7: $64
	ld   [hl], $cf                                   ; $54a8: $36 $cf
	sub  [hl]                                        ; $54aa: $96
	xor  [hl]                                        ; $54ab: $ae
	add  h                                           ; $54ac: $84
	ld   b, a                                        ; $54ad: $47
	sbc  c                                           ; $54ae: $99
	sbc  b                                           ; $54af: $98
	sbc  d                                           ; $54b0: $9a
	cp   b                                           ; $54b1: $b8
	ld   h, a                                        ; $54b2: $67
	sub  a                                           ; $54b3: $97
	ld   h, a                                        ; $54b4: $67
	sbc  c                                           ; $54b5: $99
	sbc  b                                           ; $54b6: $98
	ld   [hl], a                                     ; $54b7: $77
	adc  b                                           ; $54b8: $88
	ld   [hl], a                                     ; $54b9: $77
	sbc  d                                           ; $54ba: $9a
	sbc  b                                           ; $54bb: $98
	adc  b                                           ; $54bc: $88
	sbc  c                                           ; $54bd: $99
	adc  b                                           ; $54be: $88
	ld   [hl], a                                     ; $54bf: $77
	adc  b                                           ; $54c0: $88
	ld   [hl], a                                     ; $54c1: $77
	ld   h, [hl]                                     ; $54c2: $66
	ld   d, h                                        ; $54c3: $54
	ld   sp, $fb4f                                   ; $54c4: $31 $4f $fb
	ld   b, [hl]                                     ; $54c7: $46
	bit  4, e                                        ; $54c8: $cb $63
	scf                                              ; $54ca: $37
	cp   h                                           ; $54cb: $bc
	add  a                                           ; $54cc: $87
	cp   l                                           ; $54cd: $bd
	sub  l                                           ; $54ce: $95
	ld   b, a                                        ; $54cf: $47
	sbc  c                                           ; $54d0: $99
	add  a                                           ; $54d1: $87
	adc  d                                           ; $54d2: $8a
	cp   b                                           ; $54d3: $b8
	ld   h, a                                        ; $54d4: $67
	adc  b                                           ; $54d5: $88
	ld   [hl], a                                     ; $54d6: $77
	adc  c                                           ; $54d7: $89
	sbc  c                                           ; $54d8: $99
	add  a                                           ; $54d9: $87
	adc  c                                           ; $54da: $89
	adc  c                                           ; $54db: $89
	adc  b                                           ; $54dc: $88
	sbc  d                                           ; $54dd: $9a
	xor  c                                           ; $54de: $a9
	adc  b                                           ; $54df: $88
	adc  b                                           ; $54e0: $88
	adc  b                                           ; $54e1: $88
	add  a                                           ; $54e2: $87
	add  a                                           ; $54e3: $87
	halt                                             ; $54e4: $76
	ld   d, l                                        ; $54e5: $55
	ld   b, e                                        ; $54e6: $43
	ld   c, c                                        ; $54e7: $49
	call c, $bb98                                    ; $54e8: $dc $98 $bb
	add  [hl]                                        ; $54eb: $86
	ld   d, [hl]                                     ; $54ec: $56
	sbc  d                                           ; $54ed: $9a
	adc  b                                           ; $54ee: $88
	sbc  e                                           ; $54ef: $9b
	xor  b                                           ; $54f0: $a8
	ld   [hl], a                                     ; $54f1: $77
	add  a                                           ; $54f2: $87
	ld   h, [hl]                                     ; $54f3: $66
	ld   a, c                                        ; $54f4: $79
	sbc  c                                           ; $54f5: $99
	adc  b                                           ; $54f6: $88
	sbc  b                                           ; $54f7: $98
	ld   [hl], a                                     ; $54f8: $77
	ld   a, b                                        ; $54f9: $78
	sbc  c                                           ; $54fa: $99
	sbc  c                                           ; $54fb: $99
	sbc  c                                           ; $54fc: $99
	adc  b                                           ; $54fd: $88
	adc  c                                           ; $54fe: $89
	adc  b                                           ; $54ff: $88
	sbc  b                                           ; $5500: $98
	adc  c                                           ; $5501: $89
	add  a                                           ; $5502: $87
	ld   [hl], a                                     ; $5503: $77
	ld   [hl], a                                     ; $5504: $77
	halt                                             ; $5505: $76
	ld   d, l                                        ; $5506: $55
	ld   b, l                                        ; $5507: $45
	xor  l                                           ; $5508: $ad
	and  a                                           ; $5509: $a7
	sbc  d                                           ; $550a: $9a
	sub  a                                           ; $550b: $97
	ld   d, [hl]                                     ; $550c: $56
	ld   a, b                                        ; $550d: $78
	sbc  c                                           ; $550e: $99
	adc  d                                           ; $550f: $8a
	cp   d                                           ; $5510: $ba
	add  a                                           ; $5511: $87
	adc  b                                           ; $5512: $88
	ld   [hl], a                                     ; $5513: $77
	ld   a, b                                        ; $5514: $78
	adc  c                                           ; $5515: $89
	sbc  b                                           ; $5516: $98
	adc  b                                           ; $5517: $88
	add  a                                           ; $5518: $87
	ld   [hl], a                                     ; $5519: $77
	adc  b                                           ; $551a: $88
	sbc  c                                           ; $551b: $99
	sbc  b                                           ; $551c: $98
	ld   h, a                                        ; $551d: $67
	adc  b                                           ; $551e: $88
	ld   [hl], a                                     ; $551f: $77
	adc  c                                           ; $5520: $89
	sbc  b                                           ; $5521: $98
	adc  b                                           ; $5522: $88
	sbc  c                                           ; $5523: $99
	add  a                                           ; $5524: $87
	adc  c                                           ; $5525: $89
	sbc  b                                           ; $5526: $98
	adc  c                                           ; $5527: $89
	sbc  b                                           ; $5528: $98
	adc  b                                           ; $5529: $88
	add  a                                           ; $552a: $87
	ld   [hl], a                                     ; $552b: $77
	ld   [hl], a                                     ; $552c: $77
	ld   [hl], a                                     ; $552d: $77
	ld   [hl], a                                     ; $552e: $77
	ld   h, [hl]                                     ; $552f: $66
	ld   l, b                                        ; $5530: $68
	xor  d                                           ; $5531: $aa
	adc  b                                           ; $5532: $88
	xor  c                                           ; $5533: $a9
	sub  a                                           ; $5534: $97
	ld   a, b                                        ; $5535: $78
	adc  b                                           ; $5536: $88
	adc  b                                           ; $5537: $88
	sbc  c                                           ; $5538: $99
	sbc  c                                           ; $5539: $99
	adc  c                                           ; $553a: $89
	add  a                                           ; $553b: $87
	ld   [hl], a                                     ; $553c: $77
	adc  b                                           ; $553d: $88
	adc  b                                           ; $553e: $88
	sbc  c                                           ; $553f: $99
	sbc  b                                           ; $5540: $98
	add  a                                           ; $5541: $87
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
	sbc  b                                           ; $5556: $98
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
	sbc  c                                           ; $556c: $99
	adc  b                                           ; $556d: $88
	adc  b                                           ; $556e: $88
	adc  b                                           ; $556f: $88
	adc  b                                           ; $5570: $88
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	adc  b                                           ; $5573: $88
	adc  b                                           ; $5574: $88

Jump_0f6_5575:
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

Jump_0f6_5789:
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
	adc  c                                           ; $5907: $89
	sub  [hl]                                        ; $5908: $96
	adc  d                                           ; $5909: $8a
	halt                                             ; $590a: $76
	xor  c                                           ; $590b: $a9
	ld   l, b                                        ; $590c: $68
	ld   a, b                                        ; $590d: $78
	or   [hl]                                        ; $590e: $b6
	adc  d                                           ; $590f: $8a
	ld   l, c                                        ; $5910: $69
	sub  a                                           ; $5911: $97
	adc  c                                           ; $5912: $89
	ld   a, c                                        ; $5913: $79
	adc  b                                           ; $5914: $88
	sbc  b                                           ; $5915: $98
	ld   a, b                                        ; $5916: $78
	sbc  b                                           ; $5917: $98
	adc  b                                           ; $5918: $88
	adc  b                                           ; $5919: $88
	adc  b                                           ; $591a: $88
	adc  b                                           ; $591b: $88
	ld   a, b                                        ; $591c: $78
	adc  c                                           ; $591d: $89
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
	ld   a, b                                        ; $5929: $78
	adc  b                                           ; $592a: $88
	adc  b                                           ; $592b: $88
	adc  b                                           ; $592c: $88
	adc  b                                           ; $592d: $88
	adc  b                                           ; $592e: $88
	adc  b                                           ; $592f: $88
	sbc  b                                           ; $5930: $98
	adc  b                                           ; $5931: $88
	adc  b                                           ; $5932: $88
	adc  b                                           ; $5933: $88
	adc  b                                           ; $5934: $88
	adc  b                                           ; $5935: $88
	adc  c                                           ; $5936: $89
	adc  b                                           ; $5937: $88
	sbc  b                                           ; $5938: $98
	adc  b                                           ; $5939: $88
	adc  b                                           ; $593a: $88
	adc  b                                           ; $593b: $88
	adc  b                                           ; $593c: $88
	adc  b                                           ; $593d: $88
	adc  b                                           ; $593e: $88
	ld   a, b                                        ; $593f: $78
	sbc  b                                           ; $5940: $98
	adc  b                                           ; $5941: $88
	adc  b                                           ; $5942: $88
	adc  b                                           ; $5943: $88
	ld   a, b                                        ; $5944: $78
	sub  a                                           ; $5945: $97
	adc  c                                           ; $5946: $89
	ld   a, b                                        ; $5947: $78
	sub  a                                           ; $5948: $97
	sbc  c                                           ; $5949: $99
	ld   a, c                                        ; $594a: $79
	adc  b                                           ; $594b: $88
	adc  b                                           ; $594c: $88
	ld   a, c                                        ; $594d: $79
	ld   [hl], a                                     ; $594e: $77
	sub  a                                           ; $594f: $97
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
	sub  a                                           ; $595c: $97
	adc  b                                           ; $595d: $88
	ld   a, c                                        ; $595e: $79
	add  a                                           ; $595f: $87
	adc  b                                           ; $5960: $88
	adc  c                                           ; $5961: $89
	adc  b                                           ; $5962: $88
	sub  a                                           ; $5963: $97
	adc  b                                           ; $5964: $88
	ld   a, b                                        ; $5965: $78
	ld   a, b                                        ; $5966: $78
	adc  b                                           ; $5967: $88
	add  a                                           ; $5968: $87
	adc  b                                           ; $5969: $88
	adc  b                                           ; $596a: $88
	adc  b                                           ; $596b: $88
	adc  b                                           ; $596c: $88
	adc  b                                           ; $596d: $88
	adc  b                                           ; $596e: $88
	adc  b                                           ; $596f: $88
	adc  b                                           ; $5970: $88
	ld   a, c                                        ; $5971: $79
	add  a                                           ; $5972: $87
	adc  b                                           ; $5973: $88
	ld   a, c                                        ; $5974: $79
	ld   a, b                                        ; $5975: $78
	add  a                                           ; $5976: $87
	sbc  b                                           ; $5977: $98
	ld   a, b                                        ; $5978: $78
	ld   a, b                                        ; $5979: $78
	sub  a                                           ; $597a: $97
	adc  c                                           ; $597b: $89
	adc  c                                           ; $597c: $89
	sbc  b                                           ; $597d: $98
	sbc  b                                           ; $597e: $98
	adc  b                                           ; $597f: $88
	ld   a, b                                        ; $5980: $78
	ld   [hl], a                                     ; $5981: $77
	add  a                                           ; $5982: $87
	ld   a, c                                        ; $5983: $79
	adc  c                                           ; $5984: $89
	sbc  b                                           ; $5985: $98
	ld   a, c                                        ; $5986: $79
	adc  b                                           ; $5987: $88
	sub  a                                           ; $5988: $97
	add  a                                           ; $5989: $87
	adc  b                                           ; $598a: $88
	ld   a, b                                        ; $598b: $78
	adc  b                                           ; $598c: $88
	sub  a                                           ; $598d: $97
	sbc  b                                           ; $598e: $98
	ld   a, b                                        ; $598f: $78
	ld   a, b                                        ; $5990: $78
	add  a                                           ; $5991: $87
	sbc  b                                           ; $5992: $98
	adc  c                                           ; $5993: $89
	ld   a, c                                        ; $5994: $79
	sub  a                                           ; $5995: $97
	sbc  b                                           ; $5996: $98
	ld   a, b                                        ; $5997: $78
	add  a                                           ; $5998: $87
	sub  a                                           ; $5999: $97
	adc  b                                           ; $599a: $88
	ld   a, c                                        ; $599b: $79
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
	sbc  b                                           ; $59a6: $98
	add  a                                           ; $59a7: $87
	add  a                                           ; $59a8: $87
	adc  d                                           ; $59a9: $8a
	ld   a, c                                        ; $59aa: $79
	sub  [hl]                                        ; $59ab: $96
	sbc  b                                           ; $59ac: $98
	ld   a, c                                        ; $59ad: $79
	ld   a, b                                        ; $59ae: $78
	adc  b                                           ; $59af: $88
	adc  b                                           ; $59b0: $88
	adc  b                                           ; $59b1: $88
	add  a                                           ; $59b2: $87
	sub  a                                           ; $59b3: $97
	adc  b                                           ; $59b4: $88
	ld   a, c                                        ; $59b5: $79
	ld   a, b                                        ; $59b6: $78
	sbc  b                                           ; $59b7: $98
	adc  b                                           ; $59b8: $88
	adc  b                                           ; $59b9: $88
	adc  c                                           ; $59ba: $89
	add  a                                           ; $59bb: $87
	add  a                                           ; $59bc: $87
	adc  c                                           ; $59bd: $89
	ld   a, b                                        ; $59be: $78
	add  a                                           ; $59bf: $87
	adc  c                                           ; $59c0: $89
	ld   a, b                                        ; $59c1: $78
	ld   a, b                                        ; $59c2: $78
	adc  b                                           ; $59c3: $88
	sbc  b                                           ; $59c4: $98
	adc  b                                           ; $59c5: $88
	adc  c                                           ; $59c6: $89
	ld   a, c                                        ; $59c7: $79
	add  a                                           ; $59c8: $87
	add  a                                           ; $59c9: $87
	add  a                                           ; $59ca: $87
	adc  b                                           ; $59cb: $88
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  c                                           ; $59ce: $89
	ld   a, c                                        ; $59cf: $79
	ld   a, b                                        ; $59d0: $78
	sub  a                                           ; $59d1: $97
	sbc  b                                           ; $59d2: $98
	adc  b                                           ; $59d3: $88
	ld   a, b                                        ; $59d4: $78
	adc  b                                           ; $59d5: $88
	ld   a, c                                        ; $59d6: $79
	add  a                                           ; $59d7: $87
	add  a                                           ; $59d8: $87
	adc  b                                           ; $59d9: $88
	ld   a, c                                        ; $59da: $79
	ld   a, b                                        ; $59db: $78
	sbc  b                                           ; $59dc: $98
	ld   a, b                                        ; $59dd: $78
	sub  a                                           ; $59de: $97
	sbc  b                                           ; $59df: $98
	ld   a, c                                        ; $59e0: $79
	adc  b                                           ; $59e1: $88
	adc  b                                           ; $59e2: $88
	ld   a, b                                        ; $59e3: $78
	sub  a                                           ; $59e4: $97
	sbc  b                                           ; $59e5: $98
	ld   a, b                                        ; $59e6: $78
	adc  b                                           ; $59e7: $88
	ld   [hl], a                                     ; $59e8: $77
	sbc  b                                           ; $59e9: $98
	sub  a                                           ; $59ea: $97
	adc  b                                           ; $59eb: $88
	adc  c                                           ; $59ec: $89
	ld   [hl], a                                     ; $59ed: $77
	ld   a, c                                        ; $59ee: $79
	add  a                                           ; $59ef: $87
	adc  b                                           ; $59f0: $88
	add  a                                           ; $59f1: $87
	sbc  b                                           ; $59f2: $98
	adc  b                                           ; $59f3: $88
	adc  b                                           ; $59f4: $88
	ld   a, c                                        ; $59f5: $79
	ld   a, b                                        ; $59f6: $78
	adc  b                                           ; $59f7: $88
	add  a                                           ; $59f8: $87
	sub  a                                           ; $59f9: $97
	sbc  b                                           ; $59fa: $98
	ld   a, c                                        ; $59fb: $79
	adc  c                                           ; $59fc: $89
	adc  b                                           ; $59fd: $88
	ld   a, c                                        ; $59fe: $79
	ld   a, b                                        ; $59ff: $78
	sub  a                                           ; $5a00: $97
	sub  a                                           ; $5a01: $97
	sub  a                                           ; $5a02: $97
	adc  c                                           ; $5a03: $89
	ld   a, b                                        ; $5a04: $78
	adc  b                                           ; $5a05: $88
	ld   l, b                                        ; $5a06: $68
	add  a                                           ; $5a07: $87
	sub  a                                           ; $5a08: $97
	add  a                                           ; $5a09: $87
	ld   a, c                                        ; $5a0a: $79
	sub  a                                           ; $5a0b: $97
	ld   a, b                                        ; $5a0c: $78
	adc  c                                           ; $5a0d: $89
	ld   [hl], a                                     ; $5a0e: $77
	sbc  c                                           ; $5a0f: $99
	ld   a, b                                        ; $5a10: $78
	add  a                                           ; $5a11: $87
	add  a                                           ; $5a12: $87
	sbc  b                                           ; $5a13: $98
	ld   a, c                                        ; $5a14: $79
	adc  c                                           ; $5a15: $89
	sbc  b                                           ; $5a16: $98
	add  a                                           ; $5a17: $87
	sub  a                                           ; $5a18: $97
	add  a                                           ; $5a19: $87
	adc  b                                           ; $5a1a: $88
	ld   l, d                                        ; $5a1b: $6a
	adc  b                                           ; $5a1c: $88
	adc  b                                           ; $5a1d: $88
	ld   a, b                                        ; $5a1e: $78
	sub  [hl]                                        ; $5a1f: $96
	sbc  b                                           ; $5a20: $98
	add  a                                           ; $5a21: $87
	ld   a, b                                        ; $5a22: $78
	adc  b                                           ; $5a23: $88
	adc  b                                           ; $5a24: $88
	ld   a, c                                        ; $5a25: $79
	add  [hl]                                        ; $5a26: $86
	sbc  c                                           ; $5a27: $99
	ld   a, b                                        ; $5a28: $78
	add  a                                           ; $5a29: $87
	sbc  c                                           ; $5a2a: $99
	sub  a                                           ; $5a2b: $97
	adc  b                                           ; $5a2c: $88
	ld   a, c                                        ; $5a2d: $79
	sbc  b                                           ; $5a2e: $98
	ld   a, c                                        ; $5a2f: $79
	ld   a, c                                        ; $5a30: $79
	add  a                                           ; $5a31: $87
	sub  a                                           ; $5a32: $97
	add  a                                           ; $5a33: $87
	add  a                                           ; $5a34: $87
	sbc  c                                           ; $5a35: $99
	ld   a, c                                        ; $5a36: $79
	sbc  b                                           ; $5a37: $98
	ld   a, b                                        ; $5a38: $78
	adc  b                                           ; $5a39: $88
	add  a                                           ; $5a3a: $87
	adc  b                                           ; $5a3b: $88
	adc  b                                           ; $5a3c: $88
	adc  c                                           ; $5a3d: $89
	adc  b                                           ; $5a3e: $88
	sbc  b                                           ; $5a3f: $98
	adc  b                                           ; $5a40: $88
	add  a                                           ; $5a41: $87
	sbc  b                                           ; $5a42: $98
	adc  c                                           ; $5a43: $89
	adc  b                                           ; $5a44: $88
	adc  c                                           ; $5a45: $89
	ld   a, c                                        ; $5a46: $79
	adc  b                                           ; $5a47: $88
	adc  b                                           ; $5a48: $88
	ld   a, b                                        ; $5a49: $78
	sbc  b                                           ; $5a4a: $98
	sbc  c                                           ; $5a4b: $99
	adc  b                                           ; $5a4c: $88
	adc  b                                           ; $5a4d: $88
	adc  c                                           ; $5a4e: $89
	adc  b                                           ; $5a4f: $88
	adc  b                                           ; $5a50: $88
	adc  c                                           ; $5a51: $89
	adc  b                                           ; $5a52: $88
	sbc  b                                           ; $5a53: $98
	adc  c                                           ; $5a54: $89
	adc  c                                           ; $5a55: $89
	adc  b                                           ; $5a56: $88
	sbc  b                                           ; $5a57: $98
	adc  b                                           ; $5a58: $88
	adc  b                                           ; $5a59: $88
	adc  b                                           ; $5a5a: $88
	sbc  b                                           ; $5a5b: $98
	adc  b                                           ; $5a5c: $88
	sbc  b                                           ; $5a5d: $98
	adc  c                                           ; $5a5e: $89
	adc  b                                           ; $5a5f: $88
	adc  c                                           ; $5a60: $89
	adc  b                                           ; $5a61: $88
	adc  b                                           ; $5a62: $88
	adc  b                                           ; $5a63: $88

Jump_0f6_5a64:
	sbc  c                                           ; $5a64: $99
	adc  b                                           ; $5a65: $88
	adc  b                                           ; $5a66: $88
	adc  b                                           ; $5a67: $88
	sbc  b                                           ; $5a68: $98
	adc  c                                           ; $5a69: $89
	adc  b                                           ; $5a6a: $88
	adc  b                                           ; $5a6b: $88
	adc  b                                           ; $5a6c: $88
	adc  b                                           ; $5a6d: $88
	adc  b                                           ; $5a6e: $88
	adc  b                                           ; $5a6f: $88
	sbc  b                                           ; $5a70: $98
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
	sbc  b                                           ; $5b37: $98
	adc  b                                           ; $5b38: $88
	adc  b                                           ; $5b39: $88
	adc  b                                           ; $5b3a: $88
	adc  b                                           ; $5b3b: $88
	adc  b                                           ; $5b3c: $88
	sbc  b                                           ; $5b3d: $98
	adc  b                                           ; $5b3e: $88
	sbc  c                                           ; $5b3f: $99
	adc  b                                           ; $5b40: $88
	adc  b                                           ; $5b41: $88
	adc  b                                           ; $5b42: $88
	ld   a, b                                        ; $5b43: $78
	add  a                                           ; $5b44: $87
	add  a                                           ; $5b45: $87
	adc  b                                           ; $5b46: $88
	adc  b                                           ; $5b47: $88
	ld   [hl], a                                     ; $5b48: $77
	adc  b                                           ; $5b49: $88
	adc  b                                           ; $5b4a: $88
	adc  c                                           ; $5b4b: $89
	sbc  c                                           ; $5b4c: $99
	sbc  b                                           ; $5b4d: $98
	sbc  c                                           ; $5b4e: $99
	adc  b                                           ; $5b4f: $88
	adc  b                                           ; $5b50: $88
	ld   a, b                                        ; $5b51: $78
	adc  b                                           ; $5b52: $88
	adc  b                                           ; $5b53: $88
	adc  b                                           ; $5b54: $88
	sbc  b                                           ; $5b55: $98
	add  a                                           ; $5b56: $87
	ld   [hl], a                                     ; $5b57: $77
	ld   [hl], a                                     ; $5b58: $77
	ld   h, [hl]                                     ; $5b59: $66
	ld   [hl], a                                     ; $5b5a: $77
	halt                                             ; $5b5b: $76
	ld   [hl], a                                     ; $5b5c: $77
	ld   a, b                                        ; $5b5d: $78
	adc  b                                           ; $5b5e: $88
	sbc  c                                           ; $5b5f: $99
	xor  c                                           ; $5b60: $a9
	sbc  d                                           ; $5b61: $9a
	xor  c                                           ; $5b62: $a9
	sbc  c                                           ; $5b63: $99
	sbc  c                                           ; $5b64: $99
	adc  c                                           ; $5b65: $89
	adc  b                                           ; $5b66: $88
	add  a                                           ; $5b67: $87
	ld   [hl], a                                     ; $5b68: $77
	halt                                             ; $5b69: $76
	ld   h, l                                        ; $5b6a: $65
	ld   b, e                                        ; $5b6b: $43
	ld   [hl+], a                                    ; $5b6c: $22
	inc  hl                                          ; $5b6d: $23
	ld   a, c                                        ; $5b6e: $79
	ld   a, b                                        ; $5b6f: $78
	cp   [hl]                                        ; $5b70: $be
	xor  $dc                                         ; $5b71: $ee $dc
	call Call_0f6_67b6                               ; $5b73: $cd $b6 $67
	halt                                             ; $5b76: $76
	ld   h, [hl]                                     ; $5b77: $66
	ld   a, d                                        ; $5b78: $7a
	xor  d                                           ; $5b79: $aa
	xor  h                                           ; $5b7a: $ac
	res  0, [hl]                                     ; $5b7b: $cb $86
	ld   sp, $1111                                   ; $5b7d: $31 $11 $11
	ei                                               ; $5b80: $fb
	dec  d                                           ; $5b81: $15
	rst  $38                                         ; $5b82: $ff
	rst  $38                                         ; $5b83: $ff
	ret                                              ; $5b84: $c9


	rst  $38                                         ; $5b85: $ff
	ld   d, c                                        ; $5b86: $51
	inc  d                                           ; $5b87: $14
	ld   h, l                                        ; $5b88: $65
	ld   d, l                                        ; $5b89: $55
	cp   a                                           ; $5b8a: $bf
	db   $fc                                         ; $5b8b: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b8c: $cf
	ei                                               ; $5b8d: $fb
	add  l                                           ; $5b8e: $85
	ld   h, a                                        ; $5b8f: $67
	ld   sp, $1111                                   ; $5b90: $31 $11 $11
	rst  $38                                         ; $5b93: $ff
	dec  d                                           ; $5b94: $15
	rst  $38                                         ; $5b95: $ff
	rst  $38                                         ; $5b96: $ff
	db   $d3                                         ; $5b97: $d3
	adc  a                                           ; $5b98: $8f
	ld   hl, $8715                                   ; $5b99: $21 $15 $87
	cp   l                                           ; $5b9c: $bd
	rst  $38                                         ; $5b9d: $ff
	db   $fc                                         ; $5b9e: $fc
	adc  l                                           ; $5b9f: $8d
	push de                                          ; $5ba0: $d5
	ld   de, $6136                                   ; $5ba1: $11 $36 $61
	ld   de, rAUD1LEN                                   ; $5ba4: $11 $11 $ff
	ld   de, $ffff                                   ; $5ba7: $11 $ff $ff
	ld   h, c                                        ; $5baa: $61
	ld   a, a                                        ; $5bab: $7f
	ld   de, $fb1e                                   ; $5bac: $11 $1e $fb
	rst  $28                                         ; $5baf: $ef
	rst  $38                                         ; $5bb0: $ff
	push af                                          ; $5bb1: $f5
	dec  sp                                          ; $5bb2: $3b
	or   e                                           ; $5bb3: $b3
	ld   [de], a                                     ; $5bb4: $12
	adc  h                                           ; $5bb5: $8c
	and  e                                           ; $5bb6: $a3
	ld   de, rAUD1LEN                                   ; $5bb7: $11 $11 $ff
	ld   de, $ffff                                   ; $5bba: $11 $ff $ff
	ld   h, c                                        ; $5bbd: $61
	ld   a, a                                        ; $5bbe: $7f
	ld   de, $fa1e                                   ; $5bbf: $11 $1e $fa
	xor  $ff                                         ; $5bc2: $ee $ff
	di                                               ; $5bc4: $f3
	ld   a, [hl+]                                    ; $5bc5: $2a
	sub  h                                           ; $5bc6: $94
	inc  de                                          ; $5bc7: $13
	sbc  l                                           ; $5bc8: $9d
	or   e                                           ; $5bc9: $b3
	ld   de, $fa19                                   ; $5bca: $11 $19 $fa
	ld   d, $ff                                      ; $5bcd: $16 $ff
	ei                                               ; $5bcf: $fb
	ld   de, $11cd                                   ; $5bd0: $11 $cd $11
	ld   a, a                                        ; $5bd3: $7f
	db   $fc                                         ; $5bd4: $fc
	call c, $a1ff                                    ; $5bd5: $dc $ff $a1
	ld   a, [hl-]                                    ; $5bd8: $3a
	sub  l                                           ; $5bd9: $95
	daa                                              ; $5bda: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bdb: $cf
	sub  d                                           ; $5bdc: $92
	ld   de, $f31f                                   ; $5bdd: $11 $1f $f3
	inc  e                                           ; $5be0: $1c
	rst  $38                                         ; $5be1: $ff
	ld   hl, sp+$11                                  ; $5be2: $f8 $11
	rst  $30                                         ; $5be4: $f7
	ld   de, $fecf                                   ; $5be5: $11 $cf $fe
	db   $ed                                         ; $5be8: $ed
	rst  $38                                         ; $5be9: $ff
	ld   b, c                                        ; $5bea: $41
	add  hl, sp                                      ; $5beb: $39
	sub  e                                           ; $5bec: $93
	add  hl, hl                                      ; $5bed: $29
	rst  $28                                         ; $5bee: $ef
	ld   [hl], c                                     ; $5bef: $71
	ld   de, $81df                                   ; $5bf0: $11 $df $81
	adc  a                                           ; $5bf3: $8f
	rst  $38                                         ; $5bf4: $ff
	and  c                                           ; $5bf5: $a1
	ld   e, $b1                                      ; $5bf6: $1e $b1
	inc  e                                           ; $5bf8: $1c
	rst  $38                                         ; $5bf9: $ff
	db   $fc                                         ; $5bfa: $fc
	cp   a                                           ; $5bfb: $bf
	db   $f4                                         ; $5bfc: $f4
	ld   de, $53aa                                   ; $5bfd: $11 $aa $53
	sbc  a                                           ; $5c00: $9f
	and  $11                                         ; $5c01: $e6 $11
	rra                                              ; $5c03: $1f
	di                                               ; $5c04: $f3
	dec  de                                          ; $5c05: $1b
	rst  $38                                         ; $5c06: $ff
	or   $11                                         ; $5c07: $f6 $11
	or   $11                                         ; $5c09: $f6 $11
	rst  $38                                         ; $5c0b: $ff
	cp   $ac                                         ; $5c0c: $fe $ac
	ei                                               ; $5c0e: $fb
	ld   de, $a63a                                   ; $5c0f: $11 $3a $a6
	ld   e, d                                        ; $5c12: $5a
	jp   hl                                          ; $5c13: $e9


	ld   de, $fa1f                                   ; $5c14: $11 $1f $fa
	jr   @+$01                                       ; $5c17: $18 $ff

	push hl                                          ; $5c19: $e5
	ld   de, $11f8                                   ; $5c1a: $11 $f8 $11
	rst  $38                                         ; $5c1d: $ff
	db   $fd                                         ; $5c1e: $fd
	sbc  e                                           ; $5c1f: $9b
	reti                                             ; $5c20: $d9


	ld   de, $a63a                                   ; $5c21: $11 $3a $a6
	ld   l, c                                        ; $5c24: $69
	sub  e                                           ; $5c25: $93
	ld   de, $f17f                                   ; $5c26: $11 $7f $f1
	ld   e, a                                        ; $5c29: $5f
	rst  $38                                         ; $5c2a: $ff
	sub  c                                           ; $5c2b: $91
	dec  de                                          ; $5c2c: $1b
	pop  de                                          ; $5c2d: $d1
	ld   a, [de]                                     ; $5c2e: $1a
	rst  $38                                         ; $5c2f: $ff
	ld   [$838b], a                                  ; $5c30: $ea $8b $83
	ld   [de], a                                     ; $5c33: $12
	adc  c                                           ; $5c34: $89
	ld   [hl], h                                     ; $5c35: $74
	ld   h, h                                        ; $5c36: $64
	ld   de, $f37f                                   ; $5c37: $11 $7f $f3
	ld   a, a                                        ; $5c3a: $7f
	rst  $38                                         ; $5c3b: $ff
	add  c                                           ; $5c3c: $81
	dec  de                                          ; $5c3d: $1b
	db   $d3                                         ; $5c3e: $d3
	dec  hl                                          ; $5c3f: $2b
	rst  $38                                         ; $5c40: $ff
	jp   c, $949a                                    ; $5c41: $da $9a $94

	ld   [de], a                                     ; $5c44: $12
	ld   a, b                                        ; $5c45: $78
	ld   d, d                                        ; $5c46: $52
	ld   de, $ff1b                                   ; $5c47: $11 $1b $ff
	ld   c, b                                        ; $5c4a: $48
	db   $ed                                         ; $5c4b: $ed
	or   a                                           ; $5c4c: $b7
	inc  de                                          ; $5c4d: $13
	call c, $ef55                                    ; $5c4e: $dc $55 $ef
	db   $ec                                         ; $5c51: $ec
	sbc  c                                           ; $5c52: $99
	xor  b                                           ; $5c53: $a8
	ld   sp, $4146                                   ; $5c54: $31 $46 $41
	ld   de, $fc4f                                   ; $5c57: $11 $4f $fc
	ld   c, e                                        ; $5c5a: $4b
	db   $fd                                         ; $5c5b: $fd
	ld   d, c                                        ; $5c5c: $51
	ld   a, [de]                                     ; $5c5d: $1a
	ld   a, [$ff5a]                                  ; $5c5e: $fa $5a $ff
	rst  $10                                         ; $5c61: $d7
	ld   a, d                                        ; $5c62: $7a
	add  d                                           ; $5c63: $82
	ld   [de], a                                     ; $5c64: $12
	ld   d, [hl]                                     ; $5c65: $56
	ld   de, $ff1f                                   ; $5c66: $11 $1f $ff
	ld   [hl], $ff                                   ; $5c69: $36 $ff
	sub  c                                           ; $5c6b: $91
	ld   [de], a                                     ; $5c6c: $12
	call $ff77                                       ; $5c6d: $cd $77 $ff
	ld   sp, hl                                      ; $5c70: $f9
	ld   a, d                                        ; $5c71: $7a
	ld   [hl], d                                     ; $5c72: $72
	ld   de, $1113                                   ; $5c73: $11 $13 $11
	adc  a                                           ; $5c76: $8f
	or   $5e                                         ; $5c77: $f6 $5e
	ld   [$1b41], a                                  ; $5c79: $ea $41 $1b
	or   $4f                                         ; $5c7c: $f6 $4f
	rst  $38                                         ; $5c7e: $ff
	ret  c                                           ; $5c7f: $d8

	ld   [hl], a                                     ; $5c80: $77
	ld   sp, $1111                                   ; $5c81: $31 $11 $11
	rra                                              ; $5c84: $1f
	rst  $38                                         ; $5c85: $ff
	sbc  a                                           ; $5c86: $9f
	db   $eb                                         ; $5c87: $eb
	ld   [hl], c                                     ; $5c88: $71
	inc  d                                           ; $5c89: $14
	ld   sp, hl                                      ; $5c8a: $f9
	ld   c, [hl]                                     ; $5c8b: $4e
	rst  $38                                         ; $5c8c: $ff
	ld   sp, hl                                      ; $5c8d: $f9
	ld   d, l                                        ; $5c8e: $55
	ld   b, c                                        ; $5c8f: $41
	ld   de, rAUD1LEN                                   ; $5c90: $11 $11 $ff
	rst  $30                                         ; $5c93: $f7
	rst  $38                                         ; $5c94: $ff
	rst  $10                                         ; $5c95: $d7
	ld   de, $a31e                                   ; $5c96: $11 $1e $a3
	cp   a                                           ; $5c99: $bf
	rst  $38                                         ; $5c9a: $ff
	sub  l                                           ; $5c9b: $95
	ld   [hl], h                                     ; $5c9c: $74
	ld   de, $1f11                                   ; $5c9d: $11 $11 $1f
	rst  $38                                         ; $5ca0: $ff
	cp   a                                           ; $5ca1: $bf
	ld   a, [$1231]                                  ; $5ca2: $fa $31 $12
	or   l                                           ; $5ca5: $b5
	ld   c, a                                        ; $5ca6: $4f
	rst  $38                                         ; $5ca7: $ff
	ld   hl, sp+$78                                  ; $5ca8: $f8 $78
	ld   de, $1911                                   ; $5caa: $11 $11 $19
	rst  $38                                         ; $5cad: $ff
	sbc  a                                           ; $5cae: $9f
	rst  $38                                         ; $5caf: $ff
	ld   d, c                                        ; $5cb0: $51
	ld   de, $1a66                                   ; $5cb1: $11 $66 $1a
	rst  $38                                         ; $5cb4: $ff
	db   $fd                                         ; $5cb5: $fd
	adc  b                                           ; $5cb6: $88
	ld   b, c                                        ; $5cb7: $41
	ld   de, rAUD1HIGH                                   ; $5cb8: $11 $14 $ff
	sbc  a                                           ; $5cbb: $9f
	rst  $38                                         ; $5cbc: $ff
	ld   h, c                                        ; $5cbd: $61
	ld   de, $1954                                   ; $5cbe: $11 $54 $19

jr_0f6_5cc1:
	rst  $38                                         ; $5cc1: $ff
	db   $fd                                         ; $5cc2: $fd
	adc  c                                           ; $5cc3: $89
	ld   b, c                                        ; $5cc4: $41
	ld   de, $ff1a                                   ; $5cc5: $11 $1a $ff
	sbc  a                                           ; $5cc8: $9f
	rst  $38                                         ; $5cc9: $ff
	ld   h, c                                        ; $5cca: $61
	ld   de, $1d51                                   ; $5ccb: $11 $51 $1d
	rst  $38                                         ; $5cce: $ff
	db   $fc                                         ; $5ccf: $fc
	cp   c                                           ; $5cd0: $b9
	ld   de, $1f11                                   ; $5cd1: $11 $11 $1f
	ld   sp, hl                                      ; $5cd4: $f9
	rst  $38                                         ; $5cd5: $ff
	ei                                               ; $5cd6: $fb
	ld   d, c                                        ; $5cd7: $51
	ld   de, $4f11                                   ; $5cd8: $11 $11 $4f
	rst  $38                                         ; $5cdb: $ff
	cp   $c4                                         ; $5cdc: $fe $c4
	ld   de, rAUD1LOW                                   ; $5cde: $11 $13 $ff
	xor  a                                           ; $5ce1: $af
	rst  $38                                         ; $5ce2: $ff
	call nc, $1111                                   ; $5ce3: $d4 $11 $11
	rla                                              ; $5ce6: $17
	rst  $38                                         ; $5ce7: $ff
	xor  $c8                                         ; $5ce8: $ee $c8
	ld   de, $941c                                   ; $5cea: $11 $1c $94
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ced: $cf
	rst  $38                                         ; $5cee: $ff
	or   $88                                         ; $5cef: $f6 $88
	ld   hl, $4512                                   ; $5cf1: $21 $12 $45
	inc  [hl]                                        ; $5cf4: $34
	ld   l, [hl]                                     ; $5cf5: $6e
	db   $fd                                         ; $5cf6: $fd

jr_0f6_5cf7:
	jr   c, jr_0f6_5cc1                              ; $5cf7: $38 $c8

	ld   l, c                                        ; $5cf9: $69
	ld   l, c                                        ; $5cfa: $69
	jp   c, $d87c                                    ; $5cfb: $da $7c $d8

	ld   d, d                                        ; $5cfe: $52
	ld   de, rAUD1LOW                                   ; $5cff: $11 $13 $ff
	ld   e, a                                        ; $5d02: $5f
	rst  $38                                         ; $5d03: $ff
	cp   c                                           ; $5d04: $b9
	inc  [hl]                                        ; $5d05: $34
	ld   [hl], c                                     ; $5d06: $71
	rla                                              ; $5d07: $17
	db   $eb                                         ; $5d08: $eb
	xor  c                                           ; $5d09: $a9
	xor  c                                           ; $5d0a: $a9
	ld   de, $645f                                   ; $5d0b: $11 $5f $64
	cp   a                                           ; $5d0e: $bf
	rst  $38                                         ; $5d0f: $ff
	cp   b                                           ; $5d10: $b8
	ret                                              ; $5d11: $c9


	ld   [hl-], a                                    ; $5d12: $32
	ld   d, l                                        ; $5d13: $55
	ld   d, d                                        ; $5d14: $52
	ld   de, $f81f                                   ; $5d15: $11 $1f $f8
	cpl                                              ; $5d18: $2f
	push af                                          ; $5d19: $f5
	adc  b                                           ; $5d1a: $88
	ld   c, e                                        ; $5d1b: $4b
	call nz, $a56f                                   ; $5d1c: $c4 $6f $a5
	ld   b, c                                        ; $5d1f: $41
	ld   de, $f71e                                   ; $5d20: $11 $1e $f7
	adc  a                                           ; $5d23: $8f
	db   $fd                                         ; $5d24: $fd
	or   [hl]                                        ; $5d25: $b6
	ld   e, c                                        ; $5d26: $59

jr_0f6_5d27:
	ld   [hl], d                                     ; $5d27: $72
	ld   l, d                                        ; $5d28: $6a
	sub  [hl]                                        ; $5d29: $96
	ld   sp, rAUD1ENV                                   ; $5d2a: $31 $12 $ff
	ld   a, [de]                                     ; $5d2d: $1a
	ei                                               ; $5d2e: $fb
	sbc  l                                           ; $5d2f: $9d
	ld   d, [hl]                                     ; $5d30: $56
	rst  $10                                         ; $5d31: $d7
	add  hl, hl                                      ; $5d32: $29
	push bc                                          ; $5d33: $c5
	ld   d, c                                        ; $5d34: $51
	ld   de, $d45f                                   ; $5d35: $11 $5f $d4
	rst  $28                                         ; $5d38: $ef
	jp   z, Jump_0f6_69b5                            ; $5d39: $ca $b5 $69

	ld   h, e                                        ; $5d3c: $63
	sbc  d                                           ; $5d3d: $9a
	ld   h, [hl]                                     ; $5d3e: $66
	ld   hl, $f71b                                   ; $5d3f: $21 $1b $f7
	cpl                                              ; $5d42: $2f
	ld   a, [$69cc]                                  ; $5d43: $fa $cc $69
	add  e                                           ; $5d46: $83
	ld   c, e                                        ; $5d47: $4b
	ld   h, e                                        ; $5d48: $63
	ld   sp, rAUD1ENV                                   ; $5d49: $31 $12 $ff
	ld   c, d                                        ; $5d4c: $4a
	rst  $38                                         ; $5d4d: $ff
	xor  h                                           ; $5d4e: $ac
	sub  [hl]                                        ; $5d4f: $96
	sub  l                                           ; $5d50: $95
	jr   c, jr_0f6_5cf7                              ; $5d51: $38 $a4

	ld   b, d                                        ; $5d53: $42
	ld   de, $72af                                   ; $5d54: $11 $af $72
	rst  $38                                         ; $5d57: $ff
	xor  e                                           ; $5d58: $ab
	rst  $10                                         ; $5d59: $d7
	sbc  b                                           ; $5d5a: $98
	inc  [hl]                                        ; $5d5b: $34
	or   [hl]                                        ; $5d5c: $b6
	inc  hl                                          ; $5d5d: $23
	ld   de, $f32f                                   ; $5d5e: $11 $2f $f3
	cp   a                                           ; $5d61: $bf
	ld   [$78e9], a                                  ; $5d62: $ea $e9 $78
	ld   d, e                                        ; $5d65: $53
	sbc  d                                           ; $5d66: $9a
	inc  h                                           ; $5d67: $24
	ld   hl, $f71a                                   ; $5d68: $21 $1a $f7
	ld   c, a                                        ; $5d6b: $4f
	ld   a, [$79ec]                                  ; $5d6c: $fa $ec $79
	ld   [hl], d                                     ; $5d6f: $72
	ld   l, d                                        ; $5d70: $6a
	ld   b, c                                        ; $5d71: $41
	ld   sp, $fe14                                   ; $5d72: $31 $14 $fe
	ld   l, $fb                                      ; $5d75: $2e $fb
	xor  a                                           ; $5d77: $af
	sbc  b                                           ; $5d78: $98
	sub  h                                           ; $5d79: $94
	dec  sp                                          ; $5d7a: $3b
	ld   [hl], c                                     ; $5d7b: $71
	ld   sp, $ef11                                   ; $5d7c: $31 $11 $ef
	ld   c, b                                        ; $5d7f: $48
	rst  $38                                         ; $5d80: $ff
	xor  [hl]                                        ; $5d81: $ae
	cp   c                                           ; $5d82: $b9
	sub  l                                           ; $5d83: $95
	jr   c, jr_0f6_5d27                              ; $5d84: $38 $a1

	ld   de, $9f11                                   ; $5d86: $11 $11 $9f
	add  l                                           ; $5d89: $85
	rst  $38                                         ; $5d8a: $ff
	cp   l                                           ; $5d8b: $bd
	jp   c, $3586                                    ; $5d8c: $da $86 $35

	or   e                                           ; $5d8f: $b3
	ld   [de], a                                     ; $5d90: $12
	ld   de, $b44f                                   ; $5d91: $11 $4f $b4
	rst  $38                                         ; $5d94: $ff
	db   $ec                                         ; $5d95: $ec
	ld   [$34a7], a                                  ; $5d96: $ea $a7 $34
	and  l                                           ; $5d99: $a5
	inc  de                                          ; $5d9a: $13
	ld   de, $e51d                                   ; $5d9b: $11 $1d $e5
	xor  a                                           ; $5d9e: $af
	db   $fc                                         ; $5d9f: $fc
	db   $eb                                         ; $5da0: $eb
	cp   c                                           ; $5da1: $b9
	ld   b, e                                        ; $5da2: $43
	add  a                                           ; $5da3: $87
	ld   de, $1911                                   ; $5da4: $11 $11 $19
	or   $8f                                         ; $5da7: $f6 $8f
	db   $fd                                         ; $5da9: $fd
	db   $fd                                         ; $5daa: $fd
	xor  d                                           ; $5dab: $aa
	ld   h, e                                        ; $5dac: $63
	ld   l, b                                        ; $5dad: $68
	ld   de, $1601                                   ; $5dae: $11 $01 $16
	ld   hl, sp+$7f                                  ; $5db1: $f8 $7f
	cp   $fe                                         ; $5db3: $fe $fe
	cp   e                                           ; $5db5: $bb
	ld   [hl], e                                     ; $5db6: $73
	ld   e, b                                        ; $5db7: $58
	ld   de, $1411                                   ; $5db8: $11 $11 $14
	ld   a, [$ff6e]                                  ; $5dbb: $fa $6e $ff
	rst  $38                                         ; $5dbe: $ff
	cp   l                                           ; $5dbf: $bd
	and  h                                           ; $5dc0: $a4
	ld   e, b                                        ; $5dc1: $58
	ld   hl, $1211                                   ; $5dc2: $21 $11 $12
	ld   [$fe6f], a                                  ; $5dc5: $ea $6f $fe
	rst  $38                                         ; $5dc8: $ff
	cp   [hl]                                        ; $5dc9: $be
	or   h                                           ; $5dca: $b4
	ld   c, c                                        ; $5dcb: $49
	ld   sp, $1111                                   ; $5dcc: $31 $11 $11
	db   $db                                         ; $5dcf: $db
	ld   l, [hl]                                     ; $5dd0: $6e
	rst  $38                                         ; $5dd1: $ff
	rst  $38                                         ; $5dd2: $ff
	call Call_0f6_48d5                               ; $5dd3: $cd $d5 $48
	ld   hl, $1111                                   ; $5dd6: $21 $11 $11
	cp   e                                           ; $5dd9: $bb
	ld   l, [hl]                                     ; $5dda: $6e
	rst  $38                                         ; $5ddb: $ff
	rst  $38                                         ; $5ddc: $ff
	call $49e5                                       ; $5ddd: $cd $e5 $49
	ld   b, c                                        ; $5de0: $41
	ld   de, $ba11                                   ; $5de1: $11 $11 $ba
	ld   c, [hl]                                     ; $5de4: $4e
	rst  $38                                         ; $5de5: $ff
	rst  $38                                         ; $5de6: $ff
	rst  $28                                         ; $5de7: $ef
	or   $58                                         ; $5de8: $f6 $58
	ld   sp, $1111                                   ; $5dea: $31 $11 $11
	sbc  c                                           ; $5ded: $99
	ld   l, h                                        ; $5dee: $6c
	rst  $38                                         ; $5def: $ff
	rst  $38                                         ; $5df0: $ff
	rst  $38                                         ; $5df1: $ff
	rst  $30                                         ; $5df2: $f7
	ld   l, b                                        ; $5df3: $68
	ld   sp, $1111                                   ; $5df4: $31 $11 $11
	sbc  b                                           ; $5df7: $98
	ld   c, e                                        ; $5df8: $4b
	rst  $38                                         ; $5df9: $ff
	rst  $38                                         ; $5dfa: $ff
	rst  $38                                         ; $5dfb: $ff
	ld   sp, hl                                      ; $5dfc: $f9
	ld   a, d                                        ; $5dfd: $7a
	ld   sp, $1111                                   ; $5dfe: $31 $11 $11
	ld   h, l                                        ; $5e01: $65
	ld   c, h                                        ; $5e02: $4c
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	rst  $38                                         ; $5e05: $ff
	ei                                               ; $5e06: $fb
	sbc  c                                           ; $5e07: $99
	ld   sp, $1111                                   ; $5e08: $31 $11 $11
	ld   d, d                                        ; $5e0b: $52
	ld   a, [hl+]                                    ; $5e0c: $2a
	rst  $38                                         ; $5e0d: $ff
	rst  $38                                         ; $5e0e: $ff
	rst  $38                                         ; $5e0f: $ff
	db   $fc                                         ; $5e10: $fc
	cp   e                                           ; $5e11: $bb
	ld   sp, $1111                                   ; $5e12: $31 $11 $11
	ld   hl, $de1b                                   ; $5e15: $21 $1b $de
	rst  $38                                         ; $5e18: $ff
	rst  $38                                         ; $5e19: $ff
	db   $fd                                         ; $5e1a: $fd
	db   $ec                                         ; $5e1b: $ec
	ld   b, c                                        ; $5e1c: $41
	ld   de, $1111                                   ; $5e1d: $11 $11 $11
	rla                                              ; $5e20: $17
	adc  h                                           ; $5e21: $8c
	rst  $38                                         ; $5e22: $ff
	rst  $38                                         ; $5e23: $ff
	rst  $38                                         ; $5e24: $ff
	db   $fd                                         ; $5e25: $fd
	add  l                                           ; $5e26: $85
	ld   de, $1111                                   ; $5e27: $11 $11 $11
	inc  de                                          ; $5e2a: $13
	ld   e, c                                        ; $5e2b: $59
	cp   h                                           ; $5e2c: $bc
	rst  $38                                         ; $5e2d: $ff
	rst  $38                                         ; $5e2e: $ff
	rst  $38                                         ; $5e2f: $ff
	jp   c, $2363                                    ; $5e30: $da $63 $23

	ld   hl, $3411                                   ; $5e33: $21 $11 $34
	ld   h, a                                        ; $5e36: $67
	sbc  e                                           ; $5e37: $9b
	call z, $dbee                                    ; $5e38: $cc $ee $db
	sbc  c                                           ; $5e3b: $99
	adc  b                                           ; $5e3c: $88
	ld   [hl], a                                     ; $5e3d: $77
	ld   d, h                                        ; $5e3e: $54
	ld   b, l                                        ; $5e3f: $45
	ld   d, l                                        ; $5e40: $55
	ld   h, [hl]                                     ; $5e41: $66
	ld   [hl], a                                     ; $5e42: $77
	adc  c                                           ; $5e43: $89
	xor  c                                           ; $5e44: $a9
	cp   d                                           ; $5e45: $ba
	xor  d                                           ; $5e46: $aa
	sbc  c                                           ; $5e47: $99
	xor  d                                           ; $5e48: $aa
	adc  b                                           ; $5e49: $88
	add  a                                           ; $5e4a: $87
	ld   h, [hl]                                     ; $5e4b: $66
	ld   d, l                                        ; $5e4c: $55
	ld   h, [hl]                                     ; $5e4d: $66
	ld   h, a                                        ; $5e4e: $67
	adc  b                                           ; $5e4f: $88
	xor  d                                           ; $5e50: $aa
	xor  d                                           ; $5e51: $aa
	cp   e                                           ; $5e52: $bb
	xor  d                                           ; $5e53: $aa
	xor  b                                           ; $5e54: $a8
	add  a                                           ; $5e55: $87
	ld   h, [hl]                                     ; $5e56: $66
	ld   h, l                                        ; $5e57: $65
	ld   d, [hl]                                     ; $5e58: $56
	ld   h, [hl]                                     ; $5e59: $66
	ld   a, b                                        ; $5e5a: $78
	adc  b                                           ; $5e5b: $88
	sbc  c                                           ; $5e5c: $99
	xor  d                                           ; $5e5d: $aa
	xor  d                                           ; $5e5e: $aa
	xor  d                                           ; $5e5f: $aa
	adc  b                                           ; $5e60: $88
	ld   [hl], a                                     ; $5e61: $77
	ld   h, [hl]                                     ; $5e62: $66
	ld   h, [hl]                                     ; $5e63: $66
	ld   h, [hl]                                     ; $5e64: $66
	ld   [hl], a                                     ; $5e65: $77
	ld   a, b                                        ; $5e66: $78
	sbc  c                                           ; $5e67: $99
	sbc  d                                           ; $5e68: $9a
	xor  c                                           ; $5e69: $a9
	xor  c                                           ; $5e6a: $a9
	sbc  c                                           ; $5e6b: $99
	adc  b                                           ; $5e6c: $88
	add  a                                           ; $5e6d: $87
	halt                                             ; $5e6e: $76
	ld   h, [hl]                                     ; $5e6f: $66
	ld   h, [hl]                                     ; $5e70: $66
	ld   [hl], a                                     ; $5e71: $77
	ld   [hl], a                                     ; $5e72: $77
	adc  c                                           ; $5e73: $89
	adc  c                                           ; $5e74: $89
	sbc  d                                           ; $5e75: $9a
	xor  d                                           ; $5e76: $aa
	sbc  c                                           ; $5e77: $99
	sbc  b                                           ; $5e78: $98
	adc  b                                           ; $5e79: $88
	ld   [hl], a                                     ; $5e7a: $77
	ld   [hl], a                                     ; $5e7b: $77
	ld   h, [hl]                                     ; $5e7c: $66
	ld   [hl], a                                     ; $5e7d: $77
	ld   [hl], a                                     ; $5e7e: $77
	adc  b                                           ; $5e7f: $88
	sbc  b                                           ; $5e80: $98
	adc  c                                           ; $5e81: $89
	xor  c                                           ; $5e82: $a9
	sbc  c                                           ; $5e83: $99
	sbc  b                                           ; $5e84: $98
	adc  c                                           ; $5e85: $89
	add  a                                           ; $5e86: $87
	ld   [hl], a                                     ; $5e87: $77
	ld   [hl], a                                     ; $5e88: $77
	ld   [hl], a                                     ; $5e89: $77
	ld   [hl], a                                     ; $5e8a: $77
	ld   a, b                                        ; $5e8b: $78
	adc  b                                           ; $5e8c: $88
	sbc  c                                           ; $5e8d: $99
	adc  b                                           ; $5e8e: $88
	sbc  c                                           ; $5e8f: $99
	adc  b                                           ; $5e90: $88
	sbc  c                                           ; $5e91: $99
	sbc  b                                           ; $5e92: $98
	adc  b                                           ; $5e93: $88
	ld   [hl], a                                     ; $5e94: $77
	ld   [hl], a                                     ; $5e95: $77
	ld   [hl], a                                     ; $5e96: $77
	ld   [hl], a                                     ; $5e97: $77
	ld   a, b                                        ; $5e98: $78
	adc  b                                           ; $5e99: $88
	sbc  c                                           ; $5e9a: $99
	sbc  c                                           ; $5e9b: $99
	sbc  b                                           ; $5e9c: $98
	sbc  c                                           ; $5e9d: $99
	sbc  c                                           ; $5e9e: $99
	sbc  c                                           ; $5e9f: $99
	sbc  b                                           ; $5ea0: $98
	adc  b                                           ; $5ea1: $88
	add  a                                           ; $5ea2: $87
	ld   [hl], a                                     ; $5ea3: $77
	ld   [hl], a                                     ; $5ea4: $77
	ld   [hl], a                                     ; $5ea5: $77
	adc  b                                           ; $5ea6: $88
	adc  b                                           ; $5ea7: $88
	adc  b                                           ; $5ea8: $88
	adc  c                                           ; $5ea9: $89
	sbc  c                                           ; $5eaa: $99
	sbc  c                                           ; $5eab: $99
	sbc  c                                           ; $5eac: $99
	sbc  c                                           ; $5ead: $99
	adc  b                                           ; $5eae: $88
	adc  b                                           ; $5eaf: $88
	adc  b                                           ; $5eb0: $88
	add  a                                           ; $5eb1: $87
	ld   [hl], a                                     ; $5eb2: $77
	ld   [hl], a                                     ; $5eb3: $77
	adc  b                                           ; $5eb4: $88
	adc  b                                           ; $5eb5: $88
	adc  b                                           ; $5eb6: $88
	adc  b                                           ; $5eb7: $88
	adc  b                                           ; $5eb8: $88
	adc  b                                           ; $5eb9: $88
	sbc  c                                           ; $5eba: $99
	sbc  c                                           ; $5ebb: $99
	sbc  c                                           ; $5ebc: $99
	sbc  c                                           ; $5ebd: $99
	sbc  b                                           ; $5ebe: $98
	adc  b                                           ; $5ebf: $88
	adc  b                                           ; $5ec0: $88
	ld   [hl], a                                     ; $5ec1: $77
	ld   [hl], a                                     ; $5ec2: $77
	ld   [hl], a                                     ; $5ec3: $77
	adc  b                                           ; $5ec4: $88
	adc  b                                           ; $5ec5: $88
	adc  b                                           ; $5ec6: $88
	adc  b                                           ; $5ec7: $88
	sbc  c                                           ; $5ec8: $99
	sbc  c                                           ; $5ec9: $99
	sbc  c                                           ; $5eca: $99
	sbc  c                                           ; $5ecb: $99
	sbc  b                                           ; $5ecc: $98
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
	sbc  b                                           ; $5fb6: $98
	adc  b                                           ; $5fb7: $88
	adc  b                                           ; $5fb8: $88
	adc  b                                           ; $5fb9: $88
	adc  c                                           ; $5fba: $89
	adc  b                                           ; $5fbb: $88
	sbc  b                                           ; $5fbc: $98
	ld   a, b                                        ; $5fbd: $78
	adc  b                                           ; $5fbe: $88
	add  a                                           ; $5fbf: $87
	adc  c                                           ; $5fc0: $89
	adc  b                                           ; $5fc1: $88
	adc  b                                           ; $5fc2: $88
	sbc  c                                           ; $5fc3: $99
	add  a                                           ; $5fc4: $87
	ld   a, b                                        ; $5fc5: $78
	add  a                                           ; $5fc6: $87
	ld   [hl], a                                     ; $5fc7: $77
	ld   a, c                                        ; $5fc8: $79
	sbc  b                                           ; $5fc9: $98
	ld   [hl], a                                     ; $5fca: $77
	sbc  c                                           ; $5fcb: $99
	adc  b                                           ; $5fcc: $88
	adc  b                                           ; $5fcd: $88
	adc  b                                           ; $5fce: $88
	ld   [hl], a                                     ; $5fcf: $77
	ld   [hl], a                                     ; $5fd0: $77
	ld   h, a                                        ; $5fd1: $67
	add  a                                           ; $5fd2: $87
	ld   h, a                                        ; $5fd3: $67
	ld   [hl], a                                     ; $5fd4: $77
	adc  c                                           ; $5fd5: $89
	sbc  d                                           ; $5fd6: $9a
	cp   d                                           ; $5fd7: $ba
	xor  e                                           ; $5fd8: $ab
	xor  c                                           ; $5fd9: $a9
	add  l                                           ; $5fda: $85
	ld   [hl], $95                                   ; $5fdb: $36 $95
	inc  h                                           ; $5fdd: $24
	ld   h, [hl]                                     ; $5fde: $66
	adc  b                                           ; $5fdf: $88
	ld   l, d                                        ; $5fe0: $6a
	db   $ec                                         ; $5fe1: $ec
	xor  e                                           ; $5fe2: $ab
	db   $dd                                         ; $5fe3: $dd
	ld   [$5177], a                                  ; $5fe4: $ea $77 $51
	ld   h, $31                                      ; $5fe7: $26 $31
	dec  [hl]                                        ; $5fe9: $35
	ld   c, b                                        ; $5fea: $48
	cp   b                                           ; $5feb: $b8
	cp   a                                           ; $5fec: $bf
	db   $fd                                         ; $5fed: $fd
	rst  $38                                         ; $5fee: $ff
	xor  $c6                                         ; $5fef: $ee $c6
	ld   b, c                                        ; $5ff1: $41
	ld   de, $1151                                   ; $5ff2: $11 $51 $11
	ld   h, l                                        ; $5ff5: $65
	adc  [hl]                                        ; $5ff6: $8e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ff7: $cf
	rst  $38                                         ; $5ff8: $ff
	rst  $38                                         ; $5ff9: $ff
	rst  $38                                         ; $5ffa: $ff
	jp   hl                                          ; $5ffb: $e9


	ld   b, d                                        ; $5ffc: $42
	ld   de, $1113                                   ; $5ffd: $11 $13 $11
	jr   z, jr_0f6_607e                              ; $6000: $28 $7c

	rst  $38                                         ; $6002: $ff
	rst  $38                                         ; $6003: $ff
	cp   $ff                                         ; $6004: $fe $ff
	db   $db                                         ; $6006: $db
	ld   h, c                                        ; $6007: $61
	ld   de, $3111                                   ; $6008: $11 $11 $31
	ld   d, $ca                                      ; $600b: $16 $ca
	rst  $38                                         ; $600d: $ff
	rst  $38                                         ; $600e: $ff
	rst  $38                                         ; $600f: $ff
	rst  $28                                         ; $6010: $ef
	ld   sp, hl                                      ; $6011: $f9
	add  h                                           ; $6012: $84
	ld   de, $1511                                   ; $6013: $11 $11 $15
	ld   de, $bfad                                   ; $6016: $11 $ad $bf
	rst  $38                                         ; $6019: $ff
	rst  $38                                         ; $601a: $ff
	db   $fc                                         ; $601b: $fc
	db   $fd                                         ; $601c: $fd
	halt                                             ; $601d: $76
	ld   sp, $1411                                   ; $601e: $31 $11 $14
	ld   h, c                                        ; $6021: $61
	dec  e                                           ; $6022: $1d
	db   $fd                                         ; $6023: $fd
	rst  $38                                         ; $6024: $ff
	rst  $38                                         ; $6025: $ff
	ld   a, [$b5cf]                                  ; $6026: $fa $cf $b5
	ld   d, e                                        ; $6029: $53
	ld   de, $6c11                                   ; $602a: $11 $11 $6c
	ld   de, $cfef                                   ; $602d: $11 $ef $cf
	rst  $38                                         ; $6030: $ff
	rst  $38                                         ; $6031: $ff
	adc  d                                           ; $6032: $8a
	db   $fc                                         ; $6033: $fc
	ld   b, h                                        ; $6034: $44
	ld   b, l                                        ; $6035: $45
	ld   b, c                                        ; $6036: $41
	ld   de, $15f1                                   ; $6037: $11 $f1 $15
	cp   $df                                         ; $603a: $fe $df
	rst  $28                                         ; $603c: $ef
	db   $fd                                         ; $603d: $fd
	ld   l, a                                        ; $603e: $6f
	rst  $30                                         ; $603f: $f7
	ld   b, l                                        ; $6040: $45
	ld   a, c                                        ; $6041: $79
	ld   de, $d114                                   ; $6042: $11 $14 $d1
	ld   d, $fd                                      ; $6045: $16 $fd
	xor  l                                           ; $6047: $ad
	rst  $38                                         ; $6048: $ff
	ld   a, [$f68f]                                  ; $6049: $fa $8f $f6
	ld   b, [hl]                                     ; $604c: $46
	sbc  e                                           ; $604d: $9b
	ld   sp, $7411                                   ; $604e: $31 $11 $74
	ld   de, $8cff                                   ; $6051: $11 $ff $8c
	rst  $38                                         ; $6054: $ff
	rst  $38                                         ; $6055: $ff
	sbc  l                                           ; $6056: $9d
	ld   sp, hl                                      ; $6057: $f9
	ld   b, [hl]                                     ; $6058: $46
	adc  c                                           ; $6059: $89
	ld   [hl], c                                     ; $605a: $71
	ld   de, $4118                                   ; $605b: $11 $18 $41
	ccf                                              ; $605e: $3f
	reti                                             ; $605f: $d9


	rst  $38                                         ; $6060: $ff
	rst  $38                                         ; $6061: $ff
	ld   sp, hl                                      ; $6062: $f9
	rst  JumpTable                                         ; $6063: $df
	add  l                                           ; $6064: $85
	ld   [hl], a                                     ; $6065: $77
	sbc  b                                           ; $6066: $98
	ld   de, $a511                                   ; $6067: $11 $11 $a5
	inc  de                                          ; $606a: $13
	db   $fd                                         ; $606b: $fd
	xor  a                                           ; $606c: $af
	rst  $38                                         ; $606d: $ff
	rst  $38                                         ; $606e: $ff
	adc  h                                           ; $606f: $8c
	ld   hl, sp+$46                                  ; $6070: $f8 $46
	ld   a, c                                        ; $6072: $79
	add  c                                           ; $6073: $81
	ld   de, $8119                                   ; $6074: $11 $19 $81
	cpl                                              ; $6077: $2f
	ld   sp, hl                                      ; $6078: $f9
	rst  $38                                         ; $6079: $ff
	rst  $38                                         ; $607a: $ff
	rst  $30                                         ; $607b: $f7
	cp   a                                           ; $607c: $bf
	add  h                                           ; $607d: $84

jr_0f6_607e:
	ld   h, a                                        ; $607e: $67
	sbc  e                                           ; $607f: $9b
	ld   sp, $6c11                                   ; $6080: $31 $11 $6c
	ld   de, $9ddf                                   ; $6083: $11 $df $9d
	rst  $38                                         ; $6086: $ff
	rst  $38                                         ; $6087: $ff
	sbc  b                                           ; $6088: $98
	db   $fc                                         ; $6089: $fc
	ld   b, l                                        ; $608a: $45
	ld   a, c                                        ; $608b: $79
	and  a                                           ; $608c: $a7
	ld   de, $c312                                   ; $608d: $11 $12 $c3
	rla                                              ; $6090: $17
	db   $fc                                         ; $6091: $fc
	xor  a                                           ; $6092: $af
	rst  $38                                         ; $6093: $ff
	db   $fc                                         ; $6094: $fc
	ld   l, l                                        ; $6095: $6d
	push de                                          ; $6096: $d5
	ld   b, [hl]                                     ; $6097: $46
	adc  e                                           ; $6098: $8b
	and  d                                           ; $6099: $a2
	ld   de, $b11a                                   ; $609a: $11 $1a $b1
	ld   e, $f9                                      ; $609d: $1e $f9
	rst  $28                                         ; $609f: $ef
	rst  $28                                         ; $60a0: $ef
	rst  $30                                         ; $60a1: $f7
	adc  a                                           ; $60a2: $8f
	sub  h                                           ; $60a3: $94
	ld   d, a                                        ; $60a4: $57
	xor  h                                           ; $60a5: $ac
	ld   [hl], c                                     ; $60a6: $71
	ld   de, $611d                                   ; $60a7: $11 $1d $61
	ld   c, a                                        ; $60aa: $4f
	cp   c                                           ; $60ab: $b9
	rst  $38                                         ; $60ac: $ff
	rst  $28                                         ; $60ad: $ef
	push hl                                          ; $60ae: $e5
	adc  $64                                         ; $60af: $ce $64
	ld   a, b                                        ; $60b1: $78
	cp   l                                           ; $60b2: $bd
	ld   b, c                                        ; $60b3: $41
	ld   de, $213d                                   ; $60b4: $11 $3d $21
	sbc  a                                           ; $60b7: $9f
	adc  e                                           ; $60b8: $8b
	db   $fd                                         ; $60b9: $fd
	rst  $38                                         ; $60ba: $ff
	or   [hl]                                        ; $60bb: $b6
	db   $dd                                         ; $60bc: $dd
	ld   d, l                                        ; $60bd: $55
	ld   a, b                                        ; $60be: $78
	call c, $1131                                    ; $60bf: $dc $31 $11
	ld   e, [hl]                                     ; $60c2: $5e
	ld   de, $9ebf                                   ; $60c3: $11 $bf $9e
	ei                                               ; $60c6: $fb
	rst  $38                                         ; $60c7: $ff
	and  [hl]                                        ; $60c8: $a6
	db   $ed                                         ; $60c9: $ed
	ld   h, [hl]                                     ; $60ca: $66
	ld   l, b                                        ; $60cb: $68
	db   $db                                         ; $60cc: $db
	ld   hl, $7d11                                   ; $60cd: $21 $11 $7d
	ld   de, $8ebe                                   ; $60d0: $11 $be $8e
	ei                                               ; $60d3: $fb
	rst  $38                                         ; $60d4: $ff
	and  [hl]                                        ; $60d5: $a6
	db   $fc                                         ; $60d6: $fc
	ld   h, [hl]                                     ; $60d7: $66
	ld   h, a                                        ; $60d8: $67
	db   $db                                         ; $60d9: $db
	ld   hl, $6e11                                   ; $60da: $21 $11 $6e
	ld   de, $9eaf                                   ; $60dd: $11 $af $9e
	ei                                               ; $60e0: $fb
	rst  $38                                         ; $60e1: $ff
	or   l                                           ; $60e2: $b5
	db   $dd                                         ; $60e3: $dd
	add  a                                           ; $60e4: $87
	ld   h, [hl]                                     ; $60e5: $66
	call c, $1131                                    ; $60e6: $dc $31 $11
	ld   e, a                                        ; $60e9: $5f
	ld   de, $be7e                                   ; $60ea: $11 $7e $be
	ld   hl, sp-$01                                  ; $60ed: $f8 $ff
	push af                                          ; $60ef: $f5
	xor  l                                           ; $60f0: $ad
	xor  d                                           ; $60f1: $aa
	ld   h, h                                        ; $60f2: $64
	xor  l                                           ; $60f3: $ad
	ld   [hl], c                                     ; $60f4: $71
	ld   de, $613f                                   ; $60f5: $11 $3f $61
	dec  de                                          ; $60f8: $1b
	rst  JumpTable                                         ; $60f9: $df
	rst  $30                                         ; $60fa: $f7
	sbc  a                                           ; $60fb: $9f
	ld   sp, hl                                      ; $60fc: $f9
	sbc  d                                           ; $60fd: $9a
	xor  h                                           ; $60fe: $ac
	or   h                                           ; $60ff: $b4
	ld   e, e                                        ; $6100: $5b
	and  h                                           ; $6101: $a4
	ld   de, $d11c                                   ; $6102: $11 $1c $d1
	inc  d                                           ; $6105: $14
	sbc  a                                           ; $6106: $9f
	ei                                               ; $6107: $fb
	ld   c, [hl]                                     ; $6108: $4e
	rst  $38                                         ; $6109: $ff
	db   $db                                         ; $610a: $db
	ld   l, c                                        ; $610b: $69
	db   $fc                                         ; $610c: $fc
	ld   h, [hl]                                     ; $610d: $66
	ld   h, h                                        ; $610e: $64
	ld   hl, $b511                                   ; $610f: $21 $11 $b5
	inc  bc                                          ; $6112: $03
	ld   [hl], $ff                                   ; $6113: $36 $ff
	cp   d                                           ; $6115: $ba
	db   $fd                                         ; $6116: $fd
	rst  $28                                         ; $6117: $ef
	rst  $30                                         ; $6118: $f7
	ld   a, d                                        ; $6119: $7a
	sbc  e                                           ; $611a: $9b
	and  h                                           ; $611b: $a4
	ld   de, $7811                                   ; $611c: $11 $11 $78
	inc  sp                                          ; $611f: $33
	ld   d, h                                        ; $6120: $54
	ld   a, l                                        ; $6121: $7d
	cp   b                                           ; $6122: $b8
	xor  e                                           ; $6123: $ab
	sbc  e                                           ; $6124: $9b
	res  5, e                                        ; $6125: $cb $ab
	sbc  c                                           ; $6127: $99
	xor  e                                           ; $6128: $ab
	xor  c                                           ; $6129: $a9
	sbc  c                                           ; $612a: $99
	adc  c                                           ; $612b: $89
	adc  b                                           ; $612c: $88
	halt                                             ; $612d: $76
	ld   d, h                                        ; $612e: $54
	inc  [hl]                                        ; $612f: $34
	ld   b, h                                        ; $6130: $44
	ld   d, a                                        ; $6131: $57
	ld   [hl], a                                     ; $6132: $77
	ld   a, b                                        ; $6133: $78
	sbc  c                                           ; $6134: $99
	xor  d                                           ; $6135: $aa
	xor  e                                           ; $6136: $ab
	cp   e                                           ; $6137: $bb
	cp   e                                           ; $6138: $bb
	res  5, c                                        ; $6139: $cb $a9
	sbc  b                                           ; $613b: $98
	ld   h, [hl]                                     ; $613c: $66
	ld   d, e                                        ; $613d: $53
	inc  sp                                          ; $613e: $33
	ld   b, h                                        ; $613f: $44
	ld   d, [hl]                                     ; $6140: $56
	ld   h, a                                        ; $6141: $67
	ld   [hl], a                                     ; $6142: $77
	sbc  d                                           ; $6143: $9a
	sbc  d                                           ; $6144: $9a
	xor  e                                           ; $6145: $ab
	cp   h                                           ; $6146: $bc
	call z, $aacb                                    ; $6147: $cc $cb $aa
	xor  b                                           ; $614a: $a8
	halt                                             ; $614b: $76
	ld   d, h                                        ; $614c: $54
	ld   b, h                                        ; $614d: $44
	inc  [hl]                                        ; $614e: $34
	ld   d, l                                        ; $614f: $55
	ld   h, [hl]                                     ; $6150: $66
	ld   [hl], a                                     ; $6151: $77
	adc  b                                           ; $6152: $88
	adc  d                                           ; $6153: $8a
	xor  d                                           ; $6154: $aa
	cp   h                                           ; $6155: $bc
	cp   h                                           ; $6156: $bc
	cp   h                                           ; $6157: $bc
	call z, $87a9                                    ; $6158: $cc $a9 $87
	ld   h, l                                        ; $615b: $65
	ld   b, e                                        ; $615c: $43
	inc  sp                                          ; $615d: $33
	inc  [hl]                                        ; $615e: $34
	ld   d, l                                        ; $615f: $55
	ld   h, a                                        ; $6160: $67
	ld   [hl], a                                     ; $6161: $77
	adc  c                                           ; $6162: $89
	xor  d                                           ; $6163: $aa
	cp   e                                           ; $6164: $bb
	call $fade                                       ; $6165: $cd $de $fa
	ld   a, l                                        ; $6168: $7d
	or   [hl]                                        ; $6169: $b6
	add  a                                           ; $616a: $87
	inc  sp                                          ; $616b: $33
	ld   hl, $4513                                   ; $616c: $21 $13 $45
	ld   h, [hl]                                     ; $616f: $66
	ld   a, d                                        ; $6170: $7a
	cp   e                                           ; $6171: $bb
	xor  $bb                                         ; $6172: $ee $bb
	db   $dd                                         ; $6174: $dd
	cp   e                                           ; $6175: $bb
	db   $db                                         ; $6176: $db
	and  a                                           ; $6177: $a7
	inc  d                                           ; $6178: $14
	add  [hl]                                        ; $6179: $86
	ld   d, l                                        ; $617a: $55
	ld   de, $7916                                   ; $617b: $11 $16 $79
	and  a                                           ; $617e: $a7
	ld   l, e                                        ; $617f: $6b
	rst  $38                                         ; $6180: $ff
	rst  $38                                         ; $6181: $ff
	set  7, a                                        ; $6182: $cb $ff
	ret  c                                           ; $6184: $d8

	ld   b, c                                        ; $6185: $41
	ld   de, $1111                                   ; $6186: $11 $11 $11
	ld   [de], a                                     ; $6189: $12
	inc  h                                           ; $618a: $24
	sbc  [hl]                                        ; $618b: $9e
	rst  JumpTable                                         ; $618c: $df
	rst  $38                                         ; $618d: $ff
	rst  $38                                         ; $618e: $ff
	rst  $38                                         ; $618f: $ff
	db   $dd                                         ; $6190: $dd
	xor  c                                           ; $6191: $a9
	sub  [hl]                                        ; $6192: $96
	ld   hl, $1311                                   ; $6193: $21 $11 $13
	ld   sp, $3b12                                   ; $6196: $31 $12 $3b
	rst  $38                                         ; $6199: $ff
	adc  $ff                                         ; $619a: $ce $ff
	rst  $38                                         ; $619c: $ff
	ld   sp, hl                                      ; $619d: $f9
	xor  e                                           ; $619e: $ab
	adc  e                                           ; $619f: $8b
	and  e                                           ; $61a0: $a3
	ld   de, $1511                                   ; $61a1: $11 $11 $15
	ld   sp, $4b34                                   ; $61a4: $31 $34 $4b
	cp   $bf                                         ; $61a7: $fe $bf
	cp   $ff                                         ; $61a9: $fe $ff
	jp   hl                                          ; $61ab: $e9


	xor  d                                           ; $61ac: $aa
	sbc  d                                           ; $61ad: $9a
	and  [hl]                                        ; $61ae: $a6
	ld   [hl+], a                                    ; $61af: $22
	ld   de, $5214                                   ; $61b0: $11 $14 $52
	inc  h                                           ; $61b3: $24
	dec  [hl]                                        ; $61b4: $35
	xor  [hl]                                        ; $61b5: $ae
	set  5, l                                        ; $61b6: $cb $ed
	rst  JumpTable                                         ; $61b8: $df
	cp   $bb                                         ; $61b9: $fe $bb
	xor  d                                           ; $61bb: $aa
	jp   z, $3174                                    ; $61bc: $ca $74 $31

	ld   de, $3235                                   ; $61bf: $11 $35 $32
	inc  sp                                          ; $61c2: $33
	add  hl, sp                                      ; $61c3: $39
	call c, $ddac                                    ; $61c4: $dc $ac $dd
	rst  $38                                         ; $61c7: $ff
	db   $fc                                         ; $61c8: $fc
	jp   z, $b89b                                    ; $61c9: $ca $9b $b8

	ld   h, h                                        ; $61cc: $64
	ld   de, $5412                                   ; $61cd: $11 $12 $54
	ld   [hl+], a                                    ; $61d0: $22
	inc  hl                                          ; $61d1: $23
	ld   l, h                                        ; $61d2: $6c
	jp   z, $cdbd                                    ; $61d3: $ca $bd $cd

	rst  $38                                         ; $61d6: $ff
	db   $ec                                         ; $61d7: $ec
	xor  c                                           ; $61d8: $a9
	xor  e                                           ; $61d9: $ab
	sub  [hl]                                        ; $61da: $96
	ld   b, e                                        ; $61db: $43
	ld   de, $6314                                   ; $61dc: $11 $14 $63
	ld   [de], a                                     ; $61df: $12
	inc  [hl]                                        ; $61e0: $34
	sbc  l                                           ; $61e1: $9d
	ret                                              ; $61e2: $c9


	cp   l                                           ; $61e3: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61e4: $cf
	rst  $38                                         ; $61e5: $ff
	cp   e                                           ; $61e6: $bb
	cp   c                                           ; $61e7: $b9
	cp   d                                           ; $61e8: $ba
	ld   [hl], l                                     ; $61e9: $75
	ld   b, e                                        ; $61ea: $43
	ld   de, $5235                                   ; $61eb: $11 $35 $52
	inc  de                                          ; $61ee: $13
	ld   b, l                                        ; $61ef: $45
	sbc  e                                           ; $61f0: $9b
	sbc  b                                           ; $61f1: $98
	cp   l                                           ; $61f2: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61f3: $cf
	db   $fc                                         ; $61f4: $fc
	xor  h                                           ; $61f5: $ac
	cp   d                                           ; $61f6: $ba
	xor  d                                           ; $61f7: $aa
	ld   h, [hl]                                     ; $61f8: $66
	ld   [hl], l                                     ; $61f9: $75
	ld   [hl+], a                                    ; $61fa: $22
	dec  h                                           ; $61fb: $25
	ld   [hl], h                                     ; $61fc: $74
	ld   [de], a                                     ; $61fd: $12
	ld   b, h                                        ; $61fe: $44
	sbc  h                                           ; $61ff: $9c
	add  l                                           ; $6200: $85
	cp   l                                           ; $6201: $bd
	adc  $fa                                         ; $6202: $ce $fa
	adc  l                                           ; $6204: $8d
	reti                                             ; $6205: $d9


	xor  c                                           ; $6206: $a9
	ld   h, a                                        ; $6207: $67
	and  a                                           ; $6208: $a7
	inc  sp                                          ; $6209: $33
	inc  [hl]                                        ; $620a: $34
	sub  a                                           ; $620b: $97
	ld   bc, $6b44                                   ; $620c: $01 $44 $6b
	sub  h                                           ; $620f: $94
	adc  [hl]                                        ; $6210: $8e

Jump_0f6_6211:
	cp   l                                           ; $6211: $bd
	ei                                               ; $6212: $fb
	adc  l                                           ; $6213: $8d
	ld   [$679b], a                                  ; $6214: $ea $9b $67
	cp   b                                           ; $6217: $b8
	ld   b, l                                        ; $6218: $45
	ld   b, d                                        ; $6219: $42
	adc  d                                           ; $621a: $8a
	ld   hl, $4a54                                   ; $621b: $21 $54 $4a
	sub  e                                           ; $621e: $93
	ld   l, h                                        ; $621f: $6c
	cp   d                                           ; $6220: $ba
	db   $db                                         ; $6221: $db
	xor  l                                           ; $6222: $ad
	ld   [$8999], a                                  ; $6223: $ea $99 $89
	cp   d                                           ; $6226: $ba
	halt                                             ; $6227: $76
	ld   [hl], l                                     ; $6228: $75
	ld   d, a                                        ; $6229: $57
	sub  l                                           ; $622a: $95
	inc  h                                           ; $622b: $24
	ld   d, h                                        ; $622c: $54
	ld   [hl], a                                     ; $622d: $77
	ld   d, l                                        ; $622e: $55
	xor  e                                           ; $622f: $ab
	sbc  e                                           ; $6230: $9b
	cp   c                                           ; $6231: $b9
	xor  h                                           ; $6232: $ac
	xor  b                                           ; $6233: $a8
	sbc  c                                           ; $6234: $99
	xor  d                                           ; $6235: $aa
	sbc  c                                           ; $6236: $99
	sbc  c                                           ; $6237: $99
	add  a                                           ; $6238: $87
	ld   a, b                                        ; $6239: $78
	sub  [hl]                                        ; $623a: $96
	inc  [hl]                                        ; $623b: $34
	ld   d, h                                        ; $623c: $54
	ld   h, [hl]                                     ; $623d: $66
	ld   b, l                                        ; $623e: $45
	adc  c                                           ; $623f: $89
	adc  c                                           ; $6240: $89
	sbc  c                                           ; $6241: $99
	xor  d                                           ; $6242: $aa
	xor  c                                           ; $6243: $a9
	sbc  d                                           ; $6244: $9a
	xor  d                                           ; $6245: $aa
	xor  c                                           ; $6246: $a9
	xor  e                                           ; $6247: $ab
	xor  c                                           ; $6248: $a9
	adc  b                                           ; $6249: $88
	sbc  b                                           ; $624a: $98
	ld   d, h                                        ; $624b: $54
	ld   d, h                                        ; $624c: $54
	ld   b, l                                        ; $624d: $45
	ld   b, h                                        ; $624e: $44
	ld   d, a                                        ; $624f: $57
	add  a                                           ; $6250: $87
	adc  b                                           ; $6251: $88
	sbc  c                                           ; $6252: $99
	xor  c                                           ; $6253: $a9
	xor  d                                           ; $6254: $aa
	cp   d                                           ; $6255: $ba
	xor  d                                           ; $6256: $aa
	xor  d                                           ; $6257: $aa
	xor  d                                           ; $6258: $aa
	xor  c                                           ; $6259: $a9
	adc  b                                           ; $625a: $88
	add  [hl]                                        ; $625b: $86
	ld   b, l                                        ; $625c: $45
	ld   b, h                                        ; $625d: $44
	ld   b, h                                        ; $625e: $44
	ld   b, l                                        ; $625f: $45
	ld   h, a                                        ; $6260: $67
	ld   [hl], a                                     ; $6261: $77
	adc  b                                           ; $6262: $88
	sbc  d                                           ; $6263: $9a
	xor  c                                           ; $6264: $a9
	xor  d                                           ; $6265: $aa
	cp   e                                           ; $6266: $bb
	cp   d                                           ; $6267: $ba
	xor  d                                           ; $6268: $aa
	xor  d                                           ; $6269: $aa
	sbc  c                                           ; $626a: $99
	add  a                                           ; $626b: $87
	halt                                             ; $626c: $76
	ld   d, l                                        ; $626d: $55
	ld   d, h                                        ; $626e: $54
	ld   b, h                                        ; $626f: $44
	ld   b, l                                        ; $6270: $45
	ld   h, a                                        ; $6271: $67
	ld   [hl], a                                     ; $6272: $77
	adc  c                                           ; $6273: $89
	sbc  d                                           ; $6274: $9a
	xor  c                                           ; $6275: $a9
	sbc  d                                           ; $6276: $9a
	xor  d                                           ; $6277: $aa
	xor  d                                           ; $6278: $aa
	sbc  c                                           ; $6279: $99
	xor  d                                           ; $627a: $aa
	xor  c                                           ; $627b: $a9
	sbc  c                                           ; $627c: $99
	adc  b                                           ; $627d: $88
	ld   h, l                                        ; $627e: $65
	ld   d, l                                        ; $627f: $55
	ld   b, l                                        ; $6280: $45
	ld   d, l                                        ; $6281: $55
	ld   d, [hl]                                     ; $6282: $56
	ld   [hl], a                                     ; $6283: $77
	ld   a, c                                        ; $6284: $79
	adc  c                                           ; $6285: $89
	sbc  c                                           ; $6286: $99
	sbc  c                                           ; $6287: $99
	sbc  c                                           ; $6288: $99
	sbc  d                                           ; $6289: $9a
	xor  d                                           ; $628a: $aa
	xor  d                                           ; $628b: $aa
	xor  d                                           ; $628c: $aa
	xor  d                                           ; $628d: $aa
	sbc  b                                           ; $628e: $98
	sbc  b                                           ; $628f: $98
	halt                                             ; $6290: $76
	ld   d, l                                        ; $6291: $55
	ld   d, l                                        ; $6292: $55
	ld   d, l                                        ; $6293: $55
	ld   d, [hl]                                     ; $6294: $56
	ld   [hl], a                                     ; $6295: $77
	ld   a, b                                        ; $6296: $78
	adc  c                                           ; $6297: $89
	adc  b                                           ; $6298: $88
	sbc  c                                           ; $6299: $99
	sbc  c                                           ; $629a: $99
	xor  d                                           ; $629b: $aa
	sbc  d                                           ; $629c: $9a
	xor  d                                           ; $629d: $aa
	cp   e                                           ; $629e: $bb
	xor  c                                           ; $629f: $a9
	xor  c                                           ; $62a0: $a9
	adc  b                                           ; $62a1: $88
	halt                                             ; $62a2: $76
	ld   h, l                                        ; $62a3: $65
	ld   d, l                                        ; $62a4: $55
	ld   d, l                                        ; $62a5: $55
	ld   d, [hl]                                     ; $62a6: $56
	ld   h, a                                        ; $62a7: $67
	ld   [hl], a                                     ; $62a8: $77
	adc  c                                           ; $62a9: $89
	adc  b                                           ; $62aa: $88
	adc  c                                           ; $62ab: $89
	sbc  c                                           ; $62ac: $99
	sbc  d                                           ; $62ad: $9a
	xor  c                                           ; $62ae: $a9
	sbc  c                                           ; $62af: $99
	sbc  d                                           ; $62b0: $9a
	xor  c                                           ; $62b1: $a9
	xor  d                                           ; $62b2: $aa
	sbc  c                                           ; $62b3: $99
	add  a                                           ; $62b4: $87
	halt                                             ; $62b5: $76
	ld   h, l                                        ; $62b6: $65
	ld   d, l                                        ; $62b7: $55
	ld   d, [hl]                                     ; $62b8: $56
	ld   h, [hl]                                     ; $62b9: $66
	ld   [hl], a                                     ; $62ba: $77
	ld   a, b                                        ; $62bb: $78
	adc  c                                           ; $62bc: $89
	sbc  b                                           ; $62bd: $98
	adc  b                                           ; $62be: $88
	adc  c                                           ; $62bf: $89
	adc  c                                           ; $62c0: $89
	sbc  c                                           ; $62c1: $99
	sbc  d                                           ; $62c2: $9a
	sbc  c                                           ; $62c3: $99
	sbc  c                                           ; $62c4: $99
	sbc  c                                           ; $62c5: $99
	sbc  b                                           ; $62c6: $98
	adc  b                                           ; $62c7: $88
	add  a                                           ; $62c8: $87
	ld   h, l                                        ; $62c9: $65
	ld   d, [hl]                                     ; $62ca: $56
	ld   h, [hl]                                     ; $62cb: $66
	ld   h, [hl]                                     ; $62cc: $66
	ld   [hl], a                                     ; $62cd: $77
	ld   [hl], a                                     ; $62ce: $77
	ld   a, b                                        ; $62cf: $78
	sbc  b                                           ; $62d0: $98
	adc  c                                           ; $62d1: $89
	sbc  b                                           ; $62d2: $98
	sbc  c                                           ; $62d3: $99
	sbc  c                                           ; $62d4: $99
	sbc  c                                           ; $62d5: $99
	xor  d                                           ; $62d6: $aa
	xor  d                                           ; $62d7: $aa
	sbc  d                                           ; $62d8: $9a
	sbc  c                                           ; $62d9: $99
	sbc  b                                           ; $62da: $98
	sbc  b                                           ; $62db: $98
	ld   [hl], a                                     ; $62dc: $77
	ld   h, [hl]                                     ; $62dd: $66
	ld   h, [hl]                                     ; $62de: $66
	ld   h, [hl]                                     ; $62df: $66
	ld   h, [hl]                                     ; $62e0: $66
	ld   [hl], a                                     ; $62e1: $77
	ld   a, b                                        ; $62e2: $78
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	sbc  c                                           ; $62e5: $99
	sbc  c                                           ; $62e6: $99
	sbc  b                                           ; $62e7: $98
	adc  c                                           ; $62e8: $89
	sbc  c                                           ; $62e9: $99
	sbc  c                                           ; $62ea: $99
	sbc  d                                           ; $62eb: $9a
	xor  d                                           ; $62ec: $aa
	xor  c                                           ; $62ed: $a9
	sbc  b                                           ; $62ee: $98
	sbc  b                                           ; $62ef: $98
	add  a                                           ; $62f0: $87
	ld   [hl], a                                     ; $62f1: $77
	ld   h, [hl]                                     ; $62f2: $66
	ld   h, [hl]                                     ; $62f3: $66
	ld   h, [hl]                                     ; $62f4: $66
	ld   h, a                                        ; $62f5: $67
	ld   [hl], a                                     ; $62f6: $77
	ld   [hl], a                                     ; $62f7: $77
	adc  b                                           ; $62f8: $88
	sbc  b                                           ; $62f9: $98
	adc  c                                           ; $62fa: $89
	sbc  c                                           ; $62fb: $99
	sbc  b                                           ; $62fc: $98
	sbc  c                                           ; $62fd: $99
	adc  c                                           ; $62fe: $89
	sbc  d                                           ; $62ff: $9a
	sbc  c                                           ; $6300: $99
	sbc  c                                           ; $6301: $99
	xor  e                                           ; $6302: $ab
	sub  a                                           ; $6303: $97
	adc  b                                           ; $6304: $88
	sbc  c                                           ; $6305: $99
	add  a                                           ; $6306: $87
	ld   h, l                                        ; $6307: $65
	ld   h, a                                        ; $6308: $67
	ld   h, [hl]                                     ; $6309: $66
	ld   h, [hl]                                     ; $630a: $66
	ld   [hl], a                                     ; $630b: $77
	ld   [hl], a                                     ; $630c: $77
	ld   a, b                                        ; $630d: $78
	sbc  b                                           ; $630e: $98
	adc  b                                           ; $630f: $88
	adc  c                                           ; $6310: $89
	sbc  b                                           ; $6311: $98

Jump_0f6_6312:
	adc  e                                           ; $6312: $8b
	xor  b                                           ; $6313: $a8
	adc  c                                           ; $6314: $89
	xor  d                                           ; $6315: $aa
	sbc  b                                           ; $6316: $98
	sbc  d                                           ; $6317: $9a
	sbc  b                                           ; $6318: $98
	add  a                                           ; $6319: $87
	ld   a, c                                        ; $631a: $79
	add  [hl]                                        ; $631b: $86
	ld   d, [hl]                                     ; $631c: $56
	ld   [hl], a                                     ; $631d: $77
	ld   h, [hl]                                     ; $631e: $66
	ld   h, [hl]                                     ; $631f: $66
	ld   [hl], a                                     ; $6320: $77
	ld   [hl], a                                     ; $6321: $77
	adc  c                                           ; $6322: $89
	adc  b                                           ; $6323: $88
	adc  c                                           ; $6324: $89
	sbc  c                                           ; $6325: $99
	adc  c                                           ; $6326: $89
	xor  c                                           ; $6327: $a9
	xor  c                                           ; $6328: $a9
	xor  d                                           ; $6329: $aa
	sbc  c                                           ; $632a: $99
	sbc  c                                           ; $632b: $99
	sbc  c                                           ; $632c: $99
	adc  b                                           ; $632d: $88
	sbc  b                                           ; $632e: $98
	halt                                             ; $632f: $76
	ld   h, [hl]                                     ; $6330: $66
	ld   h, [hl]                                     ; $6331: $66
	ld   h, l                                        ; $6332: $65
	ld   d, a                                        ; $6333: $57
	add  a                                           ; $6334: $87
	ld   h, a                                        ; $6335: $67
	adc  b                                           ; $6336: $88
	adc  b                                           ; $6337: $88
	sbc  c                                           ; $6338: $99
	sbc  c                                           ; $6339: $99
	adc  c                                           ; $633a: $89
	xor  e                                           ; $633b: $ab
	xor  d                                           ; $633c: $aa
	sub  a                                           ; $633d: $97
	sbc  d                                           ; $633e: $9a
	xor  d                                           ; $633f: $aa
	add  a                                           ; $6340: $87
	add  a                                           ; $6341: $87
	ld   h, a                                        ; $6342: $67
	ld   h, l                                        ; $6343: $65
	ld   h, [hl]                                     ; $6344: $66
	ld   h, [hl]                                     ; $6345: $66
	ld   l, b                                        ; $6346: $68
	ld   [hl], a                                     ; $6347: $77
	adc  b                                           ; $6348: $88
	ld   a, d                                        ; $6349: $7a
	xor  c                                           ; $634a: $a9
	adc  c                                           ; $634b: $89
	sbc  c                                           ; $634c: $99
	adc  e                                           ; $634d: $8b
	ret                                              ; $634e: $c9


	adc  b                                           ; $634f: $88
	xor  d                                           ; $6350: $aa
	add  l                                           ; $6351: $85
	ld   l, d                                        ; $6352: $6a
	and  l                                           ; $6353: $a5
	scf                                              ; $6354: $37
	sub  [hl]                                        ; $6355: $96
	ld   d, [hl]                                     ; $6356: $56
	ld   [hl], a                                     ; $6357: $77
	sbc  d                                           ; $6358: $9a
	ld   a, b                                        ; $6359: $78
	cp   d                                           ; $635a: $ba
	ld   a, b                                        ; $635b: $78
	xor  c                                           ; $635c: $a9
	ld   a, c                                        ; $635d: $79
	xor  c                                           ; $635e: $a9
	xor  d                                           ; $635f: $aa
	add  a                                           ; $6360: $87
	sbc  b                                           ; $6361: $98
	ld   d, h                                        ; $6362: $54
	ld   l, e                                        ; $6363: $6b
	sub  e                                           ; $6364: $93
	ld   c, c                                        ; $6365: $49
	halt                                             ; $6366: $76
	ld   a, b                                        ; $6367: $78
	adc  c                                           ; $6368: $89
	cp   d                                           ; $6369: $ba
	ld   a, d                                        ; $636a: $7a
	reti                                             ; $636b: $d9


	adc  d                                           ; $636c: $8a
	cp   d                                           ; $636d: $ba
	xor  d                                           ; $636e: $aa
	sbc  b                                           ; $636f: $98
	xor  c                                           ; $6370: $a9
	ld   h, l                                        ; $6371: $65
	ld   b, c                                        ; $6372: $41
	rlca                                             ; $6373: $07
	and  c                                           ; $6374: $a1
	add  hl, de                                      ; $6375: $19
	and  l                                           ; $6376: $a5
	adc  h                                           ; $6377: $8c
	cp   d                                           ; $6378: $ba
	rst  $38                                         ; $6379: $ff
	adc  e                                           ; $637a: $8b
	db   $fc                                         ; $637b: $fc
	ld   l, c                                        ; $637c: $69
	cp   c                                           ; $637d: $b9
	ld   a, d                                        ; $637e: $7a
	sub  a                                           ; $637f: $97
	xor  c                                           ; $6380: $a9
	ld   b, c                                        ; $6381: $41
	ld   de, $214b                                   ; $6382: $11 $4b $21
	ld   a, h                                        ; $6385: $7c
	adc  c                                           ; $6386: $89
	cp   $cf                                         ; $6387: $fe $cf
	ld   hl, sp-$71                                  ; $6389: $f8 $8f
	or   h                                           ; $638b: $b4
	ld   l, e                                        ; $638c: $6b
	adc  b                                           ; $638d: $88
	jp   z, $918a                                    ; $638e: $ca $8a $91

	ld   de, $311a                                   ; $6391: $11 $1a $31
	ld   c, l                                        ; $6394: $4d
	call z, $ffff                                    ; $6395: $cc $ff $ff
	ld   a, [$a36d]                                  ; $6398: $fa $6d $a3
	ld   [hl], $88                                   ; $639b: $36 $88
	call z, $a1ad                                    ; $639d: $cc $ad $a1
	ld   de, $3119                                   ; $63a0: $11 $19 $31
	ld   l, $ed                                      ; $63a3: $2e $ed
	rst  $38                                         ; $63a5: $ff
	rst  $38                                         ; $63a6: $ff
	ld   hl, sp+$4b                                  ; $63a7: $f8 $4b
	add  c                                           ; $63a9: $81
	dec  h                                           ; $63aa: $25
	adc  e                                           ; $63ab: $8b
	rst  $38                                         ; $63ac: $ff
	cp   [hl]                                        ; $63ad: $be
	or   c                                           ; $63ae: $b1
	ld   de, $1119                                   ; $63af: $11 $19 $11
	ld   c, a                                        ; $63b2: $4f
	rst  $38                                         ; $63b3: $ff
	rst  $38                                         ; $63b4: $ff
	rst  $38                                         ; $63b5: $ff
	pop  de                                          ; $63b6: $d1
	jr   @+$53                                       ; $63b7: $18 $51

	daa                                              ; $63b9: $27
	xor  a                                           ; $63ba: $af
	rst  $38                                         ; $63bb: $ff
	rst  JumpTable                                         ; $63bc: $df
	pop  de                                          ; $63bd: $d1
	ld   de, $7114                                   ; $63be: $11 $14 $71
	rra                                              ; $63c1: $1f
	rst  $38                                         ; $63c2: $ff
	rst  $38                                         ; $63c3: $ff
	rst  JumpTable                                         ; $63c4: $df
	pop  bc                                          ; $63c5: $c1
	ld   de, $1951                                   ; $63c6: $11 $51 $19
	rst  $38                                         ; $63c9: $ff
	rst  $38                                         ; $63ca: $ff
	db   $dd                                         ; $63cb: $dd
	pop  af                                          ; $63cc: $f1
	ld   de, $f911                                   ; $63cd: $11 $11 $f9
	ld   e, $ff                                      ; $63d0: $1e $ff
	rst  $38                                         ; $63d2: $ff
	di                                               ; $63d3: $f3
	add  e                                           ; $63d4: $83
	ld   de, $3a35                                   ; $63d5: $11 $35 $3a
	rst  $38                                         ; $63d8: $ff
	rst  $38                                         ; $63d9: $ff
	push af                                          ; $63da: $f5
	ld   [hl], a                                     ; $63db: $77
	ld   de, $3f11                                   ; $63dc: $11 $11 $3f
	ld   [hl], c                                     ; $63df: $71
	rst  $38                                         ; $63e0: $ff
	rst  $38                                         ; $63e1: $ff
	pop  af                                          ; $63e2: $f1
	inc  de                                          ; $63e3: $13
	ld   de, $ef1f                                   ; $63e4: $11 $1f $ef
	rst  $38                                         ; $63e7: $ff
	rst  $38                                         ; $63e8: $ff
	pop  af                                          ; $63e9: $f1
	inc  d                                           ; $63ea: $14
	ld   de, $2f11                                   ; $63eb: $11 $11 $2f
	pop  af                                          ; $63ee: $f1
	rst  $38                                         ; $63ef: $ff
	rst  $38                                         ; $63f0: $ff
	pop  hl                                          ; $63f1: $e1
	inc  d                                           ; $63f2: $14
	ld   de, $ff1f                                   ; $63f3: $11 $1f $ff
	rst  $38                                         ; $63f6: $ff
	rst  $38                                         ; $63f7: $ff
	pop  de                                          ; $63f8: $d1
	ld   de, $1121                                   ; $63f9: $11 $21 $11
	rst  $38                                         ; $63fc: $ff
	di                                               ; $63fd: $f3
	rst  $38                                         ; $63fe: $ff
	rst  JumpTable                                         ; $63ff: $df
	ld   b, c                                        ; $6400: $41
	jr   jr_0f6_6414                                 ; $6401: $18 $11

	ccf                                              ; $6403: $3f

jr_0f6_6404:
	rst  $38                                         ; $6404: $ff
	rst  $38                                         ; $6405: $ff
	cp   a                                           ; $6406: $bf
	add  c                                           ; $6407: $81
	ld   [de], a                                     ; $6408: $12
	ld   hl, rAUD1LEN                                   ; $6409: $21 $11 $ff
	or   l                                           ; $640c: $b5
	rst  $38                                         ; $640d: $ff
	sbc  a                                           ; $640e: $9f
	ld   de, $111d                                   ; $640f: $11 $1d $11
	rst  $38                                         ; $6412: $ff
	rst  $38                                         ; $6413: $ff

jr_0f6_6414:
	ld   hl, sp+$7e                                  ; $6414: $f8 $7e
	ld   b, c                                        ; $6416: $41
	rla                                              ; $6417: $17
	ld   de, rAUD1LEN                                   ; $6418: $11 $11 $ff
	ld   d, l                                        ; $641b: $55
	db   $fd                                         ; $641c: $fd
	rl   c                                           ; $641d: $cb $11
	sbc  [hl]                                        ; $641f: $9e
	ld   de, $ffff                                   ; $6420: $11 $ff $ff
	sub  h                                           ; $6423: $94
	sbc  l                                           ; $6424: $9d
	ld   d, c                                        ; $6425: $51
	add  hl, bc                                      ; $6426: $09
	ld   hl, rAUD1ENV                                   ; $6427: $21 $12 $ff
	ld   b, e                                        ; $642a: $43
	rst  $38                                         ; $642b: $ff
	rl   c                                           ; $642c: $cb $11
	sbc  [hl]                                        ; $642e: $9e
	ld   de, $feff                                   ; $642f: $11 $ff $fe
	ld   [hl], h                                     ; $6432: $74
	sbc  [hl]                                        ; $6433: $9e
	ld   h, c                                        ; $6434: $61
	dec  de                                          ; $6435: $1b
	ld   b, c                                        ; $6436: $41
	ld   de, $61ff                                   ; $6437: $11 $ff $61
	rst  $38                                         ; $643a: $ff
	cp   l                                           ; $643b: $bd
	ld   de, $417f                                   ; $643c: $11 $7f $41
	rst  $38                                         ; $643f: $ff
	rst  $38                                         ; $6440: $ff
	ld   [hl], e                                     ; $6441: $73
	ld   a, l                                        ; $6442: $7d
	ld   [hl], c                                     ; $6443: $71
	inc  e                                           ; $6444: $1c
	ld   h, c                                        ; $6445: $61
	ld   de, $81ff                                   ; $6446: $11 $ff $81
	rst  $28                                         ; $6449: $ef
	adc  $11                                         ; $644a: $ce $11
	ld   l, a                                        ; $644c: $6f
	ld   d, c                                        ; $644d: $51
	rst  $38                                         ; $644e: $ff
	rst  $38                                         ; $644f: $ff
	ld   h, d                                        ; $6450: $62
	ld   l, l                                        ; $6451: $6d
	sub  e                                           ; $6452: $93
	ld   a, [hl+]                                    ; $6453: $2a
	ld   [hl], c                                     ; $6454: $71
	ld   de, $e1ff                                   ; $6455: $11 $ff $e1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6458: $cf
	sbc  $11                                         ; $6459: $de $11
	rra                                              ; $645b: $1f
	add  c                                           ; $645c: $81
	rst  JumpTable                                         ; $645d: $df
	rst  $38                                         ; $645e: $ff
	ld   [hl], d                                     ; $645f: $72
	ld   e, l                                        ; $6460: $5d
	and  h                                           ; $6461: $a4
	add  hl, hl                                      ; $6462: $29
	sub  c                                           ; $6463: $91
	ld   de, $f1ff                                   ; $6464: $11 $ff $f1
	cp   a                                           ; $6467: $bf
	sbc  $11                                         ; $6468: $de $11
	rra                                              ; $646a: $1f
	and  c                                           ; $646b: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $646c: $cf
	rst  $38                                         ; $646d: $ff
	ld   h, c                                        ; $646e: $61
	inc  a                                           ; $646f: $3c
	or   l                                           ; $6470: $b5
	jr   jr_0f6_6404                                 ; $6471: $18 $91

	ld   de, $f1ff                                   ; $6473: $11 $ff $f1
	sbc  a                                           ; $6476: $9f
	adc  $01                                         ; $6477: $ce $01
	rra                                              ; $6479: $1f
	pop  bc                                          ; $647a: $c1
	cp   a                                           ; $647b: $bf
	rst  $38                                         ; $647c: $ff
	ld   h, c                                        ; $647d: $61
	dec  a                                           ; $647e: $3d
	add  $17                                         ; $647f: $c6 $17
	sub  c                                           ; $6481: $91
	ld   de, $f1ff                                   ; $6482: $11 $ff $f1
	sbc  a                                           ; $6485: $9f
	adc  $11                                         ; $6486: $ce $11
	rra                                              ; $6488: $1f
	pop  bc                                          ; $6489: $c1
	rst  JumpTable                                         ; $648a: $df

jr_0f6_648b:
	rst  $38                                         ; $648b: $ff
	ld   b, c                                        ; $648c: $41
	dec  l                                           ; $648d: $2d
	rst  ToBoot                                         ; $648e: $c7
	daa                                              ; $648f: $27
	ld   [hl], c                                     ; $6490: $71
	ld   de, $f1ff                                   ; $6491: $11 $ff $f1
	cp   [hl]                                        ; $6494: $be
	cp   l                                           ; $6495: $bd
	ld   de, $a12f                                   ; $6496: $11 $2f $a1
	rst  $38                                         ; $6499: $ff
	rst  $38                                         ; $649a: $ff
	ld   sp, $c73e                                   ; $649b: $31 $3e $c7
	jr   z, @+$43                                    ; $649e: $28 $41

	ld   de, $81ff                                   ; $64a0: $11 $ff $81
	call z, HLequNextKanjiQuarterBankOffsetAndKanjiIdx                                    ; $64a3: $cc $cc $11
	adc  a                                           ; $64a6: $8f
	add  h                                           ; $64a7: $84
	rst  $38                                         ; $64a8: $ff
	ei                                               ; $64a9: $fb
	ld   de, $d66f                                   ; $64aa: $11 $6f $d6
	add  hl, hl                                      ; $64ad: $29
	ld   de, $ff1a                                   ; $64ae: $11 $1a $ff
	inc  sp                                          ; $64b1: $33
	db   $db                                         ; $64b2: $db
	and  $11                                         ; $64b3: $e6 $11
	rst  $38                                         ; $64b5: $ff
	ld   c, c                                        ; $64b6: $49
	rst  $38                                         ; $64b7: $ff
	rst  $30                                         ; $64b8: $f7
	ld   de, $c4af                                   ; $64b9: $11 $af $c4
	ld   b, [hl]                                     ; $64bc: $46
	ld   de, $ff1f                                   ; $64bd: $11 $1f $ff
	jr   jr_0f6_648b                                 ; $64c0: $18 $c9

	pop  hl                                          ; $64c2: $e1
	ld   [de], a                                     ; $64c3: $12
	db   $fd                                         ; $64c4: $fd
	ld   c, a                                        ; $64c5: $4f
	rst  $38                                         ; $64c6: $ff
	ldh  [c], a                                      ; $64c7: $e2

Call_0f6_64c8:
	ld   [de], a                                     ; $64c8: $12
	rst  $38                                         ; $64c9: $ff
	or   d                                           ; $64ca: $b2
	ld   d, c                                        ; $64cb: $51
	ld   de, $f65f                                   ; $64cc: $11 $5f $f6
	dec  sp                                          ; $64cf: $3b
	adc  l                                           ; $64d0: $8d
	add  c                                           ; $64d1: $81
	ld   e, $f7                                      ; $64d2: $1e $f7
	adc  a                                           ; $64d4: $8f
	rst  $38                                         ; $64d5: $ff
	ld   h, c                                        ; $64d6: $61
	ld   a, [de]                                     ; $64d7: $1a
	rst  $38                                         ; $64d8: $ff
	ld   b, d                                        ; $64d9: $42
	ld   sp, rAUD1LEN                                   ; $64da: $31 $11 $ff
	jp   nz, $ae98                                   ; $64dd: $c2 $98 $ae

	ld   de, $c68f                                   ; $64e0: $11 $8f $c6
	rst  $38                                         ; $64e3: $ff
	ld   a, [$6f11]                                  ; $64e4: $fa $11 $6f
	ld   sp, hl                                      ; $64e7: $f9
	ld   [de], a                                     ; $64e8: $12
	ld   de, $ff1f                                   ; $64e9: $11 $1f $ff
	scf                                              ; $64ec: $37
	sub  [hl]                                        ; $64ed: $96
	pop  hl                                          ; $64ee: $e1
	inc  de                                          ; $64ef: $13
	rst  $38                                         ; $64f0: $ff
	ld   a, [hl]                                     ; $64f1: $7e
	rst  $38                                         ; $64f2: $ff
	jp   nc, rAUD1HIGH                                   ; $64f3: $d2 $14 $ff

	pop  bc                                          ; $64f6: $c1
	ld   de, rAUD1LEN                                   ; $64f7: $11 $11 $ff
	db   $f4                                         ; $64fa: $f4
	adc  c                                           ; $64fb: $89
	ld   c, l                                        ; $64fc: $4d
	ld   de, $f82f                                   ; $64fd: $11 $2f $f8
	rst  $28                                         ; $6500: $ef
	db   $fc                                         ; $6501: $fc
	ld   sp, $fe3f                                   ; $6502: $31 $3f $fe
	ld   de, $1f11                                   ; $6505: $11 $11 $1f
	rst  $38                                         ; $6508: $ff
	ld   e, b                                        ; $6509: $58
	add  h                                           ; $650a: $84
	or   c                                           ; $650b: $b1
	inc  d                                           ; $650c: $14
	rst  $38                                         ; $650d: $ff
	adc  a                                           ; $650e: $8f
	rst  $38                                         ; $650f: $ff
	and  d                                           ; $6510: $a2
	dec  d                                           ; $6511: $15
	rst  $38                                         ; $6512: $ff
	pop  de                                          ; $6513: $d1
	ld   de, rAUD1LEN                                   ; $6514: $11 $11 $ff
	push bc                                          ; $6517: $c5
	add  [hl]                                        ; $6518: $86
	ld   c, e                                        ; $6519: $4b
	ld   de, $e9bf                                   ; $651a: $11 $bf $e9
	rst  $38                                         ; $651d: $ff
	rst  $30                                         ; $651e: $f7
	ld   de, $fa9f                                   ; $651f: $11 $9f $fa
	ld   de, $4f11                                   ; $6522: $11 $11 $4f
	rst  $30                                         ; $6525: $f7
	ld   a, b                                        ; $6526: $78
	ld   [hl], $91                                   ; $6527: $36 $91
	rra                                              ; $6529: $1f
	ei                                               ; $652a: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $652b: $cf
	cp   $31                                         ; $652c: $fe $31
	rra                                              ; $652e: $1f
	rst  $38                                         ; $652f: $ff
	ld   b, c                                        ; $6530: $41
	ld   de, $ff1f                                   ; $6531: $11 $1f $ff
	ld   l, d                                        ; $6534: $6a
	ld   d, d                                        ; $6535: $52
	and  c                                           ; $6536: $a1
	jr   @+$01                                       ; $6537: $18 $ff

	xor  a                                           ; $6539: $af
	cp   $a1                                         ; $653a: $fe $a1
	rla                                              ; $653c: $17
	rst  $38                                         ; $653d: $ff
	or   c                                           ; $653e: $b1
	ld   de, $ff17                                   ; $653f: $11 $17 $ff
	ld   l, d                                        ; $6542: $6a
	add  d                                           ; $6543: $82
	ld   h, a                                        ; $6544: $67
	ld   de, $bdff                                   ; $6545: $11 $ff $bd
	cp   $b3                                         ; $6548: $fe $b3
	ld   de, $f2ff                                   ; $654a: $11 $ff $f2
	ld   de, rAUD1LEN                                   ; $654d: $11 $11 $ff
	sbc  b                                           ; $6550: $98
	or   e                                           ; $6551: $b3
	add  hl, sp                                      ; $6552: $39
	ld   de, $faff                                   ; $6553: $11 $ff $fa
	cp   $d4                                         ; $6556: $fe $d4
	ld   de, $f3ff                                   ; $6558: $11 $ff $f3
	ld   de, rAUD1LEN                                   ; $655b: $11 $11 $ff
	or   [hl]                                        ; $655e: $b6
	jp   nz, $1128                                   ; $655f: $c2 $28 $11

	rst  $38                                         ; $6562: $ff
	db   $fc                                         ; $6563: $fc
	db   $fd                                         ; $6564: $fd
	push bc                                          ; $6565: $c5
	ld   de, $f4ef                                   ; $6566: $11 $ef $f4
	ld   de, rAUD1LEN                                   ; $6569: $11 $11 $ff
	and  l                                           ; $656c: $a5
	jp   nz, $1138                                   ; $656d: $c2 $38 $11

	rst  $38                                         ; $6570: $ff
	ei                                               ; $6571: $fb
	db   $fd                                         ; $6572: $fd
	or   l                                           ; $6573: $b5
	ld   [de], a                                     ; $6574: $12
	rst  $38                                         ; $6575: $ff
	pop  af                                          ; $6576: $f1
	ld   de, rAUD1LEN                                   ; $6577: $11 $11 $ff
	ld   h, a                                        ; $657a: $67
	pop  bc                                          ; $657b: $c1
	ld   c, b                                        ; $657c: $48
	ld   de, $edff                                   ; $657d: $11 $ff $ed
	ei                                               ; $6580: $fb
	or   h                                           ; $6581: $b4
	inc  d                                           ; $6582: $14
	rst  $38                                         ; $6583: $ff
	pop  bc                                          ; $6584: $c1
	ld   de, $ff1f                                   ; $6585: $11 $1f $ff
	ld   a, [de]                                     ; $6588: $1a
	and  c                                           ; $6589: $a1
	ld   [hl], e                                     ; $658a: $73
	ld   [de], a                                     ; $658b: $12
	rst  $38                                         ; $658c: $ff
	xor  [hl]                                        ; $658d: $ae
	db   $db                                         ; $658e: $db
	add  d                                           ; $658f: $82
	ld   a, [hl+]                                    ; $6590: $2a
	rst  $38                                         ; $6591: $ff
	ld   h, c                                        ; $6592: $61
	ld   de, $fa1f                                   ; $6593: $11 $1f $fa
	inc  e                                           ; $6596: $1c
	ld   b, c                                        ; $6597: $41
	and  c                                           ; $6598: $a1
	rra                                              ; $6599: $1f
	rst  $38                                         ; $659a: $ff
	xor  a                                           ; $659b: $af
	xor  d                                           ; $659c: $aa
	ld   d, c                                        ; $659d: $51
	ld   l, a                                        ; $659e: $6f
	db   $fc                                         ; $659f: $fc
	ld   de, rAUD1LEN                                   ; $65a0: $11 $11 $ff
	pop  af                                          ; $65a3: $f1
	adc  c                                           ; $65a4: $89
	add  hl, de                                      ; $65a5: $19
	ld   sp, $f85f                                   ; $65a6: $31 $5f $f8

Call_0f6_65a9:
	jp   c, $2488                                    ; $65a9: $da $88 $24

	rst  JumpTable                                         ; $65ac: $df
	ldh  a, [c]                                      ; $65ad: $f2
	ld   de, $ff1a                                   ; $65ae: $11 $1a $ff
	inc  d                                           ; $65b1: $14
	and  c                                           ; $65b2: $a1
	ld   d, a                                        ; $65b3: $57
	ld   de, $acff                                   ; $65b4: $11 $ff $ac
	ret  z                                           ; $65b7: $c8

	add  d                                           ; $65b8: $82
	dec  hl                                          ; $65b9: $2b
	rst  $38                                         ; $65ba: $ff
	ld   b, c                                        ; $65bb: $41
	ld   de, $f15f                                   ; $65bc: $11 $5f $f1
	inc  a                                           ; $65bf: $3c
	inc  d                                           ; $65c0: $14
	add  c                                           ; $65c1: $81
	rra                                              ; $65c2: $1f
	ld   sp, hl                                      ; $65c3: $f9
	cp   h                                           ; $65c4: $bc
	adc  b                                           ; $65c5: $88
	ld   [hl+], a                                    ; $65c6: $22
	xor  a                                           ; $65c7: $af
	push af                                          ; $65c8: $f5
	ld   de, $ff1b                                   ; $65c9: $11 $1b $ff
	ld   [de], a                                     ; $65cc: $12
	or   c                                           ; $65cd: $b1
	ld   b, [hl]                                     ; $65ce: $46
	inc  de                                          ; $65cf: $13
	rst  $38                                         ; $65d0: $ff
	adc  d                                           ; $65d1: $8a
	xor  b                                           ; $65d2: $a8
	add  d                                           ; $65d3: $82
	dec  hl                                          ; $65d4: $2b
	rst  $38                                         ; $65d5: $ff
	ld   hl, rAUD1LEN                                   ; $65d6: $21 $11 $ff
	pop  af                                          ; $65d9: $f1
	ld   c, d                                        ; $65da: $4a
	rla                                              ; $65db: $17
	ld   de, $f6bf                                   ; $65dc: $11 $bf $f6
	cp   b                                           ; $65df: $b8
	sbc  b                                           ; $65e0: $98
	inc  hl                                          ; $65e1: $23
	rst  JumpTable                                         ; $65e2: $df
	pop  de                                          ; $65e3: $d1
	ld   de, $f51f                                   ; $65e4: $11 $1f $f5
	rla                                              ; $65e7: $17
	ld   h, e                                        ; $65e8: $63
	add  c                                           ; $65e9: $81
	rra                                              ; $65ea: $1f
	cp   $69                                         ; $65eb: $fe $69
	ld   l, e                                        ; $65ed: $6b
	ld   d, d                                        ; $65ee: $52
	ld   l, a                                        ; $65ef: $6f
	or   $11                                         ; $65f0: $f6 $11
	rra                                              ; $65f2: $1f
	rst  $38                                         ; $65f3: $ff
	ld   [de], a                                     ; $65f4: $12
	ld   [hl], h                                     ; $65f5: $74
	add  c                                           ; $65f6: $81
	ld   a, [de]                                     ; $65f7: $1a
	rst  $38                                         ; $65f8: $ff
	ld   a, c                                        ; $65f9: $79
	ld   a, c                                        ; $65fa: $79
	sub  e                                           ; $65fb: $93
	dec  a                                           ; $65fc: $3d
	ei                                               ; $65fd: $fb
	ld   de, $ff1b                                   ; $65fe: $11 $1b $ff
	ld   de, $7565                                   ; $6601: $11 $65 $75
	inc  de                                          ; $6604: $13
	rst  $38                                         ; $6605: $ff
	sub  [hl]                                        ; $6606: $96
	ld   [hl], a                                     ; $6607: $77
	and  l                                           ; $6608: $a5
	ld   c, d                                        ; $6609: $4a
	cp   $11                                         ; $660a: $fe $11
	dec  d                                           ; $660c: $15
	rst  $38                                         ; $660d: $ff
	ld   de, $8755                                   ; $660e: $11 $55 $87
	ld   de, $c5ff                                   ; $6611: $11 $ff $c5
	ld   [hl], a                                     ; $6614: $77
	or   [hl]                                        ; $6615: $b6
	add  hl, sp                                      ; $6616: $39
	cp   $11                                         ; $6617: $fe $11
	rla                                              ; $6619: $17
	rst  $38                                         ; $661a: $ff
	ld   de, $9735                                   ; $661b: $11 $35 $97
	ld   de, $c5ff                                   ; $661e: $11 $ff $c5
	ld   d, [hl]                                     ; $6621: $56
	or   a                                           ; $6622: $b7
	ld   c, c                                        ; $6623: $49
	ld   a, [$1e11]                                  ; $6624: $fa $11 $1e
	rst  $38                                         ; $6627: $ff
	ld   de, $b623                                   ; $6628: $11 $23 $b6
	ld   d, $ff                                      ; $662b: $16 $ff
	and  l                                           ; $662d: $a5
	ld   d, a                                        ; $662e: $57
	or   [hl]                                        ; $662f: $b6
	ld   l, e                                        ; $6630: $6b
	or   $11                                         ; $6631: $f6 $11
	rra                                              ; $6633: $1f
	rst  $38                                         ; $6634: $ff
	ld   de, $c116                                   ; $6635: $11 $16 $c1
	rra                                              ; $6638: $1f
	rst  $38                                         ; $6639: $ff
	ld   h, h                                        ; $663a: $64
	ld   c, d                                        ; $663b: $4a
	add  $6e                                         ; $663c: $c6 $6e
	pop  bc                                          ; $663e: $c1
	ld   de, $f19f                                   ; $663f: $11 $9f $f1
	ld   de, $811b                                   ; $6642: $11 $1b $81
	ccf                                              ; $6645: $3f
	ei                                               ; $6646: $fb
	ld   d, d                                        ; $6647: $52
	ld   l, h                                        ; $6648: $6c
	and  [hl]                                        ; $6649: $a6
	xor  a                                           ; $664a: $af
	ld   b, c                                        ; $664b: $41
	ld   de, $b1ff                                   ; $664c: $11 $ff $b1
	ld   de, $118c                                   ; $664f: $11 $8c $11
	rst  $38                                         ; $6652: $ff
	or   $23                                         ; $6653: $f6 $23
	res  1, b                                        ; $6655: $cb $88
	and  $11                                         ; $6657: $e6 $11
	rra                                              ; $6659: $1f
	rst  $38                                         ; $665a: $ff
	ld   de, $e115                                   ; $665b: $11 $15 $e1
	rra                                              ; $665e: $1f
	rst  $38                                         ; $665f: $ff
	ld   [hl], d                                     ; $6660: $72
	add  hl, de                                      ; $6661: $19
	jp   z, $818f                                    ; $6662: $ca $8f $81

Jump_0f6_6665:
	ld   de, $f1ff                                   ; $6665: $11 $ff $f1
	ld   de, $114c                                   ; $6668: $11 $4c $11
	rst  $38                                         ; $666b: $ff
	or   $11                                         ; $666c: $f6 $11
	sbc  h                                           ; $666e: $9c
	sbc  d                                           ; $666f: $9a
	add  sp, $11                                     ; $6670: $e8 $11
	rra                                              ; $6672: $1f
	cp   $11                                         ; $6673: $fe $11
	rla                                              ; $6675: $17

Jump_0f6_6676:
	pop  bc                                          ; $6676: $c1
	rra                                              ; $6677: $1f
	rst  $38                                         ; $6678: $ff
	ld   h, c                                        ; $6679: $61
	dec  de                                          ; $667a: $1b
	ret  z                                           ; $667b: $c8

	sbc  [hl]                                        ; $667c: $9e
	ld   d, c                                        ; $667d: $51
	ld   [de], a                                     ; $667e: $12
	rst  $38                                         ; $667f: $ff
	ld   h, c                                        ; $6680: $61
	ld   de, $13d9                                   ; $6681: $11 $d9 $13
	rst  $38                                         ; $6684: $ff
	push bc                                          ; $6685: $c5
	inc  de                                          ; $6686: $13
	call z, $c169                                    ; $6687: $cc $69 $c1
	ld   de, $f1ff                                   ; $668a: $11 $ff $f1
	ld   de, $112f                                   ; $668d: $11 $2f $11
	rst  $38                                         ; $6690: $ff
	ld   sp, hl                                      ; $6691: $f9
	ld   de, $a69d                                   ; $6692: $11 $9d $a6
	or   h                                           ; $6695: $b4
	ld   de, $f66f                                   ; $6696: $11 $6f $f6

Jump_0f6_6699:
	ld   de, $911d                                   ; $6699: $11 $1d $91
	adc  a                                           ; $669c: $8f
	db   $fc                                         ; $669d: $fc
	ld   h, c                                        ; $669e: $61
	ld   a, $d7                                      ; $669f: $3e $d7
	xor  b                                           ; $66a1: $a8
	ld   de, $fa1f                                   ; $66a2: $11 $1f $fa
	ld   de, $d119                                   ; $66a5: $11 $19 $d1

Call_0f6_66a8:
	ccf                                              ; $66a8: $3f
	db   $fd                                         ; $66a9: $fd
	ld   [hl], c                                     ; $66aa: $71
	inc  e                                           ; $66ab: $1c
	ret  c                                           ; $66ac: $d8

	sbc  c                                           ; $66ad: $99
	ld   de, $f81f                                   ; $66ae: $11 $1f $f8
	ld   hl, $c117                                   ; $66b1: $21 $17 $c1
	ccf                                              ; $66b4: $3f
	cp   $81                                         ; $66b5: $fe $81
	inc  e                                           ; $66b7: $1c
	or   a                                           ; $66b8: $b7
	xor  b                                           ; $66b9: $a8
	ld   de, $f51f                                   ; $66ba: $11 $1f $f5
	ld   hl, $a119                                   ; $66bd: $21 $19 $a1
	ld   e, a                                        ; $66c0: $5f
	db   $fc                                         ; $66c1: $fc
	add  c                                           ; $66c2: $81
	ld   e, $b6                                      ; $66c3: $1e $b6
	sub  a                                           ; $66c5: $97
	ld   de, $f2af                                   ; $66c6: $11 $af $f2
	ld   hl, $811d                                   ; $66c9: $21 $1d $81
	xor  a                                           ; $66cc: $af
	ei                                               ; $66cd: $fb
	ld   [hl], c                                     ; $66ce: $71
	ld   c, a                                        ; $66cf: $4f
	sub  l                                           ; $66d0: $95
	sub  d                                           ; $66d1: $92
	ld   de, $d1ff                                   ; $66d2: $11 $ff $d1
	ld   sp, $112f                                   ; $66d5: $31 $2f $11
	rst  $38                                         ; $66d8: $ff
	ld   hl, sp+$31                                  ; $66d9: $f8 $31
	cp   a                                           ; $66db: $bf
	halt                                             ; $66dc: $76
	add  c                                           ; $66dd: $81
	inc  de                                          ; $66de: $13
	rst  $38                                         ; $66df: $ff
	inc  hl                                          ; $66e0: $23
	ld   de, $16bb                                   ; $66e1: $11 $bb $16
	rst  $38                                         ; $66e4: $ff
	and  a                                           ; $66e5: $a7
	inc  de                                          ; $66e6: $13
	db   $fc                                         ; $66e7: $fc
	ld   h, a                                        ; $66e8: $67
	ld   de, $fb1f                                   ; $66e9: $11 $1f $fb
	inc  de                                          ; $66ec: $13
	inc  d                                           ; $66ed: $14
	pop  af                                          ; $66ee: $f1
	rra                                              ; $66ef: $1f
	db   $fd                                         ; $66f0: $fd
	ld   [hl], c                                     ; $66f1: $71
	inc  e                                           ; $66f2: $1c
	rst  $30                                         ; $66f3: $f7
	ld   [hl], l                                     ; $66f4: $75
	ld   de, $f1ff                                   ; $66f5: $11 $ff $f1
	ld   d, c                                        ; $66f8: $51
	rra                                              ; $66f9: $1f
	ld   d, c                                        ; $66fa: $51
	rst  $38                                         ; $66fb: $ff
	rst  $30                                         ; $66fc: $f7
	ld   sp, $a79f                                   ; $66fd: $31 $9f $a7
	ld   h, c                                        ; $6700: $61
	dec  de                                          ; $6701: $1b
	rst  $38                                         ; $6702: $ff
	inc  de                                          ; $6703: $13
	ld   bc, $1aea                                   ; $6704: $01 $ea $1a
	rst  $38                                         ; $6707: $ff
	ld   [hl], e                                     ; $6708: $73
	ld   d, $fc                                      ; $6709: $16 $fc
	ld   a, c                                        ; $670b: $79
	ld   de, $f12f                                   ; $670c: $11 $2f $f1
	ld   [hl+], a                                    ; $670f: $22
	inc  e                                           ; $6710: $1c
	or   c                                           ; $6711: $b1
	ld   a, a                                        ; $6712: $7f
	ld   hl, sp+$51                                  ; $6713: $f8 $51
	ld   c, a                                        ; $6715: $4f
	ret                                              ; $6716: $c9


	add  c                                           ; $6717: $81
	ld   de, $11ff                                   ; $6718: $11 $ff $11
	ld   hl, $15cc                                   ; $671b: $21 $cc $15
	rst  $38                                         ; $671e: $ff
	add  l                                           ; $671f: $85
	inc  d                                           ; $6720: $14
	db   $fc                                         ; $6721: $fc
	sbc  c                                           ; $6722: $99
	ld   de, $f12f                                   ; $6723: $11 $2f $f1
	ld   de, $c11d                                   ; $6726: $11 $1d $c1
	adc  a                                           ; $6729: $8f
	or   $41                                         ; $672a: $f6 $41
	ld   e, a                                        ; $672c: $5f
	ret  z                                           ; $672d: $c8

	sub  c                                           ; $672e: $91
	ld   a, [de]                                     ; $672f: $1a
	rst  $38                                         ; $6730: $ff
	ld   de, $fa11                                   ; $6731: $11 $11 $fa
	inc  e                                           ; $6734: $1c
	rst  $38                                         ; $6735: $ff
	ld   d, e                                        ; $6736: $53
	rla                                              ; $6737: $17
	ei                                               ; $6738: $fb
	adc  b                                           ; $6739: $88
	ld   de, $f1ff                                   ; $673a: $11 $ff $f1
	ld   sp, $511f                                   ; $673d: $31 $1f $51
	rst  $38                                         ; $6740: $ff
	call nz, $af31                                   ; $6741: $c4 $31 $af
	cp   c                                           ; $6744: $b9
	ld   b, c                                        ; $6745: $41
	rra                                              ; $6746: $1f
	push af                                          ; $6747: $f5
	inc  de                                          ; $6748: $13
	rla                                              ; $6749: $17
	pop  af                                          ; $674a: $f1
	cpl                                              ; $674b: $2f
	or   $31                                         ; $674c: $f6 $31
	dec  l                                           ; $674e: $2d
	ld   [$1491], a                                  ; $674f: $ea $91 $14
	rst  $38                                         ; $6752: $ff
	inc  de                                          ; $6753: $13
	ld   de, $1dfb                                   ; $6754: $11 $fb $1d
	rst  $38                                         ; $6757: $ff
	ld   [hl+], a                                    ; $6758: $22
	jr   @-$03                                       ; $6759: $18 $fb

	and  [hl]                                        ; $675b: $a6
	ld   de, $41ff                                   ; $675c: $11 $ff $41
	ld   h, c                                        ; $675f: $61
	ld   c, a                                        ; $6760: $4f
	ld   de, $52ff                                   ; $6761: $11 $ff $52
	ld   de, $a9dd                                   ; $6764: $11 $dd $a9
	ld   de, $f1af                                   ; $6767: $11 $af $f1
	ld   [hl-], a                                    ; $676a: $32
	rra                                              ; $676b: $1f
	pop  bc                                          ; $676c: $c1
	rst  $38                                         ; $676d: $ff
	pop  hl                                          ; $676e: $e1
	ld   sp, $aa8f                                   ; $676f: $31 $8f $aa
	ld   d, c                                        ; $6772: $51
	rra                                              ; $6773: $1f
	pop  af                                          ; $6774: $f1
	inc  d                                           ; $6775: $14
	rla                                              ; $6776: $17
	pop  af                                          ; $6777: $f1
	ld   e, a                                        ; $6778: $5f
	ldh  a, [c]                                      ; $6779: $f2
	ld   de, $c94e                                   ; $677a: $11 $4e $c9
	ld   [hl], c                                     ; $677d: $71
	rra                                              ; $677e: $1f
	db   $fc                                         ; $677f: $fc
	inc  de                                          ; $6780: $13
	ld   de, $1ff6                                   ; $6781: $11 $f6 $1f
	ld   sp, hl                                      ; $6784: $f9
	ld   de, $d91d                                   ; $6785: $11 $1d $d9
	and  c                                           ; $6788: $a1
	ld   de, $11ff                                   ; $6789: $11 $ff $11
	ld   hl, $1cdf                                   ; $678c: $21 $df $1c
	rst  $38                                         ; $678f: $ff
	ld   de, $fb17                                   ; $6790: $11 $17 $fb
	sub  [hl]                                        ; $6793: $96
	ld   de, $21ff                                   ; $6794: $11 $ff $21
	ld   h, c                                        ; $6797: $61
	ccf                                              ; $6798: $3f
	inc  hl                                          ; $6799: $23
	rst  $38                                         ; $679a: $ff
	ld   hl, $fe12                                   ; $679b: $21 $12 $fe
	ld   a, d                                        ; $679e: $7a
	ld   de, $f1af                                   ; $679f: $11 $af $f1
	ld   b, d                                        ; $67a2: $42
	rra                                              ; $67a3: $1f
	or   c                                           ; $67a4: $b1
	rst  $38                                         ; $67a5: $ff
	pop  bc                                          ; $67a6: $c1
	ld   hl, $b99f                                   ; $67a7: $21 $9f $b9
	ld   d, c                                        ; $67aa: $51
	rra                                              ; $67ab: $1f
	pop  af                                          ; $67ac: $f1
	ld   d, $16                                      ; $67ad: $16 $16
	pop  af                                          ; $67af: $f1
	ld   l, a                                        ; $67b0: $6f
	pop  af                                          ; $67b1: $f1
	ld   de, $d83f                                   ; $67b2: $11 $3f $d8
	sub  c                                           ; $67b5: $91

Call_0f6_67b6:
	inc  e                                           ; $67b6: $1c
	rst  $38                                         ; $67b7: $ff
	inc  d                                           ; $67b8: $14
	ld   bc, $1ffb                                   ; $67b9: $01 $fb $1f
	ld   sp, hl                                      ; $67bc: $f9
	inc  de                                          ; $67bd: $13
	ld   a, [de]                                     ; $67be: $1a
	ld   a, [$1196]                                  ; $67bf: $fa $96 $11
	rst  $38                                         ; $67c2: $ff
	ld   de, $5f61                                   ; $67c3: $11 $61 $5f
	dec  d                                           ; $67c6: $15
	rst  $38                                         ; $67c7: $ff
	ld   de, $fe23                                   ; $67c8: $11 $23 $fe
	adc  e                                           ; $67cb: $8b
	ld   de, $f12f                                   ; $67cc: $11 $2f $f1
	ld   [hl+], a                                    ; $67cf: $22
	rra                                              ; $67d0: $1f
	pop  bc                                          ; $67d1: $c1
	rst  $38                                         ; $67d2: $ff
	pop  hl                                          ; $67d3: $e1
	ld   de, $989f                                   ; $67d4: $11 $9f $98
	and  c                                           ; $67d7: $a1
	rra                                              ; $67d8: $1f
	db   $fc                                         ; $67d9: $fc
	dec  d                                           ; $67da: $15
	ld   de, $1ff3                                   ; $67db: $11 $f3 $1f
	db   $f4                                         ; $67de: $f4
	ld   [de], a                                     ; $67df: $12
	ld   l, $f6                                      ; $67e0: $2e $f6
	xor  b                                           ; $67e2: $a8
	ld   de, $11ff                                   ; $67e3: $11 $ff $11
	ld   d, c                                        ; $67e6: $51
	ld   a, a                                        ; $67e7: $7f
	ld   d, $ff                                      ; $67e8: $16 $ff
	ld   de, $fd25                                   ; $67ea: $11 $25 $fd
	ld   l, c                                        ; $67ed: $69
	ld   de, $f11f                                   ; $67ee: $11 $1f $f1
	ld   de, $f11f                                   ; $67f1: $11 $1f $f1
	rst  $28                                         ; $67f4: $ef
	pop  hl                                          ; $67f5: $e1
	inc  hl                                          ; $67f6: $23
	sbc  a                                           ; $67f7: $9f
	cp   b                                           ; $67f8: $b8
	pop  bc                                          ; $67f9: $c1
	inc  de                                          ; $67fa: $13
	rst  $38                                         ; $67fb: $ff
	inc  de                                          ; $67fc: $13
	ld   de, $1ff6                                   ; $67fd: $11 $f6 $1f
	cp   $32                                         ; $6800: $fe $32
	dec  sp                                          ; $6802: $3b
	call nz, Call_0f6_71af                           ; $6803: $c4 $af $71
	ld   e, $ff                                      ; $6806: $1e $ff
	ld   de, $f227                                   ; $6808: $11 $27 $f2
	rra                                              ; $680b: $1f
	db   $fc                                         ; $680c: $fc
	inc  de                                          ; $680d: $13
	ld   a, l                                        ; $680e: $7d
	sub  d                                           ; $680f: $92
	sbc  h                                           ; $6810: $9c
	ld   de, $f16f                                   ; $6811: $11 $6f $f1
	ld   de, $911e                                   ; $6814: $11 $1e $91
	rst  $38                                         ; $6817: $ff
	pop  de                                          ; $6818: $d1
	ld   de, $9e9f                                   ; $6819: $11 $9f $9e
	pop  af                                          ; $681c: $f1
	ld   de, $51ff                                   ; $681d: $11 $ff $51
	ld   b, h                                        ; $6820: $44
	ld   [$ff19], a                                  ; $6821: $ea $19 $ff
	ld   [hl+], a                                    ; $6824: $22
	ld   l, e                                        ; $6825: $6b
	and  $7f                                         ; $6826: $e6 $7f
	ld   b, c                                        ; $6828: $41
	dec  de                                          ; $6829: $1b
	rst  $38                                         ; $682a: $ff
	ld   de, $7234                                   ; $682b: $11 $34 $72
	ccf                                              ; $682e: $3f
	cp   $11                                         ; $682f: $fe $11
	ld   l, h                                        ; $6831: $6c
	and  a                                           ; $6832: $a7
	db   $eb                                         ; $6833: $eb
	ld   de, $ff1d                                   ; $6834: $11 $1d $ff
	ld   d, $76                                      ; $6837: $16 $76
	ld   h, c                                        ; $6839: $61
	ld   l, a                                        ; $683a: $6f
	or   $15                                         ; $683b: $f6 $15
	adc  h                                           ; $683d: $8c
	and  l                                           ; $683e: $a5
	xor  b                                           ; $683f: $a8
	ld   de, $fc1f                                   ; $6840: $11 $1f $fc
	ld   de, $b439                                   ; $6843: $11 $39 $b4
	xor  a                                           ; $6846: $af
	ldh  a, [c]                                      ; $6847: $f2
	ld   [de], a                                     ; $6848: $12
	sbc  l                                           ; $6849: $9d
	xor  b                                           ; $684a: $a8
	and  e                                           ; $684b: $a3
	ld   de, $f83f                                   ; $684c: $11 $3f $f8
	ld   de, $ca57                                   ; $684f: $11 $57 $ca
	cp   a                                           ; $6852: $bf
	db   $f4                                         ; $6853: $f4
	dec  d                                           ; $6854: $15
	ld   a, d                                        ; $6855: $7a
	and  a                                           ; $6856: $a7
	add  l                                           ; $6857: $85
	ld   hl, $ff19                                   ; $6858: $21 $19 $ff
	ld   de, $8b76                                   ; $685b: $11 $76 $8b
	rst  JumpTable                                         ; $685e: $df
	push af                                          ; $685f: $f5
	ld   d, a                                        ; $6860: $57
	ld   d, [hl]                                     ; $6861: $56
	add  [hl]                                        ; $6862: $86
	add  a                                           ; $6863: $87
	ld   hl, $ff16                                   ; $6864: $21 $16 $ff
	ld   hl, $9a26                                   ; $6867: $21 $26 $9a
	sbc  a                                           ; $686a: $9f
	ld   sp, hl                                      ; $686b: $f9
	ld   h, l                                        ; $686c: $65
	ld   e, b                                        ; $686d: $58
	sub  h                                           ; $686e: $94
	ld   d, a                                        ; $686f: $57
	ld   [hl-], a                                    ; $6870: $32
	ld   sp, $d1ff                                   ; $6871: $31 $ff $d1

Call_0f6_6874:
	inc  hl                                          ; $6874: $23
	ld   a, [hl-]                                    ; $6875: $3a
	xor  l                                           ; $6876: $ad
	cp   $75                                         ; $6877: $fe $75
	ld   h, l                                        ; $6879: $65
	sbc  d                                           ; $687a: $9a
	add  a                                           ; $687b: $87
	ld   b, c                                        ; $687c: $41
	ld   de, $fa5f                                   ; $687d: $11 $5f $fa
	ld   de, $ab37                                   ; $6880: $11 $37 $ab
	rst  $38                                         ; $6883: $ff
	or   l                                           ; $6884: $b5
	ld   b, a                                        ; $6885: $47
	adc  c                                           ; $6886: $89
	sbc  e                                           ; $6887: $9b
	sub  e                                           ; $6888: $93
	inc  sp                                          ; $6889: $33
	ld   b, d                                        ; $688a: $42
	ld   c, a                                        ; $688b: $4f
	ld   hl, sp+$23                                  ; $688c: $f8 $23
	ld   [hl], $ff                                   ; $688e: $36 $ff
	cp   d                                           ; $6890: $ba
	sub  l                                           ; $6891: $95
	ld   d, [hl]                                     ; $6892: $56
	ld   l, c                                        ; $6893: $69
	add  a                                           ; $6894: $87
	sub  a                                           ; $6895: $97

Call_0f6_6896:
	ld   h, e                                        ; $6896: $63
	ld   hl, $f37f                                   ; $6897: $21 $7f $f3
	inc  hl                                          ; $689a: $23
	jr   z, @-$32                                    ; $689b: $28 $cc

	cp   $82                                         ; $689d: $fe $82
	ld   b, a                                        ; $689f: $47
	xor  c                                           ; $68a0: $a9
	ld   l, b                                        ; $68a1: $68
	add  [hl]                                        ; $68a2: $86
	ld   b, [hl]                                     ; $68a3: $46
	ld   d, c                                        ; $68a4: $51
	rra                                              ; $68a5: $1f
	db   $fc                                         ; $68a6: $fc
	ld   d, h                                        ; $68a7: $54
	daa                                              ; $68a8: $27
	db   $db                                         ; $68a9: $db
	db   $dd                                         ; $68aa: $dd
	ld   d, l                                        ; $68ab: $55
	ld   d, [hl]                                     ; $68ac: $56
	ld   a, e                                        ; $68ad: $7b
	adc  b                                           ; $68ae: $88
	sub  a                                           ; $68af: $97
	add  a                                           ; $68b0: $87
	ld   d, e                                        ; $68b1: $53
	inc  d                                           ; $68b2: $14
	rst  $38                                         ; $68b3: $ff
	sbc  b                                           ; $68b4: $98
	ld   h, l                                        ; $68b5: $65
	ld   a, d                                        ; $68b6: $7a
	sbc  h                                           ; $68b7: $9c
	xor  c                                           ; $68b8: $a9
	sub  a                                           ; $68b9: $97
	ld   d, [hl]                                     ; $68ba: $56
	add  a                                           ; $68bb: $87
	sbc  e                                           ; $68bc: $9b
	xor  c                                           ; $68bd: $a9
	ld   h, h                                        ; $68be: $64
	ld   b, d                                        ; $68bf: $42
	dec  de                                          ; $68c0: $1b
	rst  $38                                         ; $68c1: $ff
	sub  h                                           ; $68c2: $94
	dec  [hl]                                        ; $68c3: $35
	ld   a, c                                        ; $68c4: $79
	call $6697                                       ; $68c5: $cd $97 $66
	ld   a, c                                        ; $68c8: $79
	sbc  b                                           ; $68c9: $98
	sbc  d                                           ; $68ca: $9a
	add  l                                           ; $68cb: $85
	ld   b, [hl]                                     ; $68cc: $46
	adc  d                                           ; $68cd: $8a
	or   l                                           ; $68ce: $b5
	add  hl, de                                      ; $68cf: $19
	ld   sp, hl                                      ; $68d0: $f9
	ld   [hl], a                                     ; $68d1: $77
	ld   d, a                                        ; $68d2: $57
	xor  d                                           ; $68d3: $aa
	cp   d                                           ; $68d4: $ba
	ld   h, l                                        ; $68d5: $65
	ld   l, b                                        ; $68d6: $68
	sbc  b                                           ; $68d7: $98
	sbc  d                                           ; $68d8: $9a
	and  [hl]                                        ; $68d9: $a6
	ld   a, b                                        ; $68da: $78
	ld   h, e                                        ; $68db: $63
	inc  h                                           ; $68dc: $24
	rst  JumpTable                                         ; $68dd: $df
	cp   b                                           ; $68de: $b8
	ld   h, l                                        ; $68df: $65
	ld   a, c                                        ; $68e0: $79
	sbc  e                                           ; $68e1: $9b
	ret                                              ; $68e2: $c9


	ld   [hl], a                                     ; $68e3: $77
	ld   l, b                                        ; $68e4: $68
	sbc  c                                           ; $68e5: $99
	sbc  c                                           ; $68e6: $99
	ld   h, a                                        ; $68e7: $67
	halt                                             ; $68e8: $76
	ld   l, c                                        ; $68e9: $69
	cp   c                                           ; $68ea: $b9
	ld   h, [hl]                                     ; $68eb: $66
	ld   d, h                                        ; $68ec: $54
	cp   [hl]                                        ; $68ed: $be
	and  a                                           ; $68ee: $a7
	ld   h, [hl]                                     ; $68ef: $66
	sbc  d                                           ; $68f0: $9a
	xor  d                                           ; $68f1: $aa
	sub  [hl]                                        ; $68f2: $96
	ld   h, a                                        ; $68f3: $67
	sbc  c                                           ; $68f4: $99
	sbc  b                                           ; $68f5: $98
	add  a                                           ; $68f6: $87
	ld   l, b                                        ; $68f7: $68
	halt                                             ; $68f8: $76
	ld   a, c                                        ; $68f9: $79
	ld   [hl], l                                     ; $68fa: $75
	ld   c, c                                        ; $68fb: $49
	jp   c, $6786                                    ; $68fc: $da $86 $67

	sbc  c                                           ; $68ff: $99
	xor  e                                           ; $6900: $ab
	add  [hl]                                        ; $6901: $86
	ld   h, a                                        ; $6902: $67
	adc  d                                           ; $6903: $8a
	sbc  c                                           ; $6904: $99
	add  [hl]                                        ; $6905: $86
	ld   h, a                                        ; $6906: $67
	ld   [hl], a                                     ; $6907: $77
	sbc  c                                           ; $6908: $99
	and  a                                           ; $6909: $a7
	ld   d, l                                        ; $690a: $55
	ld   a, e                                        ; $690b: $7b
	cp   d                                           ; $690c: $ba
	add  [hl]                                        ; $690d: $86
	ld   a, c                                        ; $690e: $79
	xor  d                                           ; $690f: $aa
	adc  b                                           ; $6910: $88
	sbc  b                                           ; $6911: $98
	sbc  b                                           ; $6912: $98
	sbc  c                                           ; $6913: $99
	ld   [hl], a                                     ; $6914: $77
	ld   h, h                                        ; $6915: $64
	ld   de, $83ff                                   ; $6916: $11 $ff $83
	inc  sp                                          ; $6919: $33
	adc  c                                           ; $691a: $89
	sbc  e                                           ; $691b: $9b
	cp   b                                           ; $691c: $b8
	ld   [hl], a                                     ; $691d: $77
	sbc  e                                           ; $691e: $9b
	jp   z, Jump_0f6_7688                            ; $691f: $ca $88 $76

	ld   a, c                                        ; $6922: $79
	add  a                                           ; $6923: $87
	ld   [hl], a                                     ; $6924: $77
	ld   h, a                                        ; $6925: $67
	sbc  b                                           ; $6926: $98
	adc  c                                           ; $6927: $89
	add  a                                           ; $6928: $87
	adc  c                                           ; $6929: $89
	xor  d                                           ; $692a: $aa
	sbc  b                                           ; $692b: $98
	ld   [hl], a                                     ; $692c: $77
	sbc  d                                           ; $692d: $9a
	sbc  c                                           ; $692e: $99
	sub  a                                           ; $692f: $97
	ld   l, b                                        ; $6930: $68
	adc  c                                           ; $6931: $89
	add  l                                           ; $6932: $85
	ld   [hl-], a                                    ; $6933: $32
	dec  sp                                          ; $6934: $3b
	ld   [$5775], a                                  ; $6935: $ea $75 $57
	xor  h                                           ; $6938: $ac
	jp   z, $7a66                                    ; $6939: $ca $66 $7a

	cp   e                                           ; $693c: $bb
	sub  a                                           ; $693d: $97
	ld   [hl], a                                     ; $693e: $77
	ld   [hl], a                                     ; $693f: $77
	ld   [hl], a                                     ; $6940: $77
	add  a                                           ; $6941: $87
	ld   [hl], a                                     ; $6942: $77
	ld   [hl], a                                     ; $6943: $77
	sbc  b                                           ; $6944: $98
	adc  c                                           ; $6945: $89
	add  a                                           ; $6946: $87
	adc  d                                           ; $6947: $8a
	adc  b                                           ; $6948: $88
	sbc  b                                           ; $6949: $98
	ld   a, b                                        ; $694a: $78
	sbc  c                                           ; $694b: $99
	sbc  c                                           ; $694c: $99
	ld   [hl], a                                     ; $694d: $77
	adc  c                                           ; $694e: $89
	add  a                                           ; $694f: $87
	ld   a, b                                        ; $6950: $78
	ld   [hl], a                                     ; $6951: $77
	ld   [hl], a                                     ; $6952: $77
	ld   [hl], a                                     ; $6953: $77
	ld   h, [hl]                                     ; $6954: $66
	xor  d                                           ; $6955: $aa
	ld   a, b                                        ; $6956: $78
	adc  c                                           ; $6957: $89
	add  a                                           ; $6958: $87
	sbc  d                                           ; $6959: $9a
	xor  c                                           ; $695a: $a9
	ld   [hl], a                                     ; $695b: $77
	sbc  c                                           ; $695c: $99
	sbc  b                                           ; $695d: $98
	sub  a                                           ; $695e: $97
	ld   [hl], a                                     ; $695f: $77
	adc  b                                           ; $6960: $88
	ld   [hl], a                                     ; $6961: $77
	ld   l, b                                        ; $6962: $68
	sbc  b                                           ; $6963: $98
	ld   a, b                                        ; $6964: $78
	adc  b                                           ; $6965: $88
	adc  b                                           ; $6966: $88
	sbc  b                                           ; $6967: $98
	adc  b                                           ; $6968: $88
	add  a                                           ; $6969: $87
	adc  b                                           ; $696a: $88
	adc  b                                           ; $696b: $88
	sbc  b                                           ; $696c: $98
	adc  b                                           ; $696d: $88
	add  a                                           ; $696e: $87
	adc  c                                           ; $696f: $89
	sbc  b                                           ; $6970: $98
	add  a                                           ; $6971: $87
	ld   a, b                                        ; $6972: $78
	adc  b                                           ; $6973: $88
	ld   [hl], a                                     ; $6974: $77
	halt                                             ; $6975: $76
	ld   l, b                                        ; $6976: $68
	xor  c                                           ; $6977: $a9
	halt                                             ; $6978: $76
	ld   a, b                                        ; $6979: $78
	adc  d                                           ; $697a: $8a
	sbc  c                                           ; $697b: $99
	adc  b                                           ; $697c: $88
	adc  c                                           ; $697d: $89
	sbc  c                                           ; $697e: $99
	adc  b                                           ; $697f: $88
	adc  c                                           ; $6980: $89
	adc  b                                           ; $6981: $88
	ld   a, b                                        ; $6982: $78
	adc  c                                           ; $6983: $89
	add  a                                           ; $6984: $87
	ld   h, [hl]                                     ; $6985: $66
	ld   [hl], a                                     ; $6986: $77
	ld   h, a                                        ; $6987: $67
	sbc  b                                           ; $6988: $98
	ld   a, b                                        ; $6989: $78
	adc  c                                           ; $698a: $89
	adc  b                                           ; $698b: $88
	sbc  b                                           ; $698c: $98
	adc  b                                           ; $698d: $88
	sbc  b                                           ; $698e: $98
	sbc  c                                           ; $698f: $99
	sbc  c                                           ; $6990: $99
	adc  b                                           ; $6991: $88
	ld   a, b                                        ; $6992: $78
	add  a                                           ; $6993: $87
	adc  b                                           ; $6994: $88
	add  a                                           ; $6995: $87
	ld   a, b                                        ; $6996: $78
	adc  b                                           ; $6997: $88
	add  a                                           ; $6998: $87
	ld   a, b                                        ; $6999: $78
	adc  b                                           ; $699a: $88
	adc  c                                           ; $699b: $89
	ld   [hl], a                                     ; $699c: $77
	adc  c                                           ; $699d: $89
	adc  c                                           ; $699e: $89
	sbc  c                                           ; $699f: $99
	adc  c                                           ; $69a0: $89
	adc  b                                           ; $69a1: $88
	adc  c                                           ; $69a2: $89
	adc  b                                           ; $69a3: $88
	adc  b                                           ; $69a4: $88
	adc  b                                           ; $69a5: $88
	sbc  b                                           ; $69a6: $98
	ld   [hl], a                                     ; $69a7: $77
	adc  c                                           ; $69a8: $89
	adc  b                                           ; $69a9: $88
	ld   a, b                                        ; $69aa: $78
	add  a                                           ; $69ab: $87
	adc  c                                           ; $69ac: $89
	adc  b                                           ; $69ad: $88
	adc  b                                           ; $69ae: $88
	adc  b                                           ; $69af: $88
	ld   a, b                                        ; $69b0: $78
	adc  c                                           ; $69b1: $89
	ld   [hl], a                                     ; $69b2: $77
	adc  c                                           ; $69b3: $89
	adc  c                                           ; $69b4: $89

Jump_0f6_69b5:
	adc  b                                           ; $69b5: $88
	adc  b                                           ; $69b6: $88
	adc  b                                           ; $69b7: $88
	sbc  b                                           ; $69b8: $98
	adc  b                                           ; $69b9: $88
	adc  b                                           ; $69ba: $88
	adc  b                                           ; $69bb: $88
	adc  b                                           ; $69bc: $88
	adc  b                                           ; $69bd: $88
	adc  c                                           ; $69be: $89
	ld   [hl], a                                     ; $69bf: $77
	adc  b                                           ; $69c0: $88
	adc  b                                           ; $69c1: $88
	add  a                                           ; $69c2: $87
	adc  b                                           ; $69c3: $88
	sbc  b                                           ; $69c4: $98
	adc  c                                           ; $69c5: $89
	add  a                                           ; $69c6: $87
	adc  c                                           ; $69c7: $89
	adc  b                                           ; $69c8: $88
	adc  b                                           ; $69c9: $88
	adc  c                                           ; $69ca: $89
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
	ld   [hl], a                                     ; $69d5: $77
	adc  c                                           ; $69d6: $89
	adc  b                                           ; $69d7: $88
	add  a                                           ; $69d8: $87
	adc  b                                           ; $69d9: $88
	sbc  c                                           ; $69da: $99
	sbc  b                                           ; $69db: $98
	adc  b                                           ; $69dc: $88
	adc  c                                           ; $69dd: $89
	sbc  b                                           ; $69de: $98
	adc  b                                           ; $69df: $88
	sbc  c                                           ; $69e0: $99
	adc  b                                           ; $69e1: $88
	adc  b                                           ; $69e2: $88
	sbc  b                                           ; $69e3: $98
	adc  b                                           ; $69e4: $88
	adc  b                                           ; $69e5: $88
	adc  b                                           ; $69e6: $88
	adc  b                                           ; $69e7: $88
	adc  b                                           ; $69e8: $88
	adc  b                                           ; $69e9: $88
	adc  b                                           ; $69ea: $88
	sbc  b                                           ; $69eb: $98
	ld   a, b                                        ; $69ec: $78
	adc  b                                           ; $69ed: $88
	adc  b                                           ; $69ee: $88
	ld   a, b                                        ; $69ef: $78
	adc  c                                           ; $69f0: $89
	adc  b                                           ; $69f1: $88
	add  a                                           ; $69f2: $87
	adc  c                                           ; $69f3: $89
	sbc  c                                           ; $69f4: $99
	adc  b                                           ; $69f5: $88
	adc  b                                           ; $69f6: $88
	sbc  c                                           ; $69f7: $99
	adc  b                                           ; $69f8: $88
	adc  b                                           ; $69f9: $88
	adc  b                                           ; $69fa: $88
	adc  b                                           ; $69fb: $88
	adc  b                                           ; $69fc: $88
	ld   a, b                                        ; $69fd: $78
	adc  c                                           ; $69fe: $89
	add  a                                           ; $69ff: $87
	adc  b                                           ; $6a00: $88
	sbc  b                                           ; $6a01: $98
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
	sbc  b                                           ; $6a0d: $98
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
	adc  c                                           ; $6a1b: $89
	adc  b                                           ; $6a1c: $88
	adc  b                                           ; $6a1d: $88
	adc  c                                           ; $6a1e: $89
	sbc  b                                           ; $6a1f: $98
	adc  b                                           ; $6a20: $88
	adc  b                                           ; $6a21: $88
	adc  b                                           ; $6a22: $88
	adc  b                                           ; $6a23: $88
	adc  b                                           ; $6a24: $88
	adc  b                                           ; $6a25: $88
	adc  b                                           ; $6a26: $88
	ld   [hl], a                                     ; $6a27: $77
	adc  b                                           ; $6a28: $88
	adc  b                                           ; $6a29: $88
	ld   a, b                                        ; $6a2a: $78
	adc  b                                           ; $6a2b: $88
	adc  b                                           ; $6a2c: $88
	adc  b                                           ; $6a2d: $88
	adc  b                                           ; $6a2e: $88
	adc  b                                           ; $6a2f: $88
	adc  b                                           ; $6a30: $88
	adc  b                                           ; $6a31: $88
	adc  b                                           ; $6a32: $88
	sbc  b                                           ; $6a33: $98
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
	nop                                              ; $6a6e: $00
	ld   c, b                                        ; $6a6f: $48
	ld   de, $1111                                   ; $6a70: $11 $11 $11
	ld   de, $1111                                   ; $6a73: $11 $11 $11
	ld   de, $1111                                   ; $6a76: $11 $11 $11
	ld   de, $5413                                   ; $6a79: $11 $13 $54
	ld   d, h                                        ; $6a7c: $54
	ld   d, h                                        ; $6a7d: $54
	ld   b, c                                        ; $6a7e: $41
	rra                                              ; $6a7f: $1f
	rst  $38                                         ; $6a80: $ff
	pop  af                                          ; $6a81: $f1
	ld   de, $1411                                   ; $6a82: $11 $11 $14
	ld   de, $1c11                                   ; $6a85: $11 $11 $1c
	sbc  $cc                                         ; $6a88: $de $cc
	sbc  $c1                                         ; $6a8a: $de $c1
	ld   de, $1111                                   ; $6a8c: $11 $11 $11
	ld   de, $1111                                   ; $6a8f: $11 $11 $11
	ld   de, $1111                                   ; $6a92: $11 $11 $11
	ld   de, $1111                                   ; $6a95: $11 $11 $11
	ld   de, $5411                                   ; $6a98: $11 $11 $54
	ld   b, h                                        ; $6a9b: $44
	inc  d                                           ; $6a9c: $14
	ld   de, $5454                                   ; $6a9d: $11 $54 $54
	ld   h, a                                        ; $6aa0: $67
	ld   [hl], d                                     ; $6aa1: $72
	ld   de, $1111                                   ; $6aa2: $11 $11 $11
	ld   de, $1112                                   ; $6aa5: $11 $12 $11
	ld   [de], a                                     ; $6aa8: $12
	ld   de, $1111                                   ; $6aa9: $11 $11 $11
	ld   h, [hl]                                     ; $6aac: $66
	halt                                             ; $6aad: $76
	db   $e4                                         ; $6aae: $e4
	ld   de, $8888                                   ; $6aaf: $11 $88 $88
	adc  b                                           ; $6ab2: $88
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	adc  b                                           ; $6ab5: $88
	adc  b                                           ; $6ab6: $88
	adc  b                                           ; $6ab7: $88
	sbc  b                                           ; $6ab8: $98
	adc  b                                           ; $6ab9: $88
	adc  b                                           ; $6aba: $88
	adc  b                                           ; $6abb: $88
	adc  b                                           ; $6abc: $88
	adc  b                                           ; $6abd: $88
	adc  b                                           ; $6abe: $88
	adc  b                                           ; $6abf: $88
	sbc  b                                           ; $6ac0: $98
	adc  b                                           ; $6ac1: $88
	sbc  c                                           ; $6ac2: $99
	adc  c                                           ; $6ac3: $89
	adc  c                                           ; $6ac4: $89
	sbc  b                                           ; $6ac5: $98
	adc  c                                           ; $6ac6: $89
	adc  b                                           ; $6ac7: $88
	adc  b                                           ; $6ac8: $88
	adc  c                                           ; $6ac9: $89
	sbc  c                                           ; $6aca: $99
	adc  c                                           ; $6acb: $89
	sbc  c                                           ; $6acc: $99
	adc  b                                           ; $6acd: $88
	adc  b                                           ; $6ace: $88
	adc  b                                           ; $6acf: $88
	adc  b                                           ; $6ad0: $88
	adc  c                                           ; $6ad1: $89
	sbc  c                                           ; $6ad2: $99
	adc  b                                           ; $6ad3: $88
	adc  b                                           ; $6ad4: $88
	add  a                                           ; $6ad5: $87
	ld   [hl], a                                     ; $6ad6: $77
	ld   [hl], a                                     ; $6ad7: $77
	ld   a, b                                        ; $6ad8: $78
	ld   [hl], a                                     ; $6ad9: $77
	ld   [hl], a                                     ; $6ada: $77
	add  a                                           ; $6adb: $87
	ld   a, b                                        ; $6adc: $78
	add  a                                           ; $6add: $87
	ld   [hl], a                                     ; $6ade: $77
	ld   a, b                                        ; $6adf: $78
	ld   [hl], a                                     ; $6ae0: $77
	ld   [hl], a                                     ; $6ae1: $77
	ld   a, b                                        ; $6ae2: $78
	ld   [hl], a                                     ; $6ae3: $77
	ld   [hl], a                                     ; $6ae4: $77
	ld   [hl], a                                     ; $6ae5: $77
	ld   [hl], a                                     ; $6ae6: $77
	ld   [hl], a                                     ; $6ae7: $77
	adc  b                                           ; $6ae8: $88
	sbc  b                                           ; $6ae9: $98
	add  a                                           ; $6aea: $87
	sbc  b                                           ; $6aeb: $98
	ld   a, b                                        ; $6aec: $78
	ld   a, b                                        ; $6aed: $78
	ld   [hl], a                                     ; $6aee: $77
	ld   [hl], a                                     ; $6aef: $77
	adc  b                                           ; $6af0: $88
	sbc  c                                           ; $6af1: $99
	adc  b                                           ; $6af2: $88
	ld   a, c                                        ; $6af3: $79
	add  a                                           ; $6af4: $87
	add  a                                           ; $6af5: $87
	ld   [hl], a                                     ; $6af6: $77
	ld   a, b                                        ; $6af7: $78
	ld   a, b                                        ; $6af8: $78
	ld   a, b                                        ; $6af9: $78
	ld   [hl], a                                     ; $6afa: $77
	sub  a                                           ; $6afb: $97
	add  a                                           ; $6afc: $87
	add  a                                           ; $6afd: $87
	ld   a, d                                        ; $6afe: $7a
	ld   l, b                                        ; $6aff: $68
	ld   h, a                                        ; $6b00: $67
	sub  a                                           ; $6b01: $97
	xor  b                                           ; $6b02: $a8
	sub  a                                           ; $6b03: $97
	ld   a, d                                        ; $6b04: $7a
	ld   a, c                                        ; $6b05: $79
	adc  c                                           ; $6b06: $89
	add  a                                           ; $6b07: $87
	sub  a                                           ; $6b08: $97
	adc  c                                           ; $6b09: $89
	adc  b                                           ; $6b0a: $88
	ld   a, b                                        ; $6b0b: $78
	sbc  c                                           ; $6b0c: $99
	sbc  c                                           ; $6b0d: $99
	sub  a                                           ; $6b0e: $97
	adc  b                                           ; $6b0f: $88
	ld   a, c                                        ; $6b10: $79

Jump_0f6_6b11:
	ld   a, b                                        ; $6b11: $78
	ld   h, a                                        ; $6b12: $67
	sub  a                                           ; $6b13: $97
	sbc  c                                           ; $6b14: $99
	sbc  c                                           ; $6b15: $99
	ld   a, c                                        ; $6b16: $79
	xor  b                                           ; $6b17: $a8
	adc  b                                           ; $6b18: $88
	add  a                                           ; $6b19: $87
	adc  d                                           ; $6b1a: $8a
	sbc  b                                           ; $6b1b: $98
	sbc  c                                           ; $6b1c: $99
	ld   [hl], a                                     ; $6b1d: $77
	sbc  d                                           ; $6b1e: $9a
	xor  c                                           ; $6b1f: $a9
	sub  [hl]                                        ; $6b20: $96
	ld   l, b                                        ; $6b21: $68
	ld   a, c                                        ; $6b22: $79
	sub  a                                           ; $6b23: $97
	sub  [hl]                                        ; $6b24: $96
	sbc  d                                           ; $6b25: $9a
	sub  [hl]                                        ; $6b26: $96
	adc  b                                           ; $6b27: $88
	ld   l, c                                        ; $6b28: $69
	adc  e                                           ; $6b29: $8b
	sub  a                                           ; $6b2a: $97
	xor  c                                           ; $6b2b: $a9
	ld   a, b                                        ; $6b2c: $78
	sbc  c                                           ; $6b2d: $99
	sub  a                                           ; $6b2e: $97
	and  l                                           ; $6b2f: $a5
	ld   l, c                                        ; $6b30: $69
	adc  h                                           ; $6b31: $8c
	sbc  b                                           ; $6b32: $98
	add  h                                           ; $6b33: $84
	ld   a, c                                        ; $6b34: $79
	xor  d                                           ; $6b35: $aa
	add  a                                           ; $6b36: $87
	ld   a, b                                        ; $6b37: $78
	ld   a, c                                        ; $6b38: $79
	halt                                             ; $6b39: $76
	sbc  b                                           ; $6b3a: $98
	sbc  b                                           ; $6b3b: $98
	sbc  b                                           ; $6b3c: $98
	ld   a, d                                        ; $6b3d: $7a
	ld   h, a                                        ; $6b3e: $67
	ld   [hl], a                                     ; $6b3f: $77
	reti                                             ; $6b40: $d9


	cp   b                                           ; $6b41: $b8
	ld   c, c                                        ; $6b42: $49
	ld   l, c                                        ; $6b43: $69
	or   a                                           ; $6b44: $b7
	sbc  b                                           ; $6b45: $98
	sbc  d                                           ; $6b46: $9a
	sbc  h                                           ; $6b47: $9c
	add  a                                           ; $6b48: $87
	sub  [hl]                                        ; $6b49: $96
	sub  a                                           ; $6b4a: $97
	ld   a, e                                        ; $6b4b: $7b
	ld   h, a                                        ; $6b4c: $67
	add  a                                           ; $6b4d: $87
	add  a                                           ; $6b4e: $87
	add  a                                           ; $6b4f: $87
	ld   d, [hl]                                     ; $6b50: $56
	ld   h, a                                        ; $6b51: $67
	adc  c                                           ; $6b52: $89
	or   a                                           ; $6b53: $b7
	adc  b                                           ; $6b54: $88
	sbc  e                                           ; $6b55: $9b
	sbc  d                                           ; $6b56: $9a
	add  a                                           ; $6b57: $87
	add  a                                           ; $6b58: $87
	adc  b                                           ; $6b59: $88
	sbc  d                                           ; $6b5a: $9a
	adc  c                                           ; $6b5b: $89
	sbc  b                                           ; $6b5c: $98
	sbc  b                                           ; $6b5d: $98
	adc  c                                           ; $6b5e: $89
	ld   h, a                                        ; $6b5f: $67
	ld   [hl], a                                     ; $6b60: $77
	sub  a                                           ; $6b61: $97
	ld   [hl], a                                     ; $6b62: $77
	ld   a, b                                        ; $6b63: $78
	ld   a, b                                        ; $6b64: $78
	add  [hl]                                        ; $6b65: $86
	halt                                             ; $6b66: $76
	ld   h, [hl]                                     ; $6b67: $66
	ld   h, a                                        ; $6b68: $67
	add  a                                           ; $6b69: $87
	ld   a, d                                        ; $6b6a: $7a
	xor  d                                           ; $6b6b: $aa
	jp   z, Jump_0f6_5789                            ; $6b6c: $ca $89 $57

	sbc  b                                           ; $6b6f: $98
	cp   d                                           ; $6b70: $ba
	xor  e                                           ; $6b71: $ab
	sbc  d                                           ; $6b72: $9a
	add  a                                           ; $6b73: $87
	add  h                                           ; $6b74: $84
	ld   l, b                                        ; $6b75: $68
	xor  d                                           ; $6b76: $aa
	ld   a, c                                        ; $6b77: $79
	ld   h, l                                        ; $6b78: $65
	halt                                             ; $6b79: $76
	sbc  b                                           ; $6b7a: $98
	add  a                                           ; $6b7b: $87
	ld   [hl], a                                     ; $6b7c: $77
	ld   l, c                                        ; $6b7d: $69
	ld   h, a                                        ; $6b7e: $67
	ld   [hl], l                                     ; $6b7f: $75
	ld   [hl], a                                     ; $6b80: $77
	adc  e                                           ; $6b81: $8b
	sbc  c                                           ; $6b82: $99
	ld   [hl], l                                     ; $6b83: $75
	add  [hl]                                        ; $6b84: $86
	sbc  e                                           ; $6b85: $9b
	bit  7, c                                        ; $6b86: $cb $79
	ld   h, a                                        ; $6b88: $67
	adc  c                                           ; $6b89: $89
	res  7, e                                        ; $6b8a: $cb $bb
	ld   h, [hl]                                     ; $6b8c: $66
	halt                                             ; $6b8d: $76
	sub  a                                           ; $6b8e: $97
	adc  e                                           ; $6b8f: $8b
	ld   a, d                                        ; $6b90: $7a
	halt                                             ; $6b91: $76
	ld   h, h                                        ; $6b92: $64
	halt                                             ; $6b93: $76
	ld   a, b                                        ; $6b94: $78
	ld   e, b                                        ; $6b95: $58
	xor  d                                           ; $6b96: $aa
	push bc                                          ; $6b97: $c5
	ld   d, [hl]                                     ; $6b98: $56
	dec  h                                           ; $6b99: $25
	ld   a, c                                        ; $6b9a: $79
	xor  c                                           ; $6b9b: $a9
	cp   c                                           ; $6b9c: $b9
	adc  b                                           ; $6b9d: $88
	adc  b                                           ; $6b9e: $88
	adc  b                                           ; $6b9f: $88
	sub  a                                           ; $6ba0: $97
	ld   a, b                                        ; $6ba1: $78
	ld   a, c                                        ; $6ba2: $79
	xor  d                                           ; $6ba3: $aa
	xor  d                                           ; $6ba4: $aa
	add  [hl]                                        ; $6ba5: $86
	halt                                             ; $6ba6: $76
	xor  e                                           ; $6ba7: $ab
	sbc  e                                           ; $6ba8: $9b
	add  [hl]                                        ; $6ba9: $86
	ld   h, h                                        ; $6baa: $64
	ld   d, [hl]                                     ; $6bab: $56
	sbc  d                                           ; $6bac: $9a
	adc  c                                           ; $6bad: $89
	add  [hl]                                        ; $6bae: $86
	ld   h, [hl]                                     ; $6baf: $66
	ld   h, [hl]                                     ; $6bb0: $66
	ld   d, h                                        ; $6bb1: $54
	ld   h, a                                        ; $6bb2: $67
	adc  b                                           ; $6bb3: $88
	sbc  d                                           ; $6bb4: $9a
	add  a                                           ; $6bb5: $87
	add  a                                           ; $6bb6: $87
	adc  c                                           ; $6bb7: $89
	sbc  e                                           ; $6bb8: $9b
	sbc  b                                           ; $6bb9: $98
	add  a                                           ; $6bba: $87
	ld   a, d                                        ; $6bbb: $7a
	xor  h                                           ; $6bbc: $ac
	cp   b                                           ; $6bbd: $b8
	add  a                                           ; $6bbe: $87
	ld   [hl], a                                     ; $6bbf: $77
	adc  d                                           ; $6bc0: $8a
	cp   b                                           ; $6bc1: $b8
	adc  b                                           ; $6bc2: $88
	halt                                             ; $6bc3: $76
	ld   d, l                                        ; $6bc4: $55
	ld   d, h                                        ; $6bc5: $54
	ld   a, d                                        ; $6bc6: $7a
	xor  d                                           ; $6bc7: $aa
	sbc  c                                           ; $6bc8: $99
	ld   h, e                                        ; $6bc9: $63
	ld   b, h                                        ; $6bca: $44
	ld   d, a                                        ; $6bcb: $57
	adc  e                                           ; $6bcc: $8b
	xor  b                                           ; $6bcd: $a8
	add  [hl]                                        ; $6bce: $86
	ld   b, a                                        ; $6bcf: $47
	ld   a, d                                        ; $6bd0: $7a
	cp   d                                           ; $6bd1: $ba
	ret                                              ; $6bd2: $c9


	add  a                                           ; $6bd3: $87
	ld   a, b                                        ; $6bd4: $78
	xor  e                                           ; $6bd5: $ab
	cp   d                                           ; $6bd6: $ba
	adc  c                                           ; $6bd7: $89
	ld   l, b                                        ; $6bd8: $68
	sbc  b                                           ; $6bd9: $98
	sub  a                                           ; $6bda: $97
	ld   h, a                                        ; $6bdb: $67
	halt                                             ; $6bdc: $76
	add  a                                           ; $6bdd: $87
	sbc  b                                           ; $6bde: $98
	ld   a, d                                        ; $6bdf: $7a
	ld   l, b                                        ; $6be0: $68
	ld   [hl], l                                     ; $6be1: $75
	ld   d, a                                        ; $6be2: $57
	ld   a, b                                        ; $6be3: $78
	xor  d                                           ; $6be4: $aa
	sub  a                                           ; $6be5: $97
	halt                                             ; $6be6: $76
	ld   a, b                                        ; $6be7: $78
	ld   a, d                                        ; $6be8: $7a
	adc  c                                           ; $6be9: $89
	sbc  c                                           ; $6bea: $99
	xor  b                                           ; $6beb: $a8
	adc  c                                           ; $6bec: $89
	adc  c                                           ; $6bed: $89
	sbc  b                                           ; $6bee: $98
	halt                                             ; $6bef: $76
	ld   d, l                                        ; $6bf0: $55
	ld   h, a                                        ; $6bf1: $67
	sbc  b                                           ; $6bf2: $98
	sub  [hl]                                        ; $6bf3: $96
	ld   h, a                                        ; $6bf4: $67
	ld   a, c                                        ; $6bf5: $79
	add  a                                           ; $6bf6: $87
	ld   [hl], a                                     ; $6bf7: $77
	sbc  d                                           ; $6bf8: $9a
	res  7, e                                        ; $6bf9: $cb $bb
	xor  c                                           ; $6bfb: $a9
	ld   a, b                                        ; $6bfc: $78
	adc  b                                           ; $6bfd: $88
	ld   [hl], a                                     ; $6bfe: $77
	ld   [hl], a                                     ; $6bff: $77
	ld   a, b                                        ; $6c00: $78
	ld   h, [hl]                                     ; $6c01: $66
	ld   h, [hl]                                     ; $6c02: $66
	ld   [hl], l                                     ; $6c03: $75
	ld   b, h                                        ; $6c04: $44
	dec  [hl]                                        ; $6c05: $35
	halt                                             ; $6c06: $76
	sbc  c                                           ; $6c07: $99
	sbc  e                                           ; $6c08: $9b
	cp   d                                           ; $6c09: $ba
	cp   b                                           ; $6c0a: $b8
	sbc  b                                           ; $6c0b: $98
	ld   a, b                                        ; $6c0c: $78
	adc  c                                           ; $6c0d: $89
	xor  b                                           ; $6c0e: $a8
	xor  l                                           ; $6c0f: $ad
	call c, Call_0f6_5398                            ; $6c10: $dc $98 $53
	ld   a, b                                        ; $6c13: $78
	cp   h                                           ; $6c14: $bc
	xor  c                                           ; $6c15: $a9
	ld   [hl], l                                     ; $6c16: $75
	ld   d, l                                        ; $6c17: $55
	ld   e, b                                        ; $6c18: $58
	sbc  d                                           ; $6c19: $9a
	and  [hl]                                        ; $6c1a: $a6
	ld   [hl], a                                     ; $6c1b: $77
	ld   h, [hl]                                     ; $6c1c: $66
	sbc  d                                           ; $6c1d: $9a
	sbc  b                                           ; $6c1e: $98
	ld   l, c                                        ; $6c1f: $69
	halt                                             ; $6c20: $76
	ld   h, [hl]                                     ; $6c21: $66
	ld   a, b                                        ; $6c22: $78
	ld   h, a                                        ; $6c23: $67
	add  [hl]                                        ; $6c24: $86
	ld   h, [hl]                                     ; $6c25: $66
	ld   a, c                                        ; $6c26: $79
	ld   a, c                                        ; $6c27: $79
	jp   z, $8799                                    ; $6c28: $ca $99 $87

	ld   a, b                                        ; $6c2b: $78
	xor  d                                           ; $6c2c: $aa
	cp   e                                           ; $6c2d: $bb
	cp   e                                           ; $6c2e: $bb
	set  1, d                                        ; $6c2f: $cb $ca
	halt                                             ; $6c31: $76
	ld   d, l                                        ; $6c32: $55
	ld   a, b                                        ; $6c33: $78
	xor  h                                           ; $6c34: $ac
	sub  [hl]                                        ; $6c35: $96
	ld   d, h                                        ; $6c36: $54
	ld   b, [hl]                                     ; $6c37: $46
	ld   a, b                                        ; $6c38: $78
	sub  a                                           ; $6c39: $97
	ld   d, l                                        ; $6c3a: $55
	ld   b, e                                        ; $6c3b: $43
	dec  [hl]                                        ; $6c3c: $35
	ld   a, c                                        ; $6c3d: $79
	sbc  e                                           ; $6c3e: $9b
	cp   d                                           ; $6c3f: $ba
	sbc  c                                           ; $6c40: $99
	sbc  c                                           ; $6c41: $99
	sbc  c                                           ; $6c42: $99
	sbc  c                                           ; $6c43: $99
	sbc  b                                           ; $6c44: $98
	add  a                                           ; $6c45: $87
	ld   a, b                                        ; $6c46: $78
	sbc  e                                           ; $6c47: $9b
	call $97cc                                       ; $6c48: $cd $cc $97
	ld   d, h                                        ; $6c4b: $54
	ld   d, [hl]                                     ; $6c4c: $56
	sbc  c                                           ; $6c4d: $99
	cp   d                                           ; $6c4e: $ba
	add  a                                           ; $6c4f: $87
	ld   [hl], h                                     ; $6c50: $74
	ld   d, l                                        ; $6c51: $55
	ld   l, d                                        ; $6c52: $6a
	sbc  d                                           ; $6c53: $9a
	sub  [hl]                                        ; $6c54: $96
	halt                                             ; $6c55: $76
	ld   a, b                                        ; $6c56: $78
	ld   [hl], a                                     ; $6c57: $77
	add  l                                           ; $6c58: $85
	ld   h, l                                        ; $6c59: $65
	ld   [hl], $57                                   ; $6c5a: $36 $57
	halt                                             ; $6c5c: $76
	ld   [hl], a                                     ; $6c5d: $77
	adc  e                                           ; $6c5e: $8b
	call $96da                                       ; $6c5f: $cd $da $96
	ld   d, [hl]                                     ; $6c62: $56
	ld   a, d                                        ; $6c63: $7a
	call z, $acbb                                    ; $6c64: $cc $bb $ac
	call c, Call_0f6_64c8                            ; $6c67: $dc $c8 $64
	inc  de                                          ; $6c6a: $13
	ld   e, b                                        ; $6c6b: $58
	jp   z, Jump_0f6_6699                            ; $6c6c: $ca $99 $66

	ld   h, [hl]                                     ; $6c6f: $66
	add  a                                           ; $6c70: $87
	ld   l, b                                        ; $6c71: $68
	ld   h, h                                        ; $6c72: $64
	inc  sp                                          ; $6c73: $33
	ld   d, l                                        ; $6c74: $55
	ld   a, d                                        ; $6c75: $7a
	res  3, d                                        ; $6c76: $cb $9a
	adc  b                                           ; $6c78: $88
	ld   a, c                                        ; $6c79: $79
	xor  e                                           ; $6c7a: $ab
	sbc  c                                           ; $6c7b: $99
	add  a                                           ; $6c7c: $87
	ld   [hl], a                                     ; $6c7d: $77
	ld   [hl], a                                     ; $6c7e: $77
	ld   [hl], a                                     ; $6c7f: $77
	xor  h                                           ; $6c80: $ac
	call $85dc                                       ; $6c81: $cd $dc $85
	ld   b, h                                        ; $6c84: $44
	ld   l, b                                        ; $6c85: $68
	xor  d                                           ; $6c86: $aa
	xor  b                                           ; $6c87: $a8
	ld   h, [hl]                                     ; $6c88: $66
	ld   d, l                                        ; $6c89: $55
	ld   d, l                                        ; $6c8a: $55
	ld   h, a                                        ; $6c8b: $67
	sbc  c                                           ; $6c8c: $99
	add  a                                           ; $6c8d: $87
	ld   h, l                                        ; $6c8e: $65
	ld   b, e                                        ; $6c8f: $43
	inc  sp                                          ; $6c90: $33
	scf                                              ; $6c91: $37
	cp   l                                           ; $6c92: $bd
	db   $ed                                         ; $6c93: $ed
	jp   z, Jump_0f6_7776                            ; $6c94: $ca $76 $77

	adc  c                                           ; $6c97: $89
	sbc  c                                           ; $6c98: $99
	sbc  c                                           ; $6c99: $99
	xor  d                                           ; $6c9a: $aa
	jp   z, $aaba                                    ; $6c9b: $ca $ba $aa

	xor  d                                           ; $6c9e: $aa
	sbc  b                                           ; $6c9f: $98
	ld   d, l                                        ; $6ca0: $55
	ld   d, l                                        ; $6ca1: $55
	ld   h, a                                        ; $6ca2: $67
	sbc  c                                           ; $6ca3: $99
	adc  d                                           ; $6ca4: $8a
	ld   [hl], l                                     ; $6ca5: $75
	ld   h, l                                        ; $6ca6: $65
	ld   a, b                                        ; $6ca7: $78
	add  a                                           ; $6ca8: $87
	ld   d, d                                        ; $6ca9: $52
	inc  hl                                          ; $6caa: $23
	ld   c, b                                        ; $6cab: $48
	cp   l                                           ; $6cac: $bd
	db   $dd                                         ; $6cad: $dd
	ret                                              ; $6cae: $c9


	add  [hl]                                        ; $6caf: $86
	adc  d                                           ; $6cb0: $8a
	xor  d                                           ; $6cb1: $aa
	xor  b                                           ; $6cb2: $a8
	halt                                             ; $6cb3: $76
	ld   l, b                                        ; $6cb4: $68
	adc  e                                           ; $6cb5: $8b
	call z, $caed                                    ; $6cb6: $cc $ed $ca
	ld   h, h                                        ; $6cb9: $64
	ld   d, l                                        ; $6cba: $55
	ld   a, c                                        ; $6cbb: $79
	sbc  e                                           ; $6cbc: $9b
	sub  a                                           ; $6cbd: $97
	ld   h, l                                        ; $6cbe: $65
	ld   d, [hl]                                     ; $6cbf: $56
	ld   h, a                                        ; $6cc0: $67
	ld   h, [hl]                                     ; $6cc1: $66
	ld   h, [hl]                                     ; $6cc2: $66
	ld   d, d                                        ; $6cc3: $52
	ld   de, $ae14                                   ; $6cc4: $11 $14 $ae
	rst  $38                                         ; $6cc7: $ff
	ld   a, [$5775]                                  ; $6cc8: $fa $75 $57
	adc  e                                           ; $6ccb: $8b
	jp   z, $8977                                    ; $6ccc: $ca $77 $89

	call $a8dc                                       ; $6ccf: $cd $dc $a8
	ld   h, l                                        ; $6cd2: $65
	ld   l, b                                        ; $6cd3: $68
	xor  d                                           ; $6cd4: $aa
	sbc  b                                           ; $6cd5: $98
	ld   h, [hl]                                     ; $6cd6: $66
	ld   l, b                                        ; $6cd7: $68
	sbc  c                                           ; $6cd8: $99
	sbc  b                                           ; $6cd9: $98
	ld   h, h                                        ; $6cda: $64
	ld   b, l                                        ; $6cdb: $45
	ld   h, a                                        ; $6cdc: $67
	add  [hl]                                        ; $6cdd: $86
	ld   sp, $3a11                                   ; $6cde: $31 $11 $3a
	rst  $28                                         ; $6ce1: $ef
	rst  $38                                         ; $6ce2: $ff
	or   [hl]                                        ; $6ce3: $b6
	inc  sp                                          ; $6ce4: $33
	ld   e, c                                        ; $6ce5: $59
	cp   e                                           ; $6ce6: $bb
	ret                                              ; $6ce7: $c9


	ld   l, b                                        ; $6ce8: $68
	sbc  [hl]                                        ; $6ce9: $9e
	rst  $38                                         ; $6cea: $ff
	ld   [$3552], a                                  ; $6ceb: $ea $52 $35
	adc  c                                           ; $6cee: $89
	sub  a                                           ; $6cef: $97
	ld   h, [hl]                                     ; $6cf0: $66
	ld   l, b                                        ; $6cf1: $68
	ld   a, b                                        ; $6cf2: $78
	halt                                             ; $6cf3: $76
	ld   d, [hl]                                     ; $6cf4: $56
	ld   h, [hl]                                     ; $6cf5: $66
	ld   b, c                                        ; $6cf6: $41
	ld   hl, $9a27                                   ; $6cf7: $21 $27 $9a
	cp   e                                           ; $6cfa: $bb
	res  5, e                                        ; $6cfb: $cb $ab
	sbc  b                                           ; $6cfd: $98
	ld   [hl], a                                     ; $6cfe: $77
	ld   h, l                                        ; $6cff: $65
	sbc  l                                           ; $6d00: $9d
	rst  $38                                         ; $6d01: $ff
	rst  $38                                         ; $6d02: $ff
	and  e                                           ; $6d03: $a3
	ld   de, $9a25                                   ; $6d04: $11 $25 $9a
	xor  b                                           ; $6d07: $a8
	adc  b                                           ; $6d08: $88
	halt                                             ; $6d09: $76
	ld   d, h                                        ; $6d0a: $54
	ld   [hl+], a                                    ; $6d0b: $22
	inc  [hl]                                        ; $6d0c: $34
	ld   l, b                                        ; $6d0d: $68
	sbc  c                                           ; $6d0e: $99
	ld   h, l                                        ; $6d0f: $65
	ld   d, [hl]                                     ; $6d10: $56
	sbc  l                                           ; $6d11: $9d
	rst  $38                                         ; $6d12: $ff
	db   $ec                                         ; $6d13: $ec
	add  l                                           ; $6d14: $85
	ld   b, l                                        ; $6d15: $45
	ld   a, c                                        ; $6d16: $79
	sbc  h                                           ; $6d17: $9c
	xor  $ff                                         ; $6d18: $ee $ff
	ret  z                                           ; $6d1a: $c8

	ld   sp, $7923                                   ; $6d1b: $31 $23 $79
	xor  d                                           ; $6d1e: $aa
	add  a                                           ; $6d1f: $87
	ld   d, h                                        ; $6d20: $54
	ld   b, e                                        ; $6d21: $43
	ld   b, e                                        ; $6d22: $43
	ld   de, $3a11                                   ; $6d23: $11 $11 $3a
	rst  $38                                         ; $6d26: $ff
	rst  $38                                         ; $6d27: $ff
	ld   [hl], c                                     ; $6d28: $71
	ld   de, $ff3a                                   ; $6d29: $11 $3a $ff
	rst  $38                                         ; $6d2c: $ff
	ld   sp, hl                                      ; $6d2d: $f9
	ld   sp, $5812                                   ; $6d2e: $31 $12 $58
	sbc  e                                           ; $6d31: $9b
	and  a                                           ; $6d32: $a7
	ld   b, d                                        ; $6d33: $42
	inc  hl                                          ; $6d34: $23
	ld   b, [hl]                                     ; $6d35: $46
	adc  c                                           ; $6d36: $89
	sbc  d                                           ; $6d37: $9a
	xor  d                                           ; $6d38: $aa
	sub  a                                           ; $6d39: $97
	ld   d, l                                        ; $6d3a: $55
	ld   h, a                                        ; $6d3b: $67
	xor  e                                           ; $6d3c: $ab
	sbc  $b9                                         ; $6d3d: $de $b9
	sbc  b                                           ; $6d3f: $98
	ld   [hl], a                                     ; $6d40: $77
	ld   a, b                                        ; $6d41: $78
	ld   d, l                                        ; $6d42: $55
	ld   h, h                                        ; $6d43: $64
	ld   h, h                                        ; $6d44: $64
	ld   b, l                                        ; $6d45: $45
	inc  [hl]                                        ; $6d46: $34
	ld   a, c                                        ; $6d47: $79
	sbc  $bd                                         ; $6d48: $de $bd
	sbc  b                                           ; $6d4a: $98
	add  a                                           ; $6d4b: $87
	xor  b                                           ; $6d4c: $a8
	adc  c                                           ; $6d4d: $89
	sbc  e                                           ; $6d4e: $9b
	rst  $38                                         ; $6d4f: $ff
	cp   $52                                         ; $6d50: $fe $52
	ld   de, $db59                                   ; $6d52: $11 $59 $db
	and  e                                           ; $6d55: $a3
	ld   de, $5d11                                   ; $6d56: $11 $11 $5d
	rst  $38                                         ; $6d59: $ff
	add  sp, $23                                     ; $6d5a: $e8 $23
	ld   e, d                                        ; $6d5c: $5a
	cp   $fa                                         ; $6d5d: $fe $fa
	ld   [hl], a                                     ; $6d5f: $77
	xor  l                                           ; $6d60: $ad
	db   $ed                                         ; $6d61: $ed
	add  h                                           ; $6d62: $84
	ld   de, $6614                                   ; $6d63: $11 $14 $66
	ld   h, e                                        ; $6d66: $63
	inc  h                                           ; $6d67: $24
	ld   a, h                                        ; $6d68: $7c
	res  2, l                                        ; $6d69: $cb $95
	ld   e, b                                        ; $6d6b: $58
	xor  [hl]                                        ; $6d6c: $ae
	db   $fd                                         ; $6d6d: $fd
	reti                                             ; $6d6e: $d9


	ld   [hl], a                                     ; $6d6f: $77
	ld   d, [hl]                                     ; $6d70: $56
	ld   b, h                                        ; $6d71: $44
	ld   b, h                                        ; $6d72: $44
	ld   b, [hl]                                     ; $6d73: $46
	ld   l, b                                        ; $6d74: $68
	halt                                             ; $6d75: $76
	sbc  d                                           ; $6d76: $9a
	call z, Call_0f6_65a9                            ; $6d77: $cc $a9 $65
	ld   l, c                                        ; $6d7a: $69
	call $88dc                                       ; $6d7b: $cd $dc $88
	ld   a, c                                        ; $6d7e: $79
	xor  b                                           ; $6d7f: $a8
	ld   [hl], h                                     ; $6d80: $74
	ld   de, $8913                                   ; $6d81: $11 $13 $89
	cp   c                                           ; $6d84: $b9
	ld   [hl], a                                     ; $6d85: $77
	ld   b, h                                        ; $6d86: $44
	ld   d, a                                        ; $6d87: $57
	xor  h                                           ; $6d88: $ac
	sbc  $cb                                         ; $6d89: $de $cb
	xor  c                                           ; $6d8b: $a9
	cp   e                                           ; $6d8c: $bb
	call z, Call_0f6_52b8                            ; $6d8d: $cc $b8 $52
	inc  [hl]                                        ; $6d90: $34
	ld   e, d                                        ; $6d91: $5a
	sbc  d                                           ; $6d92: $9a
	and  a                                           ; $6d93: $a7
	sub  a                                           ; $6d94: $97
	ld   a, b                                        ; $6d95: $78
	ld   [hl], a                                     ; $6d96: $77
	ld   h, [hl]                                     ; $6d97: $66
	ld   h, l                                        ; $6d98: $65
	ld   h, a                                        ; $6d99: $67
	ld   l, c                                        ; $6d9a: $69
	adc  d                                           ; $6d9b: $8a
	cp   c                                           ; $6d9c: $b9
	xor  c                                           ; $6d9d: $a9
	ld   h, [hl]                                     ; $6d9e: $66
	ld   l, b                                        ; $6d9f: $68
	xor  e                                           ; $6da0: $ab
	db   $dd                                         ; $6da1: $dd
	cp   c                                           ; $6da2: $b9
	ld   [hl], a                                     ; $6da3: $77
	ld   [hl], a                                     ; $6da4: $77
	add  a                                           ; $6da5: $87
	ld   [hl], l                                     ; $6da6: $75
	ld   [hl-], a                                    ; $6da7: $32
	inc  sp                                          ; $6da8: $33
	ld   b, [hl]                                     ; $6da9: $46
	ld   h, a                                        ; $6daa: $67
	adc  e                                           ; $6dab: $8b
	call $b8ed                                       ; $6dac: $cd $ed $b8
	halt                                             ; $6daf: $76
	adc  c                                           ; $6db0: $89
	res  7, d                                        ; $6db1: $cb $ba
	add  a                                           ; $6db3: $87
	ld   b, h                                        ; $6db4: $44
	ld   b, [hl]                                     ; $6db5: $46
	ld   h, a                                        ; $6db6: $67
	ld   d, h                                        ; $6db7: $54
	ld   b, l                                        ; $6db8: $45
	adc  e                                           ; $6db9: $8b
	db   $dd                                         ; $6dba: $dd
	cp   c                                           ; $6dbb: $b9
	halt                                             ; $6dbc: $76
	adc  c                                           ; $6dbd: $89
	xor  h                                           ; $6dbe: $ac
	xor  c                                           ; $6dbf: $a9
	halt                                             ; $6dc0: $76
	ld   d, [hl]                                     ; $6dc1: $56
	ld   a, b                                        ; $6dc2: $78
	ld   [hl], a                                     ; $6dc3: $77
	ld   d, h                                        ; $6dc4: $54
	inc  sp                                          ; $6dc5: $33
	ld   d, l                                        ; $6dc6: $55
	sbc  e                                           ; $6dc7: $9b
	cp   h                                           ; $6dc8: $bc
	xor  d                                           ; $6dc9: $aa
	sbc  c                                           ; $6dca: $99
	cp   e                                           ; $6dcb: $bb
	cp   e                                           ; $6dcc: $bb
	sbc  b                                           ; $6dcd: $98
	ld   [hl], a                                     ; $6dce: $77
	sbc  b                                           ; $6dcf: $98
	and  a                                           ; $6dd0: $a7
	ld   [hl], a                                     ; $6dd1: $77
	ld   h, [hl]                                     ; $6dd2: $66
	ld   h, a                                        ; $6dd3: $67
	ld   [hl], a                                     ; $6dd4: $77
	ld   [hl], a                                     ; $6dd5: $77
	ld   h, a                                        ; $6dd6: $67
	adc  b                                           ; $6dd7: $88
	adc  b                                           ; $6dd8: $88
	sub  a                                           ; $6dd9: $97
	add  a                                           ; $6dda: $87
	adc  b                                           ; $6ddb: $88
	sbc  c                                           ; $6ddc: $99
	sbc  c                                           ; $6ddd: $99
	ld   a, b                                        ; $6dde: $78
	ld   a, c                                        ; $6ddf: $79
	sbc  d                                           ; $6de0: $9a
	xor  d                                           ; $6de1: $aa
	sbc  b                                           ; $6de2: $98
	adc  b                                           ; $6de3: $88
	sbc  b                                           ; $6de4: $98
	sbc  c                                           ; $6de5: $99
	sbc  b                                           ; $6de6: $98
	adc  b                                           ; $6de7: $88
	sbc  b                                           ; $6de8: $98
	adc  b                                           ; $6de9: $88
	add  a                                           ; $6dea: $87
	ld   [hl], a                                     ; $6deb: $77
	ld   [hl], a                                     ; $6dec: $77
	halt                                             ; $6ded: $76
	ld   h, [hl]                                     ; $6dee: $66
	ld   d, [hl]                                     ; $6def: $56
	ld   h, a                                        ; $6df0: $67
	ld   a, b                                        ; $6df1: $78
	sbc  c                                           ; $6df2: $99
	sbc  b                                           ; $6df3: $98
	sbc  b                                           ; $6df4: $98
	sbc  d                                           ; $6df5: $9a
	xor  d                                           ; $6df6: $aa
	cp   d                                           ; $6df7: $ba
	xor  c                                           ; $6df8: $a9
	xor  c                                           ; $6df9: $a9
	xor  d                                           ; $6dfa: $aa
	sbc  d                                           ; $6dfb: $9a
	sbc  c                                           ; $6dfc: $99
	adc  b                                           ; $6dfd: $88
	ld   [hl], a                                     ; $6dfe: $77
	add  a                                           ; $6dff: $87
	add  a                                           ; $6e00: $87
	halt                                             ; $6e01: $76
	ld   h, [hl]                                     ; $6e02: $66
	ld   h, [hl]                                     ; $6e03: $66
	ld   h, [hl]                                     ; $6e04: $66
	ld   h, [hl]                                     ; $6e05: $66
	ld   h, [hl]                                     ; $6e06: $66
	ld   h, a                                        ; $6e07: $67
	ld   a, b                                        ; $6e08: $78
	adc  b                                           ; $6e09: $88
	sbc  c                                           ; $6e0a: $99
	xor  c                                           ; $6e0b: $a9
	xor  e                                           ; $6e0c: $ab
	cp   d                                           ; $6e0d: $ba
	cp   d                                           ; $6e0e: $ba
	xor  c                                           ; $6e0f: $a9
	sbc  d                                           ; $6e10: $9a
	sbc  c                                           ; $6e11: $99
	adc  b                                           ; $6e12: $88
	add  a                                           ; $6e13: $87
	ld   [hl], a                                     ; $6e14: $77
	ld   [hl], a                                     ; $6e15: $77
	ld   [hl], a                                     ; $6e16: $77
	ld   [hl], a                                     ; $6e17: $77
	ld   [hl], a                                     ; $6e18: $77
	ld   [hl], a                                     ; $6e19: $77
	ld   [hl], a                                     ; $6e1a: $77
	ld   h, [hl]                                     ; $6e1b: $66
	ld   h, [hl]                                     ; $6e1c: $66
	ld   h, [hl]                                     ; $6e1d: $66
	ld   [hl], a                                     ; $6e1e: $77
	ld   a, b                                        ; $6e1f: $78
	adc  c                                           ; $6e20: $89
	sbc  c                                           ; $6e21: $99
	sbc  d                                           ; $6e22: $9a
	sbc  d                                           ; $6e23: $9a
	xor  d                                           ; $6e24: $aa
	xor  d                                           ; $6e25: $aa
	xor  c                                           ; $6e26: $a9
	sbc  d                                           ; $6e27: $9a
	sbc  b                                           ; $6e28: $98
	sbc  b                                           ; $6e29: $98
	adc  b                                           ; $6e2a: $88
	ld   [hl], a                                     ; $6e2b: $77
	ld   [hl], a                                     ; $6e2c: $77
	ld   [hl], a                                     ; $6e2d: $77
	ld   [hl], a                                     ; $6e2e: $77
	ld   [hl], a                                     ; $6e2f: $77
	ld   [hl], a                                     ; $6e30: $77
	ld   [hl], a                                     ; $6e31: $77
	ld   [hl], a                                     ; $6e32: $77
	ld   [hl], a                                     ; $6e33: $77
	ld   [hl], a                                     ; $6e34: $77
	ld   [hl], a                                     ; $6e35: $77
	ld   [hl], a                                     ; $6e36: $77
	ld   [hl], a                                     ; $6e37: $77
	adc  b                                           ; $6e38: $88
	adc  b                                           ; $6e39: $88
	adc  c                                           ; $6e3a: $89
	adc  b                                           ; $6e3b: $88
	sbc  c                                           ; $6e3c: $99
	sbc  c                                           ; $6e3d: $99
	sbc  c                                           ; $6e3e: $99
	sbc  c                                           ; $6e3f: $99
	sbc  c                                           ; $6e40: $99
	adc  b                                           ; $6e41: $88
	sbc  c                                           ; $6e42: $99
	adc  b                                           ; $6e43: $88
	adc  b                                           ; $6e44: $88
	adc  b                                           ; $6e45: $88
	ld   [hl], a                                     ; $6e46: $77
	ld   [hl], a                                     ; $6e47: $77
	adc  b                                           ; $6e48: $88
	adc  b                                           ; $6e49: $88
	ld   [hl], a                                     ; $6e4a: $77
	ld   a, b                                        ; $6e4b: $78
	adc  b                                           ; $6e4c: $88
	adc  b                                           ; $6e4d: $88
	adc  b                                           ; $6e4e: $88
	adc  b                                           ; $6e4f: $88
	adc  b                                           ; $6e50: $88
	add  a                                           ; $6e51: $87
	ld   [hl], a                                     ; $6e52: $77
	ld   a, b                                        ; $6e53: $78
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	adc  b                                           ; $6e56: $88
	adc  b                                           ; $6e57: $88
	adc  c                                           ; $6e58: $89
	sbc  c                                           ; $6e59: $99
	sbc  c                                           ; $6e5a: $99
	sbc  c                                           ; $6e5b: $99
	sbc  b                                           ; $6e5c: $98
	sbc  c                                           ; $6e5d: $99
	sbc  c                                           ; $6e5e: $99
	sbc  b                                           ; $6e5f: $98
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
	add  a                                           ; $6e6f: $87
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
	add  a                                           ; $6e8f: $87
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
	adc  b                                           ; $6e92: $88
	adc  b                                           ; $6e93: $88
	ld   a, b                                        ; $6e94: $78
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
	sbc  c                                           ; $6f19: $99
	add  a                                           ; $6f1a: $87
	adc  b                                           ; $6f1b: $88
	adc  b                                           ; $6f1c: $88
	adc  b                                           ; $6f1d: $88
	adc  b                                           ; $6f1e: $88
	adc  b                                           ; $6f1f: $88
	adc  b                                           ; $6f20: $88
	sbc  b                                           ; $6f21: $98
	add  a                                           ; $6f22: $87
	ld   a, b                                        ; $6f23: $78
	adc  b                                           ; $6f24: $88
	adc  b                                           ; $6f25: $88
	adc  b                                           ; $6f26: $88
	adc  c                                           ; $6f27: $89
	sbc  b                                           ; $6f28: $98
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
	adc  c                                           ; $6f34: $89
	sbc  b                                           ; $6f35: $98
	adc  b                                           ; $6f36: $88
	adc  b                                           ; $6f37: $88
	adc  b                                           ; $6f38: $88
	adc  b                                           ; $6f39: $88
	adc  b                                           ; $6f3a: $88
	adc  b                                           ; $6f3b: $88
	adc  b                                           ; $6f3c: $88
	adc  c                                           ; $6f3d: $89
	add  a                                           ; $6f3e: $87
	ld   a, b                                        ; $6f3f: $78
	adc  b                                           ; $6f40: $88
	adc  b                                           ; $6f41: $88
	adc  b                                           ; $6f42: $88
	adc  b                                           ; $6f43: $88
	adc  c                                           ; $6f44: $89
	adc  b                                           ; $6f45: $88
	adc  b                                           ; $6f46: $88
	adc  b                                           ; $6f47: $88
	adc  b                                           ; $6f48: $88
	adc  b                                           ; $6f49: $88
	adc  b                                           ; $6f4a: $88
	adc  c                                           ; $6f4b: $89
	adc  b                                           ; $6f4c: $88
	adc  b                                           ; $6f4d: $88
	adc  b                                           ; $6f4e: $88
	sbc  b                                           ; $6f4f: $98
	add  a                                           ; $6f50: $87
	ld   a, b                                        ; $6f51: $78
	adc  b                                           ; $6f52: $88
	adc  b                                           ; $6f53: $88
	ld   [hl], a                                     ; $6f54: $77
	ld   a, c                                        ; $6f55: $79
	sbc  c                                           ; $6f56: $99
	adc  b                                           ; $6f57: $88
	ld   [hl], a                                     ; $6f58: $77
	adc  b                                           ; $6f59: $88
	sbc  b                                           ; $6f5a: $98
	add  a                                           ; $6f5b: $87
	adc  b                                           ; $6f5c: $88
	adc  b                                           ; $6f5d: $88
	adc  b                                           ; $6f5e: $88
	add  a                                           ; $6f5f: $87
	ld   [hl], a                                     ; $6f60: $77
	ld   a, b                                        ; $6f61: $78
	adc  c                                           ; $6f62: $89
	sbc  b                                           ; $6f63: $98
	ld   h, [hl]                                     ; $6f64: $66
	adc  c                                           ; $6f65: $89
	sbc  c                                           ; $6f66: $99
	add  a                                           ; $6f67: $87
	ld   a, b                                        ; $6f68: $78
	sbc  c                                           ; $6f69: $99
	sbc  b                                           ; $6f6a: $98
	ld   [hl], a                                     ; $6f6b: $77
	adc  b                                           ; $6f6c: $88
	adc  b                                           ; $6f6d: $88
	adc  b                                           ; $6f6e: $88
	ld   [hl], a                                     ; $6f6f: $77
	add  a                                           ; $6f70: $87
	adc  b                                           ; $6f71: $88
	adc  c                                           ; $6f72: $89
	sbc  b                                           ; $6f73: $98
	add  a                                           ; $6f74: $87
	ld   [hl], a                                     ; $6f75: $77
	sbc  d                                           ; $6f76: $9a
	xor  b                                           ; $6f77: $a8
	ld   [hl], a                                     ; $6f78: $77
	adc  b                                           ; $6f79: $88
	sbc  c                                           ; $6f7a: $99
	sbc  c                                           ; $6f7b: $99
	adc  b                                           ; $6f7c: $88
	adc  b                                           ; $6f7d: $88
	add  a                                           ; $6f7e: $87
	adc  c                                           ; $6f7f: $89
	sbc  c                                           ; $6f80: $99
	halt                                             ; $6f81: $76
	ld   d, [hl]                                     ; $6f82: $56
	adc  c                                           ; $6f83: $89
	sbc  b                                           ; $6f84: $98
	ld   h, l                                        ; $6f85: $65
	ld   h, a                                        ; $6f86: $67
	sbc  c                                           ; $6f87: $99
	sbc  b                                           ; $6f88: $98
	ld   [hl], a                                     ; $6f89: $77
	adc  c                                           ; $6f8a: $89
	sbc  e                                           ; $6f8b: $9b
	cp   c                                           ; $6f8c: $b9
	sbc  c                                           ; $6f8d: $99
	adc  d                                           ; $6f8e: $8a
	sbc  d                                           ; $6f8f: $9a
	xor  d                                           ; $6f90: $aa
	sub  a                                           ; $6f91: $97
	ld   a, b                                        ; $6f92: $78
	sbc  c                                           ; $6f93: $99
	halt                                             ; $6f94: $76
	ld   d, l                                        ; $6f95: $55
	ld   h, a                                        ; $6f96: $67
	halt                                             ; $6f97: $76
	ld   d, h                                        ; $6f98: $54
	ld   d, [hl]                                     ; $6f99: $56
	adc  c                                           ; $6f9a: $89
	add  a                                           ; $6f9b: $87
	ld   a, b                                        ; $6f9c: $78
	sbc  d                                           ; $6f9d: $9a
	sbc  d                                           ; $6f9e: $9a
	sbc  c                                           ; $6f9f: $99
	xor  e                                           ; $6fa0: $ab
	cp   h                                           ; $6fa1: $bc
	cp   d                                           ; $6fa2: $ba
	sbc  d                                           ; $6fa3: $9a
	xor  c                                           ; $6fa4: $a9
	xor  b                                           ; $6fa5: $a8
	halt                                             ; $6fa6: $76
	ld   d, l                                        ; $6fa7: $55
	ld   h, [hl]                                     ; $6fa8: $66
	ld   h, l                                        ; $6fa9: $65
	ld   b, h                                        ; $6faa: $44
	ld   b, l                                        ; $6fab: $45
	ld   h, a                                        ; $6fac: $67
	ld   [hl], a                                     ; $6fad: $77
	ld   a, b                                        ; $6fae: $78
	sbc  c                                           ; $6faf: $99
	xor  e                                           ; $6fb0: $ab
	cp   d                                           ; $6fb1: $ba
	cp   d                                           ; $6fb2: $ba
	cp   e                                           ; $6fb3: $bb
	cp   e                                           ; $6fb4: $bb
	cp   e                                           ; $6fb5: $bb
	sbc  c                                           ; $6fb6: $99
	add  a                                           ; $6fb7: $87
	ld   h, l                                        ; $6fb8: $65
	ld   a, b                                        ; $6fb9: $78
	ld   [hl], l                                     ; $6fba: $75
	ld   [hl-], a                                    ; $6fbb: $32
	dec  [hl]                                        ; $6fbc: $35
	ld   a, b                                        ; $6fbd: $78
	halt                                             ; $6fbe: $76
	ld   d, a                                        ; $6fbf: $57
	xor  e                                           ; $6fc0: $ab
	res  5, c                                        ; $6fc1: $cb $a9
	xor  e                                           ; $6fc3: $ab
	db   $dd                                         ; $6fc4: $dd
	db   $db                                         ; $6fc5: $db
	xor  b                                           ; $6fc6: $a8
	adc  c                                           ; $6fc7: $89
	sbc  b                                           ; $6fc8: $98
	ld   h, l                                        ; $6fc9: $65
	ld   d, h                                        ; $6fca: $54
	ld   b, h                                        ; $6fcb: $44
	ld   b, e                                        ; $6fcc: $43
	inc  [hl]                                        ; $6fcd: $34
	ld   d, a                                        ; $6fce: $57
	ld   [hl], a                                     ; $6fcf: $77
	adc  c                                           ; $6fd0: $89
	cp   h                                           ; $6fd1: $bc
	db   $dd                                         ; $6fd2: $dd
	set  1, h                                        ; $6fd3: $cb $cc
	db   $ed                                         ; $6fd5: $ed
	cp   d                                           ; $6fd6: $ba
	ld   [hl], l                                     ; $6fd7: $75
	ld   d, l                                        ; $6fd8: $55
	ld   b, h                                        ; $6fd9: $44
	ld   d, h                                        ; $6fda: $54
	ld   [hl-], a                                    ; $6fdb: $32
	ld   [de], a                                     ; $6fdc: $12
	ld   [hl], $88                                   ; $6fdd: $36 $88
	add  a                                           ; $6fdf: $87
	xor  h                                           ; $6fe0: $ac
	rst  $38                                         ; $6fe1: $ff
	db   $fd                                         ; $6fe2: $fd
	cp   h                                           ; $6fe3: $bc
	rst  JumpTable                                         ; $6fe4: $df
	db   $db                                         ; $6fe5: $db
	add  l                                           ; $6fe6: $85
	ld   b, e                                        ; $6fe7: $43
	ld   [hl+], a                                    ; $6fe8: $22
	inc  sp                                          ; $6fe9: $33
	ld   de, $3412                                   ; $6fea: $11 $12 $34
	ld   l, c                                        ; $6fed: $69
	sbc  d                                           ; $6fee: $9a
	cp   [hl]                                        ; $6fef: $be
	rst  $38                                         ; $6ff0: $ff
	rst  $38                                         ; $6ff1: $ff
	db   $fd                                         ; $6ff2: $fd
	db   $dd                                         ; $6ff3: $dd
	jp   c, $2175                                    ; $6ff4: $da $75 $21

	ld   [de], a                                     ; $6ff7: $12
	ld   b, e                                        ; $6ff8: $43
	ld   de, $2511                                   ; $6ff9: $11 $11 $25
	sbc  d                                           ; $6ffc: $9a
	cp   h                                           ; $6ffd: $bc
	rst  JumpTable                                         ; $6ffe: $df
	rst  $38                                         ; $6fff: $ff
	rst  $38                                         ; $7000: $ff
	rst  $38                                         ; $7001: $ff
	call c, $3186                                    ; $7002: $dc $86 $31
	ld   de, $1111                                   ; $7005: $11 $11 $11
	ld   de, $6913                                   ; $7008: $11 $13 $69
	call $ffef                                       ; $700b: $cd $ef $ff
	rst  $38                                         ; $700e: $ff
	rst  $38                                         ; $700f: $ff
	cp   $95                                         ; $7010: $fe $95
	ld   de, $1111                                   ; $7012: $11 $11 $11
	ld   de, $1211                                   ; $7015: $11 $11 $12
	ld   l, d                                        ; $7018: $6a
	rst  $28                                         ; $7019: $ef
	rst  $38                                         ; $701a: $ff
	rst  $38                                         ; $701b: $ff
	rst  $38                                         ; $701c: $ff
	rst  $38                                         ; $701d: $ff
	db   $fd                                         ; $701e: $fd
	add  c                                           ; $701f: $81
	ld   de, $1111                                   ; $7020: $11 $11 $11
	ld   de, $1411                                   ; $7023: $11 $11 $14
	cp   a                                           ; $7026: $bf
	rst  $38                                         ; $7027: $ff
	rst  $38                                         ; $7028: $ff
	rst  $38                                         ; $7029: $ff
	rst  $38                                         ; $702a: $ff
	rst  $38                                         ; $702b: $ff
	ld   sp, hl                                      ; $702c: $f9
	ld   hl, $1111                                   ; $702d: $21 $11 $11
	ld   de, $1111                                   ; $7030: $11 $11 $11
	add  hl, sp                                      ; $7033: $39
	rst  $28                                         ; $7034: $ef
	rst  $38                                         ; $7035: $ff
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	rst  $38                                         ; $7039: $ff
	call nz, $1111                                   ; $703a: $c4 $11 $11
	ld   de, $1111                                   ; $703d: $11 $11 $11
	inc  d                                           ; $7040: $14
	xor  a                                           ; $7041: $af
	rst  $38                                         ; $7042: $ff
	rst  $38                                         ; $7043: $ff
	rst  $38                                         ; $7044: $ff
	rst  $38                                         ; $7045: $ff
	rst  $38                                         ; $7046: $ff
	ei                                               ; $7047: $fb
	ld   sp, $1111                                   ; $7048: $31 $11 $11
	ld   de, $1111                                   ; $704b: $11 $11 $11
	ld   e, c                                        ; $704e: $59
	rst  $28                                         ; $704f: $ef
	rst  $38                                         ; $7050: $ff
	rst  $38                                         ; $7051: $ff
	rst  $38                                         ; $7052: $ff
	rst  $38                                         ; $7053: $ff
	rst  $38                                         ; $7054: $ff
	sub  e                                           ; $7055: $93
	ld   de, $1111                                   ; $7056: $11 $11 $11
	ld   de, $2711                                   ; $7059: $11 $11 $27
	cp   a                                           ; $705c: $bf
	rst  $38                                         ; $705d: $ff
	rst  $38                                         ; $705e: $ff
	rst  $38                                         ; $705f: $ff
	rst  $38                                         ; $7060: $ff
	rst  $38                                         ; $7061: $ff
	add  $21                                         ; $7062: $c6 $21
	ld   de, $1111                                   ; $7064: $11 $11 $11
	ld   de, $9c15                                   ; $7067: $11 $15 $9c
	rst  $38                                         ; $706a: $ff
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	rst  $38                                         ; $706d: $ff
	rst  $38                                         ; $706e: $ff
	jp   hl                                          ; $706f: $e9


	ld   d, c                                        ; $7070: $51
	ld   de, $1111                                   ; $7071: $11 $11 $11
	ld   de, $8a14                                   ; $7074: $11 $14 $8a
	rst  $28                                         ; $7077: $ef
	rst  $38                                         ; $7078: $ff
	rst  $38                                         ; $7079: $ff
	rst  $38                                         ; $707a: $ff
	rst  $38                                         ; $707b: $ff
	ld   [$1162], a                                  ; $707c: $ea $62 $11
	ld   de, $1111                                   ; $707f: $11 $11 $11
	inc  d                                           ; $7082: $14
	ld   a, c                                        ; $7083: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7084: $cf
	rst  $38                                         ; $7085: $ff
	rst  $38                                         ; $7086: $ff
	rst  $38                                         ; $7087: $ff
	rst  $38                                         ; $7088: $ff
	ld   a, [$1164]                                  ; $7089: $fa $64 $11
	ld   de, $1111                                   ; $708c: $11 $11 $11
	inc  de                                          ; $708f: $13
	adc  c                                           ; $7090: $89
	rst  JumpTable                                         ; $7091: $df
	rst  $38                                         ; $7092: $ff
	rst  $38                                         ; $7093: $ff
	rst  $38                                         ; $7094: $ff
	rst  $38                                         ; $7095: $ff
	ld   a, [$1164]                                  ; $7096: $fa $64 $11
	ld   de, $1111                                   ; $7099: $11 $11 $11
	inc  de                                          ; $709c: $13
	adc  d                                           ; $709d: $8a
	adc  $ff                                         ; $709e: $ce $ff
	rst  $38                                         ; $70a0: $ff
	rst  $38                                         ; $70a1: $ff
	rst  $38                                         ; $70a2: $ff
	ei                                               ; $70a3: $fb
	ld   h, l                                        ; $70a4: $65
	ld   de, $1111                                   ; $70a5: $11 $11 $11
	ld   de, $8a14                                   ; $70a8: $11 $14 $8a
	adc  $ff                                         ; $70ab: $ce $ff
	rst  $38                                         ; $70ad: $ff
	rst  $38                                         ; $70ae: $ff
	rst  $38                                         ; $70af: $ff
	ld   a, [$1174]                                  ; $70b0: $fa $74 $11
	ld   de, $1111                                   ; $70b3: $11 $11 $11
	dec  d                                           ; $70b6: $15
	adc  d                                           ; $70b7: $8a
	call $ffff                                       ; $70b8: $cd $ff $ff
	rst  $38                                         ; $70bb: $ff
	rst  $38                                         ; $70bc: $ff
	jp   hl                                          ; $70bd: $e9


	ld   [hl], e                                     ; $70be: $73
	ld   de, $1111                                   ; $70bf: $11 $11 $11
	ld   de, $8a37                                   ; $70c2: $11 $37 $8a
	call z, $ffff                                    ; $70c5: $cc $ff $ff
	rst  $38                                         ; $70c8: $ff
	rst  $38                                         ; $70c9: $ff
	rst  $10                                         ; $70ca: $d7
	ld   h, c                                        ; $70cb: $61
	ld   de, $1111                                   ; $70cc: $11 $11 $11
	ld   [hl+], a                                    ; $70cf: $22
	ld   a, b                                        ; $70d0: $78
	adc  d                                           ; $70d1: $8a
	xor  h                                           ; $70d2: $ac
	rst  $38                                         ; $70d3: $ff
	rst  $38                                         ; $70d4: $ff
	rst  $38                                         ; $70d5: $ff
	rst  JumpTable                                         ; $70d6: $df
	sub  a                                           ; $70d7: $97
	ld   b, c                                        ; $70d8: $41
	ld   sp, $1311                                   ; $70d9: $31 $11 $13
	ld   b, [hl]                                     ; $70dc: $46
	and  a                                           ; $70dd: $a7
	cp   c                                           ; $70de: $b9
	xor  l                                           ; $70df: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70e0: $cf
	rst  $38                                         ; $70e1: $ff
	db   $fd                                         ; $70e2: $fd
	reti                                             ; $70e3: $d9


	ld   h, [hl]                                     ; $70e4: $66
	dec  h                                           ; $70e5: $25
	ld   de, $5511                                   ; $70e6: $11 $11 $55
	ld   l, d                                        ; $70e9: $6a
	ld   a, c                                        ; $70ea: $79
	sbc  b                                           ; $70eb: $98
	cp   d                                           ; $70ec: $ba
	sbc  $ef                                         ; $70ed: $de $ef
	call Call_0f6_7486                               ; $70ef: $cd $86 $74
	ld   h, e                                        ; $70f2: $63
	ld   [de], a                                     ; $70f3: $12
	ld   h, $68                                      ; $70f4: $26 $68
	and  a                                           ; $70f6: $a7
	sub  a                                           ; $70f7: $97
	ld   a, c                                        ; $70f8: $79
	sbc  h                                           ; $70f9: $9c
	call $b7eb                                       ; $70fa: $cd $eb $b7
	halt                                             ; $70fd: $76
	ld   h, [hl]                                     ; $70fe: $66
	inc  sp                                          ; $70ff: $33
	ld   [hl], $77                                   ; $7100: $36 $77
	xor  b                                           ; $7102: $a8
	sbc  b                                           ; $7103: $98
	ld   l, b                                        ; $7104: $68
	adc  c                                           ; $7105: $89
	cp   e                                           ; $7106: $bb
	call c, $78b9                                    ; $7107: $dc $b9 $78
	ld   h, a                                        ; $710a: $67
	ld   d, h                                        ; $710b: $54
	ld   d, l                                        ; $710c: $55
	add  a                                           ; $710d: $87
	sbc  c                                           ; $710e: $99
	ld   a, b                                        ; $710f: $78
	ld   h, a                                        ; $7110: $67
	adc  b                                           ; $7111: $88
	xor  e                                           ; $7112: $ab
	call c, Call_0f6_66a8                            ; $7113: $dc $a8 $66
	ld   h, a                                        ; $7116: $67
	ld   h, h                                        ; $7117: $64
	ld   d, [hl]                                     ; $7118: $56
	ld   [hl], a                                     ; $7119: $77
	xor  d                                           ; $711a: $aa
	sbc  b                                           ; $711b: $98
	ld   a, b                                        ; $711c: $78
	adc  c                                           ; $711d: $89
	sbc  d                                           ; $711e: $9a
	db   $dd                                         ; $711f: $dd
	and  a                                           ; $7120: $a7
	ld   d, l                                        ; $7121: $55
	ld   h, [hl]                                     ; $7122: $66
	ld   d, l                                        ; $7123: $55
	ld   h, a                                        ; $7124: $67
	ld   [hl], a                                     ; $7125: $77
	sbc  b                                           ; $7126: $98
	sbc  b                                           ; $7127: $98
	ld   a, c                                        ; $7128: $79
	sbc  d                                           ; $7129: $9a
	xor  h                                           ; $712a: $ac
	db   $ed                                         ; $712b: $ed
	and  [hl]                                        ; $712c: $a6
	ld   d, l                                        ; $712d: $55
	ld   h, [hl]                                     ; $712e: $66
	ld   d, [hl]                                     ; $712f: $56
	ld   h, a                                        ; $7130: $67
	ld   h, a                                        ; $7131: $67
	sbc  b                                           ; $7132: $98
	add  a                                           ; $7133: $87
	adc  c                                           ; $7134: $89
	sbc  d                                           ; $7135: $9a
	xor  l                                           ; $7136: $ad
	db   $fc                                         ; $7137: $fc
	sub  [hl]                                        ; $7138: $96
	ld   b, l                                        ; $7139: $45
	ld   h, l                                        ; $713a: $65
	ld   d, l                                        ; $713b: $55
	ld   h, [hl]                                     ; $713c: $66
	ld   d, a                                        ; $713d: $57
	add  a                                           ; $713e: $87
	add  a                                           ; $713f: $87
	adc  c                                           ; $7140: $89
	sbc  e                                           ; $7141: $9b
	adc  $ec                                         ; $7142: $ce $ec
	sub  l                                           ; $7144: $95
	ld   d, l                                        ; $7145: $55
	ld   d, l                                        ; $7146: $55
	ld   d, [hl]                                     ; $7147: $56
	ld   h, l                                        ; $7148: $65
	ld   d, a                                        ; $7149: $57
	ld   [hl], a                                     ; $714a: $77

jr_0f6_714b:
	ld   [hl], a                                     ; $714b: $77
	adc  b                                           ; $714c: $88
	cp   e                                           ; $714d: $bb
	rst  JumpTable                                         ; $714e: $df
	db   $ec                                         ; $714f: $ec
	ld   [hl], l                                     ; $7150: $75
	ld   h, [hl]                                     ; $7151: $66
	ld   d, l                                        ; $7152: $55
	ld   h, a                                        ; $7153: $67
	ld   h, h                                        ; $7154: $64
	ld   h, [hl]                                     ; $7155: $66
	ld   h, a                                        ; $7156: $67
	ld   l, b                                        ; $7157: $68
	adc  d                                           ; $7158: $8a
	set  7, a                                        ; $7159: $cb $ff
	jp   c, Jump_0f6_6665                            ; $715b: $da $65 $66

	ld   d, [hl]                                     ; $715e: $56
	ld   h, a                                        ; $715f: $67
	ld   b, l                                        ; $7160: $45
	ld   h, l                                        ; $7161: $65
	ld   h, [hl]                                     ; $7162: $66
	ld   l, b                                        ; $7163: $68
	ld   a, d                                        ; $7164: $7a
	call $b7ff                                       ; $7165: $cd $ff $b7
	ld   b, [hl]                                     ; $7168: $46
	ld   h, l                                        ; $7169: $65
	ld   h, [hl]                                     ; $716a: $66
	add  [hl]                                        ; $716b: $86
	ld   b, a                                        ; $716c: $47
	ld   d, l                                        ; $716d: $55
	ld   [hl], l                                     ; $716e: $75
	adc  b                                           ; $716f: $88
	sbc  h                                           ; $7170: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7171: $cf
	db   $fc                                         ; $7172: $fc
	sub  h                                           ; $7173: $94
	ld   d, a                                        ; $7174: $57
	ld   b, [hl]                                     ; $7175: $46
	ld   [hl], a                                     ; $7176: $77
	add  e                                           ; $7177: $83
	ld   h, [hl]                                     ; $7178: $66
	ld   b, a                                        ; $7179: $47
	ld   d, a                                        ; $717a: $57
	adc  b                                           ; $717b: $88
	call z, $daff                                    ; $717c: $cc $ff $da
	ld   d, h                                        ; $717f: $54
	ld   [hl], l                                     ; $7180: $75
	ld   b, a                                        ; $7181: $47
	ld   a, c                                        ; $7182: $79
	ld   b, h                                        ; $7183: $44
	ld   h, e                                        ; $7184: $63
	halt                                             ; $7185: $76
	ld   l, c                                        ; $7186: $69
	sbc  h                                           ; $7187: $9c
	rst  JumpTable                                         ; $7188: $df
	cp   $96                                         ; $7189: $fe $96
	ld   [hl], $53                                   ; $718b: $36 $53
	halt                                             ; $718d: $76
	sub  l                                           ; $718e: $95
	ld   [hl], $26                                   ; $718f: $36 $26
	ld   h, l                                        ; $7191: $65
	sbc  c                                           ; $7192: $99
	call $eaff                                       ; $7193: $cd $ff $ea
	ld   d, d                                        ; $7196: $52
	ld   h, l                                        ; $7197: $65
	scf                                              ; $7198: $37
	ld   a, b                                        ; $7199: $78
	ld   d, e                                        ; $719a: $53
	ld   h, d                                        ; $719b: $62
	ld   d, [hl]                                     ; $719c: $56
	ld   e, b                                        ; $719d: $58
	sbc  h                                           ; $719e: $9c
	rst  $28                                         ; $719f: $ef
	rst  $38                                         ; $71a0: $ff
	sub  l                                           ; $71a1: $95
	ld   [hl], $54                                   ; $71a2: $36 $54
	add  a                                           ; $71a4: $87
	sub  [hl]                                        ; $71a5: $96
	dec  [hl]                                        ; $71a6: $35
	ld   h, $65                                      ; $71a7: $26 $65
	sbc  b                                           ; $71a9: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71aa: $cf
	rst  $38                                         ; $71ab: $ff
	ld   a, [$6441]                                  ; $71ac: $fa $41 $64

Call_0f6_71af:
	jr   c, jr_0f6_714b                              ; $71af: $38 $9a

	ld   h, h                                        ; $71b1: $64
	ld   d, d                                        ; $71b2: $52
	ld   h, [hl]                                     ; $71b3: $66
	ld   e, c                                        ; $71b4: $59
	xor  l                                           ; $71b5: $ad
	rst  $38                                         ; $71b6: $ff
	cp   $73                                         ; $71b7: $fe $73
	dec  d                                           ; $71b9: $15
	inc  sp                                          ; $71ba: $33
	adc  c                                           ; $71bb: $89
	or   l                                           ; $71bc: $b5
	ld   b, l                                        ; $71bd: $45
	daa                                              ; $71be: $27
	ld   h, [hl]                                     ; $71bf: $66
	xor  d                                           ; $71c0: $aa
	rst  $28                                         ; $71c1: $ef
	rst  $38                                         ; $71c2: $ff
	or   l                                           ; $71c3: $b5
	ld   de, $4841                                   ; $71c4: $11 $41 $48
	xor  d                                           ; $71c7: $aa
	ld   d, [hl]                                     ; $71c8: $56
	ld   d, h                                        ; $71c9: $54
	and  [hl]                                        ; $71ca: $a6
	adc  h                                           ; $71cb: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71cc: $cf
	rst  $38                                         ; $71cd: $ff
	ld   hl, sp+$11                                  ; $71ce: $f8 $11
	ld   de, $ac14                                   ; $71d0: $11 $14 $ac
	rst  ToBoot                                         ; $71d3: $c7
	add  [hl]                                        ; $71d4: $86
	xor  h                                           ; $71d5: $ac
	adc  h                                           ; $71d6: $8c
	rst  $28                                         ; $71d7: $ef
	rst  $38                                         ; $71d8: $ff
	cp   $11                                         ; $71d9: $fe $11
	ld   de, $7911                                   ; $71db: $11 $11 $79
	db   $fd                                         ; $71de: $fd
	xor  l                                           ; $71df: $ad
	ld   l, [hl]                                     ; $71e0: $6e
	cp   c                                           ; $71e1: $b9
	rst  $38                                         ; $71e2: $ff
	rst  $38                                         ; $71e3: $ff
	rst  $38                                         ; $71e4: $ff
	ld   b, c                                        ; $71e5: $41
	ld   de, $5d11                                   ; $71e6: $11 $11 $5d
	rst  $38                                         ; $71e9: $ff
	db   $ed                                         ; $71ea: $ed
	ld   [hl], a                                     ; $71eb: $77
	ret  z                                           ; $71ec: $c8

	rst  $38                                         ; $71ed: $ff
	rst  $38                                         ; $71ee: $ff
	rst  $38                                         ; $71ef: $ff
	and  c                                           ; $71f0: $a1
	ld   de, $4f11                                   ; $71f1: $11 $11 $4f
	rst  $38                                         ; $71f4: $ff
	ld   sp, hl                                      ; $71f5: $f9
	add  c                                           ; $71f6: $81
	db   $dd                                         ; $71f7: $dd
	rst  $38                                         ; $71f8: $ff
	rst  $38                                         ; $71f9: $ff
	cp   $c1                                         ; $71fa: $fe $c1
	ld   de, $2f11                                   ; $71fc: $11 $11 $2f
	rst  $38                                         ; $71ff: $ff
	or   $61                                         ; $7200: $f6 $61
	ld   a, a                                        ; $7202: $7f
	rst  $28                                         ; $7203: $ef
	rst  $38                                         ; $7204: $ff
	ld   a, [$1193]                                  ; $7205: $fa $93 $11
	ld   de, $fd1c                                   ; $7208: $11 $1c $fd
	rst  $30                                         ; $720b: $f7
	ld   d, l                                        ; $720c: $55
	ld   e, a                                        ; $720d: $5f
	rst  $38                                         ; $720e: $ff
	rst  $38                                         ; $720f: $ff
	ei                                               ; $7210: $fb
	ld   a, d                                        ; $7211: $7a
	ld   de, $1411                                   ; $7212: $11 $11 $14
	db   $fd                                         ; $7215: $fd
	cp   $68                                         ; $7216: $fe $68
	ccf                                              ; $7218: $3f
	rst  $38                                         ; $7219: $ff
	rst  $38                                         ; $721a: $ff
	rst  JumpTable                                         ; $721b: $df
	xor  l                                           ; $721c: $ad
	ld   [hl], c                                     ; $721d: $71
	ld   de, $df11                                   ; $721e: $11 $11 $df
	rst  $38                                         ; $7221: $ff
	ld   [hl], l                                     ; $7222: $75
	scf                                              ; $7223: $37
	rst  $38                                         ; $7224: $ff
	rst  $38                                         ; $7225: $ff
	call z, $b1ba                                    ; $7226: $cc $ba $b1
	ld   de, $7f11                                   ; $7229: $11 $11 $7f
	rst  $38                                         ; $722c: $ff
	call nc, $ff63                                   ; $722d: $d4 $63 $ff
	rst  $38                                         ; $7230: $ff
	ld   sp, hl                                      ; $7231: $f9
	jp   z, $11e7                                    ; $7232: $ca $e7 $11

	ld   de, $ff1f                                   ; $7235: $11 $1f $ff
	or   $63                                         ; $7238: $f6 $63
	ld   a, a                                        ; $723a: $7f
	rst  $38                                         ; $723b: $ff
	ld   sp, hl                                      ; $723c: $f9
	xor  c                                           ; $723d: $a9
	xor  l                                           ; $723e: $ad
	ld   de, $1b11                                   ; $723f: $11 $11 $1b
	rst  $38                                         ; $7242: $ff
	db   $fc                                         ; $7243: $fc
	dec  [hl]                                        ; $7244: $35
	ccf                                              ; $7245: $3f
	rst  $38                                         ; $7246: $ff
	db   $fc                                         ; $7247: $fc
	ld   e, c                                        ; $7248: $59
	xor  [hl]                                        ; $7249: $ae
	ld   h, c                                        ; $724a: $61
	ld   de, $ff15                                   ; $724b: $11 $15 $ff
	rst  $38                                         ; $724e: $ff
	inc  hl                                          ; $724f: $23
	ld   e, $ff                                      ; $7250: $1e $ff
	rst  $38                                         ; $7252: $ff
	ld   h, $af                                      ; $7253: $26 $af
	pop  af                                          ; $7255: $f1
	ld   de, rAUD1LEN                                   ; $7256: $11 $11 $ff
	rst  $38                                         ; $7259: $ff
	ld   d, d                                        ; $725a: $52
	rla                                              ; $725b: $17
	rst  $38                                         ; $725c: $ff
	rst  $38                                         ; $725d: $ff
	inc  hl                                          ; $725e: $23
	ld   a, l                                        ; $725f: $7d
	db   $f4                                         ; $7260: $f4
	ld   de, $cf11                                   ; $7261: $11 $11 $cf
	rst  $38                                         ; $7264: $ff
	pop  bc                                          ; $7265: $c1
	ld   de, $ffff                                   ; $7266: $11 $ff $ff
	add  c                                           ; $7269: $81
	ld   c, l                                        ; $726a: $4d
	rst  $38                                         ; $726b: $ff
	ld   de, $1f11                                   ; $726c: $11 $11 $1f
	rst  $38                                         ; $726f: $ff
	pop  af                                          ; $7270: $f1
	ld   de, $ffaf                                   ; $7271: $11 $af $ff
	pop  af                                          ; $7274: $f1
	add  hl, de                                      ; $7275: $19
	rst  $38                                         ; $7276: $ff
	add  c                                           ; $7277: $81
	ld   de, $ff1e                                   ; $7278: $11 $1e $ff
	ld   sp, hl                                      ; $727b: $f9
	ld   de, $ff1f                                   ; $727c: $11 $1f $ff
	di                                               ; $727f: $f3
	ld   de, $f1ef                                   ; $7280: $11 $ef $f1
	ld   de, rAUD1LEN                                   ; $7283: $11 $11 $ff
	rst  $38                                         ; $7286: $ff
	ld   de, $ff1b                                   ; $7287: $11 $1b $ff
	db   $fd                                         ; $728a: $fd
	ld   de, $f98f                                   ; $728b: $11 $8f $f9
	ld   de, rAUD1LEN                                   ; $728e: $11 $11 $ff
	rst  $38                                         ; $7291: $ff
	ld   b, c                                        ; $7292: $41
	inc  de                                          ; $7293: $13
	rst  $38                                         ; $7294: $ff
	rst  $38                                         ; $7295: $ff
	ld   de, $ff2f                                   ; $7296: $11 $2f $ff
	ld   de, $8f11                                   ; $7299: $11 $11 $8f
	rst  $38                                         ; $729c: $ff
	and  c                                           ; $729d: $a1
	ld   de, $ffff                                   ; $729e: $11 $ff $ff
	ld   hl, $ff1f                                   ; $72a1: $21 $1f $ff
	ld   d, c                                        ; $72a4: $51
	ld   de, $ff1f                                   ; $72a5: $11 $1f $ff
	pop  af                                          ; $72a8: $f1
	ld   de, $ffbf                                   ; $72a9: $11 $bf $ff
	ld   d, c                                        ; $72ac: $51
	rla                                              ; $72ad: $17
	rst  $38                                         ; $72ae: $ff
	pop  af                                          ; $72af: $f1
	ld   de, $ff1f                                   ; $72b0: $11 $1f $ff
	pop  af                                          ; $72b3: $f1
	ld   de, $ff6f                                   ; $72b4: $11 $6f $ff
	ld   h, c                                        ; $72b7: $61
	ld   de, $f7ff                                   ; $72b8: $11 $ff $f7
	ld   de, $ff15                                   ; $72bb: $11 $15 $ff
	push af                                          ; $72be: $f5
	ld   de, $ff1f                                   ; $72bf: $11 $1f $ff
	pop  de                                          ; $72c2: $d1
	ld   de, $ffcf                                   ; $72c3: $11 $cf $ff
	ld   de, rAUD1LEN                                   ; $72c6: $11 $11 $ff
	cp   $11                                         ; $72c9: $fe $11
	rra                                              ; $72cb: $1f
	rst  $38                                         ; $72cc: $ff
	pop  af                                          ; $72cd: $f1
	ld   de, $ff1f                                   ; $72ce: $11 $1f $ff
	ld   d, c                                        ; $72d1: $51
	ld   de, $ffcf                                   ; $72d2: $11 $cf $ff
	ld   de, rAUD1HIGH                                   ; $72d5: $11 $14 $ff
	or   $11                                         ; $72d8: $f6 $11
	rra                                              ; $72da: $1f
	rst  $38                                         ; $72db: $ff
	pop  af                                          ; $72dc: $f1
	ld   de, $ff1f                                   ; $72dd: $11 $1f $ff
	ld   [hl], c                                     ; $72e0: $71
	ld   de, $ffff                                   ; $72e1: $11 $ff $ff
	ld   de, $ff18                                   ; $72e4: $11 $18 $ff
	pop  af                                          ; $72e7: $f1
	ld   de, $ff1f                                   ; $72e8: $11 $1f $ff
	pop  af                                          ; $72eb: $f1
	ld   de, $ffef                                   ; $72ec: $11 $ef $ff
	ld   de, rAUD1HIGH                                   ; $72ef: $11 $14 $ff
	db   $fd                                         ; $72f2: $fd
	ld   de, rAUD1LEN                                   ; $72f3: $11 $11 $ff
	rst  $30                                         ; $72f6: $f7
	ld   de, $ff8f                                   ; $72f7: $11 $8f $ff
	ld   [hl], c                                     ; $72fa: $71
	ld   de, $ffff                                   ; $72fb: $11 $ff $ff
	ld   d, c                                        ; $72fe: $51
	ld   de, $fd1f                                   ; $72ff: $11 $1f $fd
	ld   d, c                                        ; $7302: $51
	rra                                              ; $7303: $1f
	rst  $38                                         ; $7304: $ff
	db   $d3                                         ; $7305: $d3
	ld   de, $ff8f                                   ; $7306: $11 $8f $ff
	ld   hl, sp+$11                                  ; $7309: $f8 $11
	ld   de, $c9ff                                   ; $730b: $11 $ff $c9
	dec  d                                           ; $730e: $15
	rst  $38                                         ; $730f: $ff
	ei                                               ; $7310: $fb
	ld   d, c                                        ; $7311: $51
	jr   @-$2f                                       ; $7312: $18 $cf

	rst  $38                                         ; $7314: $ff
	or   c                                           ; $7315: $b1
	ld   de, $ff1f                                   ; $7316: $11 $1f $ff
	sub  c                                           ; $7319: $91
	dec  l                                           ; $731a: $2d
	rst  $38                                         ; $731b: $ff
	rst  $20                                         ; $731c: $e7
	ld   de, $ff5d                                   ; $731d: $11 $5d $ff
	rst  $30                                         ; $7320: $f7
	ld   de, rAUD1ENV                                   ; $7321: $11 $12 $ff
	call nz, $ff16                                   ; $7324: $c4 $16 $ff
	rst  $30                                         ; $7327: $f7
	ld   sp, $ff1b                                   ; $7328: $31 $1b $ff
	db   $fc                                         ; $732b: $fc
	ld   de, $7f11                                   ; $732c: $11 $11 $7f
	jp   z, $df01                                    ; $732f: $ca $01 $df

	rst  $38                                         ; $7332: $ff
	ld   [hl-], a                                    ; $7333: $32
	inc  de                                          ; $7334: $13
	rst  JumpTable                                         ; $7335: $df
	rst  $38                                         ; $7336: $ff
	db   $e3                                         ; $7337: $e3
	ld   de, $f914                                   ; $7338: $11 $14 $f9
	sub  h                                           ; $733b: $94
	rra                                              ; $733c: $1f
	rst  $38                                         ; $733d: $ff
	ldh  a, [c]                                      ; $733e: $f2
	ld   sp, $ff4c                                   ; $733f: $31 $4c $ff
	cp   $41                                         ; $7342: $fe $41
	ld   de, $8a5f                                   ; $7344: $11 $5f $8a
	ld   hl, $ffff                                   ; $7347: $21 $ff $ff
	inc  de                                          ; $734a: $13
	add  hl, de                                      ; $734b: $19
	rst  $38                                         ; $734c: $ff
	ei                                               ; $734d: $fb
	or   l                                           ; $734e: $b5
	ld   de, $f714                                   ; $734f: $11 $14 $f7
	or   l                                           ; $7352: $b5
	cpl                                              ; $7353: $2f
	rst  $38                                         ; $7354: $ff
	db   $d3                                         ; $7355: $d3
	ld   d, e                                        ; $7356: $53
	adc  $bf                                         ; $7357: $ce $bf
	cp   e                                           ; $7359: $bb
	ld   h, c                                        ; $735a: $61
	ld   de, $7b5d                                   ; $735b: $11 $5d $7b
	ld   b, e                                        ; $735e: $43
	rst  $38                                         ; $735f: $ff
	db   $fd                                         ; $7360: $fd
	ld   h, l                                        ; $7361: $65
	dec  l                                           ; $7362: $2d
	db   $dd                                         ; $7363: $dd
	db   $fc                                         ; $7364: $fc
	call nz, $1511                                   ; $7365: $c4 $11 $15
	add  $a4                                         ; $7368: $c6 $a4
	ld   l, a                                        ; $736a: $6f
	rst  $38                                         ; $736b: $ff
	or   [hl]                                        ; $736c: $b6
	ld   d, h                                        ; $736d: $54
	db   $dd                                         ; $736e: $dd
	cp   a                                           ; $736f: $bf
	rst  $38                                         ; $7370: $ff
	ld   h, c                                        ; $7371: $61
	ld   de, $b91e                                   ; $7372: $11 $1e $b9
	ld   b, c                                        ; $7375: $41
	rst  $38                                         ; $7376: $ff
	rst  $38                                         ; $7377: $ff
	ld   h, [hl]                                     ; $7378: $66
	add  hl, sp                                      ; $7379: $39
	db   $ed                                         ; $737a: $ed
	db   $ed                                         ; $737b: $ed
	and  $11                                         ; $737c: $e6 $11
	ld   de, $75c9                                   ; $737e: $11 $c9 $75
	ld   c, h                                        ; $7381: $4c
	rst  $38                                         ; $7382: $ff
	ld   a, [$9b85]                                  ; $7383: $fa $85 $9b
	adc  $ff                                         ; $7386: $ce $ff
	ld   [hl], c                                     ; $7388: $71
	ld   de, $b61a                                   ; $7389: $11 $1a $b6
	ld   [hl+], a                                    ; $738c: $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $738d: $cf
	rst  $38                                         ; $738e: $ff
	sub  [hl]                                        ; $738f: $96
	ld   l, d                                        ; $7390: $6a
	jp   z, $fccd                                    ; $7391: $ca $cd $fc

	ld   de, $8c11                                   ; $7394: $11 $11 $8c
	ld   h, d                                        ; $7397: $62
	rla                                              ; $7398: $17
	rst  $38                                         ; $7399: $ff
	ei                                               ; $739a: $fb

Jump_0f6_739b:
	ld   h, a                                        ; $739b: $67
	cp   [hl]                                        ; $739c: $be
	xor  c                                           ; $739d: $a9
	cp   a                                           ; $739e: $bf
	or   $11                                         ; $739f: $f6 $11
	inc  d                                           ; $73a1: $14
	rst  $30                                         ; $73a2: $f7
	ld   de, $ff2f                                   ; $73a3: $11 $2f $ff
	call nc, $fe7b                                   ; $73a6: $d4 $7b $fe
	xor  c                                           ; $73a9: $a9
	xor  a                                           ; $73aa: $af
	and  c                                           ; $73ab: $a1
	ld   de, $b51a                                   ; $73ac: $11 $1a $b5
	ld   de, $ffbf                                   ; $73af: $11 $bf $ff
	sub  h                                           ; $73b2: $94
	ld   a, a                                        ; $73b3: $7f
	db   $fc                                         ; $73b4: $fc
	cp   c                                           ; $73b5: $b9
	rst  JumpTable                                         ; $73b6: $df
	ld   h, c                                        ; $73b7: $61
	ld   de, $721b                                   ; $73b8: $11 $1b $72
	ld   de, $ffff                                   ; $73bb: $11 $ff $ff
	ld   [hl], l                                     ; $73be: $75
	sbc  a                                           ; $73bf: $9f
	db   $fc                                         ; $73c0: $fc
	xor  h                                           ; $73c1: $ac
	ei                                               ; $73c2: $fb
	ld   hl, $6811                                   ; $73c3: $21 $11 $68
	ld   hl, $ff15                                   ; $73c6: $21 $15 $ff
	db   $fd                                         ; $73c9: $fd
	sbc  d                                           ; $73ca: $9a
	rst  $28                                         ; $73cb: $ef
	jp   c, $fa9d                                    ; $73cc: $da $9d $fa

	ld   de, $4711                                   ; $73cf: $11 $11 $47
	ld   de, $ff19                                   ; $73d2: $11 $19 $ff
	db   $fc                                         ; $73d5: $fc
	sbc  h                                           ; $73d6: $9c
	rst  $28                                         ; $73d7: $ef
	cp   c                                           ; $73d8: $b9
	cp   a                                           ; $73d9: $bf
	rst  $30                                         ; $73da: $f7
	ld   de, $5511                                   ; $73db: $11 $11 $55
	ld   [de], a                                     ; $73de: $12
	ld   c, c                                        ; $73df: $49
	rst  $38                                         ; $73e0: $ff
	cp   $ee                                         ; $73e1: $fe $ee
	res  7, h                                        ; $73e3: $cb $bc
	rst  $28                                         ; $73e5: $ef
	push af                                          ; $73e6: $f5
	ld   de, $1211                                   ; $73e7: $11 $11 $12
	ld   [de], a                                     ; $73ea: $12
	ld   [hl], a                                     ; $73eb: $77
	cp   a                                           ; $73ec: $bf
	rst  $38                                         ; $73ed: $ff
	rst  $38                                         ; $73ee: $ff
	cp   d                                           ; $73ef: $ba
	sbc  $ff                                         ; $73f0: $de $ff
	rst  ToBoot                                         ; $73f2: $c7
	ld   sp, $1111                                   ; $73f3: $31 $11 $11
	inc  hl                                          ; $73f6: $23
	ld   h, l                                        ; $73f7: $65
	ld   l, h                                        ; $73f8: $6c
	rst  $38                                         ; $73f9: $ff
	cp   $cc                                         ; $73fa: $fe $cc
	sbc  $cd                                         ; $73fc: $de $cd
	call c, $1183                                    ; $73fe: $dc $83 $11
	ld   de, $4425                                   ; $7401: $11 $25 $44
	ld   d, [hl]                                     ; $7404: $56
	cp   a                                           ; $7405: $bf
	xor  $ee                                         ; $7406: $ee $ee
	db   $eb                                         ; $7408: $eb
	xor  e                                           ; $7409: $ab
	rst  JumpTable                                         ; $740a: $df
	add  sp, $31                                     ; $740b: $e8 $31
	ld   hl, $1311                                   ; $740d: $21 $11 $13
	ld   b, h                                        ; $7410: $44
	ld   d, l                                        ; $7411: $55
	sbc  e                                           ; $7412: $9b
	rst  $38                                         ; $7413: $ff
	db   $ec                                         ; $7414: $ec
	res  5, l                                        ; $7415: $cb $ad
	call c, Call_0f6_53bb                            ; $7417: $dc $bb $53
	ld   d, d                                        ; $741a: $52
	ld   hl, $4524                                   ; $741b: $21 $24 $45
	ld   b, h                                        ; $741e: $44
	ld   a, d                                        ; $741f: $7a
	cp   h                                           ; $7420: $bc
	call c, $aadd                                    ; $7421: $dc $dd $aa
	call z, Call_0f6_75de                            ; $7424: $cc $de $75
	ld   b, l                                        ; $7427: $45
	ld   h, e                                        ; $7428: $63
	inc  sp                                          ; $7429: $33
	ld   d, [hl]                                     ; $742a: $56
	ld   b, e                                        ; $742b: $43
	inc  h                                           ; $742c: $24
	ld   a, d                                        ; $742d: $7a
	res  7, h                                        ; $742e: $cb $bc
	db   $db                                         ; $7430: $db
	res  7, h                                        ; $7431: $cb $bc
	jp   z, $8888                                    ; $7433: $ca $88 $88

	ld   d, e                                        ; $7436: $53
	inc  hl                                          ; $7437: $23
	ld   h, l                                        ; $7438: $65
	ld   [hl-], a                                    ; $7439: $32
	dec  h                                           ; $743a: $25
	adc  d                                           ; $743b: $8a
	xor  e                                           ; $743c: $ab
	cp   e                                           ; $743d: $bb
	jp   z, $dd9b                                    ; $743e: $ca $9b $dd

	db   $db                                         ; $7441: $db
	add  a                                           ; $7442: $87
	ld   h, a                                        ; $7443: $67
	ld   h, l                                        ; $7444: $65
	ld   d, d                                        ; $7445: $52
	ld   b, [hl]                                     ; $7446: $46
	ld   d, l                                        ; $7447: $55
	inc  [hl]                                        ; $7448: $34
	ld   b, [hl]                                     ; $7449: $46
	sbc  b                                           ; $744a: $98
	xor  e                                           ; $744b: $ab
	cp   h                                           ; $744c: $bc
	cp   d                                           ; $744d: $ba
	cp   e                                           ; $744e: $bb
	call z, Call_0f6_78b8                            ; $744f: $cc $b8 $78
	sbc  b                                           ; $7452: $98
	ld   a, b                                        ; $7453: $78
	ld   b, h                                        ; $7454: $44
	ld   b, l                                        ; $7455: $45
	ld   d, h                                        ; $7456: $54
	ld   d, h                                        ; $7457: $54
	ld   d, a                                        ; $7458: $57
	ld   a, b                                        ; $7459: $78
	sbc  d                                           ; $745a: $9a
	xor  e                                           ; $745b: $ab
	xor  c                                           ; $745c: $a9
	xor  e                                           ; $745d: $ab
	res  7, d                                        ; $745e: $cb $ba
	sbc  e                                           ; $7460: $9b
	adc  c                                           ; $7461: $89
	add  [hl]                                        ; $7462: $86
	sub  [hl]                                        ; $7463: $96
	ld   h, l                                        ; $7464: $65
	ld   h, l                                        ; $7465: $65
	ld   d, l                                        ; $7466: $55
	ld   b, l                                        ; $7467: $45
	ld   d, a                                        ; $7468: $57
	ld   a, c                                        ; $7469: $79
	sbc  c                                           ; $746a: $99
	xor  c                                           ; $746b: $a9
	cp   c                                           ; $746c: $b9
	xor  d                                           ; $746d: $aa
	cp   e                                           ; $746e: $bb
	xor  e                                           ; $746f: $ab
	sbc  d                                           ; $7470: $9a
	xor  c                                           ; $7471: $a9
	adc  c                                           ; $7472: $89
	adc  b                                           ; $7473: $88
	halt                                             ; $7474: $76
	ld   h, l                                        ; $7475: $65
	ld   d, l                                        ; $7476: $55
	ld   d, h                                        ; $7477: $54
	ld   h, l                                        ; $7478: $65
	ld   h, [hl]                                     ; $7479: $66
	ld   a, b                                        ; $747a: $78
	adc  d                                           ; $747b: $8a
	sbc  b                                           ; $747c: $98
	sbc  c                                           ; $747d: $99
	sbc  h                                           ; $747e: $9c
	cp   h                                           ; $747f: $bc
	call z, $8aa9                                    ; $7480: $cc $a9 $8a
	sbc  c                                           ; $7483: $99
	sub  a                                           ; $7484: $97
	ld   a, b                                        ; $7485: $78

Call_0f6_7486:
	ld   d, l                                        ; $7486: $55
	ld   d, h                                        ; $7487: $54
	ld   d, e                                        ; $7488: $53
	ld   h, l                                        ; $7489: $65
	ld   h, [hl]                                     ; $748a: $66
	ld   l, d                                        ; $748b: $6a
	ld   a, d                                        ; $748c: $7a
	sbc  d                                           ; $748d: $9a
	xor  b                                           ; $748e: $a8
	cp   d                                           ; $748f: $ba
	xor  d                                           ; $7490: $aa
	xor  e                                           ; $7491: $ab
	xor  c                                           ; $7492: $a9
	adc  c                                           ; $7493: $89
	ld   a, c                                        ; $7494: $79
	sub  a                                           ; $7495: $97
	adc  b                                           ; $7496: $88
	add  [hl]                                        ; $7497: $86
	ld   [hl], l                                     ; $7498: $75
	ld   d, a                                        ; $7499: $57
	ld   d, [hl]                                     ; $749a: $56
	ld   b, a                                        ; $749b: $47
	halt                                             ; $749c: $76
	ld   [hl], a                                     ; $749d: $77
	adc  b                                           ; $749e: $88
	add  a                                           ; $749f: $87
	adc  c                                           ; $74a0: $89
	xor  b                                           ; $74a1: $a8
	xor  d                                           ; $74a2: $aa
	xor  d                                           ; $74a3: $aa
	cp   d                                           ; $74a4: $ba
	sbc  e                                           ; $74a5: $9b
	adc  e                                           ; $74a6: $8b
	ld   a, e                                        ; $74a7: $7b
	sbc  c                                           ; $74a8: $99
	sub  l                                           ; $74a9: $95
	ld   [hl], e                                     ; $74aa: $73
	ld   [hl], h                                     ; $74ab: $74
	ld   h, [hl]                                     ; $74ac: $66
	ld   d, [hl]                                     ; $74ad: $56
	ld   b, l                                        ; $74ae: $45
	ld   e, b                                        ; $74af: $58
	ld   l, b                                        ; $74b0: $68
	ld   a, c                                        ; $74b1: $79
	adc  b                                           ; $74b2: $88
	xor  c                                           ; $74b3: $a9
	cp   d                                           ; $74b4: $ba
	cp   c                                           ; $74b5: $b9
	ret  z                                           ; $74b6: $c8

	cp   c                                           ; $74b7: $b9
	xor  e                                           ; $74b8: $ab
	ld   a, c                                        ; $74b9: $79
	ld   a, b                                        ; $74ba: $78
	ld   [hl], a                                     ; $74bb: $77
	add  a                                           ; $74bc: $87
	halt                                             ; $74bd: $76
	ld   d, [hl]                                     ; $74be: $56
	ld   h, l                                        ; $74bf: $65
	ld   h, l                                        ; $74c0: $65
	add  [hl]                                        ; $74c1: $86
	ld   a, b                                        ; $74c2: $78
	ld   h, a                                        ; $74c3: $67
	ld   [hl], a                                     ; $74c4: $77
	adc  b                                           ; $74c5: $88
	ld   a, d                                        ; $74c6: $7a
	sbc  d                                           ; $74c7: $9a
	sbc  b                                           ; $74c8: $98
	cp   b                                           ; $74c9: $b8
	cp   b                                           ; $74ca: $b8
	xor  b                                           ; $74cb: $a8
	sbc  d                                           ; $74cc: $9a
	ld   a, h                                        ; $74cd: $7c
	adc  e                                           ; $74ce: $8b
	ld   a, b                                        ; $74cf: $78
	ld   [hl], a                                     ; $74d0: $77
	and  h                                           ; $74d1: $a4
	sub  [hl]                                        ; $74d2: $96
	ld   [hl], a                                     ; $74d3: $77
	ld   h, [hl]                                     ; $74d4: $66
	ld   h, [hl]                                     ; $74d5: $66
	ld   d, a                                        ; $74d6: $57
	ld   e, b                                        ; $74d7: $58
	add  a                                           ; $74d8: $87
	ld   a, b                                        ; $74d9: $78
	adc  c                                           ; $74da: $89
	adc  c                                           ; $74db: $89
	sbc  c                                           ; $74dc: $99
	sbc  c                                           ; $74dd: $99
	cp   d                                           ; $74de: $ba
	cp   d                                           ; $74df: $ba
	sbc  c                                           ; $74e0: $99
	xor  b                                           ; $74e1: $a8
	adc  c                                           ; $74e2: $89
	sbc  b                                           ; $74e3: $98
	halt                                             ; $74e4: $76
	ld   l, b                                        ; $74e5: $68
	ld   h, a                                        ; $74e6: $67
	ld   a, b                                        ; $74e7: $78
	halt                                             ; $74e8: $76
	ld   h, a                                        ; $74e9: $67
	ld   [hl], a                                     ; $74ea: $77
	add  [hl]                                        ; $74eb: $86
	sub  [hl]                                        ; $74ec: $96
	add  a                                           ; $74ed: $87
	adc  c                                           ; $74ee: $89
	ld   a, c                                        ; $74ef: $79
	ld   a, d                                        ; $74f0: $7a
	ld   a, d                                        ; $74f1: $7a
	adc  d                                           ; $74f2: $8a
	xor  b                                           ; $74f3: $a8
	and  a                                           ; $74f4: $a7
	xor  b                                           ; $74f5: $a8
	xor  b                                           ; $74f6: $a8
	sbc  b                                           ; $74f7: $98
	sbc  b                                           ; $74f8: $98
	ld   a, b                                        ; $74f9: $78
	ld   l, b                                        ; $74fa: $68
	ld   a, b                                        ; $74fb: $78
	ld   l, b                                        ; $74fc: $68
	ld   [hl], a                                     ; $74fd: $77
	sub  a                                           ; $74fe: $97
	add  [hl]                                        ; $74ff: $86
	halt                                             ; $7500: $76
	add  [hl]                                        ; $7501: $86
	adc  b                                           ; $7502: $88
	ld   a, b                                        ; $7503: $78
	adc  c                                           ; $7504: $89
	ld   a, b                                        ; $7505: $78
	adc  c                                           ; $7506: $89
	sbc  c                                           ; $7507: $99
	sbc  c                                           ; $7508: $99
	sbc  c                                           ; $7509: $99
	adc  c                                           ; $750a: $89
	sbc  b                                           ; $750b: $98
	sub  a                                           ; $750c: $97
	sbc  b                                           ; $750d: $98
	add  a                                           ; $750e: $87
	adc  b                                           ; $750f: $88
	ld   a, c                                        ; $7510: $79
	ld   [hl], a                                     ; $7511: $77
	ld   a, b                                        ; $7512: $78
	ld   [hl], a                                     ; $7513: $77
	adc  b                                           ; $7514: $88
	ld   [hl], a                                     ; $7515: $77
	add  a                                           ; $7516: $87
	add  a                                           ; $7517: $87
	adc  b                                           ; $7518: $88
	sbc  b                                           ; $7519: $98
	ld   a, c                                        ; $751a: $79
	sbc  b                                           ; $751b: $98
	adc  b                                           ; $751c: $88
	adc  b                                           ; $751d: $88
	adc  b                                           ; $751e: $88
	adc  b                                           ; $751f: $88
	sbc  b                                           ; $7520: $98
	adc  c                                           ; $7521: $89
	adc  c                                           ; $7522: $89
	adc  b                                           ; $7523: $88
	adc  b                                           ; $7524: $88
	ld   a, b                                        ; $7525: $78
	ld   [hl], a                                     ; $7526: $77
	add  a                                           ; $7527: $87
	add  a                                           ; $7528: $87
	ld   [hl], a                                     ; $7529: $77
	ld   [hl], a                                     ; $752a: $77
	add  a                                           ; $752b: $87
	ld   a, b                                        ; $752c: $78
	ld   a, c                                        ; $752d: $79
	ld   a, b                                        ; $752e: $78
	adc  c                                           ; $752f: $89
	sbc  b                                           ; $7530: $98
	adc  b                                           ; $7531: $88
	adc  c                                           ; $7532: $89
	sbc  b                                           ; $7533: $98
	sub  a                                           ; $7534: $97
	sbc  b                                           ; $7535: $98
	adc  b                                           ; $7536: $88
	ld   a, c                                        ; $7537: $79
	ld   a, c                                        ; $7538: $79
	adc  b                                           ; $7539: $88
	sbc  b                                           ; $753a: $98
	ld   a, b                                        ; $753b: $78
	ld   a, b                                        ; $753c: $78
	add  a                                           ; $753d: $87
	add  a                                           ; $753e: $87
	adc  b                                           ; $753f: $88
	ld   a, b                                        ; $7540: $78
	ld   [hl], a                                     ; $7541: $77
	adc  b                                           ; $7542: $88
	adc  b                                           ; $7543: $88
	adc  b                                           ; $7544: $88
	sbc  b                                           ; $7545: $98
	adc  b                                           ; $7546: $88
	adc  c                                           ; $7547: $89
	adc  c                                           ; $7548: $89
	adc  b                                           ; $7549: $88
	sbc  b                                           ; $754a: $98
	sbc  b                                           ; $754b: $98
	sub  a                                           ; $754c: $97
	adc  b                                           ; $754d: $88
	adc  b                                           ; $754e: $88
	ld   a, b                                        ; $754f: $78
	adc  b                                           ; $7550: $88
	adc  b                                           ; $7551: $88
	adc  b                                           ; $7552: $88
	sub  a                                           ; $7553: $97
	sub  a                                           ; $7554: $97
	adc  b                                           ; $7555: $88
	ld   a, b                                        ; $7556: $78
	adc  b                                           ; $7557: $88
	ld   a, c                                        ; $7558: $79
	adc  b                                           ; $7559: $88
	adc  b                                           ; $755a: $88
	adc  b                                           ; $755b: $88
	sbc  b                                           ; $755c: $98
	adc  b                                           ; $755d: $88
	sbc  b                                           ; $755e: $98
	adc  c                                           ; $755f: $89
	adc  b                                           ; $7560: $88
	adc  b                                           ; $7561: $88
	adc  c                                           ; $7562: $89
	adc  c                                           ; $7563: $89
	ld   a, b                                        ; $7564: $78
	adc  b                                           ; $7565: $88
	adc  b                                           ; $7566: $88
	add  a                                           ; $7567: $87
	adc  b                                           ; $7568: $88
	adc  b                                           ; $7569: $88
	ld   a, b                                        ; $756a: $78
	adc  b                                           ; $756b: $88
	ld   a, b                                        ; $756c: $78
	adc  b                                           ; $756d: $88
	adc  b                                           ; $756e: $88
	adc  c                                           ; $756f: $89
	adc  b                                           ; $7570: $88
	sbc  b                                           ; $7571: $98
	sbc  b                                           ; $7572: $98
	sbc  b                                           ; $7573: $98
	adc  b                                           ; $7574: $88
	adc  b                                           ; $7575: $88
	adc  b                                           ; $7576: $88
	adc  b                                           ; $7577: $88
	adc  b                                           ; $7578: $88
	adc  b                                           ; $7579: $88
	adc  b                                           ; $757a: $88
	adc  b                                           ; $757b: $88
	add  a                                           ; $757c: $87
	adc  b                                           ; $757d: $88
	add  a                                           ; $757e: $87
	adc  b                                           ; $757f: $88
	adc  b                                           ; $7580: $88
	adc  c                                           ; $7581: $89
	ld   a, b                                        ; $7582: $78
	adc  b                                           ; $7583: $88
	adc  b                                           ; $7584: $88
	add  a                                           ; $7585: $87
	sbc  b                                           ; $7586: $98
	sbc  b                                           ; $7587: $98
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

Call_0f6_75de:
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

Call_0f6_75fc:
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

Jump_0f6_7688:
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
	sbc  b                                           ; $76e8: $98
	sbc  b                                           ; $76e9: $98
	adc  b                                           ; $76ea: $88
	sbc  b                                           ; $76eb: $98
	sbc  b                                           ; $76ec: $98
	ld   [hl], a                                     ; $76ed: $77
	ld   a, b                                        ; $76ee: $78
	adc  b                                           ; $76ef: $88
	ld   [hl], a                                     ; $76f0: $77
	ld   [hl], a                                     ; $76f1: $77
	adc  b                                           ; $76f2: $88
	adc  b                                           ; $76f3: $88
	adc  b                                           ; $76f4: $88
	adc  b                                           ; $76f5: $88
	adc  c                                           ; $76f6: $89
	sbc  c                                           ; $76f7: $99
	sbc  b                                           ; $76f8: $98
	adc  b                                           ; $76f9: $88
	adc  c                                           ; $76fa: $89
	sbc  c                                           ; $76fb: $99
	adc  b                                           ; $76fc: $88
	adc  c                                           ; $76fd: $89
	adc  b                                           ; $76fe: $88
	add  a                                           ; $76ff: $87
	ld   h, a                                        ; $7700: $67
	ld   a, b                                        ; $7701: $78
	ld   [hl], a                                     ; $7702: $77
	ld   [hl], a                                     ; $7703: $77
	ld   a, b                                        ; $7704: $78
	sbc  c                                           ; $7705: $99
	sbc  b                                           ; $7706: $98
	sbc  c                                           ; $7707: $99
	adc  c                                           ; $7708: $89
	sbc  c                                           ; $7709: $99
	sbc  c                                           ; $770a: $99
	adc  b                                           ; $770b: $88
	adc  b                                           ; $770c: $88
	add  a                                           ; $770d: $87
	ld   a, b                                        ; $770e: $78
	halt                                             ; $770f: $76
	ld   [hl], a                                     ; $7710: $77
	halt                                             ; $7711: $76
	ld   l, b                                        ; $7712: $68
	adc  b                                           ; $7713: $88
	adc  c                                           ; $7714: $89
	adc  b                                           ; $7715: $88
	xor  c                                           ; $7716: $a9
	adc  b                                           ; $7717: $88
	xor  c                                           ; $7718: $a9
	xor  d                                           ; $7719: $aa
	xor  c                                           ; $771a: $a9
	sbc  c                                           ; $771b: $99
	add  a                                           ; $771c: $87
	ld   h, a                                        ; $771d: $67
	add  [hl]                                        ; $771e: $86
	ld   b, l                                        ; $771f: $45
	ld   h, a                                        ; $7720: $67
	ld   h, a                                        ; $7721: $67
	ld   [hl], a                                     ; $7722: $77
	adc  c                                           ; $7723: $89
	xor  c                                           ; $7724: $a9
	xor  d                                           ; $7725: $aa
	xor  d                                           ; $7726: $aa
	xor  d                                           ; $7727: $aa
	xor  c                                           ; $7728: $a9
	sbc  d                                           ; $7729: $9a
	add  a                                           ; $772a: $87
	halt                                             ; $772b: $76
	ld   h, a                                        ; $772c: $67
	ld   h, h                                        ; $772d: $64
	ld   b, h                                        ; $772e: $44
	ld   h, [hl]                                     ; $772f: $66
	ld   h, a                                        ; $7730: $67
	ld   [hl], a                                     ; $7731: $77
	sbc  d                                           ; $7732: $9a
	cp   d                                           ; $7733: $ba
	xor  e                                           ; $7734: $ab
	set  1, d                                        ; $7735: $cb $ca
	xor  c                                           ; $7737: $a9
	xor  c                                           ; $7738: $a9
	halt                                             ; $7739: $76
	ld   b, l                                        ; $773a: $45
	add  [hl]                                        ; $773b: $86
	inc  sp                                          ; $773c: $33
	ld   [hl], $66                                   ; $773d: $36 $66
	add  a                                           ; $773f: $87
	ld   a, c                                        ; $7740: $79
	cp   h                                           ; $7741: $bc
	cp   e                                           ; $7742: $bb
	call z, $abcb                                    ; $7743: $cc $cb $ab
	xor  d                                           ; $7746: $aa
	ld   [hl], l                                     ; $7747: $75
	inc  sp                                          ; $7748: $33
	ld   [hl], l                                     ; $7749: $75
	ld   [hl+], a                                    ; $774a: $22
	inc  h                                           ; $774b: $24
	ld   h, [hl]                                     ; $774c: $66
	sub  a                                           ; $774d: $97
	ld   a, d                                        ; $774e: $7a
	db   $dd                                         ; $774f: $dd
	db   $dd                                         ; $7750: $dd
	db   $ec                                         ; $7751: $ec
	sbc  $cb                                         ; $7752: $de $cb
	sbc  b                                           ; $7754: $98
	ld   d, e                                        ; $7755: $53
	inc  hl                                          ; $7756: $23
	ld   h, c                                        ; $7757: $61
	ld   de, $6815                                   ; $7758: $11 $15 $68
	sub  [hl]                                        ; $775b: $96
	xor  l                                           ; $775c: $ad
	rst  $28                                         ; $775d: $ef
	rst  $38                                         ; $775e: $ff
	sbc  $fd                                         ; $775f: $de $fd
	jp   z, $1163                                    ; $7761: $ca $63 $11

	inc  d                                           ; $7764: $14
	ld   de, $4511                                   ; $7765: $11 $11 $45
	xor  e                                           ; $7768: $ab
	sbc  l                                           ; $7769: $9d
	rst  $28                                         ; $776a: $ef
	rst  $38                                         ; $776b: $ff
	cp   $df                                         ; $776c: $fe $df
	db   $ed                                         ; $776e: $ed
	and  h                                           ; $776f: $a4
	ld   de, $1112                                   ; $7770: $11 $12 $11
	ld   de, $9e15                                   ; $7773: $11 $15 $9e

Jump_0f6_7776:
	cp   h                                           ; $7776: $bc
	rst  $38                                         ; $7777: $ff
	rst  $38                                         ; $7778: $ff
	rst  $38                                         ; $7779: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $777a: $cf
	db   $ec                                         ; $777b: $ec
	and  l                                           ; $777c: $a5
	ld   de, $3111                                   ; $777d: $11 $11 $31
	ld   de, $8f13                                   ; $7780: $11 $13 $8f
	db   $eb                                         ; $7783: $eb
	rst  $38                                         ; $7784: $ff
	rst  $38                                         ; $7785: $ff
	rst  $38                                         ; $7786: $ff
	call z, $c8db                                    ; $7787: $cc $db $c8
	ld   de, $3111                                   ; $778a: $11 $11 $31
	ld   de, $6f11                                   ; $778d: $11 $11 $6f
	db   $fd                                         ; $7790: $fd
	rst  $38                                         ; $7791: $ff
	rst  $38                                         ; $7792: $ff
	rst  $38                                         ; $7793: $ff
	jp   z, $bab8                                    ; $7794: $ca $b8 $ba

	ld   d, c                                        ; $7797: $51
	ld   de, $1513                                   ; $7798: $11 $13 $15
	ld   de, $ff4c                                   ; $779b: $11 $4c $ff
	rst  $38                                         ; $779e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $779f: $cf
	rst  $38                                         ; $77a0: $ff
	ld   sp, hl                                      ; $77a1: $f9
	and  [hl]                                        ; $77a2: $a6
	adc  h                                           ; $77a3: $8c
	add  d                                           ; $77a4: $82
	ld   de, $3513                                   ; $77a5: $11 $13 $35
	ld   sp, $ff27                                   ; $77a8: $31 $27 $ff
	rst  $38                                         ; $77ab: $ff
	db   $dd                                         ; $77ac: $dd
	rst  $38                                         ; $77ad: $ff
	db   $fc                                         ; $77ae: $fc
	sub  a                                           ; $77af: $97
	ld   e, e                                        ; $77b0: $5b
	or   a                                           ; $77b1: $b7
	ld   de, $5511                                   ; $77b2: $11 $11 $55
	ld   [hl], c                                     ; $77b5: $71
	inc  de                                          ; $77b6: $13
	xor  a                                           ; $77b7: $af
	rst  $38                                         ; $77b8: $ff
	ld   a, [$ffff]                                  ; $77b9: $fa $ff $ff
	xor  c                                           ; $77bc: $a9
	ld   b, a                                        ; $77bd: $47
	jp   z, $1171                                    ; $77be: $ca $71 $11

	ld   h, $67                                      ; $77c1: $26 $67
	ld   de, $ff4b                                   ; $77c3: $11 $4b $ff
	db   $fd                                         ; $77c6: $fd
	sbc  a                                           ; $77c7: $9f
	rst  $38                                         ; $77c8: $ff
	ld   a, [$ad94]                                  ; $77c9: $fa $94 $ad
	add  $11                                         ; $77cc: $c6 $11
	inc  d                                           ; $77ce: $14
	ld   h, [hl]                                     ; $77cf: $66
	ld   [hl], c                                     ; $77d0: $71
	inc  de                                          ; $77d1: $13
	cp   a                                           ; $77d2: $bf
	rst  $38                                         ; $77d3: $ff
	ret                                              ; $77d4: $c9


	rst  $38                                         ; $77d5: $ff
	cp   $98                                         ; $77d6: $fe $98
	ld   c, d                                        ; $77d8: $4a
	call z, $1171                                    ; $77d9: $cc $71 $11
	ld   b, [hl]                                     ; $77dc: $46
	ld   l, b                                        ; $77dd: $68
	ld   de, $ff3b                                   ; $77de: $11 $3b $ff
	db   $fc                                         ; $77e1: $fc
	ld   a, a                                        ; $77e2: $7f
	rst  $38                                         ; $77e3: $ff
	ld   [$ad84], a                                  ; $77e4: $ea $84 $ad
	ret  c                                           ; $77e7: $d8

	ld   de, $7613                                   ; $77e8: $11 $13 $76
	add  c                                           ; $77eb: $81
	inc  de                                          ; $77ec: $13
	xor  a                                           ; $77ed: $af
	rst  $38                                         ; $77ee: $ff
	rst  $10                                         ; $77ef: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77f0: $cf
	rst  $38                                         ; $77f1: $ff
	cp   b                                           ; $77f2: $b8
	ld   c, b                                        ; $77f3: $48
	db   $ed                                         ; $77f4: $ed
	and  d                                           ; $77f5: $a2
	ld   de, $6817                                   ; $77f6: $11 $17 $68
	ld   sp, rAUDENA                                   ; $77f9: $31 $26 $ff
	rst  $38                                         ; $77fc: $ff
	adc  c                                           ; $77fd: $89
	rst  $28                                         ; $77fe: $ef
	db   $fd                                         ; $77ff: $fd
	sub  l                                           ; $7800: $95
	ld   l, e                                        ; $7801: $6b
	bit  6, c                                        ; $7802: $cb $71
	ld   de, $7856                                   ; $7804: $11 $56 $78
	ld   de, $ee38                                   ; $7807: $11 $38 $ee
	db   $fc                                         ; $780a: $fc
	ld   a, e                                        ; $780b: $7b
	db   $ed                                         ; $780c: $ed
	db   $dd                                         ; $780d: $dd
	add  a                                           ; $780e: $87
	adc  e                                           ; $780f: $8b
	xor  d                                           ; $7810: $aa
	ld   h, c                                        ; $7811: $61
	inc  de                                          ; $7812: $13
	ld   [hl], l                                     ; $7813: $75
	add  a                                           ; $7814: $87
	inc  de                                          ; $7815: $13
	ld   b, [hl]                                     ; $7816: $46
	sbc  h                                           ; $7817: $9c
	jp   c, $ba9b                                    ; $7818: $da $9b $ba

	cp   e                                           ; $781b: $bb
	xor  d                                           ; $781c: $aa
	cp   d                                           ; $781d: $ba
	xor  e                                           ; $781e: $ab
	sub  [hl]                                        ; $781f: $96
	ld   b, l                                        ; $7820: $45
	add  a                                           ; $7821: $87
	ld   h, l                                        ; $7822: $65
	ld   [hl+], a                                    ; $7823: $22
	inc  [hl]                                        ; $7824: $34
	ld   h, a                                        ; $7825: $67
	adc  b                                           ; $7826: $88
	ld   a, b                                        ; $7827: $78
	sbc  c                                           ; $7828: $99
	xor  h                                           ; $7829: $ac
	call z, $cddc                                    ; $782a: $cc $dc $cd
	cp   c                                           ; $782d: $b9
	ld   h, a                                        ; $782e: $67
	add  a                                           ; $782f: $87
	ld   b, h                                        ; $7830: $44
	ld   hl, $3422                                   ; $7831: $21 $22 $34
	ld   h, [hl]                                     ; $7834: $66
	ld   l, b                                        ; $7835: $68
	sbc  c                                           ; $7836: $99
	cp   l                                           ; $7837: $bd
	call c, $dede                                    ; $7838: $dc $de $de
	db   $eb                                         ; $783b: $eb
	sub  a                                           ; $783c: $97
	ld   [hl], a                                     ; $783d: $77
	ld   d, h                                        ; $783e: $54
	ld   sp, $1311                                   ; $783f: $31 $11 $13
	ld   d, [hl]                                     ; $7842: $56
	ld   h, [hl]                                     ; $7843: $66
	adc  d                                           ; $7844: $8a
	cp   h                                           ; $7845: $bc
	db   $dd                                         ; $7846: $dd
	xor  $de                                         ; $7847: $ee $de
	cp   $b8                                         ; $7849: $fe $b8
	ld   h, [hl]                                     ; $784b: $66
	ld   h, h                                        ; $784c: $64
	ld   sp, $1111                                   ; $784d: $31 $11 $11
	dec  [hl]                                        ; $7850: $35
	ld   h, [hl]                                     ; $7851: $66
	ld   a, c                                        ; $7852: $79
	xor  h                                           ; $7853: $ac
	db   $dd                                         ; $7854: $dd
	sbc  $fe                                         ; $7855: $de $fe
	rst  $38                                         ; $7857: $ff
	jp   c, Jump_0f6_6676                            ; $7858: $da $76 $66

	ld   b, d                                        ; $785b: $42
	ld   de, $1311                                   ; $785c: $11 $11 $13
	ld   d, [hl]                                     ; $785f: $56
	ld   h, a                                        ; $7860: $67
	xor  e                                           ; $7861: $ab
	call $fffe                                       ; $7862: $cd $fe $ff
	rst  $38                                         ; $7865: $ff
	cp   $a7                                         ; $7866: $fe $a7
	ld   d, [hl]                                     ; $7868: $56
	ld   d, d                                        ; $7869: $52
	ld   de, $1111                                   ; $786a: $11 $11 $11
	dec  [hl]                                        ; $786d: $35
	ld   h, a                                        ; $786e: $67
	adc  d                                           ; $786f: $8a
	call $ffef                                       ; $7870: $cd $ef $ff
	rst  $38                                         ; $7873: $ff
	rst  $38                                         ; $7874: $ff
	jp   c, $5464                                    ; $7875: $da $64 $54

	ld   hl, $1111                                   ; $7878: $21 $11 $11
	inc  h                                           ; $787b: $24
	ld   h, a                                        ; $787c: $67
	ld   a, c                                        ; $787d: $79
	cp   l                                           ; $787e: $bd
	rst  JumpTable                                         ; $787f: $df
	rst  $38                                         ; $7880: $ff
	rst  $38                                         ; $7881: $ff
	rst  $38                                         ; $7882: $ff
	db   $fc                                         ; $7883: $fc
	sub  l                                           ; $7884: $95
	ld   b, l                                        ; $7885: $45
	ld   sp, $1111                                   ; $7886: $31 $11 $11
	ld   [de], a                                     ; $7889: $12
	ld   b, [hl]                                     ; $788a: $46
	ld   [hl], a                                     ; $788b: $77
	xor  e                                           ; $788c: $ab
	rst  JumpTable                                         ; $788d: $df
	rst  $38                                         ; $788e: $ff
	rst  $38                                         ; $788f: $ff
	rst  $38                                         ; $7890: $ff
	cp   $b8                                         ; $7891: $fe $b8
	ld   b, h                                        ; $7893: $44
	ld   b, d                                        ; $7894: $42
	ld   de, $1111                                   ; $7895: $11 $11 $11
	inc  h                                           ; $7898: $24
	ld   [hl], a                                     ; $7899: $77
	adc  e                                           ; $789a: $8b
	call $ffff                                       ; $789b: $cd $ff $ff
	rst  $38                                         ; $789e: $ff
	rst  $38                                         ; $789f: $ff
	db   $eb                                         ; $78a0: $eb
	add  h                                           ; $78a1: $84
	inc  [hl]                                        ; $78a2: $34
	ld   hl, $1111                                   ; $78a3: $21 $11 $11
	ld   [de], a                                     ; $78a6: $12
	ld   d, a                                        ; $78a7: $57
	ld   a, b                                        ; $78a8: $78
	cp   h                                           ; $78a9: $bc
	rst  $28                                         ; $78aa: $ef
	rst  $38                                         ; $78ab: $ff
	rst  $38                                         ; $78ac: $ff
	rst  $38                                         ; $78ad: $ff
	cp   $b7                                         ; $78ae: $fe $b7
	ld   b, e                                        ; $78b0: $43
	ld   b, d                                        ; $78b1: $42
	ld   de, $1111                                   ; $78b2: $11 $11 $11
	dec  h                                           ; $78b5: $25
	ld   [hl], a                                     ; $78b6: $77
	sbc  d                                           ; $78b7: $9a

Call_0f6_78b8:
	call $ffef                                       ; $78b8: $cd $ef $ff
	rst  $38                                         ; $78bb: $ff
	rst  $28                                         ; $78bc: $ef
	db   $eb                                         ; $78bd: $eb
	add  h                                           ; $78be: $84
	inc  [hl]                                        ; $78bf: $34
	ld   sp, $1111                                   ; $78c0: $31 $11 $11
	ld   [de], a                                     ; $78c3: $12
	ld   d, a                                        ; $78c4: $57
	ld   a, c                                        ; $78c5: $79
	xor  h                                           ; $78c6: $ac
	sbc  $ff                                         ; $78c7: $de $ff
	rst  $38                                         ; $78c9: $ff
	cp   $fe                                         ; $78ca: $fe $fe
	reti                                             ; $78cc: $d9


	ld   b, d                                        ; $78cd: $42
	inc  sp                                          ; $78ce: $33
	ld   de, $1111                                   ; $78cf: $11 $11 $11
	inc  h                                           ; $78d2: $24
	sbc  c                                           ; $78d3: $99
	sbc  c                                           ; $78d4: $99
	xor  h                                           ; $78d5: $ac
	rst  $28                                         ; $78d6: $ef
	rst  $38                                         ; $78d7: $ff
	cp   $df                                         ; $78d8: $fe $df
	cp   $82                                         ; $78da: $fe $82
	ld   [de], a                                     ; $78dc: $12
	ld   [hl], e                                     ; $78dd: $73
	ld   sp, $1411                                   ; $78de: $31 $11 $14
	ld   e, h                                        ; $78e1: $5c
	and  a                                           ; $78e2: $a7
	xor  d                                           ; $78e3: $aa
	cp   l                                           ; $78e4: $bd
	cp   $fd                                         ; $78e5: $fe $fd
	db   $dd                                         ; $78e7: $dd
	rst  $38                                         ; $78e8: $ff
	xor  c                                           ; $78e9: $a9
	ld   de, $9c17                                   ; $78ea: $11 $17 $9c
	add  c                                           ; $78ed: $81
	ld   de, $ffae                                   ; $78ee: $11 $ae $ff
	inc  sp                                          ; $78f1: $33
	ld   l, d                                        ; $78f2: $6a
	rst  JumpTable                                         ; $78f3: $df
	add  sp, -$76                                    ; $78f4: $e8 $8a
	rst  $28                                         ; $78f6: $ef
	db   $fc                                         ; $78f7: $fc
	ld   hl, $5e11                                   ; $78f8: $21 $11 $5e
	xor  a                                           ; $78fb: $af
	ld   de, $ff8e                                   ; $78fc: $11 $8e $ff
	pop  af                                          ; $78ff: $f1
	ld   de, $ff7e                                   ; $7900: $11 $7e $ff
	ld   hl, $ffaf                                   ; $7903: $21 $af $ff
	pop  af                                          ; $7906: $f1
	ld   de, $f911                                   ; $7907: $11 $11 $f9
	or   a                                           ; $790a: $b7
	ld   a, [de]                                     ; $790b: $1a
	rst  $38                                         ; $790c: $ff
	db   $fd                                         ; $790d: $fd
	ld   b, c                                        ; $790e: $41
	add  hl, de                                      ; $790f: $19
	rst  $38                                         ; $7910: $ff
	or   h                                           ; $7911: $b4
	ld   e, $ff                                      ; $7912: $1e $ff
	db   $fd                                         ; $7914: $fd
	ld   de, $1211                                   ; $7915: $11 $11 $12
	add  d                                           ; $7918: $82
	ld   a, [$ff8f]                                  ; $7919: $fa $8f $ff
	ld   a, e                                        ; $791c: $7b
	ld   de, $e985                                   ; $791d: $11 $85 $e9
	rst  ToBoot                                         ; $7920: $c7
	sbc  a                                           ; $7921: $9f
	rst  $38                                         ; $7922: $ff
	ld   hl, sp+$11                                  ; $7923: $f8 $11
	ld   de, wPlayerName+3                                   ; $7925: $11 $11 $cb
	db   $fc                                         ; $7928: $fc
	ld   e, a                                        ; $7929: $5f
	rst  $28                                         ; $792a: $ef
	xor  [hl]                                        ; $792b: $ae
	ld   de, $ff63                                   ; $792c: $11 $63 $ff
	or   $6f                                         ; $792f: $f6 $6f
	rst  $28                                         ; $7931: $ef
	rst  $30                                         ; $7932: $f7
	ld   de, $1111                                   ; $7933: $11 $11 $11
	db   $fc                                         ; $7936: $fc
	rst  $38                                         ; $7937: $ff
	cpl                                              ; $7938: $2f
	cp   a                                           ; $7939: $bf
	adc  c                                           ; $793a: $89
	ld   de, hScriptOpcodeParams+4                                   ; $793b: $11 $a4 $ff
	ld   a, [$cf4f]                                  ; $793e: $fa $4f $cf
	push af                                          ; $7941: $f5
	ld   de, $1111                                   ; $7942: $11 $11 $11
	rst  $28                                         ; $7945: $ef
	rst  $38                                         ; $7946: $ff
	ld   e, $af                                      ; $7947: $1e $af
	rst  $30                                         ; $7949: $f7
	ld   sp, $ff37                                   ; $794a: $31 $37 $ff
	xor  $1d                                         ; $794d: $ee $1d
	cp   a                                           ; $794f: $bf
	rst  $30                                         ; $7950: $f7
	ld   d, c                                        ; $7951: $51
	ld   hl, $1f11                                   ; $7952: $21 $11 $1f
	rst  $38                                         ; $7955: $ff
	add  e                                           ; $7956: $83
	or   $f6                                         ; $7957: $f6 $f6
	add  c                                           ; $7959: $81
	inc  e                                           ; $795a: $1c
	sbc  a                                           ; $795b: $9f
	rst  $38                                         ; $795c: $ff
	ld   d, c                                        ; $795d: $51
	rst  $30                                         ; $795e: $f7
	cp   $74                                         ; $795f: $fe $74
	dec  d                                           ; $7961: $15
	ld   de, $ff1b                                   ; $7962: $11 $1b $ff
	pop  af                                          ; $7965: $f1
	sbc  b                                           ; $7966: $98
	cp   a                                           ; $7967: $bf
	add  hl, sp                                      ; $7968: $39
	ld   de, $fe9f                                   ; $7969: $11 $9f $fe
	pop  af                                          ; $796c: $f1
	ld   l, d                                        ; $796d: $6a
	xor  a                                           ; $796e: $af
	xor  d                                           ; $796f: $aa
	dec  d                                           ; $7970: $15
	ld   hl, rAUD1LEN                                   ; $7971: $21 $11 $ff
	rst  $38                                         ; $7974: $ff
	dec  e                                           ; $7975: $1d
	cpl                                              ; $7976: $2f
	di                                               ; $7977: $f3
	sub  c                                           ; $7978: $91
	scf                                              ; $7979: $37
	rst  $38                                         ; $797a: $ff
	rst  JumpTable                                         ; $797b: $df
	ld   a, [de]                                     ; $797c: $1a
	ld   l, [hl]                                     ; $797d: $6e
	ld   a, [$81e1]                                  ; $797e: $fa $e1 $81
	ld   de, $ff1f                                   ; $7981: $11 $1f $ff
	pop  af                                          ; $7984: $f1
	jp   nz, $35fc                                   ; $7985: $c2 $fc $35

	inc  d                                           ; $7988: $14
	sbc  a                                           ; $7989: $9f

Call_0f6_798a:
	cp   $f1                                         ; $798a: $fe $f1
	add  l                                           ; $798c: $85
	rst  $28                                         ; $798d: $ef
	call z, $1117                                    ; $798e: $cc $17 $11
	ld   de, $ffff                                   ; $7991: $11 $ff $ff
	add  hl, de                                      ; $7994: $19
	ld   l, $c2                                      ; $7995: $2e $c2
	ld   h, c                                        ; $7997: $61
	dec  sp                                          ; $7998: $3b
	rst  $38                                         ; $7999: $ff
	rst  $38                                         ; $799a: $ff
	ld   d, $5d                                      ; $799b: $16 $5d
	db   $fd                                         ; $799d: $fd
	pop  de                                          ; $799e: $d1
	ld   h, c                                        ; $799f: $61
	ld   de, $ff1f                                   ; $79a0: $11 $1f $ff
	pop  af                                          ; $79a3: $f1
	add  d                                           ; $79a4: $82
	cp   h                                           ; $79a5: $bc
	jr   jr_0f6_79b9                                 ; $79a6: $18 $11

	cp   a                                           ; $79a8: $bf
	rst  $38                                         ; $79a9: $ff
	pop  af                                          ; $79aa: $f1
	dec  [hl]                                        ; $79ab: $35
	cp   a                                           ; $79ac: $bf
	rst  $38                                         ; $79ad: $ff
	dec  d                                           ; $79ae: $15
	ld   de, $ef11                                   ; $79af: $11 $11 $ef
	rst  $38                                         ; $79b2: $ff
	ld   [hl], $47                                   ; $79b3: $36 $47
	pop  af                                          ; $79b5: $f1
	sub  c                                           ; $79b6: $91
	dec  e                                           ; $79b7: $1d
	rst  $38                                         ; $79b8: $ff

jr_0f6_79b9:
	rst  $38                                         ; $79b9: $ff
	ld   de, $ff66                                   ; $79ba: $11 $66 $ff
	db   $f4                                         ; $79bd: $f4
	ld   sp, $1311                                   ; $79be: $31 $11 $13
	rst  $38                                         ; $79c1: $ff
	db   $fc                                         ; $79c2: $fc
	daa                                              ; $79c3: $27
	ccf                                              ; $79c4: $3f
	ld   d, $11                                      ; $79c5: $16 $11
	rst  JumpTable                                         ; $79c7: $df
	rst  $38                                         ; $79c8: $ff
	di                                               ; $79c9: $f3
	ld   d, $3f                                      ; $79ca: $16 $3f
	rst  $38                                         ; $79cc: $ff
	add  c                                           ; $79cd: $81
	ld   hl, $1f11                                   ; $79ce: $21 $11 $1f
	rst  $38                                         ; $79d1: $ff
	ldh  a, [c]                                      ; $79d2: $f2
	sub  c                                           ; $79d3: $91
	or   [hl]                                        ; $79d4: $b6
	inc  d                                           ; $79d5: $14
	rla                                              ; $79d6: $17
	rst  $28                                         ; $79d7: $ef
	rst  $38                                         ; $79d8: $ff
	pop  hl                                          ; $79d9: $e1
	ld   [hl+], a                                    ; $79da: $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79db: $cf
	cp   $22                                         ; $79dc: $fe $22
	ld   de, $9f11                                   ; $79de: $11 $11 $9f
	rst  $38                                         ; $79e1: $ff
	or   l                                           ; $79e2: $b5
	ld   d, c                                        ; $79e3: $51
	pop  de                                          ; $79e4: $d1
	ld   [hl], c                                     ; $79e5: $71
	rra                                              ; $79e6: $1f
	rst  $38                                         ; $79e7: $ff
	rst  $38                                         ; $79e8: $ff
	ld   de, $ff51                                   ; $79e9: $11 $51 $ff
	ld   a, [$1133]                                  ; $79ec: $fa $33 $11
	ld   de, $ffff                                   ; $79ef: $11 $ff $ff
	ld   b, a                                        ; $79f2: $47
	rla                                              ; $79f3: $17
	ld   [hl], c                                     ; $79f4: $71
	ld   [hl], c                                     ; $79f5: $71
	ld   c, l                                        ; $79f6: $4d
	rst  $38                                         ; $79f7: $ff
	rst  $38                                         ; $79f8: $ff
	ld   de, $ff16                                   ; $79f9: $11 $16 $ff
	or   $41                                         ; $79fc: $f6 $41
	ld   de, rAUD1LEN                                   ; $79fe: $11 $11 $ff
	rst  $38                                         ; $7a01: $ff
	ld   [hl], $1a                                   ; $7a02: $36 $1a
	inc  hl                                          ; $7a04: $23
	ld   de, $ffad                                   ; $7a05: $11 $ad $ff
	ei                                               ; $7a08: $fb
	ld   [de], a                                     ; $7a09: $12
	dec  e                                           ; $7a0a: $1d
	rst  $38                                         ; $7a0b: $ff
	push af                                          ; $7a0c: $f5
	ld   d, c                                        ; $7a0d: $51
	ld   de, rAUD1LEN                                   ; $7a0e: $11 $11 $ff
	rst  $38                                         ; $7a11: $ff
	inc  [hl]                                        ; $7a12: $34
	dec  de                                          ; $7a13: $1b
	rla                                              ; $7a14: $17
	ld   de, $ffcd                                   ; $7a15: $11 $cd $ff
	rst  $30                                         ; $7a18: $f7
	ld   [de], a                                     ; $7a19: $12
	rra                                              ; $7a1a: $1f
	rst  $38                                         ; $7a1b: $ff
	call nc, $1141                                   ; $7a1c: $d4 $41 $11
	ld   d, $ff                                      ; $7a1f: $16 $ff
	db   $fc                                         ; $7a21: $fc
	ld   b, d                                        ; $7a22: $42
	dec  de                                          ; $7a23: $1b
	add  hl, de                                      ; $7a24: $19
	ld   de, $ffbf                                   ; $7a25: $11 $bf $ff
	di                                               ; $7a28: $f3
	ld   de, $ff1f                                   ; $7a29: $11 $1f $ff
	and  l                                           ; $7a2c: $a5
	ld   hl, $1d11                                   ; $7a2d: $21 $11 $1d
	rst  $38                                         ; $7a30: $ff
	ld   hl, sp+$61                                  ; $7a31: $f8 $61
	ld   c, c                                        ; $7a33: $49
	ld   [$af11], sp                                 ; $7a34: $08 $11 $af
	rst  $38                                         ; $7a37: $ff
	pop  af                                          ; $7a38: $f1
	ld   de, $ff3f                                   ; $7a39: $11 $3f $ff
	and  a                                           ; $7a3c: $a7
	ld   hl, $1f11                                   ; $7a3d: $21 $11 $1f
	rst  $38                                         ; $7a40: $ff
	or   $61                                         ; $7a41: $f6 $61
	ld   a, d                                        ; $7a43: $7a
	daa                                              ; $7a44: $27
	ld   de, $ff8f                                   ; $7a45: $11 $8f $ff
	pop  af                                          ; $7a48: $f1
	ld   de, $ff6f                                   ; $7a49: $11 $6f $ff
	halt                                             ; $7a4c: $76
	ld   hl, $1f11                                   ; $7a4d: $21 $11 $1f
	rst  $38                                         ; $7a50: $ff
	db   $f4                                         ; $7a51: $f4
	ld   [hl], c                                     ; $7a52: $71
	sbc  c                                           ; $7a53: $99
	ld   d, l                                        ; $7a54: $55
	ld   de, $ff7f                                   ; $7a55: $11 $7f $ff
	pop  af                                          ; $7a58: $f1
	ld   de, $ff9f                                   ; $7a59: $11 $9f $ff
	ld   d, l                                        ; $7a5c: $55
	ld   de, $1f11                                   ; $7a5d: $11 $11 $1f
	rst  $38                                         ; $7a60: $ff
	or   $61                                         ; $7a61: $f6 $61
	cp   c                                           ; $7a63: $b9
	ld   h, e                                        ; $7a64: $63
	ld   de, $ff6f                                   ; $7a65: $11 $6f $ff
	pop  af                                          ; $7a68: $f1
	ld   de, $fdbf                                   ; $7a69: $11 $bf $fd
	ld   d, h                                        ; $7a6c: $54
	ld   de, $1f11                                   ; $7a6d: $11 $11 $1f
	rst  $38                                         ; $7a70: $ff
	or   $61                                         ; $7a71: $f6 $61
	ret                                              ; $7a73: $c9


	ld   [hl], d                                     ; $7a74: $72
	ld   de, $ff6f                                   ; $7a75: $11 $6f $ff
	pop  af                                          ; $7a78: $f1
	ld   [de], a                                     ; $7a79: $12
	rst  JumpTable                                         ; $7a7a: $df
	ld   sp, hl                                      ; $7a7b: $f9
	inc  sp                                          ; $7a7c: $33
	ld   sp, $1f11                                   ; $7a7d: $31 $11 $1f
	rst  $38                                         ; $7a80: $ff
	or   $61                                         ; $7a81: $f6 $61
	jp   c, $11a2                                    ; $7a83: $da $a2 $11

	ld   c, a                                        ; $7a86: $4f
	rst  $38                                         ; $7a87: $ff
	ldh  a, [c]                                      ; $7a88: $f2
	inc  de                                          ; $7a89: $13
	rst  $38                                         ; $7a8a: $ff
	ld   hl, sp+$11                                  ; $7a8b: $f8 $11
	ld   sp, $1f11                                   ; $7a8d: $31 $11 $1f
	rst  $38                                         ; $7a90: $ff
	ld   hl, sp+$61                                  ; $7a91: $f8 $61
	jp   hl                                          ; $7a93: $e9


	or   e                                           ; $7a94: $b3
	ld   de, $ff2f                                   ; $7a95: $11 $2f $ff
	db   $f4                                         ; $7a98: $f4
	inc  d                                           ; $7a99: $14
	rst  $38                                         ; $7a9a: $ff
	ld   hl, sp+$11                                  ; $7a9b: $f8 $11
	ld   sp, $1d11                                   ; $7a9d: $31 $11 $1d
	rst  $38                                         ; $7aa0: $ff
	ei                                               ; $7aa1: $fb
	add  e                                           ; $7aa2: $83
	db   $eb                                         ; $7aa3: $eb
	push de                                          ; $7aa4: $d5
	ld   de, $ff1f                                   ; $7aa5: $11 $1f $ff
	rst  $30                                         ; $7aa8: $f7
	dec  h                                           ; $7aa9: $25
	rst  $38                                         ; $7aaa: $ff
	ld   a, [$1111]                                  ; $7aab: $fa $11 $11
	ld   de, $ef17                                   ; $7aae: $11 $17 $ef
	cp   $b4                                         ; $7ab1: $fe $b4
	db   $dd                                         ; $7ab3: $dd
	jp   c, $1a11                                    ; $7ab4: $da $11 $1a

	rst  $38                                         ; $7ab7: $ff
	ld   a, [$ff45]                                  ; $7ab8: $fa $45 $ff
	rst  $38                                         ; $7abb: $ff
	ld   d, c                                        ; $7abc: $51
	ld   [de], a                                     ; $7abd: $12
	ld   de, $8f11                                   ; $7abe: $11 $11 $8f
	rst  $38                                         ; $7ac1: $ff
	rst  $10                                         ; $7ac2: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ac3: $cf
	rst  $28                                         ; $7ac4: $ef
	ld   d, c                                        ; $7ac5: $51
	inc  de                                          ; $7ac6: $13
	cp   h                                           ; $7ac7: $bc
	ld   [$df53], a                                  ; $7ac8: $ea $53 $df
	rst  $38                                         ; $7acb: $ff
	or   e                                           ; $7acc: $b3
	dec  d                                           ; $7acd: $15
	ld   sp, $1411                                   ; $7ace: $31 $11 $14
	rst  JumpTable                                         ; $7ad1: $df
	cp   c                                           ; $7ad2: $b9
	adc  a                                           ; $7ad3: $8f
	rst  $38                                         ; $7ad4: $ff
	ld   a, [$8842]                                  ; $7ad5: $fa $42 $88
	sub  a                                           ; $7ad8: $97
	ld   d, c                                        ; $7ad9: $51
	ld   a, [hl-]                                    ; $7ada: $3a
	rst  $38                                         ; $7adb: $ff
	ld   a, [$9946]                                  ; $7adc: $fa $46 $99
	ld   hl, $5713                                   ; $7adf: $21 $13 $57
	ld   d, h                                        ; $7ae2: $54
	dec  h                                           ; $7ae3: $25
	cp   l                                           ; $7ae4: $bd
	rst  $38                                         ; $7ae5: $ff
	ret  c                                           ; $7ae6: $d8

	xor  l                                           ; $7ae7: $ad
	jp   c, $3475                                    ; $7ae8: $da $75 $34

	sbc  e                                           ; $7aeb: $9b
	xor  c                                           ; $7aec: $a9
	add  a                                           ; $7aed: $87
	xor  e                                           ; $7aee: $ab
	or   [hl]                                        ; $7aef: $b6
	ld   l, c                                        ; $7af0: $69
	add  [hl]                                        ; $7af1: $86
	ld   d, e                                        ; $7af2: $53
	ld   hl, $7935                                   ; $7af3: $21 $35 $79
	xor  c                                           ; $7af6: $a9
	sbc  d                                           ; $7af7: $9a
	cp   h                                           ; $7af8: $bc
	sbc  c                                           ; $7af9: $99
	halt                                             ; $7afa: $76
	ld   a, c                                        ; $7afb: $79
	xor  d                                           ; $7afc: $aa
	cp   e                                           ; $7afd: $bb
	res  7, e                                        ; $7afe: $cb $bb
	adc  b                                           ; $7b00: $88
	ld   a, b                                        ; $7b01: $78
	ld   h, l                                        ; $7b02: $65
	ld   b, e                                        ; $7b03: $43
	ld   [hl+], a                                    ; $7b04: $22
	ld   b, [hl]                                     ; $7b05: $46
	ld   a, b                                        ; $7b06: $78
	adc  b                                           ; $7b07: $88
	adc  b                                           ; $7b08: $88
	sbc  c                                           ; $7b09: $99
	sbc  b                                           ; $7b0a: $98
	add  a                                           ; $7b0b: $87
	sbc  c                                           ; $7b0c: $99
	cp   e                                           ; $7b0d: $bb
	call z, $bacb                                    ; $7b0e: $cc $cb $ba
	xor  d                                           ; $7b11: $aa
	add  a                                           ; $7b12: $87
	ld   h, [hl]                                     ; $7b13: $66
	ld   d, l                                        ; $7b14: $55
	ld   b, h                                        ; $7b15: $44
	ld   b, l                                        ; $7b16: $45
	ld   d, [hl]                                     ; $7b17: $56
	ld   h, [hl]                                     ; $7b18: $66
	ld   h, l                                        ; $7b19: $65
	ld   h, [hl]                                     ; $7b1a: $66
	ld   [hl], a                                     ; $7b1b: $77
	adc  c                                           ; $7b1c: $89
	xor  d                                           ; $7b1d: $aa
	xor  e                                           ; $7b1e: $ab
	cp   h                                           ; $7b1f: $bc
	res  7, e                                        ; $7b20: $cb $bb
	xor  d                                           ; $7b22: $aa
	sbc  c                                           ; $7b23: $99
	sub  a                                           ; $7b24: $97
	ld   a, b                                        ; $7b25: $78
	add  a                                           ; $7b26: $87
	halt                                             ; $7b27: $76
	ld   d, h                                        ; $7b28: $54
	inc  [hl]                                        ; $7b29: $34
	ld   d, l                                        ; $7b2a: $55
	ld   d, l                                        ; $7b2b: $55
	ld   d, [hl]                                     ; $7b2c: $56
	ld   a, b                                        ; $7b2d: $78
	xor  d                                           ; $7b2e: $aa
	sbc  c                                           ; $7b2f: $99
	xor  e                                           ; $7b30: $ab
	cp   d                                           ; $7b31: $ba
	xor  e                                           ; $7b32: $ab
	cp   d                                           ; $7b33: $ba
	xor  e                                           ; $7b34: $ab
	xor  e                                           ; $7b35: $ab
	xor  d                                           ; $7b36: $aa
	xor  d                                           ; $7b37: $aa
	sbc  c                                           ; $7b38: $99
	add  [hl]                                        ; $7b39: $86
	ld   d, h                                        ; $7b3a: $54
	inc  sp                                          ; $7b3b: $33
	inc  [hl]                                        ; $7b3c: $34
	ld   d, l                                        ; $7b3d: $55
	ld   d, [hl]                                     ; $7b3e: $56
	ld   h, [hl]                                     ; $7b3f: $66
	ld   a, c                                        ; $7b40: $79
	sbc  c                                           ; $7b41: $99
	sbc  b                                           ; $7b42: $98
	adc  c                                           ; $7b43: $89
	sbc  d                                           ; $7b44: $9a
	xor  e                                           ; $7b45: $ab
	xor  e                                           ; $7b46: $ab
	call z, $aacb                                    ; $7b47: $cc $cb $aa
	xor  c                                           ; $7b4a: $a9
	add  a                                           ; $7b4b: $87
	halt                                             ; $7b4c: $76
	ld   d, l                                        ; $7b4d: $55
	ld   b, h                                        ; $7b4e: $44
	ld   b, e                                        ; $7b4f: $43
	ld   b, l                                        ; $7b50: $45
	ld   d, l                                        ; $7b51: $55
	ld   h, [hl]                                     ; $7b52: $66
	ld   [hl], a                                     ; $7b53: $77
	adc  b                                           ; $7b54: $88
	sbc  c                                           ; $7b55: $99
	sbc  d                                           ; $7b56: $9a
	xor  e                                           ; $7b57: $ab
	cp   d                                           ; $7b58: $ba
	xor  e                                           ; $7b59: $ab
	xor  h                                           ; $7b5a: $ac
	cp   e                                           ; $7b5b: $bb
	xor  e                                           ; $7b5c: $ab
	xor  d                                           ; $7b5d: $aa
	xor  c                                           ; $7b5e: $a9
	halt                                             ; $7b5f: $76
	ld   h, a                                        ; $7b60: $67
	ld   h, l                                        ; $7b61: $65
	ld   b, h                                        ; $7b62: $44
	ld   b, h                                        ; $7b63: $44
	ld   d, l                                        ; $7b64: $55
	ld   h, [hl]                                     ; $7b65: $66
	ld   h, a                                        ; $7b66: $67
	ld   a, b                                        ; $7b67: $78
	sbc  c                                           ; $7b68: $99
	sbc  c                                           ; $7b69: $99
	sbc  c                                           ; $7b6a: $99
	sbc  c                                           ; $7b6b: $99
	xor  d                                           ; $7b6c: $aa
	xor  d                                           ; $7b6d: $aa
	cp   e                                           ; $7b6e: $bb
	xor  e                                           ; $7b6f: $ab
	cp   d                                           ; $7b70: $ba
	cp   d                                           ; $7b71: $ba
	xor  b                                           ; $7b72: $a8
	add  a                                           ; $7b73: $87
	ld   [hl], a                                     ; $7b74: $77
	ld   h, [hl]                                     ; $7b75: $66
	ld   d, l                                        ; $7b76: $55
	ld   b, h                                        ; $7b77: $44
	ld   b, l                                        ; $7b78: $45
	ld   d, l                                        ; $7b79: $55
	ld   h, [hl]                                     ; $7b7a: $66
	ld   h, a                                        ; $7b7b: $67
	ld   a, b                                        ; $7b7c: $78
	adc  c                                           ; $7b7d: $89
	sbc  c                                           ; $7b7e: $99
	sbc  c                                           ; $7b7f: $99
	xor  e                                           ; $7b80: $ab
	cp   d                                           ; $7b81: $ba
	xor  e                                           ; $7b82: $ab
	xor  e                                           ; $7b83: $ab
	xor  d                                           ; $7b84: $aa
	sbc  d                                           ; $7b85: $9a
	xor  d                                           ; $7b86: $aa
	sbc  b                                           ; $7b87: $98
	halt                                             ; $7b88: $76
	ld   h, [hl]                                     ; $7b89: $66
	ld   d, [hl]                                     ; $7b8a: $56
	ld   d, l                                        ; $7b8b: $55
	ld   b, h                                        ; $7b8c: $44
	ld   d, l                                        ; $7b8d: $55
	ld   h, [hl]                                     ; $7b8e: $66
	ld   h, [hl]                                     ; $7b8f: $66
	ld   a, b                                        ; $7b90: $78
	adc  b                                           ; $7b91: $88
	adc  b                                           ; $7b92: $88
	adc  c                                           ; $7b93: $89
	sbc  d                                           ; $7b94: $9a
	xor  d                                           ; $7b95: $aa
	xor  d                                           ; $7b96: $aa
	xor  d                                           ; $7b97: $aa
	cp   d                                           ; $7b98: $ba
	xor  d                                           ; $7b99: $aa
	xor  c                                           ; $7b9a: $a9
	xor  c                                           ; $7b9b: $a9
	sbc  b                                           ; $7b9c: $98
	halt                                             ; $7b9d: $76
	ld   h, [hl]                                     ; $7b9e: $66
	ld   h, l                                        ; $7b9f: $65
	ld   d, l                                        ; $7ba0: $55
	ld   b, l                                        ; $7ba1: $45
	ld   d, l                                        ; $7ba2: $55
	ld   h, [hl]                                     ; $7ba3: $66
	ld   h, [hl]                                     ; $7ba4: $66
	ld   [hl], a                                     ; $7ba5: $77
	adc  c                                           ; $7ba6: $89
	sbc  b                                           ; $7ba7: $98
	sbc  c                                           ; $7ba8: $99
	xor  c                                           ; $7ba9: $a9
	xor  d                                           ; $7baa: $aa
	cp   d                                           ; $7bab: $ba
	cp   e                                           ; $7bac: $bb
	cp   d                                           ; $7bad: $ba
	xor  d                                           ; $7bae: $aa
	sbc  d                                           ; $7baf: $9a
	xor  c                                           ; $7bb0: $a9
	sbc  b                                           ; $7bb1: $98
	ld   [hl], a                                     ; $7bb2: $77
	ld   [hl], a                                     ; $7bb3: $77
	ld   h, l                                        ; $7bb4: $65
	ld   d, l                                        ; $7bb5: $55
	ld   d, l                                        ; $7bb6: $55
	ld   d, l                                        ; $7bb7: $55
	ld   d, l                                        ; $7bb8: $55
	ld   h, [hl]                                     ; $7bb9: $66
	ld   a, b                                        ; $7bba: $78
	adc  b                                           ; $7bbb: $88
	sbc  c                                           ; $7bbc: $99
	xor  c                                           ; $7bbd: $a9
	sbc  c                                           ; $7bbe: $99
	sbc  c                                           ; $7bbf: $99
	xor  d                                           ; $7bc0: $aa
	xor  d                                           ; $7bc1: $aa
	xor  d                                           ; $7bc2: $aa
	sbc  c                                           ; $7bc3: $99
	sbc  c                                           ; $7bc4: $99
	xor  d                                           ; $7bc5: $aa
	xor  c                                           ; $7bc6: $a9
	add  a                                           ; $7bc7: $87
	ld   [hl], a                                     ; $7bc8: $77
	ld   h, [hl]                                     ; $7bc9: $66
	ld   d, l                                        ; $7bca: $55
	ld   d, l                                        ; $7bcb: $55
	ld   d, l                                        ; $7bcc: $55
	ld   h, [hl]                                     ; $7bcd: $66
	ld   h, a                                        ; $7bce: $67
	ld   [hl], a                                     ; $7bcf: $77
	ld   [hl], a                                     ; $7bd0: $77
	adc  c                                           ; $7bd1: $89
	adc  c                                           ; $7bd2: $89
	sbc  c                                           ; $7bd3: $99
	sbc  d                                           ; $7bd4: $9a
	xor  d                                           ; $7bd5: $aa
	cp   e                                           ; $7bd6: $bb
	cp   c                                           ; $7bd7: $b9
	sbc  b                                           ; $7bd8: $98
	sbc  c                                           ; $7bd9: $99
	sbc  b                                           ; $7bda: $98
	adc  b                                           ; $7bdb: $88
	sbc  b                                           ; $7bdc: $98
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	ld   [hl], a                                     ; $7bdf: $77
	ld   h, [hl]                                     ; $7be0: $66
	ld   h, l                                        ; $7be1: $65
	ld   h, [hl]                                     ; $7be2: $66
	ld   h, [hl]                                     ; $7be3: $66
	ld   h, [hl]                                     ; $7be4: $66
	ld   [hl], a                                     ; $7be5: $77
	adc  b                                           ; $7be6: $88
	sbc  c                                           ; $7be7: $99
	sbc  c                                           ; $7be8: $99
	adc  c                                           ; $7be9: $89
	sbc  c                                           ; $7bea: $99
	sbc  d                                           ; $7beb: $9a
	xor  c                                           ; $7bec: $a9
	xor  d                                           ; $7bed: $aa
	xor  c                                           ; $7bee: $a9
	sbc  c                                           ; $7bef: $99
	adc  b                                           ; $7bf0: $88
	sbc  b                                           ; $7bf1: $98
	adc  b                                           ; $7bf2: $88
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	adc  b                                           ; $7bf5: $88
	add  a                                           ; $7bf6: $87
	ld   [hl], a                                     ; $7bf7: $77
	ld   [hl], a                                     ; $7bf8: $77
	ld   h, [hl]                                     ; $7bf9: $66
	ld   h, [hl]                                     ; $7bfa: $66
	ld   h, a                                        ; $7bfb: $67
	ld   [hl], a                                     ; $7bfc: $77
	ld   [hl], a                                     ; $7bfd: $77
	adc  b                                           ; $7bfe: $88
	sbc  b                                           ; $7bff: $98
	sbc  c                                           ; $7c00: $99
	sbc  c                                           ; $7c01: $99
	sbc  c                                           ; $7c02: $99
	adc  c                                           ; $7c03: $89
	adc  c                                           ; $7c04: $89
	sbc  c                                           ; $7c05: $99
	adc  c                                           ; $7c06: $89
	adc  b                                           ; $7c07: $88
	sbc  c                                           ; $7c08: $99
	sbc  c                                           ; $7c09: $99
	adc  b                                           ; $7c0a: $88
	adc  b                                           ; $7c0b: $88
	adc  c                                           ; $7c0c: $89
	sbc  b                                           ; $7c0d: $98
	add  a                                           ; $7c0e: $87
	ld   a, b                                        ; $7c0f: $78
	adc  b                                           ; $7c10: $88
	ld   [hl], a                                     ; $7c11: $77
	ld   [hl], a                                     ; $7c12: $77
	ld   [hl], a                                     ; $7c13: $77
	ld   [hl], a                                     ; $7c14: $77
	ld   [hl], a                                     ; $7c15: $77
	ld   a, b                                        ; $7c16: $78
	adc  c                                           ; $7c17: $89
	sbc  c                                           ; $7c18: $99
	sbc  c                                           ; $7c19: $99
	adc  b                                           ; $7c1a: $88
	sbc  b                                           ; $7c1b: $98
	sbc  b                                           ; $7c1c: $98
	adc  c                                           ; $7c1d: $89
	sbc  b                                           ; $7c1e: $98
	adc  c                                           ; $7c1f: $89
	adc  c                                           ; $7c20: $89
	adc  b                                           ; $7c21: $88
	adc  b                                           ; $7c22: $88
	adc  b                                           ; $7c23: $88
	adc  c                                           ; $7c24: $89
	sbc  b                                           ; $7c25: $98
	adc  b                                           ; $7c26: $88
	adc  b                                           ; $7c27: $88
	adc  b                                           ; $7c28: $88
	adc  b                                           ; $7c29: $88
	ld   [hl], a                                     ; $7c2a: $77
	ld   a, b                                        ; $7c2b: $78
	sbc  c                                           ; $7c2c: $99
	sbc  b                                           ; $7c2d: $98
	add  a                                           ; $7c2e: $87
	ld   [hl], a                                     ; $7c2f: $77
	ld   [hl], a                                     ; $7c30: $77
	ld   [hl], a                                     ; $7c31: $77
	ld   [hl], a                                     ; $7c32: $77
	ld   [hl], a                                     ; $7c33: $77
	adc  b                                           ; $7c34: $88
	adc  b                                           ; $7c35: $88
	adc  b                                           ; $7c36: $88
	adc  b                                           ; $7c37: $88
	sbc  c                                           ; $7c38: $99
	sbc  b                                           ; $7c39: $98
	adc  b                                           ; $7c3a: $88
	adc  c                                           ; $7c3b: $89
	adc  b                                           ; $7c3c: $88
	adc  c                                           ; $7c3d: $89
	sbc  b                                           ; $7c3e: $98
	sbc  c                                           ; $7c3f: $99
	sbc  c                                           ; $7c40: $99
	adc  b                                           ; $7c41: $88
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	adc  b                                           ; $7c45: $88
	adc  b                                           ; $7c46: $88
	adc  b                                           ; $7c47: $88
	adc  b                                           ; $7c48: $88
	ld   [hl], a                                     ; $7c49: $77
	ld   [hl], a                                     ; $7c4a: $77
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	add  a                                           ; $7c51: $87
	ld   a, b                                        ; $7c52: $78
	adc  b                                           ; $7c53: $88
	adc  b                                           ; $7c54: $88
	adc  b                                           ; $7c55: $88
	adc  b                                           ; $7c56: $88
	adc  c                                           ; $7c57: $89
	sbc  c                                           ; $7c58: $99
	adc  b                                           ; $7c59: $88
	adc  b                                           ; $7c5a: $88
	adc  c                                           ; $7c5b: $89
	sbc  b                                           ; $7c5c: $98
	adc  b                                           ; $7c5d: $88
	adc  b                                           ; $7c5e: $88
	adc  b                                           ; $7c5f: $88
	adc  b                                           ; $7c60: $88
	ld   [hl], a                                     ; $7c61: $77
	ld   [hl], a                                     ; $7c62: $77
	ld   [hl], a                                     ; $7c63: $77
	ld   [hl], a                                     ; $7c64: $77
	ld   [hl], a                                     ; $7c65: $77
	ld   a, b                                        ; $7c66: $78
	adc  b                                           ; $7c67: $88
	sbc  b                                           ; $7c68: $98
	adc  b                                           ; $7c69: $88
	adc  c                                           ; $7c6a: $89
	adc  b                                           ; $7c6b: $88
	adc  c                                           ; $7c6c: $89
	sbc  c                                           ; $7c6d: $99
	sbc  c                                           ; $7c6e: $99
	sbc  c                                           ; $7c6f: $99
	sbc  b                                           ; $7c70: $98
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
	sbc  c                                           ; $7c7f: $99
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
	adc  c                                           ; $7ca1: $89
	sbc  c                                           ; $7ca2: $99
	sbc  c                                           ; $7ca3: $99
	sbc  c                                           ; $7ca4: $99
	sbc  c                                           ; $7ca5: $99
	sbc  c                                           ; $7ca6: $99
	adc  b                                           ; $7ca7: $88
	adc  b                                           ; $7ca8: $88
	adc  b                                           ; $7ca9: $88
	adc  b                                           ; $7caa: $88
	add  a                                           ; $7cab: $87
	ld   [hl], a                                     ; $7cac: $77
	ld   [hl], a                                     ; $7cad: $77
	ld   [hl], a                                     ; $7cae: $77
	ld   [hl], a                                     ; $7caf: $77
	ld   [hl], a                                     ; $7cb0: $77
	ld   a, b                                        ; $7cb1: $78
	adc  b                                           ; $7cb2: $88
	adc  b                                           ; $7cb3: $88
	sbc  c                                           ; $7cb4: $99
	sbc  c                                           ; $7cb5: $99
	sbc  c                                           ; $7cb6: $99
	sbc  c                                           ; $7cb7: $99
	sbc  c                                           ; $7cb8: $99
	sbc  c                                           ; $7cb9: $99
	sbc  c                                           ; $7cba: $99
	sbc  c                                           ; $7cbb: $99
	sbc  b                                           ; $7cbc: $98
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
	add  a                                           ; $7cdb: $87
	ld   [hl], a                                     ; $7cdc: $77
	ld   [hl], a                                     ; $7cdd: $77
	ld   [hl], a                                     ; $7cde: $77
	ld   [hl], a                                     ; $7cdf: $77
	ld   [hl], a                                     ; $7ce0: $77
	adc  b                                           ; $7ce1: $88
	adc  b                                           ; $7ce2: $88
	adc  c                                           ; $7ce3: $89
	sbc  c                                           ; $7ce4: $99
	sbc  c                                           ; $7ce5: $99
	sbc  b                                           ; $7ce6: $98
	adc  c                                           ; $7ce7: $89
	sbc  c                                           ; $7ce8: $99
	sbc  c                                           ; $7ce9: $99
	sbc  c                                           ; $7cea: $99
	sbc  c                                           ; $7ceb: $99
	adc  b                                           ; $7cec: $88
	sbc  b                                           ; $7ced: $98
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
	add  a                                           ; $7cfd: $87
	ld   [hl], a                                     ; $7cfe: $77
	sbc  c                                           ; $7cff: $99
	adc  b                                           ; $7d00: $88
	adc  b                                           ; $7d01: $88
	sbc  b                                           ; $7d02: $98
	adc  b                                           ; $7d03: $88
	adc  b                                           ; $7d04: $88
	adc  c                                           ; $7d05: $89
	sbc  b                                           ; $7d06: $98
	ld   a, b                                        ; $7d07: $78
	add  a                                           ; $7d08: $87
	adc  d                                           ; $7d09: $8a
	xor  b                                           ; $7d0a: $a8
	sbc  d                                           ; $7d0b: $9a
	xor  b                                           ; $7d0c: $a8
	xor  e                                           ; $7d0d: $ab
	xor  c                                           ; $7d0e: $a9
	sbc  c                                           ; $7d0f: $99
	ld   [hl], a                                     ; $7d10: $77
	ld   h, h                                        ; $7d11: $64
	ld   h, [hl]                                     ; $7d12: $66
	ld   h, e                                        ; $7d13: $63
	dec  [hl]                                        ; $7d14: $35
	ld   [hl], a                                     ; $7d15: $77
	halt                                             ; $7d16: $76
	ld   h, a                                        ; $7d17: $67
	sbc  d                                           ; $7d18: $9a
	adc  b                                           ; $7d19: $88
	sbc  e                                           ; $7d1a: $9b
	xor  d                                           ; $7d1b: $aa
	sbc  d                                           ; $7d1c: $9a
	xor  e                                           ; $7d1d: $ab
	cp   d                                           ; $7d1e: $ba
	sbc  d                                           ; $7d1f: $9a
	xor  b                                           ; $7d20: $a8
	ld   h, l                                        ; $7d21: $65
	ld   b, d                                        ; $7d22: $42
	ld   c, c                                        ; $7d23: $49
	ld   h, c                                        ; $7d24: $61
	inc  d                                           ; $7d25: $14
	add  a                                           ; $7d26: $87
	ld   [hl], a                                     ; $7d27: $77
	ld   l, b                                        ; $7d28: $68
	cp   l                                           ; $7d29: $bd
	and  a                                           ; $7d2a: $a7
	sbc  l                                           ; $7d2b: $9d
	ret                                              ; $7d2c: $c9


	sbc  c                                           ; $7d2d: $99
	sbc  h                                           ; $7d2e: $9c
	cp   b                                           ; $7d2f: $b8
	adc  d                                           ; $7d30: $8a
	jp   z, $3276                                    ; $7d31: $ca $76 $32

	inc  de                                          ; $7d34: $13
	or   e                                           ; $7d35: $b3
	ld   de, $796a                                   ; $7d36: $11 $6a $79
	sbc  c                                           ; $7d39: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d3a: $cf
	ld   hl, sp-$72                                  ; $7d3b: $f8 $8e
	ld   a, [$7767]                                  ; $7d3d: $fa $67 $77
	cp   d                                           ; $7d40: $ba
	halt                                             ; $7d41: $76
	cp   a                                           ; $7d42: $bf
	sub  l                                           ; $7d43: $95
	inc  sp                                          ; $7d44: $33
	ld   de, $11d4                                   ; $7d45: $11 $d4 $11
	ld   a, [hl]                                     ; $7d48: $7e
	ld   d, a                                        ; $7d49: $57
	call $f9df                                       ; $7d4a: $cd $df $f9
	xor  a                                           ; $7d4d: $af
	ld   a, [$9618]                                  ; $7d4e: $fa $18 $96
	ld   [hl], a                                     ; $7d51: $77
	ld   d, h                                        ; $7d52: $54
	sbc  $51                                         ; $7d53: $de $51
	ld   [hl-], a                                    ; $7d55: $32
	ld   d, $a1                                      ; $7d56: $16 $a1
	ld   de, $2afb                                   ; $7d58: $11 $fb $2a
	rst  $38                                         ; $7d5b: $ff
	rst  $28                                         ; $7d5c: $ef
	ld   sp, hl                                      ; $7d5d: $f9
	rst  $38                                         ; $7d5e: $ff
	pop  bc                                          ; $7d5f: $c1
	ld   c, e                                        ; $7d60: $4b
	sub  h                                           ; $7d61: $94
	add  hl, hl                                      ; $7d62: $29
	adc  e                                           ; $7d63: $8b
	rst  $10                                         ; $7d64: $d7
	ld   b, h                                        ; $7d65: $44
	ld   h, c                                        ; $7d66: $61
	dec  de                                          ; $7d67: $1b
	ld   b, c                                        ; $7d68: $41
	rla                                              ; $7d69: $17
	db   $e4                                         ; $7d6a: $e4
	adc  l                                           ; $7d6b: $8d
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	cp   [hl]                                        ; $7d6e: $be
	rst  $38                                         ; $7d6f: $ff
	ld   b, d                                        ; $7d70: $42
	cp   b                                           ; $7d71: $b8
	ld   h, e                                        ; $7d72: $63
	add  a                                           ; $7d73: $87
	adc  l                                           ; $7d74: $8d
	and  a                                           ; $7d75: $a7
	ld   d, a                                        ; $7d76: $57
	ld   de, $119a                                   ; $7d77: $11 $9a $11
	cpl                                              ; $7d7a: $2f
	ld   h, d                                        ; $7d7b: $62
	xor  a                                           ; $7d7c: $af
	cp   $fd                                         ; $7d7d: $fe $fd
	rst  $28                                         ; $7d7f: $ef
	ld   hl, sp+$1b                                  ; $7d80: $f8 $1b
	and  h                                           ; $7d82: $a4
	rla                                              ; $7d83: $17
	sub  $7b                                         ; $7d84: $d6 $7b
	ret  z                                           ; $7d86: $c8

	ld   d, e                                        ; $7d87: $53
	ld   de, $11e4                                   ; $7d88: $11 $e4 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d8b: $cf
	ld   de, $fcff                                   ; $7d8c: $11 $ff $fc
	rst  $38                                         ; $7d8f: $ff
	rst  $38                                         ; $7d90: $ff
	call nz, Call_0f6_51ad                           ; $7d91: $c4 $ad $51
	ld   a, $92                                      ; $7d94: $3e $92
	ld   l, a                                        ; $7d96: $6f
	push de                                          ; $7d97: $d5
	inc  sp                                          ; $7d98: $33
	ld   [de], a                                     ; $7d99: $12
	or   c                                           ; $7d9a: $b1
	ld   de, $12db                                   ; $7d9b: $11 $db $12
	rst  $38                                         ; $7d9e: $ff
	sbc  e                                           ; $7d9f: $9b
	rst  $38                                         ; $7da0: $ff
	db   $ec                                         ; $7da1: $ec
	call z, $23a7                                    ; $7da2: $cc $a7 $23
	sbc  d                                           ; $7da5: $9a
	ld   b, d                                        ; $7da6: $42
	rst  JumpTable                                         ; $7da7: $df
	sub  d                                           ; $7da8: $92
	ld   d, a                                        ; $7da9: $57
	ld   de, $1182                                   ; $7daa: $11 $82 $11
	xor  b                                           ; $7dad: $a8
	ld   d, $ff                                      ; $7dae: $16 $ff
	xor  l                                           ; $7db0: $ad
	rst  $38                                         ; $7db1: $ff
	call z, Call_0f6_75fc                            ; $7db2: $cc $fc $75
	ld   b, [hl]                                     ; $7db5: $46
	halt                                             ; $7db6: $76
	ld   b, [hl]                                     ; $7db7: $46
	call c, $a886                                    ; $7db8: $dc $86 $a8
	ld   de, $117a                                   ; $7dbb: $11 $7a $11
	ld   c, [hl]                                     ; $7dbe: $4e
	ld   d, c                                        ; $7dbf: $51
	cp   a                                           ; $7dc0: $bf
	rst  $30                                         ; $7dc1: $f7
	rst  $38                                         ; $7dc2: $ff
	ei                                               ; $7dc3: $fb
	xor  a                                           ; $7dc4: $af
	or   [hl]                                        ; $7dc5: $b6
	ld   [hl], $86                                   ; $7dc6: $36 $86
	ld   d, h                                        ; $7dc8: $54
	cp   h                                           ; $7dc9: $bc
	and  [hl]                                        ; $7dca: $a6
	adc  e                                           ; $7dcb: $8b
	ld   sp, $411e                                   ; $7dcc: $31 $1e $41
	dec  e                                           ; $7dcf: $1d
	pop  hl                                          ; $7dd0: $e1
	rra                                              ; $7dd1: $1f
	ld   hl, sp+$5f                                  ; $7dd2: $f8 $5f
	db   $fd                                         ; $7dd4: $fd
	ld   e, [hl]                                     ; $7dd5: $5e
	ld   hl, sp+$15                                  ; $7dd6: $f8 $15
	reti                                             ; $7dd8: $d9


	inc  [hl]                                        ; $7dd9: $34
	sbc  [hl]                                        ; $7dda: $9e
	add  [hl]                                        ; $7ddb: $86
	adc  l                                           ; $7ddc: $8d
	add  c                                           ; $7ddd: $81
	rla                                              ; $7dde: $17
	pop  de                                          ; $7ddf: $d1
	inc  d                                           ; $7de0: $14
	push af                                          ; $7de1: $f5
	jr   @+$01                                       ; $7de2: $18 $ff

	dec  sp                                          ; $7de4: $3b
	rst  $38                                         ; $7de5: $ff
	ld   l, c                                        ; $7de6: $69
	rst  $38                                         ; $7de7: $ff
	ld   b, d                                        ; $7de8: $42
	sbc  h                                           ; $7de9: $9c
	ld   d, d                                        ; $7dea: $52
	ld   a, l                                        ; $7deb: $7d
	and  [hl]                                        ; $7dec: $a6
	adc  e                                           ; $7ded: $8b
	or   e                                           ; $7dee: $b3
	ld   de, $1189                                   ; $7def: $11 $89 $11
	ld   l, l                                        ; $7df2: $6d
	ld   de, $a1bf                                   ; $7df3: $11 $bf $a1
	rst  $28                                         ; $7df6: $ef
	di                                               ; $7df7: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7df8: $cf
	pop  af                                          ; $7df9: $f1
	ld   e, a                                        ; $7dfa: $5f
	pop  bc                                          ; $7dfb: $c1
	ld   a, $c4                                      ; $7dfc: $3e $c4
	ld   e, h                                        ; $7dfe: $5c
	add  $56                                         ; $7dff: $c6 $56
	ld   b, c                                        ; $7e01: $41
	ld   e, c                                        ; $7e02: $59
	ld   de, $215a                                   ; $7e03: $11 $5a $21
	sbc  a                                           ; $7e06: $9f
	sub  e                                           ; $7e07: $93
	rst  $28                                         ; $7e08: $ef
	sub  $ef                                         ; $7e09: $d6 $ef
	or   l                                           ; $7e0b: $b5
	xor  a                                           ; $7e0c: $af
	or   e                                           ; $7e0d: $b3
	ld   a, h                                        ; $7e0e: $7c
	and  l                                           ; $7e0f: $a5
	ld   a, h                                        ; $7e10: $7c
	and  a                                           ; $7e11: $a7
	ld   h, a                                        ; $7e12: $67
	ld   d, d                                        ; $7e13: $52
	ld   c, b                                        ; $7e14: $48
	ld   b, c                                        ; $7e15: $41
	rla                                              ; $7e16: $17
	ld   d, c                                        ; $7e17: $51
	ld   a, [hl-]                                    ; $7e18: $3a
	sub  h                                           ; $7e19: $94
	ld   a, [hl]                                     ; $7e1a: $7e
	add  sp, -$41                                    ; $7e1b: $e8 $bf
	jp   hl                                          ; $7e1d: $e9


	sbc  [hl]                                        ; $7e1e: $9e
	or   a                                           ; $7e1f: $b7
	ld   a, d                                        ; $7e20: $7a
	sub  [hl]                                        ; $7e21: $96
	ld   a, d                                        ; $7e22: $7a
	sub  a                                           ; $7e23: $97
	sbc  d                                           ; $7e24: $9a
	sub  l                                           ; $7e25: $95
	ld   d, l                                        ; $7e26: $55
	halt                                             ; $7e27: $76
	ld   de, $1155                                   ; $7e28: $11 $55 $11
	ld   l, b                                        ; $7e2b: $68
	ld   b, l                                        ; $7e2c: $45
	cp   l                                           ; $7e2d: $bd
	adc  b                                           ; $7e2e: $88
	rst  $28                                         ; $7e2f: $ef
	xor  b                                           ; $7e30: $a8
	sbc  $96                                         ; $7e31: $de $96
	cp   e                                           ; $7e33: $bb
	halt                                             ; $7e34: $76
	cp   h                                           ; $7e35: $bc
	adc  b                                           ; $7e36: $88
	cp   d                                           ; $7e37: $ba
	ld   [hl], a                                     ; $7e38: $77
	and  a                                           ; $7e39: $a7
	ld   b, [hl]                                     ; $7e3a: $46
	ld   h, d                                        ; $7e3b: $62
	inc  d                                           ; $7e3c: $14
	ld   d, c                                        ; $7e3d: $51
	ld   d, $75                                      ; $7e3e: $16 $75
	ld   e, d                                        ; $7e40: $5a
	cp   c                                           ; $7e41: $b9
	sbc  h                                           ; $7e42: $9c
	jp   c, $c89c                                    ; $7e43: $da $9c $c8

	ld   a, d                                        ; $7e46: $7a
	res  3, e                                        ; $7e47: $cb $9b
	jp   z, $a98a                                    ; $7e49: $ca $8a $a9

	sbc  d                                           ; $7e4c: $9a
	sub  l                                           ; $7e4d: $95
	ld   b, [hl]                                     ; $7e4e: $46
	ld   h, e                                        ; $7e4f: $63
	inc  h                                           ; $7e50: $24
	ld   b, d                                        ; $7e51: $42
	inc  h                                           ; $7e52: $24
	ld   h, l                                        ; $7e53: $65
	ld   d, a                                        ; $7e54: $57
	sbc  b                                           ; $7e55: $98
	adc  c                                           ; $7e56: $89
	cp   c                                           ; $7e57: $b9
	sbc  d                                           ; $7e58: $9a
	xor  c                                           ; $7e59: $a9
	xor  h                                           ; $7e5a: $ac
	db   $db                                         ; $7e5b: $db
	cp   e                                           ; $7e5c: $bb
	jp   c, $b89b                                    ; $7e5d: $da $9b $b8

	ld   a, c                                        ; $7e60: $79
	xor  b                                           ; $7e61: $a8
	ld   h, a                                        ; $7e62: $67
	ld   [hl], l                                     ; $7e63: $75
	ld   d, l                                        ; $7e64: $55
	ld   b, d                                        ; $7e65: $42
	inc  [hl]                                        ; $7e66: $34
	ld   [hl-], a                                    ; $7e67: $32
	ld   b, l                                        ; $7e68: $45
	ld   b, l                                        ; $7e69: $45
	ld   a, b                                        ; $7e6a: $78
	ld   a, b                                        ; $7e6b: $78
	xor  e                                           ; $7e6c: $ab
	sbc  d                                           ; $7e6d: $9a
	call z, $dcab                                    ; $7e6e: $cc $ab $dc
	cp   e                                           ; $7e71: $bb
	cp   e                                           ; $7e72: $bb
	xor  d                                           ; $7e73: $aa
	cp   d                                           ; $7e74: $ba
	sbc  b                                           ; $7e75: $98
	sbc  b                                           ; $7e76: $98
	sbc  b                                           ; $7e77: $98
	ld   h, [hl]                                     ; $7e78: $66
	ld   h, l                                        ; $7e79: $65
	ld   b, h                                        ; $7e7a: $44
	ld   b, e                                        ; $7e7b: $43
	inc  sp                                          ; $7e7c: $33
	inc  sp                                          ; $7e7d: $33
	ld   b, l                                        ; $7e7e: $45
	ld   h, [hl]                                     ; $7e7f: $66
	ld   a, b                                        ; $7e80: $78
	sbc  b                                           ; $7e81: $98
	sbc  c                                           ; $7e82: $99
	cp   e                                           ; $7e83: $bb
	cp   e                                           ; $7e84: $bb
	res  7, e                                        ; $7e85: $cb $bb
	cp   e                                           ; $7e87: $bb
	cp   e                                           ; $7e88: $bb
	cp   d                                           ; $7e89: $ba
	xor  c                                           ; $7e8a: $a9
	sbc  b                                           ; $7e8b: $98
	adc  b                                           ; $7e8c: $88
	halt                                             ; $7e8d: $76
	ld   h, [hl]                                     ; $7e8e: $66
	ld   h, [hl]                                     ; $7e8f: $66
	ld   h, [hl]                                     ; $7e90: $66
	ld   h, l                                        ; $7e91: $65
	ld   d, l                                        ; $7e92: $55
	ld   d, h                                        ; $7e93: $54
	ld   b, l                                        ; $7e94: $45
	ld   d, l                                        ; $7e95: $55
	ld   d, [hl]                                     ; $7e96: $56
	ld   [hl], a                                     ; $7e97: $77
	adc  c                                           ; $7e98: $89
	sbc  c                                           ; $7e99: $99
	sbc  e                                           ; $7e9a: $9b
	cp   d                                           ; $7e9b: $ba
	cp   e                                           ; $7e9c: $bb
	cp   e                                           ; $7e9d: $bb
	cp   c                                           ; $7e9e: $b9
	xor  e                                           ; $7e9f: $ab
	sbc  b                                           ; $7ea0: $98
	xor  d                                           ; $7ea1: $aa
	sbc  b                                           ; $7ea2: $98
	add  a                                           ; $7ea3: $87
	ld   [hl], a                                     ; $7ea4: $77
	ld   [hl], a                                     ; $7ea5: $77
	ld   h, a                                        ; $7ea6: $67
	ld   [hl], a                                     ; $7ea7: $77
	ld   h, a                                        ; $7ea8: $67
	ld   [hl], a                                     ; $7ea9: $77
	ld   [hl], a                                     ; $7eaa: $77
	ld   [hl], a                                     ; $7eab: $77
	ld   a, b                                        ; $7eac: $78
	halt                                             ; $7ead: $76
	ld   l, b                                        ; $7eae: $68
	halt                                             ; $7eaf: $76
	ld   [hl], a                                     ; $7eb0: $77
	ld   [hl], a                                     ; $7eb1: $77
	sbc  b                                           ; $7eb2: $98
	adc  c                                           ; $7eb3: $89
	sbc  b                                           ; $7eb4: $98
	sbc  c                                           ; $7eb5: $99
	adc  b                                           ; $7eb6: $88
	sbc  b                                           ; $7eb7: $98
	adc  c                                           ; $7eb8: $89
	adc  b                                           ; $7eb9: $88
	sbc  c                                           ; $7eba: $99
	sbc  b                                           ; $7ebb: $98
	sbc  c                                           ; $7ebc: $99
	sbc  b                                           ; $7ebd: $98
	sbc  b                                           ; $7ebe: $98
	adc  c                                           ; $7ebf: $89
	adc  b                                           ; $7ec0: $88
	adc  c                                           ; $7ec1: $89
	sbc  b                                           ; $7ec2: $98
	sbc  c                                           ; $7ec3: $99
	adc  b                                           ; $7ec4: $88
	sbc  b                                           ; $7ec5: $98
	ld   [hl], a                                     ; $7ec6: $77
	ld   a, b                                        ; $7ec7: $78
	sub  a                                           ; $7ec8: $97
	ld   a, b                                        ; $7ec9: $78
	ld   h, [hl]                                     ; $7eca: $66
	adc  b                                           ; $7ecb: $88
	ld   [hl], a                                     ; $7ecc: $77
	ld   [hl], a                                     ; $7ecd: $77
	ld   [hl], a                                     ; $7ece: $77
	ld   a, b                                        ; $7ecf: $78
	add  a                                           ; $7ed0: $87
	ld   a, b                                        ; $7ed1: $78
	adc  b                                           ; $7ed2: $88
	adc  c                                           ; $7ed3: $89
	sbc  b                                           ; $7ed4: $98
	sbc  d                                           ; $7ed5: $9a
	adc  b                                           ; $7ed6: $88
	sbc  b                                           ; $7ed7: $98
	adc  c                                           ; $7ed8: $89
	sbc  b                                           ; $7ed9: $98
	adc  b                                           ; $7eda: $88
	ld   [hl], a                                     ; $7edb: $77
	adc  c                                           ; $7edc: $89
	add  a                                           ; $7edd: $87
	sbc  b                                           ; $7ede: $98
	adc  c                                           ; $7edf: $89
	add  a                                           ; $7ee0: $87
	adc  b                                           ; $7ee1: $88
	adc  c                                           ; $7ee2: $89
	adc  b                                           ; $7ee3: $88
	adc  b                                           ; $7ee4: $88
	ld   a, b                                        ; $7ee5: $78
	ld   a, b                                        ; $7ee6: $78
	sbc  b                                           ; $7ee7: $98
	add  a                                           ; $7ee8: $87
	ld   [hl], a                                     ; $7ee9: $77
	ld   a, b                                        ; $7eea: $78
	adc  c                                           ; $7eeb: $89
	adc  b                                           ; $7eec: $88
	ld   a, b                                        ; $7eed: $78
	ld   [hl], a                                     ; $7eee: $77
	sub  a                                           ; $7eef: $97
	ld   a, b                                        ; $7ef0: $78
	ld   [hl], a                                     ; $7ef1: $77
	adc  b                                           ; $7ef2: $88
	ld   a, b                                        ; $7ef3: $78
	sub  a                                           ; $7ef4: $97
	adc  b                                           ; $7ef5: $88
	ld   a, b                                        ; $7ef6: $78
	sbc  b                                           ; $7ef7: $98
	ld   a, c                                        ; $7ef8: $79
	adc  c                                           ; $7ef9: $89
	adc  b                                           ; $7efa: $88
	add  a                                           ; $7efb: $87
	adc  b                                           ; $7efc: $88
	adc  c                                           ; $7efd: $89
	add  a                                           ; $7efe: $87
	sbc  c                                           ; $7eff: $99
	adc  b                                           ; $7f00: $88
	sbc  b                                           ; $7f01: $98
	adc  c                                           ; $7f02: $89
	adc  b                                           ; $7f03: $88
	sbc  b                                           ; $7f04: $98
	adc  b                                           ; $7f05: $88
	sbc  b                                           ; $7f06: $98
	adc  b                                           ; $7f07: $88
	ld   a, c                                        ; $7f08: $79
	add  a                                           ; $7f09: $87
	adc  b                                           ; $7f0a: $88
	add  a                                           ; $7f0b: $87
	ld   [hl], a                                     ; $7f0c: $77
	adc  b                                           ; $7f0d: $88
	ld   [hl], a                                     ; $7f0e: $77
	ld   a, c                                        ; $7f0f: $79
	add  a                                           ; $7f10: $87
	sbc  b                                           ; $7f11: $98
	ld   a, b                                        ; $7f12: $78
	ld   a, b                                        ; $7f13: $78
	add  a                                           ; $7f14: $87
	adc  b                                           ; $7f15: $88
	adc  b                                           ; $7f16: $88
	adc  b                                           ; $7f17: $88
	sbc  c                                           ; $7f18: $99
	ld   a, b                                        ; $7f19: $78
	sub  a                                           ; $7f1a: $97
	adc  c                                           ; $7f1b: $89
	adc  b                                           ; $7f1c: $88
	adc  b                                           ; $7f1d: $88
	add  a                                           ; $7f1e: $87
	sbc  b                                           ; $7f1f: $98
	ld   a, b                                        ; $7f20: $78
	sbc  c                                           ; $7f21: $99
	adc  b                                           ; $7f22: $88
	adc  c                                           ; $7f23: $89
	sub  a                                           ; $7f24: $97
	ld   a, c                                        ; $7f25: $79
	add  [hl]                                        ; $7f26: $86
	xor  b                                           ; $7f27: $a8
	ld   a, c                                        ; $7f28: $79
	add  [hl]                                        ; $7f29: $86
	sbc  c                                           ; $7f2a: $99
	ld   a, c                                        ; $7f2b: $79
	add  a                                           ; $7f2c: $87
	adc  b                                           ; $7f2d: $88
	adc  b                                           ; $7f2e: $88
	sbc  b                                           ; $7f2f: $98
	ld   a, c                                        ; $7f30: $79
	ld   [hl], a                                     ; $7f31: $77
	sub  a                                           ; $7f32: $97
	adc  b                                           ; $7f33: $88
	ld   a, b                                        ; $7f34: $78
	adc  b                                           ; $7f35: $88
	ld   a, b                                        ; $7f36: $78
	add  a                                           ; $7f37: $87
	ld   a, c                                        ; $7f38: $79
	add  a                                           ; $7f39: $87
	adc  b                                           ; $7f3a: $88
	ld   a, b                                        ; $7f3b: $78
	add  [hl]                                        ; $7f3c: $86
	sbc  b                                           ; $7f3d: $98
	ld   l, b                                        ; $7f3e: $68
	sub  [hl]                                        ; $7f3f: $96
	sbc  d                                           ; $7f40: $9a
	ld   h, a                                        ; $7f41: $67
	sbc  b                                           ; $7f42: $98
	ld   a, d                                        ; $7f43: $7a
	add  a                                           ; $7f44: $87
	sbc  b                                           ; $7f45: $98
	adc  c                                           ; $7f46: $89
	ld   [hl], a                                     ; $7f47: $77
	or   a                                           ; $7f48: $b7
	ld   a, d                                        ; $7f49: $7a
	add  a                                           ; $7f4a: $87
	adc  b                                           ; $7f4b: $88
	ld   a, b                                        ; $7f4c: $78
	sbc  b                                           ; $7f4d: $98
	ld   a, c                                        ; $7f4e: $79
	sub  a                                           ; $7f4f: $97
	ld   a, d                                        ; $7f50: $7a
	add  l                                           ; $7f51: $85
	cp   b                                           ; $7f52: $b8
	ld   e, e                                        ; $7f53: $5b
	sub  l                                           ; $7f54: $95
	sbc  d                                           ; $7f55: $9a
	ld   h, a                                        ; $7f56: $67
	or   l                                           ; $7f57: $b5
	ld   a, h                                        ; $7f58: $7c
	ld   d, [hl]                                     ; $7f59: $56
	or   [hl]                                        ; $7f5a: $b6
	ld   l, d                                        ; $7f5b: $6a
	sub  [hl]                                        ; $7f5c: $96
	sbc  c                                           ; $7f5d: $99
	ld   a, c                                        ; $7f5e: $79
	adc  b                                           ; $7f5f: $88
	ld   [hl], a                                     ; $7f60: $77
	and  a                                           ; $7f61: $a7
	ld   a, d                                        ; $7f62: $7a
	sub  [hl]                                        ; $7f63: $96
	adc  d                                           ; $7f64: $8a
	ld   e, b                                        ; $7f65: $58
	and  l                                           ; $7f66: $a5
	adc  c                                           ; $7f67: $89
	ld   l, c                                        ; $7f68: $69
	adc  b                                           ; $7f69: $88
	add  a                                           ; $7f6a: $87
	xor  b                                           ; $7f6b: $a8
	ld   l, d                                        ; $7f6c: $6a
	add  l                                           ; $7f6d: $85
	xor  d                                           ; $7f6e: $aa
	ld   d, a                                        ; $7f6f: $57
	cp   b                                           ; $7f70: $b8
	ld   e, c                                        ; $7f71: $59
	sub  [hl]                                        ; $7f72: $96
	ld   a, c                                        ; $7f73: $79
	halt                                             ; $7f74: $76
	xor  c                                           ; $7f75: $a9
	ld   e, c                                        ; $7f76: $59
	or   l                                           ; $7f77: $b5
	ld   l, e                                        ; $7f78: $6b
	halt                                             ; $7f79: $76
	sbc  c                                           ; $7f7a: $99
	ld   l, b                                        ; $7f7b: $68
	sbc  b                                           ; $7f7c: $98
	ld   a, b                                        ; $7f7d: $78
	sub  a                                           ; $7f7e: $97
	ld   a, c                                        ; $7f7f: $79
	add  [hl]                                        ; $7f80: $86
	sbc  d                                           ; $7f81: $9a
	ld   [hl], a                                     ; $7f82: $77
	sub  a                                           ; $7f83: $97
	adc  c                                           ; $7f84: $89
	adc  c                                           ; $7f85: $89
	ld   [hl], a                                     ; $7f86: $77
	and  a                                           ; $7f87: $a7
	ld   l, d                                        ; $7f88: $6a
	add  a                                           ; $7f89: $87
	sbc  d                                           ; $7f8a: $9a
	ld   [hl], a                                     ; $7f8b: $77
	and  a                                           ; $7f8c: $a7
	ld   a, c                                        ; $7f8d: $79
	sub  [hl]                                        ; $7f8e: $96
	sbc  c                                           ; $7f8f: $99
	ld   [hl], a                                     ; $7f90: $77
	adc  c                                           ; $7f91: $89
	ld   l, c                                        ; $7f92: $69
	add  a                                           ; $7f93: $87
	sub  a                                           ; $7f94: $97
	sbc  b                                           ; $7f95: $98
	ld   a, c                                        ; $7f96: $79
	ld   a, b                                        ; $7f97: $78
	ld   [hl], a                                     ; $7f98: $77
	sbc  b                                           ; $7f99: $98
	adc  c                                           ; $7f9a: $89
	ld   [hl], a                                     ; $7f9b: $77
	and  a                                           ; $7f9c: $a7
	ld   a, c                                        ; $7f9d: $79
	ld   a, b                                        ; $7f9e: $78
	add  a                                           ; $7f9f: $87
	adc  b                                           ; $7fa0: $88
	sbc  b                                           ; $7fa1: $98
	ld   a, c                                        ; $7fa2: $79
	sub  [hl]                                        ; $7fa3: $96
	adc  c                                           ; $7fa4: $89
	ld   [hl], a                                     ; $7fa5: $77
	sbc  c                                           ; $7fa6: $99
	ld   a, b                                        ; $7fa7: $78
	sbc  b                                           ; $7fa8: $98
	add  a                                           ; $7fa9: $87
	adc  c                                           ; $7faa: $89
	ld   a, b                                        ; $7fab: $78
	sub  a                                           ; $7fac: $97
	adc  c                                           ; $7fad: $89
	ld   [hl], a                                     ; $7fae: $77
	adc  b                                           ; $7faf: $88
	add  a                                           ; $7fb0: $87
	sbc  b                                           ; $7fb1: $98
	add  a                                           ; $7fb2: $87
	adc  b                                           ; $7fb3: $88
	adc  b                                           ; $7fb4: $88
	ld   a, b                                        ; $7fb5: $78
	adc  c                                           ; $7fb6: $89
	add  a                                           ; $7fb7: $87
	ld   a, c                                        ; $7fb8: $79
	sub  a                                           ; $7fb9: $97
	sbc  b                                           ; $7fba: $98
	sub  a                                           ; $7fbb: $97
	add  a                                           ; $7fbc: $87
	adc  b                                           ; $7fbd: $88
	sub  a                                           ; $7fbe: $97
	adc  c                                           ; $7fbf: $89
	ld   [hl], a                                     ; $7fc0: $77
	ld   a, c                                        ; $7fc1: $79
	ld   a, b                                        ; $7fc2: $78
	sbc  b                                           ; $7fc3: $98
	adc  c                                           ; $7fc4: $89
	add  a                                           ; $7fc5: $87
	adc  b                                           ; $7fc6: $88
	adc  b                                           ; $7fc7: $88
	sbc  b                                           ; $7fc8: $98
	adc  b                                           ; $7fc9: $88
	adc  b                                           ; $7fca: $88
	adc  c                                           ; $7fcb: $89
	ld   a, b                                        ; $7fcc: $78
	sub  a                                           ; $7fcd: $97
	ld   a, c                                        ; $7fce: $79
	adc  b                                           ; $7fcf: $88
	adc  b                                           ; $7fd0: $88
	add  a                                           ; $7fd1: $87
	adc  c                                           ; $7fd2: $89
	sbc  b                                           ; $7fd3: $98
	ld   a, c                                        ; $7fd4: $79
	adc  c                                           ; $7fd5: $89
	adc  b                                           ; $7fd6: $88
	adc  c                                           ; $7fd7: $89
	add  a                                           ; $7fd8: $87
	sbc  b                                           ; $7fd9: $98
	sub  a                                           ; $7fda: $97
	adc  b                                           ; $7fdb: $88
	adc  c                                           ; $7fdc: $89
	ld   a, b                                        ; $7fdd: $78
	adc  b                                           ; $7fde: $88
	sbc  b                                           ; $7fdf: $98
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
	ld   a, c                                        ; $7ff6: $79
	adc  b                                           ; $7ff7: $88
	adc  b                                           ; $7ff8: $88
	sbc  b                                           ; $7ff9: $98
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	adc  b                                           ; $7ffc: $88
	ld   a, b                                        ; $7ffd: $78
	adc  b                                           ; $7ffe: $88
	adc  b                                           ; $7fff: $88
