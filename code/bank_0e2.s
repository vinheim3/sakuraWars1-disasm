; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e2", ROMX[$4000], BANK[$e2]

	ld   de, $1111                                   ; $4000: $11 $11 $11
	ld   de, $1111                                   ; $4003: $11 $11 $11
	ld   de, $ed16                                   ; $4006: $11 $16 $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4009: $cf
	db   $fd                                         ; $400a: $fd
	rst  $38                                         ; $400b: $ff
	db   $fc                                         ; $400c: $fc
	xor  a                                           ; $400d: $af
	db   $dd                                         ; $400e: $dd
	rst  $38                                         ; $400f: $ff
	ld   hl, sp-$45                                  ; $4010: $f8 $bb
	xor  h                                           ; $4012: $ac
	cp   a                                           ; $4013: $bf
	rst  ToBoot                                         ; $4014: $c7
	sub  l                                           ; $4015: $95
	sub  [hl]                                        ; $4016: $96
	inc  de                                          ; $4017: $13
	ld   de, $4211                                   ; $4018: $11 $11 $42
	ld   [de], a                                     ; $401b: $12
	ld   de, $1111                                   ; $401c: $11 $11 $11
	inc  d                                           ; $401f: $14
	ld   [de], a                                     ; $4020: $12
	reti                                             ; $4021: $d9


	rst  $38                                         ; $4022: $ff
	rst  $38                                         ; $4023: $ff
	db   $fd                                         ; $4024: $fd
	pop  af                                          ; $4025: $f1
	adc  a                                           ; $4026: $8f
	xor  a                                           ; $4027: $af
	db   $fc                                         ; $4028: $fc
	push af                                          ; $4029: $f5
	xor  l                                           ; $402a: $ad
	adc  a                                           ; $402b: $8f
	ret                                              ; $402c: $c9


	or   $76                                         ; $402d: $f6 $76
	ld   d, $21                                      ; $402f: $16 $21
	ld   b, c                                        ; $4031: $41
	inc  d                                           ; $4032: $14
	ld   [de], a                                     ; $4033: $12
	ld   bc, $1111                                   ; $4034: $01 $11 $11
	dec  de                                          ; $4037: $1b
	ld   b, c                                        ; $4038: $41
	ld   b, l                                        ; $4039: $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $403a: $cf
	xor  a                                           ; $403b: $af
	cp   $fd                                         ; $403c: $fe $fd
	rst  $38                                         ; $403e: $ff
	sbc  a                                           ; $403f: $9f
	reti                                             ; $4040: $d9


	ei                                               ; $4041: $fb
	rst  $28                                         ; $4042: $ef
	adc  a                                           ; $4043: $8f
	cp   d                                           ; $4044: $ba
	sub  $b9                                         ; $4045: $d6 $b9
	ld   c, c                                        ; $4047: $49
	ld   b, e                                        ; $4048: $43
	ld   d, c                                        ; $4049: $51
	inc  hl                                          ; $404a: $23
	ld   [de], a                                     ; $404b: $12
	ld   de, $1271                                   ; $404c: $11 $71 $12
	inc  de                                          ; $404f: $13
	ld   [hl+], a                                    ; $4050: $22
	and  a                                           ; $4051: $a7
	ld   c, c                                        ; $4052: $49
	call $ddec                                       ; $4053: $cd $ec $dd
	rst  JumpTable                                         ; $4056: $df
	xor  $db                                         ; $4057: $ee $db
	db   $fd                                         ; $4059: $fd
	db   $dd                                         ; $405a: $dd
	ld   a, c                                        ; $405b: $79
	sbc  d                                           ; $405c: $9a
	db   $eb                                         ; $405d: $eb
	or   a                                           ; $405e: $b7
	adc  c                                           ; $405f: $89
	ld   h, a                                        ; $4060: $67
	ld   b, h                                        ; $4061: $44
	ld   d, e                                        ; $4062: $53
	ld   b, d                                        ; $4063: $42
	inc  hl                                          ; $4064: $23
	ld   de, $1611                                   ; $4065: $11 $11 $16
	ld   [hl], a                                     ; $4068: $77
	ld   [hl], l                                     ; $4069: $75
	ld   h, a                                        ; $406a: $67
	ld   l, d                                        ; $406b: $6a
	call $acd7                                       ; $406c: $cd $d7 $ac
	cp   h                                           ; $406f: $bc
	sbc  $cb                                         ; $4070: $de $cb
	cp   h                                           ; $4072: $bc
	sbc  l                                           ; $4073: $9d
	call c, $a7ea                                    ; $4074: $dc $ea $a7
	ld   h, a                                        ; $4077: $67
	ld   l, b                                        ; $4078: $68
	ld   d, e                                        ; $4079: $53
	ld   d, l                                        ; $407a: $55
	adc  c                                           ; $407b: $89
	ld   d, e                                        ; $407c: $53
	ld   de, $6656                                   ; $407d: $11 $56 $66
	ld   d, l                                        ; $4080: $55
	ld   b, e                                        ; $4081: $43
	inc  sp                                          ; $4082: $33
	adc  h                                           ; $4083: $8c
	res  5, c                                        ; $4084: $cb $a9
	xor  b                                           ; $4086: $a8
	xor  e                                           ; $4087: $ab
	adc  h                                           ; $4088: $8c
	call z, $baca                                    ; $4089: $cc $ca $ba
	adc  d                                           ; $408c: $8a
	xor  e                                           ; $408d: $ab
	jp   z, Jump_0e2_54b9                            ; $408e: $ca $b9 $54

	dec  [hl]                                        ; $4091: $35
	ld   [hl], a                                     ; $4092: $77
	add  [hl]                                        ; $4093: $86
	ld   d, a                                        ; $4094: $57
	ld   d, a                                        ; $4095: $57
	ld   h, [hl]                                     ; $4096: $66
	add  l                                           ; $4097: $85
	ld   h, h                                        ; $4098: $64
	inc  hl                                          ; $4099: $23
	ld   b, a                                        ; $409a: $47
	cp   c                                           ; $409b: $b9
	sbc  c                                           ; $409c: $99
	sbc  e                                           ; $409d: $9b
	call z, Call_0e2_79c9                            ; $409e: $cc $c9 $79
	sbc  h                                           ; $40a1: $9c
	cp   c                                           ; $40a2: $b9
	sub  a                                           ; $40a3: $97
	sbc  d                                           ; $40a4: $9a
	cp   l                                           ; $40a5: $bd
	cp   e                                           ; $40a6: $bb
	sbc  b                                           ; $40a7: $98
	add  a                                           ; $40a8: $87
	ld   [hl], a                                     ; $40a9: $77
	ld   h, l                                        ; $40aa: $65
	ld   b, l                                        ; $40ab: $45
	ld   l, c                                        ; $40ac: $69
	sbc  d                                           ; $40ad: $9a
	add  [hl]                                        ; $40ae: $86
	ld   h, a                                        ; $40af: $67
	add  a                                           ; $40b0: $87
	ld   h, h                                        ; $40b1: $64
	ld   d, a                                        ; $40b2: $57
	ld   a, b                                        ; $40b3: $78
	sbc  c                                           ; $40b4: $99
	sbc  b                                           ; $40b5: $98
	sbc  d                                           ; $40b6: $9a
	cp   e                                           ; $40b7: $bb
	xor  b                                           ; $40b8: $a8
	adc  b                                           ; $40b9: $88
	halt                                             ; $40ba: $76
	ld   l, b                                        ; $40bb: $68
	sbc  d                                           ; $40bc: $9a
	xor  e                                           ; $40bd: $ab
	cp   c                                           ; $40be: $b9
	sbc  c                                           ; $40bf: $99
	add  a                                           ; $40c0: $87
	ld   a, b                                        ; $40c1: $78
	sbc  b                                           ; $40c2: $98
	ld   h, [hl]                                     ; $40c3: $66
	ld   h, [hl]                                     ; $40c4: $66
	ld   h, [hl]                                     ; $40c5: $66
	adc  c                                           ; $40c6: $89
	xor  c                                           ; $40c7: $a9
	add  [hl]                                        ; $40c8: $86
	ld   h, l                                        ; $40c9: $65
	ld   a, c                                        ; $40ca: $79
	sbc  c                                           ; $40cb: $99
	sbc  c                                           ; $40cc: $99
	adc  b                                           ; $40cd: $88
	ld   a, b                                        ; $40ce: $78
	sbc  c                                           ; $40cf: $99
	sbc  c                                           ; $40d0: $99
	sbc  c                                           ; $40d1: $99
	adc  c                                           ; $40d2: $89
	sub  a                                           ; $40d3: $97
	add  a                                           ; $40d4: $87
	sbc  d                                           ; $40d5: $9a
	xor  d                                           ; $40d6: $aa
	sbc  b                                           ; $40d7: $98
	ld   [hl], a                                     ; $40d8: $77
	ld   [hl], a                                     ; $40d9: $77
	adc  b                                           ; $40da: $88
	sbc  c                                           ; $40db: $99
	sbc  c                                           ; $40dc: $99
	sbc  b                                           ; $40dd: $98
	halt                                             ; $40de: $76
	ld   h, a                                        ; $40df: $67
	sbc  c                                           ; $40e0: $99
	add  a                                           ; $40e1: $87
	ld   a, b                                        ; $40e2: $78
	add  a                                           ; $40e3: $87
	ld   [hl], a                                     ; $40e4: $77
	adc  c                                           ; $40e5: $89
	sbc  c                                           ; $40e6: $99
	sbc  c                                           ; $40e7: $99
	add  a                                           ; $40e8: $87
	ld   a, b                                        ; $40e9: $78
	sbc  b                                           ; $40ea: $98
	add  a                                           ; $40eb: $87
	adc  c                                           ; $40ec: $89
	xor  c                                           ; $40ed: $a9
	sbc  c                                           ; $40ee: $99
	sbc  c                                           ; $40ef: $99
	sbc  b                                           ; $40f0: $98
	add  a                                           ; $40f1: $87
	adc  c                                           ; $40f2: $89
	sbc  b                                           ; $40f3: $98
	adc  b                                           ; $40f4: $88
	sbc  c                                           ; $40f5: $99
	xor  c                                           ; $40f6: $a9
	adc  c                                           ; $40f7: $89
	adc  b                                           ; $40f8: $88
	adc  b                                           ; $40f9: $88
	ld   [hl], a                                     ; $40fa: $77
	ld   a, b                                        ; $40fb: $78
	ld   a, b                                        ; $40fc: $78
	add  a                                           ; $40fd: $87
	add  a                                           ; $40fe: $87
	ld   a, b                                        ; $40ff: $78
	ld   [hl], a                                     ; $4100: $77
	ld   [hl], a                                     ; $4101: $77
	adc  b                                           ; $4102: $88
	adc  b                                           ; $4103: $88
	adc  c                                           ; $4104: $89
	sbc  c                                           ; $4105: $99
	sbc  c                                           ; $4106: $99
	sbc  b                                           ; $4107: $98
	sbc  d                                           ; $4108: $9a
	sbc  c                                           ; $4109: $99
	sbc  c                                           ; $410a: $99
	sbc  c                                           ; $410b: $99
	adc  b                                           ; $410c: $88
	sbc  c                                           ; $410d: $99
	adc  b                                           ; $410e: $88
	add  a                                           ; $410f: $87
	ld   a, b                                        ; $4110: $78
	ld   [hl], a                                     ; $4111: $77
	adc  b                                           ; $4112: $88
	adc  b                                           ; $4113: $88
	ld   [hl], a                                     ; $4114: $77
	ld   a, b                                        ; $4115: $78
	adc  b                                           ; $4116: $88
	adc  b                                           ; $4117: $88
	adc  b                                           ; $4118: $88
	adc  c                                           ; $4119: $89
	adc  b                                           ; $411a: $88
	sbc  b                                           ; $411b: $98
	adc  c                                           ; $411c: $89
	adc  b                                           ; $411d: $88
	sbc  c                                           ; $411e: $99
	sbc  b                                           ; $411f: $98
	adc  c                                           ; $4120: $89
	sbc  c                                           ; $4121: $99
	sbc  b                                           ; $4122: $98
	sbc  b                                           ; $4123: $98
	adc  b                                           ; $4124: $88
	adc  b                                           ; $4125: $88
	sbc  b                                           ; $4126: $98
	add  a                                           ; $4127: $87
	ld   [hl], a                                     ; $4128: $77
	ld   a, b                                        ; $4129: $78
	adc  b                                           ; $412a: $88
	adc  b                                           ; $412b: $88
	adc  c                                           ; $412c: $89
	adc  b                                           ; $412d: $88
	adc  b                                           ; $412e: $88
	adc  b                                           ; $412f: $88
	adc  c                                           ; $4130: $89
	sbc  c                                           ; $4131: $99
	sbc  b                                           ; $4132: $98
	sbc  c                                           ; $4133: $99
	sbc  b                                           ; $4134: $98
	sbc  c                                           ; $4135: $99
	sbc  b                                           ; $4136: $98
	adc  b                                           ; $4137: $88
	adc  b                                           ; $4138: $88
	adc  b                                           ; $4139: $88
	adc  b                                           ; $413a: $88
	adc  b                                           ; $413b: $88
	adc  b                                           ; $413c: $88
	adc  b                                           ; $413d: $88
	adc  b                                           ; $413e: $88
	adc  b                                           ; $413f: $88
	adc  b                                           ; $4140: $88
	adc  b                                           ; $4141: $88
	adc  b                                           ; $4142: $88
	adc  b                                           ; $4143: $88
	adc  b                                           ; $4144: $88
	adc  b                                           ; $4145: $88
	adc  b                                           ; $4146: $88
	adc  b                                           ; $4147: $88
	adc  b                                           ; $4148: $88
	adc  b                                           ; $4149: $88
	adc  b                                           ; $414a: $88
	adc  b                                           ; $414b: $88
	adc  b                                           ; $414c: $88
	adc  b                                           ; $414d: $88
	adc  b                                           ; $414e: $88
	adc  b                                           ; $414f: $88
	add  c                                           ; $4150: $81
	ld   de, $1111                                   ; $4151: $11 $11 $11
	ld   de, $1111                                   ; $4154: $11 $11 $11
	ld   de, $1111                                   ; $4157: $11 $11 $11
	ld   de, $1111                                   ; $415a: $11 $11 $11
	ld   de, $1111                                   ; $415d: $11 $11 $11
	ld   de, $1111                                   ; $4160: $11 $11 $11
	ld   de, $1111                                   ; $4163: $11 $11 $11
	ld   de, $1111                                   ; $4166: $11 $11 $11
	ld   de, $1111                                   ; $4169: $11 $11 $11
	ld   de, $0011                                   ; $416c: $11 $11 $00
	ld   c, b                                        ; $416f: $48
	ld   de, $1111                                   ; $4170: $11 $11 $11
	ld   de, $1111                                   ; $4173: $11 $11 $11
	ld   de, $1111                                   ; $4176: $11 $11 $11
	ld   de, $5413                                   ; $4179: $11 $13 $54
	ld   d, h                                        ; $417c: $54
	ld   d, h                                        ; $417d: $54
	ld   b, c                                        ; $417e: $41
	rra                                              ; $417f: $1f
	rst  $38                                         ; $4180: $ff
	pop  af                                          ; $4181: $f1
	ld   de, $1411                                   ; $4182: $11 $11 $14
	ld   d, c                                        ; $4185: $51
	ld   de, $dd1c                                   ; $4186: $11 $1c $dd
	cp   h                                           ; $4189: $bc
	db   $dd                                         ; $418a: $dd
	pop  bc                                          ; $418b: $c1
	ld   de, $1111                                   ; $418c: $11 $11 $11
	ld   de, $1111                                   ; $418f: $11 $11 $11
	ld   de, $1111                                   ; $4192: $11 $11 $11
	ld   de, $1111                                   ; $4195: $11 $11 $11
	ld   de, $5411                                   ; $4198: $11 $11 $54
	ld   b, h                                        ; $419b: $44
	ld   b, h                                        ; $419c: $44
	ld   de, $5454                                   ; $419d: $11 $54 $54
	ld   h, a                                        ; $41a0: $67
	ld   [hl], d                                     ; $41a1: $72
	ld   de, $1111                                   ; $41a2: $11 $11 $11
	ld   de, $1112                                   ; $41a5: $11 $12 $11
	ld   [de], a                                     ; $41a8: $12
	ld   de, $1111                                   ; $41a9: $11 $11 $11
	ld   h, [hl]                                     ; $41ac: $66
	halt                                             ; $41ad: $76
	inc  h                                           ; $41ae: $24
	ld   de, $8888                                   ; $41af: $11 $88 $88
	adc  b                                           ; $41b2: $88
	adc  b                                           ; $41b3: $88
	adc  b                                           ; $41b4: $88
	adc  b                                           ; $41b5: $88
	adc  b                                           ; $41b6: $88
	adc  b                                           ; $41b7: $88
	adc  b                                           ; $41b8: $88
	adc  b                                           ; $41b9: $88
	adc  b                                           ; $41ba: $88
	add  a                                           ; $41bb: $87
	adc  b                                           ; $41bc: $88
	adc  b                                           ; $41bd: $88
	adc  c                                           ; $41be: $89
	adc  b                                           ; $41bf: $88
	adc  b                                           ; $41c0: $88
	add  a                                           ; $41c1: $87
	adc  b                                           ; $41c2: $88
	adc  b                                           ; $41c3: $88
	sbc  b                                           ; $41c4: $98
	adc  b                                           ; $41c5: $88
	adc  b                                           ; $41c6: $88
	adc  b                                           ; $41c7: $88
	adc  b                                           ; $41c8: $88
	adc  c                                           ; $41c9: $89
	sbc  b                                           ; $41ca: $98
	ld   a, b                                        ; $41cb: $78
	adc  b                                           ; $41cc: $88
	adc  c                                           ; $41cd: $89
	sbc  b                                           ; $41ce: $98
	adc  b                                           ; $41cf: $88
	ld   a, b                                        ; $41d0: $78
	add  a                                           ; $41d1: $87
	adc  b                                           ; $41d2: $88
	adc  b                                           ; $41d3: $88
	sbc  c                                           ; $41d4: $99
	ld   a, b                                        ; $41d5: $78
	ld   [hl], a                                     ; $41d6: $77
	sbc  b                                           ; $41d7: $98
	ld   a, b                                        ; $41d8: $78
	sbc  b                                           ; $41d9: $98
	ld   a, b                                        ; $41da: $78
	sub  a                                           ; $41db: $97
	ld   a, b                                        ; $41dc: $78
	sub  a                                           ; $41dd: $97
	ld   a, c                                        ; $41de: $79
	sbc  b                                           ; $41df: $98
	ld   a, b                                        ; $41e0: $78
	adc  c                                           ; $41e1: $89
	adc  b                                           ; $41e2: $88
	sub  a                                           ; $41e3: $97
	ld   l, b                                        ; $41e4: $68
	sbc  c                                           ; $41e5: $99
	ld   a, b                                        ; $41e6: $78
	adc  b                                           ; $41e7: $88
	ld   a, b                                        ; $41e8: $78
	sbc  b                                           ; $41e9: $98
	sbc  b                                           ; $41ea: $98
	add  a                                           ; $41eb: $87
	add  a                                           ; $41ec: $87
	ld   l, c                                        ; $41ed: $69
	xor  b                                           ; $41ee: $a8
	ld   a, b                                        ; $41ef: $78
	sub  a                                           ; $41f0: $97
	ld   a, b                                        ; $41f1: $78
	sub  a                                           ; $41f2: $97
	ld   a, c                                        ; $41f3: $79
	sub  a                                           ; $41f4: $97
	ld   a, c                                        ; $41f5: $79
	adc  b                                           ; $41f6: $88
	sbc  b                                           ; $41f7: $98
	ld   [hl], a                                     ; $41f8: $77
	sbc  c                                           ; $41f9: $99
	halt                                             ; $41fa: $76
	adc  d                                           ; $41fb: $8a
	add  a                                           ; $41fc: $87
	ld   a, c                                        ; $41fd: $79
	adc  c                                           ; $41fe: $89
	sbc  b                                           ; $41ff: $98
	ld   h, a                                        ; $4200: $67
	adc  b                                           ; $4201: $88
	adc  c                                           ; $4202: $89
	ld   [hl], a                                     ; $4203: $77
	sbc  b                                           ; $4204: $98
	ld   [hl], a                                     ; $4205: $77
	ld   h, a                                        ; $4206: $67
	xor  e                                           ; $4207: $ab
	halt                                             ; $4208: $76
	adc  c                                           ; $4209: $89
	ld   l, c                                        ; $420a: $69
	xor  b                                           ; $420b: $a8
	ld   a, c                                        ; $420c: $79
	sub  [hl]                                        ; $420d: $96
	ld   h, a                                        ; $420e: $67
	ld   a, b                                        ; $420f: $78
	xor  d                                           ; $4210: $aa
	ld   a, b                                        ; $4211: $78
	sbc  b                                           ; $4212: $98
	ld   a, b                                        ; $4213: $78
	add  a                                           ; $4214: $87
	sub  a                                           ; $4215: $97
	sbc  c                                           ; $4216: $99
	adc  b                                           ; $4217: $88
	ld   h, [hl]                                     ; $4218: $66
	sbc  e                                           ; $4219: $9b
	and  a                                           ; $421a: $a7
	add  a                                           ; $421b: $87
	ld   a, d                                        ; $421c: $7a
	xor  c                                           ; $421d: $a9
	ld   d, [hl]                                     ; $421e: $56
	sbc  c                                           ; $421f: $99
	sbc  c                                           ; $4220: $99
	sub  [hl]                                        ; $4221: $96
	ld   l, e                                        ; $4222: $6b
	sub  [hl]                                        ; $4223: $96
	add  a                                           ; $4224: $87
	ld   [hl], a                                     ; $4225: $77
	xor  c                                           ; $4226: $a9
	ld   [hl], a                                     ; $4227: $77
	adc  d                                           ; $4228: $8a

jr_0e2_4229:
	sub  a                                           ; $4229: $97
	ld   e, b                                        ; $422a: $58
	add  a                                           ; $422b: $87
	adc  h                                           ; $422c: $8c
	add  h                                           ; $422d: $84

jr_0e2_422e:
	xor  e                                           ; $422e: $ab
	ld   h, l                                        ; $422f: $65
	sbc  c                                           ; $4230: $99
	jr   z, jr_0e2_422e                              ; $4231: $28 $fb

	ld   h, [hl]                                     ; $4233: $66
	sbc  b                                           ; $4234: $98
	ld   b, a                                        ; $4235: $47
	ret  z                                           ; $4236: $c8

	ld   l, c                                        ; $4237: $69
	cp   c                                           ; $4238: $b9
	ld   l, b                                        ; $4239: $68
	add  h                                           ; $423a: $84
	ld   a, e                                        ; $423b: $7b
	sbc  b                                           ; $423c: $98
	xor  c                                           ; $423d: $a9
	ld   h, e                                        ; $423e: $63
	adc  c                                           ; $423f: $89
	ld   h, [hl]                                     ; $4240: $66
	sbc  c                                           ; $4241: $99
	ld   d, l                                        ; $4242: $55
	ld   h, a                                        ; $4243: $67
	ld   h, [hl]                                     ; $4244: $66
	sbc  c                                           ; $4245: $99
	adc  c                                           ; $4246: $89
	sub  [hl]                                        ; $4247: $96
	xor  h                                           ; $4248: $ac
	and  a                                           ; $4249: $a7
	ld   l, l                                        ; $424a: $6d
	ld   [$cb9b], a                                  ; $424b: $ea $9b $cb
	xor  e                                           ; $424e: $ab
	sub  h                                           ; $424f: $94
	sbc  [hl]                                        ; $4250: $9e
	sub  h                                           ; $4251: $94
	ld   a, e                                        ; $4252: $7b
	ld   d, c                                        ; $4253: $51
	dec  [hl]                                        ; $4254: $35
	ld   de, $1122                                   ; $4255: $11 $22 $11
	jr   jr_0e2_4229                                 ; $4258: $18 $cf

	rst  $38                                         ; $425a: $ff
	rst  $38                                         ; $425b: $ff
	sub  h                                           ; $425c: $94
	scf                                              ; $425d: $37
	xor  a                                           ; $425e: $af
	rst  $38                                         ; $425f: $ff
	rst  $38                                         ; $4260: $ff
	push de                                          ; $4261: $d5
	ld   l, b                                        ; $4262: $68
	sub  [hl]                                        ; $4263: $96
	cp   d                                           ; $4264: $ba
	ld   d, d                                        ; $4265: $52
	inc  de                                          ; $4266: $13
	ld   hl, $1111                                   ; $4267: $21 $11 $11
	inc  de                                          ; $426a: $13
	rst  $38                                         ; $426b: $ff
	rst  $38                                         ; $426c: $ff
	ei                                               ; $426d: $fb
	ld   a, [hl-]                                    ; $426e: $3a
	ld   h, l                                        ; $426f: $65
	ld   e, e                                        ; $4270: $5b
	rst  $38                                         ; $4271: $ff
	rst  $38                                         ; $4272: $ff
	ei                                               ; $4273: $fb
	ld   l, d                                        ; $4274: $6a
	xor  b                                           ; $4275: $a8
	dec  [hl]                                        ; $4276: $35
	cp   c                                           ; $4277: $b9
	ld   b, e                                        ; $4278: $43
	ld   hl, $1111                                   ; $4279: $21 $11 $11
	ld   de, $ffff                                   ; $427c: $11 $ff $ff
	ei                                               ; $427f: $fb
	ld   de, $1f31                                   ; $4280: $11 $31 $1f
	rst  $38                                         ; $4283: $ff
	rst  $38                                         ; $4284: $ff
	push af                                          ; $4285: $f5
	ld   b, l                                        ; $4286: $45
	ld   a, d                                        ; $4287: $7a
	ld   h, l                                        ; $4288: $65
	add  a                                           ; $4289: $87
	ld   de, $1121                                   ; $428a: $11 $21 $11
	ld   de, $ff1f                                   ; $428d: $11 $1f $ff
	rst  $38                                         ; $4290: $ff
	ld   d, c                                        ; $4291: $51
	ld   de, rAUD1HIGH                                   ; $4292: $11 $14 $ff
	rst  $38                                         ; $4295: $ff
	ld   sp, hl                                      ; $4296: $f9
	ld   b, c                                        ; $4297: $41
	inc  d                                           ; $4298: $14
	sub  [hl]                                        ; $4299: $96
	ld   [hl], $51                                   ; $429a: $36 $51
	ld   [de], a                                     ; $429c: $12
	ld   de, $1f11                                   ; $429d: $11 $11 $1f
	rst  $38                                         ; $42a0: $ff
	db   $fd                                         ; $42a1: $fd
	ld   de, $1a11                                   ; $42a2: $11 $11 $1a
	rst  $38                                         ; $42a5: $ff
	rst  $38                                         ; $42a6: $ff
	di                                               ; $42a7: $f3
	ld   de, $5226                                   ; $42a8: $11 $26 $52
	ld   de, $1112                                   ; $42ab: $11 $12 $11
	ld   de, $ff1f                                   ; $42ae: $11 $1f $ff
	rst  $38                                         ; $42b1: $ff
	ld   de, $1113                                   ; $42b2: $11 $13 $11
	rst  $38                                         ; $42b5: $ff

Call_0e2_42b6:
	rst  $38                                         ; $42b6: $ff
	cp   $11                                         ; $42b7: $fe $11
	ld   d, $81                                      ; $42b9: $16 $81
	inc  de                                          ; $42bb: $13
	ld   de, $1111                                   ; $42bc: $11 $11 $11
	inc  d                                           ; $42bf: $14
	rst  $38                                         ; $42c0: $ff
	rst  $38                                         ; $42c1: $ff
	ld   de, $1111                                   ; $42c2: $11 $11 $11
	rst  $38                                         ; $42c5: $ff
	rst  $38                                         ; $42c6: $ff
	rst  $38                                         ; $42c7: $ff
	ld   hl, $b514                                   ; $42c8: $21 $14 $b5
	inc  de                                          ; $42cb: $13
	ld   de, $1111                                   ; $42cc: $11 $11 $11
	ld   de, $ffff                                   ; $42cf: $11 $ff $ff
	ld   sp, $1111                                   ; $42d2: $31 $11 $11
	rst  $38                                         ; $42d5: $ff
	rst  $38                                         ; $42d6: $ff
	db   $fc                                         ; $42d7: $fc
	ld   hl, $ca13                                   ; $42d8: $21 $13 $ca
	ld   de, $1124                                   ; $42db: $11 $24 $11
	ld   de, $ff19                                   ; $42de: $11 $19 $ff
	rst  $38                                         ; $42e1: $ff
	ld   de, $1111                                   ; $42e2: $11 $11 $11
	rst  $38                                         ; $42e5: $ff
	rst  $38                                         ; $42e6: $ff
	ld   sp, hl                                      ; $42e7: $f9
	ld   de, $e915                                   ; $42e8: $11 $15 $e9
	ld   hl, $1121                                   ; $42eb: $21 $21 $11
	ld   de, $ff1f                                   ; $42ee: $11 $1f $ff
	rst  $38                                         ; $42f1: $ff
	ld   de, $1411                                   ; $42f2: $11 $11 $14
	rst  $38                                         ; $42f5: $ff
	rst  $38                                         ; $42f6: $ff
	pop  af                                          ; $42f7: $f1
	ld   de, $e53b                                   ; $42f8: $11 $3b $e5
	inc  h                                           ; $42fb: $24
	ld   de, $1111                                   ; $42fc: $11 $11 $11
	rst  $38                                         ; $42ff: $ff
	rst  $38                                         ; $4300: $ff
	pop  af                                          ; $4301: $f1
	ld   de, $1f11                                   ; $4302: $11 $11 $1f
	rst  $38                                         ; $4305: $ff
	rst  $38                                         ; $4306: $ff
	ld   b, c                                        ; $4307: $41
	inc  de                                          ; $4308: $13
	ld   a, $b5                                      ; $4309: $3e $b5
	ld   d, d                                        ; $430b: $52
	ld   de, $1711                                   ; $430c: $11 $11 $17
	rst  $38                                         ; $430f: $ff
	rst  $38                                         ; $4310: $ff
	ld   de, $1111                                   ; $4311: $11 $11 $11
	rst  $38                                         ; $4314: $ff
	rst  $38                                         ; $4315: $ff
	push af                                          ; $4316: $f5
	ld   de, $cd45                                   ; $4317: $11 $45 $cd
	ld   h, [hl]                                     ; $431a: $66
	ld   b, c                                        ; $431b: $41
	ld   de, $9f11                                   ; $431c: $11 $11 $9f
	rst  $38                                         ; $431f: $ff
	pop  af                                          ; $4320: $f1
	ld   de, $1c11                                   ; $4321: $11 $11 $1c
	rst  $38                                         ; $4324: $ff
	rst  $38                                         ; $4325: $ff
	add  c                                           ; $4326: $81
	inc  d                                           ; $4327: $14
	ld   e, e                                        ; $4328: $5b
	cp   c                                           ; $4329: $b9
	and  e                                           ; $432a: $a3
	ld   de, $1f11                                   ; $432b: $11 $11 $1f
	rst  $38                                         ; $432e: $ff
	rst  $38                                         ; $432f: $ff
	ld   de, $1111                                   ; $4330: $11 $11 $11
	rst  $38                                         ; $4333: $ff
	rst  $38                                         ; $4334: $ff
	db   $f4                                         ; $4335: $f4
	ld   de, $fd25                                   ; $4336: $11 $25 $fd
	ld   a, h                                        ; $4339: $7c
	ld   d, c                                        ; $433a: $51
	ld   de, $af11                                   ; $433b: $11 $11 $af
	rst  $38                                         ; $433e: $ff
	pop  af                                          ; $433f: $f1
	ld   de, $1b11                                   ; $4340: $11 $11 $1b
	rst  $38                                         ; $4343: $ff
	rst  $38                                         ; $4344: $ff
	ld   h, c                                        ; $4345: $61
	ld   [de], a                                     ; $4346: $12
	ld   c, [hl]                                     ; $4347: $4e
	rst  ToBoot                                         ; $4348: $c7
	push de                                          ; $4349: $d5
	ld   de, $1711                                   ; $434a: $11 $11 $17
	rst  $38                                         ; $434d: $ff
	rst  $38                                         ; $434e: $ff
	ld   de, $1111                                   ; $434f: $11 $11 $11
	ld   l, a                                        ; $4352: $6f
	rst  $38                                         ; $4353: $ff
	ld   hl, sp+$11                                  ; $4354: $f8 $11
	inc  h                                           ; $4356: $24
	sbc  e                                           ; $4357: $9b
	ld   a, h                                        ; $4358: $7c
	and  d                                           ; $4359: $a2
	ld   de, $2f11                                   ; $435a: $11 $11 $2f
	rst  $38                                         ; $435d: $ff
	ldh  a, [c]                                      ; $435e: $f2
	ld   de, $1311                                   ; $435f: $11 $11 $13
	rst  $38                                         ; $4362: $ff
	rst  $38                                         ; $4363: $ff
	pop  hl                                          ; $4364: $e1
	ld   [de], a                                     ; $4365: $12
	jr   @-$24                                       ; $4366: $18 $da

	ret  z                                           ; $4368: $c8

	ld   hl, $1211                                   ; $4369: $21 $11 $12
	rst  $38                                         ; $436c: $ff
	rst  $38                                         ; $436d: $ff
	ld   d, c                                        ; $436e: $51
	ld   de, $1f11                                   ; $436f: $11 $11 $1f
	rst  $38                                         ; $4372: $ff
	ei                                               ; $4373: $fb
	ld   de, $8b22                                   ; $4374: $11 $22 $8b
	sbc  h                                           ; $4377: $9c
	and  e                                           ; $4378: $a3
	ld   de, $1f11                                   ; $4379: $11 $11 $1f
	rst  $38                                         ; $437c: $ff
	rst  $30                                         ; $437d: $f7
	ld   de, $1111                                   ; $437e: $11 $11 $11
	rst  $38                                         ; $4381: $ff
	rst  $38                                         ; $4382: $ff
	pop  bc                                          ; $4383: $c1
	dec  d                                           ; $4384: $15
	dec  [hl]                                        ; $4385: $35
	sub  a                                           ; $4386: $97
	cp   d                                           ; $4387: $ba
	ld   b, c                                        ; $4388: $41
	ld   de, rAUD1LEN                                   ; $4389: $11 $11 $ff
	rst  $38                                         ; $438c: $ff
	ld   h, c                                        ; $438d: $61
	ld   de, $1f11                                   ; $438e: $11 $11 $1f
	rst  $38                                         ; $4391: $ff
	rst  $30                                         ; $4392: $f7
	ld   de, $7b44                                   ; $4393: $11 $44 $7b

Call_0e2_4396:
	ld   a, d                                        ; $4396: $7a
	sub  c                                           ; $4397: $91
	ld   de, $7f11                                   ; $4398: $11 $11 $7f
	rst  $38                                         ; $439b: $ff
	pop  af                                          ; $439c: $f1
	ld   de, $1b11                                   ; $439d: $11 $11 $1b
	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	ld   sp, $8a16                                   ; $43a2: $31 $16 $8a
	sub  [hl]                                        ; $43a5: $96
	or   e                                           ; $43a6: $b3

Call_0e2_43a7:
	ld   de, $1f11                                   ; $43a7: $11 $11 $1f
	rst  $38                                         ; $43aa: $ff
	rst  $38                                         ; $43ab: $ff
	ld   de, $1111                                   ; $43ac: $11 $11 $11
	rst  $38                                         ; $43af: $ff
	rst  $38                                         ; $43b0: $ff
	ldh  a, [c]                                      ; $43b1: $f2
	ld   de, $ca78                                   ; $43b2: $11 $78 $ca
	ld   h, [hl]                                     ; $43b5: $66
	ld   de, $1111                                   ; $43b6: $11 $11 $11
	rst  $38                                         ; $43b9: $ff
	rst  $38                                         ; $43ba: $ff
	ld   h, c                                        ; $43bb: $61
	ld   de, $1f11                                   ; $43bc: $11 $11 $1f
	rst  $38                                         ; $43bf: $ff
	ld   sp, hl                                      ; $43c0: $f9
	ld   de, $ab38                                   ; $43c1: $11 $38 $ab
	ld   [hl], a                                     ; $43c4: $77
	ld   b, c                                        ; $43c5: $41
	ld   de, $1f11                                   ; $43c6: $11 $11 $1f
	rst  $38                                         ; $43c9: $ff
	ldh  a, [c]                                      ; $43ca: $f2
	ld   de, $1111                                   ; $43cb: $11 $11 $11
	rst  $38                                         ; $43ce: $ff
	rst  $38                                         ; $43cf: $ff
	pop  bc                                          ; $43d0: $c1
	ld   d, $87                                      ; $43d1: $16 $87
	ld   h, l                                        ; $43d3: $65
	ld   h, d                                        ; $43d4: $62
	ld   de, $1911                                   ; $43d5: $11 $11 $19
	rst  $38                                         ; $43d8: $ff
	rst  $38                                         ; $43d9: $ff
	ld   de, $1111                                   ; $43da: $11 $11 $11
	cp   a                                           ; $43dd: $bf
	rst  $38                                         ; $43de: $ff
	or   $13                                         ; $43df: $f6 $13
	ld   h, [hl]                                     ; $43e1: $66
	ld   h, [hl]                                     ; $43e2: $66
	adc  c                                           ; $43e3: $89
	ld   hl, $1111                                   ; $43e4: $21 $11 $11
	xor  a                                           ; $43e7: $af
	rst  $38                                         ; $43e8: $ff
	pop  af                                          ; $43e9: $f1
	ld   de, $1c11                                   ; $43ea: $11 $11 $1c
	rst  $38                                         ; $43ed: $ff
	rst  $38                                         ; $43ee: $ff
	ld   hl, $8827                                   ; $43ef: $21 $27 $88
	ld   [hl], a                                     ; $43f2: $77
	or   l                                           ; $43f3: $b5
	ld   de, $1111                                   ; $43f4: $11 $11 $11
	rst  $38                                         ; $43f7: $ff
	rst  $38                                         ; $43f8: $ff
	ld   [hl], c                                     ; $43f9: $71
	ld   de, $1f11                                   ; $43fa: $11 $11 $1f
	rst  $38                                         ; $43fd: $ff
	rst  $30                                         ; $43fe: $f7
	ld   de, $6858                                   ; $43ff: $11 $58 $68
	sbc  d                                           ; $4402: $9a
	ld   [hl], c                                     ; $4403: $71
	ld   de, $1f11                                   ; $4404: $11 $11 $1f
	rst  $38                                         ; $4407: $ff
	rst  $38                                         ; $4408: $ff
	ld   de, $1111                                   ; $4409: $11 $11 $11
	rst  $38                                         ; $440c: $ff
	rst  $38                                         ; $440d: $ff
	jp   $8932                                       ; $440e: $c3 $32 $89


	add  [hl]                                        ; $4411: $86
	sbc  c                                           ; $4412: $99
	ld   de, $1111                                   ; $4413: $11 $11 $11
	rst  JumpTable                                         ; $4416: $df
	rst  $38                                         ; $4417: $ff
	pop  af                                          ; $4418: $f1
	inc  de                                          ; $4419: $13
	ld   de, $ff19                                   ; $441a: $11 $19 $ff
	rst  $38                                         ; $441d: $ff
	add  l                                           ; $441e: $85
	ld   l, e                                        ; $441f: $6b
	sub  l                                           ; $4420: $95
	ld   c, b                                        ; $4421: $48
	sub  c                                           ; $4422: $91
	ld   de, $1111                                   ; $4423: $11 $11 $11
	rst  $38                                         ; $4426: $ff
	rst  $38                                         ; $4427: $ff
	pop  hl                                          ; $4428: $e1
	ld   de, $1f11                                   ; $4429: $11 $11 $1f
	rst  $38                                         ; $442c: $ff
	ei                                               ; $442d: $fb
	inc  sp                                          ; $442e: $33
	adc  e                                           ; $442f: $8b
	adc  b                                           ; $4430: $88
	sbc  e                                           ; $4431: $9b
	ld   hl, $1111                                   ; $4432: $21 $11 $11
	inc  e                                           ; $4435: $1c
	rst  $38                                         ; $4436: $ff
	rst  $38                                         ; $4437: $ff
	ld   de, $1111                                   ; $4438: $11 $11 $11
	sbc  a                                           ; $443b: $9f
	rst  $38                                         ; $443c: $ff
	push af                                          ; $443d: $f5
	scf                                              ; $443e: $37
	xor  c                                           ; $443f: $a9
	adc  b                                           ; $4440: $88
	and  l                                           ; $4441: $a5
	ld   de, $1111                                   ; $4442: $11 $11 $11
	rra                                              ; $4445: $1f
	rst  $38                                         ; $4446: $ff
	ei                                               ; $4447: $fb
	ld   de, $1111                                   ; $4448: $11 $11 $11
	rst  $38                                         ; $444b: $ff
	rst  $38                                         ; $444c: $ff
	add  [hl]                                        ; $444d: $86
	ld   h, a                                        ; $444e: $67
	xor  b                                           ; $444f: $a8
	ld   d, a                                        ; $4450: $57
	or   h                                           ; $4451: $b4
	ld   de, $1111                                   ; $4452: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4455: $cf
	rst  $38                                         ; $4456: $ff
	di                                               ; $4457: $f3
	inc  d                                           ; $4458: $14
	ld   de, rAUD1LOW                                   ; $4459: $11 $13 $ff
	rst  $38                                         ; $445c: $ff
	ld   [hl], a                                     ; $445d: $77
	sbc  l                                           ; $445e: $9d
	call nz, $9338                                   ; $445f: $c4 $38 $93
	ld   de, $1111                                   ; $4462: $11 $11 $11
	rst  $28                                         ; $4465: $ef
	rst  $38                                         ; $4466: $ff
	db   $f4                                         ; $4467: $f4
	rla                                              ; $4468: $17
	ld   de, $ff17                                   ; $4469: $11 $17 $ff
	rst  $38                                         ; $446c: $ff
	cp   e                                           ; $446d: $bb
	call $3971                                       ; $446e: $cd $71 $39
	ld   [hl], c                                     ; $4471: $71
	ld   de, $1111                                   ; $4472: $11 $11 $11
	rst  $38                                         ; $4475: $ff
	rst  $38                                         ; $4476: $ff
	ldh  a, [c]                                      ; $4477: $f2
	inc  [hl]                                        ; $4478: $34
	ld   de, $ff18                                   ; $4479: $11 $18 $ff
	db   $fd                                         ; $447c: $fd
	sbc  e                                           ; $447d: $9b
	cp   [hl]                                        ; $447e: $be
	and  d                                           ; $447f: $a2
	ld   c, c                                        ; $4480: $49
	ld   b, c                                        ; $4481: $41
	ld   de, $1211                                   ; $4482: $11 $11 $12
	rst  $38                                         ; $4485: $ff
	rst  $38                                         ; $4486: $ff
	or   c                                           ; $4487: $b1
	ld   [hl], e                                     ; $4488: $73
	ld   de, $ff1b                                   ; $4489: $11 $1b $ff
	db   $fc                                         ; $448c: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $448d: $cf
	ld   [$5841], a                                  ; $448e: $ea $41 $58
	ld   de, $1111                                   ; $4491: $11 $11 $11
	inc  d                                           ; $4494: $14
	rst  $38                                         ; $4495: $ff
	rst  $38                                         ; $4496: $ff
	add  e                                           ; $4497: $83
	jp   $1b11                                       ; $4498: $c3 $11 $1b


	rst  $38                                         ; $449b: $ff
	ei                                               ; $449c: $fb
	rst  $28                                         ; $449d: $ef
	db   $eb                                         ; $449e: $eb
	ld   sp, $3149                                   ; $449f: $31 $49 $31
	ld   de, $1111                                   ; $44a2: $11 $11 $11
	rst  $38                                         ; $44a5: $ff
	rst  $38                                         ; $44a6: $ff
	rst  $30                                         ; $44a7: $f7
	push bc                                          ; $44a8: $c5
	ld   de, $ff17                                   ; $44a9: $11 $17 $ff
	rst  $38                                         ; $44ac: $ff
	rst  $38                                         ; $44ad: $ff
	cp   $31                                         ; $44ae: $fe $31
	jr   c, @+$33                                    ; $44b0: $38 $31

	ld   de, $1111                                   ; $44b2: $11 $11 $11
	rst  $38                                         ; $44b5: $ff
	rst  $38                                         ; $44b6: $ff
	rst  $30                                         ; $44b7: $f7
	adc  b                                           ; $44b8: $88
	ld   de, rAUD1LEN                                   ; $44b9: $11 $11 $ff
	rst  $38                                         ; $44bc: $ff
	rst  $38                                         ; $44bd: $ff
	rst  $38                                         ; $44be: $ff
	ld   [hl], c                                     ; $44bf: $71
	inc  d                                           ; $44c0: $14
	ld   hl, $1111                                   ; $44c1: $21 $11 $11
	ld   de, $ffff                                   ; $44c4: $11 $ff $ff
	ei                                               ; $44c7: $fb
	xor  b                                           ; $44c8: $a8
	ld   de, rAUD1LOW                                   ; $44c9: $11 $13 $ff
	rst  $38                                         ; $44cc: $ff
	rst  $28                                         ; $44cd: $ef
	rst  $38                                         ; $44ce: $ff
	sub  h                                           ; $44cf: $94
	inc  hl                                          ; $44d0: $23
	ld   sp, $1111                                   ; $44d1: $31 $11 $11
	ld   de, $ffcf                                   ; $44d4: $11 $cf $ff
	rst  $38                                         ; $44d7: $ff
	sbc  [hl]                                        ; $44d8: $9e
	and  c                                           ; $44d9: $a1
	ld   de, $ff6f                                   ; $44da: $11 $6f $ff
	rst  JumpTable                                         ; $44dd: $df
	rst  $38                                         ; $44de: $ff
	ld   a, [$2112]                                  ; $44df: $fa $12 $21
	ld   de, $1111                                   ; $44e2: $11 $11 $11
	xor  a                                           ; $44e5: $af
	rst  $38                                         ; $44e6: $ff
	rst  $38                                         ; $44e7: $ff
	rst  $38                                         ; $44e8: $ff
	pop  bc                                          ; $44e9: $c1
	ld   de, $fc1a                                   ; $44ea: $11 $1a $fc
	cp   a                                           ; $44ed: $bf
	rst  $38                                         ; $44ee: $ff
	rst  $38                                         ; $44ef: $ff
	ld   [hl], h                                     ; $44f0: $74
	ld   sp, $1111                                   ; $44f1: $31 $11 $11
	ld   de, $ff1e                                   ; $44f4: $11 $1e $ff
	rst  $38                                         ; $44f7: $ff
	rst  $38                                         ; $44f8: $ff
	db   $fd                                         ; $44f9: $fd
	ld   de, $aa13                                   ; $44fa: $11 $13 $aa
	ld   a, c                                        ; $44fd: $79
	rst  $28                                         ; $44fe: $ef
	rst  $38                                         ; $44ff: $ff
	or   l                                           ; $4500: $b5
	ld   h, a                                        ; $4501: $67
	ld   b, c                                        ; $4502: $41
	ld   de, $1111                                   ; $4503: $11 $11 $11
	cp   l                                           ; $4506: $bd
	cp   h                                           ; $4507: $bc
	db   $ed                                         ; $4508: $ed
	rst  $38                                         ; $4509: $ff
	or   $37                                         ; $450a: $f6 $37
	cp   l                                           ; $450c: $bd
	or   a                                           ; $450d: $b7
	ld   l, b                                        ; $450e: $68
	rst  $38                                         ; $450f: $ff
	rst  $20                                         ; $4510: $e7
	ld   a, b                                        ; $4511: $78
	add  a                                           ; $4512: $87
	ld   b, c                                        ; $4513: $41
	ld   [de], a                                     ; $4514: $12
	ld   de, $a816                                   ; $4515: $11 $16 $a8
	adc  b                                           ; $4518: $88
	adc  l                                           ; $4519: $8d
	rst  $38                                         ; $451a: $ff
	and  [hl]                                        ; $451b: $a6
	sbc  a                                           ; $451c: $9f
	cp   $95                                         ; $451d: $fe $95
	ld   l, [hl]                                     ; $451f: $6e
	db   $fd                                         ; $4520: $fd
	ld   h, a                                        ; $4521: $67
	sbc  b                                           ; $4522: $98
	ld   [hl], l                                     ; $4523: $75
	ld   de, $1111                                   ; $4524: $11 $11 $11
	ld   a, a                                        ; $4527: $7f
	xor  b                                           ; $4528: $a8
	call $f8ff                                       ; $4529: $cd $ff $f8
	ld   a, [hl-]                                    ; $452c: $3a
	xor  $c8                                         ; $452d: $ee $c8
	ld   b, h                                        ; $452f: $44
	rst  JumpTable                                         ; $4530: $df
	ld   sp, hl                                      ; $4531: $f9
	adc  b                                           ; $4532: $88
	ld   h, [hl]                                     ; $4533: $66
	ld   sp, $1111                                   ; $4534: $31 $11 $11
	rra                                              ; $4537: $1f
	cp   $df                                         ; $4538: $fe $df
	rst  $38                                         ; $453a: $ff
	cp   $11                                         ; $453b: $fe $11
	ld   c, h                                        ; $453d: $4c
	or   [hl]                                        ; $453e: $b6
	ld   b, [hl]                                     ; $453f: $46
	rst  JumpTable                                         ; $4540: $df
	rst  $38                                         ; $4541: $ff
	add  [hl]                                        ; $4542: $86
	add  l                                           ; $4543: $85
	ld   de, $1111                                   ; $4544: $11 $11 $11
	rra                                              ; $4547: $1f
	rst  $38                                         ; $4548: $ff
	rst  $38                                         ; $4549: $ff
	rst  $38                                         ; $454a: $ff
	db   $fc                                         ; $454b: $fc
	ld   de, $cd13                                   ; $454c: $11 $13 $cd
	adc  h                                           ; $454f: $8c
	rst  $38                                         ; $4550: $ff
	rst  $38                                         ; $4551: $ff
	or   c                                           ; $4552: $b1
	inc  sp                                          ; $4553: $33
	ld   de, $1111                                   ; $4554: $11 $11 $11
	rra                                              ; $4557: $1f
	rst  $38                                         ; $4558: $ff
	rst  $38                                         ; $4559: $ff
	rst  $38                                         ; $455a: $ff
	ld   hl, sp+$11                                  ; $455b: $f8 $11
	ld   de, $ffff                                   ; $455d: $11 $ff $ff
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
	add  c                                           ; $4562: $81
	ld   de, $1111                                   ; $4563: $11 $11 $11
	ld   de, $ff1f                                   ; $4566: $11 $1f $ff
	rst  $38                                         ; $4569: $ff
	db   $fc                                         ; $456a: $fc
	db   $f4                                         ; $456b: $f4
	ld   de, $ff16                                   ; $456c: $11 $16 $ff
	rst  $38                                         ; $456f: $ff
	rst  $38                                         ; $4570: $ff
	rst  $38                                         ; $4571: $ff
	ld   sp, $1111                                   ; $4572: $31 $11 $11
	ld   de, $1f11                                   ; $4575: $11 $11 $1f
	rst  $38                                         ; $4578: $ff
	rst  $38                                         ; $4579: $ff
	ret  c                                           ; $457a: $d8

	pop  af                                          ; $457b: $f1
	ld   de, $ff1c                                   ; $457c: $11 $1c $ff
	rst  $38                                         ; $457f: $ff
	rst  $38                                         ; $4580: $ff
	db   $fc                                         ; $4581: $fc
	ld   de, $1111                                   ; $4582: $11 $11 $11
	ld   de, $5f11                                   ; $4585: $11 $11 $5f
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	sbc  c                                           ; $458a: $99
	sub  c                                           ; $458b: $91
	ld   de, $ff4f                                   ; $458c: $11 $4f $ff
	rst  $38                                         ; $458f: $ff
	rst  $38                                         ; $4590: $ff
	push af                                          ; $4591: $f5
	ld   de, $1131                                   ; $4592: $11 $31 $11
	ld   de, rAUD1LEN                                   ; $4595: $11 $11 $ff
	rst  $38                                         ; $4598: $ff
	rst  $38                                         ; $4599: $ff
	xor  h                                           ; $459a: $ac
	ld   de, rAUD1ENV                                   ; $459b: $11 $12 $ff
	rst  $38                                         ; $459e: $ff
	rst  $38                                         ; $459f: $ff
	rst  $38                                         ; $45a0: $ff
	ld   [hl], c                                     ; $45a1: $71
	ld   [de], a                                     ; $45a2: $12
	ld   b, c                                        ; $45a3: $41
	ld   de, $1211                                   ; $45a4: $11 $11 $12
	rst  $38                                         ; $45a7: $ff
	rst  $38                                         ; $45a8: $ff
	rst  $30                                         ; $45a9: $f7
	add  h                                           ; $45aa: $84
	ld   de, $ff19                                   ; $45ab: $11 $19 $ff
	rst  $38                                         ; $45ae: $ff
	rst  $38                                         ; $45af: $ff
	ld   a, [$1611]                                  ; $45b0: $fa $11 $16
	ld   b, c                                        ; $45b3: $41
	ld   de, $1f11                                   ; $45b4: $11 $11 $1f
	rst  $38                                         ; $45b7: $ff
	rst  $38                                         ; $45b8: $ff
	ld   h, [hl]                                     ; $45b9: $66
	sub  c                                           ; $45ba: $91
	ld   de, $ff6f                                   ; $45bb: $11 $6f $ff
	rst  $38                                         ; $45be: $ff
	rst  $38                                         ; $45bf: $ff
	db   $d3                                         ; $45c0: $d3
	ld   de, $115b                                   ; $45c1: $11 $5b $11
	ld   de, rAUD1LEN                                   ; $45c4: $11 $11 $ff
	rst  $38                                         ; $45c7: $ff
	db   $fd                                         ; $45c8: $fd
	ld   d, a                                        ; $45c9: $57
	ld   de, rAUD1LEN                                   ; $45ca: $11 $11 $ff
	rst  $38                                         ; $45cd: $ff
	rst  $38                                         ; $45ce: $ff
	db   $fd                                         ; $45cf: $fd
	ld   [hl], c                                     ; $45d0: $71
	dec  d                                           ; $45d1: $15
	and  l                                           ; $45d2: $a5
	ld   de, $1b11                                   ; $45d3: $11 $11 $1b
	rst  $38                                         ; $45d6: $ff
	rst  $38                                         ; $45d7: $ff
	db   $d3                                         ; $45d8: $d3
	and  c                                           ; $45d9: $a1
	ld   de, $ff1f                                   ; $45da: $11 $1f $ff
	cp   $ff                                         ; $45dd: $fe $ff
	rst  $30                                         ; $45df: $f7
	ld   de, $514b                                   ; $45e0: $11 $4b $51
	ld   de, rAUD1LEN                                   ; $45e3: $11 $11 $ff
	rst  $38                                         ; $45e6: $ff
	ld   sp, hl                                      ; $45e7: $f9
	daa                                              ; $45e8: $27
	ld   de, rAUD1LOW                                   ; $45e9: $11 $13 $ff
	rst  $38                                         ; $45ec: $ff
	jp   z, Jump_0e2_63ba                            ; $45ed: $ca $ba $63

	ld   b, a                                        ; $45f0: $47
	and  [hl]                                        ; $45f1: $a6
	ld   de, $1811                                   ; $45f2: $11 $11 $18
	rst  $38                                         ; $45f5: $ff
	rst  $38                                         ; $45f6: $ff
	or   c                                           ; $45f7: $b1
	ld   h, c                                        ; $45f8: $61
	ld   de, $ff2f                                   ; $45f9: $11 $2f $ff
	ei                                               ; $45fc: $fb
	sbc  c                                           ; $45fd: $99
	and  [hl]                                        ; $45fe: $a6
	ld   [de], a                                     ; $45ff: $12
	adc  l                                           ; $4600: $8d
	ld   b, c                                        ; $4601: $41
	ld   de, rAUD1LEN                                   ; $4602: $11 $11 $ff
	rst  $38                                         ; $4605: $ff
	rst  $30                                         ; $4606: $f7
	inc  d                                           ; $4607: $14
	ld   de, rAUD1HIGH                                   ; $4608: $11 $14 $ff
	rst  $38                                         ; $460b: $ff
	sub  [hl]                                        ; $460c: $96
	adc  d                                           ; $460d: $8a
	ld   h, e                                        ; $460e: $63
	ld   c, d                                        ; $460f: $4a
	or   c                                           ; $4610: $b1
	ld   de, $1f11                                   ; $4611: $11 $11 $1f
	rst  $38                                         ; $4614: $ff
	rst  $38                                         ; $4615: $ff
	inc  sp                                          ; $4616: $33
	ld   bc, $af11                                   ; $4617: $01 $11 $af
	rst  $38                                         ; $461a: $ff
	ld   sp, hl                                      ; $461b: $f9
	ret                                              ; $461c: $c9


	halt                                             ; $461d: $76
	inc  d                                           ; $461e: $14
	and  $11                                         ; $461f: $e6 $11
	ld   de, rAUD1LOW                                   ; $4621: $11 $13 $ff
	rst  $38                                         ; $4624: $ff
	and  e                                           ; $4625: $a3
	add  c                                           ; $4626: $81
	ld   de, $ff1f                                   ; $4627: $11 $1f $ff
	cp   $ca                                         ; $462a: $fe $ca
	adc  c                                           ; $462c: $89
	ld   h, c                                        ; $462d: $61
	xor  c                                           ; $462e: $a9
	ld   de, $1111                                   ; $462f: $11 $11 $11
	rst  $38                                         ; $4632: $ff
	rst  $38                                         ; $4633: $ff
	ldh  a, [c]                                      ; $4634: $f2
	and  d                                           ; $4635: $a2
	ld   de, $ff18                                   ; $4636: $11 $18 $ff
	rst  $38                                         ; $4639: $ff
	ld   a, l                                        ; $463a: $7d
	ld   [$7c61], a                                  ; $463b: $ea $61 $7c
	ld   de, $1111                                   ; $463e: $11 $11 $11
	sbc  a                                           ; $4641: $9f
	rst  $38                                         ; $4642: $ff
	ld   sp, hl                                      ; $4643: $f9
	ld   d, l                                        ; $4644: $55
	ld   de, rAUD1LEN                                   ; $4645: $11 $11 $ff
	rst  $38                                         ; $4648: $ff
	jp   c, $d29f                                    ; $4649: $da $9f $d2

	ld   e, d                                        ; $464c: $5a
	ld   hl, $1111                                   ; $464d: $21 $11 $11
	rra                                              ; $4650: $1f
	rst  $38                                         ; $4651: $ff
	rst  $38                                         ; $4652: $ff
	ld   h, a                                        ; $4653: $67
	ld   de, $ef11                                   ; $4654: $11 $11 $ef
	rst  $38                                         ; $4657: $ff
	ei                                               ; $4658: $fb
	sbc  $b3                                         ; $4659: $de $b3
	scf                                              ; $465b: $37
	ld   b, c                                        ; $465c: $41
	ld   de, $1f11                                   ; $465d: $11 $11 $1f
	rst  $38                                         ; $4660: $ff
	rst  $38                                         ; $4661: $ff
	db   $fc                                         ; $4662: $fc
	ld   de, $6f11                                   ; $4663: $11 $11 $6f
	rst  $38                                         ; $4666: $ff
	rst  $38                                         ; $4667: $ff
	xor  $f6                                         ; $4668: $ee $f6
	add  hl, sp                                      ; $466a: $39
	ld   de, $1111                                   ; $466b: $11 $11 $11
	rra                                              ; $466e: $1f
	rst  $38                                         ; $466f: $ff
	rst  $38                                         ; $4670: $ff
	call $1141                                       ; $4671: $cd $41 $11
	ld   e, a                                        ; $4674: $5f
	rst  $38                                         ; $4675: $ff
	rst  $38                                         ; $4676: $ff
	rst  $38                                         ; $4677: $ff
	ret                                              ; $4678: $c9


	adc  c                                           ; $4679: $89
	ld   b, c                                        ; $467a: $41
	ld   de, $1211                                   ; $467b: $11 $11 $12
	rst  $38                                         ; $467e: $ff
	rst  $38                                         ; $467f: $ff
	rst  $38                                         ; $4680: $ff
	pop  hl                                          ; $4681: $e1
	ld   de, $ff1c                                   ; $4682: $11 $1c $ff
	rst  $38                                         ; $4685: $ff
	rst  $28                                         ; $4686: $ef
	ld   hl, sp+$77                                  ; $4687: $f8 $77
	ld   de, $1111                                   ; $4689: $11 $11 $11
	ld   de, $ffff                                   ; $468c: $11 $ff $ff
	rst  $38                                         ; $468f: $ff
	pop  af                                          ; $4690: $f1
	ld   de, $fd16                                   ; $4691: $11 $16 $fd
	rst  $38                                         ; $4694: $ff
	rst  $28                                         ; $4695: $ef
	db   $fd                                         ; $4696: $fd
	or   a                                           ; $4697: $b7
	ld   [hl+], a                                    ; $4698: $22
	ld   de, $1111                                   ; $4699: $11 $11 $11
	rst  JumpTable                                         ; $469c: $df
	rst  $38                                         ; $469d: $ff
	rst  $38                                         ; $469e: $ff
	rst  $30                                         ; $469f: $f7
	ld   de, $cd11                                   ; $46a0: $11 $11 $cd
	rst  $38                                         ; $46a3: $ff
	rst  $38                                         ; $46a4: $ff
	cp   $b7                                         ; $46a5: $fe $b7
	ld   b, e                                        ; $46a7: $43
	ld   de, $1111                                   ; $46a8: $11 $11 $11
	rra                                              ; $46ab: $1f
	rst  $38                                         ; $46ac: $ff
	rst  $38                                         ; $46ad: $ff
	rst  $38                                         ; $46ae: $ff
	ld   h, c                                        ; $46af: $61
	ld   de, $ef19                                   ; $46b0: $11 $19 $ef
	rst  $38                                         ; $46b3: $ff
	rst  $38                                         ; $46b4: $ff
	rst  $10                                         ; $46b5: $d7
	ld   d, [hl]                                     ; $46b6: $56
	ld   de, $1111                                   ; $46b7: $11 $11 $11
	ld   de, $ffff                                   ; $46ba: $11 $ff $ff
	rst  $38                                         ; $46bd: $ff
	pop  af                                          ; $46be: $f1
	ld   de, $a815                                   ; $46bf: $11 $15 $a8
	rst  $38                                         ; $46c2: $ff
	rst  $38                                         ; $46c3: $ff
	rst  $10                                         ; $46c4: $d7
	rst  $20                                         ; $46c5: $e7
	inc  de                                          ; $46c6: $13
	ld   de, $1111                                   ; $46c7: $11 $11 $11
	dec  e                                           ; $46ca: $1d
	rst  $38                                         ; $46cb: $ff
	rst  $38                                         ; $46cc: $ff
	db   $fc                                         ; $46cd: $fc
	ld   hl, $2111                                   ; $46ce: $21 $11 $21
	xor  a                                           ; $46d1: $af
	rst  $38                                         ; $46d2: $ff
	rst  $38                                         ; $46d3: $ff
	or   $17                                         ; $46d4: $f6 $17
	ld   de, $1111                                   ; $46d6: $11 $11 $11
	rla                                              ; $46d9: $17
	rst  JumpTable                                         ; $46da: $df
	rst  $38                                         ; $46db: $ff
	rst  $38                                         ; $46dc: $ff
	pop  af                                          ; $46dd: $f1
	ld   [de], a                                     ; $46de: $12
	ld   de, $ff1a                                   ; $46df: $11 $1a $ff
	rst  $38                                         ; $46e2: $ff
	rst  $30                                         ; $46e3: $f7
	rst  JumpTable                                         ; $46e4: $df
	ld   de, $1111                                   ; $46e5: $11 $11 $11
	ld   [de], a                                     ; $46e8: $12
	cpl                                              ; $46e9: $2f
	rst  $38                                         ; $46ea: $ff
	rst  $38                                         ; $46eb: $ff
	db   $fc                                         ; $46ec: $fc
	or   c                                           ; $46ed: $b1
	ld   de, $cf14                                   ; $46ee: $11 $14 $cf
	rst  $38                                         ; $46f1: $ff
	rst  $28                                         ; $46f2: $ef
	cp   c                                           ; $46f3: $b9
	or   c                                           ; $46f4: $b1
	ld   de, $1111                                   ; $46f5: $11 $11 $11
	ld   e, a                                        ; $46f8: $5f
	rst  JumpTable                                         ; $46f9: $df
	rst  $38                                         ; $46fa: $ff
	rst  $38                                         ; $46fb: $ff
	xor  h                                           ; $46fc: $ac
	ld   [hl], c                                     ; $46fd: $71
	ld   de, $ff5b                                   ; $46fe: $11 $5b $ff
	ld   a, a                                        ; $4701: $7f
	db   $fc                                         ; $4702: $fc
	ld   h, h                                        ; $4703: $64
	ld   de, $1111                                   ; $4704: $11 $11 $11
	ld   d, $cb                                      ; $4707: $16 $cb
	rst  $38                                         ; $4709: $ff
	rst  $38                                         ; $470a: $ff
	rst  JumpTable                                         ; $470b: $df
	pop  hl                                          ; $470c: $e1
	daa                                              ; $470d: $27
	ld   a, [hl-]                                    ; $470e: $3a
	ret  z                                           ; $470f: $c8

	cp   a                                           ; $4710: $bf
	push hl                                          ; $4711: $e5
	xor  e                                           ; $4712: $ab
	ld   hl, $1141                                   ; $4713: $21 $41 $11
	ld   de, $7f18                                   ; $4716: $11 $18 $7f
	rst  $38                                         ; $4719: $ff
	rst  $38                                         ; $471a: $ff
	xor  a                                           ; $471b: $af
	di                                               ; $471c: $f3
	dec  de                                          ; $471d: $1b
	reti                                             ; $471e: $d9


	or   a                                           ; $471f: $b7
	ld   l, c                                        ; $4720: $69
	cp   c                                           ; $4721: $b9
	ld   b, e                                        ; $4722: $43
	ld   [hl], a                                     ; $4723: $77
	ld   de, $1e11                                   ; $4724: $11 $11 $1e
	or   c                                           ; $4727: $b1
	ld   c, a                                        ; $4728: $4f
	rst  $30                                         ; $4729: $f7
	rst  $38                                         ; $472a: $ff
	xor  a                                           ; $472b: $af
	pop  af                                          ; $472c: $f1
	rra                                              ; $472d: $1f
	rst  $30                                         ; $472e: $f7
	scf                                              ; $472f: $37
	adc  e                                           ; $4730: $8b
	add  c                                           ; $4731: $81
	add  hl, sp                                      ; $4732: $39
	pop  bc                                          ; $4733: $c1
	ld   de, $2114                                   ; $4734: $11 $14 $21
	ld   de, $75ff                                   ; $4737: $11 $ff $75
	rst  $38                                         ; $473a: $ff
	rst  JumpTable                                         ; $473b: $df
	sub  [hl]                                        ; $473c: $96
	rst  $38                                         ; $473d: $ff
	and  e                                           ; $473e: $a3
	ld   a, h                                        ; $473f: $7c
	or   h                                           ; $4740: $b4
	dec  d                                           ; $4741: $15
	cp   d                                           ; $4742: $ba
	ld   d, c                                        ; $4743: $51
	ld   de, $1123                                   ; $4744: $11 $23 $11
	ld   a, [$fd1d]                                  ; $4747: $fa $1d $fd
	cp   l                                           ; $474a: $bd
	sbc  l                                           ; $474b: $9d
	ld   sp, hl                                      ; $474c: $f9
	ld   a, a                                        ; $474d: $7f
	db   $eb                                         ; $474e: $eb
	and  [hl]                                        ; $474f: $a6
	adc  c                                           ; $4750: $89
	sub  [hl]                                        ; $4751: $96
	dec  d                                           ; $4752: $15
	add  sp, $11                                     ; $4753: $e8 $11
	inc  sp                                          ; $4755: $33
	ld   b, d                                        ; $4756: $42
	inc  d                                           ; $4757: $14
	push hl                                          ; $4758: $e5
	ld   l, h                                        ; $4759: $6c
	ld   [hl], $fa                                   ; $475a: $36 $fa
	ld   c, d                                        ; $475c: $4a
	db   $ed                                         ; $475d: $ed
	cp   e                                           ; $475e: $bb
	cp   d                                           ; $475f: $ba
	res  4, a                                        ; $4760: $cb $a7
	adc  d                                           ; $4762: $8a
	ld   a, d                                        ; $4763: $7a
	ld   h, a                                        ; $4764: $67
	add  l                                           ; $4765: $85
	add  a                                           ; $4766: $87
	ld   [hl], l                                     ; $4767: $75
	ld   e, b                                        ; $4768: $58
	ld   b, d                                        ; $4769: $42
	ld   h, [hl]                                     ; $476a: $66
	ld   h, l                                        ; $476b: $65
	ld   l, c                                        ; $476c: $69
	ld   a, c                                        ; $476d: $79
	and  a                                           ; $476e: $a7
	sbc  d                                           ; $476f: $9a
	jp   z, $9cad                                    ; $4770: $ca $ad $9c

Jump_0e2_4773:
	cp   c                                           ; $4773: $b9
	cp   c                                           ; $4774: $b9
	xor  e                                           ; $4775: $ab
	adc  b                                           ; $4776: $88
	adc  b                                           ; $4777: $88
	sub  a                                           ; $4778: $97
	ld   e, c                                        ; $4779: $59
	ld   h, h                                        ; $477a: $64
	add  a                                           ; $477b: $87
	ld   d, [hl]                                     ; $477c: $56
	add  a                                           ; $477d: $87
	ld   d, [hl]                                     ; $477e: $56
	halt                                             ; $477f: $76
	ld   l, b                                        ; $4780: $68
	ld   h, [hl]                                     ; $4781: $66
	adc  h                                           ; $4782: $8c
	sub  a                                           ; $4783: $97
	sbc  d                                           ; $4784: $9a
	cp   d                                           ; $4785: $ba
	or   a                                           ; $4786: $b7
	adc  e                                           ; $4787: $8b
	xor  b                                           ; $4788: $a8
	ld   a, c                                        ; $4789: $79
	xor  e                                           ; $478a: $ab
	sbc  b                                           ; $478b: $98
	sbc  e                                           ; $478c: $9b
	add  a                                           ; $478d: $87
	and  [hl]                                        ; $478e: $a6
	ld   a, c                                        ; $478f: $79
	halt                                             ; $4790: $76
	ld   [hl], a                                     ; $4791: $77
	halt                                             ; $4792: $76
	add  a                                           ; $4793: $87
	ld   e, b                                        ; $4794: $58
	halt                                             ; $4795: $76
	ld   [hl], l                                     ; $4796: $75
	halt                                             ; $4797: $76
	ld   e, b                                        ; $4798: $58
	adc  b                                           ; $4799: $88
	adc  c                                           ; $479a: $89
	sbc  c                                           ; $479b: $99
	sbc  d                                           ; $479c: $9a
	xor  b                                           ; $479d: $a8
	cp   d                                           ; $479e: $ba
	sbc  c                                           ; $479f: $99
	xor  d                                           ; $47a0: $aa
	sbc  d                                           ; $47a1: $9a
	xor  c                                           ; $47a2: $a9
	xor  d                                           ; $47a3: $aa
	sbc  b                                           ; $47a4: $98
	adc  b                                           ; $47a5: $88
	add  l                                           ; $47a6: $85
	ld   [hl], a                                     ; $47a7: $77
	ld   d, a                                        ; $47a8: $57
	adc  b                                           ; $47a9: $88
	ld   h, a                                        ; $47aa: $67
	sbc  b                                           ; $47ab: $98
	ld   [hl], a                                     ; $47ac: $77
	ld   [hl], a                                     ; $47ad: $77
	adc  b                                           ; $47ae: $88
	ld   h, a                                        ; $47af: $67
	sbc  b                                           ; $47b0: $98
	adc  d                                           ; $47b1: $8a
	adc  c                                           ; $47b2: $89
	cp   c                                           ; $47b3: $b9
	sbc  b                                           ; $47b4: $98
	sbc  b                                           ; $47b5: $98
	adc  c                                           ; $47b6: $89
	ld   a, b                                        ; $47b7: $78
	sbc  c                                           ; $47b8: $99
	sbc  c                                           ; $47b9: $99
	sbc  b                                           ; $47ba: $98
	sbc  b                                           ; $47bb: $98
	sbc  c                                           ; $47bc: $99
	ld   a, b                                        ; $47bd: $78
	ld   [hl], a                                     ; $47be: $77
	adc  c                                           ; $47bf: $89
	ld   a, b                                        ; $47c0: $78
	add  [hl]                                        ; $47c1: $86
	adc  c                                           ; $47c2: $89
	adc  b                                           ; $47c3: $88
	ld   a, b                                        ; $47c4: $78
	ld   [hl], a                                     ; $47c5: $77
	sub  [hl]                                        ; $47c6: $96
	ld   a, d                                        ; $47c7: $7a
	ld   a, c                                        ; $47c8: $79
	sbc  c                                           ; $47c9: $99
	sbc  c                                           ; $47ca: $99
	sub  a                                           ; $47cb: $97
	xor  b                                           ; $47cc: $a8
	sbc  b                                           ; $47cd: $98
	adc  c                                           ; $47ce: $89
	ld   a, c                                        ; $47cf: $79
	adc  c                                           ; $47d0: $89
	adc  b                                           ; $47d1: $88
	sbc  c                                           ; $47d2: $99
	and  a                                           ; $47d3: $a7
	ld   [hl], a                                     ; $47d4: $77
	ld   a, b                                        ; $47d5: $78
	ld   a, b                                        ; $47d6: $78
	ld   a, b                                        ; $47d7: $78
	sub  a                                           ; $47d8: $97
	sbc  c                                           ; $47d9: $99
	ld   a, c                                        ; $47da: $79
	sbc  c                                           ; $47db: $99
	ld   a, c                                        ; $47dc: $79
	adc  b                                           ; $47dd: $88
	sub  a                                           ; $47de: $97
	sbc  b                                           ; $47df: $98
	sbc  c                                           ; $47e0: $99
	ld   l, c                                        ; $47e1: $69
	adc  b                                           ; $47e2: $88
	sub  [hl]                                        ; $47e3: $96
	add  [hl]                                        ; $47e4: $86
	adc  b                                           ; $47e5: $88
	ld   a, c                                        ; $47e6: $79
	ld   a, b                                        ; $47e7: $78
	sbc  b                                           ; $47e8: $98
	ld   a, b                                        ; $47e9: $78
	adc  b                                           ; $47ea: $88
	sub  a                                           ; $47eb: $97
	adc  c                                           ; $47ec: $89
	ld   a, c                                        ; $47ed: $79
	add  a                                           ; $47ee: $87
	adc  b                                           ; $47ef: $88
	sbc  c                                           ; $47f0: $99
	add  a                                           ; $47f1: $87
	add  a                                           ; $47f2: $87
	ld   [hl], a                                     ; $47f3: $77
	ld   a, c                                        ; $47f4: $79
	ld   a, b                                        ; $47f5: $78
	add  a                                           ; $47f6: $87
	sub  a                                           ; $47f7: $97
	adc  c                                           ; $47f8: $89
	ld   l, c                                        ; $47f9: $69
	add  a                                           ; $47fa: $87
	ld   a, c                                        ; $47fb: $79
	add  a                                           ; $47fc: $87
	sub  a                                           ; $47fd: $97
	ld   a, d                                        ; $47fe: $7a
	ld   a, b                                        ; $47ff: $78
	add  a                                           ; $4800: $87
	sub  a                                           ; $4801: $97
	adc  b                                           ; $4802: $88
	ld   l, c                                        ; $4803: $69
	add  [hl]                                        ; $4804: $86
	adc  b                                           ; $4805: $88
	add  a                                           ; $4806: $87
	sbc  b                                           ; $4807: $98
	ld   a, c                                        ; $4808: $79
	add  a                                           ; $4809: $87
	sub  a                                           ; $480a: $97
	sbc  c                                           ; $480b: $99
	ld   a, b                                        ; $480c: $78
	ld   a, b                                        ; $480d: $78
	adc  b                                           ; $480e: $88
	add  a                                           ; $480f: $87
	add  a                                           ; $4810: $87
	ld   a, b                                        ; $4811: $78
	add  a                                           ; $4812: $87
	add  a                                           ; $4813: $87
	sub  a                                           ; $4814: $97
	sbc  c                                           ; $4815: $99
	ld   a, c                                        ; $4816: $79
	ld   a, b                                        ; $4817: $78
	sbc  b                                           ; $4818: $98
	add  a                                           ; $4819: $87
	sbc  c                                           ; $481a: $99
	ld   a, c                                        ; $481b: $79
	add  a                                           ; $481c: $87
	adc  b                                           ; $481d: $88
	and  [hl]                                        ; $481e: $a6
	ld   a, c                                        ; $481f: $79
	ld   l, c                                        ; $4820: $69
	add  l                                           ; $4821: $85
	adc  b                                           ; $4822: $88
	ld   a, c                                        ; $4823: $79
	ld   a, c                                        ; $4824: $79
	sbc  b                                           ; $4825: $98
	sub  a                                           ; $4826: $97
	adc  c                                           ; $4827: $89
	sub  [hl]                                        ; $4828: $96
	sbc  b                                           ; $4829: $98
	sub  a                                           ; $482a: $97
	adc  b                                           ; $482b: $88
	adc  c                                           ; $482c: $89
	ld   e, e                                        ; $482d: $5b
	halt                                             ; $482e: $76
	push bc                                          ; $482f: $c5
	ld   a, c                                        ; $4830: $79
	ld   l, d                                        ; $4831: $6a
	ld   [hl], a                                     ; $4832: $77
	sub  [hl]                                        ; $4833: $96
	sbc  b                                           ; $4834: $98
	adc  b                                           ; $4835: $88
	ld   l, c                                        ; $4836: $69
	adc  b                                           ; $4837: $88
	adc  b                                           ; $4838: $88
	sbc  b                                           ; $4839: $98
	ld   a, c                                        ; $483a: $79
	sub  a                                           ; $483b: $97
	adc  b                                           ; $483c: $88
	ld   a, d                                        ; $483d: $7a
	ld   [hl], a                                     ; $483e: $77
	sub  a                                           ; $483f: $97
	ld   [hl], a                                     ; $4840: $77
	sub  a                                           ; $4841: $97
	ld   a, b                                        ; $4842: $78
	halt                                             ; $4843: $76
	sbc  d                                           ; $4844: $9a
	ld   l, b                                        ; $4845: $68
	adc  b                                           ; $4846: $88
	sbc  b                                           ; $4847: $98
	ld   [hl], a                                     ; $4848: $77
	and  [hl]                                        ; $4849: $a6
	adc  b                                           ; $484a: $88
	ld   a, c                                        ; $484b: $79
	ld   a, b                                        ; $484c: $78
	add  a                                           ; $484d: $87
	adc  e                                           ; $484e: $8b
	ld   h, a                                        ; $484f: $67
	ld   [hl], a                                     ; $4850: $77
	add  [hl]                                        ; $4851: $86
	sbc  b                                           ; $4852: $98
	sbc  b                                           ; $4853: $98
	ld   [hl], a                                     ; $4854: $77
	sub  [hl]                                        ; $4855: $96
	sbc  b                                           ; $4856: $98
	ld   c, d                                        ; $4857: $4a
	ld   a, d                                        ; $4858: $7a
	add  a                                           ; $4859: $87
	and  a                                           ; $485a: $a7
	ld   l, b                                        ; $485b: $68
	add  a                                           ; $485c: $87
	or   [hl]                                        ; $485d: $b6
	adc  b                                           ; $485e: $88
	ld   [hl], a                                     ; $485f: $77
	sbc  b                                           ; $4860: $98
	ld   a, c                                        ; $4861: $79
	adc  c                                           ; $4862: $89
	ld   a, b                                        ; $4863: $78
	sub  [hl]                                        ; $4864: $96
	sbc  b                                           ; $4865: $98
	ld   l, b                                        ; $4866: $68
	ld   a, c                                        ; $4867: $79
	and  a                                           ; $4868: $a7
	ld   l, e                                        ; $4869: $6b
	ld   [hl], a                                     ; $486a: $77
	sub  a                                           ; $486b: $97
	add  a                                           ; $486c: $87
	add  a                                           ; $486d: $87
	and  [hl]                                        ; $486e: $a6
	adc  b                                           ; $486f: $88
	ld   l, b                                        ; $4870: $68
	adc  d                                           ; $4871: $8a
	ld   l, d                                        ; $4872: $6a
	ld   [hl], a                                     ; $4873: $77
	sub  [hl]                                        ; $4874: $96
	sub  a                                           ; $4875: $97
	ld   a, b                                        ; $4876: $78
	sub  a                                           ; $4877: $97
	sub  a                                           ; $4878: $97
	ld   a, d                                        ; $4879: $7a
	ld   a, b                                        ; $487a: $78
	ld   a, b                                        ; $487b: $78
	add  a                                           ; $487c: $87
	add  a                                           ; $487d: $87
	adc  c                                           ; $487e: $89
	ld   a, b                                        ; $487f: $78
	sub  a                                           ; $4880: $97
	adc  b                                           ; $4881: $88
	add  a                                           ; $4882: $87
	sub  a                                           ; $4883: $97
	ld   l, e                                        ; $4884: $6b
	ld   [hl], a                                     ; $4885: $77
	and  a                                           ; $4886: $a7
	sbc  b                                           ; $4887: $98
	ld   a, c                                        ; $4888: $79
	ld   [hl], a                                     ; $4889: $77
	and  a                                           ; $488a: $a7
	ld   l, b                                        ; $488b: $68
	add  l                                           ; $488c: $85
	xor  b                                           ; $488d: $a8
	ld   e, h                                        ; $488e: $5c
	ld   c, b                                        ; $488f: $48
	jp   Jump_0e2_6b99                               ; $4890: $c3 $99 $6b


	ld   h, a                                        ; $4893: $67
	sub  a                                           ; $4894: $97
	and  a                                           ; $4895: $a7
	ld   l, d                                        ; $4896: $6a
	sub  [hl]                                        ; $4897: $96
	adc  c                                           ; $4898: $89
	sub  [hl]                                        ; $4899: $96
	and  a                                           ; $489a: $a7
	ld   e, e                                        ; $489b: $5b
	ld   [hl], a                                     ; $489c: $77
	and  [hl]                                        ; $489d: $a6
	adc  c                                           ; $489e: $89
	ld   a, c                                        ; $489f: $79
	ld   a, c                                        ; $48a0: $79
	sub  [hl]                                        ; $48a1: $96
	and  a                                           ; $48a2: $a7
	adc  d                                           ; $48a3: $8a
	ld   l, c                                        ; $48a4: $69
	adc  b                                           ; $48a5: $88
	add  a                                           ; $48a6: $87
	or   [hl]                                        ; $48a7: $b6
	sbc  b                                           ; $48a8: $98
	ld   l, h                                        ; $48a9: $6c
	ld   e, c                                        ; $48aa: $59
	add  a                                           ; $48ab: $87
	adc  b                                           ; $48ac: $88
	ld   l, b                                        ; $48ad: $68
	and  l                                           ; $48ae: $a5
	xor  b                                           ; $48af: $a8
	ld   a, b                                        ; $48b0: $78
	sub  h                                           ; $48b1: $94
	or   [hl]                                        ; $48b2: $b6
	ld   a, c                                        ; $48b3: $79
	ld   e, h                                        ; $48b4: $5c
	ld   e, b                                        ; $48b5: $58
	adc  c                                           ; $48b6: $89
	ld   l, c                                        ; $48b7: $69
	ld   [hl], a                                     ; $48b8: $77
	sub  [hl]                                        ; $48b9: $96
	sub  a                                           ; $48ba: $97
	sub  [hl]                                        ; $48bb: $96
	and  [hl]                                        ; $48bc: $a6
	sbc  b                                           ; $48bd: $98
	ld   a, e                                        ; $48be: $7b
	ld   e, d                                        ; $48bf: $5a
	add  a                                           ; $48c0: $87
	add  a                                           ; $48c1: $87
	sbc  c                                           ; $48c2: $99
	add  a                                           ; $48c3: $87
	adc  b                                           ; $48c4: $88
	ld   a, d                                        ; $48c5: $7a
	ld   a, b                                        ; $48c6: $78
	sub  a                                           ; $48c7: $97
	and  [hl]                                        ; $48c8: $a6
	adc  c                                           ; $48c9: $89
	ld   a, b                                        ; $48ca: $78
	and  [hl]                                        ; $48cb: $a6
	adc  c                                           ; $48cc: $89
	ld   a, c                                        ; $48cd: $79
	ld   [hl], a                                     ; $48ce: $77
	sbc  b                                           ; $48cf: $98
	ld   a, b                                        ; $48d0: $78
	adc  c                                           ; $48d1: $89
	ld   l, b                                        ; $48d2: $68
	and  [hl]                                        ; $48d3: $a6
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	adc  c                                           ; $48d6: $89
	add  a                                           ; $48d7: $87
	sbc  b                                           ; $48d8: $98
	add  a                                           ; $48d9: $87
	ld   l, d                                        ; $48da: $6a
	add  a                                           ; $48db: $87
	add  a                                           ; $48dc: $87
	sbc  c                                           ; $48dd: $99
	ld   l, c                                        ; $48de: $69
	sbc  b                                           ; $48df: $98
	add  l                                           ; $48e0: $85
	cp   b                                           ; $48e1: $b8
	ld   l, d                                        ; $48e2: $6a
	ld   h, a                                        ; $48e3: $67
	or   [hl]                                        ; $48e4: $b6
	sbc  b                                           ; $48e5: $98
	ld   l, c                                        ; $48e6: $69
	ld   a, c                                        ; $48e7: $79
	add  [hl]                                        ; $48e8: $86
	cp   b                                           ; $48e9: $b8
	ld   l, c                                        ; $48ea: $69
	sbc  b                                           ; $48eb: $98
	add  a                                           ; $48ec: $87
	ld   a, d                                        ; $48ed: $7a
	add  [hl]                                        ; $48ee: $86
	and  a                                           ; $48ef: $a7
	ld   a, c                                        ; $48f0: $79
	ld   a, c                                        ; $48f1: $79
	ld   [hl], a                                     ; $48f2: $77
	adc  c                                           ; $48f3: $89
	ld   [hl], a                                     ; $48f4: $77
	sbc  c                                           ; $48f5: $99
	halt                                             ; $48f6: $76
	xor  c                                           ; $48f7: $a9
	ld   l, d                                        ; $48f8: $6a
	ld   a, b                                        ; $48f9: $78
	sub  a                                           ; $48fa: $97
	add  a                                           ; $48fb: $87
	sbc  c                                           ; $48fc: $99
	ld   l, e                                        ; $48fd: $6b
	ld   h, a                                        ; $48fe: $67
	and  a                                           ; $48ff: $a7
	adc  b                                           ; $4900: $88
	sub  a                                           ; $4901: $97
	adc  b                                           ; $4902: $88
	sbc  c                                           ; $4903: $99
	ld   l, c                                        ; $4904: $69
	sub  a                                           ; $4905: $97
	adc  c                                           ; $4906: $89
	ld   e, c                                        ; $4907: $59
	and  l                                           ; $4908: $a5
	and  a                                           ; $4909: $a7
	sbc  c                                           ; $490a: $99
	ld   e, d                                        ; $490b: $5a
	add  [hl]                                        ; $490c: $86
	xor  c                                           ; $490d: $a9
	ld   h, a                                        ; $490e: $67
	sub  [hl]                                        ; $490f: $96
	xor  b                                           ; $4910: $a8
	ld   e, e                                        ; $4911: $5b
	sub  a                                           ; $4912: $97
	sub  [hl]                                        ; $4913: $96
	sbc  c                                           ; $4914: $99
	ld   a, b                                        ; $4915: $78
	ld   l, d                                        ; $4916: $6a
	halt                                             ; $4917: $76
	and  [hl]                                        ; $4918: $a6
	adc  c                                           ; $4919: $89
	ld   a, c                                        ; $491a: $79
	ld   l, b                                        ; $491b: $68
	and  l                                           ; $491c: $a5
	sbc  c                                           ; $491d: $99
	ld   l, c                                        ; $491e: $69
	adc  c                                           ; $491f: $89
	add  a                                           ; $4920: $87
	sub  [hl]                                        ; $4921: $96
	sbc  b                                           ; $4922: $98
	adc  c                                           ; $4923: $89
	adc  c                                           ; $4924: $89
	ld   l, c                                        ; $4925: $69
	adc  b                                           ; $4926: $88
	sub  a                                           ; $4927: $97
	sub  a                                           ; $4928: $97
	adc  b                                           ; $4929: $88
	ld   l, d                                        ; $492a: $6a
	and  h                                           ; $492b: $a4
	or   a                                           ; $492c: $b7
	ld   l, d                                        ; $492d: $6a
	adc  d                                           ; $492e: $8a
	ld   h, a                                        ; $492f: $67
	rst  ToBoot                                         ; $4930: $c7
	sbc  c                                           ; $4931: $99
	ld   l, c                                        ; $4932: $69
	and  [hl]                                        ; $4933: $a6
	ld   a, b                                        ; $4934: $78
	add  a                                           ; $4935: $87
	ld   a, b                                        ; $4936: $78
	adc  c                                           ; $4937: $89
	adc  c                                           ; $4938: $89
	halt                                             ; $4939: $76
	xor  b                                           ; $493a: $a8
	and  [hl]                                        ; $493b: $a6
	sbc  c                                           ; $493c: $99
	ld   a, c                                        ; $493d: $79
	ld   a, b                                        ; $493e: $78
	ld   a, c                                        ; $493f: $79
	ld   a, b                                        ; $4940: $78
	sub  [hl]                                        ; $4941: $96
	sub  a                                           ; $4942: $97
	sub  a                                           ; $4943: $97
	add  a                                           ; $4944: $87
	sub  a                                           ; $4945: $97
	ld   a, d                                        ; $4946: $7a
	ld   e, d                                        ; $4947: $5a
	ld   a, b                                        ; $4948: $78
	add  a                                           ; $4949: $87
	ld   a, c                                        ; $494a: $79
	sub  l                                           ; $494b: $95
	or   [hl]                                        ; $494c: $b6
	ld   a, d                                        ; $494d: $7a
	ld   l, d                                        ; $494e: $6a
	add  a                                           ; $494f: $87
	sbc  b                                           ; $4950: $98
	ld   a, b                                        ; $4951: $78
	add  a                                           ; $4952: $87
	adc  c                                           ; $4953: $89
	add  a                                           ; $4954: $87
	sub  [hl]                                        ; $4955: $96
	sbc  d                                           ; $4956: $9a
	ld   e, d                                        ; $4957: $5a
	add  a                                           ; $4958: $87
	sub  [hl]                                        ; $4959: $96
	adc  c                                           ; $495a: $89
	ld   e, e                                        ; $495b: $5b
	add  a                                           ; $495c: $87
	and  a                                           ; $495d: $a7
	add  [hl]                                        ; $495e: $86
	xor  b                                           ; $495f: $a8
	ld   a, b                                        ; $4960: $78
	ld   a, b                                        ; $4961: $78
	and  a                                           ; $4962: $a7
	ld   l, d                                        ; $4963: $6a
	adc  b                                           ; $4964: $88
	add  [hl]                                        ; $4965: $86
	sbc  c                                           ; $4966: $99
	ld   a, c                                        ; $4967: $79
	ld   l, c                                        ; $4968: $69
	sub  [hl]                                        ; $4969: $96
	or   l                                           ; $496a: $b5
	xor  b                                           ; $496b: $a8
	ld   a, c                                        ; $496c: $79
	adc  b                                           ; $496d: $88
	ld   a, c                                        ; $496e: $79
	ld   a, b                                        ; $496f: $78
	sbc  b                                           ; $4970: $98
	adc  b                                           ; $4971: $88
	ld   l, d                                        ; $4972: $6a
	add  a                                           ; $4973: $87
	sub  a                                           ; $4974: $97
	sbc  b                                           ; $4975: $98
	add  a                                           ; $4976: $87
	sub  a                                           ; $4977: $97
	adc  b                                           ; $4978: $88
	sbc  b                                           ; $4979: $98
	ld   l, b                                        ; $497a: $68
	ld   a, b                                        ; $497b: $78
	xor  b                                           ; $497c: $a8
	ld   a, c                                        ; $497d: $79
	ld   a, c                                        ; $497e: $79
	ld   a, d                                        ; $497f: $7a
	ld   [hl], a                                     ; $4980: $77
	or   [hl]                                        ; $4981: $b6
	xor  c                                           ; $4982: $a9
	ld   l, b                                        ; $4983: $68
	sub  l                                           ; $4984: $95
	or   [hl]                                        ; $4985: $b6
	sbc  b                                           ; $4986: $98
	ld   e, e                                        ; $4987: $5b
	ld   l, b                                        ; $4988: $68
	ld   a, b                                        ; $4989: $78
	sbc  b                                           ; $498a: $98
	sbc  b                                           ; $498b: $98
	sub  a                                           ; $498c: $97
	sbc  b                                           ; $498d: $98
	ld   d, a                                        ; $498e: $57
	xor  c                                           ; $498f: $a9
	add  a                                           ; $4990: $87
	ld   a, d                                        ; $4991: $7a
	ld   l, c                                        ; $4992: $69
	sub  h                                           ; $4993: $94
	ld   a, d                                        ; $4994: $7a
	add  [hl]                                        ; $4995: $86
	sbc  b                                           ; $4996: $98
	sub  a                                           ; $4997: $97
	ld   e, h                                        ; $4998: $5c
	ld   [hl], a                                     ; $4999: $77
	sub  a                                           ; $499a: $97
	ld   a, b                                        ; $499b: $78
	xor  b                                           ; $499c: $a8
	ld   [hl], a                                     ; $499d: $77
	adc  c                                           ; $499e: $89
	sub  a                                           ; $499f: $97
	sub  l                                           ; $49a0: $95
	xor  e                                           ; $49a1: $ab
	ld   l, c                                        ; $49a2: $69
	ld   a, d                                        ; $49a3: $7a
	sbc  b                                           ; $49a4: $98
	ld   a, b                                        ; $49a5: $78
	sbc  b                                           ; $49a6: $98
	sub  a                                           ; $49a7: $97
	ld   l, c                                        ; $49a8: $69
	and  e                                           ; $49a9: $a3
	sbc  b                                           ; $49aa: $98
	adc  b                                           ; $49ab: $88
	ld   l, d                                        ; $49ac: $6a
	ld   h, [hl]                                     ; $49ad: $66
	sbc  d                                           ; $49ae: $9a
	ld   h, l                                        ; $49af: $65
	ld   h, a                                        ; $49b0: $67
	ld   h, [hl]                                     ; $49b1: $66
	ld   h, [hl]                                     ; $49b2: $66
	halt                                             ; $49b3: $76
	and  [hl]                                        ; $49b4: $a6
	ld   l, c                                        ; $49b5: $69
	cp   b                                           ; $49b6: $b8
	cp   d                                           ; $49b7: $ba
	xor  l                                           ; $49b8: $ad
	xor  l                                           ; $49b9: $ad
	cp   e                                           ; $49ba: $bb
	call $cba7                                       ; $49bb: $cd $a7 $cb
	ld   e, c                                        ; $49be: $59
	and  e                                           ; $49bf: $a3
	ld   [hl], l                                     ; $49c0: $75
	ld   d, h                                        ; $49c1: $54
	ld   d, $11                                      ; $49c2: $16 $11
	inc  bc                                          ; $49c4: $03
	ld   b, c                                        ; $49c5: $41
	ld   b, [hl]                                     ; $49c6: $46
	ld   b, a                                        ; $49c7: $47
	adc  c                                           ; $49c8: $89
	cp   c                                           ; $49c9: $b9
	rst  $38                                         ; $49ca: $ff
	rst  JumpTable                                         ; $49cb: $df
	rst  $38                                         ; $49cc: $ff
	rst  $38                                         ; $49cd: $ff
	cp   $cc                                         ; $49ce: $fe $cc
	xor  c                                           ; $49d0: $a9
	adc  b                                           ; $49d1: $88
	ld   [hl], l                                     ; $49d2: $75
	ld   [hl], c                                     ; $49d3: $71
	ld   bc, $1111                                   ; $49d4: $01 $11 $11
	ld   de, $1314                                   ; $49d7: $11 $14 $13
	ld   a, d                                        ; $49da: $7a
	xor  h                                           ; $49db: $ac
	rst  $38                                         ; $49dc: $ff
	rst  $38                                         ; $49dd: $ff
	rst  $38                                         ; $49de: $ff
	rst  $38                                         ; $49df: $ff
	rst  $38                                         ; $49e0: $ff
	call $aaf7                                       ; $49e1: $cd $f7 $aa
	dec  d                                           ; $49e4: $15
	inc  d                                           ; $49e5: $14
	ld   de, $1111                                   ; $49e6: $11 $11 $11
	ld   de, $4112                                   ; $49e9: $11 $12 $41
	ld   l, a                                        ; $49ec: $6f
	rst  $28                                         ; $49ed: $ef
	rst  $38                                         ; $49ee: $ff
	rst  $38                                         ; $49ef: $ff
	rst  $38                                         ; $49f0: $ff
	rst  $38                                         ; $49f1: $ff
	db   $fc                                         ; $49f2: $fc
	and  [hl]                                        ; $49f3: $a6
	xor  b                                           ; $49f4: $a8
	dec  d                                           ; $49f5: $15
	ld   de, $1111                                   ; $49f6: $11 $11 $11
	ld   de, $1211                                   ; $49f9: $11 $11 $12
	ld   h, $8d                                      ; $49fc: $26 $8d
	rst  $38                                         ; $49fe: $ff
	rst  $38                                         ; $49ff: $ff
	rst  $38                                         ; $4a00: $ff
	rst  $38                                         ; $4a01: $ff
	rst  $38                                         ; $4a02: $ff
	rst  $38                                         ; $4a03: $ff
	and  [hl]                                        ; $4a04: $a6
	ld   de, $1121                                   ; $4a05: $11 $21 $11
	ld   de, $1111                                   ; $4a08: $11 $11 $11
	ld   de, $9f15                                   ; $4a0b: $11 $15 $9f
	rst  $38                                         ; $4a0e: $ff
	rst  $38                                         ; $4a0f: $ff
	rst  $38                                         ; $4a10: $ff
	rst  $38                                         ; $4a11: $ff
	rst  $38                                         ; $4a12: $ff
	rst  $38                                         ; $4a13: $ff
	xor  b                                           ; $4a14: $a8
	ld   b, c                                        ; $4a15: $41
	ld   de, $1111                                   ; $4a16: $11 $11 $11
	ld   de, $1111                                   ; $4a19: $11 $11 $11
	add  hl, de                                      ; $4a1c: $19
	rst  $38                                         ; $4a1d: $ff
	rst  $38                                         ; $4a1e: $ff
	rst  $38                                         ; $4a1f: $ff
	rst  $38                                         ; $4a20: $ff
	rst  $38                                         ; $4a21: $ff
	rst  $38                                         ; $4a22: $ff
	ld   a, [$11a5]                                  ; $4a23: $fa $a5 $11
	ld   de, $1111                                   ; $4a26: $11 $11 $11
	ld   de, $1211                                   ; $4a29: $11 $11 $12
	dec  l                                           ; $4a2c: $2d
	rst  $38                                         ; $4a2d: $ff
	rst  $38                                         ; $4a2e: $ff
	rst  $38                                         ; $4a2f: $ff
	rst  $38                                         ; $4a30: $ff
	rst  $38                                         ; $4a31: $ff
	rst  $38                                         ; $4a32: $ff
	or   l                                           ; $4a33: $b5
	ld   [hl+], a                                    ; $4a34: $22
	ld   de, $1111                                   ; $4a35: $11 $11 $11
	ld   de, $1211                                   ; $4a38: $11 $11 $12
	dec  [hl]                                        ; $4a3b: $35
	rst  $28                                         ; $4a3c: $ef
	rst  $38                                         ; $4a3d: $ff
	rst  $38                                         ; $4a3e: $ff
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	rst  $38                                         ; $4a41: $ff
	ei                                               ; $4a42: $fb
	ld   b, e                                        ; $4a43: $43
	ld   de, $1111                                   ; $4a44: $11 $11 $11
	ld   de, $1111                                   ; $4a47: $11 $11 $11
	ld   d, $ef                                      ; $4a4a: $16 $ef
	rst  $38                                         ; $4a4c: $ff
	rst  $38                                         ; $4a4d: $ff
	rst  $38                                         ; $4a4e: $ff
	rst  $38                                         ; $4a4f: $ff
	rst  $38                                         ; $4a50: $ff
	ld   a, [$4175]                                  ; $4a51: $fa $75 $41
	ld   de, $1111                                   ; $4a54: $11 $11 $11
	ld   de, $1411                                   ; $4a57: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a5a: $cf
	rst  $38                                         ; $4a5b: $ff
	rst  $38                                         ; $4a5c: $ff
	rst  $38                                         ; $4a5d: $ff
	rst  $38                                         ; $4a5e: $ff
	rst  $38                                         ; $4a5f: $ff
	ei                                               ; $4a60: $fb
	sub  [hl]                                        ; $4a61: $96
	ld   sp, $1111                                   ; $4a62: $31 $11 $11
	ld   de, $1111                                   ; $4a65: $11 $11 $11
	ld   de, $efac                                   ; $4a68: $11 $ac $ef
	rst  $38                                         ; $4a6b: $ff
	rst  $38                                         ; $4a6c: $ff
	rst  $38                                         ; $4a6d: $ff
	rst  $38                                         ; $4a6e: $ff
	cp   $a6                                         ; $4a6f: $fe $a6
	ld   h, h                                        ; $4a71: $64
	ld   de, $1111                                   ; $4a72: $11 $11 $11
	ld   de, $1111                                   ; $4a75: $11 $11 $11
	ld   b, a                                        ; $4a78: $47
	rst  JumpTable                                         ; $4a79: $df
	rst  $38                                         ; $4a7a: $ff
	rst  $38                                         ; $4a7b: $ff
	rst  $38                                         ; $4a7c: $ff
	rst  $38                                         ; $4a7d: $ff
	rst  $38                                         ; $4a7e: $ff
	ret  c                                           ; $4a7f: $d8

	ld   b, e                                        ; $4a80: $43
	ld   hl, $1111                                   ; $4a81: $21 $11 $11
	ld   de, $1111                                   ; $4a84: $11 $11 $11
	add  hl, sp                                      ; $4a87: $39
	adc  l                                           ; $4a88: $8d
	rst  $38                                         ; $4a89: $ff
	rst  $38                                         ; $4a8a: $ff
	rst  $38                                         ; $4a8b: $ff
	rst  $38                                         ; $4a8c: $ff
	rst  $38                                         ; $4a8d: $ff
	jp   hl                                          ; $4a8e: $e9


	ld   h, l                                        ; $4a8f: $65
	ld   b, c                                        ; $4a90: $41
	ld   de, $1111                                   ; $4a91: $11 $11 $11
	ld   de, $1111                                   ; $4a94: $11 $11 $11
	xor  a                                           ; $4a97: $af
	rst  $38                                         ; $4a98: $ff
	rst  $38                                         ; $4a99: $ff
	rst  $38                                         ; $4a9a: $ff
	rst  $38                                         ; $4a9b: $ff
	rst  $38                                         ; $4a9c: $ff
	db   $fc                                         ; $4a9d: $fc
	ld   [hl], d                                     ; $4a9e: $72
	dec  h                                           ; $4a9f: $25
	ld   b, c                                        ; $4aa0: $41
	ld   de, $1111                                   ; $4aa1: $11 $11 $11
	ld   de, $5811                                   ; $4aa4: $11 $11 $58
	rst  $38                                         ; $4aa7: $ff
	rst  $38                                         ; $4aa8: $ff
	rst  $38                                         ; $4aa9: $ff
	rst  $38                                         ; $4aaa: $ff
	rst  $38                                         ; $4aab: $ff
	call c, $32b7                                    ; $4aac: $dc $b7 $32
	ld   de, $1111                                   ; $4aaf: $11 $11 $11
	ld   de, $1111                                   ; $4ab2: $11 $11 $11
	add  hl, de                                      ; $4ab5: $19
	rst  $38                                         ; $4ab6: $ff
	rst  $38                                         ; $4ab7: $ff
	rst  $38                                         ; $4ab8: $ff
	rst  $38                                         ; $4ab9: $ff
	cp   $ed                                         ; $4aba: $fe $ed
	reti                                             ; $4abc: $d9


	ld   b, d                                        ; $4abd: $42
	dec  h                                           ; $4abe: $25
	ld   d, c                                        ; $4abf: $51
	ld   de, $1111                                   ; $4ac0: $11 $11 $11
	ld   de, $9f11                                   ; $4ac3: $11 $11 $9f
	rst  $38                                         ; $4ac6: $ff
	rst  $38                                         ; $4ac7: $ff
	rst  $38                                         ; $4ac8: $ff
	rst  $38                                         ; $4ac9: $ff
	db   $ec                                         ; $4aca: $ec
	res  0, e                                        ; $4acb: $cb $83
	ld   [de], a                                     ; $4acd: $12
	ld   [hl-], a                                    ; $4ace: $32
	ld   de, $1111                                   ; $4acf: $11 $11 $11
	ld   de, $7e11                                   ; $4ad2: $11 $11 $7e
	rst  $38                                         ; $4ad5: $ff
	rst  $38                                         ; $4ad6: $ff
	rst  $38                                         ; $4ad7: $ff
	rst  $38                                         ; $4ad8: $ff
	cp   l                                           ; $4ad9: $bd
	call z, Call_0e2_42b6                            ; $4ada: $cc $b6 $42
	inc  d                                           ; $4add: $14
	ld   hl, $1111                                   ; $4ade: $21 $11 $11
	ld   de, $1611                                   ; $4ae1: $11 $11 $16
	rst  JumpTable                                         ; $4ae4: $df
	rst  $38                                         ; $4ae5: $ff
	rst  $38                                         ; $4ae6: $ff
	rst  $38                                         ; $4ae7: $ff
	db   $fd                                         ; $4ae8: $fd
	jp   z, Jump_0e2_7498                            ; $4ae9: $ca $98 $74

	inc  sp                                          ; $4aec: $33
	ld   hl, $1111                                   ; $4aed: $21 $11 $11
	ld   de, $1211                                   ; $4af0: $11 $11 $12
	ld   l, a                                        ; $4af3: $6f
	rst  $38                                         ; $4af4: $ff
	rst  $38                                         ; $4af5: $ff
	rst  $38                                         ; $4af6: $ff
	rst  $38                                         ; $4af7: $ff
	ei                                               ; $4af8: $fb
	xor  c                                           ; $4af9: $a9
	ld   [hl], l                                     ; $4afa: $75
	ld   b, l                                        ; $4afb: $45
	halt                                             ; $4afc: $76
	ld   de, $1111                                   ; $4afd: $11 $11 $11
	ld   de, $1811                                   ; $4b00: $11 $11 $18
	rst  $38                                         ; $4b03: $ff
	rst  $38                                         ; $4b04: $ff
	rst  $38                                         ; $4b05: $ff
	rst  $38                                         ; $4b06: $ff
	db   $fc                                         ; $4b07: $fc
	add  a                                           ; $4b08: $87
	ld   [hl], a                                     ; $4b09: $77
	ld   d, h                                        ; $4b0a: $54
	ld   b, h                                        ; $4b0b: $44
	ld   sp, $1111                                   ; $4b0c: $31 $11 $11
	ld   de, $1211                                   ; $4b0f: $11 $11 $12
	cp   a                                           ; $4b12: $bf
	rst  $38                                         ; $4b13: $ff
	rst  $38                                         ; $4b14: $ff
	rst  $38                                         ; $4b15: $ff
	rst  $38                                         ; $4b16: $ff
	rst  $10                                         ; $4b17: $d7
	ld   h, a                                        ; $4b18: $67
	ld   h, [hl]                                     ; $4b19: $66
	ld   b, l                                        ; $4b1a: $45
	ld   h, e                                        ; $4b1b: $63
	inc  hl                                          ; $4b1c: $23
	ld   de, $1111                                   ; $4b1d: $11 $11 $11
	ld   de, $ff2a                                   ; $4b20: $11 $2a $ff
	rst  $38                                         ; $4b23: $ff
	rst  $38                                         ; $4b24: $ff
	rst  $38                                         ; $4b25: $ff
	db   $ed                                         ; $4b26: $ed
	add  l                                           ; $4b27: $85
	ld   h, [hl]                                     ; $4b28: $66
	ld   d, e                                        ; $4b29: $53
	ld   b, [hl]                                     ; $4b2a: $46
	ld   b, c                                        ; $4b2b: $41
	ld   [hl+], a                                    ; $4b2c: $22
	ld   de, $1111                                   ; $4b2d: $11 $11 $11
	inc  de                                          ; $4b30: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b31: $cf
	rst  $38                                         ; $4b32: $ff
	rst  $38                                         ; $4b33: $ff
	rst  $38                                         ; $4b34: $ff
	cp   $b8                                         ; $4b35: $fe $b8
	ld   h, l                                        ; $4b37: $65
	ld   d, a                                        ; $4b38: $57
	ld   [hl], l                                     ; $4b39: $75
	ld   sp, $2123                                   ; $4b3a: $31 $23 $21
	ld   de, $1111                                   ; $4b3d: $11 $11 $11
	add  hl, hl                                      ; $4b40: $29
	rst  $38                                         ; $4b41: $ff
	rst  $38                                         ; $4b42: $ff
	rst  $38                                         ; $4b43: $ff
	cp   $dc                                         ; $4b44: $fe $dc
	ld   [hl], l                                     ; $4b46: $75
	ld   d, [hl]                                     ; $4b47: $56
	ld   h, l                                        ; $4b48: $65
	ld   a, d                                        ; $4b49: $7a
	ld   h, c                                        ; $4b4a: $61
	ld   de, $1111                                   ; $4b4b: $11 $11 $11
	ld   de, $df12                                   ; $4b4e: $11 $12 $df
	rst  $38                                         ; $4b51: $ff
	rst  $38                                         ; $4b52: $ff
	rst  $38                                         ; $4b53: $ff
	cp   $b7                                         ; $4b54: $fe $b7
	ld   d, l                                        ; $4b56: $55
	ld   d, [hl]                                     ; $4b57: $56
	ld   [hl], a                                     ; $4b58: $77
	add  [hl]                                        ; $4b59: $86
	ld   [hl-], a                                    ; $4b5a: $32
	ld   de, $1111                                   ; $4b5b: $11 $11 $11
	ld   de, $ff16                                   ; $4b5e: $11 $16 $ff
	rst  $38                                         ; $4b61: $ff
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	db   $dd                                         ; $4b64: $dd
	and  h                                           ; $4b65: $a4
	ld   d, l                                        ; $4b66: $55
	ld   d, [hl]                                     ; $4b67: $56
	ld   l, c                                        ; $4b68: $69
	sub  h                                           ; $4b69: $94
	ld   de, $1111                                   ; $4b6a: $11 $11 $11
	ld   de, $4f11                                   ; $4b6d: $11 $11 $4f
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	rst  $38                                         ; $4b72: $ff
	cp   $da                                         ; $4b73: $fe $da
	add  a                                           ; $4b75: $87
	ld   h, l                                        ; $4b76: $65
	ld   d, a                                        ; $4b77: $57
	sub  a                                           ; $4b78: $97
	ld   d, l                                        ; $4b79: $55
	ld   sp, $1111                                   ; $4b7a: $31 $11 $11
	ld   de, $8f11                                   ; $4b7d: $11 $11 $8f
	rst  $38                                         ; $4b80: $ff
	rst  $38                                         ; $4b81: $ff
	rst  $38                                         ; $4b82: $ff
	set  3, c                                        ; $4b83: $cb $d9
	ld   h, [hl]                                     ; $4b85: $66
	ld   d, h                                        ; $4b86: $54
	ld   b, a                                        ; $4b87: $47
	xor  c                                           ; $4b88: $a9
	ld   d, h                                        ; $4b89: $54

Call_0e2_4b8a:
	ld   de, $1111                                   ; $4b8a: $11 $11 $11
	ld   de, $df11                                   ; $4b8d: $11 $11 $df
	rst  $38                                         ; $4b90: $ff
	rst  $38                                         ; $4b91: $ff
	db   $fd                                         ; $4b92: $fd
	rst  JumpTable                                         ; $4b93: $df
	add  $56                                         ; $4b94: $c6 $56
	ld   d, l                                        ; $4b96: $55
	ld   a, h                                        ; $4b97: $7c
	and  [hl]                                        ; $4b98: $a6
	inc  [hl]                                        ; $4b99: $34
	ld   hl, $1111                                   ; $4b9a: $21 $11 $11
	ld   de, rAUD1HIGH                                   ; $4b9d: $11 $14 $ff
	rst  $38                                         ; $4ba0: $ff
	rst  $38                                         ; $4ba1: $ff
	db   $fc                                         ; $4ba2: $fc
	call z, Call_0e2_6687                            ; $4ba3: $cc $87 $66
	ld   d, h                                        ; $4ba6: $54
	adc  e                                           ; $4ba7: $8b
	add  h                                           ; $4ba8: $84
	inc  hl                                          ; $4ba9: $23
	ld   bc, $1111                                   ; $4baa: $01 $11 $11
	ld   de, $ff19                                   ; $4bad: $11 $19 $ff
	rst  $38                                         ; $4bb0: $ff
	rst  $38                                         ; $4bb1: $ff
	db   $ed                                         ; $4bb2: $ed
	xor  h                                           ; $4bb3: $ac
	or   a                                           ; $4bb4: $b7
	add  l                                           ; $4bb5: $85
	ld   b, a                                        ; $4bb6: $47
	ld   a, c                                        ; $4bb7: $79
	add  l                                           ; $4bb8: $85
	ld   b, c                                        ; $4bb9: $41
	ld   de, $1111                                   ; $4bba: $11 $11 $11
	ld   de, $ff3e                                   ; $4bbd: $11 $3e $ff
	rst  $38                                         ; $4bc0: $ff
	rst  $38                                         ; $4bc1: $ff
	db   $db                                         ; $4bc2: $db
	cp   h                                           ; $4bc3: $bc
	ld   l, b                                        ; $4bc4: $68
	sub  l                                           ; $4bc5: $95
	ld   d, a                                        ; $4bc6: $57
	cp   e                                           ; $4bc7: $bb
	ld   d, [hl]                                     ; $4bc8: $56
	ld   sp, $1111                                   ; $4bc9: $31 $11 $11
	ld   de, $5e11                                   ; $4bcc: $11 $11 $5e
	rst  $38                                         ; $4bcf: $ff
	rst  $38                                         ; $4bd0: $ff
	rst  $38                                         ; $4bd1: $ff
	cp   d                                           ; $4bd2: $ba
	cp   e                                           ; $4bd3: $bb
	xor  d                                           ; $4bd4: $aa
	ld   h, h                                        ; $4bd5: $64
	ld   e, b                                        ; $4bd6: $58
	adc  b                                           ; $4bd7: $88
	add  h                                           ; $4bd8: $84
	ld   de, $1111                                   ; $4bd9: $11 $11 $11
	ld   de, $3f11                                   ; $4bdc: $11 $11 $3f
	rst  $38                                         ; $4bdf: $ff
	rst  $38                                         ; $4be0: $ff
	cp   $ae                                         ; $4be1: $fe $ae
	cp   d                                           ; $4be3: $ba
	xor  b                                           ; $4be4: $a8
	ld   [hl], l                                     ; $4be5: $75
	ld   l, d                                        ; $4be6: $6a
	sub  a                                           ; $4be7: $97
	ld   h, h                                        ; $4be8: $64
	ld   de, $1111                                   ; $4be9: $11 $11 $11
	ld   de, $9f11                                   ; $4bec: $11 $11 $9f
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	db   $fd                                         ; $4bf1: $fd
	adc  $b8                                         ; $4bf2: $ce $b8
	xor  d                                           ; $4bf4: $aa
	ld   [hl], h                                     ; $4bf5: $74
	ld   a, c                                        ; $4bf6: $79
	sub  l                                           ; $4bf7: $95
	ld   b, a                                        ; $4bf8: $47
	ld   de, $1111                                   ; $4bf9: $11 $11 $11
	ld   de, $cf11                                   ; $4bfc: $11 $11 $cf
	rst  $38                                         ; $4bff: $ff
	rst  $38                                         ; $4c00: $ff
	db   $fd                                         ; $4c01: $fd
	db   $ec                                         ; $4c02: $ec
	xor  c                                           ; $4c03: $a9
	xor  d                                           ; $4c04: $aa
	ld   d, a                                        ; $4c05: $57
	sbc  c                                           ; $4c06: $99
	halt                                             ; $4c07: $76
	add  a                                           ; $4c08: $87
	ld   hl, $1111                                   ; $4c09: $21 $11 $11
	ld   de, $7e11                                   ; $4c0c: $11 $11 $7e
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	ld   hl, sp-$78                                  ; $4c12: $f8 $88
	xor  e                                           ; $4c14: $ab
	ld   l, c                                        ; $4c15: $69
	sub  l                                           ; $4c16: $95
	ld   [hl], a                                     ; $4c17: $77
	ld   [hl], a                                     ; $4c18: $77
	ld   hl, $1121                                   ; $4c19: $21 $21 $11
	ld   de, $1e11                                   ; $4c1c: $11 $11 $1e
	rst  $38                                         ; $4c1f: $ff
	rst  $38                                         ; $4c20: $ff
	rst  $38                                         ; $4c21: $ff
	rst  $38                                         ; $4c22: $ff
	or   e                                           ; $4c23: $b3
	adc  c                                           ; $4c24: $89
	ld   a, c                                        ; $4c25: $79
	adc  c                                           ; $4c26: $89
	and  [hl]                                        ; $4c27: $a6
	ld   h, a                                        ; $4c28: $67
	ld   b, d                                        ; $4c29: $42
	ld   de, $1111                                   ; $4c2a: $11 $11 $11
	ld   de, $cf14                                   ; $4c2d: $11 $14 $cf
	rst  $38                                         ; $4c30: $ff
	rst  $38                                         ; $4c31: $ff
	db   $fd                                         ; $4c32: $fd
	xor  h                                           ; $4c33: $ac
	ld   d, l                                        ; $4c34: $55
	cp   d                                           ; $4c35: $ba
	cp   b                                           ; $4c36: $b8
	sbc  h                                           ; $4c37: $9c
	ld   [hl-], a                                    ; $4c38: $32
	ld   [hl], h                                     ; $4c39: $74
	ld   b, c                                        ; $4c3a: $41
	ld   de, $1111                                   ; $4c3b: $11 $11 $11
	ld   [de], a                                     ; $4c3e: $12
	cp   a                                           ; $4c3f: $bf
	rst  $38                                         ; $4c40: $ff
	rst  $38                                         ; $4c41: $ff
	rst  $38                                         ; $4c42: $ff
	cp   d                                           ; $4c43: $ba
	sbc  b                                           ; $4c44: $98
	adc  b                                           ; $4c45: $88
	sbc  c                                           ; $4c46: $99
	ld   d, [hl]                                     ; $4c47: $56
	and  a                                           ; $4c48: $a7
	ld   [hl], l                                     ; $4c49: $75
	inc  sp                                          ; $4c4a: $33
	ld   de, $1111                                   ; $4c4b: $11 $11 $11
	ld   de, $ff3d                                   ; $4c4e: $11 $3d $ff
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	db   $fc                                         ; $4c53: $fc
	ld   l, b                                        ; $4c54: $68
	ld   a, d                                        ; $4c55: $7a
	or   l                                           ; $4c56: $b5
	jp   z, $3765                                    ; $4c57: $ca $65 $37

	ld   sp, $1152                                   ; $4c5a: $31 $52 $11
	ld   de, $1911                                   ; $4c5d: $11 $11 $19
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	rst  $38                                         ; $4c62: $ff
	ld   sp, hl                                      ; $4c63: $f9
	sub  [hl]                                        ; $4c64: $96
	cp   h                                           ; $4c65: $bc
	adc  h                                           ; $4c66: $8c
	rst  ToBoot                                         ; $4c67: $c7
	ld   [hl], l                                     ; $4c68: $75
	ld   h, [hl]                                     ; $4c69: $66
	inc  [hl]                                        ; $4c6a: $34
	ld   de, $1111                                   ; $4c6b: $11 $11 $11
	ld   de, $df15                                   ; $4c6e: $11 $15 $df
	rst  $38                                         ; $4c71: $ff
	rst  $38                                         ; $4c72: $ff
	db   $fc                                         ; $4c73: $fc
	or   l                                           ; $4c74: $b5
	sbc  e                                           ; $4c75: $9b
	sbc  l                                           ; $4c76: $9d
	xor  d                                           ; $4c77: $aa

Jump_0e2_4c78:
	add  $58                                         ; $4c78: $c6 $58
	ld   [hl], d                                     ; $4c7a: $72
	ld   [de], a                                     ; $4c7b: $12
	ld   de, $1111                                   ; $4c7c: $11 $11 $11
	inc  de                                          ; $4c7f: $13
	ld   a, a                                        ; $4c80: $7f
	rst  $38                                         ; $4c81: $ff
	rst  $38                                         ; $4c82: $ff
	rst  $38                                         ; $4c83: $ff
	ld   e, c                                        ; $4c84: $59
	and  [hl]                                        ; $4c85: $a6
	db   $dd                                         ; $4c86: $dd
	call Call_0e2_6497                               ; $4c87: $cd $97 $64
	ld   b, [hl]                                     ; $4c8a: $46
	ld   b, d                                        ; $4c8b: $42
	ld   b, c                                        ; $4c8c: $41
	ld   de, $1111                                   ; $4c8d: $11 $11 $11
	ld   e, a                                        ; $4c90: $5f
	rst  $38                                         ; $4c91: $ff
	rst  $38                                         ; $4c92: $ff
	cp   $ad                                         ; $4c93: $fe $ad
	ld   e, c                                        ; $4c95: $59
	db   $ec                                         ; $4c96: $ec
	db   $dd                                         ; $4c97: $dd
	cp   d                                           ; $4c98: $ba
	ld   h, e                                        ; $4c99: $63
	ld   b, [hl]                                     ; $4c9a: $46
	ld   b, h                                        ; $4c9b: $44
	ld   sp, $1111                                   ; $4c9c: $31 $11 $11
	ld   de, $ff4a                                   ; $4c9f: $11 $4a $ff
	rst  $38                                         ; $4ca2: $ff
	rst  $38                                         ; $4ca3: $ff
	rst  $28                                         ; $4ca4: $ef
	or   d                                           ; $4ca5: $b2
	ld   a, e                                        ; $4ca6: $7b
	xor  a                                           ; $4ca7: $af
	cp   h                                           ; $4ca8: $bc
	jp   nc, Jump_0e2_5646                           ; $4ca9: $d2 $46 $56

	ld   b, d                                        ; $4cac: $42
	ld   sp, $1111                                   ; $4cad: $31 $11 $11
	rla                                              ; $4cb0: $17
	ld   a, a                                        ; $4cb1: $7f
	rst  $38                                         ; $4cb2: $ff
	rst  $38                                         ; $4cb3: $ff
	rst  $38                                         ; $4cb4: $ff
	and  l                                           ; $4cb5: $a5
	add  [hl]                                        ; $4cb6: $86
	cp   h                                           ; $4cb7: $bc
	xor  a                                           ; $4cb8: $af
	add  sp, -$5b                                    ; $4cb9: $e8 $a5
	ld   h, $14                                      ; $4cbb: $26 $14
	ld   [hl], c                                     ; $4cbd: $71
	ld   de, $1111                                   ; $4cbe: $11 $11 $11
	daa                                              ; $4cc1: $27
	rst  $28                                         ; $4cc2: $ef
	rst  $38                                         ; $4cc3: $ff
	rst  $38                                         ; $4cc4: $ff
	rst  JumpTable                                         ; $4cc5: $df
	ld   h, e                                        ; $4cc6: $63
	cp   h                                           ; $4cc7: $bc
	xor  l                                           ; $4cc8: $ad
	rst  $28                                         ; $4cc9: $ef
	and  h                                           ; $4cca: $a4
	sub  [hl]                                        ; $4ccb: $96
	ld   b, $83                                      ; $4ccc: $06 $83
	ld   de, $1111                                   ; $4cce: $11 $11 $11
	inc  [hl]                                        ; $4cd1: $34
	ld   e, a                                        ; $4cd2: $5f
	rst  $38                                         ; $4cd3: $ff
	rst  $38                                         ; $4cd4: $ff
	rst  $38                                         ; $4cd5: $ff
	xor  a                                           ; $4cd6: $af
	add  a                                           ; $4cd7: $87
	rst  $20                                         ; $4cd8: $e7
	rst  $28                                         ; $4cd9: $ef
	xor  a                                           ; $4cda: $af
	add  h                                           ; $4cdb: $84
	ld   d, d                                        ; $4cdc: $52
	ld   h, h                                        ; $4cdd: $64
	ld   b, h                                        ; $4cde: $44
	ld   de, $1111                                   ; $4cdf: $11 $11 $11
	ld   de, $ff7f                                   ; $4ce2: $11 $7f $ff
	rst  $38                                         ; $4ce5: $ff
	ld   a, [$bb6b]                                  ; $4ce6: $fa $6b $bb
	rst  JumpTable                                         ; $4ce9: $df
	db   $fc                                         ; $4cea: $fc
	sbc  e                                           ; $4ceb: $9b
	sub  l                                           ; $4cec: $95
	dec  d                                           ; $4ced: $15
	ld   [hl], e                                     ; $4cee: $73
	inc  hl                                          ; $4cef: $23
	ld   de, $1111                                   ; $4cf0: $11 $11 $11
	dec  sp                                          ; $4cf3: $3b
	ld   a, e                                        ; $4cf4: $7b
	rst  $38                                         ; $4cf5: $ff
	rst  $38                                         ; $4cf6: $ff
	adc  $45                                         ; $4cf7: $ce $45
	ld   hl, sp-$01                                  ; $4cf9: $f8 $ff
	cp   a                                           ; $4cfb: $bf
	add  a                                           ; $4cfc: $87
	pop  de                                          ; $4cfd: $d1
	ld   e, d                                        ; $4cfe: $5a
	jr   jr_0e2_4d22                                 ; $4cff: $18 $21

	ld   hl, $1111                                   ; $4d01: $21 $11 $11
	ld   a, [de]                                     ; $4d04: $1a
	jp   hl                                          ; $4d05: $e9


	rst  $38                                         ; $4d06: $ff
	rst  $38                                         ; $4d07: $ff
	db   $fd                                         ; $4d08: $fd
	ld   l, b                                        ; $4d09: $68
	ld   hl, sp-$31                                  ; $4d0a: $f8 $cf
	rst  $28                                         ; $4d0c: $ef
	cp   d                                           ; $4d0d: $ba
	or   c                                           ; $4d0e: $b1
	daa                                              ; $4d0f: $27
	ld   e, b                                        ; $4d10: $58
	ld   d, c                                        ; $4d11: $51
	ld   de, $1111                                   ; $4d12: $11 $11 $11
	inc  e                                           ; $4d15: $1c
	add  a                                           ; $4d16: $87
	rst  $38                                         ; $4d17: $ff
	rst  $38                                         ; $4d18: $ff
	rst  $38                                         ; $4d19: $ff
	ld   [hl], h                                     ; $4d1a: $74
	or   a                                           ; $4d1b: $b7
	cp   a                                           ; $4d1c: $bf
	rst  $38                                         ; $4d1d: $ff
	cp   c                                           ; $4d1e: $b9
	ld   [hl], c                                     ; $4d1f: $71
	inc  d                                           ; $4d20: $14
	sub  a                                           ; $4d21: $97

jr_0e2_4d22:
	ld   h, d                                        ; $4d22: $62
	ld   de, $1211                                   ; $4d23: $11 $11 $12
	ld   [hl], c                                     ; $4d26: $71
	ld   l, a                                        ; $4d27: $6f
	rst  $38                                         ; $4d28: $ff
	rst  JumpTable                                         ; $4d29: $df
	push af                                          ; $4d2a: $f5
	db   $eb                                         ; $4d2b: $eb
	xor  h                                           ; $4d2c: $ac
	adc  a                                           ; $4d2d: $8f
	db   $fd                                         ; $4d2e: $fd
	rst  $30                                         ; $4d2f: $f7
	dec  [hl]                                        ; $4d30: $35
	add  hl, de                                      ; $4d31: $19
	ld   d, e                                        ; $4d32: $53
	or   c                                           ; $4d33: $b1
	ld   de, $1111                                   ; $4d34: $11 $11 $11
	ld   h, h                                        ; $4d37: $64
	ld   l, h                                        ; $4d38: $6c
	db   $ec                                         ; $4d39: $ec
	rst  $38                                         ; $4d3a: $ff
	rst  $38                                         ; $4d3b: $ff
	and  $58                                         ; $4d3c: $e6 $58
	rst  $38                                         ; $4d3e: $ff
	rst  $28                                         ; $4d3f: $ef
	or   $75                                         ; $4d40: $f6 $75
	ld   h, d                                        ; $4d42: $62
	dec  l                                           ; $4d43: $2d
	ld   d, c                                        ; $4d44: $51
	ld   de, $1111                                   ; $4d45: $11 $11 $11
	ld   de, $de6c                                   ; $4d48: $11 $6c $de
	rst  $28                                         ; $4d4b: $ef
	db   $fc                                         ; $4d4c: $fc
	ld   a, [$7f5c]                                  ; $4d4d: $fa $5c $7f
	rst  $38                                         ; $4d50: $ff
	db   $fc                                         ; $4d51: $fc
	ld   e, d                                        ; $4d52: $5a
	ld   de, $8457                                   ; $4d53: $11 $57 $84
	ld   hl, $1111                                   ; $4d56: $21 $11 $11
	ld   hl, $f618                                   ; $4d59: $21 $18 $f6
	rst  JumpTable                                         ; $4d5c: $df
	ld   a, [$78f9]                                  ; $4d5d: $fa $f9 $78
	cp   a                                           ; $4d60: $bf
	cp   a                                           ; $4d61: $bf
	ld   a, [$41a8]                                  ; $4d62: $fa $a8 $41
	dec  de                                          ; $4d65: $1b
	sub  d                                           ; $4d66: $92
	ld   d, d                                        ; $4d67: $52
	ld   de, $1117                                   ; $4d68: $11 $17 $11
	ld   l, d                                        ; $4d6b: $6a
	or   c                                           ; $4d6c: $b1
	rst  JumpTable                                         ; $4d6d: $df
	ld   l, a                                        ; $4d6e: $6f
	rst  $38                                         ; $4d6f: $ff
	di                                               ; $4d70: $f3
	db   $fd                                         ; $4d71: $fd
	adc  a                                           ; $4d72: $8f
	rst  $38                                         ; $4d73: $ff
	or   [hl]                                        ; $4d74: $b6
	db   $e3                                         ; $4d75: $e3
	dec  d                                           ; $4d76: $15
	adc  e                                           ; $4d77: $8b
	ld   d, $41                                      ; $4d78: $16 $41
	ld   de, $3b11                                   ; $4d7a: $11 $11 $3b
	ld   c, h                                        ; $4d7d: $4c
	pop  af                                          ; $4d7e: $f1
	ld   c, a                                        ; $4d7f: $4f
	and  a                                           ; $4d80: $a7
	rst  $38                                         ; $4d81: $ff
	push af                                          ; $4d82: $f5
	cp   a                                           ; $4d83: $bf
	sub  l                                           ; $4d84: $95
	db   $fd                                         ; $4d85: $fd
	and  [hl]                                        ; $4d86: $a6
	ld   a, [hl]                                     ; $4d87: $7e
	ld   de, $25c3                                   ; $4d88: $11 $c3 $25
	ld   [hl+], a                                    ; $4d8b: $22
	ld   de, $3911                                   ; $4d8c: $11 $11 $39
	dec  hl                                          ; $4d8f: $2b
	di                                               ; $4d90: $f3
	cp   a                                           ; $4d91: $bf
	rst  $28                                         ; $4d92: $ef
	xor  e                                           ; $4d93: $ab
	and  a                                           ; $4d94: $a7
	rst  $38                                         ; $4d95: $ff
	rst  $28                                         ; $4d96: $ef
	db   $ed                                         ; $4d97: $ed
	ld   h, d                                        ; $4d98: $62
	ld   h, d                                        ; $4d99: $62
	sub  l                                           ; $4d9a: $95
	ld   e, d                                        ; $4d9b: $5a
	ld   [de], a                                     ; $4d9c: $12
	ld   hl, $4321                                   ; $4d9d: $21 $21 $43
	add  hl, de                                      ; $4da0: $19
	pop  de                                          ; $4da1: $d1
	cp   a                                           ; $4da2: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4da3: $cf
	adc  l                                           ; $4da4: $8d
	rst  $30                                         ; $4da5: $f7
	ld   sp, hl                                      ; $4da6: $f9
	cp   a                                           ; $4da7: $bf
	sbc  [hl]                                        ; $4da8: $9e
	push af                                          ; $4da9: $f5
	and  [hl]                                        ; $4daa: $a6
	rla                                              ; $4dab: $17
	daa                                              ; $4dac: $27
	or   h                                           ; $4dad: $b4
	dec  [hl]                                        ; $4dae: $35
	ld   de, $2511                                   ; $4daf: $11 $11 $25
	ld   [de], a                                     ; $4db2: $12
	sbc  b                                           ; $4db3: $98
	ld   l, e                                        ; $4db4: $6b
	rst  $28                                         ; $4db5: $ef
	db   $fd                                         ; $4db6: $fd
	ret  c                                           ; $4db7: $d8

	res  7, a                                        ; $4db8: $cb $bf
	cp   l                                           ; $4dba: $bd
	db   $fd                                         ; $4dbb: $fd
	push hl                                          ; $4dbc: $e5
	ld   l, d                                        ; $4dbd: $6a
	inc  de                                          ; $4dbe: $13
	sbc  b                                           ; $4dbf: $98
	add  c                                           ; $4dc0: $81
	dec  [hl]                                        ; $4dc1: $35
	ld   de, $5114                                   ; $4dc2: $11 $14 $51
	ld   a, l                                        ; $4dc5: $7d
	ld   [hl], d                                     ; $4dc6: $72
	cp   a                                           ; $4dc7: $bf
	cp   c                                           ; $4dc8: $b9
	rst  $38                                         ; $4dc9: $ff
	ld   h, [hl]                                     ; $4dca: $66
	rst  $38                                         ; $4dcb: $ff
	sbc  l                                           ; $4dcc: $9d
	rst  $38                                         ; $4dcd: $ff
	adc  b                                           ; $4dce: $88
	push af                                          ; $4dcf: $f5
	daa                                              ; $4dd0: $27
	ld   [hl], l                                     ; $4dd1: $75
	dec  h                                           ; $4dd2: $25
	ld   h, c                                        ; $4dd3: $61
	inc  de                                          ; $4dd4: $13
	ld   de, $112b                                   ; $4dd5: $11 $2b $11
	db   $fd                                         ; $4dd8: $fd
	and  h                                           ; $4dd9: $a4
	rst  JumpTable                                         ; $4dda: $df
	add  hl, sp                                      ; $4ddb: $39
	cp   $a9                                         ; $4ddc: $fe $a9
	rst  $38                                         ; $4dde: $ff
	sbc  a                                           ; $4ddf: $9f
	rst  $20                                         ; $4de0: $e7
	ld   a, [hl+]                                    ; $4de1: $2a
	ldh  [c], a                                      ; $4de2: $e2
	xor  l                                           ; $4de3: $ad
	ld   b, d                                        ; $4de4: $42
	dec  h                                           ; $4de5: $25
	ld   de, $19c1                                   ; $4de6: $11 $c1 $19
	ld   h, c                                        ; $4de9: $61
	dec  e                                           ; $4dea: $1d
	or   c                                           ; $4deb: $b1
	rst  JumpTable                                         ; $4dec: $df
	rst  $38                                         ; $4ded: $ff
	cp   a                                           ; $4dee: $bf
	add  c                                           ; $4def: $81
	ld   hl, sp+$6f                                  ; $4df0: $f8 $6f
	rst  $38                                         ; $4df2: $ff
	xor  b                                           ; $4df3: $a8
	ldh  [c], a                                      ; $4df4: $e2
	ld   [hl], h                                     ; $4df5: $74
	cp   a                                           ; $4df6: $bf
	ld   h, $41                                      ; $4df7: $26 $41
	ld   b, c                                        ; $4df9: $41
	inc  sp                                          ; $4dfa: $33
	jr   jr_0e2_4e0e                                 ; $4dfb: $18 $11

	add  sp, $57                                     ; $4dfd: $e8 $57
	cp   e                                           ; $4dff: $bb
	rra                                              ; $4e00: $1f
	ei                                               ; $4e01: $fb
	ret                                              ; $4e02: $c9


	ret  z                                           ; $4e03: $c8

	cpl                                              ; $4e04: $2f
	jp   hl                                          ; $4e05: $e9


	ld   sp, hl                                      ; $4e06: $f9
	cp   b                                           ; $4e07: $b8
	ld   l, a                                        ; $4e08: $6f
	ld   b, [hl]                                     ; $4e09: $46
	and  d                                           ; $4e0a: $a2
	ld   h, c                                        ; $4e0b: $61
	ld   b, l                                        ; $4e0c: $45
	dec  d                                           ; $4e0d: $15

jr_0e2_4e0e:
	ld   hl, $8543                                   ; $4e0e: $21 $43 $85
	xor  e                                           ; $4e11: $ab
	dec  de                                          ; $4e12: $1b
	or   [hl]                                        ; $4e13: $b6
	ret  c                                           ; $4e14: $d8

	rst  $28                                         ; $4e15: $ef
	ld   l, $f9                                      ; $4e16: $2e $f9
	db   $ec                                         ; $4e18: $ec
	ei                                               ; $4e19: $fb
	ccf                                              ; $4e1a: $3f
	sub  d                                           ; $4e1b: $92
	ret  z                                           ; $4e1c: $c8

	jp   $2318                                       ; $4e1d: $c3 $18 $23


	ld   h, h                                        ; $4e20: $64
	ld   d, c                                        ; $4e21: $51
	ld   l, h                                        ; $4e22: $6c
	ld   de, $d419                                   ; $4e23: $11 $19 $d4
	ld   l, e                                        ; $4e26: $6b
	ld   [hl], h                                     ; $4e27: $74
	rst  $28                                         ; $4e28: $ef
	jp   hl                                          ; $4e29: $e9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e2a: $cf
	sub  [hl]                                        ; $4e2b: $96
	sbc  e                                           ; $4e2c: $9b
	jp   c, $44bb                                    ; $4e2d: $da $bb $44

	xor  d                                           ; $4e30: $aa
	sub  [hl]                                        ; $4e31: $96
	rst  ToBoot                                         ; $4e32: $c7
	inc  de                                          ; $4e33: $13
	ld   b, l                                        ; $4e34: $45
	ld   b, h                                        ; $4e35: $44
	ld   d, [hl]                                     ; $4e36: $56
	add  [hl]                                        ; $4e37: $86
	inc  h                                           ; $4e38: $24
	sub  h                                           ; $4e39: $94
	ld   e, h                                        ; $4e3a: $5c
	cp   l                                           ; $4e3b: $bd
	ld   a, [$7bdc]                                  ; $4e3c: $fa $dc $7b
	cp   h                                           ; $4e3f: $bc
	jp   z, $abb9                                    ; $4e40: $ca $b9 $ab

	sbc  b                                           ; $4e43: $98
	ld   a, d                                        ; $4e44: $7a
	ld   [hl], e                                     ; $4e45: $73
	ld   [hl], d                                     ; $4e46: $72
	dec  d                                           ; $4e47: $15
	dec  h                                           ; $4e48: $25
	ld   sp, $39a3                                   ; $4e49: $31 $a3 $39
	ld   l, e                                        ; $4e4c: $6b
	inc  h                                           ; $4e4d: $24
	ld   sp, hl                                      ; $4e4e: $f9
	cp   c                                           ; $4e4f: $b9
	ld   c, [hl]                                     ; $4e50: $4e
	adc  b                                           ; $4e51: $88
	ld   hl, sp-$35                                  ; $4e52: $f8 $cb
	sbc  e                                           ; $4e54: $9b
	adc  h                                           ; $4e55: $8c
	ret  z                                           ; $4e56: $c8

	xor  d                                           ; $4e57: $aa
	add  [hl]                                        ; $4e58: $86
	ld   d, a                                        ; $4e59: $57
	ld   b, l                                        ; $4e5a: $45
	adc  b                                           ; $4e5b: $88
	ld   h, l                                        ; $4e5c: $65
	ld   d, l                                        ; $4e5d: $55
	dec  [hl]                                        ; $4e5e: $35
	ld   d, h                                        ; $4e5f: $54
	inc  hl                                          ; $4e60: $23
	sbc  c                                           ; $4e61: $99
	ld   e, b                                        ; $4e62: $58
	sbc  e                                           ; $4e63: $9b
	cp   d                                           ; $4e64: $ba
	xor  d                                           ; $4e65: $aa
	call c, $ac9b                                    ; $4e66: $dc $9b $ac
	cp   e                                           ; $4e69: $bb
	jp   hl                                          ; $4e6a: $e9


	ld   e, b                                        ; $4e6b: $58
	ld   l, b                                        ; $4e6c: $68
	ld   h, a                                        ; $4e6d: $67
	jp   nz, $2614                                   ; $4e6e: $c2 $14 $26

	ld   h, e                                        ; $4e71: $63
	ld   h, l                                        ; $4e72: $65
	sbc  e                                           ; $4e73: $9b
	ld   h, a                                        ; $4e74: $67
	ld   b, [hl]                                     ; $4e75: $46
	halt                                             ; $4e76: $76
	ld   [$aa7c], a                                  ; $4e77: $ea $7c $aa
	sbc  b                                           ; $4e7a: $98
	cp   c                                           ; $4e7b: $b9
	cp   l                                           ; $4e7c: $bd
	sbc  e                                           ; $4e7d: $9b
	sub  l                                           ; $4e7e: $95
	ld   l, c                                        ; $4e7f: $69
	db   $db                                         ; $4e80: $db
	ld   [hl], a                                     ; $4e81: $77
	add  [hl]                                        ; $4e82: $86
	ld   d, a                                        ; $4e83: $57
	ld   l, c                                        ; $4e84: $69
	add  [hl]                                        ; $4e85: $86
	sub  e                                           ; $4e86: $93
	add  hl, hl                                      ; $4e87: $29
	halt                                             ; $4e88: $76
	ld   h, e                                        ; $4e89: $63
	ld   h, e                                        ; $4e8a: $63
	ld   e, [hl]                                     ; $4e8b: $5e
	xor  c                                           ; $4e8c: $a9
	and  a                                           ; $4e8d: $a7
	ld   a, d                                        ; $4e8e: $7a
	rst  $38                                         ; $4e8f: $ff
	sub  a                                           ; $4e90: $97
	sbc  e                                           ; $4e91: $9b
	xor  h                                           ; $4e92: $ac
	cp   b                                           ; $4e93: $b8
	adc  b                                           ; $4e94: $88
	and  a                                           ; $4e95: $a7
	add  hl, sp                                      ; $4e96: $39
	halt                                             ; $4e97: $76
	sub  l                                           ; $4e98: $95
	ld   h, l                                        ; $4e99: $65
	ld   e, c                                        ; $4e9a: $59
	ld   d, a                                        ; $4e9b: $57
	ld   b, e                                        ; $4e9c: $43
	adc  b                                           ; $4e9d: $88
	xor  b                                           ; $4e9e: $a8
	ld   b, [hl]                                     ; $4e9f: $46
	adc  b                                           ; $4ea0: $88
	xor  c                                           ; $4ea1: $a9
	bit  7, d                                        ; $4ea2: $cb $7a
	adc  c                                           ; $4ea4: $89
	cp   d                                           ; $4ea5: $ba
	cp   d                                           ; $4ea6: $ba
	sbc  h                                           ; $4ea7: $9c

Jump_0e2_4ea8:
	xor  c                                           ; $4ea8: $a9
	ld   [hl], l                                     ; $4ea9: $75
	adc  d                                           ; $4eaa: $8a
	cp   h                                           ; $4eab: $bc
	add  l                                           ; $4eac: $85
	ld   b, l                                        ; $4ead: $45
	ld   b, e                                        ; $4eae: $43
	ld   l, e                                        ; $4eaf: $6b
	sbc  b                                           ; $4eb0: $98
	sub  [hl]                                        ; $4eb1: $96
	ld   h, h                                        ; $4eb2: $64
	ld   a, c                                        ; $4eb3: $79
	ld   a, c                                        ; $4eb4: $79
	halt                                             ; $4eb5: $76
	ld   a, c                                        ; $4eb6: $79
	bit  7, b                                        ; $4eb7: $cb $78
	xor  e                                           ; $4eb9: $ab
	xor  c                                           ; $4eba: $a9
	cp   e                                           ; $4ebb: $bb
	ld   a, c                                        ; $4ebc: $79
	adc  b                                           ; $4ebd: $88
	ld   h, l                                        ; $4ebe: $65
	sub  l                                           ; $4ebf: $95
	ld   e, b                                        ; $4ec0: $58
	ld   a, b                                        ; $4ec1: $78
	sbc  d                                           ; $4ec2: $9a
	and  a                                           ; $4ec3: $a7
	ld   [hl], a                                     ; $4ec4: $77
	ld   e, c                                        ; $4ec5: $59
	adc  c                                           ; $4ec6: $89
	add  l                                           ; $4ec7: $85
	add  a                                           ; $4ec8: $87
	ld   e, b                                        ; $4ec9: $58
	sub  a                                           ; $4eca: $97
	add  a                                           ; $4ecb: $87
	adc  b                                           ; $4ecc: $88
	adc  d                                           ; $4ecd: $8a
	add  [hl]                                        ; $4ece: $86
	add  a                                           ; $4ecf: $87
	adc  e                                           ; $4ed0: $8b
	xor  c                                           ; $4ed1: $a9
	sbc  c                                           ; $4ed2: $99
	xor  b                                           ; $4ed3: $a8
	cp   d                                           ; $4ed4: $ba
	ld   l, c                                        ; $4ed5: $69
	sub  [hl]                                        ; $4ed6: $96
	ld   h, a                                        ; $4ed7: $67
	sbc  c                                           ; $4ed8: $99
	adc  h                                           ; $4ed9: $8c
	sub  l                                           ; $4eda: $95
	ld   a, b                                        ; $4edb: $78
	xor  d                                           ; $4edc: $aa
	ld   [hl], a                                     ; $4edd: $77
	ld   d, h                                        ; $4ede: $54
	adc  c                                           ; $4edf: $89
	sbc  b                                           ; $4ee0: $98
	ld   l, c                                        ; $4ee1: $69
	ld   [hl], l                                     ; $4ee2: $75
	res  1, c                                        ; $4ee3: $cb $89
	ld   a, c                                        ; $4ee5: $79
	ld   a, b                                        ; $4ee6: $78
	or   a                                           ; $4ee7: $b7
	ld   a, b                                        ; $4ee8: $78
	ld   a, d                                        ; $4ee9: $7a
	sbc  d                                           ; $4eea: $9a
	xor  b                                           ; $4eeb: $a8
	xor  c                                           ; $4eec: $a9
	adc  d                                           ; $4eed: $8a
	sbc  b                                           ; $4eee: $98
	ld   [hl], a                                     ; $4eef: $77
	add  [hl]                                        ; $4ef0: $86
	ld   a, c                                        ; $4ef1: $79
	ld   l, b                                        ; $4ef2: $68
	halt                                             ; $4ef3: $76
	ld   h, a                                        ; $4ef4: $67
	sbc  c                                           ; $4ef5: $99
	adc  d                                           ; $4ef6: $8a
	ld   [hl], a                                     ; $4ef7: $77
	adc  b                                           ; $4ef8: $88
	sbc  c                                           ; $4ef9: $99
	xor  b                                           ; $4efa: $a8
	ld   h, a                                        ; $4efb: $67
	adc  d                                           ; $4efc: $8a
	cp   e                                           ; $4efd: $bb
	and  a                                           ; $4efe: $a7
	ld   l, b                                        ; $4eff: $68
	adc  e                                           ; $4f00: $8b
	and  a                                           ; $4f01: $a7
	ld   [hl], a                                     ; $4f02: $77
	ld   [hl], a                                     ; $4f03: $77
	ld   a, b                                        ; $4f04: $78
	sbc  b                                           ; $4f05: $98
	and  [hl]                                        ; $4f06: $a6
	ld   l, c                                        ; $4f07: $69
	sbc  d                                           ; $4f08: $9a
	ld   [hl], l                                     ; $4f09: $75
	ld   h, [hl]                                     ; $4f0a: $66
	adc  e                                           ; $4f0b: $8b
	add  a                                           ; $4f0c: $87
	ld   h, [hl]                                     ; $4f0d: $66
	sbc  d                                           ; $4f0e: $9a
	xor  d                                           ; $4f0f: $aa
	adc  c                                           ; $4f10: $89
	sbc  c                                           ; $4f11: $99
	xor  c                                           ; $4f12: $a9
	adc  c                                           ; $4f13: $89
	ld   a, b                                        ; $4f14: $78
	ld   a, b                                        ; $4f15: $78
	add  [hl]                                        ; $4f16: $86
	adc  c                                           ; $4f17: $89
	adc  b                                           ; $4f18: $88
	adc  b                                           ; $4f19: $88
	add  a                                           ; $4f1a: $87
	add  [hl]                                        ; $4f1b: $86
	ld   [hl], a                                     ; $4f1c: $77
	ld   a, b                                        ; $4f1d: $78
	sbc  b                                           ; $4f1e: $98
	sub  a                                           ; $4f1f: $97
	ld   h, a                                        ; $4f20: $67
	adc  c                                           ; $4f21: $89
	sbc  d                                           ; $4f22: $9a
	adc  b                                           ; $4f23: $88
	ld   a, b                                        ; $4f24: $78
	ld   [hl], a                                     ; $4f25: $77
	sbc  b                                           ; $4f26: $98
	sub  a                                           ; $4f27: $97
	sbc  d                                           ; $4f28: $9a
	adc  c                                           ; $4f29: $89
	add  a                                           ; $4f2a: $87
	add  a                                           ; $4f2b: $87
	adc  b                                           ; $4f2c: $88
	ld   a, d                                        ; $4f2d: $7a
	add  a                                           ; $4f2e: $87
	adc  b                                           ; $4f2f: $88
	sbc  b                                           ; $4f30: $98
	ld   a, d                                        ; $4f31: $7a
	add  a                                           ; $4f32: $87
	add  [hl]                                        ; $4f33: $86
	add  a                                           ; $4f34: $87
	ld   a, b                                        ; $4f35: $78
	ld   l, b                                        ; $4f36: $68
	sub  a                                           ; $4f37: $97
	ld   [hl], a                                     ; $4f38: $77
	ld   a, c                                        ; $4f39: $79
	adc  c                                           ; $4f3a: $89
	xor  b                                           ; $4f3b: $a8
	add  a                                           ; $4f3c: $87
	ld   a, c                                        ; $4f3d: $79
	sbc  c                                           ; $4f3e: $99
	halt                                             ; $4f3f: $76
	ld   h, [hl]                                     ; $4f40: $66
	sbc  c                                           ; $4f41: $99
	adc  b                                           ; $4f42: $88
	ld   [hl], a                                     ; $4f43: $77
	ld   a, b                                        ; $4f44: $78
	xor  b                                           ; $4f45: $a8
	adc  b                                           ; $4f46: $88
	ld   [hl], a                                     ; $4f47: $77
	adc  b                                           ; $4f48: $88
	sbc  c                                           ; $4f49: $99
	adc  c                                           ; $4f4a: $89
	adc  b                                           ; $4f4b: $88
	ld   [hl], a                                     ; $4f4c: $77
	sbc  b                                           ; $4f4d: $98
	ld   a, b                                        ; $4f4e: $78
	adc  c                                           ; $4f4f: $89
	adc  b                                           ; $4f50: $88
	add  a                                           ; $4f51: $87
	add  a                                           ; $4f52: $87
	ld   [hl], a                                     ; $4f53: $77
	adc  b                                           ; $4f54: $88
	sbc  c                                           ; $4f55: $99
	add  a                                           ; $4f56: $87
	adc  b                                           ; $4f57: $88
	adc  b                                           ; $4f58: $88
	adc  b                                           ; $4f59: $88
	add  a                                           ; $4f5a: $87
	sbc  c                                           ; $4f5b: $99
	sbc  c                                           ; $4f5c: $99
	add  a                                           ; $4f5d: $87
	ld   [hl], a                                     ; $4f5e: $77
	add  a                                           ; $4f5f: $87
	sbc  b                                           ; $4f60: $98
	adc  b                                           ; $4f61: $88
	adc  b                                           ; $4f62: $88
	add  a                                           ; $4f63: $87
	adc  b                                           ; $4f64: $88
	adc  c                                           ; $4f65: $89
	adc  c                                           ; $4f66: $89
	adc  b                                           ; $4f67: $88
	add  a                                           ; $4f68: $87
	ld   a, b                                        ; $4f69: $78
	adc  c                                           ; $4f6a: $89
	add  a                                           ; $4f6b: $87
	adc  b                                           ; $4f6c: $88
	sbc  c                                           ; $4f6d: $99
	ld   [hl], a                                     ; $4f6e: $77
	ld   [hl], a                                     ; $4f6f: $77
	adc  b                                           ; $4f70: $88
	sbc  b                                           ; $4f71: $98
	sbc  b                                           ; $4f72: $98
	ld   a, b                                        ; $4f73: $78
	ld   [hl], a                                     ; $4f74: $77
	sbc  c                                           ; $4f75: $99
	adc  b                                           ; $4f76: $88
	adc  b                                           ; $4f77: $88
	adc  b                                           ; $4f78: $88
	add  a                                           ; $4f79: $87
	add  a                                           ; $4f7a: $87
	ld   a, b                                        ; $4f7b: $78
	sbc  b                                           ; $4f7c: $98
	sbc  c                                           ; $4f7d: $99
	add  a                                           ; $4f7e: $87
	ld   [hl], a                                     ; $4f7f: $77
	ld   a, b                                        ; $4f80: $78
	sbc  b                                           ; $4f81: $98
	sbc  b                                           ; $4f82: $98
	adc  b                                           ; $4f83: $88
	adc  b                                           ; $4f84: $88
	adc  b                                           ; $4f85: $88
	adc  c                                           ; $4f86: $89
	add  a                                           ; $4f87: $87
	adc  c                                           ; $4f88: $89
	adc  c                                           ; $4f89: $89
	add  a                                           ; $4f8a: $87
	adc  b                                           ; $4f8b: $88
	sbc  c                                           ; $4f8c: $99
	adc  b                                           ; $4f8d: $88
	ld   [hl], a                                     ; $4f8e: $77
	adc  b                                           ; $4f8f: $88
	ld   a, b                                        ; $4f90: $78
	adc  b                                           ; $4f91: $88
	sbc  c                                           ; $4f92: $99
	adc  b                                           ; $4f93: $88
	ld   [hl], a                                     ; $4f94: $77
	ld   a, b                                        ; $4f95: $78
	adc  c                                           ; $4f96: $89
	sbc  c                                           ; $4f97: $99
	adc  b                                           ; $4f98: $88
	adc  b                                           ; $4f99: $88
	adc  b                                           ; $4f9a: $88
	adc  b                                           ; $4f9b: $88
	adc  c                                           ; $4f9c: $89
	adc  b                                           ; $4f9d: $88
	add  a                                           ; $4f9e: $87
	adc  b                                           ; $4f9f: $88
	ld   a, b                                        ; $4fa0: $78
	adc  c                                           ; $4fa1: $89
	adc  b                                           ; $4fa2: $88
	add  a                                           ; $4fa3: $87
	ld   a, b                                        ; $4fa4: $78
	ld   a, b                                        ; $4fa5: $78
	adc  b                                           ; $4fa6: $88
	sub  a                                           ; $4fa7: $97
	adc  b                                           ; $4fa8: $88
	adc  b                                           ; $4fa9: $88
	adc  b                                           ; $4faa: $88
	sbc  c                                           ; $4fab: $99
	adc  b                                           ; $4fac: $88
	ld   a, b                                        ; $4fad: $78
	adc  b                                           ; $4fae: $88
	adc  b                                           ; $4faf: $88
	adc  b                                           ; $4fb0: $88
	adc  b                                           ; $4fb1: $88
	adc  b                                           ; $4fb2: $88
	adc  b                                           ; $4fb3: $88
	add  a                                           ; $4fb4: $87
	adc  b                                           ; $4fb5: $88
	adc  b                                           ; $4fb6: $88
	ld   [hl], a                                     ; $4fb7: $77
	adc  b                                           ; $4fb8: $88
	ld   a, b                                        ; $4fb9: $78
	adc  b                                           ; $4fba: $88
	ld   [hl], a                                     ; $4fbb: $77
	adc  b                                           ; $4fbc: $88
	adc  b                                           ; $4fbd: $88
	adc  b                                           ; $4fbe: $88
	sbc  c                                           ; $4fbf: $99
	sbc  c                                           ; $4fc0: $99
	sbc  b                                           ; $4fc1: $98
	adc  b                                           ; $4fc2: $88
	adc  b                                           ; $4fc3: $88
	sbc  b                                           ; $4fc4: $98
	adc  b                                           ; $4fc5: $88
	adc  b                                           ; $4fc6: $88
	adc  b                                           ; $4fc7: $88
	adc  b                                           ; $4fc8: $88
	adc  b                                           ; $4fc9: $88
	adc  b                                           ; $4fca: $88
	adc  b                                           ; $4fcb: $88
	add  a                                           ; $4fcc: $87
	adc  c                                           ; $4fcd: $89
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
	sbc  b                                           ; $4fd8: $98
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
	add  a                                           ; $4fe6: $87
	adc  b                                           ; $4fe7: $88
	adc  b                                           ; $4fe8: $88
	adc  b                                           ; $4fe9: $88
	adc  b                                           ; $4fea: $88
	sbc  b                                           ; $4feb: $98
	adc  b                                           ; $4fec: $88
	adc  b                                           ; $4fed: $88
	adc  b                                           ; $4fee: $88
	sbc  b                                           ; $4fef: $98
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

Call_0e2_51c9:
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

Call_0e2_51da:
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

Jump_0e2_54b9:
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
	ld   a, b                                        ; $5520: $78
	adc  b                                           ; $5521: $88
	adc  b                                           ; $5522: $88
	adc  b                                           ; $5523: $88
	adc  b                                           ; $5524: $88
	adc  b                                           ; $5525: $88
	adc  b                                           ; $5526: $88
	adc  b                                           ; $5527: $88
	ld   a, b                                        ; $5528: $78
	adc  b                                           ; $5529: $88
	adc  b                                           ; $552a: $88
	adc  b                                           ; $552b: $88
	adc  b                                           ; $552c: $88
	adc  b                                           ; $552d: $88
	adc  b                                           ; $552e: $88
	adc  b                                           ; $552f: $88
	adc  b                                           ; $5530: $88
	adc  b                                           ; $5531: $88
	adc  c                                           ; $5532: $89
	adc  b                                           ; $5533: $88
	adc  b                                           ; $5534: $88
	adc  b                                           ; $5535: $88
	adc  c                                           ; $5536: $89
	ld   a, b                                        ; $5537: $78
	adc  b                                           ; $5538: $88
	adc  b                                           ; $5539: $88
	ld   a, b                                        ; $553a: $78
	adc  b                                           ; $553b: $88
	adc  b                                           ; $553c: $88
	adc  c                                           ; $553d: $89
	add  a                                           ; $553e: $87
	adc  b                                           ; $553f: $88
	adc  b                                           ; $5540: $88
	adc  b                                           ; $5541: $88
	ld   a, c                                        ; $5542: $79
	adc  b                                           ; $5543: $88
	adc  b                                           ; $5544: $88
	adc  b                                           ; $5545: $88
	adc  b                                           ; $5546: $88
	sub  a                                           ; $5547: $97
	adc  b                                           ; $5548: $88
	adc  b                                           ; $5549: $88
	ld   a, b                                        ; $554a: $78
	add  a                                           ; $554b: $87
	adc  b                                           ; $554c: $88
	ld   a, c                                        ; $554d: $79
	adc  b                                           ; $554e: $88
	adc  b                                           ; $554f: $88
	adc  b                                           ; $5550: $88
	adc  b                                           ; $5551: $88
	ld   a, c                                        ; $5552: $79
	sub  a                                           ; $5553: $97
	add  a                                           ; $5554: $87
	adc  c                                           ; $5555: $89
	adc  b                                           ; $5556: $88
	ld   a, b                                        ; $5557: $78
	adc  b                                           ; $5558: $88
	add  a                                           ; $5559: $87
	adc  b                                           ; $555a: $88
	adc  b                                           ; $555b: $88
	add  a                                           ; $555c: $87
	sbc  b                                           ; $555d: $98
	adc  c                                           ; $555e: $89
	adc  b                                           ; $555f: $88
	adc  b                                           ; $5560: $88
	adc  b                                           ; $5561: $88
	adc  b                                           ; $5562: $88
	ld   a, b                                        ; $5563: $78
	sub  a                                           ; $5564: $97
	adc  b                                           ; $5565: $88
	sub  a                                           ; $5566: $97
	add  a                                           ; $5567: $87
	adc  c                                           ; $5568: $89
	adc  b                                           ; $5569: $88
	adc  b                                           ; $556a: $88
	adc  b                                           ; $556b: $88
	add  a                                           ; $556c: $87
	adc  b                                           ; $556d: $88
	sbc  b                                           ; $556e: $98
	sbc  b                                           ; $556f: $98
	ld   a, c                                        ; $5570: $79
	adc  b                                           ; $5571: $88
	adc  c                                           ; $5572: $89
	ld   a, b                                        ; $5573: $78
	sbc  b                                           ; $5574: $98
	add  a                                           ; $5575: $87
	add  a                                           ; $5576: $87
	sbc  b                                           ; $5577: $98
	adc  c                                           ; $5578: $89
	ld   a, b                                        ; $5579: $78
	adc  b                                           ; $557a: $88
	ld   a, c                                        ; $557b: $79
	ld   a, b                                        ; $557c: $78
	add  a                                           ; $557d: $87
	sbc  b                                           ; $557e: $98
	adc  b                                           ; $557f: $88
	adc  b                                           ; $5580: $88
	add  a                                           ; $5581: $87
	adc  b                                           ; $5582: $88
	ld   a, b                                        ; $5583: $78
	ld   a, b                                        ; $5584: $78
	adc  c                                           ; $5585: $89
	add  a                                           ; $5586: $87

Call_0e2_5587:
	adc  b                                           ; $5587: $88
	add  a                                           ; $5588: $87
	adc  b                                           ; $5589: $88
	adc  b                                           ; $558a: $88
	adc  b                                           ; $558b: $88
	ld   a, b                                        ; $558c: $78
	adc  b                                           ; $558d: $88
	adc  b                                           ; $558e: $88
	adc  b                                           ; $558f: $88
	adc  b                                           ; $5590: $88
	ld   a, b                                        ; $5591: $78
	add  a                                           ; $5592: $87
	adc  b                                           ; $5593: $88
	adc  c                                           ; $5594: $89
	adc  b                                           ; $5595: $88
	adc  b                                           ; $5596: $88
	sbc  b                                           ; $5597: $98
	ld   a, c                                        ; $5598: $79
	adc  b                                           ; $5599: $88
	adc  b                                           ; $559a: $88
	adc  b                                           ; $559b: $88
	adc  b                                           ; $559c: $88
	adc  b                                           ; $559d: $88
	sbc  b                                           ; $559e: $98
	ld   a, b                                        ; $559f: $78
	adc  b                                           ; $55a0: $88
	ld   a, c                                        ; $55a1: $79
	sbc  b                                           ; $55a2: $98
	adc  b                                           ; $55a3: $88
	ld   a, b                                        ; $55a4: $78
	add  a                                           ; $55a5: $87
	adc  b                                           ; $55a6: $88
	sbc  b                                           ; $55a7: $98
	adc  b                                           ; $55a8: $88
	ld   a, b                                        ; $55a9: $78
	ld   a, c                                        ; $55aa: $79
	add  a                                           ; $55ab: $87
	sbc  c                                           ; $55ac: $99
	ld   a, c                                        ; $55ad: $79
	ld   a, c                                        ; $55ae: $79
	add  a                                           ; $55af: $87
	add  a                                           ; $55b0: $87
	sbc  b                                           ; $55b1: $98
	add  a                                           ; $55b2: $87
	sbc  b                                           ; $55b3: $98
	adc  b                                           ; $55b4: $88
	adc  c                                           ; $55b5: $89
	adc  c                                           ; $55b6: $89
	adc  b                                           ; $55b7: $88
	adc  b                                           ; $55b8: $88
	adc  b                                           ; $55b9: $88
	sbc  b                                           ; $55ba: $98
	adc  b                                           ; $55bb: $88
	add  a                                           ; $55bc: $87
	adc  b                                           ; $55bd: $88
	adc  b                                           ; $55be: $88
	ld   a, b                                        ; $55bf: $78
	adc  b                                           ; $55c0: $88
	add  a                                           ; $55c1: $87
	adc  c                                           ; $55c2: $89
	ld   a, c                                        ; $55c3: $79
	add  a                                           ; $55c4: $87
	sbc  b                                           ; $55c5: $98
	add  a                                           ; $55c6: $87
	adc  b                                           ; $55c7: $88
	sbc  b                                           ; $55c8: $98
	add  a                                           ; $55c9: $87
	sbc  b                                           ; $55ca: $98
	ld   a, b                                        ; $55cb: $78
	adc  c                                           ; $55cc: $89
	add  a                                           ; $55cd: $87
	sbc  b                                           ; $55ce: $98
	adc  c                                           ; $55cf: $89
	ld   [hl], a                                     ; $55d0: $77
	adc  b                                           ; $55d1: $88
	adc  b                                           ; $55d2: $88
	adc  b                                           ; $55d3: $88
	adc  b                                           ; $55d4: $88
	ld   a, b                                        ; $55d5: $78
	adc  b                                           ; $55d6: $88
	add  a                                           ; $55d7: $87
	adc  b                                           ; $55d8: $88
	ld   a, b                                        ; $55d9: $78
	add  a                                           ; $55da: $87
	adc  b                                           ; $55db: $88
	add  a                                           ; $55dc: $87
	sbc  b                                           ; $55dd: $98
	adc  b                                           ; $55de: $88
	adc  b                                           ; $55df: $88
	sbc  c                                           ; $55e0: $99
	adc  c                                           ; $55e1: $89
	adc  b                                           ; $55e2: $88
	adc  b                                           ; $55e3: $88
	sbc  b                                           ; $55e4: $98
	sbc  b                                           ; $55e5: $98
	sbc  b                                           ; $55e6: $98
	adc  c                                           ; $55e7: $89
	adc  c                                           ; $55e8: $89
	ld   [hl], a                                     ; $55e9: $77
	ld   [hl], a                                     ; $55ea: $77
	add  a                                           ; $55eb: $87
	ld   [hl], a                                     ; $55ec: $77
	ld   [hl], a                                     ; $55ed: $77
	ld   [hl], a                                     ; $55ee: $77
	ld   [hl], a                                     ; $55ef: $77
	ld   [hl], a                                     ; $55f0: $77
	ld   [hl], a                                     ; $55f1: $77
	ld   a, b                                        ; $55f2: $78
	ld   [hl], a                                     ; $55f3: $77
	add  a                                           ; $55f4: $87
	sub  a                                           ; $55f5: $97
	adc  c                                           ; $55f6: $89
	xor  d                                           ; $55f7: $aa
	sbc  d                                           ; $55f8: $9a
	xor  e                                           ; $55f9: $ab
	xor  d                                           ; $55fa: $aa
	xor  d                                           ; $55fb: $aa
	xor  d                                           ; $55fc: $aa
	sbc  d                                           ; $55fd: $9a
	sbc  b                                           ; $55fe: $98
	sub  a                                           ; $55ff: $97
	ld   [hl], a                                     ; $5600: $77
	halt                                             ; $5601: $76
	ld   d, l                                        ; $5602: $55
	ld   d, l                                        ; $5603: $55
	ld   b, h                                        ; $5604: $44
	ld   b, h                                        ; $5605: $44
	ld   b, l                                        ; $5606: $45
	ld   d, [hl]                                     ; $5607: $56
	ld   h, a                                        ; $5608: $67
	ld   a, b                                        ; $5609: $78
	sbc  c                                           ; $560a: $99
	xor  c                                           ; $560b: $a9
	xor  d                                           ; $560c: $aa
	cp   d                                           ; $560d: $ba
	call z, $cdcc                                    ; $560e: $cc $cc $cd
	call c, $aabc                                    ; $5611: $dc $bc $aa
	xor  b                                           ; $5614: $a8
	add  [hl]                                        ; $5615: $86
	ld   h, l                                        ; $5616: $65
	ld   d, e                                        ; $5617: $53
	ld   b, d                                        ; $5618: $42
	ld   [de], a                                     ; $5619: $12
	inc  hl                                          ; $561a: $23
	ld   b, h                                        ; $561b: $44
	ld   b, h                                        ; $561c: $44
	ld   d, a                                        ; $561d: $57
	adc  b                                           ; $561e: $88
	sbc  b                                           ; $561f: $98
	sbc  d                                           ; $5620: $9a
	cp   e                                           ; $5621: $bb
	cp   h                                           ; $5622: $bc
	call $edef                                       ; $5623: $cd $ef $ed
	db   $dd                                         ; $5626: $dd
	call c, $87aa                                    ; $5627: $dc $aa $87
	ld   h, l                                        ; $562a: $65
	ld   h, h                                        ; $562b: $64
	ld   hl, $2211                                   ; $562c: $21 $11 $22
	ld   [hl+], a                                    ; $562f: $22
	inc  h                                           ; $5630: $24
	ld   h, a                                        ; $5631: $67
	ld   a, b                                        ; $5632: $78
	adc  c                                           ; $5633: $89
	sbc  e                                           ; $5634: $9b
	cp   h                                           ; $5635: $bc
	cp   h                                           ; $5636: $bc
	sbc  $ff                                         ; $5637: $de $ff
	db   $fd                                         ; $5639: $fd
	db   $dd                                         ; $563a: $dd
	db   $db                                         ; $563b: $db
	sbc  c                                           ; $563c: $99
	ld   h, [hl]                                     ; $563d: $66
	ld   d, [hl]                                     ; $563e: $56
	ld   d, c                                        ; $563f: $51
	ld   de, $3311                                   ; $5640: $11 $11 $33
	ld   [hl+], a                                    ; $5643: $22
	ld   b, [hl]                                     ; $5644: $46
	adc  b                                           ; $5645: $88

Jump_0e2_5646:
	adc  c                                           ; $5646: $89
	ld   a, c                                        ; $5647: $79
	call z, $bdbb                                    ; $5648: $cc $bb $bd
	rst  $28                                         ; $564b: $ef
	db   $fc                                         ; $564c: $fc
	call z, $b7dd                                    ; $564d: $cc $dd $b7
	ld   d, l                                        ; $5650: $55
	ld   d, a                                        ; $5651: $57
	ld   h, c                                        ; $5652: $61
	ld   de, $3312                                   ; $5653: $11 $12 $33
	ld   [hl+], a                                    ; $5656: $22
	ld   e, b                                        ; $5657: $58
	xor  d                                           ; $5658: $aa
	adc  b                                           ; $5659: $88
	adc  e                                           ; $565a: $8b
	db   $ed                                         ; $565b: $ed
	cp   c                                           ; $565c: $b9
	cp   [hl]                                        ; $565d: $be
	rst  $38                                         ; $565e: $ff
	db   $ec                                         ; $565f: $ec
	cp   e                                           ; $5660: $bb
	jp   c, Jump_0e2_4773                            ; $5661: $da $73 $47

	ld   h, h                                        ; $5664: $64
	ld   de, $3411                                   ; $5665: $11 $11 $34
	ld   [hl-], a                                    ; $5668: $32
	ld   b, a                                        ; $5669: $47
	sbc  h                                           ; $566a: $9c
	ret                                              ; $566b: $c9


	sbc  e                                           ; $566c: $9b
	cp   $db                                         ; $566d: $fe $db
	cp   h                                           ; $566f: $bc
	rst  $28                                         ; $5670: $ef
	db   $fc                                         ; $5671: $fc
	sbc  e                                           ; $5672: $9b
	cp   d                                           ; $5673: $ba
	ld   h, e                                        ; $5674: $63
	ld   b, l                                        ; $5675: $45
	ld   d, e                                        ; $5676: $53
	ld   de, $4411                                   ; $5677: $11 $11 $44
	ld   b, e                                        ; $567a: $43
	ld   e, c                                        ; $567b: $59
	cp   [hl]                                        ; $567c: $be
	call z, $febc                                    ; $567d: $cc $bc $fe
	db   $db                                         ; $5680: $db
	cp   l                                           ; $5681: $bd
	rst  $28                                         ; $5682: $ef
	db   $db                                         ; $5683: $db
	xor  b                                           ; $5684: $a8
	sub  [hl]                                        ; $5685: $96
	inc  hl                                          ; $5686: $23
	ld   d, e                                        ; $5687: $53
	ld   de, $1211                                   ; $5688: $11 $11 $12
	ld   b, h                                        ; $568b: $44
	scf                                              ; $568c: $37
	xor  l                                           ; $568d: $ad
	db   $dd                                         ; $568e: $dd
	rst  $28                                         ; $568f: $ef
	rst  $28                                         ; $5690: $ef
	db   $fc                                         ; $5691: $fc
	cp   e                                           ; $5692: $bb
	rst  $28                                         ; $5693: $ef
	call $86a7                                       ; $5694: $cd $a7 $86
	ld   sp, $2125                                   ; $5697: $31 $25 $21
	ld   de, $3411                                   ; $569a: $11 $11 $34
	inc  sp                                          ; $569d: $33
	adc  [hl]                                        ; $569e: $8e
	rst  $28                                         ; $569f: $ef
	rst  $38                                         ; $56a0: $ff
	rst  $38                                         ; $56a1: $ff
	rst  $38                                         ; $56a2: $ff
	jp   z, $dddf                                    ; $56a3: $ca $df $dd

	cp   b                                           ; $56a6: $b8
	ld   h, h                                        ; $56a7: $64
	ld   d, c                                        ; $56a8: $51
	inc  de                                          ; $56a9: $13
	ld   de, $1111                                   ; $56aa: $11 $11 $11
	ld   [de], a                                     ; $56ad: $12
	inc  [hl]                                        ; $56ae: $34
	ld   a, [hl]                                     ; $56af: $7e
	rst  $38                                         ; $56b0: $ff
	rst  $38                                         ; $56b1: $ff
	rst  $38                                         ; $56b2: $ff
	rst  $38                                         ; $56b3: $ff
	db   $ec                                         ; $56b4: $ec
	rst  JumpTable                                         ; $56b5: $df
	reti                                             ; $56b6: $d9


	cp   b                                           ; $56b7: $b8
	ld   h, c                                        ; $56b8: $61
	ld   de, $1113                                   ; $56b9: $11 $13 $11
	ld   de, $2111                                   ; $56bc: $11 $11 $21
	dec  h                                           ; $56bf: $25
	xor  a                                           ; $56c0: $af
	rst  $38                                         ; $56c1: $ff
	rst  $38                                         ; $56c2: $ff
	rst  $38                                         ; $56c3: $ff
	rst  $38                                         ; $56c4: $ff
	reti                                             ; $56c5: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56c6: $cf
	jp   z, $3153                                    ; $56c7: $ca $53 $31

	ld   de, $1111                                   ; $56ca: $11 $11 $11
	ld   de, $2211                                   ; $56cd: $11 $11 $22
	ld   c, e                                        ; $56d0: $4b
	rst  $28                                         ; $56d1: $ef
	rst  $38                                         ; $56d2: $ff
	rst  $38                                         ; $56d3: $ff
	rst  $38                                         ; $56d4: $ff
	rst  $38                                         ; $56d5: $ff
	ret                                              ; $56d6: $c9


	call c, $21a5                                    ; $56d7: $dc $a5 $21
	ld   de, $1111                                   ; $56da: $11 $11 $11
	ld   de, $1211                                   ; $56dd: $11 $11 $12
	ld   d, h                                        ; $56e0: $54
	sbc  [hl]                                        ; $56e1: $9e
	rst  $38                                         ; $56e2: $ff
	rst  $38                                         ; $56e3: $ff
	rst  $38                                         ; $56e4: $ff
	rst  $38                                         ; $56e5: $ff
	rst  $38                                         ; $56e6: $ff
	adc  c                                           ; $56e7: $89
	cp   c                                           ; $56e8: $b9
	ld   b, c                                        ; $56e9: $41
	ld   de, $1111                                   ; $56ea: $11 $11 $11
	ld   de, $1111                                   ; $56ed: $11 $11 $11
	dec  h                                           ; $56f0: $25
	ld   l, h                                        ; $56f1: $6c
	rst  $38                                         ; $56f2: $ff
	rst  $38                                         ; $56f3: $ff
	rst  $38                                         ; $56f4: $ff
	rst  $38                                         ; $56f5: $ff
	rst  $38                                         ; $56f6: $ff
	ld   a, [$6199]                                  ; $56f7: $fa $99 $61
	ld   de, $1111                                   ; $56fa: $11 $11 $11
	ld   de, $1111                                   ; $56fd: $11 $11 $11
	dec  b                                           ; $5700: $05
	sbc  c                                           ; $5701: $99
	rst  $28                                         ; $5702: $ef
	rst  $38                                         ; $5703: $ff
	rst  $38                                         ; $5704: $ff
	rst  $38                                         ; $5705: $ff
	rst  $38                                         ; $5706: $ff
	rst  $38                                         ; $5707: $ff
	ld   [hl], a                                     ; $5708: $77
	ld   [hl], e                                     ; $5709: $73
	ld   de, $1111                                   ; $570a: $11 $11 $11
	ld   de, $1111                                   ; $570d: $11 $11 $11
	ld   d, $ab                                      ; $5710: $16 $ab
	cp   a                                           ; $5712: $bf
	rst  $38                                         ; $5713: $ff
	rst  $38                                         ; $5714: $ff
	rst  $38                                         ; $5715: $ff
	rst  $38                                         ; $5716: $ff
	rst  $38                                         ; $5717: $ff
	sub  h                                           ; $5718: $94
	ld   h, l                                        ; $5719: $65
	ld   de, $1111                                   ; $571a: $11 $11 $11
	ld   de, $1111                                   ; $571d: $11 $11 $11
	ld   h, $9f                                      ; $5720: $26 $9f
	rst  $38                                         ; $5722: $ff
	rst  $38                                         ; $5723: $ff
	rst  $38                                         ; $5724: $ff
	rst  $38                                         ; $5725: $ff
	rst  $38                                         ; $5726: $ff
	rst  $38                                         ; $5727: $ff
	sub  h                                           ; $5728: $94
	inc  hl                                          ; $5729: $23
	ld   de, $1111                                   ; $572a: $11 $11 $11
	ld   de, $1111                                   ; $572d: $11 $11 $11
	add  hl, de                                      ; $5730: $19
	rst  $28                                         ; $5731: $ef
	rst  $38                                         ; $5732: $ff
	rst  $38                                         ; $5733: $ff
	rst  $38                                         ; $5734: $ff
	rst  $38                                         ; $5735: $ff
	rst  $38                                         ; $5736: $ff
	rst  $38                                         ; $5737: $ff
	ld   [hl], c                                     ; $5738: $71
	ld   de, $1111                                   ; $5739: $11 $11 $11
	ld   de, $1111                                   ; $573c: $11 $11 $11
	ld   de, $ff5c                                   ; $573f: $11 $5c $ff
	rst  $38                                         ; $5742: $ff
	rst  $38                                         ; $5743: $ff
	rst  $38                                         ; $5744: $ff
	rst  $38                                         ; $5745: $ff
	rst  $38                                         ; $5746: $ff
	rst  $38                                         ; $5747: $ff
	ld   d, c                                        ; $5748: $51
	ld   de, $1111                                   ; $5749: $11 $11 $11
	ld   de, $1111                                   ; $574c: $11 $11 $11
	ld   de, $ff6d                                   ; $574f: $11 $6d $ff
	rst  $38                                         ; $5752: $ff
	rst  $38                                         ; $5753: $ff
	rst  $38                                         ; $5754: $ff
	rst  $38                                         ; $5755: $ff
	rst  $38                                         ; $5756: $ff
	ei                                               ; $5757: $fb
	ld   b, c                                        ; $5758: $41
	ld   de, $1111                                   ; $5759: $11 $11 $11
	ld   de, $1111                                   ; $575c: $11 $11 $11
	ld   de, $ffcf                                   ; $575f: $11 $cf $ff
	rst  $38                                         ; $5762: $ff
	rst  $38                                         ; $5763: $ff
	rst  $38                                         ; $5764: $ff
	rst  $38                                         ; $5765: $ff
	rst  $38                                         ; $5766: $ff
	ld   hl, sp+$11                                  ; $5767: $f8 $11
	ld   de, $1111                                   ; $5769: $11 $11 $11
	ld   de, $1111                                   ; $576c: $11 $11 $11
	dec  d                                           ; $576f: $15
	rst  $38                                         ; $5770: $ff
	rst  $38                                         ; $5771: $ff
	rst  $38                                         ; $5772: $ff
	rst  $38                                         ; $5773: $ff
	rst  $38                                         ; $5774: $ff
	rst  $38                                         ; $5775: $ff
	rst  $38                                         ; $5776: $ff
	call nc, $1111                                   ; $5777: $d4 $11 $11
	ld   de, $1111                                   ; $577a: $11 $11 $11
	ld   de, $1a11                                   ; $577d: $11 $11 $1a
	rst  $38                                         ; $5780: $ff
	rst  $38                                         ; $5781: $ff
	rst  $38                                         ; $5782: $ff
	rst  $38                                         ; $5783: $ff
	rst  $38                                         ; $5784: $ff
	rst  $38                                         ; $5785: $ff
	cp   $81                                         ; $5786: $fe $81
	ld   de, $1111                                   ; $5788: $11 $11 $11
	ld   de, $1111                                   ; $578b: $11 $11 $11
	ld   de, $ff4e                                   ; $578e: $11 $4e $ff
	rst  $38                                         ; $5791: $ff
	rst  $38                                         ; $5792: $ff
	rst  $38                                         ; $5793: $ff
	rst  $38                                         ; $5794: $ff
	rst  $38                                         ; $5795: $ff
	db   $fc                                         ; $5796: $fc
	ld   d, c                                        ; $5797: $51
	ld   de, $1111                                   ; $5798: $11 $11 $11
	ld   de, $1111                                   ; $579b: $11 $11 $11
	ld   de, $ff6e                                   ; $579e: $11 $6e $ff
	rst  $38                                         ; $57a1: $ff
	rst  $38                                         ; $57a2: $ff
	rst  $38                                         ; $57a3: $ff
	rst  $38                                         ; $57a4: $ff
	db   $fd                                         ; $57a5: $fd
	jp   z, $1151                                    ; $57a6: $ca $51 $11

	ld   sp, $1111                                   ; $57a9: $31 $11 $11
	ld   de, $1122                                   ; $57ac: $11 $22 $11
	ld   d, $9d                                      ; $57af: $16 $9d
	rst  $38                                         ; $57b1: $ff
	rst  $38                                         ; $57b2: $ff
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	db   $fd                                         ; $57b5: $fd
	call c, Call_0e2_65a9                            ; $57b6: $dc $a9 $65
	ld   h, l                                        ; $57b9: $65
	ld   d, a                                        ; $57ba: $57
	ld   [hl], l                                     ; $57bb: $75
	ld   de, $1112                                   ; $57bc: $11 $12 $11
	ld   de, $2811                                   ; $57bf: $11 $11 $28
	sbc  d                                           ; $57c2: $9a
	call c, $ffff                                    ; $57c3: $dc $ff $ff
	rst  $38                                         ; $57c6: $ff
	ld   [$ccbb], a                                  ; $57c7: $ea $bb $cc
	sbc  d                                           ; $57ca: $9a
	xor  d                                           ; $57cb: $aa
	and  a                                           ; $57cc: $a7
	ld   b, e                                        ; $57cd: $43
	ld   b, h                                        ; $57ce: $44
	inc  sp                                          ; $57cf: $33
	ld   de, $1111                                   ; $57d0: $11 $11 $11
	dec  [hl]                                        ; $57d3: $35
	ld   [hl], a                                     ; $57d4: $77
	sbc  d                                           ; $57d5: $9a
	sbc  l                                           ; $57d6: $9d
	sbc  $fd                                         ; $57d7: $de $fd
	xor  d                                           ; $57d9: $aa
	cp   l                                           ; $57da: $bd
	sbc  $ee                                         ; $57db: $de $ee
	call c, $87b9                                    ; $57dd: $dc $b9 $87
	halt                                             ; $57e0: $76
	ld   d, e                                        ; $57e1: $53
	ld   de, $1111                                   ; $57e2: $11 $11 $11
	dec  [hl]                                        ; $57e5: $35
	ld   h, [hl]                                     ; $57e6: $66
	halt                                             ; $57e7: $76
	ld   a, b                                        ; $57e8: $78
	sbc  c                                           ; $57e9: $99
	xor  d                                           ; $57ea: $aa
	add  a                                           ; $57eb: $87
	sbc  e                                           ; $57ec: $9b
	cp   l                                           ; $57ed: $bd
	sbc  $ff                                         ; $57ee: $de $ff
	cp   $db                                         ; $57f0: $fe $db
	sbc  c                                           ; $57f2: $99
	add  a                                           ; $57f3: $87
	ld   h, h                                        ; $57f4: $64
	ld   hl, $1211                                   ; $57f5: $21 $11 $12
	ld   b, [hl]                                     ; $57f8: $46
	ld   d, l                                        ; $57f9: $55
	ld   d, l                                        ; $57fa: $55
	ld   h, [hl]                                     ; $57fb: $66
	ld   h, a                                        ; $57fc: $67
	ld   [hl], a                                     ; $57fd: $77
	ld   [hl], a                                     ; $57fe: $77
	sbc  d                                           ; $57ff: $9a
	call $ffff                                       ; $5800: $cd $ff $ff
	rst  $38                                         ; $5803: $ff
	db   $ed                                         ; $5804: $ed
	cp   e                                           ; $5805: $bb
	sbc  c                                           ; $5806: $99
	ld   [hl], l                                     ; $5807: $75
	ld   sp, $1111                                   ; $5808: $31 $11 $11
	inc  h                                           ; $580b: $24
	ld   d, h                                        ; $580c: $54
	ld   b, h                                        ; $580d: $44
	ld   b, l                                        ; $580e: $45
	ld   h, [hl]                                     ; $580f: $66
	ld   [hl], a                                     ; $5810: $77
	ld   a, b                                        ; $5811: $78
	sbc  d                                           ; $5812: $9a
	xor  h                                           ; $5813: $ac
	rst  JumpTable                                         ; $5814: $df
	rst  $38                                         ; $5815: $ff
	rst  $38                                         ; $5816: $ff
	cp   $db                                         ; $5817: $fe $db
	cp   d                                           ; $5819: $ba
	sub  a                                           ; $581a: $97
	ld   d, e                                        ; $581b: $53
	ld   hl, $1211                                   ; $581c: $21 $11 $12
	ld   b, l                                        ; $581f: $45
	ld   b, l                                        ; $5820: $45
	ld   d, l                                        ; $5821: $55
	ld   h, [hl]                                     ; $5822: $66
	ld   l, b                                        ; $5823: $68
	ld   [hl], a                                     ; $5824: $77
	adc  b                                           ; $5825: $88
	sbc  d                                           ; $5826: $9a
	cp   h                                           ; $5827: $bc
	sbc  $ff                                         ; $5828: $de $ff
	rst  $38                                         ; $582a: $ff
	db   $ed                                         ; $582b: $ed
	db   $db                                         ; $582c: $db
	xor  d                                           ; $582d: $aa
	halt                                             ; $582e: $76
	ld   d, e                                        ; $582f: $53
	ld   hl, $2311                                   ; $5830: $21 $11 $23
	ld   d, l                                        ; $5833: $55
	ld   d, l                                        ; $5834: $55
	ld   b, h                                        ; $5835: $44
	ld   h, l                                        ; $5836: $65
	ld   [hl], a                                     ; $5837: $77
	ld   [hl], a                                     ; $5838: $77
	ld   a, b                                        ; $5839: $78
	xor  d                                           ; $583a: $aa
	cp   [hl]                                        ; $583b: $be
	rst  $38                                         ; $583c: $ff
	rst  $38                                         ; $583d: $ff
	rst  $38                                         ; $583e: $ff
	db   $dd                                         ; $583f: $dd
	res  5, c                                        ; $5840: $cb $a9
	add  [hl]                                        ; $5842: $86
	ld   b, d                                        ; $5843: $42
	ld   de, $2311                                   ; $5844: $11 $11 $23
	ld   b, h                                        ; $5847: $44
	ld   b, h                                        ; $5848: $44
	dec  [hl]                                        ; $5849: $35
	ld   h, [hl]                                     ; $584a: $66
	adc  c                                           ; $584b: $89
	sbc  c                                           ; $584c: $99
	adc  c                                           ; $584d: $89
	cp   h                                           ; $584e: $bc
	rst  JumpTable                                         ; $584f: $df
	rst  $38                                         ; $5850: $ff
	rst  $38                                         ; $5851: $ff
	cp   $dc                                         ; $5852: $fe $dc
	xor  c                                           ; $5854: $a9
	sub  a                                           ; $5855: $97
	ld   h, h                                        ; $5856: $64
	ld   hl, $1111                                   ; $5857: $21 $11 $11
	dec  h                                           ; $585a: $25
	ld   d, l                                        ; $585b: $55
	ld   h, l                                        ; $585c: $65
	ld   d, a                                        ; $585d: $57
	adc  c                                           ; $585e: $89
	xor  e                                           ; $585f: $ab
	xor  d                                           ; $5860: $aa
	cp   d                                           ; $5861: $ba
	call $ffff                                       ; $5862: $cd $ff $ff
	cp   $ca                                         ; $5865: $fe $ca
	add  [hl]                                        ; $5867: $86
	ld   d, [hl]                                     ; $5868: $56
	ld   h, l                                        ; $5869: $65
	ld   b, c                                        ; $586a: $41
	ld   de, $1311                                   ; $586b: $11 $11 $13
	ld   a, d                                        ; $586e: $7a
	sbc  b                                           ; $586f: $98
	ld   h, a                                        ; $5870: $67
	cp   h                                           ; $5871: $bc
	rst  $28                                         ; $5872: $ef
	db   $fc                                         ; $5873: $fc
	res  7, h                                        ; $5874: $cb $bc
	rst  JumpTable                                         ; $5876: $df
	db   $ed                                         ; $5877: $ed
	jp   c, $1184                                    ; $5878: $da $84 $11

	inc  de                                          ; $587b: $13
	ld   b, h                                        ; $587c: $44
	ld   sp, $1211                                   ; $587d: $31 $11 $12
	ld   e, d                                        ; $5880: $5a
	xor  $fc                                         ; $5881: $ee $fc
	rst  JumpTable                                         ; $5883: $df
	rst  $38                                         ; $5884: $ff
	rst  $38                                         ; $5885: $ff
	ret  z                                           ; $5886: $c8

	ld   a, e                                        ; $5887: $7b
	cp   d                                           ; $5888: $ba
	cp   l                                           ; $5889: $bd
	sub  l                                           ; $588a: $95
	ld   hl, $1111                                   ; $588b: $21 $11 $11
	inc  de                                          ; $588e: $13
	ld   h, l                                        ; $588f: $65
	ld   sp, $ff4f                                   ; $5890: $31 $4f $ff
	rst  $38                                         ; $5893: $ff
	rst  $38                                         ; $5894: $ff
	rst  $38                                         ; $5895: $ff
	rst  $38                                         ; $5896: $ff
	ei                                               ; $5897: $fb
	ld   hl, $7557                                   ; $5898: $21 $57 $75
	ld   d, h                                        ; $589b: $54
	ld   de, $1111                                   ; $589c: $11 $11 $11
	rla                                              ; $589f: $17
	cp   h                                           ; $58a0: $bc
	db   $dd                                         ; $58a1: $dd
	rst  $38                                         ; $58a2: $ff
	rst  $38                                         ; $58a3: $ff
	rst  $38                                         ; $58a4: $ff
	db   $fc                                         ; $58a5: $fc
	adc  h                                           ; $58a6: $8c
	cp   $da                                         ; $58a7: $fe $da
	ld   b, c                                        ; $58a9: $41
	ld   d, $99                                      ; $58aa: $16 $99
	ld   [hl], e                                     ; $58ac: $73
	ld   de, $1111                                   ; $58ad: $11 $11 $11
	ld   l, e                                        ; $58b0: $6b
	rst  $38                                         ; $58b1: $ff
	rst  $38                                         ; $58b2: $ff
	rst  $38                                         ; $58b3: $ff
	rst  $38                                         ; $58b4: $ff
	db   $fc                                         ; $58b5: $fc
	ld   [hl-], a                                    ; $58b6: $32
	add  hl, sp                                      ; $58b7: $39
	jp   c, $75bd                                    ; $58b8: $da $bd $75

	sbc  h                                           ; $58bb: $9c
	xor  b                                           ; $58bc: $a8
	ld   b, c                                        ; $58bd: $41
	ld   de, $1711                                   ; $58be: $11 $11 $17
	rst  $38                                         ; $58c1: $ff
	rst  $38                                         ; $58c2: $ff
	rst  $38                                         ; $58c3: $ff
	rst  $38                                         ; $58c4: $ff
	rst  $38                                         ; $58c5: $ff
	ld   [hl], c                                     ; $58c6: $71
	ld   de, $aa3a                                   ; $58c7: $11 $3a $aa
	rst  $38                                         ; $58ca: $ff
	rst  JumpTable                                         ; $58cb: $df
	cp   $74                                         ; $58cc: $fe $74
	ld   de, $1111                                   ; $58ce: $11 $11 $11
	ld   e, a                                        ; $58d1: $5f
	rst  $38                                         ; $58d2: $ff
	rst  $38                                         ; $58d3: $ff
	rst  $38                                         ; $58d4: $ff
	rst  $38                                         ; $58d5: $ff
	sub  c                                           ; $58d6: $91
	ld   de, $4911                                   ; $58d7: $11 $11 $49
	rst  $38                                         ; $58da: $ff
	rst  $38                                         ; $58db: $ff
	rst  $38                                         ; $58dc: $ff
	sub  $31                                         ; $58dd: $d6 $31
	ld   de, $1611                                   ; $58df: $11 $11 $16
	rst  $38                                         ; $58e2: $ff
	rst  $38                                         ; $58e3: $ff
	rst  $38                                         ; $58e4: $ff
	rst  $38                                         ; $58e5: $ff
	ldh  a, [c]                                      ; $58e6: $f2
	ld   de, $1811                                   ; $58e7: $11 $11 $18
	cp   a                                           ; $58ea: $bf
	rst  $38                                         ; $58eb: $ff
	rst  $38                                         ; $58ec: $ff
	rst  $38                                         ; $58ed: $ff
	ld   sp, $1111                                   ; $58ee: $31 $11 $11
	ld   de, $ff4f                                   ; $58f1: $11 $4f $ff
	rst  $38                                         ; $58f4: $ff
	rst  $38                                         ; $58f5: $ff
	rst  $38                                         ; $58f6: $ff
	ld   de, $1111                                   ; $58f7: $11 $11 $11
	cp   a                                           ; $58fa: $bf
	rst  $38                                         ; $58fb: $ff
	rst  $38                                         ; $58fc: $ff
	rst  $38                                         ; $58fd: $ff
	pop  bc                                          ; $58fe: $c1
	ld   de, $1111                                   ; $58ff: $11 $11 $11
	ld   de, $ffff                                   ; $5902: $11 $ff $ff
	rst  $38                                         ; $5905: $ff
	rst  $38                                         ; $5906: $ff
	pop  af                                          ; $5907: $f1
	ld   de, $1f11                                   ; $5908: $11 $11 $1f
	rst  $38                                         ; $590b: $ff
	rst  $38                                         ; $590c: $ff
	rst  $38                                         ; $590d: $ff
	ld   hl, sp+$11                                  ; $590e: $f8 $11
	ld   de, $1111                                   ; $5910: $11 $11 $11
	rra                                              ; $5913: $1f
	rst  $38                                         ; $5914: $ff
	rst  $38                                         ; $5915: $ff
	rst  $38                                         ; $5916: $ff
	ei                                               ; $5917: $fb
	ld   de, $1111                                   ; $5918: $11 $11 $11
	rst  $38                                         ; $591b: $ff
	rst  $38                                         ; $591c: $ff
	rst  $38                                         ; $591d: $ff
	rst  $38                                         ; $591e: $ff
	ld   hl, $1111                                   ; $591f: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $5922: $11 $11 $ff
	rst  $38                                         ; $5925: $ff
	rst  $38                                         ; $5926: $ff
	rst  $30                                         ; $5927: $f7
	ld   hl, $1111                                   ; $5928: $21 $11 $11
	rra                                              ; $592b: $1f
	rst  $38                                         ; $592c: $ff
	rst  $38                                         ; $592d: $ff
	rst  $38                                         ; $592e: $ff
	or   c                                           ; $592f: $b1
	ld   de, $1111                                   ; $5930: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $5933: $11 $14 $ff
	rst  $38                                         ; $5936: $ff
	ld   a, [$1111]                                  ; $5937: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $593a: $11 $11 $ff
	rst  $38                                         ; $593d: $ff
	rst  $38                                         ; $593e: $ff
	ld   hl, sp+$11                                  ; $593f: $f8 $11
	ld   de, $1111                                   ; $5941: $11 $11 $11
	ld   de, $ff1c                                   ; $5944: $11 $1c $ff
	rst  $38                                         ; $5947: $ff
	jp   $2111                                       ; $5948: $c3 $11 $21


	ld   de, $ff2c                                   ; $594b: $11 $2c $ff
	rst  $38                                         ; $594e: $ff
	rst  $38                                         ; $594f: $ff
	jp   nz, $1111                                   ; $5950: $c2 $11 $11

	ld   [de], a                                     ; $5953: $12
	ld   de, $1f11                                   ; $5954: $11 $11 $1f
	rst  $38                                         ; $5957: $ff
	rst  $38                                         ; $5958: $ff
	ld   [hl], e                                     ; $5959: $73
	inc  d                                           ; $595a: $14
	ld   d, c                                        ; $595b: $51
	ld   de, $ff8f                                   ; $595c: $11 $8f $ff
	rst  $38                                         ; $595f: $ff
	rst  $38                                         ; $5960: $ff
	ld   [hl], c                                     ; $5961: $71
	ld   de, $1511                                   ; $5962: $11 $11 $15
	ld   hl, $1f11                                   ; $5965: $21 $11 $1f
	rst  $38                                         ; $5968: $ff
	db   $fd                                         ; $5969: $fd
	ld   d, a                                        ; $596a: $57
	ld   c, c                                        ; $596b: $49
	ld   sp, $cf14                                   ; $596c: $31 $14 $cf
	rst  $38                                         ; $596f: $ff
	rst  $38                                         ; $5970: $ff
	db   $fd                                         ; $5971: $fd
	ld   b, c                                        ; $5972: $41
	ld   de, $2311                                   ; $5973: $11 $11 $23
	ld   de, $6f11                                   ; $5976: $11 $11 $6f
	rst  $38                                         ; $5979: $ff
	rst  $30                                         ; $597a: $f7
	ld   a, b                                        ; $597b: $78
	ld   l, e                                        ; $597c: $6b
	ld   de, $ff19                                   ; $597d: $11 $19 $ff
	rst  $38                                         ; $5980: $ff
	rst  $38                                         ; $5981: $ff
	ld   sp, hl                                      ; $5982: $f9
	ld   hl, $1111                                   ; $5983: $21 $11 $11
	ld   b, d                                        ; $5986: $42
	ld   de, rAUD1LEN                                   ; $5987: $11 $11 $ff
	rst  $38                                         ; $598a: $ff
	or   $98                                         ; $598b: $f6 $98
	sub  h                                           ; $598d: $94
	ld   de, $ff3c                                   ; $598e: $11 $3c $ff
	rst  $38                                         ; $5991: $ff
	rst  $38                                         ; $5992: $ff
	db   $f4                                         ; $5993: $f4
	ld   de, $1211                                   ; $5994: $11 $11 $12
	ld   hl, $1111                                   ; $5997: $21 $11 $11
	rst  $38                                         ; $599a: $ff
	rst  $38                                         ; $599b: $ff
	sbc  b                                           ; $599c: $98
	jp   hl                                          ; $599d: $e9


	sub  c                                           ; $599e: $91
	ld   de, $ffaf                                   ; $599f: $11 $af $ff
	rst  $38                                         ; $59a2: $ff
	rst  $38                                         ; $59a3: $ff
	pop  bc                                          ; $59a4: $c1
	ld   de, $1311                                   ; $59a5: $11 $11 $13
	ld   hl, $1111                                   ; $59a8: $21 $11 $11
	rst  $38                                         ; $59ab: $ff
	rst  $38                                         ; $59ac: $ff
	ld   a, e                                        ; $59ad: $7b
	ld   sp, hl                                      ; $59ae: $f9
	ld   [hl], c                                     ; $59af: $71
	ld   de, $ffdf                                   ; $59b0: $11 $df $ff
	rst  $38                                         ; $59b3: $ff
	rst  $38                                         ; $59b4: $ff
	and  c                                           ; $59b5: $a1
	ld   de, $3311                                   ; $59b6: $11 $11 $33
	ld   de, $1311                                   ; $59b9: $11 $11 $13
	rst  $38                                         ; $59bc: $ff
	rst  $38                                         ; $59bd: $ff
	ld   a, h                                        ; $59be: $7c
	ld   sp, hl                                      ; $59bf: $f9
	ld   sp, rAUD1LEN                                   ; $59c0: $31 $11 $ff
	rst  $38                                         ; $59c3: $ff
	rst  $38                                         ; $59c4: $ff
	rst  $38                                         ; $59c5: $ff
	add  c                                           ; $59c6: $81
	ld   de, $4211                                   ; $59c7: $11 $11 $42
	ld   hl, $1111                                   ; $59ca: $21 $11 $11
	rst  $38                                         ; $59cd: $ff
	rst  $38                                         ; $59ce: $ff
	cp   d                                           ; $59cf: $ba
	ei                                               ; $59d0: $fb
	ld   d, c                                        ; $59d1: $51
	ld   de, $ffbf                                   ; $59d2: $11 $bf $ff
	rst  $38                                         ; $59d5: $ff
	rst  $38                                         ; $59d6: $ff
	or   c                                           ; $59d7: $b1
	ld   de, $4311                                   ; $59d8: $11 $11 $43
	ld   de, $1111                                   ; $59db: $11 $11 $11
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	ld   sp, hl                                      ; $59e0: $f9
	db   $fc                                         ; $59e1: $fc
	ld   sp, $8f11                                   ; $59e2: $31 $11 $8f
	rst  $38                                         ; $59e5: $ff
	rst  $38                                         ; $59e6: $ff
	rst  $38                                         ; $59e7: $ff
	pop  hl                                          ; $59e8: $e1
	ld   de, $7312                                   ; $59e9: $11 $12 $73
	ld   de, $1111                                   ; $59ec: $11 $11 $11
	adc  a                                           ; $59ef: $8f
	rst  $38                                         ; $59f0: $ff
	or   $ff                                         ; $59f1: $f6 $ff
	ld   b, c                                        ; $59f3: $41
	ld   de, $ff3f                                   ; $59f4: $11 $3f $ff
	rst  $38                                         ; $59f7: $ff
	rst  $38                                         ; $59f8: $ff
	pop  af                                          ; $59f9: $f1
	ld   de, $5311                                   ; $59fa: $11 $11 $53
	ld   bc, $1111                                   ; $59fd: $01 $11 $11
	rra                                              ; $5a00: $1f
	rst  $38                                         ; $5a01: $ff
	ei                                               ; $5a02: $fb
	rst  $28                                         ; $5a03: $ef
	sub  c                                           ; $5a04: $91
	ld   de, $ff1e                                   ; $5a05: $11 $1e $ff
	rst  $38                                         ; $5a08: $ff
	rst  $38                                         ; $5a09: $ff
	push af                                          ; $5a0a: $f5
	ld   de, $4311                                   ; $5a0b: $11 $11 $43
	ld   de, $1111                                   ; $5a0e: $11 $11 $11
	dec  de                                          ; $5a11: $1b
	rst  $38                                         ; $5a12: $ff
	rst  $38                                         ; $5a13: $ff
	adc  a                                           ; $5a14: $8f
	push af                                          ; $5a15: $f5
	ld   de, rAUD1HIGH                                   ; $5a16: $11 $14 $ff
	rst  $38                                         ; $5a19: $ff
	rst  $38                                         ; $5a1a: $ff
	rst  $38                                         ; $5a1b: $ff
	ld   b, c                                        ; $5a1c: $41
	ld   de, $1111                                   ; $5a1d: $11 $11 $11
	ld   de, $1111                                   ; $5a20: $11 $11 $11
	rst  $38                                         ; $5a23: $ff
	rst  $38                                         ; $5a24: $ff
	xor  h                                           ; $5a25: $ac
	rst  $38                                         ; $5a26: $ff
	ld   de, $bf11                                   ; $5a27: $11 $11 $bf
	rst  $38                                         ; $5a2a: $ff
	rst  $38                                         ; $5a2b: $ff
	rst  $38                                         ; $5a2c: $ff
	or   h                                           ; $5a2d: $b4
	ld   de, $1113                                   ; $5a2e: $11 $13 $11
	ld   de, $1111                                   ; $5a31: $11 $11 $11
	rra                                              ; $5a34: $1f
	rst  $38                                         ; $5a35: $ff
	rst  $38                                         ; $5a36: $ff
	rst  $38                                         ; $5a37: $ff
	push af                                          ; $5a38: $f5
	ld   de, $dd1c                                   ; $5a39: $11 $1c $dd
	rst  $38                                         ; $5a3c: $ff
	rst  $38                                         ; $5a3d: $ff
	db   $fd                                         ; $5a3e: $fd
	ld   b, c                                        ; $5a3f: $41
	ld   hl, $1111                                   ; $5a40: $21 $11 $11
	ld   de, $1111                                   ; $5a43: $11 $11 $11
	rst  $38                                         ; $5a46: $ff
	rst  $38                                         ; $5a47: $ff
	rst  $38                                         ; $5a48: $ff
	rst  $38                                         ; $5a49: $ff
	ld   sp, $7d11                                   ; $5a4a: $31 $11 $7d
	adc  e                                           ; $5a4d: $8b
	rst  $38                                         ; $5a4e: $ff
	rst  $38                                         ; $5a4f: $ff
	push af                                          ; $5a50: $f5
	inc  [hl]                                        ; $5a51: $34
	inc  [hl]                                        ; $5a52: $34
	ld   sp, $1111                                   ; $5a53: $31 $11 $11
	ld   de, $ff1f                                   ; $5a56: $11 $1f $ff
	rst  $38                                         ; $5a59: $ff
	rst  $38                                         ; $5a5a: $ff
	ld   hl, sp+$11                                  ; $5a5b: $f8 $11
	ld   b, a                                        ; $5a5d: $47
	add  a                                           ; $5a5e: $87
	xor  l                                           ; $5a5f: $ad
	rst  $38                                         ; $5a60: $ff
	db   $fc                                         ; $5a61: $fc
	ld   a, b                                        ; $5a62: $78
	adc  b                                           ; $5a63: $88
	and  a                                           ; $5a64: $a7
	dec  [hl]                                        ; $5a65: $35
	ld   h, e                                        ; $5a66: $63
	ld   de, $4711                                   ; $5a67: $11 $11 $47
	ld   a, b                                        ; $5a6a: $78
	add  a                                           ; $5a6b: $87
	sbc  [hl]                                        ; $5a6c: $9e
	ei                                               ; $5a6d: $fb
	adc  c                                           ; $5a6e: $89
	call $cbdc                                       ; $5a6f: $cd $dc $cb
	call z, Call_0e2_79a8                            ; $5a72: $cc $a8 $79
	xor  c                                           ; $5a75: $a9
	xor  d                                           ; $5a76: $aa
	sbc  b                                           ; $5a77: $98
	add  a                                           ; $5a78: $87
	ld   b, c                                        ; $5a79: $41
	ld   de, $4314                                   ; $5a7a: $11 $14 $43
	ld   [hl+], a                                    ; $5a7d: $22
	ld   [hl], $ab                                   ; $5a7e: $36 $ab
	cp   h                                           ; $5a80: $bc
	rst  $38                                         ; $5a81: $ff
	cp   $cc                                         ; $5a82: $fe $cc
	call z, Call_0e2_78c9                            ; $5a84: $cc $c9 $78
	ld   a, b                                        ; $5a87: $78
	sbc  b                                           ; $5a88: $98
	sbc  d                                           ; $5a89: $9a
	sub  a                                           ; $5a8a: $97
	ld   [hl], l                                     ; $5a8b: $75
	ld   de, $4212                                   ; $5a8c: $11 $12 $42
	ld   de, $8c13                                   ; $5a8f: $11 $13 $8c
	call $ffef                                       ; $5a92: $cd $ef $ff
	ei                                               ; $5a95: $fb
	xor  d                                           ; $5a96: $aa
	db   $ec                                         ; $5a97: $ec
	adc  b                                           ; $5a98: $88
	adc  c                                           ; $5a99: $89
	sbc  c                                           ; $5a9a: $99
	ld   a, b                                        ; $5a9b: $78
	sub  a                                           ; $5a9c: $97
	ld   d, e                                        ; $5a9d: $53
	ld   hl, $2211                                   ; $5a9e: $21 $11 $22
	inc  h                                           ; $5aa1: $24
	ld   b, h                                        ; $5aa2: $44
	xor  a                                           ; $5aa3: $af
	cp   $ff                                         ; $5aa4: $fe $ff
	rst  $38                                         ; $5aa6: $ff
	db   $ec                                         ; $5aa7: $ec
	ld   a, c                                        ; $5aa8: $79
	call z, $a899                                    ; $5aa9: $cc $99 $a8
	sbc  e                                           ; $5aac: $9b
	sub  a                                           ; $5aad: $97
	halt                                             ; $5aae: $76
	ld   b, c                                        ; $5aaf: $41
	ld   de, $1511                                   ; $5ab0: $11 $11 $15
	ld   e, c                                        ; $5ab3: $59
	rst  JumpTable                                         ; $5ab4: $df
	rst  $38                                         ; $5ab5: $ff

Jump_0e2_5ab6:
	rst  $38                                         ; $5ab6: $ff
	xor  d                                           ; $5ab7: $aa
	cp   c                                           ; $5ab8: $b9
	adc  c                                           ; $5ab9: $89
	ld   d, [hl]                                     ; $5aba: $56
	rst  $28                                         ; $5abb: $ef
	db   $fd                                         ; $5abc: $fd
	reti                                             ; $5abd: $d9


	sbc  e                                           ; $5abe: $9b
	add  d                                           ; $5abf: $82
	ld   de, $1111                                   ; $5ac0: $11 $11 $11
	ld   de, $ffaf                                   ; $5ac3: $11 $af $ff
	rst  $38                                         ; $5ac6: $ff
	rst  $38                                         ; $5ac7: $ff
	sub  d                                           ; $5ac8: $92
	ld   de, $7f66                                   ; $5ac9: $11 $66 $7f
	rst  $38                                         ; $5acc: $ff
	rst  $38                                         ; $5acd: $ff
	db   $fc                                         ; $5ace: $fc
	ld   h, c                                        ; $5acf: $61
	ld   d, l                                        ; $5ad0: $55
	ld   de, $1111                                   ; $5ad1: $11 $11 $11
	ld   de, $ffcf                                   ; $5ad4: $11 $cf $ff
	rst  $38                                         ; $5ad7: $ff
	rst  $38                                         ; $5ad8: $ff
	ld   hl, $4911                                   ; $5ad9: $21 $11 $49
	cp   a                                           ; $5adc: $bf
	rst  $38                                         ; $5add: $ff
	rst  $38                                         ; $5ade: $ff
	or   $21                                         ; $5adf: $f6 $21
	ld   de, $1111                                   ; $5ae1: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5ae4: $11 $11 $ff
	rst  $38                                         ; $5ae7: $ff
	rst  $38                                         ; $5ae8: $ff
	rst  $38                                         ; $5ae9: $ff
	ld   de, $5f11                                   ; $5aea: $11 $11 $5f
	rst  $28                                         ; $5aed: $ef
	rst  $38                                         ; $5aee: $ff
	rst  $38                                         ; $5aef: $ff
	db   $f4                                         ; $5af0: $f4
	ld   de, $1111                                   ; $5af1: $11 $11 $11
	ld   de, $1111                                   ; $5af4: $11 $11 $11
	cp   a                                           ; $5af7: $bf
	rst  $38                                         ; $5af8: $ff
	rst  $38                                         ; $5af9: $ff
	rst  $38                                         ; $5afa: $ff
	ld   de, $9c11                                   ; $5afb: $11 $11 $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5afe: $cf
	rst  $38                                         ; $5aff: $ff
	rst  $38                                         ; $5b00: $ff
	or   d                                           ; $5b01: $b2
	ld   sp, $1113                                   ; $5b02: $31 $13 $11
	ld   de, $1111                                   ; $5b05: $11 $11 $11
	ld   c, l                                        ; $5b08: $4d
	rst  $38                                         ; $5b09: $ff
	rst  $38                                         ; $5b0a: $ff
	rst  $38                                         ; $5b0b: $ff
	add  c                                           ; $5b0c: $81
	ld   de, $ff2b                                   ; $5b0d: $11 $2b $ff
	rst  $38                                         ; $5b10: $ff
	rst  $38                                         ; $5b11: $ff
	rst  ToBoot                                         ; $5b12: $c7
	ld   de, $1133                                   ; $5b13: $11 $33 $11
	ld   de, $1111                                   ; $5b16: $11 $11 $11
	rla                                              ; $5b19: $17
	rst  $38                                         ; $5b1a: $ff
	rst  $38                                         ; $5b1b: $ff
	rst  $38                                         ; $5b1c: $ff
	ld   h, e                                        ; $5b1d: $63
	ld   de, $df3d                                   ; $5b1e: $11 $3d $df
	rst  $38                                         ; $5b21: $ff
	rst  $38                                         ; $5b22: $ff
	push bc                                          ; $5b23: $c5
	ld   b, e                                        ; $5b24: $43
	ld   [hl], $11                                   ; $5b25: $36 $11
	ld   de, $1111                                   ; $5b27: $11 $11 $11
	add  hl, de                                      ; $5b2a: $19
	xor  d                                           ; $5b2b: $aa
	rst  $38                                         ; $5b2c: $ff
	rst  $38                                         ; $5b2d: $ff
	rst  ToBoot                                         ; $5b2e: $c7
	ld   de, $5f77                                   ; $5b2f: $11 $77 $5f
	rst  $38                                         ; $5b32: $ff
	rst  $38                                         ; $5b33: $ff
	cp   b                                           ; $5b34: $b8
	ld   b, l                                        ; $5b35: $45
	and  d                                           ; $5b36: $a2
	inc  de                                          ; $5b37: $13
	add  c                                           ; $5b38: $81
	ld   de, $1511                                   ; $5b39: $11 $11 $15
	adc  d                                           ; $5b3c: $8a
	rst  $38                                         ; $5b3d: $ff
	rst  $38                                         ; $5b3e: $ff
	db   $d3                                         ; $5b3f: $d3
	ld   de, $981a                                   ; $5b40: $11 $1a $98
	rst  $38                                         ; $5b43: $ff
	rst  $38                                         ; $5b44: $ff
	ld   hl, sp+$56                                  ; $5b45: $f8 $56
	ld   h, e                                        ; $5b47: $63
	ld   [hl-], a                                    ; $5b48: $32
	ld   de, $1111                                   ; $5b49: $11 $11 $11
	jr   jr_0e2_5bb9                                 ; $5b4c: $18 $6b

	db   $fc                                         ; $5b4e: $fc
	rst  $38                                         ; $5b4f: $ff
	add  e                                           ; $5b50: $83
	or   c                                           ; $5b51: $b1
	add  hl, de                                      ; $5b52: $19
	sbc  [hl]                                        ; $5b53: $9e
	rst  $38                                         ; $5b54: $ff
	rst  $38                                         ; $5b55: $ff
	ld   a, [$31cb]                                  ; $5b56: $fa $cb $31
	ld   [hl], a                                     ; $5b59: $77
	ld   de, $1111                                   ; $5b5a: $11 $11 $11
	inc  d                                           ; $5b5d: $14
	halt                                             ; $5b5e: $76
	ld   a, a                                        ; $5b5f: $7f
	ld   hl, sp-$01                                  ; $5b60: $f8 $ff
	ld   h, c                                        ; $5b62: $61
	ld   l, c                                        ; $5b63: $69
	xor  c                                           ; $5b64: $a9
	adc  a                                           ; $5b65: $8f
	rst  $38                                         ; $5b66: $ff
	rst  $38                                         ; $5b67: $ff
	sub  [hl]                                        ; $5b68: $96
	ld   a, b                                        ; $5b69: $78
	or   h                                           ; $5b6a: $b4
	ld   de, $1111                                   ; $5b6b: $11 $11 $11
	ld   de, $a55c                                   ; $5b6e: $11 $5c $a5
	adc  l                                           ; $5b71: $8d
	ei                                               ; $5b72: $fb
	rst  JumpTable                                         ; $5b73: $df
	ld   d, c                                        ; $5b74: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b75: $cf
	add  h                                           ; $5b76: $84
	rst  $38                                         ; $5b77: $ff
	rst  $38                                         ; $5b78: $ff
	ld   a, [$3598]                                  ; $5b79: $fa $98 $35
	add  l                                           ; $5b7c: $85
	ld   de, $1111                                   ; $5b7d: $11 $11 $11
	ld   d, $73                                      ; $5b80: $16 $73
	ld   l, a                                        ; $5b82: $6f
	rst  $38                                         ; $5b83: $ff
	or   c                                           ; $5b84: $b1
	rst  $38                                         ; $5b85: $ff
	ld   de, $4ff4                                   ; $5b86: $11 $f4 $4f
	rst  $38                                         ; $5b89: $ff
	rst  $38                                         ; $5b8a: $ff
	db   $f4                                         ; $5b8b: $f4
	dec  de                                          ; $5b8c: $1b
	and  c                                           ; $5b8d: $a1
	ld   [de], a                                     ; $5b8e: $12
	ld   hl, $2111                                   ; $5b8f: $21 $11 $21
	rra                                              ; $5b92: $1f
	pop  af                                          ; $5b93: $f1
	cpl                                              ; $5b94: $2f
	push af                                          ; $5b95: $f5
	rst  $38                                         ; $5b96: $ff
	ld   h, c                                        ; $5b97: $61
	xor  [hl]                                        ; $5b98: $ae
	jp   z, $ffcf                                    ; $5b99: $ca $cf $ff

	db   $fc                                         ; $5b9c: $fc
	ld   b, c                                        ; $5b9d: $41
	ld   l, h                                        ; $5b9e: $6c
	ld   b, c                                        ; $5b9f: $41
	ld   h, $41                                      ; $5ba0: $26 $41
	ld   de, $a711                                   ; $5ba2: $11 $11 $a7
	ld   a, e                                        ; $5ba5: $7b
	sub  $ff                                         ; $5ba6: $d6 $ff
	ld   [hl], c                                     ; $5ba8: $71
	ld   l, d                                        ; $5ba9: $6a
	db   $dd                                         ; $5baa: $dd
	rla                                              ; $5bab: $17
	rst  $38                                         ; $5bac: $ff
	rst  $38                                         ; $5bad: $ff
	or   d                                           ; $5bae: $b2
	adc  e                                           ; $5baf: $8b
	ld   [hl], c                                     ; $5bb0: $71
	inc  de                                          ; $5bb1: $13
	or   l                                           ; $5bb2: $b5
	ld   de, $1143                                   ; $5bb3: $11 $43 $11
	ld   c, a                                        ; $5bb6: $4f
	pop  de                                          ; $5bb7: $d1
	cp   a                                           ; $5bb8: $bf

jr_0e2_5bb9:
	db   $fc                                         ; $5bb9: $fc
	jp   c, $fd14                                    ; $5bba: $da $14 $fd

	ccf                                              ; $5bbd: $3f
	rst  $38                                         ; $5bbe: $ff
	cp   $81                                         ; $5bbf: $fe $81
	sbc  c                                           ; $5bc1: $99
	inc  hl                                          ; $5bc2: $23
	ld   de, $1166                                   ; $5bc3: $11 $66 $11
	ld   de, $11bf                                   ; $5bc6: $11 $bf $11
	rst  $38                                         ; $5bc9: $ff
	db   $fd                                         ; $5bca: $fd
	inc  hl                                          ; $5bcb: $23
	ld   a, e                                        ; $5bcc: $7b
	jp   nc, $ff1f                                   ; $5bcd: $d2 $1f $ff

	adc  d                                           ; $5bd0: $8a
	or   $96                                         ; $5bd1: $f6 $96
	ld   de, $3174                                   ; $5bd3: $11 $74 $31
	ld   a, [de]                                     ; $5bd6: $1a
	pop  hl                                          ; $5bd7: $e1
	ld   de, $b4ff                                   ; $5bd8: $11 $ff $b4
	adc  a                                           ; $5bdb: $8f
	jp   nz, $1ff1                                   ; $5bdc: $c2 $f1 $1f

	pop  af                                          ; $5bdf: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5be0: $cf
	rst  $38                                         ; $5be1: $ff
	halt                                             ; $5be2: $76
	ld   a, [de]                                     ; $5be3: $1a
	sub  a                                           ; $5be4: $97
	ld   hl, $711f                                   ; $5be5: $21 $1f $71
	dec  d                                           ; $5be8: $15
	ld   [hl], c                                     ; $5be9: $71

jr_0e2_5bea:
	ld   a, [hl+]                                    ; $5bea: $2a
	ld   a, d                                        ; $5beb: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bec: $cf
	ldh  a, [c]                                      ; $5bed: $f2
	ld   l, a                                        ; $5bee: $6f
	ld   sp, $1ffb                                   ; $5bef: $31 $fb $1f
	rst  $38                                         ; $5bf2: $ff
	rla                                              ; $5bf3: $17
	ld   a, [$bb11]                                  ; $5bf4: $fa $11 $bb
	ld   [de], a                                     ; $5bf7: $12
	ld   [hl], c                                     ; $5bf8: $71
	dec  d                                           ; $5bf9: $15
	ld   de, $1727                                   ; $5bfa: $11 $27 $17
	ld   hl, sp+$3f                                  ; $5bfd: $f8 $3f
	db   $fc                                         ; $5bff: $fc
	sub  c                                           ; $5c00: $91
	ld   a, a                                        ; $5c01: $7f
	xor  c                                           ; $5c02: $a9
	ld   a, a                                        ; $5c03: $7f
	rst  $30                                         ; $5c04: $f7
	sbc  a                                           ; $5c05: $9f
	ld   e, e                                        ; $5c06: $5b
	ld   [hl], c                                     ; $5c07: $71
	ld   b, a                                        ; $5c08: $47
	rla                                              ; $5c09: $17
	ld   de, $1355                                   ; $5c0a: $11 $55 $13
	ld   hl, $8b9f                                   ; $5c0d: $21 $9f $8b
	rst  $30                                         ; $5c10: $f7
	rst  $28                                         ; $5c11: $ef
	ld   hl, $ffb9                                   ; $5c12: $21 $b9 $ff
	ld   d, a                                        ; $5c15: $57
	rst  $38                                         ; $5c16: $ff
	or   $18                                         ; $5c17: $f6 $18
	ret                                              ; $5c19: $c9


	ld   [de], a                                     ; $5c1a: $12
	ld   [hl], c                                     ; $5c1b: $71
	ld   a, e                                        ; $5c1c: $7b

jr_0e2_5c1d:
	ld   de, $819f                                   ; $5c1d: $11 $9f $81
	rra                                              ; $5c20: $1f
	ld   a, [$f51f]                                  ; $5c21: $fa $1f $f5
	ld   e, $79                                      ; $5c24: $1e $79
	cp   $a9                                         ; $5c26: $fe $a9
	rst  $38                                         ; $5c28: $ff
	ld   de, $19f6                                   ; $5c29: $11 $f6 $19
	ld   d, e                                        ; $5c2c: $53
	ld   a, b                                        ; $5c2d: $78
	ld   de, $4116                                   ; $5c2e: $11 $16 $41
	ld   [de], a                                     ; $5c31: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c32: $cf
	pop  hl                                          ; $5c33: $e1
	cpl                                              ; $5c34: $2f
	pop  af                                          ; $5c35: $f1
	rra                                              ; $5c36: $1f
	and  c                                           ; $5c37: $a1
	rst  $38                                         ; $5c38: $ff
	ld   a, a                                        ; $5c39: $7f
	or   $3f                                         ; $5c3a: $f6 $3f
	jp   $5638                                       ; $5c3c: $c3 $38 $56


	ld   a, b                                        ; $5c3f: $78
	ld   de, $315b                                   ; $5c40: $11 $5b $31
	ld   de, $11ff                                   ; $5c43: $11 $ff $11
	rst  JumpTable                                         ; $5c46: $df
	ld   hl, sp+$16                                  ; $5c47: $f8 $16
	rst  $38                                         ; $5c49: $ff
	ld   de, $f2ef                                   ; $5c4a: $11 $ef $f2
	dec  e                                           ; $5c4d: $1d
	rst  $38                                         ; $5c4e: $ff
	ld   de, $f16f                                   ; $5c4f: $11 $6f $f1
	ld   de, $11ad                                   ; $5c52: $11 $ad $11
	rla                                              ; $5c55: $17
	rst  $38                                         ; $5c56: $ff
	ld   de, $fedf                                   ; $5c57: $11 $df $fe
	ld   hl, $d1ff                                   ; $5c5a: $21 $ff $d1
	rra                                              ; $5c5d: $1f
	ld   a, [$9f89]                                  ; $5c5e: $fa $89 $9f
	pop  af                                          ; $5c61: $f1
	add  hl, de                                      ; $5c62: $19
	and  a                                           ; $5c63: $a7
	ld   [hl], c                                     ; $5c64: $71
	jr   jr_0e2_5bea                                 ; $5c65: $18 $83

	inc  de                                          ; $5c67: $13
	ld   d, a                                        ; $5c68: $57
	add  [hl]                                        ; $5c69: $86
	ld   d, [hl]                                     ; $5c6a: $56
	xor  $63                                         ; $5c6b: $ee $63
	ld   l, h                                        ; $5c6d: $6c
	reti                                             ; $5c6e: $d9


	ld   [hl], a                                     ; $5c6f: $77
	rst  JumpTable                                         ; $5c70: $df
	push bc                                          ; $5c71: $c5
	sbc  h                                           ; $5c72: $9c
	db   $db                                         ; $5c73: $db
	ld   b, h                                        ; $5c74: $44
	sbc  l                                           ; $5c75: $9d
	ld   h, h                                        ; $5c76: $64
	ld   b, a                                        ; $5c77: $47
	and  [hl]                                        ; $5c78: $a6
	ld   d, d                                        ; $5c79: $52
	ld   b, a                                        ; $5c7a: $47
	or   l                                           ; $5c7b: $b5
	inc  hl                                          ; $5c7c: $23
	ld   e, h                                        ; $5c7d: $5c
	and  l                                           ; $5c7e: $a5
	jr   z, jr_0e2_5c1d                              ; $5c7f: $28 $9c

	or   l                                           ; $5c81: $b5
	ld   l, e                                        ; $5c82: $6b
	ld   a, [$bb78]                                  ; $5c83: $fa $78 $bb
	cp   d                                           ; $5c86: $ba
	ld   c, c                                        ; $5c87: $49
	cp   b                                           ; $5c88: $b8
	adc  b                                           ; $5c89: $88
	ld   a, b                                        ; $5c8a: $78
	ret  z                                           ; $5c8b: $c8

	ld   l, b                                        ; $5c8c: $68
	sbc  c                                           ; $5c8d: $99
	sub  a                                           ; $5c8e: $97
	ld   c, b                                        ; $5c8f: $48
	add  a                                           ; $5c90: $87
	add  [hl]                                        ; $5c91: $86
	ld   l, c                                        ; $5c92: $69
	or   [hl]                                        ; $5c93: $b6
	ld   a, d                                        ; $5c94: $7a
	ld   a, d                                        ; $5c95: $7a
	sbc  b                                           ; $5c96: $98
	sbc  b                                           ; $5c97: $98
	adc  d                                           ; $5c98: $8a
	xor  b                                           ; $5c99: $a8
	xor  c                                           ; $5c9a: $a9
	adc  d                                           ; $5c9b: $8a
	sub  a                                           ; $5c9c: $97
	sbc  c                                           ; $5c9d: $99
	adc  h                                           ; $5c9e: $8c
	and  [hl]                                        ; $5c9f: $a6
	cp   d                                           ; $5ca0: $ba
	ld   a, c                                        ; $5ca1: $79
	sub  a                                           ; $5ca2: $97
	adc  c                                           ; $5ca3: $89
	ld   [hl], a                                     ; $5ca4: $77
	xor  b                                           ; $5ca5: $a8
	ld   a, c                                        ; $5ca6: $79
	sub  a                                           ; $5ca7: $97
	adc  c                                           ; $5ca8: $89
	ld   l, c                                        ; $5ca9: $69
	halt                                             ; $5caa: $76
	xor  c                                           ; $5cab: $a9
	ld   [hl], l                                     ; $5cac: $75
	sbc  b                                           ; $5cad: $98
	ld   l, b                                        ; $5cae: $68
	adc  c                                           ; $5caf: $89
	adc  e                                           ; $5cb0: $8b
	ld   a, c                                        ; $5cb1: $79
	xor  c                                           ; $5cb2: $a9
	adc  c                                           ; $5cb3: $89
	and  a                                           ; $5cb4: $a7
	xor  d                                           ; $5cb5: $aa
	ld   a, b                                        ; $5cb6: $78
	sbc  d                                           ; $5cb7: $9a
	adc  b                                           ; $5cb8: $88
	ld   l, c                                        ; $5cb9: $69
	and  a                                           ; $5cba: $a7
	ld   [hl], a                                     ; $5cbb: $77
	sub  a                                           ; $5cbc: $97
	ld   a, c                                        ; $5cbd: $79
	ld   d, a                                        ; $5cbe: $57
	add  [hl]                                        ; $5cbf: $86
	ld   l, c                                        ; $5cc0: $69
	add  a                                           ; $5cc1: $87
	sub  a                                           ; $5cc2: $97
	sub  [hl]                                        ; $5cc3: $96
	ld   a, c                                        ; $5cc4: $79
	ld   a, c                                        ; $5cc5: $79
	sbc  b                                           ; $5cc6: $98
	sbc  d                                           ; $5cc7: $9a
	xor  c                                           ; $5cc8: $a9
	adc  c                                           ; $5cc9: $89
	xor  b                                           ; $5cca: $a8
	xor  c                                           ; $5ccb: $a9
	sub  a                                           ; $5ccc: $97
	adc  b                                           ; $5ccd: $88
	adc  c                                           ; $5cce: $89
	ld   [hl], a                                     ; $5ccf: $77
	ld   a, b                                        ; $5cd0: $78
	ld   l, b                                        ; $5cd1: $68
	ld   [hl], a                                     ; $5cd2: $77
	sbc  c                                           ; $5cd3: $99
	ld   h, a                                        ; $5cd4: $67
	and  a                                           ; $5cd5: $a7
	ld   a, b                                        ; $5cd6: $78
	sub  a                                           ; $5cd7: $97
	adc  c                                           ; $5cd8: $89
	ld   l, c                                        ; $5cd9: $69
	adc  b                                           ; $5cda: $88
	adc  c                                           ; $5cdb: $89
	sbc  b                                           ; $5cdc: $98
	adc  b                                           ; $5cdd: $88
	add  a                                           ; $5cde: $87
	xor  b                                           ; $5cdf: $a8
	ld   a, c                                        ; $5ce0: $79
	ld   a, b                                        ; $5ce1: $78
	ld   l, b                                        ; $5ce2: $68
	sub  [hl]                                        ; $5ce3: $96
	ld   a, c                                        ; $5ce4: $79
	add  a                                           ; $5ce5: $87
	sub  a                                           ; $5ce6: $97
	ld   l, c                                        ; $5ce7: $69
	sub  a                                           ; $5ce8: $97
	ld   a, c                                        ; $5ce9: $79
	sub  [hl]                                        ; $5cea: $96
	sbc  c                                           ; $5ceb: $99
	ld   [hl], a                                     ; $5cec: $77
	adc  d                                           ; $5ced: $8a
	ld   l, b                                        ; $5cee: $68
	sub  a                                           ; $5cef: $97
	and  a                                           ; $5cf0: $a7
	ld   [hl], a                                     ; $5cf1: $77
	adc  c                                           ; $5cf2: $89
	ld   [hl], a                                     ; $5cf3: $77
	add  a                                           ; $5cf4: $87
	ld   [hl], a                                     ; $5cf5: $77
	ld   a, b                                        ; $5cf6: $78
	add  a                                           ; $5cf7: $87
	ld   a, d                                        ; $5cf8: $7a
	ld   e, b                                        ; $5cf9: $58
	add  a                                           ; $5cfa: $87
	sub  [hl]                                        ; $5cfb: $96
	sub  [hl]                                        ; $5cfc: $96
	sub  a                                           ; $5cfd: $97
	sbc  b                                           ; $5cfe: $98
	ld   a, d                                        ; $5cff: $7a
	ld   a, b                                        ; $5d00: $78
	ld   a, d                                        ; $5d01: $7a
	ld   a, b                                        ; $5d02: $78
	sub  [hl]                                        ; $5d03: $96
	and  a                                           ; $5d04: $a7
	sub  a                                           ; $5d05: $97
	ld   l, c                                        ; $5d06: $69
	add  a                                           ; $5d07: $87
	ld   a, b                                        ; $5d08: $78
	ld   a, b                                        ; $5d09: $78
	add  l                                           ; $5d0a: $85
	sbc  c                                           ; $5d0b: $99
	ld   [hl], a                                     ; $5d0c: $77
	ld   a, c                                        ; $5d0d: $79
	ld   l, d                                        ; $5d0e: $6a
	ld   [hl], a                                     ; $5d0f: $77
	and  [hl]                                        ; $5d10: $a6
	sbc  b                                           ; $5d11: $98
	add  a                                           ; $5d12: $87
	sbc  b                                           ; $5d13: $98
	ld   a, c                                        ; $5d14: $79
	ld   a, c                                        ; $5d15: $79
	adc  b                                           ; $5d16: $88
	ld   h, a                                        ; $5d17: $67
	add  a                                           ; $5d18: $87
	sub  l                                           ; $5d19: $95
	ld   a, c                                        ; $5d1a: $79
	ld   [hl], a                                     ; $5d1b: $77
	adc  b                                           ; $5d1c: $88
	sub  a                                           ; $5d1d: $97
	ld   [hl], a                                     ; $5d1e: $77
	adc  b                                           ; $5d1f: $88
	ld   a, c                                        ; $5d20: $79
	ld   a, c                                        ; $5d21: $79
	adc  b                                           ; $5d22: $88
	add  a                                           ; $5d23: $87
	add  a                                           ; $5d24: $87
	add  a                                           ; $5d25: $87
	ld   [hl], a                                     ; $5d26: $77
	adc  d                                           ; $5d27: $8a
	ld   h, [hl]                                     ; $5d28: $66
	add  a                                           ; $5d29: $87
	ld   a, c                                        ; $5d2a: $79
	ld   l, c                                        ; $5d2b: $69
	add  a                                           ; $5d2c: $87
	add  a                                           ; $5d2d: $87
	adc  b                                           ; $5d2e: $88
	sub  a                                           ; $5d2f: $97
	ld   a, b                                        ; $5d30: $78
	ld   a, b                                        ; $5d31: $78
	add  a                                           ; $5d32: $87
	sbc  b                                           ; $5d33: $98
	adc  b                                           ; $5d34: $88
	ld   l, c                                        ; $5d35: $69
	add  a                                           ; $5d36: $87
	sbc  c                                           ; $5d37: $99
	ld   [hl], a                                     ; $5d38: $77
	adc  b                                           ; $5d39: $88
	ld   l, b                                        ; $5d3a: $68
	add  [hl]                                        ; $5d3b: $86
	ld   a, b                                        ; $5d3c: $78
	halt                                             ; $5d3d: $76
	sub  a                                           ; $5d3e: $97
	ld   [hl], a                                     ; $5d3f: $77
	ld   a, b                                        ; $5d40: $78
	adc  c                                           ; $5d41: $89
	ld   l, d                                        ; $5d42: $6a
	add  a                                           ; $5d43: $87
	add  a                                           ; $5d44: $87
	adc  b                                           ; $5d45: $88
	add  a                                           ; $5d46: $87
	adc  b                                           ; $5d47: $88
	add  a                                           ; $5d48: $87
	sub  a                                           ; $5d49: $97
	ld   a, b                                        ; $5d4a: $78
	ld   a, b                                        ; $5d4b: $78
	ld   a, c                                        ; $5d4c: $79
	ld   [hl], a                                     ; $5d4d: $77
	sub  a                                           ; $5d4e: $97
	add  a                                           ; $5d4f: $87
	add  a                                           ; $5d50: $87
	sbc  b                                           ; $5d51: $98
	ld   l, c                                        ; $5d52: $69
	add  a                                           ; $5d53: $87
	ld   a, b                                        ; $5d54: $78
	ld   a, c                                        ; $5d55: $79
	adc  c                                           ; $5d56: $89
	add  a                                           ; $5d57: $87
	sbc  b                                           ; $5d58: $98
	add  a                                           ; $5d59: $87
	ld   a, b                                        ; $5d5a: $78
	add  a                                           ; $5d5b: $87
	sub  a                                           ; $5d5c: $97
	sbc  b                                           ; $5d5d: $98
	adc  b                                           ; $5d5e: $88
	ld   l, b                                        ; $5d5f: $68
	add  [hl]                                        ; $5d60: $86
	ld   a, c                                        ; $5d61: $79
	ld   a, b                                        ; $5d62: $78
	halt                                             ; $5d63: $76
	adc  b                                           ; $5d64: $88
	sub  a                                           ; $5d65: $97
	ld   a, b                                        ; $5d66: $78
	sbc  b                                           ; $5d67: $98
	ld   a, c                                        ; $5d68: $79
	add  a                                           ; $5d69: $87
	adc  b                                           ; $5d6a: $88
	ld   l, c                                        ; $5d6b: $69
	sbc  b                                           ; $5d6c: $98
	ld   [hl], a                                     ; $5d6d: $77
	sub  a                                           ; $5d6e: $97
	adc  b                                           ; $5d6f: $88
	ld   a, c                                        ; $5d70: $79
	ld   [hl], a                                     ; $5d71: $77
	add  a                                           ; $5d72: $87
	sub  [hl]                                        ; $5d73: $96
	sbc  b                                           ; $5d74: $98
	ld   l, c                                        ; $5d75: $69
	ld   a, c                                        ; $5d76: $79
	ld   a, c                                        ; $5d77: $79
	ld   a, b                                        ; $5d78: $78
	sub  a                                           ; $5d79: $97
	sbc  b                                           ; $5d7a: $98
	sub  a                                           ; $5d7b: $97
	xor  b                                           ; $5d7c: $a8
	add  [hl]                                        ; $5d7d: $86
	xor  c                                           ; $5d7e: $a9
	ld   l, c                                        ; $5d7f: $69
	ld   a, b                                        ; $5d80: $78
	ld   a, d                                        ; $5d81: $7a
	ld   [hl], a                                     ; $5d82: $77
	sub  a                                           ; $5d83: $97
	sub  [hl]                                        ; $5d84: $96
	ld   a, b                                        ; $5d85: $78
	adc  b                                           ; $5d86: $88
	adc  b                                           ; $5d87: $88
	adc  c                                           ; $5d88: $89
	ld   a, c                                        ; $5d89: $79
	ld   [hl], a                                     ; $5d8a: $77
	and  a                                           ; $5d8b: $a7
	sub  [hl]                                        ; $5d8c: $96
	adc  c                                           ; $5d8d: $89
	ld   a, b                                        ; $5d8e: $78
	ld   a, c                                        ; $5d8f: $79
	sub  a                                           ; $5d90: $97
	ld   a, b                                        ; $5d91: $78
	ld   a, b                                        ; $5d92: $78
	adc  b                                           ; $5d93: $88
	adc  b                                           ; $5d94: $88
	add  a                                           ; $5d95: $87
	adc  b                                           ; $5d96: $88
	ld   a, c                                        ; $5d97: $79
	add  a                                           ; $5d98: $87
	sbc  c                                           ; $5d99: $99
	adc  b                                           ; $5d9a: $88
	add  a                                           ; $5d9b: $87
	sbc  b                                           ; $5d9c: $98
	add  a                                           ; $5d9d: $87
	adc  b                                           ; $5d9e: $88
	adc  b                                           ; $5d9f: $88
	adc  b                                           ; $5da0: $88
	ld   l, c                                        ; $5da1: $69
	and  a                                           ; $5da2: $a7
	adc  b                                           ; $5da3: $88
	adc  c                                           ; $5da4: $89
	ld   a, b                                        ; $5da5: $78
	sbc  b                                           ; $5da6: $98
	sbc  b                                           ; $5da7: $98
	add  a                                           ; $5da8: $87
	xor  b                                           ; $5da9: $a8
	ld   a, d                                        ; $5daa: $7a

Call_0e2_5dab:
	ld   l, d                                        ; $5dab: $6a
	add  a                                           ; $5dac: $87
	sub  a                                           ; $5dad: $97
	sbc  b                                           ; $5dae: $98
	adc  b                                           ; $5daf: $88
	add  a                                           ; $5db0: $87
	and  a                                           ; $5db1: $a7
	adc  d                                           ; $5db2: $8a
	ld   a, c                                        ; $5db3: $79
	ld   e, d                                        ; $5db4: $5a
	sub  a                                           ; $5db5: $97
	sub  [hl]                                        ; $5db6: $96
	sbc  b                                           ; $5db7: $98
	adc  c                                           ; $5db8: $89
	add  a                                           ; $5db9: $87
	adc  c                                           ; $5dba: $89
	adc  b                                           ; $5dbb: $88
	ld   a, d                                        ; $5dbc: $7a
	and  l                                           ; $5dbd: $a5
	sbc  b                                           ; $5dbe: $98
	sbc  c                                           ; $5dbf: $99
	ld   a, b                                        ; $5dc0: $78
	ld   a, c                                        ; $5dc1: $79
	adc  b                                           ; $5dc2: $88
	sbc  c                                           ; $5dc3: $99
	ld   a, b                                        ; $5dc4: $78
	and  a                                           ; $5dc5: $a7
	adc  d                                           ; $5dc6: $8a
	ld   [hl], a                                     ; $5dc7: $77
	xor  b                                           ; $5dc8: $a8
	ld   a, b                                        ; $5dc9: $78
	ld   a, b                                        ; $5dca: $78
	and  a                                           ; $5dcb: $a7
	ld   a, c                                        ; $5dcc: $79
	ld   a, d                                        ; $5dcd: $7a
	ld   [hl], a                                     ; $5dce: $77
	adc  b                                           ; $5dcf: $88
	sub  a                                           ; $5dd0: $97
	sbc  b                                           ; $5dd1: $98
	sub  a                                           ; $5dd2: $97
	adc  c                                           ; $5dd3: $89
	ld   l, c                                        ; $5dd4: $69
	sub  [hl]                                        ; $5dd5: $96
	adc  c                                           ; $5dd6: $89
	ld   l, c                                        ; $5dd7: $69
	and  [hl]                                        ; $5dd8: $a6
	ld   a, c                                        ; $5dd9: $79
	sub  [hl]                                        ; $5dda: $96
	xor  c                                           ; $5ddb: $a9
	ld   l, c                                        ; $5ddc: $69
	add  a                                           ; $5ddd: $87
	sbc  d                                           ; $5dde: $9a
	ld   l, c                                        ; $5ddf: $69
	sub  [hl]                                        ; $5de0: $96
	sbc  b                                           ; $5de1: $98
	or   l                                           ; $5de2: $b5
	sbc  c                                           ; $5de3: $99
	ld   a, b                                        ; $5de4: $78
	ld   l, d                                        ; $5de5: $6a
	ld   a, c                                        ; $5de6: $79
	ld   a, d                                        ; $5de7: $7a
	ld   a, b                                        ; $5de8: $78
	sub  a                                           ; $5de9: $97
	ld   a, c                                        ; $5dea: $79
	add  [hl]                                        ; $5deb: $86
	sbc  d                                           ; $5dec: $9a
	ld   l, b                                        ; $5ded: $68
	add  a                                           ; $5dee: $87
	sbc  b                                           ; $5def: $98
	ld   a, c                                        ; $5df0: $79
	sbc  b                                           ; $5df1: $98
	ld   a, c                                        ; $5df2: $79
	ld   l, b                                        ; $5df3: $68
	sub  a                                           ; $5df4: $97
	adc  b                                           ; $5df5: $88
	sbc  b                                           ; $5df6: $98
	ld   a, c                                        ; $5df7: $79
	sub  [hl]                                        ; $5df8: $96
	sbc  b                                           ; $5df9: $98
	ld   l, d                                        ; $5dfa: $6a
	ld   a, c                                        ; $5dfb: $79
	adc  b                                           ; $5dfc: $88
	sub  a                                           ; $5dfd: $97
	ld   a, d                                        ; $5dfe: $7a
	halt                                             ; $5dff: $76
	sbc  b                                           ; $5e00: $98
	sub  a                                           ; $5e01: $97
	adc  d                                           ; $5e02: $8a
	ld   e, e                                        ; $5e03: $5b
	ld   [hl], a                                     ; $5e04: $77
	and  l                                           ; $5e05: $a5
	add  $99                                         ; $5e06: $c6 $99
	ld   a, d                                        ; $5e08: $7a
	ld   l, c                                        ; $5e09: $69
	ld   l, c                                        ; $5e0a: $69
	sub  a                                           ; $5e0b: $97
	ld   a, c                                        ; $5e0c: $79
	add  a                                           ; $5e0d: $87
	add  a                                           ; $5e0e: $87
	adc  d                                           ; $5e0f: $8a
	add  [hl]                                        ; $5e10: $86
	and  a                                           ; $5e11: $a7
	and  [hl]                                        ; $5e12: $a6
	ld   a, d                                        ; $5e13: $7a
	ld   l, d                                        ; $5e14: $6a
	ld   e, c                                        ; $5e15: $59
	xor  b                                           ; $5e16: $a8
	and  [hl]                                        ; $5e17: $a6
	adc  c                                           ; $5e18: $89
	ld   a, c                                        ; $5e19: $79
	ld   [hl], a                                     ; $5e1a: $77
	sbc  b                                           ; $5e1b: $98
	sub  [hl]                                        ; $5e1c: $96
	sbc  b                                           ; $5e1d: $98
	adc  b                                           ; $5e1e: $88
	ld   a, c                                        ; $5e1f: $79
	adc  c                                           ; $5e20: $89
	ld   a, b                                        ; $5e21: $78
	adc  e                                           ; $5e22: $8b
	ld   e, b                                        ; $5e23: $58
	sbc  b                                           ; $5e24: $98
	and  [hl]                                        ; $5e25: $a6
	and  a                                           ; $5e26: $a7
	sbc  b                                           ; $5e27: $98
	ld   a, c                                        ; $5e28: $79
	sub  a                                           ; $5e29: $97
	sbc  d                                           ; $5e2a: $9a
	ld   c, c                                        ; $5e2b: $49
	adc  b                                           ; $5e2c: $88
	sub  a                                           ; $5e2d: $97
	ld   a, b                                        ; $5e2e: $78
	sub  a                                           ; $5e2f: $97
	adc  b                                           ; $5e30: $88
	sub  [hl]                                        ; $5e31: $96
	adc  e                                           ; $5e32: $8b
	ld   [hl], a                                     ; $5e33: $77
	sbc  b                                           ; $5e34: $98
	adc  c                                           ; $5e35: $89
	ld   [hl], a                                     ; $5e36: $77
	and  [hl]                                        ; $5e37: $a6
	sub  a                                           ; $5e38: $97
	ld   a, e                                        ; $5e39: $7b
	ld   c, d                                        ; $5e3a: $4a
	ld   a, b                                        ; $5e3b: $78
	sub  a                                           ; $5e3c: $97
	sbc  c                                           ; $5e3d: $99
	ld   a, c                                        ; $5e3e: $79
	sub  l                                           ; $5e3f: $95
	sbc  d                                           ; $5e40: $9a
	ld   e, c                                        ; $5e41: $59
	add  a                                           ; $5e42: $87
	ld   [hl], a                                     ; $5e43: $77
	or   a                                           ; $5e44: $b7
	ld   a, d                                        ; $5e45: $7a
	add  [hl]                                        ; $5e46: $86
	adc  h                                           ; $5e47: $8c
	ld   e, b                                        ; $5e48: $58
	adc  c                                           ; $5e49: $89
	add  l                                           ; $5e4a: $85
	or   a                                           ; $5e4b: $b7
	ld   a, d                                        ; $5e4c: $7a
	ld   e, e                                        ; $5e4d: $5b
	sub  [hl]                                        ; $5e4e: $96
	add  [hl]                                        ; $5e4f: $86
	cp   b                                           ; $5e50: $b8
	ld   l, c                                        ; $5e51: $69
	adc  b                                           ; $5e52: $88
	ld   a, c                                        ; $5e53: $79
	ld   a, b                                        ; $5e54: $78
	adc  b                                           ; $5e55: $88
	sub  [hl]                                        ; $5e56: $96
	xor  c                                           ; $5e57: $a9
	ld   [hl], a                                     ; $5e58: $77
	sbc  c                                           ; $5e59: $99
	ld   a, c                                        ; $5e5a: $79
	sub  [hl]                                        ; $5e5b: $96
	adc  c                                           ; $5e5c: $89
	sub  [hl]                                        ; $5e5d: $96
	adc  c                                           ; $5e5e: $89
	ld   a, b                                        ; $5e5f: $78
	ld   a, b                                        ; $5e60: $78
	sbc  b                                           ; $5e61: $98
	adc  b                                           ; $5e62: $88
	sub  a                                           ; $5e63: $97
	xor  b                                           ; $5e64: $a8
	ld   l, b                                        ; $5e65: $68
	adc  c                                           ; $5e66: $89
	ld   a, c                                        ; $5e67: $79
	and  h                                           ; $5e68: $a4
	adc  c                                           ; $5e69: $89
	ld   [hl], a                                     ; $5e6a: $77
	sub  a                                           ; $5e6b: $97
	ld   a, b                                        ; $5e6c: $78
	sbc  b                                           ; $5e6d: $98
	ld   l, d                                        ; $5e6e: $6a
	ld   [hl], a                                     ; $5e6f: $77
	sbc  d                                           ; $5e70: $9a
	halt                                             ; $5e71: $76
	xor  d                                           ; $5e72: $aa
	ld   l, c                                        ; $5e73: $69
	sub  a                                           ; $5e74: $97
	adc  b                                           ; $5e75: $88
	sub  [hl]                                        ; $5e76: $96
	xor  b                                           ; $5e77: $a8
	ld   a, c                                        ; $5e78: $79
	adc  b                                           ; $5e79: $88
	and  a                                           ; $5e7a: $a7
	ld   a, c                                        ; $5e7b: $79
	ld   a, b                                        ; $5e7c: $78
	ld   a, b                                        ; $5e7d: $78
	ld   a, d                                        ; $5e7e: $7a
	ld   a, c                                        ; $5e7f: $79
	ld   a, b                                        ; $5e80: $78
	and  l                                           ; $5e81: $a5
	sbc  b                                           ; $5e82: $98
	ld   a, b                                        ; $5e83: $78
	sub  a                                           ; $5e84: $97
	and  [hl]                                        ; $5e85: $a6
	adc  c                                           ; $5e86: $89
	ld   l, d                                        ; $5e87: $6a
	ld   a, b                                        ; $5e88: $78
	sbc  b                                           ; $5e89: $98
	ld   a, c                                        ; $5e8a: $79
	sbc  b                                           ; $5e8b: $98
	add  a                                           ; $5e8c: $87
	sbc  b                                           ; $5e8d: $98
	ld   a, d                                        ; $5e8e: $7a
	ld   l, c                                        ; $5e8f: $69
	add  a                                           ; $5e90: $87
	add  [hl]                                        ; $5e91: $86
	add  $89                                         ; $5e92: $c6 $89
	ld   l, d                                        ; $5e94: $6a
	ld   e, c                                        ; $5e95: $59
	ld   a, c                                        ; $5e96: $79
	sub  a                                           ; $5e97: $97
	adc  c                                           ; $5e98: $89
	adc  c                                           ; $5e99: $89
	ld   [hl], a                                     ; $5e9a: $77
	sub  a                                           ; $5e9b: $97
	and  h                                           ; $5e9c: $a4
	sbc  d                                           ; $5e9d: $9a
	ld   a, b                                        ; $5e9e: $78
	ld   a, d                                        ; $5e9f: $7a
	ld   l, c                                        ; $5ea0: $69
	ld   l, d                                        ; $5ea1: $6a
	ld   a, b                                        ; $5ea2: $78
	and  [hl]                                        ; $5ea3: $a6
	and  a                                           ; $5ea4: $a7
	adc  c                                           ; $5ea5: $89
	add  a                                           ; $5ea6: $87
	and  a                                           ; $5ea7: $a7
	add  a                                           ; $5ea8: $87
	ld   a, e                                        ; $5ea9: $7b
	ld   l, b                                        ; $5eaa: $68
	adc  c                                           ; $5eab: $89
	ld   e, d                                        ; $5eac: $5a
	add  l                                           ; $5ead: $85
	and  [hl]                                        ; $5eae: $a6
	sub  [hl]                                        ; $5eaf: $96
	sbc  b                                           ; $5eb0: $98
	ld   e, c                                        ; $5eb1: $59
	and  a                                           ; $5eb2: $a7
	ld   a, c                                        ; $5eb3: $79
	ld   a, d                                        ; $5eb4: $7a
	ld   a, b                                        ; $5eb5: $78
	adc  b                                           ; $5eb6: $88
	sub  a                                           ; $5eb7: $97
	adc  b                                           ; $5eb8: $88
	and  a                                           ; $5eb9: $a7
	sub  a                                           ; $5eba: $97
	adc  c                                           ; $5ebb: $89
	ld   l, d                                        ; $5ebc: $6a
	ld   a, b                                        ; $5ebd: $78
	sub  [hl]                                        ; $5ebe: $96
	sub  a                                           ; $5ebf: $97
	ld   a, b                                        ; $5ec0: $78
	ld   h, a                                        ; $5ec1: $67
	add  a                                           ; $5ec2: $87
	ld   l, b                                        ; $5ec3: $68
	add  a                                           ; $5ec4: $87
	sub  a                                           ; $5ec5: $97
	sub  a                                           ; $5ec6: $97
	sbc  b                                           ; $5ec7: $98
	ld   a, c                                        ; $5ec8: $79
	adc  b                                           ; $5ec9: $88
	add  a                                           ; $5eca: $87
	xor  b                                           ; $5ecb: $a8
	ld   a, d                                        ; $5ecc: $7a
	ld   a, d                                        ; $5ecd: $7a
	adc  c                                           ; $5ece: $89
	add  l                                           ; $5ecf: $85
	push de                                          ; $5ed0: $d5
	adc  b                                           ; $5ed1: $88
	ld   l, c                                        ; $5ed2: $69
	ld   h, a                                        ; $5ed3: $67
	ld   [hl], l                                     ; $5ed4: $75
	ld   [hl], a                                     ; $5ed5: $77
	add  hl, sp                                      ; $5ed6: $39
	ld   h, l                                        ; $5ed7: $65
	halt                                             ; $5ed8: $76
	ld   [hl], l                                     ; $5ed9: $75
	sub  a                                           ; $5eda: $97
	adc  b                                           ; $5edb: $88
	xor  e                                           ; $5edc: $ab
	sbc  e                                           ; $5edd: $9b
	xor  e                                           ; $5ede: $ab
	cp   h                                           ; $5edf: $bc
	cp   d                                           ; $5ee0: $ba
	ret                                              ; $5ee1: $c9


	sbc  c                                           ; $5ee2: $99
	add  a                                           ; $5ee3: $87
	ld   [hl], l                                     ; $5ee4: $75
	ld   h, l                                        ; $5ee5: $65
	ld   b, e                                        ; $5ee6: $43
	inc  h                                           ; $5ee7: $24
	ld   b, h                                        ; $5ee8: $44
	inc  [hl]                                        ; $5ee9: $34
	ld   d, a                                        ; $5eea: $57
	sbc  b                                           ; $5eeb: $98
	xor  e                                           ; $5eec: $ab
	jp   z, $eccd                                    ; $5eed: $ca $cd $ec

	xor  l                                           ; $5ef0: $ad
	set  1, d                                        ; $5ef1: $cb $ca
	xor  c                                           ; $5ef3: $a9
	add  a                                           ; $5ef4: $87
	ld   h, h                                        ; $5ef5: $64
	halt                                             ; $5ef6: $76
	ld   [hl-], a                                    ; $5ef7: $32
	ld   h, $31                                      ; $5ef8: $26 $31
	inc  [hl]                                        ; $5efa: $34
	ld   h, h                                        ; $5efb: $64
	ld   l, b                                        ; $5efc: $68
	xor  e                                           ; $5efd: $ab
	call z, $ecdd                                    ; $5efe: $cc $dd $ec
	cp   h                                           ; $5f01: $bc
	call c, $99ac                                    ; $5f02: $dc $ac $99
	add  [hl]                                        ; $5f05: $86
	ld   [hl], h                                     ; $5f06: $74
	ld   d, l                                        ; $5f07: $55
	inc  [hl]                                        ; $5f08: $34
	ld   [de], a                                     ; $5f09: $12
	ld   [hl-], a                                    ; $5f0a: $32
	ld   [hl+], a                                    ; $5f0b: $22
	ld   b, l                                        ; $5f0c: $45
	ld   l, c                                        ; $5f0d: $69
	xor  e                                           ; $5f0e: $ab
	cp   [hl]                                        ; $5f0f: $be
	cp   $ee                                         ; $5f10: $fe $ee
	db   $ed                                         ; $5f12: $ed
	db   $db                                         ; $5f13: $db
	cp   h                                           ; $5f14: $bc
	sbc  d                                           ; $5f15: $9a
	ld   [hl], l                                     ; $5f16: $75
	add  h                                           ; $5f17: $84
	jr   @+$43                                       ; $5f18: $18 $41

	inc  de                                          ; $5f1a: $13
	ld   sp, $2414                                   ; $5f1b: $31 $14 $24
	adc  c                                           ; $5f1e: $89
	adc  h                                           ; $5f1f: $8c
	xor  $ff                                         ; $5f20: $ee $ff
	cp   $ff                                         ; $5f22: $fe $ff
	db   $db                                         ; $5f24: $db
	res  1, d                                        ; $5f25: $cb $8a
	add  d                                           ; $5f27: $82
	ld   b, e                                        ; $5f28: $43
	ld   [hl-], a                                    ; $5f29: $32
	ld   bc, $2111                                   ; $5f2a: $01 $11 $21
	inc  de                                          ; $5f2d: $13
	ld   h, h                                        ; $5f2e: $64
	ld   e, e                                        ; $5f2f: $5b
	adc  $ff                                         ; $5f30: $ce $ff
	rst  $38                                         ; $5f32: $ff
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	ei                                               ; $5f35: $fb
	cp   e                                           ; $5f36: $bb
	add  [hl]                                        ; $5f37: $86
	ld   b, h                                        ; $5f38: $44
	ld   hl, $1152                                   ; $5f39: $21 $52 $11
	ld   [de], a                                     ; $5f3c: $12
	ld   de, $4633                                   ; $5f3d: $11 $33 $46
	sbc  l                                           ; $5f40: $9d
	rst  JumpTable                                         ; $5f41: $df
	rst  $38                                         ; $5f42: $ff
	rst  $38                                         ; $5f43: $ff
	rst  $38                                         ; $5f44: $ff
	rst  $38                                         ; $5f45: $ff
	call c, Call_0e2_43a7                            ; $5f46: $dc $a7 $43
	ld   d, c                                        ; $5f49: $51
	dec  d                                           ; $5f4a: $15
	ld   de, $1111                                   ; $5f4b: $11 $11 $11
	ld   [de], a                                     ; $5f4e: $12
	dec  d                                           ; $5f4f: $15
	ld   [hl], a                                     ; $5f50: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f51: $cf
	rst  $38                                         ; $5f52: $ff
	rst  $38                                         ; $5f53: $ff
	rst  $38                                         ; $5f54: $ff
	rst  $38                                         ; $5f55: $ff
	db   $fd                                         ; $5f56: $fd
	jp   c, $1166                                    ; $5f57: $da $66 $11

	ld   de, $1111                                   ; $5f5a: $11 $11 $11
	ld   de, $3211                                   ; $5f5d: $11 $11 $32
	ld   d, a                                        ; $5f60: $57
	cp   a                                           ; $5f61: $bf
	rst  $38                                         ; $5f62: $ff
	rst  $38                                         ; $5f63: $ff
	rst  $38                                         ; $5f64: $ff
	rst  $38                                         ; $5f65: $ff
	rst  $38                                         ; $5f66: $ff
	sbc  $94                                         ; $5f67: $de $94
	ld   sp, $1111                                   ; $5f69: $31 $11 $11
	ld   de, $1111                                   ; $5f6c: $11 $11 $11
	dec  d                                           ; $5f6f: $15
	ld   b, l                                        ; $5f70: $45
	ld   a, a                                        ; $5f71: $7f
	rst  $38                                         ; $5f72: $ff
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	rst  $38                                         ; $5f75: $ff
	rst  $38                                         ; $5f76: $ff
	db   $fd                                         ; $5f77: $fd
	rst  $10                                         ; $5f78: $d7
	ld   sp, $1111                                   ; $5f79: $31 $11 $11
	ld   de, $1111                                   ; $5f7c: $11 $11 $11
	ld   [de], a                                     ; $5f7f: $12
	dec  [hl]                                        ; $5f80: $35
	adc  e                                           ; $5f81: $8b
	rst  $38                                         ; $5f82: $ff
	rst  $38                                         ; $5f83: $ff
	rst  $38                                         ; $5f84: $ff

Jump_0e2_5f85:
	rst  $38                                         ; $5f85: $ff
	rst  $38                                         ; $5f86: $ff
	cp   $e9                                         ; $5f87: $fe $e9
	ld   d, d                                        ; $5f89: $52
	ld   de, $1111                                   ; $5f8a: $11 $11 $11
	ld   de, $1111                                   ; $5f8d: $11 $11 $11
	inc  sp                                          ; $5f90: $33
	sbc  c                                           ; $5f91: $99
	rst  $38                                         ; $5f92: $ff
	rst  $38                                         ; $5f93: $ff
	rst  $38                                         ; $5f94: $ff
	rst  $38                                         ; $5f95: $ff
	rst  $38                                         ; $5f96: $ff
	rst  $38                                         ; $5f97: $ff
	db   $dd                                         ; $5f98: $dd
	ld   d, e                                        ; $5f99: $53
	ld   de, $1111                                   ; $5f9a: $11 $11 $11
	ld   de, $1111                                   ; $5f9d: $11 $11 $11
	inc  hl                                          ; $5fa0: $23
	ld   a, d                                        ; $5fa1: $7a
	rst  $28                                         ; $5fa2: $ef
	rst  $38                                         ; $5fa3: $ff
	rst  $38                                         ; $5fa4: $ff
	rst  $38                                         ; $5fa5: $ff
	rst  $38                                         ; $5fa6: $ff
	rst  $38                                         ; $5fa7: $ff
	xor  $83                                         ; $5fa8: $ee $83
	ld   de, $1111                                   ; $5faa: $11 $11 $11
	ld   de, $1111                                   ; $5fad: $11 $11 $11
	inc  d                                           ; $5fb0: $14
	ld   c, d                                        ; $5fb1: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb2: $cf
	rst  $38                                         ; $5fb3: $ff
	rst  $38                                         ; $5fb4: $ff
	rst  $38                                         ; $5fb5: $ff
	rst  $38                                         ; $5fb6: $ff
	rst  $38                                         ; $5fb7: $ff
	cp   $b3                                         ; $5fb8: $fe $b3
	ld   sp, $1111                                   ; $5fba: $31 $11 $11
	ld   de, $1111                                   ; $5fbd: $11 $11 $11
	ld   d, $29                                      ; $5fc0: $16 $29
	rst  JumpTable                                         ; $5fc2: $df
	rst  $38                                         ; $5fc3: $ff
	rst  $38                                         ; $5fc4: $ff
	rst  $38                                         ; $5fc5: $ff
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	db   $fd                                         ; $5fc8: $fd
	push af                                          ; $5fc9: $f5
	ld   b, c                                        ; $5fca: $41
	ld   de, $1111                                   ; $5fcb: $11 $11 $11
	ld   de, $1611                                   ; $5fce: $11 $11 $16
	ld   d, e                                        ; $5fd1: $53
	cp   a                                           ; $5fd2: $bf
	rst  $38                                         ; $5fd3: $ff
	rst  $38                                         ; $5fd4: $ff
	rst  $38                                         ; $5fd5: $ff
	rst  $38                                         ; $5fd6: $ff

Jump_0e2_5fd7:
	rst  $38                                         ; $5fd7: $ff
	cp   $fa                                         ; $5fd8: $fe $fa
	inc  hl                                          ; $5fda: $23
	ld   de, $1111                                   ; $5fdb: $11 $11 $11
	ld   de, $1111                                   ; $5fde: $11 $11 $11
	ld   d, h                                        ; $5fe1: $54
	sbc  e                                           ; $5fe2: $9b
	rst  $38                                         ; $5fe3: $ff
	rst  $38                                         ; $5fe4: $ff
	rst  $38                                         ; $5fe5: $ff
	rst  $38                                         ; $5fe6: $ff
	rst  $38                                         ; $5fe7: $ff
	rst  $38                                         ; $5fe8: $ff
	rst  $28                                         ; $5fe9: $ef
	ld   h, h                                        ; $5fea: $64
	ld   de, $1111                                   ; $5feb: $11 $11 $11
	ld   de, $1111                                   ; $5fee: $11 $11 $11
	ld   h, $49                                      ; $5ff1: $26 $49
	rst  JumpTable                                         ; $5ff3: $df
	rst  $38                                         ; $5ff4: $ff
	rst  $38                                         ; $5ff5: $ff
	rst  $38                                         ; $5ff6: $ff
	rst  $38                                         ; $5ff7: $ff
	rst  $38                                         ; $5ff8: $ff
	rst  $38                                         ; $5ff9: $ff
	jp   $1131                                       ; $5ffa: $c3 $31 $11


	ld   de, $1111                                   ; $5ffd: $11 $11 $11
	ld   de, $5516                                   ; $6000: $11 $16 $55
	cp   a                                           ; $6003: $bf
	rst  $38                                         ; $6004: $ff
	rst  $38                                         ; $6005: $ff
	rst  $38                                         ; $6006: $ff
	rst  $38                                         ; $6007: $ff
	rst  $38                                         ; $6008: $ff
	db   $fd                                         ; $6009: $fd
	ld   sp, hl                                      ; $600a: $f9
	ld   [hl+], a                                    ; $600b: $22
	ld   de, $1111                                   ; $600c: $11 $11 $11
	ld   de, $1111                                   ; $600f: $11 $11 $11
	ld   h, l                                        ; $6012: $65
	adc  h                                           ; $6013: $8c
	rst  $38                                         ; $6014: $ff
	rst  $38                                         ; $6015: $ff
	rst  $38                                         ; $6016: $ff
	rst  $38                                         ; $6017: $ff
	rst  $38                                         ; $6018: $ff
	rst  $38                                         ; $6019: $ff
	rst  $28                                         ; $601a: $ef
	ld   h, d                                        ; $601b: $62
	ld   de, $1111                                   ; $601c: $11 $11 $11
	ld   de, $1111                                   ; $601f: $11 $11 $11
	rla                                              ; $6022: $17
	ld   e, e                                        ; $6023: $5b
	rst  $38                                         ; $6024: $ff
	rst  $38                                         ; $6025: $ff
	rst  $38                                         ; $6026: $ff
	rst  $38                                         ; $6027: $ff
	rst  $38                                         ; $6028: $ff
	rst  $38                                         ; $6029: $ff
	db   $fd                                         ; $602a: $fd
	db   $e4                                         ; $602b: $e4
	ld   hl, $1111                                   ; $602c: $21 $11 $11
	ld   de, $1111                                   ; $602f: $11 $11 $11
	ld   [de], a                                     ; $6032: $12
	add  l                                           ; $6033: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6034: $cf
	rst  $38                                         ; $6035: $ff
	rst  $38                                         ; $6036: $ff
	rst  $38                                         ; $6037: $ff
	rst  $38                                         ; $6038: $ff
	rst  $38                                         ; $6039: $ff
	cp   $eb                                         ; $603a: $fe $eb
	ld   [hl+], a                                    ; $603c: $22
	ld   de, $1111                                   ; $603d: $11 $11 $11
	ld   de, $1111                                   ; $6040: $11 $11 $11
	ld   e, b                                        ; $6043: $58
	ld   l, h                                        ; $6044: $6c
	rst  $38                                         ; $6045: $ff
	rst  $38                                         ; $6046: $ff
	rst  $38                                         ; $6047: $ff
	rst  $38                                         ; $6048: $ff
	rst  $38                                         ; $6049: $ff
	rst  $38                                         ; $604a: $ff
	adc  $91                                         ; $604b: $ce $91
	ld   de, $1111                                   ; $604d: $11 $11 $11
	ld   de, $1111                                   ; $6050: $11 $11 $11
	rla                                              ; $6053: $17
	add  a                                           ; $6054: $87
	rst  $38                                         ; $6055: $ff
	rst  $38                                         ; $6056: $ff
	rst  $38                                         ; $6057: $ff
	rst  $38                                         ; $6058: $ff
	rst  $38                                         ; $6059: $ff
	rst  $38                                         ; $605a: $ff
	ei                                               ; $605b: $fb
	rst  $10                                         ; $605c: $d7
	ld   de, $1111                                   ; $605d: $11 $11 $11
	ld   de, $1111                                   ; $6060: $11 $11 $11
	ld   de, $8f89                                   ; $6063: $11 $89 $8f
	rst  $38                                         ; $6066: $ff
	rst  $38                                         ; $6067: $ff
	rst  $38                                         ; $6068: $ff
	rst  $38                                         ; $6069: $ff
	rst  $38                                         ; $606a: $ff
	rst  $38                                         ; $606b: $ff
	cp   h                                           ; $606c: $bc
	ld   h, c                                        ; $606d: $61
	ld   de, $1111                                   ; $606e: $11 $11 $11
	ld   de, $1111                                   ; $6071: $11 $11 $11
	jr   @-$44                                       ; $6074: $18 $ba

	rst  $38                                         ; $6076: $ff
	rst  $38                                         ; $6077: $ff
	rst  $38                                         ; $6078: $ff
	rst  $38                                         ; $6079: $ff
	rst  $38                                         ; $607a: $ff
	rst  $38                                         ; $607b: $ff
	ld   a, [$11b6]                                  ; $607c: $fa $b6 $11
	ld   de, $1111                                   ; $607f: $11 $11 $11
	ld   de, $1111                                   ; $6082: $11 $11 $11
	xor  l                                           ; $6085: $ad
	xor  a                                           ; $6086: $af
	rst  $38                                         ; $6087: $ff
	rst  $38                                         ; $6088: $ff
	rst  $38                                         ; $6089: $ff
	rst  $38                                         ; $608a: $ff
	rst  $38                                         ; $608b: $ff
	cp   $89                                         ; $608c: $fe $89
	ld   d, c                                        ; $608e: $51
	ld   de, $1111                                   ; $608f: $11 $11 $11
	ld   de, $1111                                   ; $6092: $11 $11 $11
	inc  e                                           ; $6095: $1c
	ld   a, [$ffff]                                  ; $6096: $fa $ff $ff
	rst  $38                                         ; $6099: $ff
	rst  $38                                         ; $609a: $ff
	rst  $38                                         ; $609b: $ff
	rst  $38                                         ; $609c: $ff
	sub  $83                                         ; $609d: $d6 $83
	ld   de, $1111                                   ; $609f: $11 $11 $11
	ld   de, $2111                                   ; $60a2: $11 $11 $21
	ld   de, $bfff                                   ; $60a5: $11 $ff $bf
	rst  $38                                         ; $60a8: $ff
	rst  $38                                         ; $60a9: $ff
	rst  $38                                         ; $60aa: $ff
	rst  $38                                         ; $60ab: $ff
	rst  $38                                         ; $60ac: $ff
	ld   a, [$1146]                                  ; $60ad: $fa $46 $11
	ld   de, $1111                                   ; $60b0: $11 $11 $11
	ld   de, $2113                                   ; $60b3: $11 $13 $21
	rra                                              ; $60b6: $1f
	db   $fd                                         ; $60b7: $fd
	rst  $38                                         ; $60b8: $ff
	rst  $38                                         ; $60b9: $ff
	rst  $38                                         ; $60ba: $ff
	rst  $38                                         ; $60bb: $ff
	rst  $38                                         ; $60bc: $ff
	rst  $38                                         ; $60bd: $ff
	sub  d                                           ; $60be: $92
	ld   b, c                                        ; $60bf: $41
	ld   de, $1111                                   ; $60c0: $11 $11 $11
	ld   de, $4511                                   ; $60c3: $11 $11 $45
	ld   [de], a                                     ; $60c6: $12
	rst  $38                                         ; $60c7: $ff
	rst  $28                                         ; $60c8: $ef
	rst  $38                                         ; $60c9: $ff
	rst  $38                                         ; $60ca: $ff
	rst  $38                                         ; $60cb: $ff
	rst  $38                                         ; $60cc: $ff
	cp   $d7                                         ; $60cd: $fe $d7
	ld   sp, $1111                                   ; $60cf: $31 $11 $11
	ld   de, $1111                                   ; $60d2: $11 $11 $11
	inc  d                                           ; $60d5: $14
	ld   h, e                                        ; $60d6: $63
	cpl                                              ; $60d7: $2f
	rst  $38                                         ; $60d8: $ff
	rst  $38                                         ; $60d9: $ff
	rst  $38                                         ; $60da: $ff
	rst  $38                                         ; $60db: $ff
	rst  $38                                         ; $60dc: $ff
	rst  $38                                         ; $60dd: $ff
	call c, $1182                                    ; $60de: $dc $82 $11
	ld   de, $1111                                   ; $60e1: $11 $11 $11
	ld   de, $3911                                   ; $60e4: $11 $11 $39
	ld   [hl], c                                     ; $60e7: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60e8: $cf
	rst  $38                                         ; $60e9: $ff
	rst  $38                                         ; $60ea: $ff
	rst  $38                                         ; $60eb: $ff
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	db   $fc                                         ; $60ee: $fc
	sub  a                                           ; $60ef: $97
	ld   hl, $1111                                   ; $60f0: $21 $11 $11
	ld   de, $1111                                   ; $60f3: $11 $11 $11
	ld   de, $657c                                   ; $60f6: $11 $7c $65
	rst  $38                                         ; $60f9: $ff
	rst  $38                                         ; $60fa: $ff
	rst  $38                                         ; $60fb: $ff
	rst  $38                                         ; $60fc: $ff
	rst  $38                                         ; $60fd: $ff
	rst  $38                                         ; $60fe: $ff
	rst  $30                                         ; $60ff: $f7
	ld   d, e                                        ; $6100: $53
	ld   hl, $1111                                   ; $6101: $21 $11 $11
	ld   de, $2111                                   ; $6104: $11 $11 $21
	ld   de, $989e                                   ; $6107: $11 $9e $98
	rst  $38                                         ; $610a: $ff
	rst  $38                                         ; $610b: $ff
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	rst  $38                                         ; $610e: $ff
	rst  $38                                         ; $610f: $ff
	rst  ToBoot                                         ; $6110: $c7
	ld   h, c                                        ; $6111: $61
	ld   [hl+], a                                    ; $6112: $22
	ld   de, $1111                                   ; $6113: $11 $11 $11
	ld   de, $1131                                   ; $6116: $11 $31 $11
	ld   l, l                                        ; $6119: $6d
	cp   e                                           ; $611a: $bb
	rst  $38                                         ; $611b: $ff
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	rst  $38                                         ; $611e: $ff
	rst  $38                                         ; $611f: $ff
	rst  $38                                         ; $6120: $ff
	or   l                                           ; $6121: $b5
	ld   [hl], h                                     ; $6122: $74
	ld   [hl+], a                                    ; $6123: $22
	ld   de, $1111                                   ; $6124: $11 $11 $11
	ld   de, $1112                                   ; $6127: $11 $12 $11
	add  hl, de                                      ; $612a: $19
	db   $eb                                         ; $612b: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $612c: $cf
	rst  $38                                         ; $612d: $ff
	rst  $38                                         ; $612e: $ff
	rst  $38                                         ; $612f: $ff
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	rst  $20                                         ; $6132: $e7
	ld   e, b                                        ; $6133: $58
	inc  sp                                          ; $6134: $33
	ld   de, $1111                                   ; $6135: $11 $11 $11
	ld   de, $4311                                   ; $6138: $11 $11 $43
	ld   de, $dd7c                                   ; $613b: $11 $7c $dd
	cp   $ff                                         ; $613e: $fe $ff
	rst  $38                                         ; $6140: $ff
	rst  $38                                         ; $6141: $ff
	rst  $38                                         ; $6142: $ff
	rst  $38                                         ; $6143: $ff
	sub  h                                           ; $6144: $94
	ld   d, h                                        ; $6145: $54
	ld   h, h                                        ; $6146: $64
	ld   de, $2121                                   ; $6147: $11 $21 $21
	ld   de, $9111                                   ; $614a: $11 $11 $91
	ld   de, $ec3b                                   ; $614d: $11 $3b $ec
	db   $fd                                         ; $6150: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6151: $cf
	rst  $38                                         ; $6152: $ff
	rst  $38                                         ; $6153: $ff
	rst  $38                                         ; $6154: $ff
	rst  $28                                         ; $6155: $ef
	and  e                                           ; $6156: $a3
	ld   b, e                                        ; $6157: $43
	ld   d, [hl]                                     ; $6158: $56
	ld   de, $3121                                   ; $6159: $11 $21 $31
	ld   de, $8511                                   ; $615c: $11 $11 $85
	ld   bc, $bc16                                   ; $615f: $01 $16 $bc
	cp   $9f                                         ; $6162: $fe $9f
	rst  $38                                         ; $6164: $ff
	rst  $38                                         ; $6165: $ff
	rst  $38                                         ; $6166: $ff
	adc  $f6                                         ; $6167: $ce $f6
	ld   b, e                                        ; $6169: $43
	daa                                              ; $616a: $27
	ld   sp, $2552                                   ; $616b: $31 $52 $25
	ld   de, $1611                                   ; $616e: $11 $11 $16
	ld   b, d                                        ; $6171: $42
	ld   hl, $cf49                                   ; $6172: $21 $49 $cf
	ld   a, [$ffff]                                  ; $6175: $fa $ff $ff
	rst  $38                                         ; $6178: $ff
	ld   a, [$66ce]                                  ; $6179: $fa $ce $66
	ld   b, d                                        ; $617c: $42
	ld   h, h                                        ; $617d: $64
	jr   z, jr_0e2_61c3                              ; $617e: $28 $43

jr_0e2_6180:
	ld   h, d                                        ; $6180: $62
	ld   de, $1411                                   ; $6181: $11 $11 $14
	ld   b, d                                        ; $6184: $42
	ld   de, $ff69                                   ; $6185: $11 $69 $ff
	xor  $ff                                         ; $6188: $ee $ff
	rst  $38                                         ; $618a: $ff
	rst  $38                                         ; $618b: $ff
	reti                                             ; $618c: $d9


	jp   c, $2277                                    ; $618d: $da $77 $22

	ld   d, d                                        ; $6190: $52
	ld   l, b                                        ; $6191: $68
	ld   b, a                                        ; $6192: $47
	ld   h, c                                        ; $6193: $61
	ld   hl, $1311                                   ; $6194: $21 $11 $13
	ld   b, c                                        ; $6197: $41
	inc  de                                          ; $6198: $13
	ld   e, c                                        ; $6199: $59
	rst  JumpTable                                         ; $619a: $df
	cp   $ff                                         ; $619b: $fe $ff
	rst  $38                                         ; $619d: $ff
	rst  $38                                         ; $619e: $ff
	jp   hl                                          ; $619f: $e9


	cp   c                                           ; $61a0: $b9
	ld   h, [hl]                                     ; $61a1: $66
	inc  hl                                          ; $61a2: $23
	ld   d, c                                        ; $61a3: $51
	ld   a, d                                        ; $61a4: $7a
	ld   l, c                                        ; $61a5: $69
	ld   [hl], d                                     ; $61a6: $72
	ld   hl, $1211                                   ; $61a7: $21 $11 $12
	ld   b, c                                        ; $61aa: $41
	ld   [hl+], a                                    ; $61ab: $22
	ld   c, c                                        ; $61ac: $49
	cp   a                                           ; $61ad: $bf
	rst  $38                                         ; $61ae: $ff
	rst  $38                                         ; $61af: $ff
	rst  $38                                         ; $61b0: $ff
	rst  $38                                         ; $61b1: $ff
	ld   sp, hl                                      ; $61b2: $f9
	sbc  c                                           ; $61b3: $99
	ld   d, a                                        ; $61b4: $57
	ld   b, e                                        ; $61b5: $43
	ld   h, d                                        ; $61b6: $62
	ld   e, e                                        ; $61b7: $5b
	sbc  d                                           ; $61b8: $9a
	and  h                                           ; $61b9: $a4
	ld   sp, $1111                                   ; $61ba: $31 $11 $11
	ld   b, c                                        ; $61bd: $41
	ld   [de], a                                     ; $61be: $12
	jr   z, jr_0e2_6180                              ; $61bf: $28 $bf

	rst  $38                                         ; $61c1: $ff
	rst  $38                                         ; $61c2: $ff

jr_0e2_61c3:
	rst  $38                                         ; $61c3: $ff
	rst  $38                                         ; $61c4: $ff
	db   $fc                                         ; $61c5: $fc
	ld   l, b                                        ; $61c6: $68
	ld   d, h                                        ; $61c7: $54
	ld   d, d                                        ; $61c8: $52
	ld   d, h                                        ; $61c9: $54
	ld   a, [hl-]                                    ; $61ca: $3a
	cp   d                                           ; $61cb: $ba
	reti                                             ; $61cc: $d9


	ld   h, d                                        ; $61cd: $62
	ld   de, $1211                                   ; $61ce: $11 $11 $12
	ld   de, $9a14                                   ; $61d1: $11 $14 $9a
	rst  $38                                         ; $61d4: $ff
	rst  $38                                         ; $61d5: $ff
	rst  $38                                         ; $61d6: $ff
	rst  $38                                         ; $61d7: $ff
	rst  $38                                         ; $61d8: $ff
	sub  h                                           ; $61d9: $94
	ld   h, d                                        ; $61da: $62
	inc  sp                                          ; $61db: $33
	ld   d, $43                                      ; $61dc: $16 $43
	cp   h                                           ; $61de: $bc
	rst  JumpTable                                         ; $61df: $df
	rst  ToBoot                                         ; $61e0: $c7
	ld   hl, $1111                                   ; $61e1: $21 $11 $11
	ld   de, $5a11                                   ; $61e4: $11 $11 $5a
	xor  a                                           ; $61e7: $af
	rst  $38                                         ; $61e8: $ff
	rst  $38                                         ; $61e9: $ff
	rst  $38                                         ; $61ea: $ff
	rst  $38                                         ; $61eb: $ff
	or   $23                                         ; $61ec: $f6 $23
	ld   [de], a                                     ; $61ee: $12
	ld   [hl-], a                                    ; $61ef: $32
	halt                                             ; $61f0: $76
	ld   l, [hl]                                     ; $61f1: $6e
	rst  $38                                         ; $61f2: $ff
	cp   $a3                                         ; $61f3: $fe $a3
	ld   de, $1111                                   ; $61f5: $11 $11 $11
	ld   de, $bd15                                   ; $61f8: $11 $15 $bd
	rst  $38                                         ; $61fb: $ff
	rst  $38                                         ; $61fc: $ff
	rst  $38                                         ; $61fd: $ff
	rst  $38                                         ; $61fe: $ff
	cp   $51                                         ; $61ff: $fe $51
	ld   de, $4814                                   ; $6201: $11 $14 $48
	sbc  c                                           ; $6204: $99
	rst  $38                                         ; $6205: $ff
	rst  $38                                         ; $6206: $ff
	ei                                               ; $6207: $fb
	ld   hl, $1111                                   ; $6208: $21 $11 $11
	ld   de, $7e13                                   ; $620b: $11 $13 $7e
	rst  $38                                         ; $620e: $ff
	rst  $38                                         ; $620f: $ff
	rst  $38                                         ; $6210: $ff
	rst  $38                                         ; $6211: $ff
	ld   [$11b4], a                                  ; $6212: $ea $b4 $11
	ld   de, $ce69                                   ; $6215: $11 $69 $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6218: $cf
	rst  $38                                         ; $6219: $ff
	rst  $38                                         ; $621a: $ff
	pop  bc                                          ; $621b: $c1
	ld   de, $1111                                   ; $621c: $11 $11 $11
	ld   de, $ff5d                                   ; $621f: $11 $5d $ff
	rst  $38                                         ; $6222: $ff
	rst  $38                                         ; $6223: $ff
	rst  $38                                         ; $6224: $ff
	add  a                                           ; $6225: $87
	ld   h, d                                        ; $6226: $62
	ld   b, c                                        ; $6227: $41
	ld   de, $ff4a                                   ; $6228: $11 $4a $ff
	rst  $38                                         ; $622b: $ff
	rst  $38                                         ; $622c: $ff
	rst  $38                                         ; $622d: $ff
	ld   sp, hl                                      ; $622e: $f9
	ld   de, $1111                                   ; $622f: $11 $11 $11
	ld   de, $ff9b                                   ; $6232: $11 $9b $ff
	rst  $38                                         ; $6235: $ff
	rst  $38                                         ; $6236: $ff
	db   $fc                                         ; $6237: $fc
	ld   b, h                                        ; $6238: $44
	ld   de, $4111                                   ; $6239: $11 $11 $41
	rra                                              ; $623c: $1f
	rst  $38                                         ; $623d: $ff
	rst  $38                                         ; $623e: $ff
	rst  $38                                         ; $623f: $ff
	rst  $38                                         ; $6240: $ff
	reti                                             ; $6241: $d9


	ld   d, c                                        ; $6242: $51
	ld   de, $1111                                   ; $6243: $11 $11 $11
	ld   de, $ffff                                   ; $6246: $11 $ff $ff
	rst  $38                                         ; $6249: $ff
	rst  $38                                         ; $624a: $ff
	pop  af                                          ; $624b: $f1
	ld   de, $1211                                   ; $624c: $11 $11 $12
	cp   $ef                                         ; $624f: $fe $ef
	rst  $38                                         ; $6251: $ff
	rst  $38                                         ; $6252: $ff
	rst  $30                                         ; $6253: $f7
	ld   e, c                                        ; $6254: $59
	ld   b, h                                        ; $6255: $44
	ld   de, $1131                                   ; $6256: $11 $31 $11
	ld   de, rAUD1LEN                                   ; $6259: $11 $11 $ff
	rst  $38                                         ; $625c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $625d: $cf
	rst  $38                                         ; $625e: $ff
	di                                               ; $625f: $f3
	ld   de, $7611                                   ; $6260: $11 $11 $76
	rst  $38                                         ; $6263: $ff
	rst  $28                                         ; $6264: $ef
	rst  $38                                         ; $6265: $ff
	cp   $b2                                         ; $6266: $fe $b2
	jr   z, jr_0e2_62c2                              ; $6268: $28 $58

	ld   h, l                                        ; $626a: $65
	and  h                                           ; $626b: $a4
	ld   hl, $1111                                   ; $626c: $21 $11 $11
	ld   a, a                                        ; $626f: $7f
	rst  $38                                         ; $6270: $ff
	rst  $38                                         ; $6271: $ff
	rst  $38                                         ; $6272: $ff
	rst  $38                                         ; $6273: $ff
	ld   de, $4511                                   ; $6274: $11 $11 $45
	xor  a                                           ; $6277: $af
	rst  JumpTable                                         ; $6278: $df
	rst  $38                                         ; $6279: $ff
	rst  $38                                         ; $627a: $ff
	rst  ToBoot                                         ; $627b: $c7
	jr   @-$79                                       ; $627c: $18 $85

	and  h                                           ; $627e: $a4
	adc  h                                           ; $627f: $8c
	ld   d, l                                        ; $6280: $55
	ld   de, $1a11                                   ; $6281: $11 $11 $1a
	rst  $38                                         ; $6284: $ff
	rst  $38                                         ; $6285: $ff
	rst  $38                                         ; $6286: $ff
	rst  $38                                         ; $6287: $ff
	pop  de                                          ; $6288: $d1
	ld   de, $7d17                                   ; $6289: $11 $17 $7d
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	rst  $38                                         ; $628e: $ff
	and  [hl]                                        ; $628f: $a6
	ld   sp, $6888                                   ; $6290: $31 $88 $68
	ld   e, h                                        ; $6293: $5c
	add  sp, $61                                     ; $6294: $e8 $61
	ld   de, $cf11                                   ; $6296: $11 $11 $cf
	rst  $38                                         ; $6299: $ff
	rst  $38                                         ; $629a: $ff
	rst  $38                                         ; $629b: $ff
	ld   sp, hl                                      ; $629c: $f9
	ld   de, $8811                                   ; $629d: $11 $11 $88
	rst  $38                                         ; $62a0: $ff
	rst  $38                                         ; $62a1: $ff
	rst  $38                                         ; $62a2: $ff
	ldh  a, [c]                                      ; $62a3: $f2
	ld   sp, $761a                                   ; $62a4: $31 $1a $76
	sub  a                                           ; $62a7: $97
	cp   $c6                                         ; $62a8: $fe $c6
	ld   de, $1c11                                   ; $62aa: $11 $11 $1c
	rst  $38                                         ; $62ad: $ff
	rst  $38                                         ; $62ae: $ff
	rst  $38                                         ; $62af: $ff
	rst  $38                                         ; $62b0: $ff
	ld   b, c                                        ; $62b1: $41
	ld   de, $df1a                                   ; $62b2: $11 $1a $df
	rst  $38                                         ; $62b5: $ff
	rst  $38                                         ; $62b6: $ff
	cp   $11                                         ; $62b7: $fe $11
	ld   de, $8aa9                                   ; $62b9: $11 $a9 $8a
	cp   a                                           ; $62bc: $bf
	cp   $51                                         ; $62bd: $fe $51
	ld   de, $df11                                   ; $62bf: $11 $11 $df

jr_0e2_62c2:
	rst  $38                                         ; $62c2: $ff
	rst  $38                                         ; $62c3: $ff
	rst  $38                                         ; $62c4: $ff
	pop  af                                          ; $62c5: $f1
	ld   de, $cf11                                   ; $62c6: $11 $11 $cf

Call_0e2_62c9:
	rst  $38                                         ; $62c9: $ff
	rst  $38                                         ; $62ca: $ff
	rst  $38                                         ; $62cb: $ff
	or   c                                           ; $62cc: $b1
	ld   de, $ab1b                                   ; $62cd: $11 $1b $ab
	adc  $ff                                         ; $62d0: $ce $ff
	db   $e3                                         ; $62d2: $e3
	ld   de, $1f11                                   ; $62d3: $11 $11 $1f
	rst  $38                                         ; $62d6: $ff
	rst  $38                                         ; $62d7: $ff
	rst  $38                                         ; $62d8: $ff
	rst  $38                                         ; $62d9: $ff
	ld   de, $1f11                                   ; $62da: $11 $11 $1f
	rst  $38                                         ; $62dd: $ff
	rst  $38                                         ; $62de: $ff
	rst  $38                                         ; $62df: $ff
	db   $f4                                         ; $62e0: $f4
	ld   de, $ed12                                   ; $62e1: $11 $12 $ed
	call z, $feff                                    ; $62e4: $cc $ff $fe
	ld   de, $1111                                   ; $62e7: $11 $11 $11
	rst  $38                                         ; $62ea: $ff
	rst  $38                                         ; $62eb: $ff
	rst  $38                                         ; $62ec: $ff
	db   $fd                                         ; $62ed: $fd
	pop  hl                                          ; $62ee: $e1
	ld   de, rAUD1LOW                                   ; $62ef: $11 $13 $ff
	rst  $38                                         ; $62f2: $ff
	rst  $38                                         ; $62f3: $ff
	rst  $38                                         ; $62f4: $ff
	ld   de, $4f11                                   ; $62f5: $11 $11 $4f
	db   $fd                                         ; $62f8: $fd
	rst  $28                                         ; $62f9: $ef
	cp   $a1                                         ; $62fa: $fe $a1
	ld   de, $3f11                                   ; $62fc: $11 $11 $3f
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	rst  $38                                         ; $6301: $ff
	rst  ToBoot                                         ; $6302: $c7
	ld   de, $ef11                                   ; $6303: $11 $11 $ef
	rst  $38                                         ; $6306: $ff
	rst  $38                                         ; $6307: $ff
	rst  $38                                         ; $6308: $ff
	or   c                                           ; $6309: $b1
	ld   de, $ff1d                                   ; $630a: $11 $1d $ff
	cp   $ed                                         ; $630d: $fe $ed
	push af                                          ; $630f: $f5
	ld   de, $1f11                                   ; $6310: $11 $11 $1f
	rst  $38                                         ; $6313: $ff
	rst  $38                                         ; $6314: $ff
	rst  $38                                         ; $6315: $ff
	call $1111                                       ; $6316: $cd $11 $11
	cpl                                              ; $6319: $2f
	rst  $38                                         ; $631a: $ff
	rst  $38                                         ; $631b: $ff
	rst  $38                                         ; $631c: $ff
	ldh  a, [c]                                      ; $631d: $f2
	ld   de, rAUD1HIGH                                   ; $631e: $11 $14 $ff
	cp   $ed                                         ; $6321: $fe $ed
	call c, $1111                                    ; $6323: $dc $11 $11
	ld   de, $ffff                                   ; $6326: $11 $ff $ff
	rst  $38                                         ; $6329: $ff
	ld   sp, hl                                      ; $632a: $f9
	ld   [hl], c                                     ; $632b: $71
	ld   de, $ff1f                                   ; $632c: $11 $1f $ff
	rst  $38                                         ; $632f: $ff
	rst  $38                                         ; $6330: $ff
	ld   sp, hl                                      ; $6331: $f9
	ld   de, $ef11                                   ; $6332: $11 $11 $ef
	rst  $38                                         ; $6335: $ff
	xor  $cd                                         ; $6336: $ee $cd
	ld   sp, $1111                                   ; $6338: $31 $11 $11
	rst  $38                                         ; $633b: $ff
	rst  $38                                         ; $633c: $ff
	rst  $38                                         ; $633d: $ff
	ld   sp, hl                                      ; $633e: $f9
	sub  c                                           ; $633f: $91
	ld   de, $ff1a                                   ; $6340: $11 $1a $ff
	rst  $38                                         ; $6343: $ff
	rst  $38                                         ; $6344: $ff
	db   $fd                                         ; $6345: $fd
	ld   de, $8f11                                   ; $6346: $11 $11 $8f
	rst  $38                                         ; $6349: $ff
	rst  $38                                         ; $634a: $ff
	cp   h                                           ; $634b: $bc
	add  c                                           ; $634c: $81
	ld   de, $5f11                                   ; $634d: $11 $11 $5f
	rst  $38                                         ; $6350: $ff
	db   $fd                                         ; $6351: $fd
	db   $fc                                         ; $6352: $fc
	sub  d                                           ; $6353: $92
	ld   de, $ff15                                   ; $6354: $11 $15 $ff
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	cp   $41                                         ; $6359: $fe $41
	ld   de, $ff4e                                   ; $635b: $11 $4e $ff
	rst  $28                                         ; $635e: $ef
	jp   z, $11a1                                    ; $635f: $ca $a1 $11

	ld   de, $ff1f                                   ; $6362: $11 $1f $ff
	cp   $fc                                         ; $6365: $fe $fc
	add  h                                           ; $6367: $84
	ld   de, rAUD1LOW                                   ; $6368: $11 $13 $ff
	rst  $38                                         ; $636b: $ff
	rst  $38                                         ; $636c: $ff
	db   $fd                                         ; $636d: $fd
	ld   d, c                                        ; $636e: $51
	ld   de, $ff2c                                   ; $636f: $11 $2c $ff
	rst  $38                                         ; $6372: $ff
	jp   z, $1191                                    ; $6373: $ca $91 $11

	ld   de, $ff1f                                   ; $6376: $11 $1f $ff
	db   $fd                                         ; $6379: $fd
	ei                                               ; $637a: $fb
	and  l                                           ; $637b: $a5
	ld   de, rAUD1LOW                                   ; $637c: $11 $13 $ff
	rst  $38                                         ; $637f: $ff
	rst  $38                                         ; $6380: $ff
	db   $fd                                         ; $6381: $fd
	ld   d, c                                        ; $6382: $51
	ld   de, $ff3c                                   ; $6383: $11 $3c $ff
	xor  $aa                                         ; $6386: $ee $aa
	and  c                                           ; $6388: $a1
	ld   de, $3f11                                   ; $6389: $11 $11 $3f
	rst  $38                                         ; $638c: $ff
	cp   $fa                                         ; $638d: $fe $fa
	or   d                                           ; $638f: $b2
	ld   de, $ff17                                   ; $6390: $11 $17 $ff
	rst  $38                                         ; $6393: $ff
	rst  $38                                         ; $6394: $ff
	call c, $1141                                    ; $6395: $dc $41 $11
	ld   e, h                                        ; $6398: $5c
	db   $ed                                         ; $6399: $ed
	xor  $99                                         ; $639a: $ee $99
	ld   b, c                                        ; $639c: $41
	ld   de, rAUD1LEN                                   ; $639d: $11 $11 $ff
	rst  $38                                         ; $63a0: $ff
	rst  $38                                         ; $63a1: $ff
	rst  $10                                         ; $63a2: $d7
	add  c                                           ; $63a3: $81
	ld   de, $ff3d                                   ; $63a4: $11 $3d $ff
	rst  $38                                         ; $63a7: $ff
	cp   $c8                                         ; $63a8: $fe $c8
	ld   de, $8b13                                   ; $63aa: $11 $13 $8b
	adc  $e8                                         ; $63ad: $ce $e8
	halt                                             ; $63af: $76
	ld   de, $1e11                                   ; $63b0: $11 $11 $1e
	rst  $38                                         ; $63b3: $ff
	rst  $38                                         ; $63b4: $ff
	db   $fd                                         ; $63b5: $fd
	cp   b                                           ; $63b6: $b8
	ld   de, $ff16                                   ; $63b7: $11 $16 $ff

Jump_0e2_63ba:
	rst  $38                                         ; $63ba: $ff
	rst  $28                                         ; $63bb: $ef
	ei                                               ; $63bc: $fb
	ld   [hl], d                                     ; $63bd: $72
	ld   [hl+], a                                    ; $63be: $22
	ld   a, d                                        ; $63bf: $7a
	adc  c                                           ; $63c0: $89
	cp   h                                           ; $63c1: $bc
	add  l                                           ; $63c2: $85
	ld   hl, $1611                                   ; $63c3: $21 $11 $16
	rst  $38                                         ; $63c6: $ff
	rst  $38                                         ; $63c7: $ff
	rst  $28                                         ; $63c8: $ef
	jp   z, $1411                                    ; $63c9: $ca $11 $14

	rst  $38                                         ; $63cc: $ff
	rst  $38                                         ; $63cd: $ff
	call $93fd                                       ; $63ce: $cd $fd $93
	inc  hl                                          ; $63d1: $23
	ld   a, l                                        ; $63d2: $7d
	cp   c                                           ; $63d3: $b9
	ld   [hl], l                                     ; $63d4: $75
	ld   d, h                                        ; $63d5: $54
	ld   hl, $1c11                                   ; $63d6: $21 $11 $1c
	rst  $38                                         ; $63d9: $ff
	cp   $be                                         ; $63da: $fe $be
	cp   b                                           ; $63dc: $b8
	ld   de, $ff1c                                   ; $63dd: $11 $1c $ff
	cp   $ae                                         ; $63e0: $fe $ae
	ret                                              ; $63e2: $c9


	ld   [hl], d                                     ; $63e3: $72
	rla                                              ; $63e4: $17
	xor  h                                           ; $63e5: $ac
	add  $65                                         ; $63e6: $c6 $65
	ld   sp, $1111                                   ; $63e8: $31 $11 $11
	sbc  a                                           ; $63eb: $9f
	rst  $38                                         ; $63ec: $ff
	db   $fc                                         ; $63ed: $fc
	ld   hl, sp+$71                                  ; $63ee: $f8 $71
	ld   de, $ffdf                                   ; $63f0: $11 $df $ff
	ld   a, [$95bb]                                  ; $63f3: $fa $bb $95
	ld   [de], a                                     ; $63f6: $12
	ld   a, c                                        ; $63f7: $79
	bit  2, e                                        ; $63f8: $cb $53
	ld   d, d                                        ; $63fa: $52
	ld   de, $2f11                                   ; $63fb: $11 $11 $2f
	rst  $38                                         ; $63fe: $ff
	db   $fd                                         ; $63ff: $fd
	ld   hl, sp+$74                                  ; $6400: $f8 $74
	ld   de, $ff9f                                   ; $6402: $11 $9f $ff
	ld   a, [$98dc]                                  ; $6405: $fa $dc $98
	ld   [hl-], a                                    ; $6408: $32
	ld   d, [hl]                                     ; $6409: $56
	xor  c                                           ; $640a: $a9
	ld   b, c                                        ; $640b: $41
	ld   de, $1111                                   ; $640c: $11 $11 $11
	cp   a                                           ; $640f: $bf
	rst  $38                                         ; $6410: $ff
	cp   l                                           ; $6411: $bd
	add  [hl]                                        ; $6412: $86
	or   d                                           ; $6413: $b2
	ld   d, $ff                                      ; $6414: $16 $ff
	rst  $38                                         ; $6416: $ff
	call c, $d5cb                                    ; $6417: $dc $cb $d5
	dec  h                                           ; $641a: $25
	ld   b, a                                        ; $641b: $47
	add  h                                           ; $641c: $84
	ld   de, $1111                                   ; $641d: $11 $11 $11
	rla                                              ; $6420: $17
	rst  JumpTable                                         ; $6421: $df
	rst  $38                                         ; $6422: $ff
	cp   l                                           ; $6423: $bd
	ld   h, c                                        ; $6424: $61
	ld   d, h                                        ; $6425: $54
	sbc  a                                           ; $6426: $9f
	rst  $38                                         ; $6427: $ff
	rst  $38                                         ; $6428: $ff
	db   $ec                                         ; $6429: $ec
	or   [hl]                                        ; $642a: $b6
	ld   h, h                                        ; $642b: $64
	ld   b, [hl]                                     ; $642c: $46
	ld   d, l                                        ; $642d: $55
	ld   b, e                                        ; $642e: $43
	ld   de, $1411                                   ; $642f: $11 $11 $14
	adc  l                                           ; $6432: $8d
	db   $fd                                         ; $6433: $fd
	cp   $ac                                         ; $6434: $fe $ac
	inc  [hl]                                        ; $6436: $34
	sbc  b                                           ; $6437: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6438: $cf
	rst  $38                                         ; $6439: $ff
	rst  $38                                         ; $643a: $ff
	ld   [$6324], a                                  ; $643b: $ea $24 $63
	ld   b, e                                        ; $643e: $43
	ld   de, $1111                                   ; $643f: $11 $11 $11
	ld   de, $ef7d                                   ; $6442: $11 $7d $ef
	ld   sp, hl                                      ; $6445: $f9
	adc  l                                           ; $6446: $8d
	ld   h, [hl]                                     ; $6447: $66
	ret                                              ; $6448: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6449: $cf
	rst  $38                                         ; $644a: $ff
	cp   $ca                                         ; $644b: $fe $ca
	ld   [hl], h                                     ; $644d: $74
	ld   b, c                                        ; $644e: $41
	inc  d                                           ; $644f: $14
	ld   de, $1111                                   ; $6450: $11 $11 $11
	ld   d, $7b                                      ; $6453: $16 $7b
	db   $fd                                         ; $6455: $fd
	xor  [hl]                                        ; $6456: $ae
	ret  c                                           ; $6457: $d8

	ld   a, b                                        ; $6458: $78
	cp   b                                           ; $6459: $b8
	xor  a                                           ; $645a: $af
	rst  $38                                         ; $645b: $ff
	rst  $38                                         ; $645c: $ff
	ld   l, b                                        ; $645d: $68
	ld   h, h                                        ; $645e: $64
	ld   sp, $1121                                   ; $645f: $31 $21 $11
	ld   hl, $5711                                   ; $6462: $21 $11 $57
	sbc  $aa                                         ; $6465: $de $aa
	cp   e                                           ; $6467: $bb
	xor  e                                           ; $6468: $ab
	xor  b                                           ; $6469: $a8
	sbc  h                                           ; $646a: $9c
	rst  $38                                         ; $646b: $ff
	rst  $38                                         ; $646c: $ff
	db   $eb                                         ; $646d: $eb
	ld   [hl], a                                     ; $646e: $77
	ld   d, c                                        ; $646f: $51
	inc  hl                                          ; $6470: $23
	ld   de, $1221                                   ; $6471: $11 $21 $12
	inc  h                                           ; $6474: $24
	sbc  e                                           ; $6475: $9b
	db   $fd                                         ; $6476: $fd
	adc  $a4                                         ; $6477: $ce $a4
	xor  a                                           ; $6479: $af
	daa                                              ; $647a: $27
	db   $fd                                         ; $647b: $fd
	rst  $38                                         ; $647c: $ff
	db   $eb                                         ; $647d: $eb
	sub  [hl]                                        ; $647e: $96
	sub  l                                           ; $647f: $95
	ld   [de], a                                     ; $6480: $12
	ld   sp, $1511                                   ; $6481: $31 $11 $15
	ld   d, c                                        ; $6484: $51
	ld   e, h                                        ; $6485: $5c
	xor  h                                           ; $6486: $ac
	db   $ec                                         ; $6487: $ec
	and  a                                           ; $6488: $a7
	adc  l                                           ; $6489: $8d
	and  e                                           ; $648a: $a3
	adc  [hl]                                        ; $648b: $8e
	rst  $28                                         ; $648c: $ef
	cp   $ba                                         ; $648d: $fe $ba
	ld   h, l                                        ; $648f: $65
	inc  sp                                          ; $6490: $33
	ld   [hl-], a                                    ; $6491: $32
	ld   de, $3111                                   ; $6492: $11 $11 $31
	ld   a, [de]                                     ; $6495: $1a
	cp   d                                           ; $6496: $ba

Call_0e2_6497:
	jp   c, $7ddd                                    ; $6497: $da $dd $7d

	add  c                                           ; $649a: $81
	xor  a                                           ; $649b: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $649c: $cf
	rst  $38                                         ; $649d: $ff
	xor  l                                           ; $649e: $ad
	or   [hl]                                        ; $649f: $b6
	ld   b, l                                        ; $64a0: $45
	ld   d, c                                        ; $64a1: $51
	ld   de, $4411                                   ; $64a2: $11 $11 $44
	inc  de                                          ; $64a5: $13
	sbc  l                                           ; $64a6: $9d
	rst  $30                                         ; $64a7: $f7
	xor  l                                           ; $64a8: $ad
	sbc  h                                           ; $64a9: $9c
	ret                                              ; $64aa: $c9


	ld   h, $ff                                      ; $64ab: $26 $ff
	rst  JumpTable                                         ; $64ad: $df
	call z, Call_0e2_62c9                            ; $64ae: $cc $c9 $62
	ld   b, l                                        ; $64b1: $45
	ld   hl, $2123                                   ; $64b2: $21 $23 $21
	inc  d                                           ; $64b5: $14
	ld   b, [hl]                                     ; $64b6: $46
	db   $ec                                         ; $64b7: $ec
	cp   e                                           ; $64b8: $bb
	ld   l, [hl]                                     ; $64b9: $6e
	or   $59                                         ; $64ba: $f6 $59
	ld   a, [hl]                                     ; $64bc: $7e
	cp   $bb                                         ; $64bd: $fe $bb
	xor  e                                           ; $64bf: $ab
	sub  l                                           ; $64c0: $95
	ld   d, h                                        ; $64c1: $54
	dec  [hl]                                        ; $64c2: $35
	ld   b, c                                        ; $64c3: $41
	ld   [de], a                                     ; $64c4: $12
	ld   d, d                                        ; $64c5: $52
	ld   d, $9b                                      ; $64c6: $16 $9b
	cp   c                                           ; $64c8: $b9
	db   $ec                                         ; $64c9: $ec
	xor  l                                           ; $64ca: $ad
	sub  l                                           ; $64cb: $95
	adc  [hl]                                        ; $64cc: $8e
	db   $dd                                         ; $64cd: $dd
	db   $ec                                         ; $64ce: $ec
	cp   a                                           ; $64cf: $bf
	cp   b                                           ; $64d0: $b8
	ld   b, e                                        ; $64d1: $43
	ld   b, e                                        ; $64d2: $43
	ld   sp, $6615                                   ; $64d3: $31 $15 $66
	ld   [hl-], a                                    ; $64d6: $32
	dec  h                                           ; $64d7: $25
	cp   h                                           ; $64d8: $bc
	xor  d                                           ; $64d9: $aa
	jp   z, $2afd                                    ; $64da: $ca $fd $2a

	cp   b                                           ; $64dd: $b8
	rst  $38                                         ; $64de: $ff
	sbc  l                                           ; $64df: $9d
	ret  z                                           ; $64e0: $c8

	and  l                                           ; $64e1: $a5
	ld   [hl], $33                                   ; $64e2: $36 $33
	ld   d, d                                        ; $64e4: $52
	dec  h                                           ; $64e5: $25
	ld   h, [hl]                                     ; $64e6: $66
	inc  h                                           ; $64e7: $24

jr_0e2_64e8:
	sbc  b                                           ; $64e8: $98
	halt                                             ; $64e9: $76
	sbc  a                                           ; $64ea: $9f
	sbc  h                                           ; $64eb: $9c
	push af                                          ; $64ec: $f5
	ld   e, l                                        ; $64ed: $5d
	cp   c                                           ; $64ee: $b9
	db   $ed                                         ; $64ef: $ed
	call c, Call_0e2_5587                            ; $64f0: $dc $87 $55
	sub  [hl]                                        ; $64f3: $96
	inc  h                                           ; $64f4: $24
	ld   b, e                                        ; $64f5: $43
	ld   h, a                                        ; $64f6: $67
	ld   d, d                                        ; $64f7: $52
	add  hl, de                                      ; $64f8: $19
	call nz, Call_0e2_4b8a                           ; $64f9: $c4 $8a $4b
	rst  $30                                         ; $64fc: $f7
	rra                                              ; $64fd: $1f
	sub  [hl]                                        ; $64fe: $96
	ld   a, [$7a5f]                                  ; $64ff: $fa $5f $7a
	push de                                          ; $6502: $d5
	ld   h, [hl]                                     ; $6503: $66
	daa                                              ; $6504: $27
	ld   [hl], c                                     ; $6505: $71
	ld   e, e                                        ; $6506: $5b
	ld   d, h                                        ; $6507: $54
	ld   b, d                                        ; $6508: $42
	ld   l, d                                        ; $6509: $6a
	ld   b, [hl]                                     ; $650a: $46
	xor  d                                           ; $650b: $aa
	cp   d                                           ; $650c: $ba
	db   $eb                                         ; $650d: $eb
	ld   c, h                                        ; $650e: $4c
	or   l                                           ; $650f: $b5
	db   $dd                                         ; $6510: $dd
	ld   l, b                                        ; $6511: $68
	adc  $a9                                         ; $6512: $ce $a9
	sub  e                                           ; $6514: $93
	ld   b, l                                        ; $6515: $45
	ld   h, l                                        ; $6516: $65
	inc  h                                           ; $6517: $24
	ld   h, a                                        ; $6518: $67
	bit  0, e                                        ; $6519: $cb $43
	ld   h, [hl]                                     ; $651b: $66
	ld   a, e                                        ; $651c: $7b
	sub  a                                           ; $651d: $97
	set  1, h                                        ; $651e: $cb $cc
	ld   h, $fa                                      ; $6520: $26 $fa
	adc  a                                           ; $6522: $8f
	and  l                                           ; $6523: $a5
	jp   z, $1567                                    ; $6524: $ca $67 $15

	and  l                                           ; $6527: $a5
	ld   l, b                                        ; $6528: $68
	ld   [hl], $85                                   ; $6529: $36 $85
	add  h                                           ; $652b: $84
	ld   e, d                                        ; $652c: $5a
	add  l                                           ; $652d: $85
	ld   a, a                                        ; $652e: $7f
	jp   nz, $b96e                                   ; $652f: $c2 $6e $b9

	jp   z, $ac66                                    ; $6532: $ca $66 $ac

	sbc  b                                           ; $6535: $98
	ld   [hl], l                                     ; $6536: $75
	adc  d                                           ; $6537: $8a
	ld   h, l                                        ; $6538: $65
	ld   h, a                                        ; $6539: $67
	ld   [hl], a                                     ; $653a: $77
	ld   h, h                                        ; $653b: $64
	ld   l, c                                        ; $653c: $69
	ld   h, e                                        ; $653d: $63
	ld   e, c                                        ; $653e: $59
	xor  c                                           ; $653f: $a9
	push de                                          ; $6540: $d5
	ld   e, a                                        ; $6541: $5f
	ret                                              ; $6542: $c9


	add  [hl]                                        ; $6543: $86
	ld   l, d                                        ; $6544: $6a
	rst  $10                                         ; $6545: $d7
	adc  c                                           ; $6546: $89
	ld   a, e                                        ; $6547: $7b
	and  [hl]                                        ; $6548: $a6
	add  [hl]                                        ; $6549: $86
	ld   e, e                                        ; $654a: $5b
	sub  l                                           ; $654b: $95
	ld   b, l                                        ; $654c: $45
	halt                                             ; $654d: $76
	jr   c, jr_0e2_64e8                              ; $654e: $38 $98

	ret  c                                           ; $6550: $d8

	ld   a, c                                        ; $6551: $79
	ld   e, d                                        ; $6552: $5a
	push bc                                          ; $6553: $c5
	sbc  l                                           ; $6554: $9d
	dec  [hl]                                        ; $6555: $35
	ld   a, [$cb5a]                                  ; $6556: $fa $5a $cb
	and  l                                           ; $6559: $a5
	ld   d, [hl]                                     ; $655a: $56
	ld   e, d                                        ; $655b: $5a
	sub  l                                           ; $655c: $95
	adc  c                                           ; $655d: $89
	ld   h, a                                        ; $655e: $67
	add  l                                           ; $655f: $85
	ld   a, c                                        ; $6560: $79
	sub  [hl]                                        ; $6561: $96
	ld   a, d                                        ; $6562: $7a
	sbc  b                                           ; $6563: $98
	ld   d, l                                        ; $6564: $55
	ld   a, c                                        ; $6565: $79
	cp   [hl]                                        ; $6566: $be
	sub  d                                           ; $6567: $92
	ld   a, h                                        ; $6568: $7c
	xor  e                                           ; $6569: $ab
	sub  h                                           ; $656a: $94
	ld   e, d                                        ; $656b: $5a
	reti                                             ; $656c: $d9


	ld   b, h                                        ; $656d: $44
	ld   l, e                                        ; $656e: $6b
	ret                                              ; $656f: $c9


	ld   b, l                                        ; $6570: $45
	sbc  c                                           ; $6571: $99
	adc  b                                           ; $6572: $88
	ld   h, h                                        ; $6573: $64
	xor  l                                           ; $6574: $ad
	halt                                             ; $6575: $76
	add  [hl]                                        ; $6576: $86
	xor  h                                           ; $6577: $ac
	halt                                             ; $6578: $76
	adc  d                                           ; $6579: $8a
	reti                                             ; $657a: $d9


	ld   b, l                                        ; $657b: $45
	adc  c                                           ; $657c: $89
	ret                                              ; $657d: $c9


	ld   c, b                                        ; $657e: $48
	and  a                                           ; $657f: $a7
	or   a                                           ; $6580: $b7
	ld   h, $aa                                      ; $6581: $26 $aa
	and  a                                           ; $6583: $a7
	ld   [hl], $8a                                   ; $6584: $36 $8a
	ret                                              ; $6586: $c9


	ld   [hl], a                                     ; $6587: $77
	ld   a, b                                        ; $6588: $78
	sub  [hl]                                        ; $6589: $96
	ld   l, b                                        ; $658a: $68
	ld   a, b                                        ; $658b: $78
	cp   c                                           ; $658c: $b9
	ld   a, b                                        ; $658d: $78
	xor  b                                           ; $658e: $a8
	ld   b, a                                        ; $658f: $47
	cp   d                                           ; $6590: $ba
	sbc  b                                           ; $6591: $98
	ld   d, l                                        ; $6592: $55
	ld   a, c                                        ; $6593: $79
	xor  c                                           ; $6594: $a9
	sbc  c                                           ; $6595: $99
	ld   h, [hl]                                     ; $6596: $66
	ld   a, b                                        ; $6597: $78
	and  a                                           ; $6598: $a7
	adc  d                                           ; $6599: $8a
	ld   e, b                                        ; $659a: $58
	cp   c                                           ; $659b: $b9
	sub  h                                           ; $659c: $94
	ld   e, h                                        ; $659d: $5c
	xor  d                                           ; $659e: $aa
	sub  h                                           ; $659f: $94
	ld   e, d                                        ; $65a0: $5a
	xor  d                                           ; $65a1: $aa
	sub  l                                           ; $65a2: $95
	ld   a, b                                        ; $65a3: $78
	sbc  e                                           ; $65a4: $9b
	add  [hl]                                        ; $65a5: $86
	ld   [hl], l                                     ; $65a6: $75
	sbc  e                                           ; $65a7: $9b
	adc  b                                           ; $65a8: $88

Call_0e2_65a9:
Jump_0e2_65a9:
	ld   h, a                                        ; $65a9: $67
	xor  b                                           ; $65aa: $a8
	sbc  b                                           ; $65ab: $98
	ld   a, b                                        ; $65ac: $78
	sbc  d                                           ; $65ad: $9a
	ld   a, c                                        ; $65ae: $79
	add  l                                           ; $65af: $85
	xor  d                                           ; $65b0: $aa
	ld   l, b                                        ; $65b1: $68
	sub  [hl]                                        ; $65b2: $96
	sbc  c                                           ; $65b3: $99
	ld   a, b                                        ; $65b4: $78
	ld   a, b                                        ; $65b5: $78
	sbc  c                                           ; $65b6: $99
	ld   a, c                                        ; $65b7: $79
	adc  c                                           ; $65b8: $89
	add  [hl]                                        ; $65b9: $86
	ld   l, b                                        ; $65ba: $68
	sbc  b                                           ; $65bb: $98
	add  a                                           ; $65bc: $87
	adc  d                                           ; $65bd: $8a
	adc  c                                           ; $65be: $89
	sub  l                                           ; $65bf: $95
	ld   a, c                                        ; $65c0: $79
	ld   a, b                                        ; $65c1: $78
	sub  a                                           ; $65c2: $97
	adc  e                                           ; $65c3: $8b
	add  a                                           ; $65c4: $87
	ld   [hl], a                                     ; $65c5: $77
	xor  c                                           ; $65c6: $a9
	add  a                                           ; $65c7: $87
	ld   [hl], a                                     ; $65c8: $77
	add  a                                           ; $65c9: $87
	ld   a, b                                        ; $65ca: $78
	adc  d                                           ; $65cb: $8a
	sub  a                                           ; $65cc: $97
	ld   [hl], a                                     ; $65cd: $77
	ld   a, b                                        ; $65ce: $78
	ld   [hl], a                                     ; $65cf: $77
	ld   a, b                                        ; $65d0: $78
	add  a                                           ; $65d1: $87
	adc  c                                           ; $65d2: $89
	sbc  b                                           ; $65d3: $98
	ld   [hl], a                                     ; $65d4: $77
	sbc  d                                           ; $65d5: $9a
	add  a                                           ; $65d6: $87
	adc  c                                           ; $65d7: $89
	sbc  b                                           ; $65d8: $98
	ld   [hl], a                                     ; $65d9: $77
	sbc  d                                           ; $65da: $9a
	adc  b                                           ; $65db: $88
	adc  c                                           ; $65dc: $89
	add  a                                           ; $65dd: $87
	ld   [hl], a                                     ; $65de: $77
	add  a                                           ; $65df: $87
	adc  d                                           ; $65e0: $8a
	ld   a, b                                        ; $65e1: $78
	add  [hl]                                        ; $65e2: $86
	ld   a, c                                        ; $65e3: $79
	add  a                                           ; $65e4: $87
	add  a                                           ; $65e5: $87
	sbc  c                                           ; $65e6: $99
	add  a                                           ; $65e7: $87
	ld   [hl], a                                     ; $65e8: $77
	sbc  c                                           ; $65e9: $99
	adc  b                                           ; $65ea: $88
	ld   a, b                                        ; $65eb: $78
	sbc  c                                           ; $65ec: $99
	add  a                                           ; $65ed: $87
	ld   [hl], a                                     ; $65ee: $77
	adc  d                                           ; $65ef: $8a
	ld   a, b                                        ; $65f0: $78
	add  [hl]                                        ; $65f1: $86
	adc  c                                           ; $65f2: $89
	adc  b                                           ; $65f3: $88
	add  a                                           ; $65f4: $87
	adc  b                                           ; $65f5: $88
	adc  c                                           ; $65f6: $89
	ld   a, b                                        ; $65f7: $78
	ld   a, b                                        ; $65f8: $78
	xor  b                                           ; $65f9: $a8
	adc  c                                           ; $65fa: $89
	adc  b                                           ; $65fb: $88
	adc  b                                           ; $65fc: $88
	ld   [hl], a                                     ; $65fd: $77
	sbc  b                                           ; $65fe: $98
	ld   l, b                                        ; $65ff: $68
	add  a                                           ; $6600: $87
	adc  b                                           ; $6601: $88
	ld   l, c                                        ; $6602: $69
	sub  a                                           ; $6603: $97
	sbc  b                                           ; $6604: $98
	ld   a, b                                        ; $6605: $78
	ld   a, b                                        ; $6606: $78
	adc  b                                           ; $6607: $88
	xor  b                                           ; $6608: $a8
	adc  b                                           ; $6609: $88
	ld   a, b                                        ; $660a: $78
	sbc  b                                           ; $660b: $98
	add  a                                           ; $660c: $87
	ld   a, b                                        ; $660d: $78
	ld   [hl], a                                     ; $660e: $77
	ld   a, b                                        ; $660f: $78
	adc  b                                           ; $6610: $88
	sub  a                                           ; $6611: $97
	ld   [hl], a                                     ; $6612: $77
	ld   a, b                                        ; $6613: $78
	sbc  b                                           ; $6614: $98
	ld   a, b                                        ; $6615: $78
	ld   a, b                                        ; $6616: $78
	sbc  c                                           ; $6617: $99
	ld   a, b                                        ; $6618: $78
	sbc  d                                           ; $6619: $9a
	sbc  b                                           ; $661a: $98
	halt                                             ; $661b: $76
	adc  d                                           ; $661c: $8a
	sbc  b                                           ; $661d: $98
	ld   [hl], a                                     ; $661e: $77
	adc  d                                           ; $661f: $8a
	sub  [hl]                                        ; $6620: $96
	ld   [hl], a                                     ; $6621: $77
	adc  d                                           ; $6622: $8a
	add  [hl]                                        ; $6623: $86
	halt                                             ; $6624: $76
	ld   a, c                                        ; $6625: $79
	adc  c                                           ; $6626: $89
	sub  a                                           ; $6627: $97
	sbc  c                                           ; $6628: $99
	ld   l, c                                        ; $6629: $69
	add  a                                           ; $662a: $87
	sbc  b                                           ; $662b: $98
	ld   a, b                                        ; $662c: $78
	adc  b                                           ; $662d: $88
	adc  b                                           ; $662e: $88
	ld   a, b                                        ; $662f: $78
	sbc  d                                           ; $6630: $9a
	adc  b                                           ; $6631: $88
	add  a                                           ; $6632: $87
	sbc  b                                           ; $6633: $98
	ld   [hl], a                                     ; $6634: $77
	sbc  b                                           ; $6635: $98
	adc  b                                           ; $6636: $88
	ld   [hl], a                                     ; $6637: $77
	sbc  b                                           ; $6638: $98
	adc  b                                           ; $6639: $88
	ld   [hl], a                                     ; $663a: $77
	ld   a, b                                        ; $663b: $78
	sbc  b                                           ; $663c: $98
	ld   [hl], a                                     ; $663d: $77
	ld   a, b                                        ; $663e: $78
	sbc  c                                           ; $663f: $99
	ld   a, b                                        ; $6640: $78
	sub  a                                           ; $6641: $97
	sbc  c                                           ; $6642: $99
	ld   a, b                                        ; $6643: $78
	sbc  b                                           ; $6644: $98
	adc  c                                           ; $6645: $89
	adc  b                                           ; $6646: $88
	sub  a                                           ; $6647: $97
	ld   [hl], a                                     ; $6648: $77
	adc  b                                           ; $6649: $88
	adc  c                                           ; $664a: $89
	sbc  b                                           ; $664b: $98
	ld   a, b                                        ; $664c: $78
	adc  b                                           ; $664d: $88
	sbc  c                                           ; $664e: $99
	ld   a, c                                        ; $664f: $79
	sub  a                                           ; $6650: $97
	ld   a, b                                        ; $6651: $78
	adc  c                                           ; $6652: $89
	adc  b                                           ; $6653: $88
	add  a                                           ; $6654: $87
	adc  b                                           ; $6655: $88
	adc  b                                           ; $6656: $88
	adc  b                                           ; $6657: $88
	sbc  c                                           ; $6658: $99
	ld   [hl], a                                     ; $6659: $77
	ld   a, b                                        ; $665a: $78
	sbc  b                                           ; $665b: $98
	add  a                                           ; $665c: $87
	adc  c                                           ; $665d: $89
	sub  a                                           ; $665e: $97
	ld   [hl], a                                     ; $665f: $77
	adc  b                                           ; $6660: $88
	adc  c                                           ; $6661: $89
	ld   [hl], a                                     ; $6662: $77
	sbc  b                                           ; $6663: $98
	adc  b                                           ; $6664: $88
	ld   a, b                                        ; $6665: $78
	adc  b                                           ; $6666: $88
	adc  b                                           ; $6667: $88
	adc  c                                           ; $6668: $89
	sub  a                                           ; $6669: $97
	ld   [hl], a                                     ; $666a: $77
	sbc  c                                           ; $666b: $99
	sub  a                                           ; $666c: $97
	ld   [hl], a                                     ; $666d: $77
	adc  c                                           ; $666e: $89
	sbc  b                                           ; $666f: $98
	ld   [hl], a                                     ; $6670: $77
	ld   a, b                                        ; $6671: $78
	adc  b                                           ; $6672: $88
	sbc  b                                           ; $6673: $98
	add  a                                           ; $6674: $87
	ld   a, b                                        ; $6675: $78
	add  a                                           ; $6676: $87
	adc  b                                           ; $6677: $88
	adc  b                                           ; $6678: $88
	sbc  c                                           ; $6679: $99
	ld   [hl], a                                     ; $667a: $77
	ld   a, b                                        ; $667b: $78
	adc  c                                           ; $667c: $89
	adc  c                                           ; $667d: $89
	add  a                                           ; $667e: $87
	ld   a, c                                        ; $667f: $79
	adc  b                                           ; $6680: $88
	adc  b                                           ; $6681: $88
	adc  c                                           ; $6682: $89
	adc  b                                           ; $6683: $88
	ld   a, b                                        ; $6684: $78
	adc  b                                           ; $6685: $88
	adc  b                                           ; $6686: $88

Call_0e2_6687:
	adc  b                                           ; $6687: $88
	adc  b                                           ; $6688: $88
	adc  b                                           ; $6689: $88
	ld   [hl], a                                     ; $668a: $77
	ld   a, b                                        ; $668b: $78
	sbc  b                                           ; $668c: $98
	sbc  b                                           ; $668d: $98
	adc  b                                           ; $668e: $88
	add  a                                           ; $668f: $87
	ld   a, b                                        ; $6690: $78
	adc  b                                           ; $6691: $88
	adc  b                                           ; $6692: $88
	adc  b                                           ; $6693: $88
	adc  b                                           ; $6694: $88
	adc  b                                           ; $6695: $88
	adc  b                                           ; $6696: $88
	adc  c                                           ; $6697: $89
	adc  b                                           ; $6698: $88
	sbc  b                                           ; $6699: $98
	adc  b                                           ; $669a: $88
	ld   a, b                                        ; $669b: $78
	adc  b                                           ; $669c: $88
	adc  b                                           ; $669d: $88
	adc  c                                           ; $669e: $89
	add  a                                           ; $669f: $87
	adc  b                                           ; $66a0: $88
	adc  c                                           ; $66a1: $89
	ld   a, b                                        ; $66a2: $78
	adc  c                                           ; $66a3: $89
	adc  b                                           ; $66a4: $88
	ld   a, b                                        ; $66a5: $78
	adc  b                                           ; $66a6: $88
	sbc  b                                           ; $66a7: $98
	adc  b                                           ; $66a8: $88
	adc  c                                           ; $66a9: $89
	adc  b                                           ; $66aa: $88
	add  a                                           ; $66ab: $87
	adc  b                                           ; $66ac: $88
	adc  b                                           ; $66ad: $88
	adc  b                                           ; $66ae: $88
	adc  b                                           ; $66af: $88
	add  a                                           ; $66b0: $87
	ld   a, b                                        ; $66b1: $78
	adc  b                                           ; $66b2: $88
	sbc  c                                           ; $66b3: $99
	adc  b                                           ; $66b4: $88
	adc  b                                           ; $66b5: $88
	adc  b                                           ; $66b6: $88
	adc  b                                           ; $66b7: $88
	sbc  c                                           ; $66b8: $99
	adc  b                                           ; $66b9: $88
	adc  b                                           ; $66ba: $88
	adc  b                                           ; $66bb: $88
	adc  b                                           ; $66bc: $88
	adc  b                                           ; $66bd: $88
	adc  c                                           ; $66be: $89
	adc  b                                           ; $66bf: $88
	adc  b                                           ; $66c0: $88
	adc  b                                           ; $66c1: $88
	adc  b                                           ; $66c2: $88
	adc  b                                           ; $66c3: $88
	sbc  b                                           ; $66c4: $98
	adc  b                                           ; $66c5: $88
	adc  b                                           ; $66c6: $88
	adc  b                                           ; $66c7: $88
	adc  b                                           ; $66c8: $88
	adc  b                                           ; $66c9: $88
	adc  b                                           ; $66ca: $88
	sbc  b                                           ; $66cb: $98
	adc  b                                           ; $66cc: $88
	ld   a, b                                        ; $66cd: $78
	ld   a, b                                        ; $66ce: $78
	adc  b                                           ; $66cf: $88
	adc  b                                           ; $66d0: $88
	adc  b                                           ; $66d1: $88
	add  a                                           ; $66d2: $87
	ld   a, b                                        ; $66d3: $78
	adc  b                                           ; $66d4: $88
	adc  b                                           ; $66d5: $88
	adc  b                                           ; $66d6: $88
	adc  b                                           ; $66d7: $88
	adc  c                                           ; $66d8: $89
	adc  c                                           ; $66d9: $89
	sbc  b                                           ; $66da: $98
	adc  b                                           ; $66db: $88
	adc  b                                           ; $66dc: $88
	adc  b                                           ; $66dd: $88
	adc  b                                           ; $66de: $88

Call_0e2_66df:
	adc  c                                           ; $66df: $89
	adc  b                                           ; $66e0: $88
	add  a                                           ; $66e1: $87
	ld   a, b                                        ; $66e2: $78
	adc  b                                           ; $66e3: $88
	adc  b                                           ; $66e4: $88
	adc  b                                           ; $66e5: $88
	adc  b                                           ; $66e6: $88
	adc  b                                           ; $66e7: $88
	add  a                                           ; $66e8: $87
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
	adc  c                                           ; $6701: $89
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
	add  c                                           ; $6740: $81
	ld   de, $1111                                   ; $6741: $11 $11 $11
	ld   de, $1111                                   ; $6744: $11 $11 $11
	ld   de, $1111                                   ; $6747: $11 $11 $11
	ld   de, $1111                                   ; $674a: $11 $11 $11
	ld   de, $1111                                   ; $674d: $11 $11 $11
	ld   de, $1111                                   ; $6750: $11 $11 $11
	ld   de, $1111                                   ; $6753: $11 $11 $11
	ld   de, $1111                                   ; $6756: $11 $11 $11
	ld   de, $4800                                   ; $6759: $11 $00 $48
	ld   de, $1111                                   ; $675c: $11 $11 $11
	ld   de, $1111                                   ; $675f: $11 $11 $11
	ld   de, $1111                                   ; $6762: $11 $11 $11
	ld   de, $5413                                   ; $6765: $11 $13 $54
	ld   d, h                                        ; $6768: $54
	ld   d, h                                        ; $6769: $54
	ld   b, c                                        ; $676a: $41
	rra                                              ; $676b: $1f
	rst  $38                                         ; $676c: $ff
	pop  af                                          ; $676d: $f1
	ld   de, $1311                                   ; $676e: $11 $11 $13
	pop  hl                                          ; $6771: $e1
	ld   de, $dd1c                                   ; $6772: $11 $1c $dd
	call z, $c1dd                                    ; $6775: $cc $dd $c1
	ld   de, $1111                                   ; $6778: $11 $11 $11
	ld   de, $1111                                   ; $677b: $11 $11 $11
	ld   de, $1111                                   ; $677e: $11 $11 $11
	ld   de, $1111                                   ; $6781: $11 $11 $11
	ld   de, $5411                                   ; $6784: $11 $11 $54
	ld   b, h                                        ; $6787: $44
	db   $d3                                         ; $6788: $d3
	ld   de, $5454                                   ; $6789: $11 $54 $54
	ld   h, a                                        ; $678c: $67
	ld   [hl], d                                     ; $678d: $72
	ld   de, $1111                                   ; $678e: $11 $11 $11
	ld   de, $1112                                   ; $6791: $11 $12 $11
	ld   [de], a                                     ; $6794: $12
	ld   de, $1111                                   ; $6795: $11 $11 $11
	ld   h, [hl]                                     ; $6798: $66
	halt                                             ; $6799: $76
	jp   $8811                                       ; $679a: $c3 $11 $88


	sbc  b                                           ; $679d: $98
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

Jump_0e2_67c7:
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
	ld   a, b                                        ; $67d2: $78
	adc  b                                           ; $67d3: $88
	adc  b                                           ; $67d4: $88
	adc  b                                           ; $67d5: $88
	adc  b                                           ; $67d6: $88
	adc  b                                           ; $67d7: $88
	adc  b                                           ; $67d8: $88
	ld   a, b                                        ; $67d9: $78
	adc  b                                           ; $67da: $88
	adc  b                                           ; $67db: $88
	adc  b                                           ; $67dc: $88
	adc  b                                           ; $67dd: $88
	add  a                                           ; $67de: $87
	adc  b                                           ; $67df: $88
	adc  c                                           ; $67e0: $89
	ld   a, b                                        ; $67e1: $78
	adc  b                                           ; $67e2: $88
	add  a                                           ; $67e3: $87
	adc  c                                           ; $67e4: $89
	adc  b                                           ; $67e5: $88
	adc  b                                           ; $67e6: $88
	ld   a, b                                        ; $67e7: $78
	adc  b                                           ; $67e8: $88
	adc  b                                           ; $67e9: $88
	add  a                                           ; $67ea: $87
	adc  b                                           ; $67eb: $88
	ld   a, b                                        ; $67ec: $78
	adc  b                                           ; $67ed: $88
	sub  a                                           ; $67ee: $97
	adc  c                                           ; $67ef: $89
	ld   a, c                                        ; $67f0: $79
	ld   a, b                                        ; $67f1: $78
	sbc  b                                           ; $67f2: $98
	adc  b                                           ; $67f3: $88
	sbc  b                                           ; $67f4: $98
	adc  b                                           ; $67f5: $88
	adc  b                                           ; $67f6: $88
	adc  b                                           ; $67f7: $88
	adc  b                                           ; $67f8: $88
	adc  b                                           ; $67f9: $88
	adc  b                                           ; $67fa: $88
	adc  b                                           ; $67fb: $88
	sbc  c                                           ; $67fc: $99
	ld   a, b                                        ; $67fd: $78
	add  a                                           ; $67fe: $87
	add  a                                           ; $67ff: $87
	adc  b                                           ; $6800: $88
	ld   a, b                                        ; $6801: $78
	ld   a, b                                        ; $6802: $78
	sub  a                                           ; $6803: $97
	sbc  b                                           ; $6804: $98
	sub  a                                           ; $6805: $97
	adc  b                                           ; $6806: $88
	ld   a, c                                        ; $6807: $79
	ld   a, b                                        ; $6808: $78
	sub  a                                           ; $6809: $97
	sbc  b                                           ; $680a: $98
	adc  b                                           ; $680b: $88
	ld   a, b                                        ; $680c: $78
	ld   a, b                                        ; $680d: $78
	sub  a                                           ; $680e: $97
	add  a                                           ; $680f: $87
	sbc  b                                           ; $6810: $98
	adc  c                                           ; $6811: $89
	ld   [hl], a                                     ; $6812: $77
	adc  b                                           ; $6813: $88
	adc  b                                           ; $6814: $88
	adc  b                                           ; $6815: $88
	adc  b                                           ; $6816: $88
	ld   a, b                                        ; $6817: $78
	sub  a                                           ; $6818: $97
	adc  b                                           ; $6819: $88
	sbc  b                                           ; $681a: $98
	adc  b                                           ; $681b: $88
	adc  b                                           ; $681c: $88
	adc  b                                           ; $681d: $88
	ld   a, c                                        ; $681e: $79
	add  a                                           ; $681f: $87
	adc  b                                           ; $6820: $88
	ld   a, c                                        ; $6821: $79
	ld   a, b                                        ; $6822: $78
	adc  b                                           ; $6823: $88
	adc  b                                           ; $6824: $88
	ld   a, b                                        ; $6825: $78
	adc  b                                           ; $6826: $88
	add  a                                           ; $6827: $87
	adc  b                                           ; $6828: $88
	adc  b                                           ; $6829: $88
	adc  b                                           ; $682a: $88
	adc  b                                           ; $682b: $88
	adc  b                                           ; $682c: $88
	adc  b                                           ; $682d: $88
	sbc  b                                           ; $682e: $98
	adc  b                                           ; $682f: $88
	ld   a, b                                        ; $6830: $78
	add  a                                           ; $6831: $87
	add  a                                           ; $6832: $87
	adc  b                                           ; $6833: $88
	ld   a, c                                        ; $6834: $79
	add  a                                           ; $6835: $87
	sbc  b                                           ; $6836: $98
	ld   a, c                                        ; $6837: $79
	adc  b                                           ; $6838: $88
	sbc  b                                           ; $6839: $98
	adc  b                                           ; $683a: $88
	add  a                                           ; $683b: $87
	sub  a                                           ; $683c: $97
	adc  b                                           ; $683d: $88
	ld   a, b                                        ; $683e: $78
	adc  b                                           ; $683f: $88
	ld   a, b                                        ; $6840: $78
	adc  c                                           ; $6841: $89
	add  a                                           ; $6842: $87
	adc  b                                           ; $6843: $88
	adc  b                                           ; $6844: $88
	ld   a, b                                        ; $6845: $78
	add  a                                           ; $6846: $87
	add  a                                           ; $6847: $87
	sbc  b                                           ; $6848: $98
	ld   a, c                                        ; $6849: $79
	adc  b                                           ; $684a: $88
	ld   a, b                                        ; $684b: $78
	ld   a, b                                        ; $684c: $78
	ld   a, b                                        ; $684d: $78
	sub  a                                           ; $684e: $97
	sbc  c                                           ; $684f: $99
	ld   a, b                                        ; $6850: $78
	ld   a, b                                        ; $6851: $78
	adc  b                                           ; $6852: $88
	adc  b                                           ; $6853: $88
	sub  a                                           ; $6854: $97
	add  a                                           ; $6855: $87
	adc  b                                           ; $6856: $88
	ld   a, c                                        ; $6857: $79
	adc  b                                           ; $6858: $88
	adc  b                                           ; $6859: $88
	sub  a                                           ; $685a: $97
	adc  b                                           ; $685b: $88
	adc  b                                           ; $685c: $88
	ld   a, b                                        ; $685d: $78
	adc  c                                           ; $685e: $89
	ld   a, b                                        ; $685f: $78
	sub  a                                           ; $6860: $97
	sbc  b                                           ; $6861: $98
	adc  b                                           ; $6862: $88
	adc  b                                           ; $6863: $88
	sub  a                                           ; $6864: $97
	sub  a                                           ; $6865: $97
	adc  c                                           ; $6866: $89
	ld   a, b                                        ; $6867: $78
	ld   a, b                                        ; $6868: $78
	sbc  b                                           ; $6869: $98
	ld   a, b                                        ; $686a: $78
	ld   a, c                                        ; $686b: $79
	add  a                                           ; $686c: $87
	adc  b                                           ; $686d: $88
	add  a                                           ; $686e: $87
	adc  b                                           ; $686f: $88
	adc  b                                           ; $6870: $88
	adc  b                                           ; $6871: $88
	adc  c                                           ; $6872: $89
	sbc  b                                           ; $6873: $98
	sbc  c                                           ; $6874: $99
	xor  b                                           ; $6875: $a8
	ld   a, c                                        ; $6876: $79
	ld   a, b                                        ; $6877: $78
	ld   [hl], a                                     ; $6878: $77
	adc  b                                           ; $6879: $88
	ld   a, b                                        ; $687a: $78
	add  a                                           ; $687b: $87
	adc  b                                           ; $687c: $88
	adc  b                                           ; $687d: $88
	ld   a, b                                        ; $687e: $78
	sbc  b                                           ; $687f: $98
	ld   a, b                                        ; $6880: $78
	ld   a, c                                        ; $6881: $79
	adc  b                                           ; $6882: $88
	sub  a                                           ; $6883: $97
	ld   a, b                                        ; $6884: $78
	adc  c                                           ; $6885: $89
	ld   a, b                                        ; $6886: $78
	sbc  b                                           ; $6887: $98
	adc  b                                           ; $6888: $88
	adc  b                                           ; $6889: $88
	add  a                                           ; $688a: $87
	sbc  b                                           ; $688b: $98
	ld   l, c                                        ; $688c: $69
	ld   a, c                                        ; $688d: $79
	ld   [hl], a                                     ; $688e: $77
	adc  b                                           ; $688f: $88
	sub  a                                           ; $6890: $97
	sbc  b                                           ; $6891: $98
	add  a                                           ; $6892: $87
	sbc  b                                           ; $6893: $98
	adc  b                                           ; $6894: $88
	adc  b                                           ; $6895: $88
	ld   a, c                                        ; $6896: $79
	ld   a, c                                        ; $6897: $79
	adc  d                                           ; $6898: $8a
	ld   a, e                                        ; $6899: $7b
	sub  l                                           ; $689a: $95
	add  $79                                         ; $689b: $c6 $79
	ld   a, d                                        ; $689d: $7a
	ld   a, b                                        ; $689e: $78
	ld   [hl], a                                     ; $689f: $77
	add  a                                           ; $68a0: $87
	ld   [hl], a                                     ; $68a1: $77
	adc  c                                           ; $68a2: $89
	sub  [hl]                                        ; $68a3: $96
	adc  b                                           ; $68a4: $88
	ld   a, d                                        ; $68a5: $7a
	ld   a, b                                        ; $68a6: $78
	sub  a                                           ; $68a7: $97
	sub  a                                           ; $68a8: $97
	sub  a                                           ; $68a9: $97
	ld   a, b                                        ; $68aa: $78
	ld   l, d                                        ; $68ab: $6a
	adc  b                                           ; $68ac: $88
	ld   [hl], l                                     ; $68ad: $75
	sbc  c                                           ; $68ae: $99
	ld   [hl], a                                     ; $68af: $77
	adc  b                                           ; $68b0: $88
	adc  c                                           ; $68b1: $89
	ld   l, b                                        ; $68b2: $68
	sbc  b                                           ; $68b3: $98
	and  l                                           ; $68b4: $a5
	ld   l, b                                        ; $68b5: $68
	ld   a, c                                        ; $68b6: $79
	adc  b                                           ; $68b7: $88
	ld   [hl], a                                     ; $68b8: $77
	xor  b                                           ; $68b9: $a8
	ld   [hl], l                                     ; $68ba: $75
	adc  d                                           ; $68bb: $8a
	adc  b                                           ; $68bc: $88
	ld   a, c                                        ; $68bd: $79
	add  a                                           ; $68be: $87
	xor  b                                           ; $68bf: $a8
	ld   d, a                                        ; $68c0: $57
	sbc  b                                           ; $68c1: $98
	or   a                                           ; $68c2: $b7
	ld   h, a                                        ; $68c3: $67
	sbc  b                                           ; $68c4: $98
	add  a                                           ; $68c5: $87
	ld   a, c                                        ; $68c6: $79
	ld   a, b                                        ; $68c7: $78
	sub  [hl]                                        ; $68c8: $96
	sub  a                                           ; $68c9: $97
	adc  b                                           ; $68ca: $88
	add  a                                           ; $68cb: $87
	adc  c                                           ; $68cc: $89
	ld   l, c                                        ; $68cd: $69
	ld   [hl], a                                     ; $68ce: $77
	add  [hl]                                        ; $68cf: $86
	sub  a                                           ; $68d0: $97
	ld   a, c                                        ; $68d1: $79
	ld   l, c                                        ; $68d2: $69
	ld   l, c                                        ; $68d3: $69
	sub  a                                           ; $68d4: $97
	add  a                                           ; $68d5: $87
	sub  a                                           ; $68d6: $97
	sub  a                                           ; $68d7: $97
	sbc  b                                           ; $68d8: $98
	ld   l, c                                        ; $68d9: $69
	ld   a, b                                        ; $68da: $78
	adc  d                                           ; $68db: $8a
	adc  c                                           ; $68dc: $89
	add  [hl]                                        ; $68dd: $86
	add  a                                           ; $68de: $87
	ld   a, b                                        ; $68df: $78
	ld   [hl], a                                     ; $68e0: $77
	adc  b                                           ; $68e1: $88
	adc  b                                           ; $68e2: $88
	sbc  c                                           ; $68e3: $99
	sub  a                                           ; $68e4: $97
	sbc  b                                           ; $68e5: $98
	ld   a, c                                        ; $68e6: $79
	ld   l, c                                        ; $68e7: $69
	ld   a, b                                        ; $68e8: $78
	sub  a                                           ; $68e9: $97
	adc  b                                           ; $68ea: $88
	ld   [hl], a                                     ; $68eb: $77
	ld   a, d                                        ; $68ec: $7a
	add  a                                           ; $68ed: $87
	sub  [hl]                                        ; $68ee: $96
	sub  a                                           ; $68ef: $97
	ld   a, c                                        ; $68f0: $79
	adc  c                                           ; $68f1: $89
	sbc  d                                           ; $68f2: $9a
	ld   h, a                                        ; $68f3: $67
	add  a                                           ; $68f4: $87
	sbc  c                                           ; $68f5: $99
	ld   [hl], a                                     ; $68f6: $77
	adc  b                                           ; $68f7: $88
	sbc  b                                           ; $68f8: $98
	ld   [hl], a                                     ; $68f9: $77
	adc  c                                           ; $68fa: $89
	and  a                                           ; $68fb: $a7
	sub  l                                           ; $68fc: $95
	ld   a, d                                        ; $68fd: $7a
	sbc  c                                           ; $68fe: $99
	add  hl, sp                                      ; $68ff: $39
	ld   a, b                                        ; $6900: $78
	cp   b                                           ; $6901: $b8
	halt                                             ; $6902: $76
	sub  a                                           ; $6903: $97
	add  [hl]                                        ; $6904: $86
	ld   d, a                                        ; $6905: $57
	ld   [hl], a                                     ; $6906: $77
	ld   d, h                                        ; $6907: $54
	ld   l, b                                        ; $6908: $68
	ld   a, b                                        ; $6909: $78
	halt                                             ; $690a: $76
	ret                                              ; $690b: $c9


	add  a                                           ; $690c: $87
	ld   l, c                                        ; $690d: $69
	xor  c                                           ; $690e: $a9
	ld   d, [hl]                                     ; $690f: $56
	adc  c                                           ; $6910: $89
	or   a                                           ; $6911: $b7
	xor  e                                           ; $6912: $ab
	cp   l                                           ; $6913: $bd
	xor  e                                           ; $6914: $ab
	call z, $a8ca                                    ; $6915: $cc $ca $a8
	sbc  d                                           ; $6918: $9a
	sbc  b                                           ; $6919: $98
	sub  a                                           ; $691a: $97
	ld   b, [hl]                                     ; $691b: $46
	ld   b, h                                        ; $691c: $44
	ld   b, d                                        ; $691d: $42
	ld   sp, $2123                                   ; $691e: $31 $23 $21
	inc  de                                          ; $6921: $13
	inc  [hl]                                        ; $6922: $34
	inc  h                                           ; $6923: $24
	ld   b, l                                        ; $6924: $45
	sbc  e                                           ; $6925: $9b
	call z, $ffff                                    ; $6926: $cc $ff $ff
	rst  $38                                         ; $6929: $ff
	rst  $38                                         ; $692a: $ff
	rst  $38                                         ; $692b: $ff
	db   $fd                                         ; $692c: $fd
	db   $fc                                         ; $692d: $fc
	call $3378                                       ; $692e: $cd $78 $33
	ld   de, $1111                                   ; $6931: $11 $11 $11
	ld   de, $1111                                   ; $6934: $11 $11 $11
	ld   [de], a                                     ; $6937: $12
	inc  d                                           ; $6938: $14
	ld   e, d                                        ; $6939: $5a
	rst  $28                                         ; $693a: $ef
	rst  $38                                         ; $693b: $ff
	rst  $38                                         ; $693c: $ff
	rst  $38                                         ; $693d: $ff
	rst  $38                                         ; $693e: $ff
	rst  $38                                         ; $693f: $ff
	rst  $38                                         ; $6940: $ff
	rst  $38                                         ; $6941: $ff
	jp   hl                                          ; $6942: $e9


	jp   c, $1183                                    ; $6943: $da $83 $11

	ld   de, $1111                                   ; $6946: $11 $11 $11
	ld   de, $1111                                   ; $6949: $11 $11 $11

Jump_0e2_694c:
	inc  d                                           ; $694c: $14
	cp   a                                           ; $694d: $bf
	rst  $38                                         ; $694e: $ff
	rst  $38                                         ; $694f: $ff
	rst  $38                                         ; $6950: $ff

jr_0e2_6951:
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	rst  $38                                         ; $6953: $ff
	cp   $ff                                         ; $6954: $fe $ff
	push bc                                          ; $6956: $c5
	ld   de, $1111                                   ; $6957: $11 $11 $11
	ld   de, $1111                                   ; $695a: $11 $11 $11
	ld   de, $7a14                                   ; $695d: $11 $14 $7a
	rst  $38                                         ; $6960: $ff
	rst  $38                                         ; $6961: $ff
	rst  $38                                         ; $6962: $ff
	rst  $38                                         ; $6963: $ff
	rst  $38                                         ; $6964: $ff
	rst  $38                                         ; $6965: $ff
	rst  $38                                         ; $6966: $ff
	call nz, $1145                                   ; $6967: $c4 $45 $11
	ld   de, $1111                                   ; $696a: $11 $11 $11
	ld   de, $1111                                   ; $696d: $11 $11 $11
	jr   jr_0e2_6951                                 ; $6970: $18 $df

	rst  $38                                         ; $6972: $ff
	rst  $38                                         ; $6973: $ff
	rst  $38                                         ; $6974: $ff
	rst  $38                                         ; $6975: $ff
	rst  $38                                         ; $6976: $ff
	db   $fc                                         ; $6977: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6978: $cf
	ld   [hl], c                                     ; $6979: $71
	ld   de, $1111                                   ; $697a: $11 $11 $11
	ld   de, $1111                                   ; $697d: $11 $11 $11
	ld   de, $bf13                                   ; $6980: $11 $13 $bf
	rst  $38                                         ; $6983: $ff
	rst  $38                                         ; $6984: $ff
	rst  $38                                         ; $6985: $ff
	rst  $38                                         ; $6986: $ff
	rst  $38                                         ; $6987: $ff
	rst  $38                                         ; $6988: $ff
	ld   [hl], e                                     ; $6989: $73
	and  e                                           ; $698a: $a3
	ld   de, $1111                                   ; $698b: $11 $11 $11
	ld   de, $1111                                   ; $698e: $11 $11 $11
	ld   de, $9f18                                   ; $6991: $11 $18 $9f
	rst  $38                                         ; $6994: $ff
	rst  $38                                         ; $6995: $ff
	rst  $38                                         ; $6996: $ff
	rst  $38                                         ; $6997: $ff
	rst  $38                                         ; $6998: $ff
	rst  $38                                         ; $6999: $ff
	pop  de                                          ; $699a: $d1
	ld   [de], a                                     ; $699b: $12
	ld   de, $1111                                   ; $699c: $11 $11 $11
	ld   de, $1111                                   ; $699f: $11 $11 $11
	ld   de, $df1d                                   ; $69a2: $11 $1d $df
	rst  $38                                         ; $69a5: $ff
	rst  $38                                         ; $69a6: $ff
	rst  $38                                         ; $69a7: $ff
	rst  $38                                         ; $69a8: $ff

Call_0e2_69a9:
	rst  $38                                         ; $69a9: $ff
	rst  $38                                         ; $69aa: $ff
	pop  af                                          ; $69ab: $f1
	ld   de, $1111                                   ; $69ac: $11 $11 $11
	ld   de, $1111                                   ; $69af: $11 $11 $11
	ld   de, $5f11                                   ; $69b2: $11 $11 $5f
	rst  $38                                         ; $69b5: $ff
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	rst  $38                                         ; $69bb: $ff
	sub  c                                           ; $69bc: $91
	ld   de, $1111                                   ; $69bd: $11 $11 $11
	ld   de, $1111                                   ; $69c0: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $69c3: $11 $11 $ff
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	rst  $38                                         ; $69cb: $ff
	add  sp, $11                                     ; $69cc: $e8 $11
	ld   de, $1111                                   ; $69ce: $11 $11 $11
	ld   de, $1111                                   ; $69d1: $11 $11 $11
	ld   de, $ff1f                                   ; $69d4: $11 $1f $ff
	rst  $38                                         ; $69d7: $ff
	rst  $38                                         ; $69d8: $ff
	rst  $38                                         ; $69d9: $ff
	rst  $38                                         ; $69da: $ff
	rst  $38                                         ; $69db: $ff
	rst  $38                                         ; $69dc: $ff
	ld   d, c                                        ; $69dd: $51
	ld   de, $1111                                   ; $69de: $11 $11 $11
	ld   de, $1111                                   ; $69e1: $11 $11 $11
	ld   hl, rAUD1LEN                                   ; $69e4: $21 $11 $ff
	rst  $38                                         ; $69e7: $ff
	rst  $38                                         ; $69e8: $ff
	rst  $38                                         ; $69e9: $ff
	rst  $38                                         ; $69ea: $ff
	rst  $38                                         ; $69eb: $ff
	rst  $38                                         ; $69ec: $ff
	or   h                                           ; $69ed: $b4
	ld   de, $1111                                   ; $69ee: $11 $11 $11
	ld   de, $1111                                   ; $69f1: $11 $11 $11
	ld   de, $1f11                                   ; $69f4: $11 $11 $1f
	rst  $38                                         ; $69f7: $ff
	rst  $38                                         ; $69f8: $ff
	rst  $38                                         ; $69f9: $ff
	rst  $38                                         ; $69fa: $ff
	rst  $38                                         ; $69fb: $ff
	rst  $38                                         ; $69fc: $ff
	db   $fc                                         ; $69fd: $fc
	ld   sp, $1111                                   ; $69fe: $31 $11 $11
	ld   de, $1111                                   ; $6a01: $11 $11 $11
	ld   de, $1511                                   ; $6a04: $11 $11 $15
	rst  $38                                         ; $6a07: $ff
	rst  $38                                         ; $6a08: $ff
	rst  $38                                         ; $6a09: $ff
	rst  $38                                         ; $6a0a: $ff
	rst  $38                                         ; $6a0b: $ff
	rst  $38                                         ; $6a0c: $ff
	rst  $38                                         ; $6a0d: $ff
	ld   d, c                                        ; $6a0e: $51
	ld   de, $1111                                   ; $6a0f: $11 $11 $11
	ld   de, $1111                                   ; $6a12: $11 $11 $11
	ld   de, $9f11                                   ; $6a15: $11 $11 $9f
	rst  $38                                         ; $6a18: $ff
	rst  $38                                         ; $6a19: $ff
	rst  $38                                         ; $6a1a: $ff
	rst  $38                                         ; $6a1b: $ff
	rst  $38                                         ; $6a1c: $ff
	rst  $38                                         ; $6a1d: $ff
	db   $f4                                         ; $6a1e: $f4
	ld   de, $1111                                   ; $6a1f: $11 $11 $11
	ld   de, $1111                                   ; $6a22: $11 $11 $11
	ld   de, $1c11                                   ; $6a25: $11 $11 $1c
	rst  $38                                         ; $6a28: $ff
	rst  $38                                         ; $6a29: $ff
	rst  $38                                         ; $6a2a: $ff
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	rst  $38                                         ; $6a2d: $ff
	cp   $11                                         ; $6a2e: $fe $11
	ld   de, $1111                                   ; $6a30: $11 $11 $11
	ld   de, $1111                                   ; $6a33: $11 $11 $11
	ld   [hl], c                                     ; $6a36: $71
	ld   [de], a                                     ; $6a37: $12
	rst  $38                                         ; $6a38: $ff
	rst  $38                                         ; $6a39: $ff
	rst  $38                                         ; $6a3a: $ff
	rst  $38                                         ; $6a3b: $ff
	rst  $38                                         ; $6a3c: $ff
	rst  $38                                         ; $6a3d: $ff
	rst  $38                                         ; $6a3e: $ff
	pop  de                                          ; $6a3f: $d1
	ld   de, $1111                                   ; $6a40: $11 $11 $11
	ld   de, $1111                                   ; $6a43: $11 $11 $11
	inc  de                                          ; $6a46: $13
	ld   de, $ff7f                                   ; $6a47: $11 $7f $ff
	rst  $38                                         ; $6a4a: $ff
	rst  $38                                         ; $6a4b: $ff
	rst  $38                                         ; $6a4c: $ff
	rst  $38                                         ; $6a4d: $ff
	rst  $38                                         ; $6a4e: $ff
	ld   sp, hl                                      ; $6a4f: $f9
	ld   de, $1111                                   ; $6a50: $11 $11 $11
	ld   de, $1111                                   ; $6a53: $11 $11 $11
	ld   de, $1921                                   ; $6a56: $11 $21 $19
	rst  $38                                         ; $6a59: $ff
	rst  $38                                         ; $6a5a: $ff
	rst  $38                                         ; $6a5b: $ff
	rst  $38                                         ; $6a5c: $ff
	rst  $38                                         ; $6a5d: $ff
	rst  $38                                         ; $6a5e: $ff
	rst  $38                                         ; $6a5f: $ff
	ld   hl, $1111                                   ; $6a60: $21 $11 $11
	ld   de, $1111                                   ; $6a63: $11 $11 $11
	ld   de, $1221                                   ; $6a66: $11 $21 $12
	rst  $38                                         ; $6a69: $ff
	rst  $38                                         ; $6a6a: $ff
	rst  $38                                         ; $6a6b: $ff
	rst  $38                                         ; $6a6c: $ff
	rst  $38                                         ; $6a6d: $ff
	rst  $38                                         ; $6a6e: $ff
	rst  $38                                         ; $6a6f: $ff
	pop  de                                          ; $6a70: $d1
	ld   de, $1111                                   ; $6a71: $11 $11 $11
	ld   de, $1111                                   ; $6a74: $11 $11 $11
	inc  d                                           ; $6a77: $14
	ld   de, $ff5e                                   ; $6a78: $11 $5e $ff
	rst  $38                                         ; $6a7b: $ff
	rst  $38                                         ; $6a7c: $ff
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	rst  $38                                         ; $6a7f: $ff
	db   $fd                                         ; $6a80: $fd
	ld   de, $1111                                   ; $6a81: $11 $11 $11
	ld   de, $1111                                   ; $6a84: $11 $11 $11
	ld   de, $1481                                   ; $6a87: $11 $81 $14
	rst  $38                                         ; $6a8a: $ff
	rst  $38                                         ; $6a8b: $ff
	rst  $38                                         ; $6a8c: $ff
	rst  $38                                         ; $6a8d: $ff
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	rst  $38                                         ; $6a90: $ff
	or   c                                           ; $6a91: $b1
	ld   de, $1111                                   ; $6a92: $11 $11 $11
	ld   de, $1111                                   ; $6a95: $11 $11 $11
	rla                                              ; $6a98: $17
	ld   de, $ff4f                                   ; $6a99: $11 $4f $ff
	rst  $38                                         ; $6a9c: $ff
	rst  $38                                         ; $6a9d: $ff
	rst  $38                                         ; $6a9e: $ff
	rst  $38                                         ; $6a9f: $ff
	rst  $38                                         ; $6aa0: $ff
	db   $fd                                         ; $6aa1: $fd
	ld   de, $1111                                   ; $6aa2: $11 $11 $11
	ld   de, $1111                                   ; $6aa5: $11 $11 $11
	ld   de, $1631                                   ; $6aa8: $11 $31 $16
	rst  $38                                         ; $6aab: $ff
	rst  $38                                         ; $6aac: $ff
	rst  $38                                         ; $6aad: $ff
	rst  $38                                         ; $6aae: $ff
	rst  $38                                         ; $6aaf: $ff
	rst  $38                                         ; $6ab0: $ff
	rst  $38                                         ; $6ab1: $ff
	pop  bc                                          ; $6ab2: $c1
	ld   de, $1111                                   ; $6ab3: $11 $11 $11
	ld   de, $1111                                   ; $6ab6: $11 $11 $11
	ld   [de], a                                     ; $6ab9: $12
	ld   de, $ff3a                                   ; $6aba: $11 $3a $ff
	rst  $38                                         ; $6abd: $ff
	rst  $38                                         ; $6abe: $ff
	rst  $38                                         ; $6abf: $ff
	rst  $38                                         ; $6ac0: $ff
	rst  $38                                         ; $6ac1: $ff
	rst  $38                                         ; $6ac2: $ff
	ld   de, $1111                                   ; $6ac3: $11 $11 $11
	ld   de, $1111                                   ; $6ac6: $11 $11 $11
	ld   de, $1113                                   ; $6ac9: $11 $13 $11
	cpl                                              ; $6acc: $2f
	rst  $38                                         ; $6acd: $ff
	rst  $38                                         ; $6ace: $ff
	rst  $38                                         ; $6acf: $ff
	rst  $38                                         ; $6ad0: $ff
	rst  $38                                         ; $6ad1: $ff
	rst  $38                                         ; $6ad2: $ff
	rst  $30                                         ; $6ad3: $f7
	ld   de, $1111                                   ; $6ad4: $11 $11 $11
	ld   de, $1111                                   ; $6ad7: $11 $11 $11
	ld   de, $1121                                   ; $6ada: $11 $21 $11
	cp   a                                           ; $6add: $bf
	rst  $38                                         ; $6ade: $ff
	rst  $38                                         ; $6adf: $ff
	rst  $38                                         ; $6ae0: $ff
	rst  $38                                         ; $6ae1: $ff
	rst  $38                                         ; $6ae2: $ff
	rst  $38                                         ; $6ae3: $ff
	di                                               ; $6ae4: $f3
	ld   de, $1111                                   ; $6ae5: $11 $11 $11
	ld   de, $1111                                   ; $6ae8: $11 $11 $11
	ld   de, $1151                                   ; $6aeb: $11 $51 $11
	rst  $38                                         ; $6aee: $ff
	rst  $38                                         ; $6aef: $ff
	rst  $38                                         ; $6af0: $ff
	rst  $38                                         ; $6af1: $ff
	rst  $38                                         ; $6af2: $ff
	rst  $38                                         ; $6af3: $ff
	rst  $38                                         ; $6af4: $ff
	pop  bc                                          ; $6af5: $c1
	ld   de, $1111                                   ; $6af6: $11 $11 $11
	ld   de, $1111                                   ; $6af9: $11 $11 $11
	ld   de, $1161                                   ; $6afc: $11 $61 $11
	rst  $38                                         ; $6aff: $ff
	rst  $38                                         ; $6b00: $ff
	rst  $38                                         ; $6b01: $ff
	rst  $38                                         ; $6b02: $ff
	rst  $38                                         ; $6b03: $ff
	rst  $38                                         ; $6b04: $ff
	rst  $38                                         ; $6b05: $ff
	add  c                                           ; $6b06: $81
	ld   de, $1111                                   ; $6b07: $11 $11 $11
	ld   de, $1111                                   ; $6b0a: $11 $11 $11
	ld   de, $1151                                   ; $6b0d: $11 $51 $11
	rst  $38                                         ; $6b10: $ff
	rst  $38                                         ; $6b11: $ff
	rst  $38                                         ; $6b12: $ff
	rst  $38                                         ; $6b13: $ff
	rst  $38                                         ; $6b14: $ff
	rst  $38                                         ; $6b15: $ff
	rst  $38                                         ; $6b16: $ff
	ld   h, c                                        ; $6b17: $61
	ld   de, $1111                                   ; $6b18: $11 $11 $11
	ld   de, $1111                                   ; $6b1b: $11 $11 $11
	ld   de, $1171                                   ; $6b1e: $11 $71 $11
	rst  $38                                         ; $6b21: $ff
	rst  $38                                         ; $6b22: $ff
	rst  $38                                         ; $6b23: $ff
	rst  $38                                         ; $6b24: $ff
	rst  $38                                         ; $6b25: $ff
	rst  $38                                         ; $6b26: $ff
	rst  $38                                         ; $6b27: $ff
	ld   [hl], c                                     ; $6b28: $71
	ld   de, $1111                                   ; $6b29: $11 $11 $11
	ld   de, $1111                                   ; $6b2c: $11 $11 $11
	ld   de, $1111                                   ; $6b2f: $11 $11 $11
	ld   e, a                                        ; $6b32: $5f
	rst  $38                                         ; $6b33: $ff
	rst  $38                                         ; $6b34: $ff
	rst  $38                                         ; $6b35: $ff
	rst  $38                                         ; $6b36: $ff
	rst  $38                                         ; $6b37: $ff
	rst  $38                                         ; $6b38: $ff
	pop  af                                          ; $6b39: $f1
	ld   de, $1111                                   ; $6b3a: $11 $11 $11
	ld   de, $1111                                   ; $6b3d: $11 $11 $11
	ld   de, $1111                                   ; $6b40: $11 $11 $11
	ld   e, $ff                                      ; $6b43: $1e $ff
	rst  $38                                         ; $6b45: $ff
	rst  $38                                         ; $6b46: $ff
	rst  $38                                         ; $6b47: $ff
	rst  $38                                         ; $6b48: $ff
	rst  $38                                         ; $6b49: $ff
	db   $fc                                         ; $6b4a: $fc
	ld   [hl+], a                                    ; $6b4b: $22
	ld   b, c                                        ; $6b4c: $41
	ld   de, $1111                                   ; $6b4d: $11 $11 $11
	ld   de, $1111                                   ; $6b50: $11 $11 $11
	ld   de, $1111                                   ; $6b53: $11 $11 $11
	cp   a                                           ; $6b56: $bf
	rst  $38                                         ; $6b57: $ff
	rst  $38                                         ; $6b58: $ff
	rst  $38                                         ; $6b59: $ff
	rst  $38                                         ; $6b5a: $ff
	rst  $38                                         ; $6b5b: $ff
	rst  $38                                         ; $6b5c: $ff
	or   [hl]                                        ; $6b5d: $b6
	ld   de, $1111                                   ; $6b5e: $11 $11 $11
	ld   de, $1111                                   ; $6b61: $11 $11 $11
	ld   de, $1111                                   ; $6b64: $11 $11 $11
	ld   de, $ac4c                                   ; $6b67: $11 $4c $ac
	rst  $38                                         ; $6b6a: $ff
	rst  $38                                         ; $6b6b: $ff
	rst  $38                                         ; $6b6c: $ff
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	xor  $c8                                         ; $6b6f: $ee $c8
	ld   sp, $1211                                   ; $6b71: $31 $11 $12
	ld   de, $1111                                   ; $6b74: $11 $11 $11
	ld   de, $1111                                   ; $6b77: $11 $11 $11
	ld   de, $5a5d                                   ; $6b7a: $11 $5d $5a
	rst  $38                                         ; $6b7d: $ff
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	rst  $38                                         ; $6b80: $ff
	rst  $38                                         ; $6b81: $ff
	cp   $ff                                         ; $6b82: $fe $ff
	ld   [hl], e                                     ; $6b84: $73
	ld   b, l                                        ; $6b85: $45
	sub  e                                           ; $6b86: $93
	ld   [hl], c                                     ; $6b87: $71
	inc  d                                           ; $6b88: $14
	ld   de, $1111                                   ; $6b89: $11 $11 $11
	ld   de, $1111                                   ; $6b8c: $11 $11 $11
	or   a                                           ; $6b8f: $b7
	dec  l                                           ; $6b90: $2d
	rst  $38                                         ; $6b91: $ff
	rst  $38                                         ; $6b92: $ff
	rst  $38                                         ; $6b93: $ff
	rst  $38                                         ; $6b94: $ff
	rst  $38                                         ; $6b95: $ff
	rst  $38                                         ; $6b96: $ff
	cp   $49                                         ; $6b97: $fe $49

Jump_0e2_6b99:
	db   $e4                                         ; $6b99: $e4
	add  c                                           ; $6b9a: $81
	daa                                              ; $6b9b: $27
	rla                                              ; $6b9c: $17
	ld   de, $1141                                   ; $6b9d: $11 $41 $11
	ld   de, $1111                                   ; $6ba0: $11 $11 $11
	rra                                              ; $6ba3: $1f
	pop  bc                                          ; $6ba4: $c1
	adc  a                                           ; $6ba5: $8f
	rst  $38                                         ; $6ba6: $ff
	rst  $38                                         ; $6ba7: $ff
	rst  $38                                         ; $6ba8: $ff
	rst  $38                                         ; $6ba9: $ff
	rst  $38                                         ; $6baa: $ff
	rst  $38                                         ; $6bab: $ff
	pop  af                                          ; $6bac: $f1
	xor  l                                           ; $6bad: $ad
	ld   e, e                                        ; $6bae: $5b
	ld   de, $26a1                                   ; $6baf: $11 $a1 $26
	ld   de, $1111                                   ; $6bb2: $11 $11 $11
	ld   de, $1151                                   ; $6bb5: $11 $51 $11
	ld   d, $a2                                      ; $6bb8: $16 $a2
	ld   d, a                                        ; $6bba: $57
	rst  $28                                         ; $6bbb: $ef
	rst  $38                                         ; $6bbc: $ff
	rst  $38                                         ; $6bbd: $ff
	rst  $38                                         ; $6bbe: $ff
	rst  $38                                         ; $6bbf: $ff
	rst  $38                                         ; $6bc0: $ff
	rst  $38                                         ; $6bc1: $ff
	cp   b                                           ; $6bc2: $b8
	db   $fd                                         ; $6bc3: $fd
	cpl                                              ; $6bc4: $2f
	dec  a                                           ; $6bc5: $3d
	ld   [hl], c                                     ; $6bc6: $71
	pop  af                                          ; $6bc7: $f1
	ld   h, a                                        ; $6bc8: $67
	rra                                              ; $6bc9: $1f
	ld   de, $4161                                   ; $6bca: $11 $61 $41
	ld   de, $2731                                   ; $6bcd: $11 $31 $27
	rra                                              ; $6bd0: $1f
	add  hl, de                                      ; $6bd1: $19
	ldh  a, [c]                                      ; $6bd2: $f2
	ld   a, [$9fdf]                                  ; $6bd3: $fa $df $9f
	rst  $38                                         ; $6bd6: $ff
	db   $fd                                         ; $6bd7: $fd
	rst  $38                                         ; $6bd8: $ff
	cp   $ca                                         ; $6bd9: $fe $ca
	or   $5b                                         ; $6bdb: $f6 $5b
	ld   b, a                                        ; $6bdd: $47
	ld   a, [de]                                     ; $6bde: $1a
	ld   de, $6191                                   ; $6bdf: $11 $91 $61
	dec  d                                           ; $6be2: $15
	inc  d                                           ; $6be3: $14
	rla                                              ; $6be4: $17
	add  hl, de                                      ; $6be5: $19
	ld   b, h                                        ; $6be6: $44
	or   c                                           ; $6be7: $b1
	push af                                          ; $6be8: $f5
	xor  [hl]                                        ; $6be9: $ae
	ld   l, a                                        ; $6bea: $6f
	adc  $eb                                         ; $6beb: $ce $eb
	xor  $ce                                         ; $6bed: $ee $ce
	call $d9c7                                       ; $6bef: $cd $c7 $d9
	or   [hl]                                        ; $6bf2: $b6
	ld   e, a                                        ; $6bf3: $5f
	ld   a, [de]                                     ; $6bf4: $1a
	ld   d, c                                        ; $6bf5: $51
	pop  af                                          ; $6bf6: $f1
	and  e                                           ; $6bf7: $a3
	cpl                                              ; $6bf8: $2f
	add  hl, de                                      ; $6bf9: $19
	ld   e, l                                        ; $6bfa: $5d
	ld   [hl], e                                     ; $6bfb: $73
	pop  af                                          ; $6bfc: $f1
	call $291f                                       ; $6bfd: $cd $1f $29
	pop  af                                          ; $6c00: $f1
	db   $f4                                         ; $6c01: $f4
	sbc  e                                           ; $6c02: $9b
	ld   c, a                                        ; $6c03: $4f
	dec  a                                           ; $6c04: $3d
	ld   c, c                                        ; $6c05: $49
	sub  d                                           ; $6c06: $92
	or   h                                           ; $6c07: $b4
	pop  hl                                          ; $6c08: $e1
	ld   a, h                                        ; $6c09: $7c
	ld   a, $1f                                      ; $6c0a: $3e $1f
	sub  [hl]                                        ; $6c0c: $96
	db   $f4                                         ; $6c0d: $f4
	push af                                          ; $6c0e: $f5
	reti                                             ; $6c0f: $d9


	ld   a, l                                        ; $6c10: $7d
	ld   a, h                                        ; $6c11: $7c
	ld   e, d                                        ; $6c12: $5a
	and  [hl]                                        ; $6c13: $a6
	sbc  e                                           ; $6c14: $9b
	ld   e, b                                        ; $6c15: $58
	ldh  [c], a                                      ; $6c16: $e2
	jp   nc, $1b8e                                   ; $6c17: $d2 $8e $1b

	dec  sp                                          ; $6c1a: $3b
	ld   [hl], e                                     ; $6c1b: $73
	push bc                                          ; $6c1c: $c5
	cp   b                                           ; $6c1d: $b8
	ld   a, c                                        ; $6c1e: $79
	xor  d                                           ; $6c1f: $aa
	ld   a, b                                        ; $6c20: $78
	cp   d                                           ; $6c21: $ba
	sbc  c                                           ; $6c22: $99
	adc  h                                           ; $6c23: $8c
	ld   e, e                                        ; $6c24: $5b
	add  a                                           ; $6c25: $87
	sub  $a9                                         ; $6c26: $d6 $a9
	sub  l                                           ; $6c28: $95
	sub  $7b                                         ; $6c29: $d6 $7b
	dec  e                                           ; $6c2b: $1d
	ld   h, a                                        ; $6c2c: $67
	add  l                                           ; $6c2d: $85
	sub  [hl]                                        ; $6c2e: $96
	ld   a, c                                        ; $6c2f: $79
	sbc  b                                           ; $6c30: $98
	sub  a                                           ; $6c31: $97
	ld   a, d                                        ; $6c32: $7a
	ld   l, d                                        ; $6c33: $6a
	sub  h                                           ; $6c34: $94
	cp   b                                           ; $6c35: $b8
	sub  a                                           ; $6c36: $97
	adc  e                                           ; $6c37: $8b
	ld   a, [hl-]                                    ; $6c38: $3a
	adc  b                                           ; $6c39: $88
	ld   a, b                                        ; $6c3a: $78
	sub  a                                           ; $6c3b: $97
	ld   [hl], a                                     ; $6c3c: $77
	or   h                                           ; $6c3d: $b4
	or   l                                           ; $6c3e: $b5
	xor  d                                           ; $6c3f: $aa
	dec  a                                           ; $6c40: $3d
	dec  l                                           ; $6c41: $2d
	dec  sp                                          ; $6c42: $3b
	or   e                                           ; $6c43: $b3
	pop  hl                                          ; $6c44: $e1
	ret  c                                           ; $6c45: $d8

	ld   e, h                                        ; $6c46: $5c
	ld   d, a                                        ; $6c47: $57
	sbc  b                                           ; $6c48: $98
	halt                                             ; $6c49: $76
	sub  [hl]                                        ; $6c4a: $96
	sub  a                                           ; $6c4b: $97
	ld   e, d                                        ; $6c4c: $5a
	halt                                             ; $6c4d: $76
	ld   a, e                                        ; $6c4e: $7b
	ld   c, d                                        ; $6c4f: $4a
	ld   e, c                                        ; $6c50: $59
	and  [hl]                                        ; $6c51: $a6
	sub  [hl]                                        ; $6c52: $96
	jp   Jump_0e2_5fd7                               ; $6c53: $c3 $d7 $5f


	add  hl, de                                      ; $6c56: $19
	or   h                                           ; $6c57: $b4
	rst  ToBoot                                         ; $6c58: $c7
	ld   a, b                                        ; $6c59: $78
	ld   a, b                                        ; $6c5a: $78
	ld   a, d                                        ; $6c5b: $7a
	inc  l                                           ; $6c5c: $2c
	ld   [hl], d                                     ; $6c5d: $72
	jp   nz, Jump_0e2_5ab6                           ; $6c5e: $c2 $b6 $5a

	ld   a, [hl-]                                    ; $6c61: $3a
	sub  [hl]                                        ; $6c62: $96
	ld   a, c                                        ; $6c63: $79
	add  [hl]                                        ; $6c64: $86
	sbc  c                                           ; $6c65: $99
	ld   a, d                                        ; $6c66: $7a
	ld   l, e                                        ; $6c67: $6b
	add  a                                           ; $6c68: $87
	adc  c                                           ; $6c69: $89
	and  h                                           ; $6c6a: $a4
	sbc  c                                           ; $6c6b: $99
	ld   a, c                                        ; $6c6c: $79
	and  [hl]                                        ; $6c6d: $a6
	and  [hl]                                        ; $6c6e: $a6
	ld   a, d                                        ; $6c6f: $7a
	ld   c, e                                        ; $6c70: $4b
	ld   c, c                                        ; $6c71: $49
	ld   h, a                                        ; $6c72: $67
	and  h                                           ; $6c73: $a4
	sub  a                                           ; $6c74: $97
	add  l                                           ; $6c75: $85
	or   h                                           ; $6c76: $b4
	and  [hl]                                        ; $6c77: $a6
	ld   e, l                                        ; $6c78: $5d
	dec  e                                           ; $6c79: $1d
	ld   c, b                                        ; $6c7a: $48
	and  l                                           ; $6c7b: $a5
	or   [hl]                                        ; $6c7c: $b6
	sub  l                                           ; $6c7d: $95
	add  $69                                         ; $6c7e: $c6 $69
	sub  a                                           ; $6c80: $97
	ld   l, d                                        ; $6c81: $6a
	ld   l, d                                        ; $6c82: $6a
	ld   l, b                                        ; $6c83: $68
	adc  b                                           ; $6c84: $88
	ld   h, a                                        ; $6c85: $67
	sub  [hl]                                        ; $6c86: $96
	and  l                                           ; $6c87: $a5
	sub  a                                           ; $6c88: $97
	ld   a, b                                        ; $6c89: $78
	ld   l, d                                        ; $6c8a: $6a
	ld   h, a                                        ; $6c8b: $67
	sub  a                                           ; $6c8c: $97
	ld   a, b                                        ; $6c8d: $78
	ld   a, b                                        ; $6c8e: $78
	and  h                                           ; $6c8f: $a4
	or   h                                           ; $6c90: $b4
	adc  e                                           ; $6c91: $8b
	inc  a                                           ; $6c92: $3c
	ld   c, e                                        ; $6c93: $4b
	ld   [hl], l                                     ; $6c94: $75
	or   e                                           ; $6c95: $b3
	and  l                                           ; $6c96: $a5
	sbc  b                                           ; $6c97: $98
	inc  a                                           ; $6c98: $3c
	halt                                             ; $6c99: $76
	sub  [hl]                                        ; $6c9a: $96
	adc  b                                           ; $6c9b: $88
	ld   [hl], a                                     ; $6c9c: $77
	add  a                                           ; $6c9d: $87
	sub  a                                           ; $6c9e: $97
	ld   e, h                                        ; $6c9f: $5c
	ld   l, c                                        ; $6ca0: $69
	sbc  b                                           ; $6ca1: $98
	sub  l                                           ; $6ca2: $95
	sub  l                                           ; $6ca3: $95
	sub  a                                           ; $6ca4: $97
	add  a                                           ; $6ca5: $87
	adc  b                                           ; $6ca6: $88
	ld   e, h                                        ; $6ca7: $5c
	dec  e                                           ; $6ca8: $1d
	ld   h, h                                        ; $6ca9: $64
	pop  hl                                          ; $6caa: $e1
	db   $d3                                         ; $6cab: $d3
	sbc  d                                           ; $6cac: $9a
	ld   l, e                                        ; $6cad: $6b
	inc  a                                           ; $6cae: $3c

jr_0e2_6caf:
	ld   l, d                                        ; $6caf: $6a
	ld   e, c                                        ; $6cb0: $59
	adc  c                                           ; $6cb1: $89
	ld   [hl], l                                     ; $6cb2: $75
	or   l                                           ; $6cb3: $b5
	or   l                                           ; $6cb4: $b5
	and  [hl]                                        ; $6cb5: $a6
	ld   a, e                                        ; $6cb6: $7b
	cpl                                              ; $6cb7: $2f
	ld   d, [hl]                                     ; $6cb8: $56
	jp   Jump_0e2_65a9                               ; $6cb9: $c3 $a9 $65


	sbc  d                                           ; $6cbc: $9a
	ld   l, c                                        ; $6cbd: $69
	ld   l, b                                        ; $6cbe: $68
	sbc  b                                           ; $6cbf: $98
	and  [hl]                                        ; $6cc0: $a6
	ld   l, d                                        ; $6cc1: $6a
	sub  [hl]                                        ; $6cc2: $96
	ld   a, d                                        ; $6cc3: $7a
	add  a                                           ; $6cc4: $87
	sub  h                                           ; $6cc5: $94
	adc  e                                           ; $6cc6: $8b
	ld   l, e                                        ; $6cc7: $6b
	ld   d, a                                        ; $6cc8: $57
	or   [hl]                                        ; $6cc9: $b6
	adc  c                                           ; $6cca: $89
	ld   e, c                                        ; $6ccb: $59
	sub  a                                           ; $6ccc: $97
	add  a                                           ; $6ccd: $87
	or   l                                           ; $6cce: $b5
	ld   a, d                                        ; $6ccf: $7a
	ld   a, e                                        ; $6cd0: $7b
	ld   d, [hl]                                     ; $6cd1: $56
	call nz, Call_0e2_69a9                           ; $6cd2: $c4 $a9 $69
	ld   c, [hl]                                     ; $6cd5: $4e
	dec  hl                                          ; $6cd6: $2b
	and  d                                           ; $6cd7: $a2
	db   $d3                                         ; $6cd8: $d3
	push bc                                          ; $6cd9: $c5
	ld   c, h                                        ; $6cda: $4c
	ld   e, d                                        ; $6cdb: $5a
	halt                                             ; $6cdc: $76
	jp   nc, Jump_0e2_4ea8                           ; $6cdd: $d2 $a8 $4e

	inc  a                                           ; $6ce0: $3c
	ld   d, a                                        ; $6ce1: $57
	sbc  c                                           ; $6ce2: $99
	sub  [hl]                                        ; $6ce3: $96
	pop  bc                                          ; $6ce4: $c1
	jp   c, Jump_0e2_694c                            ; $6ce5: $da $4c $69

	ld   [hl], h                                     ; $6ce8: $74
	pop  af                                          ; $6ce9: $f1
	ld   e, l                                        ; $6cea: $5d
	rra                                              ; $6ceb: $1f
	jr   z, jr_0e2_6caf                              ; $6cec: $28 $c1

	push de                                          ; $6cee: $d5
	or   l                                           ; $6cef: $b5
	adc  d                                           ; $6cf0: $8a
	ld   c, e                                        ; $6cf1: $4b
	ld   l, e                                        ; $6cf2: $6b
	ld   b, a                                        ; $6cf3: $47
	push bc                                          ; $6cf4: $c5
	or   l                                           ; $6cf5: $b5
	sbc  c                                           ; $6cf6: $99
	add  a                                           ; $6cf7: $87
	and  l                                           ; $6cf8: $a5
	ccf                                              ; $6cf9: $3f
	ld   c, d                                        ; $6cfa: $4a
	ld   c, h                                        ; $6cfb: $4c
	ld   h, [hl]                                     ; $6cfc: $66
	push hl                                          ; $6cfd: $e5
	or   e                                           ; $6cfe: $b3
	sub  $7b                                         ; $6cff: $d6 $7b
	inc  a                                           ; $6d01: $3c
	ld   c, b                                        ; $6d02: $48
	pop  bc                                          ; $6d03: $c1
	cp   c                                           ; $6d04: $b9
	inc  a                                           ; $6d05: $3c
	sub  e                                           ; $6d06: $93
	rst  ToBoot                                         ; $6d07: $c7
	ld   l, e                                        ; $6d08: $6b
	ld   l, [hl]                                     ; $6d09: $6e
	add  hl, sp                                      ; $6d0a: $39
	sub  [hl]                                        ; $6d0b: $96
	ret  z                                           ; $6d0c: $c8

	add  e                                           ; $6d0d: $83
	push hl                                          ; $6d0e: $e5
	sub  [hl]                                        ; $6d0f: $96

jr_0e2_6d10:
	ld   a, [hl]                                     ; $6d10: $7e
	dec  e                                           ; $6d11: $1d
	and  h                                           ; $6d12: $a4
	and  l                                           ; $6d13: $a5
	adc  d                                           ; $6d14: $8a
	inc  l                                           ; $6d15: $2c
	ld   h, [hl]                                     ; $6d16: $66
	jp   $87a7                                       ; $6d17: $c3 $a7 $87


	and  [hl]                                        ; $6d1a: $a6
	ld   l, h                                        ; $6d1b: $6c
	ld   a, d                                        ; $6d1c: $7a
	ld   d, a                                        ; $6d1d: $57
	xor  b                                           ; $6d1e: $a8
	ld   a, d                                        ; $6d1f: $7a
	ld   [hl], l                                     ; $6d20: $75
	rst  $20                                         ; $6d21: $e7
	ld   c, d                                        ; $6d22: $4a
	jp   Jump_0e2_67c7                               ; $6d23: $c3 $c7 $67


	ld   e, a                                        ; $6d26: $5f
	adc  e                                           ; $6d27: $8b
	ld   e, $c1                                      ; $6d28: $1e $c1
	di                                               ; $6d2a: $f3
	sbc  [hl]                                        ; $6d2b: $9e
	ld   d, d                                        ; $6d2c: $52
	jp   z, Jump_0e2_4c78                            ; $6d2d: $ca $78 $4c

	sub  h                                           ; $6d30: $94
	cp   e                                           ; $6d31: $bb
	rra                                              ; $6d32: $1f
	add  c                                           ; $6d33: $81
	and  $b8                                         ; $6d34: $e6 $b8
	ld   e, e                                        ; $6d36: $5b
	or   l                                           ; $6d37: $b5
	and  a                                           ; $6d38: $a7
	cpl                                              ; $6d39: $2f
	ld   l, b                                        ; $6d3a: $68
	ld   e, c                                        ; $6d3b: $59
	di                                               ; $6d3c: $f3
	adc  b                                           ; $6d3d: $88
	ld   l, l                                        ; $6d3e: $6d
	ld   b, a                                        ; $6d3f: $47
	ld   l, b                                        ; $6d40: $68
	pop  af                                          ; $6d41: $f1
	adc  h                                           ; $6d42: $8c
	add  a                                           ; $6d43: $87
	ld   c, d                                        ; $6d44: $4a
	and  l                                           ; $6d45: $a5
	adc  c                                           ; $6d46: $89
	ld   l, e                                        ; $6d47: $6b
	ld   a, h                                        ; $6d48: $7c
	ld   c, c                                        ; $6d49: $49
	or   h                                           ; $6d4a: $b4
	sbc  c                                           ; $6d4b: $99
	ld   c, l                                        ; $6d4c: $4d
	jr   c, jr_0e2_6d10                              ; $6d4d: $38 $c1

	pop  af                                          ; $6d4f: $f1
	ld   [$1c1f], a                                  ; $6d50: $ea $1f $1c
	jp   $97a7                                       ; $6d53: $c3 $a7 $97


	ld   a, c                                        ; $6d56: $79
	adc  e                                           ; $6d57: $8b
	dec  a                                           ; $6d58: $3d
	sub  e                                           ; $6d59: $93
	di                                               ; $6d5a: $f3
	sbc  d                                           ; $6d5b: $9a
	ld   c, h                                        ; $6d5c: $4c

jr_0e2_6d5d:
	ld   l, b                                        ; $6d5d: $68
	and  h                                           ; $6d5e: $a4
	cp   d                                           ; $6d5f: $ba
	ld   c, c                                        ; $6d60: $49
	and  a                                           ; $6d61: $a7
	adc  d                                           ; $6d62: $8a
	ld   c, e                                        ; $6d63: $4b
	sub  a                                           ; $6d64: $97
	or   e                                           ; $6d65: $b3
	ld   a, l                                        ; $6d66: $7d
	ld   a, [hl-]                                    ; $6d67: $3a
	or   h                                           ; $6d68: $b4
	or   l                                           ; $6d69: $b5
	or   [hl]                                        ; $6d6a: $b6
	cp   c                                           ; $6d6b: $b9
	rra                                              ; $6d6c: $1f
	inc  [hl]                                        ; $6d6d: $34
	db   $e4                                         ; $6d6e: $e4
	xor  b                                           ; $6d6f: $a8
	ld   a, l                                        ; $6d70: $7d
	add  hl, hl                                      ; $6d71: $29
	and  l                                           ; $6d72: $a5
	call nz, $bfe1                                   ; $6d73: $c4 $e1 $bf
	rra                                              ; $6d76: $1f
	scf                                              ; $6d77: $37
	or   [hl]                                        ; $6d78: $b6
	ld   e, l                                        ; $6d79: $5d
	jr   c, jr_0e2_6d5d                              ; $6d7a: $38 $e1

	ei                                               ; $6d7c: $fb
	dec  e                                           ; $6d7d: $1d
	ld   [hl], a                                     ; $6d7e: $77
	or   d                                           ; $6d7f: $b2
	xor  d                                           ; $6d80: $aa
	ld   b, a                                        ; $6d81: $47
	db   $d3                                         ; $6d82: $d3
	and  a                                           ; $6d83: $a7
	ld   c, a                                        ; $6d84: $4f
	jr   c, @-$57                                    ; $6d85: $38 $a7

	dec  a                                           ; $6d87: $3d
	ld   [hl], e                                     ; $6d88: $73
	jp   hl                                          ; $6d89: $e9


	ld   e, e                                        ; $6d8a: $5b
	sub  l                                           ; $6d8b: $95
	push hl                                          ; $6d8c: $e5
	sub  l                                           ; $6d8d: $95
	xor  l                                           ; $6d8e: $ad
	inc  e                                           ; $6d8f: $1c
	or   e                                           ; $6d90: $b3
	adc  c                                           ; $6d91: $89
	and  h                                           ; $6d92: $a4
	cp   h                                           ; $6d93: $bc
	rra                                              ; $6d94: $1f
	ld   e, c                                        ; $6d95: $59
	and  h                                           ; $6d96: $a4
	pop  af                                          ; $6d97: $f1
	xor  l                                           ; $6d98: $ad
	ld   d, $d6                                      ; $6d99: $16 $d6
	sub  a                                           ; $6d9b: $97
	sbc  e                                           ; $6d9c: $9b
	add  hl, sp                                      ; $6d9d: $39
	push de                                          ; $6d9e: $d5
	ld   a, d                                        ; $6d9f: $7a
	ld   c, h                                        ; $6da0: $4c
	ld   h, a                                        ; $6da1: $67
	or   a                                           ; $6da2: $b7
	and  h                                           ; $6da3: $a4
	ret  z                                           ; $6da4: $c8

	ld   a, [hl-]                                    ; $6da5: $3a
	ld   a, b                                        ; $6da6: $78
	or   d                                           ; $6da7: $b2
	xor  h                                           ; $6da8: $ac
	inc  l                                           ; $6da9: $2c
	sub  l                                           ; $6daa: $95
	ld   [hl], a                                     ; $6dab: $77
	and  [hl]                                        ; $6dac: $a6
	ld   a, b                                        ; $6dad: $78
	ld   l, c                                        ; $6dae: $69
	jp   $9aa7                                       ; $6daf: $c3 $a7 $9a


	rra                                              ; $6db2: $1f
	sub  c                                           ; $6db3: $91
	sub  $6a                                         ; $6db4: $d6 $6a
	ld   e, a                                        ; $6db6: $5f
	rla                                              ; $6db7: $17
	pop  af                                          ; $6db8: $f1
	db   $f4                                         ; $6db9: $f4
	ld   e, l                                        ; $6dba: $5d
	rra                                              ; $6dbb: $1f
	sub  c                                           ; $6dbc: $91
	db   $f4                                         ; $6dbd: $f4
	ret  z                                           ; $6dbe: $c8

	ld   c, a                                        ; $6dbf: $4f
	rra                                              ; $6dc0: $1f
	ld   d, e                                        ; $6dc1: $53
	pop  af                                          ; $6dc2: $f1
	push bc                                          ; $6dc3: $c5
	ld   c, a                                        ; $6dc4: $4f
	halt                                             ; $6dc5: $76
	sub  a                                           ; $6dc6: $97
	sbc  l                                           ; $6dc7: $9d
	rra                                              ; $6dc8: $1f
	sub  c                                           ; $6dc9: $91
	ldh  [c], a                                      ; $6dca: $e2
	push af                                          ; $6dcb: $f5
	ld   e, [hl]                                     ; $6dcc: $5e
	ld   d, e                                        ; $6dcd: $53
	db   $ed                                         ; $6dce: $ed
	rla                                              ; $6dcf: $17
	di                                               ; $6dd0: $f3
	dec  a                                           ; $6dd1: $3d
	sub  a                                           ; $6dd2: $97
	ld   l, $c1                                      ; $6dd3: $2e $c1
	or   a                                           ; $6dd5: $b7
	pop  de                                          ; $6dd6: $d1
	ld   l, a                                        ; $6dd7: $6f
	rra                                              ; $6dd8: $1f
	or   c                                           ; $6dd9: $b1
	pop  af                                          ; $6dda: $f1
	ld   hl, sp+$1f                                  ; $6ddb: $f8 $1f
	inc  l                                           ; $6ddd: $2c
	ld   [hl], e                                     ; $6dde: $73
	pop  af                                          ; $6ddf: $f1
	adc  l                                           ; $6de0: $8d
	rra                                              ; $6de1: $1f
	ld   b, h                                        ; $6de2: $44
	pop  de                                          ; $6de3: $d1
	or   e                                           ; $6de4: $b3
	ld   e, d                                        ; $6de5: $5a
	ld   e, d                                        ; $6de6: $5a
	ld   d, [hl]                                     ; $6de7: $56
	or   l                                           ; $6de8: $b5
	halt                                             ; $6de9: $76
	or   h                                           ; $6dea: $b4
	ld   l, a                                        ; $6deb: $6f
	dec  hl                                          ; $6dec: $2b
	xor  h                                           ; $6ded: $ac
	or   h                                           ; $6dee: $b4
	ld   sp, hl                                      ; $6def: $f9
	xor  d                                           ; $6df0: $aa
	cp   $5f                                         ; $6df1: $fe $5f
	add  hl, bc                                      ; $6df3: $09
	pop  af                                          ; $6df4: $f1
	pop  bc                                          ; $6df5: $c1
	rst  $38                                         ; $6df6: $ff
	rra                                              ; $6df7: $1f
	ld   h, c                                        ; $6df8: $61
	ld   h, c                                        ; $6df9: $61
	pop  af                                          ; $6dfa: $f1
	rra                                              ; $6dfb: $1f
	ld   de, $8167                                   ; $6dfc: $11 $67 $81
	ei                                               ; $6dff: $fb
	ld   c, a                                        ; $6e00: $4f
	sbc  a                                           ; $6e01: $9f
	rst  $28                                         ; $6e02: $ef
	push af                                          ; $6e03: $f5
	rst  $38                                         ; $6e04: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e05: $cf
	sbc  a                                           ; $6e06: $9f
	di                                               ; $6e07: $f3
	or   $3f                                         ; $6e08: $f6 $3f
	inc  d                                           ; $6e0a: $14
	or   c                                           ; $6e0b: $b1
	pop  bc                                          ; $6e0c: $c1
	ld   de, $111c                                   ; $6e0d: $11 $1c $11
	ld   h, c                                        ; $6e10: $61
	inc  [hl]                                        ; $6e11: $34
	rra                                              ; $6e12: $1f
	ld   a, e                                        ; $6e13: $7b
	db   $fd                                         ; $6e14: $fd
	rst  $38                                         ; $6e15: $ff
	rst  $38                                         ; $6e16: $ff
	rst  $38                                         ; $6e17: $ff
	rst  $38                                         ; $6e18: $ff
	rst  $38                                         ; $6e19: $ff
	rst  $38                                         ; $6e1a: $ff
	xor  c                                           ; $6e1b: $a9
	and  a                                           ; $6e1c: $a7
	pop  de                                          ; $6e1d: $d1
	ld   c, d                                        ; $6e1e: $4a
	inc  d                                           ; $6e1f: $14
	ld   de, $1151                                   ; $6e20: $11 $51 $11
	rla                                              ; $6e23: $17
	inc  de                                          ; $6e24: $13
	ld   h, h                                        ; $6e25: $64
	or   $ef                                         ; $6e26: $f6 $ef
	rst  $38                                         ; $6e28: $ff
	rst  $38                                         ; $6e29: $ff
	rst  $38                                         ; $6e2a: $ff
	rst  $38                                         ; $6e2b: $ff
	rst  $38                                         ; $6e2c: $ff
	rst  $38                                         ; $6e2d: $ff
	ld   l, a                                        ; $6e2e: $6f
	sub  d                                           ; $6e2f: $92
	ldh  a, [c]                                      ; $6e30: $f2
	inc  d                                           ; $6e31: $14
	ld   de, $1111                                   ; $6e32: $11 $11 $11
	inc  d                                           ; $6e35: $14
	ld   de, $2125                                   ; $6e36: $11 $25 $21
	cp   $cf                                         ; $6e39: $fe $cf
	rst  $38                                         ; $6e3b: $ff
	rst  $38                                         ; $6e3c: $ff
	rst  $38                                         ; $6e3d: $ff
	rst  $38                                         ; $6e3e: $ff
	rst  $28                                         ; $6e3f: $ef
	db   $ed                                         ; $6e40: $ed
	db   $ec                                         ; $6e41: $ec
	jr   c, @+$74                                    ; $6e42: $38 $72

	ld   de, $1111                                   ; $6e44: $11 $11 $11
	ld   de, $1111                                   ; $6e47: $11 $11 $11
	dec  [hl]                                        ; $6e4a: $35
	ld   a, [de]                                     ; $6e4b: $1a
	rst  $38                                         ; $6e4c: $ff
	rst  $38                                         ; $6e4d: $ff
	rst  $38                                         ; $6e4e: $ff
	rst  $38                                         ; $6e4f: $ff
	rst  $38                                         ; $6e50: $ff
	rst  $38                                         ; $6e51: $ff
	cp   $de                                         ; $6e52: $fe $de
	ld   l, c                                        ; $6e54: $69
	ld   b, c                                        ; $6e55: $41
	and  c                                           ; $6e56: $a1
	ld   de, $1114                                   ; $6e57: $11 $14 $11
	ld   de, $1111                                   ; $6e5a: $11 $11 $11
	ld   [$ffc9], sp                                 ; $6e5d: $08 $c9 $ff
	rst  $38                                         ; $6e60: $ff
	rst  $38                                         ; $6e61: $ff
	rst  $38                                         ; $6e62: $ff
	rst  $38                                         ; $6e63: $ff
	rst  $38                                         ; $6e64: $ff
	set  2, [hl]                                     ; $6e65: $cb $d6
	ld   hl, $1152                                   ; $6e67: $21 $52 $11
	ld   de, $1111                                   ; $6e6a: $11 $11 $11
	ld   de, $4411                                   ; $6e6d: $11 $11 $44
	sbc  e                                           ; $6e70: $9b
	rst  $38                                         ; $6e71: $ff
	rst  $38                                         ; $6e72: $ff
	rst  $38                                         ; $6e73: $ff
	rst  $38                                         ; $6e74: $ff
	rst  $38                                         ; $6e75: $ff
	rst  $38                                         ; $6e76: $ff
	db   $fd                                         ; $6e77: $fd
	xor  c                                           ; $6e78: $a9
	ld   d, c                                        ; $6e79: $51
	inc  sp                                          ; $6e7a: $33
	ld   de, $1111                                   ; $6e7b: $11 $11 $11
	ld   de, $1111                                   ; $6e7e: $11 $11 $11
	ld   [hl-], a                                    ; $6e81: $32
	xor  l                                           ; $6e82: $ad
	rst  $28                                         ; $6e83: $ef
	rst  $38                                         ; $6e84: $ff
	rst  $38                                         ; $6e85: $ff
	rst  $38                                         ; $6e86: $ff
	rst  $38                                         ; $6e87: $ff
	rst  $38                                         ; $6e88: $ff
	rst  $38                                         ; $6e89: $ff
	bit  6, h                                        ; $6e8a: $cb $74
	ld   d, c                                        ; $6e8c: $51
	ld   de, $1111                                   ; $6e8d: $11 $11 $11
	ld   de, $1111                                   ; $6e90: $11 $11 $11
	inc  d                                           ; $6e93: $14
	ld   l, $ff                                      ; $6e94: $2e $ff
	rst  $38                                         ; $6e96: $ff
	rst  $38                                         ; $6e97: $ff
	rst  $38                                         ; $6e98: $ff
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	rst  $38                                         ; $6e9b: $ff
	db   $fc                                         ; $6e9c: $fc
	xor  b                                           ; $6e9d: $a8
	ld   d, l                                        ; $6e9e: $55
	ld   de, $1111                                   ; $6e9f: $11 $11 $11
	ld   de, $1111                                   ; $6ea2: $11 $11 $11
	jr   jr_0e2_6ec3                                 ; $6ea5: $18 $1c

	rst  $38                                         ; $6ea7: $ff
	rst  $38                                         ; $6ea8: $ff
	rst  $38                                         ; $6ea9: $ff
	rst  $38                                         ; $6eaa: $ff
	rst  $38                                         ; $6eab: $ff
	rst  $38                                         ; $6eac: $ff
	rst  $28                                         ; $6ead: $ef
	ei                                               ; $6eae: $fb
	sub  l                                           ; $6eaf: $95
	add  d                                           ; $6eb0: $82
	ld   de, $1111                                   ; $6eb1: $11 $11 $11
	ld   de, $1111                                   ; $6eb4: $11 $11 $11
	dec  [hl]                                        ; $6eb7: $35
	dec  e                                           ; $6eb8: $1d
	rst  $38                                         ; $6eb9: $ff
	rst  $38                                         ; $6eba: $ff
	rst  $38                                         ; $6ebb: $ff
	rst  $38                                         ; $6ebc: $ff
	rst  $38                                         ; $6ebd: $ff
	rst  $38                                         ; $6ebe: $ff
	rst  $38                                         ; $6ebf: $ff
	ld   hl, sp-$49                                  ; $6ec0: $f8 $b7
	ld   b, d                                        ; $6ec2: $42

jr_0e2_6ec3:
	ld   de, $1111                                   ; $6ec3: $11 $11 $11
	ld   de, $1111                                   ; $6ec6: $11 $11 $11
	ld   d, h                                        ; $6ec9: $54
	ld   l, a                                        ; $6eca: $6f
	rst  $38                                         ; $6ecb: $ff
	rst  $38                                         ; $6ecc: $ff
	rst  $38                                         ; $6ecd: $ff
	rst  $38                                         ; $6ece: $ff
	rst  $38                                         ; $6ecf: $ff
	rst  $38                                         ; $6ed0: $ff
	rst  $38                                         ; $6ed1: $ff
	jp   z, $21a8                                    ; $6ed2: $ca $a8 $21

	ld   de, $1111                                   ; $6ed5: $11 $11 $11
	ld   de, $1111                                   ; $6ed8: $11 $11 $11
	ld   d, e                                        ; $6edb: $53
	xor  a                                           ; $6edc: $af
	rst  $38                                         ; $6edd: $ff
	rst  $38                                         ; $6ede: $ff
	rst  $38                                         ; $6edf: $ff
	rst  $38                                         ; $6ee0: $ff
	rst  $38                                         ; $6ee1: $ff
	rst  $38                                         ; $6ee2: $ff
	rst  $38                                         ; $6ee3: $ff
	cp   e                                           ; $6ee4: $bb
	and  [hl]                                        ; $6ee5: $a6
	ld   de, $1111                                   ; $6ee6: $11 $11 $11
	ld   de, $1111                                   ; $6ee9: $11 $11 $11
	ld   [de], a                                     ; $6eec: $12
	inc  sp                                          ; $6eed: $33
	rst  $28                                         ; $6eee: $ef
	rst  $38                                         ; $6eef: $ff
	rst  $38                                         ; $6ef0: $ff
	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	rst  $38                                         ; $6ef3: $ff
	rst  $38                                         ; $6ef4: $ff
	rst  $38                                         ; $6ef5: $ff
	call c, $11c5                                    ; $6ef6: $dc $c5 $11
	ld   de, $1111                                   ; $6ef9: $11 $11 $11
	ld   de, $1411                                   ; $6efc: $11 $11 $14
	ld   sp, $ffef                                   ; $6eff: $31 $ef $ff
	rst  $38                                         ; $6f02: $ff
	rst  $38                                         ; $6f03: $ff
	rst  $38                                         ; $6f04: $ff
	rst  $38                                         ; $6f05: $ff
	rst  $38                                         ; $6f06: $ff
	db   $fd                                         ; $6f07: $fd
	rst  $38                                         ; $6f08: $ff
	and  [hl]                                        ; $6f09: $a6
	ld   [hl+], a                                    ; $6f0a: $22
	ld   de, $1111                                   ; $6f0b: $11 $11 $11
	ld   de, $1111                                   ; $6f0e: $11 $11 $11
	ld   b, c                                        ; $6f11: $41
	ld   a, a                                        ; $6f12: $7f
	rst  $38                                         ; $6f13: $ff
	rst  $38                                         ; $6f14: $ff
	rst  $38                                         ; $6f15: $ff
	rst  $38                                         ; $6f16: $ff
	rst  $38                                         ; $6f17: $ff
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	rst  $38                                         ; $6f1a: $ff
	ld   hl, sp+$77                                  ; $6f1b: $f8 $77
	ld   hl, $1111                                   ; $6f1d: $21 $11 $11
	ld   de, $1111                                   ; $6f20: $11 $11 $11
	ld   de, $ff19                                   ; $6f23: $11 $19 $ff
	rst  $38                                         ; $6f26: $ff
	rst  $38                                         ; $6f27: $ff
	rst  $38                                         ; $6f28: $ff
	rst  $38                                         ; $6f29: $ff
	rst  $38                                         ; $6f2a: $ff
	rst  $38                                         ; $6f2b: $ff
	rst  $38                                         ; $6f2c: $ff
	rst  $38                                         ; $6f2d: $ff
	res  6, h                                        ; $6f2e: $cb $b4
	ld   de, $1111                                   ; $6f30: $11 $11 $11
	ld   de, $1111                                   ; $6f33: $11 $11 $11
	ld   de, $df5b                                   ; $6f36: $11 $5b $df
	rst  $38                                         ; $6f39: $ff
	rst  $38                                         ; $6f3a: $ff
	rst  $38                                         ; $6f3b: $ff
	rst  $38                                         ; $6f3c: $ff
	rst  $38                                         ; $6f3d: $ff
	rst  $38                                         ; $6f3e: $ff
	rst  $38                                         ; $6f3f: $ff
	rst  $38                                         ; $6f40: $ff
	db   $db                                         ; $6f41: $db
	ld   h, c                                        ; $6f42: $61
	ld   de, $1111                                   ; $6f43: $11 $11 $11
	ld   de, $1111                                   ; $6f46: $11 $11 $11
	ld   de, $ff6a                                   ; $6f49: $11 $6a $ff
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	rst  $38                                         ; $6f4e: $ff
	rst  $38                                         ; $6f4f: $ff
	rst  $38                                         ; $6f50: $ff
	rst  $38                                         ; $6f51: $ff
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	ret  z                                           ; $6f54: $c8

	ld   sp, $1111                                   ; $6f55: $31 $11 $11
	ld   de, $1111                                   ; $6f58: $11 $11 $11
	ld   de, $9d14                                   ; $6f5b: $11 $14 $9d
	rst  $38                                         ; $6f5e: $ff
	rst  $38                                         ; $6f5f: $ff
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	rst  $38                                         ; $6f62: $ff
	rst  $38                                         ; $6f63: $ff
	rst  $38                                         ; $6f64: $ff
	rst  $38                                         ; $6f65: $ff
	db   $fd                                         ; $6f66: $fd
	and  [hl]                                        ; $6f67: $a6
	ld   hl, $1111                                   ; $6f68: $21 $11 $11
	ld   de, $1111                                   ; $6f6b: $11 $11 $11
	ld   de, $af15                                   ; $6f6e: $11 $15 $af
	rst  $38                                         ; $6f71: $ff
	rst  $38                                         ; $6f72: $ff
	rst  $38                                         ; $6f73: $ff
	rst  $38                                         ; $6f74: $ff
	rst  $38                                         ; $6f75: $ff
	rst  $38                                         ; $6f76: $ff
	rst  $38                                         ; $6f77: $ff
	rst  $38                                         ; $6f78: $ff
	db   $fd                                         ; $6f79: $fd
	and  l                                           ; $6f7a: $a5
	ld   hl, $1111                                   ; $6f7b: $21 $11 $11
	ld   de, $1111                                   ; $6f7e: $11 $11 $11
	ld   de, $bf16                                   ; $6f81: $11 $16 $bf
	rst  $38                                         ; $6f84: $ff
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	rst  $38                                         ; $6f87: $ff
	rst  $38                                         ; $6f88: $ff
	rst  $38                                         ; $6f89: $ff
	rst  $38                                         ; $6f8a: $ff
	rst  $38                                         ; $6f8b: $ff
	db   $fc                                         ; $6f8c: $fc
	sub  l                                           ; $6f8d: $95
	ld   de, $1111                                   ; $6f8e: $11 $11 $11
	ld   de, $1111                                   ; $6f91: $11 $11 $11
	ld   de, $bf16                                   ; $6f94: $11 $16 $bf
	rst  $38                                         ; $6f97: $ff
	rst  $38                                         ; $6f98: $ff
	rst  $38                                         ; $6f99: $ff
	rst  $38                                         ; $6f9a: $ff
	rst  $38                                         ; $6f9b: $ff
	rst  $38                                         ; $6f9c: $ff
	rst  $38                                         ; $6f9d: $ff
	rst  $38                                         ; $6f9e: $ff
	db   $fc                                         ; $6f9f: $fc
	sub  [hl]                                        ; $6fa0: $96
	ld   hl, $1111                                   ; $6fa1: $21 $11 $11
	ld   de, $1111                                   ; $6fa4: $11 $11 $11
	ld   de, $af06                                   ; $6fa7: $11 $06 $af
	rst  $38                                         ; $6faa: $ff
	rst  $38                                         ; $6fab: $ff
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	rst  $38                                         ; $6fae: $ff
	rst  $38                                         ; $6faf: $ff
	rst  $38                                         ; $6fb0: $ff
	rst  $38                                         ; $6fb1: $ff
	db   $fd                                         ; $6fb2: $fd
	and  [hl]                                        ; $6fb3: $a6
	ld   hl, $1111                                   ; $6fb4: $21 $11 $11
	ld   de, $1111                                   ; $6fb7: $11 $11 $11
	ld   de, $bf16                                   ; $6fba: $11 $16 $bf
	rst  $38                                         ; $6fbd: $ff
	rst  $38                                         ; $6fbe: $ff
	rst  $38                                         ; $6fbf: $ff
	rst  $38                                         ; $6fc0: $ff
	rst  $38                                         ; $6fc1: $ff
	rst  $38                                         ; $6fc2: $ff
	rst  $38                                         ; $6fc3: $ff
	rst  $38                                         ; $6fc4: $ff
	db   $fd                                         ; $6fc5: $fd
	or   a                                           ; $6fc6: $b7
	ld   b, c                                        ; $6fc7: $41
	ld   de, $1111                                   ; $6fc8: $11 $11 $11
	ld   de, $1111                                   ; $6fcb: $11 $11 $11
	inc  d                                           ; $6fce: $14
	sbc  a                                           ; $6fcf: $9f
	rst  $38                                         ; $6fd0: $ff
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	rst  $38                                         ; $6fd4: $ff
	rst  $38                                         ; $6fd5: $ff
	rst  $38                                         ; $6fd6: $ff
	rst  $38                                         ; $6fd7: $ff
	cp   $c8                                         ; $6fd8: $fe $c8
	ld   d, c                                        ; $6fda: $51
	ld   de, $1111                                   ; $6fdb: $11 $11 $11
	ld   de, $1111                                   ; $6fde: $11 $11 $11
	inc  de                                          ; $6fe1: $13
	adc  [hl]                                        ; $6fe2: $8e
	rst  $38                                         ; $6fe3: $ff
	rst  $38                                         ; $6fe4: $ff
	rst  $38                                         ; $6fe5: $ff
	rst  $38                                         ; $6fe6: $ff
	rst  $38                                         ; $6fe7: $ff
	rst  $38                                         ; $6fe8: $ff
	rst  $38                                         ; $6fe9: $ff
	rst  $38                                         ; $6fea: $ff
	rst  $38                                         ; $6feb: $ff
	ld   [$1172], a                                  ; $6fec: $ea $72 $11
	ld   de, $1111                                   ; $6fef: $11 $11 $11
	ld   de, $1111                                   ; $6ff2: $11 $11 $11
	ld   e, e                                        ; $6ff5: $5b
	rst  $38                                         ; $6ff6: $ff
	rst  $38                                         ; $6ff7: $ff
	rst  $38                                         ; $6ff8: $ff
	rst  $38                                         ; $6ff9: $ff
	rst  $38                                         ; $6ffa: $ff
	rst  $38                                         ; $6ffb: $ff
	rst  $38                                         ; $6ffc: $ff
	rst  $38                                         ; $6ffd: $ff
	rst  $38                                         ; $6ffe: $ff
	ei                                               ; $6fff: $fb
	add  h                                           ; $7000: $84
	ld   de, $1111                                   ; $7001: $11 $11 $11
	ld   de, $1111                                   ; $7004: $11 $11 $11
	ld   de, $ff38                                   ; $7007: $11 $38 $ff
	rst  $38                                         ; $700a: $ff
	rst  $38                                         ; $700b: $ff
	rst  $38                                         ; $700c: $ff
	rst  $38                                         ; $700d: $ff
	rst  $38                                         ; $700e: $ff
	rst  $38                                         ; $700f: $ff
	rst  $38                                         ; $7010: $ff
	rst  $38                                         ; $7011: $ff
	db   $fd                                         ; $7012: $fd
	sub  [hl]                                        ; $7013: $96
	ld   de, $1111                                   ; $7014: $11 $11 $11
	ld   de, $1111                                   ; $7017: $11 $11 $11
	ld   de, $cf16                                   ; $701a: $11 $16 $cf
	rst  $38                                         ; $701d: $ff
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	rst  $38                                         ; $7020: $ff
	rst  $38                                         ; $7021: $ff
	rst  $38                                         ; $7022: $ff
	rst  $38                                         ; $7023: $ff
	rst  $38                                         ; $7024: $ff
	rst  $38                                         ; $7025: $ff
	xor  b                                           ; $7026: $a8
	ld   b, c                                        ; $7027: $41
	ld   de, $1111                                   ; $7028: $11 $11 $11
	ld   de, $1111                                   ; $702b: $11 $11 $11
	inc  d                                           ; $702e: $14
	sbc  a                                           ; $702f: $9f
	rst  $38                                         ; $7030: $ff
	rst  $38                                         ; $7031: $ff
	rst  $38                                         ; $7032: $ff
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	rst  $38                                         ; $7035: $ff
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	reti                                             ; $7039: $d9


	ld   h, d                                        ; $703a: $62
	ld   de, $1111                                   ; $703b: $11 $11 $11
	ld   de, $1111                                   ; $703e: $11 $11 $11
	ld   [de], a                                     ; $7041: $12
	ld   l, h                                        ; $7042: $6c
	rst  $38                                         ; $7043: $ff
	rst  $38                                         ; $7044: $ff
	rst  $38                                         ; $7045: $ff
	rst  $38                                         ; $7046: $ff
	rst  $38                                         ; $7047: $ff
	rst  $38                                         ; $7048: $ff
	rst  $38                                         ; $7049: $ff
	rst  $38                                         ; $704a: $ff
	rst  $38                                         ; $704b: $ff
	ei                                               ; $704c: $fb
	add  h                                           ; $704d: $84
	ld   de, $1111                                   ; $704e: $11 $11 $11
	ld   de, $1111                                   ; $7051: $11 $11 $11
	ld   de, $ff49                                   ; $7054: $11 $49 $ff
	rst  $38                                         ; $7057: $ff
	rst  $38                                         ; $7058: $ff
	rst  $38                                         ; $7059: $ff
	rst  $38                                         ; $705a: $ff
	rst  $38                                         ; $705b: $ff
	rst  $38                                         ; $705c: $ff
	rst  $38                                         ; $705d: $ff
	rst  $38                                         ; $705e: $ff
	db   $fd                                         ; $705f: $fd
	and  a                                           ; $7060: $a7
	ld   hl, $1111                                   ; $7061: $21 $11 $11
	ld   de, $1111                                   ; $7064: $11 $11 $11
	ld   de, $cf15                                   ; $7067: $11 $15 $cf
	rst  $38                                         ; $706a: $ff
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	rst  $38                                         ; $706d: $ff
	rst  $38                                         ; $706e: $ff
	rst  $38                                         ; $706f: $ff
	rst  $38                                         ; $7070: $ff
	rst  $38                                         ; $7071: $ff
	rst  $38                                         ; $7072: $ff
	cp   c                                           ; $7073: $b9
	ld   b, c                                        ; $7074: $41
	ld   de, $1111                                   ; $7075: $11 $11 $11
	ld   de, $1111                                   ; $7078: $11 $11 $11
	inc  de                                          ; $707b: $13
	sbc  a                                           ; $707c: $9f
	rst  $38                                         ; $707d: $ff
	rst  $38                                         ; $707e: $ff
	rst  $38                                         ; $707f: $ff
	rst  $38                                         ; $7080: $ff
	rst  $38                                         ; $7081: $ff
	rst  $38                                         ; $7082: $ff
	rst  $38                                         ; $7083: $ff
	rst  $38                                         ; $7084: $ff
	rst  $38                                         ; $7085: $ff
	db   $eb                                         ; $7086: $eb
	ld   [hl], e                                     ; $7087: $73
	ld   de, $1111                                   ; $7088: $11 $11 $11
	ld   de, $1111                                   ; $708b: $11 $11 $11
	ld   [de], a                                     ; $708e: $12
	ld   e, e                                        ; $708f: $5b
	rst  $38                                         ; $7090: $ff
	rst  $38                                         ; $7091: $ff
	rst  $38                                         ; $7092: $ff
	rst  $38                                         ; $7093: $ff
	rst  $38                                         ; $7094: $ff
	rst  $38                                         ; $7095: $ff
	rst  $38                                         ; $7096: $ff
	rst  $38                                         ; $7097: $ff
	rst  $38                                         ; $7098: $ff
	db   $fc                                         ; $7099: $fc
	sub  l                                           ; $709a: $95
	ld   de, $1111                                   ; $709b: $11 $11 $11
	ld   de, $1111                                   ; $709e: $11 $11 $11
	ld   de, $df38                                   ; $70a1: $11 $38 $df
	rst  $38                                         ; $70a4: $ff
	rst  $38                                         ; $70a5: $ff
	rst  $38                                         ; $70a6: $ff
	rst  $38                                         ; $70a7: $ff
	rst  $38                                         ; $70a8: $ff
	rst  $38                                         ; $70a9: $ff
	rst  $38                                         ; $70aa: $ff
	rst  $38                                         ; $70ab: $ff
	rst  $38                                         ; $70ac: $ff
	cp   c                                           ; $70ad: $b9
	ld   b, c                                        ; $70ae: $41
	ld   de, $1111                                   ; $70af: $11 $11 $11
	ld   de, $1111                                   ; $70b2: $11 $11 $11
	dec  h                                           ; $70b5: $25
	xor  a                                           ; $70b6: $af
	rst  $38                                         ; $70b7: $ff
	rst  $38                                         ; $70b8: $ff
	rst  $38                                         ; $70b9: $ff
	rst  $38                                         ; $70ba: $ff
	rst  $38                                         ; $70bb: $ff
	rst  $38                                         ; $70bc: $ff
	rst  $38                                         ; $70bd: $ff
	rst  $38                                         ; $70be: $ff
	rst  $38                                         ; $70bf: $ff
	ld   [$1161], a                                  ; $70c0: $ea $61 $11
	ld   de, $1111                                   ; $70c3: $11 $11 $11
	ld   de, $1611                                   ; $70c6: $11 $11 $16
	xor  [hl]                                        ; $70c9: $ae
	rst  $38                                         ; $70ca: $ff
	rst  $38                                         ; $70cb: $ff
	rst  $38                                         ; $70cc: $ff
	rst  $38                                         ; $70cd: $ff
	rst  $38                                         ; $70ce: $ff
	rst  $38                                         ; $70cf: $ff
	rst  $38                                         ; $70d0: $ff
	rst  $38                                         ; $70d1: $ff
	rst  $38                                         ; $70d2: $ff
	db   $eb                                         ; $70d3: $eb
	add  d                                           ; $70d4: $82
	ld   de, $1111                                   ; $70d5: $11 $11 $11
	ld   de, $1411                                   ; $70d8: $11 $11 $14
	ld   [hl], $bd                                   ; $70db: $36 $bd
	rst  $38                                         ; $70dd: $ff
	rst  $38                                         ; $70de: $ff
	rst  $38                                         ; $70df: $ff
	rst  $38                                         ; $70e0: $ff
	rst  $38                                         ; $70e1: $ff
	rst  $38                                         ; $70e2: $ff
	rst  $38                                         ; $70e3: $ff
	rst  $38                                         ; $70e4: $ff
	rst  $38                                         ; $70e5: $ff
	ld   a, [$1161]                                  ; $70e6: $fa $61 $11
	ld   de, $1111                                   ; $70e9: $11 $11 $11
	ld   de, $c85a                                   ; $70ec: $11 $5a $c8
	xor  a                                           ; $70ef: $af
	rst  $38                                         ; $70f0: $ff
	rst  $38                                         ; $70f1: $ff
	cp   $ff                                         ; $70f2: $fe $ff
	rst  $38                                         ; $70f4: $ff
	rst  $38                                         ; $70f5: $ff
	rst  $38                                         ; $70f6: $ff
	rst  $38                                         ; $70f7: $ff
	rst  $38                                         ; $70f8: $ff
	cp   $71                                         ; $70f9: $fe $71
	ld   de, $1111                                   ; $70fb: $11 $11 $11
	ld   de, $9e11                                   ; $70fe: $11 $11 $9e
	db   $fc                                         ; $7101: $fc
	ld   l, e                                        ; $7102: $6b
	rst  $38                                         ; $7103: $ff
	db   $fd                                         ; $7104: $fd
	cp   e                                           ; $7105: $bb
	rst  $38                                         ; $7106: $ff
	rst  $38                                         ; $7107: $ff
	rst  $38                                         ; $7108: $ff
	rst  $38                                         ; $7109: $ff
	rst  $38                                         ; $710a: $ff
	rst  $38                                         ; $710b: $ff
	rst  $38                                         ; $710c: $ff
	ld   [hl], c                                     ; $710d: $71
	ld   de, $1111                                   ; $710e: $11 $11 $11
	ld   de, $cf11                                   ; $7111: $11 $11 $cf
	rst  $38                                         ; $7114: $ff
	inc  [hl]                                        ; $7115: $34
	cp   e                                           ; $7116: $bb
	call c, $ef89                                    ; $7117: $dc $89 $ef
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	rst  $38                                         ; $711c: $ff
	rst  $38                                         ; $711d: $ff
	rst  $38                                         ; $711e: $ff
	cp   $a1                                         ; $711f: $fe $a1
	ld   de, $1111                                   ; $7121: $11 $11 $11
	ld   de, $9f12                                   ; $7124: $11 $12 $9f
	rst  $38                                         ; $7127: $ff
	ld   [hl], c                                     ; $7128: $71
	scf                                              ; $7129: $37
	xor  l                                           ; $712a: $ad
	cp   d                                           ; $712b: $ba
	cp   a                                           ; $712c: $bf
	rst  $38                                         ; $712d: $ff
	rst  $38                                         ; $712e: $ff
	rst  $38                                         ; $712f: $ff
	rst  $38                                         ; $7130: $ff
	rst  $38                                         ; $7131: $ff
	call z, $11b5                                    ; $7132: $cc $b5 $11
	ld   de, $1111                                   ; $7135: $11 $11 $11
	inc  de                                          ; $7138: $13
	ld   l, a                                        ; $7139: $6f
	rst  $38                                         ; $713a: $ff
	pop  af                                          ; $713b: $f1
	inc  de                                          ; $713c: $13
	ld   a, e                                        ; $713d: $7b
	call c, $ffbf                                    ; $713e: $dc $bf $ff
	rst  $38                                         ; $7141: $ff
	rst  $38                                         ; $7142: $ff
	rst  $38                                         ; $7143: $ff
	rst  $38                                         ; $7144: $ff
	res  7, d                                        ; $7145: $cb $ba
	ld   b, c                                        ; $7147: $41
	ld   de, $1611                                   ; $7148: $11 $11 $16
	dec  d                                           ; $714b: $15
	ld   e, c                                        ; $714c: $59
	rst  $38                                         ; $714d: $ff
	push af                                          ; $714e: $f5
	ld   de, $ff48                                   ; $714f: $11 $48 $ff
	adc  $ff                                         ; $7152: $ce $ff
	rst  $38                                         ; $7154: $ff
	rst  $38                                         ; $7155: $ff
	rst  JumpTable                                         ; $7156: $df
	rst  $38                                         ; $7157: $ff
	db   $ec                                         ; $7158: $ec
	cp   h                                           ; $7159: $bc
	add  d                                           ; $715a: $82
	ld   de, $1111                                   ; $715b: $11 $11 $11
	ld   h, h                                        ; $715e: $64
	sub  [hl]                                        ; $715f: $96
	cp   a                                           ; $7160: $bf
	rst  $38                                         ; $7161: $ff
	ld   de, $af13                                   ; $7162: $11 $13 $af
	rst  $38                                         ; $7165: $ff
	rst  $28                                         ; $7166: $ef
	rst  $38                                         ; $7167: $ff
	rst  $38                                         ; $7168: $ff
	db   $fd                                         ; $7169: $fd
	rst  $38                                         ; $716a: $ff
	db   $fd                                         ; $716b: $fd
	call z, $1195                                    ; $716c: $cc $95 $11
	ld   de, $1911                                   ; $716f: $11 $11 $19
	sbc  e                                           ; $7172: $9b
	ld   e, a                                        ; $7173: $5f
	rst  $38                                         ; $7174: $ff
	pop  af                                          ; $7175: $f1
	ld   de, $ff2e                                   ; $7176: $11 $2e $ff
	rst  $38                                         ; $7179: $ff
	rst  $38                                         ; $717a: $ff
	rst  $38                                         ; $717b: $ff
	rst  $38                                         ; $717c: $ff
	rst  JumpTable                                         ; $717d: $df
	rst  $38                                         ; $717e: $ff
	call c, Call_0e2_51c9                            ; $717f: $dc $c9 $51
	ld   de, $1111                                   ; $7182: $11 $11 $11
	ld   l, h                                        ; $7185: $6c
	or   [hl]                                        ; $7186: $b6
	rst  $38                                         ; $7187: $ff
	rst  $38                                         ; $7188: $ff
	ld   de, $df11                                   ; $7189: $11 $11 $df
	rst  $38                                         ; $718c: $ff
	rst  $38                                         ; $718d: $ff
	rst  $38                                         ; $718e: $ff
	rst  $38                                         ; $718f: $ff
	ld   [$feff], a                                  ; $7190: $ea $ff $fe
	jp   z, $1172                                    ; $7193: $ca $72 $11

	ld   de, $1711                                   ; $7196: $11 $11 $17
	db   $dd                                         ; $7199: $dd
	cp   l                                           ; $719a: $bd
	rst  JumpTable                                         ; $719b: $df
	ldh  a, [c]                                      ; $719c: $f2
	ld   de, $ff1d                                   ; $719d: $11 $1d $ff
	rst  $38                                         ; $71a0: $ff
	rst  $38                                         ; $71a1: $ff
	rst  $38                                         ; $71a2: $ff
	cp   $df                                         ; $71a3: $fe $df
	rst  $38                                         ; $71a5: $ff
	cp   $b7                                         ; $71a6: $fe $b7
	ld   hl, $1111                                   ; $71a8: $21 $11 $11
	ld   de, $e716                                   ; $71ab: $11 $16 $e7
	rst  $38                                         ; $71ae: $ff
	rst  $38                                         ; $71af: $ff
	ld   [hl], c                                     ; $71b0: $71
	ld   de, $ffae                                   ; $71b1: $11 $ae $ff
	rst  $38                                         ; $71b4: $ff
	rst  $38                                         ; $71b5: $ff
	rst  $38                                         ; $71b6: $ff
	cp   $ff                                         ; $71b7: $fe $ff
	rst  $38                                         ; $71b9: $ff
	rst  $28                                         ; $71ba: $ef
	ld   [hl], c                                     ; $71bb: $71
	ld   de, $1111                                   ; $71bc: $11 $11 $11
	ld   de, $8638                                   ; $71bf: $11 $38 $86
	rst  $38                                         ; $71c2: $ff
	rst  $38                                         ; $71c3: $ff
	ld   [hl], c                                     ; $71c4: $71
	ld   [de], a                                     ; $71c5: $12
	rst  $28                                         ; $71c6: $ef
	rst  $38                                         ; $71c7: $ff
	rst  $38                                         ; $71c8: $ff
	rst  $38                                         ; $71c9: $ff
	rst  $38                                         ; $71ca: $ff
	rst  $38                                         ; $71cb: $ff
	rst  $38                                         ; $71cc: $ff
	rst  $38                                         ; $71cd: $ff
	ret  z                                           ; $71ce: $c8

	ld   d, c                                        ; $71cf: $51
	ld   de, $1111                                   ; $71d0: $11 $11 $11
	ld   de, $1611                                   ; $71d3: $11 $11 $16
	rst  $38                                         ; $71d6: $ff
	rst  $38                                         ; $71d7: $ff
	ld   h, c                                        ; $71d8: $61
	jr   @+$01                                       ; $71d9: $18 $ff

	rst  $38                                         ; $71db: $ff
	rst  $38                                         ; $71dc: $ff
	rst  $38                                         ; $71dd: $ff
	rst  $38                                         ; $71de: $ff
	rst  $38                                         ; $71df: $ff
	rst  $38                                         ; $71e0: $ff
	db   $fd                                         ; $71e1: $fd
	rst  $10                                         ; $71e2: $d7
	ld   hl, $1111                                   ; $71e3: $21 $11 $11
	ld   de, $1111                                   ; $71e6: $11 $11 $11
	ld   de, $ff8f                                   ; $71e9: $11 $8f $ff
	db   $eb                                         ; $71ec: $eb
	add  l                                           ; $71ed: $85
	rst  $38                                         ; $71ee: $ff
	rst  $38                                         ; $71ef: $ff
	rst  $38                                         ; $71f0: $ff
	rst  $38                                         ; $71f1: $ff
	rst  $38                                         ; $71f2: $ff
	rst  $38                                         ; $71f3: $ff
	rst  $38                                         ; $71f4: $ff
	cp   $b8                                         ; $71f5: $fe $b8
	ld   d, c                                        ; $71f7: $51
	ld   de, $1111                                   ; $71f8: $11 $11 $11
	ld   de, $1111                                   ; $71fb: $11 $11 $11
	ld   [de], a                                     ; $71fe: $12
	rst  $38                                         ; $71ff: $ff
	rst  $38                                         ; $7200: $ff
	cp   e                                           ; $7201: $bb
	rst  $38                                         ; $7202: $ff
	rst  $38                                         ; $7203: $ff
	rst  JumpTable                                         ; $7204: $df
	rst  $38                                         ; $7205: $ff
	rst  $38                                         ; $7206: $ff
	rst  $38                                         ; $7207: $ff
	rst  $38                                         ; $7208: $ff
	rst  $38                                         ; $7209: $ff
	db   $fc                                         ; $720a: $fc
	ld   d, [hl]                                     ; $720b: $56
	ld   b, c                                        ; $720c: $41
	ld   de, $1111                                   ; $720d: $11 $11 $11
	ld   de, $1111                                   ; $7210: $11 $11 $11
	rra                                              ; $7213: $1f
	rst  $38                                         ; $7214: $ff
	rst  $38                                         ; $7215: $ff
	xor  a                                           ; $7216: $af
	cp   $fe                                         ; $7217: $fe $fe
	rst  $38                                         ; $7219: $ff
	rst  $38                                         ; $721a: $ff
	rst  $38                                         ; $721b: $ff
	rst  $38                                         ; $721c: $ff
	rst  $38                                         ; $721d: $ff
	db   $dd                                         ; $721e: $dd
	db   $fd                                         ; $721f: $fd
	ld   [hl], e                                     ; $7220: $73
	ld   hl, $1111                                   ; $7221: $21 $11 $11
	ld   de, $1111                                   ; $7224: $11 $11 $11
	ld   de, $8e13                                   ; $7227: $11 $13 $8e
	db   $dd                                         ; $722a: $dd
	rst  $38                                         ; $722b: $ff
	rst  $38                                         ; $722c: $ff
	rst  $38                                         ; $722d: $ff
	rst  $38                                         ; $722e: $ff
	rst  $38                                         ; $722f: $ff
	rst  $38                                         ; $7230: $ff
	xor  $fc                                         ; $7231: $ee $fc
	db   $eb                                         ; $7233: $eb
	rst  $38                                         ; $7234: $ff
	call c, $1167                                    ; $7235: $dc $67 $11
	ld   de, $1111                                   ; $7238: $11 $11 $11
	ld   de, $1111                                   ; $723b: $11 $11 $11
	ld   de, $fa18                                   ; $723e: $11 $18 $fa
	rst  $38                                         ; $7241: $ff
	rst  $38                                         ; $7242: $ff
	rst  $38                                         ; $7243: $ff
	rst  $38                                         ; $7244: $ff
	rst  $38                                         ; $7245: $ff
	rst  $38                                         ; $7246: $ff
	db   $fc                                         ; $7247: $fc
	cp   [hl]                                        ; $7248: $be
	db   $fc                                         ; $7249: $fc
	rst  $10                                         ; $724a: $d7
	cp   d                                           ; $724b: $ba
	ld   a, c                                        ; $724c: $79
	dec  d                                           ; $724d: $15
	inc  sp                                          ; $724e: $33
	ld   hl, $1111                                   ; $724f: $21 $11 $11
	ld   de, $1111                                   ; $7252: $11 $11 $11
	ld   de, $7635                                   ; $7255: $11 $35 $76
	call z, $ffbf                                    ; $7258: $cc $bf $ff
	rst  $38                                         ; $725b: $ff
	rst  $38                                         ; $725c: $ff
	rst  $38                                         ; $725d: $ff
	db   $fc                                         ; $725e: $fc
	xor  e                                           ; $725f: $ab
	res  3, b                                        ; $7260: $cb $98
	sbc  c                                           ; $7262: $99
	and  l                                           ; $7263: $a5
	ld   [hl], l                                     ; $7264: $75
	ld   a, c                                        ; $7265: $79
	halt                                             ; $7266: $76
	inc  sp                                          ; $7267: $33
	ld   c, c                                        ; $7268: $49
	ld   [hl], h                                     ; $7269: $74
	ld   b, h                                        ; $726a: $44
	ld   h, l                                        ; $726b: $65
	ld   h, l                                        ; $726c: $65
	ld   b, e                                        ; $726d: $43
	ld   l, c                                        ; $726e: $69
	ld   h, l                                        ; $726f: $65
	ld   h, a                                        ; $7270: $67
	reti                                             ; $7271: $d9


	ld   a, c                                        ; $7272: $79
	ld   a, d                                        ; $7273: $7a
	xor  d                                           ; $7274: $aa
	sbc  c                                           ; $7275: $99
	ret                                              ; $7276: $c9


	res  7, e                                        ; $7277: $cb $bb
	cp   l                                           ; $7279: $bd
	sbc  d                                           ; $727a: $9a
	sbc  b                                           ; $727b: $98
	cp   c                                           ; $727c: $b9
	xor  c                                           ; $727d: $a9
	sbc  b                                           ; $727e: $98
	xor  d                                           ; $727f: $aa
	sbc  d                                           ; $7280: $9a
	adc  e                                           ; $7281: $8b
	xor  d                                           ; $7282: $aa
	and  a                                           ; $7283: $a7
	add  [hl]                                        ; $7284: $86
	sbc  c                                           ; $7285: $99
	sub  [hl]                                        ; $7286: $96
	ld   l, b                                        ; $7287: $68
	ld   a, c                                        ; $7288: $79
	ld   h, [hl]                                     ; $7289: $66
	add  a                                           ; $728a: $87
	add  a                                           ; $728b: $87
	ld   [hl], a                                     ; $728c: $77
	ld   a, b                                        ; $728d: $78
	ld   [hl], a                                     ; $728e: $77
	ld   [hl], a                                     ; $728f: $77
	ld   l, c                                        ; $7290: $69
	sub  a                                           ; $7291: $97
	adc  c                                           ; $7292: $89
	xor  h                                           ; $7293: $ac
	xor  c                                           ; $7294: $a9
	xor  d                                           ; $7295: $aa
	sbc  h                                           ; $7296: $9c
	adc  d                                           ; $7297: $8a
	cp   d                                           ; $7298: $ba
	xor  b                                           ; $7299: $a8
	sbc  c                                           ; $729a: $99
	sbc  c                                           ; $729b: $99
	add  [hl]                                        ; $729c: $86
	ld   a, c                                        ; $729d: $79
	ld   [hl], a                                     ; $729e: $77
	ld   [hl], a                                     ; $729f: $77
	adc  b                                           ; $72a0: $88
	sub  a                                           ; $72a1: $97
	add  a                                           ; $72a2: $87
	add  a                                           ; $72a3: $87
	ld   a, b                                        ; $72a4: $78
	ld   h, a                                        ; $72a5: $67
	xor  b                                           ; $72a6: $a8
	ld   a, b                                        ; $72a7: $78
	sbc  c                                           ; $72a8: $99
	xor  b                                           ; $72a9: $a8
	sbc  c                                           ; $72aa: $99
	sbc  d                                           ; $72ab: $9a
	adc  b                                           ; $72ac: $88
	adc  c                                           ; $72ad: $89
	sbc  d                                           ; $72ae: $9a
	sbc  b                                           ; $72af: $98
	sbc  b                                           ; $72b0: $98
	xor  d                                           ; $72b1: $aa
	add  a                                           ; $72b2: $87
	ld   a, b                                        ; $72b3: $78
	ld   a, b                                        ; $72b4: $78
	ld   [hl], a                                     ; $72b5: $77
	halt                                             ; $72b6: $76
	ld   [hl], a                                     ; $72b7: $77
	ld   [hl], a                                     ; $72b8: $77
	ld   h, a                                        ; $72b9: $67
	ld   [hl], a                                     ; $72ba: $77
	ld   a, b                                        ; $72bb: $78
	sub  a                                           ; $72bc: $97
	sub  a                                           ; $72bd: $97
	ld   a, b                                        ; $72be: $78
	ld   a, c                                        ; $72bf: $79
	adc  c                                           ; $72c0: $89
	ld   a, b                                        ; $72c1: $78
	sbc  c                                           ; $72c2: $99
	and  a                                           ; $72c3: $a7
	sbc  c                                           ; $72c4: $99
	adc  d                                           ; $72c5: $8a
	adc  c                                           ; $72c6: $89
	add  a                                           ; $72c7: $87
	sbc  b                                           ; $72c8: $98
	ld   [hl], a                                     ; $72c9: $77
	add  a                                           ; $72ca: $87
	halt                                             ; $72cb: $76
	ld   h, [hl]                                     ; $72cc: $66
	halt                                             ; $72cd: $76
	ld   [hl], a                                     ; $72ce: $77
	ld   l, b                                        ; $72cf: $68
	ld   a, b                                        ; $72d0: $78
	add  a                                           ; $72d1: $87
	add  a                                           ; $72d2: $87
	adc  b                                           ; $72d3: $88
	ld   a, c                                        ; $72d4: $79
	adc  c                                           ; $72d5: $89
	adc  b                                           ; $72d6: $88
	add  a                                           ; $72d7: $87
	sbc  b                                           ; $72d8: $98
	adc  c                                           ; $72d9: $89
	ld   a, d                                        ; $72da: $7a
	ld   a, c                                        ; $72db: $79
	sbc  b                                           ; $72dc: $98
	sub  a                                           ; $72dd: $97
	add  a                                           ; $72de: $87
	sub  a                                           ; $72df: $97
	ld   [hl], a                                     ; $72e0: $77
	ld   e, b                                        ; $72e1: $58
	ld   l, b                                        ; $72e2: $68
	ld   [hl], a                                     ; $72e3: $77
	ld   [hl], a                                     ; $72e4: $77
	add  [hl]                                        ; $72e5: $86
	add  [hl]                                        ; $72e6: $86
	adc  b                                           ; $72e7: $88
	ld   l, b                                        ; $72e8: $68
	ld   [hl], a                                     ; $72e9: $77
	sub  a                                           ; $72ea: $97
	sub  a                                           ; $72eb: $97
	sbc  b                                           ; $72ec: $98
	adc  b                                           ; $72ed: $88
	ld   a, c                                        ; $72ee: $79
	adc  c                                           ; $72ef: $89
	adc  c                                           ; $72f0: $89
	sbc  c                                           ; $72f1: $99
	add  [hl]                                        ; $72f2: $86
	sub  a                                           ; $72f3: $97
	add  a                                           ; $72f4: $87
	adc  b                                           ; $72f5: $88
	ld   a, b                                        ; $72f6: $78
	ld   a, b                                        ; $72f7: $78
	ld   [hl], a                                     ; $72f8: $77
	add  a                                           ; $72f9: $87
	ld   a, b                                        ; $72fa: $78
	ld   [hl], a                                     ; $72fb: $77
	ld   a, b                                        ; $72fc: $78
	ld   a, b                                        ; $72fd: $78
	add  [hl]                                        ; $72fe: $86
	sbc  b                                           ; $72ff: $98
	adc  b                                           ; $7300: $88
	ld   [hl], a                                     ; $7301: $77
	adc  c                                           ; $7302: $89
	adc  c                                           ; $7303: $89
	adc  b                                           ; $7304: $88
	sbc  b                                           ; $7305: $98
	add  a                                           ; $7306: $87
	add  a                                           ; $7307: $87
	adc  b                                           ; $7308: $88
	ld   l, c                                        ; $7309: $69
	ld   l, c                                        ; $730a: $69
	add  a                                           ; $730b: $87
	sub  a                                           ; $730c: $97
	sub  a                                           ; $730d: $97
	add  a                                           ; $730e: $87
	ld   a, c                                        ; $730f: $79
	ld   a, b                                        ; $7310: $78
	add  a                                           ; $7311: $87
	adc  b                                           ; $7312: $88
	add  a                                           ; $7313: $87
	ld   a, b                                        ; $7314: $78
	sub  a                                           ; $7315: $97
	sub  a                                           ; $7316: $97
	adc  c                                           ; $7317: $89
	adc  b                                           ; $7318: $88
	ld   a, b                                        ; $7319: $78
	ld   [hl], a                                     ; $731a: $77
	ld   a, b                                        ; $731b: $78
	ld   a, b                                        ; $731c: $78
	ld   [hl], a                                     ; $731d: $77
	sbc  b                                           ; $731e: $98
	ld   a, b                                        ; $731f: $78
	adc  b                                           ; $7320: $88
	ld   a, b                                        ; $7321: $78
	ld   a, c                                        ; $7322: $79
	ld   [hl], a                                     ; $7323: $77
	sub  a                                           ; $7324: $97
	sub  a                                           ; $7325: $97
	adc  c                                           ; $7326: $89
	adc  b                                           ; $7327: $88
	adc  c                                           ; $7328: $89
	ld   a, c                                        ; $7329: $79
	ld   a, c                                        ; $732a: $79
	adc  b                                           ; $732b: $88
	sub  a                                           ; $732c: $97
	sbc  b                                           ; $732d: $98
	ld   a, c                                        ; $732e: $79
	add  a                                           ; $732f: $87
	sub  a                                           ; $7330: $97
	add  a                                           ; $7331: $87
	ld   a, b                                        ; $7332: $78
	ld   a, c                                        ; $7333: $79
	ld   a, b                                        ; $7334: $78
	ld   a, b                                        ; $7335: $78
	adc  b                                           ; $7336: $88
	add  a                                           ; $7337: $87
	sub  a                                           ; $7338: $97
	adc  b                                           ; $7339: $88
	adc  c                                           ; $733a: $89
	ld   a, c                                        ; $733b: $79
	adc  b                                           ; $733c: $88
	sbc  b                                           ; $733d: $98
	adc  b                                           ; $733e: $88
	adc  c                                           ; $733f: $89
	adc  b                                           ; $7340: $88
	sbc  b                                           ; $7341: $98
	add  a                                           ; $7342: $87
	adc  b                                           ; $7343: $88
	add  a                                           ; $7344: $87
	adc  b                                           ; $7345: $88
	ld   a, b                                        ; $7346: $78
	ld   a, b                                        ; $7347: $78
	add  a                                           ; $7348: $87
	add  a                                           ; $7349: $87
	add  a                                           ; $734a: $87
	ld   a, b                                        ; $734b: $78
	sbc  b                                           ; $734c: $98
	adc  c                                           ; $734d: $89
	adc  c                                           ; $734e: $89
	adc  b                                           ; $734f: $88
	adc  c                                           ; $7350: $89
	adc  b                                           ; $7351: $88
	adc  b                                           ; $7352: $88
	adc  c                                           ; $7353: $89
	adc  b                                           ; $7354: $88
	add  a                                           ; $7355: $87
	sub  a                                           ; $7356: $97
	adc  c                                           ; $7357: $89
	adc  b                                           ; $7358: $88
	adc  b                                           ; $7359: $88
	adc  b                                           ; $735a: $88
	adc  b                                           ; $735b: $88
	adc  c                                           ; $735c: $89
	ld   a, c                                        ; $735d: $79
	adc  b                                           ; $735e: $88
	sub  a                                           ; $735f: $97
	add  a                                           ; $7360: $87
	adc  c                                           ; $7361: $89
	adc  b                                           ; $7362: $88
	ld   a, d                                        ; $7363: $7a
	add  a                                           ; $7364: $87
	and  a                                           ; $7365: $a7
	adc  b                                           ; $7366: $88
	sbc  b                                           ; $7367: $98
	ld   a, b                                        ; $7368: $78
	adc  c                                           ; $7369: $89
	ld   a, c                                        ; $736a: $79
	ld   a, b                                        ; $736b: $78
	add  a                                           ; $736c: $87
	and  [hl]                                        ; $736d: $a6
	and  a                                           ; $736e: $a7
	adc  c                                           ; $736f: $89
	ld   a, c                                        ; $7370: $79
	ld   a, d                                        ; $7371: $7a
	ld   a, c                                        ; $7372: $79
	add  a                                           ; $7373: $87
	sub  a                                           ; $7374: $97
	sub  a                                           ; $7375: $97
	ld   a, c                                        ; $7376: $79
	ld   a, c                                        ; $7377: $79
	adc  b                                           ; $7378: $88
	adc  b                                           ; $7379: $88
	sub  a                                           ; $737a: $97
	sbc  b                                           ; $737b: $98
	adc  b                                           ; $737c: $88
	ld   a, d                                        ; $737d: $7a
	add  a                                           ; $737e: $87
	sub  a                                           ; $737f: $97
	sbc  c                                           ; $7380: $99
	ld   a, c                                        ; $7381: $79
	add  a                                           ; $7382: $87
	sub  a                                           ; $7383: $97
	sbc  c                                           ; $7384: $99
	ld   a, c                                        ; $7385: $79
	adc  b                                           ; $7386: $88
	adc  c                                           ; $7387: $89
	ld   a, b                                        ; $7388: $78
	and  a                                           ; $7389: $a7
	sub  a                                           ; $738a: $97
	ld   a, d                                        ; $738b: $7a
	ld   h, a                                        ; $738c: $67
	adc  b                                           ; $738d: $88
	sub  a                                           ; $738e: $97
	adc  b                                           ; $738f: $88
	adc  c                                           ; $7390: $89
	adc  c                                           ; $7391: $89
	adc  d                                           ; $7392: $8a
	adc  b                                           ; $7393: $88
	sub  a                                           ; $7394: $97
	add  a                                           ; $7395: $87
	ld   a, c                                        ; $7396: $79
	ld   [hl], a                                     ; $7397: $77
	ld   [hl], a                                     ; $7398: $77
	xor  c                                           ; $7399: $a9
	ld   a, b                                        ; $739a: $78
	adc  b                                           ; $739b: $88
	adc  b                                           ; $739c: $88
	ld   l, b                                        ; $739d: $68
	sbc  c                                           ; $739e: $99
	ld   [hl], a                                     ; $739f: $77
	ld   a, b                                        ; $73a0: $78
	and  a                                           ; $73a1: $a7
	sub  a                                           ; $73a2: $97
	and  a                                           ; $73a3: $a7
	adc  c                                           ; $73a4: $89
	ld   l, d                                        ; $73a5: $6a
	ld   l, b                                        ; $73a6: $68
	and  a                                           ; $73a7: $a7
	and  a                                           ; $73a8: $a7
	xor  c                                           ; $73a9: $a9
	adc  b                                           ; $73aa: $88
	ld   a, d                                        ; $73ab: $7a
	ld   l, c                                        ; $73ac: $69
	ld   [hl], a                                     ; $73ad: $77
	or   a                                           ; $73ae: $b7
	ld   a, b                                        ; $73af: $78
	adc  c                                           ; $73b0: $89
	and  a                                           ; $73b1: $a7
	ld   l, d                                        ; $73b2: $6a
	adc  c                                           ; $73b3: $89
	ld   a, b                                        ; $73b4: $78
	sub  a                                           ; $73b5: $97
	or   [hl]                                        ; $73b6: $b6
	adc  c                                           ; $73b7: $89
	ld   a, e                                        ; $73b8: $7b
	ld   e, c                                        ; $73b9: $59
	adc  c                                           ; $73ba: $89
	sub  a                                           ; $73bb: $97
	ld   [hl], l                                     ; $73bc: $75
	and  a                                           ; $73bd: $a7
	sbc  b                                           ; $73be: $98
	ld   a, b                                        ; $73bf: $78
	adc  c                                           ; $73c0: $89
	adc  b                                           ; $73c1: $88
	adc  c                                           ; $73c2: $89
	adc  c                                           ; $73c3: $89
	adc  b                                           ; $73c4: $88
	ld   a, b                                        ; $73c5: $78
	xor  b                                           ; $73c6: $a8
	adc  c                                           ; $73c7: $89
	ld   [hl], a                                     ; $73c8: $77
	xor  b                                           ; $73c9: $a8
	sub  a                                           ; $73ca: $97
	ld   l, c                                        ; $73cb: $69
	ld   l, b                                        ; $73cc: $68
	ld   c, b                                        ; $73cd: $48
	sub  [hl]                                        ; $73ce: $96
	and  l                                           ; $73cf: $a5
	adc  e                                           ; $73d0: $8b
	xor  h                                           ; $73d1: $ac
	adc  e                                           ; $73d2: $8b
	xor  h                                           ; $73d3: $ac
	add  [hl]                                        ; $73d4: $86
	sub  [hl]                                        ; $73d5: $96
	or   a                                           ; $73d6: $b7
	ld   d, [hl]                                     ; $73d7: $56
	ld   l, e                                        ; $73d8: $6b
	ld   [hl], a                                     ; $73d9: $77
	ld   h, a                                        ; $73da: $67
	and  a                                           ; $73db: $a7
	add  l                                           ; $73dc: $85
	ld   a, c                                        ; $73dd: $79
	ld   a, b                                        ; $73de: $78
	ld   l, b                                        ; $73df: $68
	ld   a, c                                        ; $73e0: $79
	sub  l                                           ; $73e1: $95
	adc  c                                           ; $73e2: $89
	adc  b                                           ; $73e3: $88
	add  [hl]                                        ; $73e4: $86
	ld   a, d                                        ; $73e5: $7a
	ld   h, a                                        ; $73e6: $67
	add  a                                           ; $73e7: $87
	sub  [hl]                                        ; $73e8: $96
	adc  b                                           ; $73e9: $88
	ld   [hl], a                                     ; $73ea: $77
	adc  b                                           ; $73eb: $88
	ld   a, c                                        ; $73ec: $79
	adc  c                                           ; $73ed: $89
	ld   a, b                                        ; $73ee: $78
	ld   a, b                                        ; $73ef: $78
	ld   [hl], a                                     ; $73f0: $77
	add  [hl]                                        ; $73f1: $86
	adc  b                                           ; $73f2: $88
	ld   h, a                                        ; $73f3: $67
	xor  d                                           ; $73f4: $aa
	add  l                                           ; $73f5: $85
	ld   a, c                                        ; $73f6: $79
	sbc  b                                           ; $73f7: $98
	add  a                                           ; $73f8: $87
	ld   a, c                                        ; $73f9: $79
	ld   l, c                                        ; $73fa: $69
	ld   e, d                                        ; $73fb: $5a
	cp   c                                           ; $73fc: $b9
	add  e                                           ; $73fd: $83
	res  0, [hl]                                     ; $73fe: $cb $86
	ld   a, h                                        ; $7400: $7c
	add  [hl]                                        ; $7401: $86
	add  h                                           ; $7402: $84
	halt                                             ; $7403: $76
	add  [hl]                                        ; $7404: $86
	ld   c, e                                        ; $7405: $4b
	ld   h, a                                        ; $7406: $67
	ld   b, a                                        ; $7407: $47
	xor  c                                           ; $7408: $a9
	sub  c                                           ; $7409: $91
	xor  e                                           ; $740a: $ab
	cp   e                                           ; $740b: $bb
	ld   h, a                                        ; $740c: $67
	ld   l, e                                        ; $740d: $6b
	add  h                                           ; $740e: $84
	add  [hl]                                        ; $740f: $86
	jp   z, $1cb7                                    ; $7410: $ca $b7 $1c

	add  a                                           ; $7413: $87
	ld   h, e                                        ; $7414: $63
	call nz, Call_0e2_7869                           ; $7415: $c4 $69 $78
	ld   a, e                                        ; $7418: $7b
	ld   h, h                                        ; $7419: $64
	cp   d                                           ; $741a: $ba
	ld   h, [hl]                                     ; $741b: $66
	adc  d                                           ; $741c: $8a
	adc  b                                           ; $741d: $88
	sub  l                                           ; $741e: $95
	ld   d, a                                        ; $741f: $57
	adc  b                                           ; $7420: $88
	jr   z, jr_0e2_7498                              ; $7421: $28 $75

	inc  [hl]                                        ; $7423: $34
	sub  h                                           ; $7424: $94
	ld   h, e                                        ; $7425: $63
	dec  [hl]                                        ; $7426: $35
	ld   e, c                                        ; $7427: $59
	ld   de, $6124                                   ; $7428: $11 $24 $61
	ld   d, d                                        ; $742b: $52
	adc  e                                           ; $742c: $8b
	ld   a, l                                        ; $742d: $7d
	ld   e, a                                        ; $742e: $5f
	rst  $38                                         ; $742f: $ff
	db   $fc                                         ; $7430: $fc
	rst  $38                                         ; $7431: $ff
	rst  $38                                         ; $7432: $ff
	cp   a                                           ; $7433: $bf
	rst  $38                                         ; $7434: $ff
	cp   d                                           ; $7435: $ba
	xor  b                                           ; $7436: $a8
	db   $f4                                         ; $7437: $f4
	ld   b, e                                        ; $7438: $43
	ld   c, b                                        ; $7439: $48
	ld   de, $1111                                   ; $743a: $11 $11 $11
	ld   de, $1111                                   ; $743d: $11 $11 $11
	ld   de, $3b11                                   ; $7440: $11 $11 $3b
	rst  $38                                         ; $7443: $ff
	rst  $38                                         ; $7444: $ff
	rst  $38                                         ; $7445: $ff
	rst  $38                                         ; $7446: $ff
	rst  $38                                         ; $7447: $ff
	rst  $38                                         ; $7448: $ff
	rst  $38                                         ; $7449: $ff
	rst  $38                                         ; $744a: $ff
	ld   [hl], l                                     ; $744b: $75
	inc  de                                          ; $744c: $13
	ld   b, c                                        ; $744d: $41
	ld   de, $1133                                   ; $744e: $11 $33 $11
	ld   de, $1111                                   ; $7451: $11 $11 $11
	ld   de, $1111                                   ; $7454: $11 $11 $11
	ld   e, b                                        ; $7457: $58
	ld   a, a                                        ; $7458: $7f
	rst  $38                                         ; $7459: $ff
	rst  $38                                         ; $745a: $ff
	rst  $38                                         ; $745b: $ff
	rst  $38                                         ; $745c: $ff
	rst  $38                                         ; $745d: $ff
	rst  $38                                         ; $745e: $ff
	jp   nz, $1123                                   ; $745f: $c2 $23 $11

	ld   de, $2112                                   ; $7462: $11 $12 $21
	ld   de, $1111                                   ; $7465: $11 $11 $11
	ld   de, $1111                                   ; $7468: $11 $11 $11
	ld   de, $ff6b                                   ; $746b: $11 $6b $ff
	rst  $38                                         ; $746e: $ff
	rst  $38                                         ; $746f: $ff
	rst  $38                                         ; $7470: $ff
	rst  $38                                         ; $7471: $ff
	rst  $38                                         ; $7472: $ff
	rst  $30                                         ; $7473: $f7
	ld   de, $1111                                   ; $7474: $11 $11 $11
	ld   de, $1112                                   ; $7477: $11 $12 $11
	ld   de, $1111                                   ; $747a: $11 $11 $11
	ld   de, $1611                                   ; $747d: $11 $11 $16
	sbc  l                                           ; $7480: $9d
	rst  $38                                         ; $7481: $ff
	rst  $38                                         ; $7482: $ff
	rst  $38                                         ; $7483: $ff
	rst  $38                                         ; $7484: $ff
	rst  $38                                         ; $7485: $ff
	rst  $38                                         ; $7486: $ff
	or   $11                                         ; $7487: $f6 $11
	ld   de, $1111                                   ; $7489: $11 $11 $11
	ld   de, $1111                                   ; $748c: $11 $11 $11
	ld   de, $1111                                   ; $748f: $11 $11 $11
	rra                                              ; $7492: $1f
	push de                                          ; $7493: $d5
	rst  JumpTable                                         ; $7494: $df
	rst  $38                                         ; $7495: $ff
	rst  $38                                         ; $7496: $ff
	rst  $38                                         ; $7497: $ff

Jump_0e2_7498:
jr_0e2_7498:
	rst  $38                                         ; $7498: $ff
	rst  $38                                         ; $7499: $ff
	rst  $30                                         ; $749a: $f7
	ld   de, $1121                                   ; $749b: $11 $21 $11
	ld   de, $1111                                   ; $749e: $11 $11 $11
	ld   de, $1111                                   ; $74a1: $11 $11 $11
	ld   de, $dc1b                                   ; $74a4: $11 $1b $dc
	rst  $38                                         ; $74a7: $ff
	rst  $38                                         ; $74a8: $ff
	rst  $38                                         ; $74a9: $ff
	rst  $38                                         ; $74aa: $ff
	rst  $38                                         ; $74ab: $ff
	rst  $38                                         ; $74ac: $ff
	ld   hl, sp+$11                                  ; $74ad: $f8 $11
	ld   de, $1111                                   ; $74af: $11 $11 $11
	ld   de, $1111                                   ; $74b2: $11 $11 $11
	ld   de, $1111                                   ; $74b5: $11 $11 $11
	dec  hl                                          ; $74b8: $2b
	sbc  e                                           ; $74b9: $9b
	rst  $38                                         ; $74ba: $ff
	rst  $38                                         ; $74bb: $ff
	rst  $38                                         ; $74bc: $ff
	rst  $38                                         ; $74bd: $ff
	rst  $38                                         ; $74be: $ff
	rst  $38                                         ; $74bf: $ff
	or   c                                           ; $74c0: $b1
	ld   de, $1111                                   ; $74c1: $11 $11 $11
	ld   de, $1111                                   ; $74c4: $11 $11 $11
	ld   de, $1111                                   ; $74c7: $11 $11 $11
	ld   de, $4c9c                                   ; $74ca: $11 $9c $4c
	rst  $38                                         ; $74cd: $ff
	rst  $38                                         ; $74ce: $ff
	rst  $38                                         ; $74cf: $ff
	rst  $38                                         ; $74d0: $ff
	rst  $38                                         ; $74d1: $ff
	rst  $38                                         ; $74d2: $ff
	ld   hl, $1111                                   ; $74d3: $21 $11 $11
	ld   de, $1121                                   ; $74d6: $11 $21 $11
	ld   sp, $1111                                   ; $74d9: $31 $11 $11
	ld   de, $ca11                                   ; $74dc: $11 $11 $ca
	ccf                                              ; $74df: $3f
	rst  $38                                         ; $74e0: $ff
	rst  $38                                         ; $74e1: $ff
	rst  $38                                         ; $74e2: $ff
	rst  $38                                         ; $74e3: $ff
	rst  $38                                         ; $74e4: $ff
	ei                                               ; $74e5: $fb
	ld   de, $1111                                   ; $74e6: $11 $11 $11
	ld   de, $1241                                   ; $74e9: $11 $41 $12
	ld   d, c                                        ; $74ec: $51
	ld   de, $1116                                   ; $74ed: $11 $16 $11
	rra                                              ; $74f0: $1f
	or   d                                           ; $74f1: $b2
	ld   e, a                                        ; $74f2: $5f
	rst  $38                                         ; $74f3: $ff
	rst  $38                                         ; $74f4: $ff
	rst  $38                                         ; $74f5: $ff
	rst  $38                                         ; $74f6: $ff
	rst  $38                                         ; $74f7: $ff
	ldh  a, [c]                                      ; $74f8: $f2
	ld   de, $1101                                   ; $74f9: $11 $01 $11
	rla                                              ; $74fc: $17
	ld   d, c                                        ; $74fd: $51
	dec  hl                                          ; $74fe: $2b
	ld   hl, $1111                                   ; $74ff: $21 $11 $11
	ld   de, $a21d                                   ; $7502: $11 $1d $a2
	cp   a                                           ; $7505: $bf
	rst  $38                                         ; $7506: $ff
	rst  $38                                         ; $7507: $ff
	rst  $38                                         ; $7508: $ff
	rst  $38                                         ; $7509: $ff
	rst  $38                                         ; $750a: $ff
	pop  de                                          ; $750b: $d1
	ld   de, $1111                                   ; $750c: $11 $11 $11
	add  hl, de                                      ; $750f: $19
	ld   d, c                                        ; $7510: $51
	add  hl, sp                                      ; $7511: $39
	ld   de, $b111                                   ; $7512: $11 $11 $b1
	ld   de, $54df                                   ; $7515: $11 $df $54
	rst  $38                                         ; $7518: $ff
	rst  $38                                         ; $7519: $ff
	rst  $38                                         ; $751a: $ff
	rst  $38                                         ; $751b: $ff
	rst  $38                                         ; $751c: $ff
	rst  $38                                         ; $751d: $ff
	ld   b, c                                        ; $751e: $41
	ld   de, $1111                                   ; $751f: $11 $11 $11
	xor  b                                           ; $7522: $a8
	ld   de, $1194                                   ; $7523: $11 $94 $11
	inc  de                                          ; $7526: $13
	ld   b, c                                        ; $7527: $41
	ld   [de], a                                     ; $7528: $12
	db   $fd                                         ; $7529: $fd
	jr   @+$01                                       ; $752a: $18 $ff

	rst  $38                                         ; $752c: $ff
	rst  $38                                         ; $752d: $ff
	rst  $38                                         ; $752e: $ff
	rst  $38                                         ; $752f: $ff
	db   $fd                                         ; $7530: $fd
	ld   de, $1111                                   ; $7531: $11 $11 $11
	inc  d                                           ; $7534: $14
	jp   $8116                                       ; $7535: $c3 $16 $81


	ld   de, $111e                                   ; $7538: $11 $1e $11
	rra                                              ; $753b: $1f
	pop  af                                          ; $753c: $f1
	ccf                                              ; $753d: $3f
	rst  $38                                         ; $753e: $ff
	rst  $38                                         ; $753f: $ff
	rst  $38                                         ; $7540: $ff
	rst  $38                                         ; $7541: $ff
	rst  $38                                         ; $7542: $ff
	pop  af                                          ; $7543: $f1
	ld   de, $1111                                   ; $7544: $11 $11 $11
	inc  a                                           ; $7547: $3c
	add  c                                           ; $7548: $81
	dec  a                                           ; $7549: $3d
	ld   sp, $9111                                   ; $754a: $31 $11 $91
	ld   de, $918f                                   ; $754d: $11 $8f $91
	rst  JumpTable                                         ; $7550: $df
	rst  $38                                         ; $7551: $ff
	rst  $38                                         ; $7552: $ff
	rst  $38                                         ; $7553: $ff
	rst  $38                                         ; $7554: $ff
	rst  $38                                         ; $7555: $ff
	ld   h, c                                        ; $7556: $61
	ld   de, $1111                                   ; $7557: $11 $11 $11
	cp   c                                           ; $755a: $b9
	ld   de, $11d8                                   ; $755b: $11 $d8 $11
	ld   de, $1171                                   ; $755e: $11 $71 $11
	cp   $17                                         ; $7561: $fe $17
	rst  $38                                         ; $7563: $ff
	rst  $38                                         ; $7564: $ff
	rst  $38                                         ; $7565: $ff
	rst  $38                                         ; $7566: $ff
	rst  $38                                         ; $7567: $ff
	db   $fc                                         ; $7568: $fc
	ld   de, $1111                                   ; $7569: $11 $11 $11
	ld   d, $b3                                      ; $756c: $16 $b3
	add  hl, de                                      ; $756e: $19
	pop  de                                          ; $756f: $d1
	ld   de, $111b                                   ; $7570: $11 $1b $11
	rra                                              ; $7573: $1f
	pop  af                                          ; $7574: $f1
	rra                                              ; $7575: $1f
	rst  $38                                         ; $7576: $ff
	rst  $38                                         ; $7577: $ff
	rst  $38                                         ; $7578: $ff
	rst  $38                                         ; $7579: $ff
	rst  $38                                         ; $757a: $ff
	pop  af                                          ; $757b: $f1
	ld   de, $1111                                   ; $757c: $11 $11 $11
	jr   z, jr_0e2_75b2                              ; $757f: $28 $31

	ld   e, [hl]                                     ; $7581: $5e
	ld   hl, $9111                                   ; $7582: $21 $11 $91
	ld   de, $51af                                   ; $7585: $11 $af $51
	rst  $38                                         ; $7588: $ff
	rst  $38                                         ; $7589: $ff
	rst  $38                                         ; $758a: $ff
	rst  $38                                         ; $758b: $ff
	rst  $38                                         ; $758c: $ff
	rst  $38                                         ; $758d: $ff
	ld   b, c                                        ; $758e: $41
	ld   de, $1111                                   ; $758f: $11 $11 $11
	sub  l                                           ; $7592: $95
	ld   de, $11f8                                   ; $7593: $11 $f8 $11
	ld   de, $1111                                   ; $7596: $11 $11 $11
	ei                                               ; $7599: $fb
	rla                                              ; $759a: $17
	rst  $38                                         ; $759b: $ff
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	rst  $38                                         ; $759e: $ff
	rst  $38                                         ; $759f: $ff
	ei                                               ; $75a0: $fb
	ld   de, $1111                                   ; $75a1: $11 $11 $11
	dec  d                                           ; $75a4: $15
	ld   d, c                                        ; $75a5: $51
	ld   a, [de]                                     ; $75a6: $1a
	pop  de                                          ; $75a7: $d1
	ld   de, $1113                                   ; $75a8: $11 $13 $11
	rla                                              ; $75ab: $17
	ldh  a, [c]                                      ; $75ac: $f2
	rra                                              ; $75ad: $1f
	rst  $38                                         ; $75ae: $ff
	rst  $38                                         ; $75af: $ff
	rst  $38                                         ; $75b0: $ff
	rst  $38                                         ; $75b1: $ff

jr_0e2_75b2:
	rst  $38                                         ; $75b2: $ff
	push af                                          ; $75b3: $f5
	ld   de, $1111                                   ; $75b4: $11 $11 $11
	inc  d                                           ; $75b7: $14
	ld   hl, $713c                                   ; $75b8: $21 $3c $71
	ld   de, $1111                                   ; $75bb: $11 $11 $11
	dec  e                                           ; $75be: $1d
	ld   [hl], c                                     ; $75bf: $71
	ld   l, a                                        ; $75c0: $6f
	rst  $38                                         ; $75c1: $ff
	rst  $38                                         ; $75c2: $ff
	rst  $38                                         ; $75c3: $ff
	rst  $38                                         ; $75c4: $ff
	rst  $38                                         ; $75c5: $ff
	or   c                                           ; $75c6: $b1
	ld   de, $1111                                   ; $75c7: $11 $11 $11
	ld   de, $7b11                                   ; $75ca: $11 $11 $7b
	ld   de, $1111                                   ; $75cd: $11 $11 $11
	ld   de, $1117                                   ; $75d0: $11 $17 $11
	rst  $38                                         ; $75d3: $ff
	rst  $38                                         ; $75d4: $ff
	rst  $38                                         ; $75d5: $ff
	rst  $38                                         ; $75d6: $ff
	rst  $38                                         ; $75d7: $ff
	rst  $38                                         ; $75d8: $ff
	jp   nc, $1121                                   ; $75d9: $d2 $21 $11

	ld   de, $1111                                   ; $75dc: $11 $11 $11
	ld   b, l                                        ; $75df: $45
	ld   de, $1111                                   ; $75e0: $11 $11 $11
	ld   de, $1199                                   ; $75e3: $11 $99 $11
	rst  $38                                         ; $75e6: $ff
	rst  $38                                         ; $75e7: $ff
	rst  $38                                         ; $75e8: $ff
	rst  $38                                         ; $75e9: $ff
	rst  $38                                         ; $75ea: $ff
	rst  $38                                         ; $75eb: $ff
	rst  $10                                         ; $75ec: $d7
	ld   b, c                                        ; $75ed: $41
	ld   de, $1111                                   ; $75ee: $11 $11 $11
	ld   de, $1111                                   ; $75f1: $11 $11 $11
	ld   de, $1111                                   ; $75f4: $11 $11 $11
	add  h                                           ; $75f7: $84
	jr   @+$01                                       ; $75f8: $18 $ff

	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff
	rst  $38                                         ; $75fc: $ff
	rst  $38                                         ; $75fd: $ff
	rst  $38                                         ; $75fe: $ff
	ld   sp, hl                                      ; $75ff: $f9
	ld   b, c                                        ; $7600: $41
	ld   de, $1111                                   ; $7601: $11 $11 $11
	ld   de, $1111                                   ; $7604: $11 $11 $11
	ld   de, $1111                                   ; $7607: $11 $11 $11
	ld   l, b                                        ; $760a: $68
	scf                                              ; $760b: $37
	rst  $38                                         ; $760c: $ff
	rst  $38                                         ; $760d: $ff
	rst  $38                                         ; $760e: $ff
	rst  $38                                         ; $760f: $ff
	rst  $38                                         ; $7610: $ff
	rst  $38                                         ; $7611: $ff
	ld   hl, sp+$21                                  ; $7612: $f8 $21
	ld   de, $1111                                   ; $7614: $11 $11 $11
	ld   de, $1111                                   ; $7617: $11 $11 $11
	ld   de, $1111                                   ; $761a: $11 $11 $11
	ld   [hl-], a                                    ; $761d: $32
	dec  d                                           ; $761e: $15
	rst  JumpTable                                         ; $761f: $df
	rst  $38                                         ; $7620: $ff
	rst  $38                                         ; $7621: $ff
	rst  $38                                         ; $7622: $ff
	rst  $38                                         ; $7623: $ff
	rst  $38                                         ; $7624: $ff
	rst  $38                                         ; $7625: $ff
	and  [hl]                                        ; $7626: $a6
	ld   hl, $1111                                   ; $7627: $21 $11 $11
	ld   de, $1113                                   ; $762a: $11 $13 $11
	ld   de, $1111                                   ; $762d: $11 $11 $11
	ld   de, $1711                                   ; $7630: $11 $11 $17
	rst  JumpTable                                         ; $7633: $df
	rst  $38                                         ; $7634: $ff
	rst  $38                                         ; $7635: $ff
	rst  $38                                         ; $7636: $ff
	rst  $38                                         ; $7637: $ff
	rst  $38                                         ; $7638: $ff
	ei                                               ; $7639: $fb
	ld   sp, $1132                                   ; $763a: $31 $32 $11
	ld   d, $77                                      ; $763d: $16 $77
	ld   a, b                                        ; $763f: $78
	ld   [hl], e                                     ; $7640: $73
	ld   de, $1111                                   ; $7641: $11 $11 $11
	ld   de, $1111                                   ; $7644: $11 $11 $11
	dec  hl                                          ; $7647: $2b
	rst  $38                                         ; $7648: $ff
	rst  $38                                         ; $7649: $ff
	rst  $38                                         ; $764a: $ff
	rst  $38                                         ; $764b: $ff
	rst  $38                                         ; $764c: $ff
	rst  $38                                         ; $764d: $ff
	db   $eb                                         ; $764e: $eb
	sbc  b                                           ; $764f: $98
	sbc  d                                           ; $7650: $9a
	and  a                                           ; $7651: $a7
	sbc  d                                           ; $7652: $9a
	xor  d                                           ; $7653: $aa
	adc  c                                           ; $7654: $89
	ld   [hl], l                                     ; $7655: $75
	ld   [hl+], a                                    ; $7656: $22
	ld   hl, $1111                                   ; $7657: $21 $11 $11
	ld   de, $1111                                   ; $765a: $11 $11 $11
	inc  d                                           ; $765d: $14
	ld   a, e                                        ; $765e: $7b
	xor  h                                           ; $765f: $ac
	rst  $28                                         ; $7660: $ef
	rst  $38                                         ; $7661: $ff
	rst  $38                                         ; $7662: $ff
	rst  $38                                         ; $7663: $ff
	rst  $38                                         ; $7664: $ff
	rst  $38                                         ; $7665: $ff
	rst  $38                                         ; $7666: $ff
	rst  $38                                         ; $7667: $ff
	db   $eb                                         ; $7668: $eb
	xor  b                                           ; $7669: $a8
	xor  c                                           ; $766a: $a9
	add  e                                           ; $766b: $83
	ld   [hl], $53                                   ; $766c: $36 $53
	ld   de, $4135                                   ; $766e: $11 $35 $41
	ld   de, $3265                                   ; $7671: $11 $65 $32
	ld   h, $87                                      ; $7674: $26 $87
	ld   d, l                                        ; $7676: $55
	adc  e                                           ; $7677: $8b
	jp   z, $eeac                                    ; $7678: $ca $ac $ee

	set  3, [hl]                                     ; $767b: $cb $de
	db   $ed                                         ; $767d: $ed
	res  7, h                                        ; $767e: $cb $bc
	xor  d                                           ; $7680: $aa
	sub  a                                           ; $7681: $97
	adc  b                                           ; $7682: $88
	ld   [hl], a                                     ; $7683: $77
	ld   h, [hl]                                     ; $7684: $66
	ld   [hl], a                                     ; $7685: $77
	sub  a                                           ; $7686: $97
	ld   h, a                                        ; $7687: $67
	adc  c                                           ; $7688: $89
	ld   [hl], l                                     ; $7689: $75
	ld   d, a                                        ; $768a: $57
	sub  a                                           ; $768b: $97
	ld   h, a                                        ; $768c: $67
	sbc  c                                           ; $768d: $99
	ld   [hl], a                                     ; $768e: $77
	ld   a, c                                        ; $768f: $79
	xor  c                                           ; $7690: $a9
	adc  b                                           ; $7691: $88
	ld   [hl], a                                     ; $7692: $77
	ld   a, b                                        ; $7693: $78
	ld   [hl], l                                     ; $7694: $75
	ld   b, [hl]                                     ; $7695: $46
	adc  b                                           ; $7696: $88
	halt                                             ; $7697: $76
	ld   a, c                                        ; $7698: $79
	xor  c                                           ; $7699: $a9
	adc  b                                           ; $769a: $88
	sbc  c                                           ; $769b: $99
	sbc  c                                           ; $769c: $99
	sbc  b                                           ; $769d: $98
	adc  c                                           ; $769e: $89
	xor  d                                           ; $769f: $aa
	xor  c                                           ; $76a0: $a9
	adc  e                                           ; $76a1: $8b
	rst  ToBoot                                         ; $76a2: $c7
	ld   d, [hl]                                     ; $76a3: $56
	sbc  e                                           ; $76a4: $9b
	sub  [hl]                                        ; $76a5: $96
	ld   d, [hl]                                     ; $76a6: $56
	ld   a, c                                        ; $76a7: $79
	add  [hl]                                        ; $76a8: $86
	ld   d, [hl]                                     ; $76a9: $56
	ld   a, c                                        ; $76aa: $79
	sbc  b                                           ; $76ab: $98
	adc  b                                           ; $76ac: $88
	adc  c                                           ; $76ad: $89
	sbc  c                                           ; $76ae: $99
	sbc  c                                           ; $76af: $99
	sbc  b                                           ; $76b0: $98
	sbc  b                                           ; $76b1: $98
	adc  c                                           ; $76b2: $89
	add  a                                           ; $76b3: $87
	ld   a, b                                        ; $76b4: $78
	sbc  b                                           ; $76b5: $98
	adc  b                                           ; $76b6: $88
	adc  c                                           ; $76b7: $89
	sbc  b                                           ; $76b8: $98
	ld   [hl], a                                     ; $76b9: $77
	halt                                             ; $76ba: $76
	ld   h, [hl]                                     ; $76bb: $66
	ld   h, a                                        ; $76bc: $67
	ld   [hl], a                                     ; $76bd: $77
	ld   a, b                                        ; $76be: $78
	adc  b                                           ; $76bf: $88
	adc  b                                           ; $76c0: $88
	adc  b                                           ; $76c1: $88
	adc  b                                           ; $76c2: $88
	sbc  b                                           ; $76c3: $98
	adc  b                                           ; $76c4: $88
	sbc  b                                           ; $76c5: $98
	sbc  b                                           ; $76c6: $98
	adc  c                                           ; $76c7: $89
	adc  c                                           ; $76c8: $89
	sbc  b                                           ; $76c9: $98
	adc  b                                           ; $76ca: $88
	adc  b                                           ; $76cb: $88
	adc  c                                           ; $76cc: $89
	add  a                                           ; $76cd: $87
	ld   [hl], a                                     ; $76ce: $77
	ld   a, b                                        ; $76cf: $78
	ld   [hl], a                                     ; $76d0: $77
	ld   a, b                                        ; $76d1: $78
	adc  b                                           ; $76d2: $88
	adc  b                                           ; $76d3: $88
	adc  b                                           ; $76d4: $88
	ld   [hl], a                                     ; $76d5: $77
	ld   [hl], a                                     ; $76d6: $77
	ld   [hl], a                                     ; $76d7: $77
	adc  b                                           ; $76d8: $88
	adc  b                                           ; $76d9: $88
	adc  b                                           ; $76da: $88
	adc  b                                           ; $76db: $88
	adc  b                                           ; $76dc: $88
	sbc  c                                           ; $76dd: $99
	adc  b                                           ; $76de: $88
	adc  b                                           ; $76df: $88
	adc  b                                           ; $76e0: $88
	adc  b                                           ; $76e1: $88
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	adc  c                                           ; $76e4: $89
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	ld   [hl], a                                     ; $76e8: $77
	ld   [hl], a                                     ; $76e9: $77
	ld   [hl], a                                     ; $76ea: $77
	ld   [hl], a                                     ; $76eb: $77
	ld   [hl], a                                     ; $76ec: $77
	ld   [hl], a                                     ; $76ed: $77
	ld   [hl], a                                     ; $76ee: $77
	ld   [hl], a                                     ; $76ef: $77
	adc  b                                           ; $76f0: $88
	adc  b                                           ; $76f1: $88
	adc  b                                           ; $76f2: $88
	adc  b                                           ; $76f3: $88
	adc  b                                           ; $76f4: $88
	sbc  c                                           ; $76f5: $99
	adc  c                                           ; $76f6: $89
	adc  b                                           ; $76f7: $88
	sbc  c                                           ; $76f8: $99
	adc  b                                           ; $76f9: $88
	sbc  b                                           ; $76fa: $98
	adc  c                                           ; $76fb: $89
	adc  b                                           ; $76fc: $88
	ld   a, b                                        ; $76fd: $78
	adc  b                                           ; $76fe: $88
	ld   [hl], a                                     ; $76ff: $77
	ld   [hl], a                                     ; $7700: $77
	ld   [hl], a                                     ; $7701: $77
	ld   [hl], a                                     ; $7702: $77
	ld   [hl], a                                     ; $7703: $77
	ld   [hl], a                                     ; $7704: $77
	ld   [hl], a                                     ; $7705: $77
	ld   [hl], a                                     ; $7706: $77
	ld   a, b                                        ; $7707: $78
	adc  b                                           ; $7708: $88
	adc  c                                           ; $7709: $89
	sbc  b                                           ; $770a: $98
	adc  c                                           ; $770b: $89
	adc  c                                           ; $770c: $89
	adc  b                                           ; $770d: $88
	sbc  c                                           ; $770e: $99
	adc  b                                           ; $770f: $88
	adc  b                                           ; $7710: $88
	adc  b                                           ; $7711: $88
	adc  b                                           ; $7712: $88
	adc  b                                           ; $7713: $88
	adc  b                                           ; $7714: $88
	adc  b                                           ; $7715: $88
	adc  b                                           ; $7716: $88
	adc  b                                           ; $7717: $88
	ld   [hl], a                                     ; $7718: $77
	ld   [hl], a                                     ; $7719: $77
	ld   a, b                                        ; $771a: $78
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
	sbc  c                                           ; $7728: $99
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
	ld   a, b                                        ; $7735: $78
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
	add  a                                           ; $7751: $87
	ld   [hl], a                                     ; $7752: $77
	ld   [hl], a                                     ; $7753: $77
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
	adc  c                                           ; $7765: $89
	add  a                                           ; $7766: $87
	ld   [hl], a                                     ; $7767: $77
	ld   [hl], a                                     ; $7768: $77
	adc  b                                           ; $7769: $88
	adc  c                                           ; $776a: $89
	adc  b                                           ; $776b: $88
	add  a                                           ; $776c: $87
	ld   [hl], a                                     ; $776d: $77
	ld   [hl], a                                     ; $776e: $77
	sbc  c                                           ; $776f: $99
	xor  c                                           ; $7770: $a9
	adc  b                                           ; $7771: $88
	ld   [hl], a                                     ; $7772: $77
	ld   [hl], a                                     ; $7773: $77
	ld   a, c                                        ; $7774: $79
	xor  d                                           ; $7775: $aa
	xor  c                                           ; $7776: $a9
	sub  a                                           ; $7777: $97
	ld   h, l                                        ; $7778: $65
	ld   d, [hl]                                     ; $7779: $56
	ld   a, d                                        ; $777a: $7a
	cp   e                                           ; $777b: $bb
	cp   c                                           ; $777c: $b9
	ld   h, l                                        ; $777d: $65
	ld   b, l                                        ; $777e: $45
	ld   l, d                                        ; $777f: $6a
	xor  $ea                                         ; $7780: $ee $ea
	ld   d, e                                        ; $7782: $53
	ld   b, [hl]                                     ; $7783: $46
	adc  e                                           ; $7784: $8b
	call z, Call_0e2_4396                            ; $7785: $cc $96 $43
	ld   b, l                                        ; $7788: $45
	sbc  d                                           ; $7789: $9a
	cp   e                                           ; $778a: $bb
	sbc  b                                           ; $778b: $98
	ld   h, l                                        ; $778c: $65
	ld   l, c                                        ; $778d: $69
	xor  e                                           ; $778e: $ab
	cp   c                                           ; $778f: $b9
	halt                                             ; $7790: $76
	ld   b, l                                        ; $7791: $45
	ld   h, a                                        ; $7792: $67
	cp   e                                           ; $7793: $bb
	jp   z, $2375                                    ; $7794: $ca $75 $23

	ld   e, c                                        ; $7797: $59
	adc  $db                                         ; $7798: $ce $db
	add  h                                           ; $779a: $84
	ld   [hl-], a                                    ; $779b: $32
	ld   b, [hl]                                     ; $779c: $46
	sbc  e                                           ; $779d: $9b
	cp   d                                           ; $779e: $ba
	ld   [hl], l                                     ; $779f: $75
	ld   d, l                                        ; $77a0: $55
	ld   a, c                                        ; $77a1: $79
	xor  d                                           ; $77a2: $aa
	sbc  b                                           ; $77a3: $98
	ld   h, l                                        ; $77a4: $65
	ld   d, h                                        ; $77a5: $54
	ld   h, a                                        ; $77a6: $67
	adc  b                                           ; $77a7: $88
	adc  b                                           ; $77a8: $88
	adc  c                                           ; $77a9: $89
	adc  c                                           ; $77aa: $89
	sbc  c                                           ; $77ab: $99
	sbc  c                                           ; $77ac: $99
	sbc  b                                           ; $77ad: $98
	ld   [hl], a                                     ; $77ae: $77
	ld   a, b                                        ; $77af: $78
	adc  b                                           ; $77b0: $88
	adc  b                                           ; $77b1: $88
	adc  b                                           ; $77b2: $88
	add  [hl]                                        ; $77b3: $86
	ld   h, [hl]                                     ; $77b4: $66
	ld   h, a                                        ; $77b5: $67
	ld   a, e                                        ; $77b6: $7b
	rst  JumpTable                                         ; $77b7: $df
	db   $ec                                         ; $77b8: $ec
	add  h                                           ; $77b9: $84
	inc  sp                                          ; $77ba: $33
	ld   e, c                                        ; $77bb: $59
	xor  h                                           ; $77bc: $ac
	cp   d                                           ; $77bd: $ba
	ld   [hl], l                                     ; $77be: $75
	ld   b, h                                        ; $77bf: $44
	ld   l, b                                        ; $77c0: $68
	sbc  d                                           ; $77c1: $9a
	sbc  b                                           ; $77c2: $98
	ld   [hl], a                                     ; $77c3: $77
	ld   a, b                                        ; $77c4: $78
	adc  d                                           ; $77c5: $8a
	xor  e                                           ; $77c6: $ab
	sbc  b                                           ; $77c7: $98
	ld   a, b                                        ; $77c8: $78
	ld   h, [hl]                                     ; $77c9: $66
	ld   [hl], a                                     ; $77ca: $77
	sbc  b                                           ; $77cb: $98
	xor  d                                           ; $77cc: $aa
	sbc  c                                           ; $77cd: $99
	ld   [hl], a                                     ; $77ce: $77
	ld   h, [hl]                                     ; $77cf: $66
	ld   h, [hl]                                     ; $77d0: $66
	ld   [hl], a                                     ; $77d1: $77
	sub  a                                           ; $77d2: $97
	sbc  c                                           ; $77d3: $99
	ld   [hl], a                                     ; $77d4: $77
	ld   a, c                                        ; $77d5: $79
	xor  d                                           ; $77d6: $aa
	xor  d                                           ; $77d7: $aa
	sub  a                                           ; $77d8: $97
	ld   h, l                                        ; $77d9: $65
	ld   h, a                                        ; $77da: $67
	ld   [hl], a                                     ; $77db: $77
	adc  d                                           ; $77dc: $8a
	sbc  d                                           ; $77dd: $9a
	sbc  b                                           ; $77de: $98
	ld   [hl], a                                     ; $77df: $77
	sbc  d                                           ; $77e0: $9a
	xor  e                                           ; $77e1: $ab
	xor  b                                           ; $77e2: $a8
	ld   d, h                                        ; $77e3: $54
	inc  [hl]                                        ; $77e4: $34
	ld   d, a                                        ; $77e5: $57
	sbc  c                                           ; $77e6: $99
	xor  c                                           ; $77e7: $a9
	ld   h, l                                        ; $77e8: $65
	ld   d, a                                        ; $77e9: $57
	sbc  d                                           ; $77ea: $9a
	xor  h                                           ; $77eb: $ac
	res  0, l                                        ; $77ec: $cb $85
	inc  [hl]                                        ; $77ee: $34
	ld   h, a                                        ; $77ef: $67
	adc  c                                           ; $77f0: $89
	xor  c                                           ; $77f1: $a9
	ld   a, b                                        ; $77f2: $78
	adc  b                                           ; $77f3: $88
	ld   [hl], a                                     ; $77f4: $77
	ld   [hl], a                                     ; $77f5: $77
	adc  b                                           ; $77f6: $88
	ld   [hl], l                                     ; $77f7: $75
	inc  [hl]                                        ; $77f8: $34
	ld   c, b                                        ; $77f9: $48
	sbc  e                                           ; $77fa: $9b
	ret                                              ; $77fb: $c9


	ld   [hl], e                                     ; $77fc: $73
	ld   de, $8914                                   ; $77fd: $11 $14 $89
	cp   h                                           ; $7800: $bc
	call $ffdf                                       ; $7801: $cd $df $ff
	rst  $38                                         ; $7804: $ff
	rst  $38                                         ; $7805: $ff
	db   $db                                         ; $7806: $db
	xor  d                                           ; $7807: $aa
	add  a                                           ; $7808: $87
	ld   d, e                                        ; $7809: $53
	ld   de, $1111                                   ; $780a: $11 $11 $11
	ld   de, $1111                                   ; $780d: $11 $11 $11
	ld   de, $bc49                                   ; $7810: $11 $49 $bc
	rst  $28                                         ; $7813: $ef
	rst  $38                                         ; $7814: $ff
	rst  $38                                         ; $7815: $ff
	rst  $38                                         ; $7816: $ff
	rst  $38                                         ; $7817: $ff
	rst  $38                                         ; $7818: $ff
	call c, $bbbb                                    ; $7819: $dc $bb $bb
	and  a                                           ; $781c: $a7
	ld   d, d                                        ; $781d: $52
	ld   de, $1111                                   ; $781e: $11 $11 $11
	ld   de, $1111                                   ; $7821: $11 $11 $11
	ld   d, $bf                                      ; $7824: $16 $bf
	rst  $38                                         ; $7826: $ff
	rst  $38                                         ; $7827: $ff
	rst  $38                                         ; $7828: $ff
	rst  $38                                         ; $7829: $ff
	rst  $38                                         ; $782a: $ff
	db   $fd                                         ; $782b: $fd
	add  [hl]                                        ; $782c: $86
	ld   h, a                                        ; $782d: $67
	sbc  h                                           ; $782e: $9c
	call $75ba                                       ; $782f: $cd $ba $75
	inc  sp                                          ; $7832: $33
	ld   de, $1111                                   ; $7833: $11 $11 $11
	ld   de, $bf11                                   ; $7836: $11 $11 $bf
	rst  $38                                         ; $7839: $ff
	rst  $38                                         ; $783a: $ff
	rst  $38                                         ; $783b: $ff
	rst  $38                                         ; $783c: $ff
	rst  $38                                         ; $783d: $ff
	db   $fc                                         ; $783e: $fc
	ld   de, $2911                                   ; $783f: $11 $11 $29
	rst  $38                                         ; $7842: $ff
	cp   $b7                                         ; $7843: $fe $b7
	ld   d, h                                        ; $7845: $54
	ld   sp, $1111                                   ; $7846: $31 $11 $11
	ld   de, $3f11                                   ; $7849: $11 $11 $3f
	rst  $38                                         ; $784c: $ff
	rst  $38                                         ; $784d: $ff
	rst  $38                                         ; $784e: $ff
	rst  $38                                         ; $784f: $ff
	rst  $38                                         ; $7850: $ff
	rst  $38                                         ; $7851: $ff
	ld   sp, $1111                                   ; $7852: $31 $11 $11
	ld   l, a                                        ; $7855: $6f
	rst  $38                                         ; $7856: $ff
	cp   $a6                                         ; $7857: $fe $a6
	ld   de, $1111                                   ; $7859: $11 $11 $11
	ld   de, $1f11                                   ; $785c: $11 $11 $1f
	rst  $38                                         ; $785f: $ff
	rst  $38                                         ; $7860: $ff
	rst  $38                                         ; $7861: $ff
	rst  $38                                         ; $7862: $ff
	rst  $38                                         ; $7863: $ff
	db   $fc                                         ; $7864: $fc
	ld   de, $1111                                   ; $7865: $11 $11 $11
	ld   e, a                                        ; $7868: $5f

Call_0e2_7869:
	rst  $38                                         ; $7869: $ff
	rst  $38                                         ; $786a: $ff
	add  sp, $21                                     ; $786b: $e8 $21
	ld   de, $1111                                   ; $786d: $11 $11 $11
	ld   de, $ff7f                                   ; $7870: $11 $7f $ff
	rst  $38                                         ; $7873: $ff
	rst  $38                                         ; $7874: $ff
	rst  $38                                         ; $7875: $ff
	rst  $38                                         ; $7876: $ff
	db   $e4                                         ; $7877: $e4
	ld   de, $1111                                   ; $7878: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $787b: $cf
	rst  $38                                         ; $787c: $ff
	rst  $38                                         ; $787d: $ff
	ld   hl, sp+$11                                  ; $787e: $f8 $11
	ld   de, $1111                                   ; $7880: $11 $11 $11
	ld   de, $ff8f                                   ; $7883: $11 $8f $ff
	rst  $38                                         ; $7886: $ff
	rst  $38                                         ; $7887: $ff
	rst  $38                                         ; $7888: $ff
	rst  $38                                         ; $7889: $ff
	jp   nc, $1111                                   ; $788a: $d2 $11 $11

	ld   de, $ffbf                                   ; $788d: $11 $bf $ff
	rst  $38                                         ; $7890: $ff
	ld   a, [$1141]                                  ; $7891: $fa $41 $11
	ld   de, $1111                                   ; $7894: $11 $11 $11
	rra                                              ; $7897: $1f
	rst  $38                                         ; $7898: $ff
	rst  $38                                         ; $7899: $ff
	rst  $38                                         ; $789a: $ff
	rst  $38                                         ; $789b: $ff
	rst  $38                                         ; $789c: $ff
	db   $e4                                         ; $789d: $e4
	ld   de, $1111                                   ; $789e: $11 $11 $11
	ld   a, a                                        ; $78a1: $7f
	rst  $38                                         ; $78a2: $ff
	rst  $38                                         ; $78a3: $ff
	cp   $61                                         ; $78a4: $fe $61
	ld   de, $1111                                   ; $78a6: $11 $11 $11
	ld   de, $ff15                                   ; $78a9: $11 $15 $ff
	rst  $38                                         ; $78ac: $ff
	rst  $38                                         ; $78ad: $ff
	rst  $38                                         ; $78ae: $ff
	rst  $38                                         ; $78af: $ff
	ld   sp, hl                                      ; $78b0: $f9
	ld   hl, $1111                                   ; $78b1: $21 $11 $11
	ld   a, [de]                                     ; $78b4: $1a
	rst  $38                                         ; $78b5: $ff
	rst  $38                                         ; $78b6: $ff
	rst  $38                                         ; $78b7: $ff
	push hl                                          ; $78b8: $e5
	ld   de, $1111                                   ; $78b9: $11 $11 $11
	ld   de, $2f11                                   ; $78bc: $11 $11 $2f
	rst  $38                                         ; $78bf: $ff
	rst  $38                                         ; $78c0: $ff
	rst  $38                                         ; $78c1: $ff
	rst  $38                                         ; $78c2: $ff
	rst  $38                                         ; $78c3: $ff
	and  c                                           ; $78c4: $a1
	ld   de, $1111                                   ; $78c5: $11 $11 $11
	adc  a                                           ; $78c8: $8f

Call_0e2_78c9:
	rst  $38                                         ; $78c9: $ff
	rst  $38                                         ; $78ca: $ff
	rst  $38                                         ; $78cb: $ff
	sub  c                                           ; $78cc: $91
	ld   de, $1111                                   ; $78cd: $11 $11 $11
	ld   de, $6f11                                   ; $78d0: $11 $11 $6f
	rst  $38                                         ; $78d3: $ff
	rst  $38                                         ; $78d4: $ff
	rst  $38                                         ; $78d5: $ff
	rst  $38                                         ; $78d6: $ff
	rst  $38                                         ; $78d7: $ff
	and  h                                           ; $78d8: $a4
	ld   de, $1311                                   ; $78d9: $11 $11 $13
	cp   a                                           ; $78dc: $bf
	rst  $38                                         ; $78dd: $ff
	rst  $38                                         ; $78de: $ff
	rst  $38                                         ; $78df: $ff
	add  c                                           ; $78e0: $81
	ld   de, $1111                                   ; $78e1: $11 $11 $11
	ld   de, $1f11                                   ; $78e4: $11 $11 $1f
	rst  $38                                         ; $78e7: $ff
	rst  $38                                         ; $78e8: $ff
	rst  $38                                         ; $78e9: $ff
	rst  $38                                         ; $78ea: $ff
	rst  $38                                         ; $78eb: $ff
	jp   hl                                          ; $78ec: $e9


	ld   d, d                                        ; $78ed: $52
	ld   de, $9f13                                   ; $78ee: $11 $13 $9f
	rst  $38                                         ; $78f1: $ff
	rst  $38                                         ; $78f2: $ff
	rst  $38                                         ; $78f3: $ff
	or   d                                           ; $78f4: $b2
	ld   de, $1111                                   ; $78f5: $11 $11 $11
	ld   de, $1311                                   ; $78f8: $11 $11 $13
	rst  $38                                         ; $78fb: $ff
	rst  $38                                         ; $78fc: $ff
	rst  $38                                         ; $78fd: $ff
	rst  $38                                         ; $78fe: $ff
	rst  $38                                         ; $78ff: $ff
	cp   $a9                                         ; $7900: $fe $a9
	ld   h, l                                        ; $7902: $65
	ld   d, l                                        ; $7903: $55
	ld   a, h                                        ; $7904: $7c
	rst  $38                                         ; $7905: $ff
	rst  $38                                         ; $7906: $ff
	rst  $38                                         ; $7907: $ff
	ld   hl, sp+$21                                  ; $7908: $f8 $21
	ld   de, $1111                                   ; $790a: $11 $11 $11
	ld   de, $1211                                   ; $790d: $11 $11 $12
	cp   a                                           ; $7910: $bf
	rst  $38                                         ; $7911: $ff
	rst  $38                                         ; $7912: $ff
	rst  $38                                         ; $7913: $ff
	rst  $38                                         ; $7914: $ff
	rst  $38                                         ; $7915: $ff
	cp   $ec                                         ; $7916: $fe $ec
	xor  c                                           ; $7918: $a9
	cp   l                                           ; $7919: $bd
	rst  $38                                         ; $791a: $ff
	rst  $38                                         ; $791b: $ff
	cp   $a7                                         ; $791c: $fe $a7
	ld   sp, $1111                                   ; $791e: $31 $11 $11
	ld   de, $1111                                   ; $7921: $11 $11 $11
	ld   de, $ff3b                                   ; $7924: $11 $3b $ff
	rst  $38                                         ; $7927: $ff
	rst  $38                                         ; $7928: $ff
	rst  $38                                         ; $7929: $ff
	rst  $38                                         ; $792a: $ff
	rst  $38                                         ; $792b: $ff
	rst  $38                                         ; $792c: $ff
	cp   $b9                                         ; $792d: $fe $b9
	sbc  $ff                                         ; $792f: $de $ff
	db   $ed                                         ; $7931: $ed
	or   [hl]                                        ; $7932: $b6
	ld   b, c                                        ; $7933: $41
	ld   de, $1111                                   ; $7934: $11 $11 $11
	ld   de, $1111                                   ; $7937: $11 $11 $11
	ld   de, $ef18                                   ; $793a: $11 $18 $ef
	rst  $38                                         ; $793d: $ff
	rst  $38                                         ; $793e: $ff
	rst  $38                                         ; $793f: $ff
	rst  $38                                         ; $7940: $ff
	rst  $38                                         ; $7941: $ff
	rst  $38                                         ; $7942: $ff
	rst  $38                                         ; $7943: $ff
	ld   [$ad8a], a                                  ; $7944: $ea $8a $ad
	ei                                               ; $7947: $fb
	add  l                                           ; $7948: $85
	ld   de, $1111                                   ; $7949: $11 $11 $11
	ld   de, $1111                                   ; $794c: $11 $11 $11
	ld   de, $1111                                   ; $794f: $11 $11 $11
	ld   a, [hl]                                     ; $7952: $7e
	rst  $38                                         ; $7953: $ff
	rst  $38                                         ; $7954: $ff
	rst  $38                                         ; $7955: $ff
	rst  $38                                         ; $7956: $ff
	rst  $38                                         ; $7957: $ff
	rst  $38                                         ; $7958: $ff
	rst  $38                                         ; $7959: $ff
	call c, $a7db                                    ; $795a: $dc $db $a7
	ld   e, d                                        ; $795d: $5a
	call c, Call_0e2_51da                            ; $795e: $dc $da $51
	ld   de, $1111                                   ; $7961: $11 $11 $11
	ld   de, $1111                                   ; $7964: $11 $11 $11
	ld   de, $2c31                                   ; $7967: $11 $31 $2c
	rst  $38                                         ; $796a: $ff
	rst  $38                                         ; $796b: $ff
	rst  $38                                         ; $796c: $ff
	rst  $38                                         ; $796d: $ff
	rst  $38                                         ; $796e: $ff
	rst  $28                                         ; $796f: $ef
	rst  $38                                         ; $7970: $ff
	ei                                               ; $7971: $fb
	sbc  $9a                                         ; $7972: $de $9a
	jp   z, $8899                                    ; $7974: $ca $99 $88

	ld   b, c                                        ; $7977: $41
	ld   [hl-], a                                    ; $7978: $32
	ld   [de], a                                     ; $7979: $12
	ld   de, $1311                                   ; $797a: $11 $11 $13
	ld   de, $1111                                   ; $797d: $11 $11 $11
	inc  [hl]                                        ; $7980: $34
	ld   [hl], $98                                   ; $7981: $36 $98
	xor  a                                           ; $7983: $af
	rst  $38                                         ; $7984: $ff
	rst  $28                                         ; $7985: $ef
	rst  $38                                         ; $7986: $ff
	rst  $38                                         ; $7987: $ff
	db   $fd                                         ; $7988: $fd
	xor  b                                           ; $7989: $a8
	sbc  $77                                         ; $798a: $de $77
	add  a                                           ; $798c: $87
	cp   e                                           ; $798d: $bb
	sbc  c                                           ; $798e: $99
	ld   [hl], l                                     ; $798f: $75
	sub  a                                           ; $7990: $97
	ld   b, h                                        ; $7991: $44
	ld   de, $5123                                   ; $7992: $11 $23 $51
	ld   de, $2114                                   ; $7995: $11 $14 $21
	ld   de, $9627                                   ; $7998: $11 $27 $96
	ld   [hl], a                                     ; $799b: $77
	adc  a                                           ; $799c: $8f
	rst  $38                                         ; $799d: $ff
	db   $eb                                         ; $799e: $eb
	rst  $38                                         ; $799f: $ff
	rst  $38                                         ; $79a0: $ff
	rst  $38                                         ; $79a1: $ff
	ret                                              ; $79a2: $c9


	rst  JumpTable                                         ; $79a3: $df
	call nz, $dc5a                                   ; $79a4: $c4 $5a $dc
	halt                                             ; $79a7: $76

Call_0e2_79a8:
	halt                                             ; $79a8: $76
	adc  d                                           ; $79a9: $8a
	add  c                                           ; $79aa: $81
	inc  d                                           ; $79ab: $14
	ld   h, l                                        ; $79ac: $65
	ld   hl, $1111                                   ; $79ad: $21 $11 $11
	ld   de, $4511                                   ; $79b0: $11 $11 $45
	ld   d, [hl]                                     ; $79b3: $56
	dec  h                                           ; $79b4: $25
	sbc  c                                           ; $79b5: $99
	sbc  $dd                                         ; $79b6: $de $dd
	xor  l                                           ; $79b8: $ad
	cp   $ec                                         ; $79b9: $fe $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79bb: $cf
	cp   h                                           ; $79bc: $bc
	db   $eb                                         ; $79bd: $eb
	and  a                                           ; $79be: $a7
	sbc  e                                           ; $79bf: $9b
	xor  c                                           ; $79c0: $a9
	halt                                             ; $79c1: $76
	sbc  c                                           ; $79c2: $99
	ld   h, [hl]                                     ; $79c3: $66
	ld   d, l                                        ; $79c4: $55
	ld   [hl], a                                     ; $79c5: $77
	ld   h, l                                        ; $79c6: $65
	ld   b, e                                        ; $79c7: $43
	ld   h, l                                        ; $79c8: $65

Call_0e2_79c9:
	ld   b, [hl]                                     ; $79c9: $46
	dec  h                                           ; $79ca: $25
	ld   h, h                                        ; $79cb: $64
	ld   d, h                                        ; $79cc: $54
	scf                                              ; $79cd: $37
	sbc  b                                           ; $79ce: $98
	cp   b                                           ; $79cf: $b8
	ld   a, d                                        ; $79d0: $7a
	cp   e                                           ; $79d1: $bb
	sbc  c                                           ; $79d2: $99
	cp   e                                           ; $79d3: $bb
	xor  e                                           ; $79d4: $ab
	xor  c                                           ; $79d5: $a9
	cp   c                                           ; $79d6: $b9
	xor  d                                           ; $79d7: $aa
	ld   a, b                                        ; $79d8: $78
	sbc  c                                           ; $79d9: $99
	sbc  b                                           ; $79da: $98
	ld   a, b                                        ; $79db: $78
	add  a                                           ; $79dc: $87
	add  a                                           ; $79dd: $87
	ld   a, b                                        ; $79de: $78
	ld   [hl], a                                     ; $79df: $77
	ld   [hl], a                                     ; $79e0: $77
	add  [hl]                                        ; $79e1: $86
	ld   a, b                                        ; $79e2: $78
	ld   [hl], a                                     ; $79e3: $77
	ld   a, b                                        ; $79e4: $78
	add  a                                           ; $79e5: $87
	add  a                                           ; $79e6: $87
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
	adc  c                                           ; $79f6: $89
	adc  b                                           ; $79f7: $88
	adc  b                                           ; $79f8: $88
	adc  b                                           ; $79f9: $88
	adc  b                                           ; $79fa: $88
	adc  b                                           ; $79fb: $88
	sbc  b                                           ; $79fc: $98
	adc  b                                           ; $79fd: $88
	adc  c                                           ; $79fe: $89
	sbc  b                                           ; $79ff: $98
	adc  b                                           ; $7a00: $88
	adc  c                                           ; $7a01: $89
	adc  b                                           ; $7a02: $88
	sbc  b                                           ; $7a03: $98
	adc  b                                           ; $7a04: $88
	ld   a, b                                        ; $7a05: $78
	add  a                                           ; $7a06: $87
	sub  a                                           ; $7a07: $97
	adc  b                                           ; $7a08: $88
	ld   a, c                                        ; $7a09: $79
	sbc  b                                           ; $7a0a: $98
	adc  b                                           ; $7a0b: $88
	sbc  b                                           ; $7a0c: $98
	adc  b                                           ; $7a0d: $88
	adc  c                                           ; $7a0e: $89
	adc  c                                           ; $7a0f: $89
	ld   a, c                                        ; $7a10: $79
	adc  b                                           ; $7a11: $88
	adc  b                                           ; $7a12: $88
	sbc  b                                           ; $7a13: $98
	adc  b                                           ; $7a14: $88
	adc  c                                           ; $7a15: $89
	adc  c                                           ; $7a16: $89
	adc  b                                           ; $7a17: $88
	adc  b                                           ; $7a18: $88
	adc  b                                           ; $7a19: $88
	adc  b                                           ; $7a1a: $88
	adc  b                                           ; $7a1b: $88
	adc  b                                           ; $7a1c: $88
	adc  b                                           ; $7a1d: $88
	adc  b                                           ; $7a1e: $88
	adc  b                                           ; $7a1f: $88
	adc  c                                           ; $7a20: $89
	adc  b                                           ; $7a21: $88
	adc  b                                           ; $7a22: $88
	sbc  b                                           ; $7a23: $98
	adc  b                                           ; $7a24: $88
	adc  b                                           ; $7a25: $88
	ld   a, c                                        ; $7a26: $79
	adc  b                                           ; $7a27: $88
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	sbc  b                                           ; $7a2e: $98
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	ld   a, c                                        ; $7a31: $79
	adc  b                                           ; $7a32: $88
	sbc  b                                           ; $7a33: $98
	adc  b                                           ; $7a34: $88
	adc  b                                           ; $7a35: $88
	sbc  b                                           ; $7a36: $98
	adc  c                                           ; $7a37: $89
	ld   a, b                                        ; $7a38: $78
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	add  a                                           ; $7a40: $87
	adc  b                                           ; $7a41: $88
	ld   a, c                                        ; $7a42: $79
	add  a                                           ; $7a43: $87
	adc  b                                           ; $7a44: $88
	add  a                                           ; $7a45: $87
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	adc  b                                           ; $7a4d: $88
	ld   a, b                                        ; $7a4e: $78
	adc  b                                           ; $7a4f: $88
	add  a                                           ; $7a50: $87
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	ld   a, b                                        ; $7a53: $78
	sub  a                                           ; $7a54: $97
	sbc  b                                           ; $7a55: $98
	ld   a, b                                        ; $7a56: $78
	ld   a, c                                        ; $7a57: $79
	ld   a, b                                        ; $7a58: $78
	add  a                                           ; $7a59: $87
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	add  a                                           ; $7a5c: $87
	adc  b                                           ; $7a5d: $88
	ld   a, b                                        ; $7a5e: $78
	ld   a, b                                        ; $7a5f: $78
	add  a                                           ; $7a60: $87
	adc  b                                           ; $7a61: $88
	add  a                                           ; $7a62: $87
	add  a                                           ; $7a63: $87
	ld   a, b                                        ; $7a64: $78
	ld   a, b                                        ; $7a65: $78
	ld   [hl], a                                     ; $7a66: $77
	sub  a                                           ; $7a67: $97
	adc  b                                           ; $7a68: $88
	ld   a, b                                        ; $7a69: $78
	sub  a                                           ; $7a6a: $97
	sub  a                                           ; $7a6b: $97
	adc  b                                           ; $7a6c: $88
	ld   a, c                                        ; $7a6d: $79
	ld   a, c                                        ; $7a6e: $79
	ld   a, b                                        ; $7a6f: $78
	ld   a, b                                        ; $7a70: $78
	add  a                                           ; $7a71: $87
	add  a                                           ; $7a72: $87
	add  a                                           ; $7a73: $87
	adc  b                                           ; $7a74: $88
	ld   a, b                                        ; $7a75: $78
	ld   a, b                                        ; $7a76: $78
	ld   a, b                                        ; $7a77: $78
	add  a                                           ; $7a78: $87
	add  a                                           ; $7a79: $87
	add  a                                           ; $7a7a: $87
	add  a                                           ; $7a7b: $87
	add  a                                           ; $7a7c: $87
	add  a                                           ; $7a7d: $87
	sub  a                                           ; $7a7e: $97
	adc  b                                           ; $7a7f: $88
	ld   a, c                                        ; $7a80: $79
	ld   a, b                                        ; $7a81: $78
	ld   a, b                                        ; $7a82: $78
	ld   a, b                                        ; $7a83: $78
	add  a                                           ; $7a84: $87
	add  a                                           ; $7a85: $87
	adc  b                                           ; $7a86: $88
	ld   a, b                                        ; $7a87: $78
	sub  a                                           ; $7a88: $97
	sub  a                                           ; $7a89: $97
	ld   a, c                                        ; $7a8a: $79
	ld   a, b                                        ; $7a8b: $78
	adc  b                                           ; $7a8c: $88
	ld   a, b                                        ; $7a8d: $78
	add  a                                           ; $7a8e: $87
	ld   a, c                                        ; $7a8f: $79
	ld   a, b                                        ; $7a90: $78
	add  a                                           ; $7a91: $87
	add  a                                           ; $7a92: $87
	add  a                                           ; $7a93: $87
	ld   a, c                                        ; $7a94: $79
	ld   a, b                                        ; $7a95: $78
	add  a                                           ; $7a96: $87
	add  a                                           ; $7a97: $87
	adc  b                                           ; $7a98: $88
	ld   a, b                                        ; $7a99: $78
	adc  b                                           ; $7a9a: $88
	ld   a, b                                        ; $7a9b: $78
	ld   [hl], a                                     ; $7a9c: $77
	add  a                                           ; $7a9d: $87
	add  a                                           ; $7a9e: $87
	add  a                                           ; $7a9f: $87
	adc  b                                           ; $7aa0: $88
	ld   a, c                                        ; $7aa1: $79
	ld   l, b                                        ; $7aa2: $68
	add  a                                           ; $7aa3: $87
	sub  a                                           ; $7aa4: $97
	add  a                                           ; $7aa5: $87
	ld   a, c                                        ; $7aa6: $79
	ld   a, b                                        ; $7aa7: $78
	adc  b                                           ; $7aa8: $88
	ld   a, b                                        ; $7aa9: $78
	ld   a, b                                        ; $7aaa: $78
	sub  a                                           ; $7aab: $97
	sub  a                                           ; $7aac: $97
	ld   a, b                                        ; $7aad: $78
	ld   a, b                                        ; $7aae: $78
	ld   a, c                                        ; $7aaf: $79
	ld   a, c                                        ; $7ab0: $79
	ld   a, b                                        ; $7ab1: $78
	add  a                                           ; $7ab2: $87
	add  a                                           ; $7ab3: $87
	add  a                                           ; $7ab4: $87
	add  a                                           ; $7ab5: $87
	adc  c                                           ; $7ab6: $89
	ld   l, c                                        ; $7ab7: $69
	ld   a, b                                        ; $7ab8: $78
	add  a                                           ; $7ab9: $87
	sbc  b                                           ; $7aba: $98
	ld   a, b                                        ; $7abb: $78
	ld   a, b                                        ; $7abc: $78
	add  a                                           ; $7abd: $87
	sub  a                                           ; $7abe: $97
	adc  c                                           ; $7abf: $89
	ld   a, b                                        ; $7ac0: $78
	sub  a                                           ; $7ac1: $97
	adc  b                                           ; $7ac2: $88
	ld   a, b                                        ; $7ac3: $78
	sub  a                                           ; $7ac4: $97
	ld   a, c                                        ; $7ac5: $79
	ld   a, c                                        ; $7ac6: $79
	ld   a, c                                        ; $7ac7: $79
	ld   a, b                                        ; $7ac8: $78
	sub  [hl]                                        ; $7ac9: $96
	sbc  b                                           ; $7aca: $98
	ld   a, d                                        ; $7acb: $7a
	ld   [hl], a                                     ; $7acc: $77
	and  [hl]                                        ; $7acd: $a6
	sbc  b                                           ; $7ace: $98
	ld   a, c                                        ; $7acf: $79
	ld   l, c                                        ; $7ad0: $69
	ld   [hl], a                                     ; $7ad1: $77
	and  [hl]                                        ; $7ad2: $a6
	sub  a                                           ; $7ad3: $97
	ld   a, c                                        ; $7ad4: $79
	ld   l, b                                        ; $7ad5: $68
	adc  b                                           ; $7ad6: $88
	add  a                                           ; $7ad7: $87
	add  a                                           ; $7ad8: $87
	add  a                                           ; $7ad9: $87
	ld   a, d                                        ; $7ada: $7a
	ld   h, a                                        ; $7adb: $67
	sub  l                                           ; $7adc: $95
	xor  b                                           ; $7add: $a8
	ld   l, d                                        ; $7ade: $6a
	ld   l, c                                        ; $7adf: $69
	sub  [hl]                                        ; $7ae0: $96
	sbc  c                                           ; $7ae1: $99
	ld   a, b                                        ; $7ae2: $78
	sub  [hl]                                        ; $7ae3: $96
	sbc  b                                           ; $7ae4: $98
	ld   a, c                                        ; $7ae5: $79
	ld   l, b                                        ; $7ae6: $68
	and  [hl]                                        ; $7ae7: $a6
	sub  a                                           ; $7ae8: $97
	ld   l, d                                        ; $7ae9: $6a
	ld   l, b                                        ; $7aea: $68
	sub  l                                           ; $7aeb: $95
	adc  d                                           ; $7aec: $8a
	ld   l, d                                        ; $7aed: $6a
	halt                                             ; $7aee: $76
	and  [hl]                                        ; $7aef: $a6
	sbc  c                                           ; $7af0: $99
	ld   l, d                                        ; $7af1: $6a
	ld   l, b                                        ; $7af2: $68
	ld   [hl], a                                     ; $7af3: $77
	sub  [hl]                                        ; $7af4: $96
	sub  a                                           ; $7af5: $97
	ld   a, d                                        ; $7af6: $7a
	ld   l, b                                        ; $7af7: $68
	add  a                                           ; $7af8: $87
	add  [hl]                                        ; $7af9: $86
	xor  c                                           ; $7afa: $a9
	ld   l, d                                        ; $7afb: $6a
	ld   l, c                                        ; $7afc: $69
	ld   a, c                                        ; $7afd: $79
	sub  h                                           ; $7afe: $94
	xor  b                                           ; $7aff: $a8
	ld   a, b                                        ; $7b00: $78
	ld   a, b                                        ; $7b01: $78
	add  a                                           ; $7b02: $87
	add  a                                           ; $7b03: $87
	add  a                                           ; $7b04: $87
	adc  c                                           ; $7b05: $89
	ld   e, e                                        ; $7b06: $5b
	halt                                             ; $7b07: $76
	push bc                                          ; $7b08: $c5
	and  a                                           ; $7b09: $a7
	ld   l, e                                        ; $7b0a: $6b
	ld   l, b                                        ; $7b0b: $68
	add  a                                           ; $7b0c: $87
	sub  [hl]                                        ; $7b0d: $96
	sub  a                                           ; $7b0e: $97
	ld   a, d                                        ; $7b0f: $7a
	ld   l, b                                        ; $7b10: $68
	ld   l, d                                        ; $7b11: $6a
	add  [hl]                                        ; $7b12: $86
	and  a                                           ; $7b13: $a7
	ld   l, c                                        ; $7b14: $69
	ld   a, d                                        ; $7b15: $7a
	ld   [hl], a                                     ; $7b16: $77
	or   [hl]                                        ; $7b17: $b6
	sub  [hl]                                        ; $7b18: $96
	sub  a                                           ; $7b19: $97
	ld   a, c                                        ; $7b1a: $79
	ld   l, c                                        ; $7b1b: $69
	ld   l, d                                        ; $7b1c: $6a
	ld   [hl], a                                     ; $7b1d: $77
	ld   a, c                                        ; $7b1e: $79
	add  a                                           ; $7b1f: $87
	and  [hl]                                        ; $7b20: $a6
	sbc  b                                           ; $7b21: $98
	adc  b                                           ; $7b22: $88
	ld   [hl], a                                     ; $7b23: $77
	sub  a                                           ; $7b24: $97
	adc  b                                           ; $7b25: $88
	ld   a, c                                        ; $7b26: $79
	ld   e, c                                        ; $7b27: $59
	sub  [hl]                                        ; $7b28: $96
	sub  [hl]                                        ; $7b29: $96
	sbc  b                                           ; $7b2a: $98
	ld   a, b                                        ; $7b2b: $78
	sub  a                                           ; $7b2c: $97
	sub  [hl]                                        ; $7b2d: $96
	and  a                                           ; $7b2e: $a7
	ld   l, e                                        ; $7b2f: $6b
	ld   l, e                                        ; $7b30: $6b
	ld   e, d                                        ; $7b31: $5a
	add  [hl]                                        ; $7b32: $86
	and  [hl]                                        ; $7b33: $a6
	sbc  b                                           ; $7b34: $98
	ld   [hl], a                                     ; $7b35: $77
	sbc  b                                           ; $7b36: $98
	add  [hl]                                        ; $7b37: $86
	sub  a                                           ; $7b38: $97
	adc  c                                           ; $7b39: $89
	ld   e, d                                        ; $7b3a: $5a
	halt                                             ; $7b3b: $76
	or   a                                           ; $7b3c: $b7
	ld   a, d                                        ; $7b3d: $7a
	ld   l, d                                        ; $7b3e: $6a
	ld   l, b                                        ; $7b3f: $68
	or   l                                           ; $7b40: $b5
	add  a                                           ; $7b41: $87
	sbc  b                                           ; $7b42: $98
	ld   a, b                                        ; $7b43: $78
	and  a                                           ; $7b44: $a7
	adc  c                                           ; $7b45: $89
	adc  b                                           ; $7b46: $88
	ld   l, h                                        ; $7b47: $6c
	ld   c, b                                        ; $7b48: $48
	and  [hl]                                        ; $7b49: $a6
	sub  a                                           ; $7b4a: $97
	and  a                                           ; $7b4b: $a7

jr_0e2_7b4c:
	ld   l, c                                        ; $7b4c: $69
	and  l                                           ; $7b4d: $a5
	sbc  b                                           ; $7b4e: $98
	sbc  b                                           ; $7b4f: $98
	ld   l, h                                        ; $7b50: $6c
	ld   e, c                                        ; $7b51: $59
	and  l                                           ; $7b52: $a5
	sub  a                                           ; $7b53: $97
	sbc  b                                           ; $7b54: $98
	ld   a, c                                        ; $7b55: $79
	sbc  c                                           ; $7b56: $99
	ld   a, c                                        ; $7b57: $79
	ld   a, c                                        ; $7b58: $79
	add  [hl]                                        ; $7b59: $86
	xor  c                                           ; $7b5a: $a9
	sub  a                                           ; $7b5b: $97
	sbc  b                                           ; $7b5c: $98
	sbc  b                                           ; $7b5d: $98
	ld   a, c                                        ; $7b5e: $79
	ld   a, e                                        ; $7b5f: $7b
	ld   [hl], a                                     ; $7b60: $77
	sbc  c                                           ; $7b61: $99
	ld   a, c                                        ; $7b62: $79
	ld   a, c                                        ; $7b63: $79
	sub  a                                           ; $7b64: $97
	or   e                                           ; $7b65: $b3
	xor  c                                           ; $7b66: $a9
	adc  e                                           ; $7b67: $8b
	ld   l, e                                        ; $7b68: $6b
	sbc  b                                           ; $7b69: $98
	sbc  c                                           ; $7b6a: $99
	ld   l, b                                        ; $7b6b: $68
	or   l                                           ; $7b6c: $b5
	ld   a, e                                        ; $7b6d: $7b
	ld   a, c                                        ; $7b6e: $79
	ld   e, b                                        ; $7b6f: $58
	or   [hl]                                        ; $7b70: $b6
	adc  b                                           ; $7b71: $88
	add  a                                           ; $7b72: $87
	add  $5b                                         ; $7b73: $c6 $5b
	and  a                                           ; $7b75: $a7
	and  a                                           ; $7b76: $a7
	ld   a, l                                        ; $7b77: $7d
	inc  l                                           ; $7b78: $2c
	halt                                             ; $7b79: $76
	push de                                          ; $7b7a: $d5
	adc  c                                           ; $7b7b: $89
	and  [hl]                                        ; $7b7c: $a6
	sub  l                                           ; $7b7d: $95
	push de                                          ; $7b7e: $d5
	sbc  d                                           ; $7b7f: $9a
	ld   l, e                                        ; $7b80: $6b
	ld   c, [hl]                                     ; $7b81: $4e
	dec  l                                           ; $7b82: $2d
	sub  a                                           ; $7b83: $97
	and  [hl]                                        ; $7b84: $a6
	rst  ToBoot                                         ; $7b85: $c7
	and  l                                           ; $7b86: $a5
	push bc                                          ; $7b87: $c5
	xor  b                                           ; $7b88: $a8
	ld   l, l                                        ; $7b89: $6d
	ld   c, c                                        ; $7b8a: $49
	adc  d                                           ; $7b8b: $8a
	sub  a                                           ; $7b8c: $97
	sbc  e                                           ; $7b8d: $9b
	ld   e, c                                        ; $7b8e: $59
	db   $d3                                         ; $7b8f: $d3
	sbc  b                                           ; $7b90: $98
	or   l                                           ; $7b91: $b5
	sbc  d                                           ; $7b92: $9a
	adc  d                                           ; $7b93: $8a
	ld   c, [hl]                                     ; $7b94: $4e
	scf                                              ; $7b95: $37
	or   [hl]                                        ; $7b96: $b6
	add  a                                           ; $7b97: $87
	xor  c                                           ; $7b98: $a9
	ld   e, b                                        ; $7b99: $58
	jp   nc, Jump_0e2_7bb9                           ; $7b9a: $d2 $b9 $7b

	ld   c, e                                        ; $7b9d: $4b
	ld   [hl], a                                     ; $7b9e: $77
	and  a                                           ; $7b9f: $a7
	adc  b                                           ; $7ba0: $88
	adc  d                                           ; $7ba1: $8a
	ld   l, c                                        ; $7ba2: $69
	and  a                                           ; $7ba3: $a7
	sbc  d                                           ; $7ba4: $9a
	ld   e, e                                        ; $7ba5: $5b
	adc  c                                           ; $7ba6: $89
	sub  l                                           ; $7ba7: $95
	sub  $98                                         ; $7ba8: $d6 $98
	sbc  l                                           ; $7baa: $9d
	ld   [hl], a                                     ; $7bab: $77
	ret                                              ; $7bac: $c9


	ld   l, [hl]                                     ; $7bad: $6e
	ld   b, a                                        ; $7bae: $47
	and  h                                           ; $7baf: $a4
	push af                                          ; $7bb0: $f5
	xor  a                                           ; $7bb1: $af
	ld   e, e                                        ; $7bb2: $5b
	add  a                                           ; $7bb3: $87
	db   $d3                                         ; $7bb4: $d3
	ld   l, h                                        ; $7bb5: $6c
	jr   z, jr_0e2_7b4c                              ; $7bb6: $28 $94

	sub  l                                           ; $7bb8: $95

Jump_0e2_7bb9:
	ld   a, h                                        ; $7bb9: $7c
	ld   b, l                                        ; $7bba: $45
	or   [hl]                                        ; $7bbb: $b6
	sub  a                                           ; $7bbc: $97
	ld   a, [hl]                                     ; $7bbd: $7e
	add  a                                           ; $7bbe: $87
	db   $db                                         ; $7bbf: $db
	cp   c                                           ; $7bc0: $b9
	ld   l, l                                        ; $7bc1: $6d
	and  a                                           ; $7bc2: $a7
	sub  $bc                                         ; $7bc3: $d6 $bc
	ld   c, b                                        ; $7bc5: $48
	or   [hl]                                        ; $7bc6: $b6
	ld   a, c                                        ; $7bc7: $79
	ld   e, b                                        ; $7bc8: $58
	halt                                             ; $7bc9: $76
	add  h                                           ; $7bca: $84
	ld   e, b                                        ; $7bcb: $58
	ld   [hl], l                                     ; $7bcc: $75
	ld   [hl], a                                     ; $7bcd: $77
	adc  c                                           ; $7bce: $89
	ld   [hl], a                                     ; $7bcf: $77
	sbc  c                                           ; $7bd0: $99
	xor  c                                           ; $7bd1: $a9
	ld   l, d                                        ; $7bd2: $6a
	xor  b                                           ; $7bd3: $a8
	and  [hl]                                        ; $7bd4: $a6
	sbc  e                                           ; $7bd5: $9b
	ld   a, c                                        ; $7bd6: $79
	sbc  b                                           ; $7bd7: $98
	sbc  b                                           ; $7bd8: $98
	ld   a, b                                        ; $7bd9: $78
	sub  [hl]                                        ; $7bda: $96
	sbc  b                                           ; $7bdb: $98
	ld   l, c                                        ; $7bdc: $69
	add  a                                           ; $7bdd: $87
	adc  b                                           ; $7bde: $88
	ld   a, b                                        ; $7bdf: $78
	add  a                                           ; $7be0: $87
	adc  b                                           ; $7be1: $88
	adc  b                                           ; $7be2: $88
	sub  a                                           ; $7be3: $97
	ld   a, b                                        ; $7be4: $78
	adc  b                                           ; $7be5: $88
	sub  a                                           ; $7be6: $97
	sbc  c                                           ; $7be7: $99
	sbc  c                                           ; $7be8: $99
	adc  b                                           ; $7be9: $88
	xor  b                                           ; $7bea: $a8
	adc  b                                           ; $7beb: $88
	sbc  b                                           ; $7bec: $98
	sbc  b                                           ; $7bed: $98
	adc  b                                           ; $7bee: $88
	adc  c                                           ; $7bef: $89
	sbc  b                                           ; $7bf0: $98
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	add  a                                           ; $7bf3: $87
	ld   [hl], a                                     ; $7bf4: $77
	ld   a, b                                        ; $7bf5: $78
	ld   [hl], a                                     ; $7bf6: $77
	ld   [hl], a                                     ; $7bf7: $77
	ld   [hl], a                                     ; $7bf8: $77
	ld   [hl], a                                     ; $7bf9: $77
	ld   [hl], a                                     ; $7bfa: $77
	ld   [hl], a                                     ; $7bfb: $77
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
	ld   [hl], a                                     ; $7c0c: $77
	ld   [hl], a                                     ; $7c0d: $77
	ld   h, [hl]                                     ; $7c0e: $66
	ld   h, [hl]                                     ; $7c0f: $66
	ld   d, l                                        ; $7c10: $55
	ld   d, l                                        ; $7c11: $55
	ld   d, l                                        ; $7c12: $55
	ld   h, [hl]                                     ; $7c13: $66
	ld   h, a                                        ; $7c14: $67
	ld   [hl], a                                     ; $7c15: $77
	adc  c                                           ; $7c16: $89
	xor  d                                           ; $7c17: $aa
	xor  d                                           ; $7c18: $aa
	cp   h                                           ; $7c19: $bc
	call z, $dccd                                    ; $7c1a: $cc $cd $dc
	call z, $bbcc                                    ; $7c1d: $cc $cc $bb
	xor  d                                           ; $7c20: $aa
	xor  b                                           ; $7c21: $a8
	add  a                                           ; $7c22: $87
	ld   h, [hl]                                     ; $7c23: $66
	ld   d, h                                        ; $7c24: $54
	inc  sp                                          ; $7c25: $33
	ld   [hl+], a                                    ; $7c26: $22
	ld   de, $0111                                   ; $7c27: $11 $11 $01
	ld   de, $4523                                   ; $7c2a: $11 $23 $45
	ld   h, a                                        ; $7c2d: $67
	sbc  e                                           ; $7c2e: $9b
	adc  $ff                                         ; $7c2f: $ce $ff
	rst  $38                                         ; $7c31: $ff
	rst  $38                                         ; $7c32: $ff
	rst  $38                                         ; $7c33: $ff
	rst  $38                                         ; $7c34: $ff
	rst  $38                                         ; $7c35: $ff
	rst  $38                                         ; $7c36: $ff
	db   $ed                                         ; $7c37: $ed
	cp   d                                           ; $7c38: $ba
	sub  a                                           ; $7c39: $97
	ld   h, l                                        ; $7c3a: $65
	ld   [hl-], a                                    ; $7c3b: $32
	ld   de, $1111                                   ; $7c3c: $11 $11 $11
	ld   de, $1111                                   ; $7c3f: $11 $11 $11
	ld   de, $1411                                   ; $7c42: $11 $11 $14
	ld   l, d                                        ; $7c45: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c46: $cf
	rst  $38                                         ; $7c47: $ff
	rst  $38                                         ; $7c48: $ff
	rst  $38                                         ; $7c49: $ff
	rst  $38                                         ; $7c4a: $ff
	rst  $38                                         ; $7c4b: $ff
	rst  $38                                         ; $7c4c: $ff
	rst  $38                                         ; $7c4d: $ff
	rst  $38                                         ; $7c4e: $ff
	db   $ec                                         ; $7c4f: $ec
	and  a                                           ; $7c50: $a7
	ld   d, h                                        ; $7c51: $54
	ld   hl, $1111                                   ; $7c52: $21 $11 $11
	ld   de, $1111                                   ; $7c55: $11 $11 $11
	ld   de, $1111                                   ; $7c58: $11 $11 $11
	ld   de, $ff6a                                   ; $7c5b: $11 $6a $ff
	rst  $38                                         ; $7c5e: $ff
	rst  $38                                         ; $7c5f: $ff
	rst  $38                                         ; $7c60: $ff
	rst  $38                                         ; $7c61: $ff
	rst  $38                                         ; $7c62: $ff
	rst  $38                                         ; $7c63: $ff
	rst  $38                                         ; $7c64: $ff
	rst  $38                                         ; $7c65: $ff
	db   $fd                                         ; $7c66: $fd
	and  a                                           ; $7c67: $a7
	ld   d, d                                        ; $7c68: $52
	ld   de, $1111                                   ; $7c69: $11 $11 $11
	ld   de, $1111                                   ; $7c6c: $11 $11 $11
	ld   de, $1111                                   ; $7c6f: $11 $11 $11
	ld   [de], a                                     ; $7c72: $12
	ld   a, e                                        ; $7c73: $7b
	rst  $38                                         ; $7c74: $ff
	rst  $38                                         ; $7c75: $ff
	rst  $38                                         ; $7c76: $ff
	rst  $38                                         ; $7c77: $ff
	rst  $38                                         ; $7c78: $ff
	rst  $38                                         ; $7c79: $ff
	rst  $38                                         ; $7c7a: $ff
	rst  $38                                         ; $7c7b: $ff
	rst  $38                                         ; $7c7c: $ff
	db   $fd                                         ; $7c7d: $fd
	sub  [hl]                                        ; $7c7e: $96
	ld   sp, $1111                                   ; $7c7f: $31 $11 $11
	ld   de, $1111                                   ; $7c82: $11 $11 $11

Call_0e2_7c85:
	ld   de, $1111                                   ; $7c85: $11 $11 $11
	ld   de, $af15                                   ; $7c88: $11 $15 $af
	rst  $38                                         ; $7c8b: $ff
	rst  $38                                         ; $7c8c: $ff
	rst  $38                                         ; $7c8d: $ff
	rst  $38                                         ; $7c8e: $ff
	rst  $38                                         ; $7c8f: $ff
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	rst  $38                                         ; $7c92: $ff
	rst  $38                                         ; $7c93: $ff
	db   $db                                         ; $7c94: $db
	ld   [hl], h                                     ; $7c95: $74
	ld   hl, $1111                                   ; $7c96: $21 $11 $11
	ld   de, $1111                                   ; $7c99: $11 $11 $11
	ld   de, $1111                                   ; $7c9c: $11 $11 $11
	ld   de, $ef39                                   ; $7c9f: $11 $39 $ef
	rst  $38                                         ; $7ca2: $ff
	rst  $38                                         ; $7ca3: $ff
	rst  $38                                         ; $7ca4: $ff
	rst  $38                                         ; $7ca5: $ff
	rst  $38                                         ; $7ca6: $ff
	rst  $38                                         ; $7ca7: $ff
	rst  $38                                         ; $7ca8: $ff
	rst  $38                                         ; $7ca9: $ff
	rst  $38                                         ; $7caa: $ff
	ret  z                                           ; $7cab: $c8

	ld   d, e                                        ; $7cac: $53
	ld   de, $1111                                   ; $7cad: $11 $11 $11
	ld   de, $1111                                   ; $7cb0: $11 $11 $11
	ld   de, $1111                                   ; $7cb3: $11 $11 $11
	ld   [de], a                                     ; $7cb6: $12
	ld   a, h                                        ; $7cb7: $7c
	rst  $38                                         ; $7cb8: $ff
	rst  $38                                         ; $7cb9: $ff
	rst  $38                                         ; $7cba: $ff
	rst  $38                                         ; $7cbb: $ff
	rst  $38                                         ; $7cbc: $ff
	rst  $38                                         ; $7cbd: $ff
	rst  $38                                         ; $7cbe: $ff
	rst  $38                                         ; $7cbf: $ff
	rst  $38                                         ; $7cc0: $ff
	db   $ec                                         ; $7cc1: $ec
	or   l                                           ; $7cc2: $b5
	ld   sp, $1111                                   ; $7cc3: $31 $11 $11
	ld   de, $1111                                   ; $7cc6: $11 $11 $11
	ld   de, $1111                                   ; $7cc9: $11 $11 $11
	ld   de, $ff5b                                   ; $7ccc: $11 $5b $ff
	rst  $38                                         ; $7ccf: $ff
	rst  $38                                         ; $7cd0: $ff
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	rst  $38                                         ; $7cd3: $ff
	rst  $38                                         ; $7cd4: $ff
	rst  $38                                         ; $7cd5: $ff
	rst  $38                                         ; $7cd6: $ff
	cp   $b9                                         ; $7cd7: $fe $b9
	ld   h, e                                        ; $7cd9: $63
	ld   de, $1111                                   ; $7cda: $11 $11 $11
	ld   de, $1111                                   ; $7cdd: $11 $11 $11
	ld   de, $3811                                   ; $7ce0: $11 $11 $38
	rst  JumpTable                                         ; $7ce3: $df
	rst  $38                                         ; $7ce4: $ff
	rst  $38                                         ; $7ce5: $ff
	rst  $38                                         ; $7ce6: $ff
	rst  $38                                         ; $7ce7: $ff
	rst  $38                                         ; $7ce8: $ff
	rst  $38                                         ; $7ce9: $ff
	rst  $38                                         ; $7cea: $ff
	rst  $38                                         ; $7ceb: $ff
	rst  $38                                         ; $7cec: $ff
	db   $ec                                         ; $7ced: $ec
	sbc  b                                           ; $7cee: $98
	ld   h, d                                        ; $7cef: $62
	ld   de, $1111                                   ; $7cf0: $11 $11 $11
	ld   de, $1111                                   ; $7cf3: $11 $11 $11
	ld   de, $ff19                                   ; $7cf6: $11 $19 $ff
	rst  $38                                         ; $7cf9: $ff
	rst  $38                                         ; $7cfa: $ff
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	rst  $38                                         ; $7cfd: $ff
	rst  $38                                         ; $7cfe: $ff
	rst  $38                                         ; $7cff: $ff
	rst  $38                                         ; $7d00: $ff
	rst  $38                                         ; $7d01: $ff
	cp   $ca                                         ; $7d02: $fe $ca
	ld   h, h                                        ; $7d04: $64
	ld   de, $1111                                   ; $7d05: $11 $11 $11
	ld   de, $1111                                   ; $7d08: $11 $11 $11
	ld   de, $1111                                   ; $7d0b: $11 $11 $11
	rst  $28                                         ; $7d0e: $ef
	rst  $38                                         ; $7d0f: $ff
	rst  $38                                         ; $7d10: $ff
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	rst  $38                                         ; $7d13: $ff
	rst  $38                                         ; $7d14: $ff
	rst  $38                                         ; $7d15: $ff
	rst  $38                                         ; $7d16: $ff
	rst  $38                                         ; $7d17: $ff
	db   $eb                                         ; $7d18: $eb
	add  a                                           ; $7d19: $87
	ld   d, e                                        ; $7d1a: $53
	ld   hl, $1111                                   ; $7d1b: $21 $11 $11
	ld   de, $1111                                   ; $7d1e: $11 $11 $11
	ld   de, $1111                                   ; $7d21: $11 $11 $11
	xor  a                                           ; $7d24: $af
	rst  $38                                         ; $7d25: $ff
	rst  $38                                         ; $7d26: $ff
	rst  $38                                         ; $7d27: $ff
	rst  $38                                         ; $7d28: $ff
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	rst  $38                                         ; $7d2b: $ff
	rst  $38                                         ; $7d2c: $ff
	rst  $38                                         ; $7d2d: $ff
	ld   a, [$6499]                                  ; $7d2e: $fa $99 $64
	ld   de, $1111                                   ; $7d31: $11 $11 $11
	ld   de, $1111                                   ; $7d34: $11 $11 $11
	ld   de, $1111                                   ; $7d37: $11 $11 $11
	dec  e                                           ; $7d3a: $1d
	rst  $38                                         ; $7d3b: $ff
	rst  $38                                         ; $7d3c: $ff
	rst  $38                                         ; $7d3d: $ff
	rst  $38                                         ; $7d3e: $ff
	rst  $38                                         ; $7d3f: $ff
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	cp   $bb                                         ; $7d44: $fe $bb
	sub  h                                           ; $7d46: $94
	ld   h, l                                        ; $7d47: $65
	ld   de, $1111                                   ; $7d48: $11 $11 $11
	ld   de, $1111                                   ; $7d4b: $11 $11 $11
	ld   de, $1111                                   ; $7d4e: $11 $11 $11
	inc  a                                           ; $7d51: $3c
	rst  $38                                         ; $7d52: $ff
	rst  $38                                         ; $7d53: $ff
	rst  $38                                         ; $7d54: $ff
	rst  $38                                         ; $7d55: $ff
	rst  $38                                         ; $7d56: $ff
	rst  $38                                         ; $7d57: $ff
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	rst  $38                                         ; $7d5b: $ff
	db   $db                                         ; $7d5c: $db
	ld   [hl], l                                     ; $7d5d: $75
	ld   h, d                                        ; $7d5e: $62
	ld   de, $1111                                   ; $7d5f: $11 $11 $11
	ld   de, $1111                                   ; $7d62: $11 $11 $11
	ld   de, $1111                                   ; $7d65: $11 $11 $11
	dec  d                                           ; $7d68: $15
	rst  $38                                         ; $7d69: $ff
	rst  $38                                         ; $7d6a: $ff
	rst  $38                                         ; $7d6b: $ff
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	rst  JumpTable                                         ; $7d6e: $df
	rst  $38                                         ; $7d6f: $ff
	rst  $38                                         ; $7d70: $ff
	rst  $38                                         ; $7d71: $ff
	rst  $38                                         ; $7d72: $ff
	rst  $20                                         ; $7d73: $e7
	and  a                                           ; $7d74: $a7
	dec  [hl]                                        ; $7d75: $35
	ld   de, $1131                                   ; $7d76: $11 $31 $11
	ld   de, $1111                                   ; $7d79: $11 $11 $11
	ld   de, $3111                                   ; $7d7c: $11 $11 $31
	ld   de, $fe6e                                   ; $7d7f: $11 $6e $fe
	rst  $28                                         ; $7d82: $ef
	rst  $38                                         ; $7d83: $ff
	db   $fd                                         ; $7d84: $fd
	rst  $38                                         ; $7d85: $ff
	rst  $38                                         ; $7d86: $ff
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	rst  $38                                         ; $7d89: $ff
	rst  $38                                         ; $7d8a: $ff
	ei                                               ; $7d8b: $fb
	ld   b, c                                        ; $7d8c: $41
	ld   a, [hl+]                                    ; $7d8d: $2a
	and  e                                           ; $7d8e: $a3
	ld   de, $1111                                   ; $7d8f: $11 $11 $11
	ld   de, $1111                                   ; $7d92: $11 $11 $11
	ld   hl, $4711                                   ; $7d95: $21 $11 $47
	ld   d, $ff                                      ; $7d98: $16 $ff
	rst  $38                                         ; $7d9a: $ff
	rst  $38                                         ; $7d9b: $ff
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	rst  $28                                         ; $7d9e: $ef
	rst  $38                                         ; $7d9f: $ff
	rst  $38                                         ; $7da0: $ff
	db   $fd                                         ; $7da1: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7da2: $cf
	ld   hl, sp+$43                                  ; $7da3: $f8 $43
	ld   e, h                                        ; $7da5: $5c
	sub  d                                           ; $7da6: $92
	ld   de, $1112                                   ; $7da7: $11 $12 $11
	ld   de, $1115                                   ; $7daa: $11 $15 $11
	ld   de, $7113                                   ; $7dad: $11 $13 $71
	dec  de                                          ; $7db0: $1b
	rst  JumpTable                                         ; $7db1: $df
	db   $f4                                         ; $7db2: $f4
	rst  $28                                         ; $7db3: $ef
	rst  $38                                         ; $7db4: $ff
	ei                                               ; $7db5: $fb
	adc  a                                           ; $7db6: $8f
	rst  $38                                         ; $7db7: $ff
	rst  $38                                         ; $7db8: $ff
	rst  $38                                         ; $7db9: $ff

Call_0e2_7dba:
	rst  $38                                         ; $7dba: $ff
	sub  $4d                                         ; $7dbb: $d6 $4d
	ei                                               ; $7dbd: $fb
	ld   [hl], h                                     ; $7dbe: $74
	ld   de, $1111                                   ; $7dbf: $11 $11 $11
	ld   de, $1121                                   ; $7dc2: $11 $21 $11
	ld   de, $5311                                   ; $7dc5: $11 $11 $53
	ld   [de], a                                     ; $7dc8: $12
	ld   d, [hl]                                     ; $7dc9: $56
	db   $fc                                         ; $7dca: $fc
	rst  $38                                         ; $7dcb: $ff
	ld   e, a                                        ; $7dcc: $5f
	ld   hl, sp-$01                                  ; $7dcd: $f8 $ff
	xor  a                                           ; $7dcf: $af
	ei                                               ; $7dd0: $fb
	rst  $38                                         ; $7dd1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dd2: $cf
	rst  $30                                         ; $7dd3: $f7
	rst  $28                                         ; $7dd4: $ef
	ld   a, h                                        ; $7dd5: $7c
	sub  c                                           ; $7dd6: $91
	xor  d                                           ; $7dd7: $aa
	ld   de, $1112                                   ; $7dd8: $11 $12 $11
	ld   de, $1111                                   ; $7ddb: $11 $11 $11
	ld   de, $1111                                   ; $7dde: $11 $11 $11
	ld   [hl], e                                     ; $7de1: $73
	inc  e                                           ; $7de2: $1c
	sub  $ef                                         ; $7de3: $d6 $ef
	rst  $38                                         ; $7de5: $ff
	jp   c, $ffff                                    ; $7de6: $da $ff $ff

	cp   $ff                                         ; $7de9: $fe $ff
	rst  $38                                         ; $7deb: $ff
	rst  $38                                         ; $7dec: $ff
	or   a                                           ; $7ded: $b7
	db   $fd                                         ; $7dee: $fd
	ld   e, a                                        ; $7def: $5f

jr_0e2_7df0:
	ld   [hl], c                                     ; $7df0: $71
	ld   h, $61                                      ; $7df1: $26 $61
	ld   de, $1152                                   ; $7df3: $11 $52 $11
	ld   de, $1111                                   ; $7df6: $11 $11 $11
	ld   de, $7b21                                   ; $7df9: $11 $21 $7b
	jr   z, @+$01                                    ; $7dfc: $28 $ff

	jp   z, $cdff                                    ; $7dfe: $ca $ff $cd

	cp   a                                           ; $7e01: $bf
	rst  $38                                         ; $7e02: $ff
	rst  $38                                         ; $7e03: $ff
	ld   a, a                                        ; $7e04: $7f
	db   $fd                                         ; $7e05: $fd
	rst  $30                                         ; $7e06: $f7
	ld   e, a                                        ; $7e07: $5f
	ld   hl, sp-$4f                                  ; $7e08: $f8 $b1
	ld   e, a                                        ; $7e0a: $5f
	and  c                                           ; $7e0b: $a1
	ld   de, $117c                                   ; $7e0c: $11 $7c $11
	rla                                              ; $7e0f: $17
	and  c                                           ; $7e10: $a1
	ld   de, $11a8                                   ; $7e11: $11 $a8 $11
	dec  d                                           ; $7e14: $15
	add  sp, $11                                     ; $7e15: $e8 $11
	dec  e                                           ; $7e17: $1d
	rst  $38                                         ; $7e18: $ff
	ld   [de], a                                     ; $7e19: $12
	rst  $38                                         ; $7e1a: $ff
	ld   e, h                                        ; $7e1b: $5c
	rst  $38                                         ; $7e1c: $ff
	xor  $ff                                         ; $7e1d: $ee $ff
	xor  $fb                                         ; $7e1f: $ee $fb
	ld   a, $fc                                      ; $7e21: $3e $fc
	inc  h                                           ; $7e23: $24
	sbc  d                                           ; $7e24: $9a
	add  h                                           ; $7e25: $84
	ld   sp, $5129                                   ; $7e26: $31 $29 $51
	scf                                              ; $7e29: $37
	ld   d, h                                        ; $7e2a: $54
	ld   de, $9334                                   ; $7e2b: $11 $34 $93
	ld   de, $617b                                   ; $7e2e: $11 $7b $61
	ld   a, [de]                                     ; $7e31: $1a
	jp   c, Jump_0e2_5f85                            ; $7e32: $da $85 $5f

	db   $fd                                         ; $7e35: $fd
	ld   b, c                                        ; $7e36: $41
	rst  $38                                         ; $7e37: $ff
	ld   de, $fcff                                   ; $7e38: $11 $ff $fc
	ld   a, l                                        ; $7e3b: $7d
	db   $fc                                         ; $7e3c: $fc
	jp   c, $f74d                                    ; $7e3d: $da $4d $f7

	ld   b, a                                        ; $7e40: $47
	adc  b                                           ; $7e41: $88
	ld   h, e                                        ; $7e42: $63
	ld   d, a                                        ; $7e43: $57
	ld   d, l                                        ; $7e44: $55
	ld   h, c                                        ; $7e45: $61
	ld   c, c                                        ; $7e46: $49
	ld   b, h                                        ; $7e47: $44
	ld   h, e                                        ; $7e48: $63
	ld   c, c                                        ; $7e49: $49
	ld   h, d                                        ; $7e4a: $62
	ld   [hl], l                                     ; $7e4b: $75
	ld   c, c                                        ; $7e4c: $49
	ld   h, $a5                                      ; $7e4d: $26 $a5
	ld   a, [hl]                                     ; $7e4f: $7e
	or   c                                           ; $7e50: $b1
	cp   a                                           ; $7e51: $bf
	ld   b, a                                        ; $7e52: $47
	call z, $9fe3                                    ; $7e53: $cc $e3 $9f
	ld   [hl], d                                     ; $7e56: $72
	call Call_0e2_66df                               ; $7e57: $cd $df $66
	call z, $38fd                                    ; $7e5a: $cc $fd $38
	reti                                             ; $7e5d: $d9


	ld   d, d                                        ; $7e5e: $52
	ld   a, d                                        ; $7e5f: $7a
	add  [hl]                                        ; $7e60: $86
	ld   a, b                                        ; $7e61: $78
	xor  h                                           ; $7e62: $ac
	ld   h, c                                        ; $7e63: $61
	ld   l, e                                        ; $7e64: $6b
	adc  c                                           ; $7e65: $89
	ld   d, e                                        ; $7e66: $53
	reti                                             ; $7e67: $d9


	ld   h, [hl]                                     ; $7e68: $66
	jr   z, jr_0e2_7df0                              ; $7e69: $28 $85

	ld   [hl], l                                     ; $7e6b: $75
	ld   a, b                                        ; $7e6c: $78
	ld   d, h                                        ; $7e6d: $54
	ld   e, h                                        ; $7e6e: $5c
	sub  [hl]                                        ; $7e6f: $96
	add  d                                           ; $7e70: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e71: $cf
	ld   c, c                                        ; $7e72: $49
	ld   [hl], l                                     ; $7e73: $75
	ei                                               ; $7e74: $fb
	ld   a, [hl-]                                    ; $7e75: $3a
	ld   l, l                                        ; $7e76: $6d
	rst  ToBoot                                         ; $7e77: $c7
	rst  $10                                         ; $7e78: $d7
	sbc  $97                                         ; $7e79: $de $97
	ld   c, a                                        ; $7e7b: $4f
	ld   [hl], a                                     ; $7e7c: $77
	or   l                                           ; $7e7d: $b5
	ld   a, [$5869]                                  ; $7e7e: $fa $69 $58
	sbc  e                                           ; $7e81: $9b
	ld   [hl], c                                     ; $7e82: $71
	sbc  b                                           ; $7e83: $98
	sbc  b                                           ; $7e84: $98
	ld   a, [de]                                     ; $7e85: $1a
	call nz, Call_0e2_7c85                           ; $7e86: $c4 $85 $7c
	and  a                                           ; $7e89: $a7
	ld   e, b                                        ; $7e8a: $58
	sbc  l                                           ; $7e8b: $9d
	ld   d, h                                        ; $7e8c: $54
	adc  l                                           ; $7e8d: $8d
	add  $95                                         ; $7e8e: $c6 $95
	ld   a, [$1e5d]                                  ; $7e90: $fa $5d $1e
	db   $d3                                         ; $7e93: $d3
	and  $ce                                         ; $7e94: $e6 $ce
	ld   e, e                                        ; $7e96: $5b
	or   l                                           ; $7e97: $b5
	cp   h                                           ; $7e98: $bc
	adc  b                                           ; $7e99: $88
	adc  l                                           ; $7e9a: $8d
	ld   d, [hl]                                     ; $7e9b: $56
	sub  a                                           ; $7e9c: $97
	xor  c                                           ; $7e9d: $a9
	ld   a, h                                        ; $7e9e: $7c
	add  a                                           ; $7e9f: $87
	jp   nz, $8a8b                                   ; $7ea0: $c2 $8b $8a

	ld   l, e                                        ; $7ea3: $6b
	ld   h, a                                        ; $7ea4: $67
	ld   e, b                                        ; $7ea5: $58
	sub  [hl]                                        ; $7ea6: $96
	xor  d                                           ; $7ea7: $aa
	sbc  d                                           ; $7ea8: $9a
	ld   l, d                                        ; $7ea9: $6a
	or   l                                           ; $7eaa: $b5
	call nz, Call_0e2_7dba                           ; $7eab: $c4 $ba $7d
	ld   e, a                                        ; $7eae: $5f
	ld   e, c                                        ; $7eaf: $59
	jp   $c9d5                                       ; $7eb0: $c3 $d5 $c9


	ld   l, l                                        ; $7eb3: $6d
	ld   l, c                                        ; $7eb4: $69
	ld   a, e                                        ; $7eb5: $7b
	sub  l                                           ; $7eb6: $95
	call nc, Call_0e2_5dab                           ; $7eb7: $d4 $ab $5d
	inc  l                                           ; $7eba: $2c
	or   [hl]                                        ; $7ebb: $b6
	jp   nz, $9ae6                                   ; $7ebc: $c2 $e6 $9a

	inc  a                                           ; $7ebf: $3c
	ld   a, e                                        ; $7ec0: $7b
	ld   h, a                                        ; $7ec1: $67
	or   a                                           ; $7ec2: $b7
	or   e                                           ; $7ec3: $b3
	xor  c                                           ; $7ec4: $a9
	ld   a, a                                        ; $7ec5: $7f
	add  hl, sp                                      ; $7ec6: $39
	push de                                          ; $7ec7: $d5
	push bc                                          ; $7ec8: $c5
	sbc  c                                           ; $7ec9: $99
	xor  e                                           ; $7eca: $ab
	ld   e, h                                        ; $7ecb: $5c
	ld   c, [hl]                                     ; $7ecc: $4e
	and  e                                           ; $7ecd: $a3
	or   e                                           ; $7ece: $b3
	cp   d                                           ; $7ecf: $ba
	ld   c, d                                        ; $7ed0: $4a
	ld   a, d                                        ; $7ed1: $7a
	and  l                                           ; $7ed2: $a5
	add  [hl]                                        ; $7ed3: $86
	rst  ToBoot                                         ; $7ed4: $c7
	ld   h, a                                        ; $7ed5: $67
	ld   e, l                                        ; $7ed6: $5d
	ld   e, e                                        ; $7ed7: $5b
	ld   d, [hl]                                     ; $7ed8: $56
	and  a                                           ; $7ed9: $a7
	sub  h                                           ; $7eda: $94
	adc  d                                           ; $7edb: $8a
	and  l                                           ; $7edc: $a5
	ld   l, h                                        ; $7edd: $6c
	ld   a, e                                        ; $7ede: $7b
	ld   [hl], h                                     ; $7edf: $74
	cp   b                                           ; $7ee0: $b8
	add  [hl]                                        ; $7ee1: $86
	ld   e, h                                        ; $7ee2: $5c
	ld   l, d                                        ; $7ee3: $6a
	add  [hl]                                        ; $7ee4: $86
	push de                                          ; $7ee5: $d5
	or   [hl]                                        ; $7ee6: $b6
	ld   a, b                                        ; $7ee7: $78
	xor  d                                           ; $7ee8: $aa
	ld   a, $1d                                      ; $7ee9: $3e $1d
	or   d                                           ; $7eeb: $b2
	db   $d3                                         ; $7eec: $d3
	add  $6a                                         ; $7eed: $c6 $6a
	ld   e, d                                        ; $7eef: $5a
	ld   c, c                                        ; $7ef0: $49
	sub  c                                           ; $7ef1: $91
	push bc                                          ; $7ef2: $c5
	adc  d                                           ; $7ef3: $8a
	ld   l, $59                                      ; $7ef4: $2e $59
	halt                                             ; $7ef6: $76
	and  h                                           ; $7ef7: $a4
	pop  bc                                          ; $7ef8: $c1
	cp   b                                           ; $7ef9: $b8
	ccf                                              ; $7efa: $3f
	add  hl, sp                                      ; $7efb: $39
	sub  l                                           ; $7efc: $95
	or   a                                           ; $7efd: $b7
	adc  c                                           ; $7efe: $89
	ld   [hl], a                                     ; $7eff: $77
	ld   a, e                                        ; $7f00: $7b
	ld   l, b                                        ; $7f01: $68
	ld   h, a                                        ; $7f02: $67
	and  h                                           ; $7f03: $a4
	and  [hl]                                        ; $7f04: $a6
	adc  c                                           ; $7f05: $89
	ld   e, d                                        ; $7f06: $5a
	ld   e, d                                        ; $7f07: $5a
	add  [hl]                                        ; $7f08: $86
	or   e                                           ; $7f09: $b3
	or   [hl]                                        ; $7f0a: $b6
	sub  a                                           ; $7f0b: $97
	ld   e, h                                        ; $7f0c: $5c
	ld   e, d                                        ; $7f0d: $5a
	ld   c, c                                        ; $7f0e: $49
	or   d                                           ; $7f0f: $b2
	and  a                                           ; $7f10: $a7
	ld   l, d                                        ; $7f11: $6a
	ld   d, a                                        ; $7f12: $57
	and  [hl]                                        ; $7f13: $a6
	and  e                                           ; $7f14: $a3
	cp   c                                           ; $7f15: $b9
	ld   e, e                                        ; $7f16: $5b
	inc  a                                           ; $7f17: $3c
	halt                                             ; $7f18: $76
	adc  d                                           ; $7f19: $8a
	ld   l, d                                        ; $7f1a: $6a
	ld   h, [hl]                                     ; $7f1b: $66
	pop  hl                                          ; $7f1c: $e1
	add  $89                                         ; $7f1d: $c6 $89
	inc  a                                           ; $7f1f: $3c
	ld   a, b                                        ; $7f20: $78
	ld   e, d                                        ; $7f21: $5a
	add  [hl]                                        ; $7f22: $86
	and  e                                           ; $7f23: $a3
	or   [hl]                                        ; $7f24: $b6
	ld   e, l                                        ; $7f25: $5d
	ld   c, c                                        ; $7f26: $49
	add  [hl]                                        ; $7f27: $86
	sub  a                                           ; $7f28: $97
	sub  [hl]                                        ; $7f29: $96
	ld   a, c                                        ; $7f2a: $79
	ld   h, a                                        ; $7f2b: $67
	add  [hl]                                        ; $7f2c: $86
	sub  [hl]                                        ; $7f2d: $96
	ld   a, c                                        ; $7f2e: $79
	add  a                                           ; $7f2f: $87
	add  [hl]                                        ; $7f30: $86
	xor  b                                           ; $7f31: $a8
	ld   a, c                                        ; $7f32: $79
	ld   c, l                                        ; $7f33: $4d
	ld   c, e                                        ; $7f34: $4b
	ld   h, [hl]                                     ; $7f35: $66
	push bc                                          ; $7f36: $c5
	jp   nz, $9ac6                                   ; $7f37: $c2 $c6 $9a

	inc  a                                           ; $7f3a: $3c
	ld   e, c                                        ; $7f3b: $59
	ld   [hl], l                                     ; $7f3c: $75
	xor  b                                           ; $7f3d: $a8
	ld   a, b                                        ; $7f3e: $78
	ld   a, b                                        ; $7f3f: $78
	ld   a, b                                        ; $7f40: $78
	sub  a                                           ; $7f41: $97
	ld   a, b                                        ; $7f42: $78
	and  h                                           ; $7f43: $a4
	add  $8a                                         ; $7f44: $c6 $8a
	ld   c, d                                        ; $7f46: $4a
	ld   e, e                                        ; $7f47: $5b
	halt                                             ; $7f48: $76
	sub  a                                           ; $7f49: $97
	and  l                                           ; $7f4a: $a5
	sbc  c                                           ; $7f4b: $99
	ld   e, e                                        ; $7f4c: $5b
	ld   l, d                                        ; $7f4d: $6a
	halt                                             ; $7f4e: $76
	or   l                                           ; $7f4f: $b5
	and  a                                           ; $7f50: $a7
	adc  c                                           ; $7f51: $89
	adc  b                                           ; $7f52: $88
	ld   e, d                                        ; $7f53: $5a
	ld   l, c                                        ; $7f54: $69
	adc  b                                           ; $7f55: $88
	adc  d                                           ; $7f56: $8a
	ld   e, d                                        ; $7f57: $5a
	and  e                                           ; $7f58: $a3
	sub  $89                                         ; $7f59: $d6 $89
	ld   e, c                                        ; $7f5b: $59
	sub  [hl]                                        ; $7f5c: $96
	sub  a                                           ; $7f5d: $97
	ld   a, h                                        ; $7f5e: $7c
	ld   c, d                                        ; $7f5f: $4a
	halt                                             ; $7f60: $76
	sub  [hl]                                        ; $7f61: $96
	and  a                                           ; $7f62: $a7
	sbc  b                                           ; $7f63: $98
	ld   l, c                                        ; $7f64: $69
	add  l                                           ; $7f65: $85
	push bc                                          ; $7f66: $c5
	ld   a, e                                        ; $7f67: $7b
	ld   a, [hl-]                                    ; $7f68: $3a
	ld   a, b                                        ; $7f69: $78
	add  a                                           ; $7f6a: $87
	add  a                                           ; $7f6b: $87
	and  [hl]                                        ; $7f6c: $a6
	sbc  c                                           ; $7f6d: $99
	ld   a, b                                        ; $7f6e: $78
	ld   l, d                                        ; $7f6f: $6a
	ld   a, c                                        ; $7f70: $79
	add  a                                           ; $7f71: $87
	sub  a                                           ; $7f72: $97
	adc  c                                           ; $7f73: $89
	ld   h, a                                        ; $7f74: $67
	and  [hl]                                        ; $7f75: $a6
	sbc  b                                           ; $7f76: $98
	ld   a, c                                        ; $7f77: $79
	add  a                                           ; $7f78: $87
	add  a                                           ; $7f79: $87
	sbc  c                                           ; $7f7a: $99
	ld   l, d                                        ; $7f7b: $6a
	ld   [hl], a                                     ; $7f7c: $77
	sub  [hl]                                        ; $7f7d: $96
	sbc  b                                           ; $7f7e: $98
	ld   a, b                                        ; $7f7f: $78
	adc  b                                           ; $7f80: $88
	adc  c                                           ; $7f81: $89
	ld   a, b                                        ; $7f82: $78
	sub  a                                           ; $7f83: $97
	sub  [hl]                                        ; $7f84: $96
	and  a                                           ; $7f85: $a7
	ld   a, c                                        ; $7f86: $79
	ld   l, b                                        ; $7f87: $68
	add  a                                           ; $7f88: $87
	sub  a                                           ; $7f89: $97
	adc  c                                           ; $7f8a: $89
	ld   l, b                                        ; $7f8b: $68
	add  a                                           ; $7f8c: $87
	and  a                                           ; $7f8d: $a7
	adc  c                                           ; $7f8e: $89
	ld   l, d                                        ; $7f8f: $6a
	add  a                                           ; $7f90: $87
	and  a                                           ; $7f91: $a7
	ld   a, c                                        ; $7f92: $79
	ld   [hl], a                                     ; $7f93: $77
	sub  a                                           ; $7f94: $97
	adc  c                                           ; $7f95: $89
	ld   l, d                                        ; $7f96: $6a
	ld   [hl], a                                     ; $7f97: $77
	sub  a                                           ; $7f98: $97
	sbc  b                                           ; $7f99: $98
	adc  c                                           ; $7f9a: $89
	ld   a, b                                        ; $7f9b: $78
	add  a                                           ; $7f9c: $87
	and  a                                           ; $7f9d: $a7
	sbc  b                                           ; $7f9e: $98
	ld   a, c                                        ; $7f9f: $79
	ld   a, b                                        ; $7fa0: $78
	add  a                                           ; $7fa1: $87
	adc  b                                           ; $7fa2: $88
	adc  c                                           ; $7fa3: $89
	ld   a, c                                        ; $7fa4: $79
	ld   a, d                                        ; $7fa5: $7a
	ld   a, b                                        ; $7fa6: $78
	sub  [hl]                                        ; $7fa7: $96
	adc  b                                           ; $7fa8: $88
	sub  a                                           ; $7fa9: $97
	sub  a                                           ; $7faa: $97
	adc  b                                           ; $7fab: $88
	ld   [hl], a                                     ; $7fac: $77
	sub  a                                           ; $7fad: $97
	sbc  c                                           ; $7fae: $99
	ld   e, h                                        ; $7faf: $5c
	ld   e, c                                        ; $7fb0: $59
	add  a                                           ; $7fb1: $87
	and  a                                           ; $7fb2: $a7
	ld   a, c                                        ; $7fb3: $79
	add  [hl]                                        ; $7fb4: $86
	or   l                                           ; $7fb5: $b5
	adc  c                                           ; $7fb6: $89
	ld   a, b                                        ; $7fb7: $78
	add  a                                           ; $7fb8: $87
	adc  b                                           ; $7fb9: $88
	ld   a, c                                        ; $7fba: $79
	adc  c                                           ; $7fbb: $89
	ld   a, c                                        ; $7fbc: $79
	ld   a, c                                        ; $7fbd: $79
	ld   a, c                                        ; $7fbe: $79
	ld   a, c                                        ; $7fbf: $79
	ld   [hl], a                                     ; $7fc0: $77
	and  l                                           ; $7fc1: $a5
	and  [hl]                                        ; $7fc2: $a6
	adc  c                                           ; $7fc3: $89
	ld   a, c                                        ; $7fc4: $79
	ld   a, b                                        ; $7fc5: $78
	ld   [hl], a                                     ; $7fc6: $77
	sub  [hl]                                        ; $7fc7: $96
	and  a                                           ; $7fc8: $a7
	ld   a, c                                        ; $7fc9: $79
	ld   e, d                                        ; $7fca: $5a
	ld   l, b                                        ; $7fcb: $68
	ld   [hl], a                                     ; $7fcc: $77
	add  [hl]                                        ; $7fcd: $86
	sub  [hl]                                        ; $7fce: $96
	sub  [hl]                                        ; $7fcf: $96
	adc  b                                           ; $7fd0: $88
	ld   a, c                                        ; $7fd1: $79
	ld   a, c                                        ; $7fd2: $79
	ld   l, d                                        ; $7fd3: $6a
	ld   a, b                                        ; $7fd4: $78
	add  a                                           ; $7fd5: $87
	sub  a                                           ; $7fd6: $97
	add  a                                           ; $7fd7: $87
	ld   a, c                                        ; $7fd8: $79
	add  a                                           ; $7fd9: $87
	sub  a                                           ; $7fda: $97
	adc  c                                           ; $7fdb: $89
	ld   a, b                                        ; $7fdc: $78
	ld   a, b                                        ; $7fdd: $78
	adc  b                                           ; $7fde: $88
	adc  b                                           ; $7fdf: $88
	add  a                                           ; $7fe0: $87
	add  a                                           ; $7fe1: $87
	add  a                                           ; $7fe2: $87
	ld   a, b                                        ; $7fe3: $78
	ld   [hl], a                                     ; $7fe4: $77
	adc  b                                           ; $7fe5: $88
	adc  b                                           ; $7fe6: $88
	adc  b                                           ; $7fe7: $88
	adc  b                                           ; $7fe8: $88
	ld   a, b                                        ; $7fe9: $78
	ld   a, c                                        ; $7fea: $79
	add  a                                           ; $7feb: $87
	add  a                                           ; $7fec: $87
	add  a                                           ; $7fed: $87
	add  a                                           ; $7fee: $87
	sub  a                                           ; $7fef: $97
	ld   a, b                                        ; $7ff0: $78
	ld   a, b                                        ; $7ff1: $78
	adc  b                                           ; $7ff2: $88
	adc  b                                           ; $7ff3: $88
	adc  b                                           ; $7ff4: $88
	add  a                                           ; $7ff5: $87
	adc  b                                           ; $7ff6: $88
	adc  b                                           ; $7ff7: $88
	adc  b                                           ; $7ff8: $88
	ld   a, b                                        ; $7ff9: $78
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	add  a                                           ; $7ffc: $87
	adc  b                                           ; $7ffd: $88
	adc  b                                           ; $7ffe: $88
	ld   a, b                                        ; $7fff: $78
