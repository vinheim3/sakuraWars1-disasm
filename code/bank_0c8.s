; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0c8", ROMX[$4000], BANK[$c8]

	rst  $28                                         ; $4000: $ef
	call c, $c9ca                                    ; $4001: $dc $ca $c9
	adc  h                                           ; $4004: $8c
	cp   d                                           ; $4005: $ba
	cp   e                                           ; $4006: $bb
	db   $ec                                         ; $4007: $ec
	xor  l                                           ; $4008: $ad
	res  7, c                                        ; $4009: $cb $b9
	cp   e                                           ; $400b: $bb
	adc  b                                           ; $400c: $88
	ld   [hl], a                                     ; $400d: $77
	ld   [hl], l                                     ; $400e: $75
	ld   b, l                                        ; $400f: $45
	ld   b, h                                        ; $4010: $44
	inc  sp                                          ; $4011: $33
	ld   [hl+], a                                    ; $4012: $22
	ld   de, $1111                                   ; $4013: $11 $11 $11
	ld   de, $3211                                   ; $4016: $11 $11 $32
	inc  de                                          ; $4019: $13
	sbc  d                                           ; $401a: $9a
	ld   l, c                                        ; $401b: $69
	rst  $38                                         ; $401c: $ff
	cp   l                                           ; $401d: $bd
	rst  $38                                         ; $401e: $ff
	db   $fd                                         ; $401f: $fd
	rst  $38                                         ; $4020: $ff
	sbc  $ca                                         ; $4021: $de $ca
	cp   e                                           ; $4023: $bb
	cp   h                                           ; $4024: $bc
	adc  e                                           ; $4025: $8b
	db   $ec                                         ; $4026: $ec
	cp   d                                           ; $4027: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4028: $cf
	xor  c                                           ; $4029: $a9
	cp   d                                           ; $402a: $ba
	cp   c                                           ; $402b: $b9
	ld   a, c                                        ; $402c: $79
	add  a                                           ; $402d: $87
	ld   h, l                                        ; $402e: $65
	ld   h, [hl]                                     ; $402f: $66
	ld   b, e                                        ; $4030: $43
	ld   b, e                                        ; $4031: $43
	ld   hl, $1121                                   ; $4032: $21 $21 $11
	ld   de, $1111                                   ; $4035: $11 $11 $11
	ld   de, $4645                                   ; $4038: $11 $45 $46
	sbc  d                                           ; $403b: $9a
	db   $dd                                         ; $403c: $dd
	rst  JumpTable                                         ; $403d: $df
	rst  $28                                         ; $403e: $ef
	db   $fd                                         ; $403f: $fd
	rst  $38                                         ; $4040: $ff
	xor  $bc                                         ; $4041: $ee $bc
	reti                                             ; $4043: $d9


	cp   h                                           ; $4044: $bc
	cp   e                                           ; $4045: $bb
	cp   h                                           ; $4046: $bc
	jp   z, $cbcc                                    ; $4047: $ca $cc $cb

	cp   e                                           ; $404a: $bb
	jp   z, $9798                                    ; $404b: $ca $98 $97

	ld   h, [hl]                                     ; $404e: $66
	ld   h, l                                        ; $404f: $65
	ld   d, h                                        ; $4050: $54
	ld   b, h                                        ; $4051: $44
	ld   hl, $0121                                   ; $4052: $21 $21 $01
	ld   bc, $1111                                   ; $4055: $01 $11 $11
	ld   [de], a                                     ; $4058: $12
	ld   d, c                                        ; $4059: $51
	add  hl, hl                                      ; $405a: $29
	xor  e                                           ; $405b: $ab
	adc  e                                           ; $405c: $8b
	rst  $38                                         ; $405d: $ff
	call c, $fcff                                    ; $405e: $dc $ff $fc
	db   $fc                                         ; $4061: $fc
	cp   $8c                                         ; $4062: $fe $8c
	cp   e                                           ; $4064: $bb
	add  sp, -$42                                    ; $4065: $e8 $be
	rst  JumpTable                                         ; $4067: $df
	xor  c                                           ; $4068: $a9
	db   $ec                                         ; $4069: $ec
	cp   e                                           ; $406a: $bb
	ld   a, e                                        ; $406b: $7b
	and  a                                           ; $406c: $a7
	add  l                                           ; $406d: $85
	ld   a, d                                        ; $406e: $7a
	ld   h, l                                        ; $406f: $65
	ld   d, l                                        ; $4070: $55
	ld   [hl], h                                     ; $4071: $74
	ld   hl, $1123                                   ; $4072: $21 $23 $11
	ld   de, $1111                                   ; $4075: $11 $11 $11
	ld   de, $2522                                   ; $4078: $11 $22 $25
	sbc  e                                           ; $407b: $9b
	sbc  c                                           ; $407c: $99
	rst  $38                                         ; $407d: $ff
	xor  $df                                         ; $407e: $ee $df
	db   $fd                                         ; $4080: $fd
	db   $ed                                         ; $4081: $ed
	rst  JumpTable                                         ; $4082: $df
	db   $db                                         ; $4083: $db
	cp   e                                           ; $4084: $bb
	call c, $debc                                    ; $4085: $dc $bc $de
	db   $db                                         ; $4088: $db
	cp   d                                           ; $4089: $ba
	xor  e                                           ; $408a: $ab
	xor  c                                           ; $408b: $a9
	adc  c                                           ; $408c: $89
	xor  b                                           ; $408d: $a8
	halt                                             ; $408e: $76
	ld   [hl], a                                     ; $408f: $77
	ld   h, l                                        ; $4090: $65
	ld   d, h                                        ; $4091: $54
	ld   d, d                                        ; $4092: $52
	ld   de, $1102                                   ; $4093: $11 $02 $11
	ld   de, $1111                                   ; $4096: $11 $11 $11
	ld   hl, $7826                                   ; $4099: $21 $26 $78
	ld   l, b                                        ; $409c: $68
	rst  $38                                         ; $409d: $ff
	call $fcef                                       ; $409e: $cd $ef $fc
	rst  $28                                         ; $40a1: $ef
	db   $dd                                         ; $40a2: $dd
	cp   e                                           ; $40a3: $bb
	jp   hl                                          ; $40a4: $e9


	xor  l                                           ; $40a5: $ad
	sbc  h                                           ; $40a6: $9c
	jp   c, $aeeb                                    ; $40a7: $da $eb $ae

	cp   e                                           ; $40aa: $bb
	or   [hl]                                        ; $40ab: $b6
	cp   e                                           ; $40ac: $bb
	ld   l, b                                        ; $40ad: $68
	ld   h, a                                        ; $40ae: $67
	sub  l                                           ; $40af: $95
	ld   d, [hl]                                     ; $40b0: $56
	ld   d, [hl]                                     ; $40b1: $56
	ld   sp, $2311                                   ; $40b2: $31 $11 $23
	ld   de, $3111                                   ; $40b5: $11 $11 $31
	ld   de, $3422                                   ; $40b8: $11 $22 $34
	ld   a, d                                        ; $40bb: $7a
	sbc  h                                           ; $40bc: $9c
	db   $ed                                         ; $40bd: $ed
	rst  $38                                         ; $40be: $ff
	db   $dd                                         ; $40bf: $dd
	rst  JumpTable                                         ; $40c0: $df
	db   $fc                                         ; $40c1: $fc
	cp   l                                           ; $40c2: $bd
	adc  $b8                                         ; $40c3: $ce $b8
	call z, $ccdf                                    ; $40c5: $cc $df $cc
	db   $db                                         ; $40c8: $db
	jp   z, $999b                                    ; $40c9: $ca $9b $99

	sbc  b                                           ; $40cc: $98
	sbc  b                                           ; $40cd: $98
	ld   h, a                                        ; $40ce: $67
	ld   [hl], a                                     ; $40cf: $77
	ld   h, l                                        ; $40d0: $65
	ld   d, h                                        ; $40d1: $54
	ld   hl, $1111                                   ; $40d2: $21 $11 $11
	ld   de, $2111                                   ; $40d5: $11 $11 $21
	ld   de, $7715                                   ; $40d8: $11 $15 $77
	ld   a, b                                        ; $40db: $78
	xor  h                                           ; $40dc: $ac
	rst  JumpTable                                         ; $40dd: $df
	db   $fc                                         ; $40de: $fc
	sbc  $ff                                         ; $40df: $de $ff
	db   $ed                                         ; $40e1: $ed
	call z, $bdec                                    ; $40e2: $cc $ec $bd
	xor  e                                           ; $40e5: $ab
	db   $ed                                         ; $40e6: $ed
	db   $eb                                         ; $40e7: $eb
	cp   h                                           ; $40e8: $bc
	xor  d                                           ; $40e9: $aa
	xor  c                                           ; $40ea: $a9
	cp   c                                           ; $40eb: $b9
	ld   a, c                                        ; $40ec: $79
	adc  b                                           ; $40ed: $88
	add  [hl]                                        ; $40ee: $86
	halt                                             ; $40ef: $76
	ld   b, l                                        ; $40f0: $45
	ld   sp, $1111                                   ; $40f1: $31 $11 $11
	ld   de, $1111                                   ; $40f4: $11 $11 $11
	ld   hl, $4911                                   ; $40f7: $21 $11 $49
	xor  e                                           ; $40fa: $ab
	cp   e                                           ; $40fb: $bb
	call $ecff                                       ; $40fc: $cd $ff $ec
	adc  $ff                                         ; $40ff: $ce $ff
	db   $ec                                         ; $4101: $ec
	xor  h                                           ; $4102: $ac
	xor  $fa                                         ; $4103: $ee $fa
	xor  [hl]                                        ; $4105: $ae
	db   $dd                                         ; $4106: $dd
	cp   c                                           ; $4107: $b9
	cp   d                                           ; $4108: $ba
	cp   e                                           ; $4109: $bb
	sbc  b                                           ; $410a: $98
	add  a                                           ; $410b: $87
	sbc  b                                           ; $410c: $98
	ld   [hl], l                                     ; $410d: $75
	ld   b, l                                        ; $410e: $45
	ld   d, e                                        ; $410f: $53
	ld   hl, $1111                                   ; $4110: $21 $11 $11
	ld   de, $1111                                   ; $4113: $11 $11 $11
	ld   de, $7713                                   ; $4116: $11 $13 $77
	call $dfce                                       ; $4119: $cd $ce $df
	db   $fc                                         ; $411c: $fc
	rst  $28                                         ; $411d: $ef
	rst  $28                                         ; $411e: $ef
	xor  $db                                         ; $411f: $ee $db
	rst  JumpTable                                         ; $4121: $df
	db   $dd                                         ; $4122: $dd
	cp   l                                           ; $4123: $bd
	db   $dd                                         ; $4124: $dd
	call c, $9aa9                                    ; $4125: $dc $a9 $9a
	xor  c                                           ; $4128: $a9
	ld   l, b                                        ; $4129: $68
	sbc  c                                           ; $412a: $99
	sub  a                                           ; $412b: $97
	ld   d, l                                        ; $412c: $55
	inc  sp                                          ; $412d: $33
	ld   hl, $1111                                   ; $412e: $21 $11 $11
	ld   de, $1111                                   ; $4131: $11 $11 $11
	ld   [de], a                                     ; $4134: $12
	ld   b, h                                        ; $4135: $44
	sub  a                                           ; $4136: $97
	sbc  a                                           ; $4137: $9f
	rst  $38                                         ; $4138: $ff
	ld   [$ffff], a                                  ; $4139: $ea $ff $ff
	db   $fd                                         ; $413c: $fd
	db   $eb                                         ; $413d: $eb
	rst  $28                                         ; $413e: $ef
	cp   l                                           ; $413f: $bd
	jp   z, $deee                                    ; $4140: $ca $ee $de

	xor  d                                           ; $4143: $aa
	xor  c                                           ; $4144: $a9
	jp   z, Jump_0c8_5998                            ; $4145: $ca $98 $59

	and  a                                           ; $4148: $a7
	ld   [hl], l                                     ; $4149: $75
	ld   b, h                                        ; $414a: $44
	ld   de, $1111                                   ; $414b: $11 $11 $11
	ld   de, $1111                                   ; $414e: $11 $11 $11
	ld   [de], a                                     ; $4151: $12
	ld   de, $ff58                                   ; $4152: $11 $58 $ff
	db   $ed                                         ; $4155: $ed
	sbc  [hl]                                        ; $4156: $9e
	rst  $38                                         ; $4157: $ff
	cp   $9c                                         ; $4158: $fe $9c
	rst  $38                                         ; $415a: $ff
	ld   a, [$bf89]                                  ; $415b: $fa $89 $bf
	rst  $38                                         ; $415e: $ff
	or   a                                           ; $415f: $b7
	sbc  l                                           ; $4160: $9d
	db   $ed                                         ; $4161: $ed
	ld   [hl], h                                     ; $4162: $74
	ld   l, c                                        ; $4163: $69
	cp   e                                           ; $4164: $bb
	add  [hl]                                        ; $4165: $86
	ld   b, e                                        ; $4166: $43
	ld   b, e                                        ; $4167: $43
	ld   de, $1111                                   ; $4168: $11 $11 $11
	ld   de, $1111                                   ; $416b: $11 $11 $11
	dec  d                                           ; $416e: $15
	add  a                                           ; $416f: $87
	sbc  e                                           ; $4170: $9b
	rst  $28                                         ; $4171: $ef
	rst  $38                                         ; $4172: $ff
	ei                                               ; $4173: $fb
	rst  $28                                         ; $4174: $ef
	rst  $38                                         ; $4175: $ff
	db   $fd                                         ; $4176: $fd
	ei                                               ; $4177: $fb
	rst  JumpTable                                         ; $4178: $df
	rst  $28                                         ; $4179: $ef
	set  5, [hl]                                     ; $417a: $cb $ee
	xor  $a8                                         ; $417c: $ee $a8
	ld   [hl], a                                     ; $417e: $77
	cp   h                                           ; $417f: $bc
	xor  c                                           ; $4180: $a9
	ld   h, [hl]                                     ; $4181: $66
	ld   h, e                                        ; $4182: $63
	ld   b, e                                        ; $4183: $43
	ld   de, $1111                                   ; $4184: $11 $11 $11
	ld   de, $1111                                   ; $4187: $11 $11 $11
	ld   h, a                                        ; $418a: $67
	and  a                                           ; $418b: $a7
	ld   l, a                                        ; $418c: $6f
	rst  JumpTable                                         ; $418d: $df
	rst  $38                                         ; $418e: $ff
	ei                                               ; $418f: $fb
	cp   a                                           ; $4190: $bf
	rst  $38                                         ; $4191: $ff
	jp   hl                                          ; $4192: $e9


	set  7, a                                        ; $4193: $cb $ff
	cp   $aa                                         ; $4195: $fe $aa
	rst  $28                                         ; $4197: $ef
	db   $eb                                         ; $4198: $eb
	ld   [hl], l                                     ; $4199: $75
	adc  c                                           ; $419a: $89
	call z, $2175                                    ; $419b: $cc $75 $21
	ld   d, h                                        ; $419e: $54
	ld   sp, $1111                                   ; $419f: $31 $11 $11
	ld   de, $1111                                   ; $41a2: $11 $11 $11
	add  hl, sp                                      ; $41a5: $39
	set  5, [hl]                                     ; $41a6: $cb $ee
	cp   a                                           ; $41a8: $bf
	rst  $38                                         ; $41a9: $ff
	db   $fc                                         ; $41aa: $fc
	db   $eb                                         ; $41ab: $eb
	rst  JumpTable                                         ; $41ac: $df
	rst  $38                                         ; $41ad: $ff
	db   $fd                                         ; $41ae: $fd
	rst  $38                                         ; $41af: $ff
	rst  $38                                         ; $41b0: $ff
	db   $ec                                         ; $41b1: $ec
	cp   d                                           ; $41b2: $ba
	xor  e                                           ; $41b3: $ab
	xor  b                                           ; $41b4: $a8
	sub  a                                           ; $41b5: $97
	add  a                                           ; $41b6: $87
	ld   l, b                                        ; $41b7: $68
	ld   b, e                                        ; $41b8: $43
	ld   sp, $1111                                   ; $41b9: $31 $11 $11
	ld   de, $1111                                   ; $41bc: $11 $11 $11
	ld   c, b                                        ; $41bf: $48
	db   $dd                                         ; $41c0: $dd
	ld   a, e                                        ; $41c1: $7b
	rst  $38                                         ; $41c2: $ff
	db   $fd                                         ; $41c3: $fd
	db   $dd                                         ; $41c4: $dd
	xor  a                                           ; $41c5: $af
	rst  $38                                         ; $41c6: $ff
	cp   $ff                                         ; $41c7: $fe $ff

Jump_0c8_41c9:
	rst  $28                                         ; $41c9: $ef
	rst  $38                                         ; $41ca: $ff
	rst  $38                                         ; $41cb: $ff
	call c, $8999                                    ; $41cc: $dc $99 $89
	xor  c                                           ; $41cf: $a9
	ld   b, h                                        ; $41d0: $44
	ld   d, [hl]                                     ; $41d1: $56
	ld   d, c                                        ; $41d2: $51
	ld   de, $1111                                   ; $41d3: $11 $11 $11
	ld   de, $1211                                   ; $41d6: $11 $11 $12
	cp   e                                           ; $41d9: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41da: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41db: $cf
	rst  $38                                         ; $41dc: $ff
	db   $fd                                         ; $41dd: $fd
	cp   a                                           ; $41de: $bf
	rst  JumpTable                                         ; $41df: $df
	db   $fd                                         ; $41e0: $fd
	xor  $df                                         ; $41e1: $ee $df
	rst  $28                                         ; $41e3: $ef
	rst  $38                                         ; $41e4: $ff
	rst  $38                                         ; $41e5: $ff
	xor  c                                           ; $41e6: $a9
	ld   h, l                                        ; $41e7: $65
	ld   h, [hl]                                     ; $41e8: $66
	sbc  b                                           ; $41e9: $98
	ld   [hl-], a                                    ; $41ea: $32
	ld   de, $1121                                   ; $41eb: $11 $21 $11
	ld   de, $1111                                   ; $41ee: $11 $11 $11
	inc  de                                          ; $41f1: $13
	adc  d                                           ; $41f2: $8a
	rst  $38                                         ; $41f3: $ff
	rst  $38                                         ; $41f4: $ff
	rst  $38                                         ; $41f5: $ff
	ld   a, [$cfff]                                  ; $41f6: $fa $ff $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41f9: $cf
	cp   $ff                                         ; $41fa: $fe $ff
	rst  JumpTable                                         ; $41fc: $df
	call $d9fd                                       ; $41fd: $cd $fd $d9
	inc  sp                                          ; $4200: $33
	inc  hl                                          ; $4201: $23
	sub  [hl]                                        ; $4202: $96
	ld   [hl-], a                                    ; $4203: $32
	ld   de, $1111                                   ; $4204: $11 $11 $11
	ld   de, $1611                                   ; $4207: $11 $11 $16
	or   [hl]                                        ; $420a: $b6
	sbc  a                                           ; $420b: $9f
	cp   $ef                                         ; $420c: $fe $ef
	cp   $ff                                         ; $420e: $fe $ff
	call $efdf                                       ; $4210: $cd $df $ef
	db   $fc                                         ; $4213: $fc
	rst  $38                                         ; $4214: $ff
	cp   $eb                                         ; $4215: $fe $eb
	ld   d, l                                        ; $4217: $55
	ld   h, a                                        ; $4218: $67
	ld   h, e                                        ; $4219: $63
	ld   de, $1111                                   ; $421a: $11 $11 $11
	ld   de, $1111                                   ; $421d: $11 $11 $11
	ld   de, $ada7                                   ; $4220: $11 $a7 $ad
	set  5, a                                        ; $4223: $cb $ef
	cp   $f8                                         ; $4225: $fe $f8
	xor  a                                           ; $4227: $af
	rst  $38                                         ; $4228: $ff
	rst  $38                                         ; $4229: $ff
	ret                                              ; $422a: $c9


	rst  $38                                         ; $422b: $ff
	rst  $38                                         ; $422c: $ff
	rst  ToBoot                                         ; $422d: $c7
	ld   a, d                                        ; $422e: $7a
	and  [hl]                                        ; $422f: $a6
	ld   [hl-], a                                    ; $4230: $32
	ld   de, $1121                                   ; $4231: $11 $21 $11
	ld   de, $1111                                   ; $4234: $11 $11 $11
	inc  de                                          ; $4237: $13
	ld   h, h                                        ; $4238: $64
	ld   a, d                                        ; $4239: $7a
	rst  $28                                         ; $423a: $ef
	rst  $38                                         ; $423b: $ff
	db   $fc                                         ; $423c: $fc
	rst  $38                                         ; $423d: $ff
	rst  $28                                         ; $423e: $ef
	cp   $ff                                         ; $423f: $fe $ff
	rst  $38                                         ; $4241: $ff
	rst  $28                                         ; $4242: $ef
	call $b8eb                                       ; $4243: $cd $eb $b8
	ld   h, h                                        ; $4246: $64
	ld   [hl-], a                                    ; $4247: $32
	ld   de, $1311                                   ; $4248: $11 $11 $13
	ld   de, $1111                                   ; $424b: $11 $11 $11
	inc  sp                                          ; $424e: $33
	ld   d, a                                        ; $424f: $57
	xor  a                                           ; $4250: $af
	rst  $28                                         ; $4251: $ef
	rst  $28                                         ; $4252: $ef
	ei                                               ; $4253: $fb
	rst  $38                                         ; $4254: $ff
	rst  $28                                         ; $4255: $ef
	db   $fd                                         ; $4256: $fd
	rst  $38                                         ; $4257: $ff
	rst  $38                                         ; $4258: $ff
	rst  JumpTable                                         ; $4259: $df
	call z, $64db                                    ; $425a: $cc $db $64
	ld   hl, $1111                                   ; $425d: $21 $11 $11
	inc  bc                                          ; $4260: $03
	ld   de, $1111                                   ; $4261: $11 $11 $11
	dec  d                                           ; $4264: $15
	ld   b, a                                        ; $4265: $47
	sbc  c                                           ; $4266: $99
	rst  $28                                         ; $4267: $ef
	rst  $38                                         ; $4268: $ff
	cp   d                                           ; $4269: $ba
	rst  $38                                         ; $426a: $ff
	rst  $38                                         ; $426b: $ff
	rst  $28                                         ; $426c: $ef
	sbc  $ff                                         ; $426d: $de $ff
	cp   $db                                         ; $426f: $fe $db
	and  a                                           ; $4271: $a7
	ld   [hl], l                                     ; $4272: $75
	ld   d, h                                        ; $4273: $54
	ld   [hl+], a                                    ; $4274: $22
	ld   de, $1111                                   ; $4275: $11 $11 $11
	ld   de, $1511                                   ; $4278: $11 $11 $15
	dec  [hl]                                        ; $427b: $35
	db   $fd                                         ; $427c: $fd
	sbc  a                                           ; $427d: $9f
	adc  $fe                                         ; $427e: $ce $fe
	cp   d                                           ; $4280: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4281: $cf
	rst  $38                                         ; $4282: $ff
	ld   sp, hl                                      ; $4283: $f9
	sbc  $cf                                         ; $4284: $de $cf
	db   $db                                         ; $4286: $db
	add  l                                           ; $4287: $85
	ld   d, h                                        ; $4288: $54
	dec  [hl]                                        ; $4289: $35
	ld   de, $2243                                   ; $428a: $11 $43 $22
	ld   de, $1211                                   ; $428d: $11 $11 $12
	add  [hl]                                        ; $4290: $86
	ld   e, h                                        ; $4291: $5c
	call c, $cdef                                    ; $4292: $dc $ef $cd
	db   $db                                         ; $4295: $db
	xor  l                                           ; $4296: $ad
	db   $ed                                         ; $4297: $ed
	rst  $38                                         ; $4298: $ff
	db   $dd                                         ; $4299: $dd
	set  1, l                                        ; $429a: $cb $cd
	ret  c                                           ; $429c: $d8

	ld   d, e                                        ; $429d: $53
	inc  de                                          ; $429e: $13
	ld   b, l                                        ; $429f: $45
	ld   [hl-], a                                    ; $42a0: $32
	ld   de, $1111                                   ; $42a1: $11 $11 $11
	inc  de                                          ; $42a4: $13
	ld   d, l                                        ; $42a5: $55
	sbc  l                                           ; $42a6: $9d
	rst  JumpTable                                         ; $42a7: $df
	cp   d                                           ; $42a8: $ba
	adc  d                                           ; $42a9: $8a
	adc  $ff                                         ; $42aa: $ce $ff
	jp   c, $dfab                                    ; $42ac: $da $ab $df

	db   $ec                                         ; $42af: $ec
	cp   c                                           ; $42b0: $b9
	adc  d                                           ; $42b1: $8a
	and  [hl]                                        ; $42b2: $a6
	ld   b, d                                        ; $42b3: $42
	ld   de, $6347                                   ; $42b4: $11 $47 $63
	ld   de, $4811                                   ; $42b7: $11 $11 $48
	add  a                                           ; $42ba: $87
	ld   h, l                                        ; $42bb: $65
	xor  [hl]                                        ; $42bc: $ae
	db   $dd                                         ; $42bd: $dd
	cp   b                                           ; $42be: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42bf: $cf
	sbc  $b9                                         ; $42c0: $de $b9
	call $daff                                       ; $42c2: $cd $ff $da
	add  a                                           ; $42c5: $87
	add  a                                           ; $42c6: $87
	add  a                                           ; $42c7: $87
	ld   b, h                                        ; $42c8: $44
	ld   b, e                                        ; $42c9: $43
	ld   b, h                                        ; $42ca: $44
	ld   b, h                                        ; $42cb: $44
	ld   de, $3411                                   ; $42cc: $11 $11 $34
	ld   l, b                                        ; $42cf: $68
	add  a                                           ; $42d0: $87
	sbc  d                                           ; $42d1: $9a
	cp   h                                           ; $42d2: $bc
	res  3, c                                        ; $42d3: $cb $99
	xor  l                                           ; $42d5: $ad
	rst  $38                                         ; $42d6: $ff
	ld   [$ce9a], a                                  ; $42d7: $ea $9a $ce
	reti                                             ; $42da: $d9


	ld   h, l                                        ; $42db: $65
	ld   d, a                                        ; $42dc: $57
	halt                                             ; $42dd: $76
	ld   h, d                                        ; $42de: $62
	inc  hl                                          ; $42df: $23
	ld   b, [hl]                                     ; $42e0: $46
	ld   b, e                                        ; $42e1: $43
	ld   sp, $9b26                                   ; $42e2: $31 $26 $9b
	add  l                                           ; $42e5: $85
	ld   d, l                                        ; $42e6: $55
	ld   a, e                                        ; $42e7: $7b
	set  1, [hl]                                     ; $42e8: $cb $ce
	res  5, c                                        ; $42ea: $cb $a9
	xor  l                                           ; $42ec: $ad
	db   $dd                                         ; $42ed: $dd
	db   $db                                         ; $42ee: $db
	halt                                             ; $42ef: $76
	ld   a, c                                        ; $42f0: $79
	sbc  b                                           ; $42f1: $98
	ld   h, e                                        ; $42f2: $63
	ld   b, [hl]                                     ; $42f3: $46
	ld   l, b                                        ; $42f4: $68
	ld   h, e                                        ; $42f5: $63
	ld   [hl+], a                                    ; $42f6: $22
	dec  [hl]                                        ; $42f7: $35
	ld   a, c                                        ; $42f8: $79
	ld   h, [hl]                                     ; $42f9: $66
	ld   [hl], a                                     ; $42fa: $77
	adc  d                                           ; $42fb: $8a
	sub  a                                           ; $42fc: $97
	sbc  d                                           ; $42fd: $9a
	xor  e                                           ; $42fe: $ab
	jp   z, $ab8a                                    ; $42ff: $ca $8a $ab

	res  7, e                                        ; $4302: $cb $bb
	and  a                                           ; $4304: $a7
	ld   h, [hl]                                     ; $4305: $66
	halt                                             ; $4306: $76
	ld   a, b                                        ; $4307: $78
	adc  b                                           ; $4308: $88
	ld   [hl], l                                     ; $4309: $75
	ld   b, [hl]                                     ; $430a: $46
	ld   [hl], a                                     ; $430b: $77
	add  a                                           ; $430c: $87
	ld   h, l                                        ; $430d: $65
	ld   d, l                                        ; $430e: $55
	ld   h, a                                        ; $430f: $67
	sbc  c                                           ; $4310: $99
	adc  b                                           ; $4311: $88
	ld   [hl], a                                     ; $4312: $77
	adc  d                                           ; $4313: $8a
	cp   c                                           ; $4314: $b9
	xor  c                                           ; $4315: $a9
	adc  c                                           ; $4316: $89
	adc  c                                           ; $4317: $89
	sbc  c                                           ; $4318: $99
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	adc  b                                           ; $431b: $88
	add  a                                           ; $431c: $87
	ld   h, h                                        ; $431d: $64
	ld   b, l                                        ; $431e: $45
	ld   a, c                                        ; $431f: $79
	sbc  b                                           ; $4320: $98
	add  a                                           ; $4321: $87
	ld   h, [hl]                                     ; $4322: $66
	ld   h, a                                        ; $4323: $67
	sbc  d                                           ; $4324: $9a
	xor  d                                           ; $4325: $aa
	halt                                             ; $4326: $76
	ld   d, a                                        ; $4327: $57
	cp   h                                           ; $4328: $bc
	xor  b                                           ; $4329: $a8
	ld   [hl], a                                     ; $432a: $77
	xor  d                                           ; $432b: $aa
	xor  b                                           ; $432c: $a8
	ld   [hl], a                                     ; $432d: $77
	adc  d                                           ; $432e: $8a
	sbc  b                                           ; $432f: $98
	ld   [hl], a                                     ; $4330: $77
	ld   [hl], a                                     ; $4331: $77
	ld   h, [hl]                                     ; $4332: $66
	ld   a, b                                        ; $4333: $78
	adc  b                                           ; $4334: $88
	ld   [hl], a                                     ; $4335: $77
	ld   h, a                                        ; $4336: $67
	adc  b                                           ; $4337: $88
	adc  c                                           ; $4338: $89
	add  a                                           ; $4339: $87
	sbc  c                                           ; $433a: $99
	adc  c                                           ; $433b: $89
	adc  c                                           ; $433c: $89
	xor  d                                           ; $433d: $aa
	cp   c                                           ; $433e: $b9
	add  a                                           ; $433f: $87
	ld   l, b                                        ; $4340: $68
	xor  d                                           ; $4341: $aa
	xor  b                                           ; $4342: $a8
	halt                                             ; $4343: $76
	ld   [hl], a                                     ; $4344: $77
	adc  c                                           ; $4345: $89
	sbc  b                                           ; $4346: $98
	ld   [hl], l                                     ; $4347: $75
	ld   d, l                                        ; $4348: $55
	ld   l, c                                        ; $4349: $69
	xor  c                                           ; $434a: $a9
	sub  a                                           ; $434b: $97
	ld   h, a                                        ; $434c: $67
	ld   a, b                                        ; $434d: $78
	sbc  b                                           ; $434e: $98
	adc  b                                           ; $434f: $88
	sbc  d                                           ; $4350: $9a
	xor  d                                           ; $4351: $aa
	sbc  b                                           ; $4352: $98
	adc  b                                           ; $4353: $88
	adc  c                                           ; $4354: $89
	sbc  b                                           ; $4355: $98
	sbc  b                                           ; $4356: $98
	add  a                                           ; $4357: $87
	adc  b                                           ; $4358: $88
	adc  c                                           ; $4359: $89
	add  a                                           ; $435a: $87
	ld   h, [hl]                                     ; $435b: $66
	ld   a, b                                        ; $435c: $78
	sbc  b                                           ; $435d: $98
	ld   [hl], a                                     ; $435e: $77
	ld   [hl], a                                     ; $435f: $77
	ld   a, c                                        ; $4360: $79
	sbc  b                                           ; $4361: $98
	sbc  b                                           ; $4362: $98
	adc  b                                           ; $4363: $88
	sbc  b                                           ; $4364: $98
	adc  c                                           ; $4365: $89
	adc  b                                           ; $4366: $88
	adc  c                                           ; $4367: $89
	xor  c                                           ; $4368: $a9
	xor  b                                           ; $4369: $a8
	ld   [hl], a                                     ; $436a: $77
	ld   [hl], a                                     ; $436b: $77
	adc  c                                           ; $436c: $89
	sbc  b                                           ; $436d: $98
	adc  b                                           ; $436e: $88
	ld   [hl], a                                     ; $436f: $77
	add  a                                           ; $4370: $87
	ld   [hl], a                                     ; $4371: $77
	ld   a, b                                        ; $4372: $78
	sbc  b                                           ; $4373: $98
	adc  c                                           ; $4374: $89
	ld   [hl], a                                     ; $4375: $77
	ld   a, b                                        ; $4376: $78
	adc  c                                           ; $4377: $89
	sbc  c                                           ; $4378: $99
	sbc  b                                           ; $4379: $98
	adc  c                                           ; $437a: $89
	sbc  c                                           ; $437b: $99
	adc  b                                           ; $437c: $88
	adc  b                                           ; $437d: $88
	adc  b                                           ; $437e: $88
	adc  c                                           ; $437f: $89
	sbc  c                                           ; $4380: $99
	add  a                                           ; $4381: $87
	ld   [hl], a                                     ; $4382: $77
	ld   a, b                                        ; $4383: $78
	sbc  c                                           ; $4384: $99
	add  a                                           ; $4385: $87
	ld   [hl], a                                     ; $4386: $77
	ld   [hl], a                                     ; $4387: $77
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	sbc  c                                           ; $438a: $99
	adc  b                                           ; $438b: $88
	add  a                                           ; $438c: $87
	adc  b                                           ; $438d: $88
	sbc  c                                           ; $438e: $99
	adc  b                                           ; $438f: $88
	sbc  b                                           ; $4390: $98
	adc  b                                           ; $4391: $88
	adc  b                                           ; $4392: $88
	sbc  b                                           ; $4393: $98
	sbc  c                                           ; $4394: $99
	sbc  b                                           ; $4395: $98
	sbc  b                                           ; $4396: $98
	adc  b                                           ; $4397: $88
	adc  b                                           ; $4398: $88
	add  a                                           ; $4399: $87
	adc  b                                           ; $439a: $88
	sbc  b                                           ; $439b: $98
	sbc  b                                           ; $439c: $98
	adc  b                                           ; $439d: $88
	adc  b                                           ; $439e: $88
	adc  b                                           ; $439f: $88
	adc  b                                           ; $43a0: $88
	sbc  c                                           ; $43a1: $99
	sbc  b                                           ; $43a2: $98
	adc  b                                           ; $43a3: $88
	adc  b                                           ; $43a4: $88
	adc  b                                           ; $43a5: $88
	sbc  b                                           ; $43a6: $98
	adc  c                                           ; $43a7: $89
	adc  b                                           ; $43a8: $88
	adc  b                                           ; $43a9: $88
	adc  c                                           ; $43aa: $89
	sbc  b                                           ; $43ab: $98
	adc  b                                           ; $43ac: $88
	adc  b                                           ; $43ad: $88
	adc  b                                           ; $43ae: $88
	adc  b                                           ; $43af: $88
	adc  b                                           ; $43b0: $88
	adc  c                                           ; $43b1: $89
	sbc  c                                           ; $43b2: $99
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
	adc  b                                           ; $4599: $88
	adc  b                                           ; $459a: $88
	adc  b                                           ; $459b: $88
	adc  b                                           ; $459c: $88
	adc  b                                           ; $459d: $88
	adc  b                                           ; $459e: $88
	adc  b                                           ; $459f: $88
	adc  b                                           ; $45a0: $88
	adc  b                                           ; $45a1: $88
	adc  b                                           ; $45a2: $88
	adc  b                                           ; $45a3: $88
	adc  b                                           ; $45a4: $88
	adc  b                                           ; $45a5: $88
	adc  b                                           ; $45a6: $88
	adc  b                                           ; $45a7: $88
	adc  b                                           ; $45a8: $88
	adc  b                                           ; $45a9: $88
	adc  b                                           ; $45aa: $88
	adc  b                                           ; $45ab: $88
	adc  b                                           ; $45ac: $88
	adc  b                                           ; $45ad: $88
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	adc  b                                           ; $45b0: $88
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	adc  b                                           ; $45b3: $88
	adc  b                                           ; $45b4: $88
	adc  b                                           ; $45b5: $88
	adc  b                                           ; $45b6: $88
	adc  b                                           ; $45b7: $88
	adc  b                                           ; $45b8: $88
	adc  b                                           ; $45b9: $88
	adc  b                                           ; $45ba: $88
	adc  b                                           ; $45bb: $88
	adc  b                                           ; $45bc: $88
	adc  b                                           ; $45bd: $88
	adc  b                                           ; $45be: $88
	adc  b                                           ; $45bf: $88
	adc  b                                           ; $45c0: $88
	adc  b                                           ; $45c1: $88
	adc  b                                           ; $45c2: $88
	adc  b                                           ; $45c3: $88
	adc  b                                           ; $45c4: $88
	adc  b                                           ; $45c5: $88
	adc  b                                           ; $45c6: $88
	adc  b                                           ; $45c7: $88
	adc  b                                           ; $45c8: $88
	adc  b                                           ; $45c9: $88
	adc  b                                           ; $45ca: $88
	adc  b                                           ; $45cb: $88
	adc  b                                           ; $45cc: $88
	adc  b                                           ; $45cd: $88
	adc  b                                           ; $45ce: $88
	adc  b                                           ; $45cf: $88
	adc  b                                           ; $45d0: $88
	adc  b                                           ; $45d1: $88
	adc  b                                           ; $45d2: $88
	adc  b                                           ; $45d3: $88
	adc  b                                           ; $45d4: $88
	adc  b                                           ; $45d5: $88
	adc  b                                           ; $45d6: $88
	adc  b                                           ; $45d7: $88
	adc  b                                           ; $45d8: $88
	adc  b                                           ; $45d9: $88
	adc  b                                           ; $45da: $88
	adc  b                                           ; $45db: $88
	adc  b                                           ; $45dc: $88
	adc  b                                           ; $45dd: $88
	adc  b                                           ; $45de: $88
	adc  b                                           ; $45df: $88
	adc  b                                           ; $45e0: $88
	adc  b                                           ; $45e1: $88
	adc  b                                           ; $45e2: $88
	adc  b                                           ; $45e3: $88
	adc  b                                           ; $45e4: $88
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	adc  b                                           ; $45e7: $88
	adc  b                                           ; $45e8: $88
	adc  b                                           ; $45e9: $88
	adc  b                                           ; $45ea: $88
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	adc  b                                           ; $45ed: $88
	adc  b                                           ; $45ee: $88
	adc  b                                           ; $45ef: $88
	adc  b                                           ; $45f0: $88
	adc  b                                           ; $45f1: $88
	adc  b                                           ; $45f2: $88
	adc  b                                           ; $45f3: $88
	adc  b                                           ; $45f4: $88
	adc  b                                           ; $45f5: $88
	adc  b                                           ; $45f6: $88
	adc  b                                           ; $45f7: $88
	adc  b                                           ; $45f8: $88
	adc  b                                           ; $45f9: $88
	adc  b                                           ; $45fa: $88
	adc  b                                           ; $45fb: $88
	adc  b                                           ; $45fc: $88
	adc  b                                           ; $45fd: $88
	adc  b                                           ; $45fe: $88
	adc  b                                           ; $45ff: $88
	adc  b                                           ; $4600: $88
	adc  b                                           ; $4601: $88
	adc  b                                           ; $4602: $88
	adc  b                                           ; $4603: $88
	adc  b                                           ; $4604: $88
	adc  b                                           ; $4605: $88
	adc  b                                           ; $4606: $88
	adc  b                                           ; $4607: $88
	adc  b                                           ; $4608: $88
	adc  b                                           ; $4609: $88
	adc  b                                           ; $460a: $88
	adc  b                                           ; $460b: $88
	adc  b                                           ; $460c: $88
	adc  b                                           ; $460d: $88
	adc  b                                           ; $460e: $88
	adc  b                                           ; $460f: $88
	adc  b                                           ; $4610: $88
	adc  b                                           ; $4611: $88
	adc  b                                           ; $4612: $88
	adc  b                                           ; $4613: $88
	adc  b                                           ; $4614: $88
	adc  b                                           ; $4615: $88
	adc  b                                           ; $4616: $88
	adc  b                                           ; $4617: $88
	adc  b                                           ; $4618: $88
	adc  b                                           ; $4619: $88
	adc  b                                           ; $461a: $88
	adc  b                                           ; $461b: $88
	adc  b                                           ; $461c: $88
	adc  b                                           ; $461d: $88
	adc  b                                           ; $461e: $88
	adc  b                                           ; $461f: $88
	adc  b                                           ; $4620: $88
	adc  b                                           ; $4621: $88
	adc  b                                           ; $4622: $88
	adc  b                                           ; $4623: $88
	adc  b                                           ; $4624: $88
	adc  b                                           ; $4625: $88
	adc  b                                           ; $4626: $88
	adc  b                                           ; $4627: $88
	adc  b                                           ; $4628: $88
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	adc  b                                           ; $462b: $88
	adc  b                                           ; $462c: $88
	adc  b                                           ; $462d: $88
	adc  b                                           ; $462e: $88
	adc  b                                           ; $462f: $88
	adc  b                                           ; $4630: $88
	adc  b                                           ; $4631: $88
	adc  b                                           ; $4632: $88
	adc  b                                           ; $4633: $88
	adc  b                                           ; $4634: $88
	adc  b                                           ; $4635: $88
	adc  b                                           ; $4636: $88
	adc  b                                           ; $4637: $88
	adc  b                                           ; $4638: $88
	adc  b                                           ; $4639: $88
	adc  b                                           ; $463a: $88
	adc  b                                           ; $463b: $88
	adc  b                                           ; $463c: $88
	adc  b                                           ; $463d: $88
	adc  b                                           ; $463e: $88
	adc  b                                           ; $463f: $88
	adc  b                                           ; $4640: $88
	adc  b                                           ; $4641: $88
	adc  b                                           ; $4642: $88
	adc  b                                           ; $4643: $88
	adc  b                                           ; $4644: $88
	adc  b                                           ; $4645: $88
	adc  b                                           ; $4646: $88
	adc  b                                           ; $4647: $88
	adc  b                                           ; $4648: $88
	adc  b                                           ; $4649: $88
	adc  b                                           ; $464a: $88
	adc  b                                           ; $464b: $88
	adc  b                                           ; $464c: $88
	adc  b                                           ; $464d: $88
	adc  b                                           ; $464e: $88
	adc  b                                           ; $464f: $88
	adc  b                                           ; $4650: $88
	adc  b                                           ; $4651: $88
	adc  b                                           ; $4652: $88
	adc  b                                           ; $4653: $88
	adc  b                                           ; $4654: $88
	adc  b                                           ; $4655: $88
	adc  b                                           ; $4656: $88
	adc  b                                           ; $4657: $88
	adc  b                                           ; $4658: $88
	adc  b                                           ; $4659: $88
	adc  b                                           ; $465a: $88
	adc  b                                           ; $465b: $88
	adc  b                                           ; $465c: $88
	adc  b                                           ; $465d: $88
	adc  b                                           ; $465e: $88
	adc  b                                           ; $465f: $88
	adc  b                                           ; $4660: $88
	adc  b                                           ; $4661: $88
	adc  b                                           ; $4662: $88
	adc  b                                           ; $4663: $88
	adc  b                                           ; $4664: $88
	adc  b                                           ; $4665: $88
	adc  b                                           ; $4666: $88
	adc  b                                           ; $4667: $88
	adc  b                                           ; $4668: $88
	adc  b                                           ; $4669: $88
	adc  b                                           ; $466a: $88
	adc  b                                           ; $466b: $88
	adc  b                                           ; $466c: $88
	adc  b                                           ; $466d: $88
	adc  b                                           ; $466e: $88
	adc  b                                           ; $466f: $88
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  b                                           ; $4672: $88
	adc  b                                           ; $4673: $88
	adc  b                                           ; $4674: $88
	adc  b                                           ; $4675: $88
	adc  b                                           ; $4676: $88
	adc  b                                           ; $4677: $88
	adc  b                                           ; $4678: $88
	adc  b                                           ; $4679: $88
	adc  b                                           ; $467a: $88
	adc  b                                           ; $467b: $88
	adc  b                                           ; $467c: $88
	adc  b                                           ; $467d: $88
	adc  b                                           ; $467e: $88
	adc  b                                           ; $467f: $88
	adc  b                                           ; $4680: $88
	adc  b                                           ; $4681: $88
	adc  b                                           ; $4682: $88
	adc  b                                           ; $4683: $88
	adc  b                                           ; $4684: $88
	adc  b                                           ; $4685: $88
	adc  b                                           ; $4686: $88
	adc  b                                           ; $4687: $88
	adc  b                                           ; $4688: $88
	adc  b                                           ; $4689: $88
	adc  b                                           ; $468a: $88
	adc  b                                           ; $468b: $88
	adc  b                                           ; $468c: $88
	adc  b                                           ; $468d: $88
	adc  b                                           ; $468e: $88
	adc  b                                           ; $468f: $88
	adc  b                                           ; $4690: $88
	adc  b                                           ; $4691: $88
	adc  b                                           ; $4692: $88
	adc  b                                           ; $4693: $88
	adc  b                                           ; $4694: $88
	adc  b                                           ; $4695: $88
	adc  b                                           ; $4696: $88
	adc  b                                           ; $4697: $88
	adc  b                                           ; $4698: $88
	adc  b                                           ; $4699: $88
	adc  b                                           ; $469a: $88
	adc  b                                           ; $469b: $88
	adc  b                                           ; $469c: $88
	adc  b                                           ; $469d: $88
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	adc  b                                           ; $46a1: $88
	adc  b                                           ; $46a2: $88
	adc  b                                           ; $46a3: $88
	adc  b                                           ; $46a4: $88
	adc  b                                           ; $46a5: $88
	adc  b                                           ; $46a6: $88
	adc  b                                           ; $46a7: $88
	adc  b                                           ; $46a8: $88
	adc  b                                           ; $46a9: $88
	adc  b                                           ; $46aa: $88
	adc  b                                           ; $46ab: $88
	adc  b                                           ; $46ac: $88
	adc  b                                           ; $46ad: $88
	adc  b                                           ; $46ae: $88
	adc  b                                           ; $46af: $88
	adc  b                                           ; $46b0: $88
	adc  b                                           ; $46b1: $88
	adc  b                                           ; $46b2: $88
	adc  b                                           ; $46b3: $88
	adc  b                                           ; $46b4: $88
	adc  b                                           ; $46b5: $88
	adc  b                                           ; $46b6: $88
	adc  b                                           ; $46b7: $88
	adc  b                                           ; $46b8: $88
	adc  b                                           ; $46b9: $88
	adc  b                                           ; $46ba: $88
	adc  b                                           ; $46bb: $88
	adc  b                                           ; $46bc: $88
	adc  b                                           ; $46bd: $88
	adc  b                                           ; $46be: $88
	adc  b                                           ; $46bf: $88
	adc  b                                           ; $46c0: $88
	adc  b                                           ; $46c1: $88
	adc  b                                           ; $46c2: $88
	adc  b                                           ; $46c3: $88
	adc  b                                           ; $46c4: $88
	adc  b                                           ; $46c5: $88
	adc  b                                           ; $46c6: $88
	adc  b                                           ; $46c7: $88
	adc  b                                           ; $46c8: $88
	adc  b                                           ; $46c9: $88
	adc  b                                           ; $46ca: $88
	adc  b                                           ; $46cb: $88
	adc  b                                           ; $46cc: $88
	adc  b                                           ; $46cd: $88
	adc  b                                           ; $46ce: $88
	adc  b                                           ; $46cf: $88
	adc  b                                           ; $46d0: $88
	adc  b                                           ; $46d1: $88
	adc  b                                           ; $46d2: $88
	adc  b                                           ; $46d3: $88
	adc  b                                           ; $46d4: $88
	adc  b                                           ; $46d5: $88
	adc  b                                           ; $46d6: $88
	adc  b                                           ; $46d7: $88
	adc  b                                           ; $46d8: $88
	adc  b                                           ; $46d9: $88
	adc  b                                           ; $46da: $88
	adc  b                                           ; $46db: $88
	adc  b                                           ; $46dc: $88
	adc  b                                           ; $46dd: $88
	adc  b                                           ; $46de: $88
	adc  b                                           ; $46df: $88
	adc  b                                           ; $46e0: $88
	adc  b                                           ; $46e1: $88
	adc  b                                           ; $46e2: $88
	adc  b                                           ; $46e3: $88
	adc  b                                           ; $46e4: $88
	adc  b                                           ; $46e5: $88
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
	adc  b                                           ; $472e: $88
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
	adc  b                                           ; $4742: $88
	adc  b                                           ; $4743: $88
	adc  b                                           ; $4744: $88
	adc  b                                           ; $4745: $88
	adc  b                                           ; $4746: $88
	adc  b                                           ; $4747: $88
	adc  b                                           ; $4748: $88
	adc  b                                           ; $4749: $88
	adc  b                                           ; $474a: $88
	adc  b                                           ; $474b: $88
	adc  b                                           ; $474c: $88
	adc  b                                           ; $474d: $88
	adc  b                                           ; $474e: $88
	adc  b                                           ; $474f: $88
	adc  b                                           ; $4750: $88
	adc  b                                           ; $4751: $88
	adc  b                                           ; $4752: $88
	adc  b                                           ; $4753: $88
	adc  b                                           ; $4754: $88
	adc  b                                           ; $4755: $88
	adc  b                                           ; $4756: $88
	adc  b                                           ; $4757: $88
	adc  b                                           ; $4758: $88
	adc  b                                           ; $4759: $88
	adc  b                                           ; $475a: $88
	adc  b                                           ; $475b: $88
	adc  b                                           ; $475c: $88
	adc  b                                           ; $475d: $88
	adc  b                                           ; $475e: $88
	adc  b                                           ; $475f: $88
	adc  b                                           ; $4760: $88
	adc  b                                           ; $4761: $88
	adc  b                                           ; $4762: $88
	adc  b                                           ; $4763: $88
	adc  b                                           ; $4764: $88
	adc  b                                           ; $4765: $88
	adc  b                                           ; $4766: $88
	adc  b                                           ; $4767: $88
	adc  b                                           ; $4768: $88
	adc  b                                           ; $4769: $88
	adc  b                                           ; $476a: $88
	adc  b                                           ; $476b: $88
	adc  b                                           ; $476c: $88
	adc  b                                           ; $476d: $88
	adc  b                                           ; $476e: $88
	adc  b                                           ; $476f: $88
	adc  b                                           ; $4770: $88
	adc  b                                           ; $4771: $88
	adc  b                                           ; $4772: $88
	adc  b                                           ; $4773: $88
	adc  b                                           ; $4774: $88
	adc  b                                           ; $4775: $88
	adc  b                                           ; $4776: $88
	adc  b                                           ; $4777: $88
	adc  b                                           ; $4778: $88
	adc  b                                           ; $4779: $88
	adc  b                                           ; $477a: $88
	adc  b                                           ; $477b: $88
	adc  b                                           ; $477c: $88
	adc  b                                           ; $477d: $88
	adc  b                                           ; $477e: $88
	adc  b                                           ; $477f: $88
	adc  b                                           ; $4780: $88
	adc  b                                           ; $4781: $88
	adc  b                                           ; $4782: $88
	adc  b                                           ; $4783: $88
	adc  b                                           ; $4784: $88
	adc  b                                           ; $4785: $88
	adc  b                                           ; $4786: $88
	adc  b                                           ; $4787: $88
	adc  b                                           ; $4788: $88
	adc  b                                           ; $4789: $88
	adc  b                                           ; $478a: $88
	adc  b                                           ; $478b: $88
	adc  b                                           ; $478c: $88
	adc  b                                           ; $478d: $88
	adc  b                                           ; $478e: $88
	adc  b                                           ; $478f: $88
	adc  b                                           ; $4790: $88
	adc  b                                           ; $4791: $88
	adc  b                                           ; $4792: $88
	adc  b                                           ; $4793: $88
	adc  b                                           ; $4794: $88
	adc  b                                           ; $4795: $88
	adc  b                                           ; $4796: $88
	adc  b                                           ; $4797: $88
	adc  b                                           ; $4798: $88
	adc  b                                           ; $4799: $88
	adc  b                                           ; $479a: $88
	adc  b                                           ; $479b: $88
	adc  b                                           ; $479c: $88
	adc  b                                           ; $479d: $88
	adc  b                                           ; $479e: $88
	adc  b                                           ; $479f: $88
	adc  b                                           ; $47a0: $88
	adc  b                                           ; $47a1: $88
	adc  b                                           ; $47a2: $88
	adc  b                                           ; $47a3: $88
	adc  b                                           ; $47a4: $88
	adc  b                                           ; $47a5: $88
	adc  b                                           ; $47a6: $88
	adc  b                                           ; $47a7: $88
	adc  b                                           ; $47a8: $88
	adc  b                                           ; $47a9: $88
	adc  b                                           ; $47aa: $88
	adc  b                                           ; $47ab: $88
	adc  b                                           ; $47ac: $88
	adc  b                                           ; $47ad: $88
	adc  b                                           ; $47ae: $88
	adc  b                                           ; $47af: $88
	adc  b                                           ; $47b0: $88
	adc  b                                           ; $47b1: $88
	adc  b                                           ; $47b2: $88
	adc  b                                           ; $47b3: $88
	adc  b                                           ; $47b4: $88
	adc  b                                           ; $47b5: $88
	adc  b                                           ; $47b6: $88
	adc  b                                           ; $47b7: $88
	adc  b                                           ; $47b8: $88
	adc  b                                           ; $47b9: $88
	adc  b                                           ; $47ba: $88
	adc  b                                           ; $47bb: $88
	adc  b                                           ; $47bc: $88
	adc  b                                           ; $47bd: $88
	adc  b                                           ; $47be: $88
	adc  b                                           ; $47bf: $88
	adc  b                                           ; $47c0: $88
	adc  b                                           ; $47c1: $88
	adc  b                                           ; $47c2: $88
	adc  b                                           ; $47c3: $88
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88
	adc  b                                           ; $47c7: $88
	adc  b                                           ; $47c8: $88
	adc  b                                           ; $47c9: $88
	adc  b                                           ; $47ca: $88
	adc  b                                           ; $47cb: $88
	adc  b                                           ; $47cc: $88
	adc  b                                           ; $47cd: $88
	adc  b                                           ; $47ce: $88
	adc  b                                           ; $47cf: $88
	adc  b                                           ; $47d0: $88
	adc  b                                           ; $47d1: $88
	adc  b                                           ; $47d2: $88
	adc  b                                           ; $47d3: $88
	adc  b                                           ; $47d4: $88
	adc  b                                           ; $47d5: $88
	adc  b                                           ; $47d6: $88
	adc  b                                           ; $47d7: $88
	adc  b                                           ; $47d8: $88
	adc  b                                           ; $47d9: $88
	adc  b                                           ; $47da: $88
	adc  b                                           ; $47db: $88
	adc  b                                           ; $47dc: $88
	adc  b                                           ; $47dd: $88
	adc  b                                           ; $47de: $88
	adc  b                                           ; $47df: $88
	adc  b                                           ; $47e0: $88
	adc  b                                           ; $47e1: $88
	adc  b                                           ; $47e2: $88
	adc  b                                           ; $47e3: $88
	adc  b                                           ; $47e4: $88
	adc  b                                           ; $47e5: $88
	adc  b                                           ; $47e6: $88
	adc  b                                           ; $47e7: $88
	adc  b                                           ; $47e8: $88
	adc  b                                           ; $47e9: $88
	adc  b                                           ; $47ea: $88
	adc  b                                           ; $47eb: $88
	adc  b                                           ; $47ec: $88
	adc  b                                           ; $47ed: $88
	adc  b                                           ; $47ee: $88
	adc  b                                           ; $47ef: $88
	adc  b                                           ; $47f0: $88
	adc  b                                           ; $47f1: $88
	adc  b                                           ; $47f2: $88
	adc  b                                           ; $47f3: $88
	adc  b                                           ; $47f4: $88
	adc  b                                           ; $47f5: $88
	adc  b                                           ; $47f6: $88
	adc  b                                           ; $47f7: $88
	adc  b                                           ; $47f8: $88
	adc  b                                           ; $47f9: $88
	adc  b                                           ; $47fa: $88
	adc  b                                           ; $47fb: $88
	adc  b                                           ; $47fc: $88
	adc  b                                           ; $47fd: $88
	adc  b                                           ; $47fe: $88
	adc  b                                           ; $47ff: $88
	adc  b                                           ; $4800: $88
	adc  b                                           ; $4801: $88
	adc  b                                           ; $4802: $88
	adc  b                                           ; $4803: $88
	adc  b                                           ; $4804: $88
	adc  b                                           ; $4805: $88
	adc  b                                           ; $4806: $88
	adc  b                                           ; $4807: $88
	adc  b                                           ; $4808: $88
	adc  b                                           ; $4809: $88
	adc  b                                           ; $480a: $88
	adc  b                                           ; $480b: $88
	adc  b                                           ; $480c: $88
	adc  b                                           ; $480d: $88
	adc  b                                           ; $480e: $88
	adc  b                                           ; $480f: $88
	adc  b                                           ; $4810: $88
	adc  b                                           ; $4811: $88
	adc  b                                           ; $4812: $88
	adc  b                                           ; $4813: $88
	adc  b                                           ; $4814: $88
	adc  b                                           ; $4815: $88
	adc  b                                           ; $4816: $88
	adc  b                                           ; $4817: $88
	adc  b                                           ; $4818: $88
	adc  b                                           ; $4819: $88
	adc  b                                           ; $481a: $88
	adc  b                                           ; $481b: $88
	adc  b                                           ; $481c: $88
	adc  b                                           ; $481d: $88
	adc  b                                           ; $481e: $88
	adc  b                                           ; $481f: $88
	adc  b                                           ; $4820: $88
	adc  b                                           ; $4821: $88
	adc  b                                           ; $4822: $88
	adc  b                                           ; $4823: $88
	adc  b                                           ; $4824: $88
	adc  b                                           ; $4825: $88
	adc  b                                           ; $4826: $88
	adc  b                                           ; $4827: $88
	adc  b                                           ; $4828: $88
	adc  b                                           ; $4829: $88
	adc  b                                           ; $482a: $88
	adc  b                                           ; $482b: $88
	adc  b                                           ; $482c: $88
	adc  b                                           ; $482d: $88
	adc  b                                           ; $482e: $88
	adc  b                                           ; $482f: $88
	adc  b                                           ; $4830: $88
	adc  b                                           ; $4831: $88
	adc  b                                           ; $4832: $88
	adc  b                                           ; $4833: $88
	adc  b                                           ; $4834: $88
	adc  b                                           ; $4835: $88
	adc  b                                           ; $4836: $88
	adc  b                                           ; $4837: $88
	adc  b                                           ; $4838: $88
	adc  b                                           ; $4839: $88
	adc  b                                           ; $483a: $88
	adc  b                                           ; $483b: $88
	adc  b                                           ; $483c: $88
	adc  b                                           ; $483d: $88
	adc  b                                           ; $483e: $88
	adc  b                                           ; $483f: $88
	adc  b                                           ; $4840: $88
	adc  b                                           ; $4841: $88
	adc  b                                           ; $4842: $88
	adc  b                                           ; $4843: $88
	adc  b                                           ; $4844: $88
	adc  b                                           ; $4845: $88
	adc  b                                           ; $4846: $88
	adc  b                                           ; $4847: $88
	adc  b                                           ; $4848: $88
	adc  b                                           ; $4849: $88
	adc  b                                           ; $484a: $88
	adc  b                                           ; $484b: $88
	adc  b                                           ; $484c: $88
	adc  b                                           ; $484d: $88
	adc  b                                           ; $484e: $88
	adc  b                                           ; $484f: $88
	adc  b                                           ; $4850: $88
	adc  b                                           ; $4851: $88
	adc  b                                           ; $4852: $88
	adc  b                                           ; $4853: $88
	adc  b                                           ; $4854: $88
	adc  b                                           ; $4855: $88
	adc  b                                           ; $4856: $88
	adc  b                                           ; $4857: $88
	adc  b                                           ; $4858: $88
	adc  b                                           ; $4859: $88
	adc  b                                           ; $485a: $88
	adc  b                                           ; $485b: $88
	adc  b                                           ; $485c: $88
	adc  b                                           ; $485d: $88
	adc  b                                           ; $485e: $88
	adc  b                                           ; $485f: $88
	adc  b                                           ; $4860: $88
	adc  b                                           ; $4861: $88
	adc  b                                           ; $4862: $88
	adc  b                                           ; $4863: $88
	adc  b                                           ; $4864: $88
	adc  b                                           ; $4865: $88
	adc  b                                           ; $4866: $88
	adc  b                                           ; $4867: $88
	adc  b                                           ; $4868: $88
	adc  b                                           ; $4869: $88
	adc  b                                           ; $486a: $88
	adc  b                                           ; $486b: $88
	adc  b                                           ; $486c: $88
	adc  b                                           ; $486d: $88
	adc  b                                           ; $486e: $88
	adc  b                                           ; $486f: $88
	adc  b                                           ; $4870: $88
	adc  b                                           ; $4871: $88
	adc  b                                           ; $4872: $88
	adc  b                                           ; $4873: $88
	adc  b                                           ; $4874: $88
	adc  b                                           ; $4875: $88
	adc  b                                           ; $4876: $88
	adc  b                                           ; $4877: $88
	adc  b                                           ; $4878: $88
	adc  b                                           ; $4879: $88
	adc  b                                           ; $487a: $88
	adc  b                                           ; $487b: $88
	adc  b                                           ; $487c: $88
	adc  b                                           ; $487d: $88
	adc  b                                           ; $487e: $88
	adc  b                                           ; $487f: $88
	adc  b                                           ; $4880: $88
	adc  b                                           ; $4881: $88
	adc  b                                           ; $4882: $88
	adc  b                                           ; $4883: $88
	adc  b                                           ; $4884: $88
	adc  b                                           ; $4885: $88
	adc  b                                           ; $4886: $88
	adc  b                                           ; $4887: $88
	adc  b                                           ; $4888: $88
	adc  b                                           ; $4889: $88
	adc  b                                           ; $488a: $88
	adc  b                                           ; $488b: $88
	adc  b                                           ; $488c: $88
	adc  b                                           ; $488d: $88
	adc  b                                           ; $488e: $88
	adc  b                                           ; $488f: $88
	adc  b                                           ; $4890: $88
	adc  b                                           ; $4891: $88
	adc  b                                           ; $4892: $88
	adc  b                                           ; $4893: $88
	adc  b                                           ; $4894: $88
	adc  b                                           ; $4895: $88
	adc  b                                           ; $4896: $88
	adc  b                                           ; $4897: $88
	adc  b                                           ; $4898: $88
	adc  b                                           ; $4899: $88
	adc  b                                           ; $489a: $88
	adc  b                                           ; $489b: $88
	adc  b                                           ; $489c: $88
	adc  b                                           ; $489d: $88
	adc  b                                           ; $489e: $88
	adc  b                                           ; $489f: $88
	adc  b                                           ; $48a0: $88
	adc  b                                           ; $48a1: $88
	adc  b                                           ; $48a2: $88
	adc  b                                           ; $48a3: $88
	adc  b                                           ; $48a4: $88
	adc  b                                           ; $48a5: $88
	adc  b                                           ; $48a6: $88
	adc  b                                           ; $48a7: $88
	adc  b                                           ; $48a8: $88
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

Call_0c8_4eba:
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

Jump_0c8_58aa:
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

Jump_0c8_5998:
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
	sbc  b                                           ; $5d68: $98
	adc  b                                           ; $5d69: $88
	adc  b                                           ; $5d6a: $88
	adc  b                                           ; $5d6b: $88
	sbc  b                                           ; $5d6c: $98
	adc  b                                           ; $5d6d: $88
	adc  b                                           ; $5d6e: $88
	adc  b                                           ; $5d6f: $88
	adc  b                                           ; $5d70: $88
	adc  c                                           ; $5d71: $89
	sbc  b                                           ; $5d72: $98
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
	add  a                                           ; $5d7d: $87
	add  a                                           ; $5d7e: $87
	add  a                                           ; $5d7f: $87
	ld   [hl], a                                     ; $5d80: $77
	ld   [hl], a                                     ; $5d81: $77
	ld   [hl], a                                     ; $5d82: $77
	ld   h, [hl]                                     ; $5d83: $66
	ld   d, l                                        ; $5d84: $55
	ld   b, l                                        ; $5d85: $45
	ld   d, l                                        ; $5d86: $55
	ld   b, h                                        ; $5d87: $44
	ld   [hl], $df                                   ; $5d88: $36 $df
	cp   $96                                         ; $5d8a: $fe $96
	ld   l, b                                        ; $5d8c: $68
	add  a                                           ; $5d8d: $87
	ld   a, d                                        ; $5d8e: $7a
	rst  $38                                         ; $5d8f: $ff
	rst  $38                                         ; $5d90: $ff
	sub  [hl]                                        ; $5d91: $96
	ld   l, b                                        ; $5d92: $68
	cp   c                                           ; $5d93: $b9
	adc  b                                           ; $5d94: $88
	xor  l                                           ; $5d95: $ad
	jp   c, $0163                                    ; $5d96: $da $63 $01

	ld   de, $1111                                   ; $5d99: $11 $11 $11
	inc  e                                           ; $5d9c: $1c
	rst  $38                                         ; $5d9d: $ff
	cp   $31                                         ; $5d9e: $fe $31
	ld   de, $2d11                                   ; $5da0: $11 $11 $2d
	rst  $38                                         ; $5da3: $ff
	rst  $38                                         ; $5da4: $ff
	ld   h, c                                        ; $5da5: $61
	ld   de, $9b27                                   ; $5da6: $11 $27 $9b
	rst  $38                                         ; $5da9: $ff
	rst  $38                                         ; $5daa: $ff
	or   h                                           ; $5dab: $b4
	ld   de, $ff5c                                   ; $5dac: $11 $5c $ff
	rst  $38                                         ; $5daf: $ff
	rst  JumpTable                                         ; $5db0: $df
	ld   sp, hl                                      ; $5db1: $f9
	ld   sp, $ff3b                                   ; $5db2: $31 $3b $ff
	sub  l                                           ; $5db5: $95
	ld   de, $1121                                   ; $5db6: $11 $21 $11
	ld   de, $ff1f                                   ; $5db9: $11 $1f $ff
	rst  $38                                         ; $5dbc: $ff
	ld   d, c                                        ; $5dbd: $51
	ld   de, $1d11                                   ; $5dbe: $11 $11 $1d
	rst  $38                                         ; $5dc1: $ff
	rst  $38                                         ; $5dc2: $ff
	pop  bc                                          ; $5dc3: $c1
	ld   de, $6f13                                   ; $5dc4: $11 $13 $6f
	rst  $38                                         ; $5dc7: $ff
	rst  $38                                         ; $5dc8: $ff
	pop  hl                                          ; $5dc9: $e1
	ld   de, $ff7e                                   ; $5dca: $11 $7e $ff
	rst  $38                                         ; $5dcd: $ff
	rst  $38                                         ; $5dce: $ff
	ld   sp, $5513                                   ; $5dcf: $31 $13 $55
	ld   b, d                                        ; $5dd2: $42
	inc  [hl]                                        ; $5dd3: $34
	ld   de, $1111                                   ; $5dd4: $11 $11 $11
	rst  $38                                         ; $5dd7: $ff
	rst  $38                                         ; $5dd8: $ff
	pop  de                                          ; $5dd9: $d1
	ld   de, $1111                                   ; $5dda: $11 $11 $11
	rst  $28                                         ; $5ddd: $ef
	rst  $38                                         ; $5dde: $ff
	pop  af                                          ; $5ddf: $f1
	ld   de, $1325                                   ; $5de0: $11 $25 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5de3: $cf
	rst  $38                                         ; $5de4: $ff
	db   $fd                                         ; $5de5: $fd
	ld   hl, $df1a                                   ; $5de6: $21 $1a $df
	rst  $38                                         ; $5de9: $ff
	rst  $38                                         ; $5dea: $ff
	add  sp, $11                                     ; $5deb: $e8 $11
	ld   de, $2125                                   ; $5ded: $11 $25 $21
	ld   de, $1f11                                   ; $5df0: $11 $11 $1f
	rst  $38                                         ; $5df3: $ff
	db   $fc                                         ; $5df4: $fc
	ld   hl, $1111                                   ; $5df5: $21 $11 $11
	rra                                              ; $5df8: $1f
	rst  $38                                         ; $5df9: $ff
	rst  $38                                         ; $5dfa: $ff
	ld   b, c                                        ; $5dfb: $41
	ld   d, $29                                      ; $5dfc: $16 $29
	sbc  b                                           ; $5dfe: $98
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	and  c                                           ; $5e01: $a1
	dec  l                                           ; $5e02: $2d
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	rst  $28                                         ; $5e05: $ef
	ld   a, [$1121]                                  ; $5e06: $fa $21 $11
	ld   de, $1111                                   ; $5e09: $11 $11 $11
	ld   de, $ff1f                                   ; $5e0c: $11 $1f $ff
	pop  af                                          ; $5e0f: $f1
	ld   de, $1111                                   ; $5e10: $11 $11 $11
	ld   c, a                                        ; $5e13: $4f
	rst  $38                                         ; $5e14: $ff
	ld   a, [$1911]                                  ; $5e15: $fa $11 $19
	and  h                                           ; $5e18: $a4
	rst  $38                                         ; $5e19: $ff
	rst  $38                                         ; $5e1a: $ff
	or   $58                                         ; $5e1b: $f6 $58
	rst  JumpTable                                         ; $5e1d: $df
	db   $fc                                         ; $5e1e: $fc
	rst  $38                                         ; $5e1f: $ff
	db   $fc                                         ; $5e20: $fc
	ld   sp, $1111                                   ; $5e21: $31 $11 $11
	ld   de, $1111                                   ; $5e24: $11 $11 $11
	rra                                              ; $5e27: $1f
	rst  $38                                         ; $5e28: $ff
	pop  af                                          ; $5e29: $f1
	ld   de, $1111                                   ; $5e2a: $11 $11 $11
	ccf                                              ; $5e2d: $3f
	rst  $38                                         ; $5e2e: $ff
	or   $11                                         ; $5e2f: $f6 $11
	ld   a, a                                        ; $5e31: $7f
	sub  $7f                                         ; $5e32: $d6 $7f
	rst  $38                                         ; $5e34: $ff
	di                                               ; $5e35: $f3
	ld   e, a                                        ; $5e36: $5f
	rst  $38                                         ; $5e37: $ff
	ld   a, [$fa6c]                                  ; $5e38: $fa $6c $fa
	ld   de, $1111                                   ; $5e3b: $11 $11 $11
	ld   de, $1111                                   ; $5e3e: $11 $11 $11
	rst  $38                                         ; $5e41: $ff
	rst  $38                                         ; $5e42: $ff
	ld   d, c                                        ; $5e43: $51
	ld   de, $1111                                   ; $5e44: $11 $11 $11
	rst  $38                                         ; $5e47: $ff
	rst  $38                                         ; $5e48: $ff
	pop  af                                          ; $5e49: $f1
	rla                                              ; $5e4a: $17
	db   $fc                                         ; $5e4b: $fc
	ld   de, $ffff                                   ; $5e4c: $11 $ff $ff
	xor  b                                           ; $5e4f: $a8
	rst  $38                                         ; $5e50: $ff
	rst  $38                                         ; $5e51: $ff
	ld   [hl], h                                     ; $5e52: $74
	xor  l                                           ; $5e53: $ad
	ld   [hl], c                                     ; $5e54: $71
	ld   de, $1111                                   ; $5e55: $11 $11 $11
	ld   de, $1f11                                   ; $5e58: $11 $11 $1f
	rst  $38                                         ; $5e5b: $ff
	pop  bc                                          ; $5e5c: $c1
	ld   de, $1111                                   ; $5e5d: $11 $11 $11
	cp   a                                           ; $5e60: $bf
	rst  $38                                         ; $5e61: $ff
	db   $f4                                         ; $5e62: $f4
	ld   e, a                                        ; $5e63: $5f
	rst  $30                                         ; $5e64: $f7
	ld   de, $ffaf                                   ; $5e65: $11 $af $ff
	jp   z, $fcff                                    ; $5e68: $ca $ff $fc

	inc  d                                           ; $5e6b: $14
	cp   [hl]                                        ; $5e6c: $be
	ld   [hl], c                                     ; $5e6d: $71
	ld   de, $1111                                   ; $5e6e: $11 $11 $11
	ld   de, $cf11                                   ; $5e71: $11 $11 $cf
	rst  $38                                         ; $5e74: $ff
	ld   h, c                                        ; $5e75: $61
	ld   d, c                                        ; $5e76: $51
	ld   de, rAUD1LEN                                   ; $5e77: $11 $11 $ff
	rst  $38                                         ; $5e7a: $ff
	rst  $38                                         ; $5e7b: $ff
	rst  $38                                         ; $5e7c: $ff
	pop  hl                                          ; $5e7d: $e1
	ld   de, $ffff                                   ; $5e7e: $11 $ff $ff
	rst  $38                                         ; $5e81: $ff
	rst  $38                                         ; $5e82: $ff
	di                                               ; $5e83: $f3
	jr   c, @-$7a                                    ; $5e84: $38 $84

	ld   de, $1111                                   ; $5e86: $11 $11 $11
	ld   de, $1611                                   ; $5e89: $11 $11 $16
	rst  $38                                         ; $5e8c: $ff
	rst  $30                                         ; $5e8d: $f7
	jr   jr_0c8_5ee1                                 ; $5e8e: $18 $51

	ld   de, $ff1f                                   ; $5e90: $11 $1f $ff
	rst  $38                                         ; $5e93: $ff
	rst  $38                                         ; $5e94: $ff
	rst  $38                                         ; $5e95: $ff
	ld   de, $ff1c                                   ; $5e96: $11 $1c $ff
	rst  $38                                         ; $5e99: $ff
	rst  $38                                         ; $5e9a: $ff
	rst  $38                                         ; $5e9b: $ff
	ld   [hl], a                                     ; $5e9c: $77
	ld   h, e                                        ; $5e9d: $63
	ld   de, $1111                                   ; $5e9e: $11 $11 $11
	ld   de, $1111                                   ; $5ea1: $11 $11 $11
	rst  $38                                         ; $5ea4: $ff
	db   $fd                                         ; $5ea5: $fd
	ld   d, $f5                                      ; $5ea6: $16 $f5
	ld   de, $ff1b                                   ; $5ea8: $11 $1b $ff
	rst  $38                                         ; $5eab: $ff
	rst  $38                                         ; $5eac: $ff
	rst  $38                                         ; $5ead: $ff
	add  c                                           ; $5eae: $81
	rla                                              ; $5eaf: $17
	rst  $38                                         ; $5eb0: $ff
	rst  JumpTable                                         ; $5eb1: $df
	rst  $38                                         ; $5eb2: $ff
	rst  $38                                         ; $5eb3: $ff
	res  4, [hl]                                     ; $5eb4: $cb $a6
	ld   hl, $1111                                   ; $5eb6: $21 $11 $11
	ld   de, $1111                                   ; $5eb9: $11 $11 $11
	rst  $38                                         ; $5ebc: $ff
	rst  $38                                         ; $5ebd: $ff
	dec  [hl]                                        ; $5ebe: $35
	ld   sp, hl                                      ; $5ebf: $f9
	ld   de, rAUD1HIGH                                   ; $5ec0: $11 $14 $ff
	rst  $38                                         ; $5ec3: $ff
	rst  $38                                         ; $5ec4: $ff
	rst  $38                                         ; $5ec5: $ff
	or   e                                           ; $5ec6: $b3
	ld   d, $9d                                      ; $5ec7: $16 $9d
	xor  a                                           ; $5ec9: $af
	rst  $38                                         ; $5eca: $ff
	rst  $38                                         ; $5ecb: $ff
	rst  $38                                         ; $5ecc: $ff
	ld   [$1131], a                                  ; $5ecd: $ea $31 $11
	ld   de, $1111                                   ; $5ed0: $11 $11 $11
	ld   de, $ffff                                   ; $5ed3: $11 $ff $ff
	ld   b, h                                        ; $5ed6: $44
	db   $fc                                         ; $5ed7: $fc
	ld   sp, rAUD1LEN                                   ; $5ed8: $31 $11 $ff
	rst  $38                                         ; $5edb: $ff
	rst  $38                                         ; $5edc: $ff
	rst  $38                                         ; $5edd: $ff
	ld   sp, hl                                      ; $5ede: $f9
	ld   c, c                                        ; $5edf: $49
	ld   a, b                                        ; $5ee0: $78

jr_0c8_5ee1:
	adc  d                                           ; $5ee1: $8a
	rst  $38                                         ; $5ee2: $ff
	rst  $38                                         ; $5ee3: $ff
	rst  $38                                         ; $5ee4: $ff
	rst  $38                                         ; $5ee5: $ff
	ld   d, c                                        ; $5ee6: $51
	ld   de, $1111                                   ; $5ee7: $11 $11 $11
	ld   de, $5f11                                   ; $5eea: $11 $11 $5f
	rst  $38                                         ; $5eed: $ff
	and  a                                           ; $5eee: $a7
	rst  $38                                         ; $5eef: $ff
	ld   h, c                                        ; $5ef0: $61
	ld   de, $ffef                                   ; $5ef1: $11 $ef $ff
	rst  $38                                         ; $5ef4: $ff
	rst  $38                                         ; $5ef5: $ff
	db   $fc                                         ; $5ef6: $fc
	ld   l, e                                        ; $5ef7: $6b
	xor  e                                           ; $5ef8: $ab
	ld   sp, $ffbf                                   ; $5ef9: $31 $bf $ff
	rst  $38                                         ; $5efc: $ff
	rst  $38                                         ; $5efd: $ff
	pop  de                                          ; $5efe: $d1
	ld   de, $1111                                   ; $5eff: $11 $11 $11
	ld   de, $7f11                                   ; $5f02: $11 $11 $7f
	rst  $38                                         ; $5f05: $ff
	cp   $ff                                         ; $5f06: $fe $ff
	sub  c                                           ; $5f08: $91
	ld   de, $ff5f                                   ; $5f09: $11 $5f $ff
	rst  $38                                         ; $5f0c: $ff
	rst  $38                                         ; $5f0d: $ff
	rst  $38                                         ; $5f0e: $ff
	rst  $38                                         ; $5f0f: $ff
	rst  $28                                         ; $5f10: $ef
	sub  c                                           ; $5f11: $91
	ld   c, h                                        ; $5f12: $4c
	rst  $38                                         ; $5f13: $ff
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	ld   sp, hl                                      ; $5f16: $f9
	ld   de, $1111                                   ; $5f17: $11 $11 $11
	ld   de, $cf11                                   ; $5f1a: $11 $11 $cf
	call c, $ffaf                                    ; $5f1d: $dc $af $ff
	pop  af                                          ; $5f20: $f1
	inc  [hl]                                        ; $5f21: $34
	sbc  a                                           ; $5f22: $9f
	jp   z, $ff6d                                    ; $5f23: $ca $6d $ff

	rst  $38                                         ; $5f26: $ff
	cp   $ff                                         ; $5f27: $fe $ff
	db   $fd                                         ; $5f29: $fd
	xor  e                                           ; $5f2a: $ab
	rst  JumpTable                                         ; $5f2b: $df
	rst  $38                                         ; $5f2c: $ff
	rst  $38                                         ; $5f2d: $ff
	rst  $38                                         ; $5f2e: $ff
	ei                                               ; $5f2f: $fb
	ld   [hl], e                                     ; $5f30: $73
	ld   de, $1111                                   ; $5f31: $11 $11 $11
	ld   de, $1111                                   ; $5f34: $11 $11 $11
	ld   de, $2611                                   ; $5f37: $11 $11 $26
	cp   l                                           ; $5f3a: $bd
	rst  $38                                         ; $5f3b: $ff
	rst  $38                                         ; $5f3c: $ff
	rst  $38                                         ; $5f3d: $ff
	rst  $38                                         ; $5f3e: $ff
	rst  $38                                         ; $5f3f: $ff
	rst  $38                                         ; $5f40: $ff
	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	rst  $38                                         ; $5f43: $ff
	rst  $38                                         ; $5f44: $ff
	rst  $38                                         ; $5f45: $ff
	db   $fd                                         ; $5f46: $fd
	ret                                              ; $5f47: $c9


	ld   h, c                                        ; $5f48: $61
	ld   de, $1111                                   ; $5f49: $11 $11 $11
	ld   de, $1111                                   ; $5f4c: $11 $11 $11
	ld   de, $5a11                                   ; $5f4f: $11 $11 $5a
	rst  JumpTable                                         ; $5f52: $df
	rst  $38                                         ; $5f53: $ff
	rst  $38                                         ; $5f54: $ff
	rst  $38                                         ; $5f55: $ff
	rst  $38                                         ; $5f56: $ff
	rst  $38                                         ; $5f57: $ff
	rst  $38                                         ; $5f58: $ff
	rst  $38                                         ; $5f59: $ff
	rst  $38                                         ; $5f5a: $ff
	rst  $38                                         ; $5f5b: $ff
	rst  $38                                         ; $5f5c: $ff
	rst  $38                                         ; $5f5d: $ff
	call z, $11b7                                    ; $5f5e: $cc $b7 $11
	ld   de, $1111                                   ; $5f61: $11 $11 $11
	ld   de, $1111                                   ; $5f64: $11 $11 $11
	ld   de, $9d13                                   ; $5f67: $11 $13 $9d
	rst  $38                                         ; $5f6a: $ff
	rst  $38                                         ; $5f6b: $ff
	rst  $38                                         ; $5f6c: $ff
	rst  $38                                         ; $5f6d: $ff
	rst  $38                                         ; $5f6e: $ff
	rst  $38                                         ; $5f6f: $ff
	rst  $38                                         ; $5f70: $ff
	rst  $38                                         ; $5f71: $ff
	rst  $38                                         ; $5f72: $ff
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	db   $fc                                         ; $5f75: $fc
	db   $dd                                         ; $5f76: $dd
	sub  e                                           ; $5f77: $93
	ld   de, $1111                                   ; $5f78: $11 $11 $11
	ld   de, $1111                                   ; $5f7b: $11 $11 $11
	ld   de, $2611                                   ; $5f7e: $11 $11 $26
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f81: $cf
	rst  $38                                         ; $5f82: $ff
	rst  $38                                         ; $5f83: $ff
	rst  $38                                         ; $5f84: $ff
	rst  $38                                         ; $5f85: $ff
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	rst  $38                                         ; $5f88: $ff
	rst  $38                                         ; $5f89: $ff
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	rst  $38                                         ; $5f8c: $ff
	db   $eb                                         ; $5f8d: $eb
	bit  6, c                                        ; $5f8e: $cb $71
	ld   de, $1111                                   ; $5f90: $11 $11 $11
	ld   de, $1111                                   ; $5f93: $11 $11 $11
	ld   de, $6b11                                   ; $5f96: $11 $11 $6b
	rst  $38                                         ; $5f99: $ff
	rst  $38                                         ; $5f9a: $ff
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	rst  $38                                         ; $5f9d: $ff
	rst  $38                                         ; $5f9e: $ff
	rst  $38                                         ; $5f9f: $ff
	rst  $38                                         ; $5fa0: $ff
	rst  $38                                         ; $5fa1: $ff
	rst  $38                                         ; $5fa2: $ff
	rst  $38                                         ; $5fa3: $ff
	rst  $38                                         ; $5fa4: $ff
	cp   e                                           ; $5fa5: $bb
	jp   z, $1131                                    ; $5fa6: $ca $31 $11

	ld   de, $1111                                   ; $5fa9: $11 $11 $11
	ld   de, $1111                                   ; $5fac: $11 $11 $11
	ld   d, $bf                                      ; $5faf: $16 $bf
	rst  $38                                         ; $5fb1: $ff
	rst  $38                                         ; $5fb2: $ff
	rst  $38                                         ; $5fb3: $ff
	rst  $38                                         ; $5fb4: $ff
	rst  $38                                         ; $5fb5: $ff
	rst  $38                                         ; $5fb6: $ff
	rst  $38                                         ; $5fb7: $ff
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	rst  $38                                         ; $5fbb: $ff
	db   $fc                                         ; $5fbc: $fc
	cp   l                                           ; $5fbd: $bd
	and  h                                           ; $5fbe: $a4
	ld   de, $1111                                   ; $5fbf: $11 $11 $11
	ld   de, $1111                                   ; $5fc2: $11 $11 $11
	ld   de, $5a11                                   ; $5fc5: $11 $11 $5a
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	rst  $38                                         ; $5fca: $ff
	rst  $38                                         ; $5fcb: $ff
	rst  $38                                         ; $5fcc: $ff
	rst  $38                                         ; $5fcd: $ff
	rst  $38                                         ; $5fce: $ff
	rst  $38                                         ; $5fcf: $ff
	rst  $38                                         ; $5fd0: $ff
	rst  $38                                         ; $5fd1: $ff
	rst  $38                                         ; $5fd2: $ff
	rst  $38                                         ; $5fd3: $ff
	cp   e                                           ; $5fd4: $bb
	ret                                              ; $5fd5: $c9


	ld   sp, $1111                                   ; $5fd6: $31 $11 $11
	ld   de, $1111                                   ; $5fd9: $11 $11 $11
	ld   de, $1711                                   ; $5fdc: $11 $11 $17
	rst  JumpTable                                         ; $5fdf: $df
	rst  $38                                         ; $5fe0: $ff
	rst  $38                                         ; $5fe1: $ff
	rst  $38                                         ; $5fe2: $ff
	rst  $38                                         ; $5fe3: $ff
	rst  $38                                         ; $5fe4: $ff
	rst  $38                                         ; $5fe5: $ff
	rst  $38                                         ; $5fe6: $ff
	rst  $38                                         ; $5fe7: $ff
	rst  $38                                         ; $5fe8: $ff
	rst  $38                                         ; $5fe9: $ff
	rst  $38                                         ; $5fea: $ff
	jp   c, Jump_0c8_41c9                            ; $5feb: $da $c9 $41

	ld   de, $1111                                   ; $5fee: $11 $11 $11
	ld   de, $1111                                   ; $5ff1: $11 $11 $11
	ld   de, $af16                                   ; $5ff4: $11 $16 $af
	rst  $38                                         ; $5ff7: $ff
	rst  $38                                         ; $5ff8: $ff
	rst  $38                                         ; $5ff9: $ff
	rst  $38                                         ; $5ffa: $ff
	rst  $38                                         ; $5ffb: $ff
	rst  $38                                         ; $5ffc: $ff
	rst  $38                                         ; $5ffd: $ff
	rst  $38                                         ; $5ffe: $ff
	rst  $38                                         ; $5fff: $ff
	rst  $38                                         ; $6000: $ff
	cp   $c9                                         ; $6001: $fe $c9
	ld   b, c                                        ; $6003: $41
	ld   de, $1111                                   ; $6004: $11 $11 $11
	ld   de, $1411                                   ; $6007: $11 $11 $14
	add  sp, $13                                     ; $600a: $e8 $13
	inc  l                                           ; $600c: $2c
	rst  $38                                         ; $600d: $ff
	ld   hl, sp-$01                                  ; $600e: $f8 $ff
	rst  $38                                         ; $6010: $ff
	rst  $38                                         ; $6011: $ff
	rst  $38                                         ; $6012: $ff
	rst  $38                                         ; $6013: $ff
	rst  $38                                         ; $6014: $ff
	ei                                               ; $6015: $fb
	rst  $38                                         ; $6016: $ff
	ret  z                                           ; $6017: $c8

	ld   d, e                                        ; $6018: $53
	ld   hl, $1111                                   ; $6019: $21 $11 $11
	ld   de, $11a6                                   ; $601c: $11 $a6 $11
	ccf                                              ; $601f: $3f
	rst  $38                                         ; $6020: $ff
	ld   b, c                                        ; $6021: $41
	inc  d                                           ; $6022: $14
	rst  $38                                         ; $6023: $ff
	push bc                                          ; $6024: $c5
	ld   a, a                                        ; $6025: $7f
	rst  $38                                         ; $6026: $ff
	rst  $38                                         ; $6027: $ff
	rst  $38                                         ; $6028: $ff
	rst  $38                                         ; $6029: $ff
	or   $ac                                         ; $602a: $f6 $ac
	rst  $28                                         ; $602c: $ef
	ld   [hl], d                                     ; $602d: $72
	ld   l, b                                        ; $602e: $68
	ld   sp, $1111                                   ; $602f: $31 $11 $11
	ld   de, $7747                                   ; $6032: $11 $47 $77
	sbc  a                                           ; $6035: $9f
	rst  $38                                         ; $6036: $ff
	add  c                                           ; $6037: $81
	ld   sp, $aeff                                   ; $6038: $31 $ff $ae
	rst  JumpTable                                         ; $603b: $df
	rst  $38                                         ; $603c: $ff
	rst  $38                                         ; $603d: $ff
	rst  $38                                         ; $603e: $ff
	rst  $38                                         ; $603f: $ff
	push bc                                          ; $6040: $c5
	sbc  a                                           ; $6041: $9f
	db   $ed                                         ; $6042: $ed
	ld   b, c                                        ; $6043: $41
	ld   b, e                                        ; $6044: $43
	ld   de, $1111                                   ; $6045: $11 $11 $11
	ld   e, $9b                                      ; $6048: $1e $9b
	inc  a                                           ; $604a: $3c
	rst  $38                                         ; $604b: $ff
	pop  af                                          ; $604c: $f1
	ld   de, $fc4f                                   ; $604d: $11 $4f $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6050: $cf
	rst  $38                                         ; $6051: $ff
	rst  $38                                         ; $6052: $ff
	rst  $38                                         ; $6053: $ff
	rst  $38                                         ; $6054: $ff
	ret  c                                           ; $6055: $d8

	ld   l, l                                        ; $6056: $6d
	cp   $b1                                         ; $6057: $fe $b1
	ld   d, $11                                      ; $6059: $16 $11
	ld   de, $1911                                   ; $605b: $11 $11 $19
	db   $fc                                         ; $605e: $fc
	or   h                                           ; $605f: $b4
	rst  $38                                         ; $6060: $ff
	ld   hl, sp+$11                                  ; $6061: $f8 $11
	rra                                              ; $6063: $1f
	rst  $38                                         ; $6064: $ff
	rst  $28                                         ; $6065: $ef
	rst  $38                                         ; $6066: $ff
	rst  $38                                         ; $6067: $ff
	cp   $ff                                         ; $6068: $fe $ff
	rst  $30                                         ; $606a: $f7
	ld   l, e                                        ; $606b: $6b
	rst  $38                                         ; $606c: $ff
	jp   nz, $2113                                   ; $606d: $c2 $13 $21

	ld   de, $1711                                   ; $6070: $11 $11 $17
	ld   a, [$ff95]                                  ; $6073: $fa $95 $ff
	db   $f4                                         ; $6076: $f4
	ld   de, $ff5f                                   ; $6077: $11 $5f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $607a: $cf
	rst  $38                                         ; $607b: $ff
	rst  $38                                         ; $607c: $ff
	rst  $38                                         ; $607d: $ff
	rst  $38                                         ; $607e: $ff
	or   $7f                                         ; $607f: $f6 $7f
	db   $fd                                         ; $6081: $fd
	sub  c                                           ; $6082: $91
	inc  de                                          ; $6083: $13
	ld   de, $1111                                   ; $6084: $11 $11 $11
	inc  e                                           ; $6087: $1c
	db   $ec                                         ; $6088: $ec
	ret  z                                           ; $6089: $c8

	rst  $38                                         ; $608a: $ff
	pop  af                                          ; $608b: $f1
	ld   de, $ff7f                                   ; $608c: $11 $7f $ff
	rst  JumpTable                                         ; $608f: $df
	rst  $38                                         ; $6090: $ff
	rst  $38                                         ; $6091: $ff
	rst  $38                                         ; $6092: $ff
	rst  $38                                         ; $6093: $ff
	or   a                                           ; $6094: $b7
	rst  $28                                         ; $6095: $ef
	ld   sp, hl                                      ; $6096: $f9
	ld   b, c                                        ; $6097: $41
	ld   [de], a                                     ; $6098: $12
	ld   de, $1111                                   ; $6099: $11 $11 $11
	rra                                              ; $609c: $1f
	adc  [hl]                                        ; $609d: $8e
	sbc  a                                           ; $609e: $9f
	db   $fd                                         ; $609f: $fd
	sub  c                                           ; $60a0: $91
	dec  d                                           ; $60a1: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60a2: $cf
	rst  $38                                         ; $60a3: $ff
	rst  $38                                         ; $60a4: $ff
	rst  $38                                         ; $60a5: $ff
	rst  $38                                         ; $60a6: $ff
	rst  $38                                         ; $60a7: $ff
	rst  $38                                         ; $60a8: $ff
	xor  e                                           ; $60a9: $ab
	rst  $38                                         ; $60aa: $ff
	ld   [hl], h                                     ; $60ab: $74
	ld   de, $1111                                   ; $60ac: $11 $11 $11
	ld   de, $9a11                                   ; $60af: $11 $11 $9a
	sbc  h                                           ; $60b2: $9c
	rst  $38                                         ; $60b3: $ff
	ldh  a, [c]                                      ; $60b4: $f2
	ld   de, $ff2f                                   ; $60b5: $11 $2f $ff
	rst  $38                                         ; $60b8: $ff
	rst  $38                                         ; $60b9: $ff
	rst  $38                                         ; $60ba: $ff
	rst  $38                                         ; $60bb: $ff
	rst  $38                                         ; $60bc: $ff
	db   $fd                                         ; $60bd: $fd
	rst  $38                                         ; $60be: $ff
	push hl                                          ; $60bf: $e5
	ld   de, $1111                                   ; $60c0: $11 $11 $11
	ld   de, $6411                                   ; $60c3: $11 $11 $64
	jr   @+$01                                       ; $60c6: $18 $ff

	rst  $30                                         ; $60c8: $f7
	ld   de, $cd5d                                   ; $60c9: $11 $5d $cd
	cp   a                                           ; $60cc: $bf
	rst  $38                                         ; $60cd: $ff
	rst  $38                                         ; $60ce: $ff
	rst  $38                                         ; $60cf: $ff
	rst  $38                                         ; $60d0: $ff
	ld   a, [$f5ef]                                  ; $60d1: $fa $ef $f5
	ld   de, $1111                                   ; $60d4: $11 $11 $11
	ld   de, $4411                                   ; $60d7: $11 $11 $44
	ld   de, $fdef                                   ; $60da: $11 $ef $fd
	ld   de, $ec2b                                   ; $60dd: $11 $2b $ec
	xor  a                                           ; $60e0: $af
	rst  $38                                         ; $60e1: $ff
	rst  $38                                         ; $60e2: $ff
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	db   $fc                                         ; $60e5: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60e6: $cf
	ld   hl, sp+$11                                  ; $60e7: $f8 $11
	ld   de, $1111                                   ; $60e9: $11 $11 $11
	ld   de, $1131                                   ; $60ec: $11 $31 $11
	rst  JumpTable                                         ; $60ef: $df
	or   $11                                         ; $60f0: $f6 $11
	ld   e, e                                        ; $60f2: $5b
	cp   b                                           ; $60f3: $b8
	adc  a                                           ; $60f4: $8f
	rst  $38                                         ; $60f5: $ff
	rst  $38                                         ; $60f6: $ff
	rst  $38                                         ; $60f7: $ff
	rst  $38                                         ; $60f8: $ff
	cp   $ff                                         ; $60f9: $fe $ff
	pop  bc                                          ; $60fb: $c1
	ld   de, $1111                                   ; $60fc: $11 $11 $11
	ld   de, $1111                                   ; $60ff: $11 $11 $11
	inc  e                                           ; $6102: $1c
	rst  $38                                         ; $6103: $ff
	and  $11                                         ; $6104: $e6 $11
	ld   h, a                                        ; $6106: $67
	sub  l                                           ; $6107: $95
	rst  $38                                         ; $6108: $ff
	rst  $38                                         ; $6109: $ff
	rst  $38                                         ; $610a: $ff
	rst  $38                                         ; $610b: $ff
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	ld   a, [$1151]                                  ; $610e: $fa $51 $11
	ld   de, $1111                                   ; $6111: $11 $11 $11
	ld   hl, $df14                                   ; $6114: $21 $14 $df
	db   $fd                                         ; $6117: $fd
	ld   h, c                                        ; $6118: $61
	ld   l, c                                        ; $6119: $69
	ld   h, [hl]                                     ; $611a: $66
	ld   a, l                                        ; $611b: $7d
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	rst  $38                                         ; $611e: $ff
	rst  $38                                         ; $611f: $ff
	rst  $38                                         ; $6120: $ff
	db   $fd                                         ; $6121: $fd
	add  d                                           ; $6122: $82
	ld   de, $1111                                   ; $6123: $11 $11 $11
	ld   de, $1111                                   ; $6126: $11 $11 $11
	adc  a                                           ; $6129: $8f
	rst  $38                                         ; $612a: $ff
	res  5, e                                        ; $612b: $cb $ab
	sub  [hl]                                        ; $612d: $96
	ld   a, d                                        ; $612e: $7a
	rst  $38                                         ; $612f: $ff
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	rst  $38                                         ; $6132: $ff
	rst  $38                                         ; $6133: $ff
	rst  $38                                         ; $6134: $ff
	or   [hl]                                        ; $6135: $b6
	ld   de, $1111                                   ; $6136: $11 $11 $11
	ld   de, $1111                                   ; $6139: $11 $11 $11
	ld   a, [hl-]                                    ; $613c: $3a
	rst  $38                                         ; $613d: $ff
	db   $fc                                         ; $613e: $fc
	xor  d                                           ; $613f: $aa
	xor  d                                           ; $6140: $aa
	adc  c                                           ; $6141: $89
	sbc  [hl]                                        ; $6142: $9e
	rst  $38                                         ; $6143: $ff
	rst  $38                                         ; $6144: $ff
	rst  $38                                         ; $6145: $ff
	rst  $38                                         ; $6146: $ff
	rst  $28                                         ; $6147: $ef
	db   $db                                         ; $6148: $db
	ld   [hl], d                                     ; $6149: $72
	ld   de, $1111                                   ; $614a: $11 $11 $11
	ld   de, $1111                                   ; $614d: $11 $11 $11
	inc  h                                           ; $6150: $24
	adc  b                                           ; $6151: $88
	sbc  b                                           ; $6152: $98
	xor  l                                           ; $6153: $ad
	call z, $ccac                                    ; $6154: $cc $ac $cc
	jp   c, $ccaa                                    ; $6157: $da $aa $cc

	cp   e                                           ; $615a: $bb
	xor  l                                           ; $615b: $ad
	db   $dd                                         ; $615c: $dd
	cp   d                                           ; $615d: $ba
	xor  d                                           ; $615e: $aa
	xor  d                                           ; $615f: $aa
	add  a                                           ; $6160: $87
	add  a                                           ; $6161: $87
	ld   [hl], a                                     ; $6162: $77
	ld   h, h                                        ; $6163: $64
	ld   [hl+], a                                    ; $6164: $22
	ld   [de], a                                     ; $6165: $12
	ld   de, $3412                                   ; $6166: $11 $12 $34
	ld   b, h                                        ; $6169: $44
	ld   d, [hl]                                     ; $616a: $56
	ld   a, b                                        ; $616b: $78
	adc  c                                           ; $616c: $89
	cp   l                                           ; $616d: $bd
	rst  $28                                         ; $616e: $ef
	rst  $38                                         ; $616f: $ff
	rst  $38                                         ; $6170: $ff
	cp   $de                                         ; $6171: $fe $de
	db   $ed                                         ; $6173: $ed
	res  5, d                                        ; $6174: $cb $aa
	xor  d                                           ; $6176: $aa
	sbc  b                                           ; $6177: $98
	ld   [hl], a                                     ; $6178: $77
	ld   h, [hl]                                     ; $6179: $66
	ld   d, l                                        ; $617a: $55
	ld   b, h                                        ; $617b: $44
	ld   b, h                                        ; $617c: $44
	ld   b, e                                        ; $617d: $43
	inc  [hl]                                        ; $617e: $34
	ld   b, h                                        ; $617f: $44
	ld   d, l                                        ; $6180: $55
	ld   h, a                                        ; $6181: $67
	adc  c                                           ; $6182: $89
	sbc  d                                           ; $6183: $9a
	cp   h                                           ; $6184: $bc
	cp   e                                           ; $6185: $bb
	cp   e                                           ; $6186: $bb
	cp   e                                           ; $6187: $bb
	cp   d                                           ; $6188: $ba
	xor  d                                           ; $6189: $aa
	cp   e                                           ; $618a: $bb
	xor  d                                           ; $618b: $aa
	xor  d                                           ; $618c: $aa
	xor  b                                           ; $618d: $a8
	adc  b                                           ; $618e: $88
	ld   [hl], a                                     ; $618f: $77
	ld   h, [hl]                                     ; $6190: $66
	ld   h, l                                        ; $6191: $65
	ld   d, [hl]                                     ; $6192: $56
	ld   h, l                                        ; $6193: $65
	ld   h, a                                        ; $6194: $67
	adc  b                                           ; $6195: $88
	ld   a, b                                        ; $6196: $78
	adc  c                                           ; $6197: $89
	xor  c                                           ; $6198: $a9
	sbc  c                                           ; $6199: $99
	sbc  b                                           ; $619a: $98
	sbc  b                                           ; $619b: $98
	sbc  b                                           ; $619c: $98
	adc  c                                           ; $619d: $89
	adc  c                                           ; $619e: $89
	sbc  c                                           ; $619f: $99
	sbc  b                                           ; $61a0: $98
	sbc  c                                           ; $61a1: $99
	adc  b                                           ; $61a2: $88
	add  a                                           ; $61a3: $87
	ld   [hl], a                                     ; $61a4: $77
	ld   [hl], a                                     ; $61a5: $77
	ld   [hl], a                                     ; $61a6: $77
	ld   [hl], a                                     ; $61a7: $77
	ld   a, b                                        ; $61a8: $78
	adc  b                                           ; $61a9: $88
	adc  b                                           ; $61aa: $88
	adc  c                                           ; $61ab: $89
	sbc  b                                           ; $61ac: $98
	adc  b                                           ; $61ad: $88
	adc  b                                           ; $61ae: $88
	add  a                                           ; $61af: $87
	ld   a, b                                        ; $61b0: $78
	adc  b                                           ; $61b1: $88
	adc  b                                           ; $61b2: $88
	adc  c                                           ; $61b3: $89
	adc  b                                           ; $61b4: $88
	ld   a, b                                        ; $61b5: $78
	adc  b                                           ; $61b6: $88
	add  a                                           ; $61b7: $87
	ld   [hl], a                                     ; $61b8: $77
	ld   a, b                                        ; $61b9: $78
	ld   [hl], a                                     ; $61ba: $77
	ld   [hl], a                                     ; $61bb: $77
	adc  b                                           ; $61bc: $88
	sbc  b                                           ; $61bd: $98
	adc  b                                           ; $61be: $88
	adc  c                                           ; $61bf: $89
	sbc  b                                           ; $61c0: $98
	sbc  b                                           ; $61c1: $98
	adc  b                                           ; $61c2: $88
	adc  b                                           ; $61c3: $88
	adc  b                                           ; $61c4: $88
	add  a                                           ; $61c5: $87
	ld   [hl], a                                     ; $61c6: $77
	ld   [hl], a                                     ; $61c7: $77
	ld   [hl], a                                     ; $61c8: $77
	ld   [hl], a                                     ; $61c9: $77
	adc  b                                           ; $61ca: $88
	add  a                                           ; $61cb: $87
	ld   [hl], a                                     ; $61cc: $77
	ld   [hl], a                                     ; $61cd: $77
	adc  b                                           ; $61ce: $88
	ld   [hl], a                                     ; $61cf: $77
	adc  b                                           ; $61d0: $88
	adc  c                                           ; $61d1: $89
	sbc  c                                           ; $61d2: $99
	sbc  b                                           ; $61d3: $98
	sbc  c                                           ; $61d4: $99
	sbc  b                                           ; $61d5: $98
	adc  b                                           ; $61d6: $88
	adc  b                                           ; $61d7: $88
	adc  b                                           ; $61d8: $88
	adc  b                                           ; $61d9: $88
	adc  b                                           ; $61da: $88
	add  a                                           ; $61db: $87
	ld   [hl], a                                     ; $61dc: $77
	ld   a, b                                        ; $61dd: $78
	ld   a, b                                        ; $61de: $78
	adc  b                                           ; $61df: $88
	add  a                                           ; $61e0: $87
	ld   [hl], a                                     ; $61e1: $77
	ld   [hl], a                                     ; $61e2: $77
	ld   [hl], a                                     ; $61e3: $77
	adc  b                                           ; $61e4: $88
	adc  b                                           ; $61e5: $88
	adc  b                                           ; $61e6: $88
	adc  b                                           ; $61e7: $88
	sbc  b                                           ; $61e8: $98
	adc  b                                           ; $61e9: $88
	ld   a, b                                        ; $61ea: $78
	adc  b                                           ; $61eb: $88
	adc  b                                           ; $61ec: $88
	adc  c                                           ; $61ed: $89
	sbc  c                                           ; $61ee: $99
	adc  b                                           ; $61ef: $88
	adc  c                                           ; $61f0: $89
	adc  b                                           ; $61f1: $88
	adc  b                                           ; $61f2: $88
	adc  b                                           ; $61f3: $88
	adc  b                                           ; $61f4: $88
	add  a                                           ; $61f5: $87
	ld   [hl], a                                     ; $61f6: $77
	ld   [hl], a                                     ; $61f7: $77
	ld   [hl], a                                     ; $61f8: $77
	ld   [hl], a                                     ; $61f9: $77
	ld   [hl], a                                     ; $61fa: $77
	ld   [hl], a                                     ; $61fb: $77
	adc  b                                           ; $61fc: $88
	adc  b                                           ; $61fd: $88
	ld   [hl], a                                     ; $61fe: $77
	adc  b                                           ; $61ff: $88
	adc  b                                           ; $6200: $88
	adc  c                                           ; $6201: $89
	adc  b                                           ; $6202: $88
	sbc  c                                           ; $6203: $99
	sbc  b                                           ; $6204: $98
	sbc  c                                           ; $6205: $99
	adc  b                                           ; $6206: $88
	sbc  c                                           ; $6207: $99
	adc  c                                           ; $6208: $89
	adc  b                                           ; $6209: $88
	adc  b                                           ; $620a: $88
	ld   [hl], a                                     ; $620b: $77
	ld   [hl], a                                     ; $620c: $77
	ld   [hl], a                                     ; $620d: $77
	ld   [hl], a                                     ; $620e: $77
	ld   [hl], a                                     ; $620f: $77
	adc  b                                           ; $6210: $88
	ld   [hl], a                                     ; $6211: $77
	ld   [hl], a                                     ; $6212: $77
	ld   [hl], a                                     ; $6213: $77
	adc  b                                           ; $6214: $88
	adc  b                                           ; $6215: $88
	adc  c                                           ; $6216: $89
	sbc  c                                           ; $6217: $99
	sbc  c                                           ; $6218: $99
	sbc  c                                           ; $6219: $99
	sbc  c                                           ; $621a: $99
	sbc  c                                           ; $621b: $99
	sbc  c                                           ; $621c: $99
	sbc  c                                           ; $621d: $99
	adc  b                                           ; $621e: $88
	add  a                                           ; $621f: $87
	ld   [hl], a                                     ; $6220: $77
	ld   [hl], a                                     ; $6221: $77
	ld   [hl], a                                     ; $6222: $77
	adc  b                                           ; $6223: $88
	adc  b                                           ; $6224: $88
	adc  b                                           ; $6225: $88
	adc  b                                           ; $6226: $88
	adc  b                                           ; $6227: $88
	adc  b                                           ; $6228: $88
	adc  b                                           ; $6229: $88
	adc  b                                           ; $622a: $88
	sbc  c                                           ; $622b: $99
	sbc  c                                           ; $622c: $99
	adc  b                                           ; $622d: $88
	adc  c                                           ; $622e: $89
	sbc  b                                           ; $622f: $98
	adc  b                                           ; $6230: $88
	adc  b                                           ; $6231: $88
	adc  b                                           ; $6232: $88
	adc  b                                           ; $6233: $88
	add  a                                           ; $6234: $87
	ld   a, b                                        ; $6235: $78
	adc  b                                           ; $6236: $88
	adc  b                                           ; $6237: $88
	adc  c                                           ; $6238: $89
	sbc  b                                           ; $6239: $98
	adc  b                                           ; $623a: $88
	adc  b                                           ; $623b: $88
	adc  b                                           ; $623c: $88
	adc  b                                           ; $623d: $88
	adc  b                                           ; $623e: $88
	adc  b                                           ; $623f: $88
	adc  c                                           ; $6240: $89
	sbc  c                                           ; $6241: $99
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
	adc  c                                           ; $624c: $89
	sbc  c                                           ; $624d: $99
	sbc  b                                           ; $624e: $98
	adc  b                                           ; $624f: $88
	adc  b                                           ; $6250: $88
	adc  b                                           ; $6251: $88
	adc  b                                           ; $6252: $88
	adc  c                                           ; $6253: $89
	sbc  c                                           ; $6254: $99
	sbc  c                                           ; $6255: $99
	sbc  c                                           ; $6256: $99
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
	sbc  c                                           ; $6268: $99
	sbc  c                                           ; $6269: $99
	sbc  c                                           ; $626a: $99
	sbc  c                                           ; $626b: $99
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
	sbc  c                                           ; $627b: $99
	sbc  c                                           ; $627c: $99
	sbc  c                                           ; $627d: $99
	sbc  c                                           ; $627e: $99
	sbc  c                                           ; $627f: $99
	sbc  b                                           ; $6280: $98
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
	sbc  c                                           ; $6290: $99
	sbc  c                                           ; $6291: $99
	sbc  c                                           ; $6292: $99
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
	adc  c                                           ; $62b6: $89
	sbc  b                                           ; $62b7: $98
	xor  c                                           ; $62b8: $a9
	sbc  d                                           ; $62b9: $9a
	adc  d                                           ; $62ba: $8a
	sub  a                                           ; $62bb: $97
	ld   [hl], a                                     ; $62bc: $77
	sbc  d                                           ; $62bd: $9a
	adc  c                                           ; $62be: $89
	xor  c                                           ; $62bf: $a9
	sbc  c                                           ; $62c0: $99
	cp   e                                           ; $62c1: $bb
	ld   a, b                                        ; $62c2: $78
	cp   h                                           ; $62c3: $bc
	add  [hl]                                        ; $62c4: $86
	ld   l, c                                        ; $62c5: $69
	sub  a                                           ; $62c6: $97
	xor  c                                           ; $62c7: $a9
	ld   a, c                                        ; $62c8: $79
	res  7, e                                        ; $62c9: $cb $bb
	ld   a, c                                        ; $62cb: $79
	jp   c, $9a78                                    ; $62cc: $da $78 $9a

	xor  e                                           ; $62cf: $ab
	ld   b, h                                        ; $62d0: $44
	ld   h, l                                        ; $62d1: $65
	ld   h, [hl]                                     ; $62d2: $66
	ld   h, e                                        ; $62d3: $63
	ld   h, a                                        ; $62d4: $67
	add  a                                           ; $62d5: $87
	sub  a                                           ; $62d6: $97
	ld   a, e                                        ; $62d7: $7b
	add  a                                           ; $62d8: $87
	ld   h, a                                        ; $62d9: $67
	ld   h, h                                        ; $62da: $64
	ld   d, h                                        ; $62db: $54
	ld   [hl], $64                                   ; $62dc: $36 $64
	ld   [hl], a                                     ; $62de: $77
	ld   a, b                                        ; $62df: $78
	xor  c                                           ; $62e0: $a9
	sbc  c                                           ; $62e1: $99
	ld   a, d                                        ; $62e2: $7a
	xor  c                                           ; $62e3: $a9
	halt                                             ; $62e4: $76
	ld   a, b                                        ; $62e5: $78
	add  a                                           ; $62e6: $87
	ld   h, [hl]                                     ; $62e7: $66
	ld   d, a                                        ; $62e8: $57
	adc  b                                           ; $62e9: $88
	ld   b, l                                        ; $62ea: $45
	or   [hl]                                        ; $62eb: $b6
	ld   d, l                                        ; $62ec: $55
	ld   d, e                                        ; $62ed: $53
	inc  [hl]                                        ; $62ee: $34
	inc  de                                          ; $62ef: $13
	ld   [hl+], a                                    ; $62f0: $22
	ld   de, $1401                                   ; $62f1: $11 $01 $14
	sbc  c                                           ; $62f4: $99
	rst  $28                                         ; $62f5: $ef
	rst  $38                                         ; $62f6: $ff
	rst  $38                                         ; $62f7: $ff
	rst  $38                                         ; $62f8: $ff
	rst  $38                                         ; $62f9: $ff
	cp   $db                                         ; $62fa: $fe $db
	xor  $86                                         ; $62fc: $ee $86
	halt                                             ; $62fe: $76
	ld   b, e                                        ; $62ff: $43
	ld   de, $1111                                   ; $6300: $11 $11 $11
	ld   de, $1311                                   ; $6303: $11 $11 $13
	sbc  e                                           ; $6306: $9b
	rst  $38                                         ; $6307: $ff
	rst  $38                                         ; $6308: $ff
	rst  $38                                         ; $6309: $ff
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	rst  $28                                         ; $630c: $ef
	db   $fc                                         ; $630d: $fc
	rst  $38                                         ; $630e: $ff
	rst  $38                                         ; $630f: $ff
	rst  $38                                         ; $6310: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6311: $cf
	or   l                                           ; $6312: $b5
	ld   de, $1111                                   ; $6313: $11 $11 $11
	ld   de, $1611                                   ; $6316: $11 $11 $16
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	rst  $38                                         ; $631b: $ff
	rst  $38                                         ; $631c: $ff
	ei                                               ; $631d: $fb
	rst  $28                                         ; $631e: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $631f: $cf
	sbc  $ff                                         ; $6320: $de $ff
	rst  $38                                         ; $6322: $ff
	rst  $38                                         ; $6323: $ff
	rst  $38                                         ; $6324: $ff
	or   $21                                         ; $6325: $f6 $21
	ld   de, $1111                                   ; $6327: $11 $11 $11
	ld   de, $6c11                                   ; $632a: $11 $11 $6c
	sbc  l                                           ; $632d: $9d
	rst  $38                                         ; $632e: $ff
	rst  $38                                         ; $632f: $ff
	ei                                               ; $6330: $fb
	rst  $28                                         ; $6331: $ef
	ld   sp, hl                                      ; $6332: $f9
	db   $ed                                         ; $6333: $ed
	rst  $38                                         ; $6334: $ff
	rst  $38                                         ; $6335: $ff
	rst  $38                                         ; $6336: $ff
	rst  $38                                         ; $6337: $ff
	ei                                               ; $6338: $fb
	reti                                             ; $6339: $d9


	ld   sp, $1111                                   ; $633a: $31 $11 $11
	ld   de, $1111                                   ; $633d: $11 $11 $11
	ld   d, $fb                                      ; $6340: $16 $fb
	sbc  d                                           ; $6342: $9a
	rst  $38                                         ; $6343: $ff
	rst  $38                                         ; $6344: $ff
	cp   l                                           ; $6345: $bd
	rst  $38                                         ; $6346: $ff
	ei                                               ; $6347: $fb
	rst  $28                                         ; $6348: $ef
	rst  $38                                         ; $6349: $ff
	rst  $38                                         ; $634a: $ff
	rst  $38                                         ; $634b: $ff
	cp   $98                                         ; $634c: $fe $98
	and  e                                           ; $634e: $a3
	ld   de, $1111                                   ; $634f: $11 $11 $11
	ld   de, $1111                                   ; $6352: $11 $11 $11
	inc  de                                          ; $6355: $13
	ld   l, a                                        ; $6356: $6f
	rst  $38                                         ; $6357: $ff
	ld   a, a                                        ; $6358: $7f
	rst  $38                                         ; $6359: $ff
	sbc  l                                           ; $635a: $9d
	rst  $28                                         ; $635b: $ef
	rst  $38                                         ; $635c: $ff
	cp   $ff                                         ; $635d: $fe $ff
	rst  $38                                         ; $635f: $ff
	rst  $38                                         ; $6360: $ff
	rst  $38                                         ; $6361: $ff
	ld   h, e                                        ; $6362: $63
	ld   h, h                                        ; $6363: $64
	ld   de, $1111                                   ; $6364: $11 $11 $11
	ld   de, $1111                                   ; $6367: $11 $11 $11
	rla                                              ; $636a: $17
	rst  JumpTable                                         ; $636b: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $636c: $cf
	ld   hl, sp-$01                                  ; $636d: $f8 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $636f: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6370: $cf
	sbc  $ff                                         ; $6371: $de $ff
	rst  $38                                         ; $6373: $ff
	rst  $38                                         ; $6374: $ff
	rst  $38                                         ; $6375: $ff
	ld   hl, sp-$2c                                  ; $6376: $f8 $d4
	ld   [de], a                                     ; $6378: $12
	ld   de, $1111                                   ; $6379: $11 $11 $11
	ld   de, $1111                                   ; $637c: $11 $11 $11
	inc  de                                          ; $637f: $13
	rst  JumpTable                                         ; $6380: $df
	cp   a                                           ; $6381: $bf
	rst  $38                                         ; $6382: $ff
	cp   $df                                         ; $6383: $fe $df
	rst  $38                                         ; $6385: $ff
	rst  $38                                         ; $6386: $ff
	rst  $38                                         ; $6387: $ff
	rst  $38                                         ; $6388: $ff
	rst  $38                                         ; $6389: $ff
	rst  $38                                         ; $638a: $ff
	ei                                               ; $638b: $fb
	and  h                                           ; $638c: $a4
	inc  sp                                          ; $638d: $33
	ld   de, $1111                                   ; $638e: $11 $11 $11
	ld   de, $1111                                   ; $6391: $11 $11 $11
	ld   d, $78                                      ; $6394: $16 $78
	rst  $38                                         ; $6396: $ff
	call $ffdf                                       ; $6397: $cd $df $ff
	rst  $38                                         ; $639a: $ff
	rst  $38                                         ; $639b: $ff
	rst  $38                                         ; $639c: $ff
	rst  $38                                         ; $639d: $ff
	rst  $38                                         ; $639e: $ff
	cp   a                                           ; $639f: $bf
	rst  $38                                         ; $63a0: $ff
	and  c                                           ; $63a1: $a1
	ld   h, e                                        ; $63a2: $63
	ld   de, $1111                                   ; $63a3: $11 $11 $11
	ld   de, $1111                                   ; $63a6: $11 $11 $11
	ld   de, $dd14                                   ; $63a9: $11 $14 $dd
	rst  $28                                         ; $63ac: $ef
	cp   $ff                                         ; $63ad: $fe $ff
	rst  $38                                         ; $63af: $ff
	rst  $38                                         ; $63b0: $ff
	rst  $38                                         ; $63b1: $ff
	rst  $38                                         ; $63b2: $ff
	rst  $38                                         ; $63b3: $ff
	rst  $38                                         ; $63b4: $ff
	rst  $38                                         ; $63b5: $ff
	ld   sp, hl                                      ; $63b6: $f9
	xor  d                                           ; $63b7: $aa
	ld   de, $1111                                   ; $63b8: $11 $11 $11
	ld   de, $1111                                   ; $63bb: $11 $11 $11
	ld   de, $3511                                   ; $63be: $11 $11 $35
	ld   l, a                                        ; $63c1: $6f
	db   $fc                                         ; $63c2: $fc
	ld   l, a                                        ; $63c3: $6f
	rst  $38                                         ; $63c4: $ff
	rst  $38                                         ; $63c5: $ff
	rst  $38                                         ; $63c6: $ff
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	rst  $38                                         ; $63c9: $ff
	rst  $38                                         ; $63ca: $ff
	rst  $38                                         ; $63cb: $ff
	or   a                                           ; $63cc: $b7
	ld   [hl], l                                     ; $63cd: $75
	ld   hl, $1111                                   ; $63ce: $21 $11 $11
	ld   de, $1111                                   ; $63d1: $11 $11 $11
	ld   de, $5511                                   ; $63d4: $11 $11 $55
	rst  $38                                         ; $63d7: $ff
	add  [hl]                                        ; $63d8: $86
	rst  $38                                         ; $63d9: $ff
	db   $db                                         ; $63da: $db
	rst  $38                                         ; $63db: $ff
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	rst  $38                                         ; $63de: $ff
	rst  $38                                         ; $63df: $ff
	rst  $38                                         ; $63e0: $ff
	cp   $b9                                         ; $63e1: $fe $b9
	ld   e, b                                        ; $63e3: $58
	ld   b, c                                        ; $63e4: $41
	ld   de, $1111                                   ; $63e5: $11 $11 $11
	ld   de, $1111                                   ; $63e8: $11 $11 $11
	ld   de, $df42                                   ; $63eb: $11 $42 $df
	sbc  a                                           ; $63ee: $9f
	rst  $38                                         ; $63ef: $ff
	rst  $38                                         ; $63f0: $ff
	rst  $38                                         ; $63f1: $ff
	rst  $38                                         ; $63f2: $ff
	rst  $38                                         ; $63f3: $ff
	rst  $38                                         ; $63f4: $ff
	rst  $38                                         ; $63f5: $ff
	rst  $38                                         ; $63f6: $ff
	rst  $38                                         ; $63f7: $ff
	db   $fd                                         ; $63f8: $fd
	ld   [hl], l                                     ; $63f9: $75
	ld   sp, $1111                                   ; $63fa: $31 $11 $11
	ld   de, $1111                                   ; $63fd: $11 $11 $11
	ld   de, $1111                                   ; $6400: $11 $11 $11
	ld   l, [hl]                                     ; $6403: $6e
	rst  $38                                         ; $6404: $ff
	sbc  a                                           ; $6405: $9f
	rst  $38                                         ; $6406: $ff
	rst  $38                                         ; $6407: $ff
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	rst  $38                                         ; $640a: $ff
	rst  $38                                         ; $640b: $ff
	rst  $38                                         ; $640c: $ff
	rst  $38                                         ; $640d: $ff
	rst  $38                                         ; $640e: $ff
	ld   e, b                                        ; $640f: $58
	or   d                                           ; $6410: $b2
	ld   de, $1131                                   ; $6411: $11 $31 $11
	ld   de, $1111                                   ; $6414: $11 $11 $11
	ld   de, $4311                                   ; $6417: $11 $11 $43
	cp   [hl]                                        ; $641a: $be
	db   $ed                                         ; $641b: $ed
	rst  $38                                         ; $641c: $ff
	rst  $38                                         ; $641d: $ff
	rst  $38                                         ; $641e: $ff
	rst  $38                                         ; $641f: $ff
	rst  $38                                         ; $6420: $ff
	rst  $38                                         ; $6421: $ff
	rst  $38                                         ; $6422: $ff
	rst  $38                                         ; $6423: $ff
	rst  $38                                         ; $6424: $ff
	db   $fc                                         ; $6425: $fc
	cp   d                                           ; $6426: $ba
	ld   b, c                                        ; $6427: $41
	ld   de, $1111                                   ; $6428: $11 $11 $11
	ld   de, $1111                                   ; $642b: $11 $11 $11
	ld   de, $7113                                   ; $642e: $11 $13 $71
	ld   e, a                                        ; $6431: $5f
	db   $ed                                         ; $6432: $ed
	rst  $38                                         ; $6433: $ff
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	rst  $38                                         ; $6437: $ff
	rst  $38                                         ; $6438: $ff
	rst  $38                                         ; $6439: $ff
	rst  $38                                         ; $643a: $ff
	rst  $38                                         ; $643b: $ff
	db   $eb                                         ; $643c: $eb
	jp   z, $3164                                    ; $643d: $ca $64 $31

	ld   de, $1111                                   ; $6440: $11 $11 $11
	ld   de, $1111                                   ; $6443: $11 $11 $11
	ld   de, $5b13                                   ; $6446: $11 $13 $5b
	ret                                              ; $6449: $c9


	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	rst  $38                                         ; $644c: $ff
	rst  $38                                         ; $644d: $ff
	rst  $38                                         ; $644e: $ff
	rst  $38                                         ; $644f: $ff
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	rst  $38                                         ; $6452: $ff
	ei                                               ; $6453: $fb
	ret                                              ; $6454: $c9


	ld   l, b                                        ; $6455: $68
	ld   h, c                                        ; $6456: $61
	ld   [de], a                                     ; $6457: $12
	ld   de, $1111                                   ; $6458: $11 $11 $11
	ld   de, $1111                                   ; $645b: $11 $11 $11
	ld   de, $4912                                   ; $645e: $11 $12 $49
	cp   d                                           ; $6461: $ba
	rst  $28                                         ; $6462: $ef
	rst  $38                                         ; $6463: $ff
	rst  $38                                         ; $6464: $ff
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	rst  $38                                         ; $6467: $ff
	rst  $38                                         ; $6468: $ff
	rst  $38                                         ; $6469: $ff
	rst  $38                                         ; $646a: $ff
	db   $dd                                         ; $646b: $dd
	jp   z, Jump_0c8_7597                            ; $646c: $ca $97 $75

	ld   sp, $1123                                   ; $646f: $31 $23 $11
	ld   de, $1111                                   ; $6472: $11 $11 $11
	ld   de, $1111                                   ; $6475: $11 $11 $11
	inc  hl                                          ; $6478: $23
	ld   c, c                                        ; $6479: $49
	sbc  d                                           ; $647a: $9a
	rst  $38                                         ; $647b: $ff
	rst  $38                                         ; $647c: $ff
	rst  $38                                         ; $647d: $ff
	rst  $38                                         ; $647e: $ff
	rst  $38                                         ; $647f: $ff
	rst  $38                                         ; $6480: $ff
	rst  $38                                         ; $6481: $ff
	rst  $38                                         ; $6482: $ff
	rst  $38                                         ; $6483: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6484: $cf
	jp   c, $97a9                                    ; $6485: $da $a9 $97

	ld   h, l                                        ; $6488: $65
	ld   b, h                                        ; $6489: $44
	ld   sp, $1111                                   ; $648a: $31 $11 $11
	ld   de, $1111                                   ; $648d: $11 $11 $11
	ld   de, $2611                                   ; $6490: $11 $11 $26
	ld   c, c                                        ; $6493: $49
	sbc  e                                           ; $6494: $9b
	sbc  $ff                                         ; $6495: $de $ff
	rst  $38                                         ; $6497: $ff
	rst  $38                                         ; $6498: $ff
	rst  $38                                         ; $6499: $ff
	rst  $38                                         ; $649a: $ff
	rst  $38                                         ; $649b: $ff
	rst  $38                                         ; $649c: $ff
	rst  $38                                         ; $649d: $ff
	xor  $cb                                         ; $649e: $ee $cb
	cp   d                                           ; $64a0: $ba
	add  a                                           ; $64a1: $87
	ld   h, l                                        ; $64a2: $65
	ld   [hl-], a                                    ; $64a3: $32
	ld   de, $1111                                   ; $64a4: $11 $11 $11
	ld   de, $1111                                   ; $64a7: $11 $11 $11
	ld   de, $2411                                   ; $64aa: $11 $11 $24
	ld   b, a                                        ; $64ad: $47
	sbc  h                                           ; $64ae: $9c
	xor  $ff                                         ; $64af: $ee $ff
	rst  $38                                         ; $64b1: $ff
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	rst  $38                                         ; $64b4: $ff
	rst  $38                                         ; $64b5: $ff
	rst  $38                                         ; $64b6: $ff
	rst  $38                                         ; $64b7: $ff
	db   $ed                                         ; $64b8: $ed
	res  3, b                                        ; $64b9: $cb $98
	ld   [hl], l                                     ; $64bb: $75
	ld   b, e                                        ; $64bc: $43
	ld   hl, $1111                                   ; $64bd: $21 $11 $11
	ld   de, $1111                                   ; $64c0: $11 $11 $11
	ld   de, $1111                                   ; $64c3: $11 $11 $11
	inc  h                                           ; $64c6: $24
	ld   l, b                                        ; $64c7: $68
	xor  e                                           ; $64c8: $ab
	rst  $38                                         ; $64c9: $ff
	rst  $38                                         ; $64ca: $ff
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	rst  $38                                         ; $64cd: $ff
	rst  $38                                         ; $64ce: $ff
	rst  $38                                         ; $64cf: $ff
	rst  $38                                         ; $64d0: $ff
	rst  $38                                         ; $64d1: $ff
	call z, $97a9                                    ; $64d2: $cc $a9 $97
	ld   d, l                                        ; $64d5: $55
	ld   [hl-], a                                    ; $64d6: $32
	ld   de, $1111                                   ; $64d7: $11 $11 $11
	ld   de, $1111                                   ; $64da: $11 $11 $11
	ld   de, $1111                                   ; $64dd: $11 $11 $11
	inc  h                                           ; $64e0: $24
	ld   l, b                                        ; $64e1: $68
	xor  h                                           ; $64e2: $ac
	rst  $38                                         ; $64e3: $ff
	rst  $38                                         ; $64e4: $ff
	rst  $38                                         ; $64e5: $ff
	rst  $38                                         ; $64e6: $ff
	rst  $38                                         ; $64e7: $ff
	rst  $38                                         ; $64e8: $ff
	rst  $38                                         ; $64e9: $ff
	rst  $38                                         ; $64ea: $ff
	cp   $dc                                         ; $64eb: $fe $dc
	xor  c                                           ; $64ed: $a9
	add  a                                           ; $64ee: $87
	ld   h, l                                        ; $64ef: $65
	ld   b, e                                        ; $64f0: $43
	ld   hl, $1111                                   ; $64f1: $21 $11 $11
	ld   de, $1111                                   ; $64f4: $11 $11 $11
	ld   de, $1111                                   ; $64f7: $11 $11 $11
	inc  h                                           ; $64fa: $24
	ld   d, a                                        ; $64fb: $57
	sbc  h                                           ; $64fc: $9c
	rst  JumpTable                                         ; $64fd: $df
	rst  $38                                         ; $64fe: $ff
	rst  $38                                         ; $64ff: $ff
	rst  $38                                         ; $6500: $ff
	rst  $38                                         ; $6501: $ff
	rst  $38                                         ; $6502: $ff
	rst  $38                                         ; $6503: $ff
	rst  $38                                         ; $6504: $ff
	cp   $dc                                         ; $6505: $fe $dc
	xor  e                                           ; $6507: $ab
	sbc  b                                           ; $6508: $98
	halt                                             ; $6509: $76
	ld   d, h                                        ; $650a: $54
	inc  sp                                          ; $650b: $33
	ld   de, $1111                                   ; $650c: $11 $11 $11
	ld   de, $1111                                   ; $650f: $11 $11 $11
	ld   de, $1211                                   ; $6512: $11 $11 $12
	ld   b, [hl]                                     ; $6515: $46
	ld   a, c                                        ; $6516: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6517: $cf
	rst  $38                                         ; $6518: $ff
	rst  $38                                         ; $6519: $ff
	rst  $38                                         ; $651a: $ff
	rst  $38                                         ; $651b: $ff
	rst  $38                                         ; $651c: $ff
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	db   $ec                                         ; $6520: $ec
	cp   e                                           ; $6521: $bb
	xor  c                                           ; $6522: $a9
	add  a                                           ; $6523: $87
	ld   h, l                                        ; $6524: $65
	ld   b, e                                        ; $6525: $43
	ld   hl, $1111                                   ; $6526: $21 $11 $11
	ld   de, $1111                                   ; $6529: $11 $11 $11
	ld   de, $1111                                   ; $652c: $11 $11 $11
	inc  [hl]                                        ; $652f: $34
	ld   l, b                                        ; $6530: $68
	xor  h                                           ; $6531: $ac
	rst  $28                                         ; $6532: $ef
	rst  $38                                         ; $6533: $ff
	rst  $38                                         ; $6534: $ff
	rst  $38                                         ; $6535: $ff
	rst  $38                                         ; $6536: $ff
	rst  $38                                         ; $6537: $ff
	rst  $38                                         ; $6538: $ff
	rst  $38                                         ; $6539: $ff
	xor  $cc                                         ; $653a: $ee $cc
	cp   c                                           ; $653c: $b9
	sbc  b                                           ; $653d: $98
	halt                                             ; $653e: $76
	ld   d, h                                        ; $653f: $54
	ld   [hl-], a                                    ; $6540: $32
	ld   de, $1111                                   ; $6541: $11 $11 $11
	ld   de, $1111                                   ; $6544: $11 $11 $11
	ld   de, $2311                                   ; $6547: $11 $11 $23
	ld   b, a                                        ; $654a: $47
	adc  d                                           ; $654b: $8a
	sbc  $ff                                         ; $654c: $de $ff
	rst  $38                                         ; $654e: $ff
	rst  $38                                         ; $654f: $ff
	rst  $38                                         ; $6550: $ff
	rst  $38                                         ; $6551: $ff
	rst  $38                                         ; $6552: $ff
	rst  $38                                         ; $6553: $ff
	rst  $38                                         ; $6554: $ff
	call z, $b9cb                                    ; $6555: $cc $cb $b9
	sub  [hl]                                        ; $6558: $96
	ld   d, l                                        ; $6559: $55
	inc  hl                                          ; $655a: $23
	ld   de, $1111                                   ; $655b: $11 $11 $11
	ld   de, $1111                                   ; $655e: $11 $11 $11
	ld   de, $1311                                   ; $6561: $11 $11 $13
	ld   d, [hl]                                     ; $6564: $56
	sbc  h                                           ; $6565: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6566: $cf
	rst  $38                                         ; $6567: $ff
	rst  $38                                         ; $6568: $ff
	rst  $38                                         ; $6569: $ff

Call_0c8_656a:
	rst  $38                                         ; $656a: $ff
	rst  $38                                         ; $656b: $ff
	rst  $38                                         ; $656c: $ff
	rst  $38                                         ; $656d: $ff
	cp   $de                                         ; $656e: $fe $de
	xor  e                                           ; $6570: $ab
	jp   z, $87a9                                    ; $6571: $ca $a9 $87

	ld   d, h                                        ; $6574: $54
	inc  hl                                          ; $6575: $23
	ld   de, $1111                                   ; $6576: $11 $11 $11
	ld   de, $1111                                   ; $6579: $11 $11 $11
	ld   de, $4613                                   ; $657c: $11 $13 $46
	adc  d                                           ; $657f: $8a
	rst  JumpTable                                         ; $6580: $df
	rst  $38                                         ; $6581: $ff
	rst  $38                                         ; $6582: $ff
	rst  $38                                         ; $6583: $ff
	rst  $38                                         ; $6584: $ff
	rst  $38                                         ; $6585: $ff
	rst  $38                                         ; $6586: $ff
	rst  $38                                         ; $6587: $ff
	rst  $28                                         ; $6588: $ef
	db   $eb                                         ; $6589: $eb
	set  1, c                                        ; $658a: $cb $c9
	sbc  d                                           ; $658c: $9a
	ld   h, [hl]                                     ; $658d: $66
	ld   d, e                                        ; $658e: $53
	ld   [hl+], a                                    ; $658f: $22
	ld   hl, $1111                                   ; $6590: $21 $11 $11
	ld   de, $1111                                   ; $6593: $11 $11 $11
	ld   de, $4611                                   ; $6596: $11 $11 $46
	ld   a, h                                        ; $6599: $7c
	call z, $ffff                                    ; $659a: $cc $ff $ff
	rst  $38                                         ; $659d: $ff
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	rst  $38                                         ; $65a0: $ff
	rst  $38                                         ; $65a1: $ff
	cp   $ce                                         ; $65a2: $fe $ce
	xor  d                                           ; $65a4: $aa
	cp   d                                           ; $65a5: $ba
	sbc  c                                           ; $65a6: $99
	add  l                                           ; $65a7: $85
	ld   d, l                                        ; $65a8: $55
	ld   hl, $1111                                   ; $65a9: $21 $11 $11
	ld   de, $1111                                   ; $65ac: $11 $11 $11
	ld   de, $1211                                   ; $65af: $11 $11 $12
	ld   [hl], $9a                                   ; $65b2: $36 $9a
	xor  a                                           ; $65b4: $af
	rst  $38                                         ; $65b5: $ff
	rst  $38                                         ; $65b6: $ff
	rst  $38                                         ; $65b7: $ff
	rst  $38                                         ; $65b8: $ff
	rst  $38                                         ; $65b9: $ff
	rst  $38                                         ; $65ba: $ff
	rst  $38                                         ; $65bb: $ff
	cp   $ed                                         ; $65bc: $fe $ed
	xor  e                                           ; $65be: $ab
	cp   e                                           ; $65bf: $bb
	adc  b                                           ; $65c0: $88
	add  [hl]                                        ; $65c1: $86
	ld   d, h                                        ; $65c2: $54
	ld   hl, $1111                                   ; $65c3: $21 $11 $11
	ld   de, $1111                                   ; $65c6: $11 $11 $11
	ld   de, $1211                                   ; $65c9: $11 $11 $12
	scf                                              ; $65cc: $37
	sbc  e                                           ; $65cd: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65ce: $cf
	rst  $38                                         ; $65cf: $ff
	rst  $38                                         ; $65d0: $ff
	rst  $38                                         ; $65d1: $ff
	rst  $38                                         ; $65d2: $ff
	rst  $38                                         ; $65d3: $ff
	rst  $38                                         ; $65d4: $ff
	rst  $38                                         ; $65d5: $ff
	rst  $38                                         ; $65d6: $ff
	call z, $8bdb                                    ; $65d7: $cc $db $8b
	or   [hl]                                        ; $65da: $b6
	halt                                             ; $65db: $76
	ld   b, d                                        ; $65dc: $42
	ld   hl, $1111                                   ; $65dd: $21 $11 $11
	ld   de, $1111                                   ; $65e0: $11 $11 $11
	ld   de, $1311                                   ; $65e3: $11 $11 $13
	ld   c, c                                        ; $65e6: $49
	cp   e                                           ; $65e7: $bb
	rst  JumpTable                                         ; $65e8: $df
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	rst  $38                                         ; $65eb: $ff
	rst  $38                                         ; $65ec: $ff
	rst  $38                                         ; $65ed: $ff
	rst  $38                                         ; $65ee: $ff
	rst  $38                                         ; $65ef: $ff
	rst  $38                                         ; $65f0: $ff
	ld   [$b9cb], a                                  ; $65f1: $ea $cb $b9
	adc  b                                           ; $65f4: $88
	ld   h, [hl]                                     ; $65f5: $66
	ld   [hl-], a                                    ; $65f6: $32
	ld   hl, $1111                                   ; $65f7: $21 $11 $11
	ld   de, $1111                                   ; $65fa: $11 $11 $11
	ld   de, $1411                                   ; $65fd: $11 $11 $14
	ld   e, d                                        ; $6600: $5a
	xor  l                                           ; $6601: $ad
	rst  $38                                         ; $6602: $ff
	rst  $38                                         ; $6603: $ff
	rst  $38                                         ; $6604: $ff
	rst  $38                                         ; $6605: $ff
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	cp   $bc                                         ; $660a: $fe $bc
	ret                                              ; $660c: $c9


	xor  d                                           ; $660d: $aa
	add  [hl]                                        ; $660e: $86
	halt                                             ; $660f: $76
	ld   b, d                                        ; $6610: $42
	ld   hl, $1111                                   ; $6611: $21 $11 $11
	ld   de, $1111                                   ; $6614: $11 $11 $11
	ld   de, $1211                                   ; $6617: $11 $11 $12
	ld   l, d                                        ; $661a: $6a
	cp   e                                           ; $661b: $bb
	rst  $38                                         ; $661c: $ff
	rst  $38                                         ; $661d: $ff
	rst  $38                                         ; $661e: $ff
	rst  $38                                         ; $661f: $ff
	rst  $38                                         ; $6620: $ff
	rst  $38                                         ; $6621: $ff
	rst  $38                                         ; $6622: $ff
	rst  $38                                         ; $6623: $ff
	rst  $38                                         ; $6624: $ff
	db   $db                                         ; $6625: $db
	ret                                              ; $6626: $c9


	xor  d                                           ; $6627: $aa
	add  a                                           ; $6628: $87
	ld   [hl], a                                     ; $6629: $77
	inc  sp                                          ; $662a: $33
	ld   hl, $1111                                   ; $662b: $21 $11 $11
	ld   de, $1111                                   ; $662e: $11 $11 $11
	ld   de, $1211                                   ; $6631: $11 $11 $12
	ld   l, b                                        ; $6634: $68
	xor  h                                           ; $6635: $ac
	rst  $38                                         ; $6636: $ff
	rst  $38                                         ; $6637: $ff
	rst  $38                                         ; $6638: $ff
	rst  $38                                         ; $6639: $ff
	rst  $38                                         ; $663a: $ff
	rst  $38                                         ; $663b: $ff
	rst  $38                                         ; $663c: $ff
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	db   $db                                         ; $663f: $db
	jp   z, $a89b                                    ; $6640: $ca $9b $a8

	ld   h, a                                        ; $6643: $67
	ld   d, d                                        ; $6644: $52
	ld   hl, $1111                                   ; $6645: $21 $11 $11
	ld   de, $1111                                   ; $6648: $11 $11 $11
	ld   de, $1111                                   ; $664b: $11 $11 $11
	ld   [hl], $aa                                   ; $664e: $36 $aa
	cp   a                                           ; $6650: $bf
	rst  $38                                         ; $6651: $ff
	rst  $38                                         ; $6652: $ff
	rst  $38                                         ; $6653: $ff
	rst  $38                                         ; $6654: $ff
	rst  $38                                         ; $6655: $ff
	rst  $38                                         ; $6656: $ff
	rst  $38                                         ; $6657: $ff
	rst  $28                                         ; $6658: $ef
	db   $fd                                         ; $6659: $fd

Call_0c8_665a:
	cp   d                                           ; $665a: $ba
	cp   c                                           ; $665b: $b9
	sbc  d                                           ; $665c: $9a
	ld   [hl], a                                     ; $665d: $77
	ld   h, l                                        ; $665e: $65
	ld   b, d                                        ; $665f: $42
	ld   de, $1111                                   ; $6660: $11 $11 $11
	ld   de, $1111                                   ; $6663: $11 $11 $11
	ld   de, $1511                                   ; $6666: $11 $11 $15
	sub  a                                           ; $6669: $97
	cp   a                                           ; $666a: $bf
	rst  $28                                         ; $666b: $ef
	rst  $38                                         ; $666c: $ff
	rst  $38                                         ; $666d: $ff
	rst  $38                                         ; $666e: $ff
	rst  $38                                         ; $666f: $ff
	rst  $38                                         ; $6670: $ff
	rst  $38                                         ; $6671: $ff
	rst  $38                                         ; $6672: $ff
	cp   $bd                                         ; $6673: $fe $bd
	xor  e                                           ; $6675: $ab
	cp   c                                           ; $6676: $b9
	xor  b                                           ; $6677: $a8
	add  [hl]                                        ; $6678: $86
	ld   h, h                                        ; $6679: $64
	ld   [hl+], a                                    ; $667a: $22
	ld   de, $1111                                   ; $667b: $11 $11 $11
	ld   de, $1111                                   ; $667e: $11 $11 $11
	ld   de, $4b01                                   ; $6681: $11 $01 $4b
	sbc  b                                           ; $6684: $98
	rst  $38                                         ; $6685: $ff
	rst  $38                                         ; $6686: $ff
	rst  $38                                         ; $6687: $ff
	rst  $38                                         ; $6688: $ff
	rst  $38                                         ; $6689: $ff
	rst  $38                                         ; $668a: $ff
	rst  $38                                         ; $668b: $ff
	rst  $38                                         ; $668c: $ff
	rst  $38                                         ; $668d: $ff
	db   $eb                                         ; $668e: $eb
	cp   h                                           ; $668f: $bc
	cp   c                                           ; $6690: $b9
	xor  d                                           ; $6691: $aa
	add  a                                           ; $6692: $87
	ld   [hl], a                                     ; $6693: $77
	ld   b, d                                        ; $6694: $42
	ld   hl, $1111                                   ; $6695: $21 $11 $11
	ld   de, $1111                                   ; $6698: $11 $11 $11
	ld   de, $1411                                   ; $669b: $11 $11 $14
	ld   l, b                                        ; $669e: $68
	cp   e                                           ; $669f: $bb
	rst  $28                                         ; $66a0: $ef
	rst  $38                                         ; $66a1: $ff
	rst  $38                                         ; $66a2: $ff
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	rst  $38                                         ; $66a6: $ff
	rst  $38                                         ; $66a7: $ff
	cp   $db                                         ; $66a8: $fe $db
	res  5, d                                        ; $66aa: $cb $aa
	xor  c                                           ; $66ac: $a9
	add  a                                           ; $66ad: $87
	ld   h, l                                        ; $66ae: $65
	ld   b, d                                        ; $66af: $42
	ld   de, $1111                                   ; $66b0: $11 $11 $11
	ld   de, $1111                                   ; $66b3: $11 $11 $11
	ld   de, $1311                                   ; $66b6: $11 $11 $13
	ld   a, d                                        ; $66b9: $7a
	xor  e                                           ; $66ba: $ab
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	rst  $38                                         ; $66be: $ff
	rst  $38                                         ; $66bf: $ff
	rst  $38                                         ; $66c0: $ff
	rst  $38                                         ; $66c1: $ff
	rst  $38                                         ; $66c2: $ff
	rst  $38                                         ; $66c3: $ff
	db   $db                                         ; $66c4: $db
	res  5, e                                        ; $66c5: $cb $ab
	sbc  c                                           ; $66c7: $99
	add  a                                           ; $66c8: $87
	ld   h, l                                        ; $66c9: $65
	ld   b, d                                        ; $66ca: $42
	ld   de, $1111                                   ; $66cb: $11 $11 $11
	ld   de, $1111                                   ; $66ce: $11 $11 $11
	ld   de, $1411                                   ; $66d1: $11 $11 $14
	ld   b, a                                        ; $66d4: $47
	ret                                              ; $66d5: $c9


	rst  JumpTable                                         ; $66d6: $df
	rst  $38                                         ; $66d7: $ff
	rst  $38                                         ; $66d8: $ff
	rst  $38                                         ; $66d9: $ff
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	db   $ed                                         ; $66de: $ed
	db   $eb                                         ; $66df: $eb
	cp   e                                           ; $66e0: $bb
	sbc  e                                           ; $66e1: $9b
	cp   b                                           ; $66e2: $b8
	sbc  b                                           ; $66e3: $98
	ld   [hl], l                                     ; $66e4: $75
	ld   d, e                                        ; $66e5: $53
	ld   de, $1111                                   ; $66e6: $11 $11 $11
	ld   de, $1111                                   ; $66e9: $11 $11 $11
	ld   de, $1111                                   ; $66ec: $11 $11 $11
	ld   e, d                                        ; $66ef: $5a
	ld   h, a                                        ; $66f0: $67
	rst  $38                                         ; $66f1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66f2: $cf
	rst  $38                                         ; $66f3: $ff
	rst  $38                                         ; $66f4: $ff
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	db   $fd                                         ; $66f8: $fd
	rst  $38                                         ; $66f9: $ff
	db   $db                                         ; $66fa: $db
	adc  $99                                         ; $66fb: $ce $99
	jp   z, $9689                                    ; $66fd: $ca $89 $96

	ld   d, l                                        ; $6700: $55
	ld   sp, $1111                                   ; $6701: $31 $11 $11
	ld   de, $1111                                   ; $6704: $11 $11 $11
	ld   de, $2111                                   ; $6707: $11 $11 $21
	ld   h, $77                                      ; $670a: $26 $77
	cp   l                                           ; $670c: $bd
	rst  JumpTable                                         ; $670d: $df
	rst  $38                                         ; $670e: $ff
	rst  $38                                         ; $670f: $ff
	rst  $38                                         ; $6710: $ff
	rst  $38                                         ; $6711: $ff
	rst  $38                                         ; $6712: $ff
	rst  $38                                         ; $6713: $ff
	rst  $38                                         ; $6714: $ff
	db   $fd                                         ; $6715: $fd
	call $abaa                                       ; $6716: $cd $aa $ab
	sbc  b                                           ; $6719: $98
	sbc  b                                           ; $671a: $98
	halt                                             ; $671b: $76
	ld   d, h                                        ; $671c: $54
	ld   sp, $1111                                   ; $671d: $31 $11 $11
	ld   de, $1111                                   ; $6720: $11 $11 $11
	ld   de, $2111                                   ; $6723: $11 $11 $21
	ld   c, b                                        ; $6726: $48
	add  a                                           ; $6727: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6728: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6729: $cf
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	rst  $38                                         ; $672c: $ff
	rst  $38                                         ; $672d: $ff
	rst  $38                                         ; $672e: $ff
	rst  $38                                         ; $672f: $ff
	rst  $28                                         ; $6730: $ef
	db   $ec                                         ; $6731: $ec
	cp   h                                           ; $6732: $bc
	cp   d                                           ; $6733: $ba
	xor  d                                           ; $6734: $aa
	xor  c                                           ; $6735: $a9
	add  a                                           ; $6736: $87
	ld   [hl], l                                     ; $6737: $75
	ld   b, h                                        ; $6738: $44
	ld   sp, $1112                                   ; $6739: $31 $12 $11
	ld   de, $1111                                   ; $673c: $11 $11 $11
	ld   de, $3411                                   ; $673f: $11 $11 $34
	ld   b, l                                        ; $6742: $45
	sbc  e                                           ; $6743: $9b
	xor  d                                           ; $6744: $aa
	rst  $38                                         ; $6745: $ff
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	rst  $38                                         ; $6748: $ff
	rst  $38                                         ; $6749: $ff
	cp   $ef                                         ; $674a: $fe $ef
	db   $ec                                         ; $674c: $ec
	db   $ed                                         ; $674d: $ed
	jp   z, $98bc                                    ; $674e: $ca $bc $98

	cp   c                                           ; $6751: $b9
	ld   [hl], a                                     ; $6752: $77
	ld   [hl], l                                     ; $6753: $75
	ld   d, h                                        ; $6754: $54
	inc  sp                                          ; $6755: $33
	ld   hl, $1111                                   ; $6756: $21 $11 $11
	ld   de, $1111                                   ; $6759: $11 $11 $11
	ld   de, $5523                                   ; $675c: $11 $23 $55
	ld   l, d                                        ; $675f: $6a
	sbc  d                                           ; $6760: $9a
	db   $ed                                         ; $6761: $ed
	rst  $28                                         ; $6762: $ef
	rst  $38                                         ; $6763: $ff
	rst  $38                                         ; $6764: $ff
	rst  $38                                         ; $6765: $ff
	cp   $de                                         ; $6766: $fe $de
	db   $fd                                         ; $6768: $fd
	call $cbbb                                       ; $6769: $cd $bb $cb
	xor  c                                           ; $676c: $a9
	xor  b                                           ; $676d: $a8
	ld   a, b                                        ; $676e: $78
	add  [hl]                                        ; $676f: $86
	ld   d, l                                        ; $6770: $55
	ld   b, e                                        ; $6771: $43
	ld   [hl+], a                                    ; $6772: $22
	ld   [hl+], a                                    ; $6773: $22
	ld   de, $1111                                   ; $6774: $11 $11 $11
	ld   de, $2112                                   ; $6777: $11 $12 $21
	ld   d, a                                        ; $677a: $57
	scf                                              ; $677b: $37
	sbc  b                                           ; $677c: $98
	xor  h                                           ; $677d: $ac
	db   $dd                                         ; $677e: $dd
	rst  $28                                         ; $677f: $ef
	rst  JumpTable                                         ; $6780: $df
	rst  $38                                         ; $6781: $ff
	rst  $28                                         ; $6782: $ef
	db   $fc                                         ; $6783: $fc
	rst  JumpTable                                         ; $6784: $df
	call c, $abdd                                    ; $6785: $dc $dd $ab
	cp   c                                           ; $6788: $b9
	xor  d                                           ; $6789: $aa
	sub  a                                           ; $678a: $97
	adc  b                                           ; $678b: $88
	ld   d, l                                        ; $678c: $55
	ld   h, h                                        ; $678d: $64
	inc  h                                           ; $678e: $24
	ld   b, c                                        ; $678f: $41
	inc  h                                           ; $6790: $24
	ld   hl, $1222                                   ; $6791: $21 $22 $12
	ld   [de], a                                     ; $6794: $12
	ld   hl, $4653                                   ; $6795: $21 $53 $46
	ld   h, [hl]                                     ; $6798: $66
	sbc  d                                           ; $6799: $9a
	adc  l                                           ; $679a: $8d
	db   $eb                                         ; $679b: $eb
	rst  $28                                         ; $679c: $ef
	cp   $ef                                         ; $679d: $fe $ef
	xor  $fe                                         ; $679f: $ee $fe
	call z, $bbeb                                    ; $67a1: $cc $eb $bb
	cp   e                                           ; $67a4: $bb
	xor  c                                           ; $67a5: $a9
	sbc  b                                           ; $67a6: $98
	sbc  b                                           ; $67a7: $98
	halt                                             ; $67a8: $76
	ld   [hl], l                                     ; $67a9: $75
	ld   d, [hl]                                     ; $67aa: $56
	ld   d, l                                        ; $67ab: $55
	inc  [hl]                                        ; $67ac: $34
	ld   b, e                                        ; $67ad: $43
	inc  sp                                          ; $67ae: $33
	ld   [hl+], a                                    ; $67af: $22
	inc  hl                                          ; $67b0: $23
	inc  sp                                          ; $67b1: $33
	ld   [hl+], a                                    ; $67b2: $22
	ld   b, l                                        ; $67b3: $45
	inc  [hl]                                        ; $67b4: $34
	add  [hl]                                        ; $67b5: $86
	ld   a, b                                        ; $67b6: $78
	xor  e                                           ; $67b7: $ab
	sbc  l                                           ; $67b8: $9d
	call c, $effd                                    ; $67b9: $dc $fd $ef
	db   $ed                                         ; $67bc: $ed
	sbc  $dc                                         ; $67bd: $de $dc
	cp   l                                           ; $67bf: $bd
	xor  e                                           ; $67c0: $ab
	cp   d                                           ; $67c1: $ba
	sbc  d                                           ; $67c2: $9a
	sbc  c                                           ; $67c3: $99
	sbc  b                                           ; $67c4: $98
	ld   [hl], a                                     ; $67c5: $77
	halt                                             ; $67c6: $76
	ld   h, [hl]                                     ; $67c7: $66
	ld   d, l                                        ; $67c8: $55
	ld   d, l                                        ; $67c9: $55
	ld   b, h                                        ; $67ca: $44
	ld   d, h                                        ; $67cb: $54
	ld   b, h                                        ; $67cc: $44
	inc  sp                                          ; $67cd: $33
	ld   d, h                                        ; $67ce: $54
	dec  h                                           ; $67cf: $25
	ld   d, e                                        ; $67d0: $53
	ld   d, l                                        ; $67d1: $55
	ld   d, [hl]                                     ; $67d2: $56
	ld   h, a                                        ; $67d3: $67
	adc  e                                           ; $67d4: $8b
	adc  c                                           ; $67d5: $89
	call z, $edbb                                    ; $67d6: $cc $bb $ed
	call $ccdd                                       ; $67d9: $cd $dd $cc
	call z, $baba                                    ; $67dc: $cc $ba $ba
	xor  d                                           ; $67df: $aa
	sbc  c                                           ; $67e0: $99
	sbc  c                                           ; $67e1: $99
	sbc  b                                           ; $67e2: $98
	ld   [hl], a                                     ; $67e3: $77
	ld   [hl], a                                     ; $67e4: $77
	ld   h, a                                        ; $67e5: $67
	ld   h, l                                        ; $67e6: $65
	ld   d, l                                        ; $67e7: $55
	ld   d, l                                        ; $67e8: $55
	ld   d, l                                        ; $67e9: $55
	ld   d, h                                        ; $67ea: $54
	ld   b, l                                        ; $67eb: $45
	ld   h, l                                        ; $67ec: $65
	ld   b, l                                        ; $67ed: $45
	ld   h, h                                        ; $67ee: $64
	ld   d, [hl]                                     ; $67ef: $56
	ld   [hl], l                                     ; $67f0: $75
	ld   e, b                                        ; $67f1: $58
	adc  b                                           ; $67f2: $88
	ld   a, c                                        ; $67f3: $79
	xor  c                                           ; $67f4: $a9
	res  7, h                                        ; $67f5: $cb $bc
	cp   h                                           ; $67f7: $bc
	cp   h                                           ; $67f8: $bc
	cp   e                                           ; $67f9: $bb
	cp   d                                           ; $67fa: $ba
	xor  d                                           ; $67fb: $aa
	cp   e                                           ; $67fc: $bb
	sbc  c                                           ; $67fd: $99
	sbc  c                                           ; $67fe: $99
	adc  c                                           ; $67ff: $89
	adc  b                                           ; $6800: $88
	sbc  b                                           ; $6801: $98
	add  a                                           ; $6802: $87
	ld   [hl], a                                     ; $6803: $77
	ld   h, [hl]                                     ; $6804: $66
	halt                                             ; $6805: $76
	ld   h, [hl]                                     ; $6806: $66
	ld   [hl], l                                     ; $6807: $75
	ld   d, [hl]                                     ; $6808: $56
	ld   h, [hl]                                     ; $6809: $66
	ld   d, [hl]                                     ; $680a: $56
	ld   h, [hl]                                     ; $680b: $66
	ld   h, [hl]                                     ; $680c: $66
	ld   d, [hl]                                     ; $680d: $56
	ld   h, [hl]                                     ; $680e: $66
	ld   d, [hl]                                     ; $680f: $56
	ld   a, b                                        ; $6810: $78
	ld   [hl], a                                     ; $6811: $77
	sbc  b                                           ; $6812: $98
	sbc  c                                           ; $6813: $99
	xor  d                                           ; $6814: $aa
	xor  e                                           ; $6815: $ab
	cp   e                                           ; $6816: $bb
	xor  e                                           ; $6817: $ab
	xor  e                                           ; $6818: $ab
	xor  d                                           ; $6819: $aa
	cp   d                                           ; $681a: $ba
	xor  c                                           ; $681b: $a9
	sbc  e                                           ; $681c: $9b
	sbc  c                                           ; $681d: $99
	xor  b                                           ; $681e: $a8
	sbc  c                                           ; $681f: $99
	adc  b                                           ; $6820: $88
	adc  b                                           ; $6821: $88
	ld   [hl], a                                     ; $6822: $77
	ld   [hl], a                                     ; $6823: $77
	ld   h, [hl]                                     ; $6824: $66
	ld   [hl], a                                     ; $6825: $77
	ld   h, [hl]                                     ; $6826: $66
	ld   [hl], a                                     ; $6827: $77
	ld   [hl], a                                     ; $6828: $77
	ld   h, a                                        ; $6829: $67
	halt                                             ; $682a: $76
	ld   h, [hl]                                     ; $682b: $66
	halt                                             ; $682c: $76
	ld   h, a                                        ; $682d: $67
	ld   h, [hl]                                     ; $682e: $66
	ld   [hl], a                                     ; $682f: $77
	ld   [hl], a                                     ; $6830: $77
	add  a                                           ; $6831: $87
	adc  c                                           ; $6832: $89
	sbc  c                                           ; $6833: $99
	xor  d                                           ; $6834: $aa
	adc  c                                           ; $6835: $89
	sbc  c                                           ; $6836: $99
	sbc  c                                           ; $6837: $99
	sbc  d                                           ; $6838: $9a
	xor  d                                           ; $6839: $aa
	sbc  d                                           ; $683a: $9a
	sbc  d                                           ; $683b: $9a
	sbc  d                                           ; $683c: $9a
	sbc  c                                           ; $683d: $99
	sbc  c                                           ; $683e: $99
	sbc  b                                           ; $683f: $98
	adc  b                                           ; $6840: $88
	add  a                                           ; $6841: $87
	adc  b                                           ; $6842: $88
	ld   [hl], a                                     ; $6843: $77
	ld   [hl], a                                     ; $6844: $77
	ld   [hl], a                                     ; $6845: $77
	ld   [hl], a                                     ; $6846: $77
	ld   [hl], a                                     ; $6847: $77
	ld   [hl], a                                     ; $6848: $77
	ld   [hl], a                                     ; $6849: $77
	ld   [hl], a                                     ; $684a: $77
	halt                                             ; $684b: $76
	ld   [hl], a                                     ; $684c: $77
	ld   [hl], a                                     ; $684d: $77
	ld   [hl], a                                     ; $684e: $77
	halt                                             ; $684f: $76
	ld   a, b                                        ; $6850: $78
	add  a                                           ; $6851: $87
	ld   a, c                                        ; $6852: $79
	ld   [hl], a                                     ; $6853: $77
	sbc  b                                           ; $6854: $98
	ld   a, c                                        ; $6855: $79
	sbc  b                                           ; $6856: $98
	sbc  c                                           ; $6857: $99
	sbc  c                                           ; $6858: $99
	sbc  d                                           ; $6859: $9a
	adc  c                                           ; $685a: $89
	xor  b                                           ; $685b: $a8
	sbc  d                                           ; $685c: $9a
	adc  b                                           ; $685d: $88
	sbc  c                                           ; $685e: $99
	sbc  c                                           ; $685f: $99
	adc  c                                           ; $6860: $89
	adc  c                                           ; $6861: $89
	adc  b                                           ; $6862: $88
	adc  b                                           ; $6863: $88
	add  a                                           ; $6864: $87
	adc  b                                           ; $6865: $88
	ld   [hl], a                                     ; $6866: $77
	ld   a, b                                        ; $6867: $78
	ld   [hl], a                                     ; $6868: $77
	ld   [hl], a                                     ; $6869: $77
	ld   [hl], a                                     ; $686a: $77
	ld   [hl], a                                     ; $686b: $77
	ld   [hl], a                                     ; $686c: $77
	ld   [hl], a                                     ; $686d: $77
	ld   [hl], a                                     ; $686e: $77
	ld   a, b                                        ; $686f: $78
	ld   [hl], a                                     ; $6870: $77
	adc  b                                           ; $6871: $88
	ld   [hl], a                                     ; $6872: $77
	adc  b                                           ; $6873: $88
	ld   a, b                                        ; $6874: $78
	adc  b                                           ; $6875: $88
	sbc  b                                           ; $6876: $98
	adc  b                                           ; $6877: $88
	adc  b                                           ; $6878: $88
	sbc  b                                           ; $6879: $98
	adc  c                                           ; $687a: $89
	adc  c                                           ; $687b: $89
	sbc  b                                           ; $687c: $98
	sbc  b                                           ; $687d: $98
	adc  c                                           ; $687e: $89
	adc  b                                           ; $687f: $88
	adc  c                                           ; $6880: $89
	adc  b                                           ; $6881: $88
	sbc  b                                           ; $6882: $98
	adc  b                                           ; $6883: $88
	adc  b                                           ; $6884: $88
	adc  b                                           ; $6885: $88
	adc  b                                           ; $6886: $88
	adc  b                                           ; $6887: $88
	adc  b                                           ; $6888: $88
	add  a                                           ; $6889: $87
	adc  b                                           ; $688a: $88
	adc  b                                           ; $688b: $88
	adc  b                                           ; $688c: $88
	adc  b                                           ; $688d: $88
	adc  b                                           ; $688e: $88
	adc  b                                           ; $688f: $88
	adc  b                                           ; $6890: $88
	adc  b                                           ; $6891: $88
	adc  b                                           ; $6892: $88
	adc  b                                           ; $6893: $88
	adc  b                                           ; $6894: $88
	adc  b                                           ; $6895: $88
	adc  b                                           ; $6896: $88
	adc  b                                           ; $6897: $88
	adc  b                                           ; $6898: $88
	adc  b                                           ; $6899: $88
	adc  b                                           ; $689a: $88
	adc  b                                           ; $689b: $88
	adc  b                                           ; $689c: $88
	adc  b                                           ; $689d: $88
	adc  b                                           ; $689e: $88
	adc  b                                           ; $689f: $88
	adc  b                                           ; $68a0: $88
	adc  b                                           ; $68a1: $88
	adc  b                                           ; $68a2: $88
	adc  b                                           ; $68a3: $88
	adc  b                                           ; $68a4: $88
	adc  b                                           ; $68a5: $88
	adc  b                                           ; $68a6: $88
	adc  b                                           ; $68a7: $88
	adc  b                                           ; $68a8: $88

Jump_0c8_68a9:
	adc  b                                           ; $68a9: $88

Call_0c8_68aa:
	adc  b                                           ; $68aa: $88
	adc  b                                           ; $68ab: $88
	adc  b                                           ; $68ac: $88
	adc  b                                           ; $68ad: $88
	adc  b                                           ; $68ae: $88
	adc  b                                           ; $68af: $88
	adc  b                                           ; $68b0: $88
	adc  b                                           ; $68b1: $88
	adc  b                                           ; $68b2: $88
	adc  b                                           ; $68b3: $88
	adc  b                                           ; $68b4: $88
	adc  b                                           ; $68b5: $88
	adc  b                                           ; $68b6: $88
	adc  b                                           ; $68b7: $88
	adc  b                                           ; $68b8: $88
	adc  b                                           ; $68b9: $88
	adc  b                                           ; $68ba: $88
	adc  b                                           ; $68bb: $88
	adc  b                                           ; $68bc: $88
	adc  b                                           ; $68bd: $88
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
	adc  b                                           ; $68c9: $88
	adc  b                                           ; $68ca: $88
	adc  b                                           ; $68cb: $88
	adc  b                                           ; $68cc: $88
	adc  b                                           ; $68cd: $88
	adc  b                                           ; $68ce: $88
	adc  b                                           ; $68cf: $88
	adc  b                                           ; $68d0: $88
	adc  b                                           ; $68d1: $88
	adc  b                                           ; $68d2: $88
	adc  b                                           ; $68d3: $88
	adc  b                                           ; $68d4: $88
	adc  b                                           ; $68d5: $88
	adc  b                                           ; $68d6: $88
	adc  b                                           ; $68d7: $88
	adc  b                                           ; $68d8: $88
	adc  b                                           ; $68d9: $88
	adc  b                                           ; $68da: $88
	adc  b                                           ; $68db: $88
	adc  b                                           ; $68dc: $88
	adc  b                                           ; $68dd: $88
	adc  b                                           ; $68de: $88
	adc  b                                           ; $68df: $88
	adc  b                                           ; $68e0: $88
	adc  b                                           ; $68e1: $88
	adc  b                                           ; $68e2: $88
	adc  b                                           ; $68e3: $88
	adc  b                                           ; $68e4: $88
	adc  b                                           ; $68e5: $88
	adc  b                                           ; $68e6: $88
	adc  b                                           ; $68e7: $88
	adc  b                                           ; $68e8: $88
	adc  b                                           ; $68e9: $88
	adc  b                                           ; $68ea: $88
	adc  b                                           ; $68eb: $88
	adc  b                                           ; $68ec: $88
	adc  b                                           ; $68ed: $88
	adc  b                                           ; $68ee: $88
	adc  b                                           ; $68ef: $88
	adc  b                                           ; $68f0: $88
	adc  b                                           ; $68f1: $88
	adc  b                                           ; $68f2: $88
	adc  b                                           ; $68f3: $88
	adc  b                                           ; $68f4: $88
	adc  b                                           ; $68f5: $88
	adc  b                                           ; $68f6: $88
	adc  b                                           ; $68f7: $88
	adc  b                                           ; $68f8: $88
	adc  b                                           ; $68f9: $88
	adc  b                                           ; $68fa: $88
	adc  b                                           ; $68fb: $88
	adc  b                                           ; $68fc: $88
	adc  b                                           ; $68fd: $88
	adc  b                                           ; $68fe: $88
	adc  b                                           ; $68ff: $88
	adc  b                                           ; $6900: $88
	adc  b                                           ; $6901: $88
	adc  b                                           ; $6902: $88
	adc  b                                           ; $6903: $88
	adc  b                                           ; $6904: $88
	adc  b                                           ; $6905: $88
	adc  b                                           ; $6906: $88
	adc  b                                           ; $6907: $88
	adc  b                                           ; $6908: $88
	adc  b                                           ; $6909: $88
	adc  b                                           ; $690a: $88
	adc  b                                           ; $690b: $88
	adc  b                                           ; $690c: $88
	adc  b                                           ; $690d: $88
	adc  b                                           ; $690e: $88
	adc  b                                           ; $690f: $88
	adc  b                                           ; $6910: $88
	adc  b                                           ; $6911: $88
	adc  b                                           ; $6912: $88
	adc  b                                           ; $6913: $88
	adc  b                                           ; $6914: $88
	adc  b                                           ; $6915: $88
	adc  b                                           ; $6916: $88
	adc  b                                           ; $6917: $88
	adc  b                                           ; $6918: $88
	adc  b                                           ; $6919: $88
	adc  b                                           ; $691a: $88
	adc  b                                           ; $691b: $88
	adc  b                                           ; $691c: $88
	adc  b                                           ; $691d: $88
	adc  b                                           ; $691e: $88
	adc  b                                           ; $691f: $88
	adc  b                                           ; $6920: $88
	adc  b                                           ; $6921: $88
	adc  b                                           ; $6922: $88
	adc  b                                           ; $6923: $88
	adc  b                                           ; $6924: $88
	adc  b                                           ; $6925: $88
	adc  b                                           ; $6926: $88
	adc  b                                           ; $6927: $88
	adc  b                                           ; $6928: $88
	adc  b                                           ; $6929: $88
	adc  b                                           ; $692a: $88
	adc  b                                           ; $692b: $88
	adc  b                                           ; $692c: $88
	adc  b                                           ; $692d: $88
	adc  b                                           ; $692e: $88
	adc  b                                           ; $692f: $88
	adc  b                                           ; $6930: $88
	adc  b                                           ; $6931: $88
	adc  b                                           ; $6932: $88
	adc  b                                           ; $6933: $88
	adc  b                                           ; $6934: $88
	adc  b                                           ; $6935: $88
	adc  b                                           ; $6936: $88
	adc  b                                           ; $6937: $88
	adc  b                                           ; $6938: $88
	adc  b                                           ; $6939: $88
	adc  b                                           ; $693a: $88
	adc  b                                           ; $693b: $88
	adc  b                                           ; $693c: $88
	adc  b                                           ; $693d: $88
	adc  b                                           ; $693e: $88
	adc  b                                           ; $693f: $88
	adc  b                                           ; $6940: $88
	adc  b                                           ; $6941: $88
	adc  b                                           ; $6942: $88
	adc  b                                           ; $6943: $88
	adc  b                                           ; $6944: $88
	adc  b                                           ; $6945: $88
	adc  b                                           ; $6946: $88
	adc  b                                           ; $6947: $88
	adc  b                                           ; $6948: $88
	adc  b                                           ; $6949: $88
	adc  b                                           ; $694a: $88
	adc  b                                           ; $694b: $88
	adc  b                                           ; $694c: $88
	adc  b                                           ; $694d: $88
	adc  b                                           ; $694e: $88
	adc  b                                           ; $694f: $88
	adc  b                                           ; $6950: $88
	adc  b                                           ; $6951: $88
	adc  b                                           ; $6952: $88
	adc  b                                           ; $6953: $88
	adc  b                                           ; $6954: $88
	adc  b                                           ; $6955: $88
	adc  b                                           ; $6956: $88
	adc  b                                           ; $6957: $88
	adc  b                                           ; $6958: $88
	adc  b                                           ; $6959: $88
	adc  b                                           ; $695a: $88
	adc  b                                           ; $695b: $88
	adc  b                                           ; $695c: $88
	adc  b                                           ; $695d: $88
	adc  b                                           ; $695e: $88
	adc  b                                           ; $695f: $88
	adc  b                                           ; $6960: $88
	adc  b                                           ; $6961: $88
	adc  b                                           ; $6962: $88
	adc  b                                           ; $6963: $88
	adc  b                                           ; $6964: $88
	adc  b                                           ; $6965: $88
	adc  b                                           ; $6966: $88
	adc  b                                           ; $6967: $88
	adc  b                                           ; $6968: $88
	adc  b                                           ; $6969: $88
	adc  b                                           ; $696a: $88
	adc  b                                           ; $696b: $88
	adc  b                                           ; $696c: $88
	adc  b                                           ; $696d: $88
	adc  b                                           ; $696e: $88
	adc  b                                           ; $696f: $88
	adc  b                                           ; $6970: $88
	adc  b                                           ; $6971: $88
	adc  b                                           ; $6972: $88
	adc  b                                           ; $6973: $88
	adc  b                                           ; $6974: $88
	adc  b                                           ; $6975: $88
	adc  b                                           ; $6976: $88
	adc  b                                           ; $6977: $88
	adc  b                                           ; $6978: $88
	adc  b                                           ; $6979: $88
	adc  b                                           ; $697a: $88
	adc  b                                           ; $697b: $88
	adc  b                                           ; $697c: $88
	adc  b                                           ; $697d: $88
	adc  b                                           ; $697e: $88
	adc  b                                           ; $697f: $88
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
	adc  b                                           ; $698a: $88
	adc  b                                           ; $698b: $88
	adc  b                                           ; $698c: $88
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

Jump_0c8_7597:
	adc  b                                           ; $7597: $88
	adc  b                                           ; $7598: $88
	adc  b                                           ; $7599: $88
	adc  b                                           ; $759a: $88

Call_0c8_759b:
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
	add  a                                           ; $7848: $87
	ld   [hl], a                                     ; $7849: $77
	ld   [hl], a                                     ; $784a: $77
	ld   [hl], a                                     ; $784b: $77
	ld   a, b                                        ; $784c: $78
	adc  b                                           ; $784d: $88
	adc  b                                           ; $784e: $88
	adc  b                                           ; $784f: $88
	adc  b                                           ; $7850: $88
	adc  b                                           ; $7851: $88
	adc  b                                           ; $7852: $88
	adc  b                                           ; $7853: $88
	sbc  c                                           ; $7854: $99
	sbc  c                                           ; $7855: $99
	sbc  c                                           ; $7856: $99
	sbc  c                                           ; $7857: $99
	sbc  c                                           ; $7858: $99
	sbc  c                                           ; $7859: $99
	sbc  c                                           ; $785a: $99
	sbc  c                                           ; $785b: $99
	sbc  b                                           ; $785c: $98
	adc  b                                           ; $785d: $88
	adc  b                                           ; $785e: $88
	adc  b                                           ; $785f: $88
	adc  b                                           ; $7860: $88
	add  a                                           ; $7861: $87
	ld   [hl], a                                     ; $7862: $77
	ld   [hl], a                                     ; $7863: $77
	ld   [hl], a                                     ; $7864: $77
	ld   [hl], a                                     ; $7865: $77
	ld   [hl], a                                     ; $7866: $77
	ld   [hl], a                                     ; $7867: $77
	ld   [hl], a                                     ; $7868: $77
	ld   [hl], a                                     ; $7869: $77
	ld   [hl], a                                     ; $786a: $77
	ld   [hl], a                                     ; $786b: $77
	adc  b                                           ; $786c: $88
	adc  b                                           ; $786d: $88
	adc  b                                           ; $786e: $88
	sbc  c                                           ; $786f: $99
	adc  b                                           ; $7870: $88
	adc  c                                           ; $7871: $89
	sbc  c                                           ; $7872: $99
	sbc  c                                           ; $7873: $99
	sbc  c                                           ; $7874: $99
	sbc  c                                           ; $7875: $99
	sbc  c                                           ; $7876: $99
	sbc  c                                           ; $7877: $99
	sbc  c                                           ; $7878: $99
	adc  b                                           ; $7879: $88
	sbc  c                                           ; $787a: $99
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	ld   [hl], a                                     ; $787d: $77
	ld   [hl], a                                     ; $787e: $77
	ld   [hl], a                                     ; $787f: $77
	ld   [hl], a                                     ; $7880: $77
	ld   h, [hl]                                     ; $7881: $66
	ld   h, [hl]                                     ; $7882: $66
	ld   h, [hl]                                     ; $7883: $66
	ld   h, [hl]                                     ; $7884: $66
	ld   h, [hl]                                     ; $7885: $66
	ld   h, [hl]                                     ; $7886: $66
	ld   h, [hl]                                     ; $7887: $66
	ld   h, a                                        ; $7888: $67
	ld   [hl], a                                     ; $7889: $77
	ld   [hl], a                                     ; $788a: $77
	adc  b                                           ; $788b: $88
	adc  c                                           ; $788c: $89
	xor  c                                           ; $788d: $a9
	xor  e                                           ; $788e: $ab
	xor  e                                           ; $788f: $ab
	cp   e                                           ; $7890: $bb
	call z, $cbcc                                    ; $7891: $cc $cc $cb
	cp   e                                           ; $7894: $bb
	xor  e                                           ; $7895: $ab
	xor  c                                           ; $7896: $a9
	xor  c                                           ; $7897: $a9
	adc  b                                           ; $7898: $88
	add  a                                           ; $7899: $87
	halt                                             ; $789a: $76
	ld   h, [hl]                                     ; $789b: $66
	ld   d, l                                        ; $789c: $55
	ld   b, h                                        ; $789d: $44
	ld   b, e                                        ; $789e: $43
	inc  sp                                          ; $789f: $33
	ld   [hl+], a                                    ; $78a0: $22
	inc  hl                                          ; $78a1: $23
	inc  sp                                          ; $78a2: $33
	ld   b, l                                        ; $78a3: $45
	ld   d, [hl]                                     ; $78a4: $56
	ld   [hl], a                                     ; $78a5: $77
	adc  b                                           ; $78a6: $88
	sbc  c                                           ; $78a7: $99
	xor  d                                           ; $78a8: $aa
	xor  e                                           ; $78a9: $ab
	cp   e                                           ; $78aa: $bb
	call z, $cddc                                    ; $78ab: $cc $dc $cd
	db   $dd                                         ; $78ae: $dd
	xor  $ee                                         ; $78af: $ee $ee
	db   $dd                                         ; $78b1: $dd
	call z, $babb                                    ; $78b2: $cc $bb $ba
	xor  b                                           ; $78b5: $a8
	add  a                                           ; $78b6: $87
	halt                                             ; $78b7: $76
	ld   h, l                                        ; $78b8: $65
	ld   d, h                                        ; $78b9: $54
	ld   b, e                                        ; $78ba: $43
	ld   [hl-], a                                    ; $78bb: $32
	ld   hl, $1111                                   ; $78bc: $21 $11 $11
	ld   [hl+], a                                    ; $78bf: $22
	inc  sp                                          ; $78c0: $33
	ld   b, l                                        ; $78c1: $45
	ld   h, [hl]                                     ; $78c2: $66
	ld   a, b                                        ; $78c3: $78
	sbc  c                                           ; $78c4: $99
	sbc  d                                           ; $78c5: $9a
	xor  e                                           ; $78c6: $ab
	xor  e                                           ; $78c7: $ab
	cp   h                                           ; $78c8: $bc
	call z, $cdcc                                    ; $78c9: $cc $cc $cd
	db   $dd                                         ; $78cc: $dd
	call c, $cdcc                                    ; $78cd: $dc $cc $cd
	call z, $bacb                                    ; $78d0: $cc $cb $ba
	xor  c                                           ; $78d3: $a9
	sbc  b                                           ; $78d4: $98
	ld   [hl], a                                     ; $78d5: $77
	ld   h, [hl]                                     ; $78d6: $66
	ld   d, l                                        ; $78d7: $55
	ld   d, h                                        ; $78d8: $54
	ld   b, e                                        ; $78d9: $43
	ld   [hl-], a                                    ; $78da: $32
	ld   hl, $1211                                   ; $78db: $21 $11 $12
	inc  hl                                          ; $78de: $23
	ld   b, h                                        ; $78df: $44
	ld   d, [hl]                                     ; $78e0: $56
	ld   h, a                                        ; $78e1: $67
	adc  c                                           ; $78e2: $89
	sbc  c                                           ; $78e3: $99
	xor  d                                           ; $78e4: $aa
	xor  e                                           ; $78e5: $ab
	cp   e                                           ; $78e6: $bb
	set  1, h                                        ; $78e7: $cb $cc
	db   $dd                                         ; $78e9: $dd
	call $eedd                                       ; $78ea: $cd $dd $ee
	xor  $dc                                         ; $78ed: $ee $dc
	res  7, d                                        ; $78ef: $cb $ba
	xor  d                                           ; $78f1: $aa
	sbc  c                                           ; $78f2: $99
	add  a                                           ; $78f3: $87
	ld   h, [hl]                                     ; $78f4: $66
	ld   d, l                                        ; $78f5: $55
	ld   b, h                                        ; $78f6: $44
	inc  sp                                          ; $78f7: $33
	ld   [hl-], a                                    ; $78f8: $32
	ld   de, $1111                                   ; $78f9: $11 $11 $11
	ld   [de], a                                     ; $78fc: $12
	inc  sp                                          ; $78fd: $33
	ld   b, l                                        ; $78fe: $45
	ld   h, a                                        ; $78ff: $67
	ld   a, b                                        ; $7900: $78
	adc  c                                           ; $7901: $89
	xor  d                                           ; $7902: $aa
	cp   e                                           ; $7903: $bb
	cp   h                                           ; $7904: $bc
	cp   h                                           ; $7905: $bc
	call $eedd                                       ; $7906: $cd $dd $ee
	rst  $28                                         ; $7909: $ef
	rst  $38                                         ; $790a: $ff
	cp   $ee                                         ; $790b: $fe $ee
	call z, $99ca                                    ; $790d: $cc $ca $99
	adc  c                                           ; $7910: $89
	ld   [hl], a                                     ; $7911: $77
	ld   d, l                                        ; $7912: $55
	ld   d, h                                        ; $7913: $54
	ld   b, e                                        ; $7914: $43
	ld   [hl+], a                                    ; $7915: $22
	ld   hl, $1111                                   ; $7916: $21 $11 $11
	ld   de, $2301                                   ; $7919: $11 $01 $23
	ld   b, l                                        ; $791c: $45
	ld   h, a                                        ; $791d: $67
	adc  b                                           ; $791e: $88
	xor  c                                           ; $791f: $a9
	xor  e                                           ; $7920: $ab
	cp   h                                           ; $7921: $bc
	cp   h                                           ; $7922: $bc
	call c, $eede                                    ; $7923: $dc $de $ee
	rst  $38                                         ; $7926: $ff
	rst  $38                                         ; $7927: $ff
	rst  $38                                         ; $7928: $ff
	rst  $38                                         ; $7929: $ff
	db   $ed                                         ; $792a: $ed
	call c, $98bb                                    ; $792b: $dc $bb $98
	add  a                                           ; $792e: $87
	ld   h, [hl]                                     ; $792f: $66
	ld   d, h                                        ; $7930: $54
	ld   b, e                                        ; $7931: $43
	ld   [hl-], a                                    ; $7932: $32
	ld   hl, $1111                                   ; $7933: $21 $11 $11
	ld   de, $1111                                   ; $7936: $11 $11 $11
	inc  [hl]                                        ; $7939: $34
	ld   d, [hl]                                     ; $793a: $56
	ld   h, a                                        ; $793b: $67
	sbc  c                                           ; $793c: $99
	xor  d                                           ; $793d: $aa
	cp   e                                           ; $793e: $bb
	cp   h                                           ; $793f: $bc
	call z, $dede                                    ; $7940: $cc $de $de
	xor  $ff                                         ; $7943: $ee $ff
	rst  $38                                         ; $7945: $ff
	rst  $38                                         ; $7946: $ff
	rst  $28                                         ; $7947: $ef
	db   $ed                                         ; $7948: $ed
	cp   e                                           ; $7949: $bb
	cp   d                                           ; $794a: $ba
	adc  b                                           ; $794b: $88
	halt                                             ; $794c: $76
	ld   d, l                                        ; $794d: $55
	ld   b, e                                        ; $794e: $43
	inc  sp                                          ; $794f: $33
	ld   hl, $1111                                   ; $7950: $21 $11 $11
	ld   de, $1111                                   ; $7953: $11 $11 $11
	ld   [de], a                                     ; $7956: $12
	ld   b, l                                        ; $7957: $45
	ld   h, [hl]                                     ; $7958: $66
	ld   a, c                                        ; $7959: $79
	xor  d                                           ; $795a: $aa
	cp   d                                           ; $795b: $ba
	cp   h                                           ; $795c: $bc
	call c, $eedd                                    ; $795d: $dc $dd $ee
	rst  $28                                         ; $7960: $ef
	rst  $38                                         ; $7961: $ff
	rst  $38                                         ; $7962: $ff
	rst  $38                                         ; $7963: $ff
	rst  $38                                         ; $7964: $ff
	xor  $cc                                         ; $7965: $ee $cc
	cp   e                                           ; $7967: $bb
	xor  c                                           ; $7968: $a9
	add  a                                           ; $7969: $87
	ld   h, l                                        ; $796a: $65
	ld   d, h                                        ; $796b: $54
	inc  sp                                          ; $796c: $33
	ld   [hl-], a                                    ; $796d: $32
	ld   de, $1111                                   ; $796e: $11 $11 $11
	ld   de, $1111                                   ; $7971: $11 $11 $11
	inc  hl                                          ; $7974: $23
	ld   d, l                                        ; $7975: $55
	ld   h, a                                        ; $7976: $67
	adc  c                                           ; $7977: $89
	sbc  d                                           ; $7978: $9a
	xor  e                                           ; $7979: $ab
	call $dedd                                       ; $797a: $cd $dd $de
	sbc  $fe                                         ; $797d: $de $fe
	rst  $38                                         ; $797f: $ff
	rst  $38                                         ; $7980: $ff
	rst  $38                                         ; $7981: $ff
	xor  $dd                                         ; $7982: $ee $dd
	cp   l                                           ; $7984: $bd
	cp   b                                           ; $7985: $b8
	add  a                                           ; $7986: $87
	halt                                             ; $7987: $76
	ld   h, l                                        ; $7988: $65
	ld   b, h                                        ; $7989: $44
	inc  sp                                          ; $798a: $33
	ld   [hl-], a                                    ; $798b: $32
	ld   de, $1111                                   ; $798c: $11 $11 $11
	ld   de, $1211                                   ; $798f: $11 $11 $12
	inc  [hl]                                        ; $7992: $34
	ld   d, [hl]                                     ; $7993: $56
	ld   a, b                                        ; $7994: $78
	sbc  c                                           ; $7995: $99
	xor  e                                           ; $7996: $ab
	cp   e                                           ; $7997: $bb
	call z, $dedd                                    ; $7998: $cc $dd $de
	sbc  $fe                                         ; $799b: $de $fe
	rst  $38                                         ; $799d: $ff
	rst  $38                                         ; $799e: $ff
	cp   $cf                                         ; $799f: $fe $cf
	ld   a, [$b9c9]                                  ; $79a1: $fa $c9 $b9
	ld   a, b                                        ; $79a4: $78
	ld   h, [hl]                                     ; $79a5: $66
	ld   d, l                                        ; $79a6: $55
	ld   b, h                                        ; $79a7: $44
	inc  sp                                          ; $79a8: $33
	ld   [hl-], a                                    ; $79a9: $32
	ld   hl, $1121                                   ; $79aa: $21 $21 $11
	ld   de, $2311                                   ; $79ad: $11 $11 $23
	ld   b, l                                        ; $79b0: $45
	ld   h, [hl]                                     ; $79b1: $66
	ld   a, c                                        ; $79b2: $79
	sbc  c                                           ; $79b3: $99
	xor  d                                           ; $79b4: $aa
	cp   h                                           ; $79b5: $bc
	call z, $ddcc                                    ; $79b6: $cc $cc $dd
	sbc  $de                                         ; $79b9: $de $de
	rst  $38                                         ; $79bb: $ff
	rst  $38                                         ; $79bc: $ff
	xor  $dc                                         ; $79bd: $ee $dc
	call z, $98ba                                    ; $79bf: $cc $ba $98
	adc  b                                           ; $79c2: $88
	halt                                             ; $79c3: $76
	ld   h, l                                        ; $79c4: $65
	ld   b, h                                        ; $79c5: $44
	ld   b, e                                        ; $79c6: $43
	inc  sp                                          ; $79c7: $33
	ld   [hl+], a                                    ; $79c8: $22
	ld   hl, $1111                                   ; $79c9: $21 $11 $11
	ld   [de], a                                     ; $79cc: $12
	inc  hl                                          ; $79cd: $23
	ld   b, l                                        ; $79ce: $45
	ld   h, [hl]                                     ; $79cf: $66
	ld   a, b                                        ; $79d0: $78
	sbc  d                                           ; $79d1: $9a
	sbc  d                                           ; $79d2: $9a
	cp   e                                           ; $79d3: $bb
	res  7, h                                        ; $79d4: $cb $bc
	db   $dd                                         ; $79d6: $dd
	call c, $dddd                                    ; $79d7: $dc $dd $dd
	sbc  $dd                                         ; $79da: $de $dd
	db   $dd                                         ; $79dc: $dd
	call z, $a9ba                                    ; $79dd: $cc $ba $a9
	sbc  b                                           ; $79e0: $98
	add  a                                           ; $79e1: $87
	ld   h, [hl]                                     ; $79e2: $66
	ld   d, l                                        ; $79e3: $55
	ld   d, h                                        ; $79e4: $54
	ld   b, e                                        ; $79e5: $43
	inc  sp                                          ; $79e6: $33
	ld   [hl-], a                                    ; $79e7: $32
	ld   [hl+], a                                    ; $79e8: $22
	ld   [de], a                                     ; $79e9: $12
	ld   [hl+], a                                    ; $79ea: $22
	inc  hl                                          ; $79eb: $23
	ld   b, l                                        ; $79ec: $45
	ld   d, [hl]                                     ; $79ed: $56
	ld   [hl], a                                     ; $79ee: $77
	adc  b                                           ; $79ef: $88
	sbc  d                                           ; $79f0: $9a
	xor  d                                           ; $79f1: $aa
	cp   e                                           ; $79f2: $bb
	cp   h                                           ; $79f3: $bc
	cp   h                                           ; $79f4: $bc
	call z, $ddcc                                    ; $79f5: $cc $cc $dd
	db   $dd                                         ; $79f8: $dd
	db   $dd                                         ; $79f9: $dd
	db   $dd                                         ; $79fa: $dd
	call z, $aabb                                    ; $79fb: $cc $bb $aa
	sbc  c                                           ; $79fe: $99
	sbc  b                                           ; $79ff: $98
	ld   [hl], a                                     ; $7a00: $77
	ld   h, [hl]                                     ; $7a01: $66
	ld   h, l                                        ; $7a02: $65
	ld   b, h                                        ; $7a03: $44
	ld   b, h                                        ; $7a04: $44
	ld   b, e                                        ; $7a05: $43
	ld   [hl-], a                                    ; $7a06: $32
	ld   [hl-], a                                    ; $7a07: $32
	inc  hl                                          ; $7a08: $23
	inc  hl                                          ; $7a09: $23
	inc  [hl]                                        ; $7a0a: $34
	ld   b, l                                        ; $7a0b: $45
	ld   h, [hl]                                     ; $7a0c: $66
	ld   [hl], a                                     ; $7a0d: $77
	sbc  c                                           ; $7a0e: $99
	xor  c                                           ; $7a0f: $a9
	sbc  d                                           ; $7a10: $9a
	cp   d                                           ; $7a11: $ba
	cp   e                                           ; $7a12: $bb
	cp   h                                           ; $7a13: $bc
	res  7, h                                        ; $7a14: $cb $bc
	call c, $cddd                                    ; $7a16: $dc $dd $cd
	call c, $babb                                    ; $7a19: $dc $bb $ba
	xor  d                                           ; $7a1c: $aa
	sbc  b                                           ; $7a1d: $98
	add  a                                           ; $7a1e: $87
	ld   [hl], a                                     ; $7a1f: $77
	ld   h, a                                        ; $7a20: $67
	ld   h, [hl]                                     ; $7a21: $66
	ld   d, h                                        ; $7a22: $54
	ld   d, h                                        ; $7a23: $54
	inc  sp                                          ; $7a24: $33
	ld   b, e                                        ; $7a25: $43
	ld   [hl-], a                                    ; $7a26: $32
	inc  sp                                          ; $7a27: $33
	inc  sp                                          ; $7a28: $33
	inc  [hl]                                        ; $7a29: $34
	ld   d, l                                        ; $7a2a: $55
	ld   h, [hl]                                     ; $7a2b: $66
	ld   l, b                                        ; $7a2c: $68
	ld   a, c                                        ; $7a2d: $79
	sbc  c                                           ; $7a2e: $99
	sbc  d                                           ; $7a2f: $9a
	cp   d                                           ; $7a30: $ba
	cp   e                                           ; $7a31: $bb
	cp   h                                           ; $7a32: $bc
	cp   h                                           ; $7a33: $bc
	cp   e                                           ; $7a34: $bb
	call z, $ccbd                                    ; $7a35: $cc $bd $cc
	jp   c, $abbc                                    ; $7a38: $da $bc $ab

	xor  d                                           ; $7a3b: $aa
	adc  c                                           ; $7a3c: $89
	sub  a                                           ; $7a3d: $97
	add  a                                           ; $7a3e: $87
	ld   [hl], l                                     ; $7a3f: $75
	ld   [hl], l                                     ; $7a40: $75
	ld   d, l                                        ; $7a41: $55
	ld   b, h                                        ; $7a42: $44
	inc  [hl]                                        ; $7a43: $34
	inc  [hl]                                        ; $7a44: $34
	inc  sp                                          ; $7a45: $33
	inc  sp                                          ; $7a46: $33
	ld   b, e                                        ; $7a47: $43
	inc  [hl]                                        ; $7a48: $34
	ld   d, l                                        ; $7a49: $55
	halt                                             ; $7a4a: $76
	ld   [hl], a                                     ; $7a4b: $77
	sbc  d                                           ; $7a4c: $9a
	sbc  d                                           ; $7a4d: $9a
	xor  d                                           ; $7a4e: $aa
	xor  e                                           ; $7a4f: $ab
	cp   d                                           ; $7a50: $ba
	cp   d                                           ; $7a51: $ba
	cp   e                                           ; $7a52: $bb
	set  1, h                                        ; $7a53: $cb $cc
	call z, $cccb                                    ; $7a55: $cc $cb $cc
	cp   e                                           ; $7a58: $bb
	cp   d                                           ; $7a59: $ba
	xor  d                                           ; $7a5a: $aa
	sbc  b                                           ; $7a5b: $98
	sub  a                                           ; $7a5c: $97
	add  [hl]                                        ; $7a5d: $86
	ld   d, [hl]                                     ; $7a5e: $56
	ld   b, h                                        ; $7a5f: $44
	ld   b, h                                        ; $7a60: $44
	inc  sp                                          ; $7a61: $33
	inc  hl                                          ; $7a62: $23
	ld   sp, $3322                                   ; $7a63: $31 $22 $33
	inc  [hl]                                        ; $7a66: $34
	ld   b, [hl]                                     ; $7a67: $46
	ld   h, [hl]                                     ; $7a68: $66
	ld   h, [hl]                                     ; $7a69: $66
	adc  c                                           ; $7a6a: $89
	sbc  d                                           ; $7a6b: $9a
	sbc  d                                           ; $7a6c: $9a
	cp   e                                           ; $7a6d: $bb
	cp   h                                           ; $7a6e: $bc
	call z, $cddc                                    ; $7a6f: $cc $dc $cd
	db   $dd                                         ; $7a72: $dd
	call $ddcc                                       ; $7a73: $cd $cc $dd
	res  7, c                                        ; $7a76: $cb $b9
	ret  z                                           ; $7a78: $c8

	adc  c                                           ; $7a79: $89
	ld   [hl], a                                     ; $7a7a: $77
	ld   h, [hl]                                     ; $7a7b: $66
	ld   b, l                                        ; $7a7c: $45
	ld   [hl+], a                                    ; $7a7d: $22
	ld   de, $1121                                   ; $7a7e: $11 $21 $11
	ld   de, $1211                                   ; $7a81: $11 $11 $12
	dec  h                                           ; $7a84: $25
	ld   l, b                                        ; $7a85: $68
	ld   l, c                                        ; $7a86: $69
	xor  e                                           ; $7a87: $ab
	cp   d                                           ; $7a88: $ba
	set  5, l                                        ; $7a89: $cb $ed
	rst  $28                                         ; $7a8b: $ef
	rst  $38                                         ; $7a8c: $ff
	rst  $38                                         ; $7a8d: $ff
	rst  $38                                         ; $7a8e: $ff
	rst  $38                                         ; $7a8f: $ff
	sbc  $ce                                         ; $7a90: $de $ce
	call c, $abd9                                    ; $7a92: $dc $d9 $ab
	add  l                                           ; $7a95: $85
	ld   h, d                                        ; $7a96: $62
	ld   d, c                                        ; $7a97: $51
	ld   de, $1111                                   ; $7a98: $11 $11 $11
	ld   de, $1111                                   ; $7a9b: $11 $11 $11
	ld   de, $a966                                   ; $7a9e: $11 $66 $a9
	sbc  e                                           ; $7aa1: $9b
	rst  JumpTable                                         ; $7aa2: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aa3: $cf
	rst  $38                                         ; $7aa4: $ff
	rst  $38                                         ; $7aa5: $ff
	rst  $38                                         ; $7aa6: $ff
	rst  $38                                         ; $7aa7: $ff
	rst  $38                                         ; $7aa8: $ff
	rst  $38                                         ; $7aa9: $ff
	cp   $ff                                         ; $7aaa: $fe $ff
	call $97ac                                       ; $7aac: $cd $ac $97
	ld   d, e                                        ; $7aaf: $53
	ld   de, $1111                                   ; $7ab0: $11 $11 $11
	ld   de, $1111                                   ; $7ab3: $11 $11 $11
	ld   de, $2a12                                   ; $7ab6: $11 $12 $2a
	rst  JumpTable                                         ; $7ab9: $df
	adc  $ff                                         ; $7aba: $ce $ff
	rst  $38                                         ; $7abc: $ff
	rst  $38                                         ; $7abd: $ff
	rst  $38                                         ; $7abe: $ff
	rst  $38                                         ; $7abf: $ff
	rst  $38                                         ; $7ac0: $ff
	rst  $38                                         ; $7ac1: $ff
	rst  $38                                         ; $7ac2: $ff
	rst  $38                                         ; $7ac3: $ff
	db   $ec                                         ; $7ac4: $ec
	ld   a, b                                        ; $7ac5: $78
	ld   h, d                                        ; $7ac6: $62
	ld   de, $1111                                   ; $7ac7: $11 $11 $11
	ld   de, $1111                                   ; $7aca: $11 $11 $11
	ld   [de], a                                     ; $7acd: $12
	ld   de, $ff2c                                   ; $7ace: $11 $2c $ff
	rst  $38                                         ; $7ad1: $ff
	rst  $38                                         ; $7ad2: $ff
	rst  $38                                         ; $7ad3: $ff
	rst  $38                                         ; $7ad4: $ff
	rst  $38                                         ; $7ad5: $ff
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	ld   sp, hl                                      ; $7ad8: $f9
	ld   l, c                                        ; $7ad9: $69
	ei                                               ; $7ada: $fb
	ld   d, e                                        ; $7adb: $53
	ld   d, l                                        ; $7adc: $55
	ld   de, $1111                                   ; $7add: $11 $11 $11
	ld   de, $1111                                   ; $7ae0: $11 $11 $11
	ld   de, $af23                                   ; $7ae3: $11 $23 $af
	rst  $38                                         ; $7ae6: $ff
	rst  $38                                         ; $7ae7: $ff
	rst  $38                                         ; $7ae8: $ff
	rst  $38                                         ; $7ae9: $ff
	rst  $38                                         ; $7aea: $ff
	rst  $38                                         ; $7aeb: $ff
	ld   sp, hl                                      ; $7aec: $f9
	sbc  e                                           ; $7aed: $9b
	ld   d, c                                        ; $7aee: $51
	ld   [de], a                                     ; $7aef: $12
	ld   d, c                                        ; $7af0: $51
	ld   de, $1111                                   ; $7af1: $11 $11 $11
	ld   de, $1111                                   ; $7af4: $11 $11 $11
	ld   de, $5e63                                   ; $7af7: $11 $63 $5e
	rst  $38                                         ; $7afa: $ff
	rst  $38                                         ; $7afb: $ff
	rst  $38                                         ; $7afc: $ff
	rst  $38                                         ; $7afd: $ff
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	db   $fc                                         ; $7b00: $fc
	add  [hl]                                        ; $7b01: $86
	ld   h, c                                        ; $7b02: $61
	ld   de, $1121                                   ; $7b03: $11 $21 $11
	ld   de, $1111                                   ; $7b06: $11 $11 $11
	ld   de, $1111                                   ; $7b09: $11 $11 $11
	db   $db                                         ; $7b0c: $db
	cp   a                                           ; $7b0d: $bf
	rst  $38                                         ; $7b0e: $ff
	rst  $38                                         ; $7b0f: $ff
	rst  $38                                         ; $7b10: $ff
	rst  $38                                         ; $7b11: $ff
	rst  $38                                         ; $7b12: $ff
	rst  $38                                         ; $7b13: $ff
	jp   hl                                          ; $7b14: $e9


	ld   d, h                                        ; $7b15: $54
	ld   d, d                                        ; $7b16: $52
	ld   de, $1121                                   ; $7b17: $11 $21 $11
	ld   de, $1111                                   ; $7b1a: $11 $11 $11
	ld   de, $1f11                                   ; $7b1d: $11 $11 $1f
	jp   c, $ffff                                    ; $7b20: $da $ff $ff

	rst  $38                                         ; $7b23: $ff
	rst  $38                                         ; $7b24: $ff
	rst  $38                                         ; $7b25: $ff
	rst  $38                                         ; $7b26: $ff
	ld   sp, hl                                      ; $7b27: $f9
	ld   b, [hl]                                     ; $7b28: $46
	ld   h, l                                        ; $7b29: $65
	ld   de, $1135                                   ; $7b2a: $11 $35 $11
	ld   de, $1111                                   ; $7b2d: $11 $11 $11
	ld   de, $1b11                                   ; $7b30: $11 $11 $1b
	ld   sp, hl                                      ; $7b33: $f9
	rst  $38                                         ; $7b34: $ff
	rst  $38                                         ; $7b35: $ff
	rst  $38                                         ; $7b36: $ff
	rst  $38                                         ; $7b37: $ff
	rst  $38                                         ; $7b38: $ff
	rst  $38                                         ; $7b39: $ff
	rst  $30                                         ; $7b3a: $f7
	ld   d, [hl]                                     ; $7b3b: $56
	ld   h, e                                        ; $7b3c: $63
	ld   b, c                                        ; $7b3d: $41
	ld   b, a                                        ; $7b3e: $47
	ld   b, c                                        ; $7b3f: $41
	ld   de, $1111                                   ; $7b40: $11 $11 $11
	ld   de, $1111                                   ; $7b43: $11 $11 $11
	db   $fd                                         ; $7b46: $fd
	ld   a, a                                        ; $7b47: $7f
	rst  $38                                         ; $7b48: $ff
	rst  $38                                         ; $7b49: $ff
	rst  $38                                         ; $7b4a: $ff
	rst  $38                                         ; $7b4b: $ff
	rst  $38                                         ; $7b4c: $ff
	push af                                          ; $7b4d: $f5
	inc  d                                           ; $7b4e: $14
	ld   h, h                                        ; $7b4f: $64
	ld   [hl-], a                                    ; $7b50: $32
	ld   c, d                                        ; $7b51: $4a
	ld   [hl], c                                     ; $7b52: $71
	inc  de                                          ; $7b53: $13
	ld   de, $1111                                   ; $7b54: $11 $11 $11
	ld   de, $fa11                                   ; $7b57: $11 $11 $fa
	ld   l, a                                        ; $7b5a: $6f
	rst  $38                                         ; $7b5b: $ff
	rst  $38                                         ; $7b5c: $ff
	rst  $38                                         ; $7b5d: $ff
	rst  $38                                         ; $7b5e: $ff
	rst  $38                                         ; $7b5f: $ff
	pop  af                                          ; $7b60: $f1
	rla                                              ; $7b61: $17
	ld   h, c                                        ; $7b62: $61
	dec  h                                           ; $7b63: $25
	ld   a, c                                        ; $7b64: $79
	ld   [hl], d                                     ; $7b65: $72
	ld   b, l                                        ; $7b66: $45
	ld   de, $1111                                   ; $7b67: $11 $11 $11
	ld   de, $fe11                                   ; $7b6a: $11 $11 $fe
	sbc  a                                           ; $7b6d: $9f
	rst  $38                                         ; $7b6e: $ff
	rst  $38                                         ; $7b6f: $ff
	rst  $38                                         ; $7b70: $ff
	rst  $38                                         ; $7b71: $ff
	rst  $38                                         ; $7b72: $ff
	pop  bc                                          ; $7b73: $c1
	dec  d                                           ; $7b74: $15
	ld   sp, $8617                                   ; $7b75: $31 $17 $86
	ld   d, l                                        ; $7b78: $55
	ld   h, d                                        ; $7b79: $62
	ld   de, $1111                                   ; $7b7a: $11 $11 $11
	ld   de, $fc17                                   ; $7b7d: $11 $17 $fc
	rst  $38                                         ; $7b80: $ff
	rst  $38                                         ; $7b81: $ff
	rst  $38                                         ; $7b82: $ff
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	rst  $38                                         ; $7b85: $ff
	ld   sp, $1144                                   ; $7b86: $31 $44 $11
	ld   c, c                                        ; $7b89: $49
	halt                                             ; $7b8a: $76
	ld   [hl], $41                                   ; $7b8b: $36 $41
	ld   de, $1111                                   ; $7b8d: $11 $11 $11
	ld   de, $ff1d                                   ; $7b90: $11 $1d $ff
	rst  $38                                         ; $7b93: $ff
	rst  $38                                         ; $7b94: $ff
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	rst  $38                                         ; $7b97: $ff
	ld   hl, sp+$11                                  ; $7b98: $f8 $11
	ld   sp, $7913                                   ; $7b9a: $31 $13 $79
	add  h                                           ; $7b9d: $84
	ld   d, a                                        ; $7b9e: $57
	ld   sp, $1111                                   ; $7b9f: $31 $11 $11
	ld   de, $6f11                                   ; $7ba2: $11 $11 $6f
	rst  JumpTable                                         ; $7ba5: $df
	rst  $38                                         ; $7ba6: $ff
	rst  $38                                         ; $7ba7: $ff
	rst  $38                                         ; $7ba8: $ff
	rst  $38                                         ; $7ba9: $ff
	rst  $38                                         ; $7baa: $ff
	pop  hl                                          ; $7bab: $e1
	inc  d                                           ; $7bac: $14
	ld   sp, $9915                                   ; $7bad: $31 $15 $99
	ld   h, e                                        ; $7bb0: $63
	ld   d, h                                        ; $7bb1: $54
	ld   de, $1111                                   ; $7bb2: $11 $11 $11
	ld   de, $df12                                   ; $7bb5: $11 $12 $df
	rst  $38                                         ; $7bb8: $ff
	rst  $38                                         ; $7bb9: $ff
	rst  $38                                         ; $7bba: $ff
	rst  $38                                         ; $7bbb: $ff
	rst  $38                                         ; $7bbc: $ff
	rst  $38                                         ; $7bbd: $ff
	ld   b, c                                        ; $7bbe: $41
	inc  [hl]                                        ; $7bbf: $34
	ld   de, $9528                                   ; $7bc0: $11 $28 $95
	inc  d                                           ; $7bc3: $14
	ld   d, c                                        ; $7bc4: $51
	ld   de, $1111                                   ; $7bc5: $11 $11 $11
	ld   de, $df2b                                   ; $7bc8: $11 $2b $df
	rst  $38                                         ; $7bcb: $ff
	rst  $38                                         ; $7bcc: $ff
	rst  $38                                         ; $7bcd: $ff
	rst  $38                                         ; $7bce: $ff
	rst  $38                                         ; $7bcf: $ff
	di                                               ; $7bd0: $f3
	dec  d                                           ; $7bd1: $15
	ld   sp, $6814                                   ; $7bd2: $31 $14 $68
	ld   h, c                                        ; $7bd5: $61
	ld   [hl+], a                                    ; $7bd6: $22
	ld   de, $1111                                   ; $7bd7: $11 $11 $11
	ld   de, $ad12                                   ; $7bda: $11 $12 $ad
	rst  $38                                         ; $7bdd: $ff
	rst  $38                                         ; $7bde: $ff
	rst  $38                                         ; $7bdf: $ff
	rst  $38                                         ; $7be0: $ff
	rst  $38                                         ; $7be1: $ff
	rst  $38                                         ; $7be2: $ff
	ld   d, c                                        ; $7be3: $51
	ld   h, e                                        ; $7be4: $63
	ld   de, $3159                                   ; $7be5: $11 $59 $31
	ld   d, e                                        ; $7be8: $53
	ld   de, $1111                                   ; $7be9: $11 $11 $11
	ld   de, $1d11                                   ; $7bec: $11 $11 $1d
	rst  $38                                         ; $7bef: $ff
	rst  $38                                         ; $7bf0: $ff
	rst  $38                                         ; $7bf1: $ff
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	rst  $38                                         ; $7bf4: $ff
	ld   hl, sp+$55                                  ; $7bf5: $f8 $55
	ld   h, c                                        ; $7bf7: $61
	inc  d                                           ; $7bf8: $14
	ld   h, l                                        ; $7bf9: $65
	ld   de, $1111                                   ; $7bfa: $11 $11 $11
	ld   de, $1111                                   ; $7bfd: $11 $11 $11
	inc  d                                           ; $7c00: $14
	xor  $ff                                         ; $7c01: $ee $ff
	rst  $38                                         ; $7c03: $ff
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	rst  $38                                         ; $7c06: $ff
	db   $fd                                         ; $7c07: $fd
	adc  c                                           ; $7c08: $89
	ld   h, d                                        ; $7c09: $62
	ld   [de], a                                     ; $7c0a: $12
	ld   h, h                                        ; $7c0b: $64
	ld   de, $1111                                   ; $7c0c: $11 $11 $11
	ld   de, $1111                                   ; $7c0f: $11 $11 $11
	ld   [de], a                                     ; $7c12: $12
	ld   [hl], a                                     ; $7c13: $77
	rst  $38                                         ; $7c14: $ff
	rst  $38                                         ; $7c15: $ff
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	rst  $38                                         ; $7c19: $ff
	reti                                             ; $7c1a: $d9


	reti                                             ; $7c1b: $d9


	inc  de                                          ; $7c1c: $13
	ld   h, e                                        ; $7c1d: $63
	ld   sp, $1111                                   ; $7c1e: $31 $11 $11
	ld   de, $1111                                   ; $7c21: $11 $11 $11
	ld   de, $af26                                   ; $7c24: $11 $26 $af
	rst  $38                                         ; $7c27: $ff
	rst  $38                                         ; $7c28: $ff
	rst  $38                                         ; $7c29: $ff
	rst  $38                                         ; $7c2a: $ff
	rst  $38                                         ; $7c2b: $ff
	rst  $38                                         ; $7c2c: $ff
	rst  $38                                         ; $7c2d: $ff
	ld   b, d                                        ; $7c2e: $42
	ld   d, [hl]                                     ; $7c2f: $56
	ld   hl, $1111                                   ; $7c30: $21 $11 $11
	ld   de, $1111                                   ; $7c33: $11 $11 $11
	ld   de, $f513                                   ; $7c36: $11 $13 $f5
	ld   e, a                                        ; $7c39: $5f
	rst  $38                                         ; $7c3a: $ff
	rst  $38                                         ; $7c3b: $ff
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	rst  $38                                         ; $7c3e: $ff
	db   $ed                                         ; $7c3f: $ed
	ld   sp, hl                                      ; $7c40: $f9
	inc  d                                           ; $7c41: $14
	ld   d, l                                        ; $7c42: $55
	ld   de, $1141                                   ; $7c43: $11 $41 $11
	ld   de, $1111                                   ; $7c46: $11 $11 $11
	ld   de, $bf11                                   ; $7c49: $11 $11 $bf
	rst  $38                                         ; $7c4c: $ff
	rst  $38                                         ; $7c4d: $ff
	rst  $38                                         ; $7c4e: $ff
	rst  $38                                         ; $7c4f: $ff
	rst  $38                                         ; $7c50: $ff
	rst  $38                                         ; $7c51: $ff
	rst  $38                                         ; $7c52: $ff
	cp   d                                           ; $7c53: $ba
	ld   [hl], c                                     ; $7c54: $71
	ld   [hl+], a                                    ; $7c55: $22
	ld   hl, $1111                                   ; $7c56: $21 $11 $11
	ld   de, $1111                                   ; $7c59: $11 $11 $11
	ld   de, $b416                                   ; $7c5c: $11 $16 $b4
	rst  $38                                         ; $7c5f: $ff
	rst  $38                                         ; $7c60: $ff
	rst  $38                                         ; $7c61: $ff
	rst  $38                                         ; $7c62: $ff
	rst  $38                                         ; $7c63: $ff
	rst  $38                                         ; $7c64: $ff
	rst  $38                                         ; $7c65: $ff
	rst  $10                                         ; $7c66: $d7
	ld   b, h                                        ; $7c67: $44
	ld   b, c                                        ; $7c68: $41
	ld   de, $1111                                   ; $7c69: $11 $11 $11
	ld   de, $1111                                   ; $7c6c: $11 $11 $11
	ld   hl, $aa12                                   ; $7c6f: $21 $12 $aa
	rra                                              ; $7c72: $1f
	cp   $ff                                         ; $7c73: $fe $ff
	rst  $38                                         ; $7c75: $ff
	rst  $38                                         ; $7c76: $ff
	rst  $38                                         ; $7c77: $ff
	rst  $38                                         ; $7c78: $ff
	ld   sp, hl                                      ; $7c79: $f9
	sub  [hl]                                        ; $7c7a: $96
	ld   b, l                                        ; $7c7b: $45
	ld   de, $1111                                   ; $7c7c: $11 $11 $11
	ld   de, $1111                                   ; $7c7f: $11 $11 $11
	ld   sp, $b111                                   ; $7c82: $31 $11 $b1
	ccf                                              ; $7c85: $3f
	rst  $38                                         ; $7c86: $ff
	rst  JumpTable                                         ; $7c87: $df
	rst  $38                                         ; $7c88: $ff
	rst  $38                                         ; $7c89: $ff
	rst  $38                                         ; $7c8a: $ff
	rst  $38                                         ; $7c8b: $ff
	rst  $38                                         ; $7c8c: $ff
	ld   e, c                                        ; $7c8d: $59
	or   [hl]                                        ; $7c8e: $b6
	ld   de, $1162                                   ; $7c8f: $11 $62 $11
	ld   de, $1111                                   ; $7c92: $11 $11 $11
	ld   de, $1311                                   ; $7c95: $11 $11 $13
	ld   [hl+], a                                    ; $7c98: $22
	ld   d, $fd                                      ; $7c99: $16 $fd
	sbc  a                                           ; $7c9b: $9f
	rst  $38                                         ; $7c9c: $ff
	cp   a                                           ; $7c9d: $bf
	rst  $38                                         ; $7c9e: $ff
	rst  $38                                         ; $7c9f: $ff
	db   $fd                                         ; $7ca0: $fd
	ld   hl, sp-$43                                  ; $7ca1: $f8 $bd
	ld   h, e                                        ; $7ca3: $63
	add  hl, sp                                      ; $7ca4: $39
	ld   de, $1481                                   ; $7ca5: $11 $81 $14
	ld   h, c                                        ; $7ca8: $61
	ld   b, a                                        ; $7ca9: $47
	inc  d                                           ; $7caa: $14
	add  d                                           ; $7cab: $82
	ld   a, [de]                                     ; $7cac: $1a
	ld   hl, $1cc3                                   ; $7cad: $21 $c3 $1c
	pop  af                                          ; $7cb0: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cb1: $cf
	adc  a                                           ; $7cb2: $8f
	rst  $38                                         ; $7cb3: $ff
	rst  $38                                         ; $7cb4: $ff
	db   $fc                                         ; $7cb5: $fc
	rst  $38                                         ; $7cb6: $ff
	sbc  a                                           ; $7cb7: $9f
	and  l                                           ; $7cb8: $a5
	sub  a                                           ; $7cb9: $97
	daa                                              ; $7cba: $27
	ld   h, c                                        ; $7cbb: $61
	sub  a                                           ; $7cbc: $97
	jr   jr_0c8_7d33                                 ; $7cbd: $18 $74

	ld   [hl], $11                                   ; $7cbf: $36 $11
	ld   [hl], c                                     ; $7cc1: $71
	ld   d, $11                                      ; $7cc2: $16 $11
	and  a                                           ; $7cc4: $a7
	rla                                              ; $7cc5: $17
	ret  c                                           ; $7cc6: $d8

	cp   e                                           ; $7cc7: $bb
	rst  JumpTable                                         ; $7cc8: $df
	sbc  $ff                                         ; $7cc9: $de $ff
	db   $ec                                         ; $7ccb: $ec
	ei                                               ; $7ccc: $fb
	sbc  a                                           ; $7ccd: $9f
	xor  h                                           ; $7cce: $ac
	and  h                                           ; $7ccf: $a4

jr_0c8_7cd0:
	rl   h                                           ; $7cd0: $cb $14
	jp   nc, $143a                                   ; $7cd2: $d2 $3a $14

	ld   h, c                                        ; $7cd5: $61
	ld   d, l                                        ; $7cd6: $55
	ld   b, [hl]                                     ; $7cd7: $46
	ld   h, $35                                      ; $7cd8: $26 $35
	add  e                                           ; $7cda: $83
	xor  c                                           ; $7cdb: $a9
	ld   l, d                                        ; $7cdc: $6a
	cp   e                                           ; $7cdd: $bb
	jp   z, $d78c                                    ; $7cde: $ca $8c $d7

	db   $ec                                         ; $7ce1: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ce2: $cf
	cp   h                                           ; $7ce3: $bc
	xor  h                                           ; $7ce4: $ac
	adc  e                                           ; $7ce5: $8b
	add  a                                           ; $7ce6: $87
	pop  de                                          ; $7ce7: $d1
	sbc  [hl]                                        ; $7ce8: $9e
	rla                                              ; $7ce9: $17
	sub  e                                           ; $7cea: $93
	sbc  c                                           ; $7ceb: $99
	ld   [hl], $a2                                   ; $7cec: $36 $a2
	ccf                                              ; $7cee: $3f
	ld   d, h                                        ; $7cef: $54
	or   $6c                                         ; $7cf0: $f6 $6c
	ld   [hl], h                                     ; $7cf2: $74
	db   $ec                                         ; $7cf3: $ec
	rra                                              ; $7cf4: $1f
	and  e                                           ; $7cf5: $a3
	rst  ToBoot                                         ; $7cf6: $c7
	sbc  b                                           ; $7cf7: $98
	ld   [hl], a                                     ; $7cf8: $77
	ld   a, l                                        ; $7cf9: $7d
	sub  h                                           ; $7cfa: $94
	ret                                              ; $7cfb: $c9


	adc  d                                           ; $7cfc: $8a
	ld   c, d                                        ; $7cfd: $4a
	adc  c                                           ; $7cfe: $89
	halt                                             ; $7cff: $76
	add  $ab                                         ; $7d00: $c6 $ab
	ld   c, a                                        ; $7d02: $4f
	add  e                                           ; $7d03: $83
	ld   sp, hl                                      ; $7d04: $f9
	inc  e                                           ; $7d05: $1c
	pop  de                                          ; $7d06: $d1
	push hl                                          ; $7d07: $e5
	ccf                                              ; $7d08: $3f
	ld   d, h                                        ; $7d09: $54
	adc  a                                           ; $7d0a: $8f
	ld   a, [de]                                     ; $7d0b: $1a
	pop  de                                          ; $7d0c: $d1
	xor  h                                           ; $7d0d: $ac
	dec  de                                          ; $7d0e: $1b
	pop  hl                                          ; $7d0f: $e1
	cp   $1c                                         ; $7d10: $fe $1c
	pop  af                                          ; $7d12: $f1
	db   $ec                                         ; $7d13: $ec
	rra                                              ; $7d14: $1f
	ld   b, [hl]                                     ; $7d15: $46
	cp   h                                           ; $7d16: $bc
	ld   a, d                                        ; $7d17: $7a
	ldh  a, [c]                                      ; $7d18: $f2
	db   $eb                                         ; $7d19: $eb
	ld   d, a                                        ; $7d1a: $57
	db   $e4                                         ; $7d1b: $e4
	adc  h                                           ; $7d1c: $8c
	ld   e, c                                        ; $7d1d: $59
	xor  b                                           ; $7d1e: $a8
	ld   a, [hl]                                     ; $7d1f: $7e
	ld   [hl], $c1                                   ; $7d20: $36 $c1
	ld   a, e                                        ; $7d22: $7b
	dec  h                                           ; $7d23: $25
	or   h                                           ; $7d24: $b4
	ld   e, e                                        ; $7d25: $5b
	ld   h, [hl]                                     ; $7d26: $66
	add  $8d                                         ; $7d27: $c6 $8d
	ld   h, l                                        ; $7d29: $65
	add  $5d                                         ; $7d2a: $c6 $5d
	jr   c, jr_0c8_7cd0                              ; $7d2c: $38 $a2

	xor  h                                           ; $7d2e: $ac
	ld   e, b                                        ; $7d2f: $58
	add  $ad                                         ; $7d30: $c6 $ad
	ld   c, d                                        ; $7d32: $4a

jr_0c8_7d33:
	and  [hl]                                        ; $7d33: $a6
	or   a                                           ; $7d34: $b7
	ld   a, d                                        ; $7d35: $7a
	ld   [hl], l                                     ; $7d36: $75
	and  a                                           ; $7d37: $a7
	ld   l, c                                        ; $7d38: $69
	ld   c, c                                        ; $7d39: $49
	add  l                                           ; $7d3a: $85
	adc  b                                           ; $7d3b: $88
	ld   a, c                                        ; $7d3c: $79
	ld   l, b                                        ; $7d3d: $68
	sub  [hl]                                        ; $7d3e: $96
	sub  [hl]                                        ; $7d3f: $96
	sbc  b                                           ; $7d40: $98
	ld   e, d                                        ; $7d41: $5a
	ld   h, [hl]                                     ; $7d42: $66
	or   a                                           ; $7d43: $b7
	ld   c, d                                        ; $7d44: $4a
	sub  l                                           ; $7d45: $95
	xor  c                                           ; $7d46: $a9
	ld   c, e                                        ; $7d47: $4b
	add  h                                           ; $7d48: $84
	sub  $5e                                         ; $7d49: $d6 $5e
	ld   c, c                                        ; $7d4b: $49
	push de                                          ; $7d4c: $d5
	sbc  [hl]                                        ; $7d4d: $9e
	add  hl, hl                                      ; $7d4e: $29
	or   c                                           ; $7d4f: $b1
	call nc, Call_0c8_665a                           ; $7d50: $d4 $5a $66
	ld   e, d                                        ; $7d53: $5a
	ld   c, h                                        ; $7d54: $4c
	ld   h, l                                        ; $7d55: $65
	cp   b                                           ; $7d56: $b8
	ld   e, c                                        ; $7d57: $59
	and  h                                           ; $7d58: $a4
	xor  c                                           ; $7d59: $a9
	ld   c, e                                        ; $7d5a: $4b
	or   d                                           ; $7d5b: $b2
	rst  $10                                         ; $7d5c: $d7
	ld   c, h                                        ; $7d5d: $4c
	ld   l, c                                        ; $7d5e: $69
	sub  a                                           ; $7d5f: $97
	ld   l, e                                        ; $7d60: $6b
	halt                                             ; $7d61: $76
	db   $e3                                         ; $7d62: $e3
	adc  h                                           ; $7d63: $8c
	ld   c, b                                        ; $7d64: $48
	sub  [hl]                                        ; $7d65: $96
	ld   l, c                                        ; $7d66: $69
	ld   [hl], a                                     ; $7d67: $77
	sub  [hl]                                        ; $7d68: $96
	add  a                                           ; $7d69: $87
	ld   h, a                                        ; $7d6a: $67
	ld   a, b                                        ; $7d6b: $78
	ld   l, c                                        ; $7d6c: $69
	ld   d, a                                        ; $7d6d: $57
	or   [hl]                                        ; $7d6e: $b6
	ld   a, c                                        ; $7d6f: $79
	ld   [hl], a                                     ; $7d70: $77
	and  [hl]                                        ; $7d71: $a6
	sbc  d                                           ; $7d72: $9a
	ld   c, c                                        ; $7d73: $49
	sub  h                                           ; $7d74: $94
	or   a                                           ; $7d75: $b7
	ld   a, b                                        ; $7d76: $78
	ld   [hl], a                                     ; $7d77: $77
	ld   a, e                                        ; $7d78: $7b
	ld   c, h                                        ; $7d79: $4c
	ld   h, [hl]                                     ; $7d7a: $66
	or   d                                           ; $7d7b: $b2
	or   [hl]                                        ; $7d7c: $b6
	ld   l, c                                        ; $7d7d: $69
	add  [hl]                                        ; $7d7e: $86
	ld   l, e                                        ; $7d7f: $6b
	ld   c, d                                        ; $7d80: $4a
	ld   h, a                                        ; $7d81: $67
	or   [hl]                                        ; $7d82: $b6
	sub  l                                           ; $7d83: $95
	and  l                                           ; $7d84: $a5
	adc  c                                           ; $7d85: $89
	ld   c, e                                        ; $7d86: $4b
	ld   c, b                                        ; $7d87: $48
	sub  l                                           ; $7d88: $95
	xor  d                                           ; $7d89: $aa
	ld   l, c                                        ; $7d8a: $69
	and  l                                           ; $7d8b: $a5
	sbc  d                                           ; $7d8c: $9a
	ld   c, c                                        ; $7d8d: $49
	halt                                             ; $7d8e: $76
	and  [hl]                                        ; $7d8f: $a6
	add  a                                           ; $7d90: $87
	adc  b                                           ; $7d91: $88
	add  a                                           ; $7d92: $87
	adc  d                                           ; $7d93: $8a
	ld   l, b                                        ; $7d94: $68
	adc  b                                           ; $7d95: $88
	ld   [hl], a                                     ; $7d96: $77
	ld   h, a                                        ; $7d97: $67
	halt                                             ; $7d98: $76
	ld   [hl], a                                     ; $7d99: $77
	ld   [hl], a                                     ; $7d9a: $77
	and  [hl]                                        ; $7d9b: $a6
	adc  e                                           ; $7d9c: $8b
	ld   e, d                                        ; $7d9d: $5a
	add  a                                           ; $7d9e: $87
	xor  c                                           ; $7d9f: $a9
	ld   [hl], a                                     ; $7da0: $77
	sub  [hl]                                        ; $7da1: $96
	sub  a                                           ; $7da2: $97
	ld   l, c                                        ; $7da3: $69
	ld   a, b                                        ; $7da4: $78
	add  a                                           ; $7da5: $87
	sbc  b                                           ; $7da6: $98
	ld   a, d                                        ; $7da7: $7a
	adc  b                                           ; $7da8: $88
	add  [hl]                                        ; $7da9: $86
	adc  c                                           ; $7daa: $89
	ld   e, c                                        ; $7dab: $59
	add  a                                           ; $7dac: $87
	and  l                                           ; $7dad: $a5
	and  [hl]                                        ; $7dae: $a6
	ld   a, d                                        ; $7daf: $7a
	ld   c, d                                        ; $7db0: $4a
	or   h                                           ; $7db1: $b4
	sbc  e                                           ; $7db2: $9b
	ld   c, b                                        ; $7db3: $48
	and  a                                           ; $7db4: $a7
	ld   l, h                                        ; $7db5: $6c
	ld   e, b                                        ; $7db6: $58
	or   h                                           ; $7db7: $b4
	sub  a                                           ; $7db8: $97
	sub  l                                           ; $7db9: $95
	adc  c                                           ; $7dba: $89
	ld   a, d                                        ; $7dbb: $7a
	ld   [hl], a                                     ; $7dbc: $77
	ld   a, d                                        ; $7dbd: $7a
	inc  a                                           ; $7dbe: $3c
	ld   h, [hl]                                     ; $7dbf: $66
	jp   Jump_0c8_58aa                               ; $7dc0: $c3 $aa $58


	or   h                                           ; $7dc3: $b4
	xor  b                                           ; $7dc4: $a8
	ld   e, h                                        ; $7dc5: $5c
	ld   h, [hl]                                     ; $7dc6: $66
	sbc  c                                           ; $7dc7: $99
	ld   l, e                                        ; $7dc8: $6b
	ld   h, [hl]                                     ; $7dc9: $66
	or   a                                           ; $7dca: $b7
	ld   a, b                                        ; $7dcb: $78
	cp   b                                           ; $7dcc: $b8
	adc  d                                           ; $7dcd: $8a
	ld   a, d                                        ; $7dce: $7a
	ld   l, b                                        ; $7dcf: $68
	ld   [hl], a                                     ; $7dd0: $77
	add  l                                           ; $7dd1: $85
	or   [hl]                                        ; $7dd2: $b6
	sbc  e                                           ; $7dd3: $9b
	ld   a, [hl+]                                    ; $7dd4: $2a
	and  l                                           ; $7dd5: $a5
	cp   c                                           ; $7dd6: $b9
	ld   a, e                                        ; $7dd7: $7b
	and  e                                           ; $7dd8: $a3
	cp   c                                           ; $7dd9: $b9
	dec  a                                           ; $7dda: $3d
	ld   h, [hl]                                     ; $7ddb: $66
	xor  b                                           ; $7ddc: $a8
	ld   l, d                                        ; $7ddd: $6a
	ld   h, [hl]                                     ; $7dde: $66
	or   l                                           ; $7ddf: $b5
	xor  b                                           ; $7de0: $a8
	add  a                                           ; $7de1: $87
	adc  b                                           ; $7de2: $88
	ld   l, l                                        ; $7de3: $6d
	ld   h, a                                        ; $7de4: $67
	or   [hl]                                        ; $7de5: $b6
	adc  h                                           ; $7de6: $8c
	add  hl, sp                                      ; $7de7: $39
	sub  l                                           ; $7de8: $95
	cp   b                                           ; $7de9: $b8
	ld   l, d                                        ; $7dea: $6a
	sub  l                                           ; $7deb: $95
	db   $e4                                         ; $7dec: $e4
	ld   a, h                                        ; $7ded: $7c
	ld   a, c                                        ; $7dee: $79
	sbc  b                                           ; $7def: $98
	ld   e, d                                        ; $7df0: $5a
	ld   a, b                                        ; $7df1: $78
	sub  [hl]                                        ; $7df2: $96
	sbc  c                                           ; $7df3: $99
	adc  c                                           ; $7df4: $89
	ld   a, b                                        ; $7df5: $78
	sub  l                                           ; $7df6: $95
	xor  b                                           ; $7df7: $a8
	ld   l, c                                        ; $7df8: $69
	sbc  b                                           ; $7df9: $98
	ld   e, h                                        ; $7dfa: $5c
	halt                                             ; $7dfb: $76
	or   a                                           ; $7dfc: $b7
	ld   a, d                                        ; $7dfd: $7a
	or   h                                           ; $7dfe: $b4
	cp   b                                           ; $7dff: $b8
	ld   c, [hl]                                     ; $7e00: $4e
	ld   h, a                                        ; $7e01: $67
	sbc  b                                           ; $7e02: $98
	ld   a, c                                        ; $7e03: $79
	sub  [hl]                                        ; $7e04: $96
	xor  b                                           ; $7e05: $a8
	ld   e, c                                        ; $7e06: $59
	or   l                                           ; $7e07: $b5
	xor  c                                           ; $7e08: $a9
	sub  [hl]                                        ; $7e09: $96
	cp   e                                           ; $7e0a: $bb
	dec  l                                           ; $7e0b: $2d
	ld   [hl], l                                     ; $7e0c: $75
	rst  ToBoot                                         ; $7e0d: $c7
	ld   e, h                                        ; $7e0e: $5c
	ld   [hl], l                                     ; $7e0f: $75
	push de                                          ; $7e10: $d5
	xor  c                                           ; $7e11: $a9
	ld   e, e                                        ; $7e12: $5b
	ld   a, b                                        ; $7e13: $78
	adc  d                                           ; $7e14: $8a
	ld   e, e                                        ; $7e15: $5b
	or   h                                           ; $7e16: $b4
	call nz, Call_0c8_4eba                           ; $7e17: $c4 $ba $4e
	ld   e, b                                        ; $7e1a: $58
	sub  a                                           ; $7e1b: $97
	ld   a, c                                        ; $7e1c: $79
	sub  h                                           ; $7e1d: $94
	sub  $5a                                         ; $7e1e: $d6 $5a
	ld   l, b                                        ; $7e20: $68
	or   l                                           ; $7e21: $b5
	ld   a, e                                        ; $7e22: $7b
	ld   [hl], a                                     ; $7e23: $77
	call nc, $1fac                                   ; $7e24: $d4 $ac $1f
	sub  h                                           ; $7e27: $94
	rst  ToBoot                                         ; $7e28: $c7
	ld   c, h                                        ; $7e29: $4c
	sub  d                                           ; $7e2a: $92
	and  $5c                                         ; $7e2b: $e6 $5c
	ld   c, h                                        ; $7e2d: $4c
	ld   [hl], l                                     ; $7e2e: $75
	jp   nc, $1dbb                                   ; $7e2f: $d2 $bb $1d

	sub  h                                           ; $7e32: $94
	xor  d                                           ; $7e33: $aa
	ld   c, h                                        ; $7e34: $4c
	sub  l                                           ; $7e35: $95
	cp   c                                           ; $7e36: $b9
	ld   l, d                                        ; $7e37: $6a
	sub  [hl]                                        ; $7e38: $96
	or   [hl]                                        ; $7e39: $b6
	ld   l, l                                        ; $7e3a: $6d
	add  hl, sp                                      ; $7e3b: $39
	or   e                                           ; $7e3c: $b3
	or   a                                           ; $7e3d: $b7
	ld   l, d                                        ; $7e3e: $6a
	sub  e                                           ; $7e3f: $93
	ret  z                                           ; $7e40: $c8

	ld   c, [hl]                                     ; $7e41: $4e
	ld   e, c                                        ; $7e42: $59
	sbc  b                                           ; $7e43: $98
	ld   a, h                                        ; $7e44: $7c
	ld   b, a                                        ; $7e45: $47
	pop  bc                                          ; $7e46: $c1
	push hl                                          ; $7e47: $e5
	ld   a, h                                        ; $7e48: $7c
	ld   e, b                                        ; $7e49: $58
	sbc  b                                           ; $7e4a: $98
	ld   e, d                                        ; $7e4b: $5a
	ld   [hl], l                                     ; $7e4c: $75
	or   l                                           ; $7e4d: $b5
	adc  e                                           ; $7e4e: $8b
	ld   l, b                                        ; $7e4f: $68
	rst  ToBoot                                         ; $7e50: $c7
	sbc  c                                           ; $7e51: $99
	ld   e, h                                        ; $7e52: $5c
	sub  h                                           ; $7e53: $94
	xor  d                                           ; $7e54: $aa
	ld   c, h                                        ; $7e55: $4c
	ld   [hl], h                                     ; $7e56: $74
	sub  $5a                                         ; $7e57: $d6 $5a
	add  a                                           ; $7e59: $87
	sbc  b                                           ; $7e5a: $98
	ld   a, c                                        ; $7e5b: $79
	sub  [hl]                                        ; $7e5c: $96
	adc  e                                           ; $7e5d: $8b
	ld   e, c                                        ; $7e5e: $59
	jp   nc, $2fda                                   ; $7e5f: $d2 $da $2f

	ld   d, a                                        ; $7e62: $57
	call nz, Call_0c8_656a                           ; $7e63: $c4 $6a $65
	sub  $4f                                         ; $7e66: $d6 $4f
	scf                                              ; $7e68: $37
	call nz, Call_0c8_68aa                           ; $7e69: $c4 $aa $68
	sub  a                                           ; $7e6c: $97
	sbc  b                                           ; $7e6d: $98
	ld   a, c                                        ; $7e6e: $79
	add  a                                           ; $7e6f: $87
	ld   a, c                                        ; $7e70: $79
	add  a                                           ; $7e71: $87
	adc  c                                           ; $7e72: $89
	ld   e, d                                        ; $7e73: $5a
	add  l                                           ; $7e74: $85
	rst  ToBoot                                         ; $7e75: $c7
	ld   l, c                                        ; $7e76: $69
	ld   l, d                                        ; $7e77: $6a
	ld   a, b                                        ; $7e78: $78
	or   [hl]                                        ; $7e79: $b6
	or   l                                           ; $7e7a: $b5
	adc  c                                           ; $7e7b: $89
	ld   e, h                                        ; $7e7c: $5c
	ld   c, d                                        ; $7e7d: $4a
	sub  [hl]                                        ; $7e7e: $96
	sbc  e                                           ; $7e7f: $9b
	ld   [hl], a                                     ; $7e80: $77
	call nc, Call_0c8_759b                           ; $7e81: $d4 $9b $75
	or   a                                           ; $7e84: $b7
	dec  a                                           ; $7e85: $3d
	ld   c, d                                        ; $7e86: $4a
	add  a                                           ; $7e87: $87
	and  l                                           ; $7e88: $a5
	or   [hl]                                        ; $7e89: $b6
	ld   l, c                                        ; $7e8a: $69
	ld   a, c                                        ; $7e8b: $79
	sbc  c                                           ; $7e8c: $99
	ld   [hl], a                                     ; $7e8d: $77
	or   [hl]                                        ; $7e8e: $b6
	xor  c                                           ; $7e8f: $a9
	ld   l, b                                        ; $7e90: $68
	adc  h                                           ; $7e91: $8c
	ld   c, d                                        ; $7e92: $4a
	and  h                                           ; $7e93: $a4
	xor  c                                           ; $7e94: $a9
	ld   e, c                                        ; $7e95: $59
	add  l                                           ; $7e96: $85
	and  a                                           ; $7e97: $a7
	adc  c                                           ; $7e98: $89
	ld   l, d                                        ; $7e99: $6a
	add  [hl]                                        ; $7e9a: $86
	or   [hl]                                        ; $7e9b: $b6
	ld   l, d                                        ; $7e9c: $6a
	halt                                             ; $7e9d: $76
	sub  a                                           ; $7e9e: $97
	ld   a, d                                        ; $7e9f: $7a
	ld   e, d                                        ; $7ea0: $5a
	sub  [hl]                                        ; $7ea1: $96
	or   a                                           ; $7ea2: $b7
	ld   l, e                                        ; $7ea3: $6b
	ld   h, [hl]                                     ; $7ea4: $66
	push de                                          ; $7ea5: $d5
	adc  d                                           ; $7ea6: $8a
	ld   l, c                                        ; $7ea7: $69
	sub  [hl]                                        ; $7ea8: $96
	adc  c                                           ; $7ea9: $89
	and  a                                           ; $7eaa: $a7
	ld   a, c                                        ; $7eab: $79
	ld   l, d                                        ; $7eac: $6a
	ld   a, b                                        ; $7ead: $78
	ld   e, e                                        ; $7eae: $5b
	add  a                                           ; $7eaf: $87
	sub  a                                           ; $7eb0: $97
	or   [hl]                                        ; $7eb1: $b6
	xor  b                                           ; $7eb2: $a8
	sbc  b                                           ; $7eb3: $98
	xor  b                                           ; $7eb4: $a8
	ld   l, e                                        ; $7eb5: $6b
	ld   l, c                                        ; $7eb6: $69
	ld   e, b                                        ; $7eb7: $58
	add  l                                           ; $7eb8: $85
	or   [hl]                                        ; $7eb9: $b6
	adc  c                                           ; $7eba: $89
	sub  [hl]                                        ; $7ebb: $96
	sbc  b                                           ; $7ebc: $98
	ld   l, h                                        ; $7ebd: $6c
	ld   e, b                                        ; $7ebe: $58
	and  e                                           ; $7ebf: $a3
	cp   c                                           ; $7ec0: $b9
	ld   e, h                                        ; $7ec1: $5c
	halt                                             ; $7ec2: $76
	push bc                                          ; $7ec3: $c5
	xor  b                                           ; $7ec4: $a8
	ld   e, c                                        ; $7ec5: $59
	add  l                                           ; $7ec6: $85
	sbc  c                                           ; $7ec7: $99
	dec  sp                                          ; $7ec8: $3b
	ld   [hl], a                                     ; $7ec9: $77
	or   h                                           ; $7eca: $b4
	cp   c                                           ; $7ecb: $b9
	ld   e, d                                        ; $7ecc: $5a
	add  [hl]                                        ; $7ecd: $86
	or   l                                           ; $7ece: $b5
	sbc  e                                           ; $7ecf: $9b
	inc  a                                           ; $7ed0: $3c
	halt                                             ; $7ed1: $76
	sub  $7a                                         ; $7ed2: $d6 $7a
	ld   h, a                                        ; $7ed4: $67
	and  l                                           ; $7ed5: $a5
	ld   e, l                                        ; $7ed6: $5d
	ld   d, a                                        ; $7ed7: $57
	jp   nc, $1bbb                                   ; $7ed8: $d2 $bb $1b

	and  l                                           ; $7edb: $a5
	adc  c                                           ; $7edc: $89
	ld   h, a                                        ; $7edd: $67
	sub  [hl]                                        ; $7ede: $96
	add  [hl]                                        ; $7edf: $86
	adc  c                                           ; $7ee0: $89
	ld   l, d                                        ; $7ee1: $6a
	ld   a, b                                        ; $7ee2: $78
	add  [hl]                                        ; $7ee3: $86
	sub  [hl]                                        ; $7ee4: $96
	adc  b                                           ; $7ee5: $88
	ld   l, c                                        ; $7ee6: $69
	sub  a                                           ; $7ee7: $97
	ld   l, d                                        ; $7ee8: $6a
	sub  h                                           ; $7ee9: $94
	ret  z                                           ; $7eea: $c8

	ld   l, d                                        ; $7eeb: $6a
	halt                                             ; $7eec: $76
	cp   b                                           ; $7eed: $b8
	ld   e, h                                        ; $7eee: $5c
	ld   a, c                                        ; $7eef: $79
	and  l                                           ; $7ef0: $a5
	rst  ToBoot                                         ; $7ef1: $c7
	ld   e, d                                        ; $7ef2: $5a
	ld   h, [hl]                                     ; $7ef3: $66
	or   h                                           ; $7ef4: $b4
	adc  d                                           ; $7ef5: $8a
	ld   c, h                                        ; $7ef6: $4c
	ld   d, [hl]                                     ; $7ef7: $56
	or   l                                           ; $7ef8: $b5
	adc  c                                           ; $7ef9: $89
	ld   e, c                                        ; $7efa: $59
	jp   Jump_0c8_68a9                               ; $7efb: $c3 $a9 $68


	ld   a, b                                        ; $7efe: $78
	ld   e, e                                        ; $7eff: $5b
	ld   d, [hl]                                     ; $7f00: $56
	and  e                                           ; $7f01: $a3
	add  $69                                         ; $7f02: $c6 $69
	ld   e, d                                        ; $7f04: $5a
	ld   a, c                                        ; $7f05: $79
	adc  b                                           ; $7f06: $88
	sbc  c                                           ; $7f07: $99
	sbc  c                                           ; $7f08: $99
	sub  [hl]                                        ; $7f09: $96
	ret  c                                           ; $7f0a: $d8

	ld   l, d                                        ; $7f0b: $6a
	adc  c                                           ; $7f0c: $89
	adc  c                                           ; $7f0d: $89
	ld   l, c                                        ; $7f0e: $69
	add  a                                           ; $7f0f: $87
	sub  a                                           ; $7f10: $97
	ld   [hl], a                                     ; $7f11: $77
	add  [hl]                                        ; $7f12: $86
	sub  [hl]                                        ; $7f13: $96
	ld   [hl], a                                     ; $7f14: $77
	ld   l, b                                        ; $7f15: $68
	ld   e, c                                        ; $7f16: $59
	ld   h, [hl]                                     ; $7f17: $66
	ld   h, a                                        ; $7f18: $67
	ld   [hl], l                                     ; $7f19: $75
	add  h                                           ; $7f1a: $84
	halt                                             ; $7f1b: $76
	ld   a, c                                        ; $7f1c: $79
	ld   e, c                                        ; $7f1d: $59
	ld   [hl], a                                     ; $7f1e: $77
	adc  c                                           ; $7f1f: $89
	xor  c                                           ; $7f20: $a9
	sbc  e                                           ; $7f21: $9b
	xor  b                                           ; $7f22: $a8
	xor  d                                           ; $7f23: $aa
	sbc  h                                           ; $7f24: $9c
	sbc  d                                           ; $7f25: $9a
	xor  c                                           ; $7f26: $a9
	cp   b                                           ; $7f27: $b8
	or   a                                           ; $7f28: $b7
	xor  c                                           ; $7f29: $a9
	add  a                                           ; $7f2a: $87
	ld   c, d                                        ; $7f2b: $4a
	scf                                              ; $7f2c: $37
	ld   [hl], d                                     ; $7f2d: $72
	halt                                             ; $7f2e: $76
	inc  h                                           ; $7f2f: $24
	ld   h, c                                        ; $7f30: $61
	ld   b, h                                        ; $7f31: $44
	ld   d, $51                                      ; $7f32: $16 $51
	ld   h, a                                        ; $7f34: $67
	daa                                              ; $7f35: $27
	and  l                                           ; $7f36: $a5
	cp   e                                           ; $7f37: $bb
	sbc  l                                           ; $7f38: $9d
	call $fefe                                       ; $7f39: $cd $fe $fe
	rst  $38                                         ; $7f3c: $ff
	rst  $38                                         ; $7f3d: $ff
	cp   [hl]                                        ; $7f3e: $be
	res  5, d                                        ; $7f3f: $cb $aa
	and  e                                           ; $7f41: $a3
	or   h                                           ; $7f42: $b4
	add  hl, sp                                      ; $7f43: $39
	dec  d                                           ; $7f44: $15
	ld   b, c                                        ; $7f45: $41
	ld   [hl+], a                                    ; $7f46: $22
	ld   de, $1211                                   ; $7f47: $11 $11 $12
	ld   de, $5652                                   ; $7f4a: $11 $52 $56
	ld   [hl], a                                     ; $7f4d: $77
	xor  e                                           ; $7f4e: $ab
	cp   [hl]                                        ; $7f4f: $be
	rst  JumpTable                                         ; $7f50: $df
	rst  $38                                         ; $7f51: $ff
	rst  $38                                         ; $7f52: $ff
	rst  $38                                         ; $7f53: $ff
	cp   $fe                                         ; $7f54: $fe $fe
	db   $ec                                         ; $7f56: $ec
	jp   c, $98a8                                    ; $7f57: $da $a8 $98

	ld   d, [hl]                                     ; $7f5a: $56
	ld   d, h                                        ; $7f5b: $54
	ld   hl, $1112                                   ; $7f5c: $21 $12 $11
	ld   de, $1111                                   ; $7f5f: $11 $11 $11
	ld   hl, $3825                                   ; $7f62: $21 $25 $38
	sbc  c                                           ; $7f65: $99
	cp   l                                           ; $7f66: $bd
	xor  $ff                                         ; $7f67: $ee $ff
	rst  $38                                         ; $7f69: $ff
	rst  $38                                         ; $7f6a: $ff
	rst  $38                                         ; $7f6b: $ff
	rst  $38                                         ; $7f6c: $ff
	db   $fd                                         ; $7f6d: $fd
	db   $ec                                         ; $7f6e: $ec
	xor  l                                           ; $7f6f: $ad
	adc  d                                           ; $7f70: $8a
	sub  h                                           ; $7f71: $94
	ld   h, [hl]                                     ; $7f72: $66
	ld   [de], a                                     ; $7f73: $12
	ld   hl, $1121                                   ; $7f74: $21 $21 $11
	ld   de, $1111                                   ; $7f77: $11 $11 $11
	inc  de                                          ; $7f7a: $13
	ld   b, h                                        ; $7f7b: $44
	ld   a, c                                        ; $7f7c: $79
	sbc  e                                           ; $7f7d: $9b
	adc  $ff                                         ; $7f7e: $ce $ff
	rst  $38                                         ; $7f80: $ff
	rst  $38                                         ; $7f81: $ff
	rst  $38                                         ; $7f82: $ff
	rst  $38                                         ; $7f83: $ff
	rst  $38                                         ; $7f84: $ff
	db   $fd                                         ; $7f85: $fd
	call z, $86a9                                    ; $7f86: $cc $a9 $86
	ld   d, l                                        ; $7f89: $55
	inc  h                                           ; $7f8a: $24
	ld   hl, $1111                                   ; $7f8b: $21 $11 $11
	ld   de, $1111                                   ; $7f8e: $11 $11 $11
	ld   de, $4612                                   ; $7f91: $11 $12 $46
	sbc  d                                           ; $7f94: $9a
	cp   [hl]                                        ; $7f95: $be
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	rst  $38                                         ; $7f98: $ff
	rst  $38                                         ; $7f99: $ff
	rst  $38                                         ; $7f9a: $ff
	rst  $38                                         ; $7f9b: $ff
	rst  $38                                         ; $7f9c: $ff
	cp   $da                                         ; $7f9d: $fe $da
	cp   c                                           ; $7f9f: $b9
	ld   h, [hl]                                     ; $7fa0: $66
	inc  [hl]                                        ; $7fa1: $34
	ld   hl, $1111                                   ; $7fa2: $21 $11 $11
	ld   de, $1111                                   ; $7fa5: $11 $11 $11
	ld   de, $1411                                   ; $7fa8: $11 $11 $14
	ld   h, a                                        ; $7fab: $67
	cp   h                                           ; $7fac: $bc
	rst  $28                                         ; $7fad: $ef
	rst  $38                                         ; $7fae: $ff
	rst  $38                                         ; $7faf: $ff
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	rst  $38                                         ; $7fb4: $ff
	cp   $bb                                         ; $7fb5: $fe $bb
	sub  a                                           ; $7fb7: $97
	ld   [hl], h                                     ; $7fb8: $74
	ld   [hl+], a                                    ; $7fb9: $22
	ld   de, $1111                                   ; $7fba: $11 $11 $11
	ld   de, $1111                                   ; $7fbd: $11 $11 $11
	ld   de, $2411                                   ; $7fc0: $11 $11 $24
	ld   a, d                                        ; $7fc3: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fc4: $cf
	rst  $38                                         ; $7fc5: $ff
	rst  $38                                         ; $7fc6: $ff
	rst  $38                                         ; $7fc7: $ff
	rst  $38                                         ; $7fc8: $ff
	rst  $38                                         ; $7fc9: $ff
	rst  $38                                         ; $7fca: $ff
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	db   $fc                                         ; $7fcd: $fc
	cp   c                                           ; $7fce: $b9
	halt                                             ; $7fcf: $76
	ld   d, d                                        ; $7fd0: $52
	ld   hl, $1111                                   ; $7fd1: $21 $11 $11
	ld   de, $1111                                   ; $7fd4: $11 $11 $11
	ld   de, $1111                                   ; $7fd7: $11 $11 $11
	ld   d, [hl]                                     ; $7fda: $56
	xor  [hl]                                        ; $7fdb: $ae
	rst  $38                                         ; $7fdc: $ff
	rst  $38                                         ; $7fdd: $ff
	rst  $38                                         ; $7fde: $ff
	rst  $38                                         ; $7fdf: $ff
	rst  $38                                         ; $7fe0: $ff
	rst  $38                                         ; $7fe1: $ff
	rst  $38                                         ; $7fe2: $ff
	rst  $38                                         ; $7fe3: $ff
	rst  $38                                         ; $7fe4: $ff
	res  2, a                                        ; $7fe5: $cb $97
	ld   d, h                                        ; $7fe7: $54
	ld   de, $1111                                   ; $7fe8: $11 $11 $11
	ld   de, $1111                                   ; $7feb: $11 $11 $11
	ld   de, $1111                                   ; $7fee: $11 $11 $11
	inc  d                                           ; $7ff1: $14
	ld   a, d                                        ; $7ff2: $7a
	rst  $38                                         ; $7ff3: $ff
	rst  $38                                         ; $7ff4: $ff
	rst  $38                                         ; $7ff5: $ff
	rst  $38                                         ; $7ff6: $ff
	rst  $38                                         ; $7ff7: $ff
	rst  $38                                         ; $7ff8: $ff
	rst  $38                                         ; $7ff9: $ff
	rst  $38                                         ; $7ffa: $ff
	rst  $38                                         ; $7ffb: $ff
	db   $fd                                         ; $7ffc: $fd
	xor  c                                           ; $7ffd: $a9
	ld   [hl], h                                     ; $7ffe: $74
	db   $31                                         ; $7fff: $31
