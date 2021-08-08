; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0cf", ROMX[$4000], BANK[$cf]

	adc  b                                           ; $4000: $88
	add  a                                           ; $4001: $87
	adc  b                                           ; $4002: $88
	adc  b                                           ; $4003: $88
	adc  b                                           ; $4004: $88
	adc  b                                           ; $4005: $88
	adc  b                                           ; $4006: $88
	sbc  c                                           ; $4007: $99
	sbc  b                                           ; $4008: $98
	adc  b                                           ; $4009: $88
	adc  b                                           ; $400a: $88
	adc  b                                           ; $400b: $88
	adc  b                                           ; $400c: $88
	adc  b                                           ; $400d: $88
	adc  b                                           ; $400e: $88
	adc  b                                           ; $400f: $88
	adc  c                                           ; $4010: $89
	adc  b                                           ; $4011: $88
	adc  b                                           ; $4012: $88
	adc  b                                           ; $4013: $88
	adc  b                                           ; $4014: $88
	adc  b                                           ; $4015: $88
	adc  b                                           ; $4016: $88
	adc  b                                           ; $4017: $88
	adc  b                                           ; $4018: $88
	adc  b                                           ; $4019: $88
	adc  b                                           ; $401a: $88
	adc  b                                           ; $401b: $88
	adc  b                                           ; $401c: $88
	adc  b                                           ; $401d: $88
	adc  b                                           ; $401e: $88
	adc  b                                           ; $401f: $88
	adc  b                                           ; $4020: $88
	adc  b                                           ; $4021: $88
	adc  b                                           ; $4022: $88
	adc  b                                           ; $4023: $88
	adc  b                                           ; $4024: $88
	adc  b                                           ; $4025: $88
	adc  b                                           ; $4026: $88
	adc  b                                           ; $4027: $88
	adc  b                                           ; $4028: $88
	adc  b                                           ; $4029: $88
	adc  b                                           ; $402a: $88
	adc  b                                           ; $402b: $88
	adc  b                                           ; $402c: $88
	adc  b                                           ; $402d: $88
	adc  b                                           ; $402e: $88
	adc  b                                           ; $402f: $88
	adc  b                                           ; $4030: $88
	adc  b                                           ; $4031: $88
	adc  b                                           ; $4032: $88
	adc  b                                           ; $4033: $88
	adc  b                                           ; $4034: $88
	adc  b                                           ; $4035: $88
	adc  b                                           ; $4036: $88
	adc  b                                           ; $4037: $88
	adc  b                                           ; $4038: $88
	adc  b                                           ; $4039: $88
	adc  b                                           ; $403a: $88
	adc  b                                           ; $403b: $88
	adc  b                                           ; $403c: $88
	adc  b                                           ; $403d: $88
	adc  b                                           ; $403e: $88
	adc  b                                           ; $403f: $88
	adc  b                                           ; $4040: $88
	adc  b                                           ; $4041: $88
	adc  b                                           ; $4042: $88
	adc  b                                           ; $4043: $88
	adc  b                                           ; $4044: $88
	adc  b                                           ; $4045: $88
	adc  b                                           ; $4046: $88
	adc  b                                           ; $4047: $88
	adc  b                                           ; $4048: $88
	adc  b                                           ; $4049: $88
	adc  b                                           ; $404a: $88
	adc  b                                           ; $404b: $88
	adc  b                                           ; $404c: $88
	adc  b                                           ; $404d: $88
	adc  b                                           ; $404e: $88
	adc  b                                           ; $404f: $88
	adc  b                                           ; $4050: $88
	adc  b                                           ; $4051: $88
	adc  b                                           ; $4052: $88
	adc  b                                           ; $4053: $88
	adc  b                                           ; $4054: $88
	adc  b                                           ; $4055: $88
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	adc  b                                           ; $4058: $88
	adc  b                                           ; $4059: $88
	adc  b                                           ; $405a: $88
	adc  b                                           ; $405b: $88
	adc  b                                           ; $405c: $88
	adc  b                                           ; $405d: $88
	adc  b                                           ; $405e: $88
	adc  b                                           ; $405f: $88
	adc  b                                           ; $4060: $88
	adc  b                                           ; $4061: $88
	adc  b                                           ; $4062: $88
	adc  b                                           ; $4063: $88
	adc  b                                           ; $4064: $88
	adc  b                                           ; $4065: $88
	adc  b                                           ; $4066: $88
	adc  b                                           ; $4067: $88
	adc  b                                           ; $4068: $88
	adc  b                                           ; $4069: $88
	adc  b                                           ; $406a: $88
	adc  b                                           ; $406b: $88
	adc  b                                           ; $406c: $88
	adc  b                                           ; $406d: $88
	adc  b                                           ; $406e: $88
	adc  b                                           ; $406f: $88
	adc  b                                           ; $4070: $88
	adc  b                                           ; $4071: $88
	adc  b                                           ; $4072: $88
	adc  b                                           ; $4073: $88
	adc  b                                           ; $4074: $88
	adc  b                                           ; $4075: $88
	adc  b                                           ; $4076: $88
	adc  b                                           ; $4077: $88
	adc  b                                           ; $4078: $88
	adc  b                                           ; $4079: $88
	adc  b                                           ; $407a: $88
	adc  b                                           ; $407b: $88
	adc  b                                           ; $407c: $88
	adc  b                                           ; $407d: $88
	adc  b                                           ; $407e: $88
	adc  b                                           ; $407f: $88
	adc  b                                           ; $4080: $88
	adc  b                                           ; $4081: $88
	adc  b                                           ; $4082: $88
	adc  b                                           ; $4083: $88
	adc  b                                           ; $4084: $88
	adc  b                                           ; $4085: $88
	adc  b                                           ; $4086: $88
	adc  b                                           ; $4087: $88
	adc  b                                           ; $4088: $88
	adc  b                                           ; $4089: $88
	adc  b                                           ; $408a: $88
	adc  b                                           ; $408b: $88
	adc  b                                           ; $408c: $88
	adc  b                                           ; $408d: $88
	adc  b                                           ; $408e: $88
	adc  b                                           ; $408f: $88
	adc  b                                           ; $4090: $88
	adc  b                                           ; $4091: $88
	adc  b                                           ; $4092: $88
	adc  b                                           ; $4093: $88
	adc  b                                           ; $4094: $88
	adc  b                                           ; $4095: $88
	adc  b                                           ; $4096: $88
	adc  b                                           ; $4097: $88
	adc  b                                           ; $4098: $88
	adc  b                                           ; $4099: $88
	adc  b                                           ; $409a: $88
	adc  b                                           ; $409b: $88
	adc  b                                           ; $409c: $88
	adc  b                                           ; $409d: $88
	adc  b                                           ; $409e: $88
	adc  b                                           ; $409f: $88
	adc  b                                           ; $40a0: $88
	adc  b                                           ; $40a1: $88
	adc  b                                           ; $40a2: $88
	adc  b                                           ; $40a3: $88
	adc  b                                           ; $40a4: $88
	adc  b                                           ; $40a5: $88
	adc  b                                           ; $40a6: $88
	adc  b                                           ; $40a7: $88
	adc  b                                           ; $40a8: $88
	adc  b                                           ; $40a9: $88
	adc  b                                           ; $40aa: $88
	sbc  b                                           ; $40ab: $98
	adc  b                                           ; $40ac: $88
	adc  b                                           ; $40ad: $88
	sbc  b                                           ; $40ae: $98
	sbc  b                                           ; $40af: $98
	ld   [hl], a                                     ; $40b0: $77
	adc  c                                           ; $40b1: $89
	sbc  c                                           ; $40b2: $99
	add  a                                           ; $40b3: $87
	ld   h, a                                        ; $40b4: $67
	adc  d                                           ; $40b5: $8a
	xor  d                                           ; $40b6: $aa
	add  [hl]                                        ; $40b7: $86
	ld   h, a                                        ; $40b8: $67
	adc  c                                           ; $40b9: $89
	xor  c                                           ; $40ba: $a9
	sbc  b                                           ; $40bb: $98
	halt                                             ; $40bc: $76
	ld   a, d                                        ; $40bd: $7a
	call c, Call_0cf_6a74                            ; $40be: $dc $74 $6a
	bit  4, e                                        ; $40c1: $cb $63
	ld   e, b                                        ; $40c3: $58
	cp   l                                           ; $40c4: $bd
	and  a                                           ; $40c5: $a7
	inc  sp                                          ; $40c6: $33
	ld   l, d                                        ; $40c7: $6a
	xor  c                                           ; $40c8: $a9
	halt                                             ; $40c9: $76
	ld   a, d                                        ; $40ca: $7a
	cp   c                                           ; $40cb: $b9
	ld   d, h                                        ; $40cc: $54
	ld   a, h                                        ; $40cd: $7c
	db   $db                                         ; $40ce: $db
	ld   h, d                                        ; $40cf: $62
	ld   h, $be                                      ; $40d0: $26 $be
	or   [hl]                                        ; $40d2: $b6
	inc  hl                                          ; $40d3: $23
	ld   l, h                                        ; $40d4: $6c
	db   $db                                         ; $40d5: $db
	ld   h, d                                        ; $40d6: $62
	scf                                              ; $40d7: $37
	cp   e                                           ; $40d8: $bb
	ld   [hl], h                                     ; $40d9: $74
	inc  [hl]                                        ; $40da: $34
	ld   a, c                                        ; $40db: $79
	sbc  b                                           ; $40dc: $98
	ld   h, [hl]                                     ; $40dd: $66
	ld   l, b                                        ; $40de: $68
	sbc  c                                           ; $40df: $99
	halt                                             ; $40e0: $76
	ld   a, b                                        ; $40e1: $78
	sbc  c                                           ; $40e2: $99
	add  a                                           ; $40e3: $87
	ld   h, [hl]                                     ; $40e4: $66
	ld   a, c                                        ; $40e5: $79
	xor  d                                           ; $40e6: $aa
	xor  c                                           ; $40e7: $a9
	add  a                                           ; $40e8: $87
	ld   [hl], a                                     ; $40e9: $77
	add  a                                           ; $40ea: $87
	ld   a, b                                        ; $40eb: $78
	adc  b                                           ; $40ec: $88
	adc  b                                           ; $40ed: $88
	adc  b                                           ; $40ee: $88
	adc  b                                           ; $40ef: $88
	adc  b                                           ; $40f0: $88
	adc  b                                           ; $40f1: $88
	adc  c                                           ; $40f2: $89
	ld   [hl], a                                     ; $40f3: $77
	ld   [hl], a                                     ; $40f4: $77
	sbc  c                                           ; $40f5: $99
	sbc  c                                           ; $40f6: $99
	adc  b                                           ; $40f7: $88
	ld   [hl], a                                     ; $40f8: $77
	sbc  c                                           ; $40f9: $99
	sbc  b                                           ; $40fa: $98
	ld   [hl], a                                     ; $40fb: $77
	ld   [hl], a                                     ; $40fc: $77
	adc  b                                           ; $40fd: $88
	adc  b                                           ; $40fe: $88
	adc  b                                           ; $40ff: $88
	adc  c                                           ; $4100: $89
	adc  b                                           ; $4101: $88
	sbc  b                                           ; $4102: $98
	sbc  c                                           ; $4103: $99
	sbc  b                                           ; $4104: $98
	ld   [hl], a                                     ; $4105: $77
	ld   [hl], a                                     ; $4106: $77
	ld   h, [hl]                                     ; $4107: $66
	ld   h, [hl]                                     ; $4108: $66
	adc  b                                           ; $4109: $88
	add  [hl]                                        ; $410a: $86
	ld   h, a                                        ; $410b: $67
	sbc  l                                           ; $410c: $9d
	rst  $28                                         ; $410d: $ef
	db   $db                                         ; $410e: $db
	sbc  d                                           ; $410f: $9a
	xor  c                                           ; $4110: $a9
	ld   h, e                                        ; $4111: $63
	ld   de, $2311                                   ; $4112: $11 $11 $23
	ld   e, c                                        ; $4115: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4116: $cf
	rst  $38                                         ; $4117: $ff
	rst  $38                                         ; $4118: $ff
	jp   hl                                          ; $4119: $e9


	ld   h, h                                        ; $411a: $64
	ld   l, b                                        ; $411b: $68
	xor  b                                           ; $411c: $a8
	ld   hl, $2e11                                   ; $411d: $21 $11 $2e
	rst  $38                                         ; $4120: $ff
	ei                                               ; $4121: $fb
	cp   h                                           ; $4122: $bc
	rst  $38                                         ; $4123: $ff
	ei                                               ; $4124: $fb
	halt                                             ; $4125: $76
	ld   a, b                                        ; $4126: $78
	ld   [hl], l                                     ; $4127: $75
	ld   de, $4d11                                   ; $4128: $11 $11 $4d
	rst  $38                                         ; $412b: $ff
	db   $fd                                         ; $412c: $fd
	xor  d                                           ; $412d: $aa
	rst  JumpTable                                         ; $412e: $df
	db   $fd                                         ; $412f: $fd
	sub  a                                           ; $4130: $97
	ld   d, a                                        ; $4131: $57
	ld   d, c                                        ; $4132: $51
	ld   de, $af11                                   ; $4133: $11 $11 $af
	rst  $38                                         ; $4136: $ff
	ld   sp, hl                                      ; $4137: $f9
	ld   l, e                                        ; $4138: $6b
	rst  $38                                         ; $4139: $ff
	ld   hl, sp+$43                                  ; $413a: $f8 $43
	ld   l, c                                        ; $413c: $69
	ld   sp, $1811                                   ; $413d: $31 $11 $18
	rst  $38                                         ; $4140: $ff
	rst  $38                                         ; $4141: $ff
	ld   [hl], e                                     ; $4142: $73
	adc  a                                           ; $4143: $8f
	rst  $38                                         ; $4144: $ff
	ld   h, d                                        ; $4145: $62
	add  hl, hl                                      ; $4146: $29
	add  $11                                         ; $4147: $c6 $11
	ld   de, $ff8f                                   ; $4149: $11 $8f $ff
	rst  $30                                         ; $414c: $f7
	daa                                              ; $414d: $27
	rst  $38                                         ; $414e: $ff
	push bc                                          ; $414f: $c5
	dec  d                                           ; $4150: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4151: $cf
	ld   [hl], c                                     ; $4152: $71
	ld   de, $ff1c                                   ; $4153: $11 $1c $ff
	rst  $38                                         ; $4156: $ff
	ld   b, c                                        ; $4157: $41
	adc  a                                           ; $4158: $8f
	ld   sp, hl                                      ; $4159: $f9
	ld   de, $f38f                                   ; $415a: $11 $8f $f3
	ld   de, rAUD1LEN                                   ; $415d: $11 $11 $ff
	rst  $38                                         ; $4160: $ff
	db   $e4                                         ; $4161: $e4
	add  hl, de                                      ; $4162: $19
	ret  c                                           ; $4163: $d8

	ld   sp, $fe6f                                   ; $4164: $31 $6f $fe
	ld   de, $6f11                                   ; $4167: $11 $11 $6f
	rst  $38                                         ; $416a: $ff
	ld   a, [$8723]                                  ; $416b: $fa $23 $87
	ld   de, $ff4f                                   ; $416e: $11 $4f $ff
	ld   sp, $1f11                                   ; $4171: $31 $11 $1f

Jump_0cf_4174:
	rst  $38                                         ; $4174: $ff
	rst  $38                                         ; $4175: $ff
	ld   h, d                                        ; $4176: $62
	ld   d, [hl]                                     ; $4177: $56
	ld   hl, $ff3c                                   ; $4178: $21 $3c $ff
	and  c                                           ; $417b: $a1
	ld   de, $ff1b                                   ; $417c: $11 $1b $ff
	rst  $38                                         ; $417f: $ff
	db   $d3                                         ; $4180: $d3
	ld   hl, $3c01                                   ; $4181: $21 $01 $3c
	rst  $38                                         ; $4184: $ff
	pop  hl                                          ; $4185: $e1
	ld   de, rAUD1LEN                                   ; $4186: $11 $11 $ff
	rst  $38                                         ; $4189: $ff
	rst  $30                                         ; $418a: $f7
	ld   de, $2a11                                   ; $418b: $11 $11 $2a
	rst  $38                                         ; $418e: $ff
	di                                               ; $418f: $f3
	ld   de, $ef11                                   ; $4190: $11 $11 $ef
	rst  $38                                         ; $4193: $ff
	cp   $31                                         ; $4194: $fe $31
	ld   de, $ff19                                   ; $4196: $11 $19 $ff
	or   $11                                         ; $4199: $f6 $11
	ld   de, $ff4f                                   ; $419b: $11 $4f $ff
	rst  $38                                         ; $419e: $ff
	ld   [hl], c                                     ; $419f: $71
	ld   de, $ff16                                   ; $41a0: $11 $16 $ff
	db   $fc                                         ; $41a3: $fc
	ld   de, $1f11                                   ; $41a4: $11 $11 $1f
	rst  $38                                         ; $41a7: $ff
	rst  $38                                         ; $41a8: $ff
	ldh  a, [c]                                      ; $41a9: $f2
	ld   de, $ef11                                   ; $41aa: $11 $11 $ef
	rst  $38                                         ; $41ad: $ff
	ld   hl, $1611                                   ; $41ae: $21 $11 $16
	rst  $38                                         ; $41b1: $ff
	rst  $38                                         ; $41b2: $ff
	rst  $30                                         ; $41b3: $f7
	ld   de, $9f11                                   ; $41b4: $11 $11 $9f
	rst  $38                                         ; $41b7: $ff
	and  c                                           ; $41b8: $a1
	ld   de, rAUD1LEN                                   ; $41b9: $11 $11 $ff
	rst  $38                                         ; $41bc: $ff
	rst  $38                                         ; $41bd: $ff
	ld   de, $4f11                                   ; $41be: $11 $11 $4f
	rst  $38                                         ; $41c1: $ff
	pop  af                                          ; $41c2: $f1
	ld   de, $5f11                                   ; $41c3: $11 $11 $5f
	rst  $38                                         ; $41c6: $ff
	rst  $38                                         ; $41c7: $ff
	and  c                                           ; $41c8: $a1
	ld   de, $ff1a                                   ; $41c9: $11 $1a $ff
	ld   a, [$1111]                                  ; $41cc: $fa $11 $11
	dec  e                                           ; $41cf: $1d
	rst  $38                                         ; $41d0: $ff
	rst  $38                                         ; $41d1: $ff
	di                                               ; $41d2: $f3
	ld   de, rAUD1LEN                                   ; $41d3: $11 $11 $ff
	rst  $38                                         ; $41d6: $ff
	ld   sp, $1111                                   ; $41d7: $31 $11 $11
	rst  $38                                         ; $41da: $ff
	rst  $38                                         ; $41db: $ff
	cp   $11                                         ; $41dc: $fe $11
	ld   de, $ff6f                                   ; $41de: $11 $6f $ff
	pop  af                                          ; $41e1: $f1
	ld   de, $4f11                                   ; $41e2: $11 $11 $4f
	rst  $38                                         ; $41e5: $ff
	rst  $38                                         ; $41e6: $ff
	and  c                                           ; $41e7: $a1
	ld   de, $ff1c                                   ; $41e8: $11 $1c $ff
	ld   a, [$1111]                                  ; $41eb: $fa $11 $11
	ld   d, $ff                                      ; $41ee: $16 $ff
	rst  $38                                         ; $41f0: $ff
	ld   sp, hl                                      ; $41f1: $f9
	ld   de, $cf11                                   ; $41f2: $11 $11 $cf
	rst  $38                                         ; $41f5: $ff
	sub  c                                           ; $41f6: $91
	ld   de, $af11                                   ; $41f7: $11 $11 $af
	rst  $38                                         ; $41fa: $ff
	rst  $38                                         ; $41fb: $ff
	sub  c                                           ; $41fc: $91
	ld   de, $ff1f                                   ; $41fd: $11 $1f $ff
	ld   hl, sp+$11                                  ; $4200: $f8 $11
	ld   de, $ff1d                                   ; $4202: $11 $1d $ff
	rst  $38                                         ; $4205: $ff
	ld   sp, hl                                      ; $4206: $f9
	ld   de, $ef11                                   ; $4207: $11 $11 $ef
	rst  $38                                         ; $420a: $ff
	ld   [hl], c                                     ; $420b: $71
	ld   de, $af11                                   ; $420c: $11 $11 $af
	rst  $38                                         ; $420f: $ff
	rst  $38                                         ; $4210: $ff
	add  c                                           ; $4211: $81
	ld   de, $ff1e                                   ; $4212: $11 $1e $ff
	rst  $30                                         ; $4215: $f7
	ld   de, $1d11                                   ; $4216: $11 $11 $1d
	rst  $38                                         ; $4219: $ff
	rst  $38                                         ; $421a: $ff
	ei                                               ; $421b: $fb
	ld   de, $df11                                   ; $421c: $11 $11 $df
	rst  $38                                         ; $421f: $ff
	ld   [hl], c                                     ; $4220: $71
	ld   de, $bf11                                   ; $4221: $11 $11 $bf
	rst  $38                                         ; $4224: $ff
	rst  $38                                         ; $4225: $ff
	sub  c                                           ; $4226: $91
	ld   de, $ff1e                                   ; $4227: $11 $1e $ff
	db   $f4                                         ; $422a: $f4
	ld   de, $1911                                   ; $422b: $11 $11 $19
	rst  $38                                         ; $422e: $ff
	rst  $38                                         ; $422f: $ff
	db   $fd                                         ; $4230: $fd
	ld   de, $df11                                   ; $4231: $11 $11 $df
	rst  $38                                         ; $4234: $ff
	ld   h, c                                        ; $4235: $61
	ld   de, $7f11                                   ; $4236: $11 $11 $7f
	rst  $38                                         ; $4239: $ff
	rst  $38                                         ; $423a: $ff
	db   $e3                                         ; $423b: $e3
	ld   de, $ff1a                                   ; $423c: $11 $1a $ff
	ld   a, [$1111]                                  ; $423f: $fa $11 $11
	inc  de                                          ; $4242: $13
	rst  JumpTable                                         ; $4243: $df
	rst  $38                                         ; $4244: $ff
	rst  $38                                         ; $4245: $ff
	sub  c                                           ; $4246: $91
	ld   de, $ff6f                                   ; $4247: $11 $6f $ff
	db   $e4                                         ; $424a: $e4
	ld   de, $1611                                   ; $424b: $11 $11 $16
	rst  $28                                         ; $424e: $ef
	rst  $38                                         ; $424f: $ff
	cp   $71                                         ; $4250: $fe $71
	ld   de, $ff9f                                   ; $4252: $11 $9f $ff
	add  c                                           ; $4255: $81
	ld   de, $1811                                   ; $4256: $11 $11 $18
	rst  $38                                         ; $4259: $ff
	rst  $38                                         ; $425a: $ff
	cp   $61                                         ; $425b: $fe $61
	ld   de, $ff9f                                   ; $425d: $11 $9f $ff
	sub  c                                           ; $4260: $91
	ld   de, $1711                                   ; $4261: $11 $11 $17
	rst  $28                                         ; $4264: $ef
	rst  $38                                         ; $4265: $ff
	cp   $41                                         ; $4266: $fe $41
	ld   de, $ffaf                                   ; $4268: $11 $af $ff
	or   d                                           ; $426b: $b2
	ld   de, $1611                                   ; $426c: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $426f: $cf
	rst  $38                                         ; $4270: $ff
	db   $fd                                         ; $4271: $fd
	ld   hl, $be13                                   ; $4272: $21 $13 $be
	rst  $38                                         ; $4275: $ff
	push bc                                          ; $4276: $c5
	ld   de, $1511                                   ; $4277: $11 $11 $15
	cp   [hl]                                        ; $427a: $be
	rst  $38                                         ; $427b: $ff
	rst  $38                                         ; $427c: $ff
	ld   d, c                                        ; $427d: $51
	ld   [de], a                                     ; $427e: $12
	sbc  l                                           ; $427f: $9d
	rst  $38                                         ; $4280: $ff
	ld   [$1121], a                                  ; $4281: $ea $21 $11
	ld   de, $ff6b                                   ; $4284: $11 $6b $ff
	rst  $38                                         ; $4287: $ff
	sub  e                                           ; $4288: $93
	ld   [de], a                                     ; $4289: $12
	ld   e, h                                        ; $428a: $5c
	rst  $28                                         ; $428b: $ef
	db   $fc                                         ; $428c: $fc
	add  c                                           ; $428d: $81
	ld   de, $4712                                   ; $428e: $11 $12 $47
	sbc  h                                           ; $4291: $9c
	cp   $b8                                         ; $4292: $fe $b8
	ld   d, l                                        ; $4294: $55
	ld   e, c                                        ; $4295: $59
	cp   [hl]                                        ; $4296: $be

Call_0cf_4297:
	db   $fd                                         ; $4297: $fd
	and  a                                           ; $4298: $a7
	ld   d, d                                        ; $4299: $52
	ld   [hl-], a                                    ; $429a: $32
	ld   b, l                                        ; $429b: $45
	ld   d, [hl]                                     ; $429c: $56
	ld   a, b                                        ; $429d: $78
	adc  b                                           ; $429e: $88
	adc  d                                           ; $429f: $8a
	ld   h, a                                        ; $42a0: $67
	adc  b                                           ; $42a1: $88
	cp   h                                           ; $42a2: $bc
	cp   d                                           ; $42a3: $ba
	xor  d                                           ; $42a4: $aa
	adc  b                                           ; $42a5: $88

Call_0cf_42a6:
	ld   [hl], e                                     ; $42a6: $73
	halt                                             ; $42a7: $76
	ld   a, c                                        ; $42a8: $79
	ld   d, a                                        ; $42a9: $57
	ld   [hl], a                                     ; $42aa: $77
	ld   b, l                                        ; $42ab: $45
	adc  e                                           ; $42ac: $8b
	cp   b                                           ; $42ad: $b8
	adc  e                                           ; $42ae: $8b
	cp   b                                           ; $42af: $b8
	cp   c                                           ; $42b0: $b9
	cp   c                                           ; $42b1: $b9
	sbc  c                                           ; $42b2: $99
	ld   [hl], a                                     ; $42b3: $77
	ld   h, [hl]                                     ; $42b4: $66
	ld   h, [hl]                                     ; $42b5: $66
	ld   l, b                                        ; $42b6: $68
	adc  b                                           ; $42b7: $88
	ld   [hl], a                                     ; $42b8: $77
	halt                                             ; $42b9: $76
	sbc  c                                           ; $42ba: $99
	adc  b                                           ; $42bb: $88
	sbc  b                                           ; $42bc: $98
	adc  d                                           ; $42bd: $8a
	sbc  b                                           ; $42be: $98
	sbc  b                                           ; $42bf: $98
	adc  c                                           ; $42c0: $89
	xor  b                                           ; $42c1: $a8
	sbc  d                                           ; $42c2: $9a
	sub  a                                           ; $42c3: $97
	ld   a, b                                        ; $42c4: $78
	sbc  b                                           ; $42c5: $98
	sbc  b                                           ; $42c6: $98
	adc  b                                           ; $42c7: $88
	ld   [hl], a                                     ; $42c8: $77
	ld   h, a                                        ; $42c9: $67
	adc  c                                           ; $42ca: $89
	sbc  c                                           ; $42cb: $99
	sbc  d                                           ; $42cc: $9a
	xor  c                                           ; $42cd: $a9
	add  a                                           ; $42ce: $87
	adc  d                                           ; $42cf: $8a
	sbc  c                                           ; $42d0: $99
	sbc  c                                           ; $42d1: $99
	adc  b                                           ; $42d2: $88
	ld   h, [hl]                                     ; $42d3: $66
	adc  b                                           ; $42d4: $88
	add  a                                           ; $42d5: $87
	sbc  c                                           ; $42d6: $99
	sbc  b                                           ; $42d7: $98
	adc  b                                           ; $42d8: $88
	adc  b                                           ; $42d9: $88
	adc  d                                           ; $42da: $8a
	xor  d                                           ; $42db: $aa
	adc  b                                           ; $42dc: $88
	add  a                                           ; $42dd: $87
	ld   [hl], a                                     ; $42de: $77
	ld   a, b                                        ; $42df: $78
	sbc  c                                           ; $42e0: $99
	adc  b                                           ; $42e1: $88
	adc  b                                           ; $42e2: $88
	ld   [hl], a                                     ; $42e3: $77
	ld   a, b                                        ; $42e4: $78
	adc  d                                           ; $42e5: $8a
	sbc  c                                           ; $42e6: $99
	sbc  b                                           ; $42e7: $98
	ld   [hl], a                                     ; $42e8: $77
	ld   [hl], a                                     ; $42e9: $77
	adc  b                                           ; $42ea: $88
	adc  c                                           ; $42eb: $89
	adc  b                                           ; $42ec: $88
	ld   [hl], a                                     ; $42ed: $77
	ld   [hl], a                                     ; $42ee: $77
	ld   a, b                                        ; $42ef: $78
	adc  c                                           ; $42f0: $89
	sbc  b                                           ; $42f1: $98
	add  a                                           ; $42f2: $87
	adc  b                                           ; $42f3: $88
	ld   a, b                                        ; $42f4: $78
	adc  b                                           ; $42f5: $88
	sbc  c                                           ; $42f6: $99
	add  a                                           ; $42f7: $87
	ld   [hl], a                                     ; $42f8: $77
	ld   [hl], a                                     ; $42f9: $77
	ld   a, b                                        ; $42fa: $78
	sbc  c                                           ; $42fb: $99
	adc  b                                           ; $42fc: $88
	ld   [hl], a                                     ; $42fd: $77
	ld   [hl], a                                     ; $42fe: $77
	sbc  b                                           ; $42ff: $98
	sbc  c                                           ; $4300: $99
	adc  c                                           ; $4301: $89
	add  a                                           ; $4302: $87
	ld   [hl], a                                     ; $4303: $77
	ld   [hl], a                                     ; $4304: $77
	adc  c                                           ; $4305: $89
	sbc  c                                           ; $4306: $99
	add  a                                           ; $4307: $87
	ld   [hl], a                                     ; $4308: $77
	ld   a, b                                        ; $4309: $78
	sbc  b                                           ; $430a: $98
	adc  c                                           ; $430b: $89
	adc  b                                           ; $430c: $88
	ld   [hl], a                                     ; $430d: $77
	ld   [hl], a                                     ; $430e: $77
	ld   a, b                                        ; $430f: $78
	adc  c                                           ; $4310: $89
	sbc  b                                           ; $4311: $98
	halt                                             ; $4312: $76
	ld   [hl], a                                     ; $4313: $77
	ld   a, b                                        ; $4314: $78
	sbc  c                                           ; $4315: $99
	adc  b                                           ; $4316: $88
	add  a                                           ; $4317: $87
	ld   a, b                                        ; $4318: $78
	ld   a, b                                        ; $4319: $78
	adc  b                                           ; $431a: $88
	adc  c                                           ; $431b: $89
	add  a                                           ; $431c: $87
	ld   [hl], a                                     ; $431d: $77
	ld   [hl], a                                     ; $431e: $77
	adc  b                                           ; $431f: $88
	adc  b                                           ; $4320: $88
	add  a                                           ; $4321: $87
	add  a                                           ; $4322: $87
	adc  b                                           ; $4323: $88
	adc  b                                           ; $4324: $88
	adc  c                                           ; $4325: $89
	adc  b                                           ; $4326: $88
	add  a                                           ; $4327: $87
	ld   [hl], a                                     ; $4328: $77
	adc  b                                           ; $4329: $88
	adc  b                                           ; $432a: $88
	add  a                                           ; $432b: $87
	ld   a, b                                        ; $432c: $78
	adc  b                                           ; $432d: $88
	adc  b                                           ; $432e: $88
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	adc  b                                           ; $4331: $88
	add  a                                           ; $4332: $87
	adc  b                                           ; $4333: $88
	sbc  c                                           ; $4334: $99
	adc  b                                           ; $4335: $88
	ld   a, b                                        ; $4336: $78
	adc  b                                           ; $4337: $88
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	add  a                                           ; $433b: $87
	adc  b                                           ; $433c: $88
	adc  b                                           ; $433d: $88
	adc  b                                           ; $433e: $88
	sbc  b                                           ; $433f: $98
	add  a                                           ; $4340: $87
	adc  b                                           ; $4341: $88
	adc  b                                           ; $4342: $88
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	adc  b                                           ; $4345: $88
	add  a                                           ; $4346: $87
	ld   a, b                                        ; $4347: $78
	adc  b                                           ; $4348: $88
	adc  b                                           ; $4349: $88
	adc  b                                           ; $434a: $88
	add  a                                           ; $434b: $87
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
	ld   a, b                                        ; $4356: $78
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
	sbc  b                                           ; $4386: $98
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
	adc  c                                           ; $4391: $89
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
	adc  b                                           ; $4394: $88
	adc  b                                           ; $4395: $88
	adc  c                                           ; $4396: $89
	adc  b                                           ; $4397: $88

Call_0cf_4398:
	adc  b                                           ; $4398: $88
	adc  b                                           ; $4399: $88
	adc  b                                           ; $439a: $88
	adc  b                                           ; $439b: $88
	adc  c                                           ; $439c: $89
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
	adc  b                                           ; $43d3: $88
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
	adc  b                                           ; $43db: $88
	sbc  b                                           ; $43dc: $98
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
	sbc  c                                           ; $43e7: $99
	adc  c                                           ; $43e8: $89
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
	sbc  b                                           ; $43f3: $98
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
	adc  c                                           ; $4403: $89
	adc  b                                           ; $4404: $88
	adc  b                                           ; $4405: $88
	adc  b                                           ; $4406: $88
	adc  b                                           ; $4407: $88
	sbc  b                                           ; $4408: $98
	adc  b                                           ; $4409: $88
	adc  c                                           ; $440a: $89
	adc  b                                           ; $440b: $88
	adc  b                                           ; $440c: $88
	adc  b                                           ; $440d: $88
	adc  b                                           ; $440e: $88
	sbc  b                                           ; $440f: $98
	adc  b                                           ; $4410: $88
	adc  b                                           ; $4411: $88
	adc  b                                           ; $4412: $88
	sbc  b                                           ; $4413: $98
	adc  b                                           ; $4414: $88
	adc  b                                           ; $4415: $88
	adc  b                                           ; $4416: $88
	adc  b                                           ; $4417: $88
	adc  b                                           ; $4418: $88
	adc  b                                           ; $4419: $88
	adc  b                                           ; $441a: $88
	sbc  b                                           ; $441b: $98
	adc  b                                           ; $441c: $88
	adc  b                                           ; $441d: $88
	adc  b                                           ; $441e: $88
	adc  b                                           ; $441f: $88
	adc  b                                           ; $4420: $88
	adc  b                                           ; $4421: $88
	ld   a, b                                        ; $4422: $78
	sbc  b                                           ; $4423: $98
	adc  b                                           ; $4424: $88
	adc  b                                           ; $4425: $88
	adc  b                                           ; $4426: $88
	adc  b                                           ; $4427: $88
	adc  c                                           ; $4428: $89
	adc  b                                           ; $4429: $88
	adc  c                                           ; $442a: $89
	adc  b                                           ; $442b: $88
	adc  c                                           ; $442c: $89
	add  a                                           ; $442d: $87
	adc  c                                           ; $442e: $89
	adc  b                                           ; $442f: $88
	adc  b                                           ; $4430: $88
	adc  b                                           ; $4431: $88
	adc  b                                           ; $4432: $88
	adc  b                                           ; $4433: $88
	sbc  b                                           ; $4434: $98
	adc  b                                           ; $4435: $88
	adc  b                                           ; $4436: $88
	sbc  b                                           ; $4437: $98
	adc  b                                           ; $4438: $88
	adc  b                                           ; $4439: $88
	ld   a, c                                        ; $443a: $79
	add  a                                           ; $443b: $87
	sbc  b                                           ; $443c: $98
	adc  b                                           ; $443d: $88
	sbc  b                                           ; $443e: $98
	adc  c                                           ; $443f: $89
	adc  b                                           ; $4440: $88
	ld   a, c                                        ; $4441: $79
	add  a                                           ; $4442: $87
	ld   a, c                                        ; $4443: $79
	adc  b                                           ; $4444: $88
	adc  b                                           ; $4445: $88
	sub  a                                           ; $4446: $97
	adc  b                                           ; $4447: $88
	sbc  b                                           ; $4448: $98
	ld   a, b                                        ; $4449: $78
	adc  c                                           ; $444a: $89
	adc  b                                           ; $444b: $88
	ld   [hl], a                                     ; $444c: $77
	adc  b                                           ; $444d: $88
	add  a                                           ; $444e: $87
	ld   a, b                                        ; $444f: $78
	adc  b                                           ; $4450: $88
	adc  b                                           ; $4451: $88
	adc  c                                           ; $4452: $89
	adc  b                                           ; $4453: $88
	ld   [hl], a                                     ; $4454: $77
	add  a                                           ; $4455: $87
	ld   a, b                                        ; $4456: $78
	sbc  d                                           ; $4457: $9a
	ld   [hl], a                                     ; $4458: $77
	sub  a                                           ; $4459: $97
	adc  c                                           ; $445a: $89
	sbc  b                                           ; $445b: $98
	ld   a, b                                        ; $445c: $78
	add  a                                           ; $445d: $87
	ld   h, a                                        ; $445e: $67
	xor  c                                           ; $445f: $a9
	add  a                                           ; $4460: $87
	sbc  c                                           ; $4461: $99
	ld   [hl], a                                     ; $4462: $77
	ld   a, b                                        ; $4463: $78
	sbc  b                                           ; $4464: $98
	ld   a, b                                        ; $4465: $78
	ld   [hl], a                                     ; $4466: $77
	add  a                                           ; $4467: $87
	sbc  b                                           ; $4468: $98
	ld   h, a                                        ; $4469: $67
	sbc  c                                           ; $446a: $99
	sub  a                                           ; $446b: $97
	adc  c                                           ; $446c: $89
	sbc  b                                           ; $446d: $98
	ld   a, c                                        ; $446e: $79
	sbc  c                                           ; $446f: $99
	xor  c                                           ; $4470: $a9
	add  a                                           ; $4471: $87
	ld   h, a                                        ; $4472: $67
	ld   a, b                                        ; $4473: $78
	ld   [hl], a                                     ; $4474: $77
	sbc  b                                           ; $4475: $98
	adc  b                                           ; $4476: $88
	ld   a, b                                        ; $4477: $78
	adc  c                                           ; $4478: $89
	ld   [hl], a                                     ; $4479: $77
	sbc  b                                           ; $447a: $98
	adc  c                                           ; $447b: $89
	adc  c                                           ; $447c: $89
	xor  c                                           ; $447d: $a9
	sbc  b                                           ; $447e: $98
	adc  b                                           ; $447f: $88
	adc  c                                           ; $4480: $89
	add  a                                           ; $4481: $87
	add  a                                           ; $4482: $87
	ld   h, l                                        ; $4483: $65
	ld   b, l                                        ; $4484: $45
	ld   b, h                                        ; $4485: $44
	ld   b, l                                        ; $4486: $45
	ld   a, b                                        ; $4487: $78
	cp   h                                           ; $4488: $bc
	db   $dd                                         ; $4489: $dd
	set  1, e                                        ; $448a: $cb $cb
	cp   d                                           ; $448c: $ba
	xor  d                                           ; $448d: $aa
	sub  a                                           ; $448e: $97
	ld   d, c                                        ; $448f: $51
	ld   de, $2611                                   ; $4490: $11 $11 $26
	cp   d                                           ; $4493: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4494: $cf
	rst  $38                                         ; $4495: $ff
	db   $fd                                         ; $4496: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4497: $cf
	rst  $38                                         ; $4498: $ff
	cp   $b6                                         ; $4499: $fe $b6
	ld   de, $1111                                   ; $449b: $11 $11 $11
	xor  l                                           ; $449e: $ad
	rst  $38                                         ; $449f: $ff
	rst  $38                                         ; $44a0: $ff
	rst  $38                                         ; $44a1: $ff
	rst  $30                                         ; $44a2: $f7
	cp   a                                           ; $44a3: $bf
	rst  $38                                         ; $44a4: $ff
	cp   $f4                                         ; $44a5: $fe $f4
	ld   de, $1111                                   ; $44a7: $11 $11 $11
	rst  $28                                         ; $44aa: $ef
	rst  $38                                         ; $44ab: $ff
	rst  $38                                         ; $44ac: $ff
	rst  $38                                         ; $44ad: $ff
	and  c                                           ; $44ae: $a1
	ld   e, h                                        ; $44af: $5c
	cp   a                                           ; $44b0: $bf
	rst  $38                                         ; $44b1: $ff
	ldh  a, [c]                                      ; $44b2: $f2
	ld   de, $1111                                   ; $44b3: $11 $11 $11
	rst  $38                                         ; $44b6: $ff
	rst  $38                                         ; $44b7: $ff
	rst  $38                                         ; $44b8: $ff
	db   $fd                                         ; $44b9: $fd
	ld   hl, $ff1b                                   ; $44ba: $21 $1b $ff
	rst  $38                                         ; $44bd: $ff
	push af                                          ; $44be: $f5
	ld   de, $1111                                   ; $44bf: $11 $11 $11
	rst  $38                                         ; $44c2: $ff
	rst  $38                                         ; $44c3: $ff
	rst  $38                                         ; $44c4: $ff
	ld   a, [$1b11]                                  ; $44c5: $fa $11 $1b
	rst  $38                                         ; $44c8: $ff
	rst  $38                                         ; $44c9: $ff
	ldh  a, [c]                                      ; $44ca: $f2
	ld   de, $1711                                   ; $44cb: $11 $11 $17
	rst  $38                                         ; $44ce: $ff
	rst  $38                                         ; $44cf: $ff
	rst  $38                                         ; $44d0: $ff
	ldh  a, [c]                                      ; $44d1: $f2
	ld   de, $ff2f                                   ; $44d2: $11 $2f $ff
	rst  $38                                         ; $44d5: $ff
	pop  bc                                          ; $44d6: $c1
	ld   de, $1f11                                   ; $44d7: $11 $11 $1f
	rst  $38                                         ; $44da: $ff
	rst  $38                                         ; $44db: $ff
	rst  $38                                         ; $44dc: $ff
	ld   h, c                                        ; $44dd: $61
	ld   de, $ff6f                                   ; $44de: $11 $6f $ff
	rst  $38                                         ; $44e1: $ff
	ld   d, c                                        ; $44e2: $51
	ld   de, $1f11                                   ; $44e3: $11 $11 $1f
	rst  $38                                         ; $44e6: $ff
	rst  $38                                         ; $44e7: $ff
	rst  $38                                         ; $44e8: $ff
	ld   de, $9f11                                   ; $44e9: $11 $11 $9f
	rst  $38                                         ; $44ec: $ff
	rst  $38                                         ; $44ed: $ff
	ld   de, $1111                                   ; $44ee: $11 $11 $11
	rra                                              ; $44f1: $1f
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	ei                                               ; $44f4: $fb
	ld   de, $df11                                   ; $44f5: $11 $11 $df
	rst  $38                                         ; $44f8: $ff
	rst  $38                                         ; $44f9: $ff
	ld   de, $1111                                   ; $44fa: $11 $11 $11
	rra                                              ; $44fd: $1f
	rst  $38                                         ; $44fe: $ff
	rst  $38                                         ; $44ff: $ff
	pop  af                                          ; $4500: $f1
	ld   de, rAUD1LEN                                   ; $4501: $11 $11 $ff
	rst  $38                                         ; $4504: $ff
	db   $fc                                         ; $4505: $fc
	ld   de, $1111                                   ; $4506: $11 $11 $11
	dec  e                                           ; $4509: $1d
	rst  $38                                         ; $450a: $ff
	rst  $38                                         ; $450b: $ff
	ld   b, c                                        ; $450c: $41
	ld   de, rAUD1ENV                                   ; $450d: $11 $12 $ff
	rst  $38                                         ; $4510: $ff
	ld   hl, sp+$11                                  ; $4511: $f8 $11
	ld   de, $1111                                   ; $4513: $11 $11 $11
	rst  $38                                         ; $4516: $ff
	rst  $38                                         ; $4517: $ff
	ld   de, $1811                                   ; $4518: $11 $11 $18
	rst  $38                                         ; $451b: $ff
	rst  $38                                         ; $451c: $ff
	rst  $30                                         ; $451d: $f7
	ld   de, $af11                                   ; $451e: $11 $11 $af
	ld   de, $ffff                                   ; $4521: $11 $ff $ff
	ld   de, $de11                                   ; $4524: $11 $11 $de
	rst  $38                                         ; $4527: $ff
	rst  $38                                         ; $4528: $ff
	cp   $11                                         ; $4529: $fe $11
	ld   de, $61af                                   ; $452b: $11 $af $61
	rra                                              ; $452e: $1f
	rst  $38                                         ; $452f: $ff
	pop  af                                          ; $4530: $f1
	ld   de, $ff2f                                   ; $4531: $11 $2f $ff
	xor  a                                           ; $4534: $af
	rst  $38                                         ; $4535: $ff
	ld   de, $8f11                                   ; $4536: $11 $11 $8f
	pop  af                                          ; $4539: $f1
	ld   de, $f1ff                                   ; $453a: $11 $ff $f1
	ld   de, $ff1f                                   ; $453d: $11 $1f $ff
	rst  $30                                         ; $4540: $f7
	rst  $38                                         ; $4541: $ff
	pop  af                                          ; $4542: $f1
	ld   de, $ff1d                                   ; $4543: $11 $1d $ff
	ld   de, $ff1f                                   ; $4546: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $4549: $11 $11 $ff
	rst  $38                                         ; $454c: $ff
	ccf                                              ; $454d: $3f
	rst  $38                                         ; $454e: $ff
	ld   de, $ef13                                   ; $454f: $11 $13 $ef
	pop  af                                          ; $4552: $f1
	ld   de, $f1ff                                   ; $4553: $11 $ff $f1
	ld   de, $ff1f                                   ; $4556: $11 $1f $ff
	pop  de                                          ; $4559: $d1
	sbc  a                                           ; $455a: $9f
	ld   sp, hl                                      ; $455b: $f9
	ld   de, $ff17                                   ; $455c: $11 $17 $ff
	ld   de, $ff1f                                   ; $455f: $11 $1f $ff
	pop  af                                          ; $4562: $f1
	ld   de, $ffcf                                   ; $4563: $11 $cf $ff
	ld   d, a                                        ; $4566: $57
	rst  $38                                         ; $4567: $ff
	ld   d, c                                        ; $4568: $51
	ld   de, $f1af                                   ; $4569: $11 $af $f1
	ld   de, $ffff                                   ; $456c: $11 $ff $ff
	ld   de, $ff1f                                   ; $456f: $11 $1f $ff
	pop  af                                          ; $4572: $f1
	ccf                                              ; $4573: $3f
	ld   sp, hl                                      ; $4574: $f9
	ld   de, $ff47                                   ; $4575: $11 $47 $ff
	ld   de, $ff1f                                   ; $4578: $11 $1f $ff
	ld   sp, rAUD1LEN                                   ; $457b: $31 $11 $ff
	rst  $38                                         ; $457e: $ff
	ld   d, c                                        ; $457f: $51
	add  a                                           ; $4580: $87
	ld   [hl], c                                     ; $4581: $71
	ld   d, $af                                      ; $4582: $16 $af
	ld   b, c                                        ; $4584: $41
	add  hl, de                                      ; $4585: $19
	rst  $38                                         ; $4586: $ff
	pop  af                                          ; $4587: $f1
	ld   de, $ff1f                                   ; $4588: $11 $1f $ff
	push af                                          ; $458b: $f5
	inc  d                                           ; $458c: $14
	sub  d                                           ; $458d: $92
	ld   de, $f13f                                   ; $458e: $11 $3f $f1
	ld   de, $f7df                                   ; $4591: $11 $df $f7
	ld   de, $ff1a                                   ; $4594: $11 $1a $ff
	db   $fc                                         ; $4597: $fc
	ld   de, $131b                                   ; $4598: $11 $1b $13
	ld   d, $f5                                      ; $459b: $16 $f5
	ld   de, $ffaf                                   ; $459d: $11 $af $ff
	ld   h, c                                        ; $45a0: $61
	ld   de, $ff6f                                   ; $45a1: $11 $6f $ff
	pop  bc                                          ; $45a4: $c1
	ld   de, $9251                                   ; $45a5: $11 $51 $92
	add  sp, $11                                     ; $45a8: $e8 $11
	ld   c, a                                        ; $45aa: $4f
	rst  $38                                         ; $45ab: $ff
	sub  d                                           ; $45ac: $92
	ld   de, $ff4f                                   ; $45ad: $11 $4f $ff
	or   $11                                         ; $45b0: $f6 $11
	ld   b, d                                        ; $45b2: $42
	ld   [hl], a                                     ; $45b3: $77
	ld   a, a                                        ; $45b4: $7f
	ld   de, $ff1a                                   ; $45b5: $11 $1a $ff
	or   $11                                         ; $45b8: $f6 $11
	dec  d                                           ; $45ba: $15
	rst  $38                                         ; $45bb: $ff
	rst  $38                                         ; $45bc: $ff
	ld   hl, $4912                                   ; $45bd: $21 $12 $49
	ld   e, h                                        ; $45c0: $5c
	sub  c                                           ; $45c1: $91
	ld   de, $ffdf                                   ; $45c2: $11 $df $ff
	ld   h, c                                        ; $45c5: $61
	ld   de, $ff8f                                   ; $45c6: $11 $8f $ff
	pop  de                                          ; $45c9: $d1
	inc  de                                          ; $45ca: $13
	add  hl, hl                                      ; $45cb: $29
	ld   h, a                                        ; $45cc: $67
	push de                                          ; $45cd: $d5
	ld   de, $ff4b                                   ; $45ce: $11 $4b $ff
	ld   hl, sp+$11                                  ; $45d1: $f8 $11
	add  hl, de                                      ; $45d3: $19
	rst  $38                                         ; $45d4: $ff
	cp   $11                                         ; $45d5: $fe $11
	ld   [hl-], a                                    ; $45d7: $32
	sub  l                                           ; $45d8: $95
	xor  e                                           ; $45d9: $ab
	ld   [hl], d                                     ; $45da: $72
	inc  de                                          ; $45db: $13
	xor  a                                           ; $45dc: $af
	rst  $38                                         ; $45dd: $ff
	sub  c                                           ; $45de: $91
	ld   de, $ff5f                                   ; $45df: $11 $5f $ff
	pop  hl                                          ; $45e2: $e1
	ld   de, $ab3b                                   ; $45e3: $11 $3b $ab
	ret  c                                           ; $45e6: $d8

	ld   sp, $ef16                                   ; $45e7: $31 $16 $ef
	cp   $11                                         ; $45ea: $fe $11
	ld   de, $ffff                                   ; $45ec: $11 $ff $ff
	ld   d, c                                        ; $45ef: $51
	inc  de                                          ; $45f0: $13
	xor  [hl]                                        ; $45f1: $ae
	sbc  l                                           ; $45f2: $9d
	sub  a                                           ; $45f3: $97
	ld   de, rAUD1HIGH                                   ; $45f4: $11 $14 $ff
	rst  $38                                         ; $45f7: $ff
	ld   de, rAUD1LEN                                   ; $45f8: $11 $11 $ff
	rst  $38                                         ; $45fb: $ff
	ld   de, $fd14                                   ; $45fc: $11 $14 $fd
	call c, $1189                                    ; $45ff: $dc $89 $11
	ld   de, $ffef                                   ; $4602: $11 $ef $ff
	ld   b, c                                        ; $4605: $41
	ld   de, $ffcf                                   ; $4606: $11 $cf $ff
	ld   b, c                                        ; $4609: $41
	ld   c, c                                        ; $460a: $49
	rst  $38                                         ; $460b: $ff
	halt                                             ; $460c: $76
	add  hl, sp                                      ; $460d: $39
	or   d                                           ; $460e: $b2
	ld   de, $ff3f                                   ; $460f: $11 $3f $ff
	ldh  a, [c]                                      ; $4612: $f2
	ld   de, $ff1d                                   ; $4613: $11 $1d $ff
	db   $f4                                         ; $4616: $f4
	ld   de, $f67e                                   ; $4617: $11 $7e $f6
	inc  [hl]                                        ; $461a: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $461b: $cf
	ld   hl, sp+$11                                  ; $461c: $f8 $11
	rla                                              ; $461e: $17
	rst  $38                                         ; $461f: $ff
	rst  $30                                         ; $4620: $f7
	ld   de, $ff1c                                   ; $4621: $11 $1c $ff
	pop  af                                          ; $4624: $f1
	ld   [de], a                                     ; $4625: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4626: $cf
	db   $f4                                         ; $4627: $f4
	ld   de, $ff3f                                   ; $4628: $11 $3f $ff
	or   c                                           ; $462b: $b1
	ld   de, $ff2f                                   ; $462c: $11 $2f $ff
	pop  af                                          ; $462f: $f1
	ld   de, $ff9f                                   ; $4630: $11 $9f $ff
	ld   de, $ff3e                                   ; $4633: $11 $3e $ff
	ld   d, c                                        ; $4636: $51
	ld   de, $ffff                                   ; $4637: $11 $ff $ff
	ld   b, c                                        ; $463a: $41
	ld   de, $ff6f                                   ; $463b: $11 $6f $ff
	pop  af                                          ; $463e: $f1
	ld   de, $fd2f                                   ; $463f: $11 $2f $fd
	ld   [hl], c                                     ; $4642: $71
	ld   l, d                                        ; $4643: $6a
	rst  $38                                         ; $4644: $ff
	add  c                                           ; $4645: $81
	ld   de, $ff7f                                   ; $4646: $11 $7f $ff
	and  e                                           ; $4649: $a3
	ld   de, $ac18                                   ; $464a: $11 $18 $ac
	db   $fd                                         ; $464d: $fd
	ei                                               ; $464e: $fb
	ld   b, c                                        ; $464f: $41
	ld   de, $ff6d                                   ; $4650: $11 $6d $ff
	ret  z                                           ; $4653: $c8

	inc  de                                          ; $4654: $13
	scf                                              ; $4655: $37
	or   a                                           ; $4656: $b7
	rst  ToBoot                                         ; $4657: $c7
	xor  e                                           ; $4658: $ab
	xor  h                                           ; $4659: $ac
	ld   h, h                                        ; $465a: $64
	inc  hl                                          ; $465b: $23
	ld   h, a                                        ; $465c: $67
	xor  l                                           ; $465d: $ad
	sbc  a                                           ; $465e: $9f
	cp   d                                           ; $465f: $ba
	or   c                                           ; $4660: $b1
	ld   b, c                                        ; $4661: $41
	daa                                              ; $4662: $27
	adc  a                                           ; $4663: $8f
	rst  $28                                         ; $4664: $ef
	or   c                                           ; $4665: $b1
	ld   d, c                                        ; $4666: $51
	add  hl, sp                                      ; $4667: $39
	ld   c, l                                        ; $4668: $4d
	cp   a                                           ; $4669: $bf
	ld   sp, hl                                      ; $466a: $f9
	and  d                                           ; $466b: $a2
	ld   [de], a                                     ; $466c: $12
	add  hl, hl                                      ; $466d: $29
	cp   l                                           ; $466e: $bd
	ld   [$57a7], a                                  ; $466f: $ea $a7 $57
	ld   l, c                                        ; $4672: $69
	ld   h, l                                        ; $4673: $65
	ld   d, l                                        ; $4674: $55
	cp   a                                           ; $4675: $bf
	db   $fd                                         ; $4676: $fd
	ld   [hl], c                                     ; $4677: $71
	ld   de, $fe8d                                   ; $4678: $11 $8d $fe
	sub  a                                           ; $467b: $97
	ld   b, [hl]                                     ; $467c: $46
	ld   h, [hl]                                     ; $467d: $66
	ld   d, h                                        ; $467e: $54
	adc  c                                           ; $467f: $89
	xor  $da                                         ; $4680: $ee $da
	ld   [hl-], a                                    ; $4682: $32
	dec  d                                           ; $4683: $15
	sbc  h                                           ; $4684: $9c
	db   $ec                                         ; $4685: $ec
	xor  b                                           ; $4686: $a8
	ld   [hl], a                                     ; $4687: $77
	sub  a                                           ; $4688: $97
	ld   h, d                                        ; $4689: $62
	inc  de                                          ; $468a: $13
	ld   a, l                                        ; $468b: $7d
	rst  $38                                         ; $468c: $ff
	rst  $10                                         ; $468d: $d7
	ld   de, $bd15                                   ; $468e: $11 $15 $bd
	db   $fd                                         ; $4691: $fd
	sub  a                                           ; $4692: $97
	ld   b, l                                        ; $4693: $45
	ld   d, [hl]                                     ; $4694: $56
	ld   h, [hl]                                     ; $4695: $66
	adc  c                                           ; $4696: $89
	db   $dd                                         ; $4697: $dd
	jp   c, $1362                                    ; $4698: $da $62 $13

	adc  e                                           ; $469b: $8b
	db   $ed                                         ; $469c: $ed
	xor  c                                           ; $469d: $a9
	ld   h, a                                        ; $469e: $67
	ld   [hl], a                                     ; $469f: $77
	ld   [hl], l                                     ; $46a0: $75
	ld   d, a                                        ; $46a1: $57
	sbc  h                                           ; $46a2: $9c
	ld   [$3493], a                                  ; $46a3: $ea $93 $34
	ld   c, h                                        ; $46a6: $4c
	xor  l                                           ; $46a7: $ad
	and  a                                           ; $46a8: $a7
	ld   [hl], l                                     ; $46a9: $75
	ld   [hl], a                                     ; $46aa: $77
	adc  b                                           ; $46ab: $88
	ld   [hl], a                                     ; $46ac: $77
	adc  c                                           ; $46ad: $89
	cp   d                                           ; $46ae: $ba
	sub  a                                           ; $46af: $97
	ld   d, l                                        ; $46b0: $55
	ld   d, a                                        ; $46b1: $57
	adc  e                                           ; $46b2: $8b
	xor  e                                           ; $46b3: $ab
	xor  c                                           ; $46b4: $a9
	ld   h, h                                        ; $46b5: $64
	ld   h, l                                        ; $46b6: $65
	xor  d                                           ; $46b7: $aa
	xor  h                                           ; $46b8: $ac
	ld   a, b                                        ; $46b9: $78
	ld   h, l                                        ; $46ba: $65
	sub  [hl]                                        ; $46bb: $96
	sbc  b                                           ; $46bc: $98
	sbc  d                                           ; $46bd: $9a
	adc  c                                           ; $46be: $89
	adc  b                                           ; $46bf: $88
	add  a                                           ; $46c0: $87
	ld   h, a                                        ; $46c1: $67
	ld   l, c                                        ; $46c2: $69
	xor  e                                           ; $46c3: $ab
	xor  b                                           ; $46c4: $a8
	halt                                             ; $46c5: $76
	ld   h, a                                        ; $46c6: $67
	adc  b                                           ; $46c7: $88
	sbc  b                                           ; $46c8: $98
	sbc  c                                           ; $46c9: $99
	sbc  c                                           ; $46ca: $99
	ld   [hl], a                                     ; $46cb: $77
	ld   h, a                                        ; $46cc: $67
	ld   a, b                                        ; $46cd: $78
	xor  d                                           ; $46ce: $aa
	sbc  b                                           ; $46cf: $98
	add  a                                           ; $46d0: $87
	add  a                                           ; $46d1: $87
	ld   [hl], a                                     ; $46d2: $77
	ld   [hl], a                                     ; $46d3: $77
	adc  c                                           ; $46d4: $89
	xor  e                                           ; $46d5: $ab
	xor  b                                           ; $46d6: $a8
	ld   h, l                                        ; $46d7: $65
	ld   d, [hl]                                     ; $46d8: $56
	adc  d                                           ; $46d9: $8a
	xor  d                                           ; $46da: $aa
	sub  a                                           ; $46db: $97
	halt                                             ; $46dc: $76
	ld   [hl], a                                     ; $46dd: $77
	sbc  c                                           ; $46de: $99
	sbc  b                                           ; $46df: $98
	adc  b                                           ; $46e0: $88
	adc  c                                           ; $46e1: $89
	adc  c                                           ; $46e2: $89
	halt                                             ; $46e3: $76
	ld   h, a                                        ; $46e4: $67
	sbc  d                                           ; $46e5: $9a
	xor  c                                           ; $46e6: $a9
	add  a                                           ; $46e7: $87
	ld   h, [hl]                                     ; $46e8: $66
	adc  c                                           ; $46e9: $89
	sbc  c                                           ; $46ea: $99
	adc  b                                           ; $46eb: $88
	ld   [hl], a                                     ; $46ec: $77
	adc  b                                           ; $46ed: $88
	adc  b                                           ; $46ee: $88
	adc  b                                           ; $46ef: $88
	ld   a, b                                        ; $46f0: $78
	adc  c                                           ; $46f1: $89
	adc  b                                           ; $46f2: $88
	add  a                                           ; $46f3: $87
	ld   a, b                                        ; $46f4: $78
	adc  b                                           ; $46f5: $88
	adc  b                                           ; $46f6: $88
	add  a                                           ; $46f7: $87
	ld   a, b                                        ; $46f8: $78
	adc  c                                           ; $46f9: $89
	adc  b                                           ; $46fa: $88
	adc  b                                           ; $46fb: $88
	sbc  c                                           ; $46fc: $99
	sbc  c                                           ; $46fd: $99
	adc  b                                           ; $46fe: $88
	add  a                                           ; $46ff: $87
	adc  b                                           ; $4700: $88
	adc  b                                           ; $4701: $88
	adc  c                                           ; $4702: $89
	adc  b                                           ; $4703: $88
	add  a                                           ; $4704: $87
	ld   [hl], a                                     ; $4705: $77
	adc  b                                           ; $4706: $88
	sbc  c                                           ; $4707: $99
	sub  a                                           ; $4708: $97
	ld   [hl], a                                     ; $4709: $77
	adc  c                                           ; $470a: $89
	sbc  b                                           ; $470b: $98
	add  a                                           ; $470c: $87
	ld   a, b                                        ; $470d: $78
	adc  b                                           ; $470e: $88
	add  a                                           ; $470f: $87
	ld   [hl], a                                     ; $4710: $77
	adc  c                                           ; $4711: $89
	adc  b                                           ; $4712: $88
	adc  b                                           ; $4713: $88
	ld   a, b                                        ; $4714: $78
	sbc  b                                           ; $4715: $98
	sbc  b                                           ; $4716: $98
	ld   [hl], a                                     ; $4717: $77
	ld   a, b                                        ; $4718: $78
	adc  b                                           ; $4719: $88
	sbc  b                                           ; $471a: $98
	add  a                                           ; $471b: $87
	adc  b                                           ; $471c: $88
	add  a                                           ; $471d: $87
	ld   [hl], a                                     ; $471e: $77
	adc  b                                           ; $471f: $88
	sbc  b                                           ; $4720: $98
	add  a                                           ; $4721: $87
	ld   [hl], a                                     ; $4722: $77
	adc  c                                           ; $4723: $89
	adc  b                                           ; $4724: $88
	sbc  b                                           ; $4725: $98
	adc  b                                           ; $4726: $88
	adc  b                                           ; $4727: $88
	adc  b                                           ; $4728: $88
	adc  b                                           ; $4729: $88
	adc  b                                           ; $472a: $88
	adc  c                                           ; $472b: $89
	adc  b                                           ; $472c: $88
	add  a                                           ; $472d: $87
	adc  b                                           ; $472e: $88
	sbc  c                                           ; $472f: $99
	adc  b                                           ; $4730: $88
	adc  b                                           ; $4731: $88
	adc  b                                           ; $4732: $88
	adc  b                                           ; $4733: $88
	adc  b                                           ; $4734: $88
	adc  b                                           ; $4735: $88
	adc  b                                           ; $4736: $88
	adc  b                                           ; $4737: $88
	adc  c                                           ; $4738: $89
	sbc  b                                           ; $4739: $98
	adc  b                                           ; $473a: $88
	adc  b                                           ; $473b: $88
	adc  b                                           ; $473c: $88
	adc  b                                           ; $473d: $88
	adc  b                                           ; $473e: $88
	adc  b                                           ; $473f: $88
	adc  b                                           ; $4740: $88
	add  a                                           ; $4741: $87
	adc  b                                           ; $4742: $88
	adc  c                                           ; $4743: $89
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
	adc  c                                           ; $4751: $89
	sbc  c                                           ; $4752: $99
	adc  b                                           ; $4753: $88
	add  a                                           ; $4754: $87
	adc  b                                           ; $4755: $88
	adc  c                                           ; $4756: $89
	adc  b                                           ; $4757: $88
	adc  b                                           ; $4758: $88
	adc  b                                           ; $4759: $88
	adc  b                                           ; $475a: $88
	adc  b                                           ; $475b: $88
	adc  b                                           ; $475c: $88
	sbc  c                                           ; $475d: $99
	sbc  b                                           ; $475e: $98
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
	sbc  b                                           ; $476f: $98
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

Call_0cf_4796:
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
	adc  c                                           ; $4c6e: $89
	adc  b                                           ; $4c6f: $88
	ld   a, b                                        ; $4c70: $78
	adc  b                                           ; $4c71: $88
	adc  b                                           ; $4c72: $88
	adc  b                                           ; $4c73: $88
	adc  b                                           ; $4c74: $88
	adc  c                                           ; $4c75: $89
	adc  b                                           ; $4c76: $88
	adc  b                                           ; $4c77: $88
	adc  b                                           ; $4c78: $88
	sbc  b                                           ; $4c79: $98
	adc  b                                           ; $4c7a: $88
	adc  b                                           ; $4c7b: $88
	adc  b                                           ; $4c7c: $88
	adc  b                                           ; $4c7d: $88
	adc  b                                           ; $4c7e: $88
	adc  b                                           ; $4c7f: $88
	adc  b                                           ; $4c80: $88
	adc  b                                           ; $4c81: $88
	adc  b                                           ; $4c82: $88
	add  a                                           ; $4c83: $87
	adc  c                                           ; $4c84: $89
	adc  b                                           ; $4c85: $88
	adc  b                                           ; $4c86: $88
	adc  b                                           ; $4c87: $88
	adc  b                                           ; $4c88: $88
	adc  c                                           ; $4c89: $89
	adc  b                                           ; $4c8a: $88
	ld   a, b                                        ; $4c8b: $78
	adc  b                                           ; $4c8c: $88
	adc  b                                           ; $4c8d: $88
	sbc  b                                           ; $4c8e: $98
	ld   a, b                                        ; $4c8f: $78
	adc  c                                           ; $4c90: $89
	add  a                                           ; $4c91: $87
	adc  b                                           ; $4c92: $88
	adc  b                                           ; $4c93: $88
	adc  c                                           ; $4c94: $89
	add  a                                           ; $4c95: $87
	ld   a, c                                        ; $4c96: $79
	sbc  b                                           ; $4c97: $98
	ld   [hl], a                                     ; $4c98: $77
	adc  b                                           ; $4c99: $88
	sbc  c                                           ; $4c9a: $99
	adc  b                                           ; $4c9b: $88
	ld   a, b                                        ; $4c9c: $78
	adc  c                                           ; $4c9d: $89
	add  a                                           ; $4c9e: $87
	ld   [hl], a                                     ; $4c9f: $77
	adc  b                                           ; $4ca0: $88
	sbc  c                                           ; $4ca1: $99
	add  a                                           ; $4ca2: $87
	ld   a, b                                        ; $4ca3: $78
	adc  c                                           ; $4ca4: $89
	adc  b                                           ; $4ca5: $88
	ld   [hl], a                                     ; $4ca6: $77
	adc  c                                           ; $4ca7: $89
	sbc  b                                           ; $4ca8: $98
	ld   [hl], a                                     ; $4ca9: $77
	ld   a, b                                        ; $4caa: $78
	xor  c                                           ; $4cab: $a9
	add  a                                           ; $4cac: $87
	ld   h, a                                        ; $4cad: $67
	adc  b                                           ; $4cae: $88
	adc  c                                           ; $4caf: $89
	ld   [hl], a                                     ; $4cb0: $77
	sbc  c                                           ; $4cb1: $99
	add  a                                           ; $4cb2: $87
	ld   l, b                                        ; $4cb3: $68
	adc  b                                           ; $4cb4: $88
	sbc  b                                           ; $4cb5: $98
	ld   [hl], a                                     ; $4cb6: $77
	ld   a, b                                        ; $4cb7: $78
	sbc  c                                           ; $4cb8: $99
	add  a                                           ; $4cb9: $87
	adc  b                                           ; $4cba: $88
	xor  d                                           ; $4cbb: $aa
	sub  a                                           ; $4cbc: $97
	ld   h, a                                        ; $4cbd: $67
	ld   a, d                                        ; $4cbe: $7a
	sbc  d                                           ; $4cbf: $9a
	ld   [hl], l                                     ; $4cc0: $75
	adc  c                                           ; $4cc1: $89
	sbc  c                                           ; $4cc2: $99
	add  a                                           ; $4cc3: $87
	ld   a, b                                        ; $4cc4: $78
	sbc  d                                           ; $4cc5: $9a
	and  a                                           ; $4cc6: $a7
	ld   h, a                                        ; $4cc7: $67
	sbc  c                                           ; $4cc8: $99
	sbc  b                                           ; $4cc9: $98
	adc  b                                           ; $4cca: $88
	ld   [hl], a                                     ; $4ccb: $77
	adc  c                                           ; $4ccc: $89
	xor  c                                           ; $4ccd: $a9
	ld   l, b                                        ; $4cce: $68
	sub  a                                           ; $4ccf: $97
	ld   [hl], a                                     ; $4cd0: $77
	xor  d                                           ; $4cd1: $aa
	sub  [hl]                                        ; $4cd2: $96
	ld   a, c                                        ; $4cd3: $79
	adc  b                                           ; $4cd4: $88
	adc  e                                           ; $4cd5: $8b
	sub  [hl]                                        ; $4cd6: $96
	ld   l, b                                        ; $4cd7: $68
	xor  c                                           ; $4cd8: $a9
	adc  b                                           ; $4cd9: $88
	add  [hl]                                        ; $4cda: $86
	ld   a, b                                        ; $4cdb: $78
	cp   d                                           ; $4cdc: $ba
	halt                                             ; $4cdd: $76
	ld   l, c                                        ; $4cde: $69
	sbc  d                                           ; $4cdf: $9a
	add  a                                           ; $4ce0: $87
	add  a                                           ; $4ce1: $87
	adc  c                                           ; $4ce2: $89
	xor  b                                           ; $4ce3: $a8
	ld   h, a                                        ; $4ce4: $67
	ld   a, b                                        ; $4ce5: $78
	xor  d                                           ; $4ce6: $aa
	sub  [hl]                                        ; $4ce7: $96
	ld   d, a                                        ; $4ce8: $57
	xor  h                                           ; $4ce9: $ac
	and  [hl]                                        ; $4cea: $a6
	ld   h, a                                        ; $4ceb: $67
	adc  d                                           ; $4cec: $8a
	xor  b                                           ; $4ced: $a8
	ld   [hl], a                                     ; $4cee: $77
	ld   a, c                                        ; $4cef: $79
	xor  d                                           ; $4cf0: $aa
	ld   [hl], a                                     ; $4cf1: $77
	add  a                                           ; $4cf2: $87
	sbc  c                                           ; $4cf3: $99
	sbc  b                                           ; $4cf4: $98
	ld   h, a                                        ; $4cf5: $67
	adc  d                                           ; $4cf6: $8a
	sbc  c                                           ; $4cf7: $99
	halt                                             ; $4cf8: $76
	xor  b                                           ; $4cf9: $a8
	sbc  e                                           ; $4cfa: $9b
	ld   a, b                                        ; $4cfb: $78
	ld   [hl], l                                     ; $4cfc: $75
	sbc  d                                           ; $4cfd: $9a
	halt                                             ; $4cfe: $76
	ld   h, a                                        ; $4cff: $67
	xor  c                                           ; $4d00: $a9
	ld   a, b                                        ; $4d01: $78
	ld   [hl], a                                     ; $4d02: $77
	adc  b                                           ; $4d03: $88
	add  a                                           ; $4d04: $87
	ld   h, [hl]                                     ; $4d05: $66
	xor  c                                           ; $4d06: $a9
	ld   a, b                                        ; $4d07: $78
	adc  c                                           ; $4d08: $89
	adc  b                                           ; $4d09: $88
	xor  c                                           ; $4d0a: $a9
	xor  b                                           ; $4d0b: $a8
	ld   [hl], a                                     ; $4d0c: $77
	sbc  b                                           ; $4d0d: $98
	sbc  d                                           ; $4d0e: $9a
	add  a                                           ; $4d0f: $87
	adc  c                                           ; $4d10: $89
	cp   e                                           ; $4d11: $bb
	ld   a, b                                        ; $4d12: $78
	ld   [hl], a                                     ; $4d13: $77
	xor  d                                           ; $4d14: $aa
	ld   [hl], a                                     ; $4d15: $77
	ld   h, h                                        ; $4d16: $64
	ld   d, [hl]                                     ; $4d17: $56
	ld   [hl], a                                     ; $4d18: $77
	xor  c                                           ; $4d19: $a9
	ld   [hl], h                                     ; $4d1a: $74
	inc  [hl]                                        ; $4d1b: $34
	ld   l, c                                        ; $4d1c: $69
	ld   [hl], a                                     ; $4d1d: $77
	sbc  c                                           ; $4d1e: $99
	ld   b, h                                        ; $4d1f: $44
	adc  b                                           ; $4d20: $88
	call $b4ab                                       ; $4d21: $cd $ab $b4
	ld   a, d                                        ; $4d24: $7a
	xor  l                                           ; $4d25: $ad
	cp   c                                           ; $4d26: $b9
	xor  e                                           ; $4d27: $ab
	adc  d                                           ; $4d28: $8a
	cp   d                                           ; $4d29: $ba
	add  a                                           ; $4d2a: $87
	xor  c                                           ; $4d2b: $a9
	cp   b                                           ; $4d2c: $b8
	ld   [hl], a                                     ; $4d2d: $77
	ld   d, h                                        ; $4d2e: $54
	ld   h, a                                        ; $4d2f: $67
	halt                                             ; $4d30: $76
	ld   b, e                                        ; $4d31: $43
	ld   e, c                                        ; $4d32: $59
	ld   h, h                                        ; $4d33: $64
	ld   de, $9f34                                   ; $4d34: $11 $34 $9f
	ei                                               ; $4d37: $fb
	ld   b, c                                        ; $4d38: $41
	ld   a, [hl]                                     ; $4d39: $7e
	rst  JumpTable                                         ; $4d3a: $df
	cp   e                                           ; $4d3b: $bb
	add  [hl]                                        ; $4d3c: $86
	ld   a, e                                        ; $4d3d: $7b
	db   $fd                                         ; $4d3e: $fd
	cp   d                                           ; $4d3f: $ba
	call $67a7                                       ; $4d40: $cd $a7 $67
	adc  e                                           ; $4d43: $8b
	sbc  b                                           ; $4d44: $98
	ld   h, l                                        ; $4d45: $65
	inc  [hl]                                        ; $4d46: $34
	ld   a, b                                        ; $4d47: $78
	ld   h, e                                        ; $4d48: $63
	ld   hl, $4a11                                   ; $4d49: $21 $11 $4a
	db   $fd                                         ; $4d4c: $fd
	ld   b, d                                        ; $4d4d: $42
	ld   d, $ff                                      ; $4d4e: $16 $ff
	ei                                               ; $4d50: $fb
	add  e                                           ; $4d51: $83
	ld   l, c                                        ; $4d52: $69
	rst  $28                                         ; $4d53: $ef
	jp   c, $ccad                                    ; $4d54: $da $ad $cc

	cp   e                                           ; $4d57: $bb
	xor  b                                           ; $4d58: $a8
	xor  c                                           ; $4d59: $a9
	halt                                             ; $4d5a: $76
	ld   b, h                                        ; $4d5b: $44
	adc  d                                           ; $4d5c: $8a
	sub  a                                           ; $4d5d: $97
	ld   b, c                                        ; $4d5e: $41
	ld   de, $3125                                   ; $4d5f: $11 $25 $31
	ld   de, $facf                                   ; $4d62: $11 $cf $fa
	dec  h                                           ; $4d65: $25
	ld   l, e                                        ; $4d66: $6b
	rst  $28                                         ; $4d67: $ef
	ld   a, [$ab75]                                  ; $4d68: $fa $75 $ab
	rst  JumpTable                                         ; $4d6b: $df
	rst  JumpTable                                         ; $4d6c: $df
	db   $dd                                         ; $4d6d: $dd
	add  [hl]                                        ; $4d6e: $86
	ld   l, b                                        ; $4d6f: $68
	or   a                                           ; $4d70: $b7
	ld   h, l                                        ; $4d71: $65
	ld   d, l                                        ; $4d72: $55
	sub  [hl]                                        ; $4d73: $96
	ld   [hl], a                                     ; $4d74: $77
	ld   de, $1511                                   ; $4d75: $11 $11 $15
	inc  de                                          ; $4d78: $13
	rst  $38                                         ; $4d79: $ff
	sub  h                                           ; $4d7a: $94
	rla                                              ; $4d7b: $17
	rst  JumpTable                                         ; $4d7c: $df
	cp   $95                                         ; $4d7d: $fe $95
	ld   [hl], a                                     ; $4d7f: $77
	rst  JumpTable                                         ; $4d80: $df
	rst  $38                                         ; $4d81: $ff
	ret                                              ; $4d82: $c9


	xor  e                                           ; $4d83: $ab
	call z, Call_0cf_7697                            ; $4d84: $cc $97 $76
	ld   b, l                                        ; $4d87: $45
	ld   d, [hl]                                     ; $4d88: $56
	add  a                                           ; $4d89: $87
	ld   h, h                                        ; $4d8a: $64
	ld   de, $1111                                   ; $4d8b: $11 $11 $11
	cp   a                                           ; $4d8e: $bf
	rst  $30                                         ; $4d8f: $f7
	ld   de, $ef2a                                   ; $4d90: $11 $2a $ef
	rst  $38                                         ; $4d93: $ff
	sub  h                                           ; $4d94: $94
	ld   [hl], a                                     ; $4d95: $77
	xor  h                                           ; $4d96: $ac
	rst  $38                                         ; $4d97: $ff
	rst  $38                                         ; $4d98: $ff
	xor  c                                           ; $4d99: $a9
	ld   h, d                                        ; $4d9a: $62
	ld   c, c                                        ; $4d9b: $49
	reti                                             ; $4d9c: $d9


	ld   b, c                                        ; $4d9d: $41
	inc  d                                           ; $4d9e: $14
	ld   l, b                                        ; $4d9f: $68
	sub  c                                           ; $4da0: $91
	ld   de, $1f11                                   ; $4da1: $11 $11 $1f
	rst  $38                                         ; $4da4: $ff
	and  h                                           ; $4da5: $a4
	ld   de, $ff4d                                   ; $4da6: $11 $4d $ff
	db   $fc                                         ; $4da9: $fc
	ld   [hl], e                                     ; $4daa: $73
	ld   d, $ff                                      ; $4dab: $16 $ff
	rst  $38                                         ; $4dad: $ff
	ld   sp, hl                                      ; $4dae: $f9
	ld   de, wTitleScreenCounterForResettingData                                   ; $4daf: $11 $17 $cc
	and  a                                           ; $4db2: $a7
	ld   sp, $4712                                   ; $4db3: $31 $12 $47
	ld   bc, $1f11                                   ; $4db6: $01 $11 $1f
	rst  $38                                         ; $4db9: $ff
	pop  hl                                          ; $4dba: $e1
	ld   de, $ff1e                                   ; $4dbb: $11 $1e $ff
	rst  $38                                         ; $4dbe: $ff
	and  d                                           ; $4dbf: $a2
	inc  de                                          ; $4dc0: $13
	cp   a                                           ; $4dc1: $bf
	rst  $38                                         ; $4dc2: $ff
	ei                                               ; $4dc3: $fb
	ld   de, $cf12                                   ; $4dc4: $11 $12 $cf
	ld   a, [$1111]                                  ; $4dc7: $fa $11 $11
	inc  [hl]                                        ; $4dca: $34
	ld   de, rAUD1LEN                                   ; $4dcb: $11 $11 $ff
	ld   hl, sp+$11                                  ; $4dce: $f8 $11
	inc  de                                          ; $4dd0: $13
	sbc  a                                           ; $4dd1: $9f
	rst  $38                                         ; $4dd2: $ff
	db   $ed                                         ; $4dd3: $ed
	ld   b, d                                        ; $4dd4: $42
	ld   b, [hl]                                     ; $4dd5: $46
	rst  $38                                         ; $4dd6: $ff
	rst  $38                                         ; $4dd7: $ff
	di                                               ; $4dd8: $f3
	ld   de, $df16                                   ; $4dd9: $11 $16 $df
	rst  $30                                         ; $4ddc: $f7
	ld   de, $1111                                   ; $4ddd: $11 $11 $11
	ld   de, $ff1f                                   ; $4de0: $11 $1f $ff
	add  c                                           ; $4de3: $81
	ld   de, rAUD1HIGH                                   ; $4de4: $11 $14 $ff
	rst  $38                                         ; $4de7: $ff
	ret  z                                           ; $4de8: $c8

	ld   h, l                                        ; $4de9: $65
	ld   e, h                                        ; $4dea: $5c
	rst  $38                                         ; $4deb: $ff
	rst  $38                                         ; $4dec: $ff
	ld   [hl], c                                     ; $4ded: $71
	ld   de, $ff18                                   ; $4dee: $11 $18 $ff
	call nz, $1111                                   ; $4df1: $c4 $11 $11
	ld   de, rAUD1LEN                                   ; $4df4: $11 $11 $ff
	or   $61                                         ; $4df7: $f6 $61
	ld   de, $ff1c                                   ; $4df9: $11 $1c $ff
	cp   $a7                                         ; $4dfc: $fe $a7
	add  d                                           ; $4dfe: $82
	ld   a, a                                        ; $4dff: $7f
	rst  $38                                         ; $4e00: $ff
	ei                                               ; $4e01: $fb
	ld   d, e                                        ; $4e02: $53
	ld   de, $ff29                                   ; $4e03: $11 $29 $ff
	and  h                                           ; $4e06: $a4
	ld   de, $1111                                   ; $4e07: $11 $11 $11
	add  hl, de                                      ; $4e0a: $19
	rst  $38                                         ; $4e0b: $ff
	adc  a                                           ; $4e0c: $8f
	ld   [de], a                                     ; $4e0d: $12
	ld   de, $ff1f                                   ; $4e0e: $11 $1f $ff
	rst  $38                                         ; $4e11: $ff
	xor  $21                                         ; $4e12: $ee $21
	rst  $28                                         ; $4e14: $ef
	rst  $38                                         ; $4e15: $ff
	db   $fd                                         ; $4e16: $fd
	and  c                                           ; $4e17: $a1
	ld   de, $d919                                   ; $4e18: $11 $19 $d9
	add  h                                           ; $4e1b: $84
	ld   de, $1111                                   ; $4e1c: $11 $11 $11
	rst  $38                                         ; $4e1f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e20: $cf
	di                                               ; $4e21: $f3
	pop  bc                                          ; $4e22: $c1
	add  hl, de                                      ; $4e23: $19
	db   $fd                                         ; $4e24: $fd
	rst  $38                                         ; $4e25: $ff
	rst  $38                                         ; $4e26: $ff
	or   h                                           ; $4e27: $b4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e28: $cf
	rst  $38                                         ; $4e29: $ff
	db   $dd                                         ; $4e2a: $dd
	ei                                               ; $4e2b: $fb
	ld   sp, $8513                                   ; $4e2c: $31 $13 $85
	ld   l, b                                        ; $4e2f: $68
	ld   d, c                                        ; $4e30: $51
	ld   de, $1f11                                   ; $4e31: $11 $11 $1f
	rst  $30                                         ; $4e34: $f7
	rst  $38                                         ; $4e35: $ff
	sbc  a                                           ; $4e36: $9f
	ld   de, $6fdc                                   ; $4e37: $11 $dc $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e3a: $cf
	ld   hl, sp+$7f                                  ; $4e3b: $f8 $7f
	rst  $38                                         ; $4e3d: $ff
	ld   hl, sp-$21                                  ; $4e3e: $f8 $df
	add  e                                           ; $4e40: $83
	ld   [de], a                                     ; $4e41: $12
	ld   [hl], a                                     ; $4e42: $77
	scf                                              ; $4e43: $37
	add  a                                           ; $4e44: $87
	ld   de, $1111                                   ; $4e45: $11 $11 $11
	rst  $28                                         ; $4e48: $ef
	rst  $38                                         ; $4e49: $ff
	db   $fd                                         ; $4e4a: $fd
	db   $f4                                         ; $4e4b: $f4
	ld   [de], a                                     ; $4e4c: $12
	or   c                                           ; $4e4d: $b1
	add  a                                           ; $4e4e: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e4f: $cf
	cp   c                                           ; $4e50: $b9
	rst  $38                                         ; $4e51: $ff
	rst  $38                                         ; $4e52: $ff
	cp   h                                           ; $4e53: $bc
	ld   sp, hl                                      ; $4e54: $f9
	ld   d, d                                        ; $4e55: $52
	ld   h, $61                                      ; $4e56: $26 $61
	ld   d, a                                        ; $4e58: $57
	ld   h, l                                        ; $4e59: $65
	ld   de, $1111                                   ; $4e5a: $11 $11 $11
	rst  $38                                         ; $4e5d: $ff
	xor  a                                           ; $4e5e: $af
	rst  JumpTable                                         ; $4e5f: $df
	pop  af                                          ; $4e60: $f1
	dec  e                                           ; $4e61: $1d
	ld   [hl], $51                                   ; $4e62: $36 $51
	ei                                               ; $4e64: $fb
	ld   l, a                                        ; $4e65: $6f
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e68: $cf
	xor  b                                           ; $4e69: $a8
	ld   sp, $1227                                   ; $4e6a: $31 $27 $12
	ld   sp, $1141                                   ; $4e6d: $31 $41 $11
	ld   de, $5faf                                   ; $4e70: $11 $af $5f
	rst  $38                                         ; $4e73: $ff
	cp   $1b                                         ; $4e74: $fe $1b
	call nc, Call_0cf_4fb1                           ; $4e76: $d4 $b1 $4f
	ld   b, e                                        ; $4e79: $43
	cp   a                                           ; $4e7a: $bf
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	db   $fc                                         ; $4e7d: $fc
	and  e                                           ; $4e7e: $a3
	dec  d                                           ; $4e7f: $15
	ld   d, c                                        ; $4e80: $51
	ld   de, $1102                                   ; $4e81: $11 $02 $11
	ld   de, $f51a                                   ; $4e84: $11 $1a $f5
	rst  $38                                         ; $4e87: $ff
	rst  $28                                         ; $4e88: $ef
	db   $f4                                         ; $4e89: $f4
	db   $ed                                         ; $4e8a: $ed
	adc  h                                           ; $4e8b: $8c
	ld   h, $f4                                      ; $4e8c: $26 $f4
	jr   c, @-$4f                                    ; $4e8e: $38 $af

	rst  $38                                         ; $4e90: $ff
	rst  $38                                         ; $4e91: $ff
	rst  $38                                         ; $4e92: $ff
	add  h                                           ; $4e93: $84
	ld   h, l                                        ; $4e94: $65
	ld   de, $1111                                   ; $4e95: $11 $11 $11
	ld   de, $fa11                                   ; $4e98: $11 $11 $fa
	ld   l, a                                        ; $4e9b: $6f
	xor  a                                           ; $4e9c: $af
	ld   a, [$ddbf]                                  ; $4e9d: $fa $bf $dd
	call nc, $57cc                                   ; $4ea0: $d4 $cc $57
	ld   a, c                                        ; $4ea3: $79
	rst  $28                                         ; $4ea4: $ef
	rst  JumpTable                                         ; $4ea5: $df
	xor  $e9                                         ; $4ea6: $ee $e9
	ld   h, a                                        ; $4ea8: $67
	ld   h, l                                        ; $4ea9: $65
	ld   b, c                                        ; $4eaa: $41
	ld   [hl+], a                                    ; $4eab: $22
	ld   de, $7a11                                   ; $4eac: $11 $11 $7a
	dec  d                                           ; $4eaf: $15
	ld   b, [hl]                                     ; $4eb0: $46
	db   $db                                         ; $4eb1: $db
	ld   a, e                                        ; $4eb2: $7b
	db   $dd                                         ; $4eb3: $dd
	db   $fc                                         ; $4eb4: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4eb5: $cf
	jp   c, $cbb9                                    ; $4eb6: $da $b9 $cb

	adc  b                                           ; $4eb9: $88
	sbc  c                                           ; $4eba: $99
	sbc  b                                           ; $4ebb: $98
	adc  d                                           ; $4ebc: $8a
	xor  c                                           ; $4ebd: $a9
	ld   a, b                                        ; $4ebe: $78
	sbc  c                                           ; $4ebf: $99
	add  a                                           ; $4ec0: $87
	ld   a, b                                        ; $4ec1: $78
	ld   a, b                                        ; $4ec2: $78
	ld   h, h                                        ; $4ec3: $64
	ld   b, h                                        ; $4ec4: $44
	ld   [hl+], a                                    ; $4ec5: $22
	ld   [hl+], a                                    ; $4ec6: $22
	inc  hl                                          ; $4ec7: $23
	ld   b, l                                        ; $4ec8: $45
	ld   a, b                                        ; $4ec9: $78
	xor  d                                           ; $4eca: $aa
	xor  h                                           ; $4ecb: $ac
	call c, $dece                                    ; $4ecc: $dc $ce $de
	call z, $decc                                    ; $4ecf: $cc $cc $de
	call z, $a8ba                                    ; $4ed2: $cc $ba $a8
	ld   [hl], a                                     ; $4ed5: $77
	halt                                             ; $4ed6: $76
	ld   d, h                                        ; $4ed7: $54
	inc  sp                                          ; $4ed8: $33
	ld   hl, $1111                                   ; $4ed9: $21 $11 $11
	ld   de, $8825                                   ; $4edc: $11 $25 $88
	adc  d                                           ; $4edf: $8a
	cp   l                                           ; $4ee0: $bd
	db   $dd                                         ; $4ee1: $dd
	rst  JumpTable                                         ; $4ee2: $df
	rst  $38                                         ; $4ee3: $ff
	db   $ec                                         ; $4ee4: $ec
	sbc  $ec                                         ; $4ee5: $de $ec
	cp   d                                           ; $4ee7: $ba
	cp   h                                           ; $4ee8: $bc
	sub  a                                           ; $4ee9: $97
	ld   [hl], a                                     ; $4eea: $77
	ld   h, l                                        ; $4eeb: $65
	ld   [hl-], a                                    ; $4eec: $32
	inc  sp                                          ; $4eed: $33
	ld   de, $1111                                   ; $4eee: $11 $11 $11
	ld   bc, $8846                                   ; $4ef1: $01 $46 $88
	sbc  e                                           ; $4ef4: $9b
	cp   h                                           ; $4ef5: $bc
	call z, $ffdf                                    ; $4ef6: $cc $df $ff
	xor  $fe                                         ; $4ef9: $ee $fe
	call c, $cbcc                                    ; $4efb: $dc $cc $cb
	add  a                                           ; $4efe: $87
	ld   h, l                                        ; $4eff: $65
	ld   d, d                                        ; $4f00: $52
	ld   [de], a                                     ; $4f01: $12
	ld   hl, $1111                                   ; $4f02: $21 $11 $11
	ld   de, $7925                                   ; $4f05: $11 $25 $79
	adc  d                                           ; $4f08: $8a
	cp   l                                           ; $4f09: $bd
	db   $dd                                         ; $4f0a: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f0b: $cf
	rst  $38                                         ; $4f0c: $ff
	xor  $de                                         ; $4f0d: $ee $de
	db   $ed                                         ; $4f0f: $ed
	call z, $a7cd                                    ; $4f10: $cc $cd $a7
	ld   d, h                                        ; $4f13: $54
	ld   [hl-], a                                    ; $4f14: $32
	ld   hl, $1111                                   ; $4f15: $21 $11 $11
	ld   de, $4611                                   ; $4f18: $11 $11 $46
	adc  b                                           ; $4f1b: $88
	cp   l                                           ; $4f1c: $bd
	sbc  $ee                                         ; $4f1d: $de $ee
	rst  $38                                         ; $4f1f: $ff
	rst  $38                                         ; $4f20: $ff
	cp   $fe                                         ; $4f21: $fe $fe
	call z, $bacb                                    ; $4f23: $cc $cb $ba
	ld   [hl], l                                     ; $4f26: $75
	inc  sp                                          ; $4f27: $33
	ld   hl, $1111                                   ; $4f28: $21 $11 $11
	ld   de, $5712                                   ; $4f2b: $11 $12 $57
	ld   [hl], a                                     ; $4f2e: $77
	xor  l                                           ; $4f2f: $ad
	rst  $28                                         ; $4f30: $ef
	sbc  $ff                                         ; $4f31: $de $ff
	xor  $df                                         ; $4f33: $ee $df
	rst  $38                                         ; $4f35: $ff
	call z, $a6bc                                    ; $4f36: $cc $bc $a6
	inc  sp                                          ; $4f39: $33
	ld   b, d                                        ; $4f3a: $42
	ld   de, $1111                                   ; $4f3b: $11 $11 $11
	ld   de, $9847                                   ; $4f3e: $11 $47 $98
	sbc  e                                           ; $4f41: $9b
	sbc  $ed                                         ; $4f42: $de $ed
	rst  $38                                         ; $4f44: $ff
	cp   $dd                                         ; $4f45: $fe $dd
	xor  $ca                                         ; $4f47: $ee $ca
	xor  d                                           ; $4f49: $aa
	and  [hl]                                        ; $4f4a: $a6
	ld   b, h                                        ; $4f4b: $44
	ld   sp, $1111                                   ; $4f4c: $31 $11 $11
	ld   bc, $6913                                   ; $4f4f: $01 $13 $69
	adc  d                                           ; $4f52: $8a
	call $eefe                                       ; $4f53: $cd $fe $ee
	cp   $ed                                         ; $4f56: $fe $ed
	cp   h                                           ; $4f58: $bc
	call c, $76a8                                    ; $4f59: $dc $a8 $76
	ld   b, h                                        ; $4f5c: $44
	ld   b, c                                        ; $4f5d: $41
	ld   de, $1111                                   ; $4f5e: $11 $11 $11
	inc  d                                           ; $4f61: $14
	ld   a, d                                        ; $4f62: $7a
	sbc  e                                           ; $4f63: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f64: $cf
	rst  $38                                         ; $4f65: $ff
	rst  JumpTable                                         ; $4f66: $df
	rst  $38                                         ; $4f67: $ff
	xor  $cc                                         ; $4f68: $ee $cc
	jp   z, Jump_0cf_5486                            ; $4f6a: $ca $86 $54

	ld   b, e                                        ; $4f6d: $43
	ld   hl, $1111                                   ; $4f6e: $21 $11 $11
	ld   de, $9a25                                   ; $4f71: $11 $25 $9a
	xor  h                                           ; $4f74: $ac
	rst  $28                                         ; $4f75: $ef
	rst  $38                                         ; $4f76: $ff
	rst  $28                                         ; $4f77: $ef
	rst  $38                                         ; $4f78: $ff
	db   $fd                                         ; $4f79: $fd
	call Call_0cf_64c9                               ; $4f7a: $cd $c9 $64
	inc  [hl]                                        ; $4f7d: $34
	ld   sp, $1111                                   ; $4f7e: $31 $11 $11
	ld   de, $5a12                                   ; $4f81: $11 $12 $5a
	xor  c                                           ; $4f84: $a9
	rst  JumpTable                                         ; $4f85: $df
	rst  $38                                         ; $4f86: $ff
	rst  $38                                         ; $4f87: $ff
	rst  $38                                         ; $4f88: $ff
	rst  $38                                         ; $4f89: $ff
	db   $dd                                         ; $4f8a: $dd
	db   $eb                                         ; $4f8b: $eb
	add  l                                           ; $4f8c: $85
	inc  [hl]                                        ; $4f8d: $34
	ld   d, c                                        ; $4f8e: $51
	ld   de, $1111                                   ; $4f8f: $11 $11 $11
	ld   de, $a948                                   ; $4f92: $11 $48 $a9
	adc  $ff                                         ; $4f95: $ce $ff
	rst  $38                                         ; $4f97: $ff
	rst  $38                                         ; $4f98: $ff
	rst  $38                                         ; $4f99: $ff
	cp   e                                           ; $4f9a: $bb
	db   $db                                         ; $4f9b: $db
	add  e                                           ; $4f9c: $83
	dec  [hl]                                        ; $4f9d: $35
	ld   b, c                                        ; $4f9e: $41
	ld   de, $1111                                   ; $4f9f: $11 $11 $11
	inc  de                                          ; $4fa2: $13
	ld   l, d                                        ; $4fa3: $6a
	sbc  e                                           ; $4fa4: $9b
	rst  $28                                         ; $4fa5: $ef
	rst  $38                                         ; $4fa6: $ff
	rst  $38                                         ; $4fa7: $ff
	rst  $38                                         ; $4fa8: $ff
	db   $fd                                         ; $4fa9: $fd
	cp   e                                           ; $4faa: $bb
	cp   c                                           ; $4fab: $b9
	ld   b, e                                        ; $4fac: $43
	ld   b, e                                        ; $4fad: $43
	ld   hl, $1111                                   ; $4fae: $21 $11 $11

Call_0cf_4fb1:
	ld   de, $aa37                                   ; $4fb1: $11 $37 $aa
	adc  $ff                                         ; $4fb4: $ce $ff
	rst  $38                                         ; $4fb6: $ff
	rst  $38                                         ; $4fb7: $ff
	rst  $38                                         ; $4fb8: $ff
	call c, $54b8                                    ; $4fb9: $dc $b8 $54
	ld   b, d                                        ; $4fbc: $42
	ld   de, $1111                                   ; $4fbd: $11 $11 $11
	ld   de, $a937                                   ; $4fc0: $11 $37 $a9
	rst  JumpTable                                         ; $4fc3: $df
	rst  $38                                         ; $4fc4: $ff
	rst  $38                                         ; $4fc5: $ff
	rst  $38                                         ; $4fc6: $ff
	db   $fd                                         ; $4fc7: $fd
	and  [hl]                                        ; $4fc8: $a6
	ld   sp, $1111                                   ; $4fc9: $31 $11 $11
	ld   hl, $973d                                   ; $4fcc: $21 $3d $97
	sbc  e                                           ; $4fcf: $9b
	rst  JumpTable                                         ; $4fd0: $df
	cp   d                                           ; $4fd1: $ba
	rst  $38                                         ; $4fd2: $ff
	rst  $38                                         ; $4fd3: $ff
	rst  JumpTable                                         ; $4fd4: $df
	ld   a, [$1141]                                  ; $4fd5: $fa $41 $11
	ld   de, $7aa3                                   ; $4fd8: $11 $a3 $7a
	cp   a                                           ; $4fdb: $bf
	cp   $de                                         ; $4fdc: $fe $de
	call c, $cf72                                    ; $4fde: $dc $72 $cf
	rst  $38                                         ; $4fe1: $ff
	rst  $38                                         ; $4fe2: $ff
	or   $11                                         ; $4fe3: $f6 $11
	ld   de, $991f                                   ; $4fe5: $11 $1f $99
	cp   $ff                                         ; $4fe8: $fe $ff
	ld   b, a                                        ; $4fea: $47
	adc  d                                           ; $4feb: $8a
	and  c                                           ; $4fec: $a1
	cpl                                              ; $4fed: $2f
	rst  $38                                         ; $4fee: $ff
	db   $fc                                         ; $4fef: $fc
	cp   $11                                         ; $4ff0: $fe $11
	ld   de, rAUD1LEN                                   ; $4ff2: $11 $11 $ff
	rst  $38                                         ; $4ff5: $ff
	rst  $38                                         ; $4ff6: $ff
	pop  bc                                          ; $4ff7: $c1
	ld   b, l                                        ; $4ff8: $45
	sbc  e                                           ; $4ff9: $9b
	add  hl, de                                      ; $4ffa: $19
	rst  $38                                         ; $4ffb: $ff
	cp   $8f                                         ; $4ffc: $fe $8f
	ld   [hl], c                                     ; $4ffe: $71
	ld   de, rAUD1LEN                                   ; $4fff: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5002: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5003: $cf
	pop  af                                          ; $5004: $f1
	rla                                              ; $5005: $17
	xor  a                                           ; $5006: $af
	and  c                                           ; $5007: $a1
	rst  $38                                         ; $5008: $ff
	db   $fc                                         ; $5009: $fc
	scf                                              ; $500a: $37
	pop  af                                          ; $500b: $f1
	ld   de, rAUD1LEN                                   ; $500c: $11 $11 $ff
	cp   $f3                                         ; $500f: $fe $f3
	pop  af                                          ; $5011: $f1
	jr   @+$01                                       ; $5012: $18 $ff

	pop  af                                          ; $5014: $f1
	rst  $38                                         ; $5015: $ff
	add  c                                           ; $5016: $81
	ld   [hl+], a                                    ; $5017: $22
	ld   hl, sp+$11                                  ; $5018: $f8 $11
	ld   de, $1fff                                   ; $501a: $11 $ff $1f
	ld   a, d                                        ; $501d: $7a
	pop  af                                          ; $501e: $f1
	rra                                              ; $501f: $1f
	rst  $38                                         ; $5020: $ff
	pop  bc                                          ; $5021: $c1
	rst  $38                                         ; $5022: $ff
	ld   de, $f23b                                   ; $5023: $11 $3b $f2
	ld   de, rAUD1LEN                                   ; $5026: $11 $11 $ff
	rra                                              ; $5029: $1f
	cpl                                              ; $502a: $2f
	ld   de, $ff1f                                   ; $502b: $11 $1f $ff
	jr   c, @-$02                                    ; $502e: $38 $fc

	ld   de, $e1af                                   ; $5030: $11 $af $e1
	ld   de, $f11f                                   ; $5033: $11 $1f $f1
	and  c                                           ; $5036: $a1
	ld   a, [rAUD1LEN]                                  ; $5037: $fa $11 $ff
	di                                               ; $503a: $f3
	rra                                              ; $503b: $1f
	pop  af                                          ; $503c: $f1
	jr   @+$01                                       ; $503d: $18 $ff

	ld   de, rAUD1LEN                                   ; $503f: $11 $11 $ff
	ld   a, [de]                                     ; $5042: $1a
	rra                                              ; $5043: $1f
	add  c                                           ; $5044: $81
	rra                                              ; $5045: $1f
	rst  $38                                         ; $5046: $ff
	ld   [de], a                                     ; $5047: $12
	db   $fd                                         ; $5048: $fd
	ld   de, $f19f                                   ; $5049: $11 $9f $f1
	ld   de, $f1ff                                   ; $504c: $11 $ff $f1
	sub  c                                           ; $504f: $91
	pop  af                                          ; $5050: $f1
	dec  e                                           ; $5051: $1d
	rst  $38                                         ; $5052: $ff
	add  c                                           ; $5053: $81
	sbc  a                                           ; $5054: $9f
	ld   de, $f54f                                   ; $5055: $11 $4f $f5
	ld   de, $f11f                                   ; $5058: $11 $1f $f1
	ld   de, $13f9                                   ; $505b: $11 $f9 $13
	rst  $38                                         ; $505e: $ff
	pop  af                                          ; $505f: $f1
	rra                                              ; $5060: $1f
	pop  de                                          ; $5061: $d1
	rla                                              ; $5062: $17
	db   $fd                                         ; $5063: $fd
	ld   de, $f11f                                   ; $5064: $11 $1f $f1
	ld   de, $13df                                   ; $5067: $11 $df $13
	rst  $38                                         ; $506a: $ff
	pop  af                                          ; $506b: $f1
	rra                                              ; $506c: $1f
	pop  de                                          ; $506d: $d1
	inc  [hl]                                        ; $506e: $34
	db   $fc                                         ; $506f: $fc
	ld   de, $f16f                                   ; $5070: $11 $6f $f1
	ld   de, $17eb                                   ; $5073: $11 $eb $17
	rst  $38                                         ; $5076: $ff
	pop  af                                          ; $5077: $f1
	rra                                              ; $5078: $1f
	sub  d                                           ; $5079: $92
	inc  h                                           ; $507a: $24
	pop  af                                          ; $507b: $f1
	ld   de, $41ff                                   ; $507c: $11 $ff $41
	ld   de, $1ff1                                   ; $507f: $11 $f1 $1f
	rst  $38                                         ; $5082: $ff
	ld   de, $464f                                   ; $5083: $11 $4f $46
	dec  de                                          ; $5086: $1b
	or   c                                           ; $5087: $b1
	rra                                              ; $5088: $1f
	rst  $38                                         ; $5089: $ff
	ld   de, $611f                                   ; $508a: $11 $1f $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $508d: $cf
	push af                                          ; $508e: $f5
	ld   de, $61ea                                   ; $508f: $11 $ea $61
	ld   e, h                                        ; $5092: $5c
	ld   de, $f1ff                                   ; $5093: $11 $ff $f1
	ld   de, $1cc8                                   ; $5096: $11 $c8 $1c
	rst  $38                                         ; $5099: $ff
	ld   h, c                                        ; $509a: $61
	inc  e                                           ; $509b: $1c
	cp   c                                           ; $509c: $b9
	dec  d                                           ; $509d: $15
	ld   [hl], c                                     ; $509e: $71
	rra                                              ; $509f: $1f
	rst  $38                                         ; $50a0: $ff
	ld   de, $711c                                   ; $50a1: $11 $1c $71
	rst  $38                                         ; $50a4: $ff
	ldh  a, [c]                                      ; $50a5: $f2
	ld   de, $81cb                                   ; $50a6: $11 $cb $81
	ld   h, c                                        ; $50a9: $61
	ld   de, $31ff                                   ; $50aa: $11 $ff $31
	ld   de, $5fe5                                   ; $50ad: $11 $e5 $5f
	rst  $38                                         ; $50b0: $ff
	ld   de, $c42e                                   ; $50b1: $11 $2e $c4
	ld   d, $11                                      ; $50b4: $16 $11
	rst  $38                                         ; $50b6: $ff
	pop  af                                          ; $50b7: $f1
	ld   de, $2ca9                                   ; $50b8: $11 $a9 $2c
	rst  $38                                         ; $50bb: $ff
	ld   hl, $c81c                                   ; $50bc: $21 $1c $c8
	inc  de                                          ; $50bf: $13
	ld   de, $f11f                                   ; $50c0: $11 $1f $f1
	ld   de, $371d                                   ; $50c3: $11 $1d $37
	rst  $38                                         ; $50c6: $ff
	sub  c                                           ; $50c7: $91
	rla                                              ; $50c8: $17
	ld   a, [$1111]                                  ; $50c9: $fa $11 $11
	rra                                              ; $50cc: $1f
	di                                               ; $50cd: $f3
	ld   b, c                                        ; $50ce: $41
	inc  e                                           ; $50cf: $1c
	rla                                              ; $50d0: $17
	rst  $38                                         ; $50d1: $ff
	or   d                                           ; $50d2: $b2
	ld   d, $f9                                      ; $50d3: $16 $f9
	ld   de, $1f11                                   ; $50d5: $11 $11 $1f
	db   $f4                                         ; $50d8: $f4
	ld   h, c                                        ; $50d9: $61
	dec  de                                          ; $50da: $1b
	ld   d, $ff                                      ; $50db: $16 $ff
	sub  e                                           ; $50dd: $93
	dec  d                                           ; $50de: $15
	ld   sp, hl                                      ; $50df: $f9
	ld   de, $7f11                                   ; $50e0: $11 $11 $7f
	or   $51                                         ; $50e3: $f6 $51
	rla                                              ; $50e5: $17
	jr   @+$01                                       ; $50e6: $18 $ff

	ld   h, c                                        ; $50e8: $61
	dec  de                                          ; $50e9: $1b
	push af                                          ; $50ea: $f5
	ld   de, rAUD1LEN                                   ; $50eb: $11 $11 $ff
	cp   $11                                         ; $50ee: $fe $11
	add  c                                           ; $50f0: $81
	rra                                              ; $50f1: $1f
	rst  $38                                         ; $50f2: $ff
	ld   [hl], c                                     ; $50f3: $71
	rra                                              ; $50f4: $1f
	db   $e3                                         ; $50f5: $e3
	ld   de, rAUD1LEN                                   ; $50f6: $11 $11 $ff
	xor  a                                           ; $50f9: $af
	ld   de, $1fc1                                   ; $50fa: $11 $c1 $1f
	rst  $38                                         ; $50fd: $ff
	ld   sp, $912f                                   ; $50fe: $31 $2f $91
	ld   de, $ff19                                   ; $5101: $11 $19 $ff
	rst  $10                                         ; $5104: $d7
	ld   d, $31                                      ; $5105: $16 $31
	xor  a                                           ; $5107: $af
	ld   sp, hl                                      ; $5108: $f9
	ld   de, $51fe                                   ; $5109: $11 $fe $51
	ld   de, $fb1f                                   ; $510c: $11 $1f $fb
	pop  af                                          ; $510f: $f1
	rra                                              ; $5110: $1f
	ld   de, $f3ff                                   ; $5111: $11 $ff $f3
	ld   d, $f5                                      ; $5114: $16 $f5
	ld   de, rAUD1LEN                                   ; $5116: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5119: $cf
	ld   de, $1ff1                                   ; $511a: $11 $f1 $1f
	rst  $38                                         ; $511d: $ff
	pop  bc                                          ; $511e: $c1
	rra                                              ; $511f: $1f
	ld   b, c                                        ; $5120: $41
	ld   de, $ff1a                                   ; $5121: $11 $1a $ff
	ld   a, [$211e]                                  ; $5124: $fa $1e $21
	ld   a, a                                        ; $5127: $7f
	rst  $38                                         ; $5128: $ff
	ld   de, $21f8                                   ; $5129: $11 $f8 $21
	ld   de, $ff1f                                   ; $512c: $11 $1f $ff
	pop  af                                          ; $512f: $f1
	db   $e4                                         ; $5130: $e4
	inc  de                                          ; $5131: $13
	rst  $38                                         ; $5132: $ff
	pop  af                                          ; $5133: $f1
	rra                                              ; $5134: $1f
	and  c                                           ; $5135: $a1
	ld   de, rAUD1LEN                                   ; $5136: $11 $11 $ff
	rst  $38                                         ; $5139: $ff
	rra                                              ; $513a: $1f
	ld   b, c                                        ; $513b: $41
	ccf                                              ; $513c: $3f
	rst  $38                                         ; $513d: $ff
	ld   sp, $11f9                                   ; $513e: $31 $f9 $11
	ld   de, $ff1f                                   ; $5141: $11 $1f $ff
	pop  af                                          ; $5144: $f1
	pop  af                                          ; $5145: $f1
	inc  d                                           ; $5146: $14
	rst  $38                                         ; $5147: $ff
	db   $f4                                         ; $5148: $f4
	rra                                              ; $5149: $1f
	ld   d, c                                        ; $514a: $51
	ld   de, $fb1d                                   ; $514b: $11 $1d $fb
	ld   a, [$111f]                                  ; $514e: $fa $1f $11
	adc  a                                           ; $5151: $8f
	rst  $38                                         ; $5152: $ff
	ld   de, $11f1                                   ; $5153: $11 $f1 $11
	ld   de, $4fff                                   ; $5156: $11 $ff $4f
	ld   de, $1df1                                   ; $5159: $11 $f1 $1d
	rst  $38                                         ; $515c: $ff
	pop  af                                          ; $515d: $f1
	rra                                              ; $515e: $1f
	ld   de, $1f11                                   ; $515f: $11 $11 $1f
	ldh  a, [c]                                      ; $5162: $f2
	pop  af                                          ; $5163: $f1
	rst  $28                                         ; $5164: $ef
	ld   de, $ffff                                   ; $5165: $11 $ff $ff
	dec  de                                          ; $5168: $1b
	pop  bc                                          ; $5169: $c1
	ld   de, $fd11                                   ; $516a: $11 $11 $fd
	rst  $38                                         ; $516d: $ff
	rra                                              ; $516e: $1f
	ld   hl, $ff2f                                   ; $516f: $21 $2f $ff
	ld   d, c                                        ; $5172: $51
	ldh  a, [c]                                      ; $5173: $f2
	ld   hl, rAUD1LEN                                   ; $5174: $21 $11 $ff
	rra                                              ; $5177: $1f
	ld   a, [de]                                     ; $5178: $1a
	pop  af                                          ; $5179: $f1
	rra                                              ; $517a: $1f
	rst  $38                                         ; $517b: $ff
	pop  af                                          ; $517c: $f1
	adc  l                                           ; $517d: $8d
	ld   de, $6f11                                   ; $517e: $11 $11 $6f
	xor  a                                           ; $5181: $af
	pop  af                                          ; $5182: $f1
	pop  af                                          ; $5183: $f1
	inc  de                                          ; $5184: $13
	rst  $38                                         ; $5185: $ff
	push af                                          ; $5186: $f5
	rra                                              ; $5187: $1f
	ld   hl, $1f11                                   ; $5188: $21 $11 $1f
	rst  $30                                         ; $518b: $f7
	pop  af                                          ; $518c: $f1
	db   $fc                                         ; $518d: $fc
	ld   de, $fcff                                   ; $518e: $11 $ff $fc
	rra                                              ; $5191: $1f
	ld   d, c                                        ; $5192: $51
	ld   de, $f41f                                   ; $5193: $11 $1f $f4
	pop  af                                          ; $5196: $f1

Jump_0cf_5197:
	rst  $38                                         ; $5197: $ff
	ld   de, $efef                                   ; $5198: $11 $ef $ef
	dec  de                                          ; $519b: $1b
	sub  c                                           ; $519c: $91
	ld   de, $f51f                                   ; $519d: $11 $1f $f5
	push af                                          ; $51a0: $f5
	rst  $28                                         ; $51a1: $ef
	ld   de, $df8f                                   ; $51a2: $11 $8f $df
	dec  sp                                          ; $51a5: $3b
	or   c                                           ; $51a6: $b1
	ld   de, $f71d                                   ; $51a7: $11 $1d $f7
	ld   sp, hl                                      ; $51aa: $f9
	rst  $38                                         ; $51ab: $ff
	ld   de, $dd6f                                   ; $51ac: $11 $6f $dd
	ld   c, e                                        ; $51af: $4b
	call nc, $1e11                                   ; $51b0: $d4 $11 $1e
	db   $f4                                         ; $51b3: $f4
	ld   sp, hl                                      ; $51b4: $f9
	rst  $38                                         ; $51b5: $ff
	ld   de, $cd5f                                   ; $51b6: $11 $5f $cd
	ld   e, e                                        ; $51b9: $5b
	and  [hl]                                        ; $51ba: $a6
	ld   de, $f61e                                   ; $51bb: $11 $1e $f6
	ld   hl, sp-$01                                  ; $51be: $f8 $ff
	inc  de                                          ; $51c0: $13
	ld   e, a                                        ; $51c1: $5f
	cp   b                                           ; $51c2: $b8
	ld   l, h                                        ; $51c3: $6c
	push bc                                          ; $51c4: $c5
	ld   de, $f71f                                   ; $51c5: $11 $1f $f7
	or   $ff                                         ; $51c8: $f6 $ff
	dec  d                                           ; $51ca: $15
	xor  a                                           ; $51cb: $af
	or   [hl]                                        ; $51cc: $b6
	ld   e, h                                        ; $51cd: $5c
	cp   b                                           ; $51ce: $b8
	ld   de, $db1f                                   ; $51cf: $11 $1f $db
	and  $fc                                         ; $51d2: $e6 $fc
	ld   [hl], $bf                                   ; $51d4: $36 $bf
	or   a                                           ; $51d6: $b7
	ld   a, d                                        ; $51d7: $7a
	sub  l                                           ; $51d8: $95
	ld   de, $9d0f                                   ; $51d9: $11 $0f $9d
	set  6, a                                        ; $51dc: $cb $f7
	ld   [hl], a                                     ; $51de: $77
	sbc  $a7                                         ; $51df: $de $a7
	sbc  e                                           ; $51e1: $9b
	ld   [hl], h                                     ; $51e2: $74
	ld   de, $6c5c                                   ; $51e3: $11 $5c $6c
	adc  [hl]                                        ; $51e6: $8e
	push af                                          ; $51e7: $f5
	ld   l, c                                        ; $51e8: $69
	call c, $bb96                                    ; $51e9: $dc $96 $bb
	ld   [hl], c                                     ; $51ec: $71
	ld   de, $5c8c                                   ; $51ed: $11 $8c $5c
	ld   a, a                                        ; $51f0: $7f
	push af                                          ; $51f1: $f5
	ld   a, d                                        ; $51f2: $7a
	db   $fc                                         ; $51f3: $fc
	halt                                             ; $51f4: $76
	cp   h                                           ; $51f5: $bc
	add  c                                           ; $51f6: $81
	ld   de, $7b8a                                   ; $51f7: $11 $8a $7b
	adc  a                                           ; $51fa: $8f
	push bc                                          ; $51fb: $c5
	ld   a, d                                        ; $51fc: $7a
	call c, $bb98                                    ; $51fd: $dc $98 $bb
	sub  c                                           ; $5200: $91
	ld   de, $7988                                   ; $5201: $11 $88 $79
	sbc  a                                           ; $5204: $9f
	or   [hl]                                        ; $5205: $b6
	ld   a, e                                        ; $5206: $7b
	db   $eb                                         ; $5207: $eb
	ld   a, c                                        ; $5208: $79
	cp   d                                           ; $5209: $ba
	sub  e                                           ; $520a: $93
	ld   de, $6886                                   ; $520b: $11 $86 $68
	adc  [hl]                                        ; $520e: $8e
	push bc                                          ; $520f: $c5
	ld   l, d                                        ; $5210: $6a
	call $ab87                                       ; $5211: $cd $87 $ab
	and  h                                           ; $5214: $a4
	ld   [de], a                                     ; $5215: $12
	ld   a, b                                        ; $5216: $78
	ld   d, [hl]                                     ; $5217: $56
	ld   a, h                                        ; $5218: $7c
	or   a                                           ; $5219: $b7
	ld   l, c                                        ; $521a: $69
	xor  h                                           ; $521b: $ac
	sbc  b                                           ; $521c: $98
	xor  e                                           ; $521d: $ab
	rst  ToBoot                                         ; $521e: $c7
	inc  sp                                          ; $521f: $33
	ld   h, a                                        ; $5220: $67
	ld   h, [hl]                                     ; $5221: $66
	ld   l, c                                        ; $5222: $69
	xor  b                                           ; $5223: $a8
	ld   a, b                                        ; $5224: $78
	sbc  d                                           ; $5225: $9a
	xor  b                                           ; $5226: $a8
	xor  d                                           ; $5227: $aa
	jp   z, Jump_0cf_5665                            ; $5228: $ca $65 $56

	ld   h, a                                        ; $522b: $67
	ld   d, [hl]                                     ; $522c: $56
	ld   [hl], a                                     ; $522d: $77
	add  a                                           ; $522e: $87
	adc  b                                           ; $522f: $88
	xor  d                                           ; $5230: $aa
	cp   e                                           ; $5231: $bb
	call z, Call_0cf_55b7                            ; $5232: $cc $b7 $55
	ld   h, [hl]                                     ; $5235: $66
	ld   h, l                                        ; $5236: $65
	ld   h, [hl]                                     ; $5237: $66
	ld   [hl], a                                     ; $5238: $77
	ld   a, b                                        ; $5239: $78
	sbc  e                                           ; $523a: $9b
	cp   d                                           ; $523b: $ba
	call Call_0cf_64ca                               ; $523c: $cd $ca $64
	ld   h, l                                        ; $523f: $65
	ld   h, l                                        ; $5240: $65
	ld   d, l                                        ; $5241: $55
	ld   [hl], a                                     ; $5242: $77
	ld   [hl], a                                     ; $5243: $77
	adc  e                                           ; $5244: $8b
	cp   d                                           ; $5245: $ba
	cp   l                                           ; $5246: $bd
	cp   d                                           ; $5247: $ba
	sub  h                                           ; $5248: $94
	ld   d, [hl]                                     ; $5249: $56
	ld   h, [hl]                                     ; $524a: $66
	ld   d, l                                        ; $524b: $55
	ld   d, a                                        ; $524c: $57
	ld   [hl], a                                     ; $524d: $77
	sbc  d                                           ; $524e: $9a
	cp   h                                           ; $524f: $bc
	xor  e                                           ; $5250: $ab
	db   $db                                         ; $5251: $db
	sub  [hl]                                        ; $5252: $96
	ld   b, [hl]                                     ; $5253: $46
	ld   h, [hl]                                     ; $5254: $66
	ld   d, l                                        ; $5255: $55
	ld   d, a                                        ; $5256: $57
	halt                                             ; $5257: $76
	adc  b                                           ; $5258: $88
	cp   h                                           ; $5259: $bc
	set  1, h                                        ; $525a: $cb $cc
	cp   b                                           ; $525c: $b8
	ld   d, h                                        ; $525d: $54
	ld   h, l                                        ; $525e: $65
	ld   d, l                                        ; $525f: $55
	ld   d, [hl]                                     ; $5260: $56
	halt                                             ; $5261: $76
	ld   a, b                                        ; $5262: $78
	sbc  d                                           ; $5263: $9a
	set  1, l                                        ; $5264: $cb $cd
	cp   d                                           ; $5266: $ba
	ld   [hl], l                                     ; $5267: $75
	ld   d, l                                        ; $5268: $55
	ld   d, l                                        ; $5269: $55
	ld   d, l                                        ; $526a: $55
	ld   h, [hl]                                     ; $526b: $66
	ld   h, a                                        ; $526c: $67
	sbc  d                                           ; $526d: $9a
	cp   e                                           ; $526e: $bb
	call $86cb                                       ; $526f: $cd $cb $86
	ld   d, l                                        ; $5272: $55
	ld   d, l                                        ; $5273: $55
	ld   d, l                                        ; $5274: $55
	ld   h, [hl]                                     ; $5275: $66
	ld   h, a                                        ; $5276: $67
	adc  b                                           ; $5277: $88
	cp   h                                           ; $5278: $bc
	call z, $b8dd                                    ; $5279: $cc $dd $b8
	ld   h, l                                        ; $527c: $65
	ld   d, h                                        ; $527d: $54
	ld   d, l                                        ; $527e: $55
	ld   d, [hl]                                     ; $527f: $56
	ld   h, [hl]                                     ; $5280: $66
	ld   a, b                                        ; $5281: $78
	xor  d                                           ; $5282: $aa
	cp   h                                           ; $5283: $bc
	db   $dd                                         ; $5284: $dd
	jp   z, Jump_0cf_5575                            ; $5285: $ca $75 $55

	ld   b, l                                        ; $5288: $45
	ld   d, l                                        ; $5289: $55
	ld   h, [hl]                                     ; $528a: $66
	ld   h, a                                        ; $528b: $67
	sbc  c                                           ; $528c: $99
	cp   h                                           ; $528d: $bc
	call z, $97db                                    ; $528e: $cc $db $97
	ld   d, l                                        ; $5291: $55
	ld   d, h                                        ; $5292: $54
	ld   d, l                                        ; $5293: $55
	ld   d, [hl]                                     ; $5294: $56
	ld   h, a                                        ; $5295: $67
	adc  c                                           ; $5296: $89
	xor  h                                           ; $5297: $ac
	call z, $a9dc                                    ; $5298: $cc $dc $a9
	ld   h, h                                        ; $529b: $64
	ld   d, h                                        ; $529c: $54
	ld   d, l                                        ; $529d: $55
	ld   d, l                                        ; $529e: $55
	ld   h, [hl]                                     ; $529f: $66
	ld   [hl], a                                     ; $52a0: $77
	adc  d                                           ; $52a1: $8a
	call z, $dbce                                    ; $52a2: $cc $ce $db
	add  l                                           ; $52a5: $85
	ld   b, h                                        ; $52a6: $44
	ld   b, l                                        ; $52a7: $45
	ld   d, l                                        ; $52a8: $55
	ld   d, [hl]                                     ; $52a9: $56
	ld   [hl], a                                     ; $52aa: $77
	ld   a, c                                        ; $52ab: $79
	cp   h                                           ; $52ac: $bc
	call $b7ed                                       ; $52ad: $cd $ed $b7
	ld   b, h                                        ; $52b0: $44
	ld   d, l                                        ; $52b1: $55
	ld   d, l                                        ; $52b2: $55
	ld   d, [hl]                                     ; $52b3: $56
	ld   h, [hl]                                     ; $52b4: $66
	ld   a, b                                        ; $52b5: $78
	sbc  h                                           ; $52b6: $9c
	db   $dd                                         ; $52b7: $dd
	db   $dd                                         ; $52b8: $dd
	jp   z, $4564                                    ; $52b9: $ca $64 $45

	ld   d, l                                        ; $52bc: $55
	ld   d, l                                        ; $52bd: $55
	ld   h, [hl]                                     ; $52be: $66
	ld   h, a                                        ; $52bf: $67
	adc  d                                           ; $52c0: $8a
	call z, $ecdd                                    ; $52c1: $cc $dd $ec
	add  [hl]                                        ; $52c4: $86
	ld   b, h                                        ; $52c5: $44
	ld   d, l                                        ; $52c6: $55
	ld   d, l                                        ; $52c7: $55
	ld   h, [hl]                                     ; $52c8: $66
	ld   h, [hl]                                     ; $52c9: $66
	ld   a, c                                        ; $52ca: $79
	xor  h                                           ; $52cb: $ac
	db   $dd                                         ; $52cc: $dd
	db   $dd                                         ; $52cd: $dd
	xor  b                                           ; $52ce: $a8
	ld   d, h                                        ; $52cf: $54
	ld   b, l                                        ; $52d0: $45
	ld   d, l                                        ; $52d1: $55
	ld   d, l                                        ; $52d2: $55
	ld   h, [hl]                                     ; $52d3: $66
	ld   h, a                                        ; $52d4: $67
	sbc  d                                           ; $52d5: $9a
	db   $dd                                         ; $52d6: $dd
	sbc  $cb                                         ; $52d7: $de $cb
	add  l                                           ; $52d9: $85
	ld   b, h                                        ; $52da: $44
	ld   d, l                                        ; $52db: $55
	ld   d, l                                        ; $52dc: $55
	ld   d, [hl]                                     ; $52dd: $56
	ld   h, [hl]                                     ; $52de: $66
	ld   l, b                                        ; $52df: $68
	cp   h                                           ; $52e0: $bc
	sbc  $dc                                         ; $52e1: $de $dc
	or   a                                           ; $52e3: $b7
	ld   d, h                                        ; $52e4: $54
	ld   b, l                                        ; $52e5: $45
	ld   d, l                                        ; $52e6: $55
	ld   d, [hl]                                     ; $52e7: $56
	ld   h, [hl]                                     ; $52e8: $66
	ld   h, a                                        ; $52e9: $67
	sbc  h                                           ; $52ea: $9c
	call $caed                                       ; $52eb: $cd $ed $ca
	ld   [hl], l                                     ; $52ee: $75
	ld   b, l                                        ; $52ef: $45
	ld   d, l                                        ; $52f0: $55
	ld   d, l                                        ; $52f1: $55
	ld   h, [hl]                                     ; $52f2: $66
	ld   h, [hl]                                     ; $52f3: $66
	ld   a, d                                        ; $52f4: $7a
	cp   h                                           ; $52f5: $bc
	db   $dd                                         ; $52f6: $dd
	db   $ed                                         ; $52f7: $ed
	sub  a                                           ; $52f8: $97
	ld   d, h                                        ; $52f9: $54
	ld   d, l                                        ; $52fa: $55
	ld   d, l                                        ; $52fb: $55
	ld   d, l                                        ; $52fc: $55
	ld   h, [hl]                                     ; $52fd: $66
	ld   h, a                                        ; $52fe: $67
	xor  h                                           ; $52ff: $ac
	db   $dd                                         ; $5300: $dd
	sbc  $c9                                         ; $5301: $de $c9
	ld   [hl], h                                     ; $5303: $74
	ld   b, l                                        ; $5304: $45
	ld   d, l                                        ; $5305: $55
	ld   d, l                                        ; $5306: $55
	ld   d, [hl]                                     ; $5307: $56
	ld   h, [hl]                                     ; $5308: $66
	ld   a, d                                        ; $5309: $7a
	cp   l                                           ; $530a: $bd
	sbc  $ec                                         ; $530b: $de $ec
	sub  [hl]                                        ; $530d: $96
	ld   b, h                                        ; $530e: $44
	ld   d, l                                        ; $530f: $55
	ld   d, l                                        ; $5310: $55
	ld   d, l                                        ; $5311: $55
	ld   h, [hl]                                     ; $5312: $66
	ld   h, a                                        ; $5313: $67
	xor  e                                           ; $5314: $ab
	sbc  $ee                                         ; $5315: $de $ee
	jp   z, $4564                                    ; $5317: $ca $64 $45

	ld   d, l                                        ; $531a: $55
	ld   d, l                                        ; $531b: $55
	ld   d, [hl]                                     ; $531c: $56
	ld   h, [hl]                                     ; $531d: $66
	ld   a, d                                        ; $531e: $7a
	cp   l                                           ; $531f: $bd
	sbc  $ec                                         ; $5320: $de $ec
	and  [hl]                                        ; $5322: $a6
	ld   b, h                                        ; $5323: $44
	ld   d, l                                        ; $5324: $55
	ld   d, l                                        ; $5325: $55
	ld   d, l                                        ; $5326: $55
	ld   h, [hl]                                     ; $5327: $66
	ld   h, a                                        ; $5328: $67
	xor  e                                           ; $5329: $ab
	db   $dd                                         ; $532a: $dd
	xor  $ca                                         ; $532b: $ee $ca
	ld   h, h                                        ; $532d: $64
	ld   b, l                                        ; $532e: $45
	ld   d, l                                        ; $532f: $55
	ld   d, l                                        ; $5330: $55
	ld   d, l                                        ; $5331: $55
	ld   h, [hl]                                     ; $5332: $66
	ld   a, c                                        ; $5333: $79
	cp   l                                           ; $5334: $bd
	sbc  $ed                                         ; $5335: $de $ed
	sub  a                                           ; $5337: $97
	ld   d, h                                        ; $5338: $54
	ld   d, l                                        ; $5339: $55
	ld   d, l                                        ; $533a: $55
	ld   d, l                                        ; $533b: $55
	ld   d, l                                        ; $533c: $55
	ld   h, a                                        ; $533d: $67
	sbc  h                                           ; $533e: $9c
	db   $dd                                         ; $533f: $dd
	xor  $ca                                         ; $5340: $ee $ca
	ld   [hl], l                                     ; $5342: $75
	ld   d, l                                        ; $5343: $55
	ld   d, l                                        ; $5344: $55
	ld   b, h                                        ; $5345: $44
	ld   d, l                                        ; $5346: $55
	ld   d, [hl]                                     ; $5347: $56
	ld   a, c                                        ; $5348: $79
	cp   l                                           ; $5349: $bd
	sbc  $ec                                         ; $534a: $de $ec
	and  a                                           ; $534c: $a7
	ld   d, l                                        ; $534d: $55
	ld   d, l                                        ; $534e: $55
	ld   d, h                                        ; $534f: $54
	ld   b, l                                        ; $5350: $45
	ld   d, l                                        ; $5351: $55
	ld   d, [hl]                                     ; $5352: $56
	adc  e                                           ; $5353: $8b
	adc  $ee                                         ; $5354: $ce $ee
	db   $db                                         ; $5356: $db
	add  l                                           ; $5357: $85
	ld   d, l                                        ; $5358: $55
	ld   d, l                                        ; $5359: $55
	ld   b, h                                        ; $535a: $44
	ld   b, l                                        ; $535b: $45
	ld   d, l                                        ; $535c: $55
	ld   l, c                                        ; $535d: $69
	xor  l                                           ; $535e: $ad
	xor  $ed                                         ; $535f: $ee $ed
	xor  c                                           ; $5361: $a9
	ld   h, l                                        ; $5362: $65
	ld   d, l                                        ; $5363: $55
	ld   d, l                                        ; $5364: $55
	ld   b, h                                        ; $5365: $44
	ld   d, l                                        ; $5366: $55
	ld   d, [hl]                                     ; $5367: $56
	adc  d                                           ; $5368: $8a
	call $ecee                                       ; $5369: $cd $ee $ec
	add  [hl]                                        ; $536c: $86
	ld   d, l                                        ; $536d: $55
	ld   d, l                                        ; $536e: $55
	ld   d, h                                        ; $536f: $54
	ld   b, h                                        ; $5370: $44
	ld   d, l                                        ; $5371: $55
	ld   h, a                                        ; $5372: $67
	sbc  h                                           ; $5373: $9c
	xor  $ed                                         ; $5374: $ee $ed
	ret                                              ; $5376: $c9


	ld   [hl], l                                     ; $5377: $75
	ld   d, [hl]                                     ; $5378: $56
	ld   h, l                                        ; $5379: $65
	ld   b, h                                        ; $537a: $44
	ld   b, l                                        ; $537b: $45
	ld   d, l                                        ; $537c: $55
	ld   a, d                                        ; $537d: $7a
	call $edee                                       ; $537e: $cd $ee $ed
	and  a                                           ; $5381: $a7
	ld   h, [hl]                                     ; $5382: $66
	ld   h, [hl]                                     ; $5383: $66
	ld   d, h                                        ; $5384: $54
	ld   b, h                                        ; $5385: $44
	ld   d, l                                        ; $5386: $55
	ld   h, a                                        ; $5387: $67
	sbc  e                                           ; $5388: $9b
	xor  $cc                                         ; $5389: $ee $cc
	cp   c                                           ; $538b: $b9
	halt                                             ; $538c: $76
	ld   d, l                                        ; $538d: $55
	ld   d, l                                        ; $538e: $55
	ld   h, [hl]                                     ; $538f: $66
	ld   h, [hl]                                     ; $5390: $66
	ld   h, [hl]                                     ; $5391: $66
	adc  e                                           ; $5392: $8b
	sbc  $dc                                         ; $5393: $de $dc
	jp   z, $3484                                    ; $5395: $ca $84 $34

	ld   d, [hl]                                     ; $5398: $56
	ld   d, l                                        ; $5399: $55
	ld   h, a                                        ; $539a: $67
	ld   a, b                                        ; $539b: $78
	adc  b                                           ; $539c: $88
	cp   [hl]                                        ; $539d: $be
	cp   $db                                         ; $539e: $fe $db
	sub  l                                           ; $53a0: $95
	ld   de, $6524                                   ; $53a1: $11 $24 $65
	ld   h, [hl]                                     ; $53a4: $66
	ld   a, c                                        ; $53a5: $79
	xor  d                                           ; $53a6: $aa
	xor  h                                           ; $53a7: $ac
	rst  $28                                         ; $53a8: $ef
	db   $ed                                         ; $53a9: $ed
	or   a                                           ; $53aa: $b7
	ld   hl, $4712                                   ; $53ab: $21 $12 $47
	ld   d, [hl]                                     ; $53ae: $56
	ld   a, c                                        ; $53af: $79
	cp   e                                           ; $53b0: $bb
	cp   e                                           ; $53b1: $bb
	sbc  $ff                                         ; $53b2: $de $ff
	jp   z, $1151                                    ; $53b4: $ca $51 $11

	dec  d                                           ; $53b7: $15
	ld   [hl], l                                     ; $53b8: $75
	ld   a, b                                        ; $53b9: $78
	cp   e                                           ; $53ba: $bb
	cp   e                                           ; $53bb: $bb
	cp   [hl]                                        ; $53bc: $be
	rst  $38                                         ; $53bd: $ff
	db   $ec                                         ; $53be: $ec
	ld   [hl], d                                     ; $53bf: $72
	ld   de, $7812                                   ; $53c0: $11 $12 $78
	ld   l, c                                        ; $53c3: $69
	xor  h                                           ; $53c4: $ac
	call z, $efbd                                    ; $53c5: $cc $bd $ef
	db   $fc                                         ; $53c8: $fc
	and  l                                           ; $53c9: $a5
	ld   de, $3a11                                   ; $53ca: $11 $11 $3a
	ld   a, b                                        ; $53cd: $78
	cp   e                                           ; $53ce: $bb
	call c, $eeda                                    ; $53cf: $dc $da $ee
	rst  $38                                         ; $53d2: $ff
	xor  c                                           ; $53d3: $a9
	ld   de, $1611                                   ; $53d4: $11 $11 $16
	or   a                                           ; $53d7: $b7
	cp   e                                           ; $53d8: $bb
	sbc  $cc                                         ; $53d9: $de $cc
	cp   [hl]                                        ; $53db: $be
	rst  $38                                         ; $53dc: $ff
	reti                                             ; $53dd: $d9


	ld   d, c                                        ; $53de: $51
	ld   de, $aa12                                   ; $53df: $11 $12 $aa
	adc  h                                           ; $53e2: $8c
	adc  $dd                                         ; $53e3: $ce $dd
	xor  h                                           ; $53e5: $ac
	rst  $28                                         ; $53e6: $ef
	ld   a, [$1181]                                  ; $53e7: $fa $81 $11
	ld   de, $9b5d                                   ; $53ea: $11 $5d $9b
	sbc  $ed                                         ; $53ed: $de $ed
	set  3, [hl]                                     ; $53ef: $cb $de
	db   $fd                                         ; $53f1: $fd
	sub  l                                           ; $53f2: $95
	ld   de, $2a11                                   ; $53f3: $11 $11 $2a
	ret                                              ; $53f6: $c9


	db   $ed                                         ; $53f7: $ed
	xor  $cc                                         ; $53f8: $ee $cc
	adc  $ff                                         ; $53fa: $ce $ff
	rst  ToBoot                                         ; $53fc: $c7
	ld   de, $1511                                   ; $53fd: $11 $11 $15
	ld   [$dfbf], a                                  ; $5400: $ea $bf $df
	db   $ec                                         ; $5403: $ec
	xor  l                                           ; $5404: $ad
	rst  $28                                         ; $5405: $ef
	add  sp, $51                                     ; $5406: $e8 $51
	ld   de, $ae13                                   ; $5408: $11 $13 $ae
	sbc  [hl]                                        ; $540b: $9e
	rst  $38                                         ; $540c: $ff
	db   $fc                                         ; $540d: $fc
	cp   e                                           ; $540e: $bb
	sbc  $fb                                         ; $540f: $de $fb
	ld   [hl], d                                     ; $5411: $72
	ld   de, $5f11                                   ; $5412: $11 $11 $5f
	cp   d                                           ; $5415: $ba
	cp   $fd                                         ; $5416: $fe $fd
	cp   d                                           ; $5418: $ba
	adc  $ff                                         ; $5419: $ce $ff
	add  l                                           ; $541b: $85
	ld   de, $4911                                   ; $541c: $11 $11 $49
	ld   sp, hl                                      ; $541f: $f9
	rst  $28                                         ; $5420: $ef
	rst  $28                                         ; $5421: $ef
	cp   e                                           ; $5422: $bb
	cp   [hl]                                        ; $5423: $be
	rst  $28                                         ; $5424: $ef
	sub  $21                                         ; $5425: $d6 $21
	ld   de, $fe16                                   ; $5427: $11 $16 $fe
	xor  a                                           ; $542a: $af
	rst  $38                                         ; $542b: $ff
	db   $db                                         ; $542c: $db
	xor  e                                           ; $542d: $ab
	sbc  $f9                                         ; $542e: $de $f9
	ld   h, c                                        ; $5430: $61
	ld   de, $af14                                   ; $5431: $11 $14 $af
	xor  [hl]                                        ; $5434: $ae
	cp   $fa                                         ; $5435: $fe $fa
	cp   d                                           ; $5437: $ba
	db   $dd                                         ; $5438: $dd
	db   $fd                                         ; $5439: $fd
	ld   h, e                                        ; $543a: $63
	ld   de, $6e11                                   ; $543b: $11 $11 $6e
	ld   sp, hl                                      ; $543e: $f9
	rst  $38                                         ; $543f: $ff
	cp   $9b                                         ; $5440: $fe $9b
	adc  $ef                                         ; $5442: $ce $ef
	and  [hl]                                        ; $5444: $a6
	ld   de, $4811                                   ; $5445: $11 $11 $48
	ld   a, [$efdf]                                  ; $5448: $fa $df $ef
	cp   d                                           ; $544b: $ba
	xor  l                                           ; $544c: $ad
	rst  $28                                         ; $544d: $ef
	and  $51                                         ; $544e: $e6 $51
	ld   de, $df16                                   ; $5450: $11 $16 $df
	adc  a                                           ; $5453: $8f
	rst  $38                                         ; $5454: $ff
	ld   a, [$ed9a]                                  ; $5455: $fa $9a $ed
	ld   a, [$1162]                                  ; $5458: $fa $62 $11
	inc  de                                          ; $545b: $13
	ld   a, a                                        ; $545c: $7f
	set  7, [hl]                                     ; $545d: $cb $fe
	db   $fc                                         ; $545f: $fc
	sbc  d                                           ; $5460: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5461: $cf
	rst  $28                                         ; $5462: $ef
	add  [hl]                                        ; $5463: $86
	ld   de, $5a11                                   ; $5464: $11 $11 $5a
	ld   sp, hl                                      ; $5467: $f9
	rst  $38                                         ; $5468: $ff
	rst  $38                                         ; $5469: $ff
	cp   c                                           ; $546a: $b9
	xor  [hl]                                        ; $546b: $ae
	rst  $28                                         ; $546c: $ef
	sub  $51                                         ; $546d: $d6 $51
	ld   de, $ef16                                   ; $546f: $11 $16 $ef
	adc  a                                           ; $5472: $8f
	rst  $38                                         ; $5473: $ff
	jp   hl                                          ; $5474: $e9


	xor  e                                           ; $5475: $ab
	db   $fd                                         ; $5476: $fd
	ld   a, [$1161]                                  ; $5477: $fa $61 $11
	inc  d                                           ; $547a: $14
	ld   a, a                                        ; $547b: $7f
	jp   c, $fcfe                                    ; $547c: $da $fe $fc

	sbc  d                                           ; $547f: $9a
	sbc  $ff                                         ; $5480: $de $ff
	ld   [hl], a                                     ; $5482: $77
	ld   de, $5911                                   ; $5483: $11 $11 $59

Jump_0cf_5486:
	ld   sp, hl                                      ; $5486: $f9
	rst  JumpTable                                         ; $5487: $df
	rst  $28                                         ; $5488: $ef
	cp   d                                           ; $5489: $ba
	sbc  a                                           ; $548a: $9f
	rst  JumpTable                                         ; $548b: $df
	and  $61                                         ; $548c: $e6 $61
	ld   de, $cf16                                   ; $548e: $11 $16 $cf
	ld   a, a                                        ; $5491: $7f
	cp   $e9                                         ; $5492: $fe $e9
	sbc  e                                           ; $5494: $9b
	cp   $fd                                         ; $5495: $fe $fd
	ld   [hl], h                                     ; $5497: $74
	ld   de, $6e12                                   ; $5498: $11 $12 $6e
	rst  $30                                         ; $549b: $f7
	rst  $38                                         ; $549c: $ff
	db   $ed                                         ; $549d: $ed
	sbc  c                                           ; $549e: $99
	adc  $ef                                         ; $549f: $ce $ef
	and  a                                           ; $54a1: $a7
	ld   hl, $4611                                   ; $54a2: $21 $11 $46
	db   $fc                                         ; $54a5: $fc
	adc  a                                           ; $54a6: $8f
	cp   $ba                                         ; $54a7: $fe $ba
	xor  l                                           ; $54a9: $ad
	xor  $fa                                         ; $54aa: $ee $fa
	add  c                                           ; $54ac: $81
	ld   de, $7f15                                   ; $54ad: $11 $15 $7f
	xor  e                                           ; $54b0: $ab
	cp   $ea                                         ; $54b1: $fe $ea
	xor  d                                           ; $54b3: $aa
	cp   $ef                                         ; $54b4: $fe $ef
	sbc  b                                           ; $54b6: $98
	ld   de, $6711                                   ; $54b7: $11 $11 $67
	ld   hl, sp-$31                                  ; $54ba: $f8 $cf
	db   $dd                                         ; $54bc: $dd
	xor  c                                           ; $54bd: $a9
	xor  a                                           ; $54be: $af
	xor  $f8                                         ; $54bf: $ee $f8
	ld   [hl], c                                     ; $54c1: $71
	ld   de, $7f15                                   ; $54c2: $11 $15 $7f
	ld   a, l                                        ; $54c5: $7d
	db   $fd                                         ; $54c6: $fd
	jp   z, $fcac                                    ; $54c7: $ca $ac $fc

	rst  $28                                         ; $54ca: $ef
	sub  a                                           ; $54cb: $97
	ld   de, $5711                                   ; $54cc: $11 $11 $57
	and  $ef                                         ; $54cf: $e6 $ef
	res  3, d                                        ; $54d1: $cb $9a
	rst  JumpTable                                         ; $54d3: $df
	adc  $fa                                         ; $54d4: $ce $fa
	ld   [hl], c                                     ; $54d6: $71
	ld   de, $7c15                                   ; $54d7: $11 $15 $7c
	ld   l, [hl]                                     ; $54da: $6e
	db   $fc                                         ; $54db: $fc
	cp   c                                           ; $54dc: $b9
	xor  h                                           ; $54dd: $ac
	db   $fc                                         ; $54de: $fc
	rst  $38                                         ; $54df: $ff
	xor  b                                           ; $54e0: $a8
	ld   de, $5511                                   ; $54e1: $11 $11 $55
	add  $ef                                         ; $54e4: $c6 $ef
	jp   z, $efab                                    ; $54e6: $ca $ab $ef

	adc  $fb                                         ; $54e9: $ce $fb
	add  c                                           ; $54eb: $81
	ld   de, $4a15                                   ; $54ec: $11 $15 $4a
	ld   l, h                                        ; $54ef: $6c
	ei                                               ; $54f0: $fb
	sbc  d                                           ; $54f1: $9a
	cp   l                                           ; $54f2: $bd
	db   $fd                                         ; $54f3: $fd
	rst  JumpTable                                         ; $54f4: $df
	ret  c                                           ; $54f5: $d8

	ld   de, $5311                                   ; $54f6: $11 $11 $53
	sub  [hl]                                        ; $54f9: $96
	cp   a                                           ; $54fa: $bf
	ret                                              ; $54fb: $c9


	xor  l                                           ; $54fc: $ad
	rst  JumpTable                                         ; $54fd: $df
	call c, $83fe                                    ; $54fe: $dc $fe $83
	ld   de, $2715                                   ; $5501: $11 $15 $27
	ld   a, b                                        ; $5504: $78
	db   $fd                                         ; $5505: $fd
	sbc  c                                           ; $5506: $99
	call $bffd                                       ; $5507: $cd $fd $bf
	ld   sp, hl                                      ; $550a: $f9
	ld   d, c                                        ; $550b: $51
	ld   de, $5842                                   ; $550c: $11 $42 $58
	ld   l, a                                        ; $550f: $6f
	jp   hl                                          ; $5510: $e9


	sbc  h                                           ; $5511: $9c
	adc  $fc                                         ; $5512: $ce $fc
	rst  $38                                         ; $5514: $ff
	or   a                                           ; $5515: $b7
	ld   de, $4212                                   ; $5516: $11 $12 $42
	add  l                                           ; $5519: $85
	cp   a                                           ; $551a: $bf
	sbc  c                                           ; $551b: $99
	xor  l                                           ; $551c: $ad
	rst  JumpTable                                         ; $551d: $df
	db   $dd                                         ; $551e: $dd
	db   $fd                                         ; $551f: $fd
	and  e                                           ; $5520: $a3
	ld   de, $1715                                   ; $5521: $11 $15 $17
	ld   h, a                                        ; $5524: $67
	db   $fc                                         ; $5525: $fc
	adc  b                                           ; $5526: $88
	call z, $bffe                                    ; $5527: $cc $fe $bf
	ei                                               ; $552a: $fb
	ld   [hl], c                                     ; $552b: $71
	ld   de, $4743                                   ; $552c: $11 $43 $47
	ld   e, e                                        ; $552f: $5b
	reti                                             ; $5530: $d9


	ld   a, d                                        ; $5531: $7a
	call z, $effd                                    ; $5532: $cc $fd $ef
	jp   c, $1151                                    ; $5535: $da $51 $11

	ld   d, e                                        ; $5538: $53
	halt                                             ; $5539: $76
	ld   l, h                                        ; $553a: $6c
	cp   b                                           ; $553b: $b8
	adc  d                                           ; $553c: $8a
	sbc  l                                           ; $553d: $9d
	db   $fd                                         ; $553e: $fd
	rst  $38                                         ; $553f: $ff
	jp   c, $1341                                    ; $5540: $da $41 $13

Jump_0cf_5543:
	ld   d, [hl]                                     ; $5543: $56
	sub  l                                           ; $5544: $95
	ld   a, d                                        ; $5545: $7a
	sub  a                                           ; $5546: $97
	sbc  b                                           ; $5547: $98
	adc  l                                           ; $5548: $8d
	db   $fd                                         ; $5549: $fd
	cp   $ca                                         ; $554a: $fe $ca
	ld   b, c                                        ; $554c: $41
	inc  de                                          ; $554d: $13
	ld   l, c                                        ; $554e: $69
	sub  l                                           ; $554f: $95
	ld   l, b                                        ; $5550: $68
	ld   [hl], a                                     ; $5551: $77
	add  a                                           ; $5552: $87
	adc  l                                           ; $5553: $8d
	db   $fd                                         ; $5554: $fd
	db   $ed                                         ; $5555: $ed
	bit  0, c                                        ; $5556: $cb $41
	inc  d                                           ; $5558: $14
	ld   a, c                                        ; $5559: $79
	add  l                                           ; $555a: $85
	ld   d, [hl]                                     ; $555b: $56
	ld   h, [hl]                                     ; $555c: $66
	ld   [hl], a                                     ; $555d: $77
	adc  h                                           ; $555e: $8c
	sbc  $ec                                         ; $555f: $de $ec
	db   $db                                         ; $5561: $db
	ld   d, c                                        ; $5562: $51
	dec  h                                           ; $5563: $25
	ld   a, d                                        ; $5564: $7a
	add  l                                           ; $5565: $85
	ld   d, h                                        ; $5566: $54
	ld   d, l                                        ; $5567: $55
	ld   h, [hl]                                     ; $5568: $66
	ld   a, h                                        ; $5569: $7c
	call $ebee                                       ; $556a: $cd $ee $eb
	ld   [hl], h                                     ; $556d: $74
	ld   b, [hl]                                     ; $556e: $46
	adc  d                                           ; $556f: $8a
	add  l                                           ; $5570: $85
	ld   b, e                                        ; $5571: $43
	inc  [hl]                                        ; $5572: $34
	ld   d, l                                        ; $5573: $55
	ld   a, d                                        ; $5574: $7a

Jump_0cf_5575:
	call z, $ecfe                                    ; $5575: $cc $fe $ec
	sub  [hl]                                        ; $5578: $96
	ld   d, [hl]                                     ; $5579: $56
	adc  d                                           ; $557a: $8a
	sub  [hl]                                        ; $557b: $96
	ld   [hl-], a                                    ; $557c: $32
	ld   [hl+], a                                    ; $557d: $22
	ld   b, h                                        ; $557e: $44
	ld   l, c                                        ; $557f: $69
	cp   l                                           ; $5580: $bd
	rst  $38                                         ; $5581: $ff
	cp   $b8                                         ; $5582: $fe $b8
	ld   h, a                                        ; $5584: $67
	adc  d                                           ; $5585: $8a
	sub  [hl]                                        ; $5586: $96
	ld   sp, $2411                                   ; $5587: $31 $11 $24
	ld   e, b                                        ; $558a: $58
	xor  l                                           ; $558b: $ad
	rst  $28                                         ; $558c: $ef
	rst  $38                                         ; $558d: $ff
	reti                                             ; $558e: $d9


	ld   [hl], a                                     ; $558f: $77
	sbc  b                                           ; $5590: $98
	sub  [hl]                                        ; $5591: $96
	ld   sp, $1311                                   ; $5592: $31 $11 $13
	ld   b, a                                        ; $5595: $47
	sbc  e                                           ; $5596: $9b

Call_0cf_5597:
	rst  $28                                         ; $5597: $ef
	rst  $38                                         ; $5598: $ff
	db   $eb                                         ; $5599: $eb
	sbc  b                                           ; $559a: $98
	adc  b                                           ; $559b: $88
	add  [hl]                                        ; $559c: $86
	ld   sp, $1311                                   ; $559d: $31 $11 $13
	ld   b, [hl]                                     ; $55a0: $46
	sbc  h                                           ; $55a1: $9c
	rst  JumpTable                                         ; $55a2: $df
	rst  $38                                         ; $55a3: $ff
	db   $fd                                         ; $55a4: $fd
	xor  b                                           ; $55a5: $a8
	adc  c                                           ; $55a6: $89
	sub  a                                           ; $55a7: $97
	ld   b, c                                        ; $55a8: $41
	ld   de, $4612                                   ; $55a9: $11 $12 $46
	sbc  e                                           ; $55ac: $9b
	rst  JumpTable                                         ; $55ad: $df
	rst  $38                                         ; $55ae: $ff
	db   $fd                                         ; $55af: $fd
	xor  b                                           ; $55b0: $a8
	adc  b                                           ; $55b1: $88
	sub  a                                           ; $55b2: $97
	ld   b, d                                        ; $55b3: $42
	ld   bc, $4512                                   ; $55b4: $01 $12 $45

Call_0cf_55b7:
	ld   a, d                                        ; $55b7: $7a
	cp   [hl]                                        ; $55b8: $be
	rst  $38                                         ; $55b9: $ff
	cp   $b8                                         ; $55ba: $fe $b8
	adc  b                                           ; $55bc: $88
	add  a                                           ; $55bd: $87
	ld   d, e                                        ; $55be: $53
	ld   de, $3412                                   ; $55bf: $11 $12 $34
	ld   l, b                                        ; $55c2: $68
	cp   [hl]                                        ; $55c3: $be
	rst  $38                                         ; $55c4: $ff
	rst  $38                                         ; $55c5: $ff
	ret                                              ; $55c6: $c9


	adc  b                                           ; $55c7: $88
	adc  b                                           ; $55c8: $88
	ld   h, h                                        ; $55c9: $64
	ld   hl, $2411                                   ; $55ca: $21 $11 $24
	ld   e, b                                        ; $55cd: $58
	cp   l                                           ; $55ce: $bd
	rst  $38                                         ; $55cf: $ff
	rst  $38                                         ; $55d0: $ff
	reti                                             ; $55d1: $d9


	add  a                                           ; $55d2: $87
	adc  b                                           ; $55d3: $88
	ld   [hl], h                                     ; $55d4: $74
	ld   hl, $2311                                   ; $55d5: $21 $11 $23
	ld   d, a                                        ; $55d8: $57
	sbc  h                                           ; $55d9: $9c
	rst  $38                                         ; $55da: $ff
	rst  $38                                         ; $55db: $ff
	db   $db                                         ; $55dc: $db
	add  a                                           ; $55dd: $87
	adc  b                                           ; $55de: $88
	ld   [hl], l                                     ; $55df: $75
	ld   sp, $2311                                   ; $55e0: $31 $11 $23
	ld   b, [hl]                                     ; $55e3: $46
	adc  e                                           ; $55e4: $8b
	rst  $28                                         ; $55e5: $ef
	rst  $38                                         ; $55e6: $ff
	db   $ec                                         ; $55e7: $ec
	add  a                                           ; $55e8: $87
	ld   a, b                                        ; $55e9: $78
	add  [hl]                                        ; $55ea: $86
	ld   b, d                                        ; $55eb: $42
	ld   de, $4512                                   ; $55ec: $11 $12 $45
	adc  d                                           ; $55ef: $8a
	rst  JumpTable                                         ; $55f0: $df
	rst  $38                                         ; $55f1: $ff
	db   $fc                                         ; $55f2: $fc
	sbc  b                                           ; $55f3: $98
	ld   a, b                                        ; $55f4: $78
	add  a                                           ; $55f5: $87
	ld   d, d                                        ; $55f6: $52
	ld   de, $3412                                   ; $55f7: $11 $12 $34
	ld   l, c                                        ; $55fa: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55fb: $cf
	rst  $38                                         ; $55fc: $ff
	cp   $b9                                         ; $55fd: $fe $b9
	ld   a, b                                        ; $55ff: $78
	adc  b                                           ; $5600: $88
	ld   h, e                                        ; $5601: $63
	ld   de, $3411                                   ; $5602: $11 $11 $34
	ld   l, b                                        ; $5605: $68
	xor  l                                           ; $5606: $ad
	rst  $38                                         ; $5607: $ff
	rst  $38                                         ; $5608: $ff
	ret                                              ; $5609: $c9


	ld   [hl], a                                     ; $560a: $77
	adc  b                                           ; $560b: $88
	ld   [hl], h                                     ; $560c: $74
	ld   hl, $2311                                   ; $560d: $21 $11 $23
	ld   b, a                                        ; $5610: $47
	sbc  h                                           ; $5611: $9c
	rst  $38                                         ; $5612: $ff
	rst  $38                                         ; $5613: $ff
	jp   c, $7887                                    ; $5614: $da $87 $78

	halt                                             ; $5617: $76
	ld   sp, $1301                                   ; $5618: $31 $01 $13
	ld   b, [hl]                                     ; $561b: $46
	sbc  e                                           ; $561c: $9b
	rst  $28                                         ; $561d: $ef
	rst  $38                                         ; $561e: $ff
	db   $fc                                         ; $561f: $fc
	sbc  b                                           ; $5620: $98
	ld   [hl], a                                     ; $5621: $77
	add  a                                           ; $5622: $87
	ld   b, d                                        ; $5623: $42
	ld   de, $3512                                   ; $5624: $11 $12 $35
	ld   a, d                                        ; $5627: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5628: $cf
	rst  $38                                         ; $5629: $ff
	db   $fd                                         ; $562a: $fd
	cp   b                                           ; $562b: $b8
	ld   [hl], a                                     ; $562c: $77
	add  a                                           ; $562d: $87
	ld   d, e                                        ; $562e: $53
	ld   de, $2411                                   ; $562f: $11 $11 $24
	ld   l, b                                        ; $5632: $68
	cp   [hl]                                        ; $5633: $be
	rst  $38                                         ; $5634: $ff
	rst  $38                                         ; $5635: $ff
	jp   z, $7877                                    ; $5636: $ca $77 $78

	ld   [hl], h                                     ; $5639: $74
	ld   hl, $2311                                   ; $563a: $21 $11 $23
	ld   b, a                                        ; $563d: $47
	xor  h                                           ; $563e: $ac
	rst  $38                                         ; $563f: $ff
	rst  $38                                         ; $5640: $ff
	ld   [$7897], a                                  ; $5641: $ea $97 $78
	ld   [hl], l                                     ; $5644: $75
	ld   sp, $1211                                   ; $5645: $31 $11 $12
	ld   b, [hl]                                     ; $5648: $46
	adc  e                                           ; $5649: $8b
	rst  $28                                         ; $564a: $ef
	rst  $38                                         ; $564b: $ff
	db   $fc                                         ; $564c: $fc
	sbc  b                                           ; $564d: $98
	ld   [hl], a                                     ; $564e: $77
	halt                                             ; $564f: $76
	ld   b, d                                        ; $5650: $42
	ld   de, $3411                                   ; $5651: $11 $11 $34
	ld   a, d                                        ; $5654: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5655: $cf
	rst  $38                                         ; $5656: $ff
	cp   $b8                                         ; $5657: $fe $b8
	ld   [hl], a                                     ; $5659: $77
	ld   [hl], a                                     ; $565a: $77
	ld   h, e                                        ; $565b: $63
	ld   de, $2311                                   ; $565c: $11 $11 $23
	ld   l, c                                        ; $565f: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5660: $cf
	rst  $38                                         ; $5661: $ff
	rst  $38                                         ; $5662: $ff
	ret  c                                           ; $5663: $d8

	ld   h, [hl]                                     ; $5664: $66

Jump_0cf_5665:
	ld   h, [hl]                                     ; $5665: $66
	ld   [hl], l                                     ; $5666: $75
	ld   hl, $3512                                   ; $5667: $21 $12 $35
	ld   e, b                                        ; $566a: $58
	rst  JumpTable                                         ; $566b: $df
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	jp   c, Jump_0cf_5543                            ; $566e: $da $43 $55

	ld   d, h                                        ; $5671: $54
	ld   hl, $2434                                   ; $5672: $21 $34 $24
	ld   a, c                                        ; $5675: $79
	rst  JumpTable                                         ; $5676: $df
	rst  $38                                         ; $5677: $ff
	rst  $38                                         ; $5678: $ff
	jp   c, Jump_0cf_6354                            ; $5679: $da $54 $63

	inc  d                                           ; $567c: $14
	ld   d, d                                        ; $567d: $52
	inc  de                                          ; $567e: $13
	ld   b, l                                        ; $567f: $45
	ld   h, a                                        ; $5680: $67
	cp   a                                           ; $5681: $bf
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	db   $eb                                         ; $5684: $eb
	ld   h, e                                        ; $5685: $63
	ld   h, l                                        ; $5686: $65
	inc  de                                          ; $5687: $13
	ld   h, d                                        ; $5688: $62
	inc  de                                          ; $5689: $13
	ld   d, e                                        ; $568a: $53
	ld   d, a                                        ; $568b: $57
	xor  l                                           ; $568c: $ad
	rst  $28                                         ; $568d: $ef
	rst  $38                                         ; $568e: $ff
	db   $fd                                         ; $568f: $fd
	and  h                                           ; $5690: $a4
	ld   d, [hl]                                     ; $5691: $56
	ld   de, $1373                                   ; $5692: $11 $73 $13
	ld   d, d                                        ; $5695: $52
	ld   c, b                                        ; $5696: $48
	ld   a, d                                        ; $5697: $7a
	rst  $38                                         ; $5698: $ff
	rst  $38                                         ; $5699: $ff
	rst  $38                                         ; $569a: $ff
	or   [hl]                                        ; $569b: $b6
	ld   c, b                                        ; $569c: $48
	ld   hl, $1265                                   ; $569d: $21 $65 $12
	ld   h, c                                        ; $56a0: $61
	jr   z, @+$79                                    ; $56a1: $28 $77

	rst  $38                                         ; $56a3: $ff
	rst  $38                                         ; $56a4: $ff
	rst  $38                                         ; $56a5: $ff
	jp   hl                                          ; $56a6: $e9


	ld   d, [hl]                                     ; $56a7: $56
	ld   b, c                                        ; $56a8: $41
	ld   [hl], $11                                   ; $56a9: $36 $11
	ld   d, d                                        ; $56ab: $52
	ld   d, $84                                      ; $56ac: $16 $84
	rst  JumpTable                                         ; $56ae: $df
	rst  $28                                         ; $56af: $ef
	rst  $38                                         ; $56b0: $ff
	cp   $75                                         ; $56b1: $fe $75
	ld   [hl], d                                     ; $56b3: $72
	dec  d                                           ; $56b4: $15
	ld   b, c                                        ; $56b5: $41
	inc  sp                                          ; $56b6: $33
	inc  de                                          ; $56b7: $13
	ld   [hl], l                                     ; $56b8: $75
	adc  a                                           ; $56b9: $8f
	rst  $28                                         ; $56ba: $ef
	rst  $38                                         ; $56bb: $ff
	rst  $38                                         ; $56bc: $ff
	and  [hl]                                        ; $56bd: $a6
	ld   h, l                                        ; $56be: $65
	ld   de, $1561                                   ; $56bf: $11 $61 $15
	ld   de, $3d66                                   ; $56c2: $11 $66 $3d
	db   $fd                                         ; $56c5: $fd
	rst  $38                                         ; $56c6: $ff
	rst  $38                                         ; $56c7: $ff
	ret  c                                           ; $56c8: $d8

	halt                                             ; $56c9: $76
	ld   b, c                                        ; $56ca: $41
	inc  [hl]                                        ; $56cb: $34
	ld   de, $2631                                   ; $56cc: $11 $31 $26
	ld   d, [hl]                                     ; $56cf: $56
	sbc  $ff                                         ; $56d0: $de $ff
	rst  $38                                         ; $56d2: $ff
	db   $fc                                         ; $56d3: $fc
	add  l                                           ; $56d4: $85
	ld   h, h                                        ; $56d5: $64
	inc  d                                           ; $56d6: $14
	ld   sp, $1423                                   ; $56d7: $31 $23 $14
	ld   h, h                                        ; $56da: $64
	sbc  [hl]                                        ; $56db: $9e
	rst  JumpTable                                         ; $56dc: $df
	rst  $38                                         ; $56dd: $ff
	rst  $38                                         ; $56de: $ff
	ret                                              ; $56df: $c9


	ld   d, [hl]                                     ; $56e0: $56
	ld   sp, $1361                                   ; $56e1: $31 $61 $13
	ld   hl, $4a46                                   ; $56e4: $21 $46 $4a
	db   $fd                                         ; $56e7: $fd
	rst  $38                                         ; $56e8: $ff
	rst  $38                                         ; $56e9: $ff
	db   $ec                                         ; $56ea: $ec
	ld   [hl], l                                     ; $56eb: $75
	ld   h, c                                        ; $56ec: $61
	ld   d, $11                                      ; $56ed: $16 $11
	ld   sp, $5525                                   ; $56ef: $31 $25 $55
	call $ffff                                       ; $56f2: $cd $ff $ff
	cp   $b7                                         ; $56f5: $fe $b7
	ld   d, [hl]                                     ; $56f7: $56
	ld   de, $1361                                   ; $56f8: $11 $61 $13
	ld   de, $6c64                                   ; $56fb: $11 $64 $6c
	rst  JumpTable                                         ; $56fe: $df
	rst  $38                                         ; $56ff: $ff
	rst  $38                                         ; $5700: $ff
	db   $eb                                         ; $5701: $eb
	ld   h, [hl]                                     ; $5702: $66
	ld   h, c                                        ; $5703: $61
	inc  [hl]                                        ; $5704: $34
	ld   de, $2621                                   ; $5705: $11 $21 $26
	ld   b, a                                        ; $5708: $47
	db   $dd                                         ; $5709: $dd
	rst  $38                                         ; $570a: $ff
	rst  $38                                         ; $570b: $ff
	db   $fd                                         ; $570c: $fd
	or   a                                           ; $570d: $b7
	ld   d, l                                        ; $570e: $55
	ld   [de], a                                     ; $570f: $12
	ld   b, c                                        ; $5710: $41
	ld   [de], a                                     ; $5711: $12
	inc  de                                          ; $5712: $13
	ld   d, e                                        ; $5713: $53
	ld   a, l                                        ; $5714: $7d
	rst  JumpTable                                         ; $5715: $df
	rst  $38                                         ; $5716: $ff
	rst  $38                                         ; $5717: $ff
	jp   c, $5175                                    ; $5718: $da $75 $51

	inc  hl                                          ; $571b: $23
	ld   de, $3521                                   ; $571c: $11 $21 $35
	add  hl, sp                                      ; $571f: $39
	call $ffff                                       ; $5720: $cd $ff $ff
	cp   $b7                                         ; $5723: $fe $b7
	ld   d, l                                        ; $5725: $55
	ld   bc, $1131                                   ; $5726: $01 $31 $11
	ld   [de], a                                     ; $5729: $12
	ld   b, h                                        ; $572a: $44
	ld   a, e                                        ; $572b: $7b
	rst  JumpTable                                         ; $572c: $df
	rst  $38                                         ; $572d: $ff
	rst  $38                                         ; $572e: $ff
	db   $ec                                         ; $572f: $ec
	add  l                                           ; $5730: $85
	ld   d, c                                        ; $5731: $51
	inc  de                                          ; $5732: $13
	ld   de, $2421                                   ; $5733: $11 $21 $24
	jr   c, @-$40                                    ; $5736: $38 $be

	rst  $38                                         ; $5738: $ff
	rst  $38                                         ; $5739: $ff
	rst  $38                                         ; $573a: $ff
	ret  z                                           ; $573b: $c8

	ld   d, l                                        ; $573c: $55
	ld   de, $1241                                   ; $573d: $11 $41 $12
	ld   [de], a                                     ; $5740: $12
	ld   b, h                                        ; $5741: $44
	ld   l, e                                        ; $5742: $6b
	rst  JumpTable                                         ; $5743: $df
	rst  $38                                         ; $5744: $ff
	rst  $38                                         ; $5745: $ff
	db   $fc                                         ; $5746: $fc
	sub  l                                           ; $5747: $95
	ld   d, e                                        ; $5748: $53
	inc  de                                          ; $5749: $13
	ld   de, $1411                                   ; $574a: $11 $11 $14
	ld   b, l                                        ; $574d: $45
	xor  l                                           ; $574e: $ad
	rst  $38                                         ; $574f: $ff
	rst  $38                                         ; $5750: $ff
	rst  $38                                         ; $5751: $ff
	jp   z, $4165                                    ; $5752: $ca $65 $41

	inc  hl                                          ; $5755: $23
	ld   de, $3511                                   ; $5756: $11 $11 $35
	ld   c, d                                        ; $5759: $4a
	db   $dd                                         ; $575a: $dd
	rst  $38                                         ; $575b: $ff
	rst  $38                                         ; $575c: $ff
	db   $fd                                         ; $575d: $fd
	and  a                                           ; $575e: $a7
	ld   d, h                                        ; $575f: $54
	ld   de, $1121                                   ; $5760: $11 $21 $11
	ld   [de], a                                     ; $5763: $12
	ld   b, h                                        ; $5764: $44
	adc  h                                           ; $5765: $8c
	rst  $28                                         ; $5766: $ef
	rst  $38                                         ; $5767: $ff
	rst  $38                                         ; $5768: $ff
	db   $ec                                         ; $5769: $ec
	add  h                                           ; $576a: $84
	ld   d, d                                        ; $576b: $52
	inc  de                                          ; $576c: $13
	ld   de, $2311                                   ; $576d: $11 $11 $23
	ld   b, a                                        ; $5770: $47
	cp   [hl]                                        ; $5771: $be
	rst  $38                                         ; $5772: $ff
	rst  $38                                         ; $5773: $ff
	rst  $38                                         ; $5774: $ff
	jp   c, $3155                                    ; $5775: $da $55 $31

	ld   hl, $1111                                   ; $5778: $21 $11 $11
	inc  [hl]                                        ; $577b: $34
	ld   e, d                                        ; $577c: $5a
	xor  $ff                                         ; $577d: $ee $ff
	rst  $38                                         ; $577f: $ff
	db   $fd                                         ; $5780: $fd
	cp   b                                           ; $5781: $b8
	ld   b, l                                        ; $5782: $45
	ld   de, $1121                                   ; $5783: $11 $21 $11
	ld   de, $7c44                                   ; $5786: $11 $44 $7c
	rst  $38                                         ; $5789: $ff
	rst  $38                                         ; $578a: $ff
	rst  $38                                         ; $578b: $ff
	db   $fc                                         ; $578c: $fc
	sub  l                                           ; $578d: $95
	ld   b, e                                        ; $578e: $43
	ld   [de], a                                     ; $578f: $12
	ld   de, $1411                                   ; $5790: $11 $11 $14
	ld   d, l                                        ; $5793: $55
	xor  l                                           ; $5794: $ad
	rst  $38                                         ; $5795: $ff
	rst  $38                                         ; $5796: $ff
	rst  $38                                         ; $5797: $ff
	db   $db                                         ; $5798: $db
	ld   [hl], h                                     ; $5799: $74
	ld   b, c                                        ; $579a: $41
	ld   [de], a                                     ; $579b: $12
	ld   de, $2411                                   ; $579c: $11 $11 $24
	ld   e, b                                        ; $579f: $58
	sbc  $ff                                         ; $57a0: $de $ff
	rst  $38                                         ; $57a2: $ff
	rst  $38                                         ; $57a3: $ff
	jp   z, $3154                                    ; $57a4: $ca $54 $31

	ld   de, $1111                                   ; $57a7: $11 $11 $11
	dec  [hl]                                        ; $57aa: $35
	ld   l, d                                        ; $57ab: $6a
	cp   $ff                                         ; $57ac: $fe $ff
	rst  $38                                         ; $57ae: $ff
	db   $fd                                         ; $57af: $fd
	cp   b                                           ; $57b0: $b8
	ld   b, h                                        ; $57b1: $44
	ld   de, $1121                                   ; $57b2: $11 $21 $11
	ld   de, $7c45                                   ; $57b5: $11 $45 $7c
	rst  $28                                         ; $57b8: $ef
	rst  $38                                         ; $57b9: $ff
	rst  $38                                         ; $57ba: $ff
	db   $fd                                         ; $57bb: $fd
	or   [hl]                                        ; $57bc: $b6
	ld   b, h                                        ; $57bd: $44
	ld   de, $1111                                   ; $57be: $11 $11 $11
	inc  de                                          ; $57c1: $13
	ld   d, l                                        ; $57c2: $55
	sbc  l                                           ; $57c3: $9d
	rst  $38                                         ; $57c4: $ff
	rst  $38                                         ; $57c5: $ff
	rst  $38                                         ; $57c6: $ff
	db   $ed                                         ; $57c7: $ed
	sub  h                                           ; $57c8: $94
	ld   b, d                                        ; $57c9: $42
	ld   de, $1111                                   ; $57ca: $11 $11 $11
	inc  de                                          ; $57cd: $13
	ld   d, [hl]                                     ; $57ce: $56
	call $ffff                                       ; $57cf: $cd $ff $ff
	rst  $38                                         ; $57d2: $ff
	db   $eb                                         ; $57d3: $eb
	ld   [hl], h                                     ; $57d4: $74
	ld   b, c                                        ; $57d5: $41
	ld   [de], a                                     ; $57d6: $12
	ld   de, $2411                                   ; $57d7: $11 $11 $24
	ld   e, b                                        ; $57da: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57db: $cf
	rst  $38                                         ; $57dc: $ff
	rst  $38                                         ; $57dd: $ff
	rst  $38                                         ; $57de: $ff
	jp   c, Jump_0cf_4174                            ; $57df: $da $74 $41

	ld   de, $0111                                   ; $57e2: $11 $11 $01
	dec  h                                           ; $57e5: $25
	ld   e, b                                        ; $57e6: $58
	sbc  $ff                                         ; $57e7: $de $ff
	rst  $38                                         ; $57e9: $ff
	rst  $38                                         ; $57ea: $ff
	jp   z, $3163                                    ; $57eb: $ca $63 $31

	ld   de, $1111                                   ; $57ee: $11 $11 $11
	dec  h                                           ; $57f1: $25
	ld   e, c                                        ; $57f2: $59
	xor  $ff                                         ; $57f3: $ee $ff
	rst  $38                                         ; $57f5: $ff
	rst  $38                                         ; $57f6: $ff
	reti                                             ; $57f7: $d9


	ld   d, h                                        ; $57f8: $54
	ld   hl, $1111                                   ; $57f9: $21 $11 $11
	ld   bc, $5b45                                   ; $57fc: $01 $45 $5b
	rst  JumpTable                                         ; $57ff: $df
	rst  $38                                         ; $5800: $ff
	rst  $38                                         ; $5801: $ff
	cp   $c8                                         ; $5802: $fe $c8
	ld   b, h                                        ; $5804: $44
	ld   hl, $1111                                   ; $5805: $21 $11 $11
	ld   de, $6b36                                   ; $5808: $11 $36 $6b
	rst  $38                                         ; $580b: $ff
	rst  $38                                         ; $580c: $ff
	rst  $38                                         ; $580d: $ff
	db   $fd                                         ; $580e: $fd
	cp   b                                           ; $580f: $b8
	ld   b, e                                        ; $5810: $43
	ld   de, $1111                                   ; $5811: $11 $11 $11
	ld   de, $6c46                                   ; $5814: $11 $46 $6c
	rst  $38                                         ; $5817: $ff
	rst  $38                                         ; $5818: $ff
	rst  $38                                         ; $5819: $ff
	cp   $c7                                         ; $581a: $fe $c7
	ld   b, e                                        ; $581c: $43
	ld   bc, $1111                                   ; $581d: $01 $11 $11
	ld   de, $7c55                                   ; $5820: $11 $55 $7c
	rst  $38                                         ; $5823: $ff
	rst  $38                                         ; $5824: $ff
	rst  $38                                         ; $5825: $ff
	db   $fd                                         ; $5826: $fd
	rst  ToBoot                                         ; $5827: $c7
	inc  sp                                          ; $5828: $33
	ld   de, $1111                                   ; $5829: $11 $11 $11
	ld   de, $7c46                                   ; $582c: $11 $46 $7c
	rst  $28                                         ; $582f: $ef
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	db   $fd                                         ; $5832: $fd
	rst  ToBoot                                         ; $5833: $c7
	inc  sp                                          ; $5834: $33
	ld   de, $1111                                   ; $5835: $11 $11 $11
	ld   [de], a                                     ; $5838: $12
	ld   b, [hl]                                     ; $5839: $46
	ld   a, h                                        ; $583a: $7c
	rst  $28                                         ; $583b: $ef
	rst  $38                                         ; $583c: $ff
	rst  $38                                         ; $583d: $ff
	db   $fd                                         ; $583e: $fd
	rst  ToBoot                                         ; $583f: $c7
	ld   b, e                                        ; $5840: $43
	ld   de, $1111                                   ; $5841: $11 $11 $11
	ld   [de], a                                     ; $5844: $12
	ld   b, [hl]                                     ; $5845: $46
	ld   a, h                                        ; $5846: $7c
	rst  $38                                         ; $5847: $ff
	rst  $38                                         ; $5848: $ff
	rst  $38                                         ; $5849: $ff
	db   $fd                                         ; $584a: $fd
	rst  ToBoot                                         ; $584b: $c7
	ld   [hl-], a                                    ; $584c: $32
	ld   bc, $1111                                   ; $584d: $01 $11 $11
	ld   [de], a                                     ; $5850: $12
	ld   b, [hl]                                     ; $5851: $46
	ld   a, h                                        ; $5852: $7c
	rst  $38                                         ; $5853: $ff
	rst  $38                                         ; $5854: $ff
	rst  $38                                         ; $5855: $ff
	cp   $b8                                         ; $5856: $fe $b8
	ld   [hl-], a                                    ; $5858: $32
	ld   de, $1111                                   ; $5859: $11 $11 $11
	ld   de, $7b46                                   ; $585c: $11 $46 $7b
	rst  $38                                         ; $585f: $ff
	rst  $38                                         ; $5860: $ff
	rst  $38                                         ; $5861: $ff
	cp   $c8                                         ; $5862: $fe $c8
	ld   [hl-], a                                    ; $5864: $32
	ld   de, $1111                                   ; $5865: $11 $11 $11
	ld   de, $7a37                                   ; $5868: $11 $37 $7a
	rst  $38                                         ; $586b: $ff
	rst  $38                                         ; $586c: $ff
	rst  $38                                         ; $586d: $ff
	cp   $c8                                         ; $586e: $fe $c8
	ld   b, c                                        ; $5870: $41
	ld   de, $1111                                   ; $5871: $11 $11 $11
	ld   [de], a                                     ; $5874: $12
	ld   [hl], $8a                                   ; $5875: $36 $8a
	rst  $38                                         ; $5877: $ff
	rst  $38                                         ; $5878: $ff
	rst  $38                                         ; $5879: $ff
	rst  $38                                         ; $587a: $ff
	ret                                              ; $587b: $c9


	ld   b, d                                        ; $587c: $42
	ld   de, $1111                                   ; $587d: $11 $11 $11
	ld   [de], a                                     ; $5880: $12
	ld   h, $8a                                      ; $5881: $26 $8a
	rst  $38                                         ; $5883: $ff
	rst  $38                                         ; $5884: $ff
	rst  $38                                         ; $5885: $ff
	rst  $38                                         ; $5886: $ff
	jp   z, $1151                                    ; $5887: $ca $51 $11

	ld   de, $1111                                   ; $588a: $11 $11 $11
	ld   [hl], $99                                   ; $588d: $36 $99
	rst  $38                                         ; $588f: $ff
	rst  $38                                         ; $5890: $ff
	rst  $38                                         ; $5891: $ff
	rst  $38                                         ; $5892: $ff
	jp   z, $1141                                    ; $5893: $ca $41 $11

	ld   de, $1111                                   ; $5896: $11 $11 $11
	ld   [hl], $99                                   ; $5899: $36 $99
	rst  $38                                         ; $589b: $ff
	rst  $38                                         ; $589c: $ff
	rst  $38                                         ; $589d: $ff
	rst  $38                                         ; $589e: $ff
	jp   c, $1151                                    ; $589f: $da $51 $11

	ld   de, $1111                                   ; $58a2: $11 $11 $11
	ld   b, l                                        ; $58a5: $45
	sbc  c                                           ; $58a6: $99
	rst  $28                                         ; $58a7: $ef
	rst  $38                                         ; $58a8: $ff
	rst  $38                                         ; $58a9: $ff
	rst  $38                                         ; $58aa: $ff
	jp   z, $1151                                    ; $58ab: $ca $51 $11

	ld   de, $1211                                   ; $58ae: $11 $11 $12
	dec  [hl]                                        ; $58b1: $35
	xor  d                                           ; $58b2: $aa
	rst  $28                                         ; $58b3: $ef
	rst  $38                                         ; $58b4: $ff
	rst  $38                                         ; $58b5: $ff
	rst  $38                                         ; $58b6: $ff
	ld   [$1151], a                                  ; $58b7: $ea $51 $11
	ld   de, $1411                                   ; $58ba: $11 $11 $14
	dec  [hl]                                        ; $58bd: $35
	cp   d                                           ; $58be: $ba
	rst  $28                                         ; $58bf: $ef
	rst  $38                                         ; $58c0: $ff
	rst  $38                                         ; $58c1: $ff
	rst  $38                                         ; $58c2: $ff
	reti                                             ; $58c3: $d9


	ld   b, c                                        ; $58c4: $41
	ld   de, $1111                                   ; $58c5: $11 $11 $11
	inc  d                                           ; $58c8: $14
	ld   b, a                                        ; $58c9: $47
	xor  l                                           ; $58ca: $ad
	rst  $28                                         ; $58cb: $ef
	rst  $38                                         ; $58cc: $ff
	rst  $38                                         ; $58cd: $ff
	rst  $38                                         ; $58ce: $ff
	jp   hl                                          ; $58cf: $e9


	ld   sp, $1111                                   ; $58d0: $31 $11 $11
	ld   de, $4715                                   ; $58d3: $11 $15 $47
	cp   l                                           ; $58d6: $bd
	rst  $28                                         ; $58d7: $ef
	rst  $38                                         ; $58d8: $ff
	rst  $38                                         ; $58d9: $ff
	cp   $d8                                         ; $58da: $fe $d8
	ld   hl, $1111                                   ; $58dc: $21 $11 $11
	ld   hl, $5715                                   ; $58df: $21 $15 $57
	cp   a                                           ; $58e2: $bf
	rst  JumpTable                                         ; $58e3: $df
	rst  $38                                         ; $58e4: $ff
	rst  $38                                         ; $58e5: $ff
	cp   $c8                                         ; $58e6: $fe $c8
	ld   de, $1111                                   ; $58e8: $11 $11 $11
	ld   hl, $6717                                   ; $58eb: $21 $17 $67
	rst  $28                                         ; $58ee: $ef
	rst  $28                                         ; $58ef: $ef
	rst  $38                                         ; $58f0: $ff
	rst  $38                                         ; $58f1: $ff
	cp   $b7                                         ; $58f2: $fe $b7
	ld   de, $1111                                   ; $58f4: $11 $11 $11

Jump_0cf_58f7:
	ld   hl, $5929                                   ; $58f7: $21 $29 $59
	rst  $38                                         ; $58fa: $ff
	rst  $28                                         ; $58fb: $ef
	rst  $38                                         ; $58fc: $ff
	rst  $38                                         ; $58fd: $ff
	db   $fd                                         ; $58fe: $fd
	or   a                                           ; $58ff: $b7
	ld   de, $1111                                   ; $5900: $11 $11 $11
	ld   sp, $892a                                   ; $5903: $31 $2a $89
	rst  $38                                         ; $5906: $ff
	rst  $28                                         ; $5907: $ef
	rst  $38                                         ; $5908: $ff
	rst  $38                                         ; $5909: $ff
	db   $fc                                         ; $590a: $fc
	and  [hl]                                        ; $590b: $a6
	ld   de, $1111                                   ; $590c: $11 $11 $11
	ld   sp, $9c3a                                   ; $590f: $31 $3a $9c
	db   $fc                                         ; $5912: $fc
	rst  $38                                         ; $5913: $ff
	rst  $38                                         ; $5914: $ff
	rst  $38                                         ; $5915: $ff
	db   $fc                                         ; $5916: $fc
	sub  h                                           ; $5917: $94
	ld   de, $1111                                   ; $5918: $11 $11 $11
	add  c                                           ; $591b: $81
	ld   e, e                                        ; $591c: $5b
	sbc  a                                           ; $591d: $9f

jr_0cf_591e:
	cp   $ff                                         ; $591e: $fe $ff
	rst  $38                                         ; $5920: $ff
	rst  JumpTable                                         ; $5921: $df
	ei                                               ; $5922: $fb
	add  e                                           ; $5923: $83
	ld   de, $1111                                   ; $5924: $11 $11 $11
	add  c                                           ; $5927: $81
	sbc  d                                           ; $5928: $9a
	rst  $28                                         ; $5929: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $592a: $cf
	db   $fc                                         ; $592b: $fc
	rst  $38                                         ; $592c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $592d: $cf
	ld   a, [$1161]                                  ; $592e: $fa $61 $11
	ld   de, $b111                                   ; $5931: $11 $11 $b1
	adc  [hl]                                        ; $5934: $8e
	cp   $ff                                         ; $5935: $fe $ff
	rst  JumpTable                                         ; $5937: $df
	rst  $38                                         ; $5938: $ff
	rst  $38                                         ; $5939: $ff
	ld   sp, hl                                      ; $593a: $f9
	ld   b, c                                        ; $593b: $41
	ld   de, $1611                                   ; $593c: $11 $11 $16
	and  h                                           ; $593f: $a4
	xor  e                                           ; $5940: $ab
	rst  $38                                         ; $5941: $ff
	rst  JumpTable                                         ; $5942: $df
	db   $fd                                         ; $5943: $fd
	rst  $38                                         ; $5944: $ff
	rst  $28                                         ; $5945: $ef
	ld   hl, sp+$21                                  ; $5946: $f8 $21
	ld   de, $1911                                   ; $5948: $11 $11 $19
	and  [hl]                                        ; $594b: $a6
	xor  $ff                                         ; $594c: $ee $ff
	rst  $28                                         ; $594e: $ef
	adc  $ff                                         ; $594f: $ce $ff
	rst  $38                                         ; $5951: $ff
	rst  $10                                         ; $5952: $d7
	ld   de, $1111                                   ; $5953: $11 $11 $11
	jr   jr_0cf_591e                                 ; $5956: $18 $c6

	cp   a                                           ; $5958: $bf
	rst  $38                                         ; $5959: $ff
	rst  JumpTable                                         ; $595a: $df
	db   $dd                                         ; $595b: $dd
	rst  $38                                         ; $595c: $ff
	rst  $28                                         ; $595d: $ef
	sub  $11                                         ; $595e: $d6 $11
	ld   de, $1f11                                   ; $5960: $11 $11 $1f
	or   a                                           ; $5963: $b7
	cp   $fe                                         ; $5964: $fe $fe
	rst  $28                                         ; $5966: $ef
	xor  [hl]                                        ; $5967: $ae
	db   $fd                                         ; $5968: $fd
	rst  JumpTable                                         ; $5969: $df
	or   l                                           ; $596a: $b5
	ld   de, $1111                                   ; $596b: $11 $11 $11
	ld   e, $da                                      ; $596e: $1e $da
	rst  $38                                         ; $5970: $ff
	cp   $ef                                         ; $5971: $fe $ef
	cp   [hl]                                        ; $5973: $be
	rst  $38                                         ; $5974: $ff
	rst  $28                                         ; $5975: $ef
	or   h                                           ; $5976: $b4
	ld   de, $2111                                   ; $5977: $11 $11 $21
	rra                                              ; $597a: $1f
	call c, $fcff                                    ; $597b: $dc $ff $fc
	cp   $8f                                         ; $597e: $fe $8f
	cp   $ff                                         ; $5980: $fe $ff
	jp   $1111                                       ; $5982: $c3 $11 $11


	ld   hl, $ce1f                                   ; $5985: $21 $1f $ce
	rst  $38                                         ; $5988: $ff
	ld   a, [$8fec]                                  ; $5989: $fa $ec $8f
	db   $fd                                         ; $598c: $fd
	cp   $91                                         ; $598d: $fe $91
	ld   de, $3111                                   ; $598f: $11 $11 $31
	sbc  a                                           ; $5992: $9f
	cp   a                                           ; $5993: $bf
	rst  $38                                         ; $5994: $ff
	ld   a, [$8fdc]                                  ; $5995: $fa $dc $8f
	db   $fd                                         ; $5998: $fd
	db   $fd                                         ; $5999: $fd
	ld   [hl], c                                     ; $599a: $71
	ld   de, $3111                                   ; $599b: $11 $11 $31
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $599e: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $599f: $cf
	rst  $38                                         ; $59a0: $ff
	ld   hl, sp-$15                                  ; $59a1: $f8 $eb
	xor  a                                           ; $59a3: $af
	db   $fd                                         ; $59a4: $fd
	db   $ed                                         ; $59a5: $ed
	ld   d, c                                        ; $59a6: $51
	ld   de, $4111                                   ; $59a7: $11 $11 $41
	rst  $38                                         ; $59aa: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59ab: $cf
	rst  $28                                         ; $59ac: $ef
	sub  $f9                                         ; $59ad: $d6 $f9
	cp   a                                           ; $59af: $bf
	db   $fd                                         ; $59b0: $fd
	db   $ec                                         ; $59b1: $ec
	ld   d, c                                        ; $59b2: $51
	ld   de, $4111                                   ; $59b3: $11 $11 $41
	rst  $38                                         ; $59b6: $ff
	rst  JumpTable                                         ; $59b7: $df
	rst  $28                                         ; $59b8: $ef
	rst  $10                                         ; $59b9: $d7
	cp   c                                           ; $59ba: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59bb: $cf
	db   $fc                                         ; $59bc: $fc
	ld   a, [$1121]                                  ; $59bd: $fa $21 $11
	rla                                              ; $59c0: $17
	inc  de                                          ; $59c1: $13
	rst  $38                                         ; $59c2: $ff
	rst  $38                                         ; $59c3: $ff
	rst  $28                                         ; $59c4: $ef
	adc  b                                           ; $59c5: $88
	reti                                             ; $59c6: $d9


	rst  $38                                         ; $59c7: $ff
	db   $fd                                         ; $59c8: $fd
	ret  c                                           ; $59c9: $d8

	ld   de, $1a11                                   ; $59ca: $11 $11 $1a
	jr   @+$01                                       ; $59cd: $18 $ff

	cp   $bf                                         ; $59cf: $fe $bf
	ld   d, [hl]                                     ; $59d1: $56
	rst  ToBoot                                         ; $59d2: $c7
	rst  $38                                         ; $59d3: $ff
	rst  $28                                         ; $59d4: $ef
	rst  $10                                         ; $59d5: $d7
	ld   de, $1b11                                   ; $59d6: $11 $11 $1b
	ld   d, h                                        ; $59d9: $54
	rst  $38                                         ; $59da: $ff
	db   $dd                                         ; $59db: $dd
	sbc  [hl]                                        ; $59dc: $9e
	ld   [hl], h                                     ; $59dd: $74
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	db   $fc                                         ; $59e0: $fc
	add  e                                           ; $59e1: $83

Jump_0cf_59e2:
	ld   de, $2c11                                   ; $59e2: $11 $11 $2c
	rra                                              ; $59e5: $1f
	rst  $38                                         ; $59e6: $ff
	ld   [$18fa], a                                  ; $59e7: $ea $fa $18
	jp   z, $ffff                                    ; $59ea: $ca $ff $ff

	sub  [hl]                                        ; $59ed: $96
	ld   de, $1f11                                   ; $59ee: $11 $11 $1f
	inc  e                                           ; $59f1: $1c
	rst  $38                                         ; $59f2: $ff
	di                                               ; $59f3: $f3
	xor  a                                           ; $59f4: $af
	dec  d                                           ; $59f5: $15
	rst  $38                                         ; $59f6: $ff
	rst  $38                                         ; $59f7: $ff
	db   $fd                                         ; $59f8: $fd
	ld   sp, $1111                                   ; $59f9: $31 $11 $11
	ld   l, a                                        ; $59fc: $6f
	rra                                              ; $59fd: $1f
	rst  $38                                         ; $59fe: $ff
	rst  $20                                         ; $59ff: $e7
	rst  ToBoot                                         ; $5a00: $c7
	ld   a, [de]                                     ; $5a01: $1a
	jp   c, $feff                                    ; $5a02: $da $ff $fe

	add  l                                           ; $5a05: $85
	ld   de, $1f11                                   ; $5a06: $11 $11 $1f
	adc  a                                           ; $5a09: $8f
	rst  $38                                         ; $5a0a: $ff
	pop  af                                          ; $5a0b: $f1
	ld   a, e                                        ; $5a0c: $7b
	inc  de                                          ; $5a0d: $13
	rst  $38                                         ; $5a0e: $ff
	rst  $38                                         ; $5a0f: $ff
	db   $fd                                         ; $5a10: $fd
	ld   hl, $1111                                   ; $5a11: $21 $11 $11
	ld   l, a                                        ; $5a14: $6f
	ld   c, a                                        ; $5a15: $4f
	rst  $38                                         ; $5a16: $ff
	pop  de                                          ; $5a17: $d1
	sub  l                                           ; $5a18: $95
	add  hl, de                                      ; $5a19: $19
	db   $fd                                         ; $5a1a: $fd
	rst  $38                                         ; $5a1b: $ff
	cp   $32                                         ; $5a1c: $fe $32
	ld   de, $1f11                                   ; $5a1e: $11 $11 $1f
	ld   l, a                                        ; $5a21: $6f
	rst  $38                                         ; $5a22: $ff
	pop  af                                          ; $5a23: $f1
	ld   e, d                                        ; $5a24: $5a
	inc  de                                          ; $5a25: $13
	rst  $38                                         ; $5a26: $ff
	rst  $38                                         ; $5a27: $ff
	rst  $38                                         ; $5a28: $ff
	ld   de, $1111                                   ; $5a29: $11 $11 $11
	adc  a                                           ; $5a2c: $8f
	ld   a, a                                        ; $5a2d: $7f
	rst  $38                                         ; $5a2e: $ff
	pop  af                                          ; $5a2f: $f1
	ld   h, [hl]                                     ; $5a30: $66
	jr   @+$01                                       ; $5a31: $18 $ff

	rst  $38                                         ; $5a33: $ff
	cp   $21                                         ; $5a34: $fe $21
	ld   de, $1f11                                   ; $5a36: $11 $11 $1f
	rst  $28                                         ; $5a39: $ef
	rst  $38                                         ; $5a3a: $ff
	pop  af                                          ; $5a3b: $f1
	inc  l                                           ; $5a3c: $2c
	ld   [de], a                                     ; $5a3d: $12
	rst  $28                                         ; $5a3e: $ef
	rst  $38                                         ; $5a3f: $ff
	cp   $11                                         ; $5a40: $fe $11
	ld   de, $4f11                                   ; $5a42: $11 $11 $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a45: $cf
	rst  $38                                         ; $5a46: $ff
	and  c                                           ; $5a47: $a1
	inc  d                                           ; $5a48: $14
	jr   @+$01                                       ; $5a49: $18 $ff

	rst  $38                                         ; $5a4b: $ff
	db   $fc                                         ; $5a4c: $fc
	ld   de, $1111                                   ; $5a4d: $11 $11 $11
	rra                                              ; $5a50: $1f
	db   $fc                                         ; $5a51: $fc
	rst  $38                                         ; $5a52: $ff
	or   c                                           ; $5a53: $b1
	rra                                              ; $5a54: $1f
	ld   de, $ffff                                   ; $5a55: $11 $ff $ff
	rst  $38                                         ; $5a58: $ff
	ld   de, $1111                                   ; $5a59: $11 $11 $11
	rra                                              ; $5a5c: $1f
	rst  $38                                         ; $5a5d: $ff
	rst  $38                                         ; $5a5e: $ff
	sub  c                                           ; $5a5f: $91
	rra                                              ; $5a60: $1f
	ld   [de], a                                     ; $5a61: $12
	rst  $38                                         ; $5a62: $ff
	rst  $38                                         ; $5a63: $ff
	ld   a, [$1111]                                  ; $5a64: $fa $11 $11
	ld   de, $f11f                                   ; $5a67: $11 $1f $f1
	rst  $38                                         ; $5a6a: $ff
	pop  af                                          ; $5a6b: $f1
	rra                                              ; $5a6c: $1f
	ld   de, $ffef                                   ; $5a6d: $11 $ef $ff
	rst  $38                                         ; $5a70: $ff
	ld   de, $1111                                   ; $5a71: $11 $11 $11
	rra                                              ; $5a74: $1f
	rst  $30                                         ; $5a75: $f7
	rst  $38                                         ; $5a76: $ff
	pop  af                                          ; $5a77: $f1
	dec  e                                           ; $5a78: $1d
	sub  c                                           ; $5a79: $91
	cp   a                                           ; $5a7a: $bf
	rst  $38                                         ; $5a7b: $ff
	db   $fc                                         ; $5a7c: $fc
	ld   de, $1111                                   ; $5a7d: $11 $11 $11
	rra                                              ; $5a80: $1f
	pop  af                                          ; $5a81: $f1
	rst  $38                                         ; $5a82: $ff
	pop  af                                          ; $5a83: $f1
	rra                                              ; $5a84: $1f
	ld   h, c                                        ; $5a85: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a86: $cf
	rst  $38                                         ; $5a87: $ff
	db   $fd                                         ; $5a88: $fd
	ld   de, $1111                                   ; $5a89: $11 $11 $11
	rra                                              ; $5a8c: $1f
	di                                               ; $5a8d: $f3
	rst  $38                                         ; $5a8e: $ff
	or   c                                           ; $5a8f: $b1
	rra                                              ; $5a90: $1f
	add  c                                           ; $5a91: $81
	rst  $38                                         ; $5a92: $ff
	rst  $38                                         ; $5a93: $ff
	jp   z, $1111                                    ; $5a94: $ca $11 $11

	ld   de, $f11f                                   ; $5a97: $11 $1f $f1
	rst  $38                                         ; $5a9a: $ff
	pop  bc                                          ; $5a9b: $c1
	rra                                              ; $5a9c: $1f
	and  c                                           ; $5a9d: $a1
	rst  JumpTable                                         ; $5a9e: $df
	rst  $38                                         ; $5a9f: $ff
	rst  $38                                         ; $5aa0: $ff
	ld   de, $1111                                   ; $5aa1: $11 $11 $11
	rra                                              ; $5aa4: $1f
	pop  af                                          ; $5aa5: $f1
	rst  $38                                         ; $5aa6: $ff
	pop  bc                                          ; $5aa7: $c1
	ld   e, $a1                                      ; $5aa8: $1e $a1
	cp   a                                           ; $5aaa: $bf
	rst  $38                                         ; $5aab: $ff
	rst  $38                                         ; $5aac: $ff
	ld   hl, $1111                                   ; $5aad: $21 $11 $11
	ld   de, $3ffd                                   ; $5ab0: $11 $fd $3f
	push af                                          ; $5ab3: $f5
	ld   [de], a                                     ; $5ab4: $12
	pop  af                                          ; $5ab5: $f1
	ld   c, a                                        ; $5ab6: $4f
	rst  $38                                         ; $5ab7: $ff
	rst  $38                                         ; $5ab8: $ff
	pop  bc                                          ; $5ab9: $c1
	ld   de, $1111                                   ; $5aba: $11 $11 $11
	rst  $38                                         ; $5abd: $ff
	rra                                              ; $5abe: $1f
	ld   a, [$f111]                                  ; $5abf: $fa $11 $f1
	rra                                              ; $5ac2: $1f
	rst  $38                                         ; $5ac3: $ff
	rst  $38                                         ; $5ac4: $ff
	pop  af                                          ; $5ac5: $f1
	inc  d                                           ; $5ac6: $14
	ld   de, $5f11                                   ; $5ac7: $11 $11 $5f
	rra                                              ; $5aca: $1f
	ld   a, [$fe31]                                  ; $5acb: $fa $31 $fe
	jr   @+$01                                       ; $5ace: $18 $ff

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ad0: $cf
	ei                                               ; $5ad1: $fb
	inc  de                                          ; $5ad2: $13
	ld   de, $1f11                                   ; $5ad3: $11 $11 $1f
	pop  af                                          ; $5ad6: $f1
	rst  $38                                         ; $5ad7: $ff
	and  c                                           ; $5ad8: $a1
	rra                                              ; $5ad9: $1f
	ld   de, $fdff                                   ; $5ada: $11 $ff $fd
	rst  $38                                         ; $5add: $ff
	ld   de, $1181                                   ; $5ade: $11 $81 $11
	ld   de, $1fff                                   ; $5ae1: $11 $ff $1f
	db   $fc                                         ; $5ae4: $fc
	ld   de, $1ff1                                   ; $5ae5: $11 $f1 $1f
	rst  $38                                         ; $5ae8: $ff
	rst  JumpTable                                         ; $5ae9: $df
	pop  af                                          ; $5aea: $f1
	jr   jr_0cf_5aff                                 ; $5aeb: $18 $12

	ld   de, $f11f                                   ; $5aed: $11 $1f $f1
	db   $fd                                         ; $5af0: $fd
	pop  bc                                          ; $5af1: $c1
	rra                                              ; $5af2: $1f
	ld   d, $ff                                      ; $5af3: $16 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5af5: $cf
	db   $fc                                         ; $5af6: $fc
	ld   de, $61a1                                   ; $5af7: $11 $a1 $61
	ld   de, $1fff                                   ; $5afa: $11 $ff $1f
	cp   $11                                         ; $5afd: $fe $11

jr_0cf_5aff:
	pop  af                                          ; $5aff: $f1
	rra                                              ; $5b00: $1f
	db   $fd                                         ; $5b01: $fd
	cp   a                                           ; $5b02: $bf
	ldh  [c], a                                      ; $5b03: $e2
	dec  e                                           ; $5b04: $1d
	ld   d, $31                                      ; $5b05: $16 $31
	rra                                              ; $5b07: $1f
	pop  af                                          ; $5b08: $f1
	rst  $38                                         ; $5b09: $ff
	pop  bc                                          ; $5b0a: $c1
	rra                                              ; $5b0b: $1f
	ld   de, $f7ff                                   ; $5b0c: $11 $ff $f7
	cp   $51                                         ; $5b0f: $fe $51
	or   h                                           ; $5b11: $b4
	ld   h, a                                        ; $5b12: $67
	ld   sp, $111f                                   ; $5b13: $31 $1f $11
	db   $fd                                         ; $5b16: $fd
	add  c                                           ; $5b17: $81
	xor  a                                           ; $5b18: $af
	rla                                              ; $5b19: $17
	rst  $38                                         ; $5b1a: $ff
	ld   a, h                                        ; $5b1b: $7c
	rst  $30                                         ; $5b1c: $f7
	ld   d, $a4                                      ; $5b1d: $16 $a4
	or   a                                           ; $5b1f: $b7
	ld   de, $1fff                                   ; $5b20: $11 $ff $1f
	ld   a, [$f411]                                  ; $5b23: $fa $11 $f4
	rra                                              ; $5b26: $1f
	rst  $38                                         ; $5b27: $ff
	ld   c, a                                        ; $5b28: $4f
	db   $d3                                         ; $5b29: $d3
	ld   e, $89                                      ; $5b2a: $1e $89
	rst  $10                                         ; $5b2c: $d7
	ld   de, $1fff                                   ; $5b2d: $11 $ff $1f
	ei                                               ; $5b30: $fb
	ld   de, $1ff1                                   ; $5b31: $11 $f1 $1f
	cp   $1f                                         ; $5b34: $fe $1f
	pop  af                                          ; $5b36: $f1
	rra                                              ; $5b37: $1f
	ld   a, b                                        ; $5b38: $78
	ei                                               ; $5b39: $fb
	ld   de, $1fff                                   ; $5b3a: $11 $ff $1f
	ld   a, [$f111]                                  ; $5b3d: $fa $11 $f1
	rra                                              ; $5b40: $1f
	ei                                               ; $5b41: $fb
	rra                                              ; $5b42: $1f
	pop  af                                          ; $5b43: $f1
	rra                                              ; $5b44: $1f
	sub  a                                           ; $5b45: $97
	rst  $38                                         ; $5b46: $ff
	ld   de, $311f                                   ; $5b47: $11 $1f $31
	rst  $38                                         ; $5b4a: $ff
	ld   b, c                                        ; $5b4b: $41
	sbc  a                                           ; $5b4c: $9f
	inc  de                                          ; $5b4d: $13
	rst  $38                                         ; $5b4e: $ff
	ld   e, [hl]                                     ; $5b4f: $5e
	db   $fc                                         ; $5b50: $fc
	add  hl, de                                      ; $5b51: $19
	di                                               ; $5b52: $f3
	db   $ed                                         ; $5b53: $ed
	pop  bc                                          ; $5b54: $c1
	ld   de, $1ff1                                   ; $5b55: $11 $f1 $1f
	or   [hl]                                        ; $5b58: $b6
	rra                                              ; $5b59: $1f
	pop  af                                          ; $5b5a: $f1
	ld   a, a                                        ; $5b5b: $7f
	ldh  a, [c]                                      ; $5b5c: $f2
	rst  $38                                         ; $5b5d: $ff
	sub  c                                           ; $5b5e: $91
	ld   a, e                                        ; $5b5f: $7b
	ld   c, h                                        ; $5b60: $4c
	call z, $1f11                                    ; $5b61: $cc $11 $1f
	or   c                                           ; $5b64: $b1
	rst  $38                                         ; $5b65: $ff
	ld   sp, $127f                                   ; $5b66: $31 $7f $12
	rst  $38                                         ; $5b69: $ff
	ld   c, c                                        ; $5b6a: $49
	db   $fc                                         ; $5b6b: $fc
	add  hl, de                                      ; $5b6c: $19
	jp   $f68e                                       ; $5b6d: $c3 $8e $f6


	ld   de, $131f                                   ; $5b70: $11 $1f $13
	db   $fc                                         ; $5b73: $fc
	sub  c                                           ; $5b74: $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b75: $cf
	ld   d, $da                                      ; $5b76: $16 $da
	ld   c, c                                        ; $5b78: $49
	xor  $59                                         ; $5b79: $ee $59
	jp   $f68f                                       ; $5b7b: $c3 $8f $f6


	ld   h, c                                        ; $5b7e: $61
	ld   [de], a                                     ; $5b7f: $12
	pop  af                                          ; $5b80: $f1
	cp   a                                           ; $5b81: $bf
	or   $1f                                         ; $5b82: $f6 $1f
	add  c                                           ; $5b84: $81
	ld   l, l                                        ; $5b85: $6d
	sub  e                                           ; $5b86: $93
	adc  $b7                                         ; $5b87: $ce $b7
	ret  z                                           ; $5b89: $c8

	adc  b                                           ; $5b8a: $88
	xor  d                                           ; $5b8b: $aa
	adc  c                                           ; $5b8c: $89
	ld   de, $183f                                   ; $5b8d: $11 $3f $18
	db   $fc                                         ; $5b90: $fc
	sub  c                                           ; $5b91: $91
	ld   a, [$8b18]                                  ; $5b92: $fa $18 $8b
	ld   c, c                                        ; $5b95: $49
	ld   sp, hl                                      ; $5b96: $f9
	ld   l, d                                        ; $5b97: $6a
	or   a                                           ; $5b98: $b7
	ld   l, e                                        ; $5b99: $6b
	rst  $10                                         ; $5b9a: $d7
	sbc  c                                           ; $5b9b: $99
	ld   b, c                                        ; $5b9c: $41
	rra                                              ; $5b9d: $1f
	and  c                                           ; $5b9e: $a1
	rst  $38                                         ; $5b9f: $ff
	add  c                                           ; $5ba0: $81
	ld   l, a                                        ; $5ba1: $6f
	ld   [de], a                                     ; $5ba2: $12
	db   $fd                                         ; $5ba3: $fd
	ld   b, h                                        ; $5ba4: $44
	ld   a, [$e618]                                  ; $5ba5: $fa $18 $e6
	ld   l, [hl]                                     ; $5ba8: $6e
	or   $7b                                         ; $5ba9: $f6 $7b
	add  c                                           ; $5bab: $81
	ld   de, $1d1f                                   ; $5bac: $11 $1f $1d
	ei                                               ; $5baf: $fb
	sub  c                                           ; $5bb0: $91
	pop  hl                                          ; $5bb1: $e1
	inc  e                                           ; $5bb2: $1c
	rst  $30                                         ; $5bb3: $f7
	sbc  a                                           ; $5bb4: $9f
	call nc, $211f                                   ; $5bb5: $d4 $1f $21
	adc  a                                           ; $5bb8: $8f
	db   $f4                                         ; $5bb9: $f4
	db   $fd                                         ; $5bba: $fd
	ld   sp, $1426                                   ; $5bbb: $31 $26 $14
	ld   [hl], $fc                                   ; $5bbe: $36 $fc
	ld   l, a                                        ; $5bc0: $6f
	ld   l, e                                        ; $5bc1: $6b
	ld   [de], a                                     ; $5bc2: $12
	and  c                                           ; $5bc3: $a1
	ld   h, d                                        ; $5bc4: $62
	rst  $38                                         ; $5bc5: $ff
	ld   l, a                                        ; $5bc6: $6f
	pop  bc                                          ; $5bc7: $c1
	ld   sp, $7f85                                   ; $5bc8: $31 $85 $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bcb: $cf
	db   $ec                                         ; $5bcc: $ec
	ld   d, e                                        ; $5bcd: $53
	ld   [hl-], a                                    ; $5bce: $32
	dec  d                                           ; $5bcf: $15
	or   d                                           ; $5bd0: $b2
	rra                                              ; $5bd1: $1f
	pop  af                                          ; $5bd2: $f1
	ldh  a, [c]                                      ; $5bd3: $f2
	sub  c                                           ; $5bd4: $91
	ld   c, a                                        ; $5bd5: $4f
	rra                                              ; $5bd6: $1f
	xor  a                                           ; $5bd7: $af
	ld   de, $126c                                   ; $5bd8: $11 $6c $12
	db   $f4                                         ; $5bdb: $f4
	push de                                          ; $5bdc: $d5
	ld   sp, hl                                      ; $5bdd: $f9
	inc  e                                           ; $5bde: $1c
	ld   d, a                                        ; $5bdf: $57
	ld   e, $98                                      ; $5be0: $1e $98
	sbc  h                                           ; $5be2: $9c
	sub  l                                           ; $5be3: $95
	ld   [hl], c                                     ; $5be4: $71
	ld   e, d                                        ; $5be5: $5a
	sub  [hl]                                        ; $5be6: $96
	ld   a, [$78b6]                                  ; $5be7: $fa $b6 $78
	dec  d                                           ; $5bea: $15
	ld   c, a                                        ; $5beb: $4f
	xor  d                                           ; $5bec: $aa
	ld   sp, hl                                      ; $5bed: $f9
	add  e                                           ; $5bee: $83
	ld   d, [hl]                                     ; $5bef: $56
	ld   c, b                                        ; $5bf0: $48
	jp   z, $7d93                                    ; $5bf1: $ca $93 $7d

	rla                                              ; $5bf4: $17
	sub  $74                                         ; $5bf5: $d6 $74
	jp   z, $976f                                    ; $5bf7: $ca $6f $97

	ld   [hl], a                                     ; $5bfa: $77
	ld   h, d                                        ; $5bfb: $62
	halt                                             ; $5bfc: $76
	xor  l                                           ; $5bfd: $ad
	ld   e, a                                        ; $5bfe: $5f
	and  h                                           ; $5bff: $a4
	add  d                                           ; $5c00: $82
	or   h                                           ; $5c01: $b4
	ld   a, h                                        ; $5c02: $7c
	sbc  e                                           ; $5c03: $9b
	xor  d                                           ; $5c04: $aa
	ld   h, a                                        ; $5c05: $67
	ld   h, a                                        ; $5c06: $67
	ld   b, a                                        ; $5c07: $47
	and  [hl]                                        ; $5c08: $a6
	cp   [hl]                                        ; $5c09: $be
	ld   a, c                                        ; $5c0a: $79
	and  e                                           ; $5c0b: $a3
	ld   h, d                                        ; $5c0c: $62
	xor  c                                           ; $5c0d: $a9
	ld   a, l                                        ; $5c0e: $7d
	xor  h                                           ; $5c0f: $ac
	ld   l, c                                        ; $5c10: $69
	ld   d, h                                        ; $5c11: $54
	ld   b, a                                        ; $5c12: $47
	cp   c                                           ; $5c13: $b9
	xor  h                                           ; $5c14: $ac
	and  [hl]                                        ; $5c15: $a6
	halt                                             ; $5c16: $76
	ld   d, d                                        ; $5c17: $52
	ld   d, l                                        ; $5c18: $55
	rst  $20                                         ; $5c19: $e7
	xor  a                                           ; $5c1a: $af
	ld   e, e                                        ; $5c1b: $5b
	jr   c, jr_0cf_5c70                              ; $5c1c: $38 $52

	or   [hl]                                        ; $5c1e: $b6
	cp   b                                           ; $5c1f: $b8
	jp   z, $8588                                    ; $5c20: $ca $88 $85

	ld   e, b                                        ; $5c23: $58
	ld   l, c                                        ; $5c24: $69
	ld   a, h                                        ; $5c25: $7c
	sbc  b                                           ; $5c26: $98
	halt                                             ; $5c27: $76
	pop  de                                          ; $5c28: $d1
	ld   l, l                                        ; $5c29: $6d
	ld   c, c                                        ; $5c2a: $49
	ld   l, h                                        ; $5c2b: $6c
	sub  h                                           ; $5c2c: $94
	add  $75                                         ; $5c2d: $c6 $75
	adc  b                                           ; $5c2f: $88
	ld   l, c                                        ; $5c30: $69
	sbc  c                                           ; $5c31: $99
	ld   a, e                                        ; $5c32: $7b
	adc  b                                           ; $5c33: $88
	ld   [hl], a                                     ; $5c34: $77
	halt                                             ; $5c35: $76
	sbc  b                                           ; $5c36: $98
	and  a                                           ; $5c37: $a7
	ld   [hl], l                                     ; $5c38: $75
	xor  c                                           ; $5c39: $a9
	ld   c, h                                        ; $5c3a: $4c
	ld   a, b                                        ; $5c3b: $78
	add  a                                           ; $5c3c: $87
	or   h                                           ; $5c3d: $b4
	adc  b                                           ; $5c3e: $88
	ld   a, b                                        ; $5c3f: $78
	ld   a, d                                        ; $5c40: $7a
	adc  b                                           ; $5c41: $88
	xor  b                                           ; $5c42: $a8
	ld   a, b                                        ; $5c43: $78
	ld   a, b                                        ; $5c44: $78
	ld   a, b                                        ; $5c45: $78
	sub  a                                           ; $5c46: $97
	ld   a, e                                        ; $5c47: $7b
	and  h                                           ; $5c48: $a4
	cp   b                                           ; $5c49: $b8
	ld   e, b                                        ; $5c4a: $58
	ld   l, d                                        ; $5c4b: $6a
	ld   l, b                                        ; $5c4c: $68
	cp   b                                           ; $5c4d: $b8
	ld   a, c                                        ; $5c4e: $79
	sub  a                                           ; $5c4f: $97
	ld   a, b                                        ; $5c50: $78
	sub  [hl]                                        ; $5c51: $96
	sbc  c                                           ; $5c52: $99
	adc  b                                           ; $5c53: $88
	sbc  c                                           ; $5c54: $99
	ld   h, a                                        ; $5c55: $67
	add  a                                           ; $5c56: $87
	ld   a, b                                        ; $5c57: $78
	xor  c                                           ; $5c58: $a9
	adc  c                                           ; $5c59: $89
	sbc  b                                           ; $5c5a: $98
	add  a                                           ; $5c5b: $87
	ld   [hl], a                                     ; $5c5c: $77
	ld   a, b                                        ; $5c5d: $78
	adc  b                                           ; $5c5e: $88
	ld   a, b                                        ; $5c5f: $78
	cp   b                                           ; $5c60: $b8
	ld   e, d                                        ; $5c61: $5a
	ld   [hl], l                                     ; $5c62: $75
	adc  c                                           ; $5c63: $89
	and  a                                           ; $5c64: $a7
	sbc  d                                           ; $5c65: $9a
	ld   [hl], a                                     ; $5c66: $77
	adc  c                                           ; $5c67: $89
	ld   [hl], a                                     ; $5c68: $77
	sbc  c                                           ; $5c69: $99
	ld   a, c                                        ; $5c6a: $79
	sbc  b                                           ; $5c6b: $98
	ld   a, b                                        ; $5c6c: $78
	add  a                                           ; $5c6d: $87
	ld   a, b                                        ; $5c6e: $78
	adc  b                                           ; $5c6f: $88

jr_0cf_5c70:
	adc  c                                           ; $5c70: $89
	sub  a                                           ; $5c71: $97
	sub  a                                           ; $5c72: $97
	ld   a, b                                        ; $5c73: $78
	ld   a, b                                        ; $5c74: $78
	ld   a, b                                        ; $5c75: $78
	sbc  c                                           ; $5c76: $99
	adc  c                                           ; $5c77: $89
	add  a                                           ; $5c78: $87
	ld   [hl], a                                     ; $5c79: $77
	sbc  b                                           ; $5c7a: $98
	ld   a, b                                        ; $5c7b: $78
	sbc  b                                           ; $5c7c: $98
	sbc  b                                           ; $5c7d: $98
	adc  b                                           ; $5c7e: $88
	halt                                             ; $5c7f: $76
	adc  c                                           ; $5c80: $89
	ld   a, b                                        ; $5c81: $78
	cp   b                                           ; $5c82: $b8
	ld   a, b                                        ; $5c83: $78
	add  a                                           ; $5c84: $87
	ld   a, b                                        ; $5c85: $78
	sbc  b                                           ; $5c86: $98
	adc  c                                           ; $5c87: $89
	sub  a                                           ; $5c88: $97
	ld   a, b                                        ; $5c89: $78
	adc  b                                           ; $5c8a: $88
	adc  b                                           ; $5c8b: $88
	sbc  b                                           ; $5c8c: $98
	sbc  b                                           ; $5c8d: $98
	ld   [hl], a                                     ; $5c8e: $77
	ld   a, b                                        ; $5c8f: $78
	adc  b                                           ; $5c90: $88
	sbc  c                                           ; $5c91: $99
	sbc  b                                           ; $5c92: $98
	adc  b                                           ; $5c93: $88
	ld   [hl], a                                     ; $5c94: $77
	adc  b                                           ; $5c95: $88
	adc  c                                           ; $5c96: $89
	sbc  c                                           ; $5c97: $99
	adc  b                                           ; $5c98: $88
	add  a                                           ; $5c99: $87
	add  a                                           ; $5c9a: $87
	adc  b                                           ; $5c9b: $88
	adc  b                                           ; $5c9c: $88
	sbc  c                                           ; $5c9d: $99
	adc  b                                           ; $5c9e: $88
	adc  b                                           ; $5c9f: $88
	add  a                                           ; $5ca0: $87
	adc  b                                           ; $5ca1: $88
	adc  c                                           ; $5ca2: $89
	sbc  c                                           ; $5ca3: $99
	adc  b                                           ; $5ca4: $88
	add  a                                           ; $5ca5: $87
	ld   a, b                                        ; $5ca6: $78
	adc  b                                           ; $5ca7: $88
	adc  b                                           ; $5ca8: $88
	sbc  b                                           ; $5ca9: $98
	adc  b                                           ; $5caa: $88
	add  a                                           ; $5cab: $87
	adc  b                                           ; $5cac: $88
	adc  c                                           ; $5cad: $89
	sbc  b                                           ; $5cae: $98
	sbc  c                                           ; $5caf: $99
	adc  b                                           ; $5cb0: $88
	ld   [hl], a                                     ; $5cb1: $77
	adc  b                                           ; $5cb2: $88
	adc  c                                           ; $5cb3: $89
	adc  b                                           ; $5cb4: $88
	adc  b                                           ; $5cb5: $88
	add  a                                           ; $5cb6: $87
	ld   a, b                                        ; $5cb7: $78
	adc  b                                           ; $5cb8: $88
	sbc  c                                           ; $5cb9: $99
	sbc  b                                           ; $5cba: $98
	adc  b                                           ; $5cbb: $88
	ld   a, b                                        ; $5cbc: $78
	adc  b                                           ; $5cbd: $88
	adc  b                                           ; $5cbe: $88
	adc  b                                           ; $5cbf: $88
	sbc  b                                           ; $5cc0: $98
	adc  b                                           ; $5cc1: $88
	adc  b                                           ; $5cc2: $88
	ld   a, b                                        ; $5cc3: $78
	adc  b                                           ; $5cc4: $88
	sbc  b                                           ; $5cc5: $98
	adc  b                                           ; $5cc6: $88
	adc  b                                           ; $5cc7: $88
	adc  b                                           ; $5cc8: $88
	adc  b                                           ; $5cc9: $88
	adc  b                                           ; $5cca: $88
	adc  c                                           ; $5ccb: $89
	adc  b                                           ; $5ccc: $88
	adc  b                                           ; $5ccd: $88
	adc  b                                           ; $5cce: $88
	adc  b                                           ; $5ccf: $88
	adc  c                                           ; $5cd0: $89
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
	add  c                                           ; $5cfa: $81
	ld   de, $1111                                   ; $5cfb: $11 $11 $11
	ld   de, $1111                                   ; $5cfe: $11 $11 $11
	ld   de, $1111                                   ; $5d01: $11 $11 $11
	ld   de, $0011                                   ; $5d04: $11 $11 $00
	ld   c, b                                        ; $5d07: $48
	ld   de, $1111                                   ; $5d08: $11 $11 $11
	ld   de, $1111                                   ; $5d0b: $11 $11 $11
	ld   de, $1111                                   ; $5d0e: $11 $11 $11
	ld   de, $5413                                   ; $5d11: $11 $13 $54
	ld   d, h                                        ; $5d14: $54
	ld   d, h                                        ; $5d15: $54
	ld   b, c                                        ; $5d16: $41
	rra                                              ; $5d17: $1f
	rst  $38                                         ; $5d18: $ff
	pop  af                                          ; $5d19: $f1
	ld   de, $1311                                   ; $5d1a: $11 $11 $13
	pop  hl                                          ; $5d1d: $e1
	ld   de, $d11c                                   ; $5d1e: $11 $1c $d1
	db   $ec                                         ; $5d21: $ec
	pop  de                                          ; $5d22: $d1
	pop  hl                                          ; $5d23: $e1
	ld   de, $1111                                   ; $5d24: $11 $11 $11
	ld   de, $1111                                   ; $5d27: $11 $11 $11
	ld   de, $1111                                   ; $5d2a: $11 $11 $11
	ld   de, $1111                                   ; $5d2d: $11 $11 $11
	ld   de, $5411                                   ; $5d30: $11 $11 $54
	ld   b, h                                        ; $5d33: $44
	db   $d3                                         ; $5d34: $d3
	ld   de, $5454                                   ; $5d35: $11 $54 $54
	ld   h, a                                        ; $5d38: $67
	ld   [hl], d                                     ; $5d39: $72
	ld   de, $1111                                   ; $5d3a: $11 $11 $11
	ld   de, $1112                                   ; $5d3d: $11 $12 $11
	ld   [de], a                                     ; $5d40: $12
	ld   de, $1111                                   ; $5d41: $11 $11 $11
	ld   h, [hl]                                     ; $5d44: $66
	halt                                             ; $5d45: $76
	jp   $8811                                       ; $5d46: $c3 $11 $88


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
	adc  c                                           ; $5d76: $89
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
	sbc  b                                           ; $5d83: $98
	adc  b                                           ; $5d84: $88
	adc  b                                           ; $5d85: $88
	ld   a, b                                        ; $5d86: $78
	adc  b                                           ; $5d87: $88
	adc  b                                           ; $5d88: $88
	adc  b                                           ; $5d89: $88
	adc  b                                           ; $5d8a: $88
	adc  b                                           ; $5d8b: $88
	adc  b                                           ; $5d8c: $88
	adc  b                                           ; $5d8d: $88
	sbc  b                                           ; $5d8e: $98
	adc  b                                           ; $5d8f: $88
	adc  b                                           ; $5d90: $88
	adc  b                                           ; $5d91: $88
	adc  b                                           ; $5d92: $88
	adc  b                                           ; $5d93: $88
	adc  b                                           ; $5d94: $88
	adc  b                                           ; $5d95: $88
	adc  b                                           ; $5d96: $88
	adc  b                                           ; $5d97: $88
	sbc  b                                           ; $5d98: $98
	adc  b                                           ; $5d99: $88
	adc  b                                           ; $5d9a: $88
	adc  b                                           ; $5d9b: $88
	adc  b                                           ; $5d9c: $88
	adc  b                                           ; $5d9d: $88
	adc  c                                           ; $5d9e: $89
	adc  b                                           ; $5d9f: $88
	adc  b                                           ; $5da0: $88
	adc  b                                           ; $5da1: $88
	adc  b                                           ; $5da2: $88
	adc  b                                           ; $5da3: $88
	adc  b                                           ; $5da4: $88
	adc  b                                           ; $5da5: $88

Call_0cf_5da6:
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
	add  a                                           ; $5dc4: $87
	adc  b                                           ; $5dc5: $88
	adc  c                                           ; $5dc6: $89
	adc  b                                           ; $5dc7: $88
	adc  b                                           ; $5dc8: $88
	ld   a, b                                        ; $5dc9: $78
	adc  c                                           ; $5dca: $89
	adc  b                                           ; $5dcb: $88
	adc  b                                           ; $5dcc: $88
	adc  b                                           ; $5dcd: $88
	adc  b                                           ; $5dce: $88
	adc  b                                           ; $5dcf: $88
	adc  b                                           ; $5dd0: $88
	adc  b                                           ; $5dd1: $88
	adc  b                                           ; $5dd2: $88
	ld   a, b                                        ; $5dd3: $78
	adc  b                                           ; $5dd4: $88
	adc  b                                           ; $5dd5: $88
	adc  b                                           ; $5dd6: $88
	adc  b                                           ; $5dd7: $88
	adc  b                                           ; $5dd8: $88
	adc  b                                           ; $5dd9: $88
	adc  b                                           ; $5dda: $88
	adc  b                                           ; $5ddb: $88
	sbc  b                                           ; $5ddc: $98
	adc  b                                           ; $5ddd: $88
	adc  b                                           ; $5dde: $88
	adc  b                                           ; $5ddf: $88
	sbc  b                                           ; $5de0: $98
	adc  b                                           ; $5de1: $88
	adc  b                                           ; $5de2: $88
	adc  b                                           ; $5de3: $88
	adc  b                                           ; $5de4: $88
	sbc  b                                           ; $5de5: $98
	adc  b                                           ; $5de6: $88
	adc  b                                           ; $5de7: $88
	adc  b                                           ; $5de8: $88
	add  a                                           ; $5de9: $87
	adc  c                                           ; $5dea: $89
	adc  b                                           ; $5deb: $88
	adc  b                                           ; $5dec: $88
	adc  b                                           ; $5ded: $88
	adc  b                                           ; $5dee: $88
	sbc  b                                           ; $5def: $98
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
	adc  c                                           ; $5dfe: $89
	adc  b                                           ; $5dff: $88
	adc  b                                           ; $5e00: $88
	sbc  b                                           ; $5e01: $98
	adc  b                                           ; $5e02: $88
	adc  b                                           ; $5e03: $88
	adc  c                                           ; $5e04: $89
	adc  b                                           ; $5e05: $88
	adc  b                                           ; $5e06: $88
	adc  b                                           ; $5e07: $88
	adc  b                                           ; $5e08: $88
	adc  b                                           ; $5e09: $88
	adc  b                                           ; $5e0a: $88
	adc  b                                           ; $5e0b: $88
	sbc  c                                           ; $5e0c: $99
	adc  b                                           ; $5e0d: $88
	adc  b                                           ; $5e0e: $88
	adc  b                                           ; $5e0f: $88
	adc  c                                           ; $5e10: $89
	adc  b                                           ; $5e11: $88
	adc  b                                           ; $5e12: $88
	adc  b                                           ; $5e13: $88
	adc  b                                           ; $5e14: $88
	adc  b                                           ; $5e15: $88
	sbc  b                                           ; $5e16: $98
	adc  c                                           ; $5e17: $89
	adc  c                                           ; $5e18: $89
	add  a                                           ; $5e19: $87
	adc  b                                           ; $5e1a: $88
	adc  b                                           ; $5e1b: $88
	adc  c                                           ; $5e1c: $89
	adc  b                                           ; $5e1d: $88
	sub  a                                           ; $5e1e: $97
	adc  c                                           ; $5e1f: $89
	adc  b                                           ; $5e20: $88
	adc  b                                           ; $5e21: $88
	adc  c                                           ; $5e22: $89
	adc  b                                           ; $5e23: $88
	sbc  c                                           ; $5e24: $99
	adc  b                                           ; $5e25: $88
	adc  c                                           ; $5e26: $89
	adc  b                                           ; $5e27: $88
	adc  c                                           ; $5e28: $89
	adc  b                                           ; $5e29: $88
	adc  b                                           ; $5e2a: $88
	adc  b                                           ; $5e2b: $88
	sbc  b                                           ; $5e2c: $98
	ld   a, b                                        ; $5e2d: $78
	sbc  b                                           ; $5e2e: $98
	adc  b                                           ; $5e2f: $88
	sbc  c                                           ; $5e30: $99
	adc  b                                           ; $5e31: $88
	adc  b                                           ; $5e32: $88
	adc  c                                           ; $5e33: $89
	add  a                                           ; $5e34: $87
	adc  b                                           ; $5e35: $88
	ld   a, b                                        ; $5e36: $78
	adc  c                                           ; $5e37: $89
	adc  b                                           ; $5e38: $88
	adc  b                                           ; $5e39: $88
	ld   a, c                                        ; $5e3a: $79
	sbc  b                                           ; $5e3b: $98
	adc  b                                           ; $5e3c: $88
	adc  b                                           ; $5e3d: $88
	sbc  c                                           ; $5e3e: $99
	adc  b                                           ; $5e3f: $88
	adc  b                                           ; $5e40: $88
	adc  c                                           ; $5e41: $89
	sub  a                                           ; $5e42: $97
	adc  b                                           ; $5e43: $88
	adc  b                                           ; $5e44: $88
	adc  c                                           ; $5e45: $89
	sbc  b                                           ; $5e46: $98
	ld   a, b                                        ; $5e47: $78
	sbc  b                                           ; $5e48: $98
	adc  b                                           ; $5e49: $88
	adc  b                                           ; $5e4a: $88
	sbc  b                                           ; $5e4b: $98
	adc  b                                           ; $5e4c: $88
	adc  c                                           ; $5e4d: $89
	add  a                                           ; $5e4e: $87
	adc  b                                           ; $5e4f: $88
	add  a                                           ; $5e50: $87
	adc  b                                           ; $5e51: $88
	adc  b                                           ; $5e52: $88
	ld   [hl], a                                     ; $5e53: $77
	adc  b                                           ; $5e54: $88
	adc  b                                           ; $5e55: $88
	add  a                                           ; $5e56: $87
	adc  b                                           ; $5e57: $88
	sbc  b                                           ; $5e58: $98
	adc  b                                           ; $5e59: $88
	ld   a, b                                        ; $5e5a: $78
	sbc  c                                           ; $5e5b: $99
	adc  c                                           ; $5e5c: $89
	add  a                                           ; $5e5d: $87
	sbc  b                                           ; $5e5e: $98
	adc  c                                           ; $5e5f: $89
	add  a                                           ; $5e60: $87
	adc  c                                           ; $5e61: $89
	add  a                                           ; $5e62: $87
	sbc  b                                           ; $5e63: $98
	ld   a, c                                        ; $5e64: $79
	adc  b                                           ; $5e65: $88
	adc  b                                           ; $5e66: $88
	ld   [hl], a                                     ; $5e67: $77
	adc  c                                           ; $5e68: $89
	ld   a, b                                        ; $5e69: $78
	sub  a                                           ; $5e6a: $97
	add  a                                           ; $5e6b: $87
	adc  b                                           ; $5e6c: $88
	adc  b                                           ; $5e6d: $88
	sbc  c                                           ; $5e6e: $99
	ld   l, b                                        ; $5e6f: $68
	sub  a                                           ; $5e70: $97
	add  a                                           ; $5e71: $87
	adc  c                                           ; $5e72: $89
	ld   [hl], a                                     ; $5e73: $77
	ld   [hl], a                                     ; $5e74: $77
	sbc  c                                           ; $5e75: $99
	ld   a, b                                        ; $5e76: $78
	adc  b                                           ; $5e77: $88
	adc  b                                           ; $5e78: $88
	adc  b                                           ; $5e79: $88
	sbc  b                                           ; $5e7a: $98
	ld   a, c                                        ; $5e7b: $79
	ld   [hl], a                                     ; $5e7c: $77
	adc  b                                           ; $5e7d: $88
	ld   [hl], a                                     ; $5e7e: $77
	adc  c                                           ; $5e7f: $89
	add  a                                           ; $5e80: $87
	adc  b                                           ; $5e81: $88
	adc  b                                           ; $5e82: $88
	adc  c                                           ; $5e83: $89
	add  a                                           ; $5e84: $87
	ld   a, c                                        ; $5e85: $79
	ld   a, b                                        ; $5e86: $78
	sub  a                                           ; $5e87: $97
	add  a                                           ; $5e88: $87
	ld   a, b                                        ; $5e89: $78
	ld   a, b                                        ; $5e8a: $78
	adc  b                                           ; $5e8b: $88
	ld   [hl], a                                     ; $5e8c: $77
	ld   [hl], a                                     ; $5e8d: $77
	adc  c                                           ; $5e8e: $89
	ld   [hl], a                                     ; $5e8f: $77
	adc  c                                           ; $5e90: $89
	add  a                                           ; $5e91: $87
	add  a                                           ; $5e92: $87
	adc  b                                           ; $5e93: $88
	ld   l, b                                        ; $5e94: $68
	sbc  c                                           ; $5e95: $99
	add  [hl]                                        ; $5e96: $86
	adc  b                                           ; $5e97: $88
	ld   [hl], a                                     ; $5e98: $77
	ld   a, c                                        ; $5e99: $79
	add  a                                           ; $5e9a: $87
	add  a                                           ; $5e9b: $87
	adc  c                                           ; $5e9c: $89
	adc  b                                           ; $5e9d: $88
	ld   a, b                                        ; $5e9e: $78
	sbc  b                                           ; $5e9f: $98
	ld   a, b                                        ; $5ea0: $78
	add  a                                           ; $5ea1: $87
	ld   a, b                                        ; $5ea2: $78
	add  a                                           ; $5ea3: $87
	ld   a, c                                        ; $5ea4: $79
	add  [hl]                                        ; $5ea5: $86
	adc  c                                           ; $5ea6: $89
	adc  b                                           ; $5ea7: $88
	ld   a, c                                        ; $5ea8: $79
	adc  b                                           ; $5ea9: $88
	ld   [hl], a                                     ; $5eaa: $77
	sbc  c                                           ; $5eab: $99
	ld   [hl], a                                     ; $5eac: $77
	adc  b                                           ; $5ead: $88
	halt                                             ; $5eae: $76
	adc  b                                           ; $5eaf: $88
	add  a                                           ; $5eb0: $87
	ld   a, d                                        ; $5eb1: $7a
	ld   [hl], a                                     ; $5eb2: $77
	ld   [hl], a                                     ; $5eb3: $77
	xor  c                                           ; $5eb4: $a9
	ld   [hl], a                                     ; $5eb5: $77
	ld   a, b                                        ; $5eb6: $78
	add  a                                           ; $5eb7: $87
	sbc  c                                           ; $5eb8: $99
	ld   [hl], a                                     ; $5eb9: $77
	ld   a, b                                        ; $5eba: $78
	adc  b                                           ; $5ebb: $88
	ld   h, a                                        ; $5ebc: $67
	and  a                                           ; $5ebd: $a7
	ld   [hl], a                                     ; $5ebe: $77
	ld   a, b                                        ; $5ebf: $78
	sbc  c                                           ; $5ec0: $99
	ld   [hl], a                                     ; $5ec1: $77
	ld   a, b                                        ; $5ec2: $78
	adc  b                                           ; $5ec3: $88
	adc  c                                           ; $5ec4: $89
	ld   [hl], a                                     ; $5ec5: $77
	ld   a, b                                        ; $5ec6: $78
	sub  a                                           ; $5ec7: $97
	ld   [hl], a                                     ; $5ec8: $77
	xor  c                                           ; $5ec9: $a9
	adc  c                                           ; $5eca: $89
	ld   [hl], a                                     ; $5ecb: $77
	adc  b                                           ; $5ecc: $88
	sub  a                                           ; $5ecd: $97
	ld   a, b                                        ; $5ece: $78
	add  a                                           ; $5ecf: $87
	sbc  b                                           ; $5ed0: $98
	ld   a, b                                        ; $5ed1: $78
	add  a                                           ; $5ed2: $87
	add  a                                           ; $5ed3: $87
	sbc  c                                           ; $5ed4: $99
	ld   h, a                                        ; $5ed5: $67
	sbc  b                                           ; $5ed6: $98
	ld   a, b                                        ; $5ed7: $78
	sub  a                                           ; $5ed8: $97
	ld   a, c                                        ; $5ed9: $79
	sub  a                                           ; $5eda: $97
	ld   a, b                                        ; $5edb: $78
	ld   [hl], a                                     ; $5edc: $77
	sub  a                                           ; $5edd: $97
	ld   a, b                                        ; $5ede: $78
	adc  b                                           ; $5edf: $88
	sbc  b                                           ; $5ee0: $98
	ld   l, c                                        ; $5ee1: $69
	sub  a                                           ; $5ee2: $97
	adc  b                                           ; $5ee3: $88
	ld   [hl], a                                     ; $5ee4: $77
	ld   a, c                                        ; $5ee5: $79
	and  a                                           ; $5ee6: $a7
	ld   a, b                                        ; $5ee7: $78
	adc  c                                           ; $5ee8: $89
	adc  b                                           ; $5ee9: $88
	sub  a                                           ; $5eea: $97
	ld   a, b                                        ; $5eeb: $78
	adc  c                                           ; $5eec: $89
	ld   [hl], a                                     ; $5eed: $77
	ld   a, b                                        ; $5eee: $78
	sub  a                                           ; $5eef: $97
	adc  b                                           ; $5ef0: $88
	ld   a, c                                        ; $5ef1: $79
	ld   [hl], a                                     ; $5ef2: $77
	sub  a                                           ; $5ef3: $97
	sbc  b                                           ; $5ef4: $98
	ld   [hl], a                                     ; $5ef5: $77
	add  a                                           ; $5ef6: $87
	sub  a                                           ; $5ef7: $97
	ld   a, c                                        ; $5ef8: $79
	ld   a, c                                        ; $5ef9: $79
	adc  b                                           ; $5efa: $88
	adc  b                                           ; $5efb: $88
	ld   a, b                                        ; $5efc: $78
	add  a                                           ; $5efd: $87
	ld   a, c                                        ; $5efe: $79
	sub  a                                           ; $5eff: $97
	adc  b                                           ; $5f00: $88
	ld   a, b                                        ; $5f01: $78
	xor  b                                           ; $5f02: $a8
	ld   a, c                                        ; $5f03: $79
	ld   a, b                                        ; $5f04: $78
	ld   a, c                                        ; $5f05: $79
	sbc  c                                           ; $5f06: $99
	add  [hl]                                        ; $5f07: $86
	ld   a, c                                        ; $5f08: $79
	sbc  b                                           ; $5f09: $98
	sub  a                                           ; $5f0a: $97
	ld   h, [hl]                                     ; $5f0b: $66
	sbc  c                                           ; $5f0c: $99
	sbc  c                                           ; $5f0d: $99
	adc  b                                           ; $5f0e: $88
	ld   l, c                                        ; $5f0f: $69
	adc  d                                           ; $5f10: $8a
	add  a                                           ; $5f11: $87
	ld   a, b                                        ; $5f12: $78
	sbc  b                                           ; $5f13: $98
	sub  a                                           ; $5f14: $97
	ld   [hl], a                                     ; $5f15: $77
	ld   a, c                                        ; $5f16: $79
	sbc  b                                           ; $5f17: $98
	ld   l, b                                        ; $5f18: $68
	sbc  b                                           ; $5f19: $98
	ld   a, b                                        ; $5f1a: $78
	sub  a                                           ; $5f1b: $97
	sub  a                                           ; $5f1c: $97
	ld   a, c                                        ; $5f1d: $79
	ld   [hl], a                                     ; $5f1e: $77
	ld   a, c                                        ; $5f1f: $79
	sub  [hl]                                        ; $5f20: $96
	ld   a, c                                        ; $5f21: $79
	sub  a                                           ; $5f22: $97
	ld   [hl], a                                     ; $5f23: $77
	adc  c                                           ; $5f24: $89
	sbc  b                                           ; $5f25: $98
	adc  b                                           ; $5f26: $88
	ld   h, [hl]                                     ; $5f27: $66
	adc  b                                           ; $5f28: $88
	ld   a, b                                        ; $5f29: $78
	add  a                                           ; $5f2a: $87
	ld   [hl], a                                     ; $5f2b: $77
	ld   [hl], a                                     ; $5f2c: $77
	sbc  b                                           ; $5f2d: $98
	sbc  b                                           ; $5f2e: $98
	ld   [hl], a                                     ; $5f2f: $77
	adc  c                                           ; $5f30: $89
	adc  b                                           ; $5f31: $88
	add  a                                           ; $5f32: $87
	ld   a, b                                        ; $5f33: $78
	adc  c                                           ; $5f34: $89
	sbc  b                                           ; $5f35: $98
	sub  a                                           ; $5f36: $97
	adc  b                                           ; $5f37: $88
	adc  b                                           ; $5f38: $88
	sbc  c                                           ; $5f39: $99
	sbc  b                                           ; $5f3a: $98
	adc  b                                           ; $5f3b: $88
	adc  b                                           ; $5f3c: $88
	sbc  b                                           ; $5f3d: $98
	adc  c                                           ; $5f3e: $89
	sbc  b                                           ; $5f3f: $98
	sbc  b                                           ; $5f40: $98
	adc  b                                           ; $5f41: $88
	sbc  b                                           ; $5f42: $98
	adc  b                                           ; $5f43: $88
	adc  c                                           ; $5f44: $89
	sbc  c                                           ; $5f45: $99
	sbc  c                                           ; $5f46: $99
	adc  b                                           ; $5f47: $88
	adc  b                                           ; $5f48: $88
	sbc  c                                           ; $5f49: $99
	sbc  c                                           ; $5f4a: $99
	sbc  c                                           ; $5f4b: $99
	adc  b                                           ; $5f4c: $88
	adc  c                                           ; $5f4d: $89
	sbc  b                                           ; $5f4e: $98
	sbc  c                                           ; $5f4f: $99
	sbc  c                                           ; $5f50: $99
	sbc  c                                           ; $5f51: $99
	sbc  c                                           ; $5f52: $99
	sbc  c                                           ; $5f53: $99
	sbc  c                                           ; $5f54: $99
	sbc  c                                           ; $5f55: $99
	sbc  c                                           ; $5f56: $99
	sbc  c                                           ; $5f57: $99
	sbc  c                                           ; $5f58: $99
	sbc  b                                           ; $5f59: $98
	adc  b                                           ; $5f5a: $88
	sbc  c                                           ; $5f5b: $99
	sbc  b                                           ; $5f5c: $98
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
	adc  c                                           ; $6061: $89
	sbc  b                                           ; $6062: $98
	adc  c                                           ; $6063: $89
	xor  h                                           ; $6064: $ac
	cp   c                                           ; $6065: $b9
	ld   [hl], a                                     ; $6066: $77
	ld   a, c                                        ; $6067: $79
	xor  b                                           ; $6068: $a8
	xor  [hl]                                        ; $6069: $ae
	jp   z, $1641                                    ; $606a: $ca $41 $16

	rst  $38                                         ; $606d: $ff
	ld   sp, hl                                      ; $606e: $f9
	ld   de, $ff4e                                   ; $606f: $11 $4e $ff
	sub  c                                           ; $6072: $91
	ld   de, $fbaf                                   ; $6073: $11 $af $fb
	ld   sp, $7a12                                   ; $6076: $31 $12 $7a
	cp   c                                           ; $6079: $b9
	ld   [hl], h                                     ; $607a: $74
	ld   h, a                                        ; $607b: $67
	ld   h, [hl]                                     ; $607c: $66
	ld   l, h                                        ; $607d: $6c
	rst  $38                                         ; $607e: $ff
	push hl                                          ; $607f: $e5
	ld   de, $ff19                                   ; $6080: $11 $19 $ff
	or   $11                                         ; $6083: $f6 $11
	dec  a                                           ; $6085: $3d
	rst  $38                                         ; $6086: $ff
	pop  de                                          ; $6087: $d1
	ld   de, $ff3d                                   ; $6088: $11 $3d $ff
	ld   b, c                                        ; $608b: $41
	ld   de, $f7af                                   ; $608c: $11 $af $f7
	ld   de, $ff6f                                   ; $608f: $11 $6f $ff
	ld   sp, hl                                      ; $6092: $f9
	ld   a, d                                        ; $6093: $7a
	rst  $38                                         ; $6094: $ff
	rst  $30                                         ; $6095: $f7
	ld   de, $1111                                   ; $6096: $11 $11 $11
	ld   de, $9e11                                   ; $6099: $11 $11 $9e
	rst  $38                                         ; $609c: $ff
	rst  $38                                         ; $609d: $ff
	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	ld   a, [$db9d]                                  ; $60a0: $fa $9d $db
	ld   de, $1111                                   ; $60a3: $11 $11 $11
	ld   de, $fc1f                                   ; $60a6: $11 $1f $fc
	rst  $38                                         ; $60a9: $ff
	rst  $38                                         ; $60aa: $ff
	rst  $38                                         ; $60ab: $ff
	rst  $38                                         ; $60ac: $ff
	ld   e, h                                        ; $60ad: $5c
	rra                                              ; $60ae: $1f
	rst  $38                                         ; $60af: $ff
	pop  hl                                          ; $60b0: $e1
	ld   de, $1111                                   ; $60b1: $11 $11 $11
	ld   de, $ff2f                                   ; $60b4: $11 $2f $ff
	rst  $38                                         ; $60b7: $ff
	rst  $38                                         ; $60b8: $ff
	rst  $38                                         ; $60b9: $ff
	ld   hl, sp-$6f                                  ; $60ba: $f8 $91
	sbc  a                                           ; $60bc: $9f
	rst  $38                                         ; $60bd: $ff
	and  c                                           ; $60be: $a1
	ld   de, $1111                                   ; $60bf: $11 $11 $11
	ld   a, [de]                                     ; $60c2: $1a
	db   $fc                                         ; $60c3: $fc
	rst  $38                                         ; $60c4: $ff
	rst  $38                                         ; $60c5: $ff
	rst  $38                                         ; $60c6: $ff
	rst  $38                                         ; $60c7: $ff
	rla                                              ; $60c8: $17
	rra                                              ; $60c9: $1f
	rst  $38                                         ; $60ca: $ff
	pop  af                                          ; $60cb: $f1
	ld   de, $1111                                   ; $60cc: $11 $11 $11
	ld   h, $ff                                      ; $60cf: $26 $ff
	rst  $38                                         ; $60d1: $ff
	rst  $38                                         ; $60d2: $ff
	rst  $38                                         ; $60d3: $ff
	rst  $38                                         ; $60d4: $ff
	ld   de, rAUD1LOW                                   ; $60d5: $11 $13 $ff
	ld   a, [$1111]                                  ; $60d8: $fa $11 $11
	ld   de, $ff1f                                   ; $60db: $11 $1f $ff
	rst  $38                                         ; $60de: $ff
	rst  $38                                         ; $60df: $ff
	rst  $38                                         ; $60e0: $ff
	cp   $11                                         ; $60e1: $fe $11
	ld   d, $ff                                      ; $60e3: $16 $ff
	db   $fc                                         ; $60e5: $fc
	ld   de, $1111                                   ; $60e6: $11 $11 $11
	ccf                                              ; $60e9: $3f
	rst  $38                                         ; $60ea: $ff
	rst  $38                                         ; $60eb: $ff
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	ld   hl, sp+$11                                  ; $60ee: $f8 $11
	rra                                              ; $60f0: $1f
	rst  $38                                         ; $60f1: $ff
	pop  af                                          ; $60f2: $f1
	ld   de, $1111                                   ; $60f3: $11 $11 $11
	rst  JumpTable                                         ; $60f6: $df
	rst  $38                                         ; $60f7: $ff
	rst  $38                                         ; $60f8: $ff
	rst  $38                                         ; $60f9: $ff
	rst  $38                                         ; $60fa: $ff
	pop  af                                          ; $60fb: $f1
	ld   de, $ff7f                                   ; $60fc: $11 $7f $ff
	pop  af                                          ; $60ff: $f1
	ld   de, $1e11                                   ; $6100: $11 $11 $1e
	rst  $38                                         ; $6103: $ff
	rst  $38                                         ; $6104: $ff
	rst  $38                                         ; $6105: $ff
	rst  $38                                         ; $6106: $ff
	rst  $38                                         ; $6107: $ff
	ld   sp, rAUD1LEN                                   ; $6108: $31 $11 $ff
	rst  $38                                         ; $610b: $ff
	ld   de, $1111                                   ; $610c: $11 $11 $11
	rst  JumpTable                                         ; $610f: $df
	rst  $38                                         ; $6110: $ff
	rst  $38                                         ; $6111: $ff
	rst  $38                                         ; $6112: $ff
	rst  $38                                         ; $6113: $ff
	di                                               ; $6114: $f3
	ld   de, $ff5f                                   ; $6115: $11 $5f $ff
	pop  af                                          ; $6118: $f1
	ld   de, $1f11                                   ; $6119: $11 $11 $1f
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	rst  $38                                         ; $611e: $ff
	rst  $38                                         ; $611f: $ff
	db   $fd                                         ; $6120: $fd
	ld   sp, $ff6b                                   ; $6121: $31 $6b $ff
	rst  $38                                         ; $6124: $ff
	ld   de, $1111                                   ; $6125: $11 $11 $11
	rst  JumpTable                                         ; $6128: $df
	rst  $38                                         ; $6129: $ff
	rst  $38                                         ; $612a: $ff
	rst  $38                                         ; $612b: $ff
	rst  $38                                         ; $612c: $ff
	ld   [hl], c                                     ; $612d: $71
	ld   e, $ff                                      ; $612e: $1e $ff
	rst  $38                                         ; $6130: $ff
	ld   d, c                                        ; $6131: $51
	ld   de, $5e11                                   ; $6132: $11 $11 $5e
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	rst  $38                                         ; $6137: $ff
	rst  $38                                         ; $6138: $ff
	or   d                                           ; $6139: $b2
	ld   de, $ffff                                   ; $613a: $11 $ff $ff
	pop  af                                          ; $613d: $f1
	ld   de, $1f11                                   ; $613e: $11 $11 $1f
	rst  $38                                         ; $6141: $ff
	rst  $38                                         ; $6142: $ff
	db   $fd                                         ; $6143: $fd
	ei                                               ; $6144: $fb
	jp   nz, $ff21                                   ; $6145: $c2 $21 $ff

	rst  $38                                         ; $6148: $ff
	di                                               ; $6149: $f3
	ld   de, $1411                                   ; $614a: $11 $11 $14
	rst  $38                                         ; $614d: $ff
	rst  $38                                         ; $614e: $ff
	rst  $38                                         ; $614f: $ff
	rst  $38                                         ; $6150: $ff
	sbc  d                                           ; $6151: $9a
	ld   de, $ff3f                                   ; $6152: $11 $3f $ff
	db   $f4                                         ; $6155: $f4
	ld   de, $1111                                   ; $6156: $11 $11 $11
	rst  $38                                         ; $6159: $ff
	rst  $38                                         ; $615a: $ff
	rst  $38                                         ; $615b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $615c: $cf
	ld   c, h                                        ; $615d: $4c
	ld   de, $ff1f                                   ; $615e: $11 $1f $ff
	pop  af                                          ; $6161: $f1
	ld   de, $1111                                   ; $6162: $11 $11 $11
	rst  $38                                         ; $6165: $ff
	rst  $38                                         ; $6166: $ff
	rst  $38                                         ; $6167: $ff
	sbc  a                                           ; $6168: $9f
	ld   h, [hl]                                     ; $6169: $66
	ld   hl, $ff1f                                   ; $616a: $21 $1f $ff
	pop  af                                          ; $616d: $f1
	ld   de, $1111                                   ; $616e: $11 $11 $11
	rst  $28                                         ; $6171: $ef
	rst  $38                                         ; $6172: $ff
	rst  $38                                         ; $6173: $ff
	cp   a                                           ; $6174: $bf
	rla                                              ; $6175: $17
	ld   de, $ff3f                                   ; $6176: $11 $3f $ff
	pop  af                                          ; $6179: $f1
	ld   de, $1111                                   ; $617a: $11 $11 $11
	xor  a                                           ; $617d: $af
	rst  $38                                         ; $617e: $ff
	rst  $38                                         ; $617f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6180: $cf
	ret  c                                           ; $6181: $d8

	ld   de, $ff1f                                   ; $6182: $11 $1f $ff
	pop  af                                          ; $6185: $f1
	ld   de, $1111                                   ; $6186: $11 $11 $11
	cp   a                                           ; $6189: $bf
	rst  $38                                         ; $618a: $ff
	rst  $38                                         ; $618b: $ff
	rst  $38                                         ; $618c: $ff
	reti                                             ; $618d: $d9


	ld   de, $ff1f                                   ; $618e: $11 $1f $ff
	pop  af                                          ; $6191: $f1
	ld   de, $1111                                   ; $6192: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6195: $cf
	rst  $38                                         ; $6196: $ff
	rst  $38                                         ; $6197: $ff
	rst  $38                                         ; $6198: $ff
	add  $11                                         ; $6199: $c6 $11
	ld   e, a                                        ; $619b: $5f
	rst  $38                                         ; $619c: $ff
	pop  bc                                          ; $619d: $c1
	ld   de, $1111                                   ; $619e: $11 $11 $11
	rst  $38                                         ; $61a1: $ff
	rst  $38                                         ; $61a2: $ff
	rst  $38                                         ; $61a3: $ff
	rst  $38                                         ; $61a4: $ff
	and  c                                           ; $61a5: $a1
	ld   de, $ffff                                   ; $61a6: $11 $ff $ff
	ld   de, $1111                                   ; $61a9: $11 $11 $11
	dec  d                                           ; $61ac: $15
	rst  $38                                         ; $61ad: $ff
	rst  $38                                         ; $61ae: $ff
	rst  $38                                         ; $61af: $ff
	rst  $38                                         ; $61b0: $ff
	ld   b, c                                        ; $61b1: $41
	ld   de, $fdff                                   ; $61b2: $11 $ff $fd
	ld   de, $1111                                   ; $61b5: $11 $11 $11
	rra                                              ; $61b8: $1f
	rst  $38                                         ; $61b9: $ff
	rst  $38                                         ; $61ba: $ff
	rst  $38                                         ; $61bb: $ff
	rst  $38                                         ; $61bc: $ff
	ld   de, $ff1f                                   ; $61bd: $11 $1f $ff
	pop  af                                          ; $61c0: $f1
	ld   de, $1111                                   ; $61c1: $11 $11 $11
	ld   l, a                                        ; $61c4: $6f
	rst  $38                                         ; $61c5: $ff
	rst  $38                                         ; $61c6: $ff
	rst  $38                                         ; $61c7: $ff
	pop  af                                          ; $61c8: $f1
	ld   de, $ffef                                   ; $61c9: $11 $ef $ff
	ld   [hl], c                                     ; $61cc: $71
	ld   de, $1111                                   ; $61cd: $11 $11 $11
	rst  $38                                         ; $61d0: $ff
	rst  $38                                         ; $61d1: $ff
	rst  $38                                         ; $61d2: $ff
	rst  $38                                         ; $61d3: $ff
	ld   de, $ff1d                                   ; $61d4: $11 $1d $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61d7: $cf
	ld   [hl], d                                     ; $61d8: $72
	ld   de, $1f11                                   ; $61d9: $11 $11 $1f
	rst  $38                                         ; $61dc: $ff
	rst  $38                                         ; $61dd: $ff
	rst  $38                                         ; $61de: $ff
	pop  af                                          ; $61df: $f1
	ld   de, $fddf                                   ; $61e0: $11 $df $fd
	rst  $38                                         ; $61e3: $ff
	ld   d, c                                        ; $61e4: $51
	ld   de, $7e11                                   ; $61e5: $11 $11 $7e
	rst  $38                                         ; $61e8: $ff
	rst  $38                                         ; $61e9: $ff
	rst  $38                                         ; $61ea: $ff
	pop  hl                                          ; $61eb: $e1
	add  hl, de                                      ; $61ec: $19
	rst  $28                                         ; $61ed: $ef
	rst  $38                                         ; $61ee: $ff
	db   $fc                                         ; $61ef: $fc
	ld   de, $1111                                   ; $61f0: $11 $11 $11
	ld   d, l                                        ; $61f3: $55
	rst  $38                                         ; $61f4: $ff
	rst  $38                                         ; $61f5: $ff
	rst  $38                                         ; $61f6: $ff
	add  c                                           ; $61f7: $81
	ld   e, c                                        ; $61f8: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61f9: $cf
	rst  $38                                         ; $61fa: $ff
	pop  af                                          ; $61fb: $f1
	ld   de, $1111                                   ; $61fc: $11 $11 $11
	ld   l, a                                        ; $61ff: $6f
	rst  $38                                         ; $6200: $ff
	rst  $38                                         ; $6201: $ff
	rst  $38                                         ; $6202: $ff
	ld   c, c                                        ; $6203: $49
	xor  h                                           ; $6204: $ac
	rst  $28                                         ; $6205: $ef
	cp   $31                                         ; $6206: $fe $31
	ld   de, $1311                                   ; $6208: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $620b: $cf
	rst  $38                                         ; $620c: $ff
	rst  $38                                         ; $620d: $ff
	db   $fd                                         ; $620e: $fd
	xor  h                                           ; $620f: $ac
	xor  h                                           ; $6210: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6211: $cf
	sub  $11                                         ; $6212: $d6 $11
	ld   de, $1411                                   ; $6214: $11 $11 $14
	rst  JumpTable                                         ; $6217: $df
	rst  $38                                         ; $6218: $ff
	rst  $38                                         ; $6219: $ff
	ld   sp, hl                                      ; $621a: $f9
	ld   [$fc9f], a                                  ; $621b: $ea $9f $fc
	and  c                                           ; $621e: $a1
	ld   de, $1111                                   ; $621f: $11 $11 $11
	ld   h, [hl]                                     ; $6222: $66
	rst  $38                                         ; $6223: $ff
	rst  $38                                         ; $6224: $ff
	rst  $38                                         ; $6225: $ff
	rst  $38                                         ; $6226: $ff
	sbc  d                                           ; $6227: $9a
	rst  $38                                         ; $6228: $ff
	cp   b                                           ; $6229: $b8
	ld   de, $1111                                   ; $622a: $11 $11 $11
	inc  d                                           ; $622d: $14
	cp   l                                           ; $622e: $bd
	rst  $38                                         ; $622f: $ff
	rst  $38                                         ; $6230: $ff
	cp   $eb                                         ; $6231: $fe $eb
	sbc  h                                           ; $6233: $9c
	set  0, l                                        ; $6234: $cb $c5
	ld   de, $1111                                   ; $6236: $11 $11 $11
	ld   de, $ffab                                   ; $6239: $11 $ab $ff
	rst  $38                                         ; $623c: $ff
	rst  $28                                         ; $623d: $ef
	jp   c, $bfcc                                    ; $623e: $da $cc $bf

	adc  d                                           ; $6241: $8a
	ld   sp, $1111                                   ; $6242: $31 $11 $11
	ld   de, $cf56                                   ; $6245: $11 $56 $cf
	rst  $38                                         ; $6248: $ff
	db   $fd                                         ; $6249: $fd
	db   $ed                                         ; $624a: $ed
	adc  l                                           ; $624b: $8d
	cp   [hl]                                        ; $624c: $be
	sub  $73                                         ; $624d: $d6 $73
	ld   de, $1213                                   ; $624f: $11 $13 $12
	ld   d, e                                        ; $6252: $53
	sbc  e                                           ; $6253: $9b
	xor  $cd                                         ; $6254: $ee $cd
	ld   a, [$8b5d]                                  ; $6256: $fa $5d $8b
	ld   a, c                                        ; $6259: $79
	and  $45                                         ; $625a: $e6 $45
	ld   d, c                                        ; $625c: $51
	dec  d                                           ; $625d: $15
	or   l                                           ; $625e: $b5
	sbc  c                                           ; $625f: $99
	sbc  [hl]                                        ; $6260: $9e
	ld   c, h                                        ; $6261: $4c
	sbc  d                                           ; $6262: $9a
	ld   [hl], l                                     ; $6263: $75
	xor  c                                           ; $6264: $a9
	adc  c                                           ; $6265: $89
	add  sp, -$6a                                    ; $6266: $e8 $96
	ld   d, a                                        ; $6268: $57
	ld   e, c                                        ; $6269: $59
	ld   a, c                                        ; $626a: $79
	sub  a                                           ; $626b: $97
	cp   c                                           ; $626c: $b9
	ret  z                                           ; $626d: $c8

	rst  ToBoot                                         ; $626e: $c7
	add  a                                           ; $626f: $87
	dec  sp                                          ; $6270: $3b
	ld   c, l                                        ; $6271: $4d
	ld   l, h                                        ; $6272: $6c
	add  [hl]                                        ; $6273: $86
	add  h                                           ; $6274: $84
	and  c                                           ; $6275: $a1
	jp   z, $ccdb                                    ; $6276: $ca $db $cc

	adc  e                                           ; $6279: $8b
	ld   e, e                                        ; $627a: $5b
	ld   e, d                                        ; $627b: $5a
	ld   a, b                                        ; $627c: $78
	adc  c                                           ; $627d: $89
	ld   h, h                                        ; $627e: $64
	add  $85                                         ; $627f: $c6 $85
	add  a                                           ; $6281: $87
	adc  d                                           ; $6282: $8a
	sbc  [hl]                                        ; $6283: $9e
	sbc  e                                           ; $6284: $9b
	ret  c                                           ; $6285: $d8

	sub  l                                           ; $6286: $95
	ld   a, c                                        ; $6287: $79
	dec  hl                                          ; $6288: $2b
	sub  l                                           ; $6289: $95
	sub  a                                           ; $628a: $97
	ld   h, a                                        ; $628b: $67
	add  hl, hl                                      ; $628c: $29
	xor  b                                           ; $628d: $a8
	xor  c                                           ; $628e: $a9
	rst  ToBoot                                         ; $628f: $c7
	cp   b                                           ; $6290: $b8
	or   a                                           ; $6291: $b7
	ld   a, b                                        ; $6292: $78
	add  a                                           ; $6293: $87
	jr   c, jr_0cf_6300                              ; $6294: $38 $6a

	ld   c, e                                        ; $6296: $4b
	and  h                                           ; $6297: $a4
	ld   [hl], l                                     ; $6298: $75
	sbc  d                                           ; $6299: $9a
	sub  [hl]                                        ; $629a: $96
	db   $f4                                         ; $629b: $f4
	cp   e                                           ; $629c: $bb
	ld   l, e                                        ; $629d: $6b
	ld   a, [hl-]                                    ; $629e: $3a
	ld   a, b                                        ; $629f: $78
	ld   a, b                                        ; $62a0: $78
	ld   [hl], a                                     ; $62a1: $77
	ld   l, b                                        ; $62a2: $68
	add  h                                           ; $62a3: $84
	sub  h                                           ; $62a4: $94
	call nz, $9c88                                   ; $62a5: $c4 $88 $9c
	ld   l, e                                        ; $62a8: $6b
	ld   e, c                                        ; $62a9: $59
	ld   e, e                                        ; $62aa: $5b
	ld   l, h                                        ; $62ab: $6c
	ld   [hl], l                                     ; $62ac: $75
	or   h                                           ; $62ad: $b4
	pop  hl                                          ; $62ae: $e1
	adc  b                                           ; $62af: $88
	ld   h, [hl]                                     ; $62b0: $66
	cp   c                                           ; $62b1: $b9
	ld   a, b                                        ; $62b2: $78
	ld   l, h                                        ; $62b3: $6c
	ld   e, l                                        ; $62b4: $5d
	ld   l, d                                        ; $62b5: $6a
	adc  c                                           ; $62b6: $89
	sub  h                                           ; $62b7: $94
	push bc                                          ; $62b8: $c5
	jp   nz, Jump_0cf_59e2                           ; $62b9: $c2 $e2 $59

	ld   c, h                                        ; $62bc: $4c
	dec  sp                                          ; $62bd: $3b
	ld   e, [hl]                                     ; $62be: $5e
	ld   a, [hl-]                                    ; $62bf: $3a
	and  h                                           ; $62c0: $a4
	jp   nc, Jump_0cf_58f7                           ; $62c1: $d2 $f7 $58

	and  [hl]                                        ; $62c4: $a6
	sbc  d                                           ; $62c5: $9a
	ld   a, $1b                                      ; $62c6: $3e $1b
	or   c                                           ; $62c8: $b1
	pop  af                                          ; $62c9: $f1
	di                                               ; $62ca: $f3
	ld   a, h                                        ; $62cb: $7c
	ld   c, l                                        ; $62cc: $4d
	dec  a                                           ; $62cd: $3d
	ld   l, b                                        ; $62ce: $68
	ld   c, [hl]                                     ; $62cf: $4e
	ld   c, e                                        ; $62d0: $4b
	sub  d                                           ; $62d1: $92
	pop  af                                          ; $62d2: $f1
	push af                                          ; $62d3: $f5
	ld   l, b                                        ; $62d4: $68
	sbc  b                                           ; $62d5: $98
	ld   l, h                                        ; $62d6: $6c
	ld   c, [hl]                                     ; $62d7: $4e
	inc  e                                           ; $62d8: $1c
	ld   [hl], h                                     ; $62d9: $74
	or   l                                           ; $62da: $b5
	add  $98                                         ; $62db: $c6 $98
	and  l                                           ; $62dd: $a5
	ld   [hl], a                                     ; $62de: $77
	ld   a, b                                        ; $62df: $78
	ld   a, b                                        ; $62e0: $78
	ld   a, c                                        ; $62e1: $79
	adc  c                                           ; $62e2: $89
	ld   l, c                                        ; $62e3: $69
	ld   l, b                                        ; $62e4: $68
	ld   l, c                                        ; $62e5: $69
	add  a                                           ; $62e6: $87
	and  [hl]                                        ; $62e7: $a6
	sub  [hl]                                        ; $62e8: $96
	sbc  b                                           ; $62e9: $98
	ld   a, b                                        ; $62ea: $78
	add  [hl]                                        ; $62eb: $86
	adc  b                                           ; $62ec: $88
	ld   l, e                                        ; $62ed: $6b
	ld   l, c                                        ; $62ee: $69
	adc  b                                           ; $62ef: $88
	ld   [hl], a                                     ; $62f0: $77
	add  [hl]                                        ; $62f1: $86
	sub  h                                           ; $62f2: $94
	db   $e4                                         ; $62f3: $e4
	ld   a, h                                        ; $62f4: $7c
	dec  sp                                          ; $62f5: $3b
	ld   c, b                                        ; $62f6: $48
	add  a                                           ; $62f7: $87
	ld   l, b                                        ; $62f8: $68
	and  l                                           ; $62f9: $a5
	and  [hl]                                        ; $62fa: $a6
	add  a                                           ; $62fb: $87
	ld   a, d                                        ; $62fc: $7a
	ld   h, [hl]                                     ; $62fd: $66
	xor  b                                           ; $62fe: $a8
	ld   a, c                                        ; $62ff: $79

jr_0cf_6300:
	ld   a, c                                        ; $6300: $79
	ld   h, a                                        ; $6301: $67
	add  [hl]                                        ; $6302: $86
	ld   a, b                                        ; $6303: $78
	ld   a, c                                        ; $6304: $79
	sub  [hl]                                        ; $6305: $96
	and  l                                           ; $6306: $a5
	sbc  b                                           ; $6307: $98
	ld   e, h                                        ; $6308: $5c
	ld   c, b                                        ; $6309: $48
	add  a                                           ; $630a: $87
	add  [hl]                                        ; $630b: $86
	sub  a                                           ; $630c: $97
	add  a                                           ; $630d: $87
	add  a                                           ; $630e: $87
	add  [hl]                                        ; $630f: $86
	ld   a, h                                        ; $6310: $7c
	ld   c, c                                        ; $6311: $49
	sub  [hl]                                        ; $6312: $96
	add  a                                           ; $6313: $87
	sbc  b                                           ; $6314: $98
	ld   a, c                                        ; $6315: $79
	sub  a                                           ; $6316: $97
	ld   e, d                                        ; $6317: $5a
	halt                                             ; $6318: $76
	and  l                                           ; $6319: $a5
	ld   a, c                                        ; $631a: $79
	ld   l, b                                        ; $631b: $68
	and  l                                           ; $631c: $a5
	and  a                                           ; $631d: $a7
	ld   a, e                                        ; $631e: $7b
	dec  a                                           ; $631f: $3d
	halt                                             ; $6320: $76
	and  l                                           ; $6321: $a5
	and  [hl]                                        ; $6322: $a6
	sub  a                                           ; $6323: $97
	add  a                                           ; $6324: $87
	adc  c                                           ; $6325: $89
	ld   e, c                                        ; $6326: $59
	ld   l, c                                        ; $6327: $69
	ld   a, c                                        ; $6328: $79
	ld   l, c                                        ; $6329: $69
	halt                                             ; $632a: $76
	push bc                                          ; $632b: $c5
	and  [hl]                                        ; $632c: $a6
	adc  c                                           ; $632d: $89
	add  [hl]                                        ; $632e: $86
	and  a                                           ; $632f: $a7
	ld   e, e                                        ; $6330: $5b
	ld   l, c                                        ; $6331: $69
	halt                                             ; $6332: $76
	or   l                                           ; $6333: $b5
	sbc  c                                           ; $6334: $99
	ld   e, e                                        ; $6335: $5b
	ld   e, d                                        ; $6336: $5a
	add  [hl]                                        ; $6337: $86
	or   [hl]                                        ; $6338: $b6
	and  [hl]                                        ; $6339: $a6
	sbc  b                                           ; $633a: $98
	add  l                                           ; $633b: $85
	xor  b                                           ; $633c: $a8
	ld   c, l                                        ; $633d: $4d
	ld   c, c                                        ; $633e: $49
	add  [hl]                                        ; $633f: $86
	or   h                                           ; $6340: $b4
	sbc  c                                           ; $6341: $99
	ld   [hl], a                                     ; $6342: $77
	and  [hl]                                        ; $6343: $a6
	sbc  b                                           ; $6344: $98
	ld   l, h                                        ; $6345: $6c
	ld   a, [hl-]                                    ; $6346: $3a
	sub  a                                           ; $6347: $97
	adc  c                                           ; $6348: $89
	ld   [hl], a                                     ; $6349: $77
	and  a                                           ; $634a: $a7
	and  [hl]                                        ; $634b: $a6
	sub  a                                           ; $634c: $97
	ld   [hl], a                                     ; $634d: $77
	and  a                                           ; $634e: $a7
	sbc  c                                           ; $634f: $99
	ld   a, c                                        ; $6350: $79
	ld   l, d                                        ; $6351: $6a
	ld   a, d                                        ; $6352: $7a
	ld   l, c                                        ; $6353: $69

Jump_0cf_6354:
	add  a                                           ; $6354: $87
	and  [hl]                                        ; $6355: $a6
	xor  b                                           ; $6356: $a8
	ld   a, b                                        ; $6357: $78
	ld   l, d                                        ; $6358: $6a
	ld   h, a                                        ; $6359: $67
	or   l                                           ; $635a: $b5
	and  [hl]                                        ; $635b: $a6
	sub  [hl]                                        ; $635c: $96
	sbc  b                                           ; $635d: $98
	ld   l, c                                        ; $635e: $69
	ld   l, d                                        ; $635f: $6a
	ld   e, d                                        ; $6360: $5a
	ld   [hl], a                                     ; $6361: $77
	adc  b                                           ; $6362: $88
	sbc  c                                           ; $6363: $99
	ld   a, b                                        ; $6364: $78
	sub  [hl]                                        ; $6365: $96
	and  a                                           ; $6366: $a7
	sub  a                                           ; $6367: $97
	adc  c                                           ; $6368: $89
	halt                                             ; $6369: $76
	push bc                                          ; $636a: $c5
	adc  c                                           ; $636b: $89
	ld   l, d                                        ; $636c: $6a
	ld   l, e                                        ; $636d: $6b
	ld   e, c                                        ; $636e: $59
	ld   l, d                                        ; $636f: $6a
	ld   [hl], l                                     ; $6370: $75
	cp   c                                           ; $6371: $b9
	add  a                                           ; $6372: $87
	sub  l                                           ; $6373: $95
	or   l                                           ; $6374: $b5
	or   a                                           ; $6375: $b7
	sbc  b                                           ; $6376: $98
	ld   e, e                                        ; $6377: $5b
	ld   e, d                                        ; $6378: $5a
	ld   a, d                                        ; $6379: $7a
	ld   a, b                                        ; $637a: $78
	ld   a, c                                        ; $637b: $79
	ld   [hl], a                                     ; $637c: $77
	and  [hl]                                        ; $637d: $a6
	and  [hl]                                        ; $637e: $a6
	or   [hl]                                        ; $637f: $b6
	adc  b                                           ; $6380: $88
	ld   a, b                                        ; $6381: $78
	ld   l, d                                        ; $6382: $6a
	ld   l, d                                        ; $6383: $6a
	add  [hl]                                        ; $6384: $86
	adc  d                                           ; $6385: $8a
	adc  b                                           ; $6386: $88
	adc  c                                           ; $6387: $89
	and  l                                           ; $6388: $a5
	sbc  c                                           ; $6389: $99
	ld   a, e                                        ; $638a: $7b
	ld   l, d                                        ; $638b: $6a
	halt                                             ; $638c: $76
	or   l                                           ; $638d: $b5
	adc  b                                           ; $638e: $88
	and  [hl]                                        ; $638f: $a6
	or   a                                           ; $6390: $b7
	ld   a, c                                        ; $6391: $79
	ld   e, e                                        ; $6392: $5b
	ld   e, d                                        ; $6393: $5a
	and  a                                           ; $6394: $a7
	sbc  c                                           ; $6395: $99
	ld   e, e                                        ; $6396: $5b
	ld   l, c                                        ; $6397: $69
	or   d                                           ; $6398: $b2
	add  sp, $59                                     ; $6399: $e8 $59
	sbc  b                                           ; $639b: $98
	ld   a, b                                        ; $639c: $78
	ld   a, b                                        ; $639d: $78
	adc  e                                           ; $639e: $8b
	ld   a, b                                        ; $639f: $78
	add  [hl]                                        ; $63a0: $86
	sub  [hl]                                        ; $63a1: $96
	xor  b                                           ; $63a2: $a8
	sbc  c                                           ; $63a3: $99
	add  l                                           ; $63a4: $85
	and  a                                           ; $63a5: $a7
	sbc  e                                           ; $63a6: $9b
	ld   e, e                                        ; $63a7: $5b
	ld   e, h                                        ; $63a8: $5c
	inc  l                                           ; $63a9: $2c
	ld   [hl], l                                     ; $63aa: $75
	db   $e3                                         ; $63ab: $e3
	pop  hl                                          ; $63ac: $e1
	push bc                                          ; $63ad: $c5
	xor  c                                           ; $63ae: $a9
	adc  d                                           ; $63af: $8a
	ccf                                              ; $63b0: $3f
	add  hl, sp                                      ; $63b1: $39
	sbc  d                                           ; $63b2: $9a
	inc  a                                           ; $63b3: $3c
	add  [hl]                                        ; $63b4: $86
	and  e                                           ; $63b5: $a3
	pop  af                                          ; $63b6: $f1
	sra  l                                           ; $63b7: $cb $2d
	rra                                              ; $63b9: $1f
	add  e                                           ; $63ba: $83
	rst  $20                                         ; $63bb: $e7
	halt                                             ; $63bc: $76
	push bc                                          ; $63bd: $c5
	and  a                                           ; $63be: $a7
	xor  d                                           ; $63bf: $aa
	rra                                              ; $63c0: $1f
	add  hl, sp                                      ; $63c1: $39
	ld   a, b                                        ; $63c2: $78
	call nz, $d2b6                                   ; $63c3: $c4 $b6 $d2
	ret                                              ; $63c6: $c9


	inc  a                                           ; $63c7: $3c
	ld   [hl], a                                     ; $63c8: $77
	adc  b                                           ; $63c9: $88
	adc  d                                           ; $63ca: $8a
	ld   e, l                                        ; $63cb: $5d
	dec  hl                                          ; $63cc: $2b
	ld   a, e                                        ; $63cd: $7b
	ld   d, [hl]                                     ; $63ce: $56
	ldh  [c], a                                      ; $63cf: $e2
	pop  bc                                          ; $63d0: $c1
	pop  af                                          ; $63d1: $f1
	jp   hl                                          ; $63d2: $e9


	cpl                                              ; $63d3: $2f
	ld   e, $68                                      ; $63d4: $1e $68
	ld   a, h                                        ; $63d6: $7c
	dec  sp                                          ; $63d7: $3b
	add  l                                           ; $63d8: $85
	call nz, $97b6                                   ; $63d9: $c4 $b6 $97
	ld   l, d                                        ; $63dc: $6a
	and  e                                           ; $63dd: $a3
	push de                                          ; $63de: $d5
	ld   l, l                                        ; $63df: $6d
	inc  a                                           ; $63e0: $3c
	sub  h                                           ; $63e1: $94
	cp   b                                           ; $63e2: $b8
	ld   c, h                                        ; $63e3: $4c
	ld   e, d                                        ; $63e4: $5a
	ld   a, c                                        ; $63e5: $79
	sub  a                                           ; $63e6: $97
	ld   a, c                                        ; $63e7: $79
	add  h                                           ; $63e8: $84
	db   $e4                                         ; $63e9: $e4
	or   a                                           ; $63ea: $b7
	ld   l, [hl]                                     ; $63eb: $6e
	rra                                              ; $63ec: $1f
	ld   h, e                                        ; $63ed: $63
	pop  af                                          ; $63ee: $f1
	db   $e4                                         ; $63ef: $e4
	sbc  h                                           ; $63f0: $9c
	ld   c, b                                        ; $63f1: $48
	ld   a, a                                        ; $63f2: $7f
	rra                                              ; $63f3: $1f
	sub  h                                           ; $63f4: $94
	xor  b                                           ; $63f5: $a8
	and  l                                           ; $63f6: $a5
	sbc  b                                           ; $63f7: $98
	or   l                                           ; $63f8: $b5
	add  a                                           ; $63f9: $87
	push bc                                          ; $63fa: $c5
	ld   l, a                                        ; $63fb: $6f
	ld   a, [de]                                     ; $63fc: $1a
	and  [hl]                                        ; $63fd: $a6
	sub  [hl]                                        ; $63fe: $96
	or   a                                           ; $63ff: $b7
	sub  a                                           ; $6400: $97
	or   [hl]                                        ; $6401: $b6
	ld   l, h                                        ; $6402: $6c
	ld   c, b                                        ; $6403: $48
	sbc  b                                           ; $6404: $98
	adc  d                                           ; $6405: $8a
	ld   l, c                                        ; $6406: $69
	add  l                                           ; $6407: $85
	and  [hl]                                        ; $6408: $a6
	adc  d                                           ; $6409: $8a
	ld   a, d                                        ; $640a: $7a
	ld   [hl], a                                     ; $640b: $77
	or   l                                           ; $640c: $b5
	sbc  b                                           ; $640d: $98
	ld   e, e                                        ; $640e: $5b
	ld   h, [hl]                                     ; $640f: $66
	pop  hl                                          ; $6410: $e1
	push af                                          ; $6411: $f5
	rra                                              ; $6412: $1f
	dec  e                                           ; $6413: $1d
	ld   c, h                                        ; $6414: $4c
	ld   a, b                                        ; $6415: $78
	adc  b                                           ; $6416: $88
	sub  c                                           ; $6417: $91
	pop  af                                          ; $6418: $f1
	or   $1f                                         ; $6419: $f6 $1f
	ld   b, [hl]                                     ; $641b: $46
	ld   l, a                                        ; $641c: $6f
	rra                                              ; $641d: $1f
	rra                                              ; $641e: $1f
	ld   [hl], c                                     ; $641f: $71
	db   $f4                                         ; $6420: $f4
	sub  d                                           ; $6421: $92
	pop  af                                          ; $6422: $f1
	pop  hl                                          ; $6423: $e1
	sbc  a                                           ; $6424: $9f
	rra                                              ; $6425: $1f
	ld   [hl], l                                     ; $6426: $75
	ld   a, l                                        ; $6427: $7d
	ld   e, d                                        ; $6428: $5a
	ld   h, a                                        ; $6429: $67
	pop  af                                          ; $642a: $f1
	xor  h                                           ; $642b: $ac
	ld   h, a                                        ; $642c: $67
	adc  d                                           ; $642d: $8a
	and  h                                           ; $642e: $a4
	xor  d                                           ; $642f: $aa
	ld   c, e                                        ; $6430: $4b
	ld   a, b                                        ; $6431: $78
	add  l                                           ; $6432: $85
	cp   b                                           ; $6433: $b8
	ld   [hl], h                                     ; $6434: $74
	push hl                                          ; $6435: $e5
	ccf                                              ; $6436: $3f
	ld   e, $67                                      ; $6437: $1e $67
	sbc  b                                           ; $6439: $98
	and  d                                           ; $643a: $a2
	pop  af                                          ; $643b: $f1
	ldh  a, [c]                                      ; $643c: $f2
	ld   a, h                                        ; $643d: $7c
	cpl                                              ; $643e: $2f
	rra                                              ; $643f: $1f
	ld   c, b                                        ; $6440: $48
	and  [hl]                                        ; $6441: $a6
	add  a                                           ; $6442: $87
	sub  h                                           ; $6443: $94
	pop  hl                                          ; $6444: $e1
	rst  $10                                         ; $6445: $d7
	ld   l, b                                        ; $6446: $68
	and  [hl]                                        ; $6447: $a6
	adc  e                                           ; $6448: $8b
	ld   a, $2a                                      ; $6449: $3e $2a
	sub  a                                           ; $644b: $97
	ld   a, d                                        ; $644c: $7a
	ld   e, b                                        ; $644d: $58
	jp   nz, $a7d3                                   ; $644e: $c2 $d3 $a7

	ld   h, a                                        ; $6451: $67
	sbc  d                                           ; $6452: $9a
	ld   e, $39                                      ; $6453: $1e $39
	sub  [hl]                                        ; $6455: $96
	jp   $95b9                                       ; $6456: $c3 $b9 $95


	adc  c                                           ; $6459: $89
	sbc  c                                           ; $645a: $99
	ld   a, h                                        ; $645b: $7c
	ld   e, d                                        ; $645c: $5a
	ld   e, e                                        ; $645d: $5b
	ld   [hl], e                                     ; $645e: $73
	and  $59                                         ; $645f: $e6 $59
	or   l                                           ; $6461: $b5
	add  a                                           ; $6462: $87
	xor  e                                           ; $6463: $ab
	inc  e                                           ; $6464: $1c
	or   h                                           ; $6465: $b4
	sbc  b                                           ; $6466: $98
	add  a                                           ; $6467: $87
	ld   l, c                                        ; $6468: $69
	jp   nz, $389e                                   ; $6469: $c2 $9e $38

	or   [hl]                                        ; $646c: $b6
	sub  [hl]                                        ; $646d: $96
	ld   a, d                                        ; $646e: $7a
	ld   h, h                                        ; $646f: $64
	and  a                                           ; $6470: $a7
	ld   h, a                                        ; $6471: $67
	adc  c                                           ; $6472: $89
	ld   c, b                                        ; $6473: $48
	sbc  c                                           ; $6474: $99
	ld   e, h                                        ; $6475: $5c
	and  l                                           ; $6476: $a5
	xor  c                                           ; $6477: $a9
	or   a                                           ; $6478: $b7
	sbc  e                                           ; $6479: $9b
	ld   [hl], l                                     ; $647a: $75
	cp   c                                           ; $647b: $b9
	ld   b, [hl]                                     ; $647c: $46
	ld   h, a                                        ; $647d: $67
	ld   d, e                                        ; $647e: $53
	ld   h, l                                        ; $647f: $65
	ld   [hl], $29                                   ; $6480: $36 $29
	ld   e, b                                        ; $6482: $58
	ret  c                                           ; $6483: $d8

	cp   h                                           ; $6484: $bc
	db   $fc                                         ; $6485: $fc
	xor  $ed                                         ; $6486: $ee $ed
	adc  e                                           ; $6488: $8b
	ld   h, l                                        ; $6489: $65
	ld   [hl-], a                                    ; $648a: $32
	ld   de, $1211                                   ; $648b: $11 $11 $12
	ld   de, $6c64                                   ; $648e: $11 $64 $6c
	rst  $28                                         ; $6491: $ef
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	rst  $38                                         ; $6494: $ff
	db   $fd                                         ; $6495: $fd
	ret  c                                           ; $6496: $d8

	ld   [hl+], a                                    ; $6497: $22
	ld   de, $1211                                   ; $6498: $11 $11 $12
	ld   de, $4712                                   ; $649b: $11 $12 $47
	call z, $ffff                                    ; $649e: $cc $ff $ff
	rst  $38                                         ; $64a1: $ff
	rst  $38                                         ; $64a2: $ff
	rst  $38                                         ; $64a3: $ff
	sub  e                                           ; $64a4: $93
	ld   de, $1111                                   ; $64a5: $11 $11 $11
	ld   de, $1211                                   ; $64a8: $11 $11 $12
	ld   c, e                                        ; $64ab: $4b
	rst  $28                                         ; $64ac: $ef
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	db   $fd                                         ; $64b1: $fd
	add  h                                           ; $64b2: $84
	ld   de, $1111                                   ; $64b3: $11 $11 $11
	ld   de, $1411                                   ; $64b6: $11 $11 $14
	ld   a, h                                        ; $64b9: $7c
	rst  $38                                         ; $64ba: $ff
	rst  $38                                         ; $64bb: $ff
	rst  $38                                         ; $64bc: $ff
	rst  $38                                         ; $64bd: $ff
	rst  $38                                         ; $64be: $ff
	ei                                               ; $64bf: $fb
	ld   [hl], d                                     ; $64c0: $72
	ld   de, $1111                                   ; $64c1: $11 $11 $11
	ld   de, $1611                                   ; $64c4: $11 $11 $16
	xor  a                                           ; $64c7: $af
	rst  $38                                         ; $64c8: $ff

Call_0cf_64c9:
	rst  $38                                         ; $64c9: $ff

Call_0cf_64ca:
	rst  $38                                         ; $64ca: $ff
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	ld   a, [$1172]                                  ; $64cd: $fa $72 $11
	ld   de, $1111                                   ; $64d0: $11 $11 $11
	ld   de, $cf14                                   ; $64d3: $11 $14 $cf
	rst  $38                                         ; $64d6: $ff
	rst  $38                                         ; $64d7: $ff
	rst  $38                                         ; $64d8: $ff
	rst  $38                                         ; $64d9: $ff
	rst  $38                                         ; $64da: $ff
	db   $fc                                         ; $64db: $fc
	ld   d, c                                        ; $64dc: $51
	ld   de, $1111                                   ; $64dd: $11 $11 $11
	ld   de, $1611                                   ; $64e0: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64e3: $cf
	rst  $38                                         ; $64e4: $ff
	rst  $38                                         ; $64e5: $ff
	rst  $38                                         ; $64e6: $ff
	rst  $38                                         ; $64e7: $ff
	rst  $38                                         ; $64e8: $ff
	ei                                               ; $64e9: $fb
	ld   [hl], c                                     ; $64ea: $71
	ld   de, $1111                                   ; $64eb: $11 $11 $11
	ld   de, $2711                                   ; $64ee: $11 $11 $27
	sbc  a                                           ; $64f1: $9f
	rst  $38                                         ; $64f2: $ff
	rst  $38                                         ; $64f3: $ff
	rst  $38                                         ; $64f4: $ff
	rst  $38                                         ; $64f5: $ff
	rst  $38                                         ; $64f6: $ff
	ld   a, [$1162]                                  ; $64f7: $fa $62 $11
	ld   de, $1111                                   ; $64fa: $11 $11 $11
	ld   de, $bf19                                   ; $64fd: $11 $19 $bf
	rst  $38                                         ; $6500: $ff
	rst  $38                                         ; $6501: $ff
	rst  $38                                         ; $6502: $ff
	rst  $38                                         ; $6503: $ff
	rst  $38                                         ; $6504: $ff
	cp   $61                                         ; $6505: $fe $61
	ld   de, $1111                                   ; $6507: $11 $11 $11
	ld   de, $1811                                   ; $650a: $11 $11 $18
	call c, $ffff                                    ; $650d: $dc $ff $ff
	rst  $38                                         ; $6510: $ff
	rst  $38                                         ; $6511: $ff
	rst  $38                                         ; $6512: $ff
	rst  $38                                         ; $6513: $ff
	jp   $1111                                       ; $6514: $c3 $11 $11


	ld   de, $1111                                   ; $6517: $11 $11 $11
	inc  de                                          ; $651a: $13
	rst  $38                                         ; $651b: $ff
	rst  JumpTable                                         ; $651c: $df
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	rst  $38                                         ; $6521: $ff
	cp   $31                                         ; $6522: $fe $31
	ld   de, $1111                                   ; $6524: $11 $11 $11
	ld   de, $1e11                                   ; $6527: $11 $11 $1e
	rst  $38                                         ; $652a: $ff
	rst  $38                                         ; $652b: $ff
	rst  $38                                         ; $652c: $ff
	rst  $38                                         ; $652d: $ff
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	call $41ea                                       ; $6530: $cd $ea $41
	ld   de, $1111                                   ; $6533: $11 $11 $11
	ld   de, $5f11                                   ; $6536: $11 $11 $5f
	rst  $38                                         ; $6539: $ff
	rst  $38                                         ; $653a: $ff
	rst  $38                                         ; $653b: $ff
	rst  $38                                         ; $653c: $ff
	rst  $38                                         ; $653d: $ff
	rst  $38                                         ; $653e: $ff
	db   $eb                                         ; $653f: $eb
	bit  2, c                                        ; $6540: $cb $51
	ld   de, $1111                                   ; $6542: $11 $11 $11
	ld   de, $4c31                                   ; $6545: $11 $31 $4c
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	rst  $38                                         ; $654b: $ff
	rst  $38                                         ; $654c: $ff
	rst  $38                                         ; $654d: $ff
	cp   $cb                                         ; $654e: $fe $cb
	ld   [hl], h                                     ; $6550: $74
	ld   de, $1111                                   ; $6551: $11 $11 $11
	ld   de, $1533                                   ; $6554: $11 $33 $15
	cp   a                                           ; $6557: $bf
	rst  $38                                         ; $6558: $ff
	rst  $38                                         ; $6559: $ff
	rst  $38                                         ; $655a: $ff
	rst  $38                                         ; $655b: $ff
	cp   $ff                                         ; $655c: $fe $ff
	ei                                               ; $655e: $fb
	add  l                                           ; $655f: $85
	ld   b, c                                        ; $6560: $41
	ld   de, $1111                                   ; $6561: $11 $11 $11
	inc  d                                           ; $6564: $14
	ld   d, c                                        ; $6565: $51
	ld   c, c                                        ; $6566: $49
	rst  $38                                         ; $6567: $ff
	rst  $38                                         ; $6568: $ff
	rst  $38                                         ; $6569: $ff
	rst  $38                                         ; $656a: $ff
	rst  $38                                         ; $656b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $656c: $cf
	rst  $38                                         ; $656d: $ff
	ret                                              ; $656e: $c9


	ld   h, h                                        ; $656f: $64
	ld   hl, $1111                                   ; $6570: $21 $11 $11
	ld   de, $4238                                   ; $6573: $11 $38 $42
	ld   l, h                                        ; $6576: $6c
	rst  $38                                         ; $6577: $ff
	rst  $38                                         ; $6578: $ff
	rst  $38                                         ; $6579: $ff
	rst  $38                                         ; $657a: $ff
	db   $fc                                         ; $657b: $fc
	cp   a                                           ; $657c: $bf
	cp   $c8                                         ; $657d: $fe $c8
	ld   h, h                                        ; $657f: $64
	ld   hl, $1111                                   ; $6580: $21 $11 $11
	ld   de, $526b                                   ; $6583: $11 $6b $52
	ld   c, c                                        ; $6586: $49
	rst  $38                                         ; $6587: $ff
	rst  $38                                         ; $6588: $ff
	rst  $38                                         ; $6589: $ff
	rst  $38                                         ; $658a: $ff
	db   $fc                                         ; $658b: $fc
	cp   l                                           ; $658c: $bd
	rst  $38                                         ; $658d: $ff
	ld   [$4166], a                                  ; $658e: $ea $66 $41
	ld   de, $1111                                   ; $6591: $11 $11 $11
	inc  a                                           ; $6594: $3c
	sub  e                                           ; $6595: $93
	ld   b, [hl]                                     ; $6596: $46
	rst  JumpTable                                         ; $6597: $df
	rst  $38                                         ; $6598: $ff
	rst  $38                                         ; $6599: $ff
	rst  JumpTable                                         ; $659a: $df
	cp   $cd                                         ; $659b: $fe $cd
	rst  $38                                         ; $659d: $ff
	db   $fd                                         ; $659e: $fd
	sbc  b                                           ; $659f: $98
	ld   b, d                                        ; $65a0: $42
	ld   de, $1111                                   ; $65a1: $11 $11 $11
	ld   a, [de]                                     ; $65a4: $1a
	push bc                                          ; $65a5: $c5
	ld   b, h                                        ; $65a6: $44
	cp   a                                           ; $65a7: $bf
	rst  $38                                         ; $65a8: $ff
	cp   $df                                         ; $65a9: $fe $df
	rst  $38                                         ; $65ab: $ff
	set  5, a                                        ; $65ac: $cb $ef
	rst  $38                                         ; $65ae: $ff
	jp   c, $1152                                    ; $65af: $da $52 $11

	ld   de, $1511                                   ; $65b2: $11 $11 $15
	ld   a, [$cf67]                                  ; $65b5: $fa $67 $cf
	rst  $38                                         ; $65b8: $ff
	cp   $db                                         ; $65b9: $fe $db
	rst  $28                                         ; $65bb: $ef
	db   $fc                                         ; $65bc: $fc
	call $fcff                                       ; $65bd: $cd $ff $fc
	ld   d, c                                        ; $65c0: $51
	ld   de, $1111                                   ; $65c1: $11 $11 $11
	inc  de                                          ; $65c4: $13
	rst  $38                                         ; $65c5: $ff
	xor  [hl]                                        ; $65c6: $ae
	rst  $38                                         ; $65c7: $ff
	rst  $38                                         ; $65c8: $ff
	cp   $ca                                         ; $65c9: $fe $ca
	cp   [hl]                                        ; $65cb: $be
	reti                                             ; $65cc: $d9


	cp   e                                           ; $65cd: $bb
	rst  $38                                         ; $65ce: $ff
	cp   $61                                         ; $65cf: $fe $61
	ld   de, $1111                                   ; $65d1: $11 $11 $11
	ld   d, $ff                                      ; $65d4: $16 $ff
	rst  $28                                         ; $65d6: $ef
	rst  $38                                         ; $65d7: $ff
	rst  $38                                         ; $65d8: $ff
	rst  $30                                         ; $65d9: $f7
	ld   h, h                                        ; $65da: $64
	sbc  l                                           ; $65db: $9d
	and  a                                           ; $65dc: $a7
	xor  l                                           ; $65dd: $ad
	rst  $38                                         ; $65de: $ff
	db   $fd                                         ; $65df: $fd
	ld   b, c                                        ; $65e0: $41
	ld   de, $1111                                   ; $65e1: $11 $11 $11
	dec  e                                           ; $65e4: $1d
	rst  $38                                         ; $65e5: $ff
	rst  $38                                         ; $65e6: $ff
	rst  $38                                         ; $65e7: $ff
	rst  $38                                         ; $65e8: $ff
	add  c                                           ; $65e9: $81
	ld   de, $76ac                                   ; $65ea: $11 $ac $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65ed: $cf
	rst  $38                                         ; $65ee: $ff
	db   $fc                                         ; $65ef: $fc
	ld   hl, $1111                                   ; $65f0: $21 $11 $11
	ld   de, $ff1f                                   ; $65f3: $11 $1f $ff
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	ld   de, $8f11                                   ; $65f9: $11 $11 $8f
	ld   [hl], a                                     ; $65fc: $77
	rst  $38                                         ; $65fd: $ff
	rst  $38                                         ; $65fe: $ff
	db   $fc                                         ; $65ff: $fc
	ld   d, d                                        ; $6600: $52
	ld   hl, $1111                                   ; $6601: $21 $11 $11
	rra                                              ; $6604: $1f
	rst  $38                                         ; $6605: $ff
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	rst  $38                                         ; $6608: $ff
	ld   de, $4f11                                   ; $6609: $11 $11 $4f
	ei                                               ; $660c: $fb
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	db   $fc                                         ; $660f: $fc
	add  h                                           ; $6610: $84
	ld   [hl], h                                     ; $6611: $74
	ld   de, $1111                                   ; $6612: $11 $11 $11
	rst  $38                                         ; $6615: $ff
	rst  $38                                         ; $6616: $ff
	rst  $38                                         ; $6617: $ff
	rst  $38                                         ; $6618: $ff
	ld   d, c                                        ; $6619: $51
	ld   de, $ff1f                                   ; $661a: $11 $1f $ff
	rst  $38                                         ; $661d: $ff
	rst  $38                                         ; $661e: $ff
	ld   a, [$deac]                                  ; $661f: $fa $ac $de
	ld   b, c                                        ; $6622: $41
	ld   de, $1f11                                   ; $6623: $11 $11 $1f
	rst  $38                                         ; $6626: $ff
	rst  $38                                         ; $6627: $ff
	rst  $38                                         ; $6628: $ff
	pop  hl                                          ; $6629: $e1
	ld   de, $ff17                                   ; $662a: $11 $17 $ff
	rst  $38                                         ; $662d: $ff
	rst  $38                                         ; $662e: $ff
	rst  $38                                         ; $662f: $ff
	xor  c                                           ; $6630: $a9
	rst  $38                                         ; $6631: $ff
	rst  $20                                         ; $6632: $e7
	ld   de, $1111                                   ; $6633: $11 $11 $11
	rra                                              ; $6636: $1f
	rst  $38                                         ; $6637: $ff
	rst  $38                                         ; $6638: $ff
	ld   sp, hl                                      ; $6639: $f9
	ld   de, $2f11                                   ; $663a: $11 $11 $2f
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	cp   c                                           ; $6640: $b9
	ld   c, e                                        ; $6641: $4b
	rst  $38                                         ; $6642: $ff
	or   $11                                         ; $6643: $f6 $11
	ld   de, $1f11                                   ; $6645: $11 $11 $1f
	rst  $38                                         ; $6648: $ff
	db   $fd                                         ; $6649: $fd
	add  e                                           ; $664a: $83
	ld   de, $2f11                                   ; $664b: $11 $11 $2f
	rst  $38                                         ; $664e: $ff
	rst  $38                                         ; $664f: $ff
	cp   $52                                         ; $6650: $fe $52
	ld   a, [de]                                     ; $6652: $1a
	rst  $38                                         ; $6653: $ff
	ld   a, [$1111]                                  ; $6654: $fa $11 $11
	ld   de, rAUD1LOW                                   ; $6657: $11 $13 $ff
	rst  $38                                         ; $665a: $ff
	ld   de, $1111                                   ; $665b: $11 $11 $11
	rra                                              ; $665e: $1f
	rst  $38                                         ; $665f: $ff
	rst  $38                                         ; $6660: $ff
	db   $fd                                         ; $6661: $fd
	ld   d, c                                        ; $6662: $51
	ld   d, $ff                                      ; $6663: $16 $ff
	rst  $38                                         ; $6665: $ff
	ld   d, c                                        ; $6666: $51
	ld   de, $1111                                   ; $6667: $11 $11 $11
	rra                                              ; $666a: $1f
	rst  $38                                         ; $666b: $ff
	pop  af                                          ; $666c: $f1
	ld   de, $1111                                   ; $666d: $11 $11 $11
	rst  $38                                         ; $6670: $ff
	rst  $38                                         ; $6671: $ff
	rst  $38                                         ; $6672: $ff
	sub  h                                           ; $6673: $94
	ld   de, $ffbf                                   ; $6674: $11 $bf $ff
	pop  af                                          ; $6677: $f1
	ld   de, $1111                                   ; $6678: $11 $11 $11
	ld   de, $ffff                                   ; $667b: $11 $ff $ff
	ld   de, $1111                                   ; $667e: $11 $11 $11
	rra                                              ; $6681: $1f
	rst  $38                                         ; $6682: $ff
	cp   $fc                                         ; $6683: $fe $fc
	ld   sp, $ff2f                                   ; $6685: $31 $2f $ff
	db   $fc                                         ; $6688: $fc
	ld   de, $1111                                   ; $6689: $11 $11 $11
	ld   de, $ff1f                                   ; $668c: $11 $1f $ff
	rst  $38                                         ; $668f: $ff
	ld   de, $1111                                   ; $6690: $11 $11 $11
	xor  a                                           ; $6693: $af
	rst  $38                                         ; $6694: $ff
	rst  $38                                         ; $6695: $ff
	rst  $30                                         ; $6696: $f7
	inc  sp                                          ; $6697: $33
	xor  a                                           ; $6698: $af
	rst  $38                                         ; $6699: $ff
	di                                               ; $669a: $f3
	ld   de, $1111                                   ; $669b: $11 $11 $11
	ld   de, $ff1f                                   ; $669e: $11 $1f $ff
	di                                               ; $66a1: $f3
	ld   de, $1111                                   ; $66a2: $11 $11 $11
	rst  $38                                         ; $66a5: $ff
	rst  $38                                         ; $66a6: $ff
	rst  $28                                         ; $66a7: $ef
	ldh  a, [c]                                      ; $66a8: $f2
	inc  de                                          ; $66a9: $13
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	sub  c                                           ; $66ac: $91
	ld   hl, $1111                                   ; $66ad: $21 $11 $11
	ld   de, $ff1f                                   ; $66b0: $11 $1f $ff
	ldh  a, [c]                                      ; $66b3: $f2
	ld   de, $1111                                   ; $66b4: $11 $11 $11
	rst  $38                                         ; $66b7: $ff
	rst  $38                                         ; $66b8: $ff
	xor  a                                           ; $66b9: $af
	push af                                          ; $66ba: $f5
	ld   de, $ffff                                   ; $66bb: $11 $ff $ff
	sub  d                                           ; $66be: $92
	ld   b, c                                        ; $66bf: $41
	ld   de, $1111                                   ; $66c0: $11 $11 $11
	rla                                              ; $66c3: $17
	rst  $38                                         ; $66c4: $ff
	ld   hl, sp+$15                                  ; $66c5: $f8 $15
	ld   de, rAUD1LEN                                   ; $66c7: $11 $11 $ff
	rst  $38                                         ; $66ca: $ff
	rst  JumpTable                                         ; $66cb: $df
	di                                               ; $66cc: $f3
	inc  d                                           ; $66cd: $14
	rst  $38                                         ; $66ce: $ff
	rst  $38                                         ; $66cf: $ff
	cp   d                                           ; $66d0: $ba
	ld   [hl], c                                     ; $66d1: $71
	ld   de, $1111                                   ; $66d2: $11 $11 $11
	ld   de, $ffff                                   ; $66d5: $11 $ff $ff
	dec  e                                           ; $66d8: $1d
	ld   hl, $df11                                   ; $66d9: $21 $11 $df
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	ld   sp, hl                                      ; $66de: $f9
	ld   de, $ffff                                   ; $66df: $11 $ff $ff
	rst  $38                                         ; $66e2: $ff
	or   h                                           ; $66e3: $b4
	ld   de, $1111                                   ; $66e4: $11 $11 $11
	ld   de, $ffff                                   ; $66e7: $11 $ff $ff
	xor  [hl]                                        ; $66ea: $ae
	or   c                                           ; $66eb: $b1
	ld   de, $ff4f                                   ; $66ec: $11 $4f $ff
	rst  $38                                         ; $66ef: $ff
	rst  $38                                         ; $66f0: $ff
	ld   de, $ffef                                   ; $66f1: $11 $ef $ff
	rst  $38                                         ; $66f4: $ff
	or   $11                                         ; $66f5: $f6 $11
	ld   de, $1111                                   ; $66f7: $11 $11 $11
	rra                                              ; $66fa: $1f
	rst  $38                                         ; $66fb: $ff
	ld   hl, sp-$08                                  ; $66fc: $f8 $f8
	ld   de, $ff17                                   ; $66fe: $11 $17 $ff
	rst  JumpTable                                         ; $6701: $df
	rst  $38                                         ; $6702: $ff
	pop  hl                                          ; $6703: $e1
	ld   a, a                                        ; $6704: $7f
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	db   $fc                                         ; $6707: $fc
	ld   [hl], c                                     ; $6708: $71
	ld   de, $1111                                   ; $6709: $11 $11 $11
	ld   de, $ffdf                                   ; $670c: $11 $df $ff
	xor  a                                           ; $670f: $af
	or   c                                           ; $6710: $b1
	ld   de, $974f                                   ; $6711: $11 $4f $97
	rst  $38                                         ; $6714: $ff
	rst  $38                                         ; $6715: $ff
	ld   c, d                                        ; $6716: $4a
	rst  $38                                         ; $6717: $ff
	rst  $38                                         ; $6718: $ff
	rst  $38                                         ; $6719: $ff
	jp   c, $1121                                    ; $671a: $da $21 $11

	ld   de, $1111                                   ; $671d: $11 $11 $11
	rst  $38                                         ; $6720: $ff
	rst  $38                                         ; $6721: $ff
	rst  $28                                         ; $6722: $ef
	ld   hl, $7a11                                   ; $6723: $21 $11 $7a
	ccf                                              ; $6726: $3f
	rst  $38                                         ; $6727: $ff
	cp   $df                                         ; $6728: $fe $df
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	rst  $38                                         ; $672c: $ff
	cp   b                                           ; $672d: $b8
	ld   b, h                                        ; $672e: $44
	ld   de, $1111                                   ; $672f: $11 $11 $11
	ld   de, $ffff                                   ; $6732: $11 $ff $ff
	rst  $38                                         ; $6735: $ff
	ld   hl, $7211                                   ; $6736: $21 $11 $72
	rrca                                             ; $6739: $0f
	rst  $38                                         ; $673a: $ff
	rst  $38                                         ; $673b: $ff
	rst  $38                                         ; $673c: $ff
	cp   $ef                                         ; $673d: $fe $ef
	db   $fd                                         ; $673f: $fd
	jp   z, $1196                                    ; $6740: $ca $96 $11

	ld   de, $1111                                   ; $6743: $11 $11 $11
	db   $fd                                         ; $6746: $fd
	ei                                               ; $6747: $fb
	rst  $38                                         ; $6748: $ff
	ld   [hl], c                                     ; $6749: $71
	ld   [de], a                                     ; $674a: $12
	add  d                                           ; $674b: $82
	ld   a, [de]                                     ; $674c: $1a
	rst  $38                                         ; $674d: $ff
	rst  $38                                         ; $674e: $ff
	rst  $38                                         ; $674f: $ff
	rst  $38                                         ; $6750: $ff
	rst  $38                                         ; $6751: $ff
	cp   $db                                         ; $6752: $fe $db
	cp   d                                           ; $6754: $ba
	ld   b, c                                        ; $6755: $41
	ld   de, $1111                                   ; $6756: $11 $11 $11
	ld   d, [hl]                                     ; $6759: $56
	reti                                             ; $675a: $d9


	rst  $28                                         ; $675b: $ef
	jp   hl                                          ; $675c: $e9


	ld   b, l                                        ; $675d: $45
	ld   [hl], l                                     ; $675e: $75
	ld   b, $af                                      ; $675f: $06 $af
	db   $fc                                         ; $6761: $fc
	rst  $38                                         ; $6762: $ff
	rst  $38                                         ; $6763: $ff
	rst  $38                                         ; $6764: $ff
	rst  $38                                         ; $6765: $ff
	res  5, d                                        ; $6766: $cb $aa
	ld   [hl], e                                     ; $6768: $73
	ld   de, $1111                                   ; $6769: $11 $11 $11
	ld   de, $4944                                   ; $676c: $11 $44 $49
	jp   z, Jump_0cf_6a75                            ; $676f: $ca $75 $6a

	add  l                                           ; $6772: $85
	ld   l, b                                        ; $6773: $68
	db   $dd                                         ; $6774: $dd
	call $feff                                       ; $6775: $cd $ff $fe
	sbc  $ff                                         ; $6778: $de $ff
	xor  $ff                                         ; $677a: $ee $ff
	cp   $cc                                         ; $677c: $fe $cc
	and  a                                           ; $677e: $a7
	ld   b, c                                        ; $677f: $41
	ld   de, $1111                                   ; $6780: $11 $11 $11
	ld   de, $1111                                   ; $6783: $11 $11 $11

Jump_0cf_6786:
	inc  de                                          ; $6786: $13
	ld   d, a                                        ; $6787: $57
	adc  $ff                                         ; $6788: $ce $ff
	rst  $38                                         ; $678a: $ff
	rst  $38                                         ; $678b: $ff
	rst  $38                                         ; $678c: $ff
	rst  $38                                         ; $678d: $ff
	rst  $38                                         ; $678e: $ff
	rst  $38                                         ; $678f: $ff
	cp   $da                                         ; $6790: $fe $da
	xor  b                                           ; $6792: $a8
	ld   h, e                                        ; $6793: $63
	ld   de, $1111                                   ; $6794: $11 $11 $11
	ld   de, $1111                                   ; $6797: $11 $11 $11
	ld   de, $7a35                                   ; $679a: $11 $35 $7a
	sbc  $ff                                         ; $679d: $de $ff
	rst  $38                                         ; $679f: $ff
	rst  $38                                         ; $67a0: $ff
	rst  $38                                         ; $67a1: $ff
	rst  $38                                         ; $67a2: $ff
	rst  $38                                         ; $67a3: $ff
	rst  $38                                         ; $67a4: $ff
	db   $ec                                         ; $67a5: $ec
	jp   z, $3186                                    ; $67a6: $ca $86 $31

	ld   de, $1111                                   ; $67a9: $11 $11 $11
	ld   de, $1111                                   ; $67ac: $11 $11 $11
	ld   de, $8a35                                   ; $67af: $11 $35 $8a
	rst  $28                                         ; $67b2: $ef
	rst  $38                                         ; $67b3: $ff
	rst  $38                                         ; $67b4: $ff
	rst  $38                                         ; $67b5: $ff
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	rst  $38                                         ; $67b8: $ff
	rst  $38                                         ; $67b9: $ff
	db   $fd                                         ; $67ba: $fd
	jp   z, $3296                                    ; $67bb: $ca $96 $32

	ld   de, $1111                                   ; $67be: $11 $11 $11
	ld   de, $1111                                   ; $67c1: $11 $11 $11
	ld   de, $8a36                                   ; $67c4: $11 $36 $8a
	rst  JumpTable                                         ; $67c7: $df
	rst  $38                                         ; $67c8: $ff
	rst  $38                                         ; $67c9: $ff
	rst  $38                                         ; $67ca: $ff
	rst  $38                                         ; $67cb: $ff
	rst  $38                                         ; $67cc: $ff
	rst  $38                                         ; $67cd: $ff
	rst  $38                                         ; $67ce: $ff
	db   $fd                                         ; $67cf: $fd
	call c, Call_0cf_4297                            ; $67d0: $dc $97 $42
	ld   de, $1111                                   ; $67d3: $11 $11 $11
	ld   de, $1111                                   ; $67d6: $11 $11 $11
	ld   de, $8b35                                   ; $67d9: $11 $35 $8b
	rst  JumpTable                                         ; $67dc: $df
	rst  $38                                         ; $67dd: $ff
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
	rst  $38                                         ; $67e0: $ff
	rst  $38                                         ; $67e1: $ff
	rst  $38                                         ; $67e2: $ff
	rst  $38                                         ; $67e3: $ff
	cp   $cb                                         ; $67e4: $fe $cb
	and  a                                           ; $67e6: $a7
	ld   d, d                                        ; $67e7: $52
	ld   de, $1111                                   ; $67e8: $11 $11 $11
	ld   de, $1111                                   ; $67eb: $11 $11 $11
	ld   de, $8b35                                   ; $67ee: $11 $35 $8b
	rst  JumpTable                                         ; $67f1: $df
	rst  $38                                         ; $67f2: $ff
	rst  $38                                         ; $67f3: $ff
	rst  $38                                         ; $67f4: $ff
	rst  $38                                         ; $67f5: $ff
	rst  $38                                         ; $67f6: $ff
	rst  $38                                         ; $67f7: $ff
	rst  $38                                         ; $67f8: $ff
	rst  $38                                         ; $67f9: $ff
	res  4, a                                        ; $67fa: $cb $a7
	ld   b, d                                        ; $67fc: $42
	ld   de, $1111                                   ; $67fd: $11 $11 $11
	ld   de, $1111                                   ; $6800: $11 $11 $11
	ld   de, $7a35                                   ; $6803: $11 $35 $7a
	rst  JumpTable                                         ; $6806: $df
	rst  $38                                         ; $6807: $ff
	rst  $38                                         ; $6808: $ff
	rst  $38                                         ; $6809: $ff
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	rst  $38                                         ; $680c: $ff
	rst  $38                                         ; $680d: $ff
	cp   $db                                         ; $680e: $fe $db
	and  a                                           ; $6810: $a7
	ld   b, d                                        ; $6811: $42
	ld   de, $1111                                   ; $6812: $11 $11 $11
	ld   de, $1111                                   ; $6815: $11 $11 $11
	ld   de, $7a35                                   ; $6818: $11 $35 $7a
	rst  JumpTable                                         ; $681b: $df
	rst  $38                                         ; $681c: $ff
	rst  $38                                         ; $681d: $ff
	rst  $38                                         ; $681e: $ff
	rst  $38                                         ; $681f: $ff
	rst  $38                                         ; $6820: $ff
	rst  $38                                         ; $6821: $ff
	rst  $38                                         ; $6822: $ff
	rst  $38                                         ; $6823: $ff
	res  4, a                                        ; $6824: $cb $a7
	ld   d, d                                        ; $6826: $52
	ld   de, $1111                                   ; $6827: $11 $11 $11
	ld   de, $1111                                   ; $682a: $11 $11 $11
	ld   de, $7935                                   ; $682d: $11 $35 $79
	rst  JumpTable                                         ; $6830: $df
	rst  $38                                         ; $6831: $ff
	rst  $38                                         ; $6832: $ff
	rst  $38                                         ; $6833: $ff
	rst  $38                                         ; $6834: $ff
	rst  $38                                         ; $6835: $ff
	rst  $38                                         ; $6836: $ff
	rst  $38                                         ; $6837: $ff
	rst  $38                                         ; $6838: $ff
	db   $db                                         ; $6839: $db
	xor  b                                           ; $683a: $a8
	ld   d, d                                        ; $683b: $52
	ld   de, $1111                                   ; $683c: $11 $11 $11
	ld   de, $1111                                   ; $683f: $11 $11 $11
	ld   de, $7a35                                   ; $6842: $11 $35 $7a
	rst  JumpTable                                         ; $6845: $df
	rst  $38                                         ; $6846: $ff
	rst  $38                                         ; $6847: $ff
	rst  $38                                         ; $6848: $ff
	rst  $38                                         ; $6849: $ff
	rst  $38                                         ; $684a: $ff
	rst  $38                                         ; $684b: $ff
	rst  $38                                         ; $684c: $ff
	rst  $38                                         ; $684d: $ff
	db   $ec                                         ; $684e: $ec
	xor  b                                           ; $684f: $a8
	ld   d, d                                        ; $6850: $52
	ld   de, $1111                                   ; $6851: $11 $11 $11
	ld   de, $1111                                   ; $6854: $11 $11 $11
	ld   de, $7924                                   ; $6857: $11 $24 $79
	cp   a                                           ; $685a: $bf
	rst  $38                                         ; $685b: $ff
	rst  $38                                         ; $685c: $ff
	rst  $38                                         ; $685d: $ff
	rst  $38                                         ; $685e: $ff
	rst  $38                                         ; $685f: $ff
	rst  $38                                         ; $6860: $ff
	rst  $38                                         ; $6861: $ff
	rst  $38                                         ; $6862: $ff
	db   $ed                                         ; $6863: $ed
	xor  b                                           ; $6864: $a8
	ld   h, e                                        ; $6865: $63
	ld   de, $1111                                   ; $6866: $11 $11 $11
	ld   de, $1111                                   ; $6869: $11 $11 $11
	ld   de, $6914                                   ; $686c: $11 $14 $69
	xor  [hl]                                        ; $686f: $ae
	rst  $38                                         ; $6870: $ff
	rst  $38                                         ; $6871: $ff
	rst  $38                                         ; $6872: $ff
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	rst  $38                                         ; $6876: $ff
	rst  $38                                         ; $6877: $ff
	db   $ed                                         ; $6878: $ed
	cp   d                                           ; $6879: $ba
	ld   [hl], l                                     ; $687a: $75
	ld   hl, $1111                                   ; $687b: $21 $11 $11
	ld   de, $1111                                   ; $687e: $11 $11 $11
	ld   de, $5713                                   ; $6881: $11 $13 $57
	sbc  h                                           ; $6884: $9c
	rst  $38                                         ; $6885: $ff
	rst  $38                                         ; $6886: $ff
	rst  $38                                         ; $6887: $ff
	rst  $38                                         ; $6888: $ff
	rst  $38                                         ; $6889: $ff
	rst  $38                                         ; $688a: $ff
	rst  $38                                         ; $688b: $ff
	rst  $38                                         ; $688c: $ff
	ei                                               ; $688d: $fb
	sbc  c                                           ; $688e: $99
	ld   h, e                                        ; $688f: $63
	ld   de, $1111                                   ; $6890: $11 $11 $11
	ld   de, $1111                                   ; $6893: $11 $11 $11
	ld   [de], a                                     ; $6896: $12
	ld   l, c                                        ; $6897: $69
	xor  h                                           ; $6898: $ac
	rst  JumpTable                                         ; $6899: $df
	rst  $38                                         ; $689a: $ff
	rst  $38                                         ; $689b: $ff
	rst  $38                                         ; $689c: $ff
	rst  $38                                         ; $689d: $ff
	rst  $38                                         ; $689e: $ff
	rst  $38                                         ; $689f: $ff
	rst  $38                                         ; $68a0: $ff
	rst  $38                                         ; $68a1: $ff
	ret                                              ; $68a2: $c9


	halt                                             ; $68a3: $76
	ld   sp, $1111                                   ; $68a4: $31 $11 $11
	ld   de, $1611                                   ; $68a7: $11 $11 $16
	xor  d                                           ; $68aa: $aa
	adc  b                                           ; $68ab: $88
	cp   h                                           ; $68ac: $bc
	sbc  b                                           ; $68ad: $98
	sbc  h                                           ; $68ae: $9c
	cp   $df                                         ; $68af: $fe $df
	rst  $38                                         ; $68b1: $ff
	rst  $38                                         ; $68b2: $ff
	rst  $38                                         ; $68b3: $ff
	rst  $38                                         ; $68b4: $ff
	xor  $ed                                         ; $68b5: $ee $ed
	sub  l                                           ; $68b7: $95
	ld   hl, $1111                                   ; $68b8: $21 $11 $11
	ld   de, $8a38                                   ; $68bb: $11 $38 $8a
	rst  $38                                         ; $68be: $ff
	ld   [hl], d                                     ; $68bf: $72
	ld   h, $82                                      ; $68c0: $26 $82
	ld   c, e                                        ; $68c2: $4b
	rst  $38                                         ; $68c3: $ff
	rst  $38                                         ; $68c4: $ff
	rst  $38                                         ; $68c5: $ff
	rst  $38                                         ; $68c6: $ff
	rst  $38                                         ; $68c7: $ff
	rst  $38                                         ; $68c8: $ff
	db   $ed                                         ; $68c9: $ed
	db   $fd                                         ; $68ca: $fd
	sub  l                                           ; $68cb: $95
	ld   hl, $1111                                   ; $68cc: $21 $11 $11
	ld   d, $ff                                      ; $68cf: $16 $ff
	db   $fd                                         ; $68d1: $fd
	ei                                               ; $68d2: $fb
	ld   de, $6114                                   ; $68d3: $11 $14 $61
	ld   l, a                                        ; $68d6: $6f
	rst  $38                                         ; $68d7: $ff
	rst  $38                                         ; $68d8: $ff
	rst  $38                                         ; $68d9: $ff
	rst  $38                                         ; $68da: $ff
	rst  $38                                         ; $68db: $ff
	rst  $38                                         ; $68dc: $ff
	sbc  $f9                                         ; $68dd: $de $f9
	ld   d, h                                        ; $68df: $54
	ld   sp, $1111                                   ; $68e0: $31 $11 $11
	rra                                              ; $68e3: $1f
	rst  $38                                         ; $68e4: $ff
	ei                                               ; $68e5: $fb
	rst  $30                                         ; $68e6: $f7
	ld   de, $9116                                   ; $68e7: $11 $16 $91
	sbc  a                                           ; $68ea: $9f
	rst  $38                                         ; $68eb: $ff
	xor  l                                           ; $68ec: $ad
	rst  $38                                         ; $68ed: $ff
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	db   $fd                                         ; $68f0: $fd
	xor  $e8                                         ; $68f1: $ee $e8
	ld   d, [hl]                                     ; $68f3: $56
	ld   d, c                                        ; $68f4: $51
	ld   de, $1f11                                   ; $68f5: $11 $11 $1f
	rst  $38                                         ; $68f8: $ff
	db   $fd                                         ; $68f9: $fd
	di                                               ; $68fa: $f3
	ld   de, $b219                                   ; $68fb: $11 $19 $b2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68fe: $cf
	rst  $38                                         ; $68ff: $ff
	ld   l, d                                        ; $6900: $6a
	rst  $38                                         ; $6901: $ff
	rst  $28                                         ; $6902: $ef
	rst  $38                                         ; $6903: $ff
	ei                                               ; $6904: $fb
	cp   h                                           ; $6905: $bc
	or   a                                           ; $6906: $b7
	ld   l, d                                        ; $6907: $6a
	add  d                                           ; $6908: $82
	ld   de, $1f11                                   ; $6909: $11 $11 $1f
	rst  $38                                         ; $690c: $ff
	ei                                               ; $690d: $fb
	pop  hl                                          ; $690e: $e1
	ld   de, $c51e                                   ; $690f: $11 $1e $c5
	rst  $38                                         ; $6912: $ff
	ei                                               ; $6913: $fb
	ld   a, [de]                                     ; $6914: $1a
	rst  $38                                         ; $6915: $ff
	rst  $38                                         ; $6916: $ff
	rst  $38                                         ; $6917: $ff
	ld   hl, sp-$46                                  ; $6918: $f8 $ba
	and  a                                           ; $691a: $a7
	sbc  e                                           ; $691b: $9b
	add  c                                           ; $691c: $81
	ld   de, $1f11                                   ; $691d: $11 $11 $1f
	rst  $38                                         ; $6920: $ff
	db   $fd                                         ; $6921: $fd
	or   c                                           ; $6922: $b1
	ld   de, $c77f                                   ; $6923: $11 $7f $c7
	rst  $38                                         ; $6926: $ff
	push af                                          ; $6927: $f5
	inc  e                                           ; $6928: $1c
	rst  $38                                         ; $6929: $ff
	rst  $38                                         ; $692a: $ff
	rst  $38                                         ; $692b: $ff
	or   a                                           ; $692c: $b7
	xor  c                                           ; $692d: $a9
	sub  a                                           ; $692e: $97
	xor  l                                           ; $692f: $ad
	ld   [hl], c                                     ; $6930: $71
	ld   de, $1f11                                   ; $6931: $11 $11 $1f
	rst  $38                                         ; $6934: $ff
	ld   sp, hl                                      ; $6935: $f9
	sub  c                                           ; $6936: $91
	ld   de, $daef                                   ; $6937: $11 $ef $da
	rst  $38                                         ; $693a: $ff
	pop  af                                          ; $693b: $f1
	rra                                              ; $693c: $1f
	rst  $38                                         ; $693d: $ff
	rst  $38                                         ; $693e: $ff
	rst  $38                                         ; $693f: $ff
	ld   [hl], l                                     ; $6940: $75
	adc  c                                           ; $6941: $89
	adc  b                                           ; $6942: $88
	db   $dd                                         ; $6943: $dd
	ld   [hl], c                                     ; $6944: $71
	ld   de, rAUD1LEN                                   ; $6945: $11 $11 $ff
	rst  $38                                         ; $6948: $ff
	ld   a, [$1151]                                  ; $6949: $fa $51 $11
	rst  $38                                         ; $694c: $ff
	adc  $ff                                         ; $694d: $ce $ff
	add  c                                           ; $694f: $81
	rra                                              ; $6950: $1f
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	rst  $38                                         ; $6953: $ff
	ld   b, h                                        ; $6954: $44
	ld   a, c                                        ; $6955: $79
	ld   a, c                                        ; $6956: $79
	db   $fd                                         ; $6957: $fd
	ld   d, c                                        ; $6958: $51
	ld   de, rAUD1LEN                                   ; $6959: $11 $11 $ff
	rst  $38                                         ; $695c: $ff
	ld   sp, hl                                      ; $695d: $f9
	ld   de, rAUD1LEN                                   ; $695e: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6961: $cf
	rst  $38                                         ; $6962: $ff
	ld   b, c                                        ; $6963: $41
	rra                                              ; $6964: $1f
	rst  $38                                         ; $6965: $ff
	rst  $38                                         ; $6966: $ff
	rst  $38                                         ; $6967: $ff
	ld   b, h                                        ; $6968: $44
	ld   e, b                                        ; $6969: $58
	ld   l, d                                        ; $696a: $6a
	db   $fd                                         ; $696b: $fd
	ld   d, c                                        ; $696c: $51
	ld   de, rAUD1LEN                                   ; $696d: $11 $11 $ff
	rst  $38                                         ; $6970: $ff
	ld   hl, sp+$11                                  ; $6971: $f8 $11
	ld   [de], a                                     ; $6973: $12

Call_0cf_6974:
	rst  $38                                         ; $6974: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6975: $cf
	rst  $38                                         ; $6976: $ff
	ld   de, $ff3f                                   ; $6977: $11 $3f $ff
	rst  $38                                         ; $697a: $ff
	db   $fd                                         ; $697b: $fd
	inc  [hl]                                        ; $697c: $34
	ld   d, [hl]                                     ; $697d: $56
	ld   c, d                                        ; $697e: $4a
	db   $fc                                         ; $697f: $fc
	ld   b, c                                        ; $6980: $41
	ld   de, rAUD1LEN                                   ; $6981: $11 $11 $ff
	rst  $38                                         ; $6984: $ff
	db   $eb                                         ; $6985: $eb
	ld   de, $fd19                                   ; $6986: $11 $19 $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6989: $cf
	rst  $38                                         ; $698a: $ff
	ld   de, $ff5f                                   ; $698b: $11 $5f $ff
	rst  $38                                         ; $698e: $ff
	db   $fc                                         ; $698f: $fc
	ld   b, l                                        ; $6990: $45
	ld   d, h                                        ; $6991: $54
	dec  hl                                          ; $6992: $2b
	ei                                               ; $6993: $fb
	ld   b, c                                        ; $6994: $41
	ld   de, rAUD1LEN                                   ; $6995: $11 $11 $ff
	rst  $38                                         ; $6998: $ff
	rst  $28                                         ; $6999: $ef
	ld   de, $f91d                                   ; $699a: $11 $1d $f9
	cp   a                                           ; $699d: $bf
	rst  $38                                         ; $699e: $ff
	ld   de, $ee9f                                   ; $699f: $11 $9f $ee
	rst  $38                                         ; $69a2: $ff
	ld   a, [$5267]                                  ; $69a3: $fa $67 $52
	dec  l                                           ; $69a6: $2d
	ld   sp, hl                                      ; $69a7: $f9
	ld   de, $1f11                                   ; $69a8: $11 $11 $1f
	rst  $38                                         ; $69ab: $ff
	rst  $38                                         ; $69ac: $ff
	ld   a, [$1f11]                                  ; $69ad: $fa $11 $1f
	or   h                                           ; $69b0: $b4
	rst  $38                                         ; $69b1: $ff
	rst  $30                                         ; $69b2: $f7
	inc  de                                          ; $69b3: $13
	db   $ed                                         ; $69b4: $ed
	sbc  a                                           ; $69b5: $9f
	rst  $38                                         ; $69b6: $ff
	ld   a, [$21b9]                                  ; $69b7: $fa $b9 $21
	inc  a                                           ; $69ba: $3c
	or   l                                           ; $69bb: $b5
	ld   de, $1f11                                   ; $69bc: $11 $11 $1f
	db   $f4                                         ; $69bf: $f4
	rst  $38                                         ; $69c0: $ff
	pop  af                                          ; $69c1: $f1
	ld   de, $15bf                                   ; $69c2: $11 $bf $15
	rst  $38                                         ; $69c5: $ff
	pop  af                                          ; $69c6: $f1
	ld   e, $e7                                      ; $69c7: $1e $e7
	adc  a                                           ; $69c9: $8f
	rst  $38                                         ; $69ca: $ff
	set  2, [hl]                                     ; $69cb: $cb $d6
	ld   de, $517b                                   ; $69cd: $11 $7b $51
	ld   de, rAUD1LEN                                   ; $69d0: $11 $11 $ff
	rra                                              ; $69d3: $1f
	rst  $38                                         ; $69d4: $ff
	ld   b, c                                        ; $69d5: $41
	dec  d                                           ; $69d6: $15
	pop  af                                          ; $69d7: $f1
	rra                                              ; $69d8: $1f
	rst  $38                                         ; $69d9: $ff
	ld   de, $54df                                   ; $69da: $11 $df $54
	rst  $38                                         ; $69dd: $ff
	cp   $ef                                         ; $69de: $fe $ef
	add  c                                           ; $69e0: $81
	inc  de                                          ; $69e1: $13
	and  e                                           ; $69e2: $a3
	ld   de, $1f11                                   ; $69e3: $11 $11 $1f
	pop  af                                          ; $69e6: $f1
	rst  $38                                         ; $69e7: $ff
	ld   a, [$4f11]                                  ; $69e8: $fa $11 $4f
	ld   de, $f3ff                                   ; $69eb: $11 $ff $f3
	rra                                              ; $69ee: $1f
	di                                               ; $69ef: $f3
	cpl                                              ; $69f0: $2f
	rst  $38                                         ; $69f1: $ff
	adc  $fc                                         ; $69f2: $ce $fc
	ld   de, $1118                                   ; $69f4: $11 $18 $11
	ld   de, rAUD1LEN                                   ; $69f7: $11 $11 $ff
	rra                                              ; $69fa: $1f
	rst  $38                                         ; $69fb: $ff
	ld   de, $611b                                   ; $69fc: $11 $1b $61
	cpl                                              ; $69ff: $2f
	rst  $38                                         ; $6a00: $ff
	ld   c, d                                        ; $6a01: $4a
	db   $fd                                         ; $6a02: $fd
	ld   de, $fcff                                   ; $6a03: $11 $ff $fc
	rst  $38                                         ; $6a06: $ff
	and  c                                           ; $6a07: $a1
	ld   de, $1121                                   ; $6a08: $11 $21 $11
	ld   de, $8eff                                   ; $6a0b: $11 $ff $8e
	rst  $38                                         ; $6a0e: $ff
	pop  af                                          ; $6a0f: $f1
	ld   de, $1cf1                                   ; $6a10: $11 $f1 $1c
	rst  $38                                         ; $6a13: $ff
	ret  c                                           ; $6a14: $d8

	rst  $38                                         ; $6a15: $ff
	ld   [hl], c                                     ; $6a16: $71
	ld   l, a                                        ; $6a17: $6f
	ld   sp, hl                                      ; $6a18: $f9
	rst  JumpTable                                         ; $6a19: $df
	rst  $30                                         ; $6a1a: $f7
	ld   de, $1121                                   ; $6a1b: $11 $21 $11
	ld   de, $f84f                                   ; $6a1e: $11 $4f $f8
	rst  $38                                         ; $6a21: $ff
	pop  af                                          ; $6a22: $f1
	ld   de, $12d1                                   ; $6a23: $11 $d1 $12
	rst  $38                                         ; $6a26: $ff
	db   $fc                                         ; $6a27: $fc
	rst  $38                                         ; $6a28: $ff
	pop  af                                          ; $6a29: $f1
	cpl                                              ; $6a2a: $2f
	ld   hl, sp-$61                                  ; $6a2b: $f8 $9f
	cp   $31                                         ; $6a2d: $fe $31
	ld   de, $1111                                   ; $6a2f: $11 $11 $11
	rst  $28                                         ; $6a32: $ef
	ccf                                              ; $6a33: $3f
	rst  $38                                         ; $6a34: $ff
	pop  af                                          ; $6a35: $f1
	ld   de, $11a1                                   ; $6a36: $11 $a1 $11
	rst  $38                                         ; $6a39: $ff
	cp   $ff                                         ; $6a3a: $fe $ff
	ld   hl, sp+$6f                                  ; $6a3c: $f8 $6f
	di                                               ; $6a3e: $f3
	ld   l, a                                        ; $6a3f: $6f
	db   $fc                                         ; $6a40: $fc
	ld   d, c                                        ; $6a41: $51
	ld   de, $1111                                   ; $6a42: $11 $11 $11
	rst  $38                                         ; $6a45: $ff
	rra                                              ; $6a46: $1f
	rst  $38                                         ; $6a47: $ff
	pop  af                                          ; $6a48: $f1
	rra                                              ; $6a49: $1f
	ld   b, c                                        ; $6a4a: $41
	inc  de                                          ; $6a4b: $13
	cp   $3f                                         ; $6a4c: $fe $3f
	rst  $38                                         ; $6a4e: $ff
	ld   a, [$c1ff]                                  ; $6a4f: $fa $ff $c1
	ld   l, a                                        ; $6a52: $6f
	push hl                                          ; $6a53: $e5
	ld   de, $1121                                   ; $6a54: $11 $21 $11
	rra                                              ; $6a57: $1f
	pop  af                                          ; $6a58: $f1
	xor  a                                           ; $6a59: $af
	rst  $38                                         ; $6a5a: $ff
	add  c                                           ; $6a5b: $81
	rst  $38                                         ; $6a5c: $ff
	ld   de, $e115                                   ; $6a5d: $11 $15 $e1
	dec  e                                           ; $6a60: $1d
	rst  $38                                         ; $6a61: $ff
	db   $fc                                         ; $6a62: $fc
	rst  $38                                         ; $6a63: $ff

jr_0cf_6a64:
	call nc, $f26d                                   ; $6a64: $d4 $6d $f2
	ld   de, $1121                                   ; $6a67: $11 $21 $11
	rra                                              ; $6a6a: $1f
	pop  af                                          ; $6a6b: $f1
	cp   a                                           ; $6a6c: $bf
	rst  $38                                         ; $6a6d: $ff
	ld   d, c                                        ; $6a6e: $51
	rst  $38                                         ; $6a6f: $ff
	ld   h, c                                        ; $6a70: $61
	jr   jr_0cf_6a64                                 ; $6a71: $18 $f1

	inc  de                                          ; $6a73: $13

Call_0cf_6a74:
	rst  $38                                         ; $6a74: $ff

Jump_0cf_6a75:
	rst  $30                                         ; $6a75: $f7
	rst  $38                                         ; $6a76: $ff
	ld   sp, hl                                      ; $6a77: $f9
	ld   a, [hl-]                                    ; $6a78: $3a
	ld   a, [$7745]                                  ; $6a79: $fa $45 $77
	ld   de, $710e                                   ; $6a7c: $11 $0e $71
	ld   sp, $516a                                   ; $6a7f: $31 $6a $51
	add  hl, sp                                      ; $6a82: $39
	sbc  b                                           ; $6a83: $98
	ld   b, [hl]                                     ; $6a84: $46
	call c, $af75                                    ; $6a85: $dc $75 $af
	db   $fc                                         ; $6a88: $fc
	cp   l                                           ; $6a89: $bd
	call c, $cbaa                                    ; $6a8a: $dc $aa $cb
	db   $dd                                         ; $6a8d: $dd
	db   $dd                                         ; $6a8e: $dd
	xor  c                                           ; $6a8f: $a9
	add  [hl]                                        ; $6a90: $86
	ld   b, l                                        ; $6a91: $45
	ld   d, e                                        ; $6a92: $53
	ld   de, $1132                                   ; $6a93: $11 $32 $11
	inc  d                                           ; $6a96: $14
	ld   b, e                                        ; $6a97: $43
	ld   b, a                                        ; $6a98: $47
	adc  b                                           ; $6a99: $88
	adc  d                                           ; $6a9a: $8a
	db   $dd                                         ; $6a9b: $dd
	db   $dd                                         ; $6a9c: $dd
	db   $dd                                         ; $6a9d: $dd
	db   $dd                                         ; $6a9e: $dd
	sbc  $ff                                         ; $6a9f: $de $ff
	rst  $38                                         ; $6aa1: $ff
	db   $ed                                         ; $6aa2: $ed
	ld   [$5776], a                                  ; $6aa3: $ea $76 $57
	ld   [hl], e                                     ; $6aa6: $73
	ld   [de], a                                     ; $6aa7: $12
	ld   de, $1111                                   ; $6aa8: $11 $11 $11
	inc  de                                          ; $6aab: $13
	inc  sp                                          ; $6aac: $33
	ld   e, c                                        ; $6aad: $59
	xor  d                                           ; $6aae: $aa
	xor  e                                           ; $6aaf: $ab
	sbc  $bc                                         ; $6ab0: $de $bc
	rst  JumpTable                                         ; $6ab2: $df
	db   $ec                                         ; $6ab3: $ec
	rst  $28                                         ; $6ab4: $ef
	rst  $38                                         ; $6ab5: $ff
	db   $fc                                         ; $6ab6: $fc
	call Call_0cf_75a9                               ; $6ab7: $cd $a9 $75
	ld   l, b                                        ; $6aba: $68
	ld   d, c                                        ; $6abb: $51
	ld   de, $1111                                   ; $6abc: $11 $11 $11
	inc  de                                          ; $6abf: $13
	inc  [hl]                                        ; $6ac0: $34
	ld   b, [hl]                                     ; $6ac1: $46
	adc  $cc                                         ; $6ac2: $ce $cc
	rst  $28                                         ; $6ac4: $ef
	ld   [$ee9c], a                                  ; $6ac5: $ea $9c $ee
	db   $ec                                         ; $6ac8: $ec
	rst  $28                                         ; $6ac9: $ef
	db   $eb                                         ; $6aca: $eb
	cp   h                                           ; $6acb: $bc
	cp   c                                           ; $6acc: $b9
	ld   sp, $d112                                   ; $6acd: $31 $12 $d1
	ld   de, $5127                                   ; $6ad0: $11 $27 $51
	ld   l, a                                        ; $6ad3: $6f
	or   $8e                                         ; $6ad4: $f6 $8e
	rst  $38                                         ; $6ad6: $ff
	ld   b, l                                        ; $6ad7: $45
	rst  $38                                         ; $6ad8: $ff
	ld   [hl], h                                     ; $6ad9: $74
	adc  a                                           ; $6ada: $8f
	ei                                               ; $6adb: $fb
	rst  $28                                         ; $6adc: $ef
	rst  $38                                         ; $6add: $ff
	ld   h, l                                        ; $6ade: $65
	ld   h, c                                        ; $6adf: $61
	ld   de, $f11f                                   ; $6ae0: $11 $1f $f1
	ld   c, a                                        ; $6ae3: $4f
	rst  $38                                         ; $6ae4: $ff
	xor  d                                           ; $6ae5: $aa
	rst  $38                                         ; $6ae6: $ff
	ld   de, $717e                                   ; $6ae7: $11 $7e $71
	inc  e                                           ; $6aea: $1c
	rst  $30                                         ; $6aeb: $f7
	ld   a, a                                        ; $6aec: $7f
	rst  $38                                         ; $6aed: $ff
	xor  a                                           ; $6aee: $af
	db   $fd                                         ; $6aef: $fd
	ld   de, $1111                                   ; $6af0: $11 $11 $11
	pop  af                                          ; $6af3: $f1
	rra                                              ; $6af4: $1f
	rst  $38                                         ; $6af5: $ff
	db   $fd                                         ; $6af6: $fd
	rst  $38                                         ; $6af7: $ff
	pop  de                                          ; $6af8: $d1
	inc  de                                          ; $6af9: $13
	ld   [hl], c                                     ; $6afa: $71
	inc  de                                          ; $6afb: $13
	db   $fc                                         ; $6afc: $fc
	rst  $28                                         ; $6afd: $ef
	rst  $38                                         ; $6afe: $ff
	rst  JumpTable                                         ; $6aff: $df
	db   $f4                                         ; $6b00: $f4
	ld   de, $1f11                                   ; $6b01: $11 $11 $1f
	ld   de, $ffff                                   ; $6b04: $11 $ff $ff
	rst  $38                                         ; $6b07: $ff
	pop  af                                          ; $6b08: $f1
	ld   a, [de]                                     ; $6b09: $1a
	ld   de, $9911                                   ; $6b0a: $11 $11 $99
	ld   l, a                                        ; $6b0d: $6f
	rst  $38                                         ; $6b0e: $ff
	cp   $ff                                         ; $6b0f: $fe $ff
	ld   de, $1111                                   ; $6b11: $11 $11 $11
	pop  af                                          ; $6b14: $f1
	rra                                              ; $6b15: $1f
	rst  $38                                         ; $6b16: $ff
	rst  $38                                         ; $6b17: $ff
	rst  $38                                         ; $6b18: $ff
	ld   de, $1161                                   ; $6b19: $11 $61 $11
	ld   e, $ca                                      ; $6b1c: $1e $ca
	rst  $38                                         ; $6b1e: $ff
	rst  $38                                         ; $6b1f: $ff
	rst  JumpTable                                         ; $6b20: $df
	pop  af                                          ; $6b21: $f1
	ld   de, $1f11                                   ; $6b22: $11 $11 $1f
	ld   de, $ffff                                   ; $6b25: $11 $ff $ff
	rst  $38                                         ; $6b28: $ff
	pop  af                                          ; $6b29: $f1
	dec  d                                           ; $6b2a: $15
	ld   de, $fb13                                   ; $6b2b: $11 $13 $fb
	rst  $38                                         ; $6b2e: $ff
	rst  $38                                         ; $6b2f: $ff
	cp   $f4                                         ; $6b30: $fe $f4
	ld   de, $1f11                                   ; $6b32: $11 $11 $1f
	pop  af                                          ; $6b35: $f1
	rst  $38                                         ; $6b36: $ff
	rst  $38                                         ; $6b37: $ff
	rst  $38                                         ; $6b38: $ff
	pop  af                                          ; $6b39: $f1
	ld   de, $1111                                   ; $6b3a: $11 $11 $11
	db   $fd                                         ; $6b3d: $fd
	rst  $38                                         ; $6b3e: $ff
	rst  $38                                         ; $6b3f: $ff
	rst  $38                                         ; $6b40: $ff
	rst  $30                                         ; $6b41: $f7
	ld   de, $1811                                   ; $6b42: $11 $11 $18
	pop  af                                          ; $6b45: $f1
	rst  $38                                         ; $6b46: $ff
	rst  $38                                         ; $6b47: $ff
	rst  $38                                         ; $6b48: $ff
	pop  af                                          ; $6b49: $f1
	ld   de, $1111                                   ; $6b4a: $11 $11 $11
	db   $fc                                         ; $6b4d: $fc
	rst  $38                                         ; $6b4e: $ff
	rst  $38                                         ; $6b4f: $ff
	rst  $38                                         ; $6b50: $ff
	rst  $20                                         ; $6b51: $e7
	ld   de, $1911                                   ; $6b52: $11 $11 $19
	pop  af                                          ; $6b55: $f1
	rst  $38                                         ; $6b56: $ff
	rst  $38                                         ; $6b57: $ff
	rst  $38                                         ; $6b58: $ff
	pop  af                                          ; $6b59: $f1
	ld   de, $1111                                   ; $6b5a: $11 $11 $11
	db   $fc                                         ; $6b5d: $fc
	rst  $38                                         ; $6b5e: $ff
	rst  $38                                         ; $6b5f: $ff
	rst  $38                                         ; $6b60: $ff
	db   $e4                                         ; $6b61: $e4
	ld   de, $1f11                                   ; $6b62: $11 $11 $1f
	pop  hl                                          ; $6b65: $e1
	rst  $38                                         ; $6b66: $ff
	rst  $38                                         ; $6b67: $ff
	rst  $38                                         ; $6b68: $ff
	pop  af                                          ; $6b69: $f1
	rla                                              ; $6b6a: $17
	ld   de, $f911                                   ; $6b6b: $11 $11 $f9
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	sub  c                                           ; $6b71: $91
	ld   de, $1f11                                   ; $6b72: $11 $11 $1f
	rra                                              ; $6b75: $1f
	rst  $38                                         ; $6b76: $ff
	rst  $38                                         ; $6b77: $ff
	rst  $38                                         ; $6b78: $ff
	ld   de, $1161                                   ; $6b79: $11 $61 $11
	dec  e                                           ; $6b7c: $1d
	xor  a                                           ; $6b7d: $af
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	rst  $30                                         ; $6b80: $f7
	ld   bc, $1111                                   ; $6b81: $01 $11 $11
	pop  af                                          ; $6b84: $f1
	rst  $38                                         ; $6b85: $ff
	rst  $38                                         ; $6b86: $ff
	rst  $38                                         ; $6b87: $ff
	di                                               ; $6b88: $f3
	rla                                              ; $6b89: $17
	ld   de, $b411                                   ; $6b8a: $11 $11 $b4
	rst  $38                                         ; $6b8d: $ff
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	ld   h, c                                        ; $6b90: $61
	ld   de, $ed11                                   ; $6b91: $11 $11 $ed
	rra                                              ; $6b94: $1f
	rst  $38                                         ; $6b95: $ff
	rst  $38                                         ; $6b96: $ff
	rst  $38                                         ; $6b97: $ff
	ld   de, $11b1                                   ; $6b98: $11 $b1 $11
	dec  de                                          ; $6b9b: $1b
	rra                                              ; $6b9c: $1f
	rst  $38                                         ; $6b9d: $ff
	rst  $38                                         ; $6b9e: $ff
	di                                               ; $6b9f: $f3
	ld   de, $1f11                                   ; $6ba0: $11 $11 $1f
	rra                                              ; $6ba3: $1f
	rst  $38                                         ; $6ba4: $ff
	rst  $38                                         ; $6ba5: $ff
	rst  $38                                         ; $6ba6: $ff
	and  c                                           ; $6ba7: $a1
	or   c                                           ; $6ba8: $b1
	ld   de, $1b16                                   ; $6ba9: $11 $16 $1b
	rst  $38                                         ; $6bac: $ff
	rst  $38                                         ; $6bad: $ff
	db   $f4                                         ; $6bae: $f4
	ld   de, $1f11                                   ; $6baf: $11 $11 $1f
	rra                                              ; $6bb2: $1f
	rst  $38                                         ; $6bb3: $ff
	rst  $38                                         ; $6bb4: $ff
	rst  $38                                         ; $6bb5: $ff
	sub  c                                           ; $6bb6: $91
	pop  af                                          ; $6bb7: $f1
	ld   de, $1c13                                   ; $6bb8: $11 $13 $1c
	rst  $38                                         ; $6bbb: $ff
	rst  $38                                         ; $6bbc: $ff
	pop  af                                          ; $6bbd: $f1
	ld   de, $c311                                   ; $6bbe: $11 $11 $c3
	rra                                              ; $6bc1: $1f
	rst  $38                                         ; $6bc2: $ff
	rst  $38                                         ; $6bc3: $ff
	rst  $38                                         ; $6bc4: $ff
	ld   h, h                                        ; $6bc5: $64
	pop  af                                          ; $6bc6: $f1
	ld   de, $1f14                                   ; $6bc7: $11 $14 $1f
	rst  $38                                         ; $6bca: $ff
	rst  $28                                         ; $6bcb: $ef
	pop  af                                          ; $6bcc: $f1
	ld   de, $f111                                   ; $6bcd: $11 $11 $f1
	rra                                              ; $6bd0: $1f
	cp   a                                           ; $6bd1: $bf
	rst  $38                                         ; $6bd2: $ff
	rst  $38                                         ; $6bd3: $ff
	dec  e                                           ; $6bd4: $1d
	and  c                                           ; $6bd5: $a1
	ld   hl, $5f84                                   ; $6bd6: $21 $84 $5f
	rst  $38                                         ; $6bd9: $ff
	rst  $38                                         ; $6bda: $ff
	ld   de, $1f11                                   ; $6bdb: $11 $11 $1f
	ld   de, $ffff                                   ; $6bde: $11 $ff $ff
	rst  $38                                         ; $6be1: $ff
	pop  af                                          ; $6be2: $f1
	ld   e, a                                        ; $6be3: $5f
	ld   de, $b215                                   ; $6be4: $11 $15 $b2
	rst  $38                                         ; $6be7: $ff
	rst  $38                                         ; $6be8: $ff
	db   $f4                                         ; $6be9: $f4
	ld   de, $f111                                   ; $6bea: $11 $11 $f1
	rra                                              ; $6bed: $1f
	rst  $38                                         ; $6bee: $ff
	rst  $38                                         ; $6bef: $ff
	rst  $38                                         ; $6bf0: $ff
	ld   de, $11f1                                   ; $6bf1: $11 $f1 $11
	ld   c, h                                        ; $6bf4: $4c
	ld   l, a                                        ; $6bf5: $6f
	rst  $38                                         ; $6bf6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bf7: $cf
	ld   hl, $1f11                                   ; $6bf8: $21 $11 $1f
	ld   de, $ffff                                   ; $6bfb: $11 $ff $ff
	rst  $38                                         ; $6bfe: $ff
	ldh  a, [c]                                      ; $6bff: $f2
	rra                                              ; $6c00: $1f
	ld   de, $d714                                   ; $6c01: $11 $14 $d7
	rst  $38                                         ; $6c04: $ff
	db   $fc                                         ; $6c05: $fc
	pop  af                                          ; $6c06: $f1
	ld   de, $f111                                   ; $6c07: $11 $11 $f1
	rra                                              ; $6c0a: $1f
	rst  $38                                         ; $6c0b: $ff
	rst  $38                                         ; $6c0c: $ff
	rst  $38                                         ; $6c0d: $ff
	ld   de, $11f1                                   ; $6c0e: $11 $f1 $11
	sbc  a                                           ; $6c11: $9f
	xor  a                                           ; $6c12: $af
	rst  $38                                         ; $6c13: $ff
	xor  a                                           ; $6c14: $af
	ld   de, $1f11                                   ; $6c15: $11 $11 $1f
	ld   de, $feff                                   ; $6c18: $11 $ff $fe
	rst  $38                                         ; $6c1b: $ff
	pop  af                                          ; $6c1c: $f1
	rra                                              ; $6c1d: $1f
	ld   de, $fd1c                                   ; $6c1e: $11 $1c $fd
	rst  $28                                         ; $6c21: $ef
	ei                                               ; $6c22: $fb
	add  c                                           ; $6c23: $81
	ld   de, $811f                                   ; $6c24: $11 $1f $81
	rst  $38                                         ; $6c27: $ff
	rst  $38                                         ; $6c28: $ff
	cp   a                                           ; $6c29: $bf
	cp   $1c                                         ; $6c2a: $fe $1c
	ld   d, [hl]                                     ; $6c2c: $56
	ld   de, $fbff                                   ; $6c2d: $11 $ff $fb
	rst  $38                                         ; $6c30: $ff
	and  c                                           ; $6c31: $a1
	ld   de, $f111                                   ; $6c32: $11 $11 $f1
	rst  JumpTable                                         ; $6c35: $df
	rst  $38                                         ; $6c36: $ff
	rst  $38                                         ; $6c37: $ff
	rst  $38                                         ; $6c38: $ff
	ld   de, $c1c3                                   ; $6c39: $11 $c3 $c1
	xor  a                                           ; $6c3c: $af
	db   $fc                                         ; $6c3d: $fc
	rst  $38                                         ; $6c3e: $ff
	and  c                                           ; $6c3f: $a1
	ld   de, $f111                                   ; $6c40: $11 $11 $f1
	rra                                              ; $6c43: $1f
	rst  $38                                         ; $6c44: $ff
	cp   $ff                                         ; $6c45: $fe $ff
	ld   h, c                                        ; $6c47: $61
	or   d                                           ; $6c48: $b2
	call nc, $ff3f                                   ; $6c49: $d4 $3f $ff
	cp   a                                           ; $6c4c: $bf
	sub  l                                           ; $6c4d: $95
	ld   de, $f111                                   ; $6c4e: $11 $11 $f1
	rra                                              ; $6c51: $1f
	rst  $38                                         ; $6c52: $ff
	ld   a, [$d1ff]                                  ; $6c53: $fa $ff $d1
	ld   h, h                                        ; $6c56: $64
	ld   a, [$ff1b]                                  ; $6c57: $fa $1b $ff
	sbc  h                                           ; $6c5a: $9c
	ld   [hl], a                                     ; $6c5b: $77
	ld   de, $f111                                   ; $6c5c: $11 $11 $f1
	rra                                              ; $6c5f: $1f
	rst  $38                                         ; $6c60: $ff
	rst  $30                                         ; $6c61: $f7
	cp   a                                           ; $6c62: $bf
	pop  af                                          ; $6c63: $f1
	ld   sp, $54ef                                   ; $6c64: $31 $ef $54
	rst  $38                                         ; $6c67: $ff
	ld   a, [$1111]                                  ; $6c68: $fa $11 $11
	ld   de, $bcf2                                   ; $6c6b: $11 $f2 $bc
	xor  a                                           ; $6c6e: $af
	db   $fd                                         ; $6c6f: $fd
	ld   c, a                                        ; $6c70: $4f
	ld   hl, sp-$7f                                  ; $6c71: $f8 $81
	ld   a, a                                        ; $6c73: $7f
	ld   a, [$ffff]                                  ; $6c74: $fa $ff $ff
	ld   hl, $1411                                   ; $6c77: $21 $11 $14
	call nz, $cff9                                   ; $6c7a: $c4 $f9 $cf
	db   $fd                                         ; $6c7d: $fd
	sbc  a                                           ; $6c7e: $9f
	cp   e                                           ; $6c7f: $bb
	push bc                                          ; $6c80: $c5
	ld   l, a                                        ; $6c81: $6f
	call c, $bafe                                    ; $6c82: $dc $fe $ba
	ld   d, c                                        ; $6c85: $51
	ld   de, $8919                                   ; $6c86: $11 $19 $89
	add  d                                           ; $6c89: $82
	ld   e, e                                        ; $6c8a: $5b
	rst  $38                                         ; $6c8b: $ff
	db   $db                                         ; $6c8c: $db
	ld   a, c                                        ; $6c8d: $79
	cp   e                                           ; $6c8e: $bb
	xor  d                                           ; $6c8f: $aa
	adc  $ff                                         ; $6c90: $ce $ff
	cp   d                                           ; $6c92: $ba
	add  e                                           ; $6c93: $83
	ld   hl, $6516                                   ; $6c94: $21 $16 $65
	ld   hl, $7924                                   ; $6c97: $21 $24 $79
	ld   [hl], l                                     ; $6c9a: $75
	ld   b, [hl]                                     ; $6c9b: $46
	ld   a, h                                        ; $6c9c: $7c
	db   $ed                                         ; $6c9d: $ed
	xor  $ff                                         ; $6c9e: $ee $ff
	rst  $38                                         ; $6ca0: $ff
	ld   [$3496], a                                  ; $6ca1: $ea $96 $34
	ld   b, d                                        ; $6ca4: $42
	ld   de, $1411                                   ; $6ca5: $11 $11 $14
	ld   [de], a                                     ; $6ca8: $12
	dec  h                                           ; $6ca9: $25
	ld   a, d                                        ; $6caa: $7a
	cp   $ff                                         ; $6cab: $fe $ff
	rst  $38                                         ; $6cad: $ff
	rst  $38                                         ; $6cae: $ff
	cp   $b9                                         ; $6caf: $fe $b9
	ld   b, h                                        ; $6cb1: $44
	ld   d, c                                        ; $6cb2: $51
	ld   de, $1211                                   ; $6cb3: $11 $11 $12
	ld   de, $7914                                   ; $6cb6: $11 $14 $79
	cp   $ff                                         ; $6cb9: $fe $ff
	rst  $38                                         ; $6cbb: $ff
	rst  $38                                         ; $6cbc: $ff
	rst  $38                                         ; $6cbd: $ff
	jp   hl                                          ; $6cbe: $e9


	ld   h, e                                        ; $6cbf: $63
	ld   d, e                                        ; $6cc0: $53
	ld   de, $1111                                   ; $6cc1: $11 $11 $11
	ld   de, $7922                                   ; $6cc4: $11 $22 $79
	rst  JumpTable                                         ; $6cc7: $df
	rst  $38                                         ; $6cc8: $ff
	rst  $38                                         ; $6cc9: $ff
	rst  $38                                         ; $6cca: $ff
	rst  $38                                         ; $6ccb: $ff
	ld   a, [$4474]                                  ; $6ccc: $fa $74 $44
	ld   hl, $1111                                   ; $6ccf: $21 $11 $11
	ld   hl, $5921                                   ; $6cd2: $21 $21 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cd5: $cf
	rst  $38                                         ; $6cd6: $ff
	rst  $38                                         ; $6cd7: $ff
	rst  $38                                         ; $6cd8: $ff
	rst  $38                                         ; $6cd9: $ff
	ei                                               ; $6cda: $fb
	ld   [hl], h                                     ; $6cdb: $74
	ld   d, [hl]                                     ; $6cdc: $56
	ld   hl, $1111                                   ; $6cdd: $21 $11 $11
	ld   hl, $5811                                   ; $6ce0: $21 $11 $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ce3: $cf
	rst  $38                                         ; $6ce4: $ff
	rst  $38                                         ; $6ce5: $ff
	rst  $38                                         ; $6ce6: $ff
	rst  $38                                         ; $6ce7: $ff
	ld   [$5674], a                                  ; $6ce8: $ea $74 $56
	ld   sp, $1111                                   ; $6ceb: $31 $11 $11
	ld   hl, $5801                                   ; $6cee: $21 $01 $58
	rst  $28                                         ; $6cf1: $ef
	rst  $38                                         ; $6cf2: $ff
	rst  $38                                         ; $6cf3: $ff
	rst  $38                                         ; $6cf4: $ff
	rst  $38                                         ; $6cf5: $ff
	jp   hl                                          ; $6cf6: $e9


	ld   d, h                                        ; $6cf7: $54
	ld   h, [hl]                                     ; $6cf8: $66
	ld   hl, $1111                                   ; $6cf9: $21 $11 $11
	ld   hl, $5a11                                   ; $6cfc: $21 $11 $5a
	rst  $38                                         ; $6cff: $ff
	rst  $38                                         ; $6d00: $ff
	rst  $38                                         ; $6d01: $ff
	rst  $38                                         ; $6d02: $ff
	rst  $38                                         ; $6d03: $ff
	add  $46                                         ; $6d04: $c6 $46
	add  l                                           ; $6d06: $85
	ld   de, $1311                                   ; $6d07: $11 $11 $13
	ld   de, $7c12                                   ; $6d0a: $11 $12 $7c
	rst  $38                                         ; $6d0d: $ff
	rst  $38                                         ; $6d0e: $ff
	rst  $38                                         ; $6d0f: $ff
	rst  $38                                         ; $6d10: $ff
	cp   $74                                         ; $6d11: $fe $74
	ld   e, b                                        ; $6d13: $58
	add  d                                           ; $6d14: $82
	ld   de, $2211                                   ; $6d15: $11 $11 $22
	ld   de, $af15                                   ; $6d18: $11 $15 $af
	rst  $38                                         ; $6d1b: $ff
	rst  $38                                         ; $6d1c: $ff
	rst  $38                                         ; $6d1d: $ff
	rst  $38                                         ; $6d1e: $ff
	jp   hl                                          ; $6d1f: $e9


	dec  [hl]                                        ; $6d20: $35
	sbc  c                                           ; $6d21: $99
	ld   d, c                                        ; $6d22: $51
	ld   de, $3111                                   ; $6d23: $11 $11 $31
	ld   de, $ff28                                   ; $6d26: $11 $28 $ff
	rst  $38                                         ; $6d29: $ff
	rst  $38                                         ; $6d2a: $ff
	rst  $38                                         ; $6d2b: $ff
	rst  $38                                         ; $6d2c: $ff
	and  h                                           ; $6d2d: $a4
	ld   c, c                                        ; $6d2e: $49
	and  [hl]                                        ; $6d2f: $a6
	ld   de, $1311                                   ; $6d30: $11 $11 $13
	ld   de, $6f11                                   ; $6d33: $11 $11 $6f
	rst  $38                                         ; $6d36: $ff
	rst  $38                                         ; $6d37: $ff
	rst  $38                                         ; $6d38: $ff
	rst  $38                                         ; $6d39: $ff
	ld   a, [$ab35]                                  ; $6d3a: $fa $35 $ab
	ld   h, c                                        ; $6d3d: $61
	ld   de, $4211                                   ; $6d3e: $11 $11 $42
	ld   de, $ff27                                   ; $6d41: $11 $27 $ff
	rst  $38                                         ; $6d44: $ff
	rst  $38                                         ; $6d45: $ff
	rst  $38                                         ; $6d46: $ff
	rst  $38                                         ; $6d47: $ff
	sub  e                                           ; $6d48: $93
	ld   l, d                                        ; $6d49: $6a
	and  h                                           ; $6d4a: $a4
	ld   de, $2311                                   ; $6d4b: $11 $11 $23
	ld   de, $8f13                                   ; $6d4e: $11 $13 $8f
	rst  $38                                         ; $6d51: $ff
	rst  $38                                         ; $6d52: $ff
	rst  $38                                         ; $6d53: $ff
	rst  $38                                         ; $6d54: $ff
	add  $39                                         ; $6d55: $c6 $39
	cp   b                                           ; $6d57: $b8
	ld   de, $1211                                   ; $6d58: $11 $11 $12
	ld   hl, $4c11                                   ; $6d5b: $21 $11 $4c
	rst  $38                                         ; $6d5e: $ff
	rst  $38                                         ; $6d5f: $ff
	rst  $38                                         ; $6d60: $ff
	rst  $38                                         ; $6d61: $ff
	ld   sp, hl                                      ; $6d62: $f9
	ld   b, [hl]                                     ; $6d63: $46
	cp   h                                           ; $6d64: $bc
	ld   h, c                                        ; $6d65: $61
	ld   de, $3211                                   ; $6d66: $11 $11 $32
	ld   de, $ff17                                   ; $6d69: $11 $17 $ff
	rst  $38                                         ; $6d6c: $ff
	rst  $38                                         ; $6d6d: $ff
	rst  $38                                         ; $6d6e: $ff
	db   $fc                                         ; $6d6f: $fc
	ld   d, h                                        ; $6d70: $54
	sbc  h                                           ; $6d71: $9c
	add  c                                           ; $6d72: $81
	ld   de, $1211                                   ; $6d73: $11 $11 $12
	ld   de, $cf14                                   ; $6d76: $11 $14 $cf
	rst  $38                                         ; $6d79: $ff
	rst  $38                                         ; $6d7a: $ff
	rst  $38                                         ; $6d7b: $ff
	cp   $63                                         ; $6d7c: $fe $63
	adc  h                                           ; $6d7e: $8c
	or   d                                           ; $6d7f: $b2
	ld   de, $1111                                   ; $6d80: $11 $11 $11
	ld   de, $bf13                                   ; $6d83: $11 $13 $bf
	rst  $38                                         ; $6d86: $ff
	rst  $38                                         ; $6d87: $ff
	rst  $38                                         ; $6d88: $ff
	rst  $38                                         ; $6d89: $ff
	ld   h, d                                        ; $6d8a: $62
	ld   l, d                                        ; $6d8b: $6a
	sub  e                                           ; $6d8c: $93
	ld   de, $2811                                   ; $6d8d: $11 $11 $28
	ld   [hl], h                                     ; $6d90: $74
	ld   e, d                                        ; $6d91: $5a
	rst  $38                                         ; $6d92: $ff
	rst  $38                                         ; $6d93: $ff
	rst  $38                                         ; $6d94: $ff
	rst  $38                                         ; $6d95: $ff
	ld   b, c                                        ; $6d96: $41
	ld   de, $ff1f                                   ; $6d97: $11 $1f $ff
	pop  af                                          ; $6d9a: $f1
	ld   de, $94df                                   ; $6d9b: $11 $df $94
	ld   l, a                                        ; $6d9e: $6f
	rst  $38                                         ; $6d9f: $ff
	rst  $38                                         ; $6da0: $ff
	add  h                                           ; $6da1: $84
	ld   de, $1111                                   ; $6da2: $11 $11 $11
	rst  $38                                         ; $6da5: $ff
	rst  $38                                         ; $6da6: $ff
	ld   de, $df11                                   ; $6da7: $11 $11 $df
	cp   $ff                                         ; $6daa: $fe $ff
	rst  $38                                         ; $6dac: $ff
	ld   b, c                                        ; $6dad: $41
	dec  [hl]                                        ; $6dae: $35
	ld   hl, $1f11                                   ; $6daf: $21 $11 $1f
	rst  $38                                         ; $6db2: $ff
	pop  af                                          ; $6db3: $f1
	ld   de, $fbcf                                   ; $6db4: $11 $cf $fb
	xor  a                                           ; $6db7: $af
	rst  $38                                         ; $6db8: $ff
	pop  hl                                          ; $6db9: $e1
	add  hl, de                                      ; $6dba: $19
	add  $11                                         ; $6dbb: $c6 $11
	ld   de, $f8ff                                   ; $6dbd: $11 $ff $f8
	ld   de, $ff1f                                   ; $6dc0: $11 $1f $ff
	cp   [hl]                                        ; $6dc3: $be
	rst  $38                                         ; $6dc4: $ff
	or   $11                                         ; $6dc5: $f6 $11
	db   $ed                                         ; $6dc7: $ed
	ld   de, $4f11                                   ; $6dc8: $11 $11 $4f
	rst  $38                                         ; $6dcb: $ff
	ld   de, rAUD1LEN                                   ; $6dcc: $11 $11 $ff
	db   $ec                                         ; $6dcf: $ec
	rst  $38                                         ; $6dd0: $ff
	cp   $21                                         ; $6dd1: $fe $21
	cpl                                              ; $6dd3: $2f
	or   c                                           ; $6dd4: $b1
	ld   de, $ff1a                                   ; $6dd5: $11 $1a $ff
	pop  af                                          ; $6dd8: $f1
	ld   de, $fd1f                                   ; $6dd9: $11 $1f $fd
	rst  $28                                         ; $6ddc: $ef
	rst  $38                                         ; $6ddd: $ff
	pop  bc                                          ; $6dde: $c1
	inc  de                                          ; $6ddf: $13
	jp   hl                                          ; $6de0: $e9


	ld   de, rAUD1LEN                                   ; $6de1: $11 $11 $ff
	rst  $38                                         ; $6de4: $ff
	ld   de, $ff17                                   ; $6de5: $11 $17 $ff
	rst  $38                                         ; $6de8: $ff
	rst  $38                                         ; $6de9: $ff
	rst  $30                                         ; $6dea: $f7
	ld   de, $716e                                   ; $6deb: $11 $6e $71
	ld   de, $ff1f                                   ; $6dee: $11 $1f $ff
	pop  af                                          ; $6df1: $f1
	ld   de, $feff                                   ; $6df2: $11 $ff $fe
	rst  $38                                         ; $6df5: $ff
	rst  $38                                         ; $6df6: $ff
	ld   hl, $c41d                                   ; $6df7: $21 $1d $c4
	ld   de, rAUD1LEN                                   ; $6dfa: $11 $11 $ff
	rst  $30                                         ; $6dfd: $f7
	ld   de, $ff1f                                   ; $6dfe: $11 $1f $ff
	rst  $38                                         ; $6e01: $ff
	rst  $38                                         ; $6e02: $ff
	and  c                                           ; $6e03: $a1
	inc  d                                           ; $6e04: $14
	ld   [$1111], a                                  ; $6e05: $ea $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e08: $cf
	rst  $38                                         ; $6e09: $ff
	ld   de, $ff16                                   ; $6e0a: $11 $16 $ff
	rst  $38                                         ; $6e0d: $ff
	rst  $38                                         ; $6e0e: $ff
	pop  af                                          ; $6e0f: $f1
	ld   de, $419e                                   ; $6e10: $11 $9e $41
	ld   de, $ff1f                                   ; $6e13: $11 $1f $ff
	add  c                                           ; $6e16: $81
	ld   de, $ffff                                   ; $6e17: $11 $ff $ff
	rst  $38                                         ; $6e1a: $ff
	di                                               ; $6e1b: $f3
	ld   de, $917f                                   ; $6e1c: $11 $7f $91
	ld   de, $ff1f                                   ; $6e1f: $11 $1f $ff
	pop  af                                          ; $6e22: $f1
	ld   de, $ffff                                   ; $6e23: $11 $ff $ff
	rst  $38                                         ; $6e26: $ff
	or   $11                                         ; $6e27: $f6 $11
	ld   c, a                                        ; $6e29: $4f
	sub  c                                           ; $6e2a: $91
	ld   de, $ff1c                                   ; $6e2b: $11 $1c $ff
	pop  af                                          ; $6e2e: $f1
	ld   de, $df9f                                   ; $6e2f: $11 $9f $df
	rst  $38                                         ; $6e32: $ff
	db   $f4                                         ; $6e33: $f4
	ld   [de], a                                     ; $6e34: $12
	ld   l, a                                        ; $6e35: $6f
	sub  c                                           ; $6e36: $91
	ld   de, $ff15                                   ; $6e37: $11 $15 $ff
	pop  af                                          ; $6e3a: $f1
	ld   de, $ef4f                                   ; $6e3b: $11 $4f $ef
	rst  $38                                         ; $6e3e: $ff
	or   $11                                         ; $6e3f: $f6 $11
	ccf                                              ; $6e41: $3f
	sub  c                                           ; $6e42: $91
	ld   de, rAUD1HIGH                                   ; $6e43: $11 $14 $ff
	pop  af                                          ; $6e46: $f1
	ld   de, $cf7f                                   ; $6e47: $11 $7f $cf
	rst  $38                                         ; $6e4a: $ff
	push af                                          ; $6e4b: $f5
	ld   de, $615d                                   ; $6e4c: $11 $5d $61
	ld   de, $ff16                                   ; $6e4f: $11 $16 $ff
	pop  af                                          ; $6e52: $f1
	ld   de, $ff4d                                   ; $6e53: $11 $4d $ff
	rst  $38                                         ; $6e56: $ff
	db   $f4                                         ; $6e57: $f4
	inc  de                                          ; $6e58: $13
	ld   l, e                                        ; $6e59: $6b
	ld   hl, $1e11                                   ; $6e5a: $21 $11 $1e
	rst  $38                                         ; $6e5d: $ff
	db   $f4                                         ; $6e5e: $f4
	ld   de, $ff75                                   ; $6e5f: $11 $75 $ff
	rst  $38                                         ; $6e62: $ff
	pop  af                                          ; $6e63: $f1
	ld   [de], a                                     ; $6e64: $12
	adc  c                                           ; $6e65: $89
	ld   de, $1f11                                   ; $6e66: $11 $11 $1f
	rst  $38                                         ; $6e69: $ff
	pop  af                                          ; $6e6a: $f1
	ld   de, $ff52                                   ; $6e6b: $11 $52 $ff
	rst  $38                                         ; $6e6e: $ff
	ld   sp, $b53a                                   ; $6e6f: $31 $3a $b5
	ld   de, $1f11                                   ; $6e72: $11 $11 $1f
	rst  $38                                         ; $6e75: $ff
	pop  hl                                          ; $6e76: $e1
	inc  d                                           ; $6e77: $14
	ld   d, $ff                                      ; $6e78: $16 $ff
	rst  $38                                         ; $6e7a: $ff
	ld   b, c                                        ; $6e7b: $41
	ld   h, $51                                      ; $6e7c: $26 $51
	ld   de, rAUD1LEN                                   ; $6e7e: $11 $11 $ff
	rst  $38                                         ; $6e81: $ff
	ld   hl, $4e18                                   ; $6e82: $21 $18 $4e
	rst  $38                                         ; $6e85: $ff
	ld   a, [$4512]                                  ; $6e86: $fa $12 $45
	ld   hl, $1411                                   ; $6e89: $21 $11 $14
	rst  $38                                         ; $6e8c: $ff
	db   $fc                                         ; $6e8d: $fc
	or   a                                           ; $6e8e: $b7
	ld   b, c                                        ; $6e8f: $41
	ld   e, a                                        ; $6e90: $5f
	rst  $38                                         ; $6e91: $ff
	rst  $30                                         ; $6e92: $f7
	ld   d, d                                        ; $6e93: $52
	ld   de, $1111                                   ; $6e94: $11 $11 $11
	rra                                              ; $6e97: $1f
	rst  $38                                         ; $6e98: $ff
	rst  $38                                         ; $6e99: $ff
	sub  d                                           ; $6e9a: $92
	ld   d, $ff                                      ; $6e9b: $16 $ff
	cp   $bb                                         ; $6e9d: $fe $bb
	ld   d, c                                        ; $6e9f: $51
	ld   de, $1111                                   ; $6ea0: $11 $11 $11
	rst  $38                                         ; $6ea3: $ff
	rst  $38                                         ; $6ea4: $ff
	rst  $38                                         ; $6ea5: $ff
	ld   hl, $ff1f                                   ; $6ea6: $21 $1f $ff
	call $11f9                                       ; $6ea9: $cd $f9 $11
	ld   de, $1f11                                   ; $6eac: $11 $11 $1f
	rst  $38                                         ; $6eaf: $ff
	rst  $38                                         ; $6eb0: $ff
	ldh  a, [c]                                      ; $6eb1: $f2
	ld   de, $ffdf                                   ; $6eb2: $11 $df $ff
	db   $ed                                         ; $6eb5: $ed
	sub  c                                           ; $6eb6: $91
	ld   de, $1111                                   ; $6eb7: $11 $11 $11
	rst  $38                                         ; $6eba: $ff
	rst  $38                                         ; $6ebb: $ff
	rst  $38                                         ; $6ebc: $ff
	ld   h, h                                        ; $6ebd: $64
	ld   [hl], $ff                                   ; $6ebe: $36 $ff
	rst  $38                                         ; $6ec0: $ff
	rst  $20                                         ; $6ec1: $e7
	ld   de, $1111                                   ; $6ec2: $11 $11 $11
	ld   a, a                                        ; $6ec5: $7f
	xor  a                                           ; $6ec6: $af
	rst  $38                                         ; $6ec7: $ff
	di                                               ; $6ec8: $f3
	add  l                                           ; $6ec9: $85
	ld   e, a                                        ; $6eca: $5f
	rst  $38                                         ; $6ecb: $ff
	rst  $38                                         ; $6ecc: $ff
	ld   sp, $1111                                   ; $6ecd: $31 $11 $11
	rra                                              ; $6ed0: $1f
	rst  $38                                         ; $6ed1: $ff
	rst  $38                                         ; $6ed2: $ff
	or   $33                                         ; $6ed3: $f6 $33
	dec  e                                           ; $6ed5: $1d
	rst  $38                                         ; $6ed6: $ff
	rst  $38                                         ; $6ed7: $ff
	pop  af                                          ; $6ed8: $f1
	ld   de, $1111                                   ; $6ed9: $11 $11 $11
	rst  $38                                         ; $6edc: $ff
	rst  $38                                         ; $6edd: $ff
	rst  $38                                         ; $6ede: $ff
	ld   h, [hl]                                     ; $6edf: $66
	ld   de, $ffcd                                   ; $6ee0: $11 $cd $ff
	db   $fd                                         ; $6ee3: $fd
	ld   de, $1111                                   ; $6ee4: $11 $11 $11
	ld   a, [hl]                                     ; $6ee7: $7e
	rst  $38                                         ; $6ee8: $ff
	rst  $38                                         ; $6ee9: $ff
	ld   a, [$6f11]                                  ; $6eea: $fa $11 $6f
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	ld   [hl], c                                     ; $6eef: $71
	ld   de, $1d11                                   ; $6ef0: $11 $11 $1d
	cp   a                                           ; $6ef3: $bf
	rst  $38                                         ; $6ef4: $ff
	rst  $38                                         ; $6ef5: $ff
	ld   sp, $ff1b                                   ; $6ef6: $31 $1b $ff
	rst  $38                                         ; $6ef9: $ff
	pop  de                                          ; $6efa: $d1
	ld   de, $1a11                                   ; $6efb: $11 $11 $1a
	rst  JumpTable                                         ; $6efe: $df
	rst  $38                                         ; $6eff: $ff
	rst  $38                                         ; $6f00: $ff
	ld   hl, $7c17                                   ; $6f01: $21 $17 $7c
	rst  $38                                         ; $6f04: $ff
	pop  af                                          ; $6f05: $f1
	ld   de, $1611                                   ; $6f06: $11 $11 $16
	rst  $38                                         ; $6f09: $ff
	rst  $38                                         ; $6f0a: $ff
	rst  $38                                         ; $6f0b: $ff
	ld   sp, $8616                                   ; $6f0c: $31 $16 $86
	rst  $38                                         ; $6f0f: $ff
	db   $f4                                         ; $6f10: $f4
	ld   de, $1311                                   ; $6f11: $11 $11 $13
	cp   a                                           ; $6f14: $bf
	rst  $38                                         ; $6f15: $ff
	rst  $38                                         ; $6f16: $ff
	add  h                                           ; $6f17: $84
	ld   de, $ff46                                   ; $6f18: $11 $46 $ff
	rst  $30                                         ; $6f1b: $f7
	ld   de, $1111                                   ; $6f1c: $11 $11 $11
	adc  a                                           ; $6f1f: $8f
	rst  $38                                         ; $6f20: $ff
	rst  $38                                         ; $6f21: $ff
	call nz, $1411                                   ; $6f22: $c4 $11 $14
	rst  $38                                         ; $6f25: $ff
	rst  $30                                         ; $6f26: $f7
	ld   de, $1111                                   ; $6f27: $11 $11 $11
	cpl                                              ; $6f2a: $2f
	rst  $38                                         ; $6f2b: $ff
	rst  $38                                         ; $6f2c: $ff
	ld   sp, hl                                      ; $6f2d: $f9
	ld   de, $df64                                   ; $6f2e: $11 $64 $df
	db   $fc                                         ; $6f31: $fc
	ld   de, $1111                                   ; $6f32: $11 $11 $11
	add  hl, de                                      ; $6f35: $19
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	rst  $38                                         ; $6f38: $ff
	ld   d, h                                        ; $6f39: $54
	inc  hl                                          ; $6f3a: $23
	sbc  $f9                                         ; $6f3b: $de $f9
	ld   b, c                                        ; $6f3d: $41
	ld   de, $2211                                   ; $6f3e: $11 $11 $22
	rst  $38                                         ; $6f41: $ff
	rst  $38                                         ; $6f42: $ff
	rst  $38                                         ; $6f43: $ff
	push de                                          ; $6f44: $d5
	ld   [hl], c                                     ; $6f45: $71
	xor  a                                           ; $6f46: $af
	bit  0, c                                        ; $6f47: $cb $41
	ld   de, $1411                                   ; $6f49: $11 $11 $14
	ld   a, a                                        ; $6f4c: $7f
	rst  $38                                         ; $6f4d: $ff
	cp   $f9                                         ; $6f4e: $fe $f9
	ld   [hl], a                                     ; $6f50: $77
	ld   l, h                                        ; $6f51: $6c
	jp   c, $3185                                    ; $6f52: $da $85 $31

	ld   de, $1711                                   ; $6f55: $11 $11 $17
	rst  $38                                         ; $6f58: $ff
	rst  $38                                         ; $6f59: $ff
	db   $ec                                         ; $6f5a: $ec
	adc  b                                           ; $6f5b: $88
	add  e                                           ; $6f5c: $83
	adc  l                                           ; $6f5d: $8d
	jp   c, Jump_0cf_5197                            ; $6f5e: $da $97 $51

	ld   de, $4912                                   ; $6f61: $11 $12 $49
	call c, $e9ce                                    ; $6f64: $dc $ce $e9
	and  a                                           ; $6f67: $a7
	ld   l, c                                        ; $6f68: $69
	sbc  $dc                                         ; $6f69: $de $dc
	and  l                                           ; $6f6b: $a5
	ld   de, $1511                                   ; $6f6c: $11 $11 $15
	ld   a, b                                        ; $6f6f: $78
	ld   sp, hl                                      ; $6f70: $f9
	xor  e                                           ; $6f71: $ab
	ld   a, h                                        ; $6f72: $7c
	ld   e, e                                        ; $6f73: $5b
	sub  $fb                                         ; $6f74: $d6 $fb
	call z, $325b                                    ; $6f76: $cc $5b $32
	ld   b, e                                        ; $6f79: $43
	ld   b, e                                        ; $6f7a: $43
	sbc  b                                           ; $6f7b: $98
	sbc  d                                           ; $6f7c: $9a
	sub  [hl]                                        ; $6f7d: $96
	jp   z, $7d5d                                    ; $6f7e: $ca $5d $7d

	xor  e                                           ; $6f81: $ab
	jp   hl                                          ; $6f82: $e9


	sub  l                                           ; $6f83: $95
	halt                                             ; $6f84: $76
	ld   h, [hl]                                     ; $6f85: $66
	ld   d, [hl]                                     ; $6f86: $56
	ld   l, b                                        ; $6f87: $68
	add  hl, hl                                      ; $6f88: $29
	ld   [hl], l                                     ; $6f89: $75
	and  a                                           ; $6f8a: $a7
	cp   c                                           ; $6f8b: $b9
	cp   d                                           ; $6f8c: $ba
	xor  h                                           ; $6f8d: $ac
	adc  d                                           ; $6f8e: $8a
	ld   [hl], a                                     ; $6f8f: $77
	ld   h, l                                        ; $6f90: $65
	add  a                                           ; $6f91: $87
	ld   [hl], a                                     ; $6f92: $77
	adc  b                                           ; $6f93: $88
	ld   h, l                                        ; $6f94: $65
	ld   h, a                                        ; $6f95: $67
	sbc  d                                           ; $6f96: $9a
	sbc  c                                           ; $6f97: $99
	sub  a                                           ; $6f98: $97
	sbc  b                                           ; $6f99: $98
	sbc  b                                           ; $6f9a: $98
	ld   a, c                                        ; $6f9b: $79
	ld   a, c                                        ; $6f9c: $79
	adc  c                                           ; $6f9d: $89
	halt                                             ; $6f9e: $76
	add  a                                           ; $6f9f: $87
	add  a                                           ; $6fa0: $87
	sub  [hl]                                        ; $6fa1: $96
	add  a                                           ; $6fa2: $87
	sbc  c                                           ; $6fa3: $99
	ld   a, d                                        ; $6fa4: $7a
	ld   a, d                                        ; $6fa5: $7a
	ld   a, b                                        ; $6fa6: $78
	add  a                                           ; $6fa7: $87
	and  a                                           ; $6fa8: $a7
	ld   a, b                                        ; $6fa9: $78
	ld   l, b                                        ; $6faa: $68
	adc  b                                           ; $6fab: $88
	or   [hl]                                        ; $6fac: $b6
	ld   a, c                                        ; $6fad: $79
	adc  b                                           ; $6fae: $88
	sub  a                                           ; $6faf: $97
	ld   [hl], a                                     ; $6fb0: $77
	ld   a, e                                        ; $6fb1: $7b
	ld   l, b                                        ; $6fb2: $68
	ld   [hl], a                                     ; $6fb3: $77
	halt                                             ; $6fb4: $76
	and  l                                           ; $6fb5: $a5
	sbc  b                                           ; $6fb6: $98
	ld   a, c                                        ; $6fb7: $79
	add  a                                           ; $6fb8: $87
	sbc  d                                           ; $6fb9: $9a
	ld   a, e                                        ; $6fba: $7b
	ld   a, c                                        ; $6fbb: $79
	add  l                                           ; $6fbc: $85
	and  l                                           ; $6fbd: $a5
	add  [hl]                                        ; $6fbe: $86
	ld   a, c                                        ; $6fbf: $79
	ld   [hl], a                                     ; $6fc0: $77
	sub  a                                           ; $6fc1: $97
	adc  b                                           ; $6fc2: $88
	sbc  d                                           ; $6fc3: $9a
	dec  hl                                          ; $6fc4: $2b
	sbc  b                                           ; $6fc5: $98
	ret  z                                           ; $6fc6: $c8

	and  a                                           ; $6fc7: $a7
	ld   b, l                                        ; $6fc8: $45
	or   h                                           ; $6fc9: $b4
	ld   a, c                                        ; $6fca: $79
	and  a                                           ; $6fcb: $a7
	ld   a, d                                        ; $6fcc: $7a
	ld   b, a                                        ; $6fcd: $47
	or   l                                           ; $6fce: $b5
	sbc  e                                           ; $6fcf: $9b
	sbc  e                                           ; $6fd0: $9b
	ld   l, d                                        ; $6fd1: $6a
	ld   a, e                                        ; $6fd2: $7b
	sub  a                                           ; $6fd3: $97
	and  h                                           ; $6fd4: $a4
	sbc  c                                           ; $6fd5: $99
	ld   c, e                                        ; $6fd6: $4b
	sub  h                                           ; $6fd7: $94
	push de                                          ; $6fd8: $d5
	sub  h                                           ; $6fd9: $94
	adc  d                                           ; $6fda: $8a
	ld   l, b                                        ; $6fdb: $68
	adc  e                                           ; $6fdc: $8b
	sbc  e                                           ; $6fdd: $9b
	dec  sp                                          ; $6fde: $3b
	halt                                             ; $6fdf: $76
	ld   l, d                                        ; $6fe0: $6a
	add  [hl]                                        ; $6fe1: $86
	cp   b                                           ; $6fe2: $b8
	ld   [hl], h                                     ; $6fe3: $74
	db   $f4                                         ; $6fe4: $f4
	ld   d, a                                        ; $6fe5: $57
	cp   e                                           ; $6fe6: $bb
	dec  e                                           ; $6fe7: $1d
	and  a                                           ; $6fe8: $a7
	ld   l, d                                        ; $6fe9: $6a
	sub  l                                           ; $6fea: $95
	adc  c                                           ; $6feb: $89
	sub  [hl]                                        ; $6fec: $96
	sbc  e                                           ; $6fed: $9b
	ld   b, a                                        ; $6fee: $47
	call nc, Call_0cf_5da6                           ; $6fef: $d4 $a6 $5d
	ld   l, e                                        ; $6ff2: $6b
	ld   [hl], a                                     ; $6ff3: $77
	xor  b                                           ; $6ff4: $a8
	ld   l, d                                        ; $6ff5: $6a
	ld   h, a                                        ; $6ff6: $67
	pop  bc                                          ; $6ff7: $c1
	rst  ToBoot                                         ; $6ff8: $c7
	sbc  c                                           ; $6ff9: $99
	ld   l, c                                        ; $6ffa: $69
	ld   a, d                                        ; $6ffb: $7a
	sub  a                                           ; $6ffc: $97
	ld   e, [hl]                                     ; $6ffd: $5e
	ld   e, b                                        ; $6ffe: $58
	sbc  d                                           ; $6fff: $9a
	ld   h, a                                        ; $7000: $67
	and  l                                           ; $7001: $a5
	or   h                                           ; $7002: $b4
	or   [hl]                                        ; $7003: $b6
	cp   c                                           ; $7004: $b9
	ld   l, e                                        ; $7005: $6b
	ld   d, a                                        ; $7006: $57
	sbc  c                                           ; $7007: $99
	ld   l, e                                        ; $7008: $6b
	ld   a, b                                        ; $7009: $78
	ld   l, b                                        ; $700a: $68
	pop  de                                          ; $700b: $d1
	ldh  [c], a                                      ; $700c: $e2
	adc  h                                           ; $700d: $8c
	rrca                                             ; $700e: $0f
	dec  sp                                          ; $700f: $3b
	ld   e, c                                        ; $7010: $59
	sub  a                                           ; $7011: $97
	ld   [hl], a                                     ; $7012: $77
	and  e                                           ; $7013: $a3
	db   $e3                                         ; $7014: $e3
	or   [hl]                                        ; $7015: $b6
	ld   e, h                                        ; $7016: $5c
	ld   d, l                                        ; $7017: $55
	sub  a                                           ; $7018: $97
	ld   a, b                                        ; $7019: $78
	ld   a, d                                        ; $701a: $7a
	ld   c, d                                        ; $701b: $4a
	ld   e, d                                        ; $701c: $5a
	ld   h, [hl]                                     ; $701d: $66
	db   $d3                                         ; $701e: $d3
	or   [hl]                                        ; $701f: $b6
	and  l                                           ; $7020: $a5
	sbc  d                                           ; $7021: $9a
	dec  e                                           ; $7022: $1d
	ld   l, d                                        ; $7023: $6a
	ld   e, b                                        ; $7024: $58
	sub  l                                           ; $7025: $95
	cp   b                                           ; $7026: $b8
	ld   [hl], h                                     ; $7027: $74
	push de                                          ; $7028: $d5
	and  [hl]                                        ; $7029: $a6
	cp   b                                           ; $702a: $b8
	ld   e, l                                        ; $702b: $5d
	inc  e                                           ; $702c: $1c
	ld   d, h                                        ; $702d: $54
	push de                                          ; $702e: $d5
	sub  [hl]                                        ; $702f: $96
	sbc  d                                           ; $7030: $9a
	ld   l, $4a                                      ; $7031: $2e $4a
	sub  [hl]                                        ; $7033: $96
	sub  [hl]                                        ; $7034: $96
	or   l                                           ; $7035: $b5
	db   $d3                                         ; $7036: $d3
	push bc                                          ; $7037: $c5
	sbc  c                                           ; $7038: $99
	ld   e, e                                        ; $7039: $5b
	inc  a                                           ; $703a: $3c
	ld   l, b                                        ; $703b: $68
	ld   a, e                                        ; $703c: $7b
	ld   h, [hl]                                     ; $703d: $66
	or   [hl]                                        ; $703e: $b6
	add  a                                           ; $703f: $87
	and  [hl]                                        ; $7040: $a6
	adc  b                                           ; $7041: $88
	sub  [hl]                                        ; $7042: $96
	adc  b                                           ; $7043: $88
	ld   a, d                                        ; $7044: $7a
	dec  a                                           ; $7045: $3d
	ld   a, [hl-]                                    ; $7046: $3a
	ld   [hl], a                                     ; $7047: $77
	pop  de                                          ; $7048: $d1
	di                                               ; $7049: $f3
	xor  b                                           ; $704a: $a8
	ld   e, l                                        ; $704b: $5d
	ld   c, h                                        ; $704c: $4c
	ld   e, c                                        ; $704d: $59
	add  l                                           ; $704e: $85
	call nz, $98a6                                   ; $704f: $c4 $a6 $98
	ld   l, e                                        ; $7052: $6b
	ld   l, b                                        ; $7053: $68
	ld   a, b                                        ; $7054: $78
	sub  [hl]                                        ; $7055: $96
	and  a                                           ; $7056: $a7
	sub  a                                           ; $7057: $97
	sbc  d                                           ; $7058: $9a
	ld   e, d                                        ; $7059: $5a
	ld   c, d                                        ; $705a: $4a
	ld   a, b                                        ; $705b: $78
	and  l                                           ; $705c: $a5
	and  [hl]                                        ; $705d: $a6
	and  [hl]                                        ; $705e: $a6
	sbc  b                                           ; $705f: $98
	ld   a, b                                        ; $7060: $78
	adc  b                                           ; $7061: $88
	add  a                                           ; $7062: $87
	sub  a                                           ; $7063: $97
	adc  d                                           ; $7064: $8a
	ld   c, h                                        ; $7065: $4c
	ld   e, b                                        ; $7066: $58
	ld   a, b                                        ; $7067: $78
	and  e                                           ; $7068: $a3
	db   $e3                                         ; $7069: $e3
	sbc  h                                           ; $706a: $9c
	ld   c, c                                        ; $706b: $49
	add  a                                           ; $706c: $87
	sub  a                                           ; $706d: $97
	sub  [hl]                                        ; $706e: $96
	adc  e                                           ; $706f: $8b
	ld   c, h                                        ; $7070: $4c
	ld   l, c                                        ; $7071: $69
	add  [hl]                                        ; $7072: $86
	sub  l                                           ; $7073: $95
	or   a                                           ; $7074: $b7
	adc  b                                           ; $7075: $88
	sub  a                                           ; $7076: $97
	ld   a, c                                        ; $7077: $79
	add  a                                           ; $7078: $87
	ld   a, e                                        ; $7079: $7b
	ld   e, d                                        ; $707a: $5a
	adc  c                                           ; $707b: $89
	ld   [hl], a                                     ; $707c: $77
	or   h                                           ; $707d: $b4
	sub  a                                           ; $707e: $97
	and  a                                           ; $707f: $a7
	ld   a, d                                        ; $7080: $7a
	ld   l, b                                        ; $7081: $68
	ld   a, c                                        ; $7082: $79
	add  a                                           ; $7083: $87
	adc  b                                           ; $7084: $88
	add  a                                           ; $7085: $87
	xor  c                                           ; $7086: $a9
	ld   a, b                                        ; $7087: $78
	sbc  b                                           ; $7088: $98
	ld   a, b                                        ; $7089: $78
	adc  b                                           ; $708a: $88
	adc  c                                           ; $708b: $89
	adc  b                                           ; $708c: $88
	add  a                                           ; $708d: $87
	add  [hl]                                        ; $708e: $86
	and  a                                           ; $708f: $a7
	adc  c                                           ; $7090: $89
	ld   a, c                                        ; $7091: $79
	ld   [hl], a                                     ; $7092: $77
	ld   a, c                                        ; $7093: $79
	ld   a, b                                        ; $7094: $78
	sub  a                                           ; $7095: $97
	sub  a                                           ; $7096: $97
	sub  a                                           ; $7097: $97
	ld   a, b                                        ; $7098: $78
	adc  c                                           ; $7099: $89
	ld   [hl], a                                     ; $709a: $77
	and  a                                           ; $709b: $a7
	adc  b                                           ; $709c: $88
	adc  b                                           ; $709d: $88
	ld   a, c                                        ; $709e: $79
	ld   a, b                                        ; $709f: $78
	adc  b                                           ; $70a0: $88
	sbc  b                                           ; $70a1: $98
	sub  a                                           ; $70a2: $97
	and  a                                           ; $70a3: $a7
	ld   a, c                                        ; $70a4: $79
	ld   a, b                                        ; $70a5: $78
	ld   a, c                                        ; $70a6: $79
	adc  b                                           ; $70a7: $88
	adc  c                                           ; $70a8: $89
	ld   e, c                                        ; $70a9: $59
	sub  a                                           ; $70aa: $97
	and  a                                           ; $70ab: $a7
	and  a                                           ; $70ac: $a7
	adc  b                                           ; $70ad: $88
	ld   a, d                                        ; $70ae: $7a
	ld   a, c                                        ; $70af: $79
	sub  a                                           ; $70b0: $97
	ld   [hl], a                                     ; $70b1: $77
	add  a                                           ; $70b2: $87
	adc  b                                           ; $70b3: $88
	adc  c                                           ; $70b4: $89
	ld   a, b                                        ; $70b5: $78
	ld   a, b                                        ; $70b6: $78
	adc  b                                           ; $70b7: $88
	adc  c                                           ; $70b8: $89
	adc  b                                           ; $70b9: $88
	sub  a                                           ; $70ba: $97
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	adc  b                                           ; $70bd: $88
	adc  b                                           ; $70be: $88
	add  a                                           ; $70bf: $87
	ld   a, b                                        ; $70c0: $78
	add  a                                           ; $70c1: $87
	adc  b                                           ; $70c2: $88
	ld   a, b                                        ; $70c3: $78
	ld   a, c                                        ; $70c4: $79
	adc  b                                           ; $70c5: $88
	add  a                                           ; $70c6: $87
	adc  b                                           ; $70c7: $88
	add  a                                           ; $70c8: $87
	sbc  b                                           ; $70c9: $98
	adc  c                                           ; $70ca: $89
	adc  b                                           ; $70cb: $88
	adc  b                                           ; $70cc: $88
	ld   a, b                                        ; $70cd: $78
	add  a                                           ; $70ce: $87
	adc  b                                           ; $70cf: $88
	ld   a, b                                        ; $70d0: $78
	ld   a, b                                        ; $70d1: $78
	ld   a, b                                        ; $70d2: $78
	adc  b                                           ; $70d3: $88
	adc  b                                           ; $70d4: $88
	add  a                                           ; $70d5: $87
	adc  b                                           ; $70d6: $88
	add  a                                           ; $70d7: $87
	ld   a, b                                        ; $70d8: $78
	adc  b                                           ; $70d9: $88
	ld   [hl], a                                     ; $70da: $77
	sbc  c                                           ; $70db: $99
	ld   a, c                                        ; $70dc: $79
	ld   a, b                                        ; $70dd: $78
	adc  b                                           ; $70de: $88
	sub  a                                           ; $70df: $97
	sbc  b                                           ; $70e0: $98
	sub  a                                           ; $70e1: $97
	adc  b                                           ; $70e2: $88
	ld   a, c                                        ; $70e3: $79
	adc  b                                           ; $70e4: $88
	adc  b                                           ; $70e5: $88
	adc  b                                           ; $70e6: $88
	adc  b                                           ; $70e7: $88
	sbc  b                                           ; $70e8: $98
	adc  b                                           ; $70e9: $88
	adc  b                                           ; $70ea: $88
	adc  b                                           ; $70eb: $88
	sbc  b                                           ; $70ec: $98
	adc  c                                           ; $70ed: $89
	adc  c                                           ; $70ee: $89
	adc  b                                           ; $70ef: $88
	sbc  c                                           ; $70f0: $99
	adc  c                                           ; $70f1: $89
	adc  b                                           ; $70f2: $88
	sbc  b                                           ; $70f3: $98
	sbc  b                                           ; $70f4: $98
	sbc  b                                           ; $70f5: $98
	sbc  c                                           ; $70f6: $99
	adc  c                                           ; $70f7: $89
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	sbc  b                                           ; $70fa: $98
	adc  b                                           ; $70fb: $88
	sbc  b                                           ; $70fc: $98
	sbc  b                                           ; $70fd: $98
	adc  b                                           ; $70fe: $88
	adc  c                                           ; $70ff: $89
	adc  b                                           ; $7100: $88
	adc  b                                           ; $7101: $88
	adc  b                                           ; $7102: $88
	adc  b                                           ; $7103: $88
	sbc  c                                           ; $7104: $99
	adc  b                                           ; $7105: $88
	adc  b                                           ; $7106: $88
	adc  c                                           ; $7107: $89
	adc  c                                           ; $7108: $89
	adc  b                                           ; $7109: $88
	adc  b                                           ; $710a: $88
	adc  c                                           ; $710b: $89
	adc  b                                           ; $710c: $88
	sbc  b                                           ; $710d: $98
	adc  b                                           ; $710e: $88
	adc  c                                           ; $710f: $89
	adc  b                                           ; $7110: $88
	adc  b                                           ; $7111: $88
	adc  c                                           ; $7112: $89
	sbc  b                                           ; $7113: $98
	sbc  b                                           ; $7114: $98
	adc  b                                           ; $7115: $88
	sbc  b                                           ; $7116: $98
	sbc  c                                           ; $7117: $99
	adc  b                                           ; $7118: $88
	sbc  c                                           ; $7119: $99
	adc  c                                           ; $711a: $89
	adc  b                                           ; $711b: $88
	sbc  c                                           ; $711c: $99
	adc  b                                           ; $711d: $88
	sbc  b                                           ; $711e: $98
	adc  b                                           ; $711f: $88
	adc  c                                           ; $7120: $89
	adc  c                                           ; $7121: $89
	sbc  b                                           ; $7122: $98
	sbc  b                                           ; $7123: $98
	adc  c                                           ; $7124: $89
	adc  b                                           ; $7125: $88
	adc  c                                           ; $7126: $89
	sbc  b                                           ; $7127: $98
	sbc  c                                           ; $7128: $99
	adc  c                                           ; $7129: $89
	adc  c                                           ; $712a: $89
	sbc  b                                           ; $712b: $98
	adc  b                                           ; $712c: $88
	adc  b                                           ; $712d: $88
	sbc  b                                           ; $712e: $98
	adc  c                                           ; $712f: $89
	adc  c                                           ; $7130: $89
	adc  b                                           ; $7131: $88
	sbc  b                                           ; $7132: $98
	sbc  c                                           ; $7133: $99
	sbc  c                                           ; $7134: $99
	adc  b                                           ; $7135: $88
	sbc  b                                           ; $7136: $98
	adc  b                                           ; $7137: $88
	adc  c                                           ; $7138: $89
	adc  c                                           ; $7139: $89
	adc  b                                           ; $713a: $88
	adc  b                                           ; $713b: $88
	sbc  b                                           ; $713c: $98
	adc  c                                           ; $713d: $89
	sbc  b                                           ; $713e: $98
	adc  c                                           ; $713f: $89
	sbc  c                                           ; $7140: $99
	sbc  b                                           ; $7141: $98
	sbc  b                                           ; $7142: $98
	adc  c                                           ; $7143: $89
	adc  b                                           ; $7144: $88
	adc  b                                           ; $7145: $88
	sbc  c                                           ; $7146: $99
	adc  b                                           ; $7147: $88
	sbc  b                                           ; $7148: $98
	sbc  b                                           ; $7149: $98
	sbc  c                                           ; $714a: $99
	adc  c                                           ; $714b: $89
	adc  b                                           ; $714c: $88
	sbc  b                                           ; $714d: $98
	sbc  b                                           ; $714e: $98
	adc  b                                           ; $714f: $88
	adc  c                                           ; $7150: $89
	sbc  b                                           ; $7151: $98
	adc  b                                           ; $7152: $88
	adc  b                                           ; $7153: $88
	adc  c                                           ; $7154: $89
	adc  b                                           ; $7155: $88
	adc  b                                           ; $7156: $88
	sbc  c                                           ; $7157: $99
	adc  c                                           ; $7158: $89
	adc  b                                           ; $7159: $88
	sbc  b                                           ; $715a: $98
	sbc  b                                           ; $715b: $98
	sbc  b                                           ; $715c: $98
	adc  c                                           ; $715d: $89
	adc  b                                           ; $715e: $88
	adc  b                                           ; $715f: $88
	adc  b                                           ; $7160: $88
	adc  b                                           ; $7161: $88
	adc  b                                           ; $7162: $88
	adc  b                                           ; $7163: $88
	sbc  c                                           ; $7164: $99
	sbc  b                                           ; $7165: $98
	sbc  e                                           ; $7166: $9b
	sub  [hl]                                        ; $7167: $96
	ld   [hl], a                                     ; $7168: $77
	adc  b                                           ; $7169: $88
	sbc  h                                           ; $716a: $9c
	or   a                                           ; $716b: $b7
	xor  h                                           ; $716c: $ac
	adc  b                                           ; $716d: $88
	xor  e                                           ; $716e: $ab
	sub  [hl]                                        ; $716f: $96
	xor  e                                           ; $7170: $ab
	ld   [hl], l                                     ; $7171: $75
	ld   l, b                                        ; $7172: $68
	add  a                                           ; $7173: $87
	ld   a, d                                        ; $7174: $7a
	reti                                             ; $7175: $d9


	ld   d, [hl]                                     ; $7176: $56
	ld   a, e                                        ; $7177: $7b
	add  sp, $77                                     ; $7178: $e8 $77
	ld   d, l                                        ; $717a: $55
	ld   e, e                                        ; $717b: $5b
	sub  [hl]                                        ; $717c: $96
	ld   [hl], a                                     ; $717d: $77
	ld   a, c                                        ; $717e: $79
	sub  l                                           ; $717f: $95
	ld   [hl], l                                     ; $7180: $75
	ld   [hl], a                                     ; $7181: $77
	adc  h                                           ; $7182: $8c
	cp   c                                           ; $7183: $b9
	ld   [hl], l                                     ; $7184: $75
	ld   l, e                                        ; $7185: $6b
	adc  c                                           ; $7186: $89
	ld   h, l                                        ; $7187: $65
	ld   h, l                                        ; $7188: $65
	sbc  c                                           ; $7189: $99
	ld   a, b                                        ; $718a: $78
	cp   h                                           ; $718b: $bc
	ret                                              ; $718c: $c9


	add  [hl]                                        ; $718d: $86
	ld   [hl], $76                                   ; $718e: $36 $76
	ld   b, l                                        ; $7190: $45
	ld   d, e                                        ; $7191: $53
	ld   b, e                                        ; $7192: $43
	ld   l, b                                        ; $7193: $68
	scf                                              ; $7194: $37
	and  a                                           ; $7195: $a7
	ld   a, b                                        ; $7196: $78
	halt                                             ; $7197: $76
	ld   l, b                                        ; $7198: $68
	ld   h, l                                        ; $7199: $65
	add  a                                           ; $719a: $87
	add  l                                           ; $719b: $85
	add  [hl]                                        ; $719c: $86
	ld   h, a                                        ; $719d: $67
	ld   a, b                                        ; $719e: $78
	sbc  d                                           ; $719f: $9a
	ld   l, b                                        ; $71a0: $68
	add  a                                           ; $71a1: $87
	ld   d, [hl]                                     ; $71a2: $56
	sub  l                                           ; $71a3: $95
	adc  d                                           ; $71a4: $8a
	sub  a                                           ; $71a5: $97
	adc  c                                           ; $71a6: $89
	ld   [hl], a                                     ; $71a7: $77
	ld   l, d                                        ; $71a8: $6a
	adc  c                                           ; $71a9: $89
	and  a                                           ; $71aa: $a7
	xor  b                                           ; $71ab: $a8
	adc  b                                           ; $71ac: $88
	ld   a, b                                        ; $71ad: $78
	cp   c                                           ; $71ae: $b9
	and  [hl]                                        ; $71af: $a6
	ld   b, a                                        ; $71b0: $47
	ld   l, b                                        ; $71b1: $68
	ld   a, c                                        ; $71b2: $79
	db   $eb                                         ; $71b3: $eb
	ld   [hl], l                                     ; $71b4: $75
	ld   a, c                                        ; $71b5: $79
	ld   a, e                                        ; $71b6: $7b
	adc  $97                                         ; $71b7: $ce $97
	adc  b                                           ; $71b9: $88
	sub  l                                           ; $71ba: $95
	adc  l                                           ; $71bb: $8d
	cp   b                                           ; $71bc: $b8
	ld   a, c                                        ; $71bd: $79
	add  [hl]                                        ; $71be: $86
	ld   d, a                                        ; $71bf: $57
	xor  b                                           ; $71c0: $a8
	halt                                             ; $71c1: $76
	add  a                                           ; $71c2: $87
	ld   b, [hl]                                     ; $71c3: $46
	ld   l, c                                        ; $71c4: $69
	sub  a                                           ; $71c5: $97
	sbc  e                                           ; $71c6: $9b
	and  [hl]                                        ; $71c7: $a6
	xor  l                                           ; $71c8: $ad
	xor  $cc                                         ; $71c9: $ee $cc
	cp   d                                           ; $71cb: $ba
	sbc  b                                           ; $71cc: $98
	add  l                                           ; $71cd: $85
	ld   h, h                                        ; $71ce: $64
	ld   de, $4412                                   ; $71cf: $11 $12 $44
	ld   sp, $5567                                   ; $71d2: $31 $67 $55
	ld   c, l                                        ; $71d5: $4d
	rst  $38                                         ; $71d6: $ff
	rst  $38                                         ; $71d7: $ff
	cp   $99                                         ; $71d8: $fe $99
	db   $dd                                         ; $71da: $dd
	cp   d                                           ; $71db: $ba
	db   $dd                                         ; $71dc: $dd
	ld   d, c                                        ; $71dd: $51
	ld   de, $1111                                   ; $71de: $11 $11 $11
	dec  d                                           ; $71e1: $15
	adc  a                                           ; $71e2: $8f
	rst  $38                                         ; $71e3: $ff
	rst  $38                                         ; $71e4: $ff
	db   $fc                                         ; $71e5: $fc
	or   [hl]                                        ; $71e6: $b6
	adc  l                                           ; $71e7: $8d
	rst  $38                                         ; $71e8: $ff
	db   $fd                                         ; $71e9: $fd
	cp   d                                           ; $71ea: $ba
	ld   d, c                                        ; $71eb: $51
	ld   de, $1111                                   ; $71ec: $11 $11 $11
	ld   a, [de]                                     ; $71ef: $1a
	cp   e                                           ; $71f0: $bb
	rst  $38                                         ; $71f1: $ff
	rst  $38                                         ; $71f2: $ff
	rst  $38                                         ; $71f3: $ff
	db   $fd                                         ; $71f4: $fd
	ld   a, l                                        ; $71f5: $7d
	rst  $38                                         ; $71f6: $ff
	ld   a, [$3198]                                  ; $71f7: $fa $98 $31
	ld   de, $1111                                   ; $71fa: $11 $11 $11
	dec  d                                           ; $71fd: $15
	adc  b                                           ; $71fe: $88
	xor  a                                           ; $71ff: $af
	rst  $38                                         ; $7200: $ff
	db   $fd                                         ; $7201: $fd
	db   $fd                                         ; $7202: $fd
	ld   [hl], a                                     ; $7203: $77
	rst  JumpTable                                         ; $7204: $df
	rst  $38                                         ; $7205: $ff
	cp   c                                           ; $7206: $b9
	ld   [hl], e                                     ; $7207: $73
	ld   de, $1111                                   ; $7208: $11 $11 $11
	ld   de, $ce18                                   ; $720b: $11 $18 $ce
	rst  $38                                         ; $720e: $ff
	rst  $38                                         ; $720f: $ff
	cp   $97                                         ; $7210: $fe $97
	cp   [hl]                                        ; $7212: $be
	rst  $38                                         ; $7213: $ff
	db   $fc                                         ; $7214: $fc
	ld   h, [hl]                                     ; $7215: $66
	ld   h, c                                        ; $7216: $61
	ld   de, $1111                                   ; $7217: $11 $11 $11
	ld   de, $ff48                                   ; $721a: $11 $48 $ff
	rst  $38                                         ; $721d: $ff
	db   $fd                                         ; $721e: $fd
	or   h                                           ; $721f: $b4
	ld   l, d                                        ; $7220: $6a
	rst  $38                                         ; $7221: $ff
	rst  $38                                         ; $7222: $ff
	sub  [hl]                                        ; $7223: $96
	inc  [hl]                                        ; $7224: $34
	ld   sp, $1111                                   ; $7225: $31 $11 $11
	ld   de, $9f11                                   ; $7228: $11 $11 $9f
	rst  $38                                         ; $722b: $ff
	rst  $38                                         ; $722c: $ff
	ld   a, [$cc4a]                                  ; $722d: $fa $4a $cc
	rst  $38                                         ; $7230: $ff
	ei                                               ; $7231: $fb
	ld   [hl-], a                                    ; $7232: $32
	ld   [hl], a                                     ; $7233: $77
	ld   hl, $1123                                   ; $7234: $21 $23 $11
	ld   de, $bf14                                   ; $7237: $11 $14 $bf
	rst  $38                                         ; $723a: $ff
	rst  $38                                         ; $723b: $ff
	ld   d, d                                        ; $723c: $52
	jr   @-$0f                                       ; $723d: $18 $ef

	rst  $38                                         ; $723f: $ff
	pop  af                                          ; $7240: $f1
	ld   de, $3568                                   ; $7241: $11 $68 $35
	ld   b, d                                        ; $7244: $42
	ld   de, $5311                                   ; $7245: $11 $11 $53
	rst  JumpTable                                         ; $7248: $df
	rst  $38                                         ; $7249: $ff
	db   $fd                                         ; $724a: $fd
	ret  z                                           ; $724b: $c8

	add  hl, sp                                      ; $724c: $39
	rst  JumpTable                                         ; $724d: $df
	db   $fc                                         ; $724e: $fc
	sub  a                                           ; $724f: $97
	add  e                                           ; $7250: $83
	ld   l, c                                        ; $7251: $69
	and  c                                           ; $7252: $a1
	ld   de, $1111                                   ; $7253: $11 $11 $11
	ld   a, d                                        ; $7256: $7a
	rst  $28                                         ; $7257: $ef
	rst  $38                                         ; $7258: $ff
	rst  $38                                         ; $7259: $ff
	ld   c, l                                        ; $725a: $4d
	sbc  e                                           ; $725b: $9b
	rst  $28                                         ; $725c: $ef
	db   $fd                                         ; $725d: $fd
	ld   [hl], d                                     ; $725e: $72
	ld   b, a                                        ; $725f: $47
	xor  d                                           ; $7260: $aa
	add  l                                           ; $7261: $85
	ld   hl, $1111                                   ; $7262: $21 $11 $11
	rla                                              ; $7265: $17
	rst  $38                                         ; $7266: $ff
	rst  $38                                         ; $7267: $ff
	call c, $d6bd                                    ; $7268: $dc $bd $d6
	rst  $28                                         ; $726b: $ef
	rst  $38                                         ; $726c: $ff
	add  [hl]                                        ; $726d: $86
	ld   [hl], h                                     ; $726e: $74
	ld   l, c                                        ; $726f: $69
	cp   $21                                         ; $7270: $fe $21
	ld   de, $1d11                                   ; $7272: $11 $11 $1d
	rst  $38                                         ; $7275: $ff
	rst  $38                                         ; $7276: $ff
	cp   $f7                                         ; $7277: $fe $f7
	rst  $38                                         ; $7279: $ff
	db   $fc                                         ; $727a: $fc
	call $15c9                                       ; $727b: $cd $c9 $15
	cp   a                                           ; $727e: $bf
	db   $fd                                         ; $727f: $fd
	ld   sp, $1111                                   ; $7280: $31 $11 $11
	ld   de, $be64                                   ; $7283: $11 $64 $be
	rst  $38                                         ; $7286: $ff
	rst  $38                                         ; $7287: $ff
	rst  JumpTable                                         ; $7288: $df
	cp   c                                           ; $7289: $b9
	db   $fc                                         ; $728a: $fc
	ld   [$ab89], a                                  ; $728b: $ea $89 $ab
	rst  $38                                         ; $728e: $ff
	ld   a, [$1121]                                  ; $728f: $fa $21 $11
	ld   de, $8a11                                   ; $7292: $11 $11 $8a
	cp   d                                           ; $7295: $ba
	rst  $38                                         ; $7296: $ff
	rst  $38                                         ; $7297: $ff
	xor  a                                           ; $7298: $af
	ld   a, [$ff59]                                  ; $7299: $fa $59 $ff
	or   a                                           ; $729c: $b7
	adc  h                                           ; $729d: $8c
	rst  $38                                         ; $729e: $ff
	call z, $1153                                    ; $729f: $cc $53 $11
	ld   de, $9c11                                   ; $72a2: $11 $11 $9c
	sbc  c                                           ; $72a5: $99
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	rst  $38                                         ; $72a8: $ff
	ld   a, [$fe8b]                                  ; $72a9: $fa $8b $fe
	add  [hl]                                        ; $72ac: $86
	cp   [hl]                                        ; $72ad: $be
	rst  $38                                         ; $72ae: $ff
	rst  $38                                         ; $72af: $ff
	and  d                                           ; $72b0: $a2
	ld   de, $1111                                   ; $72b1: $11 $11 $11
	add  hl, de                                      ; $72b4: $19
	sbc  b                                           ; $72b5: $98
	ld   e, a                                        ; $72b6: $5f
	rst  $38                                         ; $72b7: $ff
	cp   l                                           ; $72b8: $bd
	rst  $38                                         ; $72b9: $ff
	ld   [hl], h                                     ; $72ba: $74
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72bb: $cf
	ld   sp, hl                                      ; $72bc: $f9
	adc  h                                           ; $72bd: $8c
	rst  $28                                         ; $72be: $ef
	rst  $38                                         ; $72bf: $ff
	db   $fd                                         ; $72c0: $fd
	ld   b, c                                        ; $72c1: $41
	ld   de, $1111                                   ; $72c2: $11 $11 $11
	inc  de                                          ; $72c5: $13
	cp   e                                           ; $72c6: $bb
	ld   l, c                                        ; $72c7: $69
	rst  $38                                         ; $72c8: $ff
	cp   $df                                         ; $72c9: $fe $df
	jp   z, $ff9d                                    ; $72cb: $ca $9d $ff

	set  3, a                                        ; $72ce: $cb $df
	cp   $eb                                         ; $72d0: $fe $eb
	add  h                                           ; $72d2: $84
	ld   de, $1111                                   ; $72d3: $11 $11 $11
	ld   de, $8658                                   ; $72d6: $11 $58 $86
	adc  b                                           ; $72d9: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72da: $cf
	rst  JumpTable                                         ; $72db: $df
	db   $fd                                         ; $72dc: $fd
	xor  h                                           ; $72dd: $ac
	cp   $db                                         ; $72de: $fe $db
	xor  c                                           ; $72e0: $a9
	xor  c                                           ; $72e1: $a9
	xor  d                                           ; $72e2: $aa
	xor  c                                           ; $72e3: $a9
	ld   [hl], a                                     ; $72e4: $77
	ld   [hl], h                                     ; $72e5: $74
	ld   [de], a                                     ; $72e6: $12
	inc  [hl]                                        ; $72e7: $34
	ld   hl, $9726                                   ; $72e8: $21 $26 $97
	ld   d, [hl]                                     ; $72eb: $56
	sbc  d                                           ; $72ec: $9a
	xor  d                                           ; $72ed: $aa
	sbc  c                                           ; $72ee: $99
	or   a                                           ; $72ef: $b7
	adc  b                                           ; $72f0: $88
	adc  b                                           ; $72f1: $88
	cp   h                                           ; $72f2: $bc
	xor  d                                           ; $72f3: $aa
	call z, $68a8                                    ; $72f4: $cc $a8 $68
	call z, $8a86                                    ; $72f7: $cc $86 $8a
	cp   c                                           ; $72fa: $b9
	ld   a, b                                        ; $72fb: $78
	cp   d                                           ; $72fc: $ba
	halt                                             ; $72fd: $76
	ld   a, b                                        ; $72fe: $78
	add  [hl]                                        ; $72ff: $86
	ld   d, [hl]                                     ; $7300: $56
	ld   [hl], a                                     ; $7301: $77
	sbc  b                                           ; $7302: $98
	ld   h, a                                        ; $7303: $67
	adc  c                                           ; $7304: $89
	sbc  b                                           ; $7305: $98
	ld   h, a                                        ; $7306: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7307: $cf
	sub  $46                                         ; $7308: $d6 $46
	xor  c                                           ; $730a: $a9
	sbc  b                                           ; $730b: $98
	xor  [hl]                                        ; $730c: $ae
	rst  $20                                         ; $730d: $e7
	ld   d, a                                        ; $730e: $57
	cp   h                                           ; $730f: $bc
	sub  a                                           ; $7310: $97
	adc  d                                           ; $7311: $8a
	cp   d                                           ; $7312: $ba
	halt                                             ; $7313: $76
	ld   a, b                                        ; $7314: $78
	add  a                                           ; $7315: $87
	ld   a, c                                        ; $7316: $79
	sbc  c                                           ; $7317: $99
	add  l                                           ; $7318: $85
	ld   d, [hl]                                     ; $7319: $56
	sbc  d                                           ; $731a: $9a
	sbc  b                                           ; $731b: $98
	sbc  d                                           ; $731c: $9a
	sub  [hl]                                        ; $731d: $96
	ld   l, b                                        ; $731e: $68
	cp   e                                           ; $731f: $bb
	sub  a                                           ; $7320: $97
	adc  c                                           ; $7321: $89
	xor  c                                           ; $7322: $a9
	halt                                             ; $7323: $76
	ld   a, c                                        ; $7324: $79
	sbc  b                                           ; $7325: $98
	adc  b                                           ; $7326: $88
	sbc  b                                           ; $7327: $98
	ld   h, l                                        ; $7328: $65
	ld   l, b                                        ; $7329: $68
	adc  b                                           ; $732a: $88
	adc  b                                           ; $732b: $88
	adc  b                                           ; $732c: $88
	adc  b                                           ; $732d: $88
	sub  a                                           ; $732e: $97
	ld   a, c                                        ; $732f: $79
	sbc  b                                           ; $7330: $98
	ld   [hl], a                                     ; $7331: $77
	sbc  d                                           ; $7332: $9a
	halt                                             ; $7333: $76
	ld   a, d                                        ; $7334: $7a
	xor  b                                           ; $7335: $a8
	ld   [hl], a                                     ; $7336: $77
	adc  c                                           ; $7337: $89
	ld   [hl], a                                     ; $7338: $77
	adc  c                                           ; $7339: $89
	halt                                             ; $733a: $76
	adc  e                                           ; $733b: $8b
	xor  c                                           ; $733c: $a9
	halt                                             ; $733d: $76
	ld   a, c                                        ; $733e: $79
	add  a                                           ; $733f: $87
	ld   [hl], a                                     ; $7340: $77
	ld   [hl], a                                     ; $7341: $77
	ld   [hl], a                                     ; $7342: $77
	sbc  c                                           ; $7343: $99
	sbc  b                                           ; $7344: $98
	adc  b                                           ; $7345: $88
	sbc  b                                           ; $7346: $98
	adc  b                                           ; $7347: $88
	sbc  c                                           ; $7348: $99
	adc  b                                           ; $7349: $88
	adc  b                                           ; $734a: $88
	adc  b                                           ; $734b: $88
	adc  b                                           ; $734c: $88
	sbc  b                                           ; $734d: $98
	add  a                                           ; $734e: $87
	ld   [hl], a                                     ; $734f: $77
	ld   [hl], a                                     ; $7350: $77
	ld   [hl], a                                     ; $7351: $77
	ld   a, b                                        ; $7352: $78
	add  a                                           ; $7353: $87
	ld   [hl], a                                     ; $7354: $77
	ld   [hl], a                                     ; $7355: $77
	ld   [hl], a                                     ; $7356: $77
	adc  b                                           ; $7357: $88
	adc  b                                           ; $7358: $88
	adc  b                                           ; $7359: $88
	adc  b                                           ; $735a: $88
	sbc  c                                           ; $735b: $99
	adc  b                                           ; $735c: $88
	adc  b                                           ; $735d: $88
	adc  b                                           ; $735e: $88
	adc  b                                           ; $735f: $88
	adc  b                                           ; $7360: $88
	adc  b                                           ; $7361: $88
	adc  b                                           ; $7362: $88
	ld   [hl], a                                     ; $7363: $77
	ld   [hl], a                                     ; $7364: $77
	ld   [hl], a                                     ; $7365: $77
	ld   [hl], a                                     ; $7366: $77
	adc  b                                           ; $7367: $88
	add  a                                           ; $7368: $87
	ld   a, b                                        ; $7369: $78
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
	add  a                                           ; $7376: $87
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
	adc  c                                           ; $74a5: $89
	add  a                                           ; $74a6: $87
	ld   a, b                                        ; $74a7: $78
	xor  c                                           ; $74a8: $a9
	ld   h, a                                        ; $74a9: $67
	sbc  d                                           ; $74aa: $9a
	sub  a                                           ; $74ab: $97
	ld   h, a                                        ; $74ac: $67
	sub  a                                           ; $74ad: $97
	ld   a, c                                        ; $74ae: $79
	sbc  b                                           ; $74af: $98
	add  a                                           ; $74b0: $87
	ld   [hl], a                                     ; $74b1: $77
	adc  d                                           ; $74b2: $8a
	cp   b                                           ; $74b3: $b8
	ld   a, b                                        ; $74b4: $78
	cp   c                                           ; $74b5: $b9
	ld   h, h                                        ; $74b6: $64
	ld   a, d                                        ; $74b7: $7a
	and  [hl]                                        ; $74b8: $a6
	ld   d, a                                        ; $74b9: $57
	xor  d                                           ; $74ba: $aa
	adc  b                                           ; $74bb: $88
	adc  b                                           ; $74bc: $88
	halt                                             ; $74bd: $76
	adc  d                                           ; $74be: $8a
	cp   d                                           ; $74bf: $ba
	add  l                                           ; $74c0: $85
	ld   b, [hl]                                     ; $74c1: $46
	adc  c                                           ; $74c2: $89
	add  [hl]                                        ; $74c3: $86
	ld   l, b                                        ; $74c4: $68
	add  a                                           ; $74c5: $87
	ld   l, c                                        ; $74c6: $69
	xor  c                                           ; $74c7: $a9
	ld   d, h                                        ; $74c8: $54
	ld   l, c                                        ; $74c9: $69
	xor  c                                           ; $74ca: $a9
	halt                                             ; $74cb: $76
	ld   h, a                                        ; $74cc: $67
	ld   [hl], a                                     ; $74cd: $77
	ld   a, b                                        ; $74ce: $78
	add  a                                           ; $74cf: $87
	ld   h, [hl]                                     ; $74d0: $66
	ld   a, d                                        ; $74d1: $7a
	sub  a                                           ; $74d2: $97
	sbc  c                                           ; $74d3: $99
	ld   h, l                                        ; $74d4: $65
	xor  [hl]                                        ; $74d5: $ae
	rst  ToBoot                                         ; $74d6: $c7
	ld   h, [hl]                                     ; $74d7: $66
	sbc  c                                           ; $74d8: $99
	adc  d                                           ; $74d9: $8a
	call c, Call_0cf_6974                            ; $74da: $dc $74 $69
	sbc  b                                           ; $74dd: $98
	ld   h, [hl]                                     ; $74de: $66
	adc  b                                           ; $74df: $88
	ld   h, [hl]                                     ; $74e0: $66
	ld   [hl], a                                     ; $74e1: $77
	ld   h, [hl]                                     ; $74e2: $66
	ld   h, a                                        ; $74e3: $67
	add  a                                           ; $74e4: $87
	ld   h, [hl]                                     ; $74e5: $66
	ld   a, b                                        ; $74e6: $78
	sbc  c                                           ; $74e7: $99
	sub  a                                           ; $74e8: $97
	adc  b                                           ; $74e9: $88
	ld   h, [hl]                                     ; $74ea: $66
	adc  e                                           ; $74eb: $8b
	or   a                                           ; $74ec: $b7
	ld   b, l                                        ; $74ed: $45
	sbc  d                                           ; $74ee: $9a
	ld   [hl], l                                     ; $74ef: $75
	ld   l, c                                        ; $74f0: $69
	xor  c                                           ; $74f1: $a9
	ld   h, a                                        ; $74f2: $67
	add  a                                           ; $74f3: $87
	add  a                                           ; $74f4: $87
	adc  c                                           ; $74f5: $89
	sbc  b                                           ; $74f6: $98
	halt                                             ; $74f7: $76
	ld   l, b                                        ; $74f8: $68
	adc  b                                           ; $74f9: $88
	ld   [hl], a                                     ; $74fa: $77
	adc  b                                           ; $74fb: $88
	add  [hl]                                        ; $74fc: $86
	ld   a, b                                        ; $74fd: $78
	sbc  b                                           ; $74fe: $98
	ld   h, a                                        ; $74ff: $67
	ld   a, b                                        ; $7500: $78
	halt                                             ; $7501: $76
	ld   h, a                                        ; $7502: $67
	adc  b                                           ; $7503: $88
	adc  b                                           ; $7504: $88
	adc  b                                           ; $7505: $88
	adc  c                                           ; $7506: $89
	ld   a, b                                        ; $7507: $78
	sbc  b                                           ; $7508: $98
	adc  b                                           ; $7509: $88
	adc  b                                           ; $750a: $88
	sbc  b                                           ; $750b: $98
	ld   a, b                                        ; $750c: $78
	add  a                                           ; $750d: $87
	ld   h, [hl]                                     ; $750e: $66
	adc  d                                           ; $750f: $8a
	sub  a                                           ; $7510: $97
	ld   h, a                                        ; $7511: $67
	sbc  b                                           ; $7512: $98
	add  [hl]                                        ; $7513: $86
	ld   l, b                                        ; $7514: $68
	xor  c                                           ; $7515: $a9
	halt                                             ; $7516: $76
	ld   a, b                                        ; $7517: $78
	ld   h, l                                        ; $7518: $65
	ld   h, a                                        ; $7519: $67
	sub  a                                           ; $751a: $97
	ld   l, b                                        ; $751b: $68
	sbc  c                                           ; $751c: $99
	add  a                                           ; $751d: $87
	ld   [hl], a                                     ; $751e: $77
	ld   [hl], a                                     ; $751f: $77
	ld   [hl], a                                     ; $7520: $77
	ld   a, b                                        ; $7521: $78
	sbc  c                                           ; $7522: $99
	sbc  c                                           ; $7523: $99
	sbc  c                                           ; $7524: $99
	sbc  c                                           ; $7525: $99
	xor  d                                           ; $7526: $aa
	sbc  e                                           ; $7527: $9b
	xor  c                                           ; $7528: $a9
	sbc  b                                           ; $7529: $98
	sbc  b                                           ; $752a: $98
	sbc  c                                           ; $752b: $99
	xor  e                                           ; $752c: $ab
	cp   c                                           ; $752d: $b9
	adc  c                                           ; $752e: $89
	add  a                                           ; $752f: $87
	ld   h, [hl]                                     ; $7530: $66
	ld   [hl], a                                     ; $7531: $77
	ld   d, h                                        ; $7532: $54
	dec  [hl]                                        ; $7533: $35
	ld   h, [hl]                                     ; $7534: $66
	halt                                             ; $7535: $76
	ld   d, l                                        ; $7536: $55
	ld   d, h                                        ; $7537: $54
	ld   b, h                                        ; $7538: $44
	ld   a, c                                        ; $7539: $79
	xor  c                                           ; $753a: $a9
	adc  e                                           ; $753b: $8b
	cp   e                                           ; $753c: $bb
	xor  d                                           ; $753d: $aa
	sbc  e                                           ; $753e: $9b
	cp   h                                           ; $753f: $bc
	db   $dd                                         ; $7540: $dd
	res  7, d                                        ; $7541: $cb $ba
	xor  e                                           ; $7543: $ab
	cp   d                                           ; $7544: $ba
	cp   c                                           ; $7545: $b9
	sbc  d                                           ; $7546: $9a
	sbc  b                                           ; $7547: $98
	add  [hl]                                        ; $7548: $86
	ld   h, l                                        ; $7549: $65
	ld   h, l                                        ; $754a: $65
	ld   d, [hl]                                     ; $754b: $56
	ld   d, l                                        ; $754c: $55
	ld   d, e                                        ; $754d: $53
	inc  sp                                          ; $754e: $33
	ld   [hl+], a                                    ; $754f: $22
	inc  [hl]                                        ; $7550: $34
	ld   h, [hl]                                     ; $7551: $66
	adc  c                                           ; $7552: $89
	add  a                                           ; $7553: $87
	adc  b                                           ; $7554: $88
	xor  h                                           ; $7555: $ac
	cp   e                                           ; $7556: $bb
	cp   h                                           ; $7557: $bc
	jp   z, $eebd                                    ; $7558: $ca $bd $ee

	call z, $9adb                                    ; $755b: $cc $db $9a
	xor  e                                           ; $755e: $ab

jr_0cf_755f:
	cp   c                                           ; $755f: $b9
	add  a                                           ; $7560: $87
	ld   h, [hl]                                     ; $7561: $66
	ld   d, l                                        ; $7562: $55
	ld   d, l                                        ; $7563: $55
	adc  c                                           ; $7564: $89
	ld   d, d                                        ; $7565: $52
	ld   de, $1122                                   ; $7566: $11 $22 $11
	ld   c, c                                        ; $7569: $49
	or   a                                           ; $756a: $b7
	inc  sp                                          ; $756b: $33
	sbc  h                                           ; $756c: $9c
	ret                                              ; $756d: $c9


	cp   e                                           ; $756e: $bb
	sbc  $a9                                         ; $756f: $de $a9
	xor  e                                           ; $7571: $ab
	rst  $28                                         ; $7572: $ef
	adc  $ff                                         ; $7573: $ce $ff
	reti                                             ; $7575: $d9


	sbc  e                                           ; $7576: $9b
	jp   z, Jump_0cf_7875                            ; $7577: $ca $75 $78

	sbc  b                                           ; $757a: $98
	ld   h, l                                        ; $757b: $65
	ld   h, [hl]                                     ; $757c: $66
	ld   d, l                                        ; $757d: $55
	ld   hl, $1111                                   ; $757e: $21 $11 $11
	inc  d                                           ; $7581: $14
	sbc  b                                           ; $7582: $98
	ld   l, c                                        ; $7583: $69
	xor  c                                           ; $7584: $a9
	ld   b, e                                        ; $7585: $43
	adc  l                                           ; $7586: $8d
	db   $fd                                         ; $7587: $fd
	xor  e                                           ; $7588: $ab
	ret                                              ; $7589: $c9


	adc  e                                           ; $758a: $8b
	rst  $38                                         ; $758b: $ff
	rst  $38                                         ; $758c: $ff
	cp   $c9                                         ; $758d: $fe $c9
	ld   l, b                                        ; $758f: $68
	adc  e                                           ; $7590: $8b
	call c, Call_0cf_5597                            ; $7591: $dc $97 $55
	ld   h, [hl]                                     ; $7594: $66
	ld   h, a                                        ; $7595: $67
	sbc  c                                           ; $7596: $99
	ld   b, c                                        ; $7597: $41
	ld   de, $1111                                   ; $7598: $11 $11 $11
	ld   l, e                                        ; $759b: $6b
	cp   l                                           ; $759c: $bd
	sub  c                                           ; $759d: $91
	jr   jr_0cf_755f                                 ; $759e: $18 $bf

	ei                                               ; $75a0: $fb
	cp   h                                           ; $75a1: $bc
	halt                                             ; $75a2: $76
	cp   a                                           ; $75a3: $bf
	rst  $38                                         ; $75a4: $ff
	call c, $ecff                                    ; $75a5: $dc $ff $ec
	sbc  b                                           ; $75a8: $98

Call_0cf_75a9:
	adc  d                                           ; $75a9: $8a
	cp   d                                           ; $75aa: $ba
	ld   [hl], e                                     ; $75ab: $73
	ld   e, c                                        ; $75ac: $59
	call z, $1173                                    ; $75ad: $cc $73 $11
	dec  [hl]                                        ; $75b0: $35
	ld   de, $1a11                                   ; $75b1: $11 $11 $1a
	xor  d                                           ; $75b4: $aa
	ld   h, l                                        ; $75b5: $65
	ld   a, b                                        ; $75b6: $78
	and  [hl]                                        ; $75b7: $a6
	sbc  d                                           ; $75b8: $9a
	xor  [hl]                                        ; $75b9: $ae
	rst  $38                                         ; $75ba: $ff
	jp   z, $ef6a                                    ; $75bb: $ca $6a $ef

	rst  $38                                         ; $75be: $ff
	db   $fc                                         ; $75bf: $fc
	add  [hl]                                        ; $75c0: $86
	sbc  e                                           ; $75c1: $9b
	jp   z, $87ba                                    ; $75c2: $ca $ba $87

	ld   d, e                                        ; $75c5: $53
	ld   b, e                                        ; $75c6: $43
	ld   e, c                                        ; $75c7: $59
	ld   [hl], l                                     ; $75c8: $75
	ld   hl, $1311                                   ; $75c9: $21 $11 $13
	cp   l                                           ; $75cc: $bd
	and  [hl]                                        ; $75cd: $a6
	add  h                                           ; $75ce: $84
	ld   h, $bd                                      ; $75cf: $26 $bd
	call c, $87dd                                    ; $75d1: $dc $dd $87
	ld   a, h                                        ; $75d4: $7c
	rst  $38                                         ; $75d5: $ff
	rst  $38                                         ; $75d6: $ff
	db   $fd                                         ; $75d7: $fd
	xor  c                                           ; $75d8: $a9
	sbc  d                                           ; $75d9: $9a
	cp   h                                           ; $75da: $bc
	and  a                                           ; $75db: $a7
	ld   d, h                                        ; $75dc: $54
	ld   e, c                                        ; $75dd: $59
	sub  a                                           ; $75de: $97
	inc  sp                                          ; $75df: $33
	ld   b, c                                        ; $75e0: $41
	ld   de, $1211                                   ; $75e1: $11 $11 $12
	ld   l, h                                        ; $75e4: $6c
	sbc  c                                           ; $75e5: $99
	sub  a                                           ; $75e6: $97
	xor  b                                           ; $75e7: $a8
	ld   d, [hl]                                     ; $75e8: $56
	sbc  [hl]                                        ; $75e9: $9e
	rst  $38                                         ; $75ea: $ff
	cp   b                                           ; $75eb: $b8
	ld   d, l                                        ; $75ec: $55
	cp   a                                           ; $75ed: $bf
	rst  $38                                         ; $75ee: $ff
	rst  $38                                         ; $75ef: $ff
	sub  a                                           ; $75f0: $97
	ld   h, l                                        ; $75f1: $65
	ld   [hl], a                                     ; $75f2: $77
	sbc  h                                           ; $75f3: $9c
	and  a                                           ; $75f4: $a7
	ld   d, e                                        ; $75f5: $53
	ld   b, h                                        ; $75f6: $44
	ld   [hl], $54                                   ; $75f7: $36 $54
	ld   de, $4c11                                   ; $75f9: $11 $11 $4c

jr_0cf_75fc:
	ld   sp, hl                                      ; $75fc: $f9
	ld   h, $a5                                      ; $75fd: $26 $a5
	ld   c, c                                        ; $75ff: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7600: $cf
	ei                                               ; $7601: $fb
	xor  b                                           ; $7602: $a8
	sbc  h                                           ; $7603: $9c
	db   $ed                                         ; $7604: $ed
	rst  $38                                         ; $7605: $ff
	rst  $38                                         ; $7606: $ff
	ei                                               ; $7607: $fb
	ld   h, h                                        ; $7608: $64
	adc  [hl]                                        ; $7609: $8e
	db   $eb                                         ; $760a: $eb
	ld   h, h                                        ; $760b: $64
	ld   b, h                                        ; $760c: $44
	ld   d, e                                        ; $760d: $53
	ld   a, b                                        ; $760e: $78
	inc  sp                                          ; $760f: $33
	ld   de, $2c11                                   ; $7610: $11 $11 $2c
	rst  $20                                         ; $7613: $e7
	ld   de, $d99f                                   ; $7614: $11 $9f $d9
	ld   d, a                                        ; $7617: $57
	rst  $28                                         ; $7618: $ef
	ld   [$dfb8], a                                  ; $7619: $ea $b8 $df
	rst  $38                                         ; $761c: $ff
	rst  $38                                         ; $761d: $ff
	ret                                              ; $761e: $c9


	sbc  h                                           ; $761f: $9c
	rst  $28                                         ; $7620: $ef
	sub  e                                           ; $7621: $93
	ld   de, $b57c                                   ; $7622: $11 $7c $b5
	ld   b, e                                        ; $7625: $43
	inc  hl                                          ; $7626: $23
	ld   de, $5b11                                   ; $7627: $11 $11 $5b
	push de                                          ; $762a: $d5
	ld   de, $b4bf                                   ; $762b: $11 $bf $b4
	ld   a, [de]                                     ; $762e: $1a
	rst  $38                                         ; $762f: $ff
	rst  $30                                         ; $7630: $f7
	add  a                                           ; $7631: $87
	sbc  [hl]                                        ; $7632: $9e
	rst  $38                                         ; $7633: $ff
	rst  $38                                         ; $7634: $ff
	ld   [hl], l                                     ; $7635: $75
	ld   e, [hl]                                     ; $7636: $5e
	db   $fc                                         ; $7637: $fc
	ld   h, c                                        ; $7638: $61
	dec  d                                           ; $7639: $15
	sbc  c                                           ; $763a: $99
	add  l                                           ; $763b: $85
	ld   hl, $1141                                   ; $763c: $21 $41 $11
	dec  d                                           ; $763f: $15
	adc  c                                           ; $7640: $89
	jr   c, jr_0cf_75fc                              ; $7641: $38 $b9

	add  e                                           ; $7643: $83
	ld   a, [hl]                                     ; $7644: $7e
	rst  $38                                         ; $7645: $ff
	add  sp, $68                                     ; $7646: $e8 $68
	rst  $28                                         ; $7648: $ef
	rst  $38                                         ; $7649: $ff
	rst  $38                                         ; $764a: $ff
	db   $fc                                         ; $764b: $fc
	cp   c                                           ; $764c: $b9
	sbc  b                                           ; $764d: $98
	ld   h, h                                        ; $764e: $64
	ld   b, a                                        ; $764f: $47
	add  l                                           ; $7650: $85
	ld   de, $6138                                   ; $7651: $11 $38 $61
	ld   de, $fb17                                   ; $7654: $11 $17 $fb
	ld   sp, $78ba                                   ; $7657: $31 $ba $78
	ld   a, a                                        ; $765a: $7f
	rst  $38                                         ; $765b: $ff
	add  a                                           ; $765c: $87
	adc  h                                           ; $765d: $8c
	cp   $ff                                         ; $765e: $fe $ff
	cp   $ec                                         ; $7660: $fe $ec
	xor  c                                           ; $7662: $a9
	ld   l, b                                        ; $7663: $68
	sub  l                                           ; $7664: $95
	ld   [hl], $22                                   ; $7665: $36 $22
	jr   c, @-$6d                                    ; $7667: $38 $91

	ld   de, $ff1e                                   ; $7669: $11 $1e $ff
	add  c                                           ; $766c: $81
	ld   [de], a                                     ; $766d: $12
	xor  a                                           ; $766e: $af
	cp   $ca                                         ; $766f: $fe $ca
	adc  h                                           ; $7671: $8c
	rst  JumpTable                                         ; $7672: $df
	rst  $38                                         ; $7673: $ff
	cp   $ff                                         ; $7674: $fe $ff
	jp   c, $ea9a                                    ; $7676: $da $9a $ea

	ld   b, c                                        ; $7679: $41
	ld   de, $6a45                                   ; $767a: $11 $45 $6a
	ld   de, $4e11                                   ; $767d: $11 $11 $4e
	ei                                               ; $7680: $fb
	sub  c                                           ; $7681: $91
	ld   a, e                                        ; $7682: $7b
	ld   e, [hl]                                     ; $7683: $5e
	adc  h                                           ; $7684: $8c
	rst  $38                                         ; $7685: $ff
	call $dd8e                                       ; $7686: $cd $8e $dd
	rst  $38                                         ; $7689: $ff
	rst  $38                                         ; $768a: $ff
	ld   [hl-], a                                    ; $768b: $32
	dec  h                                           ; $768c: $25
	db   $ec                                         ; $768d: $ec
	or   [hl]                                        ; $768e: $b6
	ld   de, $5211                                   ; $768f: $11 $11 $52
	ld   de, $fd14                                   ; $7692: $11 $14 $fd
	add  l                                           ; $7695: $85
	ld   e, d                                        ; $7696: $5a

Call_0cf_7697:
	jp   hl                                          ; $7697: $e9


	sbc  $ed                                         ; $7698: $de $ed
	cp   a                                           ; $769a: $bf
	rst  $38                                         ; $769b: $ff
	db   $eb                                         ; $769c: $eb
	rst  JumpTable                                         ; $769d: $df
	rst  $38                                         ; $769e: $ff
	ld   hl, sp+$41                                  ; $769f: $f8 $41
	ld   b, l                                        ; $76a1: $45
	ld   h, e                                        ; $76a2: $63
	ld   de, $1111                                   ; $76a3: $11 $11 $11
	ld   de, $c6ff                                   ; $76a6: $11 $ff $c6
	inc  hl                                          ; $76a9: $23
	adc  d                                           ; $76aa: $8a
	cp   h                                           ; $76ab: $bc
	rst  $38                                         ; $76ac: $ff
	db   $fd                                         ; $76ad: $fd
	xor  e                                           ; $76ae: $ab
	rst  $38                                         ; $76af: $ff
	rst  $38                                         ; $76b0: $ff
	rst  $38                                         ; $76b1: $ff
	db   $ec                                         ; $76b2: $ec
	adc  c                                           ; $76b3: $89
	sbc  c                                           ; $76b4: $99
	ld   [hl], c                                     ; $76b5: $71
	ld   de, $1117                                   ; $76b6: $11 $17 $11
	ld   de, $f5ff                                   ; $76b9: $11 $ff $f5
	ld   de, $bf57                                   ; $76bc: $11 $57 $bf
	rst  $38                                         ; $76bf: $ff
	cp   b                                           ; $76c0: $b8
	ld   a, [hl]                                     ; $76c1: $7e
	rst  $38                                         ; $76c2: $ff
	rst  $38                                         ; $76c3: $ff
	rst  $38                                         ; $76c4: $ff
	db   $fc                                         ; $76c5: $fc
	ld   hl, $916a                                   ; $76c6: $21 $6a $91
	ld   de, $1131                                   ; $76c9: $11 $31 $11
	rra                                              ; $76cc: $1f
	cp   $11                                         ; $76cd: $fe $11
	inc  d                                           ; $76cf: $14
	cp   l                                           ; $76d0: $bd
	rst  $38                                         ; $76d1: $ff
	xor  $b8                                         ; $76d2: $ee $b8
	sbc  a                                           ; $76d4: $9f
	rst  $38                                         ; $76d5: $ff
	db   $fc                                         ; $76d6: $fc
	rst  $28                                         ; $76d7: $ef
	jp   $9714                                       ; $76d8: $c3 $14 $97


	ld   de, $1111                                   ; $76db: $11 $11 $11
	ld   c, a                                        ; $76de: $4f
	rst  $38                                         ; $76df: $ff
	ld   hl, $9e15                                   ; $76e0: $21 $15 $9e
	rst  $38                                         ; $76e3: $ff
	db   $dd                                         ; $76e4: $dd
	ret  z                                           ; $76e5: $c8

	sbc  h                                           ; $76e6: $9c
	rst  $38                                         ; $76e7: $ff
	cp   $df                                         ; $76e8: $fe $df
	add  c                                           ; $76ea: $81
	inc  de                                          ; $76eb: $13
	ld   b, h                                        ; $76ec: $44
	ld   de, $1911                                   ; $76ed: $11 $11 $19
	rst  $38                                         ; $76f0: $ff
	pop  af                                          ; $76f1: $f1
	ld   h, h                                        ; $76f2: $64
	daa                                              ; $76f3: $27
	sbc  a                                           ; $76f4: $9f
	rst  $38                                         ; $76f5: $ff
	push de                                          ; $76f6: $d5
	ld   a, d                                        ; $76f7: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76f8: $cf
	rst  $38                                         ; $76f9: $ff
	db   $fd                                         ; $76fa: $fd
	add  c                                           ; $76fb: $81
	ld   de, $1111                                   ; $76fc: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $76ff: $11 $11 $ff
	db   $fd                                         ; $7702: $fd
	add  l                                           ; $7703: $85
	inc  d                                           ; $7704: $14
	cp   a                                           ; $7705: $bf
	rst  $38                                         ; $7706: $ff
	rst  $38                                         ; $7707: $ff
	call z, $ff69                                    ; $7708: $cc $69 $ff
	rst  $38                                         ; $770b: $ff
	push af                                          ; $770c: $f5
	ld   de, $5511                                   ; $770d: $11 $11 $55
	ld   de, rAUD1LEN                                   ; $7710: $11 $11 $ff
	pop  af                                          ; $7713: $f1
	ld   c, e                                        ; $7714: $4b
	rst  $38                                         ; $7715: $ff
	db   $ec                                         ; $7716: $ec
	xor  c                                           ; $7717: $a9
	rst  $38                                         ; $7718: $ff
	rst  $38                                         ; $7719: $ff
	cp   e                                           ; $771a: $bb
	ld   a, c                                        ; $771b: $79
	rst  $38                                         ; $771c: $ff
	rst  $30                                         ; $771d: $f7
	ld   de, $3111                                   ; $771e: $11 $11 $31
	ld   de, $ff1e                                   ; $7721: $11 $1e $ff
	and  h                                           ; $7724: $a4
	ld   e, c                                        ; $7725: $59
	rst  $28                                         ; $7726: $ef
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	call $fddf                                       ; $7729: $cd $df $fd
	rst  $28                                         ; $772c: $ef
	ld   hl, sp+$11                                  ; $772d: $f8 $11
	ld   de, $1111                                   ; $772f: $11 $11 $11
	ld   e, a                                        ; $7732: $5f
	rst  $38                                         ; $7733: $ff
	ld   de, $ff1a                                   ; $7734: $11 $1a $ff
	rst  $38                                         ; $7737: $ff
	ld   sp, hl                                      ; $7738: $f9
	and  [hl]                                        ; $7739: $a6
	sbc  a                                           ; $773a: $9f
	rst  $38                                         ; $773b: $ff
	db   $eb                                         ; $773c: $eb
	cp   e                                           ; $773d: $bb
	ld   de, $1111                                   ; $773e: $11 $11 $11
	ld   de, $fadf                                   ; $7741: $11 $df $fa
	ld   b, c                                        ; $7744: $41
	ld   e, d                                        ; $7745: $5a
	rst  $38                                         ; $7746: $ff
	cp   $66                                         ; $7747: $fe $66
	jp   z, $ffaf                                    ; $7749: $ca $af $ff

	ei                                               ; $774c: $fb
	ld   d, c                                        ; $774d: $51
	ld   de, $1111                                   ; $774e: $11 $11 $11
	ld   e, a                                        ; $7751: $5f
	rst  $38                                         ; $7752: $ff
	ld   [hl], a                                     ; $7753: $77
	ld   c, h                                        ; $7754: $4c
	rst  $38                                         ; $7755: $ff
	ld   hl, sp-$7b                                  ; $7756: $f8 $85
	call $ffde                                       ; $7758: $cd $de $ff
	db   $fd                                         ; $775b: $fd
	ld   [hl], e                                     ; $775c: $73
	ld   de, $1111                                   ; $775d: $11 $11 $11
	ld   c, a                                        ; $7760: $4f
	rst  $38                                         ; $7761: $ff
	ld   h, c                                        ; $7762: $61
	rla                                              ; $7763: $17
	rst  JumpTable                                         ; $7764: $df
	rst  $38                                         ; $7765: $ff
	ld   a, [$1872]                                  ; $7766: $fa $72 $18
	rst  $38                                         ; $7769: $ff
	ei                                               ; $776a: $fb
	ld   hl, $1111                                   ; $776b: $21 $11 $11
	ld   de, $f5ff                                   ; $776e: $11 $ff $f5
	rla                                              ; $7771: $17
	adc  a                                           ; $7772: $8f
	rst  $38                                         ; $7773: $ff
	ei                                               ; $7774: $fb
	ld   h, a                                        ; $7775: $67
	call z, $eeb7                                    ; $7776: $cc $b7 $ee
	cp   $a1                                         ; $7779: $fe $a1
	ld   de, $1f11                                   ; $777b: $11 $11 $1f
	rst  $38                                         ; $777e: $ff
	di                                               ; $777f: $f3
	ld   de, $ff3f                                   ; $7780: $11 $3f $ff
	ei                                               ; $7783: $fb
	ld   a, b                                        ; $7784: $78
	ld   de, $ff3f                                   ; $7785: $11 $3f $ff
	push bc                                          ; $7788: $c5
	ld   de, $1311                                   ; $7789: $11 $11 $13
	rst  $38                                         ; $778c: $ff
	push af                                          ; $778d: $f5
	ld   de, $ff1f                                   ; $778e: $11 $1f $ff
	rst  $38                                         ; $7791: $ff
	ld   hl, $df11                                   ; $7792: $21 $11 $df
	rst  $38                                         ; $7795: $ff
	or   c                                           ; $7796: $b1
	ld   de, $1111                                   ; $7797: $11 $11 $11
	rst  $38                                         ; $779a: $ff
	ld   a, [$1f11]                                  ; $779b: $fa $11 $1f
	rst  $38                                         ; $779e: $ff
	ei                                               ; $779f: $fb
	inc  d                                           ; $77a0: $14
	ld   e, b                                        ; $77a1: $58
	adc  a                                           ; $77a2: $8f
	rst  $38                                         ; $77a3: $ff
	or   c                                           ; $77a4: $b1
	ld   de, $1f11                                   ; $77a5: $11 $11 $1f
	rst  $38                                         ; $77a8: $ff
	ld   a, [$1f11]                                  ; $77a9: $fa $11 $1f
	rst  $38                                         ; $77ac: $ff
	db   $fc                                         ; $77ad: $fc
	ld   hl, $3f27                                   ; $77ae: $21 $27 $3f
	rst  $38                                         ; $77b1: $ff
	or   c                                           ; $77b2: $b1
	ld   de, $1f11                                   ; $77b3: $11 $11 $1f
	rst  $38                                         ; $77b6: $ff
	and  c                                           ; $77b7: $a1
	ld   de, $ffef                                   ; $77b8: $11 $ef $ff
	ld   hl, sp+$51                                  ; $77bb: $f8 $51
	ld   de, $fbef                                   ; $77bd: $11 $ef $fb
	ld   de, $1b11                                   ; $77c0: $11 $11 $1b
	rst  $38                                         ; $77c3: $ff
	ld   a, [$1c11]                                  ; $77c4: $fa $11 $1c
	rst  $38                                         ; $77c7: $ff
	rst  $38                                         ; $77c8: $ff
	or   d                                           ; $77c9: $b2
	ld   de, $ff1f                                   ; $77ca: $11 $1f $ff
	ld   b, c                                        ; $77cd: $41
	ld   de, $ff17                                   ; $77ce: $11 $17 $ff
	db   $fd                                         ; $77d1: $fd
	ld   b, c                                        ; $77d2: $41
	ld   [de], a                                     ; $77d3: $12
	rst  $38                                         ; $77d4: $ff
	rst  $38                                         ; $77d5: $ff
	db   $f4                                         ; $77d6: $f4
	ld   de, $ff1e                                   ; $77d7: $11 $1e $ff
	pop  de                                          ; $77da: $d1
	ld   de, rAUD1LEN                                   ; $77db: $11 $11 $ff
	rst  $38                                         ; $77de: $ff
	ld   de, rAUD1HIGH                                   ; $77df: $11 $14 $ff
	rst  $38                                         ; $77e2: $ff
	db   $f4                                         ; $77e3: $f4
	ld   de, $ff1a                                   ; $77e4: $11 $1a $ff
	pop  af                                          ; $77e7: $f1
	ld   de, $ff1d                                   ; $77e8: $11 $1d $ff
	ld   a, [$1411]                                  ; $77eb: $fa $11 $14
	rst  $38                                         ; $77ee: $ff
	rst  $38                                         ; $77ef: $ff
	pop  af                                          ; $77f0: $f1
	ld   de, $ff1f                                   ; $77f1: $11 $1f $ff
	ld   sp, $1f11                                   ; $77f4: $31 $11 $1f
	rst  $38                                         ; $77f7: $ff
	pop  af                                          ; $77f8: $f1
	ld   de, $ff1f                                   ; $77f9: $11 $1f $ff
	rst  $38                                         ; $77fc: $ff
	add  c                                           ; $77fd: $81
	ld   de, $fa2f                                   ; $77fe: $11 $2f $fa
	ld   de, rAUD1LEN                                   ; $7801: $11 $11 $ff
	rst  $38                                         ; $7804: $ff
	pop  bc                                          ; $7805: $c1
	ld   de, $ff2f                                   ; $7806: $11 $2f $ff
	rst  $38                                         ; $7809: $ff
	ld   de, rAUD1LEN                                   ; $780a: $11 $11 $ff
	sub  c                                           ; $780d: $91
	ld   de, $ff1f                                   ; $780e: $11 $1f $ff
	ld   sp, hl                                      ; $7811: $f9
	ld   de, $ff1b                                   ; $7812: $11 $1b $ff
	rst  $38                                         ; $7815: $ff
	pop  af                                          ; $7816: $f1
	ld   de, $d13d                                   ; $7817: $11 $3d $d1
	ld   de, $ff1a                                   ; $781a: $11 $1a $ff
	rst  $38                                         ; $781d: $ff
	ld   h, c                                        ; $781e: $61
	ld   de, $ffff                                   ; $781f: $11 $ff $ff
	or   $11                                         ; $7822: $f6 $11
	dec  de                                          ; $7824: $1b
	sub  c                                           ; $7825: $91
	ld   de, $ff17                                   ; $7826: $11 $17 $ff
	rst  $38                                         ; $7829: $ff
	ld   d, c                                        ; $782a: $51
	ld   b, c                                        ; $782b: $41
	cp   a                                           ; $782c: $bf
	rst  $38                                         ; $782d: $ff
	ei                                               ; $782e: $fb
	ld   de, $7119                                   ; $782f: $11 $19 $71
	ld   de, $ff1a                                   ; $7832: $11 $1a $ff
	rst  $38                                         ; $7835: $ff
	ld   [hl], c                                     ; $7836: $71
	ld   d, d                                        ; $7837: $52
	rst  $28                                         ; $7838: $ef
	rst  $38                                         ; $7839: $ff
	di                                               ; $783a: $f3
	ld   de, $1139                                   ; $783b: $11 $39 $11
	ld   de, $ff1f                                   ; $783e: $11 $1f $ff
	rst  $38                                         ; $7841: $ff
	call nz, $bf21                                   ; $7842: $c4 $21 $bf
	rst  $38                                         ; $7845: $ff
	db   $fc                                         ; $7846: $fc
	ld   de, $1111                                   ; $7847: $11 $11 $11
	ld   de, $ffdf                                   ; $784a: $11 $df $ff
	or   $11                                         ; $784d: $f6 $11
	adc  a                                           ; $784f: $8f
	rst  $38                                         ; $7850: $ff
	rst  $38                                         ; $7851: $ff
	sub  c                                           ; $7852: $91
	ld   de, $1141                                   ; $7853: $11 $41 $11
	ld   de, $ffff                                   ; $7856: $11 $ff $ff
	rst  $30                                         ; $7859: $f7
	pop  hl                                          ; $785a: $e1
	ld   de, $ffdf                                   ; $785b: $11 $df $ff
	ld   de, $1111                                   ; $785e: $11 $11 $11
	ld   de, $ff4f                                   ; $7861: $11 $4f $ff
	rst  $38                                         ; $7864: $ff
	ld   d, e                                        ; $7865: $53
	sbc  b                                           ; $7866: $98
	rst  $38                                         ; $7867: $ff
	rst  $38                                         ; $7868: $ff
	and  d                                           ; $7869: $a2
	ld   de, $1111                                   ; $786a: $11 $11 $11
	ld   [de], a                                     ; $786d: $12
	rst  $38                                         ; $786e: $ff
	rst  $38                                         ; $786f: $ff
	ei                                               ; $7870: $fb
	and  a                                           ; $7871: $a7
	inc  h                                           ; $7872: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7873: $cf
	rst  $38                                         ; $7874: $ff

Jump_0cf_7875:
	ld   b, c                                        ; $7875: $41
	ld   de, $1111                                   ; $7876: $11 $11 $11
	rst  $38                                         ; $7879: $ff
	rst  $38                                         ; $787a: $ff
	ld   a, [$2888]                                  ; $787b: $fa $88 $28
	rst  $28                                         ; $787e: $ef
	rst  $38                                         ; $787f: $ff
	db   $d3                                         ; $7880: $d3
	ld   de, $1111                                   ; $7881: $11 $11 $11
	sbc  a                                           ; $7884: $9f
	rst  $38                                         ; $7885: $ff
	call $f2ff                                       ; $7886: $cd $ff $f2
	ld   de, $fdef                                   ; $7889: $11 $ef $fd
	ld   de, $1111                                   ; $788c: $11 $11 $11
	ccf                                              ; $788f: $3f
	rst  $38                                         ; $7890: $ff
	ei                                               ; $7891: $fb
	rst  $28                                         ; $7892: $ef
	pop  af                                          ; $7893: $f1
	ld   de, $ffff                                   ; $7894: $11 $ff $ff
	ld   de, $1111                                   ; $7897: $11 $11 $11
	ccf                                              ; $789a: $3f
	rst  $38                                         ; $789b: $ff
	rst  $38                                         ; $789c: $ff
	rst  $38                                         ; $789d: $ff
	or   c                                           ; $789e: $b1
	ld   de, $ffff                                   ; $789f: $11 $ff $ff
	ld   de, $1111                                   ; $78a2: $11 $11 $11
	ld   a, a                                        ; $78a5: $7f
	rst  $38                                         ; $78a6: $ff
	rst  $38                                         ; $78a7: $ff
	rst  $38                                         ; $78a8: $ff
	ld   b, c                                        ; $78a9: $41
	ld   de, $f9ff                                   ; $78aa: $11 $ff $f9
	ld   de, $1211                                   ; $78ad: $11 $11 $12
	xor  a                                           ; $78b0: $af
	rst  $38                                         ; $78b1: $ff
	rst  $38                                         ; $78b2: $ff
	push af                                          ; $78b3: $f5
	ld   de, $ff1e                                   ; $78b4: $11 $1e $ff
	pop  af                                          ; $78b7: $f1
	ld   de, $6f11                                   ; $78b8: $11 $11 $6f
	rst  $38                                         ; $78bb: $ff
	rst  $38                                         ; $78bc: $ff
	rst  $38                                         ; $78bd: $ff
	and  c                                           ; $78be: $a1
	ld   de, $ff9f                                   ; $78bf: $11 $9f $ff
	ld   de, $1111                                   ; $78c2: $11 $11 $11
	xor  a                                           ; $78c5: $af
	rst  $38                                         ; $78c6: $ff
	rst  $38                                         ; $78c7: $ff
	ldh  a, [c]                                      ; $78c8: $f2
	ld   de, $ff1a                                   ; $78c9: $11 $1a $ff
	and  c                                           ; $78cc: $a1
	ld   de, $2811                                   ; $78cd: $11 $11 $28
	rst  $38                                         ; $78d0: $ff
	rst  $38                                         ; $78d1: $ff
	ld   a, [$1511]                                  ; $78d2: $fa $11 $15
	rst  JumpTable                                         ; $78d5: $df
	rst  $30                                         ; $78d6: $f7
	ld   de, $f611                                   ; $78d7: $11 $11 $f6
	set  7, a                                        ; $78da: $cb $ff
	rst  $38                                         ; $78dc: $ff
	ld   de, $cf11                                   ; $78dd: $11 $11 $cf
	db   $fc                                         ; $78e0: $fc
	ld   de, $ac11                                   ; $78e1: $11 $11 $ac
	xor  a                                           ; $78e4: $af
	rst  $38                                         ; $78e5: $ff
	rst  $38                                         ; $78e6: $ff
	ld   sp, $df11                                   ; $78e7: $31 $11 $df
	db   $fd                                         ; $78ea: $fd
	ld   de, $7c11                                   ; $78eb: $11 $11 $7c
	db   $ed                                         ; $78ee: $ed
	rst  $38                                         ; $78ef: $ff
	rst  $38                                         ; $78f0: $ff
	ld   h, c                                        ; $78f1: $61
	ld   [de], a                                     ; $78f2: $12
	xor  a                                           ; $78f3: $af
	ld   hl, sp+$11                                  ; $78f4: $f8 $11
	ld   de, $7f46                                   ; $78f6: $11 $46 $7f
	rst  $38                                         ; $78f9: $ff
	rst  $38                                         ; $78fa: $ff
	ld   [hl], c                                     ; $78fb: $71
	ld   de, $ff9f                                   ; $78fc: $11 $9f $ff
	ld   de, $6c11                                   ; $78ff: $11 $11 $6c
	rst  JumpTable                                         ; $7902: $df
	rst  $38                                         ; $7903: $ff
	ld   a, [$1511]                                  ; $7904: $fa $11 $15
	sbc  a                                           ; $7907: $9f
	rst  $10                                         ; $7908: $d7
	ld   de, $be11                                   ; $7909: $11 $11 $be
	cp   [hl]                                        ; $790c: $be
	rst  $38                                         ; $790d: $ff
	rst  $38                                         ; $790e: $ff
	and  c                                           ; $790f: $a1
	ld   de, $f74b                                   ; $7910: $11 $4b $f7
	ld   hl, $3b11                                   ; $7913: $21 $11 $3b
	rst  $38                                         ; $7916: $ff
	rst  $38                                         ; $7917: $ff
	ei                                               ; $7918: $fb
	sub  c                                           ; $7919: $91
	ld   de, $df16                                   ; $791a: $11 $16 $df
	add  c                                           ; $791d: $81
	ld   de, $ff5f                                   ; $791e: $11 $5f $ff
	rst  $38                                         ; $7921: $ff
	xor  $61                                         ; $7922: $ee $61
	inc  d                                           ; $7924: $14
	sub  a                                           ; $7925: $97
	ld   h, c                                        ; $7926: $61
	inc  de                                          ; $7927: $13
	inc  [hl]                                        ; $7928: $34
	dec  d                                           ; $7929: $15
	rst  JumpTable                                         ; $792a: $df
	rst  $38                                         ; $792b: $ff
	db   $fd                                         ; $792c: $fd
	ld   h, c                                        ; $792d: $61
	ld   de, $42aa                                   ; $792e: $11 $aa $42
	ld   [de], a                                     ; $7931: $12
	halt                                             ; $7932: $76
	ld   h, a                                        ; $7933: $67
	rst  JumpTable                                         ; $7934: $df
	rst  $38                                         ; $7935: $ff
	ld   a, [$1411]                                  ; $7936: $fa $11 $14
	xor  h                                           ; $7939: $ac
	ld   h, c                                        ; $793a: $61
	ld   de, $cf75                                   ; $793b: $11 $75 $cf
	rst  $38                                         ; $793e: $ff
	ld   sp, hl                                      ; $793f: $f9
	sub  [hl]                                        ; $7940: $96
	halt                                             ; $7941: $76
	sub  a                                           ; $7942: $97
	ld   b, c                                        ; $7943: $41
	ld   de, $fb4c                                   ; $7944: $11 $4c $fb
	reti                                             ; $7947: $d9


	set  5, a                                        ; $7948: $cb $ef
	db   $ec                                         ; $794a: $ec
	ld   [hl], $69                                   ; $794b: $36 $69
	ld   [hl], c                                     ; $794d: $71
	ld   de, $9679                                   ; $794e: $11 $79 $96
	ld   a, b                                        ; $7951: $78
	rst  $28                                         ; $7952: $ef
	db   $ed                                         ; $7953: $ed
	halt                                             ; $7954: $76
	ld   [hl-], a                                    ; $7955: $32
	ld   c, b                                        ; $7956: $48
	and  a                                           ; $7957: $a7
	inc  [hl]                                        ; $7958: $34
	ld   c, b                                        ; $7959: $48
	sub  [hl]                                        ; $795a: $96
	sub  a                                           ; $795b: $97
	cp   $ed                                         ; $795c: $fe $ed
	ld   a, d                                        ; $795e: $7a
	ld   d, l                                        ; $795f: $55
	ld   b, a                                        ; $7960: $47
	ld   [hl], l                                     ; $7961: $75
	ld   [hl], a                                     ; $7962: $77
	adc  b                                           ; $7963: $88
	add  e                                           ; $7964: $83
	ld   e, c                                        ; $7965: $59
	db   $ed                                         ; $7966: $ed
	and  a                                           ; $7967: $a7
	adc  e                                           ; $7968: $8b
	or   a                                           ; $7969: $b7
	ld   b, l                                        ; $796a: $45
	ld   d, h                                        ; $796b: $54
	dec  h                                           ; $796c: $25
	adc  [hl]                                        ; $796d: $8e
	ret                                              ; $796e: $c9


	and  e                                           ; $796f: $a3
	ld   [hl], a                                     ; $7970: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7971: $cf
	db   $ec                                         ; $7972: $ec
	ld   h, a                                        ; $7973: $67
	dec  [hl]                                        ; $7974: $35
	inc  hl                                          ; $7975: $23
	ld   e, c                                        ; $7976: $59
	db   $ed                                         ; $7977: $ed
	and  e                                           ; $7978: $a3
	ld   e, c                                        ; $7979: $59
	sbc  h                                           ; $797a: $9c
	sbc  e                                           ; $797b: $9b
	cp   d                                           ; $797c: $ba

jr_0cf_797d:
	xor  b                                           ; $797d: $a8
	add  h                                           ; $797e: $84
	ld   de, $fc6c                                   ; $797f: $11 $6c $fc
	ld   h, h                                        ; $7982: $64
	inc  d                                           ; $7983: $14
	sbc  l                                           ; $7984: $9d
	ei                                               ; $7985: $fb
	or   [hl]                                        ; $7986: $b6
	add  a                                           ; $7987: $87
	ld   b, h                                        ; $7988: $44
	ld   l, d                                        ; $7989: $6a
	ld   [hl], a                                     ; $798a: $77
	ld   l, c                                        ; $798b: $69
	cp   b                                           ; $798c: $b8
	add  h                                           ; $798d: $84
	ld   a, c                                        ; $798e: $79
	call z, $78ba                                    ; $798f: $cc $ba $78
	halt                                             ; $7992: $76
	ld   [hl], l                                     ; $7993: $75
	dec  [hl]                                        ; $7994: $35
	sbc  h                                           ; $7995: $9c
	ret                                              ; $7996: $c9


	halt                                             ; $7997: $76
	sub  a                                           ; $7998: $97
	adc  c                                           ; $7999: $89
	call z, Call_0cf_4398                            ; $799a: $cc $98 $43
	jr   c, jr_0cf_7a17                              ; $799d: $38 $78

	adc  b                                           ; $799f: $88
	ret  z                                           ; $79a0: $c8

	ld   [hl], l                                     ; $79a1: $75
	ld   a, l                                        ; $79a2: $7d
	sbc  c                                           ; $79a3: $99
	ld   d, [hl]                                     ; $79a4: $56
	adc  d                                           ; $79a5: $8a
	or   a                                           ; $79a6: $b7
	ld   b, h                                        ; $79a7: $44
	adc  d                                           ; $79a8: $8a
	or   a                                           ; $79a9: $b7
	ld   a, c                                        ; $79aa: $79
	add  a                                           ; $79ab: $87
	ld   l, c                                        ; $79ac: $69
	xor  h                                           ; $79ad: $ac
	ld   [hl], h                                     ; $79ae: $74
	jr   c, jr_0cf_797d                              ; $79af: $38 $cc

	sub  h                                           ; $79b1: $94
	ld   d, a                                        ; $79b2: $57
	call z, Call_0cf_4796                            ; $79b3: $cc $96 $47
	ld   a, d                                        ; $79b6: $7a
	xor  d                                           ; $79b7: $aa
	add  [hl]                                        ; $79b8: $86
	ld   d, h                                        ; $79b9: $54
	sbc  d                                           ; $79ba: $9a
	ret  z                                           ; $79bb: $c8

	ld   h, e                                        ; $79bc: $63
	ld   e, d                                        ; $79bd: $5a
	cp   l                                           ; $79be: $bd
	sub  [hl]                                        ; $79bf: $96
	ld   d, [hl]                                     ; $79c0: $56
	sbc  d                                           ; $79c1: $9a
	jp   z, Jump_0cf_6786                            ; $79c2: $ca $86 $67

	adc  c                                           ; $79c5: $89
	xor  b                                           ; $79c6: $a8
	adc  b                                           ; $79c7: $88
	xor  c                                           ; $79c8: $a9
	ld   d, h                                        ; $79c9: $54
	ld   e, c                                        ; $79ca: $59
	xor  d                                           ; $79cb: $aa
	sbc  b                                           ; $79cc: $98
	sub  a                                           ; $79cd: $97
	ld   h, [hl]                                     ; $79ce: $66
	sbc  e                                           ; $79cf: $9b
	xor  c                                           ; $79d0: $a9
	ld   h, [hl]                                     ; $79d1: $66
	adc  c                                           ; $79d2: $89
	sbc  c                                           ; $79d3: $99
	sbc  b                                           ; $79d4: $98
	ld   [hl], a                                     ; $79d5: $77
	ld   a, b                                        ; $79d6: $78
	sbc  b                                           ; $79d7: $98
	adc  b                                           ; $79d8: $88
	add  [hl]                                        ; $79d9: $86
	ld   a, c                                        ; $79da: $79
	xor  c                                           ; $79db: $a9
	halt                                             ; $79dc: $76
	ld   a, d                                        ; $79dd: $7a
	and  a                                           ; $79de: $a7
	ld   h, a                                        ; $79df: $67
	xor  d                                           ; $79e0: $aa
	add  a                                           ; $79e1: $87
	ld   d, [hl]                                     ; $79e2: $56
	adc  b                                           ; $79e3: $88
	sbc  c                                           ; $79e4: $99
	sbc  b                                           ; $79e5: $98
	add  a                                           ; $79e6: $87
	ld   h, [hl]                                     ; $79e7: $66
	ld   a, c                                        ; $79e8: $79
	xor  d                                           ; $79e9: $aa
	sub  a                                           ; $79ea: $97
	ld   a, b                                        ; $79eb: $78
	adc  b                                           ; $79ec: $88
	sbc  c                                           ; $79ed: $99
	sbc  b                                           ; $79ee: $98
	adc  b                                           ; $79ef: $88
	sbc  c                                           ; $79f0: $99
	sbc  c                                           ; $79f1: $99
	add  a                                           ; $79f2: $87
	adc  c                                           ; $79f3: $89
	adc  c                                           ; $79f4: $89
	sub  a                                           ; $79f5: $97
	ld   h, [hl]                                     ; $79f6: $66
	adc  c                                           ; $79f7: $89
	xor  c                                           ; $79f8: $a9
	halt                                             ; $79f9: $76
	ld   a, d                                        ; $79fa: $7a
	xor  d                                           ; $79fb: $aa
	ld   h, l                                        ; $79fc: $65
	ld   l, c                                        ; $79fd: $69
	xor  c                                           ; $79fe: $a9
	adc  b                                           ; $79ff: $88
	add  [hl]                                        ; $7a00: $86
	ld   [hl], a                                     ; $7a01: $77
	sbc  d                                           ; $7a02: $9a
	xor  b                                           ; $7a03: $a8
	ld   [hl], a                                     ; $7a04: $77
	ld   a, b                                        ; $7a05: $78
	sbc  b                                           ; $7a06: $98
	sbc  b                                           ; $7a07: $98
	sbc  b                                           ; $7a08: $98
	add  a                                           ; $7a09: $87
	adc  c                                           ; $7a0a: $89
	sbc  b                                           ; $7a0b: $98
	adc  b                                           ; $7a0c: $88
	xor  c                                           ; $7a0d: $a9
	add  a                                           ; $7a0e: $87
	ld   a, b                                        ; $7a0f: $78
	ld   a, b                                        ; $7a10: $78
	sbc  c                                           ; $7a11: $99
	add  a                                           ; $7a12: $87
	adc  b                                           ; $7a13: $88
	sbc  c                                           ; $7a14: $99
	add  a                                           ; $7a15: $87
	ld   a, b                                        ; $7a16: $78

jr_0cf_7a17:
	sbc  b                                           ; $7a17: $98
	sbc  b                                           ; $7a18: $98
	add  a                                           ; $7a19: $87
	ld   [hl], a                                     ; $7a1a: $77
	sbc  c                                           ; $7a1b: $99
	sbc  b                                           ; $7a1c: $98
	adc  b                                           ; $7a1d: $88
	sbc  b                                           ; $7a1e: $98
	add  a                                           ; $7a1f: $87
	adc  c                                           ; $7a20: $89
	sbc  c                                           ; $7a21: $99
	sbc  b                                           ; $7a22: $98
	adc  b                                           ; $7a23: $88
	ld   [hl], a                                     ; $7a24: $77
	adc  c                                           ; $7a25: $89
	sbc  b                                           ; $7a26: $98
	halt                                             ; $7a27: $76
	ld   [hl], a                                     ; $7a28: $77
	adc  c                                           ; $7a29: $89
	add  a                                           ; $7a2a: $87
	ld   [hl], a                                     ; $7a2b: $77
	sbc  b                                           ; $7a2c: $98
	add  a                                           ; $7a2d: $87
	ld   a, c                                        ; $7a2e: $79
	sbc  b                                           ; $7a2f: $98
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	sbc  b                                           ; $7a32: $98
	adc  b                                           ; $7a33: $88
	sbc  b                                           ; $7a34: $98
	ld   [hl], a                                     ; $7a35: $77
	ld   a, c                                        ; $7a36: $79
	sbc  b                                           ; $7a37: $98
	add  a                                           ; $7a38: $87
	adc  c                                           ; $7a39: $89
	sbc  c                                           ; $7a3a: $99
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	ld   a, b                                        ; $7a3d: $78
	adc  b                                           ; $7a3e: $88
	add  a                                           ; $7a3f: $87
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	add  a                                           ; $7a42: $87
	adc  c                                           ; $7a43: $89
	sbc  b                                           ; $7a44: $98
	add  a                                           ; $7a45: $87
	ld   a, b                                        ; $7a46: $78
	adc  c                                           ; $7a47: $89
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	add  a                                           ; $7a4a: $87
	adc  b                                           ; $7a4b: $88
	adc  c                                           ; $7a4c: $89
	add  a                                           ; $7a4d: $87
	ld   a, b                                        ; $7a4e: $78
	sbc  b                                           ; $7a4f: $98
	ld   [hl], a                                     ; $7a50: $77
	ld   a, b                                        ; $7a51: $78
	sbc  b                                           ; $7a52: $98
	add  a                                           ; $7a53: $87
	adc  b                                           ; $7a54: $88
	adc  b                                           ; $7a55: $88
	adc  b                                           ; $7a56: $88
	adc  b                                           ; $7a57: $88
	adc  b                                           ; $7a58: $88
	ld   a, b                                        ; $7a59: $78
	adc  b                                           ; $7a5a: $88
	add  a                                           ; $7a5b: $87
	ld   a, b                                        ; $7a5c: $78
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
	ld   [hl], a                                     ; $7a6e: $77
	adc  b                                           ; $7a6f: $88
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	adc  b                                           ; $7a74: $88
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	adc  b                                           ; $7a77: $88
	add  a                                           ; $7a78: $87
	adc  b                                           ; $7a79: $88
	adc  b                                           ; $7a7a: $88
	adc  b                                           ; $7a7b: $88
	add  a                                           ; $7a7c: $87
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
	ld   de, $1111                                   ; $7aa3: $11 $11 $11
	ld   de, $1111                                   ; $7aa6: $11 $11 $11
	ld   de, $1111                                   ; $7aa9: $11 $11 $11
	ld   de, $1111                                   ; $7aac: $11 $11 $11
	ld   de, $1111                                   ; $7aaf: $11 $11 $11
	nop                                              ; $7ab2: $00
	ld   c, b                                        ; $7ab3: $48
	ld   de, $1111                                   ; $7ab4: $11 $11 $11
	ld   de, $1111                                   ; $7ab7: $11 $11 $11
	ld   de, $1111                                   ; $7aba: $11 $11 $11
	ld   de, $5413                                   ; $7abd: $11 $13 $54
	ld   d, h                                        ; $7ac0: $54
	ld   d, h                                        ; $7ac1: $54
	ld   b, c                                        ; $7ac2: $41
	rra                                              ; $7ac3: $1f
	rst  $38                                         ; $7ac4: $ff
	pop  af                                          ; $7ac5: $f1
	ld   de, $1411                                   ; $7ac6: $11 $11 $14
	and  c                                           ; $7ac9: $a1
	ld   de, $d11c                                   ; $7aca: $11 $1c $d1
	db   $ec                                         ; $7acd: $ec
	pop  de                                          ; $7ace: $d1
	pop  hl                                          ; $7acf: $e1
	ld   de, $1111                                   ; $7ad0: $11 $11 $11
	ld   de, $1111                                   ; $7ad3: $11 $11 $11
	ld   de, $1111                                   ; $7ad6: $11 $11 $11
	ld   de, $1111                                   ; $7ad9: $11 $11 $11
	ld   de, $5411                                   ; $7adc: $11 $11 $54
	ld   b, h                                        ; $7adf: $44
	sub  h                                           ; $7ae0: $94
	ld   de, $5454                                   ; $7ae1: $11 $54 $54
	ld   h, a                                        ; $7ae4: $67
	ld   [hl], d                                     ; $7ae5: $72
	ld   de, $1111                                   ; $7ae6: $11 $11 $11
	ld   de, $1112                                   ; $7ae9: $11 $12 $11
	ld   [de], a                                     ; $7aec: $12
	ld   de, $1111                                   ; $7aed: $11 $11 $11
	ld   h, [hl]                                     ; $7af0: $66
	halt                                             ; $7af1: $76
	ld   h, h                                        ; $7af2: $64
	ld   de, $8888                                   ; $7af3: $11 $88 $88
	adc  b                                           ; $7af6: $88
	ld   a, b                                        ; $7af7: $78
	adc  b                                           ; $7af8: $88
	adc  b                                           ; $7af9: $88
	adc  b                                           ; $7afa: $88
	adc  c                                           ; $7afb: $89
	adc  c                                           ; $7afc: $89
	sbc  c                                           ; $7afd: $99
	xor  c                                           ; $7afe: $a9
	sbc  d                                           ; $7aff: $9a
	xor  d                                           ; $7b00: $aa
	xor  d                                           ; $7b01: $aa
	xor  d                                           ; $7b02: $aa
	xor  d                                           ; $7b03: $aa
	sbc  d                                           ; $7b04: $9a
	sbc  c                                           ; $7b05: $99
	adc  b                                           ; $7b06: $88
	add  a                                           ; $7b07: $87
	halt                                             ; $7b08: $76
	ld   h, l                                        ; $7b09: $65
	ld   b, h                                        ; $7b0a: $44
	ld   b, e                                        ; $7b0b: $43
	ld   [hl+], a                                    ; $7b0c: $22
	ld   de, $2222                                   ; $7b0d: $11 $22 $22
	inc  sp                                          ; $7b10: $33
	ld   b, l                                        ; $7b11: $45
	ld   h, a                                        ; $7b12: $67
	sbc  d                                           ; $7b13: $9a
	cp   h                                           ; $7b14: $bc
	sbc  $ff                                         ; $7b15: $de $ff
	rst  $38                                         ; $7b17: $ff
	rst  $38                                         ; $7b18: $ff
	rst  $38                                         ; $7b19: $ff
	rst  $38                                         ; $7b1a: $ff
	db   $fd                                         ; $7b1b: $fd
	db   $dd                                         ; $7b1c: $dd
	jp   z, $8798                                    ; $7b1d: $ca $98 $87

	ld   h, l                                        ; $7b20: $65
	ld   d, h                                        ; $7b21: $54
	inc  sp                                          ; $7b22: $33
	ld   hl, $1111                                   ; $7b23: $21 $11 $11
	ld   de, $1111                                   ; $7b26: $11 $11 $11
	ld   de, $4612                                   ; $7b29: $11 $12 $46
	sbc  d                                           ; $7b2c: $9a
	adc  $ff                                         ; $7b2d: $ce $ff
	rst  $38                                         ; $7b2f: $ff
	rst  $38                                         ; $7b30: $ff
	rst  $38                                         ; $7b31: $ff
	rst  $38                                         ; $7b32: $ff
	rst  $38                                         ; $7b33: $ff
	rst  $38                                         ; $7b34: $ff
	db   $fd                                         ; $7b35: $fd
	res  7, b                                        ; $7b36: $cb $b8
	add  [hl]                                        ; $7b38: $86
	ld   d, l                                        ; $7b39: $55
	ld   b, e                                        ; $7b3a: $43
	ld   hl, $1111                                   ; $7b3b: $21 $11 $11
	ld   de, $1111                                   ; $7b3e: $11 $11 $11
	ld   de, $1111                                   ; $7b41: $11 $11 $11
	inc  h                                           ; $7b44: $24
	adc  h                                           ; $7b45: $8c
	rst  JumpTable                                         ; $7b46: $df
	rst  $38                                         ; $7b47: $ff
	rst  $38                                         ; $7b48: $ff
	rst  $38                                         ; $7b49: $ff
	rst  $38                                         ; $7b4a: $ff
	rst  $38                                         ; $7b4b: $ff
	rst  $38                                         ; $7b4c: $ff
	rst  $38                                         ; $7b4d: $ff
	cp   $dc                                         ; $7b4e: $fe $dc
	cp   c                                           ; $7b50: $b9
	halt                                             ; $7b51: $76
	ld   b, h                                        ; $7b52: $44
	ld   [hl-], a                                    ; $7b53: $32
	ld   de, $1111                                   ; $7b54: $11 $11 $11
	ld   de, $1111                                   ; $7b57: $11 $11 $11
	ld   de, $1111                                   ; $7b5a: $11 $11 $11
	dec  h                                           ; $7b5d: $25
	sbc  l                                           ; $7b5e: $9d
	rst  $38                                         ; $7b5f: $ff
	rst  $38                                         ; $7b60: $ff
	rst  $38                                         ; $7b61: $ff
	rst  $38                                         ; $7b62: $ff
	rst  $38                                         ; $7b63: $ff
	rst  $38                                         ; $7b64: $ff
	rst  $38                                         ; $7b65: $ff
	rst  $38                                         ; $7b66: $ff
	cp   $cb                                         ; $7b67: $fe $cb
	sub  a                                           ; $7b69: $97
	ld   h, h                                        ; $7b6a: $64
	ld   [hl+], a                                    ; $7b6b: $22
	ld   de, $1111                                   ; $7b6c: $11 $11 $11
	ld   de, $1111                                   ; $7b6f: $11 $11 $11
	ld   de, $1111                                   ; $7b72: $11 $11 $11
	inc  de                                          ; $7b75: $13
	sbc  l                                           ; $7b76: $9d
	rst  $38                                         ; $7b77: $ff
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	rst  $38                                         ; $7b7a: $ff
	rst  $38                                         ; $7b7b: $ff
	rst  $38                                         ; $7b7c: $ff
	rst  $38                                         ; $7b7d: $ff
	rst  $38                                         ; $7b7e: $ff
	cp   $ca                                         ; $7b7f: $fe $ca
	add  [hl]                                        ; $7b81: $86
	ld   b, d                                        ; $7b82: $42
	ld   de, $1111                                   ; $7b83: $11 $11 $11
	ld   de, $1111                                   ; $7b86: $11 $11 $11
	ld   de, $1111                                   ; $7b89: $11 $11 $11
	ld   de, $df4b                                   ; $7b8c: $11 $4b $df
	rst  $38                                         ; $7b8f: $ff
	rst  $38                                         ; $7b90: $ff
	rst  $38                                         ; $7b91: $ff
	rst  $38                                         ; $7b92: $ff
	rst  $38                                         ; $7b93: $ff
	rst  $38                                         ; $7b94: $ff
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	call c, Call_0cf_42a6                            ; $7b97: $dc $a6 $42
	ld   de, $1111                                   ; $7b9a: $11 $11 $11
	ld   de, $1111                                   ; $7b9d: $11 $11 $11
	ld   de, $1111                                   ; $7ba0: $11 $11 $11
	ld   de, $ef7c                                   ; $7ba3: $11 $7c $ef
	rst  $38                                         ; $7ba6: $ff
	rst  $38                                         ; $7ba7: $ff
	rst  $38                                         ; $7ba8: $ff
	rst  $38                                         ; $7ba9: $ff
	rst  $38                                         ; $7baa: $ff
	rst  $38                                         ; $7bab: $ff
	rst  $38                                         ; $7bac: $ff
	rst  $38                                         ; $7bad: $ff
	db   $db                                         ; $7bae: $db
	ld   [hl], h                                     ; $7baf: $74
	ld   hl, $1111                                   ; $7bb0: $21 $11 $11
	ld   de, $1111                                   ; $7bb3: $11 $11 $11
	ld   de, $1111                                   ; $7bb6: $11 $11 $11
	ld   de, $cf19                                   ; $7bb9: $11 $19 $cf
	rst  $38                                         ; $7bbc: $ff
	rst  $38                                         ; $7bbd: $ff
	rst  $38                                         ; $7bbe: $ff
	rst  $38                                         ; $7bbf: $ff
	rst  $38                                         ; $7bc0: $ff
	rst  $38                                         ; $7bc1: $ff
	rst  $38                                         ; $7bc2: $ff
	rst  $38                                         ; $7bc3: $ff
	db   $eb                                         ; $7bc4: $eb
	sub  l                                           ; $7bc5: $95
	ld   hl, $1111                                   ; $7bc6: $21 $11 $11
	ld   de, $1111                                   ; $7bc9: $11 $11 $11
	ld   de, $1111                                   ; $7bcc: $11 $11 $11
	ld   de, $bf29                                   ; $7bcf: $11 $29 $bf
	rst  $38                                         ; $7bd2: $ff
	rst  $38                                         ; $7bd3: $ff
	rst  $38                                         ; $7bd4: $ff
	rst  $38                                         ; $7bd5: $ff
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	rst  $38                                         ; $7bd8: $ff
	rst  $38                                         ; $7bd9: $ff
	db   $ec                                         ; $7bda: $ec
	sub  h                                           ; $7bdb: $94
	ld   de, $1111                                   ; $7bdc: $11 $11 $11
	ld   de, $1111                                   ; $7bdf: $11 $11 $11
	ld   de, $1111                                   ; $7be2: $11 $11 $11
	ld   [de], a                                     ; $7be5: $12
	sbc  e                                           ; $7be6: $9b
	rst  $38                                         ; $7be7: $ff
	rst  $38                                         ; $7be8: $ff
	rst  $38                                         ; $7be9: $ff
	rst  $38                                         ; $7bea: $ff
	rst  $38                                         ; $7beb: $ff
	rst  $38                                         ; $7bec: $ff
	rst  $38                                         ; $7bed: $ff
	rst  $38                                         ; $7bee: $ff
	rst  $38                                         ; $7bef: $ff
	ret  z                                           ; $7bf0: $c8

	ld   sp, $1111                                   ; $7bf1: $31 $11 $11
	ld   de, $1111                                   ; $7bf4: $11 $11 $11
	ld   de, $1111                                   ; $7bf7: $11 $11 $11
	ld   de, $ff7b                                   ; $7bfa: $11 $7b $ff
	rst  $38                                         ; $7bfd: $ff
	rst  $38                                         ; $7bfe: $ff
	rst  $38                                         ; $7bff: $ff
	rst  $38                                         ; $7c00: $ff
	rst  $38                                         ; $7c01: $ff
	rst  $38                                         ; $7c02: $ff
	rst  $38                                         ; $7c03: $ff
	rst  $38                                         ; $7c04: $ff
	ret  z                                           ; $7c05: $c8

	ld   sp, $1111                                   ; $7c06: $31 $11 $11
	ld   de, $1111                                   ; $7c09: $11 $11 $11
	ld   de, $1111                                   ; $7c0c: $11 $11 $11
	inc  d                                           ; $7c0f: $14
	cp   a                                           ; $7c10: $bf
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	rst  $38                                         ; $7c13: $ff
	rst  $38                                         ; $7c14: $ff
	rst  $38                                         ; $7c15: $ff
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	sub  [hl]                                        ; $7c19: $96
	ld   de, $1111                                   ; $7c1a: $11 $11 $11
	ld   de, $1111                                   ; $7c1d: $11 $11 $11
	ld   de, $ee48                                   ; $7c20: $11 $48 $ee
	rst  $38                                         ; $7c23: $ff
	rst  $38                                         ; $7c24: $ff
	rst  $38                                         ; $7c25: $ff
	rst  $38                                         ; $7c26: $ff
	rst  $38                                         ; $7c27: $ff
	rst  $38                                         ; $7c28: $ff
	rst  $38                                         ; $7c29: $ff
	rst  $38                                         ; $7c2a: $ff
	call c, $3176                                    ; $7c2b: $dc $76 $31
	ld   de, $1111                                   ; $7c2e: $11 $11 $11
	ld   de, $1111                                   ; $7c31: $11 $11 $11
	sbc  a                                           ; $7c34: $9f
	rst  $38                                         ; $7c35: $ff
	rst  $38                                         ; $7c36: $ff
	rst  $38                                         ; $7c37: $ff
	rst  $38                                         ; $7c38: $ff
	rst  $38                                         ; $7c39: $ff
	rst  $38                                         ; $7c3a: $ff
	rst  $38                                         ; $7c3b: $ff
	sbc  $ff                                         ; $7c3c: $de $ff
	rst  $38                                         ; $7c3e: $ff
	ld   hl, sp+$51                                  ; $7c3f: $f8 $51
	ld   de, $1111                                   ; $7c41: $11 $11 $11
	ld   de, $1711                                   ; $7c44: $11 $11 $17
	rst  $38                                         ; $7c47: $ff
	rst  $38                                         ; $7c48: $ff
	rst  $38                                         ; $7c49: $ff
	rst  $38                                         ; $7c4a: $ff
	rst  $38                                         ; $7c4b: $ff
	rst  $38                                         ; $7c4c: $ff
	rst  $38                                         ; $7c4d: $ff
	ld   a, [$ff8d]                                  ; $7c4e: $fa $8d $ff
	rst  $38                                         ; $7c51: $ff
	and  $21                                         ; $7c52: $e6 $21
	ld   de, $1111                                   ; $7c54: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7c57: $11 $11 $ff
	rst  $38                                         ; $7c5a: $ff
	rst  $38                                         ; $7c5b: $ff
	db   $fd                                         ; $7c5c: $fd
	rst  $38                                         ; $7c5d: $ff
	rst  $38                                         ; $7c5e: $ff
	rst  $38                                         ; $7c5f: $ff
	ei                                               ; $7c60: $fb
	ld   b, a                                        ; $7c61: $47
	rst  $38                                         ; $7c62: $ff
	rst  $38                                         ; $7c63: $ff
	db   $fc                                         ; $7c64: $fc
	ld   hl, $1111                                   ; $7c65: $21 $11 $11
	ld   de, $1111                                   ; $7c68: $11 $11 $11
	cpl                                              ; $7c6b: $2f
	rst  $38                                         ; $7c6c: $ff
	rst  $38                                         ; $7c6d: $ff
	ei                                               ; $7c6e: $fb
	cp   a                                           ; $7c6f: $bf
	rst  $38                                         ; $7c70: $ff
	rst  $38                                         ; $7c71: $ff
	rst  $30                                         ; $7c72: $f7
	ld   [hl], c                                     ; $7c73: $71
	rst  JumpTable                                         ; $7c74: $df
	rst  $38                                         ; $7c75: $ff
	rst  $38                                         ; $7c76: $ff
	ld   sp, $1111                                   ; $7c77: $31 $11 $11
	ld   de, $1111                                   ; $7c7a: $11 $11 $11
	rra                                              ; $7c7d: $1f
	rst  $38                                         ; $7c7e: $ff
	rst  $38                                         ; $7c7f: $ff
	call z, $ff3f                                    ; $7c80: $cc $3f $ff
	rst  $38                                         ; $7c83: $ff
	push af                                          ; $7c84: $f5
	ld   b, c                                        ; $7c85: $41
	cpl                                              ; $7c86: $2f
	rst  $38                                         ; $7c87: $ff
	rst  $38                                         ; $7c88: $ff
	ld   [hl], c                                     ; $7c89: $71
	ld   de, $1111                                   ; $7c8a: $11 $11 $11
	ld   de, $1f11                                   ; $7c8d: $11 $11 $1f
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	sbc  c                                           ; $7c92: $99
	dec  d                                           ; $7c93: $15
	rst  $38                                         ; $7c94: $ff
	rst  $38                                         ; $7c95: $ff
	ld   a, [$1f23]                                  ; $7c96: $fa $23 $1f
	rst  $38                                         ; $7c99: $ff
	rst  $38                                         ; $7c9a: $ff
	add  c                                           ; $7c9b: $81
	ld   de, $1111                                   ; $7c9c: $11 $11 $11
	ld   de, $1f11                                   ; $7c9f: $11 $11 $1f
	rst  $38                                         ; $7ca2: $ff
	rst  $38                                         ; $7ca3: $ff
	ld   h, h                                        ; $7ca4: $64
	ld   de, $ffff                                   ; $7ca5: $11 $ff $ff
	ld   a, [$1f13]                                  ; $7ca8: $fa $13 $1f
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	ld   [hl], c                                     ; $7cad: $71
	ld   de, $1111                                   ; $7cae: $11 $11 $11
	ld   de, $1f11                                   ; $7cb1: $11 $11 $1f
	rst  $38                                         ; $7cb4: $ff
	rst  $38                                         ; $7cb5: $ff
	ld   de, rAUD1LEN                                   ; $7cb6: $11 $11 $ff
	rst  $38                                         ; $7cb9: $ff
	db   $f4                                         ; $7cba: $f4
	ld   de, $ff2f                                   ; $7cbb: $11 $2f $ff
	rst  $38                                         ; $7cbe: $ff
	ld   sp, $1111                                   ; $7cbf: $31 $11 $11
	ld   de, $1111                                   ; $7cc2: $11 $11 $11
	cpl                                              ; $7cc5: $2f
	rst  $38                                         ; $7cc6: $ff
	rst  $38                                         ; $7cc7: $ff
	ld   de, rAUD1ENV                                   ; $7cc8: $11 $12 $ff
	rst  $38                                         ; $7ccb: $ff
	pop  af                                          ; $7ccc: $f1
	ld   de, $ffcf                                   ; $7ccd: $11 $cf $ff
	ld   a, [$1111]                                  ; $7cd0: $fa $11 $11
	ld   de, $1111                                   ; $7cd3: $11 $11 $11
	ld   de, $ffff                                   ; $7cd6: $11 $ff $ff
	push af                                          ; $7cd9: $f5
	ld   de, $ff1b                                   ; $7cda: $11 $1b $ff
	rst  $38                                         ; $7cdd: $ff
	ld   h, [hl]                                     ; $7cde: $66
	rla                                              ; $7cdf: $17
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	pop  de                                          ; $7ce2: $d1
	ld   de, $1111                                   ; $7ce3: $11 $11 $11
	ld   de, $1f11                                   ; $7ce6: $11 $11 $1f
	rst  $38                                         ; $7ce9: $ff
	rst  $38                                         ; $7cea: $ff
	sub  c                                           ; $7ceb: $91
	ld   de, $ff9f                                   ; $7cec: $11 $9f $ff
	ld   a, [$df91]                                  ; $7cef: $fa $91 $df
	rst  $38                                         ; $7cf2: $ff
	ei                                               ; $7cf3: $fb
	ld   de, $1111                                   ; $7cf4: $11 $11 $11
	ld   de, $1f11                                   ; $7cf7: $11 $11 $1f
	rst  $38                                         ; $7cfa: $ff
	rst  $38                                         ; $7cfb: $ff
	db   $f4                                         ; $7cfc: $f4
	ld   de, $ff1f                                   ; $7cfd: $11 $1f $ff
	rst  $38                                         ; $7d00: $ff
	push af                                          ; $7d01: $f5
	sbc  a                                           ; $7d02: $9f
	rst  $38                                         ; $7d03: $ff
	cp   $31                                         ; $7d04: $fe $31
	ld   de, $1111                                   ; $7d06: $11 $11 $11
	ld   de, $ff1f                                   ; $7d09: $11 $1f $ff
	rst  $38                                         ; $7d0c: $ff
	rst  $20                                         ; $7d0d: $e7
	ld   de, $ff1c                                   ; $7d0e: $11 $1c $ff
	rst  $38                                         ; $7d11: $ff
	ld   a, [$ffcf]                                  ; $7d12: $fa $cf $ff
	ei                                               ; $7d15: $fb
	ld   sp, $1111                                   ; $7d16: $31 $11 $11
	ld   de, $1f11                                   ; $7d19: $11 $11 $1f
	rst  $38                                         ; $7d1c: $ff
	rst  $38                                         ; $7d1d: $ff
	or   c                                           ; $7d1e: $b1
	ld   de, $ff1f                                   ; $7d1f: $11 $1f $ff
	cp   $f8                                         ; $7d22: $fe $f8
	rst  $38                                         ; $7d24: $ff
	rst  $38                                         ; $7d25: $ff
	ld   sp, hl                                      ; $7d26: $f9
	ld   de, $1111                                   ; $7d27: $11 $11 $11
	ld   de, $bf11                                   ; $7d2a: $11 $11 $bf
	rst  $38                                         ; $7d2d: $ff
	cp   $b1                                         ; $7d2e: $fe $b1
	ld   de, $ff1f                                   ; $7d30: $11 $1f $ff
	rst  $38                                         ; $7d33: $ff
	ld   a, [$ffff]                                  ; $7d34: $fa $ff $ff
	ret  c                                           ; $7d37: $d8

	ld   de, $1111                                   ; $7d38: $11 $11 $11
	ld   de, $ff16                                   ; $7d3b: $11 $16 $ff
	rst  $38                                         ; $7d3e: $ff
	db   $fd                                         ; $7d3f: $fd
	ld   de, $cf11                                   ; $7d40: $11 $11 $cf
	rst  $38                                         ; $7d43: $ff
	rst  $38                                         ; $7d44: $ff
	rst  $38                                         ; $7d45: $ff
	rst  $38                                         ; $7d46: $ff
	db   $fd                                         ; $7d47: $fd
	and  c                                           ; $7d48: $a1
	ld   de, $1111                                   ; $7d49: $11 $11 $11
	ld   de, $ff3f                                   ; $7d4c: $11 $3f $ff
	rst  $38                                         ; $7d4f: $ff
	pop  hl                                          ; $7d50: $e1
	ld   de, $ff17                                   ; $7d51: $11 $17 $ff
	rst  $38                                         ; $7d54: $ff
	db   $fd                                         ; $7d55: $fd
	rst  $38                                         ; $7d56: $ff
	rst  $38                                         ; $7d57: $ff
	db   $eb                                         ; $7d58: $eb
	ld   de, $1111                                   ; $7d59: $11 $11 $11
	ld   de, $ff1c                                   ; $7d5c: $11 $1c $ff
	rst  $38                                         ; $7d5f: $ff
	rst  $38                                         ; $7d60: $ff
	ld   de, $7f11                                   ; $7d61: $11 $11 $7f
	rst  $38                                         ; $7d64: $ff
	rst  $38                                         ; $7d65: $ff
	rst  $38                                         ; $7d66: $ff
	rst  $38                                         ; $7d67: $ff
	ld   hl, sp-$7f                                  ; $7d68: $f8 $81
	ld   de, $1111                                   ; $7d6a: $11 $11 $11
	ld   de, $ffff                                   ; $7d6d: $11 $ff $ff
	rst  $38                                         ; $7d70: $ff
	ld   [hl], c                                     ; $7d71: $71
	ld   de, $ff1b                                   ; $7d72: $11 $1b $ff
	rst  $38                                         ; $7d75: $ff
	rst  JumpTable                                         ; $7d76: $df
	rst  $38                                         ; $7d77: $ff
	rst  $38                                         ; $7d78: $ff
	add  c                                           ; $7d79: $81
	ld   de, $1111                                   ; $7d7a: $11 $11 $11
	ld   de, $ffff                                   ; $7d7d: $11 $ff $ff
	rst  $38                                         ; $7d80: $ff
	pop  af                                          ; $7d81: $f1
	ld   de, $ff18                                   ; $7d82: $11 $18 $ff
	rst  $38                                         ; $7d85: $ff
	rst  $38                                         ; $7d86: $ff
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	sub  h                                           ; $7d89: $94
	ld   de, $1111                                   ; $7d8a: $11 $11 $11
	ld   de, $ff3f                                   ; $7d8d: $11 $3f $ff
	rst  $38                                         ; $7d90: $ff
	pop  af                                          ; $7d91: $f1
	ld   de, $af12                                   ; $7d92: $11 $12 $af
	rst  $38                                         ; $7d95: $ff
	rst  $38                                         ; $7d96: $ff
	rst  $38                                         ; $7d97: $ff
	rst  $38                                         ; $7d98: $ff
	or   [hl]                                        ; $7d99: $b6
	ld   de, $1111                                   ; $7d9a: $11 $11 $11
	ld   de, $ff1f                                   ; $7d9d: $11 $1f $ff
	rst  $38                                         ; $7da0: $ff
	di                                               ; $7da1: $f3
	ld   de, $8f11                                   ; $7da2: $11 $11 $8f
	rst  $38                                         ; $7da5: $ff
	rst  $38                                         ; $7da6: $ff
	rst  $38                                         ; $7da7: $ff
	rst  $38                                         ; $7da8: $ff
	add  sp, $11                                     ; $7da9: $e8 $11
	ld   de, $1111                                   ; $7dab: $11 $11 $11
	rra                                              ; $7dae: $1f
	rst  $38                                         ; $7daf: $ff
	rst  $38                                         ; $7db0: $ff
	or   $11                                         ; $7db1: $f6 $11
	ld   de, $ff7d                                   ; $7db3: $11 $7d $ff
	rst  $38                                         ; $7db6: $ff
	rst  $38                                         ; $7db7: $ff
	rst  $38                                         ; $7db8: $ff
	ret  c                                           ; $7db9: $d8

	ld   de, $1111                                   ; $7dba: $11 $11 $11
	ld   de, $ff1f                                   ; $7dbd: $11 $1f $ff
	rst  $38                                         ; $7dc0: $ff
	push af                                          ; $7dc1: $f5
	ld   de, $7d11                                   ; $7dc2: $11 $11 $7d
	rst  $38                                         ; $7dc5: $ff
	rst  $38                                         ; $7dc6: $ff
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	jp   hl                                          ; $7dc9: $e9


	ld   de, $1111                                   ; $7dca: $11 $11 $11
	ld   de, $ff1f                                   ; $7dcd: $11 $1f $ff
	rst  $38                                         ; $7dd0: $ff
	ldh  a, [c]                                      ; $7dd1: $f2
	ld   de, $8d11                                   ; $7dd2: $11 $11 $8d
	rst  $38                                         ; $7dd5: $ff
	rst  $38                                         ; $7dd6: $ff
	rst  $38                                         ; $7dd7: $ff
	rst  $38                                         ; $7dd8: $ff
	ld   sp, hl                                      ; $7dd9: $f9
	ld   de, $1111                                   ; $7dda: $11 $11 $11
	ld   de, $ff1f                                   ; $7ddd: $11 $1f $ff
	rst  $38                                         ; $7de0: $ff
	pop  af                                          ; $7de1: $f1
	ld   de, $7d11                                   ; $7de2: $11 $11 $7d
	rst  $38                                         ; $7de5: $ff
	rst  $38                                         ; $7de6: $ff
	rst  $38                                         ; $7de7: $ff
	rst  $38                                         ; $7de8: $ff
	ld   sp, hl                                      ; $7de9: $f9
	ld   de, $1111                                   ; $7dea: $11 $11 $11
	ld   de, $ff5f                                   ; $7ded: $11 $5f $ff
	rst  $38                                         ; $7df0: $ff
	pop  af                                          ; $7df1: $f1
	ld   de, $7d12                                   ; $7df2: $11 $12 $7d
	rst  $38                                         ; $7df5: $ff
	rst  $38                                         ; $7df6: $ff
	rst  $38                                         ; $7df7: $ff
	rst  $38                                         ; $7df8: $ff
	rst  $30                                         ; $7df9: $f7
	ld   de, $1111                                   ; $7dfa: $11 $11 $11
	ld   de, $ff8f                                   ; $7dfd: $11 $8f $ff
	rst  $38                                         ; $7e00: $ff
	pop  af                                          ; $7e01: $f1
	ld   de, $9e13                                   ; $7e02: $11 $13 $9e
	rst  $38                                         ; $7e05: $ff
	rst  $38                                         ; $7e06: $ff
	rst  $38                                         ; $7e07: $ff
	rst  $38                                         ; $7e08: $ff
	db   $f4                                         ; $7e09: $f4
	ld   de, $1111                                   ; $7e0a: $11 $11 $11
	ld   de, $ffcf                                   ; $7e0d: $11 $cf $ff
	rst  $38                                         ; $7e10: $ff
	pop  af                                          ; $7e11: $f1
	ld   de, $7e12                                   ; $7e12: $11 $12 $7e
	rst  $38                                         ; $7e15: $ff
	rst  $38                                         ; $7e16: $ff
	rst  $38                                         ; $7e17: $ff
	rst  $38                                         ; $7e18: $ff
	pop  af                                          ; $7e19: $f1
	ld   de, $1111                                   ; $7e1a: $11 $11 $11
	ld   de, $ffcf                                   ; $7e1d: $11 $cf $ff
	rst  $38                                         ; $7e20: $ff
	pop  af                                          ; $7e21: $f1
	ld   de, $6e11                                   ; $7e22: $11 $11 $6e
	rst  $38                                         ; $7e25: $ff
	rst  $38                                         ; $7e26: $ff
	rst  $38                                         ; $7e27: $ff
	rst  $38                                         ; $7e28: $ff
	ldh  a, [c]                                      ; $7e29: $f2
	ld   de, $1111                                   ; $7e2a: $11 $11 $11
	ld   de, $ffbf                                   ; $7e2d: $11 $bf $ff
	rst  $38                                         ; $7e30: $ff
	pop  af                                          ; $7e31: $f1
	ld   de, $6d11                                   ; $7e32: $11 $11 $6d
	rst  $38                                         ; $7e35: $ff
	rst  $38                                         ; $7e36: $ff
	rst  $38                                         ; $7e37: $ff
	rst  $38                                         ; $7e38: $ff
	di                                               ; $7e39: $f3
	ld   de, $1111                                   ; $7e3a: $11 $11 $11
	ld   de, $ff7f                                   ; $7e3d: $11 $7f $ff
	rst  $38                                         ; $7e40: $ff
	pop  af                                          ; $7e41: $f1
	ld   de, $5c11                                   ; $7e42: $11 $11 $5c
	rst  $38                                         ; $7e45: $ff
	rst  $38                                         ; $7e46: $ff
	rst  $38                                         ; $7e47: $ff
	rst  $38                                         ; $7e48: $ff
	rst  $30                                         ; $7e49: $f7
	ld   de, $1111                                   ; $7e4a: $11 $11 $11
	ld   de, $ff1f                                   ; $7e4d: $11 $1f $ff
	rst  $38                                         ; $7e50: $ff
	pop  af                                          ; $7e51: $f1
	ld   de, $5b11                                   ; $7e52: $11 $11 $5b
	rst  $38                                         ; $7e55: $ff
	rst  $38                                         ; $7e56: $ff
	rst  $38                                         ; $7e57: $ff
	rst  $38                                         ; $7e58: $ff
	db   $fc                                         ; $7e59: $fc
	ld   de, $1111                                   ; $7e5a: $11 $11 $11
	ld   de, $ff1f                                   ; $7e5d: $11 $1f $ff
	rst  $38                                         ; $7e60: $ff
	db   $fc                                         ; $7e61: $fc
	ld   de, $5a11                                   ; $7e62: $11 $11 $5a
	rst  $38                                         ; $7e65: $ff
	rst  $38                                         ; $7e66: $ff
	rst  $38                                         ; $7e67: $ff
	rst  $38                                         ; $7e68: $ff
	rst  $38                                         ; $7e69: $ff
	ld   hl, $1111                                   ; $7e6a: $21 $11 $11
	ld   de, $ff17                                   ; $7e6d: $11 $17 $ff
	rst  $38                                         ; $7e70: $ff
	rst  $38                                         ; $7e71: $ff
	ld   de, $2811                                   ; $7e72: $11 $11 $28
	rst  $38                                         ; $7e75: $ff
	rst  $38                                         ; $7e76: $ff
	rst  $38                                         ; $7e77: $ff
	rst  $38                                         ; $7e78: $ff
	rst  $38                                         ; $7e79: $ff
	or   c                                           ; $7e7a: $b1
	ld   de, $1111                                   ; $7e7b: $11 $11 $11
	ld   de, $ffff                                   ; $7e7e: $11 $ff $ff
	rst  $38                                         ; $7e81: $ff
	pop  hl                                          ; $7e82: $e1
	ld   de, $bf16                                   ; $7e83: $11 $16 $bf
	rst  $38                                         ; $7e86: $ff
	rst  $38                                         ; $7e87: $ff
	rst  $38                                         ; $7e88: $ff
	rst  $38                                         ; $7e89: $ff
	push af                                          ; $7e8a: $f5
	ld   de, $1111                                   ; $7e8b: $11 $11 $11
	ld   de, $ff1f                                   ; $7e8e: $11 $1f $ff
	rst  $38                                         ; $7e91: $ff
	ldh  a, [c]                                      ; $7e92: $f2
	ld   de, $9f11                                   ; $7e93: $11 $11 $9f
	rst  $38                                         ; $7e96: $ff
	rst  $38                                         ; $7e97: $ff
	rst  $38                                         ; $7e98: $ff
	rst  $38                                         ; $7e99: $ff
	rst  $38                                         ; $7e9a: $ff
	ld   de, $1111                                   ; $7e9b: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7e9e: $11 $11 $ff
	rst  $38                                         ; $7ea1: $ff
	rst  $38                                         ; $7ea2: $ff
	ld   de, $2a11                                   ; $7ea3: $11 $11 $2a
	rst  $38                                         ; $7ea6: $ff
	rst  $38                                         ; $7ea7: $ff
	db   $dd                                         ; $7ea8: $dd
	rst  $28                                         ; $7ea9: $ef
	rst  $38                                         ; $7eaa: $ff
	di                                               ; $7eab: $f3
	ld   de, $1111                                   ; $7eac: $11 $11 $11
	ld   de, $ff3f                                   ; $7eaf: $11 $3f $ff
	rst  $38                                         ; $7eb2: $ff
	pop  af                                          ; $7eb3: $f1
	ld   de, $9f14                                   ; $7eb4: $11 $14 $9f
	rst  $38                                         ; $7eb7: $ff
	db   $fc                                         ; $7eb8: $fc
	adc  $ff                                         ; $7eb9: $ce $ff
	rst  $38                                         ; $7ebb: $ff
	ld   b, c                                        ; $7ebc: $41
	ld   de, $1111                                   ; $7ebd: $11 $11 $11
	ld   de, $ffff                                   ; $7ec0: $11 $ff $ff
	rst  $38                                         ; $7ec3: $ff
	ld   sp, $1811                                   ; $7ec4: $31 $11 $18
	rst  $38                                         ; $7ec7: $ff
	rst  $38                                         ; $7ec8: $ff
	xor  h                                           ; $7ec9: $ac
	cp   a                                           ; $7eca: $bf
	rst  $38                                         ; $7ecb: $ff
	ld   sp, hl                                      ; $7ecc: $f9
	ld   b, c                                        ; $7ecd: $41
	ld   de, $1111                                   ; $7ece: $11 $11 $11
	add  hl, de                                      ; $7ed1: $19
	rst  $38                                         ; $7ed2: $ff
	rst  $38                                         ; $7ed3: $ff
	rst  $38                                         ; $7ed4: $ff
	ld   de, $6e11                                   ; $7ed5: $11 $11 $6e
	rst  $38                                         ; $7ed8: $ff
	ld   a, [$ffa7]                                  ; $7ed9: $fa $a7 $ff
	rst  $38                                         ; $7edc: $ff
	add  sp, $11                                     ; $7edd: $e8 $11
	ld   de, $1111                                   ; $7edf: $11 $11 $11
	rra                                              ; $7ee2: $1f
	rst  $38                                         ; $7ee3: $ff
	rst  $38                                         ; $7ee4: $ff
	or   $11                                         ; $7ee5: $f6 $11
	ld   de, $ff8f                                   ; $7ee7: $11 $8f $ff
	ei                                               ; $7eea: $fb
	adc  b                                           ; $7eeb: $88
	rst  $38                                         ; $7eec: $ff
	rst  $38                                         ; $7eed: $ff
	add  sp, $11                                     ; $7eee: $e8 $11
	ld   de, $1111                                   ; $7ef0: $11 $11 $11
	rra                                              ; $7ef3: $1f
	rst  $38                                         ; $7ef4: $ff
	rst  $38                                         ; $7ef5: $ff
	di                                               ; $7ef6: $f3
	ld   de, $af11                                   ; $7ef7: $11 $11 $af
	rst  $38                                         ; $7efa: $ff
	reti                                             ; $7efb: $d9


	ld   l, c                                        ; $7efc: $69
	rst  $38                                         ; $7efd: $ff
	rst  $38                                         ; $7efe: $ff
	rst  $20                                         ; $7eff: $e7
	ld   de, $1111                                   ; $7f00: $11 $11 $11
	ld   de, $ff1e                                   ; $7f03: $11 $1e $ff
	rst  $38                                         ; $7f06: $ff
	db   $fc                                         ; $7f07: $fc
	ld   de, $8f11                                   ; $7f08: $11 $11 $8f
	rst  $38                                         ; $7f0b: $ff
	ld   sp, hl                                      ; $7f0c: $f9
	ld   d, l                                        ; $7f0d: $55
	rst  $28                                         ; $7f0e: $ef
	rst  $38                                         ; $7f0f: $ff
	db   $fc                                         ; $7f10: $fc
	ld   de, $1111                                   ; $7f11: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7f14: $11 $11 $ff
	rst  $38                                         ; $7f17: $ff
	rst  $38                                         ; $7f18: $ff
	ld   de, $4d11                                   ; $7f19: $11 $11 $4d
	rst  $38                                         ; $7f1c: $ff
	ld   hl, sp+$63                                  ; $7f1d: $f8 $63
	xor  a                                           ; $7f1f: $af
	rst  $38                                         ; $7f20: $ff
	rst  $38                                         ; $7f21: $ff
	ld   d, c                                        ; $7f22: $51
	ld   de, $1111                                   ; $7f23: $11 $11 $11
	ld   de, $ff3f                                   ; $7f26: $11 $3f $ff
	rst  $38                                         ; $7f29: $ff
	pop  af                                          ; $7f2a: $f1
	ld   de, $ff16                                   ; $7f2b: $11 $16 $ff
	rst  $38                                         ; $7f2e: $ff
	ld   [hl], h                                     ; $7f2f: $74
	inc  e                                           ; $7f30: $1c
	rst  $38                                         ; $7f31: $ff
	rst  $38                                         ; $7f32: $ff
	di                                               ; $7f33: $f3
	ld   de, $1111                                   ; $7f34: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7f37: $11 $11 $ff
	rst  $38                                         ; $7f3a: $ff
	rst  $38                                         ; $7f3b: $ff
	ld   de, $2e11                                   ; $7f3c: $11 $11 $2e
	rst  $38                                         ; $7f3f: $ff
	ld   sp, hl                                      ; $7f40: $f9
	ld   sp, $ff7f                                   ; $7f41: $31 $7f $ff
	rst  $38                                         ; $7f44: $ff
	ld   [hl], c                                     ; $7f45: $71
	ld   de, $1111                                   ; $7f46: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $7f49: $11 $13 $ff
	rst  $38                                         ; $7f4c: $ff
	rst  $38                                         ; $7f4d: $ff
	ld   de, $8f11                                   ; $7f4e: $11 $11 $8f
	rst  $38                                         ; $7f51: $ff
	push af                                          ; $7f52: $f5
	ld   [hl+], a                                    ; $7f53: $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f54: $cf
	rst  $38                                         ; $7f55: $ff
	db   $fd                                         ; $7f56: $fd
	ld   hl, $1111                                   ; $7f57: $21 $11 $11
	ld   de, $1111                                   ; $7f5a: $11 $11 $11
	rst  $38                                         ; $7f5d: $ff
	rst  $38                                         ; $7f5e: $ff
	rst  $38                                         ; $7f5f: $ff
	ld   de, $8f11                                   ; $7f60: $11 $11 $8f
	rst  $38                                         ; $7f63: $ff
	push af                                          ; $7f64: $f5
	ld   de, $ffaf                                   ; $7f65: $11 $af $ff
	rst  $38                                         ; $7f68: $ff
	ld   d, c                                        ; $7f69: $51
	ld   de, $1113                                   ; $7f6a: $11 $13 $11
	ld   de, $7f11                                   ; $7f6d: $11 $11 $7f
	rst  $38                                         ; $7f70: $ff
	rst  $38                                         ; $7f71: $ff
	sub  c                                           ; $7f72: $91
	ld   de, $ff1f                                   ; $7f73: $11 $1f $ff
	ld   sp, hl                                      ; $7f76: $f9
	ld   de, $ff2f                                   ; $7f77: $11 $2f $ff
	rst  $38                                         ; $7f7a: $ff
	pop  de                                          ; $7f7b: $d1
	ld   de, $5116                                   ; $7f7c: $11 $16 $51
	ld   de, $1511                                   ; $7f7f: $11 $11 $15
	rst  $38                                         ; $7f82: $ff
	rst  $38                                         ; $7f83: $ff
	ld   a, [$1111]                                  ; $7f84: $fa $11 $11
	rst  JumpTable                                         ; $7f87: $df
	rst  $38                                         ; $7f88: $ff
	sub  c                                           ; $7f89: $91
	inc  de                                          ; $7f8a: $13
	rst  $38                                         ; $7f8b: $ff
	rst  $38                                         ; $7f8c: $ff
	cp   $31                                         ; $7f8d: $fe $31
	ld   [de], a                                     ; $7f8f: $12
	ld   h, [hl]                                     ; $7f90: $66
	ld   de, $1111                                   ; $7f91: $11 $11 $11
	ld   e, $ff                                      ; $7f94: $1e $ff
	rst  $38                                         ; $7f96: $ff
	db   $f4                                         ; $7f97: $f4
	ld   de, rAUD1LEN                                   ; $7f98: $11 $11 $ff
	rst  $38                                         ; $7f9b: $ff
	ld   h, e                                        ; $7f9c: $63
	scf                                              ; $7f9d: $37
	rst  $38                                         ; $7f9e: $ff
	rst  $38                                         ; $7f9f: $ff
	db   $fc                                         ; $7fa0: $fc
	ld   sp, $8723                                   ; $7fa1: $31 $23 $87
	ld   hl, $1111                                   ; $7fa4: $21 $11 $11
	inc  de                                          ; $7fa7: $13
	rst  $38                                         ; $7fa8: $ff
	rst  $38                                         ; $7fa9: $ff
	db   $fc                                         ; $7faa: $fc
	ld   de, $af11                                   ; $7fab: $11 $11 $af
	rst  $38                                         ; $7fae: $ff
	and  e                                           ; $7faf: $a3
	ld   b, [hl]                                     ; $7fb0: $46
	rst  $28                                         ; $7fb1: $ef
	rst  $38                                         ; $7fb2: $ff
	cp   $61                                         ; $7fb3: $fe $61
	inc  h                                           ; $7fb5: $24
	adc  e                                           ; $7fb6: $8b
	ld   h, c                                        ; $7fb7: $61
	ld   de, $1111                                   ; $7fb8: $11 $11 $11
	ld   c, a                                        ; $7fbb: $4f
	rst  $38                                         ; $7fbc: $ff
	rst  $38                                         ; $7fbd: $ff
	pop  de                                          ; $7fbe: $d1
	ld   de, $ee17                                   ; $7fbf: $11 $17 $ee
	ld   [$7f56], a                                  ; $7fc2: $ea $56 $7f
	rst  $38                                         ; $7fc5: $ff
	rst  $38                                         ; $7fc6: $ff
	jp   hl                                          ; $7fc7: $e9


	inc  de                                          ; $7fc8: $13
	ld   b, a                                        ; $7fc9: $47
	cp   b                                           ; $7fca: $b8
	ld   d, c                                        ; $7fcb: $51
	ld   de, $1111                                   ; $7fcc: $11 $11 $11
	sbc  a                                           ; $7fcf: $9f
	rst  $38                                         ; $7fd0: $ff
	rst  $38                                         ; $7fd1: $ff
	or   c                                           ; $7fd2: $b1
	ld   de, $cd19                                   ; $7fd3: $11 $19 $cd
	reti                                             ; $7fd6: $d9


	ld   a, b                                        ; $7fd7: $78
	sbc  a                                           ; $7fd8: $9f
	rst  $38                                         ; $7fd9: $ff
	rst  $38                                         ; $7fda: $ff
	rst  $20                                         ; $7fdb: $e7
	ld   b, [hl]                                     ; $7fdc: $46
	ld   a, e                                        ; $7fdd: $7b
	ret  z                                           ; $7fde: $c8

	ld   b, c                                        ; $7fdf: $41
	ld   de, $1111                                   ; $7fe0: $11 $11 $11
	cpl                                              ; $7fe3: $2f
	rst  $38                                         ; $7fe4: $ff
	rst  $38                                         ; $7fe5: $ff
	or   $11                                         ; $7fe6: $f6 $11
	inc  de                                          ; $7fe8: $13
	sbc  d                                           ; $7fe9: $9a
	db   $eb                                         ; $7fea: $eb
	sbc  c                                           ; $7feb: $99
	sbc  l                                           ; $7fec: $9d
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	db   $fc                                         ; $7fef: $fc
	halt                                             ; $7ff0: $76
	ld   h, a                                        ; $7ff1: $67
	xor  c                                           ; $7ff2: $a9
	ld   d, c                                        ; $7ff3: $51
	ld   de, $1111                                   ; $7ff4: $11 $11 $11
	ld   [de], a                                     ; $7ff7: $12
	rst  $38                                         ; $7ff8: $ff
	rst  $38                                         ; $7ff9: $ff
	rst  $38                                         ; $7ffa: $ff
	ld   b, c                                        ; $7ffb: $41
	ld   de, $cf39                                   ; $7ffc: $11 $39 $cf
	db   $db                                         ; $7fff: $db
