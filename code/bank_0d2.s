; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d2", ROMX[$4000], BANK[$d2]

	ld   a, b                                        ; $4000: $78
	add  a                                           ; $4001: $87
	adc  b                                           ; $4002: $88
	adc  b                                           ; $4003: $88
	ld   a, c                                        ; $4004: $79
	ld   a, c                                        ; $4005: $79
	add  a                                           ; $4006: $87
	sub  a                                           ; $4007: $97
	sbc  c                                           ; $4008: $99
	ld   a, c                                        ; $4009: $79
	ld   [hl], a                                     ; $400a: $77
	sub  a                                           ; $400b: $97
	and  a                                           ; $400c: $a7
	adc  c                                           ; $400d: $89
	ld   l, d                                        ; $400e: $6a
	ld   a, b                                        ; $400f: $78
	and  a                                           ; $4010: $a7
	sbc  c                                           ; $4011: $99
	ld   a, b                                        ; $4012: $78
	adc  b                                           ; $4013: $88
	sub  a                                           ; $4014: $97
	ld   a, b                                        ; $4015: $78
	ld   a, c                                        ; $4016: $79
	adc  c                                           ; $4017: $89
	add  a                                           ; $4018: $87
	sub  [hl]                                        ; $4019: $96
	adc  c                                           ; $401a: $89
	ld   a, c                                        ; $401b: $79
	ld   a, b                                        ; $401c: $78
	adc  b                                           ; $401d: $88
	add  a                                           ; $401e: $87
	sbc  b                                           ; $401f: $98
	ld   a, d                                        ; $4020: $7a
	ld   l, c                                        ; $4021: $69
	add  a                                           ; $4022: $87
	sub  a                                           ; $4023: $97
	and  a                                           ; $4024: $a7
	adc  b                                           ; $4025: $88
	adc  d                                           ; $4026: $8a
	ld   l, d                                        ; $4027: $6a
	ld   [hl], a                                     ; $4028: $77
	sbc  b                                           ; $4029: $98
	add  a                                           ; $402a: $87
	adc  b                                           ; $402b: $88
	ld   a, b                                        ; $402c: $78
	add  a                                           ; $402d: $87
	adc  c                                           ; $402e: $89
	ld   a, c                                        ; $402f: $79
	ld   a, d                                        ; $4030: $7a
	ld   [hl], a                                     ; $4031: $77
	and  [hl]                                        ; $4032: $a6
	sbc  c                                           ; $4033: $99
	adc  c                                           ; $4034: $89
	adc  c                                           ; $4035: $89
	adc  b                                           ; $4036: $88
	ld   l, d                                        ; $4037: $6a
	ld   l, c                                        ; $4038: $69
	ld   a, b                                        ; $4039: $78
	and  [hl]                                        ; $403a: $a6
	sub  a                                           ; $403b: $97
	xor  b                                           ; $403c: $a8
	ld   a, c                                        ; $403d: $79
	ld   [hl], a                                     ; $403e: $77
	ld   a, c                                        ; $403f: $79
	sub  a                                           ; $4040: $97
	sbc  b                                           ; $4041: $98
	adc  c                                           ; $4042: $89
	adc  b                                           ; $4043: $88
	sbc  b                                           ; $4044: $98
	ld   a, b                                        ; $4045: $78
	ld   l, d                                        ; $4046: $6a
	add  a                                           ; $4047: $87
	and  a                                           ; $4048: $a7
	sub  [hl]                                        ; $4049: $96
	xor  c                                           ; $404a: $a9
	add  a                                           ; $404b: $87
	sub  a                                           ; $404c: $97
	ld   a, d                                        ; $404d: $7a
	ld   a, b                                        ; $404e: $78
	adc  c                                           ; $404f: $89
	sub  a                                           ; $4050: $97
	add  a                                           ; $4051: $87
	ld   a, b                                        ; $4052: $78
	ld   a, c                                        ; $4053: $79
	add  [hl]                                        ; $4054: $86
	or   a                                           ; $4055: $b7
	ld   a, e                                        ; $4056: $7b
	ld   e, b                                        ; $4057: $58
	sub  a                                           ; $4058: $97
	adc  b                                           ; $4059: $88
	ld   [hl], a                                     ; $405a: $77
	ld   l, c                                        ; $405b: $69
	and  [hl]                                        ; $405c: $a6
	sbc  c                                           ; $405d: $99
	ld   a, b                                        ; $405e: $78
	and  a                                           ; $405f: $a7
	sub  [hl]                                        ; $4060: $96
	sbc  e                                           ; $4061: $9b
	ld   c, e                                        ; $4062: $4b
	ld   h, a                                        ; $4063: $67
	adc  b                                           ; $4064: $88
	ld   [hl], a                                     ; $4065: $77
	or   [hl]                                        ; $4066: $b6
	sbc  c                                           ; $4067: $99
	ld   [hl], l                                     ; $4068: $75
	and  a                                           ; $4069: $a7
	ld   a, c                                        ; $406a: $79
	ld   l, e                                        ; $406b: $6b
	ld   l, c                                        ; $406c: $69
	add  a                                           ; $406d: $87
	sub  a                                           ; $406e: $97
	ld   l, b                                        ; $406f: $68
	or   l                                           ; $4070: $b5
	ret                                              ; $4071: $c9


	ld   a, e                                        ; $4072: $7b
	ld   e, b                                        ; $4073: $58
	sbc  c                                           ; $4074: $99
	ld   h, a                                        ; $4075: $67
	and  [hl]                                        ; $4076: $a6
	sub  a                                           ; $4077: $97
	xor  b                                           ; $4078: $a8
	ld   l, e                                        ; $4079: $6b
	ld   l, e                                        ; $407a: $6b
	and  h                                           ; $407b: $a4
	adc  e                                           ; $407c: $8b
	add  l                                           ; $407d: $85
	add  $7a                                         ; $407e: $c6 $7a
	ld   h, a                                        ; $4080: $67
	adc  d                                           ; $4081: $8a
	ld   c, c                                        ; $4082: $49
	add  a                                           ; $4083: $87
	and  h                                           ; $4084: $a4
	sbc  c                                           ; $4085: $99
	add  a                                           ; $4086: $87
	xor  d                                           ; $4087: $aa
	ccf                                              ; $4088: $3f
	ld   c, c                                        ; $4089: $49
	sub  [hl]                                        ; $408a: $96
	sub  [hl]                                        ; $408b: $96
	add  $b5                                         ; $408c: $c6 $b5
	adc  d                                           ; $408e: $8a
	dec  sp                                          ; $408f: $3b
	ld   l, b                                        ; $4090: $68
	and  l                                           ; $4091: $a5
	xor  d                                           ; $4092: $aa
	ld   l, b                                        ; $4093: $68
	ld   a, b                                        ; $4094: $78
	ld   a, d                                        ; $4095: $7a
	add  a                                           ; $4096: $87
	jp   $89b8                                       ; $4097: $c3 $b8 $89


	ld   c, a                                        ; $409a: $4f
	dec  e                                           ; $409b: $1d
	sub  h                                           ; $409c: $94
	and  $88                                         ; $409d: $e6 $88
	db   $e4                                         ; $409f: $e4
	ld   l, e                                        ; $40a0: $6b
	ld   c, d                                        ; $40a1: $4a
	add  l                                           ; $40a2: $85
	or   e                                           ; $40a3: $b3
	sbc  l                                           ; $40a4: $9d
	add  hl, hl                                      ; $40a5: $29
	sbc  e                                           ; $40a6: $9b
	dec  de                                          ; $40a7: $1b
	jp   nz, $b5c7                                   ; $40a8: $c2 $c7 $b5

	sbc  c                                           ; $40ab: $99
	ld   a, e                                        ; $40ac: $7b
	ld   l, [hl]                                     ; $40ad: $6e
	and  l                                           ; $40ae: $a5
	cp   e                                           ; $40af: $bb
	ld   a, c                                        ; $40b0: $79
	and  [hl]                                        ; $40b1: $a6
	ld   e, d                                        ; $40b2: $5a
	inc  [hl]                                        ; $40b3: $34
	ld   b, d                                        ; $40b4: $42
	and  d                                           ; $40b5: $a2
	ld   a, [hl+]                                    ; $40b6: $2a
	ld   b, e                                        ; $40b7: $43
	res  3, l                                        ; $40b8: $cb $9d
	call $cffd                                       ; $40ba: $cd $fd $cf
	jp   z, $45ca                                    ; $40bd: $ca $ca $45

	ld   sp, $1761                                   ; $40c0: $31 $61 $17
	ld   de, $7754                                   ; $40c3: $11 $54 $77
	db   $dd                                         ; $40c6: $dd
	rst  $38                                         ; $40c7: $ff
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	cp   $f7                                         ; $40ca: $fe $f7
	ld   [hl], d                                     ; $40cc: $72
	ld   de, $1131                                   ; $40cd: $11 $31 $11
	ld   de, $9b12                                   ; $40d0: $11 $12 $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40d3: $cf
	rst  $38                                         ; $40d4: $ff
	rst  $38                                         ; $40d5: $ff
	rst  $38                                         ; $40d6: $ff
	ei                                               ; $40d7: $fb
	cp   d                                           ; $40d8: $ba
	ld   de, $1111                                   ; $40d9: $11 $11 $11
	ld   de, $1911                                   ; $40dc: $11 $11 $19
	ld   l, h                                        ; $40df: $6c
	rst  $38                                         ; $40e0: $ff
	rst  $38                                         ; $40e1: $ff
	rst  $38                                         ; $40e2: $ff
	rst  $38                                         ; $40e3: $ff
	xor  [hl]                                        ; $40e4: $ae
	and  c                                           ; $40e5: $a1
	ld   de, $1541                                   ; $40e6: $11 $41 $15
	ld   de, $7311                                   ; $40e9: $11 $11 $73
	rst  $38                                         ; $40ec: $ff
	rst  $38                                         ; $40ed: $ff
	rst  $38                                         ; $40ee: $ff
	rst  $38                                         ; $40ef: $ff
	ei                                               ; $40f0: $fb
	rst  $30                                         ; $40f1: $f7
	ld   de, $1111                                   ; $40f2: $11 $11 $11
	ld   de, $2811                                   ; $40f5: $11 $11 $28
	ld   e, a                                        ; $40f8: $5f
	rst  $38                                         ; $40f9: $ff
	rst  $38                                         ; $40fa: $ff
	rst  $38                                         ; $40fb: $ff
	db   $fd                                         ; $40fc: $fd
	db   $fc                                         ; $40fd: $fc
	ld   de, $1114                                   ; $40fe: $11 $14 $11
	ld   hl, $1b11                                   ; $4101: $21 $11 $1b
	ld   c, a                                        ; $4104: $4f
	rst  $38                                         ; $4105: $ff
	rst  $38                                         ; $4106: $ff
	rst  $38                                         ; $4107: $ff
	cp   $fe                                         ; $4108: $fe $fe
	ld   de, $1111                                   ; $410a: $11 $11 $11
	ld   de, $2a11                                   ; $410d: $11 $11 $2a
	sbc  a                                           ; $4110: $9f
	rst  $38                                         ; $4111: $ff
	rst  $38                                         ; $4112: $ff
	rst  $38                                         ; $4113: $ff
	ld   sp, hl                                      ; $4114: $f9
	or   $11                                         ; $4115: $f6 $11
	add  c                                           ; $4117: $81
	ld   a, [de]                                     ; $4118: $1a
	ld   de, $7911                                   ; $4119: $11 $11 $79
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	rst  $38                                         ; $411e: $ff
	rst  $38                                         ; $411f: $ff
	db   $fd                                         ; $4120: $fd
	pop  bc                                          ; $4121: $c1
	ld   d, $11                                      ; $4122: $16 $11
	sub  c                                           ; $4124: $91
	ld   de, $7f15                                   ; $4125: $11 $15 $7f
	rst  $38                                         ; $4128: $ff
	rst  $38                                         ; $4129: $ff
	rst  $38                                         ; $412a: $ff
	rst  $38                                         ; $412b: $ff
	xor  l                                           ; $412c: $ad
	ld   de, $1651                                   ; $412d: $11 $51 $16
	ld   de, $3b11                                   ; $4130: $11 $11 $3b
	rst  $38                                         ; $4133: $ff
	rst  $38                                         ; $4134: $ff
	rst  $38                                         ; $4135: $ff
	rst  $38                                         ; $4136: $ff
	xor  a                                           ; $4137: $af
	ld   [hl], c                                     ; $4138: $71
	ld   de, $1111                                   ; $4139: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $413c: $11 $11 $ff
	rst  $38                                         ; $413f: $ff
	rst  $38                                         ; $4140: $ff
	rst  $38                                         ; $4141: $ff
	or   $d1                                         ; $4142: $f6 $d1
	ld   de, $1111                                   ; $4144: $11 $11 $11
	ld   de, $cf11                                   ; $4147: $11 $11 $cf
	rst  $38                                         ; $414a: $ff
	rst  $38                                         ; $414b: $ff
	rst  $38                                         ; $414c: $ff
	or   $c1                                         ; $414d: $f6 $c1
	ld   de, $1111                                   ; $414f: $11 $11 $11
	ld   de, $9f12                                   ; $4152: $11 $12 $9f
	rst  $38                                         ; $4155: $ff
	rst  $38                                         ; $4156: $ff
	rst  $38                                         ; $4157: $ff
	push af                                          ; $4158: $f5
	and  c                                           ; $4159: $a1
	ld   de, $1111                                   ; $415a: $11 $11 $11
	ld   de, $df11                                   ; $415d: $11 $11 $df
	rst  $28                                         ; $4160: $ef
	rst  $38                                         ; $4161: $ff
	rst  $38                                         ; $4162: $ff
	pop  af                                          ; $4163: $f1
	add  c                                           ; $4164: $81
	ld   b, c                                        ; $4165: $41
	rla                                              ; $4166: $17
	ld   de, $2111                                   ; $4167: $11 $11 $21
	rst  $38                                         ; $416a: $ff
	cp   a                                           ; $416b: $bf
	rst  $38                                         ; $416c: $ff
	rst  $38                                         ; $416d: $ff
	pop  af                                          ; $416e: $f1
	ld   b, h                                        ; $416f: $44
	ld   de, $1111                                   ; $4170: $11 $11 $11
	dec  d                                           ; $4173: $15
	ld   e, $f9                                      ; $4174: $1e $f9
	rst  $38                                         ; $4176: $ff
	rst  $38                                         ; $4177: $ff
	rst  $38                                         ; $4178: $ff
	ld   de, $1173                                   ; $4179: $11 $73 $11
	and  c                                           ; $417c: $a1
	inc  de                                          ; $417d: $13
	ld   [hl], h                                     ; $417e: $74
	sbc  a                                           ; $417f: $9f
	rst  $38                                         ; $4180: $ff
	rst  $38                                         ; $4181: $ff
	rst  $38                                         ; $4182: $ff
	pop  af                                          ; $4183: $f1
	ld   a, [de]                                     ; $4184: $1a
	ld   de, $1119                                   ; $4185: $11 $19 $11
	ld   c, h                                        ; $4188: $4c
	ld   e, a                                        ; $4189: $5f
	db   $fd                                         ; $418a: $fd
	rst  $38                                         ; $418b: $ff
	cp   $ff                                         ; $418c: $fe $ff
	ld   de, $1bf1                                   ; $418e: $11 $f1 $1b
	ld   de, $e34a                                   ; $4191: $11 $4a $e3
	rst  $38                                         ; $4194: $ff
	rst  JumpTable                                         ; $4195: $df
	rst  $38                                         ; $4196: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4197: $cf
	ld   h, c                                        ; $4198: $61
	ld   e, $11                                      ; $4199: $1e $11
	pop  af                                          ; $419b: $f1
	inc  e                                           ; $419c: $1c
	add  sp, -$01                                    ; $419d: $e8 $ff
	rst  $38                                         ; $419f: $ff
	rst  $38                                         ; $41a0: $ff
	rst  $38                                         ; $41a1: $ff
	pop  af                                          ; $41a2: $f1
	rra                                              ; $41a3: $1f
	ld   de, $1ff1                                   ; $41a4: $11 $f1 $1f
	or   $ff                                         ; $41a7: $f6 $ff
	rst  $38                                         ; $41a9: $ff
	rst  $38                                         ; $41aa: $ff
	rst  $38                                         ; $41ab: $ff
	pop  af                                          ; $41ac: $f1
	ld   e, $11                                      ; $41ad: $1e $11
	pop  de                                          ; $41af: $d1
	rra                                              ; $41b0: $1f
	rst  $30                                         ; $41b1: $f7
	rst  $38                                         ; $41b2: $ff
	rst  $38                                         ; $41b3: $ff
	rst  $38                                         ; $41b4: $ff
	sbc  $c1                                         ; $41b5: $de $c1
	ld   de, $2111                                   ; $41b7: $11 $11 $21
	rra                                              ; $41ba: $1f
	ret  c                                           ; $41bb: $d8

	rst  $38                                         ; $41bc: $ff
	rst  JumpTable                                         ; $41bd: $df
	rst  $38                                         ; $41be: $ff
	sbc  [hl]                                        ; $41bf: $9e
	ld   de, $19a1                                   ; $41c0: $11 $a1 $19
	ld   de, $3fff                                   ; $41c3: $11 $ff $3f
	ei                                               ; $41c6: $fb
	rst  $38                                         ; $41c7: $ff
	ld   hl, sp-$4f                                  ; $41c8: $f8 $b1
	add  hl, de                                      ; $41ca: $19
	ld   de, $1fc1                                   ; $41cb: $11 $c1 $1f
	push af                                          ; $41ce: $f5
	rst  $38                                         ; $41cf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41d0: $cf
	rst  $38                                         ; $41d1: $ff
	ld   h, l                                        ; $41d2: $65
	ld   de, $1111                                   ; $41d3: $11 $11 $11
	rla                                              ; $41d6: $17
	ld   hl, sp-$01                                  ; $41d7: $f8 $ff
	rst  $38                                         ; $41d9: $ff
	rst  $38                                         ; $41da: $ff
	or   e                                           ; $41db: $b3
	ld   de, $1b11                                   ; $41dc: $11 $11 $1b
	ld   de, $dffe                                   ; $41df: $11 $fe $df
	rst  $38                                         ; $41e2: $ff
	rst  $38                                         ; $41e3: $ff
	pop  af                                          ; $41e4: $f1
	rla                                              ; $41e5: $17
	ld   de, $1118                                   ; $41e6: $11 $18 $11
	rst  $38                                         ; $41e9: $ff
	rst  $38                                         ; $41ea: $ff
	rst  $38                                         ; $41eb: $ff
	rst  $38                                         ; $41ec: $ff
	pop  af                                          ; $41ed: $f1
	ld   a, [de]                                     ; $41ee: $1a
	ld   de, $1f31                                   ; $41ef: $11 $31 $1f
	rst  $38                                         ; $41f2: $ff
	rst  $38                                         ; $41f3: $ff
	rst  $38                                         ; $41f4: $ff
	rst  $38                                         ; $41f5: $ff
	ld   d, c                                        ; $41f6: $51
	ld   d, c                                        ; $41f7: $51
	ld   de, $bf11                                   ; $41f8: $11 $11 $bf
	rst  $38                                         ; $41fb: $ff
	rst  $38                                         ; $41fc: $ff
	rst  $38                                         ; $41fd: $ff
	db   $e4                                         ; $41fe: $e4
	ld   de, $1111                                   ; $41ff: $11 $11 $11
	dec  de                                          ; $4202: $1b
	rst  $38                                         ; $4203: $ff
	rst  $38                                         ; $4204: $ff
	rst  $28                                         ; $4205: $ef
	ld   a, [$1111]                                  ; $4206: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $4209: $11 $11 $ff
	rst  $38                                         ; $420c: $ff
	cp   $ff                                         ; $420d: $fe $ff
	and  c                                           ; $420f: $a1
	ld   de, $1111                                   ; $4210: $11 $11 $11
	rra                                              ; $4213: $1f
	rst  $38                                         ; $4214: $ff
	rst  $38                                         ; $4215: $ff
	rst  $38                                         ; $4216: $ff
	ld   sp, hl                                      ; $4217: $f9
	ld   de, $1111                                   ; $4218: $11 $11 $11
	ld   de, $ffff                                   ; $421b: $11 $ff $ff
	rst  $38                                         ; $421e: $ff
	rst  $38                                         ; $421f: $ff
	and  c                                           ; $4220: $a1
	ld   de, $1111                                   ; $4221: $11 $11 $11
	rra                                              ; $4224: $1f
	rst  $38                                         ; $4225: $ff
	rst  $38                                         ; $4226: $ff
	rst  $38                                         ; $4227: $ff
	rst  $30                                         ; $4228: $f7
	ld   de, $1111                                   ; $4229: $11 $11 $11
	ld   de, $ffff                                   ; $422c: $11 $ff $ff
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	ld   d, c                                        ; $4231: $51
	ld   de, $1111                                   ; $4232: $11 $11 $11
	ld   c, a                                        ; $4235: $4f
	rst  $38                                         ; $4236: $ff
	rst  $38                                         ; $4237: $ff
	rst  $38                                         ; $4238: $ff
	db   $f4                                         ; $4239: $f4
	ld   de, $1111                                   ; $423a: $11 $11 $11
	add  hl, de                                      ; $423d: $19
	rst  $38                                         ; $423e: $ff
	rst  $38                                         ; $423f: $ff
	rst  $38                                         ; $4240: $ff
	ei                                               ; $4241: $fb
	ld   de, $1111                                   ; $4242: $11 $11 $11
	ld   [de], a                                     ; $4245: $12
	rst  $38                                         ; $4246: $ff
	rst  $38                                         ; $4247: $ff
	rst  $38                                         ; $4248: $ff
	rst  $38                                         ; $4249: $ff
	ld   [hl], c                                     ; $424a: $71
	ld   de, $1111                                   ; $424b: $11 $11 $11
	ld   e, a                                        ; $424e: $5f
	rst  $38                                         ; $424f: $ff
	rst  $38                                         ; $4250: $ff
	rst  $38                                         ; $4251: $ff
	pop  af                                          ; $4252: $f1
	ld   de, $1111                                   ; $4253: $11 $11 $11
	ld   e, $ff                                      ; $4256: $1e $ff
	rst  $38                                         ; $4258: $ff
	rst  $38                                         ; $4259: $ff
	ld   sp, hl                                      ; $425a: $f9
	ld   de, $1111                                   ; $425b: $11 $11 $11
	ld   d, $ff                                      ; $425e: $16 $ff
	rst  $38                                         ; $4260: $ff
	rst  $38                                         ; $4261: $ff
	rst  $38                                         ; $4262: $ff
	ld   hl, $1111                                   ; $4263: $21 $11 $11
	ld   [de], a                                     ; $4266: $12
	rst  JumpTable                                         ; $4267: $df
	rst  $38                                         ; $4268: $ff
	rst  $38                                         ; $4269: $ff
	rst  $38                                         ; $426a: $ff
	ld   [hl], c                                     ; $426b: $71
	ld   de, $1111                                   ; $426c: $11 $11 $11
	adc  a                                           ; $426f: $8f
	rst  $38                                         ; $4270: $ff
	rst  $38                                         ; $4271: $ff
	rst  $38                                         ; $4272: $ff
	pop  hl                                          ; $4273: $e1
	ld   de, $1111                                   ; $4274: $11 $11 $11
	ccf                                              ; $4277: $3f
	rst  $38                                         ; $4278: $ff
	rst  $38                                         ; $4279: $ff
	rst  $38                                         ; $427a: $ff
	push af                                          ; $427b: $f5
	ld   de, $1111                                   ; $427c: $11 $11 $11
	dec  e                                           ; $427f: $1d
	rst  $38                                         ; $4280: $ff
	rst  $38                                         ; $4281: $ff
	rst  $38                                         ; $4282: $ff
	db   $fd                                         ; $4283: $fd
	ld   de, $1111                                   ; $4284: $11 $11 $11
	add  hl, de                                      ; $4287: $19
	rst  $38                                         ; $4288: $ff
	rst  $38                                         ; $4289: $ff
	rst  $38                                         ; $428a: $ff
	rst  $38                                         ; $428b: $ff
	ld   sp, $1111                                   ; $428c: $31 $11 $11
	inc  de                                          ; $428f: $13
	rst  $38                                         ; $4290: $ff
	rst  $38                                         ; $4291: $ff
	rst  $38                                         ; $4292: $ff
	rst  $38                                         ; $4293: $ff
	ld   [hl], c                                     ; $4294: $71
	ld   de, $1111                                   ; $4295: $11 $11 $11

Call_0d2_4298:
	rst  JumpTable                                         ; $4298: $df
	rst  $38                                         ; $4299: $ff
	rst  $38                                         ; $429a: $ff
	rst  $38                                         ; $429b: $ff
	pop  af                                          ; $429c: $f1
	ld   de, $1111                                   ; $429d: $11 $11 $11
	sbc  a                                           ; $42a0: $9f
	rst  $38                                         ; $42a1: $ff
	rst  $38                                         ; $42a2: $ff
	rst  $38                                         ; $42a3: $ff
	push af                                          ; $42a4: $f5
	ld   de, $1111                                   ; $42a5: $11 $11 $11
	rra                                              ; $42a8: $1f
	rst  $38                                         ; $42a9: $ff
	rst  $38                                         ; $42aa: $ff
	rst  $38                                         ; $42ab: $ff
	ld   a, [$1111]                                  ; $42ac: $fa $11 $11
	ld   de, $ff1a                                   ; $42af: $11 $1a $ff
	rst  $38                                         ; $42b2: $ff
	rst  $38                                         ; $42b3: $ff
	rst  $38                                         ; $42b4: $ff
	ld   sp, $1111                                   ; $42b5: $31 $11 $11
	inc  de                                          ; $42b8: $13
	rst  $38                                         ; $42b9: $ff
	rst  $38                                         ; $42ba: $ff
	rst  $38                                         ; $42bb: $ff
	rst  $38                                         ; $42bc: $ff
	or   c                                           ; $42bd: $b1
	ld   de, $1111                                   ; $42be: $11 $11 $11
	xor  a                                           ; $42c1: $af
	rst  $38                                         ; $42c2: $ff
	rst  $38                                         ; $42c3: $ff
	rst  $38                                         ; $42c4: $ff
	push af                                          ; $42c5: $f5
	ld   de, $1111                                   ; $42c6: $11 $11 $11
	inc  e                                           ; $42c9: $1c
	rst  $38                                         ; $42ca: $ff
	rst  $38                                         ; $42cb: $ff
	rst  $38                                         ; $42cc: $ff
	db   $fd                                         ; $42cd: $fd
	ld   de, $1111                                   ; $42ce: $11 $11 $11
	inc  de                                          ; $42d1: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42d2: $cf
	rst  $38                                         ; $42d3: $ff
	rst  $38                                         ; $42d4: $ff
	rst  $38                                         ; $42d5: $ff
	sub  c                                           ; $42d6: $91
	ld   de, $1111                                   ; $42d7: $11 $11 $11
	dec  hl                                          ; $42da: $2b
	rst  $38                                         ; $42db: $ff
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	jp   hl                                          ; $42de: $e9


	ld   de, $1111                                   ; $42df: $11 $11 $11
	ld   de, $ff8f                                   ; $42e2: $11 $8f $ff
	rst  $38                                         ; $42e5: $ff
	db   $fd                                         ; $42e6: $fd
	ld   h, d                                        ; $42e7: $62
	ld   de, $1111                                   ; $42e8: $11 $11 $11
	inc  de                                          ; $42eb: $13
	rst  $38                                         ; $42ec: $ff
	rst  $38                                         ; $42ed: $ff
	rst  $38                                         ; $42ee: $ff
	add  $54                                         ; $42ef: $c6 $54
	ld   [hl], h                                     ; $42f1: $74
	ld   de, $1a11                                   ; $42f2: $11 $11 $1a
	rst  $38                                         ; $42f5: $ff
	rst  $38                                         ; $42f6: $ff
	ret                                              ; $42f7: $c9


	ld   a, b                                        ; $42f8: $78
	ld   a, l                                        ; $42f9: $7d
	add  $31                                         ; $42fa: $c6 $31
	inc  de                                          ; $42fc: $13
	ld   e, c                                        ; $42fd: $59
	cp   l                                           ; $42fe: $bd
	and  [hl]                                        ; $42ff: $a6
	ld   e, c                                        ; $4300: $59
	db   $eb                                         ; $4301: $eb
	xor  a                                           ; $4302: $af
	push hl                                          ; $4303: $e5
	ld   h, $66                                      ; $4304: $26 $66
	ld   h, h                                        ; $4306: $64
	ld   l, b                                        ; $4307: $68
	ld   h, l                                        ; $4308: $65
	adc  d                                           ; $4309: $8a
	sbc  c                                           ; $430a: $99
	adc  $b9                                         ; $430b: $ce $b9
	add  a                                           ; $430d: $87
	ld   h, [hl]                                     ; $430e: $66
	halt                                             ; $430f: $76
	ld   a, c                                        ; $4310: $79
	ld   h, l                                        ; $4311: $65
	ld   h, [hl]                                     ; $4312: $66
	sbc  b                                           ; $4313: $98
	adc  l                                           ; $4314: $8d
	reti                                             ; $4315: $d9


	ld   [hl], a                                     ; $4316: $77
	adc  b                                           ; $4317: $88
	sbc  b                                           ; $4318: $98
	sbc  d                                           ; $4319: $9a
	add  h                                           ; $431a: $84
	ld   b, l                                        ; $431b: $45
	ld   [hl], l                                     ; $431c: $75
	ld   c, h                                        ; $431d: $4c
	add  sp, $68                                     ; $431e: $e8 $68
	sbc  c                                           ; $4320: $99
	xor  d                                           ; $4321: $aa
	call $3374                                       ; $4322: $cd $74 $33
	ld   h, e                                        ; $4325: $63
	ld   c, a                                        ; $4326: $4f
	rst  $20                                         ; $4327: $e7
	ld   a, b                                        ; $4328: $78
	sbc  d                                           ; $4329: $9a
	xor  b                                           ; $432a: $a8
	call $1373                                       ; $432b: $cd $73 $13
	ld   h, c                                        ; $432e: $61
	ld   c, a                                        ; $432f: $4f
	and  $79                                         ; $4330: $e6 $79
	sbc  d                                           ; $4332: $9a
	xor  c                                           ; $4333: $a9
	db   $eb                                         ; $4334: $eb
	ld   d, d                                        ; $4335: $52
	dec  h                                           ; $4336: $25
	ld   h, c                                        ; $4337: $61
	ld   a, a                                        ; $4338: $7f
	push bc                                          ; $4339: $c5
	ld   a, c                                        ; $433a: $79
	sbc  d                                           ; $433b: $9a
	sbc  c                                           ; $433c: $99
	ld   [$3553], a                                  ; $433d: $ea $53 $35
	ld   h, c                                        ; $4340: $61
	sbc  a                                           ; $4341: $9f
	or   h                                           ; $4342: $b4
	ld   [hl], a                                     ; $4343: $77
	ld   a, d                                        ; $4344: $7a
	adc  e                                           ; $4345: $8b
	db   $fc                                         ; $4346: $fc
	ld   d, h                                        ; $4347: $54
	ld   b, [hl]                                     ; $4348: $46
	ld   h, c                                        ; $4349: $61
	cp   a                                           ; $434a: $bf
	ld   [hl], c                                     ; $434b: $71
	ld   d, [hl]                                     ; $434c: $56
	ld   a, e                                        ; $434d: $7b
	sbc  [hl]                                        ; $434e: $9e
	db   $fd                                         ; $434f: $fd
	ld   d, l                                        ; $4350: $55
	ld   d, l                                        ; $4351: $55
	ld   hl, $31cf                                   ; $4352: $21 $cf $31
	ld   d, [hl]                                     ; $4355: $56
	adc  e                                           ; $4356: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4357: $cf
	db   $fc                                         ; $4358: $fc
	ld   b, l                                        ; $4359: $45
	ld   h, h                                        ; $435a: $64
	ld   de, $11fc                                   ; $435b: $11 $fc $11
	ld   d, [hl]                                     ; $435e: $56
	xor  h                                           ; $435f: $ac
	rst  JumpTable                                         ; $4360: $df
	ld   sp, hl                                      ; $4361: $f9
	ld   b, a                                        ; $4362: $47
	ld   h, h                                        ; $4363: $64
	ld   [de], a                                     ; $4364: $12
	ld   hl, sp+$11                                  ; $4365: $f8 $11
	ld   b, l                                        ; $4367: $45
	call $f7ff                                       ; $4368: $cd $ff $f7
	ld   d, a                                        ; $436b: $57
	ld   b, e                                        ; $436c: $43
	inc  d                                           ; $436d: $14
	db   $f4                                         ; $436e: $f4
	inc  de                                          ; $436f: $13
	scf                                              ; $4370: $37
	db   $fc                                         ; $4371: $fc
	rst  $38                                         ; $4372: $ff
	rst  $30                                         ; $4373: $f7
	ld   h, l                                        ; $4374: $65
	ld   b, d                                        ; $4375: $42
	dec  d                                           ; $4376: $15
	pop  af                                          ; $4377: $f1
	inc  d                                           ; $4378: $14
	ld   a, [hl-]                                    ; $4379: $3a
	db   $fd                                         ; $437a: $fd
	rst  $38                                         ; $437b: $ff
	ld   hl, sp+$53                                  ; $437c: $f8 $53
	ld   b, c                                        ; $437e: $41
	ld   d, $f1                                      ; $437f: $16 $f1
	dec  d                                           ; $4381: $15
	ccf                                              ; $4382: $3f
	rst  $38                                         ; $4383: $ff
	rst  $38                                         ; $4384: $ff
	ld   sp, hl                                      ; $4385: $f9
	ld   b, e                                        ; $4386: $43
	ld   hl, $a119                                   ; $4387: $21 $19 $a1
	inc  d                                           ; $438a: $14
	ld   l, a                                        ; $438b: $6f
	rst  $38                                         ; $438c: $ff
	rst  $38                                         ; $438d: $ff
	ld   sp, hl                                      ; $438e: $f9
	ld   [hl+], a                                    ; $438f: $22
	ld   de, $1119                                   ; $4390: $11 $19 $11
	ld   [hl-], a                                    ; $4393: $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4394: $cf
	rst  $38                                         ; $4395: $ff
	rst  $38                                         ; $4396: $ff
	rst  $20                                         ; $4397: $e7
	ld   de, $1411                                   ; $4398: $11 $11 $14
	ld   de, $ff76                                   ; $439b: $11 $76 $ff
	rst  $38                                         ; $439e: $ff
	rst  $38                                         ; $439f: $ff
	and  h                                           ; $43a0: $a4
	ld   de, $2111                                   ; $43a1: $11 $11 $21
	rla                                              ; $43a4: $17
	adc  a                                           ; $43a5: $8f
	rst  $38                                         ; $43a6: $ff
	rst  $38                                         ; $43a7: $ff
	ld   sp, hl                                      ; $43a8: $f9
	add  c                                           ; $43a9: $81
	ld   de, $1111                                   ; $43aa: $11 $11 $11
	dec  hl                                          ; $43ad: $2b
	rst  $28                                         ; $43ae: $ef
	rst  $38                                         ; $43af: $ff
	rst  $38                                         ; $43b0: $ff
	cp   b                                           ; $43b1: $b8
	ld   de, $1111                                   ; $43b2: $11 $11 $11
	ld   de, $fffe                                   ; $43b5: $11 $fe $ff
	rst  $38                                         ; $43b8: $ff
	db   $fc                                         ; $43b9: $fc
	ld   [hl], d                                     ; $43ba: $72
	ld   de, $2111                                   ; $43bb: $11 $11 $21
	rra                                              ; $43be: $1f
	rst  $38                                         ; $43bf: $ff
	rst  $38                                         ; $43c0: $ff
	rst  $38                                         ; $43c1: $ff
	sub  [hl]                                        ; $43c2: $96
	ld   de, $1311                                   ; $43c3: $11 $11 $13
	ld   de, $ffff                                   ; $43c6: $11 $ff $ff
	rst  $38                                         ; $43c9: $ff
	rst  $30                                         ; $43ca: $f7
	ld   b, c                                        ; $43cb: $41
	ld   de, $1111                                   ; $43cc: $11 $11 $11
	adc  a                                           ; $43cf: $8f
	rst  $38                                         ; $43d0: $ff
	rst  $38                                         ; $43d1: $ff
	rst  $38                                         ; $43d2: $ff
	ld   b, [hl]                                     ; $43d3: $46
	ld   de, $1111                                   ; $43d4: $11 $11 $11
	rra                                              ; $43d7: $1f
	rst  $38                                         ; $43d8: $ff
	rst  $38                                         ; $43d9: $ff
	rst  $38                                         ; $43da: $ff
	push af                                          ; $43db: $f5
	ld   sp, $1311                                   ; $43dc: $31 $11 $13
	ld   de, $ffff                                   ; $43df: $11 $ff $ff
	rst  $38                                         ; $43e2: $ff
	rst  $30                                         ; $43e3: $f7
	sub  c                                           ; $43e4: $91
	ld   de, $1111                                   ; $43e5: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43e8: $cf
	rst  $38                                         ; $43e9: $ff
	rst  $38                                         ; $43ea: $ff
	rst  $38                                         ; $43eb: $ff
	rla                                              ; $43ec: $17
	ld   de, $2111                                   ; $43ed: $11 $11 $21
	rra                                              ; $43f0: $1f
	rst  $38                                         ; $43f1: $ff
	rst  $38                                         ; $43f2: $ff
	rst  $38                                         ; $43f3: $ff
	add  $11                                         ; $43f4: $c6 $11
	ld   de, $141b                                   ; $43f6: $11 $1b $14
	rst  $38                                         ; $43f9: $ff
	rst  $38                                         ; $43fa: $ff
	rst  JumpTable                                         ; $43fb: $df
	rst  $30                                         ; $43fc: $f7
	ld   [hl], c                                     ; $43fd: $71
	ld   de, $8111                                   ; $43fe: $11 $11 $81
	rst  $38                                         ; $4401: $ff
	rst  $38                                         ; $4402: $ff
	rst  $38                                         ; $4403: $ff
	rst  $38                                         ; $4404: $ff
	ld   h, h                                        ; $4405: $64
	ld   de, $6611                                   ; $4406: $11 $11 $66
	rra                                              ; $4409: $1f
	rst  $38                                         ; $440a: $ff
	rst  $38                                         ; $440b: $ff
	rst  $38                                         ; $440c: $ff
	or   d                                           ; $440d: $b2
	ld   de, $1b11                                   ; $440e: $11 $11 $1b
	ld   de, $ffff                                   ; $4411: $11 $ff $ff
	rst  $38                                         ; $4414: $ff
	ld   hl, sp-$6f                                  ; $4415: $f8 $91
	ld   de, $f111                                   ; $4417: $11 $11 $f1
	rst  JumpTable                                         ; $441a: $df
	rst  $38                                         ; $441b: $ff
	rst  $38                                         ; $441c: $ff
	rst  $38                                         ; $441d: $ff
	sub  l                                           ; $441e: $95
	ld   de, $1f11                                   ; $441f: $11 $11 $1f
	rra                                              ; $4422: $1f
	rst  $38                                         ; $4423: $ff
	rst  $38                                         ; $4424: $ff
	rst  $38                                         ; $4425: $ff
	ldh  a, [c]                                      ; $4426: $f2
	pop  bc                                          ; $4427: $c1
	ld   de, $f113                                   ; $4428: $11 $13 $f1
	db   $fc                                         ; $442b: $fc
	rst  $38                                         ; $442c: $ff
	rst  $38                                         ; $442d: $ff
	rst  $38                                         ; $442e: $ff
	xor  l                                           ; $442f: $ad
	ld   de, $6f11                                   ; $4430: $11 $11 $6f
	cpl                                              ; $4433: $2f
	rst  $28                                         ; $4434: $ef
	rst  $38                                         ; $4435: $ff
	rst  $38                                         ; $4436: $ff
	db   $dd                                         ; $4437: $dd
	or   c                                           ; $4438: $b1
	ld   de, $f611                                   ; $4439: $11 $11 $f6
	rst  $38                                         ; $443c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $443d: $cf
	ei                                               ; $443e: $fb
	cp   $be                                         ; $443f: $fe $be
	ld   de, $1f11                                   ; $4441: $11 $11 $1f
	ld   sp, hl                                      ; $4444: $f9
	db   $fc                                         ; $4445: $fc
	rst  $38                                         ; $4446: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4447: $cf
	ld   a, [$11f8]                                  ; $4448: $fa $f8 $11
	ld   de, $9f1f                                   ; $444b: $11 $1f $9f
	rst  $30                                         ; $444e: $f7
	rst  $38                                         ; $444f: $ff
	ld   a, a                                        ; $4450: $7f
	db   $db                                         ; $4451: $db
	pop  af                                          ; $4452: $f1
	ld   de, $4f11                                   ; $4453: $11 $11 $4f
	sbc  a                                           ; $4456: $9f
	db   $fc                                         ; $4457: $fc
	db   $fc                                         ; $4458: $fc
	rst  JumpTable                                         ; $4459: $df
	adc  a                                           ; $445a: $8f
	or   c                                           ; $445b: $b1
	ld   de, $cf11                                   ; $445c: $11 $11 $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $445f: $cf
	xor  a                                           ; $4460: $af
	ld   hl, sp-$01                                  ; $4461: $f8 $ff
	xor  a                                           ; $4463: $af
	ld   h, c                                        ; $4464: $61
	ld   de, $fe11                                   ; $4465: $11 $11 $fe
	rst  $38                                         ; $4468: $ff
	ld   a, a                                        ; $4469: $7f
	rst  $30                                         ; $446a: $f7
	ei                                               ; $446b: $fb
	cp   a                                           ; $446c: $bf
	ld   de, $1111                                   ; $446d: $11 $11 $11
	db   $fd                                         ; $4470: $fd
	rst  $38                                         ; $4471: $ff
	adc  a                                           ; $4472: $8f
	ei                                               ; $4473: $fb

Jump_0d2_4474:
	ld   hl, sp-$02                                  ; $4474: $f8 $fe
	ld   de, $1111                                   ; $4476: $11 $11 $11
	db   $fd                                         ; $4479: $fd
	rst  $38                                         ; $447a: $ff
	sbc  a                                           ; $447b: $9f
	db   $fd                                         ; $447c: $fd
	ld   sp, hl                                      ; $447d: $f9
	db   $ec                                         ; $447e: $ec
	ld   de, $1111                                   ; $447f: $11 $11 $11
	db   $fd                                         ; $4482: $fd
	rst  $38                                         ; $4483: $ff
	adc  a                                           ; $4484: $8f
	db   $ed                                         ; $4485: $ed

Jump_0d2_4486:
	ld   sp, hl                                      ; $4486: $f9
	db   $fd                                         ; $4487: $fd
	ld   de, $1111                                   ; $4488: $11 $11 $11
	db   $fd                                         ; $448b: $fd
	rst  $38                                         ; $448c: $ff
	sbc  a                                           ; $448d: $9f
	cp   $fa                                         ; $448e: $fe $fa
	db   $fd                                         ; $4490: $fd
	ld   [de], a                                     ; $4491: $12
	ld   de, $fc11                                   ; $4492: $11 $11 $fc
	rst  $38                                         ; $4495: $ff
	ld   a, a                                        ; $4496: $7f
	cp   $fa                                         ; $4497: $fe $fa
	cp   $22                                         ; $4499: $fe $22
	ld   de, $fd11                                   ; $449b: $11 $11 $fd
	rst  $38                                         ; $449e: $ff
	ld   l, a                                        ; $449f: $6f
	db   $fd                                         ; $44a0: $fd
	db   $fc                                         ; $44a1: $fc
	rst  $38                                         ; $44a2: $ff
	ld   [hl+], a                                    ; $44a3: $22
	ld   de, $de11                                   ; $44a4: $11 $11 $de
	rst  $38                                         ; $44a7: $ff
	ld   l, a                                        ; $44a8: $6f
	db   $fc                                         ; $44a9: $fc
	db   $fc                                         ; $44aa: $fc
	rst  JumpTable                                         ; $44ab: $df
	ld   sp, $1111                                   ; $44ac: $31 $11 $11
	ld   l, a                                        ; $44af: $6f
	rst  JumpTable                                         ; $44b0: $df
	adc  a                                           ; $44b1: $8f
	cp   $ff                                         ; $44b2: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44b4: $cf
	ld   h, c                                        ; $44b5: $61
	ld   de, $1f11                                   ; $44b6: $11 $11 $1f
	cp   a                                           ; $44b9: $bf
	sbc  l                                           ; $44ba: $9d
	rst  $38                                         ; $44bb: $ff
	rst  $38                                         ; $44bc: $ff
	cp   a                                           ; $44bd: $bf
	and  c                                           ; $44be: $a1
	ld   sp, $1f11                                   ; $44bf: $31 $11 $1f
	cp   a                                           ; $44c2: $bf
	jp   hl                                          ; $44c3: $e9


	rst  $38                                         ; $44c4: $ff
	rst  $38                                         ; $44c5: $ff
	cp   a                                           ; $44c6: $bf
	pop  af                                          ; $44c7: $f1
	ld   sp, $1811                                   ; $44c8: $31 $11 $18
	cp   a                                           ; $44cb: $bf
	or   $ff                                         ; $44cc: $f6 $ff
	rst  JumpTable                                         ; $44ce: $df
	rst  JumpTable                                         ; $44cf: $df
	db   $f4                                         ; $44d0: $f4
	ld   sp, $1111                                   ; $44d1: $31 $11 $11
	db   $db                                         ; $44d4: $db
	ld   sp, hl                                      ; $44d5: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44d6: $cf
	rst  $38                                         ; $44d7: $ff
	db   $fd                                         ; $44d8: $fd
	db   $fc                                         ; $44d9: $fc
	inc  h                                           ; $44da: $24
	ld   de, $9b11                                   ; $44db: $11 $11 $9b
	rst  $38                                         ; $44de: $ff
	ld   l, a                                        ; $44df: $6f
	cp   $fe                                         ; $44e0: $fe $fe
	rst  $38                                         ; $44e2: $ff
	ld   b, h                                        ; $44e3: $44
	ld   de, $1a11                                   ; $44e4: $11 $11 $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44e7: $cf
	adc  h                                           ; $44e8: $8c
	rst  $38                                         ; $44e9: $ff
	rst  $38                                         ; $44ea: $ff
	rst  JumpTable                                         ; $44eb: $df
	jp   nc, $1151                                   ; $44ec: $d2 $51 $11

	inc  de                                          ; $44ef: $13
	sbc  a                                           ; $44f0: $9f
	rst  $30                                         ; $44f1: $f7
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	xor  $f6                                         ; $44f4: $ee $f6
	ld   d, d                                        ; $44f6: $52
	ld   de, $7a11                                   ; $44f7: $11 $11 $7a
	ld   a, [$ff9f]                                  ; $44fa: $fa $9f $ff
	db   $fd                                         ; $44fd: $fd
	rst  $38                                         ; $44fe: $ff
	ld   b, [hl]                                     ; $44ff: $46
	ld   de, $1711                                   ; $4500: $11 $11 $17
	cp   a                                           ; $4503: $bf
	adc  c                                           ; $4504: $89
	rst  $38                                         ; $4505: $ff
	rst  $38                                         ; $4506: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4507: $cf
	push de                                          ; $4508: $d5
	ld   h, c                                        ; $4509: $61
	ld   hl, $7c11                                   ; $450a: $21 $11 $7c
	sub  $9f                                         ; $450d: $d6 $9f
	rst  $38                                         ; $450f: $ff
	db   $eb                                         ; $4510: $eb
	ld   sp, hl                                      ; $4511: $f9
	halt                                             ; $4512: $76
	inc  de                                          ; $4513: $13
	ld   de, wTitleScreenCounterForResettingData                                   ; $4514: $11 $17 $cc
	ld   c, d                                        ; $4517: $4a
	db   $fd                                         ; $4518: $fd
	db   $fc                                         ; $4519: $fc
	cp   a                                           ; $451a: $bf
	xor  c                                           ; $451b: $a9
	ld   d, e                                        ; $451c: $53
	ld   [hl], c                                     ; $451d: $71
	inc  de                                          ; $451e: $13
	ld   a, e                                        ; $451f: $7b
	sub  h                                           ; $4520: $94
	ld   e, d                                        ; $4521: $5a
	xor  h                                           ; $4522: $ac
	xor  d                                           ; $4523: $aa
	db   $eb                                         ; $4524: $eb
	cp   b                                           ; $4525: $b8
	adc  h                                           ; $4526: $8c
	ld   [hl], l                                     ; $4527: $75
	ld   d, [hl]                                     ; $4528: $56
	xor  b                                           ; $4529: $a8
	ld   b, d                                        ; $452a: $42
	ld   b, h                                        ; $452b: $44
	ld   h, l                                        ; $452c: $65
	ld   e, c                                        ; $452d: $59
	cp   h                                           ; $452e: $bc
	call c, $c9ff                                    ; $452f: $dc $ff $c9
	ld   a, b                                        ; $4532: $78
	add  [hl]                                        ; $4533: $86
	ld   hl, $3213                                   ; $4534: $21 $13 $32
	ld   b, a                                        ; $4537: $47
	call $efef                                       ; $4538: $cd $ef $ef
	jp   hl                                          ; $453b: $e9


	adc  c                                           ; $453c: $89
	add  l                                           ; $453d: $85
	ld   hl, $2113                                   ; $453e: $21 $13 $21
	scf                                              ; $4541: $37
	cp   [hl]                                        ; $4542: $be
	adc  $ff                                         ; $4543: $ce $ff
	ld   [$967a], a                                  ; $4545: $ea $7a $96
	ld   hl, $2113                                   ; $4548: $21 $13 $21
	ld   h, $ad                                      ; $454b: $26 $ad
	adc  $ff                                         ; $454d: $ce $ff
	ei                                               ; $454f: $fb
	sbc  d                                           ; $4550: $9a
	and  [hl]                                        ; $4551: $a6
	ld   hl, $2112                                   ; $4552: $21 $12 $21
	dec  d                                           ; $4555: $15
	cp   h                                           ; $4556: $bc
	sbc  $ff                                         ; $4557: $de $ff
	db   $fc                                         ; $4559: $fc
	adc  d                                           ; $455a: $8a
	sub  a                                           ; $455b: $97
	ld   hl, $2111                                   ; $455c: $21 $11 $21
	dec  d                                           ; $455f: $15
	xor  l                                           ; $4560: $ad
	sbc  $ff                                         ; $4561: $de $ff
	db   $fd                                         ; $4563: $fd
	adc  c                                           ; $4564: $89
	sub  a                                           ; $4565: $97
	ld   sp, $2112                                   ; $4566: $31 $12 $21
	inc  d                                           ; $4569: $14
	sbc  l                                           ; $456a: $9d
	xor  $ff                                         ; $456b: $ee $ff
	db   $fd                                         ; $456d: $fd
	sbc  c                                           ; $456e: $99
	and  a                                           ; $456f: $a7
	ld   b, c                                        ; $4570: $41
	ld   de, $1321                                   ; $4571: $11 $21 $13
	ld   a, h                                        ; $4574: $7c
	xor  $ff                                         ; $4575: $ee $ff
	rst  $38                                         ; $4577: $ff
	cp   b                                           ; $4578: $b8
	xor  c                                           ; $4579: $a9
	ld   d, c                                        ; $457a: $51
	ld   de, $1222                                   ; $457b: $11 $22 $12
	ld   l, e                                        ; $457e: $6b
	xor  $ff                                         ; $457f: $ee $ff
	rst  $38                                         ; $4581: $ff
	cp   c                                           ; $4582: $b9
	xor  c                                           ; $4583: $a9
	ld   h, d                                        ; $4584: $62
	ld   de, $1122                                   ; $4585: $11 $22 $11
	ld   c, d                                        ; $4588: $4a
	sbc  $df                                         ; $4589: $de $df
	rst  $38                                         ; $458b: $ff
	jp   hl                                          ; $458c: $e9


	adc  c                                           ; $458d: $89
	add  h                                           ; $458e: $84
	ld   de, $1112                                   ; $458f: $11 $12 $11
	daa                                              ; $4592: $27
	call $ffef                                       ; $4593: $cd $ef $ff
	ei                                               ; $4596: $fb
	sbc  d                                           ; $4597: $9a
	and  [hl]                                        ; $4598: $a6
	ld   hl, $1112                                   ; $4599: $21 $12 $11
	dec  d                                           ; $459c: $15
	cp   l                                           ; $459d: $bd
	db   $dd                                         ; $459e: $dd
	rst  $38                                         ; $459f: $ff
	db   $fd                                         ; $45a0: $fd
	sbc  d                                           ; $45a1: $9a
	xor  b                                           ; $45a2: $a8
	ld   b, c                                        ; $45a3: $41
	ld   de, $1321                                   ; $45a4: $11 $21 $13
	ld   a, h                                        ; $45a7: $7c
	db   $dd                                         ; $45a8: $dd
	rst  $28                                         ; $45a9: $ef
	rst  $38                                         ; $45aa: $ff
	xor  b                                           ; $45ab: $a8
	cp   c                                           ; $45ac: $b9
	ld   h, d                                        ; $45ad: $62
	ld   de, $1121                                   ; $45ae: $11 $21 $11
	ld   e, d                                        ; $45b1: $5a
	call $ffef                                       ; $45b2: $cd $ef $ff
	ld   [$84ab], a                                  ; $45b5: $ea $ab $84
	ld   de, $1112                                   ; $45b8: $11 $12 $11
	daa                                              ; $45bb: $27
	cp   l                                           ; $45bc: $bd
	xor  $ff                                         ; $45bd: $ee $ff
	db   $fc                                         ; $45bf: $fc
	sbc  d                                           ; $45c0: $9a
	and  a                                           ; $45c1: $a7
	ld   hl, $2111                                   ; $45c2: $21 $11 $21
	inc  d                                           ; $45c5: $14
	sbc  h                                           ; $45c6: $9c
	db   $dd                                         ; $45c7: $dd
	rst  $38                                         ; $45c8: $ff
	cp   $b9                                         ; $45c9: $fe $b9
	xor  c                                           ; $45cb: $a9
	ld   d, c                                        ; $45cc: $51
	ld   de, $1121                                   ; $45cd: $11 $21 $11
	ld   e, d                                        ; $45d0: $5a
	db   $dd                                         ; $45d1: $dd
	rst  $28                                         ; $45d2: $ef
	rst  $38                                         ; $45d3: $ff
	reti                                             ; $45d4: $d9


	cp   e                                           ; $45d5: $bb
	sub  h                                           ; $45d6: $94
	ld   de, $1111                                   ; $45d7: $11 $11 $11
	ld   h, $bc                                      ; $45da: $26 $bc
	rst  $28                                         ; $45dc: $ef
	rst  $38                                         ; $45dd: $ff
	db   $fc                                         ; $45de: $fc
	sbc  e                                           ; $45df: $9b
	and  a                                           ; $45e0: $a7
	ld   sp, $1111                                   ; $45e1: $31 $11 $11
	inc  de                                          ; $45e4: $13
	ld   a, e                                        ; $45e5: $7b
	sbc  $ff                                         ; $45e6: $de $ff
	rst  $38                                         ; $45e8: $ff
	ret                                              ; $45e9: $c9


	cp   d                                           ; $45ea: $ba
	ld   h, d                                        ; $45eb: $62
	ld   de, $1111                                   ; $45ec: $11 $11 $11
	ld   c, c                                        ; $45ef: $49
	rst  JumpTable                                         ; $45f0: $df
	rst  $38                                         ; $45f1: $ff
	cp   $b7                                         ; $45f2: $fe $b7
	ld   a, c                                        ; $45f4: $79
	and  a                                           ; $45f5: $a7
	ld   de, $6515                                   ; $45f6: $11 $15 $65
	ld   l, d                                        ; $45f9: $6a
	rst  $38                                         ; $45fa: $ff
	ld   a, [$61bb]                                  ; $45fb: $fa $bb $61
	dec  d                                           ; $45fe: $15
	sbc  [hl]                                        ; $45ff: $9e
	ld   b, c                                        ; $4600: $41
	scf                                              ; $4601: $37
	rst  $38                                         ; $4602: $ff
	db   $db                                         ; $4603: $db
	rst  $38                                         ; $4604: $ff
	cp   $78                                         ; $4605: $fe $78
	ld   de, $4e11                                   ; $4607: $11 $11 $4e
	di                                               ; $460a: $f3
	sbc  e                                           ; $460b: $9b
	rst  $38                                         ; $460c: $ff
	ei                                               ; $460d: $fb
	db   $dd                                         ; $460e: $dd
	rst  $38                                         ; $460f: $ff
	ld   d, [hl]                                     ; $4610: $56
	ld   de, $af11                                   ; $4611: $11 $11 $af
	rst  $30                                         ; $4614: $f7
	cp   a                                           ; $4615: $bf
	rst  $38                                         ; $4616: $ff
	ld   sp, hl                                      ; $4617: $f9
	adc  d                                           ; $4618: $8a
	rst  $38                                         ; $4619: $ff
	inc  hl                                          ; $461a: $23
	ld   de, rAUD1LEN                                   ; $461b: $11 $11 $ff
	ei                                               ; $461e: $fb
	cp   a                                           ; $461f: $bf
	rst  $38                                         ; $4620: $ff
	or   $68                                         ; $4621: $f6 $68
	rst  $28                                         ; $4623: $ef
	inc  de                                          ; $4624: $13
	ld   de, rAUD1LEN                                   ; $4625: $11 $11 $ff
	ei                                               ; $4628: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4629: $cf
	rst  $38                                         ; $462a: $ff
	or   l                                           ; $462b: $b5
	scf                                              ; $462c: $37
	rst  $28                                         ; $462d: $ef
	ld   [hl+], a                                    ; $462e: $22
	ld   de, rAUD1LEN                                   ; $462f: $11 $11 $ff
	db   $fd                                         ; $4632: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4633: $cf
	rst  $38                                         ; $4634: $ff
	sub  d                                           ; $4635: $92
	ld   h, $ff                                      ; $4636: $26 $ff
	ld   [hl-], a                                    ; $4638: $32
	ld   de, rAUD1LEN                                   ; $4639: $11 $11 $ff
	ld   a, [$efcf]                                  ; $463c: $fa $cf $ef
	ld   d, d                                        ; $463f: $52
	dec  h                                           ; $4640: $25
	rst  $38                                         ; $4641: $ff
	ld   b, c                                        ; $4642: $41
	ld   de, rAUD1HIGH                                   ; $4643: $11 $14 $ff
	ld   hl, sp-$25                                  ; $4646: $f8 $db
	rst  $38                                         ; $4648: $ff
	inc  sp                                          ; $4649: $33

jr_0d2_464a:
	jr   z, jr_0d2_464a                              ; $464a: $28 $fe

	ld   b, c                                        ; $464c: $41
	ld   de, $ff1b                                   ; $464d: $11 $1b $ff
	or   $d8                                         ; $4650: $f6 $d8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4652: $cf
	inc  sp                                          ; $4653: $33
	ld   c, b                                        ; $4654: $48
	cp   $41                                         ; $4655: $fe $41
	ld   de, $ff1f                                   ; $4657: $11 $1f $ff
	push af                                          ; $465a: $f5
	db   $e4                                         ; $465b: $e4
	cp   a                                           ; $465c: $bf
	dec  [hl]                                        ; $465d: $35
	ld   c, d                                        ; $465e: $4a
	cp   $41                                         ; $465f: $fe $41
	ld   de, $ff1f                                   ; $4661: $11 $1f $ff
	db   $f4                                         ; $4664: $f4
	and  c                                           ; $4665: $a1
	cp   a                                           ; $4666: $bf
	dec  [hl]                                        ; $4667: $35
	ld   e, h                                        ; $4668: $5c
	db   $fd                                         ; $4669: $fd
	ld   de, $1f11                                   ; $466a: $11 $11 $1f
	rst  $38                                         ; $466d: $ff
	di                                               ; $466e: $f3
	and  c                                           ; $466f: $a1
	xor  [hl]                                        ; $4670: $ae
	ld   b, a                                        ; $4671: $47
	ld   a, l                                        ; $4672: $7d
	db   $fc                                         ; $4673: $fc
	ld   de, $1f11                                   ; $4674: $11 $11 $1f
	rst  $38                                         ; $4677: $ff
	pop  af                                          ; $4678: $f1
	ld   h, c                                        ; $4679: $61
	sbc  l                                           ; $467a: $9d
	ld   e, c                                        ; $467b: $59
	sbc  [hl]                                        ; $467c: $9e
	ld   sp, hl                                      ; $467d: $f9
	ld   de, $1f11                                   ; $467e: $11 $11 $1f
	rst  $38                                         ; $4681: $ff
	pop  af                                          ; $4682: $f1
	ld   b, c                                        ; $4683: $41
	ld   l, l                                        ; $4684: $6d
	ld   e, d                                        ; $4685: $5a
	cp   a                                           ; $4686: $bf
	ld   sp, hl                                      ; $4687: $f9
	ld   de, $1f11                                   ; $4688: $11 $11 $1f
	rst  $38                                         ; $468b: $ff
	pop  af                                          ; $468c: $f1
	ld   hl, $6b7b                                   ; $468d: $21 $7b $6b
	xor  a                                           ; $4690: $af
	ld   hl, sp+$11                                  ; $4691: $f8 $11
	ld   de, $ff1f                                   ; $4693: $11 $1f $ff
	pop  af                                          ; $4696: $f1
	ld   de, $8d6d                                   ; $4697: $11 $6d $8d
	cp   a                                           ; $469a: $bf
	ld   hl, sp+$11                                  ; $469b: $f8 $11
	ld   de, $ff1f                                   ; $469d: $11 $1f $ff
	pop  af                                          ; $46a0: $f1
	ld   de, $ae7f                                   ; $46a1: $11 $7f $ae
	xor  a                                           ; $46a4: $af
	rst  $30                                         ; $46a5: $f7
	ld   de, $1f11                                   ; $46a6: $11 $11 $1f
	rst  $38                                         ; $46a9: $ff
	pop  af                                          ; $46aa: $f1
	ld   de, $df7f                                   ; $46ab: $11 $7f $df
	sbc  [hl]                                        ; $46ae: $9e
	push af                                          ; $46af: $f5
	ld   de, $1f11                                   ; $46b0: $11 $11 $1f
	rst  $38                                         ; $46b3: $ff
	pop  af                                          ; $46b4: $f1
	ld   de, $ff8f                                   ; $46b5: $11 $8f $ff
	sbc  l                                           ; $46b8: $9d
	db   $f4                                         ; $46b9: $f4
	ld   de, $1f11                                   ; $46ba: $11 $11 $1f
	rst  $38                                         ; $46bd: $ff
	pop  af                                          ; $46be: $f1
	ld   de, $ff9f                                   ; $46bf: $11 $9f $ff
	sbc  h                                           ; $46c2: $9c
	db   $e3                                         ; $46c3: $e3
	ld   de, $1f11                                   ; $46c4: $11 $11 $1f
	rst  $38                                         ; $46c7: $ff
	pop  af                                          ; $46c8: $f1
	ld   de, $ff7f                                   ; $46c9: $11 $7f $ff
	sbc  e                                           ; $46cc: $9b
	db   $d3                                         ; $46cd: $d3
	ld   de, $2f11                                   ; $46ce: $11 $11 $2f
	rst  $38                                         ; $46d1: $ff
	pop  af                                          ; $46d2: $f1
	ld   de, $ff7f                                   ; $46d3: $11 $7f $ff
	xor  c                                           ; $46d6: $a9
	or   d                                           ; $46d7: $b2
	ld   de, $3f11                                   ; $46d8: $11 $11 $3f
	rst  $38                                         ; $46db: $ff
	pop  af                                          ; $46dc: $f1
	ld   de, $ff7f                                   ; $46dd: $11 $7f $ff
	xor  d                                           ; $46e0: $aa
	ld   [hl], d                                     ; $46e1: $72
	ld   de, $5f11                                   ; $46e2: $11 $11 $5f
	rst  $38                                         ; $46e5: $ff
	pop  af                                          ; $46e6: $f1
	ld   de, $ff6f                                   ; $46e7: $11 $6f $ff
	xor  b                                           ; $46ea: $a8
	ld   d, c                                        ; $46eb: $51
	ld   de, $4f11                                   ; $46ec: $11 $11 $4f
	rst  $38                                         ; $46ef: $ff
	pop  af                                          ; $46f0: $f1
	ld   de, $ff5f                                   ; $46f1: $11 $5f $ff
	rst  ToBoot                                         ; $46f4: $c7
	ld   sp, $1111                                   ; $46f5: $31 $11 $11
	ccf                                              ; $46f8: $3f
	rst  $38                                         ; $46f9: $ff
	pop  af                                          ; $46fa: $f1
	ld   de, $ff3f                                   ; $46fb: $11 $3f $ff
	push de                                          ; $46fe: $d5
	ld   de, $1111                                   ; $46ff: $11 $11 $11
	cpl                                              ; $4702: $2f
	rst  $38                                         ; $4703: $ff
	pop  af                                          ; $4704: $f1
	ld   de, $ff2f                                   ; $4705: $11 $2f $ff
	call nc, $1111                                   ; $4708: $d4 $11 $11
	ld   de, $ff1f                                   ; $470b: $11 $1f $ff
	pop  af                                          ; $470e: $f1
	ld   de, $ff1f                                   ; $470f: $11 $1f $ff
	db   $d3                                         ; $4712: $d3
	ld   de, $1111                                   ; $4713: $11 $11 $11
	rra                                              ; $4716: $1f
	rst  $38                                         ; $4717: $ff
	pop  af                                          ; $4718: $f1
	ld   de, $ff1f                                   ; $4719: $11 $1f $ff
	jp   nc, $1111                                   ; $471c: $d2 $11 $11

	ld   de, $ff1f                                   ; $471f: $11 $1f $ff
	ldh  a, [c]                                      ; $4722: $f2
	ld   de, $ff1f                                   ; $4723: $11 $1f $ff
	pop  bc                                          ; $4726: $c1
	ld   de, $1111                                   ; $4727: $11 $11 $11
	rra                                              ; $472a: $1f
	rst  $38                                         ; $472b: $ff
	db   $f4                                         ; $472c: $f4
	ld   de, $ff1f                                   ; $472d: $11 $1f $ff
	pop  de                                          ; $4730: $d1
	ld   de, $1111                                   ; $4731: $11 $11 $11
	rra                                              ; $4734: $1f
	rst  $38                                         ; $4735: $ff
	rst  $30                                         ; $4736: $f7
	ld   de, $ff1f                                   ; $4737: $11 $1f $ff
	pop  de                                          ; $473a: $d1
	ld   de, $1111                                   ; $473b: $11 $11 $11
	cpl                                              ; $473e: $2f
	rst  $38                                         ; $473f: $ff
	ld   hl, sp+$11                                  ; $4740: $f8 $11
	rra                                              ; $4742: $1f
	rst  $38                                         ; $4743: $ff
	pop  de                                          ; $4744: $d1
	ld   de, $1111                                   ; $4745: $11 $11 $11
	cpl                                              ; $4748: $2f
	rst  $38                                         ; $4749: $ff
	ei                                               ; $474a: $fb
	ld   de, $ff1d                                   ; $474b: $11 $1d $ff
	ldh  [c], a                                      ; $474e: $e2
	ld   de, $1111                                   ; $474f: $11 $11 $11
	rra                                              ; $4752: $1f
	rst  $38                                         ; $4753: $ff
	db   $fd                                         ; $4754: $fd
	ld   de, $ff1b                                   ; $4755: $11 $1b $ff
	db   $d3                                         ; $4758: $d3
	ld   de, $1111                                   ; $4759: $11 $11 $11
	rra                                              ; $475c: $1f
	rst  $38                                         ; $475d: $ff
	rst  $38                                         ; $475e: $ff
	ld   de, $ff19                                   ; $475f: $11 $19 $ff
	db   $e4                                         ; $4762: $e4
	ld   de, $1111                                   ; $4763: $11 $11 $11
	rra                                              ; $4766: $1f
	rst  $38                                         ; $4767: $ff
	rst  $38                                         ; $4768: $ff
	ld   de, $ff17                                   ; $4769: $11 $17 $ff
	push af                                          ; $476c: $f5
	ld   de, $1111                                   ; $476d: $11 $11 $11
	dec  e                                           ; $4770: $1d
	rst  $38                                         ; $4771: $ff
	rst  $38                                         ; $4772: $ff
	ld   de, rAUD1HIGH                                   ; $4773: $11 $14 $ff
	rst  $30                                         ; $4776: $f7
	ld   de, $1111                                   ; $4777: $11 $11 $11
	dec  de                                          ; $477a: $1b
	rst  $38                                         ; $477b: $ff
	rst  $38                                         ; $477c: $ff
	ld   sp, rAUD1ENV                                   ; $477d: $31 $12 $ff
	ld   sp, hl                                      ; $4780: $f9
	ld   de, $1111                                   ; $4781: $11 $11 $11
	jr   @+$01                                       ; $4784: $18 $ff

	rst  $38                                         ; $4786: $ff
	ld   [hl], c                                     ; $4787: $71
	ld   de, $f9ff                                   ; $4788: $11 $ff $f9
	ld   de, $1111                                   ; $478b: $11 $11 $11
	inc  de                                          ; $478e: $13
	rst  $38                                         ; $478f: $ff
	rst  $38                                         ; $4790: $ff
	or   c                                           ; $4791: $b1
	ld   de, $fabf                                   ; $4792: $11 $bf $fa
	ld   sp, $1111                                   ; $4795: $31 $11 $11
	ld   de, $ffff                                   ; $4798: $11 $ff $ff
	pop  af                                          ; $479b: $f1
	ld   de, $fb9f                                   ; $479c: $11 $9f $fb
	ld   b, c                                        ; $479f: $41
	ld   de, $1111                                   ; $47a0: $11 $11 $11
	sbc  a                                           ; $47a3: $9f
	rst  $38                                         ; $47a4: $ff
	di                                               ; $47a5: $f3
	ld   de, $fd6f                                   ; $47a6: $11 $6f $fd
	ld   d, c                                        ; $47a9: $51
	ld   [de], a                                     ; $47aa: $12
	ld   de, $2f11                                   ; $47ab: $11 $11 $2f
	rst  $38                                         ; $47ae: $ff
	db   $fc                                         ; $47af: $fc
	ld   de, $ff3d                                   ; $47b0: $11 $3d $ff
	ld   [hl], c                                     ; $47b3: $71
	inc  de                                          ; $47b4: $13
	ld   hl, $1a11                                   ; $47b5: $21 $11 $1a
	rst  $38                                         ; $47b8: $ff
	rst  $38                                         ; $47b9: $ff
	ld   hl, $ff19                                   ; $47ba: $21 $19 $ff
	and  d                                           ; $47bd: $a2
	ld   [de], a                                     ; $47be: $12
	ld   d, e                                        ; $47bf: $53
	ld   de, rAUD1LEN                                   ; $47c0: $11 $11 $ff
	rst  $38                                         ; $47c3: $ff
	pop  bc                                          ; $47c4: $c1
	dec  d                                           ; $47c5: $15
	rst  $38                                         ; $47c6: $ff
	push de                                          ; $47c7: $d5
	ld   de, $3156                                   ; $47c8: $11 $56 $31
	ld   de, $ff4f                                   ; $47cb: $11 $4f $ff
	or   $11                                         ; $47ce: $f6 $11
	xor  a                                           ; $47d0: $af
	ld   a, [$2711]                                  ; $47d1: $fa $11 $27
	sub  d                                           ; $47d4: $92
	ld   de, $ff17                                   ; $47d5: $11 $17 $ff
	rst  $38                                         ; $47d8: $ff
	ld   sp, $ff3d                                   ; $47d9: $31 $3d $ff
	ld   [hl], c                                     ; $47dc: $71
	inc  de                                          ; $47dd: $13
	xor  h                                           ; $47de: $ac
	ld   sp, $5f11                                   ; $47df: $31 $11 $5f
	rst  $38                                         ; $47e2: $ff
	db   $f4                                         ; $47e3: $f4
	dec  d                                           ; $47e4: $15
	rst  $38                                         ; $47e5: $ff
	or   $11                                         ; $47e6: $f6 $11
	ld   c, h                                        ; $47e8: $4c
	rst  $30                                         ; $47e9: $f7
	ld   de, rAUD1LEN                                   ; $47ea: $11 $11 $ff
	rst  $38                                         ; $47ed: $ff
	ld   b, c                                        ; $47ee: $41
	ld   e, a                                        ; $47ef: $5f
	rst  $38                                         ; $47f0: $ff
	ld   h, c                                        ; $47f1: $61
	inc  d                                           ; $47f2: $14
	rst  $38                                         ; $47f3: $ff
	pop  bc                                          ; $47f4: $c1
	ld   de, $ff1f                                   ; $47f5: $11 $1f $ff
	push af                                          ; $47f8: $f5
	inc  de                                          ; $47f9: $13
	rst  $38                                         ; $47fa: $ff
	ld   hl, sp+$11                                  ; $47fb: $f8 $11
	rra                                              ; $47fd: $1f
	rst  $38                                         ; $47fe: $ff
	ld   de, $bf11                                   ; $47ff: $11 $11 $bf
	rst  $38                                         ; $4802: $ff
	ld   [hl], c                                     ; $4803: $71
	rra                                              ; $4804: $1f
	rst  $38                                         ; $4805: $ff
	pop  hl                                          ; $4806: $e1
	ld   de, $f9df                                   ; $4807: $11 $df $f9
	ld   de, rAUD1LEN                                   ; $480a: $11 $11 $ff
	ld   a, [$af11]                                  ; $480d: $fa $11 $af
	rst  $38                                         ; $4810: $ff
	ld   b, c                                        ; $4811: $41
	inc  d                                           ; $4812: $14
	rst  $38                                         ; $4813: $ff
	pop  af                                          ; $4814: $f1
	ld   de, $ff15                                   ; $4815: $11 $15 $ff
	db   $f4                                         ; $4818: $f4
	dec  d                                           ; $4819: $15
	rst  $38                                         ; $481a: $ff
	rst  $38                                         ; $481b: $ff
	ld   de, $ff17                                   ; $481c: $11 $17 $ff
	di                                               ; $481f: $f3
	ld   de, $aa11                                   ; $4820: $11 $11 $aa
	halt                                             ; $4823: $76
	ld   c, h                                        ; $4824: $4c
	rst  $38                                         ; $4825: $ff
	rst  $38                                         ; $4826: $ff
	ld   h, c                                        ; $4827: $61
	ld   d, $ef                                      ; $4828: $16 $ef
	ld   sp, hl                                      ; $482a: $f9
	ld   hl, $1311                                   ; $482b: $21 $11 $13
	ld   b, [hl]                                     ; $482e: $46
	xor  h                                           ; $482f: $ac
	rst  $38                                         ; $4830: $ff
	db   $fd                                         ; $4831: $fd
	sub  a                                           ; $4832: $97
	ld   d, a                                        ; $4833: $57
	xor  [hl]                                        ; $4834: $ae
	db   $fd                                         ; $4835: $fd
	sub  e                                           ; $4836: $93
	ld   de, $1411                                   ; $4837: $11 $11 $14
	ld   c, b                                        ; $483a: $48
	xor  e                                           ; $483b: $ab
	call $cadc                                       ; $483c: $cd $dc $ca
	xor  d                                           ; $483f: $aa
	cp   h                                           ; $4840: $bc
	db   $db                                         ; $4841: $db
	add  [hl]                                        ; $4842: $86
	ld   sp, $1311                                   ; $4843: $31 $11 $13
	ld   d, a                                        ; $4846: $57
	sbc  b                                           ; $4847: $98
	xor  e                                           ; $4848: $ab
	sbc  $dd                                         ; $4849: $de $dd
	xor  d                                           ; $484b: $aa
	sbc  h                                           ; $484c: $9c
	call $52c9                                       ; $484d: $cd $c9 $52
	ld   de, $4511                                   ; $4850: $11 $11 $45
	adc  c                                           ; $4853: $89
	adc  b                                           ; $4854: $88
	sbc  e                                           ; $4855: $9b
	db   $dd                                         ; $4856: $dd
	db   $db                                         ; $4857: $db
	xor  d                                           ; $4858: $aa
	call Call_0d2_66b7                               ; $4859: $cd $b7 $66
	ld   a, b                                        ; $485c: $78
	ld   d, d                                        ; $485d: $52
	ld   [de], a                                     ; $485e: $12
	ld   h, a                                        ; $485f: $67
	add  [hl]                                        ; $4860: $86
	ld   b, l                                        ; $4861: $45
	adc  h                                           ; $4862: $8c
	call c, Call_0d2_79a7                            ; $4863: $dc $a7 $79
	cp   h                                           ; $4866: $bc
	sbc  b                                           ; $4867: $98
	add  a                                           ; $4868: $87
	ld   a, c                                        ; $4869: $79
	xor  c                                           ; $486a: $a9
	ld   h, h                                        ; $486b: $64
	ld   b, a                                        ; $486c: $47
	sbc  d                                           ; $486d: $9a
	add  l                                           ; $486e: $85
	ld   b, l                                        ; $486f: $45
	ld   a, d                                        ; $4870: $7a
	sbc  b                                           ; $4871: $98
	adc  b                                           ; $4872: $88
	xor  e                                           ; $4873: $ab
	cp   d                                           ; $4874: $ba
	sbc  b                                           ; $4875: $98
	adc  b                                           ; $4876: $88
	xor  h                                           ; $4877: $ac
	sub  [hl]                                        ; $4878: $96
	ld   h, [hl]                                     ; $4879: $66
	ld   a, c                                        ; $487a: $79
	sub  a                                           ; $487b: $97
	ld   d, l                                        ; $487c: $55
	ld   d, [hl]                                     ; $487d: $56
	ld   [hl], a                                     ; $487e: $77
	ld   [hl], a                                     ; $487f: $77
	ld   [hl], a                                     ; $4880: $77
	adc  c                                           ; $4881: $89
	xor  c                                           ; $4882: $a9
	sbc  c                                           ; $4883: $99
	xor  e                                           ; $4884: $ab
	cp   c                                           ; $4885: $b9
	ld   l, d                                        ; $4886: $6a
	xor  d                                           ; $4887: $aa
	sub  [hl]                                        ; $4888: $96
	ld   d, a                                        ; $4889: $57
	xor  c                                           ; $488a: $a9
	ld   d, h                                        ; $488b: $54
	ld   e, b                                        ; $488c: $58
	add  a                                           ; $488d: $87
	ld   b, l                                        ; $488e: $45
	ld   a, d                                        ; $488f: $7a
	sbc  b                                           ; $4890: $98
	adc  b                                           ; $4891: $88
	adc  b                                           ; $4892: $88
	sbc  c                                           ; $4893: $99
	sbc  b                                           ; $4894: $98
	xor  e                                           ; $4895: $ab
	sub  a                                           ; $4896: $97
	ld   l, c                                        ; $4897: $69
	xor  c                                           ; $4898: $a9
	ld   h, [hl]                                     ; $4899: $66
	ld   a, c                                        ; $489a: $79
	sub  a                                           ; $489b: $97
	ld   h, [hl]                                     ; $489c: $66
	sbc  c                                           ; $489d: $99
	add  a                                           ; $489e: $87
	ld   a, c                                        ; $489f: $79
	sub  a                                           ; $48a0: $97
	ld   [hl], a                                     ; $48a1: $77
	adc  c                                           ; $48a2: $89
	add  a                                           ; $48a3: $87
	ld   a, b                                        ; $48a4: $78
	sbc  c                                           ; $48a5: $99
	sbc  b                                           ; $48a6: $98
	ld   [hl], a                                     ; $48a7: $77
	sbc  d                                           ; $48a8: $9a
	sub  a                                           ; $48a9: $97
	ld   a, b                                        ; $48aa: $78
	add  a                                           ; $48ab: $87
	ld   [hl], a                                     ; $48ac: $77
	add  a                                           ; $48ad: $87
	ld   [hl], a                                     ; $48ae: $77
	ld   a, b                                        ; $48af: $78
	sbc  b                                           ; $48b0: $98
	ld   [hl], a                                     ; $48b1: $77
	ld   a, c                                        ; $48b2: $79
	sbc  b                                           ; $48b3: $98
	sbc  b                                           ; $48b4: $98
	sbc  c                                           ; $48b5: $99
	add  a                                           ; $48b6: $87
	ld   [hl], a                                     ; $48b7: $77
	sbc  c                                           ; $48b8: $99
	add  a                                           ; $48b9: $87
	ld   a, c                                        ; $48ba: $79
	sub  a                                           ; $48bb: $97
	ld   h, a                                        ; $48bc: $67
	adc  b                                           ; $48bd: $88
	sbc  d                                           ; $48be: $9a
	ld   [hl], a                                     ; $48bf: $77
	sbc  d                                           ; $48c0: $9a
	sub  a                                           ; $48c1: $97
	ld   a, b                                        ; $48c2: $78
	sbc  c                                           ; $48c3: $99
	ld   [hl], a                                     ; $48c4: $77
	sbc  d                                           ; $48c5: $9a
	halt                                             ; $48c6: $76
	adc  b                                           ; $48c7: $88
	ld   [hl], a                                     ; $48c8: $77
	sbc  c                                           ; $48c9: $99
	ld   a, c                                        ; $48ca: $79
	add  a                                           ; $48cb: $87
	adc  b                                           ; $48cc: $88
	adc  b                                           ; $48cd: $88
	adc  c                                           ; $48ce: $89
	ld   a, b                                        ; $48cf: $78
	adc  d                                           ; $48d0: $8a
	halt                                             ; $48d1: $76
	ld   a, b                                        ; $48d2: $78
	sbc  b                                           ; $48d3: $98
	adc  c                                           ; $48d4: $89
	halt                                             ; $48d5: $76
	ld   a, c                                        ; $48d6: $79
	sbc  b                                           ; $48d7: $98
	sbc  b                                           ; $48d8: $98
	ld   [hl], a                                     ; $48d9: $77
	sbc  c                                           ; $48da: $99
	adc  b                                           ; $48db: $88
	adc  b                                           ; $48dc: $88
	adc  c                                           ; $48dd: $89
	adc  b                                           ; $48de: $88
	add  a                                           ; $48df: $87
	ld   [hl], a                                     ; $48e0: $77
	adc  c                                           ; $48e1: $89
	sbc  b                                           ; $48e2: $98
	add  a                                           ; $48e3: $87
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	adc  b                                           ; $48e6: $88
	adc  b                                           ; $48e7: $88
	adc  c                                           ; $48e8: $89
	adc  b                                           ; $48e9: $88
	ld   [hl], a                                     ; $48ea: $77
	ld   a, b                                        ; $48eb: $78
	adc  b                                           ; $48ec: $88
	sbc  b                                           ; $48ed: $98
	ld   [hl], a                                     ; $48ee: $77
	adc  b                                           ; $48ef: $88
	adc  b                                           ; $48f0: $88
	adc  b                                           ; $48f1: $88
	adc  b                                           ; $48f2: $88
	sbc  b                                           ; $48f3: $98
	add  a                                           ; $48f4: $87
	ld   a, b                                        ; $48f5: $78
	adc  c                                           ; $48f6: $89
	adc  b                                           ; $48f7: $88
	adc  b                                           ; $48f8: $88
	adc  b                                           ; $48f9: $88
	adc  b                                           ; $48fa: $88
	sbc  b                                           ; $48fb: $98
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	add  a                                           ; $48ff: $87
	ld   a, b                                        ; $4900: $78
	adc  b                                           ; $4901: $88
	sbc  b                                           ; $4902: $98
	add  a                                           ; $4903: $87
	ld   a, b                                        ; $4904: $78
	sbc  c                                           ; $4905: $99
	sbc  b                                           ; $4906: $98
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	adc  b                                           ; $4909: $88
	ld   [hl], a                                     ; $490a: $77
	adc  b                                           ; $490b: $88
	adc  c                                           ; $490c: $89
	adc  b                                           ; $490d: $88
	ld   [hl], a                                     ; $490e: $77
	ld   a, b                                        ; $490f: $78
	adc  b                                           ; $4910: $88
	adc  b                                           ; $4911: $88
	adc  b                                           ; $4912: $88
	adc  b                                           ; $4913: $88
	adc  b                                           ; $4914: $88
	adc  b                                           ; $4915: $88
	adc  b                                           ; $4916: $88
	adc  b                                           ; $4917: $88
	adc  b                                           ; $4918: $88
	ld   a, b                                        ; $4919: $78
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
	add  a                                           ; $4927: $87
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
	xor  c                                           ; $4a84: $a9
	ld   c, l                                        ; $4a85: $4d
	add  e                                           ; $4a86: $83
	jp   hl                                          ; $4a87: $e9


	ld   e, d                                        ; $4a88: $5a
	add  h                                           ; $4a89: $84
	sub  a                                           ; $4a8a: $97
	ld   e, [hl]                                     ; $4a8b: $5e
	halt                                             ; $4a8c: $76
	or   a                                           ; $4a8d: $b7
	ld   l, e                                        ; $4a8e: $6b
	ld   h, a                                        ; $4a8f: $67
	ret                                              ; $4a90: $c9


	sub  [hl]                                        ; $4a91: $96
	adc  c                                           ; $4a92: $89
	ld   a, c                                        ; $4a93: $79
	ld   a, b                                        ; $4a94: $78
	and  [hl]                                        ; $4a95: $a6
	adc  d                                           ; $4a96: $8a
	ld   l, b                                        ; $4a97: $68
	sbc  b                                           ; $4a98: $98
	add  a                                           ; $4a99: $87
	ld   a, b                                        ; $4a9a: $78
	ld   l, c                                        ; $4a9b: $69
	sbc  c                                           ; $4a9c: $99
	sub  a                                           ; $4a9d: $97
	adc  b                                           ; $4a9e: $88
	ld   [hl], a                                     ; $4a9f: $77
	sbc  d                                           ; $4aa0: $9a
	ld   a, c                                        ; $4aa1: $79
	halt                                             ; $4aa2: $76
	adc  b                                           ; $4aa3: $88
	adc  b                                           ; $4aa4: $88
	sub  a                                           ; $4aa5: $97
	ld   [hl], a                                     ; $4aa6: $77
	adc  c                                           ; $4aa7: $89
	sub  a                                           ; $4aa8: $97
	sbc  b                                           ; $4aa9: $98
	ld   a, d                                        ; $4aaa: $7a
	ld   a, b                                        ; $4aab: $78
	sbc  b                                           ; $4aac: $98
	adc  b                                           ; $4aad: $88
	ld   [hl], a                                     ; $4aae: $77
	sub  [hl]                                        ; $4aaf: $96
	ld   a, c                                        ; $4ab0: $79
	ld   a, d                                        ; $4ab1: $7a
	ld   l, b                                        ; $4ab2: $68
	add  a                                           ; $4ab3: $87
	and  a                                           ; $4ab4: $a7
	sbc  b                                           ; $4ab5: $98
	adc  b                                           ; $4ab6: $88
	ld   a, d                                        ; $4ab7: $7a
	add  [hl]                                        ; $4ab8: $86
	add  a                                           ; $4ab9: $87
	ld   l, d                                        ; $4aba: $6a
	sbc  b                                           ; $4abb: $98
	xor  b                                           ; $4abc: $a8
	ld   a, b                                        ; $4abd: $78
	sub  l                                           ; $4abe: $95
	sub  a                                           ; $4abf: $97
	ld   l, b                                        ; $4ac0: $68
	ld   b, l                                        ; $4ac1: $45
	sbc  b                                           ; $4ac2: $98
	sbc  c                                           ; $4ac3: $99
	ld   [hl], a                                     ; $4ac4: $77
	sbc  c                                           ; $4ac5: $99
	xor  c                                           ; $4ac6: $a9
	adc  b                                           ; $4ac7: $88
	ld   a, b                                        ; $4ac8: $78
	ld   a, c                                        ; $4ac9: $79
	ld   l, b                                        ; $4aca: $68
	ld   h, l                                        ; $4acb: $65
	add  [hl]                                        ; $4acc: $86
	sub  [hl]                                        ; $4acd: $96
	adc  d                                           ; $4ace: $8a
	ld   a, b                                        ; $4acf: $78
	adc  e                                           ; $4ad0: $8b
	ld   l, d                                        ; $4ad1: $6a
	add  e                                           ; $4ad2: $83
	add  $6a                                         ; $4ad3: $c6 $6a
	ld   b, a                                        ; $4ad5: $47
	sub  l                                           ; $4ad6: $95
	ld   l, c                                        ; $4ad7: $69
	ld   b, a                                        ; $4ad8: $47
	or   e                                           ; $4ad9: $b3
	cp   c                                           ; $4ada: $b9
	ld   e, [hl]                                     ; $4adb: $5e
	ld   l, c                                        ; $4adc: $69
	and  [hl]                                        ; $4add: $a6
	cp   c                                           ; $4ade: $b9
	ld   l, d                                        ; $4adf: $6a
	or   [hl]                                        ; $4ae0: $b6
	ld   h, l                                        ; $4ae1: $65
	and  l                                           ; $4ae2: $a5
	ld   a, [hl+]                                    ; $4ae3: $2a
	ld   [hl], e                                     ; $4ae4: $73
	sbc  c                                           ; $4ae5: $99
	sbc  d                                           ; $4ae6: $9a
	ld   a, e                                        ; $4ae7: $7b
	add  $6c                                         ; $4ae8: $c6 $6c
	add  [hl]                                        ; $4aea: $86
	cp   b                                           ; $4aeb: $b8
	ld   h, a                                        ; $4aec: $67
	add  l                                           ; $4aed: $85
	ld   l, c                                        ; $4aee: $69
	ld   a, h                                        ; $4aef: $7c
	ld   [hl], h                                     ; $4af0: $74
	add  sp, $7f                                     ; $4af1: $e8 $7f
	adc  c                                           ; $4af3: $89
	sub  a                                           ; $4af4: $97
	ld   e, c                                        ; $4af5: $59
	ld   [hl], c                                     ; $4af6: $71
	sub  a                                           ; $4af7: $97
	add  hl, sp                                      ; $4af8: $39
	ld   [hl], a                                     ; $4af9: $77
	sbc  e                                           ; $4afa: $9b
	ld   [hl], a                                     ; $4afb: $77
	sbc  b                                           ; $4afc: $98
	cp   b                                           ; $4afd: $b8
	ld   e, c                                        ; $4afe: $59
	or   l                                           ; $4aff: $b5
	ld   c, e                                        ; $4b00: $4b
	ld   [hl], d                                     ; $4b01: $72
	xor  d                                           ; $4b02: $aa
	ld   d, a                                        ; $4b03: $57
	ld   sp, hl                                      ; $4b04: $f9
	ld   e, d                                        ; $4b05: $5a
	ld   c, b                                        ; $4b06: $48
	and  a                                           ; $4b07: $a7
	ld   [hl], a                                     ; $4b08: $77
	sub  [hl]                                        ; $4b09: $96
	sbc  d                                           ; $4b0a: $9a
	xor  b                                           ; $4b0b: $a8
	adc  d                                           ; $4b0c: $8a
	ld   e, d                                        ; $4b0d: $5a
	sub  a                                           ; $4b0e: $97
	ld   b, a                                        ; $4b0f: $47
	rst  $30                                         ; $4b10: $f7
	ld   e, l                                        ; $4b11: $5d
	ld   h, l                                        ; $4b12: $65
	ld   h, a                                        ; $4b13: $67
	ld   [hl], e                                     ; $4b14: $73
	ld   h, a                                        ; $4b15: $67
	ld   d, e                                        ; $4b16: $53
	ld   h, [hl]                                     ; $4b17: $66
	ld   c, c                                        ; $4b18: $49
	xor  e                                           ; $4b19: $ab
	and  a                                           ; $4b1a: $a7
	adc  h                                           ; $4b1b: $8c
	sbc  b                                           ; $4b1c: $98
	and  [hl]                                        ; $4b1d: $a6
	rst  ToBoot                                         ; $4b1e: $c7
	ld   a, l                                        ; $4b1f: $7d
	adc  d                                           ; $4b20: $8a
	xor  c                                           ; $4b21: $a9
	xor  h                                           ; $4b22: $ac
	cp   c                                           ; $4b23: $b9
	xor  c                                           ; $4b24: $a9
	xor  c                                           ; $4b25: $a9
	ld   [hl], a                                     ; $4b26: $77
	ld   [hl], e                                     ; $4b27: $73
	inc  h                                           ; $4b28: $24
	ld   b, e                                        ; $4b29: $43
	ld   b, [hl]                                     ; $4b2a: $46
	ld   b, h                                        ; $4b2b: $44
	ld   [hl], h                                     ; $4b2c: $74
	ld   d, a                                        ; $4b2d: $57
	ld   b, e                                        ; $4b2e: $43
	and  [hl]                                        ; $4b2f: $a6
	ld   c, [hl]                                     ; $4b30: $4e
	sub  [hl]                                        ; $4b31: $96
	db   $ec                                         ; $4b32: $ec
	xor  a                                           ; $4b33: $af
	db   $dd                                         ; $4b34: $dd
	rst  $38                                         ; $4b35: $ff
	db   $ec                                         ; $4b36: $ec
	db   $fd                                         ; $4b37: $fd
	cp   h                                           ; $4b38: $bc
	cp   c                                           ; $4b39: $b9
	ld   a, d                                        ; $4b3a: $7a
	ld   [hl], l                                     ; $4b3b: $75
	ld   [hl], l                                     ; $4b3c: $75
	ld   sp, $1556                                   ; $4b3d: $31 $56 $15
	ld   hl, $1142                                   ; $4b40: $21 $42 $11
	dec  de                                          ; $4b43: $1b
	ld   h, c                                        ; $4b44: $61
	sbc  a                                           ; $4b45: $9f
	pop  bc                                          ; $4b46: $c1
	rst  $38                                         ; $4b47: $ff
	ld   l, a                                        ; $4b48: $6f
	rst  $38                                         ; $4b49: $ff
	rst  $28                                         ; $4b4a: $ef
	ei                                               ; $4b4b: $fb
	ei                                               ; $4b4c: $fb
	rst  $10                                         ; $4b4d: $d7
	ld   c, c                                        ; $4b4e: $49
	ld   l, c                                        ; $4b4f: $69
	ld   d, [hl]                                     ; $4b50: $56
	sub  l                                           ; $4b51: $95
	ld   d, d                                        ; $4b52: $52
	ld   d, h                                        ; $4b53: $54
	ld   de, $1111                                   ; $4b54: $11 $11 $11
	ld   de, $f312                                   ; $4b57: $11 $12 $f3
	rst  $38                                         ; $4b5a: $ff
	rst  JumpTable                                         ; $4b5b: $df
	rst  $28                                         ; $4b5c: $ef
	rst  $38                                         ; $4b5d: $ff
	rst  $38                                         ; $4b5e: $ff
	ei                                               ; $4b5f: $fb
	rst  $28                                         ; $4b60: $ef
	ld   a, b                                        ; $4b61: $78
	ld   l, c                                        ; $4b62: $69
	ld   d, a                                        ; $4b63: $57
	and  [hl]                                        ; $4b64: $a6
	and  [hl]                                        ; $4b65: $a6
	ld   [hl], e                                     ; $4b66: $73
	ld   de, $1111                                   ; $4b67: $11 $11 $11
	ld   de, $2f31                                   ; $4b6a: $11 $31 $2f
	rst  $38                                         ; $4b6d: $ff
	rst  $38                                         ; $4b6e: $ff
	rst  $38                                         ; $4b6f: $ff
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b72: $cf
	ei                                               ; $4b73: $fb
	sub  [hl]                                        ; $4b74: $96
	add  [hl]                                        ; $4b75: $86
	xor  c                                           ; $4b76: $a9
	sbc  l                                           ; $4b77: $9d
	ld   [$1122], a                                  ; $4b78: $ea $22 $11
	ld   de, $1111                                   ; $4b7b: $11 $11 $11
	ld   a, [de]                                     ; $4b7e: $1a
	rst  JumpTable                                         ; $4b7f: $df
	rst  $38                                         ; $4b80: $ff
	rst  $38                                         ; $4b81: $ff
	rst  $38                                         ; $4b82: $ff
	rst  $38                                         ; $4b83: $ff
	cp   a                                           ; $4b84: $bf
	rst  $38                                         ; $4b85: $ff
	db   $ed                                         ; $4b86: $ed
	ld   d, [hl]                                     ; $4b87: $56
	sub  l                                           ; $4b88: $95
	ld   a, h                                        ; $4b89: $7c
	xor  $e5                                         ; $4b8a: $ee $e5
	ld   de, $1111                                   ; $4b8c: $11 $11 $11
	ld   de, rAUDENA                                   ; $4b8f: $11 $26 $ff
	rst  $38                                         ; $4b92: $ff
	rst  $38                                         ; $4b93: $ff
	cp   $cf                                         ; $4b94: $fe $cf
	ret                                              ; $4b96: $c9


	db   $fd                                         ; $4b97: $fd
	xor  h                                           ; $4b98: $ac
	or   [hl]                                        ; $4b99: $b6
	call $fd7d                                       ; $4b9a: $cd $7d $fd
	ld   [hl], e                                     ; $4b9d: $73
	ld   de, $1111                                   ; $4b9e: $11 $11 $11
	rla                                              ; $4ba1: $17
	ret  z                                           ; $4ba2: $c8

	rst  $38                                         ; $4ba3: $ff
	rst  $38                                         ; $4ba4: $ff
	rst  $38                                         ; $4ba5: $ff
	cp   d                                           ; $4ba6: $ba
	halt                                             ; $4ba7: $76
	cp   h                                           ; $4ba8: $bc
	jp   z, $addc                                    ; $4ba9: $ca $dc $ad

	call c, $f9de                                    ; $4bac: $dc $de $f9
	ld   de, $1111                                   ; $4baf: $11 $11 $11
	ld   de, $ef4f                                   ; $4bb2: $11 $4f $ef
	rst  $38                                         ; $4bb5: $ff
	rst  $38                                         ; $4bb6: $ff
	rst  $38                                         ; $4bb7: $ff
	ld   h, l                                        ; $4bb8: $65
	ld   a, [hl+]                                    ; $4bb9: $2a
	xor  l                                           ; $4bba: $ad
	xor  l                                           ; $4bbb: $ad
	db   $eb                                         ; $4bbc: $eb
	rst  $38                                         ; $4bbd: $ff
	db   $fd                                         ; $4bbe: $fd
	ld   a, [$1111]                                  ; $4bbf: $fa $11 $11
	ld   de, $6f11                                   ; $4bc2: $11 $11 $6f
	rst  $38                                         ; $4bc5: $ff
	rst  $38                                         ; $4bc6: $ff
	rst  $38                                         ; $4bc7: $ff
	ei                                               ; $4bc8: $fb
	inc  d                                           ; $4bc9: $14
	ld   b, e                                        ; $4bca: $43
	xor  d                                           ; $4bcb: $aa
	call $ffff                                       ; $4bcc: $cd $ff $ff
	rst  $38                                         ; $4bcf: $ff
	jp   nz, $1111                                   ; $4bd0: $c2 $11 $11

	ld   de, $7f11                                   ; $4bd3: $11 $11 $7f
	rst  $38                                         ; $4bd6: $ff
	rst  $38                                         ; $4bd7: $ff
	ld   a, [$11fd]                                  ; $4bd8: $fa $fd $11
	dec  d                                           ; $4bdb: $15
	cp   d                                           ; $4bdc: $ba
	rst  JumpTable                                         ; $4bdd: $df
	rst  $38                                         ; $4bde: $ff
	rst  $38                                         ; $4bdf: $ff
	rst  $38                                         ; $4be0: $ff
	sub  c                                           ; $4be1: $91
	ld   de, $1111                                   ; $4be2: $11 $11 $11
	ld   de, $9fff                                   ; $4be5: $11 $ff $9f
	rst  $38                                         ; $4be8: $ff
	xor  a                                           ; $4be9: $af
	pop  af                                          ; $4bea: $f1
	ld   de, $af1a                                   ; $4beb: $11 $1a $af
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	ld   a, [$1111]                                  ; $4bf1: $fa $11 $11
	ld   de, $4f11                                   ; $4bf4: $11 $11 $4f
	rst  $38                                         ; $4bf7: $ff
	rst  $38                                         ; $4bf8: $ff
	or   $f4                                         ; $4bf9: $f6 $f4
	ld   de, $6d15                                   ; $4bfb: $11 $15 $6d
	rst  $38                                         ; $4bfe: $ff
	rst  $38                                         ; $4bff: $ff
	rst  $38                                         ; $4c00: $ff
	cp   $71                                         ; $4c01: $fe $71
	ld   de, $1111                                   ; $4c03: $11 $11 $11
	rst  $38                                         ; $4c06: $ff
	xor  a                                           ; $4c07: $af
	rst  $38                                         ; $4c08: $ff
	db   $e4                                         ; $4c09: $e4
	ldh  a, [c]                                      ; $4c0a: $f2
	ld   de, $4a17                                   ; $4c0b: $11 $17 $4a
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	ld   hl, sp+$31                                  ; $4c11: $f8 $31
	ld   de, $1111                                   ; $4c13: $11 $11 $11
	rst  $38                                         ; $4c16: $ff
	ccf                                              ; $4c17: $3f
	rst  $38                                         ; $4c18: $ff
	rra                                              ; $4c19: $1f
	pop  af                                          ; $4c1a: $f1
	ld   de, $5e45                                   ; $4c1b: $11 $45 $5e
	rst  $38                                         ; $4c1e: $ff
	rst  $38                                         ; $4c1f: $ff
	rst  $38                                         ; $4c20: $ff
	and  h                                           ; $4c21: $a4
	ld   de, $1111                                   ; $4c22: $11 $11 $11
	rst  $38                                         ; $4c25: $ff
	rra                                              ; $4c26: $1f
	rst  $38                                         ; $4c27: $ff
	sub  l                                           ; $4c28: $95
	pop  af                                          ; $4c29: $f1
	ld   de, $261d                                   ; $4c2a: $11 $1d $26
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	rst  $38                                         ; $4c2f: $ff
	push af                                          ; $4c30: $f5
	ld   de, $1111                                   ; $4c31: $11 $11 $11
	rst  $38                                         ; $4c34: $ff
	rra                                              ; $4c35: $1f
	rst  $38                                         ; $4c36: $ff
	dec  e                                           ; $4c37: $1d
	pop  af                                          ; $4c38: $f1
	ld   de, $2b1c                                   ; $4c39: $11 $1c $2b
	rst  $38                                         ; $4c3c: $ff
	rst  $38                                         ; $4c3d: $ff
	cp   $f6                                         ; $4c3e: $fe $f6
	ld   de, $1f11                                   ; $4c40: $11 $11 $1f
	pop  af                                          ; $4c43: $f1
	rst  $38                                         ; $4c44: $ff
	pop  af                                          ; $4c45: $f1
	rst  $38                                         ; $4c46: $ff
	ld   de, $e413                                   ; $4c47: $11 $13 $e4
	rst  JumpTable                                         ; $4c4a: $df
	push af                                          ; $4c4b: $f5
	xor  b                                           ; $4c4c: $a8
	sbc  e                                           ; $4c4d: $9b
	ld   b, c                                        ; $4c4e: $41
	ld   de, $411f                                   ; $4c4f: $11 $1f $41
	rst  $38                                         ; $4c52: $ff
	pop  de                                          ; $4c53: $d1
	rst  $38                                         ; $4c54: $ff
	ld   de, $ab1d                                   ; $4c55: $11 $1d $ab
	rst  $38                                         ; $4c58: $ff
	di                                               ; $4c59: $f3
	ld   d, c                                        ; $4c5a: $51
	ld   [de], a                                     ; $4c5b: $12
	ld   de, $fe11                                   ; $4c5c: $11 $11 $fe
	rra                                              ; $4c5f: $1f
	rst  $38                                         ; $4c60: $ff
	rra                                              ; $4c61: $1f
	pop  af                                          ; $4c62: $f1
	ld   de, $3ffb                                   ; $4c63: $11 $fb $3f
	rst  $38                                         ; $4c66: $ff
	jr   jr_0d2_4c7a                                 ; $4c67: $18 $11

	ld   de, $fe11                                   ; $4c69: $11 $11 $fe
	rra                                              ; $4c6c: $1f
	rst  $38                                         ; $4c6d: $ff
	rra                                              ; $4c6e: $1f
	pop  af                                          ; $4c6f: $f1
	ld   de, $2ddf                                   ; $4c70: $11 $df $2d
	rst  $38                                         ; $4c73: $ff
	ld   hl, $1111                                   ; $4c74: $21 $11 $11
	dec  de                                          ; $4c77: $1b
	pop  af                                          ; $4c78: $f1
	rra                                              ; $4c79: $1f

jr_0d2_4c7a:
	db   $fd                                         ; $4c7a: $fd
	ld   e, a                                        ; $4c7b: $5f
	and  c                                           ; $4c7c: $a1
	ld   de, $affc                                   ; $4c7d: $11 $fc $af
	cp   $11                                         ; $4c80: $fe $11
	ld   de, rAUD1LEN                                   ; $4c82: $11 $11 $ff
	dec  de                                          ; $4c85: $1b
	rst  $38                                         ; $4c86: $ff
	db   $fc                                         ; $4c87: $fc
	db   $f4                                         ; $4c88: $f4
	ld   de, $7c1e                                   ; $4c89: $11 $1e $7c
	rst  $38                                         ; $4c8c: $ff
	rst  $30                                         ; $4c8d: $f7
	ld   de, $1f11                                   ; $4c8e: $11 $11 $1f
	or   c                                           ; $4c91: $b1
	rst  $38                                         ; $4c92: $ff
	ei                                               ; $4c93: $fb
	rst  $38                                         ; $4c94: $ff
	ld   de, $c618                                   ; $4c95: $11 $18 $c6
	rst  $38                                         ; $4c98: $ff
	ld   hl, sp+$11                                  ; $4c99: $f8 $11
	ld   de, $f11f                                   ; $4c9b: $11 $1f $f1
	rst  $38                                         ; $4c9e: $ff
	or   $ff                                         ; $4c9f: $f6 $ff
	ld   de, $c515                                   ; $4ca1: $11 $15 $c5
	rst  $38                                         ; $4ca4: $ff
	cp   $61                                         ; $4ca5: $fe $61
	ld   de, $f11f                                   ; $4ca7: $11 $1f $f1
	rst  $38                                         ; $4caa: $ff
	ei                                               ; $4cab: $fb
	rst  $38                                         ; $4cac: $ff
	ld   [hl], c                                     ; $4cad: $71
	ld   d, $e1                                      ; $4cae: $16 $e1
	cp   a                                           ; $4cb0: $bf
	ld   hl, sp+$21                                  ; $4cb1: $f8 $21
	ld   de, $111f                                   ; $4cb3: $11 $1f $11
	rst  $38                                         ; $4cb6: $ff
	sbc  d                                           ; $4cb7: $9a
	rst  $38                                         ; $4cb8: $ff
	inc  d                                           ; $4cb9: $14
	rra                                              ; $4cba: $1f
	cp   c                                           ; $4cbb: $b9
	rst  $38                                         ; $4cbc: $ff
	di                                               ; $4cbd: $f3
	ld   de, rAUD1LEN                                   ; $4cbe: $11 $11 $ff
	rra                                              ; $4cc1: $1f
	ei                                               ; $4cc2: $fb
	ld   l, a                                        ; $4cc3: $6f
	pop  af                                          ; $4cc4: $f1
	ld   hl, $4faf                                   ; $4cc5: $21 $af $4f
	rst  $38                                         ; $4cc8: $ff
	ld   h, c                                        ; $4cc9: $61
	ld   de, $f11f                                   ; $4cca: $11 $1f $f1
	rst  $38                                         ; $4ccd: $ff
	rst  $30                                         ; $4cce: $f7
	rst  JumpTable                                         ; $4ccf: $df
	ld   de, $f315                                   ; $4cd0: $11 $15 $f3
	rst  $38                                         ; $4cd3: $ff
	di                                               ; $4cd4: $f3
	ld   de, $fc11                                   ; $4cd5: $11 $11 $fc
	rra                                              ; $4cd8: $1f
	ld   a, [$f1bf]                                  ; $4cd9: $fa $bf $f1
	ld   de, $4fbf                                   ; $4cdc: $11 $bf $4f
	rst  $38                                         ; $4cdf: $ff
	ld   de, $1f11                                   ; $4ce0: $11 $11 $1f
	ld   de, $ebff                                   ; $4ce3: $11 $ff $eb
	rst  $38                                         ; $4ce6: $ff
	ld   de, $951f                                   ; $4ce7: $11 $1f $95
	rst  $38                                         ; $4cea: $ff
	ld   h, c                                        ; $4ceb: $61
	ld   de, $f11f                                   ; $4cec: $11 $1f $f1
	rst  $38                                         ; $4cef: $ff
	ld   c, e                                        ; $4cf0: $4b
	rst  $38                                         ; $4cf1: $ff
	dec  d                                           ; $4cf2: $15
	ld   a, [de]                                     ; $4cf3: $1a
	push af                                          ; $4cf4: $f5
	rst  $38                                         ; $4cf5: $ff
	or   c                                           ; $4cf6: $b1
	ld   de, $f11f                                   ; $4cf7: $11 $1f $f1
	rst  $38                                         ; $4cfa: $ff
	ld   a, [$818f]                                  ; $4cfb: $fa $8f $81
	ld   de, $cffa                                   ; $4cfe: $11 $fa $cf
	di                                               ; $4d01: $f3
	ld   de, $f111                                   ; $4d02: $11 $11 $f1
	rra                                              ; $4d05: $1f
	ld   a, [$f19f]                                  ; $4d06: $fa $9f $f1
	ld   de, $bffa                                   ; $4d09: $11 $fa $bf
	db   $f4                                         ; $4d0c: $f4
	ld   de, $f11f                                   ; $4d0d: $11 $1f $f1
	ld   l, a                                        ; $4d10: $6f
	pop  af                                          ; $4d11: $f1
	ld   a, a                                        ; $4d12: $7f
	pop  bc                                          ; $4d13: $c1
	ld   de, $bff7                                   ; $4d14: $11 $f7 $bf
	push af                                          ; $4d17: $f5
	ld   de, $f111                                   ; $4d18: $11 $11 $f1
	rra                                              ; $4d1b: $1f
	ld   sp, hl                                      ; $4d1c: $f9
	xor  a                                           ; $4d1d: $af
	pop  af                                          ; $4d1e: $f1
	ld   de, $6ffc                                   ; $4d1f: $11 $fc $6f
	db   $f4                                         ; $4d22: $f4
	ld   de, $f11f                                   ; $4d23: $11 $1f $f1
	rst  $38                                         ; $4d26: $ff
	pop  af                                          ; $4d27: $f1
	sbc  a                                           ; $4d28: $9f
	and  c                                           ; $4d29: $a1
	ld   de, $9ff5                                   ; $4d2a: $11 $f5 $9f
	di                                               ; $4d2d: $f3
	ld   de, $f11b                                   ; $4d2e: $11 $1b $f1
	adc  a                                           ; $4d31: $8f
	ld   a, [$f15f]                                  ; $4d32: $fa $5f $f1
	ld   de, $7ff5                                   ; $4d35: $11 $f5 $7f
	pop  af                                          ; $4d38: $f1
	ld   de, $c11f                                   ; $4d39: $11 $1f $c1
	rst  $38                                         ; $4d3c: $ff
	sub  e                                           ; $4d3d: $93
	rst  $38                                         ; $4d3e: $ff
	push bc                                          ; $4d3f: $c5
	dec  e                                           ; $4d40: $1d
	pop  af                                          ; $4d41: $f1
	xor  a                                           ; $4d42: $af
	or   c                                           ; $4d43: $b1
	ld   de, $111f                                   ; $4d44: $11 $1f $11
	rst  $38                                         ; $4d47: $ff
	daa                                              ; $4d48: $27
	rst  JumpTable                                         ; $4d49: $df
	ld   de, $e11f                                   ; $4d4a: $11 $1f $e1
	rst  $38                                         ; $4d4d: $ff
	pop  bc                                          ; $4d4e: $c1
	ld   de, $411f                                   ; $4d4f: $11 $1f $41
	rst  $38                                         ; $4d52: $ff
	sub  [hl]                                        ; $4d53: $96
	rst  $38                                         ; $4d54: $ff
	pop  bc                                          ; $4d55: $c1
	rra                                              ; $4d56: $1f
	pop  af                                          ; $4d57: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d58: $cf
	ld   hl, rAUD1LEN                                   ; $4d59: $21 $11 $ff
	rra                                              ; $4d5c: $1f
	rst  $30                                         ; $4d5d: $f7
	or   h                                           ; $4d5e: $b4
	cp   $11                                         ; $4d5f: $fe $11
	rst  $28                                         ; $4d61: $ef
	ld   a, [de]                                     ; $4d62: $1a
	rst  $38                                         ; $4d63: $ff
	ld   de, $7f11                                   ; $4d64: $11 $11 $7f
	ld   a, [de]                                     ; $4d67: $1a
	db   $fc                                         ; $4d68: $fc
	xor  b                                           ; $4d69: $a8
	rst  $38                                         ; $4d6a: $ff
	ld   b, c                                        ; $4d6b: $41
	ld   e, a                                        ; $4d6c: $5f
	inc  de                                          ; $4d6d: $13
	ei                                               ; $4d6e: $fb
	ld   de, $f117                                   ; $4d6f: $11 $17 $f1
	rra                                              ; $4d72: $1f
	db   $fc                                         ; $4d73: $fc
	adc  [hl]                                        ; $4d74: $8e
	ldh  a, [c]                                      ; $4d75: $f2
	ld   de, $4ff5                                   ; $4d76: $11 $f5 $4f
	ld   a, [$1111]                                  ; $4d79: $fa $11 $11

jr_0d2_4d7c:
	pop  af                                          ; $4d7c: $f1
	rra                                              ; $4d7d: $1f
	ei                                               ; $4d7e: $fb
	ld   e, a                                        ; $4d7f: $5f
	ld   sp, hl                                      ; $4d80: $f9
	ld   de, $1cfa                                   ; $4d81: $11 $fa $1c
	pop  af                                          ; $4d84: $f1
	ld   de, $a11f                                   ; $4d85: $11 $1f $a1
	rst  $38                                         ; $4d88: $ff
	xor  a                                           ; $4d89: $af
	cpl                                              ; $4d8a: $2f
	pop  af                                          ; $4d8b: $f1
	rra                                              ; $4d8c: $1f
	pop  bc                                          ; $4d8d: $c1
	sbc  a                                           ; $4d8e: $9f
	pop  af                                          ; $4d8f: $f1
	ld   de, $d11f                                   ; $4d90: $11 $1f $d1
	rst  $38                                         ; $4d93: $ff
	add  [hl]                                        ; $4d94: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d95: $cf
	or   $1f                                         ; $4d96: $f6 $1f
	pop  af                                          ; $4d98: $f1
	adc  l                                           ; $4d99: $8d
	ld   h, c                                        ; $4d9a: $61
	ld   de, $1fff                                   ; $4d9b: $11 $ff $1f
	cp   $f3                                         ; $4d9e: $fe $f3
	rst  $38                                         ; $4da0: $ff
	ld   de, $17bf                                   ; $4da1: $11 $bf $17
	xor  a                                           ; $4da4: $af
	ld   b, c                                        ; $4da5: $41
	ld   de, $1aff                                   ; $4da6: $11 $ff $1a
	cp   $73                                         ; $4da9: $fe $73
	rst  $38                                         ; $4dab: $ff
	or   c                                           ; $4dac: $b1
	ld   e, a                                        ; $4dad: $5f
	ld   h, [hl]                                     ; $4dae: $66
	rl   c                                           ; $4daf: $cb $11
	ld   de, $1ff1                                   ; $4db1: $11 $f1 $1f
	rst  $38                                         ; $4db4: $ff
	ret  c                                           ; $4db5: $d8

	rst  $38                                         ; $4db6: $ff
	ld   de, $47f6                                   ; $4db7: $11 $f6 $47
	rst  $28                                         ; $4dba: $ef
	ld   de, $f111                                   ; $4dbb: $11 $11 $f1
	rra                                              ; $4dbe: $1f
	db   $fc                                         ; $4dbf: $fc
	cpl                                              ; $4dc0: $2f
	rst  $38                                         ; $4dc1: $ff
	ld   [hl], c                                     ; $4dc2: $71
	rst  $38                                         ; $4dc3: $ff
	jr   c, jr_0d2_4d7c                              ; $4dc4: $38 $b6

	ld   de, $f11f                                   ; $4dc6: $11 $1f $f1
	adc  a                                           ; $4dc9: $8f
	rst  JumpTable                                         ; $4dca: $df
	ld   l, a                                        ; $4dcb: $6f
	rst  $30                                         ; $4dcc: $f7
	dec  de                                          ; $4dcd: $1b
	or   $85                                         ; $4dce: $f6 $85
	db   $f4                                         ; $4dd0: $f4
	ld   de, $f11d                                   ; $4dd1: $11 $1d $f1
	sbc  a                                           ; $4dd4: $9f
	jp   z, $ff4f                                    ; $4dd5: $ca $4f $ff

	add  hl, de                                      ; $4dd8: $19
	rst  $30                                         ; $4dd9: $f7
	add  a                                           ; $4dda: $87
	and  l                                           ; $4ddb: $a5
	ld   de, $811f                                   ; $4ddc: $11 $1f $81
	rst  $38                                         ; $4ddf: $ff
	cp   e                                           ; $4de0: $bb
	ld   e, a                                        ; $4de1: $5f
	db   $f4                                         ; $4de2: $f4
	rra                                              ; $4de3: $1f
	ei                                               ; $4de4: $fb
	ld   l, c                                        ; $4de5: $69
	db   $e4                                         ; $4de6: $e4
	ld   de, $f118                                   ; $4de7: $11 $18 $f1
	rra                                              ; $4dea: $1f
	and  d                                           ; $4deb: $a2
	ld   a, a                                        ; $4dec: $7f
	rst  $38                                         ; $4ded: $ff
	dec  de                                          ; $4dee: $1b
	db   $fd                                         ; $4def: $fd
	call z, $218a                                    ; $4df0: $cc $8a $21
	ld   d, $f1                                      ; $4df3: $16 $f1
	cpl                                              ; $4df5: $2f
	sbc  c                                           ; $4df6: $99
	ccf                                              ; $4df7: $3f
	db   $fd                                         ; $4df8: $fd
	ld   a, [hl+]                                    ; $4df9: $2a
	db   $fc                                         ; $4dfa: $fc
	cp   d                                           ; $4dfb: $ba
	db   $eb                                         ; $4dfc: $eb
	ld   h, c                                        ; $4dfd: $61
	ld   de, $18bb                                   ; $4dfe: $11 $bb $18
	db   $f4                                         ; $4e01: $f4
	ld   b, a                                        ; $4e02: $47
	xor  h                                           ; $4e03: $ac
	or   d                                           ; $4e04: $b2
	rst  JumpTable                                         ; $4e05: $df
	sbc  $cf                                         ; $4e06: $de $cf
	push de                                          ; $4e08: $d5
	ld   sp, $311d                                   ; $4e09: $31 $1d $31
	xor  c                                           ; $4e0c: $a9
	ld   d, e                                        ; $4e0d: $53
	sbc  c                                           ; $4e0e: $99
	cp   c                                           ; $4e0f: $b9
	ld   e, e                                        ; $4e10: $5b
	call z, $fcac                                    ; $4e11: $cc $ac $fc
	sub  a                                           ; $4e14: $97
	ld   b, h                                        ; $4e15: $44
	or   e                                           ; $4e16: $b3
	jr   jr_0d2_4e6c                                 ; $4e17: $18 $53

	dec  [hl]                                        ; $4e19: $35
	ld   l, c                                        ; $4e1a: $69
	add  h                                           ; $4e1b: $84
	xor  l                                           ; $4e1c: $ad
	call c, $dbdf                                    ; $4e1d: $dc $df $db
	sub  a                                           ; $4e20: $97
	ld   l, b                                        ; $4e21: $68
	ld   d, d                                        ; $4e22: $52
	ld   h, l                                        ; $4e23: $65
	ld   [hl-], a                                    ; $4e24: $32
	ld   [hl], $55                                   ; $4e25: $36 $55
	ld   c, b                                        ; $4e27: $48
	xor  h                                           ; $4e28: $ac
	rst  $28                                         ; $4e29: $ef
	rst  $38                                         ; $4e2a: $ff
	db   $db                                         ; $4e2b: $db
	sub  a                                           ; $4e2c: $97
	ld   h, [hl]                                     ; $4e2d: $66
	ld   b, h                                        ; $4e2e: $44
	ld   b, d                                        ; $4e2f: $42
	inc  d                                           ; $4e30: $14
	ld   b, h                                        ; $4e31: $44
	ld   d, [hl]                                     ; $4e32: $56
	adc  d                                           ; $4e33: $8a
	sbc  $ff                                         ; $4e34: $de $ff
	cp   $ba                                         ; $4e36: $fe $ba
	sub  [hl]                                        ; $4e38: $96
	ld   h, l                                        ; $4e39: $65
	ld   b, e                                        ; $4e3a: $43
	inc  sp                                          ; $4e3b: $33
	inc  de                                          ; $4e3c: $13
	ld   b, h                                        ; $4e3d: $44
	ld   h, [hl]                                     ; $4e3e: $66
	xor  h                                           ; $4e3f: $ac
	rst  JumpTable                                         ; $4e40: $df
	rst  $38                                         ; $4e41: $ff
	xor  $a9                                         ; $4e42: $ee $a9
	ld   [hl], h                                     ; $4e44: $74
	ld   d, h                                        ; $4e45: $54
	ld   b, h                                        ; $4e46: $44
	ld   de, $4535                                   ; $4e47: $11 $35 $45
	ld   a, b                                        ; $4e4a: $78
	cp   e                                           ; $4e4b: $bb
	rst  JumpTable                                         ; $4e4c: $df
	rst  $38                                         ; $4e4d: $ff
	db   $dd                                         ; $4e4e: $dd
	cp   b                                           ; $4e4f: $b8
	ld   d, h                                        ; $4e50: $54
	ld   d, e                                        ; $4e51: $53
	ld   [hl-], a                                    ; $4e52: $32
	inc  de                                          ; $4e53: $13
	inc  [hl]                                        ; $4e54: $34
	ld   h, [hl]                                     ; $4e55: $66
	adc  c                                           ; $4e56: $89
	call $ffff                                       ; $4e57: $cd $ff $ff
	jp   c, Jump_0d2_4486                            ; $4e5a: $da $86 $44

	inc  sp                                          ; $4e5d: $33
	ld   d, d                                        ; $4e5e: $52
	inc  d                                           ; $4e5f: $14
	ld   b, l                                        ; $4e60: $45
	ld   d, l                                        ; $4e61: $55
	adc  e                                           ; $4e62: $8b
	adc  $ff                                         ; $4e63: $ce $ff
	rst  $38                                         ; $4e65: $ff
	cp   d                                           ; $4e66: $ba
	ld   [hl], d                                     ; $4e67: $72
	inc  sp                                          ; $4e68: $33
	inc  [hl]                                        ; $4e69: $34
	ld   [hl+], a                                    ; $4e6a: $22
	ld   b, h                                        ; $4e6b: $44

jr_0d2_4e6c:
	ld   b, l                                        ; $4e6c: $45
	ld   d, a                                        ; $4e6d: $57
	cp   e                                           ; $4e6e: $bb
	rst  $28                                         ; $4e6f: $ef
	rst  $38                                         ; $4e70: $ff
	cp   $b6                                         ; $4e71: $fe $b6
	inc  hl                                          ; $4e73: $23
	ld   b, d                                        ; $4e74: $42
	ld   b, h                                        ; $4e75: $44
	inc  hl                                          ; $4e76: $23
	inc  sp                                          ; $4e77: $33
	ld   d, l                                        ; $4e78: $55
	ld   l, c                                        ; $4e79: $69
	adc  $ff                                         ; $4e7a: $ce $ff
	rst  $38                                         ; $4e7c: $ff
	db   $eb                                         ; $4e7d: $eb
	ld   [hl], h                                     ; $4e7e: $74
	ld   [hl-], a                                    ; $4e7f: $32
	inc  h                                           ; $4e80: $24
	ld   b, d                                        ; $4e81: $42
	inc  sp                                          ; $4e82: $33
	ld   b, l                                        ; $4e83: $45
	ld   b, [hl]                                     ; $4e84: $46
	sbc  h                                           ; $4e85: $9c
	rst  $28                                         ; $4e86: $ef
	rst  $38                                         ; $4e87: $ff
	db   $fd                                         ; $4e88: $fd
	jp   z, $3352                                    ; $4e89: $ca $52 $33

	inc  [hl]                                        ; $4e8c: $34
	ld   [hl+], a                                    ; $4e8d: $22
	inc  sp                                          ; $4e8e: $33
	ld   b, h                                        ; $4e8f: $44
	ld   l, b                                        ; $4e90: $68
	cp   l                                           ; $4e91: $bd
	rst  $38                                         ; $4e92: $ff
	rst  $38                                         ; $4e93: $ff
	db   $fd                                         ; $4e94: $fd
	and  [hl]                                        ; $4e95: $a6
	ld   [hl-], a                                    ; $4e96: $32
	ld   [hl-], a                                    ; $4e97: $32
	ld   b, e                                        ; $4e98: $43
	inc  hl                                          ; $4e99: $23
	inc  [hl]                                        ; $4e9a: $34
	ld   b, l                                        ; $4e9b: $45
	ld   a, c                                        ; $4e9c: $79
	rst  JumpTable                                         ; $4e9d: $df
	rst  $38                                         ; $4e9e: $ff
	rst  $38                                         ; $4e9f: $ff
	db   $eb                                         ; $4ea0: $eb
	add  h                                           ; $4ea1: $84
	ld   [hl+], a                                    ; $4ea2: $22
	inc  hl                                          ; $4ea3: $23
	ld   b, d                                        ; $4ea4: $42
	inc  hl                                          ; $4ea5: $23
	ld   b, h                                        ; $4ea6: $44
	ld   b, [hl]                                     ; $4ea7: $46
	sbc  h                                           ; $4ea8: $9c
	rst  $28                                         ; $4ea9: $ef
	rst  $38                                         ; $4eaa: $ff
	rst  $38                                         ; $4eab: $ff
	jp   c, $2262                                    ; $4eac: $da $62 $22

	inc  hl                                          ; $4eaf: $23
	inc  hl                                          ; $4eb0: $23
	inc  sp                                          ; $4eb1: $33
	ld   b, h                                        ; $4eb2: $44
	ld   h, a                                        ; $4eb3: $67
	xor  l                                           ; $4eb4: $ad
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	cp   $c7                                         ; $4eb7: $fe $c7
	ld   b, d                                        ; $4eb9: $42
	ld   hl, $2334                                   ; $4eba: $21 $34 $23
	inc  [hl]                                        ; $4ebd: $34
	ld   d, l                                        ; $4ebe: $55
	ld   l, c                                        ; $4ebf: $69
	call $ffff                                       ; $4ec0: $cd $ff $ff
	db   $fc                                         ; $4ec3: $fc
	and  [hl]                                        ; $4ec4: $a6
	ld   hl, $4222                                   ; $4ec5: $21 $22 $42
	inc  h                                           ; $4ec8: $24
	inc  [hl]                                        ; $4ec9: $34
	ld   b, l                                        ; $4eca: $45
	ld   a, c                                        ; $4ecb: $79
	rst  JumpTable                                         ; $4ecc: $df
	rst  $38                                         ; $4ecd: $ff
	rst  $38                                         ; $4ece: $ff
	db   $fc                                         ; $4ecf: $fc
	add  e                                           ; $4ed0: $83
	ld   [de], a                                     ; $4ed1: $12
	inc  hl                                          ; $4ed2: $23
	ld   b, d                                        ; $4ed3: $42
	inc  sp                                          ; $4ed4: $33
	inc  [hl]                                        ; $4ed5: $34
	ld   b, [hl]                                     ; $4ed6: $46
	sbc  h                                           ; $4ed7: $9c
	rst  $28                                         ; $4ed8: $ef
	rst  $38                                         ; $4ed9: $ff
	rst  $38                                         ; $4eda: $ff
	jp   c, $2262                                    ; $4edb: $da $62 $22

	inc  hl                                          ; $4ede: $23
	ld   [hl+], a                                    ; $4edf: $22
	inc  sp                                          ; $4ee0: $33
	inc  [hl]                                        ; $4ee1: $34
	ld   d, a                                        ; $4ee2: $57
	xor  l                                           ; $4ee3: $ad
	rst  $28                                         ; $4ee4: $ef
	rst  $38                                         ; $4ee5: $ff
	rst  $38                                         ; $4ee6: $ff
	reti                                             ; $4ee7: $d9


	ld   d, d                                        ; $4ee8: $52
	ld   [hl+], a                                    ; $4ee9: $22
	inc  hl                                          ; $4eea: $23
	ld   [hl+], a                                    ; $4eeb: $22
	ld   [hl-], a                                    ; $4eec: $32
	ld   b, h                                        ; $4eed: $44
	ld   l, b                                        ; $4eee: $68
	cp   l                                           ; $4eef: $bd
	rst  $38                                         ; $4ef0: $ff
	rst  $38                                         ; $4ef1: $ff
	cp   $c8                                         ; $4ef2: $fe $c8
	ld   b, d                                        ; $4ef4: $42
	ld   [hl+], a                                    ; $4ef5: $22
	inc  hl                                          ; $4ef6: $23
	inc  de                                          ; $4ef7: $13
	inc  sp                                          ; $4ef8: $33
	ld   b, h                                        ; $4ef9: $44
	ld   a, b                                        ; $4efa: $78
	cp   l                                           ; $4efb: $bd
	rst  $38                                         ; $4efc: $ff
	rst  $38                                         ; $4efd: $ff
	cp   $c7                                         ; $4efe: $fe $c7
	ld   sp, $2222                                   ; $4f00: $31 $22 $22
	inc  de                                          ; $4f03: $13
	inc  sp                                          ; $4f04: $33
	ld   b, l                                        ; $4f05: $45
	ld   a, c                                        ; $4f06: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f07: $cf
	rst  $38                                         ; $4f08: $ff
	rst  $38                                         ; $4f09: $ff
	db   $fd                                         ; $4f0a: $fd
	and  [hl]                                        ; $4f0b: $a6
	ld   sp, $2212                                   ; $4f0c: $31 $12 $22
	inc  de                                          ; $4f0f: $13
	inc  [hl]                                        ; $4f10: $34
	ld   b, l                                        ; $4f11: $45
	adc  d                                           ; $4f12: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f13: $cf
	rst  $38                                         ; $4f14: $ff
	rst  $38                                         ; $4f15: $ff
	db   $fd                                         ; $4f16: $fd
	and  l                                           ; $4f17: $a5
	ld   hl, $2112                                   ; $4f18: $21 $12 $21
	inc  hl                                          ; $4f1b: $23
	inc  [hl]                                        ; $4f1c: $34
	ld   b, [hl]                                     ; $4f1d: $46
	adc  d                                           ; $4f1e: $8a
	rst  JumpTable                                         ; $4f1f: $df
	rst  $38                                         ; $4f20: $ff
	rst  $38                                         ; $4f21: $ff
	cp   $95                                         ; $4f22: $fe $95
	ld   hl, $2112                                   ; $4f24: $21 $12 $21
	inc  hl                                          ; $4f27: $23
	inc  [hl]                                        ; $4f28: $34
	ld   b, [hl]                                     ; $4f29: $46
	sbc  d                                           ; $4f2a: $9a
	rst  JumpTable                                         ; $4f2b: $df
	rst  $38                                         ; $4f2c: $ff
	rst  $38                                         ; $4f2d: $ff
	db   $ed                                         ; $4f2e: $ed
	and  l                                           ; $4f2f: $a5
	ld   hl, $2112                                   ; $4f30: $21 $12 $21
	inc  hl                                          ; $4f33: $23
	inc  [hl]                                        ; $4f34: $34
	ld   b, [hl]                                     ; $4f35: $46
	sbc  d                                           ; $4f36: $9a
	rst  JumpTable                                         ; $4f37: $df
	rst  $38                                         ; $4f38: $ff
	rst  $38                                         ; $4f39: $ff
	db   $ed                                         ; $4f3a: $ed
	and  l                                           ; $4f3b: $a5
	ld   hl, $2111                                   ; $4f3c: $21 $11 $21
	inc  hl                                          ; $4f3f: $23
	inc  [hl]                                        ; $4f40: $34
	ld   b, [hl]                                     ; $4f41: $46
	adc  e                                           ; $4f42: $8b
	sbc  $ff                                         ; $4f43: $de $ff
	rst  $38                                         ; $4f45: $ff
	xor  $a6                                         ; $4f46: $ee $a6
	ld   hl, $2111                                   ; $4f48: $21 $11 $21
	inc  hl                                          ; $4f4b: $23
	inc  [hl]                                        ; $4f4c: $34
	ld   b, [hl]                                     ; $4f4d: $46
	adc  c                                           ; $4f4e: $89
	adc  $ff                                         ; $4f4f: $ce $ff
	rst  $38                                         ; $4f51: $ff
	db   $fd                                         ; $4f52: $fd
	or   a                                           ; $4f53: $b7
	ld   sp, $2211                                   ; $4f54: $31 $11 $22
	inc  de                                          ; $4f57: $13
	inc  [hl]                                        ; $4f58: $34
	ld   b, l                                        ; $4f59: $45
	ld   a, c                                        ; $4f5a: $79
	adc  $ff                                         ; $4f5b: $ce $ff
	rst  $38                                         ; $4f5d: $ff
	cp   $b8                                         ; $4f5e: $fe $b8
	ld   b, c                                        ; $4f60: $41
	ld   de, $1222                                   ; $4f61: $11 $22 $12
	inc  sp                                          ; $4f64: $33
	ld   b, l                                        ; $4f65: $45
	ld   a, b                                        ; $4f66: $78
	call $ffff                                       ; $4f67: $cd $ff $ff
	rst  $38                                         ; $4f6a: $ff
	ret                                              ; $4f6b: $c9


	ld   d, d                                        ; $4f6c: $52
	ld   de, $1212                                   ; $4f6d: $11 $12 $12
	inc  sp                                          ; $4f70: $33
	ld   b, h                                        ; $4f71: $44
	ld   l, b                                        ; $4f72: $68
	xor  h                                           ; $4f73: $ac
	rst  $38                                         ; $4f74: $ff
	rst  $38                                         ; $4f75: $ff
	rst  $38                                         ; $4f76: $ff
	db   $db                                         ; $4f77: $db
	ld   [hl], e                                     ; $4f78: $73
	ld   de, $2212                                   ; $4f79: $11 $12 $22
	inc  sp                                          ; $4f7c: $33
	ld   b, h                                        ; $4f7d: $44
	ld   d, a                                        ; $4f7e: $57
	sbc  e                                           ; $4f7f: $9b
	rst  $28                                         ; $4f80: $ef
	rst  $38                                         ; $4f81: $ff
	rst  $38                                         ; $4f82: $ff
	db   $fc                                         ; $4f83: $fc
	sub  l                                           ; $4f84: $95
	ld   hl, $2211                                   ; $4f85: $21 $11 $22
	inc  hl                                          ; $4f88: $23
	inc  [hl]                                        ; $4f89: $34
	ld   d, [hl]                                     ; $4f8a: $56
	adc  d                                           ; $4f8b: $8a
	rst  JumpTable                                         ; $4f8c: $df
	rst  $38                                         ; $4f8d: $ff
	rst  $38                                         ; $4f8e: $ff
	db   $ed                                         ; $4f8f: $ed
	cp   c                                           ; $4f90: $b9
	ld   b, d                                        ; $4f91: $42
	ld   de, $2322                                   ; $4f92: $11 $22 $23
	inc  [hl]                                        ; $4f95: $34
	ld   b, l                                        ; $4f96: $45
	ld   a, b                                        ; $4f97: $78
	cp   l                                           ; $4f98: $bd
	rst  $38                                         ; $4f99: $ff
	rst  $38                                         ; $4f9a: $ff
	rst  $38                                         ; $4f9b: $ff
	db   $db                                         ; $4f9c: $db
	ld   [hl], e                                     ; $4f9d: $73
	ld   de, $2212                                   ; $4f9e: $11 $12 $22
	inc  [hl]                                        ; $4fa1: $34
	ld   b, l                                        ; $4fa2: $45
	ld   l, b                                        ; $4fa3: $68
	sbc  h                                           ; $4fa4: $9c
	rst  $28                                         ; $4fa5: $ef
	rst  $38                                         ; $4fa6: $ff
	cp   $fd                                         ; $4fa7: $fe $fd
	and  [hl]                                        ; $4fa9: $a6
	ld   hl, $2211                                   ; $4faa: $21 $11 $22
	inc  hl                                          ; $4fad: $23
	ld   b, h                                        ; $4fae: $44
	ld   d, [hl]                                     ; $4faf: $56
	adc  c                                           ; $4fb0: $89
	cp   [hl]                                        ; $4fb1: $be
	rst  $38                                         ; $4fb2: $ff
	rst  $38                                         ; $4fb3: $ff
	cp   $ca                                         ; $4fb4: $fe $ca
	ld   d, d                                        ; $4fb6: $52
	ld   de, $2222                                   ; $4fb7: $11 $22 $22
	inc  [hl]                                        ; $4fba: $34
	ld   b, l                                        ; $4fbb: $45
	ld   a, b                                        ; $4fbc: $78
	xor  h                                           ; $4fbd: $ac
	rst  JumpTable                                         ; $4fbe: $df
	rst  $38                                         ; $4fbf: $ff
	rst  $38                                         ; $4fc0: $ff
	db   $ec                                         ; $4fc1: $ec
	sub  l                                           ; $4fc2: $95
	ld   hl, $2212                                   ; $4fc3: $21 $12 $22
	inc  hl                                          ; $4fc6: $23
	ld   b, h                                        ; $4fc7: $44
	ld   d, a                                        ; $4fc8: $57
	adc  c                                           ; $4fc9: $89
	adc  $ff                                         ; $4fca: $ce $ff
	rst  $38                                         ; $4fcc: $ff
	cp   $b8                                         ; $4fcd: $fe $b8
	ld   d, d                                        ; $4fcf: $52
	ld   de, $2322                                   ; $4fd0: $11 $22 $23
	inc  [hl]                                        ; $4fd3: $34
	ld   b, l                                        ; $4fd4: $45
	ld   a, b                                        ; $4fd5: $78
	xor  h                                           ; $4fd6: $ac
	rst  $28                                         ; $4fd7: $ef
	rst  $38                                         ; $4fd8: $ff
	cp   $dc                                         ; $4fd9: $fe $dc
	add  l                                           ; $4fdb: $85
	ld   hl, $2212                                   ; $4fdc: $21 $12 $22
	inc  sp                                          ; $4fdf: $33
	ld   b, h                                        ; $4fe0: $44
	ld   d, a                                        ; $4fe1: $57
	adc  d                                           ; $4fe2: $8a
	adc  $ff                                         ; $4fe3: $ce $ff
	rst  $38                                         ; $4fe5: $ff
	cp   $b9                                         ; $4fe6: $fe $b9
	ld   b, d                                        ; $4fe8: $42
	ld   [de], a                                     ; $4fe9: $12
	ld   [hl+], a                                    ; $4fea: $22
	inc  hl                                          ; $4feb: $23
	inc  [hl]                                        ; $4fec: $34
	ld   b, l                                        ; $4fed: $45
	ld   a, b                                        ; $4fee: $78
	sbc  h                                           ; $4fef: $9c
	rst  $28                                         ; $4ff0: $ef
	rst  $38                                         ; $4ff1: $ff
	cp   $eb                                         ; $4ff2: $fe $eb
	add  l                                           ; $4ff4: $85
	ld   hl, $2222                                   ; $4ff5: $21 $22 $22
	inc  sp                                          ; $4ff8: $33
	ld   b, h                                        ; $4ff9: $44
	ld   d, a                                        ; $4ffa: $57
	adc  c                                           ; $4ffb: $89
	adc  $ff                                         ; $4ffc: $ce $ff
	rst  $38                                         ; $4ffe: $ff
	db   $fd                                         ; $4fff: $fd
	cp   c                                           ; $5000: $b9
	ld   d, d                                        ; $5001: $52
	ld   hl, $2222                                   ; $5002: $21 $22 $22
	inc  [hl]                                        ; $5005: $34
	ld   b, l                                        ; $5006: $45
	ld   a, b                                        ; $5007: $78
	sbc  h                                           ; $5008: $9c
	rst  $28                                         ; $5009: $ef
	rst  $38                                         ; $500a: $ff
	rst  $38                                         ; $500b: $ff
	call c, $3295                                    ; $500c: $dc $95 $32
	ld   [hl+], a                                    ; $500f: $22
	ld   [hl+], a                                    ; $5010: $22
	inc  sp                                          ; $5011: $33
	inc  [hl]                                        ; $5012: $34
	ld   d, [hl]                                     ; $5013: $56
	ld   a, d                                        ; $5014: $7a
	call $ffff                                       ; $5015: $cd $ff $ff
	db   $fd                                         ; $5018: $fd
	ret                                              ; $5019: $c9


	ld   d, e                                        ; $501a: $53
	ld   [hl+], a                                    ; $501b: $22
	ld   [hl+], a                                    ; $501c: $22
	ld   [hl+], a                                    ; $501d: $22
	inc  [hl]                                        ; $501e: $34
	ld   b, l                                        ; $501f: $45
	ld   h, a                                        ; $5020: $67
	sbc  e                                           ; $5021: $9b
	rst  $28                                         ; $5022: $ef
	rst  $38                                         ; $5023: $ff
	cp   $db                                         ; $5024: $fe $db
	sub  [hl]                                        ; $5026: $96
	ld   [hl-], a                                    ; $5027: $32
	ld   [hl+], a                                    ; $5028: $22
	ld   [hl+], a                                    ; $5029: $22
	inc  hl                                          ; $502a: $23
	inc  [hl]                                        ; $502b: $34
	ld   d, [hl]                                     ; $502c: $56
	adc  c                                           ; $502d: $89
	adc  $ff                                         ; $502e: $ce $ff
	rst  $38                                         ; $5030: $ff
	xor  $ca                                         ; $5031: $ee $ca
	ld   h, e                                        ; $5033: $63
	ld   [hl+], a                                    ; $5034: $22
	ld   [hl+], a                                    ; $5035: $22
	ld   [hl+], a                                    ; $5036: $22
	inc  sp                                          ; $5037: $33
	ld   b, l                                        ; $5038: $45
	ld   h, a                                        ; $5039: $67
	sbc  e                                           ; $503a: $9b
	rst  JumpTable                                         ; $503b: $df
	rst  $38                                         ; $503c: $ff
	rst  $38                                         ; $503d: $ff
	db   $ec                                         ; $503e: $ec
	and  [hl]                                        ; $503f: $a6
	ld   b, d                                        ; $5040: $42
	ld   [hl+], a                                    ; $5041: $22
	ld   [hl+], a                                    ; $5042: $22
	inc  hl                                          ; $5043: $23
	inc  [hl]                                        ; $5044: $34
	ld   d, [hl]                                     ; $5045: $56
	ld   a, b                                        ; $5046: $78
	cp   l                                           ; $5047: $bd
	rst  $38                                         ; $5048: $ff
	rst  $38                                         ; $5049: $ff
	cp   $ca                                         ; $504a: $fe $ca
	ld   [hl], h                                     ; $504c: $74
	ld   [hl+], a                                    ; $504d: $22
	ld   [hl+], a                                    ; $504e: $22
	ld   [hl+], a                                    ; $504f: $22
	inc  sp                                          ; $5050: $33
	ld   b, l                                        ; $5051: $45
	ld   h, a                                        ; $5052: $67
	adc  d                                           ; $5053: $8a
	rst  JumpTable                                         ; $5054: $df
	rst  $38                                         ; $5055: $ff
	cp   $fd                                         ; $5056: $fe $fd
	or   a                                           ; $5058: $b7
	ld   b, d                                        ; $5059: $42
	ld   [de], a                                     ; $505a: $12
	ld   [hl+], a                                    ; $505b: $22
	inc  hl                                          ; $505c: $23
	inc  [hl]                                        ; $505d: $34
	ld   b, [hl]                                     ; $505e: $46
	ld   a, c                                        ; $505f: $79
	cp   l                                           ; $5060: $bd
	rst  $28                                         ; $5061: $ef
	rst  $38                                         ; $5062: $ff
	rst  $38                                         ; $5063: $ff
	db   $eb                                         ; $5064: $eb
	sub  l                                           ; $5065: $95
	ld   [hl+], a                                    ; $5066: $22
	ld   [de], a                                     ; $5067: $12
	ld   [hl+], a                                    ; $5068: $22
	inc  sp                                          ; $5069: $33
	inc  [hl]                                        ; $506a: $34
	ld   d, a                                        ; $506b: $57
	adc  d                                           ; $506c: $8a
	adc  $ff                                         ; $506d: $ce $ff
	rst  $38                                         ; $506f: $ff
	xor  $b9                                         ; $5070: $ee $b9
	ld   h, e                                        ; $5072: $63
	ld   hl, $2212                                   ; $5073: $21 $12 $22
	inc  sp                                          ; $5076: $33
	ld   b, l                                        ; $5077: $45
	ld   l, b                                        ; $5078: $68
	sbc  h                                           ; $5079: $9c
	rst  $28                                         ; $507a: $ef
	rst  $38                                         ; $507b: $ff
	cp   $fd                                         ; $507c: $fe $fd
	and  a                                           ; $507e: $a7
	ld   b, d                                        ; $507f: $42
	ld   de, $2322                                   ; $5080: $11 $22 $23
	inc  [hl]                                        ; $5083: $34
	ld   d, [hl]                                     ; $5084: $56
	ld   a, c                                        ; $5085: $79
	xor  h                                           ; $5086: $ac
	rst  $38                                         ; $5087: $ff
	rst  $38                                         ; $5088: $ff
	cp   $eb                                         ; $5089: $fe $eb
	add  h                                           ; $508b: $84
	ld   hl, $2212                                   ; $508c: $21 $12 $22
	inc  hl                                          ; $508f: $23
	inc  [hl]                                        ; $5090: $34
	ld   d, a                                        ; $5091: $57
	adc  c                                           ; $5092: $89
	adc  $ff                                         ; $5093: $ce $ff
	rst  $38                                         ; $5095: $ff
	cp   $ca                                         ; $5096: $fe $ca
	ld   h, e                                        ; $5098: $63
	ld   hl, $2212                                   ; $5099: $21 $12 $22
	inc  sp                                          ; $509c: $33
	ld   b, l                                        ; $509d: $45
	ld   h, a                                        ; $509e: $67
	sbc  e                                           ; $509f: $9b
	rst  JumpTable                                         ; $50a0: $df
	rst  $38                                         ; $50a1: $ff
	rst  $38                                         ; $50a2: $ff
	db   $ed                                         ; $50a3: $ed
	and  a                                           ; $50a4: $a7
	ld   b, d                                        ; $50a5: $42
	ld   de, $2212                                   ; $50a6: $11 $12 $22
	inc  sp                                          ; $50a9: $33
	ld   b, l                                        ; $50aa: $45
	ld   a, b                                        ; $50ab: $78
	xor  l                                           ; $50ac: $ad
	rst  $28                                         ; $50ad: $ef
	rst  $38                                         ; $50ae: $ff
	rst  $38                                         ; $50af: $ff
	db   $ec                                         ; $50b0: $ec
	and  [hl]                                        ; $50b1: $a6
	ld   sp, $1111                                   ; $50b2: $31 $11 $11
	ld   [hl+], a                                    ; $50b5: $22
	inc  [hl]                                        ; $50b6: $34
	ld   d, [hl]                                     ; $50b7: $56
	ld   a, b                                        ; $50b8: $78
	cp   l                                           ; $50b9: $bd
	rst  $38                                         ; $50ba: $ff
	rst  $38                                         ; $50bb: $ff
	rst  $38                                         ; $50bc: $ff
	db   $eb                                         ; $50bd: $eb
	sub  h                                           ; $50be: $94
	ld   hl, $1211                                   ; $50bf: $21 $11 $12
	inc  hl                                          ; $50c2: $23
	inc  [hl]                                        ; $50c3: $34
	ld   d, a                                        ; $50c4: $57
	adc  d                                           ; $50c5: $8a
	adc  $ff                                         ; $50c6: $ce $ff
	rst  $38                                         ; $50c8: $ff
	rst  $38                                         ; $50c9: $ff
	db   $db                                         ; $50ca: $db
	ld   [hl], h                                     ; $50cb: $74
	ld   hl, $1111                                   ; $50cc: $21 $11 $11
	inc  hl                                          ; $50cf: $23
	inc  [hl]                                        ; $50d0: $34
	ld   d, a                                        ; $50d1: $57
	adc  d                                           ; $50d2: $8a
	sbc  $ff                                         ; $50d3: $de $ff
	rst  $38                                         ; $50d5: $ff
	rst  $38                                         ; $50d6: $ff
	jp   z, $1163                                    ; $50d7: $ca $63 $11

	ld   de, $2211                                   ; $50da: $11 $11 $22
	ld   b, l                                        ; $50dd: $45
	ld   h, a                                        ; $50de: $67
	sbc  e                                           ; $50df: $9b
	rst  JumpTable                                         ; $50e0: $df
	rst  $38                                         ; $50e1: $ff
	rst  $38                                         ; $50e2: $ff
	db   $fd                                         ; $50e3: $fd
	cp   b                                           ; $50e4: $b8
	ld   d, d                                        ; $50e5: $52
	ld   bc, $1211                                   ; $50e6: $01 $11 $12
	inc  hl                                          ; $50e9: $23
	ld   b, l                                        ; $50ea: $45
	ld   l, b                                        ; $50eb: $68
	sbc  h                                           ; $50ec: $9c
	rst  JumpTable                                         ; $50ed: $df
	rst  $38                                         ; $50ee: $ff
	rst  $38                                         ; $50ef: $ff
	db   $fd                                         ; $50f0: $fd
	ret  z                                           ; $50f1: $c8

	ld   d, d                                        ; $50f2: $52
	ld   de, $1211                                   ; $50f3: $11 $11 $12
	inc  hl                                          ; $50f6: $23
	ld   b, l                                        ; $50f7: $45
	ld   h, a                                        ; $50f8: $67
	sbc  e                                           ; $50f9: $9b
	rst  JumpTable                                         ; $50fa: $df
	rst  $38                                         ; $50fb: $ff
	rst  $38                                         ; $50fc: $ff
	cp   $b8                                         ; $50fd: $fe $b8
	ld   b, c                                        ; $50ff: $41
	ld   de, $1211                                   ; $5100: $11 $11 $12
	inc  hl                                          ; $5103: $23
	ld   b, l                                        ; $5104: $45
	ld   [hl], a                                     ; $5105: $77
	xor  e                                           ; $5106: $ab
	rst  $28                                         ; $5107: $ef
	rst  $38                                         ; $5108: $ff
	rst  $38                                         ; $5109: $ff
	cp   $b7                                         ; $510a: $fe $b7
	ld   b, c                                        ; $510c: $41
	ld   de, $1211                                   ; $510d: $11 $11 $12
	inc  hl                                          ; $5110: $23
	ld   b, l                                        ; $5111: $45
	ld   [hl], a                                     ; $5112: $77
	sbc  e                                           ; $5113: $9b
	rst  $28                                         ; $5114: $ef
	rst  $38                                         ; $5115: $ff
	rst  $38                                         ; $5116: $ff
	db   $fd                                         ; $5117: $fd
	ret  z                                           ; $5118: $c8

	ld   b, c                                        ; $5119: $41
	ld   de, $1111                                   ; $511a: $11 $11 $11
	ld   [hl+], a                                    ; $511d: $22
	ld   b, l                                        ; $511e: $45
	ld   [hl], a                                     ; $511f: $77
	sbc  e                                           ; $5120: $9b
	rst  $28                                         ; $5121: $ef
	rst  $38                                         ; $5122: $ff
	rst  $38                                         ; $5123: $ff
	cp   $b8                                         ; $5124: $fe $b8
	ld   b, c                                        ; $5126: $41
	ld   de, $1111                                   ; $5127: $11 $11 $11
	ld   [hl+], a                                    ; $512a: $22
	ld   b, l                                        ; $512b: $45
	ld   h, a                                        ; $512c: $67
	sbc  e                                           ; $512d: $9b
	rst  JumpTable                                         ; $512e: $df
	rst  $38                                         ; $512f: $ff
	rst  $38                                         ; $5130: $ff
	rst  $38                                         ; $5131: $ff
	ret                                              ; $5132: $c9


	ld   d, d                                        ; $5133: $52
	ld   de, $1111                                   ; $5134: $11 $11 $11
	ld   [hl+], a                                    ; $5137: $22
	inc  [hl]                                        ; $5138: $34
	ld   h, a                                        ; $5139: $67
	adc  e                                           ; $513a: $8b
	rst  JumpTable                                         ; $513b: $df
	rst  $38                                         ; $513c: $ff
	rst  $38                                         ; $513d: $ff
	rst  $38                                         ; $513e: $ff
	jp   c, $1163                                    ; $513f: $da $63 $11

	ld   de, $1111                                   ; $5142: $11 $11 $11
	inc  h                                           ; $5145: $24
	ld   d, a                                        ; $5146: $57
	adc  d                                           ; $5147: $8a
	rst  JumpTable                                         ; $5148: $df
	rst  $38                                         ; $5149: $ff
	rst  $38                                         ; $514a: $ff
	rst  $38                                         ; $514b: $ff
	db   $ec                                         ; $514c: $ec
	add  h                                           ; $514d: $84
	ld   de, $1111                                   ; $514e: $11 $11 $11
	ld   de, $4623                                   ; $5151: $11 $23 $46
	adc  c                                           ; $5154: $89
	call $ffff                                       ; $5155: $cd $ff $ff
	rst  $38                                         ; $5158: $ff
	db   $fd                                         ; $5159: $fd
	sub  [hl]                                        ; $515a: $96
	ld   hl, $1111                                   ; $515b: $21 $11 $11
	ld   de, $4512                                   ; $515e: $11 $12 $45
	ld   a, b                                        ; $5161: $78
	xor  l                                           ; $5162: $ad
	rst  $38                                         ; $5163: $ff
	rst  $38                                         ; $5164: $ff
	rst  $38                                         ; $5165: $ff
	cp   $c8                                         ; $5166: $fe $c8
	ld   d, c                                        ; $5168: $51
	ld   de, $1111                                   ; $5169: $11 $11 $11
	ld   de, $6834                                   ; $516c: $11 $34 $68
	adc  e                                           ; $516f: $8b
	rst  JumpTable                                         ; $5170: $df
	rst  $38                                         ; $5171: $ff
	rst  $38                                         ; $5172: $ff
	rst  $38                                         ; $5173: $ff
	db   $db                                         ; $5174: $db
	add  h                                           ; $5175: $84
	ld   de, $1111                                   ; $5176: $11 $11 $11
	ld   de, $4613                                   ; $5179: $11 $13 $46
	adc  c                                           ; $517c: $89
	adc  $ff                                         ; $517d: $ce $ff
	rst  $38                                         ; $517f: $ff
	rst  $38                                         ; $5180: $ff
	db   $fd                                         ; $5181: $fd
	or   a                                           ; $5182: $b7
	ld   b, c                                        ; $5183: $41
	ld   de, $1111                                   ; $5184: $11 $11 $11
	ld   de, $6834                                   ; $5187: $11 $34 $68
	sbc  h                                           ; $518a: $9c
	rst  $28                                         ; $518b: $ef
	rst  $38                                         ; $518c: $ff
	rst  $38                                         ; $518d: $ff
	rst  $38                                         ; $518e: $ff
	db   $db                                         ; $518f: $db
	add  h                                           ; $5190: $84
	ld   de, $1111                                   ; $5191: $11 $11 $11
	ld   de, $4513                                   ; $5194: $11 $13 $45
	adc  c                                           ; $5197: $89
	cp   l                                           ; $5198: $bd
	rst  $38                                         ; $5199: $ff
	rst  $38                                         ; $519a: $ff
	rst  $38                                         ; $519b: $ff
	db   $fd                                         ; $519c: $fd
	ret  z                                           ; $519d: $c8

	ld   d, d                                        ; $519e: $52
	ld   de, $1111                                   ; $519f: $11 $11 $11
	ld   de, $5724                                   ; $51a2: $11 $24 $57
	adc  d                                           ; $51a5: $8a
	adc  $ff                                         ; $51a6: $ce $ff
	rst  $38                                         ; $51a8: $ff
	rst  $38                                         ; $51a9: $ff
	db   $ed                                         ; $51aa: $ed
	and  a                                           ; $51ab: $a7
	ld   b, d                                        ; $51ac: $42
	ld   de, $1111                                   ; $51ad: $11 $11 $11
	ld   [de], a                                     ; $51b0: $12
	inc  [hl]                                        ; $51b1: $34
	ld   e, b                                        ; $51b2: $58
	sbc  d                                           ; $51b3: $9a
	sbc  $ff                                         ; $51b4: $de $ff
	rst  $38                                         ; $51b6: $ff
	rst  $38                                         ; $51b7: $ff
	db   $eb                                         ; $51b8: $eb
	and  a                                           ; $51b9: $a7
	ld   d, d                                        ; $51ba: $52
	ld   de, $1111                                   ; $51bb: $11 $11 $11
	ld   [de], a                                     ; $51be: $12
	inc  [hl]                                        ; $51bf: $34
	ld   l, b                                        ; $51c0: $68
	sbc  d                                           ; $51c1: $9a
	adc  $ff                                         ; $51c2: $ce $ff
	rst  $38                                         ; $51c4: $ff
	rst  $38                                         ; $51c5: $ff
	db   $eb                                         ; $51c6: $eb
	sub  a                                           ; $51c7: $97
	ld   d, e                                        ; $51c8: $53
	ld   [hl+], a                                    ; $51c9: $22
	ld   de, $1111                                   ; $51ca: $11 $11 $11
	inc  [hl]                                        ; $51cd: $34
	ld   d, a                                        ; $51ce: $57
	sbc  c                                           ; $51cf: $99
	cp   h                                           ; $51d0: $bc
	rst  $38                                         ; $51d1: $ff
	rst  $38                                         ; $51d2: $ff
	rst  $38                                         ; $51d3: $ff
	call c, Call_0d2_65a8                            ; $51d4: $dc $a8 $65
	inc  sp                                          ; $51d7: $33
	ld   [hl-], a                                    ; $51d8: $32
	ld   hl, $2312                                   ; $51d9: $21 $12 $23
	ld   b, l                                        ; $51dc: $45
	ld   a, b                                        ; $51dd: $78
	sbc  e                                           ; $51de: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51df: $cf
	rst  $38                                         ; $51e0: $ff
	rst  $38                                         ; $51e1: $ff
	db   $ed                                         ; $51e2: $ed
	cp   d                                           ; $51e3: $ba
	sub  a                                           ; $51e4: $97
	ld   h, l                                        ; $51e5: $65
	ld   b, e                                        ; $51e6: $43
	ld   [hl+], a                                    ; $51e7: $22
	ld   [de], a                                     ; $51e8: $12
	ld   [hl+], a                                    ; $51e9: $22
	inc  [hl]                                        ; $51ea: $34
	ld   d, [hl]                                     ; $51eb: $56
	ld   a, c                                        ; $51ec: $79
	xor  l                                           ; $51ed: $ad
	rst  $28                                         ; $51ee: $ef
	rst  $38                                         ; $51ef: $ff
	cp   $dc                                         ; $51f0: $fe $dc
	cp   d                                           ; $51f2: $ba
	sbc  b                                           ; $51f3: $98
	ld   h, l                                        ; $51f4: $65
	ld   d, h                                        ; $51f5: $54
	ld   [hl-], a                                    ; $51f6: $32
	ld   [hl+], a                                    ; $51f7: $22
	ld   [hl+], a                                    ; $51f8: $22
	inc  [hl]                                        ; $51f9: $34
	ld   d, a                                        ; $51fa: $57
	adc  d                                           ; $51fb: $8a
	cp   l                                           ; $51fc: $bd
	rst  $28                                         ; $51fd: $ef
	rst  $38                                         ; $51fe: $ff
	rst  $38                                         ; $51ff: $ff
	db   $ec                                         ; $5200: $ec
	xor  c                                           ; $5201: $a9
	add  [hl]                                        ; $5202: $86
	ld   b, e                                        ; $5203: $43
	ld   hl, $2221                                   ; $5204: $21 $21 $22
	ld   [hl+], a                                    ; $5207: $22
	dec  [hl]                                        ; $5208: $35
	adc  e                                           ; $5209: $8b
	cp   l                                           ; $520a: $bd
	sbc  $ef                                         ; $520b: $de $ef
	rst  $38                                         ; $520d: $ff
	db   $fd                                         ; $520e: $fd
	xor  c                                           ; $520f: $a9
	ld   h, h                                        ; $5210: $64

Jump_0d2_5211:
	ld   b, e                                        ; $5211: $43
	inc  sp                                          ; $5212: $33
	ld   [hl+], a                                    ; $5213: $22
	ld   [hl+], a                                    ; $5214: $22
	inc  [hl]                                        ; $5215: $34
	ld   h, a                                        ; $5216: $67
	adc  c                                           ; $5217: $89
	xor  d                                           ; $5218: $aa
	xor  h                                           ; $5219: $ac
	rst  JumpTable                                         ; $521a: $df
	rst  $38                                         ; $521b: $ff
	db   $fc                                         ; $521c: $fc
	sub  [hl]                                        ; $521d: $96
	ld   b, e                                        ; $521e: $43
	inc  [hl]                                        ; $521f: $34
	ld   d, [hl]                                     ; $5220: $56
	ld   d, h                                        ; $5221: $54
	ld   hl, $7a25                                   ; $5222: $21 $25 $7a
	cp   d                                           ; $5225: $ba
	sub  a                                           ; $5226: $97
	ld   a, c                                        ; $5227: $79
	cp   [hl]                                        ; $5228: $be
	rst  $38                                         ; $5229: $ff
	rst  $38                                         ; $522a: $ff
	jp   c, Jump_0d2_5675                            ; $522b: $da $75 $56

	ld   d, e                                        ; $522e: $53
	ld   de, $4711                                   ; $522f: $11 $11 $47
	xor  c                                           ; $5232: $a9
	sbc  c                                           ; $5233: $99
	sbc  d                                           ; $5234: $9a
	xor  $ee                                         ; $5235: $ee $ee
	rst  JumpTable                                         ; $5237: $df
	rst  $38                                         ; $5238: $ff
	db   $fd                                         ; $5239: $fd
	sub  l                                           ; $523a: $95
	ld   hl, $1111                                   ; $523b: $21 $11 $11
	inc  de                                          ; $523e: $13
	ld   [hl], a                                     ; $523f: $77
	sbc  c                                           ; $5240: $99
	sbc  l                                           ; $5241: $9d
	rst  $38                                         ; $5242: $ff
	rst  $38                                         ; $5243: $ff
	cp   d                                           ; $5244: $ba
	cp   [hl]                                        ; $5245: $be
	rst  $38                                         ; $5246: $ff
	db   $fc                                         ; $5247: $fc
	ld   h, c                                        ; $5248: $61
	ld   de, $1111                                   ; $5249: $11 $11 $11
	rla                                              ; $524c: $17
	cp   h                                           ; $524d: $bc
	db   $fc                                         ; $524e: $fc
	rst  JumpTable                                         ; $524f: $df
	rst  $38                                         ; $5250: $ff
	cp   $aa                                         ; $5251: $fe $aa
	adc  [hl]                                        ; $5253: $8e
	rst  $38                                         ; $5254: $ff
	ld   hl, sp+$11                                  ; $5255: $f8 $11
	ld   de, $1111                                   ; $5257: $11 $11 $11
	sbc  a                                           ; $525a: $9f
	rst  $38                                         ; $525b: $ff
	call z, $ffff                                    ; $525c: $cc $ff $ff
	ld   hl, sp+$63                                  ; $525f: $f8 $63
	xor  a                                           ; $5261: $af
	rst  $38                                         ; $5262: $ff
	db   $e3                                         ; $5263: $e3
	ld   de, $1111                                   ; $5264: $11 $11 $11
	ld   c, a                                        ; $5267: $4f
	db   $fd                                         ; $5268: $fd
	db   $eb                                         ; $5269: $eb
	rst  $38                                         ; $526a: $ff
	rst  $38                                         ; $526b: $ff
	db   $fc                                         ; $526c: $fc
	ld   hl, $ff1e                                   ; $526d: $21 $1e $ff
	ei                                               ; $5270: $fb
	ld   de, $1111                                   ; $5271: $11 $11 $11
	ld   a, [hl-]                                    ; $5274: $3a
	rst  $38                                         ; $5275: $ff
	rst  $38                                         ; $5276: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5277: $cf
	rst  $38                                         ; $5278: $ff
	rst  $38                                         ; $5279: $ff
	ld   d, c                                        ; $527a: $51
	dec  d                                           ; $527b: $15
	rst  $38                                         ; $527c: $ff
	rst  $38                                         ; $527d: $ff
	add  c                                           ; $527e: $81
	ld   de, $1211                                   ; $527f: $11 $11 $12
	ld   a, a                                        ; $5282: $7f
	rst  $38                                         ; $5283: $ff
	rst  $38                                         ; $5284: $ff
	rst  $38                                         ; $5285: $ff
	rst  $38                                         ; $5286: $ff
	di                                               ; $5287: $f3
	ld   de, $ff4f                                   ; $5288: $11 $4f $ff
	db   $fd                                         ; $528b: $fd
	ld   de, $1111                                   ; $528c: $11 $11 $11
	ld   l, d                                        ; $528f: $6a
	rst  $38                                         ; $5290: $ff
	rst  $38                                         ; $5291: $ff
	rst  $38                                         ; $5292: $ff
	rst  $38                                         ; $5293: $ff
	db   $fc                                         ; $5294: $fc
	ld   de, $ff17                                   ; $5295: $11 $17 $ff
	rst  $38                                         ; $5298: $ff
	add  c                                           ; $5299: $81
	ld   de, $1911                                   ; $529a: $11 $11 $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $529d: $cf
	rst  $38                                         ; $529e: $ff
	rst  $38                                         ; $529f: $ff
	rst  $38                                         ; $52a0: $ff
	ei                                               ; $52a1: $fb
	add  c                                           ; $52a2: $81
	inc  de                                          ; $52a3: $13
	cp   a                                           ; $52a4: $bf
	rst  $38                                         ; $52a5: $ff
	db   $f4                                         ; $52a6: $f4
	ld   de, $1111                                   ; $52a7: $11 $11 $11
	xor  a                                           ; $52aa: $af
	rst  $38                                         ; $52ab: $ff
	rst  $38                                         ; $52ac: $ff
	rst  $38                                         ; $52ad: $ff
	db   $fd                                         ; $52ae: $fd
	add  h                                           ; $52af: $84
	ld   [de], a                                     ; $52b0: $12
	ld   a, a                                        ; $52b1: $7f
	rst  $38                                         ; $52b2: $ff
	rst  $38                                         ; $52b3: $ff
	ld   de, $1111                                   ; $52b4: $11 $11 $11
	ld   c, e                                        ; $52b7: $4b
	rst  $38                                         ; $52b8: $ff
	rst  $38                                         ; $52b9: $ff
	rst  $38                                         ; $52ba: $ff
	cp   $74                                         ; $52bb: $fe $74
	ld   hl, $ff7c                                   ; $52bd: $21 $7c $ff
	rst  $38                                         ; $52c0: $ff
	sub  c                                           ; $52c1: $91
	ld   de, $1911                                   ; $52c2: $11 $11 $19
	rst  JumpTable                                         ; $52c5: $df
	rst  $38                                         ; $52c6: $ff
	rst  $38                                         ; $52c7: $ff
	cp   $61                                         ; $52c8: $fe $61
	ld   hl, $ff3f                                   ; $52ca: $21 $3f $ff
	rst  $38                                         ; $52cd: $ff
	and  c                                           ; $52ce: $a1
	ld   de, $1511                                   ; $52cf: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d2: $cf
	rst  $38                                         ; $52d3: $ff
	rst  $38                                         ; $52d4: $ff
	db   $db                                         ; $52d5: $db
	ld   d, c                                        ; $52d6: $51
	inc  de                                          ; $52d7: $13
	ld   c, l                                        ; $52d8: $4d
	rst  $38                                         ; $52d9: $ff
	rst  $38                                         ; $52da: $ff
	rst  $30                                         ; $52db: $f7
	ld   de, $1111                                   ; $52dc: $11 $11 $11
	ld   e, l                                        ; $52df: $5d
	rst  $38                                         ; $52e0: $ff
	rst  $38                                         ; $52e1: $ff
	rst  $30                                         ; $52e2: $f7
	ld   d, c                                        ; $52e3: $51
	ld   de, $ffaa                                   ; $52e4: $11 $aa $ff
	rst  $38                                         ; $52e7: $ff
	ld   a, [$1111]                                  ; $52e8: $fa $11 $11
	ld   de, $bf1d                                   ; $52eb: $11 $1d $bf
	rst  $38                                         ; $52ee: $ff
	rst  $38                                         ; $52ef: $ff
	ld   de, $7f11                                   ; $52f0: $11 $11 $7f
	rst  $38                                         ; $52f3: $ff
	rst  $38                                         ; $52f4: $ff
	rst  $30                                         ; $52f5: $f7
	ld   de, $1111                                   ; $52f6: $11 $11 $11
	rla                                              ; $52f9: $17
	xor  a                                           ; $52fa: $af
	rst  $38                                         ; $52fb: $ff
	rst  $38                                         ; $52fc: $ff
	ld   de, $4f11                                   ; $52fd: $11 $11 $4f
	rst  $38                                         ; $5300: $ff
	rst  $38                                         ; $5301: $ff
	db   $fd                                         ; $5302: $fd
	ld   sp, $1111                                   ; $5303: $31 $11 $11
	ld   de, $ff8a                                   ; $5306: $11 $8a $ff
	rst  $38                                         ; $5309: $ff
	pop  af                                          ; $530a: $f1
	ld   de, $ff1f                                   ; $530b: $11 $1f $ff
	rst  $38                                         ; $530e: $ff
	rst  $38                                         ; $530f: $ff
	ld   hl, $1111                                   ; $5310: $21 $11 $11
	ld   de, $df19                                   ; $5313: $11 $19 $df
	rst  $38                                         ; $5316: $ff
	pop  af                                          ; $5317: $f1
	ld   de, $ff17                                   ; $5318: $11 $17 $ff
	rst  $38                                         ; $531b: $ff
	adc  $71                                         ; $531c: $ce $71
	ld   de, $1111                                   ; $531e: $11 $11 $11
	dec  d                                           ; $5321: $15
	ld   a, a                                        ; $5322: $7f
	rst  $38                                         ; $5323: $ff
	cp   $11                                         ; $5324: $fe $11
	ld   de, $ffff                                   ; $5326: $11 $ff $ff
	ld   hl, sp-$4f                                  ; $5329: $f8 $b1
	ld   de, $1111                                   ; $532b: $11 $11 $11
	ld   de, $ff8b                                   ; $532e: $11 $8b $ff
	rst  $38                                         ; $5331: $ff
	ld   de, $af11                                   ; $5332: $11 $11 $af
	rst  $38                                         ; $5335: $ff
	ld   hl, sp+$62                                  ; $5336: $f8 $62
	ld   de, $2111                                   ; $5338: $11 $11 $21
	ld   de, rAUDTERM                                   ; $533b: $11 $25 $ff
	rst  $38                                         ; $533e: $ff
	pop  hl                                          ; $533f: $e1
	ld   de, $ff1f                                   ; $5340: $11 $1f $ff
	rst  $38                                         ; $5343: $ff
	inc  bc                                          ; $5344: $03
	ld   de, $1511                                   ; $5345: $11 $11 $15
	ld   de, $bf15                                   ; $5348: $11 $15 $bf
	rst  $38                                         ; $534b: $ff
	pop  af                                          ; $534c: $f1
	ld   de, $ff1f                                   ; $534d: $11 $1f $ff
	rst  $38                                         ; $5350: $ff
	ld   hl, $0111                                   ; $5351: $21 $11 $01
	rla                                              ; $5354: $17
	ld   de, $6f11                                   ; $5355: $11 $11 $6f
	rst  $38                                         ; $5358: $ff
	rst  $30                                         ; $5359: $f7
	ld   de, rAUD1LEN                                   ; $535a: $11 $11 $ff
	rst  $38                                         ; $535d: $ff
	or   c                                           ; $535e: $b1
	ld   de, $1611                                   ; $535f: $11 $11 $16
	ld   [hl], c                                     ; $5362: $71
	ld   de, $ff4a                                   ; $5363: $11 $4a $ff
	rst  $38                                         ; $5366: $ff
	ld   de, rAUD1LEN                                   ; $5367: $11 $11 $ff
	rst  $38                                         ; $536a: $ff
	pop  af                                          ; $536b: $f1
	ld   de, $1212                                   ; $536c: $11 $12 $12
	pop  bc                                          ; $536f: $c1
	ld   de, $ff15                                   ; $5370: $11 $15 $ff
	rst  $38                                         ; $5373: $ff
	ld   b, c                                        ; $5374: $41
	ld   de, $ff2f                                   ; $5375: $11 $2f $ff
	ld   hl, sp+$11                                  ; $5378: $f8 $11
	ld   de, $c941                                   ; $537a: $11 $41 $c9
	ld   de, $bf12                                   ; $537d: $11 $12 $bf
	rst  $38                                         ; $5380: $ff
	pop  af                                          ; $5381: $f1
	ld   de, $ff1f                                   ; $5382: $11 $1f $ff
	rst  $38                                         ; $5385: $ff
	ld   de, $5311                                   ; $5386: $11 $11 $53
	adc  a                                           ; $5389: $8f
	ld   de, $4f11                                   ; $538a: $11 $11 $4f
	rst  $38                                         ; $538d: $ff
	pop  af                                          ; $538e: $f1
	ld   de, $ff17                                   ; $538f: $11 $17 $ff
	rst  $38                                         ; $5392: $ff
	ld   sp, $1611                                   ; $5393: $31 $11 $16
	ld   l, a                                        ; $5396: $6f

Call_0d2_5397:
	sub  c                                           ; $5397: $91
	ld   de, $ff1b                                   ; $5398: $11 $1b $ff
	rst  $38                                         ; $539b: $ff
	ld   de, rAUD1LEN                                   ; $539c: $11 $11 $ff
	rst  $38                                         ; $539f: $ff
	pop  hl                                          ; $53a0: $e1
	ld   de, $5a18                                   ; $53a1: $11 $18 $5a
	pop  de                                          ; $53a4: $d1
	ld   de, $ff15                                   ; $53a5: $11 $15 $ff
	rst  $38                                         ; $53a8: $ff
	pop  af                                          ; $53a9: $f1
	ld   de, $ff1f                                   ; $53aa: $11 $1f $ff
	ld   sp, hl                                      ; $53ad: $f9
	ld   de, $9511                                   ; $53ae: $11 $11 $95
	ld   [$1111], a                                  ; $53b1: $ea $11 $11
	cpl                                              ; $53b4: $2f
	rst  $38                                         ; $53b5: $ff
	di                                               ; $53b6: $f3
	ld   de, $ff15                                   ; $53b7: $11 $15 $ff
	rst  $38                                         ; $53ba: $ff
	ld   b, c                                        ; $53bb: $41
	ld   de, $9f39                                   ; $53bc: $11 $39 $9f
	add  c                                           ; $53bf: $81
	ld   de, rAUD1LEN                                   ; $53c0: $11 $11 $ff
	rst  $38                                         ; $53c3: $ff
	ld   de, $cf11                                   ; $53c4: $11 $11 $cf
	rst  $38                                         ; $53c7: $ff
	pop  af                                          ; $53c8: $f1
	ld   de, $9c17                                   ; $53c9: $11 $17 $9c
	or   $11                                         ; $53cc: $f6 $11
	ld   [de], a                                     ; $53ce: $12
	rra                                              ; $53cf: $1f
	rst  $38                                         ; $53d0: $ff
	pop  af                                          ; $53d1: $f1
	ld   de, $ff1e                                   ; $53d2: $11 $1e $ff
	rst  $38                                         ; $53d5: $ff
	ld   de, $bb11                                   ; $53d6: $11 $11 $bb
	rst  $38                                         ; $53d9: $ff
	ld   b, c                                        ; $53da: $41
	ld   de, $ff21                                   ; $53db: $11 $21 $ff
	rst  $38                                         ; $53de: $ff
	ld   de, $bf11                                   ; $53df: $11 $11 $bf
	rst  $38                                         ; $53e2: $ff
	pop  af                                          ; $53e3: $f1
	ld   de, $ff1d                                   ; $53e4: $11 $1d $ff
	di                                               ; $53e7: $f3
	ld   de, $1f11                                   ; $53e8: $11 $11 $1f
	rst  $38                                         ; $53eb: $ff
	ldh  a, [c]                                      ; $53ec: $f2
	ld   de, rAUD1LOW                                   ; $53ed: $11 $13 $ff
	rst  $38                                         ; $53f0: $ff
	ld   de, $bf11                                   ; $53f1: $11 $11 $bf
	rst  $38                                         ; $53f4: $ff
	ld   d, c                                        ; $53f5: $51
	ld   de, rAUD1LEN                                   ; $53f6: $11 $11 $ff
	rst  $38                                         ; $53f9: $ff
	pop  af                                          ; $53fa: $f1
	ld   de, $ff1f                                   ; $53fb: $11 $1f $ff
	or   $11                                         ; $53fe: $f6 $11
	rla                                              ; $5400: $17
	db   $fd                                         ; $5401: $fd
	ld   sp, hl                                      ; $5402: $f9
	ld   de, $3711                                   ; $5403: $11 $11 $37
	rst  $38                                         ; $5406: $ff
	rst  $38                                         ; $5407: $ff
	ld   de, rAUD1LEN                                   ; $5408: $11 $11 $ff
	rst  $38                                         ; $540b: $ff
	pop  af                                          ; $540c: $f1
	ld   de, $ef1f                                   ; $540d: $11 $1f $ef
	pop  de                                          ; $5410: $d1
	ld   de, $1f14                                   ; $5411: $11 $14 $1f
	rst  $38                                         ; $5414: $ff
	pop  af                                          ; $5415: $f1
	ld   de, $ff15                                   ; $5416: $11 $15 $ff
	rst  $38                                         ; $5419: $ff
	ld   de, $cf11                                   ; $541a: $11 $11 $cf
	rst  $28                                         ; $541d: $ef
	ld   hl, $1211                                   ; $541e: $21 $11 $12
	rst  $38                                         ; $5421: $ff
	rst  $38                                         ; $5422: $ff
	pop  af                                          ; $5423: $f1
	ld   de, $ff1f                                   ; $5424: $11 $1f $ff
	ld   sp, hl                                      ; $5427: $f9
	ld   de, $fd16                                   ; $5428: $11 $16 $fd
	ld   a, [$1111]                                  ; $542b: $fa $11 $11
	ld   d, h                                        ; $542e: $54
	rst  $38                                         ; $542f: $ff
	rst  $38                                         ; $5430: $ff
	ld   de, $df11                                   ; $5431: $11 $11 $df
	rst  $38                                         ; $5434: $ff
	pop  af                                          ; $5435: $f1
	ld   de, $df1f                                   ; $5436: $11 $1f $df
	pop  af                                          ; $5439: $f1
	ld   de, $2f11                                   ; $543a: $11 $11 $2f
	rst  $38                                         ; $543d: $ff
	db   $fc                                         ; $543e: $fc
	ld   de, rAUD1LEN                                   ; $543f: $11 $11 $ff
	rst  $38                                         ; $5442: $ff
	sub  c                                           ; $5443: $91
	ld   de, $df7f                                   ; $5444: $11 $7f $df
	sub  c                                           ; $5447: $91
	ld   de, $3f15                                   ; $5448: $11 $15 $3f
	rst  $38                                         ; $544b: $ff
	pop  af                                          ; $544c: $f1
	ld   de, $ff1a                                   ; $544d: $11 $1a $ff
	rst  $38                                         ; $5450: $ff
	ld   de, $ed11                                   ; $5451: $11 $11 $ed
	rst  $38                                         ; $5454: $ff
	ld   hl, $1211                                   ; $5455: $21 $11 $12
	rst  $38                                         ; $5458: $ff
	rst  $38                                         ; $5459: $ff
	pop  af                                          ; $545a: $f1
	ld   de, $ff1f                                   ; $545b: $11 $1f $ff
	db   $fc                                         ; $545e: $fc
	ld   de, $fb12                                   ; $545f: $11 $12 $fb
	db   $fc                                         ; $5462: $fc
	ld   de, $5111                                   ; $5463: $11 $11 $51
	rst  $38                                         ; $5466: $ff
	rst  $38                                         ; $5467: $ff
	ld   de, $1f11                                   ; $5468: $11 $11 $1f
	rst  $38                                         ; $546b: $ff
	pop  af                                          ; $546c: $f1
	ld   de, $ee1c                                   ; $546d: $11 $1c $ee
	push af                                          ; $5470: $f5
	ld   de, $3311                                   ; $5471: $11 $11 $33
	rst  $38                                         ; $5474: $ff
	rst  $38                                         ; $5475: $ff
	ld   de, rAUD1LEN                                   ; $5476: $11 $11 $ff
	rst  $38                                         ; $5479: $ff
	pop  af                                          ; $547a: $f1
	ld   de, $ef1f                                   ; $547b: $11 $1f $ef
	pop  af                                          ; $547e: $f1
	ld   de, $1d11                                   ; $547f: $11 $11 $1d
	rst  $38                                         ; $5482: $ff
	rst  $38                                         ; $5483: $ff
	ld   de, rAUD1LEN                                   ; $5484: $11 $11 $ff
	rst  $38                                         ; $5487: $ff
	pop  bc                                          ; $5488: $c1
	ld   de, $df2f                                   ; $5489: $11 $2f $df
	pop  af                                          ; $548c: $f1
	ld   de, $1f11                                   ; $548d: $11 $11 $1f
	rst  $38                                         ; $5490: $ff
	db   $fd                                         ; $5491: $fd
	ld   de, rAUD1LEN                                   ; $5492: $11 $11 $ff
	rst  $38                                         ; $5495: $ff
	ld   [hl], c                                     ; $5496: $71
	ld   de, $ef8f                                   ; $5497: $11 $8f $ef
	or   c                                           ; $549a: $b1
	ld   de, $1f11                                   ; $549b: $11 $11 $1f
	rst  $38                                         ; $549e: $ff
	push af                                          ; $549f: $f5
	ld   de, rAUD1LEN                                   ; $54a0: $11 $11 $ff
	rst  $38                                         ; $54a3: $ff
	ld   b, c                                        ; $54a4: $41
	ld   de, $efcf                                   ; $54a5: $11 $cf $ef
	ld   h, c                                        ; $54a8: $61
	ld   de, $1f11                                   ; $54a9: $11 $11 $1f
	rst  $38                                         ; $54ac: $ff
	pop  af                                          ; $54ad: $f1
	ld   de, rAUD1LEN                                   ; $54ae: $11 $11 $ff
	rst  $38                                         ; $54b1: $ff
	ld   hl, $de11                                   ; $54b2: $21 $11 $de
	rst  $38                                         ; $54b5: $ff
	ld   d, h                                        ; $54b6: $54
	ld   de, $1f11                                   ; $54b7: $11 $11 $1f
	rst  $38                                         ; $54ba: $ff
	pop  af                                          ; $54bb: $f1
	ld   de, rAUD1ENV                                   ; $54bc: $11 $12 $ff
	rst  $38                                         ; $54bf: $ff
	ld   hl, $ee11                                   ; $54c0: $21 $11 $ee
	rst  $38                                         ; $54c3: $ff
	ld   h, h                                        ; $54c4: $64
	ld   de, $1f11                                   ; $54c5: $11 $11 $1f
	rst  $38                                         ; $54c8: $ff
	ldh  a, [c]                                      ; $54c9: $f2
	ld   de, rAUD1LEN                                   ; $54ca: $11 $11 $ff
	rst  $38                                         ; $54cd: $ff
	ld   b, c                                        ; $54ce: $41
	ld   de, $ffde                                   ; $54cf: $11 $de $ff
	ld   [hl], h                                     ; $54d2: $74
	ld   de, $1f11                                   ; $54d3: $11 $11 $1f
	rst  $38                                         ; $54d6: $ff
	ei                                               ; $54d7: $fb
	ld   de, rAUD1LEN                                   ; $54d8: $11 $11 $ff
	rst  $38                                         ; $54db: $ff
	add  c                                           ; $54dc: $81
	ld   de, $ff9f                                   ; $54dd: $11 $9f $ff
	and  h                                           ; $54e0: $a4
	ld   de, $1f11                                   ; $54e1: $11 $11 $1f
	rst  $38                                         ; $54e4: $ff
	rst  $38                                         ; $54e5: $ff
	ld   de, rAUD1LEN                                   ; $54e6: $11 $11 $ff
	rst  $38                                         ; $54e9: $ff
	pop  hl                                          ; $54ea: $e1
	ld   de, $ef5f                                   ; $54eb: $11 $5f $ef
	push hl                                          ; $54ee: $e5
	ld   sp, $1b11                                   ; $54ef: $31 $11 $1b
	rst  $38                                         ; $54f2: $ff
	rst  $38                                         ; $54f3: $ff
	ld   de, $ef11                                   ; $54f4: $11 $11 $ef
	rst  $38                                         ; $54f7: $ff
	pop  af                                          ; $54f8: $f1
	ld   de, $df1f                                   ; $54f9: $11 $1f $df
	or   $51                                         ; $54fc: $f6 $51
	ld   de, rAUD1LOW                                   ; $54fe: $11 $13 $ff
	rst  $38                                         ; $5501: $ff
	ld   de, $3f11                                   ; $5502: $11 $11 $3f
	rst  $38                                         ; $5505: $ff
	push af                                          ; $5506: $f5
	ld   de, $df1d                                   ; $5507: $11 $1d $df
	or   $51                                         ; $550a: $f6 $51
	ld   de, rAUD1LEN                                   ; $550c: $11 $11 $ff
	rst  $38                                         ; $550f: $ff
	pop  af                                          ; $5510: $f1
	ld   de, $ff1f                                   ; $5511: $11 $1f $ff
	db   $fc                                         ; $5514: $fc
	ld   de, $df17                                   ; $5515: $11 $17 $df
	ei                                               ; $5518: $fb
	ld   h, c                                        ; $5519: $61
	ld   de, $af11                                   ; $551a: $11 $11 $af
	rst  $38                                         ; $551d: $ff
	pop  af                                          ; $551e: $f1
	ld   de, $ff1d                                   ; $551f: $11 $1d $ff
	rst  $38                                         ; $5522: $ff
	ld   de, $fe11                                   ; $5523: $11 $11 $fe
	rst  $38                                         ; $5526: $ff
	ld   h, h                                        ; $5527: $64
	ld   de, $3f11                                   ; $5528: $11 $11 $3f
	rst  $38                                         ; $552b: $ff
	db   $f4                                         ; $552c: $f4
	ld   de, rAUD1LEN                                   ; $552d: $11 $11 $ff
	rst  $38                                         ; $5530: $ff
	ld   [hl], c                                     ; $5531: $71
	ld   de, $ffcd                                   ; $5532: $11 $cd $ff
	add  [hl]                                        ; $5535: $86
	ld   de, $1f11                                   ; $5536: $11 $11 $1f
	rst  $38                                         ; $5539: $ff
	rst  $38                                         ; $553a: $ff
	ld   de, rAUD1LEN                                   ; $553b: $11 $11 $ff
	rst  $38                                         ; $553e: $ff
	pop  af                                          ; $553f: $f1
	ld   de, $ff3e                                   ; $5540: $11 $3e $ff
	or   $21                                         ; $5543: $f6 $21
	ld   de, rAUD1HIGH                                   ; $5545: $11 $14 $ff
	rst  $38                                         ; $5548: $ff
	ld   de, $2f11                                   ; $5549: $11 $11 $2f
	rst  $38                                         ; $554c: $ff
	or   $11                                         ; $554d: $f6 $11
	dec  e                                           ; $554f: $1d
	rst  JumpTable                                         ; $5550: $df
	ld   hl, sp+$61                                  ; $5551: $f8 $61
	ld   de, $ef11                                   ; $5553: $11 $11 $ef
	rst  $38                                         ; $5556: $ff
	pop  af                                          ; $5557: $f1
	ld   de, $ff1f                                   ; $5558: $11 $1f $ff
	rst  $38                                         ; $555b: $ff
	ld   de, $ef13                                   ; $555c: $11 $13 $ef
	rst  $38                                         ; $555f: $ff
	ld   h, d                                        ; $5560: $62
	ld   de, $2f11                                   ; $5561: $11 $11 $2f
	rst  $38                                         ; $5564: $ff
	push af                                          ; $5565: $f5
	ld   de, rAUD1LEN                                   ; $5566: $11 $11 $ff
	rst  $38                                         ; $5569: $ff
	sub  c                                           ; $556a: $91
	ld   de, $ffbd                                   ; $556b: $11 $bd $ff
	sub  [hl]                                        ; $556e: $96
	ld   de, $1b11                                   ; $556f: $11 $11 $1b
	rst  $38                                         ; $5572: $ff
	rst  $38                                         ; $5573: $ff
	ld   de, rAUD1LEN                                   ; $5574: $11 $11 $ff
	rst  $38                                         ; $5577: $ff
	pop  af                                          ; $5578: $f1
	ld   de, $ef1e                                   ; $5579: $11 $1e $ef
	rst  $30                                         ; $557c: $f7
	ld   b, c                                        ; $557d: $41
	ld   de, rAUD1ENV                                   ; $557e: $11 $12 $ff
	rst  $38                                         ; $5581: $ff
	or   c                                           ; $5582: $b1
	ld   de, $ff1f                                   ; $5583: $11 $1f $ff
	ld   a, [$1911]                                  ; $5586: $fa $11 $19
	rst  JumpTable                                         ; $5589: $df
	ld   a, [$1171]                                  ; $558a: $fa $71 $11
	ld   de, $ff7f                                   ; $558d: $11 $7f $ff
	pop  af                                          ; $5590: $f1
	ld   de, $ff1a                                   ; $5591: $11 $1a $ff
	rst  $38                                         ; $5594: $ff
	ld   sp, $ed11                                   ; $5595: $31 $11 $ed
	rst  $38                                         ; $5598: $ff
	add  [hl]                                        ; $5599: $86
	ld   de, $1f11                                   ; $559a: $11 $11 $1f
	rst  $38                                         ; $559d: $ff
	rst  $38                                         ; $559e: $ff
	ld   de, rAUD1LEN                                   ; $559f: $11 $11 $ff
	rst  $38                                         ; $55a2: $ff
	pop  af                                          ; $55a3: $f1
	ld   de, $ff4e                                   ; $55a4: $11 $4e $ff
	rst  $10                                         ; $55a7: $d7
	ld   sp, $1311                                   ; $55a8: $31 $11 $13
	rst  $38                                         ; $55ab: $ff
	rst  $38                                         ; $55ac: $ff
	ld   sp, $1f11                                   ; $55ad: $31 $11 $1f
	rst  $38                                         ; $55b0: $ff
	ld   sp, hl                                      ; $55b1: $f9
	ld   de, $df1b                                   ; $55b2: $11 $1b $df
	ld   sp, hl                                      ; $55b5: $f9
	ld   [hl], c                                     ; $55b6: $71
	ld   de, $af11                                   ; $55b7: $11 $11 $af
	rst  $38                                         ; $55ba: $ff
	pop  af                                          ; $55bb: $f1
	ld   de, $ff1c                                   ; $55bc: $11 $1c $ff
	rst  $38                                         ; $55bf: $ff
	ld   hl, $dd11                                   ; $55c0: $21 $11 $dd
	rst  $38                                         ; $55c3: $ff
	add  [hl]                                        ; $55c4: $86
	ld   de, $1f11                                   ; $55c5: $11 $11 $1f
	rst  $38                                         ; $55c8: $ff
	rst  $38                                         ; $55c9: $ff
	ld   de, rAUD1LEN                                   ; $55ca: $11 $11 $ff
	rst  $38                                         ; $55cd: $ff
	pop  af                                          ; $55ce: $f1
	ld   de, $ff6d                                   ; $55cf: $11 $6d $ff
	ret  z                                           ; $55d2: $c8

	ld   de, $1411                                   ; $55d3: $11 $11 $14
	rst  $38                                         ; $55d6: $ff
	rst  $38                                         ; $55d7: $ff
	ld   de, $3f11                                   ; $55d8: $11 $11 $3f
	rst  $38                                         ; $55db: $ff
	rst  $30                                         ; $55dc: $f7
	ld   de, $df1d                                   ; $55dd: $11 $1d $df
	ld   hl, sp+$71                                  ; $55e0: $f8 $71
	ld   de, $8f11                                   ; $55e2: $11 $11 $8f
	rst  $38                                         ; $55e5: $ff
	pop  af                                          ; $55e6: $f1
	ld   de, $ff1c                                   ; $55e7: $11 $1c $ff
	rst  $38                                         ; $55ea: $ff
	ld   sp, $ed11                                   ; $55eb: $31 $11 $ed
	rst  $38                                         ; $55ee: $ff
	add  [hl]                                        ; $55ef: $86
	ld   de, $2f11                                   ; $55f0: $11 $11 $2f
	rst  $38                                         ; $55f3: $ff
	rst  $38                                         ; $55f4: $ff
	ld   de, rAUD1LEN                                   ; $55f5: $11 $11 $ff
	rst  $38                                         ; $55f8: $ff
	pop  af                                          ; $55f9: $f1
	ld   de, $ff3e                                   ; $55fa: $11 $3e $ff
	rst  $20                                         ; $55fd: $e7
	ld   b, c                                        ; $55fe: $41
	ld   de, rAUD1LOW                                   ; $55ff: $11 $13 $ff
	rst  $38                                         ; $5602: $ff
	or   c                                           ; $5603: $b1
	ld   de, $ff1f                                   ; $5604: $11 $1f $ff
	db   $fd                                         ; $5607: $fd
	ld   de, $cf19                                   ; $5608: $11 $19 $cf
	db   $fc                                         ; $560b: $fc
	add  c                                           ; $560c: $81
	ld   de, $3f11                                   ; $560d: $11 $11 $3f
	rst  $38                                         ; $5610: $ff
	pop  af                                          ; $5611: $f1
	ld   de, rAUD1HIGH                                   ; $5612: $11 $14 $ff
	rst  $38                                         ; $5615: $ff
	add  c                                           ; $5616: $81
	ld   de, $ffda                                   ; $5617: $11 $da $ff
	sbc  d                                           ; $561a: $9a
	ld   de, $1511                                   ; $561b: $11 $11 $15
	rst  $38                                         ; $561e: $ff
	rst  $38                                         ; $561f: $ff
	ld   de, $bf11                                   ; $5620: $11 $11 $bf
	rst  $38                                         ; $5623: $ff
	db   $f4                                         ; $5624: $f4
	ld   de, $af1e                                   ; $5625: $11 $1e $af
	ld   sp, hl                                      ; $5628: $f9
	sub  c                                           ; $5629: $91
	ld   de, $8f11                                   ; $562a: $11 $11 $8f
	rst  $38                                         ; $562d: $ff
	pop  af                                          ; $562e: $f1
	ld   de, $ff1e                                   ; $562f: $11 $1e $ff
	rst  $38                                         ; $5632: $ff
	ld   hl, $da11                                   ; $5633: $21 $11 $da
	rst  $38                                         ; $5636: $ff
	sbc  b                                           ; $5637: $98
	ld   de, $1d11                                   ; $5638: $11 $11 $1d
	rst  $38                                         ; $563b: $ff
	rst  $38                                         ; $563c: $ff
	ld   de, rAUD1LEN                                   ; $563d: $11 $11 $ff
	rst  $38                                         ; $5640: $ff
	db   $f4                                         ; $5641: $f4
	ld   hl, $7f17                                   ; $5642: $21 $17 $7f
	call z, $11b1                                    ; $5645: $cc $b1 $11
	ld   de, $ffff                                   ; $5648: $11 $ff $ff
	ld   de, $2f11                                   ; $564b: $11 $11 $2f
	rst  $38                                         ; $564e: $ff
	rst  $38                                         ; $564f: $ff
	ld   b, c                                        ; $5650: $41
	ld   [de], a                                     ; $5651: $12
	rra                                              ; $5652: $1f
	rst  $38                                         ; $5653: $ff
	pop  af                                          ; $5654: $f1
	ld   de, rAUD1LEN                                   ; $5655: $11 $11 $ff
	rst  $38                                         ; $5658: $ff
	pop  hl                                          ; $5659: $e1
	ld   de, $ff1f                                   ; $565a: $11 $1f $ff
	rst  $38                                         ; $565d: $ff
	ld   hl, $3d11                                   ; $565e: $21 $11 $3d
	rst  $38                                         ; $5661: $ff
	di                                               ; $5662: $f3
	ld   de, rAUD1LEN                                   ; $5663: $11 $11 $ff
	rst  $38                                         ; $5666: $ff
	pop  af                                          ; $5667: $f1
	ld   de, $ff1f                                   ; $5668: $11 $1f $ff
	rst  $38                                         ; $566b: $ff
	ld   sp, $6911                                   ; $566c: $31 $11 $69
	rst  $38                                         ; $566f: $ff
	ret                                              ; $5670: $c9


	ld   de, $af11                                   ; $5671: $11 $11 $af
	rst  $38                                         ; $5674: $ff

Jump_0d2_5675:
	pop  af                                          ; $5675: $f1
	ld   de, $ff1d                                   ; $5676: $11 $1d $ff
	rst  $38                                         ; $5679: $ff
	add  c                                           ; $567a: $81
	ld   de, $ff55                                   ; $567b: $11 $55 $ff
	call $1111                                       ; $567e: $cd $11 $11
	rra                                              ; $5681: $1f
	rst  $38                                         ; $5682: $ff
	pop  af                                          ; $5683: $f1
	ld   de, $ff15                                   ; $5684: $11 $15 $ff
	rst  $38                                         ; $5687: $ff
	jp   Jump_0d2_5211                               ; $5688: $c3 $11 $52


	rst  $38                                         ; $568b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $568c: $cf
	ld   de, $1f11                                   ; $568d: $11 $11 $1f
	rst  $38                                         ; $5690: $ff
	db   $fd                                         ; $5691: $fd
	ld   de, rAUD1LEN                                   ; $5692: $11 $11 $ff
	rst  $38                                         ; $5695: $ff
	or   $11                                         ; $5696: $f6 $11
	ld   [de], a                                     ; $5698: $12
	cp   a                                           ; $5699: $bf
	rst  JumpTable                                         ; $569a: $df
	ld   d, c                                        ; $569b: $51
	ld   de, $ff18                                   ; $569c: $11 $18 $ff
	rst  $38                                         ; $569f: $ff
	ld   de, $af11                                   ; $56a0: $11 $11 $af
	rst  $38                                         ; $56a3: $ff
	ld   a, [$1421]                                  ; $56a4: $fa $21 $14
	ccf                                              ; $56a7: $3f
	rst  $38                                         ; $56a8: $ff
	pop  af                                          ; $56a9: $f1
	ld   de, rAUD1LEN                                   ; $56aa: $11 $11 $ff
	rst  $38                                         ; $56ad: $ff
	ld   hl, $1f11                                   ; $56ae: $21 $11 $1f
	rst  $38                                         ; $56b1: $ff
	rst  $38                                         ; $56b2: $ff
	ld   h, c                                        ; $56b3: $61
	inc  d                                           ; $56b4: $14
	rra                                              ; $56b5: $1f
	db   $fc                                         ; $56b6: $fc
	ldh  a, [c]                                      ; $56b7: $f2
	ld   de, $cf11                                   ; $56b8: $11 $11 $cf
	rst  $38                                         ; $56bb: $ff
	pop  af                                          ; $56bc: $f1
	ld   de, $ff1b                                   ; $56bd: $11 $1b $ff
	rst  $38                                         ; $56c0: $ff
	add  d                                           ; $56c1: $82
	ld   de, $ff45                                   ; $56c2: $11 $45 $ff
	db   $fd                                         ; $56c5: $fd
	ld   de, $1f11                                   ; $56c6: $11 $11 $1f
	rst  $38                                         ; $56c9: $ff
	ldh  a, [c]                                      ; $56ca: $f2
	ld   de, rAUD1LEN                                   ; $56cb: $11 $11 $ff
	rst  $38                                         ; $56ce: $ff
	or   $11                                         ; $56cf: $f6 $11
	ld   b, d                                        ; $56d1: $42
	rst  $38                                         ; $56d2: $ff
	rst  $28                                         ; $56d3: $ef
	ld   b, c                                        ; $56d4: $41
	ld   de, $ff17                                   ; $56d5: $11 $17 $ff
	rst  $38                                         ; $56d8: $ff
	ld   de, $9f11                                   ; $56d9: $11 $11 $9f
	rst  $38                                         ; $56dc: $ff
	ld   sp, hl                                      ; $56dd: $f9
	ld   sp, $6f16                                   ; $56de: $31 $16 $6f
	rst  $38                                         ; $56e1: $ff
	pop  de                                          ; $56e2: $d1
	ld   de, rAUD1LEN                                   ; $56e3: $11 $11 $ff
	rst  $38                                         ; $56e6: $ff
	pop  af                                          ; $56e7: $f1
	ld   de, $ff1d                                   ; $56e8: $11 $1d $ff
	rst  $38                                         ; $56eb: $ff
	ld   h, c                                        ; $56ec: $61
	ld   [de], a                                     ; $56ed: $12
	ld   c, d                                        ; $56ee: $4a
	cp   $fa                                         ; $56ef: $fe $fa
	ld   de, $1f11                                   ; $56f1: $11 $11 $1f
	rst  $38                                         ; $56f4: $ff
	push af                                          ; $56f5: $f5
	ld   de, $ef11                                   ; $56f6: $11 $11 $ef
	rst  $38                                         ; $56f9: $ff
	push af                                          ; $56fa: $f5
	ld   de, $ff54                                   ; $56fb: $11 $54 $ff
	rst  JumpTable                                         ; $56fe: $df
	ld   h, c                                        ; $56ff: $61
	ld   de, rAUD1LEN                                   ; $5700: $11 $11 $ff
	rst  $38                                         ; $5703: $ff
	ld   de, $1f11                                   ; $5704: $11 $11 $1f
	rst  $38                                         ; $5707: $ff
	db   $fd                                         ; $5708: $fd
	ld   b, c                                        ; $5709: $41
	ld   d, $5f                                      ; $570a: $16 $5f
	db   $fd                                         ; $570c: $fd
	push af                                          ; $570d: $f5
	ld   de, $1f11                                   ; $570e: $11 $11 $1f
	rst  $38                                         ; $5711: $ff
	pop  af                                          ; $5712: $f1
	ld   de, rAUD1LEN                                   ; $5713: $11 $11 $ff
	rst  $38                                         ; $5716: $ff
	call nz, Call_0d2_6611                           ; $5717: $c4 $11 $66
	rst  $38                                         ; $571a: $ff
	rst  $28                                         ; $571b: $ef
	ld   d, c                                        ; $571c: $51
	ld   de, rAUD1LEN                                   ; $571d: $11 $11 $ff
	rst  $38                                         ; $5720: $ff
	ld   d, c                                        ; $5721: $51
	ld   de, $ff1d                                   ; $5722: $11 $1d $ff
	db   $fd                                         ; $5725: $fd
	ld   d, c                                        ; $5726: $51
	ld   d, $6f                                      ; $5727: $16 $6f
	db   $fd                                         ; $5729: $fd
	rst  $30                                         ; $572a: $f7
	ld   de, $1f11                                   ; $572b: $11 $11 $1f
	rst  $38                                         ; $572e: $ff
	rst  $38                                         ; $572f: $ff
	ld   de, $af11                                   ; $5730: $11 $11 $af
	rst  $38                                         ; $5733: $ff
	push af                                          ; $5734: $f5
	ld   de, $cf38                                   ; $5735: $11 $38 $cf
	db   $fd                                         ; $5738: $fd
	pop  bc                                          ; $5739: $c1
	ld   de, $4f11                                   ; $573a: $11 $11 $4f
	rst  $38                                         ; $573d: $ff
	pop  af                                          ; $573e: $f1
	ld   de, $ff15                                   ; $573f: $11 $15 $ff
	rst  $38                                         ; $5742: $ff
	ld   h, d                                        ; $5743: $62
	ld   de, $ffb9                                   ; $5744: $11 $b9 $ff
	xor  a                                           ; $5747: $af
	ld   de, $1111                                   ; $5748: $11 $11 $11
	rst  $38                                         ; $574b: $ff
	rst  $38                                         ; $574c: $ff
	pop  bc                                          ; $574d: $c1
	ld   de, $ff1b                                   ; $574e: $11 $1b $ff
	db   $fd                                         ; $5751: $fd
	ld   sp, $9f17                                   ; $5752: $31 $17 $9f
	db   $fd                                         ; $5755: $fd
	rst  $20                                         ; $5756: $e7
	ld   de, $1211                                   ; $5757: $11 $11 $12
	rst  $38                                         ; $575a: $ff
	rst  $38                                         ; $575b: $ff
	ld   de, $1f11                                   ; $575c: $11 $11 $1f
	rst  $38                                         ; $575f: $ff
	rst  $30                                         ; $5760: $f7
	ld   hl, $cf1b                                   ; $5761: $21 $1b $cf
	db   $fd                                         ; $5764: $fd
	pop  bc                                          ; $5765: $c1
	ld   de, $1911                                   ; $5766: $11 $11 $19
	rst  $38                                         ; $5769: $ff
	rst  $38                                         ; $576a: $ff
	ld   de, $6f11                                   ; $576b: $11 $11 $6f
	rst  $38                                         ; $576e: $ff
	di                                               ; $576f: $f3
	ld   hl, $ff2d                                   ; $5770: $21 $2d $ff
	ei                                               ; $5773: $fb
	and  c                                           ; $5774: $a1
	ld   de, $1d11                                   ; $5775: $11 $11 $1d
	rst  $38                                         ; $5778: $ff
	rst  $38                                         ; $5779: $ff
	ld   de, $8f11                                   ; $577a: $11 $11 $8f
	rst  $38                                         ; $577d: $ff
	push af                                          ; $577e: $f5
	ld   hl, $ff5b                                   ; $577f: $21 $5b $ff
	db   $fd                                         ; $5782: $fd
	sub  c                                           ; $5783: $91
	ld   de, $1f11                                   ; $5784: $11 $11 $1f
	rst  $38                                         ; $5787: $ff
	rst  $38                                         ; $5788: $ff
	ld   de, $9f11                                   ; $5789: $11 $11 $9f
	rst  $38                                         ; $578c: $ff
	push hl                                          ; $578d: $e5
	ld   de, $ff4a                                   ; $578e: $11 $4a $ff
	cp   $81                                         ; $5791: $fe $81
	ld   de, $1f11                                   ; $5793: $11 $11 $1f
	rst  $38                                         ; $5796: $ff
	db   $fd                                         ; $5797: $fd
	ld   de, $bf11                                   ; $5798: $11 $11 $bf
	rst  $38                                         ; $579b: $ff
	push bc                                          ; $579c: $c5
	ld   de, $ff6b                                   ; $579d: $11 $6b $ff
	ei                                               ; $57a0: $fb
	ld   d, c                                        ; $57a1: $51
	ld   de, $2f11                                   ; $57a2: $11 $11 $2f
	rst  $38                                         ; $57a5: $ff
	db   $fd                                         ; $57a6: $fd
	ld   de, $9f11                                   ; $57a7: $11 $11 $9f
	rst  $38                                         ; $57aa: $ff
	and  $01                                         ; $57ab: $e6 $01
	ld   l, e                                        ; $57ad: $6b
	rst  $38                                         ; $57ae: $ff
	db   $fd                                         ; $57af: $fd
	ld   [hl], c                                     ; $57b0: $71
	ld   de, $1f11                                   ; $57b1: $11 $11 $1f
	rst  $38                                         ; $57b4: $ff
	cp   $11                                         ; $57b5: $fe $11
	ld   de, $ffaf                                   ; $57b7: $11 $af $ff
	push hl                                          ; $57ba: $e5
	ld   de, $ff29                                   ; $57bb: $11 $29 $ff
	rst  $38                                         ; $57be: $ff
	and  c                                           ; $57bf: $a1
	ld   de, $2e11                                   ; $57c0: $11 $11 $2e
	rst  $38                                         ; $57c3: $ff
	rst  $38                                         ; $57c4: $ff
	ld   de, $5c11                                   ; $57c5: $11 $11 $5c
	rst  $38                                         ; $57c8: $ff
	rst  $20                                         ; $57c9: $e7
	ld   sp, $ff2a                                   ; $57ca: $31 $2a $ff
	rst  $38                                         ; $57cd: $ff
	and  c                                           ; $57ce: $a1
	ld   de, $1411                                   ; $57cf: $11 $11 $14
	adc  a                                           ; $57d2: $8f
	rst  $38                                         ; $57d3: $ff
	ldh  a, [c]                                      ; $57d4: $f2
	ld   de, $af12                                   ; $57d5: $11 $12 $af
	rst  $38                                         ; $57d8: $ff
	and  l                                           ; $57d9: $a5
	ld   de, $ff7a                                   ; $57da: $11 $7a $ff
	cp   $51                                         ; $57dd: $fe $51
	ld   de, $1511                                   ; $57df: $11 $11 $15
	rst  $38                                         ; $57e2: $ff
	rst  $38                                         ; $57e3: $ff
	pop  bc                                          ; $57e4: $c1
	ld   de, $ff17                                   ; $57e5: $11 $17 $ff
	cp   $81                                         ; $57e8: $fe $81
	inc  de                                          ; $57ea: $13
	ld   e, l                                        ; $57eb: $5d
	rst  $38                                         ; $57ec: $ff
	db   $eb                                         ; $57ed: $eb
	ld   a, b                                        ; $57ee: $78
	ld   b, c                                        ; $57ef: $41
	ld   de, $cf11                                   ; $57f0: $11 $11 $cf
	rst  $38                                         ; $57f3: $ff
	db   $e4                                         ; $57f4: $e4
	ld   de, $cf16                                   ; $57f5: $11 $16 $cf
	ld   a, [$1661]                                  ; $57f8: $fa $61 $16
	rst  JumpTable                                         ; $57fb: $df
	rst  $38                                         ; $57fc: $ff
	and  $11                                         ; $57fd: $e6 $11
	ld   de, $4611                                   ; $57ff: $11 $11 $46
	rst  $38                                         ; $5802: $ff
	rst  $38                                         ; $5803: $ff
	ld   d, c                                        ; $5804: $51
	ld   de, $ff19                                   ; $5805: $11 $19 $ff
	ld   sp, hl                                      ; $5808: $f9
	ld   h, c                                        ; $5809: $61
	rla                                              ; $580a: $17
	sbc  a                                           ; $580b: $9f
	cp   $d8                                         ; $580c: $fe $d8
	ld   c, b                                        ; $580e: $48
	ld   d, h                                        ; $580f: $54
	ld   de, $7f11                                   ; $5810: $11 $11 $7f
	rst  $38                                         ; $5813: $ff
	or   $11                                         ; $5814: $f6 $11
	ld   de, $ff9f                                   ; $5816: $11 $9f $ff
	call nc, $3b11                                   ; $5819: $d4 $11 $3b
	rst  $38                                         ; $581c: $ff
	jp   hl                                          ; $581d: $e9


	dec  [hl]                                        ; $581e: $35
	ld   l, e                                        ; $581f: $6b
	ei                                               ; $5820: $fb
	add  c                                           ; $5821: $81
	ld   de, rAUD1HIGH                                   ; $5822: $11 $14 $ff
	rst  $38                                         ; $5825: $ff
	jp   nz, $1411                                   ; $5826: $c2 $11 $14

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5829: $cf
	rst  $38                                         ; $582a: $ff
	and  h                                           ; $582b: $a4
	dec  [hl]                                        ; $582c: $35
	sbc  [hl]                                        ; $582d: $9e
	db   $fd                                         ; $582e: $fd
	and  h                                           ; $582f: $a4
	ld   b, a                                        ; $5830: $47
	cp   l                                           ; $5831: $bd
	ld   [hl], c                                     ; $5832: $71
	ld   de, $ff1f                                   ; $5833: $11 $1f $ff
	ei                                               ; $5836: $fb
	ld   sp, $2f11                                   ; $5837: $31 $11 $2f
	rst  $38                                         ; $583a: $ff
	ld   hl, sp+$11                                  ; $583b: $f8 $11
	ld   [de], a                                     ; $583d: $12
	rst  JumpTable                                         ; $583e: $df
	db   $fd                                         ; $583f: $fd
	ld   b, d                                        ; $5840: $42
	inc  de                                          ; $5841: $13
	rst  JumpTable                                         ; $5842: $df
	rst  $38                                         ; $5843: $ff
	or   h                                           ; $5844: $b4
	ld   de, $8d11                                   ; $5845: $11 $11 $8d
	res  6, [hl]                                     ; $5848: $cb $b6
	call c, $33bf                                    ; $584a: $dc $bf $33
	ld   de, $ef58                                   ; $584d: $11 $58 $ef
	db   $fd                                         ; $5850: $fd
	and  c                                           ; $5851: $a1
	ld   de, $ef3c                                   ; $5852: $11 $3c $ef
	ei                                               ; $5855: $fb
	ld   [hl], h                                     ; $5856: $74
	dec  d                                           ; $5857: $15
	ld   h, a                                        ; $5858: $67
	ld   [hl], e                                     ; $5859: $73
	ld   d, l                                        ; $585a: $55
	sbc  a                                           ; $585b: $9f
	rst  $38                                         ; $585c: $ff
	db   $e4                                         ; $585d: $e4
	ld   de, $af12                                   ; $585e: $11 $12 $af
	rst  $38                                         ; $5861: $ff
	or   e                                           ; $5862: $b3
	ld   de, $ff5c                                   ; $5863: $11 $5c $ff
	or   l                                           ; $5866: $b5
	ld   de, $ef28                                   ; $5867: $11 $28 $ef
	db   $fc                                         ; $586a: $fc
	ld   h, d                                        ; $586b: $62
	ld   de, $ef48                                   ; $586c: $11 $48 $ef
	rst  $38                                         ; $586f: $ff
	sub  c                                           ; $5870: $91
	ld   de, $8f16                                   ; $5871: $11 $16 $8f
	db   $fd                                         ; $5874: $fd
	ret  z                                           ; $5875: $c8

	ld   d, [hl]                                     ; $5876: $56
	ld   d, l                                        ; $5877: $55
	add  a                                           ; $5878: $87
	sbc  d                                           ; $5879: $9a
	sbc  h                                           ; $587a: $9c
	sbc  c                                           ; $587b: $99
	sub  [hl]                                        ; $587c: $96
	halt                                             ; $587d: $76
	ld   e, c                                        ; $587e: $59
	adc  d                                           ; $587f: $8a
	cp   d                                           ; $5880: $ba
	and  [hl]                                        ; $5881: $a6
	ld   [hl], $4a                                   ; $5882: $36 $4a
	db   $ec                                         ; $5884: $ec
	ld   sp, hl                                      ; $5885: $f9
	ld   hl, $4911                                   ; $5886: $21 $11 $49
	rst  $38                                         ; $5889: $ff
	cp   $54                                         ; $588a: $fe $54
	ld   de, $de58                                   ; $588c: $11 $58 $de
	db   $db                                         ; $588f: $db
	ld   [hl], l                                     ; $5890: $75
	ld   b, l                                        ; $5891: $45
	ld   a, c                                        ; $5892: $79
	sbc  e                                           ; $5893: $9b
	sub  a                                           ; $5894: $97
	ld   [hl], a                                     ; $5895: $77
	ld   a, c                                        ; $5896: $79
	sbc  d                                           ; $5897: $9a
	sub  a                                           ; $5898: $97
	ld   h, h                                        ; $5899: $64
	ld   h, [hl]                                     ; $589a: $66
	xor  [hl]                                        ; $589b: $ae
	rst  $28                                         ; $589c: $ef
	and  l                                           ; $589d: $a5
	ld   de, $ac25                                   ; $589e: $11 $25 $ac
	call z, $8586                                    ; $58a1: $cc $86 $85
	cp   d                                           ; $58a4: $ba
	ld   a, e                                        ; $58a5: $7b
	ld   [hl], $66                                   ; $58a6: $36 $66
	cp   e                                           ; $58a8: $bb
	call c, $4297                                    ; $58a9: $dc $97 $42
	ld   h, a                                        ; $58ac: $67
	xor  l                                           ; $58ad: $ad
	jp   z, Jump_0d2_4474                            ; $58ae: $ca $74 $44

	ld   l, d                                        ; $58b1: $6a
	xor  e                                           ; $58b2: $ab
	sub  [hl]                                        ; $58b3: $96
	ld   d, h                                        ; $58b4: $54
	adc  e                                           ; $58b5: $8b
	sbc  $a7                                         ; $58b6: $de $a7
	ld   sp, $ae24                                   ; $58b8: $31 $24 $ae
	db   $fc                                         ; $58bb: $fc
	sub  l                                           ; $58bc: $95
	dec  h                                           ; $58bd: $25
	ld   e, c                                        ; $58be: $59
	ld   [$35c6], a                                  ; $58bf: $ea $c6 $35
	add  hl, sp                                      ; $58c2: $39
	cp   e                                           ; $58c3: $bb
	jp   hl                                          ; $58c4: $e9


	ld   [hl], l                                     ; $58c5: $75
	dec  h                                           ; $58c6: $25
	ld   a, c                                        ; $58c7: $79
	db   $db                                         ; $58c8: $db
	cp   c                                           ; $58c9: $b9
	ld   h, l                                        ; $58ca: $65
	ld   d, h                                        ; $58cb: $54
	adc  c                                           ; $58cc: $89
	sbc  h                                           ; $58cd: $9c
	sbc  b                                           ; $58ce: $98
	sub  l                                           ; $58cf: $95
	sub  a                                           ; $58d0: $97
	adc  e                                           ; $58d1: $8b
	adc  d                                           ; $58d2: $8a
	add  l                                           ; $58d3: $85
	ld   [hl], l                                     ; $58d4: $75
	ld   a, c                                        ; $58d5: $79
	adc  h                                           ; $58d6: $8c
	xor  c                                           ; $58d7: $a9
	add  [hl]                                        ; $58d8: $86
	ld   h, l                                        ; $58d9: $65
	ld   e, b                                        ; $58da: $58
	sbc  e                                           ; $58db: $9b
	cp   c                                           ; $58dc: $b9
	xor  b                                           ; $58dd: $a8
	ld   a, b                                        ; $58de: $78
	ld   h, a                                        ; $58df: $67
	halt                                             ; $58e0: $76
	ld   [hl], a                                     ; $58e1: $77
	sbc  c                                           ; $58e2: $99
	sbc  e                                           ; $58e3: $9b
	add  a                                           ; $58e4: $87
	ld   h, h                                        ; $58e5: $64
	ld   d, [hl]                                     ; $58e6: $56
	adc  e                                           ; $58e7: $8b
	res  6, a                                        ; $58e8: $cb $b7
	ld   d, [hl]                                     ; $58ea: $56
	ld   b, a                                        ; $58eb: $47
	adc  c                                           ; $58ec: $89
	cp   c                                           ; $58ed: $b9
	sub  a                                           ; $58ee: $97
	ld   h, a                                        ; $58ef: $67
	ld   a, c                                        ; $58f0: $79
	xor  d                                           ; $58f1: $aa
	sbc  b                                           ; $58f2: $98
	ld   h, [hl]                                     ; $58f3: $66
	ld   h, a                                        ; $58f4: $67
	sbc  d                                           ; $58f5: $9a
	xor  c                                           ; $58f6: $a9
	sub  a                                           ; $58f7: $97
	ld   h, [hl]                                     ; $58f8: $66
	ld   a, b                                        ; $58f9: $78
	sbc  d                                           ; $58fa: $9a
	sbc  c                                           ; $58fb: $99
	add  a                                           ; $58fc: $87
	ld   h, a                                        ; $58fd: $67
	ld   a, c                                        ; $58fe: $79
	adc  b                                           ; $58ff: $88
	sub  a                                           ; $5900: $97
	ld   [hl], a                                     ; $5901: $77
	ld   a, b                                        ; $5902: $78
	sbc  c                                           ; $5903: $99
	sbc  b                                           ; $5904: $98
	add  a                                           ; $5905: $87
	ld   a, b                                        ; $5906: $78
	adc  b                                           ; $5907: $88
	adc  b                                           ; $5908: $88
	add  a                                           ; $5909: $87
	ld   [hl], a                                     ; $590a: $77
	adc  c                                           ; $590b: $89
	adc  b                                           ; $590c: $88
	add  a                                           ; $590d: $87
	ld   [hl], a                                     ; $590e: $77
	ld   a, b                                        ; $590f: $78
	adc  b                                           ; $5910: $88
	sbc  c                                           ; $5911: $99
	sbc  c                                           ; $5912: $99
	ld   [hl], a                                     ; $5913: $77
	ld   h, a                                        ; $5914: $67
	ld   a, b                                        ; $5915: $78
	sbc  c                                           ; $5916: $99
	sbc  b                                           ; $5917: $98
	adc  b                                           ; $5918: $88
	ld   [hl], a                                     ; $5919: $77
	ld   [hl], a                                     ; $591a: $77
	adc  b                                           ; $591b: $88
	sbc  c                                           ; $591c: $99
	sbc  c                                           ; $591d: $99
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
	sbc  c                                           ; $5929: $99
	adc  b                                           ; $592a: $88
	add  a                                           ; $592b: $87
	add  a                                           ; $592c: $87
	adc  b                                           ; $592d: $88
	adc  c                                           ; $592e: $89
	adc  b                                           ; $592f: $88
	adc  b                                           ; $5930: $88
	adc  b                                           ; $5931: $88
	adc  b                                           ; $5932: $88
	ld   a, b                                        ; $5933: $78
	adc  b                                           ; $5934: $88
	sbc  c                                           ; $5935: $99
	sbc  b                                           ; $5936: $98
	adc  b                                           ; $5937: $88
	adc  b                                           ; $5938: $88
	adc  b                                           ; $5939: $88
	sbc  c                                           ; $593a: $99
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
	add  c                                           ; $594d: $81
	ld   de, $1111                                   ; $594e: $11 $11 $11
	ld   de, $1111                                   ; $5951: $11 $11 $11
	ld   de, $1111                                   ; $5954: $11 $11 $11
	ld   de, $1111                                   ; $5957: $11 $11 $11
	ld   de, $1111                                   ; $595a: $11 $11 $11
	ld   de, $1111                                   ; $595d: $11 $11 $11
	ld   de, $0011                                   ; $5960: $11 $11 $00
	ld   c, b                                        ; $5963: $48
	ld   de, $1111                                   ; $5964: $11 $11 $11
	ld   de, $1111                                   ; $5967: $11 $11 $11
	ld   de, $1111                                   ; $596a: $11 $11 $11
	ld   de, $5413                                   ; $596d: $11 $13 $54
	ld   d, h                                        ; $5970: $54
	ld   d, h                                        ; $5971: $54
	ld   b, c                                        ; $5972: $41
	rra                                              ; $5973: $1f
	rst  $38                                         ; $5974: $ff
	pop  af                                          ; $5975: $f1
	ld   de, $1311                                   ; $5976: $11 $11 $13
	pop  bc                                          ; $5979: $c1
	ld   de, $d11c                                   ; $597a: $11 $1c $d1
	db   $fc                                         ; $597d: $fc
	pop  de                                          ; $597e: $d1
	pop  af                                          ; $597f: $f1
	ld   de, $1111                                   ; $5980: $11 $11 $11
	ld   de, $1111                                   ; $5983: $11 $11 $11
	ld   de, $1111                                   ; $5986: $11 $11 $11
	ld   de, $1111                                   ; $5989: $11 $11 $11
	ld   de, $5411                                   ; $598c: $11 $11 $54
	ld   b, h                                        ; $598f: $44
	or   e                                           ; $5990: $b3
	ld   de, $5454                                   ; $5991: $11 $54 $54
	ld   h, a                                        ; $5994: $67
	ld   [hl], d                                     ; $5995: $72
	ld   de, $1111                                   ; $5996: $11 $11 $11
	ld   de, $1112                                   ; $5999: $11 $12 $11
	ld   [de], a                                     ; $599c: $12
	ld   de, $1111                                   ; $599d: $11 $11 $11
	ld   h, [hl]                                     ; $59a0: $66
	halt                                             ; $59a1: $76
	and  e                                           ; $59a2: $a3
	ld   de, $9b88                                   ; $59a3: $11 $88 $9b
	adc  c                                           ; $59a6: $89
	jp   c, $979c                                    ; $59a7: $da $9c $97

	sbc  d                                           ; $59aa: $9a
	cp   h                                           ; $59ab: $bc
	ld   l, b                                        ; $59ac: $68
	and  [hl]                                        ; $59ad: $a6
	sbc  e                                           ; $59ae: $9b
	sbc  d                                           ; $59af: $9a
	sbc  d                                           ; $59b0: $9a
	jp   z, Jump_0d2_7677                            ; $59b1: $ca $77 $76

	ld   [hl], a                                     ; $59b4: $77
	ld   h, e                                        ; $59b5: $63
	inc  hl                                          ; $59b6: $23
	ld   [hl-], a                                    ; $59b7: $32
	inc  hl                                          ; $59b8: $23
	dec  [hl]                                        ; $59b9: $35
	ld   d, a                                        ; $59ba: $57
	sbc  h                                           ; $59bb: $9c
	adc  $ff                                         ; $59bc: $ce $ff
	rst  $38                                         ; $59be: $ff
	rst  $38                                         ; $59bf: $ff
	call c, $87a7                                    ; $59c0: $dc $a7 $87
	ld   h, [hl]                                     ; $59c3: $66
	ld   d, l                                        ; $59c4: $55
	ld   b, h                                        ; $59c5: $44
	ld   b, h                                        ; $59c6: $44
	inc  sp                                          ; $59c7: $33
	ld   h, [hl]                                     ; $59c8: $66
	ld   d, [hl]                                     ; $59c9: $56
	sbc  d                                           ; $59ca: $9a
	cp   d                                           ; $59cb: $ba
	adc  $fd                                         ; $59cc: $ce $fd
	xor  $dc                                         ; $59ce: $ee $dc
	cp   d                                           ; $59d0: $ba
	sbc  b                                           ; $59d1: $98
	ld   h, [hl]                                     ; $59d2: $66
	ld   h, l                                        ; $59d3: $65
	ld   b, h                                        ; $59d4: $44
	ld   d, l                                        ; $59d5: $55
	ld   b, h                                        ; $59d6: $44
	ld   [hl-], a                                    ; $59d7: $32
	ld   [de], a                                     ; $59d8: $12
	and  [hl]                                        ; $59d9: $a6
	add  hl, de                                      ; $59da: $19
	cp   h                                           ; $59db: $bc
	cp   h                                           ; $59dc: $bc
	rst  $38                                         ; $59dd: $ff
	db   $fd                                         ; $59de: $fd
	rst  $38                                         ; $59df: $ff
	ld   [$76a9], a                                  ; $59e0: $ea $a9 $76
	ld   b, [hl]                                     ; $59e3: $46
	ld   [hl], l                                     ; $59e4: $75
	ld   b, a                                        ; $59e5: $47
	sbc  b                                           ; $59e6: $98
	sub  a                                           ; $59e7: $97
	ld   h, l                                        ; $59e8: $65
	ld   sp, $1811                                   ; $59e9: $31 $11 $18
	ld   bc, $ac8c                                   ; $59ec: $01 $8c $ac
	rst  $38                                         ; $59ef: $ff
	rst  $38                                         ; $59f0: $ff
	rst  $38                                         ; $59f1: $ff
	rst  $38                                         ; $59f2: $ff
	cp   e                                           ; $59f3: $bb
	sub  [hl]                                        ; $59f4: $96
	ld   d, e                                        ; $59f5: $53
	ld   d, [hl]                                     ; $59f6: $56
	ld   b, e                                        ; $59f7: $43
	adc  c                                           ; $59f8: $89
	ld   a, b                                        ; $59f9: $78
	ld   [hl], h                                     ; $59fa: $74
	ld   de, $1b11                                   ; $59fb: $11 $11 $1b
	ld   de, $efcd                                   ; $59fe: $11 $cd $ef
	rst  $38                                         ; $5a01: $ff
	rst  $38                                         ; $5a02: $ff
	rst  $38                                         ; $5a03: $ff
	ei                                               ; $5a04: $fb
	ld   l, b                                        ; $5a05: $68
	ld   d, c                                        ; $5a06: $51
	ld   de, $4767                                   ; $5a07: $11 $67 $47
	rst  $38                                         ; $5a0a: $ff
	sbc  $ba                                         ; $5a0b: $de $ba
	ld   [hl], c                                     ; $5a0d: $71
	ld   de, $5111                                   ; $5a0e: $11 $11 $51
	inc  de                                          ; $5a11: $13
	rst  $38                                         ; $5a12: $ff
	rst  $38                                         ; $5a13: $ff
	rst  $38                                         ; $5a14: $ff
	rst  $38                                         ; $5a15: $ff
	rst  $38                                         ; $5a16: $ff
	pop  de                                          ; $5a17: $d1
	inc  sp                                          ; $5a18: $33
	ld   de, $9713                                   ; $5a19: $11 $13 $97
	adc  a                                           ; $5a1c: $8f
	rst  $38                                         ; $5a1d: $ff
	rst  $38                                         ; $5a1e: $ff
	reti                                             ; $5a1f: $d9


	ld   hl, $1111                                   ; $5a20: $21 $11 $11
	ld   h, c                                        ; $5a23: $61
	rra                                              ; $5a24: $1f
	rst  $38                                         ; $5a25: $ff
	rst  $38                                         ; $5a26: $ff
	rst  $38                                         ; $5a27: $ff
	rst  $38                                         ; $5a28: $ff
	rst  $38                                         ; $5a29: $ff
	ld   de, $1111                                   ; $5a2a: $11 $11 $11
	add  hl, hl                                      ; $5a2d: $29
	sbc  l                                           ; $5a2e: $9d
	rst  $38                                         ; $5a2f: $ff
	rst  $38                                         ; $5a30: $ff
	rst  $38                                         ; $5a31: $ff
	or   l                                           ; $5a32: $b5
	ld   de, $1111                                   ; $5a33: $11 $11 $11
	sub  c                                           ; $5a36: $91
	rra                                              ; $5a37: $1f
	rst  $38                                         ; $5a38: $ff
	rst  $38                                         ; $5a39: $ff
	rst  $38                                         ; $5a3a: $ff
	rst  $38                                         ; $5a3b: $ff
	ld   hl, sp+$11                                  ; $5a3c: $f8 $11
	ld   de, $7d11                                   ; $5a3e: $11 $11 $7d
	rst  JumpTable                                         ; $5a41: $df
	rst  $38                                         ; $5a42: $ff
	rst  $38                                         ; $5a43: $ff
	rst  $38                                         ; $5a44: $ff
	ld   [hl], e                                     ; $5a45: $73
	ld   de, $1111                                   ; $5a46: $11 $11 $11
	add  c                                           ; $5a49: $81
	rra                                              ; $5a4a: $1f
	rst  $38                                         ; $5a4b: $ff
	rst  $38                                         ; $5a4c: $ff
	rst  $38                                         ; $5a4d: $ff
	ei                                               ; $5a4e: $fb
	db   $fd                                         ; $5a4f: $fd
	ld   de, $1111                                   ; $5a50: $11 $11 $11
	xor  a                                           ; $5a53: $af
	rst  $38                                         ; $5a54: $ff
	rst  $38                                         ; $5a55: $ff
	rst  $38                                         ; $5a56: $ff
	rst  $38                                         ; $5a57: $ff
	ld   d, c                                        ; $5a58: $51
	ld   de, $1111                                   ; $5a59: $11 $11 $11
	rra                                              ; $5a5c: $1f
	ld   de, $ffff                                   ; $5a5d: $11 $ff $ff
	rst  $38                                         ; $5a60: $ff
	db   $fc                                         ; $5a61: $fc
	xor  a                                           ; $5a62: $af
	ld   de, $1111                                   ; $5a63: $11 $11 $11
	adc  a                                           ; $5a66: $8f
	rst  $38                                         ; $5a67: $ff
	rst  $38                                         ; $5a68: $ff
	rst  $38                                         ; $5a69: $ff
	rst  $38                                         ; $5a6a: $ff
	add  d                                           ; $5a6b: $82
	ld   de, $1111                                   ; $5a6c: $11 $11 $11
	ld   de, $1ff1                                   ; $5a6f: $11 $f1 $1f
	rst  $38                                         ; $5a72: $ff
	rst  $38                                         ; $5a73: $ff
	db   $fc                                         ; $5a74: $fc
	sub  a                                           ; $5a75: $97
	pop  de                                          ; $5a76: $d1
	ld   de, $1c11                                   ; $5a77: $11 $11 $1c
	rst  $38                                         ; $5a7a: $ff
	rst  $38                                         ; $5a7b: $ff
	rst  $38                                         ; $5a7c: $ff
	rst  $38                                         ; $5a7d: $ff
	rst  $30                                         ; $5a7e: $f7
	ld   [hl+], a                                    ; $5a7f: $22
	ld   de, $1111                                   ; $5a80: $11 $11 $11
	ld   d, $f1                                      ; $5a83: $16 $f1
	rst  $38                                         ; $5a85: $ff
	rst  $38                                         ; $5a86: $ff
	rst  $38                                         ; $5a87: $ff
	ld   hl, sp-$77                                  ; $5a88: $f8 $89
	and  c                                           ; $5a8a: $a1
	ld   [de], a                                     ; $5a8b: $12

jr_0d2_5a8c:
	ld   de, $ef1f                                   ; $5a8c: $11 $1f $ef
	rst  $38                                         ; $5a8f: $ff
	rst  $38                                         ; $5a90: $ff
	rst  $38                                         ; $5a91: $ff
	db   $f4                                         ; $5a92: $f4
	ld   d, e                                        ; $5a93: $53
	ld   de, $1111                                   ; $5a94: $11 $11 $11
	ld   de, $1ff1                                   ; $5a97: $11 $f1 $1f
	ei                                               ; $5a9a: $fb
	rst  $38                                         ; $5a9b: $ff
	db   $f4                                         ; $5a9c: $f4
	cp   c                                           ; $5a9d: $b9
	pop  hl                                          ; $5a9e: $e1
	jr   jr_0d2_5ab2                                 ; $5a9f: $18 $11

	rra                                              ; $5aa1: $1f
	call $ffff                                       ; $5aa2: $cd $ff $ff
	rst  $38                                         ; $5aa5: $ff
	rst  $30                                         ; $5aa6: $f7
	ld   h, a                                        ; $5aa7: $67
	ld   de, $1111                                   ; $5aa8: $11 $11 $11
	ld   de, $1faf                                   ; $5aab: $11 $af $1f
	cp   $df                                         ; $5aae: $fe $df
	ei                                               ; $5ab0: $fb
	xor  a                                           ; $5ab1: $af

jr_0d2_5ab2:
	push hl                                          ; $5ab2: $e5
	rla                                              ; $5ab3: $17
	ld   d, c                                        ; $5ab4: $51
	jr   jr_0d2_5a8c                                 ; $5ab5: $18 $d5

	rst  $38                                         ; $5ab7: $ff
	rst  $38                                         ; $5ab8: $ff
	rst  $38                                         ; $5ab9: $ff
	db   $fc                                         ; $5aba: $fc
	sbc  h                                           ; $5abb: $9c
	ld   b, c                                        ; $5abc: $41
	ld   de, $1111                                   ; $5abd: $11 $11 $11
	dec  d                                           ; $5ac0: $15
	pop  af                                          ; $5ac1: $f1
	rst  JumpTable                                         ; $5ac2: $df
	db   $db                                         ; $5ac3: $db
	rst  $38                                         ; $5ac4: $ff
	cp   l                                           ; $5ac5: $bd
	rst  $38                                         ; $5ac6: $ff
	ld   h, c                                        ; $5ac7: $61
	jp   $6711                                       ; $5ac8: $c3 $11 $67


	dec  l                                           ; $5acb: $2d
	rst  $38                                         ; $5acc: $ff
	rst  $38                                         ; $5acd: $ff
	rst  $38                                         ; $5ace: $ff
	cp   $c5                                         ; $5acf: $fe $c5
	ld   de, $1111                                   ; $5ad1: $11 $11 $11
	ld   de, $111f                                   ; $5ad4: $11 $1f $11
	rst  $38                                         ; $5ad7: $ff

Jump_0d2_5ad8:
	ld   e, a                                        ; $5ad8: $5f
	rst  $38                                         ; $5ad9: $ff
	ld   l, a                                        ; $5ada: $6f
	cp   $48                                         ; $5adb: $fe $48
	pop  de                                          ; $5add: $d1
	ld   de, $3d61                                   ; $5ade: $11 $61 $3d
	cp   $ff                                         ; $5ae1: $fe $ff
	rst  $38                                         ; $5ae3: $ff
	rst  $38                                         ; $5ae4: $ff
	push bc                                          ; $5ae5: $c5
	ld   d, d                                        ; $5ae6: $52
	ld   de, $1111                                   ; $5ae7: $11 $11 $11
	ld   e, $11                                      ; $5aea: $1e $11
	rst  $38                                         ; $5aec: $ff
	cpl                                              ; $5aed: $2f
	rst  $38                                         ; $5aee: $ff
	sbc  a                                           ; $5aef: $9f
	ld   a, [$a1bf]                                  ; $5af0: $fa $bf $a1
	ld   b, l                                        ; $5af3: $45
	ld   hl, $854a                                   ; $5af4: $21 $4a $85
	rst  $28                                         ; $5af7: $ef
	cp   l                                           ; $5af8: $bd
	rst  $38                                         ; $5af9: $ff
	sbc  c                                           ; $5afa: $99
	sub  h                                           ; $5afb: $94
	ld   de, $1111                                   ; $5afc: $11 $11 $11
	dec  d                                           ; $5aff: $15
	ld   de, $1ff6                                   ; $5b00: $11 $f6 $1f
	ei                                               ; $5b03: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b04: $cf
	ei                                               ; $5b05: $fb
	rst  $38                                         ; $5b06: $ff
	or   a                                           ; $5b07: $b7
	reti                                             ; $5b08: $d9


	inc  sp                                          ; $5b09: $33
	ld   h, h                                        ; $5b0a: $64
	inc  [hl]                                        ; $5b0b: $34
	ld   a, d                                        ; $5b0c: $7a
	ld   a, d                                        ; $5b0d: $7a
	res  3, d                                        ; $5b0e: $cb $9a
	and  l                                           ; $5b10: $a5
	ld   h, a                                        ; $5b11: $67
	ld   sp, $1111                                   ; $5b12: $31 $11 $11
	ld   h, c                                        ; $5b15: $61
	ld   a, [de]                                     ; $5b16: $1a
	ld   d, c                                        ; $5b17: $51
	ld   a, a                                        ; $5b18: $7f
	and  a                                           ; $5b19: $a7
	rst  $38                                         ; $5b1a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b1b: $cf
	rst  $38                                         ; $5b1c: $ff
	sbc  l                                           ; $5b1d: $9d
	reti                                             ; $5b1e: $d9


	sbc  d                                           ; $5b1f: $9a
	sub  [hl]                                        ; $5b20: $96
	ld   l, b                                        ; $5b21: $68
	add  [hl]                                        ; $5b22: $86
	ld   a, c                                        ; $5b23: $79
	sub  [hl]                                        ; $5b24: $96
	adc  b                                           ; $5b25: $88
	halt                                             ; $5b26: $76
	ld   [hl], a                                     ; $5b27: $77
	halt                                             ; $5b28: $76
	ld   h, a                                        ; $5b29: $67
	ld   [hl], l                                     ; $5b2a: $75
	ld   b, l                                        ; $5b2b: $45
	ld   h, a                                        ; $5b2c: $67
	ld   b, d                                        ; $5b2d: $42
	halt                                             ; $5b2e: $76
	dec  h                                           ; $5b2f: $25
	sub  a                                           ; $5b30: $97
	ld   c, c                                        ; $5b31: $49
	rst  ToBoot                                         ; $5b32: $c7
	sbc  l                                           ; $5b33: $9d
	ret                                              ; $5b34: $c9


	db   $dd                                         ; $5b35: $dd
	xor  d                                           ; $5b36: $aa
	ret                                              ; $5b37: $c9


	adc  c                                           ; $5b38: $89
	sub  a                                           ; $5b39: $97
	adc  b                                           ; $5b3a: $88
	adc  b                                           ; $5b3b: $88
	adc  b                                           ; $5b3c: $88
	adc  c                                           ; $5b3d: $89
	sbc  b                                           ; $5b3e: $98
	sbc  b                                           ; $5b3f: $98
	adc  b                                           ; $5b40: $88
	adc  b                                           ; $5b41: $88
	adc  b                                           ; $5b42: $88
	add  a                                           ; $5b43: $87
	add  a                                           ; $5b44: $87
	ld   h, a                                        ; $5b45: $67
	halt                                             ; $5b46: $76
	ld   h, a                                        ; $5b47: $67
	ld   h, [hl]                                     ; $5b48: $66
	ld   [hl], a                                     ; $5b49: $77
	ld   h, [hl]                                     ; $5b4a: $66
	halt                                             ; $5b4b: $76
	ld   h, a                                        ; $5b4c: $67
	ld   [hl], a                                     ; $5b4d: $77
	adc  b                                           ; $5b4e: $88
	adc  b                                           ; $5b4f: $88
	sbc  b                                           ; $5b50: $98
	adc  c                                           ; $5b51: $89
	xor  b                                           ; $5b52: $a8
	sbc  c                                           ; $5b53: $99
	sbc  b                                           ; $5b54: $98
	sbc  c                                           ; $5b55: $99
	sbc  c                                           ; $5b56: $99
	xor  c                                           ; $5b57: $a9
	adc  d                                           ; $5b58: $8a
	xor  b                                           ; $5b59: $a8
	adc  b                                           ; $5b5a: $88
	sbc  b                                           ; $5b5b: $98
	adc  b                                           ; $5b5c: $88
	sbc  b                                           ; $5b5d: $98
	ld   a, b                                        ; $5b5e: $78
	ld   [hl], a                                     ; $5b5f: $77
	ld   [hl], a                                     ; $5b60: $77
	ld   a, b                                        ; $5b61: $78
	ld   [hl], a                                     ; $5b62: $77
	ld   a, b                                        ; $5b63: $78
	ld   [hl], a                                     ; $5b64: $77
	ld   a, b                                        ; $5b65: $78
	ld   [hl], a                                     ; $5b66: $77
	ld   [hl], a                                     ; $5b67: $77
	ld   [hl], a                                     ; $5b68: $77
	ld   [hl], a                                     ; $5b69: $77
	adc  b                                           ; $5b6a: $88
	adc  b                                           ; $5b6b: $88
	adc  c                                           ; $5b6c: $89
	sbc  c                                           ; $5b6d: $99
	sbc  c                                           ; $5b6e: $99
	sbc  b                                           ; $5b6f: $98
	sbc  b                                           ; $5b70: $98
	adc  c                                           ; $5b71: $89
	add  a                                           ; $5b72: $87
	ld   a, b                                        ; $5b73: $78
	ld   [hl], a                                     ; $5b74: $77
	ld   a, b                                        ; $5b75: $78
	ld   [hl], a                                     ; $5b76: $77
	ld   [hl], a                                     ; $5b77: $77
	ld   [hl], a                                     ; $5b78: $77
	ld   [hl], a                                     ; $5b79: $77
	ld   [hl], a                                     ; $5b7a: $77
	ld   [hl], a                                     ; $5b7b: $77
	ld   [hl], a                                     ; $5b7c: $77
	ld   [hl], a                                     ; $5b7d: $77
	ld   a, b                                        ; $5b7e: $78
	adc  c                                           ; $5b7f: $89
	sbc  b                                           ; $5b80: $98
	sbc  b                                           ; $5b81: $98
	adc  c                                           ; $5b82: $89
	adc  b                                           ; $5b83: $88
	sbc  c                                           ; $5b84: $99
	adc  c                                           ; $5b85: $89
	sbc  b                                           ; $5b86: $98
	adc  c                                           ; $5b87: $89
	adc  b                                           ; $5b88: $88
	adc  b                                           ; $5b89: $88
	adc  b                                           ; $5b8a: $88
	adc  b                                           ; $5b8b: $88
	ld   [hl], a                                     ; $5b8c: $77
	ld   [hl], a                                     ; $5b8d: $77
	ld   [hl], a                                     ; $5b8e: $77
	ld   [hl], a                                     ; $5b8f: $77
	ld   [hl], a                                     ; $5b90: $77
	ld   a, b                                        ; $5b91: $78
	add  a                                           ; $5b92: $87
	adc  b                                           ; $5b93: $88
	adc  b                                           ; $5b94: $88
	sbc  c                                           ; $5b95: $99
	adc  b                                           ; $5b96: $88
	sbc  b                                           ; $5b97: $98
	adc  b                                           ; $5b98: $88
	adc  b                                           ; $5b99: $88
	adc  c                                           ; $5b9a: $89
	adc  b                                           ; $5b9b: $88
	sbc  b                                           ; $5b9c: $98
	adc  c                                           ; $5b9d: $89
	adc  b                                           ; $5b9e: $88
	sbc  c                                           ; $5b9f: $99
	adc  b                                           ; $5ba0: $88
	adc  b                                           ; $5ba1: $88
	ld   [hl], a                                     ; $5ba2: $77
	add  a                                           ; $5ba3: $87
	ld   a, b                                        ; $5ba4: $78
	ld   [hl], a                                     ; $5ba5: $77
	adc  b                                           ; $5ba6: $88
	ld   a, b                                        ; $5ba7: $78
	adc  c                                           ; $5ba8: $89
	adc  c                                           ; $5ba9: $89
	sbc  b                                           ; $5baa: $98
	adc  b                                           ; $5bab: $88
	adc  b                                           ; $5bac: $88
	adc  b                                           ; $5bad: $88
	sbc  c                                           ; $5bae: $99
	adc  c                                           ; $5baf: $89
	adc  c                                           ; $5bb0: $89
	sbc  b                                           ; $5bb1: $98
	adc  c                                           ; $5bb2: $89
	adc  c                                           ; $5bb3: $89
	sbc  b                                           ; $5bb4: $98
	adc  b                                           ; $5bb5: $88
	adc  b                                           ; $5bb6: $88
	adc  b                                           ; $5bb7: $88
	adc  b                                           ; $5bb8: $88
	adc  b                                           ; $5bb9: $88
	ld   [hl], a                                     ; $5bba: $77
	adc  b                                           ; $5bbb: $88
	ld   a, b                                        ; $5bbc: $78
	add  a                                           ; $5bbd: $87
	ld   a, b                                        ; $5bbe: $78
	ld   [hl], a                                     ; $5bbf: $77
	adc  b                                           ; $5bc0: $88
	ld   a, b                                        ; $5bc1: $78
	adc  b                                           ; $5bc2: $88
	adc  c                                           ; $5bc3: $89
	sbc  c                                           ; $5bc4: $99
	sbc  c                                           ; $5bc5: $99
	adc  c                                           ; $5bc6: $89
	sbc  c                                           ; $5bc7: $99
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
	ld   a, b                                        ; $5bd6: $78
	adc  b                                           ; $5bd7: $88
	adc  b                                           ; $5bd8: $88
	adc  b                                           ; $5bd9: $88
	adc  b                                           ; $5bda: $88
	adc  b                                           ; $5bdb: $88
	sbc  b                                           ; $5bdc: $98
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
	add  a                                           ; $5bf3: $87
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
	add  a                                           ; $5c08: $87
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
	sbc  c                                           ; $5c3b: $99
	adc  e                                           ; $5c3c: $8b
	or   a                                           ; $5c3d: $b7
	ld   e, c                                        ; $5c3e: $59
	and  a                                           ; $5c3f: $a7
	ld   l, b                                        ; $5c40: $68
	ld   [hl], l                                     ; $5c41: $75
	ld   a, c                                        ; $5c42: $79
	add  [hl]                                        ; $5c43: $86
	ld   a, c                                        ; $5c44: $79
	ld   [hl], a                                     ; $5c45: $77
	adc  b                                           ; $5c46: $88
	ld   a, d                                        ; $5c47: $7a
	sub  a                                           ; $5c48: $97
	ld   a, c                                        ; $5c49: $79
	adc  b                                           ; $5c4a: $88
	ld   a, e                                        ; $5c4b: $7b
	cp   b                                           ; $5c4c: $b8
	ld   h, [hl]                                     ; $5c4d: $66
	cp   d                                           ; $5c4e: $ba
	ld   a, d                                        ; $5c4f: $7a
	sub  [hl]                                        ; $5c50: $96
	ld   [hl], a                                     ; $5c51: $77
	sbc  e                                           ; $5c52: $9b
	cp   c                                           ; $5c53: $b9
	ld   h, l                                        ; $5c54: $65
	ld   a, d                                        ; $5c55: $7a
	cp   e                                           ; $5c56: $bb
	jp   z, $a856                                    ; $5c57: $ca $56 $a8

	ld   d, [hl]                                     ; $5c5a: $56
	adc  b                                           ; $5c5b: $88
	ld   h, [hl]                                     ; $5c5c: $66
	ld   [hl], a                                     ; $5c5d: $77
	ld   h, [hl]                                     ; $5c5e: $66
	halt                                             ; $5c5f: $76
	ld   h, a                                        ; $5c60: $67
	ld   [hl], a                                     ; $5c61: $77
	ld   a, b                                        ; $5c62: $78
	adc  c                                           ; $5c63: $89
	xor  d                                           ; $5c64: $aa
	xor  d                                           ; $5c65: $aa
	xor  d                                           ; $5c66: $aa
	xor  d                                           ; $5c67: $aa
	xor  d                                           ; $5c68: $aa
	sbc  d                                           ; $5c69: $9a
	sbc  c                                           ; $5c6a: $99
	add  a                                           ; $5c6b: $87
	halt                                             ; $5c6c: $76
	ld   h, l                                        ; $5c6d: $65
	ld   d, h                                        ; $5c6e: $54
	ld   [hl-], a                                    ; $5c6f: $32
	ld   bc, $4811                                   ; $5c70: $01 $11 $48
	ld   d, $fa                                      ; $5c73: $16 $fa
	sbc  a                                           ; $5c75: $9f
	db   $fc                                         ; $5c76: $fc
	cp   $cc                                         ; $5c77: $fe $cc
	sbc  c                                           ; $5c79: $99
	add  a                                           ; $5c7a: $87
	ld   [hl], a                                     ; $5c7b: $77
	ld   a, b                                        ; $5c7c: $78
	sbc  c                                           ; $5c7d: $99
	xor  e                                           ; $5c7e: $ab
	call $bbcc                                       ; $5c7f: $cd $cc $bb
	xor  b                                           ; $5c82: $a8
	ld   h, l                                        ; $5c83: $65
	ld   sp, $1111                                   ; $5c84: $31 $11 $11
	ld   de, $1fd1                                   ; $5c87: $11 $d1 $1f
	ei                                               ; $5c8a: $fb
	rst  $38                                         ; $5c8b: $ff
	rst  $28                                         ; $5c8c: $ef
	jp   hl                                          ; $5c8d: $e9


	jp   z, $5576                                    ; $5c8e: $ca $76 $55

	ld   h, a                                        ; $5c91: $67
	sbc  h                                           ; $5c92: $9c
	sbc  $ef                                         ; $5c93: $de $ef
	db   $fd                                         ; $5c95: $fd
	cp   c                                           ; $5c96: $b9
	ld   [hl], l                                     ; $5c97: $75
	ld   b, c                                        ; $5c98: $41
	ld   de, $1111                                   ; $5c99: $11 $11 $11
	ccf                                              ; $5c9c: $3f
	inc  h                                           ; $5c9d: $24
	rst  $38                                         ; $5c9e: $ff
	rst  JumpTable                                         ; $5c9f: $df
	ei                                               ; $5ca0: $fb
	db   $eb                                         ; $5ca1: $eb
	jr   c, jr_0d2_5d19                              ; $5ca2: $38 $75

	ld   d, l                                        ; $5ca4: $55
	ld   e, c                                        ; $5ca5: $59
	adc  $ff                                         ; $5ca6: $ce $ff
	cp   $fe                                         ; $5ca8: $fe $fe
	sbc  d                                           ; $5caa: $9a
	ld   [hl], h                                     ; $5cab: $74
	ld   b, d                                        ; $5cac: $42
	ld   de, $1111                                   ; $5cad: $11 $11 $11
	rra                                              ; $5cb0: $1f
	pop  af                                          ; $5cb1: $f1
	rst  $38                                         ; $5cb2: $ff
	rst  $38                                         ; $5cb3: $ff
	ld   a, [$217c]                                  ; $5cb4: $fa $7c $21
	ld   h, [hl]                                     ; $5cb7: $66
	ld   d, a                                        ; $5cb8: $57
	adc  c                                           ; $5cb9: $89
	rst  $38                                         ; $5cba: $ff
	rst  $38                                         ; $5cbb: $ff
	db   $fd                                         ; $5cbc: $fd
	db   $dd                                         ; $5cbd: $dd
	add  a                                           ; $5cbe: $87
	ld   [hl], h                                     ; $5cbf: $74
	ld   [hl+], a                                    ; $5cc0: $22
	ld   de, $1111                                   ; $5cc1: $11 $11 $11
	rra                                              ; $5cc4: $1f
	pop  af                                          ; $5cc5: $f1
	rst  $38                                         ; $5cc6: $ff
	rst  $38                                         ; $5cc7: $ff
	db   $e4                                         ; $5cc8: $e4
	ld   c, d                                        ; $5cc9: $4a
	ld   de, $7958                                   ; $5cca: $11 $58 $79
	call $ffff                                       ; $5ccd: $cd $ff $ff
	ld   sp, hl                                      ; $5cd0: $f9
	cp   h                                           ; $5cd1: $bc
	ld   a, b                                        ; $5cd2: $78
	add  e                                           ; $5cd3: $83
	ld   [hl+], a                                    ; $5cd4: $22
	ld   de, $1111                                   ; $5cd5: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cd8: $cf
	cp   d                                           ; $5cd9: $ba
	rst  $38                                         ; $5cda: $ff
	xor  $31                                         ; $5cdb: $ee $31
	ld   b, [hl]                                     ; $5cdd: $46
	ld   [de], a                                     ; $5cde: $12
	adc  h                                           ; $5cdf: $8c
	rst  JumpTable                                         ; $5ce0: $df
	rst  $28                                         ; $5ce1: $ef
	rst  $38                                         ; $5ce2: $ff
	rst  $28                                         ; $5ce3: $ef
	cp   b                                           ; $5ce4: $b8
	db   $ec                                         ; $5ce5: $ec
	ld   l, b                                        ; $5ce6: $68
	ld   d, c                                        ; $5ce7: $51
	ld   bc, $1111                                   ; $5ce8: $01 $11 $11
	rra                                              ; $5ceb: $1f
	rst  $38                                         ; $5cec: $ff
	ld   a, a                                        ; $5ced: $7f
	or   $71                                         ; $5cee: $f6 $71
	ld   de, $1ec1                                   ; $5cf0: $11 $c1 $1e
	rst  $38                                         ; $5cf3: $ff
	rst  $38                                         ; $5cf4: $ff
	xor  a                                           ; $5cf5: $af
	ei                                               ; $5cf6: $fb
	db   $dd                                         ; $5cf7: $dd
	xor  a                                           ; $5cf8: $af
	push hl                                          ; $5cf9: $e5
	ld   [hl+], a                                    ; $5cfa: $22
	ld   de, $1111                                   ; $5cfb: $11 $11 $11
	inc  de                                          ; $5cfe: $13
	rst  $38                                         ; $5cff: $ff
	rra                                              ; $5d00: $1f
	di                                               ; $5d01: $f3
	ld   de, rAUD1LEN                                   ; $5d02: $11 $11 $ff
	jr   @+$01                                       ; $5d05: $18 $ff

	rst  $38                                         ; $5d07: $ff
	ld   c, b                                        ; $5d08: $48
	rst  $38                                         ; $5d09: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d0a: $cf
	cp   $d6                                         ; $5d0b: $fe $d6
	ld   de, $1111                                   ; $5d0d: $11 $11 $11
	ld   de, $fc1f                                   ; $5d10: $11 $1f $fc
	rra                                              ; $5d13: $1f
	pop  af                                          ; $5d14: $f1
	ld   de, $fe12                                   ; $5d15: $11 $12 $fe
	rra                                              ; $5d18: $1f

jr_0d2_5d19:
	rst  $38                                         ; $5d19: $ff
	ret  c                                           ; $5d1a: $d8

	add  hl, de                                      ; $5d1b: $19
	rst  $38                                         ; $5d1c: $ff
	adc  $f9                                         ; $5d1d: $ce $f9
	ld   h, c                                        ; $5d1f: $61
	ld   de, $1142                                   ; $5d20: $11 $42 $11
	ld   de, $71ff                                   ; $5d23: $11 $ff $71
	db   $fd                                         ; $5d26: $fd
	ld   de, $4f11                                   ; $5d27: $11 $11 $4f
	pop  af                                          ; $5d2a: $f1
	rst  $28                                         ; $5d2b: $ef
	rst  $30                                         ; $5d2c: $f7
	ld   hl, $fbaf                                   ; $5d2d: $21 $af $fb
	xor  h                                           ; $5d30: $ac
	ld   h, d                                        ; $5d31: $62
	ld   de, $3115                                   ; $5d32: $11 $15 $31
	ld   de, $f1ff                                   ; $5d35: $11 $ff $f1
	rst  $38                                         ; $5d38: $ff
	ld   de, $1f11                                   ; $5d39: $11 $11 $1f
	pop  af                                          ; $5d3c: $f1
	ld   a, a                                        ; $5d3d: $7f
	rst  $30                                         ; $5d3e: $f7
	ld   hl, $fe8f                                   ; $5d3f: $21 $8f $fe
	adc  e                                           ; $5d42: $8b
	ld   h, c                                        ; $5d43: $61
	ld   de, $1112                                   ; $5d44: $11 $12 $11
	ld   a, [de]                                     ; $5d47: $1a
	rst  $38                                         ; $5d48: $ff
	add  hl, de                                      ; $5d49: $19
	pop  af                                          ; $5d4a: $f1
	ld   de, rAUD1LEN                                   ; $5d4b: $11 $11 $ff
	ld   [hl], e                                     ; $5d4e: $73
	rst  $38                                         ; $5d4f: $ff
	add  [hl]                                        ; $5d50: $86
	ld   de, $faff                                   ; $5d51: $11 $ff $fa
	or   a                                           ; $5d54: $b7
	ld   de, $1111                                   ; $5d55: $11 $11 $11
	ld   de, $f1ff                                   ; $5d58: $11 $ff $f1
	cp   $11                                         ; $5d5b: $fe $11
	ld   de, $f31f                                   ; $5d5d: $11 $1f $f3
	rst  $38                                         ; $5d60: $ff
	ld   [$9f61], a                                  ; $5d61: $ea $61 $9f
	cp   $e9                                         ; $5d64: $fe $e9
	ld   de, $1111                                   ; $5d66: $11 $11 $11
	ld   de, $f6ff                                   ; $5d69: $11 $ff $f6
	rst  $38                                         ; $5d6c: $ff
	ld   de, $5f11                                   ; $5d6d: $11 $11 $5f
	or   e                                           ; $5d70: $b3
	rst  $38                                         ; $5d71: $ff
	db   $ed                                         ; $5d72: $ed
	ld   d, c                                        ; $5d73: $51
	rst  JumpTable                                         ; $5d74: $df
	xor  $fb                                         ; $5d75: $ee $fb
	ld   hl, $1111                                   ; $5d77: $21 $11 $11
	inc  e                                           ; $5d7a: $1c
	rst  $38                                         ; $5d7b: $ff
	ld   l, a                                        ; $5d7c: $6f
	pop  af                                          ; $5d7d: $f1
	ld   de, $fe11                                   ; $5d7e: $11 $11 $fe
	ld   c, [hl]                                     ; $5d81: $4e
	rst  $38                                         ; $5d82: $ff
	sra  c                                           ; $5d83: $cb $29
	db   $fc                                         ; $5d85: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d86: $cf
	rst  $10                                         ; $5d87: $d7
	ld   de, $1111                                   ; $5d88: $11 $11 $11
	rst  $38                                         ; $5d8b: $ff
	ld   a, [$21ff]                                  ; $5d8c: $fa $ff $21
	ld   de, $741d                                   ; $5d8f: $11 $1d $74
	rst  $38                                         ; $5d92: $ff
	rst  $38                                         ; $5d93: $ff
	and  e                                           ; $5d94: $a3
	sbc  $8b                                         ; $5d95: $de $8b
	ld   sp, hl                                      ; $5d97: $f9
	ld   h, c                                        ; $5d98: $61
	ld   de, $1f11                                   ; $5d99: $11 $11 $1f
	rst  $30                                         ; $5d9c: $f7
	rst  $38                                         ; $5d9d: $ff
	jp   nc, $1811                                   ; $5d9e: $d2 $11 $18

	ld   h, c                                        ; $5da1: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da2: $cf
	rst  $38                                         ; $5da3: $ff
	ld   sp, hl                                      ; $5da4: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da5: $cf
	sbc  b                                           ; $5da6: $98
	jp   z, $1151                                    ; $5da7: $ca $51 $11

	ld   de, $f61f                                   ; $5daa: $11 $1f $f6
	rst  $38                                         ; $5dad: $ff
	db   $e3                                         ; $5dae: $e3
	ld   sp, $1116                                   ; $5daf: $31 $16 $11
	cp   a                                           ; $5db2: $bf
	cp   $fe                                         ; $5db3: $fe $fe
	rst  $38                                         ; $5db5: $ff
	ld   a, c                                        ; $5db6: $79
	add  sp, $21                                     ; $5db7: $e8 $21
	ld   de, $df11                                   ; $5db9: $11 $11 $df
	rst  $30                                         ; $5dbc: $f7
	rst  $38                                         ; $5dbd: $ff
	and  [hl]                                        ; $5dbe: $a6
	ld   d, c                                        ; $5dbf: $51
	dec  d                                           ; $5dc0: $15
	ld   de, $dfff                                   ; $5dc1: $11 $ff $df
	rst  $38                                         ; $5dc4: $ff
	cp   $8c                                         ; $5dc5: $fe $8c
	sub  c                                           ; $5dc7: $91
	ld   de, $1111                                   ; $5dc8: $11 $11 $11
	rst  $38                                         ; $5dcb: $ff
	cpl                                              ; $5dcc: $2f
	rst  $38                                         ; $5dcd: $ff
	ld   e, d                                        ; $5dce: $5a
	ld   b, c                                        ; $5dcf: $41
	ld   d, c                                        ; $5dd0: $51
	ld   a, [de]                                     ; $5dd1: $1a
	ld   a, [$ffdf]                                  ; $5dd2: $fa $df $ff
	ld   sp, hl                                      ; $5dd5: $f9
	call c, $1111                                    ; $5dd6: $dc $11 $11
	ld   de, $f11f                                   ; $5dd9: $11 $1f $f1
	rst  $38                                         ; $5ddc: $ff
	rst  $30                                         ; $5ddd: $f7
	ret                                              ; $5dde: $c9


	dec  [hl]                                        ; $5ddf: $35
	ld   de, $6b7c                                   ; $5de0: $11 $7c $6b
	rst  $38                                         ; $5de3: $ff
	rst  $38                                         ; $5de4: $ff
	call $11c1                                       ; $5de5: $cd $c1 $11
	ld   de, rAUD1LEN                                   ; $5de8: $11 $11 $ff
	rra                                              ; $5deb: $1f
	rst  $38                                         ; $5dec: $ff
	cp   a                                           ; $5ded: $bf
	and  $61                                         ; $5dee: $e6 $61
	dec  d                                           ; $5df0: $15
	ld   d, c                                        ; $5df1: $51
	ld   a, a                                        ; $5df2: $7f
	rst  $38                                         ; $5df3: $ff
	rst  $38                                         ; $5df4: $ff
	ei                                               ; $5df5: $fb
	ld   de, $1121                                   ; $5df6: $11 $21 $11
	rra                                              ; $5df9: $1f
	ld   hl, $ffff                                   ; $5dfa: $21 $ff $ff
	rst  $38                                         ; $5dfd: $ff
	add  $13                                         ; $5dfe: $c6 $13
	ld   sp, $ed17                                   ; $5e00: $31 $17 $ed
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	sub  d                                           ; $5e05: $92
	ld   de, $1711                                   ; $5e06: $11 $11 $17
	ld   de, $ffff                                   ; $5e09: $11 $ff $ff
	rst  $38                                         ; $5e0c: $ff
	cp   $99                                         ; $5e0d: $fe $99
	ld   d, c                                        ; $5e0f: $51
	inc  de                                          ; $5e10: $13
	ld   e, b                                        ; $5e11: $58
	xor  l                                           ; $5e12: $ad
	cp   c                                           ; $5e13: $b9
	ld   d, c                                        ; $5e14: $51
	ld   de, $1123                                   ; $5e15: $11 $23 $11
	adc  c                                           ; $5e18: $89
	sbc  [hl]                                        ; $5e19: $9e
	rst  $38                                         ; $5e1a: $ff
	rst  $38                                         ; $5e1b: $ff
	rst  $38                                         ; $5e1c: $ff
	ld   [$6587], a                                  ; $5e1d: $ea $87 $65
	ld   a, c                                        ; $5e20: $79
	add  h                                           ; $5e21: $84
	dec  [hl]                                        ; $5e22: $35
	ld   sp, $5115                                   ; $5e23: $31 $15 $51
	ld   a, [hl+]                                    ; $5e26: $2a
	ld   [hl], a                                     ; $5e27: $77
	rst  JumpTable                                         ; $5e28: $df
	rst  $38                                         ; $5e29: $ff
	rst  $38                                         ; $5e2a: $ff
	cp   $cb                                         ; $5e2b: $fe $cb
	sub  a                                           ; $5e2d: $97
	add  [hl]                                        ; $5e2e: $86
	ld   h, a                                        ; $5e2f: $67
	ld   hl, $1111                                   ; $5e30: $21 $11 $11
	and  h                                           ; $5e33: $a4
	add  hl, de                                      ; $5e34: $19
	or   e                                           ; $5e35: $b3
	ld   e, a                                        ; $5e36: $5f
	jp   c, $dfff                                    ; $5e37: $da $ff $df

	cp   $ec                                         ; $5e3a: $fe $ec
	xor  d                                           ; $5e3c: $aa
	xor  b                                           ; $5e3d: $a8
	ld   d, d                                        ; $5e3e: $52
	ld   de, $1811                                   ; $5e3f: $11 $11 $18
	ld   b, c                                        ; $5e42: $41
	xor  e                                           ; $5e43: $ab
	ld   h, $fa                                      ; $5e44: $26 $fa
	ld   e, l                                        ; $5e46: $5d
	db   $ec                                         ; $5e47: $ec
	rst  $28                                         ; $5e48: $ef
	db   $ed                                         ; $5e49: $ed
	res  7, d                                        ; $5e4a: $cb $ba
	sub  a                                           ; $5e4c: $97
	ld   d, h                                        ; $5e4d: $54
	ld   d, h                                        ; $5e4e: $54
	inc  hl                                          ; $5e4f: $23
	ld   h, a                                        ; $5e50: $67
	inc  h                                           ; $5e51: $24
	and  a                                           ; $5e52: $a7
	ld   c, b                                        ; $5e53: $48
	sub  h                                           ; $5e54: $94
	ld   [hl], $65                                   ; $5e55: $36 $65
	adc  e                                           ; $5e57: $8b
	xor  h                                           ; $5e58: $ac
	db   $ed                                         ; $5e59: $ed
	call $9caa                                       ; $5e5a: $cd $aa $9c
	jp   c, $8588                                    ; $5e5d: $da $88 $85

	ld   d, a                                        ; $5e60: $57
	ld   h, h                                        ; $5e61: $64
	ld   d, l                                        ; $5e62: $55
	inc  sp                                          ; $5e63: $33
	ld   b, d                                        ; $5e64: $42
	inc  de                                          ; $5e65: $13
	ld   b, l                                        ; $5e66: $45
	ld   l, b                                        ; $5e67: $68
	xor  e                                           ; $5e68: $ab
	cp   h                                           ; $5e69: $bc
	adc  $ed                                         ; $5e6a: $ce $ed
	db   $ed                                         ; $5e6c: $ed
	call $9aba                                       ; $5e6d: $cd $ba $9a
	halt                                             ; $5e70: $76
	ld   h, l                                        ; $5e71: $65
	inc  sp                                          ; $5e72: $33
	ld   [hl-], a                                    ; $5e73: $32
	ld   [hl+], a                                    ; $5e74: $22
	inc  hl                                          ; $5e75: $23
	inc  [hl]                                        ; $5e76: $34
	ld   d, a                                        ; $5e77: $57
	sbc  d                                           ; $5e78: $9a
	xor  e                                           ; $5e79: $ab
	call z, $ddcc                                    ; $5e7a: $cc $cc $dd
	call $cbcd                                       ; $5e7d: $cd $cd $cb
	xor  c                                           ; $5e80: $a9
	add  a                                           ; $5e81: $87
	ld   d, e                                        ; $5e82: $53
	inc  sp                                          ; $5e83: $33
	ld   de, $2322                                   ; $5e84: $11 $22 $23
	ld   d, l                                        ; $5e87: $55
	ld   l, b                                        ; $5e88: $68
	sbc  c                                           ; $5e89: $99
	xor  d                                           ; $5e8a: $aa
	cp   e                                           ; $5e8b: $bb
	call z, $cdcd                                    ; $5e8c: $cc $cd $cd
	call c, $b9cc                                    ; $5e8f: $dc $cc $b9
	add  a                                           ; $5e92: $87
	ld   d, h                                        ; $5e93: $54
	inc  sp                                          ; $5e94: $33
	ld   hl, $3323                                   ; $5e95: $21 $23 $33
	ld   d, [hl]                                     ; $5e98: $56
	ld   h, a                                        ; $5e99: $67
	sbc  b                                           ; $5e9a: $98
	xor  e                                           ; $5e9b: $ab
	cp   d                                           ; $5e9c: $ba
	call z, $dccd                                    ; $5e9d: $cc $cd $dc
	sbc  $dc                                         ; $5ea0: $de $dc
	cp   c                                           ; $5ea2: $b9
	sub  a                                           ; $5ea3: $97
	ld   h, l                                        ; $5ea4: $65
	inc  sp                                          ; $5ea5: $33
	ld   [hl-], a                                    ; $5ea6: $32
	inc  hl                                          ; $5ea7: $23
	inc  sp                                          ; $5ea8: $33
	ld   b, l                                        ; $5ea9: $45
	ld   d, a                                        ; $5eaa: $57
	adc  b                                           ; $5eab: $88
	sbc  c                                           ; $5eac: $99
	cp   d                                           ; $5ead: $ba
	cp   h                                           ; $5eae: $bc
	cp   e                                           ; $5eaf: $bb
	call z, $dccd                                    ; $5eb0: $cc $cd $dc
	res  5, c                                        ; $5eb3: $cb $a9
	halt                                             ; $5eb5: $76
	ld   d, h                                        ; $5eb6: $54
	ld   b, e                                        ; $5eb7: $43
	inc  hl                                          ; $5eb8: $23
	ld   b, h                                        ; $5eb9: $44
	dec  [hl]                                        ; $5eba: $35
	ld   h, [hl]                                     ; $5ebb: $66
	ld   a, c                                        ; $5ebc: $79
	sbc  b                                           ; $5ebd: $98
	xor  c                                           ; $5ebe: $a9
	sbc  d                                           ; $5ebf: $9a
	cp   d                                           ; $5ec0: $ba
	cp   e                                           ; $5ec1: $bb
	set  1, l                                        ; $5ec2: $cb $cd
	call z, $88b9                                    ; $5ec4: $cc $b9 $88
	halt                                             ; $5ec7: $76
	ld   d, l                                        ; $5ec8: $55
	ld   b, e                                        ; $5ec9: $43
	inc  [hl]                                        ; $5eca: $34
	inc  sp                                          ; $5ecb: $33
	ld   d, l                                        ; $5ecc: $55
	ld   d, [hl]                                     ; $5ecd: $56
	ld   [hl], a                                     ; $5ece: $77
	adc  d                                           ; $5ecf: $8a
	xor  d                                           ; $5ed0: $aa
	xor  e                                           ; $5ed1: $ab
	xor  e                                           ; $5ed2: $ab
	cp   e                                           ; $5ed3: $bb
	call z, $dccc                                    ; $5ed4: $cc $cc $dc
	xor  d                                           ; $5ed7: $aa
	sbc  b                                           ; $5ed8: $98
	halt                                             ; $5ed9: $76
	ld   d, h                                        ; $5eda: $54
	inc  sp                                          ; $5edb: $33
	inc  sp                                          ; $5edc: $33
	inc  sp                                          ; $5edd: $33
	ld   d, l                                        ; $5ede: $55
	ld   h, a                                        ; $5edf: $67
	adc  b                                           ; $5ee0: $88
	sbc  d                                           ; $5ee1: $9a
	sbc  d                                           ; $5ee2: $9a
	xor  c                                           ; $5ee3: $a9
	xor  e                                           ; $5ee4: $ab
	cp   h                                           ; $5ee5: $bc
	db   $dd                                         ; $5ee6: $dd
	call c, $aacc                                    ; $5ee7: $dc $cc $aa
	add  a                                           ; $5eea: $87
	ld   h, l                                        ; $5eeb: $65
	ld   b, h                                        ; $5eec: $44
	inc  sp                                          ; $5eed: $33
	ld   b, e                                        ; $5eee: $43
	dec  [hl]                                        ; $5eef: $35
	ld   h, l                                        ; $5ef0: $65
	ld   h, a                                        ; $5ef1: $67
	ld   [hl], a                                     ; $5ef2: $77
	sbc  b                                           ; $5ef3: $98
	adc  c                                           ; $5ef4: $89
	xor  c                                           ; $5ef5: $a9
	xor  e                                           ; $5ef6: $ab
	cp   h                                           ; $5ef7: $bc
	db   $dd                                         ; $5ef8: $dd
	call $bacb                                       ; $5ef9: $cd $cb $ba
	adc  b                                           ; $5efc: $88
	ld   [hl], l                                     ; $5efd: $75
	ld   d, l                                        ; $5efe: $55
	inc  sp                                          ; $5eff: $33
	ld   b, e                                        ; $5f00: $43
	inc  [hl]                                        ; $5f01: $34
	ld   d, l                                        ; $5f02: $55
	ld   h, a                                        ; $5f03: $67
	ld   [hl], a                                     ; $5f04: $77
	adc  b                                           ; $5f05: $88
	sbc  d                                           ; $5f06: $9a
	xor  c                                           ; $5f07: $a9
	xor  e                                           ; $5f08: $ab
	xor  d                                           ; $5f09: $aa
	call z, $cbcd                                    ; $5f0a: $cc $cd $cb
	cp   d                                           ; $5f0d: $ba
	sbc  c                                           ; $5f0e: $99
	halt                                             ; $5f0f: $76
	ld   d, h                                        ; $5f10: $54
	ld   [hl-], a                                    ; $5f11: $32
	inc  sp                                          ; $5f12: $33
	inc  [hl]                                        ; $5f13: $34
	ld   d, l                                        ; $5f14: $55
	ld   d, a                                        ; $5f15: $57
	ld   [hl], a                                     ; $5f16: $77
	adc  b                                           ; $5f17: $88
	sbc  c                                           ; $5f18: $99
	xor  c                                           ; $5f19: $a9
	sbc  d                                           ; $5f1a: $9a
	xor  e                                           ; $5f1b: $ab
	call z, $cccd                                    ; $5f1c: $cc $cd $cc
	cp   e                                           ; $5f1f: $bb
	sbc  c                                           ; $5f20: $99
	add  [hl]                                        ; $5f21: $86
	ld   d, l                                        ; $5f22: $55
	ld   b, e                                        ; $5f23: $43
	inc  [hl]                                        ; $5f24: $34
	inc  sp                                          ; $5f25: $33
	ld   b, l                                        ; $5f26: $45
	ld   d, [hl]                                     ; $5f27: $56
	ld   [hl], a                                     ; $5f28: $77
	adc  c                                           ; $5f29: $89
	sbc  b                                           ; $5f2a: $98
	xor  c                                           ; $5f2b: $a9
	sbc  d                                           ; $5f2c: $9a
	cp   e                                           ; $5f2d: $bb
	xor  h                                           ; $5f2e: $ac
	call z, $cbcd                                    ; $5f2f: $cc $cd $cb
	xor  c                                           ; $5f32: $a9
	sub  a                                           ; $5f33: $97
	ld   h, l                                        ; $5f34: $65
	ld   d, h                                        ; $5f35: $54
	inc  sp                                          ; $5f36: $33
	ld   b, e                                        ; $5f37: $43
	ld   b, l                                        ; $5f38: $45
	ld   d, l                                        ; $5f39: $55
	ld   [hl], a                                     ; $5f3a: $77
	ld   a, b                                        ; $5f3b: $78
	adc  c                                           ; $5f3c: $89
	adc  c                                           ; $5f3d: $89
	sbc  d                                           ; $5f3e: $9a
	xor  d                                           ; $5f3f: $aa
	xor  e                                           ; $5f40: $ab
	call z, $cbdd                                    ; $5f41: $cc $dd $cb
	res  7, e                                        ; $5f44: $cb $bb
	sub  [hl]                                        ; $5f46: $96
	ld   d, e                                        ; $5f47: $53
	ld   [de], a                                     ; $5f48: $12
	ld   [hl-], a                                    ; $5f49: $32
	inc  d                                           ; $5f4a: $14
	ld   d, d                                        ; $5f4b: $52
	ld   e, c                                        ; $5f4c: $59
	adc  b                                           ; $5f4d: $88
	call z, $eb9d                                    ; $5f4e: $cc $9d $eb
	adc  $bb                                         ; $5f51: $ce $bb
	res  3, e                                        ; $5f53: $cb $9b
	cp   b                                           ; $5f55: $b8
	ld   [hl], a                                     ; $5f56: $77
	ld   h, c                                        ; $5f57: $61
	jr   z, jr_0d2_5f6b                              ; $5f58: $28 $11

	ld   d, e                                        ; $5f5a: $53
	ld   de, $4fa2                                   ; $5f5b: $11 $a2 $4f
	and  a                                           ; $5f5e: $a7
	rst  $28                                         ; $5f5f: $ef
	cp   a                                           ; $5f60: $bf
	ei                                               ; $5f61: $fb
	cp   l                                           ; $5f62: $bd
	xor  b                                           ; $5f63: $a8
	ret  c                                           ; $5f64: $d8

	adc  a                                           ; $5f65: $8f
	ld   d, c                                        ; $5f66: $51
	ld   c, h                                        ; $5f67: $4c
	ld   de, $14d4                                   ; $5f68: $11 $d4 $14

jr_0d2_5f6b:
	add  c                                           ; $5f6b: $81
	ld   e, $a1                                      ; $5f6c: $1e $a1
	rst  $38                                         ; $5f6e: $ff
	cp   [hl]                                        ; $5f6f: $be
	rst  $38                                         ; $5f70: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f71: $cf
	rst  $30                                         ; $5f72: $f7
	sbc  l                                           ; $5f73: $9d
	inc  hl                                          ; $5f74: $23
	or   c                                           ; $5f75: $b1
	ld   de, $1983                                   ; $5f76: $11 $83 $19
	or   c                                           ; $5f79: $b1
	ld   e, [hl]                                     ; $5f7a: $5e
	ld   d, c                                        ; $5f7b: $51
	rst  $38                                         ; $5f7c: $ff
	rra                                              ; $5f7d: $1f
	ld   sp, hl                                      ; $5f7e: $f9
	cp   a                                           ; $5f7f: $bf
	ld   sp, hl                                      ; $5f80: $f9
	rst  $38                                         ; $5f81: $ff
	sub  a                                           ; $5f82: $97
	di                                               ; $5f83: $f3
	ld   d, $11                                      ; $5f84: $16 $11
	dec  de                                          ; $5f86: $1b
	ld   de, $1ff1                                   ; $5f87: $11 $f1 $1f
	push de                                          ; $5f8a: $d5
	xor  a                                           ; $5f8b: $af
	ld   a, e                                        ; $5f8c: $7b
	cp   $af                                         ; $5f8d: $fe $af
	ld   a, [$e6ff]                                  ; $5f8f: $fa $ff $e6
	and  [hl]                                        ; $5f92: $a6
	ld   de, $1311                                   ; $5f93: $11 $11 $13
	ld   [de], a                                     ; $5f96: $12
	pop  af                                          ; $5f97: $f1
	adc  a                                           ; $5f98: $8f
	add  sp, -$01                                    ; $5f99: $e8 $ff
	ld   l, a                                        ; $5f9b: $6f
	db   $fc                                         ; $5f9c: $fc
	cp   a                                           ; $5f9d: $bf
	ei                                               ; $5f9e: $fb
	rst  $38                                         ; $5f9f: $ff
	push bc                                          ; $5fa0: $c5
	add  c                                           ; $5fa1: $81
	ld   de, $3111                                   ; $5fa2: $11 $11 $31
	rra                                              ; $5fa5: $1f
	dec  d                                           ; $5fa6: $15
	cp   $bf                                         ; $5fa7: $fe $bf
	ld   hl, sp-$31                                  ; $5fa9: $f8 $cf
	reti                                             ; $5fab: $d9


	rst  $28                                         ; $5fac: $ef
	xor  a                                           ; $5fad: $af
	cp   $57                                         ; $5fae: $fe $57
	ld   b, c                                        ; $5fb0: $41
	ld   de, $1112                                   ; $5fb1: $11 $12 $11
	ld   sp, hl                                      ; $5fb4: $f9
	rra                                              ; $5fb5: $1f
	rst  $38                                         ; $5fb6: $ff
	sbc  a                                           ; $5fb7: $9f
	push af                                          ; $5fb8: $f5
	rst  $38                                         ; $5fb9: $ff
	ret  z                                           ; $5fba: $c8

	rst  $38                                         ; $5fbb: $ff
	cp   a                                           ; $5fbc: $bf
	ld   a, [$1138]                                  ; $5fbd: $fa $38 $11
	ld   de, $1214                                   ; $5fc0: $11 $14 $12
	pop  af                                          ; $5fc3: $f1
	xor  a                                           ; $5fc4: $af
	db   $fc                                         ; $5fc5: $fc
	rst  $28                                         ; $5fc6: $ef
	sbc  h                                           ; $5fc7: $9c
	db   $fd                                         ; $5fc8: $fd
	sbc  e                                           ; $5fc9: $9b
	db   $fd                                         ; $5fca: $fd
	rst  $28                                         ; $5fcb: $ef
	push af                                          ; $5fcc: $f5
	ld   d, l                                        ; $5fcd: $55
	ld   de, $2111                                   ; $5fce: $11 $11 $21
	rra                                              ; $5fd1: $1f
	pop  af                                          ; $5fd2: $f1
	rst  $38                                         ; $5fd3: $ff
	ld   sp, hl                                      ; $5fd4: $f9
	rst  $38                                         ; $5fd5: $ff
	ld   e, [hl]                                     ; $5fd6: $5e
	db   $fd                                         ; $5fd7: $fd
	ld   l, l                                        ; $5fd8: $6d
	db   $fd                                         ; $5fd9: $fd
	rst  $28                                         ; $5fda: $ef
	ldh  a, [c]                                      ; $5fdb: $f2
	ld   [hl], c                                     ; $5fdc: $71
	ld   de, $6111                                   ; $5fdd: $11 $11 $61
	rra                                              ; $5fe0: $1f
	ld   d, c                                        ; $5fe1: $51
	rst  $38                                         ; $5fe2: $ff
	ld   hl, sp-$01                                  ; $5fe3: $f8 $ff
	ld   e, [hl]                                     ; $5fe5: $5e
	db   $ec                                         ; $5fe6: $ec
	ld   e, a                                        ; $5fe7: $5f
	db   $fd                                         ; $5fe8: $fd
	rst  $38                                         ; $5fe9: $ff
	jp   nz, $1171                                   ; $5fea: $c2 $71 $11

	ld   de, $1f91                                   ; $5fed: $11 $91 $1f
	ld   sp, $f7ff                                   ; $5ff0: $31 $ff $f7
	rst  $38                                         ; $5ff3: $ff
	ld   l, l                                        ; $5ff4: $6d
	db   $ec                                         ; $5ff5: $ec
	ld   c, a                                        ; $5ff6: $4f
	db   $fd                                         ; $5ff7: $fd
	rst  JumpTable                                         ; $5ff8: $df
	jp   nc, $1161                                   ; $5ff9: $d2 $61 $11

	ld   de, $1f91                                   ; $5ffc: $11 $91 $1f
	ld   [hl], c                                     ; $5fff: $71
	rst  $38                                         ; $6000: $ff
	rst  $30                                         ; $6001: $f7
	rst  $38                                         ; $6002: $ff
	ld   l, h                                        ; $6003: $6c
	adc  $4d                                         ; $6004: $ce $4d
	cp   $df                                         ; $6006: $fe $df
	db   $e4                                         ; $6008: $e4
	ld   h, c                                        ; $6009: $61
	ld   de, $4111                                   ; $600a: $11 $11 $41
	rra                                              ; $600d: $1f
	pop  af                                          ; $600e: $f1
	rst  $38                                         ; $600f: $ff
	ld   sp, hl                                      ; $6010: $f9
	rst  $38                                         ; $6011: $ff
	ld   l, c                                        ; $6012: $69
	xor  l                                           ; $6013: $ad
	ld   l, b                                        ; $6014: $68
	rst  $38                                         ; $6015: $ff
	rst  JumpTable                                         ; $6016: $df
	or   $63                                         ; $6017: $f6 $63
	ld   de, $1c11                                   ; $6019: $11 $11 $1c
	ld   de, $7ff1                                   ; $601c: $11 $f1 $7f
	rst  $38                                         ; $601f: $ff
	xor  a                                           ; $6020: $af
	ret  c                                           ; $6021: $d8

	sbc  e                                           ; $6022: $9b
	call nz, $deff                                   ; $6023: $c4 $ff $de
	db   $fc                                         ; $6026: $fc
	ld   [hl], h                                     ; $6027: $74
	ld   de, $1611                                   ; $6028: $11 $11 $16
	ld   hl, $1fff                                   ; $602b: $21 $ff $1f
	rst  $38                                         ; $602e: $ff
	cp   [hl]                                        ; $602f: $be
	ld   sp, hl                                      ; $6030: $f9
	ld   [hl], a                                     ; $6031: $77
	rst  $10                                         ; $6032: $d7
	ld   a, a                                        ; $6033: $7f
	db   $fd                                         ; $6034: $fd
	rst  $38                                         ; $6035: $ff
	and  a                                           ; $6036: $a7
	inc  hl                                          ; $6037: $23
	ld   de, $9111                                   ; $6038: $11 $11 $91
	rra                                              ; $603b: $1f
	pop  af                                          ; $603c: $f1
	rst  $38                                         ; $603d: $ff
	ld   sp, hl                                      ; $603e: $f9
	rst  $28                                         ; $603f: $ef
	and  a                                           ; $6040: $a7
	ld   l, l                                        ; $6041: $6d
	adc  b                                           ; $6042: $88
	rst  $38                                         ; $6043: $ff
	rst  JumpTable                                         ; $6044: $df
	ld   a, [$3182]                                  ; $6045: $fa $82 $31
	ld   de, $111a                                   ; $6048: $11 $1a $11
	rst  $38                                         ; $604b: $ff
	rra                                              ; $604c: $1f
	rst  $38                                         ; $604d: $ff
	xor  [hl]                                        ; $604e: $ae
	db   $fc                                         ; $604f: $fc
	ld   d, [hl]                                     ; $6050: $56
	reti                                             ; $6051: $d9


	adc  [hl]                                        ; $6052: $8e
	rst  $38                                         ; $6053: $ff
	rst  $38                                         ; $6054: $ff
	ret  z                                           ; $6055: $c8

	inc  [hl]                                        ; $6056: $34
	ld   de, $1b11                                   ; $6057: $11 $11 $1b
	add  hl, de                                      ; $605a: $19
	pop  af                                          ; $605b: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $605c: $cf
	db   $fd                                         ; $605d: $fd
	xor  a                                           ; $605e: $af
	ret  c                                           ; $605f: $d8

	ld   e, c                                        ; $6060: $59
	cp   d                                           ; $6061: $ba
	adc  a                                           ; $6062: $8f
	rst  $38                                         ; $6063: $ff
	db   $fd                                         ; $6064: $fd
	add  $41                                         ; $6065: $c6 $41
	ld   de, $c111                                   ; $6067: $11 $11 $c1
	rra                                              ; $606a: $1f
	pop  af                                          ; $606b: $f1
	rst  $38                                         ; $606c: $ff
	ld   sp, hl                                      ; $606d: $f9
	rst  $28                                         ; $606e: $ef
	push de                                          ; $606f: $d5
	ld   c, h                                        ; $6070: $4c
	and  a                                           ; $6071: $a7
	rst  JumpTable                                         ; $6072: $df
	rst  $28                                         ; $6073: $ef
	db   $fd                                         ; $6074: $fd
	and  l                                           ; $6075: $a5
	ld   d, c                                        ; $6076: $51
	ld   de, $e111                                   ; $6077: $11 $11 $e1
	rra                                              ; $607a: $1f
	di                                               ; $607b: $f3
	rst  $38                                         ; $607c: $ff
	ld   sp, hl                                      ; $607d: $f9
	db   $ec                                         ; $607e: $ec
	db   $f4                                         ; $607f: $f4
	ld   c, h                                        ; $6080: $4c
	xor  c                                           ; $6081: $a9
	rst  $28                                         ; $6082: $ef
	rst  $38                                         ; $6083: $ff
	rst  $38                                         ; $6084: $ff
	or   a                                           ; $6085: $b7
	ld   sp, $1111                                   ; $6086: $31 $11 $11
	add  c                                           ; $6089: $81
	rra                                              ; $608a: $1f
	ldh  a, [c]                                      ; $608b: $f2
	rst  $38                                         ; $608c: $ff
	ld   sp, hl                                      ; $608d: $f9
	call c, $1cd8                                    ; $608e: $dc $d8 $1c
	sbc  e                                           ; $6091: $9b
	rst  JumpTable                                         ; $6092: $df
	rst  $38                                         ; $6093: $ff
	rst  $38                                         ; $6094: $ff
	ld   hl, sp+$41                                  ; $6095: $f8 $41
	ld   de, $1f11                                   ; $6097: $11 $11 $1f
	ld   de, $9ffa                                   ; $609a: $11 $fa $9f
	rst  $38                                         ; $609d: $ff
	ld   a, [hl]                                     ; $609e: $7e
	adc  a                                           ; $609f: $8f
	ld   [hl-], a                                    ; $60a0: $32
	db   $ed                                         ; $60a1: $ed
	cp   l                                           ; $60a2: $bd
	rst  $38                                         ; $60a3: $ff
	rst  $38                                         ; $60a4: $ff
	db   $fc                                         ; $60a5: $fc
	ld   [hl], d                                     ; $60a6: $72
	ld   de, $1111                                   ; $60a7: $11 $11 $11
	pop  hl                                          ; $60aa: $e1
	rra                                              ; $60ab: $1f
	jp   z, $f7df                                    ; $60ac: $ca $df $f7

	sub  $f4                                         ; $60af: $d6 $f4
	cpl                                              ; $60b1: $2f
	ld   sp, hl                                      ; $60b2: $f9
	rst  $28                                         ; $60b3: $ef
	rst  $38                                         ; $60b4: $ff
	rst  $28                                         ; $60b5: $ef
	add  $31                                         ; $60b6: $c6 $31
	ld   de, $1a11                                   ; $60b8: $11 $11 $1a
	ld   hl, $7cff                                   ; $60bb: $21 $ff $7c
	rst  $38                                         ; $60be: $ff
	ld   l, e                                        ; $60bf: $6b
	adc  h                                           ; $60c0: $8c
	pop  hl                                          ; $60c1: $e1
	sbc  a                                           ; $60c2: $9f
	reti                                             ; $60c3: $d9


	rst  $38                                         ; $60c4: $ff
	rst  $38                                         ; $60c5: $ff
	rst  $28                                         ; $60c6: $ef
	and  [hl]                                        ; $60c7: $a6
	ld   [hl-], a                                    ; $60c8: $32
	ld   de, $1811                                   ; $60c9: $11 $11 $18
	ld   b, c                                        ; $60cc: $41
	rst  $38                                         ; $60cd: $ff
	ld   a, l                                        ; $60ce: $7d
	rst  JumpTable                                         ; $60cf: $df
	adc  d                                           ; $60d0: $8a
	sbc  e                                           ; $60d1: $9b
	push af                                          ; $60d2: $f5
	ld   a, a                                        ; $60d3: $7f
	ld   hl, sp-$01                                  ; $60d4: $f8 $ff
	rst  $38                                         ; $60d6: $ff
	db   $ec                                         ; $60d7: $ec
	ret  z                                           ; $60d8: $c8

	inc  d                                           ; $60d9: $14
	ld   de, $1111                                   ; $60da: $11 $11 $11
	pop  de                                          ; $60dd: $d1
	rra                                              ; $60de: $1f
	cp   h                                           ; $60df: $bc
	adc  a                                           ; $60e0: $8f
	or   $c6                                         ; $60e1: $f6 $c6
	db   $fd                                         ; $60e3: $fd
	ld   e, c                                        ; $60e4: $59
	cp   $9f                                         ; $60e5: $fe $9f
	rst  $38                                         ; $60e7: $ff
	db   $ed                                         ; $60e8: $ed
	xor  [hl]                                        ; $60e9: $ae
	add  c                                           ; $60ea: $81
	ld   h, e                                        ; $60eb: $63
	ld   de, $1c11                                   ; $60ec: $11 $11 $1c
	ld   de, $aafd                                   ; $60ef: $11 $fd $aa
	cp   a                                           ; $60f2: $bf
	xor  l                                           ; $60f3: $ad
	ld   a, a                                        ; $60f4: $7f
	ret  c                                           ; $60f5: $d8

	ld   a, l                                        ; $60f6: $7d
	or   $ef                                         ; $60f7: $f6 $ef
	cp   $fc                                         ; $60f9: $fe $fc
	adc  $46                                         ; $60fb: $ce $46
	ld   h, c                                        ; $60fd: $61
	ld   de, $1c11                                   ; $60fe: $11 $11 $1c
	ld   de, $f6f9                                   ; $6101: $11 $f9 $f6
	rst  $38                                         ; $6104: $ff
	xor  e                                           ; $6105: $ab
	ld   a, a                                        ; $6106: $7f
	xor  d                                           ; $6107: $aa
	ld   e, [hl]                                     ; $6108: $5e
	ld   hl, sp-$21                                  ; $6109: $f8 $df
	cp   $fa                                         ; $610b: $fe $fa
	cp   $46                                         ; $610d: $fe $46
	ld   h, d                                        ; $610f: $62
	ld   de, $1711                                   ; $6110: $11 $11 $17
	ld   d, c                                        ; $6113: $51
	db   $fd                                         ; $6114: $fd
	cp   [hl]                                        ; $6115: $be
	ld   e, a                                        ; $6116: $5f
	xor  $5c                                         ; $6117: $ee $5c
	ld   [$fdb6], a                                  ; $6119: $ea $b6 $fd
	db   $dd                                         ; $611c: $dd
	rst  $38                                         ; $611d: $ff
	xor  $8f                                         ; $611e: $ee $8f
	or   a                                           ; $6120: $b7
	ld   d, a                                        ; $6121: $57
	ld   hl, $1111                                   ; $6122: $21 $11 $11
	ld   h, l                                        ; $6125: $65
	ld   e, $ca                                      ; $6126: $1e $ca
	di                                               ; $6128: $f3
	rst  $38                                         ; $6129: $ff
	or   $af                                         ; $612a: $f6 $af
	cp   l                                           ; $612c: $bd
	ld   e, a                                        ; $612d: $5f
	db   $ed                                         ; $612e: $ed
	cp   a                                           ; $612f: $bf
	cp   $f8                                         ; $6130: $fe $f8
	db   $fd                                         ; $6132: $fd
	and  a                                           ; $6133: $a7
	ld   [hl], h                                     ; $6134: $74
	ld   hl, $1111                                   ; $6135: $21 $11 $11
	sub  c                                           ; $6138: $91
	rra                                              ; $6139: $1f
	sbc  [hl]                                        ; $613a: $9e
	add  $ff                                         ; $613b: $c6 $ff
	db   $f4                                         ; $613d: $f4
	db   $eb                                         ; $613e: $eb
	xor  $5e                                         ; $613f: $ee $5e
	rst  $28                                         ; $6141: $ef
	sbc  a                                           ; $6142: $9f
	rst  JumpTable                                         ; $6143: $df
	ld   sp, hl                                      ; $6144: $f9
	db   $dd                                         ; $6145: $dd
	ret  z                                           ; $6146: $c8

	add  e                                           ; $6147: $83
	ld   d, c                                        ; $6148: $51
	ld   de, $1911                                   ; $6149: $11 $11 $19
	ld   d, $ba                                      ; $614c: $16 $ba
	or   $ce                                         ; $614e: $f6 $ce
	ei                                               ; $6150: $fb
	adc  l                                           ; $6151: $8d
	xor  a                                           ; $6152: $af
	xor  b                                           ; $6153: $a8
	cp   a                                           ; $6154: $bf
	call $fceb                                       ; $6155: $cd $eb $fc
	cp   h                                           ; $6158: $bc
	call c, $36a9                                    ; $6159: $dc $a9 $36
	ld   de, $1111                                   ; $615c: $11 $11 $11
	and  c                                           ; $615f: $a1
	dec  hl                                          ; $6160: $2b
	sbc  a                                           ; $6161: $9f
	sbc  c                                           ; $6162: $99
	rst  JumpTable                                         ; $6163: $df
	ld   hl, sp-$4a                                  ; $6164: $f8 $b6
	cp   $99                                         ; $6166: $fe $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6168: $cf
	rst  $28                                         ; $6169: $ef
	adc  a                                           ; $616a: $8f
	db   $ed                                         ; $616b: $ed
	db   $db                                         ; $616c: $db
	set  2, [hl]                                     ; $616d: $cb $d6
	ld   h, e                                        ; $616f: $63
	ld   de, $1111                                   ; $6170: $11 $11 $11
	ld   h, c                                        ; $6173: $61
	ld   h, h                                        ; $6174: $64
	adc  a                                           ; $6175: $8f
	cp   h                                           ; $6176: $bc
	xor  a                                           ; $6177: $af
	db   $fd                                         ; $6178: $fd
	or   l                                           ; $6179: $b5
	db   $fd                                         ; $617a: $fd
	jp   c, $ffab                                    ; $617b: $da $ab $ff

	cp   [hl]                                        ; $617e: $be
	xor  [hl]                                        ; $617f: $ae
	cp   $ba                                         ; $6180: $fe $ba
	ret  c                                           ; $6182: $d8

	ld   [hl], c                                     ; $6183: $71
	ld   de, $1111                                   ; $6184: $11 $11 $11
	ld   d, c                                        ; $6187: $51
	ld   h, [hl]                                     ; $6188: $66
	ld   c, a                                        ; $6189: $4f
	rst  $28                                         ; $618a: $ef
	call $f7dd                                       ; $618b: $cd $dd $f7
	jp   z, $cbcd                                    ; $618e: $ca $cd $cb

	xor  a                                           ; $6191: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6192: $cf
	cp   h                                           ; $6193: $bc
	sbc  $ec                                         ; $6194: $de $ec
	ret  c                                           ; $6196: $d8

	ld   [hl], l                                     ; $6197: $75
	ld   hl, $1111                                   ; $6198: $21 $11 $11
	dec  d                                           ; $619b: $15
	add  hl, hl                                      ; $619c: $29
	daa                                              ; $619d: $27
	db   $dd                                         ; $619e: $dd
	ld   a, [$ded8]                                  ; $619f: $fa $d8 $de
	cp   l                                           ; $61a2: $bd
	sbc  h                                           ; $61a3: $9c
	sbc  l                                           ; $61a4: $9d
	sbc  $ec                                         ; $61a5: $de $ec
	db   $eb                                         ; $61a7: $eb
	cp   $ed                                         ; $61a8: $fe $ed
	call z, Call_0d2_4298                            ; $61aa: $cc $98 $42
	ld   de, $1111                                   ; $61ad: $11 $11 $11
	inc  h                                           ; $61b0: $24
	sub  e                                           ; $61b1: $93
	ld   h, a                                        ; $61b2: $67
	cp   [hl]                                        ; $61b3: $be
	rst  $28                                         ; $61b4: $ef
	sbc  e                                           ; $61b5: $9b
	xor  d                                           ; $61b6: $aa
	xor  $fb                                         ; $61b7: $ee $fb
	set  5, a                                        ; $61b9: $cb $ef
	rst  $38                                         ; $61bb: $ff
	xor  h                                           ; $61bc: $ac
	xor  [hl]                                        ; $61bd: $ae
	db   $ed                                         ; $61be: $ed
	ret  z                                           ; $61bf: $c8

	ld   [hl], h                                     ; $61c0: $74
	ld   b, c                                        ; $61c1: $41
	ld   de, $1111                                   ; $61c2: $11 $11 $11
	ld   a, [hl-]                                    ; $61c5: $3a
	ld   h, e                                        ; $61c6: $63
	ld   d, l                                        ; $61c7: $55
	call $bbfe                                       ; $61c8: $cd $fe $bb
	ld   a, e                                        ; $61cb: $7b
	rst  JumpTable                                         ; $61cc: $df
	cp   $db                                         ; $61cd: $fe $db
	xor  $fe                                         ; $61cf: $ee $fe
	call c, $cdad                                    ; $61d1: $dc $ad $cd
	cp   c                                           ; $61d4: $b9
	ld   h, e                                        ; $61d5: $63
	ld   sp, $1111                                   ; $61d6: $31 $11 $11
	ld   de, $555b                                   ; $61d9: $11 $5b $55
	inc  [hl]                                        ; $61dc: $34
	sbc  d                                           ; $61dd: $9a
	cp   $db                                         ; $61de: $fe $db
	adc  d                                           ; $61e0: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61e1: $cf
	rst  $38                                         ; $61e2: $ff
	cp   $dc                                         ; $61e3: $fe $dc
	call z, $bbdb                                    ; $61e5: $cc $db $bb
	cp   h                                           ; $61e8: $bc
	xor  c                                           ; $61e9: $a9
	ld   [hl], l                                     ; $61ea: $75
	ld   b, c                                        ; $61eb: $41
	ld   de, $1111                                   ; $61ec: $11 $11 $11
	ld   e, c                                        ; $61ef: $59
	ld   d, h                                        ; $61f0: $54
	ld   [hl+], a                                    ; $61f1: $22
	ld   l, b                                        ; $61f2: $68
	cp   $ed                                         ; $61f3: $fe $ed
	xor  e                                           ; $61f5: $ab
	xor  [hl]                                        ; $61f6: $ae
	rst  $28                                         ; $61f7: $ef
	cp   $eb                                         ; $61f8: $fe $eb
	cp   d                                           ; $61fa: $ba
	cp   h                                           ; $61fb: $bc
	cp   l                                           ; $61fc: $bd
	xor  e                                           ; $61fd: $ab
	sbc  c                                           ; $61fe: $99
	add  [hl]                                        ; $61ff: $86
	ld   h, e                                        ; $6200: $63
	ld   hl, $1111                                   ; $6201: $21 $11 $11
	add  hl, hl                                      ; $6204: $29
	add  l                                           ; $6205: $85
	ld   sp, $9d45                                   ; $6206: $31 $45 $9d
	rst  JumpTable                                         ; $6209: $df
	res  5, h                                        ; $620a: $cb $ac
	sbc  $ff                                         ; $620c: $de $ff
	cp   $bb                                         ; $620e: $fe $bb
	xor  e                                           ; $6210: $ab
	cp   h                                           ; $6211: $bc
	call z, $98c9                                    ; $6212: $cc $c9 $98
	halt                                             ; $6215: $76
	ld   b, d                                        ; $6216: $42
	ld   de, $1211                                   ; $6217: $11 $11 $12
	sub  a                                           ; $621a: $97
	ld   b, d                                        ; $621b: $42
	inc  de                                          ; $621c: $13
	ld   c, c                                        ; $621d: $49
	call c, $cafc                                    ; $621e: $dc $fc $ca
	call $ffdf                                       ; $6221: $cd $df $ff
	db   $eb                                         ; $6224: $eb
	xor  d                                           ; $6225: $aa
	cp   d                                           ; $6226: $ba
	db   $dd                                         ; $6227: $dd
	res  3, d                                        ; $6228: $cb $9a
	add  a                                           ; $622a: $87
	ld   h, h                                        ; $622b: $64
	ld   sp, $1111                                   ; $622c: $31 $11 $11
	rla                                              ; $622f: $17
	add  l                                           ; $6230: $85
	ld   hl, $7c24                                   ; $6231: $21 $24 $7c
	sbc  $dc                                         ; $6234: $de $dc
	cp   h                                           ; $6236: $bc
	xor  $ff                                         ; $6237: $ee $ff
	rst  $38                                         ; $6239: $ff
	res  3, d                                        ; $623a: $cb $9a
	cp   e                                           ; $623c: $bb
	call z, $99ba                                    ; $623d: $cc $ba $99
	ld   [hl], a                                     ; $6240: $77
	ld   d, h                                        ; $6241: $54
	ld   de, $1111                                   ; $6242: $11 $11 $11
	ld   l, d                                        ; $6245: $6a
	ld   h, e                                        ; $6246: $63
	ld   de, $bd36                                   ; $6247: $11 $36 $bd
	xor  $bb                                         ; $624a: $ee $bb
	cp   l                                           ; $624c: $bd
	sbc  $fe                                         ; $624d: $de $fe
	db   $fd                                         ; $624f: $fd
	cp   c                                           ; $6250: $b9
	sbc  d                                           ; $6251: $9a
	xor  h                                           ; $6252: $ac
	call z, $97b9                                    ; $6253: $cc $b9 $97
	ld   [hl], l                                     ; $6256: $75
	ld   b, d                                        ; $6257: $42
	ld   de, $1411                                   ; $6258: $11 $11 $14
	xor  c                                           ; $625b: $a9
	ld   b, d                                        ; $625c: $42
	inc  de                                          ; $625d: $13
	ld   c, d                                        ; $625e: $4a
	sbc  $fd                                         ; $625f: $de $fd
	cp   e                                           ; $6261: $bb
	cp   l                                           ; $6262: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6263: $cf
	rst  $38                                         ; $6264: $ff
	db   $eb                                         ; $6265: $eb
	sbc  c                                           ; $6266: $99
	sbc  d                                           ; $6267: $9a
	call c, $99bc                                    ; $6268: $dc $bc $99
	add  a                                           ; $626b: $87
	ld   h, l                                        ; $626c: $65
	ld   sp, $1111                                   ; $626d: $31 $11 $11
	add  hl, hl                                      ; $6270: $29
	or   a                                           ; $6271: $b7
	ld   b, c                                        ; $6272: $41
	inc  h                                           ; $6273: $24
	ld   a, l                                        ; $6274: $7d
	rst  $28                                         ; $6275: $ef
	ei                                               ; $6276: $fb
	cp   d                                           ; $6277: $ba
	cp   h                                           ; $6278: $bc
	rst  $38                                         ; $6279: $ff
	rst  $38                                         ; $627a: $ff
	jp   z, $bc89                                    ; $627b: $ca $89 $bc

	db   $eb                                         ; $627e: $eb
	cp   d                                           ; $627f: $ba
	sbc  c                                           ; $6280: $99
	add  a                                           ; $6281: $87
	ld   d, h                                        ; $6282: $54
	ld   de, $1111                                   ; $6283: $11 $11 $11
	ld   l, e                                        ; $6286: $6b
	and  a                                           ; $6287: $a7
	ld   b, d                                        ; $6288: $42
	ld   b, [hl]                                     ; $6289: $46
	cp   a                                           ; $628a: $bf
	rst  $38                                         ; $628b: $ff
	ret                                              ; $628c: $c9


	adc  b                                           ; $628d: $88
	xor  l                                           ; $628e: $ad
	rst  $38                                         ; $628f: $ff
	db   $fd                                         ; $6290: $fd
	sbc  b                                           ; $6291: $98
	adc  e                                           ; $6292: $8b
	adc  $cb                                         ; $6293: $ce $cb
	xor  c                                           ; $6295: $a9
	adc  b                                           ; $6296: $88
	sub  [hl]                                        ; $6297: $96
	ld   sp, $1111                                   ; $6298: $31 $11 $11
	inc  d                                           ; $629b: $14
	xor  a                                           ; $629c: $af
	cp   b                                           ; $629d: $b8
	ld   b, h                                        ; $629e: $44
	ld   a, d                                        ; $629f: $7a
	rst  $38                                         ; $62a0: $ff
	db   $fc                                         ; $62a1: $fc
	ld   h, l                                        ; $62a2: $65
	ld   c, b                                        ; $62a3: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62a4: $cf
	cp   $eb                                         ; $62a5: $fe $eb
	sbc  d                                           ; $62a7: $9a
	call $a9dd                                       ; $62a8: $cd $dd $a9
	adc  c                                           ; $62ab: $89
	sbc  c                                           ; $62ac: $99
	ld   h, c                                        ; $62ad: $61
	ld   de, $1111                                   ; $62ae: $11 $11 $11
	ld   c, c                                        ; $62b1: $49
	rst  $38                                         ; $62b2: $ff
	jp   z, $cf79                                    ; $62b3: $ca $79 $cf

	db   $fc                                         ; $62b6: $fc
	and  h                                           ; $62b7: $a4
	inc  de                                          ; $62b8: $13
	ld   l, h                                        ; $62b9: $6c
	rst  $28                                         ; $62ba: $ef
	cp   $fe                                         ; $62bb: $fe $fe
	db   $ed                                         ; $62bd: $ed

jr_0d2_62be:
	reti                                             ; $62be: $d9


	sbc  c                                           ; $62bf: $99
	ld   a, c                                        ; $62c0: $79
	sbc  d                                           ; $62c1: $9a
	ld   [hl], l                                     ; $62c2: $75
	ld   de, $1111                                   ; $62c3: $11 $11 $11
	inc  de                                          ; $62c6: $13
	xor  a                                           ; $62c7: $af
	rst  $38                                         ; $62c8: $ff
	jp   c, $bf9c                                    ; $62c9: $da $9c $bf

	or   h                                           ; $62cc: $b4
	ld   sp, $ff38                                   ; $62cd: $31 $38 $ff
	rst  $38                                         ; $62d0: $ff
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	cp   c                                           ; $62d3: $b9
	ld   d, l                                        ; $62d4: $55
	adc  c                                           ; $62d5: $89
	res  2, l                                        ; $62d6: $cb $95
	ld   sp, $1111                                   ; $62d8: $31 $11 $11
	ld   de, $ff7f                                   ; $62db: $11 $7f $ff
	ld   a, [$ecac]                                  ; $62de: $fa $ac $ec
	pop  de                                          ; $62e1: $d1
	ld   de, $ff1a                                   ; $62e2: $11 $1a $ff
	rst  $28                                         ; $62e5: $ef
	rst  $38                                         ; $62e6: $ff
	rst  $38                                         ; $62e7: $ff
	and  d                                           ; $62e8: $a2
	inc  hl                                          ; $62e9: $23
	sbc  [hl]                                        ; $62ea: $9e
	ret  z                                           ; $62eb: $c8

	ld   h, l                                        ; $62ec: $65
	ld   b, l                                        ; $62ed: $45
	ld   hl, $1111                                   ; $62ee: $21 $11 $11
	ccf                                              ; $62f1: $3f
	rst  $38                                         ; $62f2: $ff
	ld   sp, hl                                      ; $62f3: $f9
	rst  JumpTable                                         ; $62f4: $df
	ld   sp, hl                                      ; $62f5: $f9
	ld   d, c                                        ; $62f6: $51
	ld   de, $dd7b                                   ; $62f7: $11 $7b $dd
	rst  $28                                         ; $62fa: $ef
	rst  $38                                         ; $62fb: $ff
	rst  $38                                         ; $62fc: $ff
	ld   h, c                                        ; $62fd: $61
	add  hl, hl                                      ; $62fe: $29
	xor  l                                           ; $62ff: $ad
	and  [hl]                                        ; $6300: $a6
	ld   l, b                                        ; $6301: $68
	add  h                                           ; $6302: $84
	ld   de, $1111                                   ; $6303: $11 $11 $11
	rra                                              ; $6306: $1f
	rst  $38                                         ; $6307: $ff
	cp   $dd                                         ; $6308: $fe $dd
	or   $13                                         ; $630a: $f6 $13
	ld   de, $dc7a                                   ; $630c: $11 $7a $dc
	rst  $38                                         ; $630f: $ff
	rst  $38                                         ; $6310: $ff
	db   $fc                                         ; $6311: $fc
	ld   h, c                                        ; $6312: $61
	jr   z, jr_0d2_62be                              ; $6313: $28 $a9

	sbc  c                                           ; $6315: $99
	adc  c                                           ; $6316: $89
	ld   h, c                                        ; $6317: $61
	ld   de, $1111                                   ; $6318: $11 $11 $11
	cp   a                                           ; $631b: $bf
	rst  $38                                         ; $631c: $ff
	db   $fd                                         ; $631d: $fd
	rst  $28                                         ; $631e: $ef
	pop  af                                          ; $631f: $f1
	ld   de, $9b16                                   ; $6320: $11 $16 $9b
	sbc  l                                           ; $6323: $9d
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	add  sp, $42                                     ; $6326: $e8 $42
	ld   l, c                                        ; $6328: $69
	ld   [hl], a                                     ; $6329: $77
	sbc  e                                           ; $632a: $9b
	add  a                                           ; $632b: $87
	ld   de, $1111                                   ; $632c: $11 $11 $11
	ld   [de], a                                     ; $632f: $12
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	cp   a                                           ; $6332: $bf
	rst  $38                                         ; $6333: $ff
	ld   d, c                                        ; $6334: $51
	ld   de, $a93a                                   ; $6335: $11 $3a $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6338: $cf
	rst  $38                                         ; $6339: $ff
	rst  $38                                         ; $633a: $ff
	sub  a                                           ; $633b: $97
	ld   b, l                                        ; $633c: $45
	sub  l                                           ; $633d: $95
	ld   a, d                                        ; $633e: $7a
	cp   b                                           ; $633f: $b8
	ld   d, c                                        ; $6340: $51
	ld   de, $1111                                   ; $6341: $11 $11 $11
	ld   c, a                                        ; $6344: $4f
	rst  $38                                         ; $6345: $ff
	ei                                               ; $6346: $fb
	rst  $38                                         ; $6347: $ff
	ldh  a, [c]                                      ; $6348: $f2
	ld   de, $b816                                   ; $6349: $11 $16 $b8
	sbc  l                                           ; $634c: $9d
	rst  $38                                         ; $634d: $ff
	rst  $38                                         ; $634e: $ff
	db   $db                                         ; $634f: $db
	or   [hl]                                        ; $6350: $b6
	ld   d, a                                        ; $6351: $57
	ld   e, b                                        ; $6352: $58
	jp   z, $1151                                    ; $6353: $ca $51 $11

	ld   de, $1f11                                   ; $6356: $11 $11 $1f
	rst  $38                                         ; $6359: $ff
	rst  $38                                         ; $635a: $ff
	rst  JumpTable                                         ; $635b: $df
	rst  $38                                         ; $635c: $ff
	ld   de, $ca11                                   ; $635d: $11 $11 $ca
	adc  c                                           ; $6360: $89
	rst  $38                                         ; $6361: $ff
	rst  $38                                         ; $6362: $ff
	db   $fd                                         ; $6363: $fd
	db   $fc                                         ; $6364: $fc
	ld   d, l                                        ; $6365: $55
	ld   l, b                                        ; $6366: $68
	xor  d                                           ; $6367: $aa
	ld   b, c                                        ; $6368: $41
	ld   de, $1111                                   ; $6369: $11 $11 $11
	rra                                              ; $636c: $1f
	cp   $ff                                         ; $636d: $fe $ff
	rst  $38                                         ; $636f: $ff
	db   $fd                                         ; $6370: $fd
	ld   de, $b951                                   ; $6371: $11 $51 $b9
	ld   l, e                                        ; $6374: $6b
	rst  $38                                         ; $6375: $ff
	rst  $38                                         ; $6376: $ff
	cp   $fd                                         ; $6377: $fe $fd
	ld   [hl], $a9                                   ; $6379: $36 $a9
	and  [hl]                                        ; $637b: $a6
	ld   de, $1111                                   ; $637c: $11 $11 $11
	ld   de, $fb2f                                   ; $637f: $11 $2f $fb
	rst  $38                                         ; $6382: $ff
	rst  $38                                         ; $6383: $ff
	pop  af                                          ; $6384: $f1
	jr   @+$47                                       ; $6385: $18 $45

	sub  a                                           ; $6387: $97
	cp   a                                           ; $6388: $bf
	db   $fc                                         ; $6389: $fc
	rst  JumpTable                                         ; $638a: $df
	rst  $38                                         ; $638b: $ff
	call nc, $c55f                                   ; $638c: $d4 $5f $c5
	ld   bc, $1111                                   ; $638f: $01 $11 $11
	ld   de, $fd1d                                   ; $6392: $11 $1d $fd
	cp   a                                           ; $6395: $bf
	rst  $38                                         ; $6396: $ff
	ld   a, [$e111]                                  ; $6397: $fa $11 $e1
	ld   d, $cf                                      ; $639a: $16 $cf
	rst  $38                                         ; $639c: $ff
	ld   a, a                                        ; $639d: $7f
	rst  $38                                         ; $639e: $ff
	cp   c                                           ; $639f: $b9
	ld   c, h                                        ; $63a0: $4c
	or   $11                                         ; $63a1: $f6 $11
	ld   de, $1111                                   ; $63a3: $11 $11 $11
	dec  d                                           ; $63a6: $15
	rst  $38                                         ; $63a7: $ff
	adc  a                                           ; $63a8: $8f
	rst  $38                                         ; $63a9: $ff
	db   $fc                                         ; $63aa: $fc
	ld   [de], a                                     ; $63ab: $12
	pop  hl                                          ; $63ac: $e1
	ld   d, $bc                                      ; $63ad: $16 $bc
	db   $fd                                         ; $63af: $fd
	xor  a                                           ; $63b0: $af
	rst  $38                                         ; $63b1: $ff
	cp   h                                           ; $63b2: $bc
	xor  h                                           ; $63b3: $ac
	pop  bc                                          ; $63b4: $c1
	ld   de, $1111                                   ; $63b5: $11 $11 $11
	ld   de, $f31f                                   ; $63b8: $11 $1f $f3
	rst  $38                                         ; $63bb: $ff
	rst  $38                                         ; $63bc: $ff
	rst  ToBoot                                         ; $63bd: $c7
	ld   c, [hl]                                     ; $63be: $4e
	ld   de, $aa5c                                   ; $63bf: $11 $5c $aa
	cp   e                                           ; $63c2: $bb
	rst  $38                                         ; $63c3: $ff
	ld   a, [$a8ce]                                  ; $63c4: $fa $ce $a8
	ld   de, $1111                                   ; $63c7: $11 $11 $11
	ld   de, $f51f                                   ; $63ca: $11 $1f $f5
	rst  $38                                         ; $63cd: $ff
	rst  $38                                         ; $63ce: $ff
	db   $fc                                         ; $63cf: $fc
	sbc  h                                           ; $63d0: $9c
	ld   de, $448b                                   ; $63d1: $11 $8b $44
	cp   [hl]                                        ; $63d4: $be
	rst  $38                                         ; $63d5: $ff
	db   $eb                                         ; $63d6: $eb
	db   $fc                                         ; $63d7: $fc
	ld   d, e                                        ; $63d8: $53
	ld   de, $1111                                   ; $63d9: $11 $11 $11
	ld   de, $ffff                                   ; $63dc: $11 $ff $ff
	rst  $38                                         ; $63df: $ff
	rst  $38                                         ; $63e0: $ff
	db   $fc                                         ; $63e1: $fc
	ld   [hl], c                                     ; $63e2: $71
	add  hl, sp                                      ; $63e3: $39
	add  d                                           ; $63e4: $82
	ld   c, c                                        ; $63e5: $49
	cp   d                                           ; $63e6: $ba
	sbc  h                                           ; $63e7: $9c
	call z, $1152                                    ; $63e8: $cc $52 $11
	ld   de, $f211                                   ; $63eb: $11 $11 $f2
	cpl                                              ; $63ee: $2f
	rst  $38                                         ; $63ef: $ff
	rst  $38                                         ; $63f0: $ff
	rst  $38                                         ; $63f1: $ff
	cp   b                                           ; $63f2: $b8
	sbc  $a3                                         ; $63f3: $de $a3
	ld   b, a                                        ; $63f5: $47
	ld   de, $1211                                   ; $63f6: $11 $11 $12
	ld   [hl+], a                                    ; $63f9: $22
	ld   de, $a111                                   ; $63fa: $11 $11 $a1
	ld   e, a                                        ; $63fd: $5f
	rst  $38                                         ; $63fe: $ff
	rst  $38                                         ; $63ff: $ff
	rst  $38                                         ; $6400: $ff
	rst  JumpTable                                         ; $6401: $df
	rst  $38                                         ; $6402: $ff
	db   $eb                                         ; $6403: $eb
	db   $eb                                         ; $6404: $eb
	ld   sp, $1111                                   ; $6405: $31 $11 $11
	ld   de, $1211                                   ; $6408: $11 $11 $12
	add  d                                           ; $640b: $82
	ld   c, a                                        ; $640c: $4f
	rst  $38                                         ; $640d: $ff
	rst  $38                                         ; $640e: $ff
	rst  $38                                         ; $640f: $ff
	sbc  $ff                                         ; $6410: $de $ff
	cp   c                                           ; $6412: $b9
	cp   d                                           ; $6413: $ba
	ld   b, d                                        ; $6414: $42
	ld   b, h                                        ; $6415: $44
	ld   de, $1133                                   ; $6416: $11 $33 $11
	ld   de, $1423                                   ; $6419: $11 $23 $14
	rst  $38                                         ; $641c: $ff
	rst  JumpTable                                         ; $641d: $df
	rst  $38                                         ; $641e: $ff
	db   $fd                                         ; $641f: $fd
	rst  $38                                         ; $6420: $ff
	db   $fc                                         ; $6421: $fc
	db   $dd                                         ; $6422: $dd
	and  e                                           ; $6423: $a3
	inc  h                                           ; $6424: $24
	ld   hl, $3111                                   ; $6425: $21 $11 $31
	ld   de, $4411                                   ; $6428: $11 $11 $44
	ld   a, [hl-]                                    ; $642b: $3a
	db   $fc                                         ; $642c: $fc
	rst  JumpTable                                         ; $642d: $df
	rst  $38                                         ; $642e: $ff
	db   $ed                                         ; $642f: $ed
	rst  $38                                         ; $6430: $ff
	call c, $86dd                                    ; $6431: $dc $dd $86
	ld   h, l                                        ; $6434: $65
	inc  sp                                          ; $6435: $33
	inc  sp                                          ; $6436: $33
	ld   b, d                                        ; $6437: $42
	ld   de, $2411                                   ; $6438: $11 $11 $24
	dec  [hl]                                        ; $643b: $35
	adc  h                                           ; $643c: $8c
	xor  e                                           ; $643d: $ab
	rst  $28                                         ; $643e: $ef
	db   $ed                                         ; $643f: $ed
	cp   $ed                                         ; $6440: $fe $ed
	call z, Call_0d2_7aa8                            ; $6442: $cc $a8 $7a
	add  [hl]                                        ; $6445: $86
	ld   h, l                                        ; $6446: $65
	ld   b, h                                        ; $6447: $44
	inc  h                                           ; $6448: $24
	ld   d, c                                        ; $6449: $51
	ld   [hl+], a                                    ; $644a: $22
	inc  [hl]                                        ; $644b: $34
	dec  [hl]                                        ; $644c: $35
	ld   h, a                                        ; $644d: $67
	adc  c                                           ; $644e: $89
	cp   h                                           ; $644f: $bc
	set  3, l                                        ; $6450: $cb $dd
	call z, $dded                                    ; $6452: $cc $ed $dd
	xor  d                                           ; $6455: $aa
	sbc  b                                           ; $6456: $98
	ld   d, a                                        ; $6457: $57
	ld   h, l                                        ; $6458: $65
	ld   [hl], a                                     ; $6459: $77
	ld   h, l                                        ; $645a: $65
	ld   h, [hl]                                     ; $645b: $66
	ld   h, [hl]                                     ; $645c: $66
	ld   b, [hl]                                     ; $645d: $46
	halt                                             ; $645e: $76
	ld   h, a                                        ; $645f: $67
	halt                                             ; $6460: $76
	halt                                             ; $6461: $76
	adc  c                                           ; $6462: $89
	adc  d                                           ; $6463: $8a
	xor  e                                           ; $6464: $ab
	cp   e                                           ; $6465: $bb
	call z, $abcb                                    ; $6466: $cc $cb $ab
	and  a                                           ; $6469: $a7
	adc  c                                           ; $646a: $89
	ld   a, b                                        ; $646b: $78
	sbc  c                                           ; $646c: $99
	add  a                                           ; $646d: $87
	sbc  c                                           ; $646e: $99
	add  a                                           ; $646f: $87
	halt                                             ; $6470: $76
	ld   h, [hl]                                     ; $6471: $66
	ld   h, l                                        ; $6472: $65
	ld   a, b                                        ; $6473: $78
	ld   l, c                                        ; $6474: $69
	ld   h, [hl]                                     ; $6475: $66
	ld   [hl], a                                     ; $6476: $77
	ld   [hl], a                                     ; $6477: $77
	adc  b                                           ; $6478: $88
	adc  b                                           ; $6479: $88
	adc  b                                           ; $647a: $88
	adc  b                                           ; $647b: $88
	sbc  d                                           ; $647c: $9a
	cp   d                                           ; $647d: $ba
	sbc  e                                           ; $647e: $9b
	cp   e                                           ; $647f: $bb
	xor  c                                           ; $6480: $a9
	xor  d                                           ; $6481: $aa
	sbc  c                                           ; $6482: $99
	sbc  b                                           ; $6483: $98
	ld   a, b                                        ; $6484: $78
	add  a                                           ; $6485: $87
	ld   [hl], a                                     ; $6486: $77
	add  [hl]                                        ; $6487: $86
	ld   d, [hl]                                     ; $6488: $56
	ld   h, l                                        ; $6489: $65
	ld   h, [hl]                                     ; $648a: $66
	halt                                             ; $648b: $76
	ld   h, [hl]                                     ; $648c: $66
	halt                                             ; $648d: $76
	adc  b                                           ; $648e: $88
	adc  d                                           ; $648f: $8a
	adc  b                                           ; $6490: $88
	sbc  b                                           ; $6491: $98
	sbc  d                                           ; $6492: $9a
	adc  d                                           ; $6493: $8a
	sbc  e                                           ; $6494: $9b
	xor  c                                           ; $6495: $a9
	sbc  c                                           ; $6496: $99
	xor  b                                           ; $6497: $a8
	xor  b                                           ; $6498: $a8
	sbc  b                                           ; $6499: $98
	ld   a, c                                        ; $649a: $79
	ld   l, c                                        ; $649b: $69
	ld   a, b                                        ; $649c: $78
	halt                                             ; $649d: $76
	ld   [hl], l                                     ; $649e: $75
	add  a                                           ; $649f: $87
	ld   a, b                                        ; $64a0: $78
	add  a                                           ; $64a1: $87
	ld   a, b                                        ; $64a2: $78
	ld   a, b                                        ; $64a3: $78
	and  a                                           ; $64a4: $a7
	adc  b                                           ; $64a5: $88
	ld   a, c                                        ; $64a6: $79
	ld   e, b                                        ; $64a7: $58
	sbc  b                                           ; $64a8: $98
	adc  b                                           ; $64a9: $88
	sbc  c                                           ; $64aa: $99
	and  l                                           ; $64ab: $a5
	xor  b                                           ; $64ac: $a8
	adc  d                                           ; $64ad: $8a
	sbc  c                                           ; $64ae: $99
	ld   l, c                                        ; $64af: $69
	ld   a, b                                        ; $64b0: $78
	sub  [hl]                                        ; $64b1: $96
	ld   a, c                                        ; $64b2: $79
	ld   d, a                                        ; $64b3: $57
	adc  b                                           ; $64b4: $88
	sub  a                                           ; $64b5: $97
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88
	ld   a, b                                        ; $64b8: $78
	ld   [hl], a                                     ; $64b9: $77
	sub  a                                           ; $64ba: $97
	ld   a, b                                        ; $64bb: $78
	sbc  c                                           ; $64bc: $99
	sbc  b                                           ; $64bd: $98
	sbc  b                                           ; $64be: $98
	sbc  b                                           ; $64bf: $98
	ld   l, c                                        ; $64c0: $69
	add  a                                           ; $64c1: $87
	ld   a, c                                        ; $64c2: $79
	add  [hl]                                        ; $64c3: $86
	adc  b                                           ; $64c4: $88
	ld   a, b                                        ; $64c5: $78
	ld   [hl], a                                     ; $64c6: $77
	or   l                                           ; $64c7: $b5
	adc  d                                           ; $64c8: $8a
	ld   l, c                                        ; $64c9: $69
	ld   e, e                                        ; $64ca: $5b
	ld   a, b                                        ; $64cb: $78
	and  [hl]                                        ; $64cc: $a6
	or   l                                           ; $64cd: $b5
	sbc  b                                           ; $64ce: $98
	adc  c                                           ; $64cf: $89
	ld   a, d                                        ; $64d0: $7a
	ld   a, c                                        ; $64d1: $79
	ld   a, b                                        ; $64d2: $78
	add  a                                           ; $64d3: $87
	add  a                                           ; $64d4: $87
	sub  a                                           ; $64d5: $97
	ld   [hl], a                                     ; $64d6: $77
	add  [hl]                                        ; $64d7: $86
	add  a                                           ; $64d8: $87
	ld   a, c                                        ; $64d9: $79
	ld   l, d                                        ; $64da: $6a
	ld   l, c                                        ; $64db: $69
	ld   [hl], a                                     ; $64dc: $77
	and  l                                           ; $64dd: $a5
	and  a                                           ; $64de: $a7
	adc  b                                           ; $64df: $88
	ld   a, c                                        ; $64e0: $79
	ld   a, c                                        ; $64e1: $79
	adc  b                                           ; $64e2: $88
	adc  b                                           ; $64e3: $88
	ld   a, b                                        ; $64e4: $78
	sub  a                                           ; $64e5: $97
	or   [hl]                                        ; $64e6: $b6
	sbc  b                                           ; $64e7: $98
	ld   a, c                                        ; $64e8: $79
	adc  b                                           ; $64e9: $88
	ld   a, c                                        ; $64ea: $79
	ld   a, b                                        ; $64eb: $78
	ld   a, b                                        ; $64ec: $78
	ld   [hl], a                                     ; $64ed: $77
	add  a                                           ; $64ee: $87
	adc  b                                           ; $64ef: $88
	add  a                                           ; $64f0: $87
	add  a                                           ; $64f1: $87
	ld   a, c                                        ; $64f2: $79
	sub  a                                           ; $64f3: $97
	add  a                                           ; $64f4: $87
	ld   a, c                                        ; $64f5: $79
	ld   a, b                                        ; $64f6: $78
	adc  c                                           ; $64f7: $89
	adc  b                                           ; $64f8: $88
	sbc  b                                           ; $64f9: $98
	ld   a, d                                        ; $64fa: $7a
	ld   a, b                                        ; $64fb: $78
	sub  a                                           ; $64fc: $97
	sub  [hl]                                        ; $64fd: $96
	adc  c                                           ; $64fe: $89
	ld   a, b                                        ; $64ff: $78
	ld   l, b                                        ; $6500: $68
	ld   a, b                                        ; $6501: $78
	add  a                                           ; $6502: $87
	sub  [hl]                                        ; $6503: $96
	sub  a                                           ; $6504: $97
	add  a                                           ; $6505: $87
	ld   l, b                                        ; $6506: $68
	ld   a, c                                        ; $6507: $79
	ld   a, b                                        ; $6508: $78
	adc  c                                           ; $6509: $89
	sub  a                                           ; $650a: $97
	xor  b                                           ; $650b: $a8
	adc  c                                           ; $650c: $89
	adc  c                                           ; $650d: $89
	adc  b                                           ; $650e: $88
	ld   a, b                                        ; $650f: $78
	add  a                                           ; $6510: $87
	sub  a                                           ; $6511: $97
	adc  c                                           ; $6512: $89
	ld   a, c                                        ; $6513: $79
	sub  a                                           ; $6514: $97
	sub  a                                           ; $6515: $97
	ld   a, b                                        ; $6516: $78
	add  [hl]                                        ; $6517: $86
	and  [hl]                                        ; $6518: $a6
	sbc  e                                           ; $6519: $9b
	ld   e, d                                        ; $651a: $5a
	ld   a, c                                        ; $651b: $79
	ld   a, b                                        ; $651c: $78
	sbc  c                                           ; $651d: $99
	sub  a                                           ; $651e: $97
	add  a                                           ; $651f: $87
	add  a                                           ; $6520: $87
	add  a                                           ; $6521: $87
	add  a                                           ; $6522: $87
	ld   a, c                                        ; $6523: $79
	adc  c                                           ; $6524: $89
	ld   a, c                                        ; $6525: $79
	ld   l, b                                        ; $6526: $68
	ld   a, c                                        ; $6527: $79
	adc  b                                           ; $6528: $88
	sbc  b                                           ; $6529: $98
	sub  [hl]                                        ; $652a: $96
	sub  a                                           ; $652b: $97
	adc  b                                           ; $652c: $88
	ld   a, c                                        ; $652d: $79
	adc  c                                           ; $652e: $89
	sub  a                                           ; $652f: $97
	ld   a, c                                        ; $6530: $79
	ld   l, c                                        ; $6531: $69
	add  [hl]                                        ; $6532: $86
	adc  b                                           ; $6533: $88
	add  a                                           ; $6534: $87
	ld   a, b                                        ; $6535: $78
	ld   [hl], a                                     ; $6536: $77
	and  [hl]                                        ; $6537: $a6
	or   a                                           ; $6538: $b7
	ld   a, d                                        ; $6539: $7a
	ld   c, h                                        ; $653a: $4c
	ld   l, c                                        ; $653b: $69
	sbc  b                                           ; $653c: $98
	and  h                                           ; $653d: $a4
	push bc                                          ; $653e: $c5
	sbc  b                                           ; $653f: $98
	ld   a, d                                        ; $6540: $7a
	ld   l, c                                        ; $6541: $69
	adc  b                                           ; $6542: $88
	ld   l, d                                        ; $6543: $6a
	ld   a, c                                        ; $6544: $79
	ld   a, b                                        ; $6545: $78
	sub  a                                           ; $6546: $97
	sub  a                                           ; $6547: $97
	sub  [hl]                                        ; $6548: $96
	and  a                                           ; $6549: $a7
	adc  c                                           ; $654a: $89
	ld   a, d                                        ; $654b: $7a
	ld   a, b                                        ; $654c: $78
	adc  b                                           ; $654d: $88
	ld   a, b                                        ; $654e: $78
	add  a                                           ; $654f: $87
	sbc  c                                           ; $6550: $99
	ld   a, c                                        ; $6551: $79
	add  [hl]                                        ; $6552: $86
	xor  b                                           ; $6553: $a8
	adc  b                                           ; $6554: $88
	sbc  b                                           ; $6555: $98
	adc  c                                           ; $6556: $89
	ld   a, b                                        ; $6557: $78
	ld   a, c                                        ; $6558: $79
	sbc  b                                           ; $6559: $98
	sub  a                                           ; $655a: $97
	sub  a                                           ; $655b: $97
	adc  c                                           ; $655c: $89
	ld   a, c                                        ; $655d: $79
	adc  b                                           ; $655e: $88
	adc  b                                           ; $655f: $88
	ld   a, b                                        ; $6560: $78
	sbc  b                                           ; $6561: $98
	add  a                                           ; $6562: $87
	sub  a                                           ; $6563: $97
	adc  b                                           ; $6564: $88
	adc  d                                           ; $6565: $8a
	ld   l, c                                        ; $6566: $69
	ld   c, d                                        ; $6567: $4a
	pop  af                                          ; $6568: $f1
	ret  c                                           ; $6569: $d8

	ld   c, l                                        ; $656a: $4d
	dec  a                                           ; $656b: $3d
	halt                                             ; $656c: $76
	or   [hl]                                        ; $656d: $b6
	add  [hl]                                        ; $656e: $86
	or   a                                           ; $656f: $b7
	sbc  b                                           ; $6570: $98
	ld   l, d                                        ; $6571: $6a
	ld   l, b                                        ; $6572: $68
	adc  b                                           ; $6573: $88
	sub  l                                           ; $6574: $95
	or   [hl]                                        ; $6575: $b6
	ld   a, c                                        ; $6576: $79
	ld   a, d                                        ; $6577: $7a
	ld   a, d                                        ; $6578: $7a
	adc  c                                           ; $6579: $89
	sbc  c                                           ; $657a: $99
	add  a                                           ; $657b: $87
	and  [hl]                                        ; $657c: $a6
	and  [hl]                                        ; $657d: $a6
	adc  c                                           ; $657e: $89
	ld   l, c                                        ; $657f: $69
	ld   l, c                                        ; $6580: $69
	ld   [hl], a                                     ; $6581: $77
	sbc  b                                           ; $6582: $98
	add  a                                           ; $6583: $87
	and  [hl]                                        ; $6584: $a6
	adc  c                                           ; $6585: $89
	ld   a, c                                        ; $6586: $79
	ld   l, d                                        ; $6587: $6a
	add  [hl]                                        ; $6588: $86
	or   a                                           ; $6589: $b7
	ld   a, c                                        ; $658a: $79
	sub  a                                           ; $658b: $97
	adc  d                                           ; $658c: $8a
	ld   l, c                                        ; $658d: $69
	ld   l, d                                        ; $658e: $6a
	ld   [hl], a                                     ; $658f: $77
	and  [hl]                                        ; $6590: $a6
	or   h                                           ; $6591: $b4
	and  a                                           ; $6592: $a7
	ld   a, c                                        ; $6593: $79
	ld   l, h                                        ; $6594: $6c
	ld   e, d                                        ; $6595: $5a
	ld   [hl], a                                     ; $6596: $77
	and  a                                           ; $6597: $a7

Call_0d2_6598:
Jump_0d2_6598:
	and  [hl]                                        ; $6598: $a6
	adc  b                                           ; $6599: $88
	halt                                             ; $659a: $76
	sbc  c                                           ; $659b: $99
	adc  b                                           ; $659c: $88
	ld   a, c                                        ; $659d: $79
	sub  a                                           ; $659e: $97
	add  a                                           ; $659f: $87
	adc  c                                           ; $65a0: $89
	ld   e, d                                        ; $65a1: $5a
	adc  c                                           ; $65a2: $89
	ld   [hl], a                                     ; $65a3: $77
	sub  [hl]                                        ; $65a4: $96
	and  [hl]                                        ; $65a5: $a6
	xor  b                                           ; $65a6: $a8
	ld   a, c                                        ; $65a7: $79

Call_0d2_65a8:
	sub  [hl]                                        ; $65a8: $96
	adc  c                                           ; $65a9: $89
	ld   a, c                                        ; $65aa: $79
	ld   e, c                                        ; $65ab: $59
	and  a                                           ; $65ac: $a7
	add  [hl]                                        ; $65ad: $86
	sbc  b                                           ; $65ae: $98
	ld   a, c                                        ; $65af: $79
	sub  [hl]                                        ; $65b0: $96
	add  a                                           ; $65b1: $87
	adc  e                                           ; $65b2: $8b
	ld   l, c                                        ; $65b3: $69
	ld   l, d                                        ; $65b4: $6a
	halt                                             ; $65b5: $76
	push bc                                          ; $65b6: $c5
	and  a                                           ; $65b7: $a7
	ld   a, c                                        ; $65b8: $79
	ld   l, c                                        ; $65b9: $69
	ld   a, c                                        ; $65ba: $79
	sub  [hl]                                        ; $65bb: $96
	adc  c                                           ; $65bc: $89
	ld   a, c                                        ; $65bd: $79
	adc  b                                           ; $65be: $88
	sub  a                                           ; $65bf: $97
	ld   a, b                                        ; $65c0: $78
	sbc  c                                           ; $65c1: $99
	ld   l, d                                        ; $65c2: $6a
	ld   a, b                                        ; $65c3: $78
	sub  a                                           ; $65c4: $97
	ld   a, c                                        ; $65c5: $79
	add  a                                           ; $65c6: $87
	sub  a                                           ; $65c7: $97
	add  l                                           ; $65c8: $85
	or   a                                           ; $65c9: $b7
	ld   l, c                                        ; $65ca: $69
	ld   a, b                                        ; $65cb: $78
	ld   a, e                                        ; $65cc: $7b
	ld   d, a                                        ; $65cd: $57
	adc  b                                           ; $65ce: $88
	sub  a                                           ; $65cf: $97
	sub  a                                           ; $65d0: $97
	sbc  d                                           ; $65d1: $9a
	ld   l, c                                        ; $65d2: $69
	and  e                                           ; $65d3: $a3
	xor  b                                           ; $65d4: $a8
	add  a                                           ; $65d5: $87
	ld   a, d                                        ; $65d6: $7a
	ld   d, a                                        ; $65d7: $57
	adc  b                                           ; $65d8: $88
	sub  [hl]                                        ; $65d9: $96
	ld   a, c                                        ; $65da: $79
	ld   l, c                                        ; $65db: $69
	ld   a, c                                        ; $65dc: $79
	add  l                                           ; $65dd: $85
	and  a                                           ; $65de: $a7
	and  a                                           ; $65df: $a7
	sbc  d                                           ; $65e0: $9a
	ld   e, h                                        ; $65e1: $5c
	ld   [hl], a                                     ; $65e2: $77
	sub  [hl]                                        ; $65e3: $96
	sub  [hl]                                        ; $65e4: $96
	sub  a                                           ; $65e5: $97
	adc  b                                           ; $65e6: $88
	ld   a, c                                        ; $65e7: $79
	ld   l, d                                        ; $65e8: $6a
	ld   e, c                                        ; $65e9: $59
	add  [hl]                                        ; $65ea: $86
	and  l                                           ; $65eb: $a5
	or   [hl]                                        ; $65ec: $b6
	adc  e                                           ; $65ed: $8b
	ld   c, c                                        ; $65ee: $49
	ld   l, b                                        ; $65ef: $68
	sub  a                                           ; $65f0: $97
	and  a                                           ; $65f1: $a7
	adc  c                                           ; $65f2: $89
	ld   l, b                                        ; $65f3: $68
	and  a                                           ; $65f4: $a7
	ld   a, c                                        ; $65f5: $79
	sbc  c                                           ; $65f6: $99
	ld   l, c                                        ; $65f7: $69
	ld   a, c                                        ; $65f8: $79
	ld   [hl], l                                     ; $65f9: $75
	rst  $10                                         ; $65fa: $d7
	ld   a, b                                        ; $65fb: $78
	ld   a, c                                        ; $65fc: $79
	ld   [hl], a                                     ; $65fd: $77
	adc  c                                           ; $65fe: $89
	and  [hl]                                        ; $65ff: $a6
	adc  d                                           ; $6600: $8a
	ld   l, c                                        ; $6601: $69
	ld   a, b                                        ; $6602: $78
	sub  a                                           ; $6603: $97
	sub  a                                           ; $6604: $97
	sub  a                                           ; $6605: $97
	sub  a                                           ; $6606: $97
	sbc  c                                           ; $6607: $99
	ld   e, h                                        ; $6608: $5c
	ld   c, c                                        ; $6609: $49
	and  h                                           ; $660a: $a4
	rst  ToBoot                                         ; $660b: $c7
	ld   l, c                                        ; $660c: $69
	ld   l, d                                        ; $660d: $6a
	ld   h, a                                        ; $660e: $67
	or   h                                           ; $660f: $b4
	or   a                                           ; $6610: $b7

Call_0d2_6611:
	ld   e, e                                        ; $6611: $5b
	ld   e, c                                        ; $6612: $59
	sub  a                                           ; $6613: $97
	or   a                                           ; $6614: $b7
	adc  d                                           ; $6615: $8a
	ld   e, d                                        ; $6616: $5a
	adc  b                                           ; $6617: $88
	sub  l                                           ; $6618: $95
	cp   b                                           ; $6619: $b8
	ld   l, c                                        ; $661a: $69
	ld   l, c                                        ; $661b: $69
	sub  h                                           ; $661c: $94
	xor  b                                           ; $661d: $a8
	and  l                                           ; $661e: $a5
	adc  d                                           ; $661f: $8a
	ld   c, d                                        ; $6620: $4a
	ld   a, c                                        ; $6621: $79
	add  l                                           ; $6622: $85
	and  a                                           ; $6623: $a7
	ld   a, b                                        ; $6624: $78
	ld   a, e                                        ; $6625: $7b
	ld   e, b                                        ; $6626: $58
	sub  a                                           ; $6627: $97
	and  a                                           ; $6628: $a7
	ld   a, d                                        ; $6629: $7a
	sub  a                                           ; $662a: $97
	adc  c                                           ; $662b: $89
	adc  d                                           ; $662c: $8a
	xor  b                                           ; $662d: $a8
	cp   b                                           ; $662e: $b8
	sbc  c                                           ; $662f: $99
	adc  c                                           ; $6630: $89
	ld   l, d                                        ; $6631: $6a
	ld   l, b                                        ; $6632: $68
	halt                                             ; $6633: $76
	and  l                                           ; $6634: $a5
	sbc  d                                           ; $6635: $9a
	ld   a, b                                        ; $6636: $78
	ld   [hl], a                                     ; $6637: $77
	ld   d, l                                        ; $6638: $55
	ld   h, l                                        ; $6639: $65
	ld   h, l                                        ; $663a: $65
	ld   d, l                                        ; $663b: $55
	halt                                             ; $663c: $76
	ld   a, b                                        ; $663d: $78
	cp   d                                           ; $663e: $ba
	sbc  h                                           ; $663f: $9c
	cp   e                                           ; $6640: $bb
	call z, $e8bd                                    ; $6641: $cc $bd $e8
	res  5, e                                        ; $6644: $cb $ab
	ld   a, d                                        ; $6646: $7a
	adc  b                                           ; $6647: $88
	add  l                                           ; $6648: $85
	sub  e                                           ; $6649: $93
	ld   d, h                                        ; $664a: $54
	inc  d                                           ; $664b: $14
	ld   b, e                                        ; $664c: $43
	inc  hl                                          ; $664d: $23
	ld   [hl], e                                     ; $664e: $73
	jr   z, jr_0d2_66a8                              ; $664f: $28 $57

	add  a                                           ; $6651: $87
	set  1, l                                        ; $6652: $cb $cd
	sbc  $ec                                         ; $6654: $de $ec
	db   $ed                                         ; $6656: $ed
	call c, $aabd                                    ; $6657: $dc $bd $aa
	xor  b                                           ; $665a: $a8
	add  a                                           ; $665b: $87
	ld   l, b                                        ; $665c: $68
	ld   d, [hl]                                     ; $665d: $56
	ld   [hl], h                                     ; $665e: $74
	ld   d, c                                        ; $665f: $51
	ld   [de], a                                     ; $6660: $12
	ld   d, d                                        ; $6661: $52
	dec  d                                           ; $6662: $15
	ld   d, c                                        ; $6663: $51
	inc  [hl]                                        ; $6664: $34
	halt                                             ; $6665: $76
	ld   a, d                                        ; $6666: $7a
	xor  [hl]                                        ; $6667: $ae
	db   $ed                                         ; $6668: $ed
	rst  $38                                         ; $6669: $ff
	xor  $fe                                         ; $666a: $ee $fe
	set  1, h                                        ; $666c: $cb $cc
	cp   c                                           ; $666e: $b9
	xor  d                                           ; $666f: $aa
	xor  b                                           ; $6670: $a8
	ld   a, d                                        ; $6671: $7a
	ld   h, [hl]                                     ; $6672: $66
	ld   b, d                                        ; $6673: $42
	ld   hl, $3111                                   ; $6674: $21 $11 $31
	dec  d                                           ; $6677: $15
	ld   de, $7725                                   ; $6678: $11 $25 $77
	sbc  l                                           ; $667b: $9d
	rst  $38                                         ; $667c: $ff
	rst  $38                                         ; $667d: $ff
	rst  $38                                         ; $667e: $ff
	rst  $38                                         ; $667f: $ff
	cp   $bb                                         ; $6680: $fe $bb
	ret  z                                           ; $6682: $c8

	sbc  d                                           ; $6683: $9a
	adc  d                                           ; $6684: $8a
	ld   a, c                                        ; $6685: $79
	sub  l                                           ; $6686: $95
	inc  [hl]                                        ; $6687: $34
	ld   b, c                                        ; $6688: $41
	ld   de, $1114                                   ; $6689: $11 $14 $11
	ld   d, d                                        ; $668c: $52
	ld   de, $7959                                   ; $668d: $11 $59 $79
	rst  $28                                         ; $6690: $ef
	rst  $38                                         ; $6691: $ff
	rst  $38                                         ; $6692: $ff
	rst  $38                                         ; $6693: $ff
	rst  $38                                         ; $6694: $ff
	db   $ec                                         ; $6695: $ec
	db   $eb                                         ; $6696: $eb
	xor  e                                           ; $6697: $ab
	and  [hl]                                        ; $6698: $a6
	ld   [hl], a                                     ; $6699: $77
	ld   h, a                                        ; $669a: $67
	ld   b, d                                        ; $669b: $42
	inc  sp                                          ; $669c: $33
	ld   de, $6112                                   ; $669d: $11 $12 $61
	add  hl, de                                      ; $66a0: $19
	ld   de, $d829                                   ; $66a1: $11 $29 $d8
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	rst  JumpTable                                         ; $66a6: $df
	rst  $38                                         ; $66a7: $ff

jr_0d2_66a8:
	rst  $38                                         ; $66a8: $ff
	db   $fd                                         ; $66a9: $fd
	xor  h                                           ; $66aa: $ac
	adc  c                                           ; $66ab: $89
	sub  h                                           ; $66ac: $94
	ld   a, b                                        ; $66ad: $78
	ld   d, d                                        ; $66ae: $52
	inc  h                                           ; $66af: $24
	ld   de, $1611                                   ; $66b0: $11 $11 $16
	ld   de, $1143                                   ; $66b3: $11 $43 $11
	ld   e, [hl]                                     ; $66b6: $5e

Call_0d2_66b7:
	cp   [hl]                                        ; $66b7: $be
	rst  $28                                         ; $66b8: $ef
	rst  $38                                         ; $66b9: $ff
	rst  $38                                         ; $66ba: $ff
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	ei                                               ; $66bd: $fb
	cp   b                                           ; $66be: $b8
	sbc  e                                           ; $66bf: $9b
	ld   h, a                                        ; $66c0: $67
	ld   h, l                                        ; $66c1: $65
	ld   b, c                                        ; $66c2: $41
	ld   de, $1111                                   ; $66c3: $11 $11 $11
	ld   de, $2314                                   ; $66c6: $11 $14 $23
	inc  a                                           ; $66c9: $3c
	db   $dd                                         ; $66ca: $dd
	rst  $38                                         ; $66cb: $ff
	rst  $38                                         ; $66cc: $ff
	rst  $38                                         ; $66cd: $ff
	rst  $38                                         ; $66ce: $ff
	rst  $38                                         ; $66cf: $ff
	db   $fc                                         ; $66d0: $fc
	cp   h                                           ; $66d1: $bc
	ld   [hl], a                                     ; $66d2: $77
	sub  [hl]                                        ; $66d3: $96
	halt                                             ; $66d4: $76
	ld   b, e                                        ; $66d5: $43
	ld   de, $1111                                   ; $66d6: $11 $11 $11
	ld   de, $1311                                   ; $66d9: $11 $11 $13
	ld   c, c                                        ; $66dc: $49
	xor  l                                           ; $66dd: $ad
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
	rst  $38                                         ; $66e0: $ff
	rst  $38                                         ; $66e1: $ff
	rst  $38                                         ; $66e2: $ff
	db   $fc                                         ; $66e3: $fc
	res  5, c                                        ; $66e4: $cb $a9
	sbc  b                                           ; $66e6: $98
	add  a                                           ; $66e7: $87
	ld   h, l                                        ; $66e8: $65
	ld   hl, $1111                                   ; $66e9: $21 $11 $11
	ld   de, $1211                                   ; $66ec: $11 $11 $12
	ld   e, b                                        ; $66ef: $58
	sbc  h                                           ; $66f0: $9c
	rst  $28                                         ; $66f1: $ef
	rst  $38                                         ; $66f2: $ff
	rst  $38                                         ; $66f3: $ff
	rst  $38                                         ; $66f4: $ff
	rst  $38                                         ; $66f5: $ff
	db   $fd                                         ; $66f6: $fd
	jp   c, $ba9a                                    ; $66f7: $da $9a $ba

	xor  d                                           ; $66fa: $aa
	halt                                             ; $66fb: $76
	ld   b, e                                        ; $66fc: $43
	ld   de, $1111                                   ; $66fd: $11 $11 $11
	ld   de, $1511                                   ; $6700: $11 $11 $15
	sbc  e                                           ; $6703: $9b
	sbc  $ef                                         ; $6704: $de $ef
	rst  $38                                         ; $6706: $ff
	rst  $38                                         ; $6707: $ff
	rst  $38                                         ; $6708: $ff
	rst  $38                                         ; $6709: $ff
	cp   $bc                                         ; $670a: $fe $bc
	cp   e                                           ; $670c: $bb
	cp   d                                           ; $670d: $ba
	and  a                                           ; $670e: $a7
	ld   d, e                                        ; $670f: $53
	ld   de, $1111                                   ; $6710: $11 $11 $11
	ld   de, $1211                                   ; $6713: $11 $11 $12
	ld   e, b                                        ; $6716: $58
	cp   l                                           ; $6717: $bd
	db   $ed                                         ; $6718: $ed
	rst  $38                                         ; $6719: $ff
	rst  $38                                         ; $671a: $ff
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	cp   $ec                                         ; $671d: $fe $ec
	cp   e                                           ; $671f: $bb
	cp   e                                           ; $6720: $bb
	xor  c                                           ; $6721: $a9
	ld   [hl], l                                     ; $6722: $75
	ld   b, e                                        ; $6723: $43
	ld   de, $1111                                   ; $6724: $11 $11 $11
	ld   de, $1211                                   ; $6727: $11 $11 $12
	ld   e, b                                        ; $672a: $58
	cp   h                                           ; $672b: $bc
	sbc  $ff                                         ; $672c: $de $ff
	rst  $38                                         ; $672e: $ff
	rst  $38                                         ; $672f: $ff
	rst  $38                                         ; $6730: $ff
	rst  $38                                         ; $6731: $ff
	db   $fd                                         ; $6732: $fd
	res  5, d                                        ; $6733: $cb $aa
	sub  a                                           ; $6735: $97
	ld   d, e                                        ; $6736: $53
	ld   hl, $1111                                   ; $6737: $21 $11 $11
	ld   de, $1111                                   ; $673a: $11 $11 $11
	inc  d                                           ; $673d: $14
	ld   a, c                                        ; $673e: $79
	adc  $ef                                         ; $673f: $ce $ef
	rst  $38                                         ; $6741: $ff
	rst  $38                                         ; $6742: $ff
	rst  $38                                         ; $6743: $ff
	rst  $38                                         ; $6744: $ff
	cp   $ec                                         ; $6745: $fe $ec
	cp   e                                           ; $6747: $bb
	sbc  c                                           ; $6748: $99
	halt                                             ; $6749: $76
	ld   b, e                                        ; $674a: $43
	ld   hl, $1111                                   ; $674b: $21 $11 $11
	ld   de, $1111                                   ; $674e: $11 $11 $11
	inc  d                                           ; $6751: $14
	ld   a, c                                        ; $6752: $79
	call $ffef                                       ; $6753: $cd $ef $ff
	rst  $38                                         ; $6756: $ff
	rst  $38                                         ; $6757: $ff
	rst  $38                                         ; $6758: $ff
	rst  $38                                         ; $6759: $ff
	db   $ec                                         ; $675a: $ec
	xor  d                                           ; $675b: $aa
	sbc  b                                           ; $675c: $98
	ld   h, h                                        ; $675d: $64
	ld   sp, $1111                                   ; $675e: $31 $11 $11
	ld   de, $1111                                   ; $6761: $11 $11 $11
	ld   de, $9b36                                   ; $6764: $11 $36 $9b
	sbc  $ff                                         ; $6767: $de $ff
	rst  $38                                         ; $6769: $ff
	rst  $38                                         ; $676a: $ff
	rst  $38                                         ; $676b: $ff
	rst  $38                                         ; $676c: $ff
	db   $fd                                         ; $676d: $fd
	res  7, c                                        ; $676e: $cb $b9
	sub  a                                           ; $6770: $97
	ld   d, h                                        ; $6771: $54
	ld   sp, $1111                                   ; $6772: $31 $11 $11
	ld   de, $1111                                   ; $6775: $11 $11 $11
	ld   de, $9c36                                   ; $6778: $11 $36 $9c
	adc  $ff                                         ; $677b: $ce $ff
	rst  $38                                         ; $677d: $ff
	rst  $38                                         ; $677e: $ff
	rst  $38                                         ; $677f: $ff
	rst  $38                                         ; $6780: $ff
	cp   $dc                                         ; $6781: $fe $dc
	cp   c                                           ; $6783: $b9
	add  a                                           ; $6784: $87
	ld   d, e                                        ; $6785: $53
	ld   de, $1111                                   ; $6786: $11 $11 $11
	ld   de, $1111                                   ; $6789: $11 $11 $11
	ld   [de], a                                     ; $678c: $12
	ld   e, b                                        ; $678d: $58
	cp   l                                           ; $678e: $bd
	rst  JumpTable                                         ; $678f: $df
	rst  $38                                         ; $6790: $ff
	rst  $38                                         ; $6791: $ff
	rst  $38                                         ; $6792: $ff
	rst  $38                                         ; $6793: $ff
	rst  $38                                         ; $6794: $ff
	db   $ed                                         ; $6795: $ed
	jp   z, Jump_0d2_76a8                            ; $6796: $ca $a8 $76

	ld   b, e                                        ; $6799: $43
	ld   de, $1111                                   ; $679a: $11 $11 $11
	ld   de, $1111                                   ; $679d: $11 $11 $11
	inc  de                                          ; $67a0: $13
	ld   e, b                                        ; $67a1: $58
	call z, $ffef                                    ; $67a2: $cc $ef $ff
	rst  $38                                         ; $67a5: $ff
	rst  $38                                         ; $67a6: $ff
	rst  $38                                         ; $67a7: $ff
	rst  $38                                         ; $67a8: $ff
	db   $fd                                         ; $67a9: $fd
	db   $db                                         ; $67aa: $db
	xor  b                                           ; $67ab: $a8
	ld   [hl], l                                     ; $67ac: $75
	ld   [hl-], a                                    ; $67ad: $32
	ld   de, $1111                                   ; $67ae: $11 $11 $11
	ld   de, $1111                                   ; $67b1: $11 $11 $11
	inc  d                                           ; $67b4: $14
	ld   a, d                                        ; $67b5: $7a
	call $ffff                                       ; $67b6: $cd $ff $ff
	rst  $38                                         ; $67b9: $ff
	rst  $38                                         ; $67ba: $ff
	rst  $38                                         ; $67bb: $ff
	rst  $38                                         ; $67bc: $ff
	db   $ed                                         ; $67bd: $ed
	cp   e                                           ; $67be: $bb
	sub  a                                           ; $67bf: $97
	ld   h, h                                        ; $67c0: $64
	ld   sp, $1111                                   ; $67c1: $31 $11 $11
	ld   de, $1111                                   ; $67c4: $11 $11 $11
	ld   de, $9c36                                   ; $67c7: $11 $36 $9c
	sbc  $ff                                         ; $67ca: $de $ff
	rst  $38                                         ; $67cc: $ff
	rst  $38                                         ; $67cd: $ff
	rst  $38                                         ; $67ce: $ff
	rst  $38                                         ; $67cf: $ff
	cp   $db                                         ; $67d0: $fe $db
	cp   d                                           ; $67d2: $ba
	add  [hl]                                        ; $67d3: $86
	ld   b, c                                        ; $67d4: $41
	ld   de, $1111                                   ; $67d5: $11 $11 $11
	ld   de, $1111                                   ; $67d8: $11 $11 $11
	ld   d, $9e                                      ; $67db: $16 $9e
	rst  $38                                         ; $67dd: $ff
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
	rst  $38                                         ; $67e0: $ff
	rst  $38                                         ; $67e1: $ff
	rst  $38                                         ; $67e2: $ff
	db   $eb                                         ; $67e3: $eb
	cp   d                                           ; $67e4: $ba
	sbc  c                                           ; $67e5: $99
	add  a                                           ; $67e6: $87
	ld   d, c                                        ; $67e7: $51
	ld   de, $1111                                   ; $67e8: $11 $11 $11
	ld   d, a                                        ; $67eb: $57
	adc  $66                                         ; $67ec: $ce $66
	ld   d, a                                        ; $67ee: $57
	sbc  $fd                                         ; $67ef: $de $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67f1: $cf
	rst  $38                                         ; $67f2: $ff
	rst  $38                                         ; $67f3: $ff
	db   $fd                                         ; $67f4: $fd
	cp   $dc                                         ; $67f5: $fe $dc
	halt                                             ; $67f7: $76
	ld   d, l                                        ; $67f8: $55
	ld   h, e                                        ; $67f9: $63
	ld   de, $1111                                   ; $67fa: $11 $11 $11
	ld   a, [de]                                     ; $67fd: $1a
	rst  $38                                         ; $67fe: $ff
	cp   $87                                         ; $67ff: $fe $87
	ld   a, d                                        ; $6801: $7a
	cp   h                                           ; $6802: $bc
	cp   e                                           ; $6803: $bb
	rst  $38                                         ; $6804: $ff
	rst  $38                                         ; $6805: $ff
	db   $fc                                         ; $6806: $fc
	adc  e                                           ; $6807: $8b
	cp   c                                           ; $6808: $b9
	add  d                                           ; $6809: $82
	ld   de, $1111                                   ; $680a: $11 $11 $11
	ld   de, $df11                                   ; $680d: $11 $11 $df
	rst  $38                                         ; $6810: $ff
	db   $f4                                         ; $6811: $f4
	ld   c, b                                        ; $6812: $48
	db   $fd                                         ; $6813: $fd
	ret                                              ; $6814: $c9


	ld   a, a                                        ; $6815: $7f
	rst  $38                                         ; $6816: $ff
	db   $fd                                         ; $6817: $fd
	add  [hl]                                        ; $6818: $86
	sbc  e                                           ; $6819: $9b
	sub  h                                           ; $681a: $94
	ld   de, $1111                                   ; $681b: $11 $11 $11
	ld   de, $ff1f                                   ; $681e: $11 $1f $ff
	db   $fd                                         ; $6821: $fd
	ld   de, $ff4e                                   ; $6822: $11 $4e $ff
	sbc  c                                           ; $6825: $99
	rst  $38                                         ; $6826: $ff
	rst  $38                                         ; $6827: $ff
	or   a                                           ; $6828: $b7
	ld   a, e                                        ; $6829: $7b
	jp   z, $1131                                    ; $682a: $ca $31 $11

	ld   de, $1111                                   ; $682d: $11 $11 $11
	rra                                              ; $6830: $1f
	rst  $38                                         ; $6831: $ff
	ld   a, [$ef36]                                  ; $6832: $fa $36 $ef
	jp   c, $ff8d                                    ; $6835: $da $8d $ff

	rst  $38                                         ; $6838: $ff
	and  a                                           ; $6839: $a7
	cp   l                                           ; $683a: $bd
	add  $11                                         ; $683b: $c6 $11
	ld   de, $1111                                   ; $683d: $11 $11 $11
	rra                                              ; $6840: $1f
	rst  $38                                         ; $6841: $ff
	or   $11                                         ; $6842: $f6 $11
	ld   a, a                                        ; $6844: $7f
	rst  $38                                         ; $6845: $ff
	xor  d                                           ; $6846: $aa
	rst  $38                                         ; $6847: $ff
	rst  $38                                         ; $6848: $ff
	xor  d                                           ; $6849: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $684a: $cf
	ret  c                                           ; $684b: $d8

	ld   de, $1111                                   ; $684c: $11 $11 $11
	ld   de, $7f11                                   ; $684f: $11 $11 $7f
	rst  $38                                         ; $6852: $ff
	and  $15                                         ; $6853: $e6 $15
	adc  $b9                                         ; $6855: $ce $b9
	cp   a                                           ; $6857: $bf
	rst  $38                                         ; $6858: $ff
	db   $fc                                         ; $6859: $fc
	ld   [hl], a                                     ; $685a: $77
	cp   l                                           ; $685b: $bd
	sub  c                                           ; $685c: $91
	ld   de, $1111                                   ; $685d: $11 $11 $11
	inc  d                                           ; $6860: $14
	rst  $38                                         ; $6861: $ff
	rst  $38                                         ; $6862: $ff
	ld   de, $ff17                                   ; $6863: $11 $17 $ff
	ld   hl, sp-$41                                  ; $6866: $f8 $bf
	rst  $38                                         ; $6868: $ff
	ret                                              ; $6869: $c9


	adc  $fc                                         ; $686a: $ce $fc
	ld   d, c                                        ; $686c: $51
	ld   de, $1111                                   ; $686d: $11 $11 $11
	ld   de, $ff1f                                   ; $6870: $11 $1f $ff
	ld   sp, hl                                      ; $6873: $f9
	ld   de, $ddae                                   ; $6874: $11 $ae $dd
	xor  h                                           ; $6877: $ac
	rst  $38                                         ; $6878: $ff
	cp   $96                                         ; $6879: $fe $96
	xor  l                                           ; $687b: $ad
	sub  h                                           ; $687c: $94
	ld   de, $1111                                   ; $687d: $11 $11 $11
	ld   a, [de]                                     ; $6880: $1a
	rst  $38                                         ; $6881: $ff
	rst  $38                                         ; $6882: $ff
	ld   hl, $ff1b                                   ; $6883: $21 $1b $ff
	jp   c, $ffcf                                    ; $6886: $da $cf $ff

	call z, $fbdf                                    ; $6889: $cc $df $fb
	ld   sp, $1111                                   ; $688c: $31 $11 $11
	ld   de, $bf11                                   ; $688f: $11 $11 $bf
	rst  $38                                         ; $6892: $ff
	di                                               ; $6893: $f3
	ld   d, $ee                                      ; $6894: $16 $ee
	call c, $ffaf                                    ; $6896: $dc $af $ff
	ei                                               ; $6899: $fb
	xor  d                                           ; $689a: $aa
	jp   c, $1121                                    ; $689b: $da $21 $11

	ld   de, $6f11                                   ; $689e: $11 $11 $6f
	rst  $38                                         ; $68a1: $ff
	or   $35                                         ; $68a2: $f6 $35
	rst  $28                                         ; $68a4: $ef
	res  5, e                                        ; $68a5: $cb $ab
	rst  $38                                         ; $68a7: $ff
	db   $fc                                         ; $68a8: $fc
	call $71ee                                       ; $68a9: $cd $ee $71
	ld   de, $1111                                   ; $68ac: $11 $11 $11
	ld   de, $ffdf                                   ; $68af: $11 $df $ff
	push af                                          ; $68b2: $f5
	ld   c, c                                        ; $68b3: $49
	db   $dd                                         ; $68b4: $dd
	set  3, a                                        ; $68b5: $cb $df
	rst  $38                                         ; $68b7: $ff
	cp   d                                           ; $68b8: $ba
	cp   [hl]                                        ; $68b9: $be
	db   $fc                                         ; $68ba: $fc
	ld   d, c                                        ; $68bb: $51
	ld   de, $1111                                   ; $68bc: $11 $11 $11
	ld   l, a                                        ; $68bf: $6f
	rst  $38                                         ; $68c0: $ff
	ld   hl, sp+$68                                  ; $68c1: $f8 $68
	db   $ec                                         ; $68c3: $ec
	sbc  d                                           ; $68c4: $9a
	cp   a                                           ; $68c5: $bf
	rst  $38                                         ; $68c6: $ff
	cp   d                                           ; $68c7: $ba
	cp   a                                           ; $68c8: $bf
	db   $fd                                         ; $68c9: $fd
	sub  e                                           ; $68ca: $93
	ld   de, $1111                                   ; $68cb: $11 $11 $11
	add  hl, de                                      ; $68ce: $19
	rst  $38                                         ; $68cf: $ff
	rst  $38                                         ; $68d0: $ff
	xor  b                                           ; $68d1: $a8
	call Call_0d2_7d98                               ; $68d2: $cd $98 $7d
	rst  $38                                         ; $68d5: $ff
	ld   a, [$de89]                                  ; $68d6: $fa $89 $de
	swap c                                           ; $68d9: $cb $31
	ld   de, $1111                                   ; $68db: $11 $11 $11
	xor  a                                           ; $68de: $af
	rst  $38                                         ; $68df: $ff
	ei                                               ; $68e0: $fb
	xor  h                                           ; $68e1: $ac
	sub  [hl]                                        ; $68e2: $96
	sbc  d                                           ; $68e3: $9a
	rst  $38                                         ; $68e4: $ff
	ld   [$ac88], a                                  ; $68e5: $ea $88 $ac
	cp   e                                           ; $68e8: $bb
	add  c                                           ; $68e9: $81
	ld   de, $1111                                   ; $68ea: $11 $11 $11
	ld   a, a                                        ; $68ed: $7f
	rst  $38                                         ; $68ee: $ff
	cp   $cc                                         ; $68ef: $fe $cc
	and  [hl]                                        ; $68f1: $a6
	sbc  c                                           ; $68f2: $99
	rst  $38                                         ; $68f3: $ff
	db   $fd                                         ; $68f4: $fd
	halt                                             ; $68f5: $76
	ld   l, c                                        ; $68f6: $69
	sbc  h                                           ; $68f7: $9c
	or   [hl]                                        ; $68f8: $b6
	ld   de, $1111                                   ; $68f9: $11 $11 $11
	dec  de                                          ; $68fc: $1b
	rst  $38                                         ; $68fd: $ff
	rst  $38                                         ; $68fe: $ff
	db   $eb                                         ; $68ff: $eb
	sub  a                                           ; $6900: $97
	sbc  e                                           ; $6901: $9b
	rst  $28                                         ; $6902: $ef
	cp   $a6                                         ; $6903: $fe $a6
	ld   c, b                                        ; $6905: $48
	sbc  e                                           ; $6906: $9b
	xor  c                                           ; $6907: $a9
	ld   b, c                                        ; $6908: $41
	ld   de, $1511                                   ; $6909: $11 $11 $15
	rst  $38                                         ; $690c: $ff
	rst  $38                                         ; $690d: $ff
	cp   $96                                         ; $690e: $fe $96
	ld   d, a                                        ; $6910: $57
	rst  $28                                         ; $6911: $ef
	rst  $38                                         ; $6912: $ff
	and  [hl]                                        ; $6913: $a6
	ld   b, h                                        ; $6914: $44
	ld   d, a                                        ; $6915: $57
	xor  e                                           ; $6916: $ab
	and  h                                           ; $6917: $a4
	ld   de, $1411                                   ; $6918: $11 $11 $14
	rst  JumpTable                                         ; $691b: $df
	rst  $38                                         ; $691c: $ff
	rst  $38                                         ; $691d: $ff
	or   h                                           ; $691e: $b4
	ld   [hl], $df                                   ; $691f: $36 $df
	rst  $38                                         ; $6921: $ff
	rst  $10                                         ; $6922: $d7
	inc  hl                                          ; $6923: $23
	ld   d, a                                        ; $6924: $57
	adc  c                                           ; $6925: $89
	ld   [hl], h                                     ; $6926: $74
	ld   de, $1111                                   ; $6927: $11 $11 $11
	ld   a, a                                        ; $692a: $7f
	rst  $38                                         ; $692b: $ff
	rst  $38                                         ; $692c: $ff
	rst  $30                                         ; $692d: $f7
	ld   b, [hl]                                     ; $692e: $46
	cp   a                                           ; $692f: $bf
	rst  $38                                         ; $6930: $ff
	db   $eb                                         ; $6931: $eb
	halt                                             ; $6932: $76
	ld   d, e                                        ; $6933: $53
	ld   c, c                                        ; $6934: $49
	cp   c                                           ; $6935: $b9
	ld   b, c                                        ; $6936: $41
	ld   de, $1711                                   ; $6937: $11 $11 $17
	rst  $38                                         ; $693a: $ff
	rst  $38                                         ; $693b: $ff
	cp   $66                                         ; $693c: $fe $66
	ld   a, h                                        ; $693e: $7c
	rst  $38                                         ; $693f: $ff
	db   $fd                                         ; $6940: $fd
	add  $54                                         ; $6941: $c6 $54
	ld   b, l                                        ; $6943: $45
	adc  d                                           ; $6944: $8a
	ld   [hl], e                                     ; $6945: $73
	ld   de, $1611                                   ; $6946: $11 $11 $16
	rst  JumpTable                                         ; $6949: $df
	rst  $38                                         ; $694a: $ff
	cp   $d8                                         ; $694b: $fe $d8
	sbc  b                                           ; $694d: $98
	rst  JumpTable                                         ; $694e: $df
	rst  $38                                         ; $694f: $ff
	cp   b                                           ; $6950: $b8
	ld   b, h                                        ; $6951: $44
	inc  hl                                          ; $6952: $23
	ld   e, b                                        ; $6953: $58
	and  l                                           ; $6954: $a5
	ld   bc, $1111                                   ; $6955: $01 $11 $11
	ld   e, h                                        ; $6958: $5c
	rst  JumpTable                                         ; $6959: $df
	rst  $38                                         ; $695a: $ff
	jp   hl                                          ; $695b: $e9


	cp   e                                           ; $695c: $bb
	cp   h                                           ; $695d: $bc
	rst  $38                                         ; $695e: $ff
	ei                                               ; $695f: $fb
	ld   h, l                                        ; $6960: $65
	ld   b, e                                        ; $6961: $43
	inc  h                                           ; $6962: $24
	ld   a, c                                        ; $6963: $79
	ld   h, h                                        ; $6964: $64
	ld   de, $3311                                   ; $6965: $11 $11 $33
	adc  a                                           ; $6968: $8f
	rst  $38                                         ; $6969: $ff
	rst  $38                                         ; $696a: $ff
	reti                                             ; $696b: $d9


	xor  h                                           ; $696c: $ac
	call z, $c9ce                                    ; $696d: $cc $ce $c9
	ld   h, h                                        ; $6970: $64
	ld   b, l                                        ; $6971: $45
	ld   a, b                                        ; $6972: $78
	ld   [hl], l                                     ; $6973: $75
	ld   hl, $1121                                   ; $6974: $21 $21 $11
	ld   c, c                                        ; $6977: $49
	sbc  c                                           ; $6978: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6979: $cf
	db   $fc                                         ; $697a: $fc
	sbc  e                                           ; $697b: $9b
	adc  $ec                                         ; $697c: $ce $ec
	db   $dd                                         ; $697e: $dd
	ret                                              ; $697f: $c9


	ld   h, a                                        ; $6980: $67
	halt                                             ; $6981: $76
	ld   l, c                                        ; $6982: $69
	halt                                             ; $6983: $76
	ld   d, a                                        ; $6984: $57
	ld   h, c                                        ; $6985: $61
	ld   de, $5646                                   ; $6986: $11 $46 $56
	ld   a, c                                        ; $6989: $79
	res  3, d                                        ; $698a: $cb $9a
	cp   h                                           ; $698c: $bc
	cp   b                                           ; $698d: $b8
	xor  h                                           ; $698e: $ac
	call $c9bb                                       ; $698f: $cd $bb $c9
	cp   e                                           ; $6992: $bb
	adc  d                                           ; $6993: $8a
	ld   [hl], l                                     ; $6994: $75
	ld   [hl], a                                     ; $6995: $77
	add  h                                           ; $6996: $84
	ld   h, [hl]                                     ; $6997: $66
	ld   d, l                                        ; $6998: $55
	ld   d, a                                        ; $6999: $57
	ld   h, [hl]                                     ; $699a: $66
	ld   [hl], a                                     ; $699b: $77
	adc  d                                           ; $699c: $8a
	adc  c                                           ; $699d: $89
	xor  c                                           ; $699e: $a9
	sbc  d                                           ; $699f: $9a
	cp   h                                           ; $69a0: $bc
	cp   d                                           ; $69a1: $ba
	xor  e                                           ; $69a2: $ab
	res  3, b                                        ; $69a3: $cb $98
	adc  d                                           ; $69a5: $8a
	add  a                                           ; $69a6: $87
	sbc  c                                           ; $69a7: $99
	sbc  c                                           ; $69a8: $99
	ld   h, [hl]                                     ; $69a9: $66
	ld   a, c                                        ; $69aa: $79
	sbc  b                                           ; $69ab: $98
	ld   a, c                                        ; $69ac: $79
	add  a                                           ; $69ad: $87
	ld   [hl], a                                     ; $69ae: $77
	ld   [hl], a                                     ; $69af: $77
	xor  c                                           ; $69b0: $a9
	adc  c                                           ; $69b1: $89
	adc  d                                           ; $69b2: $8a
	sub  [hl]                                        ; $69b3: $96
	ld   a, c                                        ; $69b4: $79
	adc  b                                           ; $69b5: $88
	sub  a                                           ; $69b6: $97
	adc  c                                           ; $69b7: $89
	xor  b                                           ; $69b8: $a8
	ld   a, c                                        ; $69b9: $79
	sbc  b                                           ; $69ba: $98
	sbc  c                                           ; $69bb: $99
	xor  d                                           ; $69bc: $aa
	cp   c                                           ; $69bd: $b9
	xor  b                                           ; $69be: $a8
	adc  d                                           ; $69bf: $8a
	xor  b                                           ; $69c0: $a8
	xor  d                                           ; $69c1: $aa
	sub  a                                           ; $69c2: $97
	ld   [hl], a                                     ; $69c3: $77
	ld   d, [hl]                                     ; $69c4: $56
	add  [hl]                                        ; $69c5: $86
	ld   l, b                                        ; $69c6: $68
	ld   h, [hl]                                     ; $69c7: $66
	halt                                             ; $69c8: $76
	adc  d                                           ; $69c9: $8a
	ld   a, b                                        ; $69ca: $78
	sbc  b                                           ; $69cb: $98
	xor  c                                           ; $69cc: $a9
	sbc  c                                           ; $69cd: $99
	sbc  b                                           ; $69ce: $98
	adc  b                                           ; $69cf: $88
	adc  b                                           ; $69d0: $88
	xor  c                                           ; $69d1: $a9
	adc  b                                           ; $69d2: $88
	add  a                                           ; $69d3: $87
	add  a                                           ; $69d4: $87
	ld   a, b                                        ; $69d5: $78
	adc  b                                           ; $69d6: $88
	halt                                             ; $69d7: $76
	ld   a, b                                        ; $69d8: $78
	adc  b                                           ; $69d9: $88
	adc  b                                           ; $69da: $88
	sbc  c                                           ; $69db: $99
	ld   [hl], a                                     ; $69dc: $77
	ld   [hl], a                                     ; $69dd: $77
	ld   [hl], a                                     ; $69de: $77
	ld   a, b                                        ; $69df: $78
	add  a                                           ; $69e0: $87
	adc  b                                           ; $69e1: $88
	sbc  c                                           ; $69e2: $99
	add  a                                           ; $69e3: $87
	ld   a, b                                        ; $69e4: $78
	adc  b                                           ; $69e5: $88
	adc  b                                           ; $69e6: $88
	add  a                                           ; $69e7: $87
	halt                                             ; $69e8: $76
	ld   a, b                                        ; $69e9: $78
	sub  a                                           ; $69ea: $97
	ld   [hl], a                                     ; $69eb: $77
	ld   [hl], a                                     ; $69ec: $77
	ld   a, b                                        ; $69ed: $78
	adc  b                                           ; $69ee: $88
	adc  b                                           ; $69ef: $88
	sbc  c                                           ; $69f0: $99
	adc  c                                           ; $69f1: $89
	adc  c                                           ; $69f2: $89
	ld   a, c                                        ; $69f3: $79
	add  [hl]                                        ; $69f4: $86
	ld   h, [hl]                                     ; $69f5: $66
	ld   [hl], a                                     ; $69f6: $77
	ld   [hl], a                                     ; $69f7: $77
	ld   a, b                                        ; $69f8: $78
	adc  b                                           ; $69f9: $88
	adc  b                                           ; $69fa: $88
	sbc  c                                           ; $69fb: $99
	sub  a                                           ; $69fc: $97
	adc  b                                           ; $69fd: $88
	sbc  c                                           ; $69fe: $99
	sbc  b                                           ; $69ff: $98
	adc  b                                           ; $6a00: $88
	ld   h, [hl]                                     ; $6a01: $66
	ld   [hl], a                                     ; $6a02: $77
	ld   [hl], a                                     ; $6a03: $77
	ld   [hl], a                                     ; $6a04: $77
	ld   [hl], a                                     ; $6a05: $77
	ld   [hl], a                                     ; $6a06: $77
	adc  c                                           ; $6a07: $89
	sbc  b                                           ; $6a08: $98
	adc  c                                           ; $6a09: $89
	sbc  c                                           ; $6a0a: $99
	adc  c                                           ; $6a0b: $89
	adc  b                                           ; $6a0c: $88
	ld   [hl], a                                     ; $6a0d: $77
	ld   a, b                                        ; $6a0e: $78
	add  a                                           ; $6a0f: $87
	ld   [hl], a                                     ; $6a10: $77
	ld   [hl], a                                     ; $6a11: $77
	add  a                                           ; $6a12: $87
	ld   a, c                                        ; $6a13: $79
	adc  b                                           ; $6a14: $88
	ld   [hl], a                                     ; $6a15: $77
	adc  c                                           ; $6a16: $89
	adc  c                                           ; $6a17: $89
	sbc  b                                           ; $6a18: $98
	ld   [hl], a                                     ; $6a19: $77
	ld   [hl], a                                     ; $6a1a: $77
	adc  b                                           ; $6a1b: $88
	ld   a, b                                        ; $6a1c: $78
	adc  b                                           ; $6a1d: $88
	adc  b                                           ; $6a1e: $88
	adc  c                                           ; $6a1f: $89
	sbc  c                                           ; $6a20: $99
	adc  b                                           ; $6a21: $88
	adc  c                                           ; $6a22: $89
	adc  b                                           ; $6a23: $88
	adc  b                                           ; $6a24: $88
	ld   [hl], a                                     ; $6a25: $77
	ld   [hl], a                                     ; $6a26: $77
	ld   [hl], a                                     ; $6a27: $77
	ld   [hl], a                                     ; $6a28: $77
	ld   [hl], a                                     ; $6a29: $77
	ld   a, b                                        ; $6a2a: $78
	adc  c                                           ; $6a2b: $89
	xor  c                                           ; $6a2c: $a9
	adc  c                                           ; $6a2d: $89
	adc  b                                           ; $6a2e: $88
	adc  b                                           ; $6a2f: $88
	adc  b                                           ; $6a30: $88
	ld   [hl], a                                     ; $6a31: $77
	ld   [hl], a                                     ; $6a32: $77
	ld   [hl], a                                     ; $6a33: $77
	ld   a, b                                        ; $6a34: $78
	adc  b                                           ; $6a35: $88
	adc  b                                           ; $6a36: $88
	sbc  b                                           ; $6a37: $98
	adc  b                                           ; $6a38: $88
	adc  b                                           ; $6a39: $88
	sbc  b                                           ; $6a3a: $98
	adc  b                                           ; $6a3b: $88
	add  a                                           ; $6a3c: $87
	ld   [hl], a                                     ; $6a3d: $77
	ld   [hl], a                                     ; $6a3e: $77
	ld   a, b                                        ; $6a3f: $78
	adc  b                                           ; $6a40: $88
	ld   [hl], a                                     ; $6a41: $77
	adc  b                                           ; $6a42: $88
	adc  c                                           ; $6a43: $89
	adc  b                                           ; $6a44: $88
	adc  b                                           ; $6a45: $88
	adc  c                                           ; $6a46: $89
	adc  b                                           ; $6a47: $88
	add  a                                           ; $6a48: $87
	ld   [hl], a                                     ; $6a49: $77
	ld   [hl], a                                     ; $6a4a: $77
	adc  b                                           ; $6a4b: $88
	sbc  b                                           ; $6a4c: $98
	add  a                                           ; $6a4d: $87
	adc  b                                           ; $6a4e: $88
	adc  c                                           ; $6a4f: $89
	adc  c                                           ; $6a50: $89
	ld   a, b                                        ; $6a51: $78
	add  a                                           ; $6a52: $87
	adc  b                                           ; $6a53: $88
	sbc  c                                           ; $6a54: $99
	add  a                                           ; $6a55: $87
	ld   [hl], a                                     ; $6a56: $77
	ld   [hl], a                                     ; $6a57: $77
	ld   a, b                                        ; $6a58: $78
	sbc  b                                           ; $6a59: $98
	adc  b                                           ; $6a5a: $88
	adc  b                                           ; $6a5b: $88
	sbc  c                                           ; $6a5c: $99
	sbc  c                                           ; $6a5d: $99
	sub  a                                           ; $6a5e: $97
	adc  b                                           ; $6a5f: $88
	adc  b                                           ; $6a60: $88
	ld   a, b                                        ; $6a61: $78
	adc  b                                           ; $6a62: $88
	halt                                             ; $6a63: $76
	ld   [hl], a                                     ; $6a64: $77
	ld   [hl], a                                     ; $6a65: $77
	ld   a, c                                        ; $6a66: $79
	sbc  c                                           ; $6a67: $99
	adc  b                                           ; $6a68: $88
	sbc  c                                           ; $6a69: $99
	sbc  c                                           ; $6a6a: $99
	adc  b                                           ; $6a6b: $88
	sbc  b                                           ; $6a6c: $98
	ld   a, b                                        ; $6a6d: $78
	adc  b                                           ; $6a6e: $88
	ld   [hl], a                                     ; $6a6f: $77
	ld   a, c                                        ; $6a70: $79
	add  a                                           ; $6a71: $87
	ld   h, [hl]                                     ; $6a72: $66
	ld   [hl], a                                     ; $6a73: $77
	ld   a, b                                        ; $6a74: $78
	sbc  c                                           ; $6a75: $99
	adc  b                                           ; $6a76: $88
	adc  c                                           ; $6a77: $89
	sbc  c                                           ; $6a78: $99
	adc  c                                           ; $6a79: $89
	sbc  b                                           ; $6a7a: $98
	adc  b                                           ; $6a7b: $88
	adc  b                                           ; $6a7c: $88
	sbc  c                                           ; $6a7d: $99
	ld   [hl], a                                     ; $6a7e: $77
	add  a                                           ; $6a7f: $87
	ld   [hl], a                                     ; $6a80: $77
	ld   [hl], a                                     ; $6a81: $77
	ld   [hl], a                                     ; $6a82: $77
	adc  b                                           ; $6a83: $88
	adc  c                                           ; $6a84: $89
	sbc  b                                           ; $6a85: $98
	adc  c                                           ; $6a86: $89
	adc  b                                           ; $6a87: $88
	adc  b                                           ; $6a88: $88
	sbc  b                                           ; $6a89: $98
	adc  c                                           ; $6a8a: $89
	adc  b                                           ; $6a8b: $88
	add  a                                           ; $6a8c: $87
	adc  b                                           ; $6a8d: $88
	sbc  b                                           ; $6a8e: $98
	sub  a                                           ; $6a8f: $97
	ld   [hl], a                                     ; $6a90: $77
	ld   [hl], a                                     ; $6a91: $77
	ld   a, b                                        ; $6a92: $78
	sbc  b                                           ; $6a93: $98
	adc  b                                           ; $6a94: $88
	ld   a, c                                        ; $6a95: $79
	sbc  c                                           ; $6a96: $99
	sbc  b                                           ; $6a97: $98
	adc  c                                           ; $6a98: $89
	adc  c                                           ; $6a99: $89
	sbc  b                                           ; $6a9a: $98
	sbc  b                                           ; $6a9b: $98
	adc  b                                           ; $6a9c: $88
	adc  b                                           ; $6a9d: $88
	add  a                                           ; $6a9e: $87
	ld   [hl], a                                     ; $6a9f: $77
	ld   [hl], a                                     ; $6aa0: $77
	adc  c                                           ; $6aa1: $89
	adc  c                                           ; $6aa2: $89
	adc  c                                           ; $6aa3: $89
	sub  a                                           ; $6aa4: $97
	adc  b                                           ; $6aa5: $88
	xor  c                                           ; $6aa6: $a9
	adc  c                                           ; $6aa7: $89
	sbc  b                                           ; $6aa8: $98
	adc  b                                           ; $6aa9: $88
	adc  c                                           ; $6aaa: $89
	sbc  b                                           ; $6aab: $98
	adc  b                                           ; $6aac: $88
	add  a                                           ; $6aad: $87
	ld   [hl], a                                     ; $6aae: $77
	ld   [hl], a                                     ; $6aaf: $77
	ld   a, c                                        ; $6ab0: $79
	sbc  b                                           ; $6ab1: $98
	sbc  c                                           ; $6ab2: $99
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	sbc  c                                           ; $6ab5: $99
	sbc  b                                           ; $6ab6: $98
	sbc  b                                           ; $6ab7: $98
	sbc  b                                           ; $6ab8: $98
	ld   a, b                                        ; $6ab9: $78
	adc  c                                           ; $6aba: $89
	ld   [hl], a                                     ; $6abb: $77
	sbc  b                                           ; $6abc: $98
	ld   a, b                                        ; $6abd: $78
	add  a                                           ; $6abe: $87
	ld   [hl], a                                     ; $6abf: $77
	adc  c                                           ; $6ac0: $89
	adc  b                                           ; $6ac1: $88
	adc  b                                           ; $6ac2: $88
	adc  b                                           ; $6ac3: $88
	sbc  b                                           ; $6ac4: $98
	adc  c                                           ; $6ac5: $89
	ld   a, b                                        ; $6ac6: $78
	sbc  b                                           ; $6ac7: $98
	adc  b                                           ; $6ac8: $88
	add  a                                           ; $6ac9: $87
	add  a                                           ; $6aca: $87
	ld   a, b                                        ; $6acb: $78
	adc  b                                           ; $6acc: $88
	sbc  b                                           ; $6acd: $98
	sub  a                                           ; $6ace: $97
	add  a                                           ; $6acf: $87
	ld   [hl], a                                     ; $6ad0: $77
	adc  c                                           ; $6ad1: $89
	add  a                                           ; $6ad2: $87
	ld   a, b                                        ; $6ad3: $78
	adc  c                                           ; $6ad4: $89
	sbc  b                                           ; $6ad5: $98
	adc  b                                           ; $6ad6: $88
	adc  b                                           ; $6ad7: $88
	adc  b                                           ; $6ad8: $88
	adc  b                                           ; $6ad9: $88
	ld   a, c                                        ; $6ada: $79
	add  a                                           ; $6adb: $87
	sbc  b                                           ; $6adc: $98
	adc  c                                           ; $6add: $89
	ld   [hl], a                                     ; $6ade: $77
	ld   l, b                                        ; $6adf: $68
	rst  $10                                         ; $6ae0: $d7
	ld   e, b                                        ; $6ae1: $58
	sbc  b                                           ; $6ae2: $98
	ld   h, a                                        ; $6ae3: $67
	xor  d                                           ; $6ae4: $aa
	add  a                                           ; $6ae5: $87
	adc  c                                           ; $6ae6: $89
	adc  b                                           ; $6ae7: $88
	ld   h, [hl]                                     ; $6ae8: $66
	adc  b                                           ; $6ae9: $88
	add  a                                           ; $6aea: $87
	sbc  b                                           ; $6aeb: $98
	add  a                                           ; $6aec: $87
	ld   a, b                                        ; $6aed: $78
	sbc  d                                           ; $6aee: $9a
	sbc  b                                           ; $6aef: $98
	ld   [hl], a                                     ; $6af0: $77
	adc  b                                           ; $6af1: $88
	ld   a, c                                        ; $6af2: $79
	ld   [hl], a                                     ; $6af3: $77
	sub  a                                           ; $6af4: $97
	sbc  b                                           ; $6af5: $98
	add  a                                           ; $6af6: $87
	add  a                                           ; $6af7: $87
	ld   a, b                                        ; $6af8: $78
	adc  c                                           ; $6af9: $89
	ld   a, b                                        ; $6afa: $78
	adc  d                                           ; $6afb: $8a
	cp   d                                           ; $6afc: $ba
	ld   [hl], a                                     ; $6afd: $77
	sub  [hl]                                        ; $6afe: $96
	ld   l, c                                        ; $6aff: $69
	xor  d                                           ; $6b00: $aa
	ld   [hl], a                                     ; $6b01: $77
	ld   h, a                                        ; $6b02: $67
	sbc  b                                           ; $6b03: $98
	halt                                             ; $6b04: $76
	sbc  c                                           ; $6b05: $99
	ld   [hl], a                                     ; $6b06: $77
	adc  d                                           ; $6b07: $8a
	sbc  b                                           ; $6b08: $98
	ld   h, [hl]                                     ; $6b09: $66
	ld   a, c                                        ; $6b0a: $79
	ld   [hl], a                                     ; $6b0b: $77
	sbc  c                                           ; $6b0c: $99
	ld   [hl], a                                     ; $6b0d: $77
	ld   a, b                                        ; $6b0e: $78
	sbc  b                                           ; $6b0f: $98
	ld   h, a                                        ; $6b10: $67
	xor  b                                           ; $6b11: $a8
	adc  d                                           ; $6b12: $8a
	ld   [hl], a                                     ; $6b13: $77
	xor  c                                           ; $6b14: $a9
	ld   h, a                                        ; $6b15: $67
	sbc  c                                           ; $6b16: $99
	ld   [hl], a                                     ; $6b17: $77
	adc  c                                           ; $6b18: $89
	add  a                                           ; $6b19: $87
	ld   h, [hl]                                     ; $6b1a: $66
	adc  c                                           ; $6b1b: $89
	ld   h, a                                        ; $6b1c: $67
	sbc  c                                           ; $6b1d: $99
	ld   [hl], a                                     ; $6b1e: $77
	ld   [hl], a                                     ; $6b1f: $77
	ld   a, c                                        ; $6b20: $79
	sub  a                                           ; $6b21: $97
	ld   a, b                                        ; $6b22: $78
	sbc  c                                           ; $6b23: $99
	adc  c                                           ; $6b24: $89
	xor  c                                           ; $6b25: $a9
	sbc  b                                           ; $6b26: $98
	adc  b                                           ; $6b27: $88
	xor  d                                           ; $6b28: $aa
	ld   l, b                                        ; $6b29: $68
	sbc  b                                           ; $6b2a: $98
	ld   d, l                                        ; $6b2b: $55
	halt                                             ; $6b2c: $76
	ld   h, e                                        ; $6b2d: $63
	inc  h                                           ; $6b2e: $24
	ld   d, h                                        ; $6b2f: $54
	inc  [hl]                                        ; $6b30: $34
	ld   l, d                                        ; $6b31: $6a
	xor  d                                           ; $6b32: $aa
	adc  $fd                                         ; $6b33: $ce $fd
	call $edef                                       ; $6b35: $cd $ef $ed
	call z, $44a6                                    ; $6b38: $cc $a6 $44
	ld   de, $1111                                   ; $6b3b: $11 $11 $11
	ld   [de], a                                     ; $6b3e: $12
	ld   de, $ff6d                                   ; $6b3f: $11 $6d $ff
	rst  $38                                         ; $6b42: $ff
	rst  $38                                         ; $6b43: $ff
	rst  $38                                         ; $6b44: $ff
	rst  $38                                         ; $6b45: $ff
	cp   $ec                                         ; $6b46: $fe $ec
	ld   h, c                                        ; $6b48: $61
	ld   de, $1111                                   ; $6b49: $11 $11 $11
	ld   de, $1115                                   ; $6b4c: $11 $15 $11
	ld   a, a                                        ; $6b4f: $7f
	rst  $38                                         ; $6b50: $ff
	rst  $38                                         ; $6b51: $ff
	rst  $38                                         ; $6b52: $ff
	rst  $38                                         ; $6b53: $ff
	rst  $38                                         ; $6b54: $ff
	db   $fc                                         ; $6b55: $fc
	bit  2, c                                        ; $6b56: $cb $51
	ld   de, $1111                                   ; $6b58: $11 $11 $11
	ld   de, $9311                                   ; $6b5b: $11 $11 $93
	ld   e, a                                        ; $6b5e: $5f
	rst  $38                                         ; $6b5f: $ff
	rst  $38                                         ; $6b60: $ff
	rst  $38                                         ; $6b61: $ff
	db   $fc                                         ; $6b62: $fc
	rst  $38                                         ; $6b63: $ff
	ei                                               ; $6b64: $fb
	jp   z, $1131                                    ; $6b65: $ca $31 $11

	ld   de, $1111                                   ; $6b68: $11 $11 $11
	ld   de, $efb5                                   ; $6b6b: $11 $b5 $ef
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	set  7, a                                        ; $6b71: $cb $ff
	ld   sp, hl                                      ; $6b73: $f9
	add  [hl]                                        ; $6b74: $86
	ld   de, $1111                                   ; $6b75: $11 $11 $11
	ld   de, $1a11                                   ; $6b78: $11 $11 $1a
	ld   a, d                                        ; $6b7b: $7a
	rst  $38                                         ; $6b7c: $ff
	rst  $38                                         ; $6b7d: $ff
	rst  $38                                         ; $6b7e: $ff
	db   $fd                                         ; $6b7f: $fd
	adc  a                                           ; $6b80: $8f
	rst  $38                                         ; $6b81: $ff
	adc  c                                           ; $6b82: $89
	ld   [hl], c                                     ; $6b83: $71
	ld   de, $1111                                   ; $6b84: $11 $11 $11
	ld   de, $aa11                                   ; $6b87: $11 $11 $aa
	ld   a, a                                        ; $6b8a: $7f
	rst  $38                                         ; $6b8b: $ff
	rst  $38                                         ; $6b8c: $ff
	rst  $38                                         ; $6b8d: $ff
	call nz, $f9ff                                   ; $6b8e: $c4 $ff $f9
	add  [hl]                                        ; $6b91: $86
	ld   de, $1111                                   ; $6b92: $11 $11 $11
	ld   de, $1911                                   ; $6b95: $11 $11 $19
	db   $db                                         ; $6b98: $db
	rst  $38                                         ; $6b99: $ff
	rst  $38                                         ; $6b9a: $ff
	rst  $38                                         ; $6b9b: $ff
	ld   hl, sp+$5f                                  ; $6b9c: $f8 $5f
	rst  $38                                         ; $6b9e: $ff
	ld   [hl], a                                     ; $6b9f: $77
	ld   b, c                                        ; $6ba0: $41
	ld   de, $1111                                   ; $6ba1: $11 $11 $11
	ld   de, $aa13                                   ; $6ba4: $11 $13 $aa
	rst  $38                                         ; $6ba7: $ff
	rst  $38                                         ; $6ba8: $ff
	rst  $38                                         ; $6ba9: $ff
	ld   sp, hl                                      ; $6baa: $f9
	ld   a, a                                        ; $6bab: $7f
	rst  $38                                         ; $6bac: $ff
	db   $db                                         ; $6bad: $db
	ld   d, c                                        ; $6bae: $51
	ld   de, $1111                                   ; $6baf: $11 $11 $11
	ld   de, $8b14                                   ; $6bb2: $11 $14 $8b
	rst  $38                                         ; $6bb5: $ff
	rst  $38                                         ; $6bb6: $ff
	rst  $38                                         ; $6bb7: $ff
	or   $7f                                         ; $6bb8: $f6 $7f
	rst  $38                                         ; $6bba: $ff
	db   $ec                                         ; $6bbb: $ec
	ld   b, c                                        ; $6bbc: $41
	ld   de, $1111                                   ; $6bbd: $11 $11 $11
	ld   de, wTitleScreenPressStartAnimCounter                                   ; $6bc0: $11 $14 $cc
	rst  $38                                         ; $6bc3: $ff
	rst  $38                                         ; $6bc4: $ff
	rst  $38                                         ; $6bc5: $ff
	ld   sp, hl                                      ; $6bc6: $f9
	dec  a                                           ; $6bc7: $3d
	rst  $38                                         ; $6bc8: $ff
	reti                                             ; $6bc9: $d9


	ld   b, c                                        ; $6bca: $41
	ld   de, $1111                                   ; $6bcb: $11 $11 $11
	ld   de, $ff15                                   ; $6bce: $11 $15 $ff
	rst  $38                                         ; $6bd1: $ff
	rst  $38                                         ; $6bd2: $ff
	rst  $38                                         ; $6bd3: $ff
	ld   sp, hl                                      ; $6bd4: $f9
	ld   e, h                                        ; $6bd5: $5c
	rst  $38                                         ; $6bd6: $ff
	reti                                             ; $6bd7: $d9


	ld   sp, $1111                                   ; $6bd8: $31 $11 $11
	ld   de, $1b11                                   ; $6bdb: $11 $11 $1b
	rst  JumpTable                                         ; $6bde: $df
	rst  $38                                         ; $6bdf: $ff
	rst  $38                                         ; $6be0: $ff
	rst  $38                                         ; $6be1: $ff
	and  l                                           ; $6be2: $a5
	xor  a                                           ; $6be3: $af
	cp   $d9                                         ; $6be4: $fe $d9
	ld   de, $1111                                   ; $6be6: $11 $11 $11
	ld   de, $3f11                                   ; $6be9: $11 $11 $3f
	rst  $38                                         ; $6bec: $ff
	rst  $38                                         ; $6bed: $ff
	rst  $38                                         ; $6bee: $ff
	rst  $38                                         ; $6bef: $ff
	or   e                                           ; $6bf0: $b3
	sbc  a                                           ; $6bf1: $9f
	db   $fd                                         ; $6bf2: $fd
	halt                                             ; $6bf3: $76
	ld   de, $1111                                   ; $6bf4: $11 $11 $11
	ld   de, $7f11                                   ; $6bf7: $11 $11 $7f
	rst  $38                                         ; $6bfa: $ff
	rst  $38                                         ; $6bfb: $ff
	rst  $38                                         ; $6bfc: $ff
	db   $fc                                         ; $6bfd: $fc
	ld   e, c                                        ; $6bfe: $59
	rst  $38                                         ; $6bff: $ff
	ld   sp, hl                                      ; $6c00: $f9
	ld   h, c                                        ; $6c01: $61
	ld   de, $1111                                   ; $6c02: $11 $11 $11
	ld   de, $ff15                                   ; $6c05: $11 $15 $ff
	rst  $38                                         ; $6c08: $ff
	rst  $38                                         ; $6c09: $ff
	rst  $38                                         ; $6c0a: $ff
	rst  $10                                         ; $6c0b: $d7
	adc  [hl]                                        ; $6c0c: $8e
	rst  $38                                         ; $6c0d: $ff
	or   a                                           ; $6c0e: $b7
	ld   sp, $1111                                   ; $6c0f: $31 $11 $11
	ld   de, wTitleScreenFrameCounter+1                                   ; $6c12: $11 $11 $cc
	rst  JumpTable                                         ; $6c15: $df
	rst  $38                                         ; $6c16: $ff
	rst  $38                                         ; $6c17: $ff
	rst  $38                                         ; $6c18: $ff
	ld   d, [hl]                                     ; $6c19: $56
	rst  $38                                         ; $6c1a: $ff
	ld   sp, hl                                      ; $6c1b: $f9
	sub  l                                           ; $6c1c: $95
	ld   de, $1111                                   ; $6c1d: $11 $11 $11
	ld   de, $fc18                                   ; $6c20: $11 $18 $fc
	rst  $38                                         ; $6c23: $ff
	rst  $38                                         ; $6c24: $ff
	rst  $38                                         ; $6c25: $ff
	and  $6f                                         ; $6c26: $e6 $6f
	rst  $38                                         ; $6c28: $ff
	sbc  c                                           ; $6c29: $99
	ld   h, c                                        ; $6c2a: $61
	ld   de, $1111                                   ; $6c2b: $11 $11 $11
	ld   de, $cffe                                   ; $6c2e: $11 $fe $cf
	rst  $38                                         ; $6c31: $ff
	rst  JumpTable                                         ; $6c32: $df
	db   $fc                                         ; $6c33: $fc
	inc  a                                           ; $6c34: $3c
	rst  $38                                         ; $6c35: $ff
	ret  z                                           ; $6c36: $c8

	or   e                                           ; $6c37: $b3
	ld   de, $1111                                   ; $6c38: $11 $11 $11
	ld   de, $df3f                                   ; $6c3b: $11 $3f $df
	rst  $38                                         ; $6c3e: $ff
	cp   $ff                                         ; $6c3f: $fe $ff
	ld   h, [hl]                                     ; $6c41: $66
	rst  $38                                         ; $6c42: $ff
	ld   a, [$11a9]                                  ; $6c43: $fa $a9 $11
	ld   de, $1111                                   ; $6c46: $11 $11 $11
	rra                                              ; $6c49: $1f
	add  sp, -$01                                    ; $6c4a: $e8 $ff
	db   $fd                                         ; $6c4c: $fd
	rst  $38                                         ; $6c4d: $ff
	jp   nz, $facf                                   ; $6c4e: $c2 $cf $fa

	sbc  e                                           ; $6c51: $9b
	ld   b, c                                        ; $6c52: $41
	ld   de, $1111                                   ; $6c53: $11 $11 $11
	rra                                              ; $6c56: $1f
	ld   e, l                                        ; $6c57: $5d
	rst  $38                                         ; $6c58: $ff
	cp   $ff                                         ; $6c59: $fe $ff
	sub  c                                           ; $6c5b: $91
	rst  JumpTable                                         ; $6c5c: $df
	ei                                               ; $6c5d: $fb
	db   $dd                                         ; $6c5e: $dd
	ld   sp, $1111                                   ; $6c5f: $31 $11 $11
	ld   de, $891c                                   ; $6c62: $11 $1c $89
	rst  $38                                         ; $6c65: $ff
	rst  $38                                         ; $6c66: $ff
	rst  $38                                         ; $6c67: $ff
	ld   h, h                                        ; $6c68: $64
	rst  $38                                         ; $6c69: $ff
	db   $ec                                         ; $6c6a: $ec
	ei                                               ; $6c6b: $fb
	ld   de, $1111                                   ; $6c6c: $11 $11 $11
	ld   de, $1fc7                                   ; $6c6f: $11 $c7 $1f
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	rst  $38                                         ; $6c74: $ff
	dec  hl                                          ; $6c75: $2b
	rst  $38                                         ; $6c76: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c77: $cf
	and  $11                                         ; $6c78: $e6 $11
	ld   de, $1111                                   ; $6c7a: $11 $11 $11
	ldh  [c], a                                      ; $6c7d: $e2
	ld   l, a                                        ; $6c7e: $6f
	rst  $38                                         ; $6c7f: $ff
	rst  $38                                         ; $6c80: $ff
	ld   sp, hl                                      ; $6c81: $f9
	ld   l, a                                        ; $6c82: $6f
	db   $fd                                         ; $6c83: $fd
	rst  $28                                         ; $6c84: $ef
	or   c                                           ; $6c85: $b1
	ld   de, $1111                                   ; $6c86: $11 $11 $11
	rla                                              ; $6c89: $17
	sub  a                                           ; $6c8a: $97
	rst  $38                                         ; $6c8b: $ff
	rst  $38                                         ; $6c8c: $ff
	rst  $38                                         ; $6c8d: $ff
	rst  $20                                         ; $6c8e: $e7
	rst  JumpTable                                         ; $6c8f: $df
	db   $fd                                         ; $6c90: $fd
	db   $fd                                         ; $6c91: $fd
	ld   sp, $1111                                   ; $6c92: $31 $11 $11
	ld   de, $4fb7                                   ; $6c95: $11 $b7 $4f
	rst  $38                                         ; $6c98: $ff
	rst  $38                                         ; $6c99: $ff
	ld   sp, hl                                      ; $6c9a: $f9
	ld   a, a                                        ; $6c9b: $7f
	cp   $cf                                         ; $6c9c: $fe $cf
	pop  bc                                          ; $6c9e: $c1
	ld   de, $1111                                   ; $6c9f: $11 $11 $11
	dec  de                                          ; $6ca2: $1b
	rra                                              ; $6ca3: $1f
	rst  $38                                         ; $6ca4: $ff
	rst  $38                                         ; $6ca5: $ff
	ei                                               ; $6ca6: $fb
	ld   l, h                                        ; $6ca7: $6c
	rst  $38                                         ; $6ca8: $ff
	xor  a                                           ; $6ca9: $af
	db   $e4                                         ; $6caa: $e4
	ld   de, $1111                                   ; $6cab: $11 $11 $11
	jr   jr_0d2_6ccc                                 ; $6cae: $18 $1c

	rst  $38                                         ; $6cb0: $ff
	rst  $38                                         ; $6cb1: $ff
	cp   $67                                         ; $6cb2: $fe $67
	rst  $38                                         ; $6cb4: $ff
	xor  l                                           ; $6cb5: $ad
	jp   $1111                                       ; $6cb6: $c3 $11 $11


	ld   de, $1f66                                   ; $6cb9: $11 $66 $1f
	rst  $38                                         ; $6cbc: $ff
	rst  $38                                         ; $6cbd: $ff
	db   $fc                                         ; $6cbe: $fc
	ld   l, b                                        ; $6cbf: $68
	db   $fd                                         ; $6cc0: $fd
	xor  h                                           ; $6cc1: $ac
	ld   [hl], c                                     ; $6cc2: $71
	ld   de, $1611                                   ; $6cc3: $11 $11 $16
	ld   [hl], l                                     ; $6cc6: $75
	rst  $38                                         ; $6cc7: $ff
	rst  $38                                         ; $6cc8: $ff
	rst  $38                                         ; $6cc9: $ff
	or   [hl]                                        ; $6cca: $b6
	adc  [hl]                                        ; $6ccb: $8e

jr_0d2_6ccc:
	cp   e                                           ; $6ccc: $bb
	add  h                                           ; $6ccd: $84
	ld   de, $1111                                   ; $6cce: $11 $11 $11
	rla                                              ; $6cd1: $17
	rst  $38                                         ; $6cd2: $ff
	rst  $38                                         ; $6cd3: $ff
	rst  $38                                         ; $6cd4: $ff
	xor  b                                           ; $6cd5: $a8
	xor  e                                           ; $6cd6: $ab
	xor  l                                           ; $6cd7: $ad
	and  d                                           ; $6cd8: $a2
	ld   de, $1111                                   ; $6cd9: $11 $11 $11
	add  hl, de                                      ; $6cdc: $19
	rst  $38                                         ; $6cdd: $ff
	rst  $38                                         ; $6cde: $ff
	rst  $38                                         ; $6cdf: $ff
	set  1, h                                        ; $6ce0: $cb $cc
	cp   d                                           ; $6ce2: $ba
	ld   h, c                                        ; $6ce3: $61
	ld   de, $1111                                   ; $6ce4: $11 $11 $11
	ld   c, [hl]                                     ; $6ce7: $4e
	rst  $38                                         ; $6ce8: $ff
	rst  $38                                         ; $6ce9: $ff
	cp   $db                                         ; $6cea: $fe $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cec: $cf
	reti                                             ; $6ced: $d9


	ld   d, c                                        ; $6cee: $51
	ld   de, $1111                                   ; $6cef: $11 $11 $11
	sbc  a                                           ; $6cf2: $9f
	rst  $38                                         ; $6cf3: $ff
	rst  $38                                         ; $6cf4: $ff
	db   $fd                                         ; $6cf5: $fd
	sbc  d                                           ; $6cf6: $9a
	xor  $b7                                         ; $6cf7: $ee $b7
	ld   d, c                                        ; $6cf9: $51
	ld   de, $1511                                   ; $6cfa: $11 $11 $15
	xor  $ff                                         ; $6cfd: $ee $ff
	rst  $38                                         ; $6cff: $ff
	cp   e                                           ; $6d00: $bb
	sbc  e                                           ; $6d01: $9b
	db   $dd                                         ; $6d02: $dd
	sub  [hl]                                        ; $6d03: $96
	ld   sp, $1111                                   ; $6d04: $31 $11 $11
	inc  e                                           ; $6d07: $1c
	rst  JumpTable                                         ; $6d08: $df
	rst  $38                                         ; $6d09: $ff
	cp   $b9                                         ; $6d0a: $fe $b9
	sbc  l                                           ; $6d0c: $9d
	ret                                              ; $6d0d: $c9


	ld   [hl], h                                     ; $6d0e: $74
	ld   de, $1111                                   ; $6d0f: $11 $11 $11
	adc  l                                           ; $6d12: $8d
	rst  $38                                         ; $6d13: $ff
	rst  $38                                         ; $6d14: $ff
	db   $fd                                         ; $6d15: $fd
	cp   d                                           ; $6d16: $ba
	cp   l                                           ; $6d17: $bd
	ret  z                                           ; $6d18: $c8

	ld   d, d                                        ; $6d19: $52
	ld   de, $1111                                   ; $6d1a: $11 $11 $11
	rst  JumpTable                                         ; $6d1d: $df
	rst  $38                                         ; $6d1e: $ff
	rst  $38                                         ; $6d1f: $ff
	call c, $cdbb                                    ; $6d20: $dc $bb $cd
	or   a                                           ; $6d23: $b7
	ld   b, c                                        ; $6d24: $41
	ld   de, $1611                                   ; $6d25: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d28: $cf
	rst  $38                                         ; $6d29: $ff
	rst  $38                                         ; $6d2a: $ff
	call c, $dbac                                    ; $6d2b: $dc $ac $db
	sub  a                                           ; $6d2e: $97
	ld   hl, $1111                                   ; $6d2f: $21 $11 $11
	ld   a, [de]                                     ; $6d32: $1a
	xor  a                                           ; $6d33: $af
	rst  $38                                         ; $6d34: $ff
	cp   $dd                                         ; $6d35: $fe $dd
	xor  [hl]                                        ; $6d37: $ae
	jp   c, $11b6                                    ; $6d38: $da $b6 $11

	ld   de, $3a11                                   ; $6d3b: $11 $11 $3a
	rst  JumpTable                                         ; $6d3e: $df
	rst  $38                                         ; $6d3f: $ff
	db   $fd                                         ; $6d40: $fd
	db   $db                                         ; $6d41: $db
	rst  JumpTable                                         ; $6d42: $df
	db   $eb                                         ; $6d43: $eb
	and  h                                           ; $6d44: $a4
	ld   de, $1111                                   ; $6d45: $11 $11 $11
	inc  a                                           ; $6d48: $3c
	rst  JumpTable                                         ; $6d49: $df
	rst  $38                                         ; $6d4a: $ff
	db   $fd                                         ; $6d4b: $fd
	db   $dd                                         ; $6d4c: $dd
	rst  JumpTable                                         ; $6d4d: $df
	db   $fc                                         ; $6d4e: $fc
	or   l                                           ; $6d4f: $b5
	ld   de, $1111                                   ; $6d50: $11 $11 $11
	ld   e, c                                        ; $6d53: $59
	cp   a                                           ; $6d54: $bf
	rst  JumpTable                                         ; $6d55: $df
	db   $fd                                         ; $6d56: $fd
	db   $ed                                         ; $6d57: $ed
	rst  $28                                         ; $6d58: $ef
	db   $ec                                         ; $6d59: $ec
	or   h                                           ; $6d5a: $b4
	ld   de, $1111                                   ; $6d5b: $11 $11 $11
	ld   c, b                                        ; $6d5e: $48
	xor  a                                           ; $6d5f: $af
	rst  JumpTable                                         ; $6d60: $df
	db   $fd                                         ; $6d61: $fd
	db   $dd                                         ; $6d62: $dd
	rst  $38                                         ; $6d63: $ff
	db   $fd                                         ; $6d64: $fd
	or   h                                           ; $6d65: $b4
	ld   de, $1111                                   ; $6d66: $11 $11 $11
	ld   h, [hl]                                     ; $6d69: $66
	cp   a                                           ; $6d6a: $bf
	cp   a                                           ; $6d6b: $bf
	sbc  $ec                                         ; $6d6c: $de $ec
	rst  $38                                         ; $6d6e: $ff
	db   $fd                                         ; $6d6f: $fd
	push de                                          ; $6d70: $d5
	ld   sp, $1111                                   ; $6d71: $31 $11 $11
	ld   b, l                                        ; $6d74: $45
	ld   a, a                                        ; $6d75: $7f
	cp   a                                           ; $6d76: $bf
	cp   $ee                                         ; $6d77: $fe $ee
	rst  $38                                         ; $6d79: $ff
	cp   $f7                                         ; $6d7a: $fe $f7
	ld   sp, $1111                                   ; $6d7c: $31 $11 $11
	ld   d, $3d                                      ; $6d7f: $16 $3d
	cp   [hl]                                        ; $6d81: $be
	db   $fc                                         ; $6d82: $fc
	cp   $ef                                         ; $6d83: $fe $ef
	db   $fd                                         ; $6d85: $fd
	ei                                               ; $6d86: $fb
	ld   d, d                                        ; $6d87: $52
	ld   de, $1511                                   ; $6d88: $11 $11 $15
	dec  de                                          ; $6d8b: $1b
	cp   c                                           ; $6d8c: $b9
	db   $fc                                         ; $6d8d: $fc
	rst  $28                                         ; $6d8e: $ef
	rst  JumpTable                                         ; $6d8f: $df
	rst  $38                                         ; $6d90: $ff
	rst  $38                                         ; $6d91: $ff
	add  [hl]                                        ; $6d92: $86
	ld   de, $1111                                   ; $6d93: $11 $11 $11
	ld   b, c                                        ; $6d96: $41
	sbc  d                                           ; $6d97: $9a
	cp   a                                           ; $6d98: $bf
	adc  $fe                                         ; $6d99: $ce $fe
	rst  $38                                         ; $6d9b: $ff
	rst  $38                                         ; $6d9c: $ff
	jp   hl                                          ; $6d9d: $e9


	ld   h, c                                        ; $6d9e: $61
	ld   de, $3111                                   ; $6d9f: $11 $11 $31
	inc  l                                           ; $6da2: $2c
	ld   e, l                                        ; $6da3: $5d
	db   $eb                                         ; $6da4: $eb
	db   $fd                                         ; $6da5: $fd
	rst  $38                                         ; $6da6: $ff
	rst  $38                                         ; $6da7: $ff
	db   $fc                                         ; $6da8: $fc
	and  [hl]                                        ; $6da9: $a6
	ld   de, $1111                                   ; $6daa: $11 $11 $11
	inc  de                                          ; $6dad: $13
	ld   [hl], a                                     ; $6dae: $77
	db   $dd                                         ; $6daf: $dd
	adc  $ff                                         ; $6db0: $ce $ff
	rst  $38                                         ; $6db2: $ff
	rst  $38                                         ; $6db3: $ff
	db   $fc                                         ; $6db4: $fc
	ld   h, c                                        ; $6db5: $61
	ld   de, $1111                                   ; $6db6: $11 $11 $11
	add  hl, de                                      ; $6db9: $19
	ld   l, b                                        ; $6dba: $68
	ld   sp, hl                                      ; $6dbb: $f9
	rst  $38                                         ; $6dbc: $ff
	rst  $28                                         ; $6dbd: $ef
	rst  $38                                         ; $6dbe: $ff
	rst  $38                                         ; $6dbf: $ff
	jp   c, $1111                                    ; $6dc0: $da $11 $11

	ld   de, $1801                                   ; $6dc3: $11 $01 $18
	ld   c, e                                        ; $6dc6: $4b
	jp   z, $ffff                                    ; $6dc7: $ca $ff $ff

	rst  $38                                         ; $6dca: $ff
	rst  $38                                         ; $6dcb: $ff
	and  $11                                         ; $6dcc: $e6 $11
	ld   de, $1111                                   ; $6dce: $11 $11 $11
	ld   b, [hl]                                     ; $6dd1: $46
	ld   c, a                                        ; $6dd2: $4f
	xor  l                                           ; $6dd3: $ad
	rst  $38                                         ; $6dd4: $ff
	rst  $38                                         ; $6dd5: $ff
	rst  $38                                         ; $6dd6: $ff
	rst  $38                                         ; $6dd7: $ff
	push de                                          ; $6dd8: $d5
	ld   sp, $1111                                   ; $6dd9: $31 $11 $11
	ld   de, $4e25                                   ; $6ddc: $11 $25 $4e
	xor  l                                           ; $6ddf: $ad
	rst  $38                                         ; $6de0: $ff
	rst  $38                                         ; $6de1: $ff
	rst  $38                                         ; $6de2: $ff
	rst  $38                                         ; $6de3: $ff
	rst  $20                                         ; $6de4: $e7
	ld   d, c                                        ; $6de5: $51
	ld   de, $1111                                   ; $6de6: $11 $11 $11
	dec  d                                           ; $6de9: $15
	ld   c, d                                        ; $6dea: $4a
	db   $eb                                         ; $6deb: $eb
	rst  $38                                         ; $6dec: $ff
	rst  $38                                         ; $6ded: $ff
	rst  $38                                         ; $6dee: $ff
	rst  $38                                         ; $6def: $ff
	ld   a, [$1163]                                  ; $6df0: $fa $63 $11
	ld   de, $1111                                   ; $6df3: $11 $11 $11
	ld   b, l                                        ; $6df6: $45
	xor  h                                           ; $6df7: $ac
	rst  JumpTable                                         ; $6df8: $df
	rst  $38                                         ; $6df9: $ff
	rst  $38                                         ; $6dfa: $ff
	rst  $38                                         ; $6dfb: $ff
	rst  $38                                         ; $6dfc: $ff
	or   a                                           ; $6dfd: $b7
	ld   hl, $1111                                   ; $6dfe: $21 $11 $11
	ld   de, $5915                                   ; $6e01: $11 $15 $59
	call c, $ffff                                    ; $6e04: $dc $ff $ff
	rst  $38                                         ; $6e07: $ff
	rst  $38                                         ; $6e08: $ff
	rst  $38                                         ; $6e09: $ff
	add  [hl]                                        ; $6e0a: $86
	ld   de, $1111                                   ; $6e0b: $11 $11 $11
	ld   de, $6a15                                   ; $6e0e: $11 $15 $6a
	rst  JumpTable                                         ; $6e11: $df
	rst  $38                                         ; $6e12: $ff
	rst  $38                                         ; $6e13: $ff
	rst  $38                                         ; $6e14: $ff
	rst  $38                                         ; $6e15: $ff
	rst  $38                                         ; $6e16: $ff
	and  [hl]                                        ; $6e17: $a6
	ld   de, $1111                                   ; $6e18: $11 $11 $11
	ld   de, $6612                                   ; $6e1b: $11 $12 $66
	set  5, a                                        ; $6e1e: $cb $ef
	rst  $38                                         ; $6e20: $ff
	rst  $38                                         ; $6e21: $ff
	rst  $38                                         ; $6e22: $ff
	rst  $38                                         ; $6e23: $ff
	jp   c, $1152                                    ; $6e24: $da $52 $11

	ld   de, $1111                                   ; $6e27: $11 $11 $11
	inc  h                                           ; $6e2a: $24
	ld   a, d                                        ; $6e2b: $7a
	cp   a                                           ; $6e2c: $bf
	rst  JumpTable                                         ; $6e2d: $df
	rst  $38                                         ; $6e2e: $ff
	rst  $38                                         ; $6e2f: $ff
	rst  $38                                         ; $6e30: $ff
	rst  $38                                         ; $6e31: $ff
	rst  ToBoot                                         ; $6e32: $c7
	ld   b, c                                        ; $6e33: $41
	ld   de, $1111                                   ; $6e34: $11 $11 $11
	ld   de, $8924                                   ; $6e37: $11 $24 $89
	rst  JumpTable                                         ; $6e3a: $df
	rst  $28                                         ; $6e3b: $ef
	rst  $38                                         ; $6e3c: $ff
	rst  $38                                         ; $6e3d: $ff
	rst  $38                                         ; $6e3e: $ff
	rst  $38                                         ; $6e3f: $ff
	and  [hl]                                        ; $6e40: $a6
	ld   hl, $1111                                   ; $6e41: $21 $11 $11
	ld   de, $2311                                   ; $6e44: $11 $11 $23
	adc  c                                           ; $6e47: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e48: $cf
	rst  $38                                         ; $6e49: $ff
	rst  $38                                         ; $6e4a: $ff
	rst  $38                                         ; $6e4b: $ff
	rst  $38                                         ; $6e4c: $ff
	rst  $38                                         ; $6e4d: $ff
	rst  ToBoot                                         ; $6e4e: $c7
	ld   b, c                                        ; $6e4f: $41
	ld   de, $1111                                   ; $6e50: $11 $11 $11
	ld   de, $5912                                   ; $6e53: $11 $12 $59
	xor  l                                           ; $6e56: $ad
	rst  $28                                         ; $6e57: $ef
	rst  $38                                         ; $6e58: $ff
	rst  $38                                         ; $6e59: $ff
	rst  $38                                         ; $6e5a: $ff
	rst  $38                                         ; $6e5b: $ff
	ei                                               ; $6e5c: $fb
	sub  h                                           ; $6e5d: $94
	ld   hl, $1111                                   ; $6e5e: $21 $11 $11
	ld   de, $1411                                   ; $6e61: $11 $11 $14
	ld   l, c                                        ; $6e64: $69
	cp   l                                           ; $6e65: $bd
	rst  $38                                         ; $6e66: $ff
	rst  $38                                         ; $6e67: $ff
	rst  $38                                         ; $6e68: $ff
	rst  $38                                         ; $6e69: $ff
	rst  $38                                         ; $6e6a: $ff
	ei                                               ; $6e6b: $fb
	add  l                                           ; $6e6c: $85
	ld   hl, $1111                                   ; $6e6d: $21 $11 $11
	ld   de, $1111                                   ; $6e70: $11 $11 $11
	ld   d, [hl]                                     ; $6e73: $56
	adc  e                                           ; $6e74: $8b
	sbc  $ff                                         ; $6e75: $de $ff
	rst  $38                                         ; $6e77: $ff
	rst  $38                                         ; $6e78: $ff
	rst  $38                                         ; $6e79: $ff
	rst  $38                                         ; $6e7a: $ff
	jp   z, $3164                                    ; $6e7b: $ca $64 $31

	ld   de, $1111                                   ; $6e7e: $11 $11 $11
	ld   de, $4612                                   ; $6e81: $11 $12 $46
	adc  e                                           ; $6e84: $8b
	adc  $ff                                         ; $6e85: $ce $ff
	rst  $38                                         ; $6e87: $ff
	rst  $38                                         ; $6e88: $ff
	rst  $38                                         ; $6e89: $ff
	rst  $38                                         ; $6e8a: $ff
	jp   z, $3174                                    ; $6e8b: $ca $74 $31

	ld   de, $1111                                   ; $6e8e: $11 $11 $11
	ld   de, $3511                                   ; $6e91: $11 $11 $35
	ld   a, d                                        ; $6e94: $7a
	sbc  $ff                                         ; $6e95: $de $ff
	rst  $38                                         ; $6e97: $ff
	rst  $38                                         ; $6e98: $ff
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	db   $eb                                         ; $6e9b: $eb
	add  l                                           ; $6e9c: $85
	ld   b, d                                        ; $6e9d: $42
	ld   de, $1111                                   ; $6e9e: $11 $11 $11
	ld   de, $1311                                   ; $6ea1: $11 $11 $13
	ld   d, a                                        ; $6ea4: $57
	xor  l                                           ; $6ea5: $ad
	rst  JumpTable                                         ; $6ea6: $df
	rst  $38                                         ; $6ea7: $ff
	rst  $38                                         ; $6ea8: $ff
	rst  $38                                         ; $6ea9: $ff
	rst  $38                                         ; $6eaa: $ff
	rst  $38                                         ; $6eab: $ff
	jp   z, $4275                                    ; $6eac: $ca $75 $42

	ld   de, $1111                                   ; $6eaf: $11 $11 $11
	ld   de, $0211                                   ; $6eb2: $11 $11 $02
	ld   d, a                                        ; $6eb5: $57
	sbc  e                                           ; $6eb6: $9b
	adc  $ff                                         ; $6eb7: $ce $ff
	rst  $38                                         ; $6eb9: $ff
	rst  $38                                         ; $6eba: $ff
	rst  $38                                         ; $6ebb: $ff
	rst  $38                                         ; $6ebc: $ff
	db   $ec                                         ; $6ebd: $ec
	sub  a                                           ; $6ebe: $97
	ld   h, h                                        ; $6ebf: $64
	ld   [hl-], a                                    ; $6ec0: $32
	ld   bc, $1111                                   ; $6ec1: $01 $11 $11
	ld   de, $1311                                   ; $6ec4: $11 $11 $13
	ld   h, a                                        ; $6ec7: $67
	xor  e                                           ; $6ec8: $ab
	sbc  $ff                                         ; $6ec9: $de $ff
	rst  $38                                         ; $6ecb: $ff
	rst  $38                                         ; $6ecc: $ff
	rst  $38                                         ; $6ecd: $ff
	rst  $38                                         ; $6ece: $ff
	db   $db                                         ; $6ecf: $db
	sub  a                                           ; $6ed0: $97
	ld   d, e                                        ; $6ed1: $53
	ld   hl, $1111                                   ; $6ed2: $21 $11 $11
	ld   de, $1111                                   ; $6ed5: $11 $11 $11
	inc  de                                          ; $6ed8: $13
	ld   d, a                                        ; $6ed9: $57
	xor  h                                           ; $6eda: $ac
	sbc  $ff                                         ; $6edb: $de $ff
	rst  $38                                         ; $6edd: $ff
	rst  $38                                         ; $6ede: $ff
	rst  $38                                         ; $6edf: $ff
	rst  $38                                         ; $6ee0: $ff
	db   $ec                                         ; $6ee1: $ec
	add  a                                           ; $6ee2: $87
	ld   d, h                                        ; $6ee3: $54
	ld   b, e                                        ; $6ee4: $43
	ld   hl, $1111                                   ; $6ee5: $21 $11 $11
	ld   de, $1211                                   ; $6ee8: $11 $11 $12
	dec  [hl]                                        ; $6eeb: $35
	ld   [hl], a                                     ; $6eec: $77
	xor  e                                           ; $6eed: $ab
	call $ffff                                       ; $6eee: $cd $ff $ff
	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	rst  $38                                         ; $6ef3: $ff
	db   $eb                                         ; $6ef4: $eb
	sbc  c                                           ; $6ef5: $99
	halt                                             ; $6ef6: $76
	ld   d, l                                        ; $6ef7: $55
	ld   [hl-], a                                    ; $6ef8: $32
	ld   sp, $1111                                   ; $6ef9: $31 $11 $11
	ld   de, $1211                                   ; $6efc: $11 $11 $12
	dec  [hl]                                        ; $6eff: $35
	ld   l, b                                        ; $6f00: $68
	xor  d                                           ; $6f01: $aa
	adc  $ff                                         ; $6f02: $ce $ff
	rst  $38                                         ; $6f04: $ff
	rst  $38                                         ; $6f05: $ff
	rst  $38                                         ; $6f06: $ff
	cp   $da                                         ; $6f07: $fe $da
	xor  b                                           ; $6f09: $a8
	halt                                             ; $6f0a: $76
	ld   d, h                                        ; $6f0b: $54
	ld   b, d                                        ; $6f0c: $42
	ld   hl, $1111                                   ; $6f0d: $21 $11 $11
	ld   de, $1211                                   ; $6f10: $11 $11 $12
	dec  [hl]                                        ; $6f13: $35
	ld   e, b                                        ; $6f14: $58
	xor  d                                           ; $6f15: $aa
	sbc  $ff                                         ; $6f16: $de $ff
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	rst  $38                                         ; $6f1a: $ff
	rst  $38                                         ; $6f1b: $ff
	call c, $8799                                    ; $6f1c: $dc $99 $87
	ld   [hl], l                                     ; $6f1f: $75
	ld   d, e                                        ; $6f20: $53
	ld   [hl-], a                                    ; $6f21: $32
	ld   [de], a                                     ; $6f22: $12
	ld   de, $1111                                   ; $6f23: $11 $11 $11
	ld   de, $3513                                   ; $6f26: $11 $13 $35
	ld   l, b                                        ; $6f29: $68
	xor  e                                           ; $6f2a: $ab
	sbc  $ff                                         ; $6f2b: $de $ff
	rst  $38                                         ; $6f2d: $ff
	rst  $38                                         ; $6f2e: $ff
	rst  $38                                         ; $6f2f: $ff

jr_0d2_6f30:
	rst  $38                                         ; $6f30: $ff
	call c, $98aa                                    ; $6f31: $dc $aa $98
	ld   h, l                                        ; $6f34: $65
	ld   b, e                                        ; $6f35: $43
	ld   sp, $1111                                   ; $6f36: $31 $11 $11
	ld   de, $1111                                   ; $6f39: $11 $11 $11
	ld   de, $6735                                   ; $6f3c: $11 $35 $67
	sbc  e                                           ; $6f3f: $9b
	sbc  $ff                                         ; $6f40: $de $ff
	rst  $38                                         ; $6f42: $ff
	rst  $38                                         ; $6f43: $ff
	rst  $38                                         ; $6f44: $ff
	rst  $38                                         ; $6f45: $ff
	db   $fd                                         ; $6f46: $fd
	cp   d                                           ; $6f47: $ba
	sbc  b                                           ; $6f48: $98
	ld   h, [hl]                                     ; $6f49: $66
	ld   b, h                                        ; $6f4a: $44
	ld   sp, $1111                                   ; $6f4b: $31 $11 $11
	ld   de, $1111                                   ; $6f4e: $11 $11 $11
	ld   [de], a                                     ; $6f51: $12
	inc  de                                          ; $6f52: $13
	ld   d, [hl]                                     ; $6f53: $56
	adc  d                                           ; $6f54: $8a
	cp   [hl]                                        ; $6f55: $be
	rst  $38                                         ; $6f56: $ff
	rst  $38                                         ; $6f57: $ff
	rst  $38                                         ; $6f58: $ff
	rst  $38                                         ; $6f59: $ff
	rst  $38                                         ; $6f5a: $ff
	rst  $38                                         ; $6f5b: $ff
	db   $db                                         ; $6f5c: $db
	sbc  d                                           ; $6f5d: $9a
	ld   [hl], l                                     ; $6f5e: $75
	ld   d, h                                        ; $6f5f: $54
	ld   [de], a                                     ; $6f60: $12
	ld   de, $1111                                   ; $6f61: $11 $11 $11
	ld   de, $1111                                   ; $6f64: $11 $11 $11
	inc  de                                          ; $6f67: $13
	inc  [hl]                                        ; $6f68: $34
	ld   l, b                                        ; $6f69: $68
	sbc  e                                           ; $6f6a: $9b
	rst  JumpTable                                         ; $6f6b: $df
	rst  $38                                         ; $6f6c: $ff
	rst  $38                                         ; $6f6d: $ff
	rst  $38                                         ; $6f6e: $ff
	rst  $38                                         ; $6f6f: $ff
	rst  $38                                         ; $6f70: $ff
	cp   $cb                                         ; $6f71: $fe $cb
	add  a                                           ; $6f73: $87
	ld   h, l                                        ; $6f74: $65
	ld   [hl-], a                                    ; $6f75: $32
	ld   hl, $1111                                   ; $6f76: $21 $11 $11
	ld   de, $1111                                   ; $6f79: $11 $11 $11
	ld   de, $5512                                   ; $6f7c: $11 $12 $55
	ld   a, c                                        ; $6f7f: $79
	cp   l                                           ; $6f80: $bd
	rst  $28                                         ; $6f81: $ef
	rst  $38                                         ; $6f82: $ff
	rst  $38                                         ; $6f83: $ff
	rst  $38                                         ; $6f84: $ff
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	db   $ed                                         ; $6f87: $ed
	xor  b                                           ; $6f88: $a8
	halt                                             ; $6f89: $76
	ld   b, h                                        ; $6f8a: $44
	ld   b, d                                        ; $6f8b: $42
	ld   [hl+], a                                    ; $6f8c: $22
	ld   de, $1111                                   ; $6f8d: $11 $11 $11
	ld   de, $1111                                   ; $6f90: $11 $11 $11
	ld   [de], a                                     ; $6f93: $12
	jr   c, jr_0d2_6f30                              ; $6f94: $38 $9a

	rst  JumpTable                                         ; $6f96: $df
	rst  $38                                         ; $6f97: $ff
	rst  $38                                         ; $6f98: $ff
	rst  $38                                         ; $6f99: $ff
	rst  $38                                         ; $6f9a: $ff
	rst  $38                                         ; $6f9b: $ff
	rst  $38                                         ; $6f9c: $ff
	jp   z, $5597                                    ; $6f9d: $ca $97 $55

	ld   d, e                                        ; $6fa0: $53
	inc  sp                                          ; $6fa1: $33
	ld   hl, $1122                                   ; $6fa2: $21 $22 $11
	ld   de, $1111                                   ; $6fa5: $11 $11 $11
	ld   de, $3811                                   ; $6fa8: $11 $11 $38
	cp   e                                           ; $6fab: $bb
	rst  JumpTable                                         ; $6fac: $df
	rst  $38                                         ; $6fad: $ff
	rst  $38                                         ; $6fae: $ff
	rst  $38                                         ; $6faf: $ff
	rst  $38                                         ; $6fb0: $ff
	rst  $38                                         ; $6fb1: $ff
	db   $ec                                         ; $6fb2: $ec
	ret                                              ; $6fb3: $c9


	ld   h, [hl]                                     ; $6fb4: $66
	ld   d, h                                        ; $6fb5: $54
	ld   b, h                                        ; $6fb6: $44
	ld   b, h                                        ; $6fb7: $44
	ld   [hl-], a                                    ; $6fb8: $32
	ld   hl, $1112                                   ; $6fb9: $21 $12 $11
	ld   de, $1111                                   ; $6fbc: $11 $11 $11
	inc  d                                           ; $6fbf: $14
	ld   a, e                                        ; $6fc0: $7b
	rst  JumpTable                                         ; $6fc1: $df
	rst  $38                                         ; $6fc2: $ff
	rst  $38                                         ; $6fc3: $ff
	rst  $38                                         ; $6fc4: $ff
	rst  $38                                         ; $6fc5: $ff
	rst  $38                                         ; $6fc6: $ff
	cp   $c9                                         ; $6fc7: $fe $c9
	halt                                             ; $6fc9: $76
	ld   d, h                                        ; $6fca: $54
	ld   d, [hl]                                     ; $6fcb: $56
	ld   h, l                                        ; $6fcc: $65
	ld   h, l                                        ; $6fcd: $65
	ld   b, d                                        ; $6fce: $42
	ld   [de], a                                     ; $6fcf: $12
	ld   de, $1111                                   ; $6fd0: $11 $11 $11
	ld   de, $2811                                   ; $6fd3: $11 $11 $28
	cp   l                                           ; $6fd6: $bd
	rst  $38                                         ; $6fd7: $ff
	rst  $38                                         ; $6fd8: $ff
	rst  $38                                         ; $6fd9: $ff
	rst  $38                                         ; $6fda: $ff
	rst  $38                                         ; $6fdb: $ff
	cp   $cb                                         ; $6fdc: $fe $cb
	xor  b                                           ; $6fde: $a8
	ld   [hl], a                                     ; $6fdf: $77
	halt                                             ; $6fe0: $76
	ld   a, c                                        ; $6fe1: $79
	sub  a                                           ; $6fe2: $97
	ld   h, l                                        ; $6fe3: $65
	ld   sp, $1111                                   ; $6fe4: $31 $11 $11
	ld   de, $1111                                   ; $6fe7: $11 $11 $11
	inc  de                                          ; $6fea: $13
	ld   a, e                                        ; $6feb: $7b
	rst  $38                                         ; $6fec: $ff
	rst  $38                                         ; $6fed: $ff
	rst  $38                                         ; $6fee: $ff
	rst  $38                                         ; $6fef: $ff
	rst  $38                                         ; $6ff0: $ff
	xor  $ec                                         ; $6ff1: $ee $ec
	db   $db                                         ; $6ff3: $db
	cp   d                                           ; $6ff4: $ba
	xor  c                                           ; $6ff5: $a9
	sbc  c                                           ; $6ff6: $99
	adc  b                                           ; $6ff7: $88
	add  [hl]                                        ; $6ff8: $86
	ld   d, e                                        ; $6ff9: $53
	ld   de, $1111                                   ; $6ffa: $11 $11 $11
	ld   de, $1101                                   ; $6ffd: $11 $01 $11
	inc  sp                                          ; $7000: $33
	ld   l, h                                        ; $7001: $6c
	rst  $28                                         ; $7002: $ef
	rst  $38                                         ; $7003: $ff
	rst  $38                                         ; $7004: $ff
	cp   $ee                                         ; $7005: $fe $ee
	xor  $fe                                         ; $7007: $ee $fe
	db   $ed                                         ; $7009: $ed
	call c, $88b9                                    ; $700a: $dc $b9 $88
	ld   h, a                                        ; $700d: $67
	halt                                             ; $700e: $76
	ld   b, h                                        ; $700f: $44
	ld   de, $1111                                   ; $7010: $11 $11 $11
	ld   [de], a                                     ; $7013: $12
	ld   hl, $1111                                   ; $7014: $21 $11 $11
	ld   b, [hl]                                     ; $7017: $46
	adc  [hl]                                        ; $7018: $8e
	rst  $38                                         ; $7019: $ff
	rst  $38                                         ; $701a: $ff
	rst  $38                                         ; $701b: $ff
	db   $fd                                         ; $701c: $fd
	xor  $ef                                         ; $701d: $ee $ef
	xor  $ec                                         ; $701f: $ee $ec
	sbc  c                                           ; $7021: $99
	add  a                                           ; $7022: $87
	add  a                                           ; $7023: $87
	ld   [hl], a                                     ; $7024: $77
	halt                                             ; $7025: $76
	ld   [hl-], a                                    ; $7026: $32
	ld   de, $1311                                   ; $7027: $11 $11 $13
	ld   sp, $1122                                   ; $702a: $31 $22 $11
	ld   de, $df69                                   ; $702d: $11 $69 $df
	rst  $38                                         ; $7030: $ff
	rst  $38                                         ; $7031: $ff
	rst  $38                                         ; $7032: $ff
	call c, $eddd                                    ; $7033: $dc $dd $ed
	call c, $a9cb                                    ; $7036: $dc $cb $a9
	adc  b                                           ; $7039: $88
	adc  c                                           ; $703a: $89
	add  a                                           ; $703b: $87
	ld   h, l                                        ; $703c: $65
	ld   hl, $1311                                   ; $703d: $21 $11 $13
	ld   b, h                                        ; $7040: $44
	ld   b, d                                        ; $7041: $42
	ld   hl, $1211                                   ; $7042: $21 $11 $12
	ld   l, d                                        ; $7045: $6a
	rst  $38                                         ; $7046: $ff
	rst  $38                                         ; $7047: $ff
	rst  $38                                         ; $7048: $ff
	db   $ec                                         ; $7049: $ec
	cp   h                                           ; $704a: $bc
	db   $dd                                         ; $704b: $dd
	cp   $ec                                         ; $704c: $fe $ec
	jp   z, $7998                                    ; $704e: $ca $98 $79

	sbc  d                                           ; $7051: $9a
	sub  a                                           ; $7052: $97
	ld   d, e                                        ; $7053: $53
	ld   de, $2311                                   ; $7054: $11 $11 $23
	ld   b, h                                        ; $7057: $44
	ld   b, e                                        ; $7058: $43
	ld   hl, $1711                                   ; $7059: $21 $11 $17
	xor  a                                           ; $705c: $af
	rst  $38                                         ; $705d: $ff
	rst  $38                                         ; $705e: $ff
	db   $ed                                         ; $705f: $ed
	cp   d                                           ; $7060: $ba
	cp   h                                           ; $7061: $bc
	rst  $28                                         ; $7062: $ef
	db   $fd                                         ; $7063: $fd
	cp   d                                           ; $7064: $ba
	sbc  c                                           ; $7065: $99
	adc  b                                           ; $7066: $88
	ld   a, c                                        ; $7067: $79
	sbc  d                                           ; $7068: $9a
	add  l                                           ; $7069: $85
	ld   hl, $2311                                   ; $706a: $21 $11 $23
	inc  sp                                          ; $706d: $33
	ld   [hl-], a                                    ; $706e: $32
	ld   hl, $1511                                   ; $706f: $21 $11 $15
	sbc  a                                           ; $7072: $9f
	rst  $38                                         ; $7073: $ff
	rst  $38                                         ; $7074: $ff
	rst  $38                                         ; $7075: $ff
	or   a                                           ; $7076: $b7
	adc  d                                           ; $7077: $8a
	rst  $28                                         ; $7078: $ef
	rst  $38                                         ; $7079: $ff
	jp   z, $a99a                                    ; $707a: $ca $9a $a9

	adc  c                                           ; $707d: $89
	xor  d                                           ; $707e: $aa
	and  [hl]                                        ; $707f: $a6
	ld   de, $1411                                   ; $7080: $11 $11 $14
	ld   d, l                                        ; $7083: $55
	ld   d, e                                        ; $7084: $53
	ld   de, $1311                                   ; $7085: $11 $11 $13
	cp   a                                           ; $7088: $bf
	rst  $38                                         ; $7089: $ff
	rst  $38                                         ; $708a: $ff
	db   $ec                                         ; $708b: $ec
	sbc  b                                           ; $708c: $98
	adc  h                                           ; $708d: $8c
	rst  $38                                         ; $708e: $ff
	rst  $38                                         ; $708f: $ff
	cp   b                                           ; $7090: $b8
	adc  c                                           ; $7091: $89
	sbc  d                                           ; $7092: $9a
	sbc  c                                           ; $7093: $99
	adc  b                                           ; $7094: $88
	ld   [hl], e                                     ; $7095: $73
	ld   de, $4411                                   ; $7096: $11 $11 $44
	ld   b, e                                        ; $7099: $43
	ld   de, $1111                                   ; $709a: $11 $11 $11
	ld   c, b                                        ; $709d: $48
	rst  $38                                         ; $709e: $ff
	rst  $38                                         ; $709f: $ff
	db   $fc                                         ; $70a0: $fc
	sbc  c                                           ; $70a1: $99
	xor  e                                           ; $70a2: $ab
	rst  JumpTable                                         ; $70a3: $df
	rst  $38                                         ; $70a4: $ff
	cp   $b7                                         ; $70a5: $fe $b7
	ld   h, a                                        ; $70a7: $67
	xor  e                                           ; $70a8: $ab
	call z, $2184                                    ; $70a9: $cc $84 $21
	ld   de, $3511                                   ; $70ac: $11 $11 $35
	ld   b, h                                        ; $70af: $44
	ld   de, $1911                                   ; $70b0: $11 $11 $19
	rst  $38                                         ; $70b3: $ff
	rst  $38                                         ; $70b4: $ff
	ei                                               ; $70b5: $fb
	xor  e                                           ; $70b6: $ab
	xor  c                                           ; $70b7: $a9
	xor  h                                           ; $70b8: $ac
	rst  $38                                         ; $70b9: $ff
	rst  $38                                         ; $70ba: $ff
	push bc                                          ; $70bb: $c5
	ld   [hl], $ac                                   ; $70bc: $36 $ac
	cp   c                                           ; $70be: $b9
	ld   [hl], h                                     ; $70bf: $74
	ld   hl, $1111                                   ; $70c0: $21 $11 $11
	inc  de                                          ; $70c3: $13
	ld   b, h                                        ; $70c4: $44
	ld   de, $3e11                                   ; $70c5: $11 $11 $3e
	rst  $38                                         ; $70c8: $ff
	rst  $38                                         ; $70c9: $ff
	reti                                             ; $70ca: $d9


	halt                                             ; $70cb: $76
	sbc  h                                           ; $70cc: $9c
	rst  $38                                         ; $70cd: $ff
	rst  $38                                         ; $70ce: $ff
	db   $fc                                         ; $70cf: $fc
	ld   [hl], h                                     ; $70d0: $74
	ld   c, b                                        ; $70d1: $48
	cp   l                                           ; $70d2: $bd
	ret                                              ; $70d3: $c9


	ld   b, c                                        ; $70d4: $41
	ld   de, $1111                                   ; $70d5: $11 $11 $11
	inc  hl                                          ; $70d8: $23
	ld   de, $1611                                   ; $70d9: $11 $11 $16
	rst  $38                                         ; $70dc: $ff
	rst  $38                                         ; $70dd: $ff
	rst  $30                                         ; $70de: $f7
	ld   [hl-], a                                    ; $70df: $32
	ld   a, h                                        ; $70e0: $7c
	rst  $38                                         ; $70e1: $ff
	rst  $38                                         ; $70e2: $ff
	rst  $38                                         ; $70e3: $ff
	push bc                                          ; $70e4: $c5
	inc  hl                                          ; $70e5: $23
	adc  [hl]                                        ; $70e6: $8e
	rst  $38                                         ; $70e7: $ff
	sub  c                                           ; $70e8: $91
	ld   de, $1211                                   ; $70e9: $11 $11 $12
	ld   b, e                                        ; $70ec: $43
	ld   de, $1911                                   ; $70ed: $11 $11 $19
	rst  $38                                         ; $70f0: $ff
	rst  $38                                         ; $70f1: $ff
	ld   a, [$4854]                                  ; $70f2: $fa $54 $48
	rst  $28                                         ; $70f5: $ef
	rst  $38                                         ; $70f6: $ff
	rst  $38                                         ; $70f7: $ff
	ld   [hl], e                                     ; $70f8: $73
	ld   h, $ce                                      ; $70f9: $26 $ce
	ld   a, [$1141]                                  ; $70fb: $fa $41 $11
	ld   de, $0111                                   ; $70fe: $11 $11 $01
	ld   de, $3f11                                   ; $7101: $11 $11 $3f
	rst  $38                                         ; $7104: $ff
	rst  $38                                         ; $7105: $ff
	ld   [hl], c                                     ; $7106: $71
	inc  de                                          ; $7107: $13
	cp   a                                           ; $7108: $bf
	rst  $38                                         ; $7109: $ff
	rst  $38                                         ; $710a: $ff
	ld   sp, hl                                      ; $710b: $f9
	ld   sp, $ff39                                   ; $710c: $31 $39 $ff
	ld   a, [$1111]                                  ; $710f: $fa $11 $11
	ld   de, $6149                                   ; $7112: $11 $49 $61
	ld   de, $ff3f                                   ; $7115: $11 $3f $ff
	rst  $38                                         ; $7118: $ff
	ld   hl, $af13                                   ; $7119: $21 $13 $af
	rst  $38                                         ; $711c: $ff
	rst  $38                                         ; $711d: $ff
	db   $fc                                         ; $711e: $fc
	ld   b, c                                        ; $711f: $41
	add  hl, sp                                      ; $7120: $39
	rst  $38                                         ; $7121: $ff
	rst  $20                                         ; $7122: $e7
	ld   de, $1111                                   ; $7123: $11 $11 $11
	ld   de, $1111                                   ; $7126: $11 $11 $11
	sbc  a                                           ; $7129: $9f
	rst  $38                                         ; $712a: $ff
	db   $fd                                         ; $712b: $fd
	ld   de, $df12                                   ; $712c: $11 $12 $df
	rst  $38                                         ; $712f: $ff
	rst  $38                                         ; $7130: $ff
	call nz, $5d11                                   ; $7131: $c4 $11 $5d
	rst  $38                                         ; $7134: $ff
	db   $d3                                         ; $7135: $d3
	ld   de, $1111                                   ; $7136: $11 $11 $11
	ld   [hl+], a                                    ; $7139: $22
	ld   de, $ffbf                                   ; $713a: $11 $bf $ff
	cp   $41                                         ; $713d: $fe $41
	ld   de, $ff9e                                   ; $713f: $11 $9e $ff
	rst  $38                                         ; $7142: $ff
	rst  $20                                         ; $7143: $e7
	inc  hl                                          ; $7144: $23
	ld   l, h                                        ; $7145: $6c
	rst  $38                                         ; $7146: $ff
	and  d                                           ; $7147: $a2
	ld   de, $1111                                   ; $7148: $11 $11 $11
	inc  hl                                          ; $714b: $23
	inc  sp                                          ; $714c: $33
	cp   a                                           ; $714d: $bf
	rst  $38                                         ; $714e: $ff
	rst  $38                                         ; $714f: $ff
	ld   d, c                                        ; $7150: $51
	ld   de, $ff7f                                   ; $7151: $11 $7f $ff
	rst  $38                                         ; $7154: $ff
	ret  c                                           ; $7155: $d8

	ld   b, d                                        ; $7156: $42
	ld   e, d                                        ; $7157: $5a
	rst  $38                                         ; $7158: $ff
	and  e                                           ; $7159: $a3
	ld   de, $1111                                   ; $715a: $11 $11 $11
	inc  de                                          ; $715d: $13
	ld   l, a                                        ; $715e: $6f
	rst  $38                                         ; $715f: $ff
	rst  $38                                         ; $7160: $ff
	ld   hl, sp+$11                                  ; $7161: $f8 $11
	inc  d                                           ; $7163: $14
	rst  JumpTable                                         ; $7164: $df
	rst  $38                                         ; $7165: $ff
	cp   $61                                         ; $7166: $fe $61
	ld   [de], a                                     ; $7168: $12
	xor  a                                           ; $7169: $af
	db   $fc                                         ; $716a: $fc
	ld   sp, $1111                                   ; $716b: $31 $11 $11
	ld   [de], a                                     ; $716e: $12
	adc  l                                           ; $716f: $8d
	rst  $38                                         ; $7170: $ff
	rst  $38                                         ; $7171: $ff
	rst  $38                                         ; $7172: $ff
	ld   h, c                                        ; $7173: $61
	ld   de, $ff7f                                   ; $7174: $11 $7f $ff
	rst  $38                                         ; $7177: $ff
	sub  h                                           ; $7178: $94
	inc  [hl]                                        ; $7179: $34
	sbc  h                                           ; $717a: $9c
	db   $fc                                         ; $717b: $fc
	ld   h, c                                        ; $717c: $61
	ld   de, $1111                                   ; $717d: $11 $11 $11
	jr   @+$01                                       ; $7180: $18 $ff

	rst  $38                                         ; $7182: $ff
	rst  $38                                         ; $7183: $ff
	add  c                                           ; $7184: $81
	inc  de                                          ; $7185: $13
	ld   a, l                                        ; $7186: $7d
	rst  $38                                         ; $7187: $ff
	rst  $38                                         ; $7188: $ff
	add  sp, $42                                     ; $7189: $e8 $42
	ld   e, e                                        ; $718b: $5b
	cp   $b3                                         ; $718c: $fe $b3
	ld   de, $1111                                   ; $718e: $11 $11 $11
	cpl                                              ; $7191: $2f
	rst  $38                                         ; $7192: $ff
	rst  $38                                         ; $7193: $ff
	ei                                               ; $7194: $fb
	ld   d, c                                        ; $7195: $51
	dec  d                                           ; $7196: $15
	adc  [hl]                                        ; $7197: $8e
	rst  $38                                         ; $7198: $ff
	rst  $38                                         ; $7199: $ff
	push de                                          ; $719a: $d5
	ld   [de], a                                     ; $719b: $12
	ld   a, a                                        ; $719c: $7f
	rst  $38                                         ; $719d: $ff
	add  c                                           ; $719e: $81
	ld   de, $1111                                   ; $719f: $11 $11 $11
	adc  a                                           ; $71a2: $8f
	rst  $38                                         ; $71a3: $ff
	rst  $38                                         ; $71a4: $ff
	or   c                                           ; $71a5: $b1
	ld   de, $ff6e                                   ; $71a6: $11 $6e $ff
	rst  $38                                         ; $71a9: $ff
	ld   [$5974], a                                  ; $71aa: $ea $74 $59
	rst  $28                                         ; $71ad: $ef
	ld   a, [$1111]                                  ; $71ae: $fa $11 $11
	ld   de, $ff17                                   ; $71b1: $11 $17 $ff
	rst  $38                                         ; $71b4: $ff
	cp   $11                                         ; $71b5: $fe $11
	inc  de                                          ; $71b7: $13
	cp   a                                           ; $71b8: $bf
	rst  $38                                         ; $71b9: $ff
	rst  $38                                         ; $71ba: $ff
	or   a                                           ; $71bb: $b7
	inc  sp                                          ; $71bc: $33
	adc  l                                           ; $71bd: $8d
	rst  $38                                         ; $71be: $ff
	jp   nc, $1111                                   ; $71bf: $d2 $11 $11

	ld   de, $ff3f                                   ; $71c2: $11 $3f $ff
	rst  $38                                         ; $71c5: $ff
	pop  bc                                          ; $71c6: $c1
	ld   de, $ff2c                                   ; $71c7: $11 $2c $ff
	rst  $38                                         ; $71ca: $ff
	rst  $20                                         ; $71cb: $e7
	ld   de, $ff2a                                   ; $71cc: $11 $2a $ff
	db   $fc                                         ; $71cf: $fc
	ld   de, $1111                                   ; $71d0: $11 $11 $11
	rra                                              ; $71d3: $1f
	rst  $38                                         ; $71d4: $ff
	rst  $38                                         ; $71d5: $ff
	pop  af                                          ; $71d6: $f1
	ld   de, $ff18                                   ; $71d7: $11 $18 $ff
	rst  $38                                         ; $71da: $ff
	ld   sp, hl                                      ; $71db: $f9
	ld   sp, $ef15                                   ; $71dc: $31 $15 $ef
	rst  $38                                         ; $71df: $ff
	ld   d, c                                        ; $71e0: $51
	ld   de, $1f11                                   ; $71e1: $11 $11 $1f
	rst  $38                                         ; $71e4: $ff
	rst  $38                                         ; $71e5: $ff
	pop  af                                          ; $71e6: $f1
	ld   de, $ff1c                                   ; $71e7: $11 $1c $ff
	rst  $38                                         ; $71ea: $ff
	push bc                                          ; $71eb: $c5
	ld   de, $ff18                                   ; $71ec: $11 $18 $ff
	cp   $31                                         ; $71ef: $fe $31
	ld   de, $1f11                                   ; $71f1: $11 $11 $1f
	rst  $38                                         ; $71f4: $ff
	rst  $38                                         ; $71f5: $ff
	or   c                                           ; $71f6: $b1
	ld   de, $ff3e                                   ; $71f7: $11 $3e $ff
	rst  $38                                         ; $71fa: $ff
	and  d                                           ; $71fb: $a2
	ld   de, $ff18                                   ; $71fc: $11 $18 $ff
	ld   a, [$1111]                                  ; $71ff: $fa $11 $11
	ld   de, $ffff                                   ; $7202: $11 $ff $ff
	or   $11                                         ; $7205: $f6 $11
	ld   d, $ff                                      ; $7207: $16 $ff
	rst  $38                                         ; $7209: $ff
	or   $11                                         ; $720a: $f6 $11
	ld   de, $ffcf                                   ; $720c: $11 $cf $ff
	ld   d, c                                        ; $720f: $51
	ld   de, rAUD1LEN                                   ; $7210: $11 $11 $ff
	rst  $38                                         ; $7213: $ff
	rst  $38                                         ; $7214: $ff
	ld   de, rAUD1LEN                                   ; $7215: $11 $11 $ff
	rst  $38                                         ; $7218: $ff
	push af                                          ; $7219: $f5
	ld   de, $ef11                                   ; $721a: $11 $11 $ef
	rst  $38                                         ; $721d: $ff
	ld   de, $1111                                   ; $721e: $11 $11 $11
	rst  $38                                         ; $7221: $ff
	rst  $38                                         ; $7222: $ff
	or   $11                                         ; $7223: $f6 $11
	ld   d, $ff                                      ; $7225: $16 $ff
	rst  $38                                         ; $7227: $ff
	pop  af                                          ; $7228: $f1
	ld   de, rAUD1HIGH                                   ; $7229: $11 $14 $ff
	db   $fd                                         ; $722c: $fd
	ld   de, $1b11                                   ; $722d: $11 $11 $1b
	rst  $38                                         ; $7230: $ff
	rst  $38                                         ; $7231: $ff
	sub  c                                           ; $7232: $91
	ld   de, $ff4f                                   ; $7233: $11 $4f $ff
	rst  $38                                         ; $7236: $ff
	ld   de, $1b11                                   ; $7237: $11 $11 $1b
	rst  $38                                         ; $723a: $ff
	pop  af                                          ; $723b: $f1
	ld   de, rAUD1LEN                                   ; $723c: $11 $11 $ff
	rst  $38                                         ; $723f: $ff
	di                                               ; $7240: $f3
	ld   de, $ff19                                   ; $7241: $11 $19 $ff
	rst  $38                                         ; $7244: $ff
	pop  de                                          ; $7245: $d1
	ld   de, $cf11                                   ; $7246: $11 $11 $cf
	db   $f4                                         ; $7249: $f4
	ld   de, rAUD1LEN                                   ; $724a: $11 $11 $ff
	rst  $38                                         ; $724d: $ff
	pop  af                                          ; $724e: $f1
	ld   de, $ff18                                   ; $724f: $11 $18 $ff
	rst  $38                                         ; $7252: $ff
	add  c                                           ; $7253: $81
	ld   de, $ef12                                   ; $7254: $11 $12 $ef
	pop  af                                          ; $7257: $f1
	ld   de, rAUD1LOW                                   ; $7258: $11 $13 $ff
	rst  $38                                         ; $725b: $ff
	pop  de                                          ; $725c: $d1
	ld   de, $ff1f                                   ; $725d: $11 $1f $ff
	cp   $11                                         ; $7260: $fe $11
	ld   de, $fe16                                   ; $7262: $11 $16 $fe
	ld   b, c                                        ; $7265: $41
	ld   de, $ff6f                                   ; $7266: $11 $6f $ff
	or   $11                                         ; $7269: $f6 $11
	jr   @+$01                                       ; $726b: $18 $ff

	rst  $38                                         ; $726d: $ff
	ld   b, c                                        ; $726e: $41
	ld   de, $ee13                                   ; $726f: $11 $13 $ee
	ld   sp, rAUD1LEN                                   ; $7272: $31 $11 $ff
	rst  $38                                         ; $7275: $ff
	pop  af                                          ; $7276: $f1
	ld   de, $ff1b                                   ; $7277: $11 $1b $ff
	rst  $38                                         ; $727a: $ff
	ld   de, $1a11                                   ; $727b: $11 $11 $1a
	ei                                               ; $727e: $fb
	ld   b, c                                        ; $727f: $41
	ld   e, $ff                                      ; $7280: $1e $ff
	rst  $38                                         ; $7282: $ff
	ld   de, rAUD1LEN                                   ; $7283: $11 $11 $ff
	rst  $38                                         ; $7286: $ff
	pop  hl                                          ; $7287: $e1
	ld   de, $df11                                   ; $7288: $11 $11 $df
	ei                                               ; $728b: $fb
	ld   a, e                                        ; $728c: $7b
	rst  $38                                         ; $728d: $ff
	rst  $38                                         ; $728e: $ff
	ld   sp, $bf11                                   ; $728f: $31 $11 $bf
	rst  $38                                         ; $7292: $ff
	pop  af                                          ; $7293: $f1
	ld   de, $af11                                   ; $7294: $11 $11 $af
	db   $fd                                         ; $7297: $fd
	rst  JumpTable                                         ; $7298: $df
	rst  $38                                         ; $7299: $ff
	db   $fd                                         ; $729a: $fd
	ld   de, rAUD1LEN                                   ; $729b: $11 $11 $ff
	rst  $38                                         ; $729e: $ff
	ld   sp, $1611                                   ; $729f: $31 $11 $16
	rst  $38                                         ; $72a2: $ff
	rst  $38                                         ; $72a3: $ff
	rst  $38                                         ; $72a4: $ff
	rst  $38                                         ; $72a5: $ff
	pop  hl                                          ; $72a6: $e1
	ld   de, $ff1f                                   ; $72a7: $11 $1f $ff
	ldh  a, [c]                                      ; $72aa: $f2
	ld   de, $9f11                                   ; $72ab: $11 $11 $9f
	rst  $38                                         ; $72ae: $ff
	rst  $38                                         ; $72af: $ff
	rst  $38                                         ; $72b0: $ff
	ld   sp, hl                                      ; $72b1: $f9
	ld   de, rAUD1LEN                                   ; $72b2: $11 $11 $ff
	rst  $38                                         ; $72b5: $ff
	ld   de, $1e11                                   ; $72b6: $11 $11 $1e
	rst  $38                                         ; $72b9: $ff
	rst  $38                                         ; $72ba: $ff
	rst  $38                                         ; $72bb: $ff
	rst  $38                                         ; $72bc: $ff
	ld   sp, $7f11                                   ; $72bd: $31 $11 $7f
	rst  $38                                         ; $72c0: $ff
	pop  af                                          ; $72c1: $f1
	ld   de, rAUD1LEN                                   ; $72c2: $11 $11 $ff
	rst  $38                                         ; $72c5: $ff
	rst  $38                                         ; $72c6: $ff
	rst  $38                                         ; $72c7: $ff
	ld   h, c                                        ; $72c8: $61
	ld   de, $ff1f                                   ; $72c9: $11 $1f $ff
	ldh  a, [c]                                      ; $72cc: $f2
	ld   de, $8f11                                   ; $72cd: $11 $11 $8f
	rst  $38                                         ; $72d0: $ff
	rst  $38                                         ; $72d1: $ff
	db   $fd                                         ; $72d2: $fd
	ld   h, c                                        ; $72d3: $61
	ld   de, $ff1f                                   ; $72d4: $11 $1f $ff
	push af                                          ; $72d7: $f5
	ld   de, $4f11                                   ; $72d8: $11 $11 $4f
	rst  $38                                         ; $72db: $ff
	rst  $38                                         ; $72dc: $ff
	ei                                               ; $72dd: $fb
	ld   hl, $3f11                                   ; $72de: $21 $11 $3f
	rst  $38                                         ; $72e1: $ff
	di                                               ; $72e2: $f3
	ld   de, $6f11                                   ; $72e3: $11 $11 $6f
	rst  $38                                         ; $72e6: $ff
	rst  $38                                         ; $72e7: $ff
	ld   a, [$1111]                                  ; $72e8: $fa $11 $11
	ld   e, a                                        ; $72eb: $5f
	rst  $38                                         ; $72ec: $ff
	pop  af                                          ; $72ed: $f1
	ld   de, $bf11                                   ; $72ee: $11 $11 $bf
	rst  $38                                         ; $72f1: $ff
	rst  $38                                         ; $72f2: $ff
	ld   sp, hl                                      ; $72f3: $f9
	ld   de, $bf11                                   ; $72f4: $11 $11 $bf
	rst  $38                                         ; $72f7: $ff
	pop  hl                                          ; $72f8: $e1
	ld   de, $af11                                   ; $72f9: $11 $11 $af
	rst  $38                                         ; $72fc: $ff
	rst  $38                                         ; $72fd: $ff
	db   $f4                                         ; $72fe: $f4
	ld   de, rAUD1LEN                                   ; $72ff: $11 $11 $ff
	rst  $38                                         ; $7302: $ff
	ld   h, c                                        ; $7303: $61
	ld   de, $df14                                   ; $7304: $11 $14 $df
	rst  $38                                         ; $7307: $ff
	rst  $38                                         ; $7308: $ff
	push af                                          ; $7309: $f5
	ld   de, rAUD1LEN                                   ; $730a: $11 $11 $ff
	rst  $38                                         ; $730d: $ff
	ld   d, c                                        ; $730e: $51
	ld   de, $ef14                                   ; $730f: $11 $14 $ef
	rst  $38                                         ; $7312: $ff
	rst  $38                                         ; $7313: $ff
	or   c                                           ; $7314: $b1
	ld   de, $ff19                                   ; $7315: $11 $19 $ff
	cp   $11                                         ; $7318: $fe $11
	ld   de, $ff18                                   ; $731a: $11 $18 $ff
	rst  $38                                         ; $731d: $ff
	rst  $38                                         ; $731e: $ff
	ld   h, c                                        ; $731f: $61
	ld   de, $ff1f                                   ; $7320: $11 $1f $ff
	ld   hl, sp+$11                                  ; $7323: $f8 $11
	ld   de, $df17                                   ; $7325: $11 $17 $df
	rst  $38                                         ; $7328: $ff
	rst  $38                                         ; $7329: $ff
	ld   b, c                                        ; $732a: $41
	ld   de, $ff1f                                   ; $732b: $11 $1f $ff
	or   $11                                         ; $732e: $f6 $11
	ld   de, $ff3c                                   ; $7330: $11 $3c $ff
	rst  $38                                         ; $7333: $ff
	ld   a, [$1111]                                  ; $7334: $fa $11 $11
	ld   l, a                                        ; $7337: $6f
	rst  $38                                         ; $7338: $ff
	rst  $30                                         ; $7339: $f7
	ld   de, $4a11                                   ; $733a: $11 $11 $4a
	rst  $38                                         ; $733d: $ff
	rst  $38                                         ; $733e: $ff
	ld   hl, sp+$11                                  ; $733f: $f8 $11
	ld   de, $ffbf                                   ; $7341: $11 $bf $ff
	or   h                                           ; $7344: $b4
	ld   de, $5a11                                   ; $7345: $11 $11 $5a
	rst  $38                                         ; $7348: $ff
	rst  $38                                         ; $7349: $ff
	ld   hl, sp+$41                                  ; $734a: $f8 $41
	ld   de, $ff6e                                   ; $734c: $11 $6e $ff
	and  $11                                         ; $734f: $e6 $11
	ld   de, $ed6a                                   ; $7351: $11 $6a $ed
	rst  $38                                         ; $7354: $ff
	cp   $71                                         ; $7355: $fe $71
	ld   de, $ff2d                                   ; $7357: $11 $2d $ff
	rst  $30                                         ; $735a: $f7
	ld   de, $6b11                                   ; $735b: $11 $11 $6b
	sbc  $de                                         ; $735e: $de $de
	db   $dd                                         ; $7360: $dd
	add  e                                           ; $7361: $83
	ld   de, $ff3a                                   ; $7362: $11 $3a $ff
	db   $fd                                         ; $7365: $fd
	ld   d, c                                        ; $7366: $51
	ld   de, $ef28                                   ; $7367: $11 $28 $ef
	bit  6, a                                        ; $736a: $cb $77
	xor  c                                           ; $736c: $a9
	adc  b                                           ; $736d: $88
	ld   l, b                                        ; $736e: $68
	xor  e                                           ; $736f: $ab
	call c, $2296                                    ; $7370: $dc $96 $22
	inc  sp                                          ; $7373: $33
	ld   a, c                                        ; $7374: $79
	xor  e                                           ; $7375: $ab
	sbc  b                                           ; $7376: $98
	ld   a, b                                        ; $7377: $78
	adc  d                                           ; $7378: $8a
	xor  d                                           ; $7379: $aa
	xor  c                                           ; $737a: $a9
	xor  d                                           ; $737b: $aa
	xor  d                                           ; $737c: $aa
	add  a                                           ; $737d: $87
	ld   b, d                                        ; $737e: $42
	dec  [hl]                                        ; $737f: $35
	adc  e                                           ; $7380: $8b
	cp   c                                           ; $7381: $b9
	ld   h, e                                        ; $7382: $63
	ld   [hl], $ac                                   ; $7383: $36 $ac
	db   $db                                         ; $7385: $db
	cp   b                                           ; $7386: $b8
	sbc  c                                           ; $7387: $99
	sub  a                                           ; $7388: $97
	ld   l, b                                        ; $7389: $68
	adc  c                                           ; $738a: $89
	sub  [hl]                                        ; $738b: $96
	ld   d, l                                        ; $738c: $55
	ld   d, a                                        ; $738d: $57
	halt                                             ; $738e: $76
	ld   [hl], a                                     ; $738f: $77
	ld   a, c                                        ; $7390: $79
	xor  c                                           ; $7391: $a9
	xor  d                                           ; $7392: $aa
	xor  e                                           ; $7393: $ab
	xor  c                                           ; $7394: $a9
	ld   h, a                                        ; $7395: $67
	ld   a, b                                        ; $7396: $78
	add  [hl]                                        ; $7397: $86
	ld   h, l                                        ; $7398: $65
	ld   a, c                                        ; $7399: $79
	add  a                                           ; $739a: $87
	ld   h, l                                        ; $739b: $65
	ld   h, a                                        ; $739c: $67
	sbc  e                                           ; $739d: $9b
	xor  c                                           ; $739e: $a9
	sbc  d                                           ; $739f: $9a
	cp   d                                           ; $73a0: $ba
	halt                                             ; $73a1: $76
	ld   l, b                                        ; $73a2: $68
	xor  e                                           ; $73a3: $ab
	cp   b                                           ; $73a4: $b8
	ld   b, d                                        ; $73a5: $42
	dec  [hl]                                        ; $73a6: $35
	adc  d                                           ; $73a7: $8a
	xor  c                                           ; $73a8: $a9
	halt                                             ; $73a9: $76
	ld   a, c                                        ; $73aa: $79
	sbc  c                                           ; $73ab: $99
	sbc  c                                           ; $73ac: $99
	cp   e                                           ; $73ad: $bb
	xor  c                                           ; $73ae: $a9
	add  a                                           ; $73af: $87
	ld   a, b                                        ; $73b0: $78
	sbc  b                                           ; $73b1: $98
	ld   [hl], a                                     ; $73b2: $77
	ld   a, b                                        ; $73b3: $78
	adc  b                                           ; $73b4: $88
	halt                                             ; $73b5: $76
	ld   d, l                                        ; $73b6: $55
	ld   d, a                                        ; $73b7: $57
	cp   e                                           ; $73b8: $bb
	cp   c                                           ; $73b9: $b9
	ld   [hl], a                                     ; $73ba: $77
	adc  c                                           ; $73bb: $89
	xor  c                                           ; $73bc: $a9
	adc  b                                           ; $73bd: $88
	ld   a, b                                        ; $73be: $78
	sbc  b                                           ; $73bf: $98
	ld   [hl], l                                     ; $73c0: $75
	ld   h, [hl]                                     ; $73c1: $66
	adc  d                                           ; $73c2: $8a
	sbc  c                                           ; $73c3: $99
	ld   [hl], l                                     ; $73c4: $75
	ld   d, [hl]                                     ; $73c5: $56
	ld   a, c                                        ; $73c6: $79
	xor  d                                           ; $73c7: $aa
	xor  c                                           ; $73c8: $a9
	adc  b                                           ; $73c9: $88
	sbc  c                                           ; $73ca: $99
	sbc  d                                           ; $73cb: $9a
	sbc  c                                           ; $73cc: $99
	ld   [hl], a                                     ; $73cd: $77
	ld   [hl], a                                     ; $73ce: $77
	ld   [hl], a                                     ; $73cf: $77
	ld   a, b                                        ; $73d0: $78
	sbc  c                                           ; $73d1: $99
	ld   [hl], l                                     ; $73d2: $75
	ld   b, l                                        ; $73d3: $45
	ld   a, d                                        ; $73d4: $7a
	xor  e                                           ; $73d5: $ab
	sbc  b                                           ; $73d6: $98
	ld   [hl], a                                     ; $73d7: $77
	sbc  c                                           ; $73d8: $99
	adc  c                                           ; $73d9: $89
	adc  c                                           ; $73da: $89
	sbc  d                                           ; $73db: $9a
	add  [hl]                                        ; $73dc: $86
	ld   b, l                                        ; $73dd: $45
	ld   l, b                                        ; $73de: $68
	xor  e                                           ; $73df: $ab
	xor  b                                           ; $73e0: $a8
	halt                                             ; $73e1: $76
	ld   d, l                                        ; $73e2: $55
	ld   a, c                                        ; $73e3: $79
	xor  e                                           ; $73e4: $ab
	xor  c                                           ; $73e5: $a9
	ld   h, a                                        ; $73e6: $67
	adc  d                                           ; $73e7: $8a
	cp   c                                           ; $73e8: $b9
	halt                                             ; $73e9: $76
	ld   h, a                                        ; $73ea: $67
	sbc  b                                           ; $73eb: $98
	add  a                                           ; $73ec: $87
	ld   h, a                                        ; $73ed: $67
	adc  b                                           ; $73ee: $88
	sbc  c                                           ; $73ef: $99
	adc  b                                           ; $73f0: $88
	adc  c                                           ; $73f1: $89
	add  a                                           ; $73f2: $87
	ld   h, l                                        ; $73f3: $65
	ld   l, b                                        ; $73f4: $68
	xor  d                                           ; $73f5: $aa
	cp   c                                           ; $73f6: $b9
	ld   h, l                                        ; $73f7: $65
	ld   d, a                                        ; $73f8: $57
	sbc  d                                           ; $73f9: $9a
	cp   c                                           ; $73fa: $b9
	add  [hl]                                        ; $73fb: $86
	ld   h, [hl]                                     ; $73fc: $66
	ld   a, c                                        ; $73fd: $79
	sbc  c                                           ; $73fe: $99
	add  a                                           ; $73ff: $87
	ld   h, [hl]                                     ; $7400: $66
	adc  b                                           ; $7401: $88
	sbc  c                                           ; $7402: $99
	ld   [hl], a                                     ; $7403: $77
	ld   a, b                                        ; $7404: $78
	adc  b                                           ; $7405: $88
	sbc  c                                           ; $7406: $99
	adc  b                                           ; $7407: $88
	ld   [hl], a                                     ; $7408: $77
	add  a                                           ; $7409: $87
	ld   [hl], a                                     ; $740a: $77
	ld   a, b                                        ; $740b: $78
	sbc  c                                           ; $740c: $99
	sub  a                                           ; $740d: $97
	ld   [hl], a                                     ; $740e: $77
	ld   a, b                                        ; $740f: $78
	adc  b                                           ; $7410: $88
	sbc  b                                           ; $7411: $98
	halt                                             ; $7412: $76
	ld   a, b                                        ; $7413: $78
	adc  d                                           ; $7414: $8a
	sbc  c                                           ; $7415: $99
	sub  a                                           ; $7416: $97
	ld   [hl], a                                     ; $7417: $77
	ld   a, c                                        ; $7418: $79
	sbc  b                                           ; $7419: $98
	add  a                                           ; $741a: $87
	ld   [hl], a                                     ; $741b: $77
	adc  c                                           ; $741c: $89
	sbc  c                                           ; $741d: $99
	adc  b                                           ; $741e: $88
	ld   [hl], a                                     ; $741f: $77
	ld   [hl], a                                     ; $7420: $77
	adc  c                                           ; $7421: $89
	sbc  c                                           ; $7422: $99
	sbc  b                                           ; $7423: $98
	halt                                             ; $7424: $76
	ld   a, b                                        ; $7425: $78
	xor  d                                           ; $7426: $aa
	xor  c                                           ; $7427: $a9
	halt                                             ; $7428: $76
	ld   d, [hl]                                     ; $7429: $56
	ld   a, b                                        ; $742a: $78
	sbc  c                                           ; $742b: $99
	sbc  b                                           ; $742c: $98
	add  a                                           ; $742d: $87
	ld   [hl], a                                     ; $742e: $77
	ld   a, b                                        ; $742f: $78
	adc  c                                           ; $7430: $89
	sbc  c                                           ; $7431: $99
	add  a                                           ; $7432: $87
	ld   [hl], a                                     ; $7433: $77
	adc  c                                           ; $7434: $89
	sbc  b                                           ; $7435: $98
	adc  b                                           ; $7436: $88
	add  a                                           ; $7437: $87
	ld   [hl], a                                     ; $7438: $77
	adc  b                                           ; $7439: $88
	adc  c                                           ; $743a: $89
	adc  b                                           ; $743b: $88
	ld   [hl], a                                     ; $743c: $77
	ld   a, b                                        ; $743d: $78
	sbc  c                                           ; $743e: $99
	sbc  b                                           ; $743f: $98
	adc  b                                           ; $7440: $88
	ld   [hl], a                                     ; $7441: $77
	ld   [hl], a                                     ; $7442: $77
	adc  b                                           ; $7443: $88
	sbc  c                                           ; $7444: $99
	adc  b                                           ; $7445: $88
	adc  b                                           ; $7446: $88
	adc  b                                           ; $7447: $88
	adc  b                                           ; $7448: $88
	sbc  b                                           ; $7449: $98
	sbc  b                                           ; $744a: $98
	add  a                                           ; $744b: $87
	ld   [hl], a                                     ; $744c: $77
	adc  c                                           ; $744d: $89
	sbc  c                                           ; $744e: $99
	sbc  b                                           ; $744f: $98
	ld   [hl], a                                     ; $7450: $77
	ld   a, b                                        ; $7451: $78
	adc  b                                           ; $7452: $88
	sbc  b                                           ; $7453: $98
	add  a                                           ; $7454: $87
	ld   [hl], a                                     ; $7455: $77
	adc  b                                           ; $7456: $88
	sbc  c                                           ; $7457: $99
	sbc  b                                           ; $7458: $98
	adc  b                                           ; $7459: $88
	adc  b                                           ; $745a: $88
	adc  b                                           ; $745b: $88
	adc  c                                           ; $745c: $89
	adc  c                                           ; $745d: $89
	adc  b                                           ; $745e: $88
	ld   [hl], a                                     ; $745f: $77
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
	ld   de, $1111                                   ; $746e: $11 $11 $11
	ld   de, $1111                                   ; $7471: $11 $11 $11
	ld   de, $1111                                   ; $7474: $11 $11 $11
	ld   de, $1111                                   ; $7477: $11 $11 $11
	ld   de, $1111                                   ; $747a: $11 $11 $11
	ld   de, $1111                                   ; $747d: $11 $11 $11
	ld   de, $1111                                   ; $7480: $11 $11 $11
	ld   de, $1111                                   ; $7483: $11 $11 $11
	ld   de, $1111                                   ; $7486: $11 $11 $11
	ld   de, $1111                                   ; $7489: $11 $11 $11
	ld   de, $0011                                   ; $748c: $11 $11 $00
	ld   c, b                                        ; $748f: $48
	ld   de, $1111                                   ; $7490: $11 $11 $11
	ld   de, $1111                                   ; $7493: $11 $11 $11
	ld   de, $1111                                   ; $7496: $11 $11 $11
	ld   de, $5413                                   ; $7499: $11 $13 $54
	ld   d, h                                        ; $749c: $54
	ld   d, h                                        ; $749d: $54
	ld   b, c                                        ; $749e: $41
	rra                                              ; $749f: $1f
	rst  $38                                         ; $74a0: $ff
	pop  af                                          ; $74a1: $f1
	ld   de, $1511                                   ; $74a2: $11 $11 $15
	or   c                                           ; $74a5: $b1
	ld   de, $d11c                                   ; $74a6: $11 $1c $d1
	db   $fc                                         ; $74a9: $fc
	pop  de                                          ; $74aa: $d1
	pop  af                                          ; $74ab: $f1
	ld   de, $1111                                   ; $74ac: $11 $11 $11
	ld   de, $1111                                   ; $74af: $11 $11 $11
	ld   de, $1111                                   ; $74b2: $11 $11 $11
	ld   de, $1111                                   ; $74b5: $11 $11 $11
	ld   de, $5411                                   ; $74b8: $11 $11 $54
	ld   b, h                                        ; $74bb: $44
	sub  l                                           ; $74bc: $95
	ld   de, $5454                                   ; $74bd: $11 $54 $54
	ld   h, a                                        ; $74c0: $67
	ld   [hl], d                                     ; $74c1: $72
	ld   de, $1111                                   ; $74c2: $11 $11 $11
	ld   de, $1112                                   ; $74c5: $11 $12 $11
	ld   [de], a                                     ; $74c8: $12
	ld   de, $1111                                   ; $74c9: $11 $11 $11
	ld   h, [hl]                                     ; $74cc: $66
	halt                                             ; $74cd: $76
	ld   [hl], l                                     ; $74ce: $75
	ld   de, $8888                                   ; $74cf: $11 $88 $88
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
	sbc  b                                           ; $74e4: $98
	adc  b                                           ; $74e5: $88
	add  a                                           ; $74e6: $87
	adc  b                                           ; $74e7: $88
	adc  b                                           ; $74e8: $88
	adc  b                                           ; $74e9: $88
	adc  b                                           ; $74ea: $88
	sbc  b                                           ; $74eb: $98
	adc  b                                           ; $74ec: $88
	sbc  b                                           ; $74ed: $98
	adc  b                                           ; $74ee: $88
	sbc  b                                           ; $74ef: $98
	ld   [hl], a                                     ; $74f0: $77
	ld   a, b                                        ; $74f1: $78
	sbc  b                                           ; $74f2: $98
	adc  b                                           ; $74f3: $88
	adc  b                                           ; $74f4: $88
	sbc  b                                           ; $74f5: $98
	adc  c                                           ; $74f6: $89
	adc  c                                           ; $74f7: $89
	adc  b                                           ; $74f8: $88
	adc  b                                           ; $74f9: $88
	adc  b                                           ; $74fa: $88
	add  a                                           ; $74fb: $87
	adc  c                                           ; $74fc: $89
	adc  b                                           ; $74fd: $88
	adc  b                                           ; $74fe: $88
	sbc  c                                           ; $74ff: $99
	ld   a, b                                        ; $7500: $78
	adc  b                                           ; $7501: $88
	sub  a                                           ; $7502: $97
	ld   a, b                                        ; $7503: $78
	sbc  b                                           ; $7504: $98
	sub  a                                           ; $7505: $97
	sbc  c                                           ; $7506: $99
	sbc  b                                           ; $7507: $98
	ld   [hl], a                                     ; $7508: $77
	adc  c                                           ; $7509: $89
	add  a                                           ; $750a: $87
	ld   a, c                                        ; $750b: $79
	sbc  b                                           ; $750c: $98
	ld   a, b                                        ; $750d: $78
	adc  c                                           ; $750e: $89
	adc  b                                           ; $750f: $88
	adc  b                                           ; $7510: $88
	sbc  c                                           ; $7511: $99
	ld   a, b                                        ; $7512: $78
	sbc  b                                           ; $7513: $98
	adc  b                                           ; $7514: $88
	ld   a, b                                        ; $7515: $78
	adc  c                                           ; $7516: $89
	sbc  b                                           ; $7517: $98
	adc  b                                           ; $7518: $88
	adc  c                                           ; $7519: $89
	sub  a                                           ; $751a: $97
	ld   a, c                                        ; $751b: $79
	sbc  b                                           ; $751c: $98
	ld   a, b                                        ; $751d: $78
	sub  a                                           ; $751e: $97
	ld   a, b                                        ; $751f: $78
	ld   a, b                                        ; $7520: $78
	sbc  c                                           ; $7521: $99
	halt                                             ; $7522: $76
	adc  d                                           ; $7523: $8a
	sub  a                                           ; $7524: $97
	ld   a, b                                        ; $7525: $78
	xor  b                                           ; $7526: $a8
	ld   a, b                                        ; $7527: $78
	ld   [hl], a                                     ; $7528: $77
	sub  a                                           ; $7529: $97
	adc  c                                           ; $752a: $89
	sbc  b                                           ; $752b: $98
	ld   [hl], a                                     ; $752c: $77
	ld   a, b                                        ; $752d: $78
	sbc  c                                           ; $752e: $99
	adc  b                                           ; $752f: $88
	ld   a, b                                        ; $7530: $78
	sbc  b                                           ; $7531: $98
	add  a                                           ; $7532: $87
	adc  b                                           ; $7533: $88
	sbc  b                                           ; $7534: $98
	adc  c                                           ; $7535: $89
	ld   a, c                                        ; $7536: $79
	adc  b                                           ; $7537: $88
	sbc  b                                           ; $7538: $98
	adc  b                                           ; $7539: $88
	ld   a, c                                        ; $753a: $79
	sbc  b                                           ; $753b: $98
	sub  a                                           ; $753c: $97
	ld   a, c                                        ; $753d: $79
	adc  c                                           ; $753e: $89
	add  a                                           ; $753f: $87
	adc  c                                           ; $7540: $89
	ld   a, c                                        ; $7541: $79
	ld   [hl], a                                     ; $7542: $77
	adc  b                                           ; $7543: $88
	ld   [hl], a                                     ; $7544: $77
	sbc  d                                           ; $7545: $9a
	sub  a                                           ; $7546: $97
	ld   a, b                                        ; $7547: $78
	adc  b                                           ; $7548: $88
	add  a                                           ; $7549: $87
	adc  c                                           ; $754a: $89
	adc  b                                           ; $754b: $88
	ld   l, b                                        ; $754c: $68
	ld   [hl], a                                     ; $754d: $77
	sbc  b                                           ; $754e: $98
	adc  b                                           ; $754f: $88
	add  a                                           ; $7550: $87
	sub  a                                           ; $7551: $97
	adc  c                                           ; $7552: $89
	adc  c                                           ; $7553: $89
	ld   [hl], a                                     ; $7554: $77
	adc  c                                           ; $7555: $89
	ld   a, b                                        ; $7556: $78
	adc  b                                           ; $7557: $88
	add  a                                           ; $7558: $87
	adc  b                                           ; $7559: $88
	add  a                                           ; $755a: $87
	sbc  b                                           ; $755b: $98
	sbc  b                                           ; $755c: $98
	sbc  b                                           ; $755d: $98
	ld   a, b                                        ; $755e: $78
	adc  b                                           ; $755f: $88
	adc  b                                           ; $7560: $88
	ld   a, c                                        ; $7561: $79
	add  a                                           ; $7562: $87
	adc  b                                           ; $7563: $88
	ld   a, b                                        ; $7564: $78
	sub  a                                           ; $7565: $97
	sbc  b                                           ; $7566: $98
	sub  a                                           ; $7567: $97
	ld   a, b                                        ; $7568: $78
	adc  b                                           ; $7569: $88
	add  a                                           ; $756a: $87
	ld   a, b                                        ; $756b: $78
	adc  c                                           ; $756c: $89
	halt                                             ; $756d: $76
	xor  c                                           ; $756e: $a9
	add  a                                           ; $756f: $87
	ld   a, c                                        ; $7570: $79
	sbc  b                                           ; $7571: $98
	ld   a, b                                        ; $7572: $78
	ld   [hl], a                                     ; $7573: $77
	sbc  c                                           ; $7574: $99
	ld   h, a                                        ; $7575: $67
	sbc  b                                           ; $7576: $98
	add  [hl]                                        ; $7577: $86
	adc  c                                           ; $7578: $89
	adc  b                                           ; $7579: $88
	ld   a, b                                        ; $757a: $78
	add  a                                           ; $757b: $87
	add  a                                           ; $757c: $87
	adc  b                                           ; $757d: $88
	add  a                                           ; $757e: $87
	ld   a, c                                        ; $757f: $79
	ld   [hl], a                                     ; $7580: $77
	and  a                                           ; $7581: $a7
	ld   a, b                                        ; $7582: $78
	adc  b                                           ; $7583: $88
	adc  b                                           ; $7584: $88
	ld   [hl], a                                     ; $7585: $77
	sbc  b                                           ; $7586: $98
	ld   [hl], a                                     ; $7587: $77
	adc  b                                           ; $7588: $88
	ld   a, b                                        ; $7589: $78
	adc  b                                           ; $758a: $88
	adc  c                                           ; $758b: $89
	ld   [hl], a                                     ; $758c: $77
	adc  b                                           ; $758d: $88
	sbc  b                                           ; $758e: $98
	add  a                                           ; $758f: $87
	adc  c                                           ; $7590: $89
	ld   a, b                                        ; $7591: $78
	adc  b                                           ; $7592: $88
	adc  b                                           ; $7593: $88
	sbc  b                                           ; $7594: $98
	ld   [hl], a                                     ; $7595: $77
	adc  c                                           ; $7596: $89
	add  a                                           ; $7597: $87
	adc  b                                           ; $7598: $88
	adc  c                                           ; $7599: $89
	ld   a, b                                        ; $759a: $78
	add  a                                           ; $759b: $87
	add  a                                           ; $759c: $87
	adc  b                                           ; $759d: $88
	ld   a, b                                        ; $759e: $78
	add  a                                           ; $759f: $87
	ld   a, b                                        ; $75a0: $78
	sbc  c                                           ; $75a1: $99
	ld   [hl], a                                     ; $75a2: $77
	adc  b                                           ; $75a3: $88
	ld   a, c                                        ; $75a4: $79
	sub  a                                           ; $75a5: $97
	ld   a, c                                        ; $75a6: $79
	sub  a                                           ; $75a7: $97
	adc  c                                           ; $75a8: $89
	ld   a, b                                        ; $75a9: $78
	adc  c                                           ; $75aa: $89
	adc  b                                           ; $75ab: $88
	adc  b                                           ; $75ac: $88
	sub  a                                           ; $75ad: $97
	adc  b                                           ; $75ae: $88
	adc  c                                           ; $75af: $89
	adc  b                                           ; $75b0: $88
	ld   a, b                                        ; $75b1: $78
	sub  a                                           ; $75b2: $97
	xor  c                                           ; $75b3: $a9
	halt                                             ; $75b4: $76
	xor  b                                           ; $75b5: $a8
	ld   a, b                                        ; $75b6: $78
	adc  b                                           ; $75b7: $88
	ld   a, b                                        ; $75b8: $78
	adc  b                                           ; $75b9: $88
	ld   a, b                                        ; $75ba: $78
	sub  [hl]                                        ; $75bb: $96
	sbc  c                                           ; $75bc: $99
	adc  b                                           ; $75bd: $88
	ld   [hl], a                                     ; $75be: $77
	ld   a, d                                        ; $75bf: $7a
	adc  c                                           ; $75c0: $89
	add  a                                           ; $75c1: $87
	sub  a                                           ; $75c2: $97
	sbc  b                                           ; $75c3: $98
	sbc  b                                           ; $75c4: $98
	ld   a, b                                        ; $75c5: $78
	ld   a, b                                        ; $75c6: $78
	adc  c                                           ; $75c7: $89
	sub  a                                           ; $75c8: $97
	ld   a, c                                        ; $75c9: $79
	ld   a, c                                        ; $75ca: $79
	add  a                                           ; $75cb: $87
	adc  b                                           ; $75cc: $88
	adc  c                                           ; $75cd: $89
	sub  a                                           ; $75ce: $97
	add  a                                           ; $75cf: $87
	adc  b                                           ; $75d0: $88
	ld   a, b                                        ; $75d1: $78
	add  [hl]                                        ; $75d2: $86
	adc  d                                           ; $75d3: $8a
	add  a                                           ; $75d4: $87
	ld   l, c                                        ; $75d5: $69
	adc  b                                           ; $75d6: $88
	ld   a, b                                        ; $75d7: $78
	sub  a                                           ; $75d8: $97
	adc  b                                           ; $75d9: $88
	ld   [hl], a                                     ; $75da: $77
	adc  d                                           ; $75db: $8a
	ld   l, b                                        ; $75dc: $68
	and  [hl]                                        ; $75dd: $a6
	ld   a, c                                        ; $75de: $79
	ld   a, b                                        ; $75df: $78
	sbc  b                                           ; $75e0: $98
	sub  [hl]                                        ; $75e1: $96
	sbc  c                                           ; $75e2: $99
	adc  b                                           ; $75e3: $88
	ld   a, d                                        ; $75e4: $7a
	ld   [hl], a                                     ; $75e5: $77
	sub  a                                           ; $75e6: $97
	sbc  b                                           ; $75e7: $98
	add  a                                           ; $75e8: $87
	adc  b                                           ; $75e9: $88
	ld   a, b                                        ; $75ea: $78
	sbc  b                                           ; $75eb: $98
	adc  b                                           ; $75ec: $88
	ld   l, c                                        ; $75ed: $69
	adc  b                                           ; $75ee: $88
	add  a                                           ; $75ef: $87
	and  [hl]                                        ; $75f0: $a6
	sbc  b                                           ; $75f1: $98
	ld   a, c                                        ; $75f2: $79
	adc  b                                           ; $75f3: $88
	add  a                                           ; $75f4: $87
	ld   l, c                                        ; $75f5: $69
	add  a                                           ; $75f6: $87
	adc  d                                           ; $75f7: $8a
	ld   [hl], a                                     ; $75f8: $77
	add  a                                           ; $75f9: $87
	sub  [hl]                                        ; $75fa: $96
	sbc  b                                           ; $75fb: $98
	ld   [hl], a                                     ; $75fc: $77
	adc  c                                           ; $75fd: $89
	ld   a, b                                        ; $75fe: $78
	adc  b                                           ; $75ff: $88
	ld   l, c                                        ; $7600: $69
	sbc  b                                           ; $7601: $98
	adc  b                                           ; $7602: $88
	ld   [hl], a                                     ; $7603: $77
	add  a                                           ; $7604: $87
	ld   a, c                                        ; $7605: $79
	adc  b                                           ; $7606: $88
	ld   l, b                                        ; $7607: $68
	and  [hl]                                        ; $7608: $a6
	sbc  d                                           ; $7609: $9a
	ld   a, b                                        ; $760a: $78
	adc  b                                           ; $760b: $88
	adc  b                                           ; $760c: $88
	add  a                                           ; $760d: $87
	adc  b                                           ; $760e: $88
	sbc  c                                           ; $760f: $99
	ld   [hl], a                                     ; $7610: $77
	add  a                                           ; $7611: $87
	ld   l, c                                        ; $7612: $69
	and  a                                           ; $7613: $a7
	sbc  b                                           ; $7614: $98
	ld   a, b                                        ; $7615: $78
	ld   a, c                                        ; $7616: $79
	sub  [hl]                                        ; $7617: $96
	ld   a, d                                        ; $7618: $7a
	add  a                                           ; $7619: $87
	adc  b                                           ; $761a: $88
	ld   l, b                                        ; $761b: $68
	and  [hl]                                        ; $761c: $a6
	adc  b                                           ; $761d: $88
	adc  d                                           ; $761e: $8a
	adc  c                                           ; $761f: $89
	adc  b                                           ; $7620: $88
	sub  a                                           ; $7621: $97
	ld   a, b                                        ; $7622: $78
	ld   h, a                                        ; $7623: $67
	add  a                                           ; $7624: $87
	add  a                                           ; $7625: $87
	sbc  d                                           ; $7626: $9a
	add  [hl]                                        ; $7627: $86
	sbc  b                                           ; $7628: $98
	ld   [hl], a                                     ; $7629: $77
	ld   a, b                                        ; $762a: $78
	sbc  b                                           ; $762b: $98
	or   a                                           ; $762c: $b7
	ld   h, a                                        ; $762d: $67
	sbc  b                                           ; $762e: $98
	ld   a, d                                        ; $762f: $7a
	sbc  c                                           ; $7630: $99
	ld   l, b                                        ; $7631: $68
	ld   [hl], a                                     ; $7632: $77
	sub  a                                           ; $7633: $97
	sub  [hl]                                        ; $7634: $96
	sbc  c                                           ; $7635: $99
	ld   l, b                                        ; $7636: $68
	sbc  b                                           ; $7637: $98
	sbc  b                                           ; $7638: $98
	ld   h, a                                        ; $7639: $67
	halt                                             ; $763a: $76
	sbc  l                                           ; $763b: $9d
	halt                                             ; $763c: $76
	sub  h                                           ; $763d: $94
	adc  b                                           ; $763e: $88
	sbc  e                                           ; $763f: $9b
	sub  [hl]                                        ; $7640: $96
	ld   a, c                                        ; $7641: $79
	ld   c, c                                        ; $7642: $49
	ld   a, b                                        ; $7643: $78
	sub  l                                           ; $7644: $95
	sbc  e                                           ; $7645: $9b
	halt                                             ; $7646: $76
	push bc                                          ; $7647: $c5
	ld   l, e                                        ; $7648: $6b
	add  [hl]                                        ; $7649: $86
	ld   e, c                                        ; $764a: $59
	add  a                                           ; $764b: $87
	ld   h, a                                        ; $764c: $67
	add  a                                           ; $764d: $87
	and  [hl]                                        ; $764e: $a6
	xor  d                                           ; $764f: $aa
	ld   e, d                                        ; $7650: $5a
	ld   [hl], h                                     ; $7651: $74
	adc  d                                           ; $7652: $8a
	adc  b                                           ; $7653: $88
	adc  c                                           ; $7654: $89
	sub  l                                           ; $7655: $95
	adc  c                                           ; $7656: $89
	ld   a, b                                        ; $7657: $78
	adc  c                                           ; $7658: $89
	ld   h, [hl]                                     ; $7659: $66
	adc  h                                           ; $765a: $8c
	add  hl, sp                                      ; $765b: $39
	or   e                                           ; $765c: $b3
	jp   Jump_0d2_5ad8                               ; $765d: $c3 $d8 $5a


	ld   l, d                                        ; $7660: $6a
	add  hl, hl                                      ; $7661: $29
	or   h                                           ; $7662: $b4
	adc  l                                           ; $7663: $8d
	ld   b, [hl]                                     ; $7664: $46
	sbc  b                                           ; $7665: $98
	ld   h, [hl]                                     ; $7666: $66
	cp   b                                           ; $7667: $b8
	and  l                                           ; $7668: $a5
	ld   a, c                                        ; $7669: $79
	ld   l, b                                        ; $766a: $68
	sub  a                                           ; $766b: $97
	sbc  c                                           ; $766c: $99
	sbc  c                                           ; $766d: $99
	ld   b, a                                        ; $766e: $47
	adc  c                                           ; $766f: $89
	ld   l, d                                        ; $7670: $6a
	ld   l, c                                        ; $7671: $69
	and  h                                           ; $7672: $a4
	add  a                                           ; $7673: $87
	ld   l, c                                        ; $7674: $69
	pop  af                                          ; $7675: $f1
	ld   e, c                                        ; $7676: $59

Jump_0d2_7677:
	sbc  h                                           ; $7677: $9c
	ld   e, a                                        ; $7678: $5f
	ld   h, h                                        ; $7679: $64
	ld   d, [hl]                                     ; $767a: $56
	ld   l, d                                        ; $767b: $6a
	adc  d                                           ; $767c: $8a
	jp   nz, $a99a                                   ; $767d: $c2 $9a $a9

	ld   h, [hl]                                     ; $7680: $66
	adc  c                                           ; $7681: $89
	sub  a                                           ; $7682: $97
	ld   [hl], a                                     ; $7683: $77
	ld   a, c                                        ; $7684: $79
	ld   b, a                                        ; $7685: $47
	xor  c                                           ; $7686: $a9
	and  a                                           ; $7687: $a7
	ld   l, c                                        ; $7688: $69
	ld   l, c                                        ; $7689: $69
	ld   l, c                                        ; $768a: $69
	add  l                                           ; $768b: $85
	push af                                          ; $768c: $f5
	add  hl, sp                                      ; $768d: $39
	ld   [hl], a                                     ; $768e: $77
	cp   l                                           ; $768f: $bd
	ld   l, b                                        ; $7690: $68
	ld   d, a                                        ; $7691: $57
	ld   d, h                                        ; $7692: $54
	jp   hl                                          ; $7693: $e9


	ld   a, b                                        ; $7694: $78
	ld   l, b                                        ; $7695: $68
	ld   l, c                                        ; $7696: $69

jr_0d2_7697:
	ld   h, l                                        ; $7697: $65
	xor  c                                           ; $7698: $a9
	add  [hl]                                        ; $7699: $86
	ld   e, e                                        ; $769a: $5b
	ld   h, l                                        ; $769b: $65
	ret                                              ; $769c: $c9


	ld   c, c                                        ; $769d: $49
	xor  b                                           ; $769e: $a8
	or   [hl]                                        ; $769f: $b6
	sbc  b                                           ; $76a0: $98
	ld   h, a                                        ; $76a1: $67
	ld   a, c                                        ; $76a2: $79
	ld   a, c                                        ; $76a3: $79
	add  [hl]                                        ; $76a4: $86
	sbc  e                                           ; $76a5: $9b
	inc  l                                           ; $76a6: $2c
	and  e                                           ; $76a7: $a3

Jump_0d2_76a8:
	and  [hl]                                        ; $76a8: $a6
	add  a                                           ; $76a9: $87
	jp   c, $6468                                    ; $76aa: $da $68 $64

	ld   e, l                                        ; $76ad: $5d
	add  l                                           ; $76ae: $85
	cp   b                                           ; $76af: $b8
	ld   [hl], l                                     ; $76b0: $75
	ld   a, c                                        ; $76b1: $79
	adc  c                                           ; $76b2: $89
	ld   l, b                                        ; $76b3: $68
	ld   l, e                                        ; $76b4: $6b
	ld   [hl], l                                     ; $76b5: $75
	sub  [hl]                                        ; $76b6: $96
	push bc                                          ; $76b7: $c5
	xor  e                                           ; $76b8: $ab
	ld   c, h                                        ; $76b9: $4c
	ld   a, b                                        ; $76ba: $78
	add  l                                           ; $76bb: $85
	and  a                                           ; $76bc: $a7
	ld   e, d                                        ; $76bd: $5a
	and  e                                           ; $76be: $a3
	xor  b                                           ; $76bf: $a8
	ld   e, h                                        ; $76c0: $5c
	ld   l, h                                        ; $76c1: $6c
	ld   h, [hl]                                     ; $76c2: $66
	or   [hl]                                        ; $76c3: $b6
	ld   [hl], h                                     ; $76c4: $74
	and  [hl]                                        ; $76c5: $a6
	xor  d                                           ; $76c6: $aa
	ld   h, [hl]                                     ; $76c7: $66
	ld   a, e                                        ; $76c8: $7b
	dec  a                                           ; $76c9: $3d
	ld   e, b                                        ; $76ca: $58
	rst  $20                                         ; $76cb: $e7
	add  e                                           ; $76cc: $83
	ld   [hl], l                                     ; $76cd: $75
	rst  $30                                         ; $76ce: $f7
	inc  e                                           ; $76cf: $1c
	adc  b                                           ; $76d0: $88
	add  hl, hl                                      ; $76d1: $29
	db   $d3                                         ; $76d2: $d3
	or   h                                           ; $76d3: $b4
	sub  $4f                                         ; $76d4: $d6 $4f
	ld   d, [hl]                                     ; $76d6: $56
	ld   l, h                                        ; $76d7: $6c
	ld   a, [de]                                     ; $76d8: $1a
	or   l                                           ; $76d9: $b5
	add  $76                                         ; $76da: $c6 $76
	db   $d3                                         ; $76dc: $d3
	adc  [hl]                                        ; $76dd: $8e
	jr   c, jr_0d2_7697                              ; $76de: $38 $b7

	ld   a, d                                        ; $76e0: $7a
	xor  b                                           ; $76e1: $a8
	cp   d                                           ; $76e2: $ba
	ld   [hl], a                                     ; $76e3: $77
	and  l                                           ; $76e4: $a5
	ld   e, d                                        ; $76e5: $5a
	ld   l, c                                        ; $76e6: $69
	ld   h, a                                        ; $76e7: $67
	ld   a, d                                        ; $76e8: $7a
	sub  [hl]                                        ; $76e9: $96
	rst  ToBoot                                         ; $76ea: $c7
	ld   [hl], a                                     ; $76eb: $77
	ld   l, h                                        ; $76ec: $6c
	add  l                                           ; $76ed: $85
	cp   d                                           ; $76ee: $ba
	ld   l, c                                        ; $76ef: $69
	ld   l, b                                        ; $76f0: $68
	call nz, Call_0d2_797a                           ; $76f1: $c4 $7a $79
	add  l                                           ; $76f4: $85
	sbc  c                                           ; $76f5: $99
	ld   l, d                                        ; $76f6: $6a
	ld   l, d                                        ; $76f7: $6a
	adc  d                                           ; $76f8: $8a
	ld   [hl], a                                     ; $76f9: $77
	or   d                                           ; $76fa: $b2
	cp   b                                           ; $76fb: $b8
	ld   l, b                                        ; $76fc: $68
	adc  d                                           ; $76fd: $8a
	ld   d, [hl]                                     ; $76fe: $56
	xor  c                                           ; $76ff: $a9
	ld   [hl], l                                     ; $7700: $75
	ld   e, c                                        ; $7701: $59
	xor  e                                           ; $7702: $ab
	sub  a                                           ; $7703: $97
	xor  e                                           ; $7704: $ab
	add  l                                           ; $7705: $85
	sub  l                                           ; $7706: $95
	adc  c                                           ; $7707: $89
	ld   l, [hl]                                     ; $7708: $6e
	ld   a, b                                        ; $7709: $78
	and  l                                           ; $770a: $a5
	or   h                                           ; $770b: $b4
	sbc  c                                           ; $770c: $99
	ld   e, b                                        ; $770d: $58
	adc  e                                           ; $770e: $8b
	ld   a, b                                        ; $770f: $78
	or   a                                           ; $7710: $b7
	xor  b                                           ; $7711: $a8
	ld   e, d                                        ; $7712: $5a
	sub  [hl]                                        ; $7713: $96
	sbc  b                                           ; $7714: $98
	xor  e                                           ; $7715: $ab
	add  a                                           ; $7716: $87
	sub  h                                           ; $7717: $94
	ld   l, h                                        ; $7718: $6c
	ld   c, d                                        ; $7719: $4a
	ld   l, c                                        ; $771a: $69
	adc  d                                           ; $771b: $8a
	or   a                                           ; $771c: $b7
	db   $e4                                         ; $771d: $e4
	adc  d                                           ; $771e: $8a
	cp   c                                           ; $771f: $b9
	adc  d                                           ; $7720: $8a
	cp   e                                           ; $7721: $bb
	ld   e, e                                        ; $7722: $5b

jr_0d2_7723:
	ld   h, e                                        ; $7723: $63
	dec  h                                           ; $7724: $25
	ld   [hl], l                                     ; $7725: $75
	add  l                                           ; $7726: $85
	res  7, h                                        ; $7727: $cb $bc
	ld   l, b                                        ; $7729: $68
	db   $dd                                         ; $772a: $dd
	call $b298                                       ; $772b: $cd $98 $b2
	ld   hl, $2b11                                   ; $772e: $21 $11 $2b
	ld   e, [hl]                                     ; $7731: $5e
	sbc  d                                           ; $7732: $9a
	sbc  b                                           ; $7733: $98
	ei                                               ; $7734: $fb
	cp   $ff                                         ; $7735: $fe $ff
	ret  c                                           ; $7737: $d8

	ld   de, $5146                                   ; $7738: $11 $46 $51
	ld   de, $bc98                                   ; $773b: $11 $98 $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $773e: $cf
	rst  $38                                         ; $773f: $ff
	rst  $38                                         ; $7740: $ff
	xor  b                                           ; $7741: $a8
	ld   hl, $21b7                                   ; $7742: $21 $b7 $21
	ld   de, $8e89                                   ; $7745: $11 $89 $8e
	xor  h                                           ; $7748: $ac
	cp   $ff                                         ; $7749: $fe $ff
	ld   sp, hl                                      ; $774b: $f9
	ld   de, $1147                                   ; $774c: $11 $47 $11
	ld   de, $ca95                                   ; $774f: $11 $95 $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7752: $cf
	rst  $28                                         ; $7753: $ef
	rst  $38                                         ; $7754: $ff
	db   $d3                                         ; $7755: $d3
	ld   de, $16f2                                   ; $7756: $11 $f2 $16
	inc  d                                           ; $7759: $14
	ld   a, d                                        ; $775a: $7a
	xor  [hl]                                        ; $775b: $ae
	adc  l                                           ; $775c: $8d
	cp   $fe                                         ; $775d: $fe $fe
	ld   h, c                                        ; $775f: $61
	jr   @+$44                                       ; $7760: $18 $42

	ld   [hl], c                                     ; $7762: $71
	ld   a, [hl+]                                    ; $7763: $2a
	reti                                             ; $7764: $d9


	jp   c, $cf7f                                    ; $7765: $da $7f $cf

	ld   a, [$a611]                                  ; $7768: $fa $11 $a6
	ld   [hl], c                                     ; $776b: $71
	jr   c, jr_0d2_7723                              ; $776c: $38 $b5

	adc  [hl]                                        ; $776e: $8e
	sbc  a                                           ; $776f: $9f
	rst  $38                                         ; $7770: $ff
	db   $fc                                         ; $7771: $fc
	ld   b, c                                        ; $7772: $41
	ld   de, $8a28                                   ; $7773: $11 $28 $8a
	ld   e, [hl]                                     ; $7776: $5e
	add  $d4                                         ; $7777: $c6 $d4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7779: $cf
	rst  $38                                         ; $777a: $ff
	add  c                                           ; $777b: $81
	ld   [de], a                                     ; $777c: $12
	inc  e                                           ; $777d: $1c
	or   a                                           ; $777e: $b7
	xor  c                                           ; $777f: $a9
	ld   a, [$fe15]                                  ; $7780: $fa $15 $fe
	rst  $38                                         ; $7783: $ff
	ld   b, c                                        ; $7784: $41
	ld   [de], a                                     ; $7785: $12
	ld   b, [hl]                                     ; $7786: $46
	ld   l, a                                        ; $7787: $6f
	cp   $42                                         ; $7788: $fe $42
	push de                                          ; $778a: $d5
	ld   a, a                                        ; $778b: $7f
	db   $fd                                         ; $778c: $fd
	ld   de, $6811                                   ; $778d: $11 $11 $68
	rst  $38                                         ; $7790: $ff
	rst  $38                                         ; $7791: $ff
	add  a                                           ; $7792: $87
	ld   d, c                                        ; $7793: $51
	adc  a                                           ; $7794: $8f
	or   $11                                         ; $7795: $f6 $11
	inc  d                                           ; $7797: $14
	ld   e, c                                        ; $7798: $59
	rst  $38                                         ; $7799: $ff
	db   $fd                                         ; $779a: $fd
	dec  d                                           ; $779b: $15
	ld   d, e                                        ; $779c: $53
	rst  JumpTable                                         ; $779d: $df
	pop  af                                          ; $779e: $f1
	ld   de, $7b12                                   ; $779f: $11 $12 $7b
	rst  $38                                         ; $77a2: $ff
	ld   hl, sp+$71                                  ; $77a3: $f8 $71
	dec  hl                                          ; $77a5: $2b
	adc  a                                           ; $77a6: $8f
	ld   b, c                                        ; $77a7: $41
	ld   [de], a                                     ; $77a8: $12
	daa                                              ; $77a9: $27
	rst  JumpTable                                         ; $77aa: $df
	rst  $38                                         ; $77ab: $ff
	add  [hl]                                        ; $77ac: $86
	ld   h, l                                        ; $77ad: $65
	ld   b, [hl]                                     ; $77ae: $46
	rst  $30                                         ; $77af: $f7
	ld   de, $3d41                                   ; $77b0: $11 $41 $3d
	rst  $38                                         ; $77b3: $ff
	db   $fc                                         ; $77b4: $fc
	sub  [hl]                                        ; $77b5: $96
	ld   a, [hl+]                                    ; $77b6: $2a
	adc  b                                           ; $77b7: $88
	ld   [hl], c                                     ; $77b8: $71
	ld   de, $cf13                                   ; $77b9: $11 $13 $cf
	rst  $38                                         ; $77bc: $ff
	jp   c, $c544                                    ; $77bd: $da $44 $c5

	add  e                                           ; $77c0: $83
	ld   de, $3e11                                   ; $77c1: $11 $11 $3e
	rst  $38                                         ; $77c4: $ff
	db   $fd                                         ; $77c5: $fd
	sub  h                                           ; $77c6: $94
	ld   c, [hl]                                     ; $77c7: $4e
	ld   hl, $1151                                   ; $77c8: $21 $51 $11
	ld   de, $ffff                                   ; $77cb: $11 $ff $ff
	db   $fd                                         ; $77ce: $fd
	ld   d, $b2                                      ; $77cf: $16 $b2
	ld   b, c                                        ; $77d1: $41
	ld   de, $7f11                                   ; $77d2: $11 $11 $7f
	rst  $38                                         ; $77d5: $ff
	rst  $38                                         ; $77d6: $ff
	pop  af                                          ; $77d7: $f1
	ld   e, d                                        ; $77d8: $5a
	ld   d, d                                        ; $77d9: $52
	ld   de, $1841                                   ; $77da: $11 $41 $18
	rst  $38                                         ; $77dd: $ff
	rst  $38                                         ; $77de: $ff
	ld   sp, hl                                      ; $77df: $f9
	add  hl, de                                      ; $77e0: $19
	or   c                                           ; $77e1: $b1
	ld   de, $1111                                   ; $77e2: $11 $11 $11
	adc  a                                           ; $77e5: $8f
	rst  $38                                         ; $77e6: $ff
	rst  $38                                         ; $77e7: $ff
	inc  h                                           ; $77e8: $24
	pop  bc                                          ; $77e9: $c1
	ld   b, c                                        ; $77ea: $41
	inc  d                                           ; $77eb: $14
	ld   de, $ff1f                                   ; $77ec: $11 $1f $ff
	rst  $38                                         ; $77ef: $ff
	pop  af                                          ; $77f0: $f1
	ld   h, $21                                      ; $77f1: $26 $21
	ld   de, $1351                                   ; $77f3: $11 $51 $13
	rst  $38                                         ; $77f6: $ff
	rst  $38                                         ; $77f7: $ff
	pop  af                                          ; $77f8: $f1
	ccf                                              ; $77f9: $3f
	ld   sp, $6111                                   ; $77fa: $31 $11 $61
	ld   de, $ff5f                                   ; $77fd: $11 $5f $ff
	cp   $29                                         ; $7800: $fe $29
	sub  c                                           ; $7802: $91
	ld   de, $1114                                   ; $7803: $11 $14 $11
	rra                                              ; $7806: $1f
	rst  $38                                         ; $7807: $ff
	rst  $38                                         ; $7808: $ff
	and  a                                           ; $7809: $a7
	or   h                                           ; $780a: $b4
	ld   de, $1111                                   ; $780b: $11 $11 $11
	ld   de, $ffff                                   ; $780e: $11 $ff $ff
	db   $f4                                         ; $7811: $f4
	xor  c                                           ; $7812: $a9
	ld   hl, $1111                                   ; $7813: $21 $11 $11
	ld   de, $ffff                                   ; $7816: $11 $ff $ff
	cp   $17                                         ; $7819: $fe $17
	add  e                                           ; $781b: $83
	ld   de, $1111                                   ; $781c: $11 $11 $11
	rra                                              ; $781f: $1f
	rst  $38                                         ; $7820: $ff
	rst  $38                                         ; $7821: $ff
	xor  c                                           ; $7822: $a9
	ld   h, l                                        ; $7823: $65
	ld   de, $1111                                   ; $7824: $11 $11 $11
	dec  de                                          ; $7827: $1b
	rst  $38                                         ; $7828: $ff
	rst  $38                                         ; $7829: $ff
	jp   z, $816a                                    ; $782a: $ca $6a $81

	ld   de, $1111                                   ; $782d: $11 $11 $11
	rst  $38                                         ; $7830: $ff
	rst  $38                                         ; $7831: $ff
	db   $fc                                         ; $7832: $fc
	db   $db                                         ; $7833: $db
	or   a                                           ; $7834: $b7
	ld   de, $1111                                   ; $7835: $11 $11 $11
	ld   a, a                                        ; $7838: $7f
	rst  $38                                         ; $7839: $ff
	rst  $38                                         ; $783a: $ff
	db   $eb                                         ; $783b: $eb
	add  hl, sp                                      ; $783c: $39
	ld   de, $1111                                   ; $783d: $11 $11 $11
	rra                                              ; $7840: $1f
	rst  $38                                         ; $7841: $ff
	rst  $38                                         ; $7842: $ff
	ld   hl, sp-$68                                  ; $7843: $f8 $98
	ld   h, c                                        ; $7845: $61
	ld   de, $1111                                   ; $7846: $11 $11 $11
	rst  $38                                         ; $7849: $ff
	rst  $38                                         ; $784a: $ff
	cp   $d7                                         ; $784b: $fe $d7
	or   c                                           ; $784d: $b1
	ld   de, $1111                                   ; $784e: $11 $11 $11
	rst  $28                                         ; $7851: $ef
	rst  $38                                         ; $7852: $ff
	rst  $38                                         ; $7853: $ff
	rst  JumpTable                                         ; $7854: $df
	ld   e, e                                        ; $7855: $5b
	ld   de, $1111                                   ; $7856: $11 $11 $11
	rra                                              ; $7859: $1f
	rst  $38                                         ; $785a: $ff
	rst  $38                                         ; $785b: $ff
	rst  $38                                         ; $785c: $ff
	and  [hl]                                        ; $785d: $a6
	and  c                                           ; $785e: $a1
	ld   de, $1411                                   ; $785f: $11 $11 $14
	rst  $38                                         ; $7862: $ff
	rst  $38                                         ; $7863: $ff
	db   $fc                                         ; $7864: $fc
	rst  $30                                         ; $7865: $f7
	pop  de                                          ; $7866: $d1
	ld   de, $1111                                   ; $7867: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $786a: $cf
	rst  $38                                         ; $786b: $ff
	rst  $38                                         ; $786c: $ff
	rst  $28                                         ; $786d: $ef
	adc  [hl]                                        ; $786e: $8e
	ld   de, $1111                                   ; $786f: $11 $11 $11
	rra                                              ; $7872: $1f
	rst  $38                                         ; $7873: $ff
	rst  $38                                         ; $7874: $ff
	rst  $28                                         ; $7875: $ef
	di                                               ; $7876: $f3
	pop  hl                                          ; $7877: $e1
	ld   de, $1211                                   ; $7878: $11 $11 $12
	rst  $38                                         ; $787b: $ff
	rst  $38                                         ; $787c: $ff
	ei                                               ; $787d: $fb
	rst  $38                                         ; $787e: $ff
	ld   e, [hl]                                     ; $787f: $5e
	ld   de, $1311                                   ; $7880: $11 $11 $13
	rra                                              ; $7883: $1f
	rst  $38                                         ; $7884: $ff
	rst  $38                                         ; $7885: $ff
	xor  a                                           ; $7886: $af
	cp   [hl]                                        ; $7887: $be
	pop  bc                                          ; $7888: $c1
	ld   de, $3111                                   ; $7889: $11 $11 $31
	rst  $38                                         ; $788c: $ff
	rst  $38                                         ; $788d: $ff
	rst  $38                                         ; $788e: $ff
	ld   a, [$11fa]                                  ; $788f: $fa $fa $11
	ld   de, $1f13                                   ; $7892: $11 $13 $1f
	rst  $38                                         ; $7895: $ff
	rst  $38                                         ; $7896: $ff
	rst  $38                                         ; $7897: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7898: $cf
	or   c                                           ; $7899: $b1
	ld   de, $5111                                   ; $789a: $11 $11 $51
	rst  $38                                         ; $789d: $ff
	rst  $38                                         ; $789e: $ff
	db   $fc                                         ; $789f: $fc
	rst  $38                                         ; $78a0: $ff
	rst  $38                                         ; $78a1: $ff
	ld   de, $1511                                   ; $78a2: $11 $11 $15
	rra                                              ; $78a5: $1f
	rst  $38                                         ; $78a6: $ff
	rst  $38                                         ; $78a7: $ff
	xor  a                                           ; $78a8: $af
	rst  $38                                         ; $78a9: $ff
	pop  af                                          ; $78aa: $f1
	ld   de, $2111                                   ; $78ab: $11 $11 $21
	rst  $38                                         ; $78ae: $ff
	rst  $38                                         ; $78af: $ff
	db   $fc                                         ; $78b0: $fc
	rst  $38                                         ; $78b1: $ff
	rst  $38                                         ; $78b2: $ff
	ld   de, $1111                                   ; $78b3: $11 $11 $11
	ld   b, l                                        ; $78b6: $45
	rst  $38                                         ; $78b7: $ff
	rst  $38                                         ; $78b8: $ff
	rst  JumpTable                                         ; $78b9: $df
	cp   $f1                                         ; $78ba: $fe $f1
	ld   de, $1411                                   ; $78bc: $11 $11 $14
	rrca                                             ; $78bf: $0f
	rst  $38                                         ; $78c0: $ff
	rst  $38                                         ; $78c1: $ff
	rst  $38                                         ; $78c2: $ff
	rst  $38                                         ; $78c3: $ff
	or   c                                           ; $78c4: $b1
	ld   de, $6111                                   ; $78c5: $11 $11 $61
	rst  $38                                         ; $78c8: $ff
	rst  $38                                         ; $78c9: $ff
	rst  $38                                         ; $78ca: $ff
	rst  $38                                         ; $78cb: $ff
	rst  $38                                         ; $78cc: $ff
	ld   de, $1111                                   ; $78cd: $11 $11 $11
	ld   h, h                                        ; $78d0: $64
	rst  $38                                         ; $78d1: $ff
	rst  $38                                         ; $78d2: $ff
	rst  $38                                         ; $78d3: $ff
	rst  $38                                         ; $78d4: $ff
	ld   sp, hl                                      ; $78d5: $f9
	ld   de, $1611                                   ; $78d6: $11 $11 $16
	rra                                              ; $78d9: $1f
	rst  $38                                         ; $78da: $ff
	rst  $38                                         ; $78db: $ff
	rst  $38                                         ; $78dc: $ff
	rst  $38                                         ; $78dd: $ff
	pop  af                                          ; $78de: $f1
	ld   de, $1b11                                   ; $78df: $11 $11 $1b
	rra                                              ; $78e2: $1f
	rst  $38                                         ; $78e3: $ff
	rst  $38                                         ; $78e4: $ff
	rst  $38                                         ; $78e5: $ff
	rst  $38                                         ; $78e6: $ff
	pop  af                                          ; $78e7: $f1
	ld   de, $1b11                                   ; $78e8: $11 $11 $1b
	ccf                                              ; $78eb: $3f
	rst  $38                                         ; $78ec: $ff
	rst  $38                                         ; $78ed: $ff
	rst  $38                                         ; $78ee: $ff
	rst  $38                                         ; $78ef: $ff
	pop  af                                          ; $78f0: $f1
	ld   de, $1c11                                   ; $78f1: $11 $11 $1c
	ld   l, a                                        ; $78f4: $6f
	rst  $38                                         ; $78f5: $ff
	rst  $38                                         ; $78f6: $ff
	rst  $38                                         ; $78f7: $ff
	rst  $38                                         ; $78f8: $ff
	pop  af                                          ; $78f9: $f1
	ld   de, $1a11                                   ; $78fa: $11 $11 $1a
	ld   a, a                                        ; $78fd: $7f
	rst  $38                                         ; $78fe: $ff
	rst  $38                                         ; $78ff: $ff
	rst  $38                                         ; $7900: $ff
	rst  $38                                         ; $7901: $ff
	pop  af                                          ; $7902: $f1
	ld   de, $1c11                                   ; $7903: $11 $11 $1c
	ccf                                              ; $7906: $3f
	rst  $38                                         ; $7907: $ff
	rst  $38                                         ; $7908: $ff
	rst  $38                                         ; $7909: $ff
	rst  $38                                         ; $790a: $ff
	pop  af                                          ; $790b: $f1
	ld   de, $1711                                   ; $790c: $11 $11 $17
	ld   c, [hl]                                     ; $790f: $4e
	rst  $38                                         ; $7910: $ff
	rst  $38                                         ; $7911: $ff
	rst  $38                                         ; $7912: $ff
	rst  $38                                         ; $7913: $ff
	ld   a, [$1111]                                  ; $7914: $fa $11 $11
	ld   de, $ff82                                   ; $7917: $11 $82 $ff
	rst  $38                                         ; $791a: $ff
	rst  $38                                         ; $791b: $ff
	rst  $38                                         ; $791c: $ff
	rst  $38                                         ; $791d: $ff
	ld   de, $1111                                   ; $791e: $11 $11 $11
	inc  de                                          ; $7921: $13
	adc  a                                           ; $7922: $8f
	rst  $38                                         ; $7923: $ff
	rst  $38                                         ; $7924: $ff
	rst  $38                                         ; $7925: $ff
	rst  $38                                         ; $7926: $ff
	pop  af                                          ; $7927: $f1
	ld   de, $1111                                   ; $7928: $11 $11 $11
	inc  e                                           ; $792b: $1c
	rst  $38                                         ; $792c: $ff
	rst  $38                                         ; $792d: $ff
	rst  $38                                         ; $792e: $ff
	rst  $38                                         ; $792f: $ff
	rst  $38                                         ; $7930: $ff
	ld   de, $1111                                   ; $7931: $11 $11 $11
	ld   hl, $ffaf                                   ; $7934: $21 $af $ff
	rst  $38                                         ; $7937: $ff
	rst  $38                                         ; $7938: $ff
	rst  $38                                         ; $7939: $ff
	pop  af                                          ; $793a: $f1
	ld   de, $1111                                   ; $793b: $11 $11 $11
	inc  [hl]                                        ; $793e: $34
	rst  $38                                         ; $793f: $ff
	rst  $38                                         ; $7940: $ff
	rst  $38                                         ; $7941: $ff
	rst  $38                                         ; $7942: $ff
	rst  $38                                         ; $7943: $ff
	ld   sp, $1111                                   ; $7944: $31 $11 $11
	inc  de                                          ; $7947: $13
	dec  e                                           ; $7948: $1d
	rst  $38                                         ; $7949: $ff
	rst  $38                                         ; $794a: $ff
	rst  $38                                         ; $794b: $ff
	rst  $38                                         ; $794c: $ff
	ei                                               ; $794d: $fb
	ld   de, $1111                                   ; $794e: $11 $11 $11
	ld   de, $ff1f                                   ; $7951: $11 $1f $ff
	rst  $38                                         ; $7954: $ff
	rst  $38                                         ; $7955: $ff
	rst  $38                                         ; $7956: $ff
	db   $f4                                         ; $7957: $f4
	ld   de, $1111                                   ; $7958: $11 $11 $11
	ld   de, $ff19                                   ; $795b: $11 $19 $ff
	rst  $38                                         ; $795e: $ff
	rst  $38                                         ; $795f: $ff
	cp   a                                           ; $7960: $bf
	or   $21                                         ; $7961: $f6 $21
	ld   de, $1111                                   ; $7963: $11 $11 $11
	ld   de, $ffff                                   ; $7966: $11 $ff $ff
	rst  $38                                         ; $7969: $ff
	rst  $38                                         ; $796a: $ff
	ret  c                                           ; $796b: $d8

	ld   de, $f56d                                   ; $796c: $11 $6d $f5
	ld   de, $9d11                                   ; $796f: $11 $11 $9d
	db   $fd                                         ; $7972: $fd
	ld   l, e                                        ; $7973: $6b
	rst  $38                                         ; $7974: $ff
	db   $fd                                         ; $7975: $fd
	ld   d, h                                        ; $7976: $54
	add  hl, de                                      ; $7977: $19
	rst  $38                                         ; $7978: $ff
	ld   sp, hl                                      ; $7979: $f9

Call_0d2_797a:
	ld   de, $ac12                                   ; $797a: $11 $12 $ac
	ld   sp, $af12                                   ; $797d: $31 $12 $af
	db   $eb                                         ; $7980: $eb
	add  a                                           ; $7981: $87
	cp   l                                           ; $7982: $bd
	rst  $28                                         ; $7983: $ef
	rst  $38                                         ; $7984: $ff
	db   $fd                                         ; $7985: $fd
	ld   d, c                                        ; $7986: $51
	ld   [de], a                                     ; $7987: $12
	ld   hl, $1111                                   ; $7988: $21 $11 $11
	rla                                              ; $798b: $17
	cp   d                                           ; $798c: $ba
	cp   [hl]                                        ; $798d: $be
	rst  $38                                         ; $798e: $ff
	rst  $38                                         ; $798f: $ff
	rst  $38                                         ; $7990: $ff
	rst  $38                                         ; $7991: $ff
	ei                                               ; $7992: $fb
	ld   de, $4711                                   ; $7993: $11 $11 $47
	ld   d, c                                        ; $7996: $51
	ld   de, $bd15                                   ; $7997: $11 $15 $bd
	call z, $ffef                                    ; $799a: $cc $ef $ff
	or   a                                           ; $799d: $b7
	adc  a                                           ; $799e: $8f
	rst  $38                                         ; $799f: $ff
	db   $fc                                         ; $79a0: $fc
	ld   hl, $b619                                   ; $79a1: $21 $19 $b6
	ld   de, $1211                                   ; $79a4: $11 $11 $12

Call_0d2_79a7:
	ld   [hl-], a                                    ; $79a7: $32
	ld   d, $ef                                      ; $79a8: $16 $ef
	rst  $38                                         ; $79aa: $ff
	ld   [$ffef], a                                  ; $79ab: $ea $ef $ff
	ei                                               ; $79ae: $fb
	halt                                             ; $79af: $76
	xor  h                                           ; $79b0: $ac
	sub  h                                           ; $79b1: $94
	ld   de, $1111                                   ; $79b2: $11 $11 $11
	ld   de, $6b11                                   ; $79b5: $11 $11 $6b
	cp   $fe                                         ; $79b8: $fe $fe
	rst  $28                                         ; $79ba: $ef
	rst  $38                                         ; $79bb: $ff
	rst  $38                                         ; $79bc: $ff
	cp   $dd                                         ; $79bd: $fe $dd
	rst  ToBoot                                         ; $79bf: $c7
	ld   b, e                                        ; $79c0: $43
	ld   b, h                                        ; $79c1: $44
	ld   de, $1111                                   ; $79c2: $11 $11 $11
	ld   de, $5912                                   ; $79c5: $11 $12 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79c8: $cf
	db   $ec                                         ; $79c9: $ec
	call z, $ffff                                    ; $79ca: $cc $ff $ff
	db   $fd                                         ; $79cd: $fd
	cp   l                                           ; $79ce: $bd
	call c, $1182                                    ; $79cf: $dc $82 $11
	ld   de, $1111                                   ; $79d2: $11 $11 $11
	ld   [de], a                                     ; $79d5: $12
	ld   b, l                                        ; $79d6: $45
	ld   d, [hl]                                     ; $79d7: $56
	adc  d                                           ; $79d8: $8a
	db   $ed                                         ; $79d9: $ed
	cp   e                                           ; $79da: $bb
	xor  a                                           ; $79db: $af
	rst  $38                                         ; $79dc: $ff
	rst  $38                                         ; $79dd: $ff
	sbc  $ff                                         ; $79de: $de $ff
	ei                                               ; $79e0: $fb
	ld   d, c                                        ; $79e1: $51
	ld   de, $1111                                   ; $79e2: $11 $11 $11
	ld   de, $4511                                   ; $79e5: $11 $11 $45
	ld   a, c                                        ; $79e8: $79
	xor  l                                           ; $79e9: $ad
	xor  $dc                                         ; $79ea: $ee $dc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79ec: $cf
	rst  $38                                         ; $79ed: $ff
	cp   $dd                                         ; $79ee: $fe $dd
	cp   $b7                                         ; $79f0: $fe $b7
	ld   b, d                                        ; $79f2: $42
	ld   [hl+], a                                    ; $79f3: $22
	ld   hl, $1111                                   ; $79f4: $21 $11 $11
	inc  hl                                          ; $79f7: $23
	ld   b, h                                        ; $79f8: $44
	ld   d, a                                        ; $79f9: $57
	cp   l                                           ; $79fa: $bd
	db   $dd                                         ; $79fb: $dd
	set  1, a                                        ; $79fc: $cb $cf
	rst  $38                                         ; $79fe: $ff
	rst  $38                                         ; $79ff: $ff
	call $c9dd                                       ; $7a00: $cd $dd $c9
	ld   h, h                                        ; $7a03: $64
	ld   b, h                                        ; $7a04: $44
	ld   sp, $1111                                   ; $7a05: $31 $11 $11
	inc  hl                                          ; $7a08: $23
	inc  sp                                          ; $7a09: $33
	inc  [hl]                                        ; $7a0a: $34
	ld   l, c                                        ; $7a0b: $69
	cp   e                                           ; $7a0c: $bb
	cp   e                                           ; $7a0d: $bb
	call $ffef                                       ; $7a0e: $cd $ef $ff
	cp   $ff                                         ; $7a11: $fe $ff
	db   $fc                                         ; $7a13: $fc
	ld   [hl], h                                     ; $7a14: $74
	inc  [hl]                                        ; $7a15: $34
	ld   b, e                                        ; $7a16: $43
	ld   de, $1211                                   ; $7a17: $11 $11 $12
	inc  sp                                          ; $7a1a: $33
	inc  sp                                          ; $7a1b: $33
	ld   e, b                                        ; $7a1c: $58
	cp   e                                           ; $7a1d: $bb
	cp   e                                           ; $7a1e: $bb
	cp   h                                           ; $7a1f: $bc
	rst  $28                                         ; $7a20: $ef
	rst  $38                                         ; $7a21: $ff
	rst  $38                                         ; $7a22: $ff
	db   $ed                                         ; $7a23: $ed
	db   $ed                                         ; $7a24: $ed
	jp   c, $2174                                    ; $7a25: $da $74 $21

	ld   de, $1101                                   ; $7a28: $11 $01 $11
	ld   [de], a                                     ; $7a2b: $12
	ld   b, [hl]                                     ; $7a2c: $46
	ld   [hl], a                                     ; $7a2d: $77
	ld   h, [hl]                                     ; $7a2e: $66
	sbc  e                                           ; $7a2f: $9b
	db   $dd                                         ; $7a30: $dd
	jp   c, $dfaa                                    ; $7a31: $da $aa $df

	rst  $38                                         ; $7a34: $ff
	db   $ec                                         ; $7a35: $ec
	res  7, c                                        ; $7a36: $cb $b9
	sub  [hl]                                        ; $7a38: $96
	ld   b, d                                        ; $7a39: $42
	ld   de, $2221                                   ; $7a3a: $11 $21 $22
	inc  hl                                          ; $7a3d: $23
	ld   b, l                                        ; $7a3e: $45
	ld   h, a                                        ; $7a3f: $67
	ld   a, b                                        ; $7a40: $78
	sbc  c                                           ; $7a41: $99
	sbc  d                                           ; $7a42: $9a
	cp   e                                           ; $7a43: $bb
	cp   h                                           ; $7a44: $bc
	call $feef                                       ; $7a45: $cd $ef $fe
	db   $db                                         ; $7a48: $db
	cp   c                                           ; $7a49: $b9
	sbc  c                                           ; $7a4a: $99
	ld   h, l                                        ; $7a4b: $65
	ld   sp, $2211                                   ; $7a4c: $31 $11 $22
	ld   [hl+], a                                    ; $7a4f: $22
	inc  [hl]                                        ; $7a50: $34
	ld   d, [hl]                                     ; $7a51: $56
	ld   a, b                                        ; $7a52: $78
	adc  b                                           ; $7a53: $88
	xor  d                                           ; $7a54: $aa
	cp   e                                           ; $7a55: $bb
	call z, $dfcc                                    ; $7a56: $cc $cc $df
	rst  $38                                         ; $7a59: $ff
	db   $db                                         ; $7a5a: $db
	xor  c                                           ; $7a5b: $a9
	sub  a                                           ; $7a5c: $97
	ld   h, l                                        ; $7a5d: $65
	ld   b, e                                        ; $7a5e: $43
	ld   hl, $0211                                   ; $7a5f: $21 $11 $02
	dec  [hl]                                        ; $7a62: $35
	ld   h, [hl]                                     ; $7a63: $66
	ld   [hl], a                                     ; $7a64: $77
	adc  d                                           ; $7a65: $8a
	xor  h                                           ; $7a66: $ac
	cp   e                                           ; $7a67: $bb
	xor  e                                           ; $7a68: $ab
	cp   h                                           ; $7a69: $bc
	sbc  $dd                                         ; $7a6a: $de $dd
	db   $dd                                         ; $7a6c: $dd
	jp   z, Jump_0d2_6598                            ; $7a6d: $ca $98 $65

	ld   b, e                                        ; $7a70: $43
	ld   hl, $1211                                   ; $7a71: $21 $11 $12
	inc  [hl]                                        ; $7a74: $34
	ld   d, [hl]                                     ; $7a75: $56
	ld   a, b                                        ; $7a76: $78
	sbc  e                                           ; $7a77: $9b
	call z, $aabb                                    ; $7a78: $cc $bb $aa
	call z, $decd                                    ; $7a7b: $cc $cd $de
	res  7, e                                        ; $7a7e: $cb $bb
	xor  b                                           ; $7a80: $a8
	ld   h, l                                        ; $7a81: $65
	ld   b, e                                        ; $7a82: $43
	ld   hl, $1111                                   ; $7a83: $21 $11 $11
	ld   [hl], $77                                   ; $7a86: $36 $77
	ld   a, b                                        ; $7a88: $78
	xor  h                                           ; $7a89: $ac
	sbc  $dc                                         ; $7a8a: $de $dc
	cp   d                                           ; $7a8c: $ba
	call z, $cccd                                    ; $7a8d: $cc $cd $cc
	db   $db                                         ; $7a90: $db
	cp   b                                           ; $7a91: $b8
	ld   h, l                                        ; $7a92: $65
	ld   b, h                                        ; $7a93: $44
	ld   d, e                                        ; $7a94: $53
	ld   de, $2311                                   ; $7a95: $11 $11 $23
	ld   d, [hl]                                     ; $7a98: $56
	ld   h, a                                        ; $7a99: $67
	adc  d                                           ; $7a9a: $8a
	rst  JumpTable                                         ; $7a9b: $df
	rst  $38                                         ; $7a9c: $ff
	or   a                                           ; $7a9d: $b7
	ld   a, e                                        ; $7a9e: $7b
	rst  $38                                         ; $7a9f: $ff
	rst  $38                                         ; $7aa0: $ff
	ld   a, b                                        ; $7aa1: $78
	xor  c                                           ; $7aa2: $a9
	add  [hl]                                        ; $7aa3: $86
	ld   d, e                                        ; $7aa4: $53
	ld   de, $1111                                   ; $7aa5: $11 $11 $11

Call_0d2_7aa8:
	ld   de, $8c15                                   ; $7aa8: $11 $15 $8c
	db   $dd                                         ; $7aab: $dd
	rst  $38                                         ; $7aac: $ff
	rst  $38                                         ; $7aad: $ff
	cp   $ec                                         ; $7aae: $fe $ec
	call $cccb                                       ; $7ab0: $cd $cb $cc
	and  h                                           ; $7ab3: $a4
	ld   de, $4313                                   ; $7ab4: $11 $13 $43
	ld   de, $2711                                   ; $7ab7: $11 $11 $27
	cp   d                                           ; $7aba: $ba
	sbc  h                                           ; $7abb: $9c
	rst  $38                                         ; $7abc: $ff
	rst  $38                                         ; $7abd: $ff
	db   $fd                                         ; $7abe: $fd
	cp   d                                           ; $7abf: $ba
	rst  JumpTable                                         ; $7ac0: $df
	rst  $38                                         ; $7ac1: $ff
	sub  c                                           ; $7ac2: $91
	ld   de, $5611                                   ; $7ac3: $11 $11 $56
	ld   de, $1611                                   ; $7ac6: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ac9: $cf
	rst  $38                                         ; $7aca: $ff
	rst  $38                                         ; $7acb: $ff
	rst  $38                                         ; $7acc: $ff
	ei                                               ; $7acd: $fb
	ld   d, [hl]                                     ; $7ace: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7acf: $cf
	rst  $38                                         ; $7ad0: $ff
	ld   d, c                                        ; $7ad1: $51
	ld   de, $8517                                   ; $7ad2: $11 $17 $85
	ld   de, $1511                                   ; $7ad5: $11 $11 $15
	adc  c                                           ; $7ad8: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad9: $cf
	rst  $38                                         ; $7ada: $ff
	rst  $38                                         ; $7adb: $ff
	db   $fc                                         ; $7adc: $fc
	ld   [hl], a                                     ; $7add: $77
	cp   a                                           ; $7ade: $bf
	rst  $38                                         ; $7adf: $ff
	sub  c                                           ; $7ae0: $91
	ld   de, $4211                                   ; $7ae1: $11 $11 $42
	ld   de, $1811                                   ; $7ae4: $11 $11 $18
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ae7: $cf
	rst  $38                                         ; $7ae8: $ff
	rst  $38                                         ; $7ae9: $ff
	rst  $38                                         ; $7aea: $ff
	ei                                               ; $7aeb: $fb
	ld   [hl], l                                     ; $7aec: $75
	ld   a, e                                        ; $7aed: $7b
	ei                                               ; $7aee: $fb
	ld   hl, $1211                                   ; $7aef: $21 $11 $12
	ld   d, c                                        ; $7af2: $51
	ld   de, $8e11                                   ; $7af3: $11 $11 $8e
	rst  $38                                         ; $7af6: $ff
	rst  $38                                         ; $7af7: $ff
	rst  $38                                         ; $7af8: $ff
	rst  $38                                         ; $7af9: $ff
	push bc                                          ; $7afa: $c5
	scf                                              ; $7afb: $37
	sbc  b                                           ; $7afc: $98
	ld   de, $1111                                   ; $7afd: $11 $11 $11
	ld   de, $1111                                   ; $7b00: $11 $11 $11
	xor  a                                           ; $7b03: $af
	rst  $38                                         ; $7b04: $ff
	rst  $38                                         ; $7b05: $ff
	rst  $38                                         ; $7b06: $ff
	rst  $38                                         ; $7b07: $ff
	ei                                               ; $7b08: $fb
	ld   [hl], d                                     ; $7b09: $72
	ld   de, $1111                                   ; $7b0a: $11 $11 $11
	ld   de, $1114                                   ; $7b0d: $11 $14 $11
	ld   de, $ffdf                                   ; $7b10: $11 $df $ff
	rst  $38                                         ; $7b13: $ff
	rst  $38                                         ; $7b14: $ff
	rst  $38                                         ; $7b15: $ff
	or   $41                                         ; $7b16: $f6 $41
	ld   de, $1111                                   ; $7b18: $11 $11 $11
	ld   de, $9c6b                                   ; $7b1b: $11 $6b $9c
	ld   c, l                                        ; $7b1e: $4d
	rst  $38                                         ; $7b1f: $ff
	rst  $38                                         ; $7b20: $ff
	rst  $38                                         ; $7b21: $ff
	rst  $38                                         ; $7b22: $ff
	rst  $38                                         ; $7b23: $ff
	rst  $20                                         ; $7b24: $e7
	ld   de, $1111                                   ; $7b25: $11 $11 $11
	ld   de, $9e1a                                   ; $7b28: $11 $1a $9e
	rst  $38                                         ; $7b2b: $ff
	rst  $38                                         ; $7b2c: $ff
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	rst  $38                                         ; $7b2f: $ff
	rst  $38                                         ; $7b30: $ff
	pop  af                                          ; $7b31: $f1
	ld   de, $1111                                   ; $7b32: $11 $11 $11
	ld   de, $ff1f                                   ; $7b35: $11 $1f $ff
	rst  $38                                         ; $7b38: $ff
	rst  $38                                         ; $7b39: $ff
	rst  $38                                         ; $7b3a: $ff
	rst  $38                                         ; $7b3b: $ff
	cp   $df                                         ; $7b3c: $fe $df
	pop  af                                          ; $7b3e: $f1
	ld   de, $1111                                   ; $7b3f: $11 $11 $11
	ld   de, $ffff                                   ; $7b42: $11 $ff $ff
	rst  $38                                         ; $7b45: $ff
	rst  $38                                         ; $7b46: $ff
	rst  $38                                         ; $7b47: $ff
	ld   hl, sp-$24                                  ; $7b48: $f8 $dc
	rst  $38                                         ; $7b4a: $ff
	add  c                                           ; $7b4b: $81
	ld   de, $1111                                   ; $7b4c: $11 $11 $11
	rra                                              ; $7b4f: $1f
	rst  $38                                         ; $7b50: $ff
	rst  $38                                         ; $7b51: $ff
	rst  $38                                         ; $7b52: $ff
	rst  $38                                         ; $7b53: $ff
	rst  $38                                         ; $7b54: $ff
	sbc  a                                           ; $7b55: $9f
	rst  $38                                         ; $7b56: $ff
	ld   a, [$1111]                                  ; $7b57: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $7b5a: $11 $11 $ff
	rst  $38                                         ; $7b5d: $ff
	rst  $38                                         ; $7b5e: $ff
	rst  $38                                         ; $7b5f: $ff
	rst  $38                                         ; $7b60: $ff
	ei                                               ; $7b61: $fb
	rst  $38                                         ; $7b62: $ff
	rst  $38                                         ; $7b63: $ff
	or   c                                           ; $7b64: $b1
	ld   de, $1111                                   ; $7b65: $11 $11 $11
	rra                                              ; $7b68: $1f
	rst  $38                                         ; $7b69: $ff
	rst  $38                                         ; $7b6a: $ff
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	dec  a                                           ; $7b6e: $3d
	rst  $28                                         ; $7b6f: $ef
	db   $fc                                         ; $7b70: $fc
	ld   de, $1111                                   ; $7b71: $11 $11 $11
	rla                                              ; $7b74: $17
	rst  $38                                         ; $7b75: $ff
	rst  $38                                         ; $7b76: $ff
	rst  $38                                         ; $7b77: $ff
	rst  $38                                         ; $7b78: $ff
	ei                                               ; $7b79: $fb
	add  d                                           ; $7b7a: $82
	rst  $38                                         ; $7b7b: $ff
	rst  $38                                         ; $7b7c: $ff
	sub  c                                           ; $7b7d: $91
	ld   de, $1111                                   ; $7b7e: $11 $11 $11
	rst  $38                                         ; $7b81: $ff
	rst  $38                                         ; $7b82: $ff
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	rst  $30                                         ; $7b85: $f7
	ld   b, c                                        ; $7b86: $41
	ld   e, a                                        ; $7b87: $5f
	rst  $38                                         ; $7b88: $ff
	di                                               ; $7b89: $f3
	ld   de, $1111                                   ; $7b8a: $11 $11 $11
	rst  $38                                         ; $7b8d: $ff
	rst  $38                                         ; $7b8e: $ff
	rst  $38                                         ; $7b8f: $ff
	rst  $38                                         ; $7b90: $ff
	rst  $30                                         ; $7b91: $f7
	ld   de, $ff1f                                   ; $7b92: $11 $1f $ff
	ld   a, [$1111]                                  ; $7b95: $fa $11 $11
	ld   de, $ff6f                                   ; $7b98: $11 $6f $ff
	rst  $38                                         ; $7b9b: $ff
	rst  $38                                         ; $7b9c: $ff
	pop  hl                                          ; $7b9d: $e1
	ld   de, $ff1f                                   ; $7b9e: $11 $1f $ff
	rst  $38                                         ; $7ba1: $ff
	ld   de, $1111                                   ; $7ba2: $11 $11 $11
	rra                                              ; $7ba5: $1f
	rst  $38                                         ; $7ba6: $ff
	rst  $38                                         ; $7ba7: $ff
	rst  $38                                         ; $7ba8: $ff
	ldh  a, [c]                                      ; $7ba9: $f2
	ld   de, $ff1a                                   ; $7baa: $11 $1a $ff
	rst  $38                                         ; $7bad: $ff
	ld   hl, $1111                                   ; $7bae: $21 $11 $11
	rra                                              ; $7bb1: $1f
	rst  $38                                         ; $7bb2: $ff
	rst  $38                                         ; $7bb3: $ff
	rst  $38                                         ; $7bb4: $ff
	add  c                                           ; $7bb5: $81
	ld   de, $ff1c                                   ; $7bb6: $11 $1c $ff
	rst  $38                                         ; $7bb9: $ff
	ld   b, c                                        ; $7bba: $41
	ld   de, $1f11                                   ; $7bbb: $11 $11 $1f
	rst  $38                                         ; $7bbe: $ff
	rst  $38                                         ; $7bbf: $ff
	rst  $38                                         ; $7bc0: $ff
	and  c                                           ; $7bc1: $a1
	ld   de, $ff1b                                   ; $7bc2: $11 $1b $ff
	rst  $38                                         ; $7bc5: $ff
	ld   hl, $1111                                   ; $7bc6: $21 $11 $11
	rra                                              ; $7bc9: $1f
	rst  $38                                         ; $7bca: $ff
	rst  $38                                         ; $7bcb: $ff
	rst  $38                                         ; $7bcc: $ff
	ld   [hl], c                                     ; $7bcd: $71
	ld   de, $ff1f                                   ; $7bce: $11 $1f $ff
	rst  $38                                         ; $7bd1: $ff
	ld   de, $1111                                   ; $7bd2: $11 $11 $11
	rra                                              ; $7bd5: $1f
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	rst  $38                                         ; $7bd8: $ff
	ld   de, $3f11                                   ; $7bd9: $11 $11 $3f
	rst  $38                                         ; $7bdc: $ff
	rst  $38                                         ; $7bdd: $ff
	ld   de, $1111                                   ; $7bde: $11 $11 $11
	rra                                              ; $7be1: $1f
	rst  $38                                         ; $7be2: $ff
	rst  $38                                         ; $7be3: $ff
	cp   $11                                         ; $7be4: $fe $11
	ld   de, $ff3f                                   ; $7be6: $11 $3f $ff
	rst  $38                                         ; $7be9: $ff
	ld   de, $1111                                   ; $7bea: $11 $11 $11
	ld   l, a                                        ; $7bed: $6f
	rst  $38                                         ; $7bee: $ff
	rst  $38                                         ; $7bef: $ff
	rst  $30                                         ; $7bf0: $f7
	ld   de, $9f11                                   ; $7bf1: $11 $11 $9f
	rst  $38                                         ; $7bf4: $ff
	ei                                               ; $7bf5: $fb
	ld   de, $1111                                   ; $7bf6: $11 $11 $11
	rst  $38                                         ; $7bf9: $ff
	rst  $38                                         ; $7bfa: $ff
	rst  $38                                         ; $7bfb: $ff
	pop  hl                                          ; $7bfc: $e1
	ld   de, rAUD1LEN                                   ; $7bfd: $11 $11 $ff
	rst  $38                                         ; $7c00: $ff
	ldh  a, [c]                                      ; $7c01: $f2
	ld   de, $1111                                   ; $7c02: $11 $11 $11
	rst  $38                                         ; $7c05: $ff
	rst  $38                                         ; $7c06: $ff
	rst  $38                                         ; $7c07: $ff
	ld   d, c                                        ; $7c08: $51
	ld   de, $ff1c                                   ; $7c09: $11 $1c $ff
	rst  $38                                         ; $7c0c: $ff
	sub  c                                           ; $7c0d: $91
	ld   de, $1f11                                   ; $7c0e: $11 $11 $1f
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	ld   a, [$1111]                                  ; $7c13: $fa $11 $11
	adc  a                                           ; $7c16: $8f
	rst  $38                                         ; $7c17: $ff
	db   $fd                                         ; $7c18: $fd
	ld   de, $1111                                   ; $7c19: $11 $11 $11
	adc  a                                           ; $7c1c: $8f
	rst  $38                                         ; $7c1d: $ff
	rst  $38                                         ; $7c1e: $ff
	pop  hl                                          ; $7c1f: $e1
	ld   de, rAUD1ENV                                   ; $7c20: $11 $12 $ff
	rst  $38                                         ; $7c23: $ff
	pop  af                                          ; $7c24: $f1
	ld   de, $1811                                   ; $7c25: $11 $11 $18
	rst  $38                                         ; $7c28: $ff
	rst  $38                                         ; $7c29: $ff
	cp   $11                                         ; $7c2a: $fe $11
	ld   de, $ff1f                                   ; $7c2c: $11 $1f $ff
	rst  $38                                         ; $7c2f: $ff
	ld   hl, $1111                                   ; $7c30: $21 $11 $11
	ccf                                              ; $7c33: $3f
	rst  $38                                         ; $7c34: $ff
	rst  $38                                         ; $7c35: $ff
	pop  de                                          ; $7c36: $d1
	ld   de, rAUD1LOW                                   ; $7c37: $11 $13 $ff
	rst  $38                                         ; $7c3a: $ff
	pop  af                                          ; $7c3b: $f1
	ld   de, $1211                                   ; $7c3c: $11 $11 $12
	rst  $38                                         ; $7c3f: $ff
	rst  $38                                         ; $7c40: $ff
	db   $fd                                         ; $7c41: $fd
	ld   de, $1f11                                   ; $7c42: $11 $11 $1f
	rst  $38                                         ; $7c45: $ff
	rst  $38                                         ; $7c46: $ff
	ld   de, $1111                                   ; $7c47: $11 $11 $11
	ld   a, a                                        ; $7c4a: $7f
	rst  $38                                         ; $7c4b: $ff
	rst  $38                                         ; $7c4c: $ff
	add  c                                           ; $7c4d: $81
	ld   de, rAUD1LOW                                   ; $7c4e: $11 $13 $ff
	rst  $38                                         ; $7c51: $ff
	pop  af                                          ; $7c52: $f1
	ld   de, $1f11                                   ; $7c53: $11 $11 $1f
	rst  $38                                         ; $7c56: $ff
	rst  $38                                         ; $7c57: $ff
	di                                               ; $7c58: $f3
	ld   de, $8f11                                   ; $7c59: $11 $11 $8f
	rst  $38                                         ; $7c5c: $ff
	cp   $11                                         ; $7c5d: $fe $11
	ld   de, rAUD1LEN                                   ; $7c5f: $11 $11 $ff
	rst  $38                                         ; $7c62: $ff
	rst  $38                                         ; $7c63: $ff
	ld   de, $1f11                                   ; $7c64: $11 $11 $1f
	rst  $38                                         ; $7c67: $ff
	rst  $38                                         ; $7c68: $ff
	ld   d, c                                        ; $7c69: $51
	ld   de, $5f11                                   ; $7c6a: $11 $11 $5f
	rst  $38                                         ; $7c6d: $ff
	rst  $38                                         ; $7c6e: $ff
	ld   hl, $1511                                   ; $7c6f: $21 $11 $15
	rst  $38                                         ; $7c72: $ff
	rst  $38                                         ; $7c73: $ff
	pop  af                                          ; $7c74: $f1
	ld   de, $1f11                                   ; $7c75: $11 $11 $1f
	rst  $38                                         ; $7c78: $ff
	rst  $38                                         ; $7c79: $ff
	pop  bc                                          ; $7c7a: $c1
	ld   de, rAUD1LEN                                   ; $7c7b: $11 $11 $ff
	rst  $38                                         ; $7c7e: $ff
	ldh  a, [c]                                      ; $7c7f: $f2
	ld   de, $1c11                                   ; $7c80: $11 $11 $1c
	rst  $38                                         ; $7c83: $ff
	rst  $38                                         ; $7c84: $ff
	pop  af                                          ; $7c85: $f1
	ld   de, $af11                                   ; $7c86: $11 $11 $af
	rst  $38                                         ; $7c89: $ff
	db   $fc                                         ; $7c8a: $fc
	ld   de, $1111                                   ; $7c8b: $11 $11 $11
	rst  $38                                         ; $7c8e: $ff
	rst  $38                                         ; $7c8f: $ff
	pop  af                                          ; $7c90: $f1
	ld   de, $4f11                                   ; $7c91: $11 $11 $4f
	rst  $38                                         ; $7c94: $ff
	rst  $38                                         ; $7c95: $ff
	ld   de, $1111                                   ; $7c96: $11 $11 $11
	rst  $38                                         ; $7c99: $ff
	rst  $38                                         ; $7c9a: $ff
	di                                               ; $7c9b: $f3
	ld   de, $1f11                                   ; $7c9c: $11 $11 $1f
	rst  $38                                         ; $7c9f: $ff
	rst  $38                                         ; $7ca0: $ff
	ld   de, $1111                                   ; $7ca1: $11 $11 $11
	rst  $38                                         ; $7ca4: $ff
	rst  $38                                         ; $7ca5: $ff
	rst  $30                                         ; $7ca6: $f7
	ld   de, $1f11                                   ; $7ca7: $11 $11 $1f
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	ld   de, $1111                                   ; $7cac: $11 $11 $11
	rst  $38                                         ; $7caf: $ff
	rst  $38                                         ; $7cb0: $ff
	push af                                          ; $7cb1: $f5
	ld   de, $1f11                                   ; $7cb2: $11 $11 $1f
	rst  $38                                         ; $7cb5: $ff
	rst  $38                                         ; $7cb6: $ff
	ld   de, $1111                                   ; $7cb7: $11 $11 $11
	rst  $38                                         ; $7cba: $ff
	rst  $38                                         ; $7cbb: $ff
	ldh  a, [c]                                      ; $7cbc: $f2
	ld   de, $4f11                                   ; $7cbd: $11 $11 $4f
	rst  $38                                         ; $7cc0: $ff
	cp   $11                                         ; $7cc1: $fe $11
	ld   de, rAUD1LEN                                   ; $7cc3: $11 $11 $ff
	rst  $38                                         ; $7cc6: $ff
	pop  af                                          ; $7cc7: $f1
	ld   de, $9f11                                   ; $7cc8: $11 $11 $9f
	rst  $38                                         ; $7ccb: $ff
	or   $11                                         ; $7ccc: $f6 $11
	ld   de, $ff1d                                   ; $7cce: $11 $1d $ff
	rst  $38                                         ; $7cd1: $ff
	pop  de                                          ; $7cd2: $d1
	ld   de, $cf11                                   ; $7cd3: $11 $11 $cf
	rst  $38                                         ; $7cd6: $ff
	pop  af                                          ; $7cd7: $f1
	ld   de, $1f11                                   ; $7cd8: $11 $11 $1f
	rst  $38                                         ; $7cdb: $ff
	rst  $38                                         ; $7cdc: $ff
	ld   d, c                                        ; $7cdd: $51
	ld   de, rAUD1HIGH                                   ; $7cde: $11 $14 $ff
	rst  $38                                         ; $7ce1: $ff
	pop  af                                          ; $7ce2: $f1
	ld   de, $1f11                                   ; $7ce3: $11 $11 $1f
	rst  $38                                         ; $7ce6: $ff
	rst  $38                                         ; $7ce7: $ff
	ld   de, $1a11                                   ; $7ce8: $11 $11 $1a
	rst  $38                                         ; $7ceb: $ff
	rst  $38                                         ; $7cec: $ff
	ld   b, c                                        ; $7ced: $41
	ld   de, rAUD1LEN                                   ; $7cee: $11 $11 $ff
	rst  $38                                         ; $7cf1: $ff
	ld   sp, hl                                      ; $7cf2: $f9
	ld   de, $4d11                                   ; $7cf3: $11 $11 $4d
	rst  $38                                         ; $7cf6: $ff
	rst  $38                                         ; $7cf7: $ff
	ld   de, $1111                                   ; $7cf8: $11 $11 $11
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	pop  af                                          ; $7cfd: $f1
	ld   de, $bf14                                   ; $7cfe: $11 $14 $bf
	rst  $38                                         ; $7d01: $ff
	ldh  a, [c]                                      ; $7d02: $f2
	ld   de, $1f11                                   ; $7d03: $11 $11 $1f
	rst  $38                                         ; $7d06: $ff
	rst  $38                                         ; $7d07: $ff
	ld   d, c                                        ; $7d08: $51
	ld   de, $ef19                                   ; $7d09: $11 $19 $ef
	rst  $38                                         ; $7d0c: $ff
	sub  c                                           ; $7d0d: $91
	ld   de, $df11                                   ; $7d0e: $11 $11 $df
	rst  $38                                         ; $7d11: $ff
	ld   sp, hl                                      ; $7d12: $f9
	ld   de, $cd11                                   ; $7d13: $11 $11 $cd
	db   $fd                                         ; $7d16: $fd
	rl   c                                           ; $7d17: $cb $11
	ld   de, rAUD1LEN                                   ; $7d19: $11 $11 $ff
	rst  $38                                         ; $7d1c: $ff
	pop  af                                          ; $7d1d: $f1
	ld   de, $ff18                                   ; $7d1e: $11 $18 $ff
	ld   a, [$11b1]                                  ; $7d21: $fa $b1 $11
	ld   de, $ff1f                                   ; $7d24: $11 $1f $ff
	rst  $38                                         ; $7d27: $ff
	ld   de, $bf11                                   ; $7d28: $11 $11 $bf
	db   $fc                                         ; $7d2b: $fc
	ld   l, b                                        ; $7d2c: $68
	ld   de, $1111                                   ; $7d2d: $11 $11 $11
	rst  $38                                         ; $7d30: $ff
	rst  $38                                         ; $7d31: $ff
	pop  af                                          ; $7d32: $f1
	ld   de, $ff1d                                   ; $7d33: $11 $1d $ff
	call nz, $1171                                   ; $7d36: $c4 $71 $11
	ld   de, $ff1f                                   ; $7d39: $11 $1f $ff
	rst  $38                                         ; $7d3c: $ff
	ld   de, rAUD1LEN                                   ; $7d3d: $11 $11 $ff
	rst  $38                                         ; $7d40: $ff
	ld   h, $11                                      ; $7d41: $26 $11
	ld   de, rAUD1LEN                                   ; $7d43: $11 $11 $ff
	rst  $38                                         ; $7d46: $ff
	and  c                                           ; $7d47: $a1
	ld   de, $ff2f                                   ; $7d48: $11 $2f $ff
	and  c                                           ; $7d4b: $a1
	sub  c                                           ; $7d4c: $91
	ld   de, $1f11                                   ; $7d4d: $11 $11 $1f
	rst  $38                                         ; $7d50: $ff
	or   $11                                         ; $7d51: $f6 $11
	ld   [de], a                                     ; $7d53: $12
	rst  $38                                         ; $7d54: $ff
	cp   $23                                         ; $7d55: $fe $23
	ld   de, $1c11                                   ; $7d57: $11 $11 $1c
	rst  $38                                         ; $7d5a: $ff
	rst  $38                                         ; $7d5b: $ff
	ld   de, $1b11                                   ; $7d5c: $11 $11 $1b
	rst  $28                                         ; $7d5f: $ef
	xor  l                                           ; $7d60: $ad
	pop  hl                                          ; $7d61: $e1
	ld   de, $9f11                                   ; $7d62: $11 $11 $9f
	rst  $38                                         ; $7d65: $ff
	pop  af                                          ; $7d66: $f1
	ld   de, $ff1a                                   ; $7d67: $11 $1a $ff
	ei                                               ; $7d6a: $fb
	ld   hl, $1111                                   ; $7d6b: $21 $11 $11
	rra                                              ; $7d6e: $1f
	rst  $38                                         ; $7d6f: $ff
	ld   a, [$1111]                                  ; $7d70: $fa $11 $11
	rst  $38                                         ; $7d73: $ff
	rst  $38                                         ; $7d74: $ff
	ld   e, $21                                      ; $7d75: $1e $21
	ld   de, rAUD1LEN                                   ; $7d77: $11 $11 $ff
	rst  $38                                         ; $7d7a: $ff
	ld   h, c                                        ; $7d7b: $61
	ld   de, $ff7f                                   ; $7d7c: $11 $7f $ff
	db   $f4                                         ; $7d7f: $f4
	ld   hl, $1111                                   ; $7d80: $21 $11 $11
	rst  $38                                         ; $7d83: $ff
	rst  $38                                         ; $7d84: $ff
	pop  af                                          ; $7d85: $f1
	ld   de, $fc1f                                   ; $7d86: $11 $1f $fc
	ldh  a, [c]                                      ; $7d89: $f2
	cp   l                                           ; $7d8a: $bd
	ld   de, $1f11                                   ; $7d8b: $11 $11 $1f
	rst  $38                                         ; $7d8e: $ff
	or   $11                                         ; $7d8f: $f6 $11
	add  hl, de                                      ; $7d91: $19
	rst  $38                                         ; $7d92: $ff
	db   $fd                                         ; $7d93: $fd
	dec  [hl]                                        ; $7d94: $35
	ld   de, $1f11                                   ; $7d95: $11 $11 $1f

Call_0d2_7d98:
	rst  $38                                         ; $7d98: $ff
	rst  $38                                         ; $7d99: $ff
	ld   de, rAUD1LEN                                   ; $7d9a: $11 $11 $ff
	ld   a, a                                        ; $7d9d: $7f
	dec  a                                           ; $7d9e: $3d
	pop  af                                          ; $7d9f: $f1
	ld   de, rAUD1LEN                                   ; $7da0: $11 $11 $ff
	rst  $38                                         ; $7da3: $ff
	ld   de, rAUD1LEN                                   ; $7da4: $11 $11 $ff
	ei                                               ; $7da7: $fb
	or   d                                           ; $7da8: $b2
	sub  c                                           ; $7da9: $91
	ld   de, $ff16                                   ; $7daa: $11 $16 $ff
	rst  $38                                         ; $7dad: $ff
	ld   de, $7f11                                   ; $7dae: $11 $11 $7f
	ld   d, e                                        ; $7db1: $53
	db   $e4                                         ; $7db2: $e4
	ld   hl, sp+$11                                  ; $7db3: $f8 $11
	ld   de, $ffff                                   ; $7db5: $11 $ff $ff
	sub  c                                           ; $7db8: $91
	ld   de, $f4ef                                   ; $7db9: $11 $ef $f4
	or   a                                           ; $7dbc: $b7
	sub  c                                           ; $7dbd: $91
	ld   de, rAUD1ENV                                   ; $7dbe: $11 $12 $ff
	rst  $38                                         ; $7dc1: $ff
	ld   sp, $df19                                   ; $7dc2: $31 $19 $df
	sub  c                                           ; $7dc5: $91
	db   $e4                                         ; $7dc6: $e4
	db   $eb                                         ; $7dc7: $eb
	ld   de, rAUD1LEN                                   ; $7dc8: $11 $11 $ff
	rst  $38                                         ; $7dcb: $ff
	ld   de, $ff1d                                   ; $7dcc: $11 $1d $ff
	ld   d, c                                        ; $7dcf: $51
	ld   sp, hl                                      ; $7dd0: $f9
	pop  de                                          ; $7dd1: $d1
	ld   de, $ff1c                                   ; $7dd2: $11 $1c $ff
	rst  $38                                         ; $7dd5: $ff
	ld   de, $bb7f                                   ; $7dd6: $11 $7f $bb
	ld   de, $d1ff                                   ; $7dd9: $11 $ff $d1
	ld   de, $ff1f                                   ; $7ddc: $11 $1f $ff
	ld   hl, sp+$11                                  ; $7ddf: $f8 $11
	rst  $38                                         ; $7de1: $ff
	sbc  c                                           ; $7de2: $99
	ld   de, $71fb                                   ; $7de3: $11 $fb $71
	ld   de, $ff8f                                   ; $7de6: $11 $8f $ff
	add  $12                                         ; $7de9: $c6 $12
	rst  $38                                         ; $7deb: $ff
	ld   de, $f618                                   ; $7dec: $11 $18 $f6
	ld   de, rAUD1LEN                                   ; $7def: $11 $11 $ff
	rst  $38                                         ; $7df2: $ff
	ld   d, d                                        ; $7df3: $52
	rra                                              ; $7df4: $1f
	db   $f4                                         ; $7df5: $f4
	dec  d                                           ; $7df6: $15
	rra                                              ; $7df7: $1f
	pop  af                                          ; $7df8: $f1
	ld   de, $ff1f                                   ; $7df9: $11 $1f $ff
	cp   $c7                                         ; $7dfc: $fe $c7
	ld   l, a                                        ; $7dfe: $6f
	add  c                                           ; $7dff: $81
	ld   a, [de]                                     ; $7e00: $1a
	rst  $28                                         ; $7e01: $ef
	ld   de, $1f11                                   ; $7e02: $11 $11 $1f
	rst  $38                                         ; $7e05: $ff
	rst  $38                                         ; $7e06: $ff
	rst  $30                                         ; $7e07: $f7
	or   [hl]                                        ; $7e08: $b6
	ld   de, $fafd                                   ; $7e09: $11 $fd $fa
	ld   de, rAUD1LEN                                   ; $7e0c: $11 $11 $ff
	rst  $38                                         ; $7e0f: $ff
	rst  $38                                         ; $7e10: $ff
	ld   a, [$1a81]                                  ; $7e11: $fa $81 $1a
	rst  $28                                         ; $7e14: $ef
	pop  af                                          ; $7e15: $f1
	ld   de, $ff1f                                   ; $7e16: $11 $1f $ff
	rst  $38                                         ; $7e19: $ff
	rst  $38                                         ; $7e1a: $ff
	cp   d                                           ; $7e1b: $ba
	ld   de, $bf6f                                   ; $7e1c: $11 $6f $bf
	ld   de, rAUD1LEN                                   ; $7e1f: $11 $11 $ff
	rst  $38                                         ; $7e22: $ff
	rst  $38                                         ; $7e23: $ff
	rst  $38                                         ; $7e24: $ff
	sub  c                                           ; $7e25: $91
	ld   d, $fb                                      ; $7e26: $16 $fb
	pop  bc                                          ; $7e28: $c1
	ld   de, $ff1f                                   ; $7e29: $11 $1f $ff
	rst  $38                                         ; $7e2c: $ff
	rst  $38                                         ; $7e2d: $ff
	ld   hl, sp+$11                                  ; $7e2e: $f8 $11
	ld   l, [hl]                                     ; $7e30: $6e
	halt                                             ; $7e31: $76
	ld   de, rAUD1LEN                                   ; $7e32: $11 $11 $ff
	rst  $38                                         ; $7e35: $ff
	rst  $38                                         ; $7e36: $ff
	rst  $38                                         ; $7e37: $ff
	sub  c                                           ; $7e38: $91
	ld   a, [de]                                     ; $7e39: $1a
	or   [hl]                                        ; $7e3a: $b6
	ld   de, $1f11                                   ; $7e3b: $11 $11 $1f
	rst  $38                                         ; $7e3e: $ff
	rst  $38                                         ; $7e3f: $ff
	rst  $38                                         ; $7e40: $ff
	rst  $20                                         ; $7e41: $e7
	inc  de                                          ; $7e42: $13
	rst  $30                                         ; $7e43: $f7
	ld   de, $1d11                                   ; $7e44: $11 $11 $1d
	rst  $38                                         ; $7e47: $ff
	rst  $38                                         ; $7e48: $ff
	rst  $38                                         ; $7e49: $ff
	ld   a, [$9f32]                                  ; $7e4a: $fa $32 $9f
	ld   de, $1111                                   ; $7e4d: $11 $11 $11
	rst  $38                                         ; $7e50: $ff
	rst  $38                                         ; $7e51: $ff
	rst  $38                                         ; $7e52: $ff
	cp   $54                                         ; $7e53: $fe $54
	ld   e, a                                        ; $7e55: $5f
	ld   b, c                                        ; $7e56: $41
	ld   de, rAUD1LEN                                   ; $7e57: $11 $11 $ff
	rst  $38                                         ; $7e5a: $ff
	rst  $38                                         ; $7e5b: $ff
	rst  $38                                         ; $7e5c: $ff
	ld   h, $5d                                      ; $7e5d: $26 $5d
	and  c                                           ; $7e5f: $a1
	ld   de, rAUD1LEN                                   ; $7e60: $11 $11 $ff
	rst  $38                                         ; $7e63: $ff
	rst  $38                                         ; $7e64: $ff
	rst  $38                                         ; $7e65: $ff
	ld   b, a                                        ; $7e66: $47
	ld   e, c                                        ; $7e67: $59
	sub  c                                           ; $7e68: $91
	ld   de, rAUD1LEN                                   ; $7e69: $11 $11 $ff
	rst  $38                                         ; $7e6c: $ff
	rst  $38                                         ; $7e6d: $ff
	rst  $38                                         ; $7e6e: $ff
	ld   c, a                                        ; $7e6f: $4f
	add  [hl]                                        ; $7e70: $86
	ld   sp, $1111                                   ; $7e71: $31 $11 $11
	db   $fd                                         ; $7e74: $fd
	rst  $38                                         ; $7e75: $ff
	rst  $38                                         ; $7e76: $ff
	rst  $38                                         ; $7e77: $ff
	rra                                              ; $7e78: $1f
	ld   a, c                                        ; $7e79: $79
	ld   de, $1411                                   ; $7e7a: $11 $11 $14
	rst  $38                                         ; $7e7d: $ff
	rst  $38                                         ; $7e7e: $ff
	rst  $38                                         ; $7e7f: $ff
	ld   a, [$418f]                                  ; $7e80: $fa $8f $41
	ld   de, $1f11                                   ; $7e83: $11 $11 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e86: $cf
	rst  $38                                         ; $7e87: $ff
	rst  $38                                         ; $7e88: $ff
	db   $fc                                         ; $7e89: $fc
	rst  $30                                         ; $7e8a: $f7
	ld   b, c                                        ; $7e8b: $41
	ld   de, $c911                                   ; $7e8c: $11 $11 $c9
	rst  $38                                         ; $7e8f: $ff
	rst  $38                                         ; $7e90: $ff
	rst  $38                                         ; $7e91: $ff
	rst  $28                                         ; $7e92: $ef
	add  h                                           ; $7e93: $84
	ld   de, $1a11                                   ; $7e94: $11 $11 $1a
	cpl                                              ; $7e97: $2f
	rst  $38                                         ; $7e98: $ff
	rst  $38                                         ; $7e99: $ff
	rst  $38                                         ; $7e9a: $ff
	db   $f4                                         ; $7e9b: $f4
	ld   de, $1111                                   ; $7e9c: $11 $11 $11
	ld   [hl], c                                     ; $7e9f: $71
	rst  $38                                         ; $7ea0: $ff
	rst  $38                                         ; $7ea1: $ff
	rst  $38                                         ; $7ea2: $ff
	rst  $38                                         ; $7ea3: $ff
	ld   sp, $1111                                   ; $7ea4: $31 $11 $11
	ld   bc, $ff1f                                   ; $7ea7: $01 $1f $ff
	rst  $38                                         ; $7eaa: $ff
	rst  $38                                         ; $7eab: $ff
	pop  af                                          ; $7eac: $f1
	ld   de, $1611                                   ; $7ead: $11 $11 $16
	ld   de, $ffff                                   ; $7eb0: $11 $ff $ff
	rst  $38                                         ; $7eb3: $ff
	cp   $11                                         ; $7eb4: $fe $11
	ld   de, $6111                                   ; $7eb6: $11 $11 $61
	rra                                              ; $7eb9: $1f
	rst  $38                                         ; $7eba: $ff
	rst  $38                                         ; $7ebb: $ff
	rst  $38                                         ; $7ebc: $ff
	sub  c                                           ; $7ebd: $91
	ld   de, $1111                                   ; $7ebe: $11 $11 $11
	inc  de                                          ; $7ec1: $13
	rst  $38                                         ; $7ec2: $ff
	rst  $38                                         ; $7ec3: $ff
	rst  $38                                         ; $7ec4: $ff
	ld   sp, hl                                      ; $7ec5: $f9
	ld   de, $1111                                   ; $7ec6: $11 $11 $11
	ld   de, $ff2f                                   ; $7ec9: $11 $2f $ff
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	and  c                                           ; $7ece: $a1
	ld   de, $1111                                   ; $7ecf: $11 $11 $11
	ld   de, $ffff                                   ; $7ed2: $11 $ff $ff
	rst  $38                                         ; $7ed5: $ff
	ld   a, [$1151]                                  ; $7ed6: $fa $51 $11
	ld   de, $1f11                                   ; $7ed9: $11 $11 $1f
	rst  $38                                         ; $7edc: $ff
	rst  $38                                         ; $7edd: $ff
	rst  $38                                         ; $7ede: $ff
	db   $eb                                         ; $7edf: $eb
	ld   de, $1111                                   ; $7ee0: $11 $11 $11
	ld   de, $ffff                                   ; $7ee3: $11 $ff $ff
	rst  $38                                         ; $7ee6: $ff
	rst  $38                                         ; $7ee7: $ff
	ldh  a, [c]                                      ; $7ee8: $f2
	ld   de, $1111                                   ; $7ee9: $11 $11 $11
	rla                                              ; $7eec: $17
	rst  $38                                         ; $7eed: $ff
	rst  $38                                         ; $7eee: $ff
	rst  $38                                         ; $7eef: $ff
	rst  $38                                         ; $7ef0: $ff
	pop  bc                                          ; $7ef1: $c1
	ld   de, $1111                                   ; $7ef2: $11 $11 $11
	dec  de                                          ; $7ef5: $1b
	rst  $38                                         ; $7ef6: $ff
	rst  $38                                         ; $7ef7: $ff
	rst  $38                                         ; $7ef8: $ff
	rst  $38                                         ; $7ef9: $ff
	ld   sp, $1111                                   ; $7efa: $31 $11 $11
	ld   de, rAUDVOL                                   ; $7efd: $11 $24 $ff
	rst  $38                                         ; $7f00: $ff
	rst  $38                                         ; $7f01: $ff
	ld   a, [$1141]                                  ; $7f02: $fa $41 $11
	ld   de, $1d11                                   ; $7f05: $11 $11 $1d
	rst  $38                                         ; $7f08: $ff
	rst  $38                                         ; $7f09: $ff
	rst  $38                                         ; $7f0a: $ff
	rst  $30                                         ; $7f0b: $f7
	ld   [hl], c                                     ; $7f0c: $71
	ld   de, $1111                                   ; $7f0d: $11 $11 $11
	rra                                              ; $7f10: $1f
	rst  $38                                         ; $7f11: $ff
	rst  $38                                         ; $7f12: $ff
	rst  $38                                         ; $7f13: $ff
	xor  l                                           ; $7f14: $ad
	ld   de, $1111                                   ; $7f15: $11 $11 $11
	ld   de, $ffff                                   ; $7f18: $11 $ff $ff
	rst  $38                                         ; $7f1b: $ff
	rst  $38                                         ; $7f1c: $ff
	add  sp, $11                                     ; $7f1d: $e8 $11
	ld   de, $1c11                                   ; $7f1f: $11 $11 $1c
	rst  $38                                         ; $7f22: $ff
	rst  $38                                         ; $7f23: $ff
	rst  $38                                         ; $7f24: $ff
	db   $fd                                         ; $7f25: $fd
	sub  e                                           ; $7f26: $93
	ld   hl, $1111                                   ; $7f27: $21 $11 $11
	ld   a, a                                        ; $7f2a: $7f
	rst  $38                                         ; $7f2b: $ff
	rst  $38                                         ; $7f2c: $ff
	rst  $38                                         ; $7f2d: $ff
	cp   b                                           ; $7f2e: $b8
	sub  c                                           ; $7f2f: $91
	ld   de, $2f11                                   ; $7f30: $11 $11 $2f
	rst  JumpTable                                         ; $7f33: $df
	rst  $38                                         ; $7f34: $ff
	db   $fc                                         ; $7f35: $fc
	xor  c                                           ; $7f36: $a9
	sub  a                                           ; $7f37: $97
	ld   de, $1e11                                   ; $7f38: $11 $11 $1e
	rst  $38                                         ; $7f3b: $ff
	rst  $38                                         ; $7f3c: $ff
	db   $dd                                         ; $7f3d: $dd
	scf                                              ; $7f3e: $37
	or   c                                           ; $7f3f: $b1
	inc  hl                                          ; $7f40: $23
	ld   de, $fb1d                                   ; $7f41: $11 $1d $fb
	rst  $38                                         ; $7f44: $ff
	ld   l, c                                        ; $7f45: $69
	ld   [hl], e                                     ; $7f46: $73
	pop  af                                          ; $7f47: $f1
	jr   @+$13                                       ; $7f48: $18 $11

	inc  a                                           ; $7f4a: $3c
	cp   $ff                                         ; $7f4b: $fe $ff
	adc  c                                           ; $7f4d: $89
	sub  h                                           ; $7f4e: $94
	db   $d3                                         ; $7f4f: $d3
	ld   d, $11                                      ; $7f50: $16 $11
	ld   d, $ff                                      ; $7f52: $16 $ff
	rst  $38                                         ; $7f54: $ff
	ret                                              ; $7f55: $c9


	add  e                                           ; $7f56: $83
	push af                                          ; $7f57: $f5
	add  hl, de                                      ; $7f58: $19
	ld   de, $fd15                                   ; $7f59: $11 $15 $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f5c: $cf
	add  $95                                         ; $7f5d: $c6 $95
	rst  $20                                         ; $7f5f: $e7
	ld   a, [de]                                     ; $7f60: $1a
	ld   sp, $fd16                                   ; $7f61: $31 $16 $fd
	xor  a                                           ; $7f64: $af
	or   h                                           ; $7f65: $b4
	ld   [hl], e                                     ; $7f66: $73
	cp   d                                           ; $7f67: $ba
	inc  e                                           ; $7f68: $1c
	sub  c                                           ; $7f69: $91
	dec  d                                           ; $7f6a: $15
	cp   $7f                                         ; $7f6b: $fe $7f
	pop  bc                                          ; $7f6d: $c1
	ld   b, e                                        ; $7f6e: $43
	xor  h                                           ; $7f6f: $ac
	ld   c, e                                        ; $7f70: $4b
	db   $d3                                         ; $7f71: $d3
	dec  [hl]                                        ; $7f72: $35
	rst  JumpTable                                         ; $7f73: $df
	ld   l, h                                        ; $7f74: $6c
	pop  bc                                          ; $7f75: $c1
	ld   [hl+], a                                    ; $7f76: $22
	ld   a, [hl]                                     ; $7f77: $7e
	sbc  e                                           ; $7f78: $9b
	rst  $20                                         ; $7f79: $e7
	ld   d, l                                        ; $7f7a: $55
	sbc  a                                           ; $7f7b: $9f
	sub  a                                           ; $7f7c: $97
	ld   [hl], c                                     ; $7f7d: $71
	ld   de, $da6f                                   ; $7f7e: $11 $6f $da
	db   $ec                                         ; $7f81: $ec
	sub  a                                           ; $7f82: $97
	ld   a, e                                        ; $7f83: $7b
	add  c                                           ; $7f84: $81
	ld   de, $5f38                                   ; $7f85: $11 $38 $5f
	ld   a, [$edfe]                                  ; $7f88: $fa $fe $ed
	adc  c                                           ; $7f8b: $89
	add  d                                           ; $7f8c: $82
	ld   de, $4712                                   ; $7f8d: $11 $12 $47
	adc  $ef                                         ; $7f90: $ce $ef
	rst  $38                                         ; $7f92: $ff
	ld   [$2174], a                                  ; $7f93: $ea $74 $21
	ld   de, $6a13                                   ; $7f96: $11 $13 $6a
	rst  JumpTable                                         ; $7f99: $df
	rst  $38                                         ; $7f9a: $ff
	rst  $38                                         ; $7f9b: $ff
	or   a                                           ; $7f9c: $b7
	ld   b, c                                        ; $7f9d: $41
	ld   de, $3611                                   ; $7f9e: $11 $11 $36
	xor  [hl]                                        ; $7fa1: $ae
	rst  $38                                         ; $7fa2: $ff
	rst  $38                                         ; $7fa3: $ff
	db   $fc                                         ; $7fa4: $fc
	sub  l                                           ; $7fa5: $95
	ld   hl, $1111                                   ; $7fa6: $21 $11 $11
	ld   c, c                                        ; $7fa9: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7faa: $cf
	rst  $38                                         ; $7fab: $ff
	rst  $38                                         ; $7fac: $ff
	db   $db                                         ; $7fad: $db
	ld   h, e                                        ; $7fae: $63
	ld   de, $1211                                   ; $7faf: $11 $11 $12
	ld   l, c                                        ; $7fb2: $69
	rst  JumpTable                                         ; $7fb3: $df
	rst  $38                                         ; $7fb4: $ff
	rst  $38                                         ; $7fb5: $ff
	jp   c, $1163                                    ; $7fb6: $da $63 $11

	ld   de, $6913                                   ; $7fb9: $11 $13 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fbc: $cf
	rst  $38                                         ; $7fbd: $ff
	rst  $38                                         ; $7fbe: $ff
	jp   c, $3175                                    ; $7fbf: $da $75 $31

	ld   de, $5713                                   ; $7fc2: $11 $13 $57
	xor  h                                           ; $7fc5: $ac
	xor  $ee                                         ; $7fc6: $ee $ee
	call c, Call_0d2_5397                            ; $7fc8: $dc $97 $53
	ld   [hl+], a                                    ; $7fcb: $22
	ld   [de], a                                     ; $7fcc: $12
	ld   b, l                                        ; $7fcd: $45
	adc  c                                           ; $7fce: $89
	cp   l                                           ; $7fcf: $bd
	sbc  $ec                                         ; $7fd0: $de $ec
	cp   d                                           ; $7fd2: $ba
	ld   [hl], l                                     ; $7fd3: $75
	ld   b, d                                        ; $7fd4: $42
	ld   [hl+], a                                    ; $7fd5: $22
	inc  h                                           ; $7fd6: $24
	ld   d, [hl]                                     ; $7fd7: $56
	sbc  e                                           ; $7fd8: $9b
	call $ecde                                       ; $7fd9: $cd $de $ec
	xor  b                                           ; $7fdc: $a8
	ld   h, l                                        ; $7fdd: $65
	ld   [hl-], a                                    ; $7fde: $32
	inc  hl                                          ; $7fdf: $23
	inc  [hl]                                        ; $7fe0: $34
	ld   l, b                                        ; $7fe1: $68
	xor  e                                           ; $7fe2: $ab
	adc  $dc                                         ; $7fe3: $ce $dc
	call z, Call_0d2_6598                            ; $7fe5: $cc $98 $65
	ld   b, e                                        ; $7fe8: $43
	inc  sp                                          ; $7fe9: $33
	ld   b, l                                        ; $7fea: $45
	ld   h, a                                        ; $7feb: $67
	xor  e                                           ; $7fec: $ab
	cp   h                                           ; $7fed: $bc
	call c, $a9cc                                    ; $7fee: $dc $cc $a9
	ld   [hl], l                                     ; $7ff1: $75
	ld   b, e                                        ; $7ff2: $43
	inc  sp                                          ; $7ff3: $33
	dec  [hl]                                        ; $7ff4: $35
	ld   h, a                                        ; $7ff5: $67
	sbc  d                                           ; $7ff6: $9a
	call $dced                                       ; $7ff7: $cd $ed $dc
	xor  b                                           ; $7ffa: $a8
	ld   [hl], l                                     ; $7ffb: $75
	ld   [hl-], a                                    ; $7ffc: $32
	inc  hl                                          ; $7ffd: $23
	inc  [hl]                                        ; $7ffe: $34
	ld   h, a                                        ; $7fff: $67
