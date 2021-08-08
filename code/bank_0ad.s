; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ad", ROMX[$4000], BANK[$ad]

	ld   de, $2312                                   ; $4000: $11 $12 $23
	ld   a, d                                        ; $4003: $7a
	cp   [hl]                                        ; $4004: $be
	cp   $ff                                         ; $4005: $fe $ff
	cp   l                                           ; $4007: $bd
	sub  [hl]                                        ; $4008: $96
	ld   b, c                                        ; $4009: $41
	ld   de, $2412                                   ; $400a: $11 $12 $24
	sbc  d                                           ; $400d: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $400e: $cf
	rst  $38                                         ; $400f: $ff
	cp   $cc                                         ; $4010: $fe $cc
	add  [hl]                                        ; $4012: $86
	ld   b, c                                        ; $4013: $41
	ld   hl, $1513                                   ; $4014: $21 $13 $15
	sbc  d                                           ; $4017: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4018: $cf
	rst  $38                                         ; $4019: $ff
	cp   $cc                                         ; $401a: $fe $cc
	add  [hl]                                        ; $401c: $86
	ld   sp, $1211                                   ; $401d: $31 $11 $12
	ld   h, $8a                                      ; $4020: $26 $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4022: $cf
	cp   $fd                                         ; $4023: $fe $fd
	res  0, [hl]                                     ; $4025: $cb $86
	ld   hl, $1211                                   ; $4027: $21 $11 $12
	ld   h, $9a                                      ; $402a: $26 $9a
	rst  JumpTable                                         ; $402c: $df
	rst  $38                                         ; $402d: $ff
	db   $fd                                         ; $402e: $fd
	call z, $2176                                    ; $402f: $cc $76 $21
	ld   de, $2513                                   ; $4032: $11 $13 $25
	xor  e                                           ; $4035: $ab
	rst  JumpTable                                         ; $4036: $df
	cp   $fd                                         ; $4037: $fe $fd
	call z, $3176                                    ; $4039: $cc $76 $31
	ld   de, $2513                                   ; $403c: $11 $13 $25
	sbc  e                                           ; $403f: $9b
	rst  JumpTable                                         ; $4040: $df
	rst  $38                                         ; $4041: $ff
	rst  $38                                         ; $4042: $ff
	cp   h                                           ; $4043: $bc
	add  [hl]                                        ; $4044: $86
	ld   sp, $1321                                   ; $4045: $31 $21 $13
	inc  h                                           ; $4048: $24
	sbc  d                                           ; $4049: $9a
	sbc  $ff                                         ; $404a: $de $ff
	rst  $38                                         ; $404c: $ff
	cp   h                                           ; $404d: $bc
	sub  a                                           ; $404e: $97
	ld   d, c                                        ; $404f: $51
	ld   de, $3312                                   ; $4050: $11 $12 $33
	ld   a, d                                        ; $4053: $7a
	adc  $ff                                         ; $4054: $ce $ff
	rst  $38                                         ; $4056: $ff
	db   $db                                         ; $4057: $db
	or   a                                           ; $4058: $b7
	ld   h, d                                        ; $4059: $62
	ld   de, $3311                                   ; $405a: $11 $11 $33
	ld   e, d                                        ; $405d: $5a
	xor  [hl]                                        ; $405e: $ae
	rst  $38                                         ; $405f: $ff
	cp   $fb                                         ; $4060: $fe $fb
	ret  z                                           ; $4062: $c8

	ld   d, h                                        ; $4063: $54
	ld   de, $3411                                   ; $4064: $11 $11 $34
	ld   e, c                                        ; $4067: $59
	cp   h                                           ; $4068: $bc
	rst  JumpTable                                         ; $4069: $df
	cp   $fb                                         ; $406a: $fe $fb
	xor  c                                           ; $406c: $a9
	ld   h, l                                        ; $406d: $65
	ld   [de], a                                     ; $406e: $12
	ld   hl, $5835                                   ; $406f: $21 $35 $58
	cp   e                                           ; $4072: $bb
	sbc  $ee                                         ; $4073: $de $ee
	db   $eb                                         ; $4075: $eb
	xor  c                                           ; $4076: $a9
	ld   [hl], l                                     ; $4077: $75
	ld   sp, $2531                                   ; $4078: $31 $31 $25
	ld   d, a                                        ; $407b: $57
	cp   d                                           ; $407c: $ba
	db   $dd                                         ; $407d: $dd
	call c, $aacc                                    ; $407e: $dc $cc $aa
	add  [hl]                                        ; $4081: $86
	ld   b, c                                        ; $4082: $41
	inc  sp                                          ; $4083: $33
	dec  d                                           ; $4084: $15
	ld   h, [hl]                                     ; $4085: $66
	xor  e                                           ; $4086: $ab
	call $ccdd                                       ; $4087: $cd $dd $cc
	xor  c                                           ; $408a: $a9
	add  [hl]                                        ; $408b: $86
	ld   d, d                                        ; $408c: $52
	inc  h                                           ; $408d: $24
	inc  h                                           ; $408e: $24
	ld   h, [hl]                                     ; $408f: $66
	adc  e                                           ; $4090: $8b
	call z, $bbcc                                    ; $4091: $cc $cc $bb
	xor  c                                           ; $4094: $a9
	sub  a                                           ; $4095: $97
	ld   h, e                                        ; $4096: $63
	inc  h                                           ; $4097: $24
	inc  sp                                          ; $4098: $33
	ld   h, [hl]                                     ; $4099: $66
	adc  e                                           ; $409a: $8b
	cp   h                                           ; $409b: $bc
	call z, $a8cc                                    ; $409c: $cc $cc $a8
	xor  b                                           ; $409f: $a8
	ld   h, l                                        ; $40a0: $65
	inc  hl                                          ; $40a1: $23
	ld   b, e                                        ; $40a2: $43
	ld   d, a                                        ; $40a3: $57
	ld   l, d                                        ; $40a4: $6a
	cp   e                                           ; $40a5: $bb
	call $c9bb                                       ; $40a6: $cd $bb $c9
	adc  c                                           ; $40a9: $89
	ld   h, [hl]                                     ; $40aa: $66
	ld   b, e                                        ; $40ab: $43
	ld   b, e                                        ; $40ac: $43
	ld   b, [hl]                                     ; $40ad: $46
	ld   a, b                                        ; $40ae: $78
	xor  e                                           ; $40af: $ab
	call z, $abca                                    ; $40b0: $cc $ca $ab
	adc  c                                           ; $40b3: $89
	add  [hl]                                        ; $40b4: $86
	ld   d, e                                        ; $40b5: $53
	ld   b, h                                        ; $40b6: $44
	ld   [hl], $77                                   ; $40b7: $36 $77
	sbc  e                                           ; $40b9: $9b
	xor  h                                           ; $40ba: $ac
	cp   d                                           ; $40bb: $ba
	xor  e                                           ; $40bc: $ab
	sbc  b                                           ; $40bd: $98
	sub  [hl]                                        ; $40be: $96
	ld   h, h                                        ; $40bf: $64
	dec  [hl]                                        ; $40c0: $35
	ld   b, h                                        ; $40c1: $44
	ld   [hl], a                                     ; $40c2: $77
	ld   a, e                                        ; $40c3: $7b
	cp   d                                           ; $40c4: $ba
	res  5, e                                        ; $40c5: $cb $ab
	cp   c                                           ; $40c7: $b9
	xor  c                                           ; $40c8: $a9
	ld   h, a                                        ; $40c9: $67
	ld   b, e                                        ; $40ca: $43
	ld   d, h                                        ; $40cb: $54
	ld   d, a                                        ; $40cc: $57
	ld   a, c                                        ; $40cd: $79
	cp   e                                           ; $40ce: $bb
	cp   h                                           ; $40cf: $bc
	xor  d                                           ; $40d0: $aa
	xor  c                                           ; $40d1: $a9
	sbc  d                                           ; $40d2: $9a
	halt                                             ; $40d3: $76
	ld   h, e                                        ; $40d4: $63
	ld   b, l                                        ; $40d5: $45
	ld   b, [hl]                                     ; $40d6: $46
	add  a                                           ; $40d7: $87
	sbc  e                                           ; $40d8: $9b
	xor  e                                           ; $40d9: $ab
	cp   e                                           ; $40da: $bb
	sbc  d                                           ; $40db: $9a
	sbc  b                                           ; $40dc: $98
	sub  a                                           ; $40dd: $97
	ld   [hl], l                                     ; $40de: $75
	ld   b, l                                        ; $40df: $45
	ld   d, h                                        ; $40e0: $54
	ld   l, b                                        ; $40e1: $68
	ld   a, d                                        ; $40e2: $7a
	xor  d                                           ; $40e3: $aa
	cp   e                                           ; $40e4: $bb
	xor  c                                           ; $40e5: $a9
	cp   b                                           ; $40e6: $b8
	sbc  c                                           ; $40e7: $99
	ld   [hl], a                                     ; $40e8: $77
	ld   d, h                                        ; $40e9: $54
	ld   d, l                                        ; $40ea: $55
	ld   b, a                                        ; $40eb: $47
	ld   [hl], a                                     ; $40ec: $77
	xor  d                                           ; $40ed: $aa
	sbc  e                                           ; $40ee: $9b
	xor  d                                           ; $40ef: $aa
	xor  e                                           ; $40f0: $ab
	adc  d                                           ; $40f1: $8a
	sub  a                                           ; $40f2: $97
	ld   [hl], l                                     ; $40f3: $75
	ld   b, l                                        ; $40f4: $45
	ld   d, h                                        ; $40f5: $54
	ld   l, b                                        ; $40f6: $68
	ld   a, d                                        ; $40f7: $7a
	sbc  c                                           ; $40f8: $99
	cp   d                                           ; $40f9: $ba
	sbc  d                                           ; $40fa: $9a
	xor  c                                           ; $40fb: $a9
	xor  c                                           ; $40fc: $a9
	ld   a, b                                        ; $40fd: $78
	ld   h, h                                        ; $40fe: $64
	ld   h, l                                        ; $40ff: $65
	ld   b, [hl]                                     ; $4100: $46
	add  a                                           ; $4101: $87
	sbc  c                                           ; $4102: $99
	sbc  e                                           ; $4103: $9b
	cp   d                                           ; $4104: $ba
	sbc  e                                           ; $4105: $9b
	sbc  c                                           ; $4106: $99
	xor  b                                           ; $4107: $a8
	add  a                                           ; $4108: $87
	ld   d, l                                        ; $4109: $55
	ld   h, l                                        ; $410a: $65
	ld   d, a                                        ; $410b: $57
	ld   a, b                                        ; $410c: $78
	xor  b                                           ; $410d: $a8
	sbc  e                                           ; $410e: $9b
	sbc  d                                           ; $410f: $9a
	xor  c                                           ; $4110: $a9
	sbc  d                                           ; $4111: $9a
	adc  b                                           ; $4112: $88
	add  [hl]                                        ; $4113: $86
	ld   d, [hl]                                     ; $4114: $56
	ld   d, l                                        ; $4115: $55
	ld   [hl], a                                     ; $4116: $77
	ld   a, c                                        ; $4117: $79
	sbc  c                                           ; $4118: $99
	xor  c                                           ; $4119: $a9
	sbc  d                                           ; $411a: $9a
	xor  c                                           ; $411b: $a9
	sbc  d                                           ; $411c: $9a
	adc  c                                           ; $411d: $89
	halt                                             ; $411e: $76
	ld   h, [hl]                                     ; $411f: $66
	ld   d, l                                        ; $4120: $55
	halt                                             ; $4121: $76
	adc  c                                           ; $4122: $89
	adc  c                                           ; $4123: $89
	sbc  c                                           ; $4124: $99
	xor  d                                           ; $4125: $aa
	sbc  c                                           ; $4126: $99
	xor  c                                           ; $4127: $a9
	sbc  b                                           ; $4128: $98
	halt                                             ; $4129: $76
	ld   h, [hl]                                     ; $412a: $66
	ld   d, [hl]                                     ; $412b: $56
	halt                                             ; $412c: $76
	adc  b                                           ; $412d: $88
	ld   a, c                                        ; $412e: $79
	xor  b                                           ; $412f: $a8
	xor  d                                           ; $4130: $aa
	xor  c                                           ; $4131: $a9
	xor  b                                           ; $4132: $a8
	adc  c                                           ; $4133: $89
	halt                                             ; $4134: $76
	halt                                             ; $4135: $76
	ld   d, [hl]                                     ; $4136: $56
	ld   [hl], a                                     ; $4137: $77
	adc  b                                           ; $4138: $88
	adc  b                                           ; $4139: $88
	sbc  c                                           ; $413a: $99
	xor  d                                           ; $413b: $aa
	xor  d                                           ; $413c: $aa
	sbc  c                                           ; $413d: $99
	sbc  c                                           ; $413e: $99
	ld   [hl], a                                     ; $413f: $77
	halt                                             ; $4140: $76
	ld   d, [hl]                                     ; $4141: $56
	halt                                             ; $4142: $76
	ld   a, b                                        ; $4143: $78
	ld   a, c                                        ; $4144: $79
	sbc  c                                           ; $4145: $99
	sbc  d                                           ; $4146: $9a
	sbc  c                                           ; $4147: $99
	sbc  d                                           ; $4148: $9a
	sbc  c                                           ; $4149: $99
	add  a                                           ; $414a: $87
	halt                                             ; $414b: $76
	ld   d, [hl]                                     ; $414c: $56
	ld   h, [hl]                                     ; $414d: $66
	ld   a, b                                        ; $414e: $78
	adc  b                                           ; $414f: $88
	sbc  c                                           ; $4150: $99
	sbc  c                                           ; $4151: $99
	sbc  c                                           ; $4152: $99
	xor  c                                           ; $4153: $a9
	sbc  c                                           ; $4154: $99
	sbc  b                                           ; $4155: $98
	ld   [hl], a                                     ; $4156: $77
	ld   h, [hl]                                     ; $4157: $66
	ld   h, [hl]                                     ; $4158: $66
	ld   [hl], a                                     ; $4159: $77
	ld   [hl], a                                     ; $415a: $77
	ld   a, c                                        ; $415b: $79
	sbc  c                                           ; $415c: $99
	sbc  c                                           ; $415d: $99
	sbc  d                                           ; $415e: $9a
	sbc  d                                           ; $415f: $9a
	xor  c                                           ; $4160: $a9
	add  a                                           ; $4161: $87
	halt                                             ; $4162: $76
	ld   h, [hl]                                     ; $4163: $66
	ld   [hl], a                                     ; $4164: $77
	ld   [hl], a                                     ; $4165: $77
	ld   [hl], a                                     ; $4166: $77
	adc  c                                           ; $4167: $89
	adc  c                                           ; $4168: $89
	xor  d                                           ; $4169: $aa
	sbc  d                                           ; $416a: $9a
	xor  d                                           ; $416b: $aa
	xor  b                                           ; $416c: $a8
	ld   [hl], a                                     ; $416d: $77
	ld   h, [hl]                                     ; $416e: $66
	ld   h, [hl]                                     ; $416f: $66
	ld   h, [hl]                                     ; $4170: $66
	ld   h, a                                        ; $4171: $67
	ld   a, b                                        ; $4172: $78
	sbc  c                                           ; $4173: $99
	sbc  d                                           ; $4174: $9a
	sbc  d                                           ; $4175: $9a
	xor  d                                           ; $4176: $aa
	xor  d                                           ; $4177: $aa
	adc  b                                           ; $4178: $88
	halt                                             ; $4179: $76
	ld   h, [hl]                                     ; $417a: $66
	ld   h, [hl]                                     ; $417b: $66
	ld   h, [hl]                                     ; $417c: $66
	ld   h, a                                        ; $417d: $67
	adc  c                                           ; $417e: $89
	sbc  d                                           ; $417f: $9a
	sbc  d                                           ; $4180: $9a
	xor  e                                           ; $4181: $ab
	cp   d                                           ; $4182: $ba
	sbc  c                                           ; $4183: $99
	add  [hl]                                        ; $4184: $86
	ld   h, [hl]                                     ; $4185: $66
	ld   h, [hl]                                     ; $4186: $66
	ld   h, [hl]                                     ; $4187: $66
	ld   h, [hl]                                     ; $4188: $66
	ld   a, b                                        ; $4189: $78
	adc  c                                           ; $418a: $89
	xor  c                                           ; $418b: $a9
	xor  d                                           ; $418c: $aa
	cp   d                                           ; $418d: $ba
	cp   d                                           ; $418e: $ba
	sbc  b                                           ; $418f: $98
	ld   h, [hl]                                     ; $4190: $66
	ld   h, [hl]                                     ; $4191: $66
	ld   h, [hl]                                     ; $4192: $66
	ld   h, [hl]                                     ; $4193: $66
	ld   h, a                                        ; $4194: $67
	adc  c                                           ; $4195: $89
	sbc  d                                           ; $4196: $9a
	sbc  d                                           ; $4197: $9a
	xor  e                                           ; $4198: $ab
	cp   d                                           ; $4199: $ba
	xor  b                                           ; $419a: $a8
	add  [hl]                                        ; $419b: $86
	ld   h, [hl]                                     ; $419c: $66
	ld   h, [hl]                                     ; $419d: $66
	ld   h, [hl]                                     ; $419e: $66
	ld   h, [hl]                                     ; $419f: $66
	ld   a, b                                        ; $41a0: $78
	sbc  c                                           ; $41a1: $99
	xor  c                                           ; $41a2: $a9
	sbc  d                                           ; $41a3: $9a
	xor  e                                           ; $41a4: $ab
	cp   d                                           ; $41a5: $ba
	sbc  b                                           ; $41a6: $98
	halt                                             ; $41a7: $76
	ld   h, [hl]                                     ; $41a8: $66
	ld   h, [hl]                                     ; $41a9: $66
	ld   h, [hl]                                     ; $41aa: $66
	ld   h, a                                        ; $41ab: $67
	ld   a, c                                        ; $41ac: $79
	adc  c                                           ; $41ad: $89
	xor  c                                           ; $41ae: $a9
	xor  d                                           ; $41af: $aa
	cp   d                                           ; $41b0: $ba
	xor  c                                           ; $41b1: $a9
	add  a                                           ; $41b2: $87
	ld   h, [hl]                                     ; $41b3: $66
	ld   h, [hl]                                     ; $41b4: $66
	ld   h, [hl]                                     ; $41b5: $66
	ld   h, [hl]                                     ; $41b6: $66
	ld   [hl], a                                     ; $41b7: $77
	adc  b                                           ; $41b8: $88
	sbc  d                                           ; $41b9: $9a
	sbc  c                                           ; $41ba: $99
	xor  e                                           ; $41bb: $ab
	cp   d                                           ; $41bc: $ba
	xor  c                                           ; $41bd: $a9
	halt                                             ; $41be: $76
	ld   h, [hl]                                     ; $41bf: $66
	ld   h, [hl]                                     ; $41c0: $66
	ld   h, [hl]                                     ; $41c1: $66
	ld   h, [hl]                                     ; $41c2: $66
	ld   a, b                                        ; $41c3: $78
	sbc  c                                           ; $41c4: $99
	xor  c                                           ; $41c5: $a9
	sbc  d                                           ; $41c6: $9a
	cp   e                                           ; $41c7: $bb
	xor  c                                           ; $41c8: $a9
	add  a                                           ; $41c9: $87
	ld   h, [hl]                                     ; $41ca: $66
	ld   h, [hl]                                     ; $41cb: $66
	ld   h, [hl]                                     ; $41cc: $66
	ld   h, [hl]                                     ; $41cd: $66
	ld   h, a                                        ; $41ce: $67
	ld   a, c                                        ; $41cf: $79
	adc  c                                           ; $41d0: $89
	xor  c                                           ; $41d1: $a9
	xor  e                                           ; $41d2: $ab
	cp   e                                           ; $41d3: $bb
	xor  c                                           ; $41d4: $a9
	add  a                                           ; $41d5: $87
	ld   h, [hl]                                     ; $41d6: $66
	ld   h, [hl]                                     ; $41d7: $66
	ld   h, [hl]                                     ; $41d8: $66
	ld   h, [hl]                                     ; $41d9: $66
	ld   [hl], a                                     ; $41da: $77
	adc  b                                           ; $41db: $88
	sbc  d                                           ; $41dc: $9a
	sbc  c                                           ; $41dd: $99
	xor  e                                           ; $41de: $ab
	cp   d                                           ; $41df: $ba
	xor  c                                           ; $41e0: $a9
	halt                                             ; $41e1: $76
	ld   h, [hl]                                     ; $41e2: $66
	ld   h, [hl]                                     ; $41e3: $66
	ld   h, [hl]                                     ; $41e4: $66
	ld   h, [hl]                                     ; $41e5: $66
	ld   a, b                                        ; $41e6: $78
	sbc  c                                           ; $41e7: $99
	xor  c                                           ; $41e8: $a9
	sbc  d                                           ; $41e9: $9a
	cp   e                                           ; $41ea: $bb
	cp   c                                           ; $41eb: $b9
	add  a                                           ; $41ec: $87
	ld   h, [hl]                                     ; $41ed: $66
	ld   h, [hl]                                     ; $41ee: $66
	ld   h, [hl]                                     ; $41ef: $66
	ld   h, [hl]                                     ; $41f0: $66
	ld   h, a                                        ; $41f1: $67
	adc  c                                           ; $41f2: $89
	sbc  d                                           ; $41f3: $9a
	sbc  c                                           ; $41f4: $99
	xor  e                                           ; $41f5: $ab
	cp   e                                           ; $41f6: $bb
	xor  c                                           ; $41f7: $a9
	halt                                             ; $41f8: $76
	ld   h, [hl]                                     ; $41f9: $66
	ld   h, [hl]                                     ; $41fa: $66
	ld   h, [hl]                                     ; $41fb: $66
	ld   h, [hl]                                     ; $41fc: $66
	ld   [hl], a                                     ; $41fd: $77
	adc  c                                           ; $41fe: $89
	sbc  d                                           ; $41ff: $9a
	sbc  d                                           ; $4200: $9a
	cp   e                                           ; $4201: $bb
	cp   d                                           ; $4202: $ba
	sbc  b                                           ; $4203: $98
	halt                                             ; $4204: $76
	ld   h, [hl]                                     ; $4205: $66
	ld   h, [hl]                                     ; $4206: $66
	ld   h, [hl]                                     ; $4207: $66
	ld   h, [hl]                                     ; $4208: $66
	ld   a, b                                        ; $4209: $78
	adc  c                                           ; $420a: $89
	xor  c                                           ; $420b: $a9
	xor  e                                           ; $420c: $ab
	cp   e                                           ; $420d: $bb
	xor  d                                           ; $420e: $aa
	sub  a                                           ; $420f: $97
	ld   h, [hl]                                     ; $4210: $66
	ld   h, [hl]                                     ; $4211: $66
	ld   h, [hl]                                     ; $4212: $66
	ld   h, [hl]                                     ; $4213: $66
	ld   h, a                                        ; $4214: $67
	adc  b                                           ; $4215: $88
	sbc  d                                           ; $4216: $9a
	sbc  d                                           ; $4217: $9a
	xor  e                                           ; $4218: $ab
	cp   d                                           ; $4219: $ba
	sbc  b                                           ; $421a: $98
	halt                                             ; $421b: $76
	ld   h, [hl]                                     ; $421c: $66
	ld   h, [hl]                                     ; $421d: $66
	ld   h, [hl]                                     ; $421e: $66
	ld   h, [hl]                                     ; $421f: $66
	ld   a, b                                        ; $4220: $78
	sbc  c                                           ; $4221: $99
	xor  c                                           ; $4222: $a9
	sbc  d                                           ; $4223: $9a
	cp   e                                           ; $4224: $bb
	cp   d                                           ; $4225: $ba
	sbc  b                                           ; $4226: $98
	ld   h, [hl]                                     ; $4227: $66
	ld   h, [hl]                                     ; $4228: $66
	ld   h, [hl]                                     ; $4229: $66
	ld   h, [hl]                                     ; $422a: $66
	ld   h, a                                        ; $422b: $67
	adc  c                                           ; $422c: $89
	sbc  d                                           ; $422d: $9a
	sbc  c                                           ; $422e: $99
	xor  e                                           ; $422f: $ab
	cp   e                                           ; $4230: $bb
	xor  c                                           ; $4231: $a9
	add  [hl]                                        ; $4232: $86
	ld   h, [hl]                                     ; $4233: $66
	ld   h, [hl]                                     ; $4234: $66
	ld   h, [hl]                                     ; $4235: $66
	ld   h, [hl]                                     ; $4236: $66
	ld   [hl], a                                     ; $4237: $77
	adc  c                                           ; $4238: $89
	xor  c                                           ; $4239: $a9
	sbc  d                                           ; $423a: $9a
	cp   e                                           ; $423b: $bb
	cp   d                                           ; $423c: $ba
	sbc  b                                           ; $423d: $98
	halt                                             ; $423e: $76
	ld   h, [hl]                                     ; $423f: $66
	ld   h, [hl]                                     ; $4240: $66
	ld   h, [hl]                                     ; $4241: $66
	ld   h, a                                        ; $4242: $67
	ld   a, b                                        ; $4243: $78
	sbc  c                                           ; $4244: $99
	sbc  d                                           ; $4245: $9a
	xor  e                                           ; $4246: $ab
	cp   e                                           ; $4247: $bb
	xor  c                                           ; $4248: $a9
	add  a                                           ; $4249: $87
	ld   h, [hl]                                     ; $424a: $66
	ld   h, [hl]                                     ; $424b: $66
	ld   h, [hl]                                     ; $424c: $66
	ld   h, [hl]                                     ; $424d: $66
	ld   [hl], a                                     ; $424e: $77
	adc  c                                           ; $424f: $89
	xor  c                                           ; $4250: $a9
	sbc  d                                           ; $4251: $9a
	xor  e                                           ; $4252: $ab
	cp   d                                           ; $4253: $ba
	sbc  b                                           ; $4254: $98
	halt                                             ; $4255: $76
	ld   h, [hl]                                     ; $4256: $66
	ld   h, [hl]                                     ; $4257: $66
	ld   h, [hl]                                     ; $4258: $66
	ld   h, a                                        ; $4259: $67
	ld   a, b                                        ; $425a: $78
	adc  c                                           ; $425b: $89
	sbc  c                                           ; $425c: $99
	xor  d                                           ; $425d: $aa
	cp   e                                           ; $425e: $bb
	xor  c                                           ; $425f: $a9
	add  a                                           ; $4260: $87
	ld   h, [hl]                                     ; $4261: $66
	ld   h, [hl]                                     ; $4262: $66
	ld   h, [hl]                                     ; $4263: $66
	ld   h, [hl]                                     ; $4264: $66
	ld   [hl], a                                     ; $4265: $77
	adc  c                                           ; $4266: $89
	sbc  c                                           ; $4267: $99
	sbc  d                                           ; $4268: $9a
	xor  e                                           ; $4269: $ab
	cp   d                                           ; $426a: $ba
	sbc  b                                           ; $426b: $98
	halt                                             ; $426c: $76
	ld   h, [hl]                                     ; $426d: $66
	ld   h, [hl]                                     ; $426e: $66
	ld   h, [hl]                                     ; $426f: $66
	ld   [hl], a                                     ; $4270: $77
	adc  c                                           ; $4271: $89
	adc  d                                           ; $4272: $8a
	xor  c                                           ; $4273: $a9
	sbc  d                                           ; $4274: $9a
	xor  d                                           ; $4275: $aa
	sbc  c                                           ; $4276: $99
	halt                                             ; $4277: $76
	ld   h, [hl]                                     ; $4278: $66
	ld   h, a                                        ; $4279: $67
	ld   [hl], a                                     ; $427a: $77
	ld   [hl], a                                     ; $427b: $77
	ld   a, b                                        ; $427c: $78
	adc  c                                           ; $427d: $89
	xor  c                                           ; $427e: $a9
	xor  c                                           ; $427f: $a9
	xor  d                                           ; $4280: $aa
	sbc  b                                           ; $4281: $98
	add  a                                           ; $4282: $87
	ld   h, [hl]                                     ; $4283: $66
	ld   h, [hl]                                     ; $4284: $66
	ld   [hl], a                                     ; $4285: $77
	ld   [hl], a                                     ; $4286: $77
	ld   a, b                                        ; $4287: $78
	adc  c                                           ; $4288: $89
	xor  c                                           ; $4289: $a9
	sbc  c                                           ; $428a: $99
	sbc  c                                           ; $428b: $99
	sbc  c                                           ; $428c: $99
	add  a                                           ; $428d: $87
	ld   h, l                                        ; $428e: $65
	ld   h, [hl]                                     ; $428f: $66
	ld   h, a                                        ; $4290: $67
	ld   [hl], a                                     ; $4291: $77
	ld   a, b                                        ; $4292: $78
	sbc  c                                           ; $4293: $99
	xor  c                                           ; $4294: $a9
	sbc  c                                           ; $4295: $99
	sbc  d                                           ; $4296: $9a
	xor  c                                           ; $4297: $a9
	sub  a                                           ; $4298: $97
	halt                                             ; $4299: $76
	ld   d, l                                        ; $429a: $55
	ld   h, a                                        ; $429b: $67
	ld   [hl], a                                     ; $429c: $77
	ld   a, b                                        ; $429d: $78
	sbc  c                                           ; $429e: $99
	sbc  d                                           ; $429f: $9a
	sbc  d                                           ; $42a0: $9a
	sbc  d                                           ; $42a1: $9a
	xor  c                                           ; $42a2: $a9
	adc  b                                           ; $42a3: $88
	halt                                             ; $42a4: $76
	ld   d, [hl]                                     ; $42a5: $56
	ld   h, [hl]                                     ; $42a6: $66
	ld   [hl], a                                     ; $42a7: $77
	ld   a, b                                        ; $42a8: $78
	sbc  c                                           ; $42a9: $99
	sbc  d                                           ; $42aa: $9a
	xor  c                                           ; $42ab: $a9
	sbc  d                                           ; $42ac: $9a
	xor  c                                           ; $42ad: $a9
	adc  b                                           ; $42ae: $88
	halt                                             ; $42af: $76
	ld   d, l                                        ; $42b0: $55
	ld   h, [hl]                                     ; $42b1: $66
	ld   [hl], a                                     ; $42b2: $77
	ld   a, b                                        ; $42b3: $78
	sbc  c                                           ; $42b4: $99
	sbc  d                                           ; $42b5: $9a
	sbc  c                                           ; $42b6: $99
	sbc  d                                           ; $42b7: $9a
	xor  c                                           ; $42b8: $a9
	sbc  b                                           ; $42b9: $98
	ld   [hl], a                                     ; $42ba: $77
	ld   d, l                                        ; $42bb: $55
	ld   h, [hl]                                     ; $42bc: $66
	ld   [hl], a                                     ; $42bd: $77
	ld   a, b                                        ; $42be: $78
	sbc  c                                           ; $42bf: $99
	sbc  d                                           ; $42c0: $9a
	xor  d                                           ; $42c1: $aa
	sbc  c                                           ; $42c2: $99
	xor  c                                           ; $42c3: $a9
	sbc  b                                           ; $42c4: $98
	ld   [hl], a                                     ; $42c5: $77
	ld   h, l                                        ; $42c6: $65
	ld   h, [hl]                                     ; $42c7: $66
	ld   h, a                                        ; $42c8: $67
	ld   a, b                                        ; $42c9: $78
	sbc  c                                           ; $42ca: $99
	sbc  d                                           ; $42cb: $9a
	xor  d                                           ; $42cc: $aa
	sbc  c                                           ; $42cd: $99
	xor  c                                           ; $42ce: $a9
	sbc  b                                           ; $42cf: $98
	ld   [hl], a                                     ; $42d0: $77
	ld   h, l                                        ; $42d1: $65
	ld   h, l                                        ; $42d2: $65
	ld   h, a                                        ; $42d3: $67
	ld   a, b                                        ; $42d4: $78
	adc  c                                           ; $42d5: $89
	xor  d                                           ; $42d6: $aa
	xor  d                                           ; $42d7: $aa
	xor  d                                           ; $42d8: $aa
	xor  d                                           ; $42d9: $aa
	sbc  b                                           ; $42da: $98
	ld   [hl], a                                     ; $42db: $77
	ld   d, l                                        ; $42dc: $55
	ld   h, l                                        ; $42dd: $65
	ld   h, a                                        ; $42de: $67
	ld   a, b                                        ; $42df: $78
	adc  c                                           ; $42e0: $89
	xor  d                                           ; $42e1: $aa
	xor  d                                           ; $42e2: $aa
	xor  d                                           ; $42e3: $aa
	sbc  c                                           ; $42e4: $99
	adc  b                                           ; $42e5: $88
	halt                                             ; $42e6: $76
	ld   d, l                                        ; $42e7: $55
	ld   d, l                                        ; $42e8: $55
	ld   h, a                                        ; $42e9: $67
	ld   a, c                                        ; $42ea: $79
	sbc  d                                           ; $42eb: $9a
	xor  d                                           ; $42ec: $aa
	xor  d                                           ; $42ed: $aa
	xor  d                                           ; $42ee: $aa
	sbc  c                                           ; $42ef: $99
	sub  a                                           ; $42f0: $97
	ld   h, [hl]                                     ; $42f1: $66
	ld   d, l                                        ; $42f2: $55
	ld   d, l                                        ; $42f3: $55
	ld   [hl], a                                     ; $42f4: $77
	adc  c                                           ; $42f5: $89
	sbc  d                                           ; $42f6: $9a
	sbc  d                                           ; $42f7: $9a
	xor  d                                           ; $42f8: $aa
	xor  d                                           ; $42f9: $aa
	xor  c                                           ; $42fa: $a9
	sub  a                                           ; $42fb: $97
	ld   h, [hl]                                     ; $42fc: $66
	ld   d, l                                        ; $42fd: $55
	ld   d, [hl]                                     ; $42fe: $56
	ld   a, b                                        ; $42ff: $78
	adc  b                                           ; $4300: $88
	sbc  c                                           ; $4301: $99
	xor  d                                           ; $4302: $aa
	cp   d                                           ; $4303: $ba
	xor  c                                           ; $4304: $a9
	sbc  c                                           ; $4305: $99
	halt                                             ; $4306: $76
	ld   h, l                                        ; $4307: $65
	ld   b, l                                        ; $4308: $45
	ld   d, [hl]                                     ; $4309: $56
	add  a                                           ; $430a: $87
	sbc  c                                           ; $430b: $99
	sbc  c                                           ; $430c: $99
	xor  d                                           ; $430d: $aa
	xor  e                                           ; $430e: $ab
	xor  d                                           ; $430f: $aa
	sbc  b                                           ; $4310: $98
	halt                                             ; $4311: $76
	ld   h, h                                        ; $4312: $64
	ld   d, l                                        ; $4313: $55
	ld   d, a                                        ; $4314: $57
	adc  b                                           ; $4315: $88
	sbc  c                                           ; $4316: $99
	xor  d                                           ; $4317: $aa
	xor  e                                           ; $4318: $ab
	xor  e                                           ; $4319: $ab
	sbc  c                                           ; $431a: $99
	add  a                                           ; $431b: $87
	ld   h, [hl]                                     ; $431c: $66
	ld   d, h                                        ; $431d: $54
	ld   d, l                                        ; $431e: $55
	ld   l, b                                        ; $431f: $68
	adc  c                                           ; $4320: $89
	xor  c                                           ; $4321: $a9
	xor  d                                           ; $4322: $aa
	xor  d                                           ; $4323: $aa
	cp   d                                           ; $4324: $ba
	xor  c                                           ; $4325: $a9
	add  [hl]                                        ; $4326: $86
	ld   h, l                                        ; $4327: $65
	ld   b, l                                        ; $4328: $45
	ld   d, [hl]                                     ; $4329: $56
	ld   a, b                                        ; $432a: $78
	adc  c                                           ; $432b: $89
	sbc  c                                           ; $432c: $99
	xor  e                                           ; $432d: $ab
	cp   d                                           ; $432e: $ba
	cp   c                                           ; $432f: $b9
	sbc  b                                           ; $4330: $98
	halt                                             ; $4331: $76
	ld   h, l                                        ; $4332: $65
	ld   b, l                                        ; $4333: $45
	ld   h, [hl]                                     ; $4334: $66
	adc  b                                           ; $4335: $88
	sbc  d                                           ; $4336: $9a
	xor  d                                           ; $4337: $aa
	cp   d                                           ; $4338: $ba
	xor  e                                           ; $4339: $ab
	xor  c                                           ; $433a: $a9
	sub  a                                           ; $433b: $97
	ld   h, [hl]                                     ; $433c: $66
	ld   d, h                                        ; $433d: $54
	ld   d, [hl]                                     ; $433e: $56
	ld   d, a                                        ; $433f: $57
	adc  b                                           ; $4340: $88
	sbc  d                                           ; $4341: $9a
	xor  d                                           ; $4342: $aa
	cp   d                                           ; $4343: $ba
	xor  d                                           ; $4344: $aa
	sbc  c                                           ; $4345: $99
	add  [hl]                                        ; $4346: $86
	ld   d, l                                        ; $4347: $55
	ld   b, h                                        ; $4348: $44
	ld   h, l                                        ; $4349: $65
	ld   a, b                                        ; $434a: $78
	adc  c                                           ; $434b: $89
	sbc  d                                           ; $434c: $9a
	sbc  e                                           ; $434d: $9b
	cp   d                                           ; $434e: $ba
	cp   d                                           ; $434f: $ba
	sbc  c                                           ; $4350: $99
	ld   h, l                                        ; $4351: $65
	ld   d, h                                        ; $4352: $54
	ld   b, l                                        ; $4353: $45
	ld   d, [hl]                                     ; $4354: $56
	adc  b                                           ; $4355: $88
	sbc  c                                           ; $4356: $99
	xor  c                                           ; $4357: $a9
	xor  d                                           ; $4358: $aa
	xor  d                                           ; $4359: $aa
	sbc  c                                           ; $435a: $99
	add  a                                           ; $435b: $87
	ld   h, [hl]                                     ; $435c: $66
	ld   d, h                                        ; $435d: $54
	ld   d, [hl]                                     ; $435e: $56
	ld   l, b                                        ; $435f: $68
	sbc  b                                           ; $4360: $98
	sbc  d                                           ; $4361: $9a
	sbc  e                                           ; $4362: $9b
	cp   d                                           ; $4363: $ba
	cp   d                                           ; $4364: $ba
	sbc  b                                           ; $4365: $98
	halt                                             ; $4366: $76
	ld   d, l                                        ; $4367: $55
	ld   b, l                                        ; $4368: $45
	ld   h, [hl]                                     ; $4369: $66
	ld   a, c                                        ; $436a: $79
	sbc  d                                           ; $436b: $9a
	xor  d                                           ; $436c: $aa
	cp   d                                           ; $436d: $ba
	xor  d                                           ; $436e: $aa
	cp   c                                           ; $436f: $b9
	adc  b                                           ; $4370: $88
	ld   d, [hl]                                     ; $4371: $56
	ld   d, h                                        ; $4372: $54
	ld   d, l                                        ; $4373: $55
	ld   h, a                                        ; $4374: $67
	sbc  c                                           ; $4375: $99
	sbc  d                                           ; $4376: $9a
	sbc  d                                           ; $4377: $9a
	cp   d                                           ; $4378: $ba
	xor  d                                           ; $4379: $aa
	sbc  b                                           ; $437a: $98
	add  [hl]                                        ; $437b: $86
	ld   d, l                                        ; $437c: $55
	ld   b, h                                        ; $437d: $44
	ld   h, l                                        ; $437e: $65
	ld   a, b                                        ; $437f: $78
	adc  c                                           ; $4380: $89
	cp   d                                           ; $4381: $ba
	sbc  e                                           ; $4382: $9b
	cp   d                                           ; $4383: $ba
	xor  c                                           ; $4384: $a9
	sbc  b                                           ; $4385: $98
	ld   h, l                                        ; $4386: $65
	ld   h, h                                        ; $4387: $64
	ld   b, [hl]                                     ; $4388: $46
	ld   h, a                                        ; $4389: $67
	sbc  b                                           ; $438a: $98
	adc  d                                           ; $438b: $8a
	xor  d                                           ; $438c: $aa
	cp   e                                           ; $438d: $bb
	sbc  d                                           ; $438e: $9a
	sbc  b                                           ; $438f: $98
	add  a                                           ; $4390: $87
	ld   d, [hl]                                     ; $4391: $56
	ld   b, h                                        ; $4392: $44
	ld   d, [hl]                                     ; $4393: $56
	ld   l, c                                        ; $4394: $69
	sbc  c                                           ; $4395: $99
	xor  d                                           ; $4396: $aa
	sbc  e                                           ; $4397: $9b
	cp   d                                           ; $4398: $ba
	cp   d                                           ; $4399: $ba
	sbc  b                                           ; $439a: $98
	ld   [hl], l                                     ; $439b: $75
	ld   d, l                                        ; $439c: $55
	ld   b, l                                        ; $439d: $45
	ld   h, [hl]                                     ; $439e: $66
	adc  b                                           ; $439f: $88
	adc  d                                           ; $43a0: $8a
	cp   d                                           ; $43a1: $ba
	cp   e                                           ; $43a2: $bb
	sbc  e                                           ; $43a3: $9b
	xor  b                                           ; $43a4: $a8
	sub  a                                           ; $43a5: $97
	ld   d, l                                        ; $43a6: $55
	ld   d, e                                        ; $43a7: $53
	ld   d, [hl]                                     ; $43a8: $56
	ld   l, b                                        ; $43a9: $68
	adc  c                                           ; $43aa: $89
	sbc  d                                           ; $43ab: $9a
	sbc  d                                           ; $43ac: $9a
	cp   c                                           ; $43ad: $b9
	cp   e                                           ; $43ae: $bb
	adc  c                                           ; $43af: $89
	ld   [hl], l                                     ; $43b0: $75
	ld   d, l                                        ; $43b1: $55
	ld   b, l                                        ; $43b2: $45
	ld   d, [hl]                                     ; $43b3: $56
	adc  c                                           ; $43b4: $89
	sbc  d                                           ; $43b5: $9a
	cp   d                                           ; $43b6: $ba
	xor  e                                           ; $43b7: $ab
	sbc  e                                           ; $43b8: $9b
	cp   c                                           ; $43b9: $b9
	sub  a                                           ; $43ba: $97
	ld   d, l                                        ; $43bb: $55
	ld   d, h                                        ; $43bc: $54
	ld   d, [hl]                                     ; $43bd: $56
	ld   d, a                                        ; $43be: $57
	adc  b                                           ; $43bf: $88
	xor  e                                           ; $43c0: $ab
	xor  c                                           ; $43c1: $a9
	cp   d                                           ; $43c2: $ba
	xor  d                                           ; $43c3: $aa
	sbc  b                                           ; $43c4: $98
	add  [hl]                                        ; $43c5: $86
	ld   d, l                                        ; $43c6: $55
	ld   b, h                                        ; $43c7: $44
	ld   h, l                                        ; $43c8: $65
	ld   a, c                                        ; $43c9: $79
	adc  c                                           ; $43ca: $89
	xor  d                                           ; $43cb: $aa
	xor  e                                           ; $43cc: $ab
	cp   c                                           ; $43cd: $b9
	cp   d                                           ; $43ce: $ba
	adc  b                                           ; $43cf: $88
	ld   h, l                                        ; $43d0: $65
	ld   d, h                                        ; $43d1: $54
	ld   b, [hl]                                     ; $43d2: $46
	ld   d, a                                        ; $43d3: $57
	sbc  c                                           ; $43d4: $99
	sbc  c                                           ; $43d5: $99
	cp   d                                           ; $43d6: $ba
	xor  e                                           ; $43d7: $ab
	sbc  e                                           ; $43d8: $9b
	xor  c                                           ; $43d9: $a9
	add  a                                           ; $43da: $87
	ld   d, l                                        ; $43db: $55
	ld   d, h                                        ; $43dc: $54
	ld   d, l                                        ; $43dd: $55
	ld   l, c                                        ; $43de: $69
	adc  c                                           ; $43df: $89
	sbc  d                                           ; $43e0: $9a
	sbc  e                                           ; $43e1: $9b
	cp   c                                           ; $43e2: $b9
	cp   d                                           ; $43e3: $ba
	sbc  c                                           ; $43e4: $99
	ld   [hl], l                                     ; $43e5: $75
	ld   d, l                                        ; $43e6: $55
	ld   b, l                                        ; $43e7: $45
	ld   h, l                                        ; $43e8: $65
	adc  c                                           ; $43e9: $89
	adc  d                                           ; $43ea: $8a
	xor  d                                           ; $43eb: $aa
	sbc  e                                           ; $43ec: $9b
	xor  d                                           ; $43ed: $aa
	xor  c                                           ; $43ee: $a9
	sbc  b                                           ; $43ef: $98
	ld   h, l                                        ; $43f0: $65
	ld   d, h                                        ; $43f1: $54
	ld   b, [hl]                                     ; $43f2: $46
	ld   d, a                                        ; $43f3: $57
	sbc  c                                           ; $43f4: $99
	sbc  d                                           ; $43f5: $9a
	xor  c                                           ; $43f6: $a9
	cp   d                                           ; $43f7: $ba
	xor  e                                           ; $43f8: $ab
	sbc  c                                           ; $43f9: $99
	add  a                                           ; $43fa: $87
	ld   d, l                                        ; $43fb: $55
	ld   d, e                                        ; $43fc: $53
	ld   h, l                                        ; $43fd: $65
	ld   l, c                                        ; $43fe: $69
	adc  c                                           ; $43ff: $89
	xor  e                                           ; $4400: $ab
	xor  d                                           ; $4401: $aa
	cp   d                                           ; $4402: $ba
	cp   d                                           ; $4403: $ba
	sbc  c                                           ; $4404: $99
	halt                                             ; $4405: $76
	ld   d, l                                        ; $4406: $55
	ld   b, l                                        ; $4407: $45
	ld   h, l                                        ; $4408: $65
	adc  b                                           ; $4409: $88
	adc  c                                           ; $440a: $89
	sbc  d                                           ; $440b: $9a
	xor  e                                           ; $440c: $ab
	xor  d                                           ; $440d: $aa
	cp   b                                           ; $440e: $b8
	xor  b                                           ; $440f: $a8
	ld   h, [hl]                                     ; $4410: $66
	ld   d, l                                        ; $4411: $55
	ld   b, [hl]                                     ; $4412: $46
	ld   d, [hl]                                     ; $4413: $56
	sbc  b                                           ; $4414: $98
	sbc  c                                           ; $4415: $99
	xor  c                                           ; $4416: $a9
	xor  d                                           ; $4417: $aa
	sbc  e                                           ; $4418: $9b
	xor  c                                           ; $4419: $a9
	sbc  b                                           ; $441a: $98
	ld   h, l                                        ; $441b: $65
	ld   d, h                                        ; $441c: $54
	ld   b, [hl]                                     ; $441d: $46
	ld   d, a                                        ; $441e: $57
	sbc  b                                           ; $441f: $98
	sbc  d                                           ; $4420: $9a
	xor  d                                           ; $4421: $aa
	xor  e                                           ; $4422: $ab
	xor  d                                           ; $4423: $aa
	xor  c                                           ; $4424: $a9
	sub  a                                           ; $4425: $97
	ld   h, l                                        ; $4426: $65
	ld   d, h                                        ; $4427: $54
	ld   d, l                                        ; $4428: $55
	ld   e, b                                        ; $4429: $58
	adc  b                                           ; $442a: $88
	xor  d                                           ; $442b: $aa
	sbc  d                                           ; $442c: $9a
	xor  d                                           ; $442d: $aa
	xor  e                                           ; $442e: $ab
	sbc  d                                           ; $442f: $9a
	sub  a                                           ; $4430: $97
	ld   d, l                                        ; $4431: $55
	ld   d, h                                        ; $4432: $54
	ld   h, l                                        ; $4433: $65
	ld   l, c                                        ; $4434: $69
	adc  c                                           ; $4435: $89
	sbc  d                                           ; $4436: $9a
	sbc  d                                           ; $4437: $9a
	xor  c                                           ; $4438: $a9
	xor  d                                           ; $4439: $aa
	sbc  d                                           ; $443a: $9a
	add  [hl]                                        ; $443b: $86
	ld   d, l                                        ; $443c: $55
	ld   b, h                                        ; $443d: $44
	ld   h, l                                        ; $443e: $65
	ld   a, b                                        ; $443f: $78
	adc  d                                           ; $4440: $8a
	sbc  d                                           ; $4441: $9a
	sbc  e                                           ; $4442: $9b
	xor  d                                           ; $4443: $aa
	xor  c                                           ; $4444: $a9
	xor  c                                           ; $4445: $a9
	halt                                             ; $4446: $76
	ld   d, l                                        ; $4447: $55
	ld   b, l                                        ; $4448: $45
	ld   h, [hl]                                     ; $4449: $66
	ld   a, b                                        ; $444a: $78
	sbc  d                                           ; $444b: $9a
	sbc  d                                           ; $444c: $9a
	xor  e                                           ; $444d: $ab
	xor  d                                           ; $444e: $aa
	cp   c                                           ; $444f: $b9
	sbc  b                                           ; $4450: $98
	halt                                             ; $4451: $76
	ld   d, l                                        ; $4452: $55
	ld   b, l                                        ; $4453: $45
	ld   d, [hl]                                     ; $4454: $56
	adc  b                                           ; $4455: $88
	sbc  d                                           ; $4456: $9a
	xor  c                                           ; $4457: $a9
	cp   e                                           ; $4458: $bb
	xor  d                                           ; $4459: $aa
	xor  c                                           ; $445a: $a9
	sbc  b                                           ; $445b: $98
	ld   [hl], l                                     ; $445c: $75
	ld   d, l                                        ; $445d: $55
	ld   b, l                                        ; $445e: $45
	ld   d, [hl]                                     ; $445f: $56
	add  a                                           ; $4460: $87
	sbc  d                                           ; $4461: $9a
	xor  c                                           ; $4462: $a9
	cp   e                                           ; $4463: $bb
	xor  e                                           ; $4464: $ab
	sbc  d                                           ; $4465: $9a
	xor  b                                           ; $4466: $a8
	ld   [hl], l                                     ; $4467: $75
	ld   d, l                                        ; $4468: $55
	ld   b, [hl]                                     ; $4469: $46
	ld   d, a                                        ; $446a: $57
	adc  b                                           ; $446b: $88
	xor  c                                           ; $446c: $a9
	xor  c                                           ; $446d: $a9
	xor  e                                           ; $446e: $ab
	xor  e                                           ; $446f: $ab
	xor  d                                           ; $4470: $aa
	sub  a                                           ; $4471: $97
	ld   h, l                                        ; $4472: $65
	ld   d, h                                        ; $4473: $54
	ld   b, [hl]                                     ; $4474: $46
	ld   d, a                                        ; $4475: $57
	ld   a, c                                        ; $4476: $79
	sbc  c                                           ; $4477: $99
	xor  d                                           ; $4478: $aa
	xor  d                                           ; $4479: $aa
	cp   e                                           ; $447a: $bb
	xor  d                                           ; $447b: $aa
	sub  a                                           ; $447c: $97
	ld   h, l                                        ; $447d: $65
	ld   d, h                                        ; $447e: $54
	ld   b, [hl]                                     ; $447f: $46
	ld   d, a                                        ; $4480: $57
	adc  c                                           ; $4481: $89
	sbc  c                                           ; $4482: $99
	xor  d                                           ; $4483: $aa
	xor  d                                           ; $4484: $aa
	cp   e                                           ; $4485: $bb
	xor  d                                           ; $4486: $aa
	add  a                                           ; $4487: $87
	ld   h, l                                        ; $4488: $65
	ld   d, h                                        ; $4489: $54
	ld   d, [hl]                                     ; $448a: $56
	ld   d, a                                        ; $448b: $57
	ld   a, c                                        ; $448c: $79
	sbc  c                                           ; $448d: $99
	xor  d                                           ; $448e: $aa
	cp   d                                           ; $448f: $ba
	xor  e                                           ; $4490: $ab
	xor  d                                           ; $4491: $aa
	sub  a                                           ; $4492: $97
	ld   h, l                                        ; $4493: $65
	ld   d, h                                        ; $4494: $54
	ld   b, [hl]                                     ; $4495: $46
	ld   d, a                                        ; $4496: $57
	adc  b                                           ; $4497: $88
	sbc  c                                           ; $4498: $99
	xor  d                                           ; $4499: $aa
	cp   e                                           ; $449a: $bb
	cp   d                                           ; $449b: $ba
	xor  d                                           ; $449c: $aa
	sub  a                                           ; $449d: $97
	ld   h, l                                        ; $449e: $65
	ld   d, h                                        ; $449f: $54
	ld   d, [hl]                                     ; $44a0: $56
	ld   d, a                                        ; $44a1: $57
	ld   a, b                                        ; $44a2: $78
	sbc  d                                           ; $44a3: $9a
	xor  d                                           ; $44a4: $aa
	cp   d                                           ; $44a5: $ba
	cp   d                                           ; $44a6: $ba
	xor  d                                           ; $44a7: $aa
	sub  a                                           ; $44a8: $97
	ld   h, l                                        ; $44a9: $65
	ld   d, h                                        ; $44aa: $54
	ld   d, [hl]                                     ; $44ab: $56
	ld   d, a                                        ; $44ac: $57
	ld   a, b                                        ; $44ad: $78
	sbc  d                                           ; $44ae: $9a
	sbc  c                                           ; $44af: $99
	jp   z, $99ba                                    ; $44b0: $ca $ba $99

	sbc  b                                           ; $44b3: $98
	ld   h, l                                        ; $44b4: $65
	ld   h, l                                        ; $44b5: $65
	ld   b, [hl]                                     ; $44b6: $46
	ld   d, [hl]                                     ; $44b7: $56
	ld   [hl], a                                     ; $44b8: $77
	adc  c                                           ; $44b9: $89
	sbc  d                                           ; $44ba: $9a
	cp   e                                           ; $44bb: $bb
	cp   e                                           ; $44bc: $bb
	xor  d                                           ; $44bd: $aa
	sbc  b                                           ; $44be: $98
	halt                                             ; $44bf: $76
	ld   h, l                                        ; $44c0: $65
	ld   b, l                                        ; $44c1: $45
	ld   d, [hl]                                     ; $44c2: $56
	ld   h, a                                        ; $44c3: $67
	ld   a, c                                        ; $44c4: $79
	sbc  c                                           ; $44c5: $99
	xor  d                                           ; $44c6: $aa
	xor  e                                           ; $44c7: $ab
	cp   d                                           ; $44c8: $ba
	sbc  d                                           ; $44c9: $9a
	add  [hl]                                        ; $44ca: $86
	ld   h, [hl]                                     ; $44cb: $66
	ld   d, l                                        ; $44cc: $55
	ld   h, l                                        ; $44cd: $65
	ld   h, a                                        ; $44ce: $67
	ld   [hl], a                                     ; $44cf: $77
	sbc  c                                           ; $44d0: $99
	sbc  e                                           ; $44d1: $9b
	xor  e                                           ; $44d2: $ab
	xor  e                                           ; $44d3: $ab
	xor  d                                           ; $44d4: $aa
	sbc  b                                           ; $44d5: $98
	ld   h, [hl]                                     ; $44d6: $66
	ld   h, l                                        ; $44d7: $65
	ld   d, [hl]                                     ; $44d8: $56
	ld   d, [hl]                                     ; $44d9: $56
	ld   h, a                                        ; $44da: $67
	ld   a, c                                        ; $44db: $79
	sbc  d                                           ; $44dc: $9a
	xor  e                                           ; $44dd: $ab
	xor  e                                           ; $44de: $ab
	cp   d                                           ; $44df: $ba
	xor  c                                           ; $44e0: $a9
	add  [hl]                                        ; $44e1: $86
	ld   h, [hl]                                     ; $44e2: $66
	ld   d, [hl]                                     ; $44e3: $56
	ld   h, l                                        ; $44e4: $65
	ld   d, [hl]                                     ; $44e5: $56
	ld   h, a                                        ; $44e6: $67
	sbc  b                                           ; $44e7: $98
	sbc  d                                           ; $44e8: $9a
	xor  d                                           ; $44e9: $aa
	cp   d                                           ; $44ea: $ba
	xor  e                                           ; $44eb: $ab
	sbc  c                                           ; $44ec: $99
	ld   [hl], a                                     ; $44ed: $77
	halt                                             ; $44ee: $76
	ld   h, [hl]                                     ; $44ef: $66
	ld   d, l                                        ; $44f0: $55
	ld   d, [hl]                                     ; $44f1: $56
	ld   l, b                                        ; $44f2: $68
	adc  b                                           ; $44f3: $88
	xor  d                                           ; $44f4: $aa
	cp   e                                           ; $44f5: $bb
	cp   e                                           ; $44f6: $bb
	xor  d                                           ; $44f7: $aa
	sbc  b                                           ; $44f8: $98
	ld   [hl], a                                     ; $44f9: $77
	ld   h, [hl]                                     ; $44fa: $66
	ld   h, l                                        ; $44fb: $65
	ld   d, l                                        ; $44fc: $55
	ld   d, [hl]                                     ; $44fd: $56
	ld   [hl], a                                     ; $44fe: $77
	ld   a, b                                        ; $44ff: $78
	sbc  d                                           ; $4500: $9a
	cp   e                                           ; $4501: $bb
	cp   e                                           ; $4502: $bb
	xor  d                                           ; $4503: $aa
	xor  b                                           ; $4504: $a8
	ld   [hl], a                                     ; $4505: $77
	ld   [hl], l                                     ; $4506: $75
	ld   h, l                                        ; $4507: $65
	ld   b, l                                        ; $4508: $45
	ld   d, l                                        ; $4509: $55
	ld   h, a                                        ; $450a: $67
	ld   a, c                                        ; $450b: $79
	xor  d                                           ; $450c: $aa
	xor  e                                           ; $450d: $ab
	cp   e                                           ; $450e: $bb
	xor  d                                           ; $450f: $aa
	xor  d                                           ; $4510: $aa
	adc  b                                           ; $4511: $88
	ld   [hl], a                                     ; $4512: $77
	ld   h, a                                        ; $4513: $67
	ld   d, l                                        ; $4514: $55
	ld   h, l                                        ; $4515: $65
	ld   d, [hl]                                     ; $4516: $56
	ld   [hl], a                                     ; $4517: $77
	sbc  c                                           ; $4518: $99
	xor  e                                           ; $4519: $ab
	cp   e                                           ; $451a: $bb
	xor  d                                           ; $451b: $aa
	xor  e                                           ; $451c: $ab
	sbc  c                                           ; $451d: $99
	sbc  b                                           ; $451e: $98
	halt                                             ; $451f: $76
	ld   h, [hl]                                     ; $4520: $66
	ld   d, l                                        ; $4521: $55
	ld   d, l                                        ; $4522: $55
	ld   d, [hl]                                     ; $4523: $56
	ld   [hl], a                                     ; $4524: $77
	sbc  c                                           ; $4525: $99
	xor  d                                           ; $4526: $aa
	xor  d                                           ; $4527: $aa
	xor  d                                           ; $4528: $aa
	cp   d                                           ; $4529: $ba
	sbc  b                                           ; $452a: $98
	add  a                                           ; $452b: $87
	ld   [hl], a                                     ; $452c: $77
	ld   h, [hl]                                     ; $452d: $66
	ld   h, [hl]                                     ; $452e: $66
	ld   d, l                                        ; $452f: $55
	ld   h, [hl]                                     ; $4530: $66
	ld   [hl], a                                     ; $4531: $77
	adc  b                                           ; $4532: $88
	xor  d                                           ; $4533: $aa
	xor  e                                           ; $4534: $ab
	cp   d                                           ; $4535: $ba
	xor  c                                           ; $4536: $a9
	sbc  c                                           ; $4537: $99
	adc  b                                           ; $4538: $88
	adc  b                                           ; $4539: $88
	ld   [hl], a                                     ; $453a: $77
	halt                                             ; $453b: $76
	ld   h, [hl]                                     ; $453c: $66
	ld   h, [hl]                                     ; $453d: $66
	ld   [hl], a                                     ; $453e: $77
	ld   a, b                                        ; $453f: $78
	sbc  c                                           ; $4540: $99
	sbc  c                                           ; $4541: $99
	sbc  c                                           ; $4542: $99
	sbc  d                                           ; $4543: $9a
	xor  c                                           ; $4544: $a9
	sbc  b                                           ; $4545: $98
	sbc  b                                           ; $4546: $98
	adc  b                                           ; $4547: $88
	ld   [hl], a                                     ; $4548: $77
	ld   [hl], a                                     ; $4549: $77
	halt                                             ; $454a: $76
	ld   h, [hl]                                     ; $454b: $66
	ld   [hl], a                                     ; $454c: $77
	ld   a, b                                        ; $454d: $78
	adc  c                                           ; $454e: $89
	adc  b                                           ; $454f: $88
	sbc  c                                           ; $4550: $99
	sbc  c                                           ; $4551: $99
	sbc  c                                           ; $4552: $99
	sbc  c                                           ; $4553: $99
	sbc  c                                           ; $4554: $99
	adc  c                                           ; $4555: $89
	sbc  b                                           ; $4556: $98
	add  a                                           ; $4557: $87
	ld   [hl], a                                     ; $4558: $77
	ld   h, [hl]                                     ; $4559: $66
	ld   h, [hl]                                     ; $455a: $66
	ld   h, a                                        ; $455b: $67
	ld   [hl], a                                     ; $455c: $77
	adc  b                                           ; $455d: $88
	sbc  b                                           ; $455e: $98
	sbc  c                                           ; $455f: $99
	sbc  d                                           ; $4560: $9a
	xor  d                                           ; $4561: $aa
	sbc  c                                           ; $4562: $99
	sbc  c                                           ; $4563: $99
	adc  c                                           ; $4564: $89
	adc  b                                           ; $4565: $88
	ld   [hl], a                                     ; $4566: $77
	ld   [hl], a                                     ; $4567: $77
	ld   h, [hl]                                     ; $4568: $66
	ld   h, a                                        ; $4569: $67
	ld   [hl], a                                     ; $456a: $77
	ld   a, b                                        ; $456b: $78
	adc  c                                           ; $456c: $89
	adc  c                                           ; $456d: $89
	sbc  c                                           ; $456e: $99
	sbc  c                                           ; $456f: $99
	sbc  c                                           ; $4570: $99
	sbc  b                                           ; $4571: $98
	sbc  c                                           ; $4572: $99
	adc  b                                           ; $4573: $88
	add  a                                           ; $4574: $87
	ld   [hl], a                                     ; $4575: $77
	ld   [hl], a                                     ; $4576: $77
	ld   [hl], a                                     ; $4577: $77
	ld   [hl], a                                     ; $4578: $77
	ld   [hl], a                                     ; $4579: $77
	adc  b                                           ; $457a: $88
	adc  c                                           ; $457b: $89
	adc  b                                           ; $457c: $88
	sbc  c                                           ; $457d: $99
	adc  c                                           ; $457e: $89
	sbc  b                                           ; $457f: $98
	sbc  c                                           ; $4580: $99
	sbc  b                                           ; $4581: $98
	adc  b                                           ; $4582: $88
	add  a                                           ; $4583: $87
	ld   [hl], a                                     ; $4584: $77
	ld   [hl], a                                     ; $4585: $77
	ld   [hl], a                                     ; $4586: $77
	ld   [hl], a                                     ; $4587: $77
	ld   a, b                                        ; $4588: $78
	adc  b                                           ; $4589: $88
	adc  c                                           ; $458a: $89
	sbc  c                                           ; $458b: $99
	adc  b                                           ; $458c: $88
	adc  b                                           ; $458d: $88
	sbc  c                                           ; $458e: $99
	sbc  c                                           ; $458f: $99
	sbc  b                                           ; $4590: $98
	adc  b                                           ; $4591: $88
	add  a                                           ; $4592: $87
	ld   [hl], a                                     ; $4593: $77
	ld   [hl], a                                     ; $4594: $77
	ld   [hl], a                                     ; $4595: $77
	ld   a, b                                        ; $4596: $78
	adc  b                                           ; $4597: $88
	adc  b                                           ; $4598: $88
	adc  b                                           ; $4599: $88
	sbc  c                                           ; $459a: $99
	sbc  c                                           ; $459b: $99
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
	adc  c                                           ; $46c1: $89
	add  a                                           ; $46c2: $87
	ld   a, b                                        ; $46c3: $78
	sbc  b                                           ; $46c4: $98
	sbc  b                                           ; $46c5: $98
	ld   a, b                                        ; $46c6: $78
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
	sbc  b                                           ; $46d9: $98
	adc  b                                           ; $46da: $88
	adc  b                                           ; $46db: $88
	adc  b                                           ; $46dc: $88
	sbc  b                                           ; $46dd: $98
	adc  b                                           ; $46de: $88
	adc  c                                           ; $46df: $89
	adc  b                                           ; $46e0: $88
	ld   a, b                                        ; $46e1: $78
	adc  b                                           ; $46e2: $88
	add  a                                           ; $46e3: $87
	adc  b                                           ; $46e4: $88
	adc  b                                           ; $46e5: $88
	adc  b                                           ; $46e6: $88
	adc  b                                           ; $46e7: $88
	adc  b                                           ; $46e8: $88
	adc  c                                           ; $46e9: $89
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
	add  a                                           ; $46f8: $87
	adc  b                                           ; $46f9: $88
	adc  b                                           ; $46fa: $88
	adc  b                                           ; $46fb: $88
	adc  c                                           ; $46fc: $89
	adc  b                                           ; $46fd: $88
	adc  b                                           ; $46fe: $88
	adc  b                                           ; $46ff: $88
	adc  b                                           ; $4700: $88
	adc  b                                           ; $4701: $88
	adc  b                                           ; $4702: $88
	adc  c                                           ; $4703: $89
	adc  b                                           ; $4704: $88
	adc  b                                           ; $4705: $88
	add  a                                           ; $4706: $87
	sub  a                                           ; $4707: $97
	sbc  b                                           ; $4708: $98
	adc  b                                           ; $4709: $88
	adc  b                                           ; $470a: $88
	adc  c                                           ; $470b: $89
	sbc  b                                           ; $470c: $98
	adc  b                                           ; $470d: $88
	adc  b                                           ; $470e: $88
	sbc  b                                           ; $470f: $98
	ld   a, b                                        ; $4710: $78
	adc  b                                           ; $4711: $88
	sbc  c                                           ; $4712: $99
	ld   a, b                                        ; $4713: $78
	sub  a                                           ; $4714: $97
	adc  b                                           ; $4715: $88
	add  a                                           ; $4716: $87
	adc  c                                           ; $4717: $89
	ld   a, b                                        ; $4718: $78
	sbc  b                                           ; $4719: $98
	adc  b                                           ; $471a: $88
	adc  b                                           ; $471b: $88
	sbc  b                                           ; $471c: $98
	ld   a, b                                        ; $471d: $78
	ld   [hl], a                                     ; $471e: $77
	xor  d                                           ; $471f: $aa
	sub  a                                           ; $4720: $97
	ld   [hl], a                                     ; $4721: $77
	adc  c                                           ; $4722: $89
	adc  b                                           ; $4723: $88
	sub  a                                           ; $4724: $97
	ld   a, b                                        ; $4725: $78
	ld   [hl], a                                     ; $4726: $77
	sbc  b                                           ; $4727: $98
	ld   a, b                                        ; $4728: $78
	adc  c                                           ; $4729: $89
	adc  b                                           ; $472a: $88
	adc  b                                           ; $472b: $88
	sbc  c                                           ; $472c: $99
	sbc  b                                           ; $472d: $98
	xor  b                                           ; $472e: $a8
	adc  c                                           ; $472f: $89
	add  a                                           ; $4730: $87
	add  a                                           ; $4731: $87
	ld   h, a                                        ; $4732: $67
	ld   h, [hl]                                     ; $4733: $66
	ld   h, a                                        ; $4734: $67
	ld   [hl], a                                     ; $4735: $77
	adc  c                                           ; $4736: $89
	sbc  c                                           ; $4737: $99
	xor  d                                           ; $4738: $aa
	cp   d                                           ; $4739: $ba
	xor  c                                           ; $473a: $a9
	sbc  b                                           ; $473b: $98
	ld   [hl], a                                     ; $473c: $77
	ld   h, [hl]                                     ; $473d: $66
	ld   h, [hl]                                     ; $473e: $66
	ld   d, l                                        ; $473f: $55
	ld   h, [hl]                                     ; $4740: $66
	ld   h, a                                        ; $4741: $67
	adc  b                                           ; $4742: $88
	xor  d                                           ; $4743: $aa
	xor  d                                           ; $4744: $aa
	jp   z, $99aa                                    ; $4745: $ca $aa $99

	sbc  c                                           ; $4748: $99
	ld   [hl], l                                     ; $4749: $75
	ld   d, h                                        ; $474a: $54
	ld   b, l                                        ; $474b: $45
	ld   d, l                                        ; $474c: $55
	ld   d, [hl]                                     ; $474d: $56
	ld   a, b                                        ; $474e: $78
	xor  c                                           ; $474f: $a9
	set  1, l                                        ; $4750: $cb $cd
	res  5, d                                        ; $4752: $cb $aa
	sbc  c                                           ; $4754: $99
	add  [hl]                                        ; $4755: $86
	ld   d, e                                        ; $4756: $53
	inc  sp                                          ; $4757: $33
	inc  [hl]                                        ; $4758: $34
	ld   d, [hl]                                     ; $4759: $56
	ld   a, b                                        ; $475a: $78
	sbc  e                                           ; $475b: $9b
	call $ccdd                                       ; $475c: $cd $dd $cc
	cp   d                                           ; $475f: $ba
	sbc  c                                           ; $4760: $99
	add  [hl]                                        ; $4761: $86
	ld   d, d                                        ; $4762: $52
	ld   de, $4624                                   ; $4763: $11 $24 $46
	ld   a, b                                        ; $4766: $78
	xor  h                                           ; $4767: $ac
	db   $dd                                         ; $4768: $dd
	xor  $dd                                         ; $4769: $ee $dd
	jp   z, Jump_0ad_7487                            ; $476b: $ca $87 $74

	ld   sp, $3411                                   ; $476e: $31 $11 $34
	ld   b, a                                        ; $4771: $47
	sbc  d                                           ; $4772: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4773: $cf
	rst  $38                                         ; $4774: $ff
	xor  $bb                                         ; $4775: $ee $bb
	sub  a                                           ; $4777: $97
	ld   h, [hl]                                     ; $4778: $66
	ld   b, d                                        ; $4779: $42
	ld   de, $5613                                   ; $477a: $11 $13 $56
	sbc  d                                           ; $477d: $9a
	cp   l                                           ; $477e: $bd
	rst  $38                                         ; $477f: $ff
	db   $fd                                         ; $4780: $fd
	res  2, a                                        ; $4781: $cb $97
	ld   h, l                                        ; $4783: $65
	ld   b, e                                        ; $4784: $43
	ld   de, $6612                                   ; $4785: $11 $12 $66
	sbc  e                                           ; $4788: $9b
	adc  $ff                                         ; $4789: $ce $ff
	db   $fd                                         ; $478b: $fd
	jp   z, Jump_0ad_6587                            ; $478c: $ca $87 $65

	ld   b, e                                        ; $478f: $43
	ld   hl, $6713                                   ; $4790: $21 $13 $67
	adc  h                                           ; $4793: $8c
	db   $dd                                         ; $4794: $dd
	rst  $28                                         ; $4795: $ef
	db   $ec                                         ; $4796: $ec
	cp   d                                           ; $4797: $ba
	halt                                             ; $4798: $76
	ld   [hl], h                                     ; $4799: $74
	ld   b, h                                        ; $479a: $44
	ld   sp, $6813                                   ; $479b: $31 $13 $68
	adc  e                                           ; $479e: $8b
	call $ebcf                                       ; $479f: $cd $cf $eb
	xor  c                                           ; $47a2: $a9
	add  l                                           ; $47a3: $85
	ld   [hl], l                                     ; $47a4: $75
	ld   b, h                                        ; $47a5: $44
	ld   hl, $7815                                   ; $47a6: $21 $15 $78
	xor  h                                           ; $47a9: $ac
	db   $ed                                         ; $47aa: $ed
	rst  $28                                         ; $47ab: $ef
	db   $db                                         ; $47ac: $db
	sbc  b                                           ; $47ad: $98
	ld   d, l                                        ; $47ae: $55
	ld   h, h                                        ; $47af: $64
	ld   b, e                                        ; $47b0: $43
	ld   hl, $9937                                   ; $47b1: $21 $37 $99
	cp   [hl]                                        ; $47b4: $be
	sbc  $ee                                         ; $47b5: $de $ee
	xor  c                                           ; $47b7: $a9
	add  l                                           ; $47b8: $85
	ld   d, l                                        ; $47b9: $55
	ld   d, e                                        ; $47ba: $53
	ld   b, h                                        ; $47bb: $44
	ld   [hl+], a                                    ; $47bc: $22
	ld   e, c                                        ; $47bd: $59
	adc  d                                           ; $47be: $8a
	xor  $fd                                         ; $47bf: $ee $fd
	db   $fc                                         ; $47c1: $fc
	ld   [hl], a                                     ; $47c2: $77
	ld   d, l                                        ; $47c3: $55
	ld   b, l                                        ; $47c4: $45
	ld   d, e                                        ; $47c5: $53
	ld   b, d                                        ; $47c6: $42
	inc  [hl]                                        ; $47c7: $34
	ld   a, d                                        ; $47c8: $7a
	cp   l                                           ; $47c9: $bd
	xor  $ed                                         ; $47ca: $ee $ed
	reti                                             ; $47cc: $d9


	halt                                             ; $47cd: $76
	ld   d, l                                        ; $47ce: $55
	ld   d, [hl]                                     ; $47cf: $56
	ld   b, l                                        ; $47d0: $45
	ld   b, e                                        ; $47d1: $43
	dec  [hl]                                        ; $47d2: $35
	xor  d                                           ; $47d3: $aa
	xor  a                                           ; $47d4: $af
	rst  JumpTable                                         ; $47d5: $df
	db   $dd                                         ; $47d6: $dd
	and  [hl]                                        ; $47d7: $a6
	add  h                                           ; $47d8: $84
	ld   h, l                                        ; $47d9: $65
	ld   h, h                                        ; $47da: $64
	dec  [hl]                                        ; $47db: $35
	inc  sp                                          ; $47dc: $33
	add  hl, sp                                      ; $47dd: $39
	xor  d                                           ; $47de: $aa
	call z, $dbdd                                    ; $47df: $cc $dd $db
	add  a                                           ; $47e2: $87
	ld   h, l                                        ; $47e3: $65
	halt                                             ; $47e4: $76
	halt                                             ; $47e5: $76
	ld   d, h                                        ; $47e6: $54
	inc  hl                                          ; $47e7: $23
	ld   c, c                                        ; $47e8: $49
	adc  c                                           ; $47e9: $89
	adc  $ed                                         ; $47ea: $ce $ed
	db   $ed                                         ; $47ec: $ed
	add  [hl]                                        ; $47ed: $86
	halt                                             ; $47ee: $76
	ld   d, [hl]                                     ; $47ef: $56
	ld   h, [hl]                                     ; $47f0: $66
	ld   d, h                                        ; $47f1: $54
	ld   b, h                                        ; $47f2: $44
	add  hl, sp                                      ; $47f3: $39
	xor  d                                           ; $47f4: $aa
	jp   z, $bceb                                    ; $47f5: $ca $eb $bc

	adc  b                                           ; $47f8: $88
	ld   l, c                                        ; $47f9: $69
	ld   h, [hl]                                     ; $47fa: $66
	ld   d, h                                        ; $47fb: $54
	ld   b, e                                        ; $47fc: $43
	inc  sp                                          ; $47fd: $33
	ld   a, c                                        ; $47fe: $79
	adc  d                                           ; $47ff: $8a
	cp   $bb                                         ; $4800: $fe $bb
	ld   [$7669], a                                  ; $4802: $ea $69 $76
	ld   e, b                                        ; $4805: $58
	halt                                             ; $4806: $76
	ld   h, h                                        ; $4807: $64
	ld   b, h                                        ; $4808: $44
	ld   e, b                                        ; $4809: $58
	xor  d                                           ; $480a: $aa
	cp   h                                           ; $480b: $bc
	set  3, e                                        ; $480c: $cb $db
	adc  b                                           ; $480e: $88
	ld   [hl], a                                     ; $480f: $77
	ld   h, [hl]                                     ; $4810: $66
	ld   h, l                                        ; $4811: $65
	ld   d, h                                        ; $4812: $54
	ld   b, h                                        ; $4813: $44
	ld   c, b                                        ; $4814: $48
	res  5, h                                        ; $4815: $cb $ac
	cp   d                                           ; $4817: $ba
	xor  h                                           ; $4818: $ac
	sub  [hl]                                        ; $4819: $96
	add  [hl]                                        ; $481a: $86
	ld   e, c                                        ; $481b: $59
	sub  [hl]                                        ; $481c: $96
	ld   d, l                                        ; $481d: $55

jr_0ad_481e:
	ld   b, e                                        ; $481e: $43
	ld   c, c                                        ; $481f: $49
	cp   d                                           ; $4820: $ba
	sbc  c                                           ; $4821: $99
	ret                                              ; $4822: $c9


	xor  h                                           ; $4823: $ac
	sbc  b                                           ; $4824: $98
	ld   a, b                                        ; $4825: $78
	ld   [hl], a                                     ; $4826: $77
	ld   [hl], l                                     ; $4827: $75
	ld   b, h                                        ; $4828: $44
	ld   d, [hl]                                     ; $4829: $56
	halt                                             ; $482a: $76
	sbc  b                                           ; $482b: $98
	adc  h                                           ; $482c: $8c
	db   $eb                                         ; $482d: $eb
	sbc  e                                           ; $482e: $9b
	and  a                                           ; $482f: $a7
	ld   a, d                                        ; $4830: $7a
	add  [hl]                                        ; $4831: $86
	ld   h, [hl]                                     ; $4832: $66
	ld   b, h                                        ; $4833: $44
	ld   d, l                                        ; $4834: $55
	ld   h, [hl]                                     ; $4835: $66
	xor  e                                           ; $4836: $ab
	add  [hl]                                        ; $4837: $86
	sbc  l                                           ; $4838: $9d
	cp   e                                           ; $4839: $bb
	xor  c                                           ; $483a: $a9
	add  [hl]                                        ; $483b: $86
	ld   [hl], a                                     ; $483c: $77
	adc  b                                           ; $483d: $88
	ld   h, a                                        ; $483e: $67
	ld   h, e                                        ; $483f: $63
	ld   b, [hl]                                     ; $4840: $46
	ld   l, c                                        ; $4841: $69
	sbc  e                                           ; $4842: $9b
	xor  d                                           ; $4843: $aa
	cp   d                                           ; $4844: $ba
	xor  c                                           ; $4845: $a9
	xor  d                                           ; $4846: $aa
	adc  b                                           ; $4847: $88
	halt                                             ; $4848: $76
	ld   d, l                                        ; $4849: $55
	ld   h, l                                        ; $484a: $65
	ld   d, [hl]                                     ; $484b: $56
	adc  c                                           ; $484c: $89
	sbc  c                                           ; $484d: $99
	adc  d                                           ; $484e: $8a
	cp   d                                           ; $484f: $ba
	cp   d                                           ; $4850: $ba
	sub  a                                           ; $4851: $97
	ld   l, b                                        ; $4852: $68
	ld   a, d                                        ; $4853: $7a
	sub  a                                           ; $4854: $97
	ld   [hl], l                                     ; $4855: $75
	ld   b, e                                        ; $4856: $43
	ld   [hl], a                                     ; $4857: $77
	ld   l, d                                        ; $4858: $6a
	or   a                                           ; $4859: $b7
	ld   e, h                                        ; $485a: $5c
	jp   c, $a39c                                    ; $485b: $da $9c $a3

	ld   l, c                                        ; $485e: $69
	add  a                                           ; $485f: $87
	ld   b, a                                        ; $4860: $47
	ld   h, h                                        ; $4861: $64
	ld   d, a                                        ; $4862: $57
	add  a                                           ; $4863: $87
	sbc  d                                           ; $4864: $9a
	ld   l, d                                        ; $4865: $6a
	ei                                               ; $4866: $fb
	xor  d                                           ; $4867: $aa
	and  [hl]                                        ; $4868: $a6
	ld   c, c                                        ; $4869: $49
	ld   a, c                                        ; $486a: $79
	ld   a, b                                        ; $486b: $78
	ld   [hl], e                                     ; $486c: $73
	ld   b, l                                        ; $486d: $45
	ld   a, d                                        ; $486e: $7a
	xor  c                                           ; $486f: $a9
	ld   a, c                                        ; $4870: $79
	or   a                                           ; $4871: $b7
	sbc  e                                           ; $4872: $9b
	cp   d                                           ; $4873: $ba
	ld   h, a                                        ; $4874: $67
	ld   d, [hl]                                     ; $4875: $56
	ld   l, b                                        ; $4876: $68
	or   a                                           ; $4877: $b7
	inc  sp                                          ; $4878: $33
	ld   [hl], a                                     ; $4879: $77
	adc  d                                           ; $487a: $8a
	cp   b                                           ; $487b: $b8
	ld   l, d                                        ; $487c: $6a
	xor  h                                           ; $487d: $ac
	xor  e                                           ; $487e: $ab
	or   [hl]                                        ; $487f: $b6
	ld   b, a                                        ; $4880: $47
	xor  b                                           ; $4881: $a8
	ld   l, d                                        ; $4882: $6a
	add  d                                           ; $4883: $82
	jr   c, jr_0ad_481e                              ; $4884: $38 $98

	sbc  e                                           ; $4886: $9b
	ld   [hl], l                                     ; $4887: $75
	xor  d                                           ; $4888: $aa
	jp   z, Jump_0ad_6987                            ; $4889: $ca $87 $69

	ld   l, b                                        ; $488c: $68
	sub  a                                           ; $488d: $97
	ld   h, l                                        ; $488e: $65
	ld   h, h                                        ; $488f: $64
	ld   a, d                                        ; $4890: $7a
	xor  d                                           ; $4891: $aa
	add  a                                           ; $4892: $87
	ld   l, d                                        ; $4893: $6a
	xor  d                                           ; $4894: $aa
	sbc  c                                           ; $4895: $99
	cp   b                                           ; $4896: $b8
	halt                                             ; $4897: $76
	ld   [hl], a                                     ; $4898: $77
	ld   e, c                                        ; $4899: $59

jr_0ad_489a:
	and  h                                           ; $489a: $a4
	ld   h, $a9                                      ; $489b: $26 $a9
	adc  b                                           ; $489d: $88
	adc  c                                           ; $489e: $89
	ld   a, b                                        ; $489f: $78
	xor  h                                           ; $48a0: $ac
	res  0, l                                        ; $48a1: $cb $85
	ld   d, a                                        ; $48a3: $57
	ld   a, b                                        ; $48a4: $78
	add  [hl]                                        ; $48a5: $86
	ld   b, e                                        ; $48a6: $43
	ld   l, d                                        ; $48a7: $6a
	sbc  b                                           ; $48a8: $98
	cp   b                                           ; $48a9: $b8
	ld   h, a                                        ; $48aa: $67
	cp   l                                           ; $48ab: $bd
	adc  b                                           ; $48ac: $88
	xor  c                                           ; $48ad: $a9
	halt                                             ; $48ae: $76
	sbc  c                                           ; $48af: $99
	ld   d, [hl]                                     ; $48b0: $56
	adc  b                                           ; $48b1: $88
	inc  [hl]                                        ; $48b2: $34
	adc  d                                           ; $48b3: $8a
	ld   a, c                                        ; $48b4: $79
	ret  c                                           ; $48b5: $d8

	ld   h, a                                        ; $48b6: $67
	cp   e                                           ; $48b7: $bb
	adc  d                                           ; $48b8: $8a
	adc  b                                           ; $48b9: $88
	add  a                                           ; $48ba: $87
	cp   c                                           ; $48bb: $b9
	ld   h, h                                        ; $48bc: $64
	ld   d, [hl]                                     ; $48bd: $56
	ld   d, a                                        ; $48be: $57
	xor  d                                           ; $48bf: $aa
	add  [hl]                                        ; $48c0: $86
	ld   l, c                                        ; $48c1: $69
	jp   z, $b79b                                    ; $48c2: $ca $9b $b7

	ld   d, [hl]                                     ; $48c5: $56
	ld   l, b                                        ; $48c6: $68
	sbc  c                                           ; $48c7: $99
	ld   [hl], l                                     ; $48c8: $75
	ld   b, h                                        ; $48c9: $44
	sbc  d                                           ; $48ca: $9a
	xor  d                                           ; $48cb: $aa
	ld   h, e                                        ; $48cc: $63
	sbc  a                                           ; $48cd: $9f
	rst  ToBoot                                         ; $48ce: $c7
	xor  d                                           ; $48cf: $aa
	ld   h, h                                        ; $48d0: $64
	ld   l, c                                        ; $48d1: $69
	and  a                                           ; $48d2: $a7
	adc  c                                           ; $48d3: $89
	ld   [hl], d                                     ; $48d4: $72
	ld   c, c                                        ; $48d5: $49
	cp   c                                           ; $48d6: $b9
	sbc  c                                           ; $48d7: $99
	ld   h, a                                        ; $48d8: $67
	sbc  b                                           ; $48d9: $98
	xor  e                                           ; $48da: $ab
	xor  c                                           ; $48db: $a9
	ld   [hl], a                                     ; $48dc: $77
	sbc  c                                           ; $48dd: $99
	halt                                             ; $48de: $76
	ld   d, e                                        ; $48df: $53
	jr   c, jr_0ad_489a                              ; $48e0: $38 $b8

	ld   a, d                                        ; $48e2: $7a
	sub  [hl]                                        ; $48e3: $96
	sbc  e                                           ; $48e4: $9b
	cp   c                                           ; $48e5: $b9
	xor  e                                           ; $48e6: $ab
	add  a                                           ; $48e7: $87
	ld   b, [hl]                                     ; $48e8: $46
	adc  c                                           ; $48e9: $89
	sub  a                                           ; $48ea: $97
	ld   d, d                                        ; $48eb: $52
	ld   c, d                                        ; $48ec: $4a
	cp   b                                           ; $48ed: $b8
	ld   h, a                                        ; $48ee: $67
	xor  e                                           ; $48ef: $ab
	xor  e                                           ; $48f0: $ab
	cp   c                                           ; $48f1: $b9
	ld   d, l                                        ; $48f2: $55
	adc  d                                           ; $48f3: $8a
	add  [hl]                                        ; $48f4: $86
	ld   a, c                                        ; $48f5: $79
	ld   h, d                                        ; $48f6: $62
	ld   e, d                                        ; $48f7: $5a
	sbc  b                                           ; $48f8: $98
	adc  c                                           ; $48f9: $89
	ld   h, [hl]                                     ; $48fa: $66
	ld   a, e                                        ; $48fb: $7b
	db   $eb                                         ; $48fc: $eb
	add  l                                           ; $48fd: $85
	sbc  b                                           ; $48fe: $98
	adc  e                                           ; $48ff: $8b
	xor  b                                           ; $4900: $a8
	ld   hl, $9948                                   ; $4901: $21 $48 $99
	sbc  b                                           ; $4904: $98
	ld   b, l                                        ; $4905: $45
	cp   l                                           ; $4906: $bd
	cp   c                                           ; $4907: $b9
	xor  e                                           ; $4908: $ab
	ld   d, l                                        ; $4909: $55
	sbc  h                                           ; $490a: $9c
	sub  l                                           ; $490b: $95
	ld   [hl], a                                     ; $490c: $77
	ld   [hl-], a                                    ; $490d: $32
	ld   e, c                                        ; $490e: $59
	ret                                              ; $490f: $c9


	adc  c                                           ; $4910: $89
	adc  d                                           ; $4911: $8a
	adc  e                                           ; $4912: $8b
	ret                                              ; $4913: $c9


	sub  h                                           ; $4914: $94
	ld   a, c                                        ; $4915: $79
	adc  b                                           ; $4916: $88
	ld   l, b                                        ; $4917: $68
	ld   b, h                                        ; $4918: $44
	ld   l, c                                        ; $4919: $69
	xor  b                                           ; $491a: $a8
	add  [hl]                                        ; $491b: $86
	adc  d                                           ; $491c: $8a
	cp   h                                           ; $491d: $bc
	sbc  c                                           ; $491e: $99
	ld   [hl], l                                     ; $491f: $75
	ld   a, c                                        ; $4920: $79
	xor  b                                           ; $4921: $a8
	ld   [hl], l                                     ; $4922: $75
	inc  hl                                          ; $4923: $23
	ld   a, e                                        ; $4924: $7b
	xor  c                                           ; $4925: $a9
	sub  [hl]                                        ; $4926: $96
	ld   a, c                                        ; $4927: $79
	cp   h                                           ; $4928: $bc
	ret  z                                           ; $4929: $c8

	ld   d, l                                        ; $492a: $55
	adc  d                                           ; $492b: $8a
	sbc  b                                           ; $492c: $98
	halt                                             ; $492d: $76
	ld   d, h                                        ; $492e: $54
	ld   d, a                                        ; $492f: $57
	sbc  c                                           ; $4930: $99
	adc  b                                           ; $4931: $88
	adc  d                                           ; $4932: $8a
	cp   d                                           ; $4933: $ba
	cp   c                                           ; $4934: $b9
	ld   [hl], l                                     ; $4935: $75
	ld   l, b                                        ; $4936: $68
	xor  d                                           ; $4937: $aa
	ld   h, l                                        ; $4938: $65
	ld   d, l                                        ; $4939: $55
	ld   l, c                                        ; $493a: $69
	cp   c                                           ; $493b: $b9
	ld   a, b                                        ; $493c: $78
	cp   e                                           ; $493d: $bb
	adc  b                                           ; $493e: $88
	adc  c                                           ; $493f: $89
	and  a                                           ; $4940: $a7
	adc  b                                           ; $4941: $88
	add  [hl]                                        ; $4942: $86
	ld   l, c                                        ; $4943: $69
	ld   h, h                                        ; $4944: $64
	ld   b, a                                        ; $4945: $47
	adc  b                                           ; $4946: $88
	xor  c                                           ; $4947: $a9
	ld   a, b                                        ; $4948: $78
	xor  e                                           ; $4949: $ab
	db   $db                                         ; $494a: $db
	add  [hl]                                        ; $494b: $86
	ld   a, c                                        ; $494c: $79
	sbc  c                                           ; $494d: $99
	ld   h, [hl]                                     ; $494e: $66
	ld   h, e                                        ; $494f: $63
	ld   [hl], $a9                                   ; $4950: $36 $a9
	ld   a, b                                        ; $4952: $78
	xor  d                                           ; $4953: $aa
	xor  e                                           ; $4954: $ab
	ret                                              ; $4955: $c9


	ld   h, [hl]                                     ; $4956: $66
	ld   a, d                                        ; $4957: $7a
	add  a                                           ; $4958: $87
	ld   h, [hl]                                     ; $4959: $66
	ld   d, e                                        ; $495a: $53
	ld   d, a                                        ; $495b: $57
	cp   l                                           ; $495c: $bd
	sub  [hl]                                        ; $495d: $96
	ld   l, e                                        ; $495e: $6b
	cp   d                                           ; $495f: $ba
	cp   d                                           ; $4960: $ba
	add  l                                           ; $4961: $85
	ld   d, a                                        ; $4962: $57
	adc  b                                           ; $4963: $88
	ld   d, l                                        ; $4964: $55
	ld   d, h                                        ; $4965: $54
	ld   l, c                                        ; $4966: $69
	xor  d                                           ; $4967: $aa
	adc  c                                           ; $4968: $89
	ld   a, c                                        ; $4969: $79
	sbc  $c6                                         ; $496a: $de $c6
	ld   h, l                                        ; $496c: $65
	ld   l, c                                        ; $496d: $69
	adc  b                                           ; $496e: $88
	ld   h, l                                        ; $496f: $65
	inc  [hl]                                        ; $4970: $34
	adc  c                                           ; $4971: $89
	sub  a                                           ; $4972: $97
	sbc  b                                           ; $4973: $98
	sbc  h                                           ; $4974: $9c
	db   $db                                         ; $4975: $db
	adc  c                                           ; $4976: $89
	adc  c                                           ; $4977: $89
	adc  b                                           ; $4978: $88
	halt                                             ; $4979: $76
	ld   d, a                                        ; $497a: $57
	ld   d, h                                        ; $497b: $54
	ld   d, a                                        ; $497c: $57
	adc  d                                           ; $497d: $8a
	call c, $9c66                                    ; $497e: $dc $66 $9c
	ret  z                                           ; $4981: $c8

	add  [hl]                                        ; $4982: $86
	ld   h, l                                        ; $4983: $65
	ld   a, c                                        ; $4984: $79
	ld   [hl], l                                     ; $4985: $75
	dec  h                                           ; $4986: $25
	ld   a, b                                        ; $4987: $78
	adc  c                                           ; $4988: $89
	and  a                                           ; $4989: $a7
	xor  l                                           ; $498a: $ad
	db   $db                                         ; $498b: $db
	sbc  b                                           ; $498c: $98
	adc  b                                           ; $498d: $88
	sbc  b                                           ; $498e: $98
	halt                                             ; $498f: $76
	ld   b, l                                        ; $4990: $45
	inc  [hl]                                        ; $4991: $34
	ld   l, c                                        ; $4992: $69
	cp   e                                           ; $4993: $bb
	and  l                                           ; $4994: $a5
	adc  d                                           ; $4995: $8a
	adc  $b8                                         ; $4996: $ce $b8
	ld   b, l                                        ; $4998: $45
	ld   a, c                                        ; $4999: $79
	sub  [hl]                                        ; $499a: $96
	ld   d, e                                        ; $499b: $53
	dec  [hl]                                        ; $499c: $35
	sbc  e                                           ; $499d: $9b
	sbc  c                                           ; $499e: $99
	ld   [hl], a                                     ; $499f: $77
	sbc  h                                           ; $49a0: $9c
	db   $fc                                         ; $49a1: $fc
	sub  l                                           ; $49a2: $95
	ld   e, c                                        ; $49a3: $59
	cp   d                                           ; $49a4: $ba
	add  [hl]                                        ; $49a5: $86
	ld   b, d                                        ; $49a6: $42
	ld   b, a                                        ; $49a7: $47
	adc  d                                           ; $49a8: $8a
	sbc  e                                           ; $49a9: $9b
	sub  a                                           ; $49aa: $97
	sbc  e                                           ; $49ab: $9b
	jp   z, Jump_0ad_6975                            ; $49ac: $ca $75 $69

	sub  a                                           ; $49af: $97
	ld   h, [hl]                                     ; $49b0: $66
	ld   d, e                                        ; $49b1: $53
	ld   e, b                                        ; $49b2: $58
	adc  b                                           ; $49b3: $88
	cp   h                                           ; $49b4: $bc
	add  l                                           ; $49b5: $85
	sbc  [hl]                                        ; $49b6: $9e
	jp   c, $9977                                    ; $49b7: $da $77 $99

	ld   h, [hl]                                     ; $49ba: $66
	halt                                             ; $49bb: $76
	ld   d, d                                        ; $49bc: $52
	ld   b, a                                        ; $49bd: $47
	adc  c                                           ; $49be: $89
	xor  e                                           ; $49bf: $ab
	sub  a                                           ; $49c0: $97
	xor  h                                           ; $49c1: $ac
	jp   z, $8876                                    ; $49c2: $ca $76 $88

	ld   h, a                                        ; $49c5: $67
	ld   h, [hl]                                     ; $49c6: $66
	ld   b, e                                        ; $49c7: $43
	ld   l, b                                        ; $49c8: $68
	sbc  d                                           ; $49c9: $9a
	cp   c                                           ; $49ca: $b9
	ld   a, c                                        ; $49cb: $79
	cp   l                                           ; $49cc: $bd
	ret                                              ; $49cd: $c9


	ld   h, [hl]                                     ; $49ce: $66
	ld   a, b                                        ; $49cf: $78
	sub  a                                           ; $49d0: $97
	halt                                             ; $49d1: $76
	inc  [hl]                                        ; $49d2: $34
	ld   [hl], a                                     ; $49d3: $77
	adc  e                                           ; $49d4: $8b
	ret  z                                           ; $49d5: $c8

	ld   l, b                                        ; $49d6: $68
	cp   h                                           ; $49d7: $bc
	or   a                                           ; $49d8: $b7
	ld   a, b                                        ; $49d9: $78
	halt                                             ; $49da: $76
	ld   [hl], a                                     ; $49db: $77
	ld   d, h                                        ; $49dc: $54
	dec  [hl]                                        ; $49dd: $35
	ld   a, b                                        ; $49de: $78
	call $9c96                                       ; $49df: $cd $96 $9c
	db   $dd                                         ; $49e2: $dd
	adc  b                                           ; $49e3: $88
	halt                                             ; $49e4: $76
	ld   [hl], a                                     ; $49e5: $77
	add  l                                           ; $49e6: $85
	ld   d, h                                        ; $49e7: $54
	ld   b, a                                        ; $49e8: $47
	ld   a, b                                        ; $49e9: $78
	xor  e                                           ; $49ea: $ab
	and  a                                           ; $49eb: $a7
	adc  c                                           ; $49ec: $89
	res  0, [hl]                                     ; $49ed: $cb $86
	ld   a, b                                        ; $49ef: $78
	adc  c                                           ; $49f0: $89
	halt                                             ; $49f1: $76
	ld   d, h                                        ; $49f2: $54
	ld   h, a                                        ; $49f3: $67
	adc  d                                           ; $49f4: $8a
	sbc  d                                           ; $49f5: $9a
	xor  c                                           ; $49f6: $a9
	xor  e                                           ; $49f7: $ab
	jp   z, Jump_0ad_6887                            ; $49f8: $ca $87 $68

	add  a                                           ; $49fb: $87
	ld   h, [hl]                                     ; $49fc: $66
	ld   d, h                                        ; $49fd: $54
	ld   d, [hl]                                     ; $49fe: $56
	sbc  d                                           ; $49ff: $9a
	xor  c                                           ; $4a00: $a9
	ld   a, c                                        ; $4a01: $79
	sbc  e                                           ; $4a02: $9b
	cp   d                                           ; $4a03: $ba
	halt                                             ; $4a04: $76
	sbc  c                                           ; $4a05: $99
	sub  a                                           ; $4a06: $97
	ld   d, h                                        ; $4a07: $54
	ld   d, h                                        ; $4a08: $54
	ld   d, a                                        ; $4a09: $57
	sbc  d                                           ; $4a0a: $9a
	jp   z, $bb89                                    ; $4a0b: $ca $89 $bb

	xor  b                                           ; $4a0e: $a8
	ld   h, a                                        ; $4a0f: $67
	adc  b                                           ; $4a10: $88
	ld   a, b                                        ; $4a11: $78
	ld   h, h                                        ; $4a12: $64
	ld   b, h                                        ; $4a13: $44
	ld   h, a                                        ; $4a14: $67
	sbc  d                                           ; $4a15: $9a
	cp   d                                           ; $4a16: $ba
	adc  c                                           ; $4a17: $89
	sbc  e                                           ; $4a18: $9b
	xor  c                                           ; $4a19: $a9
	ld   [hl], a                                     ; $4a1a: $77
	sbc  c                                           ; $4a1b: $99
	halt                                             ; $4a1c: $76
	ld   h, [hl]                                     ; $4a1d: $66
	ld   d, l                                        ; $4a1e: $55
	ld   [hl], a                                     ; $4a1f: $77
	xor  d                                           ; $4a20: $aa
	xor  b                                           ; $4a21: $a8
	adc  e                                           ; $4a22: $8b
	xor  c                                           ; $4a23: $a9
	adc  b                                           ; $4a24: $88
	adc  b                                           ; $4a25: $88
	add  a                                           ; $4a26: $87
	ld   [hl], a                                     ; $4a27: $77
	halt                                             ; $4a28: $76
	ld   d, l                                        ; $4a29: $55
	ld   h, a                                        ; $4a2a: $67
	sbc  e                                           ; $4a2b: $9b
	ret  z                                           ; $4a2c: $c8

	ld   a, b                                        ; $4a2d: $78
	xor  h                                           ; $4a2e: $ac
	and  a                                           ; $4a2f: $a7
	ld   [hl], a                                     ; $4a30: $77
	sub  a                                           ; $4a31: $97
	add  a                                           ; $4a32: $87
	halt                                             ; $4a33: $76
	ld   b, h                                        ; $4a34: $44
	ld   l, b                                        ; $4a35: $68
	sbc  d                                           ; $4a36: $9a
	xor  b                                           ; $4a37: $a8
	adc  c                                           ; $4a38: $89
	sbc  d                                           ; $4a39: $9a
	xor  b                                           ; $4a3a: $a8
	ld   [hl], a                                     ; $4a3b: $77
	ld   a, b                                        ; $4a3c: $78
	add  a                                           ; $4a3d: $87
	ld   h, [hl]                                     ; $4a3e: $66
	ld   d, h                                        ; $4a3f: $54
	ld   d, [hl]                                     ; $4a40: $56
	xor  e                                           ; $4a41: $ab
	cp   c                                           ; $4a42: $b9
	ld   a, c                                        ; $4a43: $79
	xor  e                                           ; $4a44: $ab
	xor  c                                           ; $4a45: $a9
	add  a                                           ; $4a46: $87
	ld   a, b                                        ; $4a47: $78
	sbc  c                                           ; $4a48: $99
	ld   [hl], l                                     ; $4a49: $75
	ld   b, l                                        ; $4a4a: $45
	ld   a, b                                        ; $4a4b: $78
	sbc  b                                           ; $4a4c: $98
	adc  c                                           ; $4a4d: $89
	xor  d                                           ; $4a4e: $aa
	sbc  c                                           ; $4a4f: $99
	sbc  c                                           ; $4a50: $99
	xor  c                                           ; $4a51: $a9
	halt                                             ; $4a52: $76
	ld   a, c                                        ; $4a53: $79
	sub  a                                           ; $4a54: $97
	ld   b, e                                        ; $4a55: $43
	ld   d, [hl]                                     ; $4a56: $56
	sbc  d                                           ; $4a57: $9a
	sbc  c                                           ; $4a58: $99
	adc  c                                           ; $4a59: $89
	adc  d                                           ; $4a5a: $8a
	sbc  d                                           ; $4a5b: $9a
	sbc  b                                           ; $4a5c: $98
	halt                                             ; $4a5d: $76
	adc  b                                           ; $4a5e: $88
	sub  a                                           ; $4a5f: $97
	ld   h, l                                        ; $4a60: $65
	ld   d, [hl]                                     ; $4a61: $56
	ld   a, b                                        ; $4a62: $78
	sbc  e                                           ; $4a63: $9b
	sbc  c                                           ; $4a64: $99
	adc  c                                           ; $4a65: $89
	cp   d                                           ; $4a66: $ba
	and  a                                           ; $4a67: $a7
	ld   [hl], a                                     ; $4a68: $77
	xor  c                                           ; $4a69: $a9
	add  a                                           ; $4a6a: $87
	ld   h, l                                        ; $4a6b: $65
	ld   d, [hl]                                     ; $4a6c: $56
	ld   h, a                                        ; $4a6d: $67
	sbc  e                                           ; $4a6e: $9b
	sub  a                                           ; $4a6f: $97
	ld   a, c                                        ; $4a70: $79
	cp   d                                           ; $4a71: $ba
	and  a                                           ; $4a72: $a7
	adc  b                                           ; $4a73: $88
	sbc  b                                           ; $4a74: $98
	adc  c                                           ; $4a75: $89
	add  a                                           ; $4a76: $87
	ld   d, h                                        ; $4a77: $54
	ld   b, [hl]                                     ; $4a78: $46
	adc  d                                           ; $4a79: $8a
	xor  b                                           ; $4a7a: $a8
	adc  b                                           ; $4a7b: $88
	xor  d                                           ; $4a7c: $aa
	sbc  d                                           ; $4a7d: $9a
	sbc  b                                           ; $4a7e: $98
	adc  b                                           ; $4a7f: $88
	sbc  c                                           ; $4a80: $99
	add  a                                           ; $4a81: $87
	ld   h, [hl]                                     ; $4a82: $66
	ld   d, [hl]                                     ; $4a83: $56
	ld   l, b                                        ; $4a84: $68
	sbc  d                                           ; $4a85: $9a
	sub  [hl]                                        ; $4a86: $96
	ld   a, c                                        ; $4a87: $79
	cp   d                                           ; $4a88: $ba
	sub  a                                           ; $4a89: $97
	ld   a, b                                        ; $4a8a: $78
	sbc  c                                           ; $4a8b: $99
	adc  c                                           ; $4a8c: $89
	add  a                                           ; $4a8d: $87
	ld   d, l                                        ; $4a8e: $55
	ld   d, [hl]                                     ; $4a8f: $56
	ld   a, c                                        ; $4a90: $79
	sbc  c                                           ; $4a91: $99
	xor  c                                           ; $4a92: $a9
	sbc  d                                           ; $4a93: $9a
	sbc  b                                           ; $4a94: $98
	sbc  c                                           ; $4a95: $99
	ld   a, b                                        ; $4a96: $78
	sbc  c                                           ; $4a97: $99
	sbc  b                                           ; $4a98: $98
	ld   h, l                                        ; $4a99: $65
	ld   d, [hl]                                     ; $4a9a: $56
	ld   h, a                                        ; $4a9b: $67
	adc  c                                           ; $4a9c: $89
	sbc  b                                           ; $4a9d: $98
	adc  b                                           ; $4a9e: $88
	sbc  d                                           ; $4a9f: $9a
	sbc  c                                           ; $4aa0: $99
	adc  b                                           ; $4aa1: $88
	sbc  c                                           ; $4aa2: $99
	xor  c                                           ; $4aa3: $a9
	sbc  b                                           ; $4aa4: $98
	ld   h, l                                        ; $4aa5: $65
	ld   d, l                                        ; $4aa6: $55
	ld   h, a                                        ; $4aa7: $67
	adc  b                                           ; $4aa8: $88
	sbc  b                                           ; $4aa9: $98
	sbc  c                                           ; $4aaa: $99
	sbc  c                                           ; $4aab: $99
	adc  b                                           ; $4aac: $88
	sbc  c                                           ; $4aad: $99
	adc  b                                           ; $4aae: $88
	adc  d                                           ; $4aaf: $8a
	sbc  b                                           ; $4ab0: $98
	halt                                             ; $4ab1: $76
	ld   h, l                                        ; $4ab2: $65
	ld   l, b                                        ; $4ab3: $68
	sbc  d                                           ; $4ab4: $9a
	add  a                                           ; $4ab5: $87
	ld   a, c                                        ; $4ab6: $79
	sbc  b                                           ; $4ab7: $98
	add  a                                           ; $4ab8: $87
	sbc  c                                           ; $4ab9: $99
	sbc  d                                           ; $4aba: $9a
	sbc  c                                           ; $4abb: $99
	sbc  b                                           ; $4abc: $98
	halt                                             ; $4abd: $76
	ld   d, l                                        ; $4abe: $55
	ld   d, a                                        ; $4abf: $57
	adc  c                                           ; $4ac0: $89
	sbc  b                                           ; $4ac1: $98
	ld   a, c                                        ; $4ac2: $79
	xor  c                                           ; $4ac3: $a9
	sbc  b                                           ; $4ac4: $98
	adc  b                                           ; $4ac5: $88
	xor  d                                           ; $4ac6: $aa
	sbc  c                                           ; $4ac7: $99
	sbc  b                                           ; $4ac8: $98
	ld   [hl], a                                     ; $4ac9: $77
	ld   h, l                                        ; $4aca: $65
	ld   d, [hl]                                     ; $4acb: $56
	adc  c                                           ; $4acc: $89
	sbc  b                                           ; $4acd: $98
	ld   a, b                                        ; $4ace: $78
	adc  d                                           ; $4acf: $8a
	sbc  c                                           ; $4ad0: $99
	adc  b                                           ; $4ad1: $88
	xor  d                                           ; $4ad2: $aa
	xor  c                                           ; $4ad3: $a9
	xor  c                                           ; $4ad4: $a9
	add  a                                           ; $4ad5: $87
	ld   h, l                                        ; $4ad6: $65
	ld   d, l                                        ; $4ad7: $55
	ld   l, b                                        ; $4ad8: $68
	sbc  b                                           ; $4ad9: $98
	add  a                                           ; $4ada: $87
	adc  b                                           ; $4adb: $88
	sbc  d                                           ; $4adc: $9a
	sbc  b                                           ; $4add: $98
	adc  c                                           ; $4ade: $89
	sbc  d                                           ; $4adf: $9a
	sbc  c                                           ; $4ae0: $99
	sbc  b                                           ; $4ae1: $98
	halt                                             ; $4ae2: $76
	ld   h, l                                        ; $4ae3: $65
	ld   d, a                                        ; $4ae4: $57
	sbc  d                                           ; $4ae5: $9a
	sbc  b                                           ; $4ae6: $98
	adc  c                                           ; $4ae7: $89
	sbc  c                                           ; $4ae8: $99
	sbc  b                                           ; $4ae9: $98
	sbc  c                                           ; $4aea: $99
	adc  c                                           ; $4aeb: $89
	sbc  d                                           ; $4aec: $9a
	sbc  d                                           ; $4aed: $9a
	sub  [hl]                                        ; $4aee: $96
	ld   d, l                                        ; $4aef: $55
	ld   d, l                                        ; $4af0: $55
	ld   h, a                                        ; $4af1: $67
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	adc  b                                           ; $4af4: $88
	sbc  c                                           ; $4af5: $99
	adc  b                                           ; $4af6: $88
	adc  c                                           ; $4af7: $89
	xor  c                                           ; $4af8: $a9
	sbc  c                                           ; $4af9: $99
	xor  c                                           ; $4afa: $a9
	ld   [hl], a                                     ; $4afb: $77
	ld   h, [hl]                                     ; $4afc: $66
	ld   d, l                                        ; $4afd: $55
	ld   h, a                                        ; $4afe: $67
	sbc  c                                           ; $4aff: $99
	add  a                                           ; $4b00: $87
	adc  b                                           ; $4b01: $88
	sbc  c                                           ; $4b02: $99
	sbc  b                                           ; $4b03: $98
	adc  b                                           ; $4b04: $88
	xor  d                                           ; $4b05: $aa
	xor  c                                           ; $4b06: $a9
	xor  c                                           ; $4b07: $a9
	add  a                                           ; $4b08: $87
	ld   h, l                                        ; $4b09: $65
	ld   b, l                                        ; $4b0a: $45
	ld   h, a                                        ; $4b0b: $67
	adc  b                                           ; $4b0c: $88
	ld   [hl], a                                     ; $4b0d: $77
	sbc  d                                           ; $4b0e: $9a
	xor  d                                           ; $4b0f: $aa
	sub  a                                           ; $4b10: $97
	adc  c                                           ; $4b11: $89
	xor  d                                           ; $4b12: $aa
	sbc  c                                           ; $4b13: $99
	sbc  c                                           ; $4b14: $99
	sbc  b                                           ; $4b15: $98
	ld   h, l                                        ; $4b16: $65
	ld   d, l                                        ; $4b17: $55
	ld   h, a                                        ; $4b18: $67
	adc  b                                           ; $4b19: $88
	add  a                                           ; $4b1a: $87
	ld   a, b                                        ; $4b1b: $78
	sbc  c                                           ; $4b1c: $99
	adc  b                                           ; $4b1d: $88
	adc  c                                           ; $4b1e: $89
	xor  c                                           ; $4b1f: $a9
	xor  c                                           ; $4b20: $a9
	xor  c                                           ; $4b21: $a9
	cp   c                                           ; $4b22: $b9
	add  a                                           ; $4b23: $87
	ld   h, l                                        ; $4b24: $65
	ld   b, [hl]                                     ; $4b25: $46
	ld   h, a                                        ; $4b26: $67
	adc  b                                           ; $4b27: $88
	ld   [hl], a                                     ; $4b28: $77
	adc  c                                           ; $4b29: $89
	sbc  c                                           ; $4b2a: $99
	adc  b                                           ; $4b2b: $88
	sbc  d                                           ; $4b2c: $9a
	sbc  c                                           ; $4b2d: $99
	sbc  d                                           ; $4b2e: $9a
	xor  d                                           ; $4b2f: $aa
	and  a                                           ; $4b30: $a7
	ld   h, [hl]                                     ; $4b31: $66
	ld   d, l                                        ; $4b32: $55
	ld   d, [hl]                                     ; $4b33: $56
	ld   a, b                                        ; $4b34: $78
	add  a                                           ; $4b35: $87
	ld   a, b                                        ; $4b36: $78
	adc  c                                           ; $4b37: $89
	sbc  c                                           ; $4b38: $99
	adc  c                                           ; $4b39: $89
	sbc  d                                           ; $4b3a: $9a
	sbc  c                                           ; $4b3b: $99
	sbc  c                                           ; $4b3c: $99
	xor  d                                           ; $4b3d: $aa
	add  a                                           ; $4b3e: $87
	ld   h, [hl]                                     ; $4b3f: $66
	ld   d, l                                        ; $4b40: $55
	ld   h, [hl]                                     ; $4b41: $66
	ld   a, b                                        ; $4b42: $78
	adc  b                                           ; $4b43: $88
	adc  b                                           ; $4b44: $88
	adc  c                                           ; $4b45: $89
	adc  c                                           ; $4b46: $89
	adc  c                                           ; $4b47: $89
	sbc  c                                           ; $4b48: $99
	xor  c                                           ; $4b49: $a9
	sbc  d                                           ; $4b4a: $9a
	xor  c                                           ; $4b4b: $a9
	add  a                                           ; $4b4c: $87
	ld   h, l                                        ; $4b4d: $65
	ld   d, l                                        ; $4b4e: $55
	ld   h, [hl]                                     ; $4b4f: $66
	ld   a, b                                        ; $4b50: $78
	add  a                                           ; $4b51: $87
	adc  b                                           ; $4b52: $88
	adc  c                                           ; $4b53: $89
	adc  b                                           ; $4b54: $88
	adc  c                                           ; $4b55: $89
	sbc  d                                           ; $4b56: $9a
	xor  c                                           ; $4b57: $a9
	sbc  c                                           ; $4b58: $99
	xor  c                                           ; $4b59: $a9
	add  a                                           ; $4b5a: $87
	ld   h, l                                        ; $4b5b: $65
	ld   h, [hl]                                     ; $4b5c: $66
	ld   h, [hl]                                     ; $4b5d: $66
	ld   h, a                                        ; $4b5e: $67
	ld   a, b                                        ; $4b5f: $78
	adc  b                                           ; $4b60: $88
	adc  b                                           ; $4b61: $88
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	sbc  c                                           ; $4b64: $99
	sbc  c                                           ; $4b65: $99
	sbc  c                                           ; $4b66: $99
	xor  c                                           ; $4b67: $a9
	sbc  b                                           ; $4b68: $98
	halt                                             ; $4b69: $76
	ld   h, [hl]                                     ; $4b6a: $66
	ld   h, [hl]                                     ; $4b6b: $66
	ld   h, a                                        ; $4b6c: $67
	adc  b                                           ; $4b6d: $88
	adc  b                                           ; $4b6e: $88
	adc  c                                           ; $4b6f: $89
	sbc  c                                           ; $4b70: $99
	adc  b                                           ; $4b71: $88
	sbc  c                                           ; $4b72: $99
	xor  d                                           ; $4b73: $aa
	sbc  d                                           ; $4b74: $9a
	xor  c                                           ; $4b75: $a9
	xor  b                                           ; $4b76: $a8
	ld   [hl], a                                     ; $4b77: $77
	ld   h, [hl]                                     ; $4b78: $66
	ld   h, l                                        ; $4b79: $65
	ld   h, a                                        ; $4b7a: $67
	ld   a, b                                        ; $4b7b: $78
	add  a                                           ; $4b7c: $87
	ld   a, b                                        ; $4b7d: $78
	adc  c                                           ; $4b7e: $89
	adc  b                                           ; $4b7f: $88
	adc  c                                           ; $4b80: $89
	sbc  c                                           ; $4b81: $99
	xor  c                                           ; $4b82: $a9
	sbc  c                                           ; $4b83: $99
	xor  c                                           ; $4b84: $a9
	sbc  b                                           ; $4b85: $98
	ld   h, [hl]                                     ; $4b86: $66
	ld   h, [hl]                                     ; $4b87: $66
	ld   d, l                                        ; $4b88: $55
	ld   h, a                                        ; $4b89: $67
	adc  b                                           ; $4b8a: $88
	add  a                                           ; $4b8b: $87
	adc  c                                           ; $4b8c: $89
	adc  b                                           ; $4b8d: $88
	adc  b                                           ; $4b8e: $88
	adc  b                                           ; $4b8f: $88
	sbc  c                                           ; $4b90: $99
	sbc  c                                           ; $4b91: $99
	sbc  d                                           ; $4b92: $9a
	xor  c                                           ; $4b93: $a9
	sub  a                                           ; $4b94: $97
	ld   [hl], a                                     ; $4b95: $77
	ld   h, [hl]                                     ; $4b96: $66
	ld   h, [hl]                                     ; $4b97: $66
	ld   [hl], a                                     ; $4b98: $77
	add  a                                           ; $4b99: $87
	ld   [hl], a                                     ; $4b9a: $77
	adc  c                                           ; $4b9b: $89
	adc  b                                           ; $4b9c: $88
	ld   [hl], a                                     ; $4b9d: $77
	adc  c                                           ; $4b9e: $89
	sbc  c                                           ; $4b9f: $99
	adc  c                                           ; $4ba0: $89
	sbc  d                                           ; $4ba1: $9a
	xor  c                                           ; $4ba2: $a9
	sub  a                                           ; $4ba3: $97
	ld   [hl], a                                     ; $4ba4: $77
	halt                                             ; $4ba5: $76
	ld   d, [hl]                                     ; $4ba6: $56
	ld   a, b                                        ; $4ba7: $78
	add  a                                           ; $4ba8: $87
	ld   [hl], a                                     ; $4ba9: $77
	adc  c                                           ; $4baa: $89
	add  a                                           ; $4bab: $87
	ld   a, b                                        ; $4bac: $78
	sbc  c                                           ; $4bad: $99
	sbc  c                                           ; $4bae: $99
	adc  c                                           ; $4baf: $89
	sbc  d                                           ; $4bb0: $9a
	sbc  c                                           ; $4bb1: $99
	sbc  b                                           ; $4bb2: $98
	add  a                                           ; $4bb3: $87
	halt                                             ; $4bb4: $76
	ld   h, [hl]                                     ; $4bb5: $66
	ld   a, b                                        ; $4bb6: $78
	add  a                                           ; $4bb7: $87
	ld   [hl], a                                     ; $4bb8: $77
	adc  c                                           ; $4bb9: $89
	sbc  b                                           ; $4bba: $98
	ld   a, b                                        ; $4bbb: $78
	adc  c                                           ; $4bbc: $89
	sbc  c                                           ; $4bbd: $99
	adc  c                                           ; $4bbe: $89
	xor  c                                           ; $4bbf: $a9
	sbc  c                                           ; $4bc0: $99
	sbc  b                                           ; $4bc1: $98
	ld   [hl], a                                     ; $4bc2: $77
	ld   [hl], a                                     ; $4bc3: $77
	ld   h, [hl]                                     ; $4bc4: $66
	ld   h, a                                        ; $4bc5: $67
	adc  b                                           ; $4bc6: $88
	ld   [hl], a                                     ; $4bc7: $77
	ld   a, c                                        ; $4bc8: $79
	adc  b                                           ; $4bc9: $88
	add  a                                           ; $4bca: $87
	adc  c                                           ; $4bcb: $89
	sbc  c                                           ; $4bcc: $99
	adc  b                                           ; $4bcd: $88
	sbc  d                                           ; $4bce: $9a
	xor  d                                           ; $4bcf: $aa
	sbc  c                                           ; $4bd0: $99
	adc  b                                           ; $4bd1: $88
	ld   [hl], a                                     ; $4bd2: $77
	halt                                             ; $4bd3: $76
	ld   h, a                                        ; $4bd4: $67
	ld   a, b                                        ; $4bd5: $78
	ld   [hl], a                                     ; $4bd6: $77
	ld   [hl], a                                     ; $4bd7: $77
	adc  c                                           ; $4bd8: $89
	sbc  b                                           ; $4bd9: $98
	adc  b                                           ; $4bda: $88
	sbc  c                                           ; $4bdb: $99
	sbc  b                                           ; $4bdc: $98
	sbc  b                                           ; $4bdd: $98
	sbc  c                                           ; $4bde: $99
	sbc  c                                           ; $4bdf: $99
	sub  a                                           ; $4be0: $97
	ld   [hl], a                                     ; $4be1: $77
	ld   [hl], a                                     ; $4be2: $77
	halt                                             ; $4be3: $76
	ld   [hl], a                                     ; $4be4: $77
	ld   a, b                                        ; $4be5: $78
	ld   [hl], a                                     ; $4be6: $77
	ld   a, b                                        ; $4be7: $78
	adc  c                                           ; $4be8: $89
	adc  b                                           ; $4be9: $88
	adc  b                                           ; $4bea: $88
	adc  b                                           ; $4beb: $88
	sbc  b                                           ; $4bec: $98
	sbc  c                                           ; $4bed: $99
	sbc  c                                           ; $4bee: $99
	adc  c                                           ; $4bef: $89
	adc  b                                           ; $4bf0: $88
	add  a                                           ; $4bf1: $87
	ld   [hl], a                                     ; $4bf2: $77
	ld   [hl], a                                     ; $4bf3: $77
	ld   [hl], a                                     ; $4bf4: $77
	add  a                                           ; $4bf5: $87
	ld   [hl], a                                     ; $4bf6: $77
	adc  c                                           ; $4bf7: $89
	adc  b                                           ; $4bf8: $88
	adc  b                                           ; $4bf9: $88
	adc  b                                           ; $4bfa: $88
	adc  b                                           ; $4bfb: $88
	sbc  c                                           ; $4bfc: $99
	adc  c                                           ; $4bfd: $89
	sbc  c                                           ; $4bfe: $99
	sbc  b                                           ; $4bff: $98
	adc  b                                           ; $4c00: $88
	add  a                                           ; $4c01: $87
	ld   [hl], a                                     ; $4c02: $77
	ld   [hl], a                                     ; $4c03: $77
	ld   [hl], a                                     ; $4c04: $77
	ld   [hl], a                                     ; $4c05: $77
	ld   a, b                                        ; $4c06: $78
	adc  b                                           ; $4c07: $88
	adc  b                                           ; $4c08: $88
	adc  b                                           ; $4c09: $88
	sbc  c                                           ; $4c0a: $99
	adc  c                                           ; $4c0b: $89
	sbc  b                                           ; $4c0c: $98
	sbc  c                                           ; $4c0d: $99
	adc  b                                           ; $4c0e: $88
	adc  b                                           ; $4c0f: $88
	adc  b                                           ; $4c10: $88

Call_0ad_4c11:
	add  a                                           ; $4c11: $87
	ld   [hl], a                                     ; $4c12: $77
	ld   [hl], a                                     ; $4c13: $77
	ld   [hl], a                                     ; $4c14: $77
	ld   [hl], a                                     ; $4c15: $77
	adc  b                                           ; $4c16: $88
	adc  b                                           ; $4c17: $88
	adc  b                                           ; $4c18: $88
	adc  c                                           ; $4c19: $89
	sbc  c                                           ; $4c1a: $99
	sbc  c                                           ; $4c1b: $99
	adc  c                                           ; $4c1c: $89
	sbc  c                                           ; $4c1d: $99
	adc  c                                           ; $4c1e: $89
	sbc  b                                           ; $4c1f: $98
	adc  b                                           ; $4c20: $88
	add  a                                           ; $4c21: $87
	ld   [hl], a                                     ; $4c22: $77
	ld   [hl], a                                     ; $4c23: $77
	ld   [hl], a                                     ; $4c24: $77
	ld   [hl], a                                     ; $4c25: $77
	adc  b                                           ; $4c26: $88
	adc  b                                           ; $4c27: $88
	adc  b                                           ; $4c28: $88
	adc  b                                           ; $4c29: $88
	sbc  c                                           ; $4c2a: $99
	sbc  c                                           ; $4c2b: $99
	sbc  b                                           ; $4c2c: $98
	adc  b                                           ; $4c2d: $88
	adc  c                                           ; $4c2e: $89
	sbc  b                                           ; $4c2f: $98
	adc  b                                           ; $4c30: $88
	add  a                                           ; $4c31: $87
	ld   [hl], a                                     ; $4c32: $77
	ld   [hl], a                                     ; $4c33: $77
	ld   [hl], a                                     ; $4c34: $77
	ld   [hl], a                                     ; $4c35: $77
	ld   a, b                                        ; $4c36: $78
	adc  b                                           ; $4c37: $88
	adc  b                                           ; $4c38: $88
	adc  b                                           ; $4c39: $88
	adc  c                                           ; $4c3a: $89
	sbc  c                                           ; $4c3b: $99
	sbc  b                                           ; $4c3c: $98
	adc  c                                           ; $4c3d: $89
	adc  c                                           ; $4c3e: $89
	sbc  b                                           ; $4c3f: $98
	adc  b                                           ; $4c40: $88
	adc  b                                           ; $4c41: $88
	ld   [hl], a                                     ; $4c42: $77
	ld   [hl], a                                     ; $4c43: $77
	ld   [hl], a                                     ; $4c44: $77
	ld   [hl], a                                     ; $4c45: $77
	ld   [hl], a                                     ; $4c46: $77
	adc  b                                           ; $4c47: $88
	adc  b                                           ; $4c48: $88
	adc  b                                           ; $4c49: $88
	adc  b                                           ; $4c4a: $88
	adc  b                                           ; $4c4b: $88
	sbc  c                                           ; $4c4c: $99
	sbc  c                                           ; $4c4d: $99
	sbc  c                                           ; $4c4e: $99
	sbc  c                                           ; $4c4f: $99
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
	ld   [hl], a                                     ; $5437: $77
	adc  b                                           ; $5438: $88
	adc  b                                           ; $5439: $88
	adc  b                                           ; $543a: $88
	adc  b                                           ; $543b: $88
	adc  c                                           ; $543c: $89
	sbc  c                                           ; $543d: $99
	sbc  c                                           ; $543e: $99
	sbc  b                                           ; $543f: $98
	add  a                                           ; $5440: $87
	ld   [hl], a                                     ; $5441: $77
	ld   a, b                                        ; $5442: $78
	adc  b                                           ; $5443: $88
	adc  b                                           ; $5444: $88
	adc  c                                           ; $5445: $89
	adc  b                                           ; $5446: $88
	sbc  c                                           ; $5447: $99
	sbc  c                                           ; $5448: $99
	adc  b                                           ; $5449: $88
	ld   [hl], a                                     ; $544a: $77
	ld   [hl], a                                     ; $544b: $77
	ld   a, b                                        ; $544c: $78
	adc  b                                           ; $544d: $88
	adc  b                                           ; $544e: $88
	sbc  b                                           ; $544f: $98
	adc  b                                           ; $5450: $88
	adc  b                                           ; $5451: $88
	adc  c                                           ; $5452: $89
	add  a                                           ; $5453: $87
	ld   [hl], a                                     ; $5454: $77
	ld   [hl], a                                     ; $5455: $77
	adc  b                                           ; $5456: $88
	adc  b                                           ; $5457: $88
	adc  c                                           ; $5458: $89
	adc  c                                           ; $5459: $89
	adc  b                                           ; $545a: $88
	adc  b                                           ; $545b: $88
	sbc  b                                           ; $545c: $98
	halt                                             ; $545d: $76
	ld   h, a                                        ; $545e: $67
	ld   a, b                                        ; $545f: $78
	adc  b                                           ; $5460: $88
	adc  b                                           ; $5461: $88
	sbc  c                                           ; $5462: $99
	sbc  c                                           ; $5463: $99
	sbc  c                                           ; $5464: $99
	sbc  b                                           ; $5465: $98
	add  a                                           ; $5466: $87
	ld   h, [hl]                                     ; $5467: $66
	ld   h, a                                        ; $5468: $67
	adc  b                                           ; $5469: $88
	adc  b                                           ; $546a: $88
	adc  c                                           ; $546b: $89
	sbc  c                                           ; $546c: $99
	sbc  c                                           ; $546d: $99
	sbc  c                                           ; $546e: $99
	adc  b                                           ; $546f: $88
	halt                                             ; $5470: $76
	ld   h, [hl]                                     ; $5471: $66
	ld   [hl], a                                     ; $5472: $77
	adc  b                                           ; $5473: $88
	adc  b                                           ; $5474: $88
	adc  b                                           ; $5475: $88
	sbc  c                                           ; $5476: $99
	sbc  c                                           ; $5477: $99
	sbc  c                                           ; $5478: $99
	sub  a                                           ; $5479: $97
	ld   h, [hl]                                     ; $547a: $66
	ld   h, a                                        ; $547b: $67
	ld   a, b                                        ; $547c: $78
	adc  b                                           ; $547d: $88
	adc  b                                           ; $547e: $88
	adc  c                                           ; $547f: $89
	xor  c                                           ; $5480: $a9
	sbc  c                                           ; $5481: $99
	sbc  b                                           ; $5482: $98
	add  a                                           ; $5483: $87
	ld   h, [hl]                                     ; $5484: $66
	ld   h, a                                        ; $5485: $67
	adc  b                                           ; $5486: $88
	adc  b                                           ; $5487: $88
	adc  c                                           ; $5488: $89
	sbc  d                                           ; $5489: $9a
	xor  c                                           ; $548a: $a9
	sbc  c                                           ; $548b: $99
	sbc  c                                           ; $548c: $99
	halt                                             ; $548d: $76
	ld   d, [hl]                                     ; $548e: $56
	ld   [hl], a                                     ; $548f: $77
	adc  b                                           ; $5490: $88
	adc  b                                           ; $5491: $88
	sbc  b                                           ; $5492: $98
	sbc  d                                           ; $5493: $9a
	xor  c                                           ; $5494: $a9
	sbc  c                                           ; $5495: $99
	sbc  b                                           ; $5496: $98
	ld   h, l                                        ; $5497: $65
	ld   d, [hl]                                     ; $5498: $56
	ld   a, b                                        ; $5499: $78
	adc  b                                           ; $549a: $88
	adc  b                                           ; $549b: $88
	adc  c                                           ; $549c: $89
	sbc  c                                           ; $549d: $99
	sbc  c                                           ; $549e: $99
	sbc  c                                           ; $549f: $99
	add  a                                           ; $54a0: $87
	ld   h, l                                        ; $54a1: $65
	ld   d, [hl]                                     ; $54a2: $56
	ld   a, b                                        ; $54a3: $78
	add  a                                           ; $54a4: $87
	adc  b                                           ; $54a5: $88
	sbc  c                                           ; $54a6: $99

Call_0ad_54a7:
	xor  c                                           ; $54a7: $a9
	sbc  c                                           ; $54a8: $99
	sbc  c                                           ; $54a9: $99
	add  a                                           ; $54aa: $87
	ld   d, l                                        ; $54ab: $55
	ld   d, a                                        ; $54ac: $57
	ld   a, b                                        ; $54ad: $78
	ld   [hl], a                                     ; $54ae: $77
	adc  c                                           ; $54af: $89
	xor  d                                           ; $54b0: $aa
	xor  d                                           ; $54b1: $aa
	sbc  c                                           ; $54b2: $99
	adc  c                                           ; $54b3: $89
	sbc  b                                           ; $54b4: $98
	ld   h, l                                        ; $54b5: $65
	ld   d, [hl]                                     ; $54b6: $56
	ld   a, b                                        ; $54b7: $78
	add  a                                           ; $54b8: $87
	ld   a, b                                        ; $54b9: $78
	sbc  d                                           ; $54ba: $9a
	cp   d                                           ; $54bb: $ba
	sbc  c                                           ; $54bc: $99
	sbc  c                                           ; $54bd: $99
	xor  b                                           ; $54be: $a8
	ld   h, l                                        ; $54bf: $65
	ld   b, l                                        ; $54c0: $45
	ld   a, b                                        ; $54c1: $78
	add  a                                           ; $54c2: $87
	ld   a, b                                        ; $54c3: $78
	adc  d                                           ; $54c4: $8a
	cp   e                                           ; $54c5: $bb
	sbc  b                                           ; $54c6: $98
	sbc  c                                           ; $54c7: $99
	sbc  c                                           ; $54c8: $99
	ld   [hl], l                                     ; $54c9: $75
	ld   b, l                                        ; $54ca: $45
	ld   h, a                                        ; $54cb: $67
	add  a                                           ; $54cc: $87
	ld   [hl], a                                     ; $54cd: $77
	sbc  c                                           ; $54ce: $99
	cp   d                                           ; $54cf: $ba
	xor  c                                           ; $54d0: $a9
	adc  b                                           ; $54d1: $88
	xor  c                                           ; $54d2: $a9
	sub  [hl]                                        ; $54d3: $96
	ld   b, h                                        ; $54d4: $44
	ld   h, a                                        ; $54d5: $67
	adc  b                                           ; $54d6: $88
	ld   [hl], a                                     ; $54d7: $77
	adc  c                                           ; $54d8: $89
	cp   e                                           ; $54d9: $bb
	xor  d                                           ; $54da: $aa
	sbc  c                                           ; $54db: $99
	sbc  c                                           ; $54dc: $99
	sub  a                                           ; $54dd: $97
	ld   d, h                                        ; $54de: $54
	ld   d, [hl]                                     ; $54df: $56
	ld   a, b                                        ; $54e0: $78
	ld   [hl], a                                     ; $54e1: $77
	ld   a, c                                        ; $54e2: $79
	xor  e                                           ; $54e3: $ab
	cp   e                                           ; $54e4: $bb
	sbc  b                                           ; $54e5: $98
	sbc  c                                           ; $54e6: $99
	xor  b                                           ; $54e7: $a8
	ld   h, h                                        ; $54e8: $64
	ld   b, l                                        ; $54e9: $45
	ld   a, b                                        ; $54ea: $78
	add  a                                           ; $54eb: $87
	ld   [hl], a                                     ; $54ec: $77
	adc  e                                           ; $54ed: $8b
	cp   e                                           ; $54ee: $bb
	xor  b                                           ; $54ef: $a8
	adc  c                                           ; $54f0: $89
	sbc  d                                           ; $54f1: $9a
	add  [hl]                                        ; $54f2: $86
	ld   b, h                                        ; $54f3: $44
	ld   d, a                                        ; $54f4: $57
	adc  b                                           ; $54f5: $88
	ld   [hl], a                                     ; $54f6: $77
	ld   a, c                                        ; $54f7: $79
	cp   h                                           ; $54f8: $bc
	jp   z, $9988                                    ; $54f9: $ca $88 $99

	xor  c                                           ; $54fc: $a9
	ld   h, h                                        ; $54fd: $64
	inc  [hl]                                        ; $54fe: $34
	ld   l, b                                        ; $54ff: $68
	add  a                                           ; $5500: $87
	ld   [hl], a                                     ; $5501: $77
	sbc  d                                           ; $5502: $9a
	call z, $88a9                                    ; $5503: $cc $a9 $88
	sbc  d                                           ; $5506: $9a
	sub  a                                           ; $5507: $97
	ld   d, e                                        ; $5508: $53
	ld   b, [hl]                                     ; $5509: $46
	ld   a, b                                        ; $550a: $78
	ld   [hl], a                                     ; $550b: $77
	ld   a, b                                        ; $550c: $78
	xor  e                                           ; $550d: $ab
	cp   e                                           ; $550e: $bb
	xor  c                                           ; $550f: $a9
	ld   a, c                                        ; $5510: $79
	xor  e                                           ; $5511: $ab
	sub  [hl]                                        ; $5512: $96
	ld   b, e                                        ; $5513: $43
	ld   b, [hl]                                     ; $5514: $46
	adc  b                                           ; $5515: $88
	halt                                             ; $5516: $76
	ld   a, b                                        ; $5517: $78
	xor  h                                           ; $5518: $ac
	cp   e                                           ; $5519: $bb
	xor  b                                           ; $551a: $a8
	adc  c                                           ; $551b: $89
	cp   e                                           ; $551c: $bb
	add  l                                           ; $551d: $85
	inc  sp                                          ; $551e: $33
	ld   d, a                                        ; $551f: $57
	adc  b                                           ; $5520: $88
	halt                                             ; $5521: $76
	ld   a, b                                        ; $5522: $78
	xor  e                                           ; $5523: $ab
	cp   d                                           ; $5524: $ba
	sbc  b                                           ; $5525: $98
	adc  d                                           ; $5526: $8a
	cp   e                                           ; $5527: $bb
	add  l                                           ; $5528: $85
	inc  sp                                          ; $5529: $33
	ld   d, a                                        ; $552a: $57
	add  a                                           ; $552b: $87
	ld   h, [hl]                                     ; $552c: $66
	ld   a, c                                        ; $552d: $79
	cp   e                                           ; $552e: $bb
	cp   d                                           ; $552f: $ba
	xor  b                                           ; $5530: $a8
	adc  d                                           ; $5531: $8a
	cp   d                                           ; $5532: $ba
	add  l                                           ; $5533: $85

jr_0ad_5534:
	inc  sp                                          ; $5534: $33
	ld   b, [hl]                                     ; $5535: $46
	ld   [hl], a                                     ; $5536: $77
	ld   h, [hl]                                     ; $5537: $66
	ld   a, c                                        ; $5538: $79
	cp   e                                           ; $5539: $bb
	res  3, c                                        ; $553a: $cb $99
	adc  d                                           ; $553c: $8a
	xor  d                                           ; $553d: $aa
	sub  l                                           ; $553e: $95
	inc  sp                                          ; $553f: $33
	ld   b, [hl]                                     ; $5540: $46
	ld   [hl], a                                     ; $5541: $77
	ld   h, [hl]                                     ; $5542: $66
	ld   a, b                                        ; $5543: $78
	cp   h                                           ; $5544: $bc
	res  5, b                                        ; $5545: $cb $a8
	adc  c                                           ; $5547: $89
	cp   e                                           ; $5548: $bb
	and  [hl]                                        ; $5549: $a6
	ld   [hl-], a                                    ; $554a: $32
	ld   [hl], $77                                   ; $554b: $36 $77
	ld   h, [hl]                                     ; $554d: $66
	ld   a, b                                        ; $554e: $78
	cp   e                                           ; $554f: $bb
	res  7, d                                        ; $5550: $cb $ba
	adc  b                                           ; $5552: $88
	xor  d                                           ; $5553: $aa
	and  a                                           ; $5554: $a7
	ld   b, d                                        ; $5555: $42
	dec  [hl]                                        ; $5556: $35
	ld   h, a                                        ; $5557: $67
	halt                                             ; $5558: $76
	ld   h, a                                        ; $5559: $67
	sbc  h                                           ; $555a: $9c
	call z, $88ba                                    ; $555b: $cc $ba $88
	sbc  d                                           ; $555e: $9a
	xor  c                                           ; $555f: $a9
	ld   d, c                                        ; $5560: $51
	inc  de                                          ; $5561: $13
	ld   l, b                                        ; $5562: $68
	sbc  c                                           ; $5563: $99
	sbc  e                                           ; $5564: $9b
	adc  $cc                                         ; $5565: $ce $cc
	sub  a                                           ; $5567: $97
	ld   hl, $9c12                                   ; $5568: $21 $12 $9c
	xor  c                                           ; $556b: $a9
	ld   l, b                                        ; $556c: $68
	rst  JumpTable                                         ; $556d: $df
	ld   [$8a77], a                                  ; $556e: $ea $77 $8a
	and  a                                           ; $5571: $a7
	ld   b, c                                        ; $5572: $41
	ld   de, $ff7f                                   ; $5573: $11 $7f $ff
	or   h                                           ; $5576: $b4
	jr   z, jr_0ad_5534                              ; $5577: $28 $bb

	and  [hl]                                        ; $5579: $a6
	adc  d                                           ; $557a: $8a
	xor  d                                           ; $557b: $aa
	ld   d, e                                        ; $557c: $53
	ld   de, $ff15                                   ; $557d: $11 $15 $ff
	cp   $41                                         ; $5580: $fe $41
	ld   d, $ce                                      ; $5582: $16 $ce
	call c, Call_0ad_73b9                            ; $5584: $dc $b9 $73
	ld   de, $8f11                                   ; $5587: $11 $11 $8f
	rst  $38                                         ; $558a: $ff
	pop  bc                                          ; $558b: $c1
	ld   de, $ff9f                                   ; $558c: $11 $9f $ff
	and  a                                           ; $558f: $a7
	ld   b, h                                        ; $5590: $44
	ld   [hl-], a                                    ; $5591: $32
	ld   b, e                                        ; $5592: $43
	ld   h, $ff                                      ; $5593: $26 $ff
	db   $fd                                         ; $5595: $fd

Jump_0ad_5596:
	ld   de, $ff18                                   ; $5596: $11 $18 $ff
	rst  $30                                         ; $5599: $f7
	ld   [hl-], a                                    ; $559a: $32
	ld   b, [hl]                                     ; $559b: $46
	ld   a, b                                        ; $559c: $78
	ld   h, d                                        ; $559d: $62
	rla                                              ; $559e: $17
	rst  $38                                         ; $559f: $ff
	push af                                          ; $55a0: $f5
	ld   de, $ff3f                                   ; $55a1: $11 $3f $ff
	sub  d                                           ; $55a4: $92
	inc  h                                           ; $55a5: $24
	ld   a, c                                        ; $55a6: $79
	sbc  c                                           ; $55a7: $99
	ld   b, c                                        ; $55a8: $41
	ld   a, [de]                                     ; $55a9: $1a
	rst  $38                                         ; $55aa: $ff
	pop  af                                          ; $55ab: $f1
	ld   de, $fe9f                                   ; $55ac: $11 $9f $fe
	ld   b, c                                        ; $55af: $41
	ld   [hl], $99                                   ; $55b0: $36 $99
	xor  c                                           ; $55b2: $a9
	ld   sp, $ff1b                                   ; $55b3: $31 $1b $ff
	pop  af                                          ; $55b6: $f1
	ld   de, $fdaf                                   ; $55b7: $11 $af $fd
	ld   sp, $9937                                   ; $55ba: $31 $37 $99
	cp   b                                           ; $55bd: $b8
	ld   sp, $ff1b                                   ; $55be: $31 $1b $ff
	pop  hl                                          ; $55c1: $e1
	ld   de, $fccf                                   ; $55c2: $11 $cf $fc
	ld   hl, $ab48                                   ; $55c5: $21 $48 $ab
	jp   z, $1841                                    ; $55c8: $ca $41 $18

	rst  $38                                         ; $55cb: $ff
	pop  af                                          ; $55cc: $f1
	ld   de, $fdaf                                   ; $55cd: $11 $af $fd
	ld   sp, $ab37                                   ; $55d0: $31 $37 $ab
	bit  4, c                                        ; $55d3: $cb $61
	inc  d                                           ; $55d5: $14
	rst  $38                                         ; $55d6: $ff
	di                                               ; $55d7: $f3
	ld   de, $ff6f                                   ; $55d8: $11 $6f $ff
	ld   b, c                                        ; $55db: $41
	ld   [hl], $9b                                   ; $55dc: $36 $9b
	call z, $1181                                    ; $55de: $cc $81 $11
	rst  $38                                         ; $55e1: $ff
	ld   sp, hl                                      ; $55e2: $f9
	ld   de, $ff1f                                   ; $55e3: $11 $1f $ff
	ld   [hl], c                                     ; $55e6: $71
	dec  h                                           ; $55e7: $25
	adc  d                                           ; $55e8: $8a
	call z, $11a3                                    ; $55e9: $cc $a3 $11
	adc  a                                           ; $55ec: $8f
	rst  $38                                         ; $55ed: $ff
	ld   de, $ff1b                                   ; $55ee: $11 $1b $ff
	jp   nz, Jump_0ad_7913                           ; $55f1: $c2 $13 $79

	cp   [hl]                                        ; $55f4: $be
	rst  ToBoot                                         ; $55f5: $c7
	ld   de, $ff1f                                   ; $55f6: $11 $1f $ff
	add  c                                           ; $55f9: $81
	ld   de, $f9ff                                   ; $55fa: $11 $ff $f9
	ld   [de], a                                     ; $55fd: $12
	ld   c, b                                        ; $55fe: $48
	sbc  l                                           ; $55ff: $9d
	db   $eb                                         ; $5600: $eb
	ld   b, c                                        ; $5601: $41
	inc  de                                          ; $5602: $13
	rst  $38                                         ; $5603: $ff
	pop  af                                          ; $5604: $f1
	ld   de, $ff6f                                   ; $5605: $11 $6f $ff
	ld   d, c                                        ; $5608: $51
	dec  h                                           ; $5609: $25
	sbc  e                                           ; $560a: $9b
	cp   $91                                         ; $560b: $fe $91
	ld   de, $ff7f                                   ; $560d: $11 $7f $ff
	ld   de, $ff19                                   ; $5610: $11 $19 $ff
	db   $e4                                         ; $5613: $e4
	ld   [bc], a                                     ; $5614: $02
	ld   e, d                                        ; $5615: $5a
	rst  JumpTable                                         ; $5616: $df
	rst  $10                                         ; $5617: $d7
	ld   de, $ff19                                   ; $5618: $11 $19 $ff
	pop  af                                          ; $561b: $f1
	ld   de, $fdaf                                   ; $561c: $11 $af $fd
	ld   b, c                                        ; $561f: $41
	ld   h, $ad                                      ; $5620: $26 $ad
	ei                                               ; $5622: $fb
	ld   h, c                                        ; $5623: $61
	ld   de, $fcbf                                   ; $5624: $11 $bf $fc
	ld   de, $ff1b                                   ; $5627: $11 $1b $ff
	db   $d3                                         ; $562a: $d3
	ld   [de], a                                     ; $562b: $12
	ld   l, d                                        ; $562c: $6a
	rst  JumpTable                                         ; $562d: $df
	or   [hl]                                        ; $562e: $b6
	ld   de, $ff1a                                   ; $562f: $11 $1a $ff
	pop  de                                          ; $5632: $d1
	ld   de, $fdbf                                   ; $5633: $11 $bf $fd
	ld   b, c                                        ; $5636: $41
	ld   h, $bd                                      ; $5637: $26 $bd
	ei                                               ; $5639: $fb
	ld   d, c                                        ; $563a: $51
	ld   de, $fdaf                                   ; $563b: $11 $af $fd
	ld   de, $ff1b                                   ; $563e: $11 $1b $ff
	push de                                          ; $5641: $d5
	ld   [de], a                                     ; $5642: $12
	ld   e, e                                        ; $5643: $5b
	rst  $28                                         ; $5644: $ef
	or   l                                           ; $5645: $b5
	ld   de, $ff16                                   ; $5646: $11 $16 $ff
	pop  af                                          ; $5649: $f1
	ld   de, $fe9f                                   ; $564a: $11 $9f $fe
	ld   h, c                                        ; $564d: $61
	inc  d                                           ; $564e: $14
	cp   l                                           ; $564f: $bd
	ei                                               ; $5650: $fb
	ld   h, c                                        ; $5651: $61
	ld   de, $ff4f                                   ; $5652: $11 $4f $ff
	ld   de, $ff17                                   ; $5655: $11 $17 $ff
	add  sp, $11                                     ; $5658: $e8 $11
	dec  sp                                          ; $565a: $3b
	rst  JumpTable                                         ; $565b: $df
	sub  $21                                         ; $565c: $d6 $21
	ld   [de], a                                     ; $565e: $12
	rst  $38                                         ; $565f: $ff
	di                                               ; $5660: $f3
	ld   de, $fe5f                                   ; $5661: $11 $5f $fe
	sub  c                                           ; $5664: $91
	inc  de                                          ; $5665: $13
	xor  h                                           ; $5666: $ac
	db   $fd                                         ; $5667: $fd
	ld   h, e                                        ; $5668: $63
	ld   de, $ff0f                                   ; $5669: $11 $0f $ff
	ld   [hl], c                                     ; $566c: $71
	inc  de                                          ; $566d: $13
	rst  $38                                         ; $566e: $ff
	db   $eb                                         ; $566f: $eb
	ld   sp, $cf27                                   ; $5670: $31 $27 $cf
	rst  $30                                         ; $5673: $f7
	ld   b, c                                        ; $5674: $41
	ld   de, $f9cf                                   ; $5675: $11 $cf $f9
	ld   de, $fd2c                                   ; $5678: $11 $2c $fd
	push de                                          ; $567b: $d5
	ld   [de], a                                     ; $567c: $12
	ld   e, e                                        ; $567d: $5b
	rst  $28                                         ; $567e: $ef
	sub  l                                           ; $567f: $95
	ld   de, $ff17                                   ; $5680: $11 $17 $ff
	pop  bc                                          ; $5683: $c1
	ld   de, $ee9f                                   ; $5684: $11 $9f $ee
	add  c                                           ; $5687: $81
	inc  d                                           ; $5688: $14
	cp   l                                           ; $5689: $bd
	ld   a, [$1162]                                  ; $568a: $fa $62 $11
	ccf                                              ; $568d: $3f
	rst  $38                                         ; $568e: $ff
	ld   de, $fe17                                   ; $568f: $11 $17 $fe
	db   $ec                                         ; $5692: $ec
	ld   sp, $df29                                   ; $5693: $31 $29 $df
	rst  ToBoot                                         ; $5696: $c7
	ld   b, c                                        ; $5697: $41
	ld   de, $f5ff                                   ; $5698: $11 $ff $f5
	ld   de, $fe5e                                   ; $569b: $11 $5e $fe
	push de                                          ; $569e: $d5
	ld   de, $fe7b                                   ; $569f: $11 $7b $fe
	add  [hl]                                        ; $56a2: $86
	ld   de, $ff1c                                   ; $56a3: $11 $1c $ff

Call_0ad_56a6:
	add  c                                           ; $56a6: $81
	inc  de                                          ; $56a7: $13
	cp   a                                           ; $56a8: $bf
	rst  JumpTable                                         ; $56a9: $df
	add  d                                           ; $56aa: $82
	dec  d                                           ; $56ab: $15
	xor  l                                           ; $56ac: $ad
	jp   hl                                          ; $56ad: $e9


	add  c                                           ; $56ae: $81
	ld   de, $fd5f                                   ; $56af: $11 $5f $fd
	ld   de, $ec28                                   ; $56b2: $11 $28 $ec
	db   $fc                                         ; $56b5: $fc
	ld   sp, $be3a                                   ; $56b6: $31 $3a $be

Call_0ad_56b9:
	cp   c                                           ; $56b9: $b9
	ld   b, c                                        ; $56ba: $41
	ld   de, $f3ff                                   ; $56bb: $11 $ff $f3
	ld   [de], a                                     ; $56be: $12
	ld   e, e                                        ; $56bf: $5b
	cp   a                                           ; $56c0: $bf
	or   $11                                         ; $56c1: $f6 $11
	ld   a, d                                        ; $56c3: $7a
	call c, $11b9                                    ; $56c4: $dc $b9 $11

Call_0ad_56c7:
	ld   a, [de]                                     ; $56c7: $1a
	rst  $38                                         ; $56c8: $ff
	add  c                                           ; $56c9: $81
	inc  de                                          ; $56ca: $13
	ld   a, d                                        ; $56cb: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56cc: $cf
	or   e                                           ; $56cd: $b3
	inc  d                                           ; $56ce: $14
	sbc  e                                           ; $56cf: $9b
	db   $ec                                         ; $56d0: $ec
	jp   $2f11                                       ; $56d1: $c3 $11 $2f


	cp   $42                                         ; $56d4: $fe $42
	inc  [hl]                                        ; $56d6: $34
	sbc  d                                           ; $56d7: $9a
	rst  $38                                         ; $56d8: $ff
	ld   h, d                                        ; $56d9: $62
	daa                                              ; $56da: $27
	sbc  h                                           ; $56db: $9c
	call c, $1191                                    ; $56dc: $dc $91 $11
	sbc  a                                           ; $56df: $9f
	ld   sp, hl                                      ; $56e0: $f9
	inc  [hl]                                        ; $56e1: $34
	dec  [hl]                                        ; $56e2: $35
	sbc  h                                           ; $56e3: $9c
	ei                                               ; $56e4: $fb
	ld   b, e                                        ; $56e5: $43
	ld   e, b                                        ; $56e6: $58
	adc  h                                           ; $56e7: $8c
	call c, $1141                                    ; $56e8: $dc $41 $11
	rst  $38                                         ; $56eb: $ff
	sub  $55                                         ; $56ec: $d6 $55
	ld   [hl], $8f                                   ; $56ee: $36 $8f
	rst  $30                                         ; $56f0: $f7
	ld   b, h                                        ; $56f1: $44
	ld   [hl], a                                     ; $56f2: $77
	adc  h                                           ; $56f3: $8c
	jp   c, $1521                                    ; $56f4: $da $21 $15

	rst  $38                                         ; $56f7: $ff
	and  a                                           ; $56f8: $a7
	ld   h, l                                        ; $56f9: $65
	ld   b, [hl]                                     ; $56fa: $46
	xor  a                                           ; $56fb: $af
	add  $66                                         ; $56fc: $c6 $66
	add  l                                           ; $56fe: $85
	sbc  e                                           ; $56ff: $9b
	rst  $10                                         ; $5700: $d7
	ld   hl, $fe19                                   ; $5701: $21 $19 $fe
	sbc  b                                           ; $5704: $98
	ld   [hl], l                                     ; $5705: $75
	ld   b, l                                        ; $5706: $45
	xor  a                                           ; $5707: $af
	sub  a                                           ; $5708: $97
	ld   [hl], a                                     ; $5709: $77
	ld   [hl], l                                     ; $570a: $75
	xor  e                                           ; $570b: $ab
	sub  $41                                         ; $570c: $d6 $41
	dec  de                                          ; $570e: $1b
	ei                                               ; $570f: $fb
	sbc  c                                           ; $5710: $99
	add  [hl]                                        ; $5711: $86
	ld   b, [hl]                                     ; $5712: $46
	cp   [hl]                                        ; $5713: $be
	adc  b                                           ; $5714: $88
	adc  b                                           ; $5715: $88
	ld   h, l                                        ; $5716: $65
	xor  e                                           ; $5717: $ab
	or   l                                           ; $5718: $b5
	ld   d, c                                        ; $5719: $51
	dec  de                                          ; $571a: $1b
	ei                                               ; $571b: $fb
	sbc  c                                           ; $571c: $99
	add  [hl]                                        ; $571d: $86
	ld   [hl], $bc                                   ; $571e: $36 $bc
	adc  c                                           ; $5720: $89
	sbc  c                                           ; $5721: $99
	ld   d, [hl]                                     ; $5722: $56
	xor  e                                           ; $5723: $ab
	sub  [hl]                                        ; $5724: $96
	ld   h, c                                        ; $5725: $61
	dec  hl                                          ; $5726: $2b
	ld   sp, hl                                      ; $5727: $f9
	xor  d                                           ; $5728: $aa
	sub  [hl]                                        ; $5729: $96
	ld   b, [hl]                                     ; $572a: $46
	cp   h                                           ; $572b: $bc
	ld   a, d                                        ; $572c: $7a
	sbc  d                                           ; $572d: $9a
	ld   d, [hl]                                     ; $572e: $56
	xor  e                                           ; $572f: $ab
	add  [hl]                                        ; $5730: $86
	ld   h, c                                        ; $5731: $61
	dec  hl                                          ; $5732: $2b
	jp   c, $96ba                                    ; $5733: $da $ba $96

	ld   b, a                                        ; $5736: $47
	cp   d                                           ; $5737: $ba
	ld   a, c                                        ; $5738: $79
	sbc  c                                           ; $5739: $99
	ld   d, a                                        ; $573a: $57
	sbc  d                                           ; $573b: $9a
	ld   [hl], a                                     ; $573c: $77
	ld   h, c                                        ; $573d: $61
	dec  hl                                          ; $573e: $2b
	reti                                             ; $573f: $d9


	xor  d                                           ; $5740: $aa
	or   [hl]                                        ; $5741: $b6
	ld   b, a                                        ; $5742: $47
	cp   c                                           ; $5743: $b9
	ld   a, c                                        ; $5744: $79
	sbc  d                                           ; $5745: $9a
	ld   l, b                                        ; $5746: $68
	sbc  c                                           ; $5747: $99
	ld   h, a                                        ; $5748: $67
	ld   h, c                                        ; $5749: $61
	add  hl, sp                                      ; $574a: $39
	cp   c                                           ; $574b: $b9
	cp   d                                           ; $574c: $ba
	or   a                                           ; $574d: $b7
	ld   l, b                                        ; $574e: $68
	xor  b                                           ; $574f: $a8
	ld   l, b                                        ; $5750: $68
	adc  c                                           ; $5751: $89
	ld   l, b                                        ; $5752: $68
	xor  c                                           ; $5753: $a9
	ld   h, [hl]                                     ; $5754: $66
	ld   h, d                                        ; $5755: $62
	ld   e, c                                        ; $5756: $59
	xor  c                                           ; $5757: $a9
	sbc  d                                           ; $5758: $9a
	xor  b                                           ; $5759: $a8
	adc  c                                           ; $575a: $89
	sub  a                                           ; $575b: $97
	ld   a, b                                        ; $575c: $78
	adc  b                                           ; $575d: $88
	ld   a, c                                        ; $575e: $79
	sbc  b                                           ; $575f: $98
	ld   h, [hl]                                     ; $5760: $66
	ld   d, [hl]                                     ; $5761: $56
	adc  b                                           ; $5762: $88
	sbc  b                                           ; $5763: $98
	sbc  b                                           ; $5764: $98
	sbc  c                                           ; $5765: $99
	xor  c                                           ; $5766: $a9
	ld   a, b                                        ; $5767: $78
	sbc  b                                           ; $5768: $98
	ld   [hl], a                                     ; $5769: $77
	adc  b                                           ; $576a: $88
	halt                                             ; $576b: $76
	ld   a, b                                        ; $576c: $78
	adc  b                                           ; $576d: $88
	adc  c                                           ; $576e: $89
	adc  b                                           ; $576f: $88
	ld   a, c                                        ; $5770: $79
	adc  c                                           ; $5771: $89
	ld   a, b                                        ; $5772: $78
	adc  b                                           ; $5773: $88
	adc  b                                           ; $5774: $88
	sbc  b                                           ; $5775: $98
	adc  c                                           ; $5776: $89
	sbc  b                                           ; $5777: $98
	adc  b                                           ; $5778: $88
	adc  b                                           ; $5779: $88
	ld   [hl], a                                     ; $577a: $77
	ld   [hl], a                                     ; $577b: $77
	ld   [hl], a                                     ; $577c: $77
	adc  b                                           ; $577d: $88
	add  a                                           ; $577e: $87
	adc  c                                           ; $577f: $89
	adc  c                                           ; $5780: $89
	sbc  c                                           ; $5781: $99
	adc  b                                           ; $5782: $88
	sbc  b                                           ; $5783: $98
	adc  b                                           ; $5784: $88
	adc  b                                           ; $5785: $88
	ld   [hl], a                                     ; $5786: $77
	ld   [hl], a                                     ; $5787: $77
	ld   [hl], a                                     ; $5788: $77
	adc  b                                           ; $5789: $88
	add  a                                           ; $578a: $87
	adc  c                                           ; $578b: $89
	adc  b                                           ; $578c: $88
	adc  b                                           ; $578d: $88
	sbc  c                                           ; $578e: $99
	adc  c                                           ; $578f: $89
	sbc  b                                           ; $5790: $98
	add  a                                           ; $5791: $87
	ld   [hl], a                                     ; $5792: $77
	ld   [hl], a                                     ; $5793: $77
	ld   a, b                                        ; $5794: $78
	adc  b                                           ; $5795: $88
	ld   a, b                                        ; $5796: $78
	adc  c                                           ; $5797: $89
	adc  b                                           ; $5798: $88
	adc  c                                           ; $5799: $89
	sbc  b                                           ; $579a: $98
	adc  c                                           ; $579b: $89
	adc  b                                           ; $579c: $88
	add  a                                           ; $579d: $87
	ld   [hl], a                                     ; $579e: $77
	adc  b                                           ; $579f: $88
	adc  b                                           ; $57a0: $88
	adc  b                                           ; $57a1: $88
	adc  b                                           ; $57a2: $88
	sbc  c                                           ; $57a3: $99
	sbc  c                                           ; $57a4: $99
	sbc  b                                           ; $57a5: $98
	adc  b                                           ; $57a6: $88
	adc  b                                           ; $57a7: $88
	adc  b                                           ; $57a8: $88
	add  a                                           ; $57a9: $87
	ld   a, b                                        ; $57aa: $78
	adc  b                                           ; $57ab: $88
	adc  b                                           ; $57ac: $88
	adc  b                                           ; $57ad: $88
	adc  b                                           ; $57ae: $88
	sbc  c                                           ; $57af: $99
	sbc  c                                           ; $57b0: $99
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
	add  a                                           ; $5985: $87
	adc  b                                           ; $5986: $88

jr_0ad_5987:
	add  a                                           ; $5987: $87
	adc  b                                           ; $5988: $88
	adc  b                                           ; $5989: $88
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	adc  b                                           ; $598c: $88
	sbc  c                                           ; $598d: $99
	add  a                                           ; $598e: $87
	ld   [hl], a                                     ; $598f: $77
	add  [hl]                                        ; $5990: $86
	ld   a, b                                        ; $5991: $78
	adc  b                                           ; $5992: $88
	ld   a, d                                        ; $5993: $7a
	sbc  b                                           ; $5994: $98
	sbc  c                                           ; $5995: $99
	add  a                                           ; $5996: $87
	sbc  b                                           ; $5997: $98
	ld   h, [hl]                                     ; $5998: $66
	ld   l, b                                        ; $5999: $68
	halt                                             ; $599a: $76
	sbc  c                                           ; $599b: $99
	sbc  b                                           ; $599c: $98
	adc  e                                           ; $599d: $8b
	ld   a, c                                        ; $599e: $79
	sbc  b                                           ; $599f: $98
	ld   [hl], a                                     ; $59a0: $77
	add  a                                           ; $59a1: $87
	halt                                             ; $59a2: $76
	ld   a, b                                        ; $59a3: $78
	sub  a                                           ; $59a4: $97
	xor  c                                           ; $59a5: $a9
	sbc  b                                           ; $59a6: $98
	ld   a, d                                        ; $59a7: $7a
	ld   a, b                                        ; $59a8: $78
	adc  b                                           ; $59a9: $88
	add  a                                           ; $59aa: $87
	sbc  b                                           ; $59ab: $98
	ld   [hl], l                                     ; $59ac: $75
	ld   l, c                                        ; $59ad: $69
	add  [hl]                                        ; $59ae: $86
	sbc  c                                           ; $59af: $99
	sbc  b                                           ; $59b0: $98
	adc  h                                           ; $59b1: $8c
	ld   [hl], a                                     ; $59b2: $77
	adc  d                                           ; $59b3: $8a
	halt                                             ; $59b4: $76
	sbc  b                                           ; $59b5: $98
	ld   h, l                                        ; $59b6: $65
	ld   l, c                                        ; $59b7: $69
	add  [hl]                                        ; $59b8: $86
	cp   b                                           ; $59b9: $b8
	xor  b                                           ; $59ba: $a8
	adc  h                                           ; $59bb: $8c
	ld   e, b                                        ; $59bc: $58
	adc  d                                           ; $59bd: $8a
	ld   [hl], a                                     ; $59be: $77
	xor  b                                           ; $59bf: $a8
	ld   h, h                                        ; $59c0: $64
	ld   e, c                                        ; $59c1: $59
	add  l                                           ; $59c2: $85
	cp   c                                           ; $59c3: $b9
	cp   b                                           ; $59c4: $b8
	ld   a, l                                        ; $59c5: $7d
	ld   d, a                                        ; $59c6: $57
	ld   a, d                                        ; $59c7: $7a
	ld   [hl], a                                     ; $59c8: $77
	xor  b                                           ; $59c9: $a8
	ld   d, d                                        ; $59ca: $52
	ld   l, e                                        ; $59cb: $6b
	ld   h, [hl]                                     ; $59cc: $66
	ret                                              ; $59cd: $c9


	or   [hl]                                        ; $59ce: $b6
	xor  e                                           ; $59cf: $ab
	ld   b, a                                        ; $59d0: $47
	sbc  e                                           ; $59d1: $9b
	ld   l, c                                        ; $59d2: $69
	or   a                                           ; $59d3: $b7
	ld   sp, $498b                                   ; $59d4: $31 $8b $49
	jp   c, $d8a4                                    ; $59d7: $da $a4 $d8

	jr   c, jr_0ad_5987                              ; $59da: $38 $ab

	ld   l, h                                        ; $59dc: $6c
	and  l                                           ; $59dd: $a5
	ld   de, $5ec8                                   ; $59de: $11 $c8 $5e
	call z, $d366                                    ; $59e1: $cc $66 $d3
	ld   e, d                                        ; $59e4: $5a
	ret                                              ; $59e5: $c9


	adc  h                                           ; $59e6: $8c
	ld   h, c                                        ; $59e7: $61
	ld   a, [de]                                     ; $59e8: $1a
	db   $e4                                         ; $59e9: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59ea: $cf
	rst  $20                                         ; $59eb: $e7
	dec  a                                           ; $59ec: $3d
	ld   h, e                                        ; $59ed: $63
	sbc  [hl]                                        ; $59ee: $9e
	rst  ToBoot                                         ; $59ef: $c7
	and  [hl]                                        ; $59f0: $a6
	ld   de, $5c8f                                   ; $59f1: $11 $8f $5c
	rst  $28                                         ; $59f4: $ef
	ld   [hl], c                                     ; $59f5: $71
	add  $59                                         ; $59f6: $c6 $59
	sbc  $79                                         ; $59f8: $de $79
	ld   d, c                                        ; $59fa: $51
	ld   d, $f9                                      ; $59fb: $16 $f9
	call $19e7                                       ; $59fd: $cd $e7 $19
	sub  a                                           ; $5a00: $97
	sbc  [hl]                                        ; $5a01: $9e
	rst  $30                                         ; $5a02: $f7
	ld   d, e                                        ; $5a03: $53
	ld   de, $ae9f                                   ; $5a04: $11 $9f $ae
	adc  $31                                         ; $5a07: $ce $31
	adc  b                                           ; $5a09: $88
	cp   h                                           ; $5a0a: $bc
	cp   $62                                         ; $5a0b: $fe $62
	ld   de, $fe1d                                   ; $5a0d: $11 $1d $fe
	jp   c, $1991                                    ; $5a10: $da $91 $19

	cp   [hl]                                        ; $5a13: $be
	rst  $28                                         ; $5a14: $ef
	sub  e                                           ; $5a15: $93
	ld   de, $ff15                                   ; $5a16: $11 $15 $ff
	ei                                               ; $5a19: $fb
	ld   [hl], d                                     ; $5a1a: $72
	inc  d                                           ; $5a1b: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a1c: $cf
	rst  $38                                         ; $5a1d: $ff
	db   $d3                                         ; $5a1e: $d3
	ld   de, $df11                                   ; $5a1f: $11 $11 $df
	ei                                               ; $5a22: $fb
	ld   b, h                                        ; $5a23: $44
	ld   de, $ffbf                                   ; $5a24: $11 $bf $ff
	call nz, $1411                                   ; $5a27: $c4 $11 $14
	adc  a                                           ; $5a2a: $8f
	cp   $41                                         ; $5a2b: $fe $41
	ld   de, $ff6f                                   ; $5a2d: $11 $6f $ff
	and  [hl]                                        ; $5a30: $a6
	ld   de, $7e16                                   ; $5a31: $11 $16 $7e
	rst  $38                                         ; $5a34: $ff
	ld   b, c                                        ; $5a35: $41
	ld   [de], a                                     ; $5a36: $12
	cpl                                              ; $5a37: $2f
	rst  $38                                         ; $5a38: $ff
	and  h                                           ; $5a39: $a4
	ld   de, $9a15                                   ; $5a3a: $11 $15 $9a
	rst  $38                                         ; $5a3d: $ff
	ld   h, c                                        ; $5a3e: $61
	inc  d                                           ; $5a3f: $14
	dec  hl                                          ; $5a40: $2b
	rst  $38                                         ; $5a41: $ff
	or   h                                           ; $5a42: $b4
	ld   de, $9914                                   ; $5a43: $11 $14 $99
	rst  $38                                         ; $5a46: $ff
	and  c                                           ; $5a47: $a1
	inc  d                                           ; $5a48: $14
	ld   d, a                                        ; $5a49: $57
	rst  $38                                         ; $5a4a: $ff
	call nz, $1401                                   ; $5a4b: $c4 $01 $14
	adc  b                                           ; $5a4e: $88
	rst  $28                                         ; $5a4f: $ef
	pop  bc                                          ; $5a50: $c1
	inc  d                                           ; $5a51: $14
	ld   d, [hl]                                     ; $5a52: $56
	rst  $38                                         ; $5a53: $ff
	call nc, $1411                                   ; $5a54: $d4 $11 $14
	add  a                                           ; $5a57: $87
	rst  $28                                         ; $5a58: $ef
	pop  bc                                          ; $5a59: $c1
	inc  d                                           ; $5a5a: $14
	ld   h, [hl]                                     ; $5a5b: $66
	rst  $38                                         ; $5a5c: $ff
	call nz, $1511                                   ; $5a5d: $c4 $11 $15
	halt                                             ; $5a60: $76
	rst  $28                                         ; $5a61: $ef
	pop  bc                                          ; $5a62: $c1
	dec  d                                           ; $5a63: $15
	ld   l, b                                        ; $5a64: $68
	rst  $38                                         ; $5a65: $ff
	and  e                                           ; $5a66: $a3
	ld   de, $6726                                   ; $5a67: $11 $26 $67
	rst  $38                                         ; $5a6a: $ff
	sub  c                                           ; $5a6b: $91
	daa                                              ; $5a6c: $27
	ld   l, d                                        ; $5a6d: $6a
	rst  $38                                         ; $5a6e: $ff
	sub  d                                           ; $5a6f: $92
	ld   de, $5937                                   ; $5a70: $11 $37 $59
	rst  $38                                         ; $5a73: $ff
	ld   b, c                                        ; $5a74: $41
	ld   c, b                                        ; $5a75: $48
	ld   a, [hl]                                     ; $5a76: $7e
	cp   $51                                         ; $5a77: $fe $51
	ld   [de], a                                     ; $5a79: $12
	ld   h, [hl]                                     ; $5a7a: $66
	ld   c, [hl]                                     ; $5a7b: $4e
	db   $fd                                         ; $5a7c: $fd
	ld   de, $af79                                   ; $5a7d: $11 $79 $af
	ld   a, [$1521]                                  ; $5a80: $fa $21 $15
	add  l                                           ; $5a83: $85
	ld   a, a                                        ; $5a84: $7f
	push af                                          ; $5a85: $f5
	inc  de                                          ; $5a86: $13
	sbc  d                                           ; $5a87: $9a
	rst  $38                                         ; $5a88: $ff
	push de                                          ; $5a89: $d5
	ld   de, $6538                                   ; $5a8a: $11 $38 $65
	rst  $38                                         ; $5a8d: $ff
	and  c                                           ; $5a8e: $a1
	rla                                              ; $5a8f: $17
	xor  a                                           ; $5a90: $af
	rst  $38                                         ; $5a91: $ff
	ld   [hl], c                                     ; $5a92: $71
	ld   [de], a                                     ; $5a93: $12
	adc  b                                           ; $5a94: $88
	ld   c, h                                        ; $5a95: $4c
	cp   $11                                         ; $5a96: $fe $11
	ld   a, e                                        ; $5a98: $7b
	rst  $28                                         ; $5a99: $ef
	ld   hl, sp+$11                                  ; $5a9a: $f8 $11
	jr   @-$6a                                       ; $5a9c: $18 $94

	xor  a                                           ; $5a9e: $af
	pop  af                                          ; $5a9f: $f1
	ld   d, $af                                      ; $5aa0: $16 $af
	rst  $38                                         ; $5aa2: $ff
	sub  d                                           ; $5aa3: $92
	ld   de, $598b                                   ; $5aa4: $11 $8b $59
	rst  $38                                         ; $5aa7: $ff
	ld   de, $ff5c                                   ; $5aa8: $11 $5c $ff
	ret  c                                           ; $5aab: $d8

	ld   hl, $a618                                   ; $5aac: $21 $18 $a6
	cp   a                                           ; $5aaf: $bf
	pop  hl                                          ; $5ab0: $e1
	ld   d, $df                                      ; $5ab1: $16 $df
	db   $fc                                         ; $5ab3: $fc
	ld   [hl], c                                     ; $5ab4: $71
	ld   de, $6e99                                   ; $5ab5: $11 $99 $6e
	ld   a, [$8e11]                                  ; $5ab8: $fa $11 $8e
	rst  $38                                         ; $5abb: $ff
	or   h                                           ; $5abc: $b4
	ld   de, $962b                                   ; $5abd: $11 $2b $96
	rst  $28                                         ; $5ac0: $ef
	ld   h, c                                        ; $5ac1: $61
	add  hl, de                                      ; $5ac2: $19
	rst  $38                                         ; $5ac3: $ff
	ld   sp, hl                                      ; $5ac4: $f9
	ld   sp, $b814                                   ; $5ac5: $31 $14 $b8
	sbc  a                                           ; $5ac8: $9f
	ldh  a, [c]                                      ; $5ac9: $f2
	inc  de                                          ; $5aca: $13
	cp   a                                           ; $5acb: $bf
	cp   $81                                         ; $5acc: $fe $81
	ld   de, $7b6b                                   ; $5ace: $11 $6b $7b
	cp   $11                                         ; $5ad1: $fe $11
	ld   e, l                                        ; $5ad3: $5d
	rst  $38                                         ; $5ad4: $ff
	add  $11                                         ; $5ad5: $c6 $11
	add  hl, de                                      ; $5ad7: $19
	and  a                                           ; $5ad8: $a7
	rst  $38                                         ; $5ad9: $ff
	sub  c                                           ; $5ada: $91
	rla                                              ; $5adb: $17
	rst  $38                                         ; $5adc: $ff
	ld   a, [$1141]                                  ; $5add: $fa $41 $11
	sbc  c                                           ; $5ae0: $99
	adc  a                                           ; $5ae1: $8f
	db   $f4                                         ; $5ae2: $f4
	ld   de, $ff9f                                   ; $5ae3: $11 $9f $ff
	add  d                                           ; $5ae6: $82
	ld   de, $8c4a                                   ; $5ae7: $11 $4a $8c
	rst  $38                                         ; $5aea: $ff
	ld   de, $ff3c                                   ; $5aeb: $11 $3c $ff
	and  $11                                         ; $5aee: $e6 $11
	rla                                              ; $5af0: $17
	or   [hl]                                        ; $5af1: $b6
	rst  JumpTable                                         ; $5af2: $df
	or   c                                           ; $5af3: $b1
	rla                                              ; $5af4: $17
	rst  $28                                         ; $5af5: $ef
	db   $fc                                         ; $5af6: $fc
	ld   b, c                                        ; $5af7: $41
	ld   de, $7f9a                                   ; $5af8: $11 $9a $7f
	rst  $30                                         ; $5afb: $f7
	ld   de, $ffaf                                   ; $5afc: $11 $af $ff
	add  d                                           ; $5aff: $82
	ld   de, $794b                                   ; $5b00: $11 $4b $79
	rst  $38                                         ; $5b03: $ff
	ld   de, $ff3d                                   ; $5b04: $11 $3d $ff
	or   $11                                         ; $5b07: $f6 $11
	add  hl, hl                                      ; $5b09: $29
	or   h                                           ; $5b0a: $b4
	sbc  a                                           ; $5b0b: $9f
	pop  af                                          ; $5b0c: $f1
	rla                                              ; $5b0d: $17
	rst  $38                                         ; $5b0e: $ff
	db   $fc                                         ; $5b0f: $fc
	ld   d, c                                        ; $5b10: $51
	inc  de                                          ; $5b11: $13
	xor  c                                           ; $5b12: $a9
	inc  l                                           ; $5b13: $2c
	db   $fc                                         ; $5b14: $fc
	ld   de, $ffaf                                   ; $5b15: $11 $af $ff
	call nz, Call_0ad_4c11                           ; $5b18: $c4 $11 $4c
	add  c                                           ; $5b1b: $81
	rst  JumpTable                                         ; $5b1c: $df
	or   c                                           ; $5b1d: $b1
	ld   a, [de]                                     ; $5b1e: $1a
	rst  $38                                         ; $5b1f: $ff
	db   $fc                                         ; $5b20: $fc
	ld   b, c                                        ; $5b21: $41
	inc  d                                           ; $5b22: $14
	rst  ToBoot                                         ; $5b23: $c7
	rra                                              ; $5b24: $1f
	ld   sp, hl                                      ; $5b25: $f9
	ld   de, $ffbf                                   ; $5b26: $11 $bf $ff
	or   e                                           ; $5b29: $b3
	ld   de, $616e                                   ; $5b2a: $11 $6e $61
	rst  $38                                         ; $5b2d: $ff
	add  c                                           ; $5b2e: $81
	inc  e                                           ; $5b2f: $1c
	rst  $38                                         ; $5b30: $ff
	ei                                               ; $5b31: $fb
	ld   sp, $e616                                   ; $5b32: $31 $16 $e6
	rra                                              ; $5b35: $1f
	ld   hl, sp+$11                                  ; $5b36: $f8 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b38: $cf
	rst  $38                                         ; $5b39: $ff
	or   e                                           ; $5b3a: $b3
	ld   de, $616e                                   ; $5b3b: $11 $6e $61
	rst  $28                                         ; $5b3e: $ef
	add  c                                           ; $5b3f: $81
	dec  de                                          ; $5b40: $1b
	rst  $38                                         ; $5b41: $ff
	ei                                               ; $5b42: $fb
	ld   b, c                                        ; $5b43: $41
	ld   d, $f6                                      ; $5b44: $16 $f6
	rra                                              ; $5b46: $1f
	ld   sp, hl                                      ; $5b47: $f9
	ld   de, $ffcf                                   ; $5b48: $11 $cf $ff
	or   h                                           ; $5b4b: $b4
	ld   de, $715f                                   ; $5b4c: $11 $5f $71
	cp   a                                           ; $5b4f: $bf
	pop  bc                                          ; $5b50: $c1
	add  hl, de                                      ; $5b51: $19
	rst  $38                                         ; $5b52: $ff
	db   $fc                                         ; $5b53: $fc
	ld   h, c                                        ; $5b54: $61
	inc  d                                           ; $5b55: $14
	jp   hl                                          ; $5b56: $e9


	jr   @+$01                                       ; $5b57: $18 $ff

	ld   de, $ff8f                                   ; $5b59: $11 $8f $ff
	rst  ToBoot                                         ; $5b5c: $c7
	ld   de, $c12e                                   ; $5b5d: $11 $2e $c1
	ld   e, a                                        ; $5b60: $5f
	pop  af                                          ; $5b61: $f1
	dec  d                                           ; $5b62: $15
	rst  $38                                         ; $5b63: $ff
	db   $fd                                         ; $5b64: $fd
	add  d                                           ; $5b65: $82
	ld   de, $11de                                   ; $5b66: $11 $de $11
	rst  $38                                         ; $5b69: $ff
	ld   hl, $ff2e                                   ; $5b6a: $21 $2e $ff
	jp   c, $1a31                                    ; $5b6d: $da $31 $1a

	pop  af                                          ; $5b70: $f1
	rra                                              ; $5b71: $1f
	push af                                          ; $5b72: $f5
	ld   de, $fedf                                   ; $5b73: $11 $df $fe
	and  h                                           ; $5b76: $a4
	ld   de, $419f                                   ; $5b77: $11 $9f $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b7a: $cf
	and  c                                           ; $5b7b: $a1
	ld   a, [de]                                     ; $5b7c: $1a
	rst  $38                                         ; $5b7d: $ff
	db   $eb                                         ; $5b7e: $eb
	ld   h, c                                        ; $5b7f: $61
	dec  d                                           ; $5b80: $15
	ld   sp, hl                                      ; $5b81: $f9
	ld   d, $ff                                      ; $5b82: $16 $ff
	ld   de, $fe6f                                   ; $5b84: $11 $6f $fe
	rst  ToBoot                                         ; $5b87: $c7
	ld   sp, $d12f                                   ; $5b88: $31 $2f $d1
	rra                                              ; $5b8b: $1f
	pop  af                                          ; $5b8c: $f1
	ld   de, $fcff                                   ; $5b8d: $11 $ff $fc
	sub  h                                           ; $5b90: $94
	ld   de, $11bf                                   ; $5b91: $11 $bf $11
	rst  $38                                         ; $5b94: $ff
	ld   [hl], c                                     ; $5b95: $71
	inc  e                                           ; $5b96: $1c
	rst  $38                                         ; $5b97: $ff
	reti                                             ; $5b98: $d9


	ld   d, d                                        ; $5b99: $52
	rla                                              ; $5b9a: $17
	or   $18                                         ; $5b9b: $f6 $18
	rst  $38                                         ; $5b9d: $ff
	ld   de, $fd6f                                   ; $5b9e: $11 $6f $fd
	and  [hl]                                        ; $5ba1: $a6
	ld   sp, $b14e                                   ; $5ba2: $31 $4e $b1
	rra                                              ; $5ba5: $1f
	pop  af                                          ; $5ba6: $f1
	ld   [de], a                                     ; $5ba7: $12
	rst  $38                                         ; $5ba8: $ff
	db   $eb                                         ; $5ba9: $eb
	ld   [hl], l                                     ; $5baa: $75

jr_0ad_5bab:
	ld   de, $11ce                                   ; $5bab: $11 $ce $11
	rst  $38                                         ; $5bae: $ff
	ld   h, c                                        ; $5baf: $61
	dec  de                                          ; $5bb0: $1b
	rst  $38                                         ; $5bb1: $ff
	reti                                             ; $5bb2: $d9


	ld   h, d                                        ; $5bb3: $62
	jr   jr_0ad_5bab                                 ; $5bb4: $18 $f5

	ld   a, [de]                                     ; $5bb6: $1a
	db   $fc                                         ; $5bb7: $fc
	ld   de, $fd7f                                   ; $5bb8: $11 $7f $fd
	and  a                                           ; $5bbb: $a7
	ld   d, c                                        ; $5bbc: $51
	ld   c, [hl]                                     ; $5bbd: $4e
	and  c                                           ; $5bbe: $a1
	ccf                                              ; $5bbf: $3f
	pop  af                                          ; $5bc0: $f1
	ld   [de], a                                     ; $5bc1: $12
	rst  $38                                         ; $5bc2: $ff
	db   $ec                                         ; $5bc3: $ec
	ld   [hl], l                                     ; $5bc4: $75
	ld   de, $11cd                                   ; $5bc5: $11 $cd $11
	rst  $38                                         ; $5bc8: $ff
	ld   hl, $ff1d                                   ; $5bc9: $21 $1d $ff
	rst  $10                                         ; $5bcc: $d7
	ld   h, c                                        ; $5bcd: $61
	ld   a, [de]                                     ; $5bce: $1a
	di                                               ; $5bcf: $f3
	rra                                              ; $5bd0: $1f
	ld   hl, sp+$11                                  ; $5bd1: $f8 $11
	xor  a                                           ; $5bd3: $af
	rst  $38                                         ; $5bd4: $ff
	sub  [hl]                                        ; $5bd5: $96
	ld   sp, $816f                                   ; $5bd6: $31 $6f $81
	adc  a                                           ; $5bd9: $8f
	pop  hl                                          ; $5bda: $e1
	ld   d, $ff                                      ; $5bdb: $16 $ff
	ld   a, [$1365]                                  ; $5bdd: $fa $65 $13
	call c, rAUD1ENV                                    ; $5be0: $dc $12 $ff
	ld   de, $ff1f                                   ; $5be3: $11 $1f $ff
	rst  $10                                         ; $5be6: $d7
	ld   d, c                                        ; $5be7: $51
	inc  e                                           ; $5be8: $1c
	pop  hl                                          ; $5be9: $e1
	rra                                              ; $5bea: $1f
	di                                               ; $5beb: $f3
	ld   de, $fedf                                   ; $5bec: $11 $df $fe
	halt                                             ; $5bef: $76
	ld   de, $419e                                   ; $5bf0: $11 $9e $41
	rst  $38                                         ; $5bf3: $ff
	ld   h, c                                        ; $5bf4: $61
	inc  e                                           ; $5bf5: $1c
	rst  $38                                         ; $5bf6: $ff
	ld   hl, sp+$51                                  ; $5bf7: $f8 $51
	rla                                              ; $5bf9: $17
	or   $1c                                         ; $5bfa: $f6 $1c
	ld   sp, hl                                      ; $5bfc: $f9
	ld   de, $ffaf                                   ; $5bfd: $11 $af $ff
	sub  l                                           ; $5c00: $95
	ld   hl, $816f                                   ; $5c01: $21 $6f $81
	xor  a                                           ; $5c04: $af
	or   c                                           ; $5c05: $b1
	jr   @+$01                                       ; $5c06: $18 $ff

	ld   a, [$1462]                                  ; $5c08: $fa $62 $14
	ld   a, [$fd19]                                  ; $5c0b: $fa $19 $fd
	ld   de, $ff7f                                   ; $5c0e: $11 $7f $ff
	and  l                                           ; $5c11: $a5
	ld   hl, $914e                                   ; $5c12: $21 $4e $91
	xor  a                                           ; $5c15: $af
	pop  bc                                          ; $5c16: $c1
	rla                                              ; $5c17: $17
	rst  $38                                         ; $5c18: $ff
	ld   a, [$1462]                                  ; $5c19: $fa $62 $14

jr_0ad_5c1c:
	db   $eb                                         ; $5c1c: $eb
	jr   jr_0ad_5c1c                                 ; $5c1d: $18 $fd

	ld   de, $ff6f                                   ; $5c1f: $11 $6f $ff
	or   [hl]                                        ; $5c22: $b6
	ld   hl, $a13d                                   ; $5c23: $21 $3d $a1
	adc  a                                           ; $5c26: $8f
	pop  de                                          ; $5c27: $d1
	ld   d, $ff                                      ; $5c28: $16 $ff
	db   $fc                                         ; $5c2a: $fc
	ld   h, d                                        ; $5c2b: $62
	inc  de                                          ; $5c2c: $13
	ld   [$fc19], a                                  ; $5c2d: $ea $19 $fc
	ld   de, $ff6f                                   ; $5c30: $11 $6f $ff
	or   l                                           ; $5c33: $b5
	ld   hl, $a13d                                   ; $5c34: $21 $3d $a1
	xor  a                                           ; $5c37: $af
	pop  de                                          ; $5c38: $d1
	ld   d, $ff                                      ; $5c39: $16 $ff
	ld   a, [$1362]                                  ; $5c3b: $fa $62 $13
	jp   c, $fb1b                                    ; $5c3e: $da $1b $fb

	ld   de, $ff7f                                   ; $5c41: $11 $7f $ff
	and  l                                           ; $5c44: $a5
	ld   de, $a14e                                   ; $5c45: $11 $4e $a1
	cp   a                                           ; $5c48: $bf
	or   c                                           ; $5c49: $b1
	jr   @+$01                                       ; $5c4a: $18 $ff

	ei                                               ; $5c4c: $fb
	ld   d, c                                        ; $5c4d: $51
	inc  d                                           ; $5c4e: $14
	reti                                             ; $5c4f: $d9


	dec  e                                           ; $5c50: $1d
	ld   sp, hl                                      ; $5c51: $f9
	ld   de, $ff9f                                   ; $5c52: $11 $9f $ff
	sub  l                                           ; $5c55: $95
	ld   de, $815e                                   ; $5c56: $11 $5e $81
	rst  $38                                         ; $5c59: $ff
	ld   [hl], c                                     ; $5c5a: $71
	dec  de                                          ; $5c5b: $1b
	rst  $38                                         ; $5c5c: $ff
	ld   sp, hl                                      ; $5c5d: $f9
	ld   d, c                                        ; $5c5e: $51
	ld   d, $e7                                      ; $5c5f: $16 $e7
	rra                                              ; $5c61: $1f
	or   $11                                         ; $5c62: $f6 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c64: $cf
	rst  $38                                         ; $5c65: $ff
	sub  l                                           ; $5c66: $95
	ld   de, $517e                                   ; $5c67: $11 $7e $51
	rst  $38                                         ; $5c6a: $ff
	ld   b, c                                        ; $5c6b: $41
	rra                                              ; $5c6c: $1f
	rst  $38                                         ; $5c6d: $ff
	ld   hl, sp+$41                                  ; $5c6e: $f8 $41
	add  hl, de                                      ; $5c70: $19
	call nc, $f23f                                   ; $5c71: $d4 $3f $f2
	ld   de, $feff                                   ; $5c74: $11 $ff $fe
	ld   [hl], e                                     ; $5c77: $73
	ld   de, $26ad                                   ; $5c78: $11 $ad $26
	rst  $38                                         ; $5c7b: $ff
	ld   de, $ff1f                                   ; $5c7c: $11 $1f $ff
	sub  $21                                         ; $5c7f: $d6 $21
	dec  de                                          ; $5c81: $1b
	pop  de                                          ; $5c82: $d1
	sbc  a                                           ; $5c83: $9f
	pop  de                                          ; $5c84: $d1
	inc  d                                           ; $5c85: $14
	rst  $38                                         ; $5c86: $ff
	db   $fc                                         ; $5c87: $fc
	ld   h, c                                        ; $5c88: $61
	inc  de                                          ; $5c89: $13
	jp   z, $fa1c                                    ; $5c8a: $ca $1c $fa

	ld   de, $ff7f                                   ; $5c8d: $11 $7f $ff
	and  l                                           ; $5c90: $a5
	ld   de, $824d                                   ; $5c91: $11 $4d $82
	rst  $38                                         ; $5c94: $ff
	ld   h, c                                        ; $5c95: $61
	inc  e                                           ; $5c96: $1c
	rst  $38                                         ; $5c97: $ff
	ld   hl, sp+$41                                  ; $5c98: $f8 $41
	rla                                              ; $5c9a: $17
	and  $3f                                         ; $5c9b: $e6 $3f
	di                                               ; $5c9d: $f3
	ld   de, $ffff                                   ; $5c9e: $11 $ff $ff
	add  h                                           ; $5ca1: $84
	ld   de, $368d                                   ; $5ca2: $11 $8d $36
	cp   $11                                         ; $5ca5: $fe $11
	rrca                                             ; $5ca7: $0f
	rst  $38                                         ; $5ca8: $ff
	and  $21                                         ; $5ca9: $e6 $21
	ld   a, [hl+]                                    ; $5cab: $2a
	or   d                                           ; $5cac: $b2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cad: $cf
	and  c                                           ; $5cae: $a1
	ld   d, $ff                                      ; $5caf: $16 $ff
	ei                                               ; $5cb1: $fb
	ld   h, c                                        ; $5cb2: $61
	inc  d                                           ; $5cb3: $14
	cp   c                                           ; $5cb4: $b9
	ccf                                              ; $5cb5: $3f
	push af                                          ; $5cb6: $f5
	ld   de, $ffcf                                   ; $5cb7: $11 $cf $ff
	sub  h                                           ; $5cba: $94
	ld   de, $577d                                   ; $5cbb: $11 $7d $57
	rst  $38                                         ; $5cbe: $ff
	ld   bc, $ff1f                                   ; $5cbf: $01 $1f $ff
	rst  $30                                         ; $5cc2: $f7
	ld   hl, $a31a                                   ; $5cc3: $21 $1a $a3
	rst  $28                                         ; $5cc6: $ef
	sub  c                                           ; $5cc7: $91
	rla                                              ; $5cc8: $17
	rst  $38                                         ; $5cc9: $ff
	ei                                               ; $5cca: $fb
	ld   d, c                                        ; $5ccb: $51
	inc  d                                           ; $5ccc: $14
	or   a                                           ; $5ccd: $b7
	ld   e, a                                        ; $5cce: $5f
	di                                               ; $5ccf: $f3
	ld   de, $ffef                                   ; $5cd0: $11 $ef $ff
	add  e                                           ; $5cd3: $83
	ld   de, $4b8b                                   ; $5cd4: $11 $8b $4b
	db   $fd                                         ; $5cd7: $fd
	ld   de, $ff3f                                   ; $5cd8: $11 $3f $ff
	push de                                          ; $5cdb: $d5
	ld   de, $843b                                   ; $5cdc: $11 $3b $84
	rst  $38                                         ; $5cdf: $ff
	ld   d, c                                        ; $5ce0: $51
	inc  e                                           ; $5ce1: $1c
	rst  $38                                         ; $5ce2: $ff
	ld   sp, hl                                      ; $5ce3: $f9
	ld   sp, $c518                                   ; $5ce4: $31 $18 $c5
	xor  a                                           ; $5ce7: $af
	pop  hl                                          ; $5ce8: $e1
	ld   de, $fdff                                   ; $5ce9: $11 $ff $fd
	ld   h, c                                        ; $5cec: $61
	ld   [de], a                                     ; $5ced: $12
	cp   b                                           ; $5cee: $b8
	ld   c, a                                        ; $5cef: $4f
	or   $11                                         ; $5cf0: $f6 $11
	cp   a                                           ; $5cf2: $bf
	rst  $38                                         ; $5cf3: $ff
	sub  e                                           ; $5cf4: $93
	ld   de, $598b                                   ; $5cf5: $11 $8b $59
	cp   $11                                         ; $5cf8: $fe $11
	rra                                              ; $5cfa: $1f
	rst  $38                                         ; $5cfb: $ff
	and  $11                                         ; $5cfc: $e6 $11
	dec  hl                                          ; $5cfe: $2b
	sub  h                                           ; $5cff: $94
	rst  $38                                         ; $5d00: $ff
	ld   [hl], c                                     ; $5d01: $71
	add  hl, de                                      ; $5d02: $19
	rst  $38                                         ; $5d03: $ff
	ld   sp, hl                                      ; $5d04: $f9
	ld   b, c                                        ; $5d05: $41
	rla                                              ; $5d06: $17
	or   l                                           ; $5d07: $b5
	sbc  a                                           ; $5d08: $9f
	pop  hl                                          ; $5d09: $e1
	ld   de, $feff                                   ; $5d0a: $11 $ff $fe
	ld   h, c                                        ; $5d0d: $61
	ld   [de], a                                     ; $5d0e: $12
	cp   d                                           ; $5d0f: $ba
	ld   c, a                                        ; $5d10: $4f
	ld   hl, sp+$11                                  ; $5d11: $f8 $11
	sbc  a                                           ; $5d13: $9f
	rst  $38                                         ; $5d14: $ff
	and  h                                           ; $5d15: $a4
	ld   de, $676c                                   ; $5d16: $11 $6c $67
	rst  $38                                         ; $5d19: $ff
	ld   hl, $ff1f                                   ; $5d1a: $21 $1f $ff
	rst  $20                                         ; $5d1d: $e7
	ld   hl, $a41a                                   ; $5d1e: $21 $1a $a4
	rst  $38                                         ; $5d21: $ff
	add  c                                           ; $5d22: $81
	jr   @+$01                                       ; $5d23: $18 $ff

	ld   sp, hl                                      ; $5d25: $f9
	ld   d, c                                        ; $5d26: $51
	ld   d, $c7                                      ; $5d27: $16 $c7
	ld   l, a                                        ; $5d29: $6f
	di                                               ; $5d2a: $f3
	ld   de, $ffff                                   ; $5d2b: $11 $ff $ff
	ld   [hl], h                                     ; $5d2e: $74
	ld   de, $4b9b                                   ; $5d2f: $11 $9b $4b
	ei                                               ; $5d32: $fb
	ld   de, $ff3f                                   ; $5d33: $11 $3f $ff
	add  $11                                         ; $5d36: $c6 $11
	ld   c, d                                        ; $5d38: $4a
	sub  l                                           ; $5d39: $95
	rst  $38                                         ; $5d3a: $ff
	ld   d, c                                        ; $5d3b: $51
	dec  e                                           ; $5d3c: $1d
	rst  $38                                         ; $5d3d: $ff
	rst  $30                                         ; $5d3e: $f7
	ld   b, c                                        ; $5d3f: $41
	rla                                              ; $5d40: $17
	add  $9f                                         ; $5d41: $c6 $9f
	pop  de                                          ; $5d43: $d1
	ld   de, $fdff                                   ; $5d44: $11 $ff $fd
	ld   h, d                                        ; $5d47: $62
	ld   [de], a                                     ; $5d48: $12
	xor  d                                           ; $5d49: $aa
	ld   c, [hl]                                     ; $5d4a: $4e
	rst  $30                                         ; $5d4b: $f7
	ld   de, $ff8f                                   ; $5d4c: $11 $8f $ff
	add  l                                           ; $5d4f: $85
	ld   de, $856b                                   ; $5d50: $11 $6b $85
	rst  $38                                         ; $5d53: $ff
	ld   sp, $ff1e                                   ; $5d54: $31 $1e $ff
	or   $41                                         ; $5d57: $f6 $41
	add  hl, de                                      ; $5d59: $19
	or   l                                           ; $5d5a: $b5
	sbc  a                                           ; $5d5b: $9f
	pop  bc                                          ; $5d5c: $c1
	ld   [de], a                                     ; $5d5d: $12
	rst  $38                                         ; $5d5e: $ff
	ei                                               ; $5d5f: $fb
	ld   d, d                                        ; $5d60: $52
	inc  d                                           ; $5d61: $14
	xor  d                                           ; $5d62: $aa
	ld   c, a                                        ; $5d63: $4f
	or   $11                                         ; $5d64: $f6 $11
	xor  a                                           ; $5d66: $af
	rst  $38                                         ; $5d67: $ff
	add  h                                           ; $5d68: $84
	ld   de, $777b                                   ; $5d69: $11 $7b $77
	rst  $38                                         ; $5d6c: $ff
	ld   de, $ff1f                                   ; $5d6d: $11 $1f $ff
	push af                                          ; $5d70: $f5
	ld   sp, $a529                                   ; $5d71: $31 $29 $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d74: $cf
	sub  c                                           ; $5d75: $91
	dec  d                                           ; $5d76: $15
	rst  $38                                         ; $5d77: $ff
	ld   a, [$1541]                                  ; $5d78: $fa $41 $15
	cp   c                                           ; $5d7b: $b9
	ld   l, a                                        ; $5d7c: $6f
	di                                               ; $5d7d: $f3
	ld   de, $ffef                                   ; $5d7e: $11 $ef $ff
	ld   h, h                                        ; $5d81: $64
	ld   de, $699c                                   ; $5d82: $11 $9c $69
	db   $fc                                         ; $5d85: $fc
	ld   de, $ff1f                                   ; $5d86: $11 $1f $ff
	or   h                                           ; $5d89: $b4
	ld   hl, $a539                                   ; $5d8a: $21 $39 $a5
	rst  $38                                         ; $5d8d: $ff
	ld   d, c                                        ; $5d8e: $51
	ld   a, [de]                                     ; $5d8f: $1a
	rst  $38                                         ; $5d90: $ff
	rst  $30                                         ; $5d91: $f7
	ld   b, c                                        ; $5d92: $41
	ld   d, $b7                                      ; $5d93: $16 $b7
	ld   l, a                                        ; $5d95: $6f
	pop  af                                          ; $5d96: $f1
	ld   de, $feff                                   ; $5d97: $11 $ff $fe
	ld   d, h                                        ; $5d9a: $54
	ld   de, $5d9b                                   ; $5d9b: $11 $9b $5d
	ld   hl, sp+$11                                  ; $5d9e: $f8 $11
	ld   e, a                                        ; $5da0: $5f
	rst  $38                                         ; $5da1: $ff
	sub  h                                           ; $5da2: $94
	ld   de, $965a                                   ; $5da3: $11 $5a $96
	rst  $38                                         ; $5da6: $ff
	ld   hl, $ff1e                                   ; $5da7: $21 $1e $ff
	push af                                          ; $5daa: $f5
	ld   b, c                                        ; $5dab: $41
	rla                                              ; $5dac: $17
	and  [hl]                                        ; $5dad: $a6
	sbc  a                                           ; $5dae: $9f
	or   c                                           ; $5daf: $b1
	ld   de, $fbff                                   ; $5db0: $11 $ff $fb
	ld   b, e                                        ; $5db3: $43
	inc  de                                          ; $5db4: $13
	sbc  c                                           ; $5db5: $99
	ld   c, a                                        ; $5db6: $4f
	push af                                          ; $5db7: $f5
	ld   de, $ffaf                                   ; $5db8: $11 $af $ff
	ld   h, l                                        ; $5dbb: $65
	ld   de, $766a                                   ; $5dbc: $11 $6a $76
	rst  $38                                         ; $5dbf: $ff
	ld   bc, $ff1f                                   ; $5dc0: $01 $1f $ff
	db   $e4                                         ; $5dc3: $e4
	ld   b, c                                        ; $5dc4: $41
	rla                                              ; $5dc5: $17
	and  h                                           ; $5dc6: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dc7: $cf
	sub  c                                           ; $5dc8: $91
	inc  d                                           ; $5dc9: $14
	rst  $38                                         ; $5dca: $ff
	ld   sp, hl                                      ; $5dcb: $f9
	ld   b, e                                        ; $5dcc: $43
	inc  d                                           ; $5dcd: $14
	adc  c                                           ; $5dce: $89
	ld   c, a                                        ; $5dcf: $4f
	db   $f4                                         ; $5dd0: $f4
	ld   de, $ffcf                                   ; $5dd1: $11 $cf $ff
	ld   d, l                                        ; $5dd4: $55
	ld   de, $6769                                   ; $5dd5: $11 $69 $67
	rst  $38                                         ; $5dd8: $ff
	ld   de, $ff1f                                   ; $5dd9: $11 $1f $ff
	call nz, $1761                                   ; $5ddc: $c4 $61 $17
	sub  h                                           ; $5ddf: $94
	rst  $28                                         ; $5de0: $ef
	sub  c                                           ; $5de1: $91
	dec  d                                           ; $5de2: $15
	rst  $38                                         ; $5de3: $ff
	ld   hl, sp+$54                                  ; $5de4: $f8 $54
	inc  d                                           ; $5de6: $14
	sbc  c                                           ; $5de7: $99
	ld   c, a                                        ; $5de8: $4f
	di                                               ; $5de9: $f3
	ld   de, $ffdf                                   ; $5dea: $11 $df $ff
	ld   b, a                                        ; $5ded: $47
	ld   hl, $6758                                   ; $5dee: $21 $58 $67
	rst  $38                                         ; $5df1: $ff
	ld   de, $ff1f                                   ; $5df2: $11 $1f $ff
	call nc, $1671                                   ; $5df5: $d4 $71 $16
	sub  h                                           ; $5df8: $94
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5df9: $cf
	and  c                                           ; $5dfa: $a1
	inc  de                                          ; $5dfb: $13
	rst  $38                                         ; $5dfc: $ff
	ld   sp, hl                                      ; $5dfd: $f9
	ld   d, [hl]                                     ; $5dfe: $56
	ld   [de], a                                     ; $5dff: $12
	ld   l, c                                        ; $5e00: $69
	ld   c, a                                        ; $5e01: $4f
	db   $f4                                         ; $5e02: $f4
	ld   de, $ffbf                                   ; $5e03: $11 $bf $ff
	ld   d, a                                        ; $5e06: $57
	ld   sp, $7647                                   ; $5e07: $31 $47 $76
	rst  $38                                         ; $5e0a: $ff
	ld   de, $ff1f                                   ; $5e0b: $11 $1f $ff
	di                                               ; $5e0e: $f3
	add  c                                           ; $5e0f: $81
	inc  d                                           ; $5e10: $14
	add  l                                           ; $5e11: $85
	cp   a                                           ; $5e12: $bf
	pop  bc                                          ; $5e13: $c1
	ld   de, $fbff                                   ; $5e14: $11 $ff $fb
	ld   b, a                                        ; $5e17: $47
	ld   [de], a                                     ; $5e18: $12
	ld   e, c                                        ; $5e19: $59
	ld   c, a                                        ; $5e1a: $4f
	or   $11                                         ; $5e1b: $f6 $11
	adc  a                                           ; $5e1d: $8f
	rst  $38                                         ; $5e1e: $ff
	ld   h, [hl]                                     ; $5e1f: $66
	ld   d, c                                        ; $5e20: $51
	ld   [hl], $76                                   ; $5e21: $36 $76
	rst  $38                                         ; $5e23: $ff
	ld   de, $ff1f                                   ; $5e24: $11 $1f $ff
	di                                               ; $5e27: $f3
	add  c                                           ; $5e28: $81
	inc  d                                           ; $5e29: $14
	add  l                                           ; $5e2a: $85
	xor  a                                           ; $5e2b: $af
	pop  hl                                          ; $5e2c: $e1
	ld   de, $fcff                                   ; $5e2d: $11 $ff $fc
	add  hl, sp                                      ; $5e30: $39
	ld   de, $4f47                                   ; $5e31: $11 $47 $4f
	rst  $30                                         ; $5e34: $f7
	ld   de, $ff7f                                   ; $5e35: $11 $7f $ff
	ld   [hl], a                                     ; $5e38: $77
	ld   b, c                                        ; $5e39: $41
	dec  h                                           ; $5e3a: $25
	ld   a, b                                        ; $5e3b: $78
	rst  $38                                         ; $5e3c: $ff
	ld   de, $ff1f                                   ; $5e3d: $11 $1f $ff
	di                                               ; $5e40: $f3
	add  c                                           ; $5e41: $81
	inc  de                                          ; $5e42: $13
	ld   h, l                                        ; $5e43: $65
	rst  $38                                         ; $5e44: $ff
	or   c                                           ; $5e45: $b1
	ld   de, $faff                                   ; $5e46: $11 $ff $fa
	ld   h, [hl]                                     ; $5e49: $66
	ld   de, $7f47                                   ; $5e4a: $11 $47 $7f
	ldh  a, [c]                                      ; $5e4d: $f2
	ld   de, $ffdf                                   ; $5e4e: $11 $df $ff
	ld   b, a                                        ; $5e51: $47
	ld   hl, $5f36                                   ; $5e52: $21 $36 $5f
	db   $fc                                         ; $5e55: $fc
	ld   de, $ff1f                                   ; $5e56: $11 $1f $ff
	or   [hl]                                        ; $5e59: $b6
	ld   [hl], c                                     ; $5e5a: $71
	inc  d                                           ; $5e5b: $14
	ld   a, c                                        ; $5e5c: $79
	rst  $38                                         ; $5e5d: $ff
	ld   hl, $ff1e                                   ; $5e5e: $21 $1e $ff
	push af                                          ; $5e61: $f5
	ld   [hl], c                                     ; $5e62: $71
	ld   [de], a                                     ; $5e63: $12
	ld   h, [hl]                                     ; $5e64: $66
	rst  $38                                         ; $5e65: $ff
	and  c                                           ; $5e66: $a1
	inc  de                                          ; $5e67: $13
	rst  $38                                         ; $5e68: $ff
	ld   a, [$1175]                                  ; $5e69: $fa $75 $11
	ld   b, [hl]                                     ; $5e6c: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e6d: $cf
	pop  af                                          ; $5e6e: $f1
	ld   de, $ffff                                   ; $5e6f: $11 $ff $ff
	ld   h, a                                        ; $5e72: $67
	ld   de, $8f25                                   ; $5e73: $11 $25 $8f
	or   $11                                         ; $5e76: $f6 $11
	adc  a                                           ; $5e78: $8f
	rst  $38                                         ; $5e79: $ff
	ld   a, b                                        ; $5e7a: $78
	ld   sp, $6f15                                   ; $5e7b: $31 $15 $6f
	ei                                               ; $5e7e: $fb
	ld   de, $ff1f                                   ; $5e7f: $11 $1f $ff
	or   a                                           ; $5e82: $b7
	ld   d, c                                        ; $5e83: $51
	inc  d                                           ; $5e84: $14
	ld   l, h                                        ; $5e85: $6c
	rst  $38                                         ; $5e86: $ff
	ld   hl, $ff1d                                   ; $5e87: $21 $1d $ff
	or   $81                                         ; $5e8a: $f6 $81
	ld   de, $ff59                                   ; $5e8c: $11 $59 $ff
	ld   d, c                                        ; $5e8f: $51
	add  hl, de                                      ; $5e90: $19
	rst  $38                                         ; $5e91: $ff
	rst  $30                                         ; $5e92: $f7
	add  c                                           ; $5e93: $81
	ld   de, $ff58                                   ; $5e94: $11 $58 $ff
	sub  c                                           ; $5e97: $91
	inc  de                                          ; $5e98: $13
	rst  $38                                         ; $5e99: $ff
	ld   sp, hl                                      ; $5e9a: $f9
	add  e                                           ; $5e9b: $83
	ld   de, $ff47                                   ; $5e9c: $11 $47 $ff
	or   c                                           ; $5e9f: $b1
	ld   de, $fcff                                   ; $5ea0: $11 $ff $fc
	add  h                                           ; $5ea3: $84
	ld   de, rAUDENA                                   ; $5ea4: $11 $26 $ff
	pop  af                                          ; $5ea7: $f1
	ld   de, $feef                                   ; $5ea8: $11 $ef $fe
	add  l                                           ; $5eab: $85
	ld   de, rAUDENA                                   ; $5eac: $11 $26 $ff
	pop  af                                          ; $5eaf: $f1
	ld   de, $ffcf                                   ; $5eb0: $11 $cf $ff
	add  l                                           ; $5eb3: $85
	ld   de, $ff16                                   ; $5eb4: $11 $16 $ff
	ldh  a, [c]                                      ; $5eb7: $f2
	ld   de, $ffaf                                   ; $5eb8: $11 $af $ff
	add  h                                           ; $5ebb: $84
	ld   de, $ff16                                   ; $5ebc: $11 $16 $ff
	ldh  a, [c]                                      ; $5ebf: $f2
	ld   de, $ffaf                                   ; $5ec0: $11 $af $ff
	sub  h                                           ; $5ec3: $94
	ld   de, $ff16                                   ; $5ec4: $11 $16 $ff
	ldh  a, [c]                                      ; $5ec7: $f2
	ld   de, $ffaf                                   ; $5ec8: $11 $af $ff
	and  d                                           ; $5ecb: $a2
	ld   de, $ff27                                   ; $5ecc: $11 $27 $ff
	pop  af                                          ; $5ecf: $f1
	ld   de, $ffbf                                   ; $5ed0: $11 $bf $ff
	sub  c                                           ; $5ed3: $91
	ld   de, $ff29                                   ; $5ed4: $11 $29 $ff
	pop  de                                          ; $5ed7: $d1
	ld   de, $ffcf                                   ; $5ed8: $11 $cf $ff
	add  c                                           ; $5edb: $81
	ld   de, $ff3b                                   ; $5edc: $11 $3b $ff
	and  c                                           ; $5edf: $a1
	ld   de, $fdcf                                   ; $5ee0: $11 $cf $fd
	ld   h, c                                        ; $5ee3: $61
	ld   de, $ff5f                                   ; $5ee4: $11 $5f $ff
	ld   h, c                                        ; $5ee7: $61
	inc  d                                           ; $5ee8: $14
	rst  $38                                         ; $5ee9: $ff
	db   $fc                                         ; $5eea: $fc
	ld   sp, $8f11                                   ; $5eeb: $31 $11 $8f
	rst  $38                                         ; $5eee: $ff
	ld   de, $ff17                                   ; $5eef: $11 $17 $ff
	ei                                               ; $5ef2: $fb
	ld   de, $df11                                   ; $5ef3: $11 $11 $df
	db   $fc                                         ; $5ef6: $fc
	ld   de, $ff1b                                   ; $5ef7: $11 $1b $ff
	ld   hl, sp+$11                                  ; $5efa: $f8 $11
	inc  d                                           ; $5efc: $14
	rst  $38                                         ; $5efd: $ff
	or   $11                                         ; $5efe: $f6 $11
	ld   l, $ff                                      ; $5f00: $2e $ff
	di                                               ; $5f02: $f3
	ld   de, $ff1a                                   ; $5f03: $11 $1a $ff
	pop  af                                          ; $5f06: $f1
	ld   de, $ff6f                                   ; $5f07: $11 $6f $ff
	pop  bc                                          ; $5f0a: $c1
	ld   de, $ff2f                                   ; $5f0b: $11 $2f $ff
	add  c                                           ; $5f0e: $81
	ld   de, $ffdf                                   ; $5f0f: $11 $df $ff
	ld   d, c                                        ; $5f12: $51
	ld   de, $ffaf                                   ; $5f13: $11 $af $ff
	ld   de, $ff16                                   ; $5f16: $11 $16 $ff
	db   $fc                                         ; $5f19: $fc
	ld   de, rAUD1ENV                                   ; $5f1a: $11 $12 $ff
	rst  $30                                         ; $5f1d: $f7
	ld   de, $ff1e                                   ; $5f1e: $11 $1e $ff
	di                                               ; $5f21: $f3
	ld   de, $ff1f                                   ; $5f22: $11 $1f $ff
	pop  bc                                          ; $5f25: $c1
	ld   de, $ff9f                                   ; $5f26: $11 $9f $ff
	sub  c                                           ; $5f29: $91
	ld   de, $ff8f                                   ; $5f2a: $11 $8f $ff
	ld   de, rAUD1HIGH                                   ; $5f2d: $11 $14 $ff
	db   $fd                                         ; $5f30: $fd
	ld   de, rAUD1HIGH                                   ; $5f31: $11 $14 $ff
	di                                               ; $5f34: $f3
	ld   de, $ff2f                                   ; $5f35: $11 $2f $ff
	pop  af                                          ; $5f38: $f1
	ld   de, $ff1f                                   ; $5f39: $11 $1f $ff
	ld   d, c                                        ; $5f3c: $51
	ld   de, $ffef                                   ; $5f3d: $11 $ef $ff
	ld   sp, rAUD1LEN                                   ; $5f40: $31 $11 $ff
	rst  $30                                         ; $5f43: $f7
	ld   de, $ff1c                                   ; $5f44: $11 $1c $ff
	db   $f4                                         ; $5f47: $f4
	ld   de, $ff1f                                   ; $5f48: $11 $1f $ff
	ld   [hl], c                                     ; $5f4b: $71
	ld   [de], a                                     ; $5f4c: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f4d: $cf
	cp   $41                                         ; $5f4e: $fe $41
	ld   [de], a                                     ; $5f50: $12
	rst  $38                                         ; $5f51: $ff
	or   $11                                         ; $5f52: $f6 $11
	inc  a                                           ; $5f54: $3c
	rst  $38                                         ; $5f55: $ff
	db   $e3                                         ; $5f56: $e3
	ld   de, $ff4f                                   ; $5f57: $11 $4f $ff
	ld   d, c                                        ; $5f5a: $51
	inc  d                                           ; $5f5b: $14
	rst  $28                                         ; $5f5c: $ef
	db   $fc                                         ; $5f5d: $fc
	ld   hl, $ff17                                   ; $5f5e: $21 $17 $ff
	di                                               ; $5f61: $f3
	ld   de, $ff6e                                   ; $5f62: $11 $6e $ff
	or   c                                           ; $5f65: $b1
	ld   de, $fe8f                                   ; $5f66: $11 $8f $fe
	ld   hl, $ff17                                   ; $5f69: $21 $17 $ff
	ld   hl, sp+$11                                  ; $5f6c: $f8 $11
	ld   a, [de]                                     ; $5f6e: $1a
	rst  $38                                         ; $5f6f: $ff
	pop  bc                                          ; $5f70: $c1
	ld   de, $ff9f                                   ; $5f71: $11 $9f $ff
	ld   [hl], c                                     ; $5f74: $71
	ld   de, $f9ef                                   ; $5f75: $11 $ef $f9
	ld   de, $ff2a                                   ; $5f78: $11 $2a $ff
	push hl                                          ; $5f7b: $e5
	ld   de, $ff3f                                   ; $5f7c: $11 $3f $ff
	ld   [hl], c                                     ; $5f7f: $71
	inc  d                                           ; $5f80: $14
	cp   a                                           ; $5f81: $bf
	db   $fc                                         ; $5f82: $fc
	ld   sp, $ff16                                   ; $5f83: $31 $16 $ff
	push af                                          ; $5f86: $f5
	ld   de, $ff6d                                   ; $5f87: $11 $6d $ff
	sub  d                                           ; $5f8a: $92
	ld   de, $fc9f                                   ; $5f8b: $11 $9f $fc
	ld   sp, $ef28                                   ; $5f8e: $31 $28 $ef
	rst  $10                                         ; $5f91: $d7
	ld   de, $ff2d                                   ; $5f92: $11 $2d $ff
	sub  c                                           ; $5f95: $91
	inc  d                                           ; $5f96: $14
	cp   a                                           ; $5f97: $bf
	ei                                               ; $5f98: $fb
	ld   d, c                                        ; $5f99: $51
	ld   d, $ff                                      ; $5f9a: $16 $ff
	and  $11                                         ; $5f9c: $e6 $11
	ld   l, l                                        ; $5f9e: $6d
	cp   $92                                         ; $5f9f: $fe $92
	ld   de, $fc9f                                   ; $5fa1: $11 $9f $fc
	ld   sp, $ff29                                   ; $5fa4: $31 $29 $ff
	rst  ToBoot                                         ; $5fa7: $c7
	ld   de, $ff4d                                   ; $5fa8: $11 $4d $ff
	add  c                                           ; $5fab: $81
	dec  d                                           ; $5fac: $15
	cp   a                                           ; $5fad: $bf
	db   $eb                                         ; $5fae: $eb
	ld   b, c                                        ; $5faf: $41
	rla                                              ; $5fb0: $17
	rst  $38                                         ; $5fb1: $ff
	push de                                          ; $5fb2: $d5
	ld   [de], a                                     ; $5fb3: $12
	ld   a, l                                        ; $5fb4: $7d
	db   $fd                                         ; $5fb5: $fd
	ld   [hl], c                                     ; $5fb6: $71
	inc  de                                          ; $5fb7: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb8: $cf
	ld   a, [$4a21]                                  ; $5fb9: $fa $21 $4a
	rst  $38                                         ; $5fbc: $ff
	or   h                                           ; $5fbd: $b4
	ld   de, $fd7f                                   ; $5fbe: $11 $7f $fd
	ld   h, c                                        ; $5fc1: $61
	daa                                              ; $5fc2: $27
	rst  $28                                         ; $5fc3: $ef
	rst  ToBoot                                         ; $5fc4: $c7
	ld   de, $ff3c                                   ; $5fc5: $11 $3c $ff
	and  d                                           ; $5fc8: $a2
	dec  d                                           ; $5fc9: $15
	cp   a                                           ; $5fca: $bf
	ld   [$1841], a                                  ; $5fcb: $ea $41 $18
	rst  $38                                         ; $5fce: $ff
	push bc                                          ; $5fcf: $c5

jr_0ad_5fd0:
	ld   [de], a                                     ; $5fd0: $12
	adc  [hl]                                        ; $5fd1: $8e
	db   $fd                                         ; $5fd2: $fd
	ld   [hl], c                                     ; $5fd3: $71
	inc  d                                           ; $5fd4: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fd5: $cf
	ld   sp, hl                                      ; $5fd6: $f9
	ld   hl, $fe5b                                   ; $5fd7: $21 $5b $fe
	and  e                                           ; $5fda: $a3
	ld   de, $fc8f                                   ; $5fdb: $11 $8f $fc
	ld   d, c                                        ; $5fde: $51
	jr   z, jr_0ad_5fd0                              ; $5fdf: $28 $ef

	add  $11                                         ; $5fe1: $c6 $11
	ld   e, h                                        ; $5fe3: $5c
	rst  $38                                         ; $5fe4: $ff
	sub  d                                           ; $5fe5: $92
	ld   d, $cf                                      ; $5fe6: $16 $cf
	reti                                             ; $5fe8: $d9


	ld   de, $ff3a                                   ; $5fe9: $11 $3a $ff
	or   h                                           ; $5fec: $b4
	dec  d                                           ; $5fed: $15
	sbc  [hl]                                        ; $5fee: $9e
	ld   [$2841], a                                  ; $5fef: $ea $41 $28
	rst  $28                                         ; $5ff2: $ef
	add  $24                                         ; $5ff3: $c6 $24
	adc  [hl]                                        ; $5ff5: $8e
	db   $eb                                         ; $5ff6: $eb
	ld   h, c                                        ; $5ff7: $61
	ld   d, $df                                      ; $5ff8: $16 $df
	rst  $10                                         ; $5ffa: $d7
	inc  hl                                          ; $5ffb: $23
	ld   a, l                                        ; $5ffc: $7d
	db   $ec                                         ; $5ffd: $ec
	ld   [hl], c                                     ; $5ffe: $71
	dec  d                                           ; $5fff: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6000: $cf
	add  sp, $32                                     ; $6001: $e8 $32
	ld   l, e                                        ; $6003: $6b
	db   $fd                                         ; $6004: $fd
	sub  d                                           ; $6005: $92
	inc  de                                          ; $6006: $13
	xor  a                                           ; $6007: $af
	ei                                               ; $6008: $fb
	ld   d, d                                        ; $6009: $52
	ld   e, c                                        ; $600a: $59
	db   $ed                                         ; $600b: $ed
	and  l                                           ; $600c: $a5
	ld   de, $fd7e                                   ; $600d: $11 $7e $fd
	ld   [hl], d                                     ; $6010: $72
	ld   c, b                                        ; $6011: $48
	sbc  $b7                                         ; $6012: $de $b7
	ld   de, $fd5c                                   ; $6014: $11 $5c $fd
	sub  e                                           ; $6017: $93
	scf                                              ; $6018: $37
	cp   [hl]                                        ; $6019: $be
	cp   c                                           ; $601a: $b9
	ld   hl, $ee39                                   ; $601b: $21 $39 $ee
	and  l                                           ; $601e: $a5
	ld   [hl], $ae                                   ; $601f: $36 $ae
	jp   z, $2741                                    ; $6021: $ca $41 $27

	sbc  $c7                                         ; $6024: $de $c7
	dec  h                                           ; $6026: $25
	sbc  h                                           ; $6027: $9c
	db   $eb                                         ; $6028: $eb
	ld   h, c                                        ; $6029: $61
	dec  b                                           ; $602a: $05
	cp   a                                           ; $602b: $bf
	jp   c, Jump_0ad_7a43                            ; $602c: $da $43 $7a

	db   $db                                         ; $602f: $db
	sub  d                                           ; $6030: $92
	inc  de                                          ; $6031: $13
	sbc  [hl]                                        ; $6032: $9e
	db   $fc                                         ; $6033: $fc
	ld   h, e                                        ; $6034: $63
	ld   e, b                                        ; $6035: $58
	db   $dd                                         ; $6036: $dd
	and  l                                           ; $6037: $a5
	ld   de, $fd5b                                   ; $6038: $11 $5b $fd
	sub  h                                           ; $603b: $94
	ld   b, a                                        ; $603c: $47
	xor  l                                           ; $603d: $ad
	cp   b                                           ; $603e: $b8
	ld   hl, $ef38                                   ; $603f: $21 $38 $ef
	add  $35                                         ; $6042: $c6 $35
	adc  l                                           ; $6044: $8d
	jp   c, $1461                                    ; $6045: $da $61 $14

	xor  [hl]                                        ; $6048: $ae
	jp   c, Jump_0ad_6a44                            ; $6049: $da $44 $6a

	call c, $12a4                                    ; $604c: $dc $a4 $12
	ld   l, h                                        ; $604f: $6c
	db   $fc                                         ; $6050: $fc
	sub  h                                           ; $6051: $94
	ld   d, a                                        ; $6052: $57
	cp   l                                           ; $6053: $bd
	cp   b                                           ; $6054: $b8
	ld   de, $ee39                                   ; $6055: $11 $39 $ee
	or   [hl]                                        ; $6058: $b6
	ld   b, [hl]                                     ; $6059: $46
	adc  h                                           ; $605a: $8c
	db   $db                                         ; $605b: $db
	ld   h, c                                        ; $605c: $61
	dec  d                                           ; $605d: $15
	xor  a                                           ; $605e: $af
	db   $eb                                         ; $605f: $eb
	ld   d, h                                        ; $6060: $54
	ld   l, d                                        ; $6061: $6a
	db   $db                                         ; $6062: $db
	and  e                                           ; $6063: $a3
	ld   [de], a                                     ; $6064: $12
	ld   l, l                                        ; $6065: $6d
	db   $ed                                         ; $6066: $ed
	sub  h                                           ; $6067: $94
	ld   d, a                                        ; $6068: $57
	cp   l                                           ; $6069: $bd
	cp   b                                           ; $606a: $b8
	ld   hl, $ee38                                   ; $606b: $21 $38 $ee
	rst  ToBoot                                         ; $606e: $c7
	ld   b, l                                        ; $606f: $45
	adc  l                                           ; $6070: $8d
	bit  4, c                                        ; $6071: $cb $61
	inc  d                                           ; $6073: $14
	xor  [hl]                                        ; $6074: $ae
	call c, Call_0ad_6a64                            ; $6075: $dc $64 $6a
	call c, $11a5                                    ; $6078: $dc $a5 $11
	ld   c, d                                        ; $607b: $4a
	db   $ed                                         ; $607c: $ed
	and  l                                           ; $607d: $a5
	ld   b, a                                        ; $607e: $47

jr_0ad_607f:
	xor  l                                           ; $607f: $ad
	cp   c                                           ; $6080: $b9
	ld   b, c                                        ; $6081: $41
	dec  d                                           ; $6082: $15
	cp   [hl]                                        ; $6083: $be
	jp   c, $7b54                                    ; $6084: $da $54 $7b

	db   $ec                                         ; $6087: $ec
	add  e                                           ; $6088: $83
	ld   [de], a                                     ; $6089: $12
	ld   l, h                                        ; $608a: $6c
	db   $ec                                         ; $608b: $ec
	sub  h                                           ; $608c: $94
	ld   e, b                                        ; $608d: $58
	cp   l                                           ; $608e: $bd
	cp   b                                           ; $608f: $b8
	ld   hl, $dd27                                   ; $6090: $21 $27 $dd
	reti                                             ; $6093: $d9


	ld   b, l                                        ; $6094: $45
	adc  h                                           ; $6095: $8c
	jp   c, $1271                                    ; $6096: $da $71 $12

	ld   a, l                                        ; $6099: $7d
	db   $ec                                         ; $609a: $ec
	add  h                                           ; $609b: $84
	ld   l, c                                        ; $609c: $69
	call z, $11a7                                    ; $609d: $cc $a7 $11
	jr   c, jr_0ad_607f                              ; $60a0: $38 $dd

	rst  ToBoot                                         ; $60a2: $c7
	ld   b, [hl]                                     ; $60a3: $46
	sbc  l                                           ; $60a4: $9d
	jp   z, $1361                                    ; $60a5: $ca $61 $13

	adc  l                                           ; $60a8: $8d
	db   $db                                         ; $60a9: $db
	ld   [hl], h                                     ; $60aa: $74
	ld   l, c                                        ; $60ab: $69
	db   $dd                                         ; $60ac: $dd
	or   [hl]                                        ; $60ad: $b6
	ld   de, $dd39                                   ; $60ae: $11 $39 $dd
	rst  ToBoot                                         ; $60b1: $c7
	ld   d, [hl]                                     ; $60b2: $56
	sbc  l                                           ; $60b3: $9d
	db   $db                                         ; $60b4: $db
	ld   h, c                                        ; $60b5: $61
	inc  de                                          ; $60b6: $13
	adc  h                                           ; $60b7: $8c
	call c, Call_0ad_6975                            ; $60b8: $dc $75 $69
	db   $dd                                         ; $60bb: $dd
	and  [hl]                                        ; $60bc: $a6
	ld   hl, $dd28                                   ; $60bd: $21 $28 $dd
	cp   b                                           ; $60c0: $b8
	ld   d, [hl]                                     ; $60c1: $56
	adc  h                                           ; $60c2: $8c
	bit  6, d                                        ; $60c3: $cb $72
	ld   [de], a                                     ; $60c5: $12
	ld   a, h                                        ; $60c6: $7c
	call c, Call_0ad_6895                            ; $60c7: $dc $95 $68
	db   $dd                                         ; $60ca: $dd
	cp   b                                           ; $60cb: $b8
	ld   sp, $cd16                                   ; $60cc: $31 $16 $cd
	ret                                              ; $60cf: $c9


	ld   d, l                                        ; $60d0: $55
	ld   a, e                                        ; $60d1: $7b
	db   $db                                         ; $60d2: $db
	sub  h                                           ; $60d3: $94
	ld   de, $dd5b                                   ; $60d4: $11 $5b $dd
	and  [hl]                                        ; $60d7: $a6
	ld   d, a                                        ; $60d8: $57
	xor  [hl]                                        ; $60d9: $ae
	jp   z, $1351                                    ; $60da: $ca $51 $13

	sbc  l                                           ; $60dd: $9d
	bit  6, l                                        ; $60de: $cb $75
	ld   l, d                                        ; $60e0: $6a
	call c, $21b6                                    ; $60e1: $dc $b6 $21
	daa                                              ; $60e4: $27
	call Call_0ad_56b9                               ; $60e5: $cd $b9 $56
	adc  h                                           ; $60e8: $8c
	db   $db                                         ; $60e9: $db
	sub  e                                           ; $60ea: $93
	ld   de, $dd5b                                   ; $60eb: $11 $5b $dd
	and  [hl]                                        ; $60ee: $a6
	ld   h, a                                        ; $60ef: $67
	xor  l                                           ; $60f0: $ad
	jp   z, $1351                                    ; $60f1: $ca $51 $13

	sbc  h                                           ; $60f4: $9c
	db   $db                                         ; $60f5: $db
	ld   [hl], l                                     ; $60f6: $75
	ld   l, c                                        ; $60f7: $69
	call z, $21b7                                    ; $60f8: $cc $b7 $21
	ld   h, $ce                                      ; $60fb: $26 $ce
	ret                                              ; $60fd: $c9


	ld   d, [hl]                                     ; $60fe: $56
	ld   a, e                                        ; $60ff: $7b
	call c, $1194                                    ; $6100: $dc $94 $11
	ld   c, d                                        ; $6103: $4a
	call c, Call_0ad_56a6                            ; $6104: $dc $a6 $56
	sbc  l                                           ; $6107: $9d
	bit  4, d                                        ; $6108: $cb $62
	ld   [de], a                                     ; $610a: $12
	ld   a, h                                        ; $610b: $7c
	db   $ec                                         ; $610c: $ec
	add  l                                           ; $610d: $85
	ld   l, b                                        ; $610e: $68
	db   $dd                                         ; $610f: $dd
	ret                                              ; $6110: $c9


	ld   sp, $be15                                   ; $6111: $31 $15 $be
	jp   c, Jump_0ad_7a55                            ; $6114: $da $55 $7a

	db   $dd                                         ; $6117: $dd
	or   l                                           ; $6118: $b5
	ld   hl, $dd38                                   ; $6119: $21 $38 $dd
	rst  ToBoot                                         ; $611c: $c7
	ld   d, [hl]                                     ; $611d: $56
	sbc  h                                           ; $611e: $9c
	call c, $1183                                    ; $611f: $dc $83 $11
	ld   e, d                                        ; $6122: $5a
	call c, Call_0ad_6795                            ; $6123: $dc $95 $67
	cp   l                                           ; $6126: $bd
	db   $db                                         ; $6127: $db
	ld   d, d                                        ; $6128: $52
	inc  de                                          ; $6129: $13
	adc  l                                           ; $612a: $8d
	db   $db                                         ; $612b: $db
	ld   [hl], l                                     ; $612c: $75
	ld   l, b                                        ; $612d: $68
	call $31c8                                       ; $612e: $cd $c8 $31
	dec  d                                           ; $6131: $15
	cp   l                                           ; $6132: $bd
	ret                                              ; $6133: $c9


	ld   d, [hl]                                     ; $6134: $56
	ld   a, e                                        ; $6135: $7b
	call c, $21b5                                    ; $6136: $dc $b5 $21
	scf                                              ; $6139: $37
	call c, Call_0ad_56c7                            ; $613a: $dc $c7 $56
	adc  h                                           ; $613d: $8c
	call c, $1183                                    ; $613e: $dc $83 $11
	ld   e, d                                        ; $6141: $5a
	call c, Call_0ad_6795                            ; $6142: $dc $95 $67
	cp   l                                           ; $6145: $bd
	jp   c, $1351                                    ; $6146: $da $51 $13

	ld   a, h                                        ; $6149: $7c
	call z, Call_0ad_6975                            ; $614a: $cc $75 $69
	db   $dd                                         ; $614d: $dd
	ret  z                                           ; $614e: $c8

	ld   sp, $ad15                                   ; $614f: $31 $15 $ad
	ret                                              ; $6152: $c9


	ld   d, [hl]                                     ; $6153: $56
	ld   a, h                                        ; $6154: $7c
	db   $ed                                         ; $6155: $ed
	or   l                                           ; $6156: $b5
	ld   de, $dc37                                   ; $6157: $11 $37 $dc
	or   a                                           ; $615a: $b7
	ld   d, [hl]                                     ; $615b: $56
	sbc  l                                           ; $615c: $9d
	call c, $1173                                    ; $615d: $dc $73 $11
	ld   e, e                                        ; $6160: $5b
	call c, Call_0ad_67a5                            ; $6161: $dc $a5 $67
	cp   [hl]                                        ; $6164: $be
	jp   c, $1351                                    ; $6165: $da $51 $13

	adc  l                                           ; $6168: $8d
	db   $db                                         ; $6169: $db
	ld   [hl], l                                     ; $616a: $75
	ld   a, c                                        ; $616b: $79
	db   $ed                                         ; $616c: $ed
	rst  ToBoot                                         ; $616d: $c7
	ld   hl, $bd15                                   ; $616e: $21 $15 $bd
	cp   c                                           ; $6171: $b9
	ld   d, [hl]                                     ; $6172: $56
	adc  l                                           ; $6173: $8d
	db   $ed                                         ; $6174: $ed
	and  h                                           ; $6175: $a4
	ld   bc, $cc38                                   ; $6176: $01 $38 $cc
	or   [hl]                                        ; $6179: $b6
	ld   h, a                                        ; $617a: $67
	cp   l                                           ; $617b: $bd
	call c, $1262                                    ; $617c: $dc $62 $12
	ld   l, h                                        ; $617f: $6c
	call z, $7985                                    ; $6180: $cc $85 $79
	sbc  $d9                                         ; $6183: $de $d9
	ld   b, c                                        ; $6185: $41
	inc  d                                           ; $6186: $14
	xor  l                                           ; $6187: $ad
	cp   c                                           ; $6188: $b9
	ld   h, [hl]                                     ; $6189: $66
	adc  h                                           ; $618a: $8c
	db   $dd                                         ; $618b: $dd
	or   l                                           ; $618c: $b5
	ld   de, $cc37                                   ; $618d: $11 $37 $cc
	and  a                                           ; $6190: $a7
	ld   h, a                                        ; $6191: $67
	xor  [hl]                                        ; $6192: $ae
	db   $db                                         ; $6193: $db
	ld   [hl], e                                     ; $6194: $73
	ld   de, $cb6b                                   ; $6195: $11 $6b $cb
	add  l                                           ; $6198: $85
	ld   a, b                                        ; $6199: $78
	adc  $d9                                         ; $619a: $ce $d9
	ld   b, c                                        ; $619c: $41
	inc  d                                           ; $619d: $14
	sbc  h                                           ; $619e: $9c
	ret                                              ; $619f: $c9


	ld   h, [hl]                                     ; $61a0: $66
	adc  h                                           ; $61a1: $8c
	db   $dd                                         ; $61a2: $dd
	and  l                                           ; $61a3: $a5
	ld   hl, $bb37                                   ; $61a4: $21 $37 $bb
	and  a                                           ; $61a7: $a7
	ld   h, a                                        ; $61a8: $67
	xor  [hl]                                        ; $61a9: $ae
	db   $db                                         ; $61aa: $db
	ld   [hl], e                                     ; $61ab: $73
	ld   [de], a                                     ; $61ac: $12
	ld   l, d                                        ; $61ad: $6a
	res  0, l                                        ; $61ae: $cb $85
	ld   a, c                                        ; $61b0: $79
	adc  $c9                                         ; $61b1: $ce $c9
	ld   b, d                                        ; $61b3: $42
	inc  d                                           ; $61b4: $14
	sbc  e                                           ; $61b5: $9b
	cp   b                                           ; $61b6: $b8
	ld   h, [hl]                                     ; $61b7: $66
	sbc  e                                           ; $61b8: $9b
	call c, $31b6                                    ; $61b9: $dc $b6 $31
	scf                                              ; $61bc: $37
	cp   e                                           ; $61bd: $bb
	sub  [hl]                                        ; $61be: $96
	ld   l, b                                        ; $61bf: $68
	cp   l                                           ; $61c0: $bd
	call c, $2384                                    ; $61c1: $dc $84 $23
	ld   l, c                                        ; $61c4: $69
	xor  c                                           ; $61c5: $a9
	halt                                             ; $61c6: $76
	ld   a, d                                        ; $61c7: $7a
	db   $dd                                         ; $61c8: $dd
	jp   z, $3563                                    ; $61c9: $ca $63 $35

	adc  c                                           ; $61cc: $89
	sub  a                                           ; $61cd: $97
	ld   h, [hl]                                     ; $61ce: $66
	adc  h                                           ; $61cf: $8c
	db   $dd                                         ; $61d0: $dd
	or   a                                           ; $61d1: $b7
	ld   b, e                                        ; $61d2: $43
	ld   b, a                                        ; $61d3: $47
	sbc  c                                           ; $61d4: $99
	add  [hl]                                        ; $61d5: $86
	ld   l, b                                        ; $61d6: $68
	cp   h                                           ; $61d7: $bc
	res  2, l                                        ; $61d8: $cb $95
	ld   b, h                                        ; $61da: $44
	ld   l, c                                        ; $61db: $69
	sbc  b                                           ; $61dc: $98
	ld   h, [hl]                                     ; $61dd: $66
	ld   a, d                                        ; $61de: $7a
	call z, Call_0ad_64ba                            ; $61df: $cc $ba $64
	ld   b, l                                        ; $61e2: $45
	ld   a, c                                        ; $61e3: $79
	sub  a                                           ; $61e4: $97
	ld   h, [hl]                                     ; $61e5: $66
	adc  e                                           ; $61e6: $8b
	call c, Call_0ad_54a7                            ; $61e7: $dc $a7 $54
	ld   d, a                                        ; $61ea: $57
	sbc  c                                           ; $61eb: $99
	halt                                             ; $61ec: $76
	ld   h, a                                        ; $61ed: $67
	xor  h                                           ; $61ee: $ac
	jp   z, Jump_0ad_5596                            ; $61ef: $ca $96 $55

	ld   l, b                                        ; $61f2: $68
	sub  a                                           ; $61f3: $97
	ld   h, [hl]                                     ; $61f4: $66
	ld   a, c                                        ; $61f5: $79
	cp   e                                           ; $61f6: $bb
	cp   c                                           ; $61f7: $b9
	halt                                             ; $61f8: $76
	ld   h, [hl]                                     ; $61f9: $66
	adc  c                                           ; $61fa: $89
	add  [hl]                                        ; $61fb: $86
	ld   h, [hl]                                     ; $61fc: $66
	adc  e                                           ; $61fd: $8b
	cp   e                                           ; $61fe: $bb
	sbc  b                                           ; $61ff: $98
	ld   h, [hl]                                     ; $6200: $66
	ld   h, a                                        ; $6201: $67
	sbc  b                                           ; $6202: $98
	halt                                             ; $6203: $76
	ld   h, a                                        ; $6204: $67
	xor  d                                           ; $6205: $aa
	xor  c                                           ; $6206: $a9
	sub  a                                           ; $6207: $97
	ld   [hl], a                                     ; $6208: $77
	ld   a, b                                        ; $6209: $78
	sub  a                                           ; $620a: $97
	ld   h, [hl]                                     ; $620b: $66
	ld   a, b                                        ; $620c: $78
	xor  d                                           ; $620d: $aa
	sbc  b                                           ; $620e: $98
	add  a                                           ; $620f: $87
	ld   [hl], a                                     ; $6210: $77
	adc  c                                           ; $6211: $89
	add  a                                           ; $6212: $87
	ld   h, [hl]                                     ; $6213: $66
	ld   a, c                                        ; $6214: $79
	sbc  c                                           ; $6215: $99
	sbc  c                                           ; $6216: $99
	add  a                                           ; $6217: $87
	adc  b                                           ; $6218: $88
	adc  b                                           ; $6219: $88
	halt                                             ; $621a: $76
	ld   h, a                                        ; $621b: $67
	adc  c                                           ; $621c: $89
	sbc  c                                           ; $621d: $99
	adc  c                                           ; $621e: $89
	adc  b                                           ; $621f: $88
	adc  b                                           ; $6220: $88
	sbc  b                                           ; $6221: $98
	halt                                             ; $6222: $76
	ld   h, a                                        ; $6223: $67
	sbc  c                                           ; $6224: $99
	sbc  b                                           ; $6225: $98
	adc  c                                           ; $6226: $89
	adc  b                                           ; $6227: $88
	adc  c                                           ; $6228: $89
	sub  a                                           ; $6229: $97
	ld   h, [hl]                                     ; $622a: $66
	ld   a, b                                        ; $622b: $78
	sbc  b                                           ; $622c: $98
	sbc  c                                           ; $622d: $99
	adc  b                                           ; $622e: $88
	adc  b                                           ; $622f: $88
	sbc  b                                           ; $6230: $98
	add  [hl]                                        ; $6231: $86
	ld   h, [hl]                                     ; $6232: $66
	ld   a, b                                        ; $6233: $78
	sbc  b                                           ; $6234: $98
	sbc  c                                           ; $6235: $99
	sbc  b                                           ; $6236: $98
	sbc  c                                           ; $6237: $99
	sbc  b                                           ; $6238: $98
	halt                                             ; $6239: $76
	ld   h, a                                        ; $623a: $67
	adc  c                                           ; $623b: $89
	adc  c                                           ; $623c: $89
	sbc  b                                           ; $623d: $98
	adc  b                                           ; $623e: $88
	adc  c                                           ; $623f: $89
	sub  a                                           ; $6240: $97
	ld   h, [hl]                                     ; $6241: $66
	ld   a, b                                        ; $6242: $78
	adc  b                                           ; $6243: $88
	sbc  c                                           ; $6244: $99
	sbc  c                                           ; $6245: $99
	adc  b                                           ; $6246: $88
	sbc  c                                           ; $6247: $99
	halt                                             ; $6248: $76
	ld   h, a                                        ; $6249: $67
	ld   a, b                                        ; $624a: $78
	sbc  b                                           ; $624b: $98
	sbc  c                                           ; $624c: $99
	adc  b                                           ; $624d: $88
	sbc  b                                           ; $624e: $98
	sub  a                                           ; $624f: $97
	ld   h, [hl]                                     ; $6250: $66
	ld   [hl], a                                     ; $6251: $77
	adc  c                                           ; $6252: $89
	adc  c                                           ; $6253: $89
	sbc  b                                           ; $6254: $98
	adc  c                                           ; $6255: $89
	adc  c                                           ; $6256: $89
	ld   [hl], a                                     ; $6257: $77
	ld   h, a                                        ; $6258: $67
	ld   a, b                                        ; $6259: $78
	adc  b                                           ; $625a: $88
	sbc  c                                           ; $625b: $99
	sbc  c                                           ; $625c: $99
	adc  c                                           ; $625d: $89
	sbc  b                                           ; $625e: $98
	halt                                             ; $625f: $76
	ld   [hl], a                                     ; $6260: $77
	adc  b                                           ; $6261: $88
	adc  c                                           ; $6262: $89
	sbc  c                                           ; $6263: $99
	sbc  b                                           ; $6264: $98
	sbc  b                                           ; $6265: $98
	add  a                                           ; $6266: $87
	ld   h, a                                        ; $6267: $67
	ld   a, b                                        ; $6268: $78
	adc  b                                           ; $6269: $88
	sbc  c                                           ; $626a: $99
	sbc  b                                           ; $626b: $98
	sbc  c                                           ; $626c: $99
	add  a                                           ; $626d: $87
	halt                                             ; $626e: $76
	ld   [hl], a                                     ; $626f: $77
	adc  b                                           ; $6270: $88
	sbc  c                                           ; $6271: $99
	xor  d                                           ; $6272: $aa
	adc  c                                           ; $6273: $89
	sbc  b                                           ; $6274: $98
	ld   [hl], a                                     ; $6275: $77
	ld   h, a                                        ; $6276: $67
	ld   a, b                                        ; $6277: $78
	adc  c                                           ; $6278: $89
	sbc  c                                           ; $6279: $99
	sbc  b                                           ; $627a: $98
	sbc  c                                           ; $627b: $99
	add  a                                           ; $627c: $87
	halt                                             ; $627d: $76
	ld   [hl], a                                     ; $627e: $77
	adc  b                                           ; $627f: $88
	sbc  c                                           ; $6280: $99
	sbc  c                                           ; $6281: $99
	adc  c                                           ; $6282: $89
	sbc  b                                           ; $6283: $98
	ld   [hl], a                                     ; $6284: $77
	ld   h, a                                        ; $6285: $67
	ld   a, b                                        ; $6286: $78
	adc  b                                           ; $6287: $88
	sbc  c                                           ; $6288: $99
	sbc  c                                           ; $6289: $99
	sbc  c                                           ; $628a: $99
	add  a                                           ; $628b: $87
	halt                                             ; $628c: $76
	ld   [hl], a                                     ; $628d: $77
	adc  c                                           ; $628e: $89
	adc  c                                           ; $628f: $89
	sbc  c                                           ; $6290: $99
	adc  c                                           ; $6291: $89
	sbc  b                                           ; $6292: $98
	halt                                             ; $6293: $76
	ld   h, [hl]                                     ; $6294: $66
	ld   a, b                                        ; $6295: $78
	sbc  b                                           ; $6296: $98
	sbc  c                                           ; $6297: $99
	sbc  b                                           ; $6298: $98
	sbc  c                                           ; $6299: $99
	add  a                                           ; $629a: $87
	ld   h, [hl]                                     ; $629b: $66
	ld   [hl], a                                     ; $629c: $77
	adc  b                                           ; $629d: $88
	adc  c                                           ; $629e: $89
	sbc  d                                           ; $629f: $9a
	sbc  c                                           ; $62a0: $99
	sbc  b                                           ; $62a1: $98
	halt                                             ; $62a2: $76
	ld   h, [hl]                                     ; $62a3: $66
	ld   a, b                                        ; $62a4: $78
	sbc  b                                           ; $62a5: $98
	sbc  d                                           ; $62a6: $9a
	xor  c                                           ; $62a7: $a9
	sbc  c                                           ; $62a8: $99
	add  a                                           ; $62a9: $87
	ld   h, [hl]                                     ; $62aa: $66
	ld   h, a                                        ; $62ab: $67
	adc  b                                           ; $62ac: $88
	adc  c                                           ; $62ad: $89
	xor  d                                           ; $62ae: $aa
	sbc  c                                           ; $62af: $99
	sbc  b                                           ; $62b0: $98
	ld   [hl], a                                     ; $62b1: $77
	ld   h, [hl]                                     ; $62b2: $66
	ld   a, b                                        ; $62b3: $78
	adc  c                                           ; $62b4: $89
	sbc  d                                           ; $62b5: $9a
	sbc  c                                           ; $62b6: $99
	sbc  c                                           ; $62b7: $99
	add  a                                           ; $62b8: $87
	halt                                             ; $62b9: $76
	ld   h, a                                        ; $62ba: $67
	ld   a, b                                        ; $62bb: $78
	sbc  c                                           ; $62bc: $99
	sbc  c                                           ; $62bd: $99
	sbc  b                                           ; $62be: $98
	sbc  b                                           ; $62bf: $98
	ld   [hl], a                                     ; $62c0: $77
	ld   h, [hl]                                     ; $62c1: $66
	ld   [hl], a                                     ; $62c2: $77
	ld   a, b                                        ; $62c3: $78
	adc  c                                           ; $62c4: $89
	sbc  d                                           ; $62c5: $9a
	sbc  c                                           ; $62c6: $99
	add  a                                           ; $62c7: $87
	halt                                             ; $62c8: $76
	ld   h, a                                        ; $62c9: $67
	ld   [hl], a                                     ; $62ca: $77
	adc  c                                           ; $62cb: $89
	sbc  d                                           ; $62cc: $9a
	sbc  c                                           ; $62cd: $99
	adc  c                                           ; $62ce: $89
	add  a                                           ; $62cf: $87
	ld   h, [hl]                                     ; $62d0: $66
	ld   h, a                                        ; $62d1: $67
	ld   [hl], a                                     ; $62d2: $77
	adc  c                                           ; $62d3: $89
	xor  c                                           ; $62d4: $a9
	xor  b                                           ; $62d5: $a8
	adc  b                                           ; $62d6: $88
	ld   [hl], a                                     ; $62d7: $77
	ld   h, [hl]                                     ; $62d8: $66
	ld   [hl], a                                     ; $62d9: $77
	ld   a, b                                        ; $62da: $78
	adc  d                                           ; $62db: $8a
	xor  c                                           ; $62dc: $a9
	sbc  b                                           ; $62dd: $98
	adc  b                                           ; $62de: $88
	halt                                             ; $62df: $76
	ld   h, a                                        ; $62e0: $67
	ld   [hl], a                                     ; $62e1: $77
	adc  b                                           ; $62e2: $88
	sbc  c                                           ; $62e3: $99
	xor  d                                           ; $62e4: $aa
	sbc  b                                           ; $62e5: $98
	add  a                                           ; $62e6: $87
	ld   h, [hl]                                     ; $62e7: $66
	ld   h, a                                        ; $62e8: $67
	ld   [hl], a                                     ; $62e9: $77
	adc  b                                           ; $62ea: $88
	xor  d                                           ; $62eb: $aa
	sbc  c                                           ; $62ec: $99
	sbc  b                                           ; $62ed: $98
	ld   [hl], a                                     ; $62ee: $77
	ld   h, [hl]                                     ; $62ef: $66
	ld   [hl], a                                     ; $62f0: $77
	ld   [hl], a                                     ; $62f1: $77
	adc  c                                           ; $62f2: $89
	sbc  d                                           ; $62f3: $9a
	xor  c                                           ; $62f4: $a9
	sbc  b                                           ; $62f5: $98
	halt                                             ; $62f6: $76
	ld   h, [hl]                                     ; $62f7: $66
	ld   [hl], a                                     ; $62f8: $77
	ld   [hl], a                                     ; $62f9: $77
	sbc  d                                           ; $62fa: $9a
	xor  c                                           ; $62fb: $a9
	sbc  c                                           ; $62fc: $99
	adc  b                                           ; $62fd: $88
	halt                                             ; $62fe: $76
	ld   h, a                                        ; $62ff: $67
	ld   [hl], a                                     ; $6300: $77
	ld   a, b                                        ; $6301: $78
	sbc  c                                           ; $6302: $99
	xor  c                                           ; $6303: $a9
	sbc  c                                           ; $6304: $99
	sub  a                                           ; $6305: $97
	ld   h, [hl]                                     ; $6306: $66
	ld   [hl], a                                     ; $6307: $77
	ld   [hl], a                                     ; $6308: $77
	ld   a, c                                        ; $6309: $79
	sbc  c                                           ; $630a: $99
	xor  c                                           ; $630b: $a9
	xor  c                                           ; $630c: $a9
	add  a                                           ; $630d: $87
	ld   h, [hl]                                     ; $630e: $66
	ld   [hl], a                                     ; $630f: $77
	ld   [hl], a                                     ; $6310: $77
	ld   a, c                                        ; $6311: $79
	sbc  c                                           ; $6312: $99
	xor  c                                           ; $6313: $a9
	xor  c                                           ; $6314: $a9
	add  a                                           ; $6315: $87
	ld   h, [hl]                                     ; $6316: $66
	ld   h, a                                        ; $6317: $67
	ld   [hl], a                                     ; $6318: $77
	adc  b                                           ; $6319: $88
	sbc  d                                           ; $631a: $9a
	xor  c                                           ; $631b: $a9
	xor  b                                           ; $631c: $a8
	ld   [hl], a                                     ; $631d: $77
	ld   h, [hl]                                     ; $631e: $66
	ld   h, a                                        ; $631f: $67
	ld   h, a                                        ; $6320: $67
	adc  b                                           ; $6321: $88
	xor  d                                           ; $6322: $aa
	xor  c                                           ; $6323: $a9
	sbc  c                                           ; $6324: $99
	ld   [hl], a                                     ; $6325: $77
	ld   h, [hl]                                     ; $6326: $66
	ld   h, a                                        ; $6327: $67
	ld   h, a                                        ; $6328: $67
	adc  b                                           ; $6329: $88
	sbc  d                                           ; $632a: $9a
	xor  c                                           ; $632b: $a9
	sbc  c                                           ; $632c: $99
	ld   [hl], a                                     ; $632d: $77
	ld   h, [hl]                                     ; $632e: $66
	ld   h, [hl]                                     ; $632f: $66
	ld   h, a                                        ; $6330: $67
	adc  b                                           ; $6331: $88
	sbc  e                                           ; $6332: $9b
	xor  c                                           ; $6333: $a9
	xor  b                                           ; $6334: $a8
	ld   [hl], a                                     ; $6335: $77
	ld   h, [hl]                                     ; $6336: $66
	ld   h, [hl]                                     ; $6337: $66
	ld   h, a                                        ; $6338: $67
	adc  b                                           ; $6339: $88
	sbc  e                                           ; $633a: $9b
	xor  d                                           ; $633b: $aa
	xor  b                                           ; $633c: $a8
	ld   [hl], a                                     ; $633d: $77
	ld   h, [hl]                                     ; $633e: $66
	ld   h, [hl]                                     ; $633f: $66
	ld   h, a                                        ; $6340: $67
	adc  b                                           ; $6341: $88
	sbc  e                                           ; $6342: $9b
	cp   d                                           ; $6343: $ba
	xor  b                                           ; $6344: $a8
	ld   [hl], a                                     ; $6345: $77
	ld   h, [hl]                                     ; $6346: $66
	ld   h, [hl]                                     ; $6347: $66
	ld   h, a                                        ; $6348: $67
	adc  c                                           ; $6349: $89
	xor  e                                           ; $634a: $ab
	cp   d                                           ; $634b: $ba
	xor  b                                           ; $634c: $a8
	add  a                                           ; $634d: $87
	ld   h, [hl]                                     ; $634e: $66
	ld   h, [hl]                                     ; $634f: $66
	ld   h, a                                        ; $6350: $67
	ld   a, c                                        ; $6351: $79
	xor  d                                           ; $6352: $aa
	cp   d                                           ; $6353: $ba
	sbc  c                                           ; $6354: $99
	add  a                                           ; $6355: $87
	ld   h, [hl]                                     ; $6356: $66
	ld   h, [hl]                                     ; $6357: $66
	ld   h, [hl]                                     ; $6358: $66
	ld   a, b                                        ; $6359: $78
	sbc  d                                           ; $635a: $9a
	cp   d                                           ; $635b: $ba
	xor  d                                           ; $635c: $aa
	sub  a                                           ; $635d: $97
	halt                                             ; $635e: $76
	ld   h, [hl]                                     ; $635f: $66
	ld   h, [hl]                                     ; $6360: $66
	ld   a, b                                        ; $6361: $78
	adc  d                                           ; $6362: $8a
	cp   e                                           ; $6363: $bb
	xor  c                                           ; $6364: $a9
	sbc  b                                           ; $6365: $98
	halt                                             ; $6366: $76
	ld   h, [hl]                                     ; $6367: $66
	ld   h, [hl]                                     ; $6368: $66
	ld   h, a                                        ; $6369: $67
	adc  c                                           ; $636a: $89
	xor  e                                           ; $636b: $ab
	xor  d                                           ; $636c: $aa
	xor  b                                           ; $636d: $a8
	ld   [hl], a                                     ; $636e: $77
	ld   h, [hl]                                     ; $636f: $66
	ld   h, [hl]                                     ; $6370: $66
	ld   h, a                                        ; $6371: $67
	ld   a, b                                        ; $6372: $78
	sbc  e                                           ; $6373: $9b
	cp   d                                           ; $6374: $ba
	sbc  c                                           ; $6375: $99
	add  a                                           ; $6376: $87
	ld   h, [hl]                                     ; $6377: $66
	ld   h, [hl]                                     ; $6378: $66
	ld   h, [hl]                                     ; $6379: $66
	ld   a, b                                        ; $637a: $78
	sbc  d                                           ; $637b: $9a
	xor  e                                           ; $637c: $ab
	xor  c                                           ; $637d: $a9
	sbc  b                                           ; $637e: $98
	halt                                             ; $637f: $76
	ld   h, [hl]                                     ; $6380: $66
	ld   h, [hl]                                     ; $6381: $66
	ld   h, a                                        ; $6382: $67
	adc  d                                           ; $6383: $8a
	cp   d                                           ; $6384: $ba
	cp   d                                           ; $6385: $ba
	xor  b                                           ; $6386: $a8
	ld   [hl], a                                     ; $6387: $77
	ld   h, [hl]                                     ; $6388: $66
	ld   h, [hl]                                     ; $6389: $66
	ld   h, [hl]                                     ; $638a: $66
	ld   a, b                                        ; $638b: $78
	sbc  d                                           ; $638c: $9a
	xor  e                                           ; $638d: $ab
	xor  d                                           ; $638e: $aa
	sub  a                                           ; $638f: $97
	ld   h, [hl]                                     ; $6390: $66
	ld   h, [hl]                                     ; $6391: $66
	ld   h, [hl]                                     ; $6392: $66
	ld   a, b                                        ; $6393: $78
	sbc  d                                           ; $6394: $9a
	xor  d                                           ; $6395: $aa
	xor  d                                           ; $6396: $aa
	xor  c                                           ; $6397: $a9
	halt                                             ; $6398: $76
	ld   h, [hl]                                     ; $6399: $66
	ld   d, [hl]                                     ; $639a: $56
	ld   h, a                                        ; $639b: $67
	adc  c                                           ; $639c: $89
	xor  d                                           ; $639d: $aa
	xor  d                                           ; $639e: $aa
	xor  d                                           ; $639f: $aa
	sub  a                                           ; $63a0: $97
	ld   h, [hl]                                     ; $63a1: $66
	ld   h, l                                        ; $63a2: $65
	ld   h, [hl]                                     ; $63a3: $66
	ld   [hl], a                                     ; $63a4: $77
	adc  d                                           ; $63a5: $8a
	cp   d                                           ; $63a6: $ba
	cp   d                                           ; $63a7: $ba
	sbc  c                                           ; $63a8: $99
	ld   [hl], a                                     ; $63a9: $77
	ld   h, [hl]                                     ; $63aa: $66
	ld   h, [hl]                                     ; $63ab: $66
	ld   h, [hl]                                     ; $63ac: $66
	ld   a, c                                        ; $63ad: $79
	sbc  e                                           ; $63ae: $9b
	xor  e                                           ; $63af: $ab
	xor  c                                           ; $63b0: $a9
	adc  b                                           ; $63b1: $88
	halt                                             ; $63b2: $76
	ld   h, l                                        ; $63b3: $65
	ld   h, [hl]                                     ; $63b4: $66
	ld   h, a                                        ; $63b5: $67
	adc  d                                           ; $63b6: $8a
	xor  d                                           ; $63b7: $aa
	xor  d                                           ; $63b8: $aa
	xor  c                                           ; $63b9: $a9
	add  a                                           ; $63ba: $87
	ld   h, [hl]                                     ; $63bb: $66
	ld   d, l                                        ; $63bc: $55
	ld   d, [hl]                                     ; $63bd: $56
	ld   a, b                                        ; $63be: $78
	sbc  d                                           ; $63bf: $9a
	xor  d                                           ; $63c0: $aa
	cp   d                                           ; $63c1: $ba
	sbc  b                                           ; $63c2: $98
	ld   [hl], a                                     ; $63c3: $77
	ld   h, [hl]                                     ; $63c4: $66
	ld   d, l                                        ; $63c5: $55
	ld   d, [hl]                                     ; $63c6: $56
	ld   a, c                                        ; $63c7: $79
	sbc  d                                           ; $63c8: $9a
	xor  e                                           ; $63c9: $ab
	cp   d                                           ; $63ca: $ba
	sbc  b                                           ; $63cb: $98
	ld   [hl], a                                     ; $63cc: $77
	ld   h, l                                        ; $63cd: $65
	ld   d, l                                        ; $63ce: $55
	ld   h, a                                        ; $63cf: $67
	adc  c                                           ; $63d0: $89
	xor  e                                           ; $63d1: $ab
	xor  d                                           ; $63d2: $aa
	cp   c                                           ; $63d3: $b9
	adc  b                                           ; $63d4: $88
	halt                                             ; $63d5: $76
	ld   h, l                                        ; $63d6: $65
	ld   d, l                                        ; $63d7: $55
	ld   h, a                                        ; $63d8: $67
	adc  d                                           ; $63d9: $8a
	xor  d                                           ; $63da: $aa
	xor  d                                           ; $63db: $aa
	cp   c                                           ; $63dc: $b9
	adc  b                                           ; $63dd: $88
	halt                                             ; $63de: $76
	ld   d, l                                        ; $63df: $55
	ld   d, l                                        ; $63e0: $55
	ld   h, a                                        ; $63e1: $67
	adc  d                                           ; $63e2: $8a
	xor  d                                           ; $63e3: $aa
	xor  d                                           ; $63e4: $aa
	cp   c                                           ; $63e5: $b9
	add  a                                           ; $63e6: $87
	halt                                             ; $63e7: $76
	ld   d, l                                        ; $63e8: $55
	ld   d, l                                        ; $63e9: $55
	ld   h, a                                        ; $63ea: $67
	adc  c                                           ; $63eb: $89
	xor  d                                           ; $63ec: $aa
	cp   d                                           ; $63ed: $ba
	cp   c                                           ; $63ee: $b9
	sbc  b                                           ; $63ef: $98
	halt                                             ; $63f0: $76
	ld   d, l                                        ; $63f1: $55
	ld   d, l                                        ; $63f2: $55
	ld   h, a                                        ; $63f3: $67
	adc  c                                           ; $63f4: $89
	xor  d                                           ; $63f5: $aa
	cp   e                                           ; $63f6: $bb
	xor  d                                           ; $63f7: $aa
	sbc  b                                           ; $63f8: $98
	halt                                             ; $63f9: $76
	ld   d, l                                        ; $63fa: $55
	ld   d, l                                        ; $63fb: $55
	ld   d, [hl]                                     ; $63fc: $56
	ld   a, b                                        ; $63fd: $78
	sbc  e                                           ; $63fe: $9b
	cp   e                                           ; $63ff: $bb
	cp   e                                           ; $6400: $bb
	xor  b                                           ; $6401: $a8
	add  a                                           ; $6402: $87
	ld   h, l                                        ; $6403: $65
	ld   d, l                                        ; $6404: $55
	ld   d, [hl]                                     ; $6405: $56
	ld   a, b                                        ; $6406: $78
	sbc  d                                           ; $6407: $9a
	xor  e                                           ; $6408: $ab
	cp   d                                           ; $6409: $ba
	xor  d                                           ; $640a: $aa
	sub  a                                           ; $640b: $97
	ld   h, [hl]                                     ; $640c: $66
	ld   d, l                                        ; $640d: $55
	ld   d, l                                        ; $640e: $55
	ld   h, a                                        ; $640f: $67
	adc  d                                           ; $6410: $8a
	xor  e                                           ; $6411: $ab
	cp   e                                           ; $6412: $bb
	xor  d                                           ; $6413: $aa
	xor  c                                           ; $6414: $a9
	halt                                             ; $6415: $76
	ld   h, l                                        ; $6416: $65
	ld   d, l                                        ; $6417: $55
	ld   d, [hl]                                     ; $6418: $56
	ld   a, b                                        ; $6419: $78
	sbc  d                                           ; $641a: $9a
	xor  e                                           ; $641b: $ab
	cp   e                                           ; $641c: $bb
	cp   d                                           ; $641d: $ba
	add  a                                           ; $641e: $87
	halt                                             ; $641f: $76
	ld   d, l                                        ; $6420: $55
	ld   d, l                                        ; $6421: $55
	ld   d, [hl]                                     ; $6422: $56
	ld   a, c                                        ; $6423: $79
	xor  e                                           ; $6424: $ab
	cp   e                                           ; $6425: $bb
	cp   d                                           ; $6426: $ba
	xor  c                                           ; $6427: $a9
	add  a                                           ; $6428: $87
	ld   h, [hl]                                     ; $6429: $66
	ld   d, l                                        ; $642a: $55
	ld   d, l                                        ; $642b: $55
	ld   h, a                                        ; $642c: $67
	adc  d                                           ; $642d: $8a
	xor  d                                           ; $642e: $aa
	cp   e                                           ; $642f: $bb
	xor  d                                           ; $6430: $aa
	xor  b                                           ; $6431: $a8
	add  a                                           ; $6432: $87
	ld   h, [hl]                                     ; $6433: $66
	ld   d, l                                        ; $6434: $55
	ld   d, l                                        ; $6435: $55
	ld   h, a                                        ; $6436: $67
	sbc  c                                           ; $6437: $99
	xor  e                                           ; $6438: $ab
	cp   e                                           ; $6439: $bb
	xor  c                                           ; $643a: $a9
	sbc  b                                           ; $643b: $98
	add  a                                           ; $643c: $87
	halt                                             ; $643d: $76
	ld   h, l                                        ; $643e: $65
	ld   d, [hl]                                     ; $643f: $56
	ld   h, a                                        ; $6440: $67
	adc  c                                           ; $6441: $89
	sbc  c                                           ; $6442: $99
	sbc  c                                           ; $6443: $99
	sbc  d                                           ; $6444: $9a
	xor  d                                           ; $6445: $aa
	sbc  c                                           ; $6446: $99
	ld   [hl], a                                     ; $6447: $77
	ld   h, [hl]                                     ; $6448: $66
	ld   h, [hl]                                     ; $6449: $66
	ld   h, a                                        ; $644a: $67
	ld   a, b                                        ; $644b: $78
	adc  b                                           ; $644c: $88
	sbc  d                                           ; $644d: $9a
	sbc  d                                           ; $644e: $9a
	xor  d                                           ; $644f: $aa
	xor  c                                           ; $6450: $a9
	add  a                                           ; $6451: $87
	halt                                             ; $6452: $76
	ld   h, [hl]                                     ; $6453: $66
	ld   h, [hl]                                     ; $6454: $66
	ld   [hl], a                                     ; $6455: $77
	ld   a, b                                        ; $6456: $78
	adc  c                                           ; $6457: $89
	sbc  d                                           ; $6458: $9a
	xor  d                                           ; $6459: $aa
	sbc  c                                           ; $645a: $99
	adc  b                                           ; $645b: $88
	ld   [hl], a                                     ; $645c: $77
	ld   h, [hl]                                     ; $645d: $66
	ld   h, [hl]                                     ; $645e: $66
	ld   h, a                                        ; $645f: $67
	ld   a, b                                        ; $6460: $78
	adc  b                                           ; $6461: $88
	sbc  d                                           ; $6462: $9a
	xor  d                                           ; $6463: $aa
	xor  c                                           ; $6464: $a9
	sbc  b                                           ; $6465: $98
	adc  b                                           ; $6466: $88
	ld   [hl], a                                     ; $6467: $77
	halt                                             ; $6468: $76
	ld   h, a                                        ; $6469: $67
	ld   [hl], a                                     ; $646a: $77
	ld   a, b                                        ; $646b: $78
	sbc  b                                           ; $646c: $98
	sbc  c                                           ; $646d: $99
	sbc  c                                           ; $646e: $99
	sbc  c                                           ; $646f: $99
	sbc  b                                           ; $6470: $98
	adc  b                                           ; $6471: $88
	ld   [hl], a                                     ; $6472: $77
	ld   [hl], a                                     ; $6473: $77
	ld   [hl], a                                     ; $6474: $77
	ld   [hl], a                                     ; $6475: $77
	ld   a, b                                        ; $6476: $78
	adc  c                                           ; $6477: $89
	sbc  b                                           ; $6478: $98
	adc  c                                           ; $6479: $89
	sbc  c                                           ; $647a: $99
	adc  b                                           ; $647b: $88
	sbc  b                                           ; $647c: $98
	adc  b                                           ; $647d: $88
	ld   [hl], a                                     ; $647e: $77
	ld   [hl], a                                     ; $647f: $77
	ld   [hl], a                                     ; $6480: $77
	ld   a, b                                        ; $6481: $78
	adc  b                                           ; $6482: $88
	adc  c                                           ; $6483: $89
	adc  b                                           ; $6484: $88
	sbc  c                                           ; $6485: $99
	sbc  c                                           ; $6486: $99
	adc  b                                           ; $6487: $88
	adc  b                                           ; $6488: $88
	add  a                                           ; $6489: $87
	ld   [hl], a                                     ; $648a: $77
	ld   [hl], a                                     ; $648b: $77
	ld   a, b                                        ; $648c: $78
	adc  c                                           ; $648d: $89
	adc  c                                           ; $648e: $89
	sbc  c                                           ; $648f: $99
	xor  c                                           ; $6490: $a9
	sbc  c                                           ; $6491: $99
	adc  b                                           ; $6492: $88
	add  a                                           ; $6493: $87
	ld   [hl], a                                     ; $6494: $77
	add  a                                           ; $6495: $87
	ld   a, b                                        ; $6496: $78
	adc  b                                           ; $6497: $88

Call_0ad_6498:
	adc  b                                           ; $6498: $88
	sbc  c                                           ; $6499: $99
	sbc  b                                           ; $649a: $98
	sbc  b                                           ; $649b: $98
	add  a                                           ; $649c: $87
	add  a                                           ; $649d: $87
	halt                                             ; $649e: $76
	ld   [hl], a                                     ; $649f: $77
	ld   [hl], a                                     ; $64a0: $77
	ld   a, b                                        ; $64a1: $78
	adc  b                                           ; $64a2: $88
	sbc  d                                           ; $64a3: $9a
	xor  d                                           ; $64a4: $aa
	xor  e                                           ; $64a5: $ab
	xor  c                                           ; $64a6: $a9
	add  a                                           ; $64a7: $87
	ld   d, h                                        ; $64a8: $54
	ld   b, l                                        ; $64a9: $45
	ld   b, h                                        ; $64aa: $44
	ld   d, a                                        ; $64ab: $57
	adc  c                                           ; $64ac: $89
	cp   l                                           ; $64ad: $bd
	call c, $bacc                                    ; $64ae: $dc $cc $ba
	adc  c                                           ; $64b1: $89
	ld   [hl], h                                     ; $64b2: $74
	ld   hl, $3413                                   ; $64b3: $21 $13 $34
	ld   a, c                                        ; $64b6: $79
	set  5, a                                        ; $64b7: $cb $ef
	db   $ed                                         ; $64b9: $ed

Call_0ad_64ba:
	call z, Call_0ad_77a8                            ; $64ba: $cc $a8 $77
	ld   b, c                                        ; $64bd: $41
	ld   de, $5714                                   ; $64be: $11 $14 $57
	sbc  l                                           ; $64c1: $9d
	db   $fd                                         ; $64c2: $fd
	rst  $38                                         ; $64c3: $ff
	ld   [$7699], a                                  ; $64c4: $ea $99 $76
	ld   d, [hl]                                     ; $64c7: $56
	ld   sp, $4611                                   ; $64c8: $31 $11 $46
	ld   a, c                                        ; $64cb: $79
	cp   [hl]                                        ; $64cc: $be
	db   $ed                                         ; $64cd: $ed
	cp   $a8                                         ; $64ce: $fe $a8
	sbc  c                                           ; $64d0: $99
	halt                                             ; $64d1: $76
	halt                                             ; $64d2: $76
	ld   hl, $4712                                   ; $64d3: $21 $12 $47
	ld   a, d                                        ; $64d6: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64d7: $cf
	db   $ed                                         ; $64d8: $ed
	db   $ec                                         ; $64d9: $ec
	xor  c                                           ; $64da: $a9
	adc  b                                           ; $64db: $88
	ld   [hl], a                                     ; $64dc: $77
	ld   [hl], h                                     ; $64dd: $74
	ld   hl, $6813                                   ; $64de: $21 $13 $68
	sbc  h                                           ; $64e1: $9c
	rst  $28                                         ; $64e2: $ef
	sbc  $ea                                         ; $64e3: $de $ea
	ld   a, b                                        ; $64e5: $78
	sbc  b                                           ; $64e6: $98
	ld   [hl], a                                     ; $64e7: $77
	ld   [hl], h                                     ; $64e8: $74
	ld   de, $7714                                   ; $64e9: $11 $14 $77
	sbc  l                                           ; $64ec: $9d
	xor  $df                                         ; $64ed: $ee $df
	ret  c                                           ; $64ef: $d8

	ld   l, b                                        ; $64f0: $68
	add  a                                           ; $64f1: $87
	ld   a, b                                        ; $64f2: $78
	ld   [hl], h                                     ; $64f3: $74
	ld   hl, $8813                                   ; $64f4: $21 $13 $88
	xor  h                                           ; $64f7: $ac
	xor  $be                                         ; $64f8: $ee $be
	ret  z                                           ; $64fa: $c8

	ld   l, b                                        ; $64fb: $68
	sbc  b                                           ; $64fc: $98
	adc  b                                           ; $64fd: $88
	add  h                                           ; $64fe: $84
	ld   hl, $7813                                   ; $64ff: $21 $13 $78
	sbc  h                                           ; $6502: $9c
	db   $fd                                         ; $6503: $fd
	call z, Call_0ad_68c8                            ; $6504: $cc $c8 $68
	xor  b                                           ; $6507: $a8
	sbc  c                                           ; $6508: $99
	sub  l                                           ; $6509: $95
	ld   sp, $5812                                   ; $650a: $31 $12 $58
	ld   a, d                                        ; $650d: $7a
	rst  JumpTable                                         ; $650e: $df
	set  1, d                                        ; $650f: $cb $ca
	ld   h, [hl]                                     ; $6511: $66
	xor  d                                           ; $6512: $aa
	sbc  c                                           ; $6513: $99
	cp   b                                           ; $6514: $b8
	ld   b, d                                        ; $6515: $42
	ld   de, $7927                                   ; $6516: $11 $27 $79
	adc  $da                                         ; $6519: $ce $da
	res  0, l                                        ; $651b: $cb $85
	sbc  e                                           ; $651d: $9b
	sbc  b                                           ; $651e: $98
	sbc  c                                           ; $651f: $99
	ld   h, e                                        ; $6520: $63
	ld   [hl+], a                                    ; $6521: $22
	inc  hl                                          ; $6522: $23
	adc  b                                           ; $6523: $88
	sbc  h                                           ; $6524: $9c
	db   $fd                                         ; $6525: $fd
	sbc  e                                           ; $6526: $9b
	xor  b                                           ; $6527: $a8
	ld   l, c                                        ; $6528: $69
	cp   c                                           ; $6529: $b9
	sbc  c                                           ; $652a: $99
	add  [hl]                                        ; $652b: $86
	inc  sp                                          ; $652c: $33
	inc  sp                                          ; $652d: $33
	scf                                              ; $652e: $37
	adc  c                                           ; $652f: $89
	adc  $d9                                         ; $6530: $ce $d9
	xor  e                                           ; $6532: $ab
	add  [hl]                                        ; $6533: $86
	adc  e                                           ; $6534: $8b
	sbc  b                                           ; $6535: $98
	adc  c                                           ; $6536: $89
	ld   [hl], h                                     ; $6537: $74
	ld   b, h                                        ; $6538: $44
	inc  sp                                          ; $6539: $33
	ld   e, b                                        ; $653a: $58
	adc  d                                           ; $653b: $8a
	call $aaaa                                       ; $653c: $cd $aa $aa
	ld   [hl], a                                     ; $653f: $77
	sbc  d                                           ; $6540: $9a
	sbc  b                                           ; $6541: $98
	xor  c                                           ; $6542: $a9
	ld   h, l                                        ; $6543: $65
	ld   d, h                                        ; $6544: $54
	inc  sp                                          ; $6545: $33
	ld   l, c                                        ; $6546: $69
	xor  d                                           ; $6547: $aa
	cp   e                                           ; $6548: $bb
	xor  c                                           ; $6549: $a9
	sbc  d                                           ; $654a: $9a
	adc  b                                           ; $654b: $88
	sbc  c                                           ; $654c: $99
	sbc  c                                           ; $654d: $99
	cp   b                                           ; $654e: $b8
	ld   h, l                                        ; $654f: $65
	ld   b, e                                        ; $6550: $43
	inc  sp                                          ; $6551: $33
	ld   l, d                                        ; $6552: $6a
	xor  c                                           ; $6553: $a9
	sbc  e                                           ; $6554: $9b
	sbc  b                                           ; $6555: $98
	adc  c                                           ; $6556: $89
	xor  c                                           ; $6557: $a9
	sbc  b                                           ; $6558: $98
	sbc  c                                           ; $6559: $99
	sbc  c                                           ; $655a: $99
	adc  b                                           ; $655b: $88
	ld   h, h                                        ; $655c: $64
	inc  hl                                          ; $655d: $23
	ld   e, b                                        ; $655e: $58
	sbc  c                                           ; $655f: $99
	cp   d                                           ; $6560: $ba
	add  a                                           ; $6561: $87
	xor  d                                           ; $6562: $aa
	sbc  c                                           ; $6563: $99
	xor  d                                           ; $6564: $aa
	ld   [hl], a                                     ; $6565: $77
	ld   a, c                                        ; $6566: $79
	sbc  b                                           ; $6567: $98
	add  [hl]                                        ; $6568: $86
	ld   [hl+], a                                    ; $6569: $22
	dec  [hl]                                        ; $656a: $35
	adc  c                                           ; $656b: $89
	cp   e                                           ; $656c: $bb
	sub  a                                           ; $656d: $97
	sbc  c                                           ; $656e: $99
	xor  d                                           ; $656f: $aa
	sbc  c                                           ; $6570: $99
	add  a                                           ; $6571: $87
	ld   a, b                                        ; $6572: $78
	xor  c                                           ; $6573: $a9
	sub  a                                           ; $6574: $97
	ld   b, d                                        ; $6575: $42
	inc  [hl]                                        ; $6576: $34
	ld   a, c                                        ; $6577: $79
	sbc  d                                           ; $6578: $9a
	xor  d                                           ; $6579: $aa
	ld   a, b                                        ; $657a: $78
	cp   e                                           ; $657b: $bb
	xor  d                                           ; $657c: $aa
	add  [hl]                                        ; $657d: $86
	ld   [hl], a                                     ; $657e: $77
	sbc  d                                           ; $657f: $9a
	sbc  b                                           ; $6580: $98
	ld   [hl], h                                     ; $6581: $74
	inc  de                                          ; $6582: $13
	ld   b, a                                        ; $6583: $47
	sbc  e                                           ; $6584: $9b
	sbc  b                                           ; $6585: $98
	add  a                                           ; $6586: $87

Jump_0ad_6587:
	sbc  e                                           ; $6587: $9b
	xor  e                                           ; $6588: $ab
	xor  c                                           ; $6589: $a9
	ld   h, a                                        ; $658a: $67
	ld   a, b                                        ; $658b: $78
	xor  d                                           ; $658c: $aa
	and  [hl]                                        ; $658d: $a6
	ld   sp, $8b45                                   ; $658e: $31 $45 $8b
	sbc  c                                           ; $6591: $99
	adc  d                                           ; $6592: $8a
	adc  b                                           ; $6593: $88
	xor  h                                           ; $6594: $ac
	jp   z, $7797                                    ; $6595: $ca $97 $77

	sbc  e                                           ; $6598: $9b
	xor  b                                           ; $6599: $a8
	ld   d, e                                        ; $659a: $53
	inc  [hl]                                        ; $659b: $34
	ld   e, b                                        ; $659c: $58
	xor  c                                           ; $659d: $a9
	adc  d                                           ; $659e: $8a
	sub  a                                           ; $659f: $97
	sbc  h                                           ; $65a0: $9c
	cp   e                                           ; $65a1: $bb
	sbc  b                                           ; $65a2: $98
	ld   h, l                                        ; $65a3: $65
	ld   a, d                                        ; $65a4: $7a
	ret                                              ; $65a5: $c9


	add  [hl]                                        ; $65a6: $86
	ld   d, e                                        ; $65a7: $53
	ld   d, a                                        ; $65a8: $57
	ld   a, d                                        ; $65a9: $7a
	add  a                                           ; $65aa: $87
	adc  d                                           ; $65ab: $8a
	sbc  b                                           ; $65ac: $98
	cp   e                                           ; $65ad: $bb
	xor  b                                           ; $65ae: $a8
	ld   [hl], a                                     ; $65af: $77
	ld   [hl], a                                     ; $65b0: $77
	sbc  e                                           ; $65b1: $9b
	xor  c                                           ; $65b2: $a9
	ld   h, h                                        ; $65b3: $64
	inc  [hl]                                        ; $65b4: $34
	ld   l, b                                        ; $65b5: $68
	xor  c                                           ; $65b6: $a9
	add  [hl]                                        ; $65b7: $86
	ld   a, b                                        ; $65b8: $78
	xor  e                                           ; $65b9: $ab
	cp   e                                           ; $65ba: $bb
	add  a                                           ; $65bb: $87
	ld   [hl], a                                     ; $65bc: $77
	ld   a, b                                        ; $65bd: $78
	xor  e                                           ; $65be: $ab
	and  [hl]                                        ; $65bf: $a6
	ld   d, h                                        ; $65c0: $54
	ld   b, [hl]                                     ; $65c1: $46
	ld   a, b                                        ; $65c2: $78
	adc  b                                           ; $65c3: $88
	ld   h, a                                        ; $65c4: $67
	sbc  d                                           ; $65c5: $9a
	xor  c                                           ; $65c6: $a9
	xor  d                                           ; $65c7: $aa
	add  [hl]                                        ; $65c8: $86
	ld   a, b                                        ; $65c9: $78
	sbc  c                                           ; $65ca: $99
	sbc  d                                           ; $65cb: $9a
	add  [hl]                                        ; $65cc: $86
	ld   b, h                                        ; $65cd: $44
	ld   [hl], a                                     ; $65ce: $77
	ld   [hl], a                                     ; $65cf: $77
	adc  b                                           ; $65d0: $88
	adc  c                                           ; $65d1: $89
	sbc  d                                           ; $65d2: $9a
	xor  d                                           ; $65d3: $aa
	sbc  c                                           ; $65d4: $99
	add  a                                           ; $65d5: $87
	ld   a, b                                        ; $65d6: $78
	xor  d                                           ; $65d7: $aa
	sub  a                                           ; $65d8: $97
	halt                                             ; $65d9: $76
	ld   b, l                                        ; $65da: $45
	ld   h, [hl]                                     ; $65db: $66
	ld   a, b                                        ; $65dc: $78
	add  a                                           ; $65dd: $87
	ld   a, c                                        ; $65de: $79
	xor  c                                           ; $65df: $a9
	sbc  e                                           ; $65e0: $9b
	xor  c                                           ; $65e1: $a9
	ld   [hl], l                                     ; $65e2: $75
	adc  b                                           ; $65e3: $88
	sbc  d                                           ; $65e4: $9a
	xor  b                                           ; $65e5: $a8
	ld   h, e                                        ; $65e6: $63
	dec  d                                           ; $65e7: $15
	adc  c                                           ; $65e8: $89
	adc  b                                           ; $65e9: $88
	ld   a, b                                        ; $65ea: $78
	xor  b                                           ; $65eb: $a8
	sbc  e                                           ; $65ec: $9b
	cp   b                                           ; $65ed: $b8
	adc  b                                           ; $65ee: $88
	adc  c                                           ; $65ef: $89
	ld   a, b                                        ; $65f0: $78
	xor  d                                           ; $65f1: $aa
	add  [hl]                                        ; $65f2: $86
	ld   b, l                                        ; $65f3: $45
	ld   h, [hl]                                     ; $65f4: $66
	ld   a, b                                        ; $65f5: $78
	sbc  c                                           ; $65f6: $99
	ld   [hl], a                                     ; $65f7: $77
	sbc  c                                           ; $65f8: $99
	xor  d                                           ; $65f9: $aa
	cp   c                                           ; $65fa: $b9
	add  a                                           ; $65fb: $87
	ld   a, b                                        ; $65fc: $78
	xor  c                                           ; $65fd: $a9
	adc  b                                           ; $65fe: $88
	halt                                             ; $65ff: $76
	ld   b, [hl]                                     ; $6600: $46
	ld   [hl], a                                     ; $6601: $77
	add  a                                           ; $6602: $87
	ld   [hl], a                                     ; $6603: $77
	sbc  c                                           ; $6604: $99
	sbc  d                                           ; $6605: $9a
	xor  e                                           ; $6606: $ab
	xor  b                                           ; $6607: $a8
	ld   [hl], a                                     ; $6608: $77
	ld   a, b                                        ; $6609: $78
	xor  c                                           ; $660a: $a9
	add  a                                           ; $660b: $87
	ld   h, l                                        ; $660c: $65
	ld   d, [hl]                                     ; $660d: $56
	ld   h, a                                        ; $660e: $67
	ld   [hl], a                                     ; $660f: $77
	ld   a, c                                        ; $6610: $79
	xor  c                                           ; $6611: $a9
	adc  d                                           ; $6612: $8a
	cp   d                                           ; $6613: $ba
	sub  a                                           ; $6614: $97
	ld   a, b                                        ; $6615: $78
	adc  c                                           ; $6616: $89
	sbc  c                                           ; $6617: $99
	sub  [hl]                                        ; $6618: $96
	ld   d, l                                        ; $6619: $55
	ld   h, a                                        ; $661a: $67
	halt                                             ; $661b: $76
	ld   a, c                                        ; $661c: $79
	adc  c                                           ; $661d: $89
	sbc  c                                           ; $661e: $99
	sbc  c                                           ; $661f: $99
	sbc  c                                           ; $6620: $99
	sbc  c                                           ; $6621: $99
	adc  b                                           ; $6622: $88
	sbc  c                                           ; $6623: $99
	add  a                                           ; $6624: $87
	ld   h, [hl]                                     ; $6625: $66
	ld   h, [hl]                                     ; $6626: $66
	ld   h, [hl]                                     ; $6627: $66
	ld   [hl], a                                     ; $6628: $77
	add  a                                           ; $6629: $87
	adc  c                                           ; $662a: $89
	xor  c                                           ; $662b: $a9
	sbc  d                                           ; $662c: $9a
	xor  c                                           ; $662d: $a9
	ld   a, b                                        ; $662e: $78
	sbc  d                                           ; $662f: $9a
	sbc  b                                           ; $6630: $98
	add  a                                           ; $6631: $87
	halt                                             ; $6632: $76
	ld   h, [hl]                                     ; $6633: $66
	ld   h, [hl]                                     ; $6634: $66
	ld   [hl], a                                     ; $6635: $77
	ld   [hl], a                                     ; $6636: $77
	sbc  d                                           ; $6637: $9a
	xor  d                                           ; $6638: $aa
	xor  d                                           ; $6639: $aa
	sbc  c                                           ; $663a: $99
	adc  b                                           ; $663b: $88
	sbc  c                                           ; $663c: $99
	sbc  b                                           ; $663d: $98
	add  a                                           ; $663e: $87
	ld   h, [hl]                                     ; $663f: $66
	halt                                             ; $6640: $76
	ld   h, [hl]                                     ; $6641: $66
	ld   [hl], a                                     ; $6642: $77
	ld   [hl], a                                     ; $6643: $77
	adc  d                                           ; $6644: $8a
	xor  d                                           ; $6645: $aa
	sbc  d                                           ; $6646: $9a
	sbc  b                                           ; $6647: $98
	adc  b                                           ; $6648: $88
	adc  c                                           ; $6649: $89
	adc  b                                           ; $664a: $88
	add  a                                           ; $664b: $87
	ld   [hl], a                                     ; $664c: $77
	ld   [hl], a                                     ; $664d: $77
	halt                                             ; $664e: $76
	ld   h, a                                        ; $664f: $67
	ld   [hl], a                                     ; $6650: $77
	adc  b                                           ; $6651: $88
	xor  d                                           ; $6652: $aa
	sbc  c                                           ; $6653: $99
	sbc  b                                           ; $6654: $98
	adc  b                                           ; $6655: $88
	adc  b                                           ; $6656: $88
	adc  b                                           ; $6657: $88
	add  a                                           ; $6658: $87
	ld   [hl], a                                     ; $6659: $77
	ld   [hl], a                                     ; $665a: $77
	ld   [hl], a                                     ; $665b: $77
	ld   [hl], a                                     ; $665c: $77
	ld   [hl], a                                     ; $665d: $77
	adc  b                                           ; $665e: $88
	sbc  c                                           ; $665f: $99
	sbc  c                                           ; $6660: $99
	sbc  c                                           ; $6661: $99
	sbc  c                                           ; $6662: $99
	adc  b                                           ; $6663: $88
	adc  b                                           ; $6664: $88
	sbc  c                                           ; $6665: $99
	adc  b                                           ; $6666: $88
	adc  b                                           ; $6667: $88
	adc  b                                           ; $6668: $88
	adc  b                                           ; $6669: $88
	ld   [hl], a                                     ; $666a: $77
	adc  b                                           ; $666b: $88
	adc  b                                           ; $666c: $88
	adc  b                                           ; $666d: $88
	adc  b                                           ; $666e: $88
	sbc  c                                           ; $666f: $99
	adc  b                                           ; $6670: $88
	adc  b                                           ; $6671: $88
	adc  b                                           ; $6672: $88
	adc  b                                           ; $6673: $88
	adc  b                                           ; $6674: $88
	adc  b                                           ; $6675: $88
	ld   a, b                                        ; $6676: $78
	sbc  b                                           ; $6677: $98
	adc  b                                           ; $6678: $88
	adc  b                                           ; $6679: $88
	adc  b                                           ; $667a: $88
	adc  b                                           ; $667b: $88
	adc  b                                           ; $667c: $88
	adc  b                                           ; $667d: $88
	adc  b                                           ; $667e: $88
	adc  c                                           ; $667f: $89
	sbc  b                                           ; $6680: $98
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
	sbc  c                                           ; $668c: $99
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
	add  a                                           ; $6770: $87
	adc  c                                           ; $6771: $89
	ld   a, b                                        ; $6772: $78
	adc  c                                           ; $6773: $89
	adc  b                                           ; $6774: $88
	sbc  c                                           ; $6775: $99
	ld   [hl], a                                     ; $6776: $77
	sbc  b                                           ; $6777: $98
	ld   a, b                                        ; $6778: $78
	sub  a                                           ; $6779: $97
	ld   a, b                                        ; $677a: $78
	sub  a                                           ; $677b: $97
	ld   a, c                                        ; $677c: $79
	adc  b                                           ; $677d: $88
	sbc  b                                           ; $677e: $98
	ld   a, b                                        ; $677f: $78
	adc  b                                           ; $6780: $88
	xor  b                                           ; $6781: $a8
	ld   l, c                                        ; $6782: $69
	cp   c                                           ; $6783: $b9
	ld   a, b                                        ; $6784: $78
	sbc  c                                           ; $6785: $99
	halt                                             ; $6786: $76
	adc  c                                           ; $6787: $89
	sbc  b                                           ; $6788: $98
	ld   a, b                                        ; $6789: $78
	adc  b                                           ; $678a: $88
	adc  c                                           ; $678b: $89
	add  a                                           ; $678c: $87
	sbc  b                                           ; $678d: $98
	add  a                                           ; $678e: $87
	ld   a, c                                        ; $678f: $79
	add  a                                           ; $6790: $87
	adc  c                                           ; $6791: $89
	sub  a                                           ; $6792: $97
	ld   a, b                                        ; $6793: $78
	adc  b                                           ; $6794: $88

Call_0ad_6795:
	ld   a, b                                        ; $6795: $78
	ld   [hl], a                                     ; $6796: $77
	ld   [hl], a                                     ; $6797: $77
	adc  b                                           ; $6798: $88
	add  a                                           ; $6799: $87
	adc  b                                           ; $679a: $88
	adc  b                                           ; $679b: $88
	sbc  b                                           ; $679c: $98
	ld   [hl], a                                     ; $679d: $77
	adc  b                                           ; $679e: $88
	adc  b                                           ; $679f: $88
	adc  b                                           ; $67a0: $88
	ld   a, b                                        ; $67a1: $78
	sbc  b                                           ; $67a2: $98
	adc  b                                           ; $67a3: $88
	adc  b                                           ; $67a4: $88

Call_0ad_67a5:
	add  a                                           ; $67a5: $87
	ld   [hl], a                                     ; $67a6: $77
	ld   [hl], a                                     ; $67a7: $77
	adc  b                                           ; $67a8: $88
	adc  c                                           ; $67a9: $89
	adc  b                                           ; $67aa: $88
	add  a                                           ; $67ab: $87
	adc  b                                           ; $67ac: $88
	add  a                                           ; $67ad: $87
	ld   a, b                                        ; $67ae: $78
	adc  b                                           ; $67af: $88
	adc  c                                           ; $67b0: $89
	sbc  c                                           ; $67b1: $99
	sbc  c                                           ; $67b2: $99
	sbc  c                                           ; $67b3: $99
	adc  c                                           ; $67b4: $89
	add  a                                           ; $67b5: $87
	ld   [hl], a                                     ; $67b6: $77
	ld   [hl], l                                     ; $67b7: $75
	ld   b, l                                        ; $67b8: $45
	ld   h, [hl]                                     ; $67b9: $66
	ld   l, b                                        ; $67ba: $68
	adc  c                                           ; $67bb: $89
	sbc  d                                           ; $67bc: $9a
	xor  e                                           ; $67bd: $ab
	xor  d                                           ; $67be: $aa
	xor  c                                           ; $67bf: $a9
	sbc  b                                           ; $67c0: $98
	adc  c                                           ; $67c1: $89
	sbc  b                                           ; $67c2: $98
	ld   [hl], a                                     ; $67c3: $77
	ld   h, l                                        ; $67c4: $65
	ld   b, d                                        ; $67c5: $42
	ld   b, [hl]                                     ; $67c6: $46
	ld   l, b                                        ; $67c7: $68
	sbc  e                                           ; $67c8: $9b
	cp   h                                           ; $67c9: $bc
	cp   e                                           ; $67ca: $bb
	xor  c                                           ; $67cb: $a9
	sbc  b                                           ; $67cc: $98
	sbc  c                                           ; $67cd: $99
	adc  c                                           ; $67ce: $89
	adc  b                                           ; $67cf: $88
	ld   [hl], a                                     ; $67d0: $77
	halt                                             ; $67d1: $76
	ld   d, e                                        ; $67d2: $53
	dec  [hl]                                        ; $67d3: $35
	ld   h, [hl]                                     ; $67d4: $66
	xor  h                                           ; $67d5: $ac
	set  1, h                                        ; $67d6: $cb $cc
	cp   c                                           ; $67d8: $b9
	sbc  c                                           ; $67d9: $99
	sbc  b                                           ; $67da: $98
	sbc  c                                           ; $67db: $99
	add  a                                           ; $67dc: $87
	ld   h, l                                        ; $67dd: $65
	ld   d, h                                        ; $67de: $54
	ld   [hl+], a                                    ; $67df: $22
	ld   h, a                                        ; $67e0: $67
	ld   a, c                                        ; $67e1: $79
	call $bbbb                                       ; $67e2: $cd $bb $bb
	sub  a                                           ; $67e5: $97
	sbc  b                                           ; $67e6: $98
	sbc  b                                           ; $67e7: $98
	ld   a, b                                        ; $67e8: $78
	ld   h, [hl]                                     ; $67e9: $66
	ld   d, h                                        ; $67ea: $54
	ld   b, d                                        ; $67eb: $42
	ld   b, a                                        ; $67ec: $47
	sbc  c                                           ; $67ed: $99
	xor  h                                           ; $67ee: $ac
	res  5, d                                        ; $67ef: $cb $aa
	xor  c                                           ; $67f1: $a9
	sbc  b                                           ; $67f2: $98
	sbc  b                                           ; $67f3: $98
	adc  b                                           ; $67f4: $88
	halt                                             ; $67f5: $76
	ld   d, h                                        ; $67f6: $54
	ld   b, d                                        ; $67f7: $42
	ld   [hl], $89                                   ; $67f8: $36 $89
	xor  h                                           ; $67fa: $ac
	db   $db                                         ; $67fb: $db
	cp   d                                           ; $67fc: $ba
	cp   c                                           ; $67fd: $b9
	adc  b                                           ; $67fe: $88
	sbc  c                                           ; $67ff: $99
	add  a                                           ; $6800: $87
	halt                                             ; $6801: $76
	ld   h, l                                        ; $6802: $65
	ld   b, e                                        ; $6803: $43
	dec  h                                           ; $6804: $25
	adc  c                                           ; $6805: $89
	xor  d                                           ; $6806: $aa
	db   $db                                         ; $6807: $db
	xor  d                                           ; $6808: $aa
	xor  d                                           ; $6809: $aa
	adc  b                                           ; $680a: $88
	sbc  c                                           ; $680b: $99
	sbc  b                                           ; $680c: $98
	ld   [hl], a                                     ; $680d: $77
	ld   h, [hl]                                     ; $680e: $66
	ld   b, e                                        ; $680f: $43
	inc  hl                                          ; $6810: $23
	ld   l, b                                        ; $6811: $68
	sbc  e                                           ; $6812: $9b
	cp   e                                           ; $6813: $bb
	xor  d                                           ; $6814: $aa
	xor  c                                           ; $6815: $a9
	sbc  b                                           ; $6816: $98
	adc  c                                           ; $6817: $89
	adc  c                                           ; $6818: $89
	add  a                                           ; $6819: $87
	ld   h, [hl]                                     ; $681a: $66
	ld   d, h                                        ; $681b: $54
	ld   [hl-], a                                    ; $681c: $32
	ld   l, c                                        ; $681d: $69
	adc  d                                           ; $681e: $8a
	cp   e                                           ; $681f: $bb
	cp   d                                           ; $6820: $ba
	xor  c                                           ; $6821: $a9
	xor  b                                           ; $6822: $a8
	sbc  b                                           ; $6823: $98
	adc  b                                           ; $6824: $88
	ld   [hl], a                                     ; $6825: $77
	ld   [hl], a                                     ; $6826: $77
	ld   h, h                                        ; $6827: $64
	ld   sp, $aa38                                   ; $6828: $31 $38 $aa
	xor  h                                           ; $682b: $ac
	jp   z, $aaa9                                    ; $682c: $ca $a9 $aa

	adc  b                                           ; $682f: $88
	adc  c                                           ; $6830: $89
	add  a                                           ; $6831: $87
	halt                                             ; $6832: $76
	ld   [hl], l                                     ; $6833: $75
	ld   d, h                                        ; $6834: $54
	inc  d                                           ; $6835: $14
	sbc  c                                           ; $6836: $99
	xor  e                                           ; $6837: $ab
	jp   z, $aa89                                    ; $6838: $ca $89 $aa

	sbc  b                                           ; $683b: $98
	xor  b                                           ; $683c: $a8
	sub  a                                           ; $683d: $97
	ld   [hl], a                                     ; $683e: $77
	halt                                             ; $683f: $76
	ld   d, h                                        ; $6840: $54
	ld   [hl-], a                                    ; $6841: $32
	ld   e, d                                        ; $6842: $5a
	sbc  d                                           ; $6843: $9a
	cp   h                                           ; $6844: $bc
	cp   c                                           ; $6845: $b9
	sbc  d                                           ; $6846: $9a
	xor  b                                           ; $6847: $a8
	adc  c                                           ; $6848: $89
	xor  b                                           ; $6849: $a8
	ld   a, b                                        ; $684a: $78
	ld   [hl], a                                     ; $684b: $77
	ld   h, l                                        ; $684c: $65
	ld   b, e                                        ; $684d: $43
	dec  h                                           ; $684e: $25
	xor  d                                           ; $684f: $aa
	xor  d                                           ; $6850: $aa
	cp   c                                           ; $6851: $b9
	sbc  d                                           ; $6852: $9a
	cp   d                                           ; $6853: $ba
	adc  b                                           ; $6854: $88
	adc  b                                           ; $6855: $88
	ld   [hl], a                                     ; $6856: $77
	add  a                                           ; $6857: $87
	ld   [hl], a                                     ; $6858: $77
	ld   d, l                                        ; $6859: $55
	ld   b, d                                        ; $685a: $42
	ld   e, c                                        ; $685b: $59
	xor  e                                           ; $685c: $ab
	cp   d                                           ; $685d: $ba
	sbc  c                                           ; $685e: $99
	xor  d                                           ; $685f: $aa
	cp   c                                           ; $6860: $b9
	adc  b                                           ; $6861: $88
	sbc  c                                           ; $6862: $99
	adc  b                                           ; $6863: $88
	ld   [hl], a                                     ; $6864: $77
	ld   d, h                                        ; $6865: $54
	ld   b, e                                        ; $6866: $43
	ld   b, a                                        ; $6867: $47
	xor  d                                           ; $6868: $aa
	xor  e                                           ; $6869: $ab
	cp   c                                           ; $686a: $b9
	sbc  c                                           ; $686b: $99
	cp   e                                           ; $686c: $bb
	sbc  b                                           ; $686d: $98
	add  a                                           ; $686e: $87
	ld   a, b                                        ; $686f: $78
	sbc  b                                           ; $6870: $98
	ld   [hl], a                                     ; $6871: $77
	ld   d, l                                        ; $6872: $55
	ld   b, c                                        ; $6873: $41
	ld   c, b                                        ; $6874: $48
	res  5, l                                        ; $6875: $cb $ad
	sbc  b                                           ; $6877: $98
	adc  d                                           ; $6878: $8a
	cp   d                                           ; $6879: $ba
	adc  b                                           ; $687a: $88
	sbc  b                                           ; $687b: $98
	ld   a, b                                        ; $687c: $78
	adc  b                                           ; $687d: $88
	ld   [hl], l                                     ; $687e: $75
	ld   d, h                                        ; $687f: $54
	inc  sp                                          ; $6880: $33
	ld   a, d                                        ; $6881: $7a
	cp   e                                           ; $6882: $bb
	jp   z, $9a89                                    ; $6883: $ca $89 $9a

	sbc  c                                           ; $6886: $99

Jump_0ad_6887:
	add  a                                           ; $6887: $87
	adc  b                                           ; $6888: $88
	sbc  b                                           ; $6889: $98
	sbc  b                                           ; $688a: $98
	ld   h, l                                        ; $688b: $65
	ld   d, h                                        ; $688c: $54
	inc  h                                           ; $688d: $24
	adc  d                                           ; $688e: $8a
	xor  e                                           ; $688f: $ab
	ret                                              ; $6890: $c9


	ld   a, c                                        ; $6891: $79
	xor  e                                           ; $6892: $ab
	sbc  c                                           ; $6893: $99
	sbc  b                                           ; $6894: $98

Call_0ad_6895:
	ld   [hl], a                                     ; $6895: $77
	sbc  c                                           ; $6896: $99
	add  a                                           ; $6897: $87
	ld   h, [hl]                                     ; $6898: $66
	ld   d, e                                        ; $6899: $53
	ld   h, $a9                                      ; $689a: $26 $a9
	sbc  e                                           ; $689c: $9b
	ret                                              ; $689d: $c9


	adc  c                                           ; $689e: $89
	xor  d                                           ; $689f: $aa
	adc  b                                           ; $68a0: $88
	adc  b                                           ; $68a1: $88
	adc  b                                           ; $68a2: $88
	sbc  b                                           ; $68a3: $98
	halt                                             ; $68a4: $76
	ld   d, l                                        ; $68a5: $55
	ld   d, h                                        ; $68a6: $54
	ld   c, b                                        ; $68a7: $48
	xor  b                                           ; $68a8: $a8
	sbc  l                                           ; $68a9: $9d
	cp   b                                           ; $68aa: $b8
	adc  d                                           ; $68ab: $8a
	cp   c                                           ; $68ac: $b9
	ld   a, b                                        ; $68ad: $78
	adc  b                                           ; $68ae: $88
	ld   a, b                                        ; $68af: $78
	cp   b                                           ; $68b0: $b8
	ld   h, [hl]                                     ; $68b1: $66
	ld   h, l                                        ; $68b2: $65
	ld   b, e                                        ; $68b3: $43
	ld   e, c                                        ; $68b4: $59
	sbc  c                                           ; $68b5: $99
	cp   l                                           ; $68b6: $bd
	add  a                                           ; $68b7: $87
	sbc  d                                           ; $68b8: $9a
	xor  c                                           ; $68b9: $a9
	sbc  b                                           ; $68ba: $98
	add  a                                           ; $68bb: $87
	ld   a, b                                        ; $68bc: $78
	sbc  b                                           ; $68bd: $98
	ld   [hl], a                                     ; $68be: $77
	ld   h, l                                        ; $68bf: $65
	ld   b, e                                        ; $68c0: $43
	ld   e, c                                        ; $68c1: $59
	sbc  c                                           ; $68c2: $99
	cp   e                                           ; $68c3: $bb
	adc  b                                           ; $68c4: $88
	xor  d                                           ; $68c5: $aa
	xor  d                                           ; $68c6: $aa
	sbc  c                                           ; $68c7: $99

Call_0ad_68c8:
	add  a                                           ; $68c8: $87
	ld   a, c                                        ; $68c9: $79
	add  a                                           ; $68ca: $87
	ld   [hl], a                                     ; $68cb: $77
	ld   h, l                                        ; $68cc: $65
	ld   d, e                                        ; $68cd: $53
	ld   e, b                                        ; $68ce: $58
	sbc  c                                           ; $68cf: $99
	xor  h                                           ; $68d0: $ac
	xor  b                                           ; $68d1: $a8
	sbc  e                                           ; $68d2: $9b
	cp   b                                           ; $68d3: $b8
	sbc  c                                           ; $68d4: $99
	adc  c                                           ; $68d5: $89
	adc  d                                           ; $68d6: $8a
	sub  a                                           ; $68d7: $97
	ld   h, a                                        ; $68d8: $67
	ld   [hl], l                                     ; $68d9: $75
	ld   b, e                                        ; $68da: $43
	ld   d, a                                        ; $68db: $57
	ld   a, c                                        ; $68dc: $79
	cp   h                                           ; $68dd: $bc
	xor  b                                           ; $68de: $a8
	sbc  d                                           ; $68df: $9a
	xor  c                                           ; $68e0: $a9
	sbc  c                                           ; $68e1: $99
	add  a                                           ; $68e2: $87
	ld   a, c                                        ; $68e3: $79
	sub  a                                           ; $68e4: $97
	ld   [hl], a                                     ; $68e5: $77
	ld   h, l                                        ; $68e6: $65
	ld   d, h                                        ; $68e7: $54
	ld   b, l                                        ; $68e8: $45
	adc  d                                           ; $68e9: $8a
	sbc  e                                           ; $68ea: $9b
	cp   d                                           ; $68eb: $ba
	sbc  d                                           ; $68ec: $9a
	xor  d                                           ; $68ed: $aa
	adc  b                                           ; $68ee: $88
	adc  b                                           ; $68ef: $88
	sbc  c                                           ; $68f0: $99
	sbc  b                                           ; $68f1: $98
	ld   [hl], a                                     ; $68f2: $77
	halt                                             ; $68f3: $76
	ld   d, l                                        ; $68f4: $55
	ld   b, l                                        ; $68f5: $45
	ld   a, c                                        ; $68f6: $79
	adc  c                                           ; $68f7: $89
	res  1, c                                        ; $68f8: $cb $89
	jp   z, $9878                                    ; $68fa: $ca $78 $98

	ld   a, c                                        ; $68fd: $79
	xor  c                                           ; $68fe: $a9
	add  a                                           ; $68ff: $87
	ld   [hl], a                                     ; $6900: $77
	ld   h, l                                        ; $6901: $65
	ld   d, h                                        ; $6902: $54
	ld   d, [hl]                                     ; $6903: $56
	ld   a, c                                        ; $6904: $79
	cp   e                                           ; $6905: $bb
	xor  c                                           ; $6906: $a9
	xor  d                                           ; $6907: $aa
	adc  c                                           ; $6908: $89
	sbc  b                                           ; $6909: $98
	adc  b                                           ; $690a: $88
	xor  c                                           ; $690b: $a9
	sbc  b                                           ; $690c: $98
	halt                                             ; $690d: $76
	ld   h, [hl]                                     ; $690e: $66
	ld   h, l                                        ; $690f: $65
	ld   b, h                                        ; $6910: $44
	ld   a, b                                        ; $6911: $78
	sbc  d                                           ; $6912: $9a
	cp   e                                           ; $6913: $bb
	sbc  d                                           ; $6914: $9a
	xor  d                                           ; $6915: $aa
	sbc  b                                           ; $6916: $98
	ld   [hl], a                                     ; $6917: $77
	sbc  b                                           ; $6918: $98
	sbc  b                                           ; $6919: $98
	sub  a                                           ; $691a: $97
	halt                                             ; $691b: $76
	ld   h, [hl]                                     ; $691c: $66
	ld   d, h                                        ; $691d: $54
	ld   d, [hl]                                     ; $691e: $56
	adc  c                                           ; $691f: $89
	sbc  d                                           ; $6920: $9a
	xor  d                                           ; $6921: $aa
	xor  d                                           ; $6922: $aa
	xor  c                                           ; $6923: $a9
	add  a                                           ; $6924: $87
	adc  b                                           ; $6925: $88
	adc  c                                           ; $6926: $89
	sbc  b                                           ; $6927: $98
	ld   [hl], a                                     ; $6928: $77
	halt                                             ; $6929: $76
	ld   h, [hl]                                     ; $692a: $66
	ld   d, l                                        ; $692b: $55
	ld   h, a                                        ; $692c: $67
	adc  c                                           ; $692d: $89
	cp   d                                           ; $692e: $ba
	sbc  d                                           ; $692f: $9a
	cp   d                                           ; $6930: $ba
	adc  b                                           ; $6931: $88
	sbc  b                                           ; $6932: $98
	ld   a, b                                        ; $6933: $78
	adc  c                                           ; $6934: $89
	sbc  b                                           ; $6935: $98
	adc  b                                           ; $6936: $88
	ld   [hl], a                                     ; $6937: $77
	halt                                             ; $6938: $76
	ld   d, l                                        ; $6939: $55
	ld   h, a                                        ; $693a: $67
	adc  b                                           ; $693b: $88
	sbc  c                                           ; $693c: $99
	sbc  c                                           ; $693d: $99
	xor  d                                           ; $693e: $aa
	sbc  c                                           ; $693f: $99
	adc  b                                           ; $6940: $88
	adc  b                                           ; $6941: $88
	adc  c                                           ; $6942: $89
	sbc  b                                           ; $6943: $98
	adc  b                                           ; $6944: $88
	add  a                                           ; $6945: $87
	ld   [hl], a                                     ; $6946: $77
	halt                                             ; $6947: $76
	ld   h, a                                        ; $6948: $67
	adc  b                                           ; $6949: $88
	sbc  b                                           ; $694a: $98
	sbc  b                                           ; $694b: $98
	sbc  c                                           ; $694c: $99
	sbc  b                                           ; $694d: $98
	adc  b                                           ; $694e: $88
	sbc  b                                           ; $694f: $98
	adc  b                                           ; $6950: $88
	adc  c                                           ; $6951: $89
	sbc  b                                           ; $6952: $98
	adc  b                                           ; $6953: $88
	add  a                                           ; $6954: $87
	ld   a, b                                        ; $6955: $78
	add  a                                           ; $6956: $87
	ld   a, b                                        ; $6957: $78
	ld   [hl], a                                     ; $6958: $77
	add  a                                           ; $6959: $87
	adc  c                                           ; $695a: $89
	ld   a, b                                        ; $695b: $78
	adc  c                                           ; $695c: $89
	adc  b                                           ; $695d: $88
	adc  b                                           ; $695e: $88
	sbc  b                                           ; $695f: $98
	adc  c                                           ; $6960: $89
	adc  b                                           ; $6961: $88
	sbc  b                                           ; $6962: $98
	adc  b                                           ; $6963: $88
	adc  b                                           ; $6964: $88
	add  a                                           ; $6965: $87
	halt                                             ; $6966: $76
	ld   [hl], a                                     ; $6967: $77
	ld   [hl], a                                     ; $6968: $77
	adc  b                                           ; $6969: $88
	adc  b                                           ; $696a: $88
	adc  b                                           ; $696b: $88
	sbc  b                                           ; $696c: $98
	adc  c                                           ; $696d: $89
	adc  b                                           ; $696e: $88
	adc  b                                           ; $696f: $88
	sbc  b                                           ; $6970: $98
	sbc  b                                           ; $6971: $98
	adc  b                                           ; $6972: $88
	add  a                                           ; $6973: $87
	ld   [hl], a                                     ; $6974: $77

Call_0ad_6975:
Jump_0ad_6975:
	ld   [hl], a                                     ; $6975: $77
	ld   [hl], a                                     ; $6976: $77
	ld   [hl], a                                     ; $6977: $77
	adc  b                                           ; $6978: $88
	ld   a, b                                        ; $6979: $78
	adc  b                                           ; $697a: $88
	adc  b                                           ; $697b: $88
	adc  b                                           ; $697c: $88
	sbc  c                                           ; $697d: $99
	adc  b                                           ; $697e: $88
	adc  b                                           ; $697f: $88
	adc  b                                           ; $6980: $88
	adc  c                                           ; $6981: $89
	sbc  c                                           ; $6982: $99
	sub  a                                           ; $6983: $97
	add  a                                           ; $6984: $87
	ld   [hl], a                                     ; $6985: $77
	ld   [hl], a                                     ; $6986: $77

Jump_0ad_6987:
	ld   h, a                                        ; $6987: $67
	ld   [hl], a                                     ; $6988: $77
	sbc  b                                           ; $6989: $98
	sbc  c                                           ; $698a: $99
	sbc  b                                           ; $698b: $98
	adc  b                                           ; $698c: $88
	adc  b                                           ; $698d: $88
	sbc  c                                           ; $698e: $99
	sbc  c                                           ; $698f: $99
	sbc  c                                           ; $6990: $99
	adc  c                                           ; $6991: $89
	sbc  c                                           ; $6992: $99
	adc  b                                           ; $6993: $88
	add  a                                           ; $6994: $87
	ld   [hl], a                                     ; $6995: $77
	halt                                             ; $6996: $76
	ld   [hl], a                                     ; $6997: $77
	ld   [hl], a                                     ; $6998: $77
	adc  b                                           ; $6999: $88
	adc  c                                           ; $699a: $89
	adc  b                                           ; $699b: $88
	adc  c                                           ; $699c: $89
	sbc  b                                           ; $699d: $98
	sbc  b                                           ; $699e: $98
	sbc  c                                           ; $699f: $99
	adc  b                                           ; $69a0: $88
	sbc  c                                           ; $69a1: $99
	sbc  b                                           ; $69a2: $98
	ld   [hl], a                                     ; $69a3: $77
	ld   [hl], a                                     ; $69a4: $77
	halt                                             ; $69a5: $76
	ld   d, [hl]                                     ; $69a6: $56
	ld   [hl], a                                     ; $69a7: $77
	adc  b                                           ; $69a8: $88
	sbc  b                                           ; $69a9: $98
	sbc  b                                           ; $69aa: $98
	adc  c                                           ; $69ab: $89
	sbc  b                                           ; $69ac: $98
	adc  b                                           ; $69ad: $88
	sbc  c                                           ; $69ae: $99
	sbc  b                                           ; $69af: $98
	sbc  b                                           ; $69b0: $98
	adc  c                                           ; $69b1: $89
	add  a                                           ; $69b2: $87
	halt                                             ; $69b3: $76
	halt                                             ; $69b4: $76
	ld   h, [hl]                                     ; $69b5: $66
	ld   h, a                                        ; $69b6: $67
	adc  b                                           ; $69b7: $88
	sbc  d                                           ; $69b8: $9a
	sbc  b                                           ; $69b9: $98
	sbc  c                                           ; $69ba: $99
	sbc  b                                           ; $69bb: $98
	adc  c                                           ; $69bc: $89
	adc  b                                           ; $69bd: $88
	sbc  d                                           ; $69be: $9a
	sbc  c                                           ; $69bf: $99
	sbc  c                                           ; $69c0: $99
	add  a                                           ; $69c1: $87
	ld   h, [hl]                                     ; $69c2: $66
	ld   h, l                                        ; $69c3: $65
	ld   d, l                                        ; $69c4: $55
	ld   h, a                                        ; $69c5: $67
	adc  b                                           ; $69c6: $88
	xor  c                                           ; $69c7: $a9
	sbc  b                                           ; $69c8: $98
	sbc  c                                           ; $69c9: $99
	adc  b                                           ; $69ca: $88
	adc  c                                           ; $69cb: $89
	adc  b                                           ; $69cc: $88
	sbc  d                                           ; $69cd: $9a
	xor  c                                           ; $69ce: $a9
	sbc  c                                           ; $69cf: $99
	add  a                                           ; $69d0: $87
	halt                                             ; $69d1: $76
	halt                                             ; $69d2: $76
	ld   d, l                                        ; $69d3: $55
	ld   l, b                                        ; $69d4: $68
	ld   a, b                                        ; $69d5: $78
	sbc  d                                           ; $69d6: $9a
	sbc  b                                           ; $69d7: $98
	sbc  d                                           ; $69d8: $9a
	add  a                                           ; $69d9: $87
	adc  c                                           ; $69da: $89
	sbc  b                                           ; $69db: $98
	sbc  d                                           ; $69dc: $9a
	xor  c                                           ; $69dd: $a9
	adc  b                                           ; $69de: $88
	add  a                                           ; $69df: $87
	ld   h, a                                        ; $69e0: $67
	ld   h, l                                        ; $69e1: $65
	ld   d, [hl]                                     ; $69e2: $56
	adc  c                                           ; $69e3: $89
	sbc  d                                           ; $69e4: $9a
	xor  b                                           ; $69e5: $a8
	adc  c                                           ; $69e6: $89
	sbc  b                                           ; $69e7: $98
	adc  b                                           ; $69e8: $88
	adc  b                                           ; $69e9: $88
	adc  c                                           ; $69ea: $89
	sbc  d                                           ; $69eb: $9a
	sbc  c                                           ; $69ec: $99
	sbc  b                                           ; $69ed: $98
	halt                                             ; $69ee: $76
	halt                                             ; $69ef: $76
	ld   b, h                                        ; $69f0: $44
	ld   a, c                                        ; $69f1: $79
	sbc  c                                           ; $69f2: $99
	sbc  d                                           ; $69f3: $9a
	sub  a                                           ; $69f4: $97
	adc  c                                           ; $69f5: $89
	add  a                                           ; $69f6: $87
	ld   a, b                                        ; $69f7: $78
	sbc  b                                           ; $69f8: $98
	adc  c                                           ; $69f9: $89
	xor  c                                           ; $69fa: $a9
	sbc  d                                           ; $69fb: $9a
	sub  a                                           ; $69fc: $97
	ld   h, [hl]                                     ; $69fd: $66
	ld   h, l                                        ; $69fe: $65
	ld   b, [hl]                                     ; $69ff: $46
	sbc  c                                           ; $6a00: $99
	adc  b                                           ; $6a01: $88
	sbc  c                                           ; $6a02: $99
	sbc  b                                           ; $6a03: $98
	sbc  c                                           ; $6a04: $99
	add  a                                           ; $6a05: $87
	adc  c                                           ; $6a06: $89
	adc  b                                           ; $6a07: $88
	sbc  d                                           ; $6a08: $9a
	xor  c                                           ; $6a09: $a9
	sbc  c                                           ; $6a0a: $99
	add  [hl]                                        ; $6a0b: $86
	ld   h, a                                        ; $6a0c: $67
	ld   h, h                                        ; $6a0d: $64
	ld   d, a                                        ; $6a0e: $57
	adc  c                                           ; $6a0f: $89
	sbc  c                                           ; $6a10: $99
	sbc  b                                           ; $6a11: $98
	ld   a, b                                        ; $6a12: $78
	xor  c                                           ; $6a13: $a9
	ld   [hl], a                                     ; $6a14: $77
	adc  b                                           ; $6a15: $88
	ld   a, c                                        ; $6a16: $79
	xor  d                                           ; $6a17: $aa
	xor  d                                           ; $6a18: $aa
	sbc  b                                           ; $6a19: $98
	ld   h, [hl]                                     ; $6a1a: $66
	ld   h, [hl]                                     ; $6a1b: $66
	ld   d, h                                        ; $6a1c: $54
	ld   l, c                                        ; $6a1d: $69
	xor  b                                           ; $6a1e: $a8
	adc  b                                           ; $6a1f: $88
	xor  b                                           ; $6a20: $a8
	sbc  d                                           ; $6a21: $9a
	sbc  b                                           ; $6a22: $98
	ld   [hl], a                                     ; $6a23: $77
	adc  b                                           ; $6a24: $88
	sbc  d                                           ; $6a25: $9a
	cp   d                                           ; $6a26: $ba
	sbc  c                                           ; $6a27: $99
	sbc  b                                           ; $6a28: $98
	ld   h, [hl]                                     ; $6a29: $66
	halt                                             ; $6a2a: $76
	ld   b, h                                        ; $6a2b: $44
	ld   a, c                                        ; $6a2c: $79
	sbc  c                                           ; $6a2d: $99
	sbc  c                                           ; $6a2e: $99
	sbc  b                                           ; $6a2f: $98
	adc  c                                           ; $6a30: $89
	add  a                                           ; $6a31: $87
	ld   a, b                                        ; $6a32: $78
	add  a                                           ; $6a33: $87
	adc  d                                           ; $6a34: $8a
	cp   d                                           ; $6a35: $ba
	sbc  d                                           ; $6a36: $9a
	add  a                                           ; $6a37: $87
	ld   h, [hl]                                     ; $6a38: $66
	halt                                             ; $6a39: $76
	ld   b, l                                        ; $6a3a: $45
	ld   a, b                                        ; $6a3b: $78
	sbc  c                                           ; $6a3c: $99
	sbc  d                                           ; $6a3d: $9a
	sub  a                                           ; $6a3e: $97
	sbc  c                                           ; $6a3f: $99
	add  a                                           ; $6a40: $87
	ld   [hl], a                                     ; $6a41: $77
	ld   a, b                                        ; $6a42: $78
	sbc  d                                           ; $6a43: $9a

Jump_0ad_6a44:
	cp   d                                           ; $6a44: $ba
	xor  c                                           ; $6a45: $a9
	add  a                                           ; $6a46: $87
	ld   h, [hl]                                     ; $6a47: $66
	halt                                             ; $6a48: $76
	ld   d, l                                        ; $6a49: $55
	ld   a, c                                        ; $6a4a: $79
	sbc  c                                           ; $6a4b: $99
	xor  d                                           ; $6a4c: $aa
	sub  a                                           ; $6a4d: $97
	adc  c                                           ; $6a4e: $89
	add  a                                           ; $6a4f: $87
	ld   [hl], a                                     ; $6a50: $77
	ld   a, b                                        ; $6a51: $78
	sbc  d                                           ; $6a52: $9a
	xor  e                                           ; $6a53: $ab
	sbc  c                                           ; $6a54: $99
	add  a                                           ; $6a55: $87
	ld   h, [hl]                                     ; $6a56: $66
	halt                                             ; $6a57: $76
	ld   b, l                                        ; $6a58: $45
	ld   a, b                                        ; $6a59: $78
	adc  d                                           ; $6a5a: $8a
	sbc  c                                           ; $6a5b: $99
	add  a                                           ; $6a5c: $87
	sbc  c                                           ; $6a5d: $99
	add  a                                           ; $6a5e: $87
	ld   [hl], a                                     ; $6a5f: $77
	ld   a, b                                        ; $6a60: $78
	sbc  e                                           ; $6a61: $9b
	cp   e                                           ; $6a62: $bb
	xor  c                                           ; $6a63: $a9

Call_0ad_6a64:
	add  a                                           ; $6a64: $87
	halt                                             ; $6a65: $76
	ld   [hl], a                                     ; $6a66: $77
	ld   b, h                                        ; $6a67: $44
	ld   a, c                                        ; $6a68: $79
	sbc  c                                           ; $6a69: $99
	xor  d                                           ; $6a6a: $aa
	add  a                                           ; $6a6b: $87
	adc  c                                           ; $6a6c: $89
	sub  a                                           ; $6a6d: $97
	ld   [hl], a                                     ; $6a6e: $77
	adc  b                                           ; $6a6f: $88
	adc  e                                           ; $6a70: $8b
	cp   c                                           ; $6a71: $b9
	xor  d                                           ; $6a72: $aa
	add  a                                           ; $6a73: $87
	ld   h, [hl]                                     ; $6a74: $66
	ld   h, [hl]                                     ; $6a75: $66
	ld   d, l                                        ; $6a76: $55
	ld   h, a                                        ; $6a77: $67
	sbc  d                                           ; $6a78: $9a
	sbc  c                                           ; $6a79: $99
	adc  b                                           ; $6a7a: $88
	adc  b                                           ; $6a7b: $88
	sbc  b                                           ; $6a7c: $98
	ld   [hl], a                                     ; $6a7d: $77
	ld   a, b                                        ; $6a7e: $78
	sbc  d                                           ; $6a7f: $9a
	cp   e                                           ; $6a80: $bb
	xor  d                                           ; $6a81: $aa
	add  a                                           ; $6a82: $87
	halt                                             ; $6a83: $76
	ld   h, [hl]                                     ; $6a84: $66
	ld   d, h                                        ; $6a85: $54
	ld   l, b                                        ; $6a86: $68
	xor  c                                           ; $6a87: $a9
	xor  c                                           ; $6a88: $a9
	add  a                                           ; $6a89: $87
	ld   a, b                                        ; $6a8a: $78
	xor  c                                           ; $6a8b: $a9
	ld   a, b                                        ; $6a8c: $78
	ld   [hl], a                                     ; $6a8d: $77
	sbc  d                                           ; $6a8e: $9a
	xor  e                                           ; $6a8f: $ab
	cp   d                                           ; $6a90: $ba
	add  a                                           ; $6a91: $87
	ld   [hl], a                                     ; $6a92: $77
	ld   h, [hl]                                     ; $6a93: $66
	ld   d, h                                        ; $6a94: $54
	ld   e, b                                        ; $6a95: $58
	xor  b                                           ; $6a96: $a8
	adc  b                                           ; $6a97: $88
	sbc  b                                           ; $6a98: $98
	adc  c                                           ; $6a99: $89
	sbc  b                                           ; $6a9a: $98
	ld   h, a                                        ; $6a9b: $67
	ld   [hl], a                                     ; $6a9c: $77
	adc  c                                           ; $6a9d: $89
	cp   e                                           ; $6a9e: $bb
	sbc  c                                           ; $6a9f: $99
	sbc  b                                           ; $6aa0: $98
	ld   [hl], a                                     ; $6aa1: $77
	halt                                             ; $6aa2: $76
	ld   h, l                                        ; $6aa3: $65
	ld   b, l                                        ; $6aa4: $45
	adc  c                                           ; $6aa5: $89
	sbc  b                                           ; $6aa6: $98
	sbc  c                                           ; $6aa7: $99
	sbc  b                                           ; $6aa8: $98
	sbc  c                                           ; $6aa9: $99
	add  a                                           ; $6aaa: $87
	ld   [hl], a                                     ; $6aab: $77
	adc  b                                           ; $6aac: $88
	xor  d                                           ; $6aad: $aa
	cp   e                                           ; $6aae: $bb
	xor  c                                           ; $6aaf: $a9
	add  a                                           ; $6ab0: $87
	halt                                             ; $6ab1: $76
	ld   h, [hl]                                     ; $6ab2: $66
	ld   b, l                                        ; $6ab3: $45
	ld   l, c                                        ; $6ab4: $69
	adc  c                                           ; $6ab5: $89
	xor  b                                           ; $6ab6: $a8
	add  a                                           ; $6ab7: $87
	sbc  c                                           ; $6ab8: $99
	sub  a                                           ; $6ab9: $97
	ld   [hl], a                                     ; $6aba: $77
	ld   [hl], a                                     ; $6abb: $77
	sbc  d                                           ; $6abc: $9a
	cp   e                                           ; $6abd: $bb
	cp   d                                           ; $6abe: $ba
	sbc  b                                           ; $6abf: $98
	ld   [hl], a                                     ; $6ac0: $77
	ld   h, [hl]                                     ; $6ac1: $66
	ld   h, l                                        ; $6ac2: $65
	ld   d, a                                        ; $6ac3: $57
	sbc  b                                           ; $6ac4: $98
	ld   a, b                                        ; $6ac5: $78
	xor  b                                           ; $6ac6: $a8
	adc  c                                           ; $6ac7: $89
	sub  a                                           ; $6ac8: $97
	ld   [hl], a                                     ; $6ac9: $77
	ld   [hl], a                                     ; $6aca: $77
	adc  d                                           ; $6acb: $8a
	xor  d                                           ; $6acc: $aa
	cp   d                                           ; $6acd: $ba
	xor  c                                           ; $6ace: $a9
	ld   [hl], a                                     ; $6acf: $77
	halt                                             ; $6ad0: $76
	ld   h, [hl]                                     ; $6ad1: $66
	ld   d, [hl]                                     ; $6ad2: $56
	ld   a, b                                        ; $6ad3: $78
	sbc  c                                           ; $6ad4: $99
	sbc  b                                           ; $6ad5: $98
	adc  b                                           ; $6ad6: $88
	sbc  b                                           ; $6ad7: $98
	add  a                                           ; $6ad8: $87
	ld   [hl], a                                     ; $6ad9: $77
	adc  b                                           ; $6ada: $88
	xor  d                                           ; $6adb: $aa
	xor  d                                           ; $6adc: $aa
	sbc  d                                           ; $6add: $9a
	sbc  b                                           ; $6ade: $98
	ld   [hl], a                                     ; $6adf: $77
	ld   h, [hl]                                     ; $6ae0: $66
	ld   d, l                                        ; $6ae1: $55
	ld   l, b                                        ; $6ae2: $68
	adc  c                                           ; $6ae3: $89
	sbc  c                                           ; $6ae4: $99
	sbc  b                                           ; $6ae5: $98
	sbc  c                                           ; $6ae6: $99
	add  a                                           ; $6ae7: $87
	add  a                                           ; $6ae8: $87
	ld   a, b                                        ; $6ae9: $78
	sbc  c                                           ; $6aea: $99
	xor  c                                           ; $6aeb: $a9
	xor  d                                           ; $6aec: $aa
	sbc  b                                           ; $6aed: $98
	add  a                                           ; $6aee: $87
	ld   h, [hl]                                     ; $6aef: $66
	ld   d, l                                        ; $6af0: $55
	ld   d, [hl]                                     ; $6af1: $56
	adc  c                                           ; $6af2: $89
	adc  c                                           ; $6af3: $89
	sbc  c                                           ; $6af4: $99
	adc  b                                           ; $6af5: $88
	sbc  c                                           ; $6af6: $99
	ld   [hl], a                                     ; $6af7: $77
	ld   [hl], a                                     ; $6af8: $77
	adc  b                                           ; $6af9: $88
	sbc  d                                           ; $6afa: $9a
	xor  d                                           ; $6afb: $aa
	xor  c                                           ; $6afc: $a9
	add  a                                           ; $6afd: $87
	halt                                             ; $6afe: $76
	ld   h, l                                        ; $6aff: $65
	ld   d, l                                        ; $6b00: $55
	ld   a, b                                        ; $6b01: $78
	adc  b                                           ; $6b02: $88
	xor  c                                           ; $6b03: $a9
	adc  b                                           ; $6b04: $88
	xor  b                                           ; $6b05: $a8
	ld   [hl], a                                     ; $6b06: $77
	add  a                                           ; $6b07: $87
	ld   a, b                                        ; $6b08: $78
	xor  d                                           ; $6b09: $aa
	sbc  e                                           ; $6b0a: $9b
	xor  d                                           ; $6b0b: $aa
	sbc  b                                           ; $6b0c: $98
	halt                                             ; $6b0d: $76
	ld   h, [hl]                                     ; $6b0e: $66
	ld   d, l                                        ; $6b0f: $55
	ld   h, a                                        ; $6b10: $67
	adc  b                                           ; $6b11: $88
	adc  c                                           ; $6b12: $89
	sbc  b                                           ; $6b13: $98
	sbc  b                                           ; $6b14: $98
	add  a                                           ; $6b15: $87
	ld   [hl], a                                     ; $6b16: $77
	ld   [hl], a                                     ; $6b17: $77
	sbc  c                                           ; $6b18: $99
	xor  d                                           ; $6b19: $aa
	cp   e                                           ; $6b1a: $bb
	xor  c                                           ; $6b1b: $a9
	sub  a                                           ; $6b1c: $97
	ld   h, [hl]                                     ; $6b1d: $66
	ld   d, h                                        ; $6b1e: $54
	ld   d, [hl]                                     ; $6b1f: $56
	ld   a, b                                        ; $6b20: $78
	sbc  d                                           ; $6b21: $9a
	sbc  b                                           ; $6b22: $98
	adc  b                                           ; $6b23: $88
	adc  b                                           ; $6b24: $88
	ld   [hl], a                                     ; $6b25: $77
	ld   [hl], a                                     ; $6b26: $77
	adc  c                                           ; $6b27: $89
	sbc  d                                           ; $6b28: $9a
	xor  e                                           ; $6b29: $ab
	xor  d                                           ; $6b2a: $aa
	sbc  c                                           ; $6b2b: $99
	halt                                             ; $6b2c: $76
	ld   h, l                                        ; $6b2d: $65
	ld   b, l                                        ; $6b2e: $45
	ld   l, b                                        ; $6b2f: $68
	adc  b                                           ; $6b30: $88
	sbc  c                                           ; $6b31: $99
	adc  b                                           ; $6b32: $88
	sbc  c                                           ; $6b33: $99
	ld   [hl], a                                     ; $6b34: $77
	ld   [hl], a                                     ; $6b35: $77
	ld   a, b                                        ; $6b36: $78
	adc  c                                           ; $6b37: $89
	xor  d                                           ; $6b38: $aa
	cp   e                                           ; $6b39: $bb
	xor  c                                           ; $6b3a: $a9
	add  a                                           ; $6b3b: $87
	ld   h, [hl]                                     ; $6b3c: $66
	ld   d, h                                        ; $6b3d: $54
	ld   d, [hl]                                     ; $6b3e: $56
	ld   a, b                                        ; $6b3f: $78
	adc  b                                           ; $6b40: $88
	sbc  c                                           ; $6b41: $99
	sbc  b                                           ; $6b42: $98
	adc  b                                           ; $6b43: $88
	ld   [hl], a                                     ; $6b44: $77
	ld   [hl], a                                     ; $6b45: $77
	adc  b                                           ; $6b46: $88
	sbc  d                                           ; $6b47: $9a
	xor  d                                           ; $6b48: $aa
	cp   d                                           ; $6b49: $ba
	sbc  c                                           ; $6b4a: $99
	halt                                             ; $6b4b: $76
	ld   h, l                                        ; $6b4c: $65
	ld   d, l                                        ; $6b4d: $55
	ld   h, a                                        ; $6b4e: $67
	ld   a, b                                        ; $6b4f: $78
	sbc  d                                           ; $6b50: $9a
	adc  b                                           ; $6b51: $88
	sbc  c                                           ; $6b52: $99
	ld   [hl], a                                     ; $6b53: $77
	add  a                                           ; $6b54: $87
	ld   a, b                                        ; $6b55: $78
	adc  c                                           ; $6b56: $89
	sbc  e                                           ; $6b57: $9b
	cp   d                                           ; $6b58: $ba
	xor  d                                           ; $6b59: $aa
	sub  a                                           ; $6b5a: $97
	halt                                             ; $6b5b: $76
	ld   d, l                                        ; $6b5c: $55
	ld   d, [hl]                                     ; $6b5d: $56
	ld   h, a                                        ; $6b5e: $67
	adc  b                                           ; $6b5f: $88
	sbc  c                                           ; $6b60: $99
	sbc  b                                           ; $6b61: $98
	adc  b                                           ; $6b62: $88
	ld   [hl], a                                     ; $6b63: $77
	ld   a, b                                        ; $6b64: $78
	adc  c                                           ; $6b65: $89
	sbc  d                                           ; $6b66: $9a
	xor  d                                           ; $6b67: $aa
	xor  d                                           ; $6b68: $aa
	xor  b                                           ; $6b69: $a8
	ld   [hl], a                                     ; $6b6a: $77
	ld   h, l                                        ; $6b6b: $65
	ld   b, l                                        ; $6b6c: $45
	ld   h, a                                        ; $6b6d: $67
	ld   a, b                                        ; $6b6e: $78
	sbc  c                                           ; $6b6f: $99
	sbc  b                                           ; $6b70: $98
	adc  b                                           ; $6b71: $88
	add  a                                           ; $6b72: $87
	ld   [hl], a                                     ; $6b73: $77
	ld   a, b                                        ; $6b74: $78
	sbc  c                                           ; $6b75: $99
	sbc  d                                           ; $6b76: $9a
	xor  d                                           ; $6b77: $aa
	xor  c                                           ; $6b78: $a9
	add  a                                           ; $6b79: $87
	halt                                             ; $6b7a: $76
	ld   d, l                                        ; $6b7b: $55
	ld   d, [hl]                                     ; $6b7c: $56
	ld   [hl], a                                     ; $6b7d: $77
	adc  b                                           ; $6b7e: $88
	sbc  c                                           ; $6b7f: $99
	sbc  c                                           ; $6b80: $99
	adc  b                                           ; $6b81: $88
	ld   [hl], a                                     ; $6b82: $77
	ld   [hl], a                                     ; $6b83: $77
	adc  b                                           ; $6b84: $88
	adc  c                                           ; $6b85: $89
	xor  d                                           ; $6b86: $aa
	xor  d                                           ; $6b87: $aa
	sbc  b                                           ; $6b88: $98
	add  a                                           ; $6b89: $87
	ld   h, [hl]                                     ; $6b8a: $66
	ld   d, l                                        ; $6b8b: $55
	ld   h, [hl]                                     ; $6b8c: $66
	ld   a, b                                        ; $6b8d: $78
	adc  b                                           ; $6b8e: $88
	sbc  c                                           ; $6b8f: $99
	sbc  b                                           ; $6b90: $98
	adc  b                                           ; $6b91: $88
	ld   [hl], a                                     ; $6b92: $77
	ld   a, b                                        ; $6b93: $78
	adc  b                                           ; $6b94: $88
	sbc  d                                           ; $6b95: $9a
	xor  d                                           ; $6b96: $aa
	xor  d                                           ; $6b97: $aa
	sbc  b                                           ; $6b98: $98
	ld   [hl], a                                     ; $6b99: $77
	ld   h, [hl]                                     ; $6b9a: $66
	ld   h, [hl]                                     ; $6b9b: $66
	ld   h, a                                        ; $6b9c: $67
	ld   a, b                                        ; $6b9d: $78
	sbc  c                                           ; $6b9e: $99
	adc  b                                           ; $6b9f: $88
	adc  b                                           ; $6ba0: $88
	add  a                                           ; $6ba1: $87
	ld   a, b                                        ; $6ba2: $78
	adc  b                                           ; $6ba3: $88
	sbc  b                                           ; $6ba4: $98
	sbc  d                                           ; $6ba5: $9a
	xor  c                                           ; $6ba6: $a9
	xor  c                                           ; $6ba7: $a9
	adc  b                                           ; $6ba8: $88
	add  a                                           ; $6ba9: $87
	halt                                             ; $6baa: $76
	ld   h, a                                        ; $6bab: $67
	ld   [hl], a                                     ; $6bac: $77
	ld   a, b                                        ; $6bad: $78
	adc  b                                           ; $6bae: $88
	adc  b                                           ; $6baf: $88
	adc  b                                           ; $6bb0: $88
	adc  b                                           ; $6bb1: $88
	ld   a, b                                        ; $6bb2: $78
	adc  b                                           ; $6bb3: $88
	sbc  b                                           ; $6bb4: $98
	sbc  c                                           ; $6bb5: $99
	xor  d                                           ; $6bb6: $aa
	xor  c                                           ; $6bb7: $a9
	adc  c                                           ; $6bb8: $89
	add  a                                           ; $6bb9: $87
	ld   [hl], a                                     ; $6bba: $77
	ld   [hl], a                                     ; $6bbb: $77
	ld   [hl], a                                     ; $6bbc: $77
	ld   [hl], a                                     ; $6bbd: $77
	ld   [hl], a                                     ; $6bbe: $77
	ld   [hl], a                                     ; $6bbf: $77
	ld   [hl], a                                     ; $6bc0: $77
	adc  b                                           ; $6bc1: $88
	adc  b                                           ; $6bc2: $88
	sbc  c                                           ; $6bc3: $99
	adc  c                                           ; $6bc4: $89
	sbc  d                                           ; $6bc5: $9a
	xor  d                                           ; $6bc6: $aa
	xor  c                                           ; $6bc7: $a9
	sbc  b                                           ; $6bc8: $98
	adc  b                                           ; $6bc9: $88
	ld   [hl], a                                     ; $6bca: $77
	ld   [hl], a                                     ; $6bcb: $77
	halt                                             ; $6bcc: $76
	ld   h, [hl]                                     ; $6bcd: $66
	ld   [hl], a                                     ; $6bce: $77
	ld   [hl], a                                     ; $6bcf: $77
	ld   a, b                                        ; $6bd0: $78
	adc  b                                           ; $6bd1: $88
	sbc  c                                           ; $6bd2: $99
	adc  c                                           ; $6bd3: $89
	sbc  c                                           ; $6bd4: $99
	sbc  d                                           ; $6bd5: $9a
	xor  d                                           ; $6bd6: $aa
	sbc  c                                           ; $6bd7: $99
	adc  c                                           ; $6bd8: $89
	adc  b                                           ; $6bd9: $88
	ld   [hl], a                                     ; $6bda: $77
	ld   [hl], a                                     ; $6bdb: $77
	ld   h, [hl]                                     ; $6bdc: $66
	ld   h, [hl]                                     ; $6bdd: $66
	ld   [hl], a                                     ; $6bde: $77
	ld   [hl], a                                     ; $6bdf: $77
	ld   a, b                                        ; $6be0: $78
	adc  c                                           ; $6be1: $89
	sbc  b                                           ; $6be2: $98
	sbc  c                                           ; $6be3: $99
	sbc  c                                           ; $6be4: $99
	xor  d                                           ; $6be5: $aa
	xor  c                                           ; $6be6: $a9
	sbc  c                                           ; $6be7: $99
	adc  c                                           ; $6be8: $89
	add  a                                           ; $6be9: $87
	ld   [hl], a                                     ; $6bea: $77
	halt                                             ; $6beb: $76
	ld   h, [hl]                                     ; $6bec: $66
	ld   h, [hl]                                     ; $6bed: $66
	ld   [hl], a                                     ; $6bee: $77
	ld   [hl], a                                     ; $6bef: $77
	adc  b                                           ; $6bf0: $88
	adc  c                                           ; $6bf1: $89
	adc  c                                           ; $6bf2: $89
	sbc  c                                           ; $6bf3: $99
	sbc  d                                           ; $6bf4: $9a
	xor  d                                           ; $6bf5: $aa
	xor  c                                           ; $6bf6: $a9
	sbc  c                                           ; $6bf7: $99
	sbc  b                                           ; $6bf8: $98
	add  a                                           ; $6bf9: $87
	ld   [hl], a                                     ; $6bfa: $77
	ld   h, [hl]                                     ; $6bfb: $66
	ld   h, [hl]                                     ; $6bfc: $66
	ld   h, [hl]                                     ; $6bfd: $66
	ld   [hl], a                                     ; $6bfe: $77
	ld   [hl], a                                     ; $6bff: $77
	adc  b                                           ; $6c00: $88
	sbc  b                                           ; $6c01: $98
	adc  c                                           ; $6c02: $89
	sbc  c                                           ; $6c03: $99
	sbc  d                                           ; $6c04: $9a
	xor  c                                           ; $6c05: $a9
	sbc  c                                           ; $6c06: $99
	sbc  c                                           ; $6c07: $99
	adc  b                                           ; $6c08: $88
	ld   [hl], a                                     ; $6c09: $77
	halt                                             ; $6c0a: $76
	ld   h, [hl]                                     ; $6c0b: $66
	ld   h, [hl]                                     ; $6c0c: $66
	ld   h, a                                        ; $6c0d: $67
	ld   [hl], a                                     ; $6c0e: $77
	ld   a, b                                        ; $6c0f: $78
	adc  c                                           ; $6c10: $89
	adc  b                                           ; $6c11: $88
	sbc  c                                           ; $6c12: $99
	sbc  c                                           ; $6c13: $99
	xor  d                                           ; $6c14: $aa
	sbc  c                                           ; $6c15: $99
	sbc  c                                           ; $6c16: $99
	adc  b                                           ; $6c17: $88
	add  a                                           ; $6c18: $87
	ld   [hl], a                                     ; $6c19: $77
	ld   h, [hl]                                     ; $6c1a: $66
	ld   h, [hl]                                     ; $6c1b: $66
	ld   h, [hl]                                     ; $6c1c: $66
	ld   [hl], a                                     ; $6c1d: $77
	ld   [hl], a                                     ; $6c1e: $77
	adc  b                                           ; $6c1f: $88
	sbc  c                                           ; $6c20: $99
	adc  c                                           ; $6c21: $89
	sbc  c                                           ; $6c22: $99
	xor  d                                           ; $6c23: $aa
	xor  d                                           ; $6c24: $aa
	sbc  c                                           ; $6c25: $99
	sbc  b                                           ; $6c26: $98
	sbc  b                                           ; $6c27: $98
	ld   [hl], a                                     ; $6c28: $77
	ld   [hl], a                                     ; $6c29: $77
	ld   h, [hl]                                     ; $6c2a: $66
	ld   h, [hl]                                     ; $6c2b: $66
	ld   h, a                                        ; $6c2c: $67
	ld   [hl], a                                     ; $6c2d: $77
	ld   a, b                                        ; $6c2e: $78
	adc  c                                           ; $6c2f: $89
	adc  b                                           ; $6c30: $88
	sbc  c                                           ; $6c31: $99
	sbc  c                                           ; $6c32: $99
	sbc  d                                           ; $6c33: $9a
	sbc  c                                           ; $6c34: $99
	sbc  c                                           ; $6c35: $99
	adc  b                                           ; $6c36: $88
	add  a                                           ; $6c37: $87
	ld   [hl], a                                     ; $6c38: $77
	halt                                             ; $6c39: $76
	ld   h, [hl]                                     ; $6c3a: $66
	ld   h, [hl]                                     ; $6c3b: $66
	ld   [hl], a                                     ; $6c3c: $77
	ld   [hl], a                                     ; $6c3d: $77
	adc  b                                           ; $6c3e: $88
	sbc  b                                           ; $6c3f: $98
	adc  c                                           ; $6c40: $89
	sbc  c                                           ; $6c41: $99
	xor  d                                           ; $6c42: $aa
	xor  d                                           ; $6c43: $aa
	sbc  c                                           ; $6c44: $99
	sbc  b                                           ; $6c45: $98
	adc  b                                           ; $6c46: $88
	ld   [hl], a                                     ; $6c47: $77
	halt                                             ; $6c48: $76
	ld   h, [hl]                                     ; $6c49: $66
	ld   h, [hl]                                     ; $6c4a: $66
	ld   [hl], a                                     ; $6c4b: $77
	ld   [hl], a                                     ; $6c4c: $77
	adc  b                                           ; $6c4d: $88
	adc  c                                           ; $6c4e: $89
	adc  c                                           ; $6c4f: $89
	sbc  c                                           ; $6c50: $99
	sbc  c                                           ; $6c51: $99
	xor  d                                           ; $6c52: $aa
	xor  c                                           ; $6c53: $a9
	sbc  c                                           ; $6c54: $99
	sbc  b                                           ; $6c55: $98
	add  a                                           ; $6c56: $87
	ld   [hl], a                                     ; $6c57: $77
	halt                                             ; $6c58: $76
	ld   h, [hl]                                     ; $6c59: $66
	ld   h, a                                        ; $6c5a: $67
	ld   [hl], a                                     ; $6c5b: $77
	ld   a, b                                        ; $6c5c: $78
	adc  c                                           ; $6c5d: $89
	adc  b                                           ; $6c5e: $88
	sbc  c                                           ; $6c5f: $99
	sbc  d                                           ; $6c60: $9a
	xor  d                                           ; $6c61: $aa
	xor  c                                           ; $6c62: $a9
	sbc  c                                           ; $6c63: $99
	adc  c                                           ; $6c64: $89
	add  a                                           ; $6c65: $87
	ld   [hl], a                                     ; $6c66: $77
	ld   h, [hl]                                     ; $6c67: $66
	ld   h, [hl]                                     ; $6c68: $66
	ld   h, a                                        ; $6c69: $67
	ld   [hl], a                                     ; $6c6a: $77
	ld   a, b                                        ; $6c6b: $78
	adc  c                                           ; $6c6c: $89
	adc  c                                           ; $6c6d: $89
	sbc  c                                           ; $6c6e: $99
	sbc  c                                           ; $6c6f: $99
	xor  d                                           ; $6c70: $aa
	xor  d                                           ; $6c71: $aa
	sbc  c                                           ; $6c72: $99
	adc  b                                           ; $6c73: $88
	add  a                                           ; $6c74: $87
	ld   [hl], a                                     ; $6c75: $77
	halt                                             ; $6c76: $76
	ld   h, [hl]                                     ; $6c77: $66
	ld   h, a                                        ; $6c78: $67
	ld   [hl], a                                     ; $6c79: $77
	ld   a, b                                        ; $6c7a: $78
	adc  c                                           ; $6c7b: $89
	adc  c                                           ; $6c7c: $89
	sbc  c                                           ; $6c7d: $99
	sbc  d                                           ; $6c7e: $9a
	xor  d                                           ; $6c7f: $aa
	xor  c                                           ; $6c80: $a9
	sbc  c                                           ; $6c81: $99
	sbc  b                                           ; $6c82: $98
	add  a                                           ; $6c83: $87
	ld   [hl], a                                     ; $6c84: $77
	ld   h, [hl]                                     ; $6c85: $66
	ld   h, [hl]                                     ; $6c86: $66
	ld   [hl], a                                     ; $6c87: $77
	ld   [hl], a                                     ; $6c88: $77
	adc  b                                           ; $6c89: $88
	sbc  b                                           ; $6c8a: $98
	adc  c                                           ; $6c8b: $89
	sbc  c                                           ; $6c8c: $99
	sbc  d                                           ; $6c8d: $9a
	xor  d                                           ; $6c8e: $aa
	sbc  c                                           ; $6c8f: $99
	sbc  b                                           ; $6c90: $98
	sbc  b                                           ; $6c91: $98
	ld   [hl], a                                     ; $6c92: $77
	halt                                             ; $6c93: $76
	ld   h, [hl]                                     ; $6c94: $66
	ld   h, [hl]                                     ; $6c95: $66
	ld   [hl], a                                     ; $6c96: $77
	ld   a, b                                        ; $6c97: $78
	adc  c                                           ; $6c98: $89
	sbc  b                                           ; $6c99: $98

Call_0ad_6c9a:
	sbc  c                                           ; $6c9a: $99
	sbc  d                                           ; $6c9b: $9a
	xor  d                                           ; $6c9c: $aa
	xor  d                                           ; $6c9d: $aa
	sbc  c                                           ; $6c9e: $99
	adc  c                                           ; $6c9f: $89
	add  a                                           ; $6ca0: $87
	ld   [hl], a                                     ; $6ca1: $77
	ld   h, [hl]                                     ; $6ca2: $66
	ld   h, [hl]                                     ; $6ca3: $66
	ld   h, a                                        ; $6ca4: $67
	ld   [hl], a                                     ; $6ca5: $77
	adc  b                                           ; $6ca6: $88
	adc  c                                           ; $6ca7: $89
	adc  c                                           ; $6ca8: $89
	sbc  c                                           ; $6ca9: $99
	sbc  d                                           ; $6caa: $9a
	xor  d                                           ; $6cab: $aa
	xor  c                                           ; $6cac: $a9
	sbc  b                                           ; $6cad: $98
	sbc  b                                           ; $6cae: $98
	ld   [hl], a                                     ; $6caf: $77
	halt                                             ; $6cb0: $76
	ld   h, [hl]                                     ; $6cb1: $66
	ld   h, [hl]                                     ; $6cb2: $66
	ld   [hl], a                                     ; $6cb3: $77
	ld   a, b                                        ; $6cb4: $78
	adc  b                                           ; $6cb5: $88
	sbc  b                                           ; $6cb6: $98
	sbc  c                                           ; $6cb7: $99
	sbc  d                                           ; $6cb8: $9a
	xor  d                                           ; $6cb9: $aa
	xor  d                                           ; $6cba: $aa
	sbc  c                                           ; $6cbb: $99
	adc  b                                           ; $6cbc: $88
	add  a                                           ; $6cbd: $87
	ld   [hl], a                                     ; $6cbe: $77
	ld   h, [hl]                                     ; $6cbf: $66
	ld   h, [hl]                                     ; $6cc0: $66
	ld   h, a                                        ; $6cc1: $67
	ld   [hl], a                                     ; $6cc2: $77
	adc  b                                           ; $6cc3: $88
	sbc  b                                           ; $6cc4: $98
	sbc  c                                           ; $6cc5: $99
	sbc  c                                           ; $6cc6: $99
	xor  c                                           ; $6cc7: $a9
	sbc  d                                           ; $6cc8: $9a
	sbc  b                                           ; $6cc9: $98
	adc  b                                           ; $6cca: $88
	ld   [hl], a                                     ; $6ccb: $77
	halt                                             ; $6ccc: $76
	ld   h, [hl]                                     ; $6ccd: $66
	ld   [hl], a                                     ; $6cce: $77
	ld   [hl], a                                     ; $6ccf: $77
	adc  b                                           ; $6cd0: $88
	adc  c                                           ; $6cd1: $89
	sbc  c                                           ; $6cd2: $99
	sbc  c                                           ; $6cd3: $99
	adc  b                                           ; $6cd4: $88
	sbc  c                                           ; $6cd5: $99
	sbc  d                                           ; $6cd6: $9a
	xor  c                                           ; $6cd7: $a9
	adc  b                                           ; $6cd8: $88
	ld   [hl], a                                     ; $6cd9: $77
	ld   h, [hl]                                     ; $6cda: $66
	ld   h, [hl]                                     ; $6cdb: $66
	ld   [hl], a                                     ; $6cdc: $77
	ld   a, b                                        ; $6cdd: $78
	sbc  c                                           ; $6cde: $99
	adc  b                                           ; $6cdf: $88
	sbc  c                                           ; $6ce0: $99
	sbc  c                                           ; $6ce1: $99
	adc  b                                           ; $6ce2: $88
	sbc  c                                           ; $6ce3: $99
	sbc  d                                           ; $6ce4: $9a
	sbc  c                                           ; $6ce5: $99
	sbc  b                                           ; $6ce6: $98
	halt                                             ; $6ce7: $76
	ld   h, [hl]                                     ; $6ce8: $66
	ld   h, [hl]                                     ; $6ce9: $66
	ld   [hl], a                                     ; $6cea: $77
	adc  c                                           ; $6ceb: $89
	sbc  c                                           ; $6cec: $99
	adc  c                                           ; $6ced: $89
	adc  b                                           ; $6cee: $88
	adc  b                                           ; $6cef: $88
	sbc  b                                           ; $6cf0: $98
	adc  c                                           ; $6cf1: $89
	xor  c                                           ; $6cf2: $a9
	xor  c                                           ; $6cf3: $a9
	sbc  b                                           ; $6cf4: $98
	halt                                             ; $6cf5: $76
	ld   d, l                                        ; $6cf6: $55
	ld   d, l                                        ; $6cf7: $55
	ld   h, a                                        ; $6cf8: $67
	adc  c                                           ; $6cf9: $89
	sbc  d                                           ; $6cfa: $9a
	adc  b                                           ; $6cfb: $88
	sbc  b                                           ; $6cfc: $98
	adc  b                                           ; $6cfd: $88
	sbc  b                                           ; $6cfe: $98
	adc  d                                           ; $6cff: $8a
	xor  c                                           ; $6d00: $a9
	xor  d                                           ; $6d01: $aa
	sbc  b                                           ; $6d02: $98
	ld   [hl], l                                     ; $6d03: $75
	ld   b, l                                        ; $6d04: $45
	ld   d, [hl]                                     ; $6d05: $56
	ld   a, b                                        ; $6d06: $78
	adc  b                                           ; $6d07: $88
	xor  c                                           ; $6d08: $a9
	adc  c                                           ; $6d09: $89
	adc  b                                           ; $6d0a: $88
	ld   a, b                                        ; $6d0b: $78
	sbc  b                                           ; $6d0c: $98
	adc  d                                           ; $6d0d: $8a
	sbc  d                                           ; $6d0e: $9a
	xor  d                                           ; $6d0f: $aa
	add  a                                           ; $6d10: $87
	ld   h, l                                        ; $6d11: $65
	ld   b, l                                        ; $6d12: $45
	ld   h, [hl]                                     ; $6d13: $66
	ld   a, b                                        ; $6d14: $78
	sbc  c                                           ; $6d15: $99
	xor  c                                           ; $6d16: $a9
	adc  b                                           ; $6d17: $88
	add  a                                           ; $6d18: $87
	ld   a, b                                        ; $6d19: $78
	sbc  b                                           ; $6d1a: $98
	sbc  c                                           ; $6d1b: $99
	sbc  d                                           ; $6d1c: $9a
	xor  c                                           ; $6d1d: $a9
	add  a                                           ; $6d1e: $87
	ld   d, h                                        ; $6d1f: $54
	ld   b, l                                        ; $6d20: $45
	ld   h, a                                        ; $6d21: $67
	adc  c                                           ; $6d22: $89
	sbc  d                                           ; $6d23: $9a
	xor  c                                           ; $6d24: $a9
	sbc  b                                           ; $6d25: $98
	add  a                                           ; $6d26: $87
	ld   a, c                                        ; $6d27: $79
	sbc  b                                           ; $6d28: $98
	xor  c                                           ; $6d29: $a9
	sbc  d                                           ; $6d2a: $9a
	xor  b                                           ; $6d2b: $a8
	ld   [hl], l                                     ; $6d2c: $75
	ld   b, e                                        ; $6d2d: $43
	ld   d, [hl]                                     ; $6d2e: $56
	ld   a, c                                        ; $6d2f: $79
	sbc  c                                           ; $6d30: $99
	xor  d                                           ; $6d31: $aa
	xor  c                                           ; $6d32: $a9
	sub  a                                           ; $6d33: $97
	ld   [hl], a                                     ; $6d34: $77
	adc  b                                           ; $6d35: $88
	adc  c                                           ; $6d36: $89
	sbc  c                                           ; $6d37: $99
	xor  c                                           ; $6d38: $a9
	add  a                                           ; $6d39: $87
	ld   h, h                                        ; $6d3a: $64
	dec  [hl]                                        ; $6d3b: $35
	ld   h, a                                        ; $6d3c: $67
	adc  d                                           ; $6d3d: $8a
	xor  d                                           ; $6d3e: $aa
	xor  d                                           ; $6d3f: $aa
	sbc  c                                           ; $6d40: $99
	ld   [hl], a                                     ; $6d41: $77
	ld   a, c                                        ; $6d42: $79
	adc  b                                           ; $6d43: $88
	xor  d                                           ; $6d44: $aa
	xor  c                                           ; $6d45: $a9
	sbc  b                                           ; $6d46: $98
	ld   [hl], l                                     ; $6d47: $75
	ld   b, e                                        ; $6d48: $43
	ld   d, a                                        ; $6d49: $57
	ld   a, c                                        ; $6d4a: $79
	sbc  d                                           ; $6d4b: $9a
	xor  d                                           ; $6d4c: $aa
	sbc  b                                           ; $6d4d: $98
	add  a                                           ; $6d4e: $87
	ld   [hl], a                                     ; $6d4f: $77
	adc  c                                           ; $6d50: $89
	sbc  d                                           ; $6d51: $9a
	sbc  d                                           ; $6d52: $9a
	xor  c                                           ; $6d53: $a9
	add  [hl]                                        ; $6d54: $86
	ld   b, e                                        ; $6d55: $43
	ld   b, [hl]                                     ; $6d56: $46
	ld   a, c                                        ; $6d57: $79
	xor  c                                           ; $6d58: $a9
	xor  c                                           ; $6d59: $a9
	sbc  c                                           ; $6d5a: $99
	adc  b                                           ; $6d5b: $88
	ld   [hl], a                                     ; $6d5c: $77
	adc  b                                           ; $6d5d: $88
	sbc  c                                           ; $6d5e: $99
	xor  c                                           ; $6d5f: $a9
	sbc  c                                           ; $6d60: $99
	add  a                                           ; $6d61: $87
	ld   d, h                                        ; $6d62: $54
	dec  [hl]                                        ; $6d63: $35
	ld   a, b                                        ; $6d64: $78
	sbc  c                                           ; $6d65: $99
	xor  c                                           ; $6d66: $a9
	sbc  c                                           ; $6d67: $99
	adc  b                                           ; $6d68: $88
	ld   [hl], a                                     ; $6d69: $77
	ld   a, b                                        ; $6d6a: $78
	sbc  c                                           ; $6d6b: $99
	sbc  d                                           ; $6d6c: $9a
	xor  c                                           ; $6d6d: $a9
	sub  a                                           ; $6d6e: $97
	ld   d, h                                        ; $6d6f: $54
	dec  [hl]                                        ; $6d70: $35
	ld   l, b                                        ; $6d71: $68
	sbc  d                                           ; $6d72: $9a
	xor  d                                           ; $6d73: $aa
	xor  c                                           ; $6d74: $a9
	adc  b                                           ; $6d75: $88
	ld   [hl], a                                     ; $6d76: $77
	ld   a, c                                        ; $6d77: $79
	adc  c                                           ; $6d78: $89
	sbc  c                                           ; $6d79: $99
	xor  c                                           ; $6d7a: $a9
	add  a                                           ; $6d7b: $87
	ld   d, e                                        ; $6d7c: $53
	ld   b, l                                        ; $6d7d: $45
	ld   a, c                                        ; $6d7e: $79
	xor  c                                           ; $6d7f: $a9
	xor  e                                           ; $6d80: $ab
	sbc  b                                           ; $6d81: $98
	sub  a                                           ; $6d82: $97
	ld   [hl], a                                     ; $6d83: $77
	adc  c                                           ; $6d84: $89
	adc  c                                           ; $6d85: $89
	sbc  c                                           ; $6d86: $99
	sbc  c                                           ; $6d87: $99
	add  [hl]                                        ; $6d88: $86
	ld   b, e                                        ; $6d89: $43
	ld   b, a                                        ; $6d8a: $47
	adc  c                                           ; $6d8b: $89
	xor  d                                           ; $6d8c: $aa
	xor  d                                           ; $6d8d: $aa
	xor  c                                           ; $6d8e: $a9
	add  a                                           ; $6d8f: $87
	ld   [hl], a                                     ; $6d90: $77
	adc  b                                           ; $6d91: $88
	sbc  b                                           ; $6d92: $98
	sbc  d                                           ; $6d93: $9a
	adc  b                                           ; $6d94: $88
	ld   [hl], l                                     ; $6d95: $75
	inc  [hl]                                        ; $6d96: $34
	ld   [hl], a                                     ; $6d97: $77
	adc  d                                           ; $6d98: $8a
	sbc  d                                           ; $6d99: $9a
	xor  d                                           ; $6d9a: $aa
	sbc  b                                           ; $6d9b: $98
	adc  b                                           ; $6d9c: $88
	ld   a, b                                        ; $6d9d: $78
	adc  b                                           ; $6d9e: $88
	sbc  c                                           ; $6d9f: $99
	adc  c                                           ; $6da0: $89
	add  [hl]                                        ; $6da1: $86
	ld   b, e                                        ; $6da2: $43
	ld   d, a                                        ; $6da3: $57
	adc  d                                           ; $6da4: $8a
	xor  d                                           ; $6da5: $aa
	xor  d                                           ; $6da6: $aa
	sbc  c                                           ; $6da7: $99
	adc  b                                           ; $6da8: $88
	add  a                                           ; $6da9: $87
	adc  b                                           ; $6daa: $88
	sbc  c                                           ; $6dab: $99
	sbc  b                                           ; $6dac: $98
	add  [hl]                                        ; $6dad: $86
	ld   d, h                                        ; $6dae: $54
	ld   b, a                                        ; $6daf: $47
	adc  c                                           ; $6db0: $89
	xor  e                                           ; $6db1: $ab
	xor  c                                           ; $6db2: $a9
	xor  d                                           ; $6db3: $aa
	adc  b                                           ; $6db4: $88
	add  a                                           ; $6db5: $87
	adc  c                                           ; $6db6: $89
	adc  b                                           ; $6db7: $88
	sbc  c                                           ; $6db8: $99
	halt                                             ; $6db9: $76
	ld   d, h                                        ; $6dba: $54
	ld   d, a                                        ; $6dbb: $57
	adc  c                                           ; $6dbc: $89
	cp   d                                           ; $6dbd: $ba
	xor  c                                           ; $6dbe: $a9
	sbc  c                                           ; $6dbf: $99
	ld   [hl], a                                     ; $6dc0: $77
	ld   [hl], a                                     ; $6dc1: $77
	ld   a, b                                        ; $6dc2: $78
	adc  c                                           ; $6dc3: $89
	adc  b                                           ; $6dc4: $88
	ld   h, l                                        ; $6dc5: $65
	ld   d, l                                        ; $6dc6: $55
	ld   a, b                                        ; $6dc7: $78
	adc  c                                           ; $6dc8: $89
	xor  d                                           ; $6dc9: $aa
	xor  e                                           ; $6dca: $ab
	xor  b                                           ; $6dcb: $a8
	add  a                                           ; $6dcc: $87
	ld   [hl], a                                     ; $6dcd: $77
	ld   a, b                                        ; $6dce: $78
	ld   [hl], a                                     ; $6dcf: $77
	halt                                             ; $6dd0: $76
	ld   h, l                                        ; $6dd1: $65
	ld   h, a                                        ; $6dd2: $67
	sbc  c                                           ; $6dd3: $99
	sbc  d                                           ; $6dd4: $9a
	xor  c                                           ; $6dd5: $a9
	xor  c                                           ; $6dd6: $a9
	sbc  c                                           ; $6dd7: $99
	adc  b                                           ; $6dd8: $88
	ld   [hl], a                                     ; $6dd9: $77
	ld   [hl], a                                     ; $6dda: $77
	halt                                             ; $6ddb: $76
	ld   d, l                                        ; $6ddc: $55
	ld   h, a                                        ; $6ddd: $67
	sbc  b                                           ; $6dde: $98
	adc  d                                           ; $6ddf: $8a
	cp   d                                           ; $6de0: $ba
	xor  d                                           ; $6de1: $aa
	sbc  b                                           ; $6de2: $98
	add  a                                           ; $6de3: $87
	ld   a, b                                        ; $6de4: $78
	ld   [hl], a                                     ; $6de5: $77
	ld   [hl], a                                     ; $6de6: $77
	ld   h, [hl]                                     ; $6de7: $66
	ld   d, l                                        ; $6de8: $55
	ld   a, b                                        ; $6de9: $78
	adc  c                                           ; $6dea: $89
	cp   d                                           ; $6deb: $ba
	sbc  e                                           ; $6dec: $9b
	sbc  c                                           ; $6ded: $99
	adc  b                                           ; $6dee: $88
	ld   a, b                                        ; $6def: $78
	add  a                                           ; $6df0: $87
	ld   [hl], a                                     ; $6df1: $77
	ld   h, [hl]                                     ; $6df2: $66
	ld   h, [hl]                                     ; $6df3: $66
	ld   a, b                                        ; $6df4: $78
	adc  b                                           ; $6df5: $88
	xor  e                                           ; $6df6: $ab
	xor  d                                           ; $6df7: $aa
	xor  c                                           ; $6df8: $a9
	sbc  b                                           ; $6df9: $98
	ld   a, b                                        ; $6dfa: $78
	add  a                                           ; $6dfb: $87
	ld   [hl], a                                     ; $6dfc: $77
	ld   h, [hl]                                     ; $6dfd: $66
	ld   h, [hl]                                     ; $6dfe: $66
	ld   l, b                                        ; $6dff: $68
	sbc  b                                           ; $6e00: $98
	xor  d                                           ; $6e01: $aa
	xor  c                                           ; $6e02: $a9
	cp   c                                           ; $6e03: $b9
	sbc  c                                           ; $6e04: $99
	ld   a, b                                        ; $6e05: $78
	add  a                                           ; $6e06: $87
	ld   [hl], a                                     ; $6e07: $77
	ld   h, l                                        ; $6e08: $65
	ld   h, [hl]                                     ; $6e09: $66
	ld   l, b                                        ; $6e0a: $68
	sbc  b                                           ; $6e0b: $98
	xor  d                                           ; $6e0c: $aa
	sbc  d                                           ; $6e0d: $9a
	sbc  c                                           ; $6e0e: $99
	adc  b                                           ; $6e0f: $88
	ld   [hl], a                                     ; $6e10: $77
	add  a                                           ; $6e11: $87
	ld   [hl], a                                     ; $6e12: $77
	halt                                             ; $6e13: $76
	ld   h, [hl]                                     ; $6e14: $66
	ld   h, a                                        ; $6e15: $67
	sbc  b                                           ; $6e16: $98
	sbc  e                                           ; $6e17: $9b
	sbc  c                                           ; $6e18: $99
	xor  c                                           ; $6e19: $a9
	adc  b                                           ; $6e1a: $88
	ld   [hl], a                                     ; $6e1b: $77
	ld   [hl], a                                     ; $6e1c: $77
	ld   [hl], a                                     ; $6e1d: $77
	ld   h, [hl]                                     ; $6e1e: $66
	ld   h, [hl]                                     ; $6e1f: $66
	ld   a, b                                        ; $6e20: $78
	sbc  c                                           ; $6e21: $99
	xor  d                                           ; $6e22: $aa
	sbc  e                                           ; $6e23: $9b
	sbc  c                                           ; $6e24: $99
	sub  a                                           ; $6e25: $97
	ld   a, b                                        ; $6e26: $78
	ld   [hl], a                                     ; $6e27: $77
	ld   [hl], a                                     ; $6e28: $77
	ld   d, l                                        ; $6e29: $55
	ld   h, [hl]                                     ; $6e2a: $66
	adc  c                                           ; $6e2b: $89
	adc  c                                           ; $6e2c: $89
	xor  e                                           ; $6e2d: $ab
	sbc  d                                           ; $6e2e: $9a
	sbc  b                                           ; $6e2f: $98
	add  a                                           ; $6e30: $87
	ld   [hl], a                                     ; $6e31: $77
	ld   [hl], a                                     ; $6e32: $77
	ld   [hl], a                                     ; $6e33: $77
	ld   h, l                                        ; $6e34: $65
	ld   h, l                                        ; $6e35: $65
	ld   a, c                                        ; $6e36: $79
	adc  b                                           ; $6e37: $88
	cp   e                                           ; $6e38: $bb
	xor  e                                           ; $6e39: $ab
	xor  c                                           ; $6e3a: $a9
	sub  a                                           ; $6e3b: $97
	ld   [hl], a                                     ; $6e3c: $77
	halt                                             ; $6e3d: $76
	ld   h, a                                        ; $6e3e: $67
	ld   d, [hl]                                     ; $6e3f: $56
	ld   [hl], a                                     ; $6e40: $77
	adc  c                                           ; $6e41: $89
	sbc  c                                           ; $6e42: $99
	cp   d                                           ; $6e43: $ba
	xor  e                                           ; $6e44: $ab
	adc  b                                           ; $6e45: $88
	add  a                                           ; $6e46: $87
	ld   a, b                                        ; $6e47: $78
	halt                                             ; $6e48: $76
	halt                                             ; $6e49: $76
	ld   b, [hl]                                     ; $6e4a: $46
	halt                                             ; $6e4b: $76
	sbc  c                                           ; $6e4c: $99
	sbc  e                                           ; $6e4d: $9b
	cp   d                                           ; $6e4e: $ba
	xor  d                                           ; $6e4f: $aa
	adc  b                                           ; $6e50: $88
	ld   [hl], a                                     ; $6e51: $77
	ld   [hl], a                                     ; $6e52: $77
	halt                                             ; $6e53: $76
	ld   h, l                                        ; $6e54: $65
	ld   d, [hl]                                     ; $6e55: $56
	ld   a, b                                        ; $6e56: $78
	sbc  c                                           ; $6e57: $99
	xor  e                                           ; $6e58: $ab
	cp   e                                           ; $6e59: $bb
	sbc  b                                           ; $6e5a: $98
	add  a                                           ; $6e5b: $87
	ld   [hl], a                                     ; $6e5c: $77
	ld   [hl], a                                     ; $6e5d: $77
	ld   [hl], a                                     ; $6e5e: $77
	ld   d, h                                        ; $6e5f: $54
	ld   d, [hl]                                     ; $6e60: $56
	adc  d                                           ; $6e61: $8a
	sbc  e                                           ; $6e62: $9b
	cp   d                                           ; $6e63: $ba
	cp   d                                           ; $6e64: $ba
	sbc  c                                           ; $6e65: $99
	ld   [hl], a                                     ; $6e66: $77
	halt                                             ; $6e67: $76
	halt                                             ; $6e68: $76
	ld   h, l                                        ; $6e69: $65
	ld   d, [hl]                                     ; $6e6a: $56
	ld   l, c                                        ; $6e6b: $69
	xor  c                                           ; $6e6c: $a9
	cp   d                                           ; $6e6d: $ba
	xor  e                                           ; $6e6e: $ab
	cp   c                                           ; $6e6f: $b9
	add  a                                           ; $6e70: $87
	ld   [hl], a                                     ; $6e71: $77
	ld   [hl], a                                     ; $6e72: $77
	halt                                             ; $6e73: $76
	ld   d, l                                        ; $6e74: $55
	ld   d, a                                        ; $6e75: $57
	adc  d                                           ; $6e76: $8a
	xor  c                                           ; $6e77: $a9
	jp   z, $99aa                                    ; $6e78: $ca $aa $99

	ld   [hl], a                                     ; $6e7b: $77
	ld   [hl], a                                     ; $6e7c: $77
	ld   h, [hl]                                     ; $6e7d: $66
	ld   h, h                                        ; $6e7e: $64
	ld   d, [hl]                                     ; $6e7f: $56
	ld   l, b                                        ; $6e80: $68
	xor  c                                           ; $6e81: $a9
	cp   e                                           ; $6e82: $bb
	sbc  e                                           ; $6e83: $9b
	sbc  c                                           ; $6e84: $99
	add  a                                           ; $6e85: $87
	ld   [hl], a                                     ; $6e86: $77
	ld   [hl], a                                     ; $6e87: $77
	halt                                             ; $6e88: $76
	inc  [hl]                                        ; $6e89: $34
	ld   h, [hl]                                     ; $6e8a: $66
	sbc  d                                           ; $6e8b: $9a
	xor  e                                           ; $6e8c: $ab
	jp   z, $97a9                                    ; $6e8d: $ca $a9 $97

	ld   [hl], a                                     ; $6e90: $77
	ld   [hl], a                                     ; $6e91: $77
	ld   h, [hl]                                     ; $6e92: $66
	ld   d, h                                        ; $6e93: $54
	ld   h, a                                        ; $6e94: $67
	adc  c                                           ; $6e95: $89
	xor  e                                           ; $6e96: $ab
	cp   e                                           ; $6e97: $bb
	cp   e                                           ; $6e98: $bb
	sbc  c                                           ; $6e99: $99
	ld   [hl], a                                     ; $6e9a: $77
	ld   [hl], a                                     ; $6e9b: $77
	ld   h, [hl]                                     ; $6e9c: $66
	ld   d, h                                        ; $6e9d: $54
	ld   d, [hl]                                     ; $6e9e: $56
	ld   a, c                                        ; $6e9f: $79
	sbc  d                                           ; $6ea0: $9a
	jp   z, $99bc                                    ; $6ea1: $ca $bc $99

	halt                                             ; $6ea4: $76
	ld   [hl], a                                     ; $6ea5: $77
	ld   [hl], a                                     ; $6ea6: $77
	ld   h, l                                        ; $6ea7: $65
	ld   b, [hl]                                     ; $6ea8: $46
	ld   a, b                                        ; $6ea9: $78
	sbc  e                                           ; $6eaa: $9b
	res  7, e                                        ; $6eab: $cb $bb
	xor  c                                           ; $6ead: $a9
	add  [hl]                                        ; $6eae: $86
	ld   h, a                                        ; $6eaf: $67
	ld   [hl], a                                     ; $6eb0: $77
	ld   [hl], l                                     ; $6eb1: $75
	dec  [hl]                                        ; $6eb2: $35
	ld   h, a                                        ; $6eb3: $67
	sbc  d                                           ; $6eb4: $9a
	cp   h                                           ; $6eb5: $bc
	call z, Call_0ad_76b9                            ; $6eb6: $cc $b9 $76
	ld   h, [hl]                                     ; $6eb9: $66
	ld   h, a                                        ; $6eba: $67
	ld   h, l                                        ; $6ebb: $65
	ld   b, l                                        ; $6ebc: $45
	ld   l, b                                        ; $6ebd: $68
	sbc  d                                           ; $6ebe: $9a
	res  7, e                                        ; $6ebf: $cb $bb
	xor  c                                           ; $6ec1: $a9
	add  [hl]                                        ; $6ec2: $86
	ld   h, [hl]                                     ; $6ec3: $66
	ld   h, a                                        ; $6ec4: $67
	ld   d, l                                        ; $6ec5: $55
	ld   b, l                                        ; $6ec6: $45
	ld   a, b                                        ; $6ec7: $78
	xor  h                                           ; $6ec8: $ac
	set  1, e                                        ; $6ec9: $cb $cb
	xor  c                                           ; $6ecb: $a9
	add  [hl]                                        ; $6ecc: $86
	ld   h, [hl]                                     ; $6ecd: $66
	ld   h, a                                        ; $6ece: $67
	ld   h, h                                        ; $6ecf: $64
	ld   b, [hl]                                     ; $6ed0: $46
	ld   a, b                                        ; $6ed1: $78
	cp   e                                           ; $6ed2: $bb
	cp   h                                           ; $6ed3: $bc
	res  3, c                                        ; $6ed4: $cb $99
	halt                                             ; $6ed6: $76
	halt                                             ; $6ed7: $76
	ld   h, [hl]                                     ; $6ed8: $66
	ld   d, e                                        ; $6ed9: $53
	ld   b, a                                        ; $6eda: $47
	ld   a, d                                        ; $6edb: $7a
	xor  h                                           ; $6edc: $ac
	set  1, e                                        ; $6edd: $cb $cb
	sbc  b                                           ; $6edf: $98
	ld   h, [hl]                                     ; $6ee0: $66
	ld   h, l                                        ; $6ee1: $65
	ld   h, [hl]                                     ; $6ee2: $66
	ld   b, e                                        ; $6ee3: $43
	ld   h, a                                        ; $6ee4: $67
	adc  e                                           ; $6ee5: $8b
	cp   e                                           ; $6ee6: $bb
	call z, $97ca                                    ; $6ee7: $cc $ca $97
	ld   h, [hl]                                     ; $6eea: $66
	ld   d, l                                        ; $6eeb: $55
	ld   d, h                                        ; $6eec: $54
	ld   b, l                                        ; $6eed: $45
	ld   a, c                                        ; $6eee: $79
	xor  h                                           ; $6eef: $ac
	call z, $a9bc                                    ; $6ef0: $cc $bc $a9
	halt                                             ; $6ef3: $76
	ld   h, l                                        ; $6ef4: $65
	ld   d, l                                        ; $6ef5: $55
	ld   d, h                                        ; $6ef6: $54
	ld   b, a                                        ; $6ef7: $47
	sbc  c                                           ; $6ef8: $99

jr_0ad_6ef9:
	xor  h                                           ; $6ef9: $ac
	cp   h                                           ; $6efa: $bc
	res  3, b                                        ; $6efb: $cb $98
	ld   h, [hl]                                     ; $6efd: $66
	ld   h, l                                        ; $6efe: $65
	ld   d, l                                        ; $6eff: $55
	ld   b, e                                        ; $6f00: $43
	ld   a, b                                        ; $6f01: $78
	sbc  e                                           ; $6f02: $9b
	set  3, e                                        ; $6f03: $cb $db
	cp   c                                           ; $6f05: $b9
	add  [hl]                                        ; $6f06: $86
	ld   h, [hl]                                     ; $6f07: $66
	ld   b, [hl]                                     ; $6f08: $46
	ld   d, e                                        ; $6f09: $53
	ld   b, [hl]                                     ; $6f0a: $46
	adc  c                                           ; $6f0b: $89
	call z, $babc                                    ; $6f0c: $cc $bc $ba
	xor  c                                           ; $6f0f: $a9
	ld   h, [hl]                                     ; $6f10: $66
	ld   d, h                                        ; $6f11: $54
	ld   d, l                                        ; $6f12: $55
	ld   b, h                                        ; $6f13: $44
	ld   a, b                                        ; $6f14: $78
	sbc  e                                           ; $6f15: $9b
	set  1, h                                        ; $6f16: $cb $cc
	xor  d                                           ; $6f18: $aa
	add  [hl]                                        ; $6f19: $86
	ld   h, [hl]                                     ; $6f1a: $66
	ld   d, l                                        ; $6f1b: $55
	ld   b, e                                        ; $6f1c: $43
	ld   b, a                                        ; $6f1d: $47
	adc  c                                           ; $6f1e: $89
	call z, $bacc                                    ; $6f1f: $cc $cc $ba
	sbc  c                                           ; $6f22: $99
	ld   h, [hl]                                     ; $6f23: $66
	ld   d, l                                        ; $6f24: $55
	ld   d, h                                        ; $6f25: $54
	inc  [hl]                                        ; $6f26: $34
	adc  b                                           ; $6f27: $88
	sbc  l                                           ; $6f28: $9d
	cp   e                                           ; $6f29: $bb
	res  5, d                                        ; $6f2a: $cb $aa
	add  l                                           ; $6f2c: $85
	ld   [hl], l                                     ; $6f2d: $75
	ld   b, l                                        ; $6f2e: $45
	ld   b, e                                        ; $6f2f: $43
	ld   l, b                                        ; $6f30: $68
	sbc  e                                           ; $6f31: $9b
	db   $db                                         ; $6f32: $db
	call z, $86a9                                    ; $6f33: $cc $a9 $86
	ld   h, a                                        ; $6f36: $67
	ld   d, l                                        ; $6f37: $55
	ld   d, d                                        ; $6f38: $52
	scf                                              ; $6f39: $37
	sbc  b                                           ; $6f3a: $98
	db   $dd                                         ; $6f3b: $dd
	call z, $a8cb                                    ; $6f3c: $cc $cb $a8
	ld   h, [hl]                                     ; $6f3f: $66
	ld   d, h                                        ; $6f40: $54
	ld   d, h                                        ; $6f41: $54
	inc  [hl]                                        ; $6f42: $34
	adc  c                                           ; $6f43: $89
	cp   [hl]                                        ; $6f44: $be
	cp   h                                           ; $6f45: $bc
	jp   z, Jump_0ad_7599                            ; $6f46: $ca $99 $75

	ld   h, l                                        ; $6f49: $65
	ld   d, l                                        ; $6f4a: $55
	inc  sp                                          ; $6f4b: $33
	ld   a, b                                        ; $6f4c: $78
	adc  h                                           ; $6f4d: $8c
	set  3, e                                        ; $6f4e: $cb $db
	cp   c                                           ; $6f50: $b9
	add  l                                           ; $6f51: $85
	ld   d, l                                        ; $6f52: $55
	ld   b, l                                        ; $6f53: $45
	ld   b, e                                        ; $6f54: $43
	ld   e, c                                        ; $6f55: $59
	sbc  e                                           ; $6f56: $9b
	call c, $a9cc                                    ; $6f57: $dc $cc $a9
	add  a                                           ; $6f5a: $87
	ld   d, [hl]                                     ; $6f5b: $56
	ld   d, h                                        ; $6f5c: $54
	ld   b, e                                        ; $6f5d: $43
	jr   c, jr_0ad_6ef9                              ; $6f5e: $38 $99

	db   $dd                                         ; $6f60: $dd
	call z, $88ba                                    ; $6f61: $cc $ba $88
	ld   d, l                                        ; $6f64: $55
	ld   d, h                                        ; $6f65: $54
	ld   b, e                                        ; $6f66: $43
	daa                                              ; $6f67: $27
	xor  c                                           ; $6f68: $a9
	db   $ed                                         ; $6f69: $ed
	call $98b9                                       ; $6f6a: $cd $b9 $98
	ld   d, l                                        ; $6f6d: $55
	ld   d, e                                        ; $6f6e: $53
	ld   b, h                                        ; $6f6f: $44
	ld   [hl], $b9                                   ; $6f70: $36 $b9
	db   $dd                                         ; $6f72: $dd

jr_0ad_6f73:
	cp   h                                           ; $6f73: $bc
	jp   z, $5598                                    ; $6f74: $ca $98 $55

	ld   d, e                                        ; $6f77: $53
	inc  sp                                          ; $6f78: $33
	ld   [hl], $a9                                   ; $6f79: $36 $a9
	rst  JumpTable                                         ; $6f7b: $df
	call $88c9                                       ; $6f7c: $cd $c9 $88
	ld   h, l                                        ; $6f7f: $65
	ld   d, e                                        ; $6f80: $53
	inc  sp                                          ; $6f81: $33
	daa                                              ; $6f82: $27
	cp   d                                           ; $6f83: $ba
	db   $dd                                         ; $6f84: $dd
	call z, $88b9                                    ; $6f85: $cc $b9 $88
	ld   d, l                                        ; $6f88: $55
	ld   b, e                                        ; $6f89: $43
	ld   [hl-], a                                    ; $6f8a: $32
	daa                                              ; $6f8b: $27
	xor  c                                           ; $6f8c: $a9
	xor  $bd                                         ; $6f8d: $ee $bd
	ret                                              ; $6f8f: $c9


	adc  b                                           ; $6f90: $88
	ld   d, l                                        ; $6f91: $55
	ld   b, d                                        ; $6f92: $42
	ld   [hl-], a                                    ; $6f93: $32
	add  hl, sp                                      ; $6f94: $39
	xor  d                                           ; $6f95: $aa
	cp   $cd                                         ; $6f96: $fe $cd
	xor  d                                           ; $6f98: $aa
	sub  a                                           ; $6f99: $97
	ld   d, l                                        ; $6f9a: $55
	ld   [hl-], a                                    ; $6f9b: $32
	ld   [hl+], a                                    ; $6f9c: $22
	ld   e, d                                        ; $6f9d: $5a
	sbc  h                                           ; $6f9e: $9c
	db   $fc                                         ; $6f9f: $fc
	db   $dd                                         ; $6fa0: $dd
	xor  c                                           ; $6fa1: $a9
	sub  [hl]                                        ; $6fa2: $96
	ld   d, l                                        ; $6fa3: $55
	ld   [hl+], a                                    ; $6fa4: $22
	ld   [hl+], a                                    ; $6fa5: $22
	ld   a, e                                        ; $6fa6: $7b
	xor  [hl]                                        ; $6fa7: $ae
	db   $eb                                         ; $6fa8: $eb
	db   $db                                         ; $6fa9: $db
	xor  c                                           ; $6faa: $a9
	add  l                                           ; $6fab: $85
	ld   d, h                                        ; $6fac: $54
	ld   [hl+], a                                    ; $6fad: $22
	inc  h                                           ; $6fae: $24
	sbc  d                                           ; $6faf: $9a
	cp   a                                           ; $6fb0: $bf
	call z, $98db                                    ; $6fb1: $cc $db $98
	ld   [hl], h                                     ; $6fb4: $74
	ld   d, d                                        ; $6fb5: $52
	ld   [hl+], a                                    ; $6fb6: $22
	jr   z, jr_0ad_6f73                              ; $6fb7: $28 $ba

	xor  $be                                         ; $6fb9: $ee $be
	cp   d                                           ; $6fbb: $ba
	sub  a                                           ; $6fbc: $97
	ld   h, l                                        ; $6fbd: $65
	ld   sp, $5a21                                   ; $6fbe: $31 $21 $5a
	sbc  h                                           ; $6fc1: $9c
	ei                                               ; $6fc2: $fb
	db   $dd                                         ; $6fc3: $dd
	xor  c                                           ; $6fc4: $a9
	add  [hl]                                        ; $6fc5: $86
	ld   d, h                                        ; $6fc6: $54
	ld   [hl+], a                                    ; $6fc7: $22
	inc  hl                                          ; $6fc8: $23
	sbc  e                                           ; $6fc9: $9b
	cp   a                                           ; $6fca: $bf
	call z, $a9da                                    ; $6fcb: $cc $da $a9
	ld   [hl], l                                     ; $6fce: $75
	ld   b, d                                        ; $6fcf: $42
	ld   [de], a                                     ; $6fd0: $12
	jr   c, @-$54                                    ; $6fd1: $38 $aa

	db   $fd                                         ; $6fd3: $fd
	adc  $aa                                         ; $6fd4: $ce $aa
	sub  a                                           ; $6fd6: $97
	ld   d, h                                        ; $6fd7: $54
	ld   hl, $7b22                                   ; $6fd8: $21 $22 $7b
	xor  [hl]                                        ; $6fdb: $ae
	db   $db                                         ; $6fdc: $db
	db   $eb                                         ; $6fdd: $eb
	sbc  c                                           ; $6fde: $99
	ld   [hl], l                                     ; $6fdf: $75
	ld   b, e                                        ; $6fe0: $43
	ld   [de], a                                     ; $6fe1: $12
	scf                                              ; $6fe2: $37
	cp   d                                           ; $6fe3: $ba
	db   $dd                                         ; $6fe4: $dd
	cp   [hl]                                        ; $6fe5: $be
	xor  c                                           ; $6fe6: $a9
	and  a                                           ; $6fe7: $a7
	ld   d, h                                        ; $6fe8: $54
	ld   sp, $7b23                                   ; $6fe9: $31 $23 $7b
	xor  [hl]                                        ; $6fec: $ae
	jp   c, $99db                                    ; $6fed: $da $db $99

	ld   [hl], l                                     ; $6ff0: $75
	ld   b, e                                        ; $6ff1: $43
	ld   de, $aa38                                   ; $6ff2: $11 $38 $aa
	db   $fd                                         ; $6ff5: $fd
	cp   l                                           ; $6ff6: $bd
	xor  d                                           ; $6ff7: $aa
	sub  [hl]                                        ; $6ff8: $96
	ld   d, h                                        ; $6ff9: $54
	ld   hl, $9b24                                   ; $6ffa: $21 $24 $9b
	cp   a                                           ; $6ffd: $bf
	cp   h                                           ; $6ffe: $bc
	ld   [$66a9], a                                  ; $6fff: $ea $a9 $66
	ld   b, d                                        ; $7002: $42
	ld   [de], a                                     ; $7003: $12
	ld   l, d                                        ; $7004: $6a
	xor  h                                           ; $7005: $ac
	db   $db                                         ; $7006: $db
	call c, $969a                                    ; $7007: $dc $9a $96
	ld   d, h                                        ; $700a: $54
	ld   de, $aa38                                   ; $700b: $11 $38 $aa
	db   $ec                                         ; $700e: $ec
	xor  l                                           ; $700f: $ad
	xor  c                                           ; $7010: $a9
	and  a                                           ; $7011: $a7
	ld   h, l                                        ; $7012: $65
	ld   hl, $aa24                                   ; $7013: $21 $24 $aa
	adc  $ab                                         ; $7016: $ce $ab
	ret  z                                           ; $7018: $c8

	sbc  b                                           ; $7019: $98
	ld   h, l                                        ; $701a: $65
	ld   b, d                                        ; $701b: $42
	inc  de                                          ; $701c: $13
	ld   a, d                                        ; $701d: $7a
	xor  [hl]                                        ; $701e: $ae
	jp   z, $9acb                                    ; $701f: $ca $cb $9a

	ld   [hl], l                                     ; $7022: $75
	ld   d, e                                        ; $7023: $53
	ld   de, $ac5a                                   ; $7024: $11 $5a $ac
	ld   sp, hl                                      ; $7027: $f9
	call $9589                                       ; $7028: $cd $89 $95
	ld   d, h                                        ; $702b: $54
	ld   de, $ab48                                   ; $702c: $11 $48 $ab
	db   $ec                                         ; $702f: $ec
	cp   l                                           ; $7030: $bd
	xor  b                                           ; $7031: $a8
	sub  [hl]                                        ; $7032: $96
	ld   d, l                                        ; $7033: $55
	ld   hl, $a936                                   ; $7034: $21 $36 $a9
	adc  $9c                                         ; $7037: $ce $9c
	ret  z                                           ; $7039: $c8

	xor  b                                           ; $703a: $a8
	ld   d, l                                        ; $703b: $55
	ld   b, c                                        ; $703c: $41
	dec  d                                           ; $703d: $15
	xor  c                                           ; $703e: $a9
	cp   a                                           ; $703f: $bf
	sbc  e                                           ; $7040: $9b
	ret                                              ; $7041: $c9


	xor  c                                           ; $7042: $a9
	ld   d, l                                        ; $7043: $55
	ld   d, d                                        ; $7044: $52
	inc  d                                           ; $7045: $14
	xor  c                                           ; $7046: $a9
	xor  a                                           ; $7047: $af
	cp   d                                           ; $7048: $ba
	reti                                             ; $7049: $d9


	sbc  d                                           ; $704a: $9a
	ld   h, l                                        ; $704b: $65
	ld   d, d                                        ; $704c: $52
	inc  de                                          ; $704d: $13
	adc  c                                           ; $704e: $89
	sbc  a                                           ; $704f: $9f
	ret                                              ; $7050: $c9


	ld   [$659a], a                                  ; $7051: $ea $9a $65
	ld   h, e                                        ; $7054: $63
	inc  de                                          ; $7055: $13
	adc  d                                           ; $7056: $8a
	adc  a                                           ; $7057: $8f
	ret                                              ; $7058: $c9


	jp   c, Jump_0ad_748a                            ; $7059: $da $8a $74

	ld   h, h                                        ; $705c: $64
	inc  de                                          ; $705d: $13
	ld   a, c                                        ; $705e: $79
	adc  [hl]                                        ; $705f: $8e
	ret  z                                           ; $7060: $c8

	jp   c, Jump_0ad_748a                            ; $7061: $da $8a $74

	ld   h, h                                        ; $7064: $64
	inc  de                                          ; $7065: $13
	ld   a, d                                        ; $7066: $7a
	ld   a, l                                        ; $7067: $7d
	add  sp, -$15                                    ; $7068: $e8 $eb
	ld   a, d                                        ; $706a: $7a
	ld   [hl], h                                     ; $706b: $74
	ld   h, l                                        ; $706c: $65
	inc  hl                                          ; $706d: $23
	ld   a, d                                        ; $706e: $7a
	ld   a, l                                        ; $706f: $7d
	rst  $10                                         ; $7070: $d7
	ld   [$848a], a                                  ; $7071: $ea $8a $84
	ld   h, l                                        ; $7074: $65
	inc  hl                                          ; $7075: $23
	ld   a, e                                        ; $7076: $7b
	ld   a, h                                        ; $7077: $7c
	rst  $10                                         ; $7078: $d7
	db   $db                                         ; $7079: $db
	ld   a, d                                        ; $707a: $7a
	add  l                                           ; $707b: $85
	ld   d, [hl]                                     ; $707c: $56
	inc  hl                                          ; $707d: $23
	ld   a, e                                        ; $707e: $7b
	ld   a, h                                        ; $707f: $7c
	rst  $20                                         ; $7080: $e7
	call c, $857a                                    ; $7081: $dc $7a $85
	ld   d, [hl]                                     ; $7084: $56
	inc  hl                                          ; $7085: $23
	ld   l, d                                        ; $7086: $6a
	ld   a, e                                        ; $7087: $7b
	rst  $30                                         ; $7088: $f7
	bit  7, c                                        ; $7089: $cb $79
	add  l                                           ; $708b: $85
	ld   d, [hl]                                     ; $708c: $56
	inc  sp                                          ; $708d: $33
	ld   l, e                                        ; $708e: $6b
	ld   a, e                                        ; $708f: $7b
	rst  $20                                         ; $7090: $e7
	call z, $957a                                    ; $7091: $cc $7a $95
	ld   d, a                                        ; $7094: $57
	ld   b, h                                        ; $7095: $44
	ld   c, c                                        ; $7096: $49
	sbc  b                                           ; $7097: $98
	ld   [$989d], a                                  ; $7098: $ea $9d $98
	and  a                                           ; $709b: $a7
	ld   d, [hl]                                     ; $709c: $56
	ld   d, h                                        ; $709d: $54
	ld   d, e                                        ; $709e: $53
	sbc  e                                           ; $709f: $9b
	ld   a, [hl]                                     ; $70a0: $7e
	cp   b                                           ; $70a1: $b8
	or   a                                           ; $70a2: $b7
	sbc  c                                           ; $70a3: $99
	sbc  b                                           ; $70a4: $98
	adc  b                                           ; $70a5: $88
	ld   d, l                                        ; $70a6: $55
	ld   b, c                                        ; $70a7: $41
	adc  l                                           ; $70a8: $8d
	ld   l, [hl]                                     ; $70a9: $6e
	rst  ToBoot                                         ; $70aa: $c7
	or   a                                           ; $70ab: $b7
	halt                                             ; $70ac: $76
	sbc  b                                           ; $70ad: $98
	sbc  h                                           ; $70ae: $9c
	ld   h, a                                        ; $70af: $67
	ld   h, e                                        ; $70b0: $63
	ld   h, $b8                                      ; $70b1: $26 $b8
	cp   a                                           ; $70b3: $bf
	ld   a, c                                        ; $70b4: $79
	sub  [hl]                                        ; $70b5: $96
	adc  c                                           ; $70b6: $89
	sbc  b                                           ; $70b7: $98
	sbc  b                                           ; $70b8: $98
	ld   d, [hl]                                     ; $70b9: $56
	inc  sp                                          ; $70ba: $33
	cp   b                                           ; $70bb: $b8
	adc  [hl]                                        ; $70bc: $8e

jr_0ad_70bd:
	adc  c                                           ; $70bd: $89
	and  a                                           ; $70be: $a7
	adc  b                                           ; $70bf: $88
	and  a                                           ; $70c0: $a7
	adc  b                                           ; $70c1: $88
	ld   h, l                                        ; $70c2: $65
	ld   [hl-], a                                    ; $70c3: $32
	xor  d                                           ; $70c4: $aa
	ld   l, a                                        ; $70c5: $6f
	and  a                                           ; $70c6: $a7
	or   a                                           ; $70c7: $b7
	ld   [hl], a                                     ; $70c8: $77
	xor  b                                           ; $70c9: $a8
	xor  c                                           ; $70ca: $a9
	ld   h, [hl]                                     ; $70cb: $66
	ld   b, d                                        ; $70cc: $42
	ld   c, l                                        ; $70cd: $4d
	sbc  c                                           ; $70ce: $99
	ld   hl, sp-$77                                  ; $70cf: $f8 $89
	halt                                             ; $70d1: $76
	sbc  d                                           ; $70d2: $9a
	adc  e                                           ; $70d3: $8b
	add  [hl]                                        ; $70d4: $86
	ld   h, h                                        ; $70d5: $64
	daa                                              ; $70d6: $27
	rst  ToBoot                                         ; $70d7: $c7
	call $8679                                       ; $70d8: $cd $79 $86
	ld   a, c                                        ; $70db: $79
	sbc  b                                           ; $70dc: $98
	or   a                                           ; $70dd: $b7
	ld   h, [hl]                                     ; $70de: $66
	inc  sp                                          ; $70df: $33
	xor  d                                           ; $70e0: $aa
	ld   l, [hl]                                     ; $70e1: $6e
	or   a                                           ; $70e2: $b7
	and  a                                           ; $70e3: $a7
	ld   h, a                                        ; $70e4: $67
	sub  a                                           ; $70e5: $97
	xor  d                                           ; $70e6: $aa
	ld   h, a                                        ; $70e7: $67
	ld   d, d                                        ; $70e8: $52
	ld   c, h                                        ; $70e9: $4c
	adc  c                                           ; $70ea: $89
	add  sp, $7a                                     ; $70eb: $e8 $7a
	halt                                             ; $70ed: $76
	sbc  c                                           ; $70ee: $99
	ld   a, e                                        ; $70ef: $7b
	sub  [hl]                                        ; $70f0: $96
	ld   [hl], h                                     ; $70f1: $74
	ld   d, $b7                                      ; $70f2: $16 $b7
	xor  [hl]                                        ; $70f4: $ae
	ld   a, b                                        ; $70f5: $78
	and  [hl]                                        ; $70f6: $a6
	ld   l, d                                        ; $70f7: $6a
	add  a                                           ; $70f8: $87
	cp   b                                           ; $70f9: $b8
	ld   d, a                                        ; $70fa: $57
	ld   b, c                                        ; $70fb: $41
	ld   a, e                                        ; $70fc: $7b
	ld   l, e                                        ; $70fd: $6b
	and  $89                                         ; $70fe: $e6 $89
	ld   h, a                                        ; $7100: $67
	xor  b                                           ; $7101: $a8
	ld   a, e                                        ; $7102: $7b
	sub  [hl]                                        ; $7103: $96
	ld   [hl], h                                     ; $7104: $74
	jr   jr_0ad_70bd                                 ; $7105: $18 $b6

	adc  $69                                         ; $7107: $ce $69
	and  [hl]                                        ; $7109: $a6
	ld   a, c                                        ; $710a: $79
	add  a                                           ; $710b: $87
	ret                                              ; $710c: $c9


	ld   h, a                                        ; $710d: $67
	ld   b, d                                        ; $710e: $42
	ld   a, e                                        ; $710f: $7b
	ld   l, e                                        ; $7110: $6b
	sub  $9a                                         ; $7111: $d6 $9a
	ld   h, a                                        ; $7113: $67
	sbc  b                                           ; $7114: $98
	ld   a, e                                        ; $7115: $7b
	add  a                                           ; $7116: $87
	add  l                                           ; $7117: $85
	inc  [hl]                                        ; $7118: $34
	xor  b                                           ; $7119: $a8
	ld   a, [hl]                                     ; $711a: $7e
	sub  a                                           ; $711b: $97
	and  [hl]                                        ; $711c: $a6
	ld   [hl], a                                     ; $711d: $77
	adc  b                                           ; $711e: $88
	adc  e                                           ; $711f: $8b
	ld   h, a                                        ; $7120: $67
	ld   h, e                                        ; $7121: $63
	ld   l, h                                        ; $7122: $6c
	ld   l, c                                        ; $7123: $69
	rst  $10                                         ; $7124: $d7
	sbc  b                                           ; $7125: $98
	sub  a                                           ; $7126: $97
	ld   a, c                                        ; $7127: $79
	ld   a, d                                        ; $7128: $7a
	sbc  b                                           ; $7129: $98
	ld   [hl], l                                     ; $712a: $75
	scf                                              ; $712b: $37
	or   l                                           ; $712c: $b5
	cp   h                                           ; $712d: $bc
	ld   l, c                                        ; $712e: $69
	sbc  b                                           ; $712f: $98
	ld   a, b                                        ; $7130: $78
	add  [hl]                                        ; $7131: $86
	cp   c                                           ; $7132: $b9
	ld   [hl], a                                     ; $7133: $77
	ld   b, e                                        ; $7134: $43
	sbc  d                                           ; $7135: $9a
	ld   l, h                                        ; $7136: $6c
	and  [hl]                                        ; $7137: $a6
	xor  b                                           ; $7138: $a8
	ld   [hl], a                                     ; $7139: $77
	and  a                                           ; $713a: $a7
	ld   a, d                                        ; $713b: $7a
	ld   [hl], a                                     ; $713c: $77
	ld   h, e                                        ; $713d: $63
	ld   c, e                                        ; $713e: $4b
	add  a                                           ; $713f: $87
	add  sp, $7a                                     ; $7140: $e8 $7a
	add  [hl]                                        ; $7142: $86
	adc  d                                           ; $7143: $8a
	ld   l, d                                        ; $7144: $6a
	and  [hl]                                        ; $7145: $a6
	ld   [hl], l                                     ; $7146: $75
	daa                                              ; $7147: $27
	or   l                                           ; $7148: $b5
	call $976a                                       ; $7149: $cd $6a $97
	ld   a, b                                        ; $714c: $78
	add  a                                           ; $714d: $87
	xor  b                                           ; $714e: $a8
	ld   h, [hl]                                     ; $714f: $66
	ld   [hl], $c6                                   ; $7150: $36 $c6
	xor  l                                           ; $7152: $ad
	ld   l, c                                        ; $7153: $69
	sbc  b                                           ; $7154: $98
	ld   a, b                                        ; $7155: $78
	and  [hl]                                        ; $7156: $a6
	xor  b                                           ; $7157: $a8
	ld   h, [hl]                                     ; $7158: $66
	ld   b, a                                        ; $7159: $47
	or   [hl]                                        ; $715a: $b6
	call z, Call_0ad_775a                            ; $715b: $cc $5a $77
	ld   a, b                                        ; $715e: $78
	sub  a                                           ; $715f: $97
	xor  b                                           ; $7160: $a8
	ld   h, l                                        ; $7161: $65
	scf                                              ; $7162: $37
	or   [hl]                                        ; $7163: $b6
	db   $db                                         ; $7164: $db
	ld   l, d                                        ; $7165: $6a
	ld   [hl], a                                     ; $7166: $77
	ld   a, b                                        ; $7167: $78
	add  a                                           ; $7168: $87
	or   a                                           ; $7169: $b7
	ld   h, l                                        ; $716a: $65
	ld   c, c                                        ; $716b: $49
	add  [hl]                                        ; $716c: $86
	ld   hl, sp+$7b                                  ; $716d: $f8 $7b
	ld   h, a                                        ; $716f: $67
	ld   a, d                                        ; $7170: $7a
	ld   a, c                                        ; $7171: $79
	or   [hl]                                        ; $7172: $b6
	ld   [hl], l                                     ; $7173: $75
	ld   a, [hl-]                                    ; $7174: $3a
	sub  [hl]                                        ; $7175: $96
	jp   hl                                          ; $7176: $e9


	ld   a, d                                        ; $7177: $7a
	ld   [hl], a                                     ; $7178: $77
	ld   l, d                                        ; $7179: $6a
	ld   a, b                                        ; $717a: $78
	and  a                                           ; $717b: $a7
	ld   h, l                                        ; $717c: $65
	ld   e, d                                        ; $717d: $5a
	ld   a, c                                        ; $717e: $79
	and  $99                                         ; $717f: $e6 $99
	ld   a, b                                        ; $7181: $78
	ld   a, d                                        ; $7182: $7a
	ld   a, c                                        ; $7183: $79
	and  [hl]                                        ; $7184: $a6
	ld   h, h                                        ; $7185: $64
	ld   a, d                                        ; $7186: $7a
	ld   l, h                                        ; $7187: $6c
	push bc                                          ; $7188: $c5
	xor  b                                           ; $7189: $a8
	ld   [hl], a                                     ; $718a: $77
	adc  c                                           ; $718b: $89
	ld   e, d                                        ; $718c: $5a
	sub  l                                           ; $718d: $95
	ld   [hl], l                                     ; $718e: $75
	adc  c                                           ; $718f: $89
	ld   l, h                                        ; $7190: $6c
	sub  [hl]                                        ; $7191: $96
	and  a                                           ; $7192: $a7
	add  a                                           ; $7193: $87
	sbc  c                                           ; $7194: $99
	ld   l, d                                        ; $7195: $6a
	halt                                             ; $7196: $76
	ld   d, l                                        ; $7197: $55
	sub  a                                           ; $7198: $97
	adc  l                                           ; $7199: $8d
	ld   l, c                                        ; $719a: $69
	sub  a                                           ; $719b: $97
	sub  a                                           ; $719c: $97
	and  a                                           ; $719d: $a7
	adc  d                                           ; $719e: $8a
	ld   h, [hl]                                     ; $719f: $66
	ld   d, a                                        ; $71a0: $57
	and  [hl]                                        ; $71a1: $a6
	bit  5, c                                        ; $71a2: $cb $69
	ld   a, b                                        ; $71a4: $78
	ld   a, b                                        ; $71a5: $78
	and  [hl]                                        ; $71a6: $a6
	xor  c                                           ; $71a7: $a9
	ld   d, [hl]                                     ; $71a8: $56
	ld   e, c                                        ; $71a9: $59
	adc  b                                           ; $71aa: $88
	rst  $10                                         ; $71ab: $d7
	ld   a, d                                        ; $71ac: $7a
	ld   a, b                                        ; $71ad: $78
	ld   a, d                                        ; $71ae: $7a
	add  a                                           ; $71af: $87
	and  [hl]                                        ; $71b0: $a6
	ld   d, l                                        ; $71b1: $55
	ld   a, c                                        ; $71b2: $79
	ld   a, e                                        ; $71b3: $7b
	or   [hl]                                        ; $71b4: $b6
	sub  a                                           ; $71b5: $97
	ld   a, c                                        ; $71b6: $79
	ld   a, d                                        ; $71b7: $7a
	ld   a, c                                        ; $71b8: $79
	sub  l                                           ; $71b9: $95
	ld   d, [hl]                                     ; $71ba: $56
	sbc  b                                           ; $71bb: $98
	adc  l                                           ; $71bc: $8d
	add  a                                           ; $71bd: $87
	sub  a                                           ; $71be: $97
	add  a                                           ; $71bf: $87
	sbc  c                                           ; $71c0: $99
	ld   a, c                                        ; $71c1: $79
	ld   [hl], l                                     ; $71c2: $75
	ld   d, a                                        ; $71c3: $57
	sub  a                                           ; $71c4: $97
	cp   d                                           ; $71c5: $ba
	ld   l, d                                        ; $71c6: $6a
	ld   a, b                                        ; $71c7: $78
	add  a                                           ; $71c8: $87
	and  a                                           ; $71c9: $a7
	adc  b                                           ; $71ca: $88
	ld   d, l                                        ; $71cb: $55
	ld   a, c                                        ; $71cc: $79
	ld   a, d                                        ; $71cd: $7a
	or   a                                           ; $71ce: $b7
	adc  b                                           ; $71cf: $88
	ld   a, c                                        ; $71d0: $79
	ld   a, d                                        ; $71d1: $7a
	add  a                                           ; $71d2: $87
	sub  [hl]                                        ; $71d3: $96
	ld   d, a                                        ; $71d4: $57
	add  a                                           ; $71d5: $87
	adc  e                                           ; $71d6: $8b
	adc  b                                           ; $71d7: $88
	add  a                                           ; $71d8: $87
	sub  a                                           ; $71d9: $97
	sbc  b                                           ; $71da: $98
	ld   a, c                                        ; $71db: $79
	ld   h, l                                        ; $71dc: $65
	ld   l, b                                        ; $71dd: $68
	ld   a, b                                        ; $71de: $78
	cp   b                                           ; $71df: $b8
	ld   a, c                                        ; $71e0: $79
	ld   a, b                                        ; $71e1: $78
	ld   a, c                                        ; $71e2: $79
	sub  a                                           ; $71e3: $97
	sub  [hl]                                        ; $71e4: $96
	ld   d, a                                        ; $71e5: $57
	adc  b                                           ; $71e6: $88
	sbc  e                                           ; $71e7: $9b
	add  a                                           ; $71e8: $87
	sub  a                                           ; $71e9: $97
	sbc  b                                           ; $71ea: $98
	adc  c                                           ; $71eb: $89
	ld   a, c                                        ; $71ec: $79
	ld   h, l                                        ; $71ed: $65
	ld   a, c                                        ; $71ee: $79
	ld   a, c                                        ; $71ef: $79
	and  a                                           ; $71f0: $a7
	adc  b                                           ; $71f1: $88
	ld   a, c                                        ; $71f2: $79
	adc  c                                           ; $71f3: $89
	add  a                                           ; $71f4: $87
	add  l                                           ; $71f5: $85
	ld   l, c                                        ; $71f6: $69
	sbc  b                                           ; $71f7: $98
	xor  d                                           ; $71f8: $aa
	ld   a, c                                        ; $71f9: $79
	add  a                                           ; $71fa: $87
	adc  b                                           ; $71fb: $88
	sub  a                                           ; $71fc: $97
	add  [hl]                                        ; $71fd: $86
	ld   d, a                                        ; $71fe: $57
	sub  a                                           ; $71ff: $97
	sbc  e                                           ; $7200: $9b
	ld   a, b                                        ; $7201: $78
	sub  a                                           ; $7202: $97
	adc  b                                           ; $7203: $88
	sbc  b                                           ; $7204: $98
	ld   [hl], a                                     ; $7205: $77
	ld   d, a                                        ; $7206: $57
	sub  a                                           ; $7207: $97
	xor  d                                           ; $7208: $aa
	adc  b                                           ; $7209: $88
	adc  b                                           ; $720a: $88
	ld   [hl], a                                     ; $720b: $77
	and  a                                           ; $720c: $a7
	ld   [hl], a                                     ; $720d: $77
	ld   e, c                                        ; $720e: $59
	add  a                                           ; $720f: $87
	cp   c                                           ; $7210: $b9
	adc  b                                           ; $7211: $88
	ld   a, c                                        ; $7212: $79
	ld   a, b                                        ; $7213: $78
	add  a                                           ; $7214: $87
	halt                                             ; $7215: $76
	ld   l, c                                        ; $7216: $69
	adc  c                                           ; $7217: $89
	cp   b                                           ; $7218: $b8
	adc  b                                           ; $7219: $88
	adc  b                                           ; $721a: $88
	ld   a, b                                        ; $721b: $78
	halt                                             ; $721c: $76
	halt                                             ; $721d: $76
	sbc  c                                           ; $721e: $99
	adc  d                                           ; $721f: $8a
	adc  b                                           ; $7220: $88
	sbc  b                                           ; $7221: $98
	add  a                                           ; $7222: $87
	adc  b                                           ; $7223: $88
	ld   h, a                                        ; $7224: $67
	ld   l, b                                        ; $7225: $68
	adc  b                                           ; $7226: $88
	xor  c                                           ; $7227: $a9
	adc  c                                           ; $7228: $89
	adc  b                                           ; $7229: $88
	ld   a, b                                        ; $722a: $78
	halt                                             ; $722b: $76
	ld   [hl], a                                     ; $722c: $77
	sbc  c                                           ; $722d: $99
	sbc  c                                           ; $722e: $99
	adc  b                                           ; $722f: $88
	sub  a                                           ; $7230: $97
	adc  b                                           ; $7231: $88
	halt                                             ; $7232: $76
	ld   a, b                                        ; $7233: $78
	sbc  c                                           ; $7234: $99
	sbc  d                                           ; $7235: $9a
	adc  b                                           ; $7236: $88
	add  a                                           ; $7237: $87
	adc  b                                           ; $7238: $88
	halt                                             ; $7239: $76
	ld   a, b                                        ; $723a: $78
	adc  c                                           ; $723b: $89
	sbc  d                                           ; $723c: $9a
	adc  b                                           ; $723d: $88
	add  a                                           ; $723e: $87
	add  a                                           ; $723f: $87
	halt                                             ; $7240: $76
	ld   a, c                                        ; $7241: $79
	sbc  b                                           ; $7242: $98
	xor  b                                           ; $7243: $a8
	adc  c                                           ; $7244: $89
	add  a                                           ; $7245: $87
	add  a                                           ; $7246: $87
	ld   h, a                                        ; $7247: $67
	adc  c                                           ; $7248: $89
	adc  c                                           ; $7249: $89
	sbc  b                                           ; $724a: $98
	adc  c                                           ; $724b: $89
	ld   [hl], a                                     ; $724c: $77
	halt                                             ; $724d: $76
	ld   a, b                                        ; $724e: $78
	adc  c                                           ; $724f: $89
	sbc  c                                           ; $7250: $99
	sbc  b                                           ; $7251: $98
	add  a                                           ; $7252: $87
	ld   [hl], a                                     ; $7253: $77
	ld   h, a                                        ; $7254: $67
	adc  c                                           ; $7255: $89
	sbc  c                                           ; $7256: $99
	xor  b                                           ; $7257: $a8
	adc  c                                           ; $7258: $89
	ld   [hl], a                                     ; $7259: $77
	halt                                             ; $725a: $76
	ld   a, b                                        ; $725b: $78
	adc  b                                           ; $725c: $88
	sbc  c                                           ; $725d: $99
	adc  b                                           ; $725e: $88
	add  a                                           ; $725f: $87
	ld   [hl], a                                     ; $7260: $77
	ld   [hl], a                                     ; $7261: $77
	adc  b                                           ; $7262: $88
	sbc  c                                           ; $7263: $99
	sbc  c                                           ; $7264: $99
	sbc  b                                           ; $7265: $98
	ld   [hl], a                                     ; $7266: $77
	ld   [hl], a                                     ; $7267: $77
	adc  b                                           ; $7268: $88
	adc  d                                           ; $7269: $8a
	adc  b                                           ; $726a: $88
	add  a                                           ; $726b: $87
	add  a                                           ; $726c: $87
	ld   [hl], a                                     ; $726d: $77
	adc  b                                           ; $726e: $88
	sbc  d                                           ; $726f: $9a
	adc  c                                           ; $7270: $89
	sbc  b                                           ; $7271: $98
	add  a                                           ; $7272: $87
	ld   [hl], a                                     ; $7273: $77
	ld   a, b                                        ; $7274: $78
	adc  c                                           ; $7275: $89
	sbc  c                                           ; $7276: $99
	adc  b                                           ; $7277: $88
	add  a                                           ; $7278: $87
	ld   [hl], a                                     ; $7279: $77
	ld   a, b                                        ; $727a: $78
	adc  b                                           ; $727b: $88
	sbc  b                                           ; $727c: $98
	adc  b                                           ; $727d: $88
	adc  b                                           ; $727e: $88
	ld   [hl], a                                     ; $727f: $77
	ld   a, b                                        ; $7280: $78
	adc  c                                           ; $7281: $89
	sbc  b                                           ; $7282: $98
	sbc  b                                           ; $7283: $98
	adc  b                                           ; $7284: $88
	add  a                                           ; $7285: $87
	ld   [hl], a                                     ; $7286: $77
	adc  b                                           ; $7287: $88
	sbc  c                                           ; $7288: $99
	adc  c                                           ; $7289: $89
	sbc  b                                           ; $728a: $98
	add  a                                           ; $728b: $87
	ld   [hl], a                                     ; $728c: $77
	ld   a, b                                        ; $728d: $78
	adc  c                                           ; $728e: $89
	sbc  c                                           ; $728f: $99
	sbc  b                                           ; $7290: $98
	adc  b                                           ; $7291: $88
	ld   [hl], a                                     ; $7292: $77
	ld   a, b                                        ; $7293: $78
	adc  b                                           ; $7294: $88
	sbc  b                                           ; $7295: $98
	adc  b                                           ; $7296: $88
	adc  b                                           ; $7297: $88
	add  a                                           ; $7298: $87
	ld   [hl], a                                     ; $7299: $77
	adc  b                                           ; $729a: $88
	adc  c                                           ; $729b: $89
	sbc  b                                           ; $729c: $98
	sbc  b                                           ; $729d: $98
	add  a                                           ; $729e: $87
	ld   [hl], a                                     ; $729f: $77
	ld   a, b                                        ; $72a0: $78
	adc  c                                           ; $72a1: $89
	adc  c                                           ; $72a2: $89
	adc  c                                           ; $72a3: $89
	adc  b                                           ; $72a4: $88
	add  a                                           ; $72a5: $87
	ld   [hl], a                                     ; $72a6: $77
	ld   a, b                                        ; $72a7: $78
	sbc  c                                           ; $72a8: $99
	sbc  c                                           ; $72a9: $99
	sbc  b                                           ; $72aa: $98
	adc  b                                           ; $72ab: $88
	add  a                                           ; $72ac: $87
	ld   [hl], a                                     ; $72ad: $77
	adc  b                                           ; $72ae: $88
	sbc  c                                           ; $72af: $99
	adc  c                                           ; $72b0: $89
	adc  b                                           ; $72b1: $88
	adc  b                                           ; $72b2: $88
	add  a                                           ; $72b3: $87
	ld   a, b                                        ; $72b4: $78
	adc  c                                           ; $72b5: $89
	sbc  c                                           ; $72b6: $99
	sbc  b                                           ; $72b7: $98
	adc  b                                           ; $72b8: $88
	adc  b                                           ; $72b9: $88
	add  a                                           ; $72ba: $87
	adc  b                                           ; $72bb: $88
	adc  b                                           ; $72bc: $88
	sbc  b                                           ; $72bd: $98
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
	ld   de, $1111                                   ; $72ec: $11 $11 $11
	ld   de, $1111                                   ; $72ef: $11 $11 $11
	ld   de, $1111                                   ; $72f2: $11 $11 $11
	ld   de, $1111                                   ; $72f5: $11 $11 $11
	ld   de, $1111                                   ; $72f8: $11 $11 $11
	ld   de, $1111                                   ; $72fb: $11 $11 $11
	ld   de, $1111                                   ; $72fe: $11 $11 $11
	ld   de, $1111                                   ; $7301: $11 $11 $11
	ld   de, $1111                                   ; $7304: $11 $11 $11
	ld   de, $1111                                   ; $7307: $11 $11 $11
	ld   de, $1111                                   ; $730a: $11 $11 $11
	ld   de, $1111                                   ; $730d: $11 $11 $11
	ld   de, $1111                                   ; $7310: $11 $11 $11
	ld   de, $1111                                   ; $7313: $11 $11 $11
	ld   de, $1111                                   ; $7316: $11 $11 $11
	ld   de, $4800                                   ; $7319: $11 $00 $48
	ld   de, $1111                                   ; $731c: $11 $11 $11
	ld   de, $1111                                   ; $731f: $11 $11 $11
	ld   de, $1111                                   ; $7322: $11 $11 $11
	ld   de, $5413                                   ; $7325: $11 $13 $54
	ld   d, h                                        ; $7328: $54
	ld   d, h                                        ; $7329: $54
	ld   b, c                                        ; $732a: $41
	rra                                              ; $732b: $1f
	rst  $38                                         ; $732c: $ff
	pop  af                                          ; $732d: $f1
	ld   de, $1211                                   ; $732e: $11 $11 $12
	ld   de, $1c11                                   ; $7331: $11 $11 $1c
	db   $dd                                         ; $7334: $dd
	call z, $d1dd                                    ; $7335: $cc $dd $d1
	ld   de, $1111                                   ; $7338: $11 $11 $11
	ld   de, $1111                                   ; $733b: $11 $11 $11
	ld   de, $1111                                   ; $733e: $11 $11 $11
	ld   de, $1111                                   ; $7341: $11 $11 $11
	ld   de, $5411                                   ; $7344: $11 $11 $54
	ld   b, h                                        ; $7347: $44
	ld   [de], a                                     ; $7348: $12
	ld   de, $5454                                   ; $7349: $11 $54 $54
	ld   h, a                                        ; $734c: $67
	ld   [hl], d                                     ; $734d: $72
	ld   de, $1111                                   ; $734e: $11 $11 $11
	ld   de, $1112                                   ; $7351: $11 $12 $11
	ld   [de], a                                     ; $7354: $12
	ld   de, $1111                                   ; $7355: $11 $11 $11
	ld   h, [hl]                                     ; $7358: $66
	halt                                             ; $7359: $76
	ldh  a, [c]                                      ; $735a: $f2
	ld   de, $9988                                   ; $735b: $11 $88 $99
	adc  c                                           ; $735e: $89
	adc  c                                           ; $735f: $89
	adc  b                                           ; $7360: $88
	adc  b                                           ; $7361: $88
	ld   [hl], a                                     ; $7362: $77
	ld   [hl], a                                     ; $7363: $77
	ld   [hl], a                                     ; $7364: $77
	ld   [hl], a                                     ; $7365: $77
	adc  c                                           ; $7366: $89
	sbc  c                                           ; $7367: $99
	sbc  d                                           ; $7368: $9a
	sbc  c                                           ; $7369: $99
	sbc  b                                           ; $736a: $98
	adc  b                                           ; $736b: $88
	adc  b                                           ; $736c: $88
	ld   [hl], a                                     ; $736d: $77
	ld   h, [hl]                                     ; $736e: $66
	ld   d, l                                        ; $736f: $55
	ld   d, l                                        ; $7370: $55
	ld   h, [hl]                                     ; $7371: $66
	ld   d, [hl]                                     ; $7372: $56
	ld   a, c                                        ; $7373: $79
	sbc  c                                           ; $7374: $99
	xor  d                                           ; $7375: $aa
	call z, $a9ba                                    ; $7376: $cc $ba $a9
	adc  b                                           ; $7379: $88
	xor  c                                           ; $737a: $a9
	sbc  b                                           ; $737b: $98
	adc  c                                           ; $737c: $89
	adc  b                                           ; $737d: $88
	ld   a, b                                        ; $737e: $78
	ld   [hl], a                                     ; $737f: $77
	ld   h, [hl]                                     ; $7380: $66
	ld   h, [hl]                                     ; $7381: $66
	ld   h, l                                        ; $7382: $65
	ld   h, [hl]                                     ; $7383: $66
	ld   [hl], a                                     ; $7384: $77
	adc  b                                           ; $7385: $88
	sbc  d                                           ; $7386: $9a
	cp   d                                           ; $7387: $ba
	cp   e                                           ; $7388: $bb
	xor  e                                           ; $7389: $ab
	sbc  d                                           ; $738a: $9a
	xor  c                                           ; $738b: $a9
	sbc  b                                           ; $738c: $98
	adc  b                                           ; $738d: $88
	sbc  c                                           ; $738e: $99
	ld   a, b                                        ; $738f: $78
	ld   [hl], a                                     ; $7390: $77
	ld   d, [hl]                                     ; $7391: $56
	halt                                             ; $7392: $76
	ld   h, l                                        ; $7393: $65
	ld   h, [hl]                                     ; $7394: $66
	ld   h, [hl]                                     ; $7395: $66
	ld   [hl], a                                     ; $7396: $77
	sbc  d                                           ; $7397: $9a
	sbc  c                                           ; $7398: $99
	sbc  c                                           ; $7399: $99
	xor  c                                           ; $739a: $a9
	sbc  c                                           ; $739b: $99
	xor  c                                           ; $739c: $a9
	xor  c                                           ; $739d: $a9
	sbc  d                                           ; $739e: $9a
	adc  b                                           ; $739f: $88
	sbc  b                                           ; $73a0: $98
	halt                                             ; $73a1: $76
	halt                                             ; $73a2: $76
	ld   [hl], l                                     ; $73a3: $75
	ld   h, a                                        ; $73a4: $67
	ld   d, [hl]                                     ; $73a5: $56
	ld   h, a                                        ; $73a6: $67
	ld   d, a                                        ; $73a7: $57
	ld   h, a                                        ; $73a8: $67
	ld   [hl], a                                     ; $73a9: $77
	add  a                                           ; $73aa: $87
	adc  b                                           ; $73ab: $88
	sbc  b                                           ; $73ac: $98
	xor  b                                           ; $73ad: $a8
	xor  c                                           ; $73ae: $a9
	sbc  e                                           ; $73af: $9b
	adc  d                                           ; $73b0: $8a
	adc  c                                           ; $73b1: $89
	adc  b                                           ; $73b2: $88
	and  a                                           ; $73b3: $a7
	ld   a, b                                        ; $73b4: $78
	sub  [hl]                                        ; $73b5: $96
	add  [hl]                                        ; $73b6: $86
	add  a                                           ; $73b7: $87
	ld   a, b                                        ; $73b8: $78

Call_0ad_73b9:
	ld   h, a                                        ; $73b9: $67
	ld   l, b                                        ; $73ba: $68
	ld   h, a                                        ; $73bb: $67
	add  a                                           ; $73bc: $87
	ld   [hl], a                                     ; $73bd: $77
	add  a                                           ; $73be: $87
	sub  a                                           ; $73bf: $97
	sbc  b                                           ; $73c0: $98
	xor  b                                           ; $73c1: $a8
	adc  c                                           ; $73c2: $89
	sbc  b                                           ; $73c3: $98
	ld   a, d                                        ; $73c4: $7a
	ld   a, c                                        ; $73c5: $79
	adc  b                                           ; $73c6: $88
	add  a                                           ; $73c7: $87
	and  a                                           ; $73c8: $a7
	adc  b                                           ; $73c9: $88
	add  a                                           ; $73ca: $87
	ld   a, c                                        ; $73cb: $79
	add  a                                           ; $73cc: $87
	ld   a, b                                        ; $73cd: $78
	ld   a, c                                        ; $73ce: $79
	add  a                                           ; $73cf: $87
	add  a                                           ; $73d0: $87
	sub  a                                           ; $73d1: $97
	adc  c                                           ; $73d2: $89
	ld   a, b                                        ; $73d3: $78
	adc  c                                           ; $73d4: $89
	ld   l, b                                        ; $73d5: $68
	adc  c                                           ; $73d6: $89
	sub  a                                           ; $73d7: $97
	adc  c                                           ; $73d8: $89
	adc  b                                           ; $73d9: $88
	adc  b                                           ; $73da: $88
	sub  a                                           ; $73db: $97
	ld   a, d                                        ; $73dc: $7a
	ld   a, b                                        ; $73dd: $78
	adc  b                                           ; $73de: $88
	ld   a, b                                        ; $73df: $78
	ld   [hl], a                                     ; $73e0: $77
	and  a                                           ; $73e1: $a7
	sbc  c                                           ; $73e2: $99
	ld   l, c                                        ; $73e3: $69
	ld   a, c                                        ; $73e4: $79
	ld   [hl], a                                     ; $73e5: $77
	ld   a, d                                        ; $73e6: $7a
	add  [hl]                                        ; $73e7: $86
	and  a                                           ; $73e8: $a7
	ld   a, b                                        ; $73e9: $78
	adc  b                                           ; $73ea: $88
	adc  c                                           ; $73eb: $89
	adc  b                                           ; $73ec: $88
	adc  c                                           ; $73ed: $89
	sub  a                                           ; $73ee: $97
	sbc  c                                           ; $73ef: $99
	adc  b                                           ; $73f0: $88
	adc  c                                           ; $73f1: $89
	ld   a, b                                        ; $73f2: $78
	add  a                                           ; $73f3: $87
	sbc  b                                           ; $73f4: $98
	add  [hl]                                        ; $73f5: $86
	xor  c                                           ; $73f6: $a9
	ld   [hl], a                                     ; $73f7: $77
	adc  b                                           ; $73f8: $88
	adc  c                                           ; $73f9: $89
	ld   a, b                                        ; $73fa: $78
	adc  c                                           ; $73fb: $89
	ld   a, c                                        ; $73fc: $79
	ld   a, c                                        ; $73fd: $79
	add  a                                           ; $73fe: $87
	and  [hl]                                        ; $73ff: $a6
	sub  a                                           ; $7400: $97
	sub  a                                           ; $7401: $97
	ld   a, b                                        ; $7402: $78
	ld   a, c                                        ; $7403: $79
	ld   a, c                                        ; $7404: $79
	ld   [hl], a                                     ; $7405: $77
	adc  b                                           ; $7406: $88
	ld   a, b                                        ; $7407: $78
	adc  b                                           ; $7408: $88
	sub  [hl]                                        ; $7409: $96
	sbc  c                                           ; $740a: $99
	ld   l, c                                        ; $740b: $69
	ld   a, c                                        ; $740c: $79
	ld   [hl], a                                     ; $740d: $77
	sub  a                                           ; $740e: $97
	add  a                                           ; $740f: $87
	sbc  b                                           ; $7410: $98
	ld   [hl], a                                     ; $7411: $77
	ld   a, c                                        ; $7412: $79
	ld   a, c                                        ; $7413: $79
	ld   l, b                                        ; $7414: $68
	adc  b                                           ; $7415: $88
	add  a                                           ; $7416: $87
	and  a                                           ; $7417: $a7
	sub  [hl]                                        ; $7418: $96
	xor  b                                           ; $7419: $a8
	ld   l, c                                        ; $741a: $69
	ld   l, e                                        ; $741b: $6b
	ld   l, c                                        ; $741c: $69
	sub  a                                           ; $741d: $97
	add  a                                           ; $741e: $87
	add  a                                           ; $741f: $87
	add  [hl]                                        ; $7420: $86
	sub  a                                           ; $7421: $97
	sbc  b                                           ; $7422: $98
	ld   l, c                                        ; $7423: $69
	ld   a, b                                        ; $7424: $78
	ld   a, c                                        ; $7425: $79
	ld   a, b                                        ; $7426: $78
	ld   a, b                                        ; $7427: $78
	add  [hl]                                        ; $7428: $86
	and  a                                           ; $7429: $a7
	add  a                                           ; $742a: $87
	adc  b                                           ; $742b: $88
	ld   a, c                                        ; $742c: $79
	ld   a, d                                        ; $742d: $7a
	ld   a, b                                        ; $742e: $78
	sub  a                                           ; $742f: $97
	ld   a, b                                        ; $7430: $78
	adc  b                                           ; $7431: $88
	adc  b                                           ; $7432: $88
	sub  [hl]                                        ; $7433: $96
	adc  c                                           ; $7434: $89
	add  a                                           ; $7435: $87
	ld   a, b                                        ; $7436: $78
	add  a                                           ; $7437: $87
	sbc  b                                           ; $7438: $98
	ld   a, c                                        ; $7439: $79
	ld   a, c                                        ; $743a: $79
	ld   l, c                                        ; $743b: $69
	adc  b                                           ; $743c: $88
	sbc  b                                           ; $743d: $98
	sub  [hl]                                        ; $743e: $96
	sbc  b                                           ; $743f: $98
	sbc  b                                           ; $7440: $98
	ld   a, b                                        ; $7441: $78
	sbc  d                                           ; $7442: $9a
	adc  b                                           ; $7443: $88
	ld   a, c                                        ; $7444: $79
	ld   a, b                                        ; $7445: $78
	sub  a                                           ; $7446: $97
	sbc  b                                           ; $7447: $98
	ld   [hl], a                                     ; $7448: $77
	adc  b                                           ; $7449: $88
	sub  a                                           ; $744a: $97
	ld   a, d                                        ; $744b: $7a
	add  a                                           ; $744c: $87
	sub  [hl]                                        ; $744d: $96
	sbc  c                                           ; $744e: $99
	add  a                                           ; $744f: $87
	ld   a, d                                        ; $7450: $7a
	adc  b                                           ; $7451: $88
	adc  b                                           ; $7452: $88
	ld   a, b                                        ; $7453: $78
	adc  c                                           ; $7454: $89
	add  a                                           ; $7455: $87
	sbc  c                                           ; $7456: $99
	adc  b                                           ; $7457: $88
	adc  c                                           ; $7458: $89
	ld   [hl], a                                     ; $7459: $77
	and  [hl]                                        ; $745a: $a6
	sbc  c                                           ; $745b: $99
	ld   l, d                                        ; $745c: $6a
	ld   a, b                                        ; $745d: $78
	adc  c                                           ; $745e: $89
	adc  c                                           ; $745f: $89
	ld   a, b                                        ; $7460: $78
	adc  b                                           ; $7461: $88
	adc  b                                           ; $7462: $88
	add  a                                           ; $7463: $87
	sbc  c                                           ; $7464: $99
	add  [hl]                                        ; $7465: $86
	xor  b                                           ; $7466: $a8
	adc  c                                           ; $7467: $89
	ld   l, b                                        ; $7468: $68
	sbc  b                                           ; $7469: $98
	ld   l, c                                        ; $746a: $69
	adc  c                                           ; $746b: $89
	ld   [hl], a                                     ; $746c: $77
	ld   a, b                                        ; $746d: $78
	add  [hl]                                        ; $746e: $86
	xor  b                                           ; $746f: $a8
	ld   a, b                                        ; $7470: $78
	ld   a, d                                        ; $7471: $7a
	sub  [hl]                                        ; $7472: $96
	ld   a, c                                        ; $7473: $79
	adc  c                                           ; $7474: $89
	ld   a, b                                        ; $7475: $78
	ld   a, b                                        ; $7476: $78
	adc  b                                           ; $7477: $88
	sub  a                                           ; $7478: $97
	sub  a                                           ; $7479: $97
	adc  c                                           ; $747a: $89
	ld   l, b                                        ; $747b: $68
	sbc  b                                           ; $747c: $98
	ld   a, c                                        ; $747d: $79
	ld   [hl], a                                     ; $747e: $77
	ld   a, b                                        ; $747f: $78
	add  a                                           ; $7480: $87
	sub  [hl]                                        ; $7481: $96
	sub  a                                           ; $7482: $97
	adc  b                                           ; $7483: $88
	adc  b                                           ; $7484: $88
	ld   a, b                                        ; $7485: $78
	ld   a, b                                        ; $7486: $78

Jump_0ad_7487:
	sbc  b                                           ; $7487: $98
	ld   a, c                                        ; $7488: $79
	ld   l, c                                        ; $7489: $69

Jump_0ad_748a:
	sub  a                                           ; $748a: $97
	and  l                                           ; $748b: $a5
	xor  b                                           ; $748c: $a8
	add  [hl]                                        ; $748d: $86
	sbc  b                                           ; $748e: $98
	ld   l, d                                        ; $748f: $6a
	ld   e, c                                        ; $7490: $59
	ld   a, b                                        ; $7491: $78
	adc  b                                           ; $7492: $88
	ld   a, c                                        ; $7493: $79
	sub  [hl]                                        ; $7494: $96
	sub  a                                           ; $7495: $97
	sub  [hl]                                        ; $7496: $96
	sbc  b                                           ; $7497: $98
	adc  c                                           ; $7498: $89
	ld   a, c                                        ; $7499: $79
	ld   a, b                                        ; $749a: $78
	ld   a, c                                        ; $749b: $79
	ld   a, b                                        ; $749c: $78
	sub  a                                           ; $749d: $97
	adc  b                                           ; $749e: $88
	ld   a, b                                        ; $749f: $78
	add  a                                           ; $74a0: $87
	add  a                                           ; $74a1: $87
	sub  a                                           ; $74a2: $97
	sub  [hl]                                        ; $74a3: $96
	adc  c                                           ; $74a4: $89
	ld   a, b                                        ; $74a5: $78
	ld   a, c                                        ; $74a6: $79
	adc  b                                           ; $74a7: $88
	halt                                             ; $74a8: $76
	sbc  d                                           ; $74a9: $9a
	add  l                                           ; $74aa: $85
	sbc  d                                           ; $74ab: $9a
	add  [hl]                                        ; $74ac: $86
	adc  c                                           ; $74ad: $89
	ld   a, b                                        ; $74ae: $78
	ld   l, b                                        ; $74af: $68
	ld   a, b                                        ; $74b0: $78
	sub  [hl]                                        ; $74b1: $96
	halt                                             ; $74b2: $76
	or   [hl]                                        ; $74b3: $b6
	ld   a, d                                        ; $74b4: $7a
	ld   e, d                                        ; $74b5: $5a
	adc  b                                           ; $74b6: $88
	ld   [hl], a                                     ; $74b7: $77
	sub  a                                           ; $74b8: $97
	sbc  b                                           ; $74b9: $98
	sub  a                                           ; $74ba: $97
	sbc  b                                           ; $74bb: $98
	ld   l, b                                        ; $74bc: $68
	add  a                                           ; $74bd: $87
	ld   a, b                                        ; $74be: $78
	sbc  b                                           ; $74bf: $98
	ld   a, b                                        ; $74c0: $78
	adc  b                                           ; $74c1: $88
	ld   [hl], a                                     ; $74c2: $77
	sbc  c                                           ; $74c3: $99
	add  l                                           ; $74c4: $85
	xor  c                                           ; $74c5: $a9
	ld   [hl], a                                     ; $74c6: $77
	adc  b                                           ; $74c7: $88
	adc  c                                           ; $74c8: $89
	ld   a, b                                        ; $74c9: $78
	adc  c                                           ; $74ca: $89
	halt                                             ; $74cb: $76
	add  a                                           ; $74cc: $87
	sbc  b                                           ; $74cd: $98
	ld   a, c                                        ; $74ce: $79
	adc  b                                           ; $74cf: $88
	ld   [hl], l                                     ; $74d0: $75
	xor  d                                           ; $74d1: $aa
	ld   h, a                                        ; $74d2: $67
	adc  c                                           ; $74d3: $89
	sub  a                                           ; $74d4: $97
	ld   l, b                                        ; $74d5: $68
	and  a                                           ; $74d6: $a7
	ld   a, b                                        ; $74d7: $78
	adc  b                                           ; $74d8: $88
	ld   l, b                                        ; $74d9: $68
	adc  b                                           ; $74da: $88
	sub  [hl]                                        ; $74db: $96
	xor  b                                           ; $74dc: $a8
	adc  b                                           ; $74dd: $88
	ld   a, b                                        ; $74de: $78
	adc  b                                           ; $74df: $88
	add  a                                           ; $74e0: $87
	and  a                                           ; $74e1: $a7
	sub  a                                           ; $74e2: $97
	xor  c                                           ; $74e3: $a9
	ld   e, d                                        ; $74e4: $5a
	ld   a, e                                        ; $74e5: $7b
	ld   e, c                                        ; $74e6: $59
	sbc  b                                           ; $74e7: $98
	add  l                                           ; $74e8: $85
	add  $a9                                         ; $74e9: $c6 $a9
	ld   a, b                                        ; $74eb: $78
	ld   h, a                                        ; $74ec: $67
	adc  c                                           ; $74ed: $89
	adc  c                                           ; $74ee: $89
	ld   a, b                                        ; $74ef: $78
	ld   l, b                                        ; $74f0: $68
	sbc  c                                           ; $74f1: $99
	add  a                                           ; $74f2: $87
	sub  a                                           ; $74f3: $97
	adc  c                                           ; $74f4: $89
	ld   l, c                                        ; $74f5: $69
	adc  b                                           ; $74f6: $88
	add  a                                           ; $74f7: $87
	adc  b                                           ; $74f8: $88
	ld   a, b                                        ; $74f9: $78
	ld   a, b                                        ; $74fa: $78
	and  a                                           ; $74fb: $a7
	ld   [hl], a                                     ; $74fc: $77
	sbc  b                                           ; $74fd: $98
	ld   a, c                                        ; $74fe: $79
	sbc  b                                           ; $74ff: $98
	ld   a, c                                        ; $7500: $79
	ld   l, c                                        ; $7501: $69
	ld   l, e                                        ; $7502: $6b
	add  l                                           ; $7503: $85
	and  a                                           ; $7504: $a7
	and  [hl]                                        ; $7505: $a6
	adc  b                                           ; $7506: $88
	sbc  b                                           ; $7507: $98
	ld   a, b                                        ; $7508: $78
	ld   l, c                                        ; $7509: $69
	adc  c                                           ; $750a: $89
	sub  [hl]                                        ; $750b: $96
	ld   a, d                                        ; $750c: $7a
	halt                                             ; $750d: $76
	sbc  b                                           ; $750e: $98
	adc  c                                           ; $750f: $89
	and  a                                           ; $7510: $a7
	ld   l, d                                        ; $7511: $6a
	add  [hl]                                        ; $7512: $86
	ld   a, d                                        ; $7513: $7a
	and  l                                           ; $7514: $a5
	adc  b                                           ; $7515: $88
	sub  a                                           ; $7516: $97
	ld   a, d                                        ; $7517: $7a
	add  a                                           ; $7518: $87
	adc  b                                           ; $7519: $88
	and  a                                           ; $751a: $a7
	ld   l, b                                        ; $751b: $68
	adc  c                                           ; $751c: $89
	ld   e, c                                        ; $751d: $59
	adc  b                                           ; $751e: $88
	ld   a, c                                        ; $751f: $79
	sub  h                                           ; $7520: $94
	xor  c                                           ; $7521: $a9
	adc  b                                           ; $7522: $88
	ld   a, c                                        ; $7523: $79
	add  a                                           ; $7524: $87
	sub  a                                           ; $7525: $97
	sbc  b                                           ; $7526: $98
	ld   l, e                                        ; $7527: $6b
	ld   a, c                                        ; $7528: $79
	ld   a, b                                        ; $7529: $78
	adc  b                                           ; $752a: $88
	adc  c                                           ; $752b: $89
	add  l                                           ; $752c: $85
	xor  b                                           ; $752d: $a8
	sub  [hl]                                        ; $752e: $96
	adc  c                                           ; $752f: $89
	ld   l, d                                        ; $7530: $6a
	ld   a, b                                        ; $7531: $78
	adc  c                                           ; $7532: $89
	sub  [hl]                                        ; $7533: $96
	ld   a, e                                        ; $7534: $7b
	add  [hl]                                        ; $7535: $86
	xor  c                                           ; $7536: $a9
	halt                                             ; $7537: $76
	xor  b                                           ; $7538: $a8
	ld   a, e                                        ; $7539: $7b
	ld   l, c                                        ; $753a: $69
	ld   a, c                                        ; $753b: $79
	add  [hl]                                        ; $753c: $86
	sub  [hl]                                        ; $753d: $96
	and  a                                           ; $753e: $a7
	or   [hl]                                        ; $753f: $b6
	ld   a, d                                        ; $7540: $7a
	sub  a                                           ; $7541: $97
	ld   c, l                                        ; $7542: $4d
	ld   l, b                                        ; $7543: $68
	adc  b                                           ; $7544: $88
	add  a                                           ; $7545: $87
	and  a                                           ; $7546: $a7
	ld   a, b                                        ; $7547: $78
	sub  a                                           ; $7548: $97
	adc  c                                           ; $7549: $89
	sbc  b                                           ; $754a: $98
	add  a                                           ; $754b: $87
	and  [hl]                                        ; $754c: $a6
	ld   a, c                                        ; $754d: $79
	ld   a, h                                        ; $754e: $7c
	ld   e, b                                        ; $754f: $58
	adc  d                                           ; $7550: $8a
	sub  [hl]                                        ; $7551: $96
	add  a                                           ; $7552: $87
	sbc  b                                           ; $7553: $98
	xor  b                                           ; $7554: $a8
	add  h                                           ; $7555: $84
	ld   a, e                                        ; $7556: $7b
	ld   l, d                                        ; $7557: $6a
	cp   b                                           ; $7558: $b8
	ld   h, [hl]                                     ; $7559: $66
	ld   a, d                                        ; $755a: $7a
	adc  c                                           ; $755b: $89
	sub  l                                           ; $755c: $95
	adc  c                                           ; $755d: $89
	and  [hl]                                        ; $755e: $a6
	sbc  c                                           ; $755f: $99
	add  a                                           ; $7560: $87
	ld   a, d                                        ; $7561: $7a
	ld   e, d                                        ; $7562: $5a
	adc  e                                           ; $7563: $8b
	ld   e, b                                        ; $7564: $58
	sbc  c                                           ; $7565: $99
	halt                                             ; $7566: $76
	call nc, $a7a8                                   ; $7567: $d4 $a8 $a7
	ld   l, c                                        ; $756a: $69
	ld   c, d                                        ; $756b: $4a
	sbc  l                                           ; $756c: $9d
	ld   e, b                                        ; $756d: $58
	sub  a                                           ; $756e: $97
	ld   a, d                                        ; $756f: $7a
	sub  h                                           ; $7570: $94
	sbc  c                                           ; $7571: $99
	sbc  b                                           ; $7572: $98
	adc  b                                           ; $7573: $88
	ld   h, [hl]                                     ; $7574: $66
	or   [hl]                                        ; $7575: $b6
	xor  c                                           ; $7576: $a9
	ld   a, b                                        ; $7577: $78
	ld   l, l                                        ; $7578: $6d
	ld   h, a                                        ; $7579: $67
	adc  b                                           ; $757a: $88
	ld   l, c                                        ; $757b: $69
	add  $68                                         ; $757c: $c6 $68
	xor  c                                           ; $757e: $a9
	ld   l, c                                        ; $757f: $69
	sub  [hl]                                        ; $7580: $96
	ld   a, h                                        ; $7581: $7c
	add  a                                           ; $7582: $87
	add  l                                           ; $7583: $85
	and  a                                           ; $7584: $a7
	sbc  b                                           ; $7585: $98
	adc  c                                           ; $7586: $89
	ld   a, c                                        ; $7587: $79
	ld   a, c                                        ; $7588: $79
	ld   [hl], a                                     ; $7589: $77
	adc  c                                           ; $758a: $89
	ld   a, e                                        ; $758b: $7b
	ld   e, c                                        ; $758c: $59
	add  [hl]                                        ; $758d: $86
	push bc                                          ; $758e: $c5
	add  [hl]                                        ; $758f: $86
	call nz, Call_0ad_6c9a                           ; $7590: $c4 $9a $6c
	ld   e, h                                        ; $7593: $5c
	ld   d, [hl]                                     ; $7594: $56
	add  $a7                                         ; $7595: $c6 $a7
	ld   l, e                                        ; $7597: $6b
	ld   a, d                                        ; $7598: $7a

Jump_0ad_7599:
	ld   e, c                                        ; $7599: $59
	add  a                                           ; $759a: $87
	sub  [hl]                                        ; $759b: $96
	push bc                                          ; $759c: $c5
	or   a                                           ; $759d: $b7
	ld   a, b                                        ; $759e: $78
	ld   a, c                                        ; $759f: $79
	ld   l, c                                        ; $75a0: $69
	add  a                                           ; $75a1: $87
	adc  e                                           ; $75a2: $8b
	halt                                             ; $75a3: $76
	add  a                                           ; $75a4: $87
	and  a                                           ; $75a5: $a7
	ld   a, c                                        ; $75a6: $79
	add  a                                           ; $75a7: $87
	ld   l, d                                        ; $75a8: $6a
	ld   h, a                                        ; $75a9: $67
	rst  $10                                         ; $75aa: $d7
	ld   h, a                                        ; $75ab: $67
	xor  c                                           ; $75ac: $a9
	ld   b, a                                        ; $75ad: $47
	adc  c                                           ; $75ae: $89
	sub  a                                           ; $75af: $97
	sub  [hl]                                        ; $75b0: $96
	adc  c                                           ; $75b1: $89
	ld   [hl], a                                     ; $75b2: $77
	ld   a, h                                        ; $75b3: $7c
	ld   c, b                                        ; $75b4: $48
	sbc  e                                           ; $75b5: $9b
	add  h                                           ; $75b6: $84
	or   l                                           ; $75b7: $b5
	or   a                                           ; $75b8: $b7
	ld   l, c                                        ; $75b9: $69
	ld   a, b                                        ; $75ba: $78
	adc  b                                           ; $75bb: $88
	ld   l, e                                        ; $75bc: $6b
	halt                                             ; $75bd: $76
	sub  [hl]                                        ; $75be: $96
	ld   a, c                                        ; $75bf: $79
	ld   a, b                                        ; $75c0: $78
	sbc  b                                           ; $75c1: $98
	push bc                                          ; $75c2: $c5
	ld   a, c                                        ; $75c3: $79
	ld   a, b                                        ; $75c4: $78
	ld   l, h                                        ; $75c5: $6c
	ld   d, [hl]                                     ; $75c6: $56
	rst  ToBoot                                         ; $75c7: $c7
	ld   l, b                                        ; $75c8: $68
	or   l                                           ; $75c9: $b5
	sub  a                                           ; $75ca: $97
	ld   [hl], a                                     ; $75cb: $77
	adc  d                                           ; $75cc: $8a
	ld   e, e                                        ; $75cd: $5b
	ld   l, e                                        ; $75ce: $6b
	ld   l, b                                        ; $75cf: $68
	sub  [hl]                                        ; $75d0: $96
	and  [hl]                                        ; $75d1: $a6
	sub  l                                           ; $75d2: $95
	xor  b                                           ; $75d3: $a8
	add  a                                           ; $75d4: $87
	ld   l, c                                        ; $75d5: $69
	sbc  b                                           ; $75d6: $98
	ld   a, d                                        ; $75d7: $7a
	ld   e, d                                        ; $75d8: $5a
	halt                                             ; $75d9: $76
	xor  c                                           ; $75da: $a9
	ld   e, c                                        ; $75db: $59
	sbc  c                                           ; $75dc: $99
	and  l                                           ; $75dd: $a5
	sbc  c                                           ; $75de: $99
	add  l                                           ; $75df: $85
	and  [hl]                                        ; $75e0: $a6
	sbc  c                                           ; $75e1: $99
	ld   l, c                                        ; $75e2: $69
	ld   l, e                                        ; $75e3: $6b
	ld   a, b                                        ; $75e4: $78
	ld   l, c                                        ; $75e5: $69
	add  a                                           ; $75e6: $87
	sbc  b                                           ; $75e7: $98
	and  l                                           ; $75e8: $a5
	xor  d                                           ; $75e9: $aa
	ld   e, b                                        ; $75ea: $58
	or   a                                           ; $75eb: $b7
	ld   c, e                                        ; $75ec: $4b
	add  [hl]                                        ; $75ed: $86
	sbc  c                                           ; $75ee: $99
	ld   l, c                                        ; $75ef: $69
	and  a                                           ; $75f0: $a7
	ld   a, c                                        ; $75f1: $79
	and  [hl]                                        ; $75f2: $a6
	ld   l, b                                        ; $75f3: $68
	and  a                                           ; $75f4: $a7
	ld   a, b                                        ; $75f5: $78
	add  $6c                                         ; $75f6: $c6 $6c
	ld   h, a                                        ; $75f8: $67
	ld   a, c                                        ; $75f9: $79
	adc  c                                           ; $75fa: $89
	ld   e, c                                        ; $75fb: $59
	or   l                                           ; $75fc: $b5
	ld   a, b                                        ; $75fd: $78
	db   $d3                                         ; $75fe: $d3
	sub  a                                           ; $75ff: $97
	adc  d                                           ; $7600: $8a
	dec  sp                                          ; $7601: $3b
	ld   l, c                                        ; $7602: $69
	ld   [hl], a                                     ; $7603: $77
	add  a                                           ; $7604: $87
	or   [hl]                                        ; $7605: $b6
	sub  a                                           ; $7606: $97
	and  [hl]                                        ; $7607: $a6
	adc  c                                           ; $7608: $89
	ld   a, e                                        ; $7609: $7b
	ld   l, c                                        ; $760a: $69
	ld   c, d                                        ; $760b: $4a
	ld   e, c                                        ; $760c: $59
	add  [hl]                                        ; $760d: $86
	push bc                                          ; $760e: $c5
	and  l                                           ; $760f: $a5
	sub  a                                           ; $7610: $97
	or   e                                           ; $7611: $b3
	ld   a, h                                        ; $7612: $7c
	ld   l, c                                        ; $7613: $69
	ld   a, $77                                      ; $7614: $3e $77
	add  a                                           ; $7616: $87
	ld   a, d                                        ; $7617: $7a
	or   h                                           ; $7618: $b4
	or   [hl]                                        ; $7619: $b6
	sub  a                                           ; $761a: $97
	ld   a, d                                        ; $761b: $7a
	ld   [hl], a                                     ; $761c: $77
	sbc  c                                           ; $761d: $99
	ld   e, d                                        ; $761e: $5a
	ld   [hl], a                                     ; $761f: $77
	and  a                                           ; $7620: $a7
	sub  l                                           ; $7621: $95
	sbc  d                                           ; $7622: $9a
	ld   c, b                                        ; $7623: $48
	adc  l                                           ; $7624: $8d
	add  [hl]                                        ; $7625: $86
	push bc                                          ; $7626: $c5
	sub  [hl]                                        ; $7627: $96
	cp   b                                           ; $7628: $b8
	ld   e, c                                        ; $7629: $59
	ld   e, d                                        ; $762a: $5a
	ld   e, c                                        ; $762b: $59
	ld   a, c                                        ; $762c: $79
	or   h                                           ; $762d: $b4
	sub  $b4                                         ; $762e: $d6 $b4
	ld   a, h                                        ; $7630: $7c
	ld   l, d                                        ; $7631: $6a
	ld   e, h                                        ; $7632: $5c
	ld   a, c                                        ; $7633: $79
	add  [hl]                                        ; $7634: $86
	adc  b                                           ; $7635: $88
	ld   l, b                                        ; $7636: $68
	xor  c                                           ; $7637: $a9
	ld   [hl], h                                     ; $7638: $74
	or   [hl]                                        ; $7639: $b6
	db   $e4                                         ; $763a: $e4
	ld   e, h                                        ; $763b: $5c
	add  a                                           ; $763c: $87
	ld   c, h                                        ; $763d: $4c
	adc  c                                           ; $763e: $89
	ld   c, d                                        ; $763f: $4a
	sub  a                                           ; $7640: $97
	sub  l                                           ; $7641: $95
	adc  b                                           ; $7642: $88
	jp   $9898                                       ; $7643: $c3 $98 $98


	ld   l, d                                        ; $7646: $6a
	ld   a, b                                        ; $7647: $78
	ld   e, l                                        ; $7648: $5d
	ld   e, b                                        ; $7649: $58
	ld   l, b                                        ; $764a: $68
	pop  de                                          ; $764b: $d1
	or   a                                           ; $764c: $b7
	ld   e, d                                        ; $764d: $5a
	adc  d                                           ; $764e: $8a
	ld   e, d                                        ; $764f: $5a
	halt                                             ; $7650: $76
	or   l                                           ; $7651: $b5
	xor  b                                           ; $7652: $a8
	sub  a                                           ; $7653: $97
	ld   e, e                                        ; $7654: $5b
	ld   a, c                                        ; $7655: $79
	ld   a, c                                        ; $7656: $79
	ld   [hl], l                                     ; $7657: $75
	sbc  c                                           ; $7658: $99
	add  a                                           ; $7659: $87
	or   a                                           ; $765a: $b7
	ld   c, c                                        ; $765b: $49
	sub  a                                           ; $765c: $97
	ld   a, b                                        ; $765d: $78
	add  a                                           ; $765e: $87
	cp   b                                           ; $765f: $b8
	halt                                             ; $7660: $76
	xor  d                                           ; $7661: $aa
	ld   c, c                                        ; $7662: $49
	ld   a, c                                        ; $7663: $79
	ld   c, [hl]                                     ; $7664: $4e
	add  e                                           ; $7665: $83
	sub  $c3                                         ; $7666: $d6 $c3
	adc  c                                           ; $7668: $89
	adc  h                                           ; $7669: $8c
	dec  hl                                          ; $766a: $2b
	ld   [hl], a                                     ; $766b: $77
	ld   a, d                                        ; $766c: $7a
	ld   a, b                                        ; $766d: $78
	call nz, $87a8                                   ; $766e: $c4 $a8 $87
	ld   e, d                                        ; $7671: $5a
	or   a                                           ; $7672: $b7
	ld   d, a                                        ; $7673: $57
	sbc  c                                           ; $7674: $99
	add  [hl]                                        ; $7675: $86
	ld   l, d                                        ; $7676: $6a
	ld   a, d                                        ; $7677: $7a
	ld   l, d                                        ; $7678: $6a
	sub  h                                           ; $7679: $94
	sbc  e                                           ; $767a: $9b
	add  a                                           ; $767b: $87
	sub  [hl]                                        ; $767c: $96
	add  a                                           ; $767d: $87
	sbc  b                                           ; $767e: $98
	ld   l, d                                        ; $767f: $6a
	ld   [hl], a                                     ; $7680: $77
	and  a                                           ; $7681: $a7
	ld   a, d                                        ; $7682: $7a
	ld   l, b                                        ; $7683: $68
	add  $99                                         ; $7684: $c6 $99
	ld   a, b                                        ; $7686: $78
	ld   l, d                                        ; $7687: $6a
	ld   c, c                                        ; $7688: $49
	sub  a                                           ; $7689: $97
	adc  b                                           ; $768a: $88
	and  l                                           ; $768b: $a5
	push bc                                          ; $768c: $c5
	ld   [hl], a                                     ; $768d: $77
	ld   a, e                                        ; $768e: $7b
	ld   h, a                                        ; $768f: $67
	sbc  d                                           ; $7690: $9a
	inc  l                                           ; $7691: $2c
	and  h                                           ; $7692: $a4
	and  a                                           ; $7693: $a7
	add  [hl]                                        ; $7694: $86
	sbc  l                                           ; $7695: $9d
	ld   c, b                                        ; $7696: $48
	ld   a, b                                        ; $7697: $78
	and  h                                           ; $7698: $a4
	or   [hl]                                        ; $7699: $b6
	sub  h                                           ; $769a: $94
	xor  b                                           ; $769b: $a8
	ld   e, e                                        ; $769c: $5b
	inc  a                                           ; $769d: $3c
	ld   l, l                                        ; $769e: $6d
	ld   [hl], l                                     ; $769f: $75
	xor  e                                           ; $76a0: $ab
	ld   h, l                                        ; $76a1: $65
	and  a                                           ; $76a2: $a7
	jp   nz, $b6c4                                   ; $76a3: $c2 $c4 $b6

	ld   e, e                                        ; $76a6: $5b
	dec  a                                           ; $76a7: $3d
	dec  l                                           ; $76a8: $2d
	ld   a, b                                        ; $76a9: $78
	sub  e                                           ; $76aa: $93
	sbc  b                                           ; $76ab: $98
	add  l                                           ; $76ac: $85
	sbc  c                                           ; $76ad: $99
	and  d                                           ; $76ae: $a2
	cp   d                                           ; $76af: $ba
	sub  [hl]                                        ; $76b0: $96
	ld   c, h                                        ; $76b1: $4c
	ld   l, h                                        ; $76b2: $6c
	add  hl, hl                                      ; $76b3: $29
	ld   a, b                                        ; $76b4: $78
	sub  [hl]                                        ; $76b5: $96
	and  d                                           ; $76b6: $a2
	or   $85                                         ; $76b7: $f6 $85

Call_0ad_76b9:
	sbc  h                                           ; $76b9: $9c
	dec  a                                           ; $76ba: $3d
	dec  hl                                          ; $76bb: $2b
	sub  [hl]                                        ; $76bc: $96
	ld   l, d                                        ; $76bd: $6a
	or   h                                           ; $76be: $b4
	and  l                                           ; $76bf: $a5
	ld   a, b                                        ; $76c0: $78
	and  l                                           ; $76c1: $a5
	cp   d                                           ; $76c2: $ba
	sub  a                                           ; $76c3: $97
	ld   c, e                                        ; $76c4: $4b
	ld   l, b                                        ; $76c5: $68
	ld   e, d                                        ; $76c6: $5a
	sub  l                                           ; $76c7: $95
	ld   a, c                                        ; $76c8: $79
	ld   h, l                                        ; $76c9: $65
	ld   l, c                                        ; $76ca: $69
	sub  e                                           ; $76cb: $93
	and  a                                           ; $76cc: $a7
	sub  [hl]                                        ; $76cd: $96
	or   a                                           ; $76ce: $b7
	ld   a, e                                        ; $76cf: $7b
	ld   l, l                                        ; $76d0: $6d
	ld   l, l                                        ; $76d1: $6d
	ld   a, c                                        ; $76d2: $79
	or   [hl]                                        ; $76d3: $b6
	sbc  b                                           ; $76d4: $98
	and  d                                           ; $76d5: $a2
	xor  b                                           ; $76d6: $a8
	ld   h, [hl]                                     ; $76d7: $66
	ld   d, h                                        ; $76d8: $54
	ld   d, [hl]                                     ; $76d9: $56
	rla                                              ; $76da: $17
	ld   a, d                                        ; $76db: $7a
	ld   b, a                                        ; $76dc: $47
	cp   c                                           ; $76dd: $b9
	cp   b                                           ; $76de: $b8
	jp   c, $abfb                                    ; $76df: $da $fb $ab

	sbc  e                                           ; $76e2: $9b
	adc  e                                           ; $76e3: $8b
	ld   e, c                                        ; $76e4: $59
	ld   h, a                                        ; $76e5: $67
	ld   h, c                                        ; $76e6: $61
	sub  e                                           ; $76e7: $93
	inc  h                                           ; $76e8: $24
	ld   [hl], $37                                   ; $76e9: $36 $37
	ld   e, e                                        ; $76eb: $5b
	adc  l                                           ; $76ec: $8d
	rst  $30                                         ; $76ed: $f7
	db   $fd                                         ; $76ee: $fd
	ei                                               ; $76ef: $fb
	db   $db                                         ; $76f0: $db
	call z, $3f88                                    ; $76f1: $cc $88 $3f
	ld   d, $11                                      ; $76f4: $16 $11
	add  c                                           ; $76f6: $81
	ld   [hl], c                                     ; $76f7: $71
	ld   d, d                                        ; $76f8: $52
	ld   [hl], $7a                                   ; $76f9: $36 $7a
	adc  [hl]                                        ; $76fb: $8e
	cp   a                                           ; $76fc: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76fd: $cf
	rst  $38                                         ; $76fe: $ff
	ld   a, [$bafb]                                  ; $76ff: $fa $fb $ba
	ld   e, b                                        ; $7702: $58
	add  hl, sp                                      ; $7703: $39
	ld   de, $1131                                   ; $7704: $11 $31 $11
	ld   b, c                                        ; $7707: $41
	dec  h                                           ; $7708: $25
	ld   l, e                                        ; $7709: $6b
	sbc  [hl]                                        ; $770a: $9e
	rst  JumpTable                                         ; $770b: $df
	rst  $28                                         ; $770c: $ef
	db   $fd                                         ; $770d: $fd
	db   $fd                                         ; $770e: $fd
	sbc  h                                           ; $770f: $9c
	ld   sp, hl                                      ; $7710: $f9
	ld   b, h                                        ; $7711: $44
	ld   [hl], d                                     ; $7712: $72
	ld   [de], a                                     ; $7713: $12
	ld   de, $1111                                   ; $7714: $11 $11 $11
	ld   b, d                                        ; $7717: $42
	ld   a, b                                        ; $7718: $78
	rst  JumpTable                                         ; $7719: $df
	rst  $38                                         ; $771a: $ff
	rst  $38                                         ; $771b: $ff
	rst  $38                                         ; $771c: $ff
	rst  $38                                         ; $771d: $ff
	db   $db                                         ; $771e: $db
	adc  b                                           ; $771f: $88
	jp   $3141                                       ; $7720: $c3 $41 $31


	ld   de, $1112                                   ; $7723: $11 $12 $11
	ld   d, h                                        ; $7726: $54
	ld   d, [hl]                                     ; $7727: $56
	cp   a                                           ; $7728: $bf
	rst  $38                                         ; $7729: $ff
	rst  $38                                         ; $772a: $ff
	rst  $38                                         ; $772b: $ff
	rst  $38                                         ; $772c: $ff
	ld   sp, hl                                      ; $772d: $f9
	adc  d                                           ; $772e: $8a
	add  l                                           ; $772f: $85
	inc  de                                          ; $7730: $13
	ld   de, $2111                                   ; $7731: $11 $11 $21
	ld   de, $5845                                   ; $7734: $11 $45 $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7737: $cf
	rst  $38                                         ; $7738: $ff
	rst  $38                                         ; $7739: $ff
	rst  $38                                         ; $773a: $ff
	rst  $38                                         ; $773b: $ff
	rst  $30                                         ; $773c: $f7
	ld   e, h                                        ; $773d: $5c
	ld   b, h                                        ; $773e: $44
	ld   de, $1111                                   ; $773f: $11 $11 $11
	inc  de                                          ; $7742: $13
	ld   de, $5b69                                   ; $7743: $11 $69 $5b
	rst  $38                                         ; $7746: $ff
	rst  $38                                         ; $7747: $ff
	rst  $38                                         ; $7748: $ff
	rst  $38                                         ; $7749: $ff
	rst  $38                                         ; $774a: $ff
	add  $5a                                         ; $774b: $c6 $5a
	ld   de, $1111                                   ; $774d: $11 $11 $11
	ld   de, $1711                                   ; $7750: $11 $11 $17
	ld   a, e                                        ; $7753: $7b
	cp   a                                           ; $7754: $bf
	rst  $38                                         ; $7755: $ff
	rst  $38                                         ; $7756: $ff
	rst  $38                                         ; $7757: $ff
	rst  $38                                         ; $7758: $ff
	db   $fc                                         ; $7759: $fc

Call_0ad_775a:
	ld   [hl], $52                                   ; $775a: $36 $52
	ld   de, $1111                                   ; $775c: $11 $11 $11
	ld   de, $1911                                   ; $775f: $11 $11 $19
	cp   a                                           ; $7762: $bf
	rst  $38                                         ; $7763: $ff
	rst  $38                                         ; $7764: $ff
	rst  $38                                         ; $7765: $ff
	rst  $38                                         ; $7766: $ff
	db   $fd                                         ; $7767: $fd
	rst  $10                                         ; $7768: $d7
	ld   [hl-], a                                    ; $7769: $32
	ld   de, $1111                                   ; $776a: $11 $11 $11
	ld   de, $2611                                   ; $776d: $11 $11 $26
	call c, $ffff                                    ; $7770: $dc $ff $ff
	rst  $38                                         ; $7773: $ff
	rst  $38                                         ; $7774: $ff
	rst  $38                                         ; $7775: $ff
	and  l                                           ; $7776: $a5
	ld   b, c                                        ; $7777: $41
	ld   de, $1111                                   ; $7778: $11 $11 $11
	ld   de, $4311                                   ; $777b: $11 $11 $43
	rst  $28                                         ; $777e: $ef
	rst  $38                                         ; $777f: $ff
	rst  $38                                         ; $7780: $ff
	rst  $38                                         ; $7781: $ff
	rst  $38                                         ; $7782: $ff
	rst  $38                                         ; $7783: $ff
	push de                                          ; $7784: $d5
	ld   [hl+], a                                    ; $7785: $22
	ld   de, $1111                                   ; $7786: $11 $11 $11
	ld   de, $1b12                                   ; $7789: $11 $12 $1b
	cp   a                                           ; $778c: $bf
	rst  $38                                         ; $778d: $ff
	rst  $38                                         ; $778e: $ff
	rst  $38                                         ; $778f: $ff
	rst  $38                                         ; $7790: $ff
	rst  $38                                         ; $7791: $ff
	add  a                                           ; $7792: $87
	ld   de, $1111                                   ; $7793: $11 $11 $11
	ld   de, $1111                                   ; $7796: $11 $11 $11
	adc  b                                           ; $7799: $88
	rst  $38                                         ; $779a: $ff
	rst  $38                                         ; $779b: $ff
	rst  $38                                         ; $779c: $ff
	rst  $38                                         ; $779d: $ff
	rst  $38                                         ; $779e: $ff
	db   $fc                                         ; $779f: $fc
	ld   d, h                                        ; $77a0: $54
	ld   de, $1111                                   ; $77a1: $11 $11 $11
	ld   de, $1611                                   ; $77a4: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77a7: $cf

Call_0ad_77a8:
	rst  $38                                         ; $77a8: $ff
	rst  $38                                         ; $77a9: $ff
	rst  $38                                         ; $77aa: $ff
	rst  $38                                         ; $77ab: $ff
	rst  $38                                         ; $77ac: $ff
	db   $f4                                         ; $77ad: $f4
	ld   hl, $1111                                   ; $77ae: $21 $11 $11
	ld   de, $1111                                   ; $77b1: $11 $11 $11
	dec  sp                                          ; $77b4: $3b
	rst  $38                                         ; $77b5: $ff
	rst  $38                                         ; $77b6: $ff
	rst  $38                                         ; $77b7: $ff
	rst  $38                                         ; $77b8: $ff
	rst  $38                                         ; $77b9: $ff
	rst  $38                                         ; $77ba: $ff
	ld   [hl], c                                     ; $77bb: $71
	ld   de, $1111                                   ; $77bc: $11 $11 $11
	ld   de, $1411                                   ; $77bf: $11 $11 $14
	cp   a                                           ; $77c2: $bf
	rst  $38                                         ; $77c3: $ff
	rst  $38                                         ; $77c4: $ff
	rst  $38                                         ; $77c5: $ff
	rst  $38                                         ; $77c6: $ff
	rst  $38                                         ; $77c7: $ff
	db   $e3                                         ; $77c8: $e3
	ld   hl, $1111                                   ; $77c9: $21 $11 $11
	ld   de, $1111                                   ; $77cc: $11 $11 $11
	adc  a                                           ; $77cf: $8f
	rst  $38                                         ; $77d0: $ff
	rst  $38                                         ; $77d1: $ff
	rst  $38                                         ; $77d2: $ff
	rst  $38                                         ; $77d3: $ff
	rst  $38                                         ; $77d4: $ff
	ei                                               ; $77d5: $fb
	ld   d, c                                        ; $77d6: $51
	ld   de, $1111                                   ; $77d7: $11 $11 $11
	ld   de, $1c11                                   ; $77da: $11 $11 $1c
	rst  $38                                         ; $77dd: $ff
	rst  $38                                         ; $77de: $ff
	rst  $38                                         ; $77df: $ff
	rst  $38                                         ; $77e0: $ff
	rst  $38                                         ; $77e1: $ff
	rst  $38                                         ; $77e2: $ff
	or   c                                           ; $77e3: $b1
	ld   de, $1111                                   ; $77e4: $11 $11 $11
	ld   de, $1411                                   ; $77e7: $11 $11 $14
	cp   a                                           ; $77ea: $bf
	rst  $38                                         ; $77eb: $ff
	rst  $38                                         ; $77ec: $ff
	rst  $38                                         ; $77ed: $ff
	rst  $38                                         ; $77ee: $ff
	rst  $38                                         ; $77ef: $ff
	ld   hl, sp+$11                                  ; $77f0: $f8 $11
	ld   de, $1111                                   ; $77f2: $11 $11 $11
	ld   de, $4f11                                   ; $77f5: $11 $11 $4f
	rst  $38                                         ; $77f8: $ff
	rst  $38                                         ; $77f9: $ff
	rst  $38                                         ; $77fa: $ff
	rst  $38                                         ; $77fb: $ff
	rst  $38                                         ; $77fc: $ff
	db   $fd                                         ; $77fd: $fd
	ld   h, c                                        ; $77fe: $61
	ld   de, $1111                                   ; $77ff: $11 $11 $11
	ld   de, $1b11                                   ; $7802: $11 $11 $1b
	rst  $38                                         ; $7805: $ff
	rst  $38                                         ; $7806: $ff
	rst  $38                                         ; $7807: $ff
	rst  $38                                         ; $7808: $ff
	rst  $38                                         ; $7809: $ff
	cp   $b2                                         ; $780a: $fe $b2
	ld   de, $1111                                   ; $780c: $11 $11 $11
	ld   de, $1711                                   ; $780f: $11 $11 $17
	cp   a                                           ; $7812: $bf
	rst  $38                                         ; $7813: $ff
	rst  $38                                         ; $7814: $ff
	rst  $38                                         ; $7815: $ff
	rst  $38                                         ; $7816: $ff
	rst  $38                                         ; $7817: $ff
	rst  $20                                         ; $7818: $e7
	ld   hl, $1111                                   ; $7819: $21 $11 $11
	ld   de, $1111                                   ; $781c: $11 $11 $11
	sbc  a                                           ; $781f: $9f
	rst  $38                                         ; $7820: $ff
	rst  $38                                         ; $7821: $ff
	rst  $38                                         ; $7822: $ff
	rst  $38                                         ; $7823: $ff
	rst  $38                                         ; $7824: $ff
	db   $ec                                         ; $7825: $ec
	ld   d, c                                        ; $7826: $51
	ld   de, $1111                                   ; $7827: $11 $11 $11
	ld   de, $8d11                                   ; $782a: $11 $11 $8d
	rst  $38                                         ; $782d: $ff
	rst  $38                                         ; $782e: $ff
	rst  $38                                         ; $782f: $ff
	rst  $38                                         ; $7830: $ff
	rst  $38                                         ; $7831: $ff
	cp   $61                                         ; $7832: $fe $61
	ld   de, $1111                                   ; $7834: $11 $11 $11
	ld   de, $5c11                                   ; $7837: $11 $11 $5c
	rst  $38                                         ; $783a: $ff
	rst  $38                                         ; $783b: $ff
	rst  $38                                         ; $783c: $ff
	rst  $38                                         ; $783d: $ff
	rst  $38                                         ; $783e: $ff
	rst  $38                                         ; $783f: $ff
	add  c                                           ; $7840: $81
	ld   de, $1111                                   ; $7841: $11 $11 $11
	ld   de, $5c11                                   ; $7844: $11 $11 $5c
	rst  $38                                         ; $7847: $ff
	rst  $38                                         ; $7848: $ff
	rst  $38                                         ; $7849: $ff
	rst  $38                                         ; $784a: $ff
	rst  $38                                         ; $784b: $ff
	rst  $38                                         ; $784c: $ff
	pop  bc                                          ; $784d: $c1
	ld   de, $1111                                   ; $784e: $11 $11 $11
	ld   de, $1b11                                   ; $7851: $11 $11 $1b
	rst  $38                                         ; $7854: $ff
	rst  $38                                         ; $7855: $ff
	rst  $38                                         ; $7856: $ff
	rst  $38                                         ; $7857: $ff
	rst  $38                                         ; $7858: $ff
	rst  $38                                         ; $7859: $ff
	db   $e4                                         ; $785a: $e4
	ld   de, $1111                                   ; $785b: $11 $11 $11
	ld   de, $1811                                   ; $785e: $11 $11 $18
	rst  JumpTable                                         ; $7861: $df
	rst  $38                                         ; $7862: $ff
	rst  $38                                         ; $7863: $ff
	rst  $38                                         ; $7864: $ff
	rst  $38                                         ; $7865: $ff
	rst  $38                                         ; $7866: $ff
	ld   sp, hl                                      ; $7867: $f9
	ld   de, $1111                                   ; $7868: $11 $11 $11
	ld   de, $1211                                   ; $786b: $11 $11 $12
	xor  a                                           ; $786e: $af
	rst  $38                                         ; $786f: $ff
	rst  $38                                         ; $7870: $ff
	rst  $38                                         ; $7871: $ff
	rst  $38                                         ; $7872: $ff
	rst  $38                                         ; $7873: $ff
	db   $fc                                         ; $7874: $fc
	ld   h, c                                        ; $7875: $61
	ld   de, $1111                                   ; $7876: $11 $11 $11
	ld   de, $4a11                                   ; $7879: $11 $11 $4a
	rst  $38                                         ; $787c: $ff
	rst  $38                                         ; $787d: $ff
	rst  $38                                         ; $787e: $ff
	rst  $38                                         ; $787f: $ff
	rst  $38                                         ; $7880: $ff
	rst  $38                                         ; $7881: $ff
	jp   hl                                          ; $7882: $e9


	ld   b, c                                        ; $7883: $41
	ld   de, $1111                                   ; $7884: $11 $11 $11
	ld   de, $5911                                   ; $7887: $11 $11 $59
	rst  JumpTable                                         ; $788a: $df
	rst  $38                                         ; $788b: $ff
	rst  $38                                         ; $788c: $ff
	rst  $38                                         ; $788d: $ff
	rst  $38                                         ; $788e: $ff
	rst  $38                                         ; $788f: $ff
	push bc                                          ; $7890: $c5
	ld   de, $1111                                   ; $7891: $11 $11 $11
	ld   de, $1311                                   ; $7894: $11 $11 $13
	adc  l                                           ; $7897: $8d
	rst  $38                                         ; $7898: $ff
	rst  $38                                         ; $7899: $ff
	rst  $38                                         ; $789a: $ff
	rst  $38                                         ; $789b: $ff
	rst  $38                                         ; $789c: $ff
	db   $fc                                         ; $789d: $fc
	ld   b, c                                        ; $789e: $41
	ld   de, $1111                                   ; $789f: $11 $11 $11
	ld   de, $2711                                   ; $78a2: $11 $11 $27
	rst  JumpTable                                         ; $78a5: $df
	rst  $38                                         ; $78a6: $ff
	rst  $38                                         ; $78a7: $ff
	rst  $38                                         ; $78a8: $ff
	rst  $38                                         ; $78a9: $ff
	rst  $38                                         ; $78aa: $ff
	push bc                                          ; $78ab: $c5
	ld   de, $1111                                   ; $78ac: $11 $11 $11
	ld   de, $1111                                   ; $78af: $11 $11 $11
	ld   e, d                                        ; $78b2: $5a
	rst  $38                                         ; $78b3: $ff
	rst  $38                                         ; $78b4: $ff
	rst  $38                                         ; $78b5: $ff
	rst  $38                                         ; $78b6: $ff
	rst  $38                                         ; $78b7: $ff
	db   $fd                                         ; $78b8: $fd
	ld   [hl], c                                     ; $78b9: $71
	ld   de, $1111                                   ; $78ba: $11 $11 $11
	ld   de, $1511                                   ; $78bd: $11 $11 $15
	xor  a                                           ; $78c0: $af
	rst  $38                                         ; $78c1: $ff
	rst  $38                                         ; $78c2: $ff
	rst  $38                                         ; $78c3: $ff
	rst  $38                                         ; $78c4: $ff
	rst  $38                                         ; $78c5: $ff
	add  sp, $11                                     ; $78c6: $e8 $11
	ld   de, $1111                                   ; $78c8: $11 $11 $11
	ld   de, $3911                                   ; $78cb: $11 $11 $39
	rst  $28                                         ; $78ce: $ef
	rst  $38                                         ; $78cf: $ff
	rst  $38                                         ; $78d0: $ff
	rst  $38                                         ; $78d1: $ff
	rst  $38                                         ; $78d2: $ff
	rst  $38                                         ; $78d3: $ff
	sub  e                                           ; $78d4: $93
	ld   de, $1111                                   ; $78d5: $11 $11 $11
	ld   de, $1211                                   ; $78d8: $11 $11 $12
	ld   a, [hl]                                     ; $78db: $7e
	rst  $38                                         ; $78dc: $ff
	rst  $38                                         ; $78dd: $ff
	rst  $38                                         ; $78de: $ff
	rst  $38                                         ; $78df: $ff
	rst  $38                                         ; $78e0: $ff
	ld   sp, hl                                      ; $78e1: $f9
	ld   sp, $1111                                   ; $78e2: $31 $11 $11
	ld   de, $1111                                   ; $78e5: $11 $11 $11
	daa                                              ; $78e8: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78e9: $cf
	rst  $38                                         ; $78ea: $ff
	rst  $38                                         ; $78eb: $ff
	rst  $38                                         ; $78ec: $ff
	rst  $38                                         ; $78ed: $ff
	rst  $38                                         ; $78ee: $ff
	and  h                                           ; $78ef: $a4
	ld   de, $1111                                   ; $78f0: $11 $11 $11
	ld   de, $1211                                   ; $78f3: $11 $11 $12
	ld   l, h                                        ; $78f6: $6c
	rst  $38                                         ; $78f7: $ff
	rst  $38                                         ; $78f8: $ff
	rst  $38                                         ; $78f9: $ff
	rst  $38                                         ; $78fa: $ff
	rst  $38                                         ; $78fb: $ff
	ei                                               ; $78fc: $fb
	ld   b, c                                        ; $78fd: $41
	ld   de, $1111                                   ; $78fe: $11 $11 $11
	ld   de, $1611                                   ; $7901: $11 $11 $16
	cp   a                                           ; $7904: $bf
	rst  $38                                         ; $7905: $ff
	rst  $38                                         ; $7906: $ff
	rst  $38                                         ; $7907: $ff
	rst  $38                                         ; $7908: $ff
	rst  $38                                         ; $7909: $ff
	and  h                                           ; $790a: $a4
	ld   de, $1111                                   ; $790b: $11 $11 $11
	ld   de, $1111                                   ; $790e: $11 $11 $11
	ld   l, e                                        ; $7911: $6b
	rst  $38                                         ; $7912: $ff

Jump_0ad_7913:
	rst  $38                                         ; $7913: $ff
	rst  $38                                         ; $7914: $ff
	rst  $38                                         ; $7915: $ff
	rst  $38                                         ; $7916: $ff
	ld   a, [$1141]                                  ; $7917: $fa $41 $11
	ld   de, $1111                                   ; $791a: $11 $11 $11
	ld   de, $bf16                                   ; $791d: $11 $16 $bf
	rst  $38                                         ; $7920: $ff
	rst  $38                                         ; $7921: $ff
	rst  $38                                         ; $7922: $ff
	rst  $38                                         ; $7923: $ff
	rst  $38                                         ; $7924: $ff
	sub  e                                           ; $7925: $93
	ld   de, $1111                                   ; $7926: $11 $11 $11
	ld   de, $1211                                   ; $7929: $11 $11 $12
	ld   l, h                                        ; $792c: $6c
	rst  $38                                         ; $792d: $ff
	rst  $38                                         ; $792e: $ff
	rst  $38                                         ; $792f: $ff
	rst  $38                                         ; $7930: $ff
	rst  $38                                         ; $7931: $ff
	ld   hl, sp+$21                                  ; $7932: $f8 $21
	ld   de, $1111                                   ; $7934: $11 $11 $11
	ld   de, $3711                                   ; $7937: $11 $11 $37
	rst  JumpTable                                         ; $793a: $df
	rst  $38                                         ; $793b: $ff
	rst  $38                                         ; $793c: $ff
	rst  $38                                         ; $793d: $ff
	rst  $38                                         ; $793e: $ff
	db   $fd                                         ; $793f: $fd
	ld   [hl], c                                     ; $7940: $71
	ld   de, $1111                                   ; $7941: $11 $11 $11
	ld   de, $1311                                   ; $7944: $11 $11 $13
	sbc  [hl]                                        ; $7947: $9e
	rst  $38                                         ; $7948: $ff
	rst  $38                                         ; $7949: $ff
	rst  $38                                         ; $794a: $ff
	rst  $38                                         ; $794b: $ff
	rst  $38                                         ; $794c: $ff
	push bc                                          ; $794d: $c5
	ld   de, $1111                                   ; $794e: $11 $11 $11
	ld   de, $1111                                   ; $7951: $11 $11 $11
	ld   e, d                                        ; $7954: $5a
	rst  $38                                         ; $7955: $ff
	rst  $38                                         ; $7956: $ff
	rst  $38                                         ; $7957: $ff
	rst  $38                                         ; $7958: $ff
	rst  $38                                         ; $7959: $ff
	ld   sp, hl                                      ; $795a: $f9
	ld   sp, $1111                                   ; $795b: $31 $11 $11
	ld   de, $1111                                   ; $795e: $11 $11 $11
	ld   h, $cf                                      ; $7961: $26 $cf
	rst  $38                                         ; $7963: $ff
	rst  $38                                         ; $7964: $ff
	rst  $38                                         ; $7965: $ff
	rst  $38                                         ; $7966: $ff
	cp   $71                                         ; $7967: $fe $71
	ld   de, $1111                                   ; $7969: $11 $11 $11
	ld   de, $1411                                   ; $796c: $11 $11 $14
	sbc  a                                           ; $796f: $9f
	rst  $38                                         ; $7970: $ff
	rst  $38                                         ; $7971: $ff
	rst  $38                                         ; $7972: $ff
	rst  $38                                         ; $7973: $ff
	rst  $38                                         ; $7974: $ff
	and  e                                           ; $7975: $a3
	ld   de, $1111                                   ; $7976: $11 $11 $11
	ld   de, $1211                                   ; $7979: $11 $11 $12
	ld   l, l                                        ; $797c: $6d
	rst  $38                                         ; $797d: $ff
	rst  $38                                         ; $797e: $ff
	rst  $38                                         ; $797f: $ff
	rst  $38                                         ; $7980: $ff
	rst  $38                                         ; $7981: $ff
	push bc                                          ; $7982: $c5
	ld   de, $1111                                   ; $7983: $11 $11 $11
	ld   de, $1111                                   ; $7986: $11 $11 $11
	ld   e, d                                        ; $7989: $5a
	rst  $38                                         ; $798a: $ff
	rst  $38                                         ; $798b: $ff
	rst  $38                                         ; $798c: $ff
	rst  $38                                         ; $798d: $ff
	rst  $38                                         ; $798e: $ff
	rst  $20                                         ; $798f: $e7
	ld   de, $1111                                   ; $7990: $11 $11 $11
	ld   de, $1111                                   ; $7993: $11 $11 $11
	ld   c, c                                        ; $7996: $49
	rst  $38                                         ; $7997: $ff
	rst  $38                                         ; $7998: $ff
	rst  $38                                         ; $7999: $ff
	rst  $38                                         ; $799a: $ff
	rst  $38                                         ; $799b: $ff
	ld   hl, sp+$11                                  ; $799c: $f8 $11
	ld   de, $1111                                   ; $799e: $11 $11 $11
	ld   de, $4911                                   ; $79a1: $11 $11 $49
	rst  $38                                         ; $79a4: $ff
	rst  $38                                         ; $79a5: $ff
	rst  $38                                         ; $79a6: $ff
	rst  $38                                         ; $79a7: $ff
	rst  $38                                         ; $79a8: $ff
	or   $11                                         ; $79a9: $f6 $11
	ld   de, $1111                                   ; $79ab: $11 $11 $11
	ld   de, $6d11                                   ; $79ae: $11 $11 $6d
	rst  $38                                         ; $79b1: $ff
	rst  $38                                         ; $79b2: $ff
	rst  $38                                         ; $79b3: $ff
	rst  $38                                         ; $79b4: $ff
	rst  $38                                         ; $79b5: $ff
	jp   $1111                                       ; $79b6: $c3 $11 $11


	ld   de, $1111                                   ; $79b9: $11 $11 $11
	inc  de                                          ; $79bc: $13
	xor  a                                           ; $79bd: $af
	rst  $38                                         ; $79be: $ff
	rst  $38                                         ; $79bf: $ff
	rst  $38                                         ; $79c0: $ff
	rst  $38                                         ; $79c1: $ff
	cp   $71                                         ; $79c2: $fe $71
	ld   de, $1111                                   ; $79c4: $11 $11 $11
	ld   de, $3811                                   ; $79c7: $11 $11 $38
	rst  $28                                         ; $79ca: $ef
	rst  $38                                         ; $79cb: $ff
	rst  $38                                         ; $79cc: $ff
	rst  $38                                         ; $79cd: $ff
	rst  $38                                         ; $79ce: $ff
	and  $11                                         ; $79cf: $e6 $11
	ld   de, $1111                                   ; $79d1: $11 $11 $11
	ld   de, $9d15                                   ; $79d4: $11 $15 $9d
	rst  $38                                         ; $79d7: $ff
	rst  $38                                         ; $79d8: $ff
	rst  $38                                         ; $79d9: $ff
	rst  $38                                         ; $79da: $ff
	cp   $61                                         ; $79db: $fe $61
	ld   de, $1111                                   ; $79dd: $11 $11 $11
	ld   de, $6913                                   ; $79e0: $11 $13 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79e3: $cf
	rst  $38                                         ; $79e4: $ff
	rst  $38                                         ; $79e5: $ff
	rst  $38                                         ; $79e6: $ff
	rst  $38                                         ; $79e7: $ff
	sub  $11                                         ; $79e8: $d6 $11
	ld   de, $1111                                   ; $79ea: $11 $11 $11
	ld   de, $9c46                                   ; $79ed: $11 $46 $9c
	rst  $38                                         ; $79f0: $ff
	rst  $38                                         ; $79f1: $ff
	rst  $38                                         ; $79f2: $ff
	rst  $38                                         ; $79f3: $ff
	db   $fc                                         ; $79f4: $fc
	ld   b, c                                        ; $79f5: $41
	ld   de, $1111                                   ; $79f6: $11 $11 $11
	ld   de, $7915                                   ; $79f9: $11 $15 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79fc: $cf
	rst  $38                                         ; $79fd: $ff
	rst  $38                                         ; $79fe: $ff
	rst  $38                                         ; $79ff: $ff
	rst  $38                                         ; $7a00: $ff
	sub  c                                           ; $7a01: $91
	ld   de, $1111                                   ; $7a02: $11 $11 $11
	ld   de, $7714                                   ; $7a05: $11 $14 $77
	adc  [hl]                                        ; $7a08: $8e
	rst  $38                                         ; $7a09: $ff
	rst  $38                                         ; $7a0a: $ff
	rst  $38                                         ; $7a0b: $ff
	rst  $38                                         ; $7a0c: $ff
	or   $11                                         ; $7a0d: $f6 $11
	ld   de, $1111                                   ; $7a0f: $11 $11 $11
	ld   de, $7b68                                   ; $7a12: $11 $68 $7b
	rst  $38                                         ; $7a15: $ff
	rst  $38                                         ; $7a16: $ff
	rst  $38                                         ; $7a17: $ff
	rst  $38                                         ; $7a18: $ff
	ei                                               ; $7a19: $fb
	ld   b, c                                        ; $7a1a: $41
	ld   de, $1111                                   ; $7a1b: $11 $11 $11
	ld   de, $7a36                                   ; $7a1e: $11 $36 $7a
	rst  JumpTable                                         ; $7a21: $df
	rst  $38                                         ; $7a22: $ff
	rst  $38                                         ; $7a23: $ff
	rst  $38                                         ; $7a24: $ff
	rst  $38                                         ; $7a25: $ff
	ld   h, c                                        ; $7a26: $61
	ld   de, $1111                                   ; $7a27: $11 $11 $11
	ld   de, $7717                                   ; $7a2a: $11 $17 $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a2d: $cf
	rst  $38                                         ; $7a2e: $ff
	rst  $38                                         ; $7a2f: $ff
	rst  $38                                         ; $7a30: $ff
	rst  $38                                         ; $7a31: $ff
	sub  h                                           ; $7a32: $94
	ld   de, $1111                                   ; $7a33: $11 $11 $11
	ld   de, $7614                                   ; $7a36: $11 $14 $76
	xor  [hl]                                        ; $7a39: $ae
	rst  $38                                         ; $7a3a: $ff
	rst  $38                                         ; $7a3b: $ff
	rst  $38                                         ; $7a3c: $ff
	rst  $38                                         ; $7a3d: $ff
	sub  $11                                         ; $7a3e: $d6 $11
	ld   de, $1111                                   ; $7a40: $11 $11 $11

Jump_0ad_7a43:
	ld   [de], a                                     ; $7a43: $12
	ld   [hl], l                                     ; $7a44: $75
	sbc  h                                           ; $7a45: $9c
	rst  $38                                         ; $7a46: $ff
	rst  $38                                         ; $7a47: $ff
	rst  $38                                         ; $7a48: $ff
	rst  $38                                         ; $7a49: $ff
	jp   hl                                          ; $7a4a: $e9


	ld   hl, $1111                                   ; $7a4b: $21 $11 $11
	ld   de, $7611                                   ; $7a4e: $11 $11 $76
	ld   l, h                                        ; $7a51: $6c
	rst  $38                                         ; $7a52: $ff
	rst  $38                                         ; $7a53: $ff
	rst  $38                                         ; $7a54: $ff

Jump_0ad_7a55:
	rst  $38                                         ; $7a55: $ff
	ld   sp, hl                                      ; $7a56: $f9
	ld   hl, $1111                                   ; $7a57: $21 $11 $11
	ld   de, $6611                                   ; $7a5a: $11 $11 $66
	ld   l, e                                        ; $7a5d: $6b
	rst  $38                                         ; $7a5e: $ff
	rst  $38                                         ; $7a5f: $ff
	rst  $38                                         ; $7a60: $ff
	rst  $38                                         ; $7a61: $ff
	ld   a, [$1131]                                  ; $7a62: $fa $31 $11
	ld   de, $1111                                   ; $7a65: $11 $11 $11
	ld   d, a                                        ; $7a68: $57
	ld   l, e                                        ; $7a69: $6b
	rst  $38                                         ; $7a6a: $ff
	rst  $38                                         ; $7a6b: $ff
	rst  $38                                         ; $7a6c: $ff
	rst  $38                                         ; $7a6d: $ff
	ei                                               ; $7a6e: $fb
	ld   sp, $1111                                   ; $7a6f: $31 $11 $11
	ld   de, $5711                                   ; $7a72: $11 $11 $57
	ld   l, h                                        ; $7a75: $6c
	rst  $38                                         ; $7a76: $ff
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	rst  $38                                         ; $7a79: $ff
	ei                                               ; $7a7a: $fb
	ld   b, c                                        ; $7a7b: $41
	ld   de, $1111                                   ; $7a7c: $11 $11 $11
	ld   de, $6a48                                   ; $7a7f: $11 $48 $6a
	rst  $38                                         ; $7a82: $ff
	rst  $38                                         ; $7a83: $ff
	rst  $38                                         ; $7a84: $ff
	rst  $38                                         ; $7a85: $ff
	db   $fc                                         ; $7a86: $fc
	ld   b, c                                        ; $7a87: $41
	ld   de, $1111                                   ; $7a88: $11 $11 $11
	ld   de, $6b57                                   ; $7a8b: $11 $57 $6b
	rst  $38                                         ; $7a8e: $ff
	rst  $38                                         ; $7a8f: $ff
	rst  $38                                         ; $7a90: $ff
	rst  $38                                         ; $7a91: $ff
	ld   a, [$1141]                                  ; $7a92: $fa $41 $11
	ld   de, $1111                                   ; $7a95: $11 $11 $11
	jr   c, @-$64                                    ; $7a98: $38 $9a

	rst  $38                                         ; $7a9a: $ff
	rst  $38                                         ; $7a9b: $ff
	rst  $38                                         ; $7a9c: $ff
	rst  $38                                         ; $7a9d: $ff
	ei                                               ; $7a9e: $fb
	ld   hl, $1111                                   ; $7a9f: $21 $11 $11
	ld   de, $5711                                   ; $7aa2: $11 $11 $57
	adc  e                                           ; $7aa5: $8b
	rst  $38                                         ; $7aa6: $ff
	rst  $38                                         ; $7aa7: $ff
	rst  $38                                         ; $7aa8: $ff
	rst  $38                                         ; $7aa9: $ff
	ld   a, [$1121]                                  ; $7aaa: $fa $21 $11
	ld   de, $1111                                   ; $7aad: $11 $11 $11
	ld   h, a                                        ; $7ab0: $67
	ld   a, [hl]                                     ; $7ab1: $7e
	rst  $38                                         ; $7ab2: $ff
	rst  $38                                         ; $7ab3: $ff
	rst  $38                                         ; $7ab4: $ff
	rst  $38                                         ; $7ab5: $ff
	ld   sp, hl                                      ; $7ab6: $f9
	ld   hl, $1111                                   ; $7ab7: $21 $11 $11
	ld   de, $7613                                   ; $7aba: $11 $13 $76
	sbc  [hl]                                        ; $7abd: $9e
	rst  $38                                         ; $7abe: $ff
	rst  $38                                         ; $7abf: $ff
	rst  $38                                         ; $7ac0: $ff
	rst  $38                                         ; $7ac1: $ff
	sub  $11                                         ; $7ac2: $d6 $11
	ld   de, $1111                                   ; $7ac4: $11 $11 $11
	inc  d                                           ; $7ac7: $14
	add  a                                           ; $7ac8: $87
	cp   a                                           ; $7ac9: $bf
	rst  $38                                         ; $7aca: $ff
	rst  $38                                         ; $7acb: $ff
	rst  $38                                         ; $7acc: $ff
	rst  $38                                         ; $7acd: $ff
	or   h                                           ; $7ace: $b4
	ld   de, $1111                                   ; $7acf: $11 $11 $11
	ld   de, $8925                                   ; $7ad2: $11 $25 $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad5: $cf
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	rst  $38                                         ; $7ad8: $ff
	rst  $38                                         ; $7ad9: $ff
	sub  c                                           ; $7ada: $91
	ld   de, $1111                                   ; $7adb: $11 $11 $11
	ld   de, $ac36                                   ; $7ade: $11 $36 $ac
	rst  JumpTable                                         ; $7ae1: $df
	rst  $38                                         ; $7ae2: $ff
	rst  $38                                         ; $7ae3: $ff
	rst  $38                                         ; $7ae4: $ff
	cp   $51                                         ; $7ae5: $fe $51
	ld   de, $1111                                   ; $7ae7: $11 $11 $11
	inc  de                                          ; $7aea: $13
	ld   e, b                                        ; $7aeb: $58
	cp   h                                           ; $7aec: $bc
	rst  $38                                         ; $7aed: $ff
	rst  $38                                         ; $7aee: $ff
	rst  $38                                         ; $7aef: $ff
	rst  $38                                         ; $7af0: $ff
	ld   sp, hl                                      ; $7af1: $f9
	ld   de, $1111                                   ; $7af2: $11 $11 $11
	ld   de, $5b14                                   ; $7af5: $11 $14 $5b
	db   $dd                                         ; $7af8: $dd
	rst  $38                                         ; $7af9: $ff
	rst  $38                                         ; $7afa: $ff
	rst  $38                                         ; $7afb: $ff
	rst  $38                                         ; $7afc: $ff
	ret  c                                           ; $7afd: $d8

	ld   de, $1111                                   ; $7afe: $11 $11 $11
	ld   de, $9c35                                   ; $7b01: $11 $35 $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b04: $cf
	rst  $38                                         ; $7b05: $ff
	rst  $38                                         ; $7b06: $ff
	rst  $38                                         ; $7b07: $ff
	rst  $38                                         ; $7b08: $ff
	sub  e                                           ; $7b09: $93
	ld   de, $1111                                   ; $7b0a: $11 $11 $11
	ld   de, $cd35                                   ; $7b0d: $11 $35 $cd
	rst  JumpTable                                         ; $7b10: $df
	rst  $38                                         ; $7b11: $ff
	rst  $38                                         ; $7b12: $ff
	rst  $38                                         ; $7b13: $ff
	db   $fd                                         ; $7b14: $fd
	ld   d, c                                        ; $7b15: $51
	ld   de, $1111                                   ; $7b16: $11 $11 $11
	inc  de                                          ; $7b19: $13
	ld   e, d                                        ; $7b1a: $5a
	db   $dd                                         ; $7b1b: $dd
	rst  $38                                         ; $7b1c: $ff
	rst  $38                                         ; $7b1d: $ff
	rst  $38                                         ; $7b1e: $ff
	rst  $38                                         ; $7b1f: $ff
	ld   sp, hl                                      ; $7b20: $f9
	ld   hl, $1111                                   ; $7b21: $21 $11 $11
	ld   de, $7e23                                   ; $7b24: $11 $23 $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b27: $cf
	rst  $38                                         ; $7b28: $ff
	rst  $38                                         ; $7b29: $ff
	rst  $38                                         ; $7b2a: $ff
	rst  $38                                         ; $7b2b: $ff
	push bc                                          ; $7b2c: $c5
	ld   de, $1111                                   ; $7b2d: $11 $11 $11
	ld   de, $bd35                                   ; $7b30: $11 $35 $bd
	rst  $38                                         ; $7b33: $ff
	rst  $38                                         ; $7b34: $ff
	rst  $38                                         ; $7b35: $ff
	rst  $38                                         ; $7b36: $ff
	cp   $62                                         ; $7b37: $fe $62
	ld   de, $1111                                   ; $7b39: $11 $11 $11
	ld   de, $ed3a                                   ; $7b3c: $11 $3a $ed
	rst  $38                                         ; $7b3f: $ff
	rst  $38                                         ; $7b40: $ff
	rst  $38                                         ; $7b41: $ff
	rst  $38                                         ; $7b42: $ff
	ld   hl, sp+$31                                  ; $7b43: $f8 $31
	ld   de, $1111                                   ; $7b45: $11 $11 $11
	ld   [de], a                                     ; $7b48: $12
	ld   a, h                                        ; $7b49: $7c
	rst  JumpTable                                         ; $7b4a: $df
	rst  $38                                         ; $7b4b: $ff
	rst  $38                                         ; $7b4c: $ff
	rst  $38                                         ; $7b4d: $ff
	rst  $38                                         ; $7b4e: $ff
	or   l                                           ; $7b4f: $b5
	ld   de, $1111                                   ; $7b50: $11 $11 $11
	ld   de, $ce16                                   ; $7b53: $11 $16 $ce
	rst  $38                                         ; $7b56: $ff
	rst  $38                                         ; $7b57: $ff
	rst  $38                                         ; $7b58: $ff
	rst  $38                                         ; $7b59: $ff
	db   $fc                                         ; $7b5a: $fc
	ld   [hl], c                                     ; $7b5b: $71
	ld   de, $1111                                   ; $7b5c: $11 $11 $11
	ld   de, $df3b                                   ; $7b5f: $11 $3b $df
	rst  $38                                         ; $7b62: $ff
	rst  $38                                         ; $7b63: $ff
	rst  $38                                         ; $7b64: $ff
	rst  $38                                         ; $7b65: $ff
	add  sp, $21                                     ; $7b66: $e8 $21
	ld   de, $1111                                   ; $7b68: $11 $11 $11
	ld   de, $ff8d                                   ; $7b6b: $11 $8d $ff
	rst  $38                                         ; $7b6e: $ff
	rst  $38                                         ; $7b6f: $ff
	rst  $38                                         ; $7b70: $ff
	cp   $a4                                         ; $7b71: $fe $a4
	ld   de, $1111                                   ; $7b73: $11 $11 $11
	ld   de, $be16                                   ; $7b76: $11 $16 $be
	rst  $38                                         ; $7b79: $ff
	rst  $38                                         ; $7b7a: $ff
	rst  $38                                         ; $7b7b: $ff
	rst  $38                                         ; $7b7c: $ff
	db   $fc                                         ; $7b7d: $fc
	ld   h, c                                        ; $7b7e: $61
	ld   de, $1111                                   ; $7b7f: $11 $11 $11
	ld   de, $df39                                   ; $7b82: $11 $39 $df
	rst  $38                                         ; $7b85: $ff
	rst  $38                                         ; $7b86: $ff
	rst  $38                                         ; $7b87: $ff
	rst  $38                                         ; $7b88: $ff
	ret  c                                           ; $7b89: $d8

	ld   hl, $1111                                   ; $7b8a: $21 $11 $11
	ld   de, $6b11                                   ; $7b8d: $11 $11 $6b
	rst  $38                                         ; $7b90: $ff
	rst  $38                                         ; $7b91: $ff
	rst  $38                                         ; $7b92: $ff
	rst  $38                                         ; $7b93: $ff
	rst  $38                                         ; $7b94: $ff
	rst  ToBoot                                         ; $7b95: $c7
	ld   hl, $1111                                   ; $7b96: $21 $11 $11
	ld   de, $6912                                   ; $7b99: $11 $12 $69
	rst  JumpTable                                         ; $7b9c: $df
	rst  $38                                         ; $7b9d: $ff
	rst  $38                                         ; $7b9e: $ff
	rst  $38                                         ; $7b9f: $ff
	rst  $38                                         ; $7ba0: $ff
	rst  $10                                         ; $7ba1: $d7
	ld   sp, $1111                                   ; $7ba2: $31 $11 $11
	ld   de, $5911                                   ; $7ba5: $11 $11 $59
	rst  JumpTable                                         ; $7ba8: $df
	rst  $38                                         ; $7ba9: $ff
	rst  $38                                         ; $7baa: $ff
	rst  $38                                         ; $7bab: $ff
	rst  $38                                         ; $7bac: $ff
	rst  ToBoot                                         ; $7bad: $c7
	ld   hl, $1111                                   ; $7bae: $21 $11 $11
	ld   de, $5911                                   ; $7bb1: $11 $11 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bb4: $cf
	rst  $38                                         ; $7bb5: $ff
	rst  $38                                         ; $7bb6: $ff
	rst  $38                                         ; $7bb7: $ff
	rst  $38                                         ; $7bb8: $ff
	rst  ToBoot                                         ; $7bb9: $c7
	ld   sp, $1111                                   ; $7bba: $31 $11 $11
	ld   de, $4711                                   ; $7bbd: $11 $11 $47
	cp   [hl]                                        ; $7bc0: $be
	rst  $38                                         ; $7bc1: $ff
	rst  $38                                         ; $7bc2: $ff
	rst  $38                                         ; $7bc3: $ff
	rst  $38                                         ; $7bc4: $ff
	ret                                              ; $7bc5: $c9


	ld   d, c                                        ; $7bc6: $51
	ld   de, $1111                                   ; $7bc7: $11 $11 $11
	ld   de, $7a24                                   ; $7bca: $11 $24 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bcd: $cf
	rst  $38                                         ; $7bce: $ff
	rst  $38                                         ; $7bcf: $ff
	rst  $38                                         ; $7bd0: $ff
	xor  $da                                         ; $7bd1: $ee $da
	add  l                                           ; $7bd3: $85
	ld   sp, $1111                                   ; $7bd4: $31 $11 $11
	ld   de, $6934                                   ; $7bd7: $11 $34 $69
	xor  e                                           ; $7bda: $ab
	xor  $ff                                         ; $7bdb: $ee $ff
	db   $fd                                         ; $7bdd: $fd
	cp   h                                           ; $7bde: $bc
	cp   e                                           ; $7bdf: $bb
	cp   c                                           ; $7be0: $b9
	ld   [hl], l                                     ; $7be1: $75
	ld   b, d                                        ; $7be2: $42
	ld   [hl+], a                                    ; $7be3: $22
	ld   [hl+], a                                    ; $7be4: $22
	inc  h                                           ; $7be5: $24
	ld   b, [hl]                                     ; $7be6: $46
	ld   a, c                                        ; $7be7: $79
	xor  e                                           ; $7be8: $ab
	call $feee                                       ; $7be9: $cd $ee $fe
	db   $ed                                         ; $7bec: $ed
	call c, Call_0ad_6498                            ; $7bed: $dc $98 $64
	ld   hl, $1101                                   ; $7bf0: $21 $01 $11
	inc  [hl]                                        ; $7bf3: $34
	ld   d, a                                        ; $7bf4: $57
	sbc  d                                           ; $7bf5: $9a
	xor  e                                           ; $7bf6: $ab
	call z, $cddd                                    ; $7bf7: $cc $dd $cd
	call z, $97ba                                    ; $7bfa: $cc $ba $97
	ld   h, l                                        ; $7bfd: $65
	ld   b, h                                        ; $7bfe: $44
	inc  sp                                          ; $7bff: $33
	inc  [hl]                                        ; $7c00: $34
	ld   b, l                                        ; $7c01: $45
	ld   h, a                                        ; $7c02: $67
	adc  b                                           ; $7c03: $88
	xor  d                                           ; $7c04: $aa
	xor  h                                           ; $7c05: $ac
	call z, $bbcc                                    ; $7c06: $cc $cc $bb
	xor  d                                           ; $7c09: $aa
	sbc  b                                           ; $7c0a: $98
	halt                                             ; $7c0b: $76
	ld   d, l                                        ; $7c0c: $55
	ld   b, h                                        ; $7c0d: $44
	ld   b, h                                        ; $7c0e: $44
	ld   b, l                                        ; $7c0f: $45
	ld   h, [hl]                                     ; $7c10: $66
	ld   a, b                                        ; $7c11: $78
	sbc  c                                           ; $7c12: $99
	cp   e                                           ; $7c13: $bb
	cp   h                                           ; $7c14: $bc
	res  7, e                                        ; $7c15: $cb $bb
	xor  c                                           ; $7c17: $a9
	sub  a                                           ; $7c18: $97
	halt                                             ; $7c19: $76
	ld   d, l                                        ; $7c1a: $55
	ld   d, l                                        ; $7c1b: $55
	ld   d, l                                        ; $7c1c: $55
	ld   h, [hl]                                     ; $7c1d: $66
	ld   [hl], a                                     ; $7c1e: $77
	sbc  c                                           ; $7c1f: $99
	xor  d                                           ; $7c20: $aa
	xor  e                                           ; $7c21: $ab
	xor  c                                           ; $7c22: $a9
	xor  c                                           ; $7c23: $a9
	xor  d                                           ; $7c24: $aa
	sbc  c                                           ; $7c25: $99
	ld   [hl], a                                     ; $7c26: $77
	ld   h, [hl]                                     ; $7c27: $66
	ld   h, [hl]                                     ; $7c28: $66
	ld   h, [hl]                                     ; $7c29: $66
	ld   h, [hl]                                     ; $7c2a: $66
	ld   [hl], a                                     ; $7c2b: $77
	adc  b                                           ; $7c2c: $88
	adc  d                                           ; $7c2d: $8a
	sbc  c                                           ; $7c2e: $99
	xor  c                                           ; $7c2f: $a9
	xor  c                                           ; $7c30: $a9
	adc  b                                           ; $7c31: $88
	add  a                                           ; $7c32: $87
	ld   [hl], a                                     ; $7c33: $77
	ld   [hl], a                                     ; $7c34: $77
	ld   [hl], a                                     ; $7c35: $77
	ld   [hl], a                                     ; $7c36: $77
	ld   a, b                                        ; $7c37: $78
	adc  c                                           ; $7c38: $89
	sbc  b                                           ; $7c39: $98
	adc  b                                           ; $7c3a: $88
	adc  b                                           ; $7c3b: $88
	adc  c                                           ; $7c3c: $89
	sbc  b                                           ; $7c3d: $98
	adc  b                                           ; $7c3e: $88
	ld   [hl], a                                     ; $7c3f: $77
	ld   [hl], a                                     ; $7c40: $77
	ld   [hl], a                                     ; $7c41: $77
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	adc  b                                           ; $7c45: $88
	sbc  c                                           ; $7c46: $99
	sbc  c                                           ; $7c47: $99
	adc  b                                           ; $7c48: $88
	adc  b                                           ; $7c49: $88
	adc  b                                           ; $7c4a: $88
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	adc  c                                           ; $7c51: $89
	sbc  c                                           ; $7c52: $99
	sbc  b                                           ; $7c53: $98
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
	adc  c                                           ; $7c64: $89
	adc  c                                           ; $7c65: $89
	adc  b                                           ; $7c66: $88
	adc  b                                           ; $7c67: $88
	adc  b                                           ; $7c68: $88
	adc  b                                           ; $7c69: $88
	ld   a, b                                        ; $7c6a: $78
	ld   [hl], a                                     ; $7c6b: $77
	adc  b                                           ; $7c6c: $88
	adc  b                                           ; $7c6d: $88
	adc  b                                           ; $7c6e: $88
	adc  b                                           ; $7c6f: $88
	sbc  b                                           ; $7c70: $98
	sbc  c                                           ; $7c71: $99
	sbc  c                                           ; $7c72: $99
	adc  b                                           ; $7c73: $88
	adc  b                                           ; $7c74: $88
	adc  b                                           ; $7c75: $88
	adc  b                                           ; $7c76: $88
	adc  b                                           ; $7c77: $88
	ld   [hl], a                                     ; $7c78: $77
	adc  b                                           ; $7c79: $88
	adc  b                                           ; $7c7a: $88
	adc  b                                           ; $7c7b: $88
	adc  b                                           ; $7c7c: $88
	adc  c                                           ; $7c7d: $89
	sbc  c                                           ; $7c7e: $99
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
	sbc  b                                           ; $7c8b: $98
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
	adc  c                                           ; $7e68: $89
	sbc  c                                           ; $7e69: $99
	ld   [hl], a                                     ; $7e6a: $77
	adc  b                                           ; $7e6b: $88
	sub  a                                           ; $7e6c: $97
	adc  b                                           ; $7e6d: $88
	ld   [hl], a                                     ; $7e6e: $77
	adc  c                                           ; $7e6f: $89
	sbc  c                                           ; $7e70: $99
	ld   [hl], a                                     ; $7e71: $77
	adc  b                                           ; $7e72: $88
	sbc  c                                           ; $7e73: $99
	sbc  d                                           ; $7e74: $9a
	or   a                                           ; $7e75: $b7
	ld   l, e                                        ; $7e76: $6b
	jp   z, $b767                                    ; $7e77: $ca $67 $b7

	ld   d, a                                        ; $7e7a: $57
	sub  l                                           ; $7e7b: $95
	ld   a, d                                        ; $7e7c: $7a
	sub  a                                           ; $7e7d: $97
	sbc  d                                           ; $7e7e: $9a
	ld   d, [hl]                                     ; $7e7f: $56
	ld   a, d                                        ; $7e80: $7a
	add  [hl]                                        ; $7e81: $86
	add  a                                           ; $7e82: $87
	ld   [hl], l                                     ; $7e83: $75
	adc  c                                           ; $7e84: $89
	sbc  d                                           ; $7e85: $9a
	cp   d                                           ; $7e86: $ba
	add  a                                           ; $7e87: $87
	sub  a                                           ; $7e88: $97
	ld   d, a                                        ; $7e89: $57
	add  a                                           ; $7e8a: $87
	ld   a, c                                        ; $7e8b: $79
	xor  c                                           ; $7e8c: $a9
	ld   a, c                                        ; $7e8d: $79
	sbc  b                                           ; $7e8e: $98
	xor  d                                           ; $7e8f: $aa
	xor  e                                           ; $7e90: $ab
	and  [hl]                                        ; $7e91: $a6
	ld   de, $2501                                   ; $7e92: $11 $01 $25
	ld   d, h                                        ; $7e95: $54
	ld   l, h                                        ; $7e96: $6c
	db   $ec                                         ; $7e97: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e98: $cf
	rst  $38                                         ; $7e99: $ff
	cp   $b3                                         ; $7e9a: $fe $b3
	ld   de, $1111                                   ; $7e9c: $11 $11 $11
	ld   l, c                                        ; $7e9f: $69
	sbc  [hl]                                        ; $7ea0: $9e
	rst  $38                                         ; $7ea1: $ff
	rst  $38                                         ; $7ea2: $ff
	rst  $38                                         ; $7ea3: $ff
	rst  $38                                         ; $7ea4: $ff
	rst  $38                                         ; $7ea5: $ff
	pop  bc                                          ; $7ea6: $c1
	ld   de, $1211                                   ; $7ea7: $11 $11 $12
	cp   a                                           ; $7eaa: $bf
	rst  $38                                         ; $7eab: $ff
	rst  $38                                         ; $7eac: $ff
	cp   $9a                                         ; $7ead: $fe $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7eaf: $cf
	cp   $51                                         ; $7eb0: $fe $51
	ld   de, $6c11                                   ; $7eb2: $11 $11 $6c
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	or   $37                                         ; $7eb8: $f6 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7eba: $cf
	db   $fd                                         ; $7ebb: $fd
	ld   de, $1511                                   ; $7ebc: $11 $11 $15
	xor  a                                           ; $7ebf: $af
	rst  $38                                         ; $7ec0: $ff
	rst  $38                                         ; $7ec1: $ff
	rst  $38                                         ; $7ec2: $ff
	ld   h, e                                        ; $7ec3: $63
	ld   e, b                                        ; $7ec4: $58
	rst  $38                                         ; $7ec5: $ff
	pop  af                                          ; $7ec6: $f1
	ld   de, $5f11                                   ; $7ec7: $11 $11 $5f
	rst  $38                                         ; $7eca: $ff
	rst  $38                                         ; $7ecb: $ff
	rst  $38                                         ; $7ecc: $ff
	and  l                                           ; $7ecd: $a5
	ld   d, d                                        ; $7ece: $52
	cp   a                                           ; $7ecf: $bf
	rst  $38                                         ; $7ed0: $ff
	ld   de, $1b11                                   ; $7ed1: $11 $11 $1b
	rst  JumpTable                                         ; $7ed4: $df
	rst  $38                                         ; $7ed5: $ff
	rst  $38                                         ; $7ed6: $ff
	or   $21                                         ; $7ed7: $f6 $21
	ld   e, h                                        ; $7ed9: $5c
	rst  $38                                         ; $7eda: $ff
	pop  af                                          ; $7edb: $f1
	ld   de, $7c11                                   ; $7edc: $11 $11 $7c
	rst  $38                                         ; $7edf: $ff
	rst  $38                                         ; $7ee0: $ff
	db   $fc                                         ; $7ee1: $fc
	ld   b, c                                        ; $7ee2: $41
	dec  d                                           ; $7ee3: $15
	cp   a                                           ; $7ee4: $bf
	rst  $38                                         ; $7ee5: $ff
	ld   de, $1411                                   ; $7ee6: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ee9: $cf
	rst  $38                                         ; $7eea: $ff
	rst  $38                                         ; $7eeb: $ff
	or   d                                           ; $7eec: $b2
	ld   de, $ff4d                                   ; $7eed: $11 $4d $ff
	pop  af                                          ; $7ef0: $f1
	ld   de, $ae13                                   ; $7ef1: $11 $13 $ae
	rst  $38                                         ; $7ef4: $ff
	rst  $38                                         ; $7ef5: $ff
	ld   a, [$1a11]                                  ; $7ef6: $fa $11 $1a
	rst  $38                                         ; $7ef9: $ff
	cp   $11                                         ; $7efa: $fe $11
	ld   de, $ff46                                   ; $7efc: $11 $46 $ff
	rst  $38                                         ; $7eff: $ff
	rst  $38                                         ; $7f00: $ff
	ld   [hl], c                                     ; $7f01: $71
	ld   [de], a                                     ; $7f02: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f03: $cf
	rst  $38                                         ; $7f04: $ff
	and  c                                           ; $7f05: $a1
	ld   de, $9e13                                   ; $7f06: $11 $13 $9e
	rst  $38                                         ; $7f09: $ff
	rst  $38                                         ; $7f0a: $ff
	push de                                          ; $7f0b: $d5
	ld   de, $ff1f                                   ; $7f0c: $11 $1f $ff
	push af                                          ; $7f0f: $f5
	ld   de, $bd11                                   ; $7f10: $11 $11 $bd
	rst  $38                                         ; $7f13: $ff
	rst  $38                                         ; $7f14: $ff
	db   $fc                                         ; $7f15: $fc
	ld   de, $ff16                                   ; $7f16: $11 $16 $ff
	rst  $38                                         ; $7f19: $ff
	ld   de, $1811                                   ; $7f1a: $11 $11 $18
	rst  JumpTable                                         ; $7f1d: $df
	rst  $38                                         ; $7f1e: $ff
	rst  $38                                         ; $7f1f: $ff
	sub  c                                           ; $7f20: $91
	ld   de, $ffcf                                   ; $7f21: $11 $cf $ff
	and  c                                           ; $7f24: $a1
	ld   de, $bf12                                   ; $7f25: $11 $12 $bf
	rst  $38                                         ; $7f28: $ff
	rst  $38                                         ; $7f29: $ff
	call nc, $1f11                                   ; $7f2a: $d4 $11 $1f
	rst  $38                                         ; $7f2d: $ff
	db   $f4                                         ; $7f2e: $f4
	ld   de, $4d11                                   ; $7f2f: $11 $11 $4d
	rst  $38                                         ; $7f32: $ff
	rst  $38                                         ; $7f33: $ff
	ld   sp, hl                                      ; $7f34: $f9
	ld   de, rAUD1HIGH                                   ; $7f35: $11 $14 $ff
	db   $fd                                         ; $7f38: $fd
	ld   de, $1911                                   ; $7f39: $11 $11 $19
	rst  $38                                         ; $7f3c: $ff
	rst  $38                                         ; $7f3d: $ff
	db   $fc                                         ; $7f3e: $fc
	ld   b, c                                        ; $7f3f: $41
	ld   de, $ffff                                   ; $7f40: $11 $ff $ff
	ld   h, c                                        ; $7f43: $61
	ld   de, $af12                                   ; $7f44: $11 $12 $af
	rst  $38                                         ; $7f47: $ff
	rst  $38                                         ; $7f48: $ff
	ld   h, c                                        ; $7f49: $61
	ld   de, $ff4f                                   ; $7f4a: $11 $4f $ff
	pop  de                                          ; $7f4d: $d1
	ld   de, $7f11                                   ; $7f4e: $11 $11 $7f
	rst  $38                                         ; $7f51: $ff
	rst  $38                                         ; $7f52: $ff
	add  d                                           ; $7f53: $82
	ld   de, $ff1f                                   ; $7f54: $11 $1f $ff
	ldh  a, [c]                                      ; $7f57: $f2
	ld   de, $0a11                                   ; $7f58: $11 $11 $0a
	rst  $38                                         ; $7f5b: $ff
	rst  $38                                         ; $7f5c: $ff
	db   $d3                                         ; $7f5d: $d3
	ld   de, rAUD1HIGH                                   ; $7f5e: $11 $14 $ff
	db   $fc                                         ; $7f61: $fc
	ld   de, $1311                                   ; $7f62: $11 $11 $13
	rst  $38                                         ; $7f65: $ff
	rst  $38                                         ; $7f66: $ff
	db   $f4                                         ; $7f67: $f4
	ld   de, rAUD1LEN                                   ; $7f68: $11 $11 $ff
	rst  $38                                         ; $7f6b: $ff
	ld   hl, $1111                                   ; $7f6c: $21 $11 $11
	rst  $38                                         ; $7f6f: $ff
	rst  $38                                         ; $7f70: $ff
	or   $11                                         ; $7f71: $f6 $11
	ld   de, $ff9f                                   ; $7f73: $11 $9f $ff
	ld   [hl], c                                     ; $7f76: $71
	ld   de, $5f11                                   ; $7f77: $11 $11 $5f
	rst  $38                                         ; $7f7a: $ff
	db   $fd                                         ; $7f7b: $fd
	ld   de, $1f11                                   ; $7f7c: $11 $11 $1f
	rst  $38                                         ; $7f7f: $ff
	pop  af                                          ; $7f80: $f1
	ld   de, $1411                                   ; $7f81: $11 $11 $14
	rst  $38                                         ; $7f84: $ff
	rst  $38                                         ; $7f85: $ff
	ld   hl, $1411                                   ; $7f86: $21 $11 $14
	rst  $38                                         ; $7f89: $ff
	rst  $38                                         ; $7f8a: $ff
	ld   de, $1111                                   ; $7f8b: $11 $11 $11
	cp   a                                           ; $7f8e: $bf
	rst  $38                                         ; $7f8f: $ff
	pop  af                                          ; $7f90: $f1
	ld   de, $7f11                                   ; $7f91: $11 $11 $7f
	rst  $38                                         ; $7f94: $ff
	pop  af                                          ; $7f95: $f1
	ld   de, $1811                                   ; $7f96: $11 $11 $18
	rst  $38                                         ; $7f99: $ff
	rst  $38                                         ; $7f9a: $ff
	ld   de, $1911                                   ; $7f9b: $11 $11 $19
	rst  $38                                         ; $7f9e: $ff
	rst  $38                                         ; $7f9f: $ff
	ld   de, $1111                                   ; $7fa0: $11 $11 $11
	cp   a                                           ; $7fa3: $bf
	rst  $38                                         ; $7fa4: $ff
	pop  af                                          ; $7fa5: $f1
	ld   de, $af11                                   ; $7fa6: $11 $11 $af
	rst  $38                                         ; $7fa9: $ff
	pop  bc                                          ; $7faa: $c1
	ld   de, $1b11                                   ; $7fab: $11 $11 $1b
	rst  $38                                         ; $7fae: $ff
	rst  $38                                         ; $7faf: $ff
	ld   de, $1a11                                   ; $7fb0: $11 $11 $1a
	rst  $38                                         ; $7fb3: $ff
	db   $fc                                         ; $7fb4: $fc
	ld   de, $1111                                   ; $7fb5: $11 $11 $11
	rst  $38                                         ; $7fb8: $ff
	rst  $38                                         ; $7fb9: $ff
	ldh  a, [c]                                      ; $7fba: $f2
	ld   de, $af11                                   ; $7fbb: $11 $11 $af
	rst  $38                                         ; $7fbe: $ff
	and  c                                           ; $7fbf: $a1
	ld   de, $1f11                                   ; $7fc0: $11 $11 $1f
	rst  $38                                         ; $7fc3: $ff
	rst  $38                                         ; $7fc4: $ff
	ld   hl, $1e11                                   ; $7fc5: $21 $11 $1e
	rst  $38                                         ; $7fc8: $ff
	ei                                               ; $7fc9: $fb
	ld   de, $1111                                   ; $7fca: $11 $11 $11
	rst  $38                                         ; $7fcd: $ff
	rst  $38                                         ; $7fce: $ff
	or   $11                                         ; $7fcf: $f6 $11
	ld   de, $ffef                                   ; $7fd1: $11 $ef $ff
	or   c                                           ; $7fd4: $b1
	ld   de, $1f11                                   ; $7fd5: $11 $11 $1f
	rst  $38                                         ; $7fd8: $ff
	rst  $38                                         ; $7fd9: $ff
	ld   b, h                                        ; $7fda: $44
	ld   de, $ff1e                                   ; $7fdb: $11 $1e $ff
	ld   sp, hl                                      ; $7fde: $f9
	ld   de, $1311                                   ; $7fdf: $11 $11 $13
	rst  $38                                         ; $7fe2: $ff
	rst  $38                                         ; $7fe3: $ff
	or   $31                                         ; $7fe4: $f6 $31
	ld   de, $ffef                                   ; $7fe6: $11 $ef $ff
	or   c                                           ; $7fe9: $b1
	ld   de, $2f11                                   ; $7fea: $11 $11 $2f
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	add  l                                           ; $7fef: $85
	ld   de, $ff1d                                   ; $7ff0: $11 $1d $ff
	db   $fc                                         ; $7ff3: $fc
	ld   de, $1111                                   ; $7ff4: $11 $11 $11
	rst  $38                                         ; $7ff7: $ff
	rst  $38                                         ; $7ff8: $ff
	rst  $30                                         ; $7ff9: $f7
	ld   sp, $df11                                   ; $7ffa: $31 $11 $df
	rst  $38                                         ; $7ffd: $ff
	or   c                                           ; $7ffe: $b1
	db   $11                                         ; $7fff: $11
